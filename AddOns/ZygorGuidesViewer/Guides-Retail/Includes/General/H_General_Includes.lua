if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------
----- Auctioneers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.3
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.0,26.5 |only if rep('The Aldor')>=Friendly
		talk Auctioneer Lyrsara##50140 |goto Shattrath City 56.8,62.4 |only if rep('The Scryers')>=Friendly
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_warspear",[[
		talk Shei'ann Younghoof##88128 |goto Warspear/0 54.8,25.0
]])