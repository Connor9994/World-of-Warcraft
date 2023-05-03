-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TreeType = TSM.Init("Util.TreeType") ---@class Util.TreeType
local NamedTupleListType = TSM.Include("Util.NamedTupleListType")
local private = {
	treeQueueTemp = {},
	childrenTemp = {},
}
local NO_PARENT = 0



-- ============================================================================
-- Class Definition
-- ============================================================================

local Tree = TSM.Include("LibTSMClass").DefineClass("Tree") ---@class Tree

function Tree:__init(...)
	self._parent = {}
	self._firstChild = {}
	self._nextSibling = {}
	self._dataList = NamedTupleListType.New(...)
end

function Tree:Wipe()
	wipe(self._parent)
	wipe(self._firstChild)
	wipe(self._nextSibling)
	self._dataList:Wipe()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Sets a data field for a node.
---@param node number The node
---@param fieldName string The name of the field to set
---@param value any The data field value
function Tree:SetData(node, fieldName, value)
	self._dataList:SetRowField(node, fieldName, value)
end

---Gets the data stored for the specified node.
---@param node number The node
---@param fieldName string The name of the field to get
---@return any ...
function Tree:GetData(node, fieldName)
	return self._dataList:GetRowField(node, fieldName)
end

---Inserts a node into the tree
---@param parent number The parent node
---@param ... any The data fields for the node
---@return number @The new node
function Tree:Insert(parent, ...)
	local prevSibling = nil
	for node, nodeParent in pairs(self._parent) do
		if nodeParent == parent and not self._nextSibling[node] then
			assert(not prevSibling)
			prevSibling = node
		end
	end
	local node = self._dataList:InsertRow(...)
	self._parent[node] = parent or NO_PARENT
	if prevSibling then
		self._nextSibling[prevSibling] = node
	end
	if parent and not self._firstChild[parent] then
		self._firstChild[parent] = node
	end
	return node
end

---Moves a node up in the tree, replacing its parent.
---@param node number The node to move up
function Tree:MoveUp(node)
	local parent = self._parent[node]
	assert(parent ~= NO_PARENT)
	local newParent = self._parent[parent]
	assert(newParent)
	self._parent[node] = newParent

	-- Remove from the old sibling list
	self:_MoveHelper(parent, node, self._nextSibling[node])
	self._nextSibling[node] = nil

	if newParent == NO_PARENT then
		-- We've moved this node to the root, so remove the old parent
		self._firstChild[parent] = nil
		assert(not self._firstChild[parent])
		local parentParent = self._parent[parent]
		assert(parentParent)
		if parentParent ~= NO_PARENT then
			self:_MoveHelper(parentParent, parent, self._nextSibling[parent])
		else
			assert(not self._nextSibling[parent])
		end
	else
		self._nextSibling[node] = self._nextSibling[parent]
		self:_MoveHelper(newParent, parent, node)
	end
	self:_Remove(parent)
end

---Gets the root node.
---@return number
function Tree:GetRoot()
	local root = nil
	for node, parent in pairs(self._parent) do
		if parent == NO_PARENT then
			assert(not root)
			root = node
		end
	end
	assert(root)
	return root
end

---Gets the parent node.
---@param node number
---@return number?
function Tree:GetParent(node)
	local parent = self._parent[node]
	return parent ~= NO_PARENT and parent or nil
end

---Gets the number of children.
---@param node number The node
---@return number
function Tree:GetNumChildren(node)
	local child = self._firstChild[node]
	local num = 0
	while child do
		num = num + 1
		child = self._nextSibling[child]
	end
	return num
end

---Gets all the children of a node.
---@param node number The node
---@return number ... The children
function Tree:GetChildren(node)
	assert(not next(private.childrenTemp))
	local child = self._firstChild[node]
	while child do
		tinsert(private.childrenTemp, child)
		child = self._nextSibling[child]
	end
	return private.WipeAndReturn(private.childrenTemp, unpack(private.childrenTemp))
end

---Sets the children for a given node.
---@param node number The node
---@param ... number The new children
function Tree:SetChildren(node, ...)
	assert(select("#", ...) >= 1)
	for i = 1, select("#", ...) do
		local child = select(i, ...)
		self._parent[child] = node
		self._nextSibling[child] = select(i + 1, ...)
		if i == 1 then
			self._firstChild[node] = child
		end
	end
end

---Removes all children for a given node.
---@param node number
function Tree:RemoveAllChildren(node)
	local child = self._firstChild[node]
	self._firstChild[node] = nil
	while child do
		local nextChild = self._nextSibling[child]
		self:_Remove(child)
		child = nextChild
	end
end

---Iterates over all the children of a node.
---@param node number The node
---@return fun(): number @An iterator with fields: `child`
function Tree:ChildrenIterator(node)
	assert(node > 0)
	return private.ChildrenIteratorHelper, self, node * -1
end

---Iterates over the tree in depth-first order.
---@param rootNode? number The rootNode to iterate from (defaults to the tree's root node)
---@return fun(): number @An iterator with fields: `node`
function Tree:DepthFirstIterator(rootNode)
	assert(not next(private.treeQueueTemp))
	local queue = private.treeQueueTemp
	queue.tree = self
	tinsert(queue, rootNode or self:GetRoot())
	return private.DepthFirstIteratorHelper, queue, nil
end

---Gets the depth of a node in the tree.
---@param node number
---@return number
function Tree:GetDepth(node)
	local depth = 0
	while self._parent[node] ~= NO_PARENT do
		node = self._parent[node]
		depth = depth + 1
	end
	return depth
end

---Prints out the tree for debugging.
---@param node? number The root node to dump from
function Tree:Dump(rootNode)
	for node in self:DepthFirstIterator(rootNode) do
		local dataStr = strjoin(",", tostringall(self._dataList:GetRow(node)))
		local depth = self:GetDepth(node)
		print(format("%s%d (%s)", strrep("--", depth), node, dataStr))
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Tree:_MoveHelper(newParent, oldParent, node)
	local sibling = self._firstChild[newParent]
	if sibling == oldParent then
		-- The old parent was the first child, so replace it with the new node
		self._firstChild[newParent] = node
	else
		-- Loop through the siblings in order to remove this node from the linked list
		while true do
			local nextSibling = self._nextSibling[sibling]
			assert(nextSibling)
			if nextSibling == oldParent then
				self._nextSibling[sibling] = node
				break
			end
			sibling = nextSibling
		end
	end
end

function Tree:_Remove(node)
	self._firstChild[node] = nil
	self._nextSibling[node] = nil
	self._parent[node] = nil
end


-- ============================================================================
-- Module Methods
-- ============================================================================

---Creates a new tree object.
---@param ... string The data field names, in order
---@return Tree
function TreeType.Create(...)
	return Tree(...)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ChildrenIteratorHelper(tree, node)
	if node < 0 then
		return tree._firstChild[node * -1]
	else
		return tree._nextSibling[node]
	end
end

function private.DepthFirstIteratorHelper(queue)
	if #queue == 0 then
		queue.tree = nil
		return
	end
	local node = tremove(queue)
	local insertIndex = #queue + 1
	for child in queue.tree:ChildrenIterator(node) do
		tinsert(queue, insertIndex, child)
	end
	return node
end

function private.WipeAndReturn(tbl, ...)
	wipe(tbl)
	return ...
end
