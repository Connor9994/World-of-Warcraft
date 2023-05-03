local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Defiler's End",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Defiler's End title.",
},[[
step
This title is a reward for defeating Archimonde on _Mythic_ difficulty
Click here to load our "Hellfire Citadel - Mythic" raid guide |confirm |next "Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Mythic"
|tip Archimonde is the last boss in the Hellfire Citadel raid instance.
kill Archimonde##91331 |achieve 10043
step
Congratulations!
You have earned the _Defiler's End_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Dockmaster",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: Iron Docks
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Empire's Twilight",{
description="\nThis guide will assist you in achieving the Empire's Twilight title.",
},[[
step
This title is gained by defeating Imperator Mar'gok on Mythic difficulty
Enter the Highmaul raid on _Mythic_ difficulty
kill Imperator Mar'gok##87818
achieve 8965
step
Congratulations, you now have the _Empire's Twilight_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Grimrail Suplexer",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: Grimrail Depot
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\The Indomitable",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Warlord: Bronze
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Ironbane",{
description="\nThis guide will assist you in achieving the Ironbane title.",
},[[
step
This title is gained by defeating Warlord Blackhand on Mythic difficulty
Enter the Blackrock Foundry raid on _Mythic_ difficulty
kill Blackhand##87420
achieve 8973
step
Congratulations, you now have the _Ironbane_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Lord/Lady of Blackrock",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: Upper Blackrock Spire
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\The Mine Master",{
description="\nThis title is no longer obtainable! It was gained by earning a realm-best time for the Bloodmaul Slag Mines dungeon in Challenge Mode.",
},[[
step
This title is _no longer obtainable_!
|tip This title was gained by earning a realm-best time for the Bloodmaul Slag Mines dungeon in Challenge Mode.
Earn the _The Mine Master_ title |achieve 9620
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Savage Hero",{
description="\nThis guide will assist you in achieving the Savage Hero title.",
},[[
step
This achievement can only be obtained by killing the last bosses in all wod dungeons and the last bosses in the raid instances Highmaul and Blackrock Foundry
|tip These bosses must be killed on heroic difficulty or higher.
confirm
step
kill Gug'rokk##86224
_Tank_:
|tip Interrupt Molten Blast.
|tip Move the boss after he casts Magma Eruption.
_DPS_:
|tip Interrupt Molten Blast.
|tip Kill Unstable Slag Elementals before they reach their kiln.
_Healer_:
|tip Unstable Slag Elementals will deal AoE damage to the party through Unleashed Flames.
_Heroic Difficulty_: |only if heroic_dung()
|tip Gug'rokk gains Flame Buffet, dealing damage to all players and increasing fire damage taken. Stacks. |only if heroic_dung()
achieve 9619/1 |goto Bloodmaul Slag Mines/1 65.4,22.7
step
kill Skulloc##86233
_Tank_:
|tip Face Koramar away from the group.
_DPS_:
|tip Kill both Zoggosh and Koramar to minimize damage to the group.
_Healer_:
|tip Be sure to look out for the tank, Skulloc has high hitting auto attack damage.
_All Roles_:
|tip Take cover behind crates during Cannon Barrage, moving foreward between shots.
|tip Avoid the rear of the ship during Cannon Barrage. Backdraft will kill you.
|tip Avoid standing between Zoggosh and his Rapid Fire target.
achieve 9619/2 |goto Iron Docks/1 68.4,43.6
step
kill Teron'gor##86220
_Tank_:
|tip Move the boss out of Rain of Fire.
|tip Face the boss away from the group.
_DPS_:
|tip Focus the boss at all times.
_Healer_:
|tip Watch players that have the debuff Corruption this will deal a large amount of damage for a short time.
|tip Be sure to watch for the high damage abilities in phase two, Seed of Malevolence and Doom are two examples.
_Phase 1:_
|tip Interrupt Drain Life.
|tip Avoid standing in Rain of Fire.
_Heroic Difficulty_: |only if heroic_dung()
|tip Run away when the Felborne Abyssal fixates on you. |only if heroic_dung()
|tip If there is a druid in the group the infernal is able to be entangled the entire fight. |only if heroic_dung()
_Phase 2:_
|tip When he enters phase two he devours one of three of the ancient souls, this means he can have 3 different set of abilities.
|tip Interrupt Drain Life and Chaos Bolt.
|tip Dispel Curse of Exhaustion whenever possible.
|tip There are several possible targeted and AoE effects possible for this phase. All are relatively easy to avoid.
achieve 9619/3 |goto Auchindoun/1 49.6,33.5
step
kill High Sage Viryx##86241
_Tank_:
|tip Tank the boss close to the entrance, this is where the Shield Constructs spawn.
_DPS_:
|tip Burn down Zealots quickly before they can drop allies off the side.
|tip Kill Shield Constructs.
|tip Move out of Lens Flare and lead it away from the party.
_Healer_:
|tip Move out of Lens Flare and lead it away from the party.
_All Roles_:
|tip Interrupt Solar Burst.
|tip The Shield Construct casts a buff on the boss that makes him immune to damage this can be interupted or stunned.
|tip The Zealots can be stunned and slowed.
achieve 9619/4 |goto Skyreach/2 51.1,27.4
step
kill Skylord Tovra##86228
_Tank_:
|tip Reposition Tovra frequently to avoid Freezing Snare and Diffused Energy.
_DPS_:
|tip Avoid Spinning Spear and Freezing Snare.
_Healer_:
|tip Players standing in Diffused Energy will take damage that increases very quickly.
_All Roles_:
|tip Don't stand in any traps or in Diffused Energy.
_Heroic Difficulty_: |only if heroic_dung()
|tip Random players will be marked with Hunter's Mark. Move away from them. |only if heroic_dung()
achieve 9619/5 |goto Grimrail Depot/4 8.6,51.0
step
kill Ner'zhul##76268
_Tank_:
|tip Face the boss away from the raid, and dont stand in Malevolence.
_DPS_:
|tip Focus dps on boss until skeletons come out then focus all dps on killing one skeleton.
_Healer_:
|tip Watch players that stand to close to Omen of Death they will take a lot of damage.
_All Roles_:
|tip During Ritual of Bones, focus dps on a single skeleton to break a safe zone in the chain.
|tip When Ritual of Bones is active don't stand in the purple area created by the skeletons.
|tip Everyone should move away from Omen of Death quickly to avoid taking too much damage from close proximity.
achieve 9619/6 |goto Shadowmoon Burial Grounds/3 48.1,47.1
step
kill Yalnu##86248
_Tank_:
|tip Pick up adds from Font of Life.
|tip When tanking adds try to place them in Flamestrike which is a spell casted by the friendly npcs.
|tip Face adds away for the group.
_DPS_:
|tip Destroy Entanglement and kill enemies spawned by Font of Life.
|tip Avoid standing in front of adds.
_Healer_:
|tip Save group heals for Colossal Blow. The entire group will take heavy damage.
|tip Avoid standing in front of adds.
_All Roles_:
|tip Step on Sprouting Lashers to Trample them during Genesis.
achieve 9619/7 |goto The Everbloom/2 45.0,72.0
step
kill Warlord Zaela##77120
_Tank_:
|tip Position yourself so the knockback from Destructive Smite will not knock you off the platform.
_DPS_:
|tip Focus the boss whenver she is out.
|tip Kill the 3 adds that come out as soon as possible.
_Healer_:
|tip Watch out for people standing in the Proto-Drakes breath, they will take a large amount of damage.
_All Roles_:
|tip Zaela will fixate a random target with Black Iron Cyclone. Avoid leading this through the group when you run away.
|tip Zaela will throw a blade occasionally at a target. Stay spread out to avoid this blade jumping to another party member.
|tip Throughout the fight, Proto-Drakes will lay down lines of Burning Breath. Move out of the path.
_Heroic Difficulty_: |only if heroic_dung()
|tip Zaela gains_Destructive Smite, dealing massive damage to the current target and knocking them back. |only if heroic_dung()
achieve 9619/8 |goto Upper Blackrock Spire 2/3 14.4,47.7
step
kill Imperator Mar'gok##77428
Tanks: |only if grouprole("TANK")
|tip Run at least 35 yards way from the raid when affected by Mark of Chaos. The offtank should taunt Mar'gok. If you are rooted with Mark of Chaos, call it out so the raid can run away. |only if grouprole("TANK")
|tip Tank swap about halfway through Mark of Chaos casts. |only if grouprole("TANK")
|tip The offtank should taunt Arcane Aberrations into melee range to be killed. |only if grouprole("TANK")
|tip During the first intermission, tank the Volatile Anomalies away from the Warmages. |only if grouprole("TANK")
|tip During the second intermission, tank swap the Reaver after Crush Armor/Kick to the Face. |only if grouprole("TANK")
|tip During the last phase, avoid running through Orbs of Chaos and pick up Arcane Remnants. |only if grouprole("TANK")
DPS: |only if grouprole("DAMAGER")
|tip Kill Arcane Aberrations quickly. |only if grouprole("DAMAGER")
|tip Avoid coming in contact with Destructive Resonance. |only if grouprole("DAMAGER")
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |only if grouprole("DAMAGER")
|tip Move forward through Force Nova to reduce damage taken. |only if grouprole("DAMAGER")
|tip During intermissions, ranged DPS should kill the Gorian Reaver and Volatile Anomalies, while melee DPS should kill Gorian Warmages. |only if grouprole("DAMAGER")
|tip Interrupt the Warmages' Nether Blast. |only if grouprole("DAMAGER")
Healers: |only if grouprole("HEALER")
|tip Tanks and players affected by Arcane Wrath or Fixated will need strong single-target healing. |only if grouprole("HEALER")
|tip Raid healing is required to deal with Force Nova and Destabilize from Volatile Anomalies. |only if grouprole("HEALER")
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |only if grouprole("HEALER")
All Roles:
|tip Avoid Orbs of Chaos.
|tip Use Heroism/Bloodlust/Time Warp during the second intermission when the Gorian Reaver is picked up.
achieve 9619/9 |goto Highmaul/6 45.3,75.0
step
kill 1 Blackhand##77325
Tanks: |only if grouprole("TANK")
|tip The offtank should stay behind Blackhand to avoid being hit with Shattering Smash. Taunt immediately follow this ability. |only if grouprole("TANK")
|tip During Phase 1, move Blackhand in a circle around the edge of the room. |only if grouprole("TANK")
|tip During Phase 2, tank Blackhand near the center of the room. |only if grouprole("TANK")
|tip If you are Slagged, use a cooldown for Shattering Smash. |only if grouprole("TANK")
|tip In Phase 3, tank Blackhand near the edge of the platform. At 100 energy, turn him towards the center of the platform for Massive Shattering Smash. |only if grouprole("TANK")
|tip During Phase 3, tank swap whenever affected by Throw Slag Bombs. |only if grouprole("TANK")
DPS: |only if grouprole("DAMAGER")
|tip Avoid taking Shattering Smash damage. |only if grouprole("DAMAGER")
|tip Melee DPS should stand in Shattering Smash during Phase 2 to be thrown onto the balcony. Kill adds while you are up there. |only if grouprole("DAMAGER")
|tip In Phase 2, kite the Siegemaker away from group members if Fixated. Try to run it over Slag Bombs. |only if grouprole("DAMAGER")
|tip During Phase 3, run away from the raid to drop Slag Bombs if targeted by Attach Slag Bombs. |only if grouprole("DAMAGER")
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |only if grouprole("DAMAGER")
Healers: |only if grouprole("HEALER")
|tip Players who are Impaled will take massive damage over time. |only if grouprole("HEALER")
|tip Slagged players may potentially take fatal damage. |only if grouprole("HEALER")
|tip Shattering Smash will deal heavy damage to the current tank. |only if grouprole("HEALER")
|tip During Phase 1, use cooldowns for Demolition. |only if grouprole("HEALER")
|tip During Phase 2, use cooldowns when approaching Phase 3. |only if grouprole("HEALER")
|tip In Phase 2, kite the Siegemaker away from group members if Fixated. Try to run it over Slag Bombs. |only if grouprole("HEALER")
|tip During Phase 3, use cooldowns for Massive Shattering Smash. |only if grouprole("HEALER")
|tip During Phase 3, run away from the raid to drop Slag Bombs if targeted by Attach Slag Bombs. |only if grouprole("HEALER")
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |only if grouprole("HEALER")
All Roles:
|tip If targeted by Marked for Death, LoS it behind a Debris Pile in Phase 1. In Phase 2, LoS it behind a Siegemaker.
|tip During Phase 2, avoid being hit with the Siegemaker's Battering Ram.
|tip Avoid triggering Slag Bombs. You will take massive fire damage and become Slagged, taking 100% increased damage.
|tip During Phase 3, move away from Slag Craters.
|tip Use Heroism/Bloodlust/Time Warp after everyone is in position in Phase 3
achieve 9619/10 |goto Blackrock Foundry/5 48.8,34.4
step
Congratualtions on completing the _Savage Hero_ Title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Scion of Rukhmar",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: Skyreach
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Soul Preserver",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: Skyreach
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Spiritwalker",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: Shadowmoon Burial Grounds
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Dungeons & Raids\\Violet Guardian",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Challenge Master: The Everbloom
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Architect",{
description="\nThis guide will assist you in achieving the Architect title.",
},[[
step
This title is gained by completing other Garrison achievements:
achieve 9094/1
achieve 9094/3
achieve 9094/2
achieve 9094/4
achieve 9094/5
Above are achievements you may have already completed in order to earn this title
confirm |complete achieved(9094)
step
#include "Garrison_ArchitectTable"
_Upgrade_ your Great Hall to level 3 |complete garrisonlvl(3)
|tip Use the Garrison Leveling Guide to accomplish this.
step
Learn 20 Garrison blueprints
achieve 9094/1
|tip Use the Garrison Buildings guides to unlock buildings and their blueprints to accomplish this.
step
Learn 40 Garrison blueprints
achieve 9094/3
|tip Use the Garrison Buildings guides to unlock buildings and their blueprints to accomplish this.
step
Learn 60 Garrison blueprints
achieve 9094/2
|tip Use the Garrison Buildings guides to unlock buildings and their blueprints to accomplish this.
step
Upgrade all buildings in each plot to Level 3
achieve 9094/5
|tip Use the Garrison Buildings guides to accomplish this.
step
Build all of the default buildings
achieve 9094/4
|tip Use the Garrison Buildings guides to accomplish this.
step
Congratulations, you now have the _Architect_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Captain",{
description="\nThis guide will assist you in achieving the Captain title.",
},[[
step
To get this title you must complete the achievement Master of the Seas
|tip to complete this achievement you must complete 5 other achievements.
achieve 10154
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10163
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10155
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10160
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10036
|tip To find out how to complete this achievement look at our achievement guides.
step
After completing these 5 achievement you will receive the achievement "Master of the Seas"
achieve 10164
|tip This achievement rewards the title "Captain".
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Draenei Destroyer",{
description="\nThis guide will assist you in achieving the Draenei Destroyer title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Draenei Destroyer##36930
step
Kill Draenei players in PvP across Draenor
Draenei Players slain |q 36930/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Draenei Destroyer##36930
step
label "info"
This title is gained by completing the Nemesis: Draenei Destroyer quest from the Gladiator's Sanctum
step
achieve 9509
step
Congratulations, you now have the _Draenei Destroyer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Dwarfstalker",{
description="\nThis guide will assist you in achieving the Dwarfstalker title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Dwarfstalker##36924
step
Kill Dwarf players in PvP across Draenor
Dwarf Players killed |q 36924/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Dwarfstalker##36924
step
label "info"
This title is gained by completing the Nemesis: Dwarfstalker quest from the Gladiator's Sanctum
step
achieve 9510
step
Congratulations, you now have the _Dwarfstalker_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Gnomebane",{
description="\nThis guide will assist you in achieving the Gnomebane title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Gnomebane##36926
step
Kill Gnome players in PvP across Draenor
Gnome Players killed |q 36926/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Gnomebane##36926
step
label "info"
This title is gained by completing the Nemesis: Gnomebane quest from the Gladiator's Sanctum
step
achieve 9511
step
Congratulations, you now have the _Gnomebane_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Lord/Lady of War",{
description="\nThis guide will assist you in achieving the Lord/Lady of War title.",
},[[
step
You must have a level 3 garrison and a level 3 Gladiator Sactum
|tip Use the Garrison building guides to accomplish this.
confirm |only if not hasbuilding(161)
step
#include "Garrison_Medium_Building", action="talk Gharg##87247", building="GladiatorSactum"
accept Call of the Gladiator##37082 |goto Frostwall 56.5,10.0 |only if Horde
accept Call of the Gladiator##37082 |goto Lunarfall 58.6,81.2 |only if Alliance
step
talk Kharg##87311
turnin Call of the Gladiator##37082 |goto Nagrand D 33.1,38.5
step
talk Kharg##87311
accept Fight, Kill, Salute!##37083 |goto Nagrand D 33.1,38.5
step
Queue for the Highmaul Collseum
|tip You can do this by talking to Kharg, tell him "I wish to battle in the Collseum!"
|tip To queue for the Collseum you need to have 100 bones.
|tip Bones are received by kill players in pvp combat.
Enter the Highmaul Collseum when the queue pops
confirm
step
To get this achievement you need to be the last standing survivor.
|tip If you are the last surivivor there will also be a chest with rewards inside, including a toy.
|achieve 9725
step
talk Kharg##87311
turnin Fight, Kill, Salute!##37083 |goto Nagrand D 33.1,38.5
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Lumberjack",{
description="\nThis guide will assist you in achieving the Lumberjack title.",
},[[
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
achieve 9077
|tip The title and achievement are account wide.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Manslayer",{
description="\nThis guide will assist you in achieving the Manslayer title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Manslayer##36921
step
Kill Human players in PvP across Draenor
Human Players killed |q 36921/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Manslayer##36921
step
label "info"
This title is gained by completing the Nemesis: Manslayer quest from the Gladiator's Sanctum
step
achieve 9512
step
Congratulations, you now have the _Manslayer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Scourge of the Kaldorei",{
description="\nThis guide will assist you in achieving the Scourge of the Kaldorei title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Scourge of the Kaldorei##36932
step
Kill Night Elf players in PvP across Draenor
Night Elf Players killed |q 36932/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Scourge of the Kaldorei##36932
step
label "info"
This title is gained by completing the Nemesis: Scourge of the Kaldorei quest from the Gladiator's Sanctum
step
achieve 9513
step
Congratulations, you now have the _Scourge of the Kaldorei_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Stable Master",{
description="\nThis guide will assist you in achieving the Stable Master title.",
},[[
step
Routing to Title |next "menu" |only if hasbuilding(67,3)
Routing to End |next "end" |only if default
step
label "menu"
This title is gained by defeating all mount-in-training targets while carrying the Garn-Tooth Necklace
|tip It is found on the ground of your Level 3 Stables.
Complete mount-in-training quests from the Stables with the Garn-Tooth Necklace:
_Click_ a section below to complete the achievement:
Maimclaw |achieve 9706/1 |confirm |next "maimclaw"
Beast-Lasher |achieve 9706/2 |confirm |next "beastlasher"
Moth of Wrath |achieve 9706/3 |confirm |next "moth"
Thundercall |achieve 9706/4 |confirm |next "thundercall"
Ironbore |achieve 9706/5 |confirm |next "ironbore"
Karak |achieve 9706/6 |confirm |next "karak"
|next "achieve"
step
label "maimclaw"
kill 1 Maimclaw##87174 |goto Nagrand D/0 63.8,80.8
|tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
achieve 9706/1
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "beastlasher"
kill 1 Gorian Beast-Lasher##87095 |goto Nagrand D/0 79.1,71.7
|tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
achieve 9706/2
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "moth"
kill 1 Moth of Wrath##87089 |goto Nagrand D 43.6,69.6
|tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
achieve 9706/3
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "thundercall"
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10 |only if walking
_Continue_ up |goto 85.0,34.8 < 10 |only if walking
_Take the left_ path |goto 86.4,37.0 < 10 |only if walking
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10 |only if walking
Head _along the side of the mountain_ |goto 89.0,30.3 < 10 |only if walking
kill 1 Thundercall##87102 |goto Nagrand D 90.6,23.6
|tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
achieve 9706/4
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "ironbore"
kill 1 Ironbore##87090 |goto Nagrand D/0 53.2,77.6
|tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
achieve 9706/5
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "karak"
kill 1 Karak the Great Hunter##87105 |goto Nagrand D/0 69.6,34.6
|tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
achieve 9706/6
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "achieve"
achieve 9706
step
label "end"
Congratulations, you now have the _Stable Master_ title! |only if achieved(9706)
You must have a level 3 Stables to gain this title! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Terror of the Tushui",{
description="\nThis guide will assist you in achieving the Terror of the Tushui title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Terror of the Tushui##36934
step
Kill Pandaren players in PvP across Draenor
Pandaren Players killed |q 36934/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Terror of the Tushui##36934
step
label "info"
This title is gained by completing the Nemesis: Terror of the Tushui quest from the Gladiator's Sanctum
step
achieve 9514
step
Congratulations, you now have the _Terror of the Tushui_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Timber Lord",{
description="\nThis guide will assist you in achieving the Timber Lord title.",
},[[
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
achieve 9080
|tip The title and achievement are account wide.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Warlord of Draenor",{
description="\nThis guide will assist you in achieving the Warlord of Draenor title.",
},[[
step
This title is gained by completing all of the Nemesis quests from your Gladiator's Sanctum:
You also must complete the quest Fight, Kill, Salute! at the Highmaul Colliseum
achieve 9508/1
achieve 9508/2
achieve 9508/3
achieve 9508/4
achieve 9508/5
achieve 9508/6
achieve 9508/7
Click here to complete the Fight, Kill, Salute! quest |confirm |next "quest" |only if not completedq(37083)
step
label "quest"
This quest is only available if you have upgraded your Gladiator's Sanctum to Level 3
talk Gharg##87247
accept Call of the Gladiator##37082 |goto Frostwall 55.6,14.2
step
talk Kharg##87311
turnin Call of the Gladiator##37082 |goto Nagrand D/0 33.0,38.6
accept Fight, Kill, Salute!##37083 |goto Nagrand D/0 33.0,38.6
step
talk Kharg##87311
Enter the Coliseum |goto Nagrand D/0 33.0,38.6
Kill players in the Coliseum
|tip You can enter for free once per day.
Gladiators Slain |q 37083/1
step
talk Kharg##87311
turnin Fight, Kill, Salute!##37083 |goto Nagrand D/0 33.0,38.6
step
achieve 9508
step
Congratulations, you now have the _Warlord of Draenor_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Garrisons\\Worgen Hunter",{
description="\nThis guide will assist you in achieving the Worgen Hunter title.",
},[[
stickystart "info"
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
accept Nemesis: Worgen Hunter##36928
step
Kill Worgen players in PvP across Draenor
Worgen Players killed |q 36928/1
step
#include "Garrison_Medium_Building"
talk Raza'kul##86629
turnin Nemesis: Worgen Hunter##36928
step
label "info"
This title is gained by completing the Nemesis: Worgen Hunter quest from the Gladiator's Sanctum
step
achieve 9515
step
Congratulations, you now have the _Worgen Hunter_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\General\\Field Photographer",{
achieveid={9924},
patch='60100',
description="\nThis guide will walk you through obtaining the Field Photographer title.",
},[[
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Moonglade |achieve 9924/29 |goto Moonglade/0 32.2,66.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Nordrassil |achieve 9924/17 |goto Mount Hyjal/0 62.2,21.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Orgrimmar |achieve 9924/43 |goto Orgrimmar/1 49.6,59.0
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Echo Isles |achieve 9924/35 |goto Echo Isles/0 38.6,46.5
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Onyxia's Lair |achieve 9924/1 |goto Dustwallow Marsh/0 52.88,77.34
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in The Shaper's Terrace |achieve 9924/21 |goto Un'Goro Crater/0 48.2,8.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Caverns of Time |achieve 9924/31 |goto Tanaris/0 64.1,50.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Halls of Origination |achieve 9924/42 |goto Uldum/0 72.05,52.17
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Scarab Dais |achieve 9924/33 |goto 33.3,81.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at The Twin Colossals |achieve 9924/27 |goto Feralas/0 46.4,16.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Light's Hope Chapel |achieve 9924/18 |goto Eastern Plaguelands/0 75.3,52.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Hearthglen |achieve 9924/9 |goto Western Plaguelands/0 44.7,16.9
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Uther's Tomb |achieve 9924/36 |goto Western Plaguelands/0 52.1,83.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Ravenholdt Manor |achieve 9924/34 |goto Hillsbrad Foothills/0 71.0,45.0
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Thandol Span |achieve 9924/10 |goto Wetlands/0 50.9,8.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Valley of Kings |achieve 9924/24 |goto Loch Modan/0 21.1,76.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Blackrock Mountain |achieve 9924/32 |goto Searing Gorge/0 34.8,84.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Deeprun Tram |achieve 9924/8 |goto Deeprun Tram/1 42.5,13.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Westfall Lighthouse |achieve 9924/25 |goto Westfall/0 29.9,85.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in The Deadmines |achieve 9924/13 |goto The Deadmines/1 26.5,13.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Darkshire |achieve 9924/20 |goto Duskwood/0 74.7,46.9
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Karazhan |achieve 9924/11 |goto Karazhan/1 58.8,76.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at The Dark Portal |achieve 9924/3 |goto Blasted Lands/0 54.6,50.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Battle Ring, Gurubashi Arena |achieve 9924/12 |goto The Cape of Stranglethorn/0 46.5,26.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Janeiro's Point |achieve 9924/5 |goto The Cape of Stranglethorn/0 35.7,63.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Throne of Kil'jaeden |achieve 9924/38 |goto Hellfire Peninsula/0 63.3,16.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Stormspire |achieve 9924/30 |goto Netherstorm/0 45.1,36.0
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Throne of the Elements |achieve 9924/26 |goto Nagrand/0 60.7,22.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Shattrath City |achieve 9924/16 |goto Shattrath City/0 60.1,40.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Dalaran |achieve 9924/4 |goto Dalaran/1 49.0,48.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
|tip You must fight through the Icecrown Citadel raid in order to access the Lich King's Frozen Throne.
Take a S.E.L.F.I.E. on The Frozen Throne |achieve 9924/2 |goto Icecrown Citadel/7 49.8,52.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Wintergrasp Fortress |achieve 9924/22 |goto Wintergrasp/0 50.0,19.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Wyrmrest Temple |achieve 9924/15 |goto Dragonblight/0 59.8,54.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Naxxramas |achieve 9924/14 |goto Naxxramas/5 54.3,49.7
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Daggercap Bay |achieve 9924/37 |goto Howling Fjord/0 60.1,56.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
|tip You can take this shot anywhere in Vashj'ir.
Take a S.E.L.F.I.E. in Vashj'ir |achieve 9924/23 |goto Vashj'ir/0 60.1,56.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Deathwing's Fall |achieve 9924/19 |goto Deepholm/0 59.5,61.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Turtle Beach |achieve 9924/40 |goto Krasarang Wilds/0 72.3,31.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Sunsong Ranch |achieve 9924/39 |goto Valley of the Four Winds/0 52.2,48.5
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Vale of Eternal Blossoms |achieve 9924/6 |goto Vale of Eternal Blossoms/0 61.7,36.7
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Mount Neverest |achieve 9924/28 |goto Kun-Lai Summit/0 41.0,50.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Auchindoun |achieve 9924/41 |goto Auchindoun/1 49.7,90.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Temple of Karabor |achieve 9924/7 |goto Shadowmoon Valley D/0 71.2,46.6
step
_Congratulations!_
You Earned the "Field Photographer" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\General\\Jenkins",{
description="\nThis guide will assist you in achieving the Jenkins title.",
},[[
stickystart "info"
step
_Note_ the following must be done while in _Heroic Mode_
Fight through the dungeon and kill _Kyrak_
Revive Leeroy Jenkins |goto Upper Blackrock Spire 2/2 38.8,39.0
This will start a _15 minute_ timer, do not wait for the dialogue. Start clearing trash and _kill Commander Tharbek_
Clear all of the trash to the _Son of the Beast_
Kill the Son of the Beast
|tip Do not skin him before Leeroy has a chance to loot his shoulders or you will fail the achievement
achieve 9058
step
label "info"
This title is gained by helping Leeroy Jenkins recover his Devout shoulders in Upper Blackrock Spire on Heroic difficulty
step
Congratulations, you now have the _Jenkins_ title and Leeroy Jenkins is now available as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\General\\Predator",{
description="\nThis guide will assist you in achieving the Predator title.",
},[[
step
Become Exalted with the Order of the Awakened |complete rep('Order of the Awakened') >= Exalted |goto Tanaan Jungle/0 60.4,46.7 |only Horde
Become Exalted with the Order of the Awakened |complete rep('Order of the Awakened') >= Exalted |goto Tanaan Jungle/0 57.8,59.4 |only Alliance
|tip This can be accomplished by completing dailies in Tanaan Jungle.
step
|achieve 10070
|tip Use the Jungle Stalker achievement guide to accomplish this.
step
talk Dawn-Seeker Krisek##95424
buy Hunter's Seeking Crystal##128502 |complete itemcount(128502) > 0 or itemcount(128503) > 0 or achieved(10334) |goto Tanaan Jungle/0 57.8,59.4 |only Alliance
buy Hunter's Seeking Crystal##128502 |complete itemcount(128502) > 0 or itemcount(128503) > 0 or achieved(10334) |goto Tanaan Jungle/0 60.4,46.6 |only Horde
|tip It costs 1,000 Gold.
|tip You must buy this item before buying Master Hunter's Seeking Crystal.
step
talk Dawn-Seeker Krisek##95424
buy Master Hunter's Seeking Crystal##128503 |complete itemcount(128503) > 0 or achieved(10334) |goto Tanaan Jungle/0 57.8,59.4 |only Alliance
buy Master Hunter's Seeking Crystal##128503 |complete itemcount(128503) > 0 or achieved(10334) |goto Tanaan Jungle/0 60.4,46.6 |only Horde
|tip It cossts 5,000 Gold and one Hunter's Seeker Crystal.
step
use Master Hunter's Seeking Crystal##128503
|tip If Xemirkol is up you will be teleported to him, you can try every 15 minutes or try realm hopping.
|tip Xemirkol has a very long respawn timer.
kill Xemirkol##96235
achieve 10334 |goto Tanaan Jungle 69.0,38.2
|tip You will probably need a group to kill this boss.
|tip Face your back towards a wall so you don't get knocked off the edge.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Player versus Player\\Defender of the Horde",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for placing in the top 10% of rated battlegrounds in Warlords of Draenor PvP season 1 ,2, or 3
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Player versus Player\\Guardian of the Horde",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for placing in the top 3% of rated battlegrounds in Warlords of Draenor PvP season 1 ,2, or 3
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Player versus Player\\Primal Gladiator",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for placing in the top 0.1% of arenas in Warlords of Draenor PvP season 1
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Player versus Player\\Soldier of the Horde",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for placing in the top 35% of rated battlegrounds in Warlords of Draenor PvP season 1 ,2, or 3
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Player versus Player\\Warmongering Gladiator",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for placing in the top 0.1% of arenas in Warlords of Draenor PvP season 3
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Player versus Player\\Wild Gladiator",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for placing in the top 0.1% of arenas in Warlords of Draenor PvP season 2
|tip You can no longer earn this title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Professions\\Artisan",{
description="\nThis guide will assist you in achieving the Artisan title.",
},[[
step
This title is gained by reaching skill level 700 in any profession
achieve 9464
step
Congratulations, you now have the _Artisan_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Quests\\Blood Champion",{
description="\nThis guide will assist you in achieving the Blood Champion title.",
},[[
step
Complete "The Champion of Blood" Quest |condition completedq(36222)
|tip This quest is part of a chain of quests and only has a chance of appearing once per week inside your garrison.
|tip This quest chain is part of an achievement called "The Garrison Campaign".
|tip To find out how to complete this quest, refer to our Garrison Campaign guides.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Quests\\of the Jungle",{
description="\nThis guide will assist you in achieving the of the Jungle title.",
},[[
step
To get this title you must complete the achievement Rumble in the Jungle
|tip to complete this achievement you must complete 8 other achievements.
achieve 10074
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10061
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10262
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10069
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10075
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10070
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10260
|tip To find out how to complete this achievement look at our achievement guides.
step
achieve 10071
|tip To find out how to complete this achievement look at our achievement guides.
step
After completeing these 8 achievements you will gain the achievement "Rumble in the Jungle"
achieve 10265
|tip This achievement rewards the title "of the Jungle".
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Reputations\\Conservationist",{
description="\nThis guide will assist you in achieving the Conservationist title.",
},[[
step
This title requires you to be exalted with the Steamwheedle Preservation Society.
|tip This guide will show you how to get exalted to to get this title.
step
label "menu"
You Are _Neutral_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Neutral
You Are _Friendly_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Friendly
You Are _Honored_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Honored
You Are _Revered_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Revered
You Are _Exalted_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Exalted
_Click a line below to_:
Farm Gorian Artifact Fragments |next "farm" |confirm
_
Chest runs for Artifact Fragments and Highmaul Relics |next "loot" |confirm
_
Kill Rares in Nagrand |next "rare" |confirm
step
label "farm"
kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.0,34.1
|tip Turn these in as stacks of 20 for Steamwheedle Preservation Society reputation.
Click to turn in |confirm |next "rare_find"
step
label "loot"
Follow the path, looking at these locations for Highmaul Reliquary chests
map Nagrand D
path follow loose; loop on; ants straight
path	27.8,46.4	35.1,48.6	37.4,42.9
path	49.1,37.6	52.7,33.6	55.2,34.2
path	56.5,38.2	63.1,36.0	64.7,21.6
path	59.0,20.0	57.8,18.6	51.8,26.1
path	49.9,25.7	40.6,25.0	38.8,27.5
click Highmaul Reliquary##237227
collect Gorian Artifact Fragment##118099 |n
collect Highmaul Relic##118100 |n
|tip You turn these in for Steamwheedle Preservation Society reputation.
Click to turn in |confirm
step
label "rare_find"
talk Sallee Silverclamp##87393
|tip Turn in your Highmaul Relics and Gorian Artifact Fragments.
accept A Rare Find##37125 |goto Nagrand D 50.4,41.3 |repeatable |or |only if itemcount(118100) >= 1
accept Fragments of the Past##35147 |goto Nagrand D 50.4,41.3 |repeatable |or |only if itemcount(118099) >= 20
_Click_ to return to the menu |confirm |next "menu"
step
label "rare"
Follow the path:
map Nagrand D
path	30.0,44.8	34.1,51.6	41.7,45.0
path	60.3,38.6	64.4,30.4	62.2,17.5
path	51.2,16.5	48.1,22.0	37.5,38.5
kill Thek'talon##86750,Mu'gra##87666, Xelganak##86835, Dekorhan##86743, Direhoof##86729, Bergruu##86732, Aogexon##86774, Gagrog the Brutal##86771, Vileclaw##88951
_Collect the items that each rare drops_ |only if itemcount(118660) ==0 or itemcount(118660) ==0 or itemcount(118659)==0 or itemcount(118661)==0 or itemcount(118656) ==0 or itemcount(118657)==0 or itemcount(118655)==0 or itemcount(118654)==0 or itemcount(118658)==0 or itemcount(120172)==0
collect Thek'talon's Talon##118660 |n |only if itemcount(118660) >= 1
collect Mu'gra's Head##118659 |n |only if itemcount(118659) >= 1
collect Xelganak's Stinger##118661 |n |only if itemcount(118661) >= 1
collect Dekorhan's Tusk##118656 |n |only if itemcount(118656) >= 1
collect Direhoof's Hide##118657 |n |only if itemcount(118657) >= 1
collect Bergruu's Horn##118655 |n |only if itemcount(118655) >= 1
collect Aogexon's Fang##118654 |n |only if itemcount(118654) >= 1
collect Gagrog's Skull##118658 |n |only if itemcount(118658) >= 1
collect Vileclaw's Claw##120172 |n |only if itemcount(120172) >= 1
|tip You don't have to collect them all.
Click to turn in |confirm
step
talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.3,41.1
|tip Turn in your quest items.
accept Aogexon's Fang##37210 |only if itemcount(118654) >= 1 |or
accept Bergruu's Horn##37211 |or |only if itemcount(118655) >= 1 |or
accept Dekorhan's Tusk##37221 |or |only if itemcount(118656) >= 1 |or
accept Direhoof's Hide##37222 |or |only if itemcount(118657) >= 1 |or
accept Gagrog's Skull##37223 |or |only if itemcount(37223) >= 1 |or
accept Mu'gra's Head##37224 |or |only if itemcount(118659) >= 1 |or
accept Thek'talon's Talon##37225 |or |only if itemcount(118660) >= 1 |or
accept Xelganak's Stinger##37226 |or |only if itemcount(118661) >= 1 |or
accept Vileclaw's Claw##37520 |or |only if itemcount(120172) >= 1 |or
_Click_ to return to the menu |confirm always |next "menu" |only if default
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Reputations\\of the Frostwolves",{
description="\nThis guide will assist you in achieving the of the Frostwolves title.",
},[[
step
To achieve this title you must earn exalted reputation with the Frostwolf Orcs
step
label "info"
Completing quests in Frostfire Ridge, Talador, and in your Garrison will give you rep with this faction
Your current reputation rank is:
_Neutral_ |only if rep('Frostwolf Orcs')==Neutral
_Friendly_ |only if rep('Frostwolf Orcs')==Friendly
_Honored_ |only if rep('Frostwolf Orcs')==Honored
_Revered_ |only if rep('Frostwolf Orcs')==Revered
_Exalted_ |only if rep('Frostwolf Orcs')==Exalted
step
label "menu"
Killing certain mobs in Frostfire Ridge give you Frostwolf Orc rep:
Stonefury Cliffs |next "stone" |confirm
Magnarok |next "magnarok" |confirm
Iron Siegeworks |next "iron" |confirm
step
label "stone"
kill Bloodmaul Brute##77991+, Bloodmaul Magma Shaper##77992+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578
Kill Bloodmaul mobs and their pets found around _Stonefury Cliffs_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 44.6,18.8
Return to the main menu |next "menu" |confirm
step
label "magnarok"
Many mobs in this area are _Elite_
kill Icecrag Mountainbreaker##87346+, Vicious Acidmaw##76905+, Burning Slagmaw##72348+
Kill mobs found in _Magnarok_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 69.7,30.5
Return to the main menu |next "menu" |confirm
step
label "iron"
kill Grom'kar Shocktrooper##77944+, Grom'kar Footsoldier##85997+, Grom'kar Pulverizer##78210+, Grom'kar Warforger##77945+, Grom'kar Enforcer##77940
Kill Grom'kar mobs around _Iron Siegeworks_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 86.1,54.9
Return to the main menu |next "menu" |confirm
step
achieve 9471
After completing this achievement you will be rewarded with the title "of the Frostwolves"
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Reputations\\Masked Chuckler",{
description="\nThis guide will assist you in achieving the Masked Chuckler title.",
},[[
step
This title can only be obtained by gaining exalted reputation with the Laughing Skulls Orcs faction.
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
step
label "menu"
Killing mobs in Gorgrond gives you Laughing Skull Orcs rep:
Your current reputation rank is:
_Neutral_ |only if rep('Laughing Skull Orcs')==Neutral
_Friendly_ |only if rep('Laughing Skull Orcs')==Friendly
_Honored_ |only if rep('Laughing Skull Orcs')==Honored
_Revered_ |only if rep('Laughing Skull Orcs')==Revered
_Exalted_ |only if rep('Laughing Skull Orcs')==Exalted
Select an area below to kill mobs in for reputation
The Pit |next "pit" |confirm
Everbloom Wilds |next "wilds" |confirm
step
label "pit"
kill Iron Cauterizer##85127+, Iron Enforcer##85124+, Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Warden##86499+
Kill mobs around _The Pit_ for Laughing Skill Orcs reputation |goto Gorgrond 48.9,28.9
Return to the main menu |next "menu" |confirm
step
label "wilds"
kill Venomous Ravager##86263+, Everbloom Wasp##86264+, Lumbering Ancient##86262+, Brine Lasher##86267
Kill around _Everbloom Wilds_ for Laughing Skull Orcs reputation |goto Gorgrond 64.2,35.0
Return to the main menu |next "menu" |confirm
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Laughing Skull Orcs reputation!
Click here to proceed to the Garrison building guide |next "Leveling Guides\\Garrison Guide\\Buildings Guide" |confirm
step
achieve 9475
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Reputations\\Spear of Vol'jin",{
description="\nThis guide will assist you in achieving the Spear of Vol'jin title.",
},[[
step
This title requires you to be exalted with the Vol'jin's Spear.
|tip This guide will show you how to get exalted to to get this title.
condition rep("Vol'jin Spear") >= Exalted
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\Reputations\\Talon King/Queen",{
description="\nThis guide will assist you in achieving the Talon King/Queen title.",
},[[
stickystart "info"
step
label "menu"
Completing quests in the Spires of Arak and Talador will give you rep with this faction
Click here to kill mobs for reputation |confirm |next "farm"
Reach Exalted reputation level |next "achieve" |complete rep('Arakkoa Outcasts')==Exalted
step
label "farm"
Killing certain mobs Spires of Arak gives you Arakkoa Outcasts rep:
Skettis |confirm |next "skettis"
Lost Veil Anzu |confirm |next "veil"
step
label "skettis"
kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
Kill mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
Return to the menu |confirm |next "menu"
step
label "veil"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86205+, Highmaul Skullcrusher##89127+
Kill mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
Return to the menu |confirm |next "menu"
step
label "info"
This title is gained by completing the Terokk's Legacy storyline and earning Exalted status with the Arakkoa Outcasts
Your current reputation rank is:
_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
_Honored_ |only if rep('Arakkoa Outcasts')==Honored
_Revered_ |only if rep('Arakkoa Outcasts')==Revered
_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
step
label "achieve"
|achieve 9072
step
Congratulations, you now have the _Talon King_ or _Talon Queen_ title!
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Warlords of Draenor Titles\\World Events\\Southshore Slayer",{
description="\nThis title can no longer be obtained.",
},[[
step
This title was a reward for completing Victory in Hillsbrad
|tip This was a limited-time 10th anniversary battleground.
|tip You can no longer earn this title.
]])
