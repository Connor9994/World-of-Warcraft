if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------
----- Auctioneers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		talk Auctioneer Fitch##8719 |goto Stormwind City 61.1,70.6
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.0,26.5 |only if rep ('The Aldor') >= Friendly
		talk Auctioneer Kalaren##50139 |goto Shattrath City 57.0,63.2 |only if rep ('The Scryers') >= Friendly
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_stormshield",[[
		talk Kong Brewstep##88522 |goto Stormshield/0 54.7,67.7
		|tip He's inside this building.
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_ironforge",[[
		talk Auctioneer Redmuse##8720 |goto Ironforge 24.3,74.6
]])