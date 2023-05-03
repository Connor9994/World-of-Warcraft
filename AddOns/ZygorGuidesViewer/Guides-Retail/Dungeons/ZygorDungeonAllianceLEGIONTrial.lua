local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\The Arcway")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Assault on Violet Hold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Black Rook Hold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Cathedral of Eternal Night")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Court of Stars")
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Dungeons\\Darkheart Thicket",{
mapid=733,
achieveid={10783},
patch='70003',
condition_suggested=function() return level>=40 and level<=45 end,
keywords={"Legion, Val'sharah, DHT, DT, Broken, Isles"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Darkheart Thicket dungeon.",
},[[
step
Press _I_ and queue for Darkheart Thicket or enter the dungeon with your group |goto Darkheart Thicket/0 36.6,14.1 < 100 |c
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	36.83,15.80	35.81,24.42	29.15,25.62
path	23.48,24.40	22.68,30.12	25.37,33.84
path	25.81,46.17	24.77,53.41	24.38,58.57
Follow the path around to the right, then back to the left when you reach the tangled trees
When you reach the Rotting Grotto, continue down the path to the right towards the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Archdruid Glaidalis##96512
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stand behind him while he casts Primal Rampage. |grouprole HEALER
|tip Heal allies afflicted by Grevious Tear. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep him facing away from the group. |grouprole TANK
Defeat Archdruid Glaidalis |scenariogoal 1/29271 |goto 24.70,62.11
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	25.77,65.18	26.42,74.32	32.37,81.02
path	36.90,78.16	41.62,70.01	42.52,60.78
path	43.19,49.45
Follow the stone path as it curves left to the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Oakheart##103344
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him to avoid taking damage from Nightmare Breath. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay behind him to avoid taking damage from Nightmare Breath. |grouprole HEALER
|tip Be ready to heal the Tank when Oakheart uses Crushing Grip. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep him facing away from the group. |grouprole TANK
|tip Use cooldowns to mitigate the incoming damage when Oakheart uses Crushing Grip. |grouprole TANK
Defeat Oakheart |scenariogoal 1/30602 |goto 44.07,45.75
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	46.92,39.38	51.18,35.53	58.71,33.12
path	61.58,36.45	64.40,41.60
Take the northeast passage and follow the water to the second boss
|tip Avoid touching the eggs, as they will spawn whelps.
|tip Keep your back faced away from eggs as well. Getting knocked back into eggs will spawn whelps.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dresaron##99200
_EVERYONE:_ |grouprole EVERYONE
|tip Run towards the boss when he uses Down Draft to avoid spawning Hatch Whelplings. |grouprole EVERYONE
|tip Hatch Whelpings spawn when you get too close to the eggs. |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Try to keep him at the center of the room, so allies aren't blown into eggs when he uses Down Draft. |grouprole TANK
Defeat Dresaron |scenariogoal 1/29274 |goto 65.7,46.1
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	62.86,49.12	59.35,54.65	57.71,60.05
path	62.82,67.99	70.71,76.86	75.50,80.77
path	80.36,84.78
Go through the wood arch to the southwest and drop down
Drop down again into the ravine and follow it south to reach the last boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shade of Xavius##101403
_EVERYONE:_ |grouprole EVERYONE
|tip Stay away from allies if you are afflicted by Induced Paranoia. |grouprole EVERYONE
|tip Move next to an ally if you are afflicted by Waking Nightmare. |grouprole EVERYONE
Defeat Shade of Xavius |scenarioend |goto 82.80,87.15
step
_Congratulations!_
You completed the Darkheart Thicket dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Dungeons\\Eye of Azshara",{
mapid=713,
achieveid={10780},
patch='70003',
condition_suggested=function() return level>=40 and level<=45 end,
keywords={"Legion, EoA, Broken, Isles"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Eye of Azshara dungeon.",
},[[
step
Press _I_ and queue for Eye of Azshara or enter the dungeon with your group |goto Eye of Azshara/1 47.4,87.5 < 100 |c
step
map Eye of Azshara/1
path follow loose; loop off; ants curved; dist 20
path	46.79,83.06	51.94,72.80
Enter the Eye of Azshara |q 38286/1 |goto 46.86,84.48 |only if not completedq(38286)
Follow the path forward to the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warlord Parjesh##91784
_DAMAGE:_ |grouprole DAMAGE
|tip Kill adds as they spawn after he uses Call Reinforcements. |grouprole DAMAGE
|tip Stay behind him at all times. |grouprole DAMAGE
|tip Position an enemy between yourself and the red arrow if you are targeted with Impaling Spear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Position an enemy between yourself and the red arrow if you are targeted with Impaling Spear. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gain threat on the adds after he uses Call Reinforcements. |grouprole TANK
kill Warlord Parjesh##91784 |q 38286/2 |goto 54.39,68.18 |only if haveq(38286) or completedq(38286)
Defeat Warlord Parjesh |scenariogoal 1/28776 |goto 54.39,68.18
step
map Eye of Azshara/1
path follow loose; loop off; ants curved; dist 20
path	43.42,72.00	39.14,60.22	38.90,51.86
Follow the path to the west and continue north
|tip You will need to kill one or more Hatecoil Arcanists to drop the lightning from Lady Hatecoil.
|tip Hatecoil Arcanists are located in the bright blue patches of flora.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lady Hatecoil##91789
_EVERYONE:_ |grouprole EVERYONE
|tip Move onto the mounds when she begins to cast Static Nova. |grouprole EVERYONE
|tip Move away from mounds when she casts Focused Lightning, so they won't be destroyed. |grouprole EVERYONE
|tip Move away from the group if you get the Curse of the Witch debuff. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip People who get Curse of the Witch will need extra healing. |grouprole HEALER
|tip Be prepared for any player getting knocked out of Hatecoil's arena, as they will take massive damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Lady Hatecoil casts Beckon Storm, gain threat on the adds that spawn. |grouprole TANK
Defeat Lady Hatecoil |scenariogoal 1/28777 |goto 46.49,49.88
step
Go northeast to Serpentrix's island
kill Serpentrix##91808
|tip Kill all the enemies around Serpentix before attacking Serpentix.
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from other players if you are targeted with Toxic Wound. |grouprole EVERYONE
|tip Stand behind him when he casts Poison Spit. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Rampage. |grouprole DAMAGE
|tip Kill Blazing Hydras when they spawn. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Gain threat on Blazing Hydras when they spawn. |grouprole TANK
Defeat Serpentrix |scenariogoal 1/28779 |goto 52.59,35.50
step
map Eye of Azshara/1
path follow loose; loop off; ants curved; dist 20
path	65.27,34.60	75.32,37.40	76.11,48.17
path	70.13,51.15
Enter the large cave to the east and follow the right wall to the exit
Curve around to the southwest and kill the two Skrog giants
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill King Deepbeard##91797
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of the circles that appear on the ground. |grouprole EVERYONE
|tip If you get a bubble cast on from Gaseous Bubbles, stand in the AoE damage spots on the ground to remove the bubble. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from him when he casts Call the Seas. |grouprole DAMAGE
|tip Move away from the cracks on the ground after he uses Quake. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay very close to him to avoid Quake. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to keep him from attacking the Healer. |grouprole TANK
Defeat King Deepbeard |scenariogoal 1/28778 |goto 66.32,50.04
step
map Eye of Azshara/1
path follow loose; loop off; ants curved; dist 20
path	68.3,47.1	63.2,45.4
Follow the north passage and drop down by the broken ship
confirm
step
kill Wrath of Azshara##96028
|tip Kill the enemies channeling him before attacking him.
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from the circle on the ground for Arcane Bomb. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Do not stand in front of him. |grouprole DAMAGE
|tip Try not to stand too close to other players. |grouprole DAMAGE
|tip When Mystic Tornado is cast, avoid running into other players. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Arcane Bomb when it's cast on an ally. |grouprole HEALER
|tip Prepare big AoE heals when he starts casting Heaving Sands. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay right on top of the boss. It will cause AoE damage if you don't. |grouprole TANK
kill Wrath of Azshara##96028 |q 38286/3 |goto 54.57,55.16 |only if  haveq(38286) or completedq(38286)
Defeat Wrath of Azshara |scenarioend |goto 54.57,55.16
step
click Tidestone of Golganneth##246465
|tip It appears after you kill Wrath of Azshara.
turnin Wrath of Azshara##38286 |goto 55.58,54.04
only if haveq(38286) or completedq(38286)
step
_Congratulations!_
You completed the Eye of Azshara dungeon.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Halls of Valor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Maw of Souls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Neltharion's Lair")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Seat of the Triumvirate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Vault of the Wardens")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Karazhan\\Karazhan Attunement")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Karazhan\\Return to Karazhan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Karazhan\\Return to Karazhan - Lower")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Dungeons\\Karazhan\\Return to Karazhan - Upper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Emerald Nightmare - Darkbough (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Emerald Nightmare - Rift of Ain (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Emerald Nightmare - Tormented Guardians (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Nighthold - Arcing Aquaducts (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Nighthold - Betrayer's Rise (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Nighthold - Nightspire (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Nighthold - Royal Athenaeum (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Trial of Valor - (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Emerald Nightmare - Normal/Heroic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Emerald Nightmare - Mythic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Nighthold - Normal/Heroic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Nighthold - Mythic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Trial of Valor - Normal/Heroic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Trial of Valor - Mythic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Tomb of Sargeras - Gates of Hell")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Tomb of Sargeras - Wailing Halls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Tomb of Sargeras - Chamber of the Avatar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Tomb of Sargeras - Deceiver's Fall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Tomb of Sargeras - Normal/Heroic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Tomb of Sargeras - Mythic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Antorus, the Burning Throne")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Antorus, the Burning Throne - Light's Breach (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Antorus, the Burning Throne - Forbidden Descent (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Antorus, the Burning Throne - Hope's End (LFR)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Raids\\Antorus, the Burning Throne - Seat of the Pantheon (LFR)")
