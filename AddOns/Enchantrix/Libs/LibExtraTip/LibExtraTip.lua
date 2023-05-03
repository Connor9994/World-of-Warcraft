--[[
LibExtraTip (Main)

LibExtraTip is a library of API functions for manipulating additional information into GameTooltips by either adding information to the bottom of existing tooltips (embedded mode) or by adding information to an extra "attached" tooltip construct which is placed to the bottom of the existing tooltip.

LibExtraTip is composed of multiple files:
LibExtraTipStartup.lua - startup checks and lib setup
LibExtraTipHandler_DataProc.lua - only one of the Handler files will load, depending on available Client APIs
LibExtraTipHandler_HookSet.lua
LibExtraTip.lua - main code file
LibMoneyFrame.lua - routines for handling display of money values
Load.xml - loads the lua files in the above order

Copyright (C) 2008-2023, by the respective below authors.

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

@author Matt Richard (Tem)
@author Ken Allan <ken@norganna.org>
@author brykrys
@libname LibExtraTip
@version 1. see LibExtraTipStartup.lua for minor version
--]]



local lib = LibStub("LibExtraTip-1")
if not lib then return end
local private = lib.private
if not private then return end
local status, versions = private.status, private.versions
if not (status and versions) then return end

-- Constants used for filetrackerX status variables:
local LOAD_NEW = 5				-- permit the file to load
local LOAD_START = 10			-- set at start of file; blocks reloading of file (or other actions) if an error halts execution
local LOAD_FAIL = 15			-- optional condition to be set if a failure is detected during loading; should block transition to LOAD_COMPLETE
local LOAD_COMPLETE = 20		-- set at end of file, only set if status was LOAD_START; flags that file has loaded without error

local ACTIVATE_START = 45		-- set at start of file's Activate function; blocks re-entry of the Activate function (optional for trivial Activate functions)
local ACTIVATE_FAIL = 50		-- optional condition to be set if a failure is detected during Activate; should block transition to ACTIVATE_COMPLETE
local ACTIVATE_COMPLETE = 55	-- set at end of file's Activate function; all file statuses need to be in this state to allow the Lib to fully Activate

local DEACTIVATED = 99			-- set during Deactivate for each file

-- check for permission to load this file
if status.filetrackerMain ~= LOAD_NEW then return end
status.filetrackerMain = LOAD_START

LibStub("LibRevision"):Set("$URL$","$Rev$","10.02.DEV.", 'auctioneer', 'libs')

-- A string unique to this version to prevent frame name conflicts.
local LIBSTRING = versions.LIBNAME.."_"..versions.MAJOR.."_"..versions.MINOR

-- Forward definition of locals that get defined later in the load process
local ExtraTipClass

--[[ The following events are enabled by default unless disabled in the
	callback options "enabled" table all other events are default disabled.
	Note that this only applies to events that will lead to calling ProcessCallbacks,
	currently any method that fires OnTooltipSetItem, OnTooltipSetSpell or
	OnTooltipSetUnit
--]]
local defaultEnable = {
	SetAuctionItem = true,
	SetAuctionSellItem = true,
	SetBagItem = true,
	SetBuybackItem = true,
	SetGuildBankItem = true,
	SetInboxItem = true,
	SetInventoryItem = true,
	SetLootItem = true,
	SetLootRollItem = true,
	SetMerchantItem = true,
	SetQuestItem = true,
	SetQuestLogItem = true,
	SetSendMailItem = true,
	SetTradePlayerItem = true,
	SetTradeTargetItem = true,
	SetRecipeReagentItem = true,
	SetRecipeResultItem = true,
	SetTradeSkillItem = true,
	SetCraftItem = true,
	SetHyperlink = true,
	SetHyperlinkAndCount = true, -- Creating a tooltip via lib:SetHyperlinkAndCount()
	SetBattlePet = true,
	SetBattlePetAndCount = true,
	SetItemKey = true,
}

--[[ The following callback types are always enabled regardless of the event ]]
local alwaysEnable = {
	extrashow = true,
	extrahide = true,
}

-- Money Icon setup
local iconpath = "Interface\\MoneyFrame\\UI-"
local goldicon = "%.0f|T"..iconpath.."GoldIcon:0|t"
local silvericon = "%s|T"..iconpath.."SilverIcon:0|t"
local coppericon = "%s|T"..iconpath.."CopperIcon:0|t"


-- Function that calls all the interested tooltips
local function ProcessCallbacks(reg, tiptype, tooltip, ...)
	if not reg then return end

	local event = reg.additional.event or "Unknown"
	local default = defaultEnable[event]

	if lib.sortedCallbacks and #lib.sortedCallbacks > 0 then
		for i,options in ipairs(lib.sortedCallbacks) do
			if options.type == tiptype then
				local enable = default
				if options.allevents or alwaysEnable[tiptype] then
					enable = true
				elseif options.enable and options.enable[event] ~= nil then
					enable = options.enable[event]
				end
				if enable then
					options.callback(tooltip, ...)
				end
			end
		end
	end
end

-- Allow other files access to registry via private table
function private.GetRegistry(tooltip)
	return lib.tooltipRegistry[tooltip]
end

-- Function that gets run when an item is set on a registered tooltip.
-- Values in reg are set by the appropriate Handler
-- Handler should have confirmed reg.hasItem to be nil/false
-- Handler should have verified reg.item, reg.additional.name, reg.additional.quantity, reg.additional.quality, reg.additional.link
function private.ProcessItem(tooltip, reg)
	local self = lib
	local item, additional = reg.item, reg.additional
	local name, quantity, link, quality = additional.name, additional.quantity, additional.link, additional.quality

	if not self.sortedCallbacks or #self.sortedCallbacks == 0 then
		return
	end

	reg.hasItem = true
	local extraTip = private.GetFreeExtraTipObject()
	reg.extraTip = extraTip
	extraTip:Attach(tooltip)
	local r,g,b = GetItemQualityColor(quality)
	extraTip:AddLine(name,r,g,b)

	-- Removed additional parameters after quality:
	-- The 'additional' table can be accessed using lib:GetTooltipAdditional(tooltip) if needed
	-- AucAdvanced, Enchantrix, Informant only use params up to quality
	ProcessCallbacks(reg, "item", tooltip, item, quantity, name, link, quality)
	tooltip:Show()
	if reg.extraTipUsed then
		extraTip:Show()
		ProcessCallbacks(reg, "extrashow", tooltip, extraTip)
	end
end

-- Function that gets run when a spell is set on a registered tooltip.
-- Values in reg are set by the appropriate Handler
-- Handler should have confirmed reg.hasItem to be nil/false
-- Handler should have verified reg.additional.name, reg.additional.spellID, reg.additional.link (may be nil?), reg.additional.category (may be nil?)
function private.ProcessSpell(tooltip, reg)
	local self = lib
	local additional = reg.additional
	local name, spellID, link, category = additional.name, additional.spellID, additional.link, additional.category

	if not self.sortedCallbacks or #self.sortedCallbacks == 0 then
		return
	end

	reg.hasItem = true
	local extraTip = private.GetFreeExtraTipObject()
	reg.extraTip = extraTip
	extraTip:Attach(tooltip)
	extraTip:AddLine(name, 1, 0.8, 0)

	ProcessCallbacks(reg, "spell", tooltip, link, name, category, spellID)
	tooltip:Show()
	if reg.extraTipUsed then
		extraTip:Show()
		ProcessCallbacks(reg, "extrashow", tooltip, extraTip)
	end
end

-- Function that gets run when a unit is set on a registered tooltip.
-- Values in reg are set by the appropriate Handler
-- Handler should have confirmed reg.hasItem to be nil/false
-- Handler should have verified reg.additional.name, reg.additional.unitId
function private.ProcessUnit(tooltip, reg)
	local self = lib
	local additional = reg.additional
	local name, unitId = additional.name, additional.unitId

	if not self.sortedCallbacks or #self.sortedCallbacks == 0 then
		return
	end

	reg.hasItem = true
	local extraTip = private.GetFreeExtraTipObject()
	reg.extraTip = extraTip
	extraTip:Attach(tooltip)
	extraTip:AddLine(name, 0.8, 0.8, 0.8)

	ProcessCallbacks(reg, "unit", tooltip, name, unitId)
	tooltip:Show()
	if reg.extraTipUsed then
		extraTip:Show()
		ProcessCallbacks(reg, "extrashow", tooltip, extraTip)
	end
end

-- Function that gets run when a registered tooltip's item is cleared.
function private.OnCleared(tooltip)
	local reg = lib.tooltipRegistry[tooltip]
	if not reg then return end

	if reg.ignoreOnCleared then return end
	tooltip:SetFrameLevel(1)

	reg.extraTipUsed = nil
	reg.quantity = nil
	reg.hasItem = nil
	reg.item = nil
	wipe(reg.additional)
	local extraTip = reg.extraTip
	if extraTip then
		reg.extraTip = nil
		extraTip:Release()
		extraTip:ClearLines()
		extraTip:SetHeight(0)
		extraTip:SetWidth(0)
		extraTip:Hide()
		ProcessCallbacks(reg, "extrahide", tooltip, extraTip)
		tinsert(lib.extraTippool, extraTip)
	end
end

-- Run when a BattlePet is loaded into a BettlePetTooltip
-- Requires special handling as BattlePetTooltips aren't real tooltips and lack most of the scripts and methods we normally use
-- Hooked directly from BattlePetTooltipTemplate_SetBattlePet
function private.OnSetBattlePet(tooltip, data)
	local reg = lib.tooltipRegistry[tooltip]
	if not reg then return end

	-- private.OnCleared is normally called via OnHide for BattlePets
	-- clean up here in case a new BattlePet is loaded into a visible tooltip, in which case OnHide would not have been triggered
	if reg.hasItem then
		private.OnCleared(tooltip)
	end
	if lib.sortedCallbacks and #lib.sortedCallbacks > 0 then
		-- extract values from data
		local speciesID = data.speciesID
		local level = data.level
		local breedQuality = data.breedQuality
		local maxHealth = data.maxHealth
		local power = data.power
		local speed = data.speed
		local battlePetID = data.battlePetID or "0x0000000000000000"
		local name = data.name
		local customName = data.customName
		local petType = data.petType
		local colcode, r, g, b
		if breedQuality == -1 then
			colcode = NORMAL_FONT_COLOR_CODE
			r, g, b = NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b
		else
			local coltable = ITEM_QUALITY_COLORS[breedQuality] or ITEM_QUALITY_COLORS[0]
			colcode = coltable.hex
			r, g, b = coltable.r, coltable.g, coltable.b
		end

		-- for certain events there may already be info stored in reg - e.g. SetBattlePetAndCount
		local quantity = reg.quantity or 1
		local link = reg.item
		if not link then
			-- it's a bit of a pain that we need to reconstruct a link here, just so it can be chopped up again...
			link = format("%s|Hbattlepet:%d:%d:%d:%d:%d:%d:%s|h[%s]|h|r", colcode, speciesID, level, breedQuality, maxHealth, power, speed, battlePetID, customName or name)
		end

		reg.hasItem = true
		local extraTip = private.GetFreeExtraTipObject()
		reg.extraTip = extraTip
		extraTip:Attach(tooltip)
		extraTip:AddLine(name, r, g, b)

		reg.additional.name = name
		reg.additional.link = link
		reg.additional.speciesID = speciesID
		reg.additional.quality = breedQuality
		reg.additional.quantity = quantity
		reg.additional.level = level
		reg.additional.customName = customName -- nil if no custom name
		reg.additional.petType = petType
		reg.additional.maxHealth = maxHealth
		reg.additional.power = power
		reg.additional.speed = speed
		reg.additional.battlePetID = battlePetID -- if not 0 it's a pet in your journal

		reg.additional.event = reg.additional.event or "SetBattlePet"

		ProcessCallbacks(reg, "battlepet", tooltip, link, quantity, name, speciesID, breedQuality, level)
		if reg.extraTipUsed then
			reg.extraTip:Show()
			ProcessCallbacks(reg, "extrashow", tooltip, reg.extraTip)
		end
	end
end

-- Function that gets run when a registered tooltip's size changes.
function private.OnResize(tooltip,w,h)
	local reg = lib.tooltipRegistry[tooltip]
	if not reg then return end

	local extraTip = reg.extraTip
	if extraTip then
		extraTip:MatchSize()
	end
end

function private.OnShowCalled(tooltip)
	local reg = lib.tooltipRegistry[tooltip]
	if not reg then return end

	local extraTip = reg.extraTip
	if extraTip then
		extraTip:MatchSize()
	end
end

function private.GetFreeExtraTipObject()
	if not lib.extraTippool then lib.extraTippool = {} end
	return tremove(lib.extraTippool) or ExtraTipClass:new()
end

--[[ hookStore:
	@since version 1.1
	(see below for hookStore version)
	stores control information for method and script hooks on tooltips
	lib.hookStore[tooltip][method] = <control>
	<control> = {prehook, posthook}
	<control> is an upvalue to our installed hookstub: insert new values to change the hook, or wipe it to deactivate

	if we are updating, keep the old hookStore table IF it has the right version, so that we can reuse the hook stubs
--]]
local HOOKSTORE_VERSION = "D"
if not lib.hookStore or lib.hookStore.version ~= HOOKSTORE_VERSION then
	lib.hookStore = {version = HOOKSTORE_VERSION}
end

-- Called to install/modify a pre-/post-hook on the given tooltip's method
-- If *both* prehook and posthook are nil, will deactivate the hook
function private.HookMethod(tip, method, prehook, posthook)
	if not lib.hookStore[tip] then lib.hookStore[tip] = {} end
	-- check for existing hook
	local control = lib.hookStore[tip][method]
	if control then
		if prehook or posthook then
			control[1] = prehook or control[1] or false --(avoid nil values by substituting false instead)
			control[2] = posthook or control[2] or false
		else
			control[1] = false
			control[2] = false
		end
		return
	end
	-- prepare upvalues
	local orig = tip[method]
	if not orig then
		-- There should be an original method - abort if it's missing
		if nLog then
			nLog.AddMessage("LibExtraTip", "Hooks", N_NOTICE, "Missing method", "LibExtraTip:private.HookMethod detected missing method: "..tostring(method))
		end
		return
	end
	control = {prehook or false, posthook or false}
	lib.hookStore[tip][method] = control
	-- install hook stub
	local stub = function(...)
		local hook
		-- prehook
		hook = control[1]
		if hook then hook(...) end
		-- original hook
		local a,b,c,d,e,f,g,h,i,j,k = orig(...)
		-- posthook
		hook = control[2]
		if hook then hook(...) end
		-- return values from original
		return a,b,c,d,e,f,g,h,i,j,k
	end
	tip[method] = stub
	--[[
	Note: neither the stub hook nor the original function should be called directly after our hook is installed,
	because the behaviour of any other third-party hooks to the same method would then be undefined
	(i.e. they might get called or they might not...)
	--]]
end

-- Called to install/modify a secure post-hook on the given tooltip's method (pre-hooks cannot be applied securely)
-- Call with nil posthook to remove a hook
function private.HookMethodSecure(tip, method, posthook)
	if not lib.hookStore[tip] then lib.hookStore[tip] = {} end
	-- check for existing hook
	local methodkey = "#"..method -- use modified key to avoid conflict with old hook stubs
	local control = lib.hookStore[tip][methodkey]
	if control then
		control[1] = posthook
		return
	end
	if not tip[method] then
		-- There should be an original method - abort if it's missing
		if nLog then
			nLog.AddMessage("LibExtraTip", "Hooks", N_NOTICE, "Missing method", "LibExtraTip:private.HookMethodSecure detected missing method: "..tostring(method))
		end
		return
	end
	control = {posthook}
	lib.hookStore[tip][methodkey] = control
	-- install hook stub
	local stub = function(...)
		local hook = control[1]
		if hook then hook(...) end
	end
	hooksecurefunc(tip, method, stub)
	-- Using control table protects against multiple hooking and allows us to change or disable the hook
end

-- Called to install/modify a pre-hook on the given tooltip's event
-- Call with nil prehook to remove a hook
function private.HookScriptBasic(tip, script, prehook) -- named HookScriptBasic to avoid confusion with Blizzard API 'object:HookScript'
	if not lib.hookStore[tip] then lib.hookStore[tip] = {} end
	local control
	-- check for existing hook
	control = lib.hookStore[tip][script]
	if control then
		control[1] = prehook
		return
	end
	-- prepare upvalues
	local orig = tip:GetScript(script)
	control = {prehook}
	lib.hookStore[tip][script] = control
	-- install hook stub
	local stub = function(...)
		local h
		-- prehook
		h = control[1]
		if h then h(...) end
		-- original hook
		if orig then orig(...) end
	end
	tip:SetScript(script, stub)
end

-- Called to install/modify a post-hook on the given tooltip's event
-- Call with nil posthook to remove a hook
function private.HookScriptSecure(tip, script, posthook)
	if not tip:HasScript(script) then
		-- There should be an original script - abort if it's missing
		if nLog then
			nLog.AddMessage("LibExtraTip", "Hooks", N_NOTICE, "Missing script", "LibExtraTip:private.HookScriptSecure detected missing script: "..tostring(script))
		end
		return
	end
	if not lib.hookStore[tip] then lib.hookStore[tip] = {} end
	-- check for existing hook
	local scriptkey = "#"..script -- use modified key to avoid conflict with basic hook stubs
	local control = lib.hookStore[tip][scriptkey]
	if control then
		control[1] = posthook
		return
	end
	-- prepare upvalues
	control = {posthook}
	lib.hookStore[tip][scriptkey] = control
	-- install hook stub
	local stub = function(...)
		local h = control[1]
		if h then h(...) end
	end
	tip:HookScript(script, stub)
end

-- Called to install a secure post hook on a global function
-- Call with nil posthook to remove a hook
-- func must be the name of a global function
function private.HookGlobalSecure(func, posthook)
	local orig = _G[func]
	if type(orig) ~= "function" then
		if nLog then
			nLog.AddMessage("LibExtraTip", "Hooks", N_WARNING, "Global hook - not a function", "LibExtraTip:private.HookGlobalSecure attempted to hook "..tostring(func).." which is not a global function name")
		end
		return
	end
	if not lib.hookStore.global then lib.hookStore.global = {} end
	local control = lib.hookStore.global[func]
	if control then
		control[1] = posthook
		return
	end
	control = {posthook}
	lib.hookStore.global[func] = control
	local stub = function(...)
		local hook = control[1]
		if hook then hook(...) end
	end
	-- As we only need post-hooks we can use hooksecurefunc
	-- Using control table protects against multiple hooking and allows us to change or disable the hook
	hooksecurefunc(func, stub)
end

-- Called to install a postcall to the TooltipDataProcessor
-- Can call with nil posthook to remove a hook
-- datatype is one of the Blizzard-defined Enum.TooltipDataType types
-- e.g. Enum.TooltipDataType.Item, Enum.TooltipDataType.Spell, Enum.TooltipDataType.Unit
-- or the text "ALL"
-- Hooking once will result in callbacks for *every* tooltip, so the postcall must check the tooltip is registered
-- Only use if TooltipDataProcessor.AddTooltipPostCall exists
-- @since 1.352 / "D"
function private.HookDataProcessor(datatype, posthook)
	if not lib.hookStore.tooltipdata then lib.hookStore.tooltipdata = {} end
	local control = lib.hookStore.tooltipdata[datatype]
	if control then
		control[1] = posthook
		return
	end
	control = {posthook}
	lib.hookStore.tooltipdata[datatype] = control
	local stub = function(...)
		local hook = control[1]
		if hook then hook(...) end
	end
	TooltipDataProcessor.AddTooltipPostCall(datatype, stub)
end


--[[-
	Adds the provided tooltip to the list of tooltips to monitor for items.
	@param tooltip GameTooltip object
	@return true if tooltip is registered
	@since 1.0
]]
function lib:RegisterTooltip(tooltip)
	local specialTooltip

	if not lib:IsActive() then
		return nil, "Library Inactive"
	end

	if not tooltip or type(tooltip) ~= "table" or type(tooltip.GetObjectType) ~= "function" then
		return nil, "Invalid Tooltip"
	end
	if tooltip:GetObjectType() ~= "GameTooltip" then
		if tooltip:GetObjectType() == "Frame" then
			-- is it a BattlePetTooltip? check for some of the entries from BattlePetTooltipTemplate
			if tooltip.BattlePet and tooltip.PetType and tooltip.PetTypeTexture then
				specialTooltip = "battlepet"
			else
				return nil, "Invalid Tooltip"
			end
		else
			return nil, "Invalid Tooltip"
		end
	end

	-- if not self.tooltipRegistry then
		-- self.tooltipRegistry = {}
		-- self:GenerateTooltipMethodTable()
	-- end

	if not self.tooltipRegistry[tooltip] then
		local reg = {}
		self.tooltipRegistry[tooltip] = reg
		reg.additional = {}

		private.RegisterTooltipHandler(tooltip, reg, specialTooltip)

		return true, true
	end

	return true, nil
end

--[[-
	Checks to see if the tooltip has been registered with LibExtraTip
	@param tooltip GameTooltip object
	@return true if tooltip is registered
	@since 1.0
]]
function lib:IsRegistered(tooltip)
	if not self.tooltipRegistry or not self.tooltipRegistry[tooltip] then
		return
	end
	return true
end

--[[-
	Returns a reference to the extra tip currently attached to the specified tooltip (if any)
	Intended for tooltip styling AddOns - should only be used to alter cosmetic elements of the tooltip
	(Use caution when modifying Text line fonts, as LibExtraTip also modifies the fonts)
	@param tooltip as registered tooltip
	@return extratip if any attached to tooltip (may be hidden and/or empty)
	@since 1.324
]]
function lib:GetExtraTip(tooltip)
	if not self.tooltipRegistry then return end
	local reg = self.tooltipRegistry[tooltip]
	if reg then
		return reg.extraTip
	end
end


--[[-
	Adds a callback to be informed of any registered tooltip's activity.
	The parameters passed to callbacks vary depending on the type of callback
	@param options a table containing entries defining the required callback
		type (string, required) the callback type, e.g. "item", "spell", and others
		callback (function, required) the function to be called back when the appropriate event occurs
		enable (table, optional) a table containing <event>=<boolean> pairs, specifying which events to respond to
			callbacks are usually only generated for events enabled either by this table, or by the defaultEnable table
		allevents (boolean, optional) if true always triggers a callback regardless of the event, overrides defaultEnable and options.event table
	@param priority the priority of the callback (optional, default 200)
	@since 1.0
]]
local sortFunc
function lib:AddCallback(options,priority)
-- Lower priority gets called before higher priority.  Default is 200.
	if not options then return end
	local otype = type(options)
	if otype == "function" then
		options = {type = "item", callback = options}
	elseif otype == "table" then
		-- check required keys
		if type(options.type) ~= "string" or type(options.callback) ~= "function" then
			return
		end
		-- copy into a new table for our internal use
		local copyoptions = {type = options.type, callback = options.callback}
		if options.allevents == true then
			copyoptions.allevents = true
		elseif type(options.enable) == "table" then
			copyoptions.enable = options.enable
		end

		options = copyoptions
	else
		return
	end

	if not sortFunc then
		local callbacks = self.callbacks
		if not callbacks then
			callbacks = {}
			self.callbacks = callbacks
			self.sortedCallbacks = {}
		end
		sortFunc = function(a,b)
			return callbacks[a] < callbacks[b]
		end
	end

	self.callbacks[options] = priority or 200
	tinsert(self.sortedCallbacks,options)
	sort(self.sortedCallbacks,sortFunc)
end

--[[-
	Removes the given callback from the list of callbacks.
	@param callback the callback to remove from notifications
	@return true if successfully removed
	@since 1.0
]]
function lib:RemoveCallback(callback)
	if not (callback and self.callbacks) then return end
	if not self.callbacks[callback] then
		-- backward compatibility for old 'function' style AddCallback and RemoveCallback
		for options, priority in pairs(self.callbacks) do
			if options.callback == callback then
				callback = options
				break
			end
		end
		if not self.callbacks[callback] then return end
	end
	self.callbacks[callback] = nil
	for index,options in ipairs(self.sortedCallbacks) do
		if options == callback then
			tremove(self.sortedCallbacks, index)
			return true
		end
	end
end

--[[-
	Sets the default embed mode of the library (default false)
	A false embedMode causes AddLine, AddDoubleLine and AddMoneyLine to add lines to the attached tooltip rather than embed added lines directly in the item tooltip.
	This setting only takes effect when embed mode is not specified on individual AddLine, AddDoubleLine and AddMoneyLine commands.
	@param flag boolean flag if true embeds by default
	@since 1.0
]]
function lib:SetEmbedMode(flag)
	self.embedMode = flag and true or false
end

--[[-
	Adds a line to a registered tooltip.
	@param tooltip GameTooltip object
	@param text the contents of the tooltip line
	@param r (0-1) red component of the tooltip line color (optional)
	@param g (0-1) green component of the tooltip line color (optional)
	@param b (0-1) blue component of the tooltip line color(optional)
	@param embed (boolean) override the lib's embedMode setting (optional)
	@param wrap (boolean) specify line-wrapping for long lines (optional)
	@see SetEmbedMode
	@since 1.0
]]
function lib:AddLine(tooltip, text, r, g, b, embed, wrap)
	local reg = self.tooltipRegistry[tooltip]
	if not reg then return end

	if reg.NoColumns then
		embed = false
	else
		if r and not g then embed = r r = nil end -- deprecated: (tooltip, text, embed) form
		if embed == nil then embed = self.embedMode end
	end
	if not embed then
		reg.extraTip:AddLine(text, r, g, b, wrap)
		reg.extraTipUsed = true
	else
		tooltip:AddLine(text, r, g, b, wrap)
	end
end

--[[-
	Adds a two-columned line to the tooltip.
	@param tooltip GameTooltip object
	@param textLeft the left column's contents
	@param textRight the left column's contents
	@param r red component of the tooltip line color (optional)
	@param g green component of the tooltip line color (optional)
	@param b blue component of the tooltip line color (optional)
	@param embed override the lib's embedMode setting (optional)
	@see SetEmbedMode
	@since 1.0
]]
function lib:AddDoubleLine(tooltip,textLeft,textRight,lr,lg,lb,rr,rg,rb,embed)
	local reg = self.tooltipRegistry[tooltip]
	if not reg then return end

	if reg.NoColumns then
		embed = false
	else
		if lr and not lg and not rr then embed = lr lr = nil end
		if lr and lg and rr and not rg then embed = rr rr = nil end
		if embed == nil then embed = self.embedMode end
	end
	if not embed then
		reg.extraTip:AddDoubleLine(textLeft,textRight,lr,lg,lb,rr,rg,rb)
		reg.extraTipUsed = true
	else
		tooltip:AddDoubleLine(textLeft,textRight,lr,lg,lb,rr,rg,rb)
	end
end

--[[-
	Creates a string representation of the money value passed using embedded textures for the icons
	@param money the money value to be converted in copper
	@param concise when false (default), the representation of 1g is "1g 00s 00c" when true, it is simply "1g" (optional)
	@since 1.0
]]
function lib:GetMoneyText(money, concise)
	local g = floor(money / 10000)
	local s = floor(money % 10000 / 100)
	local c = floor(money % 100)

    local colorBlindEnabled = GetCVar("colorblindMode") == "1"

	local moneyText = ""

	local sep, fmt = "", "%d"
	if g > 0 then
        if colorBlindEnabled then
		    moneyText = format("%.0f",g) .. GOLD_AMOUNT_SYMBOL
        else
		    moneyText = goldicon:format(g)
        end
		sep, fmt = " ", "%02d"
	end

	if s > 0 or (money >= 10000 and (concise and c > 0) or not concise) then
        if colorBlindEnabled then
		    moneyText = moneyText .. sep .. format(fmt,s) .. SILVER_AMOUNT_SYMBOL
        else
		    moneyText = moneyText..sep..silvericon:format(fmt):format(s)
        end
		sep, fmt = " ", "%02d"
	end

	if not concise or c > 0 or money < 100 then
        if colorBlindEnabled then
		    moneyText = moneyText .. sep .. format(fmt,c) .. COPPER_AMOUNT_SYMBOL
        else
            moneyText = moneyText..sep..coppericon:format(fmt):format(c)
        end
	end

	return moneyText
end

--[[-
	Adds a line with text in the left column and a money frame in the right.
	The money parameter is given in copper coins (i.e. 1g 27s 5c would be 12705)
	@param tooltip GameTooltip object
	@param text the contents of the tooltip line
	@param money the money value to be displayed (in copper)
	@param r red component of the tooltip line color (optional)
	@param g green component of the tooltip line color (optional)
	@param b blue component of the tooltip line color (optional)
	@param embed override the lib's embedMode setting (optional)
	@param concise specify if concise money mode is to be used (optional)
	@see SetEmbedMode
	@since 1.0
]]
function lib:AddMoneyLine(tooltip,text,money,r,g,b,embed,concise)
	local reg = self.tooltipRegistry[tooltip]
	if not reg then return end

	if reg.NoColumns then
		embed = false
	else
		if r and not g then embed = r r = nil end
		if embed == nil then embed = self.embedMode end
	end

	local moneyText = self:GetMoneyText(money, concise)

	if not embed then
		reg.extraTip:AddDoubleLine(text,moneyText,r,g,b,1,1,1)
		reg.extraTipUsed = true
	else
		tooltip:AddDoubleLine(text,moneyText,r,g,b,1,1,1)
	end
end

--[[-
	Sets a tooltip to hyperlink with specified quantity
	@param tooltip GameTooltip object
	@param link hyperlink to display in the tooltip
	@param quantity quantity of the item to display (optional)
	@param detail additional detail items to set for the callbacks (optional)
	@return true if successful
	@since 1.0
]]
function lib:SetHyperlinkAndCount(tooltip, link, quantity, detail)
    --DebugPrintQuick("SetHyperlinkAndCount", link, quantity, detail ) -- DEBUGGING
	local reg = self.tooltipRegistry[tooltip]
	if not reg or reg.NoColumns then return end -- NoColumns tooltips can't handle :SetHyperlink

	private.OnCleared(tooltip)
	reg.quantity = quantity
	reg.item = link
	reg.additional.event = "SetHyperlinkAndCount"
	reg.additional.eventLink = link
	if detail then
		for k,v in pairs(detail) do
			reg.additional[k] = v
		end
	end
	reg.ignoreOnCleared = true
	reg.ignoreSetHyperlink = true
	tooltip:SetHyperlink(link)
	reg.ignoreSetHyperlink = nil
	reg.ignoreOnCleared = nil
	return true
end

--[[-
	Set a (BattlePet) tooltip to (battlepetpet)link
	Although Pet Cages cannot be stacked, some Addons may wish to group identical Pets together for display purposes
	@param tooltip Frame(BattlePetTooltipTemplate) object
	@param link battlepet link to display in the tooltip
	@param quantity quantity of the item to display (optional)
	@param detail additional detail items to set for the callbacks (optional)
	@return true if successful
	@since 1.325

	-- ref: BattlePetToolTip_Show in FrameXML\BattlePetTooltip.lua
	-- ref: FloatingBattlePet_Show in FrameXML\FloatingPetBattleTooltip.lua
]]
local BATTLE_PET_TOOLTIP = {}
function lib:SetBattlePetAndCount(tooltip, link, quantity, detail)
	if not link then return end
	local reg = self.tooltipRegistry[tooltip]
	if not reg or not reg.NoColumns then return end -- identify BattlePet tooltips by their NoColumns flag
	local head, speciesID, level, breedQuality, maxHealth, power, speed, tail = strsplit(":", link)
	if not tail or head:sub(-9) ~= "battlepet" then return end
	speciesID = tonumber(speciesID)
	if not speciesID or speciesID < 1 then return end
	local name, icon, petType = C_PetJournal.GetPetInfoBySpeciesID(speciesID)
	if not name then return end

	-- set up the battlepet table
	BATTLE_PET_TOOLTIP.speciesID = speciesID
	BATTLE_PET_TOOLTIP.name = name
	BATTLE_PET_TOOLTIP.level = tonumber(level)
	BATTLE_PET_TOOLTIP.breedQuality = tonumber(breedQuality)
	BATTLE_PET_TOOLTIP.petType = petType
	BATTLE_PET_TOOLTIP.maxHealth = tonumber(maxHealth)
	BATTLE_PET_TOOLTIP.power = tonumber(power)
	BATTLE_PET_TOOLTIP.speed = tonumber(speed)
	local customName = strmatch(tail, "%[(.+)%]")
	if (customName ~= BATTLE_PET_TOOLTIP.name) then
		BATTLE_PET_TOOLTIP.customName = customName
	else
		BATTLE_PET_TOOLTIP.customName = nil
	end

	-- set up reg
	private.OnCleared(tooltip)
	reg.quantity = quantity
	reg.item = link
	reg.additional.event = "SetBattlePetAndCount"
	reg.additional.eventLink = link
	if detail then
		for k,v in pairs(detail) do
			reg.additional[k] = v
		end
	end

	-- load the tooltip (will trigger a call to private.OnSetBattlePet)
	reg.ignoreOnCleared = true
	BattlePetTooltipTemplate_SetBattlePet(tooltip, BATTLE_PET_TOOLTIP)

	local owned = C_PetJournal.GetOwnedBattlePetString(speciesID)
	tooltip.Owned:SetText(owned)
	if owned == nil then
		if tooltip.Delimiter then
			-- if .Delimiter is present it requires special handling (FloatingBattlePetTooltip)
			tooltip:SetSize(260,150)
			tooltip.Delimiter:ClearAllPoints()
			tooltip.Delimiter:SetPoint("TOPLEFT",tooltip.SpeedTexture,"BOTTOMLEFT",-6,-5)
		else
			tooltip:SetSize(260,122)
		end
	else
		if tooltip.Delimiter then
			tooltip:SetSize(260,164)
			tooltip.Delimiter:ClearAllPoints()
			tooltip.Delimiter:SetPoint("TOPLEFT",tooltip.SpeedTexture,"BOTTOMLEFT",-6,-19)
		else
			tooltip:SetSize(260,136)
		end
	end

	tooltip:Show()
	reg.ignoreOnCleared = nil
	return true
end

--[[-
	Get the additional information from a tooltip event.
	Often additional event details are available about the situation under which the tooltip was invoked, such as:
		* The call that triggered the tooltip.
		* The slot/inventory/index of the item in question.
		* Whether the item is usable or not.
		* Auction price information.
		* Ownership information.
		* Any data provided by the Get*Info() functions.
	If you require access to this information for the current tooltip, call this function to retrieve it.
	@param tooltip GameTooltip object
	@return table containing the additional information
	@since 1.0
]]
function lib:GetTooltipAdditional(tooltip)
	local reg = self.tooltipRegistry[tooltip]
	if reg then
		return reg.additional
	end
	return nil
end

function lib:IsActive()
	if status.filetrackerMain == ACTIVATE_COMPLETE and status.filetrackerHandler == ACTIVATE_COMPLETE then
		return true
	end
end


--[[ INTERNAL USE ONLY
	Deactivates this version of the library, rendering it inert.
	Needed to run before an upgrade of the library takes place.
	@since 1.0
]]
function lib:Deactivate()
	status.filetrackerMain = DEACTIVATED

	-- deactivate all hook stubs
	for tooltip, tiptable in pairs(lib.hookStore) do
		if tooltip ~= "version" then -- skip over the version indicator
			for method, control in pairs(tiptable) do
				wipe(control) -- disable the hook stub by removing all hooks from the control table
			end
		end
	end

	-- deactivate and discard any existing extra tooltips
	-- (should be extremely rare that any would exist at this point
	-- therefore minimal code just to prevent errors in those rare instances)
	if self.tooltipRegistry then
		for _, reg in pairs(self.tooltipRegistry) do
			local tip = reg.extraTip
			if tip then
				tip:Hide()
				tip:Release()
			end
			reg.extraTip = nil
			reg.extraTipUsed = nil

		end
	end
	self.extraTippool = nil

	-- call private.DeactivateXXX functions for other files, as needed
	private.DeactivateHandler()
end

--[[ INTERNAL USE ONLY
	Activates this version of the library.
	Configures this library for use by setting up its variables and reregistering any previously registered tooltips and callbacks.
	@since 1.0
]]
function lib:Activate()
	if private.startup then
		private.startup.ActivateMain()
	end
end
function private.startup.ActivateMain()
	local startup = private.startup
	private.startup = nil
	if status.filetrackerMain == LOAD_COMPLETE then
		status.filetrackerMain = ACTIVATE_START
	else
		return
	end

	local oldreg = lib.tooltipRegistry -- save old registry for later (may be nil)
	lib.tooltipRegistry = {} -- registry table must exist before calling some startup.Activate functions

	-- from this point on, as private.startup does not exist, we must pass local 'startup' as an argument to all subfunctions
	-- 'startup' may contain the previous version table (if a previous version was deactivated) in startup.oldversions
	-- may also contain data tables from a previous version, and subfunctions may use this to reuse old data structures where possible

	-- Call startup.Activate functions for other files in the appropriate order

	if not startup.ActivateHandler or not startup.ActivateHandler(startup) then
		status.filetrackerMain = ACTIVATE_FAIL
		return
	end

	-- Lastly, if everything else has activated OK, activate the Main file
	if status.filetrackerMain == ACTIVATE_START then
		status.filetrackerMain = ACTIVATE_COMPLETE
	else
		return
	end

	-- re-register stuff from previous version

	if oldreg then
		for tooltip in pairs(oldreg) do
			lib:RegisterTooltip(tooltip)
		end
	end
	local oldcallbacks = lib.callbacks
	if oldcallbacks then
		lib.callbacks = nil
		for options, priority in pairs(oldcallbacks) do
			lib:AddCallback(options, priority)
		end
	end
end

do -- ExtraTip "class" definition
	local methods = {"InitLines","Attach","Show","MatchSize","Release","SetParentClamp"}
	local scripts = {"OnShow","OnHide","OnSizeChanged"}
	local numTips = 0
	local class = {}
	ExtraTipClass = class

	local addLine,addDoubleLine,show = GameTooltip.AddLine,GameTooltip.AddDoubleLine,GameTooltip.Show

	local line_mt = {
		__index = function(t,k)
			local v = _G[t.name..k]
			rawset(t,k,v)
			return v
		end
	}

	function class:new()
		local n = numTips + 1
		numTips = n
		local o = CreateFrame("GameTooltip",LIBSTRING.."Tooltip"..n,UIParent,"GameTooltipTemplate")
		o:SetClampedToScreen(false) -- workaround for tooltip overlap problem [LTT-55]: allow extra tip to get pushed off screen instead

		for _,method in pairs(methods) do
			o[method] = self[method]
		end

		for _,script in pairs(scripts) do
			o:SetScript(script,self[script])
		end

		o.LibExtraTipLeft = setmetatable({name = o:GetName().."TextLeft"},line_mt)
		o.LibExtraTipRight = setmetatable({name = o:GetName().."TextRight"},line_mt)
		return o
	end

	local pointsRight = {"TOPRIGHT", "BOTTOMRIGHT"}
	local pointsCentre = {"TOP", "BOTTOM"}
	local pointsLeft = {"TOPLEFT", "BOTTOMLEFT"}
	local attachPointsLookup = {
		TOPLEFT = pointsLeft,
		TOPRIGHT = pointsRight,
		BOTTOMLEFT = pointsLeft,
		BOTTOMRIGHT = pointsRight,
		TOP = pointsCentre,
		BOTTOM = pointsCentre,
		LEFT = pointsLeft,
		RIGHT = pointsRight,
		CENTER = pointsCentre,
	}
	function class:Attach(tooltip)
		if self.parent then self:SetParentClamp(0) end
		self.parent = tooltip
		self:SetParent(tooltip)
		self:SetOwner(tooltip,"ANCHOR_NONE")
		local parentPoint = tooltip:GetPoint(1)
		local attach = attachPointsLookup[parentPoint] or pointsRight
		self:SetPoint(attach[1], tooltip, attach[2])
	end

	function class:Release()
		if self.parent then self:SetParentClamp(0) end
		self.parent = nil
		self:SetParent(nil)
		self.inMatchSize = nil
	end

	function class:InitLines()
		local nlines = self:NumLines()
		local changedLines = self.changedLines or 0
		if changedLines < nlines then
			for i = changedLines + 1, nlines do
				local left,right = self.LibExtraTipLeft[i],self.LibExtraTipRight[i]
				local font
				if i == 1 then
					font = GameFontNormal
				else
					font = GameFontNormalSmall
				end

				local r,g,b,a

				r,g,b,a = left:GetTextColor()
				left:SetFontObject(font)
				left:SetTextColor(r,g,b,a)

				r,g,b,a = right:GetTextColor()
				right:SetFontObject(font)
				right:SetTextColor(r,g,b,a)
			end
			self.changedLines = nlines
			return true
		end
	end

	function class:SetParentClamp(h)
		local p = self.parent
		if not p then return end
		local l,r,t,b = p:GetClampRectInsets()
		p:SetClampRectInsets(l,r,t,-h)
	end

	function class:OnShow()
		self:SetParentClamp(self:GetHeight())
		self:MatchSize()
	end

	function class:OnSizeChanged(w,h)
		self:SetParentClamp(h)
		self:MatchSize()
	end

	function class:OnHide()
		self:SetParentClamp(0)
	end

	-- The right-side text is statically positioned to the right of the left-side text.
	-- As a result, manually changing the width of the tooltip causes the right-side text to not be in the right place.
	local function fixRight(tooltip, width)
		local lefts = tooltip.LibExtraTipLeft
		if not lefts then
			lefts = setmetatable({name = tooltip:GetName().."TextLeft"},line_mt)
			tooltip.LibExtraTipLeft = lefts -- use key containing lib name, to try to ensure it doesn't clash with anything
		end
		local rights = tooltip.LibExtraTipRight
		if not rights then
			rights = setmetatable({name = tooltip:GetName().."TextRight"},line_mt)
			tooltip.LibExtraTipRight = rights -- use key containing lib name, to try to ensure it doesn't clash with anything
		end

		local xofs = width - tooltip:GetPadding() - 20.5 -- constant value obtained by analysing default tooltip layout

		for line = 1, tooltip:NumLines() do
			local left, right = lefts[line], rights[line]
			if left and right then
				right:ClearAllPoints()
				right:SetPoint("RIGHT", left, "LEFT", xofs, 0) -- approximates the layout used by Blizzard, but for the new width
			end
		end
	end

	function class:MatchSize()
		local p = self.parent
		if not p then return end
		if self.inMatchSize then return end
		self.inMatchSize = true
		local pw = p:GetWidth()
		local w = self:GetWidth()
		local d = pw - w
		-- if the difference is less than a pixel, we don't want to waste time fixing it
		if d > .5 then
			self:SetWidth(pw)	-- parent is wider, so we make child tip match
			fixRight(self, pw)
		elseif d < -.5 then
			local reg = lib.tooltipRegistry[p]
			if not reg.NoColumns then
				p:SetWidth(w)	-- the parent is smaller than the child tip, make the parent wider
				fixRight(p, w)	-- fix right aligned items in the game tooltip, not working currently as it shifts by the wrong amount
				p:GetWidth()	-- in certain rare cases, inspecting the width here is necessary to force the tooltip to resize properly
			end
		end
		self.inMatchSize = nil
	end

	function class:Show()
		show(self)
		if self:InitLines() then
			-- sometimes 'show' needs to be called twice to correctly resize the tooltip
			-- calling it once (before OR after InitLines) doesn't always work {LTT-42}
			show(self)
		end
		self:MatchSize()
	end

end

-- More housekeeping upgrade stuff
if status.filetrackerMain == LOAD_START then
	status.filetrackerMain = LOAD_COMPLETE
end

lib:SetEmbedMode(lib.embedMode)
lib:Activate()
