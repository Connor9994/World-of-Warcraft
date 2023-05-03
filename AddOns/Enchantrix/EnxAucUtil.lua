--[[
	Enchantrix Addon for World of Warcraft(tm).
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://enchantrix.org/

	This is an addon for World of Warcraft that add a list of what an item
	disenchants into to the items that you mouse-over in the game.

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
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat

]]
Enchantrix_RegisterRevision("$URL$","$Rev$")

-- Provide fixed price data by registering ourselves as a bonafide legitimate Auctioneer module.
if not AucAdvanced then return end
local AddOnName = ...
local lib = AucAdvanced.NewModule("Util", "Enchantrix", nil, true, AddOnName)
if not lib then return end

Enchantrix.AucUtil = lib

local get = Enchantrix.Settings.GetSetting
local decode = AucAdvanced.DecodeLink
local StaticPrices = Enchantrix.Constants.StaticPrices
local ResolveServerKey = AucAdvanced.ResolveServerKey
local Resources = AucAdvanced.Resources

local priceTable = {}
local priceTableAge
function lib.IsValidAlgorithm(hyperlink)
	if not get("export.aucadv") then return false end

    if get("ScanValueType") == "adv:stat:Appraiser" then return false end  -- Stops infinite loop from using Appraiser prices which uses Market Price which uses Enchantrix.

	local linkType, itemId = decode(hyperlink)
	if linkType ~= "item" then return false end

	if StaticPrices[itemId] then
		return true, itemId
	end
	return false
end

local array = {}
function lib.GetPriceArray(link, serverKey)
	serverKey = ResolveServerKey(serverKey)
	if serverKey ~= Resources.ServerKey then return end -- current implementation only supports current serverKey
	local usable, itemId = lib.IsValidAlgorithm(link)
    if not usable then return end

	if not priceTableAge or priceTableAge < GetTime() - 15 then
		priceTable = Enchantrix.Util.CreateReagentPricingTable(priceTable)
		priceTableAge = GetTime()
	end

	array.price = priceTable[itemId]
	array.seen = 0
	array.confidence = 1
	return array
end
