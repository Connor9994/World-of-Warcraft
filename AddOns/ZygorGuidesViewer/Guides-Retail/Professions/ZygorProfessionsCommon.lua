local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer.GuideMenuTier = "CAT"

-------------
-- COOKING --
-------------

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bear Flank",{
	author="support@zygorguides.com",
	description="\nBear Flanks can be gathered from the western end of Western Plaguelands.",
	},[[
	step
		Kill Black Bear enemies around this area
		collect Bear Flank##35562 |n |goto Western Plaguelands/0 35.87,64.80
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bear Meat",{
	author="support@zygorguides.com",
	description="\nBear Meat can be gathered from the Twilight Vale in southern Darkshore.",
	},[[
	step
		talk Zidormi##141489
		Ask her _"Can you show me what Darkshore was like before the battle?"_
		Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
	step
		kill Grizzled Thistle Bear##2165+
		|tip Around this area within the Twilight Vale.
		collect Bear Meat##3173 |n |goto 40.47,78.99
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Meat",{
	author="support@zygorguides.com",
	description="\nCrawler Meat can be gathered from Darkshore.",
	},[[
	step
		talk Zidormi##141489
		Ask her _"Can you show me what Darkshore was like before the battle?"_
		Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
	step
		map Darkshore/0
		path loop off; follow strict; dist 40
		path	36.96,64.39	37.28,67.03	37.91,69.20	36.88,71.44	37.76,73.92
		path	39.04,74.72	38.59,77.78	38.25,80.50	35.95,82.80	36.40,86.66
		kill Encrusted Tide Crawler##2233+
		|tip They are generally in the water.
		collect Crawler Meat##2674 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Tail",{
	author="support@zygorguides.com",
	description="\nCrocolisk Tail can be gathered from the western Tol Barad.",
	},[[
	step
		kill Baradin Crocolisk##47591
		collect Crocolisk Tail##62784 |n |goto Tol Barad/0 39.01,47.63
		You can find more around [53.83,51.04]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Egg",{
	author="support@zygorguides.com",
	description="\nGiant Eggs can be gathered from eastern Swamp of Sorrows.",
	},[[
	step
		kill Swampstrider##45825+
		|tip All over this area.
		collect Giant Egg##12207 |n |goto Swamp of Sorrows/0 79.47,28.25
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Meat",{
	author="support@zygorguides.com",
	description="\nCrawler Meat can be gathered from Darkshore.",
	},[[
	step
		talk Zidormi##141489
		Ask her _"Can you show me what Darkshore was like before the battle?"_
		Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
	step
		map Darkshore/0
		path loop off; follow strict; dist 40
		path	36.96,64.39	37.28,67.03	37.91,69.20	36.88,71.44	37.76,73.92
		path	39.04,74.72	38.59,77.78	38.25,80.50	35.95,82.80	36.40,86.66
		kill Encrusted Tide Crawler##2233+
		|tip They are generally in the water.
		collect Crawler Meat##2674 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Tail",{
	author="support@zygorguides.com",
	description="\nCrocolisk Tail can be gathered from the western Tol Barad.",
	},[[
	step
		kill Baradin Crocolisk##47591
		collect Crocolisk Tail##62784 |n |goto Tol Barad/0 39.01,47.63
		You can find more around [53.83,51.04]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Egg",{
	author="support@zygorguides.com",
	description="\nGiant Eggs can be gathered from eastern Swamp of Sorrows.",
	},[[
	step
		kill Swampstrider##45825+
		|tip All over this area.
		collect Giant Egg##12207 |n |goto Swamp of Sorrows/0 79.47,28.25
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Egg",{
	author="support@zygorguides.com",
	description="\nRaptor Eggs can be gathered from southern Arathi Highlands.",
	},[[
	step
		talk Zidormi##141649
		Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
		Travel to the Past |condition ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
	step
		kill Highland Fleshstalker##2561+
		|tip All over this area.
		collect Raptor Egg##3685 |n |goto 42.69,77.33
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Flesh",{
	author="support@zygorguides.com",
	description="\nRaptor Flesh can be gathered from southern Arathi Highlands.",
	},[[
	step
		talk Zidormi##141649
		Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
		Travel to the Past |condition ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
	step
		kill Highland Fleshstalker##2561+
		|tip All over this area.
		collect Raptor Flesh##12184 |n |goto 42.69,77.33
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Sandworm Meat",{
	author="support@zygorguides.com",
	description="\nSandworm Meat can be gathered from the northern half of Silithus.",
	},[[
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |condition ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		Kill Dredge enemies around this area
		|tip All over the top half of the zone.
		collect Sandworm Meat##20424 |n |goto 42.72,34.13
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Ribs",{
	author="support@zygorguides.com",
	description="\nRaptor Ribs can be gathered from the eastern Blade's Edge Mountains.",
	},[[
	step
		map Blade's Edge Mountains/0
		path loop on; follow strict; dist 40
		path	62.00,55.54	65.96,57.01	66.51,59.83	66.37,63.86	67.39,66.46
		path	67.69,71.59	69.27,71.36	68.95,65.95	68.53,63.09	68.54,60.21
		path	68.26,57.12	67.14,53.92	68.20,49.52
		kill Daggermaw Lashtail##20751+
		collect Raptor Ribs##31670 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Ravager Flesh",{
	author="support@zygorguides.com",
	description="\nRavager Flesh can be gathered from the western Hellfire Peninsula.",
	},[[
	step
		Kill Thornfang enemies around this area
		|tip They spawn on both sides of the road.
		collect Ravager Flesh##27674 |n |goto Hellfire Peninsula/0 10.26,51.72
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Talbuk Venison",{
	author="support@zygorguides.com",
	description="\nTalbuk Venison can be gathered from central Nagrand.",
	},[[
	step
		map Nagrand/0
		path loop on; follow strict; dist 40
		path	53.83,31.31	52.92,29.15	51.38,26.84	48.38,27.04	47.30,30.27
		path	48.26,33.27	49.13,37.97	50.13,39.28	51.37,38.48	50.58,36.74
		path	52.29,33.21
		kill Talbuk Thorngrazer##17131+
		collect Talbuk Venison##27682 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Shoveltusk Flank",{
	author="support@zygorguides.com",
	description="\nShoveltusk Flanks can be gathered from Howling Fjord.",
	},[[
	step
		map Howling Fjord/0
		path loop on; follow strict; dist 40
		path	76.46,63.42	75.33,60.39	74.58,56.11	74.85,52.58	75.59,50.19
		path	75.46,46.56	74.30,44.99	73.01,47.07	73.61,48.52	72.89,52.59
		path	72.70,56.77	73.53,58.71	73.21,60.59	72.12,63.28
		Kill Shoveltusk enemies around this area
		collect Shoveltusk Flank##43009 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Turtle Tongue",{
	author="support@zygorguides.com",
	description="\nGiant Turtle Tongue can be gathered from the northeastern Vashj'ir.",
	},[[
	step
		kill Speckled Sea Turtle##40223
		collect Giant Turtle Tongue##62781 |n |goto Kelp'thar Forest/0 49.63,40.81
		You can find more around [53.83,51.04]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Snake Eye",{
	author="support@zygorguides.com",
	description="\nSnake Eyes can be gathered from northeastern Vashj'ir.",
	},[[
	step
		kill Brinescale Serpent##39948
		|tip They swim around the sunken boat here.
		collect Snake Eye##62780 |goto Kelp'thar Forest/0 57.85,37.51 |n
		'|confirm
]])

---------------
-- HERBALISM --
---------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Black Lotus",{
	author="support@zygorguides.com",
	description="\nBlack Lotus can be gathered from Eastern Plaguelands in Eastern Kingdoms.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		click Black Lotus##176589+
		|tip There is a long respawn timer on this.
		collect Black Lotus##13468 |n |goto Eastern Plaguelands/0 74.80,54.50
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Blindweed",{
	author="support@zygorguides.com",
	description="\nBlindweed can be gathered from Western Plaguelands.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Western Plaguelands/0
		path follow smart; loop on; ants curved; dist 60
		path	32.29,67.51	34.15,69.05	37.72,68.67	39.01,73.99	43.24,75.29
		path	47.27,73.61	50.96,70.89	56.20,69.13	62.13,63.79	67.86,62.48
		path	62.26,82.75	57.56,80.20	54.19,74.69	50.00,72.33	46.39,78.06
		path	40.17,77.54	35.38,73.50	30.74,70.77
		click Blindweed##142143+
		|tip Gather Blindweed along the path.
		collect Blindweed##8839 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bloodthistle",{
	author="support@zygorguides.com",
	description="\nBloodthistle can be gathered from Eversong Woods.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Eversong Woods/0
		path follow smart; loop on; ants curved
		path	35.82,58.11	38.13,56.82	40.28,56.40	42.00,55.28	44.99,53.34
		path	45.76,54.00	46.15,54.84	47.67,54.84	48.69,55.93	49.48,56.10
		path	50.88,60.38	51.19,63.14	51.23,65.05	52.44,70.49	51.93,74.48
		path	51.67,77.88	53.70,80.62	54.55,83.45	53.45,84.13	51.74,83.83
		path	49.44,84.47	47.07,85.06	44.75,85.99	42.08,86.19	39.91,85.83
		path	38.70,86.10	37.13,87.10	35.25,84.75	33.48,81.50	33.25,78.37
		path	32.97,74.34	33.07,71.73	34.35,69.25	34.89,66.70	35.44,64.23
		path	35.71,61.90
		click Bloodthistle##181166+
		|tip Gather Bloodthistle along the path.
		|tip These will spawn around buildings for the most part.
		|tip Nodes will generally take 10 minutes to respawn.
		collect Bloodthistle##22710 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Briarthorn",{
	author="support@zygorguides.com",
	description="\nBriarthorn can be gathered from Hillsbrad Foothills.",
	condition_end=function() return skill('Herbalism') >= 170 end,
	},[[
	step
		map Hillsbrad Foothills/0
		path follow smart; loop on; ants curved
		path	31.69,62.24	33.37,57.76	34.27,53.79	34.34,51.65	31.65,51.86
		path	30.24,48.21	29.26,45.47	29.98,42.38	32.67,41.73	34.32,39.01
		path	34.99,35.75	35.31,33.60	34.71,30.28	36.11,26.94	39.10,21.95
		path	40.47,17.56	42.60,14.34	44.15,10.81	45.54,8.94	48.54,10.15
		path	51.21,14.22	53.90,18.16	55.87,20.51	55.81,22.57	57.71,24.06
		path	57.70,25.65	57.18,26.62	54.08,27.46	53.42,29.67	55.25,33.22
		path	54.56,36.39	53.66,37.25	52.31,37.29	50.38,39.50	49.98,44.36
		path	50.12,49.29	48.86,48.20	47.16,44.25	46.00,46.29	45.25,48.23
		path	44.84,52.73	44.08,52.90	42.77,49.08	41.57,47.91	39.39,49.94
		path	38.74,48.11	39.60,45.53	38.61,45.01	36.65,47.78	36.94,51.62
		path	38.86,54.91	41.24,57.38	41.31,63.96	39.56,66.59	37.42,66.83
		path	35.28,66.60	33.61,64.34
		click Briarthorn##1621+
		|tip Gather Briarthorn along the path.
		collect Briarthorn##2450 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bruiseweed",{
	author="support@zygorguides.com",
	description="\nBruiseweed can be gathered from Hillsbrad Foothills.",
	condition_end=function() return skill('Herbalism') >= 200 end,
	},[[
	step
		map Hillsbrad Foothills/0
		path follow smart; loop on; ants curved
		path	31.69,62.24	33.37,57.76	34.27,53.79	34.34,51.65	31.65,51.86
		path	30.24,48.21	29.26,45.47	29.98,42.38	32.67,41.73	34.32,39.01
		path	34.99,35.75	35.31,33.60	34.71,30.28	36.11,26.94	39.10,21.95
		path	40.47,17.56	42.60,14.34	44.15,10.81	45.54,8.94	48.54,10.15
		path	51.21,14.22	53.90,18.16	55.87,20.51	55.81,22.57	57.71,24.06
		path	57.70,25.65	57.18,26.62	54.08,27.46	53.42,29.67	55.25,33.22
		path	54.56,36.39	53.66,37.25	52.31,37.29	50.38,39.50	49.98,44.36
		path	50.12,49.29	48.86,48.20	47.16,44.25	46.00,46.29	45.25,48.23
		path	44.84,52.73	44.08,52.90	42.77,49.08	41.57,47.91	39.39,49.94
		path	38.74,48.11	39.60,45.53	38.61,45.01	36.65,47.78	36.94,51.62
		path	38.86,54.91	41.24,57.38	41.31,63.96	39.56,66.59	37.42,66.83
		path	35.28,66.60	33.61,64.34
		click Bruiseweed##1622+
		|tip Gather Bruiseweed along the path.
		collect Bruiseweed##2453 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dragon's Teeth",{
	author="support@zygorguides.com",
	description="\nDragon's Teeth can be gathered from Badlands.",
	condition_end=function() return skill('Herbalism') >= 295 end,
	},[[
	step
		map Badlands/0
		path follow smart; loop on; ants curved
		path	31.99,49.86	34.90,49.42	37.89,46.80	39.65,44.41	41.92,42.52
		path	42.38,44.87	39.69,47.62	36.79,50.87	34.53,53.99	31.67,57.50
		path	29.26,60.83	26.58,60.70	28.53,57.01	30.45,53.88
		click Dragon's Teeth##10249+
		|tip Gather Dragon's Teeth along the path.
		collect Dragon's Teeth##3819 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreamfoil",{
	author="support@zygorguides.com",
	description="\nDreamfoil can be gathered from Felwood.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Felwood/0
		path follow smart; loop on; ants curved
		path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
		path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
		path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
		path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
		path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
		path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
		path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
		path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
		path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
		path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
		path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
		path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
		path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
		path	45.84,83.32	47.74,82.92	49.87,80.73
		click Dreamfoil##176584+
		|tip Gather Dreamfoil along the path.
		collect Dreamfoil##13463 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fadeleaf",{
	author="support@zygorguides.com",
	description="\nFadeleaf can be gathered from Western Plaguelands.",
	condition_end=function() return skill('Herbalism') >= 250 end,
	},[[
	step
	label "Start_Path"
		click Fadeleaf##2042+
		|tip They spawn all around the plants in the area.
		collect Fadeleaf##3818 |n
		Check the Felstone Field for Fadeleaf |goto Western Plaguelands/0 37.17,56.88 < 20 |c
	step
		click Fadeleaf##2042+
		|tip They spawn all around the plants in the area.
		collect Fadeleaf##3818 |n
		Check Dalson's Farm for Fadeleaf |goto 46.28,53.19 < 20 |c
	step
		click Fadeleaf##2042+
		|tip They spawn all around the plants in the area.
		collect Fadeleaf##3818 |n
		Search The Writhing Haunt for Fadeleaf |goto 52.83,66.41 < 20 |c
	step
		click Fadeleaf##2042+
		|tip They spawn all around the plants in the area.
		collect Fadeleaf##3818 |n
		Search Gahrron's Withering for Fadeleaf |goto 62.97,57.82 < 20 |c |next "Start_Path"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Firebloom",{
	author="support@zygorguides.com",
	description="\nFirebloom can be gathered from Searing Gorge.",
	condition_end=function() return skill('Herbalism') >= 305 end,
	},[[
	step
		map Searing Gorge/0
		path follow smart; loop on; ants curved
		path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
		path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
		path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
		path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
		path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
		path	68.22,35.32
		click Firebloom##2866+
		|tip Gather Firebloom along the path.
		collect Firebloom##4625 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ghost Mushroom",{
	author="support@zygorguides.com",
	description="\nGhost Mushroom can be gathered from Un'Goro Crater.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		Enter the cave |goto Un'Goro Crater/0 63.98,16.43 < 15 |c
	step
		map Un'Goro Crater/0
		path follow smart; loop on; ants curved
		path	65.63,16.38	66.45,17.56	67.30,17.33	67.68,16.59	68.36,16.58
		path	69.09,17.67	69.56,17.07	69.21,15.99	68.56,14.63	68.65,13.56
		path	68.40,13.00	67.66,13.96	67.33,14.46	66.46,14.38	65.66,14.92
		click Ghost Mushroom##142144+
		|tip Gather Ghost Mushrooms along the path.
		|tip They are found inside the cave.
		collect Ghost Mushroom##8845 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Golden Sansam",{
	author="support@zygorguides.com",
	description="\nGolden Sansam can be gathered from Swamp of Sorrows.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Swamp of Sorrows/0
		path follow smart; loop on; ants curved; dist 60
		path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
		path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
		path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
		path	36.11,39.86	26.93,42.92
		click Golden Sansam##176583+
		|tip Gather Golden Sansam along the path.
		collect Golden Sansam##13464 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Goldthorn",{
	author="support@zygorguides.com",
	description="\nGoldthorn can be gathered from The Hinterlands.",
	condition_end=function() return skill('Herbalism') >= 270 end,
	},[[
	step
		map The Hinterlands/0
		path follow smart; loop on; ants curved
		path	34.86,57.40	34.23,61.13	33.31,63.69	30.92,62.97	29.82,62.93
		path	28.56,63.50	28.03,62.01	27.58,59.21	27.97,56.25	28.73,54.66
		path	30.54,53.52	31.81,50.94	33.62,49.95	35.10,48.32	35.21,45.93
		path	35.98,43.68	37.97,44.51	39.95,44.83	42.43,44.27	44.57,44.47
		path	46.45,44.67	47.90,45.26	49.82,44.32	51.68,44.00	53.38,41.01
		path	55.40,39.56	56.52,37.96	58.78,37.73	59.24,40.48	59.83,43.19
		path	61.29,44.32	62.86,43.52	64.18,45.29	65.78,47.29	67.71,48.24
		path	68.98,50.70	71.26,52.21	73.53,50.86	74.58,52.72	74.87,55.22
		path	72.65,56.67	72.54,59.74	70.61,61.24	68.68,59.88	66.96,58.02
		path	64.39,55.57	62.74,55.52	60.53,52.53	58.15,53.43	56.39,52.55
		path	54.48,50.40	51.95,52.82	50.84,57.15	50.44,60.10	48.75,62.22
		path	45.66,64.07	46.78,66.38	44.90,68.22	43.37,66.13	41.98,65.96
		path	39.84,63.04	38.01,62.14	36.90,60.27
		click Goldthorn##2046+
		|tip Gather Goldthorn along the path.
		collect Goldthorn##3821 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Grave Moss",{
	author="support@zygorguides.com",
	description="\nGrave Moss can be gathered from Duskwood.",
	condition_end=function() return skill('Herbalism') >= 220 end,
	},[[
	step
		map Duskwood/0
		path follow smart; loop on; ants curved
		path	16.35,38.41	20.18,37.83	24.80,35.68	23.76,42.48	21.70,47.50
		path	18.21,48.07	15.90,46.14	15.43,42.99	16.70,40.59
		click Grave Moss##1628+
		|tip Gather Grave Moss along the path.
		|tip This herb has a low spawn rate, so be sure to pick other herbs nearby to try and force it to spawn.
		collect Grave Moss##3369 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Gromsblood",{
	author="support@zygorguides.com",
	description="\nGromsblood can be gathered from Felwood.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Felwood/0
		path follow smart; loop on; ants curved
		path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
		path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
		path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
		path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
		path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
		path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
		path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
		path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
		path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
		path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
		path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
		path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
		path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
		path	45.84,83.32	47.74,82.92	49.87,80.73
		click Gromsblood##142145+
		|tip Gather Gromsblood along the path.
		collect Gromsblood##8846 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Icecap",{
	author="support@zygorguides.com",
	description="\nIcecap can be gathered from Winterspring.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Winterspring/0
		path follow smart; loop on; ants curved
		path	56.35,55.06	57.60,58.86	58.02,60.41	57.77,62.11	56.00,63.57
		path	55.98,66.35	55.79,68.11	58.18,69.79	58.79,72.42	57.74,75.98
		path	58.97,77.62	61.21,78.39	61.36,76.48	61.21,74.56	62.47,71.90
		path	63.95,69.12	65.06,67.47	66.09,64.28	66.01,60.13	65.33,56.99
		path	63.61,53.46	62.02,49.72	61.23,47.04	62.86,45.50	64.53,45.70
		path	65.69,47.27	67.27,45.09	67.46,42.88	66.52,41.71	66.20,39.94
		path	65.19,37.91	64.37,35.79	64.76,32.74	64.16,30.86	60.88,31.69
		path	59.30,30.41	57.89,28.17	57.94,25.51	58.68,22.86	58.28,20.45
		path	57.02,21.02	55.83,20.67	54.34,21.94	52.62,20.62	49.85,18.75
		path	48.63,16.84	47.21,15.71	46.41,17.62	46.08,19.39	45.96,22.52
		path	46.48,25.36	46.47,27.97	46.82,29.94	48.60,29.11	49.07,29.94
		path	49.63,32.25	49.80,35.19	50.03,37.61	49.93,39.72	49.95,42.94
		path	49.02,44.94	48.03,46.42	46.66,47.98	46.27,49.61	44.51,50.72
		path	43.42,51.53	40.65,50.03	39.00,49.64	37.06,48.19	35.67,47.48
		path	33.35,48.15	30.74,48.46	29.10,47.00	27.88,47.75	26.88,48.91
		path	25.08,49.44	23.91,51.20	24.30,53.59	24.47,55.37	26.69,56.71
		path	28.35,57.10	29.32,55.75	30.16,55.95	31.25,57.31	33.18,57.43
		path	35.49,56.33	36.92,55.72	39.00,55.48	40.84,56.53	42.18,57.49
		path	44.15,57.67	45.56,57.37	47.78,57.04	50.60,56.28	54.59,54.72
		click Icecap##176588+
		|tip Gather Icecap along the path.
		collect Icecap##13467 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Khadgar's Whisker",{
	author="support@zygorguides.com",
	description="\nKhadgar's Whisker can be gathered from Western Plaguelands.",
	condition_end=function() return skill('Herbalism') >= 260 end,
	},[[
	step
		map Western Plaguelands/0
		path follow smart; loop on; ants curved; dist 60
		path	31.82,59.35	36.90,57.13	43.51,53.28	45.93,44.70	45.23,35.21
		path	49.53,35.12	51.01,47.42	55.22,51.32	61.84,52.02	67.22,44.52
		path	63.61,56.03	56.63,60.16	52.63,67.51	46.41,59.21	37.91,62.23
		path	33.73,62.71
		click Khadgar's Whisker##2043+
		|tip Gather Khadgar's Whisker along the path.
		collect Khadgar's Whisker##3358 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Kingsblood",{
	author="support@zygorguides.com",
	description="\nKingsblood can be gathered from Western Plaguelands.",
	condition_end=function() return skill('Herbalism') >= 225 end,
	},[[
	step
		map Western Plaguelands/0
		path follow smart; loop on; ants curved; dist 60
		path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
		path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
		path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
		path	33.73,62.71
		click Kingsblood##1624+
		|tip Gather Kingsblood along the path.
		collect Kingsblood##3356 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Liferoot",{
	author="support@zygorguides.com",
	description="\nLiferoot can be gathered from Western Plaguelands.",
	condition_end=function() return skill('Herbalism') >= 250 end,
	},[[
	step
		map Western Plaguelands/0
		path follow smart; loop on; ants curved; dist 60
		path	32.29,67.51	34.15,69.05	37.72,68.67	39.01,73.99	43.24,75.29
		path	47.27,73.61	50.96,70.89	56.20,69.13	62.13,63.79	67.86,62.48
		path	62.26,82.75	57.56,80.20	54.19,74.69	50.00,72.33	46.39,78.06
		path	40.17,77.54	35.38,73.50	30.74,70.77
		click Liferoot##2041+
		|tip Gather Liferoot along the path.
		collect Liferoot##3357 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mageroyal",{
	author="support@zygorguides.com",
	description="\nMageroyal can be gathered from Hillsbrad Foothills.",
	condition_end=function() return skill('Herbalism') >= 150 end,
	},[[
	step
		map Hillsbrad Foothills/0
		path follow smart; loop on; ants curved
		path	31.69,62.24	33.37,57.76	34.27,53.79	34.34,51.65	31.65,51.86
		path	30.24,48.21	29.26,45.47	29.98,42.38	32.67,41.73	34.32,39.01
		path	34.99,35.75	35.31,33.60	34.71,30.28	36.11,26.94	39.10,21.95
		path	40.47,17.56	42.60,14.34	44.15,10.81	45.54,8.94	48.54,10.15
		path	51.21,14.22	53.90,18.16	55.87,20.51	55.81,22.57	57.71,24.06
		path	57.70,25.65	57.18,26.62	54.08,27.46	53.42,29.67	55.25,33.22
		path	54.56,36.39	53.66,37.25	52.31,37.29	50.38,39.50	49.98,44.36
		path	50.12,49.29	48.86,48.20	47.16,44.25	46.00,46.29	45.25,48.23
		path	44.84,52.73	44.08,52.90	42.77,49.08	41.57,47.91	39.39,49.94
		path	38.74,48.11	39.60,45.53	38.61,45.01	36.65,47.78	36.94,51.62
		path	38.86,54.91	41.24,57.38	41.31,63.96	39.56,66.59	37.42,66.83
		path	35.28,66.60	33.61,64.34
		click Mageroyal##1620+
		|tip Gather Mageroyal along the path.
		collect Mageroyal##785 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mountain Silversage",{
	author="support@zygorguides.com",
	description="\nMountain Silversage can be gathered from Winterspring.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Winterspring/0
		path follow smart; loop on; ants curved
		path	58.90,45.52	61.21,40.60	68.23,41.22	66.72,30.12	60.91,28.05
		path	59.72,21.13	57.62,17.82	50.42,18.30	46.41,13.00	45.91,25.72
		path	47.61,34.91	48.73,42.71	43.81,47.11	38.42,46.91	31.23,47.20
		path	25.33,46.76	22.34,57.83	22.74,62.33	25.63,61.93	31.02,59.52
		path	37.02,58.92	42.92,56.80	48.32,61.20	53.41,66.40	56.02,76.91
		path	63.91,83.11	66.91,82.81	66.01,73.12	68.30,64.72	67.50,57.23
		path	67.23,51.90	63.23,48.82
		click Mountain Silversage##176586+
		|tip Gather Mountain Silversage along the path.
		collect Mountain Silversage##13465 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Purple Lotus",{
	author="support@zygorguides.com",
	description="\nPurple Lotus can be gathered from Felwood.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
	label "Start_Path"
		Search the area |goto Felwood/0 57.68,85.44 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 56.28,84.52 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 39.19,69.90 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 37.46,68.04 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 37.51,65.66 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 39.7,45.1 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 42.6,36.2 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 49.60,31.52 < 20 |c
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
	step
		Search the area |goto 49.08,30.02 < 20 |c |next "Start_Path"
		click Purple Lotus##142140+
		|tip They spawn near the pillars in this area.
		|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
		collect Purple Lotus##8831 |n
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sorrowmoss",{
	author="support@zygorguides.com",
	description="\nSorrowmoss can be gathered from Swamp of Sorrows.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Swamp of Sorrows/0
		path follow smart; loop on; ants curved
		path	79.43,23.24	80.24,29.00	82.21,34.79	82.97,38.90	78.73,41.57
		path	73.59,37.34	72.42,28.75	70.52,27.66	68.03,29.89	64.63,31.51
		path	60.85,35.55	62.39,40.76	61.54,47.25	60.82,53.13	61.60,58.25
		path	64.65,62.71	68.42,64.96	70.44,64.80	74.33,64.93	77.84,60.88
		path	81.94,61.08	86.01,64.26	84.08,70.58	81.74,75.79	78.79,76.80
		path	75.71,77.78	72.47,78.28	69.87,74.91	67.39,73.78	64.65,67.59
		path	62.31,64.70	57.94,61.25	53.18,57.17	52.23,52.27	51.62,48.12
		path	47.97,46.03	44.54,47.68	42.03,51.93	39.10,57.14	36.33,58.75
		path	32.35,58.59	27.32,55.05	24.51,50.78	23.21,46.57	26.76,41.34
		path	30.64,39.58	33.75,38.86	37.68,40.21	41.52,38.80	45.01,37.32
		path	49.19,35.80	54.20,35.02	56.53,34.96	60.47,27.47	62.18,25.26
		path	65.76,20.96	68.69,20.85
		click Sorrowmoss##176587+
		|tip Gather Sorrowmoss along the path.
		collect Sorrowmoss##13466 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Stranglekelp",{
	author="support@zygorguides.com",
	description="\nStranglekelp can be gathered from Thousand Needles.",
	condition_end=function() return skill('Herbalism') >= 185 end,
	},[[
	step
		map Thousand Needles/0
		path follow smart; loop on; ants curved
		path	13.24,13.64	11.51,16.20	9.33,20.34	11.31,24.27	15.04,26.01
		path	16.87,27.07	18.45,32.60	21.17,34.41	21.82,39.35	23.31,42.81
		path	26.32,45.81	30.98,48.02	34.03,51.71	37.96,50.99	40.64,52.79
		path	41.79,57.88	44.96,58.56	48.09,58.76	49.38,53.56	52.80,53.82
		path	55.94,54.78	59.38,56.71	62.87,60.20	66.41,62.43	67.94,57.75
		path	67.20,52.27	64.51,47.93	61.84,46.57	58.71,46.48	55.19,45.59
		path	51.24,43.54	48.79,42.02	44.99,39.45	40.75,37.65	39.11,33.61
		path	36.53,34.08	33.60,31.40	31.05,28.54	30.86,23.54	28.43,22.65
		path	25.02,23.71	22.16,22.72	18.82,21.47	16.55,18.12
		click Stranglekelp##2045+
		|tip Gather Stranglekelp along the path.
		|tip They are found underwater along the path.
		collect Stranglekelp##3820 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sungrass",{
	author="support@zygorguides.com",
	description="\nSungrass can be gathered from Searing Gorge.",
	condition_end=function() return skill('Herbalism') >= 50 end,
	},[[
	step
		map Searing Gorge/0
		path follow smart; loop on; ants curved
		path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
		path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
		path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
		path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
		path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
		path	68.22,35.32
		click Sungrass##142142+
		|tip Gather Sungrass along the path.
		collect Sungrass##8838 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Wild Steelbloom",{
	author="support@zygorguides.com",
	description="\nWild Steelbloom can be gathered from Northern Stranglethorn.",
	condition_end=function() return skill('Herbalism') >= 215 end,
	},[[
	step
		map Northern Stranglethorn/0
		path follow smart; loop on; ants curved
		path	43.45,44.70	45.94,43.37	49.68,42.50	52.17,41.77	54.43,41.60
		path	55.49,42.21	56.83,43.23	58.27,43.99	60.42,42.16	61.62,40.66
		path	62.01,38.58	62.73,36.69	61.71,34.54	60.46,32.12	58.97,30.67
		path	57.38,28.52	56.36,26.83	56.40,25.48	58.02,25.66	59.55,26.23
		path	61.52,27.35	63.95,29.18	64.70,27.57	64.41,24.61	63.53,21.92
		path	63.28,19.31	61.24,17.52	58.48,16.04	56.49,16.60	55.64,17.82
		path	54.52,20.15	53.07,19.45	52.06,19.83	50.88,20.99	50.16,22.41
		path	48.86,24.30	48.73,25.89	48.23,26.81	46.99,27.29	45.68,28.66
		path	44.95,31.10	43.44,31.85	41.56,31.75	41.53,33.49	41.96,35.89
		path	42.56,39.12
		click Wild Steelbloom##1623+
		|tip Gather Wild Steelbloom along the path.
		collect Wild Steelbloom##3355 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ancient Lichen",{
	author="support@zygorguides.com",
	description="\nAncient Lichen can be gathered from the Mana-Tombs.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Mana-Tombs/1
		path	follow smart; loop off; ants curved; dist 20
		path	41.10,34.80	46.60,33.41	61.00,18.81
		path	57.60,36.61	63.50,35.50	60.60,57.50
		path	52.50,63.60	58.50,69.71	62.60,85.11
		path	55.50,81.61	54.70,89.70	50.10,83.70
		path	39.00,85.10	30.50,56.91
		click Ancient Lichen##181278+
		|tip Gather Ancient Lichen along the path on your dungeon map.
		|tip Exit the dungeon and reset the instance once you reach the end.
		|tip To do this, right-click your character portrait and choose "Reset all instances."
		collect Ancient Lichen##22790 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreaming Glory",{
	author="support@zygorguides.com",
	description="\nDreaming Glory can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
		path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
		path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
		path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
		path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
		path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
		path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
		path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
		path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
		path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
		path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
		path	35.72,43.53	33.66,44.98
		click Dreaming Glory##181271+
		|tip Gather Dreaming Glory along the path.
		collect Dreaming Glory##22786 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fel Lotus",{
	author="support@zygorguides.com",
	description="\nFel Lotus can be gathered from Shadowmoon Valley.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Shadowmoon Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	42.51,59.05	43.42,65.13	43.35,72.41	47.71,69.62	47.32,51.73
		path	51.52,59.03	51.41,66.46	56.94,73.92	61.24,68.15	57.83,57.26
		path	62.03,56.22	65.24,61.52	70.61,60.71	68.51,58.02	67.94,47.22
		path	72.11,47.51	71.52,40.81	66.32,39.32	58.53,45.31	49.95,33.91
		path	53.12,33.55	59.63,37.35	67.13,28.91	66.02,21.82	58.01,23.62
		path	55.63,16.84	52.52,15.62	52.51,21.61	45.53,15.13	42.32,38.24
		path	38.31,32.18	31.21,34.61	24.92,29.64	22.04,34.71	22.04,40.81
		path	29.72,47.82	27.23,52.63	31.63,53.82
		click Nightmare Vine##181280+
		|tip Gather Nightmare Vine along the path.
		|tip Fel Lotus is gathered from any herb farmed in the Outland.
		collect Fel Lotus##22794 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Felweed",{
	author="support@zygorguides.com",
	description="\nFelweed can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
		path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
		path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
		path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
		path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
		path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
		path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
		path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
		path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
		path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
		path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
		path	35.72,43.53	33.66,44.98
		click Felweed##181270+
		|tip Gather Felweed along the path.
		collect Felweed##22785 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Thistle",{
	author="support@zygorguides.com",
	description="\nMana Thistle can be gathered from Terokkar Forest and Shadowmoon Valley.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
	label "Start_Path"
		map Terokkar Forest/0
		path	follow smart; loop on; ants curved; dist 20
		path	27.11,10.51	22.10,6.50	20.21,14.21	23.90,10.50
		click Mana Thistle##181281+
		|tip Gather Mana Thistle along the path.
		|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
		collect Mana Thistle##22793 |n
		Farm Along the Path |goto 23.90,10.50 < 30 |noway |c
	step
		map Terokkar Forest/0
		path	follow smart; loop on; ants curved; dist 20
		path	62.42,73.60	65.70,79.21	68.72,85.72	72.21,88.52	74.91,87.50
		path	72.31,82.01	69.31,74.60	62.41,73.60
		click Mana Thistle##181281+
		|tip Gather Mana Thistle along the path.
		|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
		collect Mana Thistle##22793 |n
		Farm Along the Path |goto 62.41,73.60 < 30 |noway |c
	step
		map Shadowmoon Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	65.81,80.63	70.21,79.12	74.31,80.80	79.20,87.53	77.51,88.40
		path	74.32,88.92	71.12,88.31	68.33,87.51	70.21,83.92	72.02,85.91
		path	74.60,86.41
		click Mana Thistle##181281+
		|tip Gather Mana Thistle along the path.
		|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
		collect Mana Thistle##22793 |n
		Farm Along the Path |goto 74.60,86.41 < 30 |noway |c |next "Start_Path"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Netherbloom",{
	author="support@zygorguides.com",
	description="\nNetherbloom can be gathered from Netherstorm.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Netherstorm/0
		path follow smart; loop on; ants curved
		path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
		path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
		path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
		path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
		path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
		path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
		path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
		path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
		path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
		path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
		path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
		path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
		path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
		path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
		path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
		path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
		path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
		path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
		path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
		path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
		path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
		path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
		path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
		path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
		path	45.54,79.03	43.73,76.27
		click Netherbloom##181279+
		|tip Gather Netherbloom along the path.
		collect Netherbloom##22791 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Nightmare Vine",{
	author="support@zygorguides.com",
	description="\nNightmare Vine can be gathered from Shadowmoon Valley.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Shadowmoon Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	42.51,59.05	43.42,65.13	43.35,72.41	47.71,69.62	47.32,51.73
		path	51.52,59.03	51.41,66.46	56.94,73.92	61.24,68.15	57.83,57.26
		path	62.03,56.22	65.24,61.52	70.61,60.71	68.51,58.02	67.94,47.22
		path	72.11,47.51	71.52,40.81	66.32,39.32	58.53,45.31	49.95,33.91
		path	53.12,33.55	59.63,37.35	67.13,28.91	66.02,21.82	58.01,23.62
		path	55.63,16.84	52.52,15.62	52.51,21.61	45.53,15.13	42.32,38.24
		path	38.31,32.18	31.21,34.61	24.92,29.64	22.04,34.71	22.04,40.81
		path	29.72,47.82	27.23,52.63	31.63,53.82
		click Nightmare Vine##181280+
		|tip Gather Nightmare Vine along the path.
		collect Nightmare Vine##22792 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ragveil",{
	author="support@zygorguides.com",
	description="\nRagveil can be gathered from Zangarmarsh.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Zangarmarsh/0
		path follow smart; loop on; ants curved
		path	83.47,41.87	84.20,37.59	81.81,33.16	77.86,33.21	75.68,34.01
		path	73.86,38.51	70.74,40.47	68.52,41.50	65.65,39.18	62.93,38.46
		path	60.95,37.98	58.10,35.36	55.37,35.42	53.23,34.98	50.96,33.65
		path	48.21,33.08	44.78,31.79	42.54,31.68	40.63,33.89	38.56,33.56
		path	36.66,32.68	34.77,29.60	33.26,26.30	29.50,24.65	26.55,23.37
		path	24.63,23.97	21.65,27.24	18.44,29.85	17.29,33.67	17.04,36.75
		path	14.23,41.57	16.46,46.13	17.31,50.06	16.84,53.47	17.92,56.63
		path	15.63,58.80	12.99,59.63	13.11,63.17	16.33,63.54	19.08,61.78
		path	22.78,58.64	25.41,57.72	27.03,57.93	28.53,61.81	30.87,61.91
		path	33.55,65.37	35.31,64.62	38.20,64.75	41.54,64.06	42.44,62.80
		path	45.31,63.25	47.33,62.29	49.64,63.31	52.00,66.07	53.50,67.63
		path	55.24,67.25	57.43,68.85	59.99,68.42	62.10,69.89	64.46,71.61
		path	66.43,73.47	66.45,77.16	67.51,80.44	68.34,84.46	71.72,85.54
		path	73.36,85.21	76.07,84.45	78.24,85.58	80.78,86.39	82.03,87.58
		path	85.17,86.99	86.08,83.78	84.64,81.04	82.88,78.84	82.18,76.32
		path	82.33,72.85	80.95,70.67	78.39,67.26	77.98,62.18	78.15,60.45
		path	78.17,59.21	78.92,56.99	81.39,54.58	82.91,52.12	82.36,49.38
		path	82.90,46.26
		click Ragveil##181275+
		|tip Gather Ragveil along the path.
		collect Ragveil##22787 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Terocone",{
	author="support@zygorguides.com",
	description="\nTerocone can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Outland Herbalism') >= 50 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
		path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
		path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
		path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
		path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
		path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
		path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
		path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
		path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
		path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
		path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
		path	35.72,43.53	33.66,44.98
		click Terocone##181277+
		|tip Gather Terocone along the path.
		collect Terocone##22789 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Adder's Tongue",{
	author="support@zygorguides.com",
	description="\nAdder's Tongue can be gathered from Sholazar Basin.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map Sholazar Basin/0
		path follow smart; loop on; ants curved; dist 60
		path	32.00,58.22	36.10,65.36	43.91,57.73	44.53,63.92	39.51,66.33
		path	40.41,71.73	32.81,82.39	36.12,84.42	42.61,76.01	46.82,62.52
		path	51.02,62.01	60.03,73.95	55.73,85.95	66.42,82.35	69.33,65.86
		path	55.23,57.16	48.92,55.02	55.41,48.12	58.11,38.32	34.81,31.41
		path	30.11,43.45	32.11,48.51	26.62,55.41	23.70,60.31
		click Adder's Tongue##191019+
		|tip Gather Adder's Tongue along the path.
		collect Adder's Tongue Stem##108353 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Deadnettle",{
	author="support@zygorguides.com",
	description="\nDeadnettle can be gathered from Zul'Drak.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map Zul'Drak/0
		path follow smart; loop on; ants curved
		path	22.09,78.77	25.02,75.77	26.61,74.51	27.79,77.38	28.26,80.67
		path	29.88,81.46	31.91,85.69	34.60,88.01	38.40,88.00	38.95,82.55
		path	38.13,79.03	38.15,76.23	38.09,73.57	35.66,69.02	33.88,66.82
		path	31.76,70.48	28.09,68.80	28.03,65.24	30.72,63.31	34.31,62.03
		path	36.26,61.30	36.97,62.37	38.83,67.08	42.03,71.78	44.95,74.61
		path	44.69,79.35	45.41,82.25	48.61,83.52	51.56,82.99	55.04,82.64
		path	58.46,82.66	61.07,81.96	63.59,79.19	63.39,77.17	62.44,75.36
		path	59.55,75.13	57.56,74.73	56.89,71.40	55.05,70.00	53.84,67.77
		path	52.92,64.89	50.79,63.03	47.76,63.47	45.58,64.45	42.97,63.91
		path	43.01,59.38	42.24,54.24	44.08,51.31	45.66,48.62	44.92,44.91
		path	43.78,42.08	40.83,42.28	37.99,41.92	34.94,40.78	32.39,40.02
		path	31.90,42.24	29.93,44.12	29.26,48.15	30.03,50.98	30.93,52.78
		path	31.89,54.80	31.46,56.62	29.51,57.49	27.52,55.35	25.94,52.49
		path	24.49,50.44	22.87,49.41	21.62,51.38	21.86,54.89	21.82,56.76
		path	20.73,57.98	21.38,60.17	20.63,62.78	20.22,65.31	21.22,69.61
		path	22.01,73.54
		click Talandra's Rose##190170+
		|tip Deadnettle can be gathered from Talandra's Rose, Tiger Lily, and Goldclover.
		|tip You can use those guides to collect them as well.
		collect Deadnettle##37921 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fire Leaf",{
	author="support@zygorguides.com",
	description="\nFire Leaf can be gathered from Borean Tundra.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map Borean Tundra/0
		path follow smart; loop on; ants curved
		path	59.50,41.92	62.13,40.66	65.61,36.72	68.73,38.43	72.31,41.22
		path	75.01,39.93	71.82,34.22	72.12,29.61	71.22,22.52	68.32,23.75
		path	66.22,19.01	67.31,15.45	64.83,15.95	60.83,14.05	58.24,15.81
		path	59.21,20.35	62.53,26.81	58.71,28.64	60.32,30.81	58.52,39.02
		click Firethorn##191303+
		|tip Gather Firethorn along the path.
		collect Fire Leaf##39970 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Frost Lotus",{
	author="support@zygorguides.com",
	description="\nFrost Lotus can be gathered from The Storm Peaks.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map The Storm Peaks/0
		path follow smart; loop on; ants curved
		path	37.15,73.48	36.64,69.08	35.71,66.70	34.66,66.00	32.61,65.99
		path	30.68,65.55	29.40,64.39	27.59,62.07	27.17,58.74	27.25,55.75
		path	28.00,53.06	29.13,51.13	30.43,49.94	31.67,49.82	33.43,48.30
		path	34.75,47.33	35.75,47.03	37.32,44.70	38.75,44.47	39.82,45.94
		path	40.47,49.03	40.51,51.65	39.42,53.12	38.10,55.73	37.80,58.48
		path	37.56,60.85	38.41,61.95	40.16,61.92	41.77,61.51	43.31,61.24
		path	44.75,62.62	46.34,64.01	47.55,62.01	47.31,59.92	46.44,57.03
		path	47.70,54.96	48.89,52.58	50.64,51.44	53.36,51.71	55.89,51.38
		path	57.69,49.55	59.86,48.08	59.83,45.73	60.91,44.99	61.97,43.24
		path	64.35,41.34	65.39,42.29	65.97,44.84	65.74,47.70	64.38,50.55
		path	65.86,53.74	67.53,54.41	68.97,52.49	69.70,50.76	70.53,48.41
		path	71.78,46.96	73.21,47.74	73.12,49.55	72.20,51.60	72.16,53.26
		path	72.06,56.04	72.16,58.67	72.48,61.05	72.77,62.94	71.84,63.68
		path	70.31,62.84	69.06,63.15	67.02,64.46	65.18,64.96	64.02,64.42
		path	62.95,61.56	61.02,61.59	59.18,62.98	57.57,64.39	56.14,65.63
		path	54.35,65.89	53.71,67.13	51.82,69.48	50.54,72.92	49.60,75.80
		path	48.14,77.49	47.14,80.25	45.96,80.80	44.27,79.33	42.57,83.95
		path	41.57,86.50	39.53,87.77	37.54,88.34	36.04,85.90	34.83,85.56
		path	33.61,86.71	32.33,86.46	31.89,84.38	32.52,82.63	34.74,81.92
		path	36.12,80.41	36.82,76.83
		click Icethorn##190172+
		|tip Gather Icethorn along the path.
		|tip Frost Lotus comes from harvesting Icethorn.
		collect Frost Lotus##36906 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Goldclover",{
	author="support@zygorguides.com",
	description="\nGoldclover can be gathered from Borean Tundra.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map Borean Tundra/0
		path follow smart; loop on; ants curved; dist 60
		path	51.92,47.73	53.71,43.42	53.20,38.81	54.83,29.93	51.32,20.81
		path	49.41,26.22	42.92,41.31	36.51,54.92	44.12,64.22	52.21,60.72
		path	57.73,52.11
		click Goldclover##189973+
		|tip Gather Goldclover along the path.
		collect Goldclover##36901 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Icethorn",{
	author="support@zygorguides.com",
	description="\nIcethorn can be gathered from The Storm Peaks.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map The Storm Peaks/0
		path follow smart; loop on; ants curved
		path	37.15,73.48	36.64,69.08	35.71,66.70	34.66,66.00	32.61,65.99
		path	30.68,65.55	29.40,64.39	27.59,62.07	27.17,58.74	27.25,55.75
		path	28.00,53.06	29.13,51.13	30.43,49.94	31.67,49.82	33.43,48.30
		path	34.75,47.33	35.75,47.03	37.32,44.70	38.75,44.47	39.82,45.94
		path	40.47,49.03	40.51,51.65	39.42,53.12	38.10,55.73	37.80,58.48
		path	37.56,60.85	38.41,61.95	40.16,61.92	41.77,61.51	43.31,61.24
		path	44.75,62.62	46.34,64.01	47.55,62.01	47.31,59.92	46.44,57.03
		path	47.70,54.96	48.89,52.58	50.64,51.44	53.36,51.71	55.89,51.38
		path	57.69,49.55	59.86,48.08	59.83,45.73	60.91,44.99	61.97,43.24
		path	64.35,41.34	65.39,42.29	65.97,44.84	65.74,47.70	64.38,50.55
		path	65.86,53.74	67.53,54.41	68.97,52.49	69.70,50.76	70.53,48.41
		path	71.78,46.96	73.21,47.74	73.12,49.55	72.20,51.60	72.16,53.26
		path	72.06,56.04	72.16,58.67	72.48,61.05	72.77,62.94	71.84,63.68
		path	70.31,62.84	69.06,63.15	67.02,64.46	65.18,64.96	64.02,64.42
		path	62.95,61.56	61.02,61.59	59.18,62.98	57.57,64.39	56.14,65.63
		path	54.35,65.89	53.71,67.13	51.82,69.48	50.54,72.92	49.60,75.80
		path	48.14,77.49	47.14,80.25	45.96,80.80	44.27,79.33	42.57,83.95
		path	41.57,86.50	39.53,87.77	37.54,88.34	36.04,85.90	34.83,85.56
		path	33.61,86.71	32.33,86.46	31.89,84.38	32.52,82.63	34.74,81.92
		path	36.12,80.41	36.82,76.83
		click Icethorn##190172+
		|tip Gather Icethorn along the path.
		collect Icethorn##36906 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Lichbloom",{
	author="support@zygorguides.com",
	description="\nLichbloom can be gathered from The Storm Peaks.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map The Storm Peaks/0
		path follow smart; loop on; ants curved
		path	37.15,73.48	36.64,69.08	35.71,66.70	34.66,66.00	32.61,65.99
		path	30.68,65.55	29.40,64.39	27.59,62.07	27.17,58.74	27.25,55.75
		path	28.00,53.06	29.13,51.13	30.43,49.94	31.67,49.82	33.43,48.30
		path	34.75,47.33	35.75,47.03	37.32,44.70	38.75,44.47	39.82,45.94
		path	40.47,49.03	40.51,51.65	39.42,53.12	38.10,55.73	37.80,58.48
		path	37.56,60.85	38.41,61.95	40.16,61.92	41.77,61.51	43.31,61.24
		path	44.75,62.62	46.34,64.01	47.55,62.01	47.31,59.92	46.44,57.03
		path	47.70,54.96	48.89,52.58	50.64,51.44	53.36,51.71	55.89,51.38
		path	57.69,49.55	59.86,48.08	59.83,45.73	60.91,44.99	61.97,43.24
		path	64.35,41.34	65.39,42.29	65.97,44.84	65.74,47.70	64.38,50.55
		path	65.86,53.74	67.53,54.41	68.97,52.49	69.70,50.76	70.53,48.41
		path	71.78,46.96	73.21,47.74	73.12,49.55	72.20,51.60	72.16,53.26
		path	72.06,56.04	72.16,58.67	72.48,61.05	72.77,62.94	71.84,63.68
		path	70.31,62.84	69.06,63.15	67.02,64.46	65.18,64.96	64.02,64.42
		path	62.95,61.56	61.02,61.59	59.18,62.98	57.57,64.39	56.14,65.63
		path	54.35,65.89	53.71,67.13	51.82,69.48	50.54,72.92	49.60,75.80
		path	48.14,77.49	47.14,80.25	45.96,80.80	44.27,79.33	42.57,83.95
		path	41.57,86.50	39.53,87.77	37.54,88.34	36.04,85.90	34.83,85.56
		path	33.61,86.71	32.33,86.46	31.89,84.38	32.52,82.63	34.74,81.92
		path	36.12,80.41	36.82,76.83
		click Lichbloom##190171+
		|tip Gather Lichbloom along the path.
		collect Lichbloom##36905 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Talandra's Rose",{
	author="support@zygorguides.com",
	description="\nTalandra's Rose can be gathered from Zul'Drak.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map Zul'Drak/0
		path follow smart; loop on; ants curved
		path	22.09,78.77	25.02,75.77	26.61,74.51	27.79,77.38	28.26,80.67
		path	29.88,81.46	31.91,85.69	34.60,88.01	38.40,88.00	38.95,82.55
		path	38.13,79.03	38.15,76.23	38.09,73.57	35.66,69.02	33.88,66.82
		path	31.76,70.48	28.09,68.80	28.03,65.24	30.72,63.31	34.31,62.03
		path	36.26,61.30	36.97,62.37	38.83,67.08	42.03,71.78	44.95,74.61
		path	44.69,79.35	45.41,82.25	48.61,83.52	51.56,82.99	55.04,82.64
		path	58.46,82.66	61.07,81.96	63.59,79.19	63.39,77.17	62.44,75.36
		path	59.55,75.13	57.56,74.73	56.89,71.40	55.05,70.00	53.84,67.77
		path	52.92,64.89	50.79,63.03	47.76,63.47	45.58,64.45	42.97,63.91
		path	43.01,59.38	42.24,54.24	44.08,51.31	45.66,48.62	44.92,44.91
		path	43.78,42.08	40.83,42.28	37.99,41.92	34.94,40.78	32.39,40.02
		path	31.90,42.24	29.93,44.12	29.26,48.15	30.03,50.98	30.93,52.78
		path	31.89,54.80	31.46,56.62	29.51,57.49	27.52,55.35	25.94,52.49
		path	24.49,50.44	22.87,49.41	21.62,51.38	21.86,54.89	21.82,56.76
		path	20.73,57.98	21.38,60.17	20.63,62.78	20.22,65.31	21.22,69.61
		path	22.01,73.54
		click Talandra's Rose##190170+
		|tip Gather Talandra's Rose along the path.
		collect Talandra's Rose##36907 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Tiger Lily",{
	author="support@zygorguides.com",
	description="\nTiger Lily can be gathered from Sholazar Basin.",
	condition_end=function() return skill('Northrend Herbalism') >= 50 end,
	},[[
	step
		map Sholazar Basin/0
		path follow smart; loop on; ants curved; dist 60
		path	32.0,58.2	36.1,65.3	43.9,57.7	44.5,63.9	39.5,66.3
		path	40.4,71.7	32.8,82.3	36.1,84.4	42.6,76.0	46.8,62.5
		path	51.0,62.0	60.0,73.9	55.7,85.9	66.4,82.3	69.3,65.8
		path	55.2,57.1	48.9,55.0	55.4,48.1	58.1,38.3	34.8,31.4
		path	30.1,43.4	32.1,48.5	26.6,55.4	23.7,60.3
		click Tiger Lily##190169+
		|tip Gather Tiger Lily along the path.
		collect Tiger Lily##36904 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azshara's Veil",{
	author="support@zygorguides.com",
	description="\nAzshara's Veil can be gathered from the Shimmering Expanse.",
	condition_end=function() return skill('Cataclysm Herbalism') >= 50 end,
	},[[
	step
		map Shimmering Expanse/0
		path follow smart; loop on; ants curved
		path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
		path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
		path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
		path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
		path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
		path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
		path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
		path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
		path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
		path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
		path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
		click Azshara's Veil##202749+
		|tip Gather Azshara's Veil along the path.
		|tip They share a spawn with Stormvine.
		collect Azshara's Veil##52985 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Cinderbloom",{
	author="support@zygorguides.com",
	description="\nCinderbloom can be gathered from Mount Hyjal.",
	condition_end=function() return skill('Cataclysm Herbalism') >= 50 end,
	},[[
	step
		map Mount Hyjal/0
		path follow smart; loop on; ants curved; dist 60
		path	68.20,23.92	59.25,31.60	57.03,38.93	57.93,17.52	51.53,16.95
		path	52.61,35.53	48.74,36.52	44.01,24.52	39.84,32.50	36.52,21.76
		path	32.30,25.22	34.61,36.91	43.52,42.66	36.23,44.93	25.35,37.83
		path	24.12,31.91	11.83,31.63	14.34,47.02	19.04,58.51	25.64,62.01
		path	31.91,46.75	33.12,65.25	36.93,53.51	42.31,55.93	33.81,65.02
		path	31.33,76.52	33.81,98.22	57.12,80.90	59.23,84.55	59.83,77.83
		path	55.82,74.71	59.83,71.61	49.11,51.61	61.92,60.54	67.12,53.50
		path	74.31,58.84	71.92,68.52	77.30,63.22	83.01,64.22	89.91,49.82
		path	80.90,51.82	77.51,59.51
		click Cinderbloom##202747+
		|tip Gather Cinderbloom along the path.
		collect Cinderbloom##52983 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Heartblossom",{
	author="support@zygorguides.com",
	description="\nHeartblossom can be gathered from Deepholm.",
	condition_end=function() return skill('Cataclysm Herbalism') >= 50 end,
	},[[
	step
		map Deepholm/0
		path follow smart; loop on; ants curved; dist 60
		path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
		path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
		path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
		path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
		path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
		path	69.61,46.45
		click Heartblossom##202750+
		|tip Gather Heartblossom along the path.
		collect Heartblossom##52986 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Stormvine",{
	author="support@zygorguides.com",
	description="\nStormvine can be gathered from the Shimmering Expanse.",
	condition_end=function() return skill('Cataclysm Herbalism') >= 50 end,
	},[[
	step
		map Shimmering Expanse/0
		path follow smart; loop on; ants curved
		path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
		path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
		path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
		path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
		path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
		path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
		path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
		path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
		path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
		path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
		path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
		click Stormvine##202748+
		|tip Gather Stormvine along the path.
		|tip They share a spawn with Azshara's Veil.
		collect Stormvine##52984 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Twilight Jasmine",{
	author="support@zygorguides.com",
	description="\nTwilight Jasmine can be gathered from Twilight Highlands.",
	condition_end=function() return skill('Cataclysm Herbalism') >= 50 end,
	},[[
	step
		map Twilight Highlands/0
		path follow smart; loop on; ants curved
		path	70.79,46.66	69.08,42.90	68.12,37.36	67.99,34.25	67.92,32.12
		path	67.98,28.52	69.01,26.70	70.14,26.05	69.62,23.03	68.44,21.98
		path	66.26,24.24	65.60,26.84	64.83,30.58	62.91,32.57	63.75,36.84
		path	62.36,43.90	63.47,46.58	64.18,50.11	63.88,52.38	63.33,55.10
		path	62.69,56.32	61.44,58.61	60.10,60.07	58.70,60.30	56.14,58.93
		path	54.70,57.04	54.76,53.59	54.07,51.31	53.21,47.50	51.29,44.32
		path	51.47,40.36	52.21,36.53	53.48,33.11	54.42,29.98	55.19,27.59
		path	55.40,24.05	56.41,21.03	57.11,18.00	57.43,15.53	58.22,11.89
		path	57.02,9.89	54.09,12.97	52.71,17.04	52.38,19.85	51.17,21.97
		path	51.54,24.86	50.50,26.23	50.53,29.60	50.07,31.64	48.89,32.38
		path	46.86,30.23	45.54,29.06	44.74,31.54	44.95,35.06	44.63,37.16
		path	43.74,39.31	43.55,42.11	42.73,43.29	41.06,44.76	39.97,45.87
		path	39.00,47.54	37.48,49.88	34.58,48.91	32.66,49.23	31.62,48.98
		path	31.19,46.65	30.79,42.28	30.76,39.79	29.82,39.80	27.86,37.98
		path	26.51,39.06	27.74,40.33	29.17,44.01	29.32,47.45	29.13,49.65
		path	28.34,51.37	26.75,52.65	24.65,53.95	22.32,55.39	20.68,56.92
		path	21.03,58.92	23.25,58.85	25.48,57.20	27.80,56.29	30.13,53.99
		path	31.60,52.58	33.57,51.83	34.78,52.09	36.74,53.31	39.49,55.28
		path	41.57,57.93	42.19,59.81	43.60,62.38	45.70,65.74	48.13,67.86
		path	50.42,70.52	52.63,73.92	54.83,76.33	56.65,77.04	58.28,76.00
		path	59.09,72.74	59.99,70.03	60.77,66.67	61.81,64.63	63.20,61.86
		path	65.59,59.13	67.64,56.58
		click Twilight Jasmine##202751+
		|tip Gather Twilight Jasmine along the path.
		collect Twilight Jasmine##52987 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Whiptail",{
	author="support@zygorguides.com",
	description="\nWhiptail can be gathered from Uldum.",
	condition_end=function() return skill('Cataclysm Herbalism') >= 50 end,
	},[[
	step
		map Uldum/0
		path follow smart; loop on; ants curved; dist 60
		path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
		path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
		path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
		click Whiptail##202752+
		|tip Gather Whiptail along the path.
		collect Whiptail##52988 |n
		'|confirm
]])

------------
-- MINING --
------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Dark Iron",{
	author="support@zygorguides.com",
	description="\nDark Iron can be gathered from the Blackrock Depths and Molten Core inside Blackrock Mountain.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		click Dark Iron Deposit##165658+
		|tip They can be found inside of Blackrock Depths and Molten Core.
		|tip You can reset Blackrock Depths once you mine all the nodes.
		|tip In order to smelt the ore, you need to use the forge in front of Molten Core.
		collect Dark Iron Ore##11370 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Gold",{
	author="support@zygorguides.com",
	description="\nGold can be gathered from Feralas.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Feralas/0
		path follow smart; loop on; ants curved
		path	79.41,40.49	79.24,37.50	77.83,36.52	77.07,35.98	77.27,33.61
		path	76.69,32.61	76.70,30.67	76.13,28.72	74.13,29.39	75.02,30.39
		path	76.00,31.51	75.84,32.81	74.90,34.66	73.22,35.06	71.04,35.08
		path	70.06,37.08	69.24,38.87	68.71,41.35	68.35,44.13	67.70,45.81
		path	66.22,46.93	63.94,48.02	62.49,46.80	61.98,45.04	60.44,44.90
		path	59.75,44.65	58.44,44.61	57.48,45.11	56.19,45.07	54.91,46.33
		path	53.52,46.24	51.07,45.41	50.10,44.97	49.30,43.88	48.54,42.63
		path	48.68,40.42	48.53,39.28	49.48,34.88	50.79,33.93	51.64,32.54
		path	52.29,31.05	51.26,29.46	50.92,28.37	51.21,26.15	51.62,21.59
		path	52.01,18.44	52.97,15.94	53.81,12.82	54.23,10.36	54.60,7.91
		path	53.30,5.86	51.59,5.12	49.55,4.85	48.23,5.35	47.57,6.60
		path	46.56,6.70	45.44,7.67	44.34,7.35	42.76,7.51	41.65,8.12
		path	40.11,8.09	38.86,9.54	37.71,10.97	36.92,13.40	37.31,15.06
		path	37.72,16.84	37.46,19.45	37.16,20.55	37.06,22.81	37.17,24.73
		path	38.01,25.42	39.62,26.02	41.06,25.98	42.85,25.77	44.73,26.18
		path	45.55,27.51	46.81,30.05	47.66,30.97	48.22,33.84	47.06,37.24
		path	44.71,39.85	43.99,42.43	44.50,45.10	44.84,49.19	45.25,51.45
		path	47.71,54.13	49.97,53.46	51.25,51.68	52.95,52.20	54.51,52.99
		path	54.99,54.46	55.08,56.57	54.58,59.25	55.03,61.95	55.07,63.87
		path	53.65,65.16	52.99,66.69	52.77,67.96	52.98,70.03	53.39,72.04
		path	53.53,73.83	54.82,75.40	55.98,75.42	57.06,75.42	58.19,74.99
		path	59.07,74.08	60.23,74.38	61.30,74.49	62.31,73.35	62.17,71.46
		path	62.30,69.14	61.66,67.36	61.50,66.28	62.22,64.44	63.16,63.89
		path	63.25,62.37	64.07,62.21	65.40,63.08	66.05,63.45	67.02,62.72
		path	67.83,61.96	69.54,62.73	70.51,63.96	71.47,64.99	72.61,64.62
		path	73.90,64.39	75.11,63.63	76.02,62.79	75.86,60.47	76.50,59.70
		path	76.33,57.90	75.76,55.49	75.58,52.57	75.70,49.77	76.19,48.96
		path	77.40,48.26	78.76,47.54	79.49,46.96	80.10,47.23	81.21,46.06
		path	82.69,45.69	82.75,42.73	82.26,39.84	80.69,39.42
		click Gold Vein##1734+
		|tip Gather Gold along the path.
		|tip They tend to share spawns with Iron, so you may need to mine those to get them to spawn.
		|tip Enter caves along the path for better results.
		collect Gold Ore##2776 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Iron",{
	author="support@zygorguides.com",
	description="\nIron can be gathered from Feralas.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Feralas/0
		path follow smart; loop on; ants curved
		path	79.41,40.49	79.24,37.50	77.83,36.52	77.07,35.98	77.27,33.61
		path	76.69,32.61	76.70,30.67	76.13,28.72	74.13,29.39	75.02,30.39
		path	76.00,31.51	75.84,32.81	74.90,34.66	73.22,35.06	71.04,35.08
		path	70.06,37.08	69.24,38.87	68.71,41.35	68.35,44.13	67.70,45.81
		path	66.22,46.93	63.94,48.02	62.49,46.80	61.98,45.04	60.44,44.90
		path	59.75,44.65	58.44,44.61	57.48,45.11	56.19,45.07	54.91,46.33
		path	53.52,46.24	51.07,45.41	50.10,44.97	49.30,43.88	48.54,42.63
		path	48.68,40.42	48.53,39.28	49.48,34.88	50.79,33.93	51.64,32.54
		path	52.29,31.05	51.26,29.46	50.92,28.37	51.21,26.15	51.62,21.59
		path	52.01,18.44	52.97,15.94	53.81,12.82	54.23,10.36	54.60,7.91
		path	53.30,5.86	51.59,5.12	49.55,4.85	48.23,5.35	47.57,6.60
		path	46.56,6.70	45.44,7.67	44.34,7.35	42.76,7.51	41.65,8.12
		path	40.11,8.09	38.86,9.54	37.71,10.97	36.92,13.40	37.31,15.06
		path	37.72,16.84	37.46,19.45	37.16,20.55	37.06,22.81	37.17,24.73
		path	38.01,25.42	39.62,26.02	41.06,25.98	42.85,25.77	44.73,26.18
		path	45.55,27.51	46.81,30.05	47.66,30.97	48.22,33.84	47.06,37.24
		path	44.71,39.85	43.99,42.43	44.50,45.10	44.84,49.19	45.25,51.45
		path	47.71,54.13	49.97,53.46	51.25,51.68	52.95,52.20	54.51,52.99
		path	54.99,54.46	55.08,56.57	54.58,59.25	55.03,61.95	55.07,63.87
		path	53.65,65.16	52.99,66.69	52.77,67.96	52.98,70.03	53.39,72.04
		path	53.53,73.83	54.82,75.40	55.98,75.42	57.06,75.42	58.19,74.99
		path	59.07,74.08	60.23,74.38	61.30,74.49	62.31,73.35	62.17,71.46
		path	62.30,69.14	61.66,67.36	61.50,66.28	62.22,64.44	63.16,63.89
		path	63.25,62.37	64.07,62.21	65.40,63.08	66.05,63.45	67.02,62.72
		path	67.83,61.96	69.54,62.73	70.51,63.96	71.47,64.99	72.61,64.62
		path	73.90,64.39	75.11,63.63	76.02,62.79	75.86,60.47	76.50,59.70
		path	76.33,57.90	75.76,55.49	75.58,52.57	75.70,49.77	76.19,48.96
		path	77.40,48.26	78.76,47.54	79.49,46.96	80.10,47.23	81.21,46.06
		path	82.69,45.69	82.75,42.73	82.26,39.84	80.69,39.42
		click Iron Deposit##1735+
		|tip Gather Iron along the path.
		|tip Enter caves along the path for better results.
		collect Iron Ore##2772 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Mithril",{
	author="support@zygorguides.com",
	description="\nMithril can be gathered from Felwood.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Felwood/0
		path follow smart; loop on; ants curved
		path	63.09,16.04	62.56,13.59	62.20,12.50	62.75,10.73	63.09,8.53
		path	62.39,7.10	61.33,8.24	60.08,7.86	59.33,8.39	59.60,10.64
		path	60.73,11.99	61.32,13.37	61.49,14.40	60.71,16.79	60.30,17.47
		path	58.47,17.24	57.73,16.34	56.90,14.55	54.13,13.10	52.58,13.22
		path	51.89,13.90	50.04,14.83	48.67,16.41	47.39,17.53	45.83,16.13
		path	44.57,15.61	43.62,16.31	43.16,18.44	42.40,20.08	41.42,21.45
		path	40.10,21.97	39.54,23.66	40.64,25.08	40.89,26.60	41.30,28.67
		path	41.20,30.28	40.10,31.36	39.59,32.83	40.26,34.67	39.82,36.95
		path	38.35,38.35	38.46,40.34	39.08,41.42	38.29,43.68	38.36,46.13
		path	38.32,47.48	37.55,49.60	38.42,50.54	38.94,50.68	38.59,51.95
		path	38.66,54.85	39.31,57.74	40.71,58.89	41.50,59.75	42.06,62.32
		path	42.43,63.27	41.34,64.50	40.15,64.14	38.98,65.73	37.47,65.87
		path	36.57,66.72	37.23,68.03	37.84,69.25	37.99,71.49	38.29,73.63
		path	39.96,72.83	41.17,72.45	42.12,73.90	42.75,76.41	41.41,77.04
		path	41.73,79.49	42.04,82.11	41.89,84.99	42.04,86.66	43.07,86.40
		path	43.71,87.29	44.64,88.26	45.21,89.56	46.36,90.20	47.58,90.82
		path	48.33,91.95	49.12,89.24	49.91,86.92	50.76,86.45	51.30,86.05
		path	52.06,85.12	53.54,86.74	55.64,86.81	56.91,85.62	57.36,83.81
		path	56.23,81.71	54.38,81.07	52.98,80.54	52.08,80.85	51.11,80.10
		path	50.32,78.55	49.14,77.51	48.62,76.19	48.36,73.51	47.11,71.66
		path	46.19,69.65	45.18,68.98	45.19,67.72	45.27,65.86	44.78,64.20
		path	43.72,64.16	43.28,62.22	42.41,61.60	42.29,59.42	42.87,57.93
		path	42.78,56.58	42.16,55.17	42.40,53.46	42.56,51.06	43.63,50.34
		path	44.25,48.76	44.67,47.48	45.00,45.14	44.46,43.42	45.57,42.69
		path	46.89,41.10	47.84,40.17	48.61,39.10	48.94,37.21	49.82,35.68
		path	50.17,33.81	51.42,33.23	52.49,31.43	52.02,29.68	52.58,29.03
		path	54.14,29.35	55.30,28.32	56.36,28.91	56.64,26.60	57.81,26.47
		path	58.37,25.85	56.47,25.17	56.03,24.06	56.98,22.57	56.53,21.35
		path	57.02,19.96	58.50,19.50	59.45,18.45	61.06,18.84	62.62,17.73
		click Mithril Deposit##2040+
		|tip Gather Mithril along the path.
		|tip Enter caves along the path for better results.
		collect Mithril Ore##3858 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Silver",{
	author="support@zygorguides.com",
	description="\nSilver can be gathered from Northern Stranglethorn.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Northern Stranglethorn/0
		path follow smart; loop on; ants curved
		path	44.63,18.19	41.16,16.78	36.48,16.69	33.77,18.30	31.03,20.72
		path	26.63,19.49	23.87,17.88	21.50,20.78	19.14,22.38	17.03,23.30
		path	19.06,27.80	22.54,28.73	24.53,32.46	26.94,33.92	30.47,35.73
		path	32.92,34.21	34.66,30.80	36.92,27.42	39.64,25.78	41.55,26.78
		path	43.77,26.74	45.69,28.28	46.02,31.30	45.18,33.88	42.05,35.82
		path	39.70,37.61	39.90,40.56	40.60,43.55	43.56,44.01	46.04,44.27
		path	46.01,46.87	44.89,49.48	44.84,52.61	47.26,55.12	51.29,55.32
		path	53.90,56.27	55.38,54.25	58.49,53.52	60.90,51.11	62.40,52.57
		path	63.33,57.80	61.27,59.48	59.64,61.59	59.42,64.78	58.56,67.69
		path	56.92,70.95	57.67,74.33	59.94,74.40	62.71,74.64	64.01,71.94
		path	65.93,68.78	65.95,64.40	66.60,60.29	67.96,55.33	67.38,49.95
		path	67.36,45.23	67.15,40.68	66.65,35.88	66.40,30.29	66.26,25.25
		path	64.38,20.85	61.85,17.85	59.07,17.54	56.28,17.99	54.05,18.45
		path	50.70,17.73	47.50,19.54
		click Silver Vein##1733+
		|tip Gather Silver along the path.
		|tip They tend to share spawns with Tin, so you may need to mine those to get them to spawn.
		|tip Enter caves along the path for better results.
		collect Silver Ore##2775 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Thorium",{
	author="support@zygorguides.com",
	description="\nThorium can be gathered from Winterspring.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Winterspring/0
		path follow smart; loop on; ants curved
		path	57.11,38.93	57.99,36.38	59.47,34.53	60.14,32.46	59.39,30.25
		path	58.32,28.75	58.09,26.84	58.54,25.31	59.44,23.44	59.98,22.25
		path	58.87,20.34	57.50,20.07	55.75,20.70	54.75,21.00	52.00,20.10
		path	50.54,18.87	49.44,18.07	48.92,16.21	47.86,15.05	46.40,13.65
		path	45.00,14.90	45.09,16.52	44.98,17.90	45.33,19.59	45.05,21.35
		path	44.78,24.34	45.39,25.86	45.61,28.34	46.79,30.70	47.62,31.64
		path	47.85,33.71	48.40,35.91	49.26,37.73	49.74,40.05	49.21,42.62
		path	48.47,45.20	46.51,47.30	45.20,46.36	43.96,48.18	42.38,48.82
		path	40.56,49.09	37.89,48.59	35.73,47.73	33.38,48.01	30.89,48.41
		path	30.90,50.41	32.02,51.24	31.82,53.18	31.00,54.09	29.70,53.60
		path	28.41,51.84	27.58,49.93	27.65,48.16	26.71,48.69	25.70,48.45
		path	24.16,47.54	22.45,46.65	22.31,48.67	22.71,51.06	23.64,52.22
		path	23.27,55.30	22.47,57.22	22.22,59.49	23.12,60.43	24.75,60.72
		path	25.28,59.99	25.28,58.51	26.17,57.32	28.58,56.88	29.36,55.84
		path	30.59,56.72	31.69,57.18	33.28,57.56	34.71,58.01	37.30,56.76
		path	38.95,57.15	40.50,57.01	41.44,55.55	40.90,53.81	41.78,52.61
		path	43.41,52.86	44.71,55.11	46.06,57.75	46.45,59.27	47.19,60.35
		path	49.28,60.14	50.50,59.13	51.97,58.95	52.81,61.34	53.75,63.34
		path	53.98,65.52	55.14,67.68	56.00,69.56	55.45,71.51	55.84,73.23
		path	56.83,76.33	56.97,79.59	57.54,83.68	59.05,84.76	61.39,85.83
		path	63.30,85.78	64.42,82.90	64.45,78.43	64.78,76.45	64.42,75.48
		path	62.68,74.74	62.14,73.30	62.99,71.28	64.22,68.91	65.66,67.70
		path	66.24,64.90	66.80,62.67	67.01,60.53	66.90,58.27	66.31,56.27
		path	64.75,53.27	62.73,51.90	62.08,49.87	60.91,46.91	59.38,46.04
		path	58.22,44.41	58.06,42.48
		click Small Thorium Vein##324+
		click Rich Thorium Vein##175404+
		|tip Gather Thorium along the path.
		|tip Enter caves along the path for better results.
		collect Thorium Ore##10620 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Tin",{
	author="support@zygorguides.com",
	description="\nTin can be gathered from Hillsbrad Foothills.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Hillsbrad Foothills/0
		path follow smart; loop on; ants curved
		path	39.25,33.57	39.97,37.22	41.74,41.11	44.67,40.68	49.05,32.72
		path	51.59,31.48	50.32,28.95	49.31,26.49	50.36,24.48	48.95,20.08
		path	46.36,21.61	43.54,21.17	41.21,23.03	40.10,27.54	39.38,32.29
		click Tin Vein##1732+
		|tip Gather Tin along the path.
		|tip Enter caves along the path for better results.
		collect Tin Ore##2771 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Truesilver",{
	author="support@zygorguides.com",
	description="\nTruesilver can be gathered from Winterspring.",
	condition_end=function() return skill('Mining') >= 50 end,
	},[[
	step
		map Winterspring/0
		path follow smart; loop on; ants curved
		path	57.11,38.93	57.99,36.38	59.47,34.53	60.14,32.46	59.39,30.25
		path	58.32,28.75	58.09,26.84	58.54,25.31	59.44,23.44	59.98,22.25
		path	58.87,20.34	57.50,20.07	55.75,20.70	54.75,21.00	52.00,20.10
		path	50.54,18.87	49.44,18.07	48.92,16.21	47.86,15.05	46.40,13.65
		path	45.00,14.90	45.09,16.52	44.98,17.90	45.33,19.59	45.05,21.35
		path	44.78,24.34	45.39,25.86	45.61,28.34	46.79,30.70	47.62,31.64
		path	47.85,33.71	48.40,35.91	49.26,37.73	49.74,40.05	49.21,42.62
		path	48.47,45.20	46.51,47.30	45.20,46.36	43.96,48.18	42.38,48.82
		path	40.56,49.09	37.89,48.59	35.73,47.73	33.38,48.01	30.89,48.41
		path	30.90,50.41	32.02,51.24	31.82,53.18	31.00,54.09	29.70,53.60
		path	28.41,51.84	27.58,49.93	27.65,48.16	26.71,48.69	25.70,48.45
		path	24.16,47.54	22.45,46.65	22.31,48.67	22.71,51.06	23.64,52.22
		path	23.27,55.30	22.47,57.22	22.22,59.49	23.12,60.43	24.75,60.72
		path	25.28,59.99	25.28,58.51	26.17,57.32	28.58,56.88	29.36,55.84
		path	30.59,56.72	31.69,57.18	33.28,57.56	34.71,58.01	37.30,56.76
		path	38.95,57.15	40.50,57.01	41.44,55.55	40.90,53.81	41.78,52.61
		path	43.41,52.86	44.71,55.11	46.06,57.75	46.45,59.27	47.19,60.35
		path	49.28,60.14	50.50,59.13	51.97,58.95	52.81,61.34	53.75,63.34
		path	53.98,65.52	55.14,67.68	56.00,69.56	55.45,71.51	55.84,73.23
		path	56.83,76.33	56.97,79.59	57.54,83.68	59.05,84.76	61.39,85.83
		path	63.30,85.78	64.42,82.90	64.45,78.43	64.78,76.45	64.42,75.48
		path	62.68,74.74	62.14,73.30	62.99,71.28	64.22,68.91	65.66,67.70
		path	66.24,64.90	66.80,62.67	67.01,60.53	66.90,58.27	66.31,56.27
		path	64.75,53.27	62.73,51.90	62.08,49.87	60.91,46.91	59.38,46.04
		path	58.22,44.41	58.06,42.48
		click Truesilver Deposit##2047+
		|tip Gather Truesilver along the path.
		|tip Enter caves along the path for better results.
		collect Truesilver Ore##7911 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Adamantite",{
	author="support@zygorguides.com",
	description="\nAdamantite can be gathered from Nagrand.",
	condition_end=function() return skill('Outland Mining') >= 50 end,
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved
		path	23.03,54.38	25.66,56.17	27.78,59.66	28.97,63.86	29.39,68.96
		path	28.60,72.26	28.38,76.04	29.37,79.52	31.84,80.64	35.76,81.91
		path	38.66,82.53	41.39,82.08	42.32,78.93	44.21,77.72	46.77,77.25
		path	48.80,77.89	50.60,79.08	52.79,80.43	55.35,80.45	57.66,79.43
		path	59.67,79.87	61.78,80.22	63.10,78.04	61.50,74.24	60.07,71.40
		path	58.21,67.30	56.38,66.12	55.81,62.92	55.80,59.35	55.91,56.41
		path	53.97,55.67	51.60,54.83	49.35,54.70	48.34,56.31	46.31,52.84
		path	44.76,48.93	44.93,44.85	44.17,41.32	42.03,37.80	40.94,34.11
		path	40.52,29.96	38.57,27.00	35.52,23.03	31.65,21.23	28.90,20.10
		path	26.95,20.42	25.43,24.53	24.85,26.68	23.88,30.30	21.46,32.74
		path	18.92,33.25	16.50,34.01	14.02,35.11	11.60,37.40	9.18,39.21
		path	7.43,41.55	7.97,45.14	9.64,44.27	12.78,42.19	13.85,43.23
		click Adamantite Deposit##181556+
		click Rich Adamantite Deposit##181569+
		|tip Gather Adamantite along the path.
		collect Adamantite Ore##23425 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Fel Iron",{
	author="support@zygorguides.com",
	description="\nFel Iron can be gathered from Hellfire Peninsula.",
	condition_end=function() return skill('Outland Mining') >= 50 end,
	},[[
	step
		map Hellfire Peninsula/0
		path follow smart; loop on; ants curved
		path	40.75,42.50	40.26,40.96	40.59,36.51	41.36,33.28	43.83,33.24
		path	44.70,32.04	44.07,29.69	41.52,29.31	40.39,28.06	39.18,28.60
		path	38.78,31.28	39.45,34.58	38.84,37.75	38.00,41.81	37.29,44.05
		path	34.94,45.10	33.47,44.99	32.33,43.34	31.25,41.56	31.18,38.16
		path	33.35,35.12	34.81,36.51	36.88,34.23	36.38,31.00	36.65,27.50
		path	34.86,27.64	34.18,30.27	33.95,32.60	32.82,32.93	30.49,32.56
		path	29.46,34.09	29.89,36.50	29.26,38.76	28.50,39.00	27.60,36.52
		path	26.16,37.69	25.80,40.12	24.27,41.44	21.50,41.64	20.34,41.76
		path	19.47,39.60	18.10,38.61	16.12,37.94	14.31,37.73	13.47,36.02
		path	12.48,35.85	12.11,38.86	13.09,40.80	12.81,43.48	12.08,46.56
		path	11.32,48.30	9.56,49.23	8.57,51.37	9.57,52.68	10.84,55.14
		path	12.17,55.31	12.26,58.81	12.81,59.93	14.07,61.24	14.96,63.01
		path	15.77,59.56	17.36,57.29	19.16,56.46	21.27,57.56	22.06,59.04
		path	23.61,61.30	22.10,63.38	21.62,65.68	22.34,67.89	23.43,69.32
		path	25.05,71.45	26.07,71.93	25.79,75.23	25.80,78.02	27.25,79.15
		path	28.84,78.89	29.38,76.72	29.62,73.24	29.96,69.53	30.61,66.72
		path	32.37,65.87	33.99,66.14	35.61,70.00	36.83,67.98	39.60,68.47
		path	40.74,70.17	42.73,73.61	42.33,76.12	43.05,79.48	41.89,82.43
		path	40.80,84.01	39.64,86.19	38.83,87.20	36.99,88.84	34.33,90.22
		path	34.22,92.33	35.51,92.08	37.34,90.33	38.44,88.67	40.48,86.49
		path	44.73,81.62	46.22,84.73	48.19,84.16	51.50,82.91	53.54,84.94
		path	55.09,86.21	55.59,83.18	56.70,82.04	58.55,79.67	58.63,77.75
		path	57.99,75.75	56.39,74.03	57.13,72.33	58.10,70.83	59.03,68.99
		path	61.00,68.45	63.04,67.10	63.48,64.36	65.00,63.16	65.82,67.02
		path	67.49,69.37	68.20,70.18	66.71,72.92	65.89,73.70	64.97,73.80
		path	64.55,75.74	66.07,77.99	67.88,76.49	68.96,73.63	70.44,70.80
		path	70.78,66.63	69.81,64.01	68.32,62.59	65.54,61.99	64.51,60.64
		path	65.42,57.87	67.00,57.51	69.46,58.76	72.80,60.39	74.27,58.69
		path	72.07,56.26	70.55,54.02	71.34,51.09	70.09,49.47	69.18,47.28
		path	67.71,41.84	65.81,40.93	64.46,40.63	64.00,38.40	64.00,34.75
		path	62.89,32.54	61.87,29.33	60.44,30.36	59.24,29.85	57.33,29.47
		path	55.07,28.81	53.89,27.91	53.69,30.17	55.04,30.78	55.79,32.59
		path	54.46,34.59	52.34,34.35	50.66,34.27	49.00,34.34	47.97,37.12
		path	47.88,40.46	46.11,43.55	45.00,44.24	43.34,43.21	41.71,43.80
		click Fel Iron Deposit##181555+
		|tip Gather Fel Iron along the path.
		collect Fel Iron Ore##23424 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Khorium",{
	author="support@zygorguides.com",
	description="\nKhorium can be gathered from Nagrand in Outland.",
	condition_end=function() return skill('Outland Mining') >= 50 end,
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved
		path	63.34,35.22	65.95,36.66	68.13,37.14	70.36,37.65	71.83,36.33
		path	73.50,38.48	72.54,41.93	72.97,44.96	72.42,48.35	69.60,50.40
		path	70.15,53.33	71.41,56.52	71.96,59.85	71.88,62.71	72.38,65.68
		path	72.25,69.30	73.68,67.40	74.28,64.71	73.82,62.50	75.71,62.51
		path	75.71,67.75	75.87,71.92	71.48,74.74	69.93,76.64	72.38,78.21
		path	71.68,80.31	69.28,81.25	67.60,82.38	66.76,78.64	65.26,75.08
		path	64.19,71.94	62.92,72.40	61.39,71.77	59.65,72.36	58.89,75.56
		path	58.54,77.09	57.47,78.20	56.61,79.74	55.31,80.11	53.69,79.86
		path	51.86,80.03	50.65,78.94	48.74,77.15	46.29,77.47	44.16,78.11
		path	41.81,79.82	38.77,79.99	35.60,79.56	32.94,76.76	31.18,75.00
		path	28.46,72.27	29.18,70.16	29.16,66.27	28.02,63.34	24.95,60.62
		path	25.07,57.30	23.53,55.39	20.33,53.41	17.70,51.51	15.78,49.52
		path	14.56,45.53	13.43,42.55	12.15,42.00	11.01,42.99	9.65,44.70
		path	7.79,44.42	7.36,41.87	8.01,40.07	9.49,39.03	10.96,37.68
		path	13.02,35.50	15.36,34.43	16.43,34.07	19.06,33.39	20.52,32.47
		path	23.26,29.80	24.81,26.81	24.86,24.11	25.49,22.77	26.76,23.34
		path	27.18,19.36	29.19,19.98	30.61,20.34	31.84,19.62	33.13,23.59
		path	35.49,24.62	37.07,24.17	38.54,28.30	40.31,30.40	40.75,32.01
		path	42.70,37.57	44.01,41.01	44.77,44.91	44.63,48.02	47.77,54.04
		path	49.66,56.34	51.43,54.55	53.27,51.10	55.33,51.04	57.17,48.77
		path	59.25,48.33	60.53,47.06	61.37,45.02	62.64,41.74	62.65,38.36
		click Khorium Vein##181557+
		|tip Khorium has an extremely rare spawn rate.
		|tip Be sure to gather from all nodes.
		|tip Enter caves found along the path.
		collect Khorium Ore##23426 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Cobalt",{
	author="support@zygorguides.com",
	description="\nCobalt can be gathered from Howling Fjord.",
	condition_end=function() return skill('Northrend Mining') >= 50 end,
	},[[
	step
		map Howling Fjord/0
		path follow smart; loop on; ants curved
		path	62.24,38.40	63.07,41.42	63.77,44.33	65.07,46.85	65.95,49.99
		path	65.47,51.84	66.77,53.34	66.99,56.22	68.17,56.81	68.22,58.55
		path	67.42,61.43	66.93,62.92	65.20,65.61	64.49,67.54	64.27,69.82
		path	64.00,71.83	65.17,72.57	66.65,74.03	67.17,75.22	67.85,75.50
		path	68.69,76.65	69.47,75.47	70.01,73.15	70.12,70.66	70.93,69.55
		path	72.23,67.74	73.93,67.56	76.01,67.84	77.18,66.44	77.17,63.42
		path	76.71,61.35	75.63,59.18	74.86,56.68	75.11,53.88	75.75,52.62
		path	76.15,50.91	77.59,50.42	79.22,49.34	80.40,47.64	80.44,45.88
		path	78.79,44.50	77.53,42.78	76.17,40.85	74.06,39.02	72.84,38.87
		path	71.02,37.09	70.56,34.57	70.76,32.23	71.99,29.32	73.29,27.03
		path	74.48,25.10	75.12,22.81	74.22,21.32	73.50,20.11	73.65,18.35
		path	73.46,16.35	72.60,15.11	70.32,12.12	68.85,10.78	67.15,10.13
		path	65.65,9.71	64.56,12.64	64.09,14.33	64.19,16.42	63.22,19.28
		path	61.95,20.11	60.43,20.26	58.19,21.42	57.37,20.43	58.06,15.77
		path	58.35,12.87	57.89,11.23	56.19,10.49	53.95,9.67	53.32,7.34
		path	50.44,7.72	49.96,9.54	48.06,11.09	47.61,14.35	46.34,16.30
		path	45.11,16.76	42.86,15.76	41.25,15.66	39.95,18.02	39.01,18.97
		path	37.72,19.53	36.15,18.54	35.25,16.71	34.42,14.04	32.74,12.27
		path	31.94,13.09	30.73,12.46	29.39,11.21	27.26,11.67	25.33,12.39
		path	23.77,13.71	24.66,16.85	25.79,20.30	26.12,22.28	26.20,26.21
		path	26.42,29.01	27.57,31.54	28.62,33.43	29.43,34.27	30.74,36.27
		path	32.54,37.36	34.28,36.57	38.77,35.98	42.03,37.88	44.65,40.18
		path	48.10,40.27	52.12,40.35	53.86,39.72	56.24,37.91	58.51,36.22
		path	60.26,36.57
		click Cobalt Deposit##189978+
		click Rich Cobalt Deposit##189979+
		|tip Gather Cobalt along the path.
		collect Cobalt Ore##36909 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Saronite",{
	author="support@zygorguides.com",
	description="\nSaronite can be gathered from Sholazar Basin.",
	condition_end=function() return skill('Northrend Mining') >= 50 end,
	},[[
	step
		map Sholazar Basin/0
		path follow smart; loop on; ants curved
		path	47.55,60.54	45.98,63.10	47.07,66.19	48.50,67.57	48.06,72.89
		path	50.18,79.08	51.11,83.87	50.24,87.27	47.95,87.13	45.88,86.92
		path	43.83,87.15	40.80,87.29	38.41,86.20	37.55,82.52	39.01,79.09
		path	39.97,76.03	39.89,72.63	38.87,69.59	37.13,68.11	34.77,68.38
		path	34.09,71.52	32.47,76.06	30.69,80.02	27.90,83.52	24.95,83.83
		path	22.95,82.59	21.27,78.60	20.64,74.21	20.80,69.62	20.99,66.37
		path	21.63,60.90	21.93,56.40	23.34,52.96	26.15,53.68	29.38,55.20
		path	32.17,55.87	35.01,55.74	37.57,52.39	36.47,49.33	34.26,47.11
		path	31.92,44.99	29.37,43.15	30.16,39.22	32.21,35.48	34.85,33.69
		path	37.60,32.87	39.99,32.13	41.50,33.05	43.22,37.70	45.00,41.85
		path	47.30,42.65	50.33,42.48	52.24,41.57	53.34,38.94	53.09,35.64
		path	51.58,32.70	49.27,30.10	47.00,28.68	45.35,26.84	43.66,24.20
		path	43.30,21.65	45.46,21.34	48.34,21.59	51.18,22.09	55.10,24.48
		path	58.23,26.57	61.53,30.34	63.92,33.33	66.01,36.41	66.75,39.64
		path	64.98,42.63	63.15,45.78	60.70,48.14	58.67,48.97	57.04,50.77
		path	56.86,53.99	58.78,55.73	61.38,56.54	64.12,55.19	67.02,54.31
		path	69.67,56.56	71.72,60.58	75.27,61.51	74.93,65.10	73.11,68.76
		path	71.40,71.86	68.77,76.48	66.01,80.90	63.54,80.54	60.96,79.85
		path	58.85,81.83	56.78,85.19	55.87,83.09	56.40,78.00	56.32,71.21
		path	54.35,65.42	51.00,63.86
		click Saronite Deposit##189980+
		click Rich Saronite Deposit##189981+
		|tip Gather Saronite along the path.
		collect Saronite Ore##36912 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Titanium",{
	author="support@zygorguides.com",
	description="\nTitanium can be gathered from Icecrown.",
	condition_end=function() return skill('Northrend Mining') >= 50 end,
	},[[
	step
		map Icecrown/0
		path follow smart; loop on; ants curved
		path	40.72,32.54	38.91,34.46	38.45,36.85	38.74,38.93	37.95,40.58
		path	37.69,42.84	40.48,43.82	42.31,43.02	43.39,45.10	44.32,47.62
		path	45.99,48.67	48.72,49.59	48.51,52.39	48.39,55.80	48.85,59.06
		path	50.06,62.42	52.11,64.82	53.99,66.79	54.57,69.47	56.77,69.50
		path	58.75,67.57	60.62,66.55	61.93,66.66	64.12,69.23	65.52,71.03
		path	66.93,72.46	68.28,72.63	70.19,70.88	73.14,69.30	75.35,69.39
		path	76.47,68.99	78.24,68.07	79.93,68.59	81.11,66.87	81.37,64.15
		path	80.64,60.48	79.47,59.12	78.26,57.98	78.38,55.31	78.03,53.01
		path	76.83,51.18	75.49,49.44	75.46,47.21	75.39,44.66	74.42,41.83
		path	72.87,40.61	70.72,40.89	68.48,40.75	67.50,39.53	66.18,36.82
		path	64.76,35.59	62.87,34.59	61.85,32.55	60.74,30.60	58.80,29.01
		path	57.00,28.65	55.14,29.01	54.26,30.31	53.42,32.58	52.40,33.45
		path	50.35,32.75	48.59,31.00	46.99,32.89	44.70,34.15	42.85,33.26
		click Titanium Vein##191133+
		|tip Gather Titanium along the path.
		|tip These are a rare spawn, so mine other nodes as you see them to get them to spawn.
		collect Titanium Ore##36910 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elementium",{
	author="support@zygorguides.com",
	description="\nElementium can be gathered from Twilight Highlands.",
	condition_end=function() return skill('Cataclysm Mining') >= 50 end,
	},[[
	step
		map Twilight Highlands/0
		path follow smart; loop on; ants curved
		path	67.12,53.71	66.14,50.02	65.32,47.07	63.19,43.30	61.37,40.30
		path	57.72,38.31	54.89,37.76	52.17,40.03	50.30,42.97	45.84,49.71
		path	43.99,52.61	42.07,54.66	39.00,59.98	38.30,62.37	38.09,66.30
		path	38.80,69.49	40.30,74.96	42.18,76.70	44.22,77.22	45.48,79.26
		path	46.79,81.59	49.33,82.52	51.97,81.92	54.74,81.61	57.05,79.84
		path	59.27,77.24	59.82,73.45	60.56,71.34	62.55,68.61	65.27,68.74
		path	66.76,71.13	68.14,74.02	67.67,77.62	65.97,80.72	63.98,83.07
		path	61.10,85.08	58.48,86.62	55.40,86.44	52.38,87.05	49.45,86.26
		path	46.20,85.56	43.32,86.32	40.64,87.78	37.90,88.35	36.61,86.84
		path	36.05,84.16	34.20,82.17	32.33,79.21	30.43,73.67	29.60,69.58
		path	31.49,67.23	34.04,65.18	35.81,62.68	37.65,59.14	38.56,55.60
		path	38.27,49.23	37.53,43.75	37.42,39.31	39.60,35.31	41.42,31.65
		path	41.88,28.18	40.70,25.49	39.36,22.58	40.81,20.45	43.38,20.38
		path	47.97,20.48	51.88,22.44	55.55,24.46	58.41,26.99	61.48,30.78
		path	64.76,34.88	67.50,38.35	68.75,42.37	69.74,47.06	71.15,50.40
		click Elementium Vein##202738+
		click Rich Elementium Vein##202741+
		|tip Gather Elementium along the path.
		collect Elementium Ore##52185 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Obsidium",{
	author="support@zygorguides.com",
	description="\nObsidium can be gathered from Mount Hyjal.",
	condition_end=function() return skill('Cataclysm Mining') >= 50 end,
	},[[
	step
		map Mount Hyjal
		path follow smart; loop on; ants curved; dist 60
		path	68.25,23.92	59.27,31.64	57.02,38.93	57.92,17.54	51.54,16.91
		path	52.67,35.51	48.76,36.55	44.01,24.52	39.85,32.52	36.53,21.72
		path	32.31,25.26	34.68,36.93	43.54,42.61	36.21,44.91	25.30,37.84
		path	24.13,31.91	11.87,31.61	14.33,47.06	19.03,58.53	25.60,62.06
		path	31.94,46.76	33.14,65.28	36.97,53.51	42.35,55.91	33.84,65.04
		path	31.36,76.55	33.81,98.24	57.12,80.93	59.24,84.55	59.82,77.85
		path	55.88,74.71	59.83,71.63	49.11,51.62	61.91,60.51	67.11,53.52
		path	74.39,58.83	71.96,68.51	77.33,63.21	83.03,64.23	89.92,49.81
		path	80.94,51.84	77.55,59.55
		click Obsidium Deposit##202736+
		click Rich Obsidium Deposit##202739+
		|tip Gather Obsidium along the path.
		collect Obsidium Ore##53038 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Pyrite",{
	author="support@zygorguides.com",
	description="\nPyrite can be gathered from Uldum.",
	condition_end=function() return skill('Cataclysm Mining') >= 50 end,
	},[[
	step
		map Uldum/0
		path follow smart; loop on; ants curved
		path	56.86,12.78	54.97,12.91	53.07,12.92	50.43,12.68	49.30,12.15
		path	47.71,10.28	46.16,8.31	44.09,7.57	41.61,7.76	39.70,9.33
		path	39.95,10.62	41.79,13.78	40.84,15.40	39.40,16.86	38.27,18.67
		path	35.87,17.32	33.40,14.72	32.03,13.94	30.76,15.21	30.34,17.27
		path	31.13,20.39	31.91,23.31	31.65,26.44	30.89,28.73	29.45,32.01
		path	28.80,34.40	28.52,36.72	28.04,39.92	27.38,43.54	26.56,46.54
		path	25.41,49.01	23.28,51.15	20.81,53.14	18.60,55.58	17.41,57.24
		path	16.15,58.95	15.84,61.02	17.62,62.94	20.17,64.10	22.49,64.26
		path	24.03,63.86	26.77,61.47	28.59,59.39	30.98,56.52	33.93,53.95
		path	37.25,51.16	39.09,50.02	40.56,50.79	39.41,53.93	38.94,56.75
		path	38.52,59.24	38.50,62.47	39.31,64.69	41.01,65.50	43.18,66.16
		path	45.86,66.26	48.99,65.26	51.88,62.72	53.94,60.09	56.31,57.10
		path	57.53,59.17	57.99,62.49	60.00,62.92	62.73,62.72	65.45,60.59
		path	67.20,60.76	69.19,62.16	70.45,64.64	71.28,67.82	72.01,70.64
		path	72.95,72.90	74.33,72.01	76.72,68.83	78.55,67.13	80.15,65.55
		path	81.75,63.19	81.58,60.80	80.98,59.23	81.29,55.02	81.97,51.35
		path	81.36,48.60	80.24,46.39	78.92,45.21	77.26,43.91	75.86,42.46
		path	74.21,41.32	72.17,39.38	70.90,37.35	69.60,35.47	69.19,33.01
		path	69.21,29.97	69.24,26.94	69.11,23.70	68.85,20.69	68.10,18.82
		path	67.38,16.97	66.29,15.85	64.63,15.09	62.95,14.12	61.62,14.89
		path	60.14,13.67
		click Pyrite Deposit##202737+
		click Rich Pyrite Deposit##202740+
		|tip Gather Pyrite along the path.
		|tip Pyrite Deposits are rare and you may need to mine from other nodes to get it to spawn.
		collect Pyrite Ore##52183 |n
		'|confirm
]])

--------------
-- SKINNING --
--------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Hide",{
	author="support@zygorguides.com",
	description="\nHeavy Hide can be gathered from Feralas.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		Kill Yeti enemies around this area
		collect Heavy Hide##4235 |n |goto Feralas/0 55.42,55.01
		You can find more around [53.23,31.81]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Leather",{
	author="support@zygorguides.com",
	description="\nHeavy Leather can be gathered from Feralas.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		Kill Yeti enemies around this area
		collect Heavy Leather##4234 |n |goto Feralas/0 55.42,55.01
		You can find more around [53.23,31.81]
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Hide",{
	author="support@zygorguides.com",
	description="\nMedium Hide can be gathered from Northern Stranglethorn.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		map Northern Stranglethorn/0
		path follow smart; loop on; ants curved; dist 60
		path	41.12,45.22	37.12,38.65	36.53,30.93	35.70,25.83	35.83,19.72
		path	40.54,20.62	45.81,25.41	48.31,30.01	48.22,35.51	42.93,47.42
		Kill enemies around this area
		collect Medium Hide##4232 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Leather",{
	author="support@zygorguides.com",
	description="\nMedium Leather can be gathered from Northern Stranglethorn.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		map Northern Stranglethorn/0
		path follow smart; loop on; ants curved; dist 60
		path	41.10,45.22	37.12,38.65	36.51,30.91	35.72,25.83	35.82,19.72
		path	40.52,20.63	45.81,25.41	48.31,30.01	48.23,35.52	42.93,47.42
		Kill enemies around this area
		collect Medium Leather##2319 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Rugged Leather",{
	author="support@zygorguides.com",
	description="\nRugged Leather can be gathered from Blasted Lands.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		map Blasted Lands/0
		path follow smart; loop on; ants curved
		path	56.81,39.13	57.51,34.01	55.41,31.31	54.60,25.42	50.12,25.02
		path	45.80,20.65	43.72,18.85	48.43,27.63	49.31,33.72	50.91,41.31
		Kill enemies around this area
		collect Rugged Leather##8170 |n
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Leather",{
	author="support@zygorguides.com",
	description="\nThick Leather can be gathered from Badlands.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		kill Nyxondra's Broodling##46916+ 
		collect Thick Leather##4304 |n |goto Badlands/0 11.0,38.2
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Fel Scales",{
	author="support@zygorguides.com",
	description="\nFel Scales can be gathered from Hellfire Peninsula.",
	condition_end=function() return skill('Outland Skinning') >= 50 end,
	},[[
	step
		Kill Quilfang enemies around this area
		collect Fel Scales##25700 |n |goto Hellfire Peninsula/0 22.2,67.1
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Knothide Leather",{
	author="support@zygorguides.com",
	description="\nKnothide Leather can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Outland Skinning') >= 50 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	45.42,5.42	48.72,9.31	50.41,10.62	53.11,13.11	56.41,14.13
		path	60.12,12.33	62.12,10.60	60.73,9.52	58.31,12.11	53.90,12.51
		path	49.72,9.01	49.40,7.92	46.81,4.63
		Kill enemies around this area
		|tip The Razorthorn Flayers are not skinnable.
		collect Knothide Leather##21887 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Clefthoof Leather",{
	author="support@zygorguides.com",
	description="\nThick Clefthoof Leather can be gathered from Nagrand.",
	condition_end=function() return skill('Skinning') >= 50 end,
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved; dist 60
		path	51.50,31.83	50.27,37.94	52.91,43.28	55.61,45.34	60.04,45.90
		path	64.48,47.74	67.05,52.32
		collect Thick Clefthoof Leather##25708 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Borean Leather",{
	author="support@zygorguides.com",
	description="\nBorean Leather can be gathered from Sholazar Basin.",
	condition_end=function() return skill('Northrend Skinning') >= 50 end,
	},[[
	step
		map Sholazar Basin/0
		path follow smart; loop on; ants curved; dist 60
		path	28.81,55.95	29.72,51.64	31.13,46.44	 32.23,40.46	28.63,42.95
		path	25.60,47.92	23.52,52.32	22.61,58.71	22.62,65.30	22.31,70.23
		path	26.42,72.73	28.91,69.11	29.60,64.41
		Kill enemies around this area
		collect Borean Leather##33568 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Nerubian Chitin",{
	author="support@zygorguides.com",
	description="\nShal'dorei Silk can be gathered from Icecrown.",
	condition_end=function() return skill('Legion Skinning') >= 50 end,
	},[[
	step 
		map Icecrown/0
		path follow smart; loop on; ants curved; dist 30
		path	84.27,78.64	83.61,75.99	83.34,73.19	84.06,72.29	85.45,74.02
		path	85.00,75.97	84.91,77.25	85.14,78.85
		Kill enemies around this area
		collect Nerubian Chitin##38558 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Blackened Dragonscale",{
	author="support@zygorguides.com",
	description="\nBlackened Dragonscale can be gathered from Twilight Highlands in Eastern Kingdoms.",
	condition_end=function() return skill('Cataclysm Skinning') >= 50 end,
	},[[
	step
		Kill enemies around this area
		|tip Be sure to target the enemies flying as well.
		|tip Loot and skin them once they are defeated.
		collect Blackened Dragonscale##52979 |n |goto Twilight Highlands/0 65.48,74.22
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Savage Leather",{
	author="support@zygorguides.com",
	description="\nSavage Leather can be gathered from Twilight Highlands.",
	condition_end=function() return skill('Cataclysm Skinning') >= 50 end,
	},[[
	step
		map Twilight Highlands/0
		path follow smart; loop on; ants curved
		path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
		path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
		path	62.71,10.41	64.61,12.82
		Kill enemies around this area
		collect Savage Leather##52976 |n
		'|confirm
]])

---------------
-- TAILORING --
---------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Mageweave Cloth",{
	author="support@zygorguides.com",
	description="\nMageweave Cloth can be gathered from southwestern Eastern Plaguelands.",
	},[[
	step
		Kill Death's Step enemies around this area
		collect Mageweave Cloth##4338 |n |goto Eastern Plaguelands/0 18.16,78.47
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wool Cloth",{
	author="support@zygorguides.com",
	description="\nWool Cloth can be gathered from the eastern Wetlands.",
	},[[
	step
		Kill enemies around this area
		|tip Look for Dragonmaw Whelpstealers and Ebon Slavehunters.
		collect Wool Cloth##2592 |n |goto Wetlands/0 66.26,46.87
		'|confirm
]])

------------------------
-- Elemental Reagents --
------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Essence of Air",{
	author="support@zygorguides.com",
	description="\nEssence of Air can be gathered from Silithus.",
	},[[
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |condition ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		kill Dust Stormer##11744+
		collect Essence of Air##7082 |n |goto Silithus/0 38.14,18.34
		You can find more around [28.89,27.01]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Essence of Earth",{
	author="support@zygorguides.com",
	description="\nEssence of Earth can be gathered from Molten Core or Winterspring.",
	},[[
	step
		Kill enemies around this area
		|tip Giants and rock-type elementals can drop Essence of Earth.
		|tip Kill mobs throughout the instance.
		collect Essence of Earth##7076 |n |goto Molten Core/1 00.00,00.00
		Click Here to Farm in Winterspring |confirm
	step
		kill Frostshard Rumbler##48960+
		collect Essence of Earth##7076 |n |goto Winterspring/0 59.56,59.10
		Click Here to Farm in Molten Core (Best) |confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Essence of Fire",{
	author="support@zygorguides.com",
	description="\nEssence of Fire can be gathered from Molten Core.",
	},[[
	step
		Kill enemies around this area
		|tip All mobs but Corehounds can drop Essence of Fire.
		|tip Kill mobs throughout the instance.
		collect Essence of Fire##7078 |n |goto Molten Core/1 00.00,00.00
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Essence of Undeath",{
	author="support@zygorguides.com",
	description="\nEssence of Undeath can be gathered from Winterspring.",
	},[[
	step
		Kill enemies around this area
		|tip Undead enemies can drop Essence of Undeath.
		collect Essence of Undeath##12808 |n |goto Winterspring/0 50.64,54.89
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Essence of Water",{
	author="support@zygorguides.com",
	description="\nEssence of Water can be gathered from Swamp of Sorrows or Winterspring.",
	},[[
	step
	label "Collect_Essence_Of_Water_Swamp_of_Sorrows"
		kill Purespring Elemental##46953+
		collect Essence of Water##7080 |n |goto Swamp of Sorrows/0 18.21,58.05
		Click Here to Farm in Winterspring |confirm
	step
		kill Ice Avatar##50250+
		collect Essence of Water##7080 |n |goto Winterspring/0 61.96,86.15
		Click Here to Farm in Swamp of Sorrows (Best) |confirm |next "Collect_Essence_Of_Water_Swamp_of_Sorrows"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Living Essence",{
	author="support@zygorguides.com",
	description="\nLiving Essence can be gathered from Blasted Lands.",
	},[[
	step
		talk Zidormi##88206
		Ask her _"Show me the Blasted Lands before the invasion."_
		Travel to the Past |condition ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28
	step
		kill Felspore Bog Lord##45125+
		collect Living Essence##12803 |n |goto 33.02,78.31
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Air",{
	author="support@zygorguides.com",
	description="\nPrimal Air can be gathered from Shadowmoon Valley, Outland.",
	},[[
	step
	label "Start"
		map Shadowmoon Valley/0
		path follow smart; loop off; ants curved; dist 30
		path	55.53,72.49	59.06,69.81	61.40,66.56	62.46,62.66	61.26,59.46
		path	57.67,56.49	59.53,53.73	63.10,55.41	65.02,57.56	65.87,62.28
		path	63.43,60.68
		kill Enraged Air Spirit##21060+
		|tip Follow the path, killing any that you see.
		collect Mote of Air##22572 |n
		|tip Combine 10 Motes of Air into 1 Primal Air.
		'|goto 63.43,60.68 < 30 |c |noway
	step
		map Shadowmoon Valley/0
		path follow smart; loop off; ants curved; dist 30
		path	62.59,62.13	61.28,67.03	59.70,69.75	55.35,71.72
		kill Enraged Air Spirit##21060+
		|tip Follow the path, killing any that you see.
		collect Mote of Air##22572 |n
		|tip Combine 10 Motes of Air into 1 Primal Air.
		'|goto 55.35,71.72 < 30 |c |noway |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Earth",{
	author="support@zygorguides.com",
	description="\nPrimal Earth can be gathered from Nagrand.",
	},[[
	step
	label "Start"
		map Nagrand/0
		path follow smart; loop off; ants curved; dist 30
		path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
		path	28.40,73.85	28.94,66.76	28.17,63.58
		kill Shattered Rumbler##17157+
		|tip Follow the path, killing any that you see.
		collect Mote of Earth##22573 |n
		|tip Combine 10 Motes of Earth into 1 Primal Earth.
		'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
	step
		map Nagrand/0
		path follow smart; loop off; ants curved; dist 30
		path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
		path	40.31,82.83	41.98,78.72	46.19,77.20
		kill Shattered Rumbler##17157+
		|tip Follow the path, killing any that you see.
		collect Mote of Earth##22573 |n
		|tip Combine 10 Motes of Earth into 1 Primal Earth.
		'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Fire",{
	author="support@zygorguides.com",
	description="\nPrimal Fire can be gathered from Hellfire Peninsula.",
	},[[
	step
		kill Incandescent Fel Spark##22323+
		collect Mote of Fire##22574 |n |goto Hellfire Peninsula/0 62.21,19.21
		|tip Combine 10 Motes of Fire into 1 Primal Fire.
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Life",{
	author="support@zygorguides.com",
	description="\nPrimal Life can be gathered from The Underbog in Outland.",
	},[[
	step
		Kill enemies around this area
		|tip Enter the Underbog instance.
		|tip Kill all enemies up to Hungarfen.
		|tip Do not kill Hungarfen.
		|tip Run out and reset the instance before repeating.
		|tip Reset the instance by right-clicking your character portrait and clicking "Reset all instances."
		collect Mote of Life##22575 |n
		|tip Combine 10 Motes of Life into one Primal Life.
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Mana",{
	author="support@zygorguides.com",
	description="\nPrimal Mana can be gathered from the Netherstorm in Outland.",
	},[[
	step
		Kill enemies around this area
		map Netherstorm/0
		path follow smart; loop on; ants curved
		path	55.84,86.20	55.35,87.01	54.65,87.87	54.99,88.71	54.71,89.47
		path	55.95,89.43	57.09,87.92	57.19,86.41
		collect Mote of Mana##22576 |n
		|tip Combine 10 Motes of Mana into one Primal Mana.
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Shadow",{
	author="support@zygorguides.com",
	description="\nPrimal Shadow can be gathered from Hellfire Peninsula.",
	},[[
	step
	label "Start"
		map Hellfire Peninsula/0
		path follow smart; loop off; ants curved; dist 30
		path	76.12,63.56	77.61,68.71	79.80,79.02
		Kill enemies around this area
		|tip Follow the path, killing any Collapsing Voidwalkers and Vacillating Voidcallers that you see.
		collect Mote of Shadow##22577 |n
		|tip Combine 10 Motes of Shadow into 1 Primal Shadow.
		'|goto 79.80,79.02 < 30 |c |noway
	step
		map Hellfire Peninsula/0
		path follow smart; loop off; ants curved; dist 30
		path	79.80,79.02	77.61,68.71	76.12,63.56
		Kill enemies around this area
		|tip Follow the path, killing any Collapsing Voidwalkers and Vacillating Voidcallers that you see.
		collect Mote of Shadow##22577 |n
		|tip Combine 10 Motes of Shadow into 1 Primal Shadow.
		'|goto 76.12,63.56 < 30 |c |noway |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Water",{
	author="support@zygorguides.com",
	description="\nPrimal Water can be gathered from Black Temple or Skettis, Terrokar Forest.",
	},[[
	step
	label "Collect_Mote_Of_Water_Black_Temple"
		Kill Aqueous enemies around this area
		|tip Kill them up to High Warlord Naj'entus.
		|tip DO NOT kill him or the mobs won't respawn on reset.
		|tip When finished clearing, zone out and reset the instance.
		|tip You can do this by right-clicking your portrait and selecting "Reset all instances."
		|tip You can reset up to 10 times per hour.
		collect Mote of Water##22578 |n |goto Black Temple/2 0.00,0.00
		|tip Combine 10 Motes of Water into 1 Primal Water.
		Click Here to Farm in Skettis, Terrokar Forest |confirm
	step
		kill Skettis Surger##21728+
		|tip They swim in the water all around this island.
		collect Mote of Water##22578 |n |goto Terokkar Forest/0 66.14,77.88
		|tip Combine 10 Motes of Water into 1 Primal Water.
		Click Here to Farm in Black Temple (Best) |confirm |next "Collect_Mote_Of_Water_Black_Temple"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Air",{
	author="support@zygorguides.com",
	description="\nEternal Air can be gathered from Borean Tundra in Northrend.",
	},[[
	step
		kill Enraged Tempest##25415+
		collect Eternal Air##35623 |n |goto Borean Tundra/0 45.24,10.09
		|tip Combine 10 Crystallized Air into one Eternal Air.
		You can find more around here [42.81,8.19]
		You can find more around here [42.86,10.29]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Earth",{
	author="support@zygorguides.com",
	description="\nEternal Earth can be gathered from Howling Fjord in Northrend.",
	},[[
	step
		Kill enemies around this area
		|tip Check all around the area, including the caves above.
		collect Eternal Earth##35624 |n |goto Howling Fjord/0 73.29,73.38
		|tip Combine 10 Crystallized Earth into one Eternal Earth.
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Fire",{
	author="support@zygorguides.com",
	description="\nEternal Fire can be gathered from The Storm Peaks in Northrend.",
	},[[
	step
		Enter the cave |goto The Storm Peaks/0 62.45,41.33
		kill Wailing Winds##30450 +
		collect Eternal Fire##36860 |goto 61.34,39.39 |n
		|tip Combine 10 Crystallized Fire into one Eternal Fire.
		'|confirm
]])

--@@TRIALGUIDE
ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Life",{
	author="support@zygorguides.com",
	description="\nEternal Life can be gathered from the Howling Fjord in Northrend.",
	},[[
	step
		kill Thornvine Creeper##23874+
		collect Eternal Life##35625 |n |goto Howling Fjord/0 53.40,16.60
		|tip Combine 10 Crystallized Life into one Eternal Life.
		You can find more around here [52.52,18.73]
		You can find more around here [54.66,19.78]
		You can find more around here [55.22,16.30]
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Shadow",{
	author="support@zygorguides.com",
	description="\nEternal shadow can be gathered from Dragonblight in Northrend.",
	},[[
	step
		Enter the cave |goto Dragonblight/0 74.61,23.24 < 10
		kill Deathbringer Revenant##27382+ 
		collect Eternal Shadow##35627 |n |goto 75.06,20.80
		|tip Combine 10 Crystallized Shadow into one Eternal Shadow.
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Water",{
	author="support@zygorguides.com",
	description="\nEternal Water can be gathered from Dragonblight in Northrend.",
	},[[
	step
		kill Ice Revenant##26283+
		collect Eternal Water##35622 |n |goto Dragonblight/0 67.43,52.76
		|tip Combine 10 Crystallized Water into one Eternal Water.
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Air",{
	author="support@zygorguides.com",
	description="\nVolatile Air can be gathered from the Vortex Pinnacle in Uldum.",
	},[[
	step
		Kill enemies around this area
		|tip Reset the instance as needed.
		collect Volatile Air##52328 |n |goto The Vortex Pinnacle/1 0.00,0.00
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Earth",{
	author="support@zygorguides.com",
	description="\nVolatile Earth can be gathered from Mount Hyjal in Kalimdor.",
	},[[
	step
		map Mount Hyjal/0
		path follow smart; loop on; ants curved
		path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
		path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
		kill Scalding Rock Elemental##40229+
		collect Volatile Earth##52327 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Fire",{
	author="support@zygorguides.com",
	description="\nVolatile Fire can be gathered from Twilight Highlands in Eastern Kingdoms.",
	},[[
	step
		map Twilight Highlands/0
		path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
		path	41.01,24.19	42.15,25.19
		kill Unbound Emberfiend##48016+
		collect Volatile Fire##52325 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Life",{
	author="support@zygorguides.com",
	description="\nVolatile Life can be gathered from Uldum.",
	},[[
	step
		map Uldum/0
		path follow smart; loop on; ants curved; dist 60
		path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
		path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
		path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
		Pick herbs along the path
		|tip Volatile Life is available through the Herbalism profession.
		|tip Alchemists can also Transmute Volatile Life.
		click Whiptail##202752+
		collect Volatile Life##52329 |n
		'|confirm
]])