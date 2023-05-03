if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

---------------------
------ Alchemy ------
---------------------

ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
		talk Lilyssia Nightbreeze##5499 |goto Stormwind City,55.7,86.1
]])

ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
		talk Maria Lumere##1313 |goto Stormwind City 55.9,85.6
]])

-------------------------
------ Archaeology ------
-------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
		talk Harrison Jones##44238 |goto Stormwind City,85.8,25.9
]])

---------------------------
------ Blacksmithing ------
---------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
		talk Therum Deepforge##5511 |goto Stormwind City 63.7,37.0
]])

ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
		talk Kaita Deepforge##5512 |goto Stormwind City 63.3,37.8
]])

---------------------
------ Cooking ------
---------------------

ZygorGuidesViewer:RegisterInclude("Stormwind_Cooking_Trainer",[[
		talk Stephen Ryback##5482 |goto Stormwind City/0 77.29,53.22
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Old_Dalaran_Cooking_Trainer",[[
		talk Katherine Lee##28705 |goto Dalaran/1 40.53,65.62
		|tip She walks around the table.
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
		talk Erika Tate##5483 |goto Stormwind City 77.6,53.1
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking_Dalaran",[[
		talk Katherine Lee##28705 |goto Dalaran 41.6,64.6
]])

------------------------
------ Enchanting ------
------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
		talk Lucan Cordell##1317 |goto Stormwind City,52.9,74.5
]])

-------------------------
------ Engineering ------
-------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
		talk Lilliam Sparkspindle##5518 |goto Stormwind City,62.8,32.0
]])

-----------------------
------ First Aid ------
-----------------------

ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
		talk Angela Leifeld##56796 |goto Stormwind City 52.2,45.4
]])

---------------------
------ Fishing ------
---------------------

ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
		talk Arnold Leland##5493 |goto Stormwind City 54.8,69.6
]])

ZygorGuidesViewer:RegisterInclude("vendor_Fishing",[[
		talk Catherine Leland##5494 |goto Stormwind City 55.0,69.7
]])

-----------------------
------ Herbalism ------
-----------------------

ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
		talk Tannysa##5566 |goto Stormwind City 54.3,84.1
]])

-------------------------
------ Inscription ------
-------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
		talk Catarina Stanford##30713 |goto Stormwind City,49.8,74.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
		talk Stanly McCormick##30730 |goto Stormwind City 49.6,74.9
]])

---------------------------
------ Jewelcrafting ------
---------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
		talk Theresa Denman##44582 |goto Stormwind City 63.5,61.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
		talk Terrance Denman##44583 |goto Stormwind City 63.2,61.7
]])

----------------------------
------ Leatherworking ------
----------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
		talk Simon Tanner##5564 |goto Stormwind City,71.7,63.0
]])

ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
		talk Jillian Tanner##5565 |goto Stormwind City,71.6,62.8
]])

--------------------
------ Mining ------
--------------------

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		talk Gelman Stonehand##5513 |goto Stormwind City,59.6,37.6
]])

ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
		talk Brooke Stonebraid##5514 |goto Stormwind City 59.2,37.5
]])

ZygorGuidesViewer:RegisterInclude("Copper_Path",[[
	--Copper Ore Path
	map Elwynn Forest
	path follow loose;loop;ants straight;dist 30
	path	32.8,50.5	30.2,58.2	28.3,64.8
	path	25.6,70.3	21.4,74.5	23.1,82.5
	path	31.5,78.1	37.5,71.4	38.2,82.5
	path	49.7,84.8	57.3,80.8	61.7,75.2
	path	67.3,72.2	70.2,66.1	73.7,56.0
	path	73.8,48.2	80.5,54.8	80.0,46.1
	path	77.5,38.1	71.4,38.5	64.7,37.9
	path	63.3,46.2	62.0,53.0	55.1,56.0
	path	49.9,60.4	46.2,53.9	43.2,48.7
	path	37.2,51.9
]])

ZygorGuidesViewer:RegisterInclude("Tin_Path",[[
	--Tin Ore Path	// Silver
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
		talk Maris Granger##1292 |goto Stormwind City,72.2,62.2
]])

-----------------------
------ Tailoring ------
-----------------------

ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
		talk Georgio Bolero##1346 |goto Stormwind City,53.1,81.3
]])

ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
		talk Alexandra Bolero##1347 |goto Stormwind City 53.1,81.8
]])

------------
-- Anvils --
------------

ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
		Stand next to this anvil |goto Stormwind City 63.6,37.0
]])