local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PoiRareLEG") then return end
ZGV.Poi.Sets.PoiRareLEG={
{
rare=[[Admiral Rel'var]],
level=110,
spot="Antoran Wastes/0 73.55,72.06",
currency="18 VA",
quest=48817,
steps=[[
step
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.73,52.45 < 20 |only if ditto
Follow the path up |goto 72.95,54.41 < 15 |only if ditto
Follow the path up |goto 73.22,56.47 < 15 |only if ditto
Follow the path |goto 74.56,61.72 < 20 |only if ditto
Follow the path |goto 73.66,64.02 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 70.29,70.96 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 71.38,66.00 < 20 |only if ditto
Follow the path |goto 71.23,62.90 < 15 |only if ditto
Follow the path up |goto 72.64,63.30 < 15 |only if ditto
Follow the path |goto 74.48,67.74 < 20 |only if walking
kill Admiral Rel'var##127090
|tip Don't stand in front of Earthshattering Slash.
|tip During Enrage, Rel'var's damage will be significantly increased. Use a defensive cooldown.
Defeat Admiral Rel'var |q 48817 |goto Antoran Wastes/0 73.55,72.06 |future
]],
},
{
rare=[[All-Seer Xanarian]],
level=110,
spot="Antoran Wastes/0 76.16,56.11",
currency="16 VA",
quest=48818,
steps=[[
step
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.73,52.45 < 20 |only if walking
Follow the path up |goto 72.95,54.41 < 15 |only if walking
Follow the path up |goto 73.22,56.47 < 15 |only if walking
Follow the path |goto 73.85,57.79 < 15 |only if walking
kill All-Seer Xanarian##127096
|tip The debuff "Prophecy of Calamity" will inflict heavy shadow damage after 12 seconds.
|tip Blast Wave will deal fire damage in a small radius.
Defeat All-Seer Xanarian |q 48818 |goto Antoran Wastes/0 76.16,56.11 |future
]],
},
{
rare=[[Blistermaw]],
level=110,
spot="Antoran Wastes/0 61.81,36.93",
item=152905,
quest=49183,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.20,36.61 < 15 |only if ditto
Follow the path |goto 67.46,38.59 < 15 |only if ditto
Follow the path |goto 64.53,38.44 < 15 |only if ditto
Follow the path down |goto 62.88,37.25 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 63.88,28.92 < 15 |only if ditto
Follow the path |goto 62.59,31.73 < 15 |only if ditto
Follow the path |goto 62.88,37.25 < 15 |only if ditto
kill Blistermaw##122958
|tip Don't stand in front of Blistermaw during Blistering Wave.
Defeat Blistermaw |q 49183 |goto Antoran Wastes/0 61.81,36.93 |future
]],
},
{
rare=[[Chief Alchemist Munculus]],
level=110,
spot="Antoran Wastes/0 61.40,20.85",
currency="10 VA",
quest=48865,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto 59.41,26.31 < 15 |only if walking
Enter the building |goto 60.98,22.58 < 10 |walk
kill Chief Alchemist Munculus##127376
|tip Move out of areas targeted on the ground. He will throw imps that inflict various debuffs.
Defeat Chief Alchemist Munculus |q 48865 |goto Antoran Wastes/0 61.40,20.85 |future
]],
},
{
rare=[[Commander Texlaz]],
level=110,
spot="Antoran Wastes/0 82.71,65.48",
currency="14 VA",
quest=48816,
steps=[[
step
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.73,52.45 < 20 |only if walking
Follow the path up |goto 72.95,54.41 < 15 |only if walking
Follow the path up |goto 73.22,56.47 < 15 |only if walking
Follow the path |goto Antoran Wastes/0 74.99,64.07 < 15 |only if walking
Follow the path |goto 78.79,66.08 < 15 |only if walking
Follow the path |goto 79.62,63.68 < 15 |only if walking
click Portal##253174 |goto 80.48,62.70
Board the Ship |goto 81.32,70.06 < 5 |noway |c |sticky
step
kill Commander Texlaz##127084
|tip You can jump down to the left or right of the portal and walk along the side of the ship to bypass the elite trash.
|tip Don't stand in front of him during Burning Breath.
|tip Intimidating Roar will cause Texlaz's target to be feared in spot and all other players to run around. Interrupt it when possible.
Defeat Commander Texlaz |q 48816 |goto Antoran Wastes/0 82.71,65.48 |future
]],
},
{
rare=[[Doomcaster Suprax]],
level=110,
spot="Antoran Wastes/0 58.49,11.76",
currency="16 VA",
quest=48968,
item=153194,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto 59.41,26.31 < 15 |only if walking
Follow the path |goto 58.97,25.22 < 15 |only if walking
Follow the path |goto 57.54,23.26 < 20 |only if walking
Follow the path |goto 57.35,20.01 < 20 |only if walking
Follow the path |goto 58.01,13.93 < 20 |only if walking
kill Doomcaster Suprax##127703
|tip There are three individual runes outside of the summoning circle.
|tip You will need a group of three, one person to stand in each rune.
|tip When everyone is in position, Suprax will appear.
|tip DO NOT interrupt Doom Star.
|tip When you Empowered Doom debuff is nearly finished, run into one of the void zones from Doom Star to refresh it (you will take heavy damage).
Defeat Doomcaster Suprax |q 48968 |goto Antoran Wastes/0 58.49,11.76 |future
]],
},
{
rare=[[Gar'zoth]],
level=110,
spot="Antoran Wastes/0 55.78,45.98",
currency="14 VA",
quest=49241,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.31,36.04 < 15 |only if ditto
Follow the path |goto 67.79,38.09 < 15 |only if ditto
Follow the path |goto 64.56,38.41 < 15 |only if ditto
Follow the path down |goto 62.87,37.28 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.07,29.09 < 15 |only if ditto
Follow the path |goto 62.92,30.20 < 15 |only if ditto
Follow the path |goto 62.86,37.25 < 15 |only if ditto
Follow the path |goto 60.72,38.81 < 20 |only if walking
Follow the path |goto 61.98,42.12 < 15 |only if walking
Follow the path |goto 61.81,44.07 < 15 |only if walking
Cross the bridge |goto 57.42,44.54 < 15 |only if walking
kill Gar'zoth##122999
|tip Move out of areas targeted on the ground.
|tip Gar'zoth has a frontal cleave.
|tip Move out of Rain of Fire patches.
Defeat Gar'zoth |q 49241 |goto Antoran Wastes/0 55.78,45.98 |future
]],
},
{
rare=[[Houndmaster Kerrax]],
level=110,
spot="Antoran Wastes/0 63.01,24.62",
item=152790,
quest=48821,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if walking
Follow the path |goto 63.84,28.43 < 15 |only if walking
Follow the path |goto 62.74,26.26 < 15 |only if walking
Enter the cave |goto 63.01,24.62 < 10 |only if walking
kill Houndmaster Kerrax##127288
|tip Don't stand in areas targeted on the ground.
|tip During Rumbling Slam, anyone standing in Kerrax's path will take damage.
Defeat Houndmaster Kerrax |q 48821 |goto Antoran Wastes/0 63.94,21.84 |future
]],
},
{
rare=[[Inquisitor Vethroz]],
level=110,
spot="Antoran Wastes/0 60.67,48.31",
currency="16 VA",
quest=48815,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking
Follow the path |goto 70.83,46.66 < 15 |only if walking
Follow the path |goto Antoran Wastes/0 70.06,44.71 < 20 |only if walking
Cross the lava |goto 67.73,44.05 < 10 |only if walking
Cross the lava |goto 66.83,43.32 < 10 |only if walking
Cross the lava |goto 65.56,43.67 < 10 |only if walking
Cross the lava |goto 64.53,44.42 < 10 |only if walking
Follow the path up |goto 63.85,44.29 < 10 |only if walking
Follow the path |goto 61.39,45.12 < 15 |only if walking
Follow the path up |goto 60.64,47.37 < 15 |only if walking
kill Inquisitor Vethroz##126946
|tip The debuff "Prophecy of Calamity" will inflict heavy shadow damage after 12 seconds.
|tip Fel Nova will deal fire damage in a small radius.
Defeat Inquisitor Vethroz |q 48815 |goto Antoran Wastes/0 60.67,48.31 |future
]],
},
{
rare=[[Lieutenant Xakaar]],
level=110,
spot="Antoran Wastes/0 62.21,53.49",
currency="11 VA",
quest=48813,
steps=[[
step
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.74,52.81 < 20 |only if walking
Follow the path |goto 68.29,54.23 < 15 |only if walking
Follow the path |goto 65.71,51.84 < 15 |only if walking
Follow the path up |goto 64.52,55.00 < 15 |only if walking
Follow the path |goto 63.48,56.17 < 20 |only if walking
kill Lieutenant Xakaar##126254
|tip Withering Roar will deal a small amount of damage and reduce your maximum health by 10% for 15 seconds.
Defeat Lieutenant Xakaar |q 48813 |goto Antoran Wastes/0 62.21,53.49 |future
]],
},
{
rare=[[Mistress Il'thendra]],
level=110,
spot="Antoran Wastes/0 57.35,33.49",
currency="16 VA",
quest=49240,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto 59.29,29.13 < 15 |only if walking
Follow the path |goto 59.22,32.62 < 15 |only if walking
kill Mistress Il'thendra##122947
|tip Move out of the area targeted on the ground. It will inflict heavy fire damage and summon Felflame Scavengers.
Defeat Mistress Il'thendra |q 49240 |goto Antoran Wastes/0 57.35,33.49 |future
]],
},
{
rare=[[Mother Rosula]],
level=110,
spot="Antoran Wastes/0 66.78,17.99",
currency="13 VA",
quest=48970,
item=153252,
steps=[[
step
Follow the path |goto Antoran Wastes/0 72.34,48.14 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.73,46.37 < 15 |only if ditto
Follow the path |goto 71.17,39.49 < 15 |only if ditto
Follow the path up |goto 69.90,38.66 < 15 |only if ditto
Follow the path up |goto 69.42,36.30 < 15 |only if ditto
Follow the path |goto 68.32,35.03 < 20 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.15,33.53 < 15 |only if ditto
Follow the path |goto 66.58,34.99 < 15 |only if walking
Follow the path |goto 65.31,31.46 < 15 |only if walking
Enter the cave |goto 65.62,26.38 < 10 |walk
Follow the path |goto 66.36,24.64 < 7 |walk
Follow the path |goto 66.49,22.36 < 7 |walk
Follow the path |goto 67.66,22.22 < 10 |walk
Follow the path |goto 67.51,19.97 < 7 |walk
Follow the path |goto 66.52,19.25 < 7 |walk
kill Felspawn Imp##126073+
collect 100 Imp Meat##152999 |goto 66.45,19.54
step
Use the Imp Meat |use Imp Meat##152999
collect Disgusting Feast##153013 |goto 66.45,19.54
step
Use the Disgusting Feast |use Disgusting Feast##153013
|tip You will need to drop the Imp Meat in the fel lava to summon Mother Rosula.
Place the Disgusting Feast |complete itemcount(153013) == 0 |goto 66.78,17.99
step
kill Mother Rosula##127705
|tip Periodically, Mother Rosula will summon a swarm of imps. Cleave them down.
|tip Move slightly to the side when she casts Fel Breath or you will be disoriented.
Defeat Mother Rosula |q 48970 |goto 66.78,17.99 |future
]],
},
{
rare=[[Puscilla]],
level=110,
spot="Antoran Wastes/0 63.98,20.86",
currency="16 VA",
quest=48809,
steps=[[
step
Follow the path |goto Antoran Wastes/0 72.34,48.14 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.73,46.37 < 15 |only if ditto
Follow the path |goto 68.14,33.19 < 15 |only if ditto
Follow the path up |goto 69.90,38.66 < 15 |only if ditto
Follow the path up |goto 69.42,36.30 < 15 |only if ditto
Follow the path |goto 68.32,35.03 < 20 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.15,33.53 < 15 |only if ditto
Follow the path |goto 66.58,34.99 < 15 |only if walking
Follow the path |goto 65.31,31.46 < 15 |only if walking
Enter the cave |goto 65.62,26.38 < 10 |walk
Follow the path |goto 66.36,24.64 < 7 |walk
Follow the path |goto 66.49,22.36 < 7 |walk
Follow the path |goto 67.66,22.22 < 10 |walk
Follow the path |goto 67.51,19.97 < 7 |walk
Follow the path |goto 66.48,19.56 < 7 |walk
Follow the path up |goto 65.10,19.92 < 15 |walk
kill Puscilla##126040
|tip Interrupt Chaos Nova whenever possible.
|tip Periodically, Puscilla will summon a swarm of imps.
Defeat Puscilla |q 48809 |goto Antoran Wastes/0 63.98,20.86 |future
]],
},
{
rare=[[Rezira the Seer]],
level=110,
spot="Antoran Wastes/0 64.81,82.76",
currency="10 VA",
quest=48971,
item=153293,
steps=[[
step
You currently have a Locus Resonator |complete itemcount(153226) >= 1 |only if itemcount(153226) >= 1
You currently do not have a Locus Resonator |complete itemcount(153226) < 1 |only if itemcount(153226) < 1
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking
Follow the path |goto 70.83,46.66 < 15 |only if walking
Follow the path |goto 70.06,44.71 < 20 |only if walking
Cross the lava |goto 67.73,44.05 < 10 |only if walking
Cross the lava |goto 66.83,43.32 < 10 |only if walking
Cross the lava |goto 65.56,43.67 < 10 |only if walking
Cross the lava |goto 64.53,44.42 < 10 |only if walking
Follow the path up |goto 63.85,44.29 < 10 |only if walking
Follow the path |goto 62.78,44.11 < 15 |only if walking
Follow the path |goto 60.08,44.44 < 20 |only if walking
Enter the cave |goto 59.59,45.04 < 10 |walk
|tip The cave is under the bridge.
clicknpc All-Seer's Focus##128151
|tip They are large and look like demon eyes floating in a brazier.
|tip While these spawn randomly around Antoran Wastes, they can typically be found inside caves and buildings.
|tip Ensure that you have full health and no aggro, as you will lose 90% of your health upon clicking it.
|tip The buff will make you hostile to Army of the Light NPCs.
|tip Additionally, you will take 100% increased damage while under the effects of the buff.
Gain the Agent of the All-Seer Buff |havebuff 237297 |goto Antoran Wastes/0 60.23,45.16
step
Kill demon enemies around Antoran Wastes
|tip If your All-Seer buff falls off, return to the cave to renew it.
|tip These coordinates are a good place to farm due to fast respawns and dense mobs.
collect 500 Intact Demon Eye##153021 |goto 62.21,53.49
step
Enter the cave |goto Antoran Wastes/0 59.59,45.04 < 10 |walk
talk Orix the All-Seer##128134
buy Observer's Locus Resonator##153226 |n
collect Observer's Locus Resonator##153226 |goto 60.20,45.57
step
Use the Locus Resonator |use Observer's Locus Resonator##153226
|tip Using this near a beacon or other populated area can get you some additional help from other players.
clicknpc Portal to Observer's Locus##128341
Take the Portal |goto Antoran Wastes/0 66.92,77.78 < 10 |noway |c
step
Follow the path |goto Antoran Wastes/0 66.51,78.09 < 15
Follow the path down |goto 65.91,79.90 < 15 |walk
kill Rezira the Seer##127706
|tip If possible, stand to Rezira's side.
|tip Avoid purple areas on the ground. Try not to stand within their radius.
Defeat Rezira the Seer |q 48971 |goto Antoran Wastes/0 64.81,82.76 |future
]],
},
{
rare=[[Squadron Commander Vishax]],
level=110,
spot="Antoran Wastes/0 84.38,81.10",
currency="15 VA",
quest=48967,
steps=[[
step
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.73,52.45 < 20 |only if walking
Follow the path up |goto 72.95,54.41 < 15 |only if walking
Follow the path up |goto 73.22,56.47 < 15 |only if walking
kill Immortal Netherwalker##127598+
collect Smashed Portal Generator##152890 |goto 74.62,63.85 |q 49007 |future
step
kill Felsworn Myrmidon##127596+, Eredar War-MindEredar War-Mind##127597+
collect Conductive Sheath##152941 |goto 74.62,63.85 |q 49007 |future
collect Arc Circuit##152940 |goto 74.62,63.85 |q 49007 |future
collect Power Cell##152891 |goto 74.62,63.85 |q 49007 |future
step
Use the Smashed Portal Generator |use Smashed Portal Generator##152890
collect Vishax's Portal Generator##152965 |n
accept Commander on Deck!##49007 |goto 74.62,63.85
|tip You will accept this quest automatically.
step
Follow the path |goto 71.97,47.26 < 15 |only if walking and completedq(49007)
Follow the path |goto 70.43,47.66 < 15 |only if walking and completedq(49007)
Follow the path |goto 70.73,52.45 < 20 |only if walking and completedq(49007)
Follow the path up |goto 72.95,54.41 < 15 |only if walking and completedq(49007)
Follow the path up |goto 73.22,56.47 < 15 |only if walking and completedq(49007)
Follow the path |goto 74.99,64.07 < 15 |only if walking
Follow the path |goto 78.79,66.08 < 15 |only if walking
Follow the path |goto 77.47,72.57 < 15 |only if walking
clicknpc Vishax's Portal##127943 |goto 77.57,74.77
Use Vishax's Portal |q 49007/1 |goto 77.57,74.78 |only if haveq(49007)
Board the Ship |goto 87.51,80.18 < 5 |noway |c |only if not haveq(49007)
step
Click the Complete Quest Box:
turnin Commander on Deck!##49007 |goto 87.51,80.18
step
Board the Ship |goto 87.51,80.18 < 5 |noway |c
step
kill Squadron Commander Vishax##127700
|tip During the fight, a ship will bomb one side of the ship deck.
|tip Move to the side that doesn't get bombed.
Defeat Squadron Commander Vishax |q 48967 |goto Antoran Wastes/0 84.38,81.10 |future
]],
},
{
rare=[[The Many-Faced Devourer]],
level=110,
spot="Antoran Wastes/0 54.81,39.15",
currency="12 VA",
quest=48966,
item=153195,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto Antoran Wastes/0 57.16,28.42 < 20 |only if walking
Follow the path |goto 55.46,30.67 < 15 |only if walking
Follow the path down |goto 53.94,31.37 < 15 |only if walking
Follow the path |goto 52.94,33.77 < 20 |only if walking
kill Tormented Ritualist##126171+, Antoran Defender##126193+
collect Call of the Devourer##152786 |goto 52.22,36.71
step
Follow the path |goto Antoran Wastes/0 54.59,41.44 < 15 |only if walking
Follow the path |goto 53.78,44.52 < 20 |only if walking
Follow the path |goto 51.55,49.42 < 20 |only if walking
Follow the path |goto 51.50,54.43 < 20 |only if walking
click Intact Ur'zul Bone##276426
collect Ur'zul Bone##152993 |goto 50.39,56.13
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.17,34.55 < 15 |only if ditto
Follow the path |goto 66.74,35.22 < 15 |only if walking
Follow the path |goto 65.35,31.37 < 15 |only if walking
Enter the cave |goto 65.60,26.38 < 7 |walk
Follow the path |goto 66.31,24.79 < 7 |walk
Follow the path |goto 66.55,22.26 < 7 |walk
Follow the path |goto 67.73,22.04 < 7 |walk
Follow the path |goto 67.54,19.96 < 7 |walk
click Intact Imp Bones##276424
|tip It looks like a small skeletal arm on the ground.
collect Imp Bone##152992 |goto 65.90,19.40
step
Follow the path up |goto Antoran Wastes/0 65.00,19.93 < 7 |walk
Follow the path |goto 64.71,21.03 < 10 |walk
Follow the path down |goto 66.13,22.08 < 7 |walk
Follow the path |goto 66.42,24.38 < 7 |walk
Leave the cave |goto 65.61,26.31 < 7 |walk
Cross the bridge |goto 65.36,31.74 < 15 |only if walking
Follow the path |goto 64.19,32.33 < 15 |only if walking
Cross the bridge |goto 60.00,25.62 < 15 |only if walking
Follow the path |goto 55.30,30.59 < 15 |only if walking
Follow the path down |goto 53.28,32.21 < 15 |only if walking
Follow the path |goto 52.75,34.16 < 15 |only if walking
click Intact Fiend Bone##276425
collect Fiend Bone##152991 |goto 52.37,35.33
|tip It looks like a femur bone on the ground.
step
Follow the path |goto Antoran Wastes/0 53.30,37.93 < 10 |only if walking
clicknpc Bone Effigy##127577
|tip If the Effigy is not there, relog to make it appear.
|tip You will need to click it twice to summon The Many-Faced Devourer.
kill The Many-Faced Devourer##127581
|tip Devour Souls will place a stacking debuff on you, reducing damage and healing and inflicting shadow damage per application.
|tip Fearsome Howl will deal shadow damage and fear anyone within 30 yards.
|tip Hexabite is a stacking debuff that inflicts 1% of total health every 2 seconds per application.
Defeat The Many-Faced Devourer |q 48966 |goto Antoran Wastes/0 54.81,39.15 |future
]],
},
{
rare=[[Varga]],
level=110,
spot="Antoran Wastes/0 65.02,51.46",
item=153190,
quest=48812,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.16,47.78 < 15 |only if walking
Follow the path |goto 70.58,46.46 < 20 |only if walking
Follow the path |goto 68.58,43.62 < 20 |only if walking
Jump across the rocks |goto 67.73,44.04 < 7 |only if walking
Jump across the rocks |goto 66.83,43.31 < 7 |only if walking
Jump across the rocks |goto 66.19,43.46 < 7 |only if walking
Jump across the rocks |goto 65.67,44.75 < 7 |only if walking
Jump across the rocks |goto 65.16,44.94 < 7 |only if walking
Jump across the rocks |goto 65.08,45.53 < 7 |only if walking
Jump across the rocks |goto 64.11,46.67 < 7 |only if walking
kill Varga##126208
|tip Stay spread out from other players to avoid damage from Devour Essence.
|tip Try to avoid the areas targeted by Varga's leap.
Defeat Varga |q 48812 |goto Antoran Wastes/0 65.02,51.46 |future
]],
},
{
rare=[[Ven'orn]],
level=110,
spot="Antoran Wastes/0 63.01,57.35",
currency="16 VA",
quest=48811,
steps=[[
step
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.74,52.81 < 20 |only if walking
Follow the path |goto 68.29,54.23 < 15 |only if walking
Enter the cave |goto Antoran Wastes/0 66.61,54.21 < 15 |walk
Follow the path down |goto 64.79,56.54 < 15 |walk
kill Ven'orn##126115
|tip Interrupt Poison Nova whenever possible.
Defeat Ven'orn |q 48811 |goto Antoran Wastes/0 63.01,57.35 |future
]],
},
{
rare=[[Void Warden Valsuran]],
level=110,
spot="Antoran Wastes/0 55.31,21.61",
currency="14 VA",
quest=48824,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto 59.41,26.31 < 15 |only if walking
Follow the path |goto 58.97,25.22 < 15 |only if walking
kill Void Warden Valsuran##127300
|tip Interrupt Torrent of Shadow whenever possible.
|tip During Shadow Rend, avoid standing in front of him.
Defeat Void Warden Valsuran |q 48824 |goto Antoran Wastes/0 55.31,21.61 |future
]],
},
{
rare=[[Vrax'thul]],
level=110,
spot="Antoran Wastes/0 53.02,36.02",
currency="17 VA",
quest=48810,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto Antoran Wastes/0 57.16,28.42 < 20 |only if walking
Follow the path |goto 55.46,30.67 < 15 |only if walking
Follow the path down |goto 53.94,31.37 < 15 |only if walking
Follow the path |goto 52.94,33.77 < 20 |only if walking
kill Vrax'thul##126199
|tip The debuff "Prophecy of Calamity" will inflict heavy shadow damage after 12 seconds.
Defeat Vrax'thul |q 48810 |goto Antoran Wastes/0 53.02,36.02 |future
]],
},
{
rare=[[Watcher Aival]],
level=110,
spot="Antoran Wastes/0 53.05,29.05",
currency="18 VA",
quest=48822,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto 59.10,26.79 < 20 |only if walking
Follow the path |goto 59.02,25.17 < 15 |only if walking
Follow the path up |goto 57.45,24.16 < 15 |only if walking
Follow the path |goto 53.75,27.01 < 15 |only if walking
kill Watcher Aival##127291
|tip During Chaos Glare, do not stand in front of Aival and turn your back to him.
|tip If you fail to turn your back, you will be sleeped, disoriented, polymorphed, or feared.
Defeat Watcher Aival |q 48822 |goto Antoran Wastes/0 53.05,29.05 |future
]],
},
{
rare=[[Worldsplitter Skuul]],
level=110,
spot="Antoran Wastes/0 50.93,55.40",
currency="19 VA",
quest=48820,
steps=[[
step
Follow the path |goto Antoran Wastes/0 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.07,29.09 < 15 |only if ditto
Follow the path |goto 62.92,30.20 < 15 |only if ditto
Follow the path |goto 62.86,37.25 < 15 |only if ditto
Follow the path |goto 60.72,38.81 < 20 |only if ditto
Follow the path |goto 61.98,42.12 < 15 |only if ditto
Follow the path |goto 61.81,44.07 < 15 |only if ditto
Cross the bridge |goto 57.42,44.54 < 15 |only if ditto
Follow the path |goto 52.09,48.31 < 20 |only if ditto
Follow the path |goto 51.82,53.70 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 68.26,68.59 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 65.28,65.44 < 20 |only if ditto
Follow the path |goto 63.31,63.05 < 20 |only if ditto
Follow the path |goto 62.50,57.79 < 20 |only if ditto
Follow the path down |goto 60.19,55.96 < 20 |only if ditto
Cross the lava |goto 59.38,55.46 < 15 |only if ditto
Cross the lava |goto 58.51,55.36 < 15 |only if ditto
Cross the lava |goto 57.69,54.53 < 15 |only if ditto
Follow the path up |goto 55.70,52.15 < 15 |only if ditto
Follow the path |goto 54.15,55.00 < 20 |only if ditto
Follow the path |goto 51.71,54.01 < 20 |only if ditto
kill Worldsplitter Skuul##127118
|tip Shadowstrike deals damage in a frontal cone.
|tip During Unholy Frenzy, Skull's damage output will be increased.
|tip He may be flying a large circle around the area.
Defeat Worldsplitter Skuul |q 48820 |goto Antoran Wastes/0 50.93,55.40 |future
]],
},
{
rare=[[Wrath-Lord Yarez]],
level=110,
spot="Antoran Wastes/0 61.32,65.20",
currency="11 VA",
quest=48814,
item=153126,
steps=[[
step
Follow the path |goto Antoran Wastes/0 70.62,72.03 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.52,68.81 < 20 |only if ditto
Follow the path |goto 64.68,65.89 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 62.88,60.46 < 20 |only if ditto
kill Wrath-Lord Yarez##126338
|tip Withering Roar will deal a small amount of damage and reduce your maximum health by 10% for 15 seconds.
Defeat Wrath-Lord Yarez |q 48814 |goto Antoran Wastes/0 61.32,65.20 |future
]],
},
{
rare=[[Arcavellus]],
level=100,
spot="Azsuna/0 59.84,12.08",
currency="OR",
quest=37932,
item=129085,
steps=[[
step
kill Rift Wyrm##90242+
kill Arcavellus##90244 |q 37932 |future |goto Azsuna/0 59.84,12.08
]],
},
{
rare=[[Coura, Mistress of Arcana]],
level=100,
spot="Azsuna/19 62.52,30.72",
currency="OR",
quest=42699,
item=141877,
steps=[[
step
Enter the temple |goto Azsuna/0 56.04,68.69 < 10 |walk
kill Coura, Mistress of Arcana##108255 |q 42699 |future |goto Azsuna/19 62.52,30.72
]],
},
{
rare=[[Inquisitor Tivos]],
level=100,
spot="Azsuna/0 28.4,52.1",
currency="OR",
quest=42376,
item=141874,
steps=[[
step
click Legion Portal##267226 |goto Azsuna/0 26.82,49.06 < 5 |walk
Go down the path |goto Azsuna/0 27.56,52.19 < 10
kill Inquisitor Tivos##107269 |q 42376 |future |goto Azsuna/0 28.4,52.1
]],
},
{
rare=[[Bilebrain]],
level=100,
spot="Azsuna 29.27,53.66",
currency="OR",
quest=42417,
item=129079,
steps=[[
step
Go up the path |goto Azsuna/0 29.40,53.30 < 10 |only if walking
kill Bilebrain##107327 |q 42417 |future |goto Azsuna 29.27,53.66
]],
},
{
rare=[[Houndmaster Stroxis]],
level=100,
spot="Azsuna 30.77,47.99",
currency="OR",
quest=42286,
item=141873,
steps=[[
step
kill Houndmaster Stroxis##107136 |q 42286 |future |goto Azsuna 30.77,47.99
]],
},
{
rare=[[Beacher]],
level=100,
spot="Azsuna 32.29,29.72",
currency="OR",
quest=38238,
item=129067,
steps=[[
step
kill Beacher##91187 |q 38238 |future |goto Azsuna 32.29,29.72
|tip He walks up and down the beach and may not be in this exact spot.
]],
},
{
rare=[[Ragemaw]],
level=100,
spot="Azsuna 32.60,48.80",
currency="OR",
quest=44108,
item=129075,
steps=[[
step
Enter the cave |goto Azsuna 34.8,49.8 < 10 |walk
kill Ragemaw##109504 |q 44108 |future |goto Azsuna 32.60,48.80
]],
},
{
rare=[[Broodmother Lizax]],
level=100,
spot="Azsuna 33.40,41.20",
currency="OR",
quest=44670,
item=141869,
steps=[[
step
Enter the cave |goto Azsuna/0 33.32,42.50 < 10 |walk
kill Broodmother Lizax##107105 |q 44670 |future |goto Azsuna 33.40,41.20
]],
},
{
rare=[[Arcanist Shal'iman]],
level=100,
spot="Azsuna 34.96,33.91",
currency="OR",
quest=42505,
item=141868,
steps=[[
step
Follow the path |goto Azsuna 41.1,35.3 |only if walking
kill Arcanist Shal'iman##107657 |q 42505 |future |goto Azsuna 34.96,33.91
]],
},
{
rare=[[Infernal Lord]],
level=100,
spot="Azsuna 35.30,50.30",
currency="OR",
quest=38037,
item=129083,
steps=[[
step
kill Infernal Lord##90803 |q 38037 |future |goto Azsuna 35.30,50.30
]],
},
{
rare=[[Vorthax]],
level=100,
spot="Azsuna 37.37,43.18",
currency="OR",
quest=42280,
item=141875,
steps=[[
step
Go up the ramp |goto Azsuna/0 36.57,44.05 < 10 |only if walking
kill Vorthax##107113 |q 42280 |future |goto Azsuna 37.37,43.18
]],
},
{
rare=[[Ravyn-Drath]],
level=100,
spot="Azsuna 41.05,41.78",
currency="OR",
quest=37537,
item=129080,
steps=[[
step
kill Ravyn-Drath##89016 |q 37537 |future |goto Azsuna 41.05,41.78
]],
},
{
rare=[[Doomlord Kazrok]],
level=100,
spot="Azsuna 43.17,28.13",
currency="OR",
quest=38352,
item=129056,
steps=[[
step
Go up the path |goto Azsuna/0 46.47,27.73 < 10 |only if walking
kill Doomlord Kazrok##91579 |q 38352 |future |goto Azsuna 43.17,28.13
]],
},
{
rare=[[Felwing]],
level=100,
spot="Azsuna 43.57,24.44",
item=129087,
quest=42069,
steps=[[
step
Go up the path |goto Azsuna/0 39.14,32.84 < 10 |only if walking
Continue up the mountain |goto Azsuna/0 39.11,26.88 < 10 |only if walking
Go up the stairs |goto 43.62,24.03 < 10 |only if walking
talk Tehd Shoemaker##91097 |goto 43.56,24.48 < 5
kill Felwing##105197 |q 42069 |future |goto Azsuna 43.57,24.44
]],
},
{
rare=[[Flog the Captain-Eater]],
level=100,
spot="Azsuna 45.30,57.80",
currency="OR",
quest=37824,
item=129090,
steps=[[
step
kill Flog the Captain-Eater##89884 |q 37824 |future |goto Azsuna 45.30,57.80
|tip You may need a group to defeat him.
]],
},
{
rare=[[Valyaka the Stormbringer]],
level=100,
spot="Azsuna 47.30,34.60",
item=129082,
quest=37726,
steps=[[
step
kill Valyaka the Stormbringer##???? |q 37726 |future |goto Azsuna 47.30,34.60
]],
},
{
rare=[[Warbringer Mox'na]],
level=100,
spot="Azsuna 49.10,55.19",
currency="OR",
quest=37909,
item=129069,
steps=[[
step
kill Warbringer Mox'na##90164 |q 37909 |future |goto Azsuna 49.10,55.19
]],
},
{
rare=[[Normantis the Deposed]],
level=100,
spot="Azsuna 49.50,08.80",
currency="OR",
quest=37928,
item=129061,
steps=[[
step
Enter the cave |goto Azsuna/0 50.18,7.70 < 10 |walk
kill Normantis the Deposed##90217 |q 37928 |future |goto Azsuna 49.50,08.80
]],
},
{
rare=[[Mrrgrl the Tidereaver]],
level=100,
spot="Azsuna 50.00,34.40",
item=129072,
quest=37823,
steps=[[
step
kill Mrrgrl the Tidereaver##???? |q 37823 |future |goto Azsuna 50.00,34.40
]],
},
{
rare=[[Daggerbeak]],
level=100,
spot="Azsuna 51.08,31.69",
currency="OR",
quest=37869,
item=129084,
steps=[[
step
kill Daggerbeak##90057 |q 37869 |future |goto Azsuna 51.08,31.69
]],
},
{
rare=[[Cailyn Paledoom]],
level=100,
spot="Azsuna 52.38,23.04",
currency="OR",
quest=38268,
item=129063,
steps=[[
step
Follow the path up |goto Azsuna/0 52.02,17.67 < 10 |only if walking
kill Cailyn Paledoom##91289 |q 38268 |future |goto Azsuna 52.38,23.04
]],
},
{
rare=[[Captain Volo'ren]],
level=100,
spot="Azsuna 53.40,44.00",
currency="OR",
quest=37821,
item=129066,
steps=[[
step
Go up the stairs |goto Azsuna/0 51.61,44.69 < 10 |only if walking
Cross the bridge |goto 52.80,45.32 < 5 |only if walking
kill Captain Volo'ren##89846 |q 37821 |future |goto Azsuna 53.40,44.00
]],
},
{
rare=[[Brawlgoth]],
level=100,
spot="Azsuna 55.10,45.90",
currency="OR",
quest=42450,
item=129086,
steps=[[
step
kill Brawlgoth##107127 |q 42450 |future |goto Azsuna 55.10,45.90
|tip He is on the upper platform.
]],
},
{
rare=[[Pridelord Meowl]],
level=100,
spot="Azsuna 56.10,29.06",
currency="OR",
quest=38061,
item=138395,
steps=[[
step
kill Pridelord Meowl##90901 |q 38061 |future |goto Azsuna 56.10,29.06
]],
},
{
rare=[[Brogozog]],
level=100,
spot="Azsuna 59.30,46.30",
currency="OR",
quest=38212,
item=129068,
steps=[[
step
Go up the path |goto Azsuna 58.9,50.0 < 10 |only if walking
talk Tehd Shoemaker##91097 |goto Azsuna/0 59.30,46.42 < 5
kill Brogozog##91100 |q 38212 |future |goto Azsuna 59.30,46.30
]],
},
{
rare=[[The Oracle]],
level=100,
spot="Azsuna 59.70,55.20",
currency="OR",
quest=37822,
item=129065,
steps=[[
step
Go up the stairs |goto Azsuna/0 59.68,54.64 < 10 |only if walking
kill The Oracle##89850 |q 37822 |future |goto Azsuna 59.70,55.20
]],
},
{
rare=[[Tide Behemoth]],
level=100,
spot="Azsuna 61.30,62.00",
item=129062,
quest=38217,
steps=[[
step
kill Tide Behemoth##91113 |q 38217 |future |goto Azsuna 61.30,62.00
]],
},
{
rare=[[Golza the Iron Fin]],
level=100,
spot="Azsuna 65.16,40.00",
currency="OR",
quest=37820,
item=129091,
steps=[[
step
click Horn of the Siren##243009
kill Hatecoil Deepsinger##90774+, Hatecoil Reservist##90778+
kill Golza the Iron Fin##89816 |q 37820 |future |goto Azsuna 65.16,40.00
]],
},
{
rare=[[Chief Bitterbrine]],
level=100,
spot="Azsuna 65.54,56.79",
currency="OR",
quest=42221,
item=129073,
steps=[[
step
Swim through a window underwater |goto Azsuna/0 65.24,56.80 < 6 |walk
kill Chief Bitterbrine##106990 |q 42221 |future |goto Azsuna 65.54,56.79
|tip He is underwater in the back of the ship.
]],
},
{
rare=[[Syphonus/Leodrath]],
level=100,
spot="Azsuna 67.10,51.40",
item=129064,
quest=37989,
steps=[[
step
kill Syphonus/Leodrath##???? |q 37989 |future |goto Azsuna 67.10,51.40
]],
},
{
rare=[[Fenri]],
level=100,
spot="Helheim/0 84.83,49.86",
currency="OR",
quest=38461,
item=129044,
steps=[[
step
Follow the path down |goto Stormheim/0 72.78,40.59 < 10 |only if completedq(39855)
Use the portal back to Helheim |goto Stormheim 73.64,39.36 < 10 |only if completedq(39855)
Enter the cave |goto Helheim/0 82.02,43.54 < 10 |walk
kill Fenri##92040 |q 38461 |future |goto Helheim/0 84.83,49.86
]],
},
{
rare=[[Soulthirster]],
level=100,
spot="Helheim/0 28.69,63.65",
currency="OR",
quest=39870,
item=129188,
steps=[[
step
Follow the path down |goto Stormheim/0 72.78,40.59 < 10 |only if completedq(39855)
Use the portal back to Helheim |goto Stormheim 73.64,39.36 < 10 |only if completedq(39855)
kill Soulthirster##97630 |q 39870 |future |goto Helheim/0 28.69,63.65
]],
},
{
rare=[[Bodash the Hoarder]],
level=100,
spot="Highmountain 36.74,16.35",
currency="OR",
quest=40084,
item=131799,
steps=[[
step
kill Bodash the Hoarder##98299 |q 40084 |future |goto Highmountain 36.74,16.35
]],
},
{
rare=[[Bristlemaul]],
level=100,
spot="Highmountain 38.08,45.59",
currency="OR",
quest=40405,
item=131761,
steps=[[
step
Enter the cave |goto Highmountain 37.70,45.70 < 10 |walk
kill Bristlemaul##97449 |q 40405 |future |goto Highmountain/0 38.08,45.59
]],
},
{
rare=[[Flamescale]],
level=100,
spot="Highmountain 40.97,57.75",
currency="OR",
quest=39963,
item=131773,
steps=[[
step
click Abandoned Fishing Pole##244667
kill Flamescale##97793 |q 39963 |future |goto Highmountain 40.97,57.75
]],
},
{
rare=[[Slumber]],
level=100,
spot="Highmountain 41.51,31.84",
currency="OR",
quest=40175,
item=131921,
steps=[[
step
kill Slumber##98890 |q 40175 |future |goto Highmountain 41.51,31.84
]],
},
{
rare=[[Tenpak Flametotem]],
level=100,
spot="Highmountain 41.94,41.49",
currency="OR",
quest=39782,
item=129175,
steps=[[
step
Follow the path |goto Highmountain 44.44,32.34 < 10 |only if walking
Continue on the path up the mountain |goto Highmountain/0 44.66,35.44 < 10 |only if walking
kill Tenpak Flametotem##97203 |q 39782 |future |goto Highmountain 41.94,41.49
]],
},
{
rare=[[Amateur Hunters]],
level=100,
spot="Highmountain 43.16,48.00",
item=131781,
quest=40413,
steps=[[
step
Enter the cave |goto Highmountain 43.16,48.00 < 10 |walk
kill Dargok Thunderuin##100231, "Sure-Shot" Arnie##100230, Ryael Dawndrifter##100232
click Battered Chest##245479 |q 40413 |future |goto Highmountain/0 43.46,47.37
]],
},
{
rare=[[Crab Rider Grmlrml]],
level=100,
spot="Highmountain 44.20,12.10",
currency="OR",
quest=39994,
item=131798,
steps=[[
step
kill Crab Rider Grmlrml##97933 |q 39994 |future |goto Highmountain 44.20,12.10
]],
},
{
rare=[[Sekhan]],
level=100,
spot="Highmountain 45.70,55.00",
currency="OR",
quest=40681,
item=131730,
steps=[[
step
kill Sekhan##101077 |q 40681 |future |goto Highmountain 45.70,55.00
]],
},
{
rare=[[Mrrklr]],
level=100,
spot="Highmountain 46.50,07.44",
currency="OR",
quest=40096,
item=131797,
steps=[[
step
talk Sloppy "Sloppy Joe" Joe##98754 |goto Highmountain/0 46.64,7.43 < 5
kill Mrrklr##98311 |q 40096 |future |goto Highmountain 46.69,7.31
]],
},
{
rare=[[Oubdob Da Smasher]],
level=100,
spot="Highmountain 47.6,73.8",
currency="OR",
item=131793,
quest=39435,
steps=[[
step
Follow the path |goto Highmountain 48.23,68.96 < 10 |only if walking
kill Oubdob Da Smasher##95204 |q 39435 |future |goto Highmountain 47.6,73.8
|tip This Rare is only here when the Danger: Oubdob Da Smasher world quest is active.
]],
},
{
rare=[[Crawshuk the Hungry]],
level=100,
spot="Highmountain 48.41,40.15",
currency="OR",
quest=39806,
item=131809,
steps=[[
step
Go up the path |goto Highmountain/0 49.50,39.71 < 10 |only if walking
kill Crawshuk the Hungry##97345 |q 39806 |future |goto Highmountain 48.41,40.15
]],
},
{
rare=[[Majestic Elderhorn]],
level=100,
spot="Highmountain 48.50,25.46",
currency="OR",
quest=39646,
item=131900,
steps=[[
step
kill Majestic Elderhorn##96410 |q 39646 |future |goto Highmountain 48.50,25.46
|tip It runs around the area and may not be in this exact spot.
]],
},
{
rare=[[Beastmaster Pao'lek]],
level=100,
spot="Highmountain 48.60,50.00",
item=131756,
quest=39784,
steps=[[
step
Go up the steep mountain path |goto Highmountain/0 46.56,49.68 < 10 |only if walking
talk Beastmaster Pao'lek##97215 |goto Highmountain 48.65,50.09 < 5
kill Arru##97220 |q 39784 |future |goto Highmountain 48.91,49.93
]],
},
{
rare=[[Mellok, Son of Torok]],
level=100,
spot="Highmountain 49.20,27.09",
currency="OR",
quest=40242,
item=131808,
steps=[[
step
Go up the path |goto Highmountain/0 47.49,29.16 < 10 |only if walking
kill Mellok, Son of Torok##96621 |q 40242 |future |goto Highmountain 49.20,27.09
]],
},
{
rare=[[Luggut the Eggeater]],
level=100,
spot="Highmountain 50.80,34.60",
currency="OR",
quest=40406,
item=131776,
steps=[[
step
Enter the cave |goto Highmountain 51.6,37.5 < 10 |walk
Jump down here |goto Highmountain/0 50.63,35.91 < 10 |walk
kill Luggut the Eggeater##98024 |q 40406 |future |goto Highmountain 50.80,34.60
|tip It is at the bottom of the cave.
]],
},
{
rare=[[Shara Felbreath]],
level=100,
spot="Highmountain 51.06,25.70",
currency="OR",
quest=39762,
item=131791,
steps=[[
step
kill Shara Felbreath##97093 |q 39762 |future |goto Highmountain 51.06,25.70
]],
},
{
rare=[[Hartli the Snatcher]],
level=100,
spot="Highmountain 51.07,48.25",
currency="OR",
quest=39802,
item=138783,
steps=[[
step
Follow the path up Windripper Peak |goto Highmountain/0 53.20,48.01 < 10 |only if walking
kill Hartli the Snatcher##97326 |q 39802 |future |goto Highmountain 51.07,48.25
]],
},
{
rare=[[Skullhat]],
level=100,
spot="Highmountain 51.46,31.89",
currency="OR",
quest=39465,
item=131769,
steps=[[
step
Enter the cave |goto Highmountain 50.85,31.97 < 10 |walk
kill Skullhat##95872 |q 39465 |future |goto Highmountain 51.46,31.89
]],
},
{
rare=[[Unethical Adventurers]],
level=100,
spot="Highmountain 52.56,58.38",
item=131767,
quest=40423,
steps=[[
step
Enter the cave |goto Highmountain/0 52.27,58.58 < 10 |walk
click Seemingly Unguarded Treasure##253994 |goto Highmountain/0 52.76,58.18 < 5 |walk
kill Xaander##109498, Zenobia##100303, Puck##100302, Darkful##109501, Jak##109500
Defeat the Unethical Adventurers |q 40423 |future |goto Highmountain 52.56,58.38
]],
},
{
rare=[[Taurson]],
level=100,
spot="Highmountain 53.75,51.23",
item=131800,
quest=39872,
steps=[[
step
Follow the path |goto Highmountain/0 55.41,47.46 < 10 |only if walking
Enter the cave |goto Highmountain/0 54.20,50.73 < 10 |walk
talk Taurson##97653
kill Taurson##97653
click Taurson's Prize##244628 |q 39872 |future |goto Highmountain 53.75,51.23
]],
},
{
rare=[[Devouring Darkness]],
level=100,
spot="Highmountain 54.44,41.25",
currency="OR",
quest=40414,
item=131780,
steps=[[
step
Enter the cave |goto Highmountain/0 55.1,44.3 < 10 |walk
Follow the path |goto Highmountain/0 55.10,41.88 < 10 |walk
clicknpc Kobold Candle##97543+ |goto 54.44,41.25 < 5 |walk
|tip Click all the candles to summon the Devouring Darkness.
kill Devouring Darkness##100495 |q 40414 |future |goto Highmountain 54.44,41.25
]],
},
{
rare=[[Frostshard]],
level=110,
spot="Highmountain 54.44,74.54",
currency="OR",
quest=40773,
steps=[[
step
Follow the path |goto Highmountain/0 54.52,73.19 < 25 |only if walking
kill Frostshard##101649 |q 40773 |future |goto Highmountain 54.44,74.54
|tip He patrols up and down the ravine.
|tip You may need a group to defeat him.
]],
},
{
rare=[[Mynta Talonscreech]],
level=100,
spot="Highmountain 54.50,40.60",
currency="OR",
quest=39866,
item=131792,
steps=[[
step
Follow the path up the mountain |goto Highmountain 53.48,35.60 < 10 |only if walking
talk Scout Harefoot##97579 |goto Highmountain/0 54.54,40.63 < 5
kill Vilewing Ambusher##97591+
kill Mynta Talonscreech##97593 |q 39866 |future |goto Highmountain 54.50,40.60
]],
},
{
rare=[[Brogul the Mighty]],
level=100,
spot="Highmountain 56.35,72.50",
item=138396,
quest=39235,
steps=[[
step
Follow the path up |goto Highmountain/0 58.97,68.79 < 10 |only if walking
Continue up the mountain |goto 57.98,73.73 < 10 |only if walking
kill Brogul the Mighty##94877 |q 39235 |future |goto Highmountain 56.35,72.50
]],
},
{
rare=[[Gurbog da Basher]],
level=100,
spot="Highmountain 56.40,60.50",
currency="OR",
quest=40347,
item=131775,
steps=[[
step
kill Gurbog da Basher##96590 |q 40347 |future |goto Highmountain 56.40,60.50
|tip He walks around the area and might not be in this exact spot.
]],
},
{
rare=[[Commander Endaxis]],
level=110,
spot="Krokuun/0 45.30,58.81",
currency="15 VA",
quest=48564,
steps=[[
step
Follow the path |goto Krokuun/0 42.86,61.11 < 30 |only if walking
kill Commander Endaxis##124775
Defeat Commander Endaxis |q 48564 |goto Krokuun/0 45.30,58.81 |future
]],
},
{
rare=[[Commander Sathrenael]],
level=110,
spot="Krokuun/0 33.21,76.15",
currency="17 VA",
quest=48562,
steps=[[
step
Follow the path |goto Krokuun/0 37.61,67.29 < 20 |only if walking
Follow the path |goto 35.93,70.11 < 20 |only if walking
Follow the path |goto 34.88,74.82 < 20 |only if walking
kill Commander Sathrenael##122912
Defeat Commander Sathrenael |q 48562 |goto Krokuun/0 33.21,76.15 |future
]],
},
{
rare=[[Commander Vecaya]],
level=110,
spot="Krokuun/0 38.38,59.73",
currency="13 VA",
quest=48563,
steps=[[
step
Follow the path |goto Krokuun/0 42.13,60.90 < 15 |only if walking
Follow the path |goto 42.36,57.22 < 15 |only if walking
Follow the path up |goto 40.49,56.70 < 10 |only if walking
Follow the path |goto 39.23,59.52 < 10 |only if walking
Follow the path |goto 39.12,59.54 < 10 |only if walking
kill Commander Vecaya##122911
|tip Move out of areas targeted on the ground.
|tip Keep your back facing away from the ledge or you may be knocked off.
Defeat Commander Vecaya |q 48563 |goto Krokuun/0 38.38,59.73 |future
]],
},
{
rare=[[Imp Mother Laglath]],
level=110,
spot="Krokuun/0 42.05,70.09",
currency="19 VA",
quest=48666,
steps=[[
step
Follow the path |goto Krokuun/0 41.09,65.01 < 15 |only if walking
Follow the path |goto 40.52,67.33 < 20 |only if walking
kill Imp Mother Laglath##125820
|tip Someone should remain in melee range at all times.
|tip Anyone in front of her during Matron's Rage will take fire damage.
Defeat Imp Mother Laglath |q 48666 |goto Krokuun/0 42.05,70.09 |future
]],
},
{
rare=[[Khazaduum]],
level=110,
spot="Krokuun/7 38.95,40.23",
currency="20 VA",
quest=48561,
steps=[[
step
Follow the path |goto Krokuun/0 61.69,46.67 < 15 |only if walking
Follow the path down |goto 60.86,43.69 < 15 |only if walking
Follow the path down |goto 58.58,40.25 < 15 |only if walking
Follow the path down |goto 59.07,38.34 < 15 |only if walking
Follow the path |goto 59.36,33.88 < 20 |only if walking
Follow the path |goto 58.67,31.35 < 15 |only if walking
Follow the path |goto 57.04,28.42 < 15 |only if walking
Follow the path down |goto 56.48,27.47 < 15 |only if walking
Follow the path |goto 54.14,23.54 < 15 |only if walking
Enter the tunnel |goto 50.38,17.36 < 15 |walk
Follow the path |goto Krokuun/7 55.50,67.62 < 15 |walk
Follow the path down |goto 50.76,59.89 < 15 |walk
kill Khazaduum##125824
Defeat Khazaduum |q 48561 |goto Krokuun/7 38.95,40.23 |future
]],
},
{
rare=[[Naroua]],
level=110,
spot="Krokuun/0 71.09,32.75",
item=153190,
quest=48667,
steps=[[
step
Follow the path |goto Krokuun/0 61.70,46.66 < 15 |only if walking
Follow the path |goto 62.56,45.12 < 15 |only if walking
Follow the path up |goto 63.95,42.45 < 20 |only if walking
Follow the path |goto 65.21,38.26 < 20 |only if walking
Follow the path |goto 68.47,36.21 < 20 |only if walking
kill Naroua##126419
|tip Naroua will gain a stacking buff increasing his damage.
|tip You must kill him quickly to avoid taking lethal damage.
Defeat Naroua |q 48667 |goto Krokuun/0 71.09,32.75 |future
]],
},
{
rare=[[Siegemaster Voraan]],
level=110,
spot="Krokuun/0 58.30,75.89",
currency="17 VA",
quest=48627,
steps=[[
step
Follow the path |goto Krokuun/0 57.92,68.12 < 20 |only if walking
Follow the path |goto Krokuun/0 59.25,68.51 < 15 |only if walking
Follow the path |goto Krokuun/0 60.03,70.71 < 15 |only if walking
Follow the path |goto Krokuun/0 58.52,73.71 < 20 |only if walking
kill Siegemaster Voraan##120393
|tip Move out of areas targeted on the ground.
|tip Avoid standing in front of Voraan during Dread Swing.
Defeat Siegemaster Voraan |q 48627 |goto Krokuun/0 58.30,75.89 |future
]],
},
{
rare=[[Sister Subversia]],
level=110,
spot="Krokuun/0 52.83,30.97",
currency="18 VA",
quest=48565,
item=153124,
steps=[[
step
Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
Follow the path down |goto 60.95,43.81 < 15 |only if walking
Follow the path down |goto 58.60,40.18 < 15 |only if walking
Follow the path down |goto 59.01,37.83 < 15 |only if walking
Follow the path |goto 55.78,37.70 < 15 |only if walking
Follow the path |goto 53.31,34.73 < 15 |only if walking
Follow the path |goto 52.04,32.87 < 15 |only if walking
kill Sister Subversia##123464
|tip When she pulls you towards her, RUN AWAY. Failing to run away will result in you being mind controlled.
|tip Move out of areas targeted on the ground.
Defeat Sister Subversia |q 48565 |goto Krokuun/0 52.83,30.97 |future
]],
},
{
rare=[[Talestra the Vile]],
level=110,
spot="Krokuun/0 54.73,81.26",
currency="14 VA",
quest=48628,
steps=[[
step
Follow the path |goto Krokuun/0 57.92,68.12 < 20 |only if walking
Follow the path |goto Krokuun/0 59.25,68.51 < 15 |only if walking
Follow the path |goto Krokuun/0 60.03,70.71 < 15 |only if walking
Follow the path |goto Krokuun/0 57.46,74.88 < 20 |only if walking
Follow the path |goto Krokuun/0 56.49,78.41 < 15 |only if walking
Enter the building |goto Krokuun/0 56.06,79.44 < 15 |walk
kill Talestra the Vile##123689
Defeat Talestra the Vile |q 48628 |goto 54.73,81.26 |future
]],
},
{
rare=[[Tar Spitter]],
level=110,
spot="Krokuun/0 70.15,81.20",
currency="14 VA",
quest=48665,
steps=[[
step
Follow the path |goto Krokuun/0 58.93,68.33 < 20 |only if walking
Follow the path |goto 59.76,67.66 < 15 |only if walking
Follow the path |goto 59.71,64.79 < 15 |only if walking
Follow the path |goto 61.50,62.27 < 15 |only if walking
Go down the stairs |goto 63.05,62.20 < 15 |only if walking
Follow the path |goto 65.54,63.36 < 15 |only if walking
Follow the path |goto Krokuun/0 67.37,66.02 < 20 |only if walking
Follow the path |goto 70.02,68.95 < 20 |only if walking
Follow the path |goto 69.16,71.54 < 15 |only if walking
Follow the path |goto 69.27,76.41 < 15 |only if walking
Follow the path |goto 68.68,78.75 < 15 |only if walking
kill Tar Spitter##125479
|tip Move out of areas targeted on the ground.
Defeat Tar Spitter |q 48665 |goto Krokuun/0 70.15,81.20 |future
]],
},
{
rare=[[Tereck the Selector]],
level=110,
spot="Krokuun/0 69.55,56.45",
currency="18 VA",
quest=48664,
steps=[[
step
Follow the path |goto Krokuun/0 58.93,68.33 < 20 |only if walking
Follow the path |goto 59.76,67.66 < 15 |only if walking
Follow the path |goto 59.71,64.79 < 15 |only if walking
Follow the path |goto 61.50,62.27 < 15 |only if walking
Go down the stairs |goto 63.05,62.20 < 15 |only if walking
Follow the path |goto 65.54,63.36 < 15 |only if walking
Follow the path |goto 67.73,63.27 < 15 |only if walking
Follow the path |goto 70.62,66.74 < 15 |only if walking
Go up the stairs |goto 71.21,64.05 < 15 |only if walking
Follow the path |goto 69.53,61.28 < 15 |only if walking
Enter the cave |goto 69.29,59.33 < 10 |walk
kill Tereck the Selector##124804
Defeat Tereck the Selector |q 48664 |goto Krokuun/0 69.55,56.45 |future
]],
},
{
rare=[[Vagath the Betrayed]],
level=110,
spot="Krokuun/0 60.82,19.72",
currency="11 VA",
quest=48629,
steps=[[
step
Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
Follow the path down |goto 60.95,43.81 < 15 |only if walking
Follow the path down |goto 58.60,40.18 < 15 |only if walking
Follow the path down |goto 59.01,37.83 < 15 |only if walking
Follow the path |goto 59.32,33.03 < 20 |only if walking
Follow the path |goto 60.59,29.86 < 20 |only if walking
Follow the path |goto 62.17,28.78 < 15 |only if walking
Follow the path up |goto 62.81,27.19 < 25 |only if walking
kill Vagath the Betrayed##125388
Defeat Vagath the Betrayed |q 48629 |goto Krokuun/0 60.82,19.72 |future
]],
},
{
rare=[[Ataxon]],
level=110,
spot="Eredath/0 30.12,40.19",
currency="16 VA",
quest=48709,
steps=[[
step
Follow the path |goto Eredath/0 28.63,43.63 < 20 |only if walking
Jump down |goto 29.62,42.49 < 20 |only if walking
kill Ataxon##126887
|tip Avoid standing in the dusty areas on the ground targeted by summoned tentacles.
Defeat Ataxon |q 48709 |goto Eredath/0 30.12,40.19 |future
]],
},
{
rare=[[Baruut the Bloodthirsty]],
level=110,
spot="Eredath/0 43.84,60.62",
currency="13 VA",
quest=48700,
item=153193,
steps=[[
step
Follow the path |goto Eredath/0 44.89,56.80 < 15 |only if walking
kill Baruut the Bloodthirsty##126862
|tip Foul Smash will deal damage and knock you back.
|tip Avoid standing in dust clouds.
Defeat Baruut the Bloodthirsty |q 48700 |goto Eredath/0 43.84,60.62 |future
]],
},
{
rare=[[Captain Faruq]],
level=110,
spot="Eredath/0 27.18,30.03",
currency="14 VA",
quest=48707,
steps=[[
step
Follow the path |goto Eredath/0 26.51,40.34 < 20 |only if walking
Follow the path |goto 27.74,36.15 < 20 |only if walking
kill Captain Faruq##126869
|tip Occasionally, an image of Faruq will jump to you, dealing shadow damage.
|tip Negation Blade will deal damage to you and increase you damage taken by 5% per stack.
|tip Due to the stacking debuff, Faruq should be killed quickly.
Defeat Captain Faruq |q 48707 |goto Eredath/0 27.18,30.03 |future
]],
},
{
rare=[[Commander Xethgar]],
level=110,
spot="Eredath/0 56.86,14.64",
currency="19 VA",
quest=48720,
steps=[[
step
Follow the path |goto Eredath/0 45.67,17.65 < 15 |only if walking
Follow the path |goto 47.44,17.22 < 15 |only if walking
Go down the stairs |goto 48.10,16.32 < 15 |only if walking
Follow the path |goto 48.90,14.14 < 15 |only if walking
Go down the stairs |goto 49.79,13.12 < 10 |only if walking
Go down the stairs |goto 50.87,13.08 < 10 |only if walking
Follow the path |goto 52.42,14.46 < 15 |only if walking
Go down the stairs |goto 53.94,12.56 < 15 |only if walking
kill Commander Xethgar##126910
|tip Move out of areas targeted on the ground during Chaotic Felburst.
Defeat Commander Xethgar |q 48720 |goto Eredath/0 56.86,14.64 |future
]],
},
{
rare=[[Feasel the Muffin Thief]],
level=110,
spot="Eredath/0 41.14,11.50",
currency="18 VA",
quest=48702,
steps=[[
step
Go up the hill |goto Eredath/0 44.01,16.03 < 10 |only if walking
Go up the hill |goto 43.43,16.75 < 10 |only if walking
Follow the path |goto 42.16,15.23 < 15 |only if walking
kill Feasel the Muffin Thief##126864
|tip Feasel will periodically burrow under the ground. Just wait for him to emerge.
Defeat Feasel the Muffin Thief |q 48702 |goto Eredath/0 41.14,11.50 |future
]],
},
{
rare=[[Herald of Chaos]],
level=110,
spot="Eredath/0 35.84,58.63",
currency="13 VA",
quest=48711,
steps=[[
step
Follow the path |goto Eredath/0 44.98,56.57 < 15 |only if walking
Go down the stairs |goto 44.39,58.24 < 15 |only if walking
Follow the path |goto 41.91,59.47 < 20 |only if walking
Go down the stairs |goto 40.44,59.55 < 15 |only if walking
Follow the path |goto 36.71,64.45 < 15 |only if walking
Follow the path |goto 34.95,63.51 < 15 |only if walking
Follow the path |goto 35.19,60.40 < 15 |only if walking
kill Herald of Chaos##126896
|tip Go up the ramp to the top platform.
|tip Don't stand in front of it during Void Exhaust.
|tip Interrupt Dark Bolt whenever possible.
Defeat Herald of Chaos |q 48711 |goto Eredath/0 35.84,58.63 |future
]],
},
{
rare=[[Instructor Tarahna]],
level=110,
spot="Eredath/0 61.34,50.37",
currency="12 VA",
quest=48718,
item=153181,
steps=[[
step
Follow the path |goto Eredath/0 63.44,41.97 < 20 |only if walking
kill Instructor Tarahna##126900
|tip Interrupt Fel Fireball when possible.
|tip Move away from Shadow Nova.
Defeat Instructor Tarahna |q 48718 |goto Eredath/0 61.34,50.37 |future
]],
},
{
rare=[[Jed'hin Champion Vorusk]],
level=110,
spot="Eredath/0 48.10,40.61",
currency="19 VA",
quest=48713,
steps=[[
step
Follow the path |goto Eredath/0 45.39,53.79 < 15 |only if walking
Follow the path |goto 45.77,49.98 < 10 |only if walking
Follow the path |goto 48.05,45.29 < 20 |only if walking
kill Jed'hin Champion Vorusk##126899
|tip Move out of the path of Iron Charge.
|tip Move away during Seismic Stomp.
Defeat Jed'hin Champion Vorusk |q 48713 |goto Eredath/0 48.10,40.61 |future
]],
},
{
rare=[[Kaara the Pale]],
level=110,
spot="Eredath/0 37.79,54.62",
item=153190,
quest=48697,
steps=[[
step
Follow the path |goto Eredath/0 44.97,56.70 < 15 |only if walking
Go down the stairs |goto 44.41,58.12 < 15 |only if walking
Follow the path |goto 42.04,59.56 < 15 |only if walking
Go down the stairs |goto 40.54,58.74 < 15 |only if walking
Follow the path |goto 38.51,56.76 < 10 |only if walking
Enter the cave |goto 38.61,55.54 < 10 |walk
kill Kaara the Pale##126860
|tip Avoid standing in one spot for too long to prevent being stunned when Kaara pounces.
Defeat Kaara the Pale |q 48697 |goto Eredath/0 37.79,54.62 |future
]],
},
{
rare=[[Overseer Y'Beda]],
level=110,
spot="Eredath/0 58.75,37.62",
currency="14 VA",
quest=48714,
steps=[[
step
kill Overseer Y'Beda##124440
|tip Move out of Consecration on the ground.
Defeat Overseer Y'Beda |q 48714 |goto Eredath/0 58.75,37.62 |future
]],
},
{
rare=[[Overseer Y'Morna]],
level=110,
spot="Eredath/0 60.93,29.75",
currency="17 VA",
quest=48717,
steps=[[
step
Follow the path |goto Eredath/0 58.84,34.02 < 25 |only if walking
kill Overseer Y'Morna##125498
|tip Move out of Consecration on the ground.
Defeat Overseer Y'Morna |q 48717 |goto Eredath/0 60.93,29.75 |future
]],
},
{
rare=[[Overseer Y'Sorna]],
level=110,
spot="Eredath/0 57.16,30.03",
currency="17 VA",
quest=48716,
steps=[[
step
Follow the path |goto Eredath/0 57.33,37.61 < 20 |only if walking
kill Overseer Y'Sorna##125497
|tip Move out of Consecration on the ground.
|tip During Frenzy, Y'Sorna's damage will be increased.
Defeat Overseer Y'Sorna |q 48716 |goto Eredath/0 57.16,30.03 |future
]],
},
{
rare=[[Sabuul]],
level=110,
spot="Eredath/0 44.06,48.22",
item=153190,
quest=48712,
steps=[[
step
Follow the path |goto Eredath/0 44.27,54.48 < 15 |only if walking
Follow the path |goto 43.60,52.08 < 15 |only if walking
kill Sabuul##126898
|tip Avoid standing in one spot for too long to prevent being stunned when Sabuul pounces.
Defeat Sabuul |q 48712 |goto Eredath/0 44.06,48.22 |future
]],
},
{
rare=[[Shadowcaster Voruun]],
level=110,
spot="Eredath/0 44.53,71.66",
quest=48692,
steps=[[
step
Follow the path |goto Eredath/0 50.42,71.93 < 20 |only if walking
Follow the path |goto 47.95,69.03 < 20 |only if walking
Follow the path |goto 46.80,69.14 < 15 |only if walking
kill Shadowcaster Voruun##122838
|tip Interrupt Shadow Storm whenever possible.
Defeat Shadowcaster Voruun |q 48692 |goto Eredath/0 44.53,71.66 |future
]],
},
{
rare=[[Skreeg the Devourer]],
level=110,
spot="Eredath/0 49.70,09.90",
item=152904,
quest=48721,
steps=[[
step
Follow the path |goto Eredath/0 45.67,17.65 < 15 |only if walking
Follow the path |goto 47.44,17.22 < 15 |only if walking
Go down the stairs |goto 48.10,16.32 < 15 |only if walking
Follow the path |goto 48.90,14.14 < 15 |only if walking
Go down the stairs |goto 49.79,13.12 < 10 |only if walking
Go down the stairs |goto 50.87,13.08 < 10 |only if walking
Follow the path |goto 52.42,14.46 < 15 |only if walking
Go down the stairs |goto 53.94,12.56 < 15 |only if walking
Follow the path |goto 52.96,11.09 < 15 |only if walking
kill Skreeg the Devourer##126912
|tip Ravenous Scream will fear everyone within a small radius. Ensure that you are not near additional mobs.
Defeat Skreeg the Devourer |q 48721 |goto Eredath/0 49.70,09.90 |future
]],
},
{
rare=[[Slithon the Last]],
level=110,
spot="Eredath/0 48.60,52.46",
currency="16 VA",
quest=48935,
steps=[[
step
kill Slithon the Last##126913
|tip Slithon is swimming in the water.
Defeat Slithon the Last |q 48935 |goto Eredath/0 48.60,52.46 |future
]],
},
{
rare=[[Sorolis the Ill-Fated]],
level=110,
spot="Eredath/0 70.23,45.96",
currency="11 VA",
quest=48710,
steps=[[
step
Go up the hill |goto Eredath/0 64.38,42.20 < 15 |only if walking
Follow the path |goto 65.96,44.23 < 20 |only if walking
Follow the path |goto 68.31,46.00 < 15 |only if walking
kill Sorolis the Ill-Fated##126889
|tip Interrupt Chaotic Flames whenever possible.
|tip Dark Rift will summon a small number of Hungering Stalkers.
Defeat Sorolis the Ill-Fated |q 48710 |goto Eredath/0 70.23,45.96 |future
]],
},
{
rare=[[Soultwisted Monstrosity]],
level=110,
spot="Eredath/0 52.92,67.15",
currency="12 VA",
quest=48693,
steps=[[
step
kill Soultwisted Monstrosity##126815
|tip Terror Howl will fear you for a few seconds. Be sure there are no nearby mobs.
Defeat Soultwisted Monstrosity |q 48693 |goto Eredath/0 52.92,67.15 |future
]],
},
{
rare=[[Turek the Lucid]],
level=110,
spot="Eredath/0 38.23,64.38",
currency="20 VA",
quest=48706,
steps=[[
step
Follow the path |goto Eredath/0 44.99,56.58 < 20 |only if walking
Go down the stairs |goto 44.43,58.15 < 15 |only if walking
Follow the path |goto 44.07,63.43 < 15 |only if walking
Follow the path down |goto 44.13,65.79 < 15 |only if walking
Follow the path down |goto 42.25,67.07 < 15 |only if walking
Enter the building |goto 39.11,66.58 < 10 |walk
kill Turek the Lucid##126868
|tip Interrupt Nether Touch whenever possible.
Defeat Turek the Lucid |q 48706 |goto Eredath/0 38.23,64.38 |future
]],
},
{
rare=[[Umbraliss]],
level=110,
spot="Eredath/0 35.20,37.20",
currency="13 VA",
quest=48708,
steps=[[
step
Follow the path |goto Eredath/0 28.63,43.63 < 20 |only if walking
Jump down |goto 29.62,42.49 < 20 |only if walking
Follow the path |goto Eredath/0 32.69,40.96 < 20 |only if walking
Follow the path |goto Eredath/0 34.40,38.96 < 15 |only if walking
kill Umbraliss##126885
|tip Don't stand in front of Umbraliss during Dark Breath.
Defeat Umbraliss |q 48708 |goto Eredath/0 35.20,37.20 |future
]],
},
{
rare=[[Venomtail Skyfin]],
level=110,
spot="Eredath/0 33.70,47.50",
item=152844,
quest=48705,
steps=[[
step
Follow the path |goto Eredath/0 28.59,43.66 < 10 |only if walking
Jump down |goto 29.31,42.94 < 10 |only if walking
Follow the path |goto 34.09,41.95 < 15 |only if walking
Follow the path |goto 33.84,45.39 < 15 |only if walking
Jump down |goto 33.64,46.58 < 15 |only if walking
kill Venomtail Skyfin##126867
|tip Avoid standing in front during Dark Torrent.
|tip Interrupt Shattering Screech.
|tip If a Shattering Screech cast goes of, ensure that you are not actively casting when it completes.
Defeat Venomtail Skyfin |q 48705 |goto Eredath/0 33.70,47.50 |future
]],
},
{
rare=[[Vigilant Kuro]],
level=110,
spot="Eredath/0 63.82,64.31",
currency="17 VA",
quest=48704,
steps=[[
step
Follow the path |goto Eredath/0 55.76,71.31 < 15 |only if walking
Go down the stairs |goto 57.06,69.89 < 15 |only if walking
Follow the path |goto 59.19,65.67 < 15 |only if walking
Follow the path |goto 60.73,63.91 < 15 |only if walking
kill Vigilant Kuro##126866
|tip Don't stand in front of him during Avenging Wave.
|tip Interrupt Searing Wrath or move out of areas targeted on the ground.
Defeat Vigilant Kuro |q 48704 |goto Eredath/0 63.82,64.31 |future
]],
},
{
rare=[[Vigilant Thanos]],
level=110,
spot="Eredath/0 36.69,23.86",
currency="14 VA",
quest=48703,
steps=[[
step
Follow the path |goto Eredath/0 26.80,40.21 < 30 |only if walking
Follow the path |goto 27.64,33.46 < 30 |only if walking
Follow the path |goto 31.94,26.21 < 30 |only if walking
Follow the path |goto 34.18,24.16 < 20 |only if walking
kill Vigilant Thanos##126865
|tip Run against the pull of Crushing Darkness.
|tip During his Annihlation cast, move away to a safe distance.
Defeat Vigilant Thanos |q 48703 |goto Eredath/0 36.69,23.86 |future
]],
},
{
rare=[[Wrangler Kravos]],
level=110,
spot="Eredath/0 55.77,59.34",
item=152814,
quest=48695,
steps=[[
step
Follow the path |goto Eredath/0 54.50,73.30 < 15 |only if walking
Follow the path |goto 56.22,70.90 < 20 |only if walking
Go down the stairs |goto 57.12,69.82 < 15 |only if walking
Follow the path |goto 57.64,66.23 < 20
kill Wrangler Kravos##126852
|tip Avoid standing in Bladestorm.
|tip Don't stand in front of Kravos when he charges.
Defeat Wrangler Kravos |q 48695 |goto Eredath/0 55.77,59.34 |future
]],
},
{
rare=[[Zul'tan the Numerous]],
level=110,
spot="Eredath/0 66.76,28.44",
currency="18 VA",
quest=48719,
steps=[[
step
Follow the path |goto Eredath/0 63.61,41.36 < 30 |only if walking
Follow the path up |goto 65.14,40.87 < 20 |only if walking
Follow the path |goto 63.19,32.38 < 30 |only if walking
Enter the building |goto 64.00,29.56 < 7 |walk
kill Zul'tan the Numerous##126908
|tip Move out of ooze pools on the ground.
Defeat Zul'tan the Numerous |q 48719 |goto Eredath/0 66.76,28.44 |future
]],
},
{
rare=[[Count Nefarious]],
level=98,
spot="Mardum, the Shattered Abyss C/0 63.6,23.6",
item=128948,
quest=40231,
steps=[[
step
Go up the path |goto Mardum, the Shattered Abyss C/0 63.40,25.82 < 10
kill Count Nefarious##97058 |q 40231 |future |goto Mardum, the Shattered Abyss C/2 51.43,56.25
|tip Clicking the Wells of Souls in this room will stun Nefarious for a few seconds.
]],
},
{
rare=[[General Volroth]],
level=98,
spot="Mardum, the Shattered Abyss C/0 68.6,27.6",
item=128947,
quest=40234,
steps=[[
step
kill General Volroth##97370 |q 40234 |future |goto Mardum, the Shattered Abyss C/0 68.6,27.6
]],
},
{
rare=[[King Voras]],
level=98,
spot="Mardum, the Shattered Abyss C/0 74.4,57.2",
item=128944,
quest=40232,
steps=[[
step
Go up the path |goto Mardum, the Shattered Abyss C/0 73.32,56.05 < 10
kill King Voras##97059 |q 40232 |future |goto Mardum, the Shattered Abyss C/0 74.4,57.2
]],
},
{
rare=[[Overseer Brutarg]],
level=98,
spot="Mardum, the Shattered Abyss C/0 80.8,41.6",
item=133580,
quest=40233,
steps=[[
step
kill Overseer Brutarg##97057 |q 40233 |future |goto Mardum, the Shattered Abyss C/0 80.8,41.6
]],
},
{
rare=[[Daniel "Boomer" Vorick]],
level=100,
spot="Stormheim/0 58.44,75.63",
currency="OR",
quest=39048,
item=129144,
condition=[[only Horde]],
steps=[[
step
kill Daniel "Boomer" Vorick##94313 |q 39048 |future |goto Stormheim/0 58.44,75.63
]],
},
{
rare=[[Whitewater Typhoon]],
level=100,
spot="Stormheim 36.49,51.75",
currency="OR",
quest=38472,
item=138418,
steps=[[
step
kill Whitewater Typhoon##92152 |q 38472 |future |goto Stormheim 36.49,51.75
]],
},
{
rare=[[Bloodstalker Alpha]],
level=100,
spot="Stormheim 38.45,43.05",
currency="OR",
quest=38626,
item=129101,
steps=[[
step
kill Bloodstalker Alpha##92599 |q 38626 |future |goto Stormheim 38.45,43.05
|tip It runs around the area and may not be in this exact spot.
]],
},
{
rare=[[Thane Irglov the Merciless]],
level=100,
spot="Stormheim 40.67,72.38",
currency="OR",
quest=38424,
item=129113,
steps=[[
step
Enter the building |goto Stormheim/0 42.18,70.92 < 10 |walk
kill Erling the Lightningborn##91893, Asger Jarlborn##91895, Strider Cuyler##91894 |goto Stormheim/0 41.18,71.89 < 5 |walk
kill Thane Irglov the Merciless##91892 |q 38424 |future |goto Stormheim 40.67,72.38
]],
},
{
rare=[[Glimar Ironfist]],
level=100,
spot="Stormheim 41.47,67.02",
currency="OR",
quest=38333,
item=129291,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 41.43,65.67 < 5 |only if walking
kill Glimar Ironfist##91529 |q 38333 |future |goto Stormheim/0 41.55,66.56
]],
},
{
rare=[[Egyl the Enduring]],
level=100,
spot="Stormheim 41.77,34.11",
currency="OR",
quest=40068,
item=132898,
steps=[[
step
Enter the cave |goto Stormheim 41.4,31.9 < 10 |walk
kill Egyl the Enduring##98188 |q 40068 |future |goto Stormheim 41.77,34.11
]],
},
{
rare=[[Worgen Stalkers]],
level=100,
spot="Stormheim 44.20,22.96",
item=129264,
quest=38627,
condition=[[only Horde]],
steps=[[
step
kill Ambusher Daggerfang##92611, Priestess Liza##92613, Tracker Jack##92609, Champion Elodie##92604
Defeat the Worgen Stalkers |q 38627 |future |goto Stormheim 44.20,22.96
]],
},
{
rare=[[Bladesquall]],
level=100,
spot="Stormheim 45.87,77.36",
currency="OR",
quest=38431,
item=129048,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 46.36,74.37 < 5 |only if walking
Follow the narrow path up |goto 46.68,75.28 < 10 |only if walking
kill Bladesquall##91874 |q 38431 |future |goto Stormheim 45.87,77.36
]],
},
{
rare=[[Fathnyr]],
level=100,
spot="Stormheim 46.82,84.06",
currency="OR",
quest=38425,
item=129206,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 45.93,82.54 < 5 |only if walking
Enter the cave |goto 46.29,82.87 < 10 |walk
kill Fathnyr##91803 |q 38425 |future |goto Stormheim 46.82,84.06
|tip It is inside the cave at the top of Thorim's Peak.
]],
},
{
rare=[[Tiptog the Lost]],
level=100,
spot="Stormheim 47.17,49.83",
currency="OR",
quest=38774,
item=129163,
steps=[[
step
kill Tiptog the Lost##93166 |q 38774 |future |goto Stormheim 47.17,49.83
|tip He walks around the area and may not be in this exact spot.
]],
},
{
rare=[[Houndmaster Ely]],
level=100,
spot="Stormheim 47.20,57.10",
currency="OR",
quest=38712,
item=129037,
condition=[[only Horde]],
steps=[[
step
kill Houndmaster Ely##92951 |q 38712 |future |goto Stormheim 47.20,57.10
]],
},
{
rare=[[Stormwing Matriarch]],
level=100,
spot="Stormheim 49.50,71.75",
item=129208,
quest=38423,
steps=[[
step
Follow the path up |goto Stormheim/0 51.58,76.58 < 25 |only if walking
kill Stormwing Matriarch##91795 |q 38423 |future |goto Stormheim 49.50,71.75
]],
},
{
rare=[[Hannval the Butcher]],
level=100,
spot="Stormheim 51.60,74.65",
currency="OR",
quest=42591,
item=138417,
steps=[[
step
Follow the path |goto Stormheim/0 56.55,75.63 < 10 |only if walking
Continue up the path |goto Stormheim/0 57.35,79.10 < 10 |only if walking
kill Hannval the Butcher##107926 |q 42591 |future |goto Stormheim 51.60,74.65
]],
},
{
rare=[[Starbuck]],
level=100,
spot="Stormheim 54.80,29.41",
currency="OR",
quest=42437,
item=130132,
steps=[[
step
kill Starbuck##107487 |q 42437 |future |goto Stormheim 54.80,29.41
]],
},
{
rare=[[Captain Brvet]],
level=100,
spot="Stormheim 58.00,45.16",
currency="OR",
quest=38642,
item=129123,
steps=[[
step
click Horn of the Hellmouth
kill Captain Brvet##92685 |q 38642 |future |goto Stormheim 58.00,45.16
|tip You will need to kill two raiders before Brvet leaves the boat.
]],
},
{
rare=[[Roteye]],
level=100,
spot="Stormheim 58.35,33.92",
currency="OR",
quest=43342,
item=139387,
steps=[[
step
Enter the cave |goto Stormheim 57.7,34.8 < 10 |walk
|tip It's down in Tideskorn Harbor.
kill Roteye##110363 |q 43342 |future |goto Stormheim 58.35,33.92
]],
},
{
rare=[[Ivory Sentinel]],
level=100,
spot="Stormheim 59.82,68.07",
currency="OR",
quest=39031,
item=132895,
steps=[[
step
kill Ivory Sentinel##92751 |q 39031 |future |goto Stormheim 59.82,68.07
]],
},
{
rare=[[Tarben]],
level=100,
spot="Stormheim 61.53,43.33",
currency="OR",
quest=40081,
item=129199,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 60.37,43.81 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 60.90,43.91 < 5 |only if walking
kill Tarben##98268 |q 40081 |future |goto Stormheim 61.53,43.33
]],
},
{
rare=[[Isel the Hammer]],
level=100,
spot="Stormheim 62.03,60.49",
currency="OR",
quest=39120,
item=129133,
steps=[[
step
Enter the building |goto Stormheim 61.8,60.9 < 10 |walk
kill Isel the Hammer##94413 |q 39120 |future |goto Stormheim 62.03,60.49
]],
},
{
rare=[[Inquisitor Ernstenbok]],
level=100,
spot="Stormheim 63.70,74.22",
currency="OR",
quest=37908,
item=140686,
steps=[[
step
Enter the cave |goto Stormheim/0 62.35,75.01 < 10 |walk
kill Inquisitor Ernstenbok##90139 |q 37908 |future |goto Stormheim 63.70,74.22
]],
},
{
rare=[[Urgev the Flayer]],
level=100,
spot="Stormheim 64.80,51.76",
currency="OR",
quest=38847,
item=129219,
steps=[[
step
kill Urgev the Flayer##93401 |q 38847 |future |goto Stormheim 64.80,51.76
]],
},
{
rare=[[The Nameless King]],
level=100,
spot="Stormheim 67.30,39.90",
currency="OR",
quest=38685,
item=129041,
steps=[[
step
click Offering Shrine##241568
kill The Nameless King##92763 |q 38685 |future |goto Stormheim 67.30,39.90
]],
},
{
rare=[[Mordvigbjorn]],
level=100,
spot="Stormheim 72.50,49.91",
currency="OR",
quest=38837,
item=129035,
steps=[[
step
kill Mordvigbjorn##93371 |q 38837 |future |goto Stormheim 72.50,49.91
]],
},
{
rare=[[Kottr Vondyr]],
level=100,
spot="Stormheim 73.45,47.63",
currency="OR",
quest=40109,
item=138419,
steps=[[
step
Enter Inkbinder's Rise |goto Stormheim/0 71.44,47.12 < 10
kill Kottr Vondyr##98421 |q 40109 |future |goto Stormheim 73.45,47.63
]],
},
{
rare=[[Grrvrgull the Conqueror]],
level=100,
spot="Stormheim 78.62,61.16",
currency="OR",
quest=40113,
item=138421,
steps=[[
step
kill Grrvrgull the Conqueror##98503 |q 40113 |future |goto Stormheim 78.62,61.16
]],
},
{
rare=[[Tideclaw]],
level=110,
spot="Suramar/0 18.55,61.14",
currency="AM",
quest=43542,
item=140399,
steps=[[
step
kill Tideclaw##110824 |q 43542 |future |goto Suramar/0 18.55,61.14
]],
},
{
rare=[[Mar'tura]],
level=110,
spot="Suramar 13.53,53.44",
currency="AM",
quest=44124,
item=140949,
steps=[[
step
kill Mar'tura##112802 |q 44124 |future |goto Suramar 13.53,53.44
]],
},
{
rare=[[Shadowquill]],
level=110,
spot="Suramar 16.70,27.04",
currency="AM",
quest=43996,
item=140401,
steps=[[
step
kill Shadowquill##103841 |q 43996 |future |goto Suramar 16.70,27.04
]],
},
{
rare=[[Elfbane]],
level=110,
spot="Suramar 22.13,51.78",
currency="AM",
quest=41319,
item=121806,
steps=[[
step
kill Elfbane##99792 |q 41319 |future |goto Suramar 22.13,51.78
|tip You may need a group to defeat him.
]],
},
{
rare=[[Rauren]],
level=110,
spot="Suramar 24.05,25.42",
currency="AM",
quest=43484,
item=121759,
steps=[[
step
kill Rauren##105547 |q 43484 |future |goto Suramar 24.05,25.42
]],
},
{
rare=[[Maia the White]],
level=110,
spot="Suramar 24.39,35.17",
currency="OR",
item=139897,
quest=44071,
steps=[[
step
kill Maia the White##112497 |q 44071 |future |goto Suramar 24.39,35.17
]],
},
{
rare=[[Oreth the Vile]],
level=110,
spot="Suramar 24.57,47.40",
currency="AM",
quest=43449,
item=140388,
steps=[[
step
kill Oreth the Vile##110577 |q 43449 |future |goto Suramar 24.57,47.40
]],
},
{
rare=[[Shal'an]],
level=110,
spot="Suramar 26.24,41.19",
currency="AM",
quest=42831,
item=139926,
steps=[[
step
Enter the building |goto Suramar/0 25.94,40.82 < 10 |walk
kill Shal'an##109054 |q 42831 |future |goto Suramar 26.24,41.19
]],
},
{
rare=[[Gorgroth]],
level=110,
spot="Suramar 27.77,65.47",
currency="AM",
quest=43992,
item=121747,
steps=[[
step
click Portal Key |goto Suramar 27.77,65.47 < 5 |walk
kill Gorgroth##110832 |q 43992 |future |goto Suramar 27.29,66.02
]],
},
{
rare=[[Llorian]],
level=110,
spot="Suramar 29.39,53.30",
currency="OR",
item=138839,
quest=44676,
steps=[[
step
Enter the cave |goto Suramar 29.3,50.8 < 10 |walk
talk Llorian##113368 |goto Suramar 29.39,53.30 < 5 |walk
kill Withered Shambler##98555+
Select _<Feed Llorian 25 Ancient Mana.>_
|tip Defeat the waves of enemies that attack.
click Llorian's Supplies##255341 |q 44676 |future |goto Suramar 29.39,53.30
]],
},
{
rare=[[Anax]],
level=110,
spot="Suramar 33.72,51.23",
currency="AM",
quest=43954,
item=140934,
steps=[[
step
kill Anax##111197 |q 43954 |future |goto Suramar 33.72,51.23
]],
},
{
rare=[[Artificer Lothaire]],
level=110,
spot="Suramar 33.78,15.09",
currency="AM",
quest=43717,
item=140372,
steps=[[
step
kill Damaged Spell Seeker Construct##106349+
|tip Kill the constructs as they become active.
kill Artificer Lothaire##106351 |q 43717 |future |goto Suramar 33.78,15.09
]],
},
{
rare=[[Mal'Dreth the Corruptor]],
level=110,
spot="Suramar 34.17,60.99",
currency="AM",
quest=43351,
item=140386,
steps=[[
step
kill Mal'Dreth the Corruptor##110024 |q 43351 |future |goto Suramar 34.17,60.99
]],
},
{
rare=[[Lady Rivantas]],
level=110,
spot="Suramar 35.23,67.23",
currency="AM",
quest=44675,
item=141866,
steps=[[
step
Enter the building |goto Suramar/0 33.92,66.99 < 10 |walk
Go up the stairs |goto 34.25,68.58 < 10 |walk
kill Lady Rivantas##106526 |q 44675 |future |goto Suramar 35.23,67.23
]],
},
{
rare=[[Matron Hagatha]],
level=110,
spot="Suramar 36.18,33.81",
currency="OR",
quest=43718,
item=140390,
steps=[[
step
Follow the path |goto Suramar 40.3,26.2 < 10 |only if walking
Enter the cave |goto Suramar/0 35.87,34.54 < 10 |walk
kill Matron Hagatha##111329 |q 43718 |future |goto Suramar 36.18,33.81
]],
},
{
rare=[[Siegemaster Aedrin]],
level=110,
spot="Suramar 37.14,21.37",
currency="AM",
quest=43369,
item=140406,
steps=[[
step
Cross the bridge |goto Suramar/0 39.19,24.51 < 10 |only if walking
kill Siegemaster Aedrin##110438 |q 43369 |future |goto Suramar 37.14,21.37
]],
},
{
rare=[[Myonix]],
level=110,
spot="Suramar 40.96,32.82",
currency="AM",
quest=43358,
item=121739,
steps=[[
step
kill Myonix##110340 |q 43358 |future |goto Suramar 40.96,32.82
]],
},
{
rare=[[Magister Phaedris]],
level=110,
spot="Suramar 42.05,80.05",
currency="OR",
quest=43348,
item=140405,
steps=[[
step
Go up the stairs |goto Suramar/0 41.54,78.75 < 10 |only if walking
kill Magister Phaedris##109954 |q 43348 |future |goto Suramar 42.05,80.05
]],
},
{
rare=[[Apothecary Faldren]],
level=110,
spot="Suramar 42.17,56.41",
currency="AM",
quest=43580,
item=121754,
steps=[[
step
kill Apothecary Faldren##110870 |q 43580 |future |goto Suramar 42.17,56.41
]],
},
{
rare=[[Lieutenant Strathmar]],
level=110,
spot="Suramar 48.53,56.68",
currency="AM",
quest=40905,
item=121735,
steps=[[
step
Enter the building |goto Suramar/0 47.70,54.52 < 10 |walk
kill Lieutenant Strathmar##102303 |q 40905 |future |goto Suramar 48.53,56.68
]],
},
{
rare=[[Randril]],
level=110,
spot="Suramar 49.60,79.00",
currency="AM",
quest=43603,
item=140396,
steps=[[
step
Go up the stairs |goto Suramar/0 46.72,76.99 < 10 |only if walking
Cross the bridge |goto 48.31,77.46 < 10 |only if walking
kill Randril##111007 |q 43603 |future |goto Suramar 49.60,79.00
]],
},
{
rare=[[Garvrulg]],
level=110,
spot="Suramar 53.19,30.21",
currency="AM",
quest=40897,
item=121755,
steps=[[
step
Enter the cave |goto Suramar 49.5,33.9 < 10 |walk
Go up the path |goto Suramar/0 51.89,31.83 < 10 |walk
Continue up the path |goto 51.01,30.67 < 10 |walk
Follow the path around |goto 50.94,29.94 < 10 |walk
kill Garvrulg##99610 |q 40897 |future |goto Suramar 53.19,30.21
]],
},
{
rare=[[Degren]],
level=110,
spot="Suramar 54.43,56.12",
currency="AM",
quest=43792,
item=121808,
steps=[[
step
kill Degren##111651 |q 43792 |future |goto Suramar 54.43,56.12
|tip Clear the area of enemies before pulling Degren.
]],
},
{
rare=[[Ambassador D'vwinn]],
level=110,
spot="Suramar 54.80,63.76",
currency="AM",
quest=43794,
item=139918,
steps=[[
step
Go up the stairs |goto Suramar/0 55.78,62.39 < 10 |only if walking
kill Ambassador D'vwinn##111649 |q 43794 |future |goto Suramar 54.80,63.76
|tip He is surrounded by enemies, you will probably need a group to defeat him.
]],
},
{
rare=[[Guardian Thor'el]],
level=110,
spot="Suramar 61.01,52.98",
currency="AM",
quest=43597,
item=140404,
steps=[[
step
kill Guardian Thor'el##110944 |q 43597 |future |goto Suramar 61.01,52.98
|tip He patrols up and down this road, and may not be in this exact spot.
]],
},
{
rare=[[Hertha Grimdottir]],
level=110,
spot="Suramar 61.66,39.58",
currency="AM",
quest=43993,
item=121737,
steps=[[
step
Enter the cave |goto Suramar/0 61.75,39.59 < 10 |walk
kill Hertha Grimdottir##103223 |q 43993 |future |goto Suramar 61.66,39.58
]],
},
{
rare=[[Miasu]],
level=110,
spot="Suramar 62.50,63.69",
currency="OR",
item=121810,
quest=43793,
steps=[[
step
Go up the stairs |goto Suramar/0 61.16,63.11 < 10 |only if walking
kill Miasu##111653 |q 43793 |future |goto Suramar 62.50,63.69
]],
},
{
rare=[[Cadraeus]],
level=110,
spot="Suramar 62.56,48.08",
currency="AM",
quest=43495,
item=139969,
steps=[[
step
kill Cadraeus##110726 |q 43495 |future |goto Suramar 62.56,48.08
]],
},
{
rare=[[Arcanist Lylandre]],
level=110,
spot="Suramar 65.57,59.14",
currency="AM",
quest=43481,
item=140403,
steps=[[
step
Go up the stairs |goto Suramar/0 64.82,58.44 < 10 |only if walking
clicknpc Lylandre's Arcane Crystal##110649 |goto 65.49,58.87 < 5 |walk
clicknpc Lylandre's Fire Crystal##110652 |goto Suramar/0 65.75,59.00 < 5 |walk
clicknpc Lylandre's Fel Crystal##110694 |goto 65.67,59.38 < 5 |walk
clicknpc Lylandre's Frost Crystal##110651 |goto 65.42,59.25 < 5 |walk
kill Arcanist Lylandre##110656 |q 43481 |future |goto Suramar 65.57,59.14
]],
},
{
rare=[[Pinchshank]],
level=110,
spot="Suramar 66.65,67.13",
currency="AM",
quest=43968,
item=140314,
steps=[[
step
kill Pinchshank##107846 |q 43968 |future |goto Suramar 66.65,67.13
]],
},
{
rare=[[Har'kess the Insatiable]],
level=110,
spot="Suramar 67.67,71.06",
currency="AM",
quest=41136,
item=140381,
steps=[[
step
Enter the cave |goto Suramar 72.39,68.08 < 10 |walk
kill Har'kess the Insatiable##103214 |q 41136 |future |goto Suramar 67.67,71.06
]],
},
{
rare=[[Cora'Kar]],
level=110,
spot="Suramar 68.17,58.96",
currency="OR",
item=139952,
quest=41135,
steps=[[
step
Enter the cave |goto Suramar 70.0,56.9 < 10 |walk
kill Cora'Kar##100864 |q 41135 |future |goto Suramar 68.17,58.96
]],
},
{
rare=[[Reef Lord Raj'his]],
level=110,
spot="Suramar 75.52,57.29",
currency="AM",
quest=44003,
item=121801,
steps=[[
step
kill Reef Lord Raj'his##103575 |q 44003 |future |goto Suramar 75.52,57.29
]],
},
{
rare=[[Rok'nash]],
level=110,
spot="Suramar 80.15,70.00",
currency="AM",
quest=40680,
item=140019,
steps=[[
step
kill Rok'nash##103183 |q 40680 |future |goto Suramar 80.15,70.00
]],
},
{
rare=[[King Morgalash]],
level=110,
spot="Suramar 87.45,62.35",
currency="OR",
quest=41786,
item=140384,
steps=[[
step
clicknpc Jandvik Banner##103467
kill Sashj'tar Wave Crusher##103930+, Sashj'tar Wave Breaker##103929+, Elder Trenchwalker##103932+
|tip Kill the enemies that attack in waves.
kill King Morgalash##103827 |q 41786 |future |goto Suramar 87.45,62.35
]],
},
{
rare=[[Kiranys Duskwhisper]],
level=100,
spot="Val'sharah 34.42,58.28",
currency="OR",
quest=39121,
item=141876,
steps=[[
step
Go up the path |goto Val'sharah/0 35.03,59.57 < 10 |only if walking
click Vibrating Arcane Trap##243099
kill Kiranys Duskwhisper##94414 |q 39121 |future |goto Val'sharah 34.42,58.28
]],
},
{
rare=[[Theryssia]],
level=100,
spot="Val'sharah 38.06,52.81",
currency="OR",
quest=38772,
item=130136,
steps=[[
step
clicknpc Theryssia##94194 |goto Val'sharah/0 37.95,52.81 < 5 |walk
kill Theryssia##92423 |q 38772 |future |goto Val'sharah 38.06,52.81
]],
},
{
rare=[[Seersei]],
level=100,
spot="Val'sharah 41.64,78.27",
currency="OR",
quest=38479,
item=130171,
steps=[[
step
kill Seersei##92180 |q 38479 |future |goto Val'sharah 41.64,78.27
]],
},
{
rare=[[Darkshade]],
level=100,
spot="Val'sharah 44.14,52.09",
currency="OR",
quest=38767,
item=130166,
steps=[[
step
Follow the road |goto Val'sharah 37.74,56.26 < 10 |only if walking
Enter Black Rook Hold |goto Val'sharah/0 39.00,53.73 < 10 |walk
kill Darkshade##92965 |q 38767 |future |goto Val'sharah 44.14,52.09
|tip He walks around this area.
]],
},
{
rare=[[Bahagar]],
level=100,
spot="Val'sharah 45.59,88.79",
currency="OR",
quest=43446,
item=130135,
steps=[[
step
Follow the path |goto Val'sharah 45.9,85.06 < 10 |only if walking
Enter the cave |goto Val'sharah/0 45.38,88.30 < 10 |walk
kill Bahagar##110562 |q 43446 |future |goto Val'sharah 45.59,88.79
]],
},
{
rare=[[Mad Henryk]],
level=100,
spot="Val'sharah 47.22,58.02",
currency="OR",
quest=39357,
item=130214,
steps=[[
step
Step into the Old Bear Trap
kill Mad Henryk##95221 |q 39357 |future |goto Val'sharah 47.22,58.02
|tip When he summons copies of himself walk into them to find the real one.
]],
},
{
rare=[[Shivering Ashmaw Cub]],
level=100,
spot="Val'sharah 52.78,87.50",
item=128690,
quest=38889,
steps=[[
step
Enter the cave |goto Val'sharah/0 53.07,87.78 < 10 |walk
talk Shivering Ashmaw Cub##93677
|tip Defeat the waves of enemies that come.
accept Adopting the Adorable##38889 |future |goto Val'sharah 52.78,87.50
]],
},
{
rare=[[Ironbranch]],
level=100,
spot="Val'sharah 58.77,34.02",
currency="1220",
quest=40080,
steps=[[
step
kill Ironbranch##93030 |q 40080 |future |goto Val'sharah 58.77,34.02
]],
},
{
rare=[[Gorebeak]],
level=100,
spot="Val'sharah 59.75,77.59",
currency="OR",
quest=38468,
item=130154,
steps=[[
step
talk Lorel Sagefeather##92111 |goto Val'sharah/0 59.80,77.37 < 5
kill Gorebeak##92117 |q 38468 |future |goto Val'sharah 59.75,77.59
|tip You may need a group to defeat him.
]],
},
{
rare=[[Dreadbog]],
level=100,
spot="Val'sharah 60.31,44.27",
currency="OR",
quest=39858,
item=130125,
steps=[[
step
kill Dreadbog##97517 |q 39858 |future |goto Val'sharah 60.31,44.27
]],
},
{
rare=[[Elindya Featherlight]],
level=100,
spot="Val'sharah 60.42,90.72",
item=130115,
quest=38887,
steps=[[
step
clicknpc Elindya Featherlight##92334 |goto Val'sharah 60.42,90.72 < 5 |walk
|tip Follow Elindya as she walks.
kill Skul'vrax##93654 |q 38887 |future |goto Val'sharah 60.88,87.91
]],
},
{
rare=[[Perrexx]],
level=100,
spot="Val'sharah 61.05,69.40",
item=130137,
quest=39596,
steps=[[
step
kill Perrexx##95318 |q 39596 |future |goto Val'sharah 61.05,69.40
]],
},
{
rare=[[Lyrath Moonfeather]],
level=100,
spot="Val'sharah 61.79,29.54",
currency="OR",
quest=40079,
item=130118,
steps=[[
step
kill Lyrath Moonfeather##98241 |q 40079 |future |goto Val'sharah 61.79,29.54
]],
},
{
rare=[[Thondrax]],
level=100,
spot="Val'sharah 62.60,47.50",
currency="OR",
quest=38780,
item=130121,
steps=[[
step
kill Thondrax##93205 |q 38780 |future |goto Val'sharah 62.60,47.50
]],
},
{
rare=[[Grelda the Hag]],
level=100,
spot="Val'sharah 65.80,53.44",
currency="OR",
quest=40126,
item=130122,
steps=[[
step
Enter the cave |goto Val'sharah/0 66.09,52.60 < 10 |walk
kill Grelda the Hag##95123 |q 40126 |future |goto Val'sharah 65.80,53.44
]],
},
{
rare=[[Wraithtalon]],
level=100,
spot="Val'sharah 66.87,36.86",
currency="OR",
quest=39856,
item=130116,
steps=[[
step
Follow the path |goto Val'sharah/0 65.79,41.01 < 10 |only if walking
Go up the hill |goto 67.61,37.49 < 10 |only if walking
kill Wraithtalon##97504 |q 39856 |future |goto Val'sharah 66.87,36.86
]],
},
{
rare=[[Undergrell Attack]],
level=100,
spot="Val'sharah 67.03,69.58",
item=130133,
quest=43176,
steps=[[
step
kill Frantic Stag##109695, Crazed Undergrell##109714, Frantic Mauler##109694
|tip Defeat the enemies that attack in waves.
kill Undergrell Ringleader##109708 |q 43176 |future |goto Val'sharah 67.03,69.58
]],
},
{
rare=[[Pollous the Fetid]],
level=100,
spot="Val'sharah 67.50,45.10",
currency="OR",
quest=39130,
item=130168,
steps=[[
step
kill Pollous the Fetid##94485 |q 39130 |future |goto Val'sharah 67.50,45.10
]],
},
{
rare=[[Kethrazor]],
level=98,
spot="Vault of the Wardens/1 48.8,31.4",
item=128945,
quest=40251,
condition=[[only if haveq(38672) or completedq(38672)]],
steps=[[
step
Go up the path |goto Vault of the Wardens/1 46.14,34.80 < 10
kill Kethrazor##96997 |q 40251 |future |goto Vault of the Wardens/1 48.8,31.4
]],
},
{
rare=[[Wrath-Lord Lekos]],
level=98,
spot="Vault of the Wardens/1 69.0,26.8",
item=128958,
quest=40301,
condition=[[only if haveq(38672) or completedq(38672)]],
steps=[[
step
kill Wrath-Lord Lekos##97069 |q 40301 |future |goto Vault of the Wardens/1 69.0,26.8
]],
},
}
