local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar",{
mapid=934,
achieveid={12824},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","priestess","alun'za","Vol'kaal","rezan","yazma","zuldazar","Atal'Dazar"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nPriestess Alun'za\nVol'kaal\nRezan\nYazma",
image=ZGV.IMAGESDIR.."AtalDazar",
},[[
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000
step
kill Priestess Alun'za##129614
_EVERYONE:_ |grouprole EVERYONE
|tip Stand near pools of "Tanted Blood". |grouprole EVERYONE
|tip When Priestess Alun'za casts "Transfusion", step into the "Tainted Blood". |grouprole EVERYONE
|tip "Spirits of Gold" ignore combat unless there are no pools of Tainted Blood. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Molten Gold" which will be cast on random players. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Gilded Claws". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid cauldrons during the encounter or you will be afflicted with "Corrupted Gold", which lowers your damage. |grouprole DAMAGE
Defeat Priestess Alun'za |scenariogoal Priestess Alun'za defeated##1/37074
step
kill Vol'kaal##129399
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Toxic Leap". |grouprole EVERYONE
|tip Avoid standing in "Toxic Pool". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Prepare an AoE heal for "Noxious Stench" casts. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Noxious Stench" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Noxious Stench" when possible. |grouprole DAMAGE
|tip DPS all three Reanimation Totems equally, and kill them quickly at the same time. |grouprole DAMAGE
Defeat Vol'kaal |scenariogoal Vol'kaal defeated##1/37075
step
kill Rezan##139590
_EVERYONE:_ |grouprole EVERYONE
|tip Run away if Rezan uses "Pursue" on you. |grouprole EVERYONE
|tip Be sure to also avoid the "Pile of Bones" on the ground, as they will cause you to move slower. |grouprole EVERYONE
|tip Move out of line of sight when Rezan uses "Terrifying Visage". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The tank will take massive damage during "Serrated Teeth". |grouprole HEALER
|tip You will need to use big heals to help keep them up. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Serrated Teeth". |grouprole TANK
|tip Pick up Reanimated Raptors that spawn from piles of bones during the fight. |grouprole TANK
Defeat Rezan |scenariogoal Rezan defeated##1/37076
step
kill Yazma##129412
_HEALER:_ |grouprole HEALER
|tip Move away from Yazma while afflicted with "Soulrend". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Skewer". |grouprole TANK
|tip Move away from "Echoes of Shadra" |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Soulspawns" before they reach Yazma. |grouprole DAMAGE
|tip Move away from Yazma while afflicted with "Soulrend". |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat Yazma |scenariogoal Yazma defeated##1/37077
step
_Congratulations!_
You Completed the "Atal'Dazar" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Freehold",{
mapid=936,
achieveid={12831},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle", "for", "azeroth", "skycap'n", "kragg", "captain", "eudora", "jolly", "raoul", "trothak", "harlan", "sweete", "tiragarde", "sound"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nSkycap'n Kragg\nCouncil o' Captains\nRing of Booty\nHarlan Sweete",
image=ZGV.IMAGESDIR.."Freehold",
},[[
step
Press _I_ and Queue for Freehold or Enter the Dungeon with your Group |goto Freehold/0 0.00,0.00 < 1000
step
kill Skycap'n Kragg##129732
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out to decrease damage from "Azerite Powder Shot". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready to use AoE heals if the group doesn't properly spread out. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Revitalizing Brew" when possible.|grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Revitalizing Brew" when possible. |grouprole DAMAGE
Defeat Skycap'n Kragg |scenariogoal Skycap'n Kragg defeated##1/37366
step
kill Captain Eudora##129431
kill Captain Jolly##129432
kill Captain Raoul##126847
_HEALER:_ |grouprole HEALER
|tip Try to keep the group topped off, as "Powder Shot" will deal massive damage to a random player. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Destroy "Blackout Barrels" to free allies from being disoriented.|grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Destroy "Blackout Barrels" to free allies from being disoriented.|grouprole DAMAGE
Defeat the Council o' Captains |scenariogoal Council o' Captains defeated##1/37367
step
kill Trothak <The Shark Puncher>##126969
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand between Trothak and loose sharks or you will take damage from "Rearm". |grouprole EVERYONE
|tip Spread out to avoid damage from "Flailing Shark". |grouprole EVERYONE
|tip They will move towards it's nearest target. |grouprole EVERYONE
Defeat the Ring of Booty |scenariogoal Ring of Booty defeated##1/37368
step
kill Harlan Sweete##129440
_HEALER:_ |grouprole HEALER
|tip You will need heavy heals for allies afflicted by "Cannon Barrage". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Kill "Irontide Grenadiers" as they spawn. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Irontide Grenadiers" as they spawn. |grouprole DAMAGE
|tip Stand behind Harlan Sweete as to not take damage from "Swiftwind Saber". |grouprole DAMAGE
|tip When buffed with "Loaded Dice: All Hands!" it will not matter where you stand. |grouprole DAMAGE
Defeat Harlan Sweete |scenariogoal Harlan Sweete defeated##1/37369
step
_Congratulations!_
You Completed the "Freehold" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Kings' Rest",{
mapid=1004,
achieveid={12848},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","zuldazar","king's","rest","the","golden","serpent","mchimba","embalmer","council","of","tribes","dazar","first"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nThe Golden Serpent\nMchimba the Embalmer\nThe Council of Tribes\nKing Dazar",
image=ZGV.IMAGESDIR.."KingsRest",
},[[
step
Press _I_ and Queue for King's Rest or Enter the Dungeon with your Group |goto King's Rest/0 0.00,0.00 < 1000
step
kill The Golden Serpent##135322
_EVERYONE:_ |grouprole EVERYONE
|tip Use abilities that stun, root and knockback to prevent "Animated Gold" from reaching The Golden Serpent. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players afflicted with "Split Gold" will take heavy damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move The Golden Serpent away from "Molten Gold" to give allies a chance to kill Animated Gold before they reach the boss. |grouprole TANK
|tip Use damage mitigation abilities for "Tail Thrash". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from The Golden Serpent as well as players afflicted with "Spit Gold". |grouprole DAMAGE
|tip Players with the "Spit Gold" debuff will create "Molten Gold" on the ground. |grouprole DAMAGE
Defeat The Golden Serpent |scenariogoal The Golden Serpent defeated##1/40351
step
kill Mchimba the Embalmer##134993
_EVERYONE:_ |grouprole EVERYONE
|tip If you become afflicted with "Entomb", use the "Struggle" ability to alert players to which crypt you are in. |grouprole EVERYONE
|tip Look for players afflicted with "Entomb" and free them as soon as possible. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players afflicted with "Dessication" will need to be healed above 90% of their health. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid "Burn Corruption" which appears on the ground. |grouprole TANK
|tip Interrupt "Drain Fluids" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Drain Fluids" when possible. |grouprole DAMAGE
Defeat Mchimba the Embalmer |scenariogoal Mchimba the Embalmer defeated##1/40352
step
kill Aka'ali the Conqueror##135470
kill Kula the Butcher##135475
kill Zanazal the Wise##135472
_HEALER:_ |grouprole HEALER
|tip Be ready to heal the tank after each "Debilitating Backhand" until the "Shattered Defenses" debuff wears off. |grouprole HEALER
|tip "Severing Axe" will deal heavy damage over time for 20 seconds. |grouprole HEALER
|tip Stop casting near the end of each "Thundering Crash" from Zanazal the Wise. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When "Debilitating Backhand" is used, you will be afflicted by "Shattered Defenses". |grouprole TANK
|tip Kite the boss around while under the affects of it. |grouprole TANK
|tip Move in front of players targeted by "Barrel Through". |grouprole TANK
|tip Move away from Kula the Butcher when "Whirling Axes" is used, until it fans away from the boss. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Zanazal the Wise's "Poison Nova". |grouprole DAMAGE
|tip Focus damage on Zanazal the Wise's totems during "Cal of the Elements" casts. |grouprole DAMAGE
|tip Move in front of players targeted by "Barrel Through". |grouprole DAMAGE
Defeat the Council of Tribes |scenariogoal The Council of Tribes defeated##1/40353
step
kill King Dazar##136160
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out as best you can to mitigate damage from "Quaking Leap". |grouprole EVERYONE
|tip Big heals will be needed for "Blade Combo". |grouprole EVERYONE
|tip |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be sure the use big heals on the tank when "Blade Combo" is used. |grouprole HEALER
|tip If you are targeted by "Quaking Leap", move away from the group. |grouprole HEALER
|tip |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Save damage mitigation for the last two hits of "Blade Combo" as they will deal heavy damage. |grouprole TANK
|tip Pick up Reban as soon as he joins the battle. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If you are targeted by "Quaking Leap", move away from the group. |grouprole DAMAGE
Defeat Dazar, the First King |scenariogoal Dazar, The First King defeated##1/40354
step
_Congratulations!_
You Completed the "Kings' Rest" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\The MOTHERLODE!!",{
mapid=1010,
achieveid={12844},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","zuldazar","the","motherlode!!","coin","operated","crowd","pummeler","azerokk","rixxa","fluxflame","mogul","razdunk"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nCoin-Operated Crowd Pummeler\nAzerokk\nRixxa Fluxflame\nMogul Razdunk",
image=ZGV.IMAGESDIR.."TheMotherlode",
},[[
step
Press _I_ and Queue for The MOTHERLODE!! or Enter the Dungeon with your Group |goto The MOTHERLODE!!/0 0.00,0.00 < 1000
step
kill Coin-Operated Crowd Pummeler##139904
_HEALER:_ |grouprole HEALER
|tip Keep the boss stationary so that allies can "Punt" Azerite Footbombs accurately. |grouprole HEALER
|tip Avoid "Shocking Claw" when possible. |grouprole HEALER
|tip |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep the boss stationary so that allies can "Punt" Azerite Footbombs accurately. |grouprole TANK
|tip Avoid "Shocking Claw" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kick Azerite Footbombs back at the boss in order to avoid "Timed Detonation" damage. |grouprole DAMAGE
Defeat the Coin-Operated Crowd Pummeler |scenariogoal Coin-Operated Crowd Pummeler defeated##1/38193
step
kill Azerokk##129227
_HEALER:_ |grouprole HEALER
|tip Snare Earthragers with "Raging Gaze", running away from them.|grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep Azerokk away from ranged allies as best as possible to protect them from "Resonant Quake". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Earthragers as soon as they appear to receive "Azerite Infusion" to minimize damage they do while infused. |grouprole DAMAGE
|tip Snare Earthragers with "Raging Gaze", running away from them. |grouprole DAMAGE
Defeat Azerokk |scenariogoal Azerokk defeated##1/38194
step
kill Rixxa Fluxflame##139273
_EVERYONE:_ |grouprole EVERYONE
|tip Watch out for "Azerite Catalyst" placement. |grouprole EVERYONE
|tip Avoid being pushed into "Azerite Catalyst" by "Propellant Blast" |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Move Rixxa Fluxflame away from "Azerite Catalyst". |grouprole TANK
Defeat Rixxa Fluxflame |scenariogoal Rixxa Fluxflame defeated##1/38195
step
kill Mogul Razdunk##131227
_EVERYONE:_ |grouprole EVERYONE
|tip When Mogul Razdunk targets you with "Big Red Rocket", move to one of the poles in the ground so that he strikes it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Move away from allies if you are being targeted by "Homing Missile". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up "Venture Co. Skyscorchers" when they spawn. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from allies if you are being targeted by "Homing Missile". |grouprole DAMAGE
Defeat Mogul Razdunk |scenariogoal Mogul Razdunk defeated##1/38196
step
_Congratulations!_
You Completed "The MOTHERLODE!!" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Operation: Mechagon",{
mapid=1490,
condition_suggested=function() return level == 50 end,
keywords={"battle","for","azeroth"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nKing Gobbamak\ngunker\n"..
"Trixie & Naeno\nHK-8 Aerial Oppression Unit\nTussle Tonks\nK.U.-J0.\nMachinist's Garden\nKing Mechagon",
},[[
step
Enter Operation: Mechagon with your Group |goto Mechagon/3 0.00,0.00 |c < 1000
|tip This dungeon is Mythic only and cannot be queued in the LFG tool.
step
kill King Gobbamak##150159
_EVERYONE:_ |grouprole EVERYONE
|tip If you have an "Electrical Charge," move near Stolen Tech. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Help Split damage from "Charged Smash" by grouping. |grouprole DAMAGE
|tip Kill Troggs to avoid being overwhelmed. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Help Split damage from "Charged Smash" by grouping. |grouprole HEALER
|tip "Rumble" will inflict group-wide damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Scrapbone Grunters attack random players. |grouprole TANK
|tip Allies will need to split the damage of "Charged Smash" with you. |grouprole TANK
|tip
Click Here to Continue |confirm |goto 58.00,27.01
step
kill Trixie Tazer##155407
kill Naeno Megacrash##155476
_EVERYONE:_ |grouprole EVERYONE
|tip When you are targeted by "Mega Taze," hide in a smoke cloud. |grouprole EVERYONE
|tip Trixie and Naeno need to be killed together within a short period of time. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Taze" whenever possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Naeno inflicts heavy group-wide damage when Trixie is killed first. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Taze" whenever possible. |grouprole TANK
|tip Avoid being hit by "Bolt Buster." |grouprole TANK
|tip
Click Here to Continue |confirm |goto 60.83,39.73
step
kill Gunker##150222
_EVERYONE:_ |grouprole EVERYONE
|tip Stand near Squirt Bots using "Sanitizing Spray" to avoid "Toxic Goop." |grouprole EVERYONE
|tip Damage allies affected by "Gooped" to free them. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Toxic Fumes" inflicts periodic damage to all players during the entire fight. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay near Gunker at all times or he will cast "Sludge Bolt." |grouprole TANK
|tip
Click Here to Continue |confirm |goto 66.48,64.92
step
kill HK-8 Aerial Oppression Unit##155157
_EVERYONE:_ |grouprole EVERYONE
|tip During "Annihilation Ray," climb the platforms and "Hack" the Overcharge Station. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use crowd control on Walkie Shockie X1 units and avoid standing near them. |grouprole DAMAGE
|tip During "Haywire," HK-8 will take increased damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use crowd control on Walkie Shockie X1 units and avoid standing near them. |grouprole HEALER
|tip "Wreck" and "Fulminating Zap" inflict heavy damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use a cooldown if available for "Wreck." |grouprole TANK
|tip
Click Here to Continue |confirm |goto 56.43,59.27
step
kill The Platinum Pummeler##144244
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Gnomercy 4.U first. |grouprole DAMAGE
|tip Avoid stepping on the various traps around the arena. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid stepping on the various traps around the arena. |grouprole HEALER
|tip Tanks will take heavy damage while leading the Pummeler to Piston Smashers. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull the Pummeler to Piston Smashers to remove stacks of "Platinum Plating." |grouprole TANK
|tip Don't face the Pummeler towards allies. |grouprole TANK
|tip
Click Here to Continue |confirm |goto Mechagon/2 27.87,70.50
step
kill K.U.-J.0.##144246
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing near allies or Junk Cubes when targeted with "Explosive Leap." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Blazing Chomp" from the tank when it stacks too high. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip If you reach higher stacks of "Blazing Chomp," use a cooldown. |grouprole TANK
|tip
Click Here to Continue |confirm |goto Mechagon/1 45.76,38.55
step
kill Head Machinist Sparkflux##144248
_EVERYONE:_ |grouprole EVERYONE
|tip Don't touch "Self-Trimming Hedge" blades. |grouprole EVERYONE
|tip "Hidden Flame Cannon" will be activated when Sparkflux reaches 100 energy. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel allies hit by "Discom-BOMB-ulator." |grouprole HEALER
|tip
Click Here to Continue |confirm |goto Mechagon/0 65.22,48.13
step
kill King Mechagon##155438
_EVERYONE:_ |grouprole EVERYONE
|tip Don't touch "Plasma Orbs." |grouprole EVERYONE
|tip Position yourself away from other players when targeted by "Giga-Zap." |grouprole EVERYONE
|tip
Click Here to Continue |confirm |goto 21.28,64.61
step
_Congratulations!_
You Completed the "Operation: Mechagon" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Shrine of the Storm",{
mapid=1039,
achieveid={12835},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","stormsong","valley","aqu'sirr","tidesage","council","lord","vol'zith","whisperer"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nAqu'sirr\nTidesage Council\nLord Stormsong\nVol'zith the Whisperer",
image=ZGV.IMAGESDIR.."ShrineoftheStorm",
},[[
step
Press _I_ and Queue for Shrine of the Storm or Enter the Dungeon with your Group |goto Shrine of the Storm/0 45.50,7.97 < 1000
step
kill Aqu'sirr##134056
_EVERYONE:_ |grouprole EVERYONE
|tip Be aware that "Surging Rush" and "Undertow" will knock you back. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Choking Brine" from allies as soon as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Destroy Grasping Tentacles to free allies from "Grasp from the Depths". |grouprole TANK
|tip Kill each element that spawn after "Erupting Waters". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Destroy Grasping Tentacles to free allies from "Grasp from the Depths". |grouprole DAMAGE
|tip Kill each element that spawn after "Erupting Waters". |grouprole DAMAGE
Defeat Aqu'sirr |scenariogoal Aqu'sirr defeated##1/39776
step
kill Brother Ironhull##134063
kill Galecaller Faye##134058
_EVERYONE:_ |grouprole EVERYONE
|tip Use "Reinforcing Wards" when they appear to mitigate heavy damage during the encounter. |grouprole EVERYONE
|tip Use "Swiftness Wards" that appear to gain immunity to movement impairing effects, as well as 25% haste and 25% increased movement speed. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready for big heals on the tank for Brother Ironhulls "Hindering Cleave". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities when Brother Ironhull uses "Hindering Cleave". |grouprole TANK
|tip Interrupt "Slicing Blast" when possible. |grouprole TANK
|tip Avoid attacks from Brother Ironhull when he is under the effects of "Blessing of Ironsides". |tip While under the affects of "Blessing of the Tempest", interrupt abilities will gain the "Blowback" effect. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Slicing Blast" when possible. |grouprole DAMAGE
|tip While under the affects of "Blessing of the Tempest", interrupt abilities will gain the "Blowback" effect. |grouprole DAMAGE
Defeat the Tidesage Council |scenariogoal Tidesage Council defeated##1/39777
step
kill Lord Stormsong##139737
_HEALER:_ |grouprole HEALER
|tip Dispel "Mind Rend" as soon as possible. |grouprole HEALER
|tip Avoid damage from "Waken the Void" unless afflicted by "Ancient Mindbender". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid damage from "Waken the Void". |grouprole TANK
|tip Interrupt "Void Bolt" whenever possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Attack allies who are afflicted by "Ancient Mindbender". |grouprole DAMAGE
|tip Avoid damage from "Waken the Void" unless afflicted by "Ancient Mindbender". |grouprole DAMAGE
|tip Interrupt "Void Bolt" whenever possible. |grouprole DAMAGE
Defeat Lord Stormsong |scenariogoal Lord Stormsong defeated##1/39778
step
kill Vol'zith the Whisperer##134069
_EVERYONE:_ |grouprole EVERYONE
|tip "Yawning Gate" will if you are near Vol'zith the Whisperer when it is being cast. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Avoid being hit by Sunken Denizens afflicted with "Leviathan's Wake". |grouprole HEALER
|tip Defeat on afflicted with "Grasp of the Sunken City" to return to the surface. |grouprole HEALER
|tip Dispel "Whispers of Power" from yourself. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Immediately kill Forgotten Denizens afflicted by "Grasp of the Sunken City" to return to the surface. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Immediately kill Forgotten Denizens afflicted by "Grasp of the Sunken City" to return to the surface. |grouprole DAMAGE
|tip Kill Manifestations of the Deep created by "Call the Abyss". |grouprole DAMAGE
Defeat Vol'zith the Whisperer |scenariogoal Vol'zith the Whisperer defeated##1/39779
step
_Congratulations!_
You Completed the "Shrine of the Storm" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Siege of Boralus",{
mapid=1162,
achieveid={12847},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","tiragarde","sound","chopper","redhook","dread","captain","lockwood","hadal","darkfathom","viq'goth"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nChopper Redhook\nDread Captain Lockwood\nHadal Darkfathom\nViq'Goth",
image=ZGV.IMAGESDIR.."SiegeofBoralus",
},[[
step
Press _I_ and Queue for the Siege of Boralus or Enter the Dungeon with your Group |goto Tiragarde Sound/0 75.57,24.81 < 1000
step
kill Sergeant Bainbridge
_EVERYONE:_ |grouprole EVERYONE
|tip If you are targeted by "Iron Gaze", run away. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip AoE heals will be needed for Kul Tiran Marksmen. |grouprole HEALER
|tip Be ready for big AoE heals if "Heavy Ordnance" detonates. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid being at melee range of Sergeant Bainbridge while he's under the affects of "Heavy Hitter". |grouprole TANK
|tip Face Kul Tiran Vanguards away from the group to avoid damage from "Heavy Slash".  |grouprole TANK
|tip Run over "Heavy Ordnance" to prevent them from damaging the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Kul Tiran forces as they spawn. |grouprole DAMAGE
Defeat Sergeant Bainbridge |scenariogoal Chopper Redhook defeated##1/38179
step
kill Dread Captain Lockwood##129208
_HEALER:_ |grouprole HEALER
|tip Anyone not in melee range has a chance to be hit with "Gut Shot", so continuous healing will be needed for those affected. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Ashvane Deckhand's away from the party. |grouprole TANK
|tip Move away from the "Clear the Deck" cone when it is cast. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When Dread Captain Lockwood reaches full energy, she will "Withdraw" to her ship. |grouprole DAMAGE
|tip To bring her back to the battlefield, pick up "Unstable Ordnance" and use it to attack the ship. |grouprole DAMAGE
Defeat Dread Captain Lockwood |scenariogoal Dread Captain Lockwood defeated##1/38181
step
kill Hadal Darkfathom##130836
_EVERYONE:_ |grouprole EVERYONE
|tip Use the statue to avoid "Tidal Surge". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Use AoE heals to mitigate damage from "Break Water". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face "Crashing Tide" away from the party. |grouprole TANK
Defeat Hadal Darkfathom |scenariogoal Hadal Darkfathom defeated##1/38180
step
kill Kraken##120553
_HEALER:_ |grouprole HEALER
|tip "Putrid Waters" will deal damage over time to random party members. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Melee "Demolishing Terrors" to prevent damage from "Hull Cracker". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Gripping Terrors" so it releases the engineer immidiately. |grouprole DAMAGE
Defeat Viq'Goth |scenariogoal Viq'Goth defeated##1/38182
step
_Congratulations!_
You Completed the "Siege of Boralus" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Temple of Sethraliss",{
mapid=1038,
achieveid={12504},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","Adderis","and","Aspix","Merektha","Galvazzt","Avatar","Vol'dun"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nAdderis and Aspix\nMerektha\nGalvazzt\nAvatar of Sethraliss",
image=ZGV.IMAGESDIR.."TempleofSethraliss",
},[[
step
Press _I_ and Queue for the Temple of Sethraliss or Enter the Dungeon with your Group |goto Temple of Sethraliss/0 0.00,0.00 < 1000
step
kill Adderis##133379
kill Aspix##133944
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from allies when afflicted by "Conduction". |grouprole EVERYONE
|tip When Adderis reaches 100 energy, spread out for "Arc Dash". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When Aspix gains 100 energy, be ready for heavy AoE heals during "Static Shock". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid attacking during "Lightning Shield". |grouprole TANK
|tip Step aside when Adderis uses "Cyclone Strike". |grouprole TANK
|tip |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stop attacking enemies afflicted with "Lightning Shield". |grouprole DAMAGE
|tip Step aside when Adderis uses "Cyclone Strike". |grouprole DAMAGE
Defeat Adderis and Aspix |scenariogoal Adderis and Aspix defeated##1/39860
step
kill Merektha##139834
_EVERYONE:_ |grouprole EVERYONE
|tip Face away from Merektha during "Blinding Sand" to avoid becoming blinded. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip If you are able to dispel poison, keep "Cytotoxin" off of group mates. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull Sand-Crusted Strikers out of the "Dust Clouds" they produce to allow people to attack them. |grouprole TANK
|tip Kill Sand-Crusted Strikers when they are up. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Sand-Crusted Strikers when they are up. |grouprole DAMAGE
|tip Kill "Venomous Ophidians" immidiately to prevent "Cytotoxin". |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat Merektha |scenariogoal Merektha defeated##1/39861
step
kill Galvazzt##133389
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of "Galvanized" as the longer you stay in it, the more damage you will take from it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When Galvazzt gains 100 energy, "Consume Charge" will be cast and cause mass damage to your group. |grouprole HEALER
|tip Each time he uses "Capacitance", the group will take more damage from all over his attacks. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stand between Galvazzt and any existing Energy Cores to prevent him from gaining the "Galvanized" buff. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stand between Galvazzt and any existing Energy Cores to prevent him from gaining the "Galvanized" buff. |grouprole DAMAGE
Defeat Galvazzt |scenariogoal Galvazzt defeated##1/39862
step
kill Avatar of Sethraliss##133392
_EVERYONE:_ |grouprole EVERYONE
|tip Energy Fragments generated from defeating Heart Guardians are most effective when the Avatar of Sethraliss doens't have the "Taint" debuff. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Your goal in this fight is to heal the "Avatar of Sethrallis" to full health. |grouprole HEALER
|tip Avoid "Plague Toads" as much as possible, they will inflict "Plague" which will reduce your healing done by 50%. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gather enemies together with Hoodoo Hexxers to AoE them down faster. |grouprole TANK
|tip If "Heart Guardians" are up for a while, use damage mitigation abilities to reduce damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Plague Toads" over anything else. |grouprole DAMAGE
|tip Kill "Heart Guardians" as soon as possible. |grouprole DAMAGE
|tip Kill "Hoodoo Hexers" when they appear. |grouprole DAMAGE
Defeat the Avatar of Sethraliss |scenariogoal Avatar of Sethraliss defeated##1/39863
step
_Congratulations!_
You Completed the "Temple of Sethraliss" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Tol Dagor",{
mapid=974,
achieveid={12840},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","tiragarde","sound","The","Sand","Queen","Howlis","Jes","Valyri","Captain","Knight","Overseer","Korgus"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nThe Sand Queen\nJes Howlis\nKnight Captain Valyri\nOverseer Korgus",
image=ZGV.IMAGESDIR.."TolDagor",
},[[
step
Press _I_ and Queue for Tol Dagor or Enter the Dungeon with your Group |goto Tol Dagor/0 0.00,0.00 < 1000
step
kill The Sand Queen##134927
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Sand Traps" which will appear all over the battlefield during the encounter. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Each "Upheaval" will deal heavy damage to anyone nearby, so be ready for big AoE heals. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Save your damage mitigation abilities for 30% health, as The Sand Queen will use "Enrage" and deal significantly more damage. |grouprole TANK
Defeat The Sand Queen |scenariogoal The Sand Queen defeated##1/38521
step
kill Jes Howlis##127484
_EVERYONE:_ |grouprole EVERYONE
|tip Get behind pillars during "Flashing Daggers" to prevent large amounts of damage. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Watch for prisoners who have stacks of "Motivated" as they will deal massive damage to their target. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Howling Fear" when possible. |grouprole TANK
|tip At he end of each "Smoke Powder", pick up every released prisoner. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Howling Fear" when possible. |grouprole DAMAGE
Defeat Jes Howlis |scenariogoal Jes Howlis defeated##1/38522
step
kill Knight Captain Valyri##130646
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid carrying munitions while afflicted by "Fuselighter". |grouprole EVERYONE
|tip Move munitions piles away from "Ignition" and "Cinderflame" to avoid triggering damage from "Burning Arsenal". |grouprole EVERYONE
Defeat Knight Captain Valyri |scenariogoal Knight Captain Valyri defeated##1/38523
step
kill Overseer Korgus##127503
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid taking damage from applications of "Azerite Rounds: Incendiary" as it will stack. |grouprole EVERYONE
|tip Avoid being struck by "Massive Blast" when the prison cannons shoot it. |grouprole EVERYONE
|tip Being struck by "Deadeye" will damage the first person in its path. |grouprole EVERYONE
|tip You will gain a debuff that causes "Deadeye" to do more damage to you the next time you are hit by it |grouprole EVERYONE
|tip Try to stand still when afflicted by "Heartstopper Venom". |grouprole EVERYONE
Defeat Overseer Korgus |scenariogoal Overseer Korgus defeated##1/38524
step
_Congratulations!_
You Completed the "Tol Dagor" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\The Underrot",{
mapid=1041,
achieveid={12500},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","nazmir","Elder","Leaxa","Cragmaw","Infested","Sporecaller","Zancha","Abomination","Unbound"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nElder Leaxa\nCragmaw the Infested\nSporecaller Zancha\nUnbound Abomination",
image=ZGV.IMAGESDIR.."TheUnderrot",
},[[
step
Press _I_ and Queue for The Underrot or Enter the Dungeon with your Group |goto The Underrot/0 0.00,0.00 < 1000
step
kill Elder Leaxa##131318
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Creeping Rot" as it moves throughout the battlefield. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Focus healing on players afflicted by "Taint of G'huun". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Blood Bolt" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Blood Bolt" when possible. |grouprole DAMAGE
Defeat Elder Leaxa |scenariogoal Elder Leaxa defeated##1/39711
step
kill Cragmaw the Infested##131817
_HEALER:_ |grouprole HEALER
|tip Step on "Blood Tick Larvae" to destroy them before they grow into additional Blood Ticks. |grouprole HEALER
|tip AoE heals will be needed when "Tantrum" is being channeled. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Cragmaw away from any allies to avoid hitting them with "Indigestion". |grouprole TANK
|tip Pick up "Blood Ticks" as they appear throughout the encounter. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Step on "Blood Tick Larvae" to destroy them before they grow into additional Blood Ticks. |grouprole DAMAGE
|tip Focus damage on "Blood Ticks" as they appear. |grouprole DAMAGE
Defeat Cragmaw the Infested |scenariogoal Cragmaw the Infested defeated##1/39712
step
kill Sporecaller Zancha##131383
_HEALER:_ |grouprole HEALER
|tip "Rotting Spores" will inflict significant damage over time. |grouprole HEALER
|tip "Upheaval" will deal heavy damage to its target, so big AoE heals may be needed. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Position Sporecaller Zancha so that "Shockwave" hits Decaying Spores. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If afflicted by "Upheaval", move to Decaying Spores to have it damage them. |grouprole DAMAGE
|tip Kill spore pods that appear using defensive abilities. |grouprole DAMAGE
Defeat Sporecaller Zancha |scenariogoal Sporecaller Zancha defeated##1/39713
step
kill Unbound Abomination##133007
_HEALER:_ |grouprole HEALER
|tip Dispel "Putrid Blood" as soon as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When the Unbound Abomination reaches 100 Blood Energy, several Blood Visages will spawn that you need to pick up. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus on "Blood Visages" as soon as they appear. |grouprole DAMAGE
Defeat the Unbound Abomination |scenariogoal Unbound Abomination defeated##1/39714
step
_Congratulations!_
You Completed "The Underrot" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Waycrest Manor",{
mapid=1015,
achieveid={12483},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","heartsbane","triad","soulbound","goliath","raal","the","gluttonous","lady","lord","gorak","tul","drustvar"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nHeartsbane Triad\nSoulbound Goliath\nRaal the Gluttonous\nLord and Lady Waycrest\nGorak Tul",
image=ZGV.IMAGESDIR.."WaycrestManor",
},[[
step
Press _I_ and Queue for Waycrest Manor or Enter the Dungeon with your Group |goto Waycrest Manor/0 0.00,0.00 < 1000
step
kill Sister Briar##135360
kill Sister Malady##135358
kill Sister Solena##135359
_EVERYONE:_ |grouprole EVERYONE
|tip Attack players afflicted by "Soul Manipulation" in order to break it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Sister Briar will leave the "Jagged Nettles" debuff on a target when active. |grouprole HEALER
|tip Sisters will randomly attack party members while not carrying "Focusing Iris". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Look for the sister with the "Focusing Iris" buff, as it is the only one who needs to be tanked. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on the sister with the "Focusing Iris" buff. |grouprole DAMAGE
|tip Move away from the party when afflicted by "Unstable Runic Mark". |grouprole DAMAGE
Defeat the Heartsbane Triad |scenariogoal Heartsbane Triad defeated##1/38598
step
kill Soulbound Goliath##131667
_HEALER:_ |grouprole HEALER
|tip As the encounter goes on, the Soulbound Goliath will gain "Soul Harvest" causing it to deal significant damage the longer the fight goes. |grouprole HEALER
|tip Players afflicted by "Soul Thorns" will take heavy damage. |grouprole HEALER
|tip "Crush" will do massive damage to a single group member. |grouprole HEALER
|tip "Burning Brush" will deal AoE damage to the group.|grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be prepared to use damage mitigation for "Crush". |grouprole TANK
|tip Watch for "Wildfire" patches on the ground, caused by lightning strikes. |grouprole TANK
|tip Moving the Souldbound Goliath into "Wildfire" will reduce the damage increase from "Soul Harvest". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Soul Thorns" as soon as it impales a party member. |grouprole DAMAGE
|tip |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat the Soulbound Goliath |scenariogoal Soulbound Goliath defeated##1/38599
step
kill Raal the Gluttonous##131863
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from "Rotten  Explusion". |grouprole EVERYONE
|tip It will appear on the ground after it is cast. |grouprole EVERYONE
|tip Avoid being hit with "Tenderize". |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Kill "Wasting Servants" summoned during the encounter. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Wasting Servants" summoned during the encounter. |grouprole DAMAGE
Defeat Raal the Gluttonous |scenariogoal Raal the Gluttonous defeated##1/38600
step
kill Lady Waycrest##135357
kill Lord Waycrest##131527
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from "Discordant Cadenza" when it is being cast. |grouprole EVERYONE
|tip Move away from "Virulent Pathogen" when possible. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Remove "Virulent Pathogen" as soon as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip As the enounter continues, Lody Waycrest will gain "Putrid Vitality" which will increase his damage output. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on "Lord Waycrest" until Lady Waycrest enters the encounter. |grouprole DAMAGE
Defeat Lord and Lady Waycrest |scenariogoal Lord and Lady Waycrest defeated##1/38601
step
kill Gorak Tul##131864
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out for "Darkened Lightning". |grouprole EVERYONE
|tip Use "Alchemical Fire" to destroy the corpses of Deathtouched Slavers. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Death Lens" will deal 70% of the targets max health, so keep the group above 80% health. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up "Deathtouched Slavers" as soon as they are summoned by Gorak Tul. |grouprole TANK
Defeat Gorak Tul |scenariogoal Gorak Tul defeated##1/38602
step
_Congratulations!_
You Completed the "Waycrest Manor" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Halls of Containment",{
mapid=1148,
achieveid={12521},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"battle","for","azeroth","nazmir","zandalar","taloc","remnant","of","corruption","zek'voz"},
author="support@zygorguides.com",
description="\nTo complete Uldir - Halls of Containment, you will need to kill the following bosses:\n\nTaloc\nRemnant of Corruption\nZek'voz",
},[[
step
Press _I_ and Queue for Uldir - Halls of Containment or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Taloc##122276
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from allies afflicted with "Cudgel of Gore". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Allies afflicted with "Plasma Discharge" will take heavy damage. |grouprole HEALER
|tip Avoid standing in front of Taloc when he begins casting "Sanguine Static". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Taloc towards "Blood Storms" when he casts "Cudgel of Gore". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on "Volatile Droplets" when they appear. |grouprole DAMAGE
|tip Avoid standing in front of Taloc when he begins casting "Sanguine Static". |grouprole DAMAGE
Defeat Taloc |confirm
step
kill MOTHER##135452
_EVERYONE:_ |grouprole EVERYONE
|tip Have everyone move through "Defense Grids" as they appear. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of MOTHER when she casts "Sanitizing Strike". |grouprole HEALER
|tip Prepare AoE heals for allies passing through the "Defense Grids". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Quickly pick up "Remnants of Corruption" as they appear. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of MOTHER when she casts "Sanitizing Strike". |grouprole DAMAGE
|tip Make it a priority to interrupt "Clinging Corruption". |grouprole DAMAGE
Defeat MOTHER |confirm
step
kill Zek'voz##134445
_HEALER:_ |grouprole HEALER
|tip Be prepared for "Titan Sparks" as they will deal significant damage to random allies. |grouprole HEALER
|tip If "Orb of Corruption" isn't properly intercepted, be prepared for AoE heals. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move away from Zek'voz during "Void Lash" while it's affected by "Might of the Void". |grouprole TANK
|tip Interrupt allies afflicted by "Will of the Corruptor". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Make it a priority to intercept "Orbs of Corruption". |grouprole DAMAGE
|tip Move away from allies when "Eye Beam" is about to be cast. |grouprole DAMAGE
|tip Interrupt allies afflicted by "Will of the Corruptor". |grouprole DAMAGE
Defeat Zek'voz |confirm
step
_Congratulations!_
You Completed the "Uldir - Halls of Containment" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Crimson Descent",{
mapid=1148,
achieveid={12522},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"battle","for","azeroth","nazmir","zandalar","vectis","fetid","devourer","zul"},
author="support@zygorguides.com",
description="\nTo complete Uldir - Crimson Descent, you will need to kill the following bosses:\n\nVectis\nFetid Devourer\nZul",
},[[
step
Press _I_ and Queue for Uldir - Crimson Descent or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Fetid Devourer##133298
_HEALER:_ |grouprole HEALER
|tip Prepare for heavy heals when "Terrible Thrash" hits. |grouprole HEALER
|tip Allies afflicted with "Malodorous Miasma" will accelerate to "Putrid Paroxysm" which will require focused healing. |grouprole HEALER
|tip Bigger heals will be needed when "Fetid Frenzy" kicks in.
_TANK:_ |grouprole TANK
|tip Off-tank should stand close to the main tank to soak damage from "Terrible Thrash". |grouprole TANK
|tip Use damage mitigation abilities for when "Fetid Frenzy" kicks in. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on "Corruption Corpuscles" before the finish casting "Enticing Essence". |grouprole DAMAGE
|tip When the Chimaera reaches 100 energy, prepare to avoid "Rotting Regurgitation". |grouprole DAMAGE
Defeat the Fetid Devourer |confirm
step
kill Vectis##134442
_EVERYONE:_ |grouprole EVERYONE
|tip "Plauge Bombs" will spawn Plague Amalgams when they detonate without a player being hit by it. |grouprole EVERYONE
|tip Move away from allies afflicted by "Gestate". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Allies afflicted with "Omega Vector" and "Gestate" will need heavy healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay away from allies afflicted by "Omega Vector". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Make it a priority to focus down "Plague Amalgams" when they appear. |grouprole DAMAGE
|tip When "Omega Vector" is cast on a player, have an assigned player ready to pick it up next to them for when the spell expires.
Defeat Vectis |confirm
step
kill Zul##138967
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid being close to allies afflicted with "Dark Revelation". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip AoE heals will be needed for "Dark Revelation" and "Deathwish". |grouprole HEALER
|tip Make it a priority to dispel "Deathwish" as soon as possible. |grouprole HEALER
|tip Dispelling "Bound by Shadow" from Minions of Zul will instantly kill them. |grouprole HEALER
|tip During "Locus of Corruption", the raid will take constant damage for the remainder of the encounter. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep "Nazmani Crushers" away from the raid. |grouprole TANK
|tip Avoid being hit by "Bloodthirsty Crawgs". |grouprole TANK
|tip Move away from the raid when you become afflicted with "Rupturing Blood". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on "Animated Ichors" as they appear. |grouprole DAMAGE
|tip Dispelling "Bound by Shadow" from Minions of Zul will instantly kill them. |grouprole DAMAGE
Defeat Zul |confirm
step
_Congratulations!_
You Completed the "Uldir - Crimson Descent" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Heart of Corruption",{
mapid=1148,
achieveid={12523},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"battle","for","azeroth","nazmir","zandalar","vectis","fetid","devourer","zul"},
author="support@zygorguides.com",
description="\nTo complete Uldir - Heart of Corruption, you will need to kill the following bosses:\n\nMythrax the Unraveler\nG'huun",
},[[
step
Press _I_ and Queue for Uldir - Heart of Corruption or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Mythrax the Unraveler##134546
_EVERYONE:_ |grouprole EVERYONE
|tip If afflicted with "Annihilation" search for "Existence Fragments" to regain the health lost. |grouprole EVERYONE
|tip Avoid having multiple players afflicted by the "Oblivion Sphere". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Move away from allies afflicted by "imminent Ruin". |grouprole HEALER
|tip Breaking multiple targets from "Oblivion Sphere" will cause major raid damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip If afflicted by "Essence Shear", quickly move away from in front of Mythrax to avoid getting hit with it again. |grouprole TANK
|tip Be sure to use "Existence Fragments" to remove the health debuff of "Annihilation".|grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Prioritize running away from "Oblivion Spheres" as they spawn. |grouprole DAMAGE
|tip Move away from allies when afflicted by "Imminent Ruin". |grouprole DAMAGE
Defeat Mythrax the Unraveler |confirm
step
kill G'huun##132998
Defeat G'huun |confirm
step
_Congratulations!_
You Completed the "Uldir - Heart of Corruption" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Defense of Dazar'alor",{
mapid=1352,
lfgid=1948,
achieveid={12523},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"frida","Ironbellows","King","Grong","Flamefist","Illuminated","High","Tinker","Mekkatorque","Sea","Priest","Blockade","Jaina","Proudmoore"},
author="support@zygorguides.com",
description="\nTo complete the Battle of Dazar'alor - Defense of Dazar'alor, you will need to kill the following bosses:\n\n"..
"Frida Ironbellows\nGrong, the Jungle Lord\nJadefire Masters",
},[[
step
kill Frida Ironbellows##144680
|tip Interrupt heals on cooldown. |grouprole DAMAGE
|tip Don't attack Frida when she is using Seal of Reckoning. |grouprole DAMAGE
|tip Turn away from Crusader allies when they cast Blinding Faith. |grouprole DAMAGE or HEALER
|tip Be ready for increased healing during Seal of Retribution. |grouprole HEALER
|tip Be mindful of Sacred Blade stacks and tank swap accordingly. |grouprole TANK
|tip Move adds to prevent them from being hit by Wave of Light. |grouprole TANK
|tip Consult with your other tanks to handle blessings on adds appropriately. |grouprole TANK
|confirm |goto Battle of Dazar'alor/5 29.70,37.38
step
kill Grong##148117
|tip Quickly interrupt and kill Apetaganizer 3000 mobs. |grouprole DAMAGE
|tip When Grong's rage reaches 75 or more, use cooldowns to mitigate Tantrum. |grouprole HEALER
|tip Don't take more than one Bestial Smash in a row. |grouprole TANK
|tip Group near allies to avoid Ferocious Roar's fear. |grouprole EVERYONE
|confirm |goto 41.61,63.63
step
Kill the Jadefire Masters
|tip Switch targets when appropriate to keep both bosses at similar health levels. |grouprole DAMAGE
|tip DPS Spirits of Xuen quickly before they reach their Stalk targets. |grouprole DAMAGE
|tip Burn down Fire Shield to allow Pyroblast to be interrupted. |grouprole DAMAGE
|tip The tank cannot be healed during Multi-Sided Strike. |grouprole HEALER
|tip Dispel Searing Embers in order of least remaining duration first. |grouprole HEALER
|tip You cannot heal players inside Chi-Ji's Song unless you step in with them. |grouprole HEALER
|tip When Blazing Phoenix is active, the entire raid will take damage. |grouprole HEALER
|tip During Multi-Sided Strike, you must survive without heals and should face each attack directly. |grouprole TANK
|tip Communicate with other tanks to manage stacks of Rising Flames. |grouprole TANK
|tip Whirling Crane Kick will continue until the caster is engaged. |grouprole TANK
|tip Chi-Ji's Song makes targeting within it impossible. |grouprole EVERYONE
|tip Walking on Magma Traps will launch you into the air and kill you with fall damage. |grouprole EVERYONE
|confirm |goto 48.78,66.21
step
_Congratulations!_
You completed the "Battle of Dazar'alor - Defense of Dazar'alor" raid.
|tip
Click Here to Load the "Death's Bargain" Raid Guide |confirm |next "Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Death's Bargain"
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Death's Bargain",{
mapid=1352,
lfgid=1949,
achieveid={12523},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"frida","Ironbellows","King","Grong","Flamefist","Illuminated","High","Tinker","Mekkatorque","Sea","Priest","Blockade","Jaina","Proudmoore"},
author="support@zygorguides.com",
description="\nTo complete the Dazar'alor - Death's Bargain, you will need to kill the following bosses:\n\n"..
"Opulence\nConclave of the Chosen\nKing Rastakhan",
},[[
step
kill Opulence##147564
|tip Kill Spirits of Gold quickly. |grouprole DAMAGE
|tip Stack on other players to split the damage of Coin Shower. |grouprole DAMAGE
|tip Pick up an Amethyst of the Shadow King. |grouprole HEALER
|tip Dispel Hex of Lethargy. |grouprole HEALER
|tip Tank the Bulwark and Hand with ample room to both sides. |grouprole TANK
|tip Tank swap when afflicted by Depleted Diamond. |grouprole TANK
|tip Cooldowns are helpful for Coin Sweep. |grouprole TANK
|confirm |goto Battle of Dazar'alor/1 42.14,51.34
step
Kill the Conclave of the Chosen
|tip Kill Ravenous Stalkers quickly. |grouprole DAMAGE
|tip Kimbul's Wrath spreads throughout the raid and will require increased healing. |grouprole HEALER
|tip Dispel Mind Wipe on cooldown. |grouprole HEALER
|tip Keep the aspects separated to prevent them from gaining Loa's Pact. |grouprole TANK
|tip Avoid standing near allies when afflicted by Akunda's Wrath. |grouprole EVERYONE
|tip Move to Paku during Paku's Wrath or you will die. |grouprole EVERYONE
|confirm |goto Battle of Dazar'alor/2 47.44,67.56
step
kill King Rastakhan##145616
|tip Drop Death Rifts in areas that shield allies in the death realm from Dread Reaping. |grouprole EVERYONE
|tip Coordinate with the raid to clear Deathly Withering in Death Rifts. |grouprole DAMAGE or HEALER
|tip Avoid killing the allies linked to the Voodoo Dolls you attack. |grouprole DAMAGE
|tip Avoid healing allies affected by Caress of Death. |grouprole HEALER
|tip Players affected by Grievous Axe and Focused Demise will require additional healing. |grouprole HEALER
|tip Run away from Rastakhan when targeted by Scorching Detonation. |grouprole TANK
|tip Run away from Bwonsamdi or Rastakhan when targeted by Caress of Death. |grouprole TANK
|confirm |goto Battle of Dazar'alor/4 47.25,57.27
step
_Congratulations!_
You completed the "Battle of Dazar'alor - Death's Bargain" raid.
|tip
Click Here to Load the "Victory or Death" Raid Guide |confirm |next "Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Victory or Death"
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Victory or Death",{
mapid=1352,
lfgid=1950,
achieveid={12523},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"High","Tinker","Mekkatorque","Stormwall","Blockade","Lady","Jaina","Proudmoore"},
author="support@zygorguides.com",
description="\nTo complete the Battle of Dazar'alor - Victory or Death, you will need to kill the following bosses:\n\n"..
"High Tinker Mekkatorque\nStormwall Blockade\nLady Jaina Proudmoore",
},[[
step
kill High Tinker Mekkatorque##144838
|tip Make sure you're out of line of sight from any allies when Gigavolt Charge expires. |grouprole EVERYONE
|tip When affected by Shrunken, await instructions from allies to input the correct shutdown code on Stun Bots. |grouprole EVERYONE
|tip Raid members debuffed with Gigavolt Blast will take large amounts of damage. |grouprole HEALER
|tip Crowd control Stun Bots to prevent them from coming within 8 yards of players. |grouprole DAMAGE or TANK
|tip Coordinate with your offtank to manage Electroshock Strikes. |grouprole TANK
|tip Taunt quickly if your offtank is affected by Gigavolt Charge or Shrunk. |grouprole TANK
|confirm |goto Battle of Dazar'alor/0 49.36,31.06
step
Kill the Stormwall Blockade
|tip Attack Energizing Storms with Kelp-Wrapped Fists to slow them. |grouprole TANK
|tip Interrupt Greater Storm's Empowerment. |grouprole TANK
|tip If debuffed with Tempting Song, move as far away from the Siren as possible. |grouprole HEALER or DAMAGE
|tip Move constantly to avoid Voltaic Flashes. |grouprole HEALER or DAMAGE
|tip Use Storm's Wail to remove Freezing Tidepools. |grouprole DAMAGE
|confirm |goto 49.29,91.20
step
kill Lady Jaina Proudmoore##149684
|tip Use the ballistas to fire at Kul Tiran Corsairs. |grouprole DAMAGE
|tip Throw munition barrels overboard before they explode. |grouprole DAMAGE
|tip Free allies trapped by Frozen Solid. |grouprole DAMAGE
|tip Clear stacks of Chilling Touch by standing near a Burning Explosion or entering patches of Searing Pitch. |grouprole DAMAGE or TANK
|tip Ring of Ice will inflict heavy raid-wide damage. |grouprole HEALER
|tip Dispel Grasp of Frost and Hand of Frost on cooldown. |grouprole HEALER
|tip Players hit with Siegebreaker Blast will take heavy damage. |grouprole HEALER
|tip Remove Searing Pitch patches with Jaina's Avalanche or Freezing Blast abilities. |grouprole TANK
|tip Run away from Jaina when targeted by Avalanche. |grouprole TANK
|confirm |goto Battle of Dazar'alor/6 65.38,23.54
step
_Congratulations!_
You completed the "Battle of Dazar'alor - Victory or Death" raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Crucible of Storms",{
mapid=1363,
achieveid={13414},
patch='80100',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="\nTo complete Crucible of Storms, you will need to kill the following bosses:\n\n"..
"The Restless Cabal\nUu'nat, Harbinger of the Void",
},[[
step
kill Zaxasj the Speaker##146497
kill Fa'thuul the Feared##146495
|tip Manage stacks of "Shear Mind" to avoid taking critical damage. |grouprole TANK
|tip When "Trident of the Deep Ocean" is activated, move enemies into "Custody of the Deep." |grouprole TANK
|tip Keep Fa'thuul near an unactivated Relic of Power at 75%, 50%, and 25% health. |grouprole TANK
|tip Only one ranged player should take "Aphotic Blast" at a time. |grouprole DAMAGE
|tip Interrupt "Witness the End" on cooldown, preferrably with a group rotation. |grouprole DAMAGE
|tip Quickly kill "Visage from Beyond" to avoid "Terrifying Echo." |grouprole DAMAGE
|tip Avoid stacking "Promises of Power" too high. |grouprole HEALER
|tip Top off players before "Embrace of the Void," as they cannot be healed while affected. |grouprole HEALER
|tip "Annihilate" will kill allies during "Storm of Annihilation" if players are not topped off. |grouprole HEALER
|confirm
step
kill Uu'nat##145371
|tip Use the Trident of Deep Ocean to provide shelter to allies with "Custody of the Deep.". |grouprole TANK
|tip Keep Undying Guardians away from Uu'nat or they will gain "Sightless Bond.". |grouprole TANK
|tip Use the Tempest Caller to kill Undying Guardians with "Storm of Annihilation." |grouprole DAMAGE
|tip Interrupt Primordial Mindbenders when casting "Consume Essence" or they will heal. |grouprole DAMAGE
|tip Use "Embrace of the Void" from the Void Stone to prevent healing from "Oblivion Tear." |grouprole HEALER
|tip When activating the Void Stone, you must take damage to break "Umbral Shell." |grouprole HEALER
|tip Keep players topped off during "Storm of Annihilation." |grouprole HEALER
|confirm
step
_Congratulations!_
You Completed the "Crucible of Storms" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\The Eternal Palace - The Grand Reception",{
mapid=1528,
achieveid={13718},
patch='80200',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="\nTo complete The Eternal Palace - The Grand Reception, you will need to kill the following bosses:\n\n"..
"Commander Sivara\nBlackwater Behemoth\nRadiance of Azshara",
},[[
step
Enter the Eternal Palace |goto The Eternal Palace/7 0.00,0.00 |c
|tip You must complete the "Unfathomable" achievement to use the whirlpool.
|tip You can still be summoned or use the LFG tool.
step
kill Abyssal Commander Sivara##155144 |goto The Eternal Palace/7 49.84,48.13
Everyone: |grouprole EVERYONE
|tip Position yourself away from players who have an opposing mark. |grouprole EVERYONE
|tip Don't attack enemies who are of an opposing element. |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Intercept "Frostshock Bolts" that match the element of your mark. |grouprole DAMAGE
|tip The damage from "Overflow" gets split between everyone it hits. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip "Chimeric Marks" inflicts periodic damage to the entire raid. |grouprole HEALER
|tip High raid-wide damage will occur during "Unstable Mixture." |grouprole HEALER
Tank: |grouprole TANK
|tip Avoid gaining too many stacks of "Rimefrost" and "Septic Taint." |grouprole TANK
|tip Upon expiring, they will create "Frozen Ground" and "Septic Ground" respectively. |grouprole TANK
step
kill Blackwater Behemoth##154986 |goto The Eternal Palace/5 35.72,20.11
Damage: |grouprole DAMAGE
|tip Swim into "Bioluminescent Clouds" so healers can heal you. |grouprole DAMAGE
|tip Ensure "Bioluminescence" expires before pursuing the Behemoth of the abyss. |grouprole DAMAGE
|tip Swim quickly across the abyss to interrupt the Behemoth's "Cavitation." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Trigger "Bioluminescent Clouds" in places where most of the raid can benefit. |grouprole HEALER
|tip Ensure "Bioluminescence" expires before pursuing the Behemoth of the abyss. |grouprole HEALER
Tank: |grouprole TANK
|tip Minimize the stacks of "Feeding Frenzy" gained by the Behemoth. |grouprole TANK
|tip Stay buffed with "Radiant Biomass" or you will be blocked from receiving heals. |grouprole TANK
step
kill Radiance of Azshara##152364 |goto The Eternal Palace/6 46.70,18.54
Damage: |grouprole DAMAGE
|tip Run "Arcane Bomb" away from any allies and wait to be dispelled. |grouprole DAMAGE
|tip Keep your back away from the edge of the Eye of the Storm when Stormwraiths cast "Gale Buffet." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Dispel "Arcane Bomb" when the player is in a safe location. |grouprole HEALER
|tip Keep your back away from the edge of the Eye of the Storm when Stormwraiths cast "Gale Buffet." |grouprole HEALER
Tank: |grouprole TANK
|tip When "Tide Fist" knocks the current tank away, be in melee range to pick up the boss. |grouprole TANK
|tip Keep Stormwraiths and Stormlings within the Eye of the Storm at all times. |grouprole TANK
step
_Congratulations!_
You Completed the "The Eternal Palace - The Grand Reception" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\The Eternal Palace - Depths of the Devoted",{
mapid=1528,
achieveid={13719},
patch='80200',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="\nTo complete The Eternal Palace - Depths of the Devoted, you will need to kill the following bosses:\n\n"..
"Lady Ashvane\nOrgozoa\nThe Queen's Court",
},[[
step
Enter the Eternal Palace |goto The Eternal Palace/7 0.00,0.00 |c
|tip You must complete the "Unfathomable" achievement to use the whirlpool.
|tip You can still be summoned or use the LFG tool.
step
kill Lady Ashvane##153142 |goto The Eternal Palace/6 47.64,67.91
Everyone: |grouprole EVERYONE
|tip Avoid other players when you are targeted by "Briny Bubble." |grouprole EVERYONE
|tip Coordinate with the raid to use "Arcing Azerite" to destroy "Coral Growths." |grouprole EVERYONE
|tip Coordinate with the raid to ensure that no "Rippling Waves" reach Lady Ashvane. |grouprole EVERYONE
Healer: |grouprole HEALER
|tip "Rippling Wave" inflicts heavy damage to the entire raid. |grouprole HEALER
Tank: |grouprole TANK
|tip Move Lady Ashvane away from patches of Cutting Coral. |grouprole TANK
step
kill Orgozoa##152128 |goto The Eternal Palace/3 74.96,46.95
Damage: |grouprole DAMAGE
|tip Be mindful of your position to avoid spreading "Incubation Fluid." |grouprole DAMAGE
|tip Run away from any allies when targeted by "Aqua Lance." |grouprole DAMAGE
|tip Help soak "Powerful Stomp." |grouprole DAMAGE
|tip Interrupt "Conductive Pulse" whenever possible. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Be mindful of your position to avoid spreading "Incubation Fluid." |grouprole HEALER
|tip "Powerful Stomp" will cause heavy raid-wide damage. |grouprole HEALER
|tip Tanks will take heavy damage when they have lower stacks of "Desensitizing Sting." |grouprole HEALER
Tank: |grouprole TANK
|tip Tank swap before "Desensitizing Sting" reaches 10 stacks. |grouprole TANK
|tip Soak the Zoatroid's "Amniotic Splatter." |grouprole TANK
|tip Keep Naga and Zoatroids away from Orgozoa at all times. |grouprole TANK
step
kill Silivaz the Zealous##152853 |goto The Eternal Palace/2 33.52,47.49
kill Pashmar the Fanatical##152852 |goto 33.52,47.49
Damage: |grouprole DAMAGE
|tip Group up during "Frenetic Charge" to split the damage. |grouprole DAMAGE
|tip Kill "Potent Sparks" at least five seconds apart. |grouprole DAMAGE
|tip Coordinate with the raid for positioning during "Form Ranks" and "Stand Alone." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip The raid will take consistent damage throughout the fight, with spikes near the end. |grouprole HEALER
|tip Anyone afflicted by "Suffering" cannot be healed until it expires. |grouprole HEALER
|tip Group up during "Frenetic Charge" to split the damage. |grouprole HEALER
|tip Coordinate with the raid for positioning during "Form Ranks" and "Stand Alone." |grouprole HEALER
Tank: |grouprole TANK
|tip Coordinate with your offtank to manage stacks of "Commander's Fury" and "Pashmar's Touch." |grouprole TANK
|tip Move the bosses out of "Mighty Rupture" areas. |grouprole TANK
|tip Use cooldowns if affected by "Suffering." |grouprole TANK
step
_Congratulations!_
You Completed the "The Eternal Palace - Depths of the Devoted" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\The Eternal Palace - The Circle of Stars",{
mapid=1528,
achieveid={13725},
patch='80200',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="\nTo complete The Eternal Palace - The Circle of Stars, you will need to kill the following bosses:\n\n"..
"Za'qul\nQueen Azshara",
},[[
step
Enter the Eternal Palace |goto The Eternal Palace/7 0.00,0.00 |c
|tip You must complete the "Unfathomable" achievement to use the whirlpool.
|tip You can still be summoned or use the LFG tool.
step
kill Za'qul##150859 |goto The Eternal Palace/1 17.35,50.72
Damage: |grouprole DAMAGE
|tip Defeat Horrific Summoners before they become unmanigable. |grouprole DAMAGE
|tip Focus damage on Za'qul during "Dark Pulse." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Dispel "Dread" and "Manic Dread" when possible. |grouprole HEALER
|tip Keep moving while affected by "Manifest Nightmares." |grouprole HEALER
Tank: |grouprole TANK
|tip Use cooldowns during "Mind Tether." |grouprole TANK
|tip Move the boss into "Maddening Eruptions." |grouprole TANK
|tip Keep moving while affected by "Manifest Nightmares." |grouprole TANK
step
kill Queen Azshara##155126 |goto The Eternal Palace/0 48.27,51.97
Everyone: |grouprole EVERYONE
|tip Powering Ancient Wards or Draining Azshara's Ward drains the player of max health. |grouprole EVERYONE
|tip Hide from Azshara and allies when affected by "Arcane Burst." |grouprole EVERYONE
|tip Hide from Azshara to reset stacks of "Arcane Vulnerability" and avoid "Arcane Detonation." |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Ensure that your healers have you in line-of-sight. |grouprole DAMAGE
|tip Ensure "Charged Spear" doesn't impact the surface but passes through "Crystalline Shields." |grouprole DAMAGE
|tip Overzealous Hulks "Drain" your Ancient Wards. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Ensure that you have line-of-sight with other players. |grouprole HEALER
|tip Coordinate with the raid to manage the damage from using "Release" on the Titan Console. |grouprole HEALER
|tip "Release" charges increase the damage of "Massive Energy Spike." |grouprole HEALER
Tank: |grouprole TANK
|tip Ensure that your healers have you in line-of-sight. |grouprole TANK
|tip Manage the Lovers' line-of-sight during "Longing" and "Painful Memories." |grouprole TANK
|tip Move Azshara periodically to avoid draining your ward. |grouprole TANK
step
_Congratulations!_
You Completed the "The Eternal Palace - The Circle of Stars" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Vision of Destiny",{
mapid=1580,
achieveid={14193},
patch='80300',
condition_suggested=function() return level == 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="To complete Ny'alotha, the Waking City - Vision of Destiny, you will need to kill the following bosses:\n\n"..
"Wrathion, the Black Emperor\nMaut\nThe Prophet Skitra",
},[[
step
Enter Ny'alotha, the Waking City |goto Ny'alotha, the Waking City 0.00,0.00 |c
step
kill Wrathion##156818 |goto Ny'alotha, the Waking City/9 51.10,80.18
Everyone: |grouprole EVERYONE
|tip Hide in a safe area during "Burning Cataclysm." |grouprole EVERYONE
|tip Destroy "Crackling Shards" by running through them while afflicted with "Burning Madness." |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Burn down "Crackling Shards" quickly when they appear. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Provide extra healing for allies afflicted by "Burning Madness." |grouprole HEALER
Tank: |grouprole TANK
|tip Determine with your offtank how many stacks of "Searing Armor" you will take before swapping. |grouprole TANK
|confirm
step
kill Maut##156523 |goto 19.24,60.61
Everyone: |grouprole EVERYONE
|tip Step into areas of "Devoured Abyss" to avoid "Stygian Annihilation." |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Interrupt Dark Manifestations whenever possible. |grouprole DAMAGE
|tip Break Maut's "Obsidian Skin" before the "Obsidian Shatter" cast finishes. |grouprole DAMAGE
|tip Kill Dark Manifestations quickly before they can aid Maut. |grouprole DAMAGE
Tank: |grouprole TANK
|tip Manage stacks of "Shadow Wounds" and swap with your offtank when needed. |grouprole TANK
|tip Interrupt Dark Manifestations whenever possible. |grouprole TANK
|tip Intercept Forbidden Mana orbs before they reach Maut. |grouprole TANK
|confirm
step
kill The Prophet Skitra##161901 |goto 83.59,61.08
Everyone: |grouprole EVERYONE
|tip Coordinate with your raid during "Illusionary Projection" to find the real Skitra. |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip When afflicted with "Shred Psyche," run away from allies. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Raid members with stacks of "Shadow Shock" will take increased spike damage. |grouprole HEALER
|tip When afflicted with "Shred Psyche," run away from allies. |grouprole HEALER
Tank: |grouprole TANK
|tip Manage stacks of "Shadow Shock" and swap with your offtank when necessary. |grouprole TANK
|confirm
step
_Congratulations!_
You Completed the "Ny'alotha, the Waking City - Vision of Destiny" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Halls of Devotion",{
mapid=1580,
achieveid={14194},
patch='80300',
condition_suggested=function() return level == 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="To complete Ny'alotha, the Waking City - Halls of Devotion, you will need to kill the following bosses:\n\n"..
"Dark Inquisitor Xanesh\nThe Hivemind\nShad'har the Insatiable",
},[[
step
Enter Ny'alotha, the Waking City |goto Ny'alotha, the Waking City 0.00,0.00 |c
step
kill Dark Inquisitor Xanesh##160229 |goto Ny'alotha, the Waking City/6 53.30,45.07
Everyone: |grouprole EVERYONE
|tip Coordinate with "Voidwoken" raid members during "Void Ritual" to remove "Void Orbs." |grouprole EVERYONE
|tip Only "Voidwoken" raid members should interact with "Void Orbs." |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Move away from your soul to minimize damage from "Soul Flay." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Move away from your soul to minimize damage from "Soul Flay." |grouprole HEALER
|tip "Anguish" will cause damage to all raid members throughout the encounter. |grouprole HEALER
Tank: |grouprole TANK
|tip Position Xanesh optimally so raid members can participate in "Void Ritual." |grouprole TANK
|tip Be prepared for significant damage from "Abyssal Strike." |grouprole TANK
|confirm
step
kill Ka'zir##157253 |goto Ny'alotha, the Waking City/4 50.31,53.54
Damage: |grouprole DAMAGE
|tip Defeat Aqir Darters quickly. |grouprole DAMAGE
|tip Avoid standing near allies during "Echoing Void." |grouprole DAMAGE
|tip Interrupt Ka'zir's "Mind-Numbing Nova." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip "Echoing Void" causes significant damage to all raid members. |grouprole HEALER
|tip Aqir Darters deal damage to any players afflicted with "Psionic Resonance." |grouprole HEALER
|tip Aqir Drones attack random raid members. |grouprole HEALER
Tank: |grouprole TANK
|tip During "Tek'ris's Hivemind Control," keep Tek'ris and Ka'zir less than 20 yards apart. |grouprole TANK
|tip During "Ka'zir's Hivemind Control," keep Tek'ris and Ka'zir more than 20 yards apart. |grouprole TANK
|tip Aqir Drones cannot be tanked. |grouprole TANK
|tip Interrupt Ka'zir's "Mind-Numbing Nova." |grouprole TANK
|confirm
step
kill Shad'har the Insatiable##157231 |goto Ny'alotha, the Waking City/2 52.82,74.50
Everyone: |grouprole EVERYONE
|tip Avoid being hit by Shad'har's breath attack. |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Use damage reduction cooldowns during "Debilitating Spit." |grouprole DAMAGE
|tip If targeted by "Living Miasma," move way from other players. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip "Debilitating Spit" will inflict high initial damage and spread through the raid. |grouprole HEALER
|tip Focus extra healing on the tanks during "Frenzy." |grouprole HEALER
Tank: |grouprole TANK
|tip Swap so that neither you or your offtank have "Crush" and "Dissolve" at the same time. |grouprole TANK
|tip Prepare for increased damage during "Frenzy." |grouprole TANK
|confirm
step
_Congratulations!_
You Completed the "Ny'alotha, the Waking City - Halls of Devotion" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Gift of Flesh",{
mapid=1580,
achieveid={14195},
patch='80300',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="To complete Ny'alotha, the Waking City - Gift of Flesh, you will need to kill the following bosses:\n\n"..
"Drest'agath\nVexiona\nRa-den the Despoiled",
},[[
step
Enter Ny'alotha, the Waking City |goto Ny'alotha, the Waking City 0.00,0.00 |c
step
kill Drest'agath##157602 |goto Ny'alotha, the Waking City/1 32.42,56.91
Everyone: |grouprole EVERYONE
|tip "Void Glare," "Seismic Crash," and "Mutterings of Insanity" increase in power based on how many are active. |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Dying tentacles will leave pools behind. |grouprole DAMAGE
|tip Step into the pools to become coated in "Void Infused Ichor," preventing your damage from being regenerated. |grouprole DAMAGE
|tip Destroying tentacles can cause "Throes of Agony," inflicting damage over ten seconds. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Allies inside an "Obscuring Cloud" will be out of line of sight. |grouprole HEALER
|tip "Throes of Agony" will cause heavy raid-wide damage. |grouprole HEALER
Tank: |grouprole TANK
|tip Stay in range of Drest'agath at all times. |grouprole TANK
|tip Exploding "Volatile Seeds" afflict appendages with "Volatile Corruption." |grouprole TANK
|confirm
step
kill Vexiona##157354 |goto Ny'alotha, the Waking City/7 32.89,50.79
Damage: |grouprole DAMAGE
|tip When Void Ascendants die, pick up "Gifts of the Void" to remove "Void Corruption" and use "Annihilation" on Cultists. |grouprole DAMAGE
|tip Assist the tanks by damaging and crowd-controlling Cultists. |grouprole DAMAGE
|tip Move away from allies when afflicted by "Encroaching Shadows." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Heal tanks as high as you can during "Despair." |grouprole HEALER
|tip Players with high stacks of "Void Corruption" or being targeted by "Annihilation" will take severe damage. |grouprole HEALER
|tip Move away from allies when afflicted by "Encroaching Shadows." |grouprole HEALER
Tank: |grouprole TANK
|tip When Void Ascendants die, pick up "Gifts of the Void" to remove "Void Corruption." |grouprole TANK
|tip Face Vexiona away from the raid. |grouprole TANK
|tip "Despair" inflicts damage to the entire raid based upon your missing health. |grouprole TANK
|confirm
step
kill Ra-den##156866 |goto Ny'alotha, the Waking City/5 63.97,67.98
Damage: |grouprole DAMAGE
|tip Stay spread out to avoid extra damage from "Chain Lightning." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Stay spread out to avoid extra damage from "Chain Lightning." |grouprole HEALER
|tip Provide extra healing for players affected by "Unleashed Void." |grouprole HEALER
Tank: |grouprole TANK
|tip Ra-den will use "Decaying Strike" at 100 energy. |grouprole TANK
|confirm
step
_Congratulations!_
You Completed the "Ny'alotha, the Waking City - Gift of Flesh" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - The Waking Dream",{
mapid=1580,
achieveid={14196},
patch='80300',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"lfr"},
author="support@zygorguides.com",
description="To complete Ny'alotha, the Waking City - The Waking Dream, you will need to kill the following bosses:\n\n"..
"Il'gynoth, Corruption Reborn\nCarapace of N'zoth\nN'Zoth the Corruptor",
},[[
step
Enter Ny'alotha, the Waking City |goto Ny'alotha, the Waking City 0.00,0.00 |c
step
kill Il'gynoth##158328 |goto Ny'alotha, the Waking City/0 48.90,31.18
Damage: |grouprole DAMAGE
|tip Interrupt "Pumping Blood" when Organs of Corruption cast it. |grouprole DAMAGE
|tip When your raid's health is topped off, defeat Bloods of Ny'alotha. |grouprole DAMAGE
|tip When allies are afflicted with "Touch of the Corruptor," reduce them below 30% health. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Run away from allies afflicted with "Touch of the Corruptor." |grouprole HEALER
|tip The raid will take heavy damage during "Cursed Blood." |grouprole HEALER
|tip The tank will need a cooldown or heavy healing if afflicted with too many stacks of "Eye of N'zoth." |grouprole HEALER
Tank: |grouprole TANK
|tip Face Il'gynoth away from the raid. |grouprole TANK
|tip Interrupt "Pumping Blood" when Organs of Corruption cast it. |grouprole TANK
|tip When your raid's health is topped off, defeat Bloods of Ny'alotha. |grouprole TANK
|confirm
step
kill Fury of N'zoth##157439 |goto Ny'alotha, the Waking City/3 48.12,66.73
Everyone: |grouprole EVERYONE
|tip Avoid standing near allies if afflicted by "Madness Bomb" or "Insanity Bomb." |grouprole EVERYONE
|tip Use "Ashjirakamas Shroud of Resolve" during stage 1 and 2 to recover Sanity. |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Burn through "Adaptive Membrane" shields quickly. |grouprole DAMAGE
Healer: |grouprole HEALER
|tip The raid will suffer heavy damage and sanity loss during "Eternal Darkness" and "Infinite Darkness." |grouprole HEALER
Tank: |grouprole TANK
|tip Monitor stacks of "Black Scar" and swap with your offtank when necessary. |grouprole TANK
|tip "Adaptive Membrane" targets are immune to CC and interrupts. |grouprole TANK
|confirm
step
kill N'Zoth the Corruptor##158041 |goto 47.80,25.29
Everyone: |grouprole EVERYONE
|tip Use "Azeroth's Radiance" intelligently to maintain sanity during N'Zoth's assault. |grouprole EVERYONE
|tip Ensure that "Mindgrasp" doesn't pull you into a "Veil of Anguish." |grouprole EVERYONE
Damage: |grouprole DAMAGE
|tip Stay spread out to ensure players afflicted with "Paranoia" can reach each other safely. |grouprole DAMAGE
|tip Focus damage on Psychus when affected by "Synaptic Shock." |grouprole DAMAGE
Healer: |grouprole HEALER
|tip Stay spread out to ensure players afflicted with "Paranoia" can reach each other safely. |grouprole HEALER
|tip Dispel "Corrupted Mind" as quickly as possible. |grouprole HEALER
Tank: |grouprole TANK
|tip Move Psychus around to control placement of "Creeping Anguish." |grouprole TANK
|tip Tank Basher Tentacles at all times. |grouprole TANK
|confirm
step
_Congratulations!_
You Completed the "Ny'alotha, the Waking City - The Waking Dream" Raid.
]])
