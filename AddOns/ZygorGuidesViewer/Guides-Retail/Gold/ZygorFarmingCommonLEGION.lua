local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "LEG"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------

--  Legion  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shal'dorei Silk",{
	meta={goldtype="route",levelreq=10},
	items={{124437,300}},
	maps={"Val'sharah"},
	},[[
	step
	label "Start_Farming_Shaldorei_Silk"
		map Highmountain/0
		path	follow smart; loop off; ants curved; dist 30
		path	52.31,36.51	52.74,35.07	52.50,34.00
		path	51.76,34.16	50.53,33.75	49.71,35.51
		path	48.89,36.53	46.51,37.97	45.37,38.88
		kill Crawliac Hagfeather##95266+, Crawliac Deathscreamer##95265+, Skywhisker Loyalist##95277+
		|tip Enchant your shoulders with the "Enchant Shoulder - Boon of the Scavenger" enchant.
		|tip This will allow Scavenged Cloth packs to drop for you, which contain a good amount of Shal'dorei Silk.
		|tip You can create the enchant, if you have Enchanting.
		|tip You can also purchase it from the Auction House.
		|goldcollect 300 Shal'dorei Silk##124437 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Shaldorei_Silk_Sell"
	step
	label "Shaldorei_Silk_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Shal'dorei Silk |confirm |next "Start_Farming_Shaldorei_Silk"
]])


--------------------------
-----    COOKING    ------
--------------------------

--  Legion  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Wildfowl Egg",{
	meta={goldtype="route",levelreq=10},
	items={{124121,400}},
	maps={"Stormheim"},
	},[[
	step
	label "Start_Farming_Wildfowl_Egg"
		Follow the path |goto Stormheim/0 61.67,55.08 < 30 |only if walking and horde
		Follow the path |goto Stormheim/0 69.66,52.75 < 30 |only if walking and horde
		Follow the path down |goto Stormheim/0 72.07,51.87 < 15 |only if walking and horde
		Follow the path |goto Stormheim/0 71.42,55.36 < 30 |only if walking and horde
		Follow the path |goto Stormheim/0 72.18,59.28 < 20 |only if walking and alliance
		Follow the path |goto Stormheim/0 73.40,57.03 < 30 |only if walking
		Follow the beach |goto Stormheim/0 79.51,57.09 < 30 |only if walking
		Follow the water |goto Stormheim/0 82.65,67.39 < 30 |only if walking
		kill Coastal Seagull##97809+
		|tip They are flying around and perched up on the rocks along the coast around this area.
		|tip If you kill them up on the rocks and can't reach them to loot them, kill a crab on the ground nearby to AoE loot them.
		|goldcollect 400 Wildfowl Egg##124121 |n |goto Stormheim/0 80.57,69.32
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Wildfowl_Egg_Sell"
	step
	label "Wildfowl_Egg_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Wildfowl Eggs |confirm |next "Start_Farming_Wildfowl_Egg"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Big Gamy Ribs",{
	meta={goldtype="route",levelreq=10},
	items={{124119,400}},
	maps={"Highmountain"},
	},[[
	step
	label "Start_Farming_Big_Gamy_Ribs"
		kill Sated Hillstrider##98808+
		|tip Other mobs around this area drop Big Gamy Ribs too, but these respawn very quickly.
		|goldcollect 400 Big Gamy Ribs##124119 |n |goto Highmountain/0 41.38,54.03
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Big_Gamy_Ribs_Sell"
	step
	label "Big_Gamy_Ribs_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Big Gamy Ribs |confirm |next "Start_Farming_Big_Gamy_Ribs"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Lean Shank",{
	meta={goldtype="route",levelreq=10},
	items={{124117,200}},
	maps={"Highmountain"},
	},[[
	step
	label "Start_Farming_Lean_Shank"
		kill Pinerock Prowler##94149+
		kill Pinerock Stalker##99481+
		|goldcollect 200 Lean Shank##124117 |n |goto Highmountain/0 42.98,49.26
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Lean_Shank_Sell"
	step
	label "Lean_Shank_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lean Shank |confirm |next "Start_Farming_Lean_Shank"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Fatty Bearsteak",{
	meta={goldtype="route",levelreq=10},
	items={{124118,400}},
	maps={"Stormheim"},
	},[[
	step
	label "Start_Farming_Fatty_Bearsteak"
		Follow the path down |goto Stormheim/0 69.53,52.04 < 20 |only if walking
		Follow the road |goto Stormheim/0 64.40,54.90 < 30 |only if walking
		Follow the path |goto Stormheim/0 68.54,53.59 < 30 |only if walking
		Follow the path down |goto Stormheim/0 69.66,52.98 < 30 |only if walking
		kill Voracious Bear##93095+
		|goldcollect 400 Fatty Bearsteak##124118 |n |goto Stormheim/0 72.49,49.96
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Fatty_Bearsteak_Sell"
	step
	label "Fatty_Bearsteak_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lean Shank |confirm |next "Start_Farming_Fatty_Bearsteak"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Leyblood",{
	meta={goldtype="route",levelreq=10},
	items={{124120,300}},
	maps={"Azsuna"},
	},[[
	step
	label "Start_Farming_Leyblood"
		Enter the cave |goto Azsuna/0 49.35,25.97 < 20 |walk
		kill Flashwyrm##107098+
		|goldcollect 300 Leyblood##124120 |n |goto Azsuna/0 49.72,25.41
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Leyblood_Sell"
	step
	label "Leyblood_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Leyblood |confirm |next "Start_Farming_Leyblood"
]])


-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

--  Legion  --
