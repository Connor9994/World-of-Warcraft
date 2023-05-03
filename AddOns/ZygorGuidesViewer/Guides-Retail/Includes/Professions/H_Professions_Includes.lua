if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

---------------------
------ Alchemy ------
---------------------

ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
		talk Yelmak##3347 |goto Orgrimmar 55.7,45.7
]])

ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
		talk Kor'geld##3348 |goto Orgrimmar 55.4,46.1
]])

-------------------------
------ Archaeology ------
-------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
		talk Belloc Brightblade##47571 |goto Orgrimmar 49.0,70.7
]])

---------------------------
------ Blacksmithing ------
---------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
		talk Rogg##37072 |goto Orgrimmar 44.4,77.3
]])

ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
		talk Punra##46359 |goto Orgrimmar 45.0,77.1
]])

---------------------
------ Cooking ------
---------------------

ZygorGuidesViewer:RegisterInclude("Orgrimmar_Cooking_Trainer",[[
		talk Marogg##42506 |goto Orgrimmar/1 56.53,62.49
]])

ZygorGuidesViewer:RegisterInclude("Old_Dalaran_Cooking_Trainer",[[
		talk Awilo Lon'gomba##29631 |goto Dalaran/1 70.06,38.80
		|tip He walks around inside the building.
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
		talk Suja##46708 |goto Orgrimmar 56.4,61.3
]])

ZygorGuidesViewer:RegisterInclude("trainer_Cooking_MoP",[[
		talk Sungshin Ironpaw##64231 |goto Valley of the Four Winds 53.6,51.2
]])

------------------------
------ Enchanting ------
------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
		talk Godan##3345 |goto Orgrimmar 53.4,49.3
]])

-------------------------
------ Engineering ------
-------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
		talk Roxxik##11017 |goto Orgrimmar 56.9,56.4
]])

-----------------------
------ First Aid ------
-----------------------

ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
		talk Krenk Choplimb##45540 |goto Orgrimmar 37.1,87.2
]])

---------------------
------ Fishing ------
---------------------

ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
		talk Lumak##3332 |goto Orgrimmar 66.5,41.5
]])

-----------------------
------ Herbalism ------
-----------------------

ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
		talk Muraga##46741 |goto Orgrimmar 54.7,50.5
]])

ZygorGuidesViewer:RegisterInclude("trainer_HerbalismUC",[[
		talk Martha Alliestar##4614 |goto Undercity 54.0,49.6
]])

ZygorGuidesViewer:RegisterInclude("PB_SL_ER_Path",[[
	--Preacebloom // Silverleaf // Earthroot
	map Durotar
	path follow loose;loop;ants straight;dist 60
	path 46.2,17.1		38.8,16.2		38.7,22.1
	path 37.9,30.4		48.5,32.8		51.4,36.5
	path 51.7,52.0		53.6,62.4		55.6,69.7
	path 60.9,69.1		60.7,58.0		57.6,46.9
	path 55.0,32.4		57.8,26.1		53.4,12.5
]])

ZygorGuidesViewer:RegisterInclude("GM_KB_LR_WS_Path",[[
	--Gravemoss // Kingsblood // Liferoot // Wild Steelbloom
	map Northern Stranglethorn
	path follow loose;loop;ants straight;dist 70
	path 64.2,25.4		63.9,39.4		56.2,43.2
	path 42.5,43.9		35.9,32.9		31.5,37.2
	path 23.1,32.3		17.4,24.1
]])

-------------------------
------ Inscription ------
-------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
		talk Nerog##46716 |goto Orgrimmar 55.2,55.7
]])

ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
		talk Moraka##46718 |goto Orgrimmar 55.4,56.0
]])

---------------------------
------ Jewelcrafting ------
---------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
		talk Lugrah##46675 |goto Orgrimmar 72.5,34.5
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
		talk Marith Lazuria##50482 |goto Orgrimmar 72.4,34.6
]])

----------------------------
------ Leatherworking ------
----------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
		talk Karolek##3365 |goto Orgrimmar 60.9,54.9
]])

ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
		talk Tamar##3366 |goto Orgrimmar 60.3,54.3
]])

--------------------
------ Mining ------
--------------------

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		talk Makaru##3357 |goto Orgrimmar 72.3,35.0
]])

ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
		talk Gorina##3358 |goto Orgrimmar 72.7,34.8
]])

ZygorGuidesViewer:RegisterInclude("Copper_Path",[[
	--Copper Ore Path
	map Durotar
	path	38.9,16.0	37.5,21.1	35.9,34.4
	path	36.8,52.3	44.2,49.5	50.6,46.3
	path 	50.7,63.3	54.9,67.0	56.2,49.8
	path 	55.0,36.9	53.0,29.7	57.9,30.0
	path 	54.8,19.0	50.0,17.2	44.2,23.6
]])

ZygorGuidesViewer:RegisterInclude("Tin_Path",[[
	--Tin Ore Path
	map Ashenvale
	path	82.0,50.2	78.8,44.9	67.1,45.8
	path 	61.9,42.6	59.5,37.5	54.5,37.1
	path 	53.5,48.2	49.5,54.7	45.5,47.5
	path 	41.8,40.3	40.1,32.4	38.2,30.3
	path 	34.6,33.3	33.6,28.5	33.0,22.5
	path 	25.4,19.3	21.0,19.1	16.6,15.7
	path 	14.1,13.1	17.0,23.7	17.3,28.2
	path 	16.5,36.6	19.5,45.7	18.8,55.4
	path 	23.4,50.2	25.4,54.2	25.7,60.4
	path 	29.9,58.1	31.8,64.7	33.1,70.3
	path 	38.8,62.7	42.0,64.2	55.6,68.4
	path 	62.7,64.6	67.0,69.1	75.6,69.2
	path 	82.4,71.8	86.5,79.1	90.1,76.6
]])

ZygorGuidesViewer:RegisterInclude("Silver_Tin_Path",[[
	--Silver Ore Path
	map Northern Stranglethorn
	path follow loose;loop;ants straight;dist 60
	path	44.9,19.0	37.5,14.8	34.4,17.3
	path	17.1,22.6	23.7,32.3	30.6,36.3
	path	34.7,30.0	38.7,34.4	39.6,43.2
	path	47.0,41.5	44.1,49.7	46.3,52.9
	path	54.2,55.8	60.5,51.8	67.2,49.1
	path	67.3,36.9	66.4,25.8	59.9,18.9
	path	51.0,17.4
]])

----------------------
------ Skinning ------
----------------------

ZygorGuidesViewer:RegisterInclude("trainer_Skinning",[[
		talk Thuwd##7088 |goto Orgrimmar 61.1,54.8
]])

ZygorGuidesViewer:RegisterInclude("Ruined_Light_Leather",[[
	map Durotar
	path follow loose;loop;ants straight;dist 60
	path	44.1,20.6	45.7,23.8	45.1,31.2
	path	45.5,37.6	45.0,44.4	41.1,46.6
	path	36.9,45.2	36.0,34.8	38.0,25.2
	path	41.9,19.4
]])

-----------------------
------ Tailoring ------
-----------------------

ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
		talk Magar##3363 |goto Orgrimmar 60.8,59.1
]])

ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
		talk Borya##3364 |goto Orgrimmar 60.7,58.7
]])

------------
-- Anvils --
------------

ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
		Stand at this Anvil |goto Orgrimmar 44.7,78.0
]])

ZygorGuidesViewer:RegisterInclude("maincity_forge2",[[
		Stand at this forge |goto Orgrimmar 75.7,34.6
]])