local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Auchindoun",{
mapid=593,
achieveid={9049},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"Talador, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Auchindoun dungeon.",
},[[
step
Press _I_ and queue for Auchindoun or enter the dungeon with your group |goto Auchindoun/1 49.7,90.2 < 100 |c
stickystart "Sever"
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
Follow the path |goto Auchindoun/1 27.4,40.2 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Vigilant Kaathar##86217
_TANK:_ |only if grouprole("TANK")
|tip Try to keep Kaathar a short distance away from his shield |only if grouprole("TANK")
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Keep moving don't get hit by Hallowed Ground or Sanctified Strike. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Look out for people standing in Hallowed Ground. |only if grouprole("HEALER")
_EVERYONE:_ |only if grouprole("EVERYONE")
|tip Stay out of patches of holy energy on the ground. |only if grouprole("EVERYONE")
|tip During Consecrated Light, everyone needs to hide behind the shield. |only if grouprole("EVERYONE")
_Heroic Difficulty_: |only if heroic_dung()
|tip He will now cast Fate, instantly blowing up all Hallowed Ground patches immediately. |only if heroic_dung()
Defeat Vigilant Kaathar |scenariogoal 25102 |goto Auchindoun/1 28.9,33.6
step
click Soulweave Vessel##237465
collect the Soulweave Vessel##118620 |q 37233/1 |goto Auchindoun/1 24.4,32.4 |only if haveq(37233)
collect the Soulweave Vessel##118620 |q 37154/1 |goto Auchindoun/1 24.4,32.4 |only if haveq(37154)
|tip It's a floating purple object.
|only if haveq(37233) or haveq(37154)
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
Follow the path |goto Auchindoun/1 44.2,66.0 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Soulbinder Nyami##86218
_TANK:_ |grouprole TANK
|tip Pick up adds summoned by Torn Spirits. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus dps on the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players outside of the safe zone will take heavy damage from Soul Vessel. |grouprole HEALER
|tip Dispell players with the debuff Shadow Word: Pain. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Arbiter's Hammer from Spiteful Arbiters and Arcane Bolt from Twisted Magus. |grouprole EVERYONE
|tip During Soul Vessel, the center is safe from damage. |grouprole EVERYONE
Defeat SoulbinderNyami |scenariogoal 25103 |goto Auchindoun/1 49.7,66.6
step
label "Sever"
click Soulsever Blade##237464
collect the Soulsever Blade##118619 |q 37232/1 |goto Auchindoun/1 53.3,63.4 |only if haveq(37232)
collect the Soulsever Blade##118619 |q 37156/1 |goto Auchindoun/1 53.3,63.4 |only if haveq(37156)
|tip It's a purple weapon sitting on the ledge.
|only if haveq(37232) or haveq(37156)
step
click Nightmare Bell##237479
collect the Nightmare Bell##118648 |q 37146/1 |goto Auchindoun/1 64.2,56.9
|tip It's a blue-gray bell hanging from one of the arches.
|only if haveq(37146)
step
map Auchindoun/1
path follow smart;loop off;ants straight
path	49.7,66.6	55.0,66.1	65.0,59.5
path	70.0,48.5	70.7,38.2
Follow the path|goto Auchindoun/1 70.7,38.2 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Azzakel##86219
_TANK:_ |grouprole TANK
|tip Summoned Felguards must be tanked. They do heavy melee damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the adds when Azzakel goes up in the air. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Look after players with the debuff Curtain of Flame they will take high damage for a short time. |grouprole HEALER
|tip Look out for people targeted by Cackling Pyromaniacs if they are not interupted players targeted will take very high burst damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing close to Blazing Tricksters. Their Conflagration aura will deal damage and disorient. This effect can spread. |grouprole EVERYONE
|tip Interrupt Felblast cast by Cackling Pyromaniacs. |grouprole EVERYONE
|tip If you have the debuff Curtain of Flame be sure not to stand near anyone else. |grouprole EVERYONE
|tip Move out of Fel Pool. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Fel Sparks will reach out of Fel Pools inflicting extreme fire damage each second to anyone who stands in them. |only if heroic_dung()
Defeat Azzakel |scenariogoal 25104 |goto Auchindoun/1 70.7,33.2
step
click Soul Transporter
map Auchindoun/1
path follow loose;loop off;ants straight
path	67.8,38.6	63.7,32.4
Activate the Soul Transporter |goto 58.7,18.9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Durag the Dominator##77890
click Soul Transporter
Activate the Soul Transporter |goto Auchindoun 57.0,21.5
|goto Auchindoun/1 40.8,18.9
confirm
step
kill Gul'kosh##78437
click Soul Transporter
Activate the Soul Transporter |goto Auchindoun 42.4,21.4
|goto Auchindoun/1 41.1,45.4
confirm
step
kill Grom'tash the Destructor##77889
click Soul Transporter
Activate the Soul Transporter |goto Auchindoun 42.4,43.5
|goto Auchindoun/1 49.7,41.6
confirm
step
kill Teron'gor##86220
_TANK:_ |grouprole TANK
|tip Move the boss out of Rain of Fire. |grouprole TANK
|tip Face the boss away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus the boss at all times. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch players that have the debuff Corruption this will deal a large amount of damage for a short time. |grouprole HEALER
|tip Be sure to watch for the high damage abilities in phase two, Seed of Malevolence and Doom are two examples. |grouprole HEALER
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
Defeat Teron'gor |scenariogoal 1/34451 |goto Auchindoun/1 49.6,33.5
Slay Teron'gor |q 37232/2 |goto Auchindoun/1 49.6,33.5 |only if haveq(37232)
Slay Teron'gor |q 37233/2 |goto Auchindoun/1 49.6,33.5 |only if haveq(37233)
Slay Teron'gor |q 37146/2 |goto Auchindoun/1 49.6,33.5 |only if haveq(37146)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::auch"
only if haveq(37232) or haveq(37233) or haveq(37146)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37796)
step
Congratulations, you have completed _Auchindoun_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Bloodmaul Slag Mines",{
mapid=573,
achieveid={9046},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BSM, Frostfire, Ridge, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Bloodmaul Slag Mines dungeon.",
},[[
step
Press _I_ and queue for Bloodmaul Slag Mines or enter the dungeon with your group |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c
stickystart "Head"
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants curved
path	51.5,83.3	49.6,79.9	48.6,71.2
Follow the path |goto Bloodmaul Slag Mines/1 48.6,71.2 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Go right_ to kill _Slave Watcher Crushto_ first |goto Bloodmaul Slag Mines/1 51.2,66.6 < 15 |next "Crush" |or
Or
_Go left_ to kill _Magmolatus_ first |goto Bloodmaul Slag Mines/1 46.9,66.8 < 15 |next "Magmo" |or
confirm
step
label "Crush"
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.2,66.6	52.6,62.0	52.6,62.0
path	56.3,59.8
Follow the path |goto Bloodmaul Slag Mines/1 57.1,60.0 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slave Watcher Crushto##86222
_TANK:_ |grouprole TANK
|tip Interrupt Ferocious Yell. Miners will fixate on players, becoming untauntable. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Ferocious Yell. Kill Captured Miners quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal players affected by Crushing Leap. Heal friendly miners to keep them in the fight. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to move away from Earth Crush this will deal high damage and stun for a short time. |grouprole EVERYONE
Defeat Slave Watcher Crushto |scenariogoal 25035 |goto Bloodmaul Slag Mines/1 59.0,59.6
step
click Ogre Family Tree##237477
collect Ogre Family Tree##118646 |q 37142/1 |goto Bloodmaul Slag Mines/1 52.0,58.6 |only if haveq(37142)
|tip It looks like a little tree stump on the ground.
|only if haveq(37142)
stickystart "Olaf"
step
map Bloodmaul Slag Mines/1
path follow smart;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
Follow the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Olaf"
click Olaf's Shield##237461
collect Olaf's Shield##118616 |q 37229/1 |goto Bloodmaul Slag Mines/1 45.5,57.0 |only if haveq(37229)
collect Olaf's Shield##118616 |q 37153/1 |goto Bloodmaul Slag Mines/1 45.5,57.0 |only if haveq(37153)
|tip It's a small shield on the ground.
|only if haveq(37229) or haveq(37153)
step
kill Magmolatus##74475
_TANK:_ |grouprole TANK
|tip Rough Smash does significant damage and stuns for 2 seconds. |grouprole TANK
|tip Slag Smash does significant damage and stuns for 3 seconds. Molten Elementals cannot be tanked. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill elementals. Interrupt Calamity's Firestorm. |grouprole DAMAGE
|tip Kill Molten Elementals quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Dancing Flames and Withering Flames quickly or they will spread. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in any fire or spreading rock mechanics. |grouprole EVERYONE
_Phase One:_
|tip Two adds will spawn with Gog'duh, Ruination, and Calamity.
|tip Avoid all fire and spreading rock mechanics.
_Phase Two:_
|tip Spread out.
|tip Kill the Molten Elemental as soon as possible.
Defeat Magmolatus |scenariogoal 25036 |goto Bloodmaul Slag Mines/1 26.4,55.9
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	34.9,56.0	41.9,55.5
path	43.7,52.2	45.4,45.4	49.1,40.2
Follow the path |goto Bloodmaul Slag Mines/1 49.1,38.0 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|next "Roltall"
step
label "Magmo"
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	46.9,66.8	42.2,55.3	35.7,55.8
path	32.2,52.1	29.5,55.8
Follow the path |goto Bloodmaul Slag Mines/1 29.5,55.8 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magmolatus##74475
_TANK:_ |grouprole TANK
|tip Rough Smash does significant damage and stuns for 2 seconds. |grouprole TANK
|tip Slag Smash does significant damage and stuns for 3 seconds. Molten Elementals cannot be tanked. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill elementals. Interrupt Calamity's Firestorm. |grouprole DAMAGE
|tip Kill Molten Elementals quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Dancing Flames and Withering Flames quickly or they will spread. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in any fire or spreading rock mechanics. |grouprole EVERYONE
_Phase One:_
|tip Two adds will spawn with Gog'duh, Ruination, and Calamity.
|tip Avoid all fire and spreading rock mechanics.
_Phase Two:_
|tip Spread out.
|tip Kill the Molten Elemental as soon as possible.
Defeat Magmolatus |scenariogoal 25036 |goto Bloodmaul Slag Mines/1 26.4,55.9
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.5,55.8	32.2,52.1	35.7,55.8
path	42.5,55.3	45.8,66.3	50.9,66.4
path	53.6,59.7	56.0,59.7
Follow the path |goto Bloodmaul Slag Mines/1 56.0,59.7 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slave Watcher Crushto##86222
_TANK:_ |grouprole TANK
|tip Interrupt Ferocious Yell. Miners will fixate on players, becoming untauntable. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Ferocious Yell. Kill Captured Miners quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal players affected by Crushing Leap. Heal friendly miners to keep them in the fight. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to move away from Earth Crush this will deal high damage and stun for a short time. |grouprole EVERYONE
Defeat Slave Watcher Crushto |scenariogoal 25035 |goto Bloodmaul Slag Mines/1 59.0,59.6
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	49.0,39.1
Follow the path |goto Bloodmaul Slag Mines/1 49.0,39.1 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Roltall"
kill Roltall##86223
_TANK:_ |grouprole TANK
|tip The boss can not move, don't worry about positioning the boss. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When being pushed back bay Heat Wave avoid mechanics don't try to stand still and cast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heat Wave will deal damage to the entire party. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid the Fiery Boulders that roll down the bridge. |grouprole EVERYONE
|tip Heat Wave will knock everyone back. Be careful not to get knocked into pools of Burning Slag. |grouprole EVERYONE
|tip Avoid standing in Burning Slag pools. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Rotall gains Scorching Aura, reducing cast speed when in close proximity by 100%. |only if heroic_dung()
Defeat Roltall |scenariogoal 25037 |goto Bloodmaul Slag Mines/1 49.1,34.8
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	49.1,33.6	49.1,33.7	49.4,24.5
path	58.8,23.3
Follow the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Head"
kill Bloodmaul Slaver##75191+, Bloodmaul Enforcer##84978+, Bloodmaul Overseer##75193+, Bloodmaul Geomancer##75198+, Bloodmaul Ogre Mage##75272+, Bloodmaul Warder##75210+
collect Giant Ogre Head##118534 |q 37228/1 |only if haveq(37228)
collect Giant Ogre Head##118534 |q 37152/1 |only if haveq(37152)
|tip This has a chance to drop off of ogres in the instance.
|only if haveq(37228) or haveq(37152)
step
kill Gug'rokk##86224
_TANK:_ |grouprole TANK
|tip Interrupt Molten Blast. |grouprole TANK
|tip Move the boss after he casts Magma Eruption. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Molten Blast. |grouprole DAMAGE
|tip Kill Unstable Slag Elementals before they reach their kiln. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Unstable Slag Elementals will deal AoE damage to the party through Unleashed Flames. |grouprole HEALER
_Heroic Difficulty_: |only if heroic_dung()
|tip Gug'rokk gains Flame Buffet, dealing damage to all players and increasing fire damage taken. Stacks. |only if heroic_dung()
Defeat Gug'rokk |scenariogoal 1/34452 |goto Bloodmaul Slag Mines/1 65.4,22.7
Slay Gug'rokk |q 37229/2 |goto Bloodmaul Slag Mines/1 65.4,22.7 |only if haveq(37229)
Slay Gug'rokk |q 37142/2 |goto Bloodmaul Slag Mines/1 65.4,22.7 |only if haveq(37142)
Slay Gug'rokk |q 37228/2 |goto Bloodmaul Slag Mines/1 65.4,22.7 |only if haveq(37228)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::slagmines"
only if haveq(37229) or haveq(37142) or haveq(37228)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37795)
step
Congratulations, you have completed the _Bloodmaul Slag Mines_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\The Everbloom",{
mapid=620,
achieveid={9053},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"TEB, Gorgrond, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through The Everbloom dungeon.",
},[[
step
Press _I_ and queue for The Everbloom or enter the dungeon with your group |goto The Everbloom/1 72.4,55.7 < 20 |c
stickystart "Past"
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
Follow the path |goto The Everbloom/1 56.0,59.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Past"
click Overgrown Artifact##237473
collect Overgrown Artifact##118628 |q 37241/1 |goto The Everbloom/1 61.1,66.3 |only if haveq(37241)
collect Overgrown Artifact##118628 |q 37166/1 |goto The Everbloom/1 61.1,66.3 |only if haveq(37166)
|tip It's a small box with a glowing yellow-white sphere on the top.
|only if haveq(37241) or haveq(37166)
step
kill Witherbark##86242
_TANK:_ |grouprole TANK
|tip Tank Witherbark away from the water. Pick up Unchecked Growths quickly and face Witherbark away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Save DPS cooldowns for Brittle Bark. Witherbark takes double damage during this time |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the tanks health when Witherbark casts Parched Gasp. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Aqueous Globules need to be destroyed before they can reach Witherbark. |grouprole EVERYONE
|tip Lead Unchecked Growths away from the group. |grouprole EVERYONE
|tip Avoid standing in areas targeted by Agitated Water. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Witherbark will continue to cast Unchecked Growth during Brittle Bark. |only if heroic_dung()
Defeat Witherbark |scenariogoal 25278 |goto The Everbloom/1 52.5,56.9
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
Follow the path |goto The Everbloom/1 67.8,21.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dulhu##83894, Earthshaper Telu##86244, Life Warden Gola##86243
_TANK:_ |grouprole TANK
|tip Try to group all three bosses together. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus dps on Gola the healer first, then Earthshaper Telu, and last Dulhu. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip A lot of random damage goes out in this encounter. Be prepared. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Revitalizing Water cast by Gola. |grouprole EVERYONE
|tip Dulhu will cast Grasping Vine on a party member and then Slash at them. Don't stand in front of him. |grouprole EVERYONE
|tip Dispel or interrupt Briarskin cast by Telu. |grouprole EVERYONE
|tip Dispel or interrupt Rapid Tides cast by Gola. |grouprole EVERYONE
Defeat The Ancient Protectors |scenariogoal 25112 |goto The Everbloom/1 64.0,22.4
step
click Strangely-Glowing Frond##237472
collect Strangely-Glowing Frond##118627 |q 37240/1 |goto The Everbloom/1 64.4,20.1 |only if haveq(37240)
collect Strangely-Glowing Frond##118627 |q 37165/1 |goto The Everbloom/1 64.4,20.1 |only if haveq(37165)
|only if haveq(37240) or haveq(37165)
stickystart "Bird"
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
Follow the path |goto The Everbloom/1 62.1,5.9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Bird"
click Rustling Peachick Nest##237483
collect Tiny Peachick Hatchling##118652 |q 37227/1 |goto The Everbloom/1 55.4,22.6 |only if haveq(37227)
collect Tiny Peachick Hatchling##118652 |q 37150/1 |goto The Everbloom/1 55.4,22.6 |only if haveq(37150)
|tip Click the small nest built against the green roots.
|only if haveq(37227) or haveq(37150)
step
kill Xeri'tac##86247 |goto The Everbloom/1 64.5,2.7
_TANK:_ |grouprole TANK
|tip Position Venom-Crazed Pale Ones to be hit by Descend. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Adds are top priority in phase one and two. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the tanks health in phase two the boss has strong auto attacks. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Xeri'tac when he uses Descend. |grouprole EVERYONE
|tip When Toxic Spiderlings die, they leave patches of Toxic Gas. Avoid standing in them. |grouprole EVERYONE
|tip Run away from Gorged Bursters if you get fixated. |grouprole EVERYONE
_Phase 1:_
|tip Xeri'tac will Descend randomly, dropping down to strike. Avoid being underneath him.
|tip Three sets of three adds spawn before phase two starts.
_Phase 2:_
|tip Xeri'tac Descends and is now targetable focus fire on him until the add spawns and then switch.
confirm
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6
Follow the path |goto The Everbloom/1 57.2,29.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Archmage Sol##86246
|tip Archmage Sol begins by casting Fire spells, followed by Frost and then Arcane.
_TANK:_ |grouprole TANK
|tip This boss uses mostly spells so pop magic resistant cooldowns when needed. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When changing phases don't worry about the image that pops up just focus on the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The group will take heavy AoE damage during Arcane phase due to Arcane Burst. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Parasitic Growth. |grouprole EVERYONE
|tip Jump over the expanding rings of Firebloom. |grouprole EVERYONE
|tip Avoid standing in the ground targeted abilities Firebloom, Frozen Rain, and Arcane Blossom. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Interrupting Parasitic Growth spawns a Spore Image. This image continues casting the previous school of magic until killed. |only if heroic_dung()
Defeat Archmage Sol |scenariogoal 25275 |goto The Everbloom/1 55.9,35.8
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	55.2,33.1	44.2,35.1
Follow the path |goto The Everbloom/2 44.2,35.1
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Yalnu##86248
_TANK:_ |grouprole TANK
|tip Pick up adds from Font of Life. |grouprole TANK
|tip When tanking adds try to place them in Flamestrike which is a spell casted by the friendly npcs. |grouprole TANK
|tip Face adds away for the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Destroy Entanglement and kill enemies spawned by Font of Life. |grouprole DAMAGE
|tip Avoid standing in front of adds. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Save group heals for Colossal Blow. The entire group will take heavy damage. |grouprole HEALER
|tip Avoid standing in front of adds. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Step on Sprouting Lashers to Trample them during Genesis. |grouprole EVERYONE
Defeat Yalnu |scenariogoal 1/34456 |goto The Everbloom/2 45.0,72.0
Slay Yalnu |q 37241/2 |goto The Everbloom/2 45.0,72.0 |only if haveq(37241)
Slay Yalnu |q 37240/2 |goto The Everbloom/2 45.0,72.0 |only if haveq(37240)
Slay Yalnu |q 37227/2 |goto The Everbloom/2 45.0,72.0 |only if haveq(37227)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::everbloom"
only if haveq(37241) or haveq(37240) or haveq(37227)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37790)
step
Congratulations, you have completed the _Everbloom_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Grimrail Depot",{
mapid=606,
achieveid={9052},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"GRD, Gorgrond, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Grimrail Depot dungeon.",
},[[
step
Press _I_ and queue for Grimrail Depot or enter the dungeon with your group |goto Grimrail Depot/1 32.4,31.9 < 20 |c
step
click Huge Crate of Weapons##237474
collect Huge Crate of Weapons##118643 |q 37242/1 |goto Grimrail Depot/1 53.9,38.2 |only if haveq(37242)
collect Huge Crate of Weapons##118643 |q 37167/1 |goto Grimrail Depot/1 53.9,38.2 |only if haveq(37167)
|tip It's a small crate with a red-yellow top next to some barrels.
|only if haveq(37242) or haveq(37167)
step
map Grimrail Depot/1
path follow smart;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Railmaster Rocketspark##86225, Borka the Brute##86226
_TANK:_ |grouprole TANK
|tip Aim Borka at Railmaster Rocketspark during Mad Dash. Rocketspark cannot be tanked. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip After Railmaster Rocketspark is knocked down he takes 100 percent more damage for a short time, this is where dps need to focus Railmaster Rocketspark. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Slam and X21-01A Missile Barrage do unavoidable group damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from Borka's Mad Dash. |grouprole EVERYONE
|tip Don't stand in Rocketspark's VX18-B Target Eliminator. |grouprole EVERYONE
|tip Range DPS should be on Rocketspark, while melee DPS should be on Borka. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
Borka's Slam also interrupts for 1.5 seconds. |only if heroic_dung()
Defeat Rocketspark and Borka |scenariogoal 1/25106 |goto Grimrail Depot/1 71.3,57.8
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
stickystart "Cleaver"
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Cleaver"
click Iron Limbcleaver##237475
collect Iron Limbcleaver##118644 |q 37243/1 |goto Grimrail Depot/4 53.8,51.9 |only if haveq(37243)
collect Iron Limbcleaver##118644 |q 37160/1 |goto Grimrail Depot/4 53.8,51.9 |only if haveq(37160)
|tip It's a cleaver in the middle of the second train car where you face the first Grom'kar Hulk.
|only if haveq(37243) or haveq(37160)
step
kill Nitrogg Thundertower##86227
_TANK:_ |grouprole TANK
|tip Pick up adds that spawn when Assault Cannon becomes active. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Boomers and loot Blackrock Mortar Shells. Enter turrets and shoot the Assault Cannon. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Line of sight can be difficult during this fight. Be aware of your party placement. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Hide behind something when targeted by Suppressive Fire. |grouprole EVERYONE
|tip Anyone who picks up Blackrock Grenades should use them to deal heavy damage to adds. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Move out of Slag Blast. This leaves fire on the ground. |only if heroic_dung()
Defeat Nitrogg Thundertower |scenariogoal 2/25107 |goto Grimrail Depot/3 65.0,51.0
step
click Iron Autocannon##237484
collect Iron Autocannon##118653 |q 37209/1 |goto Grimrail Depot/4 67.2,47.7 |only if haveq(37209)
collect Iron Autocannon##118653 |q 37151/1 |goto Grimrail Depot/4 67.2,47.7 |only if haveq(37151)
|tip It's a large dark gray cannon on top of some crates.
|only if haveq(37209) or haveq(37151)
step
map Grimrail Depot/4
path follow loose;loop off;ants straight
path	70.3,51.5	54.0,51.6	30.9,51.6
Follow the path |goto Grimrail Depot/4 30.9,51.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Skylord Tovra##86228
_TANK:_ |grouprole TANK
|tip Reposition Tovra frequently to avoid Freezing Snare and Diffused Energy. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid Spinning Spear and Freezing Snare. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players standing in Diffused Energy will take damage that increases very quickly. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in any traps or in Diffused Energy. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Random players will be marked with Hunter's Mark. Move away from them. |only if heroic_dung()
Defeat Skylord Tovra |scenariogoal 2/26188 |goto Grimrail Depot/4 8.6,51.0
Slay Skylord Tovra |q 37242/2 |goto Grimrail Depot/4 8.6,51.0 |only if haveq(37242)
Slay Skylord Tovra |q 37243/2 |goto Grimrail Depot/4 8.6,51.0 |only if haveq(37243)
Slay Skylord Tovra |q 37209/2 |goto Grimrail Depot/4 8.6,51.0 |only if haveq(37209)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::grimrail"
only if haveq(37242) or haveq(37243) or haveq(37209)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37794)
step
Congratulations, you have completed the _Grimrail Depot_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Iron Docks",{
mapid=595,
achieveid={9047},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"ID, Gorgrond, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Iron Docks dungeon.",
},[[
step
Press _I_ and queue for Iron Docks or enter the dungeon with your group |goto Iron Docks/1 30.6,44.5 < 100 |c
stickystart "Compass"
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
Follow the path |goto Iron Docks/1 42.0,34.4
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fleshrender Nok'gar##87451
_TANK:_ |grouprole TANK
|tip Move Nok'gar and Dreadfang out of Barbed Arrow Barrage and Burning Arrows. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Move out of Barbed Arrow Barrage and Burning Arrows quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Move out of Barbed Arrow Barrage and Burning Arrows quickly. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stop attacking when Nok'gar has Reckless Provocation. This is a shield-looking effect. |grouprole EVERYONE
|tip Avoid Shredding Swipes when Dreadfang charges forward. |grouprole EVERYONE
Defeat Fleshrender Nok'gar |scenariogoal 25108 |goto Iron Docks/1 47.8,34.1
step
label "Compass"
click Strange Brass Compass##237463
collect the Strange Brass Compass##118618 |q 37231/1 |goto Iron Docks/1 47.0,26.4 |only if haveq(37231)
collect the Strange Brass Compass##118618 |q 37155/1 |goto Iron Docks/1 47.0,26.4 |only if haveq(37155)
|tip It's a small brass-colored compass next to the barrel and crate.
|only if haveq(37231) or haveq(37155)
stickystart "Expensive"
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6
Follow the path |goto Iron Docks/1 76.4,76.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Expensive"
click Horribly Acidic Solution##237462
collect the Horribly Acidic Solution##118617 |q 37230/1 |goto Iron Docks/1 50.4,52.4 |only if haveq(37230)
collect the Horribly Acidic Solution##118617 |q 37157/1 |goto Iron Docks/1 50.4,52.4 |only if haveq(37157)
|tip It's a greenish glowing bottle on top of the barrel.
|only if haveq(37230) or haveq(37157)
step
kill Ahrj'ok Dugrv##87452, Neelsa Nox##80808, Makogg Emberblade##86231
_TANK:_ |grouprole TANK
|tip Avoid attacking any Enforcer protected with Sanguine Sphere. |grouprole TANK
|tip Face Makogg away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Switch between killing Ahrj'ok Dugrv and Neelsa Nox depending on who doesn't have the Sanguine Sphere. |grouprole DAMAGE
|tip Avoid attacking any Enforcer protected with Sanguine Sphere. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Do not step on Ogre Traps. Doing so will make you vulnerable to Big Boom. |grouprole EVERYONE
|tip Spread out when Neesa fires Hyper-Jumper Cables 9000-XL. |grouprole EVERYONE
Defeat the Grimrail Enforcers |scenariogoal 25109 |goto Iron Docks/1 80.2,75.3
stickystart "Gambit"
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	83.5,76.2	86.4,68.9	86.5,24.8
Follow the path |goto Iron Docks/1 86.5,24.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Gambit"
click Very Shiny Thing##237478
collect the Very Shiny Thing##118647 |q 37145/1 |goto Iron Docks/1 85.9,48.7
|tip It's a small gold disk on top of the crate.
|only if haveq(37145)
step
kill Oshir##86232
_TANK:_ |grouprole TANK
|tip Focus damage on Oshir during Feeding Frenzy. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on Oshir during Feeding Frenzy. |grouprole DAMAGE
|tip When Oshir casts Breakout, kill the beasts quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Focus healing on the target of Feeding Frenzy. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of Acid Splash on the floor. |grouprole EVERYONE
|tip When Oshir flips backward, avoid his Primal Assault. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Ravenous Wolves gain a damage buff when near each other. Keep them separated. |only if heroic_dung()
Defeat Oshir |scenariogoal 25110 |goto Iron Docks/1 80.4,17.4
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	79.3,19.6	71.9,28.0	69.4,34.2
Follow the path |goto Iron Docks/1 69.4,34.2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Skulloc##86233
_TANK:_ |grouprole TANK
|tip Face Koramar away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill both Zoggosh and Koramar to minimize damage to the group. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be sure to look out for the tank, Skulloc has high hitting auto attack damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Take cover behind crates during Cannon Barrage, moving foreward between shots. |grouprole EVERYONE
|tip Avoid the rear of the ship during Cannon Barrage. Backdraft will kill you. |grouprole EVERYONE
|tip Avoid standing between Zoggosh and his Rapid Fire target. |grouprole EVERYONE
Defeat Skulloc |scenariogoal 1/34453 |goto Iron Docks/1 68.4,43.6
Slay Skulloc |q 37231/2 |goto Iron Docks/1 68.4,43.6 |only if haveq(37231)
Slay Skulloc |q 37230/2 |goto Iron Docks/1 68.4,43.6 |only if haveq(37230)
Slay Skulloc |q 37145/2 |goto Iron Docks/1 68.4,43.6 |only if haveq(37145)
step
Proceeding |next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::irondocks"
only if haveq(37231) or haveq(37230) or haveq(37145)
step
Congratulations, you have completed the _Iron Docks_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Shadowmoon Burial Grounds",{
mapid=574,
achieveid={9054},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"SBG, Valley, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Shadowmoon Burial Grounds dungeon.",
},[[
step
Press _I_ and queue for Shadowmoon Burial Grounds or enter the dungeon with your group |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 100 |c
stickystart "Binding"
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
Drop down at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Binding"
click Dark Parchment##237470
collect Dark Parchment##118625 |q 37238/1 |goto Shadowmoon Burial Grounds/1 29.4,43.4 |only if haveq(37238)
collect Dark Parchment##118625 |q 37163/1 |goto Shadowmoon Burial Grounds/1 29.4,43.4 |only if haveq(37163)
|tip It's a small rolled up scroll with a purple seal laying on the ground.
|only if haveq(37238) or haveq(37163)
stickystart "Whispers"
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
Follow the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Whispers"
click Void-Gate Key##237482
collect the Void-Gate Key##118651 |q 37245/1 |goto Shadowmoon Burial Grounds/1 37.4,51.6
collect the Void-Gate Key##118651 |q 37149/1 |goto 37.45,51.30 |only if haveq(37149)
|tip It's located in the crypt at the base of the stairs.
|only if haveq(37245) or haveq(37149)
step
kill Sadana Bloodfury##86234
_TANK:_ |grouprole TANK
|tip Kill Defiled Souls before they get to Sadana. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Defiled Souls before they get to Sadana. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The whole group will take damage from Whispers of the Dark Star. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip During Dark Eclipse, walk over uncorrupted blue runes to survive. |grouprole EVERYONE
|tip Move away from falling Daggers. |grouprole EVERYONE
Defeat Sadana Bloodfury |scenariogoal 25114 |goto Shadowmoon Burial Grounds/1 52.2,51.0
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
Follow the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nhallish##75829
_TANK:_ |grouprole TANK
|tip Pick up spirits near barrows raised by Exhume the Crypts. |grouprole TANK
|tip Face Nhallish away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Save cooldowns for when you get the buff, Returning Soul, then focus the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the tanks health while the boss is casting, Void Blast, the tank will take a substantial amount of damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Kill your Spirit quickly during Soul Shred or you will die. |grouprole EVERYONE
|tip Run away when Nhallish casts Void Vortex. |grouprole EVERYONE
|tip Avoid purple spots on the ground. These areas will be hit by Void Devastation. |grouprole EVERYONE
Defeat Nhallish |scenariogoal 25116 |goto Shadowmoon Burial Grounds/1 78.8,73.6
step
click Silver-Lined Arrow##237471
collect Silver-Lined Arrow##118626 |q 37239/1 |goto Shadowmoon Burial Grounds/1 83.3,80.5 |only if haveq(37239)
collect Silver-Lined Arrow##118626 |q 37164/1 |goto Shadowmoon Burial Grounds/1 83.3,80.5 |only if haveq(37164)
|tip It's an arrow with white and purple fletching laying next to some lit candles.
|only if haveq(37239) or haveq(37164)
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
Follow the path |goto Shadowmoon Burial Grounds/1 87.6,60.4
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
Follow the path |goto Shadowmoon Burial Grounds/2 25.7,59.5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Bonemaw##86236
_TANK:_ |grouprole TANK
|tip There must always be a tank in melee range of Bonemaw or he will use Fetid Spit rapidly and wipe the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Carrion Worm adds when they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Corpse Breath inflicts shadow damage to everyone. Healers need to be prepared to heal the group up. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Body Slam cast by Carrion Worms and Bonemaw. |grouprole EVERYONE
|tip Stand in Necrotic Pitch when Bonemaw Inhales. |grouprole EVERYONE
Defeat Bonemaw |scenariogoal 25115 |goto Shadowmoon Burial Grounds/2 39.8,51.4
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
Follow the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ner'zhul##76268
_TANK:_ |grouprole TANK
|tip Face the boss away from the raid, and dont stand in Malevolence. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus dps on boss until skeletons come out then focus all dps on killing one skeleton. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch players that stand to close to Omen of Death they will take a lot of damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip During Ritual of Bones, focus dps on a single skeleton to break a safe zone in the chain. |grouprole EVERYONE
|tip When Ritual of Bones is active don't stand in the purple area created by the skeletons. |grouprole EVERYONE
|tip Everyone should move away from Omen of Death quickly to avoid taking too much damage from close proximity. |grouprole EVERYONE
Defeat Ner'zhul |scenariogoal 1/34454 |goto Shadowmoon Burial Grounds/3 48.1,47.1
Slay Ner'zhul |q 37238/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1 |only if haveq(37238)
Slay Ner'zhul |q 37245/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1 |only if haveq(37245)
Slay Ner'zhul |q 37239/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1 |only if haveq(37239)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::shadowmoon"
only if haveq(37238) or haveq(37245) or haveq(37239) or haveq(37149)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37792)
step
Congratulations, you have completed the _Shadowmoon Burial Grounds_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Skyreach",{
mapid=601,
achieveid={8844},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"SR, Spires, of, Arak, Draenor, SoA"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Skyreach dungeon.",
},[[
step
Press _I_ and queue for Skyreach or enter the dungeon with your group |goto Skyreach/1 60.6,25.1 < 20 |c
stickystart "Plea"
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2
Follow the path |goto Skyreach/1 64.1,32.2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Plea"
click Pristine Plumage##237467
|tip It looks like a blue feather quill pen.
collect Pristine Plumage##118622 |q 37235/1 |goto Skyreach/1 63.8,24.9 |only if haveq(37235)
collect Pristine Plumage##118622 |q 37159/1 |goto Skyreach/1 63.8,24.9 |only if haveq(37159)
|only if haveq(37235) or haveq(37159)
step
kill Ranjit##86238
_TANK:_ |grouprole TANK
|tip Save your cooldowns for Four Winds. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip There are no adds in this fight, focus the boss and dont stand in any wind trials or Spinning Blade. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Fan of Blades deals damage to the entire group and leaves a bleed effect. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in the wind trails created by Four Winds. |grouprole EVERYONE
|tip Avoid standing in the path of Spinning Blade. |grouprole EVERYONE
|tip Ranjit will charge forward in a Piercing Rush. Avoid standing in front of him. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Lens Flare will call a beam of light down on a party member and follow them. Move away and don't lead it through the group. |only if heroic_dung()
Defeat Ranjit |scenariogoal 24709 |goto Skyreach/1 63.3,38.5
stickystart "Dark"
step
map Skyreach/1
path follow loose;loop off;ants straight
path	62.6,39.2	59.2,46.2	54.1,50.3
path	53.3,53.7
Follow the path |goto Skyreach/1 53.3,53.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Dark"
click Sun Crystal##237466
collect the Sun Crystal##118621 |q 37234/1 |goto Skyreach/1 52.9,48.6 |only if haveq(37234)
collect the Sun Crystal##118621 |q 37158/1 |goto Skyreach/1 52.9,48.6 |only if haveq(37158)
|tip It looks like a glowing yellow sun shield.
|only if haveq(37234) or haveq(37158)
step
kill Araknath##86239
_TANK:_ |grouprole TANK
|tip Avoid standing in Smash. This ability comes from his left or right arm. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If you soak the Energize be sure to pop a defensive cooldown. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Burst will deal increasing damage to the entire party. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stand in the path of Energize there will be tow of them. If they are not soaked the boss will heal. |grouprole EVERYONE
Defeat Araknath |scenariogoal 24451 |goto Skyreach/1 52.4,61.2
stickystart "Wind"
step
map Skyreach/1
path follow loose;loop off;ants straight
path	52.3,61.1	47.0,62.3	45.7,64.7
path	 47.1,67.8	47.8,70.9	45.3,76.3
Follow the path |goto Skyreach/1 45.3,76.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Wind"
click Bottled Windstorm##237480
collect the Bottled Windstorm##118649 |q 37147/1 |goto Skyreach/1 42.2,80.5
|tip It's a translucent blue-white bottle.
|only if haveq(37147)
step
kill Rukhran##76379
_TANK:_ |grouprole TANK
|tip It is critical to stay in melee range of Rukhran at all times or he will cast Screech. |grouprole TANK
|tip Use active mitigation cooldowns to counter Pierce Armor. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Run from Solar Flare if you get fixated. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Run from Solar Flare if you get fixated. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Solar Flares should be killed away from Ash Piles or they will animate as additional Solar Flares. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Rukhran will cast Quills, dealing damage to all enemies and increasing in damage each cast. Hide behind the pillar to avoid damage. |only if heroic_dung()
Defeat Rukhran |scenariogoal 24452 |goto Skyreach/1 42.7,81.9
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
Follow the path |goto Skyreach/1 42.4,69.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
Follow the path |goto Skyreach/2 44.0,43.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Sage Viryx##86241
_TANK:_ |grouprole TANK
|tip Tank the boss close to the entrance, this is where the Shield Constructs spawn. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Burn down Zealots quickly before they can drop allies off the side. |grouprole DAMAGE
|tip Kill Shield Constructs. |grouprole DAMAGE
|tip Move out of Lens Flare and lead it away from the party. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Move out of Lens Flare and lead it away from the party. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Solar Burst. |grouprole EVERYONE
|tip The Shield Construct casts a buff on the boss that makes him immune to damage this can be interupted or stunned. |grouprole EVERYONE
|tip The Zealots can be stunned and slowed. |grouprole EVERYONE
Defeat High Sage Viryx |scenariogoal 1/34455 |goto Skyreach/2 51.1,27.4
Slay High Sage Viryx |q 37235/2 |goto Skyreach/2 51.1,27.4 |only if haveq(37235)
Slay High Sage Viryx |q 37234/2 |goto Skyreach/2 51.1,27.4 |only if haveq(37234)
Slay High Sage Viryx |q 37147/2 |goto Skyreach/2 51.1,27.4 |only if haveq(37147)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::skyreach"
only if haveq(37235) or haveq(37234) or haveq(37147) or haveq(37158)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37791)
step
Congratulations, you have completed _Skyreach_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Upper Blackrock Spire",{
mapid=616,
achieveid={9055},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"UBRS, Mountain, BRM, Searing, Gorge, Burning, Steppes, Draenor"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Upper Blackkrock Spire dungeon.",
},[[
step
Press _I_ and queue for Upper Blackrock Spire or enter the dungeon with your group |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c
stickystart "Flamefly"
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
Clear the rooms to break the seals
Follow the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Flamefly"
click Bottled Flamefly##237481
collect Spire Flamefly##118650 |q 37244/1 |goto Upper Blackrock Spire 2/1 36.1,17.1 |only if haveq(37244)
collect Spire Flamefly##118650 |q 37148/1 |goto Upper Blackrock Spire 2/1 36.1,17.1 |only if haveq(37148)
|tip It can be found in the first room up the first ramp on a barrel.
|only if haveq(37244) or haveq(37148)
step
kill Orebender Gor'ashan##86249
|tip To begin the encounter, click the Rune Conduits near the walls.
_TANK:_ |grouprole TANK
|tip The boss stands still the enitre fight so just get the necessary aggro and help with the Rune Conduits. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stand on the plateform and dps the boss until Rune Conduits activate. |grouprole DAMAGE
_HEALER:_ |grouprole TANK
|tip When Rune Conduits activate watch the raid there will be a lot of aoe damage going out.
_EVERYONE:_ |grouprole HEALER
|tip When Rune Conduits active anyone can go down and deactive them. |grouprole HEALER
|tip When down on the ground floor deactivating Rune Conduits watch out for the two Electric Pulses that travel around the room. |grouprole HEALER
|tip Each active Rune Conduit gives a buff to the boss decreasing damage taken by 14 percent. |grouprole HEALER
Defeat Orebender Gor'ashan |scenariogoal 24322 |goto Upper Blackrock Spire 2/2 30.3,27.0
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
Follow the path |goto Upper Blackrock Spire 2/2 32.0,37.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kyrak##86250
_TANK:_ |grouprole TANK
|tip Face the Drakonids away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the two Drakonoids before killing Kyrak. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the tanks health while both of the adds are still alive. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stay spread out to reduce the damage from Vileblood Serum. |grouprole EVERYONE
|tip Interupt Delilitating Fixation. |grouprole EVERYONE
|tip Dispell Rejuvenating Serum as soon as possible when he applys it to himself. |grouprole EVERYONE
|tip Don't stand in Vileblood Serum or Eruption. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip It is important to stay away from others when affected by Salve of Toxic Fumes. |only if heroic_dung()
Defeat Kyrak |scenariogoal 24433 |goto Upper Blackrock Spire 2/2 38.4,38.5
step
click Finkle's Improved Skinner##237468
collect Finkle's Improved Skinner##118623 |q 37236/1 |goto Upper Blackrock Spire 2/2 30.3,37.4 |only if haveq(37236)
collect Finkle's Improved Skinner##118623 |q 37161/1 |goto Upper Blackrock Spire 2/2 30.3,37.4 |only if haveq(37161)
|tip It's a jagged looking blade on the floor.
|only if haveq(37236) or haveq(37161)
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
Follow the path |goto Upper Blackrock Spire 2/2 30.3,39.5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
Follow the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Commander Tharbek##86251
_TANK:_ |grouprole TANK
|tip Pick up Black Iron Guards quickly to eliminate excessive group damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Tharbek's mount before killing Tharbek. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the player targeted by Incinerating Breath or by Iron Reaver, these people will take a large amount of damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Tharbek will choose a target and charge to it using Iron Reaver. Stay out of the path. |grouprole EVERYONE
|tip Avoid standing near the whirling Imbued Iron Axe. |grouprole EVERYONE
|tip Periodically Tharbek's mount will use Incinerating Breath and Noxious Spit. These are easy to avoid. |grouprole EVERYONE
Defeat Commander Tharbek |scenariogoal 24619 |goto Upper Blackrock Spire 2/3 48.6,25.9
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
Follow the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Son of the Beast##77927
Son of the Beast is an optional mini boss. |goto Upper Blackrock Spire 2/3 62.2,41.4 |confirm
|tip If you choose to fight him, stay out of fire on the ground.
_Healers_:
|tip Be aware that he will periodically knock back and AoE fear the group.
Click here to proceed |confirm
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
Follow the path |goto Upper Blackrock Spire 2/3 50.6,45.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ragewing##76585
_TANK:_ |grouprole TANK
|tip Pick up Ragewing Whelps quickly. |grouprole TANK
|tip Be sure that you are in melee range of the boss whenever hes active. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Ragewing Whelps as quickly as possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch peoples health during Fire Storm. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Engulfing Fire is a sweeping flame attack that will reach the middle of the bridge. It is easier to avoid when standing near the middle. |grouprole EVERYONE
|tip Loosely spreading out will minimize the risk of multiple targets being hit by Magma Spit. |grouprole EVERYONE
|tip This fight can be very tough for healers so minimizing incoming damage is very important. |grouprole EVERYONE
|tip Don't Stand in Fire Storm circles. |grouprole EVERYONE
Defeat Ragewing |scenariogoal 24624 |goto Upper Blackrock Spire 2/3 46.7,45.6
stickystart "Proto"
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
Follow the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Proto"
click Shed Proto-Dragon Claw##237469
collect Shed Proto-Dragon Claw##118624 |q 37237/1 |goto Upper Blackrock Spire 2/3 48.4,20.1 |only if haveq(37237)
collect Shed Proto-Dragon Claw##118624 |q 37162/1 |goto Upper Blackrock Spire 2/3 48.4,20.1 |only if haveq(37162)
|only if haveq(37237) or haveq(37162)
step
kill Warlord Zaela##77120
_TANK:_ |grouprole TANK
|tip Position yourself so the knockback from Destructive Smite will not knock you off the platform. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus the boss whenver she is out. |grouprole DAMAGE
|tip Kill the 3 adds that come out as soon as possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch out for people standing in the Proto-Drakes breath, they will take a large amount of damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Zaela will fixate a random target with Black Iron Cyclone. Avoid leading this through the group when you run away. |grouprole EVERYONE
|tip Zaela will throw a blade occasionally at a target. Stay spread out to avoid this blade jumping to another party member. |grouprole EVERYONE
|tip Throughout the fight, Proto-Drakes will lay down lines of Burning Breath. Move out of the path. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Zaela gains_Destructive Smite, dealing massive damage to the current target and knocking them back. |only if heroic_dung()
Defeat Warlord Zaela |scenariogoal 2/34401 |goto Upper Blackrock Spire 2/3 14.4,47.7
Slay Warlord Zaela |q 37244/2 |goto Upper Blackrock Spire 2/3 14.4,47.7 |only if haveq(37244)
Slay Warlord Zaela |q 37236/2 |goto Upper Blackrock Spire 2/3 14.4,47.7 |only if haveq(37236)
Slay Warlord Zaela |q 37237/2 |goto Upper Blackrock Spire 2/3 14.4,47.7 |only if haveq(37237)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies::upperbrs"
only if haveq(37244) or haveq(37236) or haveq(37237)
step
|next "Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies"
only if haveq(37789)
step
Congratulations, you have completed _Upper Blackrock Spire_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Blackrock Foundry - The Black Forge (LFR)",{
mapid=596,
lfgid=846,
achieveid={8988},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BRF, BF, LFR, Draenor, Gorgrond"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Blackrock Foundry - The Black Forge raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for The Black Forge
Enter the Second wing of Blackrock Foundry |goto Blackrock Foundry/3 40.9,86.4 |noway |c
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,62.9	32.9,53.8
path	28.6,53.7
Follow the path, riding the elevator to the bottom floor |goto Blackrock Foundry/1 46.9,57.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the door |goto Blackrock Foundry/1 47.5,67.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hans'gar##76973 |goto Blackrock Foundry/1 47.5,76.4
kill Franzok##76974 |goto Blackrock Foundry/1 47.5,76.4
_TANK:_ |grouprole TANK
|tip While both bosses are active, tank them close together. |grouprole TANK
|tip Use a damage-reduction cooldown to mitigate Crippling Suplex. |grouprole TANK
|tip During the last 15%, alternate cooldowns to stay alive. |grouprole TANK
|tip While only a single boss is active, swap after each Body Slam. |grouprole TANK
|tip Move bosses away from Stamping Presses and Searing Plates. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Make extensive use of cleaves while both bosses are active. |grouprole DAMAGE
|tip Casters should stop casting until Franzok finishes his Disrupting Roar. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use cooldowns on tanks for Crippling Suplex. |grouprole HEALER
|tip While both bosses are active, both tanks will require extensive healing. More so during the final 15%. |grouprole HEALER
|tip Casters should stop casting until Franzok finishes his Disrupting Roar. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Standing between conveyor belts will allow you to remain stationary while the belts are moving. |grouprole EVERYONE
|tip Move away from Searing Plates and Stamping Presses. Standing between belts will not prevent Stamping Press damage! |grouprole EVERYONE
|tip If targeted by Body Slam, move away from the group quickly. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp for the last phase, when both bosses are active and the belts are moving. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	47.6,66.0	46.7,61.4	44.2,57.5
path	40.7,58.7	40.5,73.8	35.1,76.7
path	31.0,76.8	25.0,76.8
Follow the path |goto Blackrock Foundry/1 25.0,76.8 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Flamebender Ka'graz##76814 |goto Blackrock Foundry/1 18.8,76.8
_TANK:_ |grouprole TANK
|tip One tank needs to keep Aknor Steelbringer faced away from the raid while he is alive. |grouprole TANK
|tip When Cinder Wolves spawn, a tank needs to pick up the Overheated one and face it away from melee. |grouprole TANK
|tip When the second wolf Overheats, the tanks must swap. |grouprole TANK
|tip Use cooldowns for the last Charring Breath when tanking the Overheated wolf. |grouprole TANK
|tip Following Firestorm when ka'graz has Flamefury, swap at 4-5 stacks of Rising Flames. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus DPS on Aknor Steelbringer until he dies. |grouprole DAMAGE
|tip Avoid standing in Lava Slash and fire lines on the ground. |grouprole DAMAGE
|tip Ranged should spread out at least 6 yards. |grouprole DAMAGE
|tip Move away from Enchanted Armaments. |grouprole DAMAGE
|tip Move away from raid members when affected by Blazing Radiance. |grouprole DAMAGE
|tip Move into melee when targeted by Molten Torrent to split damage. If you have an immunity cooldown, run away and use it. |grouprole DAMAGE
|tip Melee should kill Overheated Cinder Wolves, while ranged should kill regular Cinder Wolves. |grouprole DAMAGE
|tip If Fixated by a wolf, avoid kiting it through other players. |grouprole DAMAGE
|tip Cinder Wolves should be killed within a short time of each other. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Save cooldowns for the Cinder Wolf phases. |grouprole HEALER
|tip Keep melee topped off, especially during Molten Torrent. |grouprole HEALER
|tip Due to Lava Slash and Enchanted Armaments, damage will be spikey and significant. |grouprole HEALER
|tip Players kiting a Cinder Wolf will need extra healing. |grouprole HEALER
|tip Singe shows up as a debuff that can be dispelled, but it can't. |grouprole HEALER
|tip Damage-reduction and healing cooldowns are useful during Firestorm. |grouprole HEALER
|tip Spread out at least 6 yards. |grouprole HEALER
|tip Move away from Enchanted Armaments. |grouprole HEALER
|tip Move away from raid members when affected by Blazing Radiance. |grouprole HEALER
|tip Move into melee when targeted by Molten Torrent to split damage. If you have an immunity cooldown, run away and use it. |grouprole HEALER
|tip If Fixated by a wolf, avoid kiting it through other players. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	21.6,76.7	31.1,76.6	31.1,71.1
path	33.1,66.4	33.1,52.2
Follow the path |goto Blackrock Foundry/1 33.1,52.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kromog##77692 |goto Blackrock Foundry/1 33.1,41.3
_TANK:_ |grouprole TANK
|tip Except during Thundering Blows, tanks need to stand close together to split Fists of Stone damage. |grouprole TANK
|tip If no one is in range of Kromog, he will use Stone Breath repeatedly. |grouprole TANK
|tip Tank swap at 3 stacks of Warped Armor. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should move quickly if Kromog turns towards them. Rippling Smash will soon follow. |grouprole DAMAGE
|tip After destroying your Grasping Earth, assist healers in kill theirs before DPSing Kromog. |grouprole DAMAGE
|tip Save DPS cooldowns for the 30% Frenzy. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage is heavy, especially during Slam. |grouprole HEALER
|tip Slam deals frequent raid damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip When Kromog casts Rune of Grasping Earth, run into a rune and let a hand grab you. |grouprole EVERYONE
|tip When Thundering Blows ends, kill your Grasping Earth to free yourself. |grouprole EVERYONE
|tip Avoid Rippling Smash and Reverberations on the ground. |grouprole EVERYONE
|tip At 30% health, Kromog will Frenzy. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the 30% Frenzy. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Blackrock Foundry - The Black Forge_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Blackrock Foundry - Blackhand's Crucible (LFR)",{
mapid=600,
lfgid=823,
achieveid={8988},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BRF, BC, LFR, Draenor, Gorgrond"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Blackrock Foundry - Blackhand's Crucible raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Blackhand's Crucible
Enter the Fourth wing of Blackrock Foundry |goto Blackrock Foundry/3 40.9,86.4 |noway |c
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,15.9	33.6,15.3
Follow the path |goto Blackrock Foundry/3 33.6,15.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/5
path follow smart; loop off; ants curved; dist 15
path	53.2,92.2	48.5,92.4	48.6,76.4
path	48.6,69.2
Follow the path and ride the lift |goto Blackrock Foundry/5 48.6,69.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Blackhand##77325 |goto Blackrock Foundry/5 48.8,34.4
_TANK:_ |grouprole TANK
|tip The offtank should stay behind Blackhand to avoid being hit with Shattering Smash. Taunt immediately follow this ability. |grouprole TANK
|tip During Phase 1, move Blackhand in a circle around the edge of the room. |grouprole TANK
|tip During Phase 2, tank Blackhand near the center of the room. |grouprole TANK
|tip If you are Slagged, use a cooldown for Shattering Smash. |grouprole TANK
|tip In Phase 3, tank Blackhand near the edge of the platform. At 100 energy, turn him towards the center of the platform for Massive Shattering Smash. |grouprole TANK
|tip During Phase 3, tank swap whenever affected by Throw Slag Bombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid taking Shattering Smash damage. |grouprole DAMAGE
|tip Melee DPS should stand in Shattering Smash during Phase 2 to be thrown onto the balcony. Kill adds while you are up there. |grouprole DAMAGE
|tip In Phase 2, kite the Siegemaker away from group members if Fixated. Try to run it over Slag Bombs. |grouprole DAMAGE
|tip During Phase 3, run away from the raid to drop Slag Bombs if targeted by Attach Slag Bombs. |grouprole DAMAGE
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players who are Impaled will take massive damage over time. |grouprole HEALER
|tip Slagged players may potentially take fatal damage. |grouprole HEALER
|tip Shattering Smash will deal heavy damage to the current tank. |grouprole HEALER
|tip During Phase 1, use cooldowns for Demolition. |grouprole HEALER
|tip During Phase 2, use cooldowns when approaching Phase 3. |grouprole HEALER
|tip In Phase 2, kite the Siegemaker away from group members if Fixated. Try to run it over Slag Bombs. |grouprole HEALER
|tip During Phase 3, use cooldowns for Massive Shattering Smash. |grouprole HEALER
|tip During Phase 3, run away from the raid to drop Slag Bombs if targeted by Attach Slag Bombs. |grouprole HEALER
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted by Marked for Death, LoS it behind a Debris Pile in Phase 1. In Phase 2, LoS it behind a Siegemaker. |grouprole EVERYONE
|tip During Phase 2, avoid being hit with the Siegemaker's Battering Ram. |grouprole EVERYONE
|tip Avoid triggering Slag Bombs. You will take massive fire damage and become Slagged, taking 100% increased damage. |grouprole EVERYONE
|tip During Phase 3, move away from Slag Craters. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp after everyone is in position in Phase 3 |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Blackrock Foundry - Blackhand's Crucible_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Blackrock Foundry - Iron Assembly (LFR)",{
mapid=599,
lfgid=848,
achieveid={8988},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BRF, IA, LFR, Draenor, Gorgrond"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Blackrock Foundry - Iron Assembly raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Iron Assembly
Enter the Third wing of Blackrock Foundry |goto Blackrock Foundry/3 40.9,86.4 |noway |c
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	41.0,62.4	53.0,42.6
path	57.0,42.2
Follow the path |goto Blackrock Foundry/3 57.0,42.2 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	42.8,84.0	45.7,83.9	45.7,71.7
path	52.3,71.8
Follow the path |goto Blackrock Foundry/4 52.3,71.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Beastlord Darmac##76865 |goto Blackrock Foundry/4 62.8,71.8
_TANK:_ |grouprole TANK
|tip Move Darmac near the beast you want him to mount at 85%, 65%, and 45% health. |grouprole TANK
|tip The offtank should pick up the beasts that spawn in the far right corner and tank them near the boss for cleaves. |grouprole TANK
|tip While active, tank swap Cruelfang at 3 stacks of Rend and Tear. Darmac will continue to do this after being dismounted. |grouprole TANK
|tip While Ironcrusher is active, tank swap at 2 stacks of Crush Armor. |grouprole TANK
|tip While Dreadwing is active, tank swap at 5-10 stacks of Seared Flesh. |grouprole TANK
|tip Inferno Breath and Superheated Shrapnel are random and cannot be aimed. |grouprole TANK
|tip During the final stretch of the fight, tank Darmac near the Pack Beast spawn point at the far right. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Heavy Spears that pin down raid members immediately. |grouprole DAMAGE
|tip AoE the Pack Beasts when they spawn. |grouprole DAMAGE
|tip Apply DoTs when Darmac is preparing to mount a beast. |grouprole DAMAGE
|tip Ranged DPS should remain spread out. |grouprole DAMAGE
|tip When Cruelfang is active and after, melee should move away during Rend and Tear. |grouprole DAMAGE
|tip Tranquilize Savage Howl whenever possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players affected by Rend and Tear, Inferno Breath, Superheated Shrapnel, or Conflagration will need extra healing. |grouprole HEALER
|tip Players who are Pinned Down will require heavy single-target healing. |grouprole HEALER
|tip Dispel Inferno Breath, Superheated Shrapnel, and Conflagration quickly. |grouprole HEALER
|tip Strong AoE healing is required during Tantrum. |grouprole HEALER
|tip Spread out to minimize damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Do not stand in areas targeted by Heavy Spear. |grouprole EVERYONE
|tip Move out of Inferno Breath and Superheated Shrapnel. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp at after Darmac dismounts the final beast. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	56.3,71.8	46.4,71.5	45.7,55.6
Follow the path |goto Blackrock Foundry/4 45.7,55.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Operator Thogar##76906 |goto Blackrock Foundry/4 45.7,19.4
_TANK:_ |grouprole TANK
|tip Move Thogar to safe tracks to avoid moving trains. |grouprole TANK
|tip Tank swap at 2 stacks of Enkindle. |grouprole TANK
|tip Pick up adds quickly when they jump from the trains. |grouprole TANK
|tip When multiple trains come through, it may be necessary to use a cooldown to deal with higher stacks of Enkindle. |grouprole TANK
|tip Move Thogar away from Prototype Pulse Grenades and Delayed Siege Bombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Adds always take priority over Thogar. |grouprole DAMAGE
|tip Kill priority is as follows: Firemender, Man-at-Arms, Crack-Shot, Raider. |grouprole DAMAGE
|tip Ranged DPS should kill Gunnery Sergeants. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will need heavy healing, especially while adds are active. |grouprole HEALER
|tip Frequent AoE heals are required while a Man-at-Arms is alive. |grouprole HEALER
|tip Anyone standing in Prototype Pulse Grenades or Delayed Siege Bombs will require significant healing. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Throughout the fight, trains will move across the tracks. Avoid standing in their path. |grouprole EVERYONE
|tip Interrupt Firemender's Cauterizing Bolt. |grouprole EVERYONE
|tip Stun adds when possible to reduce damage dealt to the tanks. |grouprole EVERYONE
|tip Move away from the raid and keep moving until Delayed Siege Bomb expires. |grouprole EVERYONE
|tip Move away from Prototype Pulse Grenades and Delayed Siege Bombs. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	45.7,24.2	45.7,43.7	52.1,49.0
path	56.4,49.0
Follow the path and jump down the hole |goto Blackrock Foundry/1 74.9,24.5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Admiral Gar'an##77557 |goto Blackrock Foundry/1 85.6,28.1
kill Enforcer Sorka##77231 |goto Blackrock Foundry/1 85.6,28.1
kill Marak the Blooded##77477 |goto Blackrock Foundry/1 85.6,28.1
_TANK:_ |grouprole TANK
|tip Admiral Gar'an cannot be tanked.
|tip The Marak tank needs to intercept the Crystallized Blood from Blood Ritual.
|tip When the Maidens reach 100 energy, Marak's tank should use several powerful defensive cooldowns to reduce raid damage from Sanguine Strikes.
|tip Move the bosses away from Dominator Turrets when they spawn.
_DAMAGE:_ |grouprole DAMAGE
|tip The Maidens should be DPSed evenly. Make use of cleaves. |grouprole DAMAGE
|tip Melee DPS should avoid standing in the path of the Blood Ritual target. |grouprole DAMAGE
|tip If targeted by Blood Ritual, move to your assigned spot. |grouprole DAMAGE
|tip Kill Dominator Turrets IMMEDIATELY. Just 2 of these turrents can quickly wipe the raid. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Targets of Blood Ritual, Bloodsoaked Heartseeker, Convulsive Shadows, Dark Hunt, Rapid Fire, and Penetrating Shot are likely to take heavy damage. |grouprole HEALER
|tip During Detonation Sequence, heavy raid damage is likely. |grouprole HEALER |grouprole HEALER
|tip During Sanguine Strikes, prepare raid healing and damage-reduction cooldowns. |grouprole HEALER |grouprole HEALER
Dreadnaught Team:
|tip The Dreadnaught Team should be chosen before the fight - 1 healer and up to 5 DPS.
|tip Mobile healers and DPS are optimal for this role. Interrupts are also a plus.
|tip When one of the bosses leaves the area, click the chains near the boat to swing over.
|tip Quickly defeat the deckhands and click the ammunition at the front of the boat.
|tip You will have approximately 90 seconds to complete this task.
|tip Be aware, Detonation Sequence will occur immediately upon leaving the ship.
_EVERYONE:_ |grouprole EVERYONE
|tip Dodge fireballs projected from Dominator Turrets. |grouprole EVERYONE
|tip Run out of the raid quickly when targeted by Rapid Fire. |grouprole EVERYONE
|tip If targeted by Penetrating Shot, do not move. DPS and healers need to intercept the attack to split the damage. |grouprole EVERYONE
|tip Use a defenisve cooldown as the duration is about to expire if targeted by Dark Hunt. |grouprole EVERYONE
|tip When mines are laid, move away from reddish ones as they will soon explode. |grouprole EVERYONE
|tip Move out of marked areas during Detonation Sequence. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the Maidens gain the Iron Will buff. |grouprole EVERYONE
confirm
step
Congratulation! You have completed _Blackrock Foundry - Iron Assembly_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Blackrock Foundry - Slagworks (LFR)",{
mapid=597,
lfgid=847,
achieveid={8988},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BRF, SW, LFR, Draenor, Gorgrond"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Blackrock Foundry - Slagworks raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Slagworks
Enter the First wing of Blackrock Foundry |goto Blackrock Foundry/3 40.9,86.4 |noway |c
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,63.4	44.8,54.9
path	51.8,54.6	56.8,60.2	54.1,68.4
path	47.4,68.4
Follow the path |goto Blackrock Foundry/3 47.4,68.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	62.3,53.7	54.9,53.7	55.5,64.4
path	56.0,79.3	52.4,83.5	47.5,83.9
Follow the path |goto Blackrock Foundry/2 47.5,83.9 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Oregorger##77182 |goto Blackrock Foundry/2 37.10,82.30
_TANK:_ |grouprole TANK
|tip Face Oregorger with his side to the ranged group, not his back or front. |grouprole TANK
|tip When not tanking, stand in the path between Oregorger and the ranged group. |grouprole TANK
|tip The offtank should use a cooldown during Acid Torrent and then taunt immediately after. |grouprole TANK
|tip Pick up Oregorger quickly after the Rolling Fury phase ends. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should avoid standing near Explosive Shards. |grouprole DAMAGE
|tip Ranged DPS should move out of Retched Blackrock puddles. |grouprole DAMAGE
|tip Ranged DPS needs to use a damage reduction cooldown during Acid Torrent. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The offtank will need strong single-target healing during Acid Torrent. |grouprole HEALER
|tip AoE heals will be required for the ranged group follwing each Acid Torrent. |grouprole HEALER
|tip Move out of Retched Blackrock pools. |grouprole HEALER
|tip Be aware of line-of-sight issues during the Rolling Fury phase. |grouprole HEALER
|tip Use healing cooldowns towards then end of the Rolling Fury phase. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Destroy crates and avoid Oregorger during the Rolling Fury phase. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the boss is positioned after the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	46.5,84.0	51.7,83.9	55.5,79.6
path	55.0,62.0	55.0,47.6	56.5,28.6
path	49.9,24.3
Follow the path |goto Blackrock Foundry/2 49.9,24.3 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gruul##76877 |goto Blackrock Foundry/2 39.3,20.5
_TANK:_ |grouprole TANK
|tip Face Gruul away from the raid. |grouprole TANK
|tip During Inferno Slice, face grull towards a group of raid members. Alternate the group every Inferno Slice. |grouprole TANK
|tip Tank swap at 2-3 stacks of Inferno Strike initially, then after Overwhelming Blows falls off for the duration of the fight. |grouprole TANK
|tip Move out of Overhead Smash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stack at your group's designated area. |grouprole DAMAGE
|tip Move out of Cave In and Overhead Smash. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The group soaking Inferno Slice will take heavy damage and suffer a DoT. Keep them topped off. |grouprole HEALER
|tip Tanks will take heavy damage leading up to Destructive Rampage. |grouprole HEALER
|tip Players who fail to move away from the group when affected by Petrify will deal heavy damage to anyone near them. |grouprole HEALER
|tip Stack with your group for Inferno Slice. |grouprole HEALER
|tip Move out of Cave In and Overhead Smash. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from other players when affected by Petrify. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	44.5,23.6	56.0,28.1	55.4,44.1
path	55.1,53.5	60.1,53.7	61.1,64.1
path	67.0,63.8	67.5,54.8	60.7,53.4
Follow the path |goto Blackrock Foundry/2 60.7,53.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Heart of the Mountain##76806 |goto Blackrock Foundry/2 46.1,53.7
_TANK:_ |grouprole TANK
|tip One tank should pick up a Security Guard and a Furnace Engineer and take them to their assigned side. |grouprole TANK
|tip One tank should pick up Foreman Feldspar and take him to their assigned side. |grouprole TANK
|tip Pick up adds and move enemies out of the purple Defense zones. |grouprole TANK
|tip During Phase 2, tank Security Guards and Firecallers slightly away from Primal Elementalists. |grouprole TANK
|tip During Phase 3, move Heart of the Mountain away from patches of Melt. |grouprole TANK
|tip During Phase 3, tank swap at 3 stacks of Heat or when your stacks fall off. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Heat regulators are located on the left and right sides of the furnace. If you have a Bomb, run to them and use your extra action button. |grouprole DAMAGE
|tip If targeted by Rupture, move away from the raid so the Rupture zone is out of the way. |grouprole DAMAGE
|tip Interrupt Engineers' Repair and Feldspar's Pyroclasm. |grouprole DAMAGE
|tip During Phase 2, focus all damage on a Primal Elementalist. Clean up adds with DoTs and cleaves. |grouprole DAMAGE
|tip During Phase 2, move away from the raid if affected by Volatile Fire. |grouprole DAMAGE
|tip During Phase 3, use any available DPS cooldowns. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep an eye on the Heart of the Mountain's Energy bar. Prepare AoE heals when it gets high to counter Blast damage. |grouprole HEALER
|tip Players affected by Bomb will take moderate to heavy damage. |grouprole HEALER
|tip Feldspar's tank will take heavy damage. |grouprole HEALER
|tip Heat regulators are located on the left and right sides of the furnace. If you have a Bomb, run to them and use your extra action button. |grouprole HEALER
|tip If targeted by Rupture, move away from the raid so the Rupture zone is out of the way. |grouprole HEALER
|tip During Phase 2, move away from the raid if affected by Volatile Fire. |grouprole HEALER
|tip During Phase 3, heavy raid damage will occur. Coordinate raid cooldowns with other healers. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move quickly out of Melt during Phase 3. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when adds are in position in Phase 1 after the pull. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Blackrock Foundry - Slagworks_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Bastion of Shadows (LFR)",{
mapid=666,
lfgid=984,
achieveid={10025},
patch='60200',
keywords={"HFC, LFR, Draenor, BoS, Tanaan, Jungle"},
condition_suggested=function() return level>=40 and level<=43 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel - Bastion of Shadows raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Bastion of Shadows
Enter the Third wing of Hellfire Citadel |goto Hellfire Citadel/6 62.1,76.8 |noway |c
confirm
step
kill Shadow-Lord Iskar##90316 |goto Hellfire Citadel/6 38.9,76.6
_TANK:_ |grouprole TANK
|tip One tank should pick up the Illusionary Outcasts. The other should handle the adds. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Corrupted Talonpriests first during the first intermission phase. |grouprole DAMAGE
|tip Kill Shadowfel Wardens first during the second and third intermission. |grouprole DAMAGE
|tip After the priority targets are dead, kill Fel Ravens and then DPS Iskar. |grouprole DAMAGE
|tip Stand in front or behind the player holding the Eye of Anzu during Focused Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Fel Bomb when you are holding the Eye of Anzu |grouprole HEALER
|tip If you have an interrupt, use it on Fel Conduit while holding the Eye of Anzu. |grouprole HEALER
|tip Targets of Phantasmal Wounds need to be healed to 90% to remove it. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip 3 players will be targeted by Fel Chakram at a time. If you are targeted, move away from group members. The Chakram explodes when it contacts each player. |grouprole EVERYONE
|tip Phantasmal Winds will push you towards the edge of the platform. Simply walk against it. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	45.2,76.9	57.3,76.7	61.8,83.1
Follow the path |goto Hellfire Citadel/6 61.8,83.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	42.3,8.1	42.5,25.7	52.2,25.5
path	61.1,26.5	61.0,41.7
Follow the path |goto Hellfire Citadel/8 61.0,41.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Soulbound Construct##90296 |goto Hellfire Citadel/8 59.0,54.1
_TANK:_ |grouprole TANK
|tip During phase one, tank swap when the Shattered Defenses debuff starts causing you excessive damage. |grouprole TANK
|tip In phase two, one tank should control the Soulbound Construct, while the other should pick up adds. |grouprole TANK
|tip The Construct tank should place Felblaze Charge to limit the movement of adds coming from the portals. |grouprole TANK
|tip The Construct tank should use Volatile Fel Orb to damage those adds. |grouprole TANK
|tip The Construct tank should use Fel Prison to preven the Haunting Souls from reaching their targets. |grouprole TANK
|tip The Construct tank should spam Reverberating Blow on Soul of Socrethar. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Crystalline Fel Prisons quickly. |grouprole DAMAGE
|tip If affected by Gift of the Man'ari, stand at least 8 yards away from other players. |grouprole DAMAGE
|tip Interrupt Exert Dominance whenever it is cast. |grouprole DAMAGE
|tip Ranged DPS should quickly kill Haunting Souls. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Shadow Word: Agony from the add tank during phase 2. |grouprole HEALER
|tip If affected by Gift of the Man'ari, stand at least 8 yards away from other players. |grouprole HEALER
|tip Prepare for heavy raid damage during Apocalypse. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from Haunting Souls if fixated. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	56.8,58.9	56.8,69.1	55.5,80.8
path	45.9,81.0	42.5,74.2	37.5,70.0
Follow the path |goto Hellfire Citadel/8 37.5,70.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tyrant Velhari##93439 |goto Hellfire Citadel/8 29.3,50.4
_TANK:_ |grouprole TANK
|tip One tank should tank the add that spawns during the current phase. |grouprole TANK
|tip Tank swap at 3-6 stacks of Seal of Decay depending on gear level and healers. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Cleave the Ancient Enforcer during phase one. Just make sure it dies before the next phase starts. |grouprole DAMAGE
|tip The add that spawns is top priority in the last 2 phases of the fight. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Outheal Touch of Harm. It will absorb healing up to it's capacity. If the target is about to die, dispel it. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stack in the big circle to split the damage of Edict of Condemnation. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Hellfire Citadel - Bastion of Shadows_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - The Black Gate (LFR)",{
mapid=670,
lfgid=986,
achieveid={10019},
patch='60200',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HFC, LFR, Draenor, TBG, Tanaan, Jungle"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel - The Black Gate raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for The Black Gate
Enter the Fifth wing of Hellfire Citadel |goto Hellfire Citadel/10 40.1,51.0 < 100 |noway |c
confirm
step
kill Archimonde##91331 |goto Hellfire Citadel 39.4,51.4
Phase 1:
_TANK:_ |grouprole TANK
|tip Be sure to pick up Deathcallers as they come out. |grouprole TANK
|tip Be sure to taunt swap on the boss depending on who is tanking the deathcaller. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Watch out for the tank that has the deathcaller add, they will take more and more damage the longer its up. |grouprole HEALER
|tip Look out for people that stand in Allure of Flame, the more stacks they have the more damage they will take. |grouprole HEALER
|tip Desecrate does raid wide damage every 3 seconds watch the raids health. |grouprole HEALER
|tip If you get targeted by doomfire move out of the group. |grouprole HEALER
|tip Ranged should spread out 8 yards for Shadow Fel Burst, this ability will target one person and knock them and anyone around them up in the air. |grouprole HEALER
|tip The Shadow Fel Burst will make a purple circle under the targeted person or people, every other ranged not targeted by this ability should run on top of this circle to catch the people falling down. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip The number 1 priority for dps in this phase is to kill the Doomfires as soon as they spawn. |grouprole DAMAGE
|tip If you get targeted by doomfire move out of the group. |grouprole DAMAGE
|tip Be sure to kill Deathcallers as soon as possible. |grouprole DAMAGE
|tip Ranged should spread out 8 yards for Shadow Fel Burst, this ability will target one person and knock them and anyone around them up in the air. |grouprole DAMAGE
|tip The Shadow Fel Burst will make a purple circle under the targeted person or people, every other ranged not targeted by this ability should run on top of this circle to catch the people falling down. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to move when Allure of Flame comes out, A simple back and forth method works wonders. |grouprole EVERYONE
|tip Dont stand in Desecrate when it appears it will do massive damage and knock you back in its area. |grouprole EVERYONE
confirm
step
kill Archimonde##91331 |goto Hellfire Citadel/10 58.4,53.3
Phase 2:
_TANK:_ |grouprole TANK
|tip Once again be sure to pick up the adds that come out. |grouprole TANK
|tip Be sure to taunt swap on the boss depending on who is tanking the deathcaller. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole HEALER
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole HEALER
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole HEALER
|tip Watch out for the raid when Shackles of Torment are broken. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the adds as soon as they come out. |grouprole DAMAGE
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole DAMAGE
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole DAMAGE
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip During this phase everyone should be be stacked on the boss this will make the adds that come out more easy to kill. |grouprole EVERYONE
|tip Once again be sure to move when Allure of Flame comes out. |grouprole EVERYONE
|tip Deathstalkers will be one of the adds that spawn during this phase they will target a random player and teleport on them then start casting a Consume Magic, This ability will do damage in a circle around the mob and interupt anyone casting inside the cirlce. |grouprole EVERYONE
confirm
step
Phase 3:
_TANK:_ |grouprole TANK
|tip The tank tanking the boss soon after phase 3 begins will get a debuff called Nether Banish, after 8 seconds the tank and everyone within 8 yards will go into the Nether. |grouprole TANK
|tip When in the Nether get aggro on the Nethered Shadowwalker, once this add is dead you will either get teleported out or you will have to click the swirling bubble that it creates to exit. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip This phase is a very healing intensive phase watch the entire raid. |grouprole HEALER
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole HEALER
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole HEALER
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole HEALER
|tip Watch out for the raid when Shackles of Torment are broken. |grouprole HEALER
|tip During Rain of Chaos the entire raid will be taking a large amount of damage it is suggested to keep big healing cds for when this happens. |grouprole HEALER
|tip Also watch people getting hit be Living Shadows these people will get hit extremely hard and get a healing debuff. |grouprole HEALER
|tip Watch who ever is tanking the Infernal Doombringers as they will take chunks of damage. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole DAMAGE
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole DAMAGE
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole DAMAGE
|tip When inside the Nether be sure to kill the Void Stars that spawn asap, this is your number one priority. |grouprole DAMAGE
|tip When outside the Nether there are adds that spawn from where the Nether was formed, these adds called Living Shadows will target a random player outside and start running towards them. These need to be killed before hitting the player, they can be stunned and slowed and don't have to much hp. |grouprole DAMAGE
|tip When outside the Nether when the boss hits 25 percent hp Rain of Chaos will start happening, when this happens green circles will appear on the ground in random places, some of them will spawn an add called Infernal Doombringer, these adds need to be killed as soon as they come out and be spread out from each other as they heal themselves if they are close proximity to one another. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip It is recommended that when the Nether Banish goes out that one tank, one healer, and 4-6 dps go down to the Nether depending on your dps. |grouprole EVERYONE
|tip When in the Nether be sure not to get hit by void stars they will knock you off the edge. |grouprole EVERYONE
|tip When in the Nether don't stand in Nether Storm these are circles on the groud and deal damage. |grouprole EVERYONE
|tip When in the Nether be sure to leave the Nether when the Shadowed Nethewalker dies. |grouprole EVERYONE
|tip When outside the Nether don't stand in the green circles during Rain of Chaos, they deal massive damage. |grouprole EVERYONE
|tip Try to be far away from the Nether portals as they spawn Living Shadows that do a lot of damage and give you a healing debuff if they hit you. |grouprole EVERYONE
|tip If any less then three people go into the Nether then the boss will heal. |grouprole EVERYONE
|tip Infernal Doombringers can be stunned, and if they live to long they will start casting Hellfire which will deal a very high amount of damage to all players within 40 yards every second, this is basically a wipe if they start casting. |grouprole EVERYONE
|tip Use Bloodlust/Heroism/Timewarp in the final phase After the first Rain of Chaos. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Hellfire Citadel - The Black Gate_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Destructor's Rise (LFR)",{
mapid=669,
lfgid=985,
achieveid={10020},
patch='60200',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HFC, DR, LFR, DR, Draenor, Tanaan, Jungle"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel - Destructor's Rise raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Destructor's Rise
Enter the Fourth wing of Hellfire Citadel |goto Hellfire Citadel/6 44.4,48.2 |noway |c
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	44.4,48.3	47.2,43.4	50.0,32.6
Follow the path |goto Hellfire Citadel/6 50.0,32.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fel Lord Zakuun##89890 |goto Hellfire Citadel/6 50.0,19.9
_TANK:_ |grouprole TANK
|tip Tank swap after each Soul Cleave. You may need to use a cooldown to mitigate the damage. |grouprole TANK
|tip Move out of waves from Wake of Destruction and jump over Rings of Destruction. |grouprole TANK
|tip Keep Zakuun at least 20 yards away from Fel Crystals. |grouprole TANK
|tip During Phase 2, stack together to split Heavy Handed damage. Use cooldowns to mitigate the damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When affected by Latent Energy, stay out of Rumbling Fissures and intercept waves from Wake of Destruction. |grouprole DAMAGE
|tip When not affected by Latent Energy, stay out of waves from Wake of Destruction and move into Rumbling Fissures. |grouprole DAMAGE
|tip When debuffed with Befouled, move at least 8 yards away from other players. |grouprole DAMAGE
|tip If targeted by Seed of Destruction, move away from other Seed targets and from Fel Crystals. Stand still when the debuff expires. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use raid cooldowns during Disarmed and Enrage. |grouprole HEALER
|tip Befouled players will need extra healing. |grouprole HEALER
|tip When affected by Latent Energy, stay out of Rumbling Fissures and intercept waves from Wake of Destruction. |grouprole HEALER
|tip When not affected by Latent Energy, stay out of waves from Wake of Destruction and move into Rumbling Fissures. |grouprole HEALER
|tip When debuffed with Befouled, move at least 8 yards away from other players. |grouprole HEALER
|tip If targeted by Seed of Destruction, move away from other Seed targets and from Fel Crystals. Stand still when the debuff expires. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp near the end of the fight during Enrage. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	49.8,27.5	50.4,39.8	57.4,46.5
path	68.1,44.6	78.7,44.4	88.1,51.3
path	Hellfire Citadel/7 40.1,50.7
Follow the path |goto Hellfire Citadel/7 40.1,50.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Xhul'horac##93068 |goto Hellfire Citadel/7 53.2,50.9
_TANK:_ |grouprole TANK
|tip During Phase 1 and 2, one tank should pick up the large add and one should tank Xhul'horac. |grouprole TANK
|tip The add tank should use a cooldown for Withering Gaze and Felblaze Flurry. |grouprole TANK
|tip The Xhul'horac tank should use a cooldown for Fel Strike and Void Strike. |grouprole TANK
|tip During the last two phases, one tank should taunt after each Fel Strike and the other after each Void Strike. |grouprole TANK
|tip Stun and interrupt Wild Pyromaniacs whenever possible. |grouprole TANK
|tip Keep Xhul'horac away from nearby Chaotic Felblaze or Creeping Void patches. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip DPS priority is Wild Pyromaniac > Unstable Voidfiend > Vanguard Akkelion/Omnus > Xhul'horac. |grouprole DAMAGE
|tip Stun and interrupt Wild Pyromaniacs. |grouprole DAMAGE
|tip Run to the edge of the room when effected by Fel Surge or Void Surge. |grouprole DAMAGE
|tip When affected by Chains of Fel, run away from other chained players. |grouprole DAMAGE
|tip Move out of the purple pool if targeted by Volatile Voidstep. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During Phase 1 and 2, the boss tank will need extra healing during Fel Strike and Void Strike. |grouprole HEALER
|tip Healing is very chaotic during this fight, with a lot of DoT's and direct AoE damage. |grouprole HEALER
|tip Run to the edge of the room when effected by Fel Surge or Void Surge. |grouprole HEALER
|tip When affected by Chains of Fel, run away from other chained players. |grouprole HEALER
|tip Move out of the purple pool if targeted by Volatile Voidstep. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
Use Heroism/Bloodlust/Time Warp during the last phase of the fight. |grouprole EVERYONE
confirm
step
Click the purple portal |goto Hellfire Citadel/7 48.3,50.7 |n
Take the portal to Mannoroth's platform |goto Hellfire Citadel/9 51.0,25.2 |noway |c
step
kill Mannoroth##91349
_TANK:_ |grouprole TANK
|tip During Phase 1, the Doom Lord needs to be tanked. |grouprole TANK
|tip During Phase 2, position Mannoroth with your back to the green Fel Spire. |grouprole TANK
|tip During Glaive Combo, the active tank should take the Glaive Thrust and Massive Blast, then the second tank should taunt for the last Glaive Thrust. |grouprole TANK
|tip No tank can take two Massive Blasts in a row. Use cooldowns for Glaive Thrust. |grouprole TANK
|tip During Phase 4, turn Mannoroth so that his back is towards the edge of the platform. Empowered Massive Blast will knock you back, still on the platform. |grouprole TANK
|tip One tank should stand at Mannoroth's side when not tanking during Phase 4 |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If affected by Curse of the Legion in Phase 1, run to the tank to be dispelled. |grouprole DAMAGE
|tip When affected by Mark of Doom in Phase 1, run away from the group and find a way to take damage to detonate it. Make sure you have high health. |grouprole DAMAGE
|tip During Phase 2 and 3, ranged DPS should kill Dread Infernals, while melee DPS should kill Fel Imps. |grouprole DAMAGE
|tip Stay out of areas targeted on the ground. |grouprole DAMAGE
|tip During Shadowforce, use movement abilities to avoid being pushed off the platform. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Curse of the Legion when the player is near a tank. |grouprole HEALER
|tip Curse of the Legion and Mark of Doom targets will require extra healing. |grouprole HEALER
|tip Glaive Combo will deal heavy damage to the tanks. |grouprole HEALER
|tip Heavy raid damage occurs during Fel Hellstorm, Mannoroth's Gaze, Empowered Shadowforce, and Empowered Felseeker. |grouprole HEALER
|tip If affected by Curse of the Legion in Phase 1, run to the tank to be dispelled. |grouprole HEALER
|tip When affected by Mark of Doom in Phase 1, run away from the group and find a way to take damage to detonate it. Make sure you have high health. |grouprole HEALER
|tip Stay out of areas targeted on the ground. |grouprole HEALER
|tip During Shadowforce, use movement abilities to avoid being pushed off the platform. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the final phase, after the first Empowered Shadowforce. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Hellfire Citadel - Destructor's Rise_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Halls of Blood (LFR)",{
mapid=665,
lfgid=983,
achieveid={10024},
patch='60200',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HFC, LFR, Draenor, HoB, Tanaan, Jungle"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel - Halls of Blood raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Halls of Blood
Enter the Second wing of Hellfire Citadel |goto Hellfire Citadel/5 81.6,11.8 |noway |c
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	81.6,11.8	80.7,33.1	72.9,33.8
path	71.3,43.3
Follow the path |goto Hellfire Citadel/5 71.3,43.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gurtogg Bloodboil##92146 |goto Hellfire Citadel/5 71.5,80.1
kill Dia Darkwhisper##92144 |goto Hellfire Citadel/5 71.5,80.1
kill Blademaster Jubei'thos##92142 |goto Hellfire Citadel/5 71.5,80.1
_TANK:_ |grouprole TANK
|tip One tank should tank Dia Deathwhisper, while the other tanks the remaining bosses. |grouprole TANK
|tip The Dia tank should use cooldowns during Nightmare Visage. |grouprole TANK
|tip The Bloodboil tank should use cooldowns during Acidic Wound. |grouprole TANK
|tip During Fel Rage, the Gurtogg tank should not chase him. This will allow stacks of Acidic Wound to drop. |grouprole TANK
|tip Move the boss away from Reap pools. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Mirror Images of Jubei'thos quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players affected by Fel Rage will require extensive healing. |grouprole HEALER
|tip The Gurtogg tank will need heavy healing when stacks of Acidic Wound build up. |grouprole HEALER
|tip The Dia tank will need heavy healing during Nightmare Visage. |grouprole HEALER
|tip Dispel Mark of the Necromancer when the player gains the red version of the debuff. |grouprole HEALER
|tip Use raid cooldowns for each "ultimate" ability. These occur roughly 75 seconds apart. |grouprole HEALER
|tip When Dia reaches 30%, dispel Mark of the Necromancer aggressively.
_EVERYONE:_ |grouprole EVERYONE
|tip Kill Gurtogg, then Jubei'thos, then Dia. |grouprole EVERYONE
|tip Move away from Fel Blade and Wailing Horrors. |grouprole EVERYONE
|tip If affected by Mark of the Necromancer, move out of the raid to drop the Reap pool during Reap. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when Bloodboil is under 30% health. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	65.8,72.6	57.7,79.6	46.4,79.6
path	45.9,67.7	40.0,64.5	17.3,64.9
path	12.0,56.5	12.2,36.1	24.2,34.2
Follow the path |goto Hellfire Citadel/5 24.2,34.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kilrogg Deadeye##90378 |goto Hellfire Citadel/5 51.0,33.7
_TANK:_ |grouprole TANK
|tip Use active mitigation when Kilrogg casts Shred Armor. |grouprole TANK
|tip Drag the boss away from Blood Globules and Fel Blood Globules. |grouprole TANK
|tip Each time a Hulking Terror spawns, tank swap. |grouprole TANK
|tip Face Hulking Terrors away from the group, and drag them away when they are about to die. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Ranged DPS should prioritize damage on Blood Globules. |grouprole DAMAGE
|tip Melee DPS should focus on killing Hulking Terrors. |grouprole DAMAGE
|tip When targeted by Heart Seeker, move far away from Kilrogg. |grouprole DAMAGE
|tip Designated raid members should step into the green runes during Vision of Death. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use healing cooldowns during Death Throes. |grouprole HEALER
|tip Use external defensive cooldowns on the Kilrogg tank during Death Throes. |grouprole HEALER
|tip Single-target heal the player targeted by Heart Seeker. |grouprole HEALER
|tip When targeted by Heart Seeker, move far away from Kilrogg. |grouprole HEALER
|tip Designated raid members should step into the green runes during Vision of Death. |grouprole HEALER
Vision of Death Team:
|tip Players will become more powerful in their role with each demon killed. This buff will last when you are transported out.
|tip Defeat as many demons as possible before being automatically transported out.
|tip Upon returning, Healers should stand near the tanks to clear Fel Corruption and use their cooldowns during Death Throes. |grouprole HEALER
|tip Upon returning, DPS should focus all damage on Kilrogg until Undying Resolve fades. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Hulking Terrors when casting Rending Howl. |grouprole EVERYONE
|tip Use defensive cooldowns during Death Throes. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	53.4,33.6	66.7,33.6	80.9,33.6
Follow the path |goto Hellfire Citadel/5 80.9,33.6 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/2
path follow smart; loop off; ants curved; dist 15
path	72.4,71.5	77.8,59.6	78.1,46.3
path	65.3,41.8	55.1,47.6	38.7,48.0
path	30.7,63.1	19.2,64.6
Follow the path |goto Hellfire Citadel/2 19.2,64.6 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gorefiend##91809 |goto Hellfire Citadel/2 17.3,44.5
_TANK:_ |grouprole TANK
|tip Tank swap when the current tank gains Shadow of Death. |grouprole TANK
|tip Inside the stomach, pick up the Enraged Spirit. Interrupt Bellowing Shoult and move out of Fel Fury. |grouprole TANK
|tip Swap tanking the Gorebound Spirit at 8-10 stacks of Fel Flames. |grouprole TANK
|tip Interrupt the Gorebound Spirit's Bellowing Shout. |grouprole TANK
|tip Soak as many Unstable Souls as possible during Feast of Souls. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus on killing adds rather than Gorefiend. Gorefiend takes more damage during Feast of Souls. |grouprole DAMAGE
|tip When targeted by Touch of Doom, run to the edge of the room until it expires. |grouprole DAMAGE
|tip Stay spread out. Move out of Crushing Darkness. |grouprole DAMAGE
|tip Kite the Gorebound Construct if targeted by Hunger for Life. |grouprole DAMAGE
|tip While inside Gorefiend's stomach, kill Constructs and help kill the Enraged Spirit. |grouprole DAMAGE
|tip Use DPS cooldowns during Feast of Souls after the adds are dead. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Gorebound Spirit tank will take heavy damage. |grouprole HEALER
|tip Consistent raid damage will persist throughout the entire fight. |grouprole HEALER
|tip While inside Gorefiend's stomach, heal the Tortured Essences. |grouprole HEALER
|tip When targeted by Touch of Doom, run to the edge of the room until it expires. |grouprole HEALER
|tip Stay spread out. Move out of Crushing Darkness. |grouprole HEALER
|tip Use raid cooldowns to mitigate damage from Feast of Souls. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Exit Gorefiend's stomach just before Digest expires. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the first Feast of Souls Mechanic. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Hellfire Citadel - Halls of Blood_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Hellbreach (LFR)",{
mapid=661,
lfgid=982,
achieveid={10023},
patch='60200',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HFC, LFR, Draenor, Tanaan, Jungle"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel - Hellbreach raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Hellbreach
Enter the First wing of Hellfire Citadel |goto Hellfire Citadel/1 69.6,43.5 |noway |c
confirm
step
kill Siegemaster Mar'tak##95068 |goto Hellfire Citadel/1 55.2,48.1
_TANK:_ |grouprole TANK
|tip One tank should take Siegemaster Mar'tak, while the other should pick up the adds. |grouprole TANK
|tip When the Hulking Berserker spawns, move it away from Mar'tak until Inspiring Presence fades. |grouprole TANK
|tip Tank swap after Mar'tak flees, and at 2 stacks of Slam after. |grouprole TANK
|tip Keep Gorebound Felcasters away from Fel-Infused Siege Weapons. Siege Weapons cannot be tanked. |grouprole TANK
|tip Move adds away from bombs to lower the damage melee DPS take. |grouprole TANK
|tip Use a cooldown if Slam stacks get too high. |grouprole TANK
|tip Move out of Shockwave from the Felfire Crusher. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Burn down Siege Weapons quickly. |grouprole DAMAGE
|tip Stay spread out to minimize damage from Howling Axe and Conducted Shock Pulse. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Hulking Berserkers will deal heavy damage to the tank. |grouprole HEALER
|tip Extra healing will be needed on players affected by Howling Axe. |grouprole HEALER
|tip Raid damage as a whole will be unpredictable and bursty. |grouprole HEALER
|tip Cooldowns are beneficial when Felcasters transform into Gorebound Terrors. |grouprole HEALER
|tip Dispel Conducted Shock Pulse from stunned players. |grouprole HEALER
|tip Stay spread out to minimize damage from Howling Axe and Conducted Shock Pulse. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in areas targeted by Capsule Impact. This will deal damage before the adds come out. |grouprole EVERYONE
|tip Interrupt Gorebound Felcasters' Felfire Volley and Contracted Engineers' Conducted Shock Pulse. |grouprole EVERYONE
|tip Move out of Shockwave and bombs. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp at the beginning of the fight. |grouprole EVERYONE
confirm
step
kill Iron Reaver##90284 |goto Hellfire Citadel/1 55.2,48.1
_TANK:_ |grouprole TANK
|tip Tank swap when the active tank is targeted by Artillery. |grouprole TANK
|tip Artillery will overlap during each Ground Operations phase. Do not run out until the first tank returns. This will leave you with around 5 seconds to get out of the raid. |grouprole TANK
|tip Use a cooldown to Mitigate Artillery's explosion. |grouprole TANK
|tip During the Air Operations Phase, kill Volatile Firebombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Use cooldowns for the Ground Operations phase. Iron Reaver is not attackable during Air Operations. |grouprole DAMAGE
|tip Spread out if you are ranged. |grouprole DAMAGE
|tip Kill Volatile Firebombs quickly during the Air Operations phase. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Place shields and HoTs on tanks targeted by Artillery. |grouprole HEALER
|tip Raid cooldowns are useful for Pounding casts. |grouprole HEALER
|tip Healing is very hectic and spikey for this encounter. |grouprole HEALER
|tip Dispel Blitz debuffs quickly. |grouprole HEALER
|tip During the Air Operations phase, DPS Volatile Firebombs when healing is light. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in front of Iron Reaver during Barrage and Blitz. |grouprole EVERYONE
|tip Do not stand in fire patches on the ground. |grouprole EVERYONE
|tip Run to a far edge (40+ yards away) when targeted by Artillery.|grouprole EVERYONE
confirm
step
map Hellfire Citadel/1
path follow smart; loop off; ants curved; dist 15
path	49.5,50.6	36.6,50.9	Hellfire Citadel/2 78.7,45.9
path	Hellfire Citadel/2 77.8,34.4	Hellfire Citadel/2 72.1,21.4
path	Hellfire Citadel/3 65.2,78.5	Hellfire Citadel/3 51.0,72.3
path	Hellfire Citadel/4 60.4,89.2
Follow the path |goto Hellfire Citadel/4 60.4,89.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kormrok##90776 |goto Hellfire Citadel/4 52.3,48.8
_TANK:_ |grouprole TANK
|tip Tank Kormok near the pool you wish to activate. |grouprole TANK
|tip Be wary of the knockback from Swat, as this can knock you into a pool. |grouprole TANK
|tip Move Kormrok out of the blast radius of Explosive Burst. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Use cooldowns for AoEing Grasping Hands. |grouprole DAMAGE
|tip Kill the Crushing hand to free the tank. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use raid cooldowns for Pound and Grasping Hands. |grouprole HEALER
|tip Each leap, Kormrok will deal damage to the raid. |grouprole HEALER
|tip Pound will occur 10 seconds after the second Grasping Hands. This will deal heavy raid damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Kormok switches abilities every 90 seconds. |grouprole EVERYONE
|tip Spread out and use defensive cooldowns during Explosive Energy and trigger the Runes. |grouprole EVERYONE
|tip During Foul Energy, clump behind the boss and AoE the Grasping Hands. |grouprole EVERYONE
|tip During Shadow Energy, move away from pools and dodge the waves of shadow energy. |grouprole EVERYONE
|tip Spread out at least 5 yards during Pound. |grouprole EVERYONE
|tip Do not stand in pools. They deal massive damage that becomes fatal in seconds. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Hellfire Citadel - Hellbreach_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Highmaul - Arcane Sanctum (LFR)",{
mapid=610,
lfgid=850,
achieveid={8987},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HM, AS, High, Maul, LFR"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Highmaul - Arcane Sanctum raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Arcane Sanctum
Enter the Second wing of Highmaul |goto Highmaul/3 38.9,38.7 |noway |c
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	54.8,74.3	49.1,86.8	44.2,86.0
path	40.0,81.5
Follow the path |goto Highmaul/1 40.0,81.5 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tectus##78948 |goto Highmaul/1 37.00,74.80
_TANK:_ |grouprole TANK
|tip Face Night-Twisted Berserkers and Earthshapers away from the raid but close together. |grouprole TANK
|tip When Tectus shatters into two shards, each tank should pick one up. |grouprole TANK
|tip When a shard shatters into motes, its tank should pick up all 4 motes. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip During Tectonic Upheaval, focus DPS on the lowest health target. |grouprole DAMAGE
|tip Applying DoT's to all targets will help curb Accretion. |grouprole DAMAGE
|tip Cleave and stun Berserkers and Earthshapers often. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage is heavy during this fight. |grouprole HEALER
|tip The raid will take heavy damage during Tectonic Upheaval. |grouprole HEALER
|tip Healers need to stay stacked and move as a group to avoid Earthen Pillar. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of Fracture to avoid damage. |grouprole EVERYONE
|tip If you are targeted by Crystalline Barrage, run away from the group. |grouprole EVERYONE
|tip Use cooldowns for Tectonic Upheaval. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the split into motes occurs. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	36.0,73.7	35.0,67.1	36.4,60.7
path	30.5,60.5
Follow the path and enter the portal |goto Highmaul/4 82.9,90.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	82.9,90.3	87.0,75.2	83.6,62.3
path	68.0,42.6
Follow the path |goto Highmaul/4 68.0,42.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Pol##78238 |goto Highmaul/4 55.10,36.30
kill Phemos##78237 |goto Highmaul/4 55.10,36.30
_TANK:_ |grouprole TANK
|tip Tank both close together for cleaves. Never tank swap Pol and Phemos. |grouprole TANK
|tip Position the bosses behind one of the two weapons after Quake. |grouprole TANK
|tip The Phemos tank should pull him away a few seconds before Whirlwind. |grouprole TANK
|tip The Phemos tank should use cooldowns during Whirlwind and when he is buffed with Double Slash. |grouprole TANK
|tip The Pol tank should use a cooldown for Shield Bash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Multi-DoT and cleaves are beneficial, as their health pool is shared. |grouprole DAMAGE
|tip Melee should stay with Pol when Phemos is casting Whirlwind, and stay with Phemos when Pol uses Shield Charge. |grouprole DAMAGE
|tip Stack on the Phemos tank to split damage from Enfeebling Roar. |grouprole DAMAGE
|tip Move out of the second and third waves of Pulverize. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage will be high for the duration of the encounter. |grouprole HEALER
|tip Raid cooldowns are useful during Enfeebling Roar and Blaze. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Dodge as much of the Blaze fire on the ground as possible. |grouprole EVERYONE
|tip Avoid Pol's Shield Charge. |grouprole EVERYONE
|tip Use cooldowns if you gain high stacks of Blaze. |grouprole EVERYONE
|tip Stop casting spells during Interrupting Shout. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp as soon as the bosses are in position. |grouprole EVERYONE
confirm
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	56.0,34.5	51.4,41.7	40.4,37.2
path	40.0,43.3	46.3,50.7	43.9,55.0
Follow the path |goto Highmaul/4 43.9,55.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ko'ragh##79015 |goto Highmaul/4 37.80,65.4
_TANK:_ |grouprole TANK
|tip Tank swap whenever the current tank is affect by Expel Magic: Arcane. The affected tank needs to run away from the raid. |grouprole TANK
|tip Move Ko'ragh away from Expel Magic: Frost orbs and Suppression Fields. |grouprole TANK
|tip Pick up Volatile Anomalies and tank them inside of a Suppression Field. |grouprole TANK
|tip Do not follow Ko'ragh to the center of the room when he leaps. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip One DPS should soak each available Rune of Nullification for as long as they can. |grouprole DAMAGE
|tip Damage reduction cooldowns are useless for mitigating Rune damage. |grouprole DAMAGE
|tip When you have a large Barrier from Rune of Nullification, you may begin to soak Overflowing Energy orbs by standing underneath of them. |grouprole DAMAGE
|tip Each DPS should soak only one rune for the encounter. The idea is to have several players with Barrier active. |grouprole DAMAGE
|tip Avoid killing Volatile Anomalies until they are within a Suppression Field.
_HEALER:_ |grouprole HEALER
|tip The Ko'ragh tank will take heavy damage. |grouprole HEALER
|tip Use raid cooldowns to mitigate Expel Magic: Shadow. |grouprole HEALER
|tip Players affected by Caustic Energy will take extreme damage and reduced healing. |grouprole HEALER
|tip Players soaking Runes of Nullification will receive no benefit from damage reduction cooldowns. |grouprole HEALER
|tip Do not dispel Expel Magic: Fire when players are grouped up. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out of Expel Magic: Fire. |grouprole EVERYONE
|tip Move away from Expel Magic: Frost orbs. |grouprole EVERYONE
|tip Avoid standing in Suppression Fields. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Highmaul - Arcane Sanctum_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Highmaul - Imperator's Rise (LFR)",{
mapid=615,
lfgid=851,
achieveid={8988},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HM, IR, High, Maul, LFR, Draenor, Nagrand"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Highmaul - Imperator's Rise raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Imperator's Rise
Enter the Third wing of Highmaul - Imperator's Rise |goto Highmaul/6 47.1,29.5 |noway |c
confirm
step
Go through the doors |goto Highmaul/6 45.8,60.6 < 12 |noway |c
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Imperator Mar'gok##77428 |goto Highmaul/6 45.3,75.0
_TANK:_ |grouprole TANK
|tip Run at least 35 yards way from the raid when affected by Mark of Chaos. The offtank should taunt Mar'gok. If you are rooted with Mark of Chaos, call it out so the raid can run away. |grouprole TANK
|tip Tank swap about halfway through Mark of Chaos casts. |grouprole TANK
|tip The offtank should taunt Arcane Aberrations into melee range to be killed. |grouprole TANK
|tip During the first intermission, tank the Volatile Anomalies away from the Warmages. |grouprole TANK
|tip During the second intermission, tank swap the Reaver after Crush Armor/Kick to the Face. |grouprole TANK
|tip During the last phase, avoid running through Orbs of Chaos and pick up Arcane Remnants. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Arcane Aberrations quickly. |grouprole DAMAGE
|tip Avoid coming in contact with Destructive Resonance. |grouprole DAMAGE
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |grouprole DAMAGE
|tip Move forward through Force Nova to reduce damage taken. |grouprole DAMAGE
|tip During intermissions, ranged DPS should kill the Gorian Reaver and Volatile Anomalies, while melee DPS should kill Gorian Warmages. |grouprole DAMAGE
|tip Interrupt the Warmages' Nether Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks and players affected by Arcane Wrath or Fixated will need strong single-target healing. |grouprole HEALER
|tip Raid healing is required to deal with Force Nova and Destabilize from Volatile Anomalies. |grouprole HEALER
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Orbs of Chaos. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the second intermission when the Gorian Reaver is picked up. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Highmaul - Imperator's Rise_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Highmaul - Walled City (LFR)",{
mapid=611,
lfgid=849,
achieveid={8986},
patch='60001',
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HM, WC, High, Maul, LFR, Draenor, Nagrand"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Highmaul - Walled City raid.",
},[[
step
talk Seer Kazal##94870 |goto Lunarfall/0 33.12,37.14
Queue yourself for Wailed City
Enter the first wing of Highmaul |goto Highmaul/2 36.5,35.5 |noway |c
confirm
step
talk Gharg##84971
Tell him: "_We are ready, Gharg!_"
Ride the elevator to the arena |goto Highmaul/3 49.3,51.4 |noway |c
step
kill Kargath Bladefist##78714 |goto Highmaul/3 54.70,57.60
_TANK:_ |grouprole TANK
|tip Tank Kargath in the center of the arena. Cooldowns are useful for Impale, which deals heavy damage and leaves Open Wounds. |grouprole TANK
|tip The tank with the highest Open Wounds stack is thrown into the stands. |grouprole TANK
|tip After returning from the stands, the tank should taunt Kargath. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip You may be thrown into the stands by Chain Hurl. |grouprole DAMAGE
|tip If you are targeted by Berserker Rush, kite him through one of the flame pillars. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage from Impale, especially if they are already affected by Open Wounds. |grouprole HEALER
|tip Players caught in the path of Berserker Rush will take very heavy or fatal damage. |grouprole HEALER
|tip If targeted by Berserker Rush, kite Kargath through a flame pillar. |grouprole HEALER
|tip You may be thrown into the stands by Chain Hurl. |grouprole HEALER
Chain Hurl Team:
|tip One tank, one healer, and three DPS (strong AoE).
|tip Pull as many spectators as you can handle and frequently AoE/CC them down.
|tip Kill Bileslingers and Iron Bombers first. Bombers explode upon death - move away.
_EVERYONE:_ |grouprole EVERYONE
|tip Use a cooldown if affected by Iron Bomb. |grouprole EVERYONE
|tip Avoid areas targeted by Mauling Brew. |grouprole EVERYONE
confirm
step
map Highmaul/3
path follow smart; loop off; ants curved; dist 15
path	49.2,51.3	Highmaul/1 55.2,74.4
path	Highmaul/1 55.4,67.1	Highmaul/1 56.3,62.3
Follow the path, dropping down |goto Highmaul/1 56.3,62.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Butcher##77404 |goto Highmaul/1 57.80,55.0
_TANK:_ |grouprole TANK
|tip Tanks need to stand together to split damage from Heavy Handed. |grouprole TANK
|tip Tank swap at 3-4 stacks of The Cleaver/The Tenderizer. |grouprole TANK
|tip Use avoidance cooldowns to minimize stacks of The Cleaver |grouprole TANK
|tip Use damage reduction cooldowns to survive The Tenderizer, especially during the enrage at 30% |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee must form tight groups to soak Cleave. This leaves Gushing Wounds, dealing bleed damage and instantly killing at 10 stacks. |grouprole DAMAGE
|tip Save DPS cooldowns for 30%, as The Butcher will enrage. |grouprole DAMAGE
|tip Ranged DPS assigned to bait Bounding Cleave must stack quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage as their stacks of The Cleaver/The Tenderizer build up. |grouprole HEALER
|tip Prepare damage reduction cooldowns for 30% when The Butcher enrages. |grouprole HEALER
|tip Players soaking Cleave should be kept topped off to keep up with the damage and bleed. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip The Butcher will use Bounding Cleave immediately following his AoE knockback. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp at 30%. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 15
path	55.2,53.3	49.4,48.4	49.1,41.6
path	52.0,35.0	51.6,26.1
Follow the path |goto Highmaul/1 51.6,26.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brackenspore##78491 |goto Highmaul/1 50.80,16.40
_TANK:_ |grouprole TANK
|tip Face Brackenspore away from the raid to avoid excess damage from Necrotic Breath. |grouprole TANK
|tip Pick up Fungal Flesh-Eaters quickly and interrupt Decay. |grouprole TANK
|tip Do not tank Brackenspore in the water and move him out of Creeping Moss. |grouprole TANK
|tip Tank swap at 4 stacks of Rot. |grouprole TANK
|tip Move Brackenspore to Living and Rejuvinating Mushrooms before they are healed to full. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Fungal Flesh-Eaters quickly and interrupt Decay. |grouprole DAMAGE
|tip Ranged DPS need to kill Spore Shooters and intercept their Spore Shot. |grouprole DAMAGE
|tip Melee DPS need to kill Mind Fungus. |grouprole DAMAGE
|tip Move into Living Mushrooms when Brackenspore cast Infesting Spores. |grouprole DAMAGE
|tip A pair of DPS should use the Blackfuse 9000 Flamethrowers to deal with Creeping Moss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal Living Mushrooms to full when Brackenspore casts Infesting Spores and keep them alive until it is finished. |grouprole HEALER
|tip Heal Rejuvinating Mushrooms to full as quickly as possible and keep them alive. |grouprole HEALER
|tip Tanks take heavy damage, especially from Flesh-Eaters with high stacks of Flesh Eater. |grouprole HEALER
|tip Keep an eye on the DPS assigned to use the Flamethrowers. |grouprole HEALER
|tip Prepare raid cooldowns if there is no Living Mushroom ready for Infesting Spores. |grouprole HEALER
Flamethrowers:
|tip Loot a Flamethrower at the beginning of the fight.
|tip Use the extra action button to prevent the spread of Creeping Moss.
|tip Cancel the Flamethrower ability before it overheats.
_EVERYONE:_ |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp at the beginning of the fight. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Highmaul - Walled City_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Blackrock Foundry - Normal/Heroic",{
mapid=596,
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BRF, BF, Draenor, Gorgrond"},
description="\nThis guide will walk you through the Normal and Heroic versions of the Blackrock Foundry raid.",
},[[
step
Enter Blackrock Foundry |goto Gorgrond/0 51.55,27.27 < 10
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,63.4	44.8,54.9
path	51.8,54.6	56.8,60.2	54.1,68.4
path	47.4,68.4
Follow the path |goto Blackrock Foundry/3 47.4,68.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	62.3,53.7	54.9,53.7	55.5,64.4
path	56.0,79.3	52.4,83.5	47.5,83.9
Follow the path |goto Blackrock Foundry/2 47.5,83.9 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Oregorger##77182 |goto Blackrock Foundry/2 37.10,82.30
_TANK:_ |grouprole TANK
|tip Face Oregorger with his side to the ranged group, not his back or front. |grouprole TANK
|tip When not tanking, stand in the path between Oregorger and the ranged group. |grouprole TANK
|tip The offtank should use a cooldown during Acid Torrent and then taunt immediately after. |grouprole TANK
|tip Pick up Oregorger quickly after the Rolling Fury phase ends. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should avoid standing near Explosive Shards. |grouprole DAMAGE
|tip Ranged DPS should move out of Retched Blackrock puddles. |grouprole DAMAGE
|tip Ranged DPS needs to use a damage reduction cooldown during Acid Torrent. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The offtank will need strong single-target healing during Acid Torrent. |grouprole HEALER
|tip AoE heals will be required for the ranged group follwing each Acid Torrent. |grouprole HEALER
|tip Move out of Retched Blackrock pools. |grouprole HEALER
|tip Be aware of line-of-sight issues during the Rolling Fury phase. |grouprole HEALER
|tip Use healing cooldowns towards the end of the Rolling Fury phase. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Destroy crates and avoid Oregorger during the Rolling Fury phase. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the boss is positioned after the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	46.5,84.0	51.7,83.9	55.5,79.6
path	55.0,62.0	55.0,47.6	56.5,28.6
path	49.9,24.3
Follow the path |goto Blackrock Foundry/2 49.9,24.3 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gruul##76877 |goto Blackrock Foundry/2 39.3,20.5
_TANK:_ |grouprole TANK
|tip Face Gruul away from the raid. |grouprole TANK
|tip During Inferno Slice, face grull towards a group of raid members. Alternate the group every Inferno Slice. |grouprole TANK
|tip Tank swap at 2-3 stacks of Inferno Strike initially, then after Overwhelming Blows falls off for the duration of the fight. |grouprole TANK
|tip Move out of Overhead Smash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stack at your group's designated area. |grouprole DAMAGE
|tip Move out of Cave In and Overhead Smash. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The group soaking Inferno Slice will take heavy damage and suffer a DoT. Keep them topped off. |grouprole HEALER
|tip Tanks will take heavy damage leading up to Destructive Rampage. |grouprole HEALER
|tip Players who fail to move away from the group when affected by Petrify will deal heavy damage to anyone near them. |grouprole HEALER
|tip Stack with your group for Inferno Slice. |grouprole HEALER
|tip Move out of Cave In and Overhead Smash. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from other players when affected by Petrify. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	44.5,23.6	56.0,28.1	55.4,44.1
path	55.1,53.5	60.1,53.7	61.1,64.1
path	67.0,63.8	67.5,54.8	60.7,53.4
Follow the path |goto Blackrock Foundry/2 60.7,53.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Heart of the Mountain##76806 |goto Blackrock Foundry/2 46.1,53.7
_TANK:_ |grouprole TANK
|tip One tank should pick up a Security Guard and a Furnace Engineer and take them to their assigned side. |grouprole TANK
|tip One tank should pick up Foreman Feldspar and take him to their assigned side. |grouprole TANK
|tip Pick up adds and move enemies out of the purple Defense zones. |grouprole TANK
|tip During Phase 2, tank Security Guards and Firecallers slightly away from Primal Elementalists. |grouprole TANK
|tip During Phase 3, move Heart of the Mountain away from patches of Melt. |grouprole TANK
|tip During Phase 3, tank swap at 3 stacks of Heat or when your stacks fall off. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Heat regulators are located on the left and right sides of the furnace. If you have a Bomb, run to them and use your extra action button. |grouprole DAMAGE
|tip If targeted by Rupture, move away from the raid so the Rupture zone is out of the way. |grouprole DAMAGE
|tip Interrupt Engineers' Repair and Feldspar's Pyroclasm. |grouprole DAMAGE
|tip During Phase 2, focus all damage on a Primal Elementalist. Clean up adds with DoTs and cleaves. |grouprole DAMAGE
|tip During Phase 2, move away from the raid if affected by Volatile Fire. |grouprole DAMAGE
|tip During Phase 3, use any available DPS cooldowns. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep an eye on the Heart of the Mountain's Energy bar. Prepare AoE heals when it gets high to counter Blast damage. |grouprole HEALER
|tip Players affected by Bomb will take moderate to heavy damage. |grouprole HEALER
|tip Feldspar's tank will take heavy damage. |grouprole HEALER
|tip Heat regulators are located on the left and right sides of the furnace. If you have a Bomb, run to them and use your extra action button. |grouprole HEALER
|tip If targeted by Rupture, move away from the raid so the Rupture zone is out of the way. |grouprole HEALER
|tip During Phase 2, move away from the raid if affected by Volatile Fire. |grouprole HEALER
|tip During Phase 3, heavy raid damage will occur. Coordinate raid cooldowns with other healers. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move quickly out of Melt during Phase 3. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when adds are in position in Phase 1 after the pull. |grouprole EVERYONE
|tip During phase 2 if a slag elemental is fixated on you be sure to kite it over to a Primal Elementalist then kill the slag elemental once its on top of it, this will destroy the elementalists shield for a short time. |grouprole EVERYONE
|tip Once the shield is down burst down the Primal Elementalist. |grouprole EVERYONE
confirm
step
Head back to the entrance
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	61.2,53.4 < 5	67.3,55.4	 66.1,64.3
path	60.6,61.4	62.5,53.7
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	55.4,66.5	53.0,54.5	32.9,53.8
path	28.6,53.7
Follow the path, riding the elevator to the bottom floor |goto Blackrock Foundry/1 46.9,57.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the door |goto Blackrock Foundry/1 47.5,67.1 < 8 |noway |c
step
kill Hans'gar##76973 |goto Blackrock Foundry/1 47.5,76.4
kill Franzok##76974 |goto Blackrock Foundry/1 47.5,76.4
_TANK:_ |grouprole TANK
|tip While both bosses are active, tank them close together. |grouprole TANK
|tip Use a damage-reduction cooldown to mitigate Crippling Suplex. |grouprole TANK
|tip During the last 15%, alternate cooldowns to stay alive. |grouprole TANK
|tip While only a single boss is active, swap after each Body Slam. |grouprole TANK
|tip Move bosses away from Stamping Presses and Searing Plates. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Make extensive use of cleaves while both bosses are active. |grouprole DAMAGE
|tip Casters should stop casting until Franzok finishes his Disrupting Roar. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use cooldowns on tanks for Crippling Suplex. |grouprole HEALER
|tip While both bosses are active, both tanks will require extensive healing. More so during the final 15%. |grouprole HEALER
|tip Casters should stop casting until Franzok finishes his Disrupting Roar. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Standing between conveyor belts will allow you to remain stationary while the belts are moving. |grouprole EVERYONE
|tip Move away from Searing Plates and Stamping Presses. Standing between belts will not prevent Stamping Press damage! |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp for the last phase, when both bosses are active and the belts are moving. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	47.6,66.0	46.7,61.4	44.2,57.5
path	40.7,58.7	40.5,73.8	35.1,76.7
path	31.0,76.8	25.0,76.8
Follow the path |goto Blackrock Foundry/1 25.0,76.8 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Flamebender Ka'graz##76814 |goto Blackrock Foundry/1 18.8,76.8
_TANK:_ |grouprole TANK
|tip One tank needs to keep Aknor Steelbringer faced away from the raid while he is alive. |grouprole TANK
|tip When Cinder Wolves spawn, a tank needs to pick up the Overheated one and face it away from melee. |grouprole TANK
|tip When the second wolf Overheats, the tanks must swap. |grouprole TANK
|tip Use cooldowns for the last Charring Breath when tanking the Overheated wolf. |grouprole TANK
|tip Following Firestorm when ka'graz has Flamefury, swap at 3-4 stacks of Rising Flames. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus DPS on Aknor Steelbringer until he dies. |grouprole DAMAGE
|tip Avoid standing in Lava Slash and fire lines on the ground. |grouprole DAMAGE
|tip Ranged should spread out at least 6 yards. |grouprole DAMAGE
|tip Move away from Enchanted Armaments. |grouprole DAMAGE
|tip Move away from raid members when affected by Blazing Radiance. |grouprole DAMAGE
|tip Move into melee when targeted by Molten Torrent to split damage. If you have an immunity cooldown, run away and use it. |grouprole DAMAGE
|tip Melee should kill Overheated Cinder Wolves, while ranged should kill regular Cinder Wolves. |grouprole DAMAGE
|tip If Fixated by a wolf, avoid kiting it through other players. |grouprole DAMAGE
|tip Cinder Wolves should be killed within a short time of each other. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Save cooldowns for the Cinder Wolf phases. |grouprole HEALER
|tip Keep melee topped off, especially during Molten Torrent. |grouprole HEALER
|tip Due to Lava Slash and Enchanted Armaments, damage will be spikey and significant. |grouprole HEALER
|tip Players kiting a Cinder Wolf will need extra healing. |grouprole HEALER
|tip Damage-reduction and healing cooldowns are useful during Firestorm. |grouprole HEALER
|tip Spread out at least 6 yards. |grouprole HEALER
|tip Move away from Enchanted Armaments. |grouprole HEALER
|tip Move away from raid members when affected by Blazing Radiance. |grouprole HEALER
|tip Move into melee when targeted by Molten Torrent to split damage. If you have an immunity cooldown, run away and use it. |grouprole HEALER
|tip If Fixated by a wolf, avoid kiting it through other players. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	21.6,76.7	31.1,76.6	31.1,71.1
path	33.1,66.4	33.1,52.2
Follow the path |goto Blackrock Foundry/1 33.1,52.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kromog##77692 |goto Blackrock Foundry/1 33.1,41.3
_TANK:_ |grouprole TANK
|tip Except during Thundering Blows, tanks need to stand close together to split Fists of Stone damage. |grouprole TANK
|tip If no one is in range of Kromog, he will use Stone Breath repeatedly. |grouprole TANK
|tip Tank swap at 3 stacks of Warped Armor. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should be stacked up on one side of the boss while ranged should all stacked at ranged together. |grouprole DAMAGE
|tip After destroying your Grasping Earth, assist healers in killing theirs before DPSing Kromog. |grouprole DAMAGE
|tip Save DPS cooldowns for the 30% Frenzy. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage is heavy, especially during Slam. |grouprole HEALER
|tip Slam deals frequent raid damage. |grouprole HEALER
|tip During stone breath the entire raid takes high damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from rippling smash, he will face the direction he is casting this spell before it goes off. |grouprole EVERYONE
|tip When Kromog casts Rune of Grasping Earth, run into a rune and let a hand grab you. |grouprole EVERYONE
|tip When Thundering Blows ends, kill your Grasping Earth to free yourself. |grouprole EVERYONE
|tip Avoid Rippling Smash and Reverberations on the ground. |grouprole EVERYONE
|tip At 30% health, Kromog will Frenzy. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the 30% Frenzy. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	39.5,44.2	47.1,44.5	48.9,36.2
path	54.0,36.1	56.5,50.1	60.7,52.3
path	58.7,57.3	51.6,57.1
Follow the path, riding the elevator to the top floor |goto Blackrock Foundry/1 46.9,57.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	53.0,42.6
path	57.0,42.2
Follow the path |goto Blackrock Foundry/3 57.0,42.2 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	42.8,84.0	45.7,83.9	45.7,71.7
path	52.3,71.8
Follow the path |goto Blackrock Foundry/4 52.3,71.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Beastlord Darmac##76865 |goto Blackrock Foundry/4 62.8,71.8
_TANK:_ |grouprole TANK
|tip Move Darmac near the beast you want him to mount at 85%, 65%, and 45% health. |grouprole TANK
|tip The offtank should pick up the beasts that spawn in the far right corner and tank them near the boss for cleaves. |grouprole TANK
|tip While active, tank swap Cruelfang at 3 stacks of Rend and Tear. Darmac will continue to do this after being dismounted. |grouprole TANK
|tip While Ironcrusher is active, tank swap at 2 stacks of Crush Armor. |grouprole TANK
|tip While Dreadwing is active, tank swap at 5-10 stacks of Seared Flesh. |grouprole TANK
|tip Inferno Breath and Superheated Shrapnel are random and cannot be aimed. |grouprole TANK
|tip During the final stretch of the fight, tank Darmac near the Pack Beast spawn point at the far right. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Heavy Spears that pin down raid members immediately. |grouprole DAMAGE
|tip AoE the Pack Beasts when they spawn. |grouprole DAMAGE
|tip Apply DoTs when Darmac is preparing to mount a beast. |grouprole DAMAGE
|tip Ranged DPS should remain spread out. |grouprole DAMAGE
|tip When Cruelfang is active and after, melee should move away during Rend and Tear. |grouprole DAMAGE
|tip Tranquilize Savage Howl whenever possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players affected by Rend and Tear, Inferno Breath, Superheated Shrapnel, or Conflagration will need extra healing. |grouprole HEALER
|tip Players who are Pinned Down will require heavy single-target healing. |grouprole HEALER
|tip Dispel Conflagration quickly. |grouprole HEALER
|tip Strong AoE healing is required during Tantrum. |grouprole HEALER
|tip Spread out to minimize damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Do not stand in areas targeted by Heavy Spear. |grouprole EVERYONE
|tip Move out of Inferno Breath and Superheated Shrapnel. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp at after Darmac dismounts the final beast. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	56.3,71.8	46.4,71.5	45.7,55.6
Follow the path |goto Blackrock Foundry/4 45.7,55.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Operator Thogar##76906 |goto Blackrock Foundry/4 45.7,19.4
_TANK:_ |grouprole TANK
|tip Move Thogar to safe tracks to avoid moving trains. |grouprole TANK
|tip Tank swap at 2 stacks of Enkindle. |grouprole TANK
|tip Pick up adds quickly when they jump from the trains. |grouprole TANK
|tip When multiple trains come through, it may be necessary to use a cooldown to deal with higher stacks of Enkindle. |grouprole TANK
|tip Move Thogar away from Prototype Pulse Grenades and Delayed Siege Bombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Adds always take priority over Thogar. |grouprole DAMAGE
|tip Kill priority is as follows: Man-at-Arms, Firemender, Crack-Shot, Raider. |grouprole DAMAGE
|tip Ranged DPS should kill Gunnery Sergeants. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will need heavy healing, especially while adds are active. |grouprole HEALER
|tip Frequent AoE heals are required while a Man-at-Arms is alive. |grouprole HEALER
|tip Anyone standing in Prototype Pulse Grenades or Delayed Siege Bombs will require significant healing. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Throughout the fight, trains will move across the tracks. Avoid standing in their path. |grouprole EVERYONE
|tip Interrupt Firemender's Cauterizing Bolt. |grouprole EVERYONE
|tip Stun adds when possible to reduce damage dealt to the tanks. |grouprole EVERYONE
|tip Move away from the raid and keep moving until Delayed Siege Bomb expires. |grouprole EVERYONE
|tip Move away from Prototype Pulse Grenades and Delayed Siege Bombs. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	45.7,24.2	45.7,43.7	52.1,49.0
path	56.4,49.0
Follow the path and jump down the hole |goto Blackrock Foundry/1 74.9,24.5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Admiral Gar'an##77557, Enforcer Sorka##77231, Marak the Blooded##77477 |goto Blackrock Foundry/1 85.6,28.1
_TANK:_ |grouprole TANK
|tip Admiral Gar'an cannot be tanked.
|tip The Marak tank needs to intercept the Crystallized Blood from Blood Ritual.
|tip When the Maidens reach 100 energy, Marak's tank should use several powerful defensive cooldowns to reduce raid damage from Sanguine Strikes.
|tip Move the bosses away from Dominator Turrets when they spawn.
_DAMAGE:_ |grouprole DAMAGE
|tip The Maidens should be DPSed evenly. Make use of cleaves. |grouprole DAMAGE
|tip Melee DPS should avoid standing in the path of the Blood Ritual target. |grouprole DAMAGE
|tip If targeted by Blood Ritual, move to your assigned spot. |grouprole DAMAGE
|tip During the last phase kill Dominator Turrets IMMEDIATELY. Just 2 of these turrents can quickly wipe the raid. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Targets of Blood Ritual, Bloodsoaked Heartseeker, Convulsive Shadows, Dark Hunt, Rapid Fire, and Penetrating Shot are likely to take heavy damage. |grouprole HEALER
|tip During Detonation Sequence, heavy raid damage is likely. |grouprole HEALER |grouprole HEALER
|tip During Sanguine Strikes, prepare raid healing and damage-reduction cooldowns. |grouprole HEALER |grouprole HEALER
Dreadnaught Team:
|tip The Dreadnaught Team should be chosen before the fight - 1 healer 1 tank and 4 DPS.
|tip Mobile healers and DPS are optimal for this role. Interrupts are also a plus.
|tip When one of the bosses leaves the area, click the chains near the boat to swing over.
|tip Quickly defeat the deckhands and click the ammunition at the front of the boat.
|tip Be aware, Detonation Sequence will occur immediately upon leaving the ship.
_EVERYONE:_ |grouprole EVERYONE
|tip Dodge fireballs projected from Dominator Turrets. |grouprole EVERYONE
|tip Run out of the raid quickly when targeted by Rapid Fire. |grouprole EVERYONE
|tip If targeted by Penetrating Shot, do not move. DPS and healers need to stand in the red line of the attack to split the damage. |grouprole EVERYONE
|tip Penetrating shot can be immuned and hunters can even feign death the spell, as well as mage invis. |grouprole EVERYONE
|tip Use a defenisve cooldown as the duration is about to expire if targeted by Dark Hunt. |grouprole EVERYONE
|tip When mines are laid, move away from reddish ones as they will soon explode. |grouprole EVERYONE
|tip Move out of marked areas during Detonation Sequence. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the Maidens gain the Iron Will buff. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	80.6,33.4	78.0,38.1	73.0,43.0
path	68.7,50.4	63.0,50.6	58.9,57.0
path	51.5,57.1	46.7,57.3
Go up the elevator |goto Blackrock Foundry/1 46.7,57.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	30.5,53.7	33.3,53.7	40.8,52.9
path	40.9,40.7	40.8,25.8	40.9,15.3
path	33.8,15.1	Blackrock Foundry/5 52.6,92.0
path	Blackrock Foundry/5 48.7,92.0	 Blackrock Foundry/5 48.7,77.4
Go up the elevator |goto Blackrock Foundry/5 48.7,77.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/5
path follow smart; loop off; ants curved; dist 15
path	48.7,71.8	48.6,64.8
Follow the path |goto Blackrock Foundry/5 48.6,64.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Blackhand##77325 |goto Blackrock Foundry/5 48.8,34.4
_TANK:_ |grouprole TANK
|tip The offtank should stay behind Blackhand to avoid being hit with Shattering Smash. Taunt immediately follow this ability. |grouprole TANK
|tip During Phase 1, move Blackhand in a circle around the edge of the room. |grouprole TANK
|tip During Phase 2, tank Blackhand near the center of the room. |grouprole TANK
|tip If you are Slagged, use a cooldown for Shattering Smash. |grouprole TANK
|tip In Phase 3, tank Blackhand near the edge of the platform. At 100 energy, turn him towards the center of the platform for Massive Shattering Smash. |grouprole TANK
|tip During Phase 3, tank swap whenever affected by Throw Slag Bombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid taking Shattering Smash damage. |grouprole DAMAGE
|tip Melee DPS should stand in Shattering Smash during Phase 2 to be thrown onto the balcony. Kill adds while you are up there. |grouprole DAMAGE
|tip In Phase 2, kite the Siegemaker away from group members if Fixated. Try to run it over Slag Bombs. |grouprole DAMAGE
|tip During Phase 3, run away from the raid to drop Slag Bombs if targeted by Attach Slag Bombs. |grouprole DAMAGE
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players who are Impaled will take massive damage over time. |grouprole HEALER
|tip Slagged players may potentially take fatal damage. |grouprole HEALER
|tip Shattering Smash will deal heavy damage to the current tank. |grouprole HEALER
|tip During Phase 1, use cooldowns for Demolition. |grouprole HEALER
|tip During Phase 2, use cooldowns when approaching Phase 3. |grouprole HEALER
|tip In Phase 2, kite the Siegemaker away from group members if Fixated. Try to run it over Slag Bombs. |grouprole HEALER
|tip During Phase 3, use cooldowns for Massive Shattering Smash. |grouprole HEALER
|tip During Phase 3, run away from the raid to drop Slag Bombs if targeted by Attach Slag Bombs. |grouprole HEALER
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted by Marked for Death, LoS it behind a Debris Pile in Phase 1. In Phase 2, LoS it behind a Siegemaker. |grouprole EVERYONE
|tip During Phase 2, avoid being hit with the Siegemaker's Battering Ram. |grouprole EVERYONE
|tip Avoid triggering Slag Bombs. You will take massive fire damage and become Slagged, taking 100% increased damage. |grouprole EVERYONE
|tip During Phase 3, move away from Slag Craters. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp after everyone is in position in Phase 3 |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Blackrock Foundry_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Blackrock Foundry - Mythic",{
lfgid=900,
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"BRF, BF, Draenor, Gorgrond, Mythic"},
description="\nThis guide will walk you through the Mythic version of the Blackrock Foundry raid.",
},[[
step
Enter Blackrock Foundry with your group |goto Gorgrond/0 51.55,27.27 < 10
|tip Some bosses are easier than others, and this is the suggested route to take for progression, going from easiest to hardest: Beastlord Darmac, Oregorger, Hans'gar and Franzok, Flamebender Ka'graz, Gruul, Kromog, Operator Thogar, The Iron Maidens, The Blast Furnace, and Blackhand.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,63.4	44.8,54.9
path	51.8,54.6	56.8,60.2	54.1,68.4
path	47.4,68.4
Follow the path |goto Blackrock Foundry/3 47.4,68.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	62.3,53.7	54.9,53.7	55.5,64.4
path	56.0,79.3	52.4,83.5	47.5,83.9
Follow the path |goto Blackrock Foundry/2 47.5,83.9 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Oregorger##77182 |goto Blackrock Foundry/2 37.10,82.30
Unstable Slag Explosion
|tip This ability will cause waves of fire to spread down the lanes, this fire will cause other unstable slags to explode and make more fire lines.
|tip Earthshaking Collision will cause these fire lines to begin.
_TANK:_ |grouprole TANK
|tip Face Oregorger with his side to the ranged group, not his back or front. |grouprole TANK
|tip When not tanking, stand in the path between Oregorger and the ranged group. |grouprole TANK
|tip The offtank should use a cooldown during Acid Torrent and then taunt immediately after. |grouprole TANK
|tip Pick up Oregorger quickly after the Rolling Fury phase ends. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should avoid standing near Explosive Shards. |grouprole DAMAGE
|tip Ranged DPS should move out of Retched Blackrock puddles. |grouprole DAMAGE
|tip Ranged DPS needs to use a damage reduction cooldown during Acid Torrent. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The offtank will need strong single-target healing during Acid Torrent. |grouprole HEALER
|tip AoE heals will be required for the ranged group follwing each Acid Torrent. |grouprole HEALER
|tip Move out of Retched Blackrock pools. |grouprole HEALER
|tip Be aware of line-of-sight issues during the Rolling Fury phase. |grouprole HEALER
|tip Use healing cooldowns towards the end of the Rolling Fury phase. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Destroy crates and avoid Oregorger during the Rolling Fury phase. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the boss is positioned after the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	46.5,84.0	51.7,83.9	55.5,79.6
path	55.0,62.0	55.0,47.6	56.5,28.6
path	49.9,24.3
Follow the path |goto Blackrock Foundry/2 49.9,24.3 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gruul##76877 |goto Blackrock Foundry/2 39.3,20.5
Flare
|tip This ability will fire 4 balls in random directions from the furnaces around the room, these need to be dodged.
|tip These will continue to come out the entire fight.
_TANK:_ |grouprole TANK
|tip Face Gruul away from the raid. |grouprole TANK
|tip During Inferno Slice, face grull towards a group of raid members. |grouprole TANK
|tip Tank swap at 2-3 stacks of Inferno Strike initially, then after Overwhelming Blows falls off for the duration of the fight. |grouprole TANK
|tip Move out of Overhead Smash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stack at your group's designated area. |grouprole DAMAGE
|tip Move out of Cave In and Overhead Smash. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The group soaking Inferno Slice will take heavy damage and suffer a DoT. Keep them topped off. |grouprole HEALER
|tip Tanks will take heavy damage leading up to Destructive Rampage. |grouprole HEALER
|tip Players who fail to move away from the group when affected by Petrify will deal heavy damage to anyone near them. |grouprole HEALER
|tip Stack with your group for Inferno Slice. |grouprole HEALER
|tip Move out of Cave In and Overhead Smash. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip There will need to be 3 groups for Inferno Slice, if there aren't at least 4 people hit by Inferno Slice then the boss will instantly gain 50 rage. |grouprole EVERYONE
|tip These groups will need to take multiple stacks, there are even strats to 3 tank this fight. |grouprole EVERYONE
|tip Move away from other players when affected by Petrify. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	44.5,23.6	56.0,28.1	55.4,44.1
path	55.1,53.5	60.1,53.7	61.1,64.1
path	67.0,63.8	67.5,54.8	60.7,53.4
Follow the path |goto Blackrock Foundry/2 60.7,53.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Heart of the Mountain##76806 |goto Blackrock Foundry/2 46.1,53.7
|tip To get out of phase 1 the raid will need 25 bombs to explode on each side to destroy the furnaces.
|tip A priest is a very good thing to have during the first phase, they can Mind Control the adds which will help the first phase go much faster.
|tip The big difference in mythic is the ability Hardened Slag, to remove this buff that the slags have when they come out a priest will need to Mind Control a Security Guard and use there Slay Elemental ability on a Slag Elemental.
|tip After using this ability the Slag Elemental will be vulnarable and able to be killed to release a Primal Elementalist, this is needed to advance to the next phase.
|tip The "Slag Elemental" ability can only be used once be Securtiy Guard. The priest will actually only need to mind control 2 security guards for the 4 needed, as slag elementals will rez after 3 "Blasts".
_TANK:_ |grouprole TANK
|tip One tank should pick up a Security Guard and a Furnace Engineer and take them to their assigned side. |grouprole TANK
|tip One tank should pick up Foreman Feldspar and take him to their assigned side. |grouprole TANK
|tip Pick up adds and move enemies out of the purple Defense zones. |grouprole TANK
|tip During Phase 2, tank Security Guards and Firecallers slightly away from Primal Elementalists. |grouprole TANK
|tip During Phase 3, move Heart of the Mountain away from patches of Melt. |grouprole TANK
|tip During Phase 3, tank swap at 3 stacks of Heat or when your stacks fall off. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Heat regulators are located on the left and right sides of the furnace. If you have a Bomb, run to them and use your extra action button. |grouprole DAMAGE
|tip If targeted by Rupture, move away from the raid so the Rupture zone is out of the way. |grouprole DAMAGE
|tip Interrupt Engineers' Repair and Feldspar's Pyroclasm. |grouprole DAMAGE
|tip During Phase 2, focus all damage on a Primal Elementalist. Clean up adds with DoTs and cleaves. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep an eye on the Heart of the Mountain's Energy bar. Prepare AoE heals when it gets high to counter Blast damage. |grouprole HEALER
|tip Players affected by Bomb will take moderate to heavy damage. |grouprole HEALER
|tip Feldspar's tank will take heavy damage. |grouprole HEALER
|tip Heat regulators are located on the left and right sides of the furnace. If you have a Bomb, run to them and use your extra action button. |grouprole HEALER
|tip If targeted by Rupture, move away from the raid so the Rupture zone is out of the way. |grouprole HEALER
|tip During Phase 3, heavy raid damage will occur. Coordinate raid cooldowns with other healers. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move quickly out of Melt during Phase 3. |grouprole EVERYONE
|tip During phase 2 if a slag elemental is fixated on you be sure to kite it over to a Primal Elementalist then kill the slag elemental once it's on top of it, this will destroy the elementalists shield for a short time. |grouprole EVERYONE
|tip Once the shield is down burst down the Primal Elementalist. |grouprole EVERYONE
|tip During Phase 2, move away from the raid if affected by Volatile Fire. |grouprole EVERYONE
confirm
step
Head back to the entrance
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	61.2,53.4 < 5	67.3,55.4	 66.1,64.3
path	60.6,61.4	62.5,53.7
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	55.4,66.5	53.0,54.5	32.9,53.8
path	28.6,53.7
Follow the path, riding the elevator to the bottom floor |goto Blackrock Foundry/1 46.9,57.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the door |goto Blackrock Foundry/1 47.5,67.1 < 8 |noway |c
step
kill Hans'gar##76973 |goto Blackrock Foundry/1 47.5,76.4
kill Franzok##76974 |goto Blackrock Foundry/1 47.5,76.4
Smart Stampers
|tip When this ability comes out there needs to be a ranged group and a melee group, any player standing on a stamp platform will light up that platform, after a few seconds a stamp will come down.
|tip These stamps are a one shot mechanic and to prevent to many from lighting up at the same time there should be 2 groups and these groups should move together.
|tip When the smart stampers are down they will stay down for quite awhile and will block movement.
|tip These groups should be parrelle when moving and should also be at least one from of stamper platforms away from the other group.
_TANK:_ |grouprole TANK
|tip While both bosses are active, tank them close together. |grouprole TANK
|tip Use a damage-reduction cooldown to mitigate Crippling Suplex. |grouprole TANK
|tip During the last 15%, alternate cooldowns to stay alive. |grouprole TANK
|tip While only a single boss is active, swap after each Body Slam. |grouprole TANK
|tip Move bosses away from Stamping Presses and Searing Plates. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Make extensive use of cleaves while both bosses are active. |grouprole DAMAGE
|tip Casters should stop casting until Franzok finishes his Disrupting Roar. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use cooldowns on tanks for Crippling Suplex. |grouprole HEALER
|tip While both bosses are active, both tanks will require extensive healing. More so during the final 15%. |grouprole HEALER
|tip Casters should stop casting until Franzok finishes his Disrupting Roar. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Standing between conveyor belts will allow you to remain stationary while the belts are moving. |grouprole EVERYONE
|tip Move away from Searing Plates and Stamping Presses. Standing between belts will not prevent Stamping Press damage unless that player is on the far opposite side. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp should be used during the 2nd Smart Stampers phase. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	47.6,66.0	46.7,61.4	44.2,57.5
path	40.7,58.7	40.5,73.8	35.1,76.7
path	31.0,76.8	25.0,76.8
Follow the path |goto Blackrock Foundry/1 25.0,76.8 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Flamebender Ka'graz##76814 |goto Blackrock Foundry/1 18.8,76.8
_TANK:_ |grouprole TANK
|tip One tank needs to keep Aknor Steelbringer faced away from the raid while he is alive. |grouprole TANK
|tip When Cinder Wolves spawn, a tank needs to pick up the Overheated one and face it away from melee. |grouprole TANK
|tip When the a different wolf Overheats, the tanks must swap. |grouprole TANK
|tip Use cooldowns for the last Charring Breath when tanking the Overheated wolf. |grouprole TANK
|tip Following Firestorm when ka'graz has Flamefury, swap at 3-4 stacks of Rising Flames. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus DPS on Aknor Steelbringer until he dies. |grouprole DAMAGE
|tip Avoid standing in Lava Slash and fire lines on the ground. |grouprole DAMAGE
|tip Ranged should spread out at least 6 yards. |grouprole DAMAGE
|tip All dps need to switch to cinder wolves when they come out in mythic there will be 4. |grouprole DAMAGE
|tip If you are targeted by the fixate from the cinder wolves you need to run into melee to make killing these easier. |grouprole DAMAGE
|tip If Fixated by a wolf, avoid kiting it through other players. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Save cooldowns for the Cinder Wolf phases. |grouprole HEALER
|tip Cinder wolves will be targeting 3 people and need strong single target heals. |grouprole HEALER
|tip Keep melee topped off, especially during Molten Torrent. |grouprole HEALER
|tip Due to Lava Slash and Enchanted Armaments, damage will be spikey and significant. |grouprole HEALER
|tip Players kiting a Cinder Wolf will need extra healing. |grouprole HEALER
|tip Damage-reduction and healing cooldowns are useful during Firestorm. |grouprole HEALER
|tip If Fixated by a wolf, avoid kiting it through other players. |grouprole HEALER
|tip Spread out at least 6 yards. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from Enchanted Armaments. |grouprole EVERYONE
|tip Move away from raid members when affected by Blazing Radiance. |grouprole EVERYONE
|tip Move into melee when targeted by Molten Torrent to split damage. If you have an immunity cooldown, run away and use it. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	21.6,76.7	31.1,76.6	31.1,71.1
path	33.1,66.4	33.1,52.2
Follow the path |goto Blackrock Foundry/1 33.1,52.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kromog##77692 |goto Blackrock Foundry/1 33.1,41.3
Rune of Trembling Earth
|tip This ability will cause 3 pillars to errupt from the group and will need to be killed asap, 1 pillar comes out one after another, not all at the same time, but they will all disappear if not killed at the same time.
|tip when killed they will split in half and are needed for the next part of this phase.
Call of the Mountain
|tip Call of the Mountain comes out after the pillars are killed or they run out of time to be killed.
|tip the boss will cast this ability 3 times, the raid needs to stand behind one of the 3 pillars that were killed during Rune of Trembling Earth.
|tip All 3 pillars are needed for this phase.
|tip After every Call of the Mountain the boss will cast Rippling Smash which will target one of these pillars and destroy it.
_TANK:_ |grouprole TANK
|tip Except during Thundering Blows, tanks need to stand close together to split Fists of Stone damage. |grouprole TANK
|tip If no one is in range of Kromog, he will use Stone Breath repeatedly. |grouprole TANK
|tip Tank swap at 3 stacks of Warped Armor. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should be stacked up on one side of the boss while ranged should all stacked at ranged together. |grouprole DAMAGE
|tip After destroying your Grasping Earth, assist healers in killing theirs before DPSing Kromog. |grouprole DAMAGE
|tip Save DPS cooldowns Rune of Trembling Earth pillars. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage is heavy, especially during Slam. |grouprole HEALER
|tip Slam deals frequent raid damage. |grouprole HEALER
|tip During stone breath the entire raid takes high damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from rippling smash, he will face the direction he is casting this spell before it goes off. |grouprole EVERYONE
|tip When Kromog casts Rune of Grasping Earth, run into a rune and let a hand grab you. |grouprole EVERYONE
|tip When Thundering Blows ends, kill your Grasping Earth to free yourself. |grouprole EVERYONE
|tip Avoid Rippling Smash and Reverberations on the ground. |grouprole EVERYONE
|tip Dont stand in Rune of Crushing Earth this will deal massive damage and stun. |grouprole EVERYONE
|tip At 30% health, Kromog will Frenzy. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the 30% Frenzy. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	39.5,44.2	47.1,44.5	48.9,36.2
path	54.0,36.1	56.5,50.1	60.7,52.3
path	58.7,57.3	51.6,57.1
Follow the path, riding the elevator to the top floor |goto Blackrock Foundry/1 46.9,57.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	53.0,42.6
path	57.0,42.2
Follow the path |goto Blackrock Foundry/3 57.0,42.2 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	42.8,84.0	45.7,83.9	45.7,71.7
path	52.3,71.8
Follow the path |goto Blackrock Foundry/4 52.3,71.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Beastlord Darmac##76865 |goto Blackrock Foundry/4 62.8,71.8
_TANK:_ |grouprole TANK
|tip Darmac has a set order in which he mounts his beasts 85%, 65%, 45%, and 25% health. |grouprole TANK
|tip The offtank should pick up the beasts that spawn in the far right corner and tank them near the boss for cleaves. |grouprole TANK
|tip While active, tank swap Cruelfang at 3 stacks of Rend and Tear. Darmac will continue to do this after being dismounted. |grouprole TANK
|tip While Ironcrusher is active, tank swap at 2 stacks of Crush Armor. |grouprole TANK
|tip While Dreadwing is active, tank swap at 5-10 stacks of Seared Flesh. |grouprole TANK
|tip Inferno Breath and Superheated Shrapnel are random and cannot be aimed. |grouprole TANK
|tip The boss will dismount off each beast before they die one tank needs to pick up Darmac while the other continues to tank the active beast. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Heavy Spears that pin down raid members immediately. |grouprole DAMAGE
|tip AoE the Pack Beasts when they spawn. |grouprole DAMAGE
|tip Apply DoTs when Darmac is preparing to mount a beast. |grouprole DAMAGE
|tip Ranged DPS should remain spread out. |grouprole DAMAGE
|tip When Cruelfang is active and after, melee should move away during Rend and Tear. |grouprole DAMAGE
|tip Tranquilize Savage Howl whenever possible. |grouprole DAMAGE
|tip When Darmac jumps off the active beast continue to dps that beast until it is dead then switch back to Darmac.
_HEALER:_ |grouprole HEALER
|tip Players affected by Rend and Tear, Inferno Breath, Superheated Shrapnel, or Conflagration will need extra healing. |grouprole HEALER
|tip Players who are Pinned Down will require heavy single-target healing. |grouprole HEALER
|tip Dispel Conflagration quickly. |grouprole HEALER
|tip Strong AoE healing is required during Tantrum. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Do not stand in areas targeted by Heavy Spear. |grouprole EVERYONE
|tip Move out of Inferno Breath and Superheated Shrapnel. |grouprole EVERYONE
confirm
step
kill Beastlord Darmac##76865
_Phase 4_
|tip Faultline is the 4th mount of the encounter at 25 percent health.
|tip Heavy Smash requires the tanks to stand on top of each other.
|tip Epicenter will create a huge circle under the boss, everyone needs to move out of this asap.
|tip Cannonball Barrage will target multple people in the raid and also target multple random places, don't stand in these.
|tip Periodically Faultline will cast Unstoppable increasing its damage and causing a dot to the raid for a few seconds, this will also reduce movement speed.
|tip Once Faultline is dead the boss will gain the new ability Heart of the Clefthoof, this will increase the bosses health by 100 percent, this will also allow the boss to activate Unstoppable.
|tip The boss will also get the ability Epicenter.
|tip At the end of the fight the boss will have all of the abilities normal from heroic and then the abilties listed from Faultline.
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	56.3,71.8	46.4,71.5	45.7,55.6
Follow the path |goto Blackrock Foundry/4 45.7,55.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Operator Thogar##76906 |goto Blackrock Foundry/4 45.7,19.4
|tip To complete this fight the raid will need a path to take for the fight, all trains are predetermined except for the random train phases.
|tip The random train phase will leave one track empty and run trains through the other 3, this will happen twice per random train phase.
Deforester
|tip This is a new type of train, this is a train that will take over one track and put a line of fire across the other 3, this will move slowly until it reaches the other side.
|tip The raid will need to run through this line of fire as it will give a stacking debuff the longer a player stands in it.
Obliterator Cannon
|tip This will rain fire from the air causeing pools of fire to fall to the ground, these need to be avoided.
_TANK:_ |grouprole TANK
|tip Move Thogar to safe tracks to avoid moving trains. |grouprole TANK
|tip Tank swap at 2 stacks of Enkindle. |grouprole TANK
|tip Pick up adds quickly when they jump from the trains. |grouprole TANK
|tip When multiple trains come through, it may be necessary to use a cooldown to deal with higher stacks of Enkindle. |grouprole TANK
|tip Move Thogar away from Prototype Pulse Grenades and Delayed Siege Bombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Adds always take priority over Thogar. |grouprole DAMAGE
|tip Kill priority is as follows: Man-at-Arms, Firemender, Crack-Shot, then Raider. |grouprole DAMAGE
|tip Ranged DPS should kill Gunnery Sergeants. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will need heavy healing, especially while adds are active. |grouprole HEALER
|tip Frequent AoE heals are required while a Man-at-Arms is alive. |grouprole HEALER
|tip Anyone standing in Prototype Pulse Grenades or Delayed Siege Bombs will require significant healing. |grouprole HEALER
|tip When going through the deforester people will need heavy healing, everyone will get at least one stack some people may get more depending on if they use movement speed abilities. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip When Deforester is out be sure to move with the raid and use movement speed abilities to get through the fire as fast as possible, the longer a player is in the fire the more stacks that player will get. |grouprole EVERYONE
|tip Throughout the fight, trains will move across the tracks. Avoid standing in their path. |grouprole EVERYONE
|tip Interrupt Firemender's Cauterizing Bolt. |grouprole EVERYONE
|tip Stun adds when possible to reduce damage dealt to the tanks. |grouprole EVERYONE
|tip Move away from the raid and keep moving until Delayed Siege Bomb expires. |grouprole EVERYONE
|tip Move away from Prototype Pulse Grenades and Delayed Siege Bombs. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	45.7,24.2	45.7,43.7	52.1,49.0
path	56.4,49.0
Follow the path and jump down the hole |goto Blackrock Foundry/1 74.9,24.5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Admiral Gar'an##77557, Enforcer Sorka##77231, Marak the Blooded##77477 |goto Blackrock Foundry/1 85.6,28.1
_Enforcer Sorka_ Mythic Abilities
Blade Dash
|tip This ability will target a random person in 45 yards and dash to that person. It will also leave a tornado running through the position of that target, the position of the current sorka tank, and sorka herself.
|tip This can be cheesed, the raid needs to be 45 yards away from Sorka and a strong dps should stand in a corner with the tank tanking Sorka to soak this ability (preferably a Warlock).
|tip This tornado is called Swirling Vortex is stood in it will deal a high amount of damage and stun for 4 seconds.
|tip This ability will continue to come out throughout the fight and it will cast this ability on players that have the Sorka's Prey debuff before anyone else. Continue to put these in the far reaches of the room.
|tip The player designated to soak this ability will continue to get Blade Dash until the debuff wears off.
Convulsive Shadows
|tip This ability will target a random player and apply a debuff just like on heroic but every time this ability causes damage to its target it will create a pool called "Lingering Shadow".
|tip If any player stands in this pool it will create another pool and deal damage, this debuff needs to be dispelled as soon as the player receives it.
|tip Once dispelled the player will receive a massive amount of damage this damage needs to be reduced, minor cooldowns or absorbs work well.
_Marak the Blooded_ Mythic Abilities
Blood Ritual
|tip This ability will put a debuff on this player called "Marak's Bloodcalling" and it will increase damage from Blood Ritual by 180%.
|tip Blood Ritual will priotritze the target with the debuff Marak's Bloodcalling to target further Blood Rituals.
Bloodsoaked Heartseeker
|tip This ability will bounce between 3 targets, these players need to spread apart and move to the outskirts of the room as another ability will happen once hit.
|tip This ability is called "Volatile Blood Orb" these will be placed down and eventually explode for a good amount of damage but will do less the farther people are away from the player.
_Admiral Ga'ran_ Mythic Abilities
|tip This boss has no new abilities.
confirm
step
kill Admiral Gar'an##77557, Enforcer Sorka##77231, Marak the Blooded##77477 |goto Blackrock Foundry/1 85.6,28.1
_TANK:_ |grouprole TANK
|tip Admiral Gar'an cannot be tanked.
|tip The Marak tank needs to intercept the Crystallized Blood from Blood Ritual.
|tip When the Maidens reach 100 energy, Marak's tank should use several powerful defensive cooldowns to reduce raid damage from Sanguine Strikes.
|tip Move the bosses away from Dominator Turrets when they spawn.
_DAMAGE:_ |grouprole DAMAGE
|tip The Maidens should be DPSed evenly. Make use of cleaves. |grouprole DAMAGE
|tip Melee DPS should avoid standing in the path of the Blood Ritual target. |grouprole DAMAGE
|tip If targeted by Blood Ritual, move to your assigned spot. |grouprole DAMAGE
|tip During the last phase kill Dominator Turrets IMMEDIATELY. Just 2 of these turrents can quickly wipe the raid. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Targets of Blood Ritual, Bloodsoaked Heartseeker, Convulsive Shadows, Dark Hunt, Rapid Fire, and Penetrating Shot are likely to take heavy damage. |grouprole HEALER
|tip During Detonation Sequence, heavy raid damage is likely. |grouprole HEALER |grouprole HEALER
|tip During Sanguine Strikes, prepare raid healing and damage-reduction cooldowns. |grouprole HEALER |grouprole HEALER
Dreadnaught Team:
|tip The Dreadnaught Team should be chosen before the fight - 1 healer 1 tank and 4 DPS.
|tip Mobile healers and DPS are optimal for this role. Interrupts are also a plus.
|tip When one of the bosses leaves the area, click the chains near the boat to swing over.
|tip Quickly defeat the deckhands and click the ammunition at the front of the boat.
|tip Be aware, Detonation Sequence will occur immediately upon leaving the ship.
_EVERYONE:_ |grouprole EVERYONE
|tip Dodge fireballs projected from Dominator Turrets. |grouprole EVERYONE
|tip Run out of the raid quickly when targeted by Rapid Fire. |grouprole EVERYONE
|tip If targeted by Penetrating Shot, do not move. DPS and healers need to stand in the red line of the attack to split the damage. |grouprole EVERYONE
|tip Penetrating shot can be immuned and hunters can even feign death the spell, as well as mage invis. |grouprole EVERYONE
|tip Use a defenisve cooldown as the duration is about to expire if targeted by Dark Hunt. |grouprole EVERYONE
|tip When mines are laid, move away from reddish ones as they will soon explode. |grouprole EVERYONE
|tip Move out of marked areas during Detonation Sequence. |grouprole EVERYONE
confirm
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	80.6,33.4	78.0,38.1	73.0,43.0
path	68.7,50.4	63.0,50.6	58.9,57.0
path	51.5,57.1	46.7,57.3
Go up the elevator |goto Blackrock Foundry/1 46.7,57.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	30.5,53.7	33.3,53.7	40.8,52.9
path	40.9,40.7	40.8,25.8	40.9,15.3
path	33.8,15.1	Blackrock Foundry/5 52.6,92.0
path	Blackrock Foundry/5 48.7,92.0	 Blackrock Foundry/5 48.7,77.4
Go up the elevator |goto Blackrock Foundry/5 48.7,77.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Foundry/5
path follow smart; loop off; ants curved; dist 15
path	48.7,71.8	48.6,64.8
Follow the path |goto Blackrock Foundry/5 48.6,64.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Blackhand##77325 |goto Blackrock Foundry/5 48.8,34.4
_Phase 1_
_TANK:_ |grouprole TANK
|tip The offtank should stay behind Blackhand to avoid being hit with Shattering Smash. Taunt immediately follow this ability. |grouprole TANK
|tip During Phase 1, move Blackhand in a circle around the edge of the room. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid taking Shattering Smash damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players who are Impaled will take massive damage every few seconds, this debuff is permanent. |grouprole HEALER
|tip Shattering Smash will deal heavy damage to the current tank. |grouprole HEALER
|tip During Phase 1, use cooldowns for Demolition. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted by Marked for Death, LoS it behind a Debris Pile in Phase 1. |grouprole EVERYONE
|tip During Demolition the ranged group will need to move together as the damage is massive and aoe healing is needed. |grouprole EVERYONE
|tip The entire group should be positioned on the outer edge of the inner circle, this is because molten slag needs to be completly avoided. |grouprole EVERYONE
|tip Avoid triggering Slag Bombs. You will take massive fire damage and become Slagged, taking 100% increased damage. |grouprole EVERYONE
confirm
step
kill Blackhand##77325 |goto Blackrock Foundry/5 48.8,34.4
_Phase 2_
_TANK:_ |grouprole TANK
|tip During Phase 2, tank Blackhand where needed to spawn the correct siege tank , and be sure to communicate with the dps kitting the siege tanks so that all of the "Mark of Deaths" can be intercepted without the raid having to move to much. |grouprole TANK
|tip If you are Slagged, use a cooldown for Shattering Smash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Melee DPS or Boomkins should stand in Shattering Smash during Phase 2 to be thrown onto the balcony. Kill adds while you are up there. |grouprole DAMAGE
|tip In Phase 2, there will be 4 different types of siege tanks 3 of them can be kited by anyone preferably a dps with high movement ability such as a hunter. Then one of them needs to be kited by a very fast class such as a rogue. |grouprole DAMAGE
|tip These siege tanks need to be kited into mines and the dps kiting will need to communicate with the boss tank to block the mark of deaths from hitting the players targeted by mark. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players who are Impaled will take massive damage every few seconds, this debuff is permanent. |grouprole HEALER
|tip Shattering Smash will deal heavy damage to the current tank. |grouprole HEALER
|tip Dispell players with the debuff that is given to players that soak the fire circles. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted by Marked for Death, LoS it behind a Siegemaker. |grouprole EVERYONE
|tip During Phase 2, avoid being hit with the Siegemaker's Battering Ram. |grouprole EVERYONE
|tip During this phase red circles will appear on the ground these need to be stood in and soaked, if they are not soaked the circles will become a patch of fire that stays for the remainder of the phase. |grouprole EVERYONE
|tip If a player does stand in the red circles to soak the fire they will receive a debuff that does a massive amount of damage, this can be immuned and dispelled. |grouprole EVERYONE
|tip During this phase there are 4 different types of siege tanks, all 4 need to be killed before the phase can end. |grouprole EVERYONE
|tip To trigger each one to spawn the boss will need to be tanked at the opposite end of each spawn point to spawn each one. Each gate has its own siege tank spawn. |grouprole EVERYONE
|tip All Siege Makers should take 3 sets of mark before killed.|grouprole EVERYONE
|tip These are the names and explanations of the siege makers this is also the order in which the Siege Makers should be done in. |grouprole EVERYONE
|tip Avoid triggering Slag Bombs. You will take massive fire damage and become Slagged, taking 100% increased damage. |grouprole EVERYONE
|tip Reinforced Siege Maker is just like a normal one but has way more health and should be kited by a hunter.
|tip Super Charged Siege Maker is extremely fast and should be kited by a rogue useing sprint and burst of speed.
|tip Explosive Siege Maker can be kited by a hunter and when it gets to 10 percent health it will cast a spell and when finished it will deal a massive amount of damage to the entire raid, the raid must stack up and use all defensive/healing cds.
|tip Fiery Siege Maker can be kited by a hunter and will spit out fire behind it.
confirm
step
kill Blackhand##77325 |goto Blackrock Foundry/5 48.8,34.4
_Phase 3_
_TANK:_ |grouprole TANK
|tip In Phase 3, tank Blackhand near the edge of the platform. At 100 energy, turn him towards the center of the platform for Massive Shattering Smash. |grouprole TANK
|tip During Phase 3, tank swap whenever affected by Throw Slag Bombs. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |grouprole DAMAGE
|tip This is the last phase and it's a dps race pop all remaining cds to kill this asap. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players who are Impaled will take massive damage over time. |grouprole HEALER
|tip Slagged players may potentially take fatal damage. |grouprole HEALER
|tip Shattering Smash will deal heavy damage to the current tank. |grouprole HEALER
|tip During Phase 3, use cooldowns for Massive Shattering Smash. |grouprole HEALER
|tip Stack in Massive Shattering Smash during Phase 3, ensuring your back is towards the center of the platform. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip In phase 3 if you are targeted by Mark of Death take it to the right and if your targeted by Attach Slag Bombs take them to the left. |grouprole EVERYONE
|tip During Phase 3, move away from Slag Craters. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp after everyone is in position in Phase 3 |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Blackrock Foundry Mythic_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Normal/Heroic",{
mapid=661,
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HFC, Normal, Heroic, Draenor, Tanaan, Jungle"},
description="\nThis guide will walk you through the Normal and Heroic versions of the Hellfire Citadel raid.",
},[[
step
Enter Hellfire Citadel |goto Tanaan Jungle/0 45.60,53.57 < 10
confirm
step
kill Siegemaster Mar'tak##95068 |goto Hellfire Citadel/1 55.2,48.1
_TANK:_ |grouprole TANK
|tip One tank should take Siegemaster Mar'tak, while the other should pick up the adds. |grouprole TANK
|tip When the Hulking Berserker spawns, move it away from Mar'tak until Inspiring Presence fades. |grouprole TANK
|tip Tank swap after Mar'tak flees, and at 2 stacks of Slam after. |grouprole TANK
|tip Keep Gorebound Felcasters away from Fel-Infused Siege Weapons. Siege Weapons cannot be tanked. |grouprole TANK
|tip Move adds away from bombs to lower the damage melee DPS take. |grouprole TANK
|tip Use a cooldown if Slam stacks get too high. |grouprole TANK
|tip Move out of Shockwave from the Felfire Crusher. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Burn down Siege Weapons quickly these are the priority, then focus dps on berserkers as they will do a large amount of damage to the tank the longer they are alive. |grouprole DAMAGE
|tip Also be sure to hard switch to the Gorebound Felcasters when they get low enough they will transform and deal raid wide aoe damage until they die.|grouprole DAMAGE
|tip Stay spread out to minimize damage from Howling Axe and Conducted Shock Pulse. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Hulking Berserkers will deal heavy damage to the tank. |grouprole HEALER
|tip Extra healing will be needed on players affected by Howling Axe. |grouprole HEALER
|tip High raid damage will come from gorebound felcasters transforming and felfire demolishers be sure to watch out the raid while these are up. |grouprole HEALER
|tip Cooldowns are beneficial when Felcasters transform into Gorebound Terrors. |grouprole HEALER
|tip Dispel Conducted Shock Pulse from stunned players. |grouprole HEALER
|tip Stay spread out to minimize damage from Howling Axe and Conducted Shock Pulse. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in areas targeted by Capsule Impact. This will deal damage before the adds come out. |grouprole EVERYONE
|tip Interrupt Gorebound Felcasters' Felfire Volley and Contracted Engineers' Conducted Shock Pulse. |grouprole EVERYONE
|tip Move out of Shockwave and bombs. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp at the beginning of the fight. |grouprole EVERYONE
|tip Stun and interupt when needed. |grouprole EVERYONE
confirm
step
kill Iron Reaver##90284 |goto Hellfire Citadel/1 55.2,48.1
_TANK:_ |grouprole TANK
|tip Tank swap when the active tank is targeted by Artillery. |grouprole TANK
|tip Artillery will overlap during each Ground Operations phase. Do not run out until the first tank returns. This will leave you with around 5 seconds to get out of the raid. |grouprole TANK
|tip Use a cooldown to Mitigate Artillery's explosion. |grouprole TANK
|tip During the Air Operations Phase, kill Volatile Firebombs. |grouprole TANK
|tip When you have Artillery get at least 35 yards away from anyone in the raid including the other tank. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Use cooldowns for the Ground Operations phase. Iron Reaver is not attackable during Air Operations. |grouprole DAMAGE
|tip Spread out if you are ranged. |grouprole DAMAGE
|tip Kill Volatile Firebombs quickly during the Air Operations phase. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Place shields and HoTs on tanks targeted by Artillery. |grouprole HEALER
|tip Raid cooldowns are useful for Pounding casts. |grouprole HEALER
|tip Healing is very hectic and spikey for this encounter. |grouprole HEALER
|tip Dispel Blitz debuffs quickly. |grouprole HEALER
|tip During the Air Operations phase, DPS Volatile Firebombs when healing is light. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in front of Iron Reaver during Barrage and Blitz. |grouprole EVERYONE
|tip Do not stand in fire patches on the ground. |grouprole EVERYONE
|tip Run to a far edge (40+ yards away) when targeted by Artillery. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/1
path follow smart; loop off; ants curved; dist 15
path	49.5,50.6	32.5,50.9	Hellfire Citadel/2 93.0,47.0
path	Hellfire Citadel/2 78.7,45.9	Hellfire Citadel/2 77.8,34.4
path	Hellfire Citadel/2 72.0,21.8	Hellfire Citadel/3 67.9,89.6
path	Hellfire Citadel/3 65.2,78.5	Hellfire Citadel/3 60.3,75.4
path	Hellfire Citadel/3 51.0,72.3	Hellfire Citadel/3 50.5,23.5
path	Hellfire Citadel/3 50.6,23.4	Hellfire Citadel/4 60.4,89.2
Follow the path |goto Hellfire Citadel/4 60.4,89.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kormrok##90776 |goto Hellfire Citadel/4 52.3,48.8
_TANK:_ |grouprole TANK
|tip Tank Kormok near the pool you wish to activate. |grouprole TANK
|tip Be wary of the knockback from Swat, as this can knock you into a pool. |grouprole TANK
|tip Move Kormrok out of the blast radius of Explosive Burst. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Use cooldowns for AoEing Grasping Hands. |grouprole DAMAGE
|tip Kill the Crushing hand to free the tank. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use raid cooldowns for Pound and Grasping Hands. |grouprole HEALER
|tip Each leap, Kormrok will deal damage to the raid. |grouprole HEALER
|tip Pound will deal massive damage to the whole raid. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Kormrok switches abilities every 90 seconds. |grouprole EVERYONE
|tip Spread out and use defensive cooldowns during Explosive Energy and trigger the Runes. |grouprole EVERYONE
|tip During Foul Energy, clump behind the boss and AoE the Grasping Hands. |grouprole EVERYONE
|tip During Shadow Energy, move away from pools and dodge the waves of shadow energy. |grouprole EVERYONE
|tip Spread out at least 5 yards during Pound. |grouprole EVERYONE
|tip Do not stand in pools. They deal massive damage that becomes fatal in seconds. |grouprole EVERYONE
|tip When the boss leaps to a pull he empowers one of his 3 abilities depending on the pool, Green empowers Grasping Hands, Orange empowers Explosives Runes, and Purple empowers Fel Outpouring. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/4
path follow smart; loop off; ants curved; dist 15
path	58.7,55.0	60.3,90.6	Hellfire Citadel/3 50.8,23.4
path	Hellfire Citadel/3 50.8,72.1	Hellfire Citadel/3 59.0,75.6
path	Hellfire Citadel/3 66.7,77.1	Hellfire Citadel/3 67.8,89.4
path	Hellfire Citadel/2 72.1,22.4	Hellfire Citadel/2 73.5,28.0
path	Hellfire Citadel/2 77.9,33.7	Hellfire Citadel/2 77.7,38.3
path	Hellfire Citadel/2 77.8,43.3	Hellfire Citadel/2 78.0,63.1
path	Hellfire Citadel/2 72.4,72.4	Hellfire Citadel/5 81.5,8.5
path	Hellfire Citadel/5 81.2,31.5	Hellfire Citadel/5 71.3,33.8
path	Hellfire Citadel/5 71.2,62.3
Follow the path |goto Hellfire Citadel/5 71.2,62.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gurtogg Bloodboil##92146 |goto Hellfire Citadel/5 71.5,80.1
kill Dia Darkwhisper##92144 |goto Hellfire Citadel/5 71.5,80.1
kill Blademaster Jubei'thos##92142 |goto Hellfire Citadel/5 71.5,80.1
_TANK:_ |grouprole TANK
|tip One tank should tank Dia Deathwhisper, while the other tanks the remaining bosses. |grouprole TANK
|tip The Dia tank should use cooldowns during Nightmare Visage. |grouprole TANK
|tip the Dia tank should also tank Dia away from the other two bosses as she gives them an immunity buff if she is to close to them. |grouprole TANK
|tip The Bloodboil tank should use cooldowns during Acidic Wound. |grouprole TANK
|tip During Fel Rage, the Gurtogg tank should not chase him. This will allow stacks of Acidic Wound to drop. |grouprole TANK
|tip Move the boss away from Reap pools. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Mirror Images of Jubei'thos quickly. |grouprole DAMAGE
|tip The kill order should be Gurtogg Bloodboil, Blademaster Judei'thos, then Dia Darkwhisper. |grouprole DAMAGE
|tip If you are affected by Fel Rage you will receieve a DPS buff and you will have aggro on the boss, pop any cds you might have. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players affected by Fel Rage will require extensive healing. |grouprole HEALER
|tip The Gurtogg tank will need heavy healing when stacks of Acidic Wound build up. |grouprole HEALER
|tip The Dia tank will need heavy healing during Nightmare Visage. |grouprole HEALER
|tip Dispel Mark of the Necromancer when the player gains the red version of the debuff. |grouprole HEALER
|tip Use raid cooldowns for each "ultimate" ability. These occur roughly 75 seconds apart. |grouprole HEALER
|tip When Dia reaches 30%, dispel Mark of the Necromancer aggressively. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from Fel Blade and Wailing Horrors. |grouprole EVERYONE
|tip If affected by Mark of the Necromancer, move out of the raid to drop the Reap pool during Reap. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when Bloodboil is under 30% health. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	65.8,72.6	57.7,79.6	46.4,79.6
path	45.9,67.7	40.0,64.5	17.3,64.9
path	12.0,56.5	12.2,36.1	24.2,34.2
Follow the path |goto Hellfire Citadel/5 24.2,34.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kilrogg Deadeye##90378 |goto Hellfire Citadel/5 51.0,33.7
_TANK:_ |grouprole TANK
|tip Use active mitigation when Kilrogg casts Shred Armor. |grouprole TANK
|tip Drag the boss away from Blood Globules and Fel Blood Globules. |grouprole TANK
|tip Each time a Hulking Terror spawns, tank swap. |grouprole TANK
|tip Face Hulking Terrors away from the group, and drag them away when they are about to die. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Ranged DPS should prioritize damage on Blood Globules. |grouprole DAMAGE
|tip Melee DPS should focus on killing Hulking Terrors. |grouprole DAMAGE
|tip When Salicating Bloodthirsters spawn they need to be slowed, rooted, and killed asap, if they reach the green pull they will transform into Hulking Terrors. |grouprole DAMAGE
|tip When targeted by Heart Seeker, move far away from Kilrogg. |grouprole DAMAGE
|tip Designated raid members should step into the green runes during Vision of Death. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use healing cooldowns during Death Throes. |grouprole HEALER
|tip Use external defensive cooldowns on the Kilrogg tank during Death Throes. |grouprole HEALER
|tip Single-target heal the player targeted by Heart Seeker. |grouprole HEALER
|tip When targeted by Heart Seeker, move far away from Kilrogg. |grouprole HEALER
|tip Designated raid members should step into the green runes during Vision of Death. |grouprole HEALER
Vision of Death Team:
|tip Two DPS and one healer should go down, there should be two to three teams for the visions.
|tip Players will become more powerful in their role with each demon killed. This buff will last when you are transported out.
|tip Defeat as many demons as possible before being automatically transported out.
|tip Upon returning, Healers should stand near the tanks to clear Fel Corruption and use their cooldowns during Death Throes. |grouprole HEALER
|tip Upon returning, DPS should focus all damage on Kilrogg until Undying Resolve fades. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Hulking Terrors when casting Rending Howl. |grouprole EVERYONE
|tip Use defensive cooldowns during Death Throes. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp on the pull. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	53.4,33.6	66.7,33.6	80.9,33.6
path	81.6,8.3
Follow the path |goto Hellfire Citadel/5 81.6,8.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/2
path follow smart; loop off; ants curved; dist 15
path	72.4,71.5	77.8,59.6	78.1,46.3
path	65.3,41.8	55.1,47.6	38.7,48.0
path	30.7,63.1	19.2,64.6
Follow the path |goto Hellfire Citadel/2 19.2,64.6 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gorefiend##91809 |goto Hellfire Citadel/2 17.3,44.5
_TANK:_ |grouprole TANK
|tip Tank swap when the current tank gains Shadow of Death. |grouprole TANK
|tip Inside the stomach, pick up the Enraged Spirit. Interrupt Bellowing Shoult and move out of Fel Fury. |grouprole TANK
|tip Swap tanking the Gorebound Spirit at 8-10 stacks of Fel Flames. |grouprole TANK
|tip Interrupt the Gorebound Spirit's Bellowing Shout. |grouprole TANK
|tip Soak as many Unstable Souls as possible during Feast of Souls. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus on killing adds rather than Gorefiend. Gorefiend takes more damage during Feast of Souls. |grouprole DAMAGE
|tip When targeted by Touch of Doom, run to the edge of the room until it expires. |grouprole DAMAGE
|tip Stay spread out. Move out of Crushing Darkness. |grouprole DAMAGE
|tip Kite the Gorebound Construct if targeted by Hunger for Life. |grouprole DAMAGE
|tip While inside Gorefiend's stomach, kill Constructs and help kill the Enraged Spirit. |grouprole DAMAGE
|tip Use DPS cooldowns during Feast of Souls after the adds are dead. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Gorebound Spirit tank will take heavy damage. |grouprole HEALER
|tip Consistent raid damage will persist throughout the entire fight. |grouprole HEALER
|tip While inside Gorefiend's stomach, heal the Tortured Essences. |grouprole HEALER
|tip When targeted by Touch of Doom, run to the edge of the room until it expires. |grouprole HEALER
|tip Stay spread out. Move out of Crushing Darkness. |grouprole HEALER
|tip Use raid cooldowns to mitigate damage from Feast of Souls. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Exit Gorefiend's stomach just before Digest expires, to do this run in the center of the room. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the first Feast of Souls Mechanic. |grouprole EVERYONE
|tip Be sure to stack together during Feast of Souls to make healing easier. |grouprole EVERYONE
confirm
step
click the soul portal |goto Hellfire Citadel/2 22.1,47.1 < 5 |c
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	59.8,76.6	49.1,76.7
Follow the path |goto Hellfire Citadel/6 49.1,76.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shadow-Lord Iskar##90316 |goto Hellfire Citadel/6 38.9,76.6
_TANK:_ |grouprole TANK
|tip During the first transmission one tank should pick up the Corrupted Priest of Terokk, while the other tank picks up the remaining adds. |grouprole TANK
|tip During the second transmission one tank should pick up the Shadowfel Warden and the other tank should pick up the remaining adds. |grouprole TANK
|tip During the last transmission one tank should pick the Fel Raven and the Shadowfel Warden, while the other tank gets the remaining adds. |grouprole TANK
|tip During the second and third intermission phases whichever tank is tanking the Shadowfel Wardens needs the orb to interrupt Fel Conduit, this ability will do massive damage to the raid until interrupted. Once your interput this ability be sure to give the orb back to one of the healers so they can dispell. |grouprole TANK
|tip After each transition the boss should switch sides because fire will become overwhelming. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Corrupted Talonpriests first during the first intermission phase. |grouprole DAMAGE
|tip Kill Shadowfel Wardens first during the second and third intermission. |grouprole DAMAGE
|tip After the priority targets are dead, kill Fel Ravens and then DPS Iskar. |grouprole DAMAGE
|tip Stand in front or behind the player holding the Eye of Anzu during Focused Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip One or two healers should be designated to hold the orb and pass it to the correct players. |grouprole HEALER
|tip Dispel Fel Bomb when you are holding the Eye of Anzu |grouprole HEALER
|tip Targets of Phantasmal Wounds need to be healed to 90% to remove it. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip 3 players will be targeted by Fel Chakram at a time. If you are targeted, move away from group members. The Chakram explodes when it contacts each player. The 3 people should make a triangle around the boss. |grouprole EVERYONE
|tip Phantasmal Winds will push you towards the edge of the platform. Simply walk against it until you receive the orb, once you have the orb be sure to pass it to another effected person or to the designated orb holder. |grouprole EVERYONE
|tip When targeted by Fel Incineration be sure to kite the flame line away from the group and away from the path the group will take. |grouprole EVERYONE
|tip During the transition phases be sure to stand in the middle of the room to split the damage of Focused Blast. |grouprole EVERYONE
|tip Save bloodlust/timewarp/heroism for the last intermission phase. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	45.2,76.9	57.3,76.7	61.8,83.1
Follow the path |goto Hellfire Citadel/6 61.8,83.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	42.3,8.1	42.5,25.7	52.2,25.5
path	61.1,26.5	61.0,41.7
Follow the path |goto Hellfire Citadel/8 61.0,41.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Soulbound Construct##90296 |goto Hellfire Citadel/8 59.0,54.1
_TANK:_ |grouprole TANK
|tip During phase one, tank swap when the Shattered Defenses debuff starts causing you excessive damage. |grouprole TANK
|tip During phase one be sure to face the boss away from the group to avoid hitting the entire group with shattered defenses, also be sure to reposition the boss when he uses his felblaze charge and fel prison. |grouprole TANK
|tip If the damage of Shattered Defenses is to much you can make soak groups to make it so the tank doesnt get to many stacks to fast, suggested soak groups two melee dps every other Shattered Defense. |grouprole TANK
|tip In phase two, one tank should control the Soulbound Construct, while the other should pick up adds. |grouprole TANK
|tip The Construct tank should place Felblaze Charge to limit the movement of adds coming from the portals. |grouprole TANK
|tip The Construct tank should use Volatile Fel Orb to damage those adds. |grouprole TANK
|tip The Construct tank should use Fel Prison to preven the Haunting Souls from reaching their targets. |grouprole TANK
|tip The Construct tank should spam Reverberating Blow on Soul of Socrethar. |grouprole TANK
|tip The Construct tank should also switch targets to the Sargerei Dominiators as they need to die asap before being able to damage the boss again. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Crystalline Fel Prisons quickly. |grouprole DAMAGE
|tip If affected by Gift of the Man'ari, stand at least 8 yards away from other players. |grouprole DAMAGE
|tip Interrupt Exert Dominance whenever it is cast. |grouprole DAMAGE
|tip Ranged DPS should quickly kill Haunting Souls. |grouprole DAMAGE
|tip When the Sargerei Dominiators come out they need to be switched to asap and killed quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Shadow Word: Agony from the add tank during phase 2. |grouprole HEALER
|tip If affected by Gift of the Man'ari, stand at least 8 yards away from other players. |grouprole HEALER
|tip Prepare for heavy raid damage during Apocalypse. |grouprole HEALER
|tip Gift of the Man'ari does massive single target damage and lasts for 2 mins, at points in the fight the group will most likely have 4 of these out at a time, be sure to single target heal these people. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip If fixated be sure to place yourself in the direction the fire line is faceing, while the ghosts are in the fire lines they are slowed and take damage.  |grouprole EVERYONE
|tip If targeted by Volitile Fel Orb be sure to stand out of the group this will do aoe damage once it reaches you. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	56.8,58.9	56.8,69.1	55.5,80.8
path	45.9,81.0	42.5,74.2	37.5,70.0
Follow the path |goto Hellfire Citadel/8 37.5,70.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tyrant Velhari##93439 |goto Hellfire Citadel/8 29.3,50.4
_TANK:_ |grouprole TANK
|tip One tank should tank the add that spawns during the current phase. |grouprole TANK
|tip Tank swap at 2-4 stacks of Seal of Decay depending on gear level and healers. |grouprole TANK
|tip During the last phase be sure to pull the boss and the add to any edge of the room and then kite the boss slowly around the room when Dispoiled Ground is put on the floor. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Cleave the Ancient Enforcer during phase one. Just make sure it dies before the next phase starts. |grouprole DAMAGE
|tip During phase two just cleave off the boss to kill the add. Just make sure it dies before the next phase starts. |grouprole DAMAGE
|tip During phase three hard switch to the Ancient Sovereign this add will put a buff on the boss decreasing damage taken by a large amount until this add dies. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Outheal Touch of Harm. It will absorb healing up to it's capacity. If the target is about to die, dispel it, once it is dispelled this debuff will jump to another random player. |grouprole HEALER
|tip During the last phase the tanks will take massive damage as the debuff increases in potency save damage reduction cds for this. |grouprole HEALER
|tip Be sure to save aoe healing cds for the second phase this will be the most healing intensive phase. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stack in the big circle to split the damage of Edict of Condemnation. If you have an immunity and you are targeted by this ability use it to solo soak. |grouprole EVERYONE
|tip During the first phase the group should be spread 8 yards away from each other and pick a spot in the room to stand. The only time anyone should move is to move out of Searing Blaze, or to help soak Edict of Condemnation if needed. |grouprole EVERYONE
|tip During phase two the group should all be stacked together on one side of the boss, if you are effected by the debuff "Font of Corruption" be sure to move to the other side of the boss. Once this debuff wears off be sure to run back to the side of the boss of uneffected players. |grouprole EVERYONE
|tip Save Bloodlust/Heroism/Timewarp at the beginning of the second phase. |grouprole EVERYONE
|tip During the first phase the group will receive a debuff that will hurt you the more you move. |grouprole EVERYONE
|tip During the second phase the group will receive a debuff that decreases the raids maximum HP this will continue until the phase is over,(you will get you max hp back once this phase is over) |grouprole EVERYONE
|tip During the last phase the group will receive a debuff that increases over time, this will increase your damage done and increase your damage taken. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	31.8,66.5	39.0,70.4	42.4,74.8
path	43.6,81.1	50.3,81.0	56.0,78.8
path	56.8,64.9	61.0,42.9	61.9,25.4
path	47.6,25.3	42.3,23.3	42.4,8.8
Follow the path |goto Hellfire Citadel/8 42.4,8.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	61.8,76.3	73.3,76.5	73.4,44.8
path	63.0,44.2	50.0,38.0	50.0,29.0
Follow the path |goto Hellfire Citadel/6 50.0,29.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fel Lord Zakuun##89890 |goto Hellfire Citadel/6 50.0,19.9
_TANK:_ |grouprole TANK
|tip Tank swap after each Soul Cleave. You may need to use a cooldown to mitigate the damage. |grouprole TANK
|tip Move out of waves from Wake of Destruction and jump over Rings of Destruction. |grouprole TANK
|tip Keep Zakuun at least 20 yards away from Fel Crystals. |grouprole TANK
|tip During Phase 2, stack together to split Heavy Handed damage. Use cooldowns to mitigate the damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When not affected by Latent Energy, move into Rumbling Fissures and intercept waves from Wake of Destruction. |grouprole DAMAGE
|tip When affected by Latent Energy, stay out of waves from Wake of Destruction. |grouprole DAMAGE
|tip When debuffed with Befouled, move at least 8 yards away from other players. |grouprole DAMAGE
|tip If targeted by Seed of Destruction, move away from other Seed targets and from Fel Crystals. Stand still when the debuff expires. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use raid cooldowns during Disarmed and Enrage. |grouprole HEALER
|tip Befouled players will need extra healing. |grouprole HEALER
|tip When not affected by Latent Energy, move into Rumbling Fissures and intercept waves from Wake of Destruction. |grouprole HEALER
|tip When affected by Latent Energy, stay out of waves from Wake of Destruction. |grouprole HEALER
|tip When debuffed with Befouled, move at least 8 yards away from other players. |grouprole HEALER
|tip If targeted by Seed of Destruction, move away from other Seed targets and from Fel Crystals. Stand still when the debuff expires. |grouprole HEALER
|tip Watch the raid if any Unleashed Energys go off. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to only allow one Fel Pillar to spawn per set, also to make the fight is easier stand in the fissures that are closest to the boss. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp near the end of the fight during Enrage. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	49.8,27.5	50.4,39.8	57.4,46.5
path	68.1,44.6	78.7,44.4	88.1,51.3
path	Hellfire Citadel/7 40.1,50.7
Follow the path |goto Hellfire Citadel/7 40.1,50.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Xhul'horac##93068 |goto Hellfire Citadel/7 53.2,50.9
_TANK:_ |grouprole TANK
|tip During Phase 1 and 2, one tank should pick up the large add and one should tank Xhul'horac. |grouprole TANK
|tip The add tank should use a cooldown for Withering Gaze and Felblaze Flurry. |grouprole TANK
|tip The Xhul'horac tank should use a cooldown for Fel Strike and Void Strike. |grouprole TANK
|tip During the last two phases, one tank should taunt after each Fel Strike and the other after each Void Strike. |grouprole TANK
|tip Stun and interrupt Wild Pyromaniacs whenever possible. |grouprole TANK
|tip Keep Xhul'horac away from nearby Chaotic Felblaze or Creeping Void patches. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip DPS priority is Wild Pyromaniac > Unstable Voidfiend > Vanguard Akkelion/Omnus > Xhul'horac. |grouprole DAMAGE
|tip Stun and interrupt Wild Pyromaniacs. |grouprole DAMAGE
|tip Run to the edge of the room when effected by Fel Surge or Void Surge. |grouprole DAMAGE
|tip When affected by Chains of Fel, run away from other chained players. |grouprole DAMAGE
|tip Move out of the purple pool if targeted by Volatile Voidstep. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During Phase 1 and 2, the boss tank will need extra healing during Fel Strike and Void Strike. |grouprole HEALER
|tip Healing is very chaotic during this fight, with a lot of DoT's and direct AoE damage. |grouprole HEALER
|tip Run to the edge of the room when effected by Fel Surge or Void Surge. |grouprole HEALER
|tip When affected by Chains of Fel, run away from other chained players. |grouprole HEALER
|tip Move out of the purple pool if targeted by Volatile Voidstep. |grouprole HEALER
|tip If any pool of purple and green touch it will cause a raid wide explosion be prepared for this as the last phase of this fight is very chaotic. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Don't allow any of the green and purple pools to touch this will cause massive raid wipe damage. |grouprole EVERYONE
|tip In the last phase when hes switching colors back and forth after every fel and void strike he does he will aslo be applying both color debuffs on players, these players have to be careful not to place the color debuff near the opposite colors that are alraedy on the ground. |grouprole EVERYONE
|tip During the second phase Omnus will periodicaly spawn "Black Holes" these will suck players toward the black hole until it is destroyed, to destroy people either many people need to run into it to soak it together or on player with an immunity need to soak it. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the last phase of the fight. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/7
path follow smart; loop off; ants curved; dist 15
path	47.5,51.1	19.0,51.1
path	Hellfire Citadel/6 86.4,51.5	Hellfire Citadel/6 73.2,44.5
path	Hellfire Citadel/6 73.3,64.3	Hellfire Citadel/6 72.9,76.4
path	Hellfire Citadel/6 61.7,76.5	Hellfire Citadel/6 61.8,62.1
Follow the path |goto Hellfire Citadel/6 61.8,62.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click the purple portal |goto Hellfire Citadel/6 61.8,62.1
Take the portal to Mannoroth's platform |goto Hellfire Citadel/9 51.0,25.2 |noway |c
step
kill Mannoroth##91349
_TANK:_ |grouprole TANK
|tip During Phase 1, the Doom Lord needs to be tanked. |grouprole TANK
|tip During Phase 2, position Mannoroth with your back to the green Fel Spire. |grouprole TANK
|tip During Glaive Combo, the active tank should take the Glaive Thrust and Massive Blast, then the second tank should taunt for the last Glaive Thrust. |grouprole TANK
|tip No tank can take two Massive Blasts in a row. Use cooldowns for Glaive Thrust. |grouprole TANK
|tip During Phase 4, turn Mannoroth so that his back is towards the edge of the platform. Empowered Massive Blast will knock you back, still on the platform. |grouprole TANK
|tip One tank should stand at Mannoroth's side when not tanking during Phase 4 |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If affected by Curse of the Legion in Phase 1, run to the tank to be dispelled. |grouprole DAMAGE
|tip When affected by Mark of Doom in Phase 1, run away from the group and find a way to take damage to detonate it. Make sure you have high health, the green pool in the middle is a good way to accomplish this. |grouprole DAMAGE
|tip During Phase 2 and 3, ranged DPS should kill Dread Infernals, while melee DPS should kill Fel Imps. |grouprole DAMAGE
|tip Stay out of areas targeted on the ground. |grouprole DAMAGE
|tip During Shadowforce, use movement abilities to avoid being pushed off the platform. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Curse of the Legion when the player is near a tank. |grouprole HEALER
|tip Curse of the Legion and Mark of Doom targets will require extra healing. |grouprole HEALER
|tip Glaive Combo will deal heavy damage to the tanks. |grouprole HEALER
|tip Heavy raid damage occurs during Fel Hellstorm, Mannoroth's Gaze, Empowered Shadowforce, and Empowered Felseeker. |grouprole HEALER
|tip If affected by Curse of the Legion in Phase 1, run to the tank to be dispelled. |grouprole HEALER
|tip When affected by Mark of Doom in Phase 1, run away from the group and find a way to take damage to detonate it. Make sure you have high health. |grouprole HEALER
|tip Stay out of areas targeted on the ground. |grouprole HEALER
|tip During Shadowforce, use movement abilities to avoid being pushed off the platform. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip When Mannoroths Gaze goes out 3 people will be affected they will be feared away from the boss, each gaze needs at least 2 people to help soak it before the timer runs out. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the final phase, after the first Empowered Shadowforce. |grouprole EVERYONE
|tip The only time the dps and healers should be in front of the boss is just before shadowforce goes off in the last phase, right after this ability is done quickly run back behind the boss. |grouprole EVERYONE
confirm
step
click the blue portal |goto Hellfire Citadel/9 51.3,36.3
Take the portal to The Black Gate |goto Hellfire Citadel/10 39.8,50.9 |noway |c
step
kill Archimonde##91331 |goto Hellfire Citadel/10 58.4,53.3
Phase 1:
_TANK:_ |grouprole TANK
|tip Be sure to pick up Deathcallers as they come out. |grouprole TANK
|tip Be sure to taunt swap on the boss depending on who is tanking the deathcaller. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Watch out for the tank that has the deathcaller add, they will take more and more damage the longer its up. |grouprole HEALER
|tip Look out for people that stand in Allure of Flame, the more stacks they have the more damage they will take. |grouprole HEALER
|tip Desecrate does raid wide damage every 3 seconds watch the raids health. |grouprole HEALER
|tip If you get targeted by doomfire move out of the group. |grouprole HEALER
|tip Ranged should spread out 8 yards for Shadow Fel Burst, this ability will target one person and knock them and anyone around them up in the air. |grouprole HEALER
|tip The Shadow Fel Burst will make a purple circle under the targeted person or people, every other ranged not targeted by this ability should run on top of this circle to catch the people falling down. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip The number 1 priority for dps in this phase is to kill the Doomfires as soon as they spawn. |grouprole DAMAGE
|tip If you get targeted by doomfire move out of the group. |grouprole DAMAGE
|tip Be sure to kill Deathcallers as soon as possible. |grouprole DAMAGE
|tip Ranged should spread out 8 yards for Shadow Fel Burst, this ability will target one person and knock them and anyone around them up in the air. |grouprole DAMAGE
|tip The Shadow Fel Burst will make a purple circle under the targeted person or people, every other ranged not targeted by this ability should run on top of this circle to catch the people falling down. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to move when Allure of Flame comes out, A simple back and forth method works wonders. |grouprole EVERYONE
|tip Dont stand in Desecrate when it appears it will do massive damage and knock you back in its area. |grouprole EVERYONE
confirm
step
kill Archimonde##91331
Phase 2:
_TANK:_ |grouprole TANK
|tip Once again be sure to pick up the adds that come out. |grouprole TANK
|tip Be sure to taunt swap on the boss depending on who is tanking the deathcaller. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole HEALER
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole HEALER
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole HEALER
|tip Watch out for the raid when Shackles of Torment are broken. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the adds as soon as they come out. |grouprole DAMAGE
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole DAMAGE
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole DAMAGE
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip During this phase everyone should be be stacked on the boss this will make the adds that come out more easy to kill. |grouprole EVERYONE
|tip Once again be sure to move when Allure of Flame comes out. |grouprole EVERYONE
|tip Deathstalkers will be one of the adds that spawn during this phase they will target a random player and teleport on them then start casting a Consume Magic, This ability will do damage in a circle around the mob and interrupt anyone casting inside the cirlce. |grouprole EVERYONE
confirm
step
kill Archimonde##91331
Phase 3:
_TANK:_ |grouprole TANK
|tip The tank tanking the boss soon after phase 3 begins will get a debuff called Nether Banish, after 8 seconds the tank and everyone within 8 yards will go into the Nether. |grouprole TANK
|tip When in the Nether get aggro on the Nethered Shadowwalker, once this add is dead you will either get teleported out or you will have to click the swirling bubble that it creates to exit. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip This phase is a very healing intensive phase watch the entire raid. |grouprole HEALER
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole HEALER
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole HEALER
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole HEALER
|tip Watch out for the raid when Shackles of Torment are broken. |grouprole HEALER
|tip During Rain of Chaos the entire raid will be taking a large amount of damage it is suggested to keep big healing cds for when this happens. |grouprole HEALER
|tip Also watch people getting hit be Living Shadows these people will get hit extremely hard and get a healing debuff. |grouprole HEALER
|tip Watch who ever is tanking the Infernal Doombringers as they will take chunks of damage. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole DAMAGE
|tip Shackled Torment once broken will deal damage to the entire raid so don't pop all 3 at the same time. |grouprole DAMAGE
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole DAMAGE
|tip When inside the Nether be sure to kill the Void Stars that spawn asap, this is your number one priority. |grouprole DAMAGE
|tip When outside the Nether there are adds that spawn from where the Nether was formed, these adds called Living Shadows will target a random player outside and start running towards them. These need to be killed before hitting the player, they can be stunned and slowed and don't have to much hp. |grouprole DAMAGE
|tip When outside the Nether when the boss hits 25 percent hp Rain of Chaos will start happening, when this happens green circles will appear on the ground in random places, some of them will spawn an add called Infernal Doombringer, these adds need to be killed as soon as they come out and be spread out from each other as they heal themselves if they are close proximity to one another. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip It is recommended that when the Nether Banish goes out that one tank, one healer, and 4-6 dps go down to the Nether depending on your dps. |grouprole EVERYONE
|tip When in the Nether be sure not to get hit by void stars they will knock you off the edge. |grouprole EVERYONE
|tip When in the Nether don't stand in Nether Storm these are circles on the groud and deal damage. |grouprole EVERYONE
|tip When in the Nether be sure to leave the Nether when the Shadowed Nethewalker dies. |grouprole EVERYONE
|tip When outside the Nether don't stand in the green circles during Rain of Chaos, they deal massive damage. |grouprole EVERYONE
|tip Try to be far away from the Nether portals as they spawn Living Shadows that do a lot of damage and give you a healing debuff if they hit you. |grouprole EVERYONE
|tip If any less then three people go into the Nether then the boss will heal. |grouprole EVERYONE
|tip Infernal Doombringers can be stunned, and if they live to long they will start casting Hellfire which will deal a very high amount of damage to all players within 40 yards every second, this is basically a wipe if they start casting. |grouprole EVERYONE
confirm
step
Congratulations on completeing _Hellfire Citadel_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Hellfire Citadel - Mythic",{
lfgid=989,
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HFC, Mythic, Draenor, Tanaan, Jungle"},
description="\nThis guide will walk you through the Mythic version of the Hellfire Citadel raid.",
},[[
step
Enter Hellfire Citadel |goto Tanaan Jungle/0 45.60,53.57 < 10
|tip Some bosses are easier than others, and this is the suggested route to take for progression, going from easiest to hardest: Hellfire Assault, Iron Reaver, Kormrok, Hellfire High Council, Kilrogg Deadeye, Gorefiend(this is a very hard boss but is required to advance), Shadow-Lord Iskar, Socrethar the Eternal, Fel Lord Zakuun, Tyrant Velhari, Xhul'horac, Mannoroth, and Archimonde.
confirm
step
kill Siegemaster Mar'tak##95068 |goto Hellfire Citadel/1 55.2,48.1
|tip There should be 2 groups one for each side these groups should consist of 1 tank, 2 healers, 7 dps.
|tip The entire group should stay in the middle until Siegmaster Mar'tak is defeated, and then should split up into their groups until the intermission starts, after the intermission the groups should spread back out.
_TANK:_ |grouprole TANK
|tip One tank should take Siegemaster Mar'tak, while the other should pick up the adds. |grouprole TANK
|tip When the Hulking Berserker spawns, move it away from Mar'tak until Inspiring Presence fades. |grouprole TANK
|tip Tank swap after Mar'tak flees, and at 2 stacks of Slam after. |grouprole TANK
|tip Keep Gorebound Felcasters away from Fel-Infused Siege Weapons. Siege Weapons cannot be tanked. |grouprole TANK
|tip Move adds away from bombs to lower the damage melee DPS take. |grouprole TANK
|tip Use a cooldown if Slam stacks get too high. |grouprole TANK
|tip Move out of Shockwave from the Felfire Crusher. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Burn down Siege Weapons quickly these are the priority, then focus dps on berserkers as they will do a large amount of damage to the tank the longer they are alive. |grouprole DAMAGE
|tip Also be sure to hard switch to the Gorebound Felcasters when they get low enough they will transform and deal raid wide aoe damage until they die.|grouprole DAMAGE
|tip Stay spread out to minimize damage from Howling Axe and Conducted Shock Pulse. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Hulking Berserkers will deal heavy damage to the tank. |grouprole HEALER
|tip Extra healing will be needed on players affected by Howling Axe. |grouprole HEALER
|tip High raid damage will come from gorebound felcasters transforming and felfire demolishers be sure to watch out the raid while these are up. |grouprole HEALER
|tip Cooldowns are beneficial when Felcasters transform into Gorebound Terrors. |grouprole HEALER
|tip Dispel Conducted Shock Pulse from stunned players. |grouprole HEALER
|tip Stay spread out to minimize damage from Howling Axe and Conducted Shock Pulse. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in areas targeted by Capsule Impact. This will deal damage before the adds come out. |grouprole EVERYONE
|tip Interrupt Gorebound Felcasters' Felfire Volley and Contracted Engineers' Conducted Shock Pulse. |grouprole EVERYONE
|tip Move out of Shockwave and bombs. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp at the beginning of the fight. |grouprole EVERYONE
|tip Stun and interrupt when needed. |grouprole EVERYONE
|tip During the intermission phase the entire raid has to watch all of the intermission mobs abilities. |grouprole EVERYONE
confirm
step
_Intermission_
|tip Half way through the fight there will be an intermission that will summon 3 vehicles and 2 miny bosses.
|tip Felfire Crusher will go towards one of your cannons and will need to be killed first and as fast as possible before it can reach the cannon.
|tip Felfire Transport is the 2nd thing that needs to be killed it doesn't have much health but it will continue to spit out mobs until it is killed.
_Grute_
|tip This miny boss needs to be killed first.
|tip Grute will leap onto a random player and do 200k damage to that player and anyone in a 9 yard area.
|tip Shockwave shots out a wave toward a random player anyone inside this area will take massive damage and knock them back.
|tip Cower! damages the entire raid and reduces their movement speed for 9 seconds by 30 percent.
|tip Grute slams the ground doing massive damage and increase physical damage dealt to any targets hit by 30 percent this effect can stack.
_Grand Corruptor U'rogg_
|tip Corruption Nova will cause a spirial of green circles starting from the Grand Corruptor U'rogg.
|tip Corruption Bolt shots a bolt for 125k.
|tip Corruption Siphon will target a random player and after a few seconds they will explode dealing a massive amount of damage, they will receieve a debuff that needs to be healed for 3 times the damage dealt.
|tip Anyone standing near these people before the explosion will also be dealt the damage and receive the debuff.
confirm
step
kill Iron Reaver##90284 |goto Hellfire Citadel/1 55.2,48.1
_TANK:_ |grouprole TANK
|tip Tank swap when the active tank is targeted by Artillery. |grouprole TANK
|tip Artillery will overlap during each Ground Operations phase. Do not run out until the first tank returns. This will leave you with around 5 seconds to get out of the raid. |grouprole TANK
|tip Use a cooldown to Mitigate Artillery's explosion. |grouprole TANK
|tip During the Air Operations Phase, jump on Reactive Firebombs. |grouprole TANK
|tip When you have Artillery get at least 35 yards away from anyone in the raid including the other tank. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Use cooldowns for the Ground Operations phase. Iron Reaver is not attackable during Air Operations. |grouprole DAMAGE
|tip Spread out if you are ranged. |grouprole DAMAGE
|tip Kill Firebombs quickly during the Ground phase, these are top priority in the ground phase. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Place shields and HoTs on tanks targeted by Artillery. |grouprole HEALER
|tip Raid cooldowns are useful for Pounding casts. |grouprole HEALER
|tip Healing is very hectic and spikey for this encounter. |grouprole HEALER
|tip During the Air Operations phase, DPS Firebombs when healing is light. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in front of Iron Reaver during Barrage and Blitz. |grouprole EVERYONE
|tip The Blitz debuff can not be dispelled. |grouprole EVERYONE
|tip Do not stand in fire patches on the ground. |grouprole EVERYONE
|tip Run to a far edge (40+ yards away) when targeted by Artillery. |grouprole EVERYONE
_Air Phase_
Quickfuse Firebomb
|tip This is top priority for all dps in the air phase, the raid has 12 seconds to kill these bombs before they explode, they have very little health.
Burning Firebomb
|tip These are the bombs that need to be killed 2nd in the priority list, they will give a debuff to any attackers increasing fire damage taken by 15 percent be stack, players have 40 seconds to kill this bomb.
Reinforced Firebomb
|tip These are the last one that needs to be killed players have 1.25 minutes to kill this bomb, just dot it up and focus on the rest.
Reactive Firebomb
|tip This firebomb needs to be destroyed by jumping on them, this needs to be done by tanks or players with high damage reduction/immunities.
confirm
step
map Hellfire Citadel/1
path follow smart; loop off; ants curved; dist 15
path	49.5,50.6	32.5,50.9	Hellfire Citadel/2 93.0,47.0
path	Hellfire Citadel/2 78.7,45.9	Hellfire Citadel/2 77.8,34.4
path	Hellfire Citadel/2 72.0,21.8	Hellfire Citadel/3 67.9,89.6
path	Hellfire Citadel/3 65.2,78.5	Hellfire Citadel/3 60.3,75.4
path	Hellfire Citadel/3 51.0,72.3	Hellfire Citadel/3 50.5,23.5
path	Hellfire Citadel/3 50.6,23.4	Hellfire Citadel/4 60.4,89.2
Follow the path |goto Hellfire Citadel/4 60.4,89.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kormrok##90776 |goto Hellfire Citadel/4 52.3,48.8
Splash
|tip This ability will put circles on the ground every time the boss jumps into a pool.
|tip These need to be soaked by players if not soaked it will leave the ground marked in a large space around the circle, anyone standing in these marked spots will take massive damage and be slowed.
|tip As many circles as possible need to be soaked so that the raid has more space to kill the boss and do the other mechanics.
|tip To make this mechanic easy assign circles to people and completly cover the middle of the room as this is where the explosive runes are put, if these runes are covered with these pools it will make it difficult to soak the runes.
_TANK:_ |grouprole TANK
|tip Tank Kormok near the pool you wish to activate. |grouprole TANK
|tip Be wary of the knockback from Swat, as this can knock you into a pool. |grouprole TANK
|tip Pop a large cd when swat is cast on you. |grouprole TANK
|tip Move Kormrok out of the blast radius of Explosive Burst. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Use cooldowns for AoEing Grasping Hands. |grouprole DAMAGE
|tip Kill the Crushing hand to free the tank. |grouprole DAMAGE
|tip Explosive runes need to be controled when they are empowered, these runes can easily can be done by rogues or hunters, 2 per set of runes, 1 per half circle. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use raid cooldowns for Pound and Grasping Hands. |grouprole HEALER
|tip Each leap, Kormrok will deal damage to the raid. |grouprole HEALER
|tip Pound will deal massive damage to the whole raid. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Kormok switches abilities every 90 seconds. |grouprole EVERYONE
|tip Spread out and use defensive cooldowns during Explosive Energy and trigger the Runes. |grouprole EVERYONE
|tip During Foul Energy, clump behind the boss and AoE the Grasping Hands. |grouprole EVERYONE
|tip During Shadow Energy, move away from pools and dodge the waves of shadow energy. |grouprole EVERYONE
|tip Spread out at least 5 yards during Pound. |grouprole EVERYONE
|tip Do not stand in pools. They deal massive damage that becomes fatal in seconds. |grouprole EVERYONE
|tip When the boss leaps to a pull he empowers one of his 3 abilities depending on the pool, Green empowers Grasping Hands, Orange empowers Explosives Runes, and Purple empowers Fel Outpouring. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/4
path follow smart; loop off; ants curved; dist 15
path	58.7,55.0	60.3,90.6	Hellfire Citadel/3 50.8,23.4
path	Hellfire Citadel/3 50.8,72.1	Hellfire Citadel/3 59.0,75.6
path	Hellfire Citadel/3 66.7,77.1	Hellfire Citadel/3 67.8,89.4
path	Hellfire Citadel/2 72.1,22.4	Hellfire Citadel/2 73.5,28.0
path	Hellfire Citadel/2 77.9,33.7	Hellfire Citadel/2 77.7,38.3
path	Hellfire Citadel/2 77.8,43.3	Hellfire Citadel/2 78.0,63.1
path	Hellfire Citadel/2 72.4,72.4	Hellfire Citadel/5 81.5,8.5
path	Hellfire Citadel/5 81.2,31.5	Hellfire Citadel/5 71.3,33.8
path	Hellfire Citadel/5 71.2,62.3
Follow the path |goto Hellfire Citadel/5 71.2,62.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gurtogg Bloodboil##92146, Dia Darkwhisper##92144, Blademaster Jubei'thos##92142 |goto Hellfire Citadel/5 71.5,80.1
Bloodboil
|tip While Gurtogg Bloodboil is alive he will put a debuff on the 5 farthest people from him that will stack up and deal stacking damage every few seconds.
|tip Ranged need to be in 2 groups and switch every 4-5 stacks until the boss is dead.
_TANK:_ |grouprole TANK
|tip One tank should tank Dia Deathwhisper, while the other tanks the remaining bosses. |grouprole TANK
|tip The Dia tank should use cooldowns during Nightmare Visage. |grouprole TANK
|tip The Dia tank should also tank Dia away from the other two bosses as she gives them an immunity buff if she is to close to them. |grouprole TANK
|tip The tank on Dia will be one of the people with the Bloodboil debuff and will get the max stacks until Gurtogg Bloodboil is dead, this tank should use defensive cds whenver needed. |grouprole TANK
|tip The Bloodboil tank should use cooldowns during Acidic Wound. |grouprole TANK
|tip During Fel Rage, the Gurtogg tank should not chase him. This will allow stacks of Acidic Wound to drop. |grouprole TANK
|tip Move the boss away from Reap pools. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Mirror Images of Jubei'thos quickly. |grouprole DAMAGE
|tip The kill order should be Gurtogg Bloodboil, Blademaster Judei'thos, then Dia Darkwhisper. |grouprole DAMAGE
|tip If you are affected by Fel Rage you will receieve a DPS buff and you will have aggro on the boss, pop any cds you might have. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players affected by Fel Rage will require extensive healing. |grouprole HEALER
|tip The Gurtogg tank will need heavy healing when stacks of Acidic Wound build up. |grouprole HEALER
|tip The Dia tank will need heavy healing. |grouprole HEALER
|tip Dispel Mark of the Necromancer when the player gains the red version of the debuff, allow the red debuff to stay on for as long as possible. |grouprole HEALER
|tip When Mark of the Necromancer is dispelled the entire raid will take 30k+ damage. |grouprole HEALER
|tip Use raid cooldowns for each "ultimate" ability. These occur roughly 75 seconds apart. |grouprole HEALER
|tip When Dia reaches 30%, it will be up to the raid how to handle the mark if the raid can keep up with the damage its suggested to keep the debuff on those affected, if not dispell whenver possible and get the raid to full health before reap comes out. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from Fel Blade and Wailing Horrors. |grouprole EVERYONE
|tip If affected by Mark of the Necromancer, move out of the raid to drop the Reap pool during Reap. |grouprole EVERYONE
|tip During Wailing Horror the raid can stack up in some corners of the room to avoid all of the adds. |grouprole EVERYONE
|tip During image phases the raid needs to stack up and kill as many images as they can healing is very intense here, also all blades need to be dodged they will deal a massive amount of damage if hit and knock back. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	65.8,72.6	57.7,79.6	46.4,79.6
path	45.9,67.7	40.0,64.5	17.3,64.9
path	12.0,56.5	12.2,36.1	24.2,34.2
Follow the path |goto Hellfire Citadel/5 24.2,34.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kilrogg Deadeye##90378 |goto Hellfire Citadel/5 51.0,33.7
_TANK:_ |grouprole TANK
|tip Use active mitigation when Kilrogg casts Shred Armor. |grouprole TANK
|tip Drag the boss away from Blood Globules and Fel Blood Globules. |grouprole TANK
|tip Each time a Hulking Terror spawns, tank swap. |grouprole TANK
|tip Face Hulking Terrors away from the group, and drag them away when they are about to die. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Ranged DPS should prioritize damage on Blood Globules. |grouprole DAMAGE
|tip All DPS should prioritze adds over the boss. |grouprole DAMAGE
|tip When Hulking Terrors die they will leave a green pool behind, this needs to be soaked by 2 people switching off until the pool is completly gone, this can be accomplished by any 2 people but preferably 2 melee dps. |grouprole DAMAGE
|tip When Salicating Bloodthirsters spawn they need to be slowed, rooted, and killed asap, if they reach the green pull they will transform into Hulking Terrors. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use healing cooldowns during Death Throes. |grouprole HEALER
|tip Use external defensive cooldowns on the Kilrogg tank during Death Throes. |grouprole HEALER
|tip Single-target heal the player targeted by Heart Seeker. |grouprole HEALER
_Vision of Death Team:_
|tip Two DPS and one healer should go down, there should be 4 teams for the visions.
|tip Players will become more powerful in their role with each demon killed. This buff will last when you are transported out.
|tip Kill these mobs as fast as possible, there will be 3 types Hellblaze Imp, Mistress, and Fiend, each have a special ability.
|tip Hellblaze Imps will only cast one spell that takes about 10 seconds to cast, this needs to be interrupted or it will one shot whoever they target.
|tip Hellblaze Fiends will explode when they die be sure to run away from this explosion it will deal a massive amount of damage.
|tip Hellblaze Mistress these have a lot of health and will cast a cone attack which will stun and deal a massive amount of damage to anyone inside the cone, don't stand in this.
|tip Upon returning, Healers should stand near the tanks to clear Fel Corruption and use their cooldowns during Death Throes. |grouprole HEALER
|tip Upon returning, DPS should focus on killing adds, but this buff is very big so players will kill these mobs very fast, then be sure to put as much damage on the boss as possible. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt Hulking Terrors when casting Rending Howl. |grouprole EVERYONE
|tip When targeted by Heart Seeker, move far away from Kilrogg. |grouprole EVERYONE
|tip Use defensive cooldowns during Death Throes. |grouprole EVERYONE
|tip The Heart Seeker debuff is permanent but it can be removed with immunities and Hand of Protection, it will also be removed if the player enters the Visions of Death. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/5
path follow smart; loop off; ants curved; dist 15
path	53.4,33.6	66.7,33.6	80.9,33.6
path	81.6,8.3
Follow the path |goto Hellfire Citadel/5 81.6,8.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/2
path follow smart; loop off; ants curved; dist 15
path	72.4,71.5	77.8,59.6	78.1,46.3
path	65.3,41.8	55.1,47.6	38.7,48.0
path	30.7,63.1	19.2,64.6
Follow the path |goto Hellfire Citadel/2 19.2,64.6 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gorefiend##91809 |goto Hellfire Citadel/2 17.3,44.5
Corrupted Soul
|tip When sent into the realm a fragment of your soul is left behind, instead of being able to leave Gorefiends stomach by running into the middle, the dps outside must release you from the realm.
|tip People that are affected by Shadow of Death should run to predetermined spots before the debuff runs out, this will make it easier for the dps to get the Corrupted Souls down in time.
_TANK:_ |grouprole TANK
|tip Tank swap when the current tank gains Shadow of Death. |grouprole TANK
|tip Inside the stomach, pick up the Enraged Spirit. Interrupt Bellowing Shoult and move out of Fel Fury. |grouprole TANK
|tip Swap tanking the Gorebound Spirit at 8-10 stacks of Fel Flames. |grouprole TANK
|tip Interrupt the Gorebound Spirit's Bellowing Shout. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus on killing adds rather than Gorefiend. Gorefiend takes more damage during Feast of Souls. |grouprole DAMAGE
|tip Stay spread out. Move out of Crushing Darkness. |grouprole DAMAGE
|tip Kite the Gorebound Construct if targeted by Hunger for Life. |grouprole DAMAGE
|tip While inside Gorefiend's stomach, kill Constructs and help kill the Enraged Spirit. |grouprole DAMAGE
|tip Use DPS cooldowns during Feast of Souls after the adds are dead. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Gorebound Spirit tank will take heavy damage. |grouprole HEALER
|tip While inside Gorefiend's stomach, heal the Tortured Essences. |grouprole HEALER
|tip Kite the Gorebound Construct if targeted by Hunger for Life. |grouprole HEALER
|tip Stay spread out. Move out of Crushing Darkness. |grouprole HEALER
|tip Use raid cooldowns to mitigate damage from Feast of Souls. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip When targeted by Touch of Doom, run to the edge of the room until it expires. |grouprole EVERYONE
|tip Be sure to stack together during Feast of Souls to make healing easier. |grouprole EVERYONE
|tip During Feast of Souls people with "Gorefiends Corruption" should soak the unstable souls, this will remove the corruption debuff and stop them from reaching Gorefiend. |grouprole EVERYONE
|tip Gorefiend will put out a debuff on 3 people called Shared Fate, one of these people will be rooted and the other 2 will have to run to this person and stand on top of them to free them from this root. |grouprole EVERYONE
|tip All players with the Shared Fate debuff will take ticking damage until the debuff is removed by freeing the rooted player, if they do not accomplish this within 10 seconds the debuff will explode for a massive amount of damage. |grouprole EVERYONE
confirm
step
click the soul portal |goto Hellfire Citadel/2 22.1,47.1 < 5 |c
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	59.8,76.6	49.1,76.7
Follow the path |goto Hellfire Citadel/6 49.1,76.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shadow-Lord Iskar##90316 |goto Hellfire Citadel/6 38.9,76.6
Shadow Reposte
|tip The boss will cast this on the holder of the orb, just simply pass the orb to another player before the cast goes off.
Phantasmal Radiance
|tip During every transition phase this add will also appear, it has one ability, "Chains of Despair".
Chains of Despair
|tip This ability will target 6 players with this debuff every player will be connected to another player out of the other 5. These players need to find which ever person they are connected to and stand on top of them to remove this debuff.
|tip The only way to find out who each player is connected to is to have control of the orb.
_TANK:_ |grouprole TANK
|tip During the first transmission one tank should pick up the Corrupted Priest of Terokk, while the other tank picks up the remaining adds. |grouprole TANK
|tip During the second transmission one tank should pick up the Shadowfel Warden and the other tank should pick up the remaining adds. |grouprole TANK
|tip During the last transmission one tank should pick the Fel Raven and the Shadowfel Warden, while the other tank gets the remaining adds. |grouprole TANK
|tip During the second and third intermission phases whichever tank is tanking the Shadowfel Wardens needs the orb to interrupt Fel Conduit, this ability will do massive damage to the raid until interrupted. Once your interput this ability be sure to give the orb back to one of the healers so they can dispell. |grouprole TANK
|tip The boss should be tanked in the middle at all time to make Fel Chakram easier.
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Corrupted Talonpriests first during the first intermission phase. |grouprole DAMAGE
|tip Kill Shadowfel Wardens first during the second and third intermission. |grouprole DAMAGE
|tip Kill the Fel Raven first during the third intermission. |grouprole DAMAGE
|tip After the priority targets are dead, kill Fel Ravens and then DPS Iskar. |grouprole DAMAGE
|tip Stand in front or behind the player holding the Eye of Anzu during Focused Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip One or two healers should be designated to hold the orb and pass it to the correct players. |grouprole HEALER
|tip Dispel Fel Bomb when you are holding the Eye of Anzu |grouprole HEALER
|tip Targets of Phantasmal Wounds need to be healed to 90% to remove it. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip 3 players will be targeted by Fel Chakram at a time. If you are targeted, move away from group members. The Chakram explodes when it contacts each player. The 3 people should make a triangle around the boss. |grouprole EVERYONE
|tip Phantasmal Winds will push you towards the edge of the platform. Simply walk against it until you receive the orb, once you have the orb be sure to pass it to another effected person or to the designated orb holder. |grouprole EVERYONE
|tip When targeted by Fel Incineration be sure to kite the flame line away from the group and away from the path the group will take, this can be stood in and healed through to reduced the amount of fire on the ground. |grouprole EVERYONE
|tip During the transition phases be sure to stand in the middle of the room to split the damage of Focused Blast.
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	45.2,76.9	57.3,76.7	61.8,83.1
Follow the path |goto Hellfire Citadel/6 61.8,83.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	42.3,8.1	42.5,25.7	52.2,25.5
path	61.1,26.5	61.0,41.7
Follow the path |goto Hellfire Citadel/8 61.0,41.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Soulbound Construct##90296 |goto Hellfire Citadel/8 59.0,54.1
_Phase 1_
Apocalyptic Felburst
|tip This ability will target a random ranged member and put a circle on the ground anyone standing in the circle will die anyone out of the circle will take massive damage.
Voracious Soulstalker
|tip This add will spawn on a random ranged player it will the fixate on the closest person to it, this needs to be kited as it does a cone of damage in its path that will kill anyone that hits it.
|tip At 50 percent this add needs to be switched to and killed asap, it will do a 3 second cast to attempt to regain its health this needs to be stunned silence or knocked back, this can not be interrupted.
_TANK:_ |grouprole TANK
|tip During phase one, tank swap when the Shattered Defenses debuff starts causing you excessive damage. |grouprole TANK
|tip During phase one be sure to face the boss away from the group to avoid hitting the entire group with shattered defenses, also be sure to reposition the boss when he uses his felblaze charge and fel prison. |grouprole TANK
|tip If the damage of Shattered Defenses is to much you can make soak groups to make it so the tank doesnt get to many stacks to fast, suggested soak groups two melee dps every other Shattered Defense. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Crystalline Fel Prisons quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When Apocalyptic Felburst hits the entire raid will take massive damage this is where healing cds need to be used. |grouprole HEALER
confirm
step
_Phase 2_
_TANK:_ |grouprole TANK
|tip In phase two, one tank should control the Soulbound Construct, while the other should pick up adds and tank Socrethar. |grouprole TANK
|tip The Construct tank should place Felblaze Charge to limit the movement of adds coming from the portals. |grouprole TANK
|tip The Construct tank should use Volatile Fel Orb to damage those adds. |grouprole TANK
|tip The Construct tank should use Fel Prison to prevent the Haunting Souls from reaching their targets. |grouprole TANK
|tip The Construct tank should spam Reverberating Blow on Soul of Socrethar. |grouprole TANK
|tip The Construct tank should also switch targets to the Sargerei Dominiators as they need to die asap before being able to damage the boss again. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Exert Dominance whenever it is cast. |grouprole DAMAGE
|tip Ranged DPS should quickly kill Haunting Souls. |grouprole DAMAGE
|tip When the Sargerei Dominiators come out they need to be switched to asap and killed quickly. |grouprole DAMAGE
|tip If affected by Gift of the Man'ari, stand at least 8 yards away from other players. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Shadow Word: Agony from the add tank during phase 2. |grouprole HEALER
|tip Prepare for heavy raid damage during Apocalypse. |grouprole HEALER
|tip Gift of the Man'ari does massive single target damage and lasts for 2 mins, at points in the fight the group will most likely have 4 of these out at a time, be sure to single target heal these people. |grouprole HEALER
|tip If affected by Gift of the Man'ari, stand at least 8 yards away from other players. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip If fixated be sure to place yourself in the direction the fire line is faceing, while the ghosts are in the fire lines they are slowed and take damage. |grouprole EVERYONE
|tip If targeted by Volitile Fel Orb be sure to stand out of the group this will do aoe damage once it reaches you. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	56.8,58.9	56.8,69.1	55.5,80.8
path	45.9,81.0	42.5,74.2	37.5,70.0
Follow the path |goto Hellfire Citadel/8 37.5,70.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tyrant Velhari##93439 |goto Hellfire Citadel/8 29.3,50.4
|tip There are no new abilities in this fight, the biggest thing is each aura from each phase persists during the entire fight but decreases in strength.
_TANK:_ |grouprole TANK
|tip One tank should tank the add that spawns during the current phase. |grouprole TANK
|tip Tank swap at 2-4 stacks of Seal of Decay depending on gear level and healers. |grouprole TANK
|tip During the last phase be sure to pull the boss and the add to any edge of the room and then kite the boss slowly around the room when Dispoiled Ground is put on the floor. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Cleave the Ancient Enforcer during phase one. Just make sure it dies before the next phase starts. |grouprole DAMAGE
|tip During phase two just cleave off the boss to kill the add. Just make sure it dies before the next phase starts. |grouprole DAMAGE
|tip During phase three hard switch to the Ancient Sovereign this add will put a buff on the boss decreasing damage taken by a large amount until this add dies. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Outheal Touch of Harm. It will absorb healing up to it's capacity. If the target is about to die, dispel it, once it is dispelled this debuff will jump to another random player, it will also deal 15% of the targets max hp every 2 seconds. |grouprole HEALER
|tip During the last phase the tanks will take massive damage as the debuff increases in potency save damage reduction cds for this. |grouprole HEALER
|tip Be sure to save aoe healing cds for the second phase this will be the most healing intensive phase. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stack in the big circle to split the damage of Edict of Condemnation. If you have an immunity and you are targeted by this ability use it to solo soak, this ability also slows movement speed by 70%. |grouprole EVERYONE
|tip During the first phase the group should be spread 8 yards away from each other and pick a spot in the room to stand. The only time anyone should move is to move out of Searing Blaze, or to help soak Edict of Condemnation if needed. |grouprole EVERYONE
|tip During phase two the group should all be stacked together on one side of the boss, if you are effected by the debuff "Font of Corruption" be sure to move to the other side of the boss. Once this debuff wears off be sure to run back to the side of the boss of uneffected players. |grouprole EVERYONE
|tip Save Bloodlust/Heroism/Timewarp at the beginning of the second phase. |grouprole EVERYONE
|tip During the first phase the group will receive a debuff that will hurt you the more you move. |grouprole EVERYONE
|tip During the second phase the group will receive a debuff that decreases the raids maximum HP this will continue until the phase is over,(you will get you max hp back once this phase is over) |grouprole EVERYONE
|tip During the last phase the group will receive a debuff that increases over time, this will increase your damage done and increase your damage taken. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/8
path follow smart; loop off; ants curved; dist 15
path	31.8,66.5	39.0,70.4	42.4,74.8
path	43.6,81.1	50.3,81.0	56.0,78.8
path	56.8,64.9	61.0,42.9	61.9,25.4
path	47.6,25.3	42.3,23.3	42.4,8.8
Follow the path |goto Hellfire Citadel/8 42.4,8.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	61.8,76.3	73.3,76.5	73.4,44.8
path	63.0,44.2	50.0,38.0	50.0,29.0
Follow the path |goto Hellfire Citadel/6 50.0,29.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fel Lord Zakuun##89890 |goto Hellfire Citadel/6 50.0,19.9
_TANK:_ |grouprole TANK
|tip Tank swap after each Soul Cleave. You may need to use a cooldown to mitigate the damage. |grouprole TANK
|tip Move out of waves from Wake of Destruction and jump over Rings of Destruction. |grouprole TANK
|tip Keep Zakuun at least 20 yards away from Fel Crystals. |grouprole TANK
|tip During Phase 2, stack together to split Heavy Handed damage. Use cooldowns to mitigate the damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When not affected by Latent Energy, move into Rumbling Fissures and intercept waves from Wake of Destruction. |grouprole DAMAGE
|tip When affected by Latent Energy, stay out of waves from Wake of Destruction. |grouprole DAMAGE
|tip When debuffed with Befouled, move at least 8 yards away from other players. |grouprole DAMAGE
|tip If targeted by Seed of Destruction, move away from other Seed targets and from Fel Crystals. Stand still when the debuff expires. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Use raid cooldowns during Disarmed and Enrage. |grouprole HEALER
|tip Befouled players will need extra healing. |grouprole HEALER
|tip When not affected by Latent Energy, move into Rumbling Fissures and intercept waves from Wake of Destruction. |grouprole HEALER
|tip When affected by Latent Energy, stay out of waves from Wake of Destruction. |grouprole HEALER
|tip When debuffed with Befouled, move at least 8 yards away from other players. |grouprole HEALER
|tip If targeted by Seed of Destruction, move away from other Seed targets and from Fel Crystals. Stand still when the debuff expires. |grouprole HEALER
|tip Watch the raid if any Unleashed Energys go off. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Soul Cleave can now bring down 5 players, the tank plus 4 other players. |grouprole EVERYONE
|tip These 4 players should be players that have the Latenet Energy debuff the realm will remove the latenet energy debuff. |grouprole EVERYONE
|tip When leaving the nether realm be sure to spread out and apart as waves of destruction will come out from each person. |grouprole EVERYONE
|tip Be sure to only allow one Fel Pillar to spawn per set, also to make the fight easier stand in the fissures that are closest to the boss. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp near the end of the fight during Enrage. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/6
path follow smart; loop off; ants curved; dist 15
path	49.8,27.5	50.4,39.8	57.4,46.5
path	68.1,44.6	78.7,44.4	88.1,51.3
path	Hellfire Citadel/7 40.1,50.7
Follow the path |goto Hellfire Citadel/7 40.1,50.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Xhul'horac##93068 |goto Hellfire Citadel/7 53.2,50.9
_TANK:_ |grouprole TANK
|tip During Phase 1 and 2, one tank should pick up the large add and one should tank Xhul'horac. |grouprole TANK
|tip Both adds might be up at the same time be ready for this. |grouprole TANK
|tip The add tank should use a cooldown for Withering Gaze and Felblaze Flurry. |grouprole TANK
|tip The Xhul'horac tank should use a cooldown for Fel Strike and Void Strike. |grouprole TANK
|tip During the last two phases, one tank should taunt after each Fel Strike and the other after each Void Strike. |grouprole TANK
|tip Stun and interrupt Wild Pyromaniacs whenever possible. |grouprole TANK
|tip Keep Xhul'horac away from nearby Chaotic Felblaze or Creeping Void patches. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip DPS priority is Wild Pyromaniac > Unstable Voidfiend > Vanguard Akkelion/Omnus > Xhul'horac. |grouprole DAMAGE
|tip Stun and interrupt Wild Pyromaniacs. |grouprole DAMAGE
|tip Run to the edge of the room when effected by Fel Surge or Void Surge. |grouprole DAMAGE
|tip Move out of the purple pool if targeted by Volatile Voidstep. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During Phase 1 and 2, the boss tank will need extra healing during Fel Strike and Void Strike. |grouprole HEALER
|tip Healing is very chaotic during this fight, with a lot of DoT's and direct AoE damage. |grouprole HEALER
|tip Run to the edge of the room when effected by Fel Surge or Void Surge there should be designated spots for each color. |grouprole HEALER
|tip Move out of the purple pool if targeted by Volatile Voidstep. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Don't allow any of the green and purple pools to touch this will cause massive raid wide damage. |grouprole EVERYONE
|tip In the last phase when hes switching colors back and forth after every fel and void strike he does he will also be applying both color debuffs on players, these players have to be careful not to place the color debuff near the opposite colors that are alraedy on the ground. |grouprole EVERYONE
|tip When each miny boss dies the boss will take there ability and empower it. |grouprole EVERYONE
|tip Black Holes these will suck players toward the black hole until it is destroyed, to destroy these, many people need to run into it to soak it together or a player with an immunity needs to soak it. |grouprole EVERYONE
|tip Empowered Black Holes these will do the same as normal black holes but will leave a debuff on players that soak then that will increase damage taken from further black holes by 1000% for 2 minutes. |grouprole EVERYONE
|tip Chains of Fel simply run away from other players effected by these. |grouprole EVERYONE
|tip Empowered Chains of Fel this will do the same targetd 3 players but once broken an ability will cast called "Fel Snapback" this will deal 250k damage to the player breaking the chain and to anyone else around them within 5 yards. |grouprole EVERYONE
confirm
step
map Hellfire Citadel/7
path follow smart; loop off; ants curved; dist 15
path	47.5,51.1	19.0,51.1
path	Hellfire Citadel/6 86.4,51.5	Hellfire Citadel/6 73.2,44.5
path	Hellfire Citadel/6 73.3,64.3	Hellfire Citadel/6 72.9,76.4
path	Hellfire Citadel/6 61.7,76.5	Hellfire Citadel/6 61.8,62.1
Follow the path |goto Hellfire Citadel/6 61.8,62.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click the purple portal |goto Hellfire Citadel/6 61.8,62.1
Take the portal to Mannoroth's platform |goto Hellfire Citadel/9 51.0,25.2 |noway |c
step
kill Mannoroth##91349
|tip In mythic difficulty Mannoroth is immediately resurrected at the beginning of the fight there are no longer summoners.
|tip Wrath of Gul'dan will target 2 ranged dps, 2 melee dps, and 1 healer this will deal damage to this player and do increased damage the more stacks of Gripping Shadows that player gets, this ability dissipates after applying 40 stacks and it will happen twice during the fight.
|tip The closest player within 15 yards of the debuffed player can soak this damage reducing the amount of Gripping Shadows stacks from the debuffed player, but the soaking player will receive these Gripping Shadow debuffs until they move out. Gripping Shadows lasts for 15 seconds.
_TANK:_ |grouprole TANK
|tip The Doom Lord needs to be tanked and interrupted. |grouprole TANK
|tip During Phase 1-3, position Mannoroth in the middle of the room with your back facing one of the 3 pillars. |grouprole TANK
|tip During Glaive Combo, the active tank should take the Glaive Thrust and Massive Blast, then the second tank should taunt for the last Glaive Thrust. |grouprole TANK
|tip No tank can take two Massive Blasts in a row. Use cooldowns for Glaive Thrust. |grouprole TANK
|tip During Phase 4, turn Mannoroth so that his back is towards the edge of the platform. Empowered Massive Blast will knock you back, stay on the platform. |grouprole TANK
|tip One tank should stand at Mannoroth's side when not tanking during Phase 4 |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If affected by Curse of the Legion in Phase 1, run to the tank to be dispelled. |grouprole DAMAGE
|tip During Phase 2 and 3, ranged DPS should kill Dread Infernals, while melee DPS should kill Fel Imps. |grouprole DAMAGE
|tip Stay out of areas targeted on the ground. |grouprole DAMAGE
|tip During Shadowforce, use movement abilities to avoid being pushed off the platform. |grouprole DAMAGE
|tip Adds are priorty and need to be grouped up and killed asap. |grouprole DAMAGE
|tip Be sure to interrupt Doom Lords don't let these cast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Curse of the Legion when the player is near a tank, when dispelled the player will also take a massive amount of damage this needs to be mitigated. |grouprole HEALER
|tip Curse of the Legion and Mark of Doom targets will require extra healing. |grouprole HEALER
|tip Glaive Combo will deal heavy damage to the tanks. |grouprole HEALER
|tip Heavy raid damage occurs during Fel Hellstorm, Mannoroth's Gaze, Empowered Shadowforce, and Empowered Felseeker. |grouprole HEALER
|tip Stay out of areas targeted on the ground. |grouprole HEALER
|tip During Shadowforce, use movement abilities to avoid being pushed off the platform. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip When affected by Mark of Doom, run away from the group and find a way to take damage to detonate it. Make sure you have high health, the new mechanic, Wrath of Gul'dan is a good way to accomplish this. |grouprole EVERYONE
|tip When Mannoroths Gaze goes out 3 people will be affected they will be feared away from the boss, each gaze needs at least 2 people to help soak it before the timer runs out. |grouprole EVERYONE
|tip The only time the dps and healers should be in front of the boss is just before shadowforce goes off in the last phase, right after this ability is done quickly run back behind the boss. |grouprole EVERYONE
confirm
step
click the blue portal |goto Hellfire Citadel/9 51.3,36.3
Take the portal to The Black Gate |goto Hellfire Citadel/10 39.8,50.9 |noway |c
step
kill Archimonde##91331 |goto Hellfire Citadel/10 58.4,53.3
Phase 1:
_TANK:_ |grouprole TANK
|tip Be sure to pick up Deathcallers as they come out. |grouprole TANK
|tip Be sure to taunt swap on the boss depending on who is tanking the deathcaller. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Watch out for the tank that has the deathcaller add, they will take more and more damage the longer its up. |grouprole HEALER
|tip Look out for people that stand in Allure of Flame, the more stacks they have the more damage they will take. |grouprole HEALER
|tip Desecrate does raid wide damage every 3 seconds watch the raids health. |grouprole HEALER
|tip If you get targeted by doomfire move out of the group. |grouprole HEALER
|tip Ranged should spread out 8 yards for Shadow Fel Burst, this ability will target three people and knock them and anyone around them up in the air. |grouprole HEALER
|tip The Shadow Fel Burst will make a purple circle under the targeted people, every other ranged not targeted by this ability should run on top of this circle to catch the people falling down. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip The number 1 priority for dps in this phase is to kill the Doomfires as soon as they spawn this will make phase 2 much easier. |grouprole DAMAGE
|tip If you get targeted by doomfire move out of the group. |grouprole DAMAGE
|tip Be sure to kill Deathcallers as soon as possible. |grouprole DAMAGE
|tip Ranged should spread out 8 yards for Shadow Fel Burst, this ability will target one person and knock them and anyone around them up in the air. |grouprole DAMAGE
|tip The Shadow Fel Burst will make a purple circle under the targeted person or people, every other ranged not targeted by this ability should run on top of this circle to catch the people falling down. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip In mythic allure of flames no longer jumps to raid members when it is cast it instead does 50k damage to every member of the raid for every patch that is down. |grouprole EVERYONE
|tip To avoid this the mechanic in this fight is when doomfire spirits spawn and put fire on the group raid members need to walk over this flame to pick it up. |grouprole EVERYONE
|tip Once this fire is on a player it will deal a high amount of damage and last for 12 seconds after the debuff runs out the flames will spawn once again under that persons feet. |grouprole EVERYONE
|tip Dont stand in Desecrate when it appears it will do massive damage and knock you back in its area. |grouprole EVERYONE
confirm
step
Phase 2:
_TANK:_ |grouprole TANK
|tip Once again be sure to pick up the adds that come out. |grouprole TANK
|tip One tank should always be in the groups soaking Allure of Flame whenever that tank is doing that the other must tank all adds and the boss. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole HEALER
|tip Wrought Chaos, this ability will target 2 people, it will make a line starting at one person and going through the 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole HEALER
|tip Watch out for the raid when Shackles of Torment are broken. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the adds as soon as they come out. |grouprole DAMAGE
|tip Shackled Torment, this ability will target 3 random people, If you are targeted by this you will take increased damage over time until you break it, to break this ability you will have to run away from the shackle until your purple line disappears. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Wrought Chaos, this ability will target the enitre raid , it will make a line starting at one person and going through a 2nd person, try not to face this line towards the raid. It will make an arrow where the line of damage will be going. |grouprole EVERYONE
|tip Shackled Torment instead of doing damage to the entire raid when broken it will do 1 million + damage to anyone within 25 yards of the original shackle location, this damage can be completly avoided. |grouprole EVERYONE
|tip During this phase everyone should be stacked on the boss this will make the adds that come out more easy to kill. |grouprole EVERYONE
|tip Deathstalkers will be one of the adds that spawn during this phase they will target a random player and teleport on them then start casting a Consume Magic, This ability will do damage in a circle around the mob and interrupt anyone casting inside the cirlce. |grouprole EVERYONE
confirm
step
Phase 3:
|tip Phase 3 is completly different in mythic containing many new abilities and is not illustarted in the dungeon journal.
|tip Unlike in heroic/normal the entire raid is sucked into the nether for the final phase.
_TANK:_ |grouprole TANK
|tip Source of Chaos, this mechanic will come out and go on the tank with the highest threat on the boss, this will push the tank back trying to push them off the edge and will deal increasing damage over time. |grouprole TANK
|tip Source of Chaos is a very difficult mechanic to deal with as the crystal that causes this mechanic has a significt amount of health, dependent on what you think your team can do you can either try to kill this before your tank dies or you can save battles resurrections and just let them die. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Dark Conduit is a new ability that targets a ranged member and puts down a shadow orb, the player targeted takes a high amount of damage and anyone that stands in this orb also will take a high amount of damage. |grouprole HEALER
|tip If conduits ever touch they will deal a massive amount of damage to the entire raid. |grouprole HEALER
|tip Mark of the Legion this will put a debuff on 4 random players and give those players 4 different timers in which the debuff wears off, Once this debuff wears off it will deal 1.5 million damage split between all players in a short range and will knock these players back. |grouprole HEALER
|tip Mark of the Legion needs groups to soak this as it also gives a debuff to players that increase the damage taken by mark of the legion by 600%. |grouprole HEALER
|tip Healing rotations need to be made for every Rain of Chaos. Every infernal that falls to the group will deal 100k damage to everyone in the raid and 200k if they stand in the falling zone. |grouprole HEALER
|tip Infernals come down in quick succession and players need to be healed up asap. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip Dark Conduit is a new ability that targets a ranged member and puts down a shadow orb, the player targeted takes a high amount of damage and anyone that stands in this orb also will take a high amount of damage. |grouprole DAMAGE
|tip If conduits ever touch they will deal a massive amount of damage to the entire raid. |grouprole DAMAGE
|tip Mark of the Legion this will put a debuff on 4 random players and give those players 4 different timers in which the debuff wears off, Once this debuff wears off it will deal 1.5 million damage split between all players in a short range and will knock these players back. |grouprole DAMAGE
|tip Mark of the Legion needs groups to soak this as it also gives a debuff to players that increase the damage taken by mark of the legion by 600%. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Seeding Corruption this mechanic is basically the saftey dance from Naxxaramas, the boss has 4 set patterns and will choose one random one each time he casts this, just dont stand in the green when it forms. |grouprole EVERYONE
|tip Just like in normal/heroic Rain of Chaos will happen spawning infernals, but instead of spawning the same amount each time it increases over time spawning more farther into the fight. |grouprole EVERYONE
|tip The raid also only has 12 seconds to kill these mobs as they will start casting there aoe ability after those 12 seconds. |grouprole EVERYONE
|tip Be sure to spread the infernals apart and kill them asap. |grouprole EVERYONE
|tip Void stars are also the same mechanic as normal/heroic but in mythic instead of one spawning at a time 4 will spawn, they don't have much hp but need to be slowed and killed. |grouprole EVERYONE
confirm
step
Congratulations on completeing _Hellfire Citadel Mythic_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Highmaul - Normal/Heroic",{
mapid=610,
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HM, Normal, Maul, High, Heroic, Draenor, Nagrand"},
description="\nThis guide will walk you through the Normal and Heroic versions of the Highmaul raid.",
},[[
step
Enter Highmaul |goto Nagrand D/0 32.98,38.37 < 5
confirm
step
talk Gharg##84971 |goto Highmaul/2 46.5,47.2 < 10
Tell him _"We are ready, Gharg!"_
Ride the elevator to the arena |goto Highmaul/3 49.3,51.4 |noway |c
step
kill Vul'gor##80048 |goto Highmaul/3 55.0,58.2
|tip Kargath will come out after Vol'gor is dead.
confirm
step
kill Kargath Bladefist##78714 |goto Highmaul/3 54.70,57.60
_TANK:_ |grouprole TANK
|tip Tank Kargath in the center of the arena. Cooldowns are useful for Impale, which deals heavy damage and leaves Open Wounds. |grouprole TANK
|tip The tank with the highest Open Wounds stack is thrown into the stands. |grouprole TANK
|tip After returning from the stands, the tank should taunt Kargath. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If you are targeted by Berserker Rush, kite him through one of the flame pillars. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage from Impale, especially if they are already affected by Open Wounds. |grouprole HEALER
|tip Players caught in the path of Berserker Rush will take very heavy or fatal damage. |grouprole HEALER
|tip If targeted by Berserker Rush, kite Kargath through a flame pillar. |grouprole HEALER
Chain Hurl Team:
|tip One tank, one healer, and three DPS (strong AoE).
|tip Chain Hurl Targets the 5 closest people to the boss to throw up to the stands.
|tip Pull as many spectators as you can handle and frequently AoE/CC them down.
|tip Kill Bileslingers and Iron Bombers first. Bombers explode upon death - move away.
_EVERYONE:_ |grouprole EVERYONE
|tip Use a cooldown if affected by Iron Bomb. |grouprole EVERYONE
|tip Avoid areas targeted by Mauling Brew. |grouprole EVERYONE
confirm
step
map Highmaul/3
path follow smart; loop off; ants curved; dist 15
path	49.2,51.3	Highmaul/1 55.2,74.4
path	Highmaul/1 55.4,67.1	Highmaul/1 56.3,62.3
Follow the path, dropping down |goto Highmaul/1 56.3,62.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Butcher##77404 |goto Highmaul/1 57.80,55.0
_TANK:_ |grouprole TANK
|tip Tanks need to stand together to split damage from Heavy Handed. |grouprole TANK
|tip Tank swap at 3-4 stacks of The Cleaver/The Tenderizer. |grouprole TANK
|tip Use avoidance cooldowns to minimize stacks of The Cleaver |grouprole TANK
|tip Use damage reduction cooldowns to survive The Tenderizer, especially during the enrage at 30% |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip There should be 2 groups of melee with one person in each group to toggle. |grouprole DAMAGE
|tip These groups should be 3-5 players with one person to toggle out of the group to allow the debuff gushing wounds to reset. |grouprole DAMAGE
|tip Every two stacks of gushing wounds the groups should switch to allow the debuff to wear off, to do this the toggle, preferably a player with high mobility such as a hunter, would run out of their respected group until the debuff is off. |grouprole DAMAGE
|tip Once the enrage starts at 30 percent the stack swap should be every three stacks. |grouprole DAMAGE
|tip Save DPS cooldowns for 30%, as The Butcher will enrage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage as their stacks of The Cleaver/The Tenderizer build up. |grouprole HEALER
|tip Prepare damage reduction cooldowns for 30% when The Butcher enrages. |grouprole HEALER
|tip Players soaking Cleave should be kept topped off to keep up with the damage and bleed. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip The Butcher will use Bounding Cleave immediately following his AoE knockback. |grouprole EVERYONE
|tip All other ranged not in the two melee groups should stay stacked up in one position in ranged, when the boss casts "Bounding Cleave" and knocks the raid back just simply restack asap. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp at 30%. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 15
path	55.2,53.3	49.4,48.4	49.1,41.6
path	52.0,35.0	51.6,26.1
Follow the path |goto Highmaul/1 51.6,26.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brackenspore##78491 |goto Highmaul/1 50.80,16.40
_TANK:_ |grouprole TANK
|tip Face Brackenspore away from the raid to avoid excess damage from Necrotic Breath, also pop a minor cd for this ability as it reduces healing received during its duration. |grouprole TANK
|tip Pick up Fungal Flesh-Eaters quickly and interrupt Decay. |grouprole TANK
|tip Do not tank Brackenspore in the water and move him out of Creeping Moss. |grouprole TANK
|tip Tank swap at 4 stacks of Rot. |grouprole TANK
|tip Move Brackenspore to Living and Rejuvinating Mushrooms before they are healed to full. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Fungal Flesh-Eaters quickly and interrupt Decay. |grouprole DAMAGE
|tip Ranged DPS need to kill Spore Shooters and intercept their Spore Shot. |grouprole DAMAGE
|tip Melee DPS need to kill Mind Fungus. |grouprole DAMAGE
|tip Move into Living Mushrooms when Brackenspore cast Infesting Spores. |grouprole DAMAGE
|tip A pair of DPS should use the Blackfuse 9000 Flamethrowers to deal with Creeping Moss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal Living Mushrooms to full when Brackenspore casts Infesting Spores and keep them alive until it is finished. |grouprole HEALER
|tip Heal Rejuvinating Mushrooms to full as quickly as possible and keep them alive. |grouprole HEALER
|tip Tanks take heavy damage, especially from Flesh-Eaters with high stacks of Flesh Eater. |grouprole HEALER
|tip Keep an eye on the DPS assigned to use the Flamethrowers. |grouprole HEALER
|tip Prepare raid cooldowns if there is no Living Mushroom ready for Infesting Spores. |grouprole HEALER
Flamethrowers:
|tip Loot a Flamethrower at the beginning of the fight.
|tip Use the extra action button to prevent the spread of Creeping Moss.
|tip Cancel the Flamethrower ability before it overheats.
|tip While under the effect of "Burning Fusion" you deal more damage the more stacks you have.
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to stand in mushrooms that are fully healed especially Rejuvinating Mushrooms, these will return mana and increase haste. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp at the beginning of the fight. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	51.6,27.8	50.9,37.7	45.1,50.2
path	39.7,59.2	35.9,63.3	34.9,69.4
Follow the path |goto Highmaul/1 40.0,81.5 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tectus##78948 |goto Highmaul/1 37.00,74.80
_TANK:_ |grouprole TANK
|tip Face Night-Twisted Berserkers and Earthshapers away from the raid but close together. |grouprole TANK
|tip When Tectus shatters into two shards, each tank should pick one up. |grouprole TANK
|tip When a shard shatters into motes, its tank should pick up all 4 motes. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip During Tectonic Upheaval, focus DPS on the lowest health target. |grouprole DAMAGE
|tip Applying DoT's to all targets will help curb Accretion. |grouprole DAMAGE
|tip Cleave and stun Berserkers and Earthshapers often. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage is heavy during this fight. |grouprole HEALER
|tip The raid will take heavy damage during Tectonic Upheaval. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Ranged need to stay stacked and move as a group to avoid Earthen Pillar. |grouprole EVERYONE
|tip Move out of Fracture to avoid damage. |grouprole EVERYONE
|tip If you are targeted by Crystalline Barrage, run away from the group. |grouprole EVERYONE
|tip Use cooldowns for Tectonic Upheaval. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the split into motes occurs. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	36.0,73.7	35.0,67.1	36.4,60.7
path	30.5,60.5
Follow the path and enter the portal |goto Highmaul/4 82.9,90.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	82.9,90.3	87.0,75.2	83.6,62.3
path	68.0,42.6
Follow the path |goto Highmaul/4 68.0,42.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Pol##78238 |goto Highmaul/4 55.10,36.30
kill Phemos##78237 |goto Highmaul/4 55.10,36.30
_TANK:_ |grouprole TANK
|tip Tank both close together for cleaves. Never tank swap Pol and Phemos. |grouprole TANK
|tip Position the bosses behind one of the two weapons after Quake. |grouprole TANK
|tip The Phemos tank should pull him away a few seconds before Whirlwind. |grouprole TANK
|tip The Phemos tank should use cooldowns during Whirlwind and when he is buffed with Double Slash. |grouprole TANK
|tip The Pol tank should use a cooldown for Shield Bash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Multi-DoT and cleaves are beneficial, as their health pool is shared. |grouprole DAMAGE
|tip Melee should stay with Pol when Phemos is casting Whirlwind, and stay with Phemos when Pol uses Shield Charge. |grouprole DAMAGE
|tip Stack on the Phemos tank to split damage from Enfeebling Roar. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage will be high for the duration of the encounter. |grouprole HEALER
|tip Raid cooldowns are useful during Enfeebling Roar and Blaze. |grouprole HEALER
|tip Quake will do raid wide damage this is another good place to use powerful healing cds. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Dodge as much of the Blaze fire on the ground as possible, if you can not out run a Blaze fire just run through it to get minimal stacks. |grouprole EVERYONE
|tip Avoid Pol's Shield Charge. |grouprole EVERYONE
|tip Use cooldowns if you gain high stacks of Blaze. |grouprole EVERYONE
|tip Stop casting spells during Interrupting Shout. |grouprole EVERYONE
|tip Spread out for Pulverize. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp as soon as the bosses are in position. |grouprole EVERYONE
confirm
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	56.0,34.5	51.4,41.7	40.4,37.2
path	40.0,43.3	46.3,50.7	43.9,55.0
Follow the path |goto Highmaul/4 43.9,55.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ko'ragh##79015 |goto Highmaul/4 37.80,65.4
_TANK:_ |grouprole TANK
|tip Tank swap whenever the current tank is affect by Expel Magic: Arcane. The affected tank needs to run away from the raid. |grouprole TANK
|tip Move Ko'ragh away from Expel Magic: Frost orbs and Suppression Fields. |grouprole TANK
|tip Pick up Volatile Anomalies and tank them inside of a Suppression Field. |grouprole TANK
|tip Do not follow Ko'ragh to the center of the room when he leaps. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip One DPS should soak each available Rune of Nullification for as long as they can. |grouprole DAMAGE
|tip Damage reduction cooldowns are useless for mitigating Rune damage. |grouprole DAMAGE
|tip When you have a large Barrier from Rune of Nullification, you may begin to soak Overflowing Energy orbs by standing underneath of them. |grouprole DAMAGE
|tip Each DPS should soak only one rune for the encounter. The idea is to have several players with Barrier active. |grouprole DAMAGE
|tip Avoid killing Volatile Anomalies until they are within a Suppression Field. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Ko'ragh tank will take heavy damage. |grouprole HEALER
|tip Use raid cooldowns to mitigate Expel Magic: Shadow. |grouprole HEALER
|tip Players affected by Caustic Energy will take extreme damage and reduced healing. |grouprole HEALER
|tip Players soaking Runes of Nullification will receive no benefit from damage reduction cooldowns. |grouprole HEALER
|tip Do not dispel Expel Magic: Fire when players are grouped up. |grouprole HEALER
|tip Players that enter the Caustic Energy field will take high damage and need to be kept up for as long as possible. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip One player should enter the Caustic Energy field with the boss in the center of the room to receive the buff Nullification Barrier this buff will allow the player to soak the ability "Overflowing Energy". |grouprole EVERYONE
|tip Spread out of Expel Magic: Fire. |grouprole EVERYONE
|tip Move away from Expel Magic: Frost orbs. |grouprole EVERYONE
|tip Avoid standing in Suppression Fields. |grouprole EVERYONE
confirm
step
Go up the stairs |goto Highmaul/4 30.9,56.1 < 10
map Highmaul/5
path follow smart; loop off; ants curved; dist 20
path	34.5,60.5	44.9,56.6	54.6,61. 6
path	55.6,54.5	51.9,38.7	45.1,27.0
Follow the Path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the doors |goto Highmaul/6 45.8,60.6 < 12 |noway |c
step
kill Imperator Mar'gok##77428 |goto Highmaul/6 45.3,75.0
_TANK:_ |grouprole TANK
|tip Run at least 35 yards way from the raid when affected by Mark of Chaos. The offtank should taunt Mar'gok. If you are rooted with Mark of Chaos, call it out so the raid can run away. |grouprole TANK
|tip Tank swap about halfway through Mark of Chaos casts. |grouprole TANK
|tip The offtank should taunt Arcane Aberrations into melee range to be killed. |grouprole TANK
|tip During the first intermission, tank the Volatile Anomalies away from the Warmages. |grouprole TANK
|tip During the second intermission, tank swap the Reaver after Crush Armor/Kick to the Face. |grouprole TANK
|tip During the last phase, avoid running through Orbs of Chaos and pick up Arcane Remnants. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Arcane Aberrations quickly. |grouprole DAMAGE
|tip Avoid coming in contact with Destructive Resonance. |grouprole DAMAGE
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |grouprole DAMAGE
|tip Move forward through Force Nova to reduce damage taken. |grouprole DAMAGE
|tip During intermissions, ranged DPS should kill the Gorian Reaver and Volatile Anomalies, while melee DPS should kill Gorian Warmages. |grouprole DAMAGE
|tip Interrupt the Warmages' Nether Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks and players affected by Arcane Wrath or Fixated will need strong single-target healing. |grouprole HEALER
|tip Raid healing is required to deal with Force Nova and Destabilize from Volatile Anomalies. |grouprole HEALER
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Orbs of Chaos. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the second intermission when the Gorian Reaver is picked up. |grouprole EVERYONE
confirm
step
Congratulations! You have completed _Highmaul_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Raids\\Highmaul - Mythic",{
lfgid=897,
condition_suggested=function() return level>=40 and level<=43 end,
keywords={"HM, Mythic, Maul, High, Draenor, Nagrand"},
description="\nThis guide will walk you through the Mythic version of the Highmaul raid.",
},[[
step
Enter Highmaul |goto Nagrand D/0 32.98,38.37 < 5
|tip Some bosses are easier than others, and this is the suggested route to take for progression, going from easiest to hardest: Kargath Bladefist, Twin Ogron, Tectus, Brackenspore, Ko'ragh, Butcher, then Imperator Mar'gok.
confirm
step
talk Gharg##84971 |goto Highmaul/2 46.5,47.2 < 10
Tell him _"We are ready, Gharg!"_
Ride the elevator to the arena |goto Highmaul/3 49.3,51.4 |noway |c
step
kill Vul'gor##80048 |goto Highmaul/3 55.0,58.2
|tip Kargath will come out after Vol'gor is dead.
confirm
step
kill Kargath Bladefist##78714 |goto Highmaul/3 54.70,57.60
Roar of the Crowd
|tip This mechanic rewards the players of the raid with a damage buff for doing the rest of the mechanics properly.
|tip One thing to point out with this new mechanic "Roar of the Crowd", berserking rush can be immuned and if you allow the berserking rush to go through its whole duration the raid will get a huge increase in damage. Berserking rush can be immuned rather its iceblook, deterence, pally bubble, or evasion.
|tip Be wary that if a player dies during the fight your "Roar of the Crowd" bar will be reduced, thus reducing everyones damage.
_TANK:_ |grouprole TANK
|tip Tank Kargath in the center of the arena. Cooldowns are useful for Impale, which deals heavy damage and leaves Open Wounds. |grouprole TANK
|tip The tank with the highest Open Wounds stack is thrown into the stands. |grouprole TANK
|tip Tanks should taunt swap after every 2 stacks of Open Wounds. |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage from Impale, especially if they are already affected by Open Wounds. |grouprole HEALER
|tip If targeted by Berserker Rush, kite Kargath through a flame pillar. |grouprole HEALER
|tip The cats in the pit will come out periodically and will cast "On the Hunt" on a random player, this mechanic is just like berserking rush, you will need to kite the cats into the flame pillars. |grouprole HEALER
_DAMAGE:_ |grouprole DAMAGE
|tip If you are targeted by Berserker Rush, kite him through one of the flame pillars. |grouprole DAMAGE
|tip The cats in the pit will come out periodically and will cast "On the Hunt" on a random player, this mechanic is just like berserking rush, you will need to kite the cats into the flame pillars and then kill them. |grouprole DAMAGE
|tip Killing the cats are the top priority for dps in the arena they must die asap, they will take more damage once kited into the pillars of fire. |grouprole DAMAGE
Chain Hurl Team:
|tip Chain hurl will target the 5 closest people to the boss and hurl them up into the stands, This will need to consist of 3 dps 1 healer and 1 tank.
|tip The stands group needs to kill as many enemys as fast as possible, killing these enemys will reduce the damage the raid takes on the bottom and increase the raids "Roar of the Crowd".
|tip Kill Bileslingers and Iron Bombers first. Bombers explode upon death - move away.
_EVERYONE:_ |grouprole EVERYONE
|tip Circles of fire will come down from the stands during the entire fight, don't stand in these as they do a very large amount of damage. |grouprole EVERYONE
|tip Be sure your looking at your debuffs if you are targeted by berserking rush or on the hunt and they melee you it will be a one shot and will reduce the raids damage. |grouprole EVERYONE
confirm
step
map Highmaul/3
path follow smart; loop off; ants curved; dist 15
path	49.2,51.3	Highmaul/1 55.2,74.4
path	Highmaul/1 55.4,67.1	Highmaul/1 56.3,62.3
Follow the path, dropping down |goto Highmaul/1 56.3,62.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Butcher##77404 |goto Highmaul/1 57.80,55.0
Night-Twisted Cadavar
|tip These will spawn all throughout the fight, they do not attack but instead walk towards the boss, if they hit the boss or a player they will explode inflicting damage and leaving a pool behind.
|tip If the add hits a player it will deal a massive amount of damage, and the pool if stood in will deal a large amount of damage and give a player a debuff that increases the butchers cleave attacks by 100 percent.
|tip This fight is very short but very difficult.
_TANK:_ |grouprole TANK
|tip Tanks need to stand together to split damage from Heavy Handed. |grouprole TANK
|tip Tank swap at 3-4 stacks of The Cleaver/The Tenderizer. |grouprole TANK
|tip Use avoidance cooldowns to minimize stacks of The Cleaver |grouprole TANK
|tip Use damage reduction cooldowns to survive The Tenderizer, especially during the enrage at 30% |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip There should be 2 groups of melee with one person in each group to toggle. |grouprole DAMAGE
|tip These groups should be 3-5 players with one person to toggle out of the group to allow the debuff gushing wounds to reset. |grouprole DAMAGE
|tip Every two stacks of gushing wounds the groups should switch to allow the debuff to wear off, to do this the toggle, preferably a player with high mobility such as a hunter, would run out of their respected group until the debuff is off. |grouprole DAMAGE
|tip Once the enrage starts at 30 percent the stack swap should be every three stacks. |grouprole DAMAGE
|tip Save DPS cooldowns for 30%, as The Butcher will enrage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage as their stacks of The Cleaver/The Tenderizer build up. |grouprole HEALER
|tip Prepare damage reduction cooldowns for 30% when The Butcher enrages. |grouprole HEALER
|tip Players soaking Cleave should be kept topped off to keep up with the damage and bleed. |grouprole HEALER
|tip Don't be afraid to use your healing cds this entire fight is healing intensive. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip The Butcher will use Bounding Cleave immediately following his AoE knockback. |grouprole EVERYONE
|tip All other ranged not in the two melee groups should stay spread apart 8 yards, when bounding cleave comes out a group of 2 players should stack on each other and use either immunites or very large damage reduction cds to counter bounding cleave. |grouprole EVERYONE
|tip This entire fight will do a massive amount of damage to the 2 tanks and anyone in the cleave groups, use damage reduction cds whenever needed. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Timewarp at 30%. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 15
path	55.2,53.3	49.4,48.4	49.1,41.6
path	52.0,35.0	51.6,26.1
Follow the path |goto Highmaul/1 51.6,26.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brackenspore##78491 |goto Highmaul/1 50.80,16.40
Exploding Fongus and Call of the Tides
|tip The boss will randomly choose one of these mechanics to cast every 15 seconds or so.
|tip Exploding Fongus will place tiny shrooms on the group if a player stands on one of these shrooms when they explode they will take a massive amount of damage and will most likely die.
|tip Call of the Tides, the boss will some waves from the water these need to be dodged if stood in they will deal a massive amount of damage and anyone standing in them will most likely die.
Flamethrowers:
|tip Loot a Flamethrower at the beginning of the fight.
|tip Use the extra action button to prevent the spread of Creeping Moss, Cancel the Flamethrower ability before it overheats.
_TANK:_ |grouprole TANK
|tip Face Brackenspore away from the raid to avoid excess damage from Necrotic Breath, also pop a minor cd for this ability as it reduces healing received during its duration. |grouprole TANK
|tip Pick up Fungal Flesh-Eaters quickly and interrupt Decay. |grouprole TANK
|tip Do not tank Brackenspore in the water and move him out of Creeping Moss. |grouprole TANK
|tip Tank swap at 4 stacks of Rot. |grouprole TANK
|tip Move Brackenspore to Living and Rejuvinating Mushrooms before they are healed to full. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Adds are priority in this fight, if there is any adds up kill them asap. |grouprole DAMAGE
|tip One ranged should get in between the rest of the ranged group and the spore shotters to intercept the spores shots, if they hit a player it will do aoe damage to that player and those around them. |grouprole DAMAGE
|tip Kill Fungal Flesh-Eaters quickly and interrupt Decay. |grouprole DAMAGE
|tip Ranged DPS need to kill Spore Shooters and intercept their Spore Shot. |grouprole DAMAGE
|tip Melee DPS need to kill Mind Fungus. |grouprole DAMAGE
|tip Move into Living Mushrooms when Brackenspore cast Infesting Spores. |grouprole DAMAGE
|tip A pair of DPS should use the Blackfuse 9000 Flamethrowers to deal with Creeping Moss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal Living Mushrooms to full when Brackenspore casts Infesting Spores and keep them alive until it is finished. |grouprole HEALER
|tip Heal Rejuvinating Mushrooms to full as quickly as possible and keep them alive. |grouprole HEALER
|tip Tanks take heavy damage, especially from Flesh-Eaters with high stacks of Flesh Eater. |grouprole HEALER
|tip Keep an eye on the DPS assigned to use the Flamethrowers. |grouprole HEALER
|tip Prepare raid cooldowns if there is no Living Mushroom ready for Infesting Spores. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Be sure to stand in mushrooms that are fully healed especially Rejuvinating Mushrooms, these will return mana and increase haste. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	51.6,27.8	50.9,37.7	45.1,50.2
path	39.7,59.2	35.9,63.3	34.9,69.4
Follow the path |goto Highmaul/1 40.0,81.5 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tectus##78948 |goto Highmaul/1 37.00,74.80
Hollowed Heart of the Mountain and Hollowed Shard of the Mountain
|tip These mechanics mean that when tectus is first shattered he will reactivate with a fraction of his hp and will need to be killed again, When the Shards die these will also come back to life with a fraction of the hp and will need to be killed again.
|tip Also throughout the whole fight the adds from the first phase of normal/heroic will continue to come out.
_TANK:_ |grouprole TANK
|tip Face Night-Twisted Berserkers and Earthshapers away from the raid but close together. |grouprole TANK
|tip When Tectus shatters into two shards, each tank should pick one up. |grouprole TANK
|tip When a shard shatters into motes, its tank should pick up all 4 motes. |grouprole TANK
|tip Tanks need to be sure to pick up the hollowed bosses as well.
_DAMAGE:_ |grouprole DAMAGE
|tip During Tectonic Upheaval, focus DPS on the lowest health target. |grouprole DAMAGE
|tip Applying DoT's to all targets will help curb Accretion. |grouprole DAMAGE
|tip Cleave and stun Berserkers and Earthshapers often. |grouprole DAMAGE
|tip Addes are top priority kill them asap.
_HEALER:_ |grouprole HEALER
|tip Tank damage is heavy during this fight. |grouprole HEALER
|tip The raid will take heavy damage during Tectonic Upheaval. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Ranged need to stay stacked and move as a group to avoid Earthen Pillar. |grouprole EVERYONE
|tip Move out of Fracture to avoid damage. |grouprole EVERYONE
|tip If you are targeted by Crystalline Barrage, run away from the group. |grouprole EVERYONE
|tip Use cooldowns for Tectonic Upheaval. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp when the split into motes occurs. |grouprole EVERYONE
confirm
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	36.0,73.7	35.0,67.1	36.4,60.7
path	30.5,60.5
Follow the path and enter the portal |goto Highmaul/4 82.9,90.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	82.9,90.3	87.0,75.2	83.6,62.3
path	68.0,42.6
Follow the path |goto Highmaul/4 68.0,42.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Pol##78238 |goto Highmaul/4 55.10,36.30
kill Phemos##78237 |goto Highmaul/4 55.10,36.30
|tip Arcane Bash will empower the ability "Shield Bash" this increases the amount of damage it does.
|tip Arcane Charge will empower the ability "Shield Charge" this will make it so charge goes out in 4 different directions. (just side step one and you will be fine)
|tip Arcane Wound will empower the ability "Double Slash" this will put a dot on the person hit dealing a large amount of damage.
|tip Arcane Vortex will empower the ability "whirlwind" This will pull the raid towards the whirlwind. (This can be out run)
|tip Arcane Volatility will target multiple people and debuff them, people with this debuff need to make sure they arent anywhere near anyone else(8yards) when the debuff expires it will deal high damage to the player and high damage to any other players near them, players hit will also be knocked back.
_TANK:_ |grouprole TANK
|tip Tank both close together for cleaves. Never tank swap Pol and Phemos. |grouprole TANK
|tip Position the bosses behind one of the two weapons after Quake. |grouprole TANK
|tip The Phemos tank should pull him away a few seconds before Whirlwind. |grouprole TANK
|tip The Phemos tank should use cooldowns during Whirlwind and when he is buffed with Double Slash you are inflicted with Arcane Wound. |grouprole TANK
|tip The Pol tank should use a cooldown for Shield Bash and Arcane Bash. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Multi-DoT and cleaves are beneficial, as their health pool is shared. |grouprole DAMAGE
|tip Melee should stay with Pol when Phemos is casting Whirlwind, and stay with Phemos when Pol uses Shield Charge. |grouprole DAMAGE
|tip Stack on the Phemos tank to split damage from Enfeebling Roar. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tank damage will be high for the duration of the encounter. |grouprole HEALER
|tip Raid cooldowns are useful during Enfeebling Roar and Blaze. |grouprole HEALER
|tip Quake will do raid wide damage this is another good place to use powerful healing cds. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Dodge as much of the Blaze fire on the ground as possible, if you can not out run a Blaze fire just run through it to get minimal stacks. |grouprole EVERYONE
|tip Avoid Pol's Shield Charge and Arcane Charge. |grouprole EVERYONE
|tip Use cooldowns if you gain high stacks of Blaze. |grouprole EVERYONE
|tip Stop casting spells during Interrupting Shout. |grouprole EVERYONE
|tip Spread out for Pulverize. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp as soon as the bosses are in position. |grouprole EVERYONE
confirm
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	56.0,34.5	51.4,41.7	40.4,37.2
path	40.0,43.3	46.3,50.7	43.9,55.0
Follow the path |goto Highmaul/4 43.9,55.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ko'ragh##79015 |goto Highmaul/4 37.80,65.4
|tip Expel Magic Fel will target 3 players at a time throughout the fight and debuff them for 12 seconds. If the player moves from the spot where they got debuffed they will create a line of fire from that original spot to the spot the ended up in.
|tip An easy way to minimize the fire laid is to just return to the original spot before the debuff runs out.
|tip Dominating Power will empower the ability "Overflowing Energy" and it will cause anyone that comes into contact with overflowing energy will be mind controlled.
|tip These mind controls can only be affected by physical attacks. There should be one dedicated physical dps for each of these assigned people.
|tip The mind controlled people will cast Forfeit Power attempting to give part of there magic shield to the boss, this needs to be interrupted.
_TANK:_ |grouprole TANK
|tip Tank swap whenever the current tank is affected by Expel Magic: Arcane. The affected tank needs to run away from the raid. |grouprole TANK
|tip Move Ko'ragh away from Expel Magic: Frost orbs and Suppression Fields. |grouprole TANK
|tip Pick up Volatile Anomalies and tank them inside of a Suppression Field. |grouprole TANK
|tip Do not follow Ko'ragh to the center of the room when he leaps. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Two DPS should soak each available Rune of Nullification for as long as they can. |grouprole DAMAGE
|tip Damage reduction cooldowns are useless for mitigating Rune damage. |grouprole DAMAGE
|tip When you have a large Barrier from Rune of Nullification, you may begin to soak Overflowing Energy orbs by standing underneath of them. |grouprole DAMAGE
|tip Each DPS should soak only one rune for the encounter. The idea is to have several players with Barrier active. |grouprole DAMAGE
|tip Avoid killing Volatile Anomalies until they are within a Suppression Field. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Ko'ragh tank will take heavy damage. |grouprole HEALER
|tip Use raid cooldowns to mitigate Expel Magic: Shadow. |grouprole HEALER
|tip Players affected by Caustic Energy will take extreme damage and reduced healing. |grouprole HEALER
|tip Players soaking Runes of Nullification will receive no benefit from damage reduction cooldowns. |grouprole HEALER
|tip Do not dispel Expel Magic: Fire when players are grouped up. |grouprole HEALER
|tip Players that enter the Caustic Energy field will take high damage and need to be kept up for as long as possible. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Two players should enter the Caustic Energy field with the boss in the center of the room to receive the buff Nullification Barrier this buff will allow the player to soak the ability "Overflowing Energy". |grouprole EVERYONE
|tip Spread out for Expel Magic: Fire. |grouprole EVERYONE
|tip Move away from Expel Magic: Frost orbs. |grouprole EVERYONE
|tip Avoid standing in Suppression Fields. |grouprole EVERYONE
confirm
step
Go up the stairs |goto Highmaul/4 30.9,56.1 < 10
map Highmaul/5
path follow smart; loop off; ants curved; dist 20
path	34.5,60.5	44.9,56.6	54.6,61.6
path	55.6,54.5	51.9,38.7	45.1,27.0
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the doors |goto Highmaul/6 45.8,60.6 < 12 |noway |c
step
kill Imperator Mar'gok##77428 |goto Highmaul/6 45.3,75.0
|tip In mythic the boss starts off with 2 runes which means a whole new set of abilities with each phase.
|tip In the 1st phase the boss will have phase 2 and phase 4 abilities from the original imperator phases.
|tip In the 2nd phase the boss will have phase 2 and phase 3 abilities from the original imperator phases.
|tip In the 3rd phase the boss will have phase 3 and phase 4 abilities from the original imerpator phases. (This is the hardest phase to get past)
|tip During intermissions the Goren Warmages need to be interrupted, in mythic every successful cast the mob will gain a stacking buff increasing damage by 25 percent.
_TANK:_ |grouprole TANK
|tip Run at least 35 yards way from the raid when affected by Mark of Chaos. The offtank should taunt Mar'gok. If you are rooted with Mark of Chaos, call it out so the raid can run away. |grouprole TANK
|tip Tank swap about halfway through Mark of Chaos casts. |grouprole TANK
|tip The offtank should taunt Arcane Aberrations into melee range to be killed. |grouprole TANK
|tip During the first intermission, tank the Volatile Anomalies away from the Warmages. |grouprole TANK
|tip During the second intermission, tank swap the Reaver after Crush Armor/Kick to the Face. |grouprole TANK
|tip During the last phase, avoid running through Orbs of Chaos and pick up Arcane Remnants. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Arcane Aberrations quickly. |grouprole DAMAGE
|tip Avoid coming in contact with Destructive Resonance. |grouprole DAMAGE
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |grouprole DAMAGE
|tip Move forward through Force Nova to reduce damage taken. |grouprole DAMAGE
|tip During intermissions, ranged DPS should kill the Gorian Reaver and Volatile Anomalies, while melee DPS should kill Gorian Warmages. |grouprole DAMAGE
|tip Interrupt the Warmages' Nether Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks and players affected by Arcane Wrath or Fixated will need strong single-target healing. |grouprole HEALER
|tip Raid healing is required to deal with Force Nova and Destabilize from Volatile Anomalies. |grouprole HEALER
|tip If you are affected by any form of Branded, run away from the raid if you reach 5 stacks or higher and use a damage reduction cooldown. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Orbs of Chaos. |grouprole EVERYONE
|tip Use Heroism/Bloodlust/Time Warp during the 1st and last phases. |grouprole EVERYONE
confirm
step
kill Cho'gall##43324
Phase 4
|tip Once Imperator Mar'gok is at 5 percent the last phase will start, the boss will start doing his rp and eventually become immune and die.
|tip While this is happening a bunch of adds will spawn from all around the room, these have no special attacks or abilities but need to be stacked up and killed together, when they die they will leave a pool on the group dont stand in this.
|tip During this phase Cho'gal will be the new boss encounter, he will have a whole new set of abilities.
_Cho'gall_
|tip During the Cho'gal fight the adds in the transition will continue to spawn every 30 seconds in waves, they need to be killed together asap.
_Glimpse of Maddness_
|tip This ability will spawn a shadow on a random player and start casting "Gaze of the Abyss" onto the closest player and keep applying this debuff every 6 seconds.
_Gaze of the Abyss_
|tip This ability will put a debuff on a player causeing damage to that player until it runs out.
|tip With each stack of this debuff the damage gets higher and higher, once this debuff expires(this can be done by no longer being the closest target to the Glimpse of Maddness) then the debuff will explode for damage to the player and anyone within 8 yards.
|tip The explosion will do more damage the more stacks the player has.
_Enveloping Night_
|tip This ability is a very long cast and will deal a large amount of damage to the entire raid once completed.
|tip Every cast of this ability increase its damage.
_Infinite Darkness_
|tip This ability will be cast on 3 random players all healing will be absorbed on this player until it is dispelled, once dispelled all of the healing that was done to those players will spread as a shield equally across the entire raid.
|tip This will help, if timed correctly, with the higher raid damage of the fight such as "Enveloping Night".
_Dark Star_
|tip This ability will spawn an orb of darkness on a random player in the raid, after a short time this star will explode for massive damage to any player in a range of 20 yards to the star.
|tip The Dark Star can only spawn on ranged so ranged should stand at least 20 yards away from the boss/melee so that they dont have to move.
confirm
step
Congratulations! You have completed _Highmaul Mythic_!
]])
