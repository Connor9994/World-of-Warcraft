local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Nazmir (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Vol'dun (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Mechagon Island")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Kelya's Grave")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar Dropped Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\War Campaign")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Arathi Highlands Warfront Extra Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Darkshore Warfront Extra Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Warfronts Introduction Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Advanced Adventurer Augment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Annoy-o-Tron Gang")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Anti-Gravity Pack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Battle Box")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: BAWLD-371")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Beastbot Powerpack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Blue Spraybot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Canned Minnows")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Emergency Powerpack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Emergency Repair Kit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Emergency Rocket Chicken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Encrypted Black Market Radio")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Experimental Adventurer Augment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Extraordinary Adventurer Augment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: G99.99 Landshark")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Green Spraybot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Holographic Digitalization Relay")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Hundred-Fathom Lure")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Mechano-Treat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Mechanocat Laser Pointer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Microbot XD")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Orange Spraybot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Perfectly Timed Differential")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Personal Time Displacer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Protocol Transference Device")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Re-Procedurally Generated Punchcard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Gramophone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Kegerator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Pocket Turret")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Resistance Insignia")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Requisitions")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Scrap Grenade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Scrap Trap")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Scrapmaster's Blowtorch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: S.P.A.R.E. Crate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Ultrasafe Transporter - Mechagon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Utility Mechanoclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Vaultbot Key")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Swiftwind Post (Drustvar)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Wolf's Den (Tiragarde Sound)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Hillcrest Pasture (Stormsong Valley)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Mudfisher Cove (Drustvar)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Stonefist Watch (Tiragarde Sound)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Stonetusk Watch (Stormsong Valley)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Windfall Cavern (Stormsong Valley)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Heart of Azeroth\\Essential Empowerment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Nightborne Race Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Highmountain Tauren Race Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Mag'har Orc Race Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Vulpera Race Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Zandalari Troll Race Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar Loremaster (Story Quest Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Nazmir Loremaster (Story Quest Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Vol'dun Loremaster (Story Quest Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Mysterious Letter Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Blood Elf Heritage Armor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Goblin Heritage Armor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Tauren Heritage Armor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Xal'atath's Gambit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Xal'atath's Gambit - Priest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Hati's Sacrifice")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Before the Storm Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Horrific Vision of Stormwind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Horrific Vision of Orgrimmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Heart of Azeroth\\Magni's Plan")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Exile's Reach (1-10)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Exile's Reach\n"..
"\nquestline.\n",
condition_suggested=function() return level >= 1 and level <= 10 and ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
startlevel=1.0,
endlevel=10.0,
image=ZGV.IMAGESDIR.."BfAIntro",
},[[
step
_On the Deck of the Ship:_
talk Warlord Breka Grimaxe##166573
accept Warming Up##59926
step
_Nearby on the Deck of the Ship:_
kill Combat Dummy##160737
Practice Combat on a Combat Dummy |q 59926/1
step
_Nearby on the Deck of the Ship:_
talk Warlord Breka Grimaxe##166573
turnin Warming Up##59926
step
_Nearby on the Deck of the Ship:_
talk Grunt Throg##166583
accept Stand Your Ground##59927
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
kill Grunt Throg##166583
|tip He runs across the deck of the ship nearby.
Spar with Grunt Throg |q 59927/1
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
talk  Grunt Throg##166583
|tip He walks across the deck of the ship nearby.
turnin Stand Your Ground##59927
accept Brace for Impact##59928
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
talk Warlord Breka Grimaxe##166573
turnin Brace for Impact##59928
step
Reach the Murloc Hideaway |complete subzone("Murloc Hideaway") |q 59929 |future
step
talk Warlord Breka Grimaxe##166782
accept Murloc Mania##59929 |goto Exile's Reach/0 61.88,82.89
step
Kill Murloc enemies around this area
Recover #6# First Aid Kits from Defeated Murlocs |q 59929/1 |goto 60.64,79.50
step
talk Warlord Breka Grimaxe##166782
turnin Murloc Mania##59929 |goto 61.88,82.89
accept Emergency First Aid##59930 |goto 61.88,82.89
step
use the First Aid Kit##168410
|tip Use it on Bo.
Use the First Aid Kit on Bo |q 59930/2 |goto 61.73,83.50
step
use the First Aid Kit##168410
|tip Use it on Mithdran Dawntracker.
Use the First Aid Kit on Mithdran Dawntracker |q 59930/3 |goto 61.37,82.60
step
use the First Aid Kit##168410
|tip Use it on Lana Jordan.
Use the First Aid Kit on Lana Jordan |q 59930/1 |goto 61.55,82.24
step
talk Warlord Breka Grimaxe##166782
turnin Emergency First Aid##59930 |goto 61.88,82.89
accept Finding the Lost Expedition##59931 |goto 61.88,82.89
step
Travel North to Find Any Expedition Survivors |q 59931/1 |goto 58.36,74.47
step
talk Won'sa##166854
turnin Finding the Lost Expedition##59931 |goto 58.36,74.47
step
talk Warlord Breka Grimaxe##166906
accept Cooking Meat##59932 |goto 58.37,74.64
step
Kill enemies around this area
collect 5 Raw Meat##174072 |q 59932/1 |goto 59.47,72.73
step
click Campfire
Cook the Meat on the Campfire |q 59932/2 |goto 58.32,74.58
step
talk Won'sa##166854
turnin Cooking Meat##59932 |goto 58.36,74.47
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Druid
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Druid
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.37,74.63
|only if Druid
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Druid
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Druid
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Hunter
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.86
accept Taming the Wilds##59937 |goto 62.72,69.86
|only if Hunter
step
Watch the dialogue
Learn Tame Beast from Mithdran |q 59937/1 |goto 62.72,69.86
|only if Hunter
step
Tame Any Wildlife Beast |q 59937/2 |goto 61.07,71.37
|tip Use your "Tame Beast" ability on any beast enemy around this area.
|only if Hunter
step
talk Mithdran Dawntracker##166996
turnin Taming the Wilds##59937 |goto 62.72,69.86
|only if Hunter
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Mage
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Mage
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Mage
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Mage
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Mage
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59934 |goto 58.38,74.64
|only if Monk
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Use Tiger Palm #6# Times on Warlord Grimaxe |q 59934/1
Use Blackout Kick #3# Times on Warlord Grimaxe |q 59934/2
|only if Monk
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59934 |goto 58.38,74.64
|only if Monk
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Monk
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Monk
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Paladin
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Paladin
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Paladin
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Paladin
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Paladin
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.37,74.64
|only if Priest
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Priest
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.37,74.64
|only if Priest
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Priest
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Priest
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Rogue
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Rogue
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Rogue
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Rogue
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Rogue
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Shaman
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Shaman
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Shaman
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Shaman
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Shaman
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Warlock
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Warlock
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Warlock
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Warlock
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Warlock
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Warrior
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Warrior
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Warrior
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Warrior
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Warrior
step
talk Mithdran Dawntracker##166996
accept Down with the Quilboar##59938 |goto 62.72,69.86
accept Forbidden Quilboar Necromancy##59939 |goto 62.72,69.86
stickystart "Slay_Quilboars"
step
Follow the path |goto 61.53,62.70 < 20 |only if walking
kill Geolord Grek'og##151091 |q 59938/1 |goto 58.90,63.02
step
label "Slay_Quilboars"
Kill Quilboar enemies around this area
Slay #7# Quilboars |q 59939/1 |goto 61.03,61.27
step
talk Mithdran Dawntracker##166996
turnin Forbidden Quilboar Necromancy##59939 |goto 56.26,59.17
step
talk Cork Fizzlepop##167019
turnin Down with the Quilboar##59938 |goto 56.17,59.12
accept The Choppy Booster Mk. 5##59940 |goto 56.17,59.12
step
Watch the dialogue
clicknpc Choppy Booster Mk 5##167027
Begin Flying with The Choppy Booster Mk. 5 |invehicle |goto 56.05,58.80 |q 59940
step
Watch the dialogue
Use The Choppy Booster Mk. 5 to Scout the Area |q 59940/1 |goto 55.04,54.20 |notravel
step
Watch the dialogue
Return to Cork Fizzlepop |outvehicle |goto 56.07,58.80 |q 59940 |notravel
step
talk Cork Fizzlepop##167019
turnin The Choppy Booster Mk. 5##59940 |goto 56.17,59.12
accept Re-sizing the Situation##59941 |goto 56.17,59.12
step
use the Re-Sizer v9.0.1##178051
|tip Use it on Wandering Boars.
Test the Re-Sizer v9.0.1 on #3# Wandering Boars |q 59941/1 |goto 57.00,58.02
step
talk Warlord Breka Grimaxe##167021
turnin Re-sizing the Situation##59941 |goto 56.25,59.04
step
talk Cork Fizzlepop##167019
accept The Re-Deather##59942 |goto 56.17,59.13
step
clicknpc Choppy Booster Mk 5##167027
Ride The Choppy Booster Mk. 5 |q 59942/1 |goto 56.05,58.80
step
_As You Fly:_
kill 8 Monstrous Cadaver##157091 |q 59942/2
|tip They look like the larger undead enemies on the ground around this area.
|tip Use the ability on your action bar.
step
kill Torgok##162817 |q 59942/3 |goto 51.01,52.80
|tip Inside the building.
step
Watch the dialogue
talk Shuja Grimaxe##167128
turnin The Re-Deather##59942 |goto 52.59,53.35
step
talk Warlord Breka Grimaxe##167212
accept Stocking Up on Supplies##59950 |goto 52.18,55.35
step
talk Provisioner Jin'hake##167213
|tip Buy any item you want that he has for sale.
Purchase Any Item from Provisioner Jin'hake |q 59950/1 |goto 52.46,55.67
step
talk Provisioner Jin'hake##167213
|tip Sell any items in your bags that you don't want.
Sell Any Item to Provisioner Jin'hake |q 59950/2 |goto 52.46,55.67
step
talk Warlord Breka Grimaxe##167212
turnin Stocking Up on Supplies##59950 |goto 52.18,55.35
step
talk Grunt Throg##167216
accept A Paladin's Service##59958 |goto 52.03,55.45
|only if Paladin
step
talk Grunt Throg##167216
accept A Priest's End##59961 |goto 52.04,55.44
|only if Priest
step
Look for the Corpses of the First Expedition Recruits |q 59961/1 |goto 56.10,53.69
|only if Priest
step
talk Sha'zul##167188
turnin A Priest's End##59961 |goto 56.11,53.70
accept Resurrecting the Recruits##59965 |goto 56.11,53.70
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto 56.18,52.99 |count 1
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto 56.25,53.44 |count 2
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto 56.48,53.66 |count 3
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
talk Sha'zul##167188
turnin Resurrecting the Recruits##59965 |goto 56.10,53.69
|only if Priest
step
talk Grunt Throg##167216
accept A Rogue's End##59967 |goto 52.03,55.45
|only if Rogue
step
talk Drizza Sidestabber##167184
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
Tell her _"I'm in. How do I make this poison?"_
Find the First Expedition's Rogue |q 59967/1 |goto 45.64,56.12
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 59967/2 |goto 44.77,56.43 |count 1
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 59967/2 |goto 45.18,55.69 |count 2
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 59967/2 |goto 45.09,54.67 |count 3
|only if Rogue
step
talk Drizza Sidestabber##167184
turnin A Rogue's End##59967 |goto 45.65,56.13
accept The Deadliest of Poisons##59968 |goto 45.65,56.13
|only if Rogue
step
Cast Instant Poison |q 59968/1
|tip Use your "Instant Poison" ability.
|only if Rogue
step
kill Gutgruk the Tough |q 59968/2 |goto 48.85,51.51
|tip He walks around this area along the road.
|only if Rogue
step
talk Grunt Throg##167216
turnin The Deadliest of Poisons##59968 |goto 52.03,55.44
|only if Rogue
step
talk Ghost Wolf##163329
accept A Shaman's Duty##59002 |goto 52.30,55.65
|only if Shaman
step
click Veil Blossom
collect 1 Veil Blossom##174968 |q 59002/1 |goto 52.12,51.65
|only if Shaman
step
click Veil Blossom
collect 2 Veil Blossom##174968 |q 59002/1 |goto 51.86,51.14
|only if Shaman
step
click Veil Blossom
collect 3 Veil Blossom##174968 |q 59002/1 |goto 52.52,51.01
|only if Shaman
step
click Veil Blossom
collect 4 Veil Blossom##174968 |q 59002/1 |goto 53.21,51.37
|only if Shaman
step
click Campfire
Burn the Blossoms on the Campfire |q 59002/2 |goto 52.24,55.53
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto 54.39,58.46 |count 1
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto 55.27,52.80 |count 2
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto 55.40,50.79 |count 3
|only if Shaman
step
talk Ghost Wolf##163329
turnin A Shaman's Duty##59002 |goto 52.30,55.65
|only if Shaman
step
talk Grunt Throg##167216
accept A Warlock's Bargain##59970 |goto 52.03,55.45
|only if Warlock
step
talk Sprag Buzzboom##167478
Choose _<Rise and retrieve the warlock's grimoire and finish the ritual to summon a voidwalker.>_
Investigate the Dead Warlock's Body |q 59970/1 |goto 52.52,45.86
|only if Warlock
step
click Old Grimoire
Recover the Old Grimoire |q 59970/2 |goto 52.60,45.85
|only if Warlock
step
use the Old Grimoire##174947
Summon the Voidwalker with the Grimoire |q 59970/3 |goto 52.60,45.85
|only if Warlock
step
talk Summoned Voidwalker##163246
turnin A Warlock's Bargain##59970 |goto 52.61,45.44
|only if Warlock
step
talk Grunt Throg##167216
accept A Warrior's End##59971 |goto 52.03,55.45
|only if Warrior
step
Follow the path |goto 50.04,54.28 < 20 |only if walking
talk Hjalmar the Undying##162943
|tip He walks around this area on the bridge.
turnin A Warrior's End##59971 |goto 51.48,47.86
accept Hjalmar's Final Execution##59972 |goto 51.48,47.86
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip He walks around this area on the bridge.
Tell him _"I'm ready to fight you, Hjalmar. I'll give you your warrior's death with Execute."_
Slay Hjalmar the Undying with Execute |q 59972/1 |goto 51.48,47.86
|tip Use your "Execute" ability for the final blow to kill him.
|only if Warrior
step
talk Grunt Throg##167216
turnin Hjalmar's Final Execution##59972 |goto 52.03,55.45
|only if Warrior
step
talk Lana Jordan##167221
accept Westward Bound##59948 |goto 52.90,56.45
step
Watch the dialogue
talk Lana Jordan##167225
|tip She runs to this location.
turnin Westward Bound##59948 |goto 51.11,59.51
accept Who Lurks in the Pit##59949 |goto 51.11,59.51
step
Run down the spiral ramp and enter the cave |goto 51.03,60.45 < 7 |walk
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 52.05,60.01 |count 1
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 50.28,58.69 |count 2
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 49.69,61.95 |count 3
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 51.97,60.72 |count 4
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 50.89,58.10 |count 5
step
kill Hrun the Exiled##156900
|tip Inside the cave.
Defeat Hrun to Rescue Crenna Earth-Daughter |q 59949/2 |goto 47.41,60.48
step
Watch the dialogue
|tip Inside the cave.
talk Crenna Earth-Daughter##167250
|tip She will take you out of the cave.
Ride Crenna Earth-Daughter to Escape |q 59949/3 |goto 47.78,60.28
step
talk Warlord Breka Grimaxe##167212
turnin Who Lurks in the Pit##59949 |goto 52.18,55.35
step
talk Crenna Earth-Daughter##166575
accept A Druid's Form##59951 |goto 52.32,55.43
|only if Druid
step
click Druid Stone
Commune with the Druid Stone |q 59951/1 |goto 45.38,49.24
|only if Druid
step
talk Crenna Earth-Daughter##167473
turnin A Druid's Form##59951 |goto 45.50,49.27
|only if Druid
step
talk Shuja Grimaxe##167219
accept The Harpy Problem##59943 |goto 53.79,52.18
step
talk Lightspawn##157114
accept Freeing the Light##54933 |goto 58.19,50.21
step
click Ritual Pedestal
Disperse the First Necrotic Energy |q 54933/1 |goto 57.44,49.69
step
click Ritual Pedestal
Disperse the Second Necrotic Energy |q 54933/2 |goto 58.47,49.17
step
click Ritual Pedestal
Disperse the Third Necrotic Energy |q 54933/3 |goto 58.99,50.66
step
click Ritual Pedestal
Disperse the Fourth Necrotic Energy |q 54933/4 |goto 57.84,51.19
step
talk Daelya Twilightsbane##167179
Ask her _"What does the Light wish of me?"_
Speak with the Ghost Paladin |q 59958/1 |goto 57.57,52.21
|only if Paladin
step
talk Daelya Twilightsbane##167179
turnin A Paladin's Service##59958 |goto 57.57,52.21
accept The Divine's Shield##60174 |goto 57.57,52.21
|only if Paladin
step
Use Divine Shield |q 60174/1
|tip Use your "Divine Shield" ability.
|tip HURRY in the next step.
|only if Paladin
step
click Necrotic Altar
Destroy the Necrotic Altar |q 60174/2 |goto 57.15,52.66
|only if Paladin
step
talk Daelya Twilightsbane##167179
turnin The Divine's Shield##60174 |goto 57.57,52.21
|only if Paladin
step
Watch the dialogue
talk Lightspawn##157114
turnin Freeing the Light##54933 |goto 58.19,50.21
step
talk Bo##167291
turnin The Harpy Problem##59943 |goto 56.93,46.23
accept Harpy Culling##59945 |goto 56.93,46.23
accept Purge the Totems##59946 |goto 56.93,46.23
step
talk Shuja Grimaxe##167290
accept The Rescue of Herbert Gloomburst##59944 |goto 56.82,46.18
stickystart "Slay_Harpies_And_Cohorts"
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 58.21,44.49 |count 1
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 58.85,42.94 |count 2
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 61.23,41.30 |count 3
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 59.00,39.08 |count 4
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 57.17,42.21 |count 5
step
talk Herbert Gloomburst##167298
Tell him _"I'll fight the harpies that come. Can you use your magic to break free?"_
Kill the enemies that attack in waves
|tip Your allies will help you fight.
kill Bloodbeak##153964
|tip It looks like a large bird that flies down and attacks you.
Rescue Herbert Gloomburst |q 59944/1 |goto 54.29,41.61
step
label "Slay_Harpies_And_Cohorts"
Kill enemies around this area
Slay #10# Harpies and Cohorts |q 59945/1 |goto 57.17,42.21
step
talk Herbert Gloomburst##167182
turnin The Rescue of Herbert Gloomburst##59944 |goto 56.91,46.14
step
talk Bo##167291
turnin Harpy Culling##59945 |goto 56.94,46.24
turnin Purge the Totems##59946 |goto 56.94,46.24
step
talk Shuja Grimaxe##167290
accept Message to Base##59947 |goto 56.83,46.18
step
talk Warlord Breka Grimaxe##167212
turnin Message to Base##59947 |goto 52.18,55.34
step
talk Mithdran Dawntracker##167215
accept A Hunter's Trap##59952 |goto 52.56,55.43
|only if Hunter
step
talk Herbert Gloomburst##167309
|tip He runs to this location.
Ask him _"Herbert, do you have an ice mote I could have?"_
Receive an Ice Mote from Herbert Gloomburst |q 59952/1 |goto 52.16,55.48
|only if Hunter
step
click Rusted Chains
collect Rusted Chain##175981 |q 59952/2 |goto 52.24,53.03
|only if Hunter
step
click Old Spring
collect Old Spring##175980 |q 59952/3 |goto 51.83,51.63
|only if Hunter
step
talk Mithdran Dawntracker##167215
turnin A Hunter's Trap##59952 |goto 52.56,55.43
accept Hunting the Stalker##59953 |goto 52.56,55.43
|only if Hunter
step
cast Freezing Trap##187650
Watch the dialogue
Capture the Stalker |q 59953/1 |goto 52.40,54.36
|only if Hunter
step
Watch the dialogue
talk Mithdran Dawntracker##167215
|tip He walks back to this location.
turnin Hunting the Stalker##59953 |goto 52.56,55.44
accept The Art of Taming##60162 |goto 52.56,55.44
|only if Hunter
step
cast Dismiss Pet##2641
Temporarily Dismiss Your Current Pet |q 60162/1 |goto 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
Tell him _"I'm ready to tame my pet, call them out."_
Watch the dialogue
cast Tame Beast##1515
|tip Cast it on the beast that appears nearby.
Speak with Mithdran to Summon and Tame Your New Pet |q 60162/2 |goto 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
Tell him _"I'd like to stable my pet here."_
Speak with Mithdran to Learn About Pet Stables |q 60162/3 |goto 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
turnin The Art of Taming##60162 |goto 52.56,55.44
|only if Hunter
step
talk Herbert Gloomburst##167309
accept A Mage's Knowledge##59954 |goto 52.16,55.49
|only if Mage
step
click Herbert's Spellbook
|tip Underwater.
Recover Herbert's Book from the Lake |q 59954/1 |goto 51.95,49.84
|only if Mage
step
talk Herbert Gloomburst##167309
turnin A Mage's Knowledge##59954 |goto 52.16,55.49
|only if Mage
step
Watch the dialogue
talk Herbert Gloomburst##167309
accept The Best Way to Use Sheep##59955 |goto 52.16,55.49
|only if Mage
step
talk Herbert Gloomburst##167309
Tell him _"I'm ready to practice polymorph."_
Speak with Herbert to Begin Sparring |q 59955/1 |goto 52.16,55.49
|only if Mage
step
Practice Polymorph with Throg |q 59955/2 |goto 53.27,54.12
|tip Use your "Polymorph" ability on Grunt Throg.
|tip Attack him when Herbert tells you to.
|only if Mage
step
talk Meredy Huntswell##156886
turnin The Best Way to Use Sheep##59955 |goto 52.16,55.49
|only if Mage
step
talk Bo##167308
accept A Monk's Focus##59956 |goto 52.03,55.21
|only if Monk
step
talk Bo##167308
Tell him _"I'm ready, let's begin to meditate."_
Watch the dialogue
Meditate with Bo |q 59956/1 |goto 52.62,49.49
|only if Monk
step
talk Bo##167308
turnin A Monk's Focus##59956 |goto 52.62,49.49
accept One Last Spar##59957 |goto 52.62,49.49
|only if Monk
step
kill Bo##167537
|tip Use your "Touch of Death" ability on him when he has lower health than you.
|tip You will see the ability glow on your action bar when you are able to use it.
Use Touch of Death on Bo |q 59957/1 |goto 53.48,49.92
|only if Monk
step
talk Warlord Breka Grimaxe##167212
turnin One Last Spar##59957 |goto 52.18,55.34
|only if Monk
step
talk Warlord Breka Grimaxe##167212
accept To Darkmaul Citadel##59975 |goto 52.17,55.34
step
click Danger Sign##330627
accept Killclaw the Terrible##56839 |goto Exile's Reach/0 48.76,54.24
step
kill Killclaw the Terrible##153266 |q 56839/1 |goto 46.19,55.09
|tip He looks like a large elite bear.
|tip He walks around this area.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
Enter the cave |goto 44.28,52.79 < 20 |walk
click Hidden Treasure Chest##155733
|tip Inside the cave.
|tip He respawns quickly, so leave the valley when you've looted the chest.
turnin Killclaw the Terrible##56839 |goto 43.45,51.06
step
Leave Killclaw's Lair |goto 47.88,54.28 < 40 |only if walking and subzone("Killclaw's Lair")
talk Warlord Breka Grimaxe##167596
|tip She runs to this location.
turnin To Darkmaul Citadel##59975 |goto 48.95,49.33
accept Right Beneath Their Eyes##59978 |goto 48.95,49.33
step
talk Herbert Gloomburst##167598
Tell him _"I'm ready, transform me into an ogre and I'll sneak into their citadel."_
Watch the dialogue
Ask Herbert to Perform Ogre Transformation Spell |q 59978/1 |goto 48.93,49.46
step
Enter Darkmaul Citadel |q 59978/2 |goto 45.66,44.57
step
Find the Ogre Cooking Area |q 59978/3 |goto 45.69,37.57
step
Wave to Gor'groth |script DoEmote("WAVE") |q 59978/4 |goto 45.69,37.57
|tip Perform the "/wave" emote while targeting Gor'groth.
step
Reach the Citadel Entrance |q 59978/6 |goto 41.04,32.92
step
Watch the dialogue
talk Warlord Breka Grimaxe##167633
turnin Right Beneath Their Eyes##59978 |goto 40.29,32.46
accept Controlling their Stones##59981 |goto 40.29,32.46
step
talk Shuja Grimaxe##167632
accept Like Ogres to the Slaughter##59979 |goto 40.25,32.56
step
talk Herbert Gloomburst##167631
accept Catapult Destruction##59980 |goto 40.36,32.42
stickystart "Slay_Ogres"
step
Enter the building |goto 44.20,36.39 < 10 |walk
kill Wug##153582
|tip Inside the building.
Recover Wug's Ward Stone |q 59981/2 |goto 44.16,37.34
step
Enter the building |goto 47.17,34.94 < 10 |walk
kill Jugnug##153583
|tip Inside the building.
Recover Jugnug's Ward Stone |q 59981/1 |goto 47.55,34.19
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 47.01,36.55 |count 1
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 46.04,39.66 |count 2
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 45.08,41.59 |count 3
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 43.61,42.80 |count 4
step
Enter the building |goto 43.35,41.15 < 10 |walk
kill Grunk##153581
|tip Inside the building.
Recover Grunk's Ward Stone |q 59981/3 |goto 42.82,40.97
step
label "Slay_Ogres"
Kill Ogre enemies around this area
Slay #8# Ogres |q 59979/1 |goto 45.75,39.09
step
talk Herbert Gloomburst##167631
turnin Catapult Destruction##59980 |goto 40.36,32.43
step
talk Shuja Grimaxe##167632
turnin Like Ogres to the Slaughter##59979 |goto 40.25,32.56
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto 39.96,32.44 |count 1
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto 39.75,32.07 |count 2
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto 40.05,31.98 |count 3
step
Watch the dialogue
talk Warlord Mulgrin Thunderwalker##167183
turnin Controlling their Stones##59981 |goto 39.93,32.15
accept Dungeon: Darkmaul Citadel##59984 |goto 39.93,32.15
step
Open the Group Finder
|tip Press "I" to open the Group Finder.
Enter the Darkmaul Citadel Dungeon |q 59984/1
step
_Inside the Dungeon:_
kill Ravnyr##156501
|tip He is the final boss of the dungeon.
|tip Follow Warlord Grimaxe through the dungeon.
Stop Gor'groth's Final Ritual |q 59984/2
step
_Inside the Dungeon:_
talk Warlord Grimaxe##167663
|tip Nearby, after killing the final boss.
Tell her _"Let's get out of the citadel and figure out how to get back home."_
Speak with Warlord Grimaxe to Leave Darkmaul Citadel |q 59984/3
step
Watch the dialogue
talk Warlord Breka Grimaxe##167675
turnin Dungeon: Darkmaul Citadel##59984 |goto Exile's Reach/0 39.65,31.98
accept An End to Beginnings##59985 |goto Exile's Reach/0 39.65,31.98
step
Watch the dialogue
clicknpc Horde Wyvern##167669
Ride the Horde Wyvern Back to Orgrimmar |q 59985/1 |goto 40.38,32.63
step
Reach Orgrimmar |offtaxi |q 59985
step
talk Warlord Breka Grimaxe##168431
turnin An End to Beginnings##59985 |goto Orgrimmar/1 52.51,88.11
accept Welcome to Orgrimmar##60343 |goto Orgrimmar/1 52.51,88.11 |or |next "Welcome_To_Orgrimmar" |noautoaccept
_Or_
Tell her _"I know my way around Orgrimmar. <Skip the city tour and choose a Timewalking Campaign.>"_
accept Adventurers Wanted: Chromie's Call##62568 |goto Orgrimmar/1 52.51,88.11 |or |next "Leveling Guides\\Starter Guides\\Chromie Time" |noautoaccept
step
label "Welcome_To_Orgrimmar"
talk Cork Fizzlepop##168441
turnin Welcome to Orgrimmar##60343 |goto 51.93,85.39
accept Finding Your Way##60344 |goto 51.93,85.39
step
talk Orgrimmar Grunt##168459
Tell them _"Stable Master"_
Ask a Guard for Directions to the Stable Master |q 60344/1 |goto 52.47,84.22
step
talk Cork Fizzlepop##168441
Tell him _"Let's head to the stables."_
Speak with Cork Fizzlepop |q 60344/2 |goto 52.25,84.41
step
Watch the dialogue
|tip Follow Cork Fizzlepop as he walks.
|tip Stay close to him.
|tip He eventually walks to this location.
Follow Cork Fizzlepop to the Stable Master |q 60344/3 |goto 62.02,33.31
step
talk Rohaka Tuskmaul##168540
turnin Finding Your Way##60344 |goto 61.43,32.77
accept License to Ride##60345 |goto 61.43,32.77
step
talk Kildar##4752
Learn the Apprentice Riding Skill |q 60345/1 |goto 61.32,34.59
step
talk Rohaka Tuskmaul##168540
turnin License to Ride##60345 |goto 61.43,32.77
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60346
|only if Druid
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Telotha Pinegrove##168553
|tip Inside the building.
Speak with Telotha Pinegrove to learn about specializations |q 60346/1 |goto 72.93,43.25
|only if Druid
step
Activate a Combat Specialization |q 60346/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Druid
step
talk Telotha Pinegrove##168553
|tip Inside the building.
turnin What's Your Specialty?##60346 |goto 72.93,43.25
|only if Druid
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60347
|only if Hunter
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Tamanji##168551
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Tamanji to Learn About Specializations |q 60347/1 |goto 73.90,43.59
|only if Hunter
step
Activate a Combat Specialization |q 60347/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Hunter
step
talk Tamanji##168551
|tip Inside the building.
turnin What's Your Specialty?##60347 |goto 73.90,43.59
|only if Hunter
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60348
|only if Mage
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Feenix Arcshine##168626
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Feenix Arcshin to Learn About Specializations |q 60348/1 |goto 74.69,43.60
|only if Mage
step
Activate a Combat Specialization |q 60348/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Mage
step
talk Feenix Arcshine##168626
|tip Inside the building.
turnin What's Your Specialty?##60348 |goto 74.69,43.60
|only if Mage
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60349
|only if Monk
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Huinli Wingpaw##168619
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Huinli Wingpaw to Learn About Specializations |q 60349/1 |goto 75.68,43.58
|only if Monk
step
Activate a Combat Specialization |q 60349/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Monk
step
talk Huinli Wingpaw##168619
|tip Inside the building.
turnin What's Your Specialty?##60349 |goto 75.68,43.58
|only if Monk
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60350
|only if Paladin
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Avaros Dawnglaive##168597
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Avaros Dawnglaive to Learn About Specializations |q 60350/1 |goto 73.19,47.42
|only if Paladin
step
Activate a Combat Specialization |q 60350/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Paladin
step
talk Avaros Dawnglaive##168597
|tip Inside the building.
turnin What's Your Specialty?##60350 |goto 73.19,47.42
|only if Paladin
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60351
|only if Priest
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Martin Goodchilde##168621
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Martin Goodchilde to Learn About Specializations |q 60351/1 |goto 72.64,46.92
|only if Priest
step
Activate a Combat Specialization |q 60351/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Priest
step
talk Martin Goodchilde##168621
|tip Inside the building.
turnin What's Your Specialty?##60351 |goto 72.64,46.92
|only if Priest
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60352
|only if Rogue
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Veruca Darkstream##164946
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Veruca Darkstream to Learn About Specializations |q 60352/1 |goto 75.46,47.50
|only if Rogue
step
Activate a Combat Specialization |q 60352/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Rogue
step
talk Veruca Darkstream##164946
|tip Inside the building.
turnin What's Your Specialty?##60352 |goto 75.46,47.50
|only if Rogue
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##59592
|only if Shaman
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Hretar Riverspeaker##168628
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Mulric Boldrock to Learn About Specializations |q 59592/1 |goto 73.40,43.09
|only if Shaman
step
Activate a Combat Specialization |q 59592/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Shaman
step
talk Hretar Riverspeaker##168628
|tip Inside the building.
turnin What's Your Specialty?##59592 |goto 73.40,43.09
|only if Shaman
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60355
|only if Warlock
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Kazak Darkscream##168623
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Kazak Darkscream to Learn About Specializations |q 60355/1 |goto 74.62,47.42
|only if Warlock
step
Activate a Combat Specialization |q 60355/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Warlock
step
talk Kazak Darkscream##168623
|tip Inside the building.
turnin What's Your Specialty?##60355 |goto 74.62,47.42
|only if Warlock
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60357
|only if Warrior
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Gormok Ogrefist##168596
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Gormok Ogrefist to Learn About Specializations |q 60357/1 |goto 73.76,47.12
|only if Warrior
step
Activate a Combat Specialization |q 60357/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Warrior
step
talk Gormok Ogrefist##168596
|tip Inside the building.
turnin What's Your Specialty?##60357 |goto 73.76,47.12
|only if Warrior
step
_Next to you:_
talk Cork Fizzlepop##168545
accept Home Is Where the Hearth Is##60359
step
Enter the building |goto 70.34,48.98 < 10 |walk |only if not subzone("The Wyvern's Tail")
talk Innkeeper Nufa##46642
|tip Inside the building.
Choose _"Make this inn your home."_
Make the Wyvern's Tail Your Home |q 60359/1 |goto 71.31,49.95
step
talk Innkeeper Nufa##46642
|tip Inside the building.
turnin Home Is Where the Hearth Is##60359 |goto 71.31,49.95
step
talk Shuja Grimaxe##168771
|tip She runs to this location.
|tip Inside the building.
accept An Urgent Meeting##60360 |goto 70.87,49.54
step
talk Cork Fizzlepop##168441
|tip Inside the building.
Tell him _"The Warchief has summoned me to Grommash Hold."_
Speak with Cork Fizzlepop |q 60360/1 |goto 71.53,49.51
step
Enter the building |goto 49.93,75.72 < 10 |walk
Find Warlord Breka Grimaxe at Grommash Hold |q 60360/2 |goto 48.26,71.39
|tip Inside the building.
step
talk Warlord Breka Grimaxe##168431
|tip Inside the building.
turnin An Urgent Meeting##60360 |goto 48.26,71.39
accept Battle for Azeroth: Mission Statement##60361 |goto 48.26,71.39
step
Watch the dialogue
|tip Inside the building.
Meet with Warchief Sylvanas Windrunner |q 60361/1 |goto Orgrimmar/1 48.26,71.38
step
talk Nathanos Blightcaller##168808
|tip Inside the building.
Tell him _"I'll make my way to a wyvern to rendezvous with Princess Talanji's boat."_
Speak with Nathanos Blightcaller |q 60361/2 |goto 48.51,71.20
step
talk Warlord Breka Grimaxe##168431
|tip Inside the building.
Tell her _"I have received my order. I must go."_
Speak with Warlord Breka Grimaxe |q 60361/3 |goto 48.26,71.39
step
clicknpc Sturdy Wyvern##174453
Watch the dialogue
Ride the Wyvern to Princess Talanji's Boat |q 60361/4 |goto 51.32,77.43
step
Travel to Zuldazar |complete zone("Zuldazar") |q 60361
step
talk Nathanos Blightcaller##121210
turnin Battle for Azeroth: Mission Statement##60361 |goto Zuldazar/0 57.96,62.76
step
talk Princess Talanji##132332
accept Welcome to Zuldazar##46957 |goto 57.95,62.46
step
Watch the dialogue
|tip Follow Princess Talanji as she walks.
|tip She eventually walks to this location.
Follow Princess Talanji |q 46957/1 |goto Dazar'alor/0 49.98,82.60
step
talk General Jakra'zet##122661
turnin Welcome to Zuldazar##46957 |goto 49.98,82.33
accept Rastakhan##46930 |goto 49.98,82.33
step
talk Ripa the Wind Ripper##121252
fpath Port of Zandalar |goto 52.10,90.12
step
clicknpc Enforcer's Pterrordax##135438
Ride the Enforcer's Pterrordax to the Throne |q 46930/1 |goto 49.98,82.17
step
Watch the dialogue
Ride to the Throne |complete subzone("The Golden Throne") |goto 48.03,44.45 |q 46930 |notravel
step
talk Princess Talanji##135440
|tip On top of the building.
Tell her _"Take me to King Rastakhan."_
Speak with Princess Talanji |q 46930/2 |goto 48.82,44.64
step
Watch the dialogue
talk King Rastakhan##120740
|tip On top of the building.
turnin Rastakhan##46930 |goto 49.91,42.72
accept Speaker of the Horde##46931 |goto 49.91,42.72
step
Locate Zolani |goto 49.47,44.66 < 10 |c |q 46931
step
Watch the dialogue
|tip Follow Zolani as she walks.
|tip She eventually walks to this location inside the building.
Follow Zolani |q 46931/1 |goto Dazar'alor/2 25.91,73.81
step
click Horde Banner
|tip Ride the elevator down, or jump down a level.
Summon the Horde |q 46931/2 |goto Dazar'alor/0 49.93,39.49
step
Enter the building |goto 49.94,42.14 < 10 |walk
Watch the dialogue
|tip Downstairs inside the building.
Explore the Hall of Ancient Paths |q 46931/4 |goto Dazar'alor/1 66.92,72.06
step
Watch the dialogue
|tip Downstairs inside the building.
Explore the Great Seal |q 46931/3 |goto 49.09,70.79
step
Watch the dialogue
|tip Downstairs inside the building.
Explore the Royal Treasury |q 46931/5 |goto Dazar'alor/0 48.76,45.89 |notravel
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Speaker of the Horde##46931 |goto Dazar'alor/2 41.31,66.65
step
talk Paku'ai Rokota##122689
fpath The Great Seal |goto Dazar'alor/0 51.92,41.20
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Starter Guides\\Nightborne Starter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Starter Guides\\Highmountain Tauren Starter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Starter Guides\\Mag'har Orc Starter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Starter Guides\\Zandalari Troll Starter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Starter Guides\\Vulpera Starter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Race Death Knight Starter")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Chromie Time",{
author="support@zygorguides.com",
description="\nThis guide will assist you in changing the expansion you will\n"..
"\nlevel up in by speaking with Chromie.\n",
condition_suggested=function() return level >= 10 and level <= 50 end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."BfAIntro",
},[[
step
_Are You Eligible For Chromie Time?_
|tip If you have another character who reached max level previously, you are eligible for Chromie Time.
|tip If not, you must level through the Battle for Azeroth zones before moving on to the Dragon Isles.
|tip Chromie Time allows you to choose a different expansion to level up to 60 in, before moving on to the Dragon Isles.
No - Level in Battle for Azeroth Zones	|confirm	|or	|next "Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)"
Yes - Choose a Different Expansion	|confirm	|or	|next "Chromie_Time_Start"
step
label "Chromie_Time_Start"
talk Chromie##167032
Tell her _"Select a timeline."_
_Or_
Tell her _"I'd like to return to the present timeline, Chromie."_
|tip If you've already selected a different expansion, but want to return to leveling in the Battle for Azeroth zones, choose this.
Click Here After Choosing an Expansion |confirm |goto Orgrimmar/1 40.82,80.14
step
_Which Expansion Did You Choose?_
Battle for Azeroth	|confirm	|or	|next "Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)"
The Cataclysm		|confirm	|or	|next "The_Cataclysm"
Burning Crusade		|confirm	|or	|next "Burning_Crusade"
Wrath of the Lich King	|confirm	|or	|next "Wrath_Of_The_Lich_King"
Mists of Pandaria	|confirm	|or	|next "Mists_Of_Pandaria"
Warlords of Draenor	|confirm	|or	|next "Warlords_Of_Draenor"
Legion			|confirm	|or	|next "Legion"
step
label "The_Cataclysm"
accept Onward to Adventure: Kalimdor##60887
|tip You will accept this quest automatically.
step
click Warchief's Command Board
Find the Warchief's Command Board |q 60887/1 |goto Orgrimmar/1 49.67,76.47
step
talk Chromie##172387
turnin Onward to Adventure: Eastern Kingdoms##60891 |goto 49.02,76.46
step
_Choose a Leveling Zone:_
|tip Browse your world map for Eastern Kingdoms and Kalimdor.
|tip Choose any zone that fits your character's level, and load the Leveling guide for that zone using the guide menu.
|tip Keep doing this until you reach level 50.
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Burning_Crusade"
accept To Outland!##60123 |or
accept Onward to Adventure: Outland##60959 |or
|tip You will accept one of these quests automatically.
step
Enter the building |goto Orgrimmar/1 53.48,90.40 < 10 |walk
talk Thrallmar Mage##150131
|tip Downstairs inside the building.
Tell him _"I must report to the Dark Portal."_
Talk to the Thrallmar Mage |q 60123/1 |goto Orgrimmar/1 57.15,90.71
|only if haveq(60123)
step
Go Through the Dark Portal |q 60123/2 |goto Blasted Lands/0 55.01,54.17
|tip Walk into the huge green swirling portal.
|only if haveq(60123)
step
Travel to Hellfire Peninsula |q 60959/1 |goto Hellfire Peninsula/0 87.00,49.00
|only if haveq(60959)
step
Click the Complete Quest Box:
turnin To Outland!##60123 |only if haveq(60123) or completedq(60123)
turnin Onward to Adventure: Outland##60959 |only if haveq(60959) or completedq(60959)
step
_Begin Leveling in Burning Crusade:_
Click Here to Load the "Hellfire Peninsula (10-60)" Leveling Guide |confirm |next "Leveling Guides\\The Burning Crusade (10-60)\\Hellfire Peninsula (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Wrath_Of_The_Lich_King"
accept To Northrend!##60097			|or |only if haveq(60097)
accept Onward to Adventure: Northrend##60963	|or |only if haveq(60963)
|tip You will accept one of these quests automatically.
step
_Which Zone Do You Want to Start In?_
|tip You can start leveling in Wrath of the Lich King in either Borean Tundra or Howling Fjord.
|tip It doesn't matter, just preference.
Borean Tundra |confirm |next "Borean_Tundra"
Howling Fjord |confirm |next "Howling_Fjord"
step
label "Borean_Tundra"
talk Auctioneer Ralinza##44867
|tip Inside the building.
buy Overcharged Capacitor##39682 |n
|tip This is needed for a future quest.
|tip If you can't get one, you can skip it.
collect Overcharged Capacitor##39682 |goto Orgrimmar/1 53.97,72.99 |q 11650 |future
step
Locate the Zeppelin to Borean Tundra |goto 44.73,62.33 < 10 |c |q 60097
|tip You may have to wait for the zeppelin to arrive.
|tip At the top of the tower.
|only if haveq(60097)
step
Take the Zeppelin to Northrend |q 60097/1
|tip Ride the zeppelin to Borean Tundra.
|only if haveq(60097)
step
Travel to Northrend |q 60963/1 |goto Borean Tundra/0 41.62,53.99
|only if haveq(60963)
step
Click the Complete Quest Box:
turnin To Northrend!##60097 |only if haveq(60097) or completedq(60097)
turnin Onward to Adventure: Northrend##60963 |only if haveq(60963) or completedq(60963)
step
_Begin Leveling in Wrath of the Lich King:_
Click Here to Load the "Borean Tundra (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Wrath of the Lich King (10-60)\\Borean Tundra (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Howling_Fjord"
Locate the Zeppelin to Borean Tundra |goto 44.73,62.33 < 10 |c |q 60097
|tip You will sail to Borean Tundra, then fly to Howling Fjord.
|tip You may have to wait for the zeppelin to arrive.
|tip At the top of the tower.
|only if haveq(60097)
step
Take the Zeppelin to Northrend |q 60097/1
|tip Ride the zeppelin to Borean Tundra.
|only if haveq(60097)
step
Travel to Northrend |q 60963/1 |goto Howling Fjord/0 78.54,28.98
|only if haveq(60963)
step
Click the Complete Quest Box:
turnin To Northrend!##60097 |only if haveq(60097) or completedq(60097)
turnin Onward to Adventure: Northrend##60963 |only if haveq(60963) or completedq(60963)
step
_Begin Leveling in Wrath of the Lich King:_
Click Here to Load the "Howling Fjord (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Wrath of the Lich King (10-60)\\Howling Fjord (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Mists_Of_Pandaria"
accept To Pandaria!##60126
|tip You will accept this quest automatically.
step
Visit Grommash Hold |q 60126/1 |goto Orgrimmar/1 49.88,75.55
step
talk General Nazgrim##54870
|tip Inside the building.
turnin To Pandaria!##60126 |goto 48.67,70.36
accept All Aboard!##31853 |goto 48.67,70.36
step
talk Doras##3310
Tell him _"I need a flight to Hellscream's Fist."_
Secure a Flight to Hellscream's Fist |invehicle |q 31853 |goto 49.66,59.22
step
Fly to Hellscream's Fist |outvehicle |q 31853
step
talk General Nazgrim##55054
|tip On the flying ship.
Tell her _"I am ready to depart."_
Speak to General Nazgrim on Hellscream's Fist |q 31853/2 |goto Azshara/0 37.88,95.77
step
talk General Nazgrim##55054
turnin All Aboard!##31853 |goto 37.88,95.77
step
_Begin Leveling in Mists of Pandaria:_
Click Here to Load "The Jade Forest (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Warlords_Of_Draenor"
accept Warlords of Draenor: The Dark Portal##34398
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 53.48,90.40 < 10 |walk
talk Vanguard Battlemage##149626
|tip Downstairs inside the building.
Tell her _"I must help Khadgar. Send me to the Blasted Lands!."_
Talk to the Vanguard Battlemage |q 34398/1 |goto Orgrimmar/1 55.82,91.45
|only if haveq(34398)
step
talk Zidormi##141489
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28 |q 34398
step
talk Ameri Windblade##85734
fpath Shattered Landing |goto Blasted Lands/0 72.95,48.64
step
talk Archmage Khadgar##78423
Tell him _"FOR AZEROTH!"_
Speak with Archmage Khadgar |q 34398/2 |goto 54.93,50.41
step
talk Archmage Khadgar##78558
turnin Warlords of Draenor: The Dark Portal##34398 |goto Assault on the Dark Portal/0 54.79,48.27
step
_Begin Leveling in Warlords of Draenor:_
Click Here to Load the "Draenor Intro" Leveling Guide |confirm |next "Leveling Guides\\Draenor (10-60)\\Draenor Intro"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Legion"
accept The Legion Returns##43926 |or
accept Onward to Adventure: Broken Isles##60970 |or
|tip You will accept one of these quests automatically.
step
_Begin Leveling in Legion:_
Click Here to Load the "Death KnightIntro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Death Knight\\Death Knight Intro & Artifacts" |only if DeathKnight
Click Here to Load the "Demon HunterIntro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Demon Hunter\\Demon Hunter Intro & Artifacts" |only if DemonHunter
Click Here to Load the "Druid Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Druid\\Druid Intro & Artifacts" |only if Druid
Click Here to Load the "Hunter Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Hunter\\Hunter Intro & Artifacts" |only if Hunter
Click Here to Load the "Mage Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Mage\\Mage Intro & Artifacts" |only if Mage
Click Here to Load the "Monk Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Monk\\Monk Intro & Artifacts" |only if Monk
Click Here to Load the "Paladin Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Paladin\\Paladin Intro & Artifacts" |only if Paladin
Click Here to Load the "Priest Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Priest\\Priest Intro & Artifacts" |only if Priest
Click Here to Load the "Rogue Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Rogue\\Rogue Intro & Artifacts" |only if Rogue
Click Here to Load the "Shaman Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Shaman\\Shaman Intro & Artifacts" |only if Shaman
Click Here to Load the "Warlock Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Warlock\\Warlock Intro & Artifacts" |only if Warlock
Click Here to Load the "Warrior Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Warrior\\Warrior Intro & Artifacts" |only if Warrior
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
]])
