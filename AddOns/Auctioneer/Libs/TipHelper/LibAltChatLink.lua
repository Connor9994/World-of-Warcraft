--[[
	LibAltChatLink.lua
		Opens ItemRefTooltip from an Alt-click on a chat link
		by brykrys
		This code is hereby released into the Public Domain without warranty.

		Implemented as an embedded library that relies on the parent AddOn(s) to control whether or
		not ItemRefTooltip will be displayed, via a callback function.

		Designed for the Auctioneer suite http://auctioneeraddon.com/

	Usage:
		local LibAltChatLink = LibStub("LibAltChatLink")
		local callback = function(link, text, button, chatFrame) -- same parameters as SetItemRef
			if <setting enabled> then
				return LibAltChatLink.OPEN_TOOLTIP -- show tooltip (unless blocked by another AddOn)
			elseif <special situation> then
				return LibAltChatLink.BLOCK_TOOLTIP -- if the Alt-click has been "used up" by taking another action
			else
				return LibAltChatLink.NO_ACTION -- optional: the function may simply return, instead of returning the NO_ACTION constant
			end
		end

		LibAltChatLink:AddCallback(callback)
		LibAltChatLink:RemoveCallback(callback)
		LibAltChatLink:GetVersion()

	Requires:
		LibStub. See http://www.wowwiki.com/LibStub for more info.

	SVN Info for this file:
		File $URL$
		Revision $Id$
--]]


local LIBRARY_VERSION_MAJOR = "LibAltChatLink"
local LIBRARY_VERSION_MINOR = 3

local lib, oldminor = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end
if lib._deactivate then lib._deactivate() end


--[[ Setup ]]--

-- previous version, if there was one, will be in 'oldminor'
-- check to see if any special upgrading action is needed
-- e.g. if oldminor and oldminor < X then do something

-- get callbacks list from older version if it exists
local callbacks = lib._callbacks1
if not callbacks then
	callbacks = {}
	lib._callbacks1 = callbacks
end

local function sethook()
	-- this stub function provides a layer of indirection
	-- as it is secure-hooked, we cannot change or unhook it
	-- if we are loading a newer version of the library over an older one,
	-- we can keep the original stub but change lib._hooksetitemref1
	if not lib._issecurehooked1 then
		hooksecurefunc("SetItemRef", function(...) return lib._hooksetitemref1(...) end)
		lib._issecurehooked1 = true
	end
	sethook = nil
end


--[[ Public Interface ]]--

function lib:AddCallback(callback)
	if type(callback) ~= "function" then
		error(LIBRARY_VERSION_MAJOR..":AddCallback: Callback must be a function", 2)
	end
	for _, existing in ipairs(callbacks) do
		if callback == existing then
			error(LIBRARY_VERSION_MAJOR..":AddCallback: Attempt to re-register an existing callback", 2)
		end
	end
	tinsert(callbacks, callback)
	if sethook then sethook() end
	return true
end

function lib:RemoveCallback(callback)
	if type(callback) ~= "function" then
		error(LIBRARY_VERSION_MAJOR..":RemoveCallback: Callback must be a function", 2)
	end
	for index, existing in ipairs(callbacks) do
		if callback == existing then
			tremove(index)
			return true
		end
	end
	return nil, "Not found"
end

function lib:GetVersion()
	return LIBRARY_VERSION_MINOR
end

-- Constants
lib.BLOCK_TOOLTIP = -1
lib.OPEN_TOOLTIP = true
lib.NO_ACTION = false


--[[ Internal ]]--

-- the real hook
function lib._hooksetitemref1(...)
	if not IsAltKeyDown() then
		return
	end
	local link = ...
	local linktype = strmatch(link, "^(%l+):%d")
	if not lib._allowedlinktypes1[linktype] then
		return
	end
	local opentooltip, blocktooltip = false, false
	for _, callback in ipairs(callbacks) do
		-- ensure that every callback is called each time - never break this loop early
		local result = callback(...)
		if result == lib.BLOCK_TOOLTIP then
			blocktooltip = true
		elseif result then
			opentooltip = true
		end
	end
	if opentooltip and not blocktooltip then
		if linktype == "battlepet" then
			local _, speciesID, level, breedQuality, maxHealth, power, speed, battlePetID = strsplit(":", link)
			FloatingBattlePet_Toggle(tonumber(speciesID), tonumber(level), tonumber(breedQuality), tonumber(maxHealth), tonumber(power), tonumber(speed), string.gsub(string.gsub(link, "^(.*)%[", ""), "%](.*)$", ""), tonumber(battlePetID))
		else
			ShowUIPanel(ItemRefTooltip)
			if not ItemRefTooltip:IsShown() then
				ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE")
			end
			if ItemRefTooltip.ItemRefSetHyperlink then
				-- if new ItemRefSetHyperlink method exists, use it
				pcall(ItemRefTooltip.ItemRefSetHyperlink, ItemRefTooltip, link)
			else
				-- pcall it just in case an invalid link got through
				pcall(ItemRefTooltip.SetHyperlink, ItemRefTooltip, link)
			end
		end
	end
end

lib._allowedlinktypes1 = {
	item = true,
	spell = true,
	enchant = true,
	quest = true,
	achievement = true,
	talent = true,
	glyph = true,
	battlepet = true,
}

function lib._deactivate()
	lib._hooksetitemref1 = function() end
	lib._allowedlinktypes1 = nil
end
