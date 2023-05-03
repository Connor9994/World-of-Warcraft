-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local StringBuilder = TSM.Init("Util.StringBuilder") ---@class Util.StringBuilder
local StringBuilderObject = TSM.Include("LibTSMClass").DefineClass("StringBuilderObject") ---@class StringBuilderObject
local private = {
	instance = nil,
	argsTemp = {},
	argNamesTemp = {},
}



-- ============================================================================
-- Module Loading
-- ============================================================================

StringBuilder:OnModuleLoad(function()
	private.instance = StringBuilderObject()
end)


-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets the string builder object
---@param template str The template string to format
---@return StringBuilderObject
function StringBuilder.Get(template)
	assert(type(template) == "string")
	private.instance:_Acquire(template)
	return private.instance
end


-- ============================================================================
-- StringBuilderObject Class Methods
-- ============================================================================

function StringBuilderObject:__init()
	self._template = nil
	self._args = {}
end

function StringBuilderObject:_Acquire(template)
	assert(not self._template and not next(self._args))
	self._template = template
end

function StringBuilderObject:_Release()
	assert(self._template)
	self._template = nil
	wipe(self._args)
end

---Sets the value of a named parameter.
---@param name string The parameter name
---@param value any The parameter value
---@return StringBuilderObject
function StringBuilderObject:SetParam(name, value)
	assert(type(name) == "string" and value ~= nil)
	self._args[name] = value
	return self
end

---Commits the string builder and returns the generated string.
---@return string
function StringBuilderObject:Commit()
	assert(not next(private.argsTemp) and not next(private.argNamesTemp))
	-- This is inspired by http://lua-users.org/wiki/StringInterpolation
	local result = gsub(self._template, "%%%((%a%w*)%)([-0-9%.]*[cdeEfgGiouxXsq])", private.FormatHelper)
	local args = private.argsTemp
	for _, argName in ipairs(private.argNamesTemp) do
		local value = self._args[argName]
		if value == nil then
			error(format("Named parameter '%s' not provided", tostring(argName)))
		end
		tinsert(args, value)
	end
	result = format(result, unpack(args))
	wipe(private.argsTemp)
	wipe(private.argNamesTemp)
	self:_Release()
	return result
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.FormatHelper(name, fmtStr)
	tinsert(private.argNamesTemp, name)
	return "%"..fmtStr
end
