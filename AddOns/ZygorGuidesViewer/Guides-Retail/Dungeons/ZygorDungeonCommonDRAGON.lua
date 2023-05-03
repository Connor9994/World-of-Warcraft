local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DungeonCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\Uldaman: Legacy of Tyr",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nThe Lost Dwarves\n"..
"Bromach\nSentinel Talondras\nEmberon\nChrono-Lord Deios",
keywords={"Dragonflight","Lost","Dwarves","Bromach","Sentinel","Talondras","Emberon","Chrono-Lord","Deios"},
condition_suggested=function() return level >= 70 end,
achieveid={16278},
mapid=2071,
lfgid=2352,
patch='100002',
},[[
step
kill Olaf##184580 |goto Uldaman Legacy of Tyr/0 78.23,85.37
kill Eric "The Swift"##184582
kill Baelog##184581
_EVERYONE:_ |grouprole EVERYONE
|tip Dwarves inside "Defensive Bulwark" take 75% less damage. |grouprole EVERYONE
|tip Stay slightly spread out to minimize damage dealt by "Ricocheting Shield." |grouprole EVERYONE
|tip During Longboat Raids, avoid standing in areas of cannonfire. |grouprole EVERYONE
|tip Avoid standing in front of Baelog to minimize "Wild Cleave" damage. |grouprole EVERYONE
|tip Interrupt Olaf's "Defensive Bulwark" when possible. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of Baelog during "Heavy Arrow" casts. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of Baelog during "Heavy Arrow" casts. |grouprole HEALER
|tip Random players will take damage throughout the fight from dagger throws. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Heavy Arrow" casts from Baelog deal heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Bromach##184018 |goto Uldaman Legacy of Tyr/0 59.35,63.91
'|kill Quaking Totem##186696
_EVERYONE:_ |grouprole EVERYONE
|tip Kill the "Quaking Totem" quickly before "Bloodlust" finishes casting. |grouprole EVERYONE
|tip Move out of areas targeted by "Thundering Slam." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Clean up troggs so they don't overwhelm the group. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Quaking Totems inflict damage to all players until killed. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up troggs summoned by "Call of the Deep" quickly before they attack the group. |grouprole TANK
Click Here to Continue |confirm
step
kill Sentinel Talondras##184124 |goto Uldaman Legacy of Tyr/0 30.47,70.58
_EVERYONE:_ |grouprole EVERYONE
|tip "Resonanating Orbs" will stun enemies or players that they touch. |grouprole EVERYONE
|tip When affected by "Titanic Empowerment," use the orbs to stun Talondras and remove it. |grouprole EVERYONE
|tip Avoid standing in the path of "Crushing Stomp."
_DAMAGE:_ |grouprole DAMAGE
|tip Use stuns on Talondras to remove "Inexorable" and make the Dynamo vulnerable. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Crushing Stomp" will cause heavy damage to all players. |grouprole HEALER
|tip Players afflicted by "Earthen Shards" will take heavy bleed damage until it expires. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move the boss to orbs to stun it when affected by "Titanic Empowerment." |grouprole TANK
Click Here to Continue |confirm
step
kill Emberon##184422 |goto Uldaman Legacy of Tyr/0 21.31,25.58
_EVERYONE:_ |grouprole EVERYONE
|tip At 100 energy, Emberon channels "Purging Flames" in the center of the room that inflicts severe damage. |grouprole EVERYONE
|tip Emberon becomes immune to damage until you kill the 4 vault keepers that spawn. |grouprole EVERYONE
|tip Avoid crossing the line of flames that rotates clockwise. |grouprole EVERYONE
|tip Don't stand near players affected by "Searing Embers." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill vault keepers quickly to end the phase and resume damage on Emberon. |grouprole DAMAGE
|tip Avoid standing in front of Emberon's "Searing Clap" frontal cone ability. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of Emberon's "Searing Clap" frontal cone ability. |grouprole HEALER
|tip Vault keepers constantly cast flames at the party, inflicting consistent heavy damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Help DPS vault keepers as quickly as possible to end the phase. |grouprole TANK
Click Here to Continue |confirm
step
kill Chrono-Lord Deios##184125 |goto Uldaman Legacy of Tyr/1 40.24,26.42
_EVERYONE:_ |grouprole EVERYONE
|tip "Temporal Zone" increases haste by 50%. |grouprole EVERYONE
|tip Avoid standing in "Eternity Zones." |grouprole EVERYONE
|tip Dodge "Eternity Orbs" before they reach you. |grouprole EVERYONE
|tip "Wing Buffet" deals damage and knocks everyone back. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The party will take heavy damage during "Rewind Timeflow" at 0 energy. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Sand Breath" deals heavy damage. |grouprole TANK
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\Ruby Life Pools",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nMelidrussa Chillworn\n"..
"Kokia Blazehoof\nKyrakka and Erkhart Stormvein",
keywords={"Dragonflight","Melidrussa","Chillworn","Kokia","Blazehoof","Kyrakka","Erkhart","Stormvein"},
condition_suggested=function() return level >= 70 end,
achieveid={16266},
mapid=2095,
patch='100002',
},[[
step
kill Melidrussa Chillworn##188252 |goto Ruby Life Pools/0 61.50,39.10
_EVERYONE_: |grouprole EVERYONE
|tip Avoid standing in "Chillstorm." |grouprole EVERYONE
|tip Avoid running into "Hailbombs" as they deal heavy damage. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Infused Whelps" as they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Infused Whelps inflict "Primal Chill" on players, which will cause "Frozen Solid" after 3 applications, dealing heavy damage over time. |grouprole HEALER
|tip Players hit by "Hailbombs" will require heavy healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up "Infused Whelps" quickly to prevent them from swarming the party. |grouprole TANK
Click Here to Continue |confirm
step
kill Kokia Blazehoof##189232 |goto Ruby Life Pools/1 39.62,42.75
_EVERYONE_: |grouprole EVERYONE
|tip Interrupt "Roaring Blaze" when possible. |grouprole EVERYONE
|tip She will cast "Molten Boulders" in front of her, which will roll forward and explode dealing heavy damage and stunning whoever it hits. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stand behind her or to the side. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Searing Blows" will inflict "Searing Wounds" which can deal heavy damage over time. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Searing Blows" deals heavy damage and leaves "Searing Wounds" which can stack. |grouprole TANK
Click Here to Continue |confirm
step
kill Kyrakka##199790
kill Erkhart Stormvein##190485 |goto Ruby Life Pools/1 20.37,18.19
_EVERYONE_: |grouprole EVERYONE
|tip "Flamespit" inflicts targeted players with "Infernocore".
|tip Watch out for "Flaming Embers" which appear on the ground after Infernocores detonate.
|tip "Winds of Change" pushes both players and Flaming Embers in the direction of the wind.
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid being in front of Kyrakka to avoid frontal aoe abilities.
_HEALER:_ |grouprole HEALER
|tip Avoid being in front of Kyrakka to avoid frontal aoe abilities.
|tip Players hit with Flamespit and Roaring Firebreath will gain stacks of "Infernocore" which deals rapid damage.
|tip "Stormslam" deals heavy damage to a player.
_TANK:_ |grouprole TANK
|tip "Stormslam" deals heavy damage.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\The Nokhud Offensive",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nGranyth\n"..
"The Raging Tempest\nTeera and Maruuk\nBalakar Khan",
keywords={"Dragonflight","Granyth","Raging","Tempest","Teera","Maruuk","Balakar","Khan"},
condition_suggested=function() return level >= 70 end,
achieveid={16275},
mapid=2093,
patch='100002',
},[[
step
kill Granyth##186616 |goto The Nokhud Offensive/0 72.02,51.18
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt "Eruption" when possible. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Move out of "Tectonic Stomp" when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stand at least 25 yards away from Granyth if possible. |grouprole HEALER
|tip "Shards of Stone" deals unavoidable damage to the group. |grouprole HEALER
|tip The longer "Eruption" goes uninterrupted the more damage it does. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move out of "Tectonic Stomp" when possible. |grouprole TANK
Click Here to Continue |confirm
step
kill The Raging Tempest##186615 |goto The Nokhud Offensive/0 53.13,76.83
_EVERYONE:_ |grouprole EVERYONE
|tip "Surge of Power" periodically damages players dealing moderate damage and granting 5% increased damage and healing. |grouprole EVERYONE
|tip "Lightning Strike" will deal heavy damage to players within 15 yards when cast. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During "Energy Surge" the tank will take burst damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip During "Energy Surge", The Raging Tempest will deal burst damage for 10 seconds. |grouprole TANK
Click Here to Continue |confirm
step
kill Teera##195723
kill Maruuk##186338 |goto The Nokhud Offensive/0 32.69,69.66
_EVERYONE:_ |grouprole EVERYONE
|tip "Frightful Roar" will fear everyone within 15 yards for 5 seconds. |grouprole EVERYONE
|tip Avoid "Gale Arrows" as they move across the arena. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip "Earthsplitter" deals heavy damage when Maruuk reaches 100 energy to players within 4 yards of impact. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Brutalize" will deal heavy damage to Maruuk's current target. |grouprole HEALER
|tip Teera will hit random players with "Quickshot" dealing moderate damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep an eye out for "Brutalize" as it will deal heavy damage to you. |grouprole TANK
Click Here to Continue |confirm
step
kill Balakar Khan##186151 |goto The Nokhud Offensive/0 34.84,38.81
_EVERYONE:_ |grouprole EVERYONE
|tip "Iron Spear" will be targeted at a random player, dealing heavy damage to anyone within 6 yards of impact.
|tip "Iron Stampede" will have Balakar Khan charging towards his spear regardless of position, inflicting heavy damage to anyone caught in the path.
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Nokhud Stormcasters" as they appear.
_HEALER:_ |grouprole HEALER
|tip During "Stormwinds", players will take consistant damage every half second until Nokhud Stormcasters are dealt with.
|tip "Conductive Strike" will cause heavy damage to his current target and cause Thunder Strike to deal 500% more damage to that target.
_TANK:_ |grouprole TANK
|tip Keep an eye out for "Rending Strike" as it deals massive damage.
|tip You will be left with a debuff causing "Savage Strike" to deal 500% more damage.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\Brackenhide Hollow",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nHackclaw's War-Band\n"..
"Treemouth\nGutshot\nDecatriarch Wratheye",
keywords={"Dragonflight","Hackclaw's","War-Band","Treemouth","Gutshot","Decatriarch","Wratheye"},
condition_suggested=function() return level >= 70 end,
achieveid={16255},
mapid=2096,
patch='100002',
},[[
step
kill Hackclaw's War-Band##186122 |goto Brackenhide Hollow/0 35.92,40.45
_EVERYONE:_ |grouprole EVERYONE
|tip Kill "Hextrick Totems" as they appear. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Greater Healing Rapids" when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players will get "Marked for Butchery" and take massive damage. |grouprole HEALER
|tip Players with with "Gash Frenzy" will need to be healed above 90% health to remove the bleed. |grouprole HEALER
|tip Players afflicted with "Decayed Senses" will take 150% more physical damage. |grouprole HEALER
|tip When anyone in the War-Band drops to 15% health, Tricktotems will use "Bloodfrenzy", causign all gnolls to deal 30% more damage and hit 30% faster. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Savage Charge" will target a random player. |grouprole TANK
|tip It will deal massive damage, but it hits only the first person to come into contact with it. |grouprole TANK
|tip Move in front of the path to ensure that you are hit instead of the player. |grouprole TANK
|tip When anyone in the War-Band drops to 15% health, Tricktotems will use "Bloodfrenzy", causign all gnolls to deal 30% more damage and hit 30% faster. |grouprole TANK
Click Here to Continue |confirm
step
kill Treemouth##186120 |goto Brackenhide Hollow/0 58.65,81.68
_EVERYONE:_ |grouprole EVERYONE
|tip At 100 energy, Treemouth uses "Grasping Vines" pulling all players to it and then uses "Consume". |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use burst damage when possible to break "Consume". |grouprole DAMAGE
|tip When killing Decaying Slimes, they will blight the ground where they die. |grouprole DAMAGE
|tip Avoid standing in front of Treemouth when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When a player is afflicted by "Consume" they will take moderate damage over time for 10 seconds. |grouprole HEALER
Click Here to Continue |confirm
step
kill Gutshot##186116 |goto Brackenhide Hollow/0 58.86,29.92
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid activating "Ensaring Trap" when possible, as it will entangle all Hyenas and Players near it. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Deal with Rotfang Hyenas as they appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Meat Toss" will cause all Hyenas to fixate on the target. |grouprole HEALER
|tip "Feeding Frenzy" will cause all Rotfang Hyenas to deal 100% more damage for 10 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Gut Shot" will deal moderate damage and knock the target back. |grouprole TANK
Click Here to Continue |confirm
step
kill Decatriarch Wratheye##186121 |goto Brackenhide Hollow/1 58.89,49.93
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Rotburst Totems" as they appear.  |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Withering Rot" will cause Wratheye to deal 5% more damage per stack. |grouprole HEALER
|tip "Decaystrike" will deal massive damage and absorb around 40,000 healing taken. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Decaystrike" will deal massive damage and absorb around 40,000 healing taken. |grouprole TANK
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\Halls of Infusion",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nWatcher Irideus\n"..
"Gulping Goliath\nKhajin the Unyielding\nPrimal Tsunami",
keywords={"Dragonflight","Watcher","Irideus","Gulping","Goliath","Khajin","Unyielding","Primal","Tsunami"},
condition_suggested=function() return level >= 70 end,
achieveid={16260},
mapid=2082,
patch='100002',
},[[
step
kill Watcher Irideus##189719 |goto Halls of Infusion/0 61.58,35.28
|tip Avoid standing in "Power Fields" left behind by "Power Overload" |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Nullification Devices" near Irideus to remove 1 application of "Ablative Shield". |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The longer Ablative Shields are up the more damage Irideus will do. |grouprole HEALER
|tip "Purifying Blast" from Nullification Devices can deal significant damage if the affect stacks. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Kill "Nullification Devices" near Irideus to remove 1 application of "Ablative Shield". |grouprole TANK
Click Here to Continue |confirm
step
kill Gulping Goliath##189722 |goto Halls of Infusion/1 53.96,85.92
_EVERYONE:_ |grouprole EVERYONE
|tip "Gulp" will gulp down players within 10 yards for 2 seconds, dealing heavy damage. |grouprole EVERYONE
|tip If no one is hit with Gulp, he will gain the "Hangry" buff causing him to deal 50% increased damage for 1 minute and stacks. |grouprole EVERYONE
|tip Players hit by Gulp will gain 3 stacks of "Gulp Swog Toxin" which will kill you if you get 20 stacks of it. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Khajin the Unyielding##189727 |goto Halls of Infusion/1 31.14,81.93
_EVERYONE:_ |grouprole EVERYONE
|tip She will cast "Glacial Surge" which causes a ring to surge from her, dealing heavy damage to players hit by it. |grouprole EVERYONE
|tip Each Glacial Surge will spawn "Ice Boulders" which can can block damage from Hailstorm. |grouprole EVERYONE
|tip Ice Boulders can only be used as cover twice. |grouprole EVERYONE
|tip The second time they are hit, they will explode causing an "Avalanche", dealing heavy damage to anyone within 12 yards. |grouprole EVERYONE
|tip Khajin will use "Hailstorm", dealing heavy damage if you don't use the Ice Boulders as cover. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Remove "Frost Shock" From allies when possible. |grouprole HEALER
Click Here to Continue |confirm
step
kill Primal Tsunami##189729 |goto Halls of Infusion/1 42.76,47.50
_EVERYONE:_ |grouprole EVERYONE
|tip When it reaches 100 energy, it uses "Cast Away" the party will be trapped in a bubble. |grouprole EVERYONE
|tip "Crashing Tsunami" follows up, knocking back and slowing players after. |grouprole EVERYONE
|tip Avoid "Infused Globules" as they deal heavy damage. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Primalist Infusers" as they appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players hit with "Focused Deluge" will take moderate damage over 5 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay within melee range when possible to avoid moderate group damage from "Undertow". |grouprole TANK
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\Algeth'ar Academy",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nVexamus\n"..
"Overgrown Ancient\nCrawth\nEcho of Doragosa",
keywords={"Dragonflight","Vexamus","Overgrown","Ancient","Crawth","Echo","Doragosa"},
condition_suggested=function() return level >= 70 end,
achieveid={16269},
mapid=2097,
patch='100002',
},[[
step
kill Vexamus##194181 |goto Algeth'ar Academy/1 30.42,35.51
_EVERYONE:_ |grouprole EVERYONE
|tip Vexamus casts "Mana Bombs" at up to 3 random players, exploding after 2.5 seconds, dealing moderate damage. |grouprole EVERYONE
|tip "Corrupted Mana" is left behind at the detonation site, dealing modertate damage and slowing players caught in it. |grouprole EVERYONE
|tip "Arcane Orbs" gravitate towards Vexamus, granting 20 energy if they reach him as well as dealing moderate damage to the group. |grouprole EVERYONE
|tip  It deals slightly less damage to a single player if intercepted. |grouprole EVERYONE
|tip At 100 energy, Vexamus will use "Arcane Fissure", dealing moderate damage and knocking players back. |grouprole EVERYONE
|tip Immidiately after, "Arcane Fissures" will appear at each players feet, dealing heavy damage to those within 4 yards of it. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Intercept "Arcane Orbs" when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Arcane Explosion" will deal heavy damage to the entire group. |grouprole HEALER
Click Here to Continue |confirm
step
kill Overgrown Ancient##196482 |goto Algeth'ar Academy/1 56.00,41.25
_EVERYONE:_ |grouprole EVERYONE
|tip "Germinate" places dormant lasher seeds beneath players feet the sprout every second for 4 seconds. |grouprole EVERYONE
|tip Each seed will do moderate damage to players within 4 yards, so move away as soon as possible. |grouprole EVERYONE
|tip After, it will leave behind dormant "Hungry Lashers" which can be killed in their current state. |grouprole EVERYONE
|tip At 100 energy, the ancient will use "Burst Forth", dealing moderate damage to the group and activating Dormant Hungry Lashers that weren't killed. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Healing Touch" when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Barkbreaker" deals heavy damage to its target as well as increases physical damage they take by 100% for 9 seconds. |grouprole HEALER
|tip "Burst Forth" deals moderate damage to the group. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Healing Touch" when possible. |grouprole TANK
Click Here to Continue |confirm
step
kill Crawth##191736 |goto Algeth'ar Academy/2 46.92,36.66
_EVERYONE:_ |grouprole EVERYONE
|tip During "Play Ball!" the group will be able to score goals. |grouprole EVERYONE
|tip Scoring 3 points in the Goal of the Searing Blaze will activate "Firestorm", causing the goal to erupt in flames. |grouprole EVERYONE
|tip Motes of fire will spread across the arena, dealing heavy damage to those within 6 yards of them and stunning players. |grouprole EVERYONE
|tip The Firestorm also stuns Crawth, causing her to take 75% extra damage for 12 seconds. |grouprole EVERYONE
|tip Scoring 3 points in the Goal of the Rushing Winds will activate "Gale Force", causing fierce winds to rush from the goal. |grouprole EVERYONE
|tip Roving Cyclones will be active for nearly 15 seconds, pushing players back. |grouprole EVERYONE
|tip Additionally, motes will appear that can be picked up to grant 45% Haste and 50% movement speed for 20 seconds, as well as immunity to being pushed back by Gale Force. |grouprole EVERYONE
|tip She will target a random player with "Overpowering Gust", dealing heavy damage and knocking players back who are in front of her. |grouprole EVERYONE
|tip "Deafening Screech" will interrupt spells being cast and silence the interrupted target for 6 seconds. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Savage Peck" deals high damage over time. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Savage Peck" deals high damage over time. |grouprole TANK
Click Here to Continue |confirm
step
kill Echo of Doragosa##190609 |goto Algeth'ar Academy/0 61.38,60.62
_EVERYONE:_ |grouprole EVERYONE
|tip "Overwhelming Powre" will grant players afflicted by it to deal 5% extra damage per stack. |grouprole EVERYONE
|tip At 4 stacks, "Arcane Rifts" will erupt into existence. |grouprole EVERYONE
|tip Players caught in the rift will take moderate damage every second while occasionally releasing Uncontrolled Energy. |grouprole EVERYONE
|tip "Uncontrolled Energy" deals moderate damage to those who come into contact with it, as well as apply stacks of Overwhelming Power.  |grouprole EVERYONE
|tip "Power Vacuum" draws in all players, dealing heavy damage knocking them back if within 20 yards of the following explosion. |grouprole EVERYONE
|tip Spread out when possible. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of Echo of Doragosa to avoid being hit by "Astral Breath." |grouprole DAMAGE
|tip Move away from other players if you're afflicted with "Energy Bomb" |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of Echo of Doragosa to avoid being hit by "Astral Breath." |grouprole HEALER
|tip Players afflicted with "Energy Bomb" will take extra damage. |grouprole HEALER
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\Neltharus",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nChargath, Bane of Scales\n"..
"Forgemaster Gorek\nMagmatusk\nWarlord Sargha",
keywords={"Dragonflight","Chargath","Bane","Scales","Forgemaster","Gorek","Magmatusk","Warlord","Sargha"},
condition_suggested=function() return level >= 70 end,
achieveid={16269},
mapid=2080,
patch='100002',
},[[
step
kill Chargath, Bane of Scales##189340 |goto Neltharus/0 43.17,66.70
_DAMAGE:_ |grouprole DAMAGE
|tip Melee should move away from Chargath during "Fiery Focus". |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players hit by "Dragon Strike" moderate damage followed by a DoT debuff for 14 seconds. |grouprole HEALER
|tip When "Grounding Chains" are tripped, it will cause the player who did it to take moderate damage from "Slag Eruption." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip At 100 energy, "Fiery Focus" causes moderate damage every second until tripped with Ground Chains. |grouprole TANK
Click Here to Continue |confirm
step
kill Forgemaster Gorek##189478 |goto Neltharus/1 33.73,65.69
_EVERYONE:_ |grouprole EVERYONE
|tip "Blazing Aegis" triggers a 4-way eruption on a target's location that deals moderate damage and leaves a DoT if hit by it. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Watch out for "Forgestorm" as it launches a barrage of embers across the room, dealing heavy damage to those within 3 yards of the impact. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip During "Might of the Forge" the group will take moderate AoE damage. |grouprole HEALER
|tip With each strike of "Blazing Hammer" after, the group will take additional moderate damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip During "Heated Swings" Gorek will deal heavy damage, first knocking you back for moderate damage, followed up by a leap that deals heavy damage to anyone within 8 yards of the impact. |grouprole TANK
Click Here to Continue |confirm
step
kill Magmatusk##181861 |goto Neltharus/0 66.89,63.41
_EVERYONE:_ |grouprole EVERYONE
|tip During the encounter Magmatusk will gain "Magma" over time. |grouprole EVERYONE
|tip When reaching 100, Magmatusk will gain a "Magma Tentacle" which increases his damage output overall. |grouprole EVERYONE
|tip "Lava Spray" Locks on to a player and tracks them, so avoid hitting your team if you're targeted. |grouprole EVERYONE
|tip Avoid standing in front of "Blazing Charge". |grouprole EVERYONE
|tip "Lava Waves" will spawn at the end of each Blazing Charge. |grouprole EVERYONE
|tip The number of waves depends on how many Magma Tentacles are present. |grouprole EVERYONE
|tip Avoid the Magma Tentacles "Magma Lob" as it deals moderate damage to those 4 yards around the impact. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip During "Magma Eruption", the group will take moderate to heavy AoE damage depending on how many Magma Tentacles on Magmatusk. |grouprole HEALER
Click Here to Continue |confirm
step
kill Warlord Sargha##189901 |goto Neltharus/0 52.09,86.95
_EVERYONE:_ |grouprole EVERYONE
|tip During "Magma Shield", use the piles of treasure to obtain magic items that will remove it eventually.
|tip "Wand of Negation" will deal 27k Arcane damage to absorb shields.
|tip "Anti-Magic Bomb" will deal 27k shield damage to those within 8 yards of impact.
|tip "Azure Stone of Might" causes the caster to launch themselves at the enemy dealing 27k shield damage.
|tip "Rose of the Vale" causes 27k damage to shields to enemies within 12 yards.
|tip "Seismic Boots" causes you to stomp the ground releasing a wave for 27k shield damage.
|tip After the Magma Shield is broken, Warlord Sargha will cast "Flame Eruption" applying Flame Vulnerability to the group.
|tip "Flame Eruption" stacks and causes 50% more damage from subsequent Flame Eruptions.
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of her to avoid "The Dragon's Kiln" which deals moderate damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During "Magma Shield" the group will take heavy fire damage every 3 seconds for 45 seconds. |grouprole HEALER
|tip Avoid standing in front of her to avoid "The Dragon's Kiln" which deals moderate damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to face her away from the group when possible. |grouprole TANK
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Dungeons\\The Azure Vault",{
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nLeymor\n"..
"Azureblade\nTelash Greywing\nUmbrelskul",
keywords={"Dragonflight","Leymor","Azureblade","Telash","Greywing","Umbrelskul"},
condition_suggested=function() return level >= 70 end,
achieveid={16272},
mapid=2073,
patch='100002',
},[[
step
kill Leymor##186644 |goto The Azure Vault/4 37.11,54.16
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Ley-Line Sprouts" as they appear. |grouprole DAMAGE
|tip Avoid being in front of Leymor when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Consuming Stomp" will deal increased damage for each Ley-Line Sprout active. |grouprole HEALER
|tip "Infused Strike" will deal heavy damage to the current target. |grouprole HEALER
|tip Avoid being in front of Leymor when possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Leymor away from the group when possible. |grouprole TANK
|tip Be on the look out for "Infused Strike" as it deals heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Azureblade##186739 |goto The Azure Vault/2 76.09,55.67
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Draconic Illusions" as they appear. |grouprole DAMAGE
|tip Avoid being in front of her when possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During "Overwhelming Energy", Azureblade will deal moderate AoE damage every 2 seconds until Draconic Illusions are dealt with. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face her away fromt he group when possible. |grouprole TANK
Click Here to Continue |confirm
step
kill Telash Greywing##199614 |goto The Azure Vault/1 35.56,52.73
_EVERYONE:_ |grouprole EVERYONE
|tip "Absolute Zero" deals heavy damage to the entire group when used. |grouprole EVERYONE
|tip Sindragosa will place a "Vault Rune" on the ground during Absolute Zero. |grouprole EVERYONE
|tip When possible you should try to move into it. |grouprole EVERYONE
|tip Move out of "Frost Bomb" once it is cast as it will deal heavy damage to those within 5 yards of it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Icy Devastation" deals moderate damage to random players in the group. |grouprole HEALER
Click Here to Continue |confirm
step
kill Umbrelskul##186738 |goto The Azure Vault/0 52.18,52.62
_EVERYONE:_ |grouprole EVERYONE
|tip At 75%, 50% and 25% health, Umbrelskul shatters causing Detonating Crystals to fall from his body.
|tip "Detonating Crystals" deal moderate damage each second to the group each second for 15 seconds.
|tip Avoid standing in "Arcane Eruptions" as they deal heavy damage and knock players back as well as leaves behind a Crackling Vortex that deals damage over time.
_DAMAGE:_ |grouprole DAMAGE
|tip "Unleashed Destruction" will push players away from him.
_HEALER:_ |grouprole HEALER
|tip "Dragon Strike" will deal heavy damage to the target player.
_TANK:_ |grouprole TANK
|tip "Dragon Strike" deals heavy damage so mitigation skills may be required.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Dragonflight Raids\\Vault of the Incarnates",{
author="support@zygorguides.com",
description="\nTo complete this raid, you will need to kill the following bosses:\n\nEranog\n"..
"Terros\nKadros Icewrath\nSennarth, the Cold Breath\nDathea, Ascended\nKurog Grimtotem\n"..
"Broodkeeper Diurna\nRaszageth the Storm-Eater",
keywords={"Dragonflight","Eranog","Terros","Kadros","Icewrath","Sennarth","Dathea","Ascended","Kurog","Grimtotem","Raszageth"},
condition_suggested=function() return level >= 70 end,
achieveid={16343},
mapid=2119,
lfgid=2388,
patch='100002',
},[[
step
kill Eranog##184972 |goto Vault of the Incarnates/3 56.96,20.69
_EVERYONE:_ |grouprole EVERYONE
|tip At 100 energy, he will cast "Army of Flame" which summons a Primal Flame. |grouprole EVERYONE
|tip The Primal Flame will inflict massive damage to anyone caught in its path and stun them for 3 seconds after. |grouprole EVERYONE
|tip He will mark several players locations with "Flamerift" to which you should move out of or take moderate damage. |grouprole EVERYONE
|tip "Flamescale Taraseks" spawn from each flame rift and should be dealt with quickly. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of him. |grouprole DAMAGE
|tip Kill "Flamescale Taraseks" as they appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip With each "Incinerating Roar" he will deal more damage as well as deal heavy damage, leaving behind a moderate damaged dot for 28 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip He will inflict "Burning Wound" which deals moderate damage every 2 seconds for 14 seconds and stacks. |grouprole TANK
Click Here to Continue |confirm
step
kill Terros##190496 |goto Vault of the Incarnates/2 21.62,75.78
_EVERYONE:_ |grouprole EVERYONE
|tip "Rock Blast" deals deadly damage that is split between players within the impact. |grouprole EVERYONE
|tip After each Rock Blast, "Awakened Earth" will appear under several players dealing moderate damage to anyone caught within 2 yards as well as knocking them back. |grouprole EVERYONE
|tip When Awakened Earth are killed, it'll cause a "Seismic Assult" which deals moderate damage to the group as well as leaving a DoT for 12 seconds after. |grouprole EVERYONE
|tip At 100 Energy, Terros will use "Resonating Annihilation", dealing massive damage in a frontal cone. |grouprole EVERYONE
|tip After, "Resonant Aftermath" and "Fractured Rubble" will fall from the ceiling which should be avoided. |grouprole EVERYONE
|tip "Shattering Impact" will deal massive damage to players within 12 yards of the impact as well as cause Fractured Rubble. |grouprole EVERYONE
|tip "Concussive Slam" will deal massive damage in a line to players caught in it, increasing damage taken by 30% for 45 seconds. |grouprole EVERYONE
|tip It will also destroy Awakened Earth. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Awakened Earth" as they appear. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Tanks should always be within melee range of Terros. |grouprole TANK
Click Here to Continue |confirm
step
kill Kadros Icewrath##187771 |goto Vault of the Incarnates/5 43.38,70.24
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out when possible. |grouprole EVERYONE
_KADROS_
|tip At 100 Energy, Kadros will channel "Primal Blizzard", leaving a debuff that can stack up to 10 times and dealing heavy damage. |grouprole EVERYONE
|tip Touching "Scorched Ground" will remove applications of Primal Blizzard. |grouprole EVERYONE
|tip Upon reaching 10 stacks of Primal Blizzard, targets will be afflicted with "Frost Tomb" which deals heavy damage until freed. |grouprole EVERYONE
_EMBAR_
|tip Embar will target two players with "Meteor Axe" dealing heavy damage that will be split between targets within 10 yards of the target. |grouprole EVERYONE
|tip Upon impact, it will leave "Scorched Ground", used to remove applications of Primal Blizzard. |grouprole EVERYONE
|tip At 100 energy, "Slashing Blaze" will deal massive damage to targets in front of Embar. |grouprole EVERYONE
_OPALFANG_
|tip "Earthen Pillar" will appear beneath several players, inflicting heavy damage and knocking anyone within 6 yards of impact back. |grouprole EVERYONE
|tip Earthen Pillars can be destroyed with Meteor Axe. |grouprole EVERYONE
|tip Opalfang will occasionally "Crush" targets, dealing massive damage and increase physical damage taken to the target by 100%. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Sennarth##187967 |goto Vault of the Incarnates/0 52.77,52.55
_EVERYONE:_ |grouprole EVERYONE
|tip Each "Breath of Ice" will creates patches of Icy Ground.
|tip You will take moderate damage every second while standing on "Icy Ground."
|tip "Enveloping Webs" targets several players dealing moderate damage, cause the Sticky Webbing debuff.
|tip "Sticky Webbing" will prevent sliding from Icy Ground or being pushed and pulled, but applies a debuff that stacks 10 times.
|tip At 10 stacks, the target will be "Wrapped in Webs", reducing movement speed by 75%.
|tip The debuff can be caused by "Caustic Eruption", caused by killing Caustic Spiderlings.
|tip "Frostbreath Arachnid" spawn and deal heavy damage to anyone in front of them.
|tip Spread out when possible. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Do not stand in front of enemies when possible.
_TANK:_ |grouprole TANK
|tip "Web Blasts" increases the damage taken from subsequent hits.
|tip Face "Frostbreath Arachnids" away from raid members when possible.
Click Here to Continue |confirm
step
kill Dathea, Ascended##189813 |goto Vault of the Incarnates/6 55.93,51.33
_EVERYONE:_ |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Spread out when possible.
|tip "Raging Bursts" inflict moderate damage to targets within 6 yards, creating a Raging Tempest at their location.
|tip "Raging Tempest" will deal heavy damage to players that touch them, sending them into the air.
|tip "Crosswinds" will cause Raging Tempests to relocate.
|tip "Conductive Mark" is applied to a player, inflicting moderate damage, leaving a dot, increases damage taken by 10% for 5 seconds and the affect stacks.
|tip The player who is marked should stay away from anyone else or duplicate the effect and refresh the initial effect.
|tip "Cyclone" will draw players towards her, dealing moderate damage over time.
_TANK:_ |grouprole TANK
|tip "Zephyr Slam" deals massive damage and knocks you back.
|tip Each impact will increase the damage from the knockbacks by 55%.
|tip When knocked back, she will cast "Aeriel Buffet" at targets not within range.
|tip "Coalescing Storm" will summon Volatile Infusers that need to be picked up.
Click Here to Continue |confirm
step
kill Kurog Grimtotem##184986 |goto Vault of the Incarnates/1 51.32,50.83
_EVERYONE:_ |grouprole EVERYONE
|tip Each Altar has a "Dominance" aura that moderately damages the raid group every 4 seconds and because 10% stronger with each cast.
|tip Swap altars when the damage becomes unmanageable.
_ALTAR OF FLAME_
|tip "Magma Burst" deals heavy damage to random players.
|tip It leaves behind pools that cause "Searing Carnage", marking players for 5 seconds.
|tip Each second, a new pool appears adn after 2 seconds for each, they explode dealing massive damage to those 5 yards near.
_ALTAR OF FROST_
|tip "Biting Chill" deals damage every second for 10 seconds.
|tip "Absolute Zero" does deadly damage that splits evenly between players 8 yards of impact.
_ALTAR OF STORM_
|tip "Shocking Burst" targets random players that deals heavy damage to others within 12 yards after 5 seconds.
|tip "Thunder Strike" needs to hit players or it will deal massive raid wide damage.
_ALTAR OF EARTH_
|tip "Erupting Bedrock" is a line attack that deals massive damage.
|tip "Seismic Rupture" knocks back and does massive damage 10 yards of impact.
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid being in front of Kurog. |grouprole DAMAGE
|tip Kill "Earth Breakers" as they appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Earth Breakers will cause "Skeletal Fractures" which causes 6% physical damage taken and stacks. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face him away from the raid. |grouprole TANK
|tip "Sundering Strike" deals massive frontal cone damage, knocks them back then deals a dot that lasts 35 seconds and stacks.
|tip "Elemental Surge" dealing moderate damage every 0.5 seconds when not be an altar. |grouprole TANK
Click Here For Part 2 |confirm
step
kill Kurog Grimtotem##184986 |goto Vault of the Incarnates/1 51.32,50.83
_EVERYONE:_ |grouprole EVERYONE
|tip The 4 elementals all have an aura that deals damage that stacks every second, respect to their element. |grouprole EVERYONE
_BLAZE FIEND_
|tip "Magma Flow" falls from the elemental when it is hit. |grouprole EVERYONE
|tip "Magma Pools" left behind deal heavy damage every second when standing in it. |grouprole EVERYONE
_FROZEN DESTROYER_
|tip "Frost Blinds" will deal heavy damage initially, followed by moderate damage every 2 seconds for 20 after, reducing movement by 10% per stack. |grouprole EVERYONE
|tip Move within 10 yards for "Freezing Tempest" to reduce the heavy damage over time to moderate. |grouprole EVERYONE
_TECTONIC CRUSHER_
|tip "Breaking Gravel" causes it to deal 3% stacking damage against the same target. |grouprole EVERYONE
|tip The affect will fall off when hitting a new target. |grouprole EVERYONE
|tip "Ground Shatter" infuses several players for 5 seconds dealing heavy damage to anyone within 10 yards of those players. |grouprole EVERYONE
|tip "Violent Upheaval" causes rocks to erupt from nearby locations, dealing massive damage to anyone near them. |grouprole EVERYONE
_THUNDERING PRESENCE_
|tip "Storm Break" causes it to appear behind random players, using Lethal Current. |grouprole EVERYONE
|tip "Lethal Current" deals moderate damage to anyone within 8 yards of the target every second for 6 seconds. |grouprole EVERYONE
_PRIMAL END_
|tip When the elementals are dealt with, he will gain all the previous powers at once. |grouprole EVERYONE
|tip Additionally, he will gain "Elemental Surge" dealing moderate damage every 0.5 seconds. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Broodkeeper Diurna##190245 |goto Vault of the Incarnates/4 50.97,52.01
_EVERYONE:_ |grouprole EVERYONE
|tip "Greatstaff of the Broodkeeper" deals moderate damage to players within 50 yards every 1.5 seconds for 12. |grouprole EVERYONE
|tip Additionally, she will gain "Greatstaff's Wrath", increasing her damage by 10%. |grouprole EVERYONE
|tip Players can use "Focus Greatstaff" while near it, consuming an application of Greatstaff's Wrath. |grouprole EVERYONE
|tip This will also cause a beam to follow the player, inflicting heavy damage to players within 3 yards. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use Greatstaff's Wrath to destroyed "Rapid Incubation" eggs.|grouprole DAMAGE
|tip Kill Primalist Reinforcements as they appear.|grouprole DAMAGE
|tip Interrupt "Primalist Mages" when possible.|grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Icy Shroud" reduces movement speed by 30% and causes 37,625 healing to be absorbed. |grouprole HEALER
|tip "Frozne Shroud" is a magic affect that immobilizes targets and causes 47,031 healing ot be absorbed. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Mortal Stoneclaws" deals high damage and reduces healing recieved. |grouprole TANK
|tip "Broodkeeper's Fury" increases the duration of reduced healing recieved. |grouprole TANK
|tip Pick up "Primalist Reinforcements" quickly to prevent them from healing, increasing damage done and reducing damage taking from Broodkeeper's Bond. |grouprole TANK
Click Here to Continue |confirm
step
kill Raszageth the Storm-Eater##199031 |goto Vault of the Incarnates/7 55.65,60.85
_EVERYONE:_ |grouprole EVERYONE
|tip Players marked with "Static Charge" should move as far away from the raid as possible, reducing the heavy raid damage it does when it expires.
|tip The "Static Field" left behind does damage every second, reduces movement by 50% and reduces forced movement effects to those standing in it.
|tip She uses "Hurricane Wing" at 100 energy, dealing heavy raid damage, knocking players back and leaving a dot for 2 seconds.
|tip When the Vault of the Incarnates reaches 50% and 0% she will use Lightning Devastation.
|tip "Lightning Devastation" deals massive damage instantly and additional moderate damage every 2 seconds to thos in the impact area.
|tip She will also be protected by "Ruinous Shoroud", damaging the Vault 1% every 1.5 seconds.
_DAMAGE:_ |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Electric Scales" dishes out moderate raid wide damage, as well as random "Electric Lash"
_TANK:_ |grouprole TANK
|tip "Electrified Jaws" deals massive damage and increases physical damage taken by 150% for 35 seconds.
|tip Face her away from the raid when possible.
Click Here to Continue |confirm
]])
