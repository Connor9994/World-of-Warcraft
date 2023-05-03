local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Startup Guide Wizard",{
author="support@zygorguides.com",
condition_visible=function() return false end,
noscoring = true,
orientation = true,
},[[
step
Welcome to the Zygor Startup Wizard!
In order for Zygor Guides to perform at its best we need to collect some character data.
This wizard will walk you through a few simple steps to do this.
confirm begin
step
Use the Zygor Guides Client (desktop) to install Trend Data. |complete (ZGV.Gold.servertrends ~= nil)
|tip This is needed for the Gold Guide. You can configure your servers in the Settings under Trend Data.
reload
confirm skip
step
findcity Main City | complete zone(ZGV.GoalProto.city)
|tip You need to be in a capital city for the upcoming steps.
step
talknpcs Auctioneer |autoscript ZGV.ATWereEnabled=ZGV.db.profile.auction_enable ZGV.db.profile.auction_enable=true
Click the Scan button in the bottom right corner.
Record auction pricing data for the Gold Guide |complete ZGV.Gold:LastScan(15)
step
talknpcs Banker
Record the items you have placed in your bank inventory. |complete ZGV.Inventory:CharacterBankKnown()
step
talknpcs Flightmaster
Record what flight points you have for the Travel System. | complete LibTaxi:IsContinentKnown()
step
openskill Alchemy
|only if hasprofunscanned("Alchemy")
Record your profession data for the Gold Guide. |complete hasprof("Alchemy",1)
step
openskill Blacksmithing
|only if hasprofunscanned("Blacksmithing")
Record your profession data for the Gold Guide. |complete hasprof("Blacksmithing",1)
step
openskill Cooking
|only if hasprofunscanned("Cooking")
Record your profession data for the Gold Guide. |complete hasprof("Cooking",1)
step
openskill Enchanting
|only if hasprofunscanned("Enchanting")
Record your profession data for the Gold Guide. |complete hasprof("Enchanting",1)
step
openskill Engineering
|only if hasprofunscanned("Engineering")
Record your profession data for the Gold Guide. |complete hasprof("Engineering",1)
step
openskill First Aid
|only if hasprofunscanned("First Aid")
Record your profession data for the Gold Guide. |complete hasprof("First Aid",1)
step
openskill Fishing
|only if hasprofunscanned("Fishing")
Record your profession data for the Gold Guide. |complete hasprof("Fishing",1)
step
openskill Herbalism
|only if hasprofunscanned("Herbalism")
Record your profession data for the Gold Guide. |complete hasprof("Herbalism",1)
step
openskill Inscription
|only if hasprofunscanned("Inscription")
Record your profession data for the Gold Guide. |complete hasprof("Inscription",1)
step
openskill Jewelcrafting
|only if hasprofunscanned("Jewelcrafting")
Record your profession data for the Gold Guide. |complete hasprof("Jewelcrafting",1)
step
openskill Leatherworking
|only if hasprofunscanned("Leatherworking")
Record your profession data for the Gold Guide. |complete hasprof("Leatherworking",1)
step
openskill Mining
|only if hasprofunscanned("Mining")
Record your profession data for the Gold Guide. |complete hasprof("Mining",1)
step
openskill Skinning
|only if hasprofunscanned("Skinning")
Record your profession data for the Gold Guide. |complete hasprof("Skinning",1)
step
openskill Tailoring
|only if hasprofunscanned("Tailoring")
Record your profession data for the Gold Guide. |complete hasprof("Tailoring",1)
step
You''re all set!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Dracthyr Starter (58-60)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the introductory Dracthyr quests.",
condition_suggested=function() return raceclass("Dracthyr") and level >= 58 and not intutorial() end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass("Dracthyr") end,
condition_valid_msg="You must be a Dracthyr to complete this guide!",
startlevel=58,
},[[
step
accept Awaken Dracthyr##64864
|tip You will automatically accept this quest.
step
_Nearby_
|tip When you create a Dracthyr, you start in one of the side rooms of the large circular room.
|tip It's random, so the location of the first NPC you need to talk to changes, depending on which room you start in.
clicknpc Dervishian##181494			|only if Alliance
clicknpc Kodethi##187223			|only if Horde
Awaken a Dracthyr Ally |q 64864/1
step
clicknpc Tethalash##181680
Awaken Tethalash |q 64864/3 |goto The Forbidden Reach/4 44.38,85.57
step
click Talon Kethahn
|tip Laying on the bed under the stones.
Find Kethahn |q 64864/2 |goto 47.95,79.90
step
clicknpc Scalecommander Azurathel##183380
|tip In a side room.
Awaken Azurathel |q 64864/4 |goto 32.15,82.73
step
Watch the dialogue
talk Scalecommander Azurathel##181056
|tip He walks to this location.
turnin Awaken, Dracthyr##64864 |goto 32.92,81.57
accept Gear Up##64865 |goto 32.92,81.57
step
talk Dervishian##181596
accept Arcane Guardians##64863 |goto 33.06,80.69
stickystart "Slay_Guardians_Or_Constructs"
step
click Weapon Rack
|tip It looks like a small stand with weapons leaning on it.
|tip In a side room.
collect Stack of Weapons##187852 |q 64865/1 |goto 45.03,66.23
step
click Rations
|tip It looks like a large wooden box.
|tip In a side room.
collect Decayed Rations##187855 |q 64865/3 |goto 34.17,61.06
step
click Crate of Warscale Armor
|tip It looks like a large wooden box.
|tip In a side room.
collect Crate of Warscales##187853 |q 64865/2 |goto 38.70,51.25
step
label "Slay_Guardians_Or_Constructs"
Kill enemies around this area
|tip They look like blue and purple elementals.
Slay #4# Guardians or Constructs |q 64863/1 |goto 39.68,61.80
step
talk Dervishian##182069
turnin Arcane Guardians##64863 |goto 45.88,58.56
step
talk Scalecommander Azurathel##181594
turnin Gear Up##64865 |goto 46.44,57.11
accept Into the Cauldron##64866 |goto 46.44,57.11
step
Glide into the Earth-Warder's Cauldron |q 64866/1 |goto 45.56,48.01
|tip Jump off the pllatform and glide down to the ground.
|tip Press "Space" bar as you are falling to activate your wings and glide.
step
cast Living Flame##361469
|tip Cast it on Dracthyr Talons.
|tip They look like dragon people.
|tip They can be laying on the ground, or standing.
Rescue or Heal #5# Dracthyr with Living Flame |q 64866/2 |goto 54.66,47.19
step
talk Scalecommander Azurathel##182168
turnin Into the Cauldron##64866 |goto 61.97,36.27
step
talk Scalecommander Cindrethresh##186883
accept The Dragon at the Door##64871 |goto 62.29,36.45
step
Reach the Exit |q 64871/1 |goto 66.18,12.09
|tip Run up the stairs with your allies.
step
kill Lapisagos##186854 |q 64871/2 |goto 66.40,10.54
|tip Your allies will help you fight.
step
Watch the dialogue
Reach the Surface |goto The Forbidden Reach/0 44.41,61.49 < 50 |c |noway |q 64871
step
Watch the dialogue
talk Scalecommander Cindrethresh##184269
|tip She runs to this location.
turnin The Dragon at the Door##64871 |goto The Forbidden Reach/0 44.41,61.49
accept The Fire Within##64872 |goto The Forbidden Reach/0 44.41,61.49
step
talk Scalecommander Azurathel##182251
accept Arcane Intrusion##65615 |goto 44.08,61.39
step
cast Fire Breath##357208
|tip You don't have to attack any enemies, just cast the spell while targeting nothing.
|tip Hold the spell button down to charge it up to fill the first spell bar that appears on the screen.
|tip Click the Fire Breath Infuser at this location to remove the cooldown of Fire Breath, so you can try again, if needed.
Cast an Empowered I Fire Breath |q 64872/1 |goto 43.74,61.21
step
cast Fire Breath##357208
|tip You don't have to attack any enemies, just cast the spell while targeting nothing.
|tip Hold the spell button down to charge it up to fill the second spell bar that appears on the screen.
|tip Click the Fire Breath Infuser at this location to remove the cooldown of Fire Breath, so you can try again, if needed.
Cast an Empowered II Fire Breath |q 64872/2 |goto 43.74,61.21
step
cast Fire Breath##357208
|tip You don't have to attack any enemies, just cast the spell while targeting nothing.
|tip Hold the spell button down to charge it up to fill the third spell bar that appears on the screen.
|tip Click the Fire Breath Infuser at this location to remove the cooldown of Fire Breath, so you can try again, if needed.
Cast an Empowered III Fire Breath |q 64872/3 |goto 43.74,61.21
step
talk Scalecommander Cindrethresh##184269
turnin The Fire Within##64872 |goto 44.40,61.50
step
click Beacon
|tip It looks like a large stone monument shooting a beam of blue light into the air
|tip You can click it from far away.
Investigate the Beacon |q 65615/1 |goto 45.43,53.72
step
talk Scalecommander Azurathel##182251
turnin Arcane Intrusion##65615 |goto 44.09,61.41
step
Watch the dialogue
talk Scalecommander Emberthal##181054
|tip He flies to this location.
accept Stretch Your Wings##64873 |goto 44.54,61.06
step
talk Dervishian##192889
Learn About Coasting |q 64873/1 |goto 44.72,57.62
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip You will use your "Soar" ability to shoot into the air and start gliding with your wings.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Try Again" ability to retry.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 64873
step
cast Soar##373646
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Try Again" ability to retry.
|tip It appears as a button on the screen.
Soar Through #5# Rings |q 64873/3 |goto 44.82,57.43
step
Reach the Old Weyrn Grounds |complete subzone("The Old Weyrn Grounds") |q 64873
|tip You will travel automatically.
step
talk Kodethi##192893
Learn About Diving |q 64873/4 |goto 41.42,48.22
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the west.
|tip The first ring is high in the air and the others are lower in the canyon.
|tip You will use your "Soar" ability to shoot into the air and start gliding with your wings.
|tip Glide through each of the rings, starting with the highest ring, and diving down through the others.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Try Again" ability to retry.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 64873
step
cast Soar##373646
|tip Look for a string of large glowing glyph rings in the air nearby to the west.
|tip The first ring is high in the air and the others are lower in the canyon.
|tip Glide through each of the rings, starting with the highest ring, and diving down through the others.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Try Again" ability to retry.
|tip It appears as a button on the screen.
Dive Through #5# Rings |q 64873/5 |goto 41.42,48.22
step
Reach the Old Weyrn Grounds |complete subzone("The Old Weyrn Grounds") |q 64873
|tip You will travel automatically.
step
talk Dervishian##192889
Learn About Advanced Flying |q 64873/6 |goto 44.73,57.64
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air further away to the north.
|tip You will use your "Soar" ability to shoot into the air and start gliding with your wings.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Try Again" ability to retry.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 64873
step
cast Soar##373646
|tip Look for a string of large glowing glyph rings in the air further away to the north.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Try Again" ability to retry.
|tip It appears as a button on the screen.
Soar Through #3# Rings |q 64873/7 |goto 44.73,57.64
step
Reach the Old Weyrn Grounds |complete subzone("The Old Weyrn Grounds") |q 64873
|tip You will travel automatically.
step
talk Dervishian##192889
turnin Stretch Your Wings##64873 |goto 44.72,57.63
accept Train Like We Fight##65036 |goto 44.72,57.63
step
cast Soar##373646
|tip Don't fly away far.
|tip You'll need to turn in the quest nearby.
Practice Soar |q 65036/1 |goto 44.54,59.37
step
talk Scalecommander Emberthal##181054
turnin Train Like We Fight##65036 |goto 44.24,61.18
accept Caldera of the Menders##65060 |goto 44.24,61.18
step
talk Scalecommander Cindrethresh##182317
|tip On a stone platform, overlooking the valley.
Tell her _"No time to waste."_
Meet Cindrethresh at the Caldera of the Menders |q 65060/1 |goto 36.45,32.54
step
talk Scalecommander Cindrethresh##184214
|tip Next to the entrance of a building.
turnin Caldera of the Menders##65060 |goto 18.80,15.82
accept Into the Hive##65063 |goto 18.80,15.82
step
Enter the building |goto 18.52,15.80 < 15 |walk
Follow Cindrethresh |q 65063/1 |goto The Forbidden Reach/3 39.29,45.17
|tip Scalecommander Cindrethresh runs into the building.
|tip Inside the building, a toxic gas bar will appear on screen and begin filling.
|tip Don't stop to fight enemies, just run to this location.
|tip You will pass out after the bar fills completely, and automatically be saved.
step
Return to Scalecommander Viridia |complete subzone("Caldera of the Menders") |q 65063
|tip You will travel automatically.
step
talk Scalecommander Viridia##184163
turnin Into the Hive##65063 |goto The Forbidden Reach/0 20.08,19.07
accept A Toxic Problem##65073 |goto The Forbidden Reach/0 20.08,19.07
step
talk Scalecommander Cindrethresh##184214
accept Easy Prey##65074 |goto 20.24,19.01
stickystart "Collect_Toxin_Glands"
stickystart "Slay_Scythids"
step
talk To'no##184166
|tip Next to the entrance of a cave.
accept Halp!##65071 |goto 33.48,33.32
step
Enter the cave |goto 33.60,34.59 < 15 |walk |only if not (subzone("Lair of the Scythid") and _G.IsIndoors())
Follow the path up |goto 30.45,36.36 < 10 |walk
talk Little Ko##184165
|tip Next to the back wall, in a pile of dragon bones.
|tip Inside the cave, on the top floor.
Tell her _"Come with me. I will get you to safety."_
Rescue Little Ko |q 65071/1 |goto 27.33,36.56
step
label "Collect_Toxin_Glands"
Follow the path and leave the cave |goto 33.60,34.59 < 15 |walk |only if subzone("Lair of the Scythid")
kill Scalerender Beetle##182007+
|tip They look like beetles flying in the air near trees.
|tip You can find them all around this area. |notinsticky
|tip Deatheater Scythids, inside the cave, will also drop the quest items. |only if subzone("Lair of the Scythid")
collect 6 Toxin Gland##187948 |q 65073/1 |goto 32.30,28.88
step
label "Slay_Scythids"
Follow the path and leave the cave |goto 33.60,34.59 < 15 |walk |only if subzone("Lair of the Scythid")
Kill Scythid enemies around this area
|tip They look like large insects with pincher tails.
Slay #4# Scythids |q 65074/1 |goto 32.30,28.88
step
Follow the path and leave the cave |goto 33.60,34.59 < 15 |walk |only if subzone("Lair of the Scythid")
talk Explorer Ko'nali##184212
turnin Halp!##65071 |goto 21.69,29.54
step
talk Scalecommander Cindrethresh##184214
turnin Easy Prey##65074 |goto 20.23,19.03
step
talk Scalecommander Viridia##184163
turnin A Toxic Problem##65073 |goto 20.08,19.09
accept Mercy First##65307 |goto 20.08,19.09
step
cast Living Flame##361469
cast Emerald Blossom##355913
|tip Use your healing abilities on Injured Talons.
|tip They look like thinner dragon people.
|tip Use "Living Flame" on them individually to heal one at a time.
|tip Use "Emerald Blossom" when you are next to multiple of them to heal multiple at once.
click Emerald Blossom Infuser+
|tip They look like small pedestals with a huge blue crystal on top of them around the area.
|tip They will remove the cooldown of your "Emerald Blossom" spell.
Heal #10# Injured Dracthyr |q 65307/1 |goto 21.61,23.11
You can find more around: |notinsticky
[24.06,22.24]
[25.68,18.39]
step
cast Living Flame##361469
|tip Use it on Atrenosh Hailstone.
Heal Atrenosh Hailstone |q 65307/3 |goto 24.90,13.61
step
cast Living Flame##361469
cast Emerald Blossom##355913
|tip Use your healing abilities on Injured Drakonids.
|tip They look like muscular dragon people.
|tip Use "Living Flame" on them individually to heal one at a time.
|tip Use "Emerald Blossom" when you are next to multiple of them to heal multiple at once.
click Emerald Blossom Infuser+
|tip They look like small pedestals with a huge blue crystal on top of them around the area.
|tip They will remove the cooldown of your "Emerald Blossom" spell.
Heal #4# Injured Drakonids |q 65307/2 |goto 24.92,13.09
step
talk Scalecommander Viridia##184163
turnin Mercy First##65307 |goto 20.08,19.10
accept Never Forgotten##66324 |goto 20.08,19.10
step
_NOTE:_
During the Next Steps
|tip A bar appears on the screen and fills up.
|tip Use the "Toxin Antidote" ability to reduce the bar progress.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 66324
step
Enter the building |goto 18.57,15.83 < 15 |walk |only if not subzone("The Support Creche")
click Report: Infestation##376530
|tip It looks like a broken slab of concrete with glowing glyph symbols on it.
|tip Inside the building.
Discover Clues |q 66324/2 |goto The Forbidden Reach/3 66.58,67.59
step
clicknpc Katrinasa##191445
|tip It looks like a dragon person laying on the ground.
|tip Inside the building.
collect Horn Signet of Katrinasa##191732 |q 66324/1 |goto 39.31,28.66 |count 1
step
clicknpc Rethenash##191444
|tip It looks like a dragon person laying on the ground.
|tip Inside the building.
collect Horn Signet of Rethenash##191731 |q 66324/1 |goto 34.43,38.90 |count 2
step
click Crystal Key
|tip Inside the building.
Carry the Crystal |havebuff spell:371552 |goto 27.52,45.57 |q 66324
step
click Crystal Lock
|tip Inside the building.
Rescue #10# Survivors |q 66324/3 |goto 25.58,33.73
step
clicknpc Tenezeth##188146
|tip It looks like a dragon person laying on the ground.
|tip Inside the building.
collect Horn Signet of Tenezeth##191730 |q 66324/1 |goto 18.89,50.84 |count 3
step
Succumb to the Toxicity |complete subzone("Caldera of the Menders") |goto 18.89,50.84 |q 66324
|tip Let the bar on the screen fill up.
|tip You will be transported outside to the quest giver.
step
talk Scalecommander Viridia##184163
turnin Never Forgotten##66324 |goto The Forbidden Reach/0 20.08,19.08
accept The Healing Wings##65075 |goto The Forbidden Reach/0 20.08,19.08
step
Ride the Soar Enhancer |invehicle |goto 20.42,19.72 |q 65075
|tip You will automatically fly to follow your allies.
step
Watch the dialogue
|tip You will fly automatically.
Reach The Old Weyrn Grounds |outvehicle |goto 44.20,58.03 |notravel
step
talk Scalecommander Emberthal##181054
|tip Near the entrance of a building.
turnin The Healing Wings##65075 |goto 44.25,61.16
accept Stormsunder Crater##65045 |goto 44.25,61.16
step
talk Treysh##198429
accept Cavalry Has Its Place##72263 |goto 45.29,61.35
step
talk Scalecommander Azurathel##182274
turnin Stormsunder Crater##65045 |goto 70.44,64.34
accept Tangle with the Tarasek##65049 |goto 70.44,64.34
accept Conjured Army##65050 |goto 70.44,64.34
step
talk Dervishian##186210
accept The Primalists##65046 |goto 70.36,64.59
stickystart "Slay_Taraseks"
stickystart "Slay_Conjured_Elementals"
step
click Primal Path
|tip It looks like a floating runestone.
Discover the Primalist Intentions |q 65046/1 |goto 71.89,60.16
step
click Gift of the Incarnates
|tip It looks like a floating runestone.
Discover the Primalist Leaders |q 65046/3 |goto 71.94,54.52
step
click Lie of the Aspects
|tip It looks like a floating runestone.
Discover the Primalist Motivations |q 65046/2 |goto 78.26,66.47
step
label "Slay_Taraseks"
Kill Tarasek enemies around this area
|tip They look like muscular lizard people.
|tip You can find them all around the Stormsunder Crater area. |notinsticky
Slay #7# Tarasek |q 65049/1 |goto 76.06,63.33
step
label "Slay_Conjured_Elementals"
kill Conjured Stormling##181840+
|tip They look like small white elementals.
|tip You can find them all around the Stormsunder Crater area. |notinsticky
Slay #12# Conjured Elementals |q 65050/1 |goto 76.06,63.33
step
talk Dervishian##186218
|tip Up on the ledge, overlooking the valley.
turnin The Primalists##65046 |goto 79.41,62.04
step
talk Scalecommander Azurathel##182275
|tip Up on the ledge, overlooking the valley.
turnin Tangle with the Tarasek##65049 |goto 79.55,62.29
turnin Conjured Army##65050 |goto 79.55,62.29
accept The Ebon Scales##65052 |goto 79.55,62.29
step
extraaction Mass Disintegration##372415
Signal the Attack on Ekrazathal |q 65052/1 |goto 81.52,55.70
|tip Run to Ekrazathal, the huge dragon breathing fire on the building.
|tip Don't stop to fight enemies.
|tip Use the "Mass Disintegration" ability button that appears on screen.
|tip You don't have to fight the dragon.
step
talk Scalecommander Sarkareth##182297
turnin The Ebon Scales##65052 |goto 81.23,53.96
accept Rally to Emberthal##65057 |goto 81.23,53.96
step
Ride the Soar Enhancer |invehicle |goto 80.62,53.53 |q 65057
|tip You will automatically fly to follow your allies.
step
Watch the dialogue
|tip You will fly automatically.
Reach The Old Weyrn Grounds |outvehicle |goto 47.09,58.81 |notravel
step
talk Scalecommander Emberthal##181054
|tip Near the entrance of a building.
turnin Rally to Emberthal##65057 |goto 44.23,61.16
step
talk Scalecommander Emberthal##182258
accept Preservation or Devastation##65701 |goto 44.83,57.71
step
Activate a Talent Spec |q 65701/1
|tip Devastation is DPS spec.
|tip Preservation is Healing spec.
step
talk Scalecommander Emberthal##182258
turnin Preservation or Devastation##65701 |goto 44.83,57.71
accept The Froststone Vault##65084 |goto 44.83,57.71
step
talk Scalecommander Sarkareth##184308
|tip At the top of the stairs.
turnin The Froststone Vault##65084 |goto 56.73,28.16
accept The Prize Inside##65087 |goto 56.73,28.16
step
Kill enemies around this area
cast Living Flame##361469
cast Emerald Blossom##355913
|tip Use your healing abilities on your allies.
|tip Use "Living Flame" on them individually to heal one at a time.
|tip Use "Emerald Blossom" when you are next to multiple of them to heal multiple at once.
|tip You can heal them repeatedly, until the red tear drop disappears.
Defend Froststone Vault |q 65087/1 |goto 54.73,31.27
step
talk Scalecommander Sarkareth##184308
|tip He runs to this location on the stairs.
turnin The Prize Inside##65087 |goto 56.33,28.75
step
_NOTE:_
During the Next Step
|tip Run down the stairs immediately after accepting the quest.
|tip A giant wind elemental will start chasing you down the stairs.
|tip Glide down the stairs quickly, to retreat to safety.
Click Here to Continue |confirm |q 65097 |future
step
talk Scalecommander Emberthal##182441
accept Run!##65097 |goto 54.10,32.34
step
Outrun the Avatar of the Storm |q 65097/1 |goto 47.05,35.48
step
Find Wrathion |q 65097/2 |goto 47.05,35.48
step
cast Living Flame##361469
|tip Use it on Wrathion.
Heal Wrathion |q 65097/3 |goto 47.05,35.48
step
talk Wrathion##182601
turnin Run!##65097 |goto 47.05,35.48
accept The Consequence of Courage##65098 |goto 47.05,35.48
step
Find Ebyssian |q 65098/1 |goto 47.85,40.10
|tip He will get snatched up and carried off.
step
cast Living Flame##361469
|tip Use it repeatedly on Ebyssian.
|tip He looks like a large dragon buried under rubble in a crumbled building.
|tip Avoid the white swirls along the path as you travel here.
|tip They spawn enemies if you get close to them.
Heal Ebyssian |q 65098/2 |goto 43.22,38.17
step
talk Scalecommander Emberthal##191780
turnin The Consequence of Courage##65098 |goto 41.68,44.55
accept Final Orders##65100 |goto 41.68,44.55
step
Reach the Old Weyrn Grounds |q 65100/1 |goto 41.90,54.35
|tip At the top of the stairs.
step
Speak with Nozdormu |q 65100/2 |goto 43.70,59.81
|tip He looks like a huge yellow dragon.
|tip Run up the stairs and run near him.
step
talk Scalecommander Viridia##182610
Choose _<Salute Scalecommander Viridia.>_
Speak to Viridia |q 65100/4 |goto The Forbidden Reach/0 43.46,54.12
|only if Alliance
step
talk Scalecommander Sarkareth##182611
Choose _<Relay what Nozformu told you.>_
Speak to Sarkareth |q 65100/3 |goto 47.06,55.89
|only if Alliance
step
talk Scalecommander Azurathel##182609
turnin Final Orders##65100 |goto 46.95,55.80
|only if Alliance
step
Reach the Gates of Stormwind City |complete subzone("Stormwind Gate") |q 65286 |future
|tip You will travel automatically.
|only if Alliance
step
talk Wrathion##189322
accept Draconic Connections##65286 |goto Elwynn Forest/0 32.26,49.67
|only if Alliance
step
talk Scalecommander Azurathel##189324
turnin Draconic Connections##65286 |goto 32.26,49.85
accept Ground Leave##66513 |goto 32.26,49.85
|only if Alliance
step
Enter the building |goto Stormwind City/0 62.48,77.21 < 10 |walk
Visit the Bank |q 66513/2 |goto Stormwind City/0 62.58,77.50
|tip Inside the building.
|only if Alliance
step
Enter the building |goto 61.67,72.52 < 10 |walk
Visit the Auction House |q 66513/1 |goto 61.55,72.04
|tip Inside the building.
|only if Alliance
step
Run up the spiral ramp and enter the building |goto 50.11,87.49 < 15 |only if walking
Visit the Portal Room |q 66513/4 |goto 49.01,87.16
|tip Inside the building, on the top floor.
|only if Alliance
step
Enter the building |goto 52.76,14.49 < 10 |walk
Visit the Embassy |q 66513/3 |goto 52.61,14.28
|tip Inside the building.
|only if Alliance
step
talk Scalecommander Azurathel##189603
|tip Standing in an open window on the outer wall of Stormwind Keep.
|tip You can Soar to him, or walk to the entrance of Stormwind Keep to find him.
turnin Ground Leave##66513 |goto 79.95,26.97
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
accept Aspectral Invitation##66577 |goto 79.80,27.02
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
Choose _<Listen to Wrathion and Turalyon.>_
Speak with Wrathion |q 66577/1 |goto 79.80,27.02
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto 79.80,27.02
accept An Iconic, Draconic, Look##65101 |goto 79.80,27.02
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
Choose _<Ask about choosing a visage.>_
Speak to Wrathion |q 65101/1 |goto 79.80,27.02
|only if Alliance
step
Watch the dialogue
|tip Follow Wrathion as he walks.
|tip He eventually walks to this location inside the building.
Learn About Visage Form	|q 65101/2 |goto 82.53,23.94
|only if Alliance
step
extraaction Visage Form##382916
|tip Use the "Visage Form" ability.
|tip It appears as a button on the screen.
|tip Inside the building.
Assume Your Mortal Visage |q 65101/3 |goto 82.53,23.94
|only if Alliance
step
talk Wrathion##194022
|tip Inside the building.
turnin An Iconic, Draconic, Look##65101 |goto 82.53,23.94
|only if Alliance
step
accept I Believe You Can Fly##32675
|tip You will automatically accept this quest.
|only if Alliance
step
talk Scalecommander Azurathel##189603
|tip Inside the building.
accept The Obsidian Warders##72240 |goto 79.94,26.95
|only if Alliance
step
talk Toddy Whiskers##189602
|tip Inside the building.
accept Expeditionary Coordination##66589 |goto 79.72,27.33
|only if Alliance
step
talk Bralla Cloudwing##43769
|tip Inside the building.
|tip You can Soar over the wall and enter from the other side.
turnin I Believe You Can Fly##32675 |goto 70.23,73.35
|only if Alliance
step
talk Bralla Cloudwing##43769
|tip Learn Apprentice and Journeyman Riding to unlock Expert Riding.
|tip Inside the building.
learnspell Expert Riding##34090 |goto 70.23,73.35
|only if Alliance
step
_NOTE:_
You Can Now Fly
|tip You can now use flying mounts.
|tip Use a flying mount to complete the rest of the quests in Stormwind City.
Click Here to Continue |confirm |q 66589
|only if Alliance
step
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto 70.94,72.47
|only if Alliance
step
talk Cataloger Wulferd##189765
Tell him _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 66589/3 |goto 63.35,69.90
|only if Alliance
step
talk Dervishian##198401
|tip On top of the building.
Tell her _"Scalecommander Azurathel would like you to meet him at the docks."_
Deliver the Orders to Dervishian |q 72240/1 |goto 50.91,67.39
|only if Alliance
step
talk Thaelin Darkanvil##189767
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 66589/1 |goto 64.14,37.22
|only if Alliance
step
talk Pathfinder Jeb##189763
Tell him _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 66589/2 |goto 38.24,45.31
|only if Alliance
step
talk Toddy Whiskers##189077
turnin Expeditionary Coordination##66589 |goto 22.71,55.66
turnin The Obsidian Warders##72240 |goto 22.71,55.66
|only if Alliance
step
Watch the dialogue
talk Scalecommander Sarkareth##182611
|tip He runs to this location.
Choose _<Relay what Nozformu told you.>_
Speak to Sarkareth |q 65100/3 |goto The Forbidden Reach/0 47.06,55.89
|only if Horde
step
talk Scalecommander Viridia##182610
Choose _<Salute Scalecommander Viridia.>_
Speak to Viridia |q 65100/4 |goto 43.46,54.12
|only if Horde
step
talk Scalecommander Cindrethresh##182612
turnin Final Orders##65100 |goto 43.57,54.30
|only if Horde
step
Reach the Gates of Orgrimmar |complete subzone("The Dranosh'ar Blockade") |q 65286 |future
|tip You will travel automatically.
|only if Horde
step
talk Spiritwalker Ebonhorn##189386
accept Spiritual Allies##66237 |goto Durotar/0 45.61,12.89
|only if Horde
step
talk Scalecommander Cindrethresh##189389
turnin Spiritual Allies##66237 |goto 45.56,12.94
accept Ground Leave##66534 |goto 45.56,12.94
|only if Horde
step
Follow the path |goto Orgrimmar/1 53.47,90.40 < 10 |walk
Visit the Portal Room |q 66534/4 |goto Orgrimmar/1 56.00,90.01
|tip Inside the building.
|only if Horde
step
Enter the building |goto 52.76,75.01 < 15 |walk
Visit the Auction House |q 66534/1 |goto 53.54,73.85
|tip Inside the building.
|only if Horde
step
Enter the building |goto 49.39,81.72 < 10 |walk
Visit the Bank |q 66534/2 |goto 49.03,82.68
|tip Inside the building.
|only if Horde
step
Enter the building |goto 38.61,80.10 < 10 |walk
Visit the Embassy |q 66534/3 |goto 38.35,80.42
|tip Inside the building.
|only if Horde
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
turnin Ground Leave##66534 |goto 44.01,38.25
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
accept Aspectral Invitation##65437 |goto 44.07,37.98
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
Choose _<Listen to Ebonhorn.>_
Speak with Ebyssian |q 65437/1 |goto 44.07,37.98
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto 44.07,37.98
accept An Iconic, Draconic, Look##65613 |goto 44.07,37.98
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
Choose _<Ask about choosing a visage.>_
Ask Ebyssian About Visage Form |q 65613/1 |goto 44.07,37.98
|only if Horde
step
Watch the dialogue
|tip On the platform above the city.
Learn About Visage Form	|q 65613/2 |goto 44.07,37.98
|only if Horde
step
Adopt a Visage Form |q 65613/3 |goto 44.07,37.98
|tip Use the "Visage Form" ability.
|tip It appears as a button on the screen.
|tip On the platform above the city.
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin An Iconic, Draconic, Look##65613 |goto 44.07,37.98
|only if Horde
step
accept I Believe You Can Fly##32674 |goto 44.07,37.98
|tip You will accept this quest automatically.
|only if Horde
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto 44.20,37.80
|only if Horde
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto 44.02,38.25
|only if Horde
step
talk Maztha##44919
|tip On the platform above the city.
turnin I Believe You Can Fly##32674 |goto 48.88,59.25
|only if Horde
step
talk Maztha##44919
|tip Learn Apprentice and Journeyman Riding to unlock Expert Riding.
|tip On the platform above the city.
learnspell Expert Riding##34090 |goto 48.88,59.25
|only if Horde
step
_NOTE:_
You Can Now Fly
|tip You can now use flying mounts.
|tip Use a flying mount to complete the rest of the quests in Orgrimmar.
Click Here to Continue |confirm |q 66534
|only if Horde
step
talk Doras##3310
|tip On the platform above the city.
fpath Orgrimmar |goto 49.65,59.21
|only if Horde
step
talk Pathfinder Tacha##184796
|tip On top of the rock structure above the city.
Tell her _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 65443/2 |goto 38.59,56.95
|only if Horde
step
talk Boss Magor##184787
|tip On the ground, on the fishing dock.
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 65443/1 |goto 57.08,54.11
|only if Horde
step
Enter the building |goto 70.35,48.99 < 10 |walk
talk Cataloger Kieule##184795
|tip Upstairs inside the building.
Tell her _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 65443/3 |goto 71.44,50.64
|only if Horde
step
talk Kodethi##198442
|tip On top of the wall.
Tell him _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_
Deliver the Orders to Kodethi |q 72256/1 |goto 55.08,89.61
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
|only if Horde
step
_NOTE:_
Choose How to Level Up
|tip There are 2 versions of the Leveling guides.
|tip Full Zones (Story + Side Quests) and Story Only.
|tip The Full Zone guides will get you to level 70 before you get to the final leveling zone, which you need to complete to unlock world quests.
|tip The Story Only guides will only get you to about level 67, then you can use the full zone guides to do side quests, or start completing world quests, to reach level 70.
|tip Click the line below to choose how you want to level up.
Full Zone (Story + Side Quests) Guides		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
Story Only Guides				|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)",{
author="support@zygorguides.com",
},[[
step
accept The Dragon Isles Await##65436
|tip You will accept this quest automatically.
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Standing in an open window on the outer wall of Stormwind Keep.
turnin The Dragon Isles Await##65436 |goto Stormwind City/0 79.80,27.02
accept Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.02
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
Choose _<Listen to Wrathion and Turalyon.>_
Speak with Wrathion |q 66577/1 |goto 79.80,27.02
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto 79.80,27.02
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Scalecommander Azurathel##189603
|tip Inside the building.
accept The Obsidian Warders##72240 |goto 79.94,26.95
|only if Alliance
step
talk Toddy Whiskers##189602
|tip Inside the building.
accept Expeditionary Coordination##66589 |goto 79.72,27.33
|only if Alliance
step
talk Thaelin Darkanvil##189767
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 66589/1 |goto 64.14,37.22
|only if Alliance
step
talk Cataloger Wulferd##189765
Tell him _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 66589/3 |goto 63.35,69.90
|only if Alliance
step
talk Dervishian##198401
|tip On top of the building.
Tell her _"Scalecommander Azurathel would like you to meet him at the docks."_
Deliver the Orders to Dervishian |q 72240/1 |goto 50.91,67.39
|only if Alliance
step
talk Pathfinder Jeb##189763
Tell him _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 66589/2 |goto 38.24,45.31
|only if Alliance
step
talk Toddy Whiskers##189077
turnin Expeditionary Coordination##66589 |goto 22.71,55.66
turnin The Obsidian Warders##72240 |goto 22.71,55.66
|only if Alliance
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip He appears out of a portal.
accept Whispers on the Winds##66596 |goto 23.01,56.14
|only if Alliance
step
talk Archmage Khadgar##193450
Choose _<Ask Khadgar what happened.>_
Speak with Archmage Khadgar |q 66596/1 |goto 23.01,56.14
|only if Alliance
step
talk Wrathion##189569
turnin Whispers on the Winds##66596 |goto 22.94,55.99
|only if Alliance
step
talk Toddy Whiskers##189077
turnin The Call of the Isles##70197 |goto 22.73,55.66
|only if Alliance and (haveq(70197) or completedq(70197))
step
talk Toddy Whiskers##189077
accept To the Dragon Isles!##67700 |goto 22.72,55.67
|only if Alliance
step
Wait for the Rugged Dragonscale at Stormwind Docks |q 67700/1 |goto 21.83,56.53
|tip Wait for the boat to arrive, then board the boat.
|only if Alliance
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 67700
|tip Wait for the boat to sail to the Dragon Isles.
|only if Alliance
step
Ride the Rugged Dragonscale to Dragon Isles |q 67700/2 |goto The Waking Shores/0 82.13,31.88
|tip Walk into the camp.
|only if Alliance
step
Watch the dialogue
talk Toddy Whiskers##189022
|tip She runs to this location.
turnin To the Dragon Isles!##67700 |goto 82.13,31.88
accept Explorers in Peril##70122 |goto 82.13,31.88
|only if Alliance
step
talk Scalecommander Azurathel##189035
accept Primal Pests##70123 |goto 82.16,31.85
|only if Alliance
step
talk Thaelin Darkanvil##189021
accept Practice Materials##70124 |goto 82.09,31.88
|only if Alliance
stickystart "Kill_Primal_Proto_Drakes"
stickystart "Collect_Primal_Proto_Whelp_Scales"
step
Follow the path |goto 81.70,32.65 < 30 |only if walking
click Protodragon Rib Cage
|tip Run around the mountain.
Rescue Professor Cogcatcher |q 70122/1 |goto 83.55,33.60
|only if Alliance
step
clicknpc Archivist Rellid##189055
|tip He looks like a Draenei being flown around this area by 2 smaller dragons.
Rescue Archivist Rellid |q 70122/2 |goto 82.93,36.04
|only if Alliance
step
clicknpc Spelunker Lockeye##189052
|tip She looks like a Draenei hanging from a chain over the lava.
Rescue Spelunker Lockeye |q 70122/3 |goto 79.50,35.35
|only if Alliance
step
label "Kill_Primal_Proto_Drakes"
kill 10 Primal Proto-Drake##193806 |q 70123/1 |goto 81.66,34.60
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
|only if Alliance
step
label "Collect_Primal_Proto_Whelp_Scales"
kill Primal Proto-Whelp##193876+
|tip They look like tiny dragons flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
collect 15 Primal Proto-Whelp Scale##198398 |q 70124/1 |goto 81.66,34.60
|only if Alliance
step
Follow the path and run up the stairs |goto 77.61,32.99 < 40 |only if walking and not subzone("Wingrest Embassy")
talk Toddy Whiskers##187251
turnin Explorers in Peril##70122 |goto 76.63,33.63
accept Where is Wrathion?##70125 |goto 76.63,33.63
|only if Alliance
step
talk Sendrax##193362
Ask him _"Why aren't the dragons here to meet us?"_
Watch the dialogue
Inquire after the Missing Dragons |q 70125/1 |goto 76.58,33.67
|only if Alliance
step
talk Sendrax##193362
turnin Where is Wrathion?##70125 |goto 76.58,33.67
|only if Alliance
step
Story Not Complete Detected	|next "Waking_Shores_Alliance"		|only if not (achieved(16363) and completedq(65691))
Story Complete Detected		|next "Scouting_Map_Alliance"		|only if achieved(16363) and completedq(65691) and not completedallq(65794,66783,66015,66221)
All Stories Complete Detected	|next "All_Stories_Complete"		|only if achieved(16363) and completedq(65691) and completedallq(65794,66783,66015,66221)
|only if Alliance
step
label "Scouting_Map_Alliance"
talk Sendrax##193362
accept Adventuring in the Dragon Isles##72293 |goto 76.58,33.67
|only if Alliance and not (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Alliance and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are choosing the zone you wish to do quests in first.
|tip Pick whichever you like, it doesn't matter.
accept The Waking Shores##72266 |or |goto 76.52,34.23 |only if not completedq(72266)
accept Ohn'ahran Plains##72267 |or |goto 76.52,34.23 |only if not completedq(72267)
accept Azure Span##72268 |or |goto 76.52,34.23 |only if not completedq(72268)
accept Thaldraszus##72269 |or |goto 76.52,34.23 |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto 76.52,34.23 |only if haveq(72293)
|only if Alliance
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in the Dragon Isles##72293
|only if Alliance and (haveq(72293) or completedq(72293))
step
talk Thaelin Darkanvil##189058
turnin Practice Materials##70124 |goto 76.48,34.37
|only if Alliance
step
talk Scalecommander Azurathel##187252
turnin Primal Pests##70123 |goto 76.75,34.41
|only if Alliance
step
Enter the building |goto 76.30,35.27 < 20 |walk
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Alliance
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Alliance
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Alliance"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"
|only if Alliance
step
label "Waking_Shores_Alliance"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Alliance
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Alliance and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Thaelin Darkanvil##189058
turnin Practice Materials##70124 |goto 76.48,34.37
|only if Alliance
step
talk Scalecommander Azurathel##187252
turnin Primal Pests##70123 |goto 76.75,34.41
|only if Alliance
step
talk Captain Garrick##184449
accept Give Peace a Chance##67053 |goto 76.73,34.56
|only if Alliance
step
talk Warlord Breka Grimaxe##184452
turnin Give Peace a Chance##67053 |goto 76.36,33.08
accept Encroaching Elementals##70135 |goto 76.36,33.08
|only if Alliance
step
talk Aster Cloudgaze##187257
accept From Such Great Heights##66101 |goto 75.84,33.49
|only if Alliance
step
click Surveyor's Disc
Hop on the Surveyor's Disc |q 66101/1 |goto 75.90,33.57
|only if Alliance
step
Watch the dialogue
|tip Use the "Search for Power" ability on your action bar.
Search for Power |q 66101/2 |goto 75.91,33.55
|only if Alliance
step
Watch the dialogue
|tip Use the "Search for Allies" ability on your action bar.
Search for Allies |q 66101/3 |goto 75.93,33.56
|only if Alliance
step
Watch the dialogue
|tip Use the "Search for Danger" ability on your action bar.
Search for Danger |q 66101/4 |goto 75.92,33.54
|only if Alliance
step
talk Aster Cloudgaze##187257
turnin From Such Great Heights##66101 |goto 75.84,33.49
|only if Alliance
step
talk Haephesta##192438
accept Quality Assurance##69965 |goto 76.41,34.45
|only if Alliance
step
talk Grun Ashbeard##187261
accept Always Be Crafting##66112 |goto 76.35,34.64
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
Tell him _"I'm a new arrival with the Dragonscale Expedition."_
Speak with Ambassador Fastrasz |q 69911/1 |goto 76.33,35.62
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Alliance
step
click Embassy Visitor Log
|tip Inside the building.
Choose _<Begin filling out the form.>_
|tip Choose any of the dialogue options, it doesn't matter.
Sign the Embassy Visitor Log |q 69911/2 |goto 76.28,35.61
|only if Alliance
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Alliance
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto 75.61,34.14 |next "Waking_Shores_Both"
|only if Alliance
step
accept The Dragon Isles Await##65435
|tip You will accept this quest automatically.
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin The Dragon Isles Await##65435 |goto Orgrimmar/1 44.05,37.96
accept Aspectral Invitation##65437 |goto Orgrimmar/1 44.05,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
Choose _"<Listen to Ebonhorn.>"_
Speak with Ebyssian |q 65437/1 |goto 44.05,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto 44.05,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto 44.02,38.25
|only if Horde
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto 44.18,37.78
|only if Horde
step
talk Pathfinder Tacha##184796
|tip On top of the rocks above the city.
Tell her _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 65443/2 |goto 38.60,56.95
|only if Horde
step
talk Boss Magor##184787
|tip On the ground, on the fishing dock.
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 65443/1 |goto 57.10,54.11
|only if Horde
step
Enter the building |goto 70.36,49.01 < 10 |walk |only if not (subzone("The Wyvern's Tail") and _G.IsIndoors())
talk Cataloger Coralie##184795
|tip Upstairs inside the building.
Tell her _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 65443/3 |goto 71.45,50.63
|only if Horde
step
talk Kodethi##198442
|tip On top of the wall.
Tell him _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_
Deliver the Orders to Kodethi |q 72256/1 |goto 55.08,89.61
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
|only if Horde
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip On top of the tower.
|tip He appears out of a portal.
accept Whispers on the Winds##65439 |goto 55.92,12.60
|only if Horde
step
talk Archmage Khadgar##193450
|tip On top of the tower.
Tell him _"<Ask Khadgar what happened.>"_
Speak with Archmage Khadgar |q 65439/1 |goto 55.92,12.60
|only if Horde
step
talk Ebyssian##190239
|tip On top of the tower.
turnin Whispers on the Winds##65439 |goto 55.84,12.75
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
accept To the Dragon Isles!##65444 |goto 55.81,12.66
|only if Horde
step
Wait for the Defiant Dragonscale at the Zeppelin Tower |q 65444/1 |goto 56.02,13.50
|tip Wait for the zeppelin to arrive, then board the zeppelin.
|only if Horde
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 65444
|tip Wait for the zeppelin to fly to the Dragon Isles.
|only if Horde
step
Ride the Rugged Dragonscale to Dragon Isles |q 65444/2 |goto The Waking Shores/0 80.62,27.61
|tip Walk into the camp.
|only if Horde
step
Watch the dialogue
talk Naleidea Rivergleam##184841
|tip She runs to this location.
turnin To the Dragon Isles!##65444 |goto 80.62,27.61
accept Explorers in Peril##65452 |goto 80.62,27.61
|only if Horde
step
talk Scalecommander Cindrethresh##184859
accept Primal Pests##65453 |goto 80.65,27.59
|only if Horde
step
talk Boss Magor##184844
accept Practice Materials##65451 |goto 80.60,27.65
|only if Horde
stickystart "Kill_Primal_Proto_Drakes_Horde"
stickystart "Collect_Primal_Proto_Whelp_Scales_Horde"
step
Follow the path |goto 80.24,28.58 < 30 |only if walking
click Protodragon Rib Cage
|tip Run around the mountain.
Rescue Pathfinder Poppy |q 65452/1 |goto 80.37,26.34
|only if Horde
step
clicknpc Archivist Spearblossom##187157
|tip He looks like a Tauren being flown around this area by 2 smaller dragons.
Rescue Archivist Spearblossom |q 65452/2 |goto 78.79,24.47
|only if Horde
step
clicknpc Spelunker Lazee##187151
|tip He looks like a Goblin hanging from a chain over the lava.
Rescue Spelunker Lazee |q 65452/3 |goto 77.33,29.81
|only if Horde
step
label "Kill_Primal_Proto_Drakes_Horde"
kill 10 Primal Proto-Drake##193806 |q 65453/1 |goto 79.41,26.55
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
|only if Horde
step
label "Collect_Primal_Proto_Whelp_Scales_Horde"
kill Primal Proto-Whelp##193876+
|tip They look like tiny dragons flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
collect 20 Primal Proto-Whelp Scale##198398 |q 65451/1 |goto 79.41,26.55
|only if Horde
step
Follow the path and run up the stairs |goto 77.38,32.50 < 40 |only if walking and not subzone("Wingrest Embassy")
talk Naleidea Rivergleam##184870
turnin Explorers in Peril##65452 |goto 76.61,33.60
accept Where is Wrathion?##69910 |goto 76.61,33.60
|only if Horde
step
talk Sendrax##193362
Ask her _"Why aren't the dragons here to meet us?"_
Watch the dialogue
Inquire after the Missing Dragons |q 69910/1 |goto 76.58,33.67
|only if Horde
step
talk Sendrax##193362
turnin Where is Wrathion?##69910 |goto 76.58,33.67
|only if Horde
step
Story Not Complete Detected	|next "Waking_Shores_Horde"		|only if not (achieved(16363) and completedq(65691))
Story Complete Detected		|next "Scouting_Map_Horde"		|only if achieved(16363) and completedq(65691) and not completedallq(65794,66783,66015,66221)
All Stories Complete Detected	|next "All_Stories_Complete"		|only if achieved(16363) and completedq(65691) and completedallq(65794,66783,66015,66221)
|only if Horde
step
label "Scouting_Map_Horde"
talk Sendrax##193362
accept Adventuring in the Dragon Isles##72293 |goto 76.58,33.67
|only if Horde and not (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
step
talk Warlord Breka Grimaxe##184452
accept Give Peace a Chance##66110 |goto 76.36,33.08
|only if Horde
step
talk Scalecommander Cindrethresh##187235
turnin Primal Pests##65453 |goto 76.28,33.02
|only if Horde
step
talk Boss Magor##187236
turnin Practice Materials##65451 |goto 75.94,33.24
|only if Horde
step
talk Aster Cloudgaze##187257
accept From Such Great Heights##66101 |goto 75.84,33.49
|only if Horde
step
click Surveyor's Disc
Hop on the Surveyor's Disc |q 66101/1 |goto 75.90,33.57
|only if Horde
step
Watch the dialogue
|tip Use the "Search for Power" ability on your action bar.
Search for Power |q 66101/2 |goto 75.91,33.55
|only if Horde
step
Watch the dialogue
|tip Use the "Search for Allies" ability on your action bar.
Search for Allies |q 66101/3 |goto 75.93,33.56
|only if Horde
step
Watch the dialogue
|tip Use the "Search for Danger" ability on your action bar.
Search for Danger |q 66101/4 |goto 75.92,33.54
|only if Horde
step
talk Aster Cloudgaze##187257
turnin From Such Great Heights##66101 |goto 75.84,33.49
|only if Horde
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are choosing the zone you wish to do quests in first.
|tip Pick whichever you like, it doesn't matter.
accept The Waking Shores##72266 |or |goto 76.52,34.23 |only if not completedq(72266)
accept Ohn'ahran Plains##72267 |or |goto 76.52,34.23 |only if not completedq(72267)
accept Azure Span##72268 |or |goto 76.52,34.23 |only if not completedq(72268)
accept Thaldraszus##72269 |or |goto 76.52,34.23 |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto 76.52,34.23 |only if haveq(72293)
|only if Horde
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in the Dragon Isles##72293
|only if Horde and (haveq(72293) or completedq(72293))
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Horde and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Captain Garrick##184449
turnin Give Peace a Chance##66110 |goto 76.73,34.56
|only if Horde
step
Enter the building |goto 76.30,35.27 < 20 |walk
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Horde
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Horde
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Horde"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"
|only if Horde
step
label "Waking_Shores_Horde"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Horde
step
talk Warlord Breka Grimaxe##184452
accept Give Peace a Chance##66110 |goto 76.36,33.08
|only if Horde
step
talk Scalecommander Cindrethresh##187235
turnin Primal Pests##65453 |goto 76.28,33.02
|only if Horde
step
talk Boss Magor##187236
turnin Practice Materials##65451 |goto 75.94,33.24
|only if Horde
step
talk Aster Cloudgaze##187257
accept From Such Great Heights##66101 |goto 75.84,33.49
|only if Horde
step
click Surveyor's Disc
Hop on the Surveyor's Disc |q 66101/1 |goto 75.90,33.57
|only if Horde
step
Watch the dialogue
|tip Use the "Search for Power" ability on your action bar.
Search for Power |q 66101/2 |goto 75.91,33.55
|only if Horde
step
Watch the dialogue
|tip Use the "Search for Allies" ability on your action bar.
Search for Allies |q 66101/3 |goto 75.93,33.56
|only if Horde
step
Watch the dialogue
|tip Use the "Search for Danger" ability on your action bar.
Search for Danger |q 66101/4 |goto 75.92,33.54
|only if Horde
step
talk Aster Cloudgaze##187257
turnin From Such Great Heights##66101 |goto 75.84,33.49
|only if Horde
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Horde and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Captain Garrick##184449
turnin Give Peace a Chance##66110 |goto 76.73,34.56
accept Encroaching Elementals##66111 |goto 76.73,34.56
|only if Horde
step
talk Haephesta##192438
accept Quality Assurance##69965 |goto 76.41,34.45
|only if Horde
step
talk Grun Ashbeard##187261
accept Always Be Crafting##66112 |goto 76.35,34.64
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
Tell him _"I'm a new arrival with the Dragonscale Expedition."_
Speak with Ambassador Fastrasz |q 69911/1 |goto 76.33,35.62
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Horde
step
click Embassy Visitor Log
|tip Inside the building.
Choose _<Begin filling out the form.>_
|tip Choose any of the dialogue options, it doesn't matter.
Sign the Embassy Visitor Log |q 69911/2 |goto 76.28,35.61
|only if Horde
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Horde
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto 75.61,34.14 |next "Waking_Shores_Both"
|only if Horde
step
label "Waking_Shores_Both"
click Brazier of Kinship
Relight the Brazier of Kinship |q 69911/4 |goto The Waking Shores/0 78.42,31.78
step
talk Sendrax##193362
turnin Excuse the Mess##69911 |goto 76.58,33.67
accept My First Real Emergency!##69912 |goto 76.58,33.67
step
talk Sendrax##193362
Tell her _"Send the signal flare to alert the dragons of our arrival."_
Watch the dialogue
Send the Signal Flare |q 69912/1 |goto 76.58,33.67
step
Watch the dialogue
Wait for the Dragons' Arrival |q 69912/2 |goto 76.26,34.40
step
talk Wrathion##193371
turnin My First Real Emergency!##69912 |goto 76.19,34.50
step
talk Majordomo Selistra##193372
accept The Djaradin Have Awoken##69914 |goto 76.22,34.53
step
talk Majordomo Selistra##193372
Ask him _"How can I help defend against the djaradin?"_
Watch the dialogue
Receive the Orders from Majordomo Selistra |q 69914/1 |goto 76.22,34.53
step
talk Sendrax##193363
turnin The Djaradin Have Awoken##69914 |goto 76.26,34.40
accept Reporting for Duty##65760 |goto 76.26,34.40
stickystart "Excavate_Volcanic_Geodes"
stickystart "Slay_Primal_Elementals"
step
Enter the cave |goto 75.78,37.03 < 15 |walk |only if not subzone("Quaking Cavern")
kill Baron Crustcore##192266
|tip He looks like a larger stone elemental.
|tip Downstairs inside the cave.
collect Primal Earthen Core##190386 |q 66112/2 |goto 74.91,39.29
step
Follow the path up and leave the cave |goto 75.78,37.03 < 15 |walk |only if subzone("Quaking Cavern")
kill Baron Ashflow##192274
|tip He looks like a larger lava elemental.
collect Primal Molten Core##194548 |q 66112/1 |goto 72.91,32.98
step
label "Excavate_Volcanic_Geodes"
click Volcanic Geode+
|tip They look like large grey boulders on the ground.
Excavate #6# Volcanic Geodes |q 69965/1 |goto 74.68,36.13
step
label "Slay_Primal_Elementals"
Kill Elementals enemies around this area
|tip They look like larger lava and stone elementals, and smaller lava oozes.
Slay #15# Primal Elementals |q 70135/1 |goto 74.68,36.13 |only if haveq(70135) or completedq(70135)
Slay #15# Primal Elementals |q 66111/1 |goto 74.68,36.13 |only if haveq(66111) or completedq(66111)
step
talk Warlord Breka Grimaxe##184452
turnin Encroaching Elementals##70135 |goto 76.36,33.08
|only if haveq(70135) or completedq(70135)
step
talk Captain Garrick##184449
turnin Encroaching Elementals##66111 |goto 76.73,34.55
|only if haveq(66111) or completedq(66111)
step
talk Haephesta##192438
turnin Quality Assurance##69965 |goto 76.41,34.45
step
talk Grun Ashbeard##187261
turnin Always Be Crafting##66112 |goto 76.35,34.64
step
talk Sendrax##193363
Tell her _"Lead me to Dragonheart Outpost."_
Ask Sendrax to Lead You to the Outpost |q 65760/1 |goto 76.26,34.40
step
Watch the dialogue
|tip Follow Sendrax as she walks.
|tip She eventually walks to this location.
Follow Sendrax to the Outpost |q 65760/2 |goto 71.25,40.67
step
talk Commander Lethanak##186584
turnin Reporting for Duty##65760 |goto 71.20,40.77
accept Invader Djaradin##65989 |goto 71.20,40.77
accept Deliver Whelps From Evil##65990 |goto 71.20,40.77
stickystart "Slay_Djaradin"
step
Cross the bridge |goto 71.28,41.56 < 15 |only if walking and not subzone("Dragonheart Outpost")
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
|tip Behind the building.
Save the Whimpering Whelpling |q 65990/1 |goto 71.36,44.64 |count 1
step
Enter the building |goto 70.98,46.18 < 10 |walk
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
|tip Upstairs inside the building.
Save the Whimpering Whelpling |q 65990/1 |goto 70.97,46.63 |count 2
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
Save the Whimpering Whelpling |q 65990/1 |goto 69.86,45.30 |count 3
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
|tip It flies in the air around this area.
Save the Whimpering Whelpling |q 65990/1 |goto 69.35,43.36 |count 4
step
label "Slay_Djaradin"
Kill Qalashi enemies around this area
|tip They look like large grey humans.
|tip You can find them all around the Dragonheart Outpost area. |notinsticky
Slay #6# Djaradin |q 65989/1 |goto 70.37,44.87
step
talk Commander Lethanak##186584
turnin Invader Djaradin##65989 |goto 71.20,40.78
turnin Deliver Whelps From Evil##65990 |goto 71.20,40.78
accept Time for a Reckoning##65991 |goto 71.20,40.78
step
talk Mender Eskros##195303
|tip She walks around this area.
accept Erstwhile Ecologists##72122 |goto 71.22,40.36
step
talk Ecologist Iskha##186410
turnin Erstwhile Ecologists##72122 |goto 74.43,42.14
accept A Scalpel of a Solution##66105 |goto 74.43,42.14
step
talk Ecologist Tharu##186428
accept Wildlife Rescue##66107 |goto 74.51,42.18
stickystart "Kill_Rampaging_Wind"
stickystart "Kill_Rampaging_Water"
step
click Various Animal+
|tip They look like various animals on the ground, in the air, or being channeled on by elementals around this area.
Rescue #20# Wildlife |q 66107/1 |goto 76.32,46.68
You can find more around [80.46,48.71]
step
label "Kill_Rampaging_Water"
kill 5 Rampaging Water##187493 |q 66105/1 |goto 77.52,47.25
|tip They look like water elementals.
step
label "Kill_Rampaging_Wind"
kill 5 Rampaging Wind##187494 |q 66105/2 |goto 77.52,47.25
|tip They look like air elementals.
step
talk Ecologist Tharu##186428
turnin Wildlife Rescue##66107 |goto 74.51,42.18
step
talk Ecologist Iskha##186410
turnin A Scalpel of a Solution##66105 |goto 74.43,42.14
accept Forensic Ecology##66104 |goto 74.43,42.14
step
click Windyfin Gorloc Corpse
|tip It looks like a dead green gremlin on the table.
Watch the dialogue
Dissect the Windyfin Gorloc Corpse |q 66104/2 |goto 74.47,42.20
step
click Soggymaw Gorloc Corpse
|tip It looks like a dead dark colored gremlin on the table.
Watch the dialogue
Dissect the Soggymaw Gorloc Corpse |q 66104/1 |goto 74.46,42.21
step
click Viscera-Covered Shells
|tip They look like shell fragments on the table.
Examine the Glistening Shells |q 66104/3 |goto 74.47,42.19
step
talk Ecologist Iskha##186410
turnin Forensic Ecology##66104 |goto 74.42,42.14
accept A Sledgehammer of a Solution##66108 |goto 74.42,42.14
step
talk Ecologist Tharu##186428
accept Don't Be So Shellfish##66106 |goto 74.51,42.17
stickystart "Collect_Wind_Infused_Shells"
stickystart "Collect_Water_Infused_Shells"
step
talk Bubbled Duckling##187439
accept A Quack For Help##66196 |goto 80.12,42.87
step
kill Sogglmoggl##188859 |q 66108/1 |goto 80.07,44.02
|tip He looks like a gremlin riding inside a water elemental.
step
Avoid the tornados and follow the path up |goto 80.73,42.04 < 30 |only if walking
kill Whirglgurgl##188860 |q 66108/2 |goto 79.79,39.85
|tip He looks like a gremlin riding on an air elemental.
|tip Up on the cliff.
step
label "Collect_Wind_Infused_Shells"
Kill Windyfin enemies around this area
|tip They look like gremlins.
|tip They can mostly be found on top of the cliffs around this area.
click Pile of Wind-Infused Shells+
|tip They look like piles of large dark colored snail shells on the ground around this area.
collect 15 Wind-Infused Shell##191546 |q 66106/1 |goto 81.05,42.63
step
label "Collect_Water_Infused_Shells"
Kill Soggymaw enemies around this area
|tip They look like gremlins.
|tip Only Seabashers and Wavebringers will drop the quest item.
click Pile of Water-Infused Shells+
|tip They look like piles of large dark colored snail shells on the ground around this area.
collect 15 Water-Infused Shell##191549 |q 66106/2 |goto 79.99,43.03
step
Bring the Bubbled Duckling to the Ecologist's Camp |q 66196/1 |goto 74.51,42.17
step
talk Ecologist Tharu##186428
turnin Don't Be So Shellfish##66106 |goto 74.51,42.17
turnin A Quack For Help##66196 |goto 74.51,42.17
step
talk Ecologist Iskha##186410
turnin A Sledgehammer of a Solution##66108 |goto 74.43,42.14
step
Follow the path |goto 68.28,39.52 < 100 |only if walking
Run up the stairs |goto 66.40,35.21 < 10 |only if walking
Meet Wrathion at Scalecracker Keep |q 65991/1 |goto 66.49,34.42
|tip On top of the building.
step
talk Wrathion##186640
|tip He flies down and lands on top of the building.
turnin Time for a Reckoning##65991 |goto 66.36,35.00
accept Killjoy##65993 |goto 66.36,35.00
accept Blacktalon Intel##65992 |goto 66.36,35.00
step
talk Right##190564
Ask her _"What have you observed about the djaradin?"_
Consult Right |q 65992/3 |goto 65.10,29.35
step
kill Meatgrinder Sotok##186777 |q 65993/1 |goto 62.94,29.43
collect Qalashi Plans##193874 |n
|tip You will automatically accept the quest after looting the item.
accept The Obsidian Citadel##65995 |goto 62.94,29.43
step
talk Left##190563
Ask her _"What have you observed about the djaradin?"_
Consult Left |q 65992/2 |goto 63.43,28.87
step
Follow the path |goto 64.34,33.58 < 40 |only if walking
talk Talonstalker Kavia##188299
Ask her _"What have you observed about the djaradin?"_
Consult Talonstalker Kavia |q 65992/1 |goto 63.04,33.34
step
Run up the stairs |goto 62.96,33.17 < 10 |only if walking
talk Wrathion##194772
|tip On top of the building.
turnin Killjoy##65993 |goto 62.64,33.17
turnin Blacktalon Intel##65992 |goto 62.64,33.17
turnin The Obsidian Citadel##65995 |goto 62.64,33.17
step
talk Majordomo Selistra##186767
|tip On top of the building.
accept Veteran Reinforcements##65996 |goto 62.75,33.10
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 60.98,35.63 |count 1
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 61.10,36.77 |count 2
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 59.04,34.84 |count 3
step
talk Caretaker Ventraz##188297
accept Fighting Fire with... Water##66998 |goto 59.10,34.85
step
use the Bottled Water Elemental##194441
|tip This will summon a water elemental to help you fight.
|tip If you already have a water elemental, use it again to fully heal your elemental.
kill Erupting Droplet##191983+
|tip They look like orange lava oozes.
|tip Inside and outside the cave.
Contain the Erupting Cavern |q 66998/1 |goto 59.15,34.03
step
talk Caretaker Ventraz##188297
turnin Fighting Fire with... Water##66998 |goto 59.10,34.85
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 56.64,34.77 |count 4
step
Meet Sendrax at the Conservatory Outpost |q 65996/2 |goto 54.99,30.77
step
talk Caretaker Azkra##190155
turnin Veteran Reinforcements##65996 |goto 54.99,30.77
accept Chasing Sendrax##65997 |goto 54.99,30.77
step
talk Sendrax##187406
|tip Behind the statue.
Ask her _"What is happening here?"_
Find Sendrax |q 65997/1 |goto 55.18,24.96
step
talk Sendrax##187406
turnin Chasing Sendrax##65997 |goto 55.18,24.95
accept Future of the Flights##65998 |goto 55.18,24.95
accept Red in Tooth and Claw##65999 |goto 55.18,24.95
step
click On the Origin of Draconic Species
|tip It looks like a book.
accept Library of Alexstrasza##66000 |goto 55.26,24.69
stickystart "Slay_Primalist_Forces"
step
click Dracuixote
|tip It looks like a book on the bookshelf.
Save the Book |q 66000/1 |goto 53.47,22.00 |count 1
step
click The Scales of Wrath
|tip It looks like an open book on the bookshelf.
Save the Book |q 66000/1 |goto 53.36,22.39 |count 2
step
Find Infused Dragon Eggs |q 65998/1 |goto 55.18,22.72
|tip Run next to the Ruby Dragon Eggs.
|tip They look like groups of large, red, spikey eggs on the ground.
|tip The eggs will break open and 3 enemies will attack you.
stickystart "Kill_Infused_Ruby_Whelplings"
step
click Pride and Protodrakes
|tip It looks like a book next to the fire.
|tip Inside the building, on the ground floor.
Save the Book |q 66000/1 |goto 54.63,20.36 |count 3
step
Run up the ramp |goto 55.11,20.69 < 10 |only if walking
click The Lord of the Wings
|tip It looks like an open book laying on the floor.
|tip Inside the building, on the top floor.
Save the Book |q 66000/1 |goto 54.60,20.62 |count 4
step
label "Kill_Infused_Ruby_Whelplings"
kill 9 Infused Ruby Whelpling##186822 |q 65998/2 |goto 56.38,23.31
|tip Run next to the Ruby Dragon Eggs.
|tip They look like groups of large, red, spikey eggs on the ground.
|tip The eggs will break open and 3 Infused Ruby Whelplings will attack you.
|tip You can find them all around the Life-Binder Conservatory area. |notinsticky
step
label "Slay_Primalist_Forces"
Kill enemies around this area
|tip You can find them all around the Life-Binder Conservatory area. |notinsticky
Slay #15# Primalist Forces |q 65999/1 |goto 56.38,23.31
step
_Next to you:_
talk Sendrax
turnin Future of the Flights##65998
turnin Red in Tooth and Claw##65999
turnin Library of Alexstrasza##66000
accept A Last Hope##66001
step
talk Sendrax##190269
Tell her _"I am ready."_
Meet Sendrax by the Ritual Site |q 66001/1 |goto 56.24,22.07
step
Watch the dialogue
click Infused Dragon Egg
|tip Click it when Sendrax tells you to.
Pick up the Infused Dragon Egg |q 66001/2 |goto 56.92,21.61
step
_NOTE:_
During the Next Step
|tip You will be carrying the Infused Dragon Egg.
|tip Just run, don't stop to fight enemies or anything else.
|tip If you do anything like fighting enemies, eating or drinking, or using a potion, etc, you will drop the egg on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
Click Here to Continue |confirm |q 66001
step
Run up the stairs |goto 55.21,26.19 < 30 |only if walking and subzone("Life-Binder Conservatory")
Carry the Egg to Safety |q 66001/3 |goto 54.99,30.77
|tip You are carrying the Infused Dragon Egg.
|tip Just run, don't stop to fight enemies or anything else.
|tip If you do anything like fighting enemies, eating or drinking, or using a potion, etc, you will drop the egg on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
step
talk Apprentice Caretaker Zefren##194525
accept A Two for One Deal##70179 |goto 54.44,30.85
step
Follow the path |goto 53.81,30.92 < 20 |only if walking
Kill Elemental enemies around this area
|tip They look like various rock elementals.
|tip You can find them all around the Crumbling Cliffs area.
|tip You can find more nearby in the valley below.
collect 10 Building Materials##198511 |q 70179/1 |goto 51.56,31.65
step
talk Apprentice Caretaker Zefren##194525
turnin A Two for One Deal##70179 |goto 54.44,30.85
step
talk Majordomo Selistra##186795
turnin A Last Hope##66001 |goto 55.09,31.01
accept For the Benefit of the Queen##66114 |goto 55.09,31.01
step
talk Majordomo Selistra##186795
Tell him _"Take me with you to see the queen, please."_
Begin Flying with Majordomo Selistra |havebuff spell:376478 |goto 55.09,31.01 |q 66114
step
Watch the dialogue
Ride with Majordomo Selistra to the Ruby Lifeshrine |q 66114/1 |goto 62.26,72.88 |notravel
step
talk Alexstrasza the Life-Binder##187290
Choose _"<Offer the rescued egg to Queen Alexstrasza.>"_
Show Queen Alexstrasza the Infused Egg |q 66114/2 |goto 62.34,73.02
step
talk Alexstrasza the Life-Binder##187290
turnin For the Benefit of the Queen##66114 |goto 62.34,73.02
accept The Mandate of the Red##66115 |goto 62.34,73.02
accept Dragonriding##68795 |goto 62.34,73.02
step
talk Lifecaller Tzadrak##191025
accept A Ruby Lifecalling##66825 |goto 61.90,73.82
step
click Gardener's Trusty Rake
|tip It looks like a long-handled gardening tool.
|tip On the table.
Choose a Calling |q 66825/1 |goto 61.85,73.78 |count 1
step
Watch the dialogue
click Reinforced Hornstrider Lasso
|tip It looks like a coil of rope.
|tip On the table.
Choose a Calling |q 66825/1 |goto 61.85,73.81 |count 2
step
Watch the dialogue
click Whelptender's Watering Can
|tip It looks like a metal pot with a long pouring spout.
|tip On the table.
Choose a Calling |q 66825/1 |goto 61.85,73.85 |count 3
step
Watch the dialogue
click Shimmery Jar of Fireflies
|tip It looks like a small glass jar with blue liquid in it.
|tip On the table.
Choose a Calling |q 66825/1 |goto 61.85,73.87 |count 4
step
talk Lifecaller Tzadrak##191025
turnin A Ruby Lifecalling##66825 |goto 61.90,73.82
step
talk Vaeros##191174
accept Nursery Direction##66997 |goto 61.82,73.58
step
talk Akora##191012
accept Garden Party##70351 |goto 61.74,73.70
step
talk Dazakros##191176
accept Hornstrider Havoc##66879 |goto 61.73,73.76
step
talk Xius##189261
Ask him _"What do you do here?"_
Speak to Xius |q 66115/1 |goto 60.70,74.05
step
talk Akxall##189262
Ask her _"Why are there so few eggs here?"_
Speak to Akxall |q 66115/2 |goto 59.38,72.42
step
talk Lillistrazsa##193955
accept Friend on the Mend##70058 |goto 59.88,70.37
step
click Glass Bead
|tip It looks like a rainbow colored gem.
|tip On the table.
collect Glass Bead##198345 |q 70058/3 |goto 59.80,71.33
step
talk Valdestrasz##193987
Ask him _"Do you have any spare scraps of fabric?"_
collect Scrap of Fabric##198344 |q 70058/2 |goto 60.31,72.81 |count 1
step
talk Tirastrasza##198605
Ask her _"Do you have any spare scraps of fabric?"_
collect Scrap of Fabric##198344 |q 70058/2 |goto 60.55,73.46 |count 2
step
talk Rathestrasz##193995
Ask him _"Do you have any spare scraps of fabric?"_
collect Scrap of Fabric##198344 |q 70058/2 |goto 59.93,72.67 |count 3
step
click Soft Ruby Feather+
|tip They look like red feathers on the ground.
|tip They are next to the water around the 2 ponds nearby.
collect 5 Soft Ruby Feather##198343 |q 70058/1 |goto 61.39,69.82
step
talk Mahra Treebender##192674
turnin Friend on the Mend##70058 |goto 61.44,70.14
step
talk Mother Elion##185904
Ask her _"Why do you stay here, if you have no eggs to rear?"_
Speak to Mother Elion |q 66115/3 |goto 61.60,68.70
step
talk Zahkrana##189260
Ask him _"How do you care for these eggs?"_
Speak to Zahkrana |q 66115/4 |goto 62.77,70.43
step
talk Zahkrana##189260
turnin The Mandate of the Red##66115 |goto 62.77,70.43
step
talk Amella##194174
accept Training Wings##70061 |goto 62.18,70.56
step
Run down the stairs |goto 60.41,70.60 < 20 |only if walking
clicknpc Ruby Whelpling##193979
|tip It looks like a tiny red dragon.
Choose the Ruby Whelpling |q 70061/1 |goto 61.09,71.46
step
Begin Controlling the Ruby Whelpling |invehicle |q 70061
stickystart "Kill_Intrusive_Pupstingers"
stickystart "Kill_Agitated_Weedlings"
step
kill Relentless Gust##194159 |q 70061/4 |goto 61.45,71.87
|tip They look like tornado elementals.
|tip On the larger stone platforms on the wall.
|tip Use the abilities on your action bar.
|tip To aim your abilities, face the whelpling at what you want to target.
step
label "Kill_Intrusive_Pupstingers"
kill 6 Intrusive Pupstinger##194142 |q 70061/3 |goto 61.45,71.87
|tip They look like flying insects around this area.
|tip Use the abilities on your action bar. |notinsticky
|tip To aim your abilities, face the whelpling at what you want to target. |notinsticky
step
label "Kill_Agitated_Weedlings"
kill 12 Agitated Weedling##193994 |q 70061/2 |goto 61.45,71.87
|tip They look like purple and green plants with teeth.
|tip All along the small platforms on the wall.
|tip Use the abilities on your action bar. |notinsticky
|tip To aim your abilities, face the whelpling at what you want to target. |notinsticky
step
Release the Ruby Whelpling |outvehicle |q 70061
|tip You will automatically fly back to the stone platform.
step
talk Haephesta##192498
|tip On the large platform, overlooking the valley.
accept Artisan's Courier##67564 |goto 57.93,68.25
step
talk Vaknai##192491
|tip On the large platform, overlooking the valley.
fpath Ruby Life Pools |goto 57.80,68.11
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
Tell him _"Tell me about dragonriding."_
Speak to Lord Andestrasz about Dragonriding |q 68795/1 |goto 58.37,67.13
step
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
accept Stay a While##70132 |goto 57.85,66.80
step
Sit with Veritistrasz |havebuff spell:384091 |goto 57.85,66.80 |q 70132
|tip Use the "Stay a While" ability.
|tip It appears as a button on the screen.
|tip On the large platform, overlooking the valley.
step
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
Choose _<Sit and look at the view.>_
Sit and Look at the View |q 70132/1 |goto 57.85,66.80
step
Watch the dialogue
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
Choose _<You are busy. Get up and leave.>_
|tip If you want to hear stories and aren't in a rush, choose the other dialogue options and listen to his stories.
Listen to Veritistrasz's Stories |q 70132/2 |goto 57.85,66.80
step
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
turnin Stay a While##70132 |goto 57.85,66.80
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
|tip He eventually walks to this location.
turnin Dragonriding##68795 |goto 57.66,66.89
accept How to Glide with Your Dragon##65118 |goto 57.66,66.89
step
use the Renewed Proto-Drake##194034
|tip This will teach you your first dragonriding mount.
learnmount Renewed Proto-Drake##368896 |q 65118
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
Click Here to Continue |confirm |q 65118
step
Glide Through The #5# Rings |q 65118/2 |goto 57.69,66.71
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
step
Land in the Target Area |q 65118/3 |goto 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Glide with Your Dragon##65118 |goto 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65120 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How To Dive with Your Dragon##65120 |goto 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
Click Here to Continue |confirm |q 65120
step
Glide Through The #5# Rings |q 65120/2 |goto 57.69,66.71
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
step
Land in the Target Area |q 65120/3 |goto 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How To Dive with Your Dragon##65120 |goto 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65133 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How to Use Momentum with Your Dragon##65133 |goto 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
Click Here to Continue |confirm |q 65133
step
Glide Through The #5# Rings |q 65133/2 |goto 57.69,66.71
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
step
Land in the Target Area |q 65133/3 |goto 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Use Momentum with Your Dragon##65133 |goto 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 68796 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept The Skytop Observatory##68796 |goto 57.66,66.89
step
_NOTE:_
During the Next Steps
|tip You will talk to Celormu to start a dragonriding race.
|tip After talking to him, he will countdown to start the race.
|tip Look for a string of large glowing glyph rings in the air nearby to the northeast.
|tip You will use your dragonriding mount to glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
Click Here to Continue |confirm |q 68796
step
Watch the dialogue
talk Celormu##198040
|tip He eventually walks to this location.
|tip On the large platform, overlooking the valley.
Tell him _"I'd like to try the course to Skytop Observatory."_
Speak with Celormu to Start the Race |q 68796/1 |goto 57.73,66.72
step
Race to the Skytop Observatory |q 68796/2 |goto 57.76,66.75
|tip Look for a string of large glowing glyph rings in the air nearby to the northeast.
|tip You will use your dragonriding mount to glide through each of the rings.
|tip Follow the onscreen instructions and the dotted lines to each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
step
talk Lord Andestrasz##193359
|tip On top of the mountain.
turnin The Skytop Observatory##68796 |goto 75.18,54.97
accept A New Set of Horns##68797 |goto 75.18,54.97
step
talk Glensera##190839
Meet Glensera in the Skytop Observatory |q 68797/1 |goto 74.11,57.93
step
click Rostrum of Transformation
Use the Rostrum of Transformation |q 68797/2 |goto 74.03,58.15
step
talk Lord Andestrasz##193359
turnin A New Set of Horns##68797 |goto 75.18,54.97
accept Dragon Glyphs and You##68798 |goto 75.18,54.97
step
Collect the Dragon Glyph by the Rostrum of Transformation |q 68798/1 |goto 74.34,57.59
|tip It looks like a large floating golden rune near the ground.
|tip Fly through it on you dragonriding mount to collect it.
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Speak to Lithragosa |q 68798/2 |goto 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Tell her _"I'm ready. [Open Dragonriding Skill Track.]"_
View the Dragonriding Skill Track with Lithragosa |q 68798/3 |goto 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Learn the "Take to the Skies" Skill with Lithragosa |q 68798/4 |goto 74.57,56.97
step
talk Celormu##193411
Speak to Celormu |q 68798/5 |goto 73.25,52.06
step
talk Azerastrasz##193477
|tip Open the flight map.
fpath Skytop Observatory |goto 72.77,51.90
step
talk Lord Andestrasz##193359
turnin Meet the Trainers##68798 |goto 75.18,54.97
accept Return to the Ruby Lifeshrine##68799 |goto 75.18,54.97
step
clicknpc Relastrasza##199684
Ride Relastrasza to the Skytop Launch Tower |q 68799/1 |goto 75.02,55.58
step
_NOTE:_
Gather the Dragon Glyphs
|tip Now would be a good time to use the "Dragon Glyphs (All Zones)" guide.
|tip Gathering dragon glyphs will allow you to increase the power of your dragonriding skill.
|tip Gathering them now will make leveling quicker and easier.
Click Here to Continue |confirm |q 70351
step
talk Akora##190866
turnin Garden Party##70351 |goto 60.16,66.43
accept Flowers of our Labor##66827 |goto 60.16,66.43
stickystart "Gather_Seed_Pods"
stickystart "Gather_Fragrant_Dragonflowers"
step
use the Trusty Dragonkin Rake##193826
|tip Use it on Ripened Dragonfruit.
|tip They look like large purple bulbs on the branches of trees with red leaves around this area.
|tip They will fall to the ground.
clicknpc Ripened Dragonfruit##191296+
Gather #5# Ripened Dragonfruit |q 66827/2 |goto 59.85,65.11
step
label "Gather_Seed_Pods"
click Lush Seed Pod+
|tip They look like large brown seeds on the ground around this area.
Gather #5# Lush Seed Pods |q 66827/3 |goto 59.85,65.11
step
label "Gather_Fragrant_Dragonflowers"
click Fragrant Dragonflower+
|tip They look like short plants with peach colored flower petals on the ground around this area.
|tip They will attack you.
Gather #5# Fragrant Dragonflowers |q 66827/1 |goto 59.85,65.11
step
click Seed Basket
Watch the dialogue
Offer the Lush Seed Pods |q 66827/6 |goto 60.30,66.47
step
click Fruit Basket
Watch the dialogue
Offer the Ripened Dragonfruit |q 66827/5 |goto 60.28,66.54
step
click Flower Basket
Watch the dialogue
Offer the Fragrant Dragonflowers |q 66827/4 |goto 60.28,66.62
step
talk Akora##190866
turnin Flowers of our Labor##66827 |goto 60.16,66.42
step
talk Keshki##190868
accept Huddle at the Hollow##66828 |goto 60.19,66.39
step
talk Majordomo Selistra##191768
turnin Training Wings##70061 |goto 62.32,72.90
step
talk Alexstrasza the Life-Binder##187290
|tip At the top of the Ruby Lifeshrine.
turnin Return to the Ruby Lifeshrine##68799 |goto 62.34,73.02
accept Who Brought the Ruckus?##66931 |goto 62.34,73.02
step
talk Thomas Bright##192574
turnin Artisan's Courier##67564 |goto 60.23,72.18
accept A Gift for Miguel##67100 |goto 60.23,72.18
step
talk Thomas Bright##192574
Ask him _"What do you mean, "high quality"?"_
Talk to Thomas about Quality |q 67100/1 |goto 60.23,72.18
step
Discover the Commotion |q 66931/1 |goto 59.44,72.83
step
talk Majordomo Selistra##190293
|tip He flies and lands at this location.
turnin Who Brought the Ruckus?##66931 |goto 59.51,72.63
accept The Primary Threat##66116 |goto 59.51,72.63
step
Report to Commander Lethanak |q 66116/2 |goto 59.41,75.88
|tip On the icy ground.
step
talk Commander Lethanak##187119
turnin The Primary Threat##66116 |goto 59.41,75.88
accept Basalt Assault##66118 |goto 59.41,75.88
step
kill 4 Enraged Cliff##187090 |q 66118/1 |goto 60.28,78.54
|tip They look like large stone elementals.
You can find more around [57.76,76.66]
step
talk Commander Lethanak##187119
turnin Basalt Assault##66118 |goto 59.41,75.87
accept Proto-Fight##66122 |goto 59.41,75.87
step
talk Majordomo Selistra##187129
accept Egg Evac##66121 |goto 59.48,76.14
stickystart "Slay_Proto_Dragons"
step
click Bronze Egg
|tip It looks like a large yellow spikey dragon egg.
Rescue the Bronze Egg |q 66121/1 |goto 56.14,81.30
step
click Ruby Egg
|tip It looks like a large red spikey dragon egg.
Rescue the Ruby Egg |q 66121/4 |goto 54.99,80.95
step
click Emerald Egg
|tip It looks like a large green spikey dragon egg.
Rescue the Emerald Egg |q 66121/3 |goto 55.32,83.30
step
click Azure Egg
|tip It looks like a large blue spikey dragon egg.
Rescue the Azure Egg |q 66121/2 |goto 57.35,83.28
step
label "Slay_Proto_Dragons"
use the Ruby Spear##192436
|tip Use it on Proto-Dragons.
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Flashfrost Enclave area.
|tip They are elite, but using the spear on them makes them easier to kill.
Slay #3# Proto-Dragons |q 66122/2 |goto 55.59,81.86
step
talk Majordomo Selistra##191895
turnin Proto-Fight##66122 |goto 53.68,80.17
turnin Egg Evac##66121 |goto 53.68,80.17
accept Cut Off the Head##66123 |goto 53.68,80.17
step
use Ruby Spear##192436
|tip Use it on Jadzigeth.
|tip He looks like a large blue ice crystal dragon.
|tip He is elite, but using the spear on him makes him easier to kill.
kill Jadzigeth##188447 |q 66123/1 |goto 53.68,82.95
step
talk Majordomo Selistra##191895
turnin Cut Off the Head##66123 |goto 53.68,80.17
accept Exeunt, Triumphant##66124 |goto 53.68,80.17
step
Watch the dialogue
talk Majordomo Selistra##187278
|tip He flies to this location.
Choose _<Check in with the Majordomo.>_
Speak to Majordomo Selistra at the Wild Hatchery |q 66124/1 |goto 46.14,78.53
step
talk Majordomo Selistra##187278
turnin Exeunt, Triumphant##66124 |goto 46.14,78.53
step
talk Alexstrasza the Life-Binder##187115
accept Wrathion Awaits##66079 |goto 46.09,78.29
step
talk Hauler Bennet##191698
accept Out For Delivery##66963 |goto 48.48,78.85
step
talk Cataloger Wulferd##187705
turnin Out For Delivery##66963 |goto 48.49,82.67
accept Amateur Protography##66524 |goto 48.49,82.67
step
talk Naleidea Rivergleam##186869
accept Welcome to the Basecamp##72397 |goto 47.88,82.41
step
talk Rae'ana##188265
Meet the Scholars Supplier |q 72397/1 |goto 47.92,82.08
step
talk Art Raskins##192843
fpath Dragonscale Basecamp |goto 47.91,83.32
step
talk Maribeth##187399
home Dragonscale Basecamp |goto 47.75,83.25 |q 72397
step
talk Granpap Whiskers##187408
Meet the Catalogers Supplier |q 72397/2 |goto 47.73,83.23
step
talk Pathfinder Jeb##187700
Meet the Explorers Supplier |q 72397/3 |goto 47.33,83.40
step
talk Boss Magor##189065
Meet the Artisans Supplier |q 72397/4 |goto 46.94,82.89
step
talk Cataloger Jakes##189226
|tip Inside the building.
Meet the Keeper of Renown |q 72397/5 |goto 47.11,82.57
step
talk Toddy Whiskers##187276
|tip Inside the building.
turnin Welcome to the Basecamp##72397 |goto 47.22,82.73
step
talk Iyali##193500
accept Behavior Analysis "Homework"##69897 |goto 45.91,81.45
accept Scientific Meat-thod##69898 |goto 45.91,81.45
step
kill Pudgy Riverbeast##196017+
|tip They look like large hippos around this area.
collect Extra-Delicious Riverbeast Meat##194564 |q 69898/1 |goto 47.62,76.82
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the "Catalog" ability on your action bar while looking at the Optimistic Whelp, after it jumps to take off flying.
|tip It looks like baby dragon.
|tip If it's not here, either try to take a picture of it as it's flying around nearby, or wait for it to run back to this location.
Photograph an Optimistic Whelp Learning to Fly |q 66524/2 |goto 44.86,78.02
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the "Catalog" ability on your action bar while looking at a Hungry Proto-Drake when it is near the water.
|tip It looks like a large red dragon that flies down to the water at this location.
|tip Take the picture after it grabs the fish.
|tip You may have to wait for it.
Photograph a Hungry Proto-Drake Catching a Fish |q 66524/3 |goto 43.89,78.68
step
clicknpc Sleeping Whelp##196073
|tip It looks like a baby dragon sleeping on a rock.
Pet the Sleeping Whelp |q 69897/1 |goto 42.55,79.36 |count 1
step
clicknpc Sleeping Whelp##196073
|tip It looks like a baby dragon sleeping on a rock.
Pet the Sleeping Whelp |q 69897/1 |goto 42.40,82.57 |count 2
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the "Catalog" ability on your action bar while looking at the Proto-Dragon Egg.
|tip It looks like a large grey spikey dragon egg.
|tip On the ground, near the water.
Photograph a Proto-Dragon Egg |q 66524/1 |goto 43.43,82.80
step
clicknpc Sleeping Whelp##196073
|tip It looks like a baby dragon sleeping on a rock.
Pet the Sleeping Whelp |q 69897/1 |goto 43.53,84.96 |count 3
step
talk Iyali##193500
Choose _"<Report whelp behavior.>"_
|tip Choose all of the dialogue options.
Report Back to Iyali |q 69897/2 |goto 45.91,81.44
step
talk Iyali##193500
turnin Behavior Analysis "Homework"##69897 |goto 45.91,81.44
turnin Scientific Meat-thod##69898 |goto 45.91,81.44
accept Secret Research##69899 |goto 45.91,81.44
step
Watch the dialogue
Listen to Iyali |q 69899/1 |goto 45.91,81.45
step
click Explorer's Crate
Break the Crate Open |q 69899/2 |goto 45.91,81.45
step
Watch the dialogue
Supervise the Kids |q 69899/3 |goto 45.96,81.44
step
talk Iyali##193500
Tell her _"This creature is too injured. We need a researcher to help."_
Watch the dialogue
Convince Iyali to Accept Help |q 69899/4 |goto 45.91,81.42
step
talk Tyrgon##192298
turnin Secret Research##69899 |goto 45.95,81.49
accept Identifying the Source##69900 |goto 45.95,81.49
accept Bring In the Expert##69901 |goto 45.95,81.49
step
kill Trakhan##193783 |q 69900/1 |goto 44.52,80.37
step
click Sunlight Flower
|tip It looks like a small green plant with orange flowers.
|tip On top of the cliff.
Collect the Sunlight Flower |q 69901/1 |goto 43.46,83.03 |count 1
step
click Sunlight Flower
|tip It looks like a small green plant with orange flowers.
|tip On top of the cliff.
Collect the Sunlight Flower |q 69901/1 |goto 43.04,79.44 |count 2
step
click Sunlight Flower
|tip It looks like a small green plant with orange flowers.
|tip On the side of the cliff.
Collect the Sunlight Flower |q 69901/1 |goto 42.05,77.61 |count 3
step
click Sunlight Flower
|tip It looks like a small green plant with orange flowers.
Collect the Sunlight Flower |q 69901/1 |goto 40.56,80.03 |count 4
step
click Sunlight Flower
|tip It looks like a small green plant with orange flowers.
|tip On top of the cliff.
Collect the Sunlight Flower |q 69901/1 |goto 38.67,82.27 |count 5
step
talk Cataloger Wulferd##193740
turnin Amateur Protography##66524 |goto 39.02,83.24
accept Competitive Protography##66525 |goto 39.02,83.24
step
talk Dervishian##193954
accept Preserving the Wilds##66526 |goto 39.09,83.27
stickystart "Free_Proto_Whelps_Or_Proto_Drakes"
step
use Wulferd's Award-Winning Camera##192465
|tip Use the "Catalog" ability on your action bar while looking at the Infused Proto-Drake as it flies nearby.
|tip It looks like a large grey dragon that flies in a circle nearby.
Photograph an Infused Proto-Drake |q 66525/2 |goto 39.66,84.37
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the "Catalog" ability on your action bar while looking at the Infused Proto-Dragon Eggs.
|tip They look like large black and white spikey dragon eggs.
Photograph an Infused Proto-Dragon Egg |q 66525/1 |goto 40.62,85.23
step
label "Free_Proto_Whelps_Or_Proto_Drakes"
Kill Primalist enemies around this area
|tip They look like people wearing robes, and stone bears standing upright.
Free #5# Proto-Whelps or Proto-Drakes |q 66526/1 |goto 40.62,85.23
You can find more around: |notinsticky
[38.54,81.19]
[40.43,78.80]
step
talk Dervishian##193954
turnin Preserving the Wilds##66526 |goto 39.09,83.27
step
talk Cataloger Wulferd##193740
turnin Competitive Protography##66525 |goto 39.02,83.24
accept Professional Protography##66527 |goto 39.02,83.24
step
Jump on the Vertical Enhancement Apparatus |q 66527/1 |goto 38.94,83.39
|tip Walk onto the large metal spring on the ground.
|tip You will be shot up to the top of the pillar.
step
use Wulferd's Award-Winning Camera##192465
|tip Use the "Catalog" ability on your action bar while looking at the Slumbering Proto-Dragon nearby.
|tip It looks like a large dragon sleeping on the ground.
|tip On top of the pillar.
|tip The dragon will knock you off the pillar after you take the picture.
Photograph the Slumbering Proto-Dragon |q 66527/2 |goto 38.77,84.04
step
talk Cataloger Wulferd##193740
turnin Professional Protography##66527 |goto 39.02,83.23
step
talk Dervishian##193954
accept King Without a Crown##66528 |goto 39.09,83.27
step
click Proto-Dragon Charred Foreclaw
|tip It looks like a large black skeletal dragon hand.
Investigate the Charred Foreclaw |q 66528/2 |goto 38.84,83.49
step
click Proto-Dragon Severed Spine
|tip It looks like a larged hooked bone.
Investigate the Severed Spine |q 66528/1 |goto 39.14,83.94
step
click Proto-Dragon Cracked Rib
|tip It looks like a long smooth bone.
Investigate the Cracked Rib |q 66528/3 |goto 39.39,84.03
step
talk Dervishian##193954
turnin King Without a Crown##66528 |goto 39.09,83.27
accept A Thousand Words##66529 |goto 39.09,83.27
step
Watch the dialogue
|tip Dervishian walks to this location.
use Wulferd's Award-Winning Camera##192465
|tip Use the "Catalog" ability on your action bar while looking at Dervishian as she stands next to the dragon skull nearby.
Photograph Dervishian Near the Proto-Dragon Skeleton |q 66529/1 |goto 38.72,83.69
step
talk Dervishian##189484
turnin A Thousand Words##66529 |goto 38.72,83.69
step
talk Tyrgon##192298
turnin Identifying the Source##69900 |goto 45.95,81.49
turnin Bring In the Expert##69901 |goto 45.95,81.49
accept Theory in Practice##69902 |goto 45.95,81.49
step
clicknpc Injured Proto-Whelpling##193547
Watch the dialogue
Treat the Whelpling |q 69902/1 |goto 45.91,81.45
step
talk Tyrgon##192298
Choose _"<Name proto-dragon whelp.>"_
|tip Choose whichever name you like, it doesn't matter.
Name the Whelpling |q 69902/2 |goto 45.95,81.49
step
talk Tyrgon##192298
turnin Theory in Practice##69902 |goto 45.95,81.49
step
talk Scout Kuvaeth##190273
accept Disastrous Detour##69896 |goto 63.58,61.77
step
talk Tallevia Mistsong##192484
fpath Life Vault Ruins |goto 65.03,57.36
step
talk Elementalist Taiyang##188735
turnin Disastrous Detour##69896 |goto 66.06,58.13
accept Site Salvage##66435 |goto 66.06,58.13
accept Unearthed Troublemakers##66436 |goto 66.06,58.13
stickystart "Accept_A_Key_Element"
stickystart "Slay_Earth_Elementals"
step
talk Beleaguered Explorer##189089
|tip It looks like a frightened friendly NPC.
Tell them _"Go to the vault. You'll be safe there."_
Rescue the Explorer |q 66435/1 |goto 67.16,58.31 |count 1
step
talk Beleaguered Explorer##189089
|tip It looks like a frightened friendly NPC.
Tell them _"Go to the vault. You'll be safe there."_
Rescue the Explorer |q 66435/1 |goto 67.51,59.62 |count 2
step
talk Beleaguered Explorer##189089
|tip It looks like a frightened friendly NPC.
|tip Inside the crumbled building.
Tell them _"Go to the vault. You'll be safe there."_
Rescue the Explorer |q 66435/1 |goto 67.92,58.82 |count 3
step
talk Beleaguered Explorer##189089
|tip It looks like a frightened friendly NPC.
Tell them _"Go to the vault. You'll be safe there."_
Rescue the Explorer |q 66435/1 |goto 67.54,57.96 |count 4
step
talk Beleaguered Explorer##189089
|tip It looks like a frightened friendly NPC.
Tell them _"Go to the vault. You'll be safe there."_
Rescue the Explorer |q 66435/1 |goto 67.81,57.37 |count 5
step
label "Accept_A_Key_Element"
Kill enemies around this area
|tip They look like rock and stone elementals.
|tip You can find them all around the Life Vault Ruins area. |notinsticky
collect Orb of Primal Stone##191904 |n
|tip You will eventually accept this quest after looting.
accept A Key Element##66437 |goto 67.37,57.37
step
label "Slay_Earth_Elementals"
Kill enemies around this area
|tip They look like rock and stone elementals.
|tip You can find them all around the Life Vault Ruins area. |notinsticky
Slay #12# Earth Elementals |q 66436/1 |goto 67.37,57.37
step
Enter the building |goto 66.78,56.35 < 20 |walk
talk Elementalist Taiyang##190352
|tip Inside the building.
turnin Site Salvage##66435 |goto 66.59,56.08
turnin Unearthed Troublemakers##66436 |goto 66.59,56.08
turnin A Key Element##66437 |goto 66.59,56.08
accept Distilled Effort##66441 |goto 66.59,56.08
step
talk Acadia Chistlestone##188053
|tip Inside the building.
accept Rapid Fire Plans##66439 |goto 66.62,56.05
step
talk Examiner Tae'shara Bloodwatcher##188503
|tip Inside the building.
accept Lofty Goals##66438 |goto 66.57,56.11
step
talk Scout Ri'tal##190334
Ask her _"Where is the orb now?"_
Speak to Scout Ri'tal |q 66438/1 |goto 70.62,63.15
step
talk Scout Francisco##190423
Ask him _"Where is it now?"_
Speak to Scout Francisco |q 66438/2 |goto 70.13,61.53
step
Walk to this location to launch across the chasm |goto 69.17,61.70 < 7 |walk
click Orb of Primal Gales
|tip It looks like a white orb.
collect Orb of Primal Gales##192524 |q 66438/3 |goto 68.27,61.52
step
talk Keshki##191011
turnin Huddle at the Hollow##66828 |goto 65.33,63.68
accept Hornswoggled!##66830 |goto 65.33,63.68
step
use the Jar of Fireflies##193918
|tip Use it on Bullied Frogs.
|tip They will become Pacified Frogs.
|tip They look like green frogs.
|tip You can find them all around the Hornswog Hollow area.
clicknpc Pacified Frog##190981+
Collect #8# Pacified Frogs |q 66830/1 |goto 66.22,64.03
step
talk Keshki##191011
turnin Hornswoggled!##66830 |goto 65.34,63.68
accept Home Is Where the Frogs Are##66831 |goto 65.34,63.68
stickystart "Collect_Fiery_Spirits"
step
Kill enemies around this area
|tip You can find them all around the Hornswog Hollow area.
collect 8 Primal Flame Fragment##192545+ |n
use the Primal Flame Fragment##192545+
Form the Orb of Primal Flames |q 66439/2 |goto 68.91,64.65
step
label "Collect_Fiery_Spirits"
Kill enemies around this area |notinsticky
|tip They look like fire and lava elementals. |notinsticky
|tip You can find them all around the Hornswog Hollow area. |notinsticky
Collect #3# Fiery Spirits |q 67100/2 |goto 68.91,64.65
|tip Only Fiery Spirits with at least 2 bronze diamonds on the item picture will count for the quest goal.
step
talk Zikkori##196820
accept Drainage Solutions##70994 |goto 70.50,56.84
stickystart "Siphon_Glittery_Streams"
step
Enter the cave |goto 71.04,56.76 < 20 |walk |only if not (subzone("The Waking Shores") and _G.IsIndoors())
kill Acequian##187617
|tip It looks like a large steam elemental.
|tip Inside the cave.
collect Orb of Primal Waves##192562 |q 66441/1 |goto 72.20,56.71
step
label "Siphon_Glittery_Streams"
use Zikkori's Water Siphoning Device##200747
|tip Use it on Glittery Streams.
|tip They look like small steam elementals around this area.
|tip Inside the cave.
Siphon #8# Glittery Streams |q 70994/1 |goto 72.20,56.71
step
Leave the cave |goto 71.04,56.76 < 20 |walk |only if subzone("The Waking Shores") and _G.IsIndoors()
talk Zikkori##196820
turnin Drainage Solutions##70994 |goto 70.50,56.84
step
Enter the building |goto 66.79,56.36 < 20 |walk
talk Elementalist Taiyang##190352
|tip Inside the building.
turnin Lofty Goals##66438 |goto 66.59,56.08
turnin Rapid Fire Plans##66439 |goto 66.59,56.08
turnin Distilled Effort##66441 |goto 66.59,56.08
accept Let's Get Theoretical##66442 |goto 66.59,56.08
step
talk Elementalist Taiyang##190352
|tip Inside the building.
Tell her _"I'm ready."_
Watch the dialogue
Test the Fire and Air Orbs |q 66442/1 |goto 66.59,56.08
step
Watch the dialogue
|tip Inside the building.
|tip Use the "Test the Orb of Primal Stone" ability.
|tip It appears as a button on the screen.
Watch the dialogue
Destroy the Barrier |q 66442/2 |goto 66.56,56.06
step
talk Elementalist Taiyang##197860
|tip She runs to this location.
|tip Inside the building.
turnin Let's Get Theoretical##66442 |goto 66.51,55.96
accept Beyond the Barrier##66447 |goto 66.51,55.96
step
kill Discordant Watcher##189149 |q 66447/1 |goto 65.97,55.20
|tip It looks like a large human statue.
|tip She will become hostile when you get near her.
|tip Inside the building.
step
click Fragmented Dragon Record
|tip It looks like a large stone tablet with glyph symbols carved into it.
|tip Inside the building.
collect Fragmented Record Rubbing##192480 |q 66447/2 |goto 66.11,54.94
step
Leave the building |goto 66.79,56.36 < 20 |walk |only if (subzone("Life Vault Ruins") and _G.IsIndoors())
talk Elementalist Taiyang##190354
turnin Beyond the Barrier##66447 |goto 65.86,57.47
step
talk Crabtender Kad'irsza##196827
accept Crabtender's Quandry##66612 |goto 59.74,51.22
step
talk Ru'kroszk##193304
accept Gills with Gall##71141 |goto 59.70,51.22
stickystart "Slay_Gorlocs"
step
Enter the cave |goto 59.01,47.14 < 15 |walk |only if not subzone("Cliffdrip Cave")
kill Murghurgl the Invader##197211 |q 71141/1 |goto 57.98,46.32
|tip He looks like a green gremlin riding on a crab.
|tip Inside this cave.
step
label "Slay_Gorlocs"
Kill Cliffdrip enemies around this area.
|tip They look like various colored gremlins.
|tip Inside and outside the cave.
Slay #12# Gorlocs |q 66612/1 |goto 59.01,47.14
step
Leave the cave |goto 59.01,47.14 < 15 |walk |only if subzone("Cliffdrip Cave")
talk Crabtender Kad'irsza##196827
turnin Crabtender's Quandry##66612 |goto 59.74,51.22
step
talk Ru'kroszk##193304
turnin Gills with Gall##71141 |goto 59.70,51.22
step
talk Pana##192472
fpath Uktulut Pier |goto 45.84,27.47
step
talk Thomas Bright##192574
turnin A Gift for Miguel##67100 |goto 60.23,72.19
step
click Croaking Frog Carrier
|tip It looks like a wooden crate.
Release the Frogs |q 66831/1 |goto 60.24,66.46
step
talk Keshki##190868
turnin Home Is Where the Frogs Are##66831 |goto 60.19,66.39
step
Enter the building on the ground |goto 57.73,67.05 < 20 |walk
talk Kolgar Flameguard##194801
|tip Inside the building.
accept Untold Regrets##70239 |goto 58.67,67.78
step
talk Bathoras##194805
|tip If you want to hear the story, follow Kolgar Flameguard as he walks.
Tell him _"This orc needs your help urgently. <Skip current conversation.>"_
Walk with Duroz and Kolgar |q 70239/1 |goto 57.37,65.68
step
talk Bathoras##194805
turnin Untold Regrets##70239 |goto 57.37,65.68
accept Pain Management##70240 |goto 57.37,65.68
step
talk Vaeros##190525
turnin Nursery Direction##66997 |goto 55.26,63.47
accept Leave Bee Alone##66734 |goto 55.26,63.47
accept Just a Trim##66735 |goto 55.26,63.47
stickystart "Bag_Bothersome_Bees"
stickystart "Collect_Blooming_Shallowlilies"
stickystart "Collect_Milky_Snapflowers"
stickystart "Prune_Overgrown_Shrubs"
step
use Empty Life Pools Vial##198673
|tip Use it next to the water.
collect Filled Life Pools Vial##198674 |q 70240/3 |goto 55.89,64.37
step
label "Bag_Bothersome_Bees"
use Smoke Diffuser##193064
|tip Use it on Bothersome Bees.
|tip They look like large bees flying around this area.
|tip They will attack you.
|tip Fight them when they attack you, and they will eventually become clickable.
clicknpc Bothersome Bee##190543+
Bag #8# Bothersome Bees |q 66734/1 |goto 56.21,64.59
step
label "Collect_Blooming_Shallowlilies"
click Blooming Shallowlily+
|tip They look like small green lilypads in the water around this area.
collect 3 Blooming Shallowlily##198668 |q 70240/2 |goto 56.21,64.59
step
label "Collect_Milky_Snapflowers"
click Milky Snapflower+
|tip They look like plants with long stalks and white flower petals on the ground around this area.
collect 5 Milky Snapflower##198666 |q 70240/1 |goto 56.21,64.59
step
label "Prune_Overgrown_Shrubs"
click Overgrown Shrub+
|tip They look like large green bushes on the ground around this area.
|tip You will be attacked.
Prune #5# Overgrown Shrubs |q 66735/1 |goto 56.21,64.59
step
Relocate the Bothersome Bees |q 66734/2 |goto 56.92,70.51
|tip Use the "Bee Free!" ability.
|tip It appears as a button on the screen.
step
talk Bathoras##194805
Tell him _"I have gathered the components for you."_
Give the Components to Bathoras |q 70240/4 |goto 57.37,65.68
step
Watch the dialogue
|tip Bathoras will give you a potion.
collect Medicative Potion##200109 |q 70240/5 |goto 57.37,65.68
step
talk Duroz Scaletaker##194800
turnin Pain Management##70240 |goto 56.81,64.50
step
talk Vaeros##190525
turnin Leave Bee Alone##66734 |goto 55.26,63.47
turnin Just a Trim##66735 |goto 55.26,63.47
step
talk Adazius##190533
accept A Better Start##66737 |goto 55.19,63.70
step
_NOTE:_
During the Next Steps
|tip When you plant each seed, a dialogue will happen before the quest goal completes.
|tip You don't have to wait and watch it.
|tip If you want, you can manually skip to the next step each time, and start running to the next location.
|tip The quest goals will complete as you move to the next location.
Click Here to Continue |confirm |q 66737
step
click Fertile Soil
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto 55.66,64.61 |count 1
step
click Fertile Soil
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto 56.03,66.37 |count 2
step
click Fertile Soil
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto 56.41,66.01 |count 3
step
click Fertile Soil
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto 57.29,64.72 |count 4
step
click Fertile Soil
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto 56.86,63.70 |count 5
step
click Fertile Soil
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto 55.73,63.73 |count 6
step
talk Adazius##190533
turnin A Better Start##66737 |goto 55.20,63.70
step
talk Dazakros##191280
turnin Hornstrider Havoc##66879 |goto 53.42,58.37
accept Deluge Dilemma##66892 |goto 53.42,58.37
accept Beaky Reclamation##66893 |goto 53.42,58.37
stickystart "Slay_Water_Elementals"
step
use the Pungent Salve##194434
|tip Use it on Injured Hornstriders.
|tip They look like two-legged dinosaurs.
|tip You can find them all around the Overflowing Rapids area.
|tip They will appear on your minimap as yellow dots.
Heal #8# Injured Hornstriders |q 66893/1 |goto 52.50,56.54
step
label "Slay_Water_Elementals"
Kill enemies around this area
|tip They look like water elementals and oozes.
Slay #12# Water Elementals |q 66892/1 |goto 52.50,56.54
step
talk Dazakros##191280
turnin Deluge Dilemma##66892 |goto 53.43,58.37
turnin Beaky Reclamation##66893 |goto 53.43,58.37
step
talk Ingot##185627
accept Punching Up##65687 |goto 39.43,48.33
accept A Cultist's Misgivings##65690 |goto 39.43,48.33
stickystart "Slay_Worldbreaker_Dragonkin"
step
Locate Ayasanth |q 65690/1 |goto 37.43,46.66
step
talk Ayasanth##185628
|tip Inside a wooden cage.
turnin A Cultist's Misgivings##65690 |goto 37.43,46.66
accept Under Lock and Key##65782 |goto 37.43,46.66
step
kill Worldbreaker Guard##185594+
Obtain a Key from Worldbreaker Guards |q 65782/1 |goto 37.50,47.73
step
label "Slay_Worldbreaker_Dragonkin"
Kill Worldbreaker enemies
|tip They look like dragon people.
Slay #12# Worldbreaker Dragonkin |q 65687/1 |goto 37.50,47.73
step
click Worldbreaker Cell
|tip It looks like a wooden cage.
Unlock Ayasanth's Cell |q 65782/2 |goto 37.43,46.66
step
Watch the dialogue
talk Ingot##185627
|tip He walks to this location.
turnin Punching Up##65687 |goto 37.33,46.64
step
talk Ayasanth##185628
turnin Under Lock and Key##65782 |goto 37.34,46.61
accept The Shadow of His Wings##65691 |goto 37.34,46.61
step
Enter the cave |goto 35.61,47.95 < 15 |walk |only if not (subzone("Smoldering Perch") and _G.IsIndoors())
Watch the dialogue
|tip Downstairs inside the cave.
|tip You will be attacked.
Confront Cygenoth the Corrupted |q 65691/1 |goto 35.01,45.46
step
kill Cygenoth##185660 |q 65691/2 |goto 35.01,45.46
|tip Downstairs inside the cave.
step
Follow the path up and leave the cave |goto 35.61,47.95 < 15 |walk |only if subzone("Smoldering Perch") and _G.IsIndoors()
talk Ayasanth##185628
|tip Up on the cliff.
turnin The Shadow of His Wings##65691 |goto 39.56,48.41
step
Watch the dialogue
talk Wrathion##186274
turnin Wrathion Awaits##66079 |goto 42.47,66.84
step
talk Scalecommander Emberthal##192795
accept Lessons from Our Past##72241 |goto 42.47,66.78
step
talk Scalecommander Emberthal##192795
Tell her _"Tell me of the dracthyr's origins."_
Speak with Scalecommander Emberthal to Learn of Past Events |q 72241/1 |goto 42.47,66.78
step
talk Scalecommander Emberthal##192795
turnin Lessons from Our Past##72241 |goto 42.47,66.78
accept Best Plans and Intentions##66048 |goto 42.47,66.78
step
talk Wrathion##186274
accept Sharp Practice##66078 |goto 42.47,66.84
stickystart "Test_Blacktalon"
step
talk Do-Yeon Shadowrider##188444
fpath Obsidian Bulwark |goto 42.26,66.25
step
talk Fao the Relentless##186331
Ask him _"Might we review the battle plans?"_
Click Here After Talking to Fao the Relentless |confirm |goto 42.41,66.18 |q 66048
step
click Blacktalon Battle Plans
|tip They look like brown pieces of paper on a table.
|tip Inside the tent.
Consult Fao the Relentless |q 66048/1 |goto 42.40,66.06
step
talk Forgemaster Bazentus##186493
|tip He walks around this area.
Tell him _"Tell me about the weapons in the Citadel."_
Consult Forgemaster Bazentus |q 66048/4 |goto 42.83,66.85
step
talk Archivist Edress##187466
Ask her _"What has your research found?"_
Watch the dialogue
Consult Archivist Edres |q 66048/2 |goto 43.76,67.28
step
talk Talonstalker Kavia##189507
|tip On the edge of the cliff, overlooking the valley below.
Ask her _"What have you observed?"_
Click Here After Talking to Talonstalker Kavia |confirm |goto 42.30,69.29 |q 66048
step
click Scouting Scope
Consult Talonstalker Kavia |q 66048/3 |goto 42.22,69.32
step
label "Test_Blacktalon"
talk Blacktalon NPC+
|tip Only Blacktalon Avengers and Assassins will work for the quest goal.
Tell them _"I'm here to test your combat skills."_
kill Blacktalon+
Test #8# Blacktalons |q 66078/1 |goto 42.56,67.92
step
talk Wrathion##186274
turnin Best Plans and Intentions##66048 |goto 42.47,66.84
turnin Sharp Practice##66078 |goto 42.47,66.84
step
Watch the dialogue
talk Wrathion##186274
accept Talon Strike##65956 |goto 42.47,66.84
accept No Time For Heroes##65957 |goto 42.47,66.84
step
_NOTE:_
During the Next Steps
|tip Use the "Blacktalon Marker" ability on enemies.
|tip It appears as a button on the screen.
|tip It will stun the enemies and summon allies to help you fight.
Click Here to Continue |confirm |q 65957
stickystart "Disrupt_The_Djaradin_Defenses"
step
kill Piercer Gigra##186511 |q 65957/1 |goto 35.47,68.52
|tip She looks like a large armored human.
|tip On top of the building.
step
kill Olphis the Molten##181875 |q 65957/3 |goto 34.81,66.87
|tip He looks like a large black and orange mammoth.
step
kill Modak Flamespit##186509 |q 65957/2 |goto 35.69,60.74
|tip He looks like a large human, throwing orange fireballs.
|tip On top of the building.
step
label "Disrupt_The_Djaradin_Defenses"
Kill enemies around this area
|tip You can find them all around the Burning Ascent area.
click Siege Arbalest+
|tip They look like large ballista machines.
click Djaradin Banner+
|tip They look like banner poles, topped with dragon skulls and red banners hanging from them.
kill Molten Extracts##186716+
|tip They look like various large brown pottery jars.
Disrupt the Djaradin Defenses |q 65956/1 |goto 36.47,67.85
step
talk Wrathion##186681
turnin Talon Strike##65956 |goto 33.99,61.29
turnin No Time For Heroes##65957 |goto 33.99,61.29
accept The Courage of One's Convictions##65939 |goto 33.99,61.29
step
talk Wrathion##186681
Tell him _"I am ready to begin the assault."_
Speak with Wrathion to Begin the Assault |q 65939/1 |goto 33.99,61.29
step
Reach the Obsidian Citadel |complete subzone("Obsidian Citadel") |goto 33.13,61.95 |q 65939
|tip On the bridge.
step
Enter the Obsidian Citadel |q 65939/2 |goto 30.47,60.84
stickystart "Slay_Qalashi_Forces"
step
talk Wrathion##186933
|tip He flies to this location.
accept Taking the Walls##66044 |goto 29.15,58.83
step
talk Wrathion##186933
Tell him _"I am ready to assist you."_
Assist Wrathion |q 66044/1 |goto 29.15,58.83
step
Begin Flying with Wrathion |invehicle |goto 29.15,58.83 |q 66044
step
Fly with Wrathion |outvehicle |goto 27.15,58.09 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the South Siege Arbalast |q 66044/2 |goto 26.83,59.94
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto 26.77,61.20 |q 66044
step
Fly with Wrathion |outvehicle |goto 29.63,62.37 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the East Siege Arbalast |q 66044/3 |goto 29.51,61.00
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto 29.05,61.82 |q 66044
step
Fly with Wrathion |outvehicle |goto 27.72,55.55 |q 66044 |notravel
|tip He will drop you on the platform.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
Destroy the North Siege Arbalast |q 66044/4 |goto 27.76,56.54
step
kill Champion Choruk##186592 |q 66044/5 |goto 26.92,57.14
|tip He walks around this area, riding a black and yellow mammoth.
step
label "Slay_Qalashi_Forces"
Kill enemies around this area
|tip You can find them all around the Obsidian Citadel area. |notinsticky
Slay #12# Qalashi Forces |q 65939/3 |goto 26.59,57.97
step
talk Wrathion##196265
turnin The Courage of One's Convictions##65939 |goto 26.43,58.77
turnin Taking the Walls##66044 |goto 26.43,58.77
accept Obsidian Oathstone##66049 |goto 26.43,58.77
step
talk Wrathion##187045
Ask him _"Is that the Oathstone?"_
Speak with Wrathion at the Oathstone |q 66049/1 |goto 27.30,62.58
step
click Obsidian Oathstone
|tip It looks like a large stone monument.
Examine the Oathstone |q 66049/2 |goto 27.62,63.33
step
Watch the dialogue
talk Wrathion##187045
turnin Obsidian Oathstone##66049 |goto 27.30,62.58
step
talk Forgemaster Bazentus##186493
accept A Shattered Past##66055 |goto 27.25,62.79
stickystart "Collect_Oathstone_Fragments"
step
Enter the Vaults Beneath the Citadel |q 66055/1 |goto 27.11,60.82
|tip Enter the building and run down the stairs.
step
label "Collect_Oathstone_Fragments"
click Oathstone Fragment+
|tip They look like large pieces of the stone monument.
|tip Downstairs inside the building.
|tip They will appear on your minimap as yellow dots.
collect 12 Oathstone Fragment##191131 |q 66055/2 |goto 24.74,58.26
step
Follow the path and run up the stairs |goto 25.16,58.76 < 20 |walk |only if subzone("Obsidian Citadel") and _G.IsIndoors()
Leave the building |goto 27.16,60.87 < 15 |walk |only if subzone("Obsidian Citadel") and _G.IsIndoors()
talk Forgemaster Bazentus##186493
turnin A Shattered Past##66055 |goto 27.25,62.80
accept Forging A New Future##66056 |goto 27.25,62.80
step
click Earth-Warder's Forge
Activate the Earth-Warder's Forge |q 66056/1 |goto 24.63,60.88
step
kill Animated Cindershards##189875+
|tip They look like rock elementals.
click Cindershard Coal+
|tip They look like piles of grey stones around this area.
|tip An enemy may spawn when you click them.
collect 6 Cindershard Coal##192548 |q 66056/2 |goto 24.90,60.88
step
talk Forgemaster Bazentus##186493
turnin Forging A New Future##66056 |goto 24.68,61.12
accept The Spark##66354 |goto 24.68,61.12
step
click Oathstone Fragments+
|tip They look like orange embers on the huge anvil.
Place the Fragments on the Forge |q 66354/1 |goto 24.56,60.90
step
Watch the dialogue
Repair the Fragments |q 66354/2 |goto 24.56,60.90
step
click Reformed Oathstone Fragments
|tip It looks like a diamond shaped piece of the stone monument.
Collect the Reformed Pieces |q 66354/3 |goto 24.56,60.90
step
talk Forgemaster Bazentus##186493
turnin The Spark##66354 |goto 24.68,61.12
accept Restoring the Faith##66057 |goto 24.68,61.12
step
talk Wrathion##187045
Tell him _"You can now repair the Obsidian Oathstone."_
Speak with Wrathion |q 66057/1 |goto 27.30,62.58
step
Watch the dialogue
clicknpc Wrathion##191669
Travel with Wrathion to the Throne |q 66057/2 |goto 27.09,62.21
step
Begin Flying with Wrathion |invehicle |goto 27.09,62.21 |q 66057
step
Fly with Wrathion |outvehicle |goto 25.45,56.74 |q 66057 |notravel
|tip He will bring you to the upper platform.
step
Approach Wrathion and Sabellian |q 66057/3 |goto 25.09,56.45
|tip On the upper platform.
step
talk Wrathion##187495
turnin Restoring the Faith##66057 |goto 24.44,55.50
accept Claimant to the Throne##66780 |goto 24.44,55.50
step
talk Sabellian##185894
accept Heir Apparent##66779 |goto 24.25,55.87
step
talk Forgemaster Bazentus##193464
Ask him _"What can you tell me about Sabellian?"_
Speak with Bazentus |q 66779/2 |goto 24.38,57.83
step
talk Baskilan##188158
Ask him _"What can you tell me about Sabellian?"_
Speak with Baskilian |q 66779/1 |goto 24.31,58.90
step
talk Foehn Breezeskimmer##188336
fpath Obsidian Throne |goto 25.27,56.83
step
talk Archivist Edress##193456
Ask her _"What can you tell me about Sabellian?"_
Speak with Archivist Edress |q 66779/3 |goto 25.11,56.24
step
talk Archivist Edress##193456
Ask her _"What can you tell me about Wrathion?"_
Speak with Archivist Edress |q 66780/3 |goto 25.11,56.24
step
talk Archivist Edress##193456
accept Neltharus: Secrets Within##72135 |goto 25.11,56.24
|only if level >= 70
step
talk Left##191710
Ask him _"What can you tell me about Wrathion?"_
Speak with Left and Right |q 66780/2 |goto 25.01,55.19
step
talk Talonstalker Kavia##191600
|tip She walks around this area.
Ask her _"What can you tell me about Wrathion?"_
Speak with Talonstalker Kavia |q 66780/1 |goto 26.35,54.45
step
talk Wrathion##187495
turnin Claimant to the Throne##66780 |goto 24.43,55.49
step
talk Sabellian##185894
turnin Heir Apparent##66779 |goto 24.24,55.88
accept Black Wagon Flight##65793 |goto 24.24,55.88
step
talk Hjorik##192493
|tip On top of the mountain.
fpath Apex Observatory |goto 23.79,83.14
step
talk Nulia##192494
|tip On the beach, next to the water.
fpath Uktulut Outpost |goto 17.51,88.70
step
talk Sabellian##190937
Tell him _"Let's get moving."_
Speak with Sabellian to Begin Moving the Eggs |q 65793/2 |goto 43.83,66.43
step
Watch the dialogue
|tip Follow the wagon and protect it.
|tip They eventually travel to this location.
Escort the Wagon |q 65793/3 |goto 52.26,66.82 |notravel
step
talk Holthkastrasz##187292
Tell him _"I'd like to go to the Ruby Lifeshrine."_
Begin Flying to the Ruby Lifeshrine |invehicle |goto 56.87,66.54 |q 65793
step
Fly up to the Ruby Lifeshrine |outvehicle |goto 57.82,67.29 |q 65793 |notravel
step
talk Sabellian##190740
turnin Black Wagon Flight##65793 |goto 57.96,67.31
accept The Last Eggtender##66785 |goto 57.96,67.31
step
talk Mother Elion##185904
turnin The Last Eggtender##66785 |goto 61.60,68.71
accept Egg-cited for the Future##66788 |goto 61.60,68.71
stickystart "Sweep_Fallen_Leaves"
stickystart "Pull_Overgrown_Weeds"
step
clicknpc Ruby Shrineguard##191126
Polish the Ruby Shrineguard |q 66788/3 |goto 61.44,69.02
step
label "Sweep_Fallen_Leaves"
click Fallen Leaves+
|tip They look like piles of red and brown leaves on the ground around this area.
Sweep #2# Fallen Leaves |q 66788/1 |goto 61.53,68.57
step
label "Pull_Overgrown_Weeds"
click Overgrown Weeds+
|tip They look like green ferns on the ground around this area.
|tip After clicking them, run away from them to pull them out of the ground.
Pull #3# Overgrown Weeds |q 66788/2 |goto 61.53,68.57
step
talk Mother Elion##185904
turnin Egg-cited for the Future##66788 |goto 61.60,68.71
accept Life-Binder on Duty##65791 |goto 61.60,68.71
step
talk Alexstrasza the Life-Binder##185905
turnin Life-Binder on Duty##65791 |goto 62.34,73.02
accept A Charge of Care##65794 |goto 62.34,73.02
step
talk Alexstrasza the Life-Binder##185905
Tell her _"I am ready."_
Empower the Ruby Oathstone |q 65794/1 |goto 62.34,73.02
step
talk Alexstrasza the Life-Binder##193377
turnin A Charge of Care##65794 |goto 61.56,68.56
accept Next Steppes##65795 |goto 61.56,68.56
step
talk Haephesta##192498
|tip On the large platform, overlooking the valley.
accept Occupation Examination##70368 |goto 57.93,68.25 |or
' |accept Occupation Examination##70370 |goto 57.93,68.25 |or
|only if ZGV.Professions:HasProfessionSlot()
step
talk Haephesta##192498
Tell her _"I'm ready to take the professions personality quiz."_
Answer Her Questions
|tip Choose the dialogue options that suit you best.
Watch the dialogue
Take Haephesta's Quiz |q 70368/1 |goto 57.93,68.25 |only if haveq(70368) or completedq(70368)
Take Haephesta's Quiz |q 70370/1 |goto 57.93,68.25 |only if haveq(70370) or completedq(70370)
|only if ZGV.Professions:HasProfessionSlot()
step
talk Haephesta##192498
Tell her _"Give me directions to a trainer."_
|tip Choose whichever profession you like.
|tip It doesn't have to be the one she recommended.
Ask Haephesta for Directions |q 70368/2 |goto 57.93,68.25 |only if haveq(70368) or completedq(70368)
Ask Haephesta for Directions |q 70370/2 |goto 57.93,68.25 |only if haveq(70370) or completedq(70370)
|only if ZGV.Professions:HasProfessionSlot()
step
talk Haephesta##192498
turnin Occupation Examination##70368 |goto 57.93,68.25 |only if haveq(70368) or completedq(70368)
turnin Occupation Examination##70370 |goto 57.93,68.25 |only if haveq(70370) or completedq(70370)
|only if ZGV.Professions:HasProfessionSlot()
step
talk Ambassador Taurasza##185878
turnin Next Steppes##65795 |goto 48.27,88.67
step
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"	|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"		|only if not (achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363))
step
label "All_Stories_Complete"
_NOTE:_
You Finished All Main Storylines
|tip You have completed all of the main storylines in all of the zones in the Dragon Isles.
|tip This guide is finished, please choose another guide.
|tip You can load the Full Zone leveling guides to complete side quests.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)",{
author="support@zygorguides.com",
},[[
step
talk Ambassador Taurasza##185878
turnin Ohn'ahran Plains##72267 |goto The Waking Shores/0 48.27,88.67 |only if haveq(72267) or completedq(72267)
accept Into the Plains##65779 |goto The Waking Shores/0 48.27,88.67
step
talk Scout Tomul##185882
turnin Into the Plains##65779 |goto Ohn'ahran Plains/0 77.72,23.94
accept Proving Oneself##65780 |goto Ohn'ahran Plains/0 77.72,23.94
step
kill Blazing Proto-Dragon##185883 |q 65780/1 |goto 78.57,27.12
|tip He is elite, but the centaurs nearby will help you fight.
step
talk Scout Tomul##185882
turnin Proving Oneself##65780 |goto 78.63,25.39
accept Welcome at Our Fire##65783 |goto 78.63,25.39
step
talk Apprentice Ehri##186653
|tip She walks around this small area.
accept Sole Supplier##65951 |goto 84.34,25.00
step
talk Farrier Roscha##186650
accept Thieving Gorlocs##65950 |goto 84.40,25.02
step
talk Muqur Rain-Touched##194904
|tip Inside the building.
accept Nergazurai##70319 |goto 84.53,25.34
step
talk Scout Tomul##185882
turnin Welcome at Our Fire##65783 |goto 85.32,25.42
accept The Shikaar##70174 |goto 85.32,25.42
step
Watch the dialogue
talk Sansok Khan##181217
Tell her _"I need to speak to the leader of the green dragonflight."_
Speak to Sansok Khan |q 70174/1 |goto 85.74,25.33
step
talk Sansok Khan##181217
turnin The Shikaar##70174 |goto 85.74,25.33
accept Making Introductions##65801 |goto 85.74,25.33
accept Supplies for the Journey##65802 |goto 85.74,25.33
step
click Bundle of Pelts
|tip It looks like a spear wrapped in fur and rope on the table.
|tip Inside the building.
collect Bundle of Pelts##191054 |q 65802/2 |goto 86.17,25.31 |count 1
stickystart "Collect_Feralbloom_Pods"
step
talk Aru##186176
Tell him _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_
Speak to Aru and Belika |q 65801/2 |goto 85.76,26.60
step
click Basket of Dried Fish
|tip It looks like a woven basket on the ground.
collect Basket of Dried Fish##192810 |q 65802/2 |goto 84.31,27.18 |count 2
step
talk Beastmaster Nuqut##186183
Tell him _"I am {_G.UnitName("player")}. Will you be joining the caravan to the Khural?"_
Speak to Beastmaster Nuqut |q 65801/3 |goto 83.92,25.87
step
click Crate of Horseshoes
|tip It looks like a wooden box on the ground.
collect Crate of Horseshoes##191048 |q 65802/2 |goto 84.34,24.91 |count 3
step
talk Flightmaster Baqir##184630
fpath Timberstep Outpost |goto 85.28,24.10
step
label "Collect_Feralbloom_Pods"
click Medicinal Feralbloom+
|tip They look like large round orange flowers with tall green stalks.
|tip You can find them all around the Timberstep Outpost area.
collect 5 Feralbloom Pod##192812 |q 65802/1 |goto 84.95,25.16
step
click Weapon Rack
|tip It looks like a wooden stand with weapons leaning against it.
collect Shikaar Weaponry##192811 |q 65802/2 |goto 84.37,23.12 |count 4
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Supplies for the Journey##65802 |goto 84.69,22.81
step
talk Ohn Seshteng##184595
Tell her _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_
Speak to Ohn Seshteng |q 65801/1 |goto 85.63,20.85
stickystart "Collect_Vulture_Gizzard"
step
Kill enemies around this area
|tip They look like brown tigers with scales on their backs.
collect Rockfang Femur##198793 |q 70319/2 |goto 85.58,15.84
step
label "Collect_Vulture_Gizzard"
kill Ravine Vulture##190943+
|tip They look like brown birds.
collect Vulture Gizzard##198794 |q 70319/4 |goto 85.58,15.84
step
kill Swift Hornstrider##188089+
|tip They look like raptor plainstriders.
collect Hornstrider Scale##198795 |q 70319/3 |goto 77.12,20.61
step
kill Clearwater Ottuk##192854+
|tip They look like otters with horns.
collect Ottuk Heart##198792 |q 70319/1 |goto 75.39,24.59
stickystart "Collect_Shikaar_Supplies"
step
Find Khasar |q 65951/1 |goto 80.56,30.74
|tip He looks like a centaur in a wooden cage.
step
talk Khasar##186649
|tip He looks like a centaur in a wooden cage.
turnin Sole Supplier##65951 |goto 80.56,30.74
step
label "Collect_Shikaar_Supplies"
Kill Mudfin enemies around this area
|tip They look like gremlins.
|tip You can find them all around the Mudfin Village area. |notinsticky
collect 30 Shikaar Supplies##191541 |q 65950/1 |goto 81.63,30.55
step
talk Khasar##186649
|tip He looks like a centaur in a wooden cage.
turnin Thieving Gorlocs##65950 |goto 80.56,30.74
accept The Ora-cull##65953 |goto 80.56,30.74
accept Release the Hounds##65954 |goto 80.56,30.74
accept A Centaur's Best Friend##65955 |goto 80.56,30.74
stickystart "Collect_Mudfin_Totems"
step
click Khasar's Cage
Free Khasar |q 65955/1 |goto 80.56,30.74
step
clicknpc Batu##187841
|tip It looks like a dead brown wolf.
Collect the Bakar Collar |q 65954/2 |goto 80.62,30.68 |count 1
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 81.25,31.70 |count 1
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 81.12,29.77 |count 2
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 81.43,29.72 |count 3
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 82.21,30.22 |count 4
step
clicknpc Batu##187841
|tip It looks like a dead brown wolf.
Collect the Bakar Collar |q 65954/2 |goto 82.20,30.43 |count 2
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 82.36,30.57 |count 5
step
label "Collect_Mudfin_Totems"
kill Mudfin Shaman##186679+
|tip They look like blue gremlins.
|tip You can find them all around the Mudfin Village area. |notinsticky
collect 4 Mudfin Totem##191143 |q 65953/1 |goto 81.47,30.83
step
Enter the cave |goto 83.00,31.92 < 20 |walk |only if not (subzone("Mudfin Village") and _G.IsIndoors())
click Baba's Cage
|tip It looks like a wooden cage.
|tip Inside the cave.
Free Baba |q 65955/2 |goto 83.37,32.41
step
Watch the dialogue
talk Khasar##186649
|tip He walks to this location.
|tip Inside the cave.
turnin The Ora-cull##65953 |goto 83.44,32.32
turnin Release the Hounds##65954 |goto 83.44,32.32
turnin A Centaur's Best Friend##65955 |goto 83.44,32.32
accept A Chief of Legends##65952 |goto 83.44,32.32
step
Leave the cave |goto 83.00,31.92 < 20 |walk |only if subzone("Mudfin Village") and _G.IsIndoors()
kill Chief Grrlgllmesh##186678 |q 65952/1 |goto 82.08,31.48
|tip He looks like a large orange gremlin.
collect Medallion of a Fallen Friend##191127 |n
|tip You will automatically accept the quest after looting the item.
accept Medallion of a Fallen Friend##66005 |goto 82.08,31.48
step
Enter the cave |goto 83.00,31.92 < 20 |walk |only if not (subzone("Mudfin Village") and _G.IsIndoors())
talk Khasar##186649
|tip Inside the cave.
turnin A Chief of Legends##65952 |goto 83.44,32.32
turnin Medallion of a Fallen Friend##66005 |goto 83.44,32.32
accept The Sole Mender##65949 |goto 83.44,32.32
accept Return to Roscha##66006 |goto 83.44,32.32
step
click Shikaar Supplies
|tip Inside the cave.
Retrieve the Supplies |q 66006/1 |goto 83.51,32.14
step
Leave the cave |goto 83.00,31.92 < 20 |walk |only if subzone("Mudfin Village") and _G.IsIndoors()
talk Muqur Rain-Touched##194904
|tip Inside the building.
turnin Nergazurai##70319 |goto 84.53,25.34
step
talk Farrier Roscha##186650
turnin The Sole Mender##65949 |goto 84.40,25.02
turnin Return to Roscha##66006 |goto 84.40,25.02
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Making Introductions##65801 |goto 84.69,22.81
accept Toward the City##65803 |goto 84.69,22.81
step
talk Scout Tomul##185882
Tell her _"I'm ready to go."_
Meet with the Caravan |q 65803/1 |goto 83.15,23.74
step
Arrive at the First Stop |q 65803/3 |goto 75.67,31.68
|tip You can fly directly here, you don't need to follow the caravan.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Scout Tomul##185882
turnin Toward the City##65803 |goto 75.67,31.68
accept For Food and Rivalry##65804 |goto 75.67,31.68
step
click Mysterious Paw Print
accept Mysterious Beast##70185 |goto 76.74,31.89
step
talk Malakesh##196259
fpath Rusza'thar Reach |goto 84.66,36.89
step
Enter the cave |goto 77.76,35.39 < 15 |walk
kill Konkhular##194544
|tip He looks like a grey sabertooth tiger with scales on his back and tail.
|tip Inside the cave.
collect Pelt of Konkhular##198517 |q 70185/1 |goto 78.28,35.21
step
Kill enemies around this area
|tip They look like various animals.
collect 30 Fresh Game Meat##191100 |q 65804/1 |goto 77.15,31.09
step
talk Scout Tomul##185882
turnin For Food and Rivalry##65804 |goto 75.67,31.68
turnin Mysterious Beast##70185 |goto 75.67,31.68
accept By Broken Road##65940 |goto 75.67,31.68
step
Arrive at the Second Stop |q 65940/2 |goto 69.96,37.97
|tip You can fly directly here, you don't need to follow the caravan.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Ohn Seshteng##184595
turnin By Broken Road##65940 |goto 69.96,37.97
accept Connection to Ohn'ahra##65805 |goto 69.96,37.97
stickystart "Collect_River_Reeds"
stickystart "Collect_Fowl_Tailfeathers"
step
kill Mudwalker Salamanther##190961+
|tip They look like large yellow lizards with green fins.
collect Salamanther Heart##191103 |q 65805/3 |goto 69.75,38.00
step
label "Collect_River_Reeds"
click River Reeds+
|tip They look like brown and yellow plants near the edge of the water around this area.
collect 4 River Reeds##191101 |q 65805/1 |goto 69.75,38.00
step
label "Collect_Fowl_Tailfeathers"
click Jadethroat Mallard##190708+
|tip They look like brown birds with green heads.
|tip They are on the ground, and fly around this area.
|tip They may attack you.
|tip If you get no feathers by clicking them, or they are flying and you can't reach them to click them, just kill them.
collect 8 Fowl Tailfeathers##191102 |q 65805/2 |goto 69.75,38.00
step
talk Ohn Seshteng##184595
turnin Connection to Ohn'ahra##65805 |goto 69.96,37.97
accept Omens on the Wind##66848 |goto 69.96,37.97
step
talk Ohn Seshteng##184595
Tell her _"I am ready."_
Speak to Ohn Seshteng |q 66848/1 |goto 69.96,37.97
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto 69.98,37.66 |count 1
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto 69.93,37.54 |count 2
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto 69.87,37.63 |count 3
step
Watch the dialogue
Complete the Ritual |q 66848/3 |goto 69.87,37.63
step
talk Ohn Seshteng##184595
|tip She walks to this location.
turnin Omens on the Wind##66848 |goto 69.97,37.97
step
talk Sansok Khan##181217
accept Maruukai##65806 |goto 70.02,38.02
step
talk Hunter Narman##191924
accept Bloodlines, Sweets, and Teerai##70739 |goto 63.62,40.47
step
talk Flightmaster Salukan##191263
fpath Maruukai |goto 62.96,42.13
step
talk Beastmaster Tirren##195524
accept Trouble In The Pines##65837 |goto 61.98,41.81
step
Arrive in Maruukai |q 65806/2 |goto 61.64,39.80
|tip You can fly directly here, you don't need to follow the caravan.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Sansok Khan##191283
turnin Maruukai##65806 |goto 61.44,39.51
accept Clan Teerai##66016 |goto 61.44,39.51
accept Clan Ohn'ir##66017 |goto 61.44,39.51
accept Clan Nokhud##66018 |goto 61.44,39.51
accept Orientation: Maruukai##72429 |goto 61.44,39.51
step
Watch the dialogue
talk Scout Tomul##191485
|tip She walks to this location.
turnin Clan Nokhud##66018 |goto 60.38,40.70
step
talk Guard Bahir##186940
accept Unwelcome Outsider##66021 |goto 60.30,40.76
step
talk Nokhud NPCs
|tip They look like centaurs around this area.
Tell them _"Let's spar."_
|tip They will attack you.
|tip They will eventually surrender.
|tip You can also attack them without talking to them.
Defeat #6# Nokhud Centaurs |q 66021/1 |goto 59.30,42.02
step
talk Qariin Dotur##186941
turnin Clan Teerai##66016 |goto 59.16,37.61
accept Honoring Our Ancestors##66019 |goto 59.16,37.61
step
click Raw Game Meat
Gather the Raw Game Meat |q 66019/1 |goto 59.39,37.81
step
click Raw Game Meat
Place the Raw Game Meat |q 66019/2 |goto 59.13,37.57
step
click Jar of Spices
Gather the Jar of Spices |q 66019/3 |goto 59.31,37.29
step
extraaction Apply Jar of Spices##375680
|tip Use the "Apply Jar of Spices" ability.
|tip It appears as a button on the screen.
Apply the Jar of Spices |q 66019/4 |goto 59.13,37.57
step
click Basket of Spices
Gather the Basket of Spices |q 66019/5 |goto 59.39,37.36
step
extraaction Apply Basket of Spices##375765
|tip Use the "Apply Basket of Spices" ability.
|tip It appears as a button on the screen.
Apply the Basket of Spices |q 66019/6 |goto 59.13,37.57
step
click Pot of Spices
Gather the Pot of Spices |q 66019/7 |goto 59.05,37.90
step
extraaction Apply Cauldron of Spices##375771
|tip Use the "Apply Cauldron of Spices" ability.
|tip It appears as a button on the screen.
Apply the Pot of Spices |q 66019/8 |goto 59.13,37.57
step
click Spiced Game Meat
Pick Up the Spiced Game Meat |q 66019/9 |goto 59.12,37.57
step
extraaction Roasting##375932
|tip Use the "Roasting" ability.
|tip It appears as a button on the screen.
Cook the Spiced Game Meat |q 66019/10 |goto 58.89,37.28
step
click Spiced Game Meat
Place the Offering |q 66019/11 |goto 59.16,37.10
step
talk Qariin Dotur##186941
turnin Honoring Our Ancestors##66019 |goto 59.16,37.62
step
Enter the building |goto 59.49,38.22 < 15 |walk
talk Elder Odgerel##196449
|tip Inside the building.
Choose _"<Ask about Narman's proposal.>"_
Consult Elder Odgerel |q 70739/1 |goto 60.04,37.39
step
talk Quartermaster Huseng##196707
|tip Inside the building.
Meet the Renown Quartermaster |q 72429/2 |goto 60.40,37.72
step
talk Agari Dotur##185179
|tip Inside the building.
Meet the Keeper of Renown |q 72429/1 |goto 60.40,37.66
step
talk Agari Dotur##185179
|tip Inside the building.
turnin Orientation: Maruukai##72429 |goto 60.40,37.66
step
talk Windsage Kven##195239
|tip Inside the building.
accept Emberwatch##70337 |goto 62.12,36.44
step
talk Hearthkeeper Erden##194928
|tip Inside the building.
buy Honey Plum Tart##199918 |q 70739/2 |goto 62.17,35.69
step
talk Windsage Dawa##190192
accept Shikaar Giver##70730 |goto 62.82,35.44
step
Enter the building |goto 62.85,34.25 < 15 |walk
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Clan Ohn'ir##66017 |goto 63.00,33.67
accept Omens and Incense##66020 |goto 63.00,33.67
step
talk Windsage Ordven##195302
|tip Outside, next to the building.
accept A Disgruntled Initiate##65906 |goto 63.12,34.04
step
click Sweetsuckle+
|tip They look like small pink and purple flowers on the ground around this area.
collect Sweetsuckle Bloom##191160+ |n
use the Sweetsuckle Bloom##191160+
|tip You need 5 of them before you can use them.
collect Sweetsuckle Incense##198981 |q 66020/1 |goto 62.93,35.18
step
Enter the building |goto 62.85,34.25 < 15 |walk
click Incense Burner
|tip Inside the building.
Burn the Sweetsuckle Incense |q 66020/2 |goto 62.83,33.72
step
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Omens and Incense##66020 |goto 63.00,33.66
step
talk Ohn Arasara##192080
Choose _"<Ask about Dawa's proposal.>"_
Consult Ohn Arasara |q 70730/1 |goto 63.85,35.90
step
talk Hearthkeeper Erden##194928
|tip Inside the building.
buy Yak Milk Pudding##199919 |q 70730/2 |goto 62.17,35.69
step
talk Provisioner Zara##196437
Tell her _"I have brought you sweets on behalf of Windsage Dawa."_
Consult Provisioner Zara |q 70730/3 |goto 63.55,41.08
step
talk Scout Tomul##191485
turnin Unwelcome Outsider##66021 |goto 62.43,41.72
step
_Next to you:_
talk Aru
accept Clans of the Plains##66969
step
talk Sansok Khan##191283
Report to Sansok Khan |q 66969/1 |goto 61.44,39.51
step
talk Sansok Khan##191283
|tip You have to answer 4 questions.
|tip Tell here the answers in this order.
Tell her _"I am ready."_
Tell her _"Clan Teerai"_
Tell her _"Clan Ohn'ir"_
Tell her _"Clan Nokhud"_
Tell her _"Clan Shikaar"_
Answer #4# Questions Correctly |q 66969/2 |goto 61.44,39.51
step
talk Sansok Khan##191283
turnin Clans of the Plains##66969 |goto 61.44,39.51
step
Watch the dialogue
talk Gemisath##194927
|tip She walks to this location.
accept The Emissary's Arrival##66948 |goto 61.03,40.44
step
talk Gemisath##194927
Tell her _"I am here to help restore the Green Oathstone."_
Offer Aid to the Green Dragonflight |q 66948/1 |goto 61.03,40.44
step
talk Gemisath##194927
turnin The Emissary's Arrival##66948 |goto 61.03,40.44
accept The Khanam Matra##66022 |goto 61.03,40.44
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
Tell him _"I'm ready for my audience."_
Speak to Khansguard Akato |q 66022/1 |goto 60.29,37.88
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin The Khanam Matra##66022 |goto 60.35,38.04
accept Trucebreakers##66023 |goto 60.35,38.04
stickystart "Slay_Nokhud_Forces"
step
talk Scout Tomul##191485
accept Covering Their Tails##66024 |goto 59.52,38.75
step
kill Guard Bahir##191843 |q 66024/1 |goto 58.03,39.36
step
label "Slay_Nokhud_Forces"
Kill Nokhud enemies around this area
|tip They look like enemy centaurs.
Slay #10# Nokhud Forces |q 66023/1 |goto 58.98,39.24
You can find more around [61.06,39.98]
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin Trucebreakers##66023 |goto 60.35,38.04
step
talk Khanam Matra Sarest##181198
|tip Outside, on top of the building.
turnin Covering Their Tails##66024 |goto 60.32,38.07
accept The Nokhud Threat##66025 |goto 60.32,38.07
step
Watch the dialogue
talk Khanam Matra Sarest##181198
|tip She walks to this location.
|tip Inside the building, on the top floor.
turnin The Nokhud Threat##66025 |goto 60.00,37.47
accept Hooves of War##66201 |goto 60.00,37.47
step
kill Old Arbhog##196897
|tip He looks like a large black yak.
|tip He walks around this area.
collect Arbhog's Horns##200258 |q 70730/4 |goto 57.23,42.70
step
talk Matchmaker Osila##196249
Tell her _"I have brought some sweets for you, matchmaker."_
Encourage the Matchmaker |q 70739/3 |goto 55.36,38.37
step
click Burial Flowers+
|tip They look like large white flowers on the ground around this area.
collect 8 Burial Flower##201044 |q 70739/4 |goto 56.44,40.67
step
click Burial Flowers
Make the Offering |q 70739/5 |goto 56.79,38.77
step
talk Hunter Narman##191924
turnin Bloodlines, Sweets, and Teerai##70739 |goto 63.62,40.47
step
talk Windsage Dawa##190192
turnin Shikaar Giver##70730 |goto 62.82,35.44
accept After My Ohn Heart##70721 |goto 62.82,35.44
step
talk Volebel##190049
fpath Emberwatch |goto 66.78,25.17
step
talk Telemancer Aerilyn##190089
turnin Emberwatch##70337 |goto 66.00,25.06
accept The Nelthazan Ruins##65890 |goto 66.00,25.06
step
talk Skyscribe Adenedal##186300
turnin The Nelthazan Ruins##65890 |goto 64.00,18.29
accept Tools of the Tirade##65891 |goto 64.00,18.29
accept The Relic Inquiry##65893 |goto 64.00,18.29
stickystart "Collect_Nelthazan_Artifact_Fragments"
step
click Waygate Rubble+
|tip They look like piles of grey stone slabs on the ground around this area.
Deploy #5# Tools |q 65891/1 |goto 63.72,15.91
step
label "Collect_Nelthazan_Artifact_Fragments"
Kill enemies around this area
|tip They look like lizard people.
collect 60 Nelthazan Artifact Fragments##193375 |q 65893/1 |goto 63.42,16.09
You can find more around [62.27,17.51]
step
talk Skyscribe Adenedal##186300
turnin Tools of the Tirade##65891 |goto 64.00,18.29
turnin The Relic Inquiry##65893 |goto 64.00,18.29
accept Competing Company##65895 |goto 64.00,18.29
step
kill Tserasor the Preserver##190598
|tip Inside the small crumbled building.
collect Map of Nelthazan Ruins##193355 |n
Find the Clue |q 65895/1 |goto 62.93,18.66 |count 1
step
kill Sootscale the Indomitable##190307
|tip In the doorway of the crumbled building.
collect Shattered Ornament##193357 |n
Find the Clue |q 65895/1 |goto 62.44,18.52 |count 2
step
click Remains of Keskahz
|tip It looks like a dead brown dragon person on the ground.
|tip Avoid the Proto-drake Eggs.
|tip If you get too close to them, enemies will appear.
collect Recruitment Roster##198078 |n
Find the Clue |q 65895/1 |goto 61.72,18.61 |count 3
step
kill Malifron##190278
|tip He walks around this area.
collect Orders from Sarkareth##198079 |n
Find the Clue |q 65895/1 |goto 62.77,16.28 |count 4
step
Enter the building |goto 62.07,16.40 < 15 |walk
talk Skyscribe Adenedal##186300
|tip Inside the building.
turnin Competing Company##65895 |goto 62.14,16.30
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
accept One Step Backwards##66719 |goto 62.14,16.30
|only if Evoker
step
use Adenedal's Tidy Purse##193376
Open Adenedal's Purse |q 66719/1
|only if Evoker
step
use Ancient Mana Gem##198351
Consume the Ancient Mana |q 66719/2
|only if Evoker
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
turnin One Step Backwards##66719 |goto 62.14,16.30
|only if Evoker
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
accept Proto Problems##65898 |goto 62.14,16.30
step
click The Black Locus
|tip It looks like a large black stone rune with an orange symbol on it.
|tip On the platform, overlooking the valley.
|tip A dragon will fly down and attack you.
collect The Black Locus##193601 |q 65898/1 |goto 60.60,17.37
kill Hypoxicron##186334 |q 65898/2 |goto 61.33,17.37
step
Enter the building |goto 65.99,24.61 < 10 |walk
talk Skyscribe Adenedal##191154
|tip Inside the building.
turnin Proto Problems##65898 |goto 66.33,24.34
accept The Black Locus##66700 |goto 66.33,24.34
step
talk Telemancer Aerilyn##190089
turnin The Black Locus##66700 |goto 66.00,25.06
step
talk Hunter Narman##191924
Tell him _"Dawa is already headed towards the pond."_
Speak to Hunter Narman |q 70721/1 |goto 63.62,40.47
step
Meet Narman and Dawa by the Water |q 70721/2 |goto 46.70,60.47
|tip On top of the mountain, near a small pond.
step
Watch the dialogue
talk Hunter Narman##197011
|tip On top of the mountain, near a small pond.
turnin After My Ohn Heart##70721 |goto 46.70,60.47
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin Hooves of War##66201 |goto 41.89,61.80
accept The Calm Before the Storm##66222 |goto 41.89,61.80
step
talk Elder Yuvari##188224
accept Up to No-khud##66651 |goto 40.93,61.63
step
talk Flightmaster Carseng##192865
fpath Teerakai |goto 39.98,61.13
step
talk Initiate Zorig##188225
turnin Up to No-khud##66651 |goto 39.05,66.02
accept Return to Mender##66652 |goto 39.05,66.02
step
kill Tombcaller Ganzaya##188509
|tip He walks around this area.
Interrupt the Ritual |q 66652/1 |goto 37.08,65.66
step
click Exhumed Spear
Retrieve the Spear |q 66652/2 |goto 37.04,65.47
step
talk Initiate Zorig##188225
turnin Return to Mender##66652 |goto 39.04,66.02
accept Desecrator Annihilator##66654 |goto 39.04,66.02
accept Reagents of De-Necromancy##66655 |goto 39.04,66.02
stickystart "Collect_Intact_Skulls"
stickystart "Collect_Clumps_Of_Sacred_Soil"
stickystart "Slay_Desecrating_Centaurs"
step
Kill enemies around this area
|tip They look like centaurs.
Retrieve #3# Risen Hero's Weapons |q 66654/2 |goto 34.92,66.84
step
label "Collect_Intact_Skulls"
Kill Risen enemies around this area
|tip They look like blue ghost dogs and birds.
collect 4 Intact Skull##191901 |q 66655/1 |goto 35.00,68.00
step
label "Collect_Clumps_Of_Sacred_Soil"
click Disturbed Sacred Soil+
|tip They look like piles of brown dirt around this area.
collect 6 Clump of Sacred Soil##193257 |q 66655/2 |goto 35.00,68.00
step
label "Slay_Desecrating_Centaurs"
Kill enemies around this area |notinsticky
|tip They look like centaurs. |notinsticky
Slay #10# Desecrating Centaurs |q 66654/1 |goto 34.92,66.84
step
talk Initiate Zorig##189858
turnin Desecrator Annihilator##66654 |goto 33.75,65.35
turnin Reagents of De-Necromancy##66655 |goto 33.75,65.35
accept Zambul, Head Vandal##69936 |goto 33.75,65.35
step
kill Overseer Zambul##191145 |q 69936/1 |goto 34.92,66.84
|tip He looks like a larger centaur that walks all around this area.
|tip He will appear on your minimap as a yellow dot.
step
talk Initiate Zorig##189858
turnin Zambul, Head Vandal##69936 |goto 33.75,65.35
accept Definitely Eternal Slumber##66656 |goto 33.75,65.35
step
kill Cathan the Determined##192224
|tip She looks like a blue ghost centaur.
|tip She walks around this area.
|tip She will appear on your minimap as a yellow dot.
use the Totem of Respite##194447
|tip Use it on her corpse.
Release Cathan's Spirit |q 66656/1 |goto 31.17,68.99
step
kill Zaphil the Defiant##192223
|tip He looks like a blue ghost centaur.
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
use the Totem of Respite##194447
|tip Use it on his corpse.
Release Zaphil's Spirit |q 66656/2 |goto 31.01,71.02
step
kill Ganmat the Wise##192226
|tip He looks like a blue ghost centaur.
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
use the Totem of Respite##194447
|tip Use it on his corpse.
Release Ganmat's Spirit |q 66656/3 |goto 32.15,70.48
step
kill Dihar the Unyielding##192225
|tip She looks like a blue ghost centaur.
|tip She walks around this area.
|tip She will appear on your minimap as a yellow dot.
use the Totem of Respite##194447
|tip Use it on her corpse.
Release Dihar's Spirit |q 66656/4 |goto 32.63,71.42
step
_Next to you:_
talk Initiate Zorig
turnin Definitely Eternal Slumber##66656
accept And Stay Dead!##66657
step
Enter the cave |goto 31.69,70.43 < 10 |walk
kill Tombcaller Arban##190047 |q 66657/1 |goto 31.50,70.82
|tip He looks like a centaur.
|tip He walks around this area inside the cave.
step
Follow the path |goto 31.18,71.07 < 10 |walk
Investigate Teera's Tomb |q 66657/2 |goto 31.04,70.93
|tip Inside the cave.
step
Investigate Maruuk's Tomb |q 66657/3 |goto 31.48,71.46
|tip Inside the cave.
step
_Next to you:_
talk Initiate Zorig
turnin And Stay Dead!##66657
accept The Nokhud Offensive: Founders Keepers##66658
step
Leave the cave |goto 31.69,70.43 < 10 |walk |only if subzone("The Eternal Kurgans") and _G.IsIndoors()
talk Scout Khenyug##189594
|tip Inside the hut.
Tell her _"Clan Nokhud has declared war on all Maruuk."_
Speak to Scout Khenyug |q 66222/4 |goto 37.57,59.45
step
talk Herbalist Agura##188337
Tell him _"War is coming. Jebotai asks you to prepare for casualties."_
Speak to Herbalist Agura |q 66222/1 |goto 38.48,57.41
step
talk Khansguard Hojin##190585
|tip He walks around this area.
Tell him _"Balakar has declared war on the Khanam Matra. Jebotai wants you to ready the khansguard."_
Speak to Khansguard Hojin |q 66222/3 |goto 39.50,55.35
step
talk Quartermaster Gensai##189593
|tip Inside the hut.
Tell him _"Clan Nokhud has declared war. Jebotai asks that you provide provisions."_
Speak to Quartermaster Gensai |q 66222/2 |goto 40.72,56.35
step
talk Elder Nazuun##190164
accept Land of the Apex##66687 |goto 41.64,56.75
accept Signs of the Wind##66688 |goto 41.64,56.75
step
click Fern Spores+
|tip They look like green fern plants on the ground around this area.
click Avian Feather+
|tip They look like brown and white feathers on the ground around this area.
Gather #8# Wind Tokens |q 66688/1 |goto 44.60,54.19
You can find more around [46.43,52.17]
step
click Offering Vessel
turnin Signs of the Wind##66688 |goto 49.35,49.53
step
talk Himia, The Blessed##190950
accept Himia, the Blessed##70374 |goto 49.34,49.41
step
talk Himia, The Blessed##190950
Tell her _"I am ready."_
Kill the enemies that attack in waves
kill Earth Elemental##190173
Defeat the Elements |q 70374/1 |goto 49.34,49.41
step
Kill Thunderspine enemies around this area
|tip They look like large and small dinosaurs.
collect 2 Thunderspine Scale##193202 |q 66687/3 |goto 50.49,50.20
step
kill Spider Eggs##191083+
|tip Inside the cave.
|tip They look like white cocoon eggs on the ground next to walls.
|tip You can find them all throughout the Deadsnare Caverns cave.
kill Rustfang Creeper##187672+
|tip They look like large spiders.
collect 10 Shadespinner's Web##193207 |q 66687/1 |goto 43.63,48.10
step
Leave the cave |goto 43.63,48.10 < 15 |walk |only if subzone("Deadsnare Caverns") and _G.IsIndoors()
Kill Nimblewing enemies around this area
|tip They look like wolf dragons.
collect 2 Slyvern Talon##193206 |q 66687/2 |goto 42.65,46.55
step
talk Elder Nazuun##190164
turnin Land of the Apex##66687 |goto 41.64,56.75
turnin Himia, the Blessed##70374 |goto 41.64,56.75
accept Rellen, the Learned##66834 |goto 41.64,56.75
step
Enter the cave |goto 40.35,57.41 < 10 |walk
click Offering Basket
|tip Inside the cave.
Watch the dialogue
Summon Rellen |q 66834/1 |goto 40.11,57.86
step
click Torch
|tip Inside the cave.
Acquire a Torch |q 66834/2 |goto 40.20,57.89
step
Watch the dialogue
|tip Use the "Witness Rellen" ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
Slay the Shadespinner |q 66834/3 |goto 40.20,57.89
step
click Spear
|tip Inside the cave.
Acquire a Spear |q 66834/4 |goto 40.06,57.77
step
Watch the dialogue
|tip Use the "Witness Rellen" ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
Slay the Thunderspine |q 66834/5 |goto 40.06,57.77
step
click Bow
|tip Inside the cave.
Acquire a Bow |q 66834/6 |goto 40.06,57.74
step
Watch the dialogue
|tip Use the "Witness Rellen" ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
Slay the Slyvern |q 66834/7 |goto 40.06,57.74
step
talk Elder Nazuun##190164
turnin Rellen, the Learned##66834 |goto 41.64,56.75
accept The Nokhud Offensive: The Final Ancestor##66690 |goto 41.64,56.75
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin The Calm Before the Storm##66222 |goto 41.89,61.79
accept Boku the Mystic##70229 |goto 41.89,61.79
step
talk Initiate Boku##186290
|tip On top of the hill.
turnin Boku the Mystic##70229 |goto 36.81,57.27
accept Pessimistic Mystic##66254 |goto 36.81,57.27
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 36.71,57.13 |count 1
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 36.66,57.71 |count 2
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 37.10,57.82 |count 3
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 37.20,57.26 |count 4
step
talk Initiate Boku##186290
turnin Pessimistic Mystic##66254 |goto 36.81,57.27
accept Mystic Mystery##66224 |goto 36.81,57.27
step
Meet Boku Outside Teerakai |q 66224/1 |goto 44.56,61.96
step
click Boku's Belongings
Choose _<Collect Boku's belongings.>_
Collect Boku's Belongings |q 66224/2 |goto 44.56,61.96
step
Search for Boku |q 66224/3 |goto 46.52,63.25
step
clicknpc Unidentified Centaur##190486
Choose _<Take the object.>_
|tip You will be attacked.
Investigate the Unidentified Centaur |q 66224/4 |goto 46.52,63.25
step
Continue Searching for Boku |q 66224/5 |goto 49.31,63.22
step
talk Initiate Boku##187795
turnin Mystic Mystery##66224 |goto 49.31,63.22
step
talk Tigari Khan##195316
accept Toting Totems##66225 |goto 49.36,63.13
accept Taken By Storm##70195 |goto 49.36,63.13
stickystart "Collect_Bundles_Of_Totems"
step
kill Shela the Windbinder##194884
Free Altan |q 70195/1 |goto 48.90,69.04
collect Ridgewater Retreat Orders##198698 |q 70195/2 |goto 48.90,69.04
step
label "Collect_Bundles_Of_Totems"
Kill Nokhud enemies around this area
|tip They look like centaurs.
collect 8 Bundle of Totems##193051 |q 66225/1 |goto 49.94,67.40
step
talk Tigari Khan##190648
turnin Toting Totems##66225 |goto 49.36,63.12
turnin Taken By Storm##70195 |goto 49.36,63.12
accept Catching Wind##66236 |goto 49.36,63.12
step
talk Initiate Boku##187804
turnin Catching Wind##66236 |goto 58.11,68.97
accept Weather Control##66242 |goto 58.11,68.97
accept Eagle-itarian##66256 |goto 58.11,68.97
accept Fowl Sorcery##66257 |goto 58.11,68.97
stickystart "Slay_Primalists"
stickystart "Kill_Stormcaller_Initiates"
stickystart "Kill_Stormbound_Essences"
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.51,69.02 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.06,67.43 |count 2
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 58.17,67.35 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 57.86,64.89 |count 3
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.66,64.09 |count 4
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 58.86,61.83 |count 2
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.78,61.73 |count 5
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 59.65,64.03 |count 6
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 59.22,65.52 |count 3
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 61.77,66.66 |count 4
step
label "Slay_Primalists"
Kill Pimalist enemies around this area
|tip They look like various races of humanoids.
Slay #6# Primalists |q 66256/2 |goto 59.81,66.03
step
label "Kill_Stormcaller_Initiates"
kill 6 Stormcaller Initiate##187817 |q 66242/2 |goto 59.35,66.22
|tip They look like centaurs channeling a blue spell on wind elementals around this area.
step
label "Kill_Stormbound_Essences"
kill 8 Stormbound Essence##187819 |q 66242/1 |goto 59.35,66.22
|tip They look like wind elementals.
step
talk Initiate Boku##187809
|tip On top of the mountain.
turnin Weather Control##66242 |goto 60.66,63.54
turnin Eagle-itarian##66256 |goto 60.66,63.54
turnin Fowl Sorcery##66257 |goto 60.66,63.54
accept Oh No, Ohn'ahra!##66258 |goto 60.66,63.54
step
Watch the dialogue
|tip Follow Boku and protect him as he fights enemies.
Kill enemies around this area
|tip Fill the bar in the quest tracker area.
Protect Boku from Enemies |q 66258/1 |goto 60.42,64.73
Free Ohn'ahra |q 66258/2 |goto 60.42,64.73
step
talk Initiate Boku##195024
turnin Oh No, Ohn'ahra!##66258 |goto 61.42,62.78
accept A Storm of Ill Tidings##66259 |goto 61.42,62.78
step
talk Initiate Radiya##190014
turnin A Disgruntled Initiate##65906 |goto 56.26,75.96
accept Sneaking Out##65901 |goto 56.26,75.96
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto 56.65,76.27 |count 1
step
talk Flightmaster Huraq##195235
fpath Ohn'iri Springs |goto 56.68,76.59
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto 57.36,76.33 |count 2
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto 57.01,75.48 |count 3
step
talk Initiate Radiya##190014
Tell her _"The totems are placed."_
Inform Radiya |q 65901/2 |goto 56.25,75.95
step
talk Initiate Radiya##190014
turnin Sneaking Out##65901 |goto 54.79,66.40
accept Favorite Fruit##65907 |goto 54.79,66.40
step
click Wildsprings Shrub+
|tip They look like green bushes on the ground around this area.
collect 6 Wild Bushfruit##192743 |q 65907/1 |goto 53.53,71.02
step
use the Wild Bushfruit##192743+
|tip Use it on Mudstompers.
|tip They look like small and large hippos around this area.
Feed #6# Mudstompers |q 65907/2 |goto 54.28,66.61
step
talk Initiate Radiya##190014
turnin Favorite Fruit##65907 |goto 54.79,66.40
accept A Promise Is A Promise##65770 |goto 54.79,66.40
step
talk Initiate Radiya##190014
Tell her _"I promise to keep your secret."_
Promise Radiya |q 65770/1 |goto 54.79,66.40
step
Meet Radiya Further North |q 65770/2 |goto 53.11,64.01
step
talk Godoloto##190022
|tip He flies down onto the rock.
turnin A Promise Is A Promise##65770 |goto 52.05,63.24
accept More Adventure Than Expected##65761 |goto 52.05,63.24
step
Enter the building |goto 47.49,54.23 < 10 |walk
talk Initiate Radiya##190014
|tip Inside the building.
Find Radiya |q 65761/3 |goto 47.51,54.12
step
talk Initiate Radiya##190014
|tip Inside the building.
turnin More Adventure Than Expected##65761 |goto 47.51,54.12
accept Stealing Its Thunder##65711 |goto 47.51,54.12
step
Enter the cave |goto 47.54,56.07 < 15 |walk
kill Storm Extractor##190011 |q 65711/1 |goto 47.29,56.72
|tip They look like centaurs channeling a blue lightning spell on a dinosaur.
|tip Inside the cave.
step
Leave the cave |goto 47.54,56.07 < 15 |walk |only if subzone("Kaighan Camp") and _G.IsIndoors()
talk Lizi##190009
Choose _"<Gently offer the bushfruit.>"_
Soothe Lizi the Thunder Lizard |q 65711/2 |goto 48.31,56.60
step
talk Initiate Radiya##190014
|tip She runs to this location.
turnin Stealing Its Thunder##65711 |goto 48.27,56.49
accept Sneaking In##66676 |goto 48.27,56.49
step
talk Initiate Radiya##190014
Return to Radiya in Ohn'iri Springs |q 66676/1 |goto 56.20,77.10
step
talk Initiate Radiya##190014
turnin Sneaking In##66676 |goto 56.20,77.10
step
Enter the building |goto 60.42,38.25 < 10 |walk
talk Quartermaster Huseng##196707
|tip Inside the building, on the ground floor.
accept Cultural Exchange##72117 |goto 60.40,37.72 |instant
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Tell her _"The Primalists have captured Ohn'ahra and have allied with Clan Nokhud."_
Speak to the Khanam Matra at Maruukai |q 66259/1 |goto 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
turnin A Storm of Ill Tidings##66259 |goto 60.00,37.47
accept Chasing the Wind##66327 |goto 60.00,37.47
step
Watch the dialogue
|tip Inside the building, on the top floor.
Hear the Report |q 66327/1 |goto 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Tell her _"I understand."_
Talk to Khanam Matra Sarest |q 66327/2 |goto 60.00,37.47
step
Meet Khanam Matra Sarest Outside the Horn of Drusahl |q 66327/4 |goto 73.03,40.59
step
talk Khanam Matra Sarest##188068
turnin Chasing the Wind##66327 |goto 73.03,40.59
accept Nokhud Can Come of This##70244 |goto 73.03,40.59
step
Kill enemies around this area
|tip Fill up the bar in the quest tracker area.
clicknpc Teerai Survivor##191097+
|tip They look like centuars laying on the ground around this area.
Retake the Village from the Nokhud |q 70244/1 |goto 75.33,40.90
step
kill Warmonger Kharad##190932 |q 70244/2 |goto 76.14,40.87
|tip He is elite.
|tip Your allies will help you fight.
step
talk Khanam Matra Sarest##191494
turnin Nokhud Can Come of This##70244 |goto 76.70,40.93
accept Blowing of the Horn##66329 |goto 76.70,40.93
step
talk Khanam Matra Sarest##188068
Tell her _"I am ready!"_
Talk to Khanam Matra Sarest |q 66329/1 |goto 76.70,40.93
step
talk Khanam Matra Sarest##188068
turnin Blowing of the Horn##66329 |goto 76.70,40.93
accept Green Dragon Down##66328 |goto 76.70,40.93
step
Find the Green Dragons |q 66328/1 |goto 72.35,50.33
step
talk Khanam Matra Sarest##188068
Tell her _"Let's explain ourselves."_
Speak to the Khanam Matra |q 66328/2 |goto 72.35,50.33
step
Watch the dialogue
Listen to the Discussion |q 66328/3 |goto 72.35,50.33
step
talk Khanam Matra Sarest##188068
turnin Green Dragon Down##66328 |goto 72.35,50.33
step
talk Flightmaster Nakeena##191622
|tip Up on the cliff.
fpath Pinewood Post |goto 80.43,57.89
step
talk Sentinel Olekk##190024
turnin Trouble In The Pines##65837 |goto 81.03,58.91
accept Tempests Abound##66681 |goto 81.03,58.91
step
talk Scout Watu##190025
accept Counting Sheep##66680 |goto 81.03,58.97
step
talk Sondo##191397
buy Diced Meat##193890 |q 66680/1 |goto 80.64,58.76
step
clicknpc Wish##191408
Choose _"<Offer the diced meat.>"_
Treat Wish |q 66680/2 |goto 81.03,59.54
stickystart "Accept_More_Than_A_Rock"
stickystart "Slay_Stormtouched_Beasts"
step
use Wish's Whistle##193892
|tip Use it on Lost Argali.
|tip They look like black and white yaks.
Save #5# Lost Argali |q 66680/3 |goto 82.20,64.51
step
label "Accept_More_Than_A_Rock"
Kill enemies around this area
collect Stormtouched Shards##194031 |n
|tip You will automatically accept the quest when you loot the item.
accept More Than A Rock##66689 |goto 82.20,64.51
step
label "Slay_Stormtouched_Beasts"
Kill enemies around this area
Slay #8# Stormtouched Beasts |q 66681/1 |goto 82.20,64.51
step
talk Scout Watu##190025
turnin Counting Sheep##66680 |goto 81.03,58.97
turnin Tempests Abound##66681 |goto 81.03,58.97
turnin More Than A Rock##66689 |goto 81.03,58.97
accept Last Resort Analysis##66683 |goto 81.03,58.97
step
talk Basaan##191392
Ask her _"Do you know anything about this shard?"_
Inquire Basaan |q 66683/1 |goto 80.96,59.53
step
talk Sondo##191397
Ask him _"Do you know anything about this shard?"_
Inquire Sondo |q 66683/3 |goto 80.64,58.76
step
talk Flightmaster Nakeena##191622
Ask her _"Do you know anything about this shard?"_
Inquire Nakeena |q 66683/2 |goto 80.43,57.88
step
talk Scout Watu##190025
turnin Last Resort Analysis##66683 |goto 81.03,58.97
accept Show of Storm##65836 |goto 81.03,58.97
step
Regroup with Scout Watu |q 65836/1 |goto 84.05,60.73
step
kill Stormed Blackpaw##193827 |q 65836/2 |goto 84.05,60.73
|tip It looks like a black bear.
step
Watch the dialogue
talk Scout Watu##190025
|tip He runs to this location.
turnin Show of Storm##65836 |goto 83.98,60.73
accept Storm Chasing##66684 |goto 83.98,60.73
stickystart "Slay_Primalist_Forces"
step
Enter the cave |goto 84.84,63.27 < 15 |walk
click Storm Pylon
|tip Inside the cave.
Destroy the Storm Pylon |q 66684/2 |goto 85.02,64.22
step
label "Slay_Primalist_Forces"
Kill enemies around this area
|tip Inside and outside the cave.
Slay #4# Primalist Forces |q 66684/1 |goto 84.84,63.27
step
talk Scout Watu##190025
turnin Storm Chasing##66684 |goto 80.85,58.95
step
talk Jhara##191391
|tip Inside the building.
home Pinewood Post |goto 81.33,59.31 |q 66344 |future
step
talk Merithra##188156
accept With the Wind At Our Backs##66344 |goto 72.46,50.79
step
talk Gerithus##189697
Tell him _"I'm ready to go."_
Fly with Gerithus |q 66344/1 |goto 72.30,50.72
step
Begin Flying to Shady Sanctuary |invehicle |goto 72.30,50.72 |q 66344
step
Watch the dialogue
Fly to Shady Sanctuary |outvehicle |goto 28.62,58.21 |q 66344 |notravel
step
talk Merithra##188106
turnin With the Wind At Our Backs##66344 |goto 28.26,57.69
accept Shady Sanctuary##70220 |goto 28.26,57.69
step
talk Guard-Captain Alowen##194899
Tell her _"The Primalists are on the move. Merithra calls the flight to battle!"_
Speak to Guard-Captain Alowen |q 70220/1 |goto 29.06,55.26
step
talk Sidra the Mender##194902
Tell her _"You are needed at the front."_
Speak to Isidra the Mender |q 70220/3 |goto 30.19,55.68
step
talk Aronus##188972
Speak to Aronus to Visit Merithra's Watch |q 70220/4 |goto 29.28,56.43
step
talk Aronus##188972
Tell him _"Take me up to Merithra's Watch."_
Fly with Aronus |ontaxi |goto 29.28,56.43 |q 70220
step
Fly to Merithra's Watch |offtaxi |goto 29.51,60.34 |q 70220 |notravel
step
talk Viranikus##194903
|tip On the platform, overlooking the valley.
Tell him _"The centaur clans have declared their support. Rally your troops!"_
Speak to Viranikus |q 70220/5 |goto 29.77,59.96
step
talk Sariosa##186487
fpath Shady Sanctuary |goto 29.82,57.64
step
talk Sariosa##186487
Tell her _"The Ancient Bough is in danger! Please help deliver the message."_
Speak to Sariosa |q 70220/2 |goto 29.82,57.64
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
accept Some Call Me Bug Catcher##70062 |goto 29.91,58.42
step
kill Flyspawn Beetle##193996+
|tip They look like insects flying in the air around this area.
Gather #6# Flyspawn Beetle Parts |q 70062/1 |goto 29.73,58.08
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin Some Call Me Bug Catcher##70062 |goto 29.91,58.42
accept Others Call Me Duck Herder##70069 |goto 29.91,58.42
step
click Duck+
|tip They look like small birds with various names.
|tip They walk around this area.
Feed #4# Ducklings |q 70069/1 |goto 30.96,56.14
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin Others Call Me Duck Herder##70069 |goto 29.91,58.42
accept But... I Am the Hero of Ducks##70070 |goto 29.91,58.42
step
talk Merithra##188106
turnin Shady Sanctuary##70220 |goto 28.26,57.69
accept The Primalist Front##66331 |goto 28.26,57.69
step
Search for Firequackers |q 70070/1 |goto 27.19,56.43
step
kill Queasy Hornswog##194003
|tip It looks like a large grey frog with horns.
Make the Queasy Hornswog Throw Up |q 70070/2 |goto 27.19,56.43
step
talk Celina Crunchyleaves##186303
accept Find Theramus##65899 |goto 25.06,56.89
step
Enter the cave |goto 24.76,63.53 < 20 |walk
talk Theramus##186313
|tip Inside the cave.
Ask him _"Are you Theramus?"_
Find Theramus |q 65899/2 |goto 24.85,64.46
step
talk Celina Crunchyleaves##186303
turnin Find Theramus##65899 |goto 24.43,63.01
accept Can't Beat Fluffy##65903 |goto 24.43,63.01
step
talk Felina Starrunner##185726
accept Suspiciously Spiced Steak##65900 |goto 24.46,63.05
step
use the Versatile Longnet##191134
|tip Use it on Glade Hoppers.
|tip They look like small rabbits with antlers.
|tip They run around on the ground around this area.
Catch #12# Glade Hoppers |q 65903/1 |goto 23.18,65.34
stickystart "Collect_Reptilian_Eggshells"
stickystart "Collect_Sourblooms"
step
kill Mud Snapper##186308+
|tip They look like large turtles on the ground azround this area.
collect 3 Perfectly Tender Turtle Meat##191085 |q 65900/1 |goto 22.46,61.27
step
label "Collect_Reptilian_Eggshells"
click Reptilian Eggshell+
|tip They look like brown and white spotted broken eggs on the ground around this area.
collect 6 Reptilian Eggshell##191084 |q 65900/2 |goto 22.46,61.27
step
label "Collect_Sourblooms"
click Sourbloom+
|tip They look like orange flowers on the ground around this area.
collect 15 Sourbloom##191083 |q 65900/3 |goto 22.46,61.27
step
talk Celina Crunchyleaves##186303
turnin Can't Beat Fluffy##65903 |goto 24.43,63.01
step
talk Felina Starrunner##185726
Choose _"<Hand over the ingredients.>"_
Give the Ingredients to Felina Starrunner |q 65900/4 |goto 24.46,63.05
step
Watch the dialogue
talk Felina Starrunner##185726
turnin Suspiciously Spiced Steak##65900 |goto 24.46,63.05
accept Food or Floof##65902 |goto 24.46,63.05
step
Enter the cave |goto 24.76,63.53 < 20 |walk
talk Theramus##186313
|tip Inside the cave.
Tell him _"I brought your favorite food."_
Feed Theramus |q 65902/1 |goto 24.85,64.46
step
clicknpc Place glade hoppers##186970
|tip Inside the cave.
Release the Glade Hoppers |q 65902/2 |goto 24.82,64.59
step
talk Felina Starrunner##185726
turnin Food or Floof##65902 |goto 24.46,63.05
accept More Than Weeds##65905 |goto 24.46,63.05
step
talk Celina Crunchyleaves##186303
accept Proof of Negligence##65937 |goto 24.43,63.01
stickystart "Collect_Pulsating_Thorn"
stickystart "Clear_Out_The_Lilac_Ramble"
step
talk Injured Cub##186378
|tip It looks like a small bear.
Choose _"<Attempt to pick up the cub.>"_
Rescue the Injured Cub |q 65937/2 |goto 24.87,60.33
step
click Trampled Bush
|tip It looks like a plant with purple flowers on it.
collect Decayed Flower##191086 |q 65937/1 |goto 25.81,59.61
step
label "Collect_Pulsating_Thorn"
kill Wrathful Orchid##186321+
|tip They look like plants with teeth around this area.
collect Pulsating Thorn##191568 |q 65937/3 |goto 25.35,60.66
step
label "Clear_Out_The_Lilac_Ramble"
Kill enemies around this area
click Creeping Dreadweed+
|tip They look like brown bushes on the ground around this area.
|tip Fill up the bar in the quest tracker area.
Clear Out the Lilac Ramble |q 65905/1 |goto 25.19,60.38
step
talk Felina Starrunner##185726
turnin More Than Weeds##65905 |goto 24.46,63.05
step
talk Celina Crunchyleaves##186303
turnin Proof of Negligence##65937 |goto 24.43,63.01
accept Enough Is Enough##65904 |goto 24.43,63.01
step
Enter the cave |goto 24.76,63.53 < 20 |walk
talk Theramus##186313
|tip Inside the cave.
Tell him _"You need to see this, Theramus."_
Show the Evidence to Theramus |q 65904/1 |goto 24.58,64.14
step
talk Celina Crunchyleaves##186303
|tip Inside the cave.
turnin Enough Is Enough##65904 |goto 24.56,63.96
step
talk Felina Starrunner##185726
|tip Inside the cave.
accept In Memory of Ysera##66011 |goto 24.53,63.96
step
Leave the cave |goto 24.76,63.53 < 20 |walk |only if subzone("Lilac Ramble") and _G.IsIndoors()
Follow Celina and Felina |q 66011/1 |goto 24.94,65.90
|tip Outside, on top of the cave.
step
talk Theramus##186313
Tell him _"I understand."_
Speak to Theramus |q 66011/2 |goto 24.94,65.90
step
Watch the dialogue
Restore the Shrine |q 66011/3 |goto 24.94,65.90
step
talk Theramus##187270
turnin In Memory of Ysera##66011 |goto 24.94,65.90
step
talk Belika##186175
Tell her _"Merithra sent me to hear your report."_
Hear Aru and Belika's Report |q 66331/3 |goto 27.56,46.00
step
talk Boku##191325
Tell him _"I'm here to hear your report."_
Hear Boku's Report |q 66331/2 |goto 25.72,44.26
step
talk Ohn Seshteng##191343
Tell her _"Sounds like a breeze. I'm ready!"_
Watch the dialogue
|tip You will fly as a bird.
Hear Ohn Seshteng's Report |q 66331/4 |goto 26.18,40.07
step
talk Merithra##189599
Tell her _"Show me what you see."_
Speak to Merithra |q 66331/5 |goto 25.63,40.51
step
talk Khanam Matra Sarest##188601
turnin The Primalist Front##66331 |goto 25.67,40.43
step
talk Merithra##189599
accept Justice for Solethus##66333 |goto 25.63,40.51
stickystart "Kill_Nokhud_Warmongers"
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto 24.81,39.89 |count 1
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto 24.37,38.47 |count 2
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto 25.44,37.72 |count 3
step
label "Kill_Nokhud_Warmongers"
kill 3 Nokhud Warmonger##188341 |q 66333/1 |goto 24.49,37.45
|tip They look like large centaurs carrying polearms around this area.
step
_Next to you:_
talk Khanam Matra Sarest
turnin Justice for Solethus##66333
accept Deconstruct Additional Pylons##66335
accept Starve the Storm##66784
step
kill Primalist Storm-Summoner##191259+
|tip There are 3 of them.
|tip Inside the open cavern.
Deactivate the Storm Corridor |q 66784/1 |goto 24.94,34.90
step
_Next to you:_
talk Khanam Matra Sarest
turnin Starve the Storm##66784
step
extraaction Call Merithra##376006
|tip Use the "Call Merithra" ability.
|tip It appears as a button on the screen.
Mark the Second Primalist Pylon |q 66335/2 |goto 23.20,37.45
step
extraaction Call Merithra##376006
|tip Use the "Call Merithra" ability.
|tip It appears as a button on the screen.
Mark the Third Primalist Pylon |q 66335/3 |goto 21.44,37.58
step
extraaction Call Merithra##376006
|tip Use the "Call Merithra" ability.
|tip It appears as a button on the screen.
Mark the First Primalist Pylon |q 66335/1 |goto 23.91,39.38
step
_Next to you:_
talk Khanam Matra Sarest
turnin Deconstruct Additional Pylons##66335
accept Stormbreaker##66337
step
kill Stormbound Proto-Drake##195094
|tip Your allies will help you fight.
|tip Koroleth appears when the drake is at about 35% health, and kill it.
|tip After the drake dies, she will attack you.
kill Koroleth##188180 |q 66337/1 |goto 22.38,39.80
step
talk Gerithus##195136
Tell him _"Take me to Merithra."_
Speak to Gerithus |q 66337/2 |goto 22.92,40.20
step
Watch the dialogue
Return to Merithra |outvehicle |goto 25.66,47.84 |q 66337 |notravel
step
talk Merithra##188150
turnin Stormbreaker##66337 |goto 25.65,48.40
accept The Isle of Emerald##66336 |goto 25.65,48.40
step
talk Merithra##188181
turnin The Isle of Emerald##66336 |goto 22.14,50.98
accept Renewal of Vows##66783 |goto 22.14,50.98
step
talk Sansok Khan##188246
Choose _<Suggest a trophy from her first hunt.>_
clicknpc Shikaar Spear##191195
|tip It appears in her hand.
Click Here After You Take the Spear |confirm |goto 22.28,50.88 |q 66783
step
talk Merithra##188181
Tell her _"Here is the weapon Sansok Khan earned after her first hunt."_
Accept Sansok Khan's Offering |q 66783/1 |goto 22.14,50.97
step
talk Tigari Khan##191156
Choose _<Suggest she offer an eagle feather.>_
clicknpc Ohuna Feather##191209
|tip It appears in her hand.
Click Here After You Take the Feather |confirm |goto 22.37,51.05 |q 66783
step
talk Merithra##188181
Tell her _"Here is a feather from Ohn'ahra, lifted upon the wind."_
Accept Tigari Khan's Offering |q 66783/2 |goto 22.14,50.98
step
talk Khanam Matra Sarest##188601
Choose _<Suggest she offer blood.>_
clicknpc Horn of the Khanam Matra##191208
|tip It appears in her hand.
Click Here After You Take the Horn |confirm |goto 22.34,50.95 |q 66783
step
talk Merithra##188181
Tell her _"Here is proof of the unbroken lineage of Clan Teerai, direct descendants of the centaur Teera."_
Accept Khanam Matra's Offering |q 66783/3 |goto 22.14,50.98
step
Watch the dialogue
clicknpc Everblooming Soil##197601
|tip It appears in Merithra's hands.
Click Here After You Take the Soil |confirm |goto 22.15,50.98 |q 66783
step
talk Khanam Matra Sarest##188601
Tell her _"Please accept Merithra's gift to the centaur clans."_
Give Merithra's Offering |q 66783/4 |goto 22.34,50.95
step
talk Merithra##188181
turnin Renewal of Vows##66783 |goto 22.14,50.98
accept Into the Azure##66340 |goto 22.14,50.98
step
talk Khanam Matra Sarest##188601
accept The Nokhud Offensive: The Wind Belongs to the Sky##66339 |goto 22.34,50.95
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin But... I Am the Hero of Ducks##70070 |goto 29.91,58.42
step
talk Healer Selbekh##192621
accept The Trouble with Taivan##67772 |goto 61.22,40.01
step
clicknpc Taivan##196665
Brush Taivan |q 67772/1 |goto 61.13,40.01
step
click Pelt Bundle
Pick Up the Pelt Bundle |q 67772/2 |goto 61.19,39.70
step
click Pelt Bundle Location
|tip On Taivan's back.
Place the Pelt Bundle |q 67772/3 |goto 61.13,40.01
step
talk Taivan##196675
Tell him _"Go find Hunter Jadar, Taivan. I will meet you there."_
Send Taivan to Hunter Jadar |q 67772/4 |goto 61.13,40.01
step
Meet Hunter Jadar at the Watering Hole |q 67772/5 |goto 71.42,49.60
step
talk Hunter Jadar##192629
turnin The Trouble with Taivan##67772 |goto 71.42,49.60
accept The Hunting Hound##67921 |goto 71.42,49.60
step
talk Taivan##194292
Tell him _"Let's hunt, boy!"_
Talk to Taivan |q 67921/1 |goto 71.43,49.42
step
Kill enemies around this area
|tip They look like various beasts.
Hunt #5# Dangerous Beasts with Taivan |q 67921/2 |goto 73.67,49.53
step
talk Hunter Jadar##192629
turnin The Hunting Hound##67921 |goto 71.42,49.61
accept Part of a Pack##70989 |goto 71.42,49.61
step
kill Ravenous Proto-Drake##193145 |q 70989/1 |goto 73.97,49.37
|tip It looks like a large green dragon that flies in the air around this area.
|tip It will appear on your minimap as a yellow dot.
|tip It is elite, but you should be able to kill it.
step
talk Hunter Jadar##192629
turnin Part of a Pack##70989 |goto 71.42,49.60
accept Try Again, Taivan!##68083 |goto 71.42,49.60
step
talk Healer Selbekh##192621
turnin Try Again, Taivan!##68083 |goto 61.22,40.01
accept The Gentle Giant##68084 |goto 61.22,40.01
step
talk Taivan##188247
Tell him _"Go find Shepherd Tevatei, Taivan. I will meet you there."_
Talk to Taivan |q 68084/1 |goto 61.13,40.01
step
Meet Shepherd Tevatei at the Mallakh |q 68084/2 |goto 49.06,41.08
step
talk Shepherd Tevatei##192633
turnin The Gentle Giant##68084 |goto 49.06,41.08
accept Shaping a Shepherd##68085 |goto 49.06,41.08
step
talk Taivan##194292
Ask him _"Are you ready to give this a try, boy?"_
Talk to Taivan |q 68085/1 |goto 48.97,40.92
step
Command Taivan to Herd #3# Argali |q 68085/2 |goto 48.92,40.87
|tip Use the "Command Taivan to Herd" ability on Aylaag Argali.
|tip It appears as a button on the screen.
|tip They look like rams around this area.
|tip They will appear on your minimap as yellow dots.
step
Chase #3# Argali into the Pen |q 68085/3 |goto 49.51,41.48
|tip Use the "Herd Them Yourself!" ability on Aylaag Argali.
|tip It appears as a button on the screen.
|tip They look like rams around this area.
|tip They will appear on your minimap as yellow dots.
|tip After you use the ability, keep running next to them, directing them to the pen at this location.
step
talk Shepherd Tevatei##192633
turnin Shaping a Shepherd##68085 |goto 49.06,41.08
accept Reign of the Ram##71022 |goto 49.06,41.08
step
kill Stubborn Ram##195849
|tip Use the "Command Taivan to Confront" ability on the Stubborn Ram.
|tip It appears as a button on the screen.
|tip It will attack you, and eventually surrender when it gets to low health.
Confront the Stubborn Ram |q 71022/1 |goto 49.65,39.45
step
talk Shepherd Tevatei##192633
turnin Reign of the Ram##71022 |goto 49.05,41.08
accept Danger in Daruukhan##68087 |goto 49.05,41.08
step
talk Teerai Messenger##193586
|tip He runs to this location.
Tell him _"I will leave for Daruukhan at once."_
Talk to the Teerai Messenger |q 68087/1 |goto 49.07,40.95
step
talk Flightmaster Washengtu##191814
fpath Broadhoof Outpost |goto 46.57,41.29
step
Meet Healer Selbekh at Daruukhan |q 68087/2 |goto 52.83,29.85
step
talk Healer Selbekh##192621
turnin Danger in Daruukhan##68087 |goto 52.83,29.85
accept Saving Centaur##69094 |goto 52.83,29.85
step
click Heavy Beam
|tip It looks like wooden logs.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Weaver Daavu |q 69094/1 |goto 52.13,29.66
step
Watch the dialogue
clicknpc Weaver Daavu##196009
|tip Taivan will carry him away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Weaver Daavu |q 69094/2 |goto 52.12,29.66
step
clicknpc Leatherworker Tukhtai##196179
|tip Inside the broken hut.
|tip Taivan will carry her away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Leatherworker Tukhtai |q 69094/4 |goto 52.27,29.11
step
clicknpc Heavy Beam##196166
|tip It looks like wooden logs.
Watch the dialogue
|tip Taivan will move the logs.
clicknpc Weaver Sagaa##196180
|tip Taivan will carry her away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Weaver Sagaa |q 69094/5 |goto 51.62,29.15
step
clicknpc Smith Gaan##196175
|tip Inside the burning hut.
|tip Taivan will carry him away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Smith Gaan |q 69094/3 |goto 51.49,30.38
step
click Heavy Beam
|tip It looks like wooden logs.
clicknpc Fletcher Nisekh##196187
|tip Taivan will carry him away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Fletcher Nisekh |q 69094/6 |goto 52.19,30.41
step
talk Healer Selbekh##192621
|tip You may have to talk to her to call Taivan if he isn't already nearby.
turnin Saving Centaur##69094 |goto 52.83,29.84
accept Homeward Hound##69095 |goto 52.83,29.84
step
talk Taivan##194292
Tell him _"Let's go home, boy!"_
Talk to Taivan |q 69095/1 |goto 52.71,30.01
step
Watch the dialogue
Ride Taivan to Maruukai |q 69095/2 |goto 61.13,40.01 |notravel
step
talk Healer Selbekh##192621
turnin Homeward Hound##69095 |goto 61.22,40.01
accept Taivan's Purpose##69096 |goto 61.22,40.01
step
talk Chimei##193112
Tell her _"Hello. Are you alright?"_
Try to Talk to Chimei |q 69096/1 |goto 61.81,38.58
step
talk Chimei##193112
Choose _"<Try tapping Chimei on the shoulder.>"_
Try to Talk to Chimei Again |q 69096/2 |goto 61.81,38.58
step
Watch the dialogue
|tip Taivan will lay next to Chimei.
Wait to See What Taivan Does |q 69096/3 |goto 61.81,38.58
step
talk Healer Selbekh##192621
turnin Taivan's Purpose##69096 |goto 61.82,38.73
step
talk Flightmaster Rynaam##192838
fpath Forkriver Crossing |goto 71.65,79.07
step
Open Your Profession Panel
|tip Press 'K' to open it.
|tip It is required before proceeding to the next step.
Click Here to Continue |confirm |q 69919 |future
step
talk Azley##193108
accept Targeted Ads##69915 |goto 72.05,81.14
accept A Craft in Need##69919 |goto 72.05,81.14 |only if hasprof("Dragon Isles Alchemy",1) or hasprof("Dragon Isles Blacksmtihing",1) or hasprof("Dragon Isles Cooking",1) or hasprof("Dragon Isles Enchanting",1) or hasprof("Dragon Isles Engineering",1) or hasprof("Dragon Isles Inscription",1) or hasprof("Dragon Isles Jewelcrafting",1) or hasprof("Dragon Isles Leatherworking",1) or hasprof("Dragon Isles Tailoring",1)
step
talk Azley##193108
Tell her _"Tell me the rules of crafting for the Artisan's Consortium."_
Learn the Rules of the Artisan's Consortium from Azley |q 69919/1 |goto 72.05,81.14
|only if haveq(69919) or completedq(69919)
step
talk Azley##193108
turnin A Craft in Need##69919 |goto 72.05,81.14
|only if haveq(69919) or completedq(69919)
step
Kill Goat enemies around this area
|tip They look like various colored sheep with horns.
collect "Order Anything Crafters Make!"##198346 |q 69915/1 |goto 75.99,84.53
collect "Public Orders: Fast and Made For You!"##198347 |q 69915/2 |goto 75.99,84.53
collect "Custom High-Quality Gear: Better Business with Personal Orders!"##198348 |q 69915/3 |goto 75.99,84.53
step
talk Azley##193108
turnin Targeted Ads##69915 |goto 72.05,81.14
accept Customer Satisfaction##69981
step
talk Bree'zin##193778
Tell him _"The Artisan's Consortium wants to know how your recrafting order went."_
Find the Headstrong Herbalist |q 69981/1 |goto 74.61,81.04
step
talk Duncan Ironeye##193780
|tip Near the bottom of the waterfall.
Tell him _"The Artisan's Consortium wants to know how your recrafting order went."_
Find the Stalwart Prospector |q 69981/2 |goto 77.27,73.14
step
click Mauled Skinner
Find the Daring Skinner |q 69981/3 |goto 67.03,80.89
step
talk Azley##193108
Choose _"<Show Azley what you found.>"_
Return to Azley |q 69981/4 |goto 72.05,81.14
step
talk Mahra Treebender##193835
turnin Customer Satisfaction##69981 |goto 71.84,81.31
step
_NOTE:_
The Rest of the Guide
|tip The remaining steps of this guide will walk you through completing dungeon quests.
|tip These dungeon quests are required to earn the "Sojourner of Ohn'ahron Plains" achievement.
|tip You can complete them now, or return to this guide later to finish the achievement.
|tip If you want to continue leveling, click through the next steps until the next guide is loaded for The Azure Span.
Click Here to Continue |confirm |q 66690
stickystart "Retrieve_Maruuks_Spear"
stickystart "Collect_Medallion_Of_The_Ancestors"
step
_Inside the Nokhud Offensive Dungeon:_
|tip Use the Group Finder to enter the Nokhud Offensive dungeon.
kill Teera##195723
|tip She is a boss inside the dungeon.
collect Sarantuya the Ever-True##200115 |n
Retrieve Teera's Bow |q 66658/1
step
label "Retrieve_Maruuks_Spear"
_Inside the Nokhud Offensive Dungeon:_ |notinsticky
|tip Use the Group Finder to enter the Nokhud Offensive dungeon. |notinsticky
kill Maruuk##186338
|tip He is a boss inside the dungeon. |notinsticky
collect Batubar the Relentless##200100 |n
Retrieve Maruuk's Spear |q 66658/2
step
label "Collect_Medallion_Of_The_Ancestors"
_Inside the Nokhud Offensive Dungeon:_ |notinsticky
|tip Use the Group Finder to enter the Nokhud Offensive dungeon. |notinsticky
kill Balakar Khan##186151
|tip He is a boss inside the dungeon. |notinsticky
collect Medallion of the Ancestors##193483 |q 66690/1
step
Return to Ohn'ahron Plains |complete zone("Ohn'ahron Plains") |q 66690
|tip Leave the dungeon.
step
Enter the cave |goto 40.29,59.43 < 10 |walk
Follow the path |goto 39.94,58.60 < 10 |walk
click Teera's Bow
|tip Inside the cave.
Place Teera's Bow |q 66658/3 |goto 40.09,58.36
step
click Maruuk's Spear
|tip Inside the cave.
Place Maruuk's Spear |q 66658/4 |goto 39.60,59.06
step
Leave the cave |goto 40.29,59.43 < 10 |walk |only if subzone("Teerakai") and _G.IsIndoors()
talk Initiate Zorig##190068
turnin The Nokhud Offensive: Founders Keepers##66658 |goto 41.00,61.62
step
talk Elder Nazuun##190164
turnin The Nokhud Offensive: The Final Ancestor##66690 |goto 41.64,56.75
step
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"	|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"			|only if not (achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)",{
author="support@zygorguides.com",
},[[
step
talk Masud the Wise##185599
turnin Azure Span##72268 |goto Ohn'ahran Plains/0 71.66,80.58
|only if haveq(72268) or completedq(72268)
step
talk Merithra##188181
accept Into the Azure##66340 |goto 22.14,50.98
|only if not achieved(16363)
step
talk Masud the Wise##185599
turnin Into the Azure##66340 |goto 71.66,80.58 |only if haveq(66340) or completedq(66340)
accept To the Azure Span##65686 |goto 71.66,80.58
step
talk Glania of the Blessed Ones##185603
turnin To the Azure Span##65686 |goto The Azure Span/0 41.44,35.61
accept Camp Antonidas##66228 |goto The Azure Span/0 41.44,35.61 |only if not Dracthyr
step
talk Scalecommander Emberthal##197023
accept Shades of Blue##70746 |goto 41.45,35.90
|only if Dracthyr
step
talk Khuri##185608
accept Some Good Fishing##66227 |goto 41.46,35.63
step
talk Khuri##185608
Learn the Fishing Skill from Khuri |q 66227/1 |goto 41.46,35.63
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
Fish #3# Blue-Tailed Minnows |q 66227/3 |goto 41.35,35.56
step
talk Khuri##185608
turnin Some Good Fishing##66227 |goto 41.46,35.63
step
talk Miva Star-Eye##192750
accept Arcane Detection##67174 |goto 41.22,35.88
step
click Unassuming Flask
|tip It looks like a small brown sack on the ground.
Examine the Unassuming Flask |q 67174/1 |goto 41.39,35.70
step
click Dusty Teapot
|tip It looks like a white pot with a spout.
|tip Inside the leather basket.
Examine the Dusty Teapot |q 67174/2 |goto 41.41,35.84
step
click Toolk's Toy Boat
|tip It looks like a small ship made out of bones.
Confiscate Toolk's Toy Boat |q 67174/3 |goto 41.23,36.39
step
talk Miva Star-Eye##192750
turnin Arcane Detection##67174 |goto 41.22,35.88
accept How To Stop An Exploding Toy Boat##67175 |goto 41.22,35.88
step
talk Julk##192751
Tell her _"Your daughter ran off with a dangerous... boat. We need to either take it or dispel its magics."_
Watch the dialogue
Speak to Julk |q 67175/1 |goto 41.20,35.86
step
click Wand of Dispelling
|tip It looks like a staff with a pointed blue gem at the top of it.
|tip On the table.
collect Miva's Dispelling Wand##194900 |q 67175/2 |goto 41.19,35.90
step
click Unstable Toy Boat
|tip It looks like a small ship made out of bones.
Dispel the Arcane Magic from the Toy Boat |q 67175/3 |goto 40.59,36.56
step
talk Miva Star-Eye##192750
turnin How To Stop An Exploding Toy Boat##67175 |goto 41.22,35.88
step
Meet Emberthal and Telash Outside of Camp Antonidas |q 70746/1 |goto 45.60,41.29
|only if Dracthyr
step
talk Scalecommander Emberthal##197023
turnin Shades of Blue##70746 |goto 45.61,41.25
|only if Dracthyr
step
Watch the dialogue
talk Telash Greywing##197025
accept The Azure Wizard##70747 |goto 45.65,41.27
|only if Dracthyr
step
talk Archmage Khadgar##192091
Ask him _"Do you serve the blue dragonflight?"_
Talk to Khadgar |q 70747/1 |goto 46.64,40.19
|only if Dracthyr
step
talk Archmage Khadgar##192091
turnin The Azure Wizard##70747 |goto 46.64,40.19
|only if Dracthyr
step
talk Noriko the All-Remembering##183543
turnin Camp Antonidas##66228 |goto 46.64,40.16
|only if not Dracthyr
step
talk Noriko the All-Remembering##183543
accept Assemble the Defenses##67033 |goto 46.69,39.77
step
talk Althanus##192222
accept Preservation of Knowledge##67035 |goto 46.67,39.73
step
talk Steward Argalos##189116
fpath Camp Antonidas |goto 46.71,39.56
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto 46.14,39.34 |count 1
step
click Discarded Book
|tip It looks like an open book.
|tip On the step of the wagon.
Retrieve the Collection of Tomes |q 67035/1 |goto 46.12,39.22 |count 1
step
click Discarded Book
|tip It looks like an open book.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto 46.11,38.51 |count 2
step
click Discarded Book
|tip It looks like an open book.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto 46.00,38.37 |count 3
step
click Discarded Book
|tip It looks like an open book.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto 45.87,38.45 |count 4
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto 45.86,40.17 |count 2
step
click Broken Arcane Device
|tip Inside the crumbled building.
collect Broken Arcane Device##194512 |q 67033/1 |goto 46.06,40.81 |count 3
step
talk Althanus##192222
turnin Preservation of Knowledge##67035 |goto 46.67,39.74
step
talk Noriko the All-Remembering##183543
turnin Assemble the Defenses##67033 |goto 46.69,39.77
accept Wrath of the Kirin Tor##67036 |goto 46.69,39.77
step
click Arcane Blaster
Control the Arcane Blaster |invehicle |goto 46.31,38.85 |q 67036
step
kill Proto-Drake##197693+
|tip They look like dragons flying in the air nearby to the east.
|tip Use the ability on your action bar.
Watch the dialogue
Repel the Primalist Army |q 67036/1 |goto 46.31,38.85
step
talk Noriko the All-Remembering##183543
turnin Wrath of the Kirin Tor##67036 |goto 46.64,40.16
step
talk Archmage Khadgar##192091
|tip He runs to this location.
accept Meeting Kalecgos##65688 |goto 46.64,40.19
step
talk Custodian Vernagos##189208
|tip Inside the crumbled building.
accept Tending the Forge##66523 |goto 46.12,40.99
stickystart "Collect_Hornswog_Hide_Scraps"
stickystart "Collect_Formant_Embercones"
step
talk Caddy Scattershot##190001
accept Path to Nowhere##66671 |goto 45.69,39.78
step
click WANTED: Frigellus
|tip It looks like a piece of paper pinned to a rock.
accept WANTED: Frigellus##66488 |goto 46.16,39.62
step
clicknpc Supply Portal##188915
Tell it _"Khadgar said you have something that could help me aid Kalecgos."_
Watch the dialogue
Request a Bag of Helpful Goods |q 65688/1 |goto 45.99,38.79
step
click Bag of Helpful Goods
Recover the Bag of Helpful Goods |q 65688/2 |goto 45.95,38.89
stickystart "Collect_Frozen_Cores"
step
kill Frigellus##189217 |q 66488/1 |goto 47.99,38.09
|tip He looks like a large ice elemental.
step
label "Collect_Frozen_Cores"
kill Calving Elemental##189312+
|tip They look like small ice elementals around this area.
|tip They can also be underwater.
collect 4 Frozen Core##192474 |q 66523/1 |goto 47.48,38.04
step
talk Custodian Cynegos##189952
|tip Inside the building.
turnin WANTED: Frigellus##66488 |goto 46.01,38.31
step
talk Arch Enchanter Celeste##192335
|tip Inside the building.
accept Setting the Defense##66489 |goto 45.99,38.41
step
use the Arch Instructor's Wand##192471
|tip Use it on Azure Defenders.
|tip They look like armored blue dragon people around this area.
Empower #6# Azure Defenders |q 66489/1 |goto 46.19,38.94
step
talk Arch Enchanter Celeste##192335
|tip Inside the building.
turnin Setting the Defense##66489 |goto 45.99,38.41
step
label "Collect_Hornswog_Hide_Scraps"
kill Encroaching Hornswog##189314+
|tip They look like large blue frogs with horns around this area.
collect 8 Hornswog Hide Scraps##192473 |q 66523/2 |goto 46.61,41.60
You can find more around: |notinsticky
[45.50,40.81]
[45.32,39.62]
step
label "Collect_Formant_Embercones"
click Dormant Embercone+
|tip They look like brown pine cones on the ground around this area.
collect 12 Dormant Embercone##192776 |q 66523/3 |goto 46.61,41.60
You can find more around: |notinsticky
[45.50,40.81]
[45.32,39.62]
step
talk Custodian Vernagos##189208
|tip Inside the crumbled building.
turnin Tending the Forge##66523 |goto 46.12,40.99
step
clicknpc Supply Portal##188915
accept Send It!##66493 |goto 45.99,38.79
step
clicknpc Supply Portal##188915
Tell it _"I'm ready to deliver mail!"_
Talk to the Supply Portal |q 66493/1 |goto 45.99,38.79
step
Deliver #14# Packages |q 66493/2 |goto 46.25,39.50
|tip Use the "Throw Mail" ability on Kirin Tor Apprentices.
|tip It appears as a button on the screen.
|tip They look like various humanoid NPCs wearing purple robes around this area.
|tip They will appear on your minimap as yellow dots.
step
clicknpc Supply Portal##188915
turnin Send It!##66493 |goto 45.99,38.79
step
talk Ruriq##186157
accept Mammoths Matter##65914 |goto 44.78,50.62
accept Culling the Cullers##65925 |goto 44.78,50.62
stickystart "Kill_Vicious_Ice_Slitherers"
stickystart "Collect_Ontuq_Hide_Scraps_And_Ontuq_Tusks"
step
kill 3 Vicious Ice Borer##186392 |q 65925/2 |goto 47.47,51.31
|tip They look like larger centipedes standing upright.
step
label "Kill_Vicious_Ice_Slitherers"
kill 10 Vicious Ice Slitherer##186391 |q 65925/1 |goto 47.47,51.31
|tip They look like smaller centipedes standing upright.
step
label "Collect_Ontuq_Hide_Scraps_And_Ontuq_Tusks"
click On'tuq Mammoth Matriarch+
|tip They look like larger dead mammoths.
|tip Only the matriarchs will drop the tusks.
click On'tuq Mammoth+
|tip They look like smaller dead mammoths.
collect 5 On'tuq Tusk##191092 |q 65914/2 |goto 47.47,51.31
collect 7 On'tuq Hide Scraps##191091 |q 65914/1 |goto 47.47,51.31
step
talk Ruriq##186157
turnin Mammoths Matter##65914 |goto 45.42,54.17
turnin Culling the Cullers##65925 |goto 45.42,54.17
accept Tackling the Falls##65926 |goto 45.42,54.17
step
click The Fallstrider
|tip It looks like a boat.
Help Ruriq |q 65926/1 |goto 45.39,54.13
step
talk Kauj##186386
turnin Tackling the Falls##65926 |goto 45.51,54.18
accept The Gleamfisher##66724 |goto 45.51,54.18
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto 44.92,53.77 |count 1
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto 45.17,54.91 |count 2
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto 45.16,54.95 |count 3
step
click Offering Basket
Watch the dialogue
Place the Gleamfish in the Basket |q 66724/2 |goto 45.48,54.19
step
talk Ruriq##186157
turnin The Gleamfisher##66724 |goto 45.45,54.17
accept Ice Breakers##65929 |goto 45.45,54.17
step
talk Kauj##186386
accept Wayward Winds##65928 |goto 45.51,54.18
stickystart "Collect_Restless_Motes"
step
clicknpc Freezing Water##186398+
|tip They look like water elementals frozen in blocks of ice.
|tip They will appear on your minimap as yellow dots.
|tip You may be attacked.
Thaw #5# Freezing Waters |q 65929/1 |goto 46.65,57.75
step
label "Collect_Restless_Motes"
Kill Restless enemies around this area
|tip They look like air elementals.
collect 10 Restless Mote##191199 |q 65928/1 |goto 46.65,57.45
step
talk Ruriq##186157
turnin Ice Breakers##65929 |goto 45.45,54.17
step
talk Kauj##186386
turnin Wayward Winds##65928 |goto 45.51,54.18
accept A Wrestle of Wind and Water##65930 |goto 45.51,54.18
step
Enter the cave at the bottom of the waterfall |goto 45.52,57.03 < 15 |walk
kill Kraunot##186401
|tip He will eventually surrender.
|tip Inside the cave.
Challenge the Spirits |q 65930/1 |goto 45.60,57.62
step
talk Ruriq##186157
turnin A Wrestle of Wind and Water##65930 |goto 45.00,54.03
accept Ruriq's River Rapids Ride##66155 |goto 45.00,54.03
step
clicknpc The Fallstrider##190067
|tip It looks like a boat.
Begin Riding on the Fallstrider |invehicle |goto 44.92,54.10 |q 66155
step
_As You Ride on the Boat:_
|tip Use the abilities on your action bar on the fish in the water.
Catch #10# Fish on The Fallstrider |q 66155/1
step
Watch the dialogue
Ride the River with Ruriq |outvehicle |goto 34.31,52.47 |q 66155 |notravel
step
Watch the dialogue
talk Ruriq##190287
|tip He walks to this location.
turnin Ruriq's River Rapids Ride##66155 |goto 34.27,52.34
step
Enter the building |goto 41.01,55.04 < 10 |walk
talk Kalecgos##185615
|tip Inside the building.
turnin Meeting Kalecgos##65688 |goto 40.92,55.00
accept The Many Images of Kalecgos##65689 |goto 40.92,55.00
step
click Crystal Pylon
|tip You will fly up to the platform nearby.
Use the Crystal Pylon |q 65689/1 |goto 41.15,55.41
step
Reach the Azure Archives |q 65689/2 |goto 41.16,57.81
step
talk Kalecgos##185622
turnin The Many Images of Kalecgos##65689 |goto 40.74,59.04
accept Driven Mad##65702 |goto 40.74,59.04
step
talk Kalecgos##185623
accept Arcane Pruning##65709 |goto 40.69,59.10
step
use the Bag of Helpful Goods##191953
collect Ley Scepter##191952 |q 65709/1
stickystart "Collect_Unstable_Arcane"
step
use the Ley Scepter##191952
|tip It may take a moment for the quest goal to complete.
Repair the North Arcane Field |q 65709/2 |goto 39.58,60.27
step
use the Ley Scepter##191952
|tip It may take a moment for the quest goal to complete.
Repair the East Arcane Field |q 65709/3 |goto 41.19,62.27
step
label "Collect_Unstable_Arcane"
Kill enemies around this area
collect 50 Unstable Arcana##190769 |q 65702/1 |goto 40.33,61.03
step
talk Kalecgos##185623
turnin Arcane Pruning##65709 |goto 40.69,59.10
step
talk Kalecgos##185622
turnin Driven Mad##65702 |goto 40.74,59.04
accept Straight to the Top##65852 |goto 40.74,59.04
step
use Bag of Helpful Goods##191978
collect Arcane Stepping Stone##191979 |q 65852/1 |goto 39.58,60.27
step
extraaction Arcane Stepping Stone##378026
|tip Use the "Arcane Stepping Stone" ability.
|tip It appears as a button on the screen.
|tip You will fly to the top of the floating platforms nearby.
Reach the Azure Archives Apex |q 65852/2 |goto 39.58,60.27
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Straight to the Top##65852 |goto 39.97,61.46
accept Platform Adjustments##65751 |goto 39.97,61.46
accept Arcane Annoyances##65752 |goto 39.97,61.46
stickystart "Kill_Feasting_Wyrms"
step
click Unstable Arcane Energy
|tip It looks like a portal spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto 39.51,61.51 |count 1
step
click Unstable Arcane Energy
|tip It looks like a portal spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto 39.58,62.71 |count 2
step
click Unstable Arcane Energy
|tip It looks like a portal spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto 40.23,62.03 |count 3
step
label "Kill_Feasting_Wyrms"
use the Arcane Hook##194891
|tip Use it on Feasting Wyrms.
|tip They look like flying purple dragons with no arms or legs around this area.
|tip On the highest floating platform. |notinsticky
kill 6 Feasting Wyrm##192739 |q 65752/1 |goto 39.90,61.69
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Platform Adjustments##65751 |goto 39.97,61.46
turnin Arcane Annoyances##65752 |goto 39.97,61.46
accept Reclaiming the Oathstone##65854 |goto 39.97,61.46
step
talk Kalecgos##186187
|tip On the ground.
Tell him _"I'm ready to see you reclaim the Azure Oathstone."_
Reclaim the Oathstone |q 65854/1 |goto 39.44,63.18
step
talk Sindragosa##186188
turnin Reclaiming the Oathstone##65854 |goto 39.48,63.07
accept Aiding Azure Span##65855 |goto 39.48,63.07
step
talk Arc Tel XVII##189459
fpath Azure Archives |goto 37.06,60.82
step
talk Arc Tel XVII##189459
Speak to the Flightmaster |q 65855/1 |goto 37.06,60.82
step
talk Lilial Dawnburst##185778
|tip On the ground.
accept Eight-Legged Menace##65750 |goto 51.73,61.98
accept Icy Webs##65769 |goto 51.73,61.98
stickystart "Free_Cocooned_Survivors"
stickystart "Slay_Shiverweb_Creepers_Or_Shiverweb_Crawlers"
step
kill 3 Primalist Tender##186111 |q 65750/2 |goto 50.58,60.58
|tip They look like humanoids.
step
label "Free_Cocooned_Survivors"
clicknpc Cocooned Survivor##186222+
|tip They look like large white squirming cocoons on the ground around this area.
Free #6# Cocooned Survivors |q 65769/1 |goto 50.58,60.58
step
label "Slay_Shiverweb_Creepers_Or_Shiverweb_Crawlers"
Kill Shiverweb enemies around this area
|tip They look like spiders.
Slay #10# Shiverweb Creepers or Shiverweb Crawlers |q 65750/1 |goto 50.58,60.58
step
talk Lilial Dawnburst##185778
turnin Eight-Legged Menace##65750 |goto 51.73,61.98
turnin Icy Webs##65769 |goto 51.73,61.98
accept Grungir the Explorer##65758 |goto 51.73,61.98
step
talk Grungir Ironspout##185806
turnin Grungir the Explorer##65758 |goto 48.99,64.22
accept Dwarven Antifreeze##65832 |goto 48.99,64.22
accept Primalist Tampering##65833 |goto 48.99,64.22
stickystart "Collect_Flasks_Of_Dwarven_Antifreeze"
step
kill Frostcaller Sin'tia##186922
collect Sin'tia's Runestone##191136 |q 65833/3 |goto 49.05,66.03
step
kill Frostcaller Nai'jin##186921
|tip Inside the cavern.
collect Nai'jin's Runestone##191135 |q 65833/2 |goto 47.60,64.63
step
kill Frostcaller Julh'ek##186923
collect Julh'ek's Runestone##191137 |q 65833/1 |goto 47.66,62.40
step
label "Collect_Flasks_Of_Dwarven_Antifreeze"
Kill enemies around this area
|tip The ice elementals will not drop the quest item.
collect 6 Flask of Dwarven Antifreeze##191042 |q 65832/1 |goto 49.08,63.73
step
talk Grungir Ironspout##185806
turnin Dwarven Antifreeze##65832 |goto 48.99,64.22
turnin Primalist Tampering##65833 |goto 48.99,64.22
accept Kill the Queen##65834 |goto 48.99,64.22
step
use the Spider Squasher##191044
|tip Use it on the Shiverweb Queen, it will damage her greatly.
|tip She looks like a large blue spider.
|tip Upstairs inside the cavern.
|tip She is elite, but you should be able to kill her pretty easily with the help of the quest item.
|tip The quest item will only damage her one time, so you can't use it repeatedly.
kill Shiverweb Queen##186064 |q 65834/1 |goto 47.23,65.57
step
talk Grungir Ironspout##185806
turnin Kill the Queen##65834 |goto 48.99,64.22
step
talk Noriko the All-Remembering##183543
turnin Aiding Azure Span##65855 |goto 46.64,40.16
accept Ask the Locals##66699 |goto 46.64,40.16
accept Suspiciously Quiet##69904 |goto 46.64,40.16
step
talk Althanus##192222
accept Supporting the Cobalt Assembly##72784 |goto 46.65,40.13
step
talk Apprentice Scrumpy##189198
Find the Apprentices |q 69904/1 |goto 47.67,40.23
step
talk Apprentice Scrumpy##189198
turnin Suspiciously Quiet##69904 |goto 47.67,40.23
accept Ways of Seeing##66500 |goto 47.67,40.23
step
click Lingering Image
|tip It looks like a purple rune symbol on the wall.
|tip Inside the building.
Choose _"Close your eyes and listen."_
Investigate the Mosaic |q 66500/1 |goto 47.78,39.99
step
talk Korrikunit the Whalebringer##190229
Ask him _"Do you know of any ley lines in the area?"_
Consult Korrikunit |q 66699/1 |goto 46.76,38.59
step
talk Jokomuupat##190226
Tell her _"I'm looking for pockets of concentrated magic in the Azure Span."_
Consult Jokomuupat |q 66699/2 |goto 46.34,38.15
step
click Lingering Image
|tip It looks like a purple rune symbol on the column.
|tip Inside the building.
Choose _"Close your eyes and listen."_
Investigate the Pavilion |q 66500/4 |goto 46.02,38.64
step
talk Babunituk##190225
Tell him _"I'm looking for crystals. Purple crystals. In caves."_
Consult Babunituk |q 66699/3 |goto 45.72,38.84
step
talk Babunituk##190225
turnin Ask the Locals##66699 |goto 45.72,38.84
accept Catch the Caravan##65864 |goto 45.72,38.84
step
click Lingering Image
|tip It looks like a purple rune symbol on the wall.
|tip Inside the crumbled building.
Choose _"Close your eyes and listen."_
Investigate the Workshop |q 66500/3 |goto 46.03,40.98
step
click Lingering Image
|tip It looks like a purple rune symbol on the wall.
|tip Inside the building.
Choose _"Close your eyes and listen."_
Investigate the Tower |q 66500/2 |goto 47.13,40.38
step
talk Apprentice Scrumpy##189198
|tip Outside the building.
turnin Ways of Seeing##66500 |goto 47.67,40.23
step
talk Noriko the All-Remembering##183543
accept For The Love of Others##66503 |goto 46.64,40.16
step
talk Noriko the All-Remembering##183543
Ask her _"Can you send me to the top of the tower?"_
Talk to Noriko |q 66503/1 |goto 46.64,40.16
step
click Ancient Remains
|tip It looks like a small pile of bones.
|tip At the top of the crumbled tower.
Investigate the Ancient Remains |q 66503/2 |goto 47.13,40.30
step
kill Echo of Loss##190259 |q 66503/3 |goto 46.99,40.41
|tip It looks like a dragon ghost.
|tip It walks around this area.
|tip Upstairs in the crumbled tower, on the middle floor.
step
talk Noriko the All-Remembering##183543
turnin For The Love of Others##66503 |goto 46.64,40.16
step
talk Brena##186224
Tell her _"You must be Brena. I..."_
Find Brena |q 65864/1 |goto 35.25,36.98
step
Watch the dialogue
talk Brena##186224
turnin Catch the Caravan##65864 |goto 35.25,36.98
step
talk Elder Poa##188809
accept Those Aren't for Chewing##65868 |goto 35.37,36.94
step
Watch the dialogue
talk Brena##191810
accept Howling in the Big Tree Hills##65867 |goto 35.28,36.94
accept Snap the Traps##65866 |goto 35.28,36.94
stickystart "Spring_Traps"
stickystart "Collect_Funerary_Offerings"
step
kill Hyenamaster Durgun##186515 |q 65867/1 |goto 35.66,34.72
step
Enter the cave |goto 34.94,32.63 < 15 |walk
kill Trap-Layer Kerwal##186516 |q 65867/2 |goto 34.99,32.04
|tip Inside the cave.
step
Leave the cave |goto 34.94,32.63 < 15 |walk |only if subzone("Big Tree Hills") and _G.IsIndoors()
kill Bakra the Bully##186517 |q 65867/3 |goto 33.95,33.18
step
label "Spring_Traps"
click Bladejaw Trap+
|tip They look like silver metal bear traps on the ground around this area.
Spring #8# Traps |q 65866/1 |goto 34.75,34.50
step
label "Collect_Funerary_Offerings"
Kill enemies around this area
|tip Some of them are stealthed.
Collect #12# Funerary Offerings |q 65868/1 |goto 35.02,33.92
step
talk Hanu##186618
turnin Snap the Traps##65866 |goto 34.27,31.29
turnin Howling in the Big Tree Hills##65867 |goto 34.27,31.29
turnin Those Aren't for Chewing##65868 |goto 34.27,31.29
step
Watch the dialogue
talk Hanu##189642
|tip He runs to this location.
accept Gnoll Way Out##65871 |goto 34.42,31.11
step
talk Brena##186228
accept Ill Gnolls With Ill Intent##65872 |goto 34.37,31.02
accept Leader of the Shadepaw Pack##65873 |goto 34.37,31.02
step
talk Elder Poa##189662
accept Supplies!##65870 |goto 34.34,31.00
stickystart "Slay_Shadepaw_Gnolls"
step
Enter the cave |goto 34.02,30.77 < 20 |walk |only if not subzone("Kargpaw's Den")
click Basket of Hunting Game Calls
|tip It looks like a brown leather basket on the ground.
|tip Inside the cave.
collect Hunting Game Calls##192189 |q 65870/3 |goto The Azure Span/1 36.38,93.17
step
click Barrel of Salt
|tip It looks like a brown and tan leather barrel on the ground.
|tip Inside the cave.
|tip You will be attacked.
collect Meat Curing Salts##191111 |q 65870/1 |goto 28.96,75.19
step
click Crude Cage
|tip It looks like a wooden cage.
|tip Inside the cave.
Rescue the Tuskarr |q 65871/1 |goto 30.29,60.43 |count 1
step
clicknpc Norukk##186655
|tip He looks like a walrus person laying on the ground.
|tip Downstairs inside the cave.
Rescue Norukk |q 65871/2 |goto 41.43,63.90
step
click Crude Cage
|tip It looks like a wooden cage.
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto 46.08,41.66 |count 2
step
click Barrel of Skinning Tools
|tip It looks like a brown and tan leather barrel on the ground.
|tip Downstairs inside the cave.
|tip You will be attacked.
collect Skinning Tools##192190 |q 65870/2 |goto 51.56,36.59
step
click Crude Cage
|tip It looks like a wooden cage.
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto 38.09,32.94 |count 3
step
Follow the path down |goto 36.23,30.76 < 20 |walk
kill Kargpaw the Fetid##186660
|tip Downstairs inside the cave.
collect Kargpaw's Totem##191118 |q 65873/1 |goto 41.56,15.40
step
label "Slay_Shadepaw_Gnolls"
Kill Sickly enemies around this area
|tip They look like gnolls.
|tip Inside the cave.
Slay #16# Shadepaw Gnolls |q 65872/1 |goto 44.77,44.12
step
Leave the cave |goto 55.01,84.31 < 15 |walk |only if subzone("Kargpaw's Den")
talk Elder Poa##189662
turnin Supplies!##65870 |goto The Azure Span/0 34.34,31.00
step
talk Brena##186228
turnin Ill Gnolls With Ill Intent##65872 |goto 34.37,31.02
turnin Leader of the Shadepaw Pack##65873 |goto 34.37,31.02
step
talk Hanu##189642
turnin Gnoll Way Out##65871 |goto 34.42,31.10
step
talk Brena##186228
accept Spreading Decay##66239 |goto 34.37,31.02
step
talk Brena##187721
turnin Spreading Decay##66239 |goto 28.69,34.82
accept Another Ambush##65869 |goto 28.69,34.82
step
talk Akiun##187730
Ask him _"Can you tell me what happened?"_
Speak to Akiun |q 65869/1 |goto 28.68,34.75
step
talk Unkimi##194613
accept Falling Water##71233 |goto 28.46,35.11
step
clicknpc Tuskarr Fisherman##190136
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 29.24,33.57 |count 1
step
clicknpc Tuskarr Hunter##190142
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 29.17,32.55 |count 2
step
clicknpc Tuskarr Craftsman##190143
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 28.20,31.86 |count 3
step
clicknpc Festering Gnoll##190074
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 27.97,32.83 |count 4
step
talk Brena##189708
turnin Another Ambush##65869 |goto 28.79,34.74
accept Urgent Action Required##66026 |goto 28.79,34.74
step
talk Illusory Mage##187764
accept A Minor Setback##66261 |goto 21.01,38.91
step
talk Detry Hornswald##187463
|tip Underwater.
turnin A Minor Setback##66261 |goto 22.73,41.67
accept Waste Water Cleanup##66262 |goto 22.73,41.67
step
click Rotting Pile+
|tip They look like piles of brown rocks in the water around this area.
|tip You will be attacked.
kill Muck Elemental##187498+
Deal with #6# Rotting Piles |q 66262/1 |goto 22.73,41.67
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Waste Water Cleanup##66262 |goto 22.73,41.67
accept A Precision Approach##66263 |goto 22.73,41.67
accept Disarmed and Docile##66264 |goto 22.73,41.67
stickystart "Collect_Gnawbone_Armaments"
step
Enter the cave |goto 24.39,39.58 < 30 |walk
kill Flayfist##187505 |q 66263/1 |goto 24.83,39.01
|tip Inside the cave.
step
label "Collect_Gnawbone_Armaments"
Kill Gnawbone enemies around this area
|tip They look like gnolls.
click Gnawbone Weapon Rack+
|tip They look like wooden stands with weapons leaning on them.
collect 15 Gnawbone Armaments##191424 |q 66264/1 |goto 23.48,40.16
step
talk Detry Hornswald##187463
|tip Underwater.
turnin A Precision Approach##66263 |goto 22.73,41.67
turnin Disarmed and Docile##66264 |goto 22.73,41.67
accept Who's Next?##66265 |goto 22.73,41.67
accept Filthy Mongrels##66266 |goto 22.73,41.67
step
talk Illusory Mage##198202
accept M.E.T.A.##66267 |goto 23.46,41.85
stickystart "Kill_Hyena_Matriarchs"
stickystart "Free_Abused_Animals"
stickystart "Kill_Hyena_Mongrels"
step
Enter the cave |goto 24.11,41.95 < 15 |walk
kill Cracktooth##187528 |q 66265/1 |goto 24.22,41.80
|tip Inside the cave.
step
label "Kill_Hyena_Matriarchs"
kill 3 Hyena Matriarch##187566 |q 66266/1 |goto 24.22,42.51
|tip They look like larger brown hyenas around this area.
step
label "Free_Abused_Animals"
Kill Duskpaw enemies around this area
|tip They look like gnolls.
click Gnawed Keys+
|tip They look like small keyrings hanging on buildings and objects around this area.
collect Duskpaw Key##191736+ |n
|tip You need a key to free an animal.
click Various Animals
|tip They look like many different types of animals.
|tip They are friendly, and are dazed.
Free #6# Abused Animals |q 66267/1 |goto 24.22,42.51
step
label "Kill_Hyena_Mongrels"
kill 12 Hyena Mongrel##187565 |q 66266/2 |goto 24.22,42.51
|tip They look like smaller hyenas around this area.
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Who's Next?##66265 |goto 22.73,41.67
turnin Filthy Mongrels##66266 |goto 22.73,41.67
turnin M.E.T.A.##66267 |goto 22.73,41.67
accept Third Try's the Charm##66268 |goto 22.73,41.67
accept Just To Be Sure##66269 |goto 22.73,41.67
stickystart "Slay_Stormfang_Elementalists"
step
Enter the cave |goto 22.26,43.21 < 15 |walk
kill Bloodclaw##187553 |q 66268/1 |goto 22.22,43.76
|tip Inside the cave.
step
label "Slay_Stormfang_Elementalists"
Kill Stormfang enemies around this area
|tip They look like gnolls.
|tip Stormfang Grunts will not count for the quest goal.
Slay #12# Stormfang Elementalists |q 66269/1 |goto 22.65,43.42
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Third Try's the Charm##66268 |goto 22.73,41.67
turnin Just To Be Sure##66269 |goto 22.73,41.67
accept Whack-a-Gnoll##66270 |goto 22.73,41.67
step
Reach the Challengers |q 66270/1 |goto 21.50,41.36
|tip You will be attacked.
step
Watch the dialogue
Kill the enemies that attack
|tip Fill the bar in the quest tracker area.
kill Doomblood##187753
Defeat the Would-be Warlords |q 66270/2 |goto 21.50,41.36
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Whack-a-Gnoll##66270 |goto 22.73,41.67
step
talk Brena##186179
turnin Urgent Action Required##66026 |goto 20.59,35.67
step
Watch the dialogue
talk Kalecgos##187873
|tip He walks to this location.
accept Breaching the Brackenhide##65838 |goto 20.53,35.69
step
click Rotting Root
|tip It looks like a large tree root sticking out of the ground.
Choose _<Cut the root.>_
Investigate the North Area |q 65838/1 |goto 18.40,34.74
step
click Rotting Root
|tip It looks like a large tree root sticking out of the ground.
Choose _<Cut the root.>_
Investigate the South Area |q 65838/2 |goto 18.87,37.01
step
click Rotting Root
|tip It looks like a large tree root sticking out of the ground.
Choose _<Cut the root.>_
Investigate the West Area |q 65838/3 |goto 17.59,36.98
step
talk Kalecgos##187873
turnin Breaching the Brackenhide##65838 |goto 16.75,37.31
accept Ley Litter##65846 |goto 16.75,37.31
step
talk Norukk##186181
accept Cut Out the Rot##65844 |goto 16.76,37.25
step
talk Brena##186179
accept Echoes of the Fallen##65845 |goto 16.75,37.22
stickystart "Kill_Rotting_Treants"
stickystart "Collect_Ley_Crystals"
stickystart "Kill_Brackenhide_Rotflingers"
step
use Brena's Totem##191928
|tip Use it on Kaqiata.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 17.46,37.08 |count 1
step
use Brena's Totem##191928
|tip Use it on Popoak.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 18.13,37.66 |count 2
step
use Brena's Totem##191928
|tip Use it on Lutokk.
|tip He looks like a walrus person laying on the ground.
|tip In the entrance of the cave.
Contact the Spirit |q 65845/1 |goto 18.52,37.27 |count 3
step
use Brena's Totem##191928
|tip Use it on Nomurok.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 17.54,37.93 |count 4
step
use Brena's Totem##191928
|tip Use it on Tuyuki.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 17.41,38.66 |count 5
step
label "Kill_Rotting_Treants"
kill 5 Rotting Treant##186361 |q 65844/1 |goto 17.89,37.71
|tip They look like walking trees around this area.
You can find more inside the cave at [18.56,37.24]
step
label "Collect_Ley_Crystals"
click Gnawed Ley Crystal+
|tip They look like purple crystals on the ground around this area.
collect 7 Ley Crystal##194431 |q 65846/1 |goto 17.78,37.63
step
label "Kill_Brackenhide_Rotflingers"
kill 10 Brackenhide Rotflinger##186362 |q 65844/2 |goto 17.89,37.71
|tip They look like gnolls with animal skulls on their left shoulders.
You can find more inside the cave at [18.56,37.24]
step
talk Brena##186179
turnin Echoes of the Fallen##65845 |goto 16.75,37.22
step
talk Norukk##186181
turnin Cut Out the Rot##65844 |goto 16.76,37.25
step
talk Kalecgos##187873
turnin Ley Litter##65846 |goto 16.75,37.32
accept Tome-ward Bound##65848 |goto 16.75,37.32
step
talk Kalecgos##187873
Tell him _"I'm ready."_
Watch the dialogue
Speak to Kalecgos |q 65848/1 |goto 16.75,37.32
step
clicknpc Tome of Spellflinging##191636
Ride the Tome of Spellflinging |q 65848/2 |goto 16.72,37.30
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto 15.97,38.42 |count 1
|tip It looks like a larger enemy channeling a green spell.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto 15.15,38.04 |count 2
|tip It looks like a larger enemy channeling a green spell.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto 15.65,37.32 |count 3
|tip It looks like a larger enemy channeling a green spell.
|tip Use the abilities on your action bar.
step
Watch the dialogue
|tip Use the ability on your action bar.
kill Twisted Ancient##186194 |q 65848/4 |goto 15.41,37.69
step
Regroup at the Cave |outvehicle |goto 15.16,39.18 |q 65848 |notravel
|tip You will automatically travel into the cave.
step
Watch the dialogue
talk Kalecgos##187873
|tip Inside the cave.
turnin Tome-ward Bound##65848 |goto 15.30,39.43
accept Realignment##65847 |goto 15.30,39.43
step
click Ley Crystal
|tip Inside the cave.
Focus the Ley Line |q 65847/1 |goto 15.36,39.50
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto 15.51,39.30 |count 1
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto 15.30,39.12 |count 2
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto 15.07,39.53 |count 3
step
Leave the cave |goto 15.11,38.85 < 20 |walk |only if subzone("Brackenhide Hollow") and _G.IsIndoors()
talk Kalecgos##186177
|tip Next to the road.
turnin Realignment##65847 |goto 16.11,41.41
step
talk Brena##186179
accept To Iskaara##65849 |goto 16.08,41.45
step
talk Skygazer Paatu##186443
fpath Iskaara |goto 13.29,48.77
step
talk Brena##186480
|tip Inside the building.
turnin To Iskaara##65849 |goto 13.24,49.56
accept Gather the Family##66210 |goto 13.24,49.56
accept Brackenhide Hollow: To the Source##66211 |goto 13.24,49.56
step
talk Murik##193006
accept Community Connections##72435 |goto 13.14,49.26
step
talk Hanu##186186
accept Scampering Scamps##66218 |goto 12.90,48.70
step
talk Norukk##196544
Meet the Drake Scholar |q 72435/4 |goto 12.93,48.62
step
talk Arvik##186449
Meet the Equipment Supplier |q 72435/1 |goto 13.17,48.52
step
talk Tatto##186462
Meet the Mount Supplier |q 72435/3 |goto 13.19,48.82
step
click Decorated Teapot
|tip It looks like a white pot with a spout.
Collect the Funeral Offering |q 66210/1 |goto 13.48,48.57 |count 1
step
talk Auntie Kaunnie##189533
accept Rowie##66558 |goto 13.76,47.61
step
click Handcrafted Boat
|tip It looks like a small ship made out of bones.
Collect the Funeral Offering |q 66210/1 |goto 13.87,49.48 |count 2
step
talk Lukoturukk##193877
accept Fishing: Aileron Seamoth##66212 |goto 14.08,49.45
step
talk Rokkutuk##194059
Meet the Recipe Supplier |q 72435/2 |goto 13.91,50.08
step
talk Rowie##186542
Choose _"<Tell Rowie his mother's final message.>"_
Send Rowie Home |q 66558/1 |goto 16.12,50.42
step
talk Rowie##186542
turnin Rowie##66558 |goto 16.12,50.42
accept Toejam the Terrible##70129 |goto 16.12,50.42
step
Enter the cave |goto 16.24,50.37 < 15 |walk
talk Toejam the Terrible##193733
|tip Upstairs inside the cave.
Tell him _"<Brandish your weapon.>"_
"Slay" Toejam the Terrible |q 70129/1 |goto 16.74,49.32
step
Leave the cave |goto 16.24,50.37 < 15 |walk |only if subzone("The Azure Span") and _G.IsIndoors()
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect 5 Aileron Seamoth##194967 |q 66212/1 |goto 15.65,50.70
step
talk Lukoturukk##193877
turnin Fishing: Aileron Seamoth##66212 |goto 14.07,49.45
step
talk Auntie Kaunnie##189533
turnin Toejam the Terrible##70129 |goto 13.80,49.01
step
talk Lil Ki##186547
|tip He walks around this area.
accept Cooking Utensils##70939 |goto 13.53,48.66 |instant
step
talk Murik##193006
turnin Community Connections##72435 |goto 13.14,49.26
step
Enter the building |goto 12.79,49.34 < 10 |walk |only if not subzone("The Filled Bowl")
talk Elder Nappa##186446
|tip Inside the building.
accept The Weave of a Tale##66213 |goto 12.40,49.41
step
talk Elder Poa##186448
|tip Inside the building.
Tell her _"I have come to tell YOU a tale, Elder."_
|tip Choose any of the dialogue options, it doesn't matter.
Tell a Story |q 66213/1 |goto 12.41,49.34
step
talk Elder Nappa##186446
|tip Inside the building.
turnin The Weave of a Tale##66213 |goto 12.40,49.41
step
click Stone Sculpture
|tip It looks like a small stone walrus head statue.
|tip Inside the building.
Collect the Funeral Offering |q 66210/1 |goto 12.49,49.45 |count 3
step
Leave the building |goto 12.79,49.34 < 10 |walk |only if subzone("The Filled Bowl")
click Ornamented Shield
|tip It looks like a green and gold shield.
Collect the Funeral Offering |q 66210/1 |goto 12.46,50.32 |count 4
step
talk Lukoturukk##193877
accept Nook News##71234 |goto 14.07,49.45
step
click Funeral Boat
Place the Offerings in the Boat |q 66210/2 |goto 13.13,48.57
step
talk Brena##186480
|tip Inside the building.
turnin Gather the Family##66210 |goto 13.24,49.56
step
talk Kalecgos##189793
|tip Inside the building.
accept The Cycle of the Sea##65850 |goto 13.27,49.53
step
talk Brena##186480
|tip Inside the building.
Tell her _"I'm ready to begin the funeral."_
Begin Following Brena |goto 13.24,49.56 > 10 |q 65850
step
Watch the dialogue
|tip Follow Brena as she walks.
|tip She eventually walks to this location.
Speak to Brena |q 65850/1 |goto 12.93,50.43
step
click Funeral Boat
Push the Boat Out to Sea |q 65850/2 |goto 13.16,50.20
step
talk Kalecgos##186177
turnin The Cycle of the Sea##65850 |goto 12.94,50.39
accept Azure Alignment##65911 |goto 12.94,50.39
step
talk Neelo##187674
Choose _"<Ask Neelo what he's doing.>"_
Find Neelo and Nau |q 66218/1 |goto 10.59,46.87
step
Watch the dialogue
talk Neelo##187674
turnin Scampering Scamps##66218 |goto 10.59,46.87
accept Can We Keep It?##66223 |goto 10.59,46.87
step
talk Jinkutuk##193637
buy 7 Frigidfish##192153 |q 66223/1 |goto 13.85,49.48
step
talk Neelo##187674
turnin Can We Keep It?##66223 |goto 10.59,46.87
step
talk Wayun##186212
turnin Nook News##71234 |goto 7.46,44.28
step
talk Mordigan Ironjaw##190691
|tip He walks around this area.
accept A Matter of Taste##66781 |goto 7.61,44.32
step
click Large Stone
collect Large Stone##193052 |q 66781/1 |goto 7.23,45.12
step
talk Mordigan Ironjaw##190691
|tip He walks around this area.
turnin A Matter of Taste##66781 |goto 7.61,44.32
step
talk LOU-C Fitzcog##187198
accept Fishy Fingers##66164 |goto 7.65,44.33
step
talk Examiner Rowe##187136
accept Salivatory Samples##66154 |goto 7.67,44.27
step
talk Aelnara##187156
accept Crystals in the Water##66147 |goto 7.64,44.23
stickystart "Recover_Stolen_Parts"
stickystart "Collect_Saliva_Samples"
step
click Conspicuous Crystal+
|tip They look like large single blue crystals on the ground around this area.
Mine #4# Mysterious Crystals |q 66147/1 |goto 10.20,42.91
step
label "Recover_Stolen_Parts"
click Stolen Parts+
|tip They look like small piles of metal cog wheels on the ground around this area.
Recover #5# Stolen Parts |q 66164/1 |goto 10.11,43.23
step
label "Collect_Saliva_Samples"
Kill Brinetooth enemies around this area
|tip They look like gremlins.
collect 12 Saliva Sample##191202 |q 66154/1 |goto 10.22,43.29
step
talk Aelnara##187156
turnin Crystals in the Water##66147 |goto 7.64,44.23
step
talk Examiner Rowe##187136
turnin Salivatory Samples##66154 |goto 7.67,44.27
step
talk LOU-C Fitzcog##187198
turnin Fishy Fingers##66164 |goto 7.65,44.33
accept Field Experiment##66175 |goto 7.65,44.33
step
click Geoscanner 289-07
Activate the Geoscanner |q 66175/1 |goto 7.64,44.32
step
Watch the dialogue
talk LOU-C Fitzcog##187198
turnin Field Experiment##66175 |goto 7.65,44.33
accept No Dwarf Left Behind##66177 |goto 7.65,44.33
step
talk Wayun##186212
accept Afront 'Till A Salt##66232 |goto 7.46,44.28
stickystart "Collect_Crystal_Flakes"
step
click Mordigan's Field Notes
|tip It looks like a book sitting on a rock.
Find the First Clue |q 66177/1 |goto 9.38,42.53
step
click Mordigan's Flask
|tip It looks like a small bottle sitting on a rock.
Find the Second Clue |q 66177/2 |goto 10.02,41.30
step
click Mordigan's Boots
|tip They look like a small pair of brown boots on the ground.
Find the Third Clue |q 66177/3 |goto 9.93,39.68
step
click Mordigan's Pants
|tip They look like a small pair of brown pants on the ground.
Find the Fourth Clue |q 66177/4 |goto 10.61,41.26
step
talk Aelnara##188030
turnin No Dwarf Left Behind##66177 |goto 10.77,41.18
accept Mad Mordigan & The Crystal King##66187 |goto 10.77,41.18
stickystop "Collect_Crystal_Flakes"
step
Enter the cave |goto 11.01,41.38 < 30 |walk
kill Mordigan Ironjaw##187353
|tip Inside the cave.
|tip He will eventually become friendly.
Decrystallize Mordigan |q 66187/1 |goto 11.19,41.05
step
Leave the cave |goto 11.01,41.38 < 30 |walk |only if subzone("Gorloc Shore") and _G.IsIndoors()
talk Aelnara##188030
turnin Mad Mordigan & The Crystal King##66187 |goto 10.77,41.18
accept Back To Camp##66559 |goto 10.77,41.18
step
label "Collect_Crystal_Flakes"
Kill Brinetooth enemies around this area
|tip They look like gremlins.
collect 120 Crystal Flakes##191309 |q 66232/1 |goto 9.94,41.47
step
talk Examiner Rowe##187136
turnin Back To Camp##66559 |goto 7.67,44.27
step
talk Wayun##186212
turnin Afront 'Till A Salt##66232 |goto 7.46,44.28
step
talk Willa Stronghinge##190315
|tip Inside the building.
turnin Falling Water##71233 |goto 18.73,24.47
accept Nothing for Breakfast##66837 |goto 18.73,24.47
accept It's Cold Up Here##66838 |goto 18.73,24.47
step
talk Zon'Wogi##190892
accept The Great Shokhari##66844 |goto 19.05,23.97
step
talk Bergede Broadchin##190332
fpath Three-Falls Lookout |goto 19.15,23.78
step
talk Modurun Sixtoes##190672
accept It's Brew Time!##66839 |goto 18.99,23.29
step
talk Branor Broadbraw##190884
accept Out of Lukh##66843 |goto 19.26,26.90
step
talk Gnoll Mon-Ark##183997
accept By Royal Decree##65279 |goto 16.20,20.88
step
_Next to you:_
talk Gnoll Mon-Ark
accept Rot Rancher##65306
stickystart "Collect_Smelly_Oozes"
stickystart "Kill_Brackenhide_Warriors"
step
kill 4 Brackenhide Shaman##183957 |q 65279/2 |goto 14.07,20.93
|tip They look like gnolls holding staves.
step
label "Collect_Smelly_Oozes"
click Rotting Sap+
|tip They look like large yellow ooze dripping from objects around this area.
kill Errant Rot##184011+
|tip They look like small oozes on the ground around this area.
collect 20 Smelly Ooze##189183 |q 65306/1 |goto 13.93,20.80
step
_Next to you:_
talk Gnoll Mon-Ark
turnin Rot Rancher##65306
step
label "Kill_Brackenhide_Warriors"
kill 8 Brackenhide Warrior##183956 |q 65279/1 |goto 15.20,20.69
|tip They look like gnolls holding maces.
step
_Next to you:_
talk Gnoll Mon-Ark
turnin By Royal Decree##65279
accept Keys to the Kingdom##65302
step
click Royal Key
|tip It looks like a small key on the ground.
|tip You will be attacked.
collect Sticky Gnoll Key##188959 |q 65302/1 |goto 13.83,21.92
step
click Royal Coffers
|tip It looks like a wooden barrel.
|tip Inside the tree.
Open the Locked Barrel |q 65302/2 |goto 14.56,20.60
step
Reach the River Bank |q 65302/3 |goto 15.74,19.17
step
talk Gnoll Mon-Ark##183997
|tip He runs to this location.
turnin Keys to the Kingdom##65302 |goto 15.74,19.17
accept Making a Mountain Out of a Gnoll Hill##65594 |goto 15.74,19.17
step
clicknpc Purified Slime##189840
Hop on Your Slime Mount |q 65594/1 |goto 15.71,19.27
step
kill Decay Totem##186137
|tip Use the "Lunge" ability on your action bar.
Destroy the Decay Totem |q 65594/2 |goto 15.93,19.67 |count 1
step
kill Decay Totem##186137
|tip Use the "Lunge" ability on your action bar.
Destroy the Decay Totem |q 65594/2 |goto 15.52,20.70 |count 2
step
kill Decay Totem##186137
|tip Use the "Lunge" ability on your action bar.
Destroy the Decay Totem |q 65594/2 |goto 13.90,20.89 |count 3
step
Go to the Top of the Hill |q 65594/3 |goto 12.86,22.01
step
talk Gnoll Mon-Ark##183997
turnin Making a Mountain Out of a Gnoll Hill##65594 |goto 12.86,22.01
accept One Bad Apple##65595 |goto 12.86,22.01
step
Enter the Cave |q 65595/1 |goto 12.95,22.78
|tip Inside the cave.
step
click Meat Storage
|tip Inside the cave.
kill "Friendly" Gnoll##189953
Open the First Cage |q 65595/2 |goto 12.95,22.78
step
click Meat Storage
|tip Inside the cave.
kill "Friendly" Gnoll##189981
Open the Second Cage |q 65595/3 |goto 12.90,22.77
step
talk Friendly Gnoll##189979
|tip Inside a wooden cage.
|tip Inside the cave.
Ask him _"If I open this cage, will you try to eat me?"_
Consult the Third Gnoll |q 65595/4 |goto 12.86,22.75
step
click Rotting Root
|tip Run away from it after clicking it.
|tip Inside the cave.
Pull the Vine |q 65595/5 |goto 12.99,22.71
step
kill Root of Decay##185326 |q 65595/6 |goto 13.02,22.71
|tip Inside the cave.
step
_Next to you:_
talk Gnoll Mon-Ark
turnin One Bad Apple##65595
step
Leave the cave |goto 12.92,22.10 < 15 |walk |only if subzone("Creektooth Den") and _G.IsIndoors()
kill Sky Vixen Shokhari##190761 |q 66844/1 |goto 13.33,26.37
|tip She looks like a large brown wolf dragon.
|tip She runs around this area.
step
Enter the cave |goto 15.86,27.39 < 15 |walk
kill Gloomfur Sasquatch##190723
|tip Inside the cave.
Watch the dialogue
Find Lukh |q 66843/1 |goto 15.49,27.63
stickystart "Collect_Vorquin_Meat"
step
kill Striped Bruffalon##190726+
|tip They look like buffalo with antlers around this area.
collect 3 Moose Flank##194030 |q 66837/2 |goto 17.48,26.62
step
label "Collect_Vorquin_Meat"
Kill Vorquin enemies around this area
|tip They look like horses with antlers and spikes on their backs.
collect 8 Vorquin Meat##193219 |q 66837/1 |goto 17.48,26.62
step
talk Branor Broadbraw##190884
turnin Out of Lukh##66843 |goto 19.26,26.90
stickystart "Collect_Fruits_Berries_And_Herbs"
step
Kill Thickmane enemies around this area
|tip They look like bears.
collect 7 Thick Bear Pelt##193220 |q 66838/1 |goto 21.79,26.76
step
label "Collect_Fruits_Berries_And_Herbs"
click Bronze Horn+
|tip They look like small green plants with orange stems growing out of the top of them.
click Dragon Foil+
|tip They look like small green plants with blue stems growing out of the top of them.
click Blood Berries+
|tip They look like small red bushes.
Collect Fruits, Berries, and Herbs |q 66839/1 |goto 21.79,26.76
|tip Fill up the bar in the quest tracker area.
step
talk Willa Stronghinge##190315
|tip Inside the building.
turnin Nothing for Breakfast##66837 |goto 18.73,24.47
turnin It's Cold Up Here##66838 |goto 18.73,24.47
step
talk Zon'Wogi##190892
turnin The Great Shokhari##66844 |goto 19.05,23.97
step
talk Modurun Sixtoes##190672
turnin It's Brew Time!##66839 |goto 18.99,23.29
step
talk Manny Read##190679
accept Water Safety##66840 |goto 18.54,23.67
step
use the Water Testing Flask##193569
|tip At the bottom of the waterfall.
Collect the Waterfall Sample |q 66840/1 |goto 17.30,23.20 |count 1
step
talk Gannar Fullpack##190666
accept A Shard of the Past##66841 |goto 19.16,24.73
step
use the Water Testing Flask##193569
|tip At the bottom of the waterfall.
Collect the Waterfall Sample |q 66840/1 |goto 19.39,23.95 |count 2
step
use the Water Testing Flask##193569
|tip At the bottom of the waterfall.
|tip You will be attacked.
Collect the Waterfall Sample |q 66840/1 |goto 20.00,24.18 |count 3
step
click Ancient Artifact
|tip It looks like a small drum.
|tip On a rock at the top of the waterfall.
|tip The water will try to sweep you away, so try to land on the rock, or fight against the water current and jump onto it.
collect Ancient Artifact##193382 |q 66841/1 |goto 17.61,28.24
step
talk Manny Read##190679
turnin Water Safety##66840 |goto 18.54,23.67
step
talk Thanessa Silverbloom##190652
turnin A Shard of the Past##66841 |goto 18.65,23.67
step
talk Guo-Hee Calmwater##190799
|tip Inside the building.
accept Legendary Foil##66845 |goto 18.74,24.43
step
kill Mysterious Apparition##190765
|tip It looks like a blue dragon person ghost.
|tip It walks around this area.
|tip It will eventually surrender.
Return the Legendary Foil Card |q 66845/1 |goto 17.29,26.14
step
talk Guo-Hee Calmwater##190799
|tip Inside the building.
turnin Legendary Foil##66845 |goto 18.74,24.43
step
talk Mysterious Apparition##191741
|tip Inside the building.
accept The Heart of the Deck##66846 |goto 18.77,24.43
step
talk Mysterious Apparition##191741
|tip Inside the building.
Tell it _"I am ready to craft the card with you."_
|tip Choose any of the dialogue options, it doesn't matter.
Watch the dialogue
Craft a New Card |q 66846/1 |goto 18.77,24.43
step
talk Mysterious Apparition##191741
|tip Inside the building.
turnin The Heart of the Deck##66846 |goto 18.77,24.43
step
talk Sindragosa##186188
accept The Azure Vaults##71155 |goto 39.48,63.07
|only if level >= 70
step
talk Kalecgos##186280
turnin Azure Alignment##65911 |goto 39.48,63.02
accept Calling the Blue Dragons##66027 |goto 39.48,63.02
step
talk Kalecgos##186280
Tell him _"I'm ready to see you call back the blue dragonflight."_
Speak to Kalecgos |q 66027/1 |goto 39.48,63.02
step
talk Kalecgos##186280
turnin Calling the Blue Dragons##66027 |goto 39.48,63.02
accept To Rhonin's Shield##65886 |goto 39.48,63.02
step
talk Heleth the Wise##197100
|tip On the balcony at the top of the tower.
accept Help Is Our Way!##71094 |goto 46.41,25.68
step
click First-Aid Kit
|tip It looks like a wooden box on a stone bench.
|tip At the top of the tower.
collect Salve-Soaked Bandages##200514 |q 71094/1 |goto 45.72,25.85
step
clicknpc Venderthvan##197113
|tip On the balcony at the top of the tower.
Heal Venderthvan |q 71094/3 |goto 46.43,25.68
step
Watch the dialogue
talk Heleth the Wise##197100
|tip He runs to this location.
|tip At the top of the tower.
turnin Help Is Our Way!##71094 |goto 45.90,25.98
accept A Claw in Need##71095 |goto 45.90,25.98
step
talk Venderthvan##197201
|tip Choose any of the dialogue options, it doesn't matter.
|tip At the top of the tower.
Speak with Venderthvan |q 71095/1 |goto 45.94,25.97
step
click Dusty Jar
|tip It looks like a blue glass jar at the top of the bookshelf.
|tip At the top of the tower.
Choose _<Take the jar.>_
Find the Artifact |q 71095/2 |goto 45.80,25.57
step
talk Venderthvan##197201
|tip At the top of the tower.
turnin A Claw in Need##71095 |goto 45.94,25.97
accept Is A Claw Indeed##71096 |goto 45.94,25.97
step
Activate the Artifact |q 71096/1 |goto 45.94,25.97
|tip Use the "Shake Jar" ability.
|tip It appears as a button on the screen.
|tip At the top of the tower.
step
Draw the Rune |q 71096/2 |goto 45.93,25.77
|tip Trace the rune by running on the pink lines on the ground.
|tip At the top of the tower.
step
Draw the Rune |q 71096/3 |goto 46.01,25.33 |count 1
|tip Use the "Shake Jar" ability.
|tip It appears as a button on the screen.
|tip A rune will appear on the ground.
|tip Trace the rune by running on the pink lines on the ground.
|tip At the top of the tower.
step
Draw the Rune |q 71096/3 |goto 45.54,25.77 |count 2
|tip Use the "Shake Jar" ability.
|tip It appears as a button on the screen.
|tip A rune will appear on the ground.
|tip Trace the rune by running on the pink lines on the ground.
|tip At the top of the tower.
step
Draw the Rune |q 71096/3 |goto 46.00,26.12 |count 3
|tip Use the "Shake Jar" ability.
|tip It appears as a button on the screen.
|tip A rune will appear on the ground.
|tip Trace the rune by running on the pink lines on the ground.
|tip At the top of the tower.
step
talk Venderthvan##197201
|tip At the top of the tower.
turnin Is A Claw Indeed##71096 |goto 45.94,25.97
accept A Helping Claw##71097 |goto 45.94,25.97
step
Watch the dialogue
|tip Use the "Shake Jar" ability.
|tip It appears as a button on the screen.
|tip At the top of the tower.
Activate the Artifact |q 71097/1 |goto 45.94,25.97
step
talk Venderthvan##197201
|tip At the top of the tower.
turnin A Helping Claw##71097 |goto 45.83,25.99
step
talk Venthi##194680
|tip On the ground, under a canopy.
turnin Supporting the Cobalt Assembly##72784 |goto 49.05,23.15
accept Welcome to the Assembly##70550 |goto 49.05,23.15
step
talk Kruthix##191999
fpath Cobalt Assembly |goto 49.10,22.67
step
talk Xavin##195637
Choose _"<View Cobalt Assembly abilities.>"_
Speak to Xavin |q 70550/1 |goto 49.47,22.60
step
talk Xavin##195637
|tip Choose the "Cobalt Cutthroat" trait in the research window.
Unlock the Cobalt Cutthroat Trait |q 70550/2 |goto 49.47,22.60
step
talk Venthi##194680
turnin Welcome to the Assembly##70550 |goto 49.05,23.15
step
Reach Rhonin's Shield |q 65886/1 |goto 65.90,25.48
step
talk Tuskarr Elder##190300
accept Riders in the Snow##66708 |goto 65.90,25.48
step
talk Drok Scrollstabber##189751
turnin To Rhonin's Shield##65886 |goto 65.81,25.32
accept To the Mountain##65887 |goto 65.81,25.32
accept Drakes be Gone##67299 |goto 65.81,25.32
step
talk Polky Cogzapper##196545
accept Artifacts in the Wrong Hands##66964 |goto 65.94,25.27
step
talk Portia Striat##191976
fpath Rhonin's Shield |goto 66.00,25.39
step
click Arcane Blaster
Control the Arcane Blaster |invehicle |goto 66.09,25.47 |q 67299
step
kill 5 Proto-Drake##192873 |q 67299/1 |goto 66.06,25.46
|tip They look like red dragons flying in the air all around this camp.
|tip Use the abilities on your action bar.
step
talk Drok Scrollstabber##189751
turnin Drakes be Gone##67299 |goto 65.81,25.32
step
talk Taelmyr Blazewing##186742
fpath Theron's Watch |goto 65.37,16.39
step
talk Tyrnokos Sunstrike##186755
accept Wayward Tools##66622 |goto 65.57,16.18
step
talk Sonova Snowden##189401
accept Hollow Up##66553 |goto 65.39,15.95
accept Aggressive Self-Defence##66554 |goto 65.39,15.95
step
click Wayward Tool+
|tip They look like various objects floating and moving around this area.
|tip They will run away from you, so click them quickly when you get close to them.
Rescue #6# Wayward Tools |q 66622/1 |goto 65.59,16.94
stickystart "Defeat_Winterpelt_Furbolgs"
step
click Various Objects
|tip They look like totems, vases, large pieces of trees and stones, and dead bear people on the ground around this area.
Uncover #6# Clues |q 66553/1 |goto 66.39,12.77
step
label "Defeat_Winterpelt_Furbolgs"
Kill Winterpelt enemies around this area
|tip They look like white bear people.
|tip They will eventually surrender and run away.
Defeat #6# Winterpelt Furbolgs |q 66554/1 |goto 66.39,12.77
step
talk Tyrnokos Sunstrike##186755
turnin Wayward Tools##66622 |goto 65.57,16.18
step
talk Sonova Snowden##189401
turnin Hollow Up##66553 |goto 65.39,15.95
turnin Aggressive Self-Defence##66554 |goto 65.39,15.95
accept Bear With Me##66555 |goto 65.39,15.95
step
talk Sonova Snowden##189401
|tip Choose any of the dialogue options, it doesn't matter.
Witness the Translation |q 66555/1 |goto 65.39,15.95
step
talk Sonova Snowden##189401
turnin Bear With Me##66555 |goto 65.39,15.95
accept Ice Cave Ya Got There##66556 |goto 65.39,15.95
step
Enter the cave |goto 66.33,11.53 < 10 |walk
Investigate the Cave in Winterpelt Hollow |q 66556/1 |goto 65.98,10.73
|tip Inside the cave.
step
Watch the dialogue
|tip Stormshackler Rynea's guards will become hostile.
|tip Kill her 2 guards to be able to attack her.
|tip Inside the cave.
kill Stormshackler Rynea##189391 |q 66556/2 |goto 65.98,10.73
step
Leave the cave |goto 66.33,11.53 < 10 |walk |only if subzone("Winterpelt Hollow") and _G.IsIndoors()
talk Sonova Snowden##189401
turnin Ice Cave Ya Got There##66556 |goto 65.39,15.95
accept Academic Aquaintances##66557 |goto 65.39,15.95
step
talk Steria Duskgrove##192830
accept Mossing the Mark##68641 |goto 63.61,28.82
step
talk Callisto Windsor##192825
accept Prowling Polar Predators##68639 |goto 63.58,28.90
stickystart "Slay_Infected_Frigidpelts"
step
click Drakmoss+
|tip They look like green plants hanging from the large spinal bones on the ground around this area.
collect 5 Drakmoss Clump##197983 |q 68641/1 |goto 63.41,31.34
step
label "Slay_Infected_Frigidpelts"
Kill Frigidpelt enemies around this area
|tip They look like white bears with spikes on them.
|tip Only the ones with a purple tint will count for the quest goal.
Slay #6# Infected Frigidpelts |q 68639/1 |goto 63.88,30.47
step
talk Callisto Windsor##192825
turnin Prowling Polar Predators##68639 |goto 63.58,28.90
step
talk Steria Duskgrove##192830
turnin Mossing the Mark##68641 |goto 63.61,28.82
accept Needles to Say##68642 |goto 63.61,28.82
step
talk Callisto Windsor##192825
accept Vitamins and Minerals##68643 |goto 63.58,28.90
stickystart "Collect_Arcane_Infused_Quills"
step
click Strange Ice Crystal+
|tip They look like clusters of blue crystals on the ground around this area.
collect 4 Vial of Mineral Water##198797 |q 68643/1 |goto 65.09,29.23
step
label "Collect_Arcane_Infused_Quills"
kill Barbed Bakar##193053+
|tip They look like large white dogs around this area.
clicknpc Prickly Crystalspine##193044+
|tip They look like blue and purple porcupines.
collect 15 Arcane-Infused Quill##198336 |q 68642/1 |goto 64.96,29.56
step
talk Callisto Windsor##192825
turnin Vitamins and Minerals##68643 |goto 63.58,28.90
step
talk Steria Duskgrove##192830
turnin Needles to Say##68642 |goto 63.61,28.82
accept Sugar, Spice, and Everything Nice##68644 |goto 63.61,28.82
step
talk Steria Duskgrove##192830
Tell her _"I'm ready to begin."_
Talk to Steria |q 68644/1 |goto 63.61,28.82
step
click Steria's Mortar and Pestle
|tip It appears on the ground.
Prepare the Treatment |q 68644/2 |goto 63.58,28.83
step
talk Callisto Windsor##192825
Tell her _"Steria needs your help."_
Convince Callisto to Help |q 68644/3 |goto 63.58,28.90
step
Watch the dialogue
talk Sylvie##193068
Choose _"<Administer medicine.>"_
Treat Sylvie |q 68644/4 |goto 63.61,28.80
step
talk Steria Duskgrove##192830
turnin Sugar, Spice, and Everything Nice##68644 |goto 63.58,28.83
accept Save a Slyvern##69862 |goto 63.58,28.83
step
Meet Up with the Mages |q 69862/1 |goto 65.70,30.84
step
talk Steria Duskgrove##192830
|tip It may take a moment for her to appear.
turnin Save a Slyvern##69862 |goto 65.70,30.84
accept They Took the Kits##70338 |goto 65.70,30.84
step
use Steria's Charm of Invisibility##200526
|tip It will make you stealthed, so you can avoid enemies.
clicknpc Snowypelt Kit##193078+
|tip They look like small baby wolf dragons on the ground.
|tip They will appear on your minimap as yellow dots.
|tip Inside the cave.
Rescue #5# Kits |q 70338/1 |goto 65.82,30.79
step
Leave the cave |goto 65.82,30.79 < 10 |walk |only if subzone("Slyvern Ice Cave")
talk Sylvie##193068
Choose _"<Return the kits to their mother.>"_
Return the Kits to Sylvie |q 70338/2 |goto 65.73,30.78
step
talk Steria Duskgrove##192830
turnin They Took the Kits##70338 |goto 65.70,30.84
step
talk Old Grimtusk##189963
turnin Riders in the Snow##66708 |goto 59.26,39.73
accept Field Medic 101##66709 |goto 59.26,39.73
step
click Gnoll Spear
|tip It looks like a brown wooden handle sticking out of the body.
Remove the Spear |q 66709/1 |goto 59.26,39.73
step
click Pile of Wood+
|tip They look like small piles of brown wooden boards on the ground around this area.
Collect #5# Piles of Wood |q 66709/2 |goto 59.20,39.79
step
click Campfire
Start the Campfire |q 66709/3 |goto 59.24,39.75
step
talk Old Grimtusk##189963
Choose _"<Cauterize the wound as requested.>"_
Cauterize the Wound |q 66709/4 |goto 59.26,39.72
step
talk Old Grimtusk##189963
turnin Field Medic 101##66709 |goto 59.26,39.72
accept The Extraction##66715 |goto 59.26,39.72
step
Find the Missing Tuskarrs |q 66715/1 |goto 58.23,41.97
step
talk Frostbite##189625
|tip In a wooden cage.
turnin The Extraction##66715 |goto 58.38,41.99
accept Snowball Effect##66703 |goto 58.38,41.99
step
kill Snowhide Shaman##189654
|tip Inside the tree.
Retrieve the Totem |q 66703/1 |goto 58.35,42.63 |count 1
step
kill Snowhide Shaman##189654
|tip Inside the tree.
Retrieve the Totem |q 66703/1 |goto 56.88,42.33 |count 2
step
kill Snowhide Shaman##189654
Retrieve the Totem |q 66703/1 |goto 57.64,41.54 |count 3
step
talk Frostbite##189625
|tip In a wooden cage.
turnin Snowball Effect##66703 |goto 58.38,41.99
accept Frostbite: Causes and Symptoms##67050 |goto 58.38,41.99
step
click Snowhide Totem
Place the Snowhide Totem |q 67050/1 |goto 58.27,41.95 |count 1
step
click Snowhide Totem
Place the Snowhide Totem |q 67050/1 |goto 58.24,41.99 |count 2
step
click Snowhide Totem
Place the Snowhide Totem |q 67050/1 |goto 58.23,41.92 |count 3
step
talk Old Grimtusk##189963
Return to Old Grimtusk |q 67050/2 |goto 58.48,40.53
step
talk Old Grimtusk##189963
turnin Frostbite: Causes and Symptoms##67050 |goto 58.48,40.53
accept True Survivors##66730 |goto 58.48,40.53
step
talk Old Grimtusk##196812
turnin True Survivors##66730 |goto 58.79,34.91
accept No Vengeance on an Empty Stomach##71013 |goto 58.79,34.91
step
talk Young Quickhands##196840
|tip Learn the "Dragon Isles Fishing" skill.
Learn the Fishing Skill from Young Quickhands |q 71013/1 |goto 58.81,34.78
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
Fish #3# Frozen Tail Darters |q 71013/2 |goto 58.86,34.83
step
talk Old Grimtusk##196812
turnin No Vengeance on an Empty Stomach##71013 |goto 58.79,34.91
accept A Far Furbolg Friend##71014 |goto 58.79,34.91
accept All Brawn, No Brains##71015 |goto 58.79,34.91
accept Grimtusk's Sister##71016 |goto 58.79,34.91
step
talk Kalecgos##186304
turnin To the Mountain##65887 |goto 70.01,35.23
accept Primal Offensive##65943 |goto 70.01,35.23
step
talk Khadgar##186305
accept Lava Burst##65944 |goto 70.03,35.34
accept Elemental Unfocus##66647 |goto 70.03,35.34
stickystart "Slay_Primalist_Forces_65943"
step
click Lava Orb
|tip It looks like an orange floating ball of lava.
Destroy the Lava Orb |q 65944/1 |goto 72.23,37.28 |count 1
step
Enter the cave |goto 72.89,38.52 < 15 |walk
kill Ruvin Stonegrinder##189939
|tip Inside the cave.
collect Elemental Focus##192478 |q 66647/1 |goto 72.91,38.72
step
click Lava Orb
|tip It looks like an orange floating ball of lava.
Destroy the Lava Orb |q 65944/1 |goto 73.12,37.76 |count 2
step
click Lava Orb
|tip It looks like an orange floating ball of lava.
Destroy the Lava Orb |q 65944/1 |goto 73.77,38.32 |count 3
step
label "Slay_Primalist_Forces_65943"
Kill enemies around this area
Slay #15# Primalist Forces |q 65943/1 |goto 72.65,37.62
step
talk Archmage Khadgar##186688
turnin Lava Burst##65944 |goto 74.47,37.84
turnin Elemental Unfocus##66647 |goto 74.47,37.84
step
talk Kalecgos##186686
turnin Primal Offensive##65943 |goto 74.47,37.81
accept Primal Power##65958 |goto 74.47,37.81
step
talk Archmage Khadgar##186688
accept Kirin Tor Recovery##65977 |goto 74.46,37.84
stickystart "Recover_The_Primal_Energies"
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 74.59,38.63 |count 1
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 75.27,37.21 |count 2
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 75.64,38.37 |count 3
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 76.13,37.86 |count 4
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 76.57,38.92 |count 5
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 76.02,39.53 |count 6
step
label "Recover_The_Primal_Energies"
Kill enemies around this area
use Elemental Focus##192479
|tip Use it next to their corpses.
Recover the Primal Energies |q 65958/1 |goto 75.49,38.27
|tip Fill the bar in the quest tracker area.
step
talk Archmage Khadgar##186779
turnin Primal Power##65958 |goto 76.95,39.43
turnin Kirin Tor Recovery##65977 |goto 76.95,39.43
accept Free Air##66007 |goto 76.95,39.43
step
extraaction Elemental Disguise##378814
|tip Use the "Elemental Disguise" ability.
|tip It appears as a button on the screen.
Disguise Yourself as an Elemental |havebuff spell:378814 |goto 76.95,39.43 |q 66007
step
_NOTE:_
During the Next Steps
|tip Avoid the blue swirls on the ground.
|tip Avoid the enemies with blue circles on the ground around them, they can see through your disguise.
Click Here to Continue |confirm |q 66007
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 77.36,39.91 |count 1
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 77.35,38.28 |count 2
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 78.22,37.64 |count 3
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 78.55,39.04 |count 4
step
Enter the cave |goto 78.72,39.53 < 15 |walk
talk Kalecgos##186862
|tip Inside the cave.
turnin Free Air##66007 |goto 78.38,39.98
accept In Defense of Vakthros##66009 |goto 78.38,39.98
step
kill Korthrox the Destroyer##183422 |q 66009/1 |goto 79.27,36.33
|tip Blue circles (not the blue lightning swirls), will appear on on the ground as you fight him.
|tip Kalecgos will say "Seek sanctuary in my runes!" in your chat when the blue circles appear.
|tip Run into the blue circles when they appear on the ground.
|tip They will make you immune to damage while Korthrox uses a powerful ability.
step
talk Archmage Khadgar##193837
turnin In Defense of Vakthros##66009 |goto 77.99,32.47
accept The Storm-Eater's Fury##70041 |goto 77.99,32.47
step
click Arcane Disc
Board the Arcane Disc |q 70041/1 |goto 78.03,32.44
step
Watch the dialogue
Kill enemies around this area
|tip They look like fire and lava elementals, and humanoids on the ground nearby.
|tip Use the abilities on your action bar.
Slay #150# Primalist Army Soldiers |q 70041/2
step
Dispel #3# Storm Funnels |q 70041/3
|tip They look like grey swirling tornados on the ground nearby.
|tip Use the "Azure Dispel" ability on your action bar.
step
Kill enemies around this area
|tip They look like fire and lava elementals, and humanoids on the ground nearby.
|tip Use the abilities on your action bar.
Slay #200# Primalist Army Soldiers |q 70041/4
step
talk Kalecgos##187034
turnin The Storm-Eater's Fury##70041 |goto 78.22,33.34
accept The Blue Dragon Oathstone##66015 |goto 78.22,33.34
step
talk Kattigat##196254
turnin Artifacts in the Wrong Hands##66964 |goto 67.22,44.41
accept The Ailing Apprentice##67111 |goto 67.22,44.41
step
talk To'tik##191715
accept The Fending Flames##67724 |goto 67.34,44.34
accept Kill it with Fire##70856 |goto 67.34,44.34
stickystart "Collect_Intact_Crawler_Venom_Glands"
stickystart "Burn_Infected_Plunderers"
step
click Spider Silk Cocoon
|tip It looks like a white cocoon.
|tip Inside the cavern.
collect Shiverweb Silk##195468 |q 67724/1 |goto 68.06,43.06 |count 1
step
click Spider Silk Cocoon
|tip It looks like a white cocoon.
|tip Inside the cavern.
collect Shiverweb Silk##195468 |q 67724/1 |goto 68.49,43.63 |count 2
step
click Spider Silk Cocoon
|tip It looks like a white cocoon.
collect Shiverweb Silk##195468 |q 67724/1 |goto 68.73,45.38 |count 3
step
click Spider Silk Cocoon
|tip It looks like a white cocoon.
|tip Inside the crumbled building.
collect Shiverweb Silk##195468 |q 67724/1 |goto 68.48,45.97 |count 4
step
label "Collect_Intact_Crawler_Venom_Glands"
kill Shiverweb Crawler##192591+
|tip They look like large blue spiders.
|tip They can be hidden under the ground.
|tip Inside and outside the cavern. |notinsticky
collect 5 Intact Crawler Venom Gland##194747 |q 67111/1 |goto 68.67,44.55
step
label "Burn_Infected_Plunderers"
use the Flamethrower Torch##199928
|tip Use it next to Infected Plunderers.
|tip They look like corpses of dragon people with small blue eggs on them around this area.
|tip Position yourself to point the fire at the corpses.
|tip Inside and outside the cave. |notinsticky
Burn #10# Infected Plunderers |q 70856/1 |goto 68.67,44.55
step
talk To'tik##191715
turnin The Fending Flames##67724 |goto 67.34,44.34
turnin Kill it with Fire##70856 |goto 67.34,44.34
step
talk Kattigat##196254
turnin The Ailing Apprentice##67111 |goto 67.22,44.41
accept Back into the Action##70858 |goto 67.22,44.41
step
clicknpc Alia Sunsoar##192234
Administer the Ice Cold Antidote |q 70858/1 |goto 67.23,44.38
step
Watch the dialogue
talk Alia Sunsoar##196501
|tip She walks to this location.
turnin Back into the Action##70858 |goto 67.30,44.34
accept What the Guardian Beholds##70859 |goto 67.30,44.34
step
kill Edavix##196377
|tip Inside the building, high up on the cliffside.
collect Whispering Shard##200067 |q 70859/1 |goto 69.54,43.11
step
talk Alia Sunsoar##196501
turnin What the Guardian Beholds##70859 |goto 67.30,44.34
accept Whispered Fragments##70931 |goto 67.30,44.34
step
talk To'tik##191715
accept What Valthrux Once Was##70937 |goto 67.34,44.34
stickystart "Collect_Whispering_Fragments"
step
click Discarded Journal
|tip It looks like a book on the ground.
Find the Discarded Journal |q 70937/4 |goto 69.53,44.12
step
Enter the building |goto 70.12,43.61 < 15 |walk
click Crumbling Tablet
|tip It looks like a stone slab.
|tip Inside the building.
Find the Crumbling Tablet |q 70937/1 |goto 70.19,43.29
step
Enter the building |goto 69.87,45.96 < 10 |walk
click Sundered Flame Journal
|tip It looks like a book sitting on a table.
|tip Inside the building, on the ground floor.
Find the Sundered Flame Journal |q 70937/3 |goto 70.01,46.15
step
Run up the ramp |goto 69.87,46.24 < 10 |walk
click Scratched Tablet
|tip It looks like a stone slab leaning against a stone table.
|tip Inside the building, on the top floor.
Find the Scratched Tablet |q 70937/2 |goto 70.25,46.17
step
label "Collect_Whispering_Fragments"
Kill enemies around this area
|tip Only enemies that look like dragon people will drop the quest item.
collect 40 Whispering Fragments##200110 |q 70931/1 |goto 69.67,45.61
step
talk To'tik##191715
turnin What Valthrux Once Was##70937 |goto 67.34,44.34
step
talk Alia Sunsoar##196501
turnin Whispered Fragments##70931 |goto 67.30,44.34
step
_Next to you:_
talk Rowie
accept Fishing Holes##70941
step
talk To'tik##191715
accept No One May Wield It##70946 |goto 67.34,44.34
step
talk Alia Sunsoar##196501
Tell her _"Alia, the artifact is too dangerous to use. It must be destroyed."_
Watch the dialogue
Warn Alia |q 70946/1 |goto 67.30,44.34
step
talk To'tik##191715
turnin No One May Wield It##70946 |goto 67.34,44.34
step
talk Kattigat##196520
accept Good Intentions##70970 |goto 67.32,44.39
step
Enter the cave |goto 71.76,43.64 < 10 |walk |only if not subzone("Forgotten Cavern")
kill Alia Sunsoar##196737
|tip Inside the cave.
Stop Alia |q 70970/1 |goto 72.54,42.85
step
click Valthrux
|tip It looks like a floating open book.
|tip Inside the cave.
Choose _"<Destroy Valthrux>"_
Destroy the Valthrux |q 70970/2 |goto 72.55,42.85
step
Leave the cave |goto 71.76,43.64 < 10 |walk |only if subzone("Forgotten Cavern")
talk Kattigat##196520
turnin Good Intentions##70970 |goto 67.32,44.39
step
talk Rannan Korren##188144
accept To the Ruins!##66391 |goto 63.44,57.99
step
talk Maddy Scattershot##187800
turnin Path to Nowhere##66671 |goto 63.22,58.42
step
talk Garz##187301
turnin Academic Aquaintances##66557 |goto 63.20,58.62
accept Broken Traditions, Broken Bodies##66141 |goto 63.20,58.62
step
talk Camilla Highwind##186782
fpath Camp Nowhere |goto 63.45,58.66
step
talk Rannan Korren##189171
|tip Inside the crumbled building.
turnin To the Ruins!##66391 |goto 65.02,58.61
accept R.A.D. Anomalies##66353 |goto 65.02,58.61
step
talk Lathos Sunband##189166
|tip Inside the crumbled building.
accept What the Enemy Knows##66352 |goto 65.00,58.62
stickystart "Collect_Sundered_Flames_Orders"
step
use the R.A.D.##191909
Record the Anomaly |q 66353/1 |goto 65.53,58.83 |count 1
step
use the R.A.D.##191909
Record the Anomaly |q 66353/1 |goto 66.30,59.37 |count 2
step
use the R.A.D.##191909
Record the Anomaly |q 66353/1 |goto 66.39,59.73 |count 3
step
label "Collect_Sundered_Flames_Orders"
Kill enemies around this area
|tip They look like blue dragon people.
Collect #4# Sundered Flame's Orders |q 66352/1 |goto 65.70,59.45
step
talk Rannan Korren##189171
|tip Inside the crumbled building.
turnin R.A.D. Anomalies##66353 |goto 65.02,58.61
step
talk Lathos Sunband##189166
|tip Inside the crumbled building.
turnin What the Enemy Knows##66352 |goto 65.00,58.62
accept The Expedition Continues!##66422 |goto 65.00,58.62
step
talk Lathos Sunband##189236
turnin The Expedition Continues!##66422 |goto 65.64,60.79
accept Worries and Validations##66423 |goto 65.64,60.79
step
click Ruined Draconic Tablet
|tip It looks like a stone slab on the ground.
Find the Clue |q 66423/1 |goto 65.32,60.81 |count 1
step
click Ruined Draconic Tablet
|tip It looks like a stone slab on the ground.
Find the Clue |q 66423/1 |goto 65.86,60.55 |count 2
step
talk Lathos Sunband##189236
turnin Worries and Validations##66423 |goto 65.64,60.80
step
talk Rannan Korren##188845
accept Arcane Overload##66425 |goto 65.63,60.76
step
use the R.A.D.D.E.R.##192110
|tip Near the blue bubble.
|tip Inside the building, on the ground floor.
|tip You will be attacked.
Dispel the Arcane Bubble |q 66425/1 |goto 65.28,61.31 |count 1
step
use the R.A.D.D.E.R.##192110
|tip Near the blue bubble.
|tip Inside the building, on the ground floor.
|tip You will be attacked.
Dispel the Arcane Bubble |q 66425/1 |goto 65.10,61.54 |count 2
step
Run up the ramp |goto 65.17,60.95 < 10 |walk
use the R.A.D.D.E.R.##192110
|tip Near the blue bubble.
|tip Inside the building, on the top floor.
|tip You will be attacked.
Dispel the Arcane Bubble |q 66425/1 |goto 65.06,61.14 |count 3
step
talk Rannan Korren##188845
turnin Arcane Overload##66425 |goto 65.63,60.76
step
talk Lathos Sunband##189236
accept Running Out of Time##66426 |goto 65.64,60.79
step
Watch the dialogue
Listen to Rannan's and Lathos' Plan |q 66426/1 |goto 65.64,60.79
step
talk Lathos Sunband##189792
|tip Inside the building.
turnin Running Out of Time##66426 |goto 68.46,60.50
accept A Looming Menace##66427 |goto 68.46,60.50
step
kill Arcane Manipulator Tharohn##188171 |q 66427/1 |goto 68.08,61.59
|tip On the stone platform.
step
talk Lathos Sunband##189792
|tip Inside the building.
turnin A Looming Menace##66427 |goto 68.46,60.50
step
talk Rannan Korren##189791
|tip Inside the building.
accept Friendship For Granted##66428 |goto 68.48,60.44
step
use the R.A.D.D.E.R.E.R.##192475
|tip Near the blue bubble.
|tip Inside the building.
Use the R.A.D.D.E.R.E.R. |q 66428/1 |goto 68.60,60.39
step
Watch the dialogue
|tip Inside the building.
Dispel the Arcane Barrier |q 66428/2 |goto 68.50,60.47
step
talk Rannan Korren##189791
|tip Inside the building.
turnin Friendship For Granted##66428 |goto 68.50,60.47
accept I Will Remember##66429 |goto 68.50,60.47
step
talk Narn##190873
Ask him _"What's happening?"_
Speak to Narn |q 66141/1 |goto 65.62,54.84
step
talk Garz##187308
turnin Broken Traditions, Broken Bodies##66141 |goto 63.51,52.98
accept Former Furbolg Family##66148 |goto 63.51,52.98
accept Elemental Influence##66149 |goto 63.51,52.98
accept Rescuing Radza##66150 |goto 63.51,52.98
stickystart "Slay_Rustpine_Furbolg_And_Elementals"
step
talk Radza Thunderclaw##187501
|tip You may not be able to talk to him if someone already did and is completing the quest.
Tell him _"I am prepared to fight off your captors."_
Kill the enemies that attack in waves
kill Khargall Fivefangs##188102
Defend Radza Thunderclaw |q 66150/2 |goto 60.95,51.46
step
click Primalist Earthbind Totem+
|tip They look like small wooden pedestals on the ground around this area.
Destroy #3# Primalist Earthbind Totems |q 66149/1 |goto 61.80,51.94
step
label "Slay_Rustpine_Furbolg_And_Elementals"
Kill enemies around this area
|tip They look like stone elementals and bear people.
Slay #15# Rustpine Furbolg and Elementals |q 66148/1 |goto 61.80,51.94
step
talk Narn##187534
turnin Former Furbolg Family##66148 |goto 60.93,50.59
turnin Elemental Influence##66149 |goto 60.93,50.59
step
talk Radza Thunderclaw##187616
turnin Rescuing Radza##66150 |goto 60.91,50.51
accept His Stone Heart##66151 |goto 60.91,50.51
step
Enter the cave |goto 60.85,50.01 < 30 |walk
kill Stoneheart##187387 |q 66151/1 |goto 60.51,49.48
|tip Inside the cave.
step
talk Radza Thunderclaw##187616
turnin His Stone Heart##66151 |goto 60.91,50.51
step
talk Garz##187535
accept Nowhere to Go##66152 |goto 60.99,50.57
step
talk Garz##188897
turnin Nowhere to Go##66152 |goto 63.20,58.67
step
talk Rannan Korren##193337
turnin I Will Remember##66429 |goto 63.68,58.91
step
talk Sindragosa##186188
Tell her _"I'm ready to see the oathstone be reclaimed."_
Witness the Ceremony |q 66015/1 |goto 39.48,63.07
step
talk Sindragosa##186188
turnin The Blue Dragon Oathstone##66015 |goto 39.48,63.07
step
talk Kalecgos##190000
accept To Valdrakken##66244 |goto 39.47,63.05
|only if not achieved(16363)
step
talk Varsek##196816
|tip Inside the crumbled building.
turnin All Brawn, No Brains##71015 |goto 21.05,35.09
accept Elementary, My Dear Drakonid##71009 |goto 21.05,35.09
step
Watch the dialogue
clicknpc Instructional Crystal##196837
|tip It looks like a floating blue crystal.
Choose _"I'm ready to "follow the pattern.""_
Activate the Instructional Crystal |q 71009/1 |goto 21.54,35.48
step
Follow the Pattern |q 71009/2 |goto 21.68,35.39
|tip Run on the pink lines on the ground to trace the pattern.
step
talk Varsek##196838
turnin Elementary, My Dear Drakonid##71009 |goto 21.51,35.47
accept Varsek Recruited##71012 |goto 21.51,35.47
step
talk Rauvros##194415
|tip On top of the building, on the middle floor.
accept The Joy of Painting##70166 |goto 22.14,36.77
step
talk Nunvuq##186554
turnin Fishing Holes##70941 |goto 13.94,49.24
step
talk Tavio##195935
turnin Tuskarr Fishing Gear##71230 |goto 12.82,49.18
step
Enter the building |goto 12.79,49.34 < 10 |walk
talk Naluki##196841
|tip Inside the building.
turnin Grimtusk's Sister##71016 |goto 12.47,49.23
accept Naluki's Letter##71017 |goto 12.47,49.23
step
talk Elder Poa##186448
|tip Inside the building.
accept Tuskarr Champion's Tales##70940 |goto 12.41,49.34 |instant
step
Leave the building |goto 12.77,49.34 < 10 |walk |only if subzone("The Filled Bowl")
talk Hudson##194323
turnin The Joy of Painting##70166 |goto 7.86,53.48
step
Watch the dialogue
talk Ranpiata##194425
accept Sad Little Accidents##70168 |goto 7.87,53.45
step
talk Barst##196806
turnin A Far Furbolg Friend##71014 |goto 1.18,39.26
accept A Little Kelp for My Friends##70996 |goto 1.18,39.26
step
Enter the cave |goto 0.54,38.94 < 10 |walk
kill Wild Kelp Elemental##196809 |q 70996/1 |goto 0.81,39.03
|tip Inside the cave.
step
talk Barst##196806
|tip Outside, on top of the cave.
turnin A Little Kelp for My Friends##70996 |goto 1.18,39.26
accept Barst Recruited##71000 |goto 1.18,39.26
step
talk Old Grimtusk##196812
turnin Varsek Recruited##71012 |goto 58.79,34.91
turnin Barst Recruited##71000 |goto 58.79,34.91
turnin Naluki's Letter##71017 |goto 58.79,34.91
accept Loose Ends##71135 |goto 58.79,34.91
step
click Campfire
Send the Rally Signal |q 71135/1 |goto 59.08,44.26
step
Watch the dialogue
kill Frostbite##197164 |q 71135/2 |goto 58.91,44.14
|tip To remove his shield, kill the 2 gnolls he starts channeling a spell on.
step
talk Old Grimtusk##196812
turnin Loose Ends##71135 |goto 58.79,34.91
step
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"	|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"			|only if not (achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)",{
author="support@zygorguides.com",
},[[
step
talk Aluri##193321
fpath Valdrakken |goto Valdrakken/0 44.04,67.97
step
talk Waywatcher Lorin##197533
accept The Wayward Waywatcher##71219 |goto 50.14,62.38
step
talk Hot Springs Spa Promoter##197986
accept Relaxation Time!##72067 |goto 48.06,59.63
step
talk Grimla Fizzlecrank##194578
accept Lost to the Skies##71239 |goto 25.17,66.16
step
Enter the building |goto 55.41,45.81 < 30 |walk
talk Unatos##193015
|tip Inside the building.
accept Well Supplied##70882 |goto 58.16,35.11 |instant
accept Suppliers of Valdrakken##72406 |goto 58.16,35.11
|only if not achieved(16363)
step
click Teleport to Seat of the Aspects
|tip Upstairs inside the building.
Access the Teleporter to the Seat of the Aspects |q 66244/2 |goto 61.95,32.12
|only if haveq(66244)
step
Make Your Way to Valdrakken |q 66244/1 |goto 58.11,34.87
|tip At the top of the tower.
|only if haveq(66244)
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin To Valdrakken##66244 |goto 58.11,34.87 |only if haveq(66244) or completedq(66244)
turnin Thaldraszus##72269 |goto 58.11,34.87 |only if haveq(72269) or completedq(72269)
accept A Message Most Dire##66159 |goto 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Tell her _"So, about the Azure Span..."_
Deliver the Information |q 66159/1 |goto 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin A Message Most Dire##66159 |goto 58.11,34.87
step
Watch the dialogue
talk Captain Drine##189842
|tip She runs to this location.
|tip At the top of the tower.
accept Nowhere to Hide##66163 |goto 59.37,34.74
accept Eyes and Ears##66166 |goto 59.37,34.74
step
use the Revealing Dragon's Eye##198859
|tip At the top of the tower.
Use the Revealing Dragon's Eye |q 66163/1 |goto 59.37,34.74
step
talk Kalecgos##187676
|tip At the top of the tower.
accept The Algeth'ar Academy##72193 |goto 61.69,36.03
|only if level >= 70
step
talk Watcher Koranos##191369
|tip At the top of the tower.
accept Halls of Infusion: Entropy to Order##72192 |goto 54.38,40.94
step
talk Thalendra##192522
accept A Dryad's Work Is Never Done##67094 |goto 72.76,66.17
step
talk Tender Xina##189364
|tip He walks around this area.
accept Garden Variety##72189 |goto 77.43,67.31
step
talk Valdrakken Citizen##189869
Tell him _"Halt! I see through your disguise!"_
|tip You will be attacked by 3 enemies.
|tip You may need to wait for them to respawn.
kill 3 Primalist Infiltrator##189895 |q 66163/2 |goto 80.36,50.34 |count 3
step
talk Valdrakken Citizen##189869
Tell him _"Halt! I see through your disguise!"_
|tip You will be attacked by 3 enemies.
|tip You may need to wait for them to respawn.
kill 6 Primalist Infiltrator##189895 |q 66163/2 |goto 68.52,64.87 |count 6
step
clicknpc Hungry Swoglet##192810
|tip It looks like a large yellow frog with horns.
|tip It walks around this area.
Feed the Hungry Swoglet |q 67094/1 |goto 67.05,70.49
step
clicknpc Hungry Slyvern Kit##192804
|tip It looks like a small white wolf dragon.
|tip It walks around this area.
Feed the Hungry Slyvern Kit |q 67094/3 |goto 56.93,80.00
step
clicknpc Hungry Hatchling##192793
|tip It looks like a small turtle.
|tip On the plateau above the building, next to the water.
|tip It walks around this area.
Feed the Hungry Hatchling |q 67094/4 |goto 58.54,57.09
step
Enter the building |goto 55.33,57.37 < 15 |walk
click Storage Chest
|tip Inside the building.
Watch the dialogue
Investigate the Bank |q 66166/2 |goto 59.20,54.70
step
clicknpc Hungry Eft##192585
|tip it looks like a small white salamander.
|tip It walks around this area and in the water nearby.
Feed the Hungry Eft |q 67094/5 |goto 51.29,71.45
step
talk Kaestrasz##185561
Meet the Drake Manuscript and Armor Supplier |q 72406/2 |goto 46.67,78.94
|only if haveq(72406)
step
clicknpc Hungry Otter Pup##192808
|tip It looks like a small brown rodent.
|tip It walks around this area.
Feed the Hungry Otter Pup |q 67094/2 |goto 42.68,74.86
step
talk Dothenos##191000
Meet the Trade Coordinator |q 72406/3 |goto 36.43,62.79
|only if haveq(72406)
step
click Consortium Ledger
|tip It looks like an open book on top of a wooden crate.
Watch the dialogue
Investigate the Crafter's Consortium |q 66166/1 |goto 34.63,61.30
step
Enter the building |goto 37.57,50.31 < 10 |walk
talk Provisioner Thom##193659
|tip Inside the building.
Meet the Equipment Supplier |q 72406/1 |goto 36.57,50.64
|only if haveq(72406)
step
Enter the building |goto 48.29,49.62 < 10 |walk
click Goblet
|tip It looks like a golden drinking cup on a table.
|tip Inside the building.
Watch the dialogue
Investigate the Inn |q 66166/3 |goto 46.92,47.72
step
talk Erugosa##185556
|tip Inside the building.
accept To Cook With Finery##70880 |goto 46.51,46.24 |instant
|only if not achieved(16363)
step
click Discarded Note
|tip It looks like a piece of paper laying on the bar.
|tip Inside the building.
accept Archival Assistance##67007 |goto 47.80,46.57
|only if level >= 70
step
Enter the building |goto 25.36,39.49 < 10 |walk
talk Talikka##198349
|tip Inside the building.
accept Reservoir Reservations##72190 |goto 25.49,40.93
step
Enter the building |goto 34.12,30.17 < 10 |walk
talk Kemora##189973
|tip Inside the building.
turnin Archival Assistance##67007 |goto 35.04,28.07
|only if level >= 70
step
talk Spa Concierge##197670
turnin Relaxation Time!##72067 |goto Thaldraszus/0 40.42,49.54
accept Serene Dreams##72246 |goto Thaldraszus/0 40.42,49.54
step
talk Xijan Thornpaw##194717
turnin Serene Dreams##72246 |goto 40.49,48.92
accept Good Reviews##70738 |goto 40.49,48.92
step
talk Quilius##196160
accept Steam Cleaning##70740 |goto 40.46,48.88
step
click Misplaced Luggage
accept Some Favorite Things##70741 |goto 41.47,47.35
stickystart "Rescue_Youga_Students"
stickystart "Slay_Elementals_70740"
step
talk Fleur Starling##198185
Rescue the Youga Instructor |q 70738/2 |goto 41.17,47.50
step
click Yougah-for-Ogres Manual
|tip It looks like a book on the ground.
Find the Belongings |q 70741/1 |goto 41.16,47.44 |count 2
step
click Lost S.E.L.F.I.E. Camera
|tip It looks like a small camera on the table.
Find the Belongings |q 70741/1 |goto 40.72,47.31 |count 3
step
click Stylish Umbrella
|tip It looks like a red and white umbrella.
Find the Belongings |q 70741/1 |goto 40.10,46.61 |count 4
step
click Overturned Beach Chair
|tip It looks like a wooden foldable chair with red and green cloth.
Find the Belongings |q 70741/1 |goto 40.27,46.16 |count 5
step
click Soggy You-ga Pillow
|tip It looks like a red square sitting pillow at the bottom of the waterfall.
Find the Belongings |q 70741/1 |goto 41.01,45.96 |count 6
step
label "Rescue_Youga_Students"
talk Terrorized Spa Guest##194808+
|tip They look like friendly NPCs standing in fear on the ground around this area.
Rescue #6# Youga Students |q 70738/1 |goto 40.92,46.66
step
label "Slay_Elementals_70740"
Kill enemies around this area
|tip They look like hostile steam and fire elementals.
|tip The smaller neutral Steam Jet elementals will not count for the quest goal.
Slay #12# Elementals |q 70740/1 |goto 40.92,46.66
step
talk Quilius##196160
turnin Steam Cleaning##70740 |goto 40.46,48.88
step
talk Xijan Thornpaw##194717
turnin Good Reviews##70738 |goto 40.49,48.93
turnin Some Favorite Things##70741 |goto 40.49,48.93
step
talk Cae'Ryn##194812
accept Precious Baby##70743 |goto 40.49,48.97
step
Find the Baby |q 70743/1 |goto 38.90,45.22
step
Watch the dialogue
clicknpc Baby##196194
|tip It looks like a tiny dog.
Comfort Baby |q 70743/2 |goto 38.90,45.22
step
click Horrible Mess
accept Look at the Bones!##70744 |goto 38.89,45.25
step
click More Horrible Mess+
|tip They look like piles of red meat and bones on the ground around this area.
Clean #10# Messes |q 70744/1 |goto 38.53,46.51
step
talk Elzara##194812
turnin Precious Baby##70743 |goto 40.49,48.97
step
talk Xijan Thornpaw##194717
turnin Look at the Bones!##70744 |goto 40.49,48.92
step
talk Quilius##196160
accept Enforced Relaxation##70745 |goto 40.46,48.88
step
Drop down and enter the cave |goto 39.88,48.45 < 20 |walk
kill Vadne Bleakheart##195764 |q 70745/1 |goto 40.06,49.02
|tip Inside the cave.
step
Leave the cave |goto 39.88,48.45 < 20 |walk |only if subzone("Serene Dream Spa") and _G.IsIndoors()
talk Quilius##196160
|tip Up on the ledge, above the cave.
turnin Enforced Relaxation##70745 |goto 40.46,48.88
step
talk Captain Drine##189842
|tip Near the entrance to a building.
turnin Nowhere to Hide##66163 |goto Valdrakken/0 54.77,47.23
turnin Eyes and Ears##66166 |goto Valdrakken/0 54.77,47.23
accept Southern Exposure##66167 |goto Valdrakken/0 54.77,47.23
step
talk Thalendra##192522
turnin A Dryad's Work Is Never Done##67094 |goto 72.76,66.17
accept A Dryadic Remedy##67606 |goto 72.76,66.17
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Garden Variety##72189 |goto Thaldraszus/0 37.86,75.46
accept Azeroth Pest Control##66134 |goto Thaldraszus/0 37.86,75.46
step
kill 8 Agitated Seedling##187687 |q 66134/1 |goto 37.77,75.26
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Azeroth Pest Control##66134 |goto 37.86,75.47
accept The Gardener's Apprentice##66135 |goto 37.86,75.47
step
click Garden Junk
|tip Inside the building.
accept One Drakonid's Junk##66278 |goto 38.91,74.25
step
Locate Lord Basilton |q 66135/1 |goto 38.87,74.17
|tip Click the various objects inside the building.
|tip You will find him in the last object you click, after searching them all.
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin The Gardener's Apprentice##66135 |goto 37.86,75.46
turnin One Drakonid's Junk##66278 |goto 37.86,75.46
accept Elemental Extract##66136 |goto 37.86,75.46
accept Lashing Out##66137 |goto 37.86,75.46
accept New Kid on the Clock##66279 |goto 37.86,75.46
step
clicknpc Lord Basilton##187400
|tip Inside the open building.
Let Basilton Sniff Your Hand |q 66279/1 |goto 37.88,75.44
step
Kill enemies around this area
|tip They look like water elementals.
collect 5 Watery Essence##191473 |q 66136/1 |goto 37.11,71.19
step
talk Orizmu##187310
Take the Pocket Watch to Orizmu in the Gardens |q 66279/2 |goto 35.24,72.64
step
talk Orizmu##187310
turnin New Kid on the Clock##66279 |goto 35.24,72.64
accept Like Sands Through the Hourglass##66138 |goto 35.24,72.64
step
click Pile of Windswept Time Sand+
|tip They look like piles of tan dirt on the ground around this area.
|tip You may be attacked.
Gather #8# Piles of Windswept Time Sand |q 66138/1 |goto 36.02,72.73
step
talk Orizmu##187310
turnin Like Sands Through the Hourglass##66138 |goto 35.24,72.64
step
Kill enemies around this area
|tip They look like walking plants.
Slay #10# Lashers |q 66137/1 |goto 34.45,72.41
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Elemental Extract##66136 |goto 37.86,75.46
turnin Lashing Out##66137 |goto 37.86,75.46
accept Flame at Last##66139 |goto 37.86,75.46
step
use the Concentrated Essence of Water##191676
|tip Use it on Blazing Inferno.
|tip It looks like a large fire elemental.
|tip It will become weakened and easier to kill.
kill Blazing Inferno##189043 |q 66139/2 |goto 35.63,75.23
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Flame at Last##66139 |goto 37.86,75.46
accept Carry On, Basilton##66412 |goto 37.86,75.46
step
clicknpc Lord Basilton##187400
|tip Inside the open building.
Speak with Lord Basilton |q 66412/1 |goto 37.88,75.44
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Carry On, Basilton##66412 |goto 37.86,75.46
step
talk Valdren##193454
|tip High up on the cliff.
fpath Garden Shrine |goto 35.62,78.85
step
Travel to South Hold Gate |q 66167/1 |goto 35.85,82.56
step
talk Guardian Velomir##190086
Aid Guardian Velomir |q 66167/2 |goto 35.85,82.56
step
talk Guardian Velomir##190180
turnin Southern Exposure##66167 |goto 35.85,82.56
accept Vengeance, Served Hot##66169 |goto 35.85,82.56
accept The Fog of Battle##66246 |goto 35.85,82.56
stickystart "Slay_Magmasworn_Primalists"
step
clicknpc Mangled Corpse##190440
Choose _"Inspect the body."_
Find Velomir's Unit |q 66246/1 |goto 36.25,83.73 |count 1
step
Enter the building |goto 35.91,84.41 < 10 |walk
clicknpc Badly Injured Guardian##190442
|tip Inside the building.
Choose _"Inspect the body."_
Find Velomir's Unit |q 66246/1 |goto 35.76,84.19 |count 2
step
clicknpc Mangled Corpse##190247
Choose _"Inspect the body."_
Find Velomir's Unit |q 66246/1 |goto 36.46,85.39 |count 3
step
label "Slay_Magmasworn_Primalists"
Kill Magmasworn enemies around this area
Slay #12# Magmasworn Primalists |q 66169/1 |goto 36.47,84.79
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Vengeance, Served Hot##66169 |goto 37.62,83.08
turnin The Fog of Battle##66246 |goto 37.62,83.08
accept Remember the Fallen##66245 |goto 37.62,83.08
step
click Magmasworn Spear
|tip On the bridge.
accept Slightly Used Weapons##66247 |goto 37.85,83.26
stickystart "Collect_Magmasworn_Spears"
stickystart "Collect_South_Hold_Garrison_Signet"
step
click Coil of Heavy Rope
accept Tying Things Together##66248 |goto 38.56,83.41
step
click Coil of Heavy Rope+
|tip They look like ropes wound up in a circle on the ground and on objects around this area.
collect 5 Coil of Heavy Rope##192758 |q 66248/1 |goto 39.17,83.81
step
label "Collect_Magmasworn_Spears"
kill Magmasworn Rockcleaver##190420+
collect 6 Magmasworn Spear##192759 |q 66247/1 |goto 39.18,83.83
step
label "Collect_South_Hold_Garrison_Signet"
clicknpc South Hold Guardian##187516+
|tip They look like dead dragon people on the ground around this area.
collect 8 South Hold Garrison Signet##191269 |q 66245/1 |goto 38.94,83.89
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Remember the Fallen##66245 |goto 37.62,83.08
turnin Slightly Used Weapons##66247 |goto 37.62,83.08
turnin Tying Things Together##66248 |goto 37.62,83.08
accept Clear the Sky##66249 |goto 37.62,83.08
step
click Siege Scorpion
|tip It looks like a large crossbow machine.
|tip On a stone platform, overlooking the valley below.
Control a Siege Scorpion |q 66249/1 |goto 40.88,83.86
step
kill Magmasworn Trueborn##194543+
|tip They look like red dragons flying in the air nearby.
|tip Use the ability on your action bar.
Slay the Magmasworn |q 66249/2 |goto 40.88,83.86
|tip Fill the bar in the quest tracker area.
step
Enter the building |goto 40.36,85.33 < 20 |walk
talk Guardian Velomir##190558
|tip Inside the building.
turnin Clear the Sky##66249 |goto 40.56,85.48
accept Where's The Chief?##66250 |goto 40.56,85.48
step
talk Guardian Velomir##190558
|tip Inside the building.
Tell him _"I'm ready. Let's get in there!"_
Investigate the Lookout Tower |q 66250/1 |goto 40.56,85.48
step
talk Guardian Velomir##190562
turnin Where's The Chief?##66250 |goto 40.15,85.13
accept Fire Fighter##66251 |goto 40.15,85.13
step
kill Magmatalon##189538 |q 66251/1 |goto 40.29,87.10
|tip He looks like a black and orange dragon that flies in the air around this area.
|tip He will appear on your minimap as a yellow dot.
step
talk Guardian Velomir##190562
turnin Fire Fighter##66251 |goto 40.15,85.13
accept Reporting In##66252 |goto 40.15,85.13
step
talk Captain Drine##189842
|tip At the top of the tower.
turnin Reporting In##66252 |goto Valdrakken/0 55.94,39.96
accept Chaos and Commotion##71024 |goto Valdrakken/0 55.94,39.96
accept Look to the Overlook##71179 |goto Valdrakken/0 55.94,39.96
step
talk Nozdormu##187669
|tip At the top of the tower.
accept The Flow of Time##66320 |goto 61.40,39.05
step
click Teleport to Bottom Floor
|tip It looks like a teleport pad.
|tip At the top of the tower.
Take a Teleport to the Bottom Floor |q 71024/1 |goto 55.36,46.00
step
talk Unatos##193015
|tip Inside the building, on the ground floor.
turnin Suppliers of Valdrakken##72406 |goto 58.17,35.12
|only if haveq(72406) or completedq(72406)
step
talk Investigator Erima##196878
|tip Inside the building, on the ground floor.
Tell him _"Drine sent me. She said there was a commotion."_
Speak to Investigator Erima |q 71024/2 |goto 61.77,42.15
step
click Inert Runestone
|tip Inside the building, on the ground floor.
Examine the Runestone |q 71024/3 |goto 60.77,40.38
step
Watch the dialogue
talk Aesthis##196980
|tip He runs to this location.
|tip Inside the building, on the ground floor.
Ask him _"What is that thing?"_
Speak to Aesthis |q 71024/4 |goto 60.79,40.36
step
click Dropped Page
|tip It looks like a brown paper map on the ground.
|tip Inside the building, on the ground floor.
Find the Clue |q 71024/5 |goto 56.94,44.39
step
Watch the dialogue
talk Investigator Erima##196984
|tip He runs to this location.
|tip Inside the building, on the ground floor.
turnin Chaos and Commotion##71024 |goto 56.46,43.75
accept Follow the Clues##70837 |goto 56.46,43.75
step
talk Investigator Erima##196416
|tip On the ledge, on the path leading upward.
turnin Follow the Clues##70837 |goto Thaldraszus/0 42.72,81.94
accept Rebels With a Cause##70838 |goto Thaldraszus/0 42.72,81.94
accept Detonation Locations##70842 |goto Thaldraszus/0 42.72,81.94
stickystart "Slay_Rebels_And_Primalists"
step
click Mistyvale Map
|tip It looks like a brown paper map pinned to the doorway of the tent.
collect Mistyvale Map: Training Grounds##200461 |q 70842/1 |goto 43.46,81.96
step
click Mistyvale Map
|tip It looks like a brown paper map pinned to the tree.
collect Mistyvale Map: Black Market Auction House##200463 |q 70842/3 |goto 43.55,81.14
step
clicknpc Unfinished Runestone##196464
accept Ruin the Runestones##70843 |goto 43.58,81.01
step
click Incendiary Runestone
|tip It looks like a group of large grey rocks with orange rune symbols on them.
Destroy the North Cache |q 70843/2 |goto 44.31,80.48
step
click Mistyvale Map
|tip It looks like a brown paper map on a wooden crate.
|tip Inside the tent.
collect Mistyvale Map: Butterfly Garden##200462 |q 70842/2 |goto 44.30,80.92
step
click Incendiary Runestone
|tip It looks like a group of large grey rocks with orange rune symbols on them.
Destroy the South Cache |q 70843/1 |goto 44.43,81.48
step
label "Slay_Rebels_And_Primalists"
Kill enemies around this area
Slay #8# Rebels and Primalists |q 70838/1 |goto 43.54,80.86
step
talk Investigator Erima##196432
turnin Rebels With a Cause##70838 |goto 42.58,78.82
turnin Detonation Locations##70842 |goto 42.58,78.82
turnin Ruin the Runestones##70843 |goto 42.58,78.82
accept Maldra's in Hot Water##70850 |goto 42.58,78.82
step
kill Orian Darkwater##196457 |q 70850/1 |goto 42.92,80.21
step
talk Investigator Erima##196432
turnin Maldra's in Hot Water##70850 |goto 42.58,78.82
step
talk Maldra Flametongue##196562
accept Chasing Waterfalls##70873 |goto 42.68,78.80
step
Kill enemies around this area
|tip Only enemies that look like steam elementals will drop the quest item.
|tip They are in the water areas.
collect 35 Fallingwater Mote##200087 |q 70873/1 |goto 44.09,79.44
You can find more around [43.76,80.85]
step
talk Maldra Flametongue##196562
turnin Chasing Waterfalls##70873 |goto 42.68,78.80
accept Breaching the Fire Wall##70874 |goto 42.68,78.80
step
Watch the dialogue
|tip Use the "Attune with Fallingwater" ability.
|tip It appears as a button on the screen.
Begin the Ritual |q 70874/1 |goto 42.36,78.81
step
Watch the dialogue
Complete the Ritual |q 70874/2 |goto 42.36,78.81
step
talk Maldra Flametongue##196608
turnin Breaching the Fire Wall##70874 |goto 42.27,78.91
accept Ring of Fire##70878 |goto 42.27,78.91
step
talk Investigator Erima##196566
accept Worst of the Worst##70875 |goto 42.45,78.85
accept Fracture the Foci##70876 |goto 42.45,78.85
stickystart "Slay_Rebels_70875"
stickystart "Slay_Elementals_70875"
step
Run through the fire and enter the cave |goto 43.43,78.76 < 15 |walk |only if not (subzone("Emberslate Cavern") and _G.IsIndoors())
click Primalist Focus
|tip Inside the cave.
Destroy the Primal Focus |q 70876/1 |goto 43.85,77.82 |count 1
step
click Primalist Focus
|tip Downstairs inside the cave.
Destroy the Primal Focus |q 70876/1 |goto 44.23,77.83 |count 2
step
click Primalist Focus
|tip Downstairs inside the cave.
Destroy the Primal Focus |q 70876/1 |goto 44.67,77.61 |count 3
step
Follow the path up |goto 44.26,78.21 < 10 |walk
click Primalist Focus
|tip Upstairs inside the cave.
Destroy the Primal Focus |q 70876/1 |goto 44.67,78.39 |count 4
step
talk Maldra Flametongue##197580
|tip Downstairs inside the cave.
|tip If you can't talk to her, another player may already be fighting the elementals.
|tip If elementals are already attacking nearby, kill them without talking to Maldra.
Tell her _"I'm ready."_
Kill the enemies that attack in waves
kill Magmaticus##196599
Protect Maldra Flametongue |q 70878/2 |goto 44.52,78.16
step
label "Slay_Rebels_70875"
Kill Mistyvale enemies around this area
|tip They look like dragon people.
|tip You can find them all throughout the Emberslate Cavern cave. |notinsticky
Slay #3# Rebels |q 70875/1 |goto 44.26,78.12
step
label "Slay_Elementals_70875"
kill Flickering Ember##197906+
|tip They look like fire elementals.
|tip You can find them all throughout the Emberslate Cavern cave. |notinsticky
Slay #4# Elementals |q 70875/2 |goto 44.26,78.12
step
Leave the cave |goto 43.43,78.76 < 15 |walk |only if subzone("Emberslate Cavern") and _G.IsIndoors()
talk Investigator Erima##196566
turnin Ring of Fire##70878 |goto 42.45,78.85
turnin Worst of the Worst##70875 |goto 42.45,78.85
turnin Fracture the Foci##70876 |goto 42.45,78.85
accept Report on the Rebels##70879 |goto 42.45,78.85
step
talk Captain Drine##189842
|tip At the top of the tower.
turnin Report on the Rebels##70879 |goto Valdrakken/0 55.94,39.96
step
talk Zuttiki##190527
turnin Reservoir Reservations##72190 |goto Thaldraszus/0 49.54,58.86
accept Wotcher, Watcher?##65913 |goto Thaldraszus/0 49.54,58.86
step
Enter the building |goto 47.80,59.47 < 10 |walk
Find Mara |q 65913/1 |goto 46.52,60.00
|tip Inside the building.
step
talk Mara##194252
|tip Inside the building.
Awaken Mara |q 65913/2 |goto 46.52,60.00
step
Leave the building |goto 47.80,59.47 < 10 |walk |only if _G.IsIndoors()
talk Mara##189045
turnin Wotcher, Watcher?##65913 |goto 49.61,58.76
accept Where There's a Ward, There's a Way##70139 |goto 49.61,58.76
step
talk Zuttiki##190527
accept Preventative Maintenance##65918 |goto 49.54,58.86
step
Enter the North Hall |q 70139/1 |goto 51.42,56.36
|tip Up on the platform, at the entrance of the building.
step
Enter the building up on the platform |goto 51.42,56.36 < 10 |walk
click Broken Ward Stone
|tip Inside the building.
Check the North Ward |q 70139/2 |goto 52.25,54.73
step
Leave the building |goto 51.42,56.36 < 10 |walk |only if _G.IsIndoors()
Enter the East Hall |q 70139/3 |goto 51.52,61.40
|tip Up on the platform, at the entrance of the building.
step
Enter the building up on the platform |goto 51.52,61.40 < 10 |walk
click Broken Ward Stone
|tip Inside the building.
Check the East Ward |q 70139/4 |goto 52.52,62.80
step
Leave the building |goto 51.52,61.40 < 10 |walk |only if _G.IsIndoors()
Kill enemies around this area
|tip You can find them all around the perimeter of this structure.
|tip Only enemies that look like elementals will count for the quest goal.
Slay #8# Unleashed Elementals |q 65918/1 |goto 49.29,58.62
step
talk Zuttiki##190527
turnin Preventative Maintenance##65918 |goto 49.54,58.86
step
talk Mara##189045
turnin Where There's a Ward, There's a Way##70139 |goto 49.61,58.76
accept We Don't Negotiate with Primalists##65916 |goto 49.61,58.76
step
talk Zuttiki##190527
accept Refti Retribution##65921 |goto 49.54,58.86
stickystart "Rescue_Refti_Survivors"
stickystart "Take_Revenge_Against_The_Primalists"
step
Enter the cave |goto 51.99,57.57 < 20 |walk
kill Ko'jo##186367 |q 65916/2 |goto 53.51,56.09
|tip To be able to attack him, kill the 2 elementals channeling near him.
|tip Upstairs inside the cave.
step
click Missing Ward Pieces
|tip Upstairs inside the cave.
Retrieve the Missing Ward Pieces |q 65916/1 |goto 53.45,56.21
step
label "Rescue_Refti_Survivors"
clicknpc Refti Corpse##196474+
|tip They look like lizard people laying on the ground around this area.
|tip The ones that can be rescued will be outlined in a slight yellow glow.
|tip Inside the cave.
Rescue #4# Refti Survivors |q 65921/1 |goto 52.88,57.20
step
label "Take_Revenge_Against_The_Primalists"
Kill enemies around this area
|tip Inside the cave.
Take Revenge Against the Primalists |q 65921/2 |goto 52.88,57.20
|tip Fill the bar in the quest tracker area. |notinsticky
step
talk Zuttiki##190527
turnin Refti Retribution##65921 |goto 49.54,58.86
step
talk Mara##189045
turnin We Don't Negotiate with Primalists##65916 |goto 49.61,58.76
accept For the Ward!##65920 |goto 49.61,58.76
step
Enter the building |goto 47.80,59.47 < 10 |walk
click Broken Ward Stone
|tip Inside the building.
Reactivate the West Ward |q 65920/1 |goto 46.45,60.02
step
Leave the building |goto 47.80,59.47 < 10 |walk |only if _G.IsIndoors()
Enter the building up on the platform |goto 51.52,61.40 < 10 |walk
click Broken Ward Stone
|tip Inside the building.
Reactivate the East Ward |q 65920/3 |goto 52.52,62.80
step
Leave the building |goto 51.52,61.40 < 10 |walk |only if _G.IsIndoors()
Enter the building up on the platform |goto 51.42,56.36 < 10 |walk
click Broken Ward Stone
|tip Inside the building.
Reactivate the North Ward |q 65920/2 |goto 52.25,54.73
step
Leave the building |goto 51.42,56.36 < 10 |walk |only if _G.IsIndoors()
click Warding Console
Activate the Console |q 65920/4 |goto 49.54,58.76
step
talk Mara##189045
turnin For the Ward!##65920 |goto 49.61,58.76
step
Enter the cave high up on the mountain |goto 50.05,70.26 < 10 |walk
talk Harleen Chirpsnide##183912
|tip Inside the cave.
turnin Lost to the Skies##71239 |goto 49.95,69.79
accept Flying Rocs##66071 |goto 49.95,69.79
step
talk Segallia##184591
|tip She walks around this area.
|tip Inside the cave.
accept Smash 'Em to Feathereens##65267 |goto 49.99,69.76
stickystart "Kill_Screechflight_Witherers"
stickystart "Kill_Screechflight_Hexclaws"
step
clicknpc Injured Bluefeather Roc##184481+
|tip They look like large darker blue birds.
Mend #8# Injured Bluefeather Rocs |q 66071/1 |goto 50.41,71.14
step
label "Kill_Screechflight_Witherers"
kill 8 Screechflight Witherer##183954 |q 65267/1 |goto 50.41,71.14
|tip They look like harpies with white feathers.
step
label "Kill_Screechflight_Hexclaws"
kill 10 Screechflight Hexclaw##183995 |q 65267/2 |goto 50.41,71.14
|tip They look like harpies with black feathers.
step
Enter the cave |goto 50.05,70.26 < 10 |walk
talk Harleen Chirpsnide##183912
|tip Inside the cave.
turnin Flying Rocs##66071 |goto 49.95,69.79
step
talk Segallia##184591
|tip She walks around this area.
|tip Inside the cave.
turnin Smash 'Em to Feathereens##65267 |goto 49.99,69.76
accept Plucking Parts##65373 |goto 49.99,69.76
step
talk Harleen Chirpsnide##183912
|tip Inside the cave.
accept A Roc-ing Appetite##65313 |goto 49.95,69.79
accept Explosive Excrement##65490 |goto 49.95,69.79
stickystart "Fill_The_Chirpsnide_Auto_Excre_Collector"
step
Enter the cave |goto 51.34,72.36 < 20 |walk
click Feather-Plucker 3300 Gasket
|tip It looks like a metal cogwheel on the ground.
|tip Inside the cave.
collect Feather-Plucker 3300 Gasket##189453 |q 65373/2 |goto 51.48,73.57
step
Enter the small side room inside the cave |goto 50.89,74.45 < 15 |walk
click Feather-Plucker 3300 Bolts
|tip It looks like a small pile of metal bolts and nuts on the ground.
|tip Downstairs inside the cave.
collect Feather-Plucker 3300 Bolts##191178 |q 65373/4 |goto 51.02,74.67
step
Follow the path down |goto 50.33,75.55 < 15 |walk
click Feather-Plucker 3300 Exhaust Pipe
|tip It looks like a grey and gold metal pipe on the ground.
|tip Downstairs inside the cave.
collect Feather-Plucker 3300 Exhaust Pipe##191177 |q 65373/3 |goto 49.85,76.10
step
Follow the path down |goto 49.09,74.33 < 15 |walk
kill Hawthia Roc-Muncher##184592 |q 65313/1 |goto 48.90,75.17
|tip Downstairs inside the cave.
collect Screechflight Scroll##189361 |n
accept Rolling in the Screech##65475 |goto 48.90,75.17
step
click Feather-Plucker 3300 Gears
|tip It looks like a pile of metal cogwheels on the ground.
|tip Downstairs inside the cave.
collect Feather-Plucker 3300 Gears##191176 |q 65373/1 |goto 48.81,75.35
step
label "Fill_The_Chirpsnide_Auto_Excre_Collector"
use The Chirpsnide Auto-Excre-Collector##190188
|tip Run over the Rocdrop Scarabs to squish them.
|tip Use the item near their corpses after you squish them.
|tip They look like small beetles on the ground.
|tip You can find them all throughout the cave.
Fill the Chirpsnide Auto-Excre-Collector |q 65490/1 |goto 50.60,74.22
step
Leave the cave |goto 50.24,72.28 < 10 |walk |only if (subzone("Bluefeather Cliffs") or subzone("Thaldraszus")) and _G.IsIndoors()
Enter the cave |goto 50.05,70.26 < 10 |walk
talk Segallia##184591
|tip She walks around this area.
|tip Inside the cave.
turnin Plucking Parts##65373 |goto 49.98,69.80
step
talk Harleen Chirpsnide##183912
|tip Inside the cave.
turnin A Roc-ing Appetite##65313 |goto 49.95,69.79
turnin Rolling in the Screech##65475 |goto 49.95,69.79
turnin Explosive Excrement##65490 |goto 49.95,69.79
accept Separating the Yolk##65287 |goto 49.95,69.79
accept A Nest of Our Own##65371 |goto 49.95,69.79
step
talk Segallia##184591
|tip She walks around this area.
|tip Inside the cave.
accept It's Plucking Time##65374 |goto 49.98,69.80
stickystart "Pluck_Hatchling_Feathers"
stickystart "Collect_Screechflight_Staves"
stickystart "Save_Bluefeather_Eggs"
stickystart "Collect_Screechflight_Talons"
step
Kill enemies around this area
|tip They look like water and steam elementals.
|tip Down in the canyon, in the water.
collect 3 Streamborne's Core##189974 |q 65371/3 |goto 46.39,70.01
step
label "Pluck_Hatchling_Feathers"
use Feather-Plucker 3300##189454
|tip Use it on Snatched Hatchlings.
|tip They look like small blue birds flying in the air around this area.
|tip Down in the canyon and high up on the ledge. |notinsticky
Pluck #6# Hatchling Feathers |q 65374/1 |goto 46.39,70.01
step
label "Collect_Screechflight_Staves"
kill Screechflight Cursewife##184816+
|tip They look like blue harpies.
|tip Down in the canyon and high up on the ledge. |notinsticky
collect 6 Screechflight Staff##189979 |q 65371/2 |goto 46.39,70.01
step
label "Save_Bluefeather_Eggs"
click Bluefeather Roc Egg+
|tip They look like large white eggs in nests on the ground around this area.
|tip Down in the canyon and high up on the ledge. |notinsticky
Save #20# Bluefeather Eggs |q 65287/1 |goto 46.39,70.01
step
label "Collect_Screechflight_Talons"
Kill Screechflight enemies around this area
|tip They look like harpies. |notinsticky
|tip Down in the canyon and high up on the ledge. |notinsticky
collect 20 Screechflight Talon##189981 |q 65371/1 |goto 46.39,70.01
step
talk Segallia##184591
turnin It's Plucking Time##65374 |goto 43.00,71.48
step
talk Harleen Chirpsnide##183912
turnin Separating the Yolk##65287 |goto 43.00,71.45
turnin A Nest of Our Own##65371 |goto 43.00,71.45
accept Screechflight Potluck##65778 |goto 43.00,71.45
step
use the Im-PECK-able Screechflight Disguise##191681
|tip In the entrance of the cave.
Put on the Disguise |q 65778/1 |goto 43.42,71.60
step
Enter the cave |goto 43.42,71.60 < 15 |walk
talk Chef Fry-Aerie##187280
|tip Inside the cave.
Choose _"<Show the "egg" to the Chef.>"_
Convince the Screechflight Chef |q 65778/2 |goto 43.56,72.09
step
Toss the Egg into the Screechflight Cauldron |q 65778/3 |goto 43.56,72.09
|tip Use the "Toss the "Egg"" ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
step
Watch the dialogue
|tip Inside the cave.
Knock the Screechflight Sauciere Out |q 65778/4 |goto 43.56,72.09
step
Watch the dialogue
talk Harleen Chirpsnide##183912
|tip She runs to this location.
|tip Inside the cave.
turnin Screechflight Potluck##65778 |goto 43.53,72.11
accept The Awaited Egg-splosion##66299 |goto 43.53,72.11
step
use the Im-PECK-able Screechflight Disguise v2##191763
|tip Inside the cave.
Put on Your NEW Disguise |q 66299/1 |goto 43.53,72.11
step
click Simmering Bluefeather Chunk Stew
|tip It looks like a cauldron.
|tip Inside the cave.
Dunk the "Egg" in the Stew |q 66299/2 |goto 43.55,72.11
step
click Chirpsnide's One-Way Taxi
|tip It looks like a red rocket.
Take Chirpsnide's One-Way Taxi Up |q 66299/3 |goto 43.29,71.27
step
Enter the cave high up on the mountain |goto 44.28,72.77 < 10 |walk
click Matriarch's Egg Bowl
|tip It looks like a large bowl with red liquid in it.
|tip Inside the cave.
Place the "Egg" on the Matriarch's Egg Bowl |q 66299/4 |goto 44.50,73.04
step
Watch the dialogue
|tip Inside the cave.
|tip The egg will explode and Matriarch Avethyra will attack you.
Stay in Character |q 66299/5 |goto 44.46,73.00
step
kill Matriarch Avethyra##184847
|tip Inside the cave.
Slay the Matriarch |q 66299/6 |goto 44.46,73.00
step
Use Chirpsnide's Auto-Glider |havebuff spell:371083 |goto 44.24,72.71 |q 66299
|tip Use the "The Chirpsnide Auto-Glider" ability.
|tip It appears as a button on the screen.
|tip Next to the red arrow, high up on the mountain, next to the entrance of a cave.
step
Report to Harleen |q 66299/7 |goto 43.45,70.54
step
talk Harleen Chirpsnide##183912
turnin The Awaited Egg-splosion##66299 |goto 43.45,70.54
step
talk Szareth##193538
|tip He walks around this area.
|tip On a stone platform, overlooking the valley below.
accept Every Life Counts##69932 |goto 50.14,67.69
accept Curiosity's Price##69933 |goto 50.14,67.69
stickystart "Collect_Sun_Baked_Linens"
stickystart "Collect_Anethetic_Pollen"
step
clicknpc Stubborn Vine##193569
|tip After clicking it, run away from it to pull it out of the ground.
kill Laden Lasher##193541
collect Snipped Vine##198406 |n
Snip the Stubborn Vine |q 69933/2 |goto 48.97,66.92
step
label "Collect_Sun_Baked_Linens"
click Handwoven Basket+
|tip They look like small brown wicker baskets on the ground around this area.
collect 6 Sun-Baked Linens##198040 |q 69932/1 |goto 49.35,67.04
step
label "Collect_Anethetic_Pollen"
click Magnificent Flower+
|tip They look like large purple leafy plants on the ground around this area.
|tip You may be attacked by the bees after clicking the plants.
collect 40 Anesthetic Pollen##198042 |q 69932/2 |goto 49.35,67.04
step
Enter the building |goto 49.55,67.70 < 10 |walk
clicknpc Little Jetstream##193611
|tip Inside the building.
Bandage Little Jetstream |q 69932/3 |goto 49.42,67.92
step
talk Szareth##193538
|tip He walks around this area.
|tip On a stone platform, overlooking the valley below.
turnin Every Life Counts##69932 |goto 50.14,67.69
turnin Curiosity's Price##69933 |goto 50.14,67.69
accept Bleeding Hearts##69934 |goto 50.14,67.69
step
_Next to you:_
talk Herald Flaps##197478
|tip If another NPC is following you, accept their quests until Herald Flaps shows up.
accept To Dragonbane Keep!##71210
step
talk Talon Smoht##189018
|tip On a stone platform, overlooking the valley below.
fpath Gelikyr Post |goto 51.16,67.09
step
Find the Isolated Cave |q 69934/1 |goto 53.03,67.55
|tip At the entrance of the cave.
step
Enter the cave |goto 53.03,67.55 < 10 |walk
click Medical Supplies
|tip Inside the cave.
Deliver the Potions to the Isolated Cave |q 69934/2 |goto 53.33,67.51
step
Find the Gelikyr Infirmary |q 69934/3 |goto 51.74,69.16
|tip At the entrance of the building.
step
Enter the building |goto 51.74,69.16 < 10 |walk
click Medical Supplies
|tip Inside the building.
Deliver the Potions to the Gelikyr Infirmary |q 69934/4 |goto 51.69,69.19
step
talk Timetender Athekk##193042
|tip He walks around this area.
|tip Inside the building.
turnin Bleeding Hearts##69934 |goto 51.69,69.24
step
talk Commander Thadezus##189174
|tip On the bridge.
turnin Look to the Overlook##71179 |goto 52.66,67.29
accept What Once Was Ours##66468 |goto 52.66,67.29
step
Kill enemies around this area
click Various Totem+
|tip They look like various types of elemental totems on the ground around this area.
use the Rejuvenating Draught##192795
|tip Use it on Injured Gelikyr Guards.
|tip They look like dragon people inside the buildings around this area.
Quell the Primalist Threat |q 66468/1 |goto 53.91,64.11
|tip Fill the bar in the quest tracker area.
step
Enter the building |goto 54.05,64.31 < 15 |walk
talk Sharnax##189188
|tip He walks around this area.
|tip Inside the building.
turnin What Once Was Ours##66468 |goto 54.35,64.94
accept The Forward Push##66470 |goto 54.35,64.94
accept Prime Planning##66471 |goto 54.35,64.94
stickystart "Collect_Primalist_Orders"
step
kill Karthis Sleetsong##189246
collect Iceforged Gateway Stone##200672 |q 66470/3 |goto 53.70,63.39
step
click Elemental Gateway
Close the Elemental Gateway |q 66470/4 |goto 53.61,63.37 |count 1
step
Enter the building |goto 54.28,61.94 < 15 |walk
kill Morgg##189244
|tip He walks in and out of the building.
collect Earthen Gateway Stone##200671 |q 66470/2 |goto 54.29,61.94
step
click Elemental Gateway
|tip Inside the building.
Close the Elemental Gateway |q 66470/4 |goto 54.88,62.06 |count 2
step
Leave the building |goto 54.28,61.94 < 15 |walk |only if subzone("Gelikyr Overlook") and _G.IsIndoors()
kill Alora Mistbreeze##189243
|tip Outside, above the building.
collect Misttouched Gateway Stone##200670 |q 66470/1 |goto 54.63,62.65
step
click Elemental Gateway
Close the Elemental Gateway |q 66470/4 |goto 54.53,62.52 |count 3
step
label "Collect_Primalist_Orders"
Kill enemies around this area
|tip Not all of the enemies will drop the quest item.
collect 7 Primalist Orders##192808 |q 66471/1 |goto 54.65,63.13
step
talk Sharnax##189188
|tip At the top of the path, next to a cavern.
turnin The Forward Push##66470 |goto 54.80,64.38
turnin Prime Planning##66471 |goto 54.80,64.38
accept The Land Awakens##66473 |goto 54.80,64.38
step
kill Primordial Wrath##190579 |q 66473/1 |goto 55.32,65.25
|tip It looks like a large stone elemental.
|tip To be able to attack him, kill the 3 enemies channeling a spell on him.
|tip Inside the cavern.
step
kill Primordial Hail##189039 |q 66473/2 |goto 54.16,65.33
|tip Inside a cavern.
step
talk Sharnax##189188
|tip At the top of the path, next to a cavern.
turnin The Land Awakens##66473 |goto 54.80,64.38
accept Primal List##66472 |goto 54.80,64.38
step
talk Commander Thadezus##189174
|tip On the bridge.
turnin Primal List##66472 |goto 52.66,67.29
step
talk Waywatcher Alvi##191753
turnin The Wayward Waywatcher##71219 |goto 54.68,69.47
accept Supplying in Weight##66100 |goto 54.68,69.47
accept A Sketchy Request##66230 |goto 54.68,69.47
stickystart "Collect_Waywatcher_Supplies"
step
Kill Embertooth enemies around this area
|tip They look like lizard people.
collect Crude Tarasek Key##191317 |q 66230/1 |goto 55.74,68.44
step
click Tarasek Lockbox
|tip It looks like a metal and wooden chest.
collect Alvi's "Ledger"##191405 |q 66230/2 |goto 55.62,69.33
step
label "Collect_Waywatcher_Supplies"
click Waywatcher Supplies+
|tip They look like brown bags on the ground around this area.
collect 6 Waywatcher Supplies##191852 |q 66100/1 |goto 55.74,68.44
step
talk Waywatcher Alvi##187289
turnin Supplying in Weight##66100 |goto 56.95,67.69
turnin A Sketchy Request##66230 |goto 56.95,67.69
accept A Poisonous Palette##66456 |goto 56.95,67.69
accept Ending the Blue Period##66457 |goto 56.95,67.69
stickystart "Collect_Envenomed_Spears"
step
Enter the cave |goto 55.79,71.02 < 10 |walk
kill Bluescale##188723 |q 66457/1 |goto 55.95,71.51
|tip Inside the cave.
step
label "Collect_Envenomed_Spears"
kill Embertooth Spearhunter##188725+
|tip They look like lizard people.
collect 8 Envenomed Spear##191308 |q 66456/1 |goto 56.77,69.15
step
talk Waywatcher Alvi##187289
turnin A Poisonous Palette##66456 |goto 56.95,67.69
turnin Ending the Blue Period##66457 |goto 56.95,67.69
accept Cache and Release##66465 |goto 56.95,67.69
accept Art Imitates Life##66467 |goto 56.95,67.69
stickystart "Destroy_Spear_Caches"
step
Enter the cave |goto 56.91,67.19 < 10 |walk |only if not (subzone("Passage of Time") and _G.IsIndoors())
kill Greater Venomsprout##188814 |q 66467/1 |goto 58.29,67.19
|tip Downstairs inside the cave.
step
label "Destroy_Spear_Caches"
click Poisoned Spear Stash+
|tip They look like bunches of wooden sticks on the ground.
|tip You can find them all throughout the Passage of Time cave.
Destroy #8# Spear Caches |q 66465/1 |goto 57.84,66.74
step
Leave the cave |goto 56.91,67.19 < 10 |walk |only if subzone("Passage of Time") and _G.IsIndoors()
talk Waywatcher Alvi##187289
turnin Cache and Release##66465 |goto 54.64,69.51
turnin Art Imitates Life##66467 |goto 54.64,69.51
step
talk Chromie##187100
Tell her _"Nozdormu sent me to help."_
Watch the dialogue
Speak with Chromie |q 66320/1 |goto 57.46,78.92
step
talk Chromie##187100
turnin The Flow of Time##66320 |goto 57.46,78.92
step
talk Andantenormu##187877
accept Temporal Difficulties##66080 |goto 57.53,78.79
step
talk Azim##193458
fpath Shifting Sands |goto 57.63,79.02
step
Find the Missing Recruit |q 66080/1 |goto 54.96,75.64
step
talk Siaszerathel##187098
turnin Temporal Difficulties##66080 |goto 54.96,75.64
accept Haven't Got Time For the Pain##70136 |goto 54.96,75.64
step
click Timewalker Notes
|tip It looks like an unrolled scroll on the ground.
collect Timewalker Notes##198408 |q 70136/2 |goto 53.18,77.38
step
Enter the cave |goto 52.96,76.86 < 10 |walk
kill Crazed Alpha##194224 |q 70136/3 |goto 52.69,76.81
|tip Inside the cave.
step
click Timewalker Staff
|tip It looks like a staff on the ground.
|tip Inside the cave.
collect Timewalker Staff##198410 |q 70136/1 |goto 52.71,76.86
step
talk Siaszerathel##187098
turnin Haven't Got Time For the Pain##70136 |goto 54.96,75.64
accept Time is Running Out##66081 |goto 54.96,75.64
accept Time in a Bottle##66082 |goto 54.96,75.64
stickystart "Collect_The_Energy"
step
click Temporal Collector+
|tip They look like floating blue crystals around this area.
|tip They will appear on your minimap as yellow dots.
collect 8 Temporal Collector##192602 |q 66081/1 |goto 55.12,77.65
step
label "Collect_The_Energy"
Kill Time-Charged enemies around this area
|tip They look like various animals.
|tip Walk into the Time Motes that appear after killing the enemies.
|tip They look like floating yellow orbs of light
Collect the Energy |q 66082/1 |goto 55.77,76.95
|tip Fill the bar in the quest tracker area.
step
talk Siaszerathel##187098
turnin Time is Running Out##66081 |goto 57.46,78.92
turnin Time in a Bottle##66082 |goto 57.46,78.92
step
Watch the dialogue
talk Andantenormu##187877
accept Feels Like the First Time##66083 |goto 57.52,78.79
step
Watch the dialogue
talk Andantenormu##190479
|tip He walks to this location.
Tell him _"I am ready to begin."_
Speak with Andantenormu |q 66083/1 |goto 57.58,78.38
step
click Temporal Collector
Drain the Collector |q 66083/2 |goto 57.68,78.33
step
click Crystal Focus
Empower the Conduit |q 66083/3 |goto 57.67,78.38
step
_NOTE:_
During This Quest
|tip If your guide viewer gets hidden after a reload screen during this quest, click the "Z" minimap button to make it appear again.
Click Here to Continue |confirm |q 66083
step
click Time-Lost Artifact
Watch the dialogue
Return the Artifact |q 66083/4 |goto 57.64,78.46
step
Watch the dialogue
Restore the Personal Timeline |q 66083/5
step
Return to Thaldraszus |complete zone("Thaldraszus") |q 66083
step
talk Andantenormu##187877
|tip He walks to this location.
turnin Feels Like the First Time##66083 |goto 57.52,78.79
accept Times Like These##66084 |goto 57.52,78.79
step
talk Siaszerathel##187098
accept If We Could Turn Back Time##66085 |goto 57.46,78.92
stickystart "Collect_Temporal_Residue"
step
click Time Rift
|tip It looks like a yellow swirling portal.
Close the First Rift |q 66085/1 |goto 58.59,78.22
step
talk Siaszerathel##187339
Tell her _"Show me what you got."_
Watch the dialogue
Observe Zera |q 66085/2 |goto 59.81,79.31
step
click Time Rift
|tip It looks like a yellow swirling portal.
Close the Second Rift |q 66085/3 |goto 60.01,79.28
step
click Time Rift
|tip It looks like a yellow swirling portal.
Close the Third Rift |q 66085/4 |goto 59.97,77.20
step
Watch the dialogue
talk Aeonormu##187504
Ask him _"Are you one of the Timewalkers?"_
Meet the Stranger |q 66085/5 |goto 59.95,77.23
step
label "Collect_Temporal_Residue"
Kill enemies around this area
collect 100 Temporal Residue##192809 |q 66084/1 |goto 59.11,78.16
step
talk Siaszerathel##187098
turnin If We Could Turn Back Time##66085 |goto 57.46,78.92
step
talk Andantenormu##187877
turnin Times Like These##66084 |goto 57.53,78.79
step
talk Aeonormu##190929
accept Closing Time##66087 |goto 57.55,78.86
step
extraaction Temporal Burst##376679
|tip Use the "Temporal Burst" ability near enemies and allies.
|tip It appears as a button on the screen.
|tip It will damage enemies and strengthen allies.
|tip You will get quest progress by strengthening allies.
Kill enemies around this area
click Various Object+
|tip They look like various different objects in yellow orbs on top of pedestals.
|tip They will appear on your minimap as yellow dots.
click Time Rift+
|tip They look like yellow swirling portals.
Preserve the Timeline |q 66087/1 |goto 57.49,83.13
|tip Fill the bar in the quest tracker area.
step
talk Aeonormu##190929
turnin Closing Time##66087 |goto 57.55,78.86
step
talk Andantenormu##187877
accept Catching Up to Chromie##65935 |goto 57.52,78.79
step
Meet Chromie at the Bronze Temple |q 65935/1 |goto 59.58,81.69
|tip Up on the platform.
step
talk Chromie##186711
|tip Up on the platform.
turnin Catching Up to Chromie##65935 |goto 59.58,81.69
accept Time-Locked Timewalkers##65947 |goto 59.58,81.69
accept Cracks in Time##65948 |goto 59.58,81.69
step
talk Andantenormu##186433
accept Quelling Causalities##66646 |goto 59.56,82.66
stickystart "Slay_The_Time_Elementals"
step
Free the Timewalker |q 65947/1 |goto 59.01,82.77 |count 1
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
Free the Timewalker |q 65947/1 |goto 58.72,82.43 |count 2
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
Free the Timewalker |q 65947/1 |goto 58.38,82.14 |count 3
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
Free the Timewalker |q 65947/1 |goto 58.13,82.83 |count 4
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip After using the ability, run away from the crystal to yank it.
Yank the West Crystal |q 65948/1
click Temporal Crystal Chunk+
|tip They look like various sized blue rocks.
|tip They appear on the ground around where the crystal lands after you pull it.
Collect #50# Temporal Energy |q 65948/3 |goto 58.35,83.09 |count 50
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.31,81.39 |count 5
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip After using the ability, run away from the crystal to yank it.
Yank the East Crystal |q 65948/2
click Temporal Crystal Chunk+
|tip They look like various sized blue rocks.
|tip They appear on the ground around where the crystal lands after you pull it.
Collect #100# Temporal Energy |q 65948/3 |goto 60.71,80.55 |count 100
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.86,80.03 |count 6
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.45,79.74 |count 7
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.27,80.40 |count 8
step
label "Slay_The_Time_Elementals"
Kill enemies around this area
|tip They look like fire elementals.
Slay the Time Elementals |q 66646/1 |goto 60.51,80.57
|tip Fill the bar in the quest tracker area.
You can find more around [58.73,82.74]
step
talk Andantenormu##186433
turnin Quelling Causalities##66646 |goto 59.56,82.67
step
talk Chromie##186711
turnin Time-Locked Timewalkers##65947 |goto 59.58,81.69
turnin Cracks in Time##65948 |goto 59.58,81.69
accept The Once and Future Team##65938 |goto 59.58,81.69
step
extraaction Temporal Destabilizing Beam##372959
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip After using the ability, run down the ramp to pull on the bubble.
Use the Timewalker Staff on the Temple Door Bubble |q 65938/1 |goto 60.60,83.46
step
kill Colossal Causality##186672
|tip It looks like a large fire elemental.
|tip Your allies will help you fight.
Slay the Giant Time Elemental |q 65938/2 |goto 60.72,83.68
step
talk Chromie##186711
turnin The Once and Future Team##65938 |goto 59.58,81.69
accept The Never-Final Countdown##65962 |goto 59.58,81.69
step
talk Chromie##186711
Choose _"<Tell Chromie you're ready.>"_
Speak to Chromie |q 65962/1 |goto 59.58,81.69
step
talk Warden Dialash##187013
fpath Temporal Conflux |goto 59.91,81.34
step
talk Archivist Areniel##192543
accept An Anomalous Shrine##67093 |goto 60.29,82.03
accept Entropic Remnants##67154 |goto 60.29,82.03
step
talk Nozdormu##186931
turnin The Never-Final Countdown##65962 |goto 60.05,82.45
accept Tumbling Through Time##70040 |goto 60.05,82.45
step
talk Andantenormu##185915
Tell him _"Nozdormu requests your presence."_
Speak with Andantenormu |q 70040/2 |goto 60.19,81.76
step
talk Soridormi##192403
Tell her _"Nozdormu requests your presence."_
Speak with Soridormi |q 70040/1 |goto 59.52,82.52
step
talk Siaszerathel##192404
Tell her _"Nozdormu requests your presence."_
Speak with Siaszerathel |q 70040/3 |goto 59.30,82.15
step
talk Nozdormu##186931
Tell him _"Everyone is gathered."_
Watch the dialogue
Speak with Nozdormu |q 70040/4 |goto 60.05,82.45
step
talk Nozdormu##186931
turnin Tumbling Through Time##70040 |goto 60.05,82.45
accept To the Future!##66028 |goto 60.05,82.45
accept Temporal Tuning##66029 |goto 60.05,82.45
step
kill Ancient Timekeeper##192516
|tip It may not be here if another player just killed it.
|tip If it's not here, look for the Anomalous Mote on the ground around this area.
click Anomalous Mote
|tip It looks like a floating yellow orb of light.
|tip It appears on the ground after you kill the Ancient Timekeeper.
Inspect the Anomalous Mote |q 67093/2 |goto 59.41,74.40
step
Enter the building |goto 59.42,74.03 < 10 |walk
click Cache of the Timeless One
|tip It looks like a large chest.
|tip Inside the building.
|tip Don't fly into the building, walk instead, so you don't lose the buff.
|tip If you lose the buff, click the orb outside again, and walk into the building again.
|tip Avoid the objects, orbs, and beams of light as you run to it.
|tip You will be teleported back outside after looting it.
collect Echo of Duty##194687 |q 67093/3 |goto 59.49,71.86
step
Kill enemies around this area
|tip They look like various animals.
collect 8 Vitrified Sand##199064 |q 67154/1 |goto 59.08,78.81
step
talk Archivist Areniel##192543
|tip Up on the platform.
turnin Entropic Remnants##67154 |goto 60.29,82.03
step
click Portal to the Primalist Future
|tip It looks like a yellow swirling portal.
Take the Portal to the Future |q 66028/1 |goto 59.83,82.24
step
Enter the Primalist Future |complete zone("Primalist Tomorrow") |q 66028
step
talk Soridormi##183860
turnin To the Future!##66028 |goto Primalist Tomorrow/0 61.07,50.82
accept Resistance Isn't Futile##66030 |goto Primalist Tomorrow/0 61.07,50.82
step
talk Possible Future You##186953
accept Making Time##66031 |goto 61.46,50.19
stickystart "Heal_Injured_Resistance_Fighters"
stickystart "Collect_Elemental_Essences"
step
use the Chrono Crystal##192749
|tip Use it near Chromie and Eternus.
|tip They look like large dragons tumbling in the air.
Fix the Temporal Position |q 66029/1 |goto 47.10,41.28
step
label "Heal_Injured_Resistance_Fighters"
use the Bandages##192467
|tip Use them on Injured Resistance Fighters.
clicknpc Injured Resistance Fighter##187341+
|tip They look like allies laying on the ground around this area.
Heal #10# Injured Resistance Fighters |q 66030/1 |goto 51.12,30.48
You can find more around: |notinsticky
[45.12,18.99]
[44.58,33.95]
step
label "Collect_Elemental_Essences"
Kill enemies around this area
extraaction Accompanied by Zera##372444
|tip Use the "Accompanies by Zera" ability.
|tip Some of the enemies are elite, but Siaszerathel will follow you and help you fight.
|tip Try focus on finding non-elite enemies, so you can complete the quest faster.
collect 30 Elemental Essence##192454 |q 66031/1 |goto 45.91,30.57
step
talk Possible Future You##186953
|tip Up on the platform.
turnin Making Time##66031 |goto 61.46,50.20
step
talk Soridormi##183860
|tip Up on the platform.
turnin Resistance Isn't Futile##66030 |goto 61.08,50.82
accept Return to the Present##66032 |goto 61.08,50.82
step
click Portal to Temporal Conflux
|tip It looks like a yellow swirling portal.
Return to the Present |complete zone("Thaldraszus") |goto 61.01,50.52 |q 66032
step
talk Nozdormu##186931
turnin Temporal Tuning##66029 |goto Thaldraszus/0 60.05,82.45
turnin Return to the Present##66032 |goto Thaldraszus/0 60.05,82.45
accept To the... Past?##66033 |goto Thaldraszus/0 60.05,82.45
accept Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
step
click Portal to Azmerloth
|tip It looks like a yellow swirling portal.
Take the Portal to Azmerloth |q 66033/1 |goto 59.98,82.08
step
Travel to Azmerloth |complete zone("Azmerloth") |q 66033
step
talk Andantenormu##187344
turnin To the... Past?##66033 |goto Azmerloth/0 59.83,66.14
accept Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
step
talk Varian Wryngrrlgulgll##183854
accept Mugurlglrlgl!##66036 |goto Azmerloth/0 59.91,65.98
|only if Alliance
stickystart "Kill_Deathling_Destroyers_Alliance"
stickystart "Collect_Temprgrlglr_Motes_Alliance"
stickystart "Kill_Deathlings_Alliance"
step
use the Chrono Crystal##192749
|tip Use it near Chromie and Eternus.
|tip They look like large dragons tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto 61.59,61.82
|only if Alliance
step
label "Kill_Deathling_Destroyers_Alliance"
kill 5 Deathling Destroyer##190214 |q 66036/2 |goto 60.22,65.02
|tip They look like large metal murlocs around this area.
|only if Alliance
step
label "Collect_Temprgrlglr_Motes_Alliance"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto 60.22,65.02
|tip They look like floating yellow orbs of light around this area.
|tip Walk into them to collect them.
|tip They will appear on your minimap as yellow dots.
|only if Alliance
step
label "Kill_Deathlings_Alliance"
kill 25 Deathling##187342 |q 66036/1 |goto 60.22,65.02
|only if Alliance
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto 59.83,66.14
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Mugurlglrlgl!##66036 |goto 59.91,65.98
accept Deathwingurlugull!##70373 |goto 59.91,65.98
|only if Alliance
step
Watch the dialogue
clicknpc Murloc Hopper##195209
|tip It looks like an airplane that lands at this location.
Enter the Hopper |q 70373/1 |goto 59.81,65.70
|only if Alliance
step
kill Deathwingurlugull##195314 |q 70373/2 |goto 59.83,59.04
|tip It looks like a huge murloc.
|tip Use the abilities on your action bar.
|only if Alliance
step
Return to Varian Wryngrrlgulgll |outvehicle |goto 59.73,65.62 |q 70373
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Deathwingurlugull!##70373 |goto 59.91,65.98
|only if Alliance
step
talk Thrallgrulgulgul##183855
accept Mugurlglrlgl!##66704 |goto Azmerloth/0 59.98,65.97
|only if Horde
stickystart "Kill_Deathling_Destroyers_Horde"
stickystart "Collect_Temprgrlglr_Motes_Horde"
stickystart "Kill_Deathlings_Horde"
step
use the Chrono Crystal##192749
|tip Use it near Chromie and Eternus.
|tip They look like large dragons tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto 61.59,61.82
|only if Horde
step
label "Kill_Deathling_Destroyers_Horde"
kill 5 Deathling Destroyer##190214 |q 66704/2 |goto 60.22,65.02
|tip They look like large metal murlocs around this area.
|only if Horde
step
label "Collect_Temprgrlglr_Motes_Horde"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto 60.22,65.02
|tip They look like floating yellow orbs of light around this area.
|tip Walk into them to collect them.
|tip They will appear on your minimap as yellow dots.
|only if Horde
step
label "Kill_Deathlings_Horde"
kill 25 Deathling##187342 |q 66704/1 |goto 60.22,65.02
|only if Horde
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto 59.83,66.14
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Mugurlglrlgl!##66704 |goto 59.98,65.97
accept Deathwingurlugull!##70371 |goto 59.98,65.97
|only if Horde
step
Watch the dialogue
clicknpc Murloc Hopper##195209
|tip It looks like an airplane that lands at this location.
Enter the Hopper |q 70371/1 |goto 59.81,65.70
|only if Horde
step
kill Deathwingurlugull##195314 |q 70371/2 |goto 59.83,59.04
|tip It looks like a huge murloc.
|tip Use the abilities on your action bar.
|only if Horde
step
Return to Thrallgrulgulgul |outvehicle |goto 59.73,65.62 |q 70371
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Deathwingurlugull!##70371 |goto 59.98,65.97
|only if Horde
step
talk Andantenormu##187344
accept Back to Reality##66037 |goto Azmerloth/0 59.83,66.14
step
click Portal to Temporal Conflux
|tip It looks like a yellow swirling portal.
Return to the Present |complete zone("Thaldraszus") |goto 59.72,66.11 |q 66037
step
talk Nozdormu##186931
turnin Back to Reality##66037 |goto Thaldraszus/0 60.05,82.45
turnin Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
accept On Your Mark... Get Set...##66660 |goto Thaldraszus/0 60.05,82.45
step
click Portal to The Gnoll War
|tip It looks like a yellow swirling portal.
Take the Time Portal to the Gnoll War |q 66660/1 |goto 59.92,82.19
step
Travel to the Past |complete zone("The Gnoll War") |q 66660
step
talk Andantenormu##187435
turnin On Your Mark... Get Set...##66660 |goto The Gnoll War/0 43.38,69.22
step
_NOTE:_
During the Next Quest
|tip The next quest is a timed quest.
|tip You will be following the road to yellow swirling portals, in multiple zones.
|tip Walk into the yellow swirling portals to travel to the next zone.
|tip As you travel to the portals, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
Click Here to Continue |confirm |q 66038 |future
step
talk Andantenormu##187435
accept Race Through Time!##66038 |goto 43.38,69.22
step
Travel to the War of the Shifting Sands |complete zone("War of the Shifting Sands") |goto 32.38,49.69 |q 66038
|tip Follow the road and run into the yellow swirling portal.
|tip As you travel, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
step
Travel to the Pandaren Revolution |complete zone("Pandaren Revolution") |goto War of the Shifting Sands/0 39.55,76.76 |q 66038
|tip Follow the road and run into the yellow swirling portal.
|tip As you travel, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
step
Race Through Time |q 66038/1 |goto Pandaren Revolution/0 15.18,58.51
|tip Follow the road and run into the yellow swirling portal.
|tip As you travel, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
step
talk Andantenormu##187435
turnin Race Through Time!##66038 |goto The Black Empire/0 52.35,73.75
accept Chromie Time##66039 |goto The Black Empire/0 52.35,73.75
step
Follow the path and run up the stairs |goto 57.63,59.33 < 20 |only if walking
use the Chrono Crystal##192749
|tip Use it near Chromie.
|tip She looks like a large yellow dragon tumbling in the air.
extraaction Temporal Displacement##383031
|tip Use the "Temporal Displacement" ability.
|tip It appears as a button on the screen.
|tip This damages enemies and buffs you.
Fix the Temporal Position |q 66039/1 |goto 53.87,43.43
step
talk Chromie##186499
|tip She flies down and walks to this location.
turnin Chromie Time##66039 |goto 53.40,43.97
accept Back to the Future##66040 |goto 53.40,43.97
step
talk Chromie##186499
Tell her _"Let's do this!"_
|tip You may not be able to talk to her if another player already started the quest.
Kill the enemies that attack in waves
extraaction Temporal Displacement##383031
|tip Use the "Temporal Displacement" ability.
|tip It appears as a button on the screen.
|tip This damages enemies and buffs you.
Defend Your Allies |q 66040/2 |goto 53.40,43.97
|tip Fill the bar in the quest tracker area.
step
Return to the Present |complete zone("Thaldraszus") |q 66040
step
talk Chromie##183972
Choose _"<Quietly ask Chromie if Nozdormu is okay.>"_
Check in with Chromie |q 66040/3 |goto Thaldraszus/0 60.08,82.41
step
talk Nozdormu##186931
turnin Back to the Future##66040 |goto 60.05,82.45
accept Moving On##66221 |goto 60.05,82.45
step
talk Nozdormu##187669
|tip At the top of the tower.
turnin An Anomalous Shrine##67093 |goto Valdrakken/0 61.47,39.09
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Tell her _"All of the Oathstones have been restored."_
Speak with Alexstrasza |q 66221/1 |goto 58.12,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Moving On##66221 |goto 58.12,34.87
step
talk Vesri##189339
|tip On a stone platform, overlooking the water.
fpath Algeth'era |goto Thaldraszus/0 49.47,41.94
step
talk Officer Obernax##189237
|tip On a stone platform, overlooking the water.
fpath Veiled Ossuary |goto 62.07,18.93
step
talk Nirazal##193508
|tip On a stone platform, overlooking the lava.
fpath Vault of the Incarnates |goto 72.14,56.45
step
|next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)",{
author="support@zygorguides.com",
},[[
step
accept The Dragon Isles Await##65436
|tip You will accept this quest automatically.
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Standing in an open window on the outer wall of Stormwind Keep.
turnin The Dragon Isles Await##65436 |goto Stormwind City/0 79.80,27.02
accept Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.02
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
Choose _<Listen to Wrathion and Turalyon.>_
Speak with Wrathion |q 66577/1 |goto 79.80,27.02
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto 79.80,27.02
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Scalecommander Azurathel##189603
|tip Inside the building.
accept The Obsidian Warders##72240 |goto 79.94,26.95
|only if Alliance
step
talk Toddy Whiskers##189602
|tip Inside the building.
accept Expeditionary Coordination##66589 |goto 79.72,27.33
|only if Alliance
step
talk Thaelin Darkanvil##189767
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 66589/1 |goto 64.14,37.22
|only if Alliance
step
talk Cataloger Wulferd##189765
Tell him _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 66589/3 |goto 63.35,69.90
|only if Alliance
step
talk Dervishian##198401
|tip On top of the building.
Tell her _"Scalecommander Azurathel would like you to meet him at the docks."_
Deliver the Orders to Dervishian |q 72240/1 |goto 50.91,67.39
|only if Alliance
step
talk Pathfinder Jeb##189763
Tell him _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 66589/2 |goto 38.31,45.55
|only if Alliance
step
talk Toddy Whiskers##189077
turnin Expeditionary Coordination##66589 |goto 22.71,55.66
turnin The Obsidian Warders##72240 |goto 22.71,55.66
|only if Alliance
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip He appears out of a portal.
accept Whispers on the Winds##66596 |goto 23.01,56.14
|only if Alliance
step
talk Archmage Khadgar##193450
Choose _<Ask Khadgar what happened.>_
Speak with Archmage Khadgar |q 66596/1 |goto 23.01,56.14
|only if Alliance
step
talk Wrathion##189569
turnin Whispers on the Winds##66596 |goto 22.94,55.99
|only if Alliance
step
talk Toddy Whiskers##189077
accept To the Dragon Isles!##67700 |goto 22.72,55.67
|only if Alliance
step
Wait for the Rugged Dragonscale at Stormwind Docks |q 67700/1 |goto 21.83,56.53
|tip Wait for the boat to arrive, then board the boat.
|only if Alliance
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 67700
|tip Wait for the boat to sail to the Dragon Isles.
|only if Alliance
step
Ride the Rugged Dragonscale to Dragon Isles |q 67700/2 |goto The Waking Shores/0 82.13,31.88
|tip Walk into the camp.
|only if Alliance
step
Watch the dialogue
talk Toddy Whiskers##189022
|tip She runs to this location.
turnin To the Dragon Isles!##67700 |goto 82.13,31.88
accept Explorers in Peril##70122 |goto 82.13,31.88
|only if Alliance
step
talk Scalecommander Azurathel##189035
accept Primal Pests##70123 |goto 82.16,31.85
|only if Alliance
step
talk Thaelin Darkanvil##189021
accept Practice Materials##70124 |goto 82.09,31.88
|only if Alliance
stickystart "Kill_Primal_Proto_Drakes"
stickystart "Collect_Primal_Proto_Whelp_Scales"
step
Follow the path |goto 81.70,32.65 < 30 |only if walking
click Protodragon Rib Cage
|tip Run around the mountain.
Rescue Professor Cogcatcher |q 70122/1 |goto 83.55,33.60
|only if Alliance
step
clicknpc Archivist Rellid##189055
|tip He looks like a Draenei being flown around this area by 2 smaller dragons.
Rescue Archivist Rellid |q 70122/2 |goto 82.93,36.04
|only if Alliance
step
clicknpc Spelunker Lockeye##189052
|tip She looks like a Draenei hanging from a chain over the lava.
Rescue Spelunker Lockeye |q 70122/3 |goto 79.50,35.35
|only if Alliance
step
label "Kill_Primal_Proto_Drakes"
kill 10 Primal Proto-Drake##193806 |q 70123/1 |goto 81.66,34.60
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
|only if Alliance
step
label "Collect_Primal_Proto_Whelp_Scales"
kill Primal Proto-Whelp##193876+
|tip They look like tiny dragons flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
collect 15 Primal Proto-Whelp Scale##198398 |q 70124/1 |goto 81.66,34.60
|only if Alliance
step
Follow the path and run up the stairs |goto 77.61,32.99 < 40 |only if walking and not subzone("Wingrest Embassy")
talk Toddy Whiskers##187251
turnin Explorers in Peril##70122 |goto 76.63,33.63
accept Where is Wrathion?##70125 |goto 76.63,33.63
|only if Alliance
step
talk Sendrax##193362
Ask him _"Why aren't the dragons here to meet us?"_
Watch the dialogue
Inquire after the Missing Dragons |q 70125/1 |goto 76.58,33.67
|only if Alliance
step
talk Sendrax##193362
turnin Where is Wrathion?##70125 |goto 76.58,33.67
|only if Alliance
step
Story Not Complete Detected	|next "Waking_Shores_Alliance"		|only if not achieved(16363)
Story Complete Detected (Alt)	|next "Scouting_Map_Alliance"		|only if achieved(16363) and not (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
All Stories Complete Detected	|next "All_Stories_Complete"		|only if achieved(16363) and (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
|only if Alliance
step
label "Scouting_Map_Alliance"
talk Sendrax##193362
accept Adventuring in the Dragon Isles##72293 |goto 76.58,33.67
|only if Alliance
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are choosing the zone you wish to do quests in first.
|tip Pick whichever you like, it doesn't matter.
accept The Waking Shores##72266 |or |goto 76.52,34.23 |only if not completedq(72266)
accept Ohn'ahran Plains##72267 |or |goto 76.52,34.23 |only if not completedq(72267)
accept Azure Span##72268 |or |goto 76.52,34.23 |only if not completedq(72268)
accept Thaldraszus##72269 |or |goto 76.52,34.23 |only if not completedq(72269)
|only if Alliance
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in the Dragon Isles##72293
|only if Alliance
step
talk Thaelin Darkanvil##189058
turnin Practice Materials##70124 |goto 76.48,34.37
|only if Alliance
step
talk Scalecommander Azurathel##187252
turnin Primal Pests##70123 |goto 76.75,34.41
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Alliance
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Alliance
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Alliance"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\The Azure Span (Story Only)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Thaldraszus (Story Only)"
|only if Alliance
step
label "Waking_Shores_Alliance"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Alliance
step
talk Thaelin Darkanvil##189058
turnin Practice Materials##70124 |goto 76.48,34.37
|only if Alliance
step
talk Scalecommander Azurathel##187252
turnin Primal Pests##70123 |goto 76.75,34.41
|only if Alliance
step
Enter the building |goto 76.30,35.27 < 20 |walk
talk Ambassador Fastrasz##193393
|tip Inside the building.
Tell him _"I'm a new arrival with the Dragonscale Expedition."_
Speak with Ambassador Fastrasz |q 69911/1 |goto 76.33,35.62
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Alliance
step
click Embassy Visitor Log
|tip Inside the building.
Choose _<Begin filling out the form.>_
|tip Choose any of the dialogue options, it doesn't matter.
Sign the Embassy Visitor Log |q 69911/2 |goto 76.28,35.61
|only if Alliance
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Alliance
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto 75.61,34.14 |next "Waking_Shores_Both"
|only if Alliance
step
accept The Dragon Isles Await##65435
|tip You will accept this quest automatically.
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin The Dragon Isles Await##65435 |goto Orgrimmar/1 44.05,37.96
accept Aspectral Invitation##65437 |goto Orgrimmar/1 44.05,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
Choose _"<Listen to Ebonhorn.>"_
Speak with Ebyssian |q 65437/1 |goto 44.05,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto 44.05,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto 44.02,38.25
|only if Horde
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto 44.18,37.78
|only if Horde
step
talk Pathfinder Tacha##184796
|tip On top of the rocks above the city.
Tell her _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 65443/2 |goto 38.60,56.95
|only if Horde
step
talk Boss Magor##184787
|tip On the ground, on the fishing dock.
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 65443/1 |goto 57.10,54.11
|only if Horde
step
Enter the building |goto 70.36,49.01 < 10 |walk |only if not (subzone("The Wyvern's Tail") and _G.IsIndoors())
talk Cataloger Coralie##184795
|tip Upstairs inside the building.
Tell her _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 65443/3 |goto 71.45,50.63
|only if Horde
step
talk Kodethi##198442
|tip On top of the wall.
Tell him _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_
Deliver the Orders to Kodethi |q 72256/1 |goto 55.08,89.61
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
|only if Horde
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip On top of the tower.
|tip He appears out of a portal.
accept Whispers on the Winds##65439 |goto 55.92,12.60
|only if Horde
step
talk Archmage Khadgar##193450
|tip On top of the tower.
Tell him _"<Ask Khadgar what happened.>"_
Speak with Archmage Khadgar |q 65439/1 |goto 55.92,12.60
|only if Horde
step
talk Ebyssian##190239
|tip On top of the tower.
turnin Whispers on the Winds##65439 |goto 55.84,12.75
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
accept To the Dragon Isles!##65444 |goto 55.81,12.66
|only if Horde
step
Wait for the Defiant Dragonscale at the Zeppelin Tower |q 65444/1 |goto 56.02,13.50
|tip Wait for the zeppelin to arrive, then board the zeppelin.
|only if Horde
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 65444
|tip Wait for the zeppelin to fly to the Dragon Isles.
|only if Horde
step
Ride the Rugged Dragonscale to Dragon Isles |q 65444/2 |goto The Waking Shores/0 80.62,27.61
|tip Walk into the camp.
|only if Horde
step
Watch the dialogue
talk Naleidea Rivergleam##184841
|tip She runs to this location.
turnin To the Dragon Isles!##65444 |goto 80.62,27.61
accept Explorers in Peril##65452 |goto 80.62,27.61
|only if Horde
step
talk Scalecommander Cindrethresh##184859
accept Primal Pests##65453 |goto 80.65,27.59
|only if Horde
step
talk Boss Magor##184844
accept Practice Materials##65451 |goto 80.60,27.65
|only if Horde
stickystart "Kill_Primal_Proto_Drakes_Horde"
stickystart "Collect_Primal_Proto_Whelp_Scales_Horde"
step
Follow the path |goto 80.24,28.58 < 30 |only if walking
click Protodragon Rib Cage
|tip Run around the mountain.
Rescue Pathfinder Poppy |q 65452/1 |goto 80.37,26.34
|only if Horde
step
clicknpc Archivist Spearblossom##187157
|tip He looks like a Tauren being flown around this area by 2 smaller dragons.
Rescue Archivist Spearblossom |q 65452/2 |goto 78.79,24.47
|only if Horde
step
clicknpc Spelunker Lazee##187151
|tip He looks like a Goblin hanging from a chain over the lava.
Rescue Spelunker Lazee |q 65452/3 |goto 77.33,29.81
|only if Horde
step
label "Kill_Primal_Proto_Drakes_Horde"
kill 10 Primal Proto-Drake##193806 |q 65453/1 |goto 79.41,26.55
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
|only if Horde
step
label "Collect_Primal_Proto_Whelp_Scales_Horde"
kill Primal Proto-Whelp##193876+
|tip They look like tiny dragons flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
collect 20 Primal Proto-Whelp Scale##198398 |q 65451/1 |goto 79.41,26.55
|only if Horde
step
Follow the path and run up the stairs |goto 77.38,32.50 < 40 |only if walking and not subzone("Wingrest Embassy")
talk Naleidea Rivergleam##184870
turnin Explorers in Peril##65452 |goto 76.61,33.60
accept Where is Wrathion?##69910 |goto 76.61,33.60
|only if Horde
step
talk Sendrax##193362
Ask him _"Why aren't the dragons here to meet us?"_
Watch the dialogue
Inquire after the Missing Dragons |q 69910/1 |goto 76.58,33.67
|only if Horde
step
talk Sendrax##193362
turnin Where is Wrathion?##69910 |goto 76.58,33.67
|only if Horde
step
Story Not Complete Detected	|next "Waking_Shores_Horde"		|only if not achieved(16363)
Story Complete Detected		|next "Scouting_Map_Horde"		|only if achieved(16363) and not (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
All Stories Complete Detected	|next "All_Stories_Complete"		|only if achieved(16363) and (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
|only if Horde
step
label "Scouting_Map_Horde"
talk Sendrax##193362
accept Adventuring in the Dragon Isles##72293 |goto 76.58,33.67
|only if Horde and not (completedq(65794) and completedq(66783) and completedq(66015) and completedq(66221))
step
talk Scalecommander Cindrethresh##187235
turnin Primal Pests##65453 |goto 76.28,33.02
|only if Horde
step
talk Boss Magor##187236
turnin Practice Materials##65451 |goto 75.94,33.24
|only if Horde
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are choosing the zone you wish to do quests in first.
|tip Pick whichever you like, it doesn't matter.
accept The Waking Shores##72266 |or |goto 76.52,34.23 |only if not completedq(72266)
accept Ohn'ahran Plains##72267 |or |goto 76.52,34.23 |only if not completedq(72267)
accept Azure Span##72268 |or |goto 76.52,34.23 |only if not completedq(72268)
accept Thaldraszus##72269 |or |goto 76.52,34.23 |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto 76.52,34.23 |only if haveq(72293)
|only if Horde
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in the Dragon Isles##72293
|only if Horde and (haveq(72293) or completedq(72293))
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Horde
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Horde
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Horde"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\The Azure Span (Story Only)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Thaldraszus (Story Only)"
|only if Horde
step
label "Waking_Shores_Horde"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Horde
step
talk Scalecommander Cindrethresh##187235
turnin Primal Pests##65453 |goto 76.28,33.02
|only if Horde
step
talk Boss Magor##187236
turnin Practice Materials##65451 |goto 75.94,33.24
|only if Horde
step
Enter the building |goto 76.30,35.27 < 20 |walk
talk Ambassador Fastrasz##193393
|tip Inside the building.
Tell him _"I'm a new arrival with the Dragonscale Expedition."_
Speak with Ambassador Fastrasz |q 69911/1 |goto 76.33,35.62
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto 76.33,35.62 |q 69911 |future
|only if Horde
step
click Embassy Visitor Log
|tip Inside the building.
Choose _<Begin filling out the form.>_
|tip Choose any of the dialogue options, it doesn't matter.
Sign the Embassy Visitor Log |q 69911/2 |goto 76.28,35.61
|only if Horde
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto 76.03,35.05
|only if Horde
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto 75.61,34.14 |next "Waking_Shores_Both"
|only if Horde
step
label "Waking_Shores_Both"
click Brazier of Kinship
Relight the Brazier of Kinship |q 69911/4 |goto The Waking Shores/0 78.42,31.78
step
talk Sendrax##193362
turnin Excuse the Mess##69911 |goto 76.58,33.67
accept My First Real Emergency!##69912 |goto 76.58,33.67
step
talk Sendrax##193362
Tell her _"Send the signal flare to alert the dragons of our arrival."_
Watch the dialogue
Send the Signal Flare |q 69912/1 |goto 76.58,33.67
step
Watch the dialogue
Wait for the Dragons' Arrival |q 69912/2 |goto 76.26,34.40
step
talk Wrathion##193371
turnin My First Real Emergency!##69912 |goto 76.19,34.50
step
talk Majordomo Selistra##193372
accept The Djaradin Have Awoken##69914 |goto 76.22,34.53
step
talk Majordomo Selistra##193372
Ask him _"How can I help defend against the djaradin?"_
Watch the dialogue
Receive the Orders from Majordomo Selistra |q 69914/1 |goto 76.22,34.53
step
talk Sendrax##193363
turnin The Djaradin Have Awoken##69914 |goto 76.26,34.40
accept Reporting for Duty##65760 |goto 76.26,34.40
step
Watch the dialogue
talk Sendrax##193363
Tell her _"Lead me to Dragonheart Outpost."_
Ask Sendrax to Lead You to the Outpost |q 65760/1 |goto 76.26,34.40
step
Watch the dialogue
|tip Follow Sendrax as she walks.
|tip She eventually walks to this location.
Follow Sendrax to the Outpost |q 65760/2 |goto 71.25,40.67
step
talk Commander Lethanak##186584
turnin Reporting for Duty##65760 |goto 71.20,40.77
accept Invader Djaradin##65989 |goto 71.20,40.77
accept Deliver Whelps From Evil##65990 |goto 71.20,40.77
stickystart "Slay_Djaradin"
step
Cross the bridge |goto 71.28,41.56 < 15 |only if walking and not subzone("Dragonheart Outpost")
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
|tip Behind the building.
Save the Whimpering Whelpling |q 65990/1 |goto 71.36,44.64 |count 1
step
Enter the building |goto 70.98,46.18 < 10 |walk
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
|tip Upstairs inside the building.
Save the Whimpering Whelpling |q 65990/1 |goto 70.97,46.63 |count 2
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
Save the Whimpering Whelpling |q 65990/1 |goto 69.86,45.30 |count 3
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a tiny red dragon.
|tip It flies in the air around this area.
Save the Whimpering Whelpling |q 65990/1 |goto 69.35,43.36 |count 4
step
label "Slay_Djaradin"
Kill Qalashi enemies around this area
|tip They look like large grey humans.
|tip You can find them all around the Dragonheart Outpost area. |notinsticky
Slay #6# Djaradin |q 65989/1 |goto 70.37,44.87
step
talk Commander Lethanak##186584
turnin Invader Djaradin##65989 |goto 71.20,40.78
turnin Deliver Whelps From Evil##65990 |goto 71.20,40.78
accept Time for a Reckoning##65991 |goto 71.20,40.78
step
Follow the path |goto 68.28,39.52 < 100 |only if walking
Run up the stairs |goto 66.40,35.21 < 10 |only if walking
Meet Wrathion at Scalecracker Keep |q 65991/1 |goto 66.49,34.42
|tip On top of the building.
step
talk Wrathion##186640
|tip He flies down and lands on top of the building.
turnin Time for a Reckoning##65991 |goto 66.36,35.00
accept Killjoy##65993 |goto 66.36,35.00
accept Blacktalon Intel##65992 |goto 66.36,35.00
step
talk Right##190564
Ask her _"What have you observed about the djaradin?"_
Consult Right |q 65992/3 |goto 65.10,29.35
step
kill Meatgrinder Sotok##186777 |q 65993/1 |goto 62.94,29.43
collect Qalashi Plans##193874 |n
|tip You will automatically accept the quest after looting the item.
accept The Obsidian Citadel##65995 |goto 62.94,29.43
step
talk Left##190563
Ask her _"What have you observed about the djaradin?"_
Consult Left |q 65992/2 |goto 63.43,28.87
step
Follow the path |goto 64.34,33.58 < 40 |only if walking
talk Talonstalker Kavia##188299
Ask her _"What have you observed about the djaradin?"_
Consult Talonstalker Kavia |q 65992/1 |goto 63.04,33.34
step
Run up the stairs |goto 62.96,33.17 < 10 |only if walking
talk Wrathion##194772
|tip On top of the building.
turnin Killjoy##65993 |goto 62.64,33.17
turnin Blacktalon Intel##65992 |goto 62.64,33.17
turnin The Obsidian Citadel##65995 |goto 62.64,33.17
step
talk Majordomo Selistra##186767
|tip On top of the building.
accept Veteran Reinforcements##65996 |goto 62.75,33.10
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 60.98,35.63 |count 1
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 61.10,36.77 |count 2
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 59.04,34.84 |count 3
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto 56.64,34.77 |count 4
step
Meet Sendrax at the Conservatory Outpost |q 65996/2 |goto 54.99,30.77
step
talk Caretaker Azkra##190155
turnin Veteran Reinforcements##65996 |goto 54.99,30.77
accept Chasing Sendrax##65997 |goto 54.99,30.77
step
talk Sendrax##187406
|tip Behind the statue.
Ask her _"What is happening here?"_
Find Sendrax |q 65997/1 |goto 55.18,24.96
step
talk Sendrax##187406
turnin Chasing Sendrax##65997 |goto 55.18,24.95
accept Future of the Flights##65998 |goto 55.18,24.95
accept Red in Tooth and Claw##65999 |goto 55.18,24.95
step
click On the Origin of Draconic Species
|tip It looks like a book.
accept Library of Alexstrasza##66000 |goto 55.26,24.69
stickystart "Slay_Primalist_Forces"
step
click Dracuixote
|tip It looks like a book on the bookshelf.
Save the Book |q 66000/1 |goto 53.47,22.00 |count 1
step
click The Scales of Wrath
|tip It looks like an open book on the bookshelf.
Save the Book |q 66000/1 |goto 53.36,22.39 |count 2
step
Find Infused Dragon Eggs |q 65998/1 |goto 55.18,22.72
|tip Run next to the Ruby Dragon Eggs.
|tip They look like groups of large, red, spikey eggs on the ground.
|tip The eggs will break open and 3 enemies will attack you.
stickystart "Kill_Infused_Ruby_Whelplings"
step
click Pride and Protodrakes
|tip It looks like a book next to the fire.
|tip Inside the building, on the ground floor.
Save the Book |q 66000/1 |goto 54.63,20.36 |count 3
step
Run up the ramp |goto 55.11,20.69 < 10 |only if walking
click The Lord of the Wings
|tip It looks like an open book laying on the floor.
|tip Inside the building, on the top floor.
Save the Book |q 66000/1 |goto 54.60,20.62 |count 4
step
label "Kill_Infused_Ruby_Whelplings"
kill 9 Infused Ruby Whelpling##186822 |q 65998/2 |goto 56.38,23.31
|tip Run next to the Ruby Dragon Eggs.
|tip They look like groups of large, red, spikey eggs on the ground.
|tip The eggs will break open and 3 Infused Ruby Whelplings will attack you.
|tip You can find them all around the Life-Binder Conservatory area. |notinsticky
step
label "Slay_Primalist_Forces"
Kill enemies around this area
|tip You can find them all around the Life-Binder Conservatory area. |notinsticky
Slay #15# Primalist Forces |q 65999/1 |goto 56.38,23.31
step
_Next to you:_
talk Sendrax
turnin Future of the Flights##65998
turnin Red in Tooth and Claw##65999
turnin Library of Alexstrasza##66000
accept A Last Hope##66001
step
talk Sendrax##190269
Tell her _"I am ready."_
Meet Sendrax by the Ritual Site |q 66001/1 |goto 56.24,22.07
step
Watch the dialogue
click Infused Dragon Egg
|tip Click it when Sendrax tells you to.
Pick up the Infused Dragon Egg |q 66001/2 |goto 56.92,21.61
step
_NOTE:_
During the Next Step
|tip You will be carrying the Infused Dragon Egg.
|tip Just run, don't stop to fight enemies or anything else.
|tip If you do anything like fighting enemies, eating or drinking, or using a potion, etc, you will drop the egg on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
Click Here to Continue |confirm |q 66001
step
Run up the stairs |goto 55.21,26.19 < 30 |only if walking and subzone("Life-Binder Conservatory")
Carry the Egg to Safety |q 66001/3 |goto 54.99,30.77
|tip You are carrying the Infused Dragon Egg.
|tip Just run, don't stop to fight enemies or anything else.
|tip If you do anything like fighting enemies, eating or drinking, or using a potion, etc, you will drop the egg on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
step
talk Majordomo Selistra##186795
turnin A Last Hope##66001 |goto 55.09,31.01
accept For the Benefit of the Queen##66114 |goto 55.09,31.01
step
talk Majordomo Selistra##186795
Tell him _"Take me with you to see the queen, please."_
Begin Flying with Majordomo Selistra |havebuff spell:376478 |goto 55.09,31.01 |q 66114
step
Watch the dialogue
Ride with Majordomo Selistra to the Ruby Lifeshrine |q 66114/1 |goto 62.26,72.88 |notravel
step
talk Alexstrasza the Life-Binder##187290
Choose _"<Offer the rescued egg to Queen Alexstrasza.>"_
Show Queen Alexstrasza the Infused Egg |q 66114/2 |goto 62.34,73.02
step
talk Alexstrasza the Life-Binder##187290
turnin For the Benefit of the Queen##66114 |goto 62.34,73.02
accept The Mandate of the Red##66115 |goto 62.34,73.02
accept Dragonriding##68795 |goto 62.34,73.02
step
talk Xius##189261
Ask him _"What do you do here?"_
Speak to Xius |q 66115/1 |goto 60.70,74.05
step
talk Akxall##189262
Ask her _"Why are there so few eggs here?"_
Speak to Akxall |q 66115/2 |goto 59.38,72.42
step
talk Mother Elion##185904
Ask her _"Why do you stay here, if you have no eggs to rear?"_
Speak to Mother Elion |q 66115/3 |goto 61.60,68.70
step
talk Zahkrana##189260
Ask him _"How do you care for these eggs?"_
Speak to Zahkrana |q 66115/4 |goto 62.77,70.43
step
talk Zahkrana##189260
turnin The Mandate of the Red##66115 |goto 62.77,70.43
step
talk Amella##194174
accept Training Wings##70061 |goto 62.18,70.56
step
Run down the stairs |goto 60.41,70.60 < 20 |only if walking
clicknpc Ruby Whelpling##193979
|tip It looks like a tiny red dragon.
Choose the Ruby Whelpling |q 70061/1 |goto 61.09,71.46
step
Begin Controlling the Ruby Whelpling |invehicle |q 70061
stickystart "Kill_Intrusive_Pupstingers"
stickystart "Kill_Agitated_Weedlings"
step
kill Relentless Gust##194159 |q 70061/4 |goto 61.45,71.87
|tip They look like tornado elementals.
|tip On the larger stone platforms on the wall.
|tip Use the abilities on your action bar.
|tip To aim your abilities, face the whelpling at what you want to target.
step
label "Kill_Intrusive_Pupstingers"
kill 6 Intrusive Pupstinger##194142 |q 70061/3 |goto 61.45,71.87
|tip They look like flying insects around this area.
|tip Use the abilities on your action bar. |notinsticky
|tip To aim your abilities, face the whelpling at what you want to target. |notinsticky
step
label "Kill_Agitated_Weedlings"
kill 12 Agitated Weedling##193994 |q 70061/2 |goto 61.45,71.87
|tip They look like purple and green plants with teeth.
|tip All along the small platforms on the wall.
|tip Use the abilities on your action bar. |notinsticky
|tip To aim your abilities, face the whelpling at what you want to target. |notinsticky
step
Release the Ruby Whelpling |outvehicle |q 70061
|tip You will automatically fly back to the stone platform.
step
talk Vaknai##192491
|tip On the large platform, overlooking the valley.
fpath Ruby Life Pools |goto 57.80,68.11
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
Tell him _"Tell me about dragonriding."_
Speak to Lord Andestrasz about Dragonriding |q 68795/1 |goto 58.37,67.13
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
|tip He eventually walks to this location.
turnin Dragonriding##68795 |goto 57.66,66.89
accept How to Glide with Your Dragon##65118 |goto 57.66,66.89
step
use the Renewed Proto-Drake##194034
|tip This will teach you your first dragonriding mount.
learnmount Renewed Proto-Drake##368896 |q 65118
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
Click Here to Continue |confirm |q 65118
step
Glide Through The #5# Rings |q 65118/2 |goto 57.69,66.71
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
step
Land in the Target Area |q 65118/3 |goto 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Glide with Your Dragon##65118 |goto 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65120 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How To Dive with Your Dragon##65120 |goto 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
Click Here to Continue |confirm |q 65120
step
Glide Through The #5# Rings |q 65120/2 |goto 57.69,66.71
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
step
Land in the Target Area |q 65120/3 |goto 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How To Dive with Your Dragon##65120 |goto 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65133 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How to Use Momentum with Your Dragon##65133 |goto 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
Click Here to Continue |confirm |q 65133
step
Glide Through The #5# Rings |q 65133/2 |goto 57.69,66.71
|tip Look for a string of large glowing glyph rings in the air nearby to the north.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to glide through each of the rings toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the "Bronze Timepiece" quest item to retry.
step
Land in the Target Area |q 65133/3 |goto 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Use Momentum with Your Dragon##65133 |goto 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 68796 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept The Skytop Observatory##68796 |goto 57.66,66.89
step
_NOTE:_
During the Next Steps
|tip You will talk to Celormu to start a dragonriding race.
|tip After talking to him, he will countdown to start the race.
|tip Look for a string of large glowing glyph rings in the air nearby to the northeast.
|tip You will use your dragonriding mount to glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
Click Here to Continue |confirm |q 68796
step
Watch the dialogue
talk Celormu##198040
|tip He eventually walks to this location.
|tip On the large platform, overlooking the valley.
Tell him _"I'd like to try the course to Skytop Observatory."_
Speak with Celormu to Start the Race |q 68796/1 |goto 57.73,66.72
step
Race to the Skytop Observatory |q 68796/2 |goto 57.76,66.75
|tip Look for a string of large glowing glyph rings in the air nearby to the northeast.
|tip You will use your dragonriding mount to glide through each of the rings.
|tip Follow the onscreen instructions and the dotted lines to each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
step
talk Lord Andestrasz##193359
|tip On top of the mountain.
turnin The Skytop Observatory##68796 |goto 75.18,54.97
accept A New Set of Horns##68797 |goto 75.18,54.97
step
talk Glensera##190839
Meet Glensera in the Skytop Observatory |q 68797/1 |goto 74.11,57.93
step
click Rostrum of Transformation
Use the Rostrum of Transformation |q 68797/2 |goto 74.03,58.15
step
talk Lord Andestrasz##193359
turnin A New Set of Horns##68797 |goto 75.18,54.97
accept Dragon Glyphs and You##68798 |goto 75.18,54.97
step
Collect the Dragon Glyph by the Rostrum of Transformation |q 68798/1 |goto 74.34,57.59
|tip It looks like a large floating golden rune near the ground.
|tip Fly through it on you dragonriding mount to collect it.
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Speak to Lithragosa |q 68798/2 |goto 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Tell her _"I'm ready. [Open Dragonriding Skill Track.]"_
View the Dragonriding Skill Track with Lithragosa |q 68798/3 |goto 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Learn the "Take to the Skies" Skill with Lithragosa |q 68798/4 |goto 74.57,56.97
step
talk Celormu##193411
Speak to Celormu |q 68798/5 |goto 73.25,52.06
step
talk Azerastrasz##193477
|tip Open the flight map.
fpath Skytop Observatory |goto 72.77,51.90
step
talk Lord Andestrasz##193359
turnin Meet the Trainers##68798 |goto 75.18,54.97
accept Return to the Ruby Lifeshrine##68799 |goto 75.18,54.97
step
clicknpc Relastrasza##199684
Ride Relastrasza to the Skytop Launch Tower |q 68799/1 |goto 75.02,55.58
step
_NOTE:_
Gather the Dragon Glyphs
|tip Now would be a good time to use the "Dragon Glyphs (All Zones)" guide.
|tip Gathering dragon glyphs will allow you to increase the power of your dragonriding skill.
|tip Gathering them now will make leveling quicker and easier.
Click Here to Continue |confirm |q 70061
step
talk Pana##192472
fpath Uktulut Pier |goto 45.84,27.47
step
talk Tallevia Mistsong##192484
fpath Life Vault Ruins |goto 65.03,57.36
step
talk Majordomo Selistra##191768
|tip At the top of the Ruby Lifeshrine.
turnin Training Wings##70061 |goto 62.32,72.90
step
talk Alexstrasza the Life-Binder##187290
turnin Return to the Ruby Lifeshrine##68799 |goto 62.34,73.02
accept Who Brought the Ruckus?##66931 |goto 62.34,73.02
step
Discover the Commotion |q 66931/1 |goto 59.44,72.83
step
talk Majordomo Selistra##190293
|tip He flies and lands at this location.
turnin Who Brought the Ruckus?##66931 |goto 59.51,72.63
accept The Primary Threat##66116 |goto 59.51,72.63
step
Report to Commander Lethanak |q 66116/2 |goto 59.41,75.88
|tip On the icy ground.
step
talk Commander Lethanak##187119
turnin The Primary Threat##66116 |goto 59.41,75.88
accept Basalt Assault##66118 |goto 59.41,75.88
step
kill 4 Enraged Cliff##187090 |q 66118/1 |goto 60.28,78.54
|tip They look like large stone elementals.
You can find more around [57.76,76.66]
step
talk Commander Lethanak##187119
turnin Basalt Assault##66118 |goto 59.41,75.87
accept Proto-Fight##66122 |goto 59.41,75.87
step
talk Majordomo Selistra##187129
accept Egg Evac##66121 |goto 59.48,76.14
stickystart "Slay_Proto_Dragons"
step
click Bronze Egg
|tip It looks like a large yellow spikey dragon egg.
Rescue the Bronze Egg |q 66121/1 |goto 56.14,81.30
step
click Ruby Egg
|tip It looks like a large red spikey dragon egg.
Rescue the Ruby Egg |q 66121/4 |goto 54.99,80.95
step
click Emerald Egg
|tip It looks like a large green spikey dragon egg.
Rescue the Emerald Egg |q 66121/3 |goto 55.32,83.30
step
click Azure Egg
|tip It looks like a large blue spikey dragon egg.
Rescue the Azure Egg |q 66121/2 |goto 57.35,83.28
step
label "Slay_Proto_Dragons"
use the Ruby Spear##192436
|tip Use it on Proto-Dragons.
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Flashfrost Enclave area.
|tip They are elite, but using the spear on them makes them easier to kill.
Slay #3# Proto-Dragons |q 66122/2 |goto 55.59,81.86
step
talk Majordomo Selistra##191895
turnin Proto-Fight##66122 |goto 53.68,80.17
turnin Egg Evac##66121 |goto 53.68,80.17
accept Cut Off the Head##66123 |goto 53.68,80.17
step
use Ruby Spear##192436
|tip Use it on Jadzigeth.
|tip He looks like a large blue ice crystal dragon.
|tip He is elite, but using the spear on him makes him easier to kill.
kill Jadzigeth##188447 |q 66123/1 |goto 53.68,82.95
step
talk Majordomo Selistra##191895
turnin Cut Off the Head##66123 |goto 53.68,80.17
accept Exeunt, Triumphant##66124 |goto 53.68,80.17
step
Watch the dialogue
talk Majordomo Selistra##187278
|tip He flies to this location.
Choose _<Check in with the Majordomo.>_
Speak to Majordomo Selistra at the Wild Hatchery |q 66124/1 |goto 46.14,78.53
step
talk Majordomo Selistra##187278
turnin Exeunt, Triumphant##66124 |goto 46.14,78.53
step
talk Alexstrasza the Life-Binder##187115
accept Wrathion Awaits##66079 |goto 46.09,78.29
step
talk Art Raskins##192843
fpath Dragonscale Basecamp |goto 47.91,83.32
step
Watch the dialogue
talk Wrathion##186274
turnin Wrathion Awaits##66079 |goto 42.47,66.84
step
talk Scalecommander Emberthal##192795
accept Lessons from Our Past##72241 |goto 42.47,66.78
step
talk Scalecommander Emberthal##192795
Tell her _"Tell me of the dracthyr's origins."_
Speak with Scalecommander Emberthal to Learn of Past Events |q 72241/1 |goto 42.47,66.78
step
talk Scalecommander Emberthal##192795
turnin Lessons from Our Past##72241 |goto 42.47,66.78
accept Best Plans and Intentions##66048 |goto 42.47,66.78
step
talk Wrathion##186274
accept Sharp Practice##66078 |goto 42.47,66.84
stickystart "Test_Blacktalon"
step
talk Do-Yeon Shadowrider##188444
fpath Obsidian Bulwark |goto 42.26,66.25
step
talk Fao the Relentless##186331
Ask him _"Might we review the battle plans?"_
Click Here After Talking to Fao the Relentless |confirm |goto 42.41,66.18 |q 66048
step
click Blacktalon Battle Plans
|tip They look like brown pieces of paper on a table.
|tip Inside the tent.
Consult Fao the Relentless |q 66048/1 |goto 42.40,66.06
step
talk Forgemaster Bazentus##186493
|tip He walks around this area.
Tell him _"Tell me about the weapons in the Citadel."_
Consult Forgemaster Bazentus |q 66048/4 |goto 42.83,66.85
step
talk Archivist Edress##187466
Ask her _"What has your research found?"_
Watch the dialogue
Consult Archivist Edres |q 66048/2 |goto 43.76,67.28
step
talk Talonstalker Kavia##189507
|tip On the edge of the cliff, overlooking the valley below.
Ask her _"What have you observed?"_
Click Here After Talking to Talonstalker Kavia |confirm |goto 42.30,69.29 |q 66048
step
click Scouting Scope
Consult Talonstalker Kavia |q 66048/3 |goto 42.22,69.32
step
label "Test_Blacktalon"
talk Blacktalon NPC+
|tip Only Blacktalon Avengers and Assassins will work for the quest goal.
Tell them _"I'm here to test your combat skills."_
kill Blacktalon+
Test #8# Blacktalons |q 66078/1 |goto 42.56,67.92
step
talk Wrathion##186274
turnin Best Plans and Intentions##66048 |goto 42.47,66.84
turnin Sharp Practice##66078 |goto 42.47,66.84
step
Watch the dialogue
talk Wrathion##186274
accept Talon Strike##65956 |goto 42.47,66.84
accept No Time For Heroes##65957 |goto 42.47,66.84
step
_NOTE:_
During the Next Steps
|tip Use the "Blacktalon Marker" ability on enemies.
|tip It appears as a button on the screen.
|tip It will stun the enemies and summon allies to help you fight.
Click Here to Continue |confirm |q 65957
stickystart "Disrupt_The_Djaradin_Defenses"
step
kill Piercer Gigra##186511 |q 65957/1 |goto 35.47,68.52
|tip She looks like a large armored human.
|tip On top of the building.
step
kill Olphis the Molten##181875 |q 65957/3 |goto 34.81,66.87
|tip He looks like a large black and orange mammoth.
step
kill Modak Flamespit##186509 |q 65957/2 |goto 35.69,60.74
|tip He looks like a large human, throwing orange fireballs.
|tip On top of the building.
step
label "Disrupt_The_Djaradin_Defenses"
Kill enemies around this area
|tip You can find them all around the Burning Ascent area.
click Siege Arbalest+
|tip They look like large ballista machines.
click Djaradin Banner+
|tip They look like banner poles, topped with dragon skulls and red banners hanging from them.
kill Molten Extracts##186716+
|tip They look like various large brown pottery jars.
Disrupt the Djaradin Defenses |q 65956/1 |goto 36.47,67.85
step
talk Wrathion##186681
turnin Talon Strike##65956 |goto 33.99,61.29
turnin No Time For Heroes##65957 |goto 33.99,61.29
accept The Courage of One's Convictions##65939 |goto 33.99,61.29
step
talk Wrathion##186681
Tell him _"I am ready to begin the assault."_
Speak with Wrathion to Begin the Assault |q 65939/1 |goto 33.99,61.29
step
Reach the Obsidian Citadel |complete subzone("Obsidian Citadel") |goto 33.13,61.95 |q 65939
|tip On the bridge.
step
Enter the Obsidian Citadel |q 65939/2 |goto 30.47,60.84
stickystart "Slay_Qalashi_Forces"
step
talk Wrathion##186933
|tip He flies to this location.
accept Taking the Walls##66044 |goto 29.15,58.83
step
talk Wrathion##186933
Tell him _"I am ready to assist you."_
Assist Wrathion |q 66044/1 |goto 29.15,58.83
step
Begin Flying with Wrathion |invehicle |goto 29.15,58.83 |q 66044
step
Fly with Wrathion |outvehicle |goto 27.15,58.09 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the South Siege Arbalast |q 66044/2 |goto 26.83,59.94
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto 26.77,61.20 |q 66044
step
Fly with Wrathion |outvehicle |goto 29.63,62.37 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the East Siege Arbalast |q 66044/3 |goto 29.51,61.00
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto 29.05,61.82 |q 66044
step
Fly with Wrathion |outvehicle |goto 27.72,55.55 |q 66044 |notravel
|tip He will drop you on the platform.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
Destroy the North Siege Arbalast |q 66044/4 |goto 27.76,56.54
step
kill Champion Choruk##186592 |q 66044/5 |goto 26.92,57.14
|tip He walks around this area, riding a black and yellow mammoth.
step
label "Slay_Qalashi_Forces"
Kill enemies around this area
|tip You can find them all around the Obsidian Citadel area. |notinsticky
Slay #12# Qalashi Forces |q 65939/3 |goto 26.59,57.97
step
talk Wrathion##196265
turnin The Courage of One's Convictions##65939 |goto 26.43,58.77
turnin Taking the Walls##66044 |goto 26.43,58.77
accept Obsidian Oathstone##66049 |goto 26.43,58.77
step
talk Wrathion##187045
Ask him _"Is that the Oathstone?"_
Speak with Wrathion at the Oathstone |q 66049/1 |goto 27.30,62.58
step
click Obsidian Oathstone
|tip It looks like a large stone monument.
Examine the Oathstone |q 66049/2 |goto 27.62,63.33
step
Watch the dialogue
talk Wrathion##187045
turnin Obsidian Oathstone##66049 |goto 27.30,62.58
step
talk Forgemaster Bazentus##186493
accept A Shattered Past##66055 |goto 27.25,62.79
stickystart "Collect_Oathstone_Fragments"
step
Enter the Vaults Beneath the Citadel |q 66055/1 |goto 27.11,60.82
|tip Enter the building and run down the stairs.
step
label "Collect_Oathstone_Fragments"
click Oathstone Fragment+
|tip They look like large pieces of the stone monument.
|tip Downstairs inside the building.
|tip They will appear on your minimap as yellow dots.
collect 12 Oathstone Fragment##191131 |q 66055/2 |goto 24.74,58.26
step
Follow the path and run up the stairs |goto 25.16,58.76 < 20 |walk |only if subzone("Obsidian Citadel") and _G.IsIndoors()
Leave the building |goto 27.16,60.87 < 15 |walk |only if subzone("Obsidian Citadel") and _G.IsIndoors()
talk Forgemaster Bazentus##186493
turnin A Shattered Past##66055 |goto 27.25,62.80
accept Forging A New Future##66056 |goto 27.25,62.80
step
click Earth-Warder's Forge
Activate the Earth-Warder's Forge |q 66056/1 |goto 24.63,60.88
step
kill Animated Cindershards##189875+
|tip They look like rock elementals.
click Cindershard Coal+
|tip They look like piles of grey stones around this area.
|tip An enemy may spawn when you click them.
collect 6 Cindershard Coal##192548 |q 66056/2 |goto 24.90,60.88
step
talk Forgemaster Bazentus##186493
turnin Forging A New Future##66056 |goto 24.68,61.12
accept The Spark##66354 |goto 24.68,61.12
step
click Oathstone Fragments+
|tip They look like orange embers on the huge anvil.
Place the Fragments on the Forge |q 66354/1 |goto 24.56,60.90
step
Watch the dialogue
Repair the Fragments |q 66354/2 |goto 24.56,60.90
step
click Reformed Oathstone Fragments
|tip It looks like a diamond shaped piece of the stone monument.
Collect the Reformed Pieces |q 66354/3 |goto 24.56,60.90
step
talk Forgemaster Bazentus##186493
turnin The Spark##66354 |goto 24.68,61.12
accept Restoring the Faith##66057 |goto 24.68,61.12
step
talk Wrathion##187045
Tell him _"You can now repair the Obsidian Oathstone."_
Speak with Wrathion |q 66057/1 |goto 27.30,62.58
step
Watch the dialogue
clicknpc Wrathion##191669
Travel with Wrathion to the Throne |q 66057/2 |goto 27.09,62.21
step
Begin Flying with Wrathion |invehicle |goto 27.09,62.21 |q 66057
step
Fly with Wrathion |outvehicle |goto 25.45,56.74 |q 66057 |notravel
|tip He will bring you to the upper platform.
step
Approach Wrathion and Sabellian |q 66057/3 |goto 25.09,56.45
|tip On the upper platform.
step
talk Wrathion##187495
turnin Restoring the Faith##66057 |goto 24.44,55.50
accept Claimant to the Throne##66780 |goto 24.44,55.50
step
talk Sabellian##185894
accept Heir Apparent##66779 |goto 24.25,55.87
step
talk Forgemaster Bazentus##193464
Ask him _"What can you tell me about Sabellian?"_
Speak with Bazentus |q 66779/2 |goto 24.38,57.83
step
talk Baskilan##188158
Ask him _"What can you tell me about Sabellian?"_
Speak with Baskilian |q 66779/1 |goto 24.31,58.90
step
talk Foehn Breezeskimmer##188336
fpath Obsidian Throne |goto 25.27,56.83
step
talk Archivist Edress##193456
Ask her _"What can you tell me about Sabellian?"_
Speak with Archivist Edress |q 66779/3 |goto 25.11,56.24
step
talk Archivist Edress##193456
Ask her _"What can you tell me about Wrathion?"_
Speak with Archivist Edress |q 66780/3 |goto 25.11,56.24
step
talk Left##191710
Ask him _"What can you tell me about Wrathion?"_
Speak with Left and Right |q 66780/2 |goto 25.01,55.19
step
talk Talonstalker Kavia##191600
|tip She walks around this area.
Ask her _"What can you tell me about Wrathion?"_
Speak with Talonstalker Kavia |q 66780/1 |goto 26.35,54.45
step
talk Wrathion##187495
turnin Claimant to the Throne##66780 |goto 24.43,55.49
step
talk Sabellian##185894
turnin Heir Apparent##66779 |goto 24.24,55.88
accept Black Wagon Flight##65793 |goto 24.24,55.88
step
talk Hjorik##192493
|tip On top of the mountain.
fpath Apex Observatory |goto 23.79,83.14
step
talk Nulia##192494
|tip On the beach, next to the water.
fpath Uktulut Outpost |goto 17.51,88.70
step
talk Sabellian##190937
Tell him _"Let's get moving."_
Speak with Sabellian to Begin Moving the Eggs |q 65793/2 |goto 43.83,66.43
step
Watch the dialogue
|tip Follow the wagon and protect it.
|tip They eventually travel to this location.
Escort the Wagon |q 65793/3 |goto 52.26,66.82 |notravel
step
talk Holthkastrasz##187292
Tell him _"I'd like to go to the Ruby Lifeshrine."_
Begin Flying to the Ruby Lifeshrine |invehicle |goto 56.87,66.54 |q 65793
step
Fly up to the Ruby Lifeshrine |outvehicle |goto 57.82,67.29 |q 65793 |notravel
step
talk Sabellian##190740
turnin Black Wagon Flight##65793 |goto 57.96,67.31
accept The Last Eggtender##66785 |goto 57.96,67.31
step
talk Mother Elion##185904
turnin The Last Eggtender##66785 |goto 61.60,68.71
accept Egg-cited for the Future##66788 |goto 61.60,68.71
stickystart "Sweep_Fallen_Leaves"
stickystart "Pull_Overgrown_Weeds"
step
clicknpc Ruby Shrineguard##191126
Polish the Ruby Shrineguard |q 66788/3 |goto 61.44,69.02
step
label "Sweep_Fallen_Leaves"
click Fallen Leaves+
|tip They look like piles of red and brown leaves on the ground around this area.
Sweep #2# Fallen Leaves |q 66788/1 |goto 61.53,68.57
step
label "Pull_Overgrown_Weeds"
click Overgrown Weeds+
|tip They look like green ferns on the ground around this area.
|tip After clicking them, run away from them to pull them out of the ground.
Pull #3# Overgrown Weeds |q 66788/2 |goto 61.53,68.57
step
talk Mother Elion##185904
turnin Egg-cited for the Future##66788 |goto 61.60,68.71
accept Life-Binder on Duty##65791 |goto 61.60,68.71
step
talk Alexstrasza the Life-Binder##185905
turnin Life-Binder on Duty##65791 |goto 62.34,73.02
accept A Charge of Care##65794 |goto 62.34,73.02
step
talk Alexstrasza the Life-Binder##185905
Tell her _"I am ready."_
Empower the Ruby Oathstone |q 65794/1 |goto 62.34,73.02
step
talk Alexstrasza the Life-Binder##193377
turnin A Charge of Care##65794 |goto 61.56,68.56
accept Next Steppes##65795 |goto 61.56,68.56
step
talk Ambassador Taurasza##185878
turnin Next Steppes##65795 |goto 48.27,88.67
step
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"	|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"		|only if not (achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363))
step
label "All_Stories_Complete"
_NOTE:_
You Finished All Main Storylines
|tip You have completed all of the main storylines in all of the zones in the Dragon Isles.
|tip This guide is finished, please choose another guide.
|tip You can load the Full Zone leveling guides to complete side quests.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)",{
author="support@zygorguides.com",
},[[
step
talk Ambassador Taurasza##185878
turnin Ohn'ahran Plains##72267 |goto The Waking Shores/0 48.27,88.67 |only if haveq(72267) or completedq(72267)
accept Into the Plains##65779 |goto The Waking Shores/0 48.27,88.67
step
talk Scout Tomul##185882
turnin Into the Plains##65779 |goto Ohn'ahran Plains/0 77.72,23.94
accept Proving Oneself##65780 |goto Ohn'ahran Plains/0 77.72,23.94
step
kill Blazing Proto-Dragon##185883 |q 65780/1 |goto 78.57,27.12
|tip He is elite, but the centaurs nearby will help you fight.
step
talk Scout Tomul##185882
turnin Proving Oneself##65780 |goto 78.63,25.39
accept Welcome at Our Fire##65783 |goto 78.63,25.39
step
talk Scout Tomul##185882
turnin Welcome at Our Fire##65783 |goto 85.32,25.42
accept The Shikaar##70174 |goto 85.32,25.42
step
Watch the dialogue
talk Sansok Khan##181217
Tell her _"I need to speak to the leader of the green dragonflight."_
Speak to Sansok Khan |q 70174/1 |goto 85.74,25.33
step
talk Sansok Khan##181217
turnin The Shikaar##70174 |goto 85.74,25.33
accept Making Introductions##65801 |goto 85.74,25.33
accept Supplies for the Journey##65802 |goto 85.74,25.33
step
click Bundle of Pelts
|tip It looks like a spear wrapped in fur and rope on the table.
|tip Inside the building.
collect Bundle of Pelts##191054 |q 65802/2 |goto 86.17,25.31 |count 1
stickystart "Collect_Feralbloom_Pods"
step
talk Aru##186176
Tell him _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_
Speak to Aru and Belika |q 65801/2 |goto 85.76,26.60
step
click Basket of Dried Fish
|tip It looks like a woven basket on the ground.
collect Basket of Dried Fish##192810 |q 65802/2 |goto 84.31,27.18 |count 2
step
talk Beastmaster Nuqut##186183
Tell him _"I am {_G.UnitName("player")}. Will you be joining the caravan to the Khural?"_
Speak to Beastmaster Nuqut |q 65801/3 |goto 83.92,25.87
step
click Crate of Horseshoes
|tip It looks like a wooden box on the ground.
collect Crate of Horseshoes##191048 |q 65802/2 |goto 84.34,24.91 |count 3
step
talk Flightmaster Baqir##184630
fpath Timberstep Outpost |goto 85.28,24.10
step
label "Collect_Feralbloom_Pods"
click Medicinal Feralbloom+
|tip They look like large round orange flowers with tall green stalks.
|tip You can find them all around the Timberstep Outpost area.
collect 5 Feralbloom Pod##192812 |q 65802/1 |goto 84.95,25.16
step
click Weapon Rack
|tip It looks like a wooden stand with weapons leaning against it.
collect Shikaar Weaponry##192811 |q 65802/2 |goto 84.37,23.12 |count 4
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Supplies for the Journey##65802 |goto 84.69,22.81
step
talk Ohn Seshteng##184595
Tell her _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_
Speak to Ohn Seshteng |q 65801/1 |goto 85.63,20.85
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Making Introductions##65801 |goto 84.69,22.81
accept Toward the City##65803 |goto 84.69,22.81
step
talk Scout Tomul##185882
Tell her _"I'm ready to go."_
Meet with the Caravan |q 65803/1 |goto 83.15,23.74
step
Arrive at the First Stop |q 65803/3 |goto 75.67,31.68
|tip You can fly directly here, you don't need to follow the caravan.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Scout Tomul##185882
turnin Toward the City##65803 |goto 75.67,31.68
accept For Food and Rivalry##65804 |goto 75.67,31.68
step
click Mysterious Paw Print
accept Mysterious Beast##70185 |goto 76.74,31.89
step
talk Malakesh##196259
fpath Rusza'thar Reach |goto 84.66,36.89
step
Enter the cave |goto 77.76,35.39 < 15 |walk
kill Konkhular##194544
|tip He looks like a grey sabertooth tiger with scales on his back and tail.
|tip Inside the cave.
collect Pelt of Konkhular##198517 |q 70185/1 |goto 78.28,35.21
step
Kill enemies around this area
|tip They look like various animals.
collect 30 Fresh Game Meat##191100 |q 65804/1 |goto 77.15,31.09
step
talk Scout Tomul##185882
turnin For Food and Rivalry##65804 |goto 75.67,31.68
turnin Mysterious Beast##70185 |goto 75.67,31.68
accept By Broken Road##65940 |goto 75.67,31.68
step
Arrive at the Second Stop |q 65940/2 |goto 69.96,37.97
|tip You can fly directly here, you don't need to follow the caravan.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Ohn Seshteng##184595
turnin By Broken Road##65940 |goto 69.96,37.97
accept Connection to Ohn'ahra##65805 |goto 69.96,37.97
stickystart "Collect_River_Reeds"
stickystart "Collect_Fowl_Tailfeathers"
step
kill Mudwalker Salamanther##190961+
|tip They look like large yellow lizards with green fins.
collect Salamanther Heart##191103 |q 65805/3 |goto 69.75,38.00
step
label "Collect_River_Reeds"
click River Reeds+
|tip They look like brown and yellow plants near the edge of the water around this area.
collect 4 River Reeds##191101 |q 65805/1 |goto 69.75,38.00
step
label "Collect_Fowl_Tailfeathers"
click Jadethroat Mallard##190708+
|tip They look like brown birds with green heads.
|tip They are on the ground, and fly around this area.
|tip They may attack you.
|tip If you get no feathers by clicking them, or they are flying and you can't reach them to click them, just kill them.
collect 8 Fowl Tailfeathers##191102 |q 65805/2 |goto 69.75,38.00
step
talk Ohn Seshteng##184595
turnin Connection to Ohn'ahra##65805 |goto 69.96,37.97
accept Omens on the Wind##66848 |goto 69.96,37.97
step
talk Ohn Seshteng##184595
Tell her _"I am ready."_
Speak to Ohn Seshteng |q 66848/1 |goto 69.96,37.97
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto 69.98,37.66 |count 1
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto 69.93,37.54 |count 2
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto 69.87,37.63 |count 3
step
Watch the dialogue
Complete the Ritual |q 66848/3 |goto 69.87,37.63
step
talk Ohn Seshteng##184595
|tip She walks to this location.
turnin Omens on the Wind##66848 |goto 69.97,37.97
step
talk Sansok Khan##181217
accept Maruukai##65806 |goto 70.02,38.02
step
talk Flightmaster Salukan##191263
fpath Maruukai |goto 62.96,42.13
step
Arrive in Maruukai |q 65806/2 |goto 61.64,39.80
|tip You can fly directly here, you don't need to follow the caravan.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Sansok Khan##191283
turnin Maruukai##65806 |goto 61.44,39.51
accept Clan Teerai##66016 |goto 61.44,39.51
accept Clan Ohn'ir##66017 |goto 61.44,39.51
accept Clan Nokhud##66018 |goto 61.44,39.51
step
Watch the dialogue
talk Scout Tomul##191485
|tip She walks to this location.
turnin Clan Nokhud##66018 |goto 60.38,40.70
step
talk Guard Bahir##186940
accept Unwelcome Outsider##66021 |goto 60.30,40.76
step
talk Nokhud NPCs
|tip They look like centaurs around this area.
Tell them _"Let's spar."_
|tip They will attack you.
|tip They will eventually surrender.
|tip You can also attack them without talking to them.
Defeat #6# Nokhud Centaurs |q 66021/1 |goto 59.30,42.02
step
talk Qariin Dotur##186941
turnin Clan Teerai##66016 |goto 59.16,37.61
accept Honoring Our Ancestors##66019 |goto 59.16,37.61
step
click Raw Game Meat
Gather the Raw Game Meat |q 66019/1 |goto 59.39,37.81
step
click Raw Game Meat
Place the Raw Game Meat |q 66019/2 |goto 59.13,37.57
step
click Jar of Spices
Gather the Jar of Spices |q 66019/3 |goto 59.31,37.29
step
extraaction Apply Jar of Spices##375680
|tip Use the "Apply Jar of Spices" ability.
|tip It appears as a button on the screen.
Apply the Jar of Spices |q 66019/4 |goto 59.13,37.57
step
click Basket of Spices
Gather the Basket of Spices |q 66019/5 |goto 59.39,37.36
step
extraaction Apply Basket of Spices##375765
|tip Use the "Apply Basket of Spices" ability.
|tip It appears as a button on the screen.
Apply the Basket of Spices |q 66019/6 |goto 59.13,37.57
step
click Pot of Spices
Gather the Pot of Spices |q 66019/7 |goto 59.05,37.90
step
extraaction Apply Cauldron of Spices##375771
|tip Use the "Apply Cauldron of Spices" ability.
|tip It appears as a button on the screen.
Apply the Pot of Spices |q 66019/8 |goto 59.13,37.57
step
click Spiced Game Meat
Pick Up the Spiced Game Meat |q 66019/9 |goto 59.12,37.57
step
extraaction Roasting##375932
|tip Use the "Roasting" ability.
|tip It appears as a button on the screen.
Cook the Spiced Game Meat |q 66019/10 |goto 58.89,37.28
step
click Spiced Game Meat
Place the Offering |q 66019/11 |goto 59.16,37.10
step
talk Qariin Dotur##186941
turnin Honoring Our Ancestors##66019 |goto 59.16,37.62
step
Enter the building |goto 62.85,34.25 < 15 |walk
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Clan Ohn'ir##66017 |goto 63.00,33.67
accept Omens and Incense##66020 |goto 63.00,33.67
step
click Sweetsuckle+
|tip They look like small pink and purple flowers on the ground around this area.
collect Sweetsuckle Bloom##191160+ |n
use the Sweetsuckle Bloom##191160+
|tip You need 5 of them before you can use them.
collect Sweetsuckle Incense##198981 |q 66020/1 |goto 62.93,35.18
step
Enter the building |goto 62.85,34.25 < 15 |walk
click Incense Burner
|tip Inside the building.
Burn the Sweetsuckle Incense |q 66020/2 |goto 62.83,33.72
step
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Omens and Incense##66020 |goto 63.00,33.66
step
talk Volebel##190049
fpath Emberwatch |goto 66.78,25.17
step
talk Scout Tomul##191485
turnin Unwelcome Outsider##66021 |goto 62.43,41.72
step
_Next to you:_
talk Aru
accept Clans of the Plains##66969
step
talk Sansok Khan##191283
Report to Sansok Khan |q 66969/1 |goto 61.44,39.51
step
talk Sansok Khan##191283
|tip You have to answer 4 questions.
|tip Tell here the answers in this order.
Tell her _"I am ready."_
Tell her _"Clan Teerai"_
Tell her _"Clan Ohn'ir"_
Tell her _"Clan Nokhud"_
Tell her _"Clan Shikaar"_
Answer #4# Questions Correctly |q 66969/2 |goto 61.44,39.51
step
talk Sansok Khan##191283
turnin Clans of the Plains##66969 |goto 61.44,39.51
step
Watch the dialogue
talk Gemisath##194927
|tip She walks to this location.
accept The Emissary's Arrival##66948 |goto 61.03,40.44
step
talk Gemisath##194927
Tell her _"I am here to help restore the Green Oathstone."_
Offer Aid to the Green Dragonflight |q 66948/1 |goto 61.03,40.44
step
talk Gemisath##194927
turnin The Emissary's Arrival##66948 |goto 61.03,40.44
accept The Khanam Matra##66022 |goto 61.03,40.44
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
Tell him _"I'm ready for my audience."_
Speak to Khansguard Akato |q 66022/1 |goto 60.29,37.88
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin The Khanam Matra##66022 |goto 60.35,38.04
accept Trucebreakers##66023 |goto 60.35,38.04
stickystart "Slay_Nokhud_Forces"
step
talk Scout Tomul##191485
accept Covering Their Tails##66024 |goto 59.52,38.75
step
kill Guard Bahir##191843 |q 66024/1 |goto 58.03,39.36
step
label "Slay_Nokhud_Forces"
Kill Nokhud enemies around this area
|tip They look like enemy centaurs.
Slay #10# Nokhud Forces |q 66023/1 |goto 58.98,39.24
You can find more around [61.06,39.98]
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin Trucebreakers##66023 |goto 60.35,38.04
step
talk Khanam Matra Sarest##181198
|tip Outside, on top of the building.
turnin Covering Their Tails##66024 |goto 60.32,38.07
accept The Nokhud Threat##66025 |goto 60.32,38.07
step
Watch the dialogue
talk Khanam Matra Sarest##181198
|tip She walks to this location.
|tip Inside the building, on the top floor.
turnin The Nokhud Threat##66025 |goto 60.00,37.47
accept Hooves of War##66201 |goto 60.00,37.47
step
talk Flightmaster Washengtu##191814
fpath Broadhoof Outpost |goto 46.57,41.29
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin Hooves of War##66201 |goto 41.89,61.80
accept The Calm Before the Storm##66222 |goto 41.89,61.80
step
talk Flightmaster Carseng##192865
fpath Teerakai |goto 39.98,61.13
step
talk Scout Khenyug##189594
|tip Inside the hut.
Tell her _"Clan Nokhud has declared war on all Maruuk."_
Speak to Scout Khenyug |q 66222/4 |goto 37.57,59.45
step
talk Herbalist Agura##188337
Tell him _"War is coming. Jebotai asks you to prepare for casualties."_
Speak to Herbalist Agura |q 66222/1 |goto 38.48,57.41
step
talk Khansguard Hojin##190585
|tip He walks around this area.
Tell him _"Balakar has declared war on the Khanam Matra. Jebotai wants you to ready the khansguard."_
Speak to Khansguard Hojin |q 66222/3 |goto 39.50,55.35
step
talk Quartermaster Gensai##189593
|tip Inside the hut.
Tell him _"Clan Nokhud has declared war. Jebotai asks that you provide provisions."_
Speak to Quartermaster Gensai |q 66222/2 |goto 40.72,56.35
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin The Calm Before the Storm##66222 |goto 41.89,61.79
accept Boku the Mystic##70229 |goto 41.89,61.79
step
talk Initiate Boku##186290
|tip On top of the hill.
turnin Boku the Mystic##70229 |goto 36.81,57.27
accept Pessimistic Mystic##66254 |goto 36.81,57.27
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 36.71,57.13 |count 1
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 36.66,57.71 |count 2
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 37.10,57.82 |count 3
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto 37.20,57.26 |count 4
step
talk Initiate Boku##186290
turnin Pessimistic Mystic##66254 |goto 36.81,57.27
accept Mystic Mystery##66224 |goto 36.81,57.27
step
Meet Boku Outside Teerakai |q 66224/1 |goto 44.56,61.96
step
click Boku's Belongings
Choose _<Collect Boku's belongings.>_
Collect Boku's Belongings |q 66224/2 |goto 44.56,61.96
step
Search for Boku |q 66224/3 |goto 46.52,63.25
step
clicknpc Unidentified Centaur##190486
Choose _<Take the object.>_
|tip You will be attacked.
Investigate the Unidentified Centaur |q 66224/4 |goto 46.52,63.25
step
Continue Searching for Boku |q 66224/5 |goto 49.31,63.22
step
talk Initiate Boku##187795
turnin Mystic Mystery##66224 |goto 49.31,63.22
step
talk Tigari Khan##195316
accept Toting Totems##66225 |goto 49.36,63.13
accept Taken By Storm##70195 |goto 49.36,63.13
stickystart "Collect_Bundles_Of_Totems"
step
kill Shela the Windbinder##194884
Free Altan |q 70195/1 |goto 48.90,69.04
collect Ridgewater Retreat Orders##198698 |q 70195/2 |goto 48.90,69.04
step
label "Collect_Bundles_Of_Totems"
Kill Nokhud enemies around this area
|tip They look like centaurs.
collect 8 Bundle of Totems##193051 |q 66225/1 |goto 49.94,67.40
step
talk Tigari Khan##190648
turnin Toting Totems##66225 |goto 49.36,63.12
turnin Taken By Storm##70195 |goto 49.36,63.12
accept Catching Wind##66236 |goto 49.36,63.12
step
talk Initiate Boku##187804
turnin Catching Wind##66236 |goto 58.11,68.97
accept Weather Control##66242 |goto 58.11,68.97
accept Eagle-itarian##66256 |goto 58.11,68.97
accept Fowl Sorcery##66257 |goto 58.11,68.97
stickystart "Slay_Primalists"
stickystart "Kill_Stormcaller_Initiates"
stickystart "Kill_Stormbound_Essences"
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.51,69.02 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.06,67.43 |count 2
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 58.17,67.35 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 57.86,64.89 |count 3
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.66,64.09 |count 4
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 58.86,61.83 |count 2
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 58.78,61.73 |count 5
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto 59.65,64.03 |count 6
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 59.22,65.52 |count 3
step
click Boku's Wind Totem
|tip It looks like a yellow totem on top of the wagon.
Destroy the Wagon |q 66257/1 |goto 61.77,66.66 |count 4
step
label "Slay_Primalists"
Kill Pimalist enemies around this area
|tip They look like various races of humanoids.
Slay #6# Primalists |q 66256/2 |goto 59.81,66.03
step
label "Kill_Stormcaller_Initiates"
kill 6 Stormcaller Initiate##187817 |q 66242/2 |goto 59.35,66.22
|tip They look like centaurs channeling a blue spell on wind elementals around this area.
step
label "Kill_Stormbound_Essences"
kill 8 Stormbound Essence##187819 |q 66242/1 |goto 59.35,66.22
|tip They look like wind elementals.
step
talk Initiate Boku##187809
|tip On top of the mountain.
turnin Weather Control##66242 |goto 60.66,63.54
turnin Eagle-itarian##66256 |goto 60.66,63.54
turnin Fowl Sorcery##66257 |goto 60.66,63.54
accept Oh No, Ohn'ahra!##66258 |goto 60.66,63.54
step
Watch the dialogue
|tip Follow Boku and protect him as he fights enemies.
Kill enemies around this area
|tip Fill the bar in the quest tracker area.
Protect Boku from Enemies |q 66258/1 |goto 60.42,64.73
Free Ohn'ahra |q 66258/2 |goto 60.42,64.73
step
talk Initiate Boku##195024
turnin Oh No, Ohn'ahra!##66258 |goto 61.42,62.78
accept A Storm of Ill Tidings##66259 |goto 61.42,62.78
step
talk Flightmaster Huraq##195235
fpath Ohn'iri Springs |goto 56.68,76.59
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Tell her _"The Primalists have captured Ohn'ahra and have allied with Clan Nokhud."_
Speak to the Khanam Matra at Maruukai |q 66259/1 |goto 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
turnin A Storm of Ill Tidings##66259 |goto 60.00,37.47
accept Chasing the Wind##66327 |goto 60.00,37.47
step
Watch the dialogue
|tip Inside the building, on the top floor.
Hear the Report |q 66327/1 |goto 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Tell her _"I understand."_
Talk to Khanam Matra Sarest |q 66327/2 |goto 60.00,37.47
step
Meet Khanam Matra Sarest Outside the Horn of Drusahl |q 66327/4 |goto 73.03,40.59
step
talk Khanam Matra Sarest##188068
turnin Chasing the Wind##66327 |goto 73.03,40.59
accept Nokhud Can Come of This##70244 |goto 73.03,40.59
step
Kill enemies around this area
|tip Fill up the bar in the quest tracker area.
clicknpc Teerai Survivor##191097+
|tip They look like centuars laying on the ground around this area.
Retake the Village from the Nokhud |q 70244/1 |goto 75.33,40.90
step
kill Warmonger Kharad##190932 |q 70244/2 |goto 76.14,40.87
|tip He is elite.
|tip Your allies will help you fight.
step
talk Khanam Matra Sarest##191494
turnin Nokhud Can Come of This##70244 |goto 76.70,40.93
accept Blowing of the Horn##66329 |goto 76.70,40.93
step
talk Khanam Matra Sarest##188068
Tell her _"I am ready!"_
Talk to Khanam Matra Sarest |q 66329/1 |goto 76.70,40.93
step
talk Khanam Matra Sarest##188068
turnin Blowing of the Horn##66329 |goto 76.70,40.93
accept Green Dragon Down##66328 |goto 76.70,40.93
step
Find the Green Dragons |q 66328/1 |goto 72.35,50.33
step
talk Khanam Matra Sarest##188068
Tell her _"Let's explain ourselves."_
Speak to the Khanam Matra |q 66328/2 |goto 72.35,50.33
step
Watch the dialogue
Listen to the Discussion |q 66328/3 |goto 72.35,50.33
step
talk Khanam Matra Sarest##188068
turnin Green Dragon Down##66328 |goto 72.35,50.33
step
talk Flightmaster Nakeena##191622
|tip Up on the cliff.
fpath Pinewood Post |goto 80.43,57.89
step
talk Merithra##188156
accept With the Wind At Our Backs##66344 |goto 72.46,50.79
step
talk Gerithus##189697
Tell him _"I'm ready to go."_
Fly with Gerithus |q 66344/1 |goto 72.30,50.72
step
Begin Flying to Shady Sanctuary |invehicle |goto 72.30,50.72 |q 66344
step
Watch the dialogue
Fly to Shady Sanctuary |outvehicle |goto 28.62,58.21 |q 66344 |notravel
step
talk Merithra##188106
turnin With the Wind At Our Backs##66344 |goto 28.26,57.69
accept Shady Sanctuary##70220 |goto 28.26,57.69
step
talk Guard-Captain Alowen##194899
Tell her _"The Primalists are on the move. Merithra calls the flight to battle!"_
Speak to Guard-Captain Alowen |q 70220/1 |goto 29.06,55.26
step
talk Sidra the Mender##194902
Tell her _"You are needed at the front."_
Speak to Isidra the Mender |q 70220/3 |goto 30.19,55.68
step
talk Aronus##188972
Speak to Aronus to Visit Merithra's Watch |q 70220/4 |goto 29.28,56.43
step
talk Aronus##188972
Tell him _"Take me up to Merithra's Watch."_
Fly with Aronus |ontaxi |goto 29.28,56.43 |q 70220
step
Fly to Merithra's Watch |offtaxi |goto 29.51,60.34 |q 70220 |notravel
step
talk Viranikus##194903
|tip On the platform, overlooking the valley.
Tell him _"The centaur clans have declared their support. Rally your troops!"_
Speak to Viranikus |q 70220/5 |goto 29.77,59.96
step
talk Sariosa##186487
fpath Shady Sanctuary |goto 29.82,57.64
step
talk Sariosa##186487
Tell her _"The Ancient Bough is in danger! Please help deliver the message."_
Speak to Sariosa |q 70220/2 |goto 29.82,57.64
step
talk Merithra##188106
turnin Shady Sanctuary##70220 |goto 28.26,57.69
accept The Primalist Front##66331 |goto 28.26,57.69
step
talk Belika##186175
Tell her _"Merithra sent me to hear your report."_
Hear Aru and Belika's Report |q 66331/3 |goto 27.56,46.00
step
talk Boku##191325
Tell him _"I'm here to hear your report."_
Hear Boku's Report |q 66331/2 |goto 25.72,44.26
step
talk Ohn Seshteng##191343
Tell her _"Sounds like a breeze. I'm ready!"_
Watch the dialogue
|tip You will fly as a bird.
Hear Ohn Seshteng's Report |q 66331/4 |goto 26.18,40.07
step
talk Merithra##189599
Tell her _"Show me what you see."_
Speak to Merithra |q 66331/5 |goto 25.63,40.51
step
talk Khanam Matra Sarest##188601
turnin The Primalist Front##66331 |goto 25.67,40.43
step
talk Merithra##189599
accept Justice for Solethus##66333 |goto 25.63,40.51
stickystart "Kill_Nokhud_Warmongers"
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto 24.81,39.89 |count 1
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto 24.37,38.47 |count 2
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto 25.44,37.72 |count 3
step
label "Kill_Nokhud_Warmongers"
kill 3 Nokhud Warmonger##188341 |q 66333/1 |goto 24.49,37.45
|tip They look like large centaurs carrying polearms around this area.
step
_Next to you:_
talk Khanam Matra Sarest
turnin Justice for Solethus##66333
accept Deconstruct Additional Pylons##66335
accept Starve the Storm##66784
step
kill Primalist Storm-Summoner##191259+
|tip There are 3 of them.
|tip Inside the open cavern.
Deactivate the Storm Corridor |q 66784/1 |goto 24.94,34.90
step
_Next to you:_
talk Khanam Matra Sarest
turnin Starve the Storm##66784
step
extraaction Call Merithra##376006
|tip Use the "Call Merithra" ability.
|tip It appears as a button on the screen.
Mark the Second Primalist Pylon |q 66335/2 |goto 23.20,37.45
step
extraaction Call Merithra##376006
|tip Use the "Call Merithra" ability.
|tip It appears as a button on the screen.
Mark the Third Primalist Pylon |q 66335/3 |goto 21.44,37.58
step
extraaction Call Merithra##376006
|tip Use the "Call Merithra" ability.
|tip It appears as a button on the screen.
Mark the First Primalist Pylon |q 66335/1 |goto 23.91,39.38
step
_Next to you:_
talk Khanam Matra Sarest
turnin Deconstruct Additional Pylons##66335
accept Stormbreaker##66337
step
kill Stormbound Proto-Drake##195094
|tip Your allies will help you fight.
|tip Koroleth appears when the drake is at about 35% health, and kill it.
|tip After the drake dies, she will attack you.
kill Koroleth##188180 |q 66337/1 |goto 22.38,39.80
step
talk Gerithus##195136
Tell him _"Take me to Merithra."_
Speak to Gerithus |q 66337/2 |goto 22.92,40.20
step
Return to Merithra |outvehicle |goto 25.66,47.84 |q 66337 |notravel
step
talk Merithra##188150
turnin Stormbreaker##66337 |goto 25.65,48.40
accept The Isle of Emerald##66336 |goto 25.65,48.40
step
talk Merithra##188181
turnin The Isle of Emerald##66336 |goto 22.14,50.98
accept Renewal of Vows##66783 |goto 22.14,50.98
step
talk Sansok Khan##188246
Choose _<Suggest a trophy from her first hunt.>_
clicknpc Shikaar Spear##191195
|tip It appears in her hand.
Click Here After You Take the Spear |confirm |goto 22.28,50.88 |q 66783
step
talk Merithra##188181
Tell her _"Here is the weapon Sansok Khan earned after her first hunt."_
Accept Sansok Khan's Offering |q 66783/1 |goto 22.14,50.97
step
talk Tigari Khan##191156
Choose _<Suggest she offer an eagle feather.>_
clicknpc Ohuna Feather##191209
|tip It appears in her hand.
Click Here After You Take the Feather |confirm |goto 22.37,51.05 |q 66783
step
talk Merithra##188181
Tell her _"Here is a feather from Ohn'ahra, lifted upon the wind."_
Accept Tigari Khan's Offering |q 66783/2 |goto 22.14,50.98
step
talk Khanam Matra Sarest##188601
Choose _<Suggest she offer blood.>_
clicknpc Horn of the Khanam Matra##191208
|tip It appears in her hand.
Click Here After You Take the Horn |confirm |goto 22.34,50.95 |q 66783
step
talk Merithra##188181
Tell her _"Here is proof of the unbroken lineage of Clan Teerai, direct descendants of the centaur Teera."_
Accept Khanam Matra's Offering |q 66783/3 |goto 22.14,50.98
step
Watch the dialogue
clicknpc Everblooming Soil##197601
|tip It appears in Merithra's hands.
Click Here After You Take the Soil |confirm |goto 22.15,50.98 |q 66783
step
talk Khanam Matra Sarest##188601
Tell her _"Please accept Merithra's gift to the centaur clans."_
Give Merithra's Offering |q 66783/4 |goto 22.34,50.95
step
talk Merithra##188181
turnin Renewal of Vows##66783 |goto 22.14,50.98
accept Into the Azure##66340 |goto 22.14,50.98
step
talk Flightmaster Rynaam##192838
fpath Forkriver Crossing |goto 71.65,79.07
step
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"	|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\The Azure Span (Story Only)"			|only if not (achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\The Azure Span (Story Only)",{
author="support@zygorguides.com",
},[[
step
talk Masud the Wise##185599
turnin Azure Span##72268 |goto Ohn'ahran Plains/0 71.66,80.58
|only if haveq(72268) or completedq(72268)
step
talk Merithra##188181
accept Into the Azure##66340 |goto 22.14,50.98
|only if not achieved(16363)
step
talk Masud the Wise##185599
turnin Into the Azure##66340 |goto 71.66,80.58 |only if haveq(66340) or completedq(66340)
accept To the Azure Span##65686 |goto 71.66,80.58
step
talk Glania of the Blessed Ones##185603
turnin To the Azure Span##65686 |goto The Azure Span/0 41.44,35.61
accept Camp Antonidas##66228 |goto The Azure Span/0 41.44,35.61 |only if not Dracthyr
step
talk Scalecommander Emberthal##197023
accept Shades of Blue##70746 |goto 41.45,35.90
|only if Dracthyr
step
Meet Emberthal and Telash Outside of Camp Antonidas |q 70746/1 |goto 45.60,41.29
|only if Dracthyr
step
talk Scalecommander Emberthal##197023
turnin Shades of Blue##70746 |goto 45.61,41.25
|only if Dracthyr
step
Watch the dialogue
talk Telash Greywing##197025
accept The Azure Wizard##70747 |goto 45.65,41.27
|only if Dracthyr
step
talk Archmage Khadgar##192091
Ask him _"Do you serve the blue dragonflight?"_
Talk to Khadgar |q 70747/1 |goto 46.64,40.19
|only if Dracthyr
step
talk Archmage Khadgar##192091
turnin The Azure Wizard##70747 |goto 46.64,40.19
|only if Dracthyr
step
talk Noriko the All-Remembering##183543
turnin Camp Antonidas##66228 |goto 46.64,40.16
|only if not Dracthyr
step
talk Noriko the All-Remembering##183543
accept Assemble the Defenses##67033 |goto 46.69,39.77
step
talk Althanus##192222
accept Preservation of Knowledge##67035 |goto 46.67,39.73
step
talk Steward Argalos##189116
fpath Camp Antonidas |goto 46.71,39.56
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto 46.14,39.34 |count 1
step
click Discarded Book
|tip It looks like an open book.
|tip On the step of the wagon.
Retrieve the Collection of Tomes |q 67035/1 |goto 46.12,39.22 |count 1
step
click Discarded Book
|tip It looks like an open book.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto 46.11,38.51 |count 2
step
click Discarded Book
|tip It looks like an open book.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto 46.00,38.37 |count 3
step
click Discarded Book
|tip It looks like an open book.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto 45.87,38.45 |count 4
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto 45.86,40.17 |count 2
step
click Broken Arcane Device
|tip Inside the crumbled building.
collect Broken Arcane Device##194512 |q 67033/1 |goto 46.06,40.81 |count 3
step
talk Althanus##192222
turnin Preservation of Knowledge##67035 |goto 46.67,39.74
step
talk Noriko the All-Remembering##183543
turnin Assemble the Defenses##67033 |goto 46.69,39.77
accept Wrath of the Kirin Tor##67036 |goto 46.69,39.77
step
click Arcane Blaster
Control the Arcane Blaster |invehicle |goto 46.31,38.85 |q 67036
step
kill Proto-Drake##197693+
|tip They look like dragons flying in the air nearby to the east.
|tip Use the ability on your action bar.
Watch the dialogue
Repel the Primalist Army |q 67036/1 |goto 46.31,38.85
step
talk Noriko the All-Remembering##183543
turnin Wrath of the Kirin Tor##67036 |goto 46.64,40.16
step
talk Archmage Khadgar##192091
|tip He runs to this location.
accept Meeting Kalecgos##65688 |goto 46.64,40.19
step
clicknpc Supply Portal##188915
Tell it _"I need a "Bag of Helpful Goods" for Kalecgos."_
Watch the dialogue
Request a Bag of Helpful Goods |q 65688/1 |goto 45.99,38.79
step
click Bag of Helpful Goods
Recover the Bag of Helpful Goods |q 65688/2 |goto 45.95,38.89
step
Enter the building |goto 41.01,55.04 < 10 |walk
talk Kalecgos##185615
|tip Inside the building.
turnin Meeting Kalecgos##65688 |goto 40.92,55.00
accept The Many Images of Kalecgos##65689 |goto 40.92,55.00
step
click Crystal Pylon
|tip You will fly up to the platform nearby.
Use the Crystal Pylon |q 65689/1 |goto 41.15,55.41
step
Reach the Azure Archives |q 65689/2 |goto 41.16,57.81
step
talk Kalecgos##185622
turnin The Many Images of Kalecgos##65689 |goto 40.74,59.04
accept Driven Mad##65702 |goto 40.74,59.04
step
talk Kalecgos##185623
accept Arcane Pruning##65709 |goto 40.69,59.10
step
use the Bag of Helpful Goods##191953
collect Ley Scepter##191952 |q 65709/1
stickystart "Collect_Unstable_Arcane"
step
use the Ley Scepter##191952
|tip It may take a moment for the quest goal to complete.
Repair the North Arcane Field |q 65709/2 |goto 39.58,60.27
step
use the Ley Scepter##191952
|tip It may take a moment for the quest goal to complete.
Repair the East Arcane Field |q 65709/3 |goto 41.19,62.27
step
label "Collect_Unstable_Arcane"
Kill enemies around this area
collect 50 Unstable Arcana##190769 |q 65702/1 |goto 40.33,61.03
step
talk Kalecgos##185623
turnin Arcane Pruning##65709 |goto 40.69,59.10
step
talk Kalecgos##185622
turnin Driven Mad##65702 |goto 40.74,59.04
accept Straight to the Top##65852 |goto 40.74,59.04
step
use Bag of Helpful Goods##191978
collect Arcane Stepping Stone##191979 |q 65852/1 |goto 39.58,60.27
step
extraaction Arcane Stepping Stone##378026
|tip Use the "Arcane Stepping Stone" ability.
|tip It appears as a button on the screen.
|tip You will fly to the top of the floating platforms nearby.
Reach the Azure Archives Apex |q 65852/2 |goto 39.58,60.27
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Straight to the Top##65852 |goto 39.97,61.46
accept Platform Adjustments##65751 |goto 39.97,61.46
accept Arcane Annoyances##65752 |goto 39.97,61.46
stickystart "Kill_Feasting_Wyrms"
step
click Unstable Arcane Energy
|tip It looks like a portal spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto 39.51,61.51 |count 1
step
click Unstable Arcane Energy
|tip It looks like a portal spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto 39.58,62.71 |count 2
step
click Unstable Arcane Energy
|tip It looks like a portal spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto 40.23,62.03 |count 3
step
label "Kill_Feasting_Wyrms"
use the Arcane Hook##194891
|tip Use it on Feasting Wyrms.
|tip They look like flying purple dragons with no arms or legs around this area.
|tip On the highest floating platform. |notinsticky
kill 6 Feasting Wyrm##192739 |q 65752/1 |goto 39.90,61.69
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Platform Adjustments##65751 |goto 39.97,61.46
turnin Arcane Annoyances##65752 |goto 39.97,61.46
accept Reclaiming the Oathstone##65854 |goto 39.97,61.46
step
talk Kalecgos##186187
|tip On the ground.
Tell him _"I'm ready to see you reclaim the Azure Oathstone."_
Reclaim the Oathstone |q 65854/1 |goto 39.44,63.18
step
talk Sindragosa##186188
turnin Reclaiming the Oathstone##65854 |goto 39.48,63.07
accept Aiding Azure Span##65855 |goto 39.48,63.07
step
talk Arc Tel XVII##189459
fpath Azure Archives |goto 37.06,60.82
step
talk Arc Tel XVII##189459
Speak to the Flightmaster |q 65855/1 |goto 37.06,60.82
step
talk Noriko the All-Remembering##183543
turnin Aiding Azure Span##65855 |goto 46.64,40.16
accept Ask the Locals##66699 |goto 46.64,40.16
step
talk Korrikunit the Whalebringer##190229
Ask him _"Do you know of any ley lines in the area?"_
Consult Korrikunit |q 66699/1 |goto 46.76,38.59
step
talk Jokomuupat##190226
Tell her _"I'm looking for pockets of concentrated magic in the Azure Span."_
Consult Jokomuupat |q 66699/2 |goto 46.34,38.15
step
talk Babunituk##190225
Tell him _"I'm looking for crystals. Purple crystals. In caves."_
Consult Babunituk |q 66699/3 |goto 45.72,38.84
step
talk Babunituk##190225
turnin Ask the Locals##66699 |goto 45.72,38.84
accept Catch the Caravan##65864 |goto 45.72,38.84
step
talk Brena##186224
Tell her _"You must be Brena. I..."_
Find Brena |q 65864/1 |goto 35.25,36.98
step
Watch the dialogue
talk Brena##186224
turnin Catch the Caravan##65864 |goto 35.25,36.98
step
talk Elder Poa##188809
accept Those Aren't for Chewing##65868 |goto 35.37,36.94
step
Watch the dialogue
talk Brena##191810
accept Howling in the Big Tree Hills##65867 |goto 35.28,36.94
accept Snap the Traps##65866 |goto 35.28,36.94
stickystart "Spring_Traps"
stickystart "Collect_Funerary_Offerings"
step
kill Hyenamaster Durgun##186515 |q 65867/1 |goto 35.66,34.72
step
Enter the cave |goto 34.94,32.63 < 15 |walk
kill Trap-Layer Kerwal##186516 |q 65867/2 |goto 34.99,32.04
|tip Inside the cave.
step
Leave the cave |goto 34.94,32.63 < 15 |walk |only if subzone("Big Tree Hills") and _G.IsIndoors()
kill Bakra the Bully##186517 |q 65867/3 |goto 33.95,33.18
step
label "Spring_Traps"
click Bladejaw Trap+
|tip They look like silver metal bear traps on the ground around this area.
Spring #8# Traps |q 65866/1 |goto 34.75,34.50
step
label "Collect_Funerary_Offerings"
Kill enemies around this area
|tip Some of them are stealthed.
Collect #12# Funerary Offerings |q 65868/1 |goto 35.02,33.92
step
talk Hanu##186618
turnin Those Aren't for Chewing##65868 |goto 34.27,31.29
turnin Howling in the Big Tree Hills##65867 |goto 34.27,31.29
turnin Snap the Traps##65866 |goto 34.27,31.29
step
Watch the dialogue
talk Hanu##189642
|tip He runs to this location.
accept Gnoll Way Out##65871 |goto 34.42,31.11
step
talk Brena##186228
accept Ill Gnolls With Ill Intent##65872 |goto 34.37,31.02
accept Leader of the Shadepaw Pack##65873 |goto 34.37,31.02
step
talk Elder Poa##189662
accept Supplies!##65870 |goto 34.34,31.00
stickystart "Slay_Shadepaw_Gnolls"
step
Enter the cave |goto 34.02,30.77 < 20 |walk |only if not subzone("Kargpaw's Den")
click Basket of Hunting Game Calls
|tip It looks like a brown leather basket on the ground.
|tip Inside the cave.
collect Hunting Game Calls##192189 |q 65870/3 |goto The Azure Span/1 36.38,93.17
step
click Barrel of Salt
|tip It looks like a brown and tan leather barrel on the ground.
|tip Inside the cave.
|tip You will be attacked.
collect Meat Curing Salts##191111 |q 65870/1 |goto 28.96,75.19
step
click Crude Cage
|tip It looks like a wooden cage.
|tip Inside the cave.
Rescue the Tuskarr |q 65871/1 |goto 30.29,60.43 |count 1
step
clicknpc Norukk##186655
|tip He looks like a walrus person laying on the ground.
|tip Downstairs inside the cave.
Rescue Norukk |q 65871/2 |goto 41.43,63.90
step
click Crude Cage
|tip It looks like a wooden cage.
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto 46.08,41.66 |count 2
step
click Barrel of Skinning Tools
|tip It looks like a brown and tan leather barrel on the ground.
|tip Downstairs inside the cave.
|tip You will be attacked.
collect Skinning Tools##192190 |q 65870/2 |goto 51.56,36.59
step
click Crude Cage
|tip It looks like a wooden cage.
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto 38.09,32.94 |count 3
step
Follow the path down |goto 36.23,30.76 < 20 |walk
kill Kargpaw the Fetid##186660
|tip Downstairs inside the cave.
collect Kargpaw's Totem##191118 |q 65873/1 |goto 41.56,15.40
step
label "Slay_Shadepaw_Gnolls"
Kill Sickly enemies around this area
|tip They look like gnolls.
|tip Inside the cave.
Slay #16# Shadepaw Gnolls |q 65872/1 |goto 44.77,44.12
step
Leave the cave |goto 55.01,84.31 < 15 |walk |only if subzone("Kargpaw's Den")
talk Elder Poa##189662
turnin Supplies!##65870 |goto The Azure Span/0 34.34,31.00
step
talk Brena##186228
turnin Ill Gnolls With Ill Intent##65872 |goto 34.37,31.02
turnin Leader of the Shadepaw Pack##65873 |goto 34.37,31.02
step
talk Hanu##189642
turnin Gnoll Way Out##65871 |goto 34.42,31.10
step
talk Brena##186228
accept Spreading Decay##66239 |goto 34.37,31.02
step
talk Brena##187721
turnin Spreading Decay##66239 |goto 28.69,34.82
accept Another Ambush##65869 |goto 28.69,34.82
step
talk Akiun##187730
Ask him _"Can you tell me what happened?"_
Speak to Akiun |q 65869/1 |goto 28.68,34.75
step
clicknpc Tuskarr Fisherman##190136
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 29.24,33.57 |count 1
step
clicknpc Tuskarr Hunter##190142
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 29.17,32.55 |count 2
step
clicknpc Tuskarr Craftsman##190143
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 28.20,31.86 |count 3
step
clicknpc Festering Gnoll##190074
Choose _"<Inspect the corpse further...>"_
|tip You will be attacked.
|tip If you stay mounted you can quickly fly away.
Examine the Body |q 65869/2 |goto 27.97,32.83 |count 4
step
talk Brena##189708
turnin Another Ambush##65869 |goto 28.79,34.74
accept Urgent Action Required##66026 |goto 28.79,34.74
step
talk Bergede Broadchin##190332
fpath Three-Falls Lookout |goto 19.15,23.78
step
talk Brena##186179
turnin Urgent Action Required##66026 |goto 20.59,35.67
step
Watch the dialogue
talk Kalecgos##187873
|tip He walks to this location.
accept Breaching the Brackenhide##65838 |goto 20.53,35.69
step
click Rotting Root
|tip It looks like a large tree root sticking out of the ground.
Choose _<Cut the root.>_
Investigate the North Area |q 65838/1 |goto 18.40,34.74
step
click Rotting Root
|tip It looks like a large tree root sticking out of the ground.
Choose _<Cut the root.>_
Investigate the South Area |q 65838/2 |goto 18.87,37.01
step
click Rotting Root
|tip It looks like a large tree root sticking out of the ground.
Choose _<Cut the root.>_
Investigate the West Area |q 65838/3 |goto 17.59,36.98
step
talk Kalecgos##187873
turnin Breaching the Brackenhide##65838 |goto 16.75,37.31
accept Ley Litter##65846 |goto 16.75,37.31
step
talk Norukk##186181
accept Cut Out the Rot##65844 |goto 16.76,37.25
step
talk Brena##186179
accept Echoes of the Fallen##65845 |goto 16.75,37.22
stickystart "Kill_Rotting_Treants"
stickystart "Collect_Ley_Crystals"
stickystart "Kill_Brackenhide_Rotflingers"
step
use Brena's Totem##191928
|tip Use it on Kaqiata.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 17.46,37.08 |count 1
step
use Brena's Totem##191928
|tip Use it on Popoak.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 18.13,37.66 |count 2
step
use Brena's Totem##191928
|tip Use it on Lutokk.
|tip He looks like a walrus person laying on the ground.
|tip In the entrance of the cave.
Contact the Spirit |q 65845/1 |goto 18.52,37.27 |count 3
step
use Brena's Totem##191928
|tip Use it on Nomurok.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 17.54,37.93 |count 4
step
use Brena's Totem##191928
|tip Use it on Tuyuki.
|tip He looks like a walrus person laying on the ground.
Contact the Spirit |q 65845/1 |goto 17.41,38.66 |count 5
step
label "Kill_Rotting_Treants"
kill 5 Rotting Treant##186361 |q 65844/1 |goto 17.89,37.71
|tip They look like walking trees around this area.
You can find more inside the cave at [18.56,37.24]
step
label "Collect_Ley_Crystals"
click Gnawed Ley Crystal+
|tip They look like purple crystals on the ground around this area.
collect 7 Ley Crystal##194431 |q 65846/1 |goto 17.78,37.63
step
label "Kill_Brackenhide_Rotflingers"
kill 10 Brackenhide Rotflinger##186362 |q 65844/2 |goto 17.89,37.71
|tip They look like gnolls with animal skulls on their left shoulders.
You can find more inside the cave at [18.56,37.24]
step
talk Brena##186179
turnin Echoes of the Fallen##65845 |goto 16.75,37.22
step
talk Norukk##186181
turnin Cut Out the Rot##65844 |goto 16.76,37.25
step
talk Kalecgos##187873
turnin Ley Litter##65846 |goto 16.75,37.32
accept Tome-ward Bound##65848 |goto 16.75,37.32
step
talk Kalecgos##187873
Tell him _"I'm ready."_
Watch the dialogue
Speak to Kalecgos |q 65848/1 |goto 16.75,37.32
step
clicknpc Tome of Spellflinging##191636
Ride the Tome of Spellflinging |q 65848/2 |goto 16.72,37.30
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto 15.97,38.42 |count 1
|tip It looks like a larger enemy channeling a green spell.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto 15.15,38.04 |count 2
|tip It looks like a larger enemy channeling a green spell.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto 15.65,37.32 |count 3
|tip It looks like a larger enemy channeling a green spell.
|tip Use the abilities on your action bar.
step
Watch the dialogue
|tip Use the ability on your action bar.
kill Twisted Ancient##186194 |q 65848/4 |goto 15.41,37.69
step
Regroup at the Cave |outvehicle |goto 15.16,39.18 |q 65848 |notravel
|tip You will automatically travel into the cave.
step
Watch the dialogue
talk Kalecgos##187873
|tip Inside the cave.
turnin Tome-ward Bound##65848 |goto 15.30,39.43
accept Realignment##65847 |goto 15.30,39.43
step
click Ley Crystal
|tip Inside the cave.
Focus the Ley Line |q 65847/1 |goto 15.36,39.50
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto 15.51,39.30 |count 1
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto 15.30,39.12 |count 2
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto 15.07,39.53 |count 3
step
Leave the cave |goto 15.11,38.85 < 20 |walk |only if subzone("Brackenhide Hollow") and _G.IsIndoors()
talk Kalecgos##186177
|tip Next to the road.
turnin Realignment##65847 |goto 16.11,41.41
step
talk Brena##186179
accept To Iskaara##65849 |goto 16.08,41.45
step
talk Skygazer Paatu##186443
fpath Iskaara |goto 13.29,48.77
step
talk Brena##186480
|tip Inside the building.
turnin To Iskaara##65849 |goto 13.24,49.56
accept Gather the Family##66210 |goto 13.24,49.56
step
click Handcrafted Boat
|tip It looks like a small ship made out of bones.
Collect the Funeral Offering |q 66210/1 |goto 13.87,49.48 |count 1
step
click Decorated Teapot
|tip It looks like a white pot with a spout.
Collect the Funeral Offering |q 66210/1 |goto 13.48,48.57 |count 2
step
Enter the building |goto 12.79,49.34 < 10 |walk |only if not subzone("The Filled Bowl")
click Stone Sculpture
|tip It looks like a small stone walrus head statue.
|tip Inside the building.
Collect the Funeral Offering |q 66210/1 |goto 12.49,49.45 |count 3
step
Leave the building |goto 12.79,49.34 < 10 |walk |only if subzone("The Filled Bowl")
click Ornamented Shield
|tip It looks like a green and gold shield.
Collect the Funeral Offering |q 66210/1 |goto 12.46,50.32 |count 4
step
click Funeral Boat
Place the Offerings in the Boat |q 66210/2 |goto 13.13,48.57
step
talk Brena##186480
|tip Inside the building.
turnin Gather the Family##66210 |goto 13.24,49.56
step
talk Kalecgos##189793
|tip Inside the building.
accept The Cycle of the Sea##65850 |goto 13.27,49.53
step
talk Brena##186480
|tip Inside the building.
Tell her _"I'm ready to begin the funeral."_
Begin Following Brena |goto 13.24,49.56 > 10 |q 65850
step
Watch the dialogue
|tip Follow Brena as she walks.
|tip She eventually walks to this location.
Speak to Brena |q 65850/1 |goto 12.93,50.43
step
click Funeral Boat
Push the Boat Out to Sea |q 65850/2 |goto 13.16,50.20
step
talk Kalecgos##186177
turnin The Cycle of the Sea##65850 |goto 12.94,50.39
accept Azure Alignment##65911 |goto 12.94,50.39
step
talk Kalecgos##186280
turnin Azure Alignment##65911 |goto 39.48,63.02
accept Calling the Blue Dragons##66027 |goto 39.48,63.02
step
talk Kalecgos##186280
Tell him _"I'm ready to see you call back the blue dragonflight."_
Speak to Kalecgos |q 66027/1 |goto 39.48,63.02
step
talk Kalecgos##186280
turnin Calling the Blue Dragons##66027 |goto 39.48,63.02
accept To Rhonin's Shield##65886 |goto 39.48,63.02
step
talk Kruthix##191999
fpath Cobalt Assembly |goto 49.10,22.67
step
talk Taelmyr Blazewing##186742
fpath Theron's Watch |goto 65.37,16.39
step
Reach Rhonin's Shield |q 65886/1 |goto 65.90,25.48
step
talk Drok Scrollstabber##189751
turnin To Rhonin's Shield##65886 |goto 65.81,25.32
accept To the Mountain##65887 |goto 65.81,25.32
step
talk Portia Striat##191976
fpath Rhonin's Shield |goto 66.00,25.39
step
talk Kalecgos##186304
turnin To the Mountain##65887 |goto 70.01,35.23
accept Primal Offensive##65943 |goto 70.01,35.23
step
talk Khadgar##186305
accept Lava Burst##65944 |goto 70.03,35.34
accept Elemental Unfocus##66647 |goto 70.03,35.34
stickystart "Slay_Primalist_Forces_65943"
step
click Lava Orb
|tip It looks like an orange floating ball of lava.
Destroy the Lava Orb |q 65944/1 |goto 72.23,37.28 |count 1
step
Enter the cave |goto 72.89,38.52 < 15 |walk
kill Ruvin Stonegrinder##189939
|tip Inside the cave.
collect Elemental Focus##192478 |q 66647/1 |goto 72.91,38.72
step
click Lava Orb
|tip It looks like an orange floating ball of lava.
Destroy the Lava Orb |q 65944/1 |goto 73.12,37.76 |count 2
step
click Lava Orb
|tip It looks like an orange floating ball of lava.
Destroy the Lava Orb |q 65944/1 |goto 73.77,38.32 |count 3
step
label "Slay_Primalist_Forces_65943"
Kill enemies around this area
Slay #15# Primalist Forces |q 65943/1 |goto 72.65,37.62
step
talk Archmage Khadgar##186688
turnin Lava Burst##65944 |goto 74.47,37.84
turnin Elemental Unfocus##66647 |goto 74.47,37.84
step
talk Kalecgos##186686
turnin Primal Offensive##65943 |goto 74.47,37.81
accept Primal Power##65958 |goto 74.47,37.81
step
talk Archmage Khadgar##186688
accept Kirin Tor Recovery##65977 |goto 74.46,37.84
stickystart "Recover_The_Primal_Energies"
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 74.59,38.63 |count 1
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 75.27,37.21 |count 2
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 75.64,38.37 |count 3
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 76.13,37.86 |count 4
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 76.57,38.92 |count 5
step
click Elemental Drainer
|tip It looks like a spikey stone structure with an NPC in a tornado above it.
Rescue the Kirin Tor Mage |q 65977/1 |goto 76.02,39.53 |count 6
step
label "Recover_The_Primal_Energies"
Kill enemies around this area
use Elemental Focus##192479
|tip Use it next to their corpses.
Recover the Primal Energies |q 65958/1 |goto 75.49,38.27
|tip Fill the bar in the quest tracker area.
step
talk Archmage Khadgar##186779
turnin Primal Power##65958 |goto 76.95,39.43
turnin Kirin Tor Recovery##65977 |goto 76.95,39.43
accept Free Air##66007 |goto 76.95,39.43
step
extraaction Elemental Disguise##378814
|tip Use the "Elemental Disguise" ability.
|tip It appears as a button on the screen.
Disguise Yourself as an Elemental |havebuff spell:378814 |goto 76.95,39.43 |q 66007
step
_NOTE:_
During the Next Steps
|tip Avoid the blue swirls on the ground.
|tip Avoid the enemies with blue circles on the ground around them, they can see through your disguise.
Click Here to Continue |confirm |q 66007
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 77.36,39.91 |count 1
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 77.35,38.28 |count 2
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 78.22,37.64 |count 3
step
click Lava Beacon
|tip It looks like a large floating orange bubble with grey rocks circling around it.
Destroy the Lava Beacon |q 66007/1 |goto 78.55,39.04 |count 4
step
Enter the cave |goto 78.72,39.53 < 15 |walk
talk Kalecgos##186862
|tip Inside the cave.
turnin Free Air##66007 |goto 78.38,39.98
accept In Defense of Vakthros##66009 |goto 78.38,39.98
step
kill Korthrox the Destroyer##183422 |q 66009/1 |goto 79.27,36.33
|tip Blue circles (not the blue lightning swirls), will appear on on the ground as you fight him.
|tip Kalecgos will say "Seek sanctuary in my runes!" in your chat when the blue circles appear.
|tip Run into the blue circles when they appear on the ground.
|tip They will make you immune to damage while Korthrox uses a powerful ability.
step
talk Archmage Khadgar##193837
turnin In Defense of Vakthros##66009 |goto 77.99,32.47
accept The Storm-Eater's Fury##70041 |goto 77.99,32.47
step
click Arcane Disc
Board the Arcane Disc |q 70041/1 |goto 78.03,32.44
step
Watch the dialogue
Kill enemies around this area
|tip They look like fire and lava elementals, and humanoids on the ground nearby.
|tip Use the abilities on your action bar.
Slay #150# Primalist Army Soldiers |q 70041/2
step
Dispel #3# Storm Funnels |q 70041/3
|tip They look like grey swirling tornados on the ground nearby.
|tip Use the "Azure Dispel" ability on your action bar.
step
Kill enemies around this area
|tip They look like fire and lava elementals, and humanoids on the ground nearby.
|tip Use the abilities on your action bar.
Slay #200# Primalist Army Soldiers |q 70041/4
step
talk Kalecgos##187034
turnin The Storm-Eater's Fury##70041 |goto 78.22,33.34
accept The Blue Dragon Oathstone##66015 |goto 78.22,33.34
step
talk Camilla Highwind##186782
fpath Camp Nowhere |goto 63.45,58.66
step
talk Sindragosa##186188
Tell her _"I'm ready to see the oathstone be reclaimed."_
Witness the Ceremony |q 66015/1 |goto 39.48,63.07
step
talk Sindragosa##186188
turnin The Blue Dragon Oathstone##66015 |goto 39.48,63.07
step
talk Kalecgos##190000
accept To Valdrakken##66244 |goto 39.47,63.05
|only if not achieved(16363)
step
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"	|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Thaldraszus (Story Only)"			|only if not (achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Thaldraszus (Story Only)",{
author="support@zygorguides.com",
},[[
step
talk Aluri##193321
fpath Valdrakken |goto Valdrakken/0 44.04,67.97
step
Make Your Way to Valdrakken |q 66244/1 |goto 58.11,34.87
|tip At the top of the tower.
|only if haveq(66244)
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin To Valdrakken##66244 |goto 58.11,34.87 |only if haveq(66244) or completedq(66244)
turnin Thaldraszus##72269 |goto 58.11,34.87 |only if haveq(72269) or completedq(72269)
accept A Message Most Dire##66159 |goto 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Tell her _"So, about the Azure Span..."_
Deliver the Information |q 66159/1 |goto 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin A Message Most Dire##66159 |goto 58.11,34.87
step
Watch the dialogue
talk Captain Drine##189842
|tip She runs to this location.
|tip At the top of the tower.
accept Nowhere to Hide##66163 |goto 59.37,34.74
accept Eyes and Ears##66166 |goto 59.37,34.74
step
use the Revealing Dragon's Eye##198859
|tip At the top of the tower.
Use the Revealing Dragon's Eye |q 66163/1 |goto 59.37,34.74
step
talk Valdrakken Citizen##189869
Tell him _"Halt! I see through your disguise!"_
|tip You will be attacked by 3 enemies.
kill 3 Primalist Infiltrator##189895 |q 66163/2 |goto 80.36,50.34 |count 3
step
talk Valdrakken Citizen##189869
Tell him _"Halt! I see through your disguise!"_
|tip You will be attacked by 3 enemies.
kill 6 Primalist Infiltrator##189895 |q 66163/2 |goto 68.52,64.87 |count 6
step
Enter the building |goto 55.33,57.37 < 15 |walk
click Storage Chest
|tip Inside the building.
Watch the dialogue
Investigate the Bank |q 66166/2 |goto 59.20,54.70
step
click Consortium Ledger
|tip It looks like an open book on top of a wooden crate.
Watch the dialogue
Investigate the Crafter's Consortium |q 66166/1 |goto 34.63,61.30
step
Enter the building |goto 48.29,49.62 < 10 |walk
click Goblet
|tip It looks like a golden drinking cup on a table.
|tip Inside the building.
Watch the dialogue
Investigate the Inn |q 66166/3 |goto 46.92,47.72
step
talk Captain Drine##189842
|tip Near the entrance to a building.
turnin Nowhere to Hide##66163 |goto 54.77,47.23
turnin Eyes and Ears##66166 |goto 54.77,47.23
accept Southern Exposure##66167 |goto 54.77,47.23
step
talk Valdren##193454
|tip High up on the cliff.
fpath Garden Shrine |goto Thaldraszus/0 35.62,78.85
step
Travel to South Hold Gate |q 66167/1 |goto 35.85,82.56
step
talk Guardian Velomir##190086
Aid Guardian Velomir |q 66167/2 |goto 35.85,82.56
step
talk Guardian Velomir##190180
turnin Southern Exposure##66167 |goto 35.85,82.56
accept Vengeance, Served Hot##66169 |goto 35.85,82.56
accept The Fog of Battle##66246 |goto 35.85,82.56
stickystart "Slay_Magmasworn_Primalists"
step
clicknpc Mangled Corpse##190440
Choose _"Inspect the body."_
Find Velomir's Unit |q 66246/1 |goto 36.25,83.73 |count 1
step
Enter the building |goto 35.91,84.41 < 10 |walk
clicknpc Badly Injured Guardian##190442
|tip Inside the building.
Choose _"Inspect the body."_
Find Velomir's Unit |q 66246/1 |goto 35.76,84.19 |count 2
step
clicknpc Mangled Corpse##190247
Choose _"Inspect the body."_
Find Velomir's Unit |q 66246/1 |goto 36.46,85.39 |count 3
step
label "Slay_Magmasworn_Primalists"
Kill Magmasworn enemies around this area
Slay #12# Magmasworn Primalists |q 66169/1 |goto 36.47,84.79
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Vengeance, Served Hot##66169 |goto 37.62,83.08
turnin The Fog of Battle##66246 |goto 37.62,83.08
accept Remember the Fallen##66245 |goto 37.62,83.08
step
click Magmasworn Spear
|tip On the bridge.
accept Slightly Used Weapons##66247 |goto 37.85,83.26
stickystart "Collect_Magmasworn_Spears"
stickystart "Collect_South_Hold_Garrison_Signet"
step
click Coil of Heavy Rope
accept Tying Things Together##66248 |goto 38.56,83.41
step
click Coil of Heavy Rope+
|tip They look like ropes wound up in a circle on the ground and on objects around this area.
collect 5 Coil of Heavy Rope##192758 |q 66248/1 |goto 39.17,83.81
step
label "Collect_Magmasworn_Spears"
kill Magmasworn Rockcleaver##190420+
collect 6 Magmasworn Spear##192759 |q 66247/1 |goto 39.18,83.83
step
label "Collect_South_Hold_Garrison_Signet"
clicknpc South Hold Guardian##187516+
|tip They look like dead dragon people on the ground around this area.
collect 8 South Hold Garrison Signet##191269 |q 66245/1 |goto 38.94,83.89
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Remember the Fallen##66245 |goto 37.62,83.08
turnin Slightly Used Weapons##66247 |goto 37.62,83.08
turnin Tying Things Together##66248 |goto 37.62,83.08
accept Clear the Sky##66249 |goto 37.62,83.08
step
click Siege Scorpion
|tip It looks like a large crossbow machine.
|tip On a stone platform, overlooking the valley below.
Control a Siege Scorpion |q 66249/1 |goto 40.88,83.86
step
kill Magmasworn Trueborn##194543+
|tip They look like red dragons flying in the air nearby.
|tip Use the ability on your action bar.
Slay the Magmasworn |q 66249/2 |goto 40.88,83.86
|tip Fill the bar in the quest tracker area.
step
Enter the building |goto 40.36,85.33 < 20 |walk
talk Guardian Velomir##190558
|tip Inside the building.
turnin Clear the Sky##66249 |goto 40.56,85.48
accept Where's The Chief?##66250 |goto 40.56,85.48
step
talk Guardian Velomir##190558
|tip Inside the building.
Tell him _"I'm ready. Let's get in there!"_
Investigate the Lookout Tower |q 66250/1 |goto 40.56,85.48
step
talk Guardian Velomir##190562
turnin Where's The Chief?##66250 |goto 40.15,85.13
accept Fire Fighter##66251 |goto 40.15,85.13
step
kill Magmatalon##189538 |q 66251/1 |goto 40.29,87.10
|tip He looks like a black and orange dragon that flies in the air around this area.
|tip He will appear on your minimap as a yellow dot.
step
talk Guardian Velomir##190562
turnin Fire Fighter##66251 |goto 40.15,85.13
accept Reporting In##66252 |goto 40.15,85.13
step
talk Captain Drine##189842
|tip At the top of the tower.
turnin Reporting In##66252 |goto Valdrakken/0 55.94,39.96
step
talk Nozdormu##187669
|tip At the top of the tower.
accept The Flow of Time##66320 |goto 61.40,39.05
step
talk Talon Smoht##189018
|tip On a stone platform, overlooking the valley below.
fpath Gelikyr Post |goto Thaldraszus/0 51.16,67.09
step
talk Chromie##187100
Tell her _"Nozdormu sent me to help."_
Watch the dialogue
Speak with Chromie |q 66320/1 |goto 57.46,78.92
step
talk Chromie##187100
turnin The Flow of Time##66320 |goto 57.46,78.92
step
talk Andantenormu##187877
accept Temporal Difficulties##66080 |goto 57.53,78.79
step
talk Azim##193458
fpath Shifting Sands |goto 57.63,79.02
step
Find the Missing Recruit |q 66080/1 |goto 54.96,75.64
step
talk Siaszerathel##187098
turnin Temporal Difficulties##66080 |goto 54.96,75.64
accept Haven't Got Time For the Pain##70136 |goto 54.96,75.64
step
click Timewalker Notes
|tip It looks like an unrolled scroll on the ground.
collect Timewalker Notes##198408 |q 70136/2 |goto 53.18,77.38
step
Enter the cave |goto 52.96,76.86 < 10 |walk
kill Crazed Alpha##194224 |q 70136/3 |goto 52.69,76.81
|tip Inside the cave.
step
click Timewalker Staff
|tip It looks like a staff on the ground.
|tip Inside the cave.
collect Timewalker Staff##198410 |q 70136/1 |goto 52.71,76.86
step
talk Siaszerathel##187098
turnin Haven't Got Time For the Pain##70136 |goto 54.96,75.64
accept Time is Running Out##66081 |goto 54.96,75.64
accept Time in a Bottle##66082 |goto 54.96,75.64
stickystart "Collect_The_Energy"
step
click Temporal Collector+
|tip They look like floating blue crystals around this area.
|tip They will appear on your minimap as yellow dots.
collect 8 Temporal Collector##192602 |q 66081/1 |goto 55.12,77.65
step
label "Collect_The_Energy"
Kill Time-Charged enemies around this area
|tip They look like various animals.
|tip Walk into the Time Motes that appear after killing the enemies.
|tip They look like floating yellow orbs of light
Collect the Energy |q 66082/1 |goto 55.77,76.95
|tip Fill the bar in the quest tracker area.
step
talk Siaszerathel##187098
turnin Time is Running Out##66081 |goto 57.46,78.92
turnin Time in a Bottle##66082 |goto 57.46,78.92
step
Watch the dialogue
talk Andantenormu##187877
accept Feels Like the First Time##66083 |goto 57.52,78.79
step
Watch the dialogue
talk Andantenormu##190479
|tip He walks to this location.
Tell him _"I am ready to begin."_
Speak with Andantenormu |q 66083/1 |goto 57.58,78.38
step
click Temporal Collector
Drain the Collector |q 66083/2 |goto 57.68,78.33
step
click Crystal Focus
Empower the Conduit |q 66083/3 |goto 57.67,78.38
step
_NOTE:_
During This Quest
|tip If your guide viewer gets hidden after a reload screen during this quest, click the "Z" minimap button to make it appear again.
Click Here to Continue |confirm |q 66083
step
click Time-Lost Artifact
Watch the dialogue
Return the Artifact |q 66083/4 |goto 57.64,78.46
step
Watch the dialogue
Restore the Personal Timeline |q 66083/5
step
Return to Thaldraszus |complete zone("Thaldraszus") |q 66083
step
talk Andantenormu##187877
|tip He walks to this location.
turnin Feels Like the First Time##66083 |goto 57.52,78.79
accept Times Like These##66084 |goto 57.52,78.79
step
talk Siaszerathel##187098
accept If We Could Turn Back Time##66085 |goto 57.46,78.92
stickystart "Collect_Temporal_Residue"
step
click Time Rift
|tip It looks like a yellow swirling portal.
Close the First Rift |q 66085/1 |goto 58.59,78.22
step
talk Siaszerathel##187339
Tell her _"Show me what you got."_
Watch the dialogue
Observe Zera |q 66085/2 |goto 59.81,79.31
step
click Time Rift
|tip It looks like a yellow swirling portal.
Close the Second Rift |q 66085/3 |goto 60.01,79.28
step
click Time Rift
|tip It looks like a yellow swirling portal.
Close the Third Rift |q 66085/4 |goto 59.97,77.20
step
Watch the dialogue
talk Aeonormu##187504
Ask him _"Are you one of the Timewalkers?"_
Meet the Stranger |q 66085/5 |goto 59.95,77.23
step
label "Collect_Temporal_Residue"
Kill enemies around this area
collect 100 Temporal Residue##192809 |q 66084/1 |goto 59.11,78.16
step
talk Siaszerathel##187098
turnin If We Could Turn Back Time##66085 |goto 57.46,78.92
step
talk Andantenormu##187877
turnin Times Like These##66084 |goto 57.53,78.79
step
talk Aeonormu##190929
accept Closing Time##66087 |goto 57.55,78.86
step
extraaction Temporal Burst##376679
|tip Use the "Temporal Burst" ability near enemies and allies.
|tip It appears as a button on the screen.
|tip It will damage enemies and strengthen allies.
|tip You will get quest progress by strengthening allies.
Kill enemies around this area
click Various Object+
|tip They look like various different objects in yellow orbs on top of pedestals.
|tip They will appear on your minimap as yellow dots.
click Time Rift+
|tip They look like yellow swirling portals.
Preserve the Timeline |q 66087/1 |goto 57.49,83.13
|tip Fill the bar in the quest tracker area.
step
talk Aeonormu##190929
turnin Closing Time##66087 |goto 57.55,78.86
step
talk Andantenormu##187877
accept Catching Up to Chromie##65935 |goto 57.52,78.79
step
Meet Chromie at the Bronze Temple |q 65935/1 |goto 59.58,81.69
|tip Up on the platform.
step
talk Chromie##186711
|tip Up on the platform.
turnin Catching Up to Chromie##65935 |goto 59.58,81.69
accept Time-Locked Timewalkers##65947 |goto 59.58,81.69
accept Cracks in Time##65948 |goto 59.58,81.69
step
talk Andantenormu##186433
accept Quelling Causalities##66646 |goto 59.56,82.66
stickystart "Slay_The_Time_Elementals"
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 59.01,82.77 |count 1
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 58.72,82.43 |count 2
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 58.38,82.14 |count 3
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 58.13,82.83 |count 4
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip After using the ability, run away from the crystal to yank it.
Yank the West Crystal |q 65948/1
click Temporal Crystal Chunk+
|tip They look like various sized blue rocks.
|tip They appear on the ground around where the crystal lands after you pull it.
Collect #50# Temporal Energy |q 65948/3 |goto 58.35,83.09 |count 50
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.31,81.39 |count 5
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip After using the ability, run away from the crystal to yank it.
Yank the East Crystal |q 65948/2
click Temporal Crystal Chunk+
|tip They look like various sized blue rocks.
|tip They appear on the ground around where the crystal lands after you pull it.
Collect #100# Temporal Energy |q 65948/3 |goto 60.71,80.55 |count 100
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.86,80.03 |count 6
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.45,79.74 |count 7
step
extraaction Temporal Destabilizing Beam##373029
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
Free the Timewalker |q 65947/1 |goto 60.27,80.40 |count 8
step
label "Slay_The_Time_Elementals"
Kill enemies around this area
|tip They look like fire elementals.
Slay the Time Elementals |q 66646/1 |goto 60.51,80.57
|tip Fill the bar in the quest tracker area.
You can find more around [58.73,82.74]
step
talk Andantenormu##186433
turnin Quelling Causalities##66646 |goto 59.56,82.67
step
talk Chromie##186711
turnin Time-Locked Timewalkers##65947 |goto 59.58,81.69
turnin Cracks in Time##65948 |goto 59.58,81.69
accept The Once and Future Team##65938 |goto 59.58,81.69
step
extraaction Temporal Destabilizing Beam##372959
|tip Use the "Temporal Destabilizing Beam" ability.
|tip It appears as a button on the screen.
|tip After using the ability, run down the ramp to pull on the bubble.
Use the Timewalker Staff on the Temple Door Bubble |q 65938/1 |goto 60.60,83.46
step
kill Colossal Causality##186672
|tip It looks like a large fire elemental.
|tip Your allies will help you fight.
Slay the Giant Time Elemental |q 65938/2 |goto 60.72,83.68
step
talk Chromie##186711
turnin The Once and Future Team##65938 |goto 59.58,81.69
accept The Never-Final Countdown##65962 |goto 59.58,81.69
step
talk Chromie##186711
Choose _"<Tell Chromie you're ready.>"_
Speak to Chromie |q 65962/1 |goto 59.58,81.69
step
talk Warden Dialash##187013
fpath Temporal Conflux |goto 59.91,81.34
step
talk Nozdormu##186931
turnin The Never-Final Countdown##65962 |goto 60.05,82.45
accept Tumbling Through Time##70040 |goto 60.05,82.45
step
talk Andantenormu##185915
Tell him _"Nozdormu requests your presence."_
Speak with Andantenormu |q 70040/2 |goto 60.19,81.76
step
talk Soridormi##192403
Tell her _"Nozdormu requests your presence."_
Speak with Soridormi |q 70040/1 |goto 59.52,82.52
step
talk Siaszerathel##192404
Tell her _"Nozdormu requests your presence."_
Speak with Siaszerathel |q 70040/3 |goto 59.30,82.15
step
talk Nozdormu##186931
Tell him _"Everyone is gathered."_
Watch the dialogue
Speak with Nozdormu |q 70040/4 |goto 60.05,82.45
step
talk Nozdormu##186931
turnin Tumbling Through Time##70040 |goto 60.05,82.45
accept To the Future!##66028 |goto 60.05,82.45
accept Temporal Tuning##66029 |goto 60.05,82.45
step
click Portal to the Primalist Future
|tip It looks like a yellow swirling portal.
Take the Portal to the Future |q 66028/1 |goto 59.83,82.24
step
Enter the Primalist Future |complete zone("Primalist Tomorrow") |q 66028
step
talk Soridormi##183860
turnin To the Future!##66028 |goto Primalist Tomorrow/0 61.07,50.82
accept Resistance Isn't Futile##66030 |goto Primalist Tomorrow/0 61.07,50.82
step
talk Possible Future You##186953
accept Making Time##66031 |goto 61.46,50.19
stickystart "Heal_Injured_Resistance_Fighters"
stickystart "Collect_Elemental_Essences"
step
use the Chrono Crystal##192749
|tip Use it near Chromie and Eternus.
|tip They look like large dragons tumbling in the air.
Fix the Temporal Position |q 66029/1 |goto 47.10,41.28
step
label "Heal_Injured_Resistance_Fighters"
use the Bandages##192467
|tip Use them on Injured Resistance Fighters.
clicknpc Injured Resistance Fighter##187341+
|tip They look like allies laying on the ground around this area.
Heal #10# Injured Resistance Fighters |q 66030/1 |goto 51.12,30.48
You can find more around: |notinsticky
[45.12,18.99]
[44.58,33.95]
step
label "Collect_Elemental_Essences"
Kill enemies around this area
extraaction Accompanied by Zera##372444
|tip Use the "Accompanies by Zera" ability.
|tip Some of the enemies are elite, but Siaszerathel will follow you and help you fight.
|tip Try focus on finding non-elite enemies, so you can complete the quest faster.
collect 30 Elemental Essence##192454 |q 66031/1 |goto 45.91,30.57
step
talk Possible Future You##186953
|tip Up on the platform.
turnin Making Time##66031 |goto 61.46,50.20
step
talk Soridormi##183860
|tip Up on the platform.
turnin Resistance Isn't Futile##66030 |goto 61.08,50.82
accept Return to the Present##66032 |goto 61.08,50.82
step
click Portal to Temporal Conflux
|tip It looks like a yellow swirling portal.
Return to the Present |complete zone("Thaldraszus") |goto 61.01,50.52 |q 66032
step
talk Nozdormu##186931
turnin Temporal Tuning##66029 |goto Thaldraszus/0 60.05,82.45
turnin Return to the Present##66032 |goto Thaldraszus/0 60.05,82.45
accept To the... Past?##66033 |goto Thaldraszus/0 60.05,82.45
accept Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
step
click Portal to Azmerloth
|tip It looks like a yellow swirling portal.
Take the Portal to Azmerloth |q 66033/1 |goto 59.98,82.08
step
Travel to Azmerloth |complete zone("Azmerloth") |q 66033
step
talk Andantenormu##187344
turnin To the... Past?##66033 |goto Azmerloth/0 59.83,66.14
accept Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
step
talk Varian Wryngrrlgulgll##183854
accept Mugurlglrlgl!##66036 |goto Azmerloth/0 59.91,65.98
|only if Alliance
stickystart "Kill_Deathling_Destroyers_Alliance"
stickystart "Collect_Temprgrlglr_Motes_Alliance"
stickystart "Kill_Deathlings_Alliance"
step
use the Chrono Crystal##192749
|tip Use it near Chromie and Eternus.
|tip They look like large dragons tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto 61.59,61.82
|only if Alliance
step
label "Kill_Deathling_Destroyers_Alliance"
kill 5 Deathling Destroyer##190214 |q 66036/2 |goto 60.22,65.02
|tip They look like large metal murlocs around this area.
|only if Alliance
step
label "Collect_Temprgrlglr_Motes_Alliance"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto 60.22,65.02
|tip They look like floating yellow orbs of light around this area.
|tip Walk into them to collect them.
|tip They will appear on your minimap as yellow dots.
|only if Alliance
step
label "Kill_Deathlings_Alliance"
kill 25 Deathling##187342 |q 66036/1 |goto 60.22,65.02
|only if Alliance
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto 59.83,66.14
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Mugurlglrlgl!##66036 |goto 59.91,65.98
accept Deathwingurlugull!##70373 |goto 59.91,65.98
|only if Alliance
step
Watch the dialogue
clicknpc Murloc Hopper##195209
|tip It looks like an airplane that lands at this location.
Enter the Hopper |q 70373/1 |goto 59.81,65.70
|only if Alliance
step
kill Deathwingurlugull##195314 |q 70373/2 |goto 59.83,59.04
|tip It looks like a huge murloc.
|tip Use the abilities on your action bar.
|only if Alliance
step
Return to Varian Wryngrrlgulgll |outvehicle |goto 59.73,65.62 |q 70373
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Deathwingurlugull!##70373 |goto 59.91,65.98
|only if Alliance
step
talk Thrallgrulgulgul##183855
accept Mugurlglrlgl!##66704 |goto Azmerloth/0 59.98,65.97
|only if Horde
stickystart "Kill_Deathling_Destroyers_Horde"
stickystart "Collect_Temprgrlglr_Motes_Horde"
stickystart "Kill_Deathlings_Horde"
step
use the Chrono Crystal##192749
|tip Use it near Chromie and Eternus.
|tip They look like large dragons tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto 61.59,61.82
|only if Horde
step
label "Kill_Deathling_Destroyers_Horde"
kill 5 Deathling Destroyer##190214 |q 66704/2 |goto 60.22,65.02
|tip They look like large metal murlocs around this area.
|only if Horde
step
label "Collect_Temprgrlglr_Motes_Horde"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto 60.22,65.02
|tip They look like floating yellow orbs of light around this area.
|tip Walk into them to collect them.
|tip They will appear on your minimap as yellow dots.
|only if Horde
step
label "Kill_Deathlings_Horde"
kill 25 Deathling##187342 |q 66704/1 |goto 60.22,65.02
|only if Horde
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto 59.83,66.14
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Mugurlglrlgl!##66704 |goto 59.98,65.97
accept Deathwingurlugull!##70371 |goto 59.98,65.97
|only if Horde
step
Watch the dialogue
clicknpc Murloc Hopper##195209
|tip It looks like an airplane that lands at this location.
Enter the Hopper |q 70371/1 |goto 59.81,65.70
|only if Horde
step
kill Deathwingurlugull##195314 |q 70371/2 |goto 59.83,59.04
|tip It looks like a huge murloc.
|tip Use the abilities on your action bar.
|only if Horde
step
Return to Thrallgrulgulgul |outvehicle |goto 59.73,65.62 |q 70371
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Deathwingurlugull!##70371 |goto 59.98,65.97
|only if Horde
step
talk Andantenormu##187344
accept Back to Reality##66037 |goto Azmerloth/0 59.83,66.14
step
click Portal to Temporal Conflux
|tip It looks like a yellow swirling portal.
Return to the Present |complete zone("Thaldraszus") |goto 59.72,66.11 |q 66037
step
talk Nozdormu##186931
turnin Back to Reality##66037 |goto Thaldraszus/0 60.05,82.45
turnin Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
accept On Your Mark... Get Set...##66660 |goto Thaldraszus/0 60.05,82.45
step
click Portal to The Gnoll War
|tip It looks like a yellow swirling portal.
Take the Time Portal to the Gnoll War |q 66660/1 |goto 59.92,82.19
step
Travel to the Past |complete zone("The Gnoll War") |q 66660
step
talk Andantenormu##187435
turnin On Your Mark... Get Set...##66660 |goto The Gnoll War/0 43.38,69.22
step
_NOTE:_
During the Next Quest
|tip The next quest is a timed quest.
|tip You will be following the road to yellow swirling portals, in multiple zones.
|tip Walk into the yellow swirling portals to travel to the next zone.
|tip As you travel to the portals, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
Click Here to Continue |confirm |q 66038 |future
step
talk Andantenormu##187435
accept Race Through Time!##66038 |goto 43.38,69.22
step
Travel to the War of the Shifting Sands |complete zone("War of the Shifting Sands") |goto 32.38,49.69 |q 66038
|tip Follow the road and run into the yellow swirling portal.
|tip As you travel, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
step
Travel to the Pandaren Revolution |complete zone("Pandaren Revolution") |goto War of the Shifting Sands/0 39.55,76.76 |q 66038
|tip Follow the road and run into the yellow swirling portal.
|tip As you travel, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
step
Race Through Time |q 66038/1 |goto Pandaren Revolution/0 15.18,58.51
|tip Follow the road and run into the yellow swirling portal.
|tip As you travel, walk into the red and yellow boots hovering in pillars of white light.
|tip They will boost your speed.
|tip Avoid the circles on the ground, they will slow you down.
step
talk Andantenormu##187435
turnin Race Through Time!##66038 |goto The Black Empire/0 52.35,73.75
accept Chromie Time##66039 |goto The Black Empire/0 52.35,73.75
step
Follow the path and run up the stairs |goto 57.63,59.33 < 20 |only if walking
use the Chrono Crystal##192749
|tip Use it near Chromie.
|tip She looks like a large yellow dragon tumbling in the air.
extraaction Temporal Displacement##383031
|tip Use the "Temporal Displacement" ability.
|tip It appears as a button on the screen.
|tip This damages enemies and buffs you.
Fix the Temporal Position |q 66039/1 |goto 53.87,43.43
step
talk Chromie##186499
|tip She flies down and walks to this location.
turnin Chromie Time##66039 |goto 53.40,43.97
accept Back to the Future##66040 |goto 53.40,43.97
step
talk Chromie##186499
Tell her _"Let's do this!"_
|tip You may not be able to talk to her if another player already started the quest.
Kill the enemies that attack in waves
extraaction Temporal Displacement##383031
|tip Use the "Temporal Displacement" ability.
|tip It appears as a button on the screen.
|tip This damages enemies and buffs you.
Defend Your Allies |q 66040/2 |goto 53.40,43.97
|tip Fill the bar in the quest tracker area.
step
Return to the Present |complete zone("Thaldraszus") |q 66040
step
talk Chromie##183972
Choose _"<Quietly ask Chromie if Nozdormu is okay.>"_
Check in with Chromie |q 66040/3 |goto Thaldraszus/0 60.08,82.41
step
talk Nozdormu##186931
turnin Back to the Future##66040 |goto 60.05,82.45
accept Moving On##66221 |goto 60.05,82.45
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Tell her _"All of the Oathstones have been restored."_
Speak with Alexstrasza |q 66221/1 |goto Valdrakken/0 58.12,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Moving On##66221 |goto 58.12,34.87
step
talk Vesri##189339
|tip On a stone platform, overlooking the water.
fpath Algeth'era |goto Thaldraszus/0 49.47,41.94
step
talk Officer Obernax##189237
|tip On a stone platform, overlooking the water.
fpath Veiled Ossuary |goto 62.07,18.93
step
talk Nirazal##193508
|tip On a stone platform, overlooking the lava.
fpath Vault of the Incarnates |goto 72.14,56.45
step
|next "Leveling Guides\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"
|only if achieved(16334) and achieved(15394) and achieved(16336) and achieved(16363)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Dragon Glyphs\\Dragon Glyphs (All Zones)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
Dragon Glyphs & Dragonriding Skills
|tip Dragon Glyphs look like large round golden runes that float in the air, spread out across the continent.
|tip You fly through them on your dragonriding mount to collect them.
|tip Collecting them will give you Dragonriding skill points, which can be used to increase the power of your Dragonriding ability.
|tip This guide will walk you through collecting all of the Dragon Glyphs, so that you can max out your Dragonriding skill quickly.
|tip As you collect Dragon Glyphs, to spend the skill points, click the "Dragon Isles Summary" button on your minimap, and click the "View" button under "Dragonriding Skills & Unlocks".
Click Here to Continue |confirm
step
Collect the Dragon Glyph: Wingrest Embassy |achieve 15986 |goto The Waking Shores/0 74.87,37.40 |notravel
|tip Above the hole at the top of the tower.
step
Collect the Dragon Glyph: Scalecracker Peak |achieve 16052 |goto 73.20,20.51 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Life-Binder Observatory |achieve 15990 |goto 52.63,17.06 |notravel
|tip Above the top of the building.
step
Collect the Dragon Glyph: Dragonheart Outpost |achieve 16051 |goto 69.25,46.19 |notravel
|tip Inside the the crumbled tower, near the top.
step
Collect the Dragon Glyph: Skytop Observatory Tower |achieve 15985 |goto 75.27,57.04 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Skytop Observatory Rostrum |achieve 16668 |goto 74.34,57.59 |notravel
|tip Near the ground.
step
Collect the Dragon Glyph: Crumbling Life Archway |achieve 15991 |goto 57.64,54.98 |notravel
|tip Inside the arch of the wall, at the top.
step
Collect the Dragon Glyph: The Overflowing Spring |achieve 15989 |goto 46.40,52.12 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Obsidian Throne |achieve 16053 |goto 21.91,51.48 |notravel
|tip Above a pool of lava.
step
Collect the Dragon Glyph: Obsidian Bulwark |achieve 15987 |goto 40.97,71.88 |notravel
|tip Above the top of the large red stone pillar.
step
Collect the Dragon Glyph: Ruby Life Pools Peaks |achieve 15988 |goto 54.46,74.22 |notravel
|tip Above the top of the mountain.
step
Collect the Dragon Glyph: Flashfrost Enclave |achieve 16669 |goto 58.11,78.64 |notravel
|tip Near the ground, on the grassy ledge.
step
Collect the Dragon Glyph: Rubyscale Outpost |achieve 16670 |goto The Waking Shores/0 48.81,86.61 |notravel
|tip Near the ground, above the bridge.
step
Collect the Dragon Glyph: Mirewood Fen |achieve 16671 |goto Ohn'ahran Plains/0 78.38,21.26 |notravel
|tip Near the ground, above the tree.
step
Collect the Dragon Glyph: Rusza'thar Reach |achieve 16062 |goto 86.48,39.42 |notravel
|tip Above the building, at the top of the mountain peak.
step
Collect the Dragon Glyph: Ohn'ahra's Roost |achieve 16054 |goto 57.94,31.20 |notravel
|tip Above the massive owl statue, at the top of the mountain peak.
step
Collect the Dragon Glyph: Nokhudon Hold |achieve 16055 |goto 30.63,36.12 |notravel
|tip Near the top of the mountain peak.
step
Collect the Dragon Glyph: Emerald Gardens |achieve 16056 |goto 30.16,61.28 |notravel
|tip Above the top of the waterfall.
step
Collect the Dragon Glyph: The Eternal Kurgans |achieve 16057 |goto 29.50,75.24 |notravel
|tip High in the air, near the mountains.
step
Collect the Dragon Glyph: Szar Skeleth |achieve 16058 |goto 44.63,64.73 |notravel
|tip At the top of the crumbled tower.
step
Collect the Dragon Glyph: Mirror of the Sky |achieve 16059 |goto 47.26,72.24 |notravel
|tip High in the air, near the mountain.
step
Collect the Dragon Glyph: Ohn'iri Springs |achieve 16060 |goto 57.15,80.15 |notravel
|tip High in the air, near the mountain.
step
Collect the Dragon Glyph: Windsong Rise |achieve 16063 |goto 61.49,64.30 |notravel
|tip High in the air, above the mountain.
step
Collect the Dragon Glyph: Dragonsprings Summit |achieve 16061 |goto The Azure Span/0 46.57,21.71 |notravel
|tip High in the air, near to the wall with the waterfalls.
step
Collect the Dragon Glyph: Cobalt Assembly |achieve 16064 |goto The Azure Span/0 45.86,25.80 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Forkriver Crossing |achieve 16672 |goto Ohn'ahran Plains/0 70.13,86.70 |notravel
|tip In the air, above the road.
step
Collect the Dragon Glyph: Creektooth Den |achieve 16069 |goto The Azure Span/0 26.73,31.70 |notravel
|tip Above the top of the broken tree.
step
Collect the Dragon Glyph: Brackenhide Hollow |achieve 16068 |goto 10.38,35.84 |notravel
|tip High in the air, near the tall tree on top of the mountain.
step
Collect the Dragon Glyph: Azure Archive |achieve 16065 |goto 39.25,62.99 |notravel
|tip High in the air, near the highest floating platform and huge purple crystal.
step
Collect the Dragon Glyph: Zelthrak Outpost |achieve 16071 |goto 52.97,49.06 |notravel
|tip Close to the large tree, about halfway down the trunk.
step
Collect the Dragon Glyph: Imbu |achieve 16070 |goto 60.61,70.11 |notravel
|tip High in the air, above the lower waterfall on the side of the cliff.
step
Collect the Dragon Glyph: Ruins of Karnthar |achieve 16066 |goto 68.65,60.38 |notravel
|tip At the top of the crumbled tower.
step
Collect the Dragon Glyph: Lost Ruins |achieve 16067 |goto 70.56,46.26 |notravel
|tip Inside the open room at the top of the tower.
step
Collect the Dragon Glyph: Vakthros Range |achieve 16073 |goto 72.57,39.69 |notravel
|tip High in the air, above the ice on top of the mountain.
step
Collect the Dragon Glyph: Kalthraz Fortress |achieve 16072 |goto 67.64,29.12 |notravel
|tip Fly through the hole in the side of the top of the tower.
step
Collect the Dragon Glyph: The Fallen Course |achieve 16673 |goto 56.82,16.07 |notravel
|tip Near the ground, above the road.
step
Collect the Dragon Glyph: South Hold Gate |achieve 16100 |goto Thaldraszus/0 35.57,85.53 |notravel
|tip Inside the open room at the top of the tower.
step
Collect the Dragon Glyph: Stormshroud Peak |achieve 16099 |goto 46.10,73.97 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Valdrakken |achieve 16101 |goto Valdrakken/0 59.22,38.05 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Algeth'era |achieve 16102 |goto Thaldraszus/0 49.89,40.32 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Tyrhold |achieve 16103 |goto 61.56,56.61 |notravel
|tip On top of the large floating rock.
step
Collect the Dragon Glyph: Gelikyr Overlook |achieve 16666 |goto 52.69,67.46 |notravel
|tip Above the bridge.
step
Collect the Dragon Glyph: Passage of Time |achieve 16667 |goto  55.69,72.21 |notravel
|tip High in the air, near the large stone arch.
step
Collect the Dragon Glyph: Temporal Conflux |achieve 16098 |goto 66.01,82.34 |notravel
|tip Inside the open room at the top of the tower.
step
Collect the Dragon Glyph: Thaldrazsus Apex |achieve 16107 |goto 72.95,69.19 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Vault of the Incarnates |achieve 16106 |goto 72.39,51.51 |notravel
|tip Above a pool of lava.
step
Collect the Dragon Glyph: Algeth'ar Academy |achieve 16104 |goto 62.41,40.41 |notravel
|tip Inside the large open room at the top of the tower, up near the ceiling.
step
Collect the Dragon Glyph: Veiled Ossuary |achieve 16105 |goto 67.10,11.76 |notravel
|tip Inside the large open room at the top of the tower.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Dragonriding World Tour",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the normal and advanced dragonriding racing quests.",
startlevel=60,
patch='100002',
},[[
step
Complete the Dragon Glyphs guide
|tip You will need all of your dragonriding abilities unlocked to continue.
Click Here to Continue |confirm
|tip
Click Here to Load the "Dragon Glyphs (All Zones)" Guide |confirm |loadguide "Leveling Guides\\Dragonflight (60-70)\\Dragon Glyphs\\Dragon Glyphs (All Zones)" |q 72488 |future
step
talk Celormu##193411
accept The Waking Shores Tour##72481 |goto The Waking Shores/0 73.25,52.06
step
talk Bronze Timekeeper##190123
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Ruby Lifeshrine Loop |q 72481/1 |goto 63.32,70.91
step
talk Bronze Timekeeper##190326
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Flashfrost Flyover |q 72481/7 |goto 62.77,74.00
step
talk Bronze Timekeeper##190473
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Wild Preserve Slalom |q 72481/2 |goto 47.01,85.58
step
talk Bronze Timekeeper##190503
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Wild Preserve Circuit |q 72481/8 |goto 42.59,94.45
step
talk Bronze Timekeeper##190519
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Emberflow Flight |q 72481/3 |goto 41.97,67.30
step
talk Bronze Timekeeper##190551
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Apex Canopy River Run |q 72481/4 |goto 23.26,84.30
step
talk Bronze Timekeeper##190667
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Uktulut Coaster |q 72481/5 |goto 55.45,41.13
step
talk Bronze Timekeeper##190753
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Wingrest Roundabout |q 72481/6 |goto 73.19,33.93
step
talk Celormu##193411
turnin The Waking Shores Tour##72481 |goto The Waking Shores/0 73.25,52.06
accept The Ohn'ahran Plains Tour##72483 |goto The Waking Shores/0 73.25,52.06
step
talk Bronze Timekeeper##190928
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Sundapple Copse Circuit |q 72483/1 |goto Ohn'ahran Plains/0 63.74,30.52
step
talk Bronze Timekeeper##191422
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Fly through 9 rings quickly and return to the starting point.
|tip Green orbs restore your vigor.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
Earn Bronze in the Maruuki Dash |q 72483/5 |goto Ohn'ahran Plains/0 59.93,35.55
step
talk Bronze Timekeeper##191247
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Emerald Gardens Ascent |q 72483/4 |goto Ohn'ahran Plains/0 25.71,55.07
step
talk Bronze Timekeeper##196092
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the River Rapids Route |q 72483/7 |goto 43.74,66.78
step
talk Bronze Timekeeper##191511
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Fly through 9 rings quickly and return to the starting point.
|tip Green orbs restore your vigor.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
Earn Bronze in the Mirror of the Sky Dash |q 72483/6 |goto Ohn'ahran Plains/0 47.48,70.63
step
talk Bronze Timekeeper##191165
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Ravine River Run |q 72483/3 |goto Ohn'ahran Plains/0 80.89,72.20
step
talk Bronze Timekeeper##191121
|tip In the top of the tower.
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Fen Flythrough |q 72483/2 |goto Ohn'ahran Plains/0 86.26,35.82
step
talk Celormu##199118
turnin The Ohn'ahran Plains Tour##72483 |goto Ohn'ahran Plains/0 88.09,36.28
accept The Azure Span Tour##72485 |goto Ohn'ahran Plains/0 88.09,36.28
step
talk Bronze Timekeeper##191947
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Azure Span Slalom |q 72485/2 |goto The Azure Span/0 20.95,22.63
step
talk Bronze Timekeeper##192886
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Iskaara Tour |q 72485/4 |goto The Azure Span/0 16.58,49.37
step
talk Bronze Timekeeper##193027
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Archive Ambit |q 72485/6 |goto The Azure Span/0 42.27,56.77
step
talk Bronze Timekeeper##194372
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Azure Span Sprint |q 72485/1 |goto The Azure Span/0 47.91,40.79
step
talk Bronze Timekeeper##192945
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Frostland Flyover |q 72485/5 |goto The Azure Span/0 48.47,35.79
step
talk Bronze Timekeeper##192115
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid flaming orange balls around the lava fields.
Earn Bronze in the Vakthros Ascent |q 72485/3 |goto The Azure Span/0 71.29,24.64
step
talk Celormu##199119
turnin The Azure Span Tour##72485 |goto The Azure Span/0 63.16,13.65
accept The Thaldraszus Tour##72487 |goto The Azure Span/0 63.16,13.65
step
talk Bronze Timekeeper##194348
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Garden Gallivant |q 72487/5 |goto Thaldraszus/0 39.50,76.19
step
talk Bronze Timekeeper##192555
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Flowing Forest Flight |q 72487/1 |goto Thaldraszus/0 57.77,75.01
step
talk Bronze Timekeeper##193651
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Tyrhold Trial |q 72487/2 |goto Thaldraszus/0 57.24,66.90
step
talk Bronze Timekeeper##193951
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Academy Ascent |q 72487/4 |goto Thaldraszus/0 60.29,41.59
step
talk Bronze Timekeeper##194372
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Caverns Criss-Cross |q 72487/6 |goto Thaldraszus/0 58.06,33.62
step
talk Bronze Timekeeper##193911
|tip Inside the tower.
Tell him _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Cliffside Circuit |q 72487/3 |goto Thaldraszus/0 37.65,48.93
step
talk Celormu##199120
turnin The Thaldraszus Tour##72487 |goto Thaldraszus/0 46.04,63.03
accept The Waking Shores Advanced Tour##72482 |goto Thaldraszus/0 46.04,63.03
step
The following steps require advanced piloting
|tip You will need to consistently maintain a very high rate of speed.
|tip Courses will typically have floating obstacles to avoid that will stall your flight.
|tip Collecting all green orbs in your path is critical if you wish to achieve gold rating.
|tip Be sure to catch every wind draft along the race path as well.
Click Here to Continue |confirm |q 72488 |future
step
talk Bronze Timekeeper##190123
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Ruby Lifeshrine Loop |q 72482/1 |goto The Waking Shores/0 63.32,70.91
step
talk Bronze Timekeeper##190326
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Flashfrost Flyover |q 72482/7 |goto 62.77,74.00
step
talk Bronze Timekeeper##190473
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Wild Preserve Slalom |q 72482/2 |goto 47.01,85.58
step
talk Bronze Timekeeper##190503
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Wild Preserve Circuit |q 72482/8 |goto 42.59,94.45
step
talk Bronze Timekeeper##190519
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid gouts of lava that spray into the air.
Earn Bronze in the Advanced Emberflow Flight |q 72482/3 |goto 41.97,67.30
step
talk Bronze Timekeeper##190551
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Apex Canopy River Run |q 72482/4 |goto 23.26,84.30
step
talk Bronze Timekeeper##190667
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Uktulut Coaster |q 72482/5 |goto 55.45,41.13
step
talk Bronze Timekeeper##190753
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Wingrest Roundabout |q 72482/6 |goto 73.19,33.93
step
talk Celormu##193411
turnin The Waking Shores Advanced Tour##72482 |goto The Waking Shores/0 73.25,52.06
accept The Ohn'ahran Plains Advanced Tour##72484 |goto The Waking Shores/0 73.25,52.06
step
talk Bronze Timekeeper##190928
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Sundapple Copse Circuit |q 72484/1 |goto Ohn'ahran Plains/0 63.74,30.52
step
talk Bronze Timekeeper##191247
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Emerald Gardens Ascent |q 72484/4 |goto Ohn'ahran Plains/0 25.71,55.07
step
talk Bronze Timekeeper##196092
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced River Rapids Route |q 72484/5 |goto 43.74,66.78
step
talk Bronze Timekeeper##191165
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Ravine River Run |q 72484/3 |goto Ohn'ahran Plains/0 80.89,72.20
step
talk Bronze Timekeeper##191121
|tip In the top of the tower.
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Fen Flythrough |q 72484/2 |goto Ohn'ahran Plains/0 86.26,35.82
step
talk Celormu##199118
turnin The Ohn'ahran Plains Advanced Tour##72484 |goto Ohn'ahran Plains/0 88.09,36.28
accept The Azure Span Advanced Tour##72486 |goto Ohn'ahran Plains/0 88.09,36.28
step
talk Bronze Timekeeper##191947
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Azure Span Slalom |q 72486/2 |goto The Azure Span/0 20.95,22.63
step
talk Bronze Timekeeper##192886
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Iskaara Tour |q 72486/4 |goto The Azure Span/0 16.58,49.37
step
talk Bronze Timekeeper##193027
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Archive Ambit |q 72486/6 |goto The Azure Span/0 42.27,56.77
step
talk Bronze Timekeeper##194372
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Azure Span Sprint |q 72486/1 |goto The Azure Span/0 47.91,40.79
step
talk Bronze Timekeeper##192945
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Frostland Flyover |q 72486/5 |goto The Azure Span/0 48.47,35.79
step
talk Bronze Timekeeper##192115
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid flaming orange balls around the lava fields.
Earn Bronze in the Advanced Vakthros Ascent |q 72486/3 |goto The Azure Span/0 71.29,24.64
step
talk Celormu##199119
turnin The Azure Span Advanced Tour##72486 |goto The Azure Span/0 63.16,13.65
accept The Thaldraszus Advanced Tour##72488 |goto The Azure Span/0 63.16,13.65
step
talk Bronze Timekeeper##194348
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Garden Gallivant |q 72488/5 |goto Thaldraszus/0 39.50,76.19
step
talk Bronze Timekeeper##192555
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Flowing Forest Flight |q 72488/1 |goto Thaldraszus/0 57.77,75.01
step
talk Bronze Timekeeper##193651
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid flaming orange balls around the lava fields.
Earn Bronze in the Advanced Tyrhold Trial |q 72488/2 |goto Thaldraszus/0 57.24,66.90
step
talk Bronze Timekeeper##193951
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Academy Ascent |q 72488/4 |goto Thaldraszus/0 60.29,41.59
step
talk Bronze Timekeeper##194372
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Caverns Criss-Cross |q 72488/6 |goto Thaldraszus/0 58.06,33.62
step
talk Bronze Timekeeper##193911
|tip Inside the tower.
Tell him _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Cliffside Circuit |q 72488/3 |goto Thaldraszus/0 37.65,48.93
step
talk Celormu##199120
turnin The Thaldraszus Advanced Tour##72488 |goto Thaldraszus/0 46.04,63.03
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Dragonflight Campaign",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various chapters of the Dragonflight campaign.",
startlevel=68,
patch='100002',
},[[
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
accept Renown of the Dragon Isles##71232 |goto Valdrakken/0 58.00,34.60
step
talk Therazal##196499
turnin Renown of the Dragon Isles##71232 |goto 50.15,56.29
accept Open Orientation##72585 |goto 50.15,56.29
step
Enter the building |goto Valdrakken/0 55.41,45.81 < 30 |walk
talk Unatos##193015
|tip Inside the building.
accept Orientation: Valdrakken##72406 |goto 58.16,35.11
step
talk Kaestrasz##185561
Meet the Drake Manuscript and Armor Supplier |q 72406/2 |goto 46.67,78.94
step
talk Dothenos##191000
Meet the Trade Coordinator |q 72406/3 |goto 36.43,62.79
step
Enter the building |goto 37.57,50.31 < 10 |walk
talk Provisioner Thom##193659
|tip Inside the building.
Meet the Equipment Supplier |q 72406/1 |goto 36.57,50.64
step
talk Unatos##193015
|tip Inside the building, on the ground floor.
turnin Orientation: Valdrakken##72406 |goto 58.17,35.12
step
talk Naleidea Rivergleam##186869
accept Orientation: Dragonscale Basecamp##72397 |goto The Waking Shores/0 47.88,82.41
step
talk Rae'ana##188265
Meet the Scholars Supplier |q 72397/1 |goto 47.92,82.08
step
talk Granpap Whiskers##187408
Meet the Catalogers Supplier |q 72397/2 |goto 47.73,83.23
step
talk Pathfinder Jeb##187700
Meet the Explorers Supplier |q 72397/3 |goto 47.33,83.40
step
talk Boss Magor##189065
Meet the Artisans Supplier |q 72397/4 |goto 46.94,82.89
step
Enter the building |goto 47.30,82.77 < 10 |walk
talk Cataloger Jakes##189226
|tip Inside the building.
Meet the Keeper of Renown |q 72397/5 |goto 47.11,82.57
step
talk Toddy Whiskers##187276
|tip Inside the building.
turnin Orientation: Dragonscale Basecamp##72397 |goto 47.22,82.73
step
talk Sansok Khan##191283
accept Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 61.44,39.51
step
talk Quartermaster Huseng##196707
|tip Inside the building.
Meet the Renown Quartermaster |q 72429/2 |goto 60.40,37.72
step
talk Agari Dotur##185179
|tip Inside the building.
Meet the Keeper of Renown |q 72429/1 |goto 60.40,37.66
step
talk Agari Dotur##185179
|tip Inside the building.
turnin Orientation: Maruukai##72429 |goto 60.40,37.66
step
talk Murik##193006
accept Orientation: Iskaara##72435 |goto The Azure Span/0 13.14,49.26
step
talk Arvik##186449
Meet the Equipment Supplier |q 72435/1 |goto 12.90,48.82
step
talk Norukk##196544
Meet the Drake Scholar |q 72435/4 |goto 12.93,48.62
step
talk Tatto##186462
Meet the Mount Supplier |q 72435/3 |goto 13.80,49.73
step
talk Rokkutuk##194059
Meet the Recipe Supplier |q 72435/2 |goto 13.91,50.08
step
talk Murik##193006
turnin Orientation: Iskaara##72435 |goto 13.14,49.26
step
talk Therazal##196499
turnin Open Orientation##72585 |goto Valdrakken/0 50.15,56.29
accept Learning Ingenuity##72773 |goto Valdrakken/0 50.17,56.25
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
accept To Tyrhold##70437 |goto Valdrakken/0 58.00,34.60
step
talk Alexstrasza the Life-Binder##187678
Tell her _"I am ready."_
Speak to Alexstrasza |q 70437/1 |goto 58.00,34.60
step
Travel to Tyrhold |q 70437/2 |goto Thaldraszus/0 57.46,58.73
step
talk Skygazer Paatu##186443
turnin To Tyrhold##70437 |goto 57.46,58.73
accept Aspect Power##66675 |goto 57.46,58.73
step
talk Alexstrasza the Life-Binder##187658
Tell her _"I am ready to begin."_
Begin the Ritual |q 66675/1 |goto 57.46,58.73
step
kill Ezrigeth##187666 |q 66675/2 |goto 57.64,58.40
|tip Move out of areas targeted on the ground.
|tip When it breathes, move around to avoid being hit.
step
talk Nozdormu##192455
turnin Aspect Power##66675 |goto 57.45,59.07
accept Red Dawn##67073 |goto 57.45,59.07
step
talk Alexstrasza the Life-Binder##190902
turnin Red Dawn##67073 |goto 72.51,56.16
step
talk Greyzik Cobblefinger##196066
turnin Learning Ingenuity##72773 |goto Valdrakken/0 84.21,54.39
accept Jump-Start? Jump-Starting!##70180 |goto 84.21,54.39
step
clicknpc Goblin Gyrocopter##196104
Pilot the Goblin Gyrocopter |q 70180/1 |goto 84.73,54.77
step
Super-Charge the Device |q 70180/2 |goto 84.04,53.56
|tip Use the "Electromagnetic Bolt 2000" ability on your vehicle bar.
|tip Fire it at the yellow arrow above the console below 5 times.
step
Eject from the Gyrocopter |q 70180/3 |goto 84.04,53.56
|tip Use the "Eject!" ability on your vehicle bar.
step
click Engine of Innovation
Activate the Engine of Innovation |q 70180/4 |goto 84.04,53.56
step
talk Maiden of Inspiration##196475
turnin Jump-Start? Jump-Starting!##70180 |goto 84.35,53.56
accept In Tyr's Footsteps##70845 |goto 84.35,53.56
step
click Ornamental Statue
turnin In Tyr's Footsteps##70845 |goto The Azure Span/0 67.18,30.72
accept First Challenge of Tyr: Finesse##70181 |goto 67.18,30.72
step
clicknpc Maiden of Inspiration##194533
|tip You will be launched into the air after a short wait.
Speak with Maiden of Inspiration to Begin |q 70181/1 |goto 67.13,30.92
step
extraaction Boost##384262
|tip You will be launched into the air.
|tip Use the "Boost" ability on your screen to regain a little altitude.
|tip Float through 10 rings before the 2 minute buff expires.
|tip If it expires, you will fall to the ground.
Fly through #10# Rings |q 70181/2 |goto 66.14,29.94
step
talk Maiden of Inspiration##195827
turnin First Challenge of Tyr: Finesse##70181 |goto 67.12,30.92
accept The Sweet Taste of Victory##70182 |goto 67.12,30.92
step
talk Maiden of Inspiration##196475
turnin The Sweet Taste of Victory##70182 |goto Valdrakken/0 84.34,53.54
accept Fueling the Engine##70633 |goto 84.34,53.54
step
extraaction Create Spark of Ingenuity##391331
|tip Use the ability on your screen.
Use the Bottled Essence to Power up the Engine |q 70633/1 |goto 84.34,53.54
step
talk Maiden of Inspiration##196475
turnin Fueling the Engine##70633 |goto 84.34,53.54
step
talk Greyzik Cobblefinger##196066
accept Crafting Orders##72783 |goto 85.02,54.45
step
talk Head Clerk Mimzy Sprazzlerock##185542
View Crafting Orders from Mimzy Sprazzlerock |q 72783/1 |goto 34.64,62.95
step
Click the Complete Quest Box
|tip It appears attached to your quest log.
turnin Crafting Orders##72783
step
talk Maiden of Inspiration##196475
accept In Tyr's Footsteps: The Ohn'ahran Plains##70339 |goto 84.34,53.54
step
click Ornamented Statue
turnin In Tyr's Footsteps: The Ohn'ahran Plains##70339 |goto Ohn'ahran Plains/0 66.14,55.21
accept Second Challenge of Tyr: Might##70376 |goto 66.14,55.21
step
talk Maiden of Inspiration##195088
Tell her _"I am ready to begin."_
extraaction Accelerated Healing##385015
|tip Use this for an instant heal.
Kill enemies that attack in waves
kill Proto Dragon##195177 |q 70376/1 |goto 66.28,55.33
|tip You don't need to start the event, but you need to deal damage to the dragon to complete it.
step
talk Maiden of Inspiration##195924
turnin Second Challenge of Tyr: Might##70376 |goto 66.28,55.33
accept Well Earned Victory##70341 |goto 66.28,55.33
step
click Portal to Valdrakken
Use the Portal |q 70341/1 |goto 66.25,55.40
step
talk Maiden of Inspiration##196475
turnin Well Earned Victory##70341 |goto Valdrakken/0 84.33,53.55
step
talk Maiden of Inspiration##196475
accept In Tyr's Footsteps: The Waking Shores##70650 |goto 84.35,53.56
step
Enter the cave |goto The Waking Shores/0 63.84,40.87 < 10 |walk
talk Maiden of Inspiration##196475
|tip Inside the cave.
turnin In Tyr's Footsteps: The Waking Shores##70650 |goto 64.02,41.46
accept Third Challenge of Tyr: Persistence##70509 |goto 64.02,41.46
step
talk Maiden of Inspiration##195558
|tip Inside the cave.
Ask her _"What happened?"_
Speak with the Maiden of Inspiration |q 70509/1 |goto 64.10,41.39
step
Watch the dialogue
Watch the Projection |q 70509/2 |goto 64.10,41.39
step
Enter the building |goto 66.17,34.97 < 10 |walk
click Broken Head##380940
|tip Inside the building.
collect Broken Part: Head##198982 |q 70509/3 |goto 66.35,34.88
step
click Broken Arm##380941
collect Broken Part: Arm##198983 |q 70509/4 |goto 64.44,34.29
step
kill Qalashi Marauder##195678
collect Broken Part: Shattered Orb##198984 |q 70509/5 |goto 65.60,32.69
step
Enter the cave |goto 63.84,40.87 < 10 |walk
click Broken Ornamented Statue
|tip Inside the cave.
Repair the Statue |q 70509/6 |goto 64.02,41.46
step
talk Maiden of Inspiration##195737
|tip Inside the cave.
turnin Third Challenge of Tyr: Persistence##70509 |goto 64.10,41.39
accept Third Challenge of Tyr: Persistence Embodied##70621 |goto 64.10,41.39
accept Victorious##70510 |goto 64.10,41.39
step
click Portal to Valdrakken
|tip Inside the cave.
Use the Portal |q 70510/2 |goto 64.05,41.37
step
Return to Engine of Innovation |q 70510/1 |goto Valdrakken/0 84.34,53.55
step
talk Maiden of Inspiration##196475
turnin Victorious##70510 |goto 84.34,53.55
step
talk Maiden of Inspiration##196475
accept Fourth Challenge of Tyr: Resourcefulness##70881 |goto Valdrakken/0 84.34,53.55
step
kill Watcher Irideus##189719
collect Irideus' Power Core##200108 |q 70881/1 |goto Halls of Infusion/0 61.58,35.28 |or
|tip Inside the Halls of Infusion dungeon.
Click Here to Load the "Halls of Infusion" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Dragonflight Dungeons\\Halls of Infusion" |or
step
kill Primal Tsunami##189729 |q 70881/2 |goto Halls of Infusion/1 42.76,47.50 |or
|tip Inside the Halls of Infusion dungeon.
Click Here to Load the "Halls of Infusion" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Dragonflight Dungeons\\Halls of Infusion" |or
step
talk Maiden of Inspiration##196475
turnin Fourth Challenge of Tyr: Resourcefulness##70881 |goto Valdrakken/0 84.34,53.55
step
label "Gain_Renown"
Raise Your Renown with Dragon Isles Factions |complete completedallq(67084,66128,66444,66547,66402) |or
|tip "The Chieftain's Duty" chapter requires renown 11 with the Iskaara Tuskarr. |only if not completedq(66444)
|tip "The Silver Purpose" chapter requires renown 12 with the Valdrakken Accord. |only if not completedq(67084)
|tip The "Garden of Secrets" chapter requires renown 19 with the Valdrakken Accord. |only if not completedq(66402)
|tip The "A Mystery Sealed" chapter requires renown 13 with the Dragonscale Expedition. |only if not completedq(66128)
|tip The "In the Halls of the Titans" chapter requires renown 24 with the Dragonscale Expedition. |only if not completedq(66547)
'|complete true |next "The_Silver_Purpose_Chapter" |only if factionrenown(2510) >= 12 and not completedq(67084) |or
'|complete true |next "Garden_of_Secrets_Chapter" |only if factionrenown(2510) >= 19 and not completedq(66402) |or
'|complete true |next "The_Chieftain's_Duty_Chapter" |only if factionrenown(2511) >= 11 and not completedq(66444) |or
'|complete true |next "A_Mystery_Sealed_Chapter" |only if factionrenown(2507) >= 13 and not completedq(66128) |or
step
label "The_Chieftain's_Duty_Chapter"
_Next to you:_
talk Rowie##197631
accept A Lost Tribe##68863
step
talk Murik##193006
turnin A Lost Tribe##68863 |goto The Azure Span/0 13.14,49.26
accept Sudden Isolation##68640 |goto 13.14,49.26
step
talk Guard Hakota##188301
turnin Sudden Isolation##68640 |goto The Waking Shores/0 55.12,38.26
accept Pressing Matters##66409 |goto 55.12,38.26
step
kill Flameshaper Lorak##197260
collect Qalashi Trophy##191855 |q 66409/1 |goto 65.53,31.77
step
talk Guard Hakota##188301
turnin Pressing Matters##66409 |goto 55.12,38.26
accept Worst Impressions##66410 |goto 55.12,38.26
step
Watch the dialogue
Follow Guard Hakota |q 66410/1 |goto 53.61,37.96
step
talk Tutaqan##187323
Tell him _"I have slain your enemies. You have seen proof of my deeds."_
Speak to Tutaqan |q 66410/3 |goto 53.61,37.96
step
talk Tutaqan##187323
turnin Worst Impressions##66410 |goto 53.61,37.96
step
talk Crafter Kuliqa##188285
accept Salvaging Supplies##66417 |goto 53.65,38.01
step
talk Elder Unujaak##188283
accept Troubled Waters##66411 |goto 53.66,37.91
stickystart "Collect_Whalebone_Fragments"
stickystart "Collect_Waterlogged_Wood"
stickystart "Collect_Succulent_Snapper_Meat"
step
use the Tuskarr Fishing Net##192191
|tip Use it on fish in the water.
Catch #10# Warmwater Riverfish |q 66411/1 |goto 52.60,35.00
step
label "Collect_Whalebone_Fragments"
click Whalebone Fragment##376805+
|tip They look like large pieces of bone around the river bank.
collect 8 Whalebone Fragment##191862 |q 66417/1 |goto 52.60,35.00
step
label "Collect_Waterlogged_Wood"
click Pile of Driftwood##376802+
|tip They look like large piles of sticks around the water.
collect 30 Waterlogged Wood##191863 |q 66417/2 |goto 52.60,35.00
step
label "Collect_Succulent_Snapper_Meat"
kill Agitated Snapper##188334+
collect 6 Succulent Snapper Meat##191858 |q 66411/2 |goto 52.60,35.00
step
talk Elder Unujaak##188283
turnin Troubled Waters##66411 |goto 54.11,38.19
step
talk Crafter Kuliqa##188285
Choose _<Hand over the materials.>_
Deliver the Materials to Crafter Kuliqa |q 66417/3 |goto 54.26,38.67
step
talk Crafter Kuliqa##188285
turnin Salvaging Supplies##66417 |goto 54.26,38.67
accept Testing the Tuskarrsenal##66418 |goto 54.26,38.67
step
click Uktulut Bone Spear
Take the Uktulut Bone Spear |q 66418/1 |goto 54.25,38.64
step
extraaction Tuskarr Spear Strike##372582
|tip Use it on the dummies.
Destroy #4# Tuskarr Training Dummies |q 66418/2 |goto 54.08,36.83
step
talk Crafter Kuliqa##188285
turnin Testing the Tuskarrsenal##66418 |goto 54.26,38.67
step
talk Tutaqan##187323
accept All But One##66414 |goto 53.70,37.97
step
Find Ipko |q 66414/1 |goto 56.18,35.56
step
clicknpc Ipko##189808
Pick up Ipko |havebuff spell:372806 |goto 56.18,35.56 |q 66414
step
Return Ipko |q 66414/2 |goto 54.92,36.41
|tip You will periodically be attacked.
|tip Afterwards click Ipko again to pick it back up.
step
talk Tutaqan##187323
turnin All But One##66414 |goto 54.92,36.40
step
talk Elder Unujaak##188283
accept Closure##66440 |goto 54.95,36.47
step
talk Tutaqan##187323
Choose _<Begin the ritual.>_
Speak to Tutaqan |q 66440/1 |goto 53.61,39.23
step
click Tuskarr Incense
Burn the Incense |q 66440/2 |goto 53.59,39.34
step
click Fish Offering
Place the Offering |q 66440/3 |goto 53.60,39.31
step
click Lantern of Karkut
Take the Lantern |q 66440/4 |goto 53.58,39.29
step
Watch the dialogue
Complete the Ritual |q 66440/5 |goto 53.61,39.23
step
talk Tutaqan##187323
turnin Closure##66440 |goto 53.61,39.23
step
talk Elder Unujaak##188283
accept In Mourning##66431 |goto 53.64,39.31
step
talk Tutaqan##187323
Ask him _"Is there anything I can do to help?"_
Offer to Help Tutaqan |q 66431/1 |goto 53.89,41.29
step
talk Tutaqan##187323
turnin In Mourning##66431 |goto 53.89,41.29
accept The Only Way Past Is Through##66415 |goto 53.89,41.29
step
talk Peaceful Ottuk##188816
Approach the Peaceful Ottuk |q 66415/1 |goto 52.85,40.99
step
talk Peaceful Ottuk##188816
Choose _<Pet the ottuk.>_
Pet the Peaceful Ottuk |q 66415/2 |goto 52.85,40.99
step
Take the Peaceful Ottuk to Tutaqan |q 66415/3 |goto 53.89,41.29
step
talk Territorial Ottuk##188813
Approach the Territorial Ottuk |q 66415/4 |goto 54.12,40.25
step
click Broken Fishing Pole##381654
collect Broken Fishing Pole##200188 |q 66415/5 |goto 54.48,41.05
step
click Stuffed Duckling Toy##381655
collect Stuffed Duckling Toy##200190 |q 66415/6 |goto 52.92,39.26
step
extraaction Create Lure##389867
|tip It appears as a button on your screen.
Create the Ottuk Lure |q 66415/7 |goto 52.92,39.26
step
talk Territorial Ottuk##188813
Choose _<Wiggle the toy in front of the ottuk.>_
Get the Ottuk to Follow You |havebuff spell:373615 |goto 54.12,40.25 |q 66415
step
Take the Territorial Ottuk to Tutaqan |q 66415/8 |goto 53.89,41.29
step
talk Dutiful Ottuk##188817
Approach the Dutiful Ottuk |q 66415/9 |goto 54.31,41.97
step
clicknpc Meaty Crab##196815
Collect the Meaty Crab |q 66415/10 |goto 53.30,41.50
step
talk Dutiful Ottuk##188817
Choose _<Offer the crab to the ottuk.>_
Offer the Meaty Crab |q 66415/11 |goto 54.31,41.97
step
Watch the dialogue
Take the Dutiful Ottuk to Tutaqan |q 66415/12 |goto 53.89,41.29
step
talk Tutaqan##187323
turnin The Only Way Past Is Through##66415 |goto 53.89,41.29
step
accept Calling the Hunting Party##66443 |goto 53.89,41.29
|tip You will accept this quest automatically.
step
talk Guard Hakota##188301
Ask him _"What's going on?"_
Investigate the Hunting call |q 66443/1 |goto 53.93,38.14
step
talk Guard Hakota##188301
Choose _"We must go quickly." <Skip current conversation.>_
|tip You can skip the dialogue if you would like.
Listen to the Plan |q 66443/2 |goto 53.93,38.14
step
talk Guard Hakota##188301
turnin Calling the Hunting Party##66443 |goto 53.93,38.14
step
talk Tutaqan##187323
accept While the Iron Is Hot##66444 |goto 53.87,38.14
step
kill Zhurtan the Riverboiler##188687 |q 66444/1 |goto 48.59,46.00
|tip This enemy is elite but NPCs will help you kill it.
step
talk Tutaqan##187323
turnin While the Iron Is Hot##66444 |goto 53.66,37.96 |next "Gain_Renown" |only if not completedallq(67084,66128,66444,66547,66402)
turnin While the Iron Is Hot##66444 |goto 53.66,37.96 |only if default
step
label "The_Silver_Purpose_Chapter"
_Next to you:_
talk Herald Flaps##197478
accept Ally of Dragons##68794
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Ally of Dragons##68794 |goto Valdrakken/0 58.16,34.92
accept The Gift of Silver##67074 |goto 58.16,34.92
step
talk Alexstrasza the Life-Binder##187678
Ask her _"What is this gift from Tyr?"_
Speak to Alexstrasza |q 67074/1 |goto 58.16,34.92
step
Watch the dialogue
Reveal the Gift |q 67074/2 |goto 59.22,37.97
step
click Silver Scale
collect Silver Scale##197845 |q 67074/3 |goto 59.22,37.93
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin The Gift of Silver##67074 |goto 58.16,34.92
accept The Legacy of Tyrhold##70703 |goto 58.16,34.92
step
Meet Koranos at Tyrhold |q 70703/1 |goto Thaldraszus/0 58.18,58.74
step
click Silver Scale
|tip On top of the console.
Place the Silver Scale |q 70703/2 |goto 58.18,58.74
step
click Tyrhold Console
Activate the Tyrhold Device |q 70703/3 |goto 58.17,58.74
step
talk Watcher Koranos##192480
turnin The Legacy of Tyrhold##70703 |goto 58.15,58.84
accept The Magic Within##67075 |goto 58.15,58.84
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto 58.34,57.83 |count 1
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto 57.88,55.61 |count 2
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto 59.80,56.37 |count 3
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto 58.34,59.65 |count 4
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto 59.89,61.13 |count 5
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto 57.90,61.96 |count 6
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
click Silver Scale
|tip On top of the console.
Place the Silver Scale |q 67075/2 |goto 58.18,58.74
step
Watch the dialogue
talk Watcher Koranos##192480
turnin The Magic Within##67075 |goto 58.15,58.84
accept A Spark of Discovery##67076 |goto 58.15,58.84
step
talk Titan Spark##192707
Choose _<Investigate the spark.>_
Investigate the Spark |q 67076/1 |goto 58.14,58.55
step
map Thaldraszus/0
path follow smart; loop off; ants curved; dist 15
path	57.71,59.43	58.30,60.39	59.50,61.41	60.07,61.20	61.64,60.50
path	62.20,59.20
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
Follow the Spark |q 67076/2 |goto 62.20,59.21
step
talk Kalecgos##193492
turnin A Spark of Discovery##67076 |goto 62.20,59.39
step
talk Alexstrasza the Life-Binder##192573
accept Memories of the Past##67077 |goto 62.12,59.28
step
talk Nozdormu##192492
Tell him _"Timeless One, I need to borrow your sight."_
Watch the dialogue
Share in Timeless Sight |q 67077/1 |goto 62.13,59.41
step
Watch the dialogue
Witness the Memory |q 67077/2 |goto 62.13,59.41
step
talk Nozdormu##192492
Choose _<Ask about the memory.>
Speak to Nozdormu |q 67077/4 |goto 62.14,59.41
step
talk Kalecgos##193492
Choose _<Ask about the memory.>
Speak to Kalecgos |q 67077/3 |goto 62.20,59.38
step
talk Alexstrasza the Life-Binder##192573
Choose _<Ask about the memory.>
Speak to Alexstrasza |q 67077/5 |goto 62.12,59.28
step
talk Alexstrasza the Life-Binder##192573
turnin Memories of the Past##67077 |goto 62.12,59.28
step
Watch the dialogue
talk Keeper Tyr##192496
accept Parting Instructions##67078 |goto 62.20,59.20
step
Enter the building |goto 59.81,58.74 < 30 |walk
click Silver Scale
|tip Inside the building.
Place the Silver Scale |q 67078/1 |goto 60.55,58.74
step
click Forge Console
|tip Inside the building.
Activate the Forge |q 67078/2 |goto 60.55,58.74
step
talk Watcher Koranos##192480
|tip Inside the building.
turnin Parting Instructions##67078 |goto 60.36,58.87
accept Hard Lock Life##67079 |goto 60.36,58.87
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
kill Maiden of Patience##192720
collect Secondary Security Disc##197863 |q 67079/2 |goto 57.66,63.69
step
extraaction Titanic Overload##382822
|tip Use it on elite enemies to stun them if needed.
kill Maiden of Diligence##192718
collect Primary Security Disc##197862 |q 67079/1 |goto 57.59,53.62
step
talk Watcher Koranos##192480
|tip Inside the building.
turnin Hard Lock Life##67079 |goto 60.37,58.87
step
Watch the dialogue
talk Keeper Tyr##192496
|tip Inside the building.
accept An Infusion of Materials##67081 |goto 60.53,58.64
stickystart "Collect_Ancient_Titansteel_Ingots"
step
kill Primal Tsunami##189729 |q 67081/2 |goto Halls of Infusion/1 42.76,47.50 |or
|tip It's the final boss of the Halls of Infusion dungeon.
|tip Use the "Halls of Infusion" dungeon guide to accomplish this.
Click Here to Load the "Halls of Infusion" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Dragonflight Dungeons\\Halls of Infusion" |or
step
label "Collect_Ancient_Titansteel_Ingots"
collect 10 Ancient Titansteel Ingot##198038 |q 67081/1
|tip Loot them from bosses throughout the Halls of Infusion dungeon.
step
talk Keeper Tyr##192496
|tip Inside the building.
turnin An Infusion of Materials##67081 |goto Thaldraszus/0 60.53,58.64
accept The Silver Purpose##67084 |goto 60.53,58.64
step
click Ancient Titansteel Ingots
|tip Inside the building.
Place the Ingots |q 67084/1 |goto 60.81,58.74
step
click Forge Console
|tip Inside the building.
Activate the Secondary Console |q 67084/2 |goto 60.64,59.17 |count 1
step
click Forge Console
|tip Inside the building.
Activate the Secondary Console |q 67084/2 |goto 60.63,58.34 |count 2
step
click Silver Scale
|tip Inside the building.
Activate the Silver Scale |q 67084/3 |goto 60.55,58.74
step
talk Alexstrasza the Life-Binder##192573
|tip Inside the building.
turnin The Silver Purpose##67084 |goto 60.19,58.64 |next "Gain_Renown" |only if not completedallq(67084,66128,66444,66547,66402)
turnin The Silver Purpose##67084 |goto 60.19,58.64 |only if default
step
label "Garden_of_Secrets_Chapter"
_Next to you:_
talk Herald Flaps##197478
accept Emerald Summons##66620
step
talk Merithra##186955
|tip Up on the platform next to the waterfall.
turnin Emerald Summons##66620 |goto Ohn'ahran Plains/0 29.79,60.04
accept A Day in the Groves##66178 |goto 29.79,60.04
step
talk Merithra##187525
turnin A Day in the Groves##66178 |goto 33.22,51.76
accept Seeds for the Future##66179 |goto 33.22,51.76
accept Wake the Ancients##66180 |goto 33.22,51.76
stickystart "Deliver_Garden_Seeds_to_Sisters"
step
use the Borrowed Breath##192555
|tip Use it next to the treant.
Awaken Quercus |q 66180/1 |goto 30.07,52.93
step
use the Borrowed Breath##192555
|tip Use it next to the treant.
Awaken Dalicus |q 66180/2 |goto 28.59,51.81
step
use the Borrowed Breath##192555
|tip Use it next to the treant.
Awaken Asercus |q 66180/3 |goto 30.10,50.34
step
label "Deliver_Garden_Seeds_to_Sisters"
Kill Lasher enemies around this area
collect 12 Garden Seed##192547 |q 66179 |goto 29.46,52.39
step
talk Sister of the Garden##190209+
Choose _<Give Sister of the Garden the seeds you've collected.>_
|tip You can find them all over the garden.
|tip You can turn all 12 seeds in at once.
Deliver #12# Garden Seeds to Sisters |q 66179/1 |goto 29.46,52.39
step
talk Merithra##187525
turnin Seeds for the Future##66179 |goto 33.22,51.76
turnin Wake the Ancients##66180 |goto 33.22,51.76
accept Gerithus's Research##66182 |goto 33.22,51.76
step
talk Gerithus##189849
turnin Gerithus's Research##66182 |goto 28.41,48.61
accept Emerald Tears##66183 |goto 28.41,48.61
step
talk Rymek##189850
accept A Frenzied Defender##66181 |goto 28.50,48.70
stickystart "Collect_Emerald_Tears"
step
kill Frenzied Grovetalon##187507 |q 66181/1 |goto 28.50,48.71
|tip It flies in a circle around this area.
step
label "Collect_Emerald_Tears"
click Emerald Tear##376929+
|tip They look like small crystals laying on the ground around this area.
collect 8 Emerald Tear##192558 |q 66183/1 |goto 27.60,46.70
step
talk Rymek##189850
turnin A Frenzied Defender##66181 |goto 28.50,48.70
step
talk Gerithus##189849
turnin Emerald Tears##66183 |goto 28.41,48.61
accept Anchors to Life##66184 |goto 28.41,48.61
step
click Inert Anchor
Empower the First Anchor |q 66184/1 |goto 28.26,48.52
step
click Inert Anchor
Empower the Second Anchor |q 66184/2 |goto 28.28,48.68
step
click Inert Anchor
Empower the Third Anchor |q 66184/3 |goto 28.53,48.53
step
Watch the dialogue
Wait for Merithra to Arrive |q 66184/4 |goto 28.42,48.71
step
talk Gerithus##189849
turnin Anchors to Life##66184 |goto 28.41,48.61
step
talk Merithra##187509
accept To Somnikus##66393 |goto 28.37,48.69
step
talk Somnikus##186469
turnin To Somnikus##66393 |goto 22.00,50.99
accept The Chittering Rocks##66395 |goto 22.00,50.99
step
talk Rymek##189857
accept Guarded Appreciation##66396 |goto 22.10,50.87
stickystart "Kill_Glacial_Tunnelers"
step
talk Emerald Warden##194684
Choose _<Give Rymek's Gift.>_
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto 22.25,52.14 |count 1
step
talk Emerald Warden##194684
Choose _<Give Rymek's Gift.>_
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto 21.75,51.82 |count 2
step
talk Emerald Warden##194684
Choose _<Give Rymek's Gift.>_
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto 21.99,50.38 |count 3
step
talk Emerald Warden##194684
Choose _<Give Rymek's Gift.>_
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto 22.56,50.53 |count 4
step
talk Emerald Warden##194684
Choose _<Give Rymek's Gift.>_
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto 21.49,49.08 |count 5
step
talk Emerald Warden##194684
Choose _<Give Rymek's Gift.>_
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto 21.53,48.45 |count 6
step
label "Kill_Glacial_Tunnelers"
clicknpc Suspicious Permafrost##189870+
|tip They look like piles of jagged rocks on the ground around this area.
kill 8 Glacial Tunneler##188360 |q 66395/1 |goto 22.23,49.65
step
talk Somnikus##186469
turnin The Chittering Rocks##66395 |goto 22.00,50.99
step
talk Rymek##189857
turnin Guarded Appreciation##66396 |goto 22.10,50.87
accept So Close##66190 |goto 22.10,50.87
step
talk Rymek##191388
Ask him _"What do you think?"_
Speak to Rymek in Ancient Bough |q 66190/1 |goto 19.93,49.35
step
kill Ezralor##188755 |q 66190/2 |goto 21.39,48.75
step
Watch the dialogue
talk Merithra##187561
turnin So Close##66190 |goto 22.06,49.20
accept And Yet So Far##66191 |goto 22.06,49.20
step
talk Merithra##187561
Ask her _"What is hidden in the Dream?"_
Speak to Merithra |q 66191/1 |goto 22.06,49.20
step
talk Merithra##187561
turnin And Yet So Far##66191 |goto 22.06,49.20
accept Rallying Nature's Allies##66392 |goto 22.06,49.20
|tip If you cannot accept this quest, ensure you have completed the Oh'ahran Plains campaign entirely.
step
talk Aronus##188335
Tell him _"Take me up to Shady Sanctuary."_
Speak to Aronus For a Lift to Shady Sanctuary |q 66392/1 |goto 22.04,50.26
step
talk Koda Steelclaw##188340
Choose _<Rally to join the fight at Ancient Bough.>_
Speak to Koda Steelclaw |q 66392/3 |goto 29.32,55.88
step
click Infused Anchor
Collect the Infused Anchor |q 66392/2 |goto 30.48,56.76 |count 1
step
click Infused Anchor
Collect the Infused Anchor |q 66392/2 |goto 30.54,56.74 |count 2
step
click Infused Anchor
Collect the Infused Anchor |q 66392/2 |goto 30.59,56.78 |count 3
step
talk Scout Tomul##194328
Choose _<Rally to join the fight at Ancient Bough.>_
Speak to Scout Tomul |q 66392/4 |goto 29.96,58.20
step
Enter the building |goto 28.80,59.49 < 10 |walk
talk Archdruid Hamuul Runetotem##188339
|tip Inside the building.
Choose _<Rally to join the fight at Ancient Bough.>_
Speak to Hamuul Runetotem |q 66392/5 |goto 28.32,60.11
step
talk Somnikus##187594
turnin Rallying Nature's Allies##66392 |goto 28.38,57.96
accept Across the Weald##66185 |goto 28.38,57.96
step
click Portal to Ardenweald
Cross into Ardenweald |q 66185/1 |goto 28.35,57.80
step
talk Ysera##187634
turnin Across the Weald##66185 |goto Ardenweald/0 45.88,60.90
accept The Price##66186 |goto 45.88,60.90
step
talk Malfurion Stormrage##187636
Speak to Malfurion Stormrage |q 66186/1 |goto 45.82,60.86
step
talk Malfurion Stormrage##187636
turnin The Price##66186 |goto 45.82,60.86
accept Storm's Rest##66188 |goto 45.82,60.86
step
Reach the Middle of the Grove of Awakening |q 66188/1 |goto 45.30,63.52
step
clicknpc Globe of Rebirth##194365
Activate the Globe of Rebirth |q 66188/2 |goto 45.07,63.17 |count 1
step
clicknpc Globe of Rebirth##194365
Activate the Globe of Rebirth |q 66188/2 |goto 44.99,63.94 |count 2
step
clicknpc Globe of Rebirth##194365
Activate the Globe of Rebirth |q 66188/2 |goto 45.58,63.62 |count 3
step
talk Winter Queen##187632
Choose _<Skip to the end.>_
Convince the Winter Queen |q 66188/3 |goto 45.29,64.01
step
Watch the dialogue
talk Ysera##188348
turnin Storm's Rest##66188 |goto 45.29,63.62
accept Step Into the Life##66189 |goto 45.29,63.62
step
extraaction Cross Over##373025
Cross into the Emerald Dreamway |q 66189/1 |goto 45.28,65.62
stickystart "Clear_the_Emerald_Dreamway"
step
clicknpc Infused Anchor##187642
Place the First Infused Anchor |q 66189/3 |goto The Emerald Dreamway DF/0 65.83,50.40
step
Enter the cave |goto 56.38,77.86 < 10 |walk
clicknpc Infused Anchor##187644
|tip Inside the cave.
Place the Third Infused Anchor |q 66189/5 |goto 58.69,81.95
step
clicknpc Infused Anchor##187643
Place the Second Infused Anchor |q 66189/4 |goto 46.31,39.50
step
label "Clear_the_Emerald_Dreamway"
clicknpc Frost Shard##194945+
|tip They look like large frozen ice spikes coming out of the ground around this area.
Kill enemies around this area
Clear the Emerald Dreamway |q 66189/2 |goto 49.36,45.02
step
clicknpc Dream Portal##190027
Cross Over Into Ancient Bough |q 66189/6 |goto 31.44,22.53
step
talk Ysera##187646
turnin Step Into the Life##66189 |goto Ohn'ahran Plains/0 18.81,51.89
accept Thin the Veil##66394 |goto 18.81,51.89
accept Our Full Strength##66397 |goto 18.81,51.89
stickystart "Deactivate_Barrier_Moorings"
stickystart "Free_Emerald_Scaleguards_or_Wardens"
step
Kill enemies around this area
collect Volatile Frostfire##193221 |n
|tip One is required to free each NPC from ice blocks.
clicknpc Gerithus##187657
Free Gerithus |q 66397/2 |goto 18.78,51.91
step
collect Volatile Frostfire##193221 |q 66397/1 |goto 19.01,50.89
step
label "Deactivate_Barrier_Moorings"
clicknpc Barrier Mooring##188383+
|tip They look like large torns growing out of the ground all over this area.
Deactivate #6# Barrier Moorings |q 66394/1 |goto 19.01,50.89
step
label "Free_Emerald_Scaleguards_or_Wardens"
Kill enemies around this area
collect Volatile Frostfire##193221 |n
|tip One is required to free each NPC from ice blocks.
clicknpc Emerald Scaleguard##190385+
clicknpc Emerald Warden##194700+
|tip They look like dragons trapped in ice all over this area.
Free #4# Emerald Scaleguards or Wardens |q 66397/3 |goto 19.01,50.89
talk Gerithus##188763
turnin Our Full Strength##66397 |goto 18.58,51.66
step
talk Ysera##187646
turnin Thin the Veil##66394 |goto 18.82,51.88
accept Reunited, Once Again##66635 |goto 18.82,51.88
step
talk Ysera##187646
Tell her _"I'm ready."_
Speak with Ysera |q 66635/1 |goto 18.82,51.88
step
talk Merithra##187660
turnin Reunited, Once Again##66635 |goto 18.88,51.11
accept The Emerald Dragonflight##66398 |goto 18.88,51.11
step
talk Gerithus##188763
Tell him _"I'm ready to fly to Lunedane and face Rymek."_
Speak to Gerithus |invehicle |q 66398 |goto 18.58,51.65
step
Watch the dialogue
|tip You will eventually land on a platform in Lunedane.
Reach Lunedane |outvehicle |q 66398
step
talk Gerithus##188787
turnin The Emerald Dragonflight##66398 |goto 21.98,76.09
accept We'll Cross that Bridge##66399 |goto 21.98,76.09
step
Enter the building |goto 21.30,76.91 < 10 |walk
clicknpc Frost Core##190004
|tip Inside the building.
Destroy the First Frost Core |q 66399/1 |goto 21.08,76.56
step
Enter the building |goto 21.74,78.22 < 10 |walk
clicknpc Frost Core##190005
|tip Inside the building.
Destroy the Second Frost Core |q 66399/2 |goto 21.88,78.40
step
kill Frostdrake##188804 |q 66399/3 |goto 21.15,79.13
step
talk Somnikus##188840
turnin We'll Cross that Bridge##66399 |goto 20.92,79.79
accept Winter's Fall##66400 |goto 20.92,79.79
step
kill Rymek##188846 |q 66400/1 |goto 20.13,81.29
|tip When Rymek uses Whirlwind, move him into the big blue area on the ground.
|tip Green areas will heal you over time while you stand in them.
step
Watch the dialogue
talk Merithra##188847
turnin Winter's Fall##66400 |goto 19.78,81.65
accept The Dreamer##66401 |goto 19.78,81.65
step
talk Dream Locus##188843
Choose _<Witness the restoration.>_
Speak to Merithra |q 66401/1 |goto 19.39,82.17
step
talk Merithra##188848
turnin The Dreamer##66401 |goto 19.62,81.90
step
talk Ysera##188850
accept Like Mother, Like Daughter##66402 |goto 19.81,81.69
step
Watch the dialogue
Witness the Ascension of Merithra |q 66402/1 |goto 19.81,81.69
step
talk Merithra##188848
turnin Like Mother, Like Daughter##66402 |goto 19.77,81.69 |next "Gain_Renown" |only if not completedallq(67084,66128,66444,66547,66402)
turnin Like Mother, Like Daughter##66402 |goto 19.77,81.69 |only if default
step
label "A_Mystery_Sealed_Chapter"
_Next to you:_
talk Doc Nanners##196643
accept A New Mystery##69093
step
talk Naleidea Rivergleam##186869
turnin A New Mystery##69093 |goto The Waking Shores/0 47.88,82.42
accept The Sealed Door##66012 |goto 47.88,82.42
step
talk Naleidea Rivergleam##186870
turnin The Sealed Door##66012 |goto Thaldraszus/0 54.49,55.67
accept Investigate the Door##66013 |goto 54.49,55.67
step
click Broken Watcher##376932
Inspect the Broken Watcher |q 66013/1 |goto 54.47,55.73
step
click Titan Door##376116
Inspect the Door |q 66013/2 |goto 54.65,55.74
step
click Broken Watcher Staff##376957
Inspect the Snapped Staff |q 66013/3 |goto 54.26,55.40
step
talk Naleidea Rivergleam##186870
turnin Investigate the Door##66013 |goto 54.49,55.67
accept Speak to Koranos##66673 |goto 54.49,55.67
step
talk Watcher Koranos##197231
Tell him _"I'm here on behalf of the Dragonscale Expedition. What can  you tell me about the sealed Titan facility near Tyrhold?"_
Speak to Koranos |q 66673/1 |goto Valdrakken/0 54.15,46.65
step
Enter the building |goto 34.13,30.17 < 7 |walk
click Watcher Log
|tip Inside the building.
Search the Archives for the Watcher Log |q 66673/2 |goto 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Choose _<Read the first entry.>_
Read the First Entry |q 66673/3 |goto 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Choose _<Read the next entry.>_
Read the Second Entry |q 66673/4 |goto 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Choose _<Read the next entry.>_
Read the Third Entry |q 66673/5 |goto 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Choose _<Take the watcher log.>_
Take the Watcher Log |q 66673/6 |goto 34.83,24.95
step
Exit the Library |q 66673/7 |goto 34.21,28.03
|tip You will be attacked by a weak elite.
step
talk Naleidea Rivergleam##186870
Choose _<Fill her in on the log's contents and the daring attack and theft by Sarkareth.
Speak to Naleidea About What You've Learned |q 66673/8 |goto Thaldraszus/0 54.48,55.67
step
talk Naleidea Rivergleam##186870
turnin Speak to Koranos##66673 |goto 54.48,55.67
accept The Ruins of Szar Skeleth##66094 |goto 54.48,55.67
accept The Abandoned Outpost##70784 |goto 54.48,55.67
accept The City of the Dead##70785 |goto 54.48,55.67
step
talk Naleidea Rivergleam##190855
turnin The City of the Dead##70785 |goto 62.24,18.27
accept The Judgment of Tyr##66814 |goto 62.24,18.27
step
talk Naleidea Rivergleam##190855
Tell her _"Let's get started then."_
Speak to Naleidea |q 66814/1 |goto 62.24,18.27
step
Follow Naleidea |q 66814/2 |goto 62.92,16.87
step
kill Sundered Lookout##196926+
Defeat the Ambushers |q 66814/3 |goto 62.90,16.96
step
Follow Naleidea |q 66814/4 |goto 63.18,15.94
step
kill Sundered Vanguard##196927+
Defeat the Ambushers |q 66814/5 |goto 63.17,15.95
step
Follow Naleidea |q 66814/6 |goto 63.67,14.73
step
kill Sundered Shadetalon##190924+
Defeat the Ambushers |q 66814/7 |goto 63.67,14.73
step
Reach Naleidea |q 66814/8 |goto 64.46,15.14
|tip Inside the building.
step
Click Destroyed objects
|tip Uncover the rubble pile.
|tip Some bugs will attack you.
click Judgment of Tyr
collect The Judgment of Tyr##193072 |q 66814/9 |goto 64.54,15.08
step
talk Naleidea Rivergleam##190865
|tip Inside the building.
turnin The Judgment of Tyr##66814 |goto 64.46,15.14
step
talk Toddy Whiskers##191159
turnin The Ruins of Szar Skeleth##66094 |goto Ohn'ahran Plains/0 39.96,67.50
accept The Insight of Tyr##70507 |goto 39.96,67.50
step
kill Reclaimer Makko##191536 |q 70507/1 |goto 43.84,63.69
step
collect The Insight of Tyr##193070 |q 70507/2 |goto 43.84,63.69
|tip Loot it from Makko.
step
talk Toddy Whiskers##191159
turnin The Insight of Tyr##70507 |goto 39.96,67.50
step
talk Naleidea Rivergleam##193350
turnin The Abandoned Outpost##70784 |goto The Azure Span/0 53.88,50.70
accept The Vigilance of Tyr##70503 |goto 53.88,50.70
stickystart "Collect_6_Magnetized_Splinters"
stickystart "Collect_4_Agitated_Fragment"
stickystart "Collect_2_Tarasek_Pillaged_Piece"
step
kill Obstructed Hornswog##196403
clicknpc Tarasek Hauler##196405
|tip It will be huddle on the ground after the frog dies.
Retrieve the Half Swallowed Sliver |q 70503/5 |goto 53.60,49.61
step
click Far-Flung Fragment
|tip At the top of the tower.
collect Far-Flung Fragment##200478 |q 70503/4 |goto 54.98,49.75
step
label "Collect_6_Magnetized_Splinters"
kill Crystallized Horror##197024
|tip It won't attack you back.
click Magnetized Splinter##381738+
|tip They fall off the Crystallized Horror.
collect 6 Magnetized Splinter##200471 |q 70503/1 |goto 54.26,50.71
step
label "Collect_4_Agitated_Fragment"
kill Crystallized Horror##197024
|tip It won't attack you back.
kill Agitated Shard##197045+
|tip They fall off the Crystallized Horror and attack.
collect 4 Agitated Fragment##200473 |q 70503/2 |goto 54.26,50.71
step
label "Collect_2_Tarasek_Pillaged_Piece"
kill Tarasek Scavenger##197085+
collect 2 Tarasek Pillaged Piece##200474 |q 70503/3 |goto 54.26,50.71
step
talk Naleidea Rivergleam##193350
turnin The Vigilance of Tyr##70503 |goto 53.88,50.70
accept Next Steps##66128 |goto 53.88,50.70
step
Meet Up with Toddy and Naleidea in the Explorer's Tent |q 66128/1 |goto The Waking Shores/0 47.21,82.72
|tip Inside the tent.
step
Watch the dialogue
|tip Inside the tent.
Listen to Toddy and Naleidea |q 66128/2 |goto 47.21,82.72
step
talk Camilla Highwind##186782
|tip Inside the tent.
turnin Next Steps##66128 |goto 47.21,82.72 |next "Gain_Renown" |only if not completedallq(67084,66128,66444,66547,66402)
turnin Next Steps##66128 |goto 47.21,82.72 |only if default
]])
