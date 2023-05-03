--[[
	Norganna's Tooltip Helper class
	Version: 1,4
	Revision: $Id$
	URL: http://norganna.org/tthelp

	This is a slide-in helper class for the Norganna's AddOns family of AddOns
	It is designed to work with the LibExtraTip tooltip library and provide additional
	information that is useful for the Auctioneer et al AddOns.

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This source code is specifically designed to work with World of Warcraft's
		interpreted AddOn system.
		You have an implicit licence to use this code with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat

		If you copy this code, please rename it to your own tastes, as this file is
		liable to change without notice and could possibly destroy any code that relies
		on it staying the same.
		We will attempt to avoid this happening where possible (of course).

	Requires:
		LibExtraTip must be loaded first. If the libraries are embedded it is up to the
		packager to ensure they load in the correct order.
]]

if not LibStub then -- LibStub is included in LibExtraTip
	error("TipHelper cannot load because LibExtraTip is not loaded (LibStub missing)")
end
local MAJOR,MINOR = "nTipHelper", 1
local LIBSTRING = MAJOR..":"..MINOR

-- REVISION cannot be a SVN Revison in case this library is used in multiple repositories
-- Should be updated manually with each (non-trivial) change
local REVISION = 10

local lib = LibStub:NewLibrary(LIBSTRING,REVISION)
if not lib then return end

local type = type
local gsub = gsub
local tonumber = tonumber
local strsplit = strsplit
local bitand = bit.band

do -- tooltip class definition
	local libTT = LibStub("LibExtraTip-1", true)
	if not libTT then
		lib.LoadError = "Missing LibExtraTip"
		error("TipHelper cannot load because LibExtraTip is not loaded (LibExtraTip-1 missing)")
	end
	local MoneyViewClass = LibStub("LibMoneyFrame-1")
	local libACL = LibStub("LibAltChatLink")
	local libAICache = LibStub("LibAucItemCache")
	local libASB = LibStub("LibAucSplitBonus")

	local curFrame = nil
	local asText = false
	local defaultR = 0.7
	local defaultG = 0.7
	local defaultB = 0.7
	local defaultEmbed = false
	local itemData

	local activated = false
	local inLayout = false

	local GOLD="ffd100"
	local SILVER="e6e6e6"
	local COPPER="c8602c"

	local GSC_3 = "|cff%s%d|r|cff8f8f8f.|r|cff%s%02d|r|cff8f8f8f.|r|cff%s%02d|r"
	local GSC_2 = "|cff%s%d|r|cff8f8f8f.|r|cff%s%02d|r"
	local GSC_1 = "|cff%s%d|r"

	local iconpath = "Interface\\MoneyFrame\\UI-"
	local goldicon = "%d|T"..iconpath.."GoldIcon:0|t"
	local silvericon = "%s|T"..iconpath.."SilverIcon:0|t"
	local coppericon = "%s|T"..iconpath.."CopperIcon:0|t"


	local function coins(money, graphic)
		money = math.floor(tonumber(money) or 0)
		local g = math.floor(money / 10000)
		local s = math.floor(money % 10000 / 100)
		local c = money % 100

		if not graphic then
			if g > 0 then
				return GSC_3:format(GOLD, g, SILVER, s, COPPER, c)
			elseif s > 0 then
				return GSC_2:format(SILVER, s, COPPER, c)
			else
				return GSC_1:format(COPPER, c)
			end
		else
			if g > 0 then
				return goldicon:format(g)..silvericon:format("%02d"):format(s)..coppericon:format("%02d"):format(c)
			elseif s > 0  then
				return silvericon:format("%d"):format(s)..coppericon:format("%02d"):format(c)
			else
				return coppericon:format("%d"):format(c)
			end
		end
	end

	-- Deprecated; a slightly obscure function that used to be used by DecodeLink
	local function breakHyperlink(match, matchlen, ...)
		local v
		local n = select("#", ...)
		for i = 2, n do
			v = select(i, ...)
			if (v:sub(1,matchlen) == match) then
				return strsplit(":", v:sub(2))
			end
		end
	end
	function lib:BreakHyperlink(...)
		return breakHyperlink(...)
	end

	function lib:GetFactor(suffix, seed)
		if (suffix < 0 and seed) then
			return bitand(seed, 65535)
		end
		return 0
	end

	local lastSaneLink, lastSanitized
	function lib:SanitizeLink(link)
		if not link then
			return
		end
		if lastSanitized == link or lastSaneLink == link then
			return lastSaneLink
		end
		if type(link) == "number" then
			local _, tlink = GetItemInfo(link)
			link = tlink
		end
		if type(link) ~= "string" then
			return
		end
		local newlink, test = gsub(link, "(|Hitem:[^:]+:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*):%d+:%d*", "%1:80:")
		lastSaneLink = newlink
		lastSanitized = link
		return lastSaneLink
	end

	-- DecodeLink last item cache
	-- the return values have different meanings for different link types, so they are just numbered
	-- where they are assigned values, comments will show what each one represents
	local lastDecodeLink
	local linkType,ret1,ret2,ret3,ret4,ret5,ret6,ret7,ret8,ret9,ret10
	local bonusIDPatterns, ParseToBonusIDString = libASB.BONUSIDPATTERNS, libASB.ParseToBonusIDString
	function lib:DecodeLink(link, info, bonus)
		if not link then
			return
		end
		if type(info) ~= "table" then
			info = nil
		end
		if type(bonus) ~= "table" then
			bonus = nil
		end

		if link ~= lastDecodeLink then
			-- not in last item cache
			linkType = nil
			local vartype = type(link)
			if (vartype == "string") then
				local header,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14 = strsplit(":", link, 15)
				lType = header:sub(-4) -- get last 4 letters of link type
				if lType == "item" then
					ret1 = tonumber(s1) -- itemId
					if ret1 and ret1 ~= 0 then
						ret4 = tonumber(s2) or 0 -- enchant
						ret6 = tonumber(s3) or 0 -- gem 1
						ret7 = tonumber(s4) or 0 -- gem 2
						ret8 = tonumber(s5) or 0 -- gem 3
						ret9 = tonumber(s6) or 0 -- gem 4 (gem bonus)
						ret2 = tonumber(s7) or 0 -- suffix
						ret5 = tonumber(s8) or 0 -- seed
						-- s9 (uLevel), s10 (specializationID), s11 (upgrades), s12 (instanceID) not used
						ret10 = nil
						if s14 and s14 ~= "" and s13 ~= "" and s13 ~= "0" then
							-- s13 contains count of bonusIDs, s14 contains tail of string starting with bonusIDs plus other stuff after
							-- we need to snip the bonudIDs off the front of s14
							local pattern = bonusIDPatterns[s13]
							if pattern then -- for small numbers of bonusIDs we can look up a pattern to save time
								ret10 = s14:match(pattern)
							end
							if not ret10 then
								ret10 = ParseToBonusIDString(s13, s14)
							end
						end
						ret3 = lib:GetFactor(ret2, ret5) -- factor
						linkType = "item"
					end
				elseif lType == "epet" then -- last 4 letters of "battlepet"
					ret1 = tonumber(s1) -- speciesID
					if ret1 and ret1 ~= 0 then
						ret2 = tonumber(s2) or 0 -- level (0 signifies unknown level)
						ret3 = tonumber(s3) or -1 -- quality (-1 signifies unknown quality)
						ret4 = tonumber(s4) or 0 -- health
						ret5 = tonumber(s5) or 0 -- power
						ret6 = tonumber(s6) or 0 -- speed
						if s7 then
							ret7 = tonumber((strsplit("|", s7))) or 0 -- battlepetID (journal ID. usually 0 for caged pets)
						else
							ret7 = 0
						end
						linkType = "battlepet"
					end
				elseif lType == "pell" then -- last 4 letters of "spell"
					if s1 then
						ret1 = tonumber((strsplit("|", s1))) -- spellId
						if ret1 and ret1 ~= 0 then
							linkType = "spell"
						end
					end
				elseif lType == "hant" then -- last 4 letters of "enchant"
					if s1 then
						ret1 = tonumber((strsplit("|", s1))) -- spellId
						if ret1 and ret1 ~= 0 then
							linkType = "enchant"
						end
					end
				end
			elseif (vartype == "number") then
				-- link is the itemId
				-- linkType,itemId, suffix,factor,enchant,seed, gem1,gem2,gem3,gemBonus, bonuses(string)
				linkType,ret1, ret2,ret3,ret4,ret5, ret6,ret7,ret8,ret9, ret10 =
					"item",link, 0,0,0,0, 0,0,0,0, nil
				if info then
					-- only need to create a proper link if it will be needed for the info table
					local _, newlink = GetItemInfo(link)
					link = newlink
				end
			end
		end
		lastDecodeLink = link

		if linkType == "item" then
			if info then
				info.linkType = linkType
				info.link = link
				info.itemLink = link -- deprecated; for compatibility
				info.itemType = linkType -- deprecated; for compatibility
				info.itemId = ret1
				info.itemSuffix = ret2
				info.itemFactor = ret3
				info.itemEnchant = ret4
				info.itemSeed = ret5
				info.itemGem1 = ret6
				info.itemGem2 = ret7
				info.itemGem3 = ret8
				info.itemGemBonus = ret9
				info.itemBonuses = ret10
			end
			if bonus and ret10 then
				-- this is potentially an expensive operation, we only perform it if caller provided a table for us to store bonuses into
				-- caller is expected to pre-wipe the table (or caller can accumulate data from several items by not wiping)
				for b in ret10:gmatch("%d+") do
					tinsert(bonus, tonumber(b))
				end
			end
			-- linkType,itemId, suffix,factor,enchant,seed, gem1,gem2,gem3,gemBonus, bonuses(string)
			return linkType,ret1, ret2,ret3,ret4,ret5, ret6,ret7,ret8,ret9, ret10
		elseif linkType == "battlepet" then
			if info then
				info.linkType = linkType
				info.link = link
				info.petSpeciesID = ret1
				info.petLevel = ret2
				info.petQuality = ret3
				info.petHealth = ret4
				info.petPower = ret5
				info.petSpeed = ret6
				info.battlepetID = ret7
			end
			-- linkType,speciesID, level,quality, health,power,speed, battlepetID
			return linkType,ret1, ret2,ret3, ret4,ret5,ret6, ret7
		elseif linkType == "spell" or linkType == "enchant" then
			if info then
				info.linkType = linkType
				info.link = link
				info.spellId = ret1
			end
			-- linktype,spellId
			return linkType,ret1
		end
	end

	function lib:GetLinkQuality(link)
		if not link or type(link) ~= "string" then return end
		local color = link:match("|c(%x+)|H")
		if color then
			local _, hex
			for i = 0, NUM_ITEM_QUALITIES do
				_,_,_, hex = GetItemQualityColor(i)
				if color == hex then return i end
			end
		end
		return -1
	end

	-- Call the given frame's SetHyperlink call
	function lib:ShowItemLink(frame, link, count, additional)
		return libTT:SetHyperlinkAndCount(frame, link, count, additional)
	end

	-- Load a battlepet link into a BattlePetTooltip frame
	function lib:ShowPetLink(frame, link, count, additional)
		return libTT:SetBattlePetAndCount(frame, link, count, additional)
	end

	-- Activation function. All client addons should call this when they get ADDON_LOADED
	function lib:Activate()
		if activated then return end
		libTT:RegisterTooltip(GameTooltip)
		libTT:RegisterTooltip(ItemRefTooltip)
		if BattlePetTooltip then
			libTT:RegisterTooltip(BattlePetTooltip)
			libTT:RegisterTooltip(FloatingBattlePetTooltip)
		end
		activated = true
	end

	-- Allow client addon to add their callback
	function lib:AddCallback(callback, priority)
		self:Activate() -- We should be activated by now, but make sure.
		libTT:AddCallback(callback, priority)
	end

	-- Accessor functions for the current frame that the tooltip is affecting
	function lib:SetFrame(frame)
		assert(libTT:IsRegistered(frame), "Error, frame is not registered with LibExtraTip in nTipHelper:SetFrame()")

		curFrame = frame
		inLayout = true
	end
	function lib:GetFrame()
		return curFrame
	end
	-- Try to Clear the frame after you've finished using it, this will stop stray reuse
	-- of the tooltip other than at the proper layout time.
	function lib:ClearFrame(tip)
		assert(tip == curFrame, "Error, frame is not the current frame in nTipHelper:ClearFrame()")
		curFrame = nil
		inLayout = false
	end

	-- Accessor functions for the data the tooltip contains
	function lib:SetData(data)
		itemData = data
	end
	function lib:GetData()
		return itemData
	end

	-- Sets the color that the tooltip will use from now on.
	-- (resets to default color between calls to modules)
	function lib:SetColor(r, g, b)
		defaultR = r
		defaultG = g
		defaultB = b
	end

	-- Sets the embed mode that the tooltip will use from now on.
	-- (resets to default mode between calls to modules)
	function lib:SetEmbed(embed)
		defaultEmbed = embed
	end

	-- Sets the money mode that the tooltip will use from now on.
	-- (resets to default mode between calls to modules)
	function lib:SetMoneyAsText(text)
		asText = text
	end

	-- Gets money as colorized text
	function lib:Coins(amount, graphic)
		return coins(amount, graphic)
	end

	--[=[
	  Adds a line of text to the tooltip.

	  Supported calling formats:
	  lib:AddLine(text [, {rightText | amount | useWrapping | nil} [, red, green, blue] [, embed]])
	  lib:AddLine(text, red, green, blue [, embed])
	]=]
	function lib:AddLine(...)
		if not inLayout then
			error("No tooltip to add line to in nTipHelper:AddLine()")
		end

		local left, right, amount, red,green,blue, embed, wrap
		local numArgs = select("#", ...)
		local left = ...
		left = tostring(left)

		if numArgs > 2 then
			-- Check if the last arg is a boolean, and is after arg2
			local lastArg = select(numArgs, ...)
			if type(lastArg) == "boolean" then
				-- Strip it off
				embed = lastArg
				numArgs = numArgs - 1
			end
		end

		if numArgs > 3 then
			-- Possible that the last 3 numbers are colors
			local r,g,b = select(numArgs-2, ...)

			if type(r)=="number" and type(g)=="number" and type(b)=="number" then
				if r>=0 and r<=1 and g>=0 and g<=1 and b>=0 and b<=1 then
					-- Assumption is that these are colors
					red,green,blue = r,g,b
					numArgs = numArgs - 3
				end
			end
		end

		if numArgs > 1 then
			-- There's a second parameter: if it's a number, it's a money amount,
			-- if boolean it flags text wrapping,
			-- otherwise it's the right-aligned text.
			local secondArg = select(2, ...)
			local secondType = type(secondArg)
			if secondType == "number" then
				if asText then
					right = coins(secondArg)
				else
					amount = secondArg
				end
			elseif secondType == "boolean" then
				wrap = secondArg
			elseif secondType == "string" then
				right = secondArg
			end
		end

		red = tonumber(red)
		green = tonumber(green)
		blue = tonumber(blue)

		if red == nil or green == nil or blue == nil then
			-- Not all colors supplied
			red,green,blue = defaultR,defaultG,defaultB
		end
		if embed == nil then
			embed = defaultEmbed
		end
		left = left:gsub("{{", "|cffddeeff"):gsub("}}", "|r")
		if amount then
			libTT:AddMoneyLine(curFrame, left, amount, red, green, blue, embed)
		elseif right then
			libTT:AddDoubleLine(curFrame, left, right, red, green, blue, embed)
		else
			libTT:AddLine(curFrame, left, red, green, blue, embed, wrap)
		end
	end

	-- Return the extra information from this tooltip
	function lib:GetExtra()
		assert(inLayout, "Error, no tooltip to get extra info in nTipHelper:Extra()")
		return libTT:GetTooltipAdditional(curFrame)
	end

	function lib:CreateMoney(high, wide, red,green,blue)
		local m = MoneyViewClass:new(high, wide, red,green,blue);
		return m
	end

	-- Attach LibAltChatLink

	function lib:AltChatLinkRegister(callback)
		-- 'callback' is a function which should take the same parameters as SetItemRef
		-- and should return one of the LibAltChatLink constants (may return nil instead of NO_ACTION)
		libACL:AddCallback(callback)
	end

	function lib:AltChatLinkConstants()
		return libACL.OPEN_TOOLTIP, libACL.NO_ACTION, libACL.BLOCK_TOOLTIP
	end

	-- Attach LibAucItemCache
	-- Note this lib uses '.' for access, not ':'

	-- ... = lib.GetItemInfoCache(item, select, mode) -- mode is NYI
	lib.GetItemInfoCache = libAICache.GetItemInfoCache
	-- lib.AIC_CacheFlush()
	lib.AIC_CacheFlush = libAICache.CacheFlush
	-- lib.AIC_CacheControl(???) -- NYI
	lib.AIC_CacheControl = libAICache.CacheControl
	-- version = lib.AIC_GetVersion()
	lib.AIC_GetVersion = libAICache.GetVersion
	-- PerformanceMonitorTable = lib.AIC_GetPerformance()
	-- PerformanceReportString = lib.AIC_GetPerformance(true)
	lib.AIC_GetPerformance = libAICache.GetPerformance

	-- Attach LibAucSplitBonus
	-- Note this lib uses '.' for access, not ':'

	lib.ParseToBonusIDString = libASB.ParseToBonusIDString
	lib.ParseToBonusIDTable = libASB.ParseToBonusIDTable
	lib.QuickToBonusIDTable = libASB.QuickToBonusIDTable
	lib.BONUSIDPATTERNS = libASB.BONUSIDPATTERNS

end -- tooltip class definition

LibStub("LibRevision"):Set("$URL$","$Rev$","5.12.DEV.", 'auctioneer', 'libs')
