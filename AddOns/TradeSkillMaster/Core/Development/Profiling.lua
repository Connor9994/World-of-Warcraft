-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
if not TSMDEV then
	return
end
local Profiling = {}
TSMDEV.Profiling = Profiling
local Math = TSM.Include("Util.Math")
local private = {
	startTime = nil,
	nodes = {},
	nodeRuns = {},
	nodeStart = {},
	nodeTotal = {},
	nodeMaxContext = {},
	nodeMaxTime = {},
	nodeParent = {},
	nodeStack = {},
}
local NODE_PATH_SEP = "`"



-- ============================================================================
-- Module Functions
-- ============================================================================

---Starts profiling
function Profiling.Start()
	assert(not private.startTime, "Profiling already started")
	private.startTime = GetTimePreciseSec()
end

---Starts profiling of a node.
---
---Profiling must have been started for this to have any effect.
---@param node string The name of the profiling node
function Profiling.StartNode(node)
	if not private.startTime then
		-- profiling is not running
		return
	end
	local nodeStackLen = #private.nodeStack
	local parentNode = nodeStackLen > 0 and table.concat(private.nodeStack, NODE_PATH_SEP) or nil
	private.nodeStack[nodeStackLen + 1] = node
	node = table.concat(private.nodeStack, NODE_PATH_SEP)
	if private.nodeStart[node] then
		error("Node already started", 2)
	end
	if not private.nodeTotal[node] then
		tinsert(private.nodes, node)
		private.nodeTotal[node] = 0
		private.nodeRuns[node] = 0
		private.nodeMaxContext[node] = nil
		private.nodeMaxTime[node] = 0
		private.nodeParent[node] = parentNode
	elseif private.nodeParent[node] ~= parentNode then
		error("Node changed parents", 2)
	end
	private.nodeStart[node] = GetTimePreciseSec()
end

---Ends profiling of a node.
---
---Profiling of this node must have been started for this to have any effect.
---@param node string The name of the profiling node
---@param arg? any Any extra argument which is printed if this invocation represents the max duration for the node
function Profiling.EndNode(node, arg)
	if not private.startTime then
		-- profiling is not running
		return
	end
	local endTime = GetTimePreciseSec()
	local nodeStackLen = #private.nodeStack
	if node ~= private.nodeStack[nodeStackLen] then
		error("Node isn't at the top of the stack", 2)
	end
	node = table.concat(private.nodeStack, NODE_PATH_SEP)
	if not private.nodeStart[node] then
		error("Node hasn't been started", 2)
	end
	private.nodeStack[nodeStackLen] = nil
	local nodeTime = endTime - private.nodeStart[node]
	private.nodeRuns[node] = private.nodeRuns[node] + 1
	private.nodeTotal[node] = private.nodeTotal[node] + nodeTime
	private.nodeStart[node] = nil
	if nodeTime > private.nodeMaxTime[node] then
		private.nodeMaxContext[node] = arg
		private.nodeMaxTime[node] = nodeTime
	end
end

---Ends profiling and prints the results to chat.
---@param minTotalTime? number The minimum total time to print the profiling info
function Profiling.End(minTotalTime)
	if not private.startTime then
		-- profiling is not running
		return
	end
	local totalTime = GetTimePreciseSec() - private.startTime
	if totalTime > (minTotalTime or 0) then
		print(format("Total: %.06f", Math.Round(totalTime, 0.000001)))
		for _, node in ipairs(private.nodes) do
			local parentNode = private.nodeParent[node]
			local parentTotalTime = nil
			if parentNode then
				parentTotalTime = private.nodeTotal[parentNode]
			else
				parentTotalTime = totalTime
			end
			local nodeTotalTime = Math.Round(private.nodeTotal[node], 0.000001)
			local pctTime = Math.Round(nodeTotalTime * 100 / parentTotalTime)
			local nodeRuns = private.nodeRuns[node]
			local nodeMaxContext = private.nodeMaxContext[node]
			local level = private.GetLevel(node)
			local name = strmatch(node, NODE_PATH_SEP.."?([^"..NODE_PATH_SEP.."]+)$")
			if nodeMaxContext ~= nil then
				local nodeMaxTime = private.nodeMaxTime[node]
				print(format("%s%s | %d%% | %.06f | %d | %.06f | %s", strrep("  ", level), name, pctTime, nodeTotalTime, nodeRuns, nodeMaxTime, tostring(nodeMaxContext)))
			else
				print(format("%s%s | %d%% | %.06f | %d", strrep("  ", level), name, pctTime, nodeTotalTime, nodeRuns))
			end
		end
	end
	private.startTime = nil
	wipe(private.nodes)
	wipe(private.nodeRuns)
	wipe(private.nodeStart)
	wipe(private.nodeTotal)
	wipe(private.nodeMaxContext)
	wipe(private.nodeMaxTime)
end

---Checks whether or not we're currently profiling.
---@return boolean
function Profiling.IsActive()
	return private.startTime and true or false
end

---Gets the total memory used by TSM in bytes.
---@return number
function Profiling.GetMemoryUsage()
	collectgarbage()
	UpdateAddOnMemoryUsage()
	return GetAddOnMemoryUsage("TradeSkillMaster") * 1024
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetLevel(node)
	local level = 0
	while node do
		level = level + 1
		node = private.nodeParent[node]
	end
	return level
end
