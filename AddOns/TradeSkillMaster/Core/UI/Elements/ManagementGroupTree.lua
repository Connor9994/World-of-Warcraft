-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- ManagementGroupTree UI Element Class.
-- The management group tree allows for moving, adding, and deleting groups. It also only allows for a single group to
-- be selected. It is a subclass of the @{GroupTree} class.
-- @classmod ManagementGroupTree

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Analytics = TSM.Include("Util.Analytics")
local String = TSM.Include("Util.String")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Log = TSM.Include("Util.Log")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local ManagementGroupTree = TSM.Include("LibTSMClass").DefineClass("ManagementGroupTree", TSM.UI.GroupTree)
local DragContext = TSM.Include("UI.DragContext")
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(ManagementGroupTree)
TSM.UI.ManagementGroupTree = ManagementGroupTree
local private = {}
local DRAG_SCROLL_SPEED_FACTOR = 12
local MOVE_FRAME_PADDING = 8



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ManagementGroupTree.__init(self)
	self.__super:__init()

	self._moveFrame = nil
	self._selectedGroup = nil
	self._onGroupSelectedHandler = nil
	self._onNewGroupHandler = nil
	self._onDragRecievedHandler = nil
	self._scrollAmount = 0
end

function ManagementGroupTree.Acquire(self)
	self._moveFrame = UIElements.New("Frame", self._id.."_MoveFrame")
		:SetLayout("VERTICAL")
		:SetHeight(20)
		:SetStrata("TOOLTIP")
		:SetBackgroundColor("PRIMARY_BG_ALT", true)
		:SetBorderColor("INDICATOR")
		:SetContext(self)
		:AddChild(UIElements.New("Text", "text")
			:SetFont("BODY_BODY3")
			:SetJustifyH("CENTER")
		)
	self._moveFrame:SetParent(self:_GetBaseFrame())
	self._moveFrame:Hide()
	self._moveFrame:SetScript("OnShow", private.MoveFrameOnShow)
	self._moveFrame:SetScript("OnUpdate", private.MoveFrameOnUpdate)

	self.__super:Acquire()

	self:GetScrollingTableInfo()
		:GetColById("group")
			:SetActionIconInfo(2, 14, private.GetActionIcon, true)
			:SetActionIconClickHandler(private.OnActionIconClick)
			:Commit()
		:Commit()
end

function ManagementGroupTree.Release(self)
	self._selectedGroup = nil
	self._onGroupSelectedHandler = nil
	self._onNewGroupHandler = nil
	self._onDragRecievedHandler = nil
	self._moveFrame:Release()
	self._moveFrame = nil
	for _, row in ipairs(self._rows) do
		row._frame:RegisterForDrag()
		ScriptWrapper.Clear(row._frame, "OnDragStart")
		ScriptWrapper.Clear(row._frame, "OnDragStop")
		ScriptWrapper.Clear(row._frame, "OnReceiveDrag")
		for _, button in pairs(row._buttons) do
			button:RegisterForDrag()
			ScriptWrapper.Clear(button, "OnDragStart")
			ScriptWrapper.Clear(button, "OnDragStop")
			ScriptWrapper.Clear(button, "OnReceiveDrag")
		end
	end
	self.__super:Release()
end

--- Sets the selected group.
-- @tparam ManagementGroupTree self The management group tree object
-- @tparam string groupPath The selected group's path
-- @tparam boolean redraw Whether or not to redraw the management group tree
-- @treturn ManagementGroupTree The management group tree object
function ManagementGroupTree.SetSelectedGroup(self, groupPath, redraw)
	self._selectedGroup = groupPath
	if self._onGroupSelectedHandler then
		self:_onGroupSelectedHandler(groupPath)
	end
	if redraw then
		-- make sure this group is visible (its parent is expanded)
		local parent = TSM.Groups.Path.GetParent(groupPath)
		self._contextTable.collapsed[TSM.CONST.ROOT_GROUP_PATH] = nil
		while parent and parent ~= TSM.CONST.ROOT_GROUP_PATH do
			self._contextTable.collapsed[parent] = nil
			parent = TSM.Groups.Path.GetParent(parent)
		end
		self:UpdateData(true)
		self:_ScrollToData(self._selectedGroup)
	end
	return self
end

--- Registers a script handler.
-- @tparam ManagementGroupTree self The management group tree object
-- @tparam string script The script to register for (supported scripts: `OnGroupSelected`)
-- @tparam function handler The script handler which will be called with the management group tree object followed by
-- any arguments to the script
-- @treturn ManagementGroupTree The management group tree object
function ManagementGroupTree.SetScript(self, script, handler)
	if script == "OnGroupSelected" then
		self._onGroupSelectedHandler = handler
	elseif script == "OnNewGroup" then
		self._onNewGroupHandler = handler
	elseif script == "OnDragRecieved" then
		self._onDragRecievedHandler = handler
	else
		error("Unknown ManagementGroupTree script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ManagementGroupTree._GetTableRow(self, isHeader)
	local row = self.__super:_GetTableRow(isHeader)
	if not isHeader then
		row._frame:RegisterForDrag("LeftButton")
		ScriptWrapper.Set(row._frame, "OnDragStart", private.RowOnDragStart, row)
		ScriptWrapper.Set(row._frame, "OnDragStop", private.RowOnDragStop, row)
		ScriptWrapper.Set(row._frame, "OnReceiveDrag", private.RowOnRecieveDrag, self, row)
		for _, button in pairs(row._buttons) do
			button:RegisterForDrag("LeftButton")
			ScriptWrapper.Set(button, "OnDragStart", private.RowOnDragStart, row)
			ScriptWrapper.Set(button, "OnDragStop", private.RowOnDragStop, row)
			ScriptWrapper.Set(button, "OnReceiveDrag", private.RowOnRecieveDrag, self, row)
		end
	end
	return row
end

function ManagementGroupTree._SetCollapsed(self, data, collapsed)
	self.__super:_SetCollapsed(data, collapsed)
	if collapsed and self._selectedGroup ~= data and strmatch(self._selectedGroup, "^"..String.Escape(data)) then
		-- we collapsed a parent of the selected group, so select the group we just collapsed instead
		self:SetSelectedGroup(data, true)
	end
end

function ManagementGroupTree._IsSelected(self, data)
	return data == self._selectedGroup
end

function ManagementGroupTree._HandleRowClick(self, data, mouseButton)
	if mouseButton == "RightButton" then
		self.__super:_HandleRowClick(data, mouseButton)
		return
	end
	self:SetSelectedGroup(data, true)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetActionIcon(self, data, iconIndex, isMouseOver)
	if iconIndex == 1 then
		local texturePack = "iconPack.14x14/Add/Circle"
		return true, isMouseOver and TextureAtlas.GetColoredKey(texturePack, "INDICATOR") or texturePack
	elseif iconIndex == 2 then
		if data ~= TSM.CONST.ROOT_GROUP_PATH then
			local texturePack = "iconPack.14x14/Delete"
			return true, isMouseOver and TextureAtlas.GetColoredKey(texturePack, "INDICATOR") or texturePack
		else
			return false, nil
		end
	else
		error("Invalid index: "..tostring(iconIndex))
	end
end

function private.OnActionIconClick(self, data, iconIndex)
	if iconIndex == 1 then
		local newGroupPath = TSM.Groups.Path.Join(data, L["New Group"])
		if TSM.Groups.Exists(newGroupPath) then
			local num = 1
			while TSM.Groups.Exists(newGroupPath.." "..num) do
				num = num + 1
			end
			newGroupPath = newGroupPath.." "..num
		end
		TSM.Groups.Create(newGroupPath)
		Analytics.Action("CREATED_GROUP", newGroupPath)
		self:SetSelectedGroup(newGroupPath, true)
		if self._onNewGroupHandler then
			self:_onNewGroupHandler()
		end
	elseif iconIndex == 2 then
		local groupColor = Theme.GetGroupColor(select('#', strsplit(TSM.CONST.GROUP_SEP, data)))
		self:GetBaseElement():ShowConfirmationDialog(L["Delete Group?"], format(L["Deleting this group (%s) will also remove any sub-groups attached to this group."], groupColor:ColorText(TSM.Groups.Path.GetName(data))), private.DeleteConfirmed, self, data)
	else
		error("Invalid index: "..tostring(iconIndex))
	end
end

function private.DeleteConfirmed(self, data)
	TSM.Groups.Delete(data)
	Analytics.Action("DELETED_GROUP", data)
	self:SetSelectedGroup(TSM.CONST.ROOT_GROUP_PATH, true)
end

function private.MoveFrameOnShow(frame)
	local self = frame:GetContext()
	self._scrollAmount = 0
end

function private.MoveFrameOnUpdate(frame)
	local self = frame:GetContext()
	local uiScale = frame:_GetBaseFrame():GetEffectiveScale()
	local x, y = GetCursorPosition()
	x = x / uiScale
	y = y / uiScale
	frame:_GetBaseFrame():SetPoint("CENTER", UIParent, "BOTTOMLEFT", x, y)

	-- figure out if we're above or below the frame for scrolling while dragging
	local top = self:_GetBaseFrame():GetTop()
	local bottom = self:_GetBaseFrame():GetBottom()
	if y > top then
		self._scrollAmount = top - y
	elseif y < bottom then
		self._scrollAmount = bottom - y
	else
		self._scrollAmount = 0
	end

	self._vScrollbar:SetValue(self._vScrollbar:GetValue() + self._scrollAmount / DRAG_SCROLL_SPEED_FACTOR)
end

function private.RowOnDragStart(row)
	local self = row._scrollingTable
	local groupPath = row:GetData()
	if groupPath == TSM.CONST.ROOT_GROUP_PATH then
		-- don't do anything for the root group
		return
	end
	local level = select('#', strsplit(TSM.CONST.GROUP_SEP, groupPath))
	self._dragGroupPath = groupPath
	self._moveFrame:Show()
	self._moveFrame:SetHeight(self._rowHeight)
	local moveFrameText = self._moveFrame:GetElement("text")
	moveFrameText:SetTextColor(Theme.GetGroupColorKey(level))
	moveFrameText:SetText(TSM.Groups.Path.GetName(groupPath))
	moveFrameText:SetWidth(1000)
	moveFrameText:Draw()
	self._moveFrame:SetWidth(moveFrameText:GetStringWidth() + MOVE_FRAME_PADDING * 2)
	self._moveFrame:Draw()
end

function private.RowOnDragStop(row)
	local self = row._scrollingTable
	local groupPath = row:GetData()
	if groupPath == TSM.CONST.ROOT_GROUP_PATH then
		-- don't do anything for the root group
		return
	end
	self._moveFrame:Hide()

	local destPath = self:GetMouseOverPath()
	local oldPath = self._dragGroupPath
	self._dragGroupPath = nil
	if not destPath or destPath == oldPath or TSM.Groups.Path.IsChild(destPath, oldPath) then
		return
	end
	local newPath = TSM.Groups.Path.Join(destPath, TSM.Groups.Path.GetName(oldPath))
	if oldPath == newPath then
		return
	elseif TSM.Groups.Exists(newPath) then
		Log.PrintfUser(L["Failed to move group, as a group with the same name already exists in the target location."])
		return
	end

	TSM.Groups.Move(oldPath, newPath)
	Analytics.Action("MOVED_GROUP", oldPath, newPath)
	self:SetSelectedGroup(newPath, true)
end

function private.RowOnRecieveDrag(self)
	local context = DragContext.Get()
	if self._onDragRecievedHandler and context then
		self:_onDragRecievedHandler(context, self:GetMouseOverPath())
	end
end
