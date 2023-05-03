local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Amber Primordial Direhorn",{
keywords={"amber","primordial","direhorn","ground","mount"},
mounts={138424},
patch='52000',
mounttype='Ground',
model={47718},
description="\nThis mount is a rare drop from the rare spawn Zandalari Warbringer found throughout Pandaria.",
},[[
step
label "Start_of_Guide"
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto The Jade Forest/0 52.50,18.89 |complete itemcount(94230) == 1 or hasmount(138424) |next "Learn_Mount"
|tip This has about a 5% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Krasarang Wilds/0 38.81,67.38 |complete itemcount(94230) == 1 or hasmount(138424) |next "Learn_Mount"
|tip This has about a 5% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Dread Wastes/0 47.50,61.50 |complete itemcount(94230) == 1 or hasmount(138424) |next "Learn_Mount"
|tip This has about a 5% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Townlong Steppes/0 36.60,85.66 |complete itemcount(94230) == 1 or hasmount(138424) |next "Learn_Mount"
|tip This has about a 5% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Kun-Lai Summit/0 75.00,67.58 |complete itemcount(94230) == 1 or hasmount(138424) |next "Learn_Mount"
|tip This has about a 5% drop rate.
Click Here to Find Another Warbringer |confirm |next "Start_of_Guide"
step
label "Learn_Mount"
use the Reins of the Amber Primordial Direhorn##94230
Learn the "Amber Primordial Direhorn" Mount |learnmount Amber Primordial Direhorn##138424
step
_Congratulations!_
You Collected the "Amber Primordial Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Black Primal Raptor",{
keywords={"black","primal","raptor","ground","mount"},
mounts={138642},
patch='52000',
mounttype='Ground',
model={47828},
description="\nThis mount is a rare drop from Primordial enemies on the Isle of Giants.",
},[[
step
Kill Primal enemies around this area
|tip Any dinasour on this island can drop the Primal Egg.
|tip You may need help with this.
collect Primal Egg##94295 |goto Isle of Giants/0 46.18,73.67 |complete hasmount(138642)
|tip This has about a 5-7% drop rate.
step
use the Cracked Primal Egg##94296
|tip You will have to wait three days for the egg to hatch.
collect Reins of the Black Primal Raptor##94292 |complete hasmount(138642)
step
use the Reins of the Black Primal Raptor##94292
Learn the "Black Primal Raptor" Mount |learnmount Black Primal Raptor##138642
step
_Congratulations!_
You Collected the "Black Primal Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Cobalt Primordial Direhorn",{
keywords={"cobalt","primordial","direhorn","ground","mount"},
model={47716},
mounts={138423},
patch='52000',
mounttype='Ground',
description="\nThis mount is a very rare drop from Oondasta on the Isle of Giants.",
},[[
step
kill Oondasta##69161
|tip It has about a 15 minute respawn timer.
collect Reins of the Cobalt Primordial Direhorn##94228 |goto Isle of Giants/0 50.05,56.93 |complete hasmount(138423)
|tip This has an extremely low drop rate.
step
use the Reins of the Cobalt Primordial Direhorn##94228
Learn the "Cobalt Primordial Direhorn" Mount |learnmount Cobalt Primordial Direhorn##138423
step
_Congratulations!_
You Collected the "Cobalt Primordial Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Green Primal Raptor",{
keywords={"green","primal","raptor","ground","mount"},
mounts={138643},
patch='52000',
mounttype='Ground',
model={47827},
description="\nThis mount is a rare drop from Primordial enemies on the Isle of Giants.",
},[[
step
Kill Primal enemies around this area
|tip Any dinasour on this island can drop the Primal Egg.
|tip You may need help with this.
collect Primal Egg##94295 |goto Isle of Giants/0 46.18,73.67 |complete hasmount(138643)
|tip This has about a 5-7% drop rate.
step
use the Cracked Primal Egg##94296
|tip You will have to wait three days for the egg to hatch.
collect Reins of the Green Primal Raptor##94293 |complete hasmount(138643)
step
use the Reins of the Green Primal Raptor##94293
Learn the "Green Primal Raptor" Mount |learnmount Green Primal Raptor##138643
step
_Congratulations!_
You Collected the "Green Primal Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Jade Primordial Direhorn",{
keywords={"jade","primordial","direhorn","ground","mount"},
mounts={138426},
patch='52000',
mounttype='Ground',
model={47717},
description="\nThis mount is a rare drop from the rare spawn Zandalari Warbringer found throughout Pandaria.",
},[[
step
label "Start_of_Guide"
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto The Jade Forest/0 52.50,18.89 |complete itemcount(94231) == 1 or hasmount(138426) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Krasarang Wilds/0 38.81,67.38 |complete itemcount(94231) == 1 or hasmount(138426) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Dread Wastes/0 47.50,61.50 |complete itemcount(94231) == 1 or hasmount(138426) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Townlong Steppes/0 36.60,85.66 |complete itemcount(94231) == 1 or hasmount(138426) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Kun-Lai Summit/0 75.00,67.58 |complete itemcount(94231) == 1 or hasmount(138426) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm |next "Start_of_Guide"
step
label "Learn_Mount"
use the Reins of the Jade Primordial Direhorn##94231
Learn the "Jade Primordial Direhorn" Mount |learnmount Jade Primordial Direhorn##138426
step
_Congratulations!_
You Collected the "Jade Primordial Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Red Primal Raptor",{
keywords={"green","primal","raptor","ground","mount"},
mounts={138641},
patch='52000',
mounttype='Ground',
model={47826},
description="\nThis mount is a rare drop from Primordial enemies on the Isle of Giants.",
},[[
step
Kill Primal enemies around this area
|tip Any dinasour on this island can drop the Primal Egg.
|tip You may need help with this.
collect Primal Egg##94295 |goto Isle of Giants/0 46.18,73.67 |complete hasmount(138641)
|tip This has about a 5-7% drop rate.
step
use the Cracked Primal Egg##94296
|tip You will have to wait three days for the egg to hatch.
collect Reins of the Red Primal Raptor##94291 |complete hasmount(138641)
step
use the Reins of the Red Primal Raptor##94291
Learn the "Red Primal Raptor" Mount |learnmount Red Primal Raptor##138641
step
_Congratulations!_
You Collected the "Red Primal Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Slate Primordial Direhorn",{
keywords={"slate","primordial","direhorn","ground","mount"},
mounts={138425},
patch='52000',
mounttype='Ground',
model={47715},
description="\nThis mount is a rare drop from the rare spawn Zandalari Warbringer found throughout Pandaria.",
},[[
step
label "Start_of_Guide"
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto The Jade Forest/0 52.50,18.89 |complete itemcount(94229) == 1 or hasmount(138425) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Krasarang Wilds/0 38.81,67.38 |complete itemcount(94229) == 1 or hasmount(138425) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Dread Wastes/0 47.50,61.50 |complete itemcount(94229) == 1 or hasmount(138425) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Townlong Steppes/0 36.60,85.66 |complete itemcount(94229) == 1 or hasmount(138425) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Kun-Lai Summit/0 75.00,67.58 |complete itemcount(94229) == 1 or hasmount(138425) |next "Learn_Mount"
|tip This has about a 4% drop rate.
Click Here to Find Another Warbringer |confirm |next "Start_of_Guide"
step
label "Learn_Mount"
use the Reins of the Slate Primordial Direhorn##94229
Learn the "Slate Primordial Direhorn" Mount |learnmount Slate Primordial Direhorn##138425
step
_Congratulations!_
You Collected the "Slate Primordial Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Son of Galleon",{
keywords={"son","of","galleon","ground","mount"},
model={45264},
mounts={130965},
patch='50400',
mounttype='Ground',
description="\nThis mount is a very rare drop from Galleon in the Valley of the Four Winds.",
},[[
step
kill Galleon##62346
|tip It has about a 15 minute respawn timer.
collect Son of Galleon's Saddle##89783 |goto Valley of the Four Winds/0 70.74,63.79 |complete hasmount(130965)
|tip This has an extremely low drop rate.
step
use the Son of Galleon's Saddle##89783
Learn the "Son of Galleon" Mount |learnmount Son of Galleon##130965
step
_Congratulations!_
You Collected the "Son of Galleon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Black Dragon Turtle",{
keywords={"black","dragon","turtle","ground","mount"},
model={43717},
mounts={127286},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Black Dragon Turtle##91008 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127286)
step
use the Reins of the Black Dragon Turtle##91008
Learn the "Black Dragon Turtle" Mount |learnmount Black Dragon Turtle##127286
step
_Congratulations!_
You Collected the "Black Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Blue Dragon Turtle",{
keywords={"blue","dragon","turtle","ground","mount"},
model={43718},
mounts={127287},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Blue Dragon Turtle##91009 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127287)
step
use the Reins of the Blue Dragon Turtle##91009
Learn the "Blue Dragon Turtle" Mount |learnmount Blue Dragon Turtle##127287
step
_Congratulations!_
You Collected the "Blue Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Brown Dragon Turtle",{
keywords={"brown","dragon","turtle","ground","mount"},
model={43719},
mounts={127288},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Brown Dragon Turtle##91005 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127288)
step
use the Reins of the Brown Dragon Turtle##91005
Learn the "Brown Dragon Turtle" Mount |learnmount Brown Dragon Turtle##127288
step
_Congratulations!_
You Collected the "Brown Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Green Dragon Turtle",{
keywords={"green","dragon","turtle","ground","mount"},
model={42250},
mounts={120395},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Green Dragon Turtle##91004 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(120395)
step
use the Reins of the Green Dragon Turtle##91004
Learn the "Green Dragon Turtle" Mount |learnmount Green Dragon Turtle##120395
step
_Congratulations!_
You Collected the "Green Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Purple Dragon Turtle",{
keywords={"purple","dragon","turtle","ground","mount"},
model={43910},
mounts={127289},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Purple Dragon Turtle##91006 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127289)
step
use the Reins of the Purple Dragon Turtle##91006
Learn the "Purple Dragon Turtle" Mount |learnmount Purple Dragon Turtle##127289
step
_Congratulations!_
You Collected the "Purple Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Red Dragon Turtle",{
keywords={"red","dragon","turtle","ground","mount"},
model={43721},
mounts={127290},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Red Dragon Turtle##91007 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127290)
step
use the Reins of the Red Dragon Turtle##91007
Learn the "Red Dragon Turtle" Mount |learnmount Red Dragon Turtle##127290
step
_Congratulations!_
You Collected the "Red Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Black Dragon Turtle",{
keywords={"great","black","dragon","turtle","ground","mount"},
model={43723},
mounts={127295},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Black Dragon Turtle##91011 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127295)
step
use the Reins of the Great Black Dragon Turtle##91011
Learn the "Great Black Dragon Turtle" Mount |learnmount Great Black Dragon Turtle##127295
step
_Congratulations!_
You Collected the "Great Black Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Blue Dragon Turtle",{
keywords={"great","blue","dragon","turtle","ground","mount"},
model={43724},
mounts={127302},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Brown Dragon Turtle##91013 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127302)
step
use the Reins of the Great Blue Dragon Turtle##91013
Learn the "Great Blue Dragon Turtle" Mount |learnmount Great Blue Dragon Turtle##127302
step
_Congratulations!_
You Collected the "Great Blue Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Brown Dragon Turtle",{
keywords={"great","brown","dragon","ninja","turtle","ground","mount"},
model={43725},
mounts={127308},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Brown Dragon Turtle##91014 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127308)
step
use the Reins of the Great Brown Dragon Turtle##91014
Learn the "Great Brown Dragon Turtle" Mount |learnmount Great Brown Dragon Turtle##127308
step
_Congratulations!_
You Collected the "Great Brown Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Green Dragon Turtle",{
keywords={"great","green","dragon","turtle","mount","ground","mount"},
model={43722},
mounts={127293},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Green Dragon Turtle##91012 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127308)
step
use the Reins of the Great Green Dragon Turtle##91012
Learn the "Great Green Dragon Turtle" Mount |learnmount Great Green Dragon Turtle##127293
step
_Congratulations!_
You Collected the "Great Green Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Purple Dragon Turtle",{
keywords={"great","purple","dragon","turtle","ground","mount"},
model={43726},
mounts={127310},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Purple Dragon Turtle##91015 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127310)
step
use the Reins of the Great Purple Dragon Turtle##91015
Learn the "Great Purple Dragon Turtle" Mount |learnmount Great Purple Dragon Turtle##127310
step
_Congratulations!_
You Collected the "Great Purple Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Red Dragon Turtle",{
keywords={"great","red","dragon","turtle","ground","mount"},
model={42352},
mounts={120822},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Turtlemaster Odai in Orgrimmar after reaching Exalted reputation with the Huojin Pandaren.",
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Red Dragon Turtle##91010 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(120822)
step
use the Reins of the Great Red Dragon Turtle##91010
Learn the "Great Red Dragon Turtle" Mount |learnmount Great Red Dragon Turtle##120822
step
_Congratulations!_
You Collected the "Great Red Dragon Turtle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Bone-White Primal Raptor",{
keywords={"bone","white","primal","raptor","ground","mount"},
mounts={138640},
patch='52000',
mounttype='Ground',
model={47825},
description="\nThis mount is obtained by collecting 9,999 Giant Dinosaur Bones dropped by Primal enemies on the Isle of Giants.",
},[[
step
Kill Primal enemies around this area
|tip Any dinasour on this island can drop them.
|tip You may need help with this.
collect 9999 Giant Dinosaur Bone##94288 |goto Isle of Giants/0 46.18,73.67 |complete hasmount(138640)
|tip You can also buy them from the Auction House.
step
Enter the cave |goto 27.48,57.99 < 10 |walk
talk Ku'ma##70022
|tip He walks around inside the cave.
accept A Mountain of Giant Dinosaur Bones##32617 |goto 32.80,54.03
collect Reins of the Bone-White Primal Raptor##94290 |goto 32.80,54.03 |complete hasmount(138640)
step
use the Reins of the Bone-White Primal Raptor##94290
Learn the "Bone-White Primal Raptor" Mount |learnmount Bone-White Primal Raptor##138640
step
_Congratulations!_
You Collected the "Bone-White Primal Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous\\Crimson Deathcharger",{
keywords={"crimson","death","charger","ground","mount"},
mounts={73313},
patch='unknown',
mounttype='Ground',
model={25279},
description="\nThis guide will help you acquire the Crimson Deathcharger mount.",
},[[
step
This mount is a reward given to players that complete the quest line to acquire the legendary Shadowmourne
|tip Shadowmourne's quest line takes several months to complete and is not all soloable.
|tip Only Paladins, Death Knights, and Warriors can complete this quest and obtain Shadowmourne.
|tip This mount can also be bought on the AH.
confirm
step
collect Reins of the Crimson Deathcharger##52200 |n
learnmount Reins of the Crimson Deathcharger##73313 |use Reins of the Crimson Deathcharger##52200
step
_Congratulations!_
You are now the proud owner of a _Crimson Deathcharger_.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Ashhide Mushan Beast",{
keywords={"ashhide","mushan","beast","ground","mount"},
mounts={148428},
patch='54000',
mounttype='Ground',
model={51484},
description="\nThis mount is purchased from Speaker Gulan in the Timeless Isles for 500 Bloody Coins.",
},[[
step
Collect #1000# Timeless Coins |complete curcount(777) >= 1000 or hastoy(102467)
|tip Use the "Timeless Isle Dailies" guide to accomplish this.
step
talk Speaker Gulan##73307
buy Censer of Eternal Agony##102467 |goto Timeless Isle/0 74.92,44.92 |complete hastoy(102467)
step
use Censer of Eternal Agony##102467
Learn the "Censer of Eternal Agony" Toy |complete hastoy(102467)
step
use Censer of Eternal Agony##102467
|tip This will turn you into an Emissary of Ordos, causing you to become Hostile with both factions and reduce your health by 10%.
Become an Emissary of Ordos |havebuff 528948 |complete hasmount(148428)
step
Collect #500# Bloody Coins |complete curcount(789) >= 500 or hasmount(148428)
|tip These are earned by killing players while you are an Emissary of Ordos.
step
talk Speaker Gulan##73307
buy Reins of the Ashhide Mushan Beast##103638 |goto 74.92,44.92 |complete hasmount(148428)
step
use the Reins of the Ashhide Mushan Beast##103638
Learn the "Ashhide Mushan Beast" Mount |learnmount Ashhide Mushan Beast##148428
step
_Congratulations!_
You Collected the "Ashhide Mushan Beast" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Kor'kron Juggernaut",{
keywords={"kor'kron","juggernaut","garrosh","hellscream","siege","of","orgrimmar","ground","mount"},
model={51485},
mounts={148417},
patch='54000',
mounttype='Ground',
description="\nThis mount is a very rare drop from Garrosh Hellscream in the Siege of Orgrimmar raid.",
},[[
step
Press _I_ and queue for the Siege of Orgrimmar or enter the raid normally |goto Siege of Orgrimmar/11 53.80,11.98 < 100 |c |or
'|learnmount Kor'kron Juggernaut##148417 |or
step
kill Garrosh Hellscream##71865
|tip Use the "Siege of Orgrimmar" raid guide to accomplish this.
collect Kor'kron Juggernaut##104253 |complete hasmount(148417)
|tip This has about a 1.2% drop rate.
step
use the Kor'kron Juggernaut##104253
Learn the "Kor'kron Juggernaut" Mount |learnmount Kor'kron Juggernaut##148417
step
_Congratulations!_
You Collected the "Kor'kron Juggernaut" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Spawn of Horridon",{
keywords={"spawn","horridon","direhorn","ground","mount"},
mounts={136471},
patch='52000',
mounttype='Ground',
model={47238},
description="\nThis mount is a rare drop from Horridon in the Throne of Thunder raid.",
},[[
step
Press _I_ and queue for the Throne of Thunder or enter the raid normally |goto Throne of Thunder/2 27.4,79.1 < 100 |c |or
'|learnmount Spawn of Horridon##136471 |or
step
kill Horridon##68476
|tip Use the "Throne of Thunder" raid guide to accomplish this.
collect Spawn of Horridon##93666 |complete hasmount(136471)
|tip This has about a 2.5% drop rate.
step
use the Spawn of Horridon##93666
Learn the "Spawn of Horridon" Mount |learnmount Spawn of Horridon##136471
step
_Congratulations!_
You Collected the "Spawn of Horridon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Amber Scorpion",{
keywords={"amber","scorpion","the","klaxxi","exalted","ground","mount"},
model={43090},
mounts={123886},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Ambersmith Zikk in the Dread Wastes after reaching Exalted reputation with The Klaxxi.",
},[[
step
Reach Exalted Reputation with The Klaxxi |complete rep('The Klaxxi') == Exalted
|tip Use "The Klaxxi" reputation guide to accomplish this.
step
talk Ambersmith Zikk##64599
buy Reins of the Amber Scorpion##85262 |goto Dread Wastes/0 55.02,35.55 |complete hasmount(123886)
step
use the Reins of the Amber Scorpion##85262
Learn the "Amber Scorpion" Mount |learnmount Amber Scorpion##123886
step
_Congratulations!_
You Collected the "Amber Scorpion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Azure Riding Crane",{
keywords={"azure","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43704},
mounts={127174},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Jaluu the Generous in the Vale of Eternal Blossoms after reaching Exalted reputation with the Golden Lotus.",
},[[
step
Reach Exalted Reputation with the Golden Lotus |complete rep('Golden Lotus') == Exalted
|tip Use "The Golden Lotus" reputation guide to accomplish this.
step
talk Zidormi##163463
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |havebuff spell:317931 |goto Vale of Eternal Blossoms/0 80.48,31.96 |complete hasmount(127174)
only if level >= 50
step
talk Jaluu the Generous##59908
buy Reins of the Azure Riding Crane##87781 |goto 84.24,62.79 |complete hasmount(127174)
step
use the Reins of the Azure Riding Crane##87781
Learn the "Azure Riding Crane" Mount |learnmount Azure Riding Crane##127174
step
_Congratulations!_
You Collected the "Azure Riding Crane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Azure Water Strider",{
keywords={"azure","water","strider","waterwalking","exalted","the","anglers","ground","mount"},
model={41711},
mounts={118089},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Nat Pagle in Krasarang Wilds after reaching Exalted reputation with The Anglers.",
},[[
step
Reach Exalted Reputation with The Anglers |complete rep('The Anglers') == Exalted
|tip Use "The Anglers" reputation guide to accomplish this.
step
talk Nat Pagle##63721
buy Reins of the Azure Water Strider##81354 |goto Krasarang Wilds/0 68.46,43.47 |complete hasmount(118089)
step
use the Reins of the Azure Water Strider##81354
Learn the "Azure Water Strider" Mount |learnmount Azure Water Strider##118089
step
_Congratulations!_
You Collected the "Azure Water Strider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Black Riding Goat",{
keywords={"black","riding","goat","exalted","the","tillers","ground","mount"},
model={44836},
mounts={130138},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Gina Mudclaw in the Valley of the Four Winds after reaching Exalted reputation with The Tillers.",
},[[
step
Reach Exalted Reputation with The Tillers |complete rep('The Tillers') == Exalted
|tip Use "The Tillers" reputation guide to accomplish this.
step
talk Gina Mudclaw##58706
buy Reins of the Black Riding Goat##89391 |goto Valley of the Four Winds/0 53.16,51.80 |complete hasmount(130138)
step
use the Reins of the Black Riding Goat##89391
Learn the "Black Riding Goat" Mount |learnmount Black Riding Goat##130138
step
_Congratulations!_
You Collected the "Black Riding Goat" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Blue Shado-Pan Riding Tiger",{
keywords={"blue","shado-pan","shado","pan","riding","tiger","exalted","the","ground","mount"},
model={43900},
mounts={129934},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Rushi the Fox in Townlong Steppes after reaching Exalted reputation with the Shado-Pan.",
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
step
talk Rushi the Fox##64595
buy Reins of the Blue Shado-Pan Riding Tiger##89307 |goto Townlong Steppes/0 48.87,70.59 |complete hasmount(129934)
step
use the Reins of the Blue Shado-Pan Riding Tiger##89307
Learn the "Blue Shado-Pan Riding Tiger" Mount |learnmount Blue Shado-Pan Riding Tiger##129934
step
_Congratulations!_
You Collected the "Blue Shado-Pan Riding Tiger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Brown Riding Goat",{
keywords={"brown","riding","goat","exalted","the","tillers","ground","mount"},
model={44807},
mounts={130086},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Gina Mudclaw in the Valley of the Four Winds after reaching Exalted reputation with The Tillers.",
},[[
step
Reach Exalted Reputation with The Tillers |complete rep('The Tillers') == Exalted
|tip Use "The Tillers" reputation guide to accomplish this.
step
talk Gina Mudclaw##58706
buy Reins of the Brown Riding Goat##89362 |goto Valley of the Four Winds/0 53.16,51.80 |complete hasmount(130086)
step
use the Reins of the Brown Riding Goat##89362
Learn the "Brown Riding Goat" Mount |learnmount Brown Riding Goat##130086
step
_Congratulations!_
You Collected the "Brown Riding Goat" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Primal Direhorn",{
keywords={"crimson","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48101},
mounts={140250},
patch='52000',
mounttype='Ground',
description="\nThis mount is purchased from Vasarin Redmorn on the Isle of Thunder after reaching Exalted reputation with the Sunreaver Onslaught.",
},[[
step
Reach Exalted Reputation with the Sunreaver Onslaught |complete rep('Sunreaver Onslaught') == Exalted
|tip Use the "Sunreaver Onslaught" reputation guide to accomplish this.
step
talk Vasarin Redmorn##67672
buy Reins of the Crimson Primal Direhorn##95565 |goto Isle of Thunder/0 33.34,32.38 |complete hasmount(140250)
step
use the Reins of the Crimson Primal Direhorn##95565
Learn the "Crimson Primal Direhorn" Mount |learnmount Crimson Primal Direhorn##140250
step
_Congratulations!_
You Collected the "Crimson Primal Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Primal Direhorn",{
keywords={"golden","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48100},
mounts={140249},
patch='52000',
mounttype='Ground',
description="\nThis mount must be obtained by an Alliance character.",
},[[
step
You must be Alliance to obtain this mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Riding Crane",{
keywords={"golden","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43705},
mounts={127176},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Jaluu the Generous in the Vale of Eternal Blossoms after reaching Exalted reputation with the Golden Lotus.",
},[[
step
Reach Exalted Reputation with the Golden Lotus |complete rep('Golden Lotus') == Exalted
|tip Use "The Golden Lotus" reputation guide to accomplish this.
step
talk Zidormi##163463
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |havebuff spell:317931 |goto Vale of Eternal Blossoms/0 80.48,31.96 |complete hasmount(127176)
only if level >= 50
step
talk Jaluu the Generous##59908
buy Reins of the Golden Riding Crane##87782 |goto 84.24,62.79 |complete hasmount(127176)
step
use the Reins of the Golden Riding Crane##87782
Learn the "Golden Riding Crane" Mount |learnmount Golden Riding Crane##127176
step
_Congratulations!_
You Collected the "Golden Riding Crane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Green Shado-Pan Riding Tiger",{
keywords={"green","shado","pan","riding","tiger","ground","mount","exalted","the","shado-pan"},
model={44759},
mounts={129932},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Rushi the Fox in Townlong Steppes after reaching Exalted reputation with the Shado-Pan.",
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
step
talk Rushi the Fox##64595
buy Reins of the Green Shado-Pan Riding Tiger##89305 |goto Townlong Steppes/0 48.87,70.59 |complete hasmount(129932)
step
use the Reins of the Green Shado-Pan Riding Tiger##89305
Learn the "Green Shado-Pan Riding Tiger" Mount |learnmount Green Shado-Pan Riding Tiger##129932
step
_Congratulations!_
You Collected the "Green Shado-Pan Riding Tiger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Red Shado-Pan Riding Tiger",{
keywords={"red","shado-pan","shado","pan","riding","tiger","exalted","the","ground","mount"},
model={44757},
mounts={129935},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Rushi the Fox in Townlong Steppes after reaching Exalted reputation with the Shado-Pan.",
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
step
talk Rushi the Fox##64595
buy Reins of the Red Shado-Pan Riding Tiger##89306 |goto Townlong Steppes/0 48.87,70.59 |complete hasmount(129935)
step
use the Reins of the Red Shado-Pan Riding Tiger##89306
Learn the "Red Shado-Pan Riding Tiger" Mount |learnmount Red Shado-Pan Riding Tiger##129935
step
_Congratulations!_
You Collected the "Red Shado-Pan Riding Tiger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Regal Riding Crane",{
keywords={"regal","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43706},
mounts={127177},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Jaluu the Generous in the Vale of Eternal Blossoms after reaching Exalted reputation with the Golden Lotus.",
},[[
step
Reach Exalted Reputation with the Golden Lotus |complete rep('Golden Lotus') == Exalted
|tip Use "The Golden Lotus" reputation guide to accomplish this.
step
talk Zidormi##163463
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |havebuff spell:317931 |goto Vale of Eternal Blossoms/0 80.48,31.96 |complete hasmount(127177)
only if level >= 50
step
talk Jaluu the Generous##59908
buy Reins of the Regal Riding Crane##87783 |goto 84.24,62.79 |complete hasmount(127177)
step
use the Reins of the Regal Riding Crane##87783
Learn the "Regal Riding Crane" Mount |learnmount Regal Riding Crane##127177
step
_Congratulations!_
You Collected the "Regal Riding Crane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\White Riding Goat",{
keywords={"exalted","the","tillers","white","riding","goat","ground","mount"},
model={44837},
mounts={130137},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Gina Mudclaw in the Valley of the Four Winds after reaching Exalted reputation with The Tillers.",
},[[
step
Reach Exalted Reputation with The Tillers |complete rep('The Tillers') == Exalted
|tip Use "The Tillers" reputation guide to accomplish this.
step
talk Gina Mudclaw##58706
buy Reins of the White Riding Goat##89390 |goto Valley of the Four Winds/0 53.16,51.80 |complete hasmount(130137)
step
use the Reins of the White Riding Goat##89390
Learn the "White Riding Goat" Mount |learnmount White Riding Goat##130137
step
_Congratulations!_
You Collected the "White Riding Goat" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Brawler's Burly Mushan Beast",{
keywords={"brawler's","burly","mushan","beast","ground","mount"},
mounts={142641},
patch='53000',
mounttype='Ground',
model={48858},
description="\nThis mount has been removed from the game.",
},[[
step
This mount used to be obtained through the old Brawler's Guild
|tip This mount is no longer obtainable.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Kor'kron War Wolf",{
keywords={"kor'kron","kor","kron","war","wolf","siege","of","orgrimmar"},
model={51482},
mounts={148396},
patch='54000',
mounttype='Ground',
description="\nThis mount has been removed from the game.",
},[[
step
This mount used to be awarded for completing the achievement "Ahead of the Curve: Garrosh Hellscream (10/25 player)" in Siege of Orgrimmar
|tip This mount is no longer obtainable.
|tip It was retired from service in patch 6.0.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Primal Flamesaber",{
keywords={"primal","flame","saber","heroes","of","storm"},
model={74298},
mounts={232405},
patch='72000',
mounttype='Ground',
description="\nThis mount has been removed from the game.",
},[[
step
This mount used to be awarded from a Promotional Event in Heroes of the Storm
|tip This mount is no longer obtainable.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Blonde Riding Yak",{
keywords={"blonde","riding","yak","ground","mount"},
model={43712},
mounts={127220},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Uncle Bigpocket in Kun-Lai Summit.",
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Blonde Riding Yak##87789 |goto Kun-Lai Summit/0 65.38,61.78 |complete hasmount(127220)
step
use the Reins of the Blonde Riding Yak##87789
Learn the "Blonde Riding Yak" Mount |learnmount Blonde Riding Yak##127220
step
_Congratulations!_
You Collected the "Blonde Riding Yak" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Grand Expedition Yak",{
keywords={"grand","expedition","yak","ground","mount"},
model={42703},
mounts={122708},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Uncle Bigpocket in Kun-Lai Summit.",
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Grand Expedition Yak##84101 |goto Kun-Lai Summit/0 65.38,61.78 |complete hasmount(122708)
step
use the Reins of the Grand Expedition Yak##84101
Learn the "Grand Expedition Yak" Mount |learnmount Grand Expedition Yak##122708
step
_Congratulations!_
You Collected the "Grand Expedition Yak" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Grey Riding Yak",{
keywords={"grey","riding","yak","ground","mount"},
model={43711},
mounts={127216},
patch='50400',
mounttype='Ground',
description="\nThis mount is purchased from Uncle Bigpocket in Kun-Lai Summit.",
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Grey Riding Yak##87788 |goto Kun-Lai Summit/0 65.38,61.78 |complete hasmount(127216)
step
use the Reins of the Grey Riding Yak##87788
Learn the "Grey Riding Yak" Mount |learnmount Grey Riding Yak##127216
step
_Congratulations!_
You Collected the "Grey Riding Yak" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Red Dragonhawk",{
keywords={"armored","Red","dragon","hawk","flying","mount"},
model={48816},
mounts={142266},
patch='53000',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Mount Parade\" achievement.",
},[[
step
Earn the "Mount Parade" Achievement |achieve 8302 |complete hasmount(142266)
|tip Use the "Mount Parade" achievement guide to accomplish this.
step
collect 1 Armored Red Dragonhawk##98104 |complete hasmount(142266)
|tip You can find it in your mailbox.
step
use the Armored Red Dragonhawk##98104
Learn the "Armored Red Dragonhawk" Mount |learnmount Armored Red Dragonhawk##142266
step
_Congratulations!_
You Collected the "Armored Red Dragonhawk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Skyscreamer",{
keywords={"armored skyscreamer flying mount"},
model={47256},
mounts={136400},
patch='52000',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Glory of the Thundering Raider\" achievement.",
},[[
step
Earn the "Heroic: Jin'rokh the Breaker" Achievement |achieve 8056 |complete hasmount(136400)
|tip Use the "Heroic: Jin'rokh the Breaker" achievement guide to accomplish this.
step
Earn the "Heroic: Horridon" Achievement |achieve 8057 |complete hasmount(136400)
|tip Use the "Heroic: Horridon" achievement guide to accomplish this.
step
Earn the "Heroic: Council of Elders" Achievement |achieve 8058 |complete hasmount(136400)
|tip Use the "Heroic: Council of Elders" achievement guide to accomplish this.
step
Earn the "Heroic: Tortos" Achievement |achieve 8059 |complete hasmount(136400)
|tip Use the "Heroic: Tortos" achievement guide to accomplish this.
step
Earn the "Heroic: Megaera" Achievement |achieve 8060 |complete hasmount(136400)
|tip Use the "Heroic: Megaera" achievement guide to accomplish this.
step
Earn the "Heroic: Ji-Kun" Achievement |achieve 8061 |complete hasmount(136400)
|tip Use the "Heroic: Ji-Kun" achievement guide to accomplish this.
step
Earn the "Heroic: Durumu the Forgotten" Achievement |achieve 8062 |complete hasmount(136400)
|tip Use the "Heroic: Durumu the Forgotten" achievement guide to accomplish this.
step
Earn the "Heroic: Primordius" Achievement |achieve 8063 |complete hasmount(136400)
|tip Use the "Heroic: Primordius" achievement guide to accomplish this.
step
Earn the "Heroic: Dark Animus" Achievement |achieve 8064 |complete hasmount(136400)
|tip Use the "Heroic: Dark Animus" achievement guide to accomplish this.
step
Earn the "Heroic: Iron Qon" Achievement |achieve 8065 |complete hasmount(136400)
|tip Use the "Heroic: Iron Qon" achievement guide to accomplish this.
step
Earn the "Heroic: Twin Consorts" Achievement |achieve 8066 |complete hasmount(136400)
|tip Use the "Heroic: Twin Consorts" achievement guide to accomplish this.
step
Earn the "Lightning Overload" Achievement |achieve 8094 |complete hasmount(136400)
|tip Use the "Lightning Overload" achievement guide to accomplish this.
step
Earn the "Cretaceous Collector" Achievement |achieve 8038 |complete hasmount(136400)
|tip Use the "Cretaceous Collector" achievement guide to accomplish this.
step
Earn the "Cage Match" Achievement |achieve 8073 |complete hasmount(136400)
|tip Use the "Cage Match" achievement guide to accomplish this.
step
Earn the "One-Up" Achievement |achieve 8077 |complete hasmount(136400)
|tip Use the "One-Up" achievement guide to accomplish this.
step
Earn the "Head Case" Achievement |achieve 8082 |complete hasmount(136400)
|tip Use the "Head Case" achievement guide to accomplish this.
step
Earn the "Soft Hands" Achievement |achieve 8097 |complete hasmount(136400)
|tip Use the "Soft Hands" achievement guide to accomplish this.
step
Earn the "You Said Crossing the Streams Was Bad" Achievement |achieve 8098 |complete hasmount(136400)
|tip Use the "You Said Crossing the Streams Was Bad" achievement guide to accomplish this.
step
Earn the "Genetically Unmodified Organism" Achievement |achieve 8037 |complete hasmount(136400)
|tip Use the "Genetically Unmodified Organism" achievement guide to accomplish this.
step
Earn the "Ritualist Who?" Achievement |achieve 8081 |complete hasmount(136400)
|tip Use the "Ritualist Who?" achievement guide to accomplish this.
step
Earn the "Can't Touch This" Achievement |achieve 8087 |complete hasmount(136400)
|tip Use the "Can't Touch This" achievement guide to accomplish this.
step
Earn the "From Dusk 'til Dawn" Achievement |achieve 8086 |complete hasmount(136400)
|tip Use the "From Dusk 'til Dawn" achievement guide to accomplish this.
step
Earn the "A Complete Circuit" Achievement |achieve 8090 |complete hasmount(136400)
|tip Use the "A Complete Circuit" achievement guide to accomplish this.
step
collect Armored Skyscreamer##93662 |complete hasmount(136400)
|tip You can find it in your mailbox.
step
use the Armored Skyscreamer##93662
Learn the "Armored Skyscreamer" Mount |learnmount Armored Skyscreamer##136400
step
_Congratulations!_
You Collected the "Armored Skyscreamer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Crimson Cloud Serpent",{
keywords={"crimson","cloud","serpent","flying","mount"},
model={41592},
mounts={127156},
patch='50400',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Glory of the Pandaria Hero\" achievement.",
},[[
step
Earn the "Pandaria Dungeon Hero" Achievement |achieve 6925 |complete hasmount(127156)
|tip Use the "Pandaria Dungeon Hero" achievement guide to accomplish this.
step
Earn the "Hydrophobia" Achievement |achieve 6460 |complete hasmount(127156)
|tip Use the "Hydrophobia" achievement guide to accomplish this.
step
Earn the "Cleaning Up" Achievement |achieve 6475 |complete hasmount(127156)
|tip Use the "Cleaning Up" achievement guide to accomplish this.
step
Earn the "Seeds of Doubt" Achievement |achieve 6671 |complete hasmount(127156)
|tip Use the "Seeds of Doubt" achievement guide to accomplish this.
step
Earn the "Hopocalypse Now!" Achievement |achieve 6420 |complete hasmount(127156)
|tip Use the "Hopocalypse Now!" achievement guide to accomplish this.
step
Earn the "Keep Rollin' Rollin' Rollin'" Achievement |achieve 6089 |complete hasmount(127156)
|tip Use the "Keep Rollin' Rollin' Rollin'" achievement guide to accomplish this.
step
Earn the "How Did He Get Up There?" Achievement |achieve 6400 |complete hasmount(127156)
|tip Use the "How Did He Get Up There?" achievement guide to accomplish this.
step
Earn the "Ling-Ting's Herbal Journey" Achievement |achieve 6402 |complete hasmount(127156)
|tip Use the "Ling-Ting's Herbal Journey" achievement guide to accomplish this.
step
Earn the "Glintrok N' Roll" Achievement |achieve 6478 |complete hasmount(127156)
|tip Use the "Glintrok N' Roll" achievement guide to accomplish this.
step
Earn the "What Does This Button Do?" Achievement |achieve 6736 |complete hasmount(127156)
|tip Use the "What Does This Button Do?" achievement guide to accomplish this.
step
Earn the "Quarrelsome Quilen Quintet" Achievement |achieve 6713 |complete hasmount(127156)
|tip Use the "Quarrelsome Quilen Quintet" achievement guide to accomplish this.
step
Earn the "Respect" Achievement |achieve 6477 |complete hasmount(127156)
|tip Use the "Respect" achievement guide to accomplish this.
step
Earn "The Obvious Solution" Achievement |achieve 6472 |complete hasmount(127156)
|tip Use "The Obvious Solution" achievement guide to accomplish this.
step
Earn the "Hate Leads to Suffering" Achievement |achieve 6471 |complete hasmount(127156)
|tip Use the "Hate Leads to Suffering" achievement guide to accomplish this.
step
Earn the "Bomberman" Achievement |achieve 6479 |complete hasmount(127156)
|tip Use the "Bomberman" achievement guide to accomplish this.
step
Earn the "Conscriptinator" Achievement |achieve 6476 |complete hasmount(127156)
|tip Use the "Conscriptinator" achievement guide to accomplish this.
step
Earn the "Humane Society" Achievement |achieve 6684 |complete hasmount(127156)
|tip Use the "Humane Society" achievement guide to accomplish this.
step
Earn the "Mosh Pit" Achievement |achieve 6427 |complete hasmount(127156)
|tip Use the "Mosh Pit" achievement guide to accomplish this.
step
Earn the "Burning Man" Achievement |achieve 6928 |complete hasmount(127156)
|tip Use the "Burning Man" achievement guide to accomplish this.
step
Earn the "And Stay Dead!" Achievement |achieve 6929 |complete hasmount(127156)
|tip Use the "And Stay Dead!" achievement guide to accomplish this.
step
Earn the "Attention to Detail" Achievement |achieve 6531 |complete hasmount(127156)
|tip Use the "Attention to Detail" achievement guide to accomplish this.
step
Earn the "Rattle No More" Achievement |achieve 6394 |complete hasmount(127156)
|tip Use the "Rattle No More" achievement guide to accomplish this.
step
Earn the "Sanguinarian" Achievement |achieve 6396 |complete hasmount(127156)
|tip Use the "Sanguinarian" achievement guide to accomplish this.
step
Earn the "School's Out Forever" Achievement |achieve 6821 |complete hasmount(127156)
|tip Use the "School's Out Forever" achievement guide to accomplish this.
step
Earn the "Where's My Air Support?" Achievement |achieve 6688 |complete hasmount(127156)
|tip Use the "Where's My Air Support?" achievement guide to accomplish this.
step
Earn the "Return to Sender" Achievement |achieve 6485 |complete hasmount(127156)
|tip Use the "Return to Sender" achievement guide to accomplish this.
step
Earn the "Run with the Wind" Achievement |achieve 6822 |complete hasmount(127156)
|tip Use the "Run with the Wind" achievement guide to accomplish this.
step
Earn the "Polyformic Acid Science" Achievement |achieve 6715 |complete hasmount(127156)
|tip Use the "Polyformic Acid Science" achievement guide to accomplish this.
step
collect 1 Reins of the Crimson Cloud Serpent##87769 |complete hasmount(127156)
|tip You can find it in your mailbox.
step
use the Reins of the Crimson Cloud Serpent##87769
Learn the "Crimson Cloud Serpent" Mount |learnmount Crimson Cloud Serpent##127156
step
_Congratulations!_
You Collected the "Crimson Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Heavenly Crimson Cloud Serpent",{
keywords={"heavenly","crimson","cloud","serpent","flying","mount"},
model={43692},
mounts={127161},
patch='50400',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Glory of the Pandaria Raider\" achievement.",
},[[
step
Earn the "Must Love Dogs" Achievement |achieve 6823 |complete hasmount(127161)
|tip Use the "Must Love Dogs" achievement guide to accomplish this.
step
Earn the "Anything You Can Do, I Can Do Better..." Achievement |achieve 6674 |complete hasmount(127161)
|tip Use the "Anything You Can Do, I Can Do Better..." achievement guide to accomplish this.
step
Earn the "Sorry, Were You Looking for This?" Achievement |achieve 7056 |complete hasmount(127161)
|tip Use the "Sorry, Were You Looking for This?" achievement guide to accomplish this.
step
Earn the "Straight Six" Achievement |achieve 6686 |complete hasmount(127161)
|tip Use the "Straight Six" achievement guide to accomplish this.
step
Earn the "Overzealous" Achievement |achieve 6937 |complete hasmount(127161)
|tip Use the "Overzealous" achievement guide to accomplish this.
step
Earn the "Candle in the Wind" Achievement |achieve 6936 |complete hasmount(127161)
|tip Use the "Candle in the Wind" achievement guide to accomplish this.
step
Earn the "Like an Arrow to the Face" Achievement |achieve 6553 |complete hasmount(127161)
|tip Use the "Like an Arrow to the Face" achievement guide to accomplish this.
step
Earn the "Less Than Three" Achievement |achieve 6683 |complete hasmount(127161)
|tip Use the "Less Than Three" achievement guide to accomplish this.
step
Earn the "I Heard You Like Amber..." Achievement |achieve 6518 |complete hasmount(127161)
|tip Use the "I Heard You Like Amber..." achievement guide to accomplish this.
step
Earn the "Timing is Everything" Achievement |achieve 6922 |complete hasmount(127161)
|tip Use the "Timing is Everything" achievement guide to accomplish this.
step
Earn the "Power Overwhelming" Achievement |achieve 6717 |complete hasmount(127161)
|tip Use the "Power Overwhelming" achievement guide to accomplish this.
step
Earn the "Face Clutchers" Achievement |achieve 6824 |complete hasmount(127161)
|tip Use the "Face Clutchers" achievement guide to accomplish this.
step
Earn the "Who's Got Two Green Thumbs?" Achievement |achieve 6933 |complete hasmount(127161)
|tip Use the "Who's Got Two Green Thumbs?" achievement guide to accomplish this.
step
Earn "The Mind-Killer" Achievement |achieve 6825 |complete hasmount(127161)
|tip Use "The Mind-Killer" achievement guide to accomplish this.
step
Earn the "Heroic: Stone Guard" Achievement |achieve 6719 |complete hasmount(127161)
|tip Use the "Heroic: Stone Guard" achievement guide to accomplish this.
step
Earn the "Heroic: Feng the Accursed" Achievement |achieve 6720 |complete hasmount(127161)
|tip Use the "Heroic: Feng the Accursed" achievement guide to accomplish this.
step
Earn the "Heroic: Gara'jal the Spiritbinder" Achievement |achieve 6721 |complete hasmount(127161)
|tip Use the "Heroic: Gara'jal the Spiritbinder" achievement guide to accomplish this.
step
Earn the "Heroic: Four Kings" Achievement |achieve 6722 |complete hasmount(127161)
|tip Use the "Heroic: Four Kings" achievement guide to accomplish this.
step
Earn the "Heroic: Elegon" Achievement |achieve 6723 |complete hasmount(127161)
|tip Use the "Heroic: Elegon" achievement guide to accomplish this.
step
Earn the "Heroic: Will of the Emperor" Achievement |achieve 6724 |complete hasmount(127161)
|tip Use the "Heroic: Will of the Emperor" achievement guide to accomplish this.
step
Earn the "Heroic: Imperial Vizier Zor'lok" Achievement |achieve 6725 |complete hasmount(127161)
|tip Use the "Heroic: Imperial Vizier Zor'lok" achievement guide to accomplish this.
step
Earn the "Heroic: Blade Lord Ta'yak" Achievement |achieve 6726 |complete hasmount(127161)
|tip Use the "Heroic: Blade Lord Ta'yak" achievement guide to accomplish this.
step
Earn the "Heroic: Garalon" Achievement |achieve 6727 |complete hasmount(127161)
|tip Use the "Heroic: Garalon" achievement guide to accomplish this.
step
Earn the "Heroic: Wind Lord Mel'jarak" Achievement |achieve 6728 |complete hasmount(127161)
|tip Use the "Heroic: Wind Lord Mel'jarak" achievement guide to accomplish this.
step
Earn the "Heroic: Amber-Shaper Un'sok" Achievement |achieve 6729 |complete hasmount(127161)
|tip Use the "Heroic: Amber-Shaper Un'sok" achievement guide to accomplish this.
step
Earn the "Heroic: Grand Empress Shek'zeer" Achievement |achieve 6730 |complete hasmount(127161)
|tip Use the "Heroic: Grand Empress Shek'zeer" achievement guide to accomplish this.
step
Earn the "Heroic: Protectors of the Endless" Achievement |achieve 6731 |complete hasmount(127161)
|tip Use the "Heroic: Protectors of the Endless" achievement guide to accomplish this.
step
Earn the "Heroic: Tsulong" Achievement |achieve 6732 |complete hasmount(127161)
|tip Use the "Heroic: Tsulong" achievement guide to accomplish this.
step
Earn the "Heroic: Lei Shi" Achievement |achieve 6733 |complete hasmount(127161)
|tip Use the "Heroic: Lei Shi" achievement guide to accomplish this.
step
collect 1 Reins of the Heavenly Crimson Cloud Serpent##87773 |complete hasmount(127161)
|tip You can find it in your mailbox.
step
use the Reins of the Heavenly Crimson Cloud Serpent##87773
Learn the "Heavenly Crimson Cloud Serpent" Mount |learnmount Heavenly Crimson Cloud Serpent##127161
step
_Congratulations!_
You Collected the "Heavenly Crimson Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Grand Wyvern",{
keywords={"grand","wyvern","operation:","shieldwall","flying","mount"},
model={47165},
mounts={136164},
patch='51000',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Dominance Offensive Campaign\" achievement.",
},[[
step
Earn the "Dominance Offensive Campaign" Achievement |achieve 7929 |complete hasmount(136164)
|tip Use the "Dominance Offensive" dailies guide to accomplish this.
step
collect Grand Wyvern##93386 |complete hasmount(136164)
|tip You can find it in your mailbox.
step
use the Grand Wyvern##93386
Learn the "Grand Wyvern" Mount |learnmount Grand Wyvern##136164
step
_Congratulations!_
You Collected the "Grand Wyvern" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Jade Pandaren Kite",{
keywords={"jade","pandaren","kite","flying","mount"},
model={42147},
mounts={133023},
patch='51000',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"We're Going to Need More Saddles\" achievement.",
},[[
step
Earn the "We're Going to Need More Saddles" Achievement |achieve 7862 |complete hasmount(133023)
|tip Use the "We're Going to Need More Saddles" achievement guide to accomplish this.
step
collect 1 Jade Pandaren Kite##91802 |complete hasmount(133023)
|tip You can find it in your mailbox.
step
use the Jade Pandaren Kite##91802
Learn the "Jade Pandaren Kite" Mount |learnmount Jade Pandaren Kite##133023
step
_Congratulations!_
You Collected the "Jade Pandaren Kite" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Pandaren Kite",{
keywords={"pandaren","kite","flying","mount"},
model={41903},
mounts={118737},
patch='50400',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Pandaren Ambassador\" achievement.",
},[[
step
Earn the "Pandaren Ambassador" Achievement |achieve 6827 |complete hasmount(118737)
|tip Use the Mists of Pandaria reputation guides to accomplish this.
step
collect 1 Pandaren Kite String##81559 |complete hasmount(118737)
|tip You can find it in your mailbox.
step
use the Pandaren Kite String##81559
Learn the "Pandaren Kite" Mount |learnmount Pandaren Kite##118737
step
_Congratulations!_
You Collected the "Pandaren Kite" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Thundering Jade Cloud Serpent",{
keywords={"thundering","jade","cloud","serpent","flying","mount"},
model={43686},
mounts={124408},
patch='50400',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Guild Glory of the Pandaria Raider\" achievement.",
},[[
step
Earn the "Guild Glory of the Pandaria Raider" achievement |achieve 6682 |complete hasmount(124408)
|tip Use the "Glory of the Pandaria Raider" achievement guide to accomplish this.
|tip You must do this with your guild to earn the "Guild" version of the achievements.
step
Reach Exalted Reputation with your Guild |complete rep('Guild') == Exalted
|tip Complete quests and dailies or run dungeons with a guild tabard equipped to accomplish this.
step
talk Goram##46572
buy 1 Reins of the Thundering Jade Cloud Serpent##85666 |goto Orgrimmar/1 48.47,75.58 |complete hasmount(124408)
step
use the Reins of the Thundering Jade Cloud Serpent##85666
Learn the "Thundering Jade Cloud Serpent" Mount |learnmount Thundering Jade Cloud Serpent##124408
step
_Congratulations!_
You Collected the "Thundering Jade Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Spawn of Galakras",{
keywords={"spawn","of","galakras","siege","of","orgrimmar","flying","mount"},
model={51479},
mounts={148392},
patch='54000',
mounttype='Flying',
description="\nThis mount is acquired by earning the \"Glory of the Orgrimmar Raider\" achievement.",
},[[
step
Earn the "No More Tears" Achievement |achieve 8536 |complete hasmount(148392)
|tip Use the "No More Tears" achievement guide to accomplish this.
step
Earn the "Go Long" Achievement |achieve 8528 |complete hasmount(148392)
|tip Use the "Go Long" achievement guide to accomplish this.
step
Earn the "None Shall Pass" Achievement |achieve 8532 |complete hasmount(148392)
|tip Use the "None Shall Pass" achievement guide to accomplish this.
step
Earn the "Swallow Your Pride" Achievement |achieve 8521 |complete hasmount(148392)
|tip Use the "Swallow Your Pride" achievement guide to accomplish this.
step
Earn "The Immortal Vanguard" Achievement |achieve 8530 |complete hasmount(148392)
|tip Use "The Immortal Vanguard" achievement guide to accomplish this.
step
Earn the "Fire in the Hole!" Achievement |achieve 8520 |complete hasmount(148392)
|tip Use the "Fire in the Hole!" achievement guide to accomplish this.
step
Earn the "Rescue Raiders" Achievement |achieve 8453 |complete hasmount(148392)
|tip Use the "Rescue Raiders" achievement guide to accomplish this.
step
Earn the "Gamon Will Save Us!" Achievement |achieve 8448 |complete hasmount(148392)
|tip Use the "Gamon Will Save Us!" achievement guide to accomplish this.
step
Earn the "Unlimited Potential" Achievement |achieve 8538 |complete hasmount(148392)
|tip Use the "Unlimited Potential" achievement guide to accomplish this.
step
Earn the "Criss Cross" Achievement |achieve 8529 |complete hasmount(148392)
|tip Use the "Criss Cross" achievement guide to accomplish this.
step
Earn the "Giant Dinosaur vs. Mega Snail" Achievement |achieve 8527 |complete hasmount(148392)
|tip Use the "Giant Dinosaur vs. Mega Snail" achievement guide to accomplish this.
step
Earn the "Lasers and Magnets and Drills! Oh My!" Achievement |achieve 8543 |complete hasmount(148392)
|tip Use the "Lasers and Magnets and Drills! Oh My!" achievement guide to accomplish this.
step
Earn the "Now We are the Paragon" Achievement |achieve 8531 |complete hasmount(148392)
|tip Use the "Now We are the Paragon" achievement guide to accomplish this.
step
Earn the "Strike!" Achievement |achieve 8537 |complete hasmount(148392)
|tip Use the "Strike!" achievement guide to accomplish this.
step
collect Reins of Galakras##104208 |complete hasmount(148392)
|tip You can find it in your mailbox.
step
use the Reins of Galakras##104208
Learn the "Spawn of Galakras" Mount |learnmount Spawn of Galakras##148392
step
_Congratulations!_
You Collected the "Spawn of Galakras" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Enchanted Fey Dragon",{
keywords={"blizzard","store","enchanted","fey","dragon","flying","mount"},
model={59583},
mounts={142878},
patch='53000',
mounttype='Flying',
description="\nThis mount is purchased from the in-game Blizzard store.",
},[[
step
This mount can be purchased for $25.00 from the official Blizzard Store
|tip Click the Shop button in the bottom-right corner of your screen, then click on Mounts.
collect Enchanted Fey Dragon##97989 |complete hasmount(142878)
|tip You can find it in your mailbox.
step
use the Enchanted Fey Dragon##97989
Learn the "Enchanted Fey Dragon" Mount |learnmount Enchanted Fey Dragon##142878
step
_Congratulations!_
You Collected the "Enchanted Fey Dragon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Warforged Nightmare",{
keywords={"blizzard","store","warforged","nightmare","flying","mount"},
model={55896},
mounts={163024},
patch='60100',
mounttype='Flying',
description="\nThis mount is purchased from the in-game Blizzard store.",
},[[
step
This mount can be purchased for $30.00 from the official Blizzard Store
|tip Click the Shop button in the bottom-right corner of your screen, then click on Mounts.
collect Warforged Nightmare##112326 |complete hasmount(163024)
|tip You can find it in your mailbox.
step
use the Warforged Nightmare##112326
Learn the "Warforged Nightmare" Mount |learnmount Warforged Nightmare##163024
step
_Congratulations!_
You Collected the "Warforged Nightmare" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Imperial Quilen",{
keywords={"collector's","collectors","edition","flying","mount"},
model={43254},
mounts={124659},
patch='50400',
mounttype='Flying',
description="\nThis mount was earned by purchasing the Collector's Edition of the Mists of Pandaria expansion but can now be purchased from the in-game Blizzard store.",
},[[
step
This mount can be purchased for $25.00 from the official Blizzard Store
|tip Click the Shop button in the bottom-right corner of your screen, then click on Mounts.
collect Imperial Quilen##85870 |complete hasmount(124659)
|tip You can find it in your mailbox.
step
use the Imperial Quilen##85870
Learn the "Imperial Quilen" Mount |learnmount Imperial Quilen##124659
step
_Congratulations!_
You Collected the "Imperial Quilen" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Cobalt Cloud Serpent",{
keywords={"heavenly","onyx","cloud","serpent","sha","of","anger","flying","mount"},
model={47981},
mounts={139442},
patch='52000',
mounttype='Flying',
description="\nThis mount is a very rare drop from Nalak on the Isle of Thunder.",
},[[
step
kill Nalak##69099
|tip Up in the air.
|tip It has about a 10-20 minute respawn timer.
collect Reins of the Thundering Cobalt Cloud Serpent##95057 |goto Isle of Thunder/0 60.15,37.71 |complete hasmount(139442)
|tip This has an extremely low drop rate.
step
use the Reins of the Thundering Cobalt Cloud Serpent##95057
Learn the "Thundering Cobalt Cloud Serpent" Mount |learnmount Thundering Cobalt Cloud Serpent##139442
step
_Congratulations!_
You Collected the "Thundering Cobalt Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Heavenly Onyx Cloud Serpent",{
keywords={"heavenly","onyx","cloud","serpent","sha","of","anger","flying","mount"},
model={43689},
mounts={127158},
patch='50400',
mounttype='Flying',
description="\nThis mount is a very rare drop from Sha of Anger in Kun-Lai Summit.",
},[[
step
kill Sha of Anger##60491
|tip It has about a 10-20 minute respawn timer.
collect Reins of the Heavenly Onyx Cloud Serpent##87771 |goto Kun-Lai Summit/0 53.77,64.62 |complete hasmount(127158)
|tip This has an extremely low drop rate.
step
use the Reins of the Heavenly Onyx Cloud Serpent##87771
Learn the "Heavenly Onyx Cloud Serpent" Mount |learnmount Heavenly Onyx Cloud Serpent##127158
step
_Congratulations!_
You Collected the "Heavenly Onyx Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Onyx Cloud Serpent",{
keywords={"thundering","onyx","cloud","serpent","huolon","flying","mount"},
model={51488},
mounts={148476},
patch='54000',
mounttype='Flying',
description="\nThis mount is a very rare drop from the rare spawn Huolon in the Timeless Isle.",
},[[
step
kill Huolon##73167
|tip It flies around The Blazing Way but will spawn within melee range at this location.
|tip It has about a 30-60 minute respawn timer.
collect Reins of the Thundering Onyx Cloud Serpent##104269 |goto Timeless Isle/0 65.64,56.97 |complete hasmount(148476)
|tip This has about a 1% drop rate.
step
use the Reins of the Thundering Onyx Cloud Serpent##104269
Learn the "Thundering Onyx Cloud Serpent" Mount |learnmount Thundering Onyx Cloud Serpent##148476
step
_Congratulations!_
You Collected the "Thundering Onyx Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Ruby Cloud Serpent",{
keywords={"thundering","ruby","cloud","serpent","alani","skyshard","flying","mount"},
model={45797},
mounts={132036},
patch='50400',
mounttype='Flying',
description="\nThis mount is dropped by Alani in the Vale of Eternal Blossoms after hitting it with a Sky Crystal or purchased from the Auction House.",
},[[
step
Kill level 35 enemies throughout Pandaria
|tip These can also drop from level 50 enemies in N'Zoth Assaults. |only if level >= 50
collect 10 Skyshard##86547 |goto Vale of Eternal Blossoms/0 64.20,44.54 |complete itemcount(86547) >= 10 or itemcount(86546) >= 1 or itemcount(90655) >= 1 or hasmount(132036)
|tip These have a very low drop rate.
|tip Once you have 10 you will combine them to create a Sky Crystal.
|tip You can also buy this mount from the Auction House if available.
step
use Skyshard##86547
collect 1 Sky Crystal##86546 |complete itemcount(86546) >= 1 or itemcount(90655) >= 1 or hasmount(132036)
step
clicknpc Alani##64403
|tip It flies around the center and western part of the zone or you can wait for it to fly by you at this location.
use Sky Crystal##86546
|tip Use it on Alani.
collect 1 Reins of the Thundering Ruby Cloud Serpent##90655 |goto Vale of Eternal Blossoms/0 55.79,22.78 |complete hasmount(132036)
step
use the Reins of the Thundering Ruby Cloud Serpent##90655
Learn the "Thundering Ruby Cloud Serpent" Mount |learnmount Thundering Ruby Cloud Serpent##132036
step
_Congratulations!_
You Collected the "Thundering Ruby Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Hearthsteed",{
keywords={"hearthstone","flying","mount"},
model={48931},
mounts={142073},
patch='53000',
mounttype='Flying',
description="\nThis mount is earned by winning 3 games in 'Play' or 'Arena' mode in Blizzard's card game, Hearthstone.",
},[[
step
Earn the "Hearthstoned" Achievement |achieve 8345
|tip Win 3 games in "Play" or "Arena" mode in Hearthstone to achieve this.
step
collect Hearthsteed##98618 |complete hasmount(142073)
|tip You can find it in your mailbox.
step
use the Hearthsteed##98618
Learn the "Hearthsteed" Mount |learnmount Hearthsteed##142073
step
_Congratulations!_
You Collected the "Hearthsteed" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Onyx Cloud Serpent",{
keywords={"exalted","shado-pan","shado","pan","flying","mount"},
model={41990},
mounts={127154},
patch='50400',
mounttype='Flying',
description="\nThis mount is earned from the Surprise Attack! quest after reaching Exalted reputation with the Shado-Pan.",
},[[
step
Reach Exalted Reputation with the Shado-Pan |complete rep('Shado-Pan') == Exalted
|tip Use the "Shado-Pan Assault" reputation guide to accomplish this.
step
talk Master Snowdrift##63009
|tip He walks around this area.
accept Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto 48.79,58.65
step
talk Master Snowdrift##63009
|tip He walks around this area.
turnin Mogu Incursions##31266 |goto 49.51,70.56
accept Surprise Attack!##31277 |goto 49.51,70.56
step
talk Ban Bearheart##62304
Tell him _"Alright. Let's go."_
Join the Battle at Niuzao Temple |q 31277/1 |goto 42.62,63.92
step
Watch the dialogue
Kill the enemies that attack in waves
kill Hei Feng##62309
Defeat the Mogu Invasion |q 31277/2 |goto 40.89,60.33
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto 49.17,71.05
collect Reins of the Onyx Cloud Serpent##87768 |goto 49.17,71.05 |complete hasmount(127154)
step
use the Reins of the Onyx Cloud Serpent##87768
Learn the "Onyx Cloud Serpent" Mount |learnmount Onyx Cloud Serpent##127154
step
_Congratulations!_
You Collected the "Onyx Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Imperial Quilen",{
keywords={"collector's","collectors","edition","flying","mount"},
model={43254},
mounts={124659},
patch='50400',
mounttype='Flying',
description="\nThis guide will help you acquire the Imperial Quilen mount.",
},[[
step
This mount requires you to purchase the World of Warcraft: Mists of Pandaria Collector's Edition
You may be able to find a copy of this mount on eBay or Amazon, but they are typically very expensive.
confirm
step
Check your in-game mail for your new mount!
learnmount Imperial Quilen##124659 |use Imperial Quilen##85870
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Depleted-Kyparium Rocket",{
keywords={"engineering","flying","mount","depleted","kyparium"},
model={43637},
mounts={126507},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Engineering profession or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Engineering |skill Pandaria Engineering,75
|tip Use the "Pandaria Engineering 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
talk Sally Fizzlefury##55143
learn Depleted-Kyparium Rocket##127138 |goto Valley of the Four Winds/0 16.05,83.14
step
collect 12 Living Steel##72104 |complete hasmount(126507)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 200 Kyparite##72093 |complete hasmount(126507)
|tip Use the "Kyparite" farming guide to gather these, if you have Jewelcrafting.
|tip You can also buy them from the Auction House.
step
collect 12 High Explosive Gunpowder##77468 |complete hasmount(126507)
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 20 Ghost Iron Bolts##77467 |complete hasmount(126507)
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 12 Spirit of Harmony##76061 |complete hasmount(126507)
|tip Use the "Spirit of Harmony" profession guide to gather these.
|tip You can also buy them from the Auction House.
step
talk Big Keech##61650
|tip He walks around this area.
buy 3 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |complete hasmount(126507)
He may also be found around [62.26,41.96]
step
Open Your Engineering Crafting Panel:
_<Create 1 Depleted-Kyparium Rocket>_
collect 1 Depleted-Kyparium Rocket##87250 |complete hasmount(126507)
step
use the Depleted-Kyparium Rocket##87250
Learn the "Depleted-Kyparium Rocket" Mount |learnmount Depleted-Kyparium Rocket##126507
step
_Congratulations!_
You Collected the "Depleted-Kyparium Rocket" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Geosynchronous World Spinner",{
keywords={"engineering","flying","mount"},
model={43638},
mounts={126508},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Engineering profession or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Engineering |skill Pandaria Engineering,75
|tip Use the "Pandaria Engineering 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
talk Sally Fizzlefury##55143
learn Geosynchronous World Spinner##127138 |goto Valley of the Four Winds/0 16.05,83.14
step
collect 12 Living Steel##72104 |complete hasmount(126508)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 12 Trillium Bar##72095 |complete hasmount(126508)
|tip These are crafted with Trillium Ore.
|tip Use the "Trillium" profession guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 20 Ghost Iron Bolts##77467 |complete hasmount(126508)
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 12 Spirit of Harmony##76061 |complete hasmount(126508)
|tip Use the "Spirit of Harmony" profession guide to gather these.
|tip You can also buy them from the Auction House.
step
talk Big Keech##61650
|tip He walks around this area.
buy 3 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |complete hasmount(126507)
He may also be found around [62.26,41.96]
step
Open Your Engineering Crafting Panel:
_<Create 1 Geosynchronous World Spinner>_
collect 1 Geosynchronous World Spinner##87251 |complete hasmount(126508)
step
use the Geosynchronous World Spinner##87251
Learn the "Geosynchronous World Spinner" Mount |learnmount Geosynchronous World Spinner##126508
step
_Congratulations!_
You Collected the "Geosynchronous World Spinner" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Sky Golem",{
keywords={"engineering","flying","mount"},
model={46686},
mounts={134359},
patch='51000',
mounttype='Flying',
description="\nThis mount is crafted with the Engineering profession or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Engineering |skill Pandaria Engineering,75
|tip Use the "Pandaria Engineering 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
Kill enemies in the Vale of Eternal Blossoms
collect 1 Schematic: Chief Engineer Jard's Journal##100910 |complete hasmount(134359)
step
use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630 |complete hasmount(134359)
step
collect 30 Living Steel##72104 |complete hasmount(134359)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 30 Jard's Peculiar Energy Source##94113 |complete hasmount(134359)
|tip These are created with Ghost Iron Bars.
|tip Use the "Ghost Iron Ore" farming guide to gather these, if you have Mining.
|tip These have a daily cooldown, so you will have to wait to do it once every day.
|tip You can also buy them from the Auction House.
step
Open Your Engineering Crafting Panel:
_<Create 1 Sky Golem>_
collect 1 Sky Golem##95416 |complete hasmount(134359)
step
use the Sky Golem##95416
Learn the "Sky Golem" Mount |learnmount Sky Golem##134359
step
_Congratulations!_
You Collected the "Sky Golem" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Jade Panther",{
keywords={"jewelcrafting","jade","panther","mount","flying"},
model={42502},
mounts={121837},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Jewelcrafting profession after reaching Honored reputation with the Order of the Cloud Serpent or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,75
|tip Use the "Pandaria Jewelcrafting 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
Reach Honored Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Honored
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy 1 Design: Jade Panther##83845 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(121837)
step
use the Design: Jade Panther##83845
learn Jade Panther##121844
step
collect 4 Living Steel##72104 |complete hasmount(121837)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 20 Wild Jade##76139 |complete hasmount(121837)
|tip These are crafted with Alexandrite and Golden Lotus, if you have Alchemy.
|tip Use the "Alexandrite" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
step
collect 20 Mote of Harmony##89112 |complete hasmount(121837)
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |complete hasmount(121837)
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |complete hasmount(121837)
He may also be found around [62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto 61.69,21.67 |complete hasmount(121837)
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Jade Panther>_
collect 1 Jade Panther##83088 |complete hasmount(121837)
step
use the Jade Panther##83088
Learn the "Jade Panther" Mount |learnmount Jade Panther##121837
step
_Congratulations!_
You Collected the "Jade Panther" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Jeweled Onyx Panther",{
keywords={"jewelcrafting","jeweled","onyx","panther","mount","flying"},
model={42185},
mounts={120043},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Jewelcrafting profession by combining the Jade Panther, Sapphire Panther, Ruby Panther and Sunstone Panther mounts after reaching Exalted reputation with the Order of the Cloud Serpent or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,75
|tip Use the "Pandaria Jewelcrafting 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy 1 Design: Jeweled Onyx Panther##83877 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(120043)
step
use the Design: Jeweled Onyx Panther##83877
learn Jeweled Onyx Panther##120045
step
collect 1 Jade Panther##83088 |complete hasmount(120043)
|tip Use the "Jade Panther" mount guide to accomplish this.
step
collect 1 Sapphire Panther##83090 |complete hasmount(120043)
|tip Use the "Sapphire Panther" mount guide to accomplish this.
step
collect 1 Ruby Panther##83087 |complete hasmount(120043)
|tip Use the "Ruby Panther" mount guide to accomplish this.
step
collect 1 Sunstone Panther##83089 |complete hasmount(120043)
|tip Use the "Sunstone Panther" mount guide to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Jeweled Onyx Panther>_
collect 1 Jeweled Onyx Panther##82453 |complete hasmount(120043)
step
use the Jeweled Onyx Panther##82453
Learn the "Jeweled Onyx Panther" Mount |learnmount Jeweled Onyx Panther##120043
step
_Congratulations!_
You Collected the "Jeweled Onyx Panther" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Ruby Panther",{
keywords={"jewelcrafting","ruby","panther","mount","flying"},
model={42499},
mounts={121838},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Jewelcrafting profession after reaching Revered reputation with the Order of the Cloud Serpent or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,75
|tip Use the "Pandaria Jewelcrafting 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
Reach Revered Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Revered
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy 1 Design: Ruby Panther##83931 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(121838)
step
use the Design: Ruby Panther##83931
learn Ruby Panther##121841
step
collect 4 Living Steel##72104 |complete hasmount(121838)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 20 Sun's Radiance##76142 |complete hasmount(121838)
|tip These are crafted with Sunstone and Golden Lotus, if you have Alchemy.
|tip Use the "Sunstone" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
step
collect 20 Mote of Harmony##89112 |complete hasmount(121838)
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |complete hasmount(121838)
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |complete hasmount(121838)
He may also be found around [62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto 61.69,21.67 |complete hasmount(121838)
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Ruby Panther>_
collect 1 Ruby Panther##83087 |complete hasmount(121838)
step
use the Ruby Panther##83087
Learn the "Ruby Panther" Mount |learnmount Ruby Panther##121838
step
_Congratulations!_
You Collected the "Ruby Panther" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Sapphire Panther",{
keywords={"jewelcrafting","sapphire","panther","mount","flying"},
model={42500},
mounts={121836},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Jewelcrafting profession after reaching Revered reputation with the Order of the Cloud Serpent or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,75
|tip Use the "Pandaria Jewelcrafting 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
Reach Revered Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Revered
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy 1 Design: Sapphire Panther##83932 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(121836)
step
use the Design: Sapphire Panther##83932
learn Sapphire Panther##121842
step
collect 4 Living Steel##72104 |complete hasmount(121836)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 20 River's Heart##76138 |complete hasmount(121836)
|tip These are crafted with Lapis Lazuli and Golden Lotus, if you have Alchemy.
|tip Use the "Lapis Lazuli" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
step
collect 20 Mote of Harmony##89112 |complete hasmount(121836)
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |complete hasmount(121836)
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |complete hasmount(121836)
He may also be found around [62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto 61.69,21.67 |complete hasmount(121836)
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Sapphire Panther>_
collect 1 Sapphire Panther##83090 |complete hasmount(121836)
step
use the Sapphire Panther##83090
Learn the "Sapphire Panther" Mount |learnmount Sapphire Panther##121836
step
_Congratulations!_
You Collected the "Sapphire Panther" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Sunstone Panther",{
keywords={"jewelcrafting","sunstone","panther","mount","flying"},
model={42501},
mounts={121839},
patch='50400',
mounttype='Flying',
description="\nThis mount is crafted with the Jewelcrafting profession after reaching Honored reputation with the Order of the Cloud Serpent or purchased from the Auction House.",
},[[
step
Reach 75 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,75
|tip Use the "Pandaria Jewelcrafting 1-75" profession guide to accomplish this.
|tip If you don't want to gather the materials to craft it you can buy it from the Auction House.
step
Reach Honored Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Honored
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy 1 Design: Sunstone Panther##83830 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(121839)
step
use the Design: Sunstone Panther##83830
learn Sunstone Panther##121843
step
collect 4 Living Steel##72104 |complete hasmount(121839)
|tip These are crafted with Trillium Bars and Spirits of Harmony, if you have Alchemy.
|tip Use the "Trillium" and "Spirit of Harmony" profession guides to gather these, if you have Mining.
|tip You can also buy them from the Auction House.
step
collect 20 Sun's Radiance##76142 |complete hasmount(121839)
|tip These are crafted with Sunstone and Golden Lotus, if you have Alchemy.
|tip Use the "Sunstone" farming guide to gather these, if you have Mining.
|tip Use the "Golden Lotus" profession guide to gather these, if you have Herbalism.
|tip You can also buy them from the Auction House.
step
collect 20 Mote of Harmony##89112 |complete hasmount(121839)
|tip These are dropped by any mob in Pandaria.
|tip You can also buy them from the Auction House.
step
use Mote of Harmony##89112
collect 2 Spirit of Harmony##76061 |complete hasmount(121839)
step
talk Big Keech##61650
|tip He walks around this area.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms/0 71.52,44.20 |complete hasmount(121839)
He may also be found around [62.26,41.96]
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto 61.69,21.67 |complete hasmount(121839)
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Sunstone Panther>_
collect 1 Sunstone Panther##83089
step
use the Sunstone Panther##83089
Learn the "Sunstone Panther" Mount |learnmount Sunstone Panther##121839
step
_Congratulations!_
You Collected the "Sunstone Panther" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Astral Cloud Serpent",{
keywords={"mount","astral","cloud","serpent","flying"},
model={46087},
mounts={127170},
patch='50400',
mounttype='Flying',
description="\nThis mount is a very rare drop from Elegon in the Mogu'shan Vaults raid.",
},[[
step
Press _I_ and queue for the Mogu'shan Vaults or enter the raid normally |goto Mogu'shan Vaults/1 75.32,73.82 < 100 |c |or
'|learnmount Astral Cloud Serpent##127170 |or
step
kill Elegon##60410
|tip Use the "Mogu'shan Vaults" raid guide to accomplish this.
click Cache of Pure Energy##214383
collect 1 Reins of the Astral Cloud Serpent##87777 |complete hasmount(127170)
|tip This has about a 3% drop rate.
step
use the Reins of the Astral Cloud Serpent##87777
Learn the "Astral Cloud Serpent" Mount |learnmount Astral Cloud Serpent##127170
step
_Congratulations!_
You Collected the "Astral Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Clutch of Ji-kun",{
keywords={"mount","Clutch","of","Ji-kun","flying"},
model={47983},
mounts={139448},
patch='52000',
mounttype='Flying',
description="\nThis mount is a very rare drop from Ji-Kun in the Throne of Thunder raid.",
},[[
step
Press _I_ and queue for Throne of Thunder or enter the raid normally |goto Throne of Thunder/1 29.99,25.61 < 100 |c |or
'|learnmount Clutch of Ji-kun##139448 |or
step
kill Ji-Kun##69712
|tip Use the "Throne of Thunder" raid guide to accomplish this.
collect 1 Clutch of Ji-kun##95059 |complete hasmount(139448)
|tip This has about a 3% drop rate.
step
use the Clutch of Ji-kun##95059
Learn the "Clutch of Ji-kun" Mount |learnmount Clutch of Ji-kun##139448
step
_Congratulations!_
You Collected the "Clutch of Ji-kun" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Azure Cloud Serpent",{
keywords={"azure","cloud","serpent","mount","order","of","the","cloud","serpent","exalted","flying"},
model={41989},
mounts={123992},
patch='50400',
mounttype='Flying',
description="\nThis mount is purchased from San Redscale in The Jade Forest after reaching Exalted reputation with the Order of the Cloud Serpent.",
},[[
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy Reins of the Azure Cloud Serpent##85430 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(123992)
step
use the Reins of the Azure Cloud Serpent##85430
Learn the "Azure Cloud Serpent" Mount |learnmount Azure Cloud Serpent##123992
step
_Congratulations!_
You Collected the "Azure Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Golden Cloud Serpent",{
keywords={"golden","cloud","serpent","mount","order","of","the","golden","lotus","exalted","flying"},
model={41991},
mounts={123993},
patch='50400',
mounttype='Flying',
description="\nThis mount is purchased from San Redscale in The Jade Forest after reaching Exalted reputation with the Order of the Cloud Serpent.",
},[[
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy Reins of the Golden Cloud Serpent##85429 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(123993)
step
use the Reins of the Golden Cloud Serpent##85429
Learn the "Golden Cloud Serpent" Mount |learnmount Golden Cloud Serpent##123993
step
_Congratulations!_
You Collected the "Golden Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Grand Armored Wyvern",{
keywords={"grand","armored","wyvern","dominance","offensive","exalted","flying","mount"},
model={46930},
mounts={135418},
patch='51000',
mounttype='Flying',
description="\nThis mount is purchased from Tuskripper Grukna in Krasarang Wilds after reaching Exalted reputation with Dominance Offensive.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.18
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.78,64.34
step
Watch the dialogue
talk Garrosh Hellscream##62092
accept The Might of the Warchief##32250 |goto 8.71,64.44
step
Kill Alliance enemies around this area
Slay #25# Alliance |q 32250/1 |goto 11.83,62.02
step
talk Blood Guard Gro'tash##67927
Find Blood Guard Gro'tash |q 32250/2 |goto 10.74,53.12
step
talk Grizzle Gearslip##67926
Find Grizzle Gearslip |q 32250/3 |goto 15.77,57.72
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250
accept Domination Point##32108
step
click Signal Fire##216274
turnin Domination Point##32108 |goto 8.58,63.85
step
Reach Exalted Reputation with Dominance Offensive |complete rep('Dominance Offensive') == Exalted
|tip Use the "Dominance Offensive" reputation guide to accomplish this.
step
talk Tuskripper Grukna##69060
buy Grand Armored Wyvern##93169 |goto 10.87,53.33 |complete hasmount(135418)
step
use the Grand Armored Wyvern##93169
Learn the "Grand Armored Wyvern" Mount |learnmount Grand Armored Wyvern##135418
step
_Congratulations!_
You Collected the "Grand Armored Wyvern" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Heavenly Golden Cloud Serpent",{
keywords={"heavenly","golden","cloud","serpent","flying","mount"},
model={43693},
mounts={127164},
patch='50400',
mounttype='Flying',
description="\nThis mount is purchased for 100,000 Timeless Coins from Mistweaver Ku in the Timeless Isle after reaching Exalted reputation with Emperor Shaohao.",
},[[
step
Reach Exalted Reputation with Emperor Shaohao |complete rep('Emperor Shaohao') == Exalted
|tip Use the "Emperor Shaohao" reputation guide to accomplish this.
step
Collect #100000# Timeless Coins |complete curcount(777) >= 100000 or hasmount(127164)
|tip Use the "Timeless Isle Dailies" guide to accomplish this.
step
talk Mistweaver Ku##73306
buy Reins of the Heavenly Golden Cloud Serpent##87774 |goto Timeless Isle/0 43.09,55.22 |complete hasmount(127164)
step
use Reins of the Heavenly Golden Cloud Serpent##87774
Learn the "Heavenly Golden Cloud Serpent" Mount |learnmount Heavenly Golden Cloud Serpent##127164
step
_Congratulations!_
You Collected the "Heavenly Golden Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Jade Cloud Serpent",{
keywords={"jade","cloud","serpent","the","golden","lotus","exalted","mount","flying"},
model={40590},
mounts={113199},
patch='50400',
mounttype='Flying',
description="\nThis mount is purchased from San Redscale in The Jade Forest after reaching Exalted reputation with the Order of the Cloud Serpent.",
},[[
step
Reach Exalted Reputation with the Order of the Cloud Serpent |complete rep('Order of the Cloud Serpent') == Exalted
|tip Use "The Order of the Cloud Serpent" reputation guide to accomplish this.
step
talk San Redscale##58414
buy Reins of the Jade Cloud Serpent##79802 |goto The Jade Forest/0 56.70,44.38 |complete hasmount(113199)
step
use the Reins of the Jade Cloud Serpent##79802
Learn the "Jade Cloud Serpent" Mount |learnmount Jade Cloud Serpent##113199
step
_Congratulations!_
You Collected the "Jade Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Flying Cloud",{
keywords={"red","flying","cloud","exalted","the","lorewalkers","mount","flying"},
model={44808},
mounts={130092},
patch='50400',
mounttype='Flying',
description="\nThis mount is purchased from Tan Shin Tiao in the Vale of Eternal Blossoms after reaching Exalted reputation with The Lorewalkers.",
},[[
step
Reach Exalted Reputation with The Lorewalkers |complete rep('The Lorewalkers') == Exalted
|tip Use the "Lorewalkers" reputation guide to accomplish this.
step
talk Tan Shin Tiao##64605
|tip Inside the building.
buy Disc of the Red Flying Cloud##89363 |goto Vale of Eternal Blossoms/0 82.22,29.27 |complete hasmount(130092)
step
use the Disc of the Red Flying Cloud##89363
Learn the "Red Flying Cloud" Mount |learnmount Red Flying Cloud##130092
step
_Congratulations!_
You Collected the "Red Flying Cloud" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Thundering August Cloud Serpent",{
keywords={"thundering","august","cloud","serpent","exalted","celestials","mount","flying"},
model={43686},
mounts={129918},
patch='50400',
mounttype='Flying',
description="\nThis mount is purchased from Sage Whiteheart in the Vale of Eternal Blossoms after reaching Exalted reputation with The August Celestials.",
},[[
step
Reach Exalted Reputation with The August Celestials |complete rep('The August Celestials') == Exalted
|tip Use "The August Celestials" reputation guide to accomplish this.
step
talk Sage Whiteheart##64032
buy Reins of the Thundering August Cloud Serpent##89304 |goto Vale of Eternal Blossoms/0 84.62,63.79 |complete hasmount(129918)
step
use the Reins of the Thundering August Cloud Serpent##89304
Learn the "Thundering August Cloud Serpent" Mount |learnmount Thundering August Cloud Serpent##129918
step
_Congratulations!_
You Collected the "Thundering August Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Trading Card Mounts\\Ghastly Charger",{
keywords={"trading","card","game","ghastly","charger","mount","flying"},
mounts={136505},
patch='52000',
mounttype='Flying',
model={48014},
description="\nThis mount is obtained by redeeming a 25-digit code from the Trading Card Game or by purchasing it from the Auction House.",
},[[
step
This mount can only be obtained by redeeming a code from the World of Warcraft trading card game
|tip Redeem your Trading Card Game code on the World of Warcraft Promotional Code Retrieval Page.
|tip This will give you an in-game code to redeem for the mount.
talk Landro Longshot##17249
Tell him _"Betrayal of the Guardian"_
And then _"Ghastly Charger"_
|tip Redeem the code that you got from the WoW Promotional Code Retrieval Page.
collect Ghastly Charger's Skull##93671 |goto The Cape of Stranglethorn/0 42.64,71.47 |complete hasmount(136505)
|tip You can also buy this from the Auction House if available.
|tip It is usually very expensive.
step
use the Ghastly Charger's Skull##93671
Learn the "Ghastly Charger" Mount |learnmount Ghastly Charger##136505
step
_Congratulations!_
You Collected the "Ghastly Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Armored Bloodwing",{
author="support@zygorguides.com",
keywords={"blizzard","store","armored","bloodwing","flying","mount"},
mounts={139595},
patch='52000',
mounttype='Flying',
model={48020},
description="\nThis mount has been removed from the game.",
},[[
step
This mount used to be purchased from the in-game Blizzard store
|tip This mount is no longer obtainable.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Ashen Pandaren Phoenix",{
keywords={"ashen","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132117},
patch='50400',
mounttype='Flying',
model={45521},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for completing all Mists of Pandaria challenge mode dungeons with silver or better time
|tip This mount is no longer obtainable.
|tip It was retired from service in patch 6.0.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Big Blizzard Bear",{
keywords={"big","blizzard","bear","ground","mount"},
mounts={58983},
patch='30002',
mounttype='Ground',
model={27567},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for going to the 2008 BlizzCon
|tip It was also obtainable for a time via DirectTV subscription in the USA.
|tip This mount is no longer obtainable.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Crimson Pandaren Phoenix",{
keywords={"crimson","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={129552},
patch='50400',
mounttype='Flying',
model={44633},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for completing all Mists of Pandaria challenge mode dungeons with silver or better time
|tip This mount is no longer obtainable.
|tip It was retired from service in patch 6.0.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Emerald Pandaren Phoenix",{
keywords={"emerald","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132118},
patch='50400',
mounttype='Flying',
model={45520},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for completing all Mists of Pandaria challenge mode dungeons with silver or better time
|tip This mount is no longer obtainable.
|tip It was retired from service in patch 6.0.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Grievous Gladiator's Cloud Serpent",{
keywords={"grievous","gladiators","gladiator's","cloud","serpent","arena"},
mounts={148619},
patch='54000',
mounttype='Flying',
model={51360},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for top ranking arena teams at the conclusion of Arena Season 14
|tip This mount is no longer obtainable.
|tip It was retired from service at the conclusion of Arena Season 14.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Malevolent Gladiator's Cloud Serpent",{
keywords={"malevolent","gladiator's","cloud","serpent","arena"},
mounts={139407},
patch='52000',
mounttype='Flying',
model={47976},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for top ranking arena teams at the conclusion of Arena Season 12
|tip This mount is no longer obtainable.
|tip It was retired from service at the conclusion of Arena Season 12.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Prideful Gladiator's Cloud Serpent",{
keywords={"prideful","gladiator's","cloud","serpent","arena"},
mounts={148620},
patch='54000',
mounttype='Flying',
model={51359},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for top ranking arena teams at the conclusion of Arena Season 15
|tip This mount is no longer obtainable.
|tip It was retired from service at the conclusion of Arena Season 15.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Tyrannical Gladiator's Cloud Serpent",{
keywords={"tyrannical","gladiator's","cloud","serpent","arena"},
mounts={148618},
patch='54000',
mounttype='Flying',
model={51361},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for top ranking arena teams at the conclusion of Arena Season 13
|tip This mount is no longer obtainable.
|tip It was retired from service at the conclusion of Arena Season 13.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Violet Pandaren Phoenix",{
keywords={"violet","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132119},
patch='50400',
mounttype='Flying',
model={45522},
description="\nThis mount has been removed from the game.",
},[[
step
This mount was awarded for completing all Mists of Pandaria challenge mode dungeons with silver or better time.
|tip This mount is no longer obtainable.
|tip It was retired from service in patch 6.0.
]])
