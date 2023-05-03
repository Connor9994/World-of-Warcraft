local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\World Quests Unlock Quest Line",{
author="support@zygorguides.com",
startlevel=45.0,
},[[
step
Reach Level 45 |ding 45
step
Enter the building |goto Dalaran L/10 32.76,49.31 < 10 |walk
talk Archmage Khadgar##90417
|tip Inside the building.
|tip You will only be able to accept one of these quests.
accept Uniting the Isles##45727 |goto Dalaran L/10 28.47,48.32 |or
accept Uniting the Isles##43341 |goto Dalaran L/10 28.47,48.32 |or
step
Earn Friendly Reputation with the Court of Farondis |q 43341/2
|tip Use the "Azsuna" Leveling guide to accomplish this.
|only if haveq(43341)
step
Earn Friendly Reputation with the Dreamweavers |q 43341/4
|tip Use the "Val'sharah" Leveling guide to accomplish this.
|only if haveq(43341)
step
Earn Friendly Reputation with the Highmountain Tribe |q 43341/3
|tip Use the "Highmountain" Leveling guide to accomplish this.
|only if haveq(43341)
step
Earn Friendly Reputation with the Valarjar |q 43341/5
|tip Use the "Stormheim" Leveling guide to accomplish this.
|only if haveq(43341)
step
Earn Friendly Reputation with the Nightfallen |q 43341/1
|tip Use the "Suramar" Leveling guide to accomplish this.
|only if haveq(43341)
step
talk Archmage Khadgar##90417
|tip Inside the building.
turnin Uniting the Isles##45727 |goto Dalaran L/10 28.47,48.34 |only if haveq(45727) or completedq(45727)
turnin Uniting the Isles##43341 |goto Dalaran L/10 28.47,48.34 |only if haveq(43341) or completedq(43341)
step
talk Muninn##114946
accept A Call to Action##44720 |goto 73.92,41.59
step
talk Havi##92539
turnin A Call to Action##44720 |goto Stormheim/0 60.14,50.74
accept A Threat Rises##44771 |goto Stormheim/0 60.14,50.74
step
click Keg of Grog##266054
Pour the Grog |havebuff 132792 |goto 60.51,51.44 |q 44771
step
Bring the Grog to Havi |q 44771/1 |goto 60.14,50.74
step
talk Havi##92539
turnin A Threat Rises##44771 |goto 60.14,50.74
accept Helya's Conquest##44721 |goto 60.14,50.74
step
Investigate Tideskorn Harbor |q 44721/1 |goto 58.54,44.73
stickystart "Helarjar Soulthief"
step
kill Vagnhild##114957 |q 44721/3 |goto 56.01,41.05
step
label "Helarjar Soulthief"
kill 4 Helarjar Soulthief##115291 |q 44721/2 |goto 56.77,45.56
|tip They are spread out around this area.
step
talk Havi##92539
Tell him _"Helya can corrupt the Stormforged!"_
Watch the dialogue
Speak with Havi |q 44721/4 |goto 60.14,50.74
step
talk Havi##92539
turnin Helya's Conquest##44721 |goto 60.14,50.74
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Antoran Wastes World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=885,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-48832
Follow the path up |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.73,52.45 < 20 |only if ditto
Follow the path up |goto 72.95,54.41 < 15 |only if ditto
Follow the path up |goto 73.22,56.47 < 15 |only if ditto
Follow the path |goto 74.37,61.64 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 70.38,71.74 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 71.18,62.96 < 15 |only if ditto
Follow the path |goto 73.26,67.49 < 15 |only if walking
accept Admiral Rel'var##48832 |goto 73.55,72.17
|tip You will accept this quest automatically.
step
kill Admiral Rel'var##127090 |q 48832/1 |goto Antoran Wastes/0 73.55,72.17 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48837
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.73,52.45 < 20 |only if walking
Follow the path up |goto 72.95,54.41 < 15 |only if walking
Follow the path up |goto 73.22,56.47 < 15 |only if walking
Follow the path |goto 73.85,57.79 < 15 |only if walking
Enter the building |goto 75.38,56.74 < 10 |only if walking
accept All-Seer Xanarian##48837 |goto 76.18,56.11
|tip You will accept this quest automatically.
step
kill All-Seer Xanarian##127096 |q 48837/1 |goto Antoran Wastes/0 76.18,56.11 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48931
Follow the path |goto Antoran Wastes/0 71.21,47.27 < 20 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.74,52.18 < 20 |only if ditto
Follow the path up |goto 73.27,56.47 < 20 |only if ditto
Follow the path |goto 73.16,63.63 < 20 |only if ditto
Follow the path down |goto 71.19,62.86 < 20 |only if ditto
Follow the path |goto 70.65,72.15 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
accept Behemoths Awakened##48931 |goto 72.50,67.51
|tip You will accept this quest automatically.
step
kill Radix##126196 |q 48931/2 |goto 72.50,67.51
step
kill Hadrox##126164 |q 48931/1 |goto 71.45,70.41
|next "Legion_World_Quest_Emissaries"
step
label quest-47561
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
accept Blistermaw##47561 |goto 64.30,38.45
|tip You will accept this quest automatically.
step
kill Blistermaw##122958 |q 47561/1 |goto 61.86,36.95 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-49054
Follow the path up |goto Antoran Wastes/0 70.52,71.93 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.31,68.55 < 15 |only if ditto
Follow the path |goto 65.26,65.48 < 15 |only if ditto
Follow the path |goto 62.73,61.58 < 15 |only if ditto
Follow the path |goto 62.93,59.48 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 63.89,57.26 < 20 |only if ditto
Follow the path |goto 62.36,57.64 < 15 |only if walking
Follow the path down |goto 60.10,55.81 < 15 |only if walking
Cross the fel lava |goto 59.37,55.29 < 10 |only if walking
Cross the fel lava |goto 58.33,55.31 < 10 |only if walking
Cross the fel lava |goto 57.69,54.64 < 10 |only if walking
accept Bloat##49054 |goto 56.57,54.23
|tip You will accept this quest automatically.
step
clicknpc Bloat##128020
Defeat Bloat |q 49054/1 |goto 56.57,54.23
|next "Legion_World_Quest_Emissaries"
step
label quest-48867
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
Follow the path |goto 63.98,28.61 < 15 |only if walking
Follow the path |goto 61.69,26.82 < 15 |only if walking
Follow the path up |goto 59.74,27.87 < 15 |only if walking
Follow the path |goto 59.98,24.96 < 15 |only if walking
accept Chief Alchemist Munculus##48867 |goto Antoran Wastes/0 60.03,24.92
|tip You will accept this quest automatically.
step
Enter the building |goto Antoran Wastes/0 60.88,22.82 < 15 |walk
kill Chief Alchemist Munculus##127376 |q 48867/1 |goto 61.33,21.13 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48637
Follow the path up |goto Antoran Wastes/0 72.09,47.51 < 15 |only if walking
Follow the path |goto 70.51,47.57 < 20 |only if walking
Follow the path |goto 70.15,53.05 < 20 |only if walking
accept Cleansing Fire##48637 |goto Antoran Wastes/0 67.21,53.59
|tip You will accept this quest automatically.
stickystart "spiderCleanse"
step
clicknpc Spider Nest##127557
|tip They look like clusters of eggs.
Use the Brightsoul Scepter to burn nests |use Brightsoul Scepter##152648
Burn #6# spider nests |q 48637/2 |goto 67.21,53.59
step
label  "spiderCleanse"
kill Brood of Ven'orn##126111+, Venomhide Weaver##126109+
Kill #10# spiders |q 48637/1 |goto 67.21,53.59
|next "Legion_World_Quest_Emissaries"
step
label quest-48831
Follow the path |goto Antoran Wastes/0 72.01,47.34 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.35,47.56 < 20 |only if ditto
Follow the path up |goto 70.78,52.44 < 20 |only if ditto
Follow the path up |goto 73.23,54.93 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 70.38,71.74 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 71.18,62.96 < 15 |only if ditto
Follow the path up |goto 72.86,63.23 < 15 |only if ditto
Follow the path |goto 75.08,64.15 < 15 |only if walking
Follow the path |goto 78.86,66.06 < 15 |only if walking
click Portal##253174 |goto 80.48,62.72
Enter the portal |goto 81.32,70.06 < 10 |noway |c
step
accept Commander Texlaz##48831 |goto 81.32,70.06
|tip You will accept this quest automatically.
step
kill Commander Texlaz##127084 |q 48831/1 |goto 82.66,65.56 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48777
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.08,33.26 < 15 |only if ditto
Follow the path |goto 67.65,35.13 < 15 |only if walking
Follow the path |goto 66.35,34.57 < 15 |only if walking
Follow the path |goto 65.37,31.51 < 15 |only if walking
Enter the cave |goto 65.57,26.63 < 15 |walk
accept Den of Fiends##48777 |goto Antoran Wastes/0 66.46,19.50
|tip You will accept this quest automatically.
step
Follow the path |goto 65.92,25.47 < 10 |walk
Follow the path |goto 66.44,24.42 < 10 |walk
Follow the path |goto 66.50,22.30 < 10 |walk
Follow the path |goto 67.61,22.16 < 10 |walk
Follow the path |goto 67.65,20.09 < 10 |walk
Kill demons around this area
Clear the cave of demons |q 48777/1 |goto 66.46,19.50
|next "Legion_World_Quest_Emissaries"
step
label quest-49055
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
Follow the path |goto 63.79,28.70 < 20 |only if walking
Follow the path |goto 61.72,26.86 < 15 |only if walking
Follow the path up |goto 59.82,27.78 < 15 |only if walking
accept Earseeker##49055 |goto Antoran Wastes/0 56.36,28.41
|tip You will accept this quest automatically.
step
clicknpc Earseeker##128021
Defeat Earseeker |q 49055/1 |goto Antoran Wastes/0 56.09,28.73
|next "Legion_World_Quest_Emissaries"
step
label quest-47566
Follow the path |goto Antoran Wastes/0 68.14,68.25 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 65.16,65.44 < 15 |only if ditto
Follow the path |goto 62.68,61.56 < 15 |only if ditto
Follow the path |goto 62.65,57.79 < 15 |only if ditto
Follow the path down |goto 60.12,55.87 < 15 |only if ditto
Cross the fel lava |goto 57.74,54.58 < 15 |only if ditto
Follow the path up |goto 55.56,51.90 < 15 |only if ditto
Follow the path |goto 53.73,48.52 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 63.60,29.32 < 15 |only if ditto
Follow the path |goto 62.56,32.16 < 15 |only if ditto
Follow the path |goto 62.79,37.19 < 15 |only if ditto
Follow the path |goto 60.77,38.71 < 15 |only if ditto
Follow the path |goto 60.77,38.71 < 15 |only if ditto
Follow the path |goto 61.29,40.84 < 15 |only if ditto
Follow the path |goto 62.29,43.97 < 15 |only if ditto
Follow the path |goto 60.26,44.44 < 15 |only if ditto
Cross the bridge |goto 57.27,44.56 < 15 |only if ditto
accept Gar'zoth##47566 |goto 55.78,45.98
|tip You will accept this quest automatically.
step
kill Gar'zoth##122999 |q 47566/1 |goto Antoran Wastes/0 55.78,45.98 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48780
accept Gladius##48780 |goto Antoran Wastes/0 71.99,50.36
|tip You will accept this quest automatically.
step
talk Lightforged Warframe##127178
_"Begin attack run on Antorus."_
Fly a Warframe into Antorus |q 48780/1 |goto 71.99,50.36
step
Destroy #3# Spires of Woe |q 48780/2 |goto 52.01,65.12
|tip Use the abilities on your hotbar to destroy that large structures topped with green crystals.
Kill #20# demons |q 48780/3 |goto 52.01,65.12
|tip Use the abilities on your hotbar to kill any enemies you see.
step
Destroy the Sentinax |q 48780/4 |goto 52.01,65.12
|tip Use the abilities on your hotbar to blow the ship up.
|next "Legion_World_Quest_Emissaries"
step
label quest-48835
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
accept Houndmaster Kerrax##48835 |goto Antoran Wastes/0 63.94,21.84
|tip You will accept this quest automatically.
step
kill Houndmaster Kerrax##127288 |q 48835/1 |goto Antoran Wastes/0 63.94,21.84 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48640
Follow the path |goto Antoran Wastes/0 72.01,47.34 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.35,47.56 < 20 |only if ditto
Follow the path up |goto 70.78,52.44 < 20 |only if ditto
Follow the path up |goto 73.23,54.93 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 70.38,71.74 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 71.18,62.96 < 15 |only if ditto
Follow the path up |goto 72.86,63.23 < 15 |only if ditto
accept The Immortal Squadron##48640 |goto Antoran Wastes/0 74.13,63.77
|tip You will accept this quest automatically.
stickystart "netherwalker"
step
clicknpc Immortal Squadron Fighter##127012
|tip They are in the air flying around.
Use the Target Designator to destroy them |use Target Designator##152657
Target #3# Immortal Squadron Fighters |q 48640/2 |goto Antoran Wastes/0 74.63,63.88
step
label "netherwalker"
kill 2 Immortal Netherwalker##126244 |q 48640/1 |goto Antoran Wastes/0 74.63,63.88
|next "Legion_World_Quest_Emissaries"
step
label quest-48830
Follow the path |goto Antoran Wastes/0 72.20,47.76 < 10 |only if walking
Follow the path |goto 70.83,46.73 < 20 |only if walking
Follow the path |goto 68.61,43.85 < 15 |only if walking
Jump across the platforms |goto 67.75,44.05 < 7 |only if walking
Jump across the platforms |goto 66.83,43.32 < 7 |only if walking
Jump across the platforms |goto 65.61,43.63 < 7 |only if walking
Jump across the platforms |goto 65.08,44.19 < 7 |only if walking
Go up the hill |goto 63.93,44.33 < 10 |only if walking
Follow the path |goto 61.41,44.94 < 15
accept Inquisitor Vethroz##48830 |goto Antoran Wastes/0 60.67,48.22
|tip You will accept this quest automatically.
step
kill Inquisitor Vethroz##126946 |q 48830/1 |goto 60.67,48.22 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48828
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.74,52.81 < 20 |only if walking
Follow the path |goto 68.29,54.23 < 15 |only if walking
Follow the path |goto 65.71,51.84 < 15 |only if walking
Follow the path up |goto 64.52,55.00 < 15 |only if walking
accept Lieutenant Xakaar##48828 |goto Antoran Wastes/0 62.21,53.48
|tip You will accept this quest automatically.
step
Follow the path |goto 64.68,55.09 < 15 |only if walking
Follow the path |goto 63.55,55.97 < 20 |only if walking
kill Lieutenant Xakaar##126254 |q 48828/1 |goto 62.21,53.48 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48983
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.22,35.97 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.03,34.34 < 15 |only if ditto
Follow the path |goto 68.20,36.28 < 15 |only if walking
Follow the path |goto 67.58,38.46 < 15 |only if walking
Follow the path |goto 64.58,38.38 < 15 |only if walking
Follow the path down |goto 62.87,37.57 < 15 |only if walking
accept Mining Regulation##48983 |goto 64.28,41.25
|tip You will accept this quest automatically.
step
kill Felsworn Excavator##126457+, Wyrmtongue Scrounger##126456+
click Smelting Vessel##276918
Stop the Legion mining effort |q 48983/1 |goto Antoran Wastes/0 62.51,43.39
|next "Legion_World_Quest_Emissaries"
step
label quest-49057
Follow the path |goto Antoran Wastes/0 71.40,47.18 < 15 |only if walking
Follow the path |goto 70.87,52.34 < 20 |only if walking
Follow the path |goto 73.28,56.34 < 20 |only if walking
Follow the path |goto 73.89,63.70 < 20 |only if walking
Follow the path |goto 78.75,66.03 < 20 |only if walking
accept Minixis##49057 |goto 76.71,73.95
|tip You will accept this quest automatically.
step
clicknpc Minixis##128023
Defeat Minixis |q 49057/1 |goto 76.71,73.95
|next "Legion_World_Quest_Emissaries"
step
label quest-47552
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.12,34.32 < 10 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path |goto 68.96,25.49 < 10 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.68,28.48 < 15 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path up |goto 59.79,27.75 < 10 |only if walking
accept Mistress Il'thendra##47552 |goto 57.39,33.66
|tip You will accept this quest automatically.
step
Follow the path |goto Antoran Wastes/0 59.53,32.46 < 20 |only if walking
kill Mistress Il'thendra##122947 |q 47552/1 |goto Antoran Wastes/0 57.39,33.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48875
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.12,34.32 < 10 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path up |goto 59.79,27.75 < 10 |only if ditto
Follow the path |goto 68.96,25.49 < 10 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.68,28.48 < 15 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path up |goto 59.79,27.75 < 10 |only if ditto
accept Mix It Up##48875 |goto Antoran Wastes/0 60.03,24.92
|tip You will accept this quest automatically.
stickystart "Legion Unguent"
step
kill Filthy Assistant##127374+, Potion Researcher##127375+
Slay #5# Wyrmtongues |q 48875/1 |goto 60.56,24.12
|tip More can be found up the hill to the left.
step
label "Legion Unguent"
click Legion Unguent##276481
|tip They look like little green potions on the ground.
Destroy #10# Legion Unguents |q 48875/2 |goto 60.56,24.12
|tip More can be found up the hill to the left.
|next "Legion_World_Quest_Emissaries"
step
label quest-48783
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.12,34.32 < 10 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path |goto 68.96,25.49 < 10 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.68,28.48 < 15 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path up |goto 59.79,27.75 < 10 |only if walking
Follow the path |goto Antoran Wastes/0 59.17,25.28 < 15 |only if walking
Follow the path |goto 57.39,24.17 < 15 |only if walking
accept Nobody Expects Them##48783 |goto Antoran Wastes/0 54.10,25.47
|tip You will accept this quest automatically.
step
clicknpc Lightforged Dragoon##128364+
Free the first Lightforged Dragoon |q 48783/1 |count 1 |goto 55.50,25.26
step
clicknpc Lightforged Dragoon##128364+
Free the second Lightforged Dragoon |q 48783/1 |count 2 |goto 53.85,23.72
step
clicknpc Lightforged Dragoon##128364+
Free the third Lightforged Dragoon |q 48783/1 |count 3 |goto 52.49,26.52
step
clicknpc Lightforged Dragoon##128364+
Free the last Lightforged Dragoon |q 48783/1 |count 4 |goto 54.37,27.42
|next "Legion_World_Quest_Emissaries"
step
label quest-49058
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.26,36.23 < 15 |only if ditto
Follow the path |goto 67.71,38.42 < 15 |only if ditto
Follow the path |goto 64.53,38.40 < 15 |only if ditto
Follow the path down |goto 62.94,37.60 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.09,34.06 < 15 |only if ditto
Follow the path |goto 66.01,29.15 < 15 |only if ditto
Follow the path |goto 63.33,29.49 < 20 |only if ditto
Follow the path |goto 62.58,32.68 < 15 |only if ditto
Follow the path |goto 62.77,37.31 < 15 |only if ditto
Follow the path |goto 61.01,38.32 < 20 |only if walking
accept One-of-Many##49058 |goto 59.81,40.25
|tip You will accept this quest automatically.
step
clicknpc One-of-Many##128024
Defeat One-of-Many |q 49058/1 |goto 59.81,40.25
|next "Legion_World_Quest_Emissaries"
step
label quest-49056
Follow the path up |goto Antoran Wastes/0 72.09,47.53 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.45,47.54 < 15 |only if ditto
Follow the path |goto 70.47,52.82 < 20 |only if ditto
Follow the path |goto 68.01,54.13 < 20 |only if ditto
Follow the path |goto 65.72,51.74 < 15 |only if ditto
Follow the path up |goto 64.35,56.07 < 20 |only if ditto
Follow the path |goto 62.67,60.77 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 70.82,72.39 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 67.51,67.69 < 15 |only if ditto
Follow the path |goto 64.72,66.08 < 15 |only if ditto
accept Pilfer##49056 |goto Antoran Wastes/0 64.08,66.01
|tip You will accept this quest automatically.
step
clicknpc Pilfer##128022
|tip His first attck will always be a very powerful one.
|tip For your first pick you should have something that can completly avoid the first attack by Pilfer.
Defeat Pilfer |q 49056/1 |goto Antoran Wastes/0 64.08,66.01
|next "Legion_World_Quest_Emissaries"
step
label quest-48467
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 67.79,35.10 < 10 |only if ditto
Follow the path |goto 66.67,34.95 < 15 |only if ditto
Follow the path |goto 65.37,31.53 < 15 |only if ditto
Follow the path |goto 69.06,25.12 < 10 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.91,28.15 < 10 |only if ditto
Follow the path |goto 67.95,33.80 < 15 |only if ditto
Follow the path |goto 66.85,35.26 < 15 |only if ditto
Follow the path |goto 65.37,31.77 < 15 |only if ditto
Enter the cave |goto 65.67,26.18 < 20 |walk
Follow the path |goto 65.74,25.81 < 10 |walk
Follow the path |goto 66.45,24.41 < 10 |walk
Follow the path |goto 66.47,22.25 < 10 |walk
Follow the path |goto 67.66,22.23 < 10 |walk
Follow the path |goto 67.57,20.09 < 10 |walk
Follow the path |goto 65.95,19.75 < 10 |walk
accept Puscilla##48467 |goto 63.98,20.85
|tip You will accept this quest automatically.
step
kill Puscilla##122947 |q 48467/1 |goto Antoran Wastes/0 63.98,20.85 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48958
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
Follow the path |goto Antoran Wastes/0 66.11,29.13 < 15 |only if walking
Follow the path |goto 61.75,26.89 < 15 |only if walking
Follow the path up |goto 59.81,27.82 < 15 |only if walking
Follow the path |goto 59.28,25.17 < 20 |only if walking
Follow the path up |goto 57.98,24.20 < 15 |only if walking
accept Ritual Interruption##48958 |goto 57.35,20.19
|tip You will accept this quest automatically.
step
kill Wrathguard Overseer##127109+, Nether Acolyte##127103+
collect 8 Banishment Stone Shard##152465 |q 48958/1 |goto Antoran Wastes/0 57.62,15.73
step
clicknpc Everburning Doombringer##127811
Banish the Everburning Doombringer |q 48958/2 |goto Antoran Wastes/0 57.62,15.73
|next "Legion_World_Quest_Emissaries"
step
label quest-48833
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
Follow the path |goto Antoran Wastes/0 66.11,29.13 < 15 |only if walking
Follow the path |goto 61.75,26.89 < 15 |only if walking
Follow the path up |goto 59.81,27.82 < 15 |only if walking
Follow the path |goto 59.28,25.17 < 20 |only if walking
Follow the path up |goto 57.98,24.20 < 15 |only if walking
accept Ritual Completion##48833 |goto 57.35,20.19
|tip You will accept this quest automatically.
step
kill Everburning Doombringer##127097 |q 48833/1 |goto Antoran Wastes/0 57.57,15.72 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48526
Follow the path up |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.73,52.45 < 20 |only if walking
Follow the path up |goto 72.95,54.41 < 15 |only if walking
Follow the path up |goto 73.22,56.47 < 15 |only if walking
accept Scuttled##48526 |goto 73.89,63.70
|tip You will accept this quest automatically.
step
Follow the path |goto 74.17,60.44 < 20 |only if walking
Follow the path |goto 75.11,64.17 < 15 |only if walking
Follow the path |goto 78.56,65.92 < 15 |only if walking
Click the Artificer's Expanding Explosive
Plant the Northern Bomb |q 48526/1 |goto Antoran Wastes/0 80.48,61.90
step
Follow the path |goto 79.56,63.80 < 15 |only if walking
Click the Artificer's Expanding Explosive
Plant the Central Bomb |q 48526/2 |goto Antoran Wastes/0 78.74,67.89
step
Follow the path |goto 77.46,72.56 < 15 |only if walking
Click the Artificer's Expanding Explosive
Plant the Southern Bomb |q 48526/3 |goto Antoran Wastes/0 77.82,74.45
step
Follow the path |goto 77.47,72.57 < 15 |only if walking
Follow the path |goto 78.81,66.27 < 20 |only if walking
Get to a safe distance |q 48526/4 |goto 75.75,64.46
|next "Legion_World_Quest_Emissaries"
step
label quest-48662
Follow the path |goto Antoran Wastes/0 72.01,47.34 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.35,47.56 < 20 |only if ditto
Follow the path up |goto 70.78,52.44 < 20 |only if ditto
Follow the path up |goto 73.23,54.93 < 20 |only if ditto
Follow the path |goto 72.73,58.03 < 20 |only if ditto
Follow the path |goto 68.40,59.08 < 20 |only if ditto
Follow the path |goto 64.59,57.23 < 20 |only if ditto
Follow the path |goto 62.79,60.06 < 20 |only if ditto
Follow the path |goto 70.87,72.38 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 67.73,67.91 < 20 |only if walking
accept Short Fuses##48662 |goto 62.73,64.16
|tip You will accept this quest automatically.
step
clicknpc Legion Hullbreaker##127058
Replace the fuses on #6# Legion Hullbreakers |q 48662/1 |goto 60.91,64.79
|next "Legion_World_Quest_Emissaries"
step
label quest-48514
Follow the path |goto Antoran Wastes/0 71.78,73.82 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.28,70.99 < 20 |only if ditto
Follow the path up |goto 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.31,47.76 < 20 |only if ditto
Follow the path |goto 70.81,52.49 < 20 |only if ditto
Follow the path up |goto 72.93,54.39 < 15 |only if ditto
Follow the path up |goto 73.23,56.44 < 15 |only if ditto
Follow the path |goto 73.53,62.17 < 15 |only if ditto
Follow the path |goto 72.56,63.10 < 15 |only if ditto
Follow the path down |goto 71.17,62.76 < 15 |only if ditto
accept Slumbering Behemoths##48514 |goto Antoran Wastes/0 71.45,70.41
|tip You will accept this quest automatically.
step
clicknpc Hadrox##126164 |only if knowstaxi("Light's Purchase, Antoran Wastes")
|tip Release Hadrox. |only if ditto
kill Hadrox##126164 |q 48514/1 |goto 71.45,70.41 |only if ditto
step
clicknpc Radix##126196 |only if knowstaxi("The Veiled Den, Antoran Wastes")
|tip Release Radix. |only if ditto
kill Radix##126196 |q 48514/2 |goto 72.50,67.51 |only if ditto
step
clicknpc Radix##126196 |only if knowstaxi("Light's Purchase, Antoran Wastes")
|tip Release Radix. |only if ditto
kill Radix##126196 |q 48514/2 |goto 72.50,67.51 |only if ditto
clicknpc Hadrox##126164 |only if knowstaxi("The Veiled Den, Antoran Wastes")
|tip Release Hadrox. |only if ditto
kill Hadrox##126164 |q 48514/1 |goto 71.45,70.41 |only if ditto
|next "Legion_World_Quest_Emissaries"
step
label quest-48691
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only ditto
Follow the path up |goto 69.27,36.20 < 15 |only ditto
Follow the path |goto 68.12,34.32 < 10 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path |goto 68.96,25.49 < 10 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.68,28.48 < 15 |only if ditto
Follow the path |goto 65.98,29.25 < 15 |only if ditto
Follow the path |goto 61.62,26.80 < 10 |only if ditto
Follow the path up |goto 59.79,27.75 < 10 |only if walking
accept Soul Chain##48691 |goto 57.90,33.81
|tip You will accept this quest automatically.
step
Follow the path |goto Antoran Wastes/0 59.53,32.46 < 20 |only if walking
clicknpc Broken Soul##126944
|tip Check inside the buildings.
Free #8# Broken Souls |q 48691/1 |goto 57.90,33.81
|next "Legion_World_Quest_Emissaries"
step
label quest-48358
accept Supplies Needed: Empyrium##48358 |goto Antoran Wastes/0 73.60,49.06
|tip You will accept this quest automatically.
step
collect 40 Empyrium##151564
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Captain Fareeya##128370
turnin Supplies Needed: Empyrium##48358 |goto 73.60,49.06
|next "Legion_World_Quest_Emissaries"
step
label quest-48360
accept Supplies Needed: Fiendish Leather##48360 |goto Antoran Wastes/0 73.60,49.05
|tip You will accept this quest automatically.
step
collect 40 Fiendish Leather##151566
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Captain Fareeya##128370
turnin Supplies Needed: Fiendish Leather##48360 |goto 73.60,49.06
|next "Legion_World_Quest_Emissaries"
step
label quest-48374
accept Supplies Needed: Lightweave Cloth##48374 |goto Antoran Wastes/0 73.60,49.06
|tip You will accept this quest automatically.
step
collect 40 Lightweave Cloth##151567
|tip You can farm these from humanoids on Argus or purchase them from the Auction House.
step
talk Captain Fareeya##128370
turnin Supplies Needed: Lightweave Cloth##48374 |goto 73.60,49.06
|next "Legion_World_Quest_Emissaries"
step
label quest-48952
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
Follow the path |goto Antoran Wastes/0 61.66,26.82 < 15 |only if walking
Follow the path up |goto 59.80,27.75 < 15 |only if walking
Follow the path |goto 57.28,28.40 < 20 |only if walking
Follow the path |goto 55.44,30.60 < 15 |only if walking
Follow the path down |goto 53.96,31.39 < 20 |only if walking
accept Throw Them a Bone##48952 |goto 52.71,37.32
|tip You will accept this quest automatically.
stickystart "voracious"
step
clicknpc Slave Trap##127722
Disarm #3# Slave Traps |q 48952/2 |goto 52.71,37.32
step
label "voracious"
kill 8 Voracious Scavenger##126174+ |q 48952/1 |goto 52.71,37.32
|next "Legion_World_Quest_Emissaries"
step
label quest-48827
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
accept Varga##48827 |goto 65.02,51.46
step
Enter the cave |goto 64.24,47.98 < 5 |walk
kill Varga##126208 |q 48827/1 |goto Antoran Wastes/0 65.02,51.46 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48466
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.74,52.81 < 20 |only if walking
Follow the path |goto 68.29,54.23 < 15 |only if walking
Enter the cave |goto Antoran Wastes/0 66.61,54.21 < 15 |walk
Follow the path down |goto 64.79,56.54 < 15 |walk
accept Ven'orn##48466 |goto Antoran Wastes/0 63.03,57.35
|tip You will accept this quest automatically.
step
kill Ven'orn##126115 |q 48466/1 |goto Antoran Wastes/0 63.03,57.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48866
Follow the path |goto Antoran Wastes/0 71.28,47.11 < 15 |only if walking
Follow the path up |goto 68.99,35.80 < 20 |only if walking
Follow the path |goto 65.66,29.08 < 20 |only if walking
Follow the path up |goto 59.82,27.75 < 20 |only if walking
Follow the path |goto Antoran Wastes/0 57.69,24.07 < 30 |only if walking
accept Void Warden Valsuran##48866 |goto Antoran Wastes/0 55.27,21.56
|tip You will accept this quest automatically.
step
kill Void Warden Valsuran##127300 |q 48866/1 |goto Antoran Wastes/0 55.27,21.56 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48465
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
accept Vrax'thul##48465 |goto Antoran Wastes/0 53.03,36.02
|tip You will accept this quest automatically.
step
kill Vrax'thul##126199 |q 48465/1 |goto 53.03,36.02 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-49053
Follow the path |goto Antoran Wastes/0 68.26,68.59 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 65.28,65.44 < 20 |only if ditto
Follow the path |goto 63.31,63.05 < 20 |only if ditto
Follow the path |goto 62.50,57.79 < 20 |only if ditto
Follow the path down |goto 60.19,55.96 < 20 |only if ditto
Cross the lava |goto 59.38,55.46 < 15 |only if ditto
Cross the lava |goto 58.51,55.36 < 15 |only if ditto
Cross the lava |goto 57.69,54.53 < 15 |only if ditto
Follow the path up |goto 55.70,52.15 < 15 |only if ditto
Follow the path |goto 53.64,48.68 < 20 |only if ditto
Follow the path |goto 52.67,43.99 < 20 |only if ditto
Follow the path |goto 51.64,42.65 < 20 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if ditto
Follow the path |goto 61.69,26.87 < 15 |only if ditto
Follow the path up |goto 59.83,27.89 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 57.16,28.42 < 20 |only if ditto
Follow the path |goto 55.46,30.67 < 15 |only if ditto
Follow the path down |goto 53.94,31.37 < 15 |only if ditto
Follow the path |goto 52.94,33.77 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 52.94,38.99 < 20 |only if ditto
Follow the path |goto 52.79,40.73 < 10 |only if ditto
Jump over the fel lava |goto 51.99,41.28 < 15 |only if ditto
accept Watcher##49053 |goto 51.61,41.42
|tip You will accept this quest automatically.
step
clicknpc Watcher##128019
Defeat Watcher |q 49053/1 |goto 51.61,41.42
|next "Legion_World_Quest_Emissaries"
step
label quest-48836
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
accept Watcher Aival##48836 |goto Antoran Wastes/0 52.91,29.37
|tip You will accept this quest automatically.
step
kill Watcher Aival##127291 |q 48836/1 |goto Antoran Wastes/0 52.91,29.37 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48624
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
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
accept Who Let The Dogs Out?##48624 |goto Antoran Wastes/0 52.57,53.47
|tip You will accept this quest automatically.
step
clicknpc Trampled Trooper##126917+
|tip Avoid Shatug and F'harg. They run in circles around the fel lava.
Rescue #6# soldiers |q 48624/1 |goto Antoran Wastes/0 52.57,53.47
|next "Legion_World_Quest_Emissaries"
step
label quest-48349
accept Work Order: Empyrium##48349 |goto Antoran Wastes/0 72.99,50.31
|tip You will accept this quest automatically.
step
collect 40 Empyrium##151564 |q 48349/1
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Captain Fareeya##128370
turnin Work Order: Empyrium##48349 |goto Antoran Wastes/0 73.60,49.06
|next "Legion_World_Quest_Emissaries"
step
label quest-48359
accept Work Order: Fiendish Leather##48359 |goto Antoran Wastes/0 73.60,49.05
|tip You will accept this quest automatically.
step
collect 40 Fiendish Leather##151566
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Captain Fareeya##128370
turnin Work Order: Fiendish Leather##48359 |goto 73.60,49.05
|next "Legion_World_Quest_Emissaries"
step
label quest-48834
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
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
accept Worldsplitter Skuul##48834 |goto 50.92,55.42
|tip You will accept this quest automatically.
step
kill Worldsplitter Skuul##127118 |q 48834/1 |goto 50.92,55.42 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48829
Follow the path |goto Antoran Wastes/0 72.00,47.29 < 10 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.40,47.78 < 15 |only if ditto
Follow the path |goto 70.64,52.29 < 20 |only if ditto
Follow the path |goto 68.82,54.28 < 20 |only if ditto
Follow the path |goto 65.72,51.97 < 20 |only if ditto
Follow the path up |goto 64.62,54.73 < 15 |only if ditto
Follow the path |goto 62.90,60.35 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 71.56,73.43 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.95,69.36 < 15 |only if ditto
Follow the path |goto 64.67,65.93 < 15 |only if ditto
accept Wrath-Lord Yarez##48829 |goto 61.32,65.16
|tip You will accept this quest automatically.
step
kill Wrath-Lord Yarez##126338 |q 48829/1 |goto 61.32,65.16 |future
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Azsuna World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone={630,790},
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-42119
Follow the path |goto Azsuna/0 43.63,42.29 < 30 |only if walking
Follow the path |goto 40.73,37.54 < 30 |only if walking
accept A Cleansing Cocktail##42119 |goto 43.34,33.99
|tip You will accept this quest automatically.
stickystart "Cliffwing_Hippogryph_Eggs"
step
kill Llothien Grizzly##90134+
collect 5 Fat Bear Liver##136859 |q 42119/2 |goto 43.34,33.99
step
label "Cliffwing_Hippogryph_Eggs"
click Cliffwing Hippogryph Eggs##249704
|tip They look like dark blue eggs in and nearby hippogryph nests on the ground around this area.
collect 7 Cliffwing Hippogryph Egg##136860 |q 42119/1 |goto 43.34,33.99
|next "Legion_World_Quest_Emissaries"
step
label quest-42024
Follow the path |goto Azsuna/0 53.69,58.89 < 30 |only if walking
Follow the path |goto 51.95,61.48 < 30 |only if walking
accept A Friend of My Enemy##42024 |goto 48.98,60.26
|tip You will accept this quest automatically.
stickystart "Cove Skrog"
step
kill Prince Oceanus##89101 |q 42024/1 |goto Azsuna/0 53.43,63.82
step
Follow the path down |goto 52.84,63.02 < 30 |only if walking
Follow the path |goto 50.45,61.83 < 30 |only if walking
Follow the path |goto 47.99,61.09 < 30 |only if walking
kill Flog the Captain-Eater##89884 |q 42024/2 |goto Azsuna/0 45.18,57.78
step
label "Cove Skrog"
kill 6 Cove Skrog##89097 |q 42024/3
|next "Legion_World_Quest_Emissaries"
step
label quest-43803
Follow the path |goto Eye of Azshara Map/0 42.13,45.22 < 30 |only if walking
Follow the path |goto 47.08,45.46 < 30 |only if walking
Enter the cave |goto 59.61,39.34 < 20 |only if walking
Follow the path |goto 63.61,40.60 < 20 |only if walking
Follow the path |goto 66.98,41.61 < 20 |only if walking
accept A Giant Murloc Problem##43803 |goto 69.22,44.79
|tip You will accept this quest automatically.
stickystart "Saltscale"
step
kill Skrog Wavecrasher##111646 |q 43803/1 |goto 61.45,50.57
step
label "Saltscale"
kill Saltscale Lurker##111645 |q 43803/2 |goto 69.22,44.79
step
label quest-42014
accept A Tainted Vintage##42014 |goto Azsuna/0 40.83,9.11
|tip You will accept this quest automatically.
stickystart "Smash_Arcane-aged_Wine_A_Tainted_Vintage"
stickystart "Burn_Haunted_Vines_A_Tainted_Vintage"
step
Follow the path up |goto 41.25,10.35 < 20 |only if walking
Follow the path |goto 42.32,10.32 < 20 |only if walking
kill Grand Vintner Valiana##90547 |q 42014/2 |goto 42.93,8.55
|tip Inside the building.
step
Follow the path up |goto 44.19,9.35 < 20 |only if walking
Follow the path up |goto 45.05,11.71 < 15 |only if walking
kill Vintner Liastrin##90537 |q 42014/1 |goto 45.55,12.84
|tip She floats around inside the building.
step
label "Smash_Arcane-aged_Wine_A_Tainted_Vintage"
clicknpc Arcane-aged Wine##91041
|tip They look like wooden barrels on the ground around this area.
Smash #3# Barrels of Arcane-aged Wine |q 42014/3 |goto 46.26,11.75
step
label "Burn_Haunted_Vines_A_Tainted_Vintage"
click Haunted Vines##249341
|tip They look blue glowing wooden planks sticking vertically into the ground around this area.
Burn #6# Haunted Vines |q 42014/4 |goto 46.26,11.75
|next "Legion_World_Quest_Emissaries"
step
label quest-44784
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto 53.77,40.31
accept Advanced Wanding##44784 |goto Azsuna/17 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto Azsuna/17 58.11,68.23
Go through the Academy Door |goto Azsuna/17 50.40,50.09
Use your extra action ability on the Wand Targets
Hit 6 Wand Targets |q 44784/1 |goto Azsuna/17 33.62,42.69
|next "Legion_World_Quest_Emissaries"
step
label quest-41545
accept Aethril Cluster##41545 |goto Azsuna/0 40.03,9.73
|tip You will accept this quest automatically.
step
kill Lost Gatherer##109070
clicknpc Aethril Cluster##103842
Aethril Cluster gathered |q 41545/1 |goto 40.03,9.73
|next "Legion_World_Quest_Emissaries"
step
label quest-41286
Follow the path |goto Azsuna/0 63.36,30.21 < 20 |only if walking
Follow the path |goto 62.93,34.47 < 25 |only if walking
Follow the path |goto 62.53,36.10 < 25 |only if walking
Follow the path |goto 61.32,39.14 < 25 |only if walking
accept Aethril Cluster##41286 |goto Azsuna/0 61.54,41.80
|tip You will accept this quest automatically.
step
kill Lost Gatherer##109070
clicknpc Aethril Cluster##103842
Aethril Cluster gathered |q 41286/1 |goto 61.54,41.80
|next "Legion_World_Quest_Emissaries"
step
label quest-42652
Cross the bridge |goto Azsuna/0 56.49,62.07 < 30 |only if walking
Follow the path up |goto 55.77,65.84 < 30 |only if walking
accept Ancient Exemplars##42652 |goto 55.51,70.67
|tip You will accept this quest automatically.
stickystart "Ancient_Familiars"
step
Kill Timeless enemies around this area
Slay #5# Timeless Mages |q 42652/1 |goto 55.51,70.67
step
label "Ancient_Familiars"
Kill Familiar enemies around this area
Slay #6# Ancient Familiars |q 42652/2 |goto 55.51,70.67
|next "Legion_World_Quest_Emissaries"
step
label quest-43805
accept Aquatic Assassination##43805 |goto Eye of Azshara Map/0 38.25,45.91
|tip You will accept this quest automatically.
stickystart "Shellback turtles"
step
kill Hatecoil Oracle##111636+, Hatecoil Warrior##111637, Hatecoil Wrangler##111635
Slay 6 Hatecoil Naga |q 43805/1 |goto Eye of Azshara Map/0 50.51,68.58
step
label "Shellback turtles"
kill 6 Wandering Shellback##111633 |q 43805/2 |goto Eye of Azshara Map/0 52.18,63.34
|next "Legion_World_Quest_Emissaries"
step
label quest-41290
Follow the path |goto Azsuna/0 50.27,30.51 < 30 |only if walking
Follow the path |goto 52.80,33.91 < 30 |only if walking
accept Aqueous Aethril##41290 |goto 54.44,36.27
|tip You will accept this quest automatically.
step
click Aqueous Aethril##247865
collect 12 Aqueous Aethril##135480 |q 41290/1 |goto 54.44,36.27
|next "Legion_World_Quest_Emissaries"
step
label quest-42165
accept Azsuna Specimens##42165 |goto Azsuna/0 34.02,45.19
|tip You will accept this quest automatically.
step
Follow the path |goto 32.97,46.17 < 20 |only if walking
clicknpc Felspider##97323
Defeat or Capture a Felspider |q 42165/1 |goto 34.02,45.19
|tip You may have to search a large area around here to find one.
|next "Legion_World_Quest_Emissaries"
step
label quest-45069
Follow the path |goto Azsuna/0 45.25,43.77 < 25 |only if walking
Follow the path |goto 46.24,44.66 < 25 |only if walking
Follow the path |goto 46.28,51.43 < 25 |only if walking
accept Barrels o' Fun##45069 |goto 47.03,53.56
|tip You will accept this quest automatically.
step
click Barrel##2886
Game Completed |q 45069/1 |goto 46.97,53.80
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Legion_World_Quest_Emissaries"
step
label quest-45203
Follow the path |goto Azsuna/0 57.44,56.51 < 30 |only if walking
Follow the path |goto 58.51,51.50 < 25 |only if walking
Follow the path |goto 63.36,51.38 < 25 |only if walking
accept Battle for the Ruins##45203 |goto Azsuna/0 65.67,49.00
|tip You will accept this quest automatically.
step
kill Legion Brutallizer##116424+, Dreadflame Champion##116428+, Dreadflame Magus##116433
Repel the Legion forces |q 45203/1 |goto 65.67,49.00
step
Follow the steps |goto 66.54,50.26 < 20 |only if walking
Enter the building |goto 67.43,51.18 < 20 |walk
kill Arinor the Portalmaster##116436
Defeat Arinor the Portalmaster |q 45203/2 |goto 67.13,51.37
|next "Legion_World_Quest_Emissaries"
step
label quest-44894
Drop down |goto Azsuna/0 39.78,7.47 < 30 |only if walking
accept Bloodgazer Swarm!##44894 |goto 38.68,7.12
|tip You will accept this quest automatically.
step
Slay the Bloodgazers around this area
Cull the Bloodgazer Falcosaurs |q 44894/1 |goto Azsuna/0 36.60,6.31
|next "Legion_World_Quest_Emissaries"
step
label quest-41495
Follow the path |goto Azsuna/0 63.39,25.54 < 25 |only if walking
Follow the path |goto 60.38,20.69 < 20 |only if walking
Follow the path |goto 57.26,18.00 < 25 |only if walking
accept Brilliant Leystone Seams##41495 |goto 56.25,17.11
|tip You will accept this quest automatically.
step
click Brilliant Leystone Seam##247987
collect 6 Brilliant Leystone Ore##141228 |q 41495/1 |goto 56.25,17.11
|tip You will find Brilliant Leystone Seams all over this area.
|next "Legion_World_Quest_Emissaries"
step
label quest-41481
Follow the path |goto Azsuna/0 31.80,48.45 < 25 |only if walking
Follow the path |goto 31.75,50.87 < 25 |only if walking
Follow the path |goto 32.66,51.77 < 25 |only if walking
Follow the path |goto 33.63,52.07 < 20 |only if walking
accept Brimstone Destroyer##41481 |goto 33.82,52.74
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41481/1 |goto 33.82,52.74
|next "Legion_World_Quest_Emissaries"
step
label quest-41482
accept Brimstone Destroyer##41482 |goto Azsuna/0 63.80,29.46
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41482/1 |goto 63.80,29.46
|next "Legion_World_Quest_Emissaries"
step
label quest-41483
Follow the path |goto Azsuna/0 47.60,28.99 < 30 |only if walking
Follow the path |goto 42.72,33.07 < 30 |only if walking
Follow the path |goto 41.20,35.34 < 30 |only if walking
Follow the path up |goto 39.19,32.69 < 15 |only if walking
Follow the path up |goto 37.18,30.67 < 15 |only if walking
Follow the path |goto 38.85,27.87 < 20 |only if walking
accept Brimstone Destroyer##41483 |goto 38.53,25.42
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41483/1 |goto 38.53,25.42
|next "Legion_World_Quest_Emissaries"
step
label quest-42022
Follow the path |goto Azsuna/0 46.20,44.55 < 30 |only if walking
Follow the path |goto Azsuna/0 48.96,42.73 < 30 |only if walking
Follow the path |goto Azsuna/0 52.00,44.47 < 30 |only if walking
accept The Broken Academy##42022 |goto Azsuna/0 54.28,44.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bound Citizen##91449+
|tip They look like night elves pinned to walls by spears around this area.
Defend Against the Hatecoil |q 42022/1 |goto 54.28,44.20
|next "Legion_World_Quest_Emissaries"
step
label quest-46146
Follow the path |goto Azsuna/0 45.41,44.47 |only if walking
accept The Burning Shores##46146 |goto 44.38,49.78
|tip You will accept this quest automatically.
stickystart "shores"
step
kill Hatefire the Burning##118827
Defeat Hatefire the Burning |q 46146/2 |goto 44.38,49.78
step
label "shores"
kill Felsiege Infernal##118816+, Doomflame Infernal##121045+, Blazing Infernal##118821+, Felwing Terror##118836+
Kill #10# demons |q 46146/1 |goto 44.38,49.78
|next "Legion_World_Quest_Emissaries"
step
label quest-41529
Follow the path |goto Azsuna/0 56.69,56.24 < 30 |only if walking
Follow the path |goto 58.50,51.43 < 25 |only if walking
accept Bushy Aethril##41529 |goto 62.25,49.27
|tip You will accept this quest automatically.
step
click Bushy Aethril##248022
collect 10 Bushy Aethril##140951 |q 41529/1 |goto 62.25,49.27
|next "Legion_World_Quest_Emissaries"
step
label quest-43193
Follow the path |goto Azsuna/0 46.98,73.18 < 20 |only if walking
Follow the path |goto 44.83,74.88 < 25 |only if walking
Follow the path |goto 42.32,78.05 < 20 |only if walking
accept Calamitous Intent##43193 |goto Azsuna/0 38.01,84.81
|tip You will accept this quest automatically.
step
kill Calamir##109331 |q 43193/1 |goto 38.01,84.81 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Run away when Calamir casts Howling Gale. |only if grouprole("DAMAGE")
|tip Avoid other players when you get the Burning Bomb debuff. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Dispel the Burning Bomb debuff from other players. |only if grouprole("HEALER")
|tip Avoid the Arcanopulse areas. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Run away when Calamir casts Howling Gale. |only if grouprole("TANK")
|tip Avoid the Arcanopulse areas. |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-41438
Follow the path |goto Azsuna/0 45.14,43.69 < 20 |only if walking
Follow the path down |goto 47.83,45.19 < 20 |only if walking
accept Charged Leystone Deposits##41438 |goto 49.07,47.61
|tip You will accept this quest automatically.
step
click Charged Leystone Deposit##247911
|tip These are located all around the area.
collect 10 Charged Leystone Ore##141238 |q 41438/1 |goto 49.02,47.03
|next "Legion_World_Quest_Emissaries"
step
label quest-46168
Follow the path |goto Azsuna/0 43.02,41.54 < 25 |only if walking
Follow the path |goto 40.60,37.76 < 25 |only if walking
Follow the path |goto 37.93,37.90 < 25 |only if walking
Follow the path |goto 33.98,36.09 < 25 |only if walking
Follow the path |goto 32.65,31.81 < 25 |only if walking
accept Commander Vorlax##46168 |goto Azsuna/0 34.29,28.06
|tip You will accept this quest automatically.
step
kill Commander Vorlax##117970
Defeat Commander Vorlax |q 46168/1 |goto 34.29,28.06 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43091
Follow the path |goto Azsuna/0 50.66,30.05 < 25 |only if walking
Follow the path |goto 50.91,22.58 < 20 |only if walking
Follow the path |goto 51.81,16.12 < 25 |only if walking
Follow the path |goto 53.78,13.91 < 25 |only if walking
Follow the path |goto 55.96,12.91 < 15 |only if walking
accept DANGER: Arcanor Prime##43091 |goto 56.67,11.09
|tip You will accept this quest automatically.
step
kill Arcanor Prime##109641 |q 43091/1 |goto 56.67,11.09 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44189
Follow the path |goto Azsuna/0 46.99,73.10 < 20 |only if walking
Follow the path |goto 44.15,76.99 < 30 |only if walking
Follow the path |goto 44.21,81.99 < 30 |only if walking
Follow the path to Bestrix's lair |goto 42.76,85.14 < 30
accept DANGER: Bestrix##44189 |goto 41.79,88.35
|tip You will accept this quest automatically.
step
kill Bestrix##111454 |q 44189/1 |goto 41.79,88.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43121
Follow the path |goto Azsuna/0 55.92,60.20 < 25 |only if walking
Follow the path |goto 57.90,63.64 < 25 |only if walking
Follow the path |goto 59.09,67.14 < 25 |only if walking
Follow the path |goto 60.44,69.11 < 25 |only if walking
Follow the path |goto 60.11,74.50 < 20 |only if walking
accept DANGER: Chief Treasurer Jabrill##43121 |goto 59.29,77.04
|tip You will accept this quest automatically.
step
kill Chief Treasurer Jabrill##109677 |q 43121/1 |goto 59.29,77.04 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44187
Follow the path |goto Azsuna/0 47.04,73.14 < 25 |only if walking
Follow the path |goto 44.01,77.88 < 15 |only if walking
Follow the path |goto 45.31,80.99 < 25 |only if walking
Follow the path up |goto 46.73,80.13 < 25 |only if walking
accept DANGER: Cinderwing##44187 |goto 46.84,77.70
|tip You will accept this quest automatically.
step
kill Cinderwing##111674 |q 44187/1 |goto 46.84,77.70 |future
|tip Cinderwing is a rare elite. You will most likely need to find a group.
|next "Legion_World_Quest_Emissaries"
step
label quest-43175
Follow the path |goto Azsuna/0 55.85,60.01 < 25 |only if walking
Drop down |goto 56.09,62.29 < 25 |only if walking
accept DANGER: Deepclaw##43175 |goto 56.09,62.29
|tip You will accept this quest automatically.
step
kill Deepclaw##109702 |q 43175/1 |goto 56.09,62.29 |future
|tip Deepclaw is inside the little cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-43059
Follow the path |goto Azsuna/0 63.39,30.66 < 25 |only if walking
Follow the path |goto 63.83,34.57 < 25 |only if walking
Follow the path down |goto 65.21,37.83 < 20 |only if walking
Follow the path |goto 60.44,69.11 < 25 |only if walking
Follow the path |goto 60.11,74.50 < 20 |only if walking
accept DANGER: Fjordun##43059 |goto 66.12,40.10
|tip You will accept this quest automatically.
step
kill Fjordun##109584 |q 43059/1 |goto 66.12,40.10 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43079
Follow the path |goto Azsuna/0 30.93,46.23 < 30 |only if walking
Follow the path |goto 29.13,47.51 < 30 |only if walking
accept DANGER: Immolian##43079 |goto 28.71,49.46
|tip You will accept this quest automatically.
step
kill Immolian##109630 |q 43079/1 |goto 28.71,49.46 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44190
Follow the path |goto Azsuna/0 47.05,73.14 < 30 |only if walking
Go up the path |goto 41.61,73.70 < 30 |only if walking
Enter the tower |goto 40.75,76.63 < 10 |only if walking
|tip Go all the way to the top.
accept DANGER: Jade Darkhaven##44190 |goto 40.37,76.85
|tip You will accept this quest automatically.
step
kill Jade Darkhaven##34914 |q 44190/1 |goto 40.30,76.57 |future
|tip He is all the way at the top of the tower.
|next "Legion_World_Quest_Emissaries"
step
label quest-44191
Follow the path |goto Azsuna/0 47.28,73.05 < 25 |only if walking
Follow the path |goto 44.15,77.06 < 15 |only if walking
Follow the path |goto 44.82,81.62 < 20 |only if walking
Follow the path |goto 45.96,79.55 < 25 |only if walking
accept DANGER: Karthax##44191 |goto 45.48,77.00
|tip You will accept this quest automatically.
step
kill Karthax##111731 |q 44191/1 |goto 45.48,77.00 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43798
accept DANGER: Kosumoth the Hungering##43798 |goto Eye of Azshara Map/0 46.55,49.52
|tip You will accept this quest automatically.
step
kill Kosumoth the Hungering##111573 |q 43798/1 |goto 46.55,49.52 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44192
Follow the path up |goto Azsuna/0 46.90,73.13 < 20 |only if walking
Follow the path up |goto Azsuna/0 44.24,75.43 < 20 |only if walking
Follow the path |goto Azsuna/0 43.97,78.09 < 20 |only if walking
Follow the path |goto Azsuna/0 45.12,82.36 < 20 |only if walking
Follow the path up |goto Azsuna/0 46.16,84.04 < 20 |only if walking
Follow the path up |goto Azsuna/0 45.46,85.08 < 20 |only if walking
accept DANGER: Lysanis Shadesoul##44192 |goto Azsuna/0 43.75,88.78
|tip You will accept this quest automatically.
step
kill Lysanis Shadesoul##30108 |q 44192/1 |goto 43.62,89.67 |future
|tip At the top of the tower.
|next "Legion_World_Quest_Emissaries"
step
label quest-43098
Follow the path |goto Azsuna/0 43.53,42.02 < 30 |only if walking
Follow the path |goto 40.07,37.50 < 30 |only if walking
Follow the path |goto 34.70,36.77 < 30 |only if walking
Follow the path |goto 32.64,31.99 < 30 |only if walking
accept DANGER: Marblub the Massive##43098 |goto 33.86,28.84
|tip You will accept this quest automatically.
step
kill Marblub the Massive##109653 |q 43098/1 |goto 34.12,27.91 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43027
Follow the path |goto Azsuna/0 42.04,44.51 < 30 |only if walking
accept DANGER: Mortiferous##43027 |goto Azsuna/0 40.62,44.66
|tip You will accept this quest automatically.
step
kill Mortiferous##93622 |q 43027/1 |goto 40.62,44.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44193
Follow the path |goto Azsuna/0 50.76,83.17 < 30 |only if walking
Follow the path |goto 48.05,84.92 < 30 |only if walking
Drop down |goto 46.23,86.49 < 30 |only if walking
Drop down |goto 45.64,87.08 < 30 |only if walking
Enter the cave |goto Azsuna/0 45.12,87.01 < 30 |walk
accept DANGER: Sea King Tidross##44193 |goto Azsuna/0 44.29,85.55
|tip You will accept this quest automatically.
step
kill Sea King Tidross##111434 |q 44193/1 |goto 44.29,85.51 |future
|tip Run around the center rock out of LoS when Tidross casts Sea Quake.
|next "Legion_World_Quest_Emissaries"
step
label quest-43063
Follow the path up |goto Azsuna/0 54.10,57.06 < 30 |only if walking
Follow the path up |goto 53.77,54.18 < 30 |only if walking
accept DANGER: Stormfeather##43063 |goto 51.45,56.56
|tip You will accept this quest automatically.
step
kill Stormfeather##109594 |q 43063/1 |goto Azsuna/0 51.20,57.87 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44194
Follow the path |goto Azsuna/0 47.01,73.16 < 30 |only if walking
Follow the path |goto 43.17,76.73 < 30 |only if walking
Go to the beach |goto 40.68,80.27 < 30 |only if walking
accept DANGER: Torrentius##44194 |goto 37.39,82.32
|tip You will accept this quest automatically.
step
kill Torrentius##102064 |q 44194/1 |goto 37.26,83.41 |future
|tip This is an elite enemy you will need a group to kill him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43040
Follow the path |goto Azsuna/0 63.41,25.55 < 25 |only if walking
Follow the path |goto 61.12,21.68 < 25 |only if walking
Follow the path |goto 59.17,22.78 < 25 |only if walking
accept DANGER: Valakar the Thirsty##43040 |goto 58.25,21.31
|tip You will accept this quest automatically.
step
kill Valakar the Thirsty##109575 |q 43040/1 |goto 58.25,21.31 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43072
Follow the path |goto Azsuna/0 41.50,10.70 < 30 |only if walking
Follow the path |goto Azsuna/0 42.61,9.60 < 30 |only if walking
accept DANGER: The Whisperer##43072 |goto 43.18,7.65
|tip You will accept this quest automatically.
step
kill The Whisperer##109620 |q 43072/1 |goto 43.18,7.65 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42146
Follow the path |goto Azsuna/0 46.34,44.55 < 30 |only if walking
Follow the path |goto 47.64,43.84 < 30 |only if walking
accept Dazed and Confused and Adorable##42146 |goto 50.03,41.44
|tip You will accept this quest automatically.
step
clicknpc Beguiling Orb##106476
Defeat the Murlocs |q 42146/1 |goto 50.03,41.44
|next "Legion_World_Quest_Emissaries"
step
label quest-44287
Enter the cave |goto Azsuna/0 52.40,79.84 < 30 |walk
accept DEADLY: Withered J'im##44287 |goto Azsuna/0 52.60,81.28
|tip You will accept this quest automatically.
step
kill Withered J'im##112350 |q 44287/1 |goto 52.60,81.28 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44054
accept Demonicide##44054 |goto Azsuna/0 48.17,73.05
|tip You will accept this quest automatically.
step
Follow the path up |goto 46.90,73.13 < 20 |only if walking
Kill enemies around this area
Purge the Demons |q 44054/1 |goto 44.89,74.24
|next "Legion_World_Quest_Emissaries"
step
label quest-42276
accept Disgusting, but Useful##42276 |goto Azsuna/0 30.71,46.45
|tip You will accept this quest automatically.
step
kill Manastalker##107135+
collect 50 Manastalker Tendril##137330 |q 42276/1 |goto 30.71,46.45
step
Follow the path |goto 31.17,45.41 < 20 |only if walking
click Felsurge Eggs##250267
|tip They look like shaking white eggs on the ground around this area.
kill Felsurge Broodmother##113987+
collect 10 Felsurge Spider Egg##137335 |q 42276/2 |goto 33.86,42.95
|next "Legion_World_Quest_Emissaries"
step
label quest-46169
accept Dro'zek##46169 |goto Azsuna/0 56.60,56.19
|tip You will accept this quest automatically.
step
kill 1 Dro'zek##117067 |q 46169/1 |goto 56.60,56.19 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43328
Follow the path |goto Azsuna/0 46.22,44.58 < 30 |only if walking
Follow the path |goto 48.34,44.02 < 30 |only if walking
Follow the path |goto 49.21,45.29 < 30 |only if walking
accept Enigmatic##43328 |goto 49.19,46.77
|tip You will accept this quest automatically.
step
clicknpc Puzzle Box##126354
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43328/1 |goto 49.19,46.77
|next "Legion_World_Quest_Emissaries"
step
label quest-42711
Cross the bridge |goto Azsuna/0 56.48,62.04 < 30 |only if walking
accept The Eternal Mages##42711 |goto 56.33,65.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Ghost Mages |q 42711/1 |goto 57.03,65.17
|next "Legion_World_Quest_Emissaries"
step
label quest-44049
Follow the path |goto Azsuna/0 51.05,83.03 < 30 |only if walking
Follow the path down |goto 46.30,84.68 < 30 |only if walking
accept Evil Has Many Legs##44049 |goto 44.34,82.09
|tip You will accept this quest automatically.
step
Slay the spiders around this area
Purge the Demonic Spiders |q 44049/1 |goto Azsuna/0 43.07,84.84
|next "Legion_World_Quest_Emissaries"
step
label quest-42723
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: A Tough Shell##42723
|tip You will accept this quest automatically.
step
kill Jaggen-Ra##101467 |q 42723/1
|tip You will encounter Jaggen-Ra on the way to King Deepbeard.
step
kill Wrath of Azshara##96028 |q 42723/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42755
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Azsunian Pearls##42755
|tip You will accept this quest automatically.
step
collect 5 Massive Azsunian Pearl##138398 |q 42755/1
|tip You will find plenty of these around the beach in the center of the instance.
step
kill Wrath of Azshara##96028 |q 42755/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42746
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Dread End##42746
|tip You will accept this quest automatically.
step
kill Dread Captain Thedon##108543 |q 42746/1
|tip You will find Thedon northwest of Lady Hatecoil along the shore.
step
kill Wrath of Azshara##96028 |q 42746/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42713
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Slug It Out##42713
|tip You will accept this quest automatically.
step
kill Shellmaw##91788 |q 42713/1
|tip Shellmaw is west of Lady Hatecoil along the rocks.
step
kill Wrath of Azshara##96028 |q 42713/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42712
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Termination Claws##42712
|tip You will accept this quest automatically.
step
kill Gom Crabbar##101411 |q 42712/1
|tip Gom Crabbar is among the small islands west of Serpentrix.
step
kill Wrath of Azshara##96028 |q 42712/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42027
accept Faronaar in Chaos##42027 |goto Azsuna/0 37.95,52.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Soul Prisons##249421
|tip They look like small green floating crystals around this area.
click Legion Portals##267226
|tip They look like big green domes.
click Librams of Fel Knowledge
|tip They look like open floating books.
Lead the Fight Against the Legion |q 42027/1 |goto 37.95,52.68
|next "Legion_World_Quest_Emissaries"
step
label quest-42026
Follow the path |goto Azsuna/0 43.08,45.32 < 30 |only if walking
Follow the path |goto 40.99,47.95 < 30 |only if walking
Follow the path |goto 39.41,50.72 < 30 |only if walking
Follow the path |goto 38.82,55.17 < 30 |only if walking
accept Faronaar in Ruin##42026 |goto 38.84,57.72
|tip You will accept this quest automatically.
stickystart "Legion_Camp_Demons"
step
click Jailer's Cages##249459
|tip They look like pointed gray metal cages around this area.
Free #8# Illidari |q 42026/1 |goto 39.05,57.85
step
label "Legion_Camp_Demons"
Kill enemies around this area
Slay #10# Legion Camp Demons |q 42026/2 |goto 39.05,57.85
|next "Legion_World_Quest_Emissaries"
step
label quest-41323
Follow the path |goto Azsuna/0 43.60,42.22 < 30 |only if walking
Follow the path |goto 40.02,37.44 < 30 |only if walking
Follow the path |goto 35.17,36.96 < 30 |only if walking
accept Fatty Lion Seal Skin##41323 |goto 31.98,34.64
|tip You will accept this quest automatically.
step
kill Azsuna Lion Seal##89013+
|tip Loot and Skin these.
collect 8 Fatty Lion Seal Skin##134807 |q 41323/1 |goto Azsuna/0 30.48,34.10
|next "Legion_World_Quest_Emissaries"
step
label quest-46161
accept Felcaller Thalezra##46161 |goto Azsuna/0 49.16,44.02
|tip You will accept this quest automatically.
step
kill Felcaller Thalezra##117056
Defeat Felcaller Thalezra |q 46161/1 |goto Azsuna/0 49.16,44.02 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41563
Carefully cross the rocks |goto Azsuna/0 45.60,72.22 < 30 |only if walking
Follow the path |goto 43.53,71.70 < 30 |only if walking
accept Felhide##41563 |goto 41.44,71.3
|tip You will accept this quest automatically.
step
This is an elite area, be wary of the enemies here.
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41563/1 |goto Azsuna/0 41.44,71.3
|next "Legion_World_Quest_Emissaries"
step
label quest-41564
Follow the path |goto Azsuna/0 43.34,44.83 < 30 |only if walking
Run up the hidden path here |goto 38.27,55.86 < 30 |only if walking
Follow the path up |goto 35.16,54.89 < 30 |only if walking
Continue following the path |goto 33.98,55.53 < 30 |only if walking
Follow the path |goto 30.61,54.77 < 30 |only if walking
Follow the path down |goto 29.03,55.37 < 30 |only if walking
accept Felhide##41564 |goto 29.72,57.18
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41564/1 |goto Azsuna/0 29.83,57.97
|next "Legion_World_Quest_Emissaries"
step
label quest-41562
Follow the path |goto Azsuna/0 30.52,46.52 < 25 |only if walking
accept Felhide##41562 |goto 27.73,48.93
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41562/1 |goto 27.73,48.93
|next "Legion_World_Quest_Emissaries"
step
label quest-44044
accept Felled Experiment##44044 |goto 43.30,72.05
|tip You will accept this quest automatically.
step
kill Experimental Fel Corruptor##111763+ |q 44044/1 |goto 43.30,72.05
kill Beguiled Inquisitor##111752+ |q 44044/2 |goto 43.30,72.05
|tip These mobs are elite. You might need some help.
|next "Legion_World_Quest_Emissaries"
step
label quest-44050
Follow the path |goto Azsuna/0 47.09,73.16 < 25 |only if walking
Follow the path up |goto 41.64,73.61 < 20 |only if walking
accept The Felsworn Must Fall##44050 |goto 41.09,75.75
|tip You will accept this quest automatically.
step
kill Felsworn Adept##102059+ |q 44050/1 |goto 41.09,75.75
kill Felsworn Betrayer##103972+ |q 44050/2 |goto 41.09,75.75
kill Felsworn Defiler##111929+ |q 44050/3 |goto 41.09,75.75
|next "Legion_World_Quest_Emissaries"
step
label quest-41514
Follow the path |goto Azsuna/0 65.36,28.86 < 30 |only if walking
accept Felwort##41514 |goto 68.37,28.92
step
click Felwort##248009
collect Felwort##124106 |q 41514/1 |goto Azsuna/0 68.37,28.92
|next "Legion_World_Quest_Emissaries"
step
label quest-41513
accept Felwort##41513 |goto Azsuna/0 40.60,46.73
step
click Felwort##248009
collect Felwort##124106 |q 41513/1 |goto Azsuna/0 40.70,46.53
|next "Legion_World_Quest_Emissaries"
step
label quest-41515
Follow the path |goto Azsuna/0 46.25,44.65 < 30 |only if walking
Follow the path |goto 46.28,51.59 < 30 |only if walking
Cross the bridge |goto 48.32,54.49 < 20 |only if walking
accept Felwort##41515 |goto 48.54,57.05
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41515/1 |goto 48.54,57.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41437
Follow the path |goto Azsuna/0 46.55,30.62 < 30 |only if walking
Follow the path |goto 44.28,32.01 < 30 |only if walking
accept Fine Leystone Deposits##41437 |goto 41.85,34.47
|tip You will accept this quest automatically.
step
click Fine Leystone Deposit##247910
collect Fine Leystone Ore##141225 |q 41437/1 |goto 41.85,34.47
|tip These are located all around the area.
|next "Legion_World_Quest_Emissaries"
step
label quest-41289
Follow the path |goto Azsuna/0 45.43,42.38 < 25 |only if walking
Follow the path |goto 46.52,40.45 < 25 |only if walking
accept Flourishing Aethril##41289 |goto 46.69,36.72
|tip You will accept this quest automatically.
step
click Flourishing Aethril##247605
collect 10 Flourishing Aethril##140947 |q 41289/1 |goto 46.69,36.72
|next "Legion_World_Quest_Emissaries"
step
label quest-46166
Follow the path |goto Azsuna/0 63.34,29.83 < 25 |only if walking
Follow the path |goto 63.43,33.65 < 25 |only if walking
Follow the path |goto 60.82,34.73 < 25 |only if walking
accept Garthulak the Crusher##46166 |goto Azsuna/0 59.63,36.14
|tip You will accept this quest automatically.
step
kill Garthulak the Crusher##116955 |q 46166/1 |goto 59.63,36.14 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41455
Follow the path |goto Azsuna/0 57.20,59.04 < 25 |only if walking
Follow the path |goto 58.95,60.11 < 25 |only if walking
Follow the path |goto 60.93,60.00 < 25 |only if walking
accept Gleaming Leystone Outcropping##41455 |goto 62.12,60.33
|tip You will accept this quest automatically.
step
click Gleaming Leystone Outcropping##247938
|tip It's underwater.
collect 1 Gleaming Leystone Ore##141229 |q 41455/1 |goto 62.12,60.33
|next "Legion_World_Quest_Emissaries"
step
label quest-41434
Follow the path |goto Azsuna/0 53.86,58.73 < 25 |only if walking
Follow the path |goto 52.00,59.91 < 25 |only if walking
Follow the path |goto 51.28,56.16 < 25 |only if walking
Follow the path |goto 49.42,55.46 < 25 |only if walking
accept Glowing Leystone Deposits##41434 |goto Azsuna/18 70.94,71.58
|tip You will accept this quest automatically.
step
click Glowing Leystone Deposit##247908
|tip These can be found all around the cave.
collect 10 Glowing Leystone Ore##141223 |q 41434/1 |goto 70.94,71.58
|next "Legion_World_Quest_Emissaries"
step
label quest-43804
accept Hate the Hatecoil##43804 |goto Eye of Azshara Map/0 38.45,46.16
|tip You will accept this quest automatically.
step
Slay the Naga around this area
kill 15 Hatecoil Naga |q 43804/1 |goto Eye of Azshara Map/0 50.61,67.27
|next "Legion_World_Quest_Emissaries"
step
label quest-42624
Cross the water |goto Azsuna/0 57.22,62.55 < 30 |only if walking
Follow the path |goto 59.17,65.60 < 30 |only if walking
accept Heads of the Fleet##42624 |goto 61.07,69.32
|tip You will accept this quest automatically.
step
Enter the cave |goto 59.55,68.35 < 30 |walk
kill Second Mate Cilieth##108212 |q 42624/2 |goto 59.66,69.79
step
Leave the cave |goto 59.55,68.35 < 30 |walk
kill First Mate Oxswain##108137 |q 42624/1 |goto 61.13,68.72
|tip At the top of the ship.
step
kill Bilgerat##108174 |q 42624/3 |goto 60.81,70.81
|tip Inside the small cave.
step
Follow the beach |goto 61.53,72.00 < 30 |only if walking
Follow the beach |goto 59.32,72.84 < 30 |only if walking
Follow the path |goto 58.12,74.09 < 30 |only if walking
kill Quartermaster Zolix##108186 |q 42624/4 |goto 57.44,75.32
|next "Legion_World_Quest_Emissaries"
step
label quest-44737
Follow the path |goto Azsuna/0 43.59,42.16 < 20 |only if walking
Follow the path |goto 40.68,37.76 < 25 |only if walking
Follow the path |goto 36.51,37.52 < 25 |only if walking
Follow the path |goto 33.41,35.29 < 25 |only if walking
accept Helarjar Landing: Grey Shoals##44737 |goto 31.94,28.78
|tip You will accept this quest automatically.
step
click Kvaldir Weapon Rack##266170
kill Helhound##115026+, Cursed Rigger##115031+, Helarjar Raider##115025+
Disrupt the Helarjar Landing |q 44737/1 |goto 31.94,28.78
|next "Legion_World_Quest_Emissaries"
step
label quest-42154
Follow the path |goto Azsuna/0 50.58,26.70 < 30 |only if walking
Follow the path |goto 50.83,20.91 < 30 |only if walking
accept Help a Whelp##42154 |goto 53.22,16.18
|tip You will accept this quest automatically.
step
clicknpc Wounded Azurewing Whelpling##106542
Defeat the Scavenging Critters |q 42154/1 |goto Azsuna/0 53.22,16.18
|next "Legion_World_Quest_Emissaries"
step
label quest-41611
Follow the path |goto Azsuna/0 44.97,46.19 < 25 |only if walking
Follow the path |goto 44.57,51.26 < 25 |only if walking
accept Huge Cursed Queenfish##41611 |goto 43.33,56.15
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41611/1 |goto 43.57,56.02
|next "Legion_World_Quest_Emissaries"
step
label quest-41610
Follow the path |goto Azsuna/0 49.30,29.02 < 25 |only if walking
Follow the path |goto 51.39,30.73 < 25 |only if walking
Follow the path |goto 53.12,32.10 < 25 |only if walking
accept Huge Cursed Queenfish##41610 |goto 54.87,37.76
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41610/1 |goto 54.87,37.76
|next "Legion_World_Quest_Emissaries"
step
label quest-41265
Follow the path |goto Azsuna/0 46.21,44.61 < 25 |only if walking
Follow the path |goto 47.61,43.87 < 25 |only if walking
Follow the path |goto 48.94,42.71 < 25 |only if walking
Follow the path |goto 48.98,41.29 < 25 |only if walking
accept Huge Cursed Queenfish##41265 |goto 50.98,42.05
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41265/1 |goto 63.01,26.88
|next "Legion_World_Quest_Emissaries"
step
label quest-42277
accept Interlopers1!##42277 |goto Azsuna/0 31.53,46.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip The blue progress bar will fill up in your quest tracker area.
Attack the Legion in Upper Faronaar |q 42277/1 |goto 30.71,46.45
|next "Legion_World_Quest_Emissaries"
step
label quest-42021
accept Investigation at Mak'rana##42021 |goto Azsuna/0 61.73,59.70
|tip You will accept this quest automatically.
stickystart "Gilblin"
stickystart "Queens_Reprisal_Sailors"
step
Kill Mak'rana enemies around this area
Slay #6# Makrura |q 42021/1 |goto 59.69,58.13
step
label "Gilblin"
Kill enemies around this area
Slay #6# Gilblin |q 42021/2 |goto 59.69,58.13
step
label "Queens_Reprisal_Sailors"
kill Queen's Reprisal Sailor##89290+
|tip They're undead enemies mixed in with the enemies around this area.
"Release" #4# Queen's Reprisal Sailors |q 42021/3 |goto 59.69,58.13
step
Enter the cave underwater |goto 62.93,61.44 < 20 |walk
kill Oublion##89350
|tip Switch to fighting Queen Kraklaa when he casts the green bubble around himself.
kill Queen Kraklaa##89287
Kill Oublion |q 42021/4 |goto 63.86,63.55
|next "Legion_World_Quest_Emissaries"
step
label quest-41528
Follow the path |goto Azsuna/0 42.00,11.31 < 30 |only if walking
accept Iridescent Aethril##41528 |goto 43.95,10.82
|tip You will accept this quest automatically.
step
click Iridescent Aethril##248020
collect 10 Iridescent  Aethril##140950 |q 41528/1 |goto 45.46,10.21
|next "Legion_World_Quest_Emissaries"
step
label quest-46165
Follow the path |goto Azsuna/0 56.88,57.18 < 25 |only if walking
Follow the path |goto 58.34,51.57 < 20 |only if walking
Follow the path |goto 61.02,50.76 < 25 |only if walking
accept Kazruul##46165 |goto 62.69,46.32
|tip You will accept this quest automatically.
step
kill Kazruul##118012
Defeat Kazruul |q 46165/1 |goto 62.69,46.32 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46167
Follow the path |goto Azsuna/0 47.51,29.14 < 25 |only if walking
accept Kozrum##46167 |goto Azsuna/0 44.23,32.03
|tip You will accept this quest automatically.
step
kill Kozrum##117061 |q 46167/1 |goto 44.23,32.03 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42101
Cross the water |goto 56.88,56.51 < 30 |only if walking
accept Language of the Lost##42101 |goto 59.51,54.10
|tip You will accept this quest automatically.
stickystart "Illegible_Writings"
step
Run up the stairs |goto 59.73,54.67 < 15 |only if walking
kill The Oracle##89850
collect Oracle's Scrying Orb##136833 |q 42101/2 |goto 59.51,54.10
step
label "Illegible_Writings"
kill Fallen Priestess##91074+
click Illegible Writings##249513
|tip They look like white rolled-up scrolls sitting on the ground and on objects around this area.
collect 10 Illegible Writings##136832 |q 42101/1 |goto 59.51,54.10
|next "Legion_World_Quest_Emissaries"
step
label quest-42211
Follow the path |goto Azsuna/0 63.38,30.77 < 30 |only if walking
Follow the path |goto Azsuna/0 64.51,35.30 < 30 |only if walking
Cross the bridge |goto Azsuna/0 66.24,38.79 < 30 |only if walking
Follow the path |goto Azsuna/0 66.94,44.12 < 30 |only if walking
Follow the path |goto Azsuna/0 66.37,47.28 < 30 |only if walking
accept Leodrath's Kin##42211 |goto 65.49,49.24
|tip You will accept this quest automatically.
stickystart "Sabotage_Inactive_Constructs"
stickystart "Leodraths_Allies"
step
kill Syphonus##90505
Defeat Leodrath |q 42211/3 |goto 67.13,51.57
step
label "Sabotage_Inactive_Constructs"
clicknpc Inactive Constructs##106694
|tip They look like purple glowing broken down robots around this area.
Sabotage #6# Inactive Constructs |q 42211/1 |goto 64.97,48.93
step
label "Leodraths_Allies"
Kill enemies around this area
Slay #10# of Leodrath's Allies |q 42211/2 |goto 66.31,49.79
|next "Legion_World_Quest_Emissaries"
step
label quest-43325
accept Ley Race##43325 |goto Azsuna/0 63.12,29.91
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43325/1 |goto 63.13,29.97
|next "Legion_World_Quest_Emissaries"
step
label quest-42172
Enter the cave |goto Azsuna/0 48.24,25.04 < 30 |only if walking
accept Leyhollow Infestation##42172 |goto 48.45,23.78
|tip You will accept this quest automatically.
stickystart "Burrowing_Leyworms"
step
Follow the path |goto 48.41,21.90 < 30 |walk
click Heavy Stones##249771
|tip They look like smaller flat rocks on the ground around this area.
Use the Drop Stone ability next to tunnels
|tip It appears as a button on the screen.
|tip The tunnels look like holes in the ground with yellow arrows above them.
Cover #4# Leyworm Tunnels |q 42172/1 |goto 49.59,21.29
step
label "Burrowing_Leyworms"
kill 10 Burrowing Leyworm##106630+ |q 42172/2 |goto 49.59,21.29
step
kill Ualair##106665 |q 42172/3 |goto 51.55,20.02
|next "Legion_World_Quest_Emissaries"
step
label quest-41498
accept Leystone Basilisks##41498 |goto Azsuna/0 38.96,56.92
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Kill these loot them completly and then mine them.
|tip Be careful, only one person can mine each mob, mine them quickly after looting them.
collect 40 Leystone-Encrusted Spike##134104 |q 41498/1 |goto 38.96,56.92
|next "Legion_World_Quest_Emissaries"
step
label quest-41500
Enter the cave |goto Azsuna/0 47.96,24.93 < 30
accept Leyworms##41500 |goto 50.26,21.67
|tip You will accept this quest automatically.
step
kill Burrowing Leyworm##106630+, Sorcerite##109338+
collect Leystone-Encrusted Spike##134104 |q 41500/1 |goto 50.26,21.67
|tip Mine the corpses.
|next "Legion_World_Quest_Emissaries"
step
label quest-45046
Follow the path |goto Azsuna/0 55.90,60.10 < 25 |only if walking
Follow the path |goto 56.36,65.74 < 25 |only if walking
Follow the path |goto 55.23,69.08 < 25 |only if walking
Follow the path |goto 56.04,71.63 < 25 |only if walking
Follow the path |goto 57.27,72.13 < 10 |only if walking
accept Like the Wind##45046 |goto 57.14,73.13
|tip You will accept this quest automatically.
step
Goal Reached |q 45046/1 |goto 57.14,73.13
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Legion_World_Quest_Emissaries"
step
label quest-41527
accept Lively Aethril##41527 |goto Azsuna/0 61.70,23.35
|tip You will accept this quest automatically.
step
click Lively Aethril##248019
collect 10 Lively Aethril##140948 |q 41527/1 |goto 61.70,23.35
|next "Legion_World_Quest_Emissaries"
step
label quest-41598
Follow the path |goto Azsuna/0 43.03,43.17 < 20 |only if walking
accept Lively Cursed Queenfish##41598 |goto 40.01,41.79
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##7620
|tip You will find these all around the water.
collect 10 Lively Cursed Queenfish##134564 |q 41598/1 |goto 40.01,41.79
|next "Legion_World_Quest_Emissaries"
step
label quest-41599
Follow the path |goto Azsuna/0 55.38,59.90 < 25 |only if walking
Follow the path |goto 54.11,61.28 < 25 |only if walking
Follow the path |goto 53.02,61.04 < 15 |only if walking
Follow the path |goto 50.65,62.75 < 25 |only if walking
accept Lively Cursed Queenfish##41599 |goto 51.14,66.02
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##7620
|tip You will find these all around the water.
collect 10 Lively Cursed Queenfish##134564 |q 41599/1 |goto 51.14,66.02
|next "Legion_World_Quest_Emissaries"
step
label quest-41264
accept Lively Cursed Queenfish##41264 |goto Azsuna/0 63.01,26.88
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##131474
|tip You will find these all around the water.
More schools can be found _here_ |goto 63.91,22.58
collect 10 Lively Cursed Queenfish##134564 |q 41264/1 |goto 63.01,26.88
|next "Legion_World_Quest_Emissaries"
step
label quest-41454
Follow the path |goto Azsuna/0 63.42,25.51 < 25 |only if walking
Follow the path |goto 60.28,20.57 < 25 |only if walking
Follow the path |goto 59.22,17.21 < 25 |only if walking
Drop down |goto 58.68,14.22 < 10 |only if walking
accept Luminous Leystone Outcropping##41454 |goto 58.63,13.67
|tip You will accept this quest automatically.
step
Drop down |goto 58.68,14.22 < 10 |only if walking
kill Withered Ravager##8092
click Luminous Leystone Outcropping##247937
collect 1 Luminous Leystone Ore##141226 |q 41454/1 |goto 58.63,13.67
|next "Legion_World_Quest_Emissaries"
step
label quest-43327
Follow the path |goto Azsuna/0 50.19,30.38 < 30 |only if walking
Go to the beach |goto Azsuna/0 52.06,34.66 < 30 |only if walking
accept The Magic of Flight##43327 |goto Azsuna/0 54.28,36.64
|tip You will accept this quest automatically.
step
talk Archmage Kesalon##110915
clicknpc Arcane Artifact##110664
|tip Stay inside the bubbles as they float to reach the Arcane Artifact on top of the building.
Find the Item |q 43327/1 |goto 54.06,39.03
|next "Legion_World_Quest_Emissaries"
step
label quest-46164
Follow the path |goto Azsuna/0 43.02,41.54 < 25 |only if walking
Follow the path |goto 53.20,28.77 < 25 |only if walking
Follow the path |goto 37.93,37.90 < 25 |only if walking
Follow the path |goto 33.98,36.09 < 25 |only if walking
Follow the path |goto 32.65,31.81 < 25 |only if walking
accept Mal'serus##46164 |goto Azsuna/0 55.26,29.86
|tip You will accept this quest automatically.
step
kill Mal'serus##117997
Defeat Mal'serus |q 46164/1 |goto 55.26,29.86 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44786
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto Azsuna/17 53.77,40.31
accept Midterm: Rune Aptitude##44786 |goto 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto 58.11,68.23
Go through the Academy Door |goto 50.40,50.09
Arcane Rune drawn |q 44786/1 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
step
Fire Rune drawn |q 44786/2 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
step
Frost Rune drawn |q 44786/3 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
|next "Legion_World_Quest_Emissaries"
step
label quest-42105
Follow the path |goto Azsuna/0 49.64,29.59 < 30 |only if walking
accept Mixology Mix-up##42105 |goto Azsuna/0 50.60,34.99
|tip You will accept this quest automatically.
stickystart "Intact_Murloc_Eyes"
step
Enter the cave |goto 51.82,32.98 < 50 |walk
click Egg of Gangamesh##249524
collect Egg of Gangamesh##136839 |q 42105/2 |goto 51.69,32.29
step
label "Intact_Murloc_Eyes"
Kill enemies around this area
collect 20 Intact Murloc Eye##136838 |q 42105/1 |goto 50.60,34.99
|next "Legion_World_Quest_Emissaries"
step
label quest-44048
accept Nagana Happen##44048 |goto Azsuna/0 48.17,73.06
|tip You will accept this quest automatically.
stickystart "Ocean Guardian"
step
Follow the path down |goto Azsuna/0 43.62,78.94
|tip This is an elite area you may need a group to complete this quest.
kill Hatecoil Stormspeaker##111457+, Hatecoil Guardian##111481+, Hatecoil Ravager##111438+
Slay #10# Naga |q 44048/1 |goto Azsuna/0 38.20,82.25
step
label "Ocean Guardian"
kill 3 Ocean Guardian##102066 |q 44048/2 |goto Azsuna/0 40.14,84.37
|next "Legion_World_Quest_Emissaries"
step
label quest-42275
Follow the path |goto Azsuna/0 42.41,46.52 < 30 |only if walking
Follow the path |goto 40.85,48.27 < 30 |only if walking
Follow the path |goto 39.29,51.45 < 30 |only if walking
accept Not On My Watch##42275 |goto 32.03,52.59
|tip You will accept this quest automatically.
stickystart "Slay_Eredar_Apocalypse"
step
click Dimensional Anchors##250375
|tip They look like big green spinning floating crystals inside the building around this area.
Destroy #4# Dimensional Anchors |q 42275/2 |goto 32.41,53.99
step
label "Slay_Eredar_Apocalypse"
Kill enemies around this area
Slay #10# Eredar at Soul Engine: Apocalypse |q 42275/1 |goto 32.03,52.59
|next "Legion_World_Quest_Emissaries"
step
label quest-46116
Follow the path |goto Azsuna/0 64.49,26.06 < 25 |only if walking
accept On Unhallowed Grounds##46116 |goto 64.03,19.55
|tip You will accept this quest automatically.
stickystart "unhallowed"
step
kill Corruptor Hel'drath##118753
Defeat Corruptor Hel'drath |q 46116/2 |goto 63.60,18.60
step
label "unhallowed"
kill Felblade Devastator##118782+, Corrupted Brute##116664+, Dreadflame Corruptor##118783+
clicknpc Fel Corruptor##120151
Halt the corruption efforts |q 46116/1 |goto 64.03,19.55
|next "Legion_World_Quest_Emissaries"
step
label quest-41896
Follow the path |goto Azsuna/0 40.60,12.39 < 30 |only if walking
Follow the path |goto Azsuna/0 38.93,15.22 < 30 |only if walking
accept Operation Murloc Freedom##41896 |goto 37.78,17.05
|tip You will accept this quest automatically.
step
Kill Timeworn enemies around this area.
|tip WARNING: You will be flagged for PvP by being in this area.
Clear Timeworn Strand of the Naga Invaders and Slay Players |q 41896/1 |goto 37.78,17.05
|next "Legion_World_Quest_Emissaries"
step
label quest-42623
Follow the path |goto Azsuna/0 56.00,60.51 < 30 |only if walking
Cross the water |goto 57.21,62.60 < 30 |only if walking
accept Piracy Doesn't Pay##42623 |goto 60.32,69.34
|tip You will accept this quest automatically.
stickystart "Slay_Dread_Pirates"
step
click Kegs of Spicy Grog
|tip They look like wooden barrels on the ground around this area.
Smash #5# Kegs of Spicy Grog |q 42623/2 |goto 60.24,69.94
|tip Use the Throw Grog ability that appears as a button on the screen to smash the Kegs of Spicy Grog.
step
label "Slay_Dread_Pirates"
Kill enemies around this area
Slay #12# Dread Pirates |q 42623/1 |goto 60.32,69.34
|next "Legion_World_Quest_Emissaries"
step
label quest-41268
Follow the path |goto Azsuna/0 49.28,29.28 < 25 |only if walking
accept Queen Queenfish##41268 |goto 52.74,31.23
|tip You will accept this quest automatically.
step
kill Queen Queenfish##104258 |q 41268/1 |goto 52.74,31.23 |future
|tip Queen Queenfish swims up and down the river. Follow the river north to find it.
|next "Legion_World_Quest_Emissaries"
step
label quest-41266
Follow the path |goto Azsuna/0 57.25,59.04 < 25 |only if walking
Follow the path |goto 60.00,58.11 < 25 |only if walking
Follow the path |goto 62.99,56.35 < 25 |only if walking
Follow the path |goto 65.09,54.84 < 25 |only if walking
accept Raft Fishing##41266 |goto 67.32,54.99
|tip You will accept this quest automatically.
step
talk Alynrus Nightcast##109735
Ask him: "_Do you happen to have an extra raft I can borrow?_"
Fish from Blue Barracude schools |cast Fishing##131474
collect 10 Blue Barracuda##134566 |q 41266/1 |goto 68.02,55.78
|next "Legion_World_Quest_Emissaries"
step
label quest-42108
Follow the path up |goto Azsuna/0 45.48,42.20 < 30 |only if walking
Cross the water |goto 46.42,40.50 < 30 |only if walking
accept Rally the Nightwatchers##42108 |goto 47.27,37.56
|tip You will accept this quest automatically.
stickystart "Rally_Nightwatchers"
step
Go up the steps |goto 46.23,36.45 < 30 |only if walking
kill Fathom-Commander Zarrin##88090 |q 42108/2 |goto 45.02,36.89
step
Follow the path |goto 46.40,36.39 < 30 |only if walking
Go up the steps |goto 47.46,34.82 < 30 |only if walking
kill Valiyaka the Stormbringer##89650 |q 42108/1 |goto 47.30,34.37
step
label "Rally_Nightwatchers"
Use the Rally the Nightwatchers ability near Nar'thalas Nightwatchers
|tip It appears as a button on the screen.
|tip The Nar'thalas Nightwatchers look like friendly npc's standing or fighting enemies around this area.
Rally #10# Nightwatchers |q 42108/3 |goto 46.48,36.51
|next "Legion_World_Quest_Emissaries"
step
label quest-42123
Follow the path |goto Azsuna/0 50.58,30.16 < 30 |only if walking
accept Reclaiming Llothien##42123 |goto 54.52,29.01
|tip You will accept this quest automatically.
stickystart "Llothien_Prowlers"
step
kill Pridelord Meowl##90901 |q 42123/2 |goto 56.07,29.02
|tip Inside the building.
step
label "Llothien_Prowlers"
kill 10 Llothien Prowler##90313+ |q 42123/1 |goto 54.52,29.01
|next "Legion_World_Quest_Emissaries"
step
label quest-45058
accept Release the Wardens!##45058 |goto Azsuna/0 60.15,24.60
|tip You will accept this quest automatically.
step
clicknpc Captured Scalewarden##115969
kill Wrathguard Doomblade##116026+, Felhound##116027+, Abyssal Devourer##116025+
Repel the Legion forces |q 45058/1 |goto 60.15,24.60
|next "Legion_World_Quest_Emissaries"
step
label quest-41324
Follow the path |goto Azsuna/0 50.36,30.27 < 25 |only if walking
accept Silky Prowler Fur##41324 |goto 54.53,29.01
|tip You will accept this quest automatically.
step
kill Llothien Prowler##90313+
|tip Skin the corpses.
collect 12 Silky Prowler Fur##134808 |q 41324/1
|next "Legion_World_Quest_Emissaries"
step
label quest-42063
Follow the path |goto Azsuna/0 63.38,30.69 < 25 |only if walking
Follow the path |goto 63.84,34.56 < 25 |only if walking
Follow the path down |goto 65.17,37.86 < 15 |only if walking
accept Size Doesn't Matter##42063 |goto 65.63,41.01
|tip You will accept this quest automatically.
step
clicknpc Blottis##105898
Defeat Blottis |q 42063/1 |goto 65.63,41.01
|next "Legion_World_Quest_Emissaries"
step
label quest-41259
Follow the path |goto Azsuna/0 43.63,42.24 < 30 |only if walking
Follow the path |goto 39.92,37.45 < 30 |only if walking
Follow the path |goto 38.06,37.94 < 15 |only if walking
Follow the path |goto 34.33,36.49 < 15 |only if walking
Follow the path |goto 33.08,34.67 < 15 |only if walking
Follow the path |goto 32.65,31.95 < 15 |only if walking
Go down toward the water |goto 32.79,30.39 < 30 |only if walking
Cross the water here |goto 32.19,25.28 < 30 |only if walking
|tip Watch out for the Sea Skorg that pats around this area.
Follow the path |goto 31.62,23.83 < 15 |only if walking
accept Slab of Bacon##41259 |goto Azsuna/0 30.12,23.69
step
Enter the cave |goto 30.12,23.69 < 15 |only if walking
|tip it is on the North side of this island.
kill Well-Fed Lion Seal##103784
collect Slice of Bacon##133680 |q 41259/1 |goto Azsuna/0 30.59,25.50 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41551
Follow the path |goto Azsuna/0 40.21,12.55 < 30 |only if walking
Cross the rocks |goto 36.57,12.22 < 30 |only if walking
Climb the rocks |goto 34.69,12.09 < 30 |only if walking
accept Slab of Bacon##41551 |goto 33.65,11.35
|tip On top of the rock.
|tip You will accept this quest automatically.
step
kill Well-Fed Lion Seal##103784
collect collect Thick Slab of Bacon##135511 |q 41551/1 |goto Azsuna/0 33.65,11.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41552
Follow the path |goto Azsuna/0 57.66,59.03 < 25 |only if walking
Follow the path |goto 60.14,62.33 < 25 |only if walking
Follow the path |goto 62.00,65.73 < 25 |only if walking
Follow the path |goto 64.97,68.86 < 25 |only if walking
accept Slab of Bacon##41552 |goto 65.05,71.49
|tip You will accept this quest automatically.
step
kill Well-Fed Lion Seal##103784
collect 1 Thick Slab of Bacon##135511 |q 41552/1 |goto 65.05,71.49 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41435
Follow the path |goto Azsuna/0 49.35,29.17 < 30 |only if walking
Follow the path down |goto 51.26,32.66 < 30 |only if walking
Cross the water |goto 52.06,34.75 < 30 |only if walking
accept Smooth Leystone Deposits##41435 |goto 54.59,36.63
|tip You will accept this quest automatically.
step
click Smooth Leystone Deposit##247909
collect Smooth Leystone Ore##141224 |q 41435/1 |goto 54.59,36.63
|tip These veins are found all around the water.
|next "Legion_World_Quest_Emissaries"
step
label quest-41582
Follow the path |goto Azsuna/0 63.80,25.70 < 30 |only if walking
accept Smooth Sunrunner Hide##41582 |goto 61.65,23.09
|tip You will accept this quest automatically.
step
kill Equine Sunrunner##91308+
|tip Loot and skin them.
collect 8 Smooth Sunrunner Hide##137628 |q 41582/1 |goto Azsuna/0 60.66,24.83
|next "Legion_World_Quest_Emissaries"
step
label quest-45134
Follow the path |goto Azsuna/0 42.65,41.13 < 25 |only if walking
Follow the path up |goto 40.73,36.89 < 25 |only if walking
accept The Soul Harvesters##45134 |goto Azsuna/0 38.41,34.48
|tip You will accept this quest automatically.
stickystart "Harvesters"
step
kill Doom Lord Kro'nak##116297 |q 45134/2 |goto 34.64,33.80
step
label "Harvesters"
kill Doomsworn Harbinger##116281, Foul Soulkeeper##116219, Hellwing Doombringer##116205
Repel the Legion forces |q 45134/1 |goto 38.41,34.48
|next "Legion_World_Quest_Emissaries"
step
label quest-44847
Follow the path |goto Azsuna/0 63.42,25.55 < 25 |only if walking
Follow the path |goto 61.28,21.90 < 25 |only if walking
Follow the path |goto 58.67,19.20 < 25 |only if walking
accept Straight From the Source##44847 |goto 58.32,14.33
|tip You will accept this quest automatically.
stickystart "Overseer"
step
Go around the wall |goto 58.32,14.33 < 10 |only if walking
Disable eastern Mana Pylon |q 44847/5 |goto 57.90,14.84
|tip Use the special action button that appears on your screen.
step
Go up the steps |goto 57.62,15.48 < 20 |only if walking
Go up the rocks |goto 56.82,16.80 < 20 |only if walking
Go down the steps |goto 55.67,15.75 < 20  |only if walking
Disable southern Mana Pylon |q 44847/2 |goto 56.56,15.46
|tip Use the special action button that appears on your screen.
step
Disable central Mana Pylon |q 44847/3 |goto 55.89,14.16
|tip Use the special action button that appears on your screen.
step
Follow the path |goto 55.98,12.99 < 20 |only if walking
Disable northwestern Mana Pylon |q 44847/4 |goto 56.30,11.92
|tip Use the special action button that appears on your screen.
step
label "Overseer"
kill Nightfallen Overseer##90616 |q 44847/1 |goto 55.69,14.16
|tip These can be difficult to find on busy days. Search around this area for them.
|next "Legion_World_Quest_Emissaries"
step
label quest-46162
accept Subjugator Val'rek##46162 |goto Azsuna/0 41.89,11.67
|tip You will accept this quest automatically.
step
kill 1 Subjugator Val'rek##118000 |q 46162/1 |goto 41.89,11.67 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41288
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Aethril##41288 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Aethril##124101
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Aethril##41288 |goto 46.99,40.67
|next "Legion_World_Quest_Emissaries"
step
label quest-41315
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Leystone##41315 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Leystone##41315 |goto 46.99,40.67
|next "Legion_World_Quest_Emissaries"
step
label quest-41327
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Stormscales##41327 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Stormscales##41327 |goto 46.99,40.67
|next "Legion_World_Quest_Emissaries"
step
label quest-43192
Drop down |goto Azsuna/0 46.90,71.56 < 30 |only if walking
accept Terror of the Deep##43192 |goto 43.39,66.65
|tip You will accept this quest automatically.
step
kill Levantus##108829 |q 43192/1 |goto 43.39,66.65 |future
_TANK:_ |only if grouprole("TANK")
|tip Stay in melee range as much as possible or Levantus will use Rampaging Torrent, causing massive raid damage. |only if grouprole("TANK")
_EVERYONE:_
|tip Move into the swirling tornados to gain the Waterwalking buff to move around easier.
|tip Move around Levantus as she casts Massive Spout to avoid heavy damage.
|next "Legion_World_Quest_Emissaries"
step
label quest-46170
accept Thar'gokk##46170 |goto Azsuna/0 42.56,41.02
|tip You will accept this quest automatically.
step
kill Thar'gokk##117036
Defeat Thar'gokk |q 46170/1 |goto 42.56,41.02 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46163
Follow the path |goto Azsuna/0 42.21,11.33 < 25 |only if walking
Follow the path |goto 46.69,10.63 < 25 |only if walking
Follow the path |goto 48.99,10.56 < 25 |only if walking
Cross the waterfall |goto 50.33,9.25 < 15 |only if walking
accept Thaz'gul##46163 |goto Azsuna/0 52.02,11.79
|tip You will accept this quest automatically.
step
kill Thaz'gul##117068 |q 46163/1 |goto 52.02,11.79 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42018
Follow the path |goto Azsuna/0 64.39,25.57 < 30 |only if walking
Follow the path |goto 61.14,21.72 < 30 |only if walking
Follow the path |goto 58.45,18.89 < 30 |only if walking
accept Those Beyond Redemption##42018 |goto 57.46,16.50
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Ley Siphons##239910
|tip They look like stands holding white crystal balls around this area.
Assault the Ley-Ruins of Zarkhenar |q 42018/1 |goto 57.46,16.50
|next "Legion_World_Quest_Emissaries"
step
label quest-42019
Follow the path |goto Azsuna/0 63.38,30.69 < 30 |only if walking
Follow the path |goto 62.86,34.57 < 30 |only if walking
Follow the path |goto 60.82,37.95 < 30 |only if walking
accept Tip the Scales##42019 |goto 59.98,42.66
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Stolen Nar'thalas Relics##249467
|tip They look like stone vases one of the ground around this area.
Disrupt the Hatecoil Warcamp |q 42019/1 |goto 60.01,42.42
|next "Legion_World_Quest_Emissaries"
step
label quest-42506
Follow the path |goto Azsuna/0 43.65,42.26 < 30 |only if walking
Follow the path |goto 40.77,37.52 < 30 |only if walking
Follow the path up |goto 41.06,35.25 < 30 |only if walking
accept Tomes of Yore##42506 |goto 37.40,33.62
|tip You will accept this quest automatically.
step
click A Study of Hexes##250591
Acquire A Study of Hexes |q 42506/1 |goto 37.40,33.62
step
click Healing with Arcana##250592
Acquire Healing with Arcana |q 42506/2 |goto 36.70,34.56
step
click Tash'irel's Edict##250593
Acquire Tash'irel's Edict |q 42506/3 |goto 34.40,33.88
|next "Legion_World_Quest_Emissaries"
step
label quest-42159
Follow the path |goto Azsuna/0 45.45,42.28 < 30 |only if walking
accept Training with the Nightwatchers##42159 |goto 46.34,40.39
|tip You will accept this quest automatically.
step
talk Nightwatcher Merayl##106552
Tell him "Let's do battle!"
Defeat Nightwatcher Merayl |q 42159/1 |goto Azsuna/0 46.34,40.39
|next "Legion_World_Quest_Emissaries"
step
label quest-42511
Follow the path |goto Azsuna/0 43.57,42.15 < 30 |only if walking
Follow the path |goto 40.75,37.54 < 30 |only if walking
Follow the path up |goto 41.08,35.31 < 30 |only if walking
accept Twisted Souls##42511 |goto 38.23,34.39
|tip You will accept this quest automatically.
stickystart "Vengeful_Souls"
step
kill Lord Tash'irel##107696 |q 42511/2 |goto 34.55,33.80
step
label "Vengeful_Souls"
kill 12 Vengeful Soul##107628+ |q 42511/1 |goto 38.23,34.39
|next "Legion_World_Quest_Emissaries"
step
label quest-42160
Follow the path |goto Azsuna/0 64.36,29.33 < 30 |only if walking
accept Unwelcome Visitors##42160 |goto Azsuna/0 66.41,27.97
|tip You will accept this quest automatically.
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 1 |goto 68.68,29.84
step
kill Arkethrax##106583 |q 42160/3 |goto 67.25,30.71
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 2 |goto 68.35,24.66
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 3 |goto 65.36,27.20
step
kill Blargemal##106582 |q 42160/2 |goto 68.37,26.11
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 4 |goto 67.56,29.58
|next "Legion_World_Quest_Emissaries"
step
label quest-41322
Follow the path up |goto Azsuna/0 54.12,57.05 < 30 |only if walking
Follow the path up |goto 54.34,54.06 < 30 |only if walking
accept Unscratched Hippogryph Scale##41322 |goto 50.86,57.90
|tip You will accept this quest automatically.
step
kill Cliffwing Hippogryph##89386+
|tip You can find them all along the cliffs.
collect 12 Unscratched Hippogryph Scale##134806 |goto Azsuna/0 50.42,58.44 |q 41322/1
|next "Legion_World_Quest_Emissaries"
step
label quest-41663
Follow the path up |goto Azsuna/0 45.44,42.33 < 20 |only if walking
accept Vantus Rune Work Order: Elerethe Renferal##41663 |goto 46.91,41.43
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Elerethe Renferal>_
collect 1 Vantus Rune: Elerethe Renferal##128992
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Veridis Fallon##107376
turnin Vantus Rune Work Order: Elerethe Renferal##41663 |goto 46.90,41.44
|next "Legion_World_Quest_Emissaries"
step
label quest-42926
_Enter the Vault of the Wardens Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Vault of the Wardens: How'd He Get Up There?##42926
|tip You will accept this quest automatically.
step
kill Frenzied Animus##96579 |q 42926/1
|tip The Frenzied Animus can be found after Tirathon Saltheril.
step
kill Cordana Felsong##95888 |q 42926/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42636
Follow the path |goto Azsuna/0 43.57,42.15 < 30 |only if walking
Follow the path |goto 40.75,37.54 < 30 |only if walking
Follow the path up |goto 41.08,35.31 < 30 |only if walking
accept WANTED: Arcanist Shal'iman##42636 |goto Azsuna/0 35.04,33.99
|tip You will accept this quest automatically.
step
kill Arcanist Shal'iman##107657 |q 42636/1 |goto 35.10,34.22 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43605
Follow the path |goto Azsuna/0 43.57,42.15 < 30 |only if walking
Follow the path |goto 40.75,37.54 < 30 |only if walking
Follow the path up |goto 41.08,35.31 < 30 |only if walking
accept WANTED: Arcanist Shal'iman##43605 |goto Azsuna/0 35.04,33.99
|tip You will accept this quest automatically.
step
kill Arcanist Shal'iman##107657 |q 43605/1 |goto 35.10,34.22 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42620
Follow the path |goto Azsuna/0 64.43,25.59 < 30 |only if walking
Follow the path |goto 61.35,22.12 < 30 |only if walking
Follow the path down |goto 61.10,15.82 < 30 |only if walking
Enter the crystal passage |goto 60.08,11.43
accept WANTED: Arcavellus##42620 |goto 59.83,12.08
|tip You will accept this quest automatically.
step
kill Arcavellus##90244
Arcavellus slain. |q 42620/1 |goto 59.83,12.08 |future
|tip Kill the Rift Wyrms to spawn Arcavellus.
|next "Legion_World_Quest_Emissaries"
step
label quest-43606
Follow the path |goto Azsuna/0 63.87,25.64 < 30 |only if walking
Follow the path |goto 60.23,20.56 < 30 |only if walking
Follow the path |goto 61.12,15.89 < 30 |only if walking
accept WANTED: Arcavellus##43606 |goto 59.15,13.00
|tip You will accept this quest automatically.
step
Defeat the waves of enemies that come out of this portal
kill Arcavellus##90244 |q 43606/1 |goto Azsuna/0 59.82,12.09 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43426
Follow the path up |goto Azsuna/0 60.04,49.04 < 30 |only if walking
Continue up the path |goto Azsuna/0 58.20,48.29 < 30 |only if walking
talk Tehd Shoemaker##91097
accept WANTED: Brogozog##43426 |goto Azsuna/0 59.31,46.42
|tip You will accept this quest automatically.
step
talk Tehd Shoemaker##91097
kill Brogozog##91100 |q 43426/1 |goto Azsuna/0 59.31,46.42 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43607
Follow the path up |goto Azsuna/0 60.04,49.04 < 30 |only if walking
Continue up the path |goto Azsuna/0 58.20,48.29 < 30 |only if walking
talk Tehd Shoemaker##91097
accept WANTED: Brogozog##43607 |goto Azsuna/0 59.31,46.42
|tip You will accept this quest automatically.
step
talk Tehd Shoemaker##91097
kill Brogozog##91100 |q 43607/1 |goto 59.31,46.42 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43430
Follow the path |goto Azsuna/0 46.26,44.64 < 30 |only if walking
Follow the path |goto 48.98,42.71 < 30 |only if walking
Go up the steps |goto 51.61,44.71 < 30 |only if walking
accept WANTED: Captain Volo'ren##43430 |goto 53.45,44.01
|tip You will accept this quest automatically.
step
kill Captain Volo'ren##89846 |q 43430/1 |goto 53.47,44.00 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43608
Follow the path |goto Azsuna/0 46.26,44.64 < 30 |only if walking
Follow the path |goto 48.98,42.71 < 30 |only if walking
Go up the steps |goto 51.61,44.71 < 30 |only if walking
accept WANTED: Captain Volo'ren##43608 |goto 53.45,44.01
|tip You will accept this quest automatically.
step
kill Captain Volo'ren##89846 |q 43608/1 |goto 53.47,44.00 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43428
Follow the path up |goto Azsuna/0 46.35,27.55 < 30 |only if walking
accept WANTED: Doomlord Kazrok##43428 |goto Azsuna/0 43.14,28.17
|tip You will accept this quest automatically.
step
talk Tehd Shoemaker##91580
kill Doomlord Kazrok##91579 |q 43428/1 |goto 43.14,28.17 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43609
Follow the path up |goto Azsuna/0 46.71,28.26 < 30 |only if walking
accept WANTED: Doomlord Kazrok##43609 |goto 44.22,28.20
|tip You will accept this quest automatically.
step
kill Doomlord Kazrok##91579 |q 43609/1 |goto 43.22,28.23 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43427
Drop down |goto Azsuna/0 33.33,45.98 < 30 |only if walking
Cross the bridge |goto 35.43,46.09 < 30 |only if walking
Follow the path |goto 35.92,48.39 < 30 |only if walking
accept WANTED: Infernal Lord##43427 |goto 35.37,50.35
|tip You will accept this quest automatically.
step
click Cache of Infernals##240222
Kill the enemies that attack in waves
kill Infernal Lord##90803 |q 43427/1 |goto 35.37,50.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43610
Drop down |goto Azsuna/0 33.30,45.94 < 30 |only if walking
Follow the path |goto 35.44,46.06 < 30 |only if walking
click cache of infernals |goto 35.37,50.39
Slay the waves of infernals
accept WANTED: Infernal Lord##43610 |goto 35.37,50.39
step
kill Infernal Lord##90803 |q 43610/1 |goto 35.37,50.39 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42631
Follow the path |goto Azsuna/0 30.75,46.35 < 30 |only if walking
Follow the path |goto 27.21,47.45 < 30 |only if walking
click Legion Portal##267226
accept WANTED: Inquisitor Tivos##42631 |goto 26.81,49.06
|tip You will accept this quest automatically.
step
Follow the path down |goto 28.51,50.97 < 30 |only if walking
Enter the room |goto 27.96,51.42 < 10 |only if walking
kill Inquisitor Tivos##107269 |q 42631/1 |goto 28.29,51.95 |future
|tip He's downstairs.
|next "Legion_World_Quest_Emissaries"
step
label quest-43611
Follow the path |goto Azsuna/0 30.75,46.35 < 30 |only if walking
Follow the path |goto 27.21,47.45 < 30 |only if walking
click Legion Portal##267226
accept WANTED: Inquisitor Tivos##43611 |goto 26.81,49.06
|tip You will accept this quest automatically.
step
Follow the path down |goto 28.51,50.97 < 30 |only if walking
Enter the room |goto 27.96,51.42 < 10 |only if walking
kill Inquisitor Tivos##107269 |q 43611/1 |goto 28.29,51.95 |future
|tip He's downstairs.
|next "Legion_World_Quest_Emissaries"
step
label quest-43432
Follow the path |goto Azsuna/0 42.02,11.19 < 30 |only if walking
Follow the path |goto 45.14,10.45 < 30 |only if walking
Follow the path |goto 48.60,10.77 < 30 |only if walking
Enter the cave |goto 50.04,7.82 < 30 |walk
accept WANTED: Normantis the Deposed##43432 |goto Azsuna/0 49.49,8.77
|tip You will accept this quest automatically.
step
kill Normantis the Deposed##90217 |q 43432/1 |goto 49.49,8.77 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43612
Follow the path |goto Azsuna/0 42.02,11.19 < 30 |only if walking
Follow the path |goto 45.14,10.45 < 30 |only if walking
Follow the path |goto 48.60,10.77 < 30 |only if walking
Enter the cave |goto 50.04,7.82 < 30 |walk
accept WANTED: Normantis the Deposed##43612 |goto Azsuna/0 49.49,8.77
|tip You will accept this quest automatically.
step
kill Normantis the Deposed##90217 |q 43612/1 |goto 49.49,8.77 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43613
Follow the path |goto Azsuna/0 56.87,57.19 < 30 |only if walking
Follow the path |goto 58.45,51.48 < 30 |only if walking
Follow the path |goto 61.39,50.85 < 30 |only if walking
Follow the path |goto 64.11,50.92 < 30 |only if walking
Follow the path up |goto 65.63,51.24 < 20 |only if walking
Follow the path |goto 66.86,52.05 < 15 |only if walking
accept WANTED: Syphonus##43613 |goto 67.17,51.57
|tip You will accept this quest automatically.
step
kill Syphonus##90505 |q 43613/1 |goto 67.16,51.64 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-43429
Follow the path |goto Azsuna/0 56.87,57.19 < 30 |only if walking
Follow the path |goto 58.45,51.48 < 30 |only if walking
Follow the path |goto 61.39,50.85 < 30 |only if walking
Follow the path |goto 64.11,50.92 < 30 |only if walking
Follow the path up |goto 65.63,51.24 < 20 |only if walking
Follow the path |goto 66.86,52.05 < 15 |only if walking
accept WANTED: Syphonus##43429 |goto 67.17,51.57
|tip You will accept this quest automatically.
step
kill Syphonus##90505 |q 43429/1 |goto 67.16,51.64 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-42633
Cross the crater |goto Azsuna/0 42.04,44.41 < 30 |only if walking
Follow the path |goto 40.20,45.32 < 30 |only if walking
Follow the path |goto 36.83,50.61 < 30 |only if walking
Cross the bridge |goto 35.73,47.76 < 30 |only if walking
Follow the path |goto 36.18,44.58 < 30 |only if walking
accept WANTED: Vorthax##42633 |goto 37.27,43.23
|tip You will accept this quest automatically.
step
kill Vorthax##107113 |q 42633/1 |goto 37.20,43.31 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-43614
Cross the crater |goto Azsuna/0 42.04,44.41 < 30 |only if walking
Follow the path |goto 40.20,45.32 < 30 |only if walking
Follow the path |goto 36.83,50.61 < 30 |only if walking
Cross the bridge |goto 35.73,47.76 < 30 |only if walking
Follow the path |goto 36.18,44.58 < 30 |only if walking
accept WANTED: Vorthax##43614 |goto Azsuna/0 37.27,43.23
|tip You will accept this quest automatically.
step
kill Vorthax##107113 |q 43614/1 |goto 37.20,43.31 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-43431
accept WANTED: Warbringer Mox'na##43431 |goto Azsuna/0 47.78,53.37
|tip You will accept this quest automatically.
step
kill Warbringer Mox'na##90164 |q 43431/1 |goto 47.78,53.37 |future
|tip He walks along this road, so you may need to search for him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43615
accept WANTED: Warbringer Mox'na##43615 |goto Azsuna/0 47.78,53.37
|tip You will accept this quest automatically.
step
kill Warbringer Mox'na##90164 |q 43615/1 |goto 47.78,53.37 |future
|tip He walks along this road, so you may need to search for him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43802
accept Watery Graves##43802 |goto Eye of Azshara Map/0 43.14,50.75
|tip You will accept this quest automatically.
stickystart "Droplet"
step
kill 3 Restless Tides##111644 |q 43802/1 |goto 43.14,50.75
|tip These are located randomly along the shore.
step
label "Droplet"
kill 20 Saltsea Droplet##111641 |q 43802/2 |goto 43.14,50.75
|tip These are located randomly along the shore.
|next "Legion_World_Quest_Emissaries"
step
label quest-46263
Follow the path |goto Azsuna/0 41.93,11.19 < 25 |only if walking
accept Weaving Fel Webs##46263 |goto 45.68,10.18
|tip You will accept this quest automatically.
step
kill Felcrawler Eggs##120017
Destroy #20# Felcrawler Eggs |q 46263/1 |goto 45.68,10.18
|tip These are very small, usuall at the base of the trees.
kill Webbed Victim##120107+
Rescue #8# Citizens |q 46263/2 |goto 45.68,10.18
|next "Legion_World_Quest_Emissaries"
step
label quest-42148
Follow the path |goto Azsuna/0 42.18,10.77 < 30 |only if walking
accept The Wine's Gone Bad##42148 |goto 43.33,8.96
|tip You will accept this quest automatically.
step
clicknpc Vinu##106417
Defeat Vinu |q 42148/1 |goto Azsuna/0 43.42,8.50
|next "Legion_World_Quest_Emissaries"
step
label quest-42112
Follow the path |goto Azsuna/0 50.56,26.68 < 30 |only if walking
Follow the path |goto 50.91,21.62 < 30 |only if walking
Follow the path |goto 51.59,16.24 < 30 |only if walking
Cross the bridge |goto 49.40,14.98 < 30 |only if walking
accept The Withered Return##42112 |goto 47.31,15.67
|tip You will accept this quest automatically.
stickystart "Withered_Mana-Ragers"
step
click Stolen Ley Crystals##249702
|tip They look like purple crystals on the ground around this area.
collect Stolen Ley Crystal##136850 |n
clicknpc Mana-Starved Whelpling##106297+
|tip They look like small blue dragons laying on the ground around this area.
Revive #8# Mana-Starved Whelplings |q 42112/1 |goto 47.31,15.67
step
label "Withered_Mana-Ragers"
kill 10 Withered Mana-Rager##90380 |q 42112/2 |goto 47.31,15.67
|next "Legion_World_Quest_Emissaries"
step
label quest-42274
Follow the path |goto Azsuna/0 30.96,45.28 < 30 |only if walking
accept Won't Anyone Think of the Whelps?##42274 |goto 28.96,45.38
|tip You will accept this quest automatically.
stickystart "Free_Azure_Whelplings"
step
Enter the cave |goto 28.20,44.79 < 10 |walk
Follow the path |goto 27.33,43.24 < 20 |walk
Follow the path |goto 27.23,41.85 < 20 |walk
Follow the path up |goto 26.33,43.21 < 10 |walk
kill Legion Jailer##107216 |q 42274/2 |goto 28.59,45.39
step
label "Free_Azure_Whelplings"
click Legion Cages##267920
|tip They look like pointed gray metal cages around this area.
Free #10# Azure Whelplings |q 42274/1 |goto 29.07,45.03
|next "Legion_World_Quest_Emissaries"
step
label quest-41287
Follow the path up |goto Azsuna/0 45.44,42.33 < 20 |only if walking
accept Work Order: Aethril##41287 |goto 46.91,41.43
|tip You will accept this quest automatically.
step
collect 40 Aethril##124101
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Aethril##41287 |goto 46.90,41.44
|next "Legion_World_Quest_Emissaries"
step
label quest-41651
Follow the path up |goto Azsuna/0 45.44,42.33 < 20 |only if walking
accept Work Order: Azsunite Pendant##41651 |goto 46.91,41.43
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Azsunite Pendant>_
collect 1 Azsunite Pendant##130228
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Veridis Fallon##107376
turnin Work Order: Azsunite Pendant##41651 |goto 46.90,41.44
|next "Legion_World_Quest_Emissaries"
step
label quest-41639
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Battlebound Spaulders##41639 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Battlebound Spaulders>_
collect 1 Battlebound Spaulders##194745
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Veridis Fallon##107376
turnin Work Order: Battlebound Spaulders##41639 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41675
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Blink-Trigger Headgun##41675 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Blink-Trigger Headgun>_
collect 1 Blink-Trigger Headgun##132500
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Veridis Fallon##107376
turnin Work Order: Blink-Trigger Headgun##41675 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41267
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Cursed Queenfish##41267 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
collect 40 Cursed Queenfish##124107
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Cursed Queenfish##41267 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41657
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Draughts of Raw Magic##41657 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Draught of Raw Magic>_
collect 5 Draught of Raw Magic##127837
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Veridis Fallon##107376
turnin Work Order: Draughts of Raw Magic##41657 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41311
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Leystone##41311 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Leystone##41311 |goto 46.99,40.26
|next "Legion_World_Quest_Emissaries"
step
label quest-41633
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Leystone Greaves##41633 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Greaves>_
collect 1 Leystone Greaves##123895
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Veridis Fallon##107376
turnin Work Order: Leystone Greaves##41633 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41645
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Silkweave Epaulets##41645 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Epaulets>_
collect 1 Silkweave Epaulets##126992
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Veridis Fallon##107376
turnin Work Order: Silkweave Epaulets##41645 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41326
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Stormscales##41326 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Stormscales##41326 |goto 46.99,40.26
|next "Legion_World_Quest_Emissaries"
step
label quest-41669
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Word of Critical Strike##41669 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Critical Strike>_
collect 1 Enchant Ring - Word of Critical Strike##128537
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Veridis Fallon##107376
turnin Work Order: Word of Critical Strike##41669 |goto Azsuna/0 46.91,41.41
|next "Legion_World_Quest_Emissaries"
step
label quest-44788
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto 53.77,40.31
accept Work Study: Bestiaries of Azsuna##44788 |goto Azsuna/17 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto 58.11,68.23
Go through the Academy Door |goto 50.40,50.09
click Incredible Monsters and Where to Locate Them##266057
collect Incredible Monsters and Where to Locate ##142238 |q 44788/1 |goto 26.23,46.91
step
click Sythorne's Podium##250362 |q 44788/2 |goto 30.21,44.86
kill Hydra Drawing##115460 |q 44788/3 |goto 32.84,42.63
step
click Handbook of Feathery Friends##266058
collect Handbook of Feathery Friends##142239 |q 44788/4 |goto 26.23,46.91
step
click Sythorne's Podium##250362 |q 44788/5 |goto 30.21,44.86
kill Harpy Drawing##115461 |q 44788/6 |goto 32.84,42.63
step
click Draconic Compendium, Volume IV##266059
collect Draconic Compendium, Volume IV##142240 |q 44788/7 |goto 27.14,45.94
step
click Sythorne's Podium##250362 |q 44788/8 |goto 30.21,44.86
kill Squallhunter Drawing##115462 |q 44788/9 |goto 32.84,42.63
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Broken Shore Rares",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=646,
},[[
step
label "Choose_World_Quest"
Choose a Rare Enemy to Complete |confirm
|tip With the "Broken Shore Rares" guide loaded, open your world map.
|tip Left-click on a rare enemy icon to select that rare.
|tip The guide will automatically load the steps for that rare.
step
label rare-5301
clicknpc Grapple Point##110334 |goto Broken Shore/0 44.20,66.96 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 44.48,67.56 < 5 |only if walking
Follow the path |goto 50.03,72.51 < 30 |only if walking
kill Aqueux##121016 |q 47133 |goto Broken Shore/0 53.93,78.80 |future
|tip Thrash will knock back anyone within 20 yards.
|tip Interrupt Salty Barrage and Spittle whenever possible.
|next "Legion_World_Quest_Emissaries"
step
label rare-5302
Enter the cave |goto Broken Shore/0 39.72,29.16 < 20 |walk
kill Brood Mother Nix##121029 |q 46965 |goto 39.55,33.00 |future
|tip Caustic Webs will immobilize you and deal nature damage every second.
|tip Inject Eggs will summon several small non-elite spiders.
|next "Legion_World_Quest_Emissaries"
step
label rare-5308
kill Brother Badatin##121046 |q 47001 |goto Broken Shore/0 78.09,39.49 |future
|tip Felflame Aura has a chance to deal fire damage to you each time you attack Brother Badatin.
|tip Avoid standing in front of him during Fists of Fury.
|tip Rising Sun Kick will leave a debuff on the target, increasing damage taken by 25% for 15 seconds.
|next "Legion_World_Quest_Emissaries"
step
label rare-5295
kill Corrupted Bonebreaker##116953 |q 46090 |goto 60.98,53.35 |future
|tip Corrupted Bonebreak will periodically toss everyone nearby up in the air a short distance.
|next "Legion_World_Quest_Emissaries"
step
label rare-5291
clicknpc Grapple Point##110334 |goto Broken Shore/0 52.67,29.64 |only if walking
Follow the path |goto 51.01,33.17 < 25 |only if walking
kill Doombringer Zar'thoz##117136 |q 46097 |goto 49.76,38.34 |future
|tip Curse of Doom will deal shadow damage to you every 5 seconds.
|tip Shadow Bolt Volley deals shadow damage to all nearby players.
|tip War Stomp will stun anyone within a 10 yard radius.
|next "Legion_World_Quest_Emissaries"
step
label rare-5292
kill Dreadblade Annihilator##117095 |q 47133 |goto Broken Shore/0 57.76,31.36 |future
|tip Withering Roar will reduce your health by 10% per application, stacking up to 5 times.
|tip Avoid standing infront of Dreadblade Annihilator during Dread Blades.
|next "Legion_World_Quest_Emissaries"
step
label rare-5297
kill Dreadeye##118993 |q 46202 |goto Broken Shore/0 41.09,78.38 |future
|tip DO NOT stand in front of Dreadeye during Fel Breath. The stacking DoT will kill you.
|tip Stone Glare deals damage and reduces movement speed by 20% per application. At 5 stacks, it will stun for 8 seconds.
|next "Legion_World_Quest_Emissaries"
step
label rare-5306
Follow the path |goto Broken Shore/0 68.77,46.83
Follow the path |goto 66.32,42.34
Follow the path |goto 69.90,35.71
Follow the path |goto 74.43,28.40
kill Duke Sithizi##121134 |q 47036 |goto Broken Shore/0 77.83,28.56 |future
|tip Avoid standing in Rain of Felfire.
|tip Avoid standing in front of Sithizi during Flurry.
|tip Impale will hit a random person within 30 yards, dealing physical damage and stunning the target.
|next "Legion_World_Quest_Emissaries"
step
label rare-5287
kill Emberfire##117086 |q 46093 |goto Broken Shore/0 52.15,43.53 |future
|tip Move at least 15 yards away from Emberfire during Blazing Hellfire.
|tip Felflame Aura has a chance to deal fire damage to you each time you attack Emberfire.
|tip Move out of areas targeted for Molten Crash.
|next "Legion_World_Quest_Emissaries"
step
label rare-5307
Enter the cave |goto Broken Shore/0 66.72,34.60 < 15 |walk
kill Eye of Gurgh##116166 |q 47068 |goto 64.48,30.29 |future
|tip Avoid standing in front of Eye of Gurgh during Chaos Glare.
|next "Legion_World_Quest_Emissaries"
step
label rare-5293
kill Felbringer Xar'thok##117093 |q 47133 |goto Broken Shore/0 58.88,46.08 |future
|tip Avoid standing in areas targeted during Chaotic Felburst.
|tip Don't stand in front of Xar'thok during Scorching Swipe.
|next "Legion_World_Quest_Emissaries"
step
label rare-5296
kill Felcaller Zelthae##117103 |q 47133 |goto Broken Shore/0 89.56,30.83 |future
|tip Interrupt Incinerating Blast whenever possible.
|tip Avoid standing in areas targeted by Felshard Meteors.
|next "Legion_World_Quest_Emissaries"
step
label rare-5289
Follow the path |goto Broken Shore/0 45.30,57.85 < 25 |only if walking
Follow the path |goto 41.01,54.13 < 25 |only if walking
Follow the path |goto 38.47,47.09 < 25 |only if walking
kill Felmaw Emberfiend##117091 |q 46095 |goto Broken Shore/0 39.24,42.18 |future
|tip Burning Breath will deal damage in a frontal cone.
|tip Periodically, Felmaw Emberfiend will fear anyone within 20 yards for 4 seconds.
|next "Legion_World_Quest_Emissaries"
step
label rare-5300
clicknpc Grapple Point##110334 |goto Broken Shore/0 39.98,58.51 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 39.42,59.59 < 5 |only if walking
Enter the cave |goto 38.99,59.96 < 5 |walk
kill Flllurlokkr##120998 |q 46068 |goto Broken Shore/0 40.36,59.74 |future
|tip Avoid standing near other players (8 yards).
|tip Fish Bomb will deal damage to anyone within 8 yards of the targeted player.
|tip Hooked Net will deal physical damage to a player and immobilize them for 3 seconds.
|tip Avoid standing in front of Flllurlokkr during Skewer.
|next "Legion_World_Quest_Emissaries"
step
label rare-5303
kill Grossir##121037 |q 46995 |goto Broken Shore/0 77.71,23.58 |future
|tip Avoid standing in front of Grossir during Caustic Burst.
|tip Spread out to avoid excess damage from Molten Chaos.
|next "Legion_World_Quest_Emissaries"
step
label rare-5299
kill Imp Mother Bruva##119718 |q 46313 |goto Broken Shore/0 60.43,45.04 |future
|tip Interrupt Fel Blast whenever possible.
|tip Imps! will summon a small swarm of imps to attack you.
|next "Legion_World_Quest_Emissaries"
step
label rare-5290
kill Inquisitor Chillbane##117089 |q 47133 |goto Broken Shore/0 62.15,38.20 |future
|tip Call of Ice deals heavy frost damage to a single target.
|tip Avoid standing in groups of Debilitating Eyes.
|next "Legion_World_Quest_Emissaries"
step
label rare-5304
Go up the steps |goto Broken Shore/0 49.69,18.62 < 15 |only if walking
Follow the path |goto 48.17,18.01 < 20 |only if walking
Go down the steps |goto 45.86,16.55 < 20 |only if walking
Follow the path |goto 45.86,16.55 < 20 |only if walking
kill Lady Eldrathe##121107 |q 47026 |goto Broken Shore/0 41.33,16.66 |future
|next "Legion_World_Quest_Emissaries"
step
label rare-5298
Follow the path |goto Broken Shore/0 45.27,58.59 < 20 |only if walking
Follow the path |goto 44.48,56.55 < 10 |only if walking
clicknpc Grapple Point##110334 |goto 45.18,55.28 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 45.52,54.11 < 5 |only if walking
kill Lord Hel'Nurath##119629 |q 47133 |goto Broken Shore/0 44.64,53.21 |future
|next "Legion_World_Quest_Emissaries"
step
label rare-5284
Cross the water |goto Broken Shore/0 52.06,25.11 < 20 |only if walking
Enter the cave |goto Broken Shore/0 56.19,27.24 < 20 |walk
kill Malgrazoth##117141 |q 46090 |goto 59.64,27.34 |future
|next "Legion_World_Quest_Emissaries"
step
label rare-5286
Follow the path |goto Broken Shore/0 43.94,58.26 < 25 |only if walking
Follow the path |goto 46.89,58.60 < 25 |only if walking
Follow the path |goto 48.98,56.38 < 25 |only if walking
Follow the path |goto 49.25,53.02 < 25 |only if walking
Follow the path |goto 45.62,48.43 < 25 |only if walking
Follow the path |goto 44.42,42.27 < 25 |only if walking
kill Malorus the Soulkeeper##117094 |q 46092 |goto Broken Shore/0 42.32,42.85 |future
|next "Legion_World_Quest_Emissaries"
step
label rare-5288
click Ladder##268797 |goto Broken Shore/0 55.53,56.65 < 8 |only if walking
kill Potionmaster Gloop##117096 |q 46094 |goto 57.01,56.52 |future
|next "Legion_World_Quest_Emissaries"
step
label rare-5285
kill Salethan the Broodwalker##117140 |q 46091 |goto Broken Shore/0 67.79,29.77 |future
|tip Interrupt Massive Screech whenever possible.
|tip Don't stand in front of Salethan during Rotten Breath.
|next "Legion_World_Quest_Emissaries"
step
label rare-5305
clicknpc Grapple Point##110334 |goto Broken Shore/0 32.62,58.80 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 39.42,59.59 < 5 |only if walking
Follow the path |goto 35.51,58.90 < 25 |only if walking
kill Somber Dawn##121112 |q 47028 |goto Broken Shore/0 32.62,58.80 |future
|tip Somber Dawn will constantly knock you back, interrupting spellcasting in the process.
|tip Somber Dawn patrolls in a circle around the island.
|next "Legion_World_Quest_Emissaries"
step
label rare-5294
Follow the path |goto Broken Shore/0 45.21,58.48 < 25 |only if walking
Follow the path |goto 46.97,58.49 < 25 |only if walking
Follow the path |goto 50.70,55.02 < 25 |only if walking
Follow the path |goto 50.22,50.55 < 25 |only if walking
kill Xorogun the Flamecarver##117090 |q 46100 |goto Broken Shore/0 49.14,47.94 |future
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Broken Shore World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=646,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-46209
accept A Flare In The Dark##46209 |goto Broken Shore/0 43.11,55.83
|tip You will accept this quest automatically.
step
Use _Flare_ to mark locations |cast Flare##1543
|tip The locations are indicated with a floating red arrow.
Flare #5# Spotter locations |q 46209/1 |goto 43.11,55.83
kill Prowling Shadowstalker##119015+
Kill #5# Prowling Shadowstalkers  |q 46209/2 |goto 43.11,55.83
|next "Legion_World_Quest_Emissaries"
step
label quest-45473
Follow the path |goto Broken Shore/0 46.32,58.88 < 25 |only if walking
Follow the path |goto 48.97,63.22 < 25 |only if walking
Follow the path |goto 50.47,70.84 < 25 |only if walking
accept A Giant Problem##45473 |goto 54.37,76.27
|tip You will accept this quest automatically.
step
kill Sea Giant Pillager##118223
Kill  #6# Sea Giant Pillagers |q 45473/1 |goto 54.37,76.27
click Sunken Cache##267575
Reclaim #10# Sunken Caches |q 45473/2 |goto 54.37,76.27
|tip Click Damaged Diving Helmets to gain temporary underwater breathing and increased swim speed.
|next "Legion_World_Quest_Emissaries"
step
label quest-46932
Follow the path down |goto Broken Shore/0 39.35,63.75 < 15 |only if walking
Drop down |goto 38.70,61.98 < 15 |only if walking
accept A Tad More Corruption##46932 |goto 38.18,59.85
|tip You will accept this quest automatically.
stickystart "LForces"
step
clicknpc Corrupting Crystals##120805
Destroy #4# Corrupting Crystals |q 46932/1 |goto 38.18,59.85
step
label "LForces"
kill Felfin Terrorscale##118971+, Felfin Cursecaller##120816+, Fixated Corruptor##120820+
Slay #5# Legion forces |q 46932/2 |goto 38.18,59.85
|tip You can find more murlocs in the cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-45988
accept Ancient Bones##45988 |goto Broken Shore/0 54.26,14.35
|tip You will accept this quest automatically.
step
click Ancient Bones##267642
collect 10 Ancient Bones##144238 |q 45988/1 |goto 54.26,14.35
step
Enter the cave |goto Broken Shore/0 51.53,17.22 < 8 |walk
click Ancient Tomb##267640
Place the Ancient Bones |q 45988/2 |goto 50.99,16.97
|next "Legion_World_Quest_Emissaries"
step
label quest-47061
Follow the path |goto Broken Shore/0 64.81,50.14 < 25 |only if walking
Follow the path up |goto 63.36,57.00 < 20 |only if walking
accept Apocron##47061 |goto 59.99,62.56
|tip You will accept this quest automatically.
step
kill Apocron##121124
|tip
|tip Use defensive cooldowns during Sear. |grouprole TANK
|tip During Quake, run out of melee range. |grouprole DAMAGE
|tip Dodge Felfire Missiles. |grouprole EVERYONE
|tip
Defeat Apocron |q 47061/1 |goto 59.99,62.56 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-45694
Cross the water |goto Broken Shore/0 45.20,23.51 < 25 |only if walking
Follow the path |goto 44.56,27.47 < 20 |only if walking
accept Arachnicide##45694 |goto Broken Shore/0 41.88,28.52
|tip You will accept this quest automatically.
stickystart "Arach"
step
Follow the path |goto 44.56,27.47 < 20 |only if walking
Follow the path |goto 41.55,27.96 < 20 |only if walking
Enter the cave |goto 39.67,29.53 < 20 |walk
kill Sister Silkreaver##117351
Defeat Sister Silkreaver |q 45694/2 |goto 39.85,34.28
step
Leave the cave |goto 39.67,29.53 < 20 |walk
Follow the path |goto 38.59,25.02 < 25 |only if walking
kill Sister Bloodweb##117352
Defeat Sister Bloodweb |q 45694/3 |goto 37.78,22.17
step
Follow the path |goto 38.64,25.55 < 20 |only if walking
Follow the path |goto 38.10,30.63 < 20 |only if walking
Follow the path |goto 38.20,33.50 < 25 |only if walking
kill Sister Deathweaver##117350
Defeat Sister Deathweaver |q 45694/1 |goto 39.75,35.28
step
label "Arach"
kill Skittering Demon##117509+, Arachni Beast##117516+
collect 30 Bolt of Felsilk##143856 |q 45694/4 |goto 39.09,27.91
|next "Legion_World_Quest_Emissaries"
step
label quest-46105
Follow the path |goto Broken Shore/0 51.00,25.25 < 25 |only if walking
Follow the path |goto 51.00,31.01 < 25 |only if walking
Follow the path |goto 52.29,33.39 < 25 |only if walking
Follow the path |goto 48.51,35.39 < 25 |only if walking
accept Arachnid Superiority##46105 |goto Broken Shore/0 43.13,37.46
|tip You will accept this quest automatically.
stickystart "Arachnid"
step
Enter the building |goto 42.45,35.95 < 20 |walk
kill Syarrix##120236 |q 46105/2 |goto 41.86,34.08
step
label "Arachnid"
kill Venemous Spitter##118721+, Noxious Weaver##118722+
collect 8 Potent Venom Sac##147206 |q 46105/1 |goto Broken Shore/0 43.13,37.46
|next "Legion_World_Quest_Emissaries"
step
label quest-46750
Swim across the water |goto Broken Shore/0 52.00,25.14 < 25 |only if walking
Follow the path |goto 55.51,27.68 < 25 |only if walking
Follow the path |goto 57.42,28.45 < 15 |only if walking
accept Battery Backup##46750 |goto Broken Shore/0 63.28,22.10
|tip You will accept this quest automatically.
step
Follow the path |goto 63.28,22.10 < 25 |only if walking
kill Wrymtongue Engineer##118024+
collect 3 Battleship Power Core##146892 |q 46750/1 |goto 65.68,22.79
step
Replenish the Power Core |q 46750/2 |goto 67.46,22.68
|tip Step in Fel Fissures on the ground to be thrown in the air. |only if not achieved(11446)
|tip Use the extra action button on-screen to glide through fel orbs. |only if not achieved(11446)
|tip Fly through fel orbs in the air. |only if achieved(11446)
|next "Legion_World_Quest_Emissaries"
step
label quest-45520
Follow the path |goto Broken Shore/0 46.66,58.79 < 25 |only if walking
accept Behind Enemy Portals##45520 |goto 49.13,55.50
|tip You will accept this quest automatically.
step
Enter the portal |q 45520/1 |goto 49.13,55.50
step
kill Arachniarch Bybee##117088+
Assassinate the demon commander |q 45520/2 |goto 50.01,57.56
|tip Leave the portal when you kill the demon.
|next "Legion_World_Quest_Emissaries"
step
label quest-45559
Follow the path |goto Broken Shore/0 46.66,58.79 < 25 |only if walking
accept Behind Enemy Portals##45559 |goto 49.13,55.50
|tip You will accept this quest automatically.
step
Enter the portal |q 45559/1 |goto 49.13,55.50
step
kill Pit Commander Galvinoth##117304
Kill Pit Commander Galvinoth |q 45559/2 |goto Broken Shore/0 50.80,55.60
|tip Leave the portal when you kill the demon.
|next "Legion_World_Quest_Emissaries"
step
label quest-45542
Follow the path |goto Broken Shore/0 46.66,58.79 < 25 |only if walking
accept Behind Enemy Portals##45542 |goto 49.13,55.50
|tip You will accept this quest automatically.
step
Enter the portal |q 45542/1 |goto 49.13,55.50
step
talk Tehd Shoemaker##119184
Tell him: _"Transform?"_
Speak with Tehd for a disguise |q 45542/2 |goto 48.19,56.91
step
click Vital Supplies##267953
|tip These chests can be found randomly throughout the ship.
|tip More can be found upstairs.
Rob stuff |q 45542/3 |goto 49.21,55.30
|tip Avoid the eyes, as they will dispel your disguise.
|tip Leave The Dreadex by using the "Return to Sender" ability after completing the world quest.
|next "Legion_World_Quest_Emissaries"
step
label quest-46073
Follow the path |goto Broken Shore/0 47.00,58.50 < 25 |only if walking
Follow the path |goto 52.25,52.44 < 30 |only if walking
accept Break Their Garrison##46073 |goto Broken Shore/0 55.06,51.58
|tip You will accept this quest automatically.
step
kill Felfire Imp##117555+, Imp Mother Flaz##118720+, Wrathguard Dreadblade##117559+, Eredar Summoner##117567+
click Libram of Fel Knowledge##269154
Destroy the Garrison forces |q 46073/1 |goto 59.26,45.67
|next "Legion_World_Quest_Emissaries"
step
label quest-46761
Follow the path |goto Broken Shore/0 43.84,58.31 < 25 |only if walking
Follow the path |goto 46.94,58.44 < 25 |only if walking
Follow the path |goto 51.84,52.53 < 25 |only if walking
Follow the path |goto 54.79,52.16 < 25 |only if walking
accept Brew Bandits##46761 |goto 55.47,53.71
|tip You will accept this quest automatically.
step
talk Master Jiedari##121321
Talk to Master Jiedari |q 46761/1 |goto Broken Shore/0 55.47,53.71
stickystart "Brew"
step
Use the Hozen Vaulting Staff |use Hozen Vaulting Staff##146896 |havebuff 667301
step
kill Felfire Incinerator##121336+, Felskorn Infuser##121335+, Felskorn Initiate##121334+
Kill #40# Felskorn Enemies |q 46761/2 |goto 58.52,48.46
|tip Use the first and second abilities on your bar to kill Felskorn mobs.
step
label "Brew"
kill Fel Brew Spreader##120353
Destroy #5# Fel Brew Spreader |q 46761/3 |goto 58.52,48.46
|tip Use the first and second abilities on your bar to destroy Brew Spreaders.
|next "Legion_World_Quest_Emissaries"
step
label quest-46811
accept Broodmother's Wrath##46811 |goto Broken Shore/0 57.66,38.19
|tip You will accept this quest automatically.
step
clicknpc Daumyr##120492
Mount Daumyr |q 46811/1 |goto 57.66,38.19
step
kill Wrathguard Soulbreaker##116138+, Chaosborn Champion##116276+, Chaosbolt Felweaver##116267+
Kill #100# demons |q 46811/2 |goto 54.80,31.64
|tip Use the first and second abilities on your bar to kill demons.
|next "Legion_World_Quest_Emissaries"
step
label quest-46947
Follow the path |goto Broken Shore/0 66.33,43.20 < 25 |only if walking
Follow the path up |goto 67.95,33.96 < 20 |only if walking
Follow the path down |goto 64.04,33.49 < 20 |only if walking
accept Brutallus##46947 |goto 59.82,28.99
|tip You will accept this quest automatically.
step
kill Brutallus##117239
|tip
|tip Face Brutallus towards the group when he performs Meteor Slash |grouprole TANK
|tip Group up during Meteor Slash |grouprole EVERYONE
|tip Avoid standing in the areas marked by Crashing Embers |grouprole EVERYONE
|tip
Defeat Brutallus |q 46947/1 |goto 59.82,28.99 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46068
Follow the path |goto Broken Shore/0 66.24,42.40 < 25 |only if walking
Follow the path up |goto 70.11,35.26 < 20 |only if walking
accept Brute Wrangling##46068 |goto 71.59,33.37
|tip You will accept this quest automatically.
step
clicknpc Subdued Punisher##120216
Mount the Subdued Punisher |q 46068/1 |goto 71.59,33.37
step
kill Deepsurge Defender##118683+, Deepsurge Tidesinger##118679+, Deepsurge Punisher##118680+
Kill #25# Deepsurge Naga |q 46068/2 |goto 75.65,27.66
|next "Legion_World_Quest_Emissaries"
step
label quest-45805
Follow the path |goto Broken Shore/0 44.03,58.27 < 25 |only if walking
Follow the path |goto 46.94,58.48 < 20 |only if walking
Follow the path |goto 51.85,52.53 < 25 |only if walking
accept The Burning Keys##45805 |goto Broken Shore/0 58.80,46.70
|tip You will accept this quest automatically.
step
kill Vile Keykeeper##118046, Dread Interrogator##118059
collect Burning Key##143924 |n
click Legion Cage##267920
Rescue #10# prisoners |q 45805/1 |goto 58.80,46.70
|next "Legion_World_Quest_Emissaries"
step
label quest-46201
Follow the path |goto Broken Shore/0 68.64,47.35 < 25 |only if walking
Follow the path |goto 64.85,50.25 < 25 |only if walking
accept By Water Be Purged##46201 |goto 63.63,57.26
|tip You will accept this quest automatically.
step
talk Champion Aquaclease##120085
Tell him: _"I am ready."_
Join forces with Champion Aquaclease |q 46201/1 |goto 63.63,57.26
step
Follow the path up |goto 60.83,56.11 < 15 |only if walking
kill Wrathful Felcinder##120113+, Felflame Infernal##120103+, Felflame Overfiend##120112+
|tip Use the abilities on your bar to kill enemies in the area.
|tip The fifth ability on your bar heals you to full over 10 seconds.
Extinguish the Felfire |q 46201/2 |goto 54.37,76.27
|next "Legion_World_Quest_Emissaries"
step
label quest-45035
accept The Call of Battle##45035 |goto Broken Shore/0 66.65,43.88
|tip You will accept this quest automatically.
stickystart "Call"
step
kill Gor'lok Fleshgrinder##116721 |q 45035/3 |goto 66.15,47.16
step
label "Call"
kill Ravenous Felstalker##121034+, Wrathguard Soulflayer##121058+, Felblade Sentry##121035+, Hellish Imp##121031+
Kill #16# Legion forces |q 45035/1 |goto 66.65,43.88
clicknpc Demonic Tome##119449
clicknpc Fel Crystal##120966
|tip Use the special action button on your screen to destroy the Tomes and Fel Crystals.
Destroy #8# defenses |q 45035/2 |goto 66.65,43.88
|next "Legion_World_Quest_Emissaries"
step
label quest-46814
Cross the bridge |goto Broken Shore/0 50.99,25.16 < 25 |only if walking
accept Call of the Frostwyrm##46814 |goto Broken Shore/0 54.61,32.94
|tip You will accept this quest automatically.
step
kill Wrathguard Soulbreaker##116138+, Chaosborn Champion##116276+, Chaosbolt Felweaver##116267+
Kill #25# demons |q 46814/1 |goto 54.61,32.94
|tip Use the extra action button on screen to deal heavy frost damage in front of you..
|next "Legion_World_Quest_Emissaries"
step
label quest-46868
Press _I_ and queue for the Cathedral of Eternal Night or enter the dungeon with your group
accept Cathedral of Eternal Night: Infernal Dead##46865 |goto Cathedral of Eternal Night/1 6.84,68.64
|tip You will accept this quest automatically.
step
kill Dreadspeaker Serilis##120716
|tip Directly north of the second boss, Thrashbite the Scornful, is Serilis.
|tip He is at the end of the hallway in the Chapel of Moonlight.
Defeat Dreadspeaker Serilis |q 46868/1
step
kill Mephistroth##120793 |q 46868/2 |goto Cathedral of Eternal Night/5 52.3,21.7
|next "Legion_World_Quest_Emissaries"
step
label quest-46865
Press _I_ and queue for the Cathedral of Eternal Night or enter the dungeon with your group
accept Cathedral of Eternal Night: Mother of Flame##46865 |goto Cathedral of Eternal Night/1 6.84,68.64
|tip You will accept this quest automatically.
step
kill Raga'yut##120715
|tip On the first floor, there will be a door at the north side.
|tip Open this door to reach Raga'yut.
Defeat Raga'yut |q 46865/1
step
kill Mephistroth##120793 |q 46865/2 |goto Cathedral of Eternal Night/5 52.3,21.7
|next "Legion_World_Quest_Emissaries"
step
label quest-44846
Swim across the water |goto Broken Shore/0 76.49,53.09 < 20 |only if walking
accept Clearing the Path##44846 |goto Broken Shore/0 82.61,49.91
|tip You will accept this quest automatically.
stickystart "Corruptor"
step
Follow the path |goto 81.23,45.44 < 25 |only if walking
kill Urthracx the Desecrator##117593 |q 44846/2 |goto 78.09,39.48
step
label "Corruptor"
kill 8 Dark Corruptor##117611 |q 44846/1 |goto 78.09,39.48
|next "Legion_World_Quest_Emissaries"
step
label quest-45178
Follow the path |goto Broken Shore/0 40.61,61.75 < 20 |only if walking
Follow the path |goto 39.80,67.21 < 25 |only if walking
Drop down |goto 38.00,65.02 < 25 |only if walking
accept Contagion Containment##45178 |goto 31.27,60.76
|tip You will accept this quest automatically.
stickystart "Contagion"
step
Follow the path |goto 31.01,61.67 < 25 |only if walking
Follow the path |goto 29.12,62.03 < 20 |only if walking
kill Witchmatron Magora##120068
Defeat Witchmatron Magora |q 45178/2 |goto 29.23,63.86
step
label "Contagion"
click Fel-Corrupted Egg##267224
Destroy #12# Fel-Corrupted Eggs |q 45178/1 |goto 31.27,60.76
|tip You will find these in nests attached to the sides of trees.
|next "Legion_World_Quest_Emissaries"
step
label quest-45358
Follow the path |goto Broken Shore/0 40.61,61.75 < 20 |only if walking
Follow the path |goto 39.80,67.21 < 25 |only if walking
Drop down |goto 38.00,65.02 < 25 |only if walking
accept Contagion Containment##45358 |goto 31.27,60.76
|tip You will accept this quest automatically.
stickystart "Containment"
step
click Fel Spreader##268517
Destroy #5# Fel Spreaders |q 45358/2 |goto 31.27,60.76
step
label "Containment"
clicknpc Legionfall Fighter##120052
Cure #8# Legionfall Fighters |q 45358/1 |goto 31.27,60.76
|next "Legion_World_Quest_Emissaries"
step
label quest-46942
Follow the path |goto Broken Shore/0 68.92,46.89 < 20 |only if walking
Follow the path |goto 66.36,42.27 < 25 |only if walking
Follow the path |goto 69.55,36.26 < 25 |only if walking
accept The Cost of Power##46942 |goto 78.45,28.62
|tip You will accept this quest automatically.
stickystart "Felsurge"
step
kill Lady Ssathara##120938 |q 46942/3 |goto 82.36,27.57
step
label "Felsurge"
kill Felsurge Tidesinger##120962+, Felsurge Defender##120952+, Harrowing Corruptor##120945+
Kill #8# Felsurge Naga |q 46942/2 |goto 81.51,28.42
Kill #3# Harrowing Corruptor |q 46942/1 |goto 81.51,28.42
|next "Legion_World_Quest_Emissaries"
step
label quest-45837
accept Creeping Fel##45837 |goto Broken Shore/0 54.60,64.80
|tip You will accept this quest automatically.
stickystart "Creep"
step
kill Morzuun the Plaguebringer##118134 |q 45837/2 |goto 57.80,59.00
step
label "Creep"
Rakeeshi Sorcerer##117820+, Rakeeshi Honor Guard##118135+, Rakeeshi Demon##118142+, Rakeeshi Felhound##118133+
Kill #15# Rakeeshi Demons |q 45837/1 |goto 54.60,64.80
|next "Legion_World_Quest_Emissaries"
step
label quest-45531
accept Creeping Fel##45531 |goto Broken Shore/0 54.60,64.80
|tip You will accept this quest automatically.
stickystart "Creep2"
step
kill Morzuun the Plaguebringer##118134 |q 45531/2 |goto 57.80,59.00
step
label "Creep2"
Purge #10# Legion Creep |q 45531/1 |goto 54.60,64.80
|tip Run around through the green stuff.
|next "Legion_World_Quest_Emissaries"
step
label quest-46821
Follow the path |goto Broken Shore/0 44.10,58.21 < 20 |only if walking
Follow the path |goto 51.05,54.97 < 25 |only if walking
accept Creepy Crawlies##46821 |goto 51.49,43.43
|tip You will accept this quest automatically.
step
kill Bone Crawler Grub##116951+
Bone Crawler Grub |q 46821/1 |goto 51.49,43.43
|next "Legion_World_Quest_Emissaries"
step
label quest-45970
Follow the path |goto Broken Shore/0 66.33,43.20 < 25 |only if walking
Follow the path up |goto 67.95,33.96 < 20 |only if walking
accept Duty's End##45970 |goto Broken Shore/0 67.10,29.74
|tip You will accept this quest automatically.
step
kill Maddened Spirit##119694+, Feltotem Spiritwalker##119635+
click Darkspear Bow##268411
Lay the fallen to rest |q 45970/1 |goto 67.10,29.74
|next "Legion_World_Quest_Emissaries"
step
label quest-46829
clicknpc Grapple Point##110334 |goto Broken Shore/0 43.79,65.78 < 10 |only if walking
Click the second grapple point |goto 44.20,66.96 < 5 |only if walking
Click the third grapple point |goto 44.48,67.56 < 5 |only if walking
accept Elemental Abuse##46829 |goto 47.76,70.67
|tip You will accept this quest automatically.
step
click Grapple point |goto 45.47,67.50 < 10 |only if walking
kill Twisted Elementalist##120636+
collect 3 Fire Power Core##147286 |q 46829/1 |goto 48.60,72.64
collect 3 Water Power Core##147285 |q 46829/2 |goto 48.60,72.64
collect 3 Earth Power Core##147284 |q 46829/3 |goto 48.60,72.64
collect 3 Air Power Core##147283 |q 46829/4 |goto 48.60,72.64
|next "Legion_World_Quest_Emissaries"
step
label quest-46288
Cross the water |goto Broken Shore/0 52.04,25.17 < 20 |only if walking
Follow the path up |goto 55.46,27.61 < 25 |only if walking
Follow the path |goto 56.19,29.75 < 15 |only if walking
accept Everyone to the Front##46288 |goto 59.72,26.04
|tip You will accept this quest automatically.
step
kill Ravenous Felstalker##118787+, Felblade Devastator##118819+
Kill #20# demons |q 46288/1 |goto 60.70,24.79
|next "Legion_World_Quest_Emissaries"
step
label quest-45878
Follow the path |goto Broken Shore/0 45.07,24.76 < 25 |only if walking
Cross the water |goto 35.99,28.28 < 25 |only if walking
accept Exterminating with Impunity##45878 |goto 33.46,33.39
|tip You will accept this quest automatically.
step
kill Darkstone Trickster##118162+, Volatile Darkstone Imp##118163+
Darkstone Imps |q 45878/1 |goto 33.46,33.39
|next "Legion_World_Quest_Emissaries"
step
label quest-45744
clicknpc Grapple Point##110334 |goto Broken Shore/0 63.74,48.84 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 62.41,48.15 < 5 |only if walking
accept Fall of the Felskorn##45744 |goto 58.48,47.93
|tip You will accept this quest automatically.
step
kill Felskorn Zealot##117594+, Fel Stormdrake##117706+
Kill #15# Felskorn |q 45744/1 |goto 58.48,47.93
|next "Legion_World_Quest_Emissaries"
step
label quest-47132
Follow the path |goto Broken Shore/0 43.74,58.30 < 20 |only if walking
Follow the path |goto 49.00,63.25 < 25 |only if walking
accept Fel Fire and Ice##47132 |goto 53.61,66.16
|tip You will accept this quest automatically.
step
kill Living Felblaze##120933+, Burning Sentry##120932+
Threat extinguished |q 47132/1 |goto 53.09,66.09
|tip Using the special action button "Cold as Ice" will destroy the small Fel Fireballs and deal frost damage.
|tip Be aware, using this ability will slow you briefly.
|next "Legion_World_Quest_Emissaries"
step
label quest-46126
Follow the path down |goto Broken Shore/0 39.35,63.75 < 15 |only if walking
Drop down |goto 38.70,61.98 < 15 |only if walking
accept Fel-Corrupted Feathers##46126 |goto Broken Shore/0 31.43,60.59
|tip You will accept this quest automatically.
stickystart "Feathers"
step
click Harpy Nest##267778
Burn #5# Harpy Nests |q 46126/3 |goto 31.43,60.59
|tip These are located on trees in the area.
step
label "Feathers"
kill Deadwood Felcaster##118786+
Kill #8# Deadwood Felcasters |q 46126/1 |goto 31.43,60.59
kill Deadwood Featherblade##118788+
Kill #8# Deadwood Featherblades |q 46126/2 |goto 31.43,60.59
|next "Legion_World_Quest_Emissaries"
step
label quest-46933
Follow the path down |goto Broken Shore/0 39.35,63.75 < 15 |only if walking
Drop down |goto 38.70,61.98 < 15 |only if walking
accept Felrglrglrglrgl##46933 |goto 38.18,59.85
|tip You will accept this quest automatically.
step
kill Felfin Terrorscale##118971+, Felfin Cursecaller##120816+
Felfin Murlocs killed |q 46933/1 |goto 38.18,59.85
|tip You can find more murlocs in the cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-45934
Follow the path |goto Broken Shore/0 41.14,60.99 < 20 |only if walking
Follow the path |goto 40.22,67.54 < 25 |only if walking
Drop down |goto 41.07,74.31 < 25 |only if walking
accept Fowl Play##45934 |goto 41.66,77.96
|tip You will accept this quest automatically.
stickystart "Fowl"
step
kill Seascale Crocolisk##118255+
Kill #6# Seascale Crocolisks |q 45934/1 |goto 41.66,77.96
step
label "Fowl"
click Saltwater Crane Egg##267600
Retrieve #12# Salwater Crane Eggs |q 45934/2 |goto 41.66,77.96
|tip These are found in small clusters on rocks.
clicknpc Saltwater Crane##118266
Rescue #6# Saltwater Cranes |q 45934/3 |goto 41.66,77.96
|next "Legion_World_Quest_Emissaries"
step
label quest-46072
Cross the water |goto Broken Shore/0 52.04,25.17 < 20 |only if walking
Follow the path up |goto 55.46,27.61 < 25 |only if walking
Follow the path |goto 56.19,29.75 < 15 |only if walking
accept Full Fel##46072 |goto 59.72,26.04
|tip You will accept this quest automatically.
step
kill Ravenous Felstalker##118787+, Felblade Devastator##118819+
Drain #10# Demon Essences |q 46072/1 |goto 60.70,24.79
|tip These are purple essences that resemble Soul Fragments.
step
kill Golgranoth##119100
Defeat Golgranoth |q 46072/2 |goto Broken Shore/0 60.64,24.85
|next "Legion_World_Quest_Emissaries"
step
label quest-46198
Follow the path up |goto Broken Shore/0 50.92,18.90 < 15 |only if walking
Follow the path up |goto 49.69,18.68 < 15 |only if walking
accept Gems of Destruction##46198 |goto 44.23,18.38
|tip You will accept this quest automatically.
step
kill Felborne Abjurer##118943+, Felborne Punisher##118322+
collect 5 Pulsating Gem##144362 |q 46198/1 |goto 44.23,18.38
Kill #5# Felborne Punishers  |q 46198/2 |goto 44.23,18.38
|next "Legion_World_Quest_Emissaries"
step
label quest-46212
accept Get them Up##46212 |goto Broken Shore/0 43.11,55.83
|tip You will accept this quest automatically.
step
clicknpc Wounded Highmountain Warrior##119030
Rescue #5# Wounded Highmountain Warriors |q 46212/1 |goto 43.11,55.83
kill Prowling Shadowstalker##119015+
Kill #5# Prowling Shadowstalkers  |q 46212/2 |goto 43.11,55.83
|next "Legion_World_Quest_Emissaries"
step
label quest-45985
Follow the path |goto Broken Shore/0 43.74,58.30 < 20 |only if walking
Follow the path |goto 46.77,58.69 < 25 |only if walking
accept Hellish Scavengers##45985 |goto 53.87,56.13
|tip You will accept this quest automatically.
stickystart "Scavengers"
step
kill Rayesh##120208
Defeat Rayesh |q 45985/2 |goto 56.88,56.58
step
label "Scavengers"
click Ravaged Supplies##267655
collect 6 Ravaged Supplies##144240 |q 45985/1 |goto 53.87,56.13
|next "Legion_World_Quest_Emissaries"
step
label quest-45541
Follow the path |goto Broken Shore/0 43.50,58.55 < 25 |only if walking
Follow the path |goto 46.98,58.45 < 25 |only if walking
accept How Do YOU Like It?!##45541 |goto 49.13,55.50
|tip You will accept this quest automatically.
step
Enter the portal |q 45541/1 |goto 49.13,55.50
step
clicknpc Dreadsoul Wrathguard##117168
Use _Enslave Demon_ on a Dreadsoul demon |cast Enslave Demon##1098
Enslave a Dreadsoul demon |q 45541/2 |goto 49.15,55.34
|tip Demons can be found upstairs and downstairs.
stickystart "Dread"
step
Follow the path |goto 48.90,53.31 < 15 |only if walking
Follow the path |goto 48.22,54.20 < 10 |only if walking
kill Paal the Cazarian##117165
Defeat Paal the Cazarian |q 45541/4 |goto 49.15,55.34
step
label "Dread"
kill Dreadsoul Wrathguard##117168+, Cazarian Skornbringer##118441+
Kill #8# Dreadsoul demons |q 45541/3 |goto 49.15,55.34
|tip Demons can be found upstairs and downstairs.
|next "Legion_World_Quest_Emissaries"
step
label quest-46066
Follow the path up |goto Broken Shore/0 68.25,33.88 < 15 |only if walking
Follow the path |goto 66.59,32.69 < 15 |only if walking
accept I Fel Bat For You##46066 |goto 65.25,29.76
|tip You will accept this quest automatically.
stickystart "Pups"
step
kill Feltalon Roostmother##118499+
Kill #6# Feltalon Roostmothers |q 46066/1 |goto 62.67,33.82
step
label "Pups"
Scatter #15# Felbat Pups |q 46066/2 |goto 62.67,33.82
|tip You only need to run over top of them to scatter them.
|next "Legion_World_Quest_Emissaries"
step
label quest-46112
Enter the cave |goto Broken Shore/0 46.90,21.28 < 10 |walk
accept Illidari Masters: Madam Viciosa##46112 |goto 46.41,20.67
|tip You will accept this quest automatically.
step
talk Madam Viciosa##117950
Tell her: _"Let's do battle!"_
Defeat Sissix |q 46112/1 |goto 46.41,20.67
|next "Legion_World_Quest_Emissaries"
step
label quest-46113
Carefully drop down |goto Broken Shore/0 43.61,65.69 < 20 |only if walking
Follow the path down |goto 41.19,66.57 < 20 |only if walking
accept Illidari Masters: Nameless Mystic##46113 |goto 39.49,71.96
|tip You will accept this quest automatically.
step
talk Nameless Mystic##117951
Tell him: _"Let's do battle!"_
Defeat Nameless Mystic |q 46113/1 |goto 39.49,71.96
|next "Legion_World_Quest_Emissaries"
step
label quest-46111
accept Illidari Masters: Sissix##46111 |goto Broken Shore/0 69.99,47.64
|tip You will accept this quest automatically.
step
talk Sissix##117934
Tell her: _"Let's do battle!"_
Defeat Sissix |q 46111/1 |goto 69.99,47.64
|next "Legion_World_Quest_Emissaries"
step
label quest-45472
clicknpc Grapple Point##110334 |goto Broken Shore/0 43.79,65.78 < 10 |only if walking
Click the second grapple point |goto 44.20,66.96 < 5 |only if walking
Click the third grapple point |goto 44.48,67.56 < 5 |only if walking
Click the fourth grapple point |goto 45.47,67.50 < 10 |only if walking
Follow the path |goto 50.41,71.01 < 25 |only if walking
accept Kraken Eggs##45472 |goto 54.86,76.51
|tip You will accept this quest automatically.
step
talk Zipp Fizzlebonk##120725
Tell him: _"Sure, I'll give it a shot..."_
Speak with Zipp Fizzlebonk |q 45472/1 |goto 54.86,76.51
step
kill Kraken Egg##118184+
|tip Use the Egg-Sploder extra action button ability to destroy eggs.
|tip Some eggs will hatch, subjecting you to Kraken attack.
|tip Stay at max distance to avoid aggroing a hatched Kraken.
Break #6# Kraken Eggs |q 45472/2 |goto 54.86,76.51
|next "Legion_World_Quest_Emissaries"
step
label quest-45776
accept Keys are a Crutch##45776 |goto Broken Shore/0 51.69,52.65
|tip You will accept this quest automatically.
|only Rogue
step
click Legion Cage##267920
Pick #10# Cage Locks |q 45776/1 |goto 58.94,45.88
|tip These cages can be found all around this area.
|tip Use your stealth ability to get around the mobs while looking for these cages.
|next "Legion_World_Quest_Emissaries"
|only Rogue
step
label quest-45653
Cross the water |goto Broken Shore/0 45.60,23.28 < 25 |only if walking
accept Kill it with Fire!##45653 |goto Broken Shore/0 44.33,27.35
|tip You will accept this quest automatically.
|only Mage
step
kill Vile Broodling##117354+, Brood Beast##117425+
Burn all of the things |q 45653/1 |goto 41.74,29.09
|tip Use the extra action button "Enhanced Dragonsbreath" to quickly kill the enemies.
|next "Legion_World_Quest_Emissaries"
|only Mage
step
label quest-46308
Follow the path |goto Broken Shore/0 66.27,42.54 < 15 |only if walking
Follow the path |goto Broken Shore/0 71.38,35.05 < 15 |only if walking
Follow the path up |goto Broken Shore/0 70.40,40.86 < 15 |only if walking
accept Leave a Trail##46308 |goto Broken Shore/0 71.78,42.27
|tip You will accept this quest automatically.
|only Rogue
step
click the Rappel Rope |q 46308/1 |goto 71.90,42.21
|only Rogue
step
click Fel-Infused Gunpowder Cache##267041 |q 46308/2 |goto 71.99,42.24
|only Rogue
step
Go into stealth and avoid getting detected by the mobs within this cave
click Felfire Explosive##268428 |q 46308/3 |count 1 |goto 71.85,41.85
|only Rogue
step
Stay in stealth avoiding all enemies inside this cave
click Felfire Explosive##268428 |q 46308/3 |count 2 |goto 72.13,39.74
|only Rogue
step
Stay in stealth avoiding all enemies inside this cave
click Felfire Explosive##268428 |q 46308/3 |count 3 |goto 72.79,38.41
|only Rogue
step
Stay in stealth avoiding all enemies inside this cave
click Felfire Explosive##268428 |q 46308/3 |count 4 |goto 73.38,36.73
|only Rogue
step
Follow the path to leave the cave |goto 76.26,39.84
click Campfire##251490 |goto 77.06,39.45
Light the Gunpowder |q 46308/4 |goto 77.06,39.45
|next "Legion_World_Quest_Emissaries"
|only Rogue
step
label quest-46046
Follow the path |goto Broken Shore/0 43.80,58.35 < 25 |only if walking
Follow the path |goto 50.77,55.03 < 25 |only if walking
accept Life's a Lich##46046 |goto Broken Shore/0 52.35,48.38
|tip You will accept this quest automatically.
step
kill Feltotem Necromancer##118472+, Tainted Walker##118454+, Soul Reaper##118459+
collect 30 Fel-infused Remains##144241 |q 46046/1 |goto 52.07,44.31
step
talk Amal'thazad##118569
Speak with Amal'thazad |q 46046/2 |goto 52.33,48.37
|next "Legion_World_Quest_Emissaries"
step
label quest-46754
accept Magical Beasts##46754 |goto Broken Shore/0 48.13,17.85
|tip You will accept this quest automatically.
|only Mage
step
clicknpc Felbound Manasaber##118503
|tip These Manasabers are found all around this area.
Rescue Felbound Manasabers |q 46754/1 |goto 43.70,18.47
|next "Legion_World_Quest_Emissaries"
|only Mage
step
label quest-46948
Cross the water |goto Broken Shore/0 51.99,25.17 < 15 |only if walking
Follow the path up |goto 55.46,27.66 < 20 |only if walking
Follow the path |goto 57.47,28.54 < 20 |only if walking
accept Malificus##46948 |goto 59.78,28.96
|tip You will accept this quest automatically.
step
kill Malificus##117303
|tip
|tip Avoid standing near people inflicted with Incite Panic. |grouprole EVERYONE
|tip Don't stand in pools of Virulent Infection. |grouprole EVERYONE
|tip
Defeat Malificus |q 46948/1 |goto 59.78,28.96 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46707
accept Minion! Kill That One Too!##46707 |goto Broken Shore/0 43.73,58.34
|tip You will accept this quest automatically.
step
clicknpc Curious Fel Energy##120127
|tip Click "Yes" to accept the summons.
Investigate Curious Fel Energy |q 46707/1 |goto 43.73,58.34
step
kill Brethkaz the Dominator##120126
|tip Interrupt Rain of Fire whenever possible.
Defeat Brethkaz the Dominator |q 46707/2 |goto 72.22,41.14
|next "Legion_World_Quest_Emissaries"
step
label quest-46756
Follow the path |goto Broken Shore/0 68.78,46.78 < 20 |only if walking
Follow the path |goto 66.50,42.38 < 30 |only if walking
Follow the path |goto 69.89,35.79 < 30 |only if walking
accept Mission: Felrage Destruction##46756 |goto Broken Shore/0 72.66,30.30
|tip You will accept this quest automatically.
step
kill Felrage Marauder##117413+, Felrage Defender##119270+, Felrage Slaver##119203+, Felrage Skrog##117403+
click Curious Wyrmtongue Cache##268558
Disrupt the Felrage encampment |q 46756/1 |goto 72.66,30.30
|next "Legion_World_Quest_Emissaries"
step
label quest-46825
accept Mud Mucking##46825 |goto Broken Shore/0 66.68,45.87
|tip You will accept this quest automatically.
step
click Disturbed Mud##268765
collect 10 Sparkling Kirin Tor Coin##147211 |q 46825/1 |goto 66.68,45.87
|next "Legion_World_Quest_Emissaries"
step
label quest-46833
Follow the path |goto Broken Shore/0 45.17,57.71 < 25 |only if walking
Follow the path |goto 41.07,54.31 < 25 |only if walking
Follow the path |goto 47.43,66.44 < 20 |only if walking
accept Nature Unshackled##46833 |goto 38.68,45.04
|tip You will accept this quest automatically.
step
click Prison Cage##251216
kill Felsorrow Corruptor##120711+, Felsorrow Bruiser##120734+, Felsorrow Pesterer##120739+, Felsorrow Conqueror##120710+
Disrupt the Legion's plans |q 46833/1 |goto 38.68,45.04
|next "Legion_World_Quest_Emissaries"
step
label quest-44751
Follow the path |goto Broken Shore/0 46.53,59.03 < 25 |only if walking
Follow the path |goto 48.96,63.36 < 25 |only if walking
Follow the path |goto 47.43,66.44 < 20 |only if walking
Enter the cave |goto 45.75,67.35 < 15 |walk
accept No Soldier Left Behind##44751 |goto Broken Shore/0 66.68,45.87
|tip You will accept this quest automatically.
stickystart "Soldier"
step
Follow the path |goto 44.06,64.79 < 15 |walk
Follow the path |goto 44.43,63.12 < 15 |walk
Follow the path |goto 42.62,63.75 < 15 |walk
kill Azrok the Torturer##115648
Defeat Azrok the Torturer |q 44751/2 |goto 42.23,66.68
step
label "Soldier"
click Prison Cage##251216
Rescue #8# Soldiers |q 44751/1 |goto 42.59,63.67
|next "Legion_World_Quest_Emissaries"
step
label quest-45792
Swim across the water |goto Broken Shore/0 76.74,53.27 < 25 |only if walking
Swim across the water |goto 79.93,52.14 < 25 |only if walking
accept Occultist Onslaught##45792 |goto 82.17,47.81
|tip You will accept this quest automatically.
stickystart "Occultist"
step
click Fel Crystal##266291
Destroy #5# Fel Crystals |q 45792/2 |goto 82.17,47.81
step
label "Occultist"
kill Devoted Occultist##115875+
Kill #10# Devoted Occultists |q 45792/1 |goto 82.17,47.81
|next "Legion_World_Quest_Emissaries"
step
label quest-45793
Swim across the water |goto Broken Shore/0 76.74,53.27 < 25 |only if walking
Swim across the water |goto 79.93,52.14 < 25 |only if walking
accept Occultist Onslaught##45793 |goto 82.17,47.81
|tip You will accept this quest automatically.
stickystart "Occultist2"
step
click Fel Crystal##266291
Destroy #5# Fel Crystals |q 45793/2 |goto 82.17,47.81
step
label "Occultist2"
kill Devoted Occultist##115875+
Kill #10# Devoted Occultists |q 45793/1 |goto 82.17,47.81
|next "Legion_World_Quest_Emissaries"
step
label quest-46752
Swim across the water |goto Broken Shore/0 52.00,25.14 < 25 |only if walking
Follow the path |goto 55.51,27.68 < 25 |only if walking
Follow the path |goto 57.42,28.45 < 15 |only if walking
accept On Borrowed Wings##46752 |goto Broken Shore/0 63.28,22.10
|tip You will accept this quest automatically.
step
Follow the path |goto 63.28,22.10 < 25 |only if walking
kill Wrymtongue Engineer##118024+
collect 3 Battleship Power Core##146892 |q 46752/1 |goto 65.68,22.79
step
Replenish the Power Core |q 46752/2 |goto 67.46,22.68
|tip Step in Fel Fissures on the ground to be thrown in the air. |only if not achieved(11446)
|tip Use the extra action button on-screen to glide through fel orbs. |only if not achieved(11446)
|tip Fly through fel orbs in the air. |only if achieved(11446)
|next "Legion_World_Quest_Emissaries"
step
label quest-45797
Follow the path |goto Broken Shore/0 74.92,51.19 < 25 |only if walking
Follow the path |goto 80.66,51.26 < 25 |only if walking
accept Playing with Green Fire##45797 |goto 79.65,42.03
|tip You will accept this quest automatically.
stickystart "Supplicant"
step
kill Mistress Verdex##117956 |q 45797/2 |goto 78.09,39.48
step
label "Supplicant"
kill Felfire Supplicant##117949+
Kill #12# Felfire Supplicants |q 45797/1 |goto 79.37,41.54
|next "Legion_World_Quest_Emissaries"
step
label quest-46180
Follow the path |goto Broken Shore/0 46.85,58.62 < 25 |only if walking
Follow the path |goto 49.13,53.14 < 25 |only if walking
accept Power of Our Enemy##46180 |goto 45.65,49.86
|tip You will accept this quest automatically.
step
click Raw Fel##269136
Unleash Southern Fel Tower |q 46180/3 |goto 46.32,50.60
step
click Raw Fel##269136
Unleash Eastern Fel Tower |q 46180/1 |goto 46.04,44.95
step
click Raw Fel##269136
Unleash Northern Fel Tower |q 46180/2 |goto 43.31,46.65
|next "Legion_World_Quest_Emissaries"
step
label quest-45929
Follow the path |goto Broken Shore/0 43.99,58.29 < 25 |only if walking
Follow the path |goto 47.06,58.43 < 25 |only if walking
accept Purging the Flames##45929 |goto Broken Shore/0 54.53,49.69
|tip You will accept this quest automatically.
|only Shaman
stickystart "Cindern 1"
step
kill Cindern the Everburning##118323 |q 45929/2 |goto 54.77,47.24
|only Shaman
step
label "Cindern 1"
kill 10 Burning Felcinder##118281 |q 45929/1 |goto 54.53,49.69
|tip Drag Felcinders near the shaman totems to kill them quickly.
|tip Felcinders will curse you with a stacking curse that causes you to take increased fire damage.
|next "Legion_World_Quest_Emissaries"
|only Shaman
step
label quest-46075
accept Relic Hunting##46075 |goto Broken Shore/0 53.47,14.01
|tip You will accept this quest automatically.
stickystart "Spirits"
step
click Unearthed Antiquities##267770
Gather #8# Precious Antiquities |q 46075/1 |goto 53.47,14.01
step
label "Spirits"
kill Wailing Fiend##118335+, Ghastly Wretch##118336+
Slay #8# spirits |q 46075/2 |goto 53.47,14.01
|next "Legion_World_Quest_Emissaries"
step
label quest-46076
Follow the path |goto Broken Shore/0 50.92,19.03 < 20 |only if walking
Follow the path |goto 49.83,17.21 < 20 |only if walking
accept Restless Spirits##46076 |goto Broken Shore/0 53.47,14.01
|tip You will accept this quest automatically.
step
kill Felbound Spirit##116427+
Kill #10# Felbound Spirits |q 46076/1 |goto 53.47,14.01
|next "Legion_World_Quest_Emissaries"
step
label quest-46175
accept Rolling Thunder##46175 |goto Broken Shore/0 45.56,58.94
|tip You will accept this quest automatically.
step
click Barrel of Storm Brew##266951
|tip You must roll the brew down the hill.
|tip Avoid the running nightmares.
|tip You will need to move towards the direction they are coming from.
Deliver the brew |q 46175/1 |goto 37.48,46.41
|next "Legion_World_Quest_Emissaries"
step
label quest-46001
Follow the path |goto Broken Shore/0 68.73,46.82 < 20 |only if walking
Follow the path |goto 66.45,42.32 < 20 |only if walking
Follow the path |goto 67.92,34.02 < 20 |only if walking
Follow the path |goto 68.97,32.62 < 15 |only if walking
accept Rules of the Hunt##46001 |goto 64.41,32.07
|tip You will accept this quest automatically.
stickystart "Hunt"
step
kill Xargraxach##118342
Defeat Xargraxach |q 46001/2 |goto 67.52,29.54
step
label "Hunt"
kill 1 Wrathblade Honor Guard##118422
Kill #8# Wrathblade Honor Guard |q 46001/1 |goto 66.56,30.13
|next "Legion_World_Quest_Emissaries"
step
label quest-45550
Cross the Bridge |goto Broken Shore/0 50.97,25.23 < 25 |only if walking
accept Salving the Corruption##45550 |goto Broken Shore/0 52.66,32.84
|tip You will accept this quest automatically.
stickystart "Salving"
step
clicknpc Bloodbeak Owl##120237
clicknpc Rockfang Howler##120239
clicknpc Bristleback Boar##120238
Apply #6# Manaroot to injured animals |q 45550/2|goto 52.66,32.84
step
label "Salving"
kill Felborne Trapper##118676+, Felborne Magus##120205+
Kill #12# Felborne |q 45550/1|goto 52.66,32.84
|next "Legion_World_Quest_Emissaries"
step
label quest-45549
Cross the Bridge |goto Broken Shore/0 50.97,25.23 < 25 |only if walking
accept Salving the Corruption##45549 |goto Broken Shore/0 52.66,32.84
|tip You will accept this quest automatically.
stickystart "Salving2"
step
clicknpc Bloodbeak Owl##120237
clicknpc Rockfang Howler##120239
clicknpc Bristleback Boar##120238
Apply #6# Manaroot to injured animals |q 45549/2|goto 52.66,32.84
step
label "Salving2"
kill Felborne Trapper##118676+, Felborne Magus##120205+
Kill #8# Felborne |q 45549/1|goto 52.66,32.84
|next "Legion_World_Quest_Emissaries"
step
label quest-45626
Cross the water |goto Broken Shore/0 45.60,23.28 < 25 |only if walking
accept Set You Up the Bomb!##45626 |goto Broken Shore/0 44.33,27.35
|tip You will accept this quest automatically.
step
kill Vile Broodling##117354+, Brood Beast##117425+
Burn all of the things |q 45626/1 |goto 41.74,29.09
|tip Stand near Tirisgarde Pyromancers to gain a stacking buff that deals fire damage.
|next "Legion_World_Quest_Emissaries"
step
label quest-46160
Follow the path |goto Broken Shore/0 51.00,25.35 < 25 |only if walking
Follow the path |goto 50.97,30.86 < 20 |only if walking
Follow the path |goto 51.96,33.99 < 25 |only if walking
Follow the path |goto 47.23,35.56 < 25 |only if walking
accept The Shackled Void##46160 |goto 42.92,37.14
|tip You will accept this quest automatically.
stickystart "void"
step
kill Eredar Voidweaver##118851+
Kill #3# Eredar Voidweaver |q 46160/1 |goto 42.92,37.14
step
label "void"
kill Void Caller##118845+, Void Expulsion##118846+, Void Slave##118841
Expunge the void |q 46160/2 |goto 42.92,37.14
|next "Legion_World_Quest_Emissaries"
step
label quest-46945
Follow the path |goto Broken Shore/0 69.23,47.10 < 25 |only if walking
Follow the path |goto 66.50,42.48 < 25 |only if walking
Follow the path |goto 69.80,35.88 < 25 |only if walking
Follow the path |goto 74.17,28.62 < 25 |only if walking
Follow the path |goto 79.81,28.91 < 25 |only if walking
Follow the path |goto 84.02,26.63 < 25 |only if walking
accept Si'vash##46945 |goto Broken Shore/0 89.77,33.10
|tip You will accept this quest automatically.
step
kill Si'vash##117470 |q 46945/1 |goto 89.77,33.10 |future
|tip
|tip Dodge Tidal Waves that come from the sea. |grouprole EVERYONE
|tip Avoid Submerge bubbles, as they will stun you for 6 seconds and deal frost damage. |grouprole EVERYONE
|tip Pick up Sivashi Honor Guard quickly to avoid group damage. |grouprole TANK
|next "Legion_World_Quest_Emissaries"
step
label quest-46360
Cross the water |goto Broken Shore/0 76.83,53.45 < 25 |only if walking
Follow the path |goto 81.59,49.08 < 25 |only if walking
Follow the path |goto 79.39,41.64 < 25 |only if walking
Enter the cave |goto 76.27,39.78 < 25 |only if walking
accept Simply Stunning##46360 |goto Broken Shore/0 89.77,33.10
|tip You will accept this quest automatically.
step
Stun #50# demons |q 46360/1 |goto 89.77,33.10
|tip Use the extra action button that appears on-screen to stun demons.
|next "Legion_World_Quest_Emissaries"
step
label quest-46109
Follow the path |goto Broken Shore/0 52.03,25.17 < 25 |only if walking
Follow the path |goto 55.43,27.64 < 25 |only if walking
accept Stand!##46109 |goto 59.06,27.57
|tip You will accept this quest automatically.
step
kill Felblade Devastator##118776+, Ravenous Felstalker##118787+
|tip Use the special action button on your screen to deal additional damage.
Kill #20# demons |q 46109/1 |goto 59.06,27.57
|next "Legion_World_Quest_Emissaries"
step
label quest-46236
Follow the path |goto Broken Shore/0 46.92,58.48 < 25 |only if walking
Follow the path |goto 50.86,55.10 < 25 |only if walking
accept Stonebound Soldiers##46236 |goto 53.93,51.69
|tip You will accept this quest automatically.
stickystart "Stonebound"
step
kill Bonegnasher the Petrifying##120968
Kill Bonegnasher the Petrifying |q 46236/3 |goto 54.59,47.96
step
kill Stoneblood Basilisk##119139+
collect 8 Basilisk Eye##147396 |q 46236/2 |goto 54.59,47.96
step
label "Stonebound"
clicknpc Legionfall Soldier##119141
Cure #6# Legionfall Soldiers |q 46236/1 |goto 53.93,51.69
|next "Legion_World_Quest_Emissaries"
step
label quest-46032
Follow the path |goto Broken Shore/0 43.79,58.35 < 25 |only if walking
Follow the path |goto 46.93,58.51 < 25 |only if walking
Follow the path |goto 49.45,54.17 < 20 |only if walking
Follow the path |goto 50.05,51.97 < 25 |only if walking
accept The Tormented Return##46032 |goto 52.15,43.38
|tip You will accept this quest automatically.
step
Follow the path |goto 52.03,49.97 < 25 |only if walking
kill Soul Reaper##118459+, Rattling Ragewalker##118455+, Tainted Walker##118454+
Cleanse the Soul Ruin |q 46032/1 |goto 52.15,43.38
|next "Legion_World_Quest_Emissaries"
step
label quest-46866
Follow the path down |goto Broken Shore/0 39.35,63.75 < 15 |only if walking
Drop down |goto 38.70,61.98 < 15 |only if walking
accept Torture Chamber##46866 |goto 32.19,58.50
|tip You will accept this quest automatically.
stickystart "Cages"
step
kill Volatile Trickster##120750+, Vile Soulkeeper##120745+
Kill #12# Deadwood Demons |q 46866/1 |goto 31.60,60.01
step
label "Cages"
click Legion Cage##267920
|tip These cages are located all over the island.
Rescue #40# captives |q 46866/2 |goto 31.60,60.01
|tip You can also kill Vile Soulkeepers to free the captives they have in chains.
|next "Legion_World_Quest_Emissaries"
step
label quest-45379
accept Treasure Master Iks'reeged##45379 |goto Broken Shore/0 47.84,67.36
|tip You will need 100 Nethershards to complete this world quest.
|tip Nethershards can be earned by completing world quests, looting treasures, and killing mobs in Broken Shore.
|tip You will accept this quest automatically.
step
click Peculiar Rope |goto 47.84,67.36
talk Treasure Master Iks'reeged##120076
Tell him: _"I need a cache key."_
Bring 100 Nethershards to Iks'reeged |q 45379/1 |goto 45.05,52.09
|tip Don't forget to loot a treasure cache after buying a key!
|next "Legion_World_Quest_Emissaries"
step
label quest-46325
Cross the water |goto Broken Shore/0 51.97,25.09 < 25 |only if walking
Follow the path |goto 55.38,27.68 < 25 |only if walking
accept The United Front##46325 |goto 58.55,27.85
|tip You will accept this quest automatically.
step
kill Felblade Devastator##118819+, Ravenous Felstalker##118787+
Kill #10# demons |q 46325/1 |goto 57.84,27.69
|next "Legion_World_Quest_Emissaries"
step
label quest-45973
Go up the steps |goto Broken Shore/0 50.83,18.80 < 15 |only if walking
accept Unchecked Power##45973 |goto 48.85,19.08
|tip You will accept this quest automatically.
stickystart "Insurgents"
step
click Abjurist's Satchel##268715
collect 12 Abjurist's Scroll of Knowledge##146951 |q 45973/1 |goto 43.32,17.43
step
label "Insurgents"
clicknpc Felbound Manasaber##118282
kill Felborne Abjurer##117325+, Felborne Punisher##118322+
|tip Use the extra action button on your screen to dispel Abjurers when then turn into core hounds.
Kill #20# Felborne Insurgents |q 45973/2 |goto 43.32,17.43
|next "Legion_World_Quest_Emissaries"
step
label quest-46063
Follow the path |goto Broken Shore/0 46.66,58.79 < 25 |only if walking
Follow the path |goto 50.67,54.67 < 25 |only if walking
Follow the path |goto 46.73,49.63 < 25 |only if walking
Follow the path |goto 46.76,46.49 < 20 |only if walking
accept The Wailing Dead##46063 |goto 50.68,43.13
|tip You will accept this quest automatically.
step
kill Felblade Devastator##118819+, Ravenous Felstalker##118787+
Kill #15# spirits |q 46063/1 |goto 50.68,43.13
|next "Legion_World_Quest_Emissaries"
step
label quest-45791
Swim across the water |goto Broken Shore/0 78.23,52.87 < 25 |only if walking
Follow the path |goto Broken Shore/0 82.39,47.95 < 25 |only if walking
accept War Material##45791 |goto 78.86,41.09
|tip You will accept this quest automatically.
step
click Felslag##267277
click Fel Crucible##267278
kill Felforge Laborer##117718+
collect 30 Felslag##143888 |q 45791/1 |goto 78.86,41.09
|next "Legion_World_Quest_Emissaries"
step
label quest-45930
Follow the path |goto Broken Shore/0 43.99,58.29 < 25 |only if walking
Follow the path |goto 47.06,58.43 < 25 |only if walking
accept We Didn't Start the Fire##45930 |goto Broken Shore/0 54.53,49.69
|tip You will accept this quest automatically.
stickystart "Cindern"
step
kill Cindern the Everburning##118323 |q 45930/2 |goto 54.77,47.24
step
label "Cindern"
kill 10 Burning Felcinder##118281 |q 45930/1 |goto 54.53,49.69
|tip Drag Felcinders near the shaman totems to kill them quickly.
|tip Felcinders will curse you with a stacking curse that causes you to take increased fire damage.
|next "Legion_World_Quest_Emissaries"
step
label quest-45977
Follow the path |goto Broken Shore/0 43.50,58.55 < 25 |only if walking
Follow the path |goto 46.98,58.45 < 25 |only if walking
accept Where there is a whip...##45977 |goto 49.13,55.50
|tip You will accept this quest automatically.
step
Enter the portal |q 45977/1 |goto 49.13,55.50
stickystart "Whip"
step
Follow the path |goto 48.90,53.31 < 15 |only if walking
Follow the path |goto 48.22,54.20 < 10 |only if walking
kill Paal the Cazarian##117165
Defeat Paal the Cazarian |q 45977/3 |goto 49.15,55.34
step
label "Whip"
kill Dreadsoul Wrathguard##117168+, Cazarian Skornbringer##118441+
Kill #8# Dreadsoul demons |q 45977/2 |goto 49.15,55.34
|tip Demons can be found upstairs and downstairs.
|next "Legion_World_Quest_Emissaries"
step
label quest-44748
clicknpc Grapple Point##110334 |goto Broken Shore/0 43.79,65.78 < 10 |only if walking
Click the second grapple point |goto 44.20,66.96 < 5 |only if walking
Click the third grapple point |goto 44.48,67.56 < 5 |only if walking
accept Winged Terrors##44748 |goto Broken Shore/0 47.32,70.92
|tip You will accept this quest automatically.
stickystart "Terrors"
step
click Grapple point |goto 45.47,67.50 < 10 |only if walking
click Salvaged Spear##265542 |goto 48.60,72.64
|tip Use the special action button that shows up after clicking a spear to shoot devourers out of the sky.
kill 10 Felwing Devourer##115056 |q 44748/1 |goto 48.60,72.64
step
label "Terrors"
click Shipwrecked Supplies##265554
kill Wyrmtongue Scavenger##115054+
collect 12 Shipwrecked Supplies##142079 |q 44748/2 |goto 47.32,70.92
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Dalaran World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=627,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-42442
accept Fight Night: Amalia##42442 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
talk Amalia##107489
Tell her "Let's do battle!"
Defeat Amalia |q 42442/1 |goto Dalaran L/10 28.28,24.04
|next "Legion_World_Quest_Emissaries"
step
label quest-40299
accept Fight Night: Bodhi Sunwayver##40299 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
talk Bodhi Sunwayver##99210
Tell him "Let's do battle!".
Defeat Bodhi Sunwayver |q 40299/1 |goto Dalaran L/10 27.92,23.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41881
accept Fight Night: Heliosus##41881 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
Click Heliosus
Defeat Heliosus |q 41881/1 |goto Dalaran L/10 28.28,24.04
|next "Legion_World_Quest_Emissaries"
step
label quest-41886
accept Fight Night: Rats!##41886 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
clicknpc Splint Jr.##105241
Defeat Splint Jr. |q 41886/1 |goto Dalaran L/10 28.28,24.04
|next "Legion_World_Quest_Emissaries"
step
label quest-40298
accept Fight Night: Sir Galveston##40298 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
clicknpc Sir Galveston##99182
Defeat Sir Galveston |q 40298/1 |goto 28.28,24.04
|next "Legion_World_Quest_Emissaries"
step
label quest-42062
accept Fight Night: Stitches Jr. Jr.##42062 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
click Stiches Jr. Jr.##105840
|tip Stiches Jr. Jr. Ignores attacks that do less then 500 damage, so get some high damaging pets that counter Undead.
Defeat Stiches Jr. Jr. |q 42062/1 |goto Dalaran L/10 28.28,24.04
|next "Legion_World_Quest_Emissaries"
step
label quest-40277
accept Fight Night: Tiffany Nelson##40277 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
talk Tiffany Nelson##97804
Tell her "Let's do battle!"
Defeat Tiffany Nelson |q 40277/1 |goto Dalaran L/10 28.28,24.04
|next "Legion_World_Quest_Emissaries"
step
label quest-46138
accept Gemcutter Needed##46138 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
|tip Cutting them gem in 25 or fewer clicks will reward you with a Maelstrom Sapphire instead of a Skystone.
Create a _blue_ gem |q 46138/1 |goto 40.06,34.37
|next "Legion_World_Quest_Emissaries"
step
label quest-46137
accept Gemcutter Needed##46137 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
|tip Cutting them gem in 25 or fewer clicks will reward you with a Pandemonite instead of a Chaotic Spinel.
Create a _green_ gem |q 46137/1 |goto 40.06,34.37
|next "Legion_World_Quest_Emissaries"
step
label quest-46134
accept Gemcutter Needed##46134 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
|tip Cutting them gem in 25 or fewer clicks will reward you with an Eye of Prophecy instead of a Deep Amber.
Create an _orange_ gem |q 46134/1 |goto 40.06,34.37
|next "Legion_World_Quest_Emissaries"
step
label quest-46139
accept Gemcutter Needed##46139 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
|tip Cutting them gem in 25 or fewer clicks will reward you with a Shadowruby instead of a Queen's Opal.
Create a _purple_ gem |q 46139/1 |goto 40.06,34.37
|next "Legion_World_Quest_Emissaries"
step
label quest-46135
accept Gemcutter Needed##46135 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
|tip Cutting them gem in 25 or fewer clicks will reward you with a Furystone instead of a Sangrite.
Create a _red_ gem |q 46135/1 |goto 40.06,34.37
|next "Legion_World_Quest_Emissaries"
step
label quest-46136
accept Gemcutter Needed##46136 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
|tip Cutting them gem in 25 or fewer clicks will reward you with a Dawnlight instead of an Azsunite.
Create a _yellow_ gem |q 46136/1 |goto 40.06,34.37
|next "Legion_World_Quest_Emissaries"
step
label quest-41668
accept Vantus Rune Work Order: Il'gynoth, The Heart of Corruption##41668 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Il'gynoth, The Heart of Corruption>_
collect 1 Vantus Rune: Il'gynoth, The Heart of Corruption##128989
step
talk Warmage Silva##32725
turnin Vantus Rune Work Order: Il'gynoth, The Heart of Corruption##41668 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41662
accept Work Order: Ancient Rejuvenation Potions##41662 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 1 Ancient Rejuvenation Potion>_
collect 1 Ancient Rejuvenation Potion##127836
|tip You can purchase one of these from the Auction House if you don't have the recipe.
step
talk Warmage Silva##32725
turnin Work Order: Ancient Rejuvenation Potions##41662 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41656
accept Work Order: Azsunite Loop##41656 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Azsunite Loop>_
collect 1 Azsunite Loop##130225
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Warmage Silva##32725
turnin Work Order: Azsunite Loop##41656 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41680
accept Work Order: Failure Detection Pylon##41680 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Failure Detection Pylon>_
collect 1 Failure Detection Pylon##132515
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Warmage Silva##32725
turnin Work Order: Failure Detection Pylon##41680 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41638
accept Work Order: Leystone Gauntlets##41638 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Gauntlets>_
collect 1 Leystone Gauntlets##123893
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Warmage Silva##32725
turnin Work Order: Leystone Gauntlets##41638 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41650
accept Work Order: Silkweave Hood##41650 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Hood>_
collect 1 Silkweave Hood##126990
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Warmage Silva##32725
turnin Work Order: Silkweave Hood##41650 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41644
accept Work Order: Warhide Gloves##41644 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Warhide Gloves>_
collect 1 Warhide Gloves##128878
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Warmage Silva##32725
turnin Work Order: Warhide Gloves##41644 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41674
accept Work Order: Word of Intellect##41674 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Intellect>_
collect 1 Enchant Cloak - Word of Intellect##128547
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Warmage Silva##32725
turnin Work Order: Word of Intellect##41674 |goto 33.47,47.38
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Highmountain World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=650,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-43985
Follow the path |goto Highmountain/0 43.12,10.54 < 30 |only if walking
Follow the path |goto 44.97,8.89 < 30 |only if walking
Follow the path |goto 46.83,8.93 < 30 |only if walking
Follow the path |goto 47.65,8.32 < 30 |only if walking
accept A Dark Tide##43985 |goto Highmountain/0 49.15,7.66
|tip You will accept this quest automatically.
step
kill Flotsam##99929 |q 43985/1 |goto 49.15,7.66 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Move out of Jetsam. |only if grouprole("DAMAGE")
|tip Avoid standing infront of Flotsam. |only if grouprole("DAMAGE")
|tip Kill the Regurgiated Marshstompers quickly. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Move out of Jetsam. |only if grouprole("HEALER")
|tip Avoid standing infront of Flotsam. |only if grouprole("HEALER")
|tip The raid will take heavy damage from Getsam. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Flotsam away from the raid during Yaksam. |only if grouprole("TANK")
|tip Move away from Flotsam during Breaksam. |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-41705
accept Assault on Thunder Totem##41705 |goto Thunder Totem/0 45.83,39.97
|tip You will accept this quest automatically.
step
Use the Tripleweave Bandages ability on Wounded Highmountain Protectors
|tip It appears as a button on the screen.
|tip Click a Stack of Bandages to get this ability.
|tip They look like small rolls of white cloth on the ground.
|tip Wounded Highmountain Protectors look like tauren kneeling on the ground.
Kill enemies around this area
Defend Thunder Totem |q 41705/1 |goto 44.05,38.83
|next "Legion_World_Quest_Emissaries"
step
label quest-41026
Follow the path down |goto Highmountain/0 29.73,40.91 < 30 |only if walking
Follow the path |goto 28.06,41.33 < 30 |only if walking
accept Back to the Shadows##41026 |goto Highmountain/0 27.34,41.72
|tip You will accept this quest automatically.
stickystart "Cleanse Burial Grounds"
step
kill 4 Eredar Tormentor##102729 |q 41026/2 |goto Highmountain/0 26.90,44.05
step
label "Cleanse Burial Grounds"
kill the enemies around this area
Cleanse the Burial Grounds  |q 41026/1 |goto Highmountain/0 26.11,43.06
|next "Legion_World_Quest_Emissaries"
step
label quest-46191
Follow the path |goto Highmountain/0 35.01,67.08 < 25 |only if walking
Follow the path |goto 35.03,71.03 < 30 |only if walking
accept Balinar##46191 |goto 34.63,73.35
|tip You will accept this quest automatically.
step
kill Balinar the Culler##117066 |q 46191/1 |goto 34.63,73.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-45071
accept Barrels o' Fun##45071 |goto Highmountain/0 55.48,85.67
|tip You will accept this quest automatically.
step
click Barrel##2886
Game Completed |q 45071/1 |goto 55.22,85.81
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Legion_World_Quest_Emissaries"
step
label quest-40978
accept Bears Behaving Badly##40978 |goto Highmountain/0 37.09,43.29
|tip You will accept this quest automatically.
step
click Grain Sacks##246685
|tip They look like yellow bags on the ground around this area.
Kill enemies around this area
Rid the Fields of Unruly Bears |q 40978/1 |goto 37.09,43.29
|next "Legion_World_Quest_Emissaries"
step
label quest-40951
Follow the path |goto Highmountain/0 44.52,67.48 < 30 |only if walking
Follow the path |goto 43.40,70.09 < 30 |only if walking
Follow the path down |goto 42.29,70.92 < 30 |only if walking
Enter the cave |goto 41.30,72.44 < 15 |only if walking
accept Bitestone Bazaar##40951 |goto Highmountain/5 55.57,47.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Holding Pen##246874
Wreak Havoc |q 40951/1 |goto 55.57,47.76
|next "Legion_World_Quest_Emissaries"
step
label quest-40925
Follow the path |goto Highmountain/0 36.12,65.84 < 30 |only if walking
Follow the path |goto 38.70,67.94 < 30 |only if walking
Follow the path |goto 39.17,71.69 < 30 |only if walking
accept Bitestone Burglary##40925 |goto Highmountain/5 24.15,27.01
|tip You will accept this quest automatically.
step
talk Barbrul the Brewbrul##102366
Obtain a Disguise Drog |q 40925/1 |goto 24.15,27.01
step
Click Various Objects Throughout the Cave
|tip There are many different objects for you to steal.
|tip The objects sparkle so you can see them easier.
Burgle Bitestone |q 40925/2 |goto 70.44,79.23
|next "Legion_World_Quest_Emissaries"
step
label quest-40980
accept Boilback Plague##40980 |goto Highmountain/0 37.90,41.89
|tip You will accept this quest automatically.
step
kill 8 Boilback Bristlefur##102361 |q 40980/1 |goto Highmountain/0 37.06,43.47
|next "Legion_World_Quest_Emissaries"
step
label quest-41308
accept Border Reinforcements##41308 |goto Highmountain/0 59.25,65.16
|tip You will accept this quest automatically.
step
click Bola Launchers
|tip They look like wooden machines on the ground.
|tip Use the abilities on your action bar to shoot the blue dragons flying in the sky.
Kill enemies around this area
Reinforce the Stonehoof Watch defenses |q 41308/1 |goto 59.25,65.16
|next "Legion_World_Quest_Emissaries"
step
label quest-41310
accept Border Reinforcements##41310 |goto Highmountain/0 59.20,66.16
|tip You will accept this quest automatically.
step
click Bola Launchers
|tip They look like wooden machines on the ground.
|tip Use the abilities on your action bar to shoot the blue dragons flying in the sky.
Kill enemies around this area
Reinforce the Stonehoof Watch defenses |q 41310/1 |goto 59.18,66.35
|next "Legion_World_Quest_Emissaries"
step
label quest-46193
Follow the path |goto Highmountain/0 30.85,38.75 < 25 |only if walking
Follow the path |goto 30.69,34.67 < 30 |only if walking
Follow the path |goto 29.17,32.45 < 25 |only if walking
accept Borne of Fel##46193 |goto 30.82,29.43
|tip You will accept this quest automatically.
stickystart "Feltotem"
step
clicknpc Norgabbon of Stonedark##121151
Norgabbon of Stonedark freed |q 46193/1 |goto 29.96,30.42
step
kill Ritualist An'xa##119140 |q 46193/4 |goto 30.66,28.94
step
label "Feltotem"
kill Feltotem Initiate##119114+, Feltotem Warmonger##119105+, Feltotem Bloodsinger##119104+
Kill #20# Feltotem |q 46193/2 |goto 30.95,29.14
click Legion Cage##267920
Rescue #5# Prisoners |q 46193/3 |goto 30.95,29.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41208
accept Brimstone Destroyer##41208 |goto Highmountain/0 47.30,32.09
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41208/1 |goto Highmountain/0 48.10,32.57 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41209
accept Brimstone Destroyer##41209 |goto Highmountain/0 45.20,53.66
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41209/1 |goto 45.20,53.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41210
Follow the path |goto Highmountain/0 58.54,64.44 < 15 |only if walking
Follow the path |goto 56.10,63.54 < 25 |only if walking
Follow the path |goto 54.66,66.80 < 25 |only if walking
accept Brimstone Destroyer##41210 |goto 45.20,53.66
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41210/1 |goto 45.20,53.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41203
Enter the cave |goto Highmountain/0 49.99,53.81 < 15 |walk
accept Bright Leystone Deposits##41203 |goto 51.41,52.41
|tip You will accept this quest automatically.
step
click Bright Leystone Deposit##247904
collect 10 Bright Leystone Ore##141231 |q 41203/1 |goto 52.82,53.51
|next "Legion_World_Quest_Emissaries"
step
label quest-41706
Follow the path |goto Highmountain/0 42.62,10.18 < 25 |only if walking
Follow the path |goto 44.63,9.25 < 25 |only if walking
Follow the path |goto 46.78,10.41 < 25 |only if walking
Follow the path |goto 48.52,10.25 < 25 |only if walking
accept Briny Waters##41706 |goto 51.69,11.48
|tip You will accept this quest automatically.
step
kill Clackbrine Matron##104590+, Clackbrine Snapper##104582+, Clackbrine Pincer##104589+
Clackbrine Clean-up |q 41706/1 |goto 51.69,11.48
|tip Use the abilities on your hotbar to complete the objective.
|next "Legion_World_Quest_Emissaries"
step
label quest-41233
accept Bristled Bear Skin##41233 |goto Highmountain/0 37.24,43.07
|tip You will accept this quest automatically.
step
kill Boilback Bristlefur##102361+, Bristlefur Bear##96146+, Insatiable Bristlefur##99571+
|tip Skin the corpses.
collect 12 Bristled Bear Skin##134131 |q 41233/1 |goto 37.24,43.07
|next "Legion_World_Quest_Emissaries"
step
label quest-41526
accept Bushy Foxflower##41526 |goto Highmountain/0 37.20,43.53
|tip You will accept this quest automatically.
step
click Bushy Foxflower##248018
collect 10 Bushy Foxflower##140988 |q 41526/1 |goto 37.20,43.53
|next "Legion_World_Quest_Emissaries"
step
label quest-41238
accept Calcified Wormscales##41238 |goto Highmountain/0 39.83,65.41
|tip You will accept this quest automatically.
step
kill Infectious Worm##94687+, Overgrown Larva##94691+
|tip Skin the corpses.
collect 12 Calcified Wormscale##134132 |q 41238/1 |goto 39.83,65.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41623
accept Champions of Highmountain##41623 |goto Thunder Totem/6 67.57,74.32
|tip You will accept this quest automatically.
step
talk Spiritwalker Graysky##104518
Speak with Spiritwalker Graysky |q 41623/1 |goto Thunder Totem/6 67.57,74.32
step
talk Spiritwalker Graysky##104518
Enter the Vision |invehicle |goto 67.57,74.32 |q 41623
stickystart "Slay_Infernal_Siegebreakers_Champions_of_Highmountain"
step
Kill enemies around this area
|tip Use the abilities on your action bar to kill enemies.
Assault the Demons |q 41623/2 |goto Azshara L/0 29.49,42.30
step
label "Slay_Infernal_Siegebreakers_Champions_of_Highmountain"
kill 2 Infernal Siegebreaker##97808+ |q 41623/3 |goto 29.49,42.30
step
Follow the path down |goto 29.44,44.22 < 30 |only if walking
kill Pit Lord##98757 |q 41623/4 |goto 30.56,46.19
step
Leave the Vision |outvehicle
|tip Click the yellow arrow on your action bar.
|next "Legion_World_Quest_Emissaries"
step
label quest-46196
Follow the path |goto Highmountain/0 30.85,38.75 < 25 |only if walking
Follow the path |goto 30.69,34.67 < 30 |only if walking
Follow the path |goto 29.17,32.45 < 25 |only if walking
Follow the path |goto 31.38,26.29 < 20 |only if walking
Enter the cave |goto 33.64,28.10 < 10 |walk
accept Class Dismissed##46196 |goto Highmountain/40 59.66,56.96
|tip You will accept this quest automatically.
stickystart "Class"
step
click Portal##253174
Close #2# portals |q 46196/3 |goto 48.81,82.35
step
kill Pedagogue Gandorak##119140 |q 46196/4 |goto 53.56,86.24
step
label "Class"
kill Novice Warbull##118051+, Novice Acolyte##118050+, Burning Trickster##119522+,
Kill #16# demons |q 46196/1 |goto 59.66,56.96
clicknpc Demonic Tome##119449
Destroy #4# Demonic Tomes |q 46196/2 |goto 59.66,56.96
|next "Legion_World_Quest_Emissaries"
step
label quest-41201
accept Coarse Leystone Outcropping##41201 |goto Highmountain/0 49.37,76.83
|tip You will accept this quest automatically.
step
click Coarse Leystone Outcropping##247936
collect Coarse Leystone Ore##141220 |q 41201/1 |goto Highmountain/0 49.37,76.83 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46183
accept Commander Zarthak##46183 |goto Highmountain/0 35.46,63.39
|tip You will accept this quest automatically.
step
kill Commander Zarthak##117971
Defeat Commander Zarthak |q 46183/1 |goto 35.46,63.39 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41699
Follow the path |goto Highmountain/0 43.05,10.46 < 30 |only if walking
Follow the path |goto 44.11,12.15 < 30 |only if walking
Follow the path |goto 46.52,11.96 < 30 |only if walking
Follow the path |goto 48.68,10.23 < 30 |only if walking
accept Crabby Crunchies##41699 |goto Highmountain/0 52.04,11.98
|tip You will accept this quest automatically.
step
kill Brinescuttle Crab##104585+
|tip Use the abilities on your action bar.
collect 100 Brinescuttle Crab Meat##135583 |q 41699/1 |goto 52.04,11.98
|next "Legion_World_Quest_Emissaries"
step
label quest-41622
Follow the path |goto Highmountain/0 51.99,44.69 < 30 |only if walking
accept Crawliac's Legacy##41622 |goto Highmountain/0 50.75,41.80
|tip You will accept this quest automatically.
stickystart "Fleshrender_Rocs"
stickystart "Slay_Crawliac_Skywitches"
step
click Hexxing Fetishes
|tip They look like stick men with four arms reaching upward around this area.
Destroy #3# Hexxing Fetishes |q 41622/3 |goto 50.75,41.80
step
label "Fleshrender_Rocs"
kill 3 Fleshrender Roc##94986 |q 41622/2 |goto 50.75,41.80
step
label "Slay_Crawliac_Skywitches"
Kill Crawliac enemies around this area
Slay #8# Crawliac Skywitches |q 41622/1 |goto 50.75,41.80
|next "Legion_World_Quest_Emissaries"
step
label quest-41095
accept Critical Crops##41095 |goto Highmountain/0 43.33,58.74
|tip You will accept this quest automatically.
stickystart "Overgrown_Larvas"
stickystart "Diseased_Grubs"
step
clicknpc Tangled Gourd##102890+
|tip They look like green pumpkins around this area.
clicknpc Tangled Maize##102887+
|tip They look like corn stalks around this area.
Save #5# Crops |q 41095/1 |goto 43.33,58.74
step
label "Overgrown_Larvas"
kill 3 Overgrown Larva##94691 |q 41095/2 |goto 43.33,58.74
step
label "Diseased_Grubs"
kill 10 Diseased Grub##94688 |q 41095/3 |goto 43.33,58.74
|next "Legion_World_Quest_Emissaries"
step
label quest-41202
Follow the path |goto Highmountain/0 56.12,85.99 < 15 |only if walking
Follow the path up |goto 54.63,89.59 < 20 |only if walking
Enter the cave |goto 55.02,90.42 < 15 |walk
accept Crude Leystone Seams##41202 |goto Highmountain/0 56.69,90.14
|tip You will accept this quest automatically.
step
Follow the path |goto 56.69,90.14 < 20 |walk
click Crude Leystone Seam##247340
collect 6 Crude Leystone Ore##141221 |q 41202/1 |goto 57.63,92.08
|next "Legion_World_Quest_Emissaries"
step
label quest-41685
Cross the bridge |goto Highmountain/0 35.90,65.12 < 15 |only if walking
Follow the path |goto 35.49,63.46 < 30 |only if walking
Follow the path |goto 32.98,61.43 < 30 |only if walking
Follow the path down |goto 30.57,59.05 < 30 |only if walking
Follow the path down |goto 29.35,55.81 < 30 |only if walking
Follow the path |goto 29.78,53.71 < 30 |only if walking
accept DANGER: Ala'washte##41685 |goto Highmountain/0 28.19,52.80
|tip You will accept this quest automatically.
step
kill Ala'washte##104481 |q 41685/1 |goto 28.19,52.80 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41695
Follow the path |goto Highmountain/0 52.98,45.88 < 30 |only if walking
Follow the path down |goto 54.29,46.80 < 30 |only if walking
Follow the path down |goto 57.04,43.23 < 30 |only if walking
Follow the path |goto 58.48,45.36 < 30 |only if walking
Follow the path |goto 58.07,47.41 < 30 |only if walking
accept DANGER: Defilia##41695 |goto Highmountain/0 56.73,48.63
|tip You will accept this quest automatically.
step
kill Defilia##104513 |q 41695/1 |goto 56.73,48.63 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41093
Follow the path |goto Highmountain/0 44.94,67.01 < 20 |only if walking
Follow the path |goto 43.33,70.42 < 30 |only if walking
Follow the path |goto 44.16,72.84 < 30 |only if walking
accept DANGER: Durguth##41093 |goto Highmountain/0 44.00,74.59
|tip You will accept this quest automatically.
step
kill Durguth##96072 |q 41093/1 |goto Highmountain/0 43.81,75.33 |future
|tip This is a elite enemy you will need a group to kill it.
|next "Legion_World_Quest_Emissaries"
step
label quest-41696
Follow the path up |goto Highmountain/0 58.88,68.99 < 30 |only if walking
accept DANGER: Mawat'aki##41696 |goto 58.52,72.40
|tip You will accept this quest automatically.
step
kill Mawat'aki##104517 |q 41696/1 |goto 58.52,72.40 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41686
Follow the path |goto Highmountain/0 40.72,12.33 < 25 |only if walking
Follow the path |goto 38.04,14.77 < 25 |only if walking
Follow the path |goto 35.58,17.58 < 25 |only if walking
Follow the path up |goto Highmountain/0 58.88,68.99 < 30 |only if walking
accept DANGER: Olokk the Shipbreaker##41686 |goto 33.82,21.14
|tip You will accept this quest automatically.
step
kill Olokk the Shipbreaker##104484 |q 41686/1 |goto 33.82,21.14 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41703
Enter the cave |goto Highmountain/0 52.34,58.55 < 15 |walk
accept DANGER: Ormagrogg##41703 |goto 52.67,58.31
|tip You will accept this quest automatically.
step
kill Ormagrogg##104524 |q 41703/1 |goto 52.67,58.31 |future
|tip Inside the cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-41816
Follow the path |goto Highmountain/0 50.70,64.08 < 25 |only if walking
Follow the path |goto 48.98,67.00 < 25 |only if walking
Follow the path up |goto 48.01,69.01 < 25 |only if walking
Follow the path up |goto 49.05,69.31 < 15 |only if walking
accept DANGER: Oubdob da Smasher##41816 |goto 46.98,73.11
|tip You will accept this quest automatically.
step
kill Oubdob da Smasher##95204 |q 41816/1 |goto 46.98,73.11 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41013
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter the cave |goto 53.14,75.56 < 30 |only if walking
Cross the bridge |goto 52.47,74.09 < 20 |walk
Follow the path |goto 51.87,72.94 < 20 |walk
Cross the bridge |goto 51.28,76.07 < 20 |walk
Follow the path |goto 51.19,78.33 < 30 |walk
Face the slide and drop down to the ledge below |goto 50.29,78.06 < 15 |walk
click Featherstone##246734 |goto 50.09,77.83
Gain the Featherstone buff |havebuff 642580
|tip Jump off the ledge and fall all the way down into the arena.
|tip You won't take much fall damage because of the Featherstone.
accept Darkbrul Arena##41013 |goto Highmountain/0 50.29,75.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Defeat the Arena Combatants |q 41013/1 |goto 50.29,75.90
|next "Legion_World_Quest_Emissaries"
step
label quest-41024
accept Dirge of the Dead##41024 |goto Highmountain/0 28.10,41.43
|tip You will accept this quest automatically.
step
Kill enemies around this area
Cleanse the Burial Ground |q 41024/1 |goto 26.72,42.98
|next "Legion_World_Quest_Emissaries"
step
label quest-43767
Follow the path down |goto Highmountain/0 57.63,27.27 < 30 |only if walking
Follow the path down |goto 58.30,26.02 < 30 |only if walking
Follow the path down |goto 55.58,25.01 < 30 |only if walking
Follow the path |goto 56.79,22.32 < 30 |only if walking
accept Enigmatic##43767 |goto Highmountain/0 58.15,19.00
|tip You will accept this quest automatically.
step
clicknpc Puzzle Box##126354
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43767/1 |goto 58.15,19.01
|next "Legion_World_Quest_Emissaries"
step
label quest-39424
Follow the path |goto Highmountain/0 38.96,38.90 < 25 |only if walking
Follow the path |goto 40.83,36.38 < 25 |only if walking
Follow the path |goto 42.54,34.22 < 25 |only if walking
accept Everything!##39424 |goto 44.34,29.88
|tip You will accept this quest automatically.
step
kill Feltotem Demonkindre##96615+, Feltotem Bloodsinger##96423+, Feltotem Bonehound##104323+, Feltotem Bloodbinder##104328+
|tip You will find them all around the area.
Vanquish the Feltotem |q 39424/1 |goto 44.34,29.88
step
Follow the path |goto 47.46,29.24 < 25 |only if walking
kill Mellok, Son of Torok##96621
Slay Mellok, Son of Torok |q 39424/2 |goto 49.21,27.11
|next "Legion_World_Quest_Emissaries"
step
label quest-41239
Follow the path down |goto Highmountain/0 38.97,38.85 < 30 |only if walking
Follow the path |goto 40.70,36.53 < 30 |only if walking
Follow the path |goto 42.73,33.85 < 30 |only if walking
Follow the path up |goto 44.37,32.22 < 20 |only if walking
Follow the path up |goto 44.68,35.34 < 20 |only if walking
Follow the path |goto 42.62,38.44 < 20 |only if walking
Follow the path |goto 42.98,39.85 < 20 |only if walking
Follow the path |goto 42.25,40.95 < 30 |only if walking
accept Felhide##41239
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
|tip He pats around this area.
|tip Loot and Skin this.
collect Felhide##124116 |q 41239/1 |goto Highmountain/0 42.39,42.04 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41561
Follow the path |goto Highmountain/0 49.87,63.55 < 25 |only if walking
Follow the path |goto 50.85,64.04 < 25 |only if walking
Follow the path |goto 47.81,68.95 < 25 |only if walking
Follow the path |goto 49.06,69.30 < 10 |only if walking
accept Felhide##41561 |goto 47.63,71.78
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41561/1 |goto 47.63,71.78 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41560
Follow the path |goto Highmountain/0 39.07,38.55 < 25 |only if walking
Follow the path |goto 42.49,34.48 < 25 |only if walking
Follow the path |goto 45.05,29.32 < 25 |only if walking
Follow the path |goto 44.94,25.14 < 25 |only if walking
accept Felhide##41560 |goto 43.54,24.63
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41560/1 |goto 43.54,24.63 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42086
Follow the path down |goto Highmountain/0 30.77,39.10 < 30 |only if walking
Follow the path down |goto 30.86,36.13 < 30 |only if walking
Cross the bridge |goto 29.08,32.70 < 30 |only if walking
Follow the path |goto 29.89,30.90 < 30 |only if walking
accept The Feltotem##42086 |goto Highmountain/0 30.15,29.19
|tip You will accept this quest automatically.
stickystart "Slay_Feltotem_Tribesman"
step
kill Nozcha the Twisted##106077 |q 42086/1 |goto 29.25,29.69
step
Follow the path up |goto 30.31,30.05 < 30 |only if walking
kill Lady Raltash##106082 |q 42086/3 |goto 30.63,28.93
step
kill Taurnash the Heretic##106074 |q 42086/2 |goto 30.44,27.18
step
label "Slay_Feltotem_Tribesman"
Kill enemies around this area
Slay #12# Feltotem Tribesman |q 42086/4 |goto 30.16,29.27
|next "Legion_World_Quest_Emissaries"
step
label quest-41512
accept Felwort##41512 |goto Highmountain/0 33.11,64.72
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41512/1 |goto 33.11,64.72
|next "Legion_World_Quest_Emissaries"
step
label quest-41511
Follow the path |goto Highmountain/0 40.64,53.88 < 20 |only if walking
accept Felwort##41511 |goto 41.41,56.05
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41511/1 |goto 41.41,56.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41225
Follow the path |goto Highmountain/0 37.37,40.78 < 20 |only if walking
accept Felwort##41225 |goto 41.41,56.05
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41225/1 |goto 41.41,56.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41432
Follow the path |goto Highmountain/0 39.29,38.13 < 25 |only if walking
Follow the path |goto 42.14,35.12 < 25 |only if walking
Follow the path |goto 46.37,30.68 < 25 |only if walking
accept Fiery Leystone Deposits##41432 |goto Highmountain/0 49.42,28.57
|tip You will accept this quest automatically.
step
click Fiery Leystone Deposit##247906
collect 10 Fiery Leystone Ore##141239 |q 41432/1 |goto 49.42,28.57
|next "Legion_World_Quest_Emissaries"
step
label quest-41219
accept Flourishing Foxflower##41219 |goto Highmountain/0 55.55,45.44
|tip You will accept this quest automatically.
step
click Flourishing Foxflower##247388
collect 10 Flourishing Foxflower##140986 |q 41219/1 |goto 55.55,45.44
|next "Legion_World_Quest_Emissaries"
step
label quest-41544
Follow the path down |goto Highmountain/0 38.99,38.71 < 20 |only if walking
Follow the path |goto 40.92,36.35 < 25 |only if walking
Follow the path |goto 43.37,32.50 < 25 |only if walking
Follow the path up |goto 44.39,32.29 < 20 |only if walking
accept Foxflower Cluster##41544 |goto 46.53,31.74
|tip You will accept this quest automatically.
step
clicknpc Foxflower Cluster##104376
Foxflower Cluster gathered |q 41544/1 |goto 46.53,31.74
|next "Legion_World_Quest_Emissaries"
step
label quest-41228
Follow the path |goto Highmountain/0 36.42,65.89 < 20 |only if walking
accept Foxflower Cluster##41228 |goto 39.13,66.15
|tip You will accept this quest automatically.
step
clicknpc Foxflower Cluster##103648
Foxflower Cluster gathered |q 41228/1 |goto 39.13,66.15
|next "Legion_World_Quest_Emissaries"
step
label quest-46197
accept From the Skies They Fel##46197 |goto Highmountain/0 51.61,59.51
|tip You will accept this quest automatically.
stickystart "Dismantle_3_Petrified_Infernals"
stickystart "Kill_5_Felsiege_Infernals"
step
kill Skycaller Drez'mal##119490 |q 46197/3 |goto 50.16,59.65
step
label "Dismantle_3_Petrified_Infernals"
clicknpc Petrified Infernal##119491+
|tip They look like large stone infernals on the ground around this area.
Dismantle #3# Petrified Infernals |q 46197/2 |goto 51.61,59.51
step
label "Kill_5_Felsiege_Infernals"
kill 5 Felsiege Infernal##119489 |q 46197/1 |goto 51.61,59.51
|next "Legion_World_Quest_Emissaries"
step
label quest-43448
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
accept The Frozen King##43448 |goto Highmountain/0 58.04,72.37
|tip You will accept this quest automatically.
step
kill Drugon the Frostblood##110378 |q 43448/1 |goto 58.04,72.37 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Do not stand in front of Drugon during Snow Plow. |only if grouprole("DAMAGE")
|tip Move out of Avalanche. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Frozen allies take increased damage. |only if grouprole("HEALER")
|tip Allies gripped by Snow Plow will need healing. |only if grouprole("HEALER")
|tip Move out of Avalanche. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Drugon away from the group to prevent excess damage from Snow Crash. |only if grouprole("TANK")
|tip Do not stand in front of Drugon during Snow Plow. |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-41014
accept Fury Road##41014 |goto Highmountain/0 49.26,55.21
|tip You will accept this quest automatically.
step
talk Shardmaster Ufrogg##102689
Obtain a Crystal from Shardmaster Ufrogg |q 41014/1 |goto 49.26,55.21
step
Enter the cave |goto 50.12,53.64 < 30 |walk
Use the Rageshard to Summon the Rageshard Mount |use Rageshard##133944
Kill enemis around this area
|tip Use the abilities on your action bar.
|tip Run over the purple crystals that appear on the ground to collect them.
collect 100 Unrefined Gem##133947 |q 41014/2 |goto 51.46,52.44
|next "Legion_World_Quest_Emissaries"
step
label quest-46184
Follow the path down |goto Highmountain/0 54.30,46.78 < 25 |only if walking
accept Gelgothar##46184 |goto Highmountain/0 55.48,45.54
|tip You will accept this quest automatically.
step
kill Gelgothar##117040 |q 46184/1 |goto 55.48,45.54 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41701
Follow the path |goto Highmountain/0 43.10,10.55 < 30 |only if walking
Follow the path |goto 44.64,12.86 < 30 |only if walking
Follow the path |goto 46.42,11.95 < 30 |only if walking
Follow the path |goto 48.60,10.26 < 30 |only if walking
accept Gettin' Tuffer##41701 |goto Highmountain/0 51.46,9.96
|tip You will accept this quest automatically.
stickystart "Collect_Tufferfish"
step
Eat #5# Greater Slimeweed |q 41701/2 |goto 51.46,9.96
|tip Greater Slimeweed looks like patches on yellow-brown plants on the ground around this area.
|tip Stand on them to eat them.
step
label "Collect_Tufferfish"
kill Tufferfish##104598+
|tip They are underwater around this area.
|tip Use the abilities on your action bar to kill enemies.
Collect #5# Tufferfish |q 41701/1 |goto 51.46,9.96
step
kill Brineclaw##104597 |q 41701/3 |goto 53.0,14.0
|next "Legion_World_Quest_Emissaries"
step
label quest-41127
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter the cave |goto 52.25,79.89 |walk
accept Gunksnout Infestation##41127 |goto Highmountain/0 52.26,79.90
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.26,79.90 < 30 |walk
clicknpc Kobold Candles##103196
|tip They look like wax candles with blue flames.
click Secreted Wax Globs##247075
|tip These are balls of wax stuck to the wall.
click Wax Ingots##247074
|tip They look like little wax bars on the ground.
Kill enemies around this area
Purge the Kobold Nest |q 41127/1 |goto 53.26,81.12
|next "Legion_World_Quest_Emissaries"
step
label quest-41204
Enter the cave |goto Highmountain/0 55.03,90.41 < 15 |walk
accept Hard Leystone Deposits##41204 |goto Highmountain/0 55.90,90.29
|tip You will accept this quest automatically.
step
click Hard Leystone Deposit##247352+
|tip They look like large Leystone deposits inside the cave.
collect 10 Hard Leystone Ore##141222 |q 41204/1 |goto 57.62,92.16
|next "Legion_World_Quest_Emissaries"
step
label quest-44746
Follow the path |goto Highmountain/0 40.71,12.02 < 30 |only if walking
accept Helarjar Landing: Rockaway Coast##44746 |goto Highmountain/0 39.15,14.43
|tip You will accept this quest automatically.
step
kill Helarjar Ritualist##115132+
|tip There are 4 of them channeling around the water.
Defeat the Helarjar Ritualists |q 44746/1 |goto 39.15,14.43
|next "Legion_World_Quest_Emissaries"
step
label quest-41609
Follow the path |goto Highmountain/0 38.38,40.95 < 25 |only if walking
accept Huge Highmountain Salmon##41609 |goto 36.96,44.92
|tip You will accept this quest automatically.
step
Fish from the Huge Highmountain Salmon School |cast Fishing##7620
collect 10 Huge Highmountain Salmon##134399 |q 41609/1 |goto 36.96,44.92
|next "Legion_World_Quest_Emissaries"
step
label quest-41243
accept Huge Highmountain Salmon##41243 |goto Thunder Totem/0 51.15,66.25
|tip You will accept this quest automatically.
step
Fish from the Huge Highmountain Salmon School |cast Fishing##7620
collect 10 Huge Highmountain Salmon##134399 |q 41243/1 |goto 51.15,66.25
|next "Legion_World_Quest_Emissaries"
step
label quest-42064
accept It's Illid... Wait.##42064 |goto Highmountain/0 43.09,7.66
|tip You will accept this quest automatically.
step
clicknpc Lil'idan##105841
Defeat Lil'idan |q 42064/1 |goto Highmountain/0 43.22,7.57
|next "Legion_World_Quest_Emissaries"
step
label quest-46185
accept Iroxus##46185 |goto Highmountain/0 40.78,12.61
|tip You will accept this quest automatically.
step
kill Iroxus##117035
Defeat Iroxus |q 46185/1 |goto 40.78,12.61 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46186
accept Ix'dreloth##46186 |goto Highmountain/0 37.29,40.85
|tip You will accept this quest automatically.
step
kill Ix'dreloth##117059
Defeat Ix'dreloth |q 46186/1 |goto 37.29,40.85 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46187
Follow the path |goto Highmountain/0 29.99,40.78 < 25 |only if walking
Follow the path |goto 27.35,42.53 < 15 |only if walking
accept Larthogg##46187 |goto 25.57,44.76
|tip You will accept this quest automatically.
step
kill Larthogg##103514
Defeat Larthogg |q 46187/1 |goto 25.57,44.76 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43764
Cross the bridge |goto Highmountain/0 35.90,65.11 < 30 |only if walking
Follow the path |goto 35.54,63.47 < 30 |only if walking
Follow the path |goto 33.59,62.34 < 30 |only if walking
accept Ley Race##43764 |goto Highmountain/0 32.39,60.15
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43764/1 |goto 32.39,60.15
|next "Legion_World_Quest_Emissaries"
step
label quest-41196
Follow the path |goto Highmountain/0 56.63,85.00 < 25 |only if walking
Follow the path |goto 54.71,89.81 < 25 |only if walking
Follow the path |goto 55.09,90.40 < 25 |only if walking
accept Leystone Basilisks##41196 |goto 56.35,89.95
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Mine the corpses.
collect 60 Leystone-Encrusted Spike##134104 |q 41196/1 |goto 57.01,92.33
|next "Legion_World_Quest_Emissaries"
step
label quest-41198
Enter the cave |goto Highmountain/0 38.47,42.70 < 15 |walk
accept Leystone Basilisks##41198 |goto Highmountain/16 42.98,70.18
|tip Inside the cave.
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Inside the cave.
|tip Mine the corpses.
collect 60 Leystone-Encrusted Spike##134104 |q 41198/1 |goto 42.98,70.18
|next "Legion_World_Quest_Emissaries"
step
label quest-45048
Follow the path |goto Highmountain/0 37.64,38.64 < 20 |only if walking
accept Like the Wind##45048 |goto 35.49,36.73
|tip You will accept this quest automatically.
step
Goal Reached |q 45048/1 |goto 35.49,36.73
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Legion_World_Quest_Emissaries"
step
label quest-41597
accept Lively Highmountain Salmon##41597 |goto Highmountain/0 33.04,64.58
|tip You will accept this quest automatically.
step
Fish from Lively Highmountain Salmon Schools |cast Fishing##7620
collect 10 Lively Highmountain Salmon##134400 |q 41597/1 |goto 33.04,64.58
|next "Legion_World_Quest_Emissaries"
step
label quest-41596
Follow the path |goto Highmountain/0 50.04,63.68 < 25 |only if walking
accept Lively Highmountain Salmon##41596 |goto 51.84,64.11
|tip You will accept this quest automatically.
step
Fish from Lively Highmountain Salmon Schools |cast Fishing##7620
collect 10 Lively Highmountain Salmon##134400 |q 41596/1 |goto 51.84,64.11
|next "Legion_World_Quest_Emissaries"
step
label quest-41244
Follow the path |goto Highmountain/0 38.95,38.95 < 25 |only if walking
Follow the path |goto 40.85,36.38 < 25 |only if walking
Follow the path |goto 42.56,33.87 < 25 |only if walking
Follow the path |goto 43.78,29.79 < 25 |only if walking
accept Lively Highmountain Salmon##41244 |goto 45.44,27.37
|tip You will accept this quest automatically.
step
Fish from Lively Highmountain Salmon Schools |cast Fishing##7620
collect 10 Lively Highmountain Salmon##134400 |q 41244/1 |goto 45.44,27.37
|next "Legion_World_Quest_Emissaries"
step
label quest-41089
Follow the path |goto Highmountain/0 44.84,67.11 < 30 |only if walking
Follow the path |goto 43.53,71.23 < 30 |only if walking
accept Lords of the Hills##41089 |goto Highmountain/0 43.85,73.14
|tip You will accept this quest automatically.
stickystart "Hill_Ettins 2"
step
kill Hill Prince Urgo##96070 |q 41089/2 |goto 43.49,75.02
step
label "Hill_Ettins 2"
kill 5 Hill Ettin##102886 |q 41089/1 |goto 43.85,73.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41090
Follow the path |goto Highmountain/0 44.84,67.11 < 30 |only if walking
Follow the path |goto 43.53,71.23 < 30 |only if walking
accept Lords of the Hills##41090 |goto Highmountain/0 43.85,73.14
|tip You will accept this quest automatically.
stickystart "Hill_Ettins"
step
kill Hill Prince Urgo##96070 |q 41090/2 |goto 43.49,75.02
step
label "Hill_Ettins"
kill 5 Hill Ettin##102886 |q 41090/1 |goto 43.85,73.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41091
Cross the bridge |goto Thunder Totem/0 41.85,64.96 < 15 |only if walking
Follow the path |goto Thunder Totem/0 39.66,75.66 < 30 |only if walking
accept Lords of the Hills##41091 |goto Highmountain/0 44.93,65.58
|tip You will accept this quest automatically.
stickystart "Slay_Hill_Ettins"
step
Follow the path |goto 44.91,67.02 < 30 |only if walking
Follow the path |goto 43.79,69.41 < 30 |only if walking
Follow the path |goto 44.14,72.73 < 30 |only if walking
kill Hill Prince Ruggu##30108 |q 41091/2 |goto 43.53,75.15
step
label "Slay_Hill_Ettins"
kill 5 Hill Ettin##95937+ |q 41091/1 |goto 43.51,71.24
|next "Legion_World_Quest_Emissaries"
step
label quest-43766
accept The Magic of Flight##43766 |goto Thunder Totem/0 30.42,47.81
|tip You will accept this quest automatically.
step
clicknpc Arcane Artifact##110664
|tip The item is on top the the giant statue in the middle of Thunder Totem.
|tip Jump up into a floating bubble and swim in the bubbles to reach the item.
Find the Item |q 43766/1 |goto 45.20,51.21
|next "Legion_World_Quest_Emissaries"
step
label quest-41433
Follow the path down |goto Highmountain/0 29.68,41.00 < 25 |only if walking
Follow the path |goto 27.41,42.49 < 20 |only if walking
Drop down |goto 27.61,46.24 < 25 |only if walking
accept Massive Leystone Deposits##41433 |goto Highmountain/0 27.38,48.07
|tip You will accept this quest automatically.
step
click Massive Leystone Deposit##247907
collect 10 Massive Leystone Ore##141232 |q 41433/1 |goto 27.38,48.07
|next "Legion_World_Quest_Emissaries"
step
label quest-41253
accept Migrating Highmountain Salmon##41253 |goto Highmountain/0 40.57,49.68
|tip You will accept this quest automatically.
step
Spear 12 Migrating Highmountain Salmon |q 41253/1 |goto Highmountain/0 40.57,49.68
|tip Click the Salmon as they jump out of the water to spear them.
|next "Legion_World_Quest_Emissaries"
step
label quest-41122
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter the cave |goto Highmountain/0 52.11,79.64 < 10 |walk
accept Mists Take You##41122 |goto Highmountain/0 52.34,80.07
|tip You will accept this quest automatically.
step
Kill the enemies around this cave
Cleanse the Echoing Halls |q 41122/1 |goto 53.80,81.86
|next "Legion_World_Quest_Emissaries"
step
label quest-41076
Follow the path |goto Highmountain/0 58.56,64.46 < 20 |only if walking
Follow the path up |goto 57.71,63.36 < 30 |only if walking
Follow the path |goto 56.42,63.33 < 30 |only if walking
Follow the path |goto 56.90,60.66 < 30 |only if walking
Follow the path |goto 56.69,58.84 < 30 |only if walking
accept Munitions Testing##41076 |goto Highmountain/0 57.47,56.57
|tip You will accept this quest automatically.
step
talk Gertie##99468
Speak to Gertie |q 41076/1 |goto Highmountain/0 57.65,56.56
step
click Razik's Weapon Rack##246975
Grab a prototype from Razik's weapon rack |q 41076/2 |goto 57.64,56.43
step
Use the extra action button on the animals around this area
Hunt 10 animals using Razik's prototype |q 41076/3 |goto 56.03,55.71
|next "Legion_World_Quest_Emissaries"
step
label quest-41077
Follow the path |goto Highmountain/0 58.56,64.46 < 20 |only if walking
Follow the path up |goto 57.71,63.36 < 30 |only if walking
Follow the path |goto 56.42,63.33 < 30 |only if walking
Follow the path |goto 56.90,60.66 < 30 |only if walking
Follow the path |goto 56.69,58.84 < 30 |only if walking
accept Munitions Testing##41077 |goto Highmountain/0 57.47,56.57
|tip You will accept this quest automatically.
step
talk Gertie##99468
Speak to Gertie |q 41077/1 |goto Highmountain/0 57.65,56.56
step
click Razik's Weapon Rack##246975
Grab a prototype from Razik's weapon rack |q 41077/2 |goto 57.64,56.43
step
Use the extra action button on the animals around this area
Hunt 15 animals using Razik's prototype |q 41077/3 |goto 56.03,55.71
|next "Legion_World_Quest_Emissaries"
step
label quest-41078
Follow the path |goto Highmountain/0 58.56,64.46 < 20 |only if walking
Follow the path up |goto 57.71,63.36 < 30 |only if walking
Follow the path |goto 56.42,63.33 < 30 |only if walking
Follow the path |goto 56.90,60.66 < 30 |only if walking
Follow the path |goto 56.69,58.84 < 30 |only if walking
accept Munitions Testing##41078 |goto Highmountain/0 57.21,59.64
|tip You will accept this quest automatically.
step
talk Gertie##99468
Speak to Gertie |q 41078/1 |goto Highmountain/0 57.64,56.57
step
click Razik's Weapon Rack##246975
Grab a prototype from Razik's weapon rack |q 41078/2 |goto Highmountain/0 57.64,56.44
step
kill 5 Bonebeak Hawk##103592 |q 41078/3 |goto Highmountain/0 56.59,61.74
Use your extra action button and round up a bunch of these birds or you can just kill them.
step
kill 5 Icefang Packleader##97957 |q 41078/4 |goto Highmountain/0 56.09,54.77
Use your extra action button and round up a bunch of these Wolves or you can just kill them.
|next "Legion_World_Quest_Emissaries"
step
label quest-41866
_Enter the Neltharion's Lair Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Blighted Bat##41866
|tip You will accept this quest automatically.
step
kill Ragoul##103199 |q 41866/1
|tip Ragoul is located in a small side room at the southwest corner of the map.
|tip This passage starts just before Ularogg Cragshaper.
step
kill Dargrul##91007 |q 41866/2
|next "Legion_World_Quest_Emissaries"
step
label quest-41864
_Enter the Neltharion's Lair Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Crystalline Crusher##41864
|tip You will accept this quest automatically.
step
kill Ultanok##103247 |q 41864/1
|tip Ultanok is located in a small underwater cave.
|tip After falling down the waterfall following Rokmora, swim under the water between the two smaller falls.
step
kill Dargrul##91007 |q 41864/2
|next "Legion_World_Quest_Emissaries"
step
label quest-41865
_Enter the Neltharion's Lair Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Mother of Stone##41865
|tip You will accept this quest automatically.
step
kill Kraxa##103271 |q 41865/1
|tip Kraxa is located in a cave right after Ularogg Cragshaper.
|tip After killing Ularogg, swim across the water ahead, staying close to the left side.
step
kill Dargrul##91007 |q 41865/2
|next "Legion_World_Quest_Emissaries"
step
label quest-41211
_Enter the Neltharion's Lair Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Neltharion's Treasure##41211
|tip You will accept this quest automatically.
step
click Neltharion's Treasure##247348
Retrieve Neltharion's Treasure |q 41211/1
|tip After the barrel ride, the treasure is located in one of the small caves before Ularogg Cragshaper.
step
kill Dargrul##91007 |q 41211/2
|next "Legion_World_Quest_Emissaries"
step
label quest-41857
_Enter the Neltharion's Lair Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Stonedark Slaves##41857
|tip You will accept this quest automatically.
step
kill Understone Lasher##103597+
Kill #5# Understone Lashers |q 41857/1
|tip You will find these as you progress through the instance.
step
kill Dargrul##91007 |q 41857/2
|next "Legion_World_Quest_Emissaries"
step
label quest-46188
Cross the bridge |goto Highmountain/0 52.94,46.00 < 15 |only if walking
Follow the path up |goto 53.04,48.34 < 20 |only if walking
accept Orgrokk##46188 |goto Highmountain/0 51.18,50.07
|tip You will accept this quest automatically.
step
kill Orgrokk##117053 |q 46188/1 |goto 51.18,50.07 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-39462
Cross the river |goto Highmountain/0 40.58,49.74 < 30 |only if walking
accept Primal Payback##39462 |goto 40.88,48.54
|tip You will accept this quest automatically.
step
talk Enforcer Narissa##101957
Speak to Enforcer Narissa |q 39462/1 |goto 40.88,48.54
step
kill 10 Pinerock Hunter##102993 |q 39462/2 |goto 42.26,48.45
|tip Talk to Enforcer Narissa again to turn into a bear for the quest.
|tip Use the abilities on your action bar to kill enemies.
|next "Legion_World_Quest_Emissaries"
step
label quest-41055
Cross the river |goto Highmountain/0 40.58,49.74 < 30 |only if walking
accept Primal Payback##41055 |goto 40.88,48.54
|tip You will accept this quest automatically.
step
talk Enforcer Narissa##101957
Speak to Enforcer Narissa |q 41055/1 |goto 40.88,48.54
step
kill 10 Pinerock Hunter##102993 |q 41055/2 |goto 42.26,48.45
|tip Talk to Enforcer Narissa again to turn into a bear for the quest.
|tip Use the abilities on your action bar to kill enemies.
|next "Legion_World_Quest_Emissaries"
step
label quest-41057
Cross the river |goto Highmountain/0 40.58,49.74 < 30 |only if walking
accept Primal Payback##41057 |goto 40.88,48.54
|tip You will accept this quest automatically.
step
talk Enforcer Narissa##101957
Speak to Enforcer Narissa |q 41057/1 |goto 40.88,48.54
step
kill 10 Pinerock Hunter##102993 |q 41057/2 |goto 42.26,48.45
|tip Talk to Enforcer Narissa again to turn into a bear for the quest.
|tip Use the abilities on your action bar to kill enemies.
|next "Legion_World_Quest_Emissaries"
step
label quest-40850
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Enter Greystone Enclave |goto Highmountain/0 54.63,75.44 < 30 |walk
accept Prisoners of Greystone##40850 |goto Highmountain/0 54.79,78.94
|tip You will accept this quest automatically.
step
click Beast Pens##246329
Rescue #5# Captives from the Grey Bazaar |q 40850/1 |goto 54.79,78.94
step
kill Chompkeeper Baggrul##102107
Rescue the Captive Leader from the Basilisk Pit |q 40850/2 |goto 55.22,80.72
step
kill Ronir Wrangler##102123 |q 40850/3 |goto 54.02,77.75
|next "Legion_World_Quest_Emissaries"
step
label quest-41416
Cross the bridge |goto Highmountain/0 52.95,45.95 < 30 |only if walking
Follow the path |goto 52.59,47.07 < 30 |only if walking
Follow the path up |goto 53.01,48.27 < 30 |only if walking
accept Retake the Skyhorn##41416 |goto Highmountain/0 52.91,48.16
|tip You will accept this quest automatically.
stickystart "Crawliac_Bloodscreamers"
step
Follow the path up |goto 52.14,48.11 < 30 |only if walking
kill Agna the Fowl##104311
kill Skawn##104310
|tip Loot them to complete the goal.
Reclaim the Skyhorn |q 41416/2 |goto 50.99,50.35
step
label "Crawliac_Bloodscreamers"
kill 5 Crawliac Bloodscreamer##104302 |q 41416/1 |goto 51.77,49.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41789
Follow the path |goto Highmountain/0 51.99,44.67 < 30 |only if walking
Follow the path down |goto 48.33,45.20 < 30 |only if walking
accept Return to the Crag##41789 |goto Highmountain/0 46.89,46.75
|tip You will accept this quest automatically.
stickystart "Slay_Cursed_Wildlife"
stickystart "Slay_Vilewing_Harpies"
step
click Hexxing Fetishes
|tip They look like stick men with four arms reaching upward around this area.
Destroy #4# Hexxing Fetishes |q 41789/2 |goto 46.89,46.75
step
label "Slay_Cursed_Wildlife"
Kill Cursed enemies around this area
Slay #6# Cursed Wildlife |q 41789/3 |goto 46.89,46.75
step
label "Slay_Vilewing_Harpies"
Kill Vilewing enemies around this area
Slay #3# Vilewing Harpies |q 41789/1 |goto 46.89,46.75
|next "Legion_World_Quest_Emissaries"
step
label quest-41144
accept Return to the River##41144 |goto Highmountain/0 40.00,63.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Whitewater Carp##99973
|tip They look like fish flopping on the ground around this area.
|tip Face toward the river when you click them to kick them into the river.
click Fishing Supplies##243712
|tip They look like yellow baskets on the ground around this area.
Purify Whitewater Wash |q 41144/1 |goto 40.00,63.54
|next "Legion_World_Quest_Emissaries"
step
label quest-41025
Follow the path down |goto Highmountain/0 29.78,40.89 < 30 |only if walking
Follow the path |goto 27.46,41.51 < 30 |only if walking
Follow the path |goto 26.69,42.93 < 30 |only if walking
accept Rise of the Fallen##41025 |goto Highmountain/0 25.49,43.46
|tip You will accept this quest automatically.
step
Kill enemies around this area
Eradicate the Burial Ground |q 41025/1 |goto 25.49,43.46
|next "Legion_World_Quest_Emissaries"
step
label quest-40966
Cross the bridge |goto Thunder Totem/0 51.52,38.18 < 30 |region thunder_totem_circle_platform |only if walking
accept Ritualists in Our Midsts##40966 |goto Highmountain/0 50.73,53.17
|tip You will accept this quest automatically.
stickystart "Greystone_Shardmasters"
stickystart "Smash_Crystal_Conduits"
step
Enter the cave |goto 50.04,53.73 < 30 |walk
Follow the path |goto 51.57,52.49 < 30 |walk
Follow the path down |goto 52.46,52.91 < 30 |walk
kill Shardmaster Azurrogg##102501 |q 40966/1 |goto 53.10,53.56
|tip Standing on top of the rock.
step
label "Greystone_Shardmasters"
kill 3 Greystone Shardmaster##101644 |q 40966/2 |goto 50.73,53.17
step
label "Smash_Crystal_Conduits"
clicknpc Crystal Conduits##102795
|tip They look like big red crystal blocks on the ground throughout the cave.
Smash #7# Crystal Conduits |q 40966/3 |goto 52.20,53.56
|next "Legion_World_Quest_Emissaries"
step
label quest-41624
Follow the path |goto Highmountain/0 37.05,64.35 < 30 |only if walking
Enter the cave |goto Highmountain/0 38.39,61.38
Follow the path up |goto Highmountain/20 41.25,59.66
accept Rocko Needs a Shave##41624 |goto Highmountain/21 57.52,43.81
step
clicknpc Rocko##98572
|tip This enemy is immune for 10 rounds all you have to do is survive these 10 rounds and you will win.
Defeat Rocko |q 41624/1 |goto Highmountain/21 60.35,44.00
|next "Legion_World_Quest_Emissaries"
step
label quest-41200
Follow the path |goto Highmountain/0 59.44,68.29 < 25 |only if walking
Follow the path |goto 58.25,70.96 < 25 |only if walking
Follow the path |goto 57.99,73.74 < 25 |only if walking
Follow the path |goto 56.82,71.66 < 25 |only if walking
accept Rough Leystone Outcropping##41200 |goto 56.09,69.25
|tip You will accept this quest automatically.
step
click Rough Leystone Outcropping##247366
collect 1 Rough Leystone Ore##141219 |q 41200/1 |goto 56.09,69.25
|next "Legion_World_Quest_Emissaries"
step
label quest-46262
accept Save the Tadpoles!##46262 |goto Highmountain/0 44.87,8.90
|tip You will accept this quest automatically.
step
click Legion Cage##267920
Open #3# cages |q 46262/1 |goto 44.87,8.90
kill Emberscale Sentry##119701+, Emberscale Jailer##119654+, Emberscale Jailer##119654+
Kill #16# demons |q 46262/2 |goto 44.87,8.90
|next "Legion_World_Quest_Emissaries"
step
label quest-41691
Follow the path down |goto Highmountain/0 38.86,39.39 < 30 |only if walking
Follow the path |goto 39.26,37.96 < 30 |only if walking
Follow the path down |goto 39.49,35.49 < 30 |only if walking
accept Sea of Feathers##41691 |goto Highmountain/0 40.90,32.08
|tip You will accept this quest automatically.
stickystart "Witchwood_Hags"
stickystart "Bewitched_Bears"
step
click Harpy Eggs##243401
|tip They look like shaking white eggs in the hanging brown nets and on the ground around this area.
Destroy #4# Harpy Eggs |q 41691/2 |goto 40.90,32.08
step
label "Witchwood_Hags"
kill 6 Witchwood Hag##95310 |q 41691/1 |goto 40.90,32.08
step
label "Bewitched_Bears"
kill 4 Bewitched Bear##95270 |q 41691/3 |goto 40.90,32.08
|next "Legion_World_Quest_Emissaries"
step
label quest-41234
accept Shaggy Saber Hide##41234 |goto Highmountain/0 40.65,50.10
|tip You will accept this quest automatically.
step
kill Pinerock Prowler##94149+, Pinerock Stalker##99481+
|tip Skin the corpses.
collect 12 Shaggy Saber Hide##134130 |q 41234/1 |goto 40.65,50.10
|next "Legion_World_Quest_Emissaries"
step
label quest-46189
accept Shel'zuul##46189 |goto Highmountain/0 43.94,50.16
|tip You will accept this quest automatically.
step
kill Shel'zuul##117074 |q 46189/1 |goto Highmountain/0 43.94,50.16 |future
|tip Shel'zuul is elite. You may need a group to defeat him.
|next "Legion_World_Quest_Emissaries"
step
label quest-41692
accept Shipwreck Scavengers##41692 |goto Highmountain/0 44.47,9.74
|tip You will accept this quest automatically.
stickystart "Recover_Shipwrecked_Supplies"
stickystart "Slay_Swamprock_Marshstompers"
step
kill Mrrklr##98311 |q 41692/1 |goto 46.5,7.3
step
label "Recover_Shipwrecked_Supplies"
click Shiprecked Supplies
|tip They look like wooden crates on the ground around this area.
Recover #5# Shipwreck Supplies |q 41692/2 |goto 44.47,9.74
step
label "Slay_Swamprock_Marshstompers"
Kill Swamprock enemies around this area
Slay #10# Swamprock Marshstompers |q 41692/3 |goto 44.47,9.74
|next "Legion_World_Quest_Emissaries"
step
label quest-41242
Follow the path down |goto Highmountain/0 38.96,38.86 < 30 |only if walking
Follow the path |goto 41.48,35.82 < 30 |only if walking
accept Slab of Bacon##41242 |goto Highmountain/0 43.29,32.75
|tip You will accept this quest automatically.
step
kill Well-Fed Ironhorn Bull##103681
collect Thick Slab of Bacon##135511 |q 41242/1 |goto Highmountain/0 43.29,32.75 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41549
accept Slab of Bacon##41549 |goto Highmountain/0 42.00,49.36
|tip You will accept this quest automatically.
step
kill Well-Fed Ironhorn Bull##103681
collect Thick Slab of Bacon##135511 |q 41549/1 |goto Highmountain/0 42.00,49.36 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41550
Follow the path |goto Highmountain/0 58.47,64.35 < 25 |only if walking
Follow the path |goto 56.42,63.58 < 25 |only if walking
accept Slab of Bacon##41550 |goto 57.49,60.51
|tip You will accept this quest automatically.
step
kill Well-Fed Ironhorn Bull##103681
collect 1 Thick Slab of Bacon##135511 |q 41550/1 |goto 57.49,60.51 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41687
Follow the path down |goto Highmountain/0 38.96,38.80 < 30 |only if walking
Follow the path |goto 41.38,35.90 < 30 |only if walking
Follow the path |goto 42.41,32.86 < 30 |only if walking
Follow the path |goto 45.03,29.23 < 30 |only if walking
Follow the path |goto 43.98,27.00 < 30 |only if walking
Enter the cave |goto Highmountain/0 42.59,25.38
accept Snail Fight!##41687 |goto Highmountain/31 49.27,43.55
|tip You will accept this quest automatically.
step
Follow the path |goto Highmountain/31 30.95,58.45 < 20 |walk
Follow the path |goto 43.13,41.06 < 15 |walk
talk Odrogg##104553
Tell him "Let's do battle!"
Defeat Odrogg |q 41687/1 |goto 49.27,43.55
|next "Legion_World_Quest_Emissaries"
step
label quest-44892
Follow the path |goto Highmountain/0 40.99,11.30 < 30 |only if walking
Follow the path |goto 38.79,13.68 < 30 |only if walking
Follow the path |goto 37.24,15.49 < 30 |only if walking
Follow the path up |goto 36.66,17.08 < 20 |only if walking
accept Snowfeather Swarm!##44892 |goto Highmountain/0 36.89,17.59
|tip You will accept this quest automatically.
step
Slay the Snowfeather enemies around this area
Cull Snowfeather Falcosaurs |q 44892/1 |goto Highmountain/0 35.74,21.31
|next "Legion_World_Quest_Emissaries"
step
label quest-40920
Follow the path |goto Highmountain/0 36.71,65.96 < 30 |only if walking
Follow the path |goto 38.73,67.98 < 30 |only if walking
Follow the path |goto 39.22,69.27 < 30 |only if walking
Follow the path |goto 39.26,72.01 < 30 |only if walking
accept Stonebinder Bounty##40920 |goto Highmountain/5 22.28,28.18
|tip You will accept this quest automatically.
stickystart "Slay_Bitestone_Drogbar"
step
kill Stonebinder Gorgrogg##94248 |q 40920/2 |goto 72.34,53.35
step
Follow the path up |goto 47.92,48.01 < 15 |walk
Follow the path |goto 55.12,73.46 < 30 |walk
Follow the path |goto 86.79,56.16 < 30 |walk
kill Stonebinder Agrogg##94250 |q 40920/1 |goto 82.48,39.39
step
label "Slay_Bitestone_Drogbar"
Kill enemies around this area
Slay #8# Bitestone Drogbar |q 40920/3 |goto 62.78,49.41
|next "Legion_World_Quest_Emissaries"
step
label quest-41207
accept Supplies Needed: Leystone##41207 |goto Thunder Totem/0 38.07,46.01
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Supplies Needed: Leystone##41207 |goto 38.07,46.01
|next "Legion_World_Quest_Emissaries"
step
label quest-41237
accept Supplies Needed: Stonehide Leather##41237 |goto Thunder Totem/0 38.07,46.01
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Supplies Needed: Stonehide Leather##41237 |goto 38.07,46.01
|next "Legion_World_Quest_Emissaries"
step
label quest-46195
accept Swarming Skies##46195 |goto Highmountain/0 49.24,43.86
|tip You will accept this quest automatically.
step
clicknpc Great Eagle##119191
Rescue #3# Great Eagles |q 46195/1 |goto 49.24,43.86
clicknpc Skyhorn Interceptor##119186
Rescue #3# Skyhorn Interceptors |q 46195/2 |goto 49.24,43.86
kill Eredar Portal-Keeper##119199 |q 46195/3 |goto 48.49,43.38
|tip The Portal-Keeper is elite. You may need a group to defeat him.
|next "Legion_World_Quest_Emissaries"
step
label quest-41232
accept Thick Ironhorn Hide##41232 |goto Highmountain/0 42.00,47.96
|tip You will accept this quest automatically.
step
kill Pinerock Elderhorn##94151+
|tip Skin the corpses.
collect 12 Thick Ironhorn Hide##134129 |q 41232/1 |goto Highmountain/0 42.00,47.96
|next "Legion_World_Quest_Emissaries"
step
label quest-40896
Follow the path |goto Highmountain/0 29.88,40.88 < 30 |only if walking
Follow the path |goto 27.43,41.50 < 30 |only if walking
accept Threnody of Chieftains##40896 |goto Highmountain/0 25.25,42.50
|tip You will accept this quest automatically.
stickystart "Cleanse_Burial_Ground"
step
kill 3 Risen Chieftain##101832 |q 40896/2 |goto 25.25,42.50
|tip They are usually near crystals or structures.
step
label "Cleanse_Burial_Ground"
Kill enemies around this area
Cleanse the Burial Ground |q 40896/1 |goto 25.25,42.50
|next "Legion_World_Quest_Emissaries"
step
label quest-44823
accept Thunder Totem Cleanup Detail##44823 |goto Thunder Totem/0 44.81,38.69
|tip You will accept this quest automatically.
step
kill Bluewax Drumtaker##108145+
click Small Ceremonial Drum##250905
collect Small Ceremonial Drum##138197+ |n
Assist Thunder Totem |q 44823/1 |goto Thunder Totem/0 47.42,42.82
|next "Legion_World_Quest_Emissaries"
step
label quest-40282
Follow the path down |goto Highmountain/0 38.94,38.97 < 30 |only if walking
Follow the path down |goto 40.39,36.94 < 30 |only if walking
accept Tiny Poacher, Tiny Animals##40282 |goto Highmountain/0 41.91,35.98
|tip You will accept this quest automatically.
step
talk Grixis Tinypop##99150
Tell him: "_Let's do battle!_"
Defeat Grixis Tinypop |q 40282/1 |goto 41.91,35.98
|next "Legion_World_Quest_Emissaries"
step
label quest-40280
Follow the path |goto Highmountain/0 50.79,64.72
Cross the bridge |goto 48.99,66.96 < 20 |only if walking
Follow the path up |goto 48.06,68.03 < 30 |only if walking
accept Training with Bredda##40280 |goto Highmountain/0 47.73,68.92
|tip You will accept this quest automatically.
step
talk Bredda Tenderhide##99077
Tell her "Let's do battle!"
Defeat Bredda Tenderhide |q 40280/1 |goto Highmountain/0 47.72,69.03
|next "Legion_World_Quest_Emissaries"
step
label quest-46190
Follow the path |goto Highmountain/0 57.88,63.55 < 20 |only if walking
accept Ulgrom##46190 |goto 55.36,64.88
|tip You will accept this quest automatically.
step
kill Ulgrom##117967 |q 46190/1 |goto 55.36,64.88 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41011
accept Umbralshard Rituals##41011 |goto Highmountain/0 49.82,53.96
|tip You will accept this quest automatically.
step
Enter the cave |goto 50.05,53.72 < 15 |walk
kill Enraged Umbralshard##102468+
|tip Kill the enemies channeling on them to free them, so that you can kill them.
|tip You can find them all throughout the cave.
Stop #3# Umbralshard Rituals |q 41011/1 |goto 51.53,52.46
|next "Legion_World_Quest_Emissaries"
step
label quest-41428
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |only if walking
Follow the path |goto 49.57,34.75 < 30 |only if walking
Leave the cave |goto 48.15,33.91 < 30 |only if walking
accept Unstable Portal##41428 |goto Highmountain/0 47.85,29.46
|tip You will accept this quest automatically.
step
clicknpc Portal Stabilizer##115169
Destroy the Portal Stabilizer |q 41428/1 |count 1 |goto 47.14,29.25
step
Follow the path |goto 48.07,29.54 < 30 |only if walking
clicknpc Portal Stabilizer##115169
Destroy the Portal Stabilizer |q 41428/1 |count 2 |goto 49.19,29.27
step
Follow the path |goto 49.41,28.57 < 30 |only if walking
clicknpc Portal Stabilizer##115169
Destroy the Portal Stabilizer |q 41428/1 |count 3 |goto 49.90,25.28
step
Follow the path |goto 49.57,25.57 < 30 |only if walking
clicknpc Portal Stabilizer##115169
Destroy the Portal Stabilizer |q 41428/1 |count 4 |goto 48.09,25.00
step
Follow the path |goto 47.37,25.79 < 30 |only if walking
Follow the path up |goto 46.34,24.98 < 30 |only if walking
Cross the bridge |goto 47.16,24.96 < 30 |only if walking
click Unstable Legion Portal##247896
Disable the Unstable Legion Portal |q 41428/2 |goto 48.55,27.27
|next "Legion_World_Quest_Emissaries"
step
label quest-41665
accept Vantus Rune Work Order: Ursoc##41665 |goto Thunder Totem/0 38.06,46.04
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Ursoc>_
collect 1 Vantus Rune: Ursoc##128987 |goto 38.06,46.04
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Ransa Greyfeather##106902
turnin Vantus Rune Work Order: Ursoc##41665 |goto 38.06,46.04
|next "Legion_World_Quest_Emissaries"
step
label quest-41824
Follow the path up |goto Highmountain/0 47.84,52.86
accept WANTED: Arru##41824 |goto Highmountain/0 48.64,50.06
step
kill Arru##97220 |q 41824/1 |goto Highmountain/0 49.08,49.85 |future
|tip Inside the cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-44289
Follow the path up |goto Highmountain/0 47.84,52.86
accept WANTED: Arru##44289 |goto Highmountain/0 48.64,50.06
step
kill Arru##97220 |q 44289/1 |goto Highmountain/0 49.08,49.85 |future
|tip Inside the cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-41836
Follow the path |goto Highmountain/0 40.82,11.92 < 25 |only if walking
Follow the path |goto 38.19,14.79 < 25 |only if walking
accept WANTED: Bodash the Hoarder##41836 |goto 36.67,16.36
|tip You will accept this quest automatically.
step
kill Bodash the Hoarder##98299 |q 41836/1 |goto 36.67,16.36 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43616
Follow the path |goto Highmountain/0 40.82,11.92 < 25 |only if walking
Follow the path |goto 38.19,14.79 < 25 |only if walking
accept WANTED: Bodash the Hoarder##43616 |goto 36.67,16.36
|tip You will accept this quest automatically.
step
kill Bodash the Hoarder##98299 |q 43616/1 |goto 36.67,16.36 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41828
Follow the path |goto Highmountain/0 38.31,41.19 < 30 |only if walking
Follow the river |goto 37.31,44.24 < 30 |only if walking
Enter the cave |goto 37.76,45.70 < 15 |only if walking
accept WANTED: Bristlemaul##41828 |goto Highmountain/0 38.13,45.59
|tip You will accept this quest automatically.
step
kill Bristlemaul##97449 |q 41828/1 |goto 38.13,45.59 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44290
Follow the path |goto Highmountain/0 38.31,41.19 < 30 |only if walking
Follow the river |goto 37.31,44.24 < 30 |only if walking
Enter the cave |goto 37.76,45.70 < 15 |only if walking
accept WANTED: Bristlemaul##44290 |goto Highmountain/0 38.13,45.59
|tip You will accept this quest automatically.
step
kill Bristlemaul##97449 |q 44290/1 |goto 38.13,45.59 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41826
Follow the path |goto Highmountain/0 52.04,44.97 < 30 |only if walking
Follow the path |goto 50.68,41.76 < 30 |only if walking
Follow the path up |goto 49.39,39.70 < 30 |only if walking
accept WANTED: Crawshuk the Hungry##41826 |goto Highmountain/0 48.39,40.53
|tip You will accept this quest automatically.
step
kill Crawshuk the Hungry##97345 |q 41826/1 |goto Highmountain/0 48.39,40.53 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44291
Follow the path |goto Highmountain/0 52.04,44.97 < 30 |only if walking
Follow the path |goto 50.68,41.76 < 30 |only if walking
Follow the path up |goto 49.39,39.70 < 30 |only if walking
accept WANTED: Crawshuk the Hungry##44291 |goto Highmountain/0 48.37,40.18
|tip You will accept this quest automatically.
step
kill Crawshuk the Hungry##97345 |q 44291/1 |goto 48.37,40.18 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43455
Follow the path |goto Highmountain/0 52.90,45.77 < 30 |only if walking
Follow the path |goto 54.36,46.75 < 20 |only if walking
Enter the cave |goto 55.11,44.23 < 10 |walk
Follow the path |goto 54.59,42.79 < 20 |walk
accept WANTED: Devouring Darkness##43455 |goto Highmountain/0 54.42,41.19
|tip You will accept this quest automatically.
step
Follow the path up |goto 55.02,41.78 < 30 |walk
clicknpc Kobold Candles##103196
|tip Extinguish all of the candles to summon Devouring Darkness.
kill Devouring Darkness##100495 |q 43455/1 |goto 54.42,41.19 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43617
Follow the path |goto Highmountain/0 52.90,45.77 < 30 |only if walking
Follow the path |goto 54.36,46.75 < 20 |only if walking
Enter the cave |goto 55.11,44.23 < 10 |walk
Follow the path |goto 54.59,42.79 < 20 |walk
accept WANTED: Devouring Darkness##43617 |goto Highmountain/0 54.42,41.19
|tip You will accept this quest automatically.
step
Follow the path up |goto 55.02,41.78 < 30 |walk
clicknpc Kobold Candles##103196
|tip Extinguish all of the candles to summon Devouring Darkness.
kill Devouring Darkness##100495 |q 43617/1 |goto 54.42,41.19 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41819
Cross the bridge |goto Highmountain/0 58.56,64.46 < 30 |only if walking
Follow the path up |goto 56.85,63.63 < 30 |only if walking
accept WANTED: Gurbog da Basher##41819 |goto Highmountain/0 56.68,61.60
|tip You will accept this quest automatically.
step
kill Gurbog da Basher##96590 |q 41819/1 |goto 56.68,61.60 |future
|tip He walks around this area around the pond, so you may need to search for him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43618
Cross the bridge |goto Highmountain/0 58.56,64.46 < 30 |only if walking
Follow the path up |goto 56.85,63.63 < 30 |only if walking
accept WANTED: Gurbog da Basher##43618 |goto Highmountain/0 56.68,61.60
|tip You will accept this quest automatically.
step
kill Gurbog da Basher##96590 |q 43618/1 |goto 56.68,61.60 |future
|tip He walks around this area around the pond, so you may need to search for him.
|next "Legion_World_Quest_Emissaries"
step
label quest-41818
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
accept WANTED: Majestic Elderhorn##41818 |goto Highmountain/0 47.40,32.57
|tip You will accept this quest automatically.
step
kill Majestic Elderhorn##96410 |q 41818/1 |goto Highmountain/0 47.40,32.57 |future
|tip It's easiest to wait at this spot for the Majestic Elderhorn.
|next "Legion_World_Quest_Emissaries"
step
label quest-44292
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
accept WANTED: Majestic Elderhorn##44292 |goto Highmountain/0 47.04,33.01
|tip You will accept this quest automatically.
step
kill Majestic Elderhorn##96410 |q 44292/1 |goto Highmountain/0 47.04,33.01 |future
|tip It's easiest to wait at this spot for the Majestic Elderhorn.
|next "Legion_World_Quest_Emissaries"
step
label quest-41844
accept WANTED: Sekhan##41844 |goto Thunder Totem/0 36.34,6.52
|tip You will accept this quest automatically.
step
kill Sekhan##101077 |q 41844/1 |goto 36.34,6.52 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41986
accept WANTED: Sekhan##41986 |goto Thunder Totem/0 36.34,6.52
|tip You will accept this quest automatically.
step
kill Sekhan##101077 |q 41986/1 |goto 36.34,6.52 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44294
accept WANTED: Sekhan##44294 |goto Thunder Totem/0 36.34,6.52
|tip You will accept this quest automatically.
step
kill Sekhan##101077 |q 44294/1 |goto 36.34,6.52 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41821
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
Follow the path |goto 47.05,31.47 < 30 |only if walking
Follow the path |goto 48.41,29.42 < 30 |only if walking
Follow the path down |goto 50.23,26.84 < 30 |only if walking
accept WANTED: Shara Felbreath##41821 |goto Highmountain/0 50.73,26.41
|tip You will accept this quest automatically.
step
kill Shara Felbreath##97093 |q 41821/1 |goto Highmountain/0 50.97,25.62 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43619
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
Follow the path |goto 47.05,31.47 < 30 |only if walking
Follow the path |goto 48.41,29.42 < 30 |only if walking
Follow the path down |goto 50.23,26.84 < 30 |only if walking
accept WANTED: Shara Felbreath##43619 |goto Highmountain/0 51.05,25.66
|tip You will accept this quest automatically.
step
kill Shara Felbreath##97093 |q 43619/1 |goto 51.05,25.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41838
Follow the path |goto Highmountain/0 39.30,38.08 < 30 |only if walking
Follow the path down |goto 39.47,35.49 < 30 |only if walking
Follow the path |goto 40.68,34.40 < 30 |only if walking
accept Wanted: Slumber##41838 |goto Highmountain/0 41.50,31.76
|tip You will accept this quest automatically.
step
kill Slumber##98890 |q 41838/1 |goto 41.50,31.76 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44293
Follow the path |goto Highmountain/0 39.30,38.08 < 30 |only if walking
Follow the path down |goto 39.47,35.49 < 30 |only if walking
Follow the path |goto 40.68,34.40 < 30 |only if walking
accept Wanted: Slumber##44293 |goto Highmountain/0 41.50,31.76
|tip You will accept this quest automatically.
step
kill Slumber##98890 |q 44293/1 |goto 41.50,31.76 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41227
Cross the bridge |goto Highmountain/0 58.55,64.46 < 30 |only if walking
Follow the path up |goto 57.65,63.32 < 30 |only if walking
Follow the path |goto 56.47,63.24 < 30 |only if walking
Follow the path up |goto 57.79,61.68 < 30 |only if walking
Follow the path up |goto 58.82,61.38 < 30 |only if walking
accept Warden Tower Assault: Cordana's Apex##41227 |goto Highmountain/0 61.28,56.77
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Cordanas_Apex"
step
Slay the Gilneas Brigade Captain |q 41227/2 |goto 61.35,56.62
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Cordanas_Apex"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 41227/1 |goto 60.63,57.49
|next "Legion_World_Quest_Emissaries"
step
label quest-41257
Cross the bridge |goto Highmountain/0 58.55,64.46 < 30 |only if walking
Follow the path up |goto 57.65,63.32 < 30 |only if walking
Follow the path |goto 56.47,63.24 < 30 |only if walking
Follow the path up |goto 57.79,61.68 < 30 |only if walking
Follow the path up |goto 58.82,61.38 < 30 |only if walking
accept Warden Tower Assault: Cordana's Apex##41257 |goto Highmountain/0 61.28,56.77
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Cordanas_Apex"
step
Slay the Queensguard Captain |q 41257/2 |goto 61.35,56.62
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Cordanas_Apex"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 41257/1 |goto 60.63,57.49
|next "Legion_World_Quest_Emissaries"
step
label quest-41420
Cross the bridge |goto Highmountain/0 35.91,65.13 < 30 |only if walking
Follow the path |goto 35.51,63.42 < 30 |only if walking
Follow the path |goto 33.08,61.58 < 30 |only if walking
Follow the path down |goto 30.63,59.09 < 30 |only if walking
Follow the path down |goto 29.55,56.76 < 30 |only if walking
Follow the path down |goto 26.81,57.94 < 30 |only if walking
accept Warden Tower Assault: Nightwatcher's Perch##41420 |goto Highmountain/0 25.47,56.51
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Nightwatchers_Perch"
step
Slay the Gilneas Brigade Captain |q 41420/2 |goto 24.18,56.58
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Nightwatchers_Perch"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 41420/1 |goto 25.47,56.51
|next "Legion_World_Quest_Emissaries"
step
label quest-41421
Cross the bridge |goto Highmountain/0 35.91,65.13 < 30 |only if walking
Follow the path |goto 35.51,63.42 < 30 |only if walking
Follow the path |goto 33.08,61.58 < 30 |only if walking
Follow the path down |goto 30.63,59.09 < 30 |only if walking
Follow the path down |goto 29.55,56.76 < 30 |only if walking
Follow the path down |goto 26.81,57.94 < 30 |only if walking
accept Warden Tower Assault: Nightwatcher's Perch##41421 |goto Highmountain/0 25.47,56.51
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Nightwatchers_Perch"
step
Slay the Queensguard Captain |q 41421/2 |goto 24.18,56.58
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Nightwatchers_Perch"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 41421/1 |goto 25.47,56.51
|next "Legion_World_Quest_Emissaries"
step
label quest-41205
accept Warm Leystone Deposits##41205 |goto Highmountain/0 44.33,72.41
|tip You will accept this quest automatically.
step
Enter the cave |goto Highmountain/29 22.69,43.45 < 15 |walk
click Warm Leystone Deposit##247905
|tip They look like large light purple mineral deposits inside the cave.
collect 10 Warm Leystone Ore##141237 |q 41205/1 |goto 48.73,37.18
|next "Legion_World_Quest_Emissaries"
step
label quest-41145
Drop down |goto Highmountain/0 36.63,64.69 < 30 |only if walking
Follow the path |goto 38.02,62.60 < 30 |only if walking
accept Water of Life##41145 |goto Highmountain/20 51.82,44.38
|tip You will accept this quest automatically.
stickystart "Destroy_Drogbar_Idols"
stickystart "Violent_Crageaters"
step
kill 3 Drogbar Manathirster##95866 |q 41145/1 |goto Highmountain/21 51.18,55.73
step
label "Destroy_Drogbar_Idols"
click Drogbar Idols##247106
|tip They look like stone objects of various shapes on the ground inside the cave.
Destroy #6# Drogbar Idols |q 41145/3 |goto Highmountain/20 51.82,44.38
step
label "Violent_Crageaters"
kill 6 Violent Crageater##95916 |q 41145/2 |goto 51.82,44.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41321
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter The Deep Roads |goto Highmountain/0 53.50,76.13 < 15
accept Weapons of Deathwing##41321 |goto 51.77,74.30
|tip You will accept this quest automatically.
stickystart "Impure"
step
Drop down |goto Highmountain/0 52.23,73.14 < 20 |walk
Follow the path |goto 53.03,74.61 < 15 |walk
kill Uzgarogg the Seer##104244 |q 41321/2 |goto 52.92,75.60
step
Follow the path |goto Highmountain/0 52.24,75.07 < 20 |walk
Cross the bridge |goto 51.28,76.05 < 10 |walk
Follow the path |goto 51.26,78.89 < 20 |only if walking
kill Gazarogg the Stonespeaker##104248 |q 41321/3 |goto 50.50,80.02
step
label "Impure"
click Elementium Slats##247695
kill Twilight Shardkeeper##103876+, Bound Elemental##104243+, Twilight Orelifter##103886+, Greystone Trencher##101645+
collect Impure Elementium Ore##134837 |q 41321/1 |goto 51.22,79.32
|next "Legion_World_Quest_Emissaries"
step
label quest-41414
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter The Deep Roads |goto Highmountain/0 53.50,76.13 < 15
accept Weapons of Deathwing##41414 |goto 51.77,74.30
|tip You will accept this quest automatically.
stickystart "Impure"
step
Drop down |goto Highmountain/0 52.23,73.14 < 20 |walk
Follow the path |goto 53.03,74.61 < 15 |walk
kill Uzgarogg the Seer##104244 |q 41414/2 |goto 52.92,75.60
step
Follow the path |goto Highmountain/0 52.24,75.07 < 20 |walk
Cross the bridge |goto 51.28,76.05 < 10 |walk
Follow the path |goto 51.26,78.89 < 20 |only if walking
kill Gazarogg the Stonespeaker##104248 |q 41414/3 |goto 50.50,80.02
step
label "Impure"
click Elementium Slats##247695
kill Twilight Shardkeeper##103876+, Bound Elemental##104243+, Twilight Orelifter##103886+, Greystone Trencher##101645+
collect Impure Elementium Ore##134837 |q 41414/1 |goto 51.22,79.32
|next "Legion_World_Quest_Emissaries"
step
label quest-41525
Follow the path |goto Highmountain/0 51.99,44.69 < 25 |only if walking
Follow the path |goto 50.58,43.61 < 25 |only if walking
Follow the path |goto 48.33,45.22 < 10 |only if walking
accept Wispy Foxflower##41525 |goto 46.31,46.10
|tip You will accept this quest automatically.
step
click Wispy Foxflower##248017
collect 10 Wispy Foxflower##140987 |q 41525/1 |goto 46.31,46.10
|next "Legion_World_Quest_Emissaries"
step
label quest-41252
accept Wild Northern Barracuda##41252 |goto Highmountain/0 40.53,10.69
|tip You will accept this quest automatically.
step
talk Nacea Shorewalker##103727 |goto 40.52,10.69
Ask her: _"Can you bless me with the gift of water walking?"_
Fish from Wild Northern Barracuda Schools |cast Fishing##7620
collect 10 Wild Northern Barracuda##134547 |q 41252/1 |goto 39.22,10.22
|next "Legion_World_Quest_Emissaries"
step
label quest-41766
Follow the path |goto Highmountain/0 53.57,46.91 < 30 |only if walking
Cross the bridge |goto 54.46,48.21 < 10 |only if walking
Cross the bridge |goto 55.13,50.03 < 10 |only if walking
Follow the path |goto 55.67,51.15 < 20 |only if walking
accept Wildlife Protection Force##41766 |goto Highmountain/0 56.40,53.06
|tip You will accept this quest automatically.
step
clicknpc Hungry Icefang##104782
Defeat the Hungry Icefang |q 41766/1 |goto Highmountain/0 56.30,53.18
|next "Legion_World_Quest_Emissaries"
step
label quest-46194
Follow the path |goto Highmountain/0 57.88,63.55 < 20 |only if walking
Follow the path |goto 56.41,63.54 < 25 |only if walking
Follow the path |goto 56.34,59.85 < 30 |only if walking
accept Wolves of the Legion##46194 |goto 56.74,54.79
|tip You will accept this quest automatically.
step
kill Felcorrupted Alpha##119189
Corrupting Rituals stopped |q 46194/1 |goto 56.74,54.79
|tip Disrupt the rituals by killing the channelers.
clicknpc Captured Icefang Pup##119211
Icefang Pups rescued |q 46194/2 |goto 56.74,54.79
|next "Legion_World_Quest_Emissaries"
step
label quest-41677
accept Work Order: Auto-Hammer##41677 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Auto-Hammer>_
collect 1 Auto-Hammer##132514
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Ransa Greyfeather##106902
turnin Work Order: Auto-Hammer##41677 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41659
accept Work Order: Avalanche Elixirs##41659 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Avalanche Elixirs>_
collect 5 Avalanche Elixirs##127839
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Ransa Greyfeather##106902
turnin Work Order: Avalanche Elixirs##41659 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41641
accept Work Order: Battlebound Armbands##41641 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Battlebound Armbands>_
collect 1 Battlebound Armbands##128899
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Ransa Greyfeather##106902
turnin Work Order: Battlebound Armbands##41641 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41223
accept Work Order: Foxflower##41223 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Foxflower##124103
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Foxflower##41223 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41240
accept Work Order: Highmountain Salmon##41240 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Highmountain Salmon##124109
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Highmountain Salmon##41240 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41206
accept Work Order: Leystone##41206 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Leystone##41206 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41635
accept Work Order: Leystone Boots##41635 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Boots>_
collect 1 Leystone Boots##123892
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Ransa Greyfeather##106902
turnin Work Order: Leystone Boots##41635 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41647
accept Work Order: Silkweave Robe##41647 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Robe>_
collect 1 Silkweave Robe##126987
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Ransa Greyfeather##106902
turnin Work Order: Silkweave Robe##41647 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41653
accept Work Order: Skystone Pendant##41653 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Skystone Pendant>_
collect 1 Skystone Pendant##130227
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Ransa Greyfeather##106902
turnin Work Order: Skystone Pendant##41653 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41235
accept Work Order: Stonehide Leather##41235 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Stonehide Leather##41235 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41671
accept Work Order: Word of Strength##41671 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Strength>_
collect 1 Enchant Cloak - Word of Strength##128545
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Ransa Greyfeather##106902
turnin Work Order: Word of Strength##41671 |goto 38.08,46.05
|next "Legion_World_Quest_Emissaries"
step
label quest-46192
accept Zar'vok##46192 |goto Highmountain/0 58.29,64.10
|tip You will accept this quest automatically.
step
kill Zar'vok##117993 |q 46192/1 |goto 58.29,64.10 |future
|tip Zar'vok is elite. You may need a group to defeat him.
|next "Legion_World_Quest_Emissaries"
step
label quest-46279
Follow the path |goto Highmountain/0 57.89,63.56 < 15 |only if walking
Follow the path up |goto 55.74,64.39 < 20 |only if walking
Follow the path |goto 54.60,66.72 < 30
accept Zargrom##46279 |goto Highmountain/0 55.53,69.43
|tip You will accept this quest automatically.
step
kill Zargrom##117047 |q 46279/1 |goto 55.53,69.43 |future
|tip Zargrom is elite. You may need a group to defeat him.
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Krokuun World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=830,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-48285
Follow the path |goto Krokuun/0 36.62,65.86 < 30 |only if walking
Follow the path |goto 32.51,67.89 < 30 |only if walking
accept Aerial Superiority##48285 |goto Krokuun/0 32.08,72.46
|tip You will accept this quest automatically.
step
clicknpc Lightforged Battery##122794
Kill #30# Frenzied Plaguewings |q 48285/1 |goto Krokuun/0 32.08,72.46
|tip Shoot them out of the sky.
|next "Legion_World_Quest_Emissaries"
step
label quest-49043
Follow the path down |goto Krokuun/0 42.14,61.04 < 20 |only if walking
Follow the path up |goto 42.83,54.98 < 20 |only if walking
Follow the path up |goto 43.35,53.12 < 20 |only if walking
accept Baneglow##49043 |goto Krokuun/0 42.97,51.95
|tip You will accept this quest automatically.
step
clicknpc Baneglow##128009
Defeat Baneglow |q 49043/1 |goto 42.97,51.95
|next "Legion_World_Quest_Emissaries"
step
label quest-47724
Follow the path |goto Krokuun/0 58.93,68.36 < 15 |only if walking
Follow the path |goto 60.15,70.05 < 15 |only if walking
accept Besieged##47724 |goto 59.35,71.91
|tip You will accept this quest automatically.
step
Follow the path |goto 58.72,73.24 < 15 |only if walking
clicknpc Devastator Anchor##123706
|tip There are three in total.
Destroy the eastern Devastator |q 47724/3 |goto 59.14,74.36
step
clicknpc Devastator Anchor##123706
|tip There are three in total.
Destroy the western Devastator |q 47724/2 |goto 57.14,74.17
step
Follow the path |goto 57.15,76.49 < 15 |only if walking
clicknpc Devastator Anchor##123706
|tip There are three in total.
Destroy the southern Devastator |q 47724/1 |goto 57.89,77.78
|next "Legion_World_Quest_Emissaries"
step
label quest-47496
Follow the path |goto Krokuun/0 61.69,46.66 < 15 |only if walking
Follow the path down |goto 61.08,44.10 < 20 |only if walking
Follow the path down |goto 58.61,40.00 < 20 |only if walking
Follow the path down |goto 59.34,33.08 < 20 |only if walking
Follow the path up |goto 61.57,29.48 < 20 |only if walking
accept Bunker Buster##47496 |goto 63.07,27.20
|tip You will accept this quest automatically.
stickystart "Quartermaster"
stickystart "Legion Garrison"
step
clicknpc Vindicaar Target##123964
Mark the first Heartwell |q 47496/1 |count 1 |goto Krokuun/0 64.02,24.54
step
clicknpc Vindicaar Target##123964
Mark the second Heartwell |q 47496/1 |count 2 |goto Krokuun/0 64.95,26.57
step
clicknpc Vindicaar Target##123964
Mark the last Heartwell |q 47496/1 |count 3 |goto Krokuun/0 66.45,25.75
step
label "Quartermaster"
kill Quartermistress Kl'azz##124015 |q 47496/2 |goto 64.51,23.19
step
label "Legion Garrison"
kill Shademistress##122041+, Slavering Devourer##121297+, Legion Cannoneer##122039+, Highguard Captain##123658+
Slay #8# Legion Garrisons |q 47496/3 |goto Krokuun/0 64.77,25.34
|next "Legion_World_Quest_Emissaries"
step
label quest-47624
Follow the path |goto Krokuun/0 59.55,68.03 < 20 |only if walking
Follow the path |goto Krokuun/0 61.39,62.28 < 20 |only if walking
Follow the path |goto Krokuun/0 65.77,63.52 < 20 |only if walking
accept Bury It##47624 |goto Krokuun/0 68.67,67.91
|tip You will accept this quest automatically.
stickystart "Bones"
step
Follow the path |goto Krokuun/0 67.33,63.11 < 25 |only if walking
Follow the path |goto Krokuun/0 69.35,68.23 < 25 |only if walking
Follow the path |goto Krokuun/0 71.49,69.29 < 25 |only if walking
Enter the cave |goto Krokuun/0 73.44,66.65 < 15 |only if walking
kill Zul'cur the Ravenous##124452 |q 47624/2 |goto Krokuun/0 74.64,65.23
step
label "Bones"
kill Ur'zul Devourer##122815+
click Eredar Bones##271114
collect 12 Chewed Eredar Bones##151061 |q 47624/1 |goto Krokuun/0 68.67,67.91
|next "Legion_World_Quest_Emissaries"
step
label quest-48511
Follow the path |goto Krokuun/0 42.86,61.11 < 30 |only if walking
accept Commander Endaxis##48511 |goto Krokuun/0 45.30,58.81
|tip You will accept this quest automatically.
step
Follow the path |goto 43.81,59.24 < 15 |only if walking
Follow the path |goto 44.54,58.59 < 15 |only if walking
kill Commander Endaxis##124775 |q 48511/1 |goto Krokuun/0 45.30,58.81 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48509
Follow the path |goto Krokuun/0 37.61,67.29 < 20 |only if walking
Follow the path |goto 35.93,70.11 < 20 |only if walking
Follow the path |goto 34.88,74.82 < 20 |only if walking
accept Commander Sathrenael##48509 |goto Krokuun/0 33.21,76.15
|tip You will accept this quest automatically.
step
kill Commander Sathrenael##122912 |q 48509/1 |goto Krokuun/0 33.21,76.15 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48510
Follow the path |goto Krokuun/0 42.13,60.90 < 15 |only if walking
Follow the path |goto 42.36,57.22 < 15 |only if walking
Follow the path up |goto 40.49,56.70 < 10 |only if walking
Follow the path |goto 39.23,59.52 < 10 |only if walking
accept Commander Vecaya##48510 |goto Krokuun/0 39.12,59.54
|tip You will accept this quest automatically.
step
Follow the path |goto 39.12,59.54 < 10 |only if walking
kill Commander Vecaya##122911 |q 48510/1 |goto Krokuun/0 38.38,59.73 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48286
accept Crystal Methods##48286 |goto Krokuun/0 37.17,67.60
|tip You will accept this quest automatically.
step
click Argunite Fragments##273839
kill Shadowbound Defiler##123110+, Seething Harbinger##123109+
collect 40 Argunite Fragments##129749 |q 48286/1 |goto 37.17,67.60
|next "Legion_World_Quest_Emissaries"
step
label quest-49045
Follow the path down |goto Krokuun/0 37.03,62.07 < 30 |only if walking
Follow the path up |goto 33.91,61.72 < 20 |only if walking
Follow the path up |goto 31.33,60.94 < 20 |only if walking
Enter the cave |goto 30.08,58.51 < 7 |walk
accept Deathscreech##49045 |goto Krokuun/0 29.56,57.93
|tip You will accept this quest automatically.
step
clicknpc Deathscreech##128011
Defeat Deathscreech |q 49045/1 |goto 29.56,57.93
|next "Legion_World_Quest_Emissaries"
step
label quest-47712
Follow the path |goto Krokuun/0 41.13,70.63 < 30 |only if walking
accept The Devastator##47712 |goto Krokuun/0 44.48,77.47
|tip You will accept this quest automatically.
step
click Fel Energy Shard##271689
kill Mo'arg Pit Boss##124687+, Legion Laborer##123565+
collect 12 Devastator Energy Cell##151188 |q 47712/1 |goto Krokuun/0 44.48,77.47
step
clicknpc Fel Devastator##123467
Activate the Fel Devastator |q 47712/2 |goto Krokuun/0 43.74,74.97
step
Face the cannon towards Kil'jaeden's ship |q 47712/3 |goto Krokuun/0 43.74,74.97
|tip Turn it all the way to the left.
step
Fire the Fel Devastator |q 47712/4 |goto Krokuun/0 43.74,74.97
|tip Hit the "1" key.
|next "Legion_World_Quest_Emissaries"
step
label quest-47720
Follow the path |goto Krokuun/0 59.30,68.65 < 20 |only if walking
Follow the path |goto 60.15,70.11 < 20 |only if walking
accept Eternal Vengeance##47720 |goto Krokuun/0 57.87,74.26
|tip You will accept this quest automatically.
step
Kill demons around this area
Kill #12# demons |q 47720/1 |goto Krokuun/0 57.87,74.26
|next "Legion_World_Quest_Emissaries"
step
label quest-49042
Follow the path |goto Krokuun/0 42.15,61.96 < 20 |only if walking
Follow the path |goto 44.24,65.41 < 15 |only if walking
Cross the bridge |goto 46.72,67.04 < 15 |only if walking
Follow the path |goto 48.54,66.79 < 10 |only if walking
Cross the rocks |goto 49.85,63.96 < 7 |only if walking
Follow the path |goto 50.25,63.07 < 10 |only if walking
accept Foulclaw##49042 |goto 50.72,63.11
|tip You will accept this quest automatically.
step
clicknpc Foulclaw##128008
Defeat Foulclaw |q 49042/1 |goto 51.55,63.74
|next "Legion_World_Quest_Emissaries"
step
label quest-49046
accept Gnasher##49046 |goto Krokuun/0 39.57,66.48
|tip You will accept this quest automatically.
step
clicknpc Gnasher##128012
Defeat Gnasher |q 49046/1 |goto 39.57,66.48
|next "Legion_World_Quest_Emissaries"
step
label quest-48287
accept Harvesters of Sorrow##48287 |goto Krokuun/0 40.31,63.50
|tip You will accept this quest automatically.
step
Follow the path |goto 39.69,64.75 < 10 |only if walking
Follow the path |goto 38.74,66.09 < 15 |only if walking
Follow the path down |goto 37.86,65.04 < 15 |only if walking
Follow the path |goto 37.28,65.33 < 10 |only if walking
kill Soul Harvester##126785
Destroy the Northern Soul Harvester |q 48287/3 |goto 36.59,64.88
step
Go up the hill |goto 37.85,67.51 < 15 |only if walking
Follow the path |goto 37.69,69.51 < 15 |only if walking
kill Soul Harvester##126785
Destroy the Eastern Soul Harvester |q 48287/2 |goto 38.88,69.88
step
Follow the path |goto 37.99,71.01 < 20 |only if walking
Follow the path down |goto 36.91,70.91 < 15 |only if walking
Follow the path down |goto 36.00,70.37 < 15 |only if walking
kill Soul Harvester##126785
Destroy the Southern Soul Harvester |q 48287/1 |goto 33.48,71.62
|next "Legion_World_Quest_Emissaries"
step
label quest-48592
accept Holding the Spire##48592 |goto Krokuun/0 60.87,47.43
|tip You will accept this quest automatically.
step
clicknpc Lightforged Warframe##124988
Take control of the Lightforged Warframe |q 48592/1 |goto Krokuun/0 60.71,47.47
stickystart "Demons"
step
clicknpc Nath'raxxan Rift##128754
Close the first Nath'raxxan Rift |q 48592/3 |goto 52.91,25.81 |count 1
step
clicknpc Nath'raxxan Rift##128754
Close the second Nath'raxxan Rift |q 48592/3 |goto 51.89,25.89 |count 2
step
clicknpc Nath'raxxan Rift##128754
Close the third Nath'raxxan Rift |q 48592/3 |goto 53.20,19.92 |count 3
step
label "Demons"
kill Abyssal Annihilator##125850+, Nath'raxxan Felguard##125149+, Nath'raxxan Highguard##125338+
Kill #60# Reinforcements |q 48592/2 |goto 52.65,21.02
|next "Legion_World_Quest_Emissaries"
step
label quest-48282
Follow the path |goto Krokuun/0 41.08,64.78 < 15 |only if walking
Follow the path |goto 40.46,66.96 < 15 |only if walking
accept Imp Mother Laglath##48282 |goto Krokuun/0 41.26,68.12
|tip You will accept this quest automatically.
step
kill Imp Mother Laglath##125820 |q 48282/1 |goto Krokuun/0 42.05,70.09 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-47507
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
accept Khazaduum##47507 |goto 38.91,39.43
|tip You will accept this quest automatically.
step
kill Khazaduum##125824 |q 47507/1 |goto Krokuun/7 38.95,40.23 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-47551
Follow the path |goto Krokuun/0 58.83,68.34 < 10 |only if walking
Follow the path |goto 59.78,67.57 < 10 |only if walking
Follow the path |goto 59.67,65.22 < 10 |only if walking
Follow the path |goto 59.63,62.38 < 20 |only if walking
Follow the path |goto 57.68,61.30 < 20 |only if walking
Follow the path |goto 55.07,62.02 < 20 |only if walking
accept Lessons of Fire and Pain##47551 |goto 53.89,56.81
|tip You will accept this quest automatically.
stickystart "Slay_Felbound_Scholar"
step
clicknpc Tome of Torment##122937
Destroy #5# Tomes of Torment |q 47551/2 |goto 53.89,56.81
|tip They look like little books scattered around this area.
step
label "Slay_Felbound_Scholar"
kill 3 Felbound Scholar##122942+ |q 47551/1 |goto 53.89,56.81
|next "Legion_World_Quest_Emissaries"
step
label quest-47707
Follow the path |goto Krokuun/0 40.96,69.94 < 20 |only if walking
accept Melting Down##47707 |goto Krokuun/0 44.09,78.80
|tip You will accept this quest automatically.
step
click Leaking Fel Spreader##272313
kill Caustic Overflow##123513+, Fel-Lusted Wyrmtongue##124959+ Fel Secretion##123509+
Clear the fel contamination |q 47707/1 |goto Krokuun/0 44.09,78.80
|next "Legion_World_Quest_Emissaries"
step
label quest-48502
Follow the path |goto Krokuun/0 61.70,46.66 < 15 |only if walking
Follow the path |goto 62.56,45.12 < 15 |only if walking
Follow the path up |goto 63.95,42.45 < 20 |only if walking
Follow the path |goto 65.21,38.26 < 20 |only if walking
Follow the path |goto 68.47,36.21 < 20 |only if walking
accept Naroua, King of the Forest##48502 |goto Krokuun/0 71.09,32.75
|tip You will accept this quest automatically.
step
kill Naroua##126419 |q 48502/1 |goto Krokuun/0 71.09,32.75 |future
|tip Naroua gains a stacking buff that increases damage by 10% per application.
|tip Without sufficient DPS, you will die.
|next "Legion_World_Quest_Emissaries"
step
label quest-48284
accept Reap the Fields##48284 |goto Krokuun/0 39.98,63.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #30# Attackers |q 48284/1 |goto Krokuun/0 35.30,68.39
|next "Legion_World_Quest_Emissaries"
step
label quest-49044
Follow the path |goto Krokuun/0 61.69,46.67 < 15 |only if walking
Follow the path down |goto 60.86,43.69 < 15 |only if walking
Follow the path down |goto 58.58,40.25 < 15 |only if walking
Follow the path down |goto 59.07,38.34 < 15 |only if walking
Follow the path |goto 59.36,33.88 < 20 |only if walking
accept Retch##49044 |goto Krokuun/0 58.34,30.16
|tip You will accept this quest automatically.
step
clicknpc Retch##128010
Defeat Retch |q 49044/1 |goto Krokuun/0 58.31,29.82
|next "Legion_World_Quest_Emissaries"
step
label quest-47625
Follow the path |goto Krokuun/0 58.83,68.39 < 15 |only if walking
Follow the path |goto 59.58,67.94 < 15 |only if walking
Follow the path |goto 59.89,66.75 < 15 |only if walking
Follow the path |goto 59.67,64.75 < 15 |only if walking
Follow the path |goto 61.37,62.26 < 15 |only if walking
accept The Ritual We Share##47625 |goto 61.60,62.20
|tip You will accept this quest automatically.
stickystart "Ritual_We_Share"
step
Go down the stairs |goto Krokuun/0 63.17,62.11 < 15 |only if walking
Follow the path |goto 64.59,63.54 < 20 |only if walking
Follow the path |goto 67.56,63.04 < 15 |only if walking
Follow the path down |goto 68.49,64.69 < 15 |only if walking
Follow the path |goto 70.62,66.90 < 15 |only if walking
Go up the stairs |goto 71.28,63.76 < 15 |only if walking
Follow the path |goto 69.17,60.35 < 15 |only if walking
kill Lady Shahrazad##122834 |q 47625/2 |goto 67.67,59.53
step
label "Ritual_We_Share"
Kill Eredar enemies around this area
Kill #8# Eredar ritualists |q 47625/1 |goto 69.96,62.16
|next "Legion_World_Quest_Emissaries"
step
label quest-47646
Follow the path |goto Krokuun/0 58.88,68.34 < 15 |only if walking
Follow the path |goto 59.59,67.91 < 15 |only if walking
Follow the path |goto 59.72,65.55 < 15 |only if walking
Follow the path |goto 61.32,62.31 < 15 |only if walking
accept Rope Around##47646 |goto Krokuun/0 61.95,62.16
|tip You will accept this quest automatically.
stickystart "panthera"
step
Go down the stairs |goto Krokuun/0 63.10,62.10 < 15 |only if walking
Follow the path |goto 64.48,63.32 < 15 |only if walking
Follow the path |goto 65.85,63.66 < 15 |only if walking
clicknpc Wild Cragscaler##123089
Wrangle 3 Wild Cragscalers |havebuff 3 Round Up##1032613 |goto 68.70,67.65
step
label "panthera"
kill Duskcloak Panthara##124303+, Young Duskcloak##124486+
Kill #10# Pathera |q 47646/1 |goto Krokuun/0 68.70,67.65
step
Follow the path |goto 66.93,66.34 < 15 |only if walking
Follow the path |goto 66.07,63.88 < 15 |only if walking
Follow the path |goto 64.28,62.87 < 15 |only if walking
Return the Wild Cragscalers to the Pen |q 47646/2 |goto 64.44,62.02
|next "Legion_World_Quest_Emissaries"
step
label quest-49041
Follow the path |goto Krokuun/0 58.83,68.39 < 15 |only if walking
Follow the path |goto 59.62,67.92 < 15 |only if walking
Follow the path |goto 59.84,66.42 < 15 |only if walking
Follow the path |goto 59.66,64.56 < 15 |only if walking
Follow the path |goto 61.37,62.29 < 15 |only if walking |goto 61.37,62.29
Go down the stairs |goto 63.14,62.17 < 15 |only if walking
Follow the path |goto 65.84,63.54 < 20 |only if walking
Follow the path |goto 66.72,65.21 < 15 |only if walking
Follow the path |goto 66.92,68.66 < 20 |only if walking
Follow the path up |goto 66.18,70.93 < 15 |only if walking
accept Ruinhoof##49041 |goto Krokuun/0 66.66,72.52
|tip You will accept this quest automatically.
step
clicknpc Ruinhoof##128007
Defeat Ruinhoof |q 49041/1 |goto Krokuun/0 66.72,72.62
|next "Legion_World_Quest_Emissaries"
step
label quest-47542
Follow the path |goto Krokuun/0 57.92,68.12 < 20 |only if walking
Follow the path |goto Krokuun/0 59.25,68.51 < 15 |only if walking
Follow the path |goto Krokuun/0 60.03,70.71 < 15 |only if walking
Follow the path |goto Krokuun/0 58.52,73.71 < 20 |only if walking
accept Siegemaster Voraan##47542 |goto Krokuun/0 58.30,75.89
|tip You will accept this quest automatically.
step
kill Siegemaster Voraan##120393 |q 47542/1 |goto Krokuun/0 58.30,75.89 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48512
Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
Follow the path down |goto 60.95,43.81 < 15 |only if walking
Follow the path down |goto 58.60,40.18 < 15 |only if walking
Follow the path down |goto 59.01,37.83 < 15 |only if walking
Follow the path |goto 55.78,37.70 < 15 |only if walking
Follow the path |goto 53.31,34.73 < 15 |only if walking
Follow the path |goto 52.04,32.87 < 15 |only if walking
accept Sister Subversia##48512 |goto Krokuun/0 52.83,30.97
|tip You will accept this quest automatically.
step
kill Sister Subversia##123464 |q 48512/1 |goto Krokuun/0 52.83,30.97 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-47563
Follow the path |goto Krokuun/0 58.84,68.42 < 15 |only if walking
Follow the path |goto 59.71,67.72 < 15 |only if walking
Follow the path |goto 59.79,65.89 < 15 |only if walking
Follow the path |goto 59.68,61.56 < 20 |only if walking
accept Spirits of the Fallen##47563 |goto Krokuun/0 56.23,57.01
|tip You will accept this quest automatically.
stickystart "torturedSoul"
step
kill Felflame Scavenger##120638+, Burning Fiend##120637+
Kill #12# Demons |q 47563/1 |goto 57.98,55.98
step
label "torturedSoul"
clicknpc Tortured Soul##1798
|tip They're corpses on the ground.
Release #6# Tortured Souls |q 47563/2 |goto 57.98,55.98
|next "Legion_World_Quest_Emissaries"
step
label quest-48338
accept Supplies Needed: Astral Glory##48338 |goto Krokuun/0 56.12,66.75
|tip You will accept this quest automatically.
step
collect 40 Astral Glory##151565
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Alchemist Funen##125346
turnin Supplies Needed: Astral Glory##48338 |goto 56.12,66.75
|next "Legion_World_Quest_Emissaries"
step
label quest-47728
Follow the path |goto Krokuun/0 57.92,68.12 < 20 |only if walking
Follow the path |goto Krokuun/0 59.25,68.51 < 15 |only if walking
Follow the path |goto Krokuun/0 60.03,70.71 < 15 |only if walking
Follow the path |goto Krokuun/0 57.46,74.88 < 20 |only if walking
Follow the path |goto Krokuun/0 56.49,78.41 < 15 |only if walking
Enter the building |goto Krokuun/0 56.06,79.44 < 15 |walk
accept Talestra the Vile##47728 |goto Krokuun/0 54.73,81.26
|tip You will accept this quest automatically.
step
Enter the building |goto Krokuun/0 56.06,79.44 < 15 |walk
kill Talestra the Vile##123689 |q 47728/1 |goto Krokuun/0 54.73,81.26 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48192
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
accept Tar Spitter##48192 |goto 68.87,78.44
|tip You will accept this quest automatically.
step
kill Tar Spitter##125479 |q 48192/1 |goto 70.15,81.20 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-47953
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
accept Tereck the Selector##47953 |goto Krokuun/0 69.55,56.45
|tip You will accept this quest automatically.
step
kill Tereck the Selector##124804 |q 47953/1 |goto Krokuun/0 69.55,56.45 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48091
Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
Follow the path down |goto 60.95,43.81 < 15 |only if walking
Follow the path down |goto 58.60,40.18 < 15 |only if walking
Follow the path down |goto 59.01,37.83 < 15 |only if walking
Follow the path |goto 59.32,33.03 < 20 |only if walking
Follow the path |goto 60.59,29.86 < 20 |only if walking
Follow the path |goto 62.17,28.78 < 15 |only if walking
Follow the path up |goto 62.81,27.19 < 25 |only if walking
accept Vagath the Betrayed##48091 |goto Krokuun/0 60.82,19.72
|tip You will accept this quest automatically.
step
kill Vagath the Betrayed##125388 |q 48091/1 |goto Krokuun/0 60.82,19.72 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48615
accept War Never Changes##48615 |goto Krokuun/0 60.00,37.52
|tip You will accept this quest automatically.
step
clicknpc Prismatic Fragments##126877
Recover the first Lightforged Armament |q 48615/1 |goto 61.99,41.67 |count 1
step
click Vindicator Plating##272463
Recover the second Lightforged Armament |q 48615/1 |goto 59.79,39.44 |count 2
step
Follow the path |goto 59.31,38.34 < 15 |only if walking
Follow the path |goto 60.09,37.30 < 15 |only if walking
Follow the path |goto 60.81,35.13 < 15 |only if walking
Enter the building |goto 61.11,35.46 < 7 |walk
click Judgement Core
Recover the third Lightforged Armament |q 48615/1 |goto 61.37,36.04 |count 3
step
Leave the building |goto 61.07,35.34 < 8 |only if walking
Follow the path |goto 61.61,29.95 < 20 |only if walking
click Judgement Core
Recover the fourth Lightforged Armament |q 48615/1 |goto 60.24,28.08 |count 4
step
click Invocation Array##272458
Recover the fifth Lightforged Armament |q 48615/1 |goto 59.50,26.10 |count 5
step
click Vindicator Plating##272463
Recover the sixth Lightforged Armament |q 48615/1 |goto 58.67,24.76 |count 6
|next "Legion_World_Quest_Emissaries"
step
label quest-48614
Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
Follow the path down |goto 60.95,43.81 < 15 |only if walking
accept Woeful Implications##48614 |goto Krokuun/0 58.44,37.45
|tip You will accept this quest automatically.
stickystart "felspawn"
step
Follow the path down |goto 58.60,40.18 < 15 |only if walking
Follow the path down |goto 59.01,37.83 < 15 |only if walking
click Spire of Woe##266733
Dismantle #5# Spires of Woe |q 48614/2 |goto Krokuun/0 53.94,34.68
step
label "felspawn"
kill Blazing Felshard##125109+, Wrathful Ember##125110+, Igneous Crusher##125103+
Kill #20# Felspawn |q 48614/1 |goto Krokuun/0 53.94,34.68
|next "Legion_World_Quest_Emissaries"
step
label quest-48337
accept Work Order: Astral Glory##48337 |goto Krokuun/0 56.12,66.75
|tip You will accept this quest automatically.
step
collect 40 Astral Glory##151565
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Alchemist Funen##125346
turnin Work Order: Astral Glory##48337 |goto Krokuun/0 56.12,66.75
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Eredath World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=882,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-48729
Follow the path |goto Eredath/0 28.62,43.67 < 15 |only if walking
Drop down |goto 29.22,42.78 < 15 |only if walking
accept Ataxon##48729 |goto Eredath/0 44.82,56.99
|tip You will accept this quest automatically.
step
kill Ataxon##126887 |q 48729/1 |goto 30.14,40.18 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48701
accept Baruut the Bloodthirsty##48701 |goto Eredath/0 44.82,56.99
|tip You will accept this quest automatically.
step
kill Baruut the Bloodthirsty##126862 |q 48701/1 |goto 43.84,60.62 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-47705
accept Behind Legion Lines##47705 |goto Eredath/0 59.86,36.14
|tip You will accept this quest automatically.
step
clicknpc Lightforged Scout##125926
|tip They can be found all around this area.
Heal #3# Lightforged Scout |q 47705/1 |goto 57.06,33.26
|next "Legion_World_Quest_Emissaries"
step
label quest-49047
Follow the path |goto Eredath/0 64.45,42.18 < 15 |only if walking
accept Bucky##49047 |goto 67.48,43.77
|tip You will accept this quest automatically.
step
clicknpc Bucky##128013
Defeat Bucky |q 49047/1 |goto 67.63,43.85
|next "Legion_World_Quest_Emissaries"
step
label quest-48101
Follow the path |goto Eredath/0 45.95,17.79 < 20 |only if walking
accept Bully Pulpit##48101 |goto Eredath/0 50.45,17.47
|tip You will accept this quest automatically.
step
clicknpc Forgotten Denizen##127895
Ask: _"Have you noticed anything strange about this gathering?"_
|tip Keep doing this until you find the infiltrator.
kill Antoran Infiltrator##127934 |q 48101/1 |goto 50.45,17.47
|next "Legion_World_Quest_Emissaries"
step
label quest-47456
Follow the path |goto Eredath/0 52.85,70.39 < 20 |only if walking
Jump down |goto 51.86,67.67 < 20 |only if walking
accept Calming the Void##47456 |goto Eredath/0 52.29,63.05
|tip You will accept this quest automatically.
step
Calm #15# Frenzied Wurms |q 47456/1 |goto 52.29,63.05
|tip Use the extra action button to send a calming wave in a small cone in front of you.
|tip The wurms race around the area.
|next "Legion_World_Quest_Emissaries"
step
label quest-48727
Follow the path |goto Eredath/0 26.51,40.34 < 20 |only if walking
Follow the path |goto 27.74,36.15 < 20 |only if walking
accept Captain Faruq##48727 |goto Eredath/0 27.18,30.03
|tip You will accept this quest automatically.
step
Go up the hill |goto 44.01,16.03 < 10 |only if walking
Go up the hill |goto 43.43,16.75 < 10 |only if walking
Follow the path |goto 42.16,15.23 < 15 |only if walking
kill Captain Faruq##126869 |q 48727/1 |goto 27.18,30.03 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48739
Follow the path |goto Eredath/0 45.67,17.65 < 15 |only if walking
Follow the path |goto 47.44,17.22 < 15 |only if walking
Go down the stairs |goto 48.10,16.32 < 15 |only if walking
Follow the path |goto 48.90,14.14 < 15 |only if walking
Go down the stairs |goto 49.79,13.12 < 10 |only if walking
Go down the stairs |goto 50.87,13.08 < 10 |only if walking
Follow the path |goto 52.42,14.46 < 15 |only if walking
Go down the stairs |goto 53.94,12.56 < 15 |only if walking
accept Commander Xethgar##48739 |goto 56.81,14.67
|tip You will accept this quest automatically.
step
kill Commander Xethgar##126910 |q 48739/1 |goto 56.81,14.67 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48096
Follow the path |goto Eredath/0 54.89,72.57 < 30 |only if walking
Go down the stairs |goto 57.12,69.82 < 15 |only if walking
accept Core Mechanics##48096 |goto 57.23,67.04
|tip You will accept this quest automatically.
step
kill Ancient Argus Construct##122353+, Argus Vigilant##119828+, Haywire Argus Construct##122368+
clicknpc Damaged Argus Construct##128357
collect 8 Crystalline Construct Core##152689 |q 48096/1 |goto 54.46,63.29
|next "Legion_World_Quest_Emissaries"
step
label quest-49051
Follow the path |goto Eredath/0 26.46,40.21 < 20 |only if walking
Follow the path |goto 27.67,36.48 < 20 |only if walking
Follow the path |goto 29.92,32.95 < 20 |only if walking
accept Corrupted Blood of Argus##49051 |goto 31.84,31.35
|tip You will accept this quest automatically.
step
clicknpc Corrupted Blood of Argus##128017
Defeat Corrupted Blood of Argus |q 49051/1 |goto 31.84,31.35
|next "Legion_World_Quest_Emissaries"
step
label quest-48095
accept Dark Experimentation##48095 |goto Eredath/0 29.35,48.62
|tip You will accept this quest automatically.
step
clicknpc Dazed Panthara##127286
clicknpc Dazed Mana Ray##127287
clicknpc Dazed Marsuul##127285
|tip These can be found in purple and blue bubbles around this area.
Release #8# test subjects |q 48095/1 |goto Eredath/0 26.38,37.63
|next "Legion_World_Quest_Emissaries"
step
label quest-48100
Follow the path |goto Eredath/0 45.45,17.37 < 15 |only if walking
Follow the path |goto 47.54,17.11 < 15 |only if walking
Go down the stairs |goto 48.12,16.25 < 20 |only if walking
Follow the path |goto 48.88,14.14 < 10 |only if walking
Go down the stairs |goto 50.84,13.04 < 10 |only if walking
Follow the path |goto 52.27,14.38 < 10 |only if walking
Go down the stairs |goto 53.88,12.58 < 20 |only if walking
accept The Defense of Eredath##48100 |goto Eredath/0 54.39,12.10
|tip You will accept this quest automatically.
stickystart "Slay_Legion_Forces"
step
click Legion Portal##267226
Close the Legion Portal |q 48100/1 |count 1 |goto 51.27,9.03
step
Follow the path |goto 52.90,10.55 < 15 |only if walking
click Legion Portal##267226
Close the Legion Portal |q 48100/1 |count 2 |goto 54.45,9.94
step
Follow the path |goto 54.95,14.19 < 20 |only if walking
Follow the path |goto 56.83,16.88 < 20 |only if walking
click Legion Portal##267226
Close the Legion Portal |q 48100/1 |count 3 |goto 57.82,17.36
step
label "Slay_Legion_Forces"
Kill Mobs in the Area
Slay #12# Legion Forces |q 48100/2 |goto 56.34,18.88
|next "Legion_World_Quest_Emissaries"
step
label quest-48722
accept Feasel the Muffin Thief##48722 |goto Eredath/0 41.14,11.50
|tip You will accept this quest automatically.
step
Go up the hill |goto Eredath/0 44.01,16.03 < 10 |only if walking
Go up the hill |goto 43.43,16.75 < 10 |only if walking
Follow the path |goto 42.16,15.23 < 15 |only if walking
kill Feasel the Muffin Thief##126864 |q 48722/1 |goto 41.14,11.50 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-47135
Follow the path |goto Eredath/0 44.92,56.72 < 20 |only if walking
Go down the stairs |goto 44.39,58.26 < 20 |only if walking
Follow the path |goto 41.92,59.51 < 20 |only if walking
accept For Their Own Good##47135 |goto Eredath/0 40.29,58.64
|tip You will accept this quest automatically.
step
clicknpc Frenzied Marsuul Kit##123764
Calm #12# Marsuul Kits |q 47135/1 |goto 40.29,58.64
|tip Use the extra action button that appears on screen.
|next "Legion_World_Quest_Emissaries"
step
label quest-48098
accept Garden Pests##48098 |goto Eredath/0 57.47,31.81
|tip You will accept this quest automatically.
step
click Fel Spreader##268517
click Soul Harvester##252049
Kill enemies around this area
Disrupt the Legion forces in Arinor Gardens |q 48098/1 |goto 57.47,31.81
|next "Legion_World_Quest_Emissaries"
step
label quest-48097
accept Gatekeeper's Review: Cunning##48097 |goto Eredath/0 62.52,45.49
|tip You will accept this quest automatically.
step
clicknpc Ancient Scholar Sculpture##127411
|tip It's the red one. Click this one first.
Gain the Sign of the Scholar Buff |havebuff 461847 |goto 62.41,45.48
|tip Move quickly, the buff only lasts for twenty seconds.
step
clicknpc Ancient Wakener Sculpture##127410
|tip It's the yellow one. Click this one second.
Gain the Sign of the Wakener Buff |havebuff 254294 |goto 62.51,45.40
|tip Move quickly, the buff only lasts for twenty seconds.
step
Go to the _orange_ symbol and loot the chest nearby
Retrieve the Fragment of Acuity |q 48097/1 |or
Retrieve the Fragment of Wit |q 48097/2 |or
Retrieve the Fragment of Guile |q 48097/3 |or
step
clicknpc Ancient Consul Sculpture##127409
|tip It's the blue one. Click this one first.
Gain the Sign of the Consul Buff |havebuff 254291 |goto 62.62,45.46
|tip Move quickly, the buff only lasts for twenty seconds.
step
clicknpc Ancient Wakener Sculpture##127410
|tip It's the yellow one. Click this one second.
Gain the Sign of the Wakener Buff |havebuff 254294 |goto 62.51,45.40
|tip Move quickly, the buff only lasts for twenty seconds.
step
Go to the _green_ symbol and loot the chest nearby
Retrieve the Fragment of Acuity |q 48097/1 |or 2
Retrieve the Fragment of Wit |q 48097/2 |or 2
Retrieve the Fragment of Guile |q 48097/3 |or 2
step
clicknpc Ancient Scholar Sculpture##127411
|tip It's the red one. Click this one first.
Gain the Sign of the Scholar Buff |havebuff 461847 |goto 62.41,45.48
|tip Move quickly, the buff only lasts for twenty seconds.
step
clicknpc Ancient Consul Sculpture##127409
|tip It's the blue one. Click this one second.
Gain the Sign of the Consul Buff |havebuff 254291 |goto 62.62,45.46
|tip Move quickly, the buff only lasts for twenty seconds.
step
Go to the _purple_ symbol and loot the chest nearby
Retrieve the Fragment of Acuity |q 48097/1 |or 3
Retrieve the Fragment of Wit |q 48097/2 |or 3
Retrieve the Fragment of Guile |q 48097/3 |or 3
|next "Legion_World_Quest_Emissaries"
step
label quest-48103
Follow the path |goto Eredath/0 63.44,41.64 < 15 |only if walking
Follow the path |goto 65.33,44.94 < 15 |only if walking
accept Gatekeeper's Review: Tenacity##48103 |goto 65.16,48.90
|tip You will accept this quest automatically.
step
Enter the Hall of Enlightenment |q 48103/1 |goto Eredath/0 67.66,50.19
step
Cross the first room |goto 68.49,50.13 < 5 |q 48103 |c
|tip Purple is safe and red will kill you.
|tip Observe the pattern and cross the room on the purple symbols only.
step
Cross the second room |goto 69.47,50.06 < 5 |q 48103 |c
|tip The pink beams will instantly kill you.
|tip The pink orbs that move across the ground will also instantly kill you.
|tip Watch the pattern and, when the time is right, run quickly across the room.
step
Complete the Trial of Tenacity |q 48103/2 |goto 70.92,49.96
|tip You must run up the stairs and onto the balcony at the top.
|tip The purple-pink orbs that come down the steps will instantly kill you.
|tip Watch them spawn and make your run when you find an opening.
|next "Legion_World_Quest_Emissaries"
step
label quest-49049
Follow the path |goto Eredath/0 55.04,72.35 < 15 |only if walking
Follow the path |goto 56.22,70.88 < 15 |only if walking
Go down the stairs |goto 57.12,69.81 < 15 |only if walking
Follow the path |goto 58.30,70.91 < 7 |only if walking
Follow the path |goto 59.39,70.48 < 7 |only if walking
accept Gloamwing##49049 |goto 60.01,71.10
|tip You will accept this quest automatically.
step
clicknpc Gloamwing##128015
Defeat Gloamwing |q 49049/1 |goto 60.01,71.10
|next "Legion_World_Quest_Emissaries"
step
label quest-48731
Follow the path |goto Eredath/0 44.98,56.57 < 15 |only if walking
Go down the stairs |goto 44.39,58.24 < 15 |only if walking
Follow the path |goto 41.91,59.47 < 20 |only if walking
Go down the stairs |goto 40.44,59.55 < 15 |only if walking
Follow the path |goto 36.71,64.45 < 15 |only if walking
Follow the path |goto 34.95,63.51 < 15 |only if walking
Follow the path |goto 35.19,60.40 < 15 |only if walking
accept Herald of Chaos##48731 |goto 35.84,58.63
|tip You will accept this quest automatically.
step
kill Herald of Chaos##126896 |q 48731/1 |goto 35.84,58.63 |future
|tip Go up the ramp to the top platform.
|next "Legion_World_Quest_Emissaries"
step
label quest-48175
Follow the path |goto Eredath/0 26.45,40.20 < 30 |only if walking
Follow the path |goto 29.45,36.96 < 20 |only if walking
Follow the path |goto 30.99,37.41 < 20 |only if walking
accept Hidden in the Hollows##48175 |goto Eredath/0 32.46,41.00
|tip You will accept this quest automatically.
step
clicknpc Void Tear##128320
Enter the Void Tear |q 48175/1 |goto 32.46,41.00
step
click Shadowguard Objects
|tip Avoid going near hostile mobs and avoid the large blue-dashed rings.
Disrupt #8# ethereal activities |q 48175/2 |goto 34.67,40.87
|next "Legion_World_Quest_Emissaries"
step
label quest-48099
accept Hostile Echology##48099 |goto Eredath/0 52.88,69.04
|tip You will accept this quest automatically.
step
Kill Echo enemies around this area
Kill #12# hostile echoes |q 48099/1 |goto 52.88,69.04
|next "Legion_World_Quest_Emissaries"
step
label quest-48737
Follow the path |goto Eredath/0 63.44,41.97 < 20 |only if walking
accept Instructor Tarahna##48737 |goto 62.69,46.79
|tip You will accept this quest automatically.
step
kill Instructor Tarahna##126900 |q 48737/1 |goto Eredath/0 61.34,50.37 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48733
Follow the path |goto Eredath/0 45.39,53.79 < 15 |only if walking
Follow the path |goto 45.77,49.98 < 10 |only if walking
Follow the path |goto 48.05,45.29 < 20 |only if walking
accept Jed'hin Champion Vorusk##48733 |goto 48.43,42.31
|tip You will accept this quest automatically.
step
kill Jed'hin Champion Vorusk##126899 |q 48733/1 |goto 48.17,40.74 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48386
Follow the path |goto Eredath/0 45.39,53.79 < 15 |only if walking
Follow the path |goto 45.77,49.98 < 10 |only if walking
Follow the path |goto 48.05,45.29 < 20 |only if walking
accept Jed'hin Tournament##48386 |goto Eredath/0 48.08,46.15
|tip You will accept this quest automatically.
step
clicknpc Jed'hin Adept##127775
Participate in a Jed'hin match |q 48386/1 |goto 48.08,46.15
|tip When you are ready, use the Start Match ability.
|tip
|tip Shove will keal damage and generate 10 energy.
|tip
|tip Grapple deals heavy damage and increases the damage of your next Grapple by 150%.
|tip
|tip Block will deflect all incoming attacks and generate 8 energy per second while channeled.
|tip
|tip Counter will interrupt your opponent's Block, and prevent them from using it for 10 seconds.
|next "Legion_World_Quest_Emissaries"
step
label quest-48698
Follow the path |goto Eredath/0 44.97,56.70 < 15 |only if walking
Go down the stairs |goto 44.41,58.12 < 15 |only if walking
Follow the path |goto 42.04,59.56 < 15 |only if walking
Go down the stairs |goto 40.54,58.74 < 15 |only if walking
Follow the path |goto 38.51,56.76 < 10 |only if walking
Enter the cave |goto 38.61,55.54 < 10 |walk
accept Kaara the Pale##48698 |goto Eredath/0 37.79,54.62
|tip You will accept this quest automatically.
step
kill Kaara the Pale##126860 |q 48698/1 |goto 37.79,54.62 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-49052
Follow the path |goto Eredath/0 64.45,42.48 < 20 |only if walking
Follow the path |goto 66.47,43.72 < 20 |only if walking
Follow the path up |goto 66.56,41.16 < 15 |only if walking
Follow the path |goto 67.93,39.26 < 15 |only if walking
Follow the path |goto 71.23,36.36 < 15 |only if walking
Follow the path |goto 72.94,35.93 < 15 |only if walking
accept Mar'cuus##49052 |goto 74.65,36.24
|tip You will accept this quest automatically.
step
clicknpc Mar'cuus##128018
Defeat Mar'cuus |q 49052/1 |goto 74.65,36.24
|next "Legion_World_Quest_Emissaries"
step
label quest-47828
Follow the path |goto Eredath/0 50.64,72.28 < 20 |only if walking
accept Memories of the Fallen##47828 |goto 47.26,68.47
|tip You will accept this quest automatically.
step
kill Shadow-Touched Krokul##121250+, Void-Addled Krokul##121251+
click Crystallized Memory##272010
|tip They look like little purple gems.
collect 30 Crystallized Memory##151555 |q 47828/1 |goto 46.21,67.21
|next "Legion_World_Quest_Emissaries"
step
label quest-48106
Follow the path |goto Eredath/0 26.72,40.83 < 20 |only if walking
accept No Love Lost##48106 |goto Eredath/0 26.12,39.56
|tip You will accept this quest automatically.
stickystart "Slay_Shadowguard_Forces"
step
kill General Zah'd##126152 |q 48106/2 |goto 21.89,41.01
step
label "Slay_Shadowguard_Forces"
Kill Shadowguard enemies around this area
Slay #13# Shadowguard Forces |q 48106/1 |goto 26.12,39.56
|next "Legion_World_Quest_Emissaries"
step
label quest-48734
accept Overseer Y'Beda##48734 |goto Eredath/0 58.75,37.62
|tip You will accept this quest automatically.
step
kill Overseer Y'Beda##124440 |q 48734/1 |goto 58.75,37.62 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48736
Follow the path |goto Eredath/0 58.84,34.02 < 25 |only if walking
accept Overseer Y'Morna##48736 |goto Eredath/0 60.93,29.75
|tip You will accept this quest automatically.
step
kill Overseer Y'Morna##125498 |q 48736/1 |goto 60.93,29.75 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48735
Follow the path |goto Eredath/0 57.33,37.61 < 20 |only if walking
accept Overseer Y'Sorna##48735 |goto Eredath/0 57.13,32.97
|tip You will accept this quest automatically.
step
kill Overseer Y'Sorna##125497 |q 48735/1 |goto Eredath/0 57.16,30.03 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48105
accept Peer Review##48105 |goto Eredath/0 63.01,39.56
|tip You will accept this quest automatically.
step
talk Archmage Y'mera##123413
Tell her _<Take the Attuning Crystals>_
Talk to Y'mera |q 48105/1 |goto Eredath/0 63.35,39.71
step
clicknpc Resonating Augari Novitiate##128358
Use Y'mera's Attuning Crystal on these neutrals |use Y'mera's Attuning Crystal##153249
|tip Kill any that become hostile.
|tip These mobs are spread out all over the area.
collect 10 Ancient Augari Essence##152714 |q 48105/2 |goto Eredath/0 63.16,48.99
|next "Legion_World_Quest_Emissaries"
step
label quest-47844
Follow the path |goto Eredath/0 44.95,56.62 < 20 |only if walking
Go down the stairs |goto 44.41,58.19 < 20 |only if walking
Follow the path |goto Eredath/0 44.10,63.29 < 15 |only if walking
Follow the path down |goto 44.15,65.60 < 15 |only if walking
accept Recurring Madness##47844 |goto Eredath/0 43.37,67.59
|tip You will accept this quest automatically.
step
talk Grand Lector Enaara##123667
_<Accept the crystal.>_
Talk to Grand Lector Enaara |q 47844/1 |goto 43.37,67.59
step
clicknpc Void Manifestation##124398
Cleanse the Void Manifestation |q 47844/2 |goto 42.09,64.08 |count 1
step
Follow the path up |goto Eredath/0 42.26,66.61 < 15 |only if walking
clicknpc Void Manifestation##124398
Cleanse the Void Manifestation |q 47844/2 |goto 41.47,67.73 |count 2
step
clicknpc Void Manifestation##124398
Cleanse the Void Manifestation |q 47844/2 |goto 42.29,68.17 |count 3
step
clicknpc Void Manifestation##124398
Cleanse the Void Manifestation |q 47844/2 |goto 41.03,71.16 |count 4
step
clicknpc Void Manifestation##124398
Cleanse the Void Manifestation |q 47844/2 |goto 42.19,71.14 |count 5
|next "Legion_World_Quest_Emissaries"
step
label quest-48732
Follow the path |goto Eredath/0 44.27,54.48 < 15 |only if walking
Follow the path |goto 43.60,52.08 < 15 |only if walking
accept Sabuul##48732 |goto 43.58,48.00
|tip You will accept this quest automatically.
step
kill Sabuul##126898 |q 48732/1 |goto 43.58,48.00 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48102
Follow the path |goto Eredath/0 65.19,45.72 < 25 |only if walking
accept Scale Samples##48102 |goto Eredath/0 65.49,51.64
|tip You will accept this quest automatically.
step
kill Manafeeder Panthara##123508+
collect 5 Delicate Panthara Scales##152411 |q 48102/1 |goto 65.49,56.52
|next "Legion_World_Quest_Emissaries"
step
label quest-48953
Press _I_ and queue for Seat of the Triumvirate or enter the dungeon with your group
accept Seat of the Triumvirate: Darkcaller##48953 |goto The Seat of the Triumvirate/0 21.9,86.2
|tip You will accept this quest automatically.
step
kill Darkcaller##122457 |q 48953/1 |goto 38,74
step
kill L'ura##122314 |q 48953/2 |goto 60.0,31.5
|next "Legion_World_Quest_Emissaries"
step
label quest-48959
Press _I_ and queue for Seat of the Triumvirate or enter the dungeon with your group
accept Seat of the Triumvirate: Dark Fissures##48959 |goto The Seat of the Triumvirate/0 21.9,86.2
|tip You will accept this quest automatically.
step
clicknpc Dark Fissure##127767
Destroy the last Dark Fissures |q 48959/1 |goto 22.0,57.8 |count 1
step
clicknpc Dark Fissure##127767
Destroy the last Dark Fissures |q 48959/1 |goto 34.7,75.3 |count 2
step
clicknpc Dark Fissure##127767
Destroy the last Dark Fissures |q 48959/1 |goto 35.7,26.5 |count 3
step
clicknpc Dark Fissure##127767
Destroy the last Dark Fissures |q 48959/1 |goto 46.9,29.1 |count 4
step
kill L'ura##122314 |q 48959/2 |goto 60.0,31.5
|next "Legion_World_Quest_Emissaries"
step
label quest-48985
Press _I_ and queue for Seat of the Triumvirate or enter the dungeon with your group
accept Seat of the Triumvirate: Twilight-Harbinger Tharuul##48985 |goto The Seat of the Triumvirate/0 21.9,86.2
|tip You will accept this quest automatically.
step
kill Twilight-Harbinger Tharuul##127906 |q 48985/1 |goto 50.1,16.6
step
kill L'ura##122314 |q 48985/2 |goto 60.0,31.5
|next "Legion_World_Quest_Emissaries"
step
label quest-48957
Press _I_ and queue for Seat of the Triumvirate or enter the dungeon with your group
accept Seat of the Triumvirate: Void-Blade Zedaat##48957 |goto The Seat of the Triumvirate/0 21.9,86.2
|tip You will accept this quest automatically.
step
kill Void-Blade Zedaat##127911
|tip He is located directly East of Saprish, the second boss.
Slay Void-Blade Zedaat |q 48957/1
step
kill L'ura##122314 |q 48957/2 |goto 60.0,31.5
|next "Legion_World_Quest_Emissaries"
step
label quest-48951
Press _I_ and queue for Seat of the Triumvirate or enter the dungeon with your group
accept Seat of the Triumvirate: Voidmaw##48951 |goto The Seat of the Triumvirate/0 21.9,86.2
|tip You will accept this quest automatically.
step
kill Voidmaw##122456
|tip He is located behind Saprish.
Slay Voidmaw |q 48951/1
step
kill L'ura##122314 |q 48951/2 |goto 60.0,31.5
|next "Legion_World_Quest_Emissaries"
step
label quest-47858
accept Security: Engaged##47858 |goto Eredath/0 60.48,36.84
|tip You will accept this quest automatically.
step
Follow the path |goto 58.77,33.59 < 20 |only if walking
Follow the path |goto 58.68,31.59 < 20 |only if walking
kill Antoran Despoiler##124448+, Antoran Fiendmaster##124435+, Vilefiend Tracker##124430+
collect 3 Vigilant Power Crystal##152357 |goto 57.71,31.72
step
clicknpc Household Vigilant##125842+
|tip They can be found all around the area.
Activate #3# Houshold Vigilants |q 47858/1 |goto 57.71,31.72
|next "Legion_World_Quest_Emissaries"
step
label quest-49050
Follow the path |goto Eredath/0 43.29,54.16 < 20 |only if walking
Follow the path |goto 38.96,53.35 < 20 |only if walking
Drop down |goto 36.75,54.62 < 15 |only if walking
accept Shadeflicker##49050 |goto 36.03,54.13
|tip You will accept this quest automatically.
step
clicknpc Shadeflicker##128016
Defeat Shadeflicker |q 49050/1 |goto 36.03,54.13
|next "Legion_World_Quest_Emissaries"
step
label quest-47833
Follow the path |goto Eredath/0 50.42,71.93
Follow the path |goto 47.95,69.03
accept Shadowcaster Voruun##47833 |goto 45.85,70.25
|tip You will accept this quest automatically.
step
kill Shadowcaster Voruun##122838 |q 47833/1 |goto Eredath/0 44.55,71.69 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48740
Follow the path |goto Eredath/0 45.67,17.65 < 15 |only if walking
Follow the path |goto 47.44,17.22 < 15 |only if walking
Go down the stairs |goto 48.10,16.32 < 15 |only if walking
Follow the path |goto 48.90,14.14 < 15 |only if walking
Go down the stairs |goto 49.79,13.12 < 10 |only if walking
Go down the stairs |goto 50.87,13.08 < 10 |only if walking
Follow the path |goto 52.42,14.46 < 15 |only if walking
Go down the stairs |goto 53.94,12.56 < 15 |only if walking
Follow the path |goto 52.96,11.09 < 15 |only if walking
accept Skreeg the Devourer##48740 |goto 49.70,09.90
|tip You will accept this quest automatically.
step
kill Skreeg the Devourer##126912 |q 48740/1 |goto 49.70,09.90 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-49048
Follow the path |goto Eredath/0 64.50,42.40 < 15 |only if walking
Follow the path |goto Eredath/0 65.86,44.69 < 15 |only if walking
Follow the path |goto 68.76,45.91 < 20 |only if walking
Follow the path |goto 70.82,49.58 < 15 |only if walking
accept Snozz##49048 |goto 69.67,51.92
|tip You will accept this quest automatically.
step
clicknpc Snozz##128014
Defeat Snozz |q 49048/1 |goto 69.67,51.92
|next "Legion_World_Quest_Emissaries"
step
label quest-48936
accept Slithon the Last##48936 |goto Eredath/0 48.18,54.79
|tip You will accept this quest automatically.
step
kill Slithon the Last##126913
|tip He is swimming in the lake.
Slay Slithon the Last |q 48936/1 |goto Eredath/0 48.60,52.46 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48694
accept Soultwisted Monstrosity##48694 |goto Eredath/0 52.92,67.15
|tip You will accept this quest automatically.
step
kill Soultwisted Monstrosity##126815 |q 48694/1 |goto 52.92,67.15 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48730
Go up the hill |goto Eredath/0 64.38,42.20 < 15 |only if walking
Follow the path |goto 65.96,44.23 < 20 |only if walking
accept Sorolis the Ill-Fated##48730 |goto Eredath/0 67.51,45.42
|tip You will accept this quest automatically.
step
kill Sorolis the Ill-Fated##126889 |q 48730/1 |goto Eredath/0 70.23,45.96 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48726
Follow the path |goto Eredath/0 44.99,56.58 < 20 |only if walking
Go down the stairs |goto 44.43,58.15 < 15 |only if walking
Follow the path |goto 44.07,63.43 < 15 |only if walking
Follow the path down |goto 44.13,65.79 < 15 |only if walking
Follow the path down |goto 42.25,67.07 < 15 |only if walking
accept Turek the Lucid##48726 |goto 39.20,66.69
|tip You will accept this quest automatically.
step
Enter the building |goto 39.11,66.58 < 10 |walk
kill Turek the Lucid##126868 |q 48726/1 |goto 38.23,64.38 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48728
Follow the path |goto Eredath/0 28.63,43.63 < 20 |only if walking
Jump down |goto 29.62,42.49 < 20 |only if walking
Follow the path |goto Eredath/0 32.69,40.96 < 20 |only if walking
Follow the path |goto Eredath/0 34.40,38.96 < 15 |only if walking
accept Umbraliss##48728 |goto Eredath/0 35.20,37.20
|tip You will accept this quest automatically.
step
kill Umbraliss##126885 |q 48728/1 |goto 35.20,37.20 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48725
Follow the path |goto Eredath/0 28.59,43.66 < 10 |only if walking
Jump down |goto 29.31,42.94 < 10 |only if walking
Follow the path |goto 34.09,41.95 < 15 |only if walking
Follow the path |goto 33.84,45.39 < 15 |only if walking
Jump down |goto 33.64,46.58 < 15 |only if walking
accept Venomtail Skyfin##48725 |goto Eredath/0 33.70,47.50
|tip You will accept this quest automatically.
step
kill Venomtail Skyfin##126867 |q 48725/1 |goto Eredath/0 33.70,47.50 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48724
Follow the path |goto Eredath/0 55.76,71.31 < 15 |only if walking
Go down the stairs |goto 57.06,69.89 < 15 |only if walking
Follow the path |goto 59.19,65.67 < 15 |only if walking
Follow the path |goto 60.73,63.91 < 15 |only if walking
accept Vigilant Kuro##48724 |goto 63.82,64.31
|tip You will accept this quest automatically.
step
kill Vigilant Kuro##126866 |q 48724/1 |goto Eredath/0 63.82,64.31 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48723
Follow the path |goto Eredath/0 26.80,40.21 < 30 |only if walking
Follow the path |goto 27.64,33.46 < 30 |only if walking
Follow the path |goto 31.94,26.21 < 30 |only if walking
accept Vigilant Thanos##48723 |goto Eredath/0 36.69,23.86
|tip You will accept this quest automatically.
step
kill Vigilant Thanos##126865 |q 48723/1 |goto 36.69,23.86 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48094
Follow the path |goto Eredath/0 43.75,54.58 < 25 |only if walking
Follow the path |goto 41.34,50.99 < 10 |only if walking
accept Void Clot##48094 |goto 40.40,49.11
|tip You will accept this quest automatically.
step
click Congealed Void Crystal##273274
kill Creeping Gloom##122014+, Darklost Krokul##121563+, Panthara Shadowfang##122010+
collect 100 Clotted Void Crystal##152415 |q 48094/1 |goto 36.88,45.54
|next "Legion_World_Quest_Emissaries"
step
label quest-48696
Follow the path |goto Eredath/0 54.50,73.30 < 15 |only if walking
Follow the path |goto 56.22,70.90 < 20 |only if walking
Go down the stairs |goto 57.12,69.82 < 15 |only if walking
Follow the path |goto 57.64,66.23 < 20
accept Wrangler Kravos##48696 |goto Eredath/0 57.00,63.17
|tip You will accept this quest automatically.
step
kill Wrangler Kravos##126852 |q 48696/1 |goto Eredath/0 55.77,59.34 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-48738
Go up the hill |goto Eredath/0 64.32,41.75 < 15 |only if walking
Go up the hill |goto 65.22,40.99 < 15 |only if walking
Follow the path |goto 63.40,36.14 < 15 |only if walking
Follow the path |goto 63.16,29.55 < 15 |only if walking
Enter the building |goto 64.00,29.56 < 7 |walk
accept Zul'tan the Numerous##48738 |goto Eredath/0 66.76,28.44
|tip You will accept this quest automatically.
step
kill Zul'tan the Numerous##126908 |q 48738/1 |goto 66.76,28.44 |future
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Stormheim World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=634,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-43964
Cross the bridge |goto Stormheim/0 40.02,62.82 < 20 |only if walking
Follow the path |goto 42.96,58.94 < 30 |only if walking
Follow the path up |goto 44.06,53.76 < 30 |only if walking
Follow the path up |goto 41.35,53.11 < 30 |only if walking
accept A Jarl's Feast##43964 |goto Stormheim/0 38.61,55.19
|tip You will accept this quest automatically.
step
clicknpc Fallen Jarl##112225
Pay your Respects to the Fallen Jarl |q 43964/2 |goto 39.14,54.92
step
clicknpc Feasting Plates
|tip They look like plates of food around this area.
click Potent Horns of Mead
|tip They look like white tusks around this area.
Talk to NPC's around this area
|tip Some will attack you.
Engage in the Revelry |q 43964/1 |goto 38.61,55.19
|next "Legion_World_Quest_Emissaries"
step
label quest-42067
Follow the path up |goto Stormheim/0 49.20,31.30 < 20 |only if walking
Follow the path up |goto 48.22,30.10 < 15 |only if walking
Follow the path |goto 47.24,32.34 < 20 |only if walking
Follow the path down |goto 45.58,31.20 < 20 |only if walking
Follow the path down |goto 41.87,27.91 < 20 |only if walking
Follow the path down |goto 40.24,29.36 < 30 |only if walking
Follow the path down |goto 38.15,29.51 < 30 |only if walking
accept All Howl, No Bite##42067 |goto Stormheim/0 38.35,27.38
|tip You will accept this quest automatically.
step
clicknpc Chromadon##105842
|tip Chromadon has a special ability, attacks that do more then 250 damage will be blocked.
Defeat Chromadon |q 42067/1 |goto Stormheim/0 38.35,27.38
|next "Legion_World_Quest_Emissaries"
step
label quest-41948
Follow the path |goto Stormheim/0 70.74,60.35 < 20 |only if walking
Follow the path |goto 68.01,61.92 < 20 |only if walking
Follow the path |goto 64.03,63.37 < 10 |only if walking
Follow the path |goto Stormheim/0 60.89,65.29 < 30 |only if walking
Follow the stairs up |goto Stormheim/0 61.74,67.90 < 30 |only if walking
accept All Pets Go to Heaven##41948 |goto Stormheim/0 62.68,67.36
|tip You will accept this quest automatically.
step
talk Envoy of the Hunt##105512
Tell him "Let's do battle!"
Defeat Envoy of the Hunt |q 41948/1 |goto Stormheim/0 62.68,67.36
|next "Legion_World_Quest_Emissaries"
step
label quest-45439
Follow the path |goto 72.61,57.22 < 20 |only if walking
Follow the path |goto 78.29,57.06 < 25 |only if walking
accept An Invasion of... Murlocs?##45439 |goto 79.77,61.15
|tip You will accept this quest automatically.
step
kill Felbound Neophyte##116980+, Felbound Tidehunter##116981+, Shadowflame Imp##117019+, Demonic Instructor##117018+
Repel the Legion forces |q 45439/1 |goto 79.77,61.15
step
kill 1 Zemorath##117032
Defeat Zemorath |q 45439/2 |goto 80.54,61.83
|next "Legion_World_Quest_Emissaries"
step
label quest-43951
Follow the path |goto Stormheim/0 39.10,63.96 < 30 |only if walking
clicknpc Grapple Point##110334 |goto 42.88,64.85 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
accept An Overdue Debt##43951 |goto Stormheim/0 44.48,69.07
|tip You will accept this quest automatically.
step
click Prisoner Cages##247985
|tip They look like pointed grey metal cages around this area.
Rescue #6# Highmountain Prisoners |q 43951/1 |goto 44.48,69.07
|next "Legion_World_Quest_Emissaries"
step
label quest-41443
Follow the path |goto Stormheim/0 54.47,86.68 < 20 |only if walking
Follow the path |goto 53.55,82.71 < 20 |only if walking
Follow the path |goto 52.79,80.14 < 20 |only if walking
Follow the path |goto 50.60,76.73 < 20 |only if walking
Follow the path |goto 50.58,73.50 < 20 |only if walking
accept Ancient Leystone Deposits##41443 |goto 48.95,75.44
|tip You will accept this quest automatically.
step
click Ancient Leystone Deposit##247916
collect 10 Ancient Leystone Ore##141243 |q 41443/1 |goto 48.95,75.44
|next "Legion_World_Quest_Emissaries"
step
label quest-46006
Cross the bridge |goto Stormheim/0 40.05,62.78 < 15 |only if walking
Follow the path |goto 44.48,57.09 < 25 |only if walking
Follow the path |goto 41.85,53.06 < 25 |only if walking
accept Arkuthaz##46006 |goto Stormheim/0 39.16,53.21
|tip You will accept this quest automatically.
step
kill Arkuthaz##117065
Defeat Arkuthaz |q 46006/1 |goto 39.16,53.21 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41451
Follow the path |goto Stormheim/0 39.10,63.96 < 30 |only if walking
clicknpc Grapple Point##110334 |goto 42.88,64.85 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
accept Assault on Hrydshal##41451 |goto Stormheim/0 44.35,68.56
|tip You will accept this quest automatically.
stickystart "Slay_Drekirjar_Forces"
step
click Tideskorn Harpoon Launchers##258970
|tip Use the Grapple Points on top of the walls to get up to them.
Destroy #4# Harpoon Launchers |q 41451/2 |goto 44.26,68.43
step
label "Slay_Drekirjar_Forces"
Kill enemies around this area
Slay #15# Drekirjar Forces |q 41451/1 |goto Stormheim/0 44.35,68.56
|next "Legion_World_Quest_Emissaries"
step
label quest-46008
accept Balnazoth##46008 |goto Stormheim/0 51.77,33.58
|tip You will accept this quest automatically.
step
kill Balnazoth##117969
Defeat Balnazoth |q 46008/1 |goto Stormheim/0 51.77,33.58 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42025
Follow the path |goto Stormheim/0 52.97,31.29 < 30 |only if walking
Follow the path up |goto 56.46,30.19 < 20 |only if walking
accept Bareback Brawl##42025 |goto Stormheim/0 59.81,26.62
|tip You will accept this quest automatically.
step
Kill Storm's Reach enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Conquer Beasts or Slay Enemies |q 42025/1 |goto 59.84,26.43
|next "Legion_World_Quest_Emissaries"
step
label quest-45072
accept Barrels o' Fun##45072 |goto Stormheim/0 57.69,49.85
|tip You will accept this quest automatically.
step
click Barrel##2886
Game Completed |q 45072/1 |goto 57.71,50.17
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Legion_World_Quest_Emissaries"
step
label quest-41935
accept Beasts of Burden##41935 |goto Stormheim/0 62.10,52.09
|tip You will accept this quest automatically.
step
talk Rydyr##105386
Tell him "Let's do battle!"
Defeat Rydyr |q 41935/2 |goto Stormheim/0 62.04,52.03
step
talk Andurs##105387
Tell him "Let's do battle!"
Defeat Andurs |q 41935/1 |goto Stormheim/0 62.18,52.03
|next "Legion_World_Quest_Emissaries"
step
label quest-46010
accept Bonecrusher Korgolath##46010 |goto Stormheim/0 53.33,86.31
|tip You will accept this quest automatically.
step
kill Bonecrusher Korgolath##117959
Defeat Bonecrusher Korgolath |q 46010/1 |goto 53.31,86.37 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41534
Follow the path |goto Stormheim/0 49.54,35.61 < 25 |only if walking
accept Brambly Fjarnskaggl##41534 |goto Stormheim/0 47.54,39.68
|tip You will accept this quest automatically.
step
click Brambly Fjarnskaggl##248027
collect 10 Brambly Fjarnskaggl##140959 |q 41534/1 |goto 44.73,41.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41489
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept Brimstone Destroyer##41489 |goto 61.22,37.47
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41489/1 |goto 61.22,37.47 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41490
Follow the path |goto Stormheim/0 49.88,32.19 < 20 |only if walking
Follow the path |goto 48.34,30.00 < 15 |only if walking
Follow the path |goto 47.78,32.19 < 20 |only if walking
Follow the path |goto 46.75,32.99 < 20 |only if walking
accept Brimstone Destroyer##41490 |goto 44.57,37.02
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41490/1 |goto 44.57,37.02 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41336
accept Bristly Musken Hide##41336 |goto Stormheim/0 59.84,52.91
|tip You will accept this quest automatically.
step
kill Wild Plains Runehorn##107803+
|tip These can be found all around this area.
|tip Loot and skin them.
collect 12 Bristly Musken Hide##134812 |q 41336/1 |goto Stormheim/0 58.54,51.61
|next "Legion_World_Quest_Emissaries"
step
label quest-41938
Follow the path down |goto Stormheim/0 60.71,52.21 < 20 |only if walking
Follow the path down |goto 62.63,51.86 < 20 |only if walking
Follow the path |goto 64.03,48.52 < 30 |only if walking
accept Brothers of Skovald##41938 |goto Stormheim/0 66.18,47.86
|tip You will accept this quest automatically.
step
kill Voldgar##105436 |q 41938/2 |goto 66.95,40.56
step
kill Agnol##105440 |q 41938/3 |goto 66.84,45.69
step
kill Uldgar##105443 |q 41938/1 |goto 64.49,45.75
|next "Legion_World_Quest_Emissaries"
step
label quest-46011
Cross the bridge |goto Stormheim/0 42.77,59.20 < 15 |only if walking |only Horde
Follow the path |goto 40.03,62.78 < 15 |only if walking |only Horde
accept Colossal Infernal##46011 |goto Stormheim/0 38.02,66.60
|tip You will accept this quest automatically.
step
kill Colossal Infernal##117055
Defeat the Colossal Infernal |q 46011/1 |goto 38.02,66.60 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-46216
Follow the path |goto Stormheim/0 34.67,47.98 < 20 |only if walking
Follow the path |goto 37.38,44.51 < 25 |only if walking
Follow the path |goto 32.78,42.45 < 25 |only if walking
Follow the path |goto 34.97,39.73 < 25 |only if walking
Follow the path |goto 35.27,36.54 < 25 |only if walking
accept Congealed Corruption##46216 |goto 32.70,32.53
|tip You will accept this quest automatically.
stickystart "Congealed"
step
kill Amorphius##119123
Defeat Amorphius |q 46216/3 |goto 30.71,32.92
step
label "Congealed"
kill Congealed Felblight##119070+
collect #12# Fel Reaver Core Fragment##144402 |q 46216/1 |goto 32.70,32.53
kill Felbound Guardian##119155+, Filthy Scavenger##119143+
Kill #10# demons |q 46216/2 |goto 32.70,32.53
|next "Legion_World_Quest_Emissaries"
step
label quest-41984
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Go up the hill |goto 58.89,44.56 < 15 |only if walking
accept The Creeping Mists##41984 |goto Stormheim/0 59.93,43.99
|tip You will accept this quest automatically.
stickystart "Helmouth_Mistcallers"
step
kill Cursebound Captain##105710 |q 41984/2 |goto 61.03,41.80
step
label "Helmouth_Mistcallers"
kill 4 Helmouth Mistcaller##105502 |q 41984/1 |goto 59.93,43.99
|next "Legion_World_Quest_Emissaries"
step
label quest-46179
Follow the path |goto Stormheim/0 51.40,30.86 < 25 |only if walking
Follow the path |goto 51.85,28.29 < 25 |only if walking
Follow the path down |goto 51.28,25.00 < 20 |only if walking
accept Crushing the Legion##46179 |goto Stormheim/0 49.83,20.19
|tip You will accept this quest automatically.
stickystart "Crush"
step
clicknpc Heavy Fel Iron Hammer##116614
|tip These drop on the ground from Felguards.
|tip Use the extra action button that appears to smash Corrupters when standing near them.
Smash #6# Fel Corruptors |q 46179/1 |goto 49.83,20.19
step
label "Crush"
kill Felguard Sentry##116580+, Pit Hound##116527+
Kill #20# demons |q 46179/2 |goto 49.83,20.19
|next "Legion_World_Quest_Emissaries"
step
label quest-41950
Cross the bridge |goto Stormheim/0 40.07,62.75 < 15 |only if walking
accept Cry More Thunder##41950 |goto Stormheim/0 43.74,60.32
|tip You will accept this quest automatically.
step
talk Vethir##97979
Begin the Assault on Hrydshal |q 41950/1 |goto 43.74,60.32
step
Kill the enemies on the ground as you fly
|tip Use the abilities on your action bar.
|tip Use the Storm's Fury ability to kill the enemies that grapple onto you.
Slay #150# God-King's Minions |q 41950/2 |goto 45.35,70.18
step
Return to Hrydshal Overlook |q 41950/3 |goto 43.73,60.36
|next "Legion_World_Quest_Emissaries"
step
label quest-43745
accept Culling the Storm##43745 |goto Stormheim/0 88.53,11.46
|tip You will accept this quest automatically.
step
Follow the path up |goto Stormheim/0 90.56,9.90 < 10 |only if walking
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Grapple up |goto 89.03,10.18 < 10 |only if walking
kill 2 Tormented Skysunder##111397 |q 43745/1 |goto 88.53,11.46
|next "Legion_World_Quest_Emissaries"
step
label quest-42820
Follow the path |goto Stormheim/0 52.74,30.99 < 30 |only if walking
Follow the path down |goto 51.23,24.94 < 20 |only if walking
Follow the path down |goto 50.17,22.50 < 20 |only if walking
accept DANGER: Aegir Wavecrusher##42820 |goto Stormheim/0 52.40,23.82
|tip You will accept this quest automatically.
step
kill Aegir Wavecrusher##108885 |q 42820/1 |goto 52.40,23.82 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42861
Follow the path |goto Stormheim/0 34.32,49.08 < 20 |only if walking
Follow the path |goto 37.59,44.84 < 25 |only if walking
Follow the path |goto 32.78,42.44 < 25 |only if walking
Follow the path |goto 35.57,37.79 < 25 |only if walking
Follow the path |goto 33.39,32.32 < 25 |only if walking
accept DANGER: Boulderfall, the Eroded##42861 |goto 30.96,33.85
|tip You will accept this quest automatically.
step
kill Boulderfall, the Eroded##109113 |q 42861/1 |goto 30.96,33.85 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42864
Follow the path |goto Stormheim/0 60.66,52.14 < 20 |only if walking
Follow the path |goto 64.18,48.53 < 30 |only if walking
Follow the path |goto 66.67,48.87 < 30 |only if walking
Go down the stairs |goto 70.14,44.30 < 20 |only if walking
Enter the portal to Helheim |goto 73.54,39.53
accept DANGER: Captain Dargun##42864 |goto Helheim/0 72.09,19.12
|tip You will accept this quest automatically.
step
Follow the path down |goto 63.42,41.25 < 20 |walk
Follow the path |goto 68.03,32.33 < 20 |walk
Follow the path |goto 67.15,22.87 < 20 |walk
kill Captain Dargun##109163 |q 42864/1 |goto 72.09,19.12 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42785
Enter the cave |goto Stormheim/0 38.42,69.29 < 20 |walk
accept DANGER: Den Mother Ylva##42785 |goto Stormheim/0 38.58,70.56
|tip You will accept this quest automatically.
step
kill Den Mother Ylva##108790 |q 42785/1 |goto 38.58,70.56 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42806
Follow the path down |goto Stormheim/0 60.81,52.55 < 20 |only if walking
Follow the path |goto 65.23,54.56 < 30 |only if walking
accept DANGER: Fjorlag, the Grave's Chill##42806 |goto Stormheim/0 66.50,50.81
|tip You may need to run around this area to find the mob and to accept the quest.
|tip You will accept this quest automatically.
step
kill Fjorlag, the Grave's Chill##108827 |q 42806/1 |goto Stormheim/0 66.50,50.81 |future
|tip He spawns here but pats around this area.
|tip This is an elite enemy, you will need a group to defeat it.
|next "Legion_World_Quest_Emissaries"
step
label quest-42798
accept DANGER: Huntress Estrid##42798 |goto Stormheim/0 39.55,65.94
|tip You will accept this quest automatically.
step
kill Huntress Estrid##108822 |q 42798/1 |goto 39.55,65.94 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42964
Follow the path |goto Stormheim/0 70.74,60.35 < 20 |only if walking
Follow the path |goto 68.01,61.92 < 20 |only if walking
Follow the path |goto 64.03,63.37 < 10 |only if walking
Follow the path |goto 60.89,65.29 < 20 |only if walking
Follow the path |goto 60.91,68.13 < 30 |only if walking
accept DANGER: Lagertha##42964 |goto Stormheim/0 61.19,72.52
|tip You will accept this quest automatically.
step
kill Lagertha##109015 |q 42964/1 |goto Stormheim/0 62.27,73.41 |future
|tip This is an elite enemy and you will need a group to kill it.
|next "Legion_World_Quest_Emissaries"
step
label quest-42963
Follow the path |goto Stormheim/0 88.72,9.25 < 15 |only if walking
Follow the path |goto 86.38,7.68 < 25 |only if walking
Enter the tomb |goto 83.86,9.48 < 10 |only if walking
Follow the path |goto Stormheim/1 57.94,53.88 < 15 |only if walking
accept DANGER: Rulf Bonesnapper##42963 |goto 50.34,79.37
|tip You will accept this quest automatically.
step
kill Rulf Bonesnapper##109317 |q 42963/1 |goto 50.34,79.37 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42991
Follow the path up |goto Stormheim/0 90.62,10.07 < 20 |only if walking
Follow the path |goto 88.57,9.02 < 20 |only if walking
clicknpc Grapple Point##110334 |goto 86.77,6.66 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Grapple to the rock |goto 85.89,6.40 < 6 |c |only if walking
step
clicknpc Grapple Point##110334 |goto 85.72,6.38 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Grapple to the rock |goto 84.90,6.27 < 6 |c |only if walking
step
Follow the path |goto 83.82,6.47 < 20 |only if walking
Follow the path |goto 82.08,7.00 < 20 |only if walking
Follow the path |goto 80.59,6.42 < 20 |only if walking
Follow the path |goto 78.63,7.65 < 20 |only if walking
accept DANGER: Runeseer Sigvid##42991 |goto Stormheim/0 77.81,9.17
|tip You will accept this quest automatically.
step
kill Runeseer Sigvid##109318 |q 42991/1 |goto 77.81,9.17 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42953
Follow the path up |goto Stormheim/0 90.60,9.99 < 20 |only if walking
Follow the path |goto 88.66,9.15 < 20 |only if walking
Follow the path down |goto 87.16,7.90 < 30 |only if walking
Enter the tomb |goto 83.85,9.50 < 10 |walk
Follow the path |goto Stormheim/1 60.94,54.69 < 20 |walk
Go down the steps |goto 54.10,50.58 < 20 |walk
Follow the path |goto 55.47,39.83 < 10 |walk
accept DANGER: Soulbinder Halldora##42953 |goto 58.53,16.25
|tip You will accept this quest automatically.
step
kill Soulbinder Halldora##109195 |q 42953/1 |goto 58.53,16.25 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41444
Follow the path |goto Stormheim/0 35.19,47.20 < 25 |only if walking
Follow the path |goto 37.65,44.94 < 25 |only if walking
Follow the path |goto 32.83,42.39 < 25 |only if walking
accept Dark Leystone Deposits##41444 |goto 33.54,32.96
|tip You will accept this quest automatically.
step
click Dark Leystone Deposits##247917
collect 10 Dark Leystone Ore##141244 |q 41444/1 |goto 33.54,32.96
|next "Legion_World_Quest_Emissaries"
step
label quest-43710
Follow the path |goto Stormheim/0 60.66,52.14 < 20 |only if walking
Follow the path |goto 64.18,48.53 < 30 |only if walking
Follow the path |goto 66.67,48.87 < 30 |only if walking
accept Dark Runes##43710 |goto Stormheim/0 70.03,44.42
|tip You will accept this quest automatically.
step
click Dark Runes##252394
|tip They look like small grey spikes on the ground around this area.
Destroy #12# Dark Runes |q 43710/1 |goto 70.03,44.42
|next "Legion_World_Quest_Emissaries"
step
label quest-41459
Follow the path |goto Stormheim/0 35.25,47.14 < 25 |only if walking
Follow the path |goto 37.28,44.41 < 25 |only if walking
Follow the path |goto 41.12,35.73 < 25 |only if walking
Follow the path |goto 40.08,30.17 < 25 |only if walking
Follow the path |goto 36.86,26.88 < 25 |only if walking
Follow the path |goto 37.00,21.96 < 25 |only if walking
Follow the path |goto 36.26,17.19 < 25 |only if walking
accept Dense Leystone Outcropping##41459 |goto 34.14,13.01
|tip You will accept this quest automatically.
step
click Dense Leystone Outcropping##247941
collect 1 Dense Leystone Ore##141242 |q 41459/1 |goto 34.14,13.01
|next "Legion_World_Quest_Emissaries"
step
label quest-44893
Follow the path |goto Stormheim/0 72.50,57.41 < 25 |only if walking
Follow the path |goto 75.87,56.91 < 25 |only if walking
Follow the path |goto 79.31,59.47 < 25 |only if walking
Follow the path |goto 80.53,62.94 < 25 |only if walking
Drop down |goto 80.74,67.42 < 15 |only if walking
accept Direbeak Swarm!##44893 |goto 78.14,73.97
|tip You will accept this quest automatically.
step
kill Direbeak Nest##115680+, Young Direbeak##115678+, Direbeak Nest-Keeper##115663+, Direbeak Patriarch##115667+
Cull Direbeak Falcosaurs |q 44893/1 |goto 78.14,73.97
|next "Legion_World_Quest_Emissaries"
step
label quest-41794
accept Drakestalker##41794 |goto Stormheim/0 52.63,31.02
|tip You will accept this quest automatically.
step
kill Rampaging Squallhunter##30108+
collect 30 Stormwing Scale##136369 |q 41794/1 |goto 52.63,31.02
|next "Legion_World_Quest_Emissaries"
step
label quest-41949
Fly to Lorna's Watch |goto Stormheim/0 37.44,63.95 < 50 |c
step
clicknpc Grapple Point##110334 |goto Stormheim/0 44.90,77.93 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
accept The Drekirjar Return##41949 |goto Stormheim/0 45.29,80.65
|tip You will accept this quest automatically.
step
kill 9 Felskorn Pilferer##92128 |q 41949/2 |goto Stormheim/25 52.63,77.95
|tip They look like imps throughout the cave.
step
kill Felskorn Executioner##91566+
kill Felskorn Trapper##91244+
Slay #8# Drekirjar |q 41949/1 |goto Stormheim/0 43.40,81.90
|next "Legion_World_Quest_Emissaries"
step
label quest-42173
Follow the path |goto Stormheim/0 59.73,50.70 < 30 |only if walking
Cross the bridge |goto 56.77,51.09 < 20 |only if walking
Follow the path |goto 53.55,54.04 < 30 |only if walking
accept Electrosnack##42173 |goto Stormheim/0 49.57,56.84
|tip You will accept this quest automatically.
step
Kill enemies around this area
Use the Lightning Rod ability on their corpses
|tip It appears as a button on the screen.
Feed #20# Ravenous Stormwing Whelps |q 42173/1 |goto 49.57,56.84
|next "Legion_World_Quest_Emissaries"
step
label quest-43772
Follow the path |goto Stormheim/0 52.66,31.80 < 30 |only if walking
accept Enigmatic##43772 |goto Stormheim/0 55.21,31.82
|tip You will accept this quest automatically.
step
clicknpc Puzzle Box##126354
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43772/1 |goto 55.21,31.82
|next "Legion_World_Quest_Emissaries"
step
label quest-45786
Follow the path |goto Stormheim/0 34.67,47.98 < 20 |only if walking
Follow the path |goto 37.38,44.51 < 25 |only if walking
Drop down |goto 39.04,38.39 < 20 |only if walking
Drop down |goto 38.41,37.68 < 15 |only if walking
Enter the cave |goto 38.29,37.41 < 20 |walk
accept Feast of the Hounds##45786 |goto Stormheim/0 37.39,38.54
|tip You will accept this quest automatically.
step
click Legion Cage##267920
kill Hound of the Legion##118280+, Felguard Defender##118410+, Doomflame Cabalist##118415+
Repel the Legion forces |q 45786/1 |goto 37.39,38.54
|next "Legion_World_Quest_Emissaries"
step
label quest-46012
Follow the path |goto 74.12,56.88 < 25 |only if walking
accept Fel Commander Urgoz##46012 |goto Stormheim/0 76.21,57.72
|tip You will accept this quest automatically.
step
kill Fel Commander Urgoz##118006
Defeat Fel Commander Urgoz |q 46012/1 |goto 76.21,57.72 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41568
Follow the path |goto Stormheim/0 51.72,32.16 < 30 |only if walking
Follow the path |goto 51.96,28.93 < 30 |only if walking
Follow the path down |goto 51.27,25.01 < 20 |only if walking
Follow the path down |goto 50.15,22.54 < 20 |only if walking
Cross the water |goto 54.97,23.32 < 30 |only if walking
accept Felhide##41568 |goto Stormheim/0 58.92,20.72
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41568/1 |goto Stormheim/0 58.70,20.89 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41569
Follow the path |goto Stormheim/0 55.39,73.42 < 20 |only if walking
Cross the water |goto 60.77,73.35 < 20 |only if walking
accept Felhide##41569 |goto Stormheim/0 62.35,75.01
|tip You will accept this quest automatically.
step
Enter the cave |goto Stormheim/0 62.35,75.01
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41569/1 |goto Stormheim/0 63.33,74.82 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41570
Follow the water |goto Stormheim/0 33.84,53.01 < 20 |only if walking
Follow the water |goto 33.58,55.33 < 30 |only if walking
Enter the cave |goto Stormheim/0 32.90,55.72
|tip It's behind the waterfall.
accept Felhide##41570 |goto 32.62,55.84
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41570/1 |goto Stormheim/0 32.04,55.90 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41519
Follow the path |goto Stormheim/0 34.41,48.88 < 20 |only if walking
Follow the path |goto 36.12,46.55 < 20 |only if walking
Follow the path |goto 37.52,47.31 < 20 |only if walking
accept Felwort##41519 |goto Stormheim/0 36.67,49.12
|tip You will accept this quest automatically.
step
click Felwort##248009
collect Felwort##124106 |q 41519/1 |goto Stormheim/0 36.67,49.12
|next "Legion_World_Quest_Emissaries"
step
label quest-41521
Follow the path |goto Stormheim/0 61.02,52.53 < 25 |only if walking
Follow the path |goto 62.61,51.93 < 25 |only if walking
accept Felwort##41521 |goto 63.15,47.78
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41521/1 |goto 63.15,47.78
|next "Legion_World_Quest_Emissaries"
step
label quest-41520
Follow the path |goto 71.14,61.96 < 15 |only if walking
Follow the path |goto 72.63,62.43 < 20 |only if walking
accept Felwort##41520 |goto Stormheim/0 75.16,61.08
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41520/1 |goto 75.16,61.08
|next "Legion_World_Quest_Emissaries"
step
label quest-46013
Cross the bridge |goto Stormheim/0 56.77,51.09 < 20 |only if walking
Follow the path |goto 53.61,53.99 < 20 |only if walking
accept Firecaller Rok'duun##46013 |goto Stormheim/0 51.31,56.31
|tip You will accept this quest automatically.
step
kill Firecaller Rok'duun##117973
Defeat Firecaller Rok'duun |q 46013/1 |goto 51.31,56.31 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41296
accept Fjarnskaggl Cluster##41296 |goto Stormheim/0 54.35,31.34
|tip You will accept this quest automatically.
step
clicknpc Fjarnskaggl Cluster##104379
Gather the Fjarnskaggl Cluster |q 41296/1 |goto Stormheim/0 55.29,31.08
|next "Legion_World_Quest_Emissaries"
step
label quest-41547
Follow the path |goto 73.39,57.03 < 25 |only if walking
Cross the water |goto 79.49,56.98 < 25 |only if walking
accept Fjarnskaggl Cluster##41547 |goto Stormheim/0 83.02,56.19
|tip You will accept this quest automatically.
step
clicknpc Fjarnskaggl Cluster##104379
Gather the Fjarnskaggl Cluster |q 41547/1 |goto Stormheim/0 83.02,56.19
|next "Legion_World_Quest_Emissaries"
step
label quest-41299
Follow the path |goto Stormheim/0 38.69,64.53 < 25 |only if walking
Follow the path |goto 43.71,64.14 < 15 |only if walking
accept Flourishing Fjarnskaggl##41299 |goto 46.57,67.25
|tip You will accept this quest automatically.
step
click Flourishing Fjarnskaggl##247607
collect 10 Flourishing Fjarnskaggl##140958 |q 41299/1 |goto 46.57,67.25
|next "Legion_World_Quest_Emissaries"
step
label quest-46014
Follow the path |goto Stormheim/0 49.87,32.30 < 20 |only if walking
Follow the path |goto 48.32,30.02 < 20 |only if walking
Follow the path |goto 47.65,32.19 < 20 |only if walking
Follow the path down |goto 44.27,31.73 < 25 |only if walking
Follow the path down |goto 42.37,31.81 < 25 |only if walking
Follow the path down |goto 40.56,30.27 < 25 |only if walking
accept Gelthrog##46014 |goto Stormheim/0 39.83,28.13
|tip You will accept this quest automatically.
step
kill Gelthrog##117048 |q 46014/1 |goto 39.83,28.13 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41427
Follow the path |goto Stormheim/0 72.17,59.32 < 20 |only if walking
Follow the path |goto 74.17,56.72 < 30 |only if walking
Follow the path |goto 78.94,57.93 < 30 |only if walking
Follow the path |goto 81.00,63.90 < 20 |only if walking
Follow the shore |goto 79.83,70.18 < 30 |only if walking
Follow the shore |goto 77.90,79.54 < 30 |only if walking
accept Get Vrekt##41427 |goto Stormheim/0 73.09,88.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Rimescale Naga |q 41427/1 |goto 73.09,88.90
|next "Legion_World_Quest_Emissaries"
step
label quest-42004
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Go up the hill |goto 58.89,44.56 < 15 |only if walking
accept Ghostship##42004 |goto Stormheim/0 60.22,41.47
|tip You will accept this quest automatically.
step
click Ghostship##249002
Steal a Kvaldir ship |q 42004/1 |goto 60.22,41.47
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Purge the Helmouth |q 42004/2 |goto 56.45,42.19
|next "Legion_World_Quest_Emissaries"
step
label quest-42241
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: A Worthy Challenge##42241
|tip You will accept this quest automatically.
step
kill Volynd Stormbringer##106320 |q 42241/1
|tip You will find Volynd immediately after Hymdall.
step
kill Odyn##95676 |q 42241/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42243
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: Deeds of the Past##42243
|tip You will accept this quest automatically.
step
click Book of Exalted Deeds##249777
collect Book of Exalted Deeds##137110 |q 42243/1
step
kill Odyn##95676 |q 42243/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42240
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: Ponderous Poaching##42240
|tip You will accept this quest automatically.
step
kill Earlnoc the Beastbreaker##96647 |q 42240/1
|tip Earlnoc is located on the west side of the Field of the Eternal Hunt, just before Fenryr.
step
kill Odyn##95676 |q 42240/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42239
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: The Bear King##42239
|tip You will accept this quest automatically.
step
kill Arthfael##99802 |q 42239/1
|tip Arthfael is located on the south side of the Field of the Eternal Hunt, inside the cave.
step
kill Odyn##95676 |q 42239/2
|next "Legion_World_Quest_Emissaries"
step
label quest-43721
Follow the shore |goto Stormheim/0 90.29,12.46 < 20 |only if walking
Follow the shore |goto 88.89,15.42 < 20 |only if walking
accept The Helarjar Have Surfaced##43721 |goto Stormheim/0 86.87,15.01
|tip You will accept this quest automatically.
step
kill Helarjar Mystcaller##111325+, Helarjar Berserker##111332+, Hellarjar Soulhunter##111328+
|tip They can be found all around this area.
Slay 15 Helarjar Kvaldirs |q 43721/1 |goto Stormheim/0 85.09,10.89
|next "Legion_World_Quest_Emissaries"
step
label quest-44923
Follow the path |goto Stormheim/0 72.17,59.32 < 20 |only if walking
Follow the path |goto 74.17,56.72 < 30 |only if walking
Follow the path |goto 78.94,57.93 < 30 |only if walking
Follow the path |goto 81.00,63.90 < 20 |only if walking
Follow the shore |goto 79.83,70.18 < 30 |only if walking
Follow the shore |goto 77.90,79.54 < 30 |only if walking
accept Helarjar Landing: Vrekt##44923 |goto Stormheim/0 73.09,88.90
|tip You will accept this quest automatically.
stickystart "killHel"
step
Follow the path up |goto 73.41,87.61 < 20 |only if walking
kill Vaettfang##115846 |q 44923/2 |goto 73.74,86.67
step
label "killHel"
Kill enemies around this area
kill Cursed Sea Dog##116600+, Helhound##115026+, Mist Seer##116180+, Helarjar Marauder##116601+ |q 44923/1 |goto 73.09,88.90
|next "Legion_World_Quest_Emissaries"
step
label quest-42013
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept The Helmouth##42013 |goto 55.39,43.45
|tip You will accept this quest automatically.
step
Kill enemies around this area
Break the Kvaldir Forces |q 42013/1 |goto 55.39,43.45
|next "Legion_World_Quest_Emissaries"
step
label quest-41275
Cross the bridge |goto Stormheim/0 40.03,62.79 < 20 |only if walking
Jump down into the water |goto 44.73,60.66 < 10 |only if walking
accept Huge Stormrays##41275 |goto Stormheim/0 47.01,61.76
|tip You will accept this quest automatically.
step
Fish from the giant fishing pool |cast Fishing##131474
collect 10 Huge Stormray##134571 |q 41275/1 |goto Stormheim/0 47.01,61.76
|next "Legion_World_Quest_Emissaries"
step
label quest-41615
Follow the path |goto Stormheim/0 70.74,60.35 < 20 |only if walking
Follow the path |goto 68.01,61.92 < 20 |only if walking
Follow the path |goto 64.03,63.37 < 10 |only if walking
Follow the path |goto 60.89,65.29 < 20 |only if walking
Follow the path |goto 60.91,68.13 < 30 |only if walking
Follow the shore |goto 60.77,73.35 < 20 |only if walking
Swim down the river |goto 62.17,78.98 < 30 |only if walking
accept Huge Stormrays##41615 |goto Stormheim/0 62.57,81.02
|tip You will accept this quest automatically.
step
Fish from the giant fishing pool |cast Fishing##131474
collect 10 Huge Stormray##134571 |q 41615/1 |goto Stormheim/0 62.57,81.02
|next "Legion_World_Quest_Emissaries"
step
label quest-41614
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Follow the path |goto 55.22,45.96 < 25 |only if walking
accept Huge Stormrays##41614 |goto 53.89,47.83
|tip You will accept this quest automatically.
step
Fish from the Huge Fever of Stormrays |cast Fishing##131474
collect 10 Huge Stormray##134571 |q 41614/1
|next "Legion_World_Quest_Emissaries"
step
label quest-46015
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept Idra'zuul##46015 |goto 55.75,48.35
|tip You will accept this quest automatically.
step
kill Idra'zuul##117060
Defeat Idra'zuul |q 46015/1 |goto 55.75,48.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41944
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept Jarrun's Ladder##41944 |goto Stormheim/0 56.93,46.29
|tip You will accept this quest automatically.
step
talk Trapper Jarrun##105455
Tell him "Let's do battle!"
Defeat Trapper Jarrun |q 41944/1 |goto Stormheim/0 56.93,46.29
|next "Legion_World_Quest_Emissaries"
step
label quest-43769
accept Ley Race##43769 |goto Stormheim/0 35.80,70.14
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43769/1 |goto 35.80,70.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41506
Follow the path down |goto Stormheim/0 56.44,85.48
Follow the path down |goto 59.34,86.79
accept Leystone Basilisks##41506 |goto 58.18,87.69
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514
collect 40 Leystone-Encrusted Spike##134104 |q 41506/1 |goto 58.18,87.69
|tip Mine the basilisk corpses.
|next "Legion_World_Quest_Emissaries"
step
label quest-41505
Follow the path |goto Stormheim/0 72.50,57.41 < 25 |only if walking
Follow the path |goto 75.87,56.91 < 25 |only if walking
Follow the path |goto 79.31,59.47 < 25 |only if walking
Follow the path |goto 80.53,62.94 < 25 |only if walking
accept Leystone Basilisks##41505 |goto 80.39,66.52
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Mine the corpses.
collect 60 Leystone-Encrusted Spike##134104 |q 41505/1 |goto 80.39,66.52
|next "Legion_World_Quest_Emissaries"
step
label quest-41507
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept Leystone Basilisks##41507 |goto Stormheim/0 55.53,44.18
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Mine the corpses.
collect 60 Leystone-Encrusted Spike##134104 |q 41507/1 |goto 55.53,44.18
|next "Legion_World_Quest_Emissaries"
step
label quest-45049
Follow the path |goto Stormheim/0 39.62,63.29 < 30 |only if walking
Follow the path |goto 43.85,58.14 < 30 |only if walking
Follow the path |goto 41.49,53.02 < 30 |only if walking
Follow the path |goto 39.50,55.22 < 20 |only if walking
accept Like the Wind##45049 |goto 38.14,56.72
|tip You will accept this quest automatically.
step
Goal Reached |q 45049/1 |goto 40.61,62.29
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Legion_World_Quest_Emissaries"
step
label quest-41274
accept Lively Stormrays##41274 |goto 34.75,53.25
|tip You will accept this quest automatically.
step
Jump off the waterfall into the water |goto 35.64,54.45 < 15 |only if walking
|tip Avoid the rocks and broken boat below.
Fish from the Lively Stormray schools |cast Fishing##131474
collect 10 Lively Stormray##134570 |q 41274/1 |goto 36.34,55.98
|next "Legion_World_Quest_Emissaries"
step
label quest-41602
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Follow the path |goto 56.89,46.29 < 25 |only if walking
accept Lively Stormrays##41602 |goto 56.27,41.84
|tip You will accept this quest automatically.
step
Fish from the Lively Stormray schools |cast Fishing##131474
collect 10 Lively Stormray##134570 |q 41602/1 |goto 56.27,41.84
|next "Legion_World_Quest_Emissaries"
step
label quest-41603
Follow the path |goto Stormheim/0 69.18,61.52 < 25 |only if walking
Follow the path |goto 64.01,63.38 < 15 |only if walking
Follow the path |goto 60.96,65.32 < 25 |only if walking
accept Lively Stormrays##41603 |goto 58.03,68.25
|tip You will accept this quest automatically.
step
Fish from the Lively Stormray Schools |cast Fishing##131474
collect 10 Lively Stormray##134570 |q 41603/1 |goto 58.03,68.25
|next "Legion_World_Quest_Emissaries"
step
label quest-46016
Follow the path |goto Stormheim/0 34.62,48.12 < 20 |only if walking
Follow the path |goto 37.47,46.01 < 25 |only if walking
Follow the path |goto 39.12,44.28 < 25 |only if walking
accept Magdrezoth##46016 |goto Stormheim/0 37.43,41.84
|tip You will accept this quest automatically.
step
kill Magdrezoth##117038
Defeat Magdrezoth |q 46016/1 |goto 37.43,41.84 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43771
Follow the path |goto Stormheim/0 51.04,33.59 < 25 |only if walking
Follow the path |goto 48.74,36.31 < 25 |only if walking
clicknpc Grapple Point##110334 |goto 45.30,36.32 < 5 |only if walking
|tip It looks like a bit grey metal hook on the deck of the ship. |only if walking
clicknpc Grapple Point##110334 |goto 45.09,35.54 < 5 |only if walking
accept The Magic of Flight##43771 |goto 45.09,35.54
|tip You will accept this quest automatically.
step
clicknpc Arcane Artifact##110664
|tip The item is on top the the giant statue's axe.
|tip Jump up into a floating bubble and swim in the bubbles to reach the item.
Find the Item |q 43771/1 |goto 42.47,31.27
|next "Legion_World_Quest_Emissaries"
step
label quest-42780
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Maw of Souls: From Hell's Mouth##42780
|tip You will accept this quest automatically.
step
kill Plaguemaw##103045 |q 42780/1
|tip Plaguemaw is located in The Hold of the ship, before Harbaron.
step
kill Helya##96759 |q 42780/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42757
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Maw of Souls: Menace of the Seas##42757
|tip You will accept this quest automatically.
step
kill Soulfiend Tagerma##108494 |q 42757/1
|tip Soulfiend Tagerma is located in The Hold of the ship, before Harbaron.
step
kill Helya##96759 |q 42757/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42788
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Maw of Souls: Return of the Beast##42788
|tip You will accept this quest automatically.
step
kill Shroudseeker##103605 |q 42788/1
|tip Shroudseeker is located in The Hold of the ship, before Harbaron.
step
kill Helya##96759 |q 42788/2
|next "Legion_World_Quest_Emissaries"
step
label quest-40278
Follow the path |goto Stormheim/0 72.52,57.39 < 30 |only if walking
Follow the path |goto 75.89,56.93 < 30 |only if walking
accept My Beasts's Bidding##40278 |goto Stormheim/0 78.38,57.23
|tip You will accept this quest automatically.
step
talk Robert Craig##98270
Tell him "Let's do battle!"
Defeat Robert Craig |q 40278/1 |goto Stormheim/0 78.38,57.23
|next "Legion_World_Quest_Emissaries"
step
label quest-44943
Follow the path |goto Stormheim/0 52.82,30.88 < 30 |only if walking
Jump down into the water here |goto 54.81,27.62 |only if walking
accept Now That's Just Clawful!##44943
|tip You will accept this quest automatically.
step
Go up the path |goto Stormheim/0 55.01,24.73
clicknpc Murky's Egg##116538
|tip Its on the end of the ship handing over the water
Locate Murky's Egg |q 44943/1 |goto Stormheim/0 55.40,26.05
stickystart "Clamcrusher"
step
kill Clawspishus##116039 |q 44943/3 |goto Stormheim/0 61.36,20.34
step
label "Clamcrusher"
kill 10 Rockclaw Clamcrusher##116038 |q 44943/2 |goto Stormheim/0 58.21,20.92
|next "Legion_World_Quest_Emissaries"
step
label quest-41958
Follow the path |goto Stormheim/0 51.02,33.70 < 25 |only if walking
Follow the path |goto 49.48,36.10 < 25 |only if walking
Follow the path |goto 48.13,39.32 < 25 |only if walking
Follow the path |goto 48.28,40.86 < 15 |only if walking
accept Oh, Ominitron##41958 |goto 48.35,44.80
|tip You will accept this quest automatically.
step
clicknpc Ominitron Defense System##99880
Defeat the Ominitron Defense System |q 41958/1 |goto 48.35,44.80
|next "Legion_World_Quest_Emissaries"
step
label quest-43751
Follow the path down |goto Stormheim/0 60.65,52.12 < 20 |only if walking
Jump off the cliff into the water |goto 58.94,56.61 < 20 |only if walking
Swim towards the ship |goto 57.12,62.54 < 30 |only if walking
accept Oh, Ship!##43751 |goto Stormheim/0 54.77,65.86
|tip You will accept this quest automatically.
step
clicknpc Grapple Point##110334 |only if walking
|tip It looks like a bit grey metal hook on the deck of the ship. |only if walking
Grapple Aboard the Deathbringer |q 43751/1 |goto 54.77,65.86
step
kill Dread-Captain Graham##111760 |q 43751/2 |goto 54.59,65.27
step
click Plague Cistern##252826
|tip Jump off the ship after you click it.
Ignite the Powder Kegs |q 43751/3 |goto 54.95,66.01
|next "Legion_World_Quest_Emissaries"
step
label quest-43752
Follow the path |goto Stormheim/0 51.89,33.56 < 25 |only if walking
Follow the path down |goto 51.34,25.14 < 20 |only if walking
Follow the path |goto 51.23,22.23 < 20 |only if walking
Follow the path |goto 48.89,17.43 < 25 |only if walking
accept Oh, Ship!##43752 |goto 44.31,15.61
|tip You will accept this quest automatically.
step
clicknpc Grapple Point##110334 |only if walking
|tip It looks like a bit grey metal hook on the deck of the ship. |only if walking
Grapple Aboard the Deathbringer |q 43752/1 |goto 43.91,15.77
step
kill Captain Nuthals##8092 |q 43752/2 |goto 44.81,15.50
step
click Powder Keg##245346
|tip Jump off the ship after you click it.
Ignite the Powder Kegs |q 43752/3 |goto 44.19,15.72
|next "Legion_World_Quest_Emissaries"
step
label quest-41340
Follow the path |goto Stormheim/0 49.14,35.93 < 25 |only if walking
accept Perfect Storm Drake Scale##41340 |goto Stormheim/0 46.11,36.42
|tip You will accept this quest automatically.
step
kill Adult Squallhunter##99223, Juvenile Squallhunter##107258
|tip Skin the corpses.
collect 12 Perfect Storm Drake Scale##134814 |q 41340/1 |goto 46.11,36.42
|next "Legion_World_Quest_Emissaries"
step
label quest-43786
Follow the path down |goto Stormheim/0 60.67,52.18 < 20 |only if walking
Follow the path |goto 65.84,51.21 < 30 |only if walking
Enter Haustvald |goto Stormheim/0 68.77,46.51
accept Pesty Nests##43786 |goto Stormheim/0 69.55,45.45
|tip You will accept this quest automatically.
step
click Raven Nests##252690
|tip The nests are up on the rocks around this area.
|tip Use the Grapple Points to reach nests.
|tip The Grapple Points look like metal hooks up on the rocks around this area.
Remove #5# Raven Nests |q 43786/1 |goto 69.55,45.45
|next "Legion_World_Quest_Emissaries"
step
label quest-41535
Follow the path |goto Stormheim/0 72.50,57.41 < 25 |only if walking
Follow the path |goto 75.87,56.91 < 25 |only if walking
accept Prickly Fjarnskaggl##41535 |goto 79.93,61.92
|tip You will accept this quest automatically.
step
click Prickly Fjarnskaggl##248028
collect 10 Prickly Fjarnskaggl##140960 |q 41535/1 |goto 79.93,61.92
|next "Legion_World_Quest_Emissaries"
step
label quest-41460
Follow the path |goto Stormheim/0 62.56,52.15 < 30 |only if walking
Follow the path |goto 66.57,48.88 < 30 |only if walking
Follow the path |goto 70.81,47.40 < 30 |only if walking
Follow the path |goto 74.16,44.60 < 15 |only if walking
accept Primal Leystone Outcropping##41460 |goto 74.62,41.13
|tip You will accept this quest automatically.
step
click Primal Leystone Outcropping##247942
collect 1 Primal Leystone Ore##141245 |q 41460/1 |goto 74.62,41.13
|next "Legion_World_Quest_Emissaries"
step
label quest-41536
Follow the path |goto Stormheim/0 49.55,31.12 < 20 |only if walking
Follow the path up |goto 47.65,32.24 < 20 |only if walking
accept Pungent Fjarnskaggl##41536 |goto 46.52,31.96
|tip You will accept this quest automatically.
step
click Pungent Fjarnskaggl##248029
collect 10 Pungent Fjarnskaggl##140961 |q 41536/1 |goto 46.52,31.96
|tip These spawn in a huge radius. You may have to search around the area.
|next "Legion_World_Quest_Emissaries"
step
label quest-41925
Follow the path |goto Stormheim/0 60.66,52.14 < 20 |only if walking
Follow the path |goto 64.18,48.53 < 30 |only if walking
Follow the path |goto 66.67,48.87 < 30 |only if walking
Go down the stairs |goto 70.14,44.30 < 20 |only if walking
Enter the portal to Helheim |goto 73.54,39.53
accept Razing Hel##41925 |goto Helheim/0 62.92,29.39
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt Helya's Forces |q 41925/1 |goto 62.92,29.39
|next "Legion_World_Quest_Emissaries"
step
label quest-42177
Follow the path |goto Stormheim/0 72.50,57.38 < 30 |only if walking
Follow the path |goto 74.70,56.91 < 30 |only if walking
Follow the path |goto 78.26,57.05 < 30 |only if walking
accept Reclaiming Morheim##42177 |goto Stormheim/0 80.79,59.48
|tip You will accept this quest automatically.
stickystart "Slay_Murlocs_Reclaiming_Morheim"
step
clicknpc Stolen Vrykul Armaments##98518
|tip They look like wooden shields, spears, and axes on the ground around this area.
Destroy #3# Stolen Armaments |q 42177/2 |goto 80.63,60.03
step
label "Slay_Murlocs_Reclaiming_Morheim"
Kill enemies around this area
Slay #8# Murlocs |q 42177/1 |goto 80.79,59.48
|next "Legion_World_Quest_Emissaries"
step
label quest-41926
Follow the path |goto Stormheim/0 50.40,34.16 < 30 |only if walking
Follow the path |goto 48.45,39.01 < 30 |only if walking
Follow the path |goto 45.56,42.01 < 20 |only if walking
accept Returning Champion##41926 |goto Stormheim/0 43.92,46.53
|tip You will accept this quest automatically.
stickystart "Bloodtotem_Challengers"
stickystart "Mightstone_Challengers"
step
Kill Felskorn enemies around this area
Defeat #3# Felskorn Challengers |q 41926/3 |goto 43.92,46.53
step
label "Bloodtotem_Challengers"
Kill Bloodtotem enemies around this area
Defeat #3# Bloodtotem Challengers |q 41926/2 |goto 43.92,46.53
step
label "Mightstone_Challengers"
Kill Mightstone enemies around this area
Defeat #3# Mightstone Challengers |q 41926/1 |goto 43.92,46.53
|next "Legion_World_Quest_Emissaries"
step
label quest-42176
Follow the path up |goto Stormheim/0 37.94,65.57 < 30 |only if walking
accept Rise of Skovald##42176 |goto Stormheim/0 35.90,68.95
|tip You will accept this quest automatically.
stickystart "Defiant_Queensguards"
step
kill Queen Bretta##106587 |q 42176/2 |goto 35.69,69.58
step
label "Defiant_Queensguards"
kill 10 Defiant Queensguard##106568 |q 42176/1 |goto 35.85,68.95
|next "Legion_World_Quest_Emissaries"
step
label quest-41276
Follow the path |goto Stormheim/0 72.50,58.48 < 25 |only if walking
Follow the path |goto 74.71,56.82 < 25 |only if walking
accept Rocket Boot Fishing##41276 |goto 77.06,54.02
|tip You will accept this quest automatically.
step
talk Pazzo Gimbletorque##111617
|tip Get a pair of rocket boots.
collect 10 East Ocean Barracuda##134572 |q 41276/1 |goto 78.33,52.77
|tip Run into the jumping sharks to collect them.
|next "Legion_World_Quest_Emissaries"
step
label quest-41927
Follow the path |goto Stormheim/0 60.86,52.51 < 10 |only if walking
Follow the path |goto 62.60,51.87 < 30 |only if walking
accept Ruining the Runewood##41927 |goto 64.62,51.26
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Inkbinders |q 41927/1 |goto 64.62,51.26
|next "Legion_World_Quest_Emissaries"
step
label quest-43722
Follow the path up |goto Stormheim/0 90.62,10.07 < 20 |only if walking
Follow the path |goto 88.57,9.02 < 20 |only if walking
clicknpc Grapple Point##110334 |goto 86.77,6.66 < 10 |only if walking
|tip It's a grey hook. |only if walking
Grapple to the rock |goto 85.89,6.40 < 6 |c |only if walking
step
clicknpc Grapple Point##110334 |goto 85.72,6.38 < 10 |only if walking
|tip It's a grey hook. |only if walking
Grapple to the rock |goto 84.90,6.27 < 6 |c |only if walking
step
Follow the path |goto 83.82,6.47 < 20 |only if walking
Follow the path |goto 82.08,7.00 < 20 |only if walking
Follow the path |goto 80.59,6.42 < 20 |only if walking
Follow the path |goto 78.63,7.65 < 20 |only if walking
accept Sacred Bones##43722 |goto 77.45,7.59
|tip You will accept this quest automatically.
stickystart "Restless Warlords"
step
kill 3 Deathcaller Mystic## |q 43722/1 |goto Stormheim/0 78.26,8.46
|tip These are elite enemies and may require a group to defeat.
step
label "Restless Warlords"
kill 3 Restless Warlord##111338 |q 43722/2 |goto Stormheim/0 80.99,8.56
|tip These are elite enemies and may require a group to defeat.
|next "Legion_World_Quest_Emissaries"
step
label quest-42270
Follow the path up |goto Stormheim/0 49.04,31.28 < 20 |only if walking
Follow the path |goto 47.28,32.36 < 20 |only if walking
accept Scourge of the Skies##42270 |goto Stormheim/0 46.53,29.95
|tip You will accept this quest automatically.
step
kill Nithogg##107023 |q 42270/1 |goto 46.53,29.95 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Stay away from Static Sparks when they die. |only if grouprole("DAMAGE")
|tip Avoid standing in front of or behind Nithogg. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Avoid standing in front of or behind Nithogg. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Nithogg away from the raid. |only if grouprole("TANK")
_EVERYONE:_
|tip Every 20% health Nithogg loses, avoid standing in Crackling Jolt.
|next "Legion_World_Quest_Emissaries"
step
label quest-46017
accept Shel'drozul##46017 |goto Stormheim/0 62.29,57.17
|tip You will accept this quest automatically.
step
kill Shel'drozul##118013 |q 46017/1 |goto Stormheim/0 62.29,57.17 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42178
Follow the path up |goto Stormheim/0 32.84,51.78 < 20 |only if walking
accept Shock Absorber##42178 |goto Stormheim/0 32.34,51.96
|tip You will accept this quest automatically.
step
Follow the path up |goto 32.34,51.96 < 20 |only if walking
Follow the path up |goto 31.74,54.85 < 20 |only if walking
Enter the cave |goto 31.37,57.44 > 10000 |walk
Kill enemies around this area
|tip Walk on the electricity after you kill them.
Walk on Blue Lightning
|tip These are small patches of electricity on the ground throughout the cave.
Charge the Transponder |q 42178/1 |goto Stormheim/9 69.07,63.63
|next "Legion_World_Quest_Emissaries"
step
label quest-41300
Follow the path |goto Stormheim/0 65.20,54.55 < 25 |only if walking
Follow the path |goto 66.75,48.86 < 25 |only if walking
accept Singed Fjarnskaggl##41300 |goto 71.39,42.61
|tip You will accept this quest automatically.
step
click Singed Fjarnskaggl##247897
|tip They're burning in the braziers around the area.
collect 10 Singed Fjarnskaggl##135500 |q 41300/1 |goto 71.39,42.61
|next "Legion_World_Quest_Emissaries"
step
label quest-41555
Cross the bridge |goto Stormheim/0 56.80,51.08 < 20 |only if walking
Follow the path |goto 53.49,54.08 < 20 |only if walking
accept Slab of Bacon##41555 |goto Stormheim/0 52.31,58.88
|tip You will accept this quest automatically.
step
kill Well-Fed Musken##103786
collect Thick Slab of Bacon##135511 |q 41555/1 |goto Stormheim/0 52.61,59.56 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41556
Follow the path |goto Stormheim/0 34.00,49.95 < 20 |only if walking
Follow the path |goto 35.92,46.64 < 20 |only if walking
Follow the path |goto 37.14,45.47 < 20 |only if walking
Follow the path up |goto 35.16,45.56 < 20 |only if walking
accept Slab of Bacon##41556 |goto Stormheim/0 34.18,45.68
|tip You will accept this quest automatically.
step
kill Well-Fed Musken##103786
collect Thick Slab of Bacon##135511 |q 41556/1 |goto Stormheim/0 34.18,45.68 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41261
accept Slab of Bacon##41261 |goto Stormheim/0 53.92,28.40
|tip You will accept this quest automatically.
step
kill Well-Fed Musken##103786
collect Thick Slab of Bacon##135511 |q 41261/1 |goto 53.92,28.40 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41278
clicknpc Grapple Point##110334 |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Follow the path |goto 56.89,46.29 < 25 |only if walking
accept Slippery Stormrays##41278 |goto 56.09,40.45
|tip You will accept this quest automatically.
step
click Boom Bait##247875
collect 1 Boom Bait##135496 |q 41278/1 |goto 56.09,40.45
step
clicknpc Stunned Stormray##104322
|tip Use the special action button on your screen and target Slippery Stormray Schools in the water.
|tip The fish will land near your feet, so you can stand on land.
Collect #24# Stunned Stormrays |q 41278/2 |goto 56.09,40.45
|next "Legion_World_Quest_Emissaries"
step
label quest-41343
Follow the path |goto Stormheim/0 51.72,32.16 < 30 |only if walking
Follow the path |goto 51.96,28.93 < 30 |only if walking
Follow the path down |goto 51.27,25.01 < 20 |only if walking
Follow the path down |goto 50.15,22.54 < 20 |only if walking
Cross the water |goto 54.97,23.32 < 30 |only if walking
accept Solid Crabshell Fragment##41343 |goto Stormheim/0 59.39,20.50
|tip You will accept this quest automatically.
step
kill Crimson Rockshell##107667+
|tip Loot and Skin them.
collect 8 Solid Crabshell Fragment##134817 |q 41343/1 |goto Stormheim/0 59.39,20.50
|next "Legion_World_Quest_Emissaries"
step
label quest-45390
Follow the path |goto Stormheim/0 52.15,33.20 < 20 |only if walking
Follow the path |goto 54.49,31.29 < 20 |only if walking
Follow the path |goto 56.03,30.14 < 20 |only if walking
accept Souls of the Vrykul##45390 |goto Stormheim/0 59.81,28.13
|tip You will accept this quest automatically.
stickystart "souls"
step
kill Lord Kormag##117673
Defeat Lord Kormag |q 45390/2 |goto 63.55,24.90
step
label "souls"
click Soul Harvester##252049
kill Shadowdirge Soul Reaper##116823+, Shadowdirge Champion##117080+, Shadowdirge Soul Flayer##116825+
Destroy the Legion Soul Harvesing Operations |q 45390/1 |goto 59.81,28.13
|next "Legion_World_Quest_Emissaries"
step
label quest-42269
Follow the path up |goto Stormheim/0 90.60,9.94 < 20 |only if walking
Follow the path |goto 88.69,9.19 < 20 |only if walking
Follow the path down |goto 86.07,7.80 < 25 |only if walking
Enter the tomb |goto 83.86,9.49 < 10 |walk
Follow the path |goto Stormheim/1 63.95,55.58 < 15 |walk
Follow the path |goto 50.72,51.85 < 10 |walk
accept The Soultakers##42269 |goto 27.91,45.14
|tip You will accept this quest automatically.
step
kill Captain Hring##106981 |q 42269/1 |goto 27.91,45.14 |future
kill Reaver Jdorn##106982 |q 42269/3 |goto 27.91,45.14 |future
kill Soultrapper Mevra##106984 |q 42269/2 |goto 27.91,45.14 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip During Seadog's Scuttle, don't stand between Jdorn and his target. |only if grouprole("DAMAGE")
|tip Kill Cursed Crewman quickly. |only if grouprole("DAMAGE")
|tip Don't stand in rifts during Soul Rend. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip During Seadog's Scuttle, don't stand between Jdorn and his target. |only if grouprole("HEALER")
|tip Don't stand in rifts during Soul Rend. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip During Seadog's Scuttle, don't stand between Jdorn and his target. |only if grouprole("TANK")
|tip Pick up Cursed Crewman quickly. |only if grouprole("TANK")
|tip Don't stand in rifts during Soul Rend. |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-43827
Follow the path |goto Stormheim/0 60.25,53.61 < 20 |only if walking
Follow the path |goto 62.76,57.85 < 30 |only if walking
Follow the path |goto 60.25,53.61 < 20 |only if walking
Follow the path |goto 65.63,62.32 < 30 |only if walking
accept Stormwing the Portals##43827 |goto Stormheim/0 67.83,65.60
|tip You will accept this quest automatically.
step
Use the Stormforged Horn |use Stormforged Horn##129161
Destroy the North Portal |q 43827/1 |goto 70.04,64.01
step
Use the Stormforged Horn |use Stormforged Horn##129161
Destroy the East Portal |q 43827/2 |goto 69.76,66.44
step
Use the Stormforged Horn |use Stormforged Horn##129161
Destroy the South Portal |q 43827/3 |goto 68.46,69.90
|next "Legion_World_Quest_Emissaries"
step
label quest-41445
Follow the path |goto Stormheim/0 70.40,60.75 < 25 |only if walking
Follow the path |goto 67.98,61.92 < 25 |only if walking
Follow the path |goto 65.41,62.63 < 25 |only if walking
Follow the path |goto 63.08,61.70 < 10 |only if walking
Follow the path |goto 62.24,64.06 < 25 |only if walking
Follow the path |goto 60.91,65.34 < 25 |only if walking
accept Stormy Leystone Deposits##41445 |goto 58.45,67.39
|tip You will accept this quest automatically.
step
click Stormy Leystone Deposit##247918
collect 10 Stormy Leystone Ore##141240 |q 41445/1 |goto 58.45,67.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41442
accept Striking Leystone Deposits##41442 |goto 34.17,52.48
|tip You will accept this quest automatically.
step
click Striking Leystone Deposit##247915
collect 10 Striking Leystone Ore##141235 |q 41442/1 |goto 34.17,52.48
More deposits can be found here |goto Stormheim/0 31.78,54.64
|tip Even more can be found inside the cave nearby.
|next "Legion_World_Quest_Emissaries"
step
label quest-41298
accept Supplies Needed: Fjarnskaggl##41298 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Fjarnskaggl##124104
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Supplies Needed: Fjarnskaggl##41298 |goto 60.28,51.37
|next "Legion_World_Quest_Emissaries"
step
label quest-41317
accept Supplies Needed: Leystone##41317 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Supplies Needed: Leystone##41317 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41345
accept Supplies Needed: Stormscales##41345 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Supplies Needed: Stormscales##41345 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-46264
Cross the bridge |goto Stormheim/0 40.06,62.79 < 25 |only if walking
Follow the path |goto 42.92,59.03 < 20 |only if walking
accept Their Eyes Are Upon Us##46264 |goto 45.58,58.03
|tip You will accept this quest automatically.
step
click Legion Portal##267226
Disable #3# Legion portals |q 46264/1 |goto 45.58,58.03
clicknpc Observation Notes##119913
Burn #3# observation notes |q 46264/2 |goto 45.58,58.03
|next "Legion_World_Quest_Emissaries"
step
label quest-46021
Follow the path |goto Stormheim/0 62.65,51.77 < 25 |only if walking
Follow the path |goto 64.10,48.41 < 20 |only if walking
accept Thel'draz##46021 |goto Stormheim/0 66.05,43.82
|tip You will accept this quest automatically.
step
kill Thel'draz##118002 |q 46021/1 |goto 66.05,43.82 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41342
Follow the path |goto Stormheim/0 72.47,57.49 < 25 |only if walking
Follow the path |goto 71.40,55.41 < 25 |only if walking
Follow the path |goto 71.55,53.08 < 15 |only if walking
Follow the path |goto 72.07,51.86 < 15 |only if walking
accept Thick Bear Hide##41342 |goto 70.66,52.25
|tip You will accept this quest automatically.
step
kill Voracious Bear##93095
collect 12 Thick Bear Hide##134816 |q 41342/1 |goto 70.66,52.25
|next "Legion_World_Quest_Emissaries"
step
label quest-42183
Leave Greywatch |goto Stormheim/0 70.83,60.31 < 10 |only if walking
Follow the path up |goto 71.33,62.13 < 20 |only if walking
accept To Battle!##42183 |goto Stormheim/0 74.31,61.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Dread-Rider Forsaken |q 42183/1 |goto 74.31,61.20
|next "Legion_World_Quest_Emissaries"
step
label quest-42182
Leave Greywatch |goto Stormheim/0 70.83,60.31 < 10 |only if walking
Follow the path up |goto 71.33,62.13 < 20 |only if walking
accept To Battle!##42182 |goto Stormheim/0 74.31,61.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Dread-Rider Forsaken |q 42182/1 |goto 74.31,61.20
|next "Legion_World_Quest_Emissaries"
step
label quest-41930
Follow the path |goto Stormheim/0 60.25,53.61 < 20 |only if walking
Follow the path |goto Stormheim/0 62.76,57.85 < 30 |only if walking
Follow the path |goto Stormheim/0 65.63,62.32 < 30 |only if walking
accept Valor Calls##41930 |goto Stormheim/0 68.01,65.83
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the ability buttons on the screen to kill enemies faster.
click Tideskorn Banners##244704
|tip They look like brown strips of cloth hanging from walls around this area.
clicknpc Felblood Cups##97963
|tip They look like small white drinking cups sitting on objects around this area.
click Nether Circles##244733
|tip They look like green globe portals on the ground around this area.
Defend the Gates of Valor |q 41930/1 |goto 68.01,65.83
|next "Legion_World_Quest_Emissaries"
step
label quest-43963
Follow the path |goto Stormheim/0 72.47,57.44 < 30 |only if walking
accept Vampirates!##43963 |goto 72.58,54.99
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip You can find more on the ships in the water.
Collect #10# Stolen Artifacts |q 43963/1 |goto 72.58,54.99
|next "Legion_World_Quest_Emissaries"
step
label quest-41666
accept Vantus Rune Work Order: Nythendra##41666 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Nythendra>_
collect 1 Vantus Rune: Nythendra##128988
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Valdemar Stormseeker##106904
turnin Vantus Rune Work Order: Nythendra##41666 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-43454
Follow the path up |goto Stormheim/0 49.18,31.33 < 20 |only if walking
Follow the path up |goto 48.26,30.05 < 15 |only if walking
Follow the path |goto 47.35,32.33 < 20 |only if walking
Follow the path down |goto 45.37,31.13 < 20 |only if walking
Follow the path down |goto 44.12,32.02 < 20 |only if walking
Enter the cave |goto Stormheim/0 41.42,31.93
accept WANTED: Egyl the Enduring##43454 |goto Stormheim/0 41.55,32.62
|tip You will accept this quest automatically.
step
kill Egyl the Enduring##98188 |q 43454/1 |goto Stormheim/0 41.50,33.59 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43620
Follow the path up |goto Stormheim/0 49.18,31.33 < 20 |only if walking
Follow the path up |goto 48.26,30.05 < 15 |only if walking
Follow the path |goto 47.35,32.33 < 20 |only if walking
Follow the path down |goto 45.37,31.13 < 20 |only if walking
Follow the path down |goto 44.12,32.02 < 20 |only if walking
Enter the cave |goto Stormheim/0 41.42,31.93
accept WANTED: Egyl the Enduring##43620 |goto Stormheim/0 41.55,32.62
|tip You will accept this quest automatically.
step
kill Egyl the Enduring##98188 |q 43620/1 |goto Stormheim/0 41.50,33.59 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43434
Fly to Lorna's Watch |goto Stormheim/0 37.43,63.89 |c |only if walking
step
Follow the path |goto Stormheim/0 44.01,81.31 < 30 |only if walking
Grapple up here |goto Stormheim/0 45.93,82.54 < 10 |only if walking
accept WANTED: Fathnyr##43434 |goto Stormheim/0 46.80,84.01 |walk
|tip You will accept this quest automatically.
step
kill Fathnyr##91803 |q 43434/1 |goto 46.80,84.01 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43621
Fly to Lorna's Watch |goto Stormheim/0 37.43,63.89 |c |only if walking
step
Follow the path |goto Stormheim/0 44.01,81.31 < 30 |only if walking
Grapple up here |goto Stormheim/0 45.93,82.54 < 10 |only if walking
accept WANTED: Fathnyr##43621 |goto Stormheim/0 46.80,84.01 |walk
|tip You will accept this quest automatically.
step
kill Fathnyr##91803 |q 43621/1 |goto 46.80,84.01 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43436
Follow the path |goto Stormheim/0 39.25,63.83 < 30 |only if walking
clicknpc Grapple Point##110334 |goto 40.34,65.79 < 10 |only if walking
|tip It's the gray hook on the wall. |only if walking
accept WANTED: Glimar Ironfist##43436 |goto 41.48,66.66
|tip You will accept this quest automatically.
step
kill Glimar Ironfist##91529 |q 43436/1 |goto 41.48,66.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43622
Follow the path |goto Stormheim/0 39.25,63.83 < 30 |only if walking
clicknpc Grapple Point##110334 |goto 40.34,65.79 < 10 |only if walking
|tip It's the gray hook on the wall. |only if walking
accept WANTED: Glimar Ironfist##43622 |goto 41.48,66.66
|tip You will accept this quest automatically.
step
kill Glimar Ironfist##91529 |q 43622/1 |goto 41.48,66.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43453
Follow the path up |goto Stormheim/0 54.40,86.10 < 25 |only if walking
Follow the path |goto 53.51,83.60 < 20 |only if walking
Follow the path down |goto 52.97,81.40 < 20 |only if walking
Follow the path down |goto 51.78,80.05 < 20 |only if walking
Follow the path down |goto 50.66,76.71 < 20 |only if walking
accept WANTED: Hannval the Butcher##43453 |goto Stormheim/0 51.63,74.53
|tip You will accept this quest automatically.
step
kill Hannval the Butcher##107926 |q 43453/1 |goto 51.62,74.55 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43623
Follow the path up |goto Stormheim/0 54.40,86.10 < 25 |only if walking
Follow the path |goto 53.51,83.60 < 20 |only if walking
Follow the path down |goto 52.97,81.40 < 20 |only if walking
Follow the path down |goto 51.78,80.05 < 20 |only if walking
Follow the path down |goto 50.66,76.71 < 20 |only if walking
accept WANTED: Hannval the Butcher##43623 |goto Stormheim/0 51.73,74.63
|tip You will accept this quest automatically.
step
kill Hannval the Butcher##107926 |q 43623/1 |goto Stormheim/0 51.73,74.63 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43452
Follow the path |goto Stormheim/0 70.74,60.35 < 20 |only if walking
Follow the path |goto 68.01,61.92 < 20 |only if walking
Follow the path |goto 64.03,63.37 < 10 |only if walking
Follow the path |goto 61.01,64.36 < 20 |only if walking
accept WANTED: Isel the Hammer##43452 |goto Stormheim/0 61.67,61.19
|tip You will accept this quest automatically.
step
Enter the building |goto 61.87,60.80 < 10 |walk
kill Isel the Hammer##94413 |q 43452/1 |goto Stormheim/0 62.05,60.49 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43624
Follow the path |goto Stormheim/0 70.74,60.35 < 20 |only if walking
Follow the path |goto 68.01,61.92 < 20 |only if walking
Follow the path |goto 64.03,63.37 < 10 |only if walking
Follow the path |goto 61.01,64.36 < 20 |only if walking
accept WANTED: Isel the Hammer##43624 |goto Stormheim/0 61.67,61.19
|tip You will accept this quest automatically.
step
Enter the building |goto 61.87,60.80 < 10 |walk
kill Isel the Hammer##94413 |q 43624/1 |goto Stormheim/0 62.05,60.49 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43438
Follow the path down |goto Stormheim/0 60.67,52.18 < 20 |only if walking
Follow the path |goto 64.65,48.84 < 30 |only if walking
Follow the path |goto 66.04,43.82 < 30 |only if walking
accept WANTED: Nameless King##43438 |goto Stormheim/0 67.24,39.95
|tip You will accept this quest automatically.
step
click Offering Shrine##241568
kill The Nameless King##92763 |q 43438/1 |goto 67.24,39.95 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43625
Follow the path down |goto Stormheim/0 60.67,52.18 < 20 |only if walking
Follow the path |goto 64.65,48.84 < 30 |only if walking
Follow the path |goto 66.04,43.82 < 30 |only if walking
accept WANTED: Nameless King##43625 |goto Stormheim/0 67.24,39.95
|tip You will accept this quest automatically.
step
click Offering Shrine##241568
kill The Nameless King##92763 |q 43625/1 |goto 67.24,39.95 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43437
Follow the path |goto Stormheim/0 39.25,63.83 < 30 |only if walking
clicknpc Grapple Point##110334 |goto 40.34,65.79 < 10 |only if walking
|tip It's a grey hook on the wall. |only if walking
Follow the path |goto 42.05,67.73 < 20 |only if walking
Follow the path up |goto 43.51,69.68 < 20 |only if walking
Enter the building |goto Stormheim/0 41.82,71.28 < 15 |walk
accept WANTED: Thane Irglov##43437 |goto Stormheim/0 41.18,71.90
|tip You will accept this quest automatically.
step
kill Erling the Lightningborn##91893
kill Asger Jarlborn##91895
kill Strider Cuyler##91894
Watch the dialogue
kill Thane Irglov the Merciless##91892 |q 43437/1 |goto 40.81,72.25 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43626
Follow the path |goto Stormheim/0 39.25,63.83 < 30 |only if walking
clicknpc Grapple Point##110334 |goto 40.34,65.79 < 10 |only if walking
|tip It's a grey hook on the wall. |only if walking
Follow the path |goto 42.05,67.73 < 20 |only if walking
Follow the path up |goto 43.51,69.68 < 20 |only if walking
Enter the building |goto Stormheim/0 41.82,71.28 < 15 |walk
accept WANTED: Thane Irglov##43626
|tip You will accept this quest automatically.
step
kill Erling the Lightningborn##91893
kill Asger Jarlborn##91895
kill Strider Cuyler##91894
Watch the dialogue
kill Thane Irglov the Merciless##91892 |q 43626/1 |goto 40.81,72.25 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43450
Follow the path |goto Stormheim/0 59.61,50.64 < 30 |only if walking
Cross the bridge |goto 56.75,51.11 < 20 |only if walking
Follow the path |goto 51.07,54.67 < 30 |only if walking
Follow the path |goto 49.24,53.83 < 30 |only if walking
accept WANTED: Tiptog the Lost##43450 |goto Stormheim/0 45.70,49.90
|tip You will accept this quest automatically.
step
kill Tiptog the Lost##93166 |q 43450/1 |goto 45.87,49.64 |future
|tip He's a big ettin that walks around this area, so you may have to search for him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43627
Follow the path |goto Stormheim/0 59.61,50.64 < 30 |only if walking
Cross the bridge |goto 56.75,51.11 < 20 |only if walking
Follow the path |goto 51.07,54.67 < 30 |only if walking
Follow the path |goto 49.24,53.83 < 30 |only if walking
accept WANTED: Tiptog the Lost##43627 |goto Stormheim/0 45.70,49.90
|tip You will accept this quest automatically.
step
kill Tiptog the Lost##93166 |q 43627/1 |goto 45.87,49.64 |future
|tip He's a big ettin that walks around this area, so you may have to search for him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43451
Follow the path down |goto Stormheim/0 60.68,52.17 < 10 |only if walking
Drop down |goto 63.94,52.98 < 20 |only if walking
accept WANTED: Urgev the Flayer##43451 |goto Stormheim/0 64.84,51.74
|tip You will accept this quest automatically.
step
kill Urgev the Flayer##93401 |q 43451/1 |goto 64.84,51.74 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43628
Follow the path down |goto Stormheim/0 60.68,52.17 < 10 |only if walking
Drop down |goto 63.94,52.98 < 20 |only if walking
accept WANTED: Urgev the Flayer##43628 |goto Stormheim/0 64.84,51.74
|tip You will accept this quest automatically.
step
kill Urgev the Flayer##93401 |q 43628/1 |goto 64.84,51.74 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43598
Follow the path down |goto Stormheim/0 55.81,85.71 < 20 |only if walking
Follow the path down |goto 59.25,86.96 < 20 |only if walking
accept Warden Tower Assault: Blackhawk's Bulwark##43598 |goto Stormheim/0 61.62,91.89
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Blackhawks_Bulwark"
step
Slay the Gilneas Brigade Captain |q 43598/2 |goto 62.10,93.92
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Blackhawks_Bulwark"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 43598/1 |goto 61.62,91.89
|next "Legion_World_Quest_Emissaries"
step
label quest-43599
Follow the path down |goto Stormheim/0 55.81,85.71 < 20 |only if walking
Follow the path down |goto 59.25,86.96 < 20 |only if walking
accept Warden Tower Assault: Blackhawk's Bulwark##43599 |goto Stormheim/0 61.62,91.89
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Blackhawks_Bulwark"
step
Slay the Queensguard Captain |q 43599/2 |goto 62.10,93.92
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Blackhawks_Bulwark"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43599/1 |goto 61.62,91.89
|next "Legion_World_Quest_Emissaries"
step
label quest-43600
Follow the path |goto Stormheim/0 52.53,30.41 < 30 |only if walking
Follow the path |goto 51.74,26.32 < 30 |only if walking
accept Warden Tower Assault: Whisperwind's Citadel##43600 |goto Stormheim/0 47.15,21.74
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Whisperwinds_Citadel"
step
Slay the Gilneas Brigade Captain |q 43600/2 |goto 48.96,20.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Whisperwinds_Citadel"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 43600/1 |goto 47.15,21.74
|next "Legion_World_Quest_Emissaries"
step
label quest-43601
Follow the path |goto Stormheim/0 52.53,30.41 < 30 |only if walking
Follow the path |goto 51.74,26.32 < 30 |only if walking
accept Warden Tower Assault: Whisperwind's Citadel##43601 |goto Stormheim/0 47.15,21.74
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Whisperwinds_Citadel"
step
Slay the Queensguard Captain |q 43601/2 |goto 48.96,20.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Whisperwinds_Citadel"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43601/1 |goto 47.15,21.74
|next "Legion_World_Quest_Emissaries"
step
label quest-41497
accept Wild Leystone Seams##41497 |goto Stormheim/0 45.42,27.54
|tip You will accept this quest automatically.
|polish
step
click Wild Leystone Seam##247989
collect 6 Wild Leystone Ore##141241 |q 41497/1 |goto 45.42,27.54
|next "Legion_World_Quest_Emissaries"
step
label quest-41297
accept Work Order: Fjarnskaggl##41297 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Fjarnskaggl##124104
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Fjarnskaggl##41297 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41678
accept Work Order: Gunpack##41678 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Gunpack>_
collect 1 Gunpack##132513
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Gunpack##41678 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41313
accept Work Order: Leystone##41313 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Leystone##41313 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41636
accept Work Order: Leystone Breastplate##41636 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Breastplate>_
collect 1 Leystone Breastplate##123891
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Leystone Breastplate##41636 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41654
accept Work Order: Queen's Opal Loop##41654 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Queen's Opal Loop>_
collect 1 Queen's Opal Loop##136711
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Queen's Opal Loop##41654 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41648
accept Work Order: Silkweave Bracers##41648 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Bracers>_
collect 1 Silkweave Bracers##126994
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Silkweave Bracers##41648 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41660
accept Work Order: Skaggldrynk##41660 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Skaggldrynk>_
collect 5 Skaggldrynk##127840
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Skaggldrynk##41660 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41277
accept Work Order: Stormrays##41277 |goto Stormheim/0 60.36,50.98
|tip You will accept this quest automatically.
step
collect 40 Stormray##124110
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Stormrays##41277 |goto Stormheim/0 60.28,51.37
|next "Legion_World_Quest_Emissaries"
step
label quest-41344
accept Work Order: Stormscales##41344 |goto Stormheim/0 60.36,50.98
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Leatherworking or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Stormscales##41344 |goto Stormheim/0 60.28,51.37
|next "Legion_World_Quest_Emissaries"
step
label quest-41642
accept Work Order: Warhide Footpads##41642 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Warhide Footpads>_
collect 1 Warhide Footpads##128877
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Warhide Footpads##41642 |goto Stormheim/0 60.28,51.37
|next "Legion_World_Quest_Emissaries"
step
label quest-41672
accept Work Order: Word of Haste##41672 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Haste>_
collect 1 Enchant Ring - Word of Haste##128538
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Word of Haste##41672 |goto 60.26,51.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41936
Follow the path |goto Stormheim/0 70.77,60.34 < 20 |only if walking
Follow the path |goto 67.93,61.96 < 30 |only if walking
Follow the path |goto 64.09,63.37 < 20 |only if walking
Follow the path |goto 60.94,65.08 < 20 |only if walking
accept You Have Been Challenged##41936 |goto Stormheim/0 61.06,68.13
|tip You will accept this quest automatically.
step
Watch the dialogue
kill Bretta the Bold##105399
Defeat the Challenger |q 41936/1 |count 1 |goto 61.06,68.13
step
Watch the dialogue
kill Lafayla Mightblade##105432
Defeat the Challenger |q 41936/1 |count 2 |goto 61.06,68.13
step
Watch the dialogue
kill Silent Shale##105433
Defeat the Challenger |q 41936/1 |count 3 |goto 61.06,68.13
step
Watch the dialogue
kill Froijla Axebearer##105424
Defeat the Challenger |q 41936/1 |count 4 |goto 61.06,68.13
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Suramar World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=680,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-42859
accept A Draught of Hope##42859 |goto Suramar/0 47.46,81.97
|tip You will accept this quest automatically.
step
Follow the path |goto 48.84,83.60 < 20 |only if walking
Follow the path |goto 50.91,82.41 < 20 |only if walking
talk Ciele##109442
Obtain Arcwine from Ciele |q 42859/1 |goto 51.87,79.89
step
talk Nightborne Wretch##109409+
|tip All around this whole area, you will likely have to search for them.
Feed #8# Nightborne Wretches |q 42859/2 |goto 49.85,76.88
|next "Legion_World_Quest_Emissaries"
step
label quest-42969
accept A Spy in Our Midst##42969 |goto Suramar/0 47.46,81.97
|tip You will accept this quest automatically.
step
Hide at the Rendezvous Location |q 42969/1 |goto 46.16,75.04
|tip Upstairs inside the building.
step
Watch the dialogue
Follow the Nightborne Spy |q 42969/2 |goto 50.26,76.89
|tip Keep him in your sights as he walks, but don't follow too close.
|tip Stay out of the blue circle on the ground around him.
step
kill Lieutenant Piet##109408 |q 42969/3 |goto 50.42,77.24
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-42111
accept Aggressive Reconnaisance##42111 |goto Suramar/0 32.58,58.95
|tip You will accept this quest automatically.
step
Kill enemies around this area
kill Abhorrent Artificer##106339+
collect Legion Ammunition##141022 |n
click Fel Cannons##276245
|tip They look like big metal demon cannons around this area.
|tip You need Legion Ammunition to use them.
|tip Shoot the enemies flying in the air with the Fel Cannons.
Complete the Attack on Felsoul Hold |q 42111/1 |goto 31.73,63.65
|next "Legion_World_Quest_Emissaries"
step
label quest-43445
accept Air Superiority##43445 |goto Suramar/0 25.27,27.99
|tip You will accept this quest automatically.
step
clicknpc Moonfall Riding Hippogryph##110565
Kill the enemies on the ground as you fly
|tip Use the Unstable Mana ability on your action bar.
Slay #100# Nightborne |q 43445/1 |goto 27.43,21.83
|next "Legion_World_Quest_Emissaries"
step
label quest-43512
Follow the path |goto Suramar/0 34.14,54.10 < 25 |only if walking
Follow the path |goto 33.13,56.57 < 25 |only if walking
Follow the path down |goto 32.46,59.13 < 25 |only if walking
Follow the path |goto 32.08,63.67 < 25 |only if walking
accept Ana-Mouz##43512 |goto 31.11,65.96
|tip You will accept this quest automatically.
step
kill Ana-Mouz##109943 |q 43512/1 |goto 31.11,65.96 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Avoid standing in front of Ana-Mouz. |only if grouprole("DAMAGE")
|tip Kill Lesser Minions spawned by Gaseous Breath. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Avoid standing in front of Ana-Mouz. |only if grouprole("HEALER")
|tip Dispel Mother's Embrace. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Don't face Ana-Mouz towards the raid. |only if grouprole("TANK")
_EVERYONE:_
|tip Avoid standing in Fel Geyser.
|next "Legion_World_Quest_Emissaries"
step
label quest-44802
accept Ancient Guidance##44802 |goto Suramar/0 30.83,11.03
|tip You will accept this quest automatically.
step
Go up the stairs |goto 31.01,9.34 < 15 |only if walking
Go up the stairs |goto 31.71,8.15 < 15 |only if walking
Go up the stairs |goto 34.01,10.48 < 15 |only if walking
Follow the path |goto 36.68,12.57 < 15 |only if walking
Follow the path |goto 39.17,14.85 < 25 |only if walking
kill Vis'ileth##115881 |q 44802/1 |goto 41.44,18.42
|next "Legion_World_Quest_Emissaries"
step
label quest-41283
Follow the path |goto Suramar/0 25.29,28.06 < 25 |only if walking
Follow the path |goto 27.05,21.31 < 25 |only if walking
Follow the path |goto 24.55,19.88 < 25 |only if walking
accept The Angler Mangler##41283 |goto 25.87,15.81
|tip You will accept this quest automatically.
step
kill Gobo##104331 |q 41283/1 |goto 25.87,15.81 |future
|tip Gobo swims up and down the river.
|next "Legion_World_Quest_Emissaries"
step
label quest-43639
_Enter The Arcway Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept The Arcway: Arcanist Down##43639 |goto Suramar/0 41.08,61.73
|tip You will accept this quest automatically.
step
Rescue Arcanist Naran |q 43639/1
|tip As you enter the dungeon, take the left hallway, then one to the right.
step
kill Advisor Vandros##98208 |q 43639/2
|next "Legion_World_Quest_Emissaries"
step
label quest-43637
_Enter The Arcway Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept The Arcway: Clogged Drain##43637 |goto Suramar/0 41.08,61.73
|tip You will accept this quest automatically.
step
kill Sludge Face##111021 |q 43637/1 |goto The Arcway/1 47.87,82.32
|tip Sludge Face is directly south of the entrance on the other side of the dungeon.
step
kill Advisor Vandros##98208 |q 43637/2 |goto The Arcway/1 48.04,42.48
|next "Legion_World_Quest_Emissaries"
step
label quest-43640
_Enter The Arcway Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept The Arcway: Creeping Suspicions##43640 |goto Suramar/0 41.08,61.73
|tip You will accept this quest automatically.
step
kill Creepier Crate##98779
|tip You will encounter this NPC somewhere randomly in the dungeon.
collect 1 Nightforged Keystone##139618 |q 43640/1
|tip Currently, looting is a bit buggy. Loot the keystone quickly after killing.
step
kill Advisor Vandros##98208 |q 43640/2 |goto The Arcway/1 48.04,42.48
|next "Legion_World_Quest_Emissaries"
step
label quest-43638
_Enter The Arcway Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept The Arcway: Silver Serpent##43638 |goto Suramar/0 41.08,61.73
|tip You will accept this quest automatically.
step
kill Silver Serpent##111052 |q 43638/1
|tip You will encounter this NPC just inside the instance, where Advisor Vandros spawns.
step
kill Advisor Vandros##98208 |q 43638/2 |goto The Arcway/1 48.04,42.48
|next "Legion_World_Quest_Emissaries"
step
label quest-43641
_Enter The Arcway Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept The Arcway: Wandering Plague##43641 |goto Suramar/0 41.08,61.73
|tip You will accept this quest automatically.
step
kill The Rat King##111057 |q 43641/1 |goto The Arcway/1 38.07,48.13
|tip You will encounter this NPC just inside the instance, where Advisor Vandros spawns.
step
kill Advisor Vandros##98208 |q 43641/2 |goto The Arcway/1 48.04,42.48
|next "Legion_World_Quest_Emissaries"
step
label quest-44769
accept Arming the Populace##44769 |goto Suramar/0 52.07,79.12
|tip You will accept this quest automatically.
step
click Nightborne Arms Caches##266032
|tip They look like chests made of wood and metal on the ground all around this area.
collect Nightborne Armaments##142216 |n
Use the Nightborne Armaments near Rebellious Citizens |use Nightborne Armaments##142216
|tip They are all around this area.
Arm #6# Rebellious Citizens |q 44769/1 |goto 51.25,78.79
|next "Legion_World_Quest_Emissaries"
step
label quest-44780
Follow the path |goto Suramar/0 51.51,79.19 < 20 |only if walking
Follow the path |goto 50.03,79.90 < 15 |only if walking
Follow the path |goto 48.84,79.73 < 15 |only if walking
accept Backlash##44780 |goto 47.60,81.60
|tip You will accept this quest automatically.
step
kill Duskwatch Punisher##115806+, Vengeful Wrathguard##114876+, Wyrmtongue Pilferer##114874+
Avenge the Waning Crescent |q 44780/1 |goto 48.43,83.65
|next "Legion_World_Quest_Emissaries"
step
label quest-45068
accept Barrels o' Fun##45068 |goto Suramar/0 36.02,47.07
|tip You will accept this quest automatically.
step
click Barrel##2886
Game Completed |q 45068/1 |goto 36.02,47.07
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Legion_World_Quest_Emissaries"
step
label quest-43435
accept The Battle Rages On##43435 |goto Suramar/0 34.19,20.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the Summon Trap Rune ability that appears as a button on the screen.
|tip Lure enemies into the trap you place on the ground.
Slay #50# Nightborne Forces |q 43435/1 |goto 34.19,20.54
|next "Legion_World_Quest_Emissaries"
step
label quest-41493
Go up the path |goto Suramar/0 21.41,19.81
Continue up |goto 20.68,17.04
Follow the path |goto 22.12,13.44
accept Brimstone Destroyer##41493 |goto 24.45,10.87
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41493/1 |goto 24.45,10.87 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41492
Follow the path |goto Azsuna/0 64.18,31.07 < 25 |only if walking
Follow the path |goto 66.12,31.51 < 25 |only if walking
Follow the path |goto 67.53,33.00 < 25 |only if walking
Follow the path |goto 67.34,35.07 < 25 |only if walking
Follow the path |goto Suramar/0 24.81,88.80 < 25 |only if walking |notravel
Follow the path |goto 27.08,90.43 < 25 |only if walking
accept Brimstone Destroyer##41492 |goto 24.45,10.87
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41492/1 |goto 29.01,91.15 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41491
Follow the path |goto Suramar/0 32.57,48.48 |only if walking
Follow the path |goto 29.05,47.94 < 25 |only if walking
Follow the path |goto 25.56,52.01 < 25 |only if walking
Follow the path |goto 23.29,57.91 < 25 |only if walking
accept Brimstone Destroyer##41491 |goto 23.10,61.27
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41491/1 |goto 23.10,61.27 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41447
Follow the path |goto Suramar/0 26.46,34.39 < 25 |only if walking
Follow the path |goto 24.94,38.43 < 25 |only if walking
Follow the path |goto 23.93,42.05 < 25 |only if walking
accept Burning Felslate Deposits##41447 |goto Suramar/0 21.69,40.51
|tip You will accept this quest automatically.
step
click Burning Felslate Deposit##247924
collect 10 Burning Felslate##141250 |q 41447/1 |goto 21.69,40.51
|next "Legion_World_Quest_Emissaries"
step
label quest-41990
accept Chopped##41990 |goto Suramar/0 62.96,60.73
|tip You will accept this quest automatically.
step
talk Varenne##105674
Tell him "Let's do battle!"
Defeat Varenne |q 41990/1 |goto Suramar/0 62.96,60.73
|next "Legion_World_Quest_Emissaries"
step
label quest-45307
Follow the path down |goto Suramar/0 67.37,44.56 < 20 |only if walking
Follow the path |goto Suramar/0 69.66,47.91 < 30 |only if walking
accept Claws for Alarm!##45307 |goto Suramar/0 73.63,52.14
|tip You will accept this quest automatically.
step
Follow the water |goto 81.04,53.61 < 30 |only if walking
clicknpc Murky's Egg##116538
Locate Murky's Egg |q 45307/1 |goto 82.05,54.38
stickystart "Assault_Sashjtar_Ruins_Claws_For_Alarm_WQ"
step
Follow the path up |goto 82.14,56.05 < 20 |only if walking
Run down the stairs |goto 82.26,59.04 < 20 |only if walking
Follow the path |goto 81.74,60.70 < 20 |only if walking
kill Sashj'tar Culinarian##116489 |q 45307/2 |goto 83.56,61.63
step
label "Assault_Sashjtar_Ruins_Claws_For_Alarm_WQ"
Kill enemies around this area
|tip Use the abilities on your action bar to kill enemies.
Assault the Sashj'tar Ruins |q 45307/3 |goto 82.26,61.38
step
Stop Controlling Murky |outvehicle |c
|tip Click the yellow arrow on your action bar.
|tip Get to a safe place first.
|next "Legion_World_Quest_Emissaries"
step
label quest-41914
Enter the building |goto Suramar/0 59.36,43.01
accept Clear the Catacombs##41914 |goto Suramar/35 54.24,87.58
|tip You will accept this quest automatically.
step
Click the Ancient Catacomb Eggs
Defeat the Ancient Catacomb Egg |q 41914/1 |goto Suramar/35 54.24,87.58
|next "Legion_World_Quest_Emissaries"
step
label quest-42151
accept Clear the Skies##42151 |goto Suramar/0 32.48,59.11
|tip You will accept this quest automatically.
step
kill Abhorrent Artificer##106339+
collect Legion Ammunition##141022 |n
click Fel Cannons##276245
|tip They look like big metal machines around this area.
|tip You need Legion Ammunition to use the Fel Cannons.
|tip Use the abilities on your action bar to shoot at Sinister Shriekers flying in the sky.
Shoot Down #12# Sinister Shriekers |q 42151/1 |goto 31.89,63.71
|next "Legion_World_Quest_Emissaries"
step
label quest-44067
accept Consolidating Power##44067 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
Run through the bushes |goto 58.01,63.05 < 20 |only if walking
Use the Nightblade Pendant on Leleyna |use Nightblade Pendant##141253
kill Leleyna##112531 |q 44067/3 |goto 57.82,62.04
|tip Inside the building.
step
Use the Nightblade Pendant on Callus |use Nightblade Pendant##141253
kill Callus##112489 |q 44067/1 |goto 59.91,58.33
|tip Inside the building.
step
Follow the path |goto 60.75,61.30 < 30 |only if walking
Use the Nightblade Pendant on Garion |use Nightblade Pendant##141253
kill Garion##112530  |q 44067/2 |goto 61.93,60.92
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-44867
Follow the path |goto Suramar/0 64.59,44.54 < 25 |only if walking
Follow the path |goto 65.10,51.10 < 25 |only if walking
accept Contain their Advance##44867 |goto 66.29,54.85
|tip You will accept this quest automatically.
step
kill Scathing Felbeast##115755+, Felblade Protector##115738+, Felborne Marauder##115724+, Felborne Energist##116119+, Felborne Magus##115691+
Felborne Outpost Assaulted |q 44867/1 |goto 66.29,54.85
|next "Legion_World_Quest_Emissaries"
step
label quest-44816
Follow the path |goto Suramar/0 33.04,53.03 < 25 |only if walking
Follow the path |goto 33.10,56.69 < 25 |only if walking
accept Continued Exposure##44816 |goto 32.53,59.01
|tip You will accept this quest automatically.
step
Follow the path down |goto 32.53,59.01 < 15 |only if walking
Follow the path |goto 31.82,63.52 < 25 |only if walking
Follow the path |goto 30.78,69.21 < 25 |only if walking
Follow the path |goto 29.96,78.92 < 25 |only if walking
Follow the path |goto 32.92,82.24 < 25 |only if walking
clicknpc Volatile Fel##116084
|tip They look like green spheres floating in the air.
Use the targeting orb to expose Withered mobs to the fel |use Withered Targeting Orb##142509
Withered Exposed to Volatile Fel |q 44816/1 |goto 34.25,80.92
|next "Legion_World_Quest_Emissaries"
step
label quest-42769
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Press _I_ and queue for the Court of Stars or enter the dungeon with your group |goto Court of Stars/1 6.84,68.64 < 10000
accept Court of Stars: Bring Me the Eyes##42769 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
Run up the stairs |goto Court of Stars/1 55.49,65.09 > 10000 |walk
kill Velimar##108740 |q 42769/1 |goto Court of Stars/3 17.76,48.88
|tip Use the Court of Stars dungeon guide to accomplish this.
step
Run down the stairs |goto 12.80,39.23 < 15 |walk
Follow the path |goto 13.01,24.30 > 10000 |c
step
kill Advisor Melandrus##104218 |q 42769/2 |goto Court of Stars/3 65.85,78.15
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Legion_World_Quest_Emissaries"
step
label quest-42781
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Press _I_ and queue for the Court of Stars or enter the dungeon with your group |goto Court of Stars/1 6.84,68.64 < 10000
accept Court of Stars: Disarming the Watch##42781 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
collect 6 Duskwatch Weaponry##138432 |q 42781/1
|tip These are located all around the first floor of the dungeon.
|tip Make sure your group members help clear, as most are surrounded by enemies.
step
kill Advisor Melandrus##104218 |q 42781/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Legion_World_Quest_Emissaries"
step
label quest-42784
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Press _I_ and queue for the Court of Stars or enter the dungeon with your group |goto Court of Stars/1 6.84,68.64 < 10000
accept Court of Stars: The Deceitful Student##42784 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
kill Arcanist Malrodi##108796 |q 42784/1
|tip Avoid the Wild Magic explosions on the ground.
step
kill Advisor Melandrus##104218 |q 42784/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Legion_World_Quest_Emissaries"
step
label quest-42783
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Press _I_ and queue for the Court of Stars or enter the dungeon with your group |goto Court of Stars/1 6.84,68.64 < 10000
accept Court of Stars: They Bloom at Night##42783 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
click Cultivated Manabloom##251323
collect 9 Cultivated Manabloom##138435 |q 42783/1
|tip These are located around the courtyard in front of Talixae Flamewreath.
step
kill Advisor Melandrus##104218 |q 42783/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Legion_World_Quest_Emissaries"
step
label quest-42764
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Press _I_ and queue for the Court of Stars or enter the dungeon with your group |goto Court of Stars/1 6.84,68.64 < 10000
accept Court of Stars: Wraith in the Machine##42764 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
kill Ataxius##108701 |q 42764/1
|tip Ataxius is located in the building. Go up the long stairs northeast of Patrol Captain Gerdo.
step
kill Advisor Melandrus##104218 |q 42764/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Legion_World_Quest_Emissaries"
step
label quest-44856
Cross the bridge |goto Suramar/0 24.26,31.92 < 30 |only if walking
accept Cut the Cattitude##44856 |goto Suramar/0 22.40,30.22
|tip You will accept this quest automatically.
step
Chase Defiant Feathermoon Kittens
|tip They're running around on the ground all around this area.
|tip Position yourself and run towards the Defiant Feathermoon Kittens so that they run southwest to Yowlon.
|tip You can see Yowlon as a yellow circle on your minimap.
Herd #3# Lost Feathermane Kittens |q 44856/1 |goto 22.35,28.23
|next "Legion_World_Quest_Emissaries"
step
label quest-44113
Leave the water here |goto Suramar/0 52.82,74.34 < 20 |only if walking
Run onto the teleport pad |goto Suramar/0 53.12,71.47 < 10 |only if walking
Follow the path |goto Suramar/0 54.77,72.45 < 20 |only if walking
accept DANGER: Achronos##44113 |goto Suramar/0 55.82,73.97
|tip You will accept this quest automatically.
step
kill Achronos##112705 |q 44113/1 |goto 56.24,74.65 |future
|tip Up on the walkway.
|next "Legion_World_Quest_Emissaries"
step
label quest-44118
accept DANGER: Auditor Esiel##44118 |goto Suramar/0 57.05,67.71
|tip You will accept this quest automatically.
step
kill Auditor Esiel##112758 |q 44118/1 |goto Suramar/0 57.05,67.71 |future
|tip You will need a group to kill him.
|next "Legion_World_Quest_Emissaries"
step
label quest-44121
accept DANGER: Az'jatar##44121 |goto Suramar/0 80.70,60.72
|tip You will accept this quest automatically.
step
kill Az'jatar##112759 |q 44121/1 |goto 81.32,62.73 |future
|tip This is a group quest, you will likely need help to kill him.
|next "Legion_World_Quest_Emissaries"
step
label quest-41697
Follow the path |goto Suramar/0 33.11,52.91 < 25 |only if walking
Follow the path |goto 29.89,53.68 < 25 |only if walking
Follow the path |goto 27.53,53.74 < 25 |only if walking
accept DANGER: Colerian, Alteria, and Selenyi##41697 |goto 24.40,54.36
|tip You will accept this quest automatically.
step
kill Colerian##104519, Alteria##104521, Selenyi##104522 |q 41697/1 |goto 24.40,54.36 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44114
Follow the path |goto Suramar/0 50.09,79.96 < 20 |n |only if walking
Follow the path |goto Suramar/0 49.39,80.50 < 20 |n |only if walking
Run up the stairs |goto Suramar/0 48.56,79.15 < 20 |n |only if walking
Cross the water |goto Suramar/0 47.59,77.22 < 20 |n |only if walking
Run up the stairs |goto Suramar/0 46.57,76.31 < 20 |c |q 44114 |future
step
Run up the stairs |goto 46.95,77.60 < 20 |only if walking
Continue up the stairs |goto 46.60,78.04 < 20 |only if walking
Cross the bridge |goto 46.32,76.60 < 20 |only if walking
Follow the path |goto 47.42,76.38 < 20 |only if walking
accept DANGER: Magistrix Vilessa##44114 |goto 48.30,77.53
|tip You will accept this quest automatically.
step
kill Magistrix Vilessa##112757 |q 44114/1 |goto 49.65,79.48 |future
|tip She walks around on the roof of the building.
|tip You may need help to kill her.
|next "Legion_World_Quest_Emissaries"
step
label quest-42799
accept DANGER: Oglok the Furious##42799 |goto Suramar/0 66.97,55.54
|tip You will accept this quest automatically.
step
kill Oglok the Furious##105899 |q 42799/1 |goto 66.97,55.54 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42797
accept DANGER: Scythemaster Cil'raman##42797 |goto Suramar/33 60.02,58.32
|tip You will accept this quest automatically.
step
kill Scythemaster Cil'raman##105728 |q 42797/1 |goto 60.02,58.32 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44122
Enter the cave |goto Suramar/0 29.09,84.43 < 10 |walk
Follow the path |goto 28.32,87.17 < 10 |walk
accept DANGER: Sorallus##44122 |goto Suramar/0 27.20,86.73
|tip You will accept this quest automatically.
step
Run down the stairs |goto 27.06,87.13 < 7 |walk
Follow the path |goto 27.12,88.61 < 7 |walk
Run down the stairs |goto 27.57,89.28 < 7 |walk
Follow the path |goto 28.38,89.27 < 5 |walk
kill Sorallus##112756 |q 44122/1 |goto 29.35,88.91 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44119
accept DANGER: Volshax, Breaker of Will##44119 |goto Suramar/0 49.20,58.45
|tip You will accept this quest automatically.
step
kill Volshax, Breaker of Will##112760 |q 44119/1 |goto 49.21,58.40 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41446
accept Darkened Felslate Deposits##41446 |goto Suramar/0 30.92,29.26
|tip You will accept this quest automatically.
step
click Darkened Felslate Deposit##247923
collect Darkened Felslate##141249 |q 41446/1 |goto 30.86,29.10
|next "Legion_World_Quest_Emissaries"
step
label quest-44801
accept Defending Shal'aran##44801 |goto Suramar/0 34.07,49.34
|tip You will accept this quest automatically.
stickystart "Slay_Duskwatch_Forces_Defend_ShalAran"
step
Follow the path up |goto 32.93,48.35 < 20 |only if walking
kill Duskrider Silaryn##117155 |q 44801/2 |goto 30.88,53.56
step
label "Slay_Duskwatch_Forces_Defend_ShalAran"
Kill Duskwatch enemies around this area
|tip Starving Felstalkers will also give credit for the quest.
Slay #12# Duskwatch Forces |q 44801/1 |goto 31.69,53.18
|next "Legion_World_Quest_Emissaries"
step
label quest-43778
Cross the bridge |goto Suramar/0 43.59,35.22 < 25 |only if walking
Follow the path |goto 44.90,31.73 < 20 |only if walking
accept Enigmatic##43778 |goto Suramar/0 43.23,29.88
|tip You will accept this quest automatically.
step
clicknpc Puzzle Box##126354
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43778/1 |goto 43.46,30.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41347
Follow the path |goto Suramar/0 34.19,50.86 < 25 |only if walking
Follow the path |goto 33.26,52.89 < 20 |only if walking
Follow the path down |goto 32.75,58.78 < 20 |only if walking
Follow the path |goto 31.89,63.59 < 20 |only if walking
Follow the path down |goto 31.62,68.59 < 25 |only if walking
Follow the path down |goto 30.26,74.95 < 25 |only if walking
accept Extra-Rancid Felhound Hide##41347 |goto 29.75,81.10
|tip You will accept this quest automatically.
step
Follow the path down |goto 29.65,81.16 < 20 |only if walking
kill Felsoul Ravener##108314+
|tip Skin the corpses.
collect 12 Extra-Rancid Felhound Hide##134819 |q 41347/1 |goto 32.91,76.90
|next "Legion_World_Quest_Emissaries"
step
label quest-42089
accept The Fallen Ones##42089 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
stickystart "Kill_Fal'dorei"
step
Carefully jump down into the water |goto Suramar/0 21.16,42.92 > 10000 |only if walking
kill Webbed Victim##105676+
|tip They look like squirming white cocoons on the around this area.
Free #6# Webbed Victims |q 42089/2 |goto Suramar/33 46.56,43.32
step
label "Kill_Fal'dorei"
Kill Fal'dorei enemies around this area
Kill #10# Fal'dorei |q 42089/1 |goto Suramar/33 46.56,43.32
|next "Legion_World_Quest_Emissaries"
step
label quest-41573
Follow the path |goto Suramar/0 64.41,43.13 < 25 |only if walking
Follow the path |goto 67.41,44.64 < 25 |only if walking
Follow the path |goto 69.65,47.93 < 25 |only if walking
Follow the path |goto 71.35,47.03 < 25 |only if walking
accept Felhide##41573 |goto 73.99,48.43
|tip You will accept this quest automatically.
step
Follow the path |goto 75.01,49.19 < 25 |only if walking
Follow the path |goto 72.58,47.22 < 25 |only if walking
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41573/1 |goto 73.56,47.46 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41572
Follow the path |goto Suramar/0 32.91,47.17 < 25 |only if walking
Follow the path |goto 34.53,42.43 < 25 |only if walking
Follow the path |goto 32.88,40.16 < 25 |only if walking
Follow the path |goto 33.62,39.26 < 18 |only if walking
Follow the path |goto 32.98,34.61 < 25 |only if walking
Follow the path |goto 35.15,30.23 < 25 |only if walking
accept Felhide##41572 |goto 36.84,30.30
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41572/1 |goto 36.84,30.30 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41571
Follow the path |goto Suramar/0 41.95,78.15 < 20 |only if walking
Follow the path down |goto 38.49,66.89 < 25 |only if walking
Follow the path |goto 33.78,65.43 < 25 |only if walking
Follow the path |goto 30.68,69.37 < 25 |only if walking
Follow the path |goto 30.28,79.40 < 25 |only if walking
accept Felhide##41571 |goto 34.54,81.79
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41571/1 |goto 34.54,81.79 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41508
accept Felslate Basilisks##41508 |goto Suramar/0 31.99,54.70
|tip You will accept this quest automatically.
step
kill Felslate Basilisk##114113+
clicknpc Felslate Basilisk##114113
|tip Mine the basilisk corpses.
collect Felslate-Encrusted Spike##134105 |q 41508/1 |goto 31.99,54.70
|next "Legion_World_Quest_Emissaries"
step
label quest-41352
Follow the path |goto Suramar/0 34.14,54.10 < 25 |only if walking
Follow the path |goto 33.13,56.57 < 25 |only if walking
Follow the path down |goto 32.46,59.13 < 25 |only if walking
Follow the path |goto 32.08,63.67 < 25 |only if walking
Follow the path down |goto 30.53,69.66 < 25 |only if walking
Follow the path |goto 30.28,79.47 < 25 |only if walking
Follow the path |goto 35.67,78.51 < 25 |only if walking
accept Felslate Basilisks##41352 |goto 33.22,76.04
|tip You will accept this quest automatically.
step
kill Felslate Basilisk##114113+
|tip Mine the corpses.
collect 60 Felslate-Encrusted Spike##134105 |q 41352/1
|next "Legion_World_Quest_Emissaries"
step
label quest-41522
Follow the path |goto Suramar/0 32.92,47.16 < 25 |only if walking
Follow the path |goto 31.14,41.93 < 25 |only if walking
Follow the path |goto 31.71,36.32 < 25 |only if walking
accept Felled Experiment##41522 |goto Suramar/0 33.26,33.34
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41522/1 |goto Suramar/0 33.26,33.34
|next "Legion_World_Quest_Emissaries"
step
label quest-41523
Follow the path |goto Suramar/0 33.10,52.95 < 20 |only if walking
Follow the path down |goto 32.65,58.84 < 25 |only if walking
Follow the path |goto 31.91,63.55 < 25 |only if walking
Follow the path |goto 33.16,66.54
Follow the path |goto 30.65,69.36
Follow the path |goto 30.15,79.16
accept Felwort##41523 |goto Suramar/0 32.66,81.31
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41523/1 |goto 32.66,81.31
|next "Legion_World_Quest_Emissaries"
step
label quest-41524
Follow the path |goto Suramar/0 63.58,43.03 < 20 |only if walking
Follow the path |goto 59.79,41.76 < 30 |only if walking
Follow the path |goto 57.00,43.52 < 25 |only if walking
accept Felled Experiment##41524 |goto 57.36,45.82
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41524/1 |goto 57.36,45.82
|next "Legion_World_Quest_Emissaries"
step
label quest-43930
accept Fiends of Tel'anor##43930 |goto Suramar/0 45.91,40.65
|tip You will accept this quest automatically.
stickystart "Slay_Disturbed_Spirits"
step
Kill Cliffclutch enemies around this area
Slay #8# Harpies |q 43930/1 |goto 45.61,36.58
step
label "Slay_Disturbed_Spirits"
Kill Disturbed enemies around this area
Slay #10# Disturbed Spirits |q 43930/2 |goto 45.61,36.58
|next "Legion_World_Quest_Emissaries"
step
label quest-41304
Follow the path |goto Suramar/0 64.87,57.76 < 25 |only if walking
accept Flourishing Starlight Roses##41304 |goto 67.11,57.25
|tip You will accept this quest automatically.
step
click Flourishing Starlight Rose##247608
collect 10 Flourishing Starlight Rose Petals##140989 |q 41304/1 |goto 67.11,57.25
|next "Legion_World_Quest_Emissaries"
step
label quest-40337
Follow the path |goto Suramar/0 33.02,53.00 < 25 |only if walking
Follow the path |goto 30.30,53.55 < 25 |only if walking
Follow the path |goto 25.85,55.11 < 25 |only if walking
Follow the path |goto 24.30,59.20 < 25 |only if walking
Drop down to the ledge below |goto 24.77,62.79 < 25 |only if walking
accept Flummoxed##40337 |goto 25.20,62.49
|tip You will accept this quest automatically.
step
talk Master Tamer Flummox##97709
Tell him "Let's do battle!"
Defeat Master Tamer Flummox |q 40337/1 |goto 25.20,62.49
|next "Legion_World_Quest_Emissaries"
step
label quest-43932
accept Forces of Oppression##43932 |goto Suramar/0 48.45,76.36
|tip You will accept this quest automatically.
step
Kill enemies around this area
Assault the Guards and Demons |q 43932/1 |goto 48.45,76.36
|next "Legion_World_Quest_Emissaries"
step
label quest-42209
accept Freeing the Taken##42209 |goto Suramar/0 46.03,64.99
|tip You will accept this quest automatically.
step
kill Duskwatch Scion##108096+
collect 4 Control Orb##138301 |n
click Containment Fields##266959
|tip They look like purple bubble cages around this area.
Free #4# Prisoners |q 42209/1 |goto 47.91,65.39
|next "Legion_World_Quest_Emissaries"
step
label quest-41448
Follow the path |goto Suramar/0 34.14,54.10 < 25 |only if walking
Follow the path |goto 33.13,56.57 < 25 |only if walking
Follow the path down |goto 32.46,59.13 < 25 |only if walking
Follow the path |goto 32.08,63.67 < 25 |only if walking
accept Heavy Felslate Deposits##41448 |goto Suramar/0 31.13,65.97
|tip You will accept this quest automatically.
step
click Heavy Felslate Deposit##247925
collect 10 Heavy Felslate##141251 |q 41448/1 |goto 31.13,65.97
|next "Legion_World_Quest_Emissaries"
step
label quest-44811
accept Help on the Way##44811 |goto Suramar/0 49.26,77.22
|tip You will accept this quest automatically.
step
click The Magistrix Will Fall!##266285
|tip They are bright yellow scrolls located on the side of buildings.
Serve #8# notices |q 44811/1 |goto 48.25,76.71
|next "Legion_World_Quest_Emissaries"
step
label quest-42071
accept Honoring the Past##42071 |goto Suramar/0 45.63,42.65
|tip You will accept this quest automatically.
step
click Ancient Monument##253095
|tip They look like stone stools on the ground around this area.
Activate #10# Monuments |q 42071/1 |goto 45.50,36.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41617
Follow the path |goto Suramar/0 26.16,29.85 < 25 |only if walking
Follow the path |goto 28.69,29.79 < 8 |only if walking
Follow the path |goto 29.30,28.83 < 8 |only if walking
Follow the path |goto 31.21,28.23 < 15 |only if walking
Follow the path |goto 32.56,26.87 < 25 |only if walking
accept Huge Runescale Koi##41617 |goto 34.41,25.60
|tip You will accept this quest automatically.
step
Fish from the Huge Runescale Koi School |cast Fishing##131474
collect 10 Huge Runescale Koi##134574 |q 41617/1 |goto 34.41,25.60
|next "Legion_World_Quest_Emissaries"
step
label quest-41616
accept Huge Runescale Koi##41616 |goto Suramar/0 22.54,33.01
|tip You will accept this quest automatically.
step
Fish from the Huge Runescale Koi School |cast Fishing##131474
collect 10 Huge Runescale Koi##134574 |q 41616/1 |goto 22.54,33.01
|next "Legion_World_Quest_Emissaries"
step
label quest-41280
Follow the path |goto Suramar/0 36.57,45.45 < 20 |only if walking
accept Huge Runescale Koi##41280 |goto Suramar/0 35.08,41.22
|tip You will accept this quest automatically.
step
Fish from the Huge Runescale Koi School |cast Fishing##131474
collect 10 Huge Runescale Koi##134574 |q 41280/1 |goto 35.08,41.22
|next "Legion_World_Quest_Emissaries"
step
label quest-44805
accept In the Thick of It##44805 |goto Suramar/0 61.05,45.11
|tip You will accept this quest automatically.
stickystart "Troops"
step
Follow the path |goto 63.00,44.55 < 25 |only if walking
Follow the path |goto 60.66,46.40 < 25 |only if walking
Enter the building |goto 60.19,47.83 < 15 |walk
kill Captain Fiora##116223 |q 44805/2 |goto Suramar/0 60.61,48.24
step
label "Troops"
kill Nightborne Trapper##100778+, Felborne Torturer##116225+, Felborne Punisher##116218+ |q 44805/1 |goto 61.05,45.11
|next "Legion_World_Quest_Emissaries"
step
label quest-41538
Follow the path |goto Suramar/0 32.39,48.57 < 25 |only if walking
Follow the path |goto 29.05,45.75 < 30 |only if walking
Follow the path |goto 26.20,47.15 < 25 |only if walking
accept Iridescent Starlight Roses##41538 |goto 24.42,46.59
|tip You will accept this quest automatically.
step
click Starlight Rose##244778
collect 10 Iridescent Starlight Rose Petals##140991 |q 41538/1 |goto 24.42,46.59
|next "Legion_World_Quest_Emissaries"
step
label quest-42169
accept Left for Dead##42169 |goto Suramar/0 28.90,81.69
|tip You will accept this quest automatically.
step
clicknpc Prison Shackles##102450
|tip They look like gray columns with Nightfallen standing next to them inside this cave.
Free #8# Shackled Nightfallen |q 42169/1 |goto 28.90,81.69
|next "Legion_World_Quest_Emissaries"
step
label quest-44813
Follow the path |goto Suramar/0 63.43,43.51 < 25 |only if walking
Follow the path |goto 58.39,48.03 < 20 |only if walking
Follow the path |goto 54.70,46.05 < 25 |walk
Follow the path |goto Suramar/22 40.73,74.72
accept Ley Line Interference##44813 |goto Suramar/22 40.73,74.72
|tip You will accept this quest automatically.
step
Use the Leysight Spectacles |use Leysight Spectacles##142446
Gain the Leysight Spectacles buff |havebuff 133023
step
Follow the path |goto Suramar/22 40.73,74.72 < 15 |only if walking
clicknpc Ley Line Siphon##116061
Destroy the Southwest Syphon |q 44813/2 |goto 29.86,67.61
step
Follow the path down |goto 35.71,43.07 < 15 |only if walking
clicknpc Ley Line Siphon##116061
Destroy the Northwest Syphon |q 44813/4 |goto 45.22,21.22
step
Follow the path |goto 48.43,28.84 < 8 |only if walking
clicknpc Ley Line Siphon##116061
Destroy the Central Syphon |q 44813/5 |goto 53.74,23.67
step
clicknpc Ley Line Siphon##116061
Destroy the Southwest Syphon |q 44813/3 |goto 59.35,38.03
step
Follow the path up |goto 62.52,42.99 < 8 |only if walking
Follow the path |goto 62.00,56.66 < 15 |only if walking
clicknpc Ley Line Siphon##116061
Destroy the Southeast Syphon |q 44813/1 |goto 58.70,82.81
|next "Legion_World_Quest_Emissaries"
step
label quest-43774
accept Ley Race##43774 |goto Suramar/0 31.79,46.70
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43774/1 |goto 31.79,46.70
|next "Legion_World_Quest_Emissaries"
step
label quest-43583
accept Life Finds a Way##43583 |goto Suramar/0 51.85,59.71
|tip You will accept this quest automatically.
step
Run up the stairs |goto 52.01,57.58 < 20 |only if walking
Follow the path |goto 51.58,54.42 < 20 |only if walking
Follow the path |goto 50.16,52.58 < 20 |only if walking
Enter the cave |goto 47.87,52.29 < 15 |walk
clicknpc Su'esh##111062
Release Su'esh |q 43583/1 |goto 46.99,53.06
step
Follow the path |goto 50.21,52.62 < 15 |walk
|tip Use the abilities on your action bar to kill enemies.
Escape the Menagerie |q 43583/2 |goto 52.08,56.14
step
Kill enemies around this area
|tip Use the abilities on your action bar to kill enemies.
Assault the Court of Stars |q 43583/3 |goto 54.22,58.01
|tip Click the yellow arrow button on your action bar to stop controlling Su'esh when you are finished.
|tip You will be taken to a safe place.
|next "Legion_World_Quest_Emissaries"
step
label quest-44744
accept Lifelines##44744 |goto Suramar/0 47.45,81.97
|tip You will accept this quest automatically.
step
Cross the bridge |goto 48.38,80.46 < 20 |only if walking
Run up the stairs |goto 48.49,79.06 < 20 |only if walking
Follow the path |goto 49.34,76.27 < 20 |only if walking
Follow the path |goto 49.85,74.84 < 20 |only if walking
Kill enemies around this area
Defend the Arcwine Distribution |q 44744/1 |goto 49.27,71.30
|next "Legion_World_Quest_Emissaries"
step
label quest-45032
Follow the path |goto Suramar/0 30.97,9.45 < 25 |only if walking
Follow the path |goto 32.75,9.19 < 10 |only if walking
Follow the path |goto 36.73,12.62 < 25 |only if walking
Follow the path |goto 40.40,16.58 < 25 |only if walking
accept Like the Wind##45032 |goto 41.21,21.40
|tip You will accept this quest automatically.
step
Goal Reached |q 45032/1 |goto 40.87,21.38
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Legion_World_Quest_Emissaries"
step
label quest-41279
Follow the path |goto Suramar/0 34.83,50.52 < 25 |only if walking
Follow the path |goto 36.78,52.83 < 20 |only if walking
accept Lively Runescale Koi##41279 |goto 37.42,55.66
|tip You will accept this quest automatically.
step
Fish from the Lively Runescale Koi schools |cast Fishing##131474
collect 10 Lively Runescale Koi##134573 |q 41279/1 |goto 37.42,55.66
|next "Legion_World_Quest_Emissaries"
step
label quest-41605
accept Lively Runescale Koi##41605 |goto Suramar/0 24.45,29.73
|tip You will accept this quest automatically.
step
Fish from the Lively Runescale Koi schools |cast Fishing##131474
collect 10 Lively Runescale Koi##134573 |q 41605/1 |goto 24.45,29.73
|next "Legion_World_Quest_Emissaries"
step
label quest-41604
Follow the path |goto Suramar/0 43.63,35.12 < 20 |only if walking
Go up the stairs |goto 44.95,31.34 < 15 |only if walking
accept Lively Runescale Koi##41604 |goto Suramar/0 45.67,28.70
|tip You will accept this quest automatically.
step
Fish from the Lively Runescale Koi schools |cast Fishing##131474
collect 10 Lively Runescale Koi##134573 |q 41604/1 |goto 45.67,28.70
|next "Legion_World_Quest_Emissaries"
step
label quest-41537
accept Lively Starlight Roses##41537 |goto Suramar/0 62.64,57.93
|tip You will accept this quest automatically.
step
click Lively Starlight Rose##248030
collect 10 Lively Starlight Rose Petals##140990 |q 41537/1 |goto 62.64,57.93
|next "Legion_World_Quest_Emissaries"
step
label quest-43777
accept The Magic of Flight##43777 |goto Suramar/0 38.52,23.69
|tip You will accept this quest automatically.
step
Follow the path down |goto 38.81,24.54 < 15 |only if walking
clicknpc Arcane Artifact##110664
|tip The item is floating under the bridge.
|tip Jump up into a floating bubble and swim in the bubble to reach the item.
Find the Item |q 43777/1 |goto 38.47,23.53
|next "Legion_World_Quest_Emissaries"
step
label quest-41931
Follow the path |goto Suramar/0 24.44,32.07 < 25 |only if walking
Follow the path |goto 22.69,30.51 < 25 |only if walking
Follow the path |goto 20.99,32.70 < 25 |only if walking
accept Mana Tap##41931 |goto 19.95,35.26
|tip You will accept this quest automatically.
step
Click Surging Mana Crystal##0
Defeat the Manafiends |q 41931/1 |goto 19.95,35.26
|next "Legion_World_Quest_Emissaries"
step
label quest-41895
accept The Master of Pets##41895 |goto Suramar/0 51.99,54.89
|tip You will accept this quest automatically.
step
talk Aulier##105250
Tell him "Let's do battle!"
Defeat Aulier |q 41895/1 |goto Suramar/0 51.99,54.89
|next "Legion_World_Quest_Emissaries"
step
label quest-42880
accept Meeting their Quota##42880 |goto Suramar/0 60.66,56.59
|tip You will accept this quest automatically.
step
talk Vintner Iltheux##109202
|tip Inside the building.
Speak with Vintner Iltheux |q 42880/1 |goto 60.66,56.59
step
Produce Unfortified Arcwine |q 42880/2 |goto 60.52,56.50
|tip Click the 3 objects on the table when Vintner Iltheux tells you to add certain ingredients.
|tip Jump repeatedly in the tub nearby when she tells you to.
|next "Legion_World_Quest_Emissaries"
step
label quest-43513
Follow the path |goto Suramar/0 25.19,32.79 < 25 |only if walking
Follow the path |goto 25.73,37.91 < 25 |only if walking
Follow the path |goto 23.15,39.86 < 20 |only if walking
Follow the path |goto 21.09,39.06 < 20 |only if walking
Follow the path |goto 19.44,41.44 < 20 |only if walking
Drop off the ledge into the water |goto 20.39,42.16 < 10 |only if walking
Enter the tunnels |goto Suramar/33 46.56,42.76 < 200 |noway |c
step
Follow the path |goto 40.18,42.24 < 15 |only if walking
Follow the path |goto 44.85,55.14 < 15 |only if walking
Follow the path |goto 41.18,68.30 < 15 |only if walking
accept Na'zak the Fiend##43513 |goto 41.18,68.30
|tip You will accept this quest automatically.
step
kill Na'zak the Fiend##110321 |q 43513/1 |goto 35.32,66.43 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Avoid standing infront of Na'zak during Corroding Spray. |only if grouprole("DAMAGE")
|tip Collect rubble on the ground before Na'zak can absorb them. |only if grouprole("DAMAGE")
|tip Free allies by attacking Web Wrap. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Avoid standing infront of Na'zak during Corroding Spray. |only if grouprole("HEALER")
|tip Collect rubble on the ground before Na'zak can absorb them. |only if grouprole("HEALER")
|tip Be prepared for big heals during Ley Infusion. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Na'zak away from the raid during Corroding Spray. |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-41305
Follow the path |goto Suramar/0 32.85,53.46 < 25 |only if walking
Follow the path |goto 35.00,58.81 < 25 |only if walking
accept Nightborne Herb Trader##41305 |goto Suramar/0 38.40,61.59
|tip You will accept this quest automatically.
step
kill Gloryndel##104344
|tip He patrols a very small area.
collect 1 Gloryndel's Satchel##135502 |q 41305/1 |goto 38.41,61.55
|next "Legion_World_Quest_Emissaries"
step
label quest-44934
_Enter The Nighthold raid:_
|tip You must complete this on normal difficulty or higher.
accept The Nighthold: Creepy Crawlers##44934 |goto Suramar/0 44.15,59.74
|tip You will accept this quest automatically.
step
kill Kar'zun##116008 |q 44934/1
|tip Kar'zun is directly upstairs from Trilliax.
|next "Legion_World_Quest_Emissaries"
step
label quest-44937
_Enter The Nighthold raid:_
|tip You must complete this on normal difficulty or higher.
accept The Nighthold: Focused Power##44937 |goto Suramar/0 44.15,59.74
|tip You will accept this quest automatically.
step
kill Nightwell Diviner##116395
Kill #2# Nightwell Diviners |q 44937/1
|next "Legion_World_Quest_Emissaries"
step
label quest-44935
_Enter The Nighthold raid:_
|tip You must complete this on normal difficulty or higher.
accept The Nighthold: Gilded Guardian##44935 |goto Suramar/0 44.15,59.74
|tip You will accept this quest automatically.
step
kill Gilded Guardian##112712 |q 44935/1
|tip Gilded Guardian patrols a hallway near Spellblade Aluriel.
|next "Legion_World_Quest_Emissaries"
step
label quest-44938
_Enter The Nighthold raid:_
|tip You must complete this on normal difficulty or higher.
accept The Nighthold: Love Tap##44938 |goto Suramar/0 44.15,59.74
|tip You will accept this quest automatically.
step
kill Wily Sycophant##117240
Eliminate Elisande's Private Attendants |q 44938/1
|tip These are found in proximity to Elisande, the final boss of the Nightspire wing.
|next "Legion_World_Quest_Emissaries"
step
label quest-44939
_Enter The Nighthold raid:_
|tip You must complete this on normal difficulty or higher.
accept The Nighthold: Seeds of Destruction##44939 |goto Suramar/0 44.15,59.74
|tip You will accept this quest automatically.
step
kill Doomlash##115853 |q 44939/1
|tip Doomlash is located in front of High Botanist Tel'arn.
|next "Legion_World_Quest_Emissaries"
step
label quest-44936
_Enter The Nighthold raid:_
|tip You must complete this on normal difficulty or higher.
accept The Nighthold: Supply Routes##44936 |goto Suramar/0 44.15,59.74
|tip You will accept this quest automatically.
step
kill Flightmaster Volnath##116004 |q 44936/1
|tip Flightmaster Volnath patrols a hallway near Spellblade Aluriel.
|next "Legion_World_Quest_Emissaries"
step
label quest-44857
Cross the bridge |goto Suramar/0 24.33,31.99 < 30 |only if walking
Follow the road |goto Suramar/0 21.74,29.12 < 30 |only if walking
Follow the path |goto Suramar/0 19.06,25.55 < 30 |only if walking
accept Not There, Not Then, Not Forever##44857 |goto Suramar/0 18.98,23.74
|tip You will accept this quest automatically.
step
Kill Darkfiend enemies around this area
collect Satyr Horn##137189+ |n
|tip You need these to destroy the totems.
Use the Satyr Horns next to Darkfiend Totmes |use Satyr Horn##137189
|tip They look like white totem poles with red cratches in them around this area.
Purify the Corruption |q 44857/1 |goto 18.99,23.31
|next "Legion_World_Quest_Emissaries"
step
label quest-42106
accept Party Crasher##42106 |goto Suramar/0 52.99,71.66
|tip You will accept this quest automatically.
step
talk Eo'vyn##112288
Speak with Eo'vyn |q 42106/1 |goto 52.99,71.66
step
talk Eo'vyn##112288
collect Flask of Arcflame##140346 |goto 52.99,71.66 |q 42106
step
Use the Flask of Arcflame on Pleasure Boats |use Flask of Arcflame##140346
|tip They look like large boats docked around this area.
|tip Aim the green circle to be on the deck of the ship.
Burn #5# Pleasure Boats |q 42106/2 |goto 53.89,72.30
|next "Legion_World_Quest_Emissaries"
step
label quest-42830
accept Pest Management##42830 |goto Suramar/0 61.97,57.05
|tip You will accept this quest automatically.
stickystart "Tattered_Silkwings"
step
clicknpc Shadescale Flyeater##109023+
|tip They look like Mana Wyrms around this area.
Collect #8# Shadescale Flyeaters |q 42830/1 |goto 61.97,57.05
step
label "Tattered_Silkwings"
kill 8 Tattered Silkwing##109180 |q 42830/2 |goto 61.97,57.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41349
Follow the path |goto Suramar/0 67.27,44.55 < 10 |only if walking
Follow the path |goto 69.69,47.93 < 20 |only if walking
accept Rock-Hard Crab Chitin##41349 |goto 76.79,56.57
|tip You will accept this quest automatically.
step
kill Deepwater Spikeback##99504+
|tip They're on the ocean floor.
|tip Skin the corpses.
collect 12 Rock-Hard Crab Chitin##134822 |q 41349/1 |goto 76.79,56.57
|next "Legion_World_Quest_Emissaries"
step
label quest-44812
Follow the path |goto Suramar/0 63.63,42.81 < 25 |only if walking
Follow the path |goto 61.11,46.30 < 25 |only if walking
Follow the path |goto 61.87,51.99 < 25 |only if walking
accept Running on Empty##44812 |goto 59.30,55.06
|tip You will accept this quest automatically.
stickystart "Water"
step
click Shal'dorei Foodstuff##266301
|tip They look like rectangle boxes on the ground.
|tip Check inside buildings and around crates for these.
Steal #5# Shal'dorei Foodstuffs |q 44812/1 |goto 59.30,55.06
step
label "Water"
click Magically Purified Water##266298
|tip They look like small barrels on the ground.
Steal #3# Magically Purified Water |q 44812/2 |goto 59.30,55.06
|next "Legion_World_Quest_Emissaries"
step
label quest-44799
Run down the stairs |goto Suramar/0 46.00,66.43 < 20 |only if walking
accept Safe Keeping##44799 |goto Suramar/0 46.81,69.83
|tip You will accept this quest automatically.
step
Cross the bridge |goto 47.03,75.61 < 20 |only if walking
Follow the path up |goto 45.56,76.98 < 20 |only if walking
talk Desperate Refugee##115705+
|tip They look like scared or kneeling npc's all around this area.
|tip Any nearby enemies will attack you after talking to Desperate Refugees.
|tip They will follow you. Bring them to this building to rescue them.
Rescue #5# Desperate Refugees |q 44799/1 |goto 45.96,79.77
|next "Legion_World_Quest_Emissaries"
step
label quest-42962
accept Secret Correspondence##42962 |goto Suramar/0 46.10,64.66
|tip You will accept this quest automatically.
step
Use the Nightborne Spellblade on Nightborne Couriers |use Nightborne Spellblade##137299
|tip They run into and out of the building here, so just wait here for them to run to you.
|tip Loot them after you kill them with the quest item.
collect 3 Stack of Letters##137601 |q 42962/1 |goto 46.10,64.66
|next "Legion_World_Quest_Emissaries"
step
label quest-42725
accept Sharing the Wealth##42725 |goto Suramar/0 47.46,81.97
|tip You will accept this quest automatically.
step
click Bottles of Arcwine
|tip They look like tall skinny-necked blue bottles sitting on countertops around this area.
click Casks of Arcwine
|tip They look like purple barrels laying on the ground around this area.
|tip Bring the Casks of Arcwine to Deline and click the Gondola boat nearby to deliver them.
Deliver #20# Bottles of Arcwine to Deline |q 42725/1 |goto 51.18,76.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41354
Enter the cave |goto Suramar/0 34.45,73.88 < 15 |walk
accept Shattered Felslate Seams##41354 |goto Suramar/0 36.56,71.58
|tip Inside the cave.
|tip You will accept this quest automatically.
step
click Shattered Felslate Seam##247698+
|tip Inside the cave.
collect 6 Shattered Felslate##141252 |q 41354/1 |goto 36.56,71.58
|next "Legion_World_Quest_Emissaries"
step
label quest-42082
Enter the Temple of Fal'adora |goto Suramar/0 22.86,35.79 < 10
Follow the path |goto Suramar/32 44.82,32.02 < 10
accept The Shattered Locus##42082 |goto 36.24,50.64
|tip You will accept this quest automatically.
step
kill Shardmaiden##105554+, Shardback Skitterer##105613+
click Energetic Shard##249414
Charge Farodin's Lodestone |q 42082/1 |goto 36.24,50.64
|next "Legion_World_Quest_Emissaries"
step
label quest-44815
accept Sick of the Sycophants##44815 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
Use the Telemancy Orbs on groups of Loyalist Sycophants |use Telemancy Orbs##142401
|tip They are all around this area.
kill 20 Loyalist Sycophant##113705 |q 44815/1 |goto 58.55,62.75
|next "Legion_World_Quest_Emissaries"
step
label quest-42090
accept Skittering Subjects##42090 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
step
Carefully jump down into the water |goto 21.16,42.92 > 10000 |only if walking
Use the Satchel of Locklimb Powder on Leyline Spiderlings |use Satchel of Locklimb Powder##140916
|tip They look like small purple spiders on the ground around this area.
clicknpc Leyline Spiderling##105756+
Collect #12# Leyline Spiderlings |q 42090/1 |goto Suramar/33 46.56,43.32
|next "Legion_World_Quest_Emissaries"
step
label quest-41557
Follow the path up |goto Suramar/0 40.39,26.19
Follow the path up |goto Suramar/0 40.19,28.30
accept Slab of Bacon##41557 |goto Suramar/0 39.42,29.36
|tip You will accept this quest automatically.
step
kill Baconlisk##103787
collect Thick Slab of Bacon##135511 |q 41557/1 |goto Suramar/0 38.94,29.54 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41558
Follow the path |goto Suramar/0 32.74,48.46 < 25 |only if walking
Follow the path |goto 29.23,47.76 < 25 |only if walking
Follow the path |goto 25.38,51.82 < 25 |only if walking
accept Slab of Bacon##41558 |goto 24.53,49.49
|tip You will accept this quest automatically.
step
kill Baconlisk##103787
collect 1 Thick Slab of Bacon##135511 |q 41558/1 |goto 24.53,49.49 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41262
Follow the path |goto Suramar/0 64.57,43.31 < 25 |only if walking
Follow the path |goto 67.37,44.59 < 15 |only if walking
Follow the path |goto 68.47,45.74 < 20 |only if walking
Follow the path |goto 68.12,48.63 < 25 |only if walking
Follow the path |goto 69.70,47.94 < 25 |only if walking
Follow the path |goto 71.54,47.02 < 25 |only if walking
Follow the path |goto 72.98,49.39 < 25 |only if walking
accept Slab of Bacon##41262 |goto 75.89,50.12
|tip You will accept this quest automatically.
step
kill Baconlisk##103787
collect 1 Thick Slab of Bacon##135511 |q 41262/1 |goto 75.89,50.12 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41539
Cross the bridge |goto Suramar/0 24.35,31.98 < 20 |only if walking
accept Sparkling Starlight Roses##41539 |goto 19.95,29.63
|tip You will accept this quest automatically.
step
click Sparkling Starlight Rose##248032
collect 10 Sparkling Starlight Rose Petals##140992 |q 41539/1 |goto 19.95,29.63
|next "Legion_World_Quest_Emissaries"
step
label quest-41301
Follow the path |goto Suramar/0 33.18,47.79 < 25 |only if walking
Follow the path |goto 32.53,46.40 < 25 |only if walking
Follow the path |goto 35.14,43.33 < 25 |only if walking
Follow the path |goto 34.45,39.31 < 25 |only if walking
accept Starlight Rose Cluster##41301 |goto 35.59,38.35
|tip You will accept this quest automatically.
step
clicknpc Starlight Rose Cluster##103848
Starlight Rose Cluster gathered |q 41301/1 |goto 35.59,38.35
|next "Legion_World_Quest_Emissaries"
step
label quest-41548
Follow the path |goto Suramar/0 32.69,48.44 < 25 |only if walking
Follow the path |goto 28.89,45.53 < 25 |only if walking
Follow the path |goto 27.38,48.68 < 25 |only if walking
accept Starlight Rose Cluster##41548 |goto 25.63,50.53
|tip You will accept this quest automatically.
step
clicknpc Starlight Rose Cluster##103848
|tip A Starlight Saber will jump out of the tree and attack you.
Starlight Rose Cluster gathered |q 41548/1 |goto 25.63,50.53
|next "Legion_World_Quest_Emissaries"
step
label quest-43959
accept Stelleris Shakedown##43959 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
kill Stelleris Libertine##112005+
|tip Fight them until they submit, then click them.
|tip You may have to fight multiple of them to complete the goal.
Persuade a Stelleris Libertine |q 43959/1 |goto 59.78,60.43
step
kill Corvelyn##112016 |q 43959/2 |goto 55.38,65.15
|next "Legion_World_Quest_Emissaries"
step
label quest-44817
Follow the path |goto Suramar/0 64.38,43.17 < 25 |only if walking
Follow the path |goto 64.52,46.87 < 25 |only if walking
Follow the path |goto 63.72,50.95 < 25 |only if walking
accept Stirring the Swarm##44817 |goto 62.01,52.28
|tip You will accept this quest automatically.
stickystart "Duskwatch"
step
clicknpc Leypulse Beacon##116529
East Beacon Activated |q 44817/1 |goto 62.71,52.86
step
clicknpc Leypulse Beacon##116529
West Beacon Activated |q 44817/2 |goto 61.18,51.20
step
label "Duskwatch"
kill Duskwatch Spellfury##116555+, Duskwatch Sentry##116554+ |q 44817/3 |goto 62.01,52.28
|next "Legion_World_Quest_Emissaries"
step
label quest-42082
Follow the path |goto Suramar/32 51.36,38.27 < 15 |walk
Enter the cave |goto Suramar/32 43.26,33.06 < 15 |walk
accept Studying the Reaction##42082 |goto Suramar/32 35.24,54.11
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Energetic Shards##249414
Charge Farodin's Lodestone |q 42082/1 |goto 35.24,54.11
|next "Legion_World_Quest_Emissaries"
step
label quest-41318
accept Supplies Needed: Felslate##41318 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Felslate##123919
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Supplies Needed: Felslate##41318 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41303
accept Supplies Needed: Starlight Roses##41303 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Starlight Rose##124105
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Supplies Needed: Starlight Roses##41303 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41351
accept Supplies Needed: Stonehide Leather##41351 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Supplies Needed: Stonehide Leather##41351 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-42015
accept Threads of Fate##42015 |goto Suramar/0 33.61,83.18
|tip You will accept this quest automatically.
step
talk Felsoul Seer##105779
Tell him "Let's do battle!"
Defeat Felsoul Seer |q 42015/1 |goto 33.65,83.16
|next "Legion_World_Quest_Emissaries"
step
label quest-44002
accept Undersea Survey##44002 |goto Suramar/0 73.39,51.95
|tip You will accept this quest automatically.
step
click Western Surveying Pylon##253087
|tip Underwater.
|tip Enemies will attack you.
Activate the Western Pylon |q 44002/2 |goto 74.43,56.66
step
click Northern Surveying Pylon##253085
|tip Underwater.
|tip Enemies will attack you.
Activate the Northern Pylon |q 44002/1 |goto 78.61,55.99
step
click Eastern Surveying Pylon##253086
|tip Underwater.
|tip Enemies will attack you.
Activate the Eastern Pylon |q 44002/3 |goto 79.54,63.11
step
Follow the path |goto 79.76,66.87 < 20 |only if walking
click Southern Surveying Pylon##253088
|tip Underwater.
|tip Enemies will attack you.
Activate the Southern Pylon |q 44002/4 |goto 80.36,70.52
|next "Legion_World_Quest_Emissaries"
step
label quest-43814
accept Unspeakable Collaborators##43814 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
kill Felborne Collaborator##111750+
kill Felsworn Noble##111730+
Slay #8# Nightborne Collaborators |q 43814/1 |goto 58.55,62.75
|next "Legion_World_Quest_Emissaries"
step
label quest-41663
accept Vantus Rune Work Order: Xavius##41667 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Xavius>_
collect 1 Vantus Rune: Xavius##128991
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Vantus Rune Work Order: Elerethe Renferal##41667 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41346
accept Velvety Stalker Hide##41346 |goto Suramar/0 32.33,35.61
|tip You will accept this quest automatically.
step
kill Moonwhisper Stalker##103616+
|tip Loot and Skin these.
collect 8 Velvety Stalker Hide##134818 |q 41346/1 |goto Suramar/0 35.18,29.25
|next "Legion_World_Quest_Emissaries"
step
label quest-44017
accept WANTED: Apothecary Faldren##44017 |goto Suramar/0 42.27,56.73
|tip You will accept this quest automatically.
step
kill Apothecary Faldren##110870 |q 44017/1 |goto 42.27,56.73 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44032
accept WANTED: Apothecary Faldren##44032 |goto Suramar/0 42.25,54.80
|tip You will accept this quest automatically.
step
kill Apothecary Faldren##110870 |q 44032/1 |goto Suramar/0 42.35,56.57 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44186
accept WANTED: Broodmother Shu'malis##44186 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
step
Carefully jump down into the water |goto Suramar/33 46.78,43.09 > 10000 |only if walking
Run up the stairs |goto Suramar/33 53.92,43.25 < 20 |walk
kill Broodmother Shu'malis##105632 |q 44186/1 |goto Suramar/33 67.22,51.80 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42796
accept WANTED: Broodmother Shu'malis##42796 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
step
Carefully jump down into the water |goto Suramar/33 46.78,43.09 > 10000 |only if walking
Run up the stairs |goto Suramar/33 53.92,43.25 < 20 |walk
kill Broodmother Shu'malis##105632 |q 42796/1 |goto Suramar/33 67.22,51.80 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44016
Follow the road |goto Suramar/0 63.63,42.98 < 20 |only if walking
Follow the path up |goto Suramar/0 62.52,46.63 < 15 |only if walking
accept WANTED: Cadraeus##44016 |goto Suramar/0 62.72,48.88
|tip You will accept this quest automatically.
step
kill Cadraeus##110726 |q 44016/1 |goto 62.72,48.88 |future
|tip He walks around.
|next "Legion_World_Quest_Emissaries"
step
label quest-44031
accept WANTED: Cadraeus##44031 |goto Suramar/0 62.58,46.77
|tip You will accept this quest automatically.
step
kill Cadraeus##110726 |q 44031/1 |goto Suramar/0 62.53,48.00 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44013
accept WANTED: Guardian Thor'el##44013 |goto 57.19,49.64
|tip You will accept this quest automatically.
step
kill Guardian Thor'el##110944 |q 44013/1 |goto 56.76,50.43 |future
|tip He walks along this path, so you may have to search for him.
|tip You may need help to kill him.
|next "Legion_World_Quest_Emissaries"
step
label quest-44030
accept WANTED: Guardian Thor'el##44030 |goto Suramar/0 57.06,49.63
|tip You will accept this quest automatically.
step
kill Guardian Thor'el##110944 |q 44030/1 |goto Suramar/0 56.91,50.60 |future
|tip He pats around this area.
|next "Legion_World_Quest_Emissaries"
step
label quest-44021
accept WANTED: Hertha Grimdottir##44021 |goto Suramar/0 61.29,39.66
|tip You will accept this quest automatically.
step
kill Hertha Grimdottir##103223 |q 44021/1 |goto 61.29,39.66 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44029
accept WANTED: Hertha Grimdottir##44029 |goto Suramar/0 61.96,39.55
|tip You will accept this quest automatically.
step
kill Hertha Grimdottir##103223 |q 44029/1 |goto Suramar/0 61.30,39.63 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44019
Follow the path |goto Suramar/0 47.50,64.36 < 20 |only if walking
Walk onto the teleport pad inside the building |goto Suramar/0 49.89,60.19 < 5 |only if walking
accept WANTED: Lieutenant Strathmar##44019 |goto Suramar/0 48.77,57.34
|tip You will accept this quest automatically.
step
kill Lieutenant Strathmar##102303 |q 44019/1 |goto 48.53,56.69 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-44028
Follow the path |goto Suramar/0 47.50,64.36 < 20 |only if walking
Walk onto the teleport pad inside the building |goto Suramar/0 49.89,60.19 < 5 |only if walking
accept WANTED: Lieutenant Strathmar##44028 |goto Suramar/0 48.77,57.34
|tip You will accept this quest automatically.
step
kill Lieutenant Strathmar##102303 |q 44028/1 |goto 48.53,56.69 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-44018
accept WANTED: Magister Phaedris##44018 |goto Suramar/0 41.97,79.89
|tip You will accept this quest automatically.
step
kill Magister Phaedris##109954 |q 44018/1 |goto 41.97,79.89 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44027
accept WANTED: Magister Phaedris##44027 |goto Suramar/0 41.97,79.89
|tip You will accept this quest automatically.
step
kill Magister Phaedris##109954 |q 44027/1 |goto 41.97,79.89 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44015
accept WANTED: Mal'Dreth the Corruptor##44015 |goto Suramar/0 34.18,60.94
|tip You will accept this quest automatically.
step
kill Mal'Dreth the Corruptor##110024 |q 44015/1 |goto 34.14,60.96 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44026
accept WANTED: Mal'Dreth the Corruptor##44026 |goto Suramar/0 34.18,60.94
|tip You will accept this quest automatically.
step
kill Mal'Dreth the Corruptor##110024 |q 44026/1 |goto 34.14,60.96 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44010
accept WANTED: Oreth the Vile##44010 |goto Suramar/0 24.57,47.41
|tip You will accept this quest automatically.
step
kill Oreth the Vile##110577 |q 44010/1 |goto 24.57,47.41 |future
|tip IHe walks around inside the building.
|tip You may need help to kill him.
|next "Legion_World_Quest_Emissaries"
step
label quest-44025
accept WANTED: Oreth the Vile##44025 |goto Suramar/0 24.57,47.41
|tip You will accept this quest automatically.
step
kill Oreth the Vile##110577 |q 44025/1 |goto 24.57,47.41 |future
|tip IHe walks around inside the building.
|tip You may need help to kill him.
|next "Legion_World_Quest_Emissaries"
step
label quest-42795
Carefully jump down into the water |goto Suramar/0 21.16,42.92 |n
Enter the Falanaar Tunnels |goto Suramar/33 38.34,33.32 < 10000 |noway |c |q 42795 |future
step
accept WANTED: Sanaar##42795 |goto Suramar/33 43.43,36.80
|tip You will accept this quest automatically.
step
kill Sanaar##105739 |q 42795/1 |goto 40.45,34.63 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44185
Carefully jump down into the water |goto Suramar/0 21.16,42.92 |n
Enter the Falanaar Tunnels |goto Suramar/33 38.34,33.32 < 10000 |noway |c |q 44185 |future
step
accept WANTED: Sanaar##44185 |goto Suramar/33 43.43,36.80
|tip You will accept this quest automatically.
step
kill Sanaar##105739 |q 44185/1 |goto 40.45,34.63 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44022
accept WANTED: Shal'an##44022 |goto Suramar/0 26.07,39.82
|tip You will accept this quest automatically.
step
kill Shal'an##109054 |q 44022/1 |goto 26.24,41.18 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-44024
accept WANTED: Shal'an##44024 |goto Suramar/0 26.24,41.18
|tip You will accept this quest automatically.
step
kill Shal'an##109054 |q 44024/1 |goto 26.24,41.18 |future
|tip Inside the building.
|next "Legion_World_Quest_Emissaries"
step
label quest-44012
accept WANTED: Siegemaster Aedrin##44012 |goto Suramar/0 37.00,21.17
|tip You will accept this quest automatically.
step
kill Siegemaster Aedrin##110438 |q 44012/1 |goto 37.00,21.17 |future
|tip He spawns here.
|tip You may need help killing him.
|next "Legion_World_Quest_Emissaries"
step
label quest-44023
accept WANTED: Siegemaster Aedrin##44023 |goto Suramar/0 37.00,21.17
|tip You will accept this quest automatically.
step
kill Siegemaster Aedrin##110438 |q 44023/1 |goto 37.00,21.17 |future
|tip He spawns here.
|tip You may need help killing him.
|next "Legion_World_Quest_Emissaries"
step
label quest-43943
accept Withered Army Training##43943 |goto Suramar/0 36.88,46.61 |region suramar_shalaran
|tip You will accept this quest automatically.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
Tell her _"I've come to help the withered with their combat training."_
|tip This requires you to have at least 400 Ancient Mana.
_Choose the Amount of Withereds for your Army:_
|tip Starting with more withereds increases your chances of completing the entire Collapse scenario.
|tip Completing the entire scenario will reward you with more Nightfallen reputation and items.
Bring at Least 400 Ancient Mana to Thalyssra |q 43943/1 |goto 36.88,46.60 |region suramar_shalaran
step
Begin the Collapse Scenario |scenariostart |q 43943
step
Click the Quest Complete Box:
turnin Withered Army Training##43943
step
Travel to the Ruins of Falanaar |goto 22.69,36.69 < 50 |noway |c |q 43943
|tip You will be teleported automatically.
step
talk First Arcanist Thalyssra##109008
Speak with Thalyssra |scenariostage 1 |goto 22.85,36.20
|only if inscenario
step
Enter the building |goto 22.88,35.62 > 1000 |c
|only if inscenario
step
_Follow the path and kill all enemies:_
|tip As your withereds get more powerful from training, you'll be able to make it further through this area.
|tip Enter all of the doors you come across that you can.
|tip You will find chests, more withereds to recruit, and bosses to kill.
Use the Mayhem! and Follow Me! abilities as you fight
|tip They appear as a button on the screen.
talk Withered Exile##110141+
|tip You will come across them as you walk.
|tip Talk to them to recruit them to your army.
|tip Your withered will sometimes run away when they are hurt. Click them to prevent them from leaving.
Proceed as Far as you can into the Collapse |scenariostage 2
|only if inscenario
step
click Glimmering Treasure Chest##251754
|tip There may be more chests, depending on how far you got into the Collapse.
Receive the Spoils of War |scenarioend |goto Suramar/0 22.79,36.15
|tip Use the items you get in your bags to increase your reputation with The Nightfallen.
|only if inscenario
step
click Telemancy Beacon##258977 |goto 22.91,36.07 |n
Return to Shal'Aran |goto 36.72,46.63 < 50 |noway |c
|only if completedq(43943)
step
clicknpc Traveler's Banking Chest##113284
Place the Banking Chest in Shal'aran |q 44176/1 |goto 37.90,47.49 |region suramar_shalaran
|only if haveq(44176)
step
clicknpc Traveler's Banking Chest##113284 |only if haveq(44176)
turnin The Conveniences of Home##44176 |goto 37.90,47.49 |only if haveq(44176) |region suramar_shalaran
|next "Legion_World_Quest_Emissaries"
step
label quest-44158
accept Withered Wrangling: Falanaar##44158 |goto Suramar/0 21.79,44.18
|tip You will accept this quest automatically.
step
Use the Spellstone of Kel'danath on Withered and Hungering enemies
|tip It appears as a button on the screen.
Send #10# Withered to Shal'Aran |q 44158/1 |goto 21.17,45.54
|next "Legion_World_Quest_Emissaries"
step
label quest-43807
Follow the path |goto Suramar/0 26.16,34.67 < 30 |only if walking
accept Withered Wrangling: Ambervale##43807 |goto Suramar/0 25.47,42.23
|tip You will accept this quest automatically.
step
Use the Spellstone of Kel'danath on Withered enemies
|tip It appears as a button on the screen.
|tip It could also be the Branch of Arcan'dor ability.
Send #10# Withered to Shal'Aran |q 43807/1 |goto 25.47,42.23
|next "Legion_World_Quest_Emissaries"
step
label quest-44157
accept Withered Wrangling: Tel'anor##44157 |goto Suramar/0 42.13,35.37
|tip You will accept this quest automatically.
step
Use the Branch of Arcan'dor ability on Feral enemies
|tip It appears as a button on the screen.
|tip They look like Withered enemies around this area.
Send #10# Withered to Shal'Aran |q 44157/1 |goto 42.80,36.09
|next "Legion_World_Quest_Emissaries"
step
label quest-41643
accept Work Order: Battlebound Leggings##41643 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Battlebound Leggings>_
collect 1 Battlebound Leggings##128896
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Battlebound Leggings##41643 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41679
accept Work Order: Deployable Bullet Dispenser##41679 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Deployable Bullet Dispenser>_
collect 1 Deployable Bullet Dispenser##132509
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Deployable Bullet Dispenser##41679 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41314
accept Work Order: Felslate##41314 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Felslate##123919
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Felslate##41314 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41637
accept Work Order: Leystone Pauldrons##41637 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Pauldrons>_
collect 1 Leystone Pauldrons##123896
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Leystone Pauldrons##41637 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41655
accept Work Order: Queen's Opal Pendant##41655 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Queen's Opal Pendant>_
collect 1 Queen's Opal Pendant##136712
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Queen's Opal Loop##41655 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41282
accept Work Order: Runescale Koi##41282 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Runescale Koi##124111
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Runescale Koi##41282 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41649
accept Work Order: Silkweave Slippers##41649 |goto Suramar/0 36.55,46.89
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Slippers>_
collect 1 Silkweave Slippers##126988
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Silkweave Slippers##41649 |goto 36.55,46.89
|next "Legion_World_Quest_Emissaries"
step
label quest-41661
accept Work Order: Skystep Potions##41661 |goto Suramar/0 36.55,46.89
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Skystep Potions>_
collect 5 Skystep Potion##127841
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Skystep Potions##41661 |goto 36.55,46.89
|next "Legion_World_Quest_Emissaries"
step
label quest-41302
accept Work Order: Starlight Roses##41302 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 10 Starlight Rose##124105
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Starlight Roses##41302 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41350
accept Work Order: Stonehide Leather##41350 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Leatherworking or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Stonehide Leather##41350 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41673
accept Work Order: Word of Mastery##41673 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Mastery>_
collect 1 Enchant Ring - Word of Mastery##128539
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Word of Mastery##41673 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\Val'sharah World Quests",{
author="support@zygorguides.com",
startlevel=45.0,
worldquestzone=641,
},[[
step
label "Choose_World_Quest"
#include "Legion_Choose_World_Quests"
step
label quest-45924
Follow the path |goto Val'sharah/0 39.50,59.68 < 25 |only if walking
Follow the path |goto 37.14,60.29 < 25 |only if walking
accept Abyssal Monstrosity##45924 |goto 35.79,63.42
|tip You will accept this quest automatically.
step
kill Abyssal Monstrosity##117054
Defeat the Abyssal Monstrosity |q 45924/1 |goto 35.79,63.42 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-45922
accept Agmozuul##45922 |goto Val'sharah/0 55.85,69.61
|tip You will accept this quest automatically.
step
kill Agmozuul##117039 |q 45922/1 |goto 55.85,69.61 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44033
accept Aw, Nuts!##44033 |goto Val'sharah/0 54.52,72.91
|tip You will accept this quest automatically.
stickystart "Crack_Nuts"
step
clicknpc Invasive Squirrel##112289+
|tip They look like small brown squirrels on the ground and sitting on objects around this area.
Capture #15# Squirrels |q 44033/1 |goto 54.40,72.24
step
label "Crack_Nuts"
click Acorns##253277
|tip They look like small brown objects on the ground around this area.
Crack #15# Nuts |q 44033/2 |goto 54.59,72.92
|next "Legion_World_Quest_Emissaries"
step
label quest-45070
Follow the path |goto Val'sharah/0 55.06,55.23 < 25 |only if walking
accept Barrels o' Fun##45070 |goto 52.09,56.68
|tip You will accept this quest automatically.
step
click Barrel##2886
Game Completed |q 45070/1 |goto 52.30,56.59
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Legion_World_Quest_Emissaries"
step
label quest-42080
accept Bastion of Bradensbrook##42080 |goto Val'sharah/0 38.36,61.76
|tip You will accept this quest automatically.
stickystart "Black_Rook_Enemies"
step
Use the Marking Taget ability on Black Rook Falcons
|tip It appears as a button on the screen.
|tip They look like bone vultures flying around this area and perched on objects.
Mark #6# Black Rook Falcons |q 42080/1 |goto 38.36,61.76
step
label "Black_Rook_Enemies"
Kill enemies around this area
Slay #8# Black Rook Enemies |q 42080/2 |goto 38.36,61.76
step
clicknpc Bradensbrook Ewe##106009+
|tip They look like sheep all around this area.
|tip When you click them, they will start running automatically and you cannot stop them.
|tip You can control which way they run, though.
|tip Return to this location to return the Bradensbrook Ewes.
Return #4# Bradensbrook Ewes |q 42080/3 |goto 41.44,59.33
|next "Legion_World_Quest_Emissaries"
step
label quest-43711
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: ... With Fire!##43711 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Ancient Widow##98637 |q 43711/1
|tip The Ancient Widow is located in a room off the stairs before Illysana Ravencrest.
|tip When you see the spiders, you are close.
|tip If you pull the Widow to the stairs, adds will not spawn during the fight.
step
kill Dantalionax##99611 |q 43711/2
|next "Legion_World_Quest_Emissaries"
step
label quest-43712
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: The Mad Arcanist##43712 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Archmage Galeorn##111068 |q 43712/1
|tip Galeorn is located just before Illysana Ravencrest.
|tip You will need to kill the two waves of enemies and open the gates.
step
kill Dantalionax##99611 |q 43712/2
|next "Legion_World_Quest_Emissaries"
step
label quest-43642
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: The Sorrow##43642 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill General Tel'arn##110993, kill Ranger General Feleor##110995 |q 43642/1
|tip The Generals are located in the war room just after The Amalgam of Souls.
step
kill Dantalionax##99611 |q 43642/2
|next "Legion_World_Quest_Emissaries"
step
label quest-43762
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: Traitor's Demise##43762 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Kelorn Nightblade##111361 |q 43762/1
|tip Kelorn is located in a room just before the final boss. You will encounter him along the way.
step
kill Dantalionax##99611 |q 43762/2
|next "Legion_World_Quest_Emissaries"
step
label quest-43714
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: Worst of the Worst##43714 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Braxas the Fleshcarver##111290 |q 43714/1
|tip Braxas is located in a hallway before Smashspite the Hateful.
|tip You will pass near him progressing through the instance.
step
kill Dantalionax##99611 |q 43714/2
|next "Legion_World_Quest_Emissaries"
step
label quest-41961
Follow the path |goto Val'sharah/0 38.70,57.76 < 30 |only if walking
Follow the path |goto 38.07,54.89 < 30 |only if walking
Follow the path |goto 39.67,53.05 < 30 |only if walking
accept Black Rook Holdings##41961 |goto Val'sharah/0 42.64,48.29
|tip You will accept this quest automatically.
step
kill Reanimated Archer##91860+, Servant of Ravencrest##95430+, Risen Soldier##92954+
Twart the Black Rook forces |q 41961/1 |goto 42.64,48.29
|next "Legion_World_Quest_Emissaries"
step
label quest-42023
Follow the path |goto Val'sharah/0 41.42,60.03 < 30 |only if walking
Follow the path |goto 39.94,60.25 < 30 |only if walking
Follow the path |goto 39.48,59.64 < 30 |only if walking
Follow the path up |goto 38.56,57.40 < 30 |only if walking
Go up the stairs |goto 39.14,53.62 < 30 |only if walking
Follow the path |goto 40.46,53.03 < 30 |only if walking
Follow the path |goto 42.86,50.61 < 30 |only if walking
accept Black Rook Rumble##42023 |goto Val'sharah/0 42.64,48.29
|tip You will accept this quest automatically.
step
Kill the enemies that attack
Kill Enemies in the Black Rook Hold Arena |q 42023/1 |goto 42.64,48.29
|next "Legion_World_Quest_Emissaries"
step
label quest-41955
Follow the path |goto Val'sharah/0 52.59,75.22 < 30 |only if walking
Follow the path |goto 49.74,78.66 < 30 |only if walking
Follow the path |goto 46.86,76.89 < 30 |only if walking
accept Bloodline of Stone##41955 |goto 45.11,74.15
|tip You will accept this quest automatically.
stickystart "Break_Harpy_Eggs"
stickystart "Burn_Harpy_Nests"
step
Enter the cave |goto 45.54,77.13 < 10 |walk
kill Magula##91130 |q 41955/1 |goto 45.80,77.88
step
label "Break_Harpy_Eggs"
Break #10# Harpy Eggs |q 41955/3 |goto 46.34,74.10
|tip They look like shaking white eggs on the ground around this area.
|tip Run over them to destroy them.
step
label "Burn_Harpy_Nests"
click Dry Harpy Nests##241682
|tip They look like big brown nests hanging from tress around this area.
Burn #5# Harpy Nests |q 41955/2 |goto 45.36,73.91
|next "Legion_World_Quest_Emissaries"
step
label quest-42075
Follow the path |goto Val'sharah/0 68.85,53.37 < 30 |only if walking
Drop down |goto 66.69,57.22 < 30 |only if walking
accept Botanical Backlash##42075 |goto Val'sharah/0 64.42,57.94
|tip You will accept this quest automatically.
stickystart "Darkgrove_Cultivators"
stickystart "Corrupted_Plantlife"
step
Enter the cave |goto 66.05,56.33 < 30 |walk
kill Apostle of Lyrathos##105933 |q 42075/1 |goto 67.22,58.20
step
label "Darkgrove_Cultivators"
kill 5 Darkgrove Cultivator##105932 |q 42075/2 |goto 64.39,57.89
step
label "Corrupted_Plantlife"
Kill plant enemies around this area
Slay #10# Corrupted Plantlife |q 42075/3 |goto 64.42,57.94
|next "Legion_World_Quest_Emissaries"
step
label quest-41484
Follow the path |goto Val'sharah/0 55.64,56.23 < 30 |only if walking
Follow the path |goto 54.96,53.33 < 30 |only if walking
Follow the path |goto 53.27,50.07 < 30 |only if walking
accept Brimstone Destroyer##41484 |goto Val'sharah/0 53.37,45.46
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41484/1 |goto 53.37,45.46 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41486
Go up the rocks |goto Val'sharah/0 39.87,67.34 < 15 |only if walking
accept Brimstone Destroyer##41486 |goto 38.19,68.86
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41486/1 |goto 38.19,68.86 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41487
Follow the path |goto Val'sharah/0 43.70,59.07 < 25 |only if walking
Follow the path |goto 46.95,55.35 < 25 |only if walking
accept Brimstone Destroyer##41487 |goto 48.91,56.13
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
|tip It wanders a small area around the rocks.
click Brimstone Destroyer Core##247965
Brimstone Destroyer Core mined |q 41487/1 |goto 48.91,56.13 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41273
Follow the path |goto Val'sharah/0 38.85,57.91 < 25 |only if walking
Follow the path |goto 37.75,54.80 < 25 |only if walking
Follow the path |goto 34.62,52.19 < 25 |only if walking
Follow the path |goto 31.46,49.53 < 25 |only if walking
accept Buoy Fishing##41273 |goto 28.66,49.46
|tip You will accept this quest automatically.
step
talk Luraura Nightcast##109760
Tell her: "_I'm ready. Give me the buoys._"
clicknpc Enormous Sea Crab##109752
|tip They swim below the boat on the ocean floor.
Use the Satchel of Buoys on #15# Enormous Sea Crabs |use Satchel of Buoys##139044 |q 41273/1 |goto 28.66,49.46
|next "Legion_World_Quest_Emissaries"
step
label quest-41532
Follow the path |goto Val'sharah/0 68.20,48.61 < 20 |only if walking
accept Bushy Dreamleaf##41532 |goto Val'sharah/0 65.55,43.71
|tip You will accept this quest automatically.
step
click Bushy Dreamleaf##248025
collect 10 Bushy Dreamleaf##140956 |q 41532/1 |goto 65.55,43.71
|next "Legion_World_Quest_Emissaries"
step
label quest-42174
Follow the path |goto Val'sharah/0 68.51,48.48 < 30 |only if walking
Follow the path |goto 72.10,44.81 < 30 |only if walking
accept Champions of Elune##42174 |goto 73.84,38.72
|tip You will accept this quest automatically.
step
talk Leafbeard the Storied##106638
Speak with Leafbeard the Storied |q 42174/1 |goto 73.63,39.46
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Defeat the Demons |q 42174/2 |goto Azshara L/0 25.60,48.36
step
kill 2 Infernal Siegebreaker##97808 |q 42174/3 |goto 29.48,52.47
step
kill 1 Pit Lord##98757 |q 42174/4 |goto 29.48,52.47
|next "Legion_World_Quest_Emissaries"
step
label quest-43738
Follow the path |goto Val'sharah/0 41.53,59.96 < 30 |only if walking
Follow the path |goto 39.48,59.68 < 30 |only if walking
Follow the path |goto 37.49,59.99 < 30 |only if walking
Drop down |goto 34.97,61.34 < 30 |only if walking
accept Coastal Gloom##43738 |goto Val'sharah/0 33.58,60.31
|tip You will accept this quest automatically.
stickystart "Destroy_Gloomscale_Eggs"
step
kill 8 Lytheron Gloomscale##111383 |q 43738/1 |goto 33.58,60.31
step
label "Destroy_Gloomscale_Eggs"
kill Gloomscale Egg##111384+
|tip They look like big white eggs sitting on the ground around this area.
Destroy #24# Gloomscale Eggs |q 43738/2 |goto 33.58,60.31
|next "Legion_World_Quest_Emissaries"
step
label quest-43344
Follow the path |goto Val'sharah/0 55.49,55.06 < 30 |only if walking
Follow the path |goto 57.51,52.25 < 15 |only if walking
accept DANGER: Aodh Witherpetal##43344 |goto Val'sharah/0 59.66,50.56
|tip You will accept this quest automatically.
step
kill Aodh Witherpetal##110346 |q 43344/1 |goto Val'sharah/0 59.66,50.56 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43346
Follow the path |goto Val'sharah/0 68.15,48.48 < 30 |only if walking
Cross the bridge |goto 66.69,45.83 < 30 |only if walking
Follow the path |goto 65.01,43.39 < 30 |only if walking
accept DANGER: Ealdis##43346 |goto Val'sharah/0 63.31,42.35
|tip You will accept this quest automatically.
step
kill Ealdis##110367 |q 43346/1 |goto Val'sharah/0 62.43,43.03 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43345
accept DANGER: Harbinger of Screams##43345 |goto Val'sharah/0 70.45,52.36
|tip You will accept this quest automatically.
step
kill Harbinger of Screams##110361 |q 43345/1 |goto 70.45,52.36 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42870
Follow the path |goto Val'sharah/0 53.52,73.94 < 25 |only if walking
Follow the path |goto 51.51,75.65 < 25 |only if walking
Follow the path |goto 49.78,78.81 < 25 |only if walking
Follow the path |goto 48.80,82.93 < 25 |only if walking
Follow the path |goto 46.98,83.36 < 25 |only if walking
accept DANGER: Kathaw the Savage##42870 |goto 45.38,83.79
|tip You will accept this quest automatically.
step
kill Kathaw the Savage##109125 |q 42870/1 |goto 45.38,83.79 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43152
Follow the path |goto Val'sharah/0 41.53,59.96 < 30 |only if walking
Follow the path |goto 39.48,59.68 < 30 |only if walking
Follow the path |goto 37.49,59.99 < 30 |only if walking
Drop down |goto 34.97,61.34 < 30 |only if walking
accept DANGER: Lytheron##43152 |goto Val'sharah/0 34.38,61.63
|tip You will accept this quest automatically.
step
kill Lytheron##109692 |q 43152/1 |goto Val'sharah/0 34.38,61.63 |future
|tip This is a group elite enemy.
|next "Legion_World_Quest_Emissaries"
step
label quest-42927
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 42.07,80.84 < 30 |only if walking
accept DANGER: Malisandra##42927 |goto Val'sharah/0 42.85,76.78
|tip You will accept this quest automatically.
step
kill Malisandra##109281 |q 42927/1 |goto Val'sharah/0 42.28,76.33 |future
|tip This is an elite enemy, you may need a group to defeat it.
|next "Legion_World_Quest_Emissaries"
step
label quest-43333
Follow the path |goto Val'sharah/0 41.68,58.36 < 20 |only if walking
Follow the path up |goto 38.59,57.50 < 20 |only if walking
Follow the path down |goto 37.52,54.72 < 20 |only if walking
Cross the water |goto 34.55,52.11 < 25 |only if walking
Follow the path |goto 33.51,51.15 < 25 |only if walking
accept Danger: Nylaathria the Forgotten##43333 |goto 32.46,48.16
|tip You will accept this quest automatically.
step
kill Nylaathria the Forgotten##109990 |q 43333/1 |goto 32.46,48.16 |future
|tip This is an elite enemy, you may need a group to defeat it.
|next "Legion_World_Quest_Emissaries"
step
label quest-43347
Follow the path |goto Val'sharah/0 68.82,53.06 < 30 |only if walking
accept DANGER: Rabxach##43347 |goto Val'sharah/0 69.93,57.54
|tip You will accept this quest automatically.
step
kill Rabxach##110342 |q 43347/1 |goto 69.93,57.54 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41700
Follow the path |goto Val'sharah/0 55.73,56.69 < 30 |only if walking
Follow the path |goto 54.81,51.75 < 30 |only if walking
Follow the path |goto 53.29,50.13 < 30 |only if walking
Follow the path |goto 52.45,46.27 < 30 |only if walking
Follow the path up |goto 52.09,43.69 < 30 |only if walking
accept DANGER: Shalas'aman##41700 |goto Val'sharah/0 52.05,39.58
|tip You will accept this quest automatically.
step
kill Shalas'aman##104523 |q 41700/1 |goto 52.05,39.58 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43101
Follow the shore |goto Val'sharah/0 24.17,66.62 < 30 |only if walking
accept DANGER: Withdoctor Grgl-Brgl##43101 |goto 23.33,70.98
|tip You will accept this quest automatically.
step
Enter the cave |goto 24.09,68.59 < 30 |walk
kill Withdoctor Grgl-Brgl##109648 |q 43101/1 |goto 23.33,70.98 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41995
Follow the path |goto Val'sharah/0 57.17,71.21 < 30 |only if walking
Follow the path |goto 58.85,75.75 < 30 |only if walking
accept Dark Corruption##41995 |goto Val'sharah/0 62.44,71.91
|tip You will accept this quest automatically.
stickystart "Slay_Darkfiend_Satyr"
stickystart "Nightmare_Imps"
step
clicknpc Moonclaw Druid##95617+
|tip They look like druids in cat form around this area.
Free #3# Moonclaw Druids |q 41995/3 |goto 62.44,71.91
step
clicknpc Nightmare Totem##97800+
|tip They look like tall white totem poles with red scrathes in them around this area.
Destroy #3# Nightmare Totems |q 41995/4 |goto 62.44,71.91
step
label "Slay_Darkfiend_Satyr"
Kill Darkfiend enemies around this area
Slay #6# Darkfiend Satyr |q 41995/1 |goto 62.44,71.91
step
label "Nightmare_Imps"
kill 9 Nightmare Imp##95599 |q 41995/2 |goto 62.44,71.91
|next "Legion_World_Quest_Emissaries"
step
label quest-42745
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: A Burden to Bear##42745
|tip You will accept this quest automatically.
step
kill Festerhide Grizzly##95779+ |q 42745/1
|tip You will find Grizzly mobs along the path to the first boss.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42745/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42743
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Kudzilla##42743
|tip You will accept this quest automatically.
step
kill Kudzilla##99362 |q 42743/1
|tip Kudzilla is located behind the building between Archdruid Glaidalis and Oakheart.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42743/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42714
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Mythana##42714
|tip You will accept this quest automatically.
step
kill Mythana##101641 |q 42714/1
|tip Mythana is located in an alcove off the final path to the first boss.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42714/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42744
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Preserving the Preservers##42744
|tip You will accept this quest automatically.
step
clicknpc Injured Preserver Druid##108460
Revive #5# Preservers |q 42744/1
|tip The first three are located near the entrance to the instance.
|tip The fourth is located behind the building between Archdruid Glaidalis and Oakheart.
|tip The last is located near the beginning of the water between Oakheart and Dresaron.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42744/2
|next "Legion_World_Quest_Emissaries"
step
label quest-42742
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Rage Rot##42742
|tip You will accept this quest automatically.
step
Follow the path |goto Darkheart Thicket/0 36.46,23.60 < 30 |walk
Follow the path |goto Darkheart Thicket/0 27.97,24.13 < 30 |walk
kill Rage Rot##101660 |q 42742/1 |goto Darkheart Thicket/0 17.95,20.18
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42742/1 |goto 82.80,87.15
|next "Legion_World_Quest_Emissaries"
step
label quest-41860
Follow the path |goto Val'sharah/0 58.69,59.38 < 30 |only if walking
Follow the path |goto 59.89,61.39 < 30 |only if walking
Cross the bridge |goto 61.47,61.62 < 30 |only if walking
accept Dealing with Satyrs##41860 |goto Val'sharah/0 63.70,60.77
|tip You will accept this quest automatically.
step
talk Xorvasc##104970
Tell him: "_Let's do battle!_"
Defeat Xorvasc |q 41860/1 |goto 63.70,60.77 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44884
Follow the path |goto Val'sharah/0 55.76,56.75 < 15 |only if walking
Follow the path |goto 54.81,51.90 < 25 |only if walking
Follow the path |goto 53.29,50.09 < 25 |only if walking
accept Defense of Emerald Bay##44884 |goto 49.73,41.54
|tip You will accept this quest automatically.
step
clicknpc Fel Mortar##115747
|tip You can use these to deal massive damage to enemies for a short period of time.
kill Eredar Soulflayer##115891+, Legion Vanguard##115008+, Fel Spreader##115790+
Repel the Legion forces |q 44884/1 |goto 49.73,41.54
|next "Legion_World_Quest_Emissaries"
step
label quest-41546
Follow the path |goto Val'sharah/0 55.03,74.55 < 20 |only if walking
Follow the path |goto 57.68,76.83 < 25 |only if walking
Follow the path |goto 56.62,82.86 < 25 |only if walking
Follow the path |goto 56.97,86.43 < 15 |only if walking
Follow the path |goto 56.06,88.29 < 15 |only if walking
accept Dreamleaf Cluster##41546 |goto 53.76,87.32
|tip You will accept this quest automatically.
step
clicknpc Dreamleaf Cluster##104378
Dreamleaf Cluster gathered |q 41546/1 |goto 53.76,87.32
|next "Legion_World_Quest_Emissaries"
step
label quest-41291
Follow the path |goto Val'sharah/0 53.94,73.21 < 25 |only if walking
Follow the path |goto 52.65,75.23 < 25 |only if walking
Follow the path |goto 49.78,78.79 < 25 |only if walking
accept Dreamleaf Cluster##41291 |goto 47.63,77.04
|tip You will accept this quest automatically.
step
clicknpc Dreamleaf Cluster##104378
|tip It's on top of the overhang.
Dreamleaf Cluster gathered |q 41291/1 |goto 47.63,77.04
|next "Legion_World_Quest_Emissaries"
step
label quest-41295
Follow the path |goto Val'sharah/0 55.00,74.49 < 25 |only if walking
Follow the path |goto 57.69,76.14 < 25 |only if walking
Follow the path |goto 56.34,81.14 < 25 |only if walking
Follow the path |goto 57.82,86.75 < 25 |only if walking
accept Dreamleaf-Covered Ancient##41295 |goto 61.77,82.78
|tip You will accept this quest automatically.
step
clicknpc Dreamleaf Bloom##104259
|tip The blooms are located on the Ancient walking around.
|tip The Owlbeasts will attack and kill the ancient, so you may have to wait for it to respawn.
|tip There is a bloom inside the Ancient's mouth. Zoom in, it can be difficult to click.
Dreamleaf Bloom gathered |q 41295/1 |goto 61.77,82.78
|next "Legion_World_Quest_Emissaries"
step
label quest-46763
Follow the path up |goto Val'sharah/0 70.58,51.54 < 25 |only if walking
Follow the path |goto 72.57,51.77 < 25 |only if walking
accept Drol'maz##46763 |goto Val'sharah/0 73.60,54.25
|tip You will accept this quest automatically.
step
kill Drol'maz##120304 |q 46763/1 |goto 73.60,54.25 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43756
Follow the path |goto Val'sharah/0 54.98,53.49 < 30 |only if walking
Follow the path |goto 53.27,50.01 < 30 |only if walking
Follow the path |goto 52.39,46.18 < 30 |only if walking
Follow the path |goto 52.04,43.83 < 30 |only if walking
Follow the path |goto 48.79,40.37 < 30 |only if walking
Follow the path down |goto 47.02,40.47 < 30 |only if walking
accept Enigmatic##43756 |goto Val'sharah/0 45.72,41.44
|tip You will accept this quest automatically.
step
clicknpc Puzzle Box##126354
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43756/1 |goto 45.72,41.44
|next "Legion_World_Quest_Emissaries"
step
label quest-41439
accept Exquisite Leystone Deposits##41439 |goto Val'sharah/0 67.40,52.09
|tip You will accept this quest automatically.
step
click Exquisite Leystone Deposit##247912
collect 10 Exquisite Leystone Ore##141233 |q 41439/1 |goto 67.40,52.09
|next "Legion_World_Quest_Emissaries"
step
label quest-46265
Follow the path |goto Val'sharah/0 68.37,48.72 < 25 |only if walking
Follow the path |goto 70.90,46.77 < 25 |only if walking
Follow the path |goto 71.75,42.94 < 25 |only if walking
Follow the path |goto 70.82,33.96 < 20 |only if walking
accept The Fel and the Fawns##46265 |goto 68.10,33.34
|tip You will accept this quest automatically.
stickystart "Fawns"
step
click Containment Crystal##252443
Destroy #6# Containment Crystals |q 46265/1 |goto 68.10,33.34
step
label "Fawns"
kill Eredar Incantator##120302+, Felflame Trickster##120341+, Vile Soulwarden##120321+, Wrathguard Chaosblade##120303+
Kill #10# demons |q 46265/2 |goto 68.10,33.34
|next "Legion_World_Quest_Emissaries"
step
label quest-41567
Follow the path |goto Val'sharah/0 55.75,56.76 < 20 |only if walking
Follow the path |goto 54.81,51.85 < 25 |only if walking
Follow the path |goto 53.29,50.25 < 25 |only if walking
Follow the path |goto 52.43,46.25 < 20 |only if walking
Follow the path |goto 50.13,42.27 < 25 |only if walking
Follow the path down |goto 47.03,40.46 < 20 |only if walking
accept Felhide##41567 |goto 46.38,42.50
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41567/1 |goto 46.36,42.42 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41566
accept Felhide##41566 |goto Val'sharah/0 29.94,71.35
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41566/1 |goto 29.94,71.35 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41565
Follow the path |goto Val'sharah/0 39.54,59.73 < 25 |only if walking
Follow the path |goto 37.12,60.29 < 25 |only if walking
accept Felhide##41565 |goto 34.87,62.09
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41565/1 |goto 34.87,62.09 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41516
accept Felwort##41516 |goto Val'sharah/0 30.00,71.16
|tip You will accept this quest automatically.
step
click Felwort##248009
collect Felwort##124106 |q 41516/1 |goto Val'sharah/0 30.00,71.16
|next "Legion_World_Quest_Emissaries"
step
label quest-41518
Follow the path |goto Val'sharah/0 41.63,59.92 < 15 |only if walking
Follow the path |goto 39.63,61.15 < 15 |only if walking
accept Felwort##41518 |goto 37.93,62.23
|tip You will accept this quest automatically.
step
click Felwort##248009
collect Felwort##124106 |q 41518/1 |goto 37.93,62.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41517
Follow the path |goto Val'sharah/0 68.17,48.54 < 25 |only if walking
Follow the path |goto 65.18,43.62 < 25 |only if walking
Follow the path |goto 63.29,42.27 < 25 |only if walking
Follow the path |goto 61.68,43.65 < 25 |only if walking
Follow the path |goto 60.19,40.97 < 25 |only if walking
accept Felwort##41517 |goto Val'sharah/0 58.81,39.45
|tip You will accept this quest automatically.
step
click Felwort##248009
Felwort gathered |q 41517/1 |goto 58.81,39.45
|next "Legion_World_Quest_Emissaries"
step
label quest-41294
accept Flourishing Dreamleaf##41294 |goto Val'sharah/0 38.27,61.74
|tip You will accept this quest automatically.
step
click Flourishing Dreamleaf##247606
collect 10 Flourishing Dreamleaf##140952 |q 41294/1 |goto 38.27,61.74
|next "Legion_World_Quest_Emissaries"
step
label quest-41533
Follow the path up |goto Val'sharah/0 68.43,48.56 < 15 |only if walking
Follow the path |goto 72.51,44.23 < 20 |only if walking
accept Fragrant Dreamleaf##41533 |goto Val'sharah/0 73.80,38.56
|tip You will accept this quest automatically.
step
click Fragrant Dreamleaf##248026
collect 10 Fragrant Dreamleaf##140957 |q 41533/1 |goto 73.80,38.56
|next "Legion_World_Quest_Emissaries"
step
label quest-45928
Follow the path |goto Val'sharah/0 38.87,58.10 < 25 |only if walking
Follow the path |goto 37.39,54.72 < 25 |only if walking
accept Gelthrak##45928 |goto 35.61,53.34
|tip You will accept this quest automatically.
step
kill Gelthrak##117991
Defeat Gelthrak |q 45928/1 |goto 35.61,53.34 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-45923
Follow the path |goto Val'sharah/0 55.01,74.52 < 15 |only if walking
Follow the path |goto 57.35,76.98 < 25 |only if walking
Follow the path |goto Val'sharah/0 56.62,82.82 < 20 |only if walking
accept Gloth##45923 |goto 57.29,87.62
|tip You will accept this quest automatically.
step
kill Gloth##117049
Defeat Gloth |q 45923/1 |goto 57.29,87.62 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42087
Follow the path up |goto Val'sharah/0 70.60,51.49 < 30 |only if walking
accept Green Horror##42087 |goto Val'sharah/0 72.93,51.35
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Run over the red patches on the ground after you kill enemies.
Repel the Nightmare |q 42087/1 |goto 72.93,51.35
|next "Legion_World_Quest_Emissaries"
step
label quest-43332
Follow the path |goto Val'sharah/0 54.98,74.44 < 30 |only if walking
Follow the path |goto 60.28,74.21 < 30 |only if walking
Follow the path up |goto 64.51,73.92 < 30 |only if walking
Follow the path |goto 66.80,75.41 < 30 |only if walking
accept Grell in a Handbasket##43332 |goto Val'sharah/0 67.46,73.52
|tip You will accept this quest automatically.
stickystart "Wildeyed_Undergrells"
stickystart "Destroy_Moist_Grizzleberries"
step
kill Enderkind##109073 |q 43332/3 |goto 68.11,71.56
step
label "Wildeyed_Undergrells"
kill 10 Wildeyed Undergrell##109045 |q 43332/1 |goto 67.46,73.52
step
label "Destroy_Moist_Grizzleberries"
clicknpc Moist Grizzleberries##251946+
|tip They look like round red balls on the ground around this area.
Destroy #8# Moist Grizzleberries |q 43332/2 |goto 67.46,73.52
|next "Legion_World_Quest_Emissaries"
step
label quest-42124
Follow the path |goto Val'sharah/0 53.34,74.24 < 30 |only if walking
accept Hags and Hexes##42124 |goto Val'sharah/0 50.16,76.08
|tip You will accept this quest automatically.
stickystart "Cragtalon_Harpies"
stickystart "Save_Sylvan_Owls"
step
kill Cragtalon Witchmother##106384 |q 42124/3 |goto 50.31,73.77
step
label "Cragtalon_Harpies"
Kill Cragtalon enemies around this area
Slay #7# Cragtalon Harpies |q 42124/2 |goto 50.16,76.08
step
label "Save_Sylvan_Owls"
clicknpc Sylvan Owl##106372+
|tip They look like birds flying low to the ground around this area.
Save #5# Sylvan Owls |q 42124/1 |goto 49.99,75.98
|next "Legion_World_Quest_Emissaries"
step
label quest-41613
Follow the path |goto Val'sharah/0 55.75,56.73 < 25 |only if walking
Follow the path |goto 53.29,50.25 < 25 |only if walking
Follow the path |goto 52.03,43.84 < 25 |only if walking
Follow the path |goto 46.64,38.67 < 25 |only if walking
Follow the path |goto 44.41,39.89 < 25 |only if walking
accept Huge Mossgill Perch##41613 |goto 42.86,38.05
|tip You will accept this quest automatically.
step
Fish from the Huge Mossgill Perch School |cast Fishing##131474
collect 10 Huge Mossgill Perch##134568 |q 41613/1 |goto 42.86,38.05
|next "Legion_World_Quest_Emissaries"
step
label quest-41612
Follow the path |goto Val'sharah/0 53.26,71.64 < 30 |only if walking
Follow the path |goto 48.66,69.36 < 30 |only if walking
accept Huge Mossgill Perch##41612 |goto 46.69,70.04
|tip You will accept this quest automatically.
step
Fish from the Huge Mossgill Perch School |cast Fishing##131474
collect 10 Huge Mossgill Perch##134568 |q 41612/1 |goto 46.69,70.04
|next "Legion_World_Quest_Emissaries"
step
label quest-41270
Follow the path |goto Val'sharah/0 55.88,71.54 < 20 |only if walking
Follow the path down |goto 59.60,71.21 < 20 |only if walking
accept Huge Mossgill Perch##41270 |goto 61.78,70.10
|tip You will accept this quest automatically.
step
Fish from the Huge Mossgill Perch School |cast Fishing##131474
collect 10 Huge Mossgill Perch##134568 |q 41270/1 |goto 61.78,70.10
|next "Legion_World_Quest_Emissaries"
step
label quest-45804
Follow the path |goto Val'sharah/0 53.49,74.02 < 30 |only if walking
Follow the path |goto 51.50,75.64 < 25 |only if walking
accept Impvasion!##45804 |goto 49.24,76.99
|tip You will accept this quest automatically.
step
kill Mischief-Maker Ix'blat##118066
Repel the Legion forces |q 45804/2 |goto 49.24,76.99
step
kill Fiendish Imp##118077+
Kill the imps |q 45804/1 |goto 49.24,76.99
|next "Legion_World_Quest_Emissaries"
step
label quest-42028
Follow the path |goto Val'sharah/0 56.07,58.93 < 30 |only if walking
Follow the path |goto 57.31,64.02 < 30 |only if walking
accept Into the Nightmare##42028 |goto Val'sharah/0 59.71,65.14
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Reaching 10 stacks of the Creeping Nightmare debuff will cause a Shadowy Nightmare to spawn.
|tip Kill it to return to the normal realm.
Cleanse the Nightmare |q 42028/1 |goto 59.71,65.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41271
Enter the Strange Whirlpool |goto Val'sharah/0 30.50,62.43 < 15 |walk
accept Into the Whirlpool##41271 |goto 30.50,62.43
|tip You will accept this quest automatically.
step
Fish from the Albino Barracuda Schools |cast Fishing##131474
collect 8 Albino Barracuda##139279 |q 41271/1 |goto 24.88,55.37
|tip When finished, you may leave the cave by swimming through the Strange Whirlpool again.
|next "Legion_World_Quest_Emissaries"
step
label quest-41531
Follow the path |goto Val'sharah/0 53.47,74.03 < 20 |only if walking
Follow the path |goto 51.49,75.68 < 20 |only if walking
Follow the path |goto 49.32,80.33 < 20 |only if walking
accept Iridescent Dreamleaf##41531 |goto 47.23,85.46
|tip You will accept this quest automatically.
step
click Iridescent Dreamleaf##248024
collect 10 Iridescent Dreamleaf##140955 |q 41531/1 |goto 47.23,85.46
|next "Legion_World_Quest_Emissaries"
step
label quest-42150
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 44.04,84.26 < 30 |only if walking
Follow the path down |goto 44.16,87.52 < 30 |only if walking
accept Kal'delar Naga Incursion##42150 |goto Val'sharah/0 39.35,85.86
|tip You will accept this quest automatically.
stickystart "Murkwater_Naga"
stickystart "Burn_Murkwater_Standards"
step
kill Murkwater Oracle##102622 |q 42150/3 |goto 39.35,85.86
step
label "Murkwater_Naga"
Kill Murkwater enemies around this area
Slay #12# Murkwater Naga |q 42150/1 |goto 39.35,85.86
step
label "Burn_Murkwater_Standards"
click Murkwater Standards##252340
|tip They look like blue flags hanging from poles around this area.
Burn #6# Murkwater Standards |q 42150/2 |goto 39.35,85.86
|next "Legion_World_Quest_Emissaries"
step
label quest-43753
Follow the path |goto Val'sharah/0 56.65,70.60 < 30 |only if walking
Follow the path |goto 57.73,76.08 < 30 |only if walking
Follow the path |goto 56.93,84.20 < 30 |only if walking
accept Ley Race##43753 |goto Val'sharah/0 57.99,89.31
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43753/1 |goto 57.99,89.31
|next "Legion_World_Quest_Emissaries"
step
label quest-41504
accept Leystone Basilisks##41504 |goto Val'sharah/0 57.05,58.55
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Kill these loot them completly and then mine them.
|tip Be careful, only one person can mine each mob, mine them quickly after looting them.
collect 40 Leystone-Encrusted Spike##134104 |q 41504/1 |goto Val'sharah/0 59.92,60.66
|next "Legion_World_Quest_Emissaries"
step
label quest-45047
Follow the path |goto Val'sharah/0 43.12,59.03 < 20 |only if walking
Follow the path |goto 47.92,53.89 < 30 |only if walking
accept Like the Wind##45047 |goto 47.15,51.07
|tip You will accept this quest automatically.
step
Talk to Archmage Kesalon |q 45047/1 |goto 47.15,51.07
Goal Reached |q 45047/2 |goto 40.61,62.29
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|tip You must go under the closest passage in the bridge, then the farthest on the opposite side.
|tip The goal is through the middle passage, on the far side of the yellow wall.
|next "Legion_World_Quest_Emissaries"
step
label quest-41530
Follow the path |goto Val'sharah/0 68.17,48.55 < 10 |only if walking
Follow the path |goto 65.26,43.75 < 25 |only if walking
Follow the path |goto 63.18,40.85 < 25 |only if walking
accept Lively Dreamleaf##41530 |goto Val'sharah/0 60.29,36.73
|tip You will accept this quest automatically.
step
click Lively Dreamleaf##248023
collect 10 Lively Dreamleaf##140954 |q 41530/1 |goto 60.29,36.73
|next "Legion_World_Quest_Emissaries"
step
label quest-41600
Follow the path |goto Val'sharah/0 68.43,48.60 < 25 |only if walking
Follow the path |goto 73.16,42.70 < 25 |only if walking
accept Lively Mossgill Perch##41600 |goto 73.18,35.79
|tip You will accept this quest automatically.
step
Fish from the Lively Mossgill Perch schools |cast Fishing##131474
collect 10 Lively Mossgill Perch##134567 |q 41600/1 |goto 73.18,35.79
|next "Legion_World_Quest_Emissaries"
step
label quest-41601
Follow the path |goto Val'sharah/0 55.45,54.61 < 25 |only if walking
Follow the path |goto 57.71,52.11 < 25 |only if walking
accept Lively Mossgill Perch##41601 |goto Val'sharah/0 60.41,49.69
|tip You will accept this quest automatically.
step
Fish from the Lively Mossgill Perch schools |cast Fishing##131474
collect 10 Lively Mossgill Perch##134567 |q 41601/1 |goto 60.41,49.69
|next "Legion_World_Quest_Emissaries"
step
label quest-44011
Follow the path down |goto Val'sharah/0 56.71,62.57 < 30 |only if walking
Follow the path up |goto 53.91,64.33 < 30 |only if walking
Cross the water |goto 51.91,68.85 < 30 |only if walking
Climb the root |goto 51.30,68.55 < 6 |only if walking
accept Lost Wisp##44011 |goto 48.74,64.61
|tip You will accept this quest automatically.
step
Use the Grow Tree ability
|tip It's on your action bar.
|tip Use the ability next to the spots of bundled roots on the ground around this area.
|tip Avoid the fish in the water with the blue circles around them. They will eat the wisp.
Heal the Twisted Glade #10# Times |q 44011/1 |goto 48.74,64.61
|next "Legion_World_Quest_Emissaries"
step
label quest-41965
Follow the path |goto Val'sharah/0 52.74,75.45 < 30 |only if walking
Follow the path |goto 54.39,78.61 < 30 |only if walking
accept Lunarwing Liberation##41965 |goto Val'sharah/0 54.01,82.57
|tip You will accept this quest automatically.
stickystart "Slay_Thistleleaf_Sprites_2"
stickystart "Save_Lunarwings"
step
kill Thistleleaf Thorndancer##93444 |q 41965/3 |goto 55.08,81.50
|tip There are more around this area.
step
label "Slay_Thistleleaf_Sprites_2"
Kill Thistleleaf enemies around this area
Slay #10# Thistleleaf Sprites |q 41965/2 |goto 54.04,82.55
step
label "Save_Lunarwings"
kill Thistleleaf Ruffian##91354+
|tip They fly around this area on some of the Lunarwings.
clicknpc Trapped Lunarwing##93489
|tip They look like green flying creatures trapped on the ground by vines around this area.
Save #8# Lunarwings |q 41965/1 |goto 53.96,83.05
|next "Legion_World_Quest_Emissaries"
step
label quest-43755
Follow the path |goto Val'sharah/0 44.51,58.72 < 30 |only if walking
Climb over the rocks |goto 45.77,53.25 < 30 |only if walking
accept The Magic of Flight##43755 |goto Val'sharah/0 46.26,51.16
|tip You will accept this quest automatically.
step
talk Archmage Kesalon##110915
clicknpc Arcane Artifact##110664
|tip Stay inside the bubbles as they float to reach the Arcane Artifact under the bridge.
Find the Item |q 43755/1 |goto 46.31,50.30
|next "Legion_World_Quest_Emissaries"
step
label quest-41440
accept Magnificent Leystone Deposits##41440 |goto Val'sharah/0 42.18,63.21
|tip You will accept this quest automatically.
step
click Magnificent Leystone Deposit##247913
collect 10 Magnificent Leystone Ore##141234 |q 41440/1 |goto 42.18,63.21
|next "Legion_World_Quest_Emissaries"
step
label quest-41861
Follow the path |goto Val'sharah/0 68.36,48.89 < 25 |only if walking
Follow the path |goto 65.62,44.11 < 25 |only if walking
accept Meet The Maw##41861 |goto 66.03,39.14
|tip You will accept this quest automatically.
step
clicknpc The Maw##104992
Defeat The Maw |q 41861/1 |goto 66.03,39.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41334
Follow the path |goto Val'sharah/0 68.38,48.79 < 25 |only if walking
Follow the path |goto 70.04,47.01 < 25 |only if walking
Follow the path |goto 70.37,41.41 < 25 |only if walking
Follow the path |goto 71.43,38.63 < 25 |only if walking
Follow the path |goto 70.77,33.82 < 25 |only if walking
accept Musky Bear Hide##41334 |goto 69.50,34.49
|tip You will accept this quest automatically.
step
kill Vale Bear##106467+
|tip Skin the corpses.
|tip If you click the Needlers to knock them off the bears, you will be able to kill the bear they are riding.
collect 12 Musky Bear Hide##134811 |q 41334/1 |goto 68.36,33.62
|next "Legion_World_Quest_Emissaries"
step
label quest-45925
Follow the path |goto Val'sharah/0 44.54,58.68 < 25 |only if walking
Follow the path |goto Val'sharah/0 44.54,58.68 < 25 |only if walking
accept Nez'val##45925 |goto Val'sharah/0 47.08,55.73
|tip You will accept this quest automatically.
step
kill Nez'val##117069 |q 45925/1 |goto 47.08,55.73 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41862
Follow the path |goto Val'sharah/0 55.71,71.63 < 30 |only if walking
Follow the path |goto 56.51,70.18 < 30 |only if walking
accept Only Pets Can Prevent Forest Fires##41862 |goto Val'sharah/0 56.30,65.30
|tip You will accept this quest automatically.
step
talk Fragment of Fire##105093
Tell him "Let's do battle!"
Defeat Fragment of Fire |q 41862/1 |goto Val'sharah/0 56.30,65.30
|next "Legion_World_Quest_Emissaries"
step
label quest-42145
Follow the path |goto Val'sharah/0 68.70,47.92 < 30 |only if walking
Follow the path |goto 70.04,46.89 < 30 |only if walking
Follow the path |goto 70.37,41.45 < 30 |only if walking
Follow the path up |goto 71.30,36.43 < 30 |only if walking
Follow the path |goto 70.69,33.90 < 30 |only if walking
accept Out of the Woodwork##42145 |goto Val'sharah/0 66.90,30.02
|tip You will accept this quest automatically.
step
clicknpc Bloodspike Needler##106419+
|tip They ride on the backs of bears around this area.
kill Bloodspike Needler##106419+
Stop #12# Bloodspike Needlers |q 42145/1 |goto 66.90,30.02
|next "Legion_World_Quest_Emissaries"
step
label quest-41956
Follow the path |goto Val'sharah/0 53.23,71.65 < 30 |only if walking
Follow the path |goto 50.21,70.40 < 30 |only if walking
Follow the path |goto 47.93,68.50 < 30 |only if walking
accept Petrified Acolytes##41956 |goto Val'sharah/0 45.63,68.48
|tip You will accept this quest automatically.
stickystart "Acolyte of Elothir"
step
kill Stoneblood Ravager##91121+, Stoneblood Elderwitch##94208+
Slay 12 Stoneblood Harpy |q 41956/2 |goto Val'sharah/0 45.36,70.70
step
label "Acolyte of Elothir"
Save 7 Acolyte of Elothir |q 41956/1 |goto Val'sharah/0 45.36,70.70
|next "Legion_World_Quest_Emissaries"
step
label quest-42819
Follow the path |goto Val'sharah/0 24.38,66.42 < 20 |only if walking
Follow the path |goto 23.46,69.63 < 20 |only if walking
accept Pocket Wizard##42819 |goto 24.54,69.47
|tip You will accept this quest automatically.
step
kill Humongris##108879 |q 42819/1 |goto 24.00,69.87 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Spread out to minimize damage from Fire Boom and Ice Fist. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Spread out to minimize damage from Fire Boom and Ice Fist. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Move away from the raid when affected by You Go Bang! |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-41964
Follow the path |goto Val'sharah/0 68.42,48.60 < 30 |only if walking
Follow the path |goto 71.33,46.06 < 30 |only if walking
accept Poisoned Waters##41964 |goto Val'sharah/0 72.93,41.27
|tip You will accept this quest automatically.
stickystart "Poisonous_Slimes"
stickystart "Destroy_Poisonous_Mushrooms"
step
Enter the cave |goto 74.73,43.75 < 30 |walk
kill Maelisandra Venitox##106340 |q 41964/1 |goto 75.10,44.31
step
label "Destroy_Poisonous_Mushrooms"
click Poisonous Mushrooms##249703
|tip They look like small yellow mushrooms on the ground near the water around this area.
Destroy #10# Poisonous Mushrooms |q 41964/2 |goto 72.93,41.27
step
label "Poisonous_Slimes"
kill 12 Poisonous Slime##106331+ |q 41964/3 |goto 72.93,41.27
|next "Legion_World_Quest_Emissaries"
step
label quest-41337
Follow the path |goto Val'sharah/0 55.71,71.63 < 30 |only if walking
accept Pristine Stag Hide##41337 |goto Val'sharah/0 56.24,68.39
|tip You will accept this quest automatically.
step
kill Gleamhoof Doe##93314+, Gleamhoof Stag##93313+
|tip Loot and Skin these.
collect 8 Pristine Stag Hide##134813 |q 41337/1 |goto Val'sharah/0 56.32,66.30
|next "Legion_World_Quest_Emissaries"
step
label quest-43336
Follow the path |goto Val'sharah/0 67.20,50.41 < 30 |only if walking
Drop down |goto 64.95,49.33 < 30 |only if walking
accept Purge of the Nightmare##43336 |goto Val'sharah/0 63.57,47.57
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Bloodflower##251766
|tip They look like skinny plants puffing purple smoke around this area.
Cleanse Dreadroot |q 43336/1 |goto 63.57,47.57
|next "Legion_World_Quest_Emissaries"
step
label quest-41457
Follow the path |goto Val'sharah/0 55.75,56.74 < 25 |only if walking
Follow the path |goto 54.81,51.85 < 25 |only if walking
Follow the path |goto 53.29,50.19 < 25 |only if walking
Follow the path |goto 52.04,43.83 < 25 |only if walking
Follow the path |goto 53.07,40.54 < 25 |only if walking
accept Radiant Leystone Outcropping##41457 |goto 51.77,39.53
|tip You will accept this quest automatically.
step
click Radiant Leystone Outcropping##247939
collect 1 Radiant Leystone Ore##123918 |q 41457/1 |goto 51.77,39.53
|next "Legion_World_Quest_Emissaries"
step
label quest-43324
Follow the path |goto Val'sharah/0 55.00,74.47 < 30 |only if walking
Follow the path |goto 57.72,76.16 < 30 |only if walking
Follow the path down |goto 57.44,78.32 < 30 |only if walking
Follow the path down |goto 58.57,80.36 < 30 |only if walking
accept Rage of the Owlbeasts##43324 |goto Val'sharah/0 60.58,81.90
|tip You will accept this quest automatically.
step
clicknpc Sister of the Moon##108600
kill Undulating Boneslime##108327+, Moonlost Owlbeast##108259+
Save Lostlight Grotto |q 43324/1 |goto Val'sharah/0 59.20,81.60
|next "Legion_World_Quest_Emissaries"
step
label quest-44730
Follow the path |goto Val'sharah/0 55.00,74.52 < 30 |only if walking
accept Ravaged Dreams##44730 |goto Val'sharah/0 55.10,78.14
|tip You will accept this quest automatically.
step
click Sweetgrass##267279
clicknpc Injured Dreamrunner##115119
kill Macabre Scavenger##115021+, Legion Vanguard##115008+
Repel the Legion forces |q 44730/1 |goto Val'sharah/0 55.10,78.14
|next "Legion_World_Quest_Emissaries"
step
label quest-41496
Follow the path |goto Val'sharah/0 53.78,73.64 < 30 |only if walking
Follow the path |goto 52.34,75.24 < 30 |only if walking
Follow the path |goto 50.28,78.27 < 30 |only if walking
Follow the path |goto 48.91,82.71 < 30 |only if walking
Enter Sleeper's Barrow |goto Val'sharah/0 50.02,85.63 < 10
accept Raw Leystone Seams##41496 |goto 62.86,49.07
|tip You will accept this quest automatically.
step
click Raw Leystone Seam##247988
collect Raw Leystone Ore##141218 |q 41496/1 |goto 62.84,48.48
|next "Legion_World_Quest_Emissaries"
step
label quest-41333
Follow the path |goto Val'sharah/0 55.75,56.76 < 20 |only if walking
Follow the path |goto 54.81,51.85 < 25 |only if walking
Follow the path |goto 53.29,50.25 < 25 |only if walking
Follow the path |goto 51.59,50.77 < 25 |only if walking
accept Rugged Wolf Hide##41333 |goto 49.79,52.85
|tip You will accept this quest automatically.
step
kill Dusky Howler##100409+
|tip Skin the corpses.
|tip Wolves are found all around this area.
collect 12 Rugged Wolf Hide##134810 |q 41333/1 |goto 49.79,52.85
|next "Legion_World_Quest_Emissaries"
step
label quest-43709
Follow the path |goto Val'sharah/0 54.98,53.49 < 30 |only if walking
Follow the path |goto 53.27,50.01 < 30 |only if walking
Follow the path |goto 52.39,46.18 < 30 |only if walking
Follow the path |goto 52.04,43.83 < 30 |only if walking
Follow the path |goto 48.79,40.37 < 30 |only if walking
Follow the path down |goto 47.02,40.47 < 30 |only if walking
accept Seal Clubbing##43709 |goto Val'sharah/0 47.33,44.60
|tip You will accept this quest automatically.
stickystart "Slay_Thistleleaf_Sprites"
stickystart "Rouse_Druids_Of_The_Fin"
step
click Hypnotic Water Lillies
|tip They look like flowers floating on the surface of the water around this area.
Destroy #3# Hypnotic Water Lillies |q 43709/2 |goto 47.48,44.89
step
label "Slay_Thistleleaf_Sprites"
Kill Thistleleaf enemies around this area
Slay #10# Thistleleaf Sprites |q 43709/3 |goto 47.33,44.60
step
label "Rouse_Druids_Of_The_Fin"
clicknpc Druid of the Fin##111252+
Rouse #8# Druids of the Fin |q 43709/1 |goto 47.33,44.60
|next "Legion_World_Quest_Emissaries"
step
label quest-42076
accept Shadowfen Village##42076 |goto Val'sharah/0 65.95,51.94
|tip You will accept this quest automatically.
stickystart "Wormtalon_Harpies"
stickystart "Shadowfen_Valuables"
step
kill Grelda the Hag##95123 |q 42076/1 |goto 65.90,53.32
step
label "Wormtalon_Harpies"
Kill enemies around this area
Slay #10# Wormtalon Harpies |q 42076/2 |goto 65.95,51.94
step
label "Shadowfen_Valuables"
Kill enemies around this area
click Mistfall Caches##249393
|tip They look like small metal and wooden chests on the ground around this area, mostly inside buildings.
collect 20 Shadowfen Valuables##136785 |q 42076/3 |goto 65.95,51.94
|next "Legion_World_Quest_Emissaries"
step
label quest-44895
Follow the path down |goto Highmountain/0 29.66,40.98 < 30 |only if walking
Follow the path |goto 27.41,41.53 < 30 |only if walking
Follow the path |goto 26.71,42.99 < 30 |only if walking
Cross the water |goto 23.83,45.58 < 30 |only if walking
Follow the coast |goto Broken Shore/0 -3670.00,-18200.00 < 30 |only if walking
accept Sharptalon Swarm!##44895 |goto Val'sharah/0 57.57,7.36
|tip You will accept this quest automatically.
step
Slay the Sharptalon all along these hills on the coast
Cull Sharptalon Falcosaurs |q 44895/1 |goto Val'sharah/0 50.42,8.53
|next "Legion_World_Quest_Emissaries"
step
label quest-41553
Follow the path |goto Val'sharah/0 68.72,51.76 < 30 |only if walking
Follow the path |goto 67.84,56.63 < 30 |only if walking
Go around the tree |goto 68.51,57.82 < 30 |only if walking
accept Slab of Bacon##41553 |goto Val'sharah/0 68.54,59.34
|tip You will accept this quest automatically.
step
kill Well-Fed Bear##103785
collect Thick Slab of Bacon##135511 |q 41553/1 |goto Val'sharah/0 69.23,59.39 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41554
Follow the path |goto Val'sharah/0 55.75,56.73 < 25 |only if walking
Follow the path |goto 54.81,51.86 < 25 |only if walking
Follow the path |goto 53.31,50.26 < 25 |only if walking
Follow the path down |goto 50.65,49.28 < 25 |only if walking
accept Slab of Bacon##41554 |goto 49.28,46.73
|tip You will accept this quest automatically.
step
kill Well-Fed Bear##103785
collect 1 Thick Slab of Bacon##135511 |q 41554/1 |goto 49.28,46.73 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-41260
Follow the path |goto Val'sharah/0 56.62,70.50 < 25 |only if walking
Follow the path |goto 58.80,67.67 < 25 |only if walking
accept Slab of Bacon##41260 |goto 59.89,66.61
|tip You will accept this quest automatically.
step
kill Well-Fed Bear##103785
collect 1 Thick Slab of Bacon##135511 |q 41260/1 |goto 59.89,66.61 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-42779
Follow the path |goto Val'sharah/0 55.74,56.73 < 30 |only if walking
Follow the path |goto 54.96,53.39 < 30 |only if walking
Cross the bridge |goto 56.24,50.43 < 20 |only if walking
Enter the Tangled Cleft |goto 57.32,46.31 < 30 |only if walking
accept The Sleeping Corruption##42779 |goto 55.32,43.12
|tip You will accept this quest automatically.
step
kill Shar'thos##108678 |q 42779/1 |goto 55.32,43.12 |future
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Spread out to avoid chaining Dread Flame to party members. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Spread out to avoid chaining Dread Flame to party members. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Keep Shar'thos' head and tail pointed away from raid members. |only if grouprole("TANK")
|next "Legion_World_Quest_Emissaries"
step
label quest-41855
Follow the path |goto Val'sharah/0 54.97,74.44 < 30 |only if walking
Follow the path |goto 57.70,76.14 < 30 |only if walking
Follow the path |goto 56.36,81.23 < 30 |only if walking
Follow the path |goto 57.65,86.58 < 30 |only if walking
accept Stand Up to Bullies##41855 |goto Val'sharah/0 55.86,88.69
|tip You will accept this quest automatically.
step
clicknpc Thistleleaf Bully##105009
Stop the Thistleleaf Bully |q 41855/1 |goto Val'sharah/0 55.86,88.69
|next "Legion_World_Quest_Emissaries"
step
label quest-41293
accept Supplies Needed: Dreamleaf##41293 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Dreamleaf##124102
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Supplies Needed: Dreamleaf##41293 |goto 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41316
accept Supplies Needed: Leystone##41316 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Supplies Needed: Leystone##41316 |goto 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41339
accept Supplies Needed: Stonehide Leather##41339 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Supplies Needed: Stonehide Leather##41339 |goto 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41996
Follow the path |goto Val'sharah/0 68.23,48.67 < 30 |only if walking
Follow the path |goto 66.68,45.79 < 30 |only if walking
Follow the path |goto 65.23,44.28 < 30 |only if walking
Follow the path |goto 63.23,40.20 < 30 |only if walking
accept Tangled Nightmare##41996 |goto Val'sharah/0 61.17,37.28
|tip You will accept this quest automatically.
stickystart "Destroy_Nightmare_Totems_Tangled_Nightmare"
stickystart "Creature_Of_Nightmare_Tangled_Nightmare"
step
clicknpc Shala'nir Druid##97548+
|tip They look like dead bodies on the ground around this area.
Release #5# Shala'nir Druids |q 41996/1 |goto 61.17,37.28
step
label "Destroy_Nightmare_Totems_Tangled_Nightmare"
clicknpc Nightmare Totem##97565+
|tip They look like white totem poles with red scratches in them around this area.
Destroy #5# Nightmare Totems |q 41996/2 |goto 61.17,37.28
step
label "Creature_Of_Nightmare_Tangled_Nightmare"
Kill enemies around this area
Slay #12# Creatures of Nightmare |q 41996/3 |goto 61.17,37.28
|next "Legion_World_Quest_Emissaries"
step
label quest-46261
accept The Taste of Corruption##46261 |goto Val'sharah/0 40.10,62.06
|tip You will accept this quest automatically.
stickystart "Fel"
step
kill Suspicious Villager##120136+
Release #10# Suspicious Villagers |q 46261/1 |goto 40.10,62.06
step
click Bucket of Corrupted Water##268624
Corrupted Waters cleansed |q 46261/2 |goto 38.35,60.71
step
label "Fel"
clicknpc Fel Corruptor##120151
Fel Corruptors destroyed |q 46261/3 |goto 40.10,62.06
|next "Legion_World_Quest_Emissaries"
step
label quest-41980
accept Temple Defense##41980 |goto Val'sharah/0 57.15,54.02
|tip You will accept this quest automatically.
stickystart "Terrorfiend_Bats"
stickystart "Ancient_Annihilator"
step
Kill Darkfiend enemies around this area
Slay #12# Temple Attackers |q 41980/1 |goto 56.21,54.04
step
label "Terrorfiend_Bats"
kill 3 Terrorfiend Bat##92794+ |q 41980/2 |goto 55.66,54.62
|tip They're flying around in the sky.
step
label "Ancient_Annihilator"
kill Ancient Annihilator##110896 |q 41980/3 |goto 56.08,53.93
|next "Legion_World_Quest_Emissaries"
step
label quest-45921
Follow the path |goto Val'sharah/0 53.42,74.12 < 20 |only if walking
accept Thal'xur##45921 |goto Val'sharah/0 50.65,73.95
|tip You will accept this quest automatically.
step
kill Thal'xur##118016 |q 45921/1 |goto 50.65,73.95 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-40279
Follow the path |goto Val'sharah/0 55.76,56.77 < 20 |only if walking
Follow the path |goto 54.97,53.49 < 20 |only if walking
Follow the path |goto 53.28,50.09 < 25 |only if walking
Follow the path |goto 52.44,46.30 < 25 |only if walking
Follow the path |goto 50.86,42.88 < 20 |only if walking
Follow the path |goto 48.79,40.41 < 25 |only if walking
accept Training with Durian##40279 |goto Val'sharah/0 46.38,36.84
|tip You will accept this quest automatically.
step
talk Durian Strongfruit##99035
Tell him: "_Let's do battle!_"
Defeat Durian Strongfruit |q 40279/1 |goto 46.38,36.84
|next "Legion_World_Quest_Emissaries"
step
label quest-41992
Follow the path |goto Val'sharah/0 68.15,48.50 < 30 |only if walking
Follow the path up |goto 65.62,43.13 < 30 |only if walking
accept Twisted Ash##41992 |goto 67.10,38.35
|tip You will accept this quest automatically.
step
Kill enemies around this area
Purge the Nightmare |q 41992/1 |goto 67.10,38.35
|next "Legion_World_Quest_Emissaries"
step
label quest-46766
Follow the path |goto Val'sharah/0 53.44,74.04 < 15 |only if walking
Follow the path |goto 51.28,76.00 < 20 |only if walking
Follow the path |goto 49.32,80.28 < 20 |only if walking
Follow the path |goto Val'sharah/0 47.86,84.73 < 15 |only if walking
Follow the path up |goto 45.66,85.84 < 15 |only if walking
Follow the path down |goto 44.24,87.48 < 15 |only if walking
Drop down |goto 43.73,89.32 < 20 |only if walking
accept Ulgthax##46766 |goto 43.58,88.79
|tip You will accept this quest automatically.
step
kill Ulgthax##120310
Defeat Ulgthax |q 46766/1 |goto 43.58,88.79 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44759
Follow the path |goto Val'sharah/0 57.80,58.95 < 30 |only if walking
Follow the path |goto 59.89,61.55 < 25 |only if walking
Follow the path |goto 62.32,65.59 < 25 |only if walking
accept The Vale of Dread##44759 |goto 65.39,68.96
|tip You will accept this quest automatically.
step
kill Eredar Felweaver##115443+, Felclaw Fiend##115379+, Legion Vanguard##115008+
|tip Use the special action button on screen to destroy totems as well.
Repel the Legion forces |q 44759/1 |goto 65.39,68.96
step
kill Doomcaller Noromonde##115389
Defeat Doomcaller Noromonde |q 44759/2 |goto 66.85,69.11
|next "Legion_World_Quest_Emissaries"
step
label quest-41664
accept Vantus Rune Work Order: Dragons of Nightmare##41664 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Dragons of Nightmare>_
collect 1 Vantus Rune: Dragons of Nightmare##128990 |goto 54.70,73.25
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Sylvia Hartshorn##106901
turnin Vantus Rune Work Order: Dragons of Nightmare##41664 |goto 54.70,73.25
|next "Legion_World_Quest_Emissaries"
step
label quest-42077
Follow the path |goto Val'sharah/0 53.43,74.05 < 30 |only if walking
Follow the path |goto 51.49,75.69 < 30 |only if walking
Follow the path |goto 49.31,80.37 < 30 |only if walking
Enter the Sleeper's Barrow |goto Val'sharah/0 50.01,85.61 < 15 |walk
accept Waking Nightmare##42077 |goto Val'sharah/14 54.94,65.59
|tip You will accept this quest automatically.
stickystart "Slumbering_Nightmares"
stickystart "Slay_Darkfiend_Invaders"
step
kill Waking Nightmare##105973 |q 42077/3 |goto 25.01,50.02
step
label "Slumbering_Nightmares"
kill 8 Slumbering Nightmare##105960 |q 42077/2 |goto 61.44,47.31
step
label "Slay_Darkfiend_Invaders"
Kill Darkfiend enemies around this area
Slay #12# Darkfiend Invaders |q 42077/1 |goto 61.06,57.89
|next "Legion_World_Quest_Emissaries"
step
label quest-44301
Follow the path |goto Val'sharah/0 53.99,72.81 < 30 |only if walking
Follow the path |goto 52.66,75.23 < 30 |only if walking
Cross the bridge |goto 51.49,75.69 < 30 |only if walking
Follow the path |goto 50.28,78.26 < 30 |only if walking
Follow the path |goto 48.86,82.75 < 30 |only if walking
Follow the path |goto 47.09,85.79 < 30 |only if walking
Follow the path up |goto 47.24,88.21 < 30 |only if walking
accept WANTED: Bahagar##44301 |goto Val'sharah/0 45.12,87.68
|tip You will accept this quest automatically.
step
kill Bahagar##110562 |q 44301/1 |goto Val'sharah/0 45.60,88.78 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44305
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
accept WANTED: Bahagar##44305 |goto Val'sharah/0 45.59,88.81
|tip You will accept this quest automatically.
step
kill Bahagar##110562 |q 44305/1 |goto 45.59,88.81 |future
|tip Inside the small cave.
|next "Legion_World_Quest_Emissaries"
step
label quest-44299
Follow the path |goto Val'sharah/0 41.42,60.03 < 30 |only if walking
Follow the path |goto 39.94,60.25 < 30 |only if walking
Follow the path |goto 39.48,59.64 < 30 |only if walking
Follow the path up |goto 38.56,57.40 < 30 |only if walking
Go up the stairs |goto 39.14,53.62 < 30 |only if walking
Follow the path |goto 40.46,53.03 < 30 |only if walking
accept WANTED: Darkshade##44299 |goto Val'sharah/0 44.04,52.71
|tip You will accept this quest automatically.
step
kill Darkshade##92965 |q 44299/1 |goto 44.04,52.71 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44304
Follow the path |goto Val'sharah/0 41.42,60.03 < 30 |only if walking
Follow the path |goto 39.94,60.25 < 30 |only if walking
Follow the path |goto 39.48,59.64 < 30 |only if walking
Follow the path up |goto 38.56,57.40 < 30 |only if walking
Go up the stairs |goto 39.14,53.62 < 30 |only if walking
Follow the path |goto 40.46,53.03 < 30 |only if walking
accept WANTED: Darkshade##44304 |goto Val'sharah/0 44.04,52.71
|tip You will accept this quest automatically.
step
kill Darkshade##92965 |q 44304/1 |goto 44.04,52.71 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44298
Follow the path |goto Val'sharah/0 68.23,48.67 < 30 |only if walking
Follow the path |goto 66.68,45.79 < 30 |only if walking
Follow the path |goto 65.23,44.28 < 30 |only if walking
Follow the path |goto 62.97,48.47 < 30 |only if walking
Drop down |goto 61.97,46.31 < 30 |only if walking
Drop down |goto 61.26,45.34 < 30 |only if walking
accept WANTED: Dreadbog##44298 |goto Val'sharah/0 60.19,44.17
|tip You will accept this quest automatically.
step
kill Dreadbog##97517 |q 44298/1 |goto 60.19,44.17 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44303
Follow the path |goto Val'sharah/0 68.23,48.67 < 30 |only if walking
Follow the path |goto 66.68,45.79 < 30 |only if walking
Follow the path |goto 65.23,44.28 < 30 |only if walking
Follow the path |goto 62.97,48.47 < 30 |only if walking
Drop down |goto 61.97,46.31 < 30 |only if walking
Drop down |goto 61.26,45.34 < 30 |only if walking
accept WANTED: Dreadbog##44303 |goto Val'sharah/0 60.19,44.17
|tip You will accept this quest automatically.
step
kill Dreadbog##97517 |q 44303/1 |goto 60.19,44.17 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43460
Follow the path |goto Val'sharah/0 41.59,59.93 < 30 |only if walking
Follow the path |goto 39.96,60.33 < 30 |only if walking
Follow the path |goto 39.49,59.71 < 30 |only if walking
Follow the path |goto 37.55,59.85 < 30 |only if walking
Follow the path up |goto 35.79,60.94 < 30 |only if walking
accept WANTED: Kiranys Duskwhisper##43460 |goto Val'sharah/0 35.13,59.92
|tip You will accept this quest automatically.
step
kill Kiranys Duskwhisper##94414 |q 43460/1 |goto Val'sharah/0 34.37,58.29 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43629
Follow the path |goto Val'sharah/0 41.59,59.93 < 30 |only if walking
Follow the path |goto 39.96,60.33 < 30 |only if walking
Follow the path |goto 39.49,59.71 < 30 |only if walking
Follow the path |goto 37.55,59.85 < 30 |only if walking
Follow the path up |goto 35.79,60.94 < 30 |only if walking
accept WANTED: Kiranys Duskwhisper##43629 |goto Val'sharah/0 35.13,59.92
|tip You will accept this quest automatically.
step
kill Kiranys Duskwhisper##94414 |q 43629/1 |goto Val'sharah/0 34.37,58.29 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43630
Follow the path |goto Val'sharah/0 56.98,58.47 < 30 |only if walking
Follow the path |goto 59.86,61.41 < 30 |only if walking
Follow the path |goto 60.87,64.51 < 30 |only if walking
Follow the path down |goto 61.34,67.90 < 30 |only if walking
accept WANTED: Perrexx##43630 |goto Val'sharah/0 61.06,69.49
|tip You will accept this quest automatically.
step
kill Perrexx##95318 |q 43630/1 |goto 61.06,69.49 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43458
Follow the path |goto Val'sharah/0 56.98,58.47 < 30 |only if walking
Follow the path |goto 59.86,61.41 < 30 |only if walking
Follow the path |goto 60.87,64.51 < 30 |only if walking
Follow the path down |goto 61.34,67.90 < 30 |only if walking
accept WANTED: Perrexx##43458 |goto Val'sharah/0 61.06,69.49
|tip You will accept this quest automatically.
step
kill Perrexx##95318 |q 43458/1 |goto 61.06,69.49 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44300
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 42.07,80.84 < 30 |only if walking
accept WANTED: Seersei##44300 |goto Val'sharah/0 41.62,78.27
|tip You will accept this quest automatically.
step
kill Seersei##92180 |q 44300/1 |goto 41.62,78.27 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-44302
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 42.07,80.84 < 30 |only if walking
accept WANTED: Seersei##44302 |goto Val'sharah/0 41.62,78.27
|tip You will accept this quest automatically.
step
kill Seersei##92180 |q 44302/1 |goto 41.62,78.27 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43456
Follow the path |goto Val'sharah/0 54.99,74.46 < 30 |only if walking
Follow the path |goto 57.71,76.30 < 30 |only if walking
Follow the path |goto 56.42,81.95 < 30 |only if walking
Follow the path |goto 57.94,86.59 < 30 |only if walking
accept WANTED: Skul'vrax##43456 |goto Val'sharah/0 60.95,87.91
|tip You will accept this quest automatically.
step
clicknpc Elindya Featherlight##92334
Watch the dialogue
|tip Follow Elindya Featherlight when she walks away.
kill Skul'vrax##93654 |q 43456/1 |goto 60.42,90.72 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43631
Follow the path |goto Val'sharah/0 54.99,74.44 < 30 |only if walking
Follow the path |goto 57.69,76.27 < 30 |only if walking
Follow the path |goto 56.34,81.11 < 30 |only if walking
Follow the path |goto 57.85,86.73 < 30 |only if walking
Follow the path down |goto 59.49,86.11 < 30 |only if walking
accept WANTED: Skul'vrax##43631 |goto Val'sharah/0 60.23,87.23
|tip You will accept this quest automatically.
step
clicknpc Elindya Featherlight##92334
Watch the dialogue
|tip Follow Elindya Featherlight when she walks away.
kill Skul'vrax##93654 |q 43631/1 |goto Val'sharah/0 60.87,87.69 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43632
Follow the path |goto Val'sharah/0 41.64,59.93 < 25 |only if walking
Follow the path up |goto 38.59,57.53 < 25 |only if walking
Follow the path |goto 38.05,54.90 < 30 |only if walking
accept WANTED: Theryssia##43632 |goto 37.99,52.80
|tip You will accept this quest automatically.
step
clicknpc Theryssia##94194
|tip This plaque is located on the front of monument.
kill Theryssia##157695 |q 43632/1 |goto 37.99,52.80 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43457
Follow the path |goto Val'sharah/0 41.64,59.93 < 25 |only if walking
Follow the path up |goto 38.59,57.53 < 25 |only if walking
Follow the path |goto 38.05,54.90 < 30 |only if walking
accept WANTED: Theryssia##43457 |goto 37.99,52.80
|tip You will accept this quest automatically.
step
clicknpc Theryssia##94194
|tip This plaque is located on the front of monument.
kill Theryssia##157695 |q 43457/1 |goto 37.99,52.80 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43459
Follow the path |goto Val'sharah/0 67.28,50.44 < 30 |only if walking
Drop down |goto Val'sharah/0 64.98,49.36 < 30 |only if walking
Follow the path |goto 63.41,47.89 < 30 |only if walking
accept WANTED: Thondrax##43459 |goto Val'sharah/0 62.60,47.41
|tip You will accept this quest automatically.
step
kill Thondrax##93205 |q 43459/1 |goto Val'sharah/0 62.60,47.41 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43633
Follow the path |goto Val'sharah/0 67.28,50.44 < 30 |only if walking
Drop down |goto Val'sharah/0 64.98,49.36 < 30 |only if walking
Follow the path |goto 63.41,47.89 < 30 |only if walking
accept WANTED: Thondrax##43633 |goto Val'sharah/0 62.60,47.41
|tip You will accept this quest automatically.
step
kill Thondrax##93205 |q 43633/1 |goto Val'sharah/0 62.60,47.41 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-43248
Follow the path |goto Val'sharah/0 53.25,71.65 < 30 |only if walking
Follow the path |goto 48.32,68.88 < 30 |only if walking
Cross the bridge |goto 45.01,72.92 < 30 |only if walking
Follow the path down |goto 41.63,75.48 < 30 |only if walking
accept Warden Tower Assault: Darkfollow's Spire##43248 |goto Val'sharah/0 38.54,73.99
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Darkfollows_Spire"
step
Slay the Queensguard Captain |q 43248/2 |goto 37.25,78.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Darkfollows_Spire"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43248/1 |goto 38.54,73.99
|next "Legion_World_Quest_Emissaries"
step
label quest-43247
Follow the path |goto Val'sharah/0 53.25,71.65 < 30 |only if walking
Follow the path |goto 48.32,68.88 < 30 |only if walking
Cross the bridge |goto 45.01,72.92 < 30 |only if walking
Follow the path down |goto 41.63,75.48 < 30 |only if walking
accept Warden Tower Assault: Darkfollow's Spire##43247 |goto Val'sharah/0 38.54,73.99
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Darkfollows_Spire"
step
Slay the Gilneas Brigade Captain |q 43247/2 |goto 37.25,78.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Darkfollows_Spire"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 43247/1 |goto 38.54,73.99
|next "Legion_World_Quest_Emissaries"
step
label quest-42070
Follow the path |goto Val'sharah/0 53.25,71.65 < 30 |only if walking
Follow the path |goto 48.32,68.88 < 30 |only if walking
Cross the bridge |goto 45.01,72.92 < 30 |only if walking
Follow the path down |goto 41.63,75.48 < 30 |only if walking
accept Warden Tower Assault: Starstalker's Point##42070 |goto Val'sharah/0 38.18,74.17
|tip You will accept this quest automatically.
stickystart "Queensguard_Troops_1"
step
Slay the Gilneas Brigade Captain |q 42070/2 |goto 37.26,78.25
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Queensguard_Troops_1"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 42070/1 |goto 38.18,74.17
|next "Legion_World_Quest_Emissaries"
step
label quest-43183
Follow the path |goto Val'sharah/0 38.60,57.46 < 30 |only if walking
Follow the path |goto Val'sharah/0 36.12,54.65 < 30 |only if walking
Follow the path |goto Val'sharah/0 33.28,50.85 < 30 |only if walking
Follow the path |goto Val'sharah/0 31.73,49.12 < 30 |only if walking
accept Warden Tower Assault: Starstalker's Point##43183 |goto Val'sharah/0 31.90,47.11
|tip You will accept this quest automatically.
stickystart "Queensguard_Troops_2"
step
Follow the path up |goto 32.20,46.50 < 30 |only if walking
Slay the Queensguard Captain |q 43183/2 |goto 33.94,40.20
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Queensguard_Troops_2"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43183/1 |goto 34,41
|next "Legion_World_Quest_Emissaries"
step
label quest-43784
Follow the path |goto Val'sharah/0 68.11,48.39 < 30 |only if walking
Cross the bridge |goto 66.67,45.77 < 30 |only if walking
accept What a Nightmare##43784 |goto 63.55,41.51
|tip You will accept this quest automatically.
step
clicknpc Subdued Nightwing##111359
Ride the Subdued Nightwing |q 43784/1 |goto 63.54,41.52
step
Kill enemies on the ground as you fly
|tip Use the ability on your action bar to kill them.
Slay #50# Nightmare Creatures |q 43784/2 |goto 62.85,38.17
|next "Legion_World_Quest_Emissaries"
step
label quest-43759
accept Where's the Reef?##43759 |goto Val'sharah/0 22.31,66.08
|tip You will accept this quest automatically.
step
kill 15 Clackbrine Snapper##111474 |q 43759/1 |goto 22.31,66.08
|next "Legion_World_Quest_Emissaries"
step
label quest-43758
accept Wherever I May Gloam##43758 |goto Val'sharah/0 22.17,67.29
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Underlight Murlocs |q 43758/1 |goto 22.17,67.29
|next "Legion_World_Quest_Emissaries"
step
label quest-42190
accept Wildlife Conservationist##42190 |goto Val'sharah/0 55.46,81.99
|tip You will accept this quest automatically.
step
The _Shimmering Aquafly_ are level 25
|tip It is a Dragon Fly found all around this area.
Challenge one to a pet battle, capture it or defeat it |q 42190/1 |goto Val'sharah/0 54.48,82.34
|next "Legion_World_Quest_Emissaries"
step
label quest-41652
accept Work Order: Deep Amber Loop##41652 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Deep Amber Loop>_
collect 1 Deep Amber Loop##130223
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Deep Amber Loop##41652 |goto 54.70,73.25
|next "Legion_World_Quest_Emissaries"
step
label quest-41292
accept Work Order: Dreamleaf##41292 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Dreamleaf##124102
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Dreamleaf##41292 |goto 36.44,46.87
|next "Legion_World_Quest_Emissaries"
step
label quest-41312
accept Work Order: Leystone##41312 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Leystone##41312 |goto 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41634
accept Work Order: Leystone Armguards##41634 |goto Val'sharah/0 54.95,72.53
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Armguards>_
collect 1 Leystone Armguards##123898
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Leystone Armguards##41634 |goto Val'sharah/0 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41272
accept Work Order: Mossgill Perch##41272 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Mossgill Perch##124108
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Mossgill Perch##41272 |goto 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41676
accept Work Order: Pump-Action Bandage Gun##41676 |goto Val'sharah/0 54.95,72.53
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Pump-Action Bandage Gun>_
collect 1 Pump-Action Bandage Gun##132511
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Pump-Action Bandage Gun##41676 |goto Val'sharah/0 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41646
accept Work Order: Silkweave Gloves##41646 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Gloves>_
collect 1 Silkweave Gloves##126989
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Silkweave Gloves##41646 |goto 54.70,73.25
|next "Legion_World_Quest_Emissaries"
step
label quest-41338
accept Work Order: Stonehide Leather##41338 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Stonehide Leather##41338 |goto 54.69,73.23
|next "Legion_World_Quest_Emissaries"
step
label quest-41658
accept Work Order: Sylvan Elixirs##41658 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Sylvan Elixirs>_
collect 5 Sylvan Elixir##127838
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Sylvan Elixirs##41658 |goto 54.70,73.25
|next "Legion_World_Quest_Emissaries"
step
label quest-41640
accept Work Order: Warhide Mask##41640 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Warhide Mask>_
collect 1 Warhide Mask##128879
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Warhide Mask##41640 |goto 54.70,73.25
|next "Legion_World_Quest_Emissaries"
step
label quest-41670
accept Work Order: Word of Agility##41670 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Agility>_
collect 1 Enchant Cloak - Word of Agility##128546
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Word of Agility##41670 |goto 54.70,73.25
|next "Legion_World_Quest_Emissaries"
step
label quest-45927
Follow the path |goto Suramar/0 24.35,31.99 < 20 |only if walking |notravel
Follow the path |goto 17.42,25.40 < 20 |only if walking |notravel
Follow the path |goto Val'sharah/0 68.13,66.36 < 20 |only if walking |notravel
accept Zagmothar##45927 |goto 66.03,66.88
|tip You will accept this quest automatically.
step
kill Zagmothar##117964 |q 45927/1 |goto 66.03,66.88 |future
|next "Legion_World_Quest_Emissaries"
step
label quest-45926
Follow the path |goto Val'sharah/0 53.44,74.08 < 20 |only if walking
Follow the path |goto 51.50,75.66 < 20 |only if walking
Follow the path |goto 48.08,77.73 < 25 |only if walking
Follow the path |goto 45.76,80.63 < 25 |only if walking
accept Zar'teth##45926 |goto Val'sharah/0 43.97,81.53
|tip You will accept this quest automatically.
step
kill Zar'teth##118017 |q 45926/1 |goto 43.97,81.53 |future
|next "Legion_World_Quest_Emissaries"
step
label "Legion_World_Quest_Emissaries"
#include "Legion_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brawler's Guild\\Legion Brawler's Guild", {
startlevel=45,
description="\nThis guide will help you achieve rank 8 in the Brawler's Guild.",
},[[
step
kill Helarjar Priest##111326+, Helarjar Mystcaller##111325+, Helarjar Soulhunter##111328+
|tip Kill any and all of the elite mobs on this island.
|tip You may need a group to accomplish this.
collect 1 Blood-Soaked Invitation##144363 |goto Stormheim/0 85.32,11.34 |n
click Blood-Soaked Invitation##144363 |use Blood-Soaked Invitation##144363
Earn the Achievement "The First Rule of Brawler's Guild" |achieve 11558
step
talk Quackenbush##68363 |goto Deeprun Tram/2 54.4,26.8
|tip We also suggest that you purchase potions from Quackenbush, located here. Once you have the potions, use the buff of your choice right before the fight, and then again during the fight to maximize your dps.
_WARNING_
|tip There is an enrage timer on all Brawler's Guild fights. You have 2 minutes to kill the current opponent before it activates. If it does, a wall of unavoidable meteors sweeps across the arena, killing you. Remember this as you go through this guide!
Click here after buying potions
|tip You can only have a maximum of 10 potions of each at a time.
|confirm
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight.."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Oso begins casting Shotgun Blast, move out from in front of him.
|tip He may occasionally knock you back and then cast Grizzly Leap. Run out of this circle.
only if ZGV:GetReputation(2011).friendRep<250
step
kill Oso##117753
|tip When Oso begins casting Shotgun Blast, move out from in front of him.
|tip He may occasionally knock you back and then cast Grizzly Leap. Run out of this circle.
Defeat Oso |complete ZGV:GetReputation(2011).friendRep>=250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Do not step on the Luckydont dolls that he places around the room, these will be red and white.
|tip The Blue Luckydo dolls will give a health boost, these are ok to run over.
|tip When he reaches 50 percent HP, he will knock you back. Be sure your back is not facing any of these bad dolls.
|tip After he hits 50 percent he will start summoning the white Luckydonts that will hop towards you. Avoid these.
|tip Interrupt Cantata of Flooting. This is a channeled ability that will heal him every .5 seconds.
only if ZGV:GetReputation(2011).friendRep<500
step
kill Grandpa Grumplefloot##70678
|tip Do not step on the Luckydont dolls that he places around the room, these will be red and white.
|tip The Blue Luckydo dolls will give a health boost, these are ok to run over.
|tip When he reaches 50 percent HP, he will knock you back. Be sure your back is not facing any of these bad dolls.
|tip After he hits 50 percent he will start summoning the white Luckydonts that will hop towards you. Avoid these.
|tip Interrupt Cantata of Flooting. This is a channeled ability that will heal him every .5 seconds.
Defeat Grandpa Grumplefloot |complete ZGV:GetReputation(2011).friendRep>=500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Run away from him when he casts Horrific Pursuit. This will one-shot you.
only if ZGV:GetReputation(2011).friendRep<750
step
kill Ooliss##117133
|tip Run away from him when he casts Horrific Pursuit. This will one-shot you.
Defeat Ooliss |complete ZGV:GetReputation(2011).friendRep>=750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Move out of Molten Slag.
|tip If Arstad the Wild finishes his Lightning Crash cast he will jump on where you are and stun you for 3 seconds. Be sure to keep moving while the cast is about to complete.
|tip There will be 3 enemies in this fight, but they all share the same health pool.
only if ZGV:GetReputation(2011).friendRep<1000
step
kill Altor Direvith##115294, Arstad the Wild##115295, Ulrich Forgeworth##115292
|tip Move out of Molten Slag.
|tip If Arstad the Wild finishes his Lightning Crash cast he will jump on where you are and stun you for 3 seconds. Be sure to keep moving while the cast is about to complete.
|tip There will be 3 enemies in this fight, but they all share the same health pool.
Defeat The Warhammer Council |complete ZGV:GetReputation(2011).friendRep>=1000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Dippy has a melee ability called Peck. If you are in melee range when the cast is finished, it will kill you.
|tip When Dippy takes damage, he is knocked back.
|tip You should prioritize fast attacks.
only if ZGV:GetReputation(2011).friendRep<1250
step
kill Dippy##68255
|tip Dippy has a melee ability called Peck. If you are in melee range when the cast is finished, it will kill you.
|tip When Dippy takes damage, he is knocked back.
|tip You should prioritize fast attacks.
Defeat Dippy |complete ZGV:GetReputation(2011).friendRep>=1250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Bill will cast Summon Broom. If this cast goes off he will one of 2 brooms.
|tip Boom Broom will have a explosion timer and if it is near you when it runs out, you will die.
|tip These can be slowed and stunned.
only if ZGV:GetReputation(2011).friendRep<1500
step
kill Bill the Janitor##117077
|tip Bill will cast Summon Broom. If this cast goes off he will one of 2 brooms.
|tip Boom Broom will have a explosion timer and if it is near you when it runs out, you will die.
|tip These can be slowed and stunned.
Defeat Bill the janitor |complete ZGV:GetReputation(2011).friendRep>=1500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Avoid Sanoriak's Firewall ability. There is always a safe opening to run through.
|tip Always interrupt Pyroblast.
only if ZGV:GetReputation(2011).friendRep<1750
step
kill Sanoriak##67268
|tip Avoid Sanoriak's Firewall ability. There is always a safe opening to run through.
|tip Always interrupt Pyroblast.
Defeat Sanoriak |complete ZGV:GetReputation(2011).friendRep>=1750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Once the fight begins, your character will continuously run forward.
|tip You gain a buff that allows you to cast while running.
|tip Run through the maze without hitting any of the blue tiles.
|tip While Whirling Kick is active, you can not damage the monks. To cancel this, collect one of the yellow orbs around the room.
only if ZGV:GetReputation(2011).friendRep<2000
step
kill Master Paku##115645
|tip Once the fight begins, your character will continuously run forward.
|tip You gain a buff that allows you to cast while running.
|tip Run through the maze without hitting any of the blue tiles.
|tip While Whirling Kick is active, you can not damage the monks. To cancel this, collect one of the yellow orbs around the room.
Defeat Master Paku |complete ZGV:GetReputation(2011).friendRep>=2000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip He doesn't do anything special, just auto attacks.
only if ZGV:GetReputation(2011).friendRep<2250
step
kill Doomflipper##117145
|tip He doesn't do anything special, just auto attacks.
Defeat Doomflipper |complete ZGV:GetReputation(2011).friendRep>=2250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip As the fight goes on, Splat will make copies of himself. These copies move slow and die when Splat dies.
|tip Avoid the copies of Splat and kill him before the copies overwhelm you.
only if ZGV:GetReputation(2011).friendRep<2500
step
kill Splat##70736
|tip As the fight goes on, Splat will make copies of himself. These copies move slow and die when Splat dies.
|tip Avoid the copies of Splat and kill him before the copies overwhelm you.
Defeat Splat |complete ZGV:GetReputation(2011).friendRep>=2500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Shadowmaster will cast 2 spells: Shadow Torch and Shadow Blast.
|tip His Shadow Torch ability will put a torch on the ground.
|tip His Shadow Blast ability will create a ball of energy that travels toward a Shadow Torch.
|tip Be sure not to stand in these Shadow Blasts by not standing between Shadow Torches.
only if ZGV:GetReputation(2011).friendRep<2750
step
kill Shadowmaster Aameen##116743
|tip Shadowmaster will cast 2 spells: Shadow Torch and Shadow Blast.
|tip His Shadow Torch ability will put a torch on the ground.
|tip His Shadow Blast ability will create a ball of energy that travels toward a Shadow Torch.
|tip Be sure not to stand in these Shadow Blasts by not standing between Shadow Torches.
Defeat Shadowmaster Aameen |complete ZGV:GetReputation(2011).friendRep>=2750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Johnny Awesome will have a pet called Dazzle.
|tip To kill his pet, put his pet inbetween yourself and Johnny Awesome while he is casting Powershot.
|tip Once his pet is dead, Johnny will start casting Revive Dazzle.
|tip This is a long cast and he will stop all other abilities to do this. Also, he will take 100 percent more damage when casting the revive ability.
|tip Don't stand in Rain of Arrows indicated by green circles on the ground.
|tip Don't stand in front of him when he casts Volley.
only if ZGV:GetReputation(2011).friendRep<3000
step
kill Johnny Awesome##115058
|tip Johnny Awesome will have a pet called Dazzle.
|tip To kill his pet, put his pet inbetween yourself and Johnny Awesome while he is casting Powershot.
|tip Once his pet is dead, Johnny will start casting Revive Dazzle.
|tip This is a long cast and he will stop all other abilities to do this. Also, he will take 100 percent more damage when casting the revive ability.
|tip Don't stand in Rain of Arrows indicated by green circles on the ground.
|tip Don't stand in front of him when he casts Volley.
Defeat Johnny Awesome |complete ZGV:GetReputation(2011).friendRep>=3000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip This is the first damage test of Brawler's Guild!
|tip Burnstachio will have a buff called Ember Shield, preventing all damage except from players with the Water Shield buff.
|tip You must obtain the Water Shield by following the rain clouds that make a path rhough the fire.
|tip This is a RNG type fight.
|tip Once you gain the Water Shield buff, you will be immune to the fire and able to attack Burnstachio for 15 seconds.
|tip Hitting the fire without the Water Shield buff will one-shot you.
|tip You will need to find a new rain cloud path before the buff runs out, as a new Water Shield bubble will not spawn until your buff expires.
only if ZGV:GetReputation(2011).friendRep<3250
step
kill Burnstachio##115023
|tip This is the first damage test of Brawler's Guild!
|tip Burnstachio will have a buff called Ember Shield, preventing all damage except from players with the Water Shield buff.
|tip You must obtain the Water Shield by following the rain clouds that make a path rhough the fire.
|tip This is a RNG type fight.
|tip Once you gain the Water Shield buff, you will be immune to the fire and able to attack Burnstachio for 15 seconds.
|tip Hitting the fire without the Water Shield buff will one-shot you.
|tip You will need to find a new rain cloud path before the buff runs out, as a new Water Shield bubble will not spawn until your buff expires.
Defeat Burnstachio |complete ZGV:GetReputation(2011).friendRep>=3250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Meatball has a 60 second enrage timer.
|tip Meatball drops purple orbs which will increase your damage and heal you.
|tip Stacking these orbs is the only way to defeat him before the enrage timer.
|tip Spend the first 30-45 seconds colleting these orbs.
only if ZGV:GetReputation(2011).friendRep<3500
step
kill Meatball##67573
|tip Meatball has a 60 second enrage timer.
|tip Meatball drops purple orbs which will increase your damage and heal you.
|tip Stacking these orbs is the only way to defeat him before the enrage timer.
|tip Spend the first 30-45 seconds colleting these orbs.
Defeat Meatball |complete ZGV:GetReputation(2011).friendRep>=3500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Max Megablast will spam Goblin Rocket Barrage.
|tip Avoid these rockets and lead Bo Bobble into them.
|tip Periodically, Bo will retreat to a corner and put up a shield. Stand under the shield so Goblin Rocket Barrage will hit it.
|tip 3 rockets will disable the shield.
|tip These two share one Health Pool.
only if ZGV:GetReputation(2011).friendRep<3750
step
kill Max Megablast##67488, Bo Bobble##67487
|tip Max Megablast will spam Goblin Rocket Barrage.
|tip Avoid these rockets and lead Bo Bobble into them.
|tip Periodically, Bo will retreat to a corner and put up a shield. Stand under the shield so Goblin Rocket Barrage will hit it.
|tip 3 rockets will disable the shield.
|tip These two share one Health Pool.
Defeat GG Engineering |complete ZGV:GetReputation(2011).friendRep>=3750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Stiches will cast Stiches' Hook when the player is not in melee range.
|tip This will also apply a stack of Hooked, which reduces movement speed by 10 percent per stack.
|tip Surronding Stiches is an Aura of Rot. This applies a debuff every second or two, increasing damage per stack.
|tip Do not get to 10 stacks or it will instantly kill you.
|tip At around 7 or 8 stacks, run out of the Aura asap. Once out, he will cast Stiches' Hook to bring you back in.
|tip Keep repeating this process. Save your movement speed increases for when you have higher stacks of Hooked.
only if ZGV:GetReputation(2011).friendRep<4000
step
kill Stiches##117275
|tip Stiches will cast Stiches' Hook when the player is not in melee range.
|tip This will also apply a stack of Hooked, which reduces movement speed by 10 percent per stack.
|tip Surronding Stiches is an Aura of Rot. This applies a debuff every second or two, increasing damage per stack.
|tip Do not get to 10 stacks or it will instantly kill you.
|tip At around 7 or 8 stacks, run out of the Aura asap. Once out, he will cast Stiches' Hook to bring you back in.
|tip Keep repeating this process. Save your movement speed increases for when you have higher stacks of Hooked.
Defeat Stiches |complete ZGV:GetReputation(2011).friendRep>=4000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip You will be fighting Wes and Sunny, along with a few dancers.
|tip Throughout the fight, Sunny will cast Sit Down. This can be interrupted, but if it goes off, it will root you for 3 seconds.
|tip There will be Jukeboxes in the back that will shoot out Sound Waves which can be dodged, or waves of Drop the Bass! which can be jumped over.
|tip These 2 abilities do about 50k-100k damage per hit. You will want to avoid these by interrupting every Sit Down cast.
only if ZGV:GetReputation(2011).friendRep<4250
step
kill Wes##114945, Sonny##114944
|tip You will be fighting Wes and Sunny, along with a few dancers.
|tip Throughout the fight, Sunny will cast Sit Down. This can be interrupted, but if it goes off, it will root you for 3 seconds.
|tip There will be Jukeboxes in the back that will shoot out Sound Waves which can be dodged, or waves of Drop the Bass! which can be jumped over.
|tip These 2 abilities do about 50k-100k damage per hit. You will want to avoid these by interrupting every Sit Down cast.
Defeat Thwack U |complete ZGV:GetReputation(2011).friendRep>=4250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Razorgrin will flop around on the ground, going towards the player. Simply kite him if you are a ranged.
|tip If you are a melee, you will need to get behind him and stay behind him at all times.
|tip This is the next dps check in the Brawler's Guild.
only if ZGV:GetReputation(2011).friendRep<4500
step
kill Razorgrin##71085
|tip Razorgrin will flop around on the ground, going towards the player. Simply kite him if you are a ranged.
|tip If you are a melee, you will need to get behind him and stay behind him at all times.
|tip This is the next dps check in the Brawler's Guild.
Defeat Razorgrin |complete ZGV:GetReputation(2011).friendRep>=4500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When the gnomes spawn, Wheezy is the only one at full health.
|tip Attack Queasy first, followed by the next lowest health gnome.
|tip AoE damage is beneficial for this encounter, helping to beat the enrage timer.
only if ZGV:GetReputation(2011).friendRep<4750
step
kill Fleasy##67515, Greazy##67514, Sleazy##67513, Wheezy##67516, Queasy##67511
|tip When the gnomes spawn, Wheezy is the only one at full health.
|tip Attack Queasy first, followed by the next lowest health gnome.
|tip AoE damage is beneficial for this encounter, helping to beat the enrage timer.
Defeat Leper Gnome Quintet |complete ZGV:GetReputation(2011).friendRep>=4750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip There will be a row of Cannons in the back of the room and long fuses going toward each one.
|tip When a Lit Fuse reaches a cannon, that cannon will fire. If you are in the row of that cannon, it's an instant kill
|tip You will need to side step to safe areas.
only if ZGV:GetReputation(2011).friendRep<5000
step
kill Blackmange##114902
|tip There will be a row of Cannons in the back of the room and long fuses going toward each one.
|tip When a Lit Fuse reaches a cannon, that cannon will fire. If you are in the row of that cannon, it's an instant kill
|tip You will need to side step to safe areas.
Defeat Blackmange |complete ZGV:GetReputation(2011).friendRep>=5000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Topps will charge around the room. Dino Dash, when dodged, will either give him a debuff called Dino Daze or will cast Dino Dash again.
|tip Simply dodge Dino Dash and save your cooldowns for when he is Dino Dazed.
|tip Everytime Topps Dashes, he will gain a buff making his next Dashes cast faster. This effect stacks.
|tip This fight is more difficult for melee, as you can not damage Topps when he is charging or about to charge.
|tip This is another DPS check and requires a minimum of 410k DPS to avoid the enrage timer.
only if ZGV:GetReputation(2011).friendRep<5250
step
kill Topps##116539
|tip Topps will charge around the room. Dino Dash, when dodged, will either give him a debuff called Dino Daze or will cast Dino Dash again.
|tip Simply dodge Dino Dash and save your cooldowns for when he is Dino Dazed.
|tip Everytime Topps Dashes, he will gain a buff making his next Dashes cast faster. This effect stacks.
|tip This fight is more difficult for melee, as you can not damage Topps when he is charging or about to charge.
|tip This is another DPS check and requires a minimum of 410k DPS to avoid the enrage timer.
Defeat Topps |complete ZGV:GetReputation(2011).friendRep>=5250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Millie casts Megafantastic Discombobumorphanator, get ready to run into Electric Dynamite.
|tip Electric Dynamite will put a lightning circle on the ground.
|tip When the cast of Megafantastic Discombobumorphanator is almost finished, step into Electric Dynamite.
|tip Use defensive cooldowns to help mitigate Photoplasm Buster Ray.
only if ZGV:GetReputation(2011).friendRep<5500
step
kill Millie Watt##67591
|tip When Millie casts Megafantastic Discombobumorphanator, get ready to run into Electric Dynamite.
|tip Electric Dynamite will put a lightning circle on the ground.
|tip When the cast of Megafantastic Discombobumorphanator is almost finished, step into Electric Dynamite.
|tip Use defensive cooldowns to help mitigate Photoplasm Buster Ray.
Defeat Millie Watt |complete ZGV:GetReputation(2011).friendRep>=5500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Carl is a giant worm that will Burrow across the room.
|tip Periodicaly, he will spawn Lava Pools at a random location. When these spawn, they will shot out Lava Waves in 4 directions.
|tip If one of these Lava Waves hits another Lava Pool, it will spawn another 2 waves out of that pool.
only if ZGV:GetReputation(2011).friendRep<5750
step
kill Carl##115233
|tip Carl is a giant worm that will Burrow across the room.
|tip Periodicaly, he will spawn Lava Pools at a random location. When these spawn, they will shot out Lava Waves in 4 directions.
|tip If one of these Lava Waves hits another Lava Pool, it will spawn another 2 waves out of that pool.
Defeat Carl |complete ZGV:GetReputation(2011).friendRep>=5750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip There will be 3 bosses: Hudson, Dupree, and Stuffshrew.
|tip Hudson will put up a Barrier which will need to be destroyed by dealing damage. He will also cast Tesla Cannon.
|tip Interrupt Tesla Cannon.
|tip Dupree will only cast High Noon the entire fight. You will need to kill him before this finishes casting.
|tip Stuffshrew will cast Maniacal Laugh which, when completed, will explode. This deals a high amount of damage and knocks you back if you are within 6 yards.
|tip Run away from Stuffshrew when he casts this.
|tip Stuffshrew will also put 3 bombs on the ground, indicated by red circles. Avoid standing in these.
only if ZGV:GetReputation(2011).friendRep<6000
step
kill Dupree##114955, Hudson##114951, Stuffshrew##114941
|tip There will be 3 bosses: Hudson, Dupree, and Stuffshrew.
|tip Hudson will put up a Barrier which will need to be destroyed by dealing damage. He will also cast Tesla Cannon.
|tip Interrupt Tesla Cannon.
|tip Dupree will only cast High Noon the entire fight. You will need to kill him before this finishes casting.
|tip Stuffshrew will cast Maniacal Laugh which, when completed, will explode. This deals a high amount of damage and knocks you back if you are within 6 yards.
|tip Run away from Stuffshrew when he casts this.
|tip Stuffshrew will also put 3 bombs on the ground, indicated by red circles. Avoid standing in these.
Defeat Ogrewatch |complete ZGV:GetReputation(2011).friendRep>=6000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
|tip Melee will need to constantly backpedal and kite him in a circle around the room.
|tip Kite Nibbleh and DPS him quickly before his stacks get too high.
only if ZGV:GetReputation(2011).friendRep<6250
step
kill Nibbleh##70656
|tip Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
|tip Melee will need to constantly backpedal and kite him in a circle around the room.
|tip Kite Nibbleh and DPS him quickly before his stacks get too high.
Defeat Nibbleh |complete ZGV:GetReputation(2011).friendRep>=6250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Serpent of Old will Spawn 4 Totems. You will need to kite him to each of the totems, getting just enough stacks on each so that when you get back to the first, those stacks will reset.
|tip Around 12 stacks on each totem.
|tip If you have less dps and more defensives try to get more stacks of either the damage buff totem or the haste buff totem.
|tip Totem of Ferocity will give him a stacking damage bonus. 1% per stack.
|tip Warding Totem will give him a buff, reducing his damage taken. 1% per stack.
|tip Healing Flume Totem will give him a stacking healing buff. .01% per stack.
|tip Invigorating Totem will give him a stacking buff, increasing his haste and movement speed. 6% haste and 2% movement speed per stack.
|tip There will also be green barrels placed at your location throughout the fight; be sure to stay clear of these.
only if ZGV:GetReputation(2011).friendRep<6500
step
kill Serpent of Old##116692
|tip Serpent of Old will Spawn 4 Totems. You will need to kite him to each of the totems, getting just enough stacks on each so that when you get back to the first, those stacks will reset.
|tip Around 12 stacks on each totem.
|tip If you have less dps and more defensives try to get more stacks of either the damage buff totem or the haste buff totem.
|tip Totem of Ferocity will give him a stacking damage bonus. 1% per stack.
|tip Warding Totem will give him a buff, reducing his damage taken. 1% per stack.
|tip Healing Flume Totem will give him a stacking healing buff. .01% per stack.
|tip Invigorating Totem will give him a stacking buff, increasing his haste and movement speed. 6% haste and 2% movement speed per stack.
|tip There will also be green barrels placed at your location throughout the fight; be sure to stay clear of these.
Defeat Serpent of Old |complete ZGV:GetReputation(2011).friendRep>=6500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Throughout the entire fight, he will put sound wave circles all over the room. Avoid these at all costs.
|tip Periodically, he will cast Destructolaser, which will follow you around. Avoid getting hit by this.
|tip He will also cast Blue Crush. This needs to be interrupted ASAP.
|tip This is another dps check thay requires a minimum of 500k dps to beat the enrage timer.
only if ZGV:GetReputation(2011).friendRep<6750
step
kill Epicus Maximus##67490
|tip Throughout the entire fight, he will put sound wave circles all over the room. Avoid these at all costs.
|tip Periodically, he will cast Destructolaser, which will follow you around. Avoid getting hit by this.
|tip He will also cast Blue Crush. This needs to be interrupted ASAP.
|tip This is another dps check thay requires a minimum of 500k dps to beat the enrage timer.
Defeat Epicus Maximus |complete ZGV:GetReputation(2011).friendRep>=6750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 62.2,35.0 < 5
Tell him _"Yes, sign me up for a fight."_
Wait to be teleported into the arena |goto Deeprun Tram/2 50.8,47.4 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip This boss will transform into multiple different bosses from the Hellfire Citadel raid.
|tip Siegemaster Mar'tak will cast Shockwave. This need to be avoided at all costs.
|tip Kormrok will cast Grasping Hand. You will need switch to this and destroy it ASAP. If it is up too long, you may need to use a defensive cooldown.
|tip Gurtogg Bloodboil will apply Acidic Wound which will deal 40k damage every 2 seconds and reduce your armor by 100 percent for 2 minutes.
|tip Watch your health and use your defensive cooldowns when needed.
|tip Kilrogg Deadeye will cast Death Throes. Just side step these green circles.
|tip Gorefiend will cast Crushing Darkness. Just side step these purple circles.
|tip Fel Lord Zakuun will cast Fel Crystal. Try to place these in one of the 4 corners and run to the opposite side of the room.
|tip The Fel Crystal will continiously spawn Fel Waves that need to be dodged.
|tip Tyrant Velhari will cast Gavel of the Tyrant. You will need to use an immunity or a big defensive cooldown before this goes off.
|tip Xhul'horacthat will cast Black Hole. Stay completly clear of this when it is put down.
|tip Mannoroth will cast Fel Imp-losion. This will need to be interrupted.
|tip Archimonde will cast Shadowfel Burst. This will knock you up high in the air.
|tip You will need a minimum of 550k dps to beat the enrage timer.
only if ZGV:GetReputation(2011).friendRep<7000
step
kill Ray D. Tear##115040
|tip This boss will transform into multiple different bosses from the Hellfire Citadel raid.
|tip Siegemaster Mar'tak will cast Shockwave. This need to be avoided at all costs.
|tip Kormrok will cast Grasping Hand. You will need switch to this and destroy it ASAP. If it is up too long, you may need to use a defensive cooldown.
|tip Gurtogg Bloodboil will apply Acidic Wound which will deal 40k damage every 2 seconds and reduce your armor by 100 percent for 2 minutes.
|tip Watch your health and use your defensive cooldowns when needed.
|tip Kilrogg Deadeye will cast Death Throes. Just side step these green circles.
|tip Gorefiend will cast Crushing Darkness. Just side step these purple circles.
|tip Fel Lord Zakuun will cast Fel Crystal. Try to place these in one of the 4 corners and run to the opposite side of the room.
|tip The Fel Crystal will continiously spawn Fel Waves that need to be dodged.
|tip Tyrant Velhari will cast Gavel of the Tyrant. You will need to use an immunity or a big defensive cooldown before this goes off.
|tip Xhul'horacthat will cast Black Hole. Stay completly clear of this when it is put down.
|tip Mannoroth will cast Fel Imp-losion. This will need to be interrupted.
|tip Archimonde will cast Shadowfel Burst. This will knock you up high in the air.
|tip You will need a minimum of 550k dps to beat the enrage timer.
Defeat Ray D. Tear |complete ZGV:GetReputation(2011).friendRep>=7000
step
Congratulations you are now Rank 8 in the new Brawler's Guild!
Earn the Achievement "King of the Guild" |achieve 11565
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Legion\\The Originals",{
author="support@zygorguides.com",
description="\nThis guide will walk you through killing Azuregos, Lord Kazzak, and a Dragon of Nightmare for the daily quest \"The Originals\". This quest is available from November 16 to November 30.",
keywords={"Azuregos","Lord","Kazzak","Dragons","of","Nightmare","Lethon","Taerar","Ysondre","Emeriss"},
condition_valid=function() return level >= 30 end,
condition_valid_msg="You must be at least level 30 to complete this guide.",
model={12449,11460,15364,15363,15365,15366},
},[[
step
collect Anniversary Gift##147876 |n
|tip Go to the nearest mailbox to receive this item.
Open the Anniversary Gift |use Anniversary Gift##147876
accept Interesting Times##47252
step
Enter the building |goto Stormwind City/0 84.16,26.07
talk Archmage Timear##111246
turnin Interesting Times##47252 |goto 84.65,24.86
accept The Originals##47253 |goto 84.65,24.86
step
kill Lord Kazzak##121818
_EVERYONE_
|tip Lord Kazzak has a 5 minute respawn timer.
|tip Mark of Kazzak deals shadow damage over time and deals AoE shadow damage in addition to a knockback when dispelled.
|tip Shadow Bolt Volley will deal shadow damage to all players nearby.
|tip Thunderclap is a stacking debuff that reduces haste by 5%.
|tip Avoid entering areas targeted on the ground.
_TANK_ |only if grouprole("TANK")
|tip Void Bolt decreases movement speed by 50% and increases future Void Bolt damage. This effect stacks. |only if grouprole("TANK")
|tip Frenzy increases Lord Kazzak's attack speed and damage. |only if grouprole("TANK")
Slay Lord Kazzak |q 47253/1 |goto Blasted Lands/0 32.37,49.09
step
kill Azuregos##121820
_EVERYONE_
|tip Azuregos has a 5 minute respawn timer.
|tip Avoid entering areas targeted on the ground.
_DAMAGE_ |only if grouprole("DAMAGE")
|tip Azuregos has a Frost Breat attack that hits anyone in a frontal cone area. Avoid standing in front of him. |only if grouprole("DAMAGE")
_HEALER_ |only if grouprole("HEALER")
|tip Azuregos has a Frost Breat attack that hits anyone in a frontal cone area. Avoid standing in front of him. |only if grouprole("HEALER")
_TANK_ |only if grouprole("TANK")
Slay Azuregos |q 47253/2 |goto Azshara/0 48.80,84.18
step
The Dragons of Nightmare can spawn in one of four different locations
|tip Open your world map and click on "The Originals" quest to see where the current dragon is located.
|tip Go to the zone indicated on your map
Go to Ashenvale |goto Ashenvale |c |next "Ashenvale" |or
Go to Feralas |goto Feralas |c |next "Feralas" |or
Go to Duskwood |goto Duskwood |c |next "Duskwood" |or
Go to the Hinterlands |goto The Hinterlands |c |next "Hinterlands" |or
step
label "Ashenvale"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto Ashenvale/0 93.78,41.30
|next "The_Originals_Turnin"
step
label "Feralas"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto Feralas/0 50.95,11.91
|next "The_Originals_Turnin"
step
label "Duskwood"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto Duskwood/0 46.63,39.57
|next "The_Originals_Turnin"
step
label "Hinterlands"
_Ysondre_
|tip Stay out of purple swirls on the ground. |only if grouprole("EVERYONE")
|tip Stand in Nightmare Blooms on the ground to prevent Dread Horrors from spawning. |only if grouprole("EVERYONE")
|tip Dread Horrors will reduce the damage of players within 5 yards by 50 percent. |only if grouprole("EVERYONE")
|tip Dispel players affected by Defiled Vines. |only if grouprole("HEALER")
_Emeriss_
|tip Volatile Infection will deal damage throughout the fight. |only if grouprole("EVERYONE")
|tip Emeriss will summon an Essence of Corruption, which should be interrupted. |only if grouprole("EVERYONE")
|tip Don't stand near mushrooms. |only if grouprole("EVERYONE")
_Lethon_
|tip Siphon Life will draw a Soul Fragment from every player. |only if grouprole("EVERYONE")
|tip Kill the Soul Fragments before they reach Lethon. |only if grouprole("DAMAGE")
|tip Avoid standing in purple circles |only if grouprole("EVERYONE")
|tip Shadow Burst will deal damage and slow the player for 21 seconds. This debuff stacks. |only if grouprole("EVERYONE")
_Taerar_
|tip Taerar will summon a Shade of itself, possessing the dragon's breath ability. Don't stand in front of it. |only if grouprole("EVERYONE")
|tip Taerar will periodically fear the entire raid. |only if grouprole("EVERYONE")
|tip This dragon will also summon several poison clouds that will move slowly around. If you stand in these clouds you will be put to sleep. |only if grouprole("EVERYONE")
Slay a Dragon of Nightmare |q 47253/3 |goto The Hinterlands/0 62.88,25.25
step
label "The_Originals_Turnin"
Enter the building |goto Stormwind City/0 84.16,26.07
talk Archmage Timear##111246
turnin The Originals##47253 |goto 84.65,24.86
]])
