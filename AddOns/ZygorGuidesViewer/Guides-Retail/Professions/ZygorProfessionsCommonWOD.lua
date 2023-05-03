local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"

---------------
-- HERBALISM --
---------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fireweed",{
	author="support@zygorguides.com",
	description="\nFireweed can be gathered from Frostfire Ridge.",
	condition_end=function() return skill('Draenor Herbalism') >= 50 end,
	},[[
	step
	label "Start"
		map Frostfire Ridge/0
		path follow smart; loop off; ants curved
		path	44.19,14.29	42.67,14.08	42.28,16.20	42.29,18.90
		click Fireweed##228572+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		|tip They spawn in areas with lava.
		collect Fireweed##109125 |n
		'|goto 42.29,18.90 < 20 |noway |c
	step
		map Frostfire Ridge/0
		path follow smart; loop off; ants curved
		path	34.88,12.57	33.92,13.98	32.42,16.14	31.90,17.97	34.02,22.09
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto 34.02,22.09 < 20 |noway |c
	step
		map Frostfire Ridge/0
		path follow smart; loop off; ants curved
		path	18.73,32.12	17.91,31.93	17.18,33.28
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto 17.18,33.28 < 20 |noway |c
	step
		map Frostfire Ridge/2
		path follow smart; loop off; ants curved
		path	48.50,76.76	51.22,90.18
		map Frostfire Ridge/0
		path	29.06,45.14	30.74,45.15	31.64,43.56	33.00,41.98	35.53,41.38
		path	36.00,39.11	37.38,37.84	38.84,36.39	39.70,35.11	41.64,34.54
		path	41.87,36.94	41.45,39.78	41.08,42.07	40.75,46.67	43.05,45.49
		path	46.43,44.92
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto 46.43,44.92 |noway |c
	step
		map Frostfire Ridge/0
		path follow smart; loop off; ants curved
		map Frostwall/0
		path	81.18,3.65
		map Frostfire Ridge/0
		path	50.73,59.23	49.83,58.91	47.01,59.80	42.79,64.33	43.12,66.19
		map Frostwall/0
		path	15.85,54.38
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto 15.85,54.38 < 20 |noway |c
	step
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto Frostfire Ridge/0 60.36,71.19 < 20 |c
	step
		map Frostfire Ridge/0
		path follow smart; loop off; ants curved
		path	71.16,50.49	70.96,47.57	70.70,44.42	70.26,42.80	70.54,41.17
		path	70.13,39.70
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto 70.13,39.70 < 20 |noway |c
	step
		map Frostfire Ridge/0
		path follow smart; loop off; ants curved
		path	69.32,30.69	70.68,29.76	70.38,28.18	70.38,25.93	70.71,23.11
		click Fireweed##228572+
		|tip They spawn in areas with lava.
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Fireweed##109125 |n
		'|goto 70.71,23.11 < 20 |noway |c |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Frostweed",{
	author="support@zygorguides.com",
	description="\nFrostweed can be gathered from Frostfire Ridge in Draenor.",
	condition_end=function() return skill('Draenor Herbalism') >= 50 end,
	},[[
	step
		map Frostfire Ridge/0
		path follow smart; loop on; ants curved
		path	39.75,56.25	38.93,55.23	37.78,55.26	36.55,51.77	34.36,49.69
		path	31.95,50.13	29.52,49.18	26.89,48.04	25.09,47.58	25.72,49.46
		path	24.29,49.81	23.65,47.38	21.86,44.86	20.82,43.50	21.10,41.54
		path	20.79,39.71	20.69,36.88	21.45,34.39	22.62,32.16	21.90,29.85
		path	21.05,27.40	20.58,24.81	22.94,23.24	23.22,18.92	24.02,16.42
		path	23.64,13.38	24.12,11.11	25.67,10.58	26.96,10.30	28.06,11.12
		path	28.36,14.35	28.19,16.70	28.72,19.35	29.92,21.48	31.54,21.86
		path	32.79,24.25	32.52,26.60	34.42,28.30	35.83,30.78	37.83,30.56
		path	40.01,30.13	42.24,30.39	44.15,31.27	45.29,30.19	45.83,27.93
		path	46.14,24.79	45.90,23.22	45.07,21.65	44.65,19.20	45.27,17.12
		path	46.65,17.52	48.20,17.05	49.97,17.34	50.46,19.91	50.53,22.85
		path	50.63,27.63	52.38,29.48	53.83,29.49	53.95,31.95	53.70,34.83
		path	53.91,38.00	53.48,40.12	51.52,42.22
		path	49.75,45.34	47.85,47.84	46.02,49.01	45.90,53.48	44.93,55.49
		path	44.07,57.16
		click Frostweed##233117+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		|tip Enter caves if you see nodes underground.
		collect Frostweed##109124 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Gorgrond Flytrap",{
	author="support@zygorguides.com",
	description="\nGorgrond Flytrap can be gathered from Gorgrond in Draenor.",
	condition_end=function() return skill('Draenor Herbalism') >= 50 end,
	},[[
	step
		map Gorgrond/0
		path follow smart; loop on; ants curved
		path	50.74,75.90	51.37,76.00	52.44,75.65	53.28,75.73	53.54,74.60
		path	54.11,72.74	54.38,71.31	54.15,69.77	53.57,68.26	54.26,66.19
		path	55.37,64.95	56.60,64.02	58.08,64.23	59.59,64.16	59.96,65.00
		path	60.30,66.54	61.27,66.23	61.79,65.19	62.03,63.39	61.67,62.74
		path	61.09,62.59	61.12,60.94	60.52,59.46	60.06,58.24	60.08,57.62
		path	59.72,57.40	58.30,58.54	56.70,59.53	55.86,61.20	56.00,62.74
		path	54.72,63.29	54.07,61.99	52.64,61.83	52.22,63.35	52.62,64.86
		path	51.94,65.91	51.05,64.45	50.61,63.65	49.92,64.54	49.13,66.33
		path	48.57,67.94	47.90,69.16	47.37,70.70	46.25,71.85	45.85,73.02
		path	45.86,75.06	45.72,77.18	46.77,79.14	47.56,79.40	48.54,78.41
		path	49.11,76.88	49.90,76.22
		click Gorgrond Flytrap##228573+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Gorgrond Flytrap##109126 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Nagrand Arrowbloom",{
	author="support@zygorguides.com",
	description="\nNagrand Arrowbloom can be gathered from Nagrand in Draenor.",
	condition_end=function() return skill('Draenor Herbalism') >= 50 end,
	},[[
	step
		map Nagrand D/0
		path follow loose; loop; ants curved
		path	87.80,65.20	87.40,63.10	86.40,61.40	84.70,60.50	84.30,60.10
		path	84.40,58.10	83.90,57.80	83.70,56.60	83.30,53.80	84.00,51.90
		path	84.60,50.10	82.50,47.70	81.30,46.10	80.80,43.40	80.20,38.60
		path	77.60,35.90	76.10,35.00	76.50,32.10	76.40,30.30	75.70,29.80
		path	74.20,29.70	73.50,29.70	73.00,28.50	73.20,27.00	74.20,25.10
		path	74.30,22.70	73.90,21.60	73.20,20.80	71.60,19.00	70.80,19.30
		path	69.50,21.10	69.20,22.10	66.40,23.40	66.40,26.10	65.70,29.50
		path	65.00,32.50	64.10,35.10	64.30,35.60	65.30,36.40	65.20,37.20
		path	64.00,40.00	64.30,38.90	63.30,41.80	62.70,42.50	60.40,43.00
		path	58.90,42.70	58.70,44.50	58.10,47.00	56.50,48.70	54.10,49.10
		path	51.80,46.60	50.80,47.00	50.80,48.70	49.50,50.20	47.80,49.40
		path	46.70,48.40	45.90,49.00	44.30,50.00	43.00,51.40	43.60,54.00
		path	44.50,54.40	46.00,55.30	47.20,54.80	49.20,54.20	50.80,53.70
		path	53.00,55.00	53.80,58.10	53.30,60.30	53.30,63.00	53.30,66.50
		path	53.30,67.50	53.80,68.20	55.90,69.60	56.70,69.10	57.30,67.10
		path	59.80,66.30	60.80,64.10	60.70,60.80	60.30,56.80	59.10,53.10
		path	59.10,50.80	60.20,50.30	61.10,50.30	62.00,52.20	62.80,51.80
		path	63.80,49.70	63.60,47.60	63.40,46.20	65.80,44.40	68.50,45.30
		path	68.50,46.70	71.50,48.50	72.80,49.50	71.30,53.70	71.00,56.50
		path	72.40,57.60	75.40,57.50	77.20,58.60	78.20,63.40	80.40,66.20
		path	84.10,68.10	86.30,67.50
		click Nagrand Arrowbloom##228575+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Nagrand Arrowbloom##109128 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Starflower",{
	author="support@zygorguides.com",
	description="\nStarflower can be gathered from Shadowmoon Valley in Draenor.",
	condition_end=function() return skill('Draenor Herbalism') >= 50 end,
	},[[
	step
		map Shadowmoon Valley D/0
		path follow smart; loop off; ants curved
		path	35.00,47.28	36.41,48.40	37.26,50.26	39.70,48.76	41.68,48.14
		path	43.24,49.48	44.89,49.65	46.04,45.18	43.04,44.73	41.13,41.36
		path	39.64,39.51	40.05,34.47	42.07,30.85	46.25,27.93	48.12,28.94
		path	50.20,30.53	49.42,34.13	50.94,37.33	52.28,38.79	53.21,41.56
		path	53.91,44.58	54.18,47.70	53.34,49.96	51.68,51.74	49.65,52.65
		path	48.86,56.42	49.39,58.65	50.62,60.66	52.12,62.42	52.59,65.66
		path	52.45,67.89	52.55,70.30	53.90,73.36	54.78,75.12	54.63,77.00
		path	53.06,77.63	51.25,78.76
		click Starflower##228574+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		|tip Theu generally spawn near water.
		collect Starflower##109127 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Talador Orchid",{
	author="support@zygorguides.com",
	description="\nTalador Orchid can be gathered from Talador in Draenor.",
	condition_end=function() return skill('Draenor Herbalism') >= 50 end,
	},[[
	step
		map Talador/0
		path follow smart; loop on; ants curved
		path	57.70,46.90	56.30,49.80	54.20,52.00
		path	52.70,50.30	51.20,51.50	49.40,54.80
		path	46.70,52.60	44.50,53.20	41.50,54.40
		path	39.60,53.60	40.70,57.40	40.50,61.50
		path	39.70,63.20	39.20,67.90	39.40,72.90
		path	41.00,76.80	39.40,81.70	40.30,86.70
		path	42.50,88.40	46.00,87.50	48.10,85.90
		path	52.40,85.10	56.00,84.40	57.90,78.80
		path	59.30,77.50	58.80,74.00	60.30,65.70
		path	63.30,64.90	62.80,59.10	61.30,56.60
		path	59.50,53.00	59.10,48.60
		click Talador Orchid##228576+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		collect Talador Orchid##109129 |n
		'|confirm
]])

--------------
-- SKINNING --
--------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Raw Beast Hide",{
	author="support@zygorguides.com",
	description="\nRaw Beast Hide can be gathered from Nagrand in Draenor.",
	condition_end=function() return skill('Draenor Skinning') >= 50 end,
	},[[
	step
		kill Tamed Clefthoof##79034+
		|tip Kill all Tamed Clefthooves nearby to force them to respawn.
		collect Raw Beast Hide##110609 |n |goto Nagrand D/0 78.79,72.24
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Draenor Skinning 1-100",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Draenor Skinning skill from 1-100.",
	condition_end=function() return skill('Draenor Skinning') >= 100 end,
	condition_suggested=function() return skill('Draenor Skinning') > 0 and skill('Draenor Skinning') < 100 and level >= 90 end,
	},[[
	step
		kill Tamed Clefthoof##79034
		|tip Kill all Tamed Clefthoof nearby to force them to respawn.
		collect 1 A Guide to Skinning in Draenor##111351 |goto Nagrand D/0 78.79,72.24
		|tip This will come from skinning the Tamed Clefthooves.
		|only if skill('Draenor Skinning') < 2
	step
		use A Guide to Skinning in Draenor##111351
		Train Draenor Skinning |skillmax Draenor Skinning,100
		|tip You must be at least level 90.
	step
		kill Tamed Clefthoof##79034
		|tip Kill all Tamed Clefthoof nearby to force them to respawn.
		Reach 100 Draenor Skinning |skill Draenor Skinning,100 |goto 78.79,72.24
	step
		_Congratulations!_
		You Reached 100 Draenor Skinning Skill.
]])