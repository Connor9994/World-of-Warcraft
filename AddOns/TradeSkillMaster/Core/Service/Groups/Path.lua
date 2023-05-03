-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Path = TSM.Groups:NewPackage("Path")
local String = TSM.Include("Util.String")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Path.GetName(groupPath)
	local _, name = private.SplitPath(groupPath)
	return name
end

function Path.GetParent(groupPath)
	local parentPath = private.SplitPath(groupPath)
	return parentPath
end

function Path.Split(groupPath)
	return private.SplitPath(groupPath)
end

function Path.Join(...)
	if select(1, ...) == TSM.CONST.ROOT_GROUP_PATH then
		return Path.Join(select(2, ...))
	end
	return strjoin(TSM.CONST.GROUP_SEP, ...)
end

function Path.IsChild(groupPath, parentPath)
	if parentPath == TSM.CONST.ROOT_GROUP_PATH then
		return groupPath ~= TSM.CONST.ROOT_GROUP_PATH
	end
	return strmatch(groupPath, "^"..String.Escape(parentPath)..TSM.CONST.GROUP_SEP) and true or false
end

function Path.Format(groupPath)
	if not groupPath then return end
	local result = gsub(groupPath, TSM.CONST.GROUP_SEP, "->")
	return result
end

function Path.GetRelative(groupPath, prefixGroupPath)
	if groupPath == prefixGroupPath then
		return TSM.CONST.ROOT_GROUP_PATH
	end
	local relativePath, numSubs = gsub(groupPath, "^"..String.Escape(prefixGroupPath)..TSM.CONST.GROUP_SEP, "")
	assert(numSubs == 1 and relativePath)
	return relativePath
end

function Path.GetTopLevel(groupPath)
	assert(groupPath ~= TSM.CONST.ROOT_GROUP_PATH)
	return strmatch(groupPath, "^([^"..TSM.CONST.GROUP_SEP.."]+)")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SplitPath(groupPath)
	local parentPath, groupName = strmatch(groupPath, "^(.+)"..TSM.CONST.GROUP_SEP.."([^"..TSM.CONST.GROUP_SEP.."]+)$")
	if parentPath then
		return parentPath, groupName
	elseif groupPath ~= TSM.CONST.ROOT_GROUP_PATH then
		return TSM.CONST.ROOT_GROUP_PATH, groupPath
	else
		return nil, groupPath
	end
end
