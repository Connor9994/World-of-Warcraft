local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DungeonCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Halls of Atonement",{
mapid=1663,
achieveid={14370},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Halkias","Echelon","High","Adjudicator","Aleez","Lord","Chamberlain"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nHalkias\n"..
"Echelon\nHigh Adjudicator Aleez\nLord Chamberlain",
},[[
step
kill Halkias##165408 |goto Halls of Atonement/0 52.79,53.23
|tip Kill the 3 Shards of Halkias to spawn it.
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in beams created by "Refracted Sinlight," which can change directions randomly. |grouprole EVERYONE
|tip Do not stand in "Glass Shards" on the ground left behind after a "Crumbling Slam." |grouprole EVERYONE
|tip Spread out at least 6 yards to avoid multiple people being hit by "Heave Debris." |grouprole EVERYONE
|tip Periodically, "Sinlight Visions" will fear a random group member. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing within 6 yards of the "Crumbling Slam" impact zone. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing within 6 yards of the "Crumbling Slam" impact zone. |grouprole HEALER
|tip Dispel "Sinlight Visions" as quickly as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move Halkias frequently to avoid large clumps of "Glass Shards." |grouprole TANK
Click Here to Continue |confirm
step
kill Echelon##156827 |goto 26.51,54.23
_EVERYONE:_ |grouprole EVERYONE
|tip Attempting to open the door will spawn the boss. |grouprole EVERYONE
|tip Avoid standing in toxic red "Blood Torrent" pools. |grouprole EVERYONE
|tip "Stone Call" will summon Undying Stonefiends. |grouprole EVERYONE
|tip Cursed players should move quickly to the petrified Undying Stonefiends so Echelon will destroy them with "Stone Shattering Leap." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Undying Stonefiends one at a time to avoid excess damage when they explode upon petrifying. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Undying Stonefiends explode upon petrifying and will require heavy party healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Group Undying Stonefiends together and stagger damage, petrifying them one at a time. |grouprole TANK
Click Here to Continue |confirm
step
kill High Adjudicator Aleez##165410 |goto Halls of Atonement/1 21.15,50.14
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt "Volley of Power" whenever possible. |grouprole EVERYONE
|tip If you become fixated, bring the add to one of the red vessels to despawn it. |grouprole EVERYONE
|tip Stay 8 yards away from the add when it is fixating someone to avoid damage from "Pulse from Beyond." |grouprole EVERYONE
|tip Avoid standing in red swirling "Anima Fountain" patches. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Lord Chamberlain##164218 |goto Halls of Atonement/2 14.24,48.61
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing on the "Telekinetic Toss" area of ground indicated by a red arrow. |grouprole EVERYONE
|tip Avoid the frontal cone area from "Unleashed Suffering" casts. |grouprole EVERYONE
|tip Dodge the 4 statues that move inward and outward during "Chamberlain's Chorus." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The tank will require extra healing for 18 seconds following the application of "Stigma of Pride." |grouprole HEALER
|tip The damage of "Stigma of Pride" increases as the duration decreases. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Intercept "Ritual of Woe" during the "Chamberlain's Chorus" by standing between the red glowing statue and the boss. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Halls of Atonement" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Mists of Tirna Scithe",{
mapid=1669,
achieveid={14371},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Ingra","Maloch","Mistcaller","Tred'ova"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nIngra Maloch\nMistcaller"..
"\nTred'ova",
},[[
step
kill Ingra Maloch##164567 |goto Mists of Tirna Scithe/0 75.44,18.89
_EVERYONE:_ |grouprole EVERYONE
|tip Adds should always be prioritized over the boss. |grouprole EVERYONE
|tip Avoid standing in the "Bewildering Pollen" frontal cone cast by the adds. |grouprole EVERYONE
|tip Interrupt "Tears of the Forest" as soon as the channeling begins. |grouprole EVERYONE
|tip Avoid standing in blue swirling patches on the ground during "Tears of the Forest." |grouprole EVERYONE
|tip Avoid attacking Maloch while buffed with "Embrace Darkness." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Spirit Bolt," but not at the expense of allowing "Tears of the Forest" to channel. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Party members attacking during "Embrace Darkness" will have their damage reflected and require extra healing. |grouprole HEALER
Click Here to Continue |confirm
step
kill Mistcaller##170217 |goto 47.37,48.78
_EVERYONE:_ |grouprole EVERYONE
|tip During "Guessing Game," kill the clone who's symbol stands out from the others'. |grouprole EVERYONE
|tip If three are flowers, kill the leaf or vice versa. |grouprole EVERYONE
|tip Kill the leaf if the other three are flowers or vice versa. |grouprole EVERYONE
|tip If three symbols are solid, kill the one that is hollow or vice versa. |grouprole EVERYONE
|tip Avoid standing in the "Dodge Ball" frontal cone attack. |grouprole EVERYONE
|tip Avoid the blue fox add by running away from it and snaring or stunning it for 14 seconds. |grouprole EVERYONE
|tip Stay at least 8 yards away from someone vixated by the fox in case it reaches them. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Patty Cake" only if you are Mistcaller's current target. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Interrupt "Patty Cake" at all times. |grouprole TANK
Click Here to Continue |confirm
step
kill Tred'ova##164517 |goto 15.11,74.45
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in green and blue swirling patches on the ground. |grouprole EVERYONE
|tip Run away from the person you are "Mind Linked" with until the purple beam breaks. |grouprole EVERYONE
|tip Kill adds quickly. |grouprole EVERYONE
|tip Run away when fixated by "Mark the Prey." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Consumption" whenever possible. |grouprole DAMAGE
|tip Burn through the "Gorging Shield" to remove the interrupt immunity. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Pick up adds quickly so the party can burn them down. |grouprole TANK
|tip Interrupt "Consumption" whenever possible. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Mists of Tirna Scithe" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\The Necrotic Wake",{
mapid=1666,
achieveid={14366},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Amarth","Reanimator","Surgeon","Stitchflesh","Nalthor","Rimebinder"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nBlightbone\nAmarth, The Reanimator"..
"\nSurgeon Stitchflesh\nNalthor the Rimebinder",
},[[
step
kill Blightbone##166880 |goto The Necrotic Wake/0 56.74,39.52
_EVERYONE:_ |grouprole EVERYONE
|tip Make sure you clear enough trash to provide a large encounter area. |grouprole EVERYONE
|tip Run away from Carrion Worms if you are fixated. |grouprole EVERYONE
|tip CC and quickly kill Carrion Worms before they can explode. |grouprole EVERYONE
|tip Avoid standing in green "Fetid Gas" pools. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of "Heaving Retch" unless you are targeted. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of "Heaving Retch" unless you are targeted. |grouprole HEALER
|tip "Crunch" will inflict heavy damage on the tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid standing in front of "Heaving Retch." |grouprole TANK
|tip Move Blightbone as needed to avoid green "Fetid Gas" pools. |grouprole TANK
|tip "Crunch" will inflict heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Amarth##163157 |goto 20.47,40.53
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt "Necrotic Bolt" whenever possible. |grouprole EVERYONE
|tip Avoid the "Necrotic Breath" cast in a frontal cone. |grouprole EVERYONE
|tip If possible, remove the "Unholy Frenzy" enrage effect. |grouprole EVERYONE
|tip Avoid standing close to dead adds during "Land of the Dead." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of the boss. |grouprole DAMAGE
|tip Burn down the skeletal adds summoned during "Land of the Dead." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of the boss. |grouprole HEALER
|tip "Final Harvest" will cause living and dead adds to explode, potentially causing heavy AoE damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Quickly pick up the skeletal adds summoned during "Land of the Dead." |grouprole TANK
Click Here to Continue |confirm
step
kill Surgeon Stitchflesh##166882 |goto The Necrotic Wake/1 50.87,35.58
_EVERYONE:_ |grouprole EVERYONE
|tip Stack up near Stitchflesh's Creation. |grouprole EVERYONE
|tip Avoid standing in green swirling "Embalming Ichor" patches on the ground. |grouprole EVERYONE
|tip If you are targeted by "Meat Hook," aim it towards the boss and move at the end of the cast so the boss is pulled down. |grouprole EVERYONE
|tip A new creation will spawn when Surgeon Stitchflesh returns to the platform |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus initial DPS on Stitchflesh's Creation. |grouprole DAMAGE
|tip Focus DPS on the boss each time it is pulled off the platform by "Meat Hook." |grouprole DAMAGE
|tip Alternate DPS this way until the encounter is finished. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The tank will take heavy damage from "Mutilate." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull Stitchflesh's Creation close to the platform. |grouprole TANK
|tip Move the add around the edge of the platform as needed. |grouprole TANK
|tip Pick up the new add quickly when Surgeon Stitchflesh returns to the platform |grouprole TANK
|tip "Mutilate" will cause heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Nalthor the Rimebinder##166945 |goto The Necrotic Wake/2 51.03,43.66
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out and move out of the circle created around the rooted party member. |grouprole EVERYONE
|tip Avoid standing in blue swirling areas during "Comet Storm." |grouprole EVERYONE
|tip If you are banished, run to the end of the platform while avoiding circles and blue swirling areas. |grouprole EVERYONE
|tip Interrupt and kill the Zolramus Siphoner at the end to rejoin the party. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Frozen Binds" when everyone else is out of the circle. |grouprole HEALER
Click Here to Continue |confirm
step
_Congratulations!_
You Completed "The Necrotic Wake" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Plaguefall",{
mapid=1674,
achieveid={14369},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Globgrog","Doctor","Ickus","Domina","Venomblade","Margrave","Stradama"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nGlobgrog\nDoctor Ickus"..
"\nDomina Venomblade\nMargrave Stradama",
},[[
step
kill Globgrog##164255 |goto Plaguefall/1 50.26,21.38
_EVERYONE:_ |grouprole EVERYONE
|tip Remain in close proximity to Globgrog so "Slime Wave" is easier to avoid. |grouprole EVERYONE
|tip Avoid the "Slime Wave" frontal cone attack. |grouprole EVERYONE
|tip Position yourself so "Plaguestomp" doesn't knock you off the platform. |grouprole EVERYONE
|tip CC slimes to prevent them from reaching the boss. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Burn down slimes quickly to prevent them from reaching the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Plaguestomp" will deal damage to the entire party and apply the "Debilitating Plague" disease. |grouprole HEALER
|tip Remove "Debilitating Plague" often if possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull the boss to one side of the platform. |grouprole TANK
Click Here to Continue |confirm
step
kill Doctor Ickus##164967 |goto 61.82,44.09
_EVERYONE:_ |grouprole EVERYONE
|tip Ickus jumps around a lot, so care must be taken not to pull him while clearing trash. |grouprole EVERYONE
|tip Avoid standing in the area targeted by Ickus' "Slime Lunge" ability. |grouprole EVERYONE
|tip Chase Ickus when he jumps to another platform. |grouprole EVERYONE
|tip Interrupt "Viral Globs" casts from red Pestilence Slimes. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Erupting Ooze(s) that spawns after "Slime Injection" is removed. |grouprole DAMAGE
|tip Quickly focus and kill the Plague Bomb that spawns when Ickus jumps before it can explode. |grouprole DAMAGE
|tip Focus and kill any red Pestilence Slimes that spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel "Slime Injection" on cooldown. |grouprole HEALER
|tip Any red Pestilence Slimes near Ickus will grant him 25% haste.
_TANK:_ |grouprole TANK
|tip Any red Pestilence Slimes near Ickus will grant him 25% haste.
Click Here to Continue |confirm
step
kill Domina Venomblade##164266 |goto 55.45,75.48
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted with a purple circle, run away from party members quickly. |grouprole EVERYONE
|tip When webs spawn around the room, each party member should move to the center of a unique web to spawn the Brood Assassins. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus and kill Brood Assassins quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel the "Cytotoxic Slash" poison from the tank if possible. |grouprole HEALER
|tip "Assassinate" deals heavy damage to afflicted party members. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Quickly pick up Brood Assassins that spawn from webs. |grouprole TANK
|tip "Cytotoxic Slash" will increase incoming damage significantly. |grouprole TANK
Click Here to Continue |confirm
step
kill Margrave Stradama##164267 |goto Plaguefall/0 52.41,78.50
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in front of randomly spawning tentacles during "Plague Crash." |grouprole EVERYONE
|tip Avoid coming into contact with the green pool in the center of the room. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus and kill Malignant Spawns quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The party will taking increasing amounts of damage from "Infectious Rain" the longer the fight lasts. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Soak green "Touch of Slime" circles on the ground cast by Malignant Spawns. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Plaguefall" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\De Other Side",{
mapid=1680,
achieveid={14373},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Hakkar","Soulflayer","Manastorm","Dealer","Xy'exa","Mueh'zala"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nHakkar the Soulflayer\nThe Manastorms"..
"\nDealer Xy'exa\nMueh'zala",
},[[
step
Click Here to Kill Hakkar the Soulflayer |confirm |next "Kill_Hakkar_the_Soulflayer"
Click Here to Kill the Manastorms |confirm |next "Kill_the_Manastorms"
Click Here to Kill Dealer Xy'exa |confirm |next "Kill_Dealer_Xy'exa"
step
label "Kill_Hakkar_the_Soulflayer"
kill Hakkar the Soulflayer##166473 |goto De Other Side/2 25.33,48.47
_EVERYONE:_ |grouprole EVERYONE
|tip Stay clear of other players if you are afflicted by a red "Corrupted Blood" circle. |grouprole EVERYONE
|tip If fixated by the Son of Hakkar, run away. |grouprole EVERYONE
|tip Avoid standing in red pools left by dead Sons of Hakkar. |grouprole EVERYONE
|tip Dead Sons of Hakkar will respawn eventually, in addition to new ones spawning. |grouprole EVERYONE
|tip When Hakkar is at full energy, interrupt "Blood Barrage" only after "Blood Barrier" has expired. |grouprole EVERYONE
|tip When Hakkar reaches full energy, avoid red swirling areas on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus DPS on the Son of Hakkar that occasionally spawns. |grouprole DAMAGE
|tip When Hakkar is at full energy, burn through "Blood Barrier" quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Piercing Barb" will inflict heavy damage on the tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Piercing Barb" will inflict heavy damage. |grouprole TANK
Click Here to Proceed to the Manastorms |confirm |next "Kill_the_Manastorms"
Click Here to Proceed to Dealer Xy'exa |confirm |next "Kill_Dealer_Xy'exa"
Click Here to Proceed to Mueh'zala |confirm |next "Kill_Mueh'zala"
step
label "Kill_the_Manastorms"
kill Millificent Manastorm##101976 |goto De Other Side/0 48.37,66.92
kill Millhouse Manastorm##164556
_EVERYONE:_ |grouprole EVERYONE
|tip The encounter begins against Millhouse. |grouprole EVERYONE
|tip Interrupt "Frostbolt" whenever possible. |grouprole EVERYONE
|tip Intercepting the purple beams from crystals will deal stacking damage, but also give a stacking damage buff. |grouprole EVERYONE
|tip Every 30 seconds the bosses will switch positions. |grouprole EVERYONE
|tip When fighting Millificent, disarm Elementium Squirrel Bombs by right-clicking them before the timer expires. |grouprole EVERYONE
|tip Manastorms are defeated at 10% health. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Thorium Rocket Chickens quickly when they are not buffed with "Thorium Plating." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players soaking beams may need additional healing. |grouprole HEALER
Click Here to Proceed to Hakkar the Soulflayer |confirm |next "Kill_Hakkar_the_Soulflayer"
Click Here to Proceed to Dealer Xy'exa |confirm |next "Kill_Dealer_Xy'exa"
Click Here to Proceed to Mueh'zala |confirm |next "Kill_Mueh'zala"
step
label "Kill_Dealer_Xy'exa"
kill Dealer Xy'exa##164450 |goto De Other Side/1 83.38,57.87
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid stepping in white swirling "Displacement Traps." |grouprole EVERYONE
|tip Move quickly to avoid being struck by white beams. |grouprole EVERYONE
|tip If you get an "Explosive Contrivance" timer above your head, step into a "Displacement Trap" near the end of the timer. |grouprole EVERYONE
|tip If Xy'exa gets an "Explosive Contrivance" timer above her head, everyone should step into a "Displacement Trap" near the end of the timer. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
_TANK:_ |grouprole TANK
Click Here to Proceed to Hakkar the Soulflayer |confirm |next "Kill_Hakkar_the_Soulflayer"
Click Here to Proceed to the Manastorms |confirm |next "Kill_the_Manastorms"
Click Here to Proceed to Mueh'zala |confirm |next "Kill_Mueh'zala"
step
label "Kill_Mueh'zala"
kill Mueh'zala##169769 |goto De Other Side/3 50.73,57.68
_EVERYONE:_ |grouprole EVERYONE
|tip Assign a couple of DPS to go left when you have to split up. EVERYONE
|tip Avoid standing in purple "Cosmic Collapse" circles on the ground. EVERYONE
|tip During "Master of Death," pay attention to the boss' arms and dodge left, right, or backwards three times. EVERYONE
|tip During "Shatter Reality," split up and run into the portals on your assigned side. EVERYONE
|tip Only one party member can enter each portal. EVERYONE
|tip Kill the add inside the portals while avoid purple circles. EVERYONE
|tip When the add dies, click the totem. EVERYONE
|tip For each totem clicked, Bwonsamdi will remove 20% of Mueh'zala's health. EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel one of the "Cosmic Artifice" magic debuffs and let the other one run its course. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Always stay in melee range when the boss is not casting "Master of Death" or "Shatter Reality." |grouprole TANK
|tip Using damage mitigating abilities during "Soulcrusher" will reduced further damage from "Crushed Soul." |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed "De Other Side" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Sanguine Depths",{
mapid=1675,
achieveid={14197},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Kryxis","Voracious","Executor","Tarvold","Grand","Proctor","Beryllia","General","Kaal"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nKryxis the Voracious"..
"Executor Tarvold\nGrand Proctor Beryllia\nGeneral Kaal",
},[[
step
kill Kryxis the Voracious##162100 |goto Sanguine Depths/1 56.03,18.01
_EVERYONE:_ |grouprole EVERYONE
|tip Stack up to split damage from "Juggernaut Rush." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Hungering Drain" whenever possible. |grouprole DAMAGE
|tip Absorb "Living Essences" before they reach Kryxis. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Prepare for heaving damage on the tank from "Vicious Headbutt." |grouprole HEALER
|tip The party will take heavy damage from "Severing Smash" and "Juggernaut Rush." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Prepare for heaving damage from "Vicious Headbutt." |grouprole TANK
|tip Interrupt "Hungering Drain" whenever possible. |grouprole TANK
|tip Kryxis consumes "Living Essences" to increase his damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Executor Tarvold##162103 |goto 47.76,86.04
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in "Residue" pools when Fleeting Manifestations die. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Fleeting Manifestations quickly. |grouprole DAMAGE
|tip Anyone near "Castigate" will take heavy damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Fleeting Manifestations inflict party-wide damage while alive. |grouprole HEALER
|tip Anyone near "Castigate" will take heavy damage. |grouprole HEALER
Click Here to Continue |confirm
step
kill Grand Proctor Beryllia##162102 |goto Sanguine Depths/0 46.12,69.89
_EVERYONE:_ |grouprole EVERYONE
|tip Move into Z'rali's "Shining Radiance" to reduce damage from "Rite of Supremacy." |grouprole EVERYONE
|tip Only one player can receive damage reduction from each "Shining Radiance" area. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players will occasionally receive debuffs causing damage for a short period of time. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip You may need a cooldown to mitigate "Iron Spikes" damage. |grouprole TANK
Click Here to Continue |confirm
step
kill General Kaal##165318 |goto 15.78,17.38
_EVERYONE:_ |grouprole EVERYONE
|tip Be prepared for the knockback from "Gloom Squall." |grouprole EVERYONE
|tip Avoid charging images of Kaal during "Piercing Blur." |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Wicked Rush." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players hit by "Wicked Rush" will take damage over time for 20 seconds. |grouprole HEALER
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Sanguine Depths" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Spires of Ascension",{
mapid=1692,
achieveid={14326},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Kin-Tara","Ventunax","Oryphrion","Devos","Paragon","Doubt"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nKin-Tara\nVentunax"..
"\nOryphrion\nDevos, Paragon of Doubt",
},[[
step
kill Kin-Tara##162059 |goto Spires of Ascension/1 43.81,57.21
_EVERYONE:_ |grouprole EVERYONE
|tip When she takes to the air, avoid standing in "Charged Spear" spots on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When Kin-Tara or Azule dies, the other enrages. |grouprole HEALER
|tip "Overhead Slash" inflicts heavy damage to anyone in a frontal cone. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Kin-Tara or Azule dies, the other enrages. |grouprole TANK
|tip "Overhead Slash" inflicts heavy damage to anyone in a frontal cone. |grouprole TANK
|tip Face her away from others when she casts "Overhead Slash" at 100 energy. |grouprole TANK
Click Here to Continue |confirm
step
kill Ventunax##162058 |goto 63.70,44.89
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in "Dark Bolt" areas on the ground following "Shadowhirl." |grouprole EVERYONE
|tip Avoid standing in front of Ventunax furing "Blinding Flash" casts. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be prepared for heavy party damage when "Shadowhirls" begin accumulating. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be prepared to regain threat after each "Dark Stride" cast. |grouprole TANK
Click Here to Continue |confirm
step
kill Oryphrion##162060 |goto Spires of Ascension/2 52.90,38.22
_EVERYONE:_ |grouprole EVERYONE
|tip Ordinance strike areas leave behind "Anima Fields" that empower Oryphrion. |grouprole EVERYONE
|tip Spread out to reduce excess damage from "Purifying Blast." |grouprole EVERYONE
|tip At 0 anima, Oryphrion will become "Drained" and take 100% increased damage. |grouprole EVERYONE
|tip During "Recharge Anima," have ranged players intercept and soak the large anima orbs. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Prepare for party damage if players fail to spread out during "Purifying Blast." |grouprole HEALER
|tip Players soaking orbs during "Recharge Anima" will take damage. |grouprole HEALER
|tip Everyone will take damage from orbs if no one intercepts them. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move Oryphrion out of "Anima Fields" to reduce damage. |grouprole TANK
|tip "Charged Stomp" will inflict heavy magic damage and slow your movement speed. |grouprole TANK
Click Here to Continue |confirm
step
kill Devos##167410 |goto Spires of Ascension/3 45.51,62.77
_EVERYONE:_ |grouprole EVERYONE
|tip When Devos takes to the air, pick up orbs and return them to the "Archon's Spear" in the center. |grouprole EVERYONE
|tip When all orbs have been returned, carefully aim the spear at Devos and fire to bring him back to the ground. |grouprole EVERYONE
|tip Be prepared for the wind to change directions so you don't get blown off the platform while Devos is in the air. |grouprole EVERYONE
|tip Move out of pools on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The party will take more damage the longer Devos stays in the air. |grouprole HEALER
|tip At 70% and 30% health, the party will take AoE damage from "Unleashed Anima." |grouprole HEALER
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Spires of Ascension" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Tazavesh, the Veiled Market",{
mapid=1993,
patch='90100',
condition_suggested=function() return level >= 60 end,
keywords={"Shadowlands"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nZo'phex"..
"\nThe Grand Menagerie\nMailroom Mayhem\nMyza's Oasis\nSo'azmi\nHylbrande\n"..
"Timecap'n Hooktail\nSo'leah",
},[[
step
Complete the "The Veiled Market" Quest |complete completedq(63985)
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to accomplish this.
step
kill Zo'phex##175616
_EVERYONE:_ |grouprole EVERYONE
|tip During "Interrogation," avoid standing in front of Zo'phex. |grouprole EVERYONE
|tip Avoid standing near Zo'phex during "Armed Security." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Quickly burn down "Containment Cells" to interrupt "Interrogation." |grouprole DAMAGE
|tip Pick your weapon up after "Impound Contraband" to remove your pacification. |grouprole DAMAGE
|tip "Rotary Body Armor" absorbs all damage that passes through it. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Pick your weapon up after "Impound Contraband" to remove your pacification. |grouprole HEALER
|tip The tank will need extra healing while Zo'phex is bufed with "Fully Armed." |grouprole HEALER
|tip Every time a "Containment Cell" is destroyed, "Security Measure" will deal heavy damage to the raid. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip You may need to use a cooldown while Zo'phex is buffed with "Fully Armed." |grouprole TANK
Click Here to Continue |confirm
step
kill Alcruux##176556
_EVERYONE:_ |grouprole EVERYONE
|tip Players nearest to Alcruux initially will gain "Gluttony." |grouprole EVERYONE
|tip "Gluttony" will transfer to the closest player upon expiration. |grouprole EVERYONE
|tip Avoid standing near players with "Gluttony" unless transferring it upon expiration. |grouprole EVERYONE
|tip The pull of "Whirling Annihilation" intensifies over time, making it more difficult to avoid. |grouprole EVERYONE
|tip Avoid touching "Volatile Anima." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Player afflicted with "Gluttony" should absorb "Volatile Anima" to gain a stacking "Devoured Anima" damage buff. |grouprole DAMAGE
|tip The "Gluttony" debuff should be passed to a Ranged DPS. |grouprole DAMAGE
|tip Quickly burn down the shield and interrupt "Flagellation Protocol." |grouprole DAMAGE
|tip Destroy "Chains Of Domination" quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Grand Consumption" may deal heavy damage to the raid when it begins to hit the ground. |grouprole HEALER
|tip Dispel "Purification Protocol." |grouprole HEALER
|tip The tank will need extra healing while the "Flagellation Protocol" shield is being burned down. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use a defensive cooldown during "Flagellation Protocol." |grouprole TANK
Click Here to Continue |confirm
step
kill P.O.S.T. Master##175646
_EVERYONE:_ |grouprole EVERYONE
|tip Soak as many "Hazardous Liquids" puddles as possible. |grouprole EVERYONE
|tip Use a personal defensive cooldown during "Fan Mail." |grouprole EVERYONE
|tip Stack for "Money Order" to split damage. |grouprole EVERYONE
|tip Run over "Unstable Goods" and use the "Throw Package" extra action button to throw them to another player the Active Delivery Portal with blue lights. |grouprole EVERYONE
|tip Do not drop "Unstable Goods," as they will cause group-wide damage. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel high stacks of "Alchemical Residue" from players soaking "Hazardous Liquids." |grouprole HEALER
|tip Players soaking "Spilled Liquids" puddles will need extra healing. |grouprole HEALER
|tip Use a cooldown during "Fan Mail" or "Money Order." |grouprole HEALER
Click Here to Continue |confirm
step
kill Zo'gron##176564
_EVERYONE:_ |grouprole EVERYONE
|tip Kill adds while one player trades items between the vendors until the door opens. |grouprole EVERYONE
|tip Use the instrument directional abilities to hit notes that appear on the ground to gain "Up Tempo!" at 12 stacks of the "Jazzy" buff. |grouprole EVERYONE
|tip Horn Improvisation: Hits notes within 4 yards to gain a stack of "Jazzy." |grouprole EVERYONE
|tip Guitar Riff: Slide forward hitting notes for 12 yards to gain stacks of "Jazzy." |grouprole EVERYONE
|tip Sax Solo: Slide forward hitting notes for 12 yards to gain stacks of "Jazzy." |grouprole EVERYONE
|tip Trumpet Slide: Slide forward hitting notes for 12 yards to gain stacks of "Jazzy." |grouprole EVERYONE
|tip Drum Beat: Play drums to hit notes around the drumset to gain stacks of "Jazzy." |grouprole EVERYONE
|tip CC and cleave down Disruptive Patrons casting "Suppression." |grouprole EVERYONE
|tip Attack from the rear and avoid the frontal cone damage from "Crowd Control." |grouprole EVERYONE
|tip Spread out and use defensive cooldown for "Suppression Spark."
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Menacing Shout." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip You might need to use a healing cooldown for "Suppression Spark." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use a defensive cooldown for "Security Slam." |grouprole TANK
|tip Interrupt "Menacing Shout." |grouprole TANK
Click Here to Continue |confirm
step
kill So'azmi##175806
_EVERYONE:_ |grouprole EVERYONE
|tip Teleport using the shape-matching "Relocators" (wandering pillars) to avoid damage or to regroup after "Divide". |grouprole EVERYONE
|tip Spread and use personal defensives to avoid cleave from "Quickblade." |grouprole EVERYONE
|tip "Double Technique" must be interrupted twice. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Hylbrande##175663
_EVERYONE:_ |grouprole EVERYONE
|tip Drop "Purged By Fire" pools away from group, and not in front of the panels in the corners. |grouprole EVERYONE
|tip During "Sanitizing Cycle" check the console at the front of the room to see which corner your colored orb should go to. |grouprole EVERYONE
|tip Only one person can check the console, so please share. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind boss to avoid "Shearing Swings" and "Titanic Crash." |grouprole DAMAGE
|tip Quickly swap to and kill adds that spawn and channel "Empowered Defense" on the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay behind boss to avoid "Shearing Swings" and "Titanic Crash." |grouprole HEALER
|tip Players targeted by "Purged By Fire" will take extra damage when dropping their pools away from group. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Sidestep "Titanic Crash." |grouprole TANK
Click Here to Continue |confirm
step
kill Timecap'n Hooktail##175546
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of "Cannon Barrage" fire swirls on the ground. |grouprole EVERYONE
|tip Don't go in the water. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay on the sides of the boss to avoid "Infinite Breath" and "Hook Swipe." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay on the sides of the boss to avoid "Infinite Breath" and "Hook Swipe." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Kill all the Corsair Brutes with the boss's cast of "Infinite Breath" before the boss gets to 100 energy to prevent their being empowered with "Double Time." |grouprole TANK
Click Here to Continue |confirm
step
kill So'leah##178433
_EVERYONE:_ |grouprole EVERYONE
|tip Touch the spinning orb "Collapsing Star" 4 times, allowing the DoT "Collapsing Energy" to drop off the party each time. |grouprole EVERYONE
|tip Line up "Hyperlight Jolt" (red arrows that cycle around players) with the star relics. |grouprole EVERYONE
|tip Make sure players are targeted by red arrows only once. |grouprole EVERYONE
|tip Dodge "Energy Fragmentation" missiles that come out of the relic stars. |grouprole EVERYONE
|tip Avoid "Hyperlight Nova" AOE rings that spawn around the relic stars. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt or stun Assassins' "Shuriken Blitz." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Expect heavy damage during "Hyperlight Spark" and "Collapsing Star." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt or stun Assassins' "Shuriken Blitz." |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Tazavesh, the Veiled Market" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Tazavesh, the Veiled Market Attunement",{
author="support@zygorguides.com",
description="\nThis guide will assist you in unlocking the "..
"\"Tazavesh, the Veiled Market\" dungeon.\n",
patch='90100',
condition_suggested=function() return level == 60 and not completedq(63986) end,
condition_end=function() return completedq(63986) end,
startlevel=60.0,
endlevel=60.0,
},[[
step
talk Host Ta'rela##156688
accept The Al'ley Cat of Oribos##63976 |goto Oribos/0 67.47,50.32
step
talk Al'dalil##178908
turnin The Al'ley Cat of Oribos##63976 |goto Oribos/2 56.67,31.83 |notravel
accept Insider Trading##63977 |goto 56.67,31.83 |notravel
accept Things Best Kept Dark##63979 |goto 56.67,31.83 |notravel
step
Follow the path |goto Oribos/0 63.57,50.26 < 20 |walk
talk Overseer Ta'readon##156768
Ask him _"What can you tell me about Cartel So?"_
Speak to Cartel Ta |q 63977/4 |goto 64.39,68.34 |notravel
step
talk Emissary Ba'silk##164100
Ask him _"What can you tell me about Cartel So?"_
Speak to Cartel Ba |q 63977/1 |goto 47.73,72.63
step
talk Zo'sorg##168011
Ask him _"What can you tell me about Cartel So?"_
Speak to Cartel Zo |q 63977/2 |goto 34.46,57.46
step
talk Foreman Au'brak##167738
Ask him _"What can you tell me about Cartel So?"_
Speak to Cartel Au |q 63977/3 |goto 40.33,32.64
step
Follow the path |goto 52.15,25.06 < 20 |only if walking
click Shipping Documents
kill So'danah##178997
|tip It will attack after clicking the documents.
|tip Don't stand in yellow patches on the ground.
collect Cartel So Shipping Manifest##186182 |q 63979/1 |goto 38.48,25.30
step
Enter the building |goto 73.47,50.21 < 20 |only if walking
talk Al'dalil##178908
turnin Insider Trading##63977 |goto Oribos/2 56.67,31.83 |notravel
turnin Things Best Kept Dark##63979 |goto 56.67,31.83
accept Seeking Smugglers##63980 |goto 56.67,31.83
step
Follow the path |goto Oribos/0 64.42,50.31 < 20 |walk |notravel
talk Ta'nla the Identifier##160090
turnin Seeking Smugglers##63980 |goto Revendreth/0 51.34,82.71
accept Above My Station##63982 |goto 51.34,82.71
step
Take the Portal to Transfer Station Ta |q 63982/1 |goto 50.99,81.88
step
talk Bounty Hunter Ta'oku##158890
turnin Above My Station##63982 |goto Bastion/0 32.52,32.35
accept Dead Drop##63983 |goto 32.52,32.35
step
Enter the building |goto 36.94,31.61 < 20 |walk
Find the Export Party |q 63983/1 |goto 37.11,30.93
step
kill Prototype Aquilon##178937 |q 63983/2 |goto 37.37,29.96
|tip Inside the building.
step
clicknpc Prototype Aquilon##178938
|tip Inside the building.
Mount the Prototype Aquilon |invehicle |goto 37.36,30.01 |q 63983
step
Watch the dialogue
|tip Pay attention to the instructions in your chat box.
|tip Use the button that matches the instructions given.
Return the Prototype Aquilon |q 63983/3
step
talk Bounty Hunter Ta'oku##158890
turnin Dead Drop##63983 |goto 32.52,32.35
accept Coins for the Ferryman##63984 |goto 32.52,32.35
step
talk Ta'meri##178792
turnin Coins for the Ferryman##63984 |goto Oribos/0 29.86,66.60
accept The Veiled Market##63985 |goto 29.86,66.60
step
talk Ta'meri##178792
Tell him _"Take me to Tazavesh."_
Jump in the Barge |invehicle |goto 29.86,66.60 |q 63985
step
Watch the dialogue
Take the Barge to Tazavesh |outvehicle |q 63985
step
talk Zo'mezal##179144
Tell him _"I seek entrance into Tazavesh."_
Watch the dialogue
Speak to the Bouncer |q 63985/2 |goto The Gilded Landing/0 84.11,47.29
step
talk Al'dalil##178908
turnin The Veiled Market##63985 |goto 86.68,48.46
accept Tazavesh: Raiders of the Lost Artifact##63986 |goto 86.68,48.46
step
kill So'leah##180863 |q 63986/1 |goto Tazavesh, the Veiled Market/0 33.60,53.03
|tip Use the "Tazavesh, the Veiled Market" guide to accomplish this.
step
talk Al'dalil##178908
turnin Tazavesh: Raiders of the Lost Artifact##63986 |goto The Gilded Landing/0 84.11,47.29
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Theater of Pain",{
mapid=1683,
achieveid={14372},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Dessia","Decapitator","Paceran","Virulent","Sathel","Accursed","Gorechop","Xav","Unfallen","Kul'tharok","Mordretha","Endless","Empress"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nAn Affront of Challengers"..
"\nGorechop\nXav the Unfallen\nKul'tharok\nMordretha, the Endless Empress",
},[[
step
kill Dessia the Decapitator##164451 |goto Theater of Pain/4 50.58,91.96
kill Paceran the Virulent##164463
kill Sathel the Accursed##164461
_EVERYONE:_ |grouprole EVERYONE
|tip When Dessia enrages she will fixate random targets. |grouprole EVERYONE
|tip Run away if fixated. |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Searing Death." |grouprole EVERYONE
|tip Move out of "Noxious Spores" pools on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Sathel becomes immune to interrupts while the shield is active. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip At 100% energy Dessia will use "Mortal Strike" and reduce healing received by the tank. |grouprole HEALER
|tip "Searing Death" will inflict damaged to anyone near the afflicted player. |grouprole HEALER
|tip Dispel "Genetic Alteration" whenever possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip At 100% energy Dessia will use "Mortal Strike" and reduce healing received. |grouprole TANK
Click Here to Continue |confirm
step
kill Gorechop##162317 |goto Theater of Pain/0 69.46,63.57
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Meat Hooks" when they path across the arena. |grouprole EVERYONE
|tip Move out of "Coagulating Ooze" pools that spawn after Oozing Leftovers die. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Oozing Leftovers quickly when they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Hateful Strike" inflicts heavy damage on the tank. |grouprole HEALER
|tip Players hit by "Meat Hooks" will take periodic physical damage for 8 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Hateful Strike" inflicts heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Xav the Unfallen##162329 |goto Theater of Pain/3 52.63,76.63
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in front of Xav during "Might of Maldraxxus" to avoid taking heavy damage. |grouprole EVERYONE
|tip At 100 energy Xav will force players into the pit to fight. |grouprole EVERYONE
|tip The winner will gain 10% increased damage while the loser will have their damage reduced by 10%. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Oppressive Banners" quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Brutal Combo" will inflict heavy physical damage on the tank. |grouprole HEALER
|tip The entire party will take heavy damage when Xav leaps to the center. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Brutal Combo" will inflict heavy physical damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Kul'tharok##162309 |goto Theater of Pain/2 71.40,68.71
_EVERYONE:_ |grouprole EVERYONE
|tip "Draw Soul" will cause you to suffer damage and make your soul move towards Kul'tharok. |grouprole EVERYONE
|tip Reclaim your soul to gain a damage buff and eliminate the periodic damage debuff. |grouprole EVERYONE
|tip Until you reclaim your soul, all actions will become impossible. |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Phantasmal Parasite." |grouprole EVERYONE
|tip Quickly move out of "Grasping Hands" areas on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Chill of the Beyond" will inflict light periodic damage for the duration of the encounter. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay in melee range to avoid heavy damage from "Spectral Reach." |grouprole TANK
Click Here to Continue |confirm
step
kill Mordretha, the Endless Empress##165946 |goto Theater of Pain/4 46.67,36.24
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Manifest Death." |grouprole EVERYONE
|tip Run away from "Grasping Rifts" to avoid being pulled in. |grouprole EVERYONE
|tip Avoid standing in "Dark Devastation" beams. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Reaping Scythe" inflicts heavy physical and magic damage on the tank. |grouprole HEALER
|tip Players pulled into "Grasping Rifts" will be stunned and take periodic magic damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Reaping Scythe" inflicts heavy physical and magic damage. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Theater of Pain" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Raids\\Castle Nathria",{
mapid=1735,
achieveid={14715},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Shriekwing","Hungering","Destroyer","Kael'thas","Sunstrider","Artificer","Xy'Mox","Lady","Inerva","Darkvein","Baroness","Frieda","Castellan","Niklaus","Lord","Stavros","Sludgefist","General","Grashaal","Kaal","Sire","Denathrius"},
author="support@zygorguides.com",
description="\nTo complete this raid, you will need to kill the following bosses:\n\nShriekwing\nHungering Destroyer"..
"\nKael'thas Sunstrider\nArtificer Xy'Mox\nLady Inerva Darkvein\nThe Council of Blood\nSludgefist\n"..
"Stoneborne Generals\nSire Denathrius",
},[[
step
kill Shriekwing##172145 |goto Castle Nathria/3 59.28,81.00
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of Shriekwing's line of sight during "Earsplitting Shriek" while it is stealthed. |grouprole EVERYONE
|tip Spread out to avoid multiple people being hit during "Echolocation." |grouprole EVERYONE
|tip At 100 energy, Shriekwing will gain "Blood Shroud" and become stealthed. |grouprole EVERYONE
|tip Anyone coming within 12 yards of Shriekwing during "Blood Shroud" will die instantly. |grouprole EVERYONE
|tip Avoid standing in "Sanguine Ichor" pools on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players hit by "Earsplitting Shriek" will take heavy damage. |grouprole HEALER
|tip Each stack of "Exsanguinated" will reduce healing received by the affected tank by 10%. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat with your offtank when "Exsanguinating Bite" stacks too high. |grouprole TANK
Click Here to Continue |confirm
step
kill Huntsman Altimor##165066 |goto Castle Nathria/3 67.55,49.57
_EVERYONE:_ |grouprole EVERYONE
|tip Altimor will release one gargon at a time until all three are defeated. |grouprole EVERYONE
|tip Defeating the gargon defeats Altimor. |grouprole EVERYONE
|tip Avoid standing between Altimor and the targets marked by "Sinseeker." |grouprole EVERYONE
|tip When players become petrified during Hecutis' "Petrifying Howl," avoid standing within 10 yards of them. |grouprole EVERYONE
|tip Spread out and avoid standing in "Vicious Lunge" areas targeted by Margore. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use crowd control abilities on Shades of Bargast to cause them to take increased damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Spreadshot" will inflict consisted raid-wide damage for the duration of the encounter. |grouprole HEALER
|tip Quickly heal souls created by Bargast's "Rip Soul" to full to stop them from reaching Altimor. |grouprole HEALER
|tip When Hecutis moves, "Crushing Stone" will deal heavy damage to the raid. |grouprole HEALER
|tip Margore's "Jagged Claws" deal heavy physical damage and applies a potent bleed on the current tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Margore's "Jagged Claws" deal heavy physical damage and applies a potent bleed. |grouprole TANK
|tip Move Bargast as needed to avoid allowing him to consume souls. |grouprole TANK
Click Here to Continue |confirm
step
kill Kael'thas Sunstrider##24664 |goto Castle Nathria/2 52.94,74.64
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of pools on the ground. |grouprole EVERYONE
|tip A Shade of Kael'thas will spawn when Kael'thas reaches 45% and 90% health. |grouprole EVERYONE
|tip Avoid standing in front of the Shade of Kael'thas when it reaches 100 energy. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Split damage from "Ember Blast" between several players. |grouprole DAMAGE
|tip Crowd control Soul Infusers when possible. |grouprole DAMAGE
|tip When targeted by "Crimson Flurry," move away from other players. |grouprole DAMAGE
|tip Focus DPS on adds to kill them as quickly as possible. |grouprole DAMAGE
|tip Burn down Soul Infusers immediately when they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When targeted by "Crimson Flurry," move away from other players. |grouprole HEALER
|tip Click Infuser's Orbs to gain a significant increase in your healing ability. |grouprole HEALER
|tip Heal Essence Fonts to full health to cause them to heal Kael'thas. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Soul Infusers have no threat table. |grouprole TANK
|tip Vile Occultists will drop threat after using "Door of Shadows." |grouprole TANK
|tip Swap threat with your offtank to avoid Shade of Kael'Thas's stacking "Burning Remnants" debuff. |grouprole TANK
Click Here to Continue |confirm
step
kill Artificer Xy'mox##166644 |goto Castle Nathria/1 65.36,23.25
_EVERYONE:_ |grouprole EVERYONE
|tip Use wormholes to your advantage to quickly reposition yourself. |grouprole EVERYONE
|tip Avoid standing in the path of "Rift Blast." |grouprole EVERYONE
|tip Run away from "Fleeting Spirits" if you become fixated. |grouprole EVERYONE
|tip Avoid standing within 50 yards of "Seeds of Extinction," which explode after 20 seconds. |grouprole EVERYONE
|tip Seeds can be moved before they explode to create a safe area. |grouprole EVERYONE
|tip Run away from the "Edge of Annihilation" when it draws you in or you will suffer critical damage. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip 2 players will be marked with "Dimensional Tear" which expires after 8 seconds and leaves a wormhole behind. |grouprole DAMAGE
|tip Decide with your group how to place wormholes created by "Dimensional Tear." |grouprole DAMAGE
|tip If any players become "Possessed," DPS them until they are no longer controlled. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip 2 players will be marked with "Dimensional Tear" which expires after 8 seconds and leaves a wormhole behind. |grouprole HEALER
|tip Decide with your group how to place wormholes created by "Dimensional Tear." |grouprole HEALER
|tip "Glyph of Destruction" and "Hyperlight Spark" will require increased raid healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Glyph of Destruction" will inflict significant damage to anyone nearby when it expires. |grouprole TANK
Click Here to Continue |confirm
step
kill Hungering Destroyer##164261 |goto Castle Nathria/3 35.82,34.57
_EVERYONE:_ |grouprole EVERYONE
|tip Run away when "Consume" is cast. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing near other players if affected by "Gluttonous Miasma." |grouprole DAMAGE
|tip "Gluttonous Miasma" will prevent all healing received and deal damage to the player and anyone within 5 yards. |grouprole DAMAGE
|tip Position yourself so other players aren't in the path of "Volatile Injection" if targeted. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing near other players if affected by "Gluttonous Miasma." |grouprole HEALER
|tip "Gluttonous Miasma" will prevent all healing received and deal damage to the player and anyone within 5 yards. |grouprole HEALER
|tip Position yourself so other players aren't in the path of "Volatile Injection" if targeted. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat with your offtank to manage stacks of "Growing Hunger." |grouprole TANK
Click Here to Continue |confirm
step
kill Lady Inerva Darkvein##167517 |goto Castle Nathria/4 36.27,44.30
_EVERYONE:_ |grouprole EVERYONE
|tip Click Anima Containers when they reach 33% or higher and not affected by "Focus Anima." |grouprole EVERYONE
|tip Soak vials before they hit the ground. |grouprole EVERYONE
|tip At 33%+ anima the vials leave pools which should be avoided. |grouprole EVERYONE
|tip At 66%+ anima the vials bounce once and must be soaked twice. |grouprole EVERYONE
|tip When afflicted by "Shared Suffering," cut through each of the orbs with your beams at the same time. |grouprole EVERYONE
|tip At 33%+ anima avoid the beams from the orbs. |grouprole EVERYONE
|tip At 66%+ anima the beams rotate, making them harder to avoid. |grouprole EVERYONE
|tip Move the "Concentrated Anima" debuff near the boss before it expires. |grouprole EVERYONE
|tip At 33%+ anima the boss needs to be moved to the player with the "Concentrated Anima" debuff because the player will be rooted. |grouprole EVERYONE
|tip At 66%+ anima dodge the orbs that spawn with the add after "Concentrated Anima" expires. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip At 33%+ Anima, players affected by "Shared Cognition" will need extra healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat at two stacks of "Warped Desires." |grouprole TANK
|tip At 33%+ Anima, run away from the group before "Warped Desires" expires. |grouprole TANK
|tip Be prepared to pick up the add when "Concentrated Anima" expires. |grouprole TANK
Click Here to Continue |confirm
step
kill Baroness Frieda##166969 |goto Castle Nathria/0 70.14,54.73
kill Castellan Niklaus##166971
kill Lord Stavros##166970
_EVERYONE:_ |grouprole EVERYONE
|tip Determine your kill order before beginning. |grouprole EVERYONE
|tip When each boss reaches 50% health, move to the indicated dance tile and continue to move to the tile indicated until the dance is complete. |grouprole EVERYONE
|tip Any time aside from "Danse Macabre," Stay on the dance floor. |grouprole EVERYONE
|tip Interrupt "Dreadbolt Volley" from Freida. |grouprole EVERYONE
|tip If Frieda is alive with one boss dead, spread out during "Prideful Eruption." |grouprole EVERYONE
|tip If Niklaus is alive with one boss dead, crowd control Dredger Servants and kill them quickly. |grouprole EVERYONE
|tip If paired with another player by "Dark Recital," run to your partner and keep moving to avoid the bad that spawns. |grouprole EVERYONE
|tip If Stavros is alive with one boss dead, move away from dancers during "Waltz of Blood." |grouprole EVERYONE
|tip If Stavros is alive with two bosses dead, find and kill the Dancing Fools that can be killed and sand on their corpse to remain safe. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus down one boss at a time. |grouprole DAMAGE
|tip Burn down Dutiful Attendants quickly. |grouprole DAMAGE
|tip Kill any Veteran Stoneguards as soon as they spawn if Niklaus is alive with two bosses dead. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players targeted by "Drain Essence" will need additional healing. |grouprole HEALER
|tip Dispel debuffs quickly. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip If Frieda is alive with two bosses dead, swap threat after two "Soul Spikes." |grouprole TANK
|tip If Niklaus is alive with two bosses dead, pick up the Veteran Stoneguard. |grouprole TANK
|tip Swap threat at two stacks of "Deulist's Riposte." |grouprole TANK
|tip Position yourself facing away from the raid to tank Stavros. |grouprole TANK
|tip Swap threat with Stavros after two stacks of "Evasive Lunge." |grouprole TANK
Click Here to Continue |confirm
step
kill Sludgefist##174733 |goto Castle Nathria/3 70.23,81.59
_EVERYONE:_ |grouprole EVERYONE
|tip If connected by a chain, move to your partner and stay within 12 yards until it fades. |grouprole EVERYONE
|tip Hide behind a pillar if affected by "Hateful Gaze." |grouprole EVERYONE
|tip Avoid standing in front of Sludgefist during "Hateful Gaze" if not affected. |grouprole EVERYONE
|tip Run at least 20 yards away from Sludgefist to avoid "Destructive Stomp" damage. |grouprole EVERYONE
|tip Ranged players should stay as far away from the boss as possible. |grouprole EVERYONE
|tip Avoid "Falling Rubble" areas targeted on the ground. |grouprole EVERYONE
|tip Avoid standing in "Stonequake" zones on the ground. |grouprole EVERYONE
|tip "Colossal Roar" will knock you back. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Save DPS cooldowns for periods after Sludgefist runs into a pillar. |grouprole DAMAGE
|tip At 20% health Sludgefist enrages, so use any DPS cooldowns available. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players failing to avoid "Destructive Stomp" will take serious to fatal damage. |grouprole HEALER
|tip "Colossal Roar" will deal damage to the entire raid. |grouprole HEALER
|tip At 20% health Sludgefist enrages and causes significantly increased damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stand on top of each other for the duration of the encounter to split "Giant Fists" damage. |grouprole TANK
|tip Keep Sludgefist at least 20 yards away from pillars to avoid them being broken. |grouprole TANK
Click Here to Continue |confirm
step
kill General Grashaal##175233 |goto Castle Nathria/6 26.37,21.93
kill General Kaal##165318
_EVERYONE:_ |grouprole EVERYONE
|tip Stand in "Crystalline Bursts" to remove your bleed if targeted by "Crystalize." |grouprole EVERYONE
|tip Stack on the target that bursts to share damage from "Pulverizing Meteor." |grouprole EVERYONE
|tip Move to the boss' sides and stay at least 8 yards apart if marked by "Wicked Blade." |grouprole EVERYONE
|tip When a boss becomes "Hardened," kill the adds and return the orbs they drop to Prince Renathal. |grouprole EVERYONE
|tip Run to Prince Renathal when he reaches full mana during "Shattering Blast." |grouprole EVERYONE
|tip Run away if targeted by "Reverberating Eruption" and ensure that all other areas of "Unstable Ground" are soaked. |grouprole EVERYONE
|tip Don't stand in patches left behind by "Seismic Upheaval." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip When the Stone Legion Goloath casts "Soultaint Effigy," nuke it down. |grouprole DAMAGE
|tip DPS both bosses down together to avoid extra damage from "Soldier's Oath." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel "Heart Rend" and health through the debuff afterwards. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat to avoid excess "Stone Fist" stacks. |grouprole TANK
Click Here to Continue |confirm
step
kill Sire Denathrius##168938 |goto Castle Nathria/5 49.24,53.55
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from players when affected by "Feeding Time." |grouprole EVERYONE
|tip Move out of the frontal cone "Ravage" attack and avoid standing in the "Desolation" area left behind. |grouprole EVERYONE
|tip Until 70% health, split into two groups and alternate standing in "Cleansing Pain" areas. |grouprole EVERYONE
|tip Ensure you have 3 stacks or less of "Burden of Sin" upon reaching 70% health. |grouprole EVERYONE
|tip At 70% health, run to the center of the room. |grouprole EVERYONE
|tip Run through the mirrior during "Hand of Destruction." |grouprole EVERYONE
|tip Run away from other players if targeted by "Impale" and avoid standing in a direct line if not affected by it. |grouprole EVERYONE
|tip Dodge "Massacre" indication lines. |grouprole EVERYONE
|tip Below 40% health, stand near the center. |grouprole EVERYONE
|tip Avoid standing near other people if debuffed with "Fatal Finesse." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Echoes of Sin immediately. |grouprole DAMAGE
|tip Kill Crimson Cabalists immediately. |grouprole DAMAGE
|tip Burn the boss down quickly at the 40% mark. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Below 40% health, raid damage will become increasingly severe. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Position "Wracking Pain" so it hits adds and not raid members. |grouprole TANK
|tip Swap threat after each "Wracking Pain" cast. |grouprole TANK
|tip Pick up and tank Remornia near the boss. |grouprole TANK
|tip Move the boss near the mirror for "Hand of Destruction." |grouprole TANK
|tip Below 40% health, tank the boss near the edges. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Castle Nathria" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Raids\\Sanctum of Domination",{
mapid=1998,
achieveid={15126},
patch='90100',
condition_suggested=function() return level >= 60 end,
keywords={"Shadowlands"},
author="support@zygorguides.com",
description="\nTo complete this raid, you will need to kill the following bosses:\n\nThe Tarragrue\nEye of the Jailer"..
"\nThe Nine\nRemnant of Ner'zhul\nSoulrender Dormazain\nPainsmith Raznal\nGuardian of the First Ones\n"..
"Fatescribe Roh-Kalo\nKel'Thuzad\nSylvanas Windrunner",
},[[
step
kill The Tarragrue##163538
_EVERYONE:_ |grouprole EVERYONE
|tip The four orbs on the platform before fighting the boss allow all players to choose one anima power. |grouprole EVERYONE
|tip Anima Powers can be replaced by players with an available Anima Siphon. |grouprole EVERYONE
|tip You can pick up another Anima Power after siphoning off your current one. |grouprole EVERYONE
|tip The "Ever-Beating Heart" Anima Power and player cooldowns can mitigate the "Chains Of Eternity" boss ability. |grouprole EVERYONE
|tip The "Disembodied Mystic Hands" Anima Power has a chance to steal the "Fury of the Ages" enrage buff from the boss. |grouprole EVERYONE
|tip The "An Oddly Intangible Key" can virtually ignore "Hungering Mist." |grouprole EVERYONE
|tip Move away and wait for a dispel if you get the "Unshakeable Dread" debuff from "Predator's Howl." |grouprole EVERYONE
|tip If you take the "Lumbering Form" Anima Power do not group with other players during "Hungering Mist". |grouprole EVERYONE
|tip During "Hungering Mist" keep moving to the safe areas of floor that are not affected by shadows. |grouprole EVERYONE
|tip Use personal cooldowns during "The Desparate Hour." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use DPS cooldowns during "The Desparate Hour" at 10% health. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel "Unshakeable Dread" as soon as possible. |grouprole HEALER
|tip Focus heal players that get "Grasp of Death." |grouprole HEALER
|tip Save healing cooldowns for "The Desparate Hour" at 10% health. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Tank swap after each "Overpower." |grouprole TANK
|tip "Fury of the Ages" gives the boss 25% damage and haste buff. |grouprole TANK
|tip During "The Desparate Hour" at 10% health, use all available defensive cooldowns. |grouprole TANK
Click Here to Continue |confirm
step
kill Eye of the Jailer##175725
_EVERYONE:_ |grouprole EVERYONE
|tip At 75%, 50%, and 25% health, 2 Deathseeker Eyes appear that need to be spread 30 yards apart and die at the same time. |grouprole EVERYONE
|tip Run out of white swirls on the ground. |grouprole EVERYONE
|tip If you're hit by "Fracture Soul," run over the 3 Soul Shards quickly. |grouprole EVERYONE
|tip Carefully stack the black pools of "Jailer's Misery," dropped from expiring "Spreading Misery." |grouprole EVERYONE
|tip Move away from others with "Desolation Beam." |grouprole EVERYONE
|tip The raid must "Grapple" from the tip of one platform to the other to avoid the "Annihilating Glare" beam. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip The Deathseeker Eyes need to die together to avoid raid-wide damage from "Suffering." |grouprole DAMAGE
|tip Cleave down Stygian Abductors quickly. |grouprole DAMAGE
|tip Use all DPS cooldowns during the final phase. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Put mitigation on the tank for "Deathlink" to reduce raid damage. |grouprole HEALER
|tip Dispel "Slothful Corruption" from ranged players first, then melee. |grouprole HEALER
|tip During the last phase, "Immediate Extermination" will eventually make healing impossible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Mitigate "Deathlink" to prevent raid-wide damage. |grouprole TANK
|tip Tank the 2 Deathseeker Eyes at least 30 yards apart. They need to die at the same time. |grouprole TANK
|tip Pick up Stygian Abductors when they fall on the platform. |grouprole TANK
|tip Tank swap to avoid a stacking bleed from "Assailing Lance." |grouprole TANK
Click Here to Continue |confirm
step
kill The Nine
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from Kyra after "Wings of Rage." |grouprole EVERYONE
|tip Stack inside Signe's bubble for "Reverberatng Refrain." |grouprole EVERYONE
|tip All players soak Arthuria's "Crushing Gaze." |grouprole EVERYONE
|tip Avoid slash attacks during Agatha's "Eternal Blade." |grouprole EVERYONE
|tip One player soak each purple pool during Aradne's "Falling Strike" |grouprole EVERYONE
|tip Spread out at least 5 yards apart for Brynja's "Mournful Dirge." |grouprole EVERYONE
|tip Run to the edge away from raid and use personal mitigation if targeted by Daschla's "Mighty Impact." |grouprole EVERYONE
|tip Select one person to collect dispeled "Fragments of Destiny" who will drop the "Shard of Destiny" at the edge of the platform. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Signe's "Song of Dissolution" and "Soulful Blast." |grouprole DAMAGE
|tip Interrupt and kill Formless Masses. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal raid through "Resentment" casts. |grouprole HEALER
|tip "Pierce Soul" reduces healing on the tank. |grouprole HEALER
|tip Focus healing on the target of "Fragments of Destiny" and "Shard of Destiny." |grouprole HEALER
|tip Focus healing on the target of Daschla's "Mighty Impact." |grouprole HEALER
|tip You may need to use a healing cooldown for Arthuria's "Crushing Gaze." |grouprole HEALER
|tip Dispel "Fragments of Destiny" from players on to a cooperating single player. |grouprole HEALER
|tip The cooperating player must be closest to the affected players when you dispel them. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap at 3 stacks of "Unending Strike." |grouprole TANK
|tip Interrupt Signe's "Song of Dissolution" and "Soulful Blast." |grouprole TANK
|tip Interrupt and kill Formless Masses. |grouprole TANK
|tip Move all bosses out of Annhylde's "Bright Aegis" shield. |grouprole TANK
|tip Tank swap "Pierce Soul" at 3 stacks. |grouprole TANK
Click Here to Continue |confirm
step
kill Remnant of Ner'zhul##175729
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out boss's line-cast of "Suffering" on the tank. |grouprole EVERYONE
|tip A player must throw the "Orb of Torment" off the edge of the platform as quickly as possible once it is dead. |grouprole EVERYONE
|tip The entire raid will be knocked back by the dispeling of "Malevolence." |grouprole EVERYONE
|tip Be aware of the timing of "Malevolence" when taking the "Orbs of Torment" to the edge. |grouprole EVERYONE
|tip Avoid "Grasp of Malice" spokes and "Aura of Spite" swirls. |grouprole EVERYONE
|tip Use defensive cooldowns for "Shatter" at 80%, 60%, and 30% health. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Take the "Malevolence" debuff to the edge of the platform away from the raid and face the edge before receiving a dispel. |grouprole DAMAGE
|tip The "Orb of Torment" has a shield reducing all damage by 99% until it is first struck by "Suffering." |grouprole DAMAGE
|tip Step out of "Suffering" line-casts directed at the orb by the tank. |grouprole DAMAGE
|tip Kill the "Orb of Torment" quickly and throw it off the edge. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The boss's "Aura of Spite" does low raid-wide damage every 3 seconds. |grouprole HEALER
|tip Take the "Malevolence" debuff to the edge of the platform away from the raid and face the edge before receiving a dispel. |grouprole HEALER
|tip "Torment" will cause heavy raid damage while the "Orb of Torment" is up. |grouprole HEALER
|tip Heal the person carrying the "Orb of Torment" to the edge. |grouprole HEALER
|tip Stagger dispels of "Malevolence" so all players can be dispeled when they are at and facing the edge. |grouprole HEALER
|tip Use cooldowns for "Shatter" casts at 80%, 60%, and 30% boss health. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Direct the boss's "Suffering" casts at the "Orb of Torment" to remove its shield and increase damage done to it. |grouprole TANK
|tip Tank swap after each cast of "Suffering." |grouprole TANK
Click Here to Continue |confirm
step
kill Soulrender Dormazain##175727
_EVERYONE:_ |grouprole EVERYONE
|tip Run out of AoE damage during "Torment" and "Tormented Eruptions." |grouprole EVERYONE
|tip CC, interrupt, and kill Mawsworn Agonizers before reaching Garrosh. |grouprole EVERYONE
|tip If you are branded with "Torment," standing near Mawsworn Agonizers and players causes them to take 50% more damage. |grouprole EVERYONE
|tip Pick up Garrosh's "Warmonger Shackles" and carry them away one at a time to stagger the raid damage when they break. |grouprole EVERYONE
|tip All "Warmonger Shackles" must be broken to interrupt "Hellscream" cast. |grouprole EVERYONE
|tip Do not allow "Hellscream" to finish casting. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip There will be heavy raid damage when the "Warmonger Shackles" break. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Tank swap after every "Ruinblade." |grouprole TANK
Click Here to Continue |confirm
step
kill Painsmith Raznal##176523
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid spikes from "Reverberating Hammer." |grouprole EVERYONE
|tip Stay away from raid when affected by = "Shadowsteel Chains." |grouprole EVERYONE
|tip Mark and kill one of the "Spiked Balls" that move across the platform. |grouprole EVERYONE
|tip Players with "Shadowsteel Chains" debuff should go through one at a time after the raid has gone through the gap. |grouprole EVERYONE
|tip At 70% and 40% the boss leaps away, and you must kill adds and dodge spikes and swirls. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Mark and kill one of the "Spiked Balls" that move across the platform. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Use damage mitigation for "Reverberating Hammer" and tank swap after to drop the debuff. |grouprole TANK
|tip Take the debuff from "Reverberating Hammer" to the corner of the platform away from the raid to control the movement of the spikes. |grouprole TANK
Click Here to Continue |confirm
step
kill Guardian of the First Ones##175731
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from the raid until "Threat Neutralization" expires. |grouprole EVERYONE
|tip Move out of "Disintigration" line-casts. |grouprole EVERYONE
|tip Stay away from the tank during "Sunder" casts |grouprole EVERYONE
|tip Stay away from the Sentries that will silence and pacify players beneath them. |grouprole EVERYONE
|tip Stack inside the circle of "Radient Energy" around the Energy Core while the boss is absorbing energy. |grouprole EVERYONE
|tip Run at least 15 yards away from the Energy Core's "Meltdown." |grouprole EVERYONE
|tip Kill the boss before the 3 Energy Cores are used up, or the boss will enrage. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Each time the boss casts "Purging Protocol," the raid-wide AoE damage from it increases by 100%. |grouprole HEALER
|tip The raid and tank will take heavy damage during "Obliterate," "Raidant Energy" around the Energy Core, and "Purging Protocol." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Tank swap after each "Sunder." |grouprole TANK
|tip When the boss gets to 0 energy, he will begin casting "Purging Protocol" that will cause raid-wide damage. |grouprole TANK
|tip Move the boss into a circle near an Energy Core to recharge him. |grouprole TANK
|tip Allow the boss to cast "Purging Protocol" at least once before taking him to the Energy Core to kill any active Sentries. |grouprole TANK
Click Here to Continue |confirm
step
kill Fatescribe Roh-Kalo##175730
_EVERYONE:_ |grouprole EVERYONE
|tip Stay away from the tank when targeted by the "Shade of Destiny." |grouprole EVERYONE
|tip Spread out 20 yards away from the raid and use personal cooldowns for "Call of Eternity." |grouprole EVERYONE
|tip Avoid "Echo of Eternity" orbs and "Fated Conjunction" blasts. |grouprole EVERYONE
|tip In phase 2 the boss jumps to the middle and knocks everyone back, taking 99% reduced damage. |grouprole EVERYONE
|tip Runes that light up need to be rotated to the circle that appears. |grouprole EVERYONE
|tip 1 (clockwise) or 2 (counter-clockwise) players stand on the rune to rotate it to the circle within about 50 seconds. |grouprole EVERYONE
|tip AoE down "Fatespawn Anomaly" adds quickly. |grouprole EVERYONE
|tip Avoid or immunity-soak "Fate Fragments" orbs. |grouprole EVERYONE
|tip After the the last phase 2 period, phase 3 begins which includes all of the mechanics of both phases. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip CC and kill the "Shade of Destiny" as quickly as possible. |grouprole DAMAGE
|tip AoE the "Fatespawn Anomaly" adds in phase 2 and 3 as quickly as possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The tank will take significant damage while the "Shade of Destiny" is alive. |grouprole HEALER
|tip The explosion of "Echoes of Eternity" will deal a blast of raid-wide shadow damage. |grouprole HEALER
|tip Players with "Twist of Fate" will take ticking shadow damage for 6 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Tank swap immediately after receiving the "Invoke Destiny" debuff. |grouprole TANK
|tip Run away from the raid and use a mitigation cooldown for the "Shade of Destiny" eruption. |grouprole TANK
|tip Run back to the raid away from the "Shade of Destiny" add. |grouprole TANK
|tip Pick up "Fatespawn Anomaly" adds. |grouprole TANK
Click Here to Continue |confirm
step
kill Kel'Thuzad##175559
_EVERYONE:_ |grouprole EVERYONE
|tip Stay away from growing ice patches on the ground. |grouprole EVERYONE
|tip When targeted by "Glacial Wrath," move away from other players. |grouprole EVERYONE
|tip If targeted with "Oblivion's Echo" move away from other players, and within 10 yards of a Soul Shard to silence "Piercing Wail." |grouprole EVERYONE
|tip A Frostbound Devoted is spawned when "Oblivion's Echo" expires. |grouprole EVERYONE
|tip Stack with the player targeted by "Frost Blast" to split the damage dealt. |grouprole EVERYONE
|tip In phase 1, after reaching 50% mana, Kel'Thuzad casts "Dark Evocation," resurrecting all Frostbound Devoted and dead players as hostiles. |grouprole EVERYONE
|tip In phase 2, the health of the Remnant of Kel'Thuzad needs to be brought to 66%, 33%, and 0% health within 45 seconds each. |grouprole EVERYONE
|tip Players must leave the Phylactery at the above health breakpoints briefly to avoid the Remnant's "Undying Wrath" cast. |grouprole EVERYONE
|tip Avoid "Shadow Fissure" locations and "Glacial Winds" that look like tornadoes. |grouprole EVERYONE
|tip Don't stand in front of the Unstoppable Abomination when it turns to cast "Demolish." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip CC and kill Frostbound Devoted adds before they reach targeted players. |grouprole DAMAGE
|tip Kill Soul Shards quickly when they appear. |grouprole DAMAGE
|tip Defeat all enemies within the Phylactery before they receive "Necrotic Empowerment" when Kel'Thuzad is revived. |grouprole DAMAGE
|tip Enter the Phylactery and kill the Remnant of Kel'Thuzad quickly in phase 2 before "Vengeful Destruction" is cast. |grouprole DAMAGE
|tip Focus damage on the Unstoppable Abomination, the Soul Reaver, and all Frostbound Devoted. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Damage will increase over the course of the fight. |grouprole HEALER
|tip Dispel "Frozen Binds" stacking with a "Frozen Blast" player. |grouprole HEALER
|tip "Sinister Miasma" continually stacks damage on players within the Phylactery. |grouprole HEALER
|tip Tanks will take heavy damage from the Unstoppable Abomination. |grouprole HEALER
|tip Each successful cast of Soul Reaver's "Banshee's Cry" will increase the damage of the next cast by 25%. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Tank swap after "Soul Fracture." |grouprole TANK
|tip Run through defeated "Soul Shards" to remove stacks of "Soul Exhaustion." |grouprole TANK
Click Here to Continue |confirm
step
kill Sylvanas Windrunner##175732
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from the raid if targeted by "Wailing Arrow." |grouprole EVERYONE
|tip Drop "Barbed Arrow" bleed stacks by getting dragged by "Domination Chains." |grouprole EVERYONE
|tip Avoid "Rive," "Ruin," and "Raze" areas which cause fatal damage. |grouprole EVERYONE
|tip Avoid "Veil of Darkness" and "Ruin." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip While Sylvannas is under the effects of "Windrunner," her hit box will remain stationary and spells and abilities will strike her in the location where she cast "Windrunner." |grouprole DAMAGE
|tip Kill "Domination Chain" arrows quickly. |grouprole DAMAGE
|tip Defeat all forces of the Maw that enter the battle. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Focus heal players with "Banshee's Mark." |grouprole HEALER
|tip "Ranger's Heartseeker" and "Banshee's Heartseeker" do high damage to the tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Tank swap at "Wailing Arrow" to allow targeted tank to drop the cast away from the raid. |grouprole TANK
|tip Sylvannas will only cast "Ranger Shot" if the tank moves out of melee range. |grouprole TANK
|tip A cooldown may be necessary for "Ranger's Heartseeker" and "Banshee's Heartseeker." |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Sanctum of Domination" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Raids\\Sepulcher of the First Ones",{
patch='90200',
condition_suggested=function() return level >= 60 end,
keywords={"Shadowlands"},
author="support@zygorguides.com",
description="\nTo complete this raid, you will need to kill the following bosses:\n\nVigilant Guardian\n"..
"Skolex, the Insatiable Ravener\nArtificer Xy'mox\nDausegne, the Fallen Oracle\nPrototype Pantheon"..
"\nLihuvim, Principal Arcitect\nHalondrus the Reclaimer\nAnduin Wrynn\nLords of Dread\n"..
"Rygelon\nThe Jailer",
},[[
step
label "Kill_Vigilant_Guardian"
kill Vigilant Guardian##180773 |goto Sepulcher of the First Ones/6 53.29,51.90
_EVERYONE:_ |grouprole EVERYONE
|tip Phase 2 occurs at 40% health and phase 3 at 15% health. |grouprole EVERYONE
|tip When "Exposed Core" is cast by Vigilant Guardian, run under the shield from Automated Defense Matrixes. |grouprole EVERYONE
|tip If you get the "Matter Dissolution" debuff during phase 2, run away from other players. |grouprole EVERYONE
|tip Use Bloodlust/Heroism and cooldowns as soon as phase 3 starts. |grouprole EVERYONE
|tip Stay loosely spread out and dodge hexagons around the room. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip During phase 1, kill adds quickly to spawn the 3 Automated Defense Matrixes. |grouprole DAMAGE
|tip Pick up bombs dropped by adds and run them to the boss, using the extra action button on-screen to use them. |grouprole DAMAGE
|tip Stack behind the boss during phase 2 and 3. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Tanks will take heavy damage from adds and "Pneumatic Impact" casts. |grouprole HEALER
|tip Stack behind the boss during phase 2 and 3. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip During phase 2, face the boss away from the group and swap threat after every "Pneumatic Impact" cast. |grouprole TANK
|tip "Dissonance" deals heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
label "Kill_Skolex"
kill Skolex##183937 |goto Sepulcher of the First Ones/0 14.34,69.54
_EVERYONE:_ |grouprole EVERYONE
|tip "Ephemera Dust" is a stacking DoT that applies to the entire raid throughout the fight. |grouprole EVERYONE
|tip It can be reset by having the entire raid stack away from the boss, causing it to burrow and knock everyone back, removing the DoT. |grouprole EVERYONE
|tip Each time this occurs, the boss gains 5% increased damage permanently. |grouprole EVERYONE
|tip Move away from the front of Skolex when a random player is targeted for its frontal cone attack. |grouprole EVERYONE
|tip Tank attack combinations and frontal attacks alternate. |grouprole EVERYONE
|tip Force Skolex to burrow after two each of tank attacks and cone attacks. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Dodge swirling blue patches on the ground. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dodge swirling blue patches on the ground. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Skolex will not move unless it burrows. |grouprole TANK
|tip Tanks need to stack together to share melee damage. |grouprole TANK
|tip You should split up when Skolex reaches 100 energy. |grouprole TANK
|tip During this time, threat swap so you never take a cast of "Riftmaw" or "Rend" twice. |grouprole TANK
Click Here to Continue |confirm |or
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Vigilant_Guardian" |or
step
label "Kill_Artificer_Xy'mox"
kill Artificer Xy'mox##166644 |goto Sepulcher of the First Ones/0 39.54,44.31
_EVERYONE:_ |grouprole EVERYONE
|tip Reinforcements will be called at 75% and 50% health. |grouprole EVERYONE
|tip Avoid running through "Genesis Rings" on the ground. |grouprole EVERYONE
|tip Wormholes left by "Dimensional Tear" will allow you to travel to their connecting points. |grouprole EVERYONE
|tip "Glyph of Relocation" will pull the entire raid to the marked tank. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from players when debuffed with "Dimensional Tear." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Move away from players when debuffed with "Dimensional Tear." |grouprole HEALER
|tip Anyone passing through "Genesis Rings" will need heavy healing. |grouprole HEALER
|tip While adds are up, the entire raid will take increasing damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Position Xy'mox appropriately to keep it out of damaging areas on the ground. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Skolex" |or
step
label "Kill_Halondrus"
kill Halondrus##184915 |goto Sepulcher of the First Ones/0 44.25,77.41
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out to avoid overlapping "Seismic Tremors" damage. |grouprole EVERYONE
|tip Run through white motes of ephemera that spawn from impact points quickly before they reach Halondrus. |grouprole EVERYONE
|tip At maximum energy, Halodrus will pull all motes harder. |grouprole EVERYONE
|tip At 80% and 50% health a new location is chosen by Halondrus. |grouprole EVERYONE
|tip Spread out when targeted by missiles and quickly move out of the earthquake left behind. |grouprole EVERYONE
|tip At 50%, the boss will move and start using abilities faster. |grouprole EVERYONE
|tip Use Bloodlust/Heroism at 50%. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Burn through the shield that occurs at 100 energy quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players running through motes will take moderate damage. |grouprole HEALER
|tip Motes that reach Halondrus will erupt and deal heavy initial and DoT damage to the entire raid. |grouprole HEALER
|tip At 100 energy the raid will take heavy AoE damage until the shield is broken. |grouprole HEALER
|tip Dispel players when possible. |grouprole HEALER
|tip As the boss moves to a new location, the raid will take heavy damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Lightshatter Beam" deals heavy damage and leaves a debuff that requires swapping threat. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Artificer_Xy'mox" |or
step
label "Kill_Dausegne"
kill Dausegne##181224 |goto Sepulcher of the First Ones/1 52.17,43.08
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of dark spots and targeted areas on the ground. |grouprole EVERYONE
|tip Interrupt Dominion Cores on cooldown. |grouprole EVERYONE
|tip Players will need to stand in line with the player targeted by "Staggering Barrage" to split the damage. |grouprole EVERYONE
|tip Move out of the dark cone-shaped area when it occurs. |grouprole EVERYONE
|tip One dark ring will radiate from a reservoir after each barrier cast. |grouprole EVERYONE
|tip Each barrior cast adds an additional ring cast, up to a maximum of four rings later in the fight. |grouprole EVERYONE
|tip Avoid passing through the dark ring that spreads across the platform while the "Disintegration Halo" debuff is still active. |grouprole EVERYONE
|tip At 0% mana, the raid should stack up for healing and burn through the barrier. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Burn through the barrier as quickly as possible. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The entire raid takes heavy damage during "Inevitable Dominion." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up Dominion Cores quickly. |grouprole TANK
|tip Swap threat on the boss whenever your "Infused Strikes" debuff expires. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Halondrus" |or
step
label "Kill_Prototypes"
Kill the Prototype bosses |goto Sepulcher of the First Ones/2 32.47,70.12
_EVERYONE:_ |grouprole EVERYONE
|tip Phase 2 starts at 50% and phase 3 at 50% again. |grouprole EVERYONE
|tip Avoid standing in the pool in the middle of the room or swirling areas on the ground. |grouprole EVERYONE
|tip Interrupt "Gloom Bolt" from War on cooldown. |grouprole EVERYONE
|tip When debuffed by swirling black and green, quickly run to a white bubble to be dispelled. |grouprole EVERYONE
|tip Do not stand in white bubbles unless you are being dispelled. |grouprole EVERYONE
|tip Move against Duty's wind to avoid being pushed off. |grouprole EVERYONE
|tip During phase 2 and 3, avoid stampedes of blue animals. |grouprole EVERYONE
|tip Avoid blue tornados. |grouprole EVERYONE
|tip Run away and spread out from the bosses when pulled in, and dodge the red projectiles that shoot from you and others after. |grouprole EVERYONE
|tip Use all cooldowns in phase 3 and kill all 4 bosses, interrupting War and Renewal on cooldown. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill adds quickly when they spawn. |grouprole DAMAGE
|tip Interrupt "Anima Bolt" from Renewal on cooldown. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal giant blue Anima Seeds to full one at a time to maintain he healing buff. |grouprole HEALER
|tip Avoid healing a new one to full until your healing buff is nearly expired. |grouprole HEALER
|tip Anima Seeds that reach 0 health explode and damage the entire raid. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip During the first phase, tank War and Duty together. |grouprole TANK
|tip Swap targets when "Humble Strikes" wears off. |grouprole TANK
|tip During phase 2, tank near the middle of the platform. |grouprole TANK
|tip Face the mobs away from the raid and swap targets when "Wracking Pain" debuffs fall off. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Dausegne" |or
step
label "Kill_Lihuvim"
kill Lihuvim##182169 |goto Sepulcher of the First Ones/2 64.27,22.26
_EVERYONE:_ |grouprole EVERYONE
|tip When targeted by "Unstable Mote," move them to a designated location and stay away after it appears. |grouprole EVERYONE
|tip If targeted by "Desconstructing Energy," move near motes and wait for it to explode and destroy them. |grouprole EVERYONE
|tip "Cosmic Shift" will knock everyone back a short distance. |grouprole EVERYONE
|tip Don't stand in the cone from "Protoform Cascade." |grouprole EVERYONE
|tip At 100% energy everyone needs to move to a bay being channeled and kill the Acuisitions Automa quickly. |grouprole EVERYONE
|tip Any Automa not killed during the channeling phase will join the fight. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Acquisitions Automa first, then others if time permits. |grouprole DAMAGE
|tip Kill leftover automa quickly before returning to the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Assign healers to each automa bay around the room during the channel to avoid being out of healing range. |grouprole HEALER
|tip Players not near an automa while they are channeling will take heavy damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat if debuffed after "Deconstructing Blast." |grouprole TANK
|tip Position the boss facing away from the raid. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Prototypes" |or
step
label "Kill_Anduin_Wrynn"
kill Anduin Wrynn##181954 |goto Sepulcher of the First Ones/5 40.58,51.80
_EVERYONE:_ |grouprole EVERYONE
|tip Split the raid in half so that half the raid takes "Kingsmourne Hungers" frontal cone casts at one time. |grouprole EVERYONE
|tip When circles appear around people in the shadow realm, spread out and run to a player with the opposite debuff. |grouprole EVERYONE
|tip When marked with an arrow, run away from the raid and dodge the boomerang. |grouprole EVERYONE
|tip Stack inside bubbles and heal everyone inside quickly until the bubble disappears. |grouprole EVERYONE
|tip During intermissions, use cooldowns and stack the Fallen King on top of souls to cleave off of it. |grouprole EVERYONE
|tip The second intermission has a wall of enemies that move around the platform that must be dodged. |grouprole EVERYONE
|tip Avoid hitting adds with the boomerang in phase 2. |grouprole EVERYONE
|tip During phase 3, have a few players debuffed by "Hopelessness" run into the bubble at a time until all of the debuffs are cleared. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill hostile adds quickly in the shadow realm. |grouprole DAMAGE
|tip During phase 2, CC/interrupt/kill adds that spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal friendly adds quickly in the shadow realm. |grouprole HEALER
|tip "Hopebreaker" does heavy damage to the entire raid. |grouprole HEALER
|tip Heal players with the "Domination Word: Pain" debuff. |grouprole HEALER
|tip During phase 3, clearing "Hopelessness" debuffs applies a stacking DoT to the entire raid. |grouprole HEALER
|tip "Empowered Hopebreaker" in phase 3 does heavy damage and may require healing cooldowns. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip While in the shadow realm, pick up Anduins Despair quickly. |grouprole TANK
|tip Periodically swap threat to reset Anduin's speed buff. |grouprole TANK
|tip Use damage reducing cooldowns for "Empowered Hopebreaker" as needed in phase 3. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Lihuvim" |or
step
label "Kill_Lords_of_Dread" |goto Sepulcher of the First Ones/4 59.67,47.23
Defeat the Lords of Dread bosses
_EVERYONE:_ |grouprole EVERYONE
|tip When Kin'tessa reaches 100 energy, find and defeat Kin'tessa and Mal'Ganis' disguises quickly during "Infiltration of Dread." |grouprole EVERYONE
|tip During "Paranoia," standing near others can reveal flaws in the disguise. |grouprole EVERYONE
|tip Stay spread out at least 5 yards to avoid chaining "Cloud of Carrion." |grouprole EVERYONE
|tip When debuffed with "Cloud of Carrion," move near another player no affected by "Biting Wounds" to transfer it to them. |grouprole EVERYONE
|tip "Bursting Dread" removes all cases of "Cloud of Carrion" it hits. |grouprole EVERYONE
|tip If debuffed with "Fearful Trepidation," group with players affected by "Cloud of Carrion" so the insects are driven away. |grouprole EVERYONE
|tip Avoid "Slumber Cloud" areas. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip During "Swarm of Decay" and "Swarm of Darkness," AoE damage is more effective. |grouprole DAMAGE
|tip Kill them at the same time to avoid "Rampaging Swarm" damage wiping the raid. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip During swarms, the raid will take heavy damage. |grouprole HEALER
|tip Players debuffed with "Cloud of Carrion" will take increasing damage until it is removed. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Leeching Claws" hits and debuffs anyone in a frontal arc. |grouprole TANK
|tip Swap threat after each "Opened Veins" debuff. |grouprole TANK
|tip "Leeching Claws" heals Mal'Ganis for 10% if you are already debuffed with "Opened Veins." |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Anduin_Wrynn" |or
step
label "Kill_Rygelon"
kill Rygelon##182777 |goto Sepulcher of the First Ones/4 37.55,49.49
_EVERYONE:_ |grouprole EVERYONE
|tip At 100 energy, Rygelon will cast "Massive Bang," killing anyone outside of the singularity. |grouprole EVERYONE
|tip Each raid member should step into an "Unstable Matter Field" zone left behind by unstable matter to survive the bang. |grouprole EVERYONE
|tip If debuffed with "Dark Eclipse," run into the area left by a dying Collapsing Quasar. |grouprole EVERYONE
|tip Avoid lines on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Destroy "Unstable Matter" quickly before "Massive Bang" to create safe zones. |grouprole DAMAGE
|tip Kill "Collapsing Quasars" quickly before they reach the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players inside the singularity take increasing radiation damage. |grouprole HEALER
|tip Players affected by "Dark Eclipse" will take heavy shadow damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat before "Corrupted Strikes" damage becomes too high. |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Lords_of_Dread" |or
step
kill The Jailer##185421 |goto Sepulcher of the First Ones/3 50.37,47.44
_EVERYONE:_ |grouprole EVERYONE
|tip Standing in LoS of "Relentless Domination" will permanently mind control you. |grouprole EVERYONE
|tip Avoid standing in unholy areas on the ground. |grouprole EVERYONE
|tip If chained to another player, run at least 30 yards apart. |grouprole EVERYONE
|tip Stay spread out to avoid chaining "Torment" damage. |grouprole EVERYONE
|tip During "Martyrdom," at least 5 players need to split damage from "Misery." |grouprole EVERYONE
|tip During phase 1, run away when pulled in by chains. |grouprole EVERYONE
|tip If debuffed with "Rune of Damnation" during phase 1, try to quickly run into a pylon conduit. |grouprole EVERYONE
|tip If debuffed with "Rune of Compulsion" during phase 2, take damage until the shield is broken or you will be compelled off the platform. |grouprole EVERYONE
|tip If debuffed with "Rune of Domination" during phase 3, stacking with players will split the damage shield granted, which must be removed by damage. |grouprole EVERYONE
|tip Naturally expiring damage shields will mind control the player affected. |grouprole EVERYONE
|tip Move away from impact areas on the ground. |grouprole EVERYONE
|tip During phase 3, split damage from "Desolation" to save Azeroth. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill any dominated players quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Chains breaking will cause shadow damage to the entire raid. |grouprole HEALER
|tip "Misery" and "Rune of Domination" cause heavy damage to affected players. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Aim "Shattering Blast" towards raised pylons. |grouprole TANK
|tip Swap threat when afflicted with "Chains of Anguish." |grouprole TANK
Click Here to Continue |confirm
_Or_
Click Here to See the Previous Boss |confirm |next "Kill_Rygelon" |or
step
_Congratulations!_
You Completed the "Sepulcher of the First Ones" Raid.
]])
