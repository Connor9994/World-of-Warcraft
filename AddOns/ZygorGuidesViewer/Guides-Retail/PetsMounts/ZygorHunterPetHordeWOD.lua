local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("HunterPetHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Blue Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54440},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Young Icehoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Young Icehoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 54.6,19.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Brown Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54592},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Witherhide Mother around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Witherhide Mother_. |cast Tame Beast##1515 |goto Gorgrond 53.8,73.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Grey Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52374},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gentle Clefthoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Gentle Clefthoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 51.8,74.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Red Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54593},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Tamed Clefthoof around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Tamed Clefthoof_. |cast Tame Beast##1515 |goto Gorgrond 83.0,69.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\White Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52374},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Wooly Clefthoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Wooly Clefthoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 25.2,44.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Brown Saddled Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Saddled Brown Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53310},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Iron Horde Battlebeast around the area.
|tip They are level 15-40, depending on your level.
|tip Lieutenant O'rok dismounts and attacks when you tame. There's also a chance he'll jump back on again.
Use your Tame Beast ability on _Iron Horde Battlebeast_. |cast Tame Beast##1515 |goto Gorgrond 40.6,40.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Grey Saddled Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Saddled Grey Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53309},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Hunting Mount around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Hunting Mount_. |cast Tame Beast##1515 |goto Frostfire Ridge 59.2,28.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Red Saddled Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Saddled Red Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53309},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Grom'kar Warbeast around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Grom'kar Warbeast_. |cast Tame Beast##1515 |goto Talador 67.8,6.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\White Saddled Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Saddled White Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53309},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Broken Clefthoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Broken Clefthoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 39.2,52.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Brown and Fawn Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown and Fawn Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19581},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Aged Clefthoof around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Aged Clefthoof_. |cast Tame Beast##1515 |goto Nagrand D 30.6,63.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Brown Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19583},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Clefthoof Bull around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Clefthoof Bull_. |cast Tame Beast##1515 |goto Nagrand D 51.8,30.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Dark Brown Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19584},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Clefthoof Calf around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Clefthoof Calf_. |cast Tame Beast##1515 |goto Nagrand D 43.8,63.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Grey Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37744},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Decrepit Clefthoof around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Decrepit Clefthoof_. |cast Tame Beast##1515 |goto Terokkar Forest 48.0,77.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Red Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19797},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Brokentoe around the area.
|tip It is level 35-40, depending on your level.
|tip Brokentoe is the first combatant in the Ring of Blood event.
Use your Tame Beast ability on _Brokentoe_. |cast Tame Beast##1515 |goto Nagrand D 43.6,20.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Red-Brown Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Brown Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37745},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Banthar around the area.
|tip It is level 35-40, depending on your level.
Banthar also patrols through the locations below:
[36.0,59.8]
[39.6,60.4]
[42.0,63.0]
[46.8,68.2]
Use your Tame Beast ability on _Banthar_. |cast Tame Beast##1515 |goto Nagrand D 31.6,62.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Armored Rylaks\\Red Armored Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Armored Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56062},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Tura'aka around the area.
|tip It is level 35-40, depending on your level.
Use your Tame Beast ability on _Tura'aka_. |cast Tame Beast##1515 |goto Nagrand D 65.0,39.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Black Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61213},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Darkwing Adolescent around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Darkwing Adolescent_. |cast Tame Beast##1515 |goto Shadowmoon Valley 60.0,84.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Green Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58290},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Roardan the Sky Terror around the area.
|tip It is level 15-40, depending on your level.
Use your Tame Beast ability on _Roardan the Sky Terror_. |cast Tame Beast##1515 |goto Gorgrond 50.4,68.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Pale Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55603},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Glacial Icemaw around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Glacial Icemaw_. |cast Tame Beast##1515 |goto Frostfire Ridge 46.4,57.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Red Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54957},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Flamewing Skytalon around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Flamewing Skytalon_. |cast Tame Beast##1515 |goto Frostfire Ridge 71.4,29.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Silver Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={60896},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Amaukwa around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Amaukwa_. |cast Tame Beast##1515 |goto Shadowmoon Valley 37.2,36.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Yellow Rylak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53862},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gorge Rylak around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Gorge Rylak_. |cast Tame Beast##1515 |goto Gorgrond 44.6,53.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Wolves\\Shadowy Purple Spirit Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Shadowy Purple Spirit Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55831},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Taming Gara is an involved line that takes you across all of Draenor.
|tip Basic Requirements: Level 30 (level 35 is recommended, Horde and Alliance friendly.
confirm
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Fly to _Socrethar's, Shadowmoon Valley_. |goto Shadowmoon Valley D/0 43.9,77.5<20
talk Gara##85645 |goto Shadowmoon Valley D/0 45.1,65.9
Click _Lean down and scratch the wolf behind its ears_.
confirm
step
kill Mother Om'ra##75071 |goto 43.94,57.65
collect Shadowberry##119449
confirm
step
talk Gara##85645 |goto Shadowmoon Valley D/0 45.1,65.9
Click _Show Gara the Shadowberries_.
confirm
step
Now you must _create a Spirit Effigy_ by collecting the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Hearth to your Garrison |use Garrison Hearthstone##110560 |goto Frostwall/0 42.4,54.4<20
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Fly to _Breaker's Crown, Gorgrond_. |goto Gorgrond/0 45.9,55.0<20
confirm
step
Now you must _collect a Crude Effigy_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Drywind Bonepicker##81207+ |goto Gorgrond/0 43.5,52.6
collect Crude Effigy##119451
confirm
step
talk Grinslicer##81055 |goto Gorgrond 46.0,69.2
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Retribution Point, Talador_. |goto Talador/0 42.2,76.8<20
confirm
step
Now you must _collect a Wooden Bowl_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Gorebound Legionnaire##79127+ |goto Talador/0 37.1,78.8
collect Wooden Bowl##119456
confirm
step
talk Beldos##81068 |goto Talador/0 42.1,76.8
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Talon Watch, Spires of Arak_. |goto Spires of Arak/0 62.0,42.5<20
confirm
step
Now you must _collect an Elder Incense_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Sethekk Prophet##80638+ |goto Spires of Arak/0 68.1,42.8
collect Elder Incense##119455
confirm
step
talk Skytalon Karaz##84504 |goto Spires of Arak/0 61.9,42.6
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _The Ring of Trials, Nagrand_. |goto Nagrand D/0 79.7,49.8<20
confirm
step
Now you must _collect a Small Fruit_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Warsong Marauder##79708+ |goto Nagrand D/0 71.5,35.7
collect Small Fruit##119454
confirm
step
Be sure _not to vendor or delete any items gathered_ until Gara has been tamed!
talk Biggy Warprofits##83924 |goto Nagrand D/0 79.8,49.7
Fly to _Bloodmaul Slag Mines, Frostfire Ridge_. |goto Frostfire Ridge/0 51.5,21.5<20
confirm
step
Now you must _collect a Torn Cloth_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Necrophyte##73320+ |goto Frostfire Ridge/0 27.8,9.1
collect Torn Cloth##119452
confirm
step
Now you must _collect an Ancient Bone_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill 1 Thunderlord Giantslayer##78812 |goto Frostfire Ridge/6 46.1,64.8
collect Ancient Bone##119453
confirm
step
Now you must _combine the ingredients_ to make your Spirty Effigy.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Hearth to your Garrison |use Garrison Hearthstone##110560 |goto Frostwall/0 42.4,54.4<20
use Crude Effigy##119451
collect Spirit Effigy##120120
confirm
step
Now you must _head back to Gara_ and look for a disturbed grave.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Fly to _Socrethar's, Shadowmoon Valley_. |goto Shadowmoon Valley D/0 43.9,77.5<20
confirm
step
use Spirit Effigy##120120 |goto Shadowmoon Valley D/0 45.1,66.1
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
_Watch_ the dialogue.
confirm
step
talk Azara Goldenwing##81285 |goto Shadowmoon Valley D/0 43.9,77.5
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Akeeta's Hovel, Shadowmoon Valley_. |goto Spires of Arak/0 65.7,17.5<20
confirm
step
Now you must _collect a Void Lantern_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Shadowmoon Voidtwister##85073+ |goto Spires of Arak/0 71.8,29.7
collect Void Lantern##119450
confirm
step
talk Duskclaw##88584 |goto Spires of Arak/0 65.7,17.5
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Socrethar's, Shadowmoon Valley_. |goto Shadowmoon Valley D/0 43.9,77.5<20
confirm
step
use Void Lantern##119450
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
|tip The buff lasts for one hour, and should be plenty of time.
click Shadowmoon Voidblade##238854 |goto Shadowmoon Valley D/0 60.2,38.6
confirm
step
_Continue killing_ Elder Void Lords and Elder Voidcallers until you see _Xan, the Lord of Glass_.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Elder Void Lord##88712+, .kill Elder Voidcaller##88711+
kill Xan##88713 |goto Shadowmoon Valley D/0 59.0,38.6
confirm
step
Once Xan is defeated _Gara will become neutral and is now tameable_!
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
|tip Gara will not attack during the taming, and can be earned again if you accidentally abandon him.
Use your Tame Beast ability on _Gara_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Red Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Jormungar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64751},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Kill Ogre enemies around this area
|tip Kill ogres around the Gorian Proving Grounds until you receive a warning to return to your Garison.
collect Ogre Cage Key##120180 |goto Nagrand D/0 58.92,16.18
step
Search for a _Larva Pit Fodder_
|tip They are level 35-40, depending on your level.
Use your _Tame Beast_ ability on a _Larva Pit Fodder_ |cast Tame Beast##1515 |goto Nagrand D/0 59.8,16.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Purple Crested Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45473},
},[[
step
Search for a _Sandhide Watcher_
|tip They are level 30-40, depending on your level.
Use your _Tame Beast_ ability on a _Sandhide Watcher_ |cast Tame Beast##1515 |goto Spires of Arak/0 60.8,88.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Black Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52652},
},[[
step
Search for Bladespire Goresnout around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Bladespire Goresnout_. |cast Tame Beast##1515 |goto Frostfire Ridge 26.2,36.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Brown Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56210},
},[[
step
Search for Young Rocktusk around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Young Rocktusk_. |cast Tame Beast##1515 |goto Gorgrond 45.0,38.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Fel Green Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Green Great Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64854},
},[[
step
Search for _Diresnout Felboar_
|tip They are level 40.
Use your _Tame Beast_ ability on a _Diresnout Felboar_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 45.6,60.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Grey-Brown Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey-Brown Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52738},
},[[
step
Search for Razorback Sow around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Razorback Sow_. |cast Tame Beast##1515 |goto Spires of Arak 48.2,59.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Red Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64725},
},[[
step
Search for _Hulking Diretusk_
|tip They are level 40.
|tip There are other boars in the area with the same look.
Use your _Tame Beast_ ability on a _Hulking Diretusk_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 63.8,41.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Silver Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52706},
},[[
step
Search for Shardtusk Boar around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Shardtusk Boar_. |cast Tame Beast##1515 |goto Frostfire Ridge 60.6,25.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\White Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52698},
},[[
step
Search for Trained Coldsnout around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Trained Coldsnout_. |cast Tame Beast##1515 |goto Frostfire Ridge 39.8,31.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Black and Red Grand Tiger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black & Red Grand Tiger pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59724},
},[[
step
Search for Elder Ridge Prowler around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Elder Ridge Prowler_. |cast Tame Beast##1515 |goto Talador 56.2,49.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\White and Red Grand Tiger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey & Red Grand Tiger pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59721},
},[[
step
Search for Young Ridge Prowler around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Young Ridge Prowler_. |cast Tame Beast##1515 |goto Talador 61.0,56.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Black Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2423},
},[[
step
Use your Tame Beast ability on _Strashaz Hydra_. |cast Tame Beast##1515 |goto Dustwallow Marsh 72.8,18.4
|tip Search for Strashaz Hydra around the area.
|tip It is level 15-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Blue Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10898},
},[[
step
Use your Tame Beast ability on _Mystlash Hydra_. |cast Tame Beast##1515 |goto Ashenvale 7.2,32.6
|tip They are level 7-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Ghost Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghost Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25864},
},[[
step
Spawned during the quest _A Cleansing Song_ by using the _Chime of Cleansing_.
confirm
step
Use your Tame Beast ability on _Spirit of Atha_. |cast Tame Beast##1515 |goto Sholazar Basin 39.2,41.0
|tip They are level 20-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Green Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={15288},
},[[
step
Use your Tame Beast ability on _Lost Offspring of Gahz'ranka_. |cast Tame Beast##1515 |goto Zul'Gurub 51.4,48.6
|tip They are level 32-35, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Grey Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2837},
},[[
step
Use your Tame Beast ability on _Bittertide Hydra_. |cast Tame Beast##1515 |goto Sholazar Basin 42.0,41.4
|tip They are level 20-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Purple Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1397},
},[[
step
Use your Tame Beast ability on _Gesharahan_. |cast Tame Beast##1515 |goto Northern Barrens 40.0,74.6
|tip It is level 5-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Red Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1092},
},[[
step
Use your Tame Beast ability on _Trigore the Lasher_. |cast Tame Beast##1515 |goto Wailing Caverns 61.6,39.6
|tip It is level 10-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\White Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={6737},
},[[
step
Use your Tame Beast ability on _Thessala Hydra_. |cast Tame Beast##1515 |goto Maraudon 29.6,48.8
|tip It is level 10-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Blue Outland Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={18314},
},[[
step
Use your Tame Beast ability on _Mire Hydra_. |cast Tame Beast##1515 |goto Zangarmarsh 75.6,62.6
|tip They are level 10-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Green Outland Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={17528},
},[[
step
Use your Tame Beast ability on _Ghaz'an_. |cast Tame Beast##1515 |goto The Underbog 78.6,28.8
|tip Search for Ghaz'an around the area.
|tip It is level 10-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Grey Outland Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={17653},
},[[
step
Use your Tame Beast ability on _Mragesh_. |cast Tame Beast##1515 |goto Zangarmarsh 42.2,41.6
|tip It is level 10-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Orange Outland Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19678},
},[[
step
Use your Tame Beast ability on _Parched Hydra_. |cast Tame Beast##1515 |goto Zangarmarsh 81.0,40.4
|tip They are level 10-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Purple Outland Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19776},
},[[
step
Use your Tame Beast ability on _Markaru_. |cast Tame Beast##1515 |goto Netherstorm 44.6,28.6
|tip They are level 25-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Blue Thunder Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55413},
},[[
step
Use your Tame Beast ability on _Sulfurscale Hydra_. |cast Tame Beast##1515 |goto Gorgrond 62.8,35.4
|tip They are level 15-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Green Thunder Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55461},
},[[
step
Use your Tame Beast ability on _Varashian Vilefang_. |cast Tame Beast##1515 |goto Spires of Arak 33.6,45.8
|tip They are level 30-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Purple Thunder Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57041},
},[[
step
Use your Tame Beast ability on _Echidnian Hydra_. |cast Tame Beast##1515 |goto Shadowmoon Valley 43.0,47.8
|tip They are level 10-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Red Thunder Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55763},
},[[
step
Use your Tame Beast ability on _Gennadian_. |cast Tame Beast##1515 |goto Talador 67.4,80.6
|tip It is level 20-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Chimaeron",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Chimaeron pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={33308},
},[[
step
Kill _Magmaw_ and _Omnotron Defense System_ to unlock the next area with _Chimaeron_.
Head _down the elevator_ and _take a left_. That�s where _Chimaeron_ is located.
|tip It is level 32-35, depending on your level.
_Dismiss your current pet_ and _DPS him down to 20% health_, but be very careful not to kill him outright with your buffed damage.
Use your Tame Beast ability on _Chimaeron_ once he _enrages at 20% health_. |cast Tame Beast##1515 |goto Blackwing Descent 24.5,70.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Blue Greater Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={60172},
},[[
step
Search for Riplash around the area.
|tip It is level 15-40, depending on your level.
Use your Tame Beast ability on _Riplash_. |cast Tame Beast##1515 |goto Gorgrond 50.6,37.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Dark Green Greater Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Green Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59540},
},[[
step
Search for Jungle Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Wastetalon will have a dark green or green skin.
Use your Tame Beast ability on _Jungle Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 49.0,77.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Green Greater Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61299},
},[[
step
Search for Jungle Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Wastetalon will have a dark green or green skin.
Use your Tame Beast ability on _Jungle Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 49.0,77.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Red Greater Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61300},
},[[
step
Search for Gorgrond Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Gorgrond Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Gorgrond Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 38.0,80.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Yellow Greater Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59579},
},[[
step
Search for Gorgrond Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Gorgrond Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Gorgrond Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 38.0,80.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Black Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55972},
},[[
step
Search for Shadeback Ravager around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Shadeback Ravager_. |cast Tame Beast##1515 |goto Spires of Arak 48.4,42.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Blue Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57771},
},[[
step
Search for Hive Queen Skrikka around the area.
|tip She is level 15-40, depending on your level.
Use your Tame Beast ability on _Hive Queen Skrikka_. |cast Tame Beast##1515 |goto Gorgrond 52.2,70.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Buff Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Buff Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55977},
},[[
step
Search for Bonespike Ravager around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Bonespike Ravager_. |cast Tame Beast##1515 |goto Spires of Arak 43.2,48.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Green Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55975},
},[[
step
Search for Verdant Ravager around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Verdant Ravager_. |cast Tame Beast##1515 |goto Gorgrond 49.8,75.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Icy Blue Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Icy Blue Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61121},
},[[
step
Search for Icespine Stinger around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Icespine Stinger_. |cast Tame Beast##1515 |goto Frostfire Ridge 54.8,69.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Red Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55979},
},[[
step
Search for Desert Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Desert Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Desert Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 45.6,52.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Yellow Winged Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57410},
},[[
step
Search for Desert Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Desert Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Desert Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 45.6,52.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Riverbeasts\\Blue Riverbeast",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57324},
},[[
step
Use your Tame Beast ability on _Twilight Riverbeast_. |cast Tame Beast##1515 |goto Shadowmoon Valley 52.0,59.2
|tip They are level 10-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Riverbeasts\\Dark Brown Riverbeast",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53729},
},[[
step
Use your Tame Beast ability on _Riverwallow Calfling_. |cast Tame Beast##1515 |goto Talador 57.6,74.8
|tip They are level 20-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Riverbeasts\\Green Riverbeast",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52415},
},[[
step
Use your Tame Beast ability on _Wetland Riverbeast_. |cast Tame Beast##1515 |goto Nagrand D 37.2,47.8
|tip They are level 35-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Riverbeasts\\Pale Riverbeast",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52413},
},[[
step
Use your Tame Beast ability on _Riverwallower_. |cast Tame Beast##1515 |goto Talador 58.8,76.2
|tip They are level 20-40, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Riverbeasts\\Red-Brown Riverbeast",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Brown Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59205},
},[[
step
Search for Lazymaw Riverbeast around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Lazymaw Riverbeast_. |cast Tame Beast##1515 |goto Gorgrond 59.2,54.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Black Gazelle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1547},
},[[
step
Search for Rikkilea Strider around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Rikkilea Strider_. |cast Tame Beast##1515 |goto Dread Wastes 34.6,20.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Diseased Gazelle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={14951},
},[[
step
Search for Felrot Courser around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Felrot Courser_. |cast Tame Beast##1515 |goto Felwood 44.4,33.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Striped Tan Gazelle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped Tan Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1547},
},[[
step
Search for Longstrider Gazelle around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Longstrider Gazelle_. |cast Tame Beast##1515 |goto Uldum 58.2,55.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Tan and Black Gazelle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan and Black Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1547},
},[[
step
Search for Fairlands Gazelle around the area.
|tip They are level 30-35, depending on your level.
You can find Fairlands Gazelle at the locations below:
[24.8,52.8]
[22.6,45.6]
[34.6,48.2]
Use your Tame Beast ability on _Fairlands Gazelle_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 29.0,58.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Dark Brown Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Patterned Dark Brown Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45746},
},[[
step
Search for Silverhorn Yearling around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on _Silverhorn Yearling_. |cast Tame Beast##1515 |goto The Jade Forest 41.8,63.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Green-Brown Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Patterned Green-Brown Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45209},
},[[
step
Search for Painted Stag around the area.
|tip They are level 25-35, depending on your level.
Use your Tame Beast ability on _Painted Stag_. |cast Tame Beast##1515 |goto Townlong Steppes 37.8,55.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Grey Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Patterned Grey Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46052},
},[[
step
Search for Ancient Stag around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Ancient Stag_. |cast Tame Beast##1515 |goto Dread Wastes 65.0,22.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Orange Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Patterned Orange Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45749},
},[[
step
Search for Silverhorn Calf around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on _Silverhorn Calf_. |cast Tame Beast##1515 |goto The Jade Forest 40.4,64.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned White Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Patterned White Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46052},
},[[
step
Search for Shrine Elk around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on _Shrine Elk_. |cast Tame Beast##1515 |goto The Jade Forest 53.0,39.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Black Greater Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53741},
},[[
step
Search for Silverpelt Charger around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Silverpelt Charger_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 40.0,35.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Purple Greater Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53764},
},[[
step
Search for Pearlfur Grazer around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Pearlfur Grazer_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 31.0,17.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Red Greater Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58048},
},[[
step
map Nagrand D
path follow loose;loop on;ants straight
path	43.0,57.0	48.0,49.8	62.8,38.6
path	79.6,35.4	82.4,42.2	73.8,57.6
path	65.2,58.6	57.0,71.2	44.8,69.6
|tip They are level 35-40, depending on your level.
|tip The Breezestrider Colt will have a red, silver, or tan coat.
Use your Tame Beast ability on _Breezestrider Colt_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Silver Greater Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53741},
},[[
step
map Nagrand D
path follow loose;loop on;ants straight
path	43.0,57.0	48.0,49.8	62.8,38.6
path	79.6,35.4	82.4,42.2	73.8,57.6
path	65.2,58.6	57.0,71.2	44.8,69.6
|tip They are level 35-40, depending on your level.
|tip The Breezestrider Colt will have a red, silver, or tan coat.
Use your Tame Beast ability on _Breezestrider Colt_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Tan Greater Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53612},
},[[
step
map Nagrand D
path follow loose;loop on;ants straight
path	43.0,57.0	48.0,49.8	62.8,38.6
path	79.6,35.4	82.4,42.2	73.8,57.6
path	65.2,58.6	57.0,71.2	44.8,69.6
|tip They are level 35-40, depending on your level.
|tip The Breezestrider Colt will have a red, silver, or tan coat.
Use your Tame Beast ability on _Breezestrider Colt_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Old World Stags\\Black Old World Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Old World Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1991},
},[[
step
Search for Blighted Elk around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Blighted Elk_. |cast Tame Beast##1515 |goto Dragonblight 28.0,49.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Old World Stags\\Brown Old World Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Old World Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1917},
},[[
step
Search for Tallhorn Stag around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Tallhorn Stag_. |cast Tame Beast##1515 |goto Grizzly Hills 23.4,56.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Old World Stags\\Silver Old World Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Old World Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={16872},
},[[
step
Search for Snowfall Elk around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Snowfall Elk_. |cast Tame Beast##1515 |goto Dragonblight 40.4,47.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Black Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19779},
},[[
step
Search for Talbuk Sire around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on _Talbuk Sire_. |cast Tame Beast##1515 |goto Netherstorm 40.6,39.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Brown Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19220},
},[[
step
Search for Talbuk Thorngrazer around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Talbuk Thorngrazer_. |cast Tame Beast##1515 |goto Nagrand D 51.0,46.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Indigo Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Indigo Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19223},
},[[
step
map Nagrand
path follow strict;loop on;ants straight
path	24.2,43.2	26.4,39.2	29.2,34.4
path	28.0,41.2	26.6,49.6	26.0,53.8
path	24.4,48.8
|tip Search for Bach'lor around the area.
|tip It is level 35-40, depending on your level.
Use your Tame Beast ability on Bach'lor |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Lavender Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Lavender Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19219},
},[[
step
Search for Talbuk Stag around the area,
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Talbuk Stag_. |cast Tame Beast##1515 |goto Nagrand D 62.2,44.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\White Talbuk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37779},
},[[
step
map Netherstorm
path follow strict;loop on;ants straight
path	38.6,37.8	44.0,30.6	47.0,25.2
path	47.2,30.8	46.0,39.8	41.2,38.8
Search for Talbuk Doe around the area.
Use your Tame Beast ability on _Talbuk Doe_. |cast Tame Beast##1515
|tip They are level 25-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Stags\\Reindeer",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Reindeer pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={15903},
},[[
step
Search for Marsh Caribou around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Marsh Caribou_. |cast Tame Beast##1515 |goto Borean Tundra 79.0,36.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Warp Stalkers\\Black Warp Stalker",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Warp Stalker pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61138},
},[[
step
Search for a _Shaded Plainstalker_
|tip They are level 10-40, depending on your level.
Use your _Tame Beast_ ability on a _Shaded Plainstalker_ |cast Tame Beast##1515 |goto Shadowmoon Valley D/0 15.0,53.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Iron Horde Wolves\\Iron Horde Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Iron Horde Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61531},
},[[
step
clicknpc Strongpoint##92996
|tip You will need to defend the flag for this enemy to spawn.
Search for an _Iron Warwolf_
|tip They are level 40.
Use your _Tame Beast_ ability on an _Iron Warwolf_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 12.62,56.92
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Black Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52602},
},[[
step
Search for Shadowmoon Stalker the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Shadowmoon Stalker_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 41.0,29.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Brown Armored Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Armored Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54130},
},[[
step
Search for a _Savage Warwolf_
|tip They are level 35-40, depending on your level.
Use your _Tame Beast_ ability on a _Savage Warwolf_ |cast Tame Beast##1515 |goto Nagrand D/0 66.6,63.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Brown Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56900},
},[[
step
Search for Nagrand Prowler the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Nagrand Prowler_. |cast Tame Beast##1515 |goto Nagrand D 71.8,40.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Fel Green Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Green Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61982},
},[[
step
kill Fel Rangari Anaara##93229
|tip She will be sitting on a mushroom.
collect Vial of Fel Cleansing##124506 |goto Tanaan Jungle/0 54.04,93.00
step
Enter the cave |goto 29.04,71.19 < 20
Follow the path |goto 28.93,72.84 < 15
Follow the path down |goto 28.07,74.14 < 15
Search for a _Felbound Wolf_
|tip They are level 40.
Use the Vial of Fel Cleansing on the Felbound Wolf |use Vial of Fel Cleansing##124506
|tip You will need to do this before attempting to taming the creature!
Use your _Tame Beast_ ability on a _Felbound Wolf_ |cast Tame Beast##1515 |goto 27.22,74.93
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Grey Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52601},
},[[
step
Search for Gloomshade Howler the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Gloomshade Howler_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 39.8,25.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Silver Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53317},
},[[
step
Search for Frost Wolf Alpha the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Frost Wolf Alpha_. |cast Tame Beast##1515 |goto Frostfire Ridge 55.6,64.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saddled Maned Wolves\\Saddled Brown Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Saddled Brown Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56174},
},[[
step
Search for Riding Wolf the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Riding Wolf_. |cast Tame Beast##1515 |goto Nagrand D 42.0,73.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\Grey-Brown Greater Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey-Brown Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52732},
},[[
step
Search for Icecave Bat around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Icecave Bat_. |cast Tame Beast##1515 |goto Frostfire Ridge 41.6,68.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\Red-Black Greater Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Black Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55376},
},[[
step
Search for Echo Hunter around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Echo Hunter_. |cast Tame Beast##1515 |goto Spires of Arak 49.6,38.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\Tan-Brown Greater Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan-Brown Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57297},
},[[
step
Search for a _Direwing Predator_
|tip They are level 40.
|tip They are flying around the area.
Use your _Tame Beast_ ability on a _Direwing Predator_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 43.0,69.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\White Greater Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52595},
},[[
step
Search for Rakkiri around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Rakkiri_. |cast Tame Beast##1515 |goto Frostfire Ridge 72.8,70.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Black Axebeak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58824},
},[[
step
Search for Putrid Axebeak around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Putrid Axebeak_. |cast Tame Beast##1515 |goto Spires of Arak 54.8,40.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Blue Axebeak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58825},
},[[
step
Search for Jungle Axebeak around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Axebeak will be feathered in blue, red, or green.
Use your Tame Beast ability on _Jungle Axebeak_. |cast Tame Beast##1515 |goto Gorgrond 52.2,75.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Green Axebeak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58823},
},[[
step
Search for Jungle Axebeak around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Axebeak will be feathered in blue, red, or green.
Use your Tame Beast ability on _Jungle Axebeak_. |cast Tame Beast##1515 |goto Gorgrond 52.2,75.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Red Axebeak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59101},
},[[
step
Search for Jungle Axebeak around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Axebeak will be feathered in blue, red, or green.
Use your Tame Beast ability on _Jungle Axebeak_. |cast Tame Beast##1515 |goto Gorgrond 52.2,75.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Draenor Kaliri\\Black Draenor Kaliri",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Draenor Kaliri pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58828},
},[[
step
Search for Ebonwing Kaliri around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Ebonwing Kaliri_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 40.2,61.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Draenor Kaliri\\Brown Draenor Kaliri",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Draenor Kaliri pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58832},
},[[
step
Search for Seacliff Kaliri around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Seacliff Kaliri_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 36.4,71.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Draenor Kaliri\\Red Draenor Kaliri",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Draenor Kaliri pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58829},
},[[
step
Search for Darkbeak Kaliri around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Darkbeak Kaliri_. |cast Tame Beast##1515 |goto Spires of Arak 60.4,69.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Blue-Black Teroclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Black Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58718},
},[[
step
Search for Kil'uun around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Kil'uun_. |cast Tame Beast##1515 |goto Talador 69.6,26.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Red-Brown Teroclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Brown Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58175},
},[[
step
Search for Teroclaw around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Teroclaw_. |cast Tame Beast##1515 |goto Talador 54.2,56.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Yellow-Brown Teroclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow-Brown Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58713},
},[[
step
Search for Teroclaw Hen-Mother around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Teroclaw Hen-Mother_. |cast Tame Beast##1515 |goto Talador 39.8,76.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Young Red Teroclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Young Red Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58719},
},[[
step
Search for Hen Chick around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Hen Chick_. |cast Tame Beast##1515 |goto Talador 76.6,50.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Cyan-Blue and White Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Cyan-Blue and White Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59895},
},[[
step
Search for Agitated Duskwing around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Agitated Duskwing_. |cast Tame Beast##1515 |goto Talador 68.2,52.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Indigo and White Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Indigo and White Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59888},
},[[
step
Search for Frenzied Manafeeder around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Frenzied Manafeeder_. |cast Tame Beast##1515 |goto Talador 50.6,54.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Pink Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59894},
},[[
step
Search for Fluttering Teromoth around the area.
|tip They are level 20-40, depending on your level.
Fluttering Teromoth can also be found at the locations below:
[65.0,13.4]
[76.6,52.8]
[54.6,86.8]
Use your Tame Beast ability on _Fluttering Teromoth_. |cast Tame Beast##1515 |goto Talador 65.2,22.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Red and White Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and White Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59748},
},[[
step
Search for Protective Shimmerwing Moth around the area
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Protective Shimmerwing Moth_. |cast Tame Beast##1515 |goto Talador 33.2,63.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\White and Cyan Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White and Cyan Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61635},
},[[
step
Search for Tainted Lightwing around the area
|tip They are level 10-40, depending on your level.
|tip Void aura will be lost upon taming.
Use your Tame Beast ability on _Tainted Lightwing_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 51.2,21.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Greater Sporebats\\Blue Greater Sporebat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Greater Sporebat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51579},
},[[
step
Search for Moonglow Sporebat around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Moonglow Sporebat_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 54.4,21.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Greater Sporebats\\Grey Greater Sporebat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Grey Greater Sporebat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53360},
},[[
step
Search for Zangarra Sporebat around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Zangarra Sporebat_. |cast Tame Beast##1515 |goto Talador 81.6,29.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Greater Sporebats\\Purple Greater Sporebat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Greater Sporebat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51584},
},[[
step
Search for Vile Sporebat around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Vile Sporebat_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 22.6,19.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Blue Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56042},
},[[
step
Search for Weald Stinger around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Weald Stinger_. |cast Tame Beast##1515 |goto Gorgrond 62.2,53.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Buff Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Buff Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58540},
},[[
step
Search for Stingtail Drone around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Stingtail Drone_. |cast Tame Beast##1515 |goto Spires of Arak 59.0,45.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Dark Green Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Green Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57709},
},[[
step
Search for Electrified Stingtail around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Electrified Stingtail_. |cast Tame Beast##1515 |goto Spires of Arak 56.0,40.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Green Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56044},
},[[
step
Search for Scavenger Wasp around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Scavenger Wasp_. |cast Tame Beast##1515 |goto Gorgrond 50.8,79.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Red Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56522},
},[[
step
Search for Crimsonwing Wasp around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Crimsonwing Wasp_. |cast Tame Beast##1515 |goto Spires of Arak 60.6,81.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Yellow Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57884},
},[[
step
Search for Heartsting Pollinator around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Heartsting Pollinator_. |cast Tame Beast##1515 |goto Gorgrond 58.6,68.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Aqua Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Aqua Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59741},
},[[
step
Search for Swamplighter Workeraround the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Swamplighter Worker_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 52.0,58.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Blue Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59732},
},[[
step
Search for Swamplighter Drone the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Swamplighter Worker_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 52.0,58.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Magenta Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Magenta Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59742},
},[[
step
Search for Frenzied Swamplighter the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Frenzied Swamplighter_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 44.0,50.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Orange Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59740},
},[[
step
Search for Swamplighter Queen the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Swamplighter Queen_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 51.6,54.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Tinged Dark Red Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Tinged Dark Red Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
Search for a _Fathomless Mauler_
|tip They are level 40.
Use your _Tame Beast_ ability on a _Fathomless Mauler_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 49.94,91.84
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Deep Red Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Marked Deep Red Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51146},
},[[
step
Search for Monstrous Spineclaw around the area.
|tip They are level 30-35, depending on your level.
Monstrous Spineclaw also spawns at the locations below:
[22.0,47.0]
[21.8,65.0]
[26.0,73.4]
[39.0,85.2]
[67.8,77.0]
[70.8,64.2]
Use your Tame Beast ability on a _Monstrous Spineclaw_. |cast Tame Beast##1515 |goto Timeless Isle 23.0,32.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Greenish-Blue Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Greenish-Blue Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={50962},
},[[
step
Search for Ancient Spineclaw around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on an _Ancient Spineclaw_. |cast Tame Beast##1515 |goto Timeless Isle 23.4,28.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Silver Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58317},
},[[
step
Search for Moonshell Crawler around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on a _Moonshell Crawler_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 31.0,10.8
]])
