local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "BFA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------

--  Kul Tiran/Zandalari  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Deep Sea Satin",{
	meta={goldtype="route",levelreq=35,itemtype="cloth"},
	items={{152577,10}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
		path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
		path	49.21,27.05	49.95,27.53	50.61,28.29
		Kill enemies around this area
		|tip Only humanoid mobs drop cloth.
		|tip These are a rare drop.
		|goldcollect 10 Deep Sea Satin##152577 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Deep Sea Satin |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Gilded Seaweave",{
	meta={goldtype="route",levelreq=50,itemtype="cloth"},
	items={{167738,76}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Gilded_Seaweave"
		Kill Shirakess enemies around this area
		|tip Only humanoid mobs drop cloth.
		|tip These are a rare drop.
		|goldcollect 76 Gilded Seaweave##167738 |goto Nazjatar/0 60.45,58.06 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Items |confirm |next "Farm_Gilded_Seaweave"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tidespray Linen",{
	meta={goldtype="route",levelreq=35,itemtype="cloth"},
	items={{152576,220}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
		path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
		path	49.21,27.05	49.95,27.53	50.61,28.29
		Kill enemies around this area
		|tip Only humanoid mobs drop cloth.
		|goldcollect 220 Tidespray Linen##152576 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Tidespray Linen |confirm |next "Start"
]])


--------------------------
-----    COOKING    ------
--------------------------

--  Kul Tiran/Zandalari  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Aberrant Voidfin",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{174328,156}},
	maps={"Vale of Eternal Blossoms New"},
	},[[
	step
		Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 
	step
	label "Farm_Aberrant_Voidfin"
		cast Fishing##131474
		|goldcollect 156 Aberrant Voidfin##174328 |n |goto 72.64,58.11
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Aberrant_Voidfin"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Briny Flesh",{
	meta={goldtype="route",levelreq=10,itemtype="food"},
	items={{152631,120}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		kill Venomous Coilscale##130232
		|tip If you have the "Skinning" skill, you can gather extra meat.
		|goldcollect 120 Briny Flesh##152631 |n |goto Tiragarde Sound/0 58.39,32.61
		You can find more around [57.18,33.28]
		|goldtracker
		Click here to continue farming |confirm |next "Farming_Path_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Path_Two"
		kill Razorjaw Chomper##123083
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20
		path	55.99,77.68	55.59,76.57	56.96,76.63	57.99,75.50	61.75,71.02
		path	63.96,67.56	65.65,60.20
		|goldcollect 120 Briny Flesh##152631 |n
		|goldtracker
		Click here to continue farming |confirm |next "Start"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Briny Flesh |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Malformed Gnasher",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{174327,174}},
	maps={"Uldum New"},
	},[[
	step
		Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14
	step
	label "Farm_Malformed_Gnasher"
		cast Fishing##131474
		|goldcollect 174 Malformed Gnasher##174327 |n |goto 82.96,58.25
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Malformed_Gnasher"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Meaty Haunch",{
	meta={goldtype="route",levelreq=10,itemtype="food"},
	items={{154898,200}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		Kill enemies around this area
		|tip If you have the "Skinning" skill, you can gather extra meat.
		|goldcollect 200 Meaty Haunch##154898 |n |goto Zuldazar/0 69.82,26.34
		You can find more around [70.34,23.77]
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Meaty Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Moist Fillet",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{168645,264}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Moist_Fillet"
		kill Deeptide Frenzy##144647+
		|tip In the lake and inside the underwater cave.
		|tip Surface for air inside the cave and outside.
		|goldcollect 264 Moist Fillet##168645 |goto Nazjatar/0 46.43,84.11 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Moist_Fillet"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Questionable Meat",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{174353,268}},
	maps={"Vale of Eternal Blossoms New"},
	},[[
	step
		Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 
	step
	label "Farm_Questionable_Meat"
		kill Thundermaw##156778+
		|goldcollect 268 Questionable Meat##174353 |n |goto 25.12,75.08
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Questionable_Meat"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rubbery Flank",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{168303,132}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Rubbery_Flank"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	62.96,50.71	66.11,47.80	69.29,49.53	68.62,52.14	70.82,54.52
		path	72.14,51.63	71.10,48.28	69.29,46.42	66.92,46.06	65.14,44.42
		path	63.47,45.03	62.50,43.95	61.42,44.30	61.26,46.34
		Kill enemies around this area
		|tip Kill Turtles and Snapdragons.
		|goldcollect 132 Rubbery Flank##168303 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Rubbery_Flank"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Thick Paleo Steak",{
	meta={goldtype="route",levelreq=10,itemtype="food"},
	items={{154899,200}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		kill Venomous Diemetradon##123098+
		|tip If you have the "Skinning" skill, you can gather extra meat.
		|goldcollect 200 Thick Paleo Steak##154899 |n |goto Zuldazar/0 68.15,25.53
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Thick Paleo Steak |confirm |next "Start"
]])


-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

--  Kul Tiran/Zandalari  --
