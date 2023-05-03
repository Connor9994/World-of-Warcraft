local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Kings' Rest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\The MOTHERLODE!!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Operation: Mechagon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Shrine of the Storm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Siege of Boralus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Temple of Sethraliss")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Tol Dagor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\The Underrot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Dungeons\\Waycrest Manor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Halls of Containment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Crimson Descent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Heart of Corruption")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Siege of Dazar'alor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Empire's Fall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Battle of Dazar'alor - Might of the Alliance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Crucible of Storms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\The Eternal Palace - The Grand Reception")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\The Eternal Palace - Depths of the Devoted")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\The Eternal Palace - The Circle of Stars")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Vision of Destiny")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Halls of Devotion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Gift of Flesh")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - The Waking Dream")
