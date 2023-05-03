local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("HunterPetA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\Beige Chimaera",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Beige Chimaera pet.",
model={37570},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Mistwing Ravagers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Mistwing Ravage_. |cast Tame Beast##1515 |goto Azshara,67.4,21.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\Brown Chimaera",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Chimaera pet.",
model={28646},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Mistwing Cliffdwellers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Mistwing Cliffdweller_. |cast Tame Beast##1515 |goto Azshara,40.0,79.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\Green Chimaera (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Chimaera pet.",
model={37569},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for The Evalcharr around the area.
|tip It is level 5-30, depending on your level.
The Evalcharr also spawns at [14.0,50.8].
Use your Tame Beast ability on _The Evalcharr_. |cast Tame Beast##1515 |goto Azshara,14.8,58.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\Green Plated Chimaera",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Plated Chimaera pet.",
model={20571},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Vilewing Chimaera around this area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Vilewing Chimaera_. |cast Tame Beast##1515 |goto Shadowmoon Valley,37.0,40.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\Purple Plated Chimaera (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Plated Chimaera pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={17092},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Norissis
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Norissis_ |cast Tame Beast##1515 |goto Winterspring/0 59.6,24.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\White Chimaera",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Chimaera pet.",
model={10808},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Chillwind Chimaeras around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Chillwind Chimaera_. |cast Tame Beast##1515 |goto Winterspring,57.6,23.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\White Plated Chimaera (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Plated Chimaera pet.",
model={37571},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for The Razza around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _The Razza_. |cast Tame Beast##1515 |goto Feralas,84.5,49.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Chimaeras\\Yellow Plated Chimaera",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Plated Chimaera pet.",
model={17094},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Bladewing Bloodletters around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Bladewing Bloodletter_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,50.2,69.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Rhinos\\Blue Rhino",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Rhino pet.",
model={26265},
condition_suggested=function() return level>=75 and level<=79 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Shardhorn Rhinos around the area.
|tip They are level 75 - 76.
Use your Tame Beast ability on a _Shardhorn Rhino_. |cast Tame Beast##1515 |goto Sholazar Basin,39.4,53.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Rhinos\\Brown Rhino",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Rhino pet.",
model={26296},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Wooly Rhino Calf around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Wooly Rhino Calf_. |cast Tame Beast##1515 |goto Borean Tundra,45.0,43.2
Click here to see another location for this pet |next |confirm
step
Search for Wooly Rhino Matriarchs around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Wooly Rhino Matriarch_. |cast Tame Beast##1515 |goto Borean Tundra,45.6,46.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Rhinos\\Gray Rhino",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Rhino pet.",
model={26268},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Wooly Rhino Bulls around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Wooly Rhino Bull_. |cast Tame Beast##1515 |goto Borean Tundra,46.6,44.6
Click here to see another location for this pet |next |confirm
step
Search for Farunn around the area.
|tip It is level 20-30, depending on your level.
Use your Tame Beast ability on a _Farunn_. |cast Tame Beast##1515 |goto Sholazar Basin,48.0,44.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Rhinos\\White Rhino",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Rhino pet.",
model={26286},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ice Steppe Rhinos around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Ice Steppe Rhino_. |cast Tame Beast##1515 |goto The Storm Peaks,46.6,60.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Core Hounds\\Drake Hounds\\Drakeadon (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Drakeadon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={29539},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Burning Steppes/14
path	43.80,76.23	35.68,55.12	42.34,38.08
path	55.70,35.62	64.25,52.46	57.94,74.82
path	46.97,78.65
Search for Chromehound
|tip It is level 15-30, depending on your level.
|tip It patrols around the circular platform.
Use your Tame Beast ability on _Chromehound_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Core Hounds\\Guardian Hounds\\Gray Guardian Hound",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Guardian Hound pet.",
model={17028},
condition_suggested=function() return level>=1 and level<=10 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter the cave |goto Azuremyst Isle/0 45.35,19.15 < 10 |walk
Search for The Kurken around this area.
|tip Inside the cave.
|tip It is level 1-10, depending on your level.
Use your Tame Beast ability on _The Kurken_. |cast Tame Beast##1515 |goto 49.6,13.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Black Devilsaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Devilsaur pet.",
model={5238},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for an Ironhide Devilsaur around this area
He patrols down to [39.0,48.6]
Use your Tame Beast ability on an _Ironhide Devilsaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,34.8,28.0
Click here to see another location for this pet |next |confirm
step
Search for Tyrantus around this area
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Tyrantus_. |cast Tame Beast##1515 |goto Netherstorm,45.4,10.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Green Devilsaur (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Devilsaur pet.",
model={28052},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
map Sholazar Basin
path follow strict;loop off;ants straight
path	25.8,48.8	30.0,40.2	34.0,32.6
path	37.6,28.8
Search for King Krush around the area
|tip He is level 20-30, depending on your level.
Use your Tame Beast ability on _King Krush_. |cast Tame Beast##1515
Click here to see another location for this pet |next |confirm
step
label "location"
map Sholazar Basin
path follow strict;loop off;ants straight
path	52.8,41.6	48.8,44.6	46.4,41.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
map Sholazar Basin
path follow strict;loop off;ants straight
path	66.6,78.4	63.6,83.4	58.8,82.0
path	53.8,84.2	50.8,82.0
Click here to see the previous location for this pet |next "location" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Red Devilsaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Devilsaur pet.",
model={5240},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
He patrols down to [75.4,43.6].
Search for a Tyrant Devilsaur around this area.
Use your Tame Beast ability on a _Tyrant Devilsaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,57.6,72.8
Click here to see another location for this pet |next |confirm
step
Search for the Devilsaur Queen around this area.
|tip She is level 15-30, depending on your level.
She can also be found at [38.0,64.4].
Use your Tame Beast ability on the _Devilsaur Queen_. |cast Tame Beast##1515 |goto Un'Goro Crater,34.2,80.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\White Devilsaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Devilsaur pet.",
model={5239},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
It patrols to [58.0,42.4].
Search for the Devilsaur around this area.
Use your Tame Beast ability on the _Devilsaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,58.0,74.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Shale Spiders\\Green Shale Spider (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Shale Spider pet.",
model={36636},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
If you would like to use a leveling guide to do the prequests click here |confirm
|tip In order to get this pet, you must have unlocked the Therazane Dailies by completing the quest "The Stone Throne", as well as have the quest Underground Economy.
If you would like to skip the prequests click here |confirm |next "noprequest"
step
#include "A_Therazane_PreQuest"
step
label "noprequest"
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
talk Ricket##44968
accept Underground Economy##27048 |goto 61.3,26.2
|tip You need the bombs from this daily quest to reach Jadefang's spawn point.
Note that if the daily isn't available _you won't be able to reach Jadefang_.
step
map Deepholm
path follow strict;loop off;ants straight
path	62.0,27.4	63.0,27.2	63.9,28.0
path	65.2,27.6	65.2,26.3	63.8,24.6
path	64.3,22.3	64.8,19.8	63.6,19.3
path	63.0,20.8
Once you reach the end of the path, use _Ricket's Tickers_. |use Ricket's Tickers##65514
Face the ledge across from you, moving forward only a little in front of the bomb so that it will knock you over there.
Launch yourself over to [62.5,22.0]
confirm
step
Search for Jadefang who is at the end of the tunnel.
|tip It is level 30-35, depending on your level.
Use your Tame Beast ability on _Jadefang__. |cast Tame Beast##1515 |goto 61.3,22.5
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Shale Spiders\\Orange Shale Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Shale Spider pet.",
model={36634},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Deep Spiders around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Deep Spider_. |cast Tame Beast##1515 |goto Deepholm,61.8,26.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Shale Spiders\\Purple Shale Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Shale Spider pet.",
model={35152},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Purple Shale Spiders around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Deep Spider_. |cast Tame Beast##1515 |goto Deepholm,64.8,19.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Shale Spiders\\Red Shale Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Shale Spider pet.",
model={33863},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Crimson Shale Spiders around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Crimson Shale Spider_. |cast Tame Beast##1515 |goto Deepholm,72.6,41.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Ant Silithids\\Brown Ant Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Ant Silithid pet.",
model={11091},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gorishi Workers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Gorishi Worker_. |cast Tame Beast##1515 |goto Un'Goro Crater,51.6,77.4
Click here to see another location for this pet |next |confirm
step
Search Hive'Zora Hive Sisters around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hive'Zora Hive Sister_. |cast Tame Beast##1515 |goto Silithus,30.6,58.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Ant Silithids\\Green Ant Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Ant Silithid pet.",
model={11095},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Hazzali Workers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hazzali Worker_. |cast Tame Beast##1515 |goto Tanaris,54.2,64.8
Click here to see another location for this pet |next |confirm
step
Search for Hive'Ashi Defenders around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hive'Ashi Defender_. |cast Tame Beast##1515 |goto Silithus,51.8,26.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Ant Silithids\\Purple Ant Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Ant Silithid pet.",
model={2592},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Zukk'ash Tunnelers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Zukk'ash Tunneler_. |cast Tame Beast##1515 |goto Feralas,74.2,62.4
Click here to see another location for this pet |next |confirm
step
Search for Centipaar Workers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Centipaar Worker_. |cast Tame Beast##1515 |goto Tanaris,37.2,46.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Ant Silithids\\Tan Ant Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Ant Silithid pet.",
model={30904},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Silithid Swarmer around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Silithid Swarmer_. |cast Tame Beast##1515 |goto Southern Barrens 41.6,6.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Blue Silithid Colossi",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Silithid Colossi pet.",
model={15657},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Tanaris
path follow strict;loop;ants straight
path	55.8,64.6	56.6,68.8	53.0,70.4
path	50.6,72.6	52.6,65.8
Search for Harakiss the Infestor around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Harakiss the Infestor_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Damaged Blue Silithid Colossi (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Damaged Blue Silithid Colossi pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46983},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter the cave |goto Silithus/0 65.72,73.17 < 15
Follow the path |goto 66.59,73.94 < 15 |walk
Follow the path |goto 67.99,72.07 < 15 |walk
Follow the path |goto 67.65,70.74 < 15 |walk
Follow the path |goto 68.18,69.04 < 15 |walk
Search for Manax
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Manax_ |cast Tame Beast##1515 |goto 67.8,66.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Damaged Orange Silithid Colossi (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Damaged Orange Silithid Colossi pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46981},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter the cave |goto Silithus/0 52.81,25.25 < 15
Follow the path |goto 53.91,24.42 < 15 |walk
Search for Qu'rik
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Qu'rik_ |cast Tame Beast##1515 |goto 54.4,26.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Damaged Pink Silithid Colossi (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Damaged Pink Silithid Colossi pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46982},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter the cave |goto Silithus/0 47.90,18.99 < 15
Follow the path |goto 46.59,18.99 < 15 |walk
Follow the path |goto 45.70,17.28 < 15 |walk
Follow the path |goto 44.30,16.38 < 15 |walk
Search for Qem
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Qem_ |cast Tame Beast##1515 |goto 44.0,17.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Damaged Purple Silithid Colossi",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Damaged Purple Silithid Colossi pet.",
model={35578},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for the Hive Controller around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on the _Hive Controller_. |cast Tame Beast##1515 |goto Thousand Needles,64.0,86.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Orange Silithid Colossi (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Orange Silithid Colossi pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={15656},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter the cave |goto Silithus/0 64.19,83.53 < 15
Follow the path |goto 64.21,84.94 < 15 |walk
Follow the path |goto 63.39,85.73 < 15 |walk
Follow the path |goto 62.56,87.37 < 15 |walk
Follow the path |goto 63.61,88.62 < 15 |walk
Search for Bornix the Burrower
|tip It is level 15-30, depending on your level.
|tip If Bornix wasn't available, you can also find the same model in the Temple of Ahn'Qiraj.
Use your Tame Beast ability on _Bornix the Burrower_ |cast Tame Beast##1515 |goto 62.6,89.4
Click here to continue |confirm
step
You can also tame Lord Kri in the Temple of Ahn'Qiraj
|tip Lord Kri will be a boss level elite.
Click here to load the Temple of Ahn'Qiraj raid guide for assistance |confirm |next "Dungeon Guides\\Classic Raids\\Temple of Ahn'Qiraj"
Use your Tame Beast ability on _Lord Kri_ |cast Tame Beast##1515 |goto Ahn'Qiraj/2 28.4,49.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Pink Silithid Colossi",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink Silithid Colossi pet.",
model={37549},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ainamiss the Hive Queen around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Ainamiss the Hive Queen_. |cast Tame Beast##1515 |goto Tanaris,34.2,46.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Purple Silithid Colossi",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Silithid Colossi pet.",
model={31045},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gorishi Fledgling Colossus around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Gorishi Fledgling Colossus_. |cast Tame Beast##1515 |goto Un'Goro Crater,47.6,86.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Green Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Silithid pet.",
model={481},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Silithid Ravagers around this area.
|tip They are level 15-30, depending on your level.
|tip They will be underwater.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Thousand Needles,70.6,88.6
Click here to see another location for this pet |next |confirm
step
Search for Hazzali Sandreavers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hazzali Sandreaver_. |cast Tame Beast##1515 |goto Tanaris,55.8,67.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Purple Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Silithid pet.",
model={91},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Silithid Ravagers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Thousand Needles,67.0,83.6
Click here to see another location for this pet |next |confirm
step
Search for Centipaar Sandreavers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Centipaar Sandreaver_. |cast Tame Beast##1515 |goto Tanaris,36.8,41.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Tan Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Silithid pet.",
model={35577},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Silithid Ravagers underwater.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Thousand Needles,69.6,84.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Yellow Silithid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Silithid pet.",
model={11087},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Gorishi Reavers underwater.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Gorishi Reaver_. |cast Tame Beast##1515 |goto Un'Goro Crater,46.8,82.6
Click here to see another location for this pet |next |confirm
step
Search for Hive'Zora Reavers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hive'Zora Reaver_. |cast Tame Beast##1515 |goto Silithus,33.0,53.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spectral Gryphons\\Spectral Gryphon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spectral Gryphon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76408},
},[[
step
Reach level 45 |ding 45
|tip Do note, that you can be level 10 and tame this pet. Just have a level 45 Hunter summon it for you.
|tip Skip this step if you have a level 45 Hunter assisting you.
|confirm
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
click Spectral Feather##269775
|tip It may not be present.
|tip The feather has a very long spawn timer.
Use your Tame Beast ability on a _Lost Spectral Gryphon_ |cast Tame Beast##1515 |goto Stormwind City/0 71.8,73.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Bears\\Spirit Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spirit Bear pet.",
model={31094},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Arcturis around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Arcturis_. |cast Tame Beast##1515 |goto Grizzly Hills,31.2,55.4
Note that this pet requires you to have the _Beast Mastery_ talent
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Birds\\Spectral Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spectral Owl pet.",
model={38634},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ban'thalos high up in the sky.
There will be a tree near _Cenarius_ that you will need to get on top of.
You will need to set an _Ice Trap_ on top of the tree.
_Fly directly upwards_ and use _Concussion Shot_ on _Ban'thalos_
Use _Deterrence_ to avoid getting hit by him while taming.
Use your Tame Beast ability on _Ban'thalos_. |cast Tame Beast##1515 |goto Mount Hyjal,27.3,64.3
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Cats\\Blue Spectral Saber Tiger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Spectral Saber Tiger pet.",
model={38749},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Your character must not be wearing any weapons or armor in order to obtain this pet.
confirm
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	27.8,50.4	30.4,51.4	34.2,53.0
path	36.6,54.6	39.4,55.6	41.4,54.4
Search for Magria around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Magria_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Cats\\Green Spectral Saber Tiger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Spectral Saber Tiger pet.",
model={38748},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Your character must not be wearing any weapons or armor in order to obtain this pet.
confirm
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	27.8,50.4	30.4,51.4	34.2,53.0
path	36.6,54.6	39.4,55.6	41.4,54.4
Search for Ankha around the area.
|tip It is level 30-35, depending on your level.
Use your Tame Beast ability on _Ankha_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Cats\\Spectral Saber Tiger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spectral Saber Tiger pet.",
model={28871},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Zul'Drak
path follow strict;loop;ants straight
path	61.6,62.6	63.2,42.4	69.6,48.6
path	74.4,46.6	77.8,69.4	68.0,77.4
Search for Gondria at the points shown.
|tip It is level 20-30, depending on your level.
Use your Tame Beast ability on _Gondria_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Cats\\Spirit Leopard",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spirit Leopard pet.",
model={28010},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Sholazar Basin
path follow strict;loop;ants straight
path	58.6,22.2	36.6,31.0	20.4,44.2
path	21.8,70.4	31.0,66.6	51.0,81.6
path	66.6,78.8	71.6,72.0
Search for Loque'nahak at each point on your map.
|tip It is level 20-30, depending on your level.
Use your Tame Beast ability on a _Loque'nahak_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Crabs\\Spectral Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spectral Spiked Crab pet.",
model={37396},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Abyssal Depths
path follow strict;loop off;ants straight
path	27.6,76.6	32.6,72.4	31.8,75.8
path	31.6,80.6	29.4,82.2	25.6,82.6
path	23.2,75.8	24.6,71.2	23.6,62.6
path	20.4,69.8	18.6,76.8	18.0,81.6
path	20.4,84.4	15.0,87.4	13.4,81.2
path	17.0,72.2	18.6,65.6	18.6,53.0
path	20.6,48.4	23.2,47.8
Search for Ghostcrawler around the area.
|tip It is level 30-35, depending on your level.
Use your Tame Beast ability on _Ghostcrawler_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Foxes\\Lightning Spirit Fox (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Lightning Spirit Fox pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={74736},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Duskwood/0
path loop off
path	23.6,76.6	16.6,60.6	16.8,55.0
path	24.4,39.4	30.2,41.6
Search for Lightning Paw
|tip You will need to be using the Beast Mastery specialization.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Lightning Paw_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Wolves\\Spectral Spirit Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spectral Spirit Wolf pet.",
model={36726},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Twilight Highlands
path follow strict;loop;ants straight
path	59.6,42.4	54.2,53.8	49.6,74.8
path	54.4,75.0	58.6,63.6	65.8,60.8
Search for Karoma at the points on the map.
|tip It is level 30-35, depending on your level.
Use your Tame Beast ability on _Karoma_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Wolves\\Stormy Dark Blue Spirit Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Stormy Dark Blue Spirit Wolf pet.",
model={29673},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Skoll around the area.
|tip It is level 20-25, depending on your level.
You can also find Skoll at the points below:
[30.2,64.6]
[27.8,50.8]
Use your Tame Beast ability on a _Skoll_. |cast Tame Beast##1515 |goto The Storm Peaks,46.2,65.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Black Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Jormungar pet.",
model={37554},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Rattlebore around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Rattlebore_. |cast Tame Beast##1515 |goto Dragonblight,50.6,17.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Blue Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Jormungar pet.",
model={37550},
condition_suggested=function() return level>=20 and level<=25 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ravenous Jormungar around the area.
|tip They are level 20-25, depending on your level.
Use your Tame Beast ability on _Ravenous Jormungar_. |cast Tame Beast##1515 |goto The Storm Peaks 55.6,61.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Ghost Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghost Jormungar pet.",
model={27014},
condition_suggested=function() return level>=20 and level<=25 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ravenous Jormungars around the area. When they are near death, use _Arngrim's Tooth_. |use Arngrim's Tooth##42774
|tip You will need to be Revered with the Sons of Hodir and have the Feeding Arngrim daily quest in order to tame this.
Use your Tame Beast ability on a _Disembodied Jormungar_. |cast Tame Beast##1515 |goto The Storm Peaks,55.8,63.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Green Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Jormungar pet.",
model={37553},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ice Heart Jormungar Feeders around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ice Heart Jormungar Feeder_. |cast Tame Beast##1515 |goto Dragonblight,60.0,15.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Purple Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Jormungar pet.",
model={24564},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Tundra Crawlers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Tundra Crawler_. |cast Tame Beast##1515 |goto Borean Tundra,79.8,24.8
Click here to see another location for this pet |next |confirm
step
Search for Roaming Jormungar around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Roaming Jormungar_. |cast Tame Beast##1515 |goto The Storm Peaks,58.8,62.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\White Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Jormungar pet.",
model={37551},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ice Heart Jormungar Spawn around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ice Heart Jormungar Spawn_. |cast Tame Beast##1515 |goto Dragonblight,29.0,86.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Blue Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Worm pet.",
model={12333},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Deep Borers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deep Borer_. |cast Tame Beast##1515 |goto Maraudon,45.2,88.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Brown Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Worm pet.",
model={11010},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Young Crust Bursters around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Young Crust Burster_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,49.2,44.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Ghostly White Worm (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly White Worm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46534},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Spirocula
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Spirocula_ |cast Tame Beast##1515 |goto Eastern Plaguelands/0 74.2,58.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Green Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Worm pet.",
model={12335},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Rock Borers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Rock Borer_. |cast Tame Beast##151 |goto Maraudon,39.6,57.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Gray Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Worm pet.",
model={14524},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
label "start"
Search for Dredge Crushers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Dredge Crusher_. |cast Tame Beast##1515 |goto Silithus,48.6,49.6
Click here to see another location for this pet |next |confirm
step
Search for Dredge Strikers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Dredge Striker_. |cast Tame Beast##1515 |goto Silithus,47.0,34.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Pink Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink Worm pet.",
model={37540},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Coldlurk Burrowers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Coldlurk Burrower_. |cast Tame Beast##1515 |goto Winterspring,48.4,40.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\White Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Worm pet.",
model={34636},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Kill Undead in the area.
|tip They Spawn Flesh Eating Worms upon death.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Flesh Eating Worm_. |cast Tame Beast##1515 |goto Duskwood,18.2,34.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Yellow Worm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Worm pet.",
model={12336},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Oozeworm around the area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Oozeworm_. |cast Tame Beast##1515 |goto Dustwallow Marsh,37.2,62.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgundy and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Burgundy and Jade Crested Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46056},
},[[
step
Search for a Crystal Spine Basilisk
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Crystal Spine Basilisk_ |cast Tame Beast##1515 |goto Northern Stranglethorn/0 62.8,20.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red Basilisk with Jade Fringes",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Basilisk with Jade Fringes pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2743},
},[[
step
Search for a Redstone Basilisk
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Redstone Basilisk_ |cast Tame Beast##1515 |goto Blasted Lands/0 54.2,26.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Blue-Spotted Teal Scarab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Spotted Teal Scarab pet.",
model={34911},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sapphire Scarab around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Sapphire Scarab_. |cast Tame Beast##1515 |goto Uldum,65.6,28.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Turquoise-Spotted Green Scarab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Turquoise-Spotted Green Scarab pet.",
model={34913},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Turquoise Scarabs around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Turquoise Scarab_. |cast Tame Beast##1515 |goto Uldum,63.2,31.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Magenta-Spotted Indigo-Teal Scarab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Magenta-Spotted Indigo-Teal Scarab pet.",
model={34908},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Amethyst Scarabs around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Amethyst Scarab_. |cast Tame Beast##1515 |goto Uldum,64.2,27.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Red-Spotted Green Scarab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Spotted Green Scarab pet.",
model={34912},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Emerald Scarab around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Emerald Scarab_. |cast Tame Beast##1515 |goto Uldum,65.6,32.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Turquoise-Spotted Plum Scarab (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Turquoise-Spotted Plum Scarab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={34898},
},[[
step
Enter the cave |goto Hillsbrad Foothills/0 46.41,54.21 < 15
Search for Weevil
|tip It is level 7-30, depending on your level.
Use your Tame Beast ability on _Weevil_ |cast Tame Beast##1515 |goto 45.6,53.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Yellow-Spotted Brown Scarab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow-Spotted Brown Scarab pet.",
model={37580},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Temple Scarabs around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Temple Scarab_. |cast Tame Beast##1515 |goto Uldum,65.2,32.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Blue Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Beetle pet.",
model={11093},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Hazzali Swarmers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hazzali Swarmer_. |cast Tame Beast##1515 |goto Tanaris,55.4,66.6
Click here to see another location for this pet |next |confirm
step
Search for Hive'Ashi Workers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Hive'Ashi Worker_. |cast Tame Beast##1515 |goto Silithus,54.4,25.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Copper Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Copper Beetle pet.",
model={11144},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Silithid Defender around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Silithid Defender_. |cast Tame Beast##1515 |goto Thousand Needles,65.4,86.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Gold Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gold Beetle pet.",
model={11089},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Gorishi Tunnelers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Gorishi Tunneler_. |cast Tame Beast##1515 |goto Un'Goro Crater,49.6,82.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Gray Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Beetle pet.",
model={7470},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Scarabs on the ground.
|tip They are level 15-30, depending on your level.
You will be able to find more around [55.0,25.0].
Use your Tame Beast ability on a _Scarab_. |cast Tame Beast##1515 |goto Zul'Farrak,57.6,58.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Green Beetle (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Beetle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37581},
},[[
step
Search for a Silithid Harvester
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Silithid Harvester_ |cast Tame Beast##1515 |goto Southern Barrens/0 41.2,67.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Orange Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a, Orange Beetle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={11143},
},[[
step
Search for a Sand-Husk Scarab
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Sand-Husk Scarab_ |cast Tame Beast##1515 |goto Uldum/0 63.4,22.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Purple Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Beetle pet.",
model={11108},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Centipaar Tunneler around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Centipaar Tunneler_. |cast Tame Beast##1515 |goto Tanaris,33.0,45.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Red Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Beetle pet.",
model={10031},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Crypt Horrors and Nerubian Sycophants around the area.
|tip As you fight them they spawn Carrion Scarabs.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Carrion Scarab_. |cast Tame Beast##1515 |goto Eastern Plaguelands,8.4,29.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\White Beetle (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Beetle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46226},
},[[
step
Enter the cave |goto Arathi Highlands/0 48.20,79.87 < 15
Search for Phalanax
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Phalanax_ |cast Tame Beast##1515 |goto 47.8,82.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Felboars\\Black and Green Felboar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black and Green Felboar pet.",
model={19249},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Felboar around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Felboar_. |cast Tame Beast##1515 |goto Shadowmoon Valley,34.0,44.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Felboars\\Blue and White Felboar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and White Felboar pet.",
model={20831},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Shard-Hide Boar around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Shard-Hide Boar_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,30.6,71.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Felboars\\Gray and Orange Felboar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray and Orange Felboar pet.",
model={18701},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Deranged Helboars around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deranged Helboar_. |cast Tame Beast##1515 |goto Hellfire Peninsula,48.8,63.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Felboars\\Red and Black Felboar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Black Felboar pet.",
model={11410},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Starving Helboar around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Starving Helboar_. |cast Tame Beast##1515 |goto Hellfire Peninsula,62.8,42.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Felboars\\Yellow and Black Felboar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow and Black Felboar pet.",
model={24741},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Domesticated Felboars around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Domesticated Felboar_. |cast Tame Beast##1515 |goto Shadowmoon Valley,53.4,17.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Armored Black Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Armored Black Boar pet.",
model={4714},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Rotting Agam'ar around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Rotting Agam'ar_. |cast Tame Beast##1515 |goto Razorfen Kraul,58.2,59.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Armored Brown Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Armored Brown Boar pet.",
model={26685},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Agam'ar around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Agam'ar_. |cast Tame Beast##1515 |goto Razorfen Kraul,58.2,59.0
Click here to see another location for this pet |next |confirm
step
Search for Armored Battleboar around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Armored Battleboar_. |cast Tame Beast##1515 |goto Mulgore,45.6,88.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Armored Ghostly Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Armored Ghostly Boar pet.",
model={4716},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Boar Spirits around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Boar Spirit_. |cast Tame Beast##1515 |goto Razorfen Kraul,82.6,52
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Armored Gray Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Armored Gray Boar pet.",
model={2453},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Raging Agam'ar around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Raging Agam'ar_. |cast Tame Beast##1515 |goto Razorfen Kraul,56.6,58.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Black Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Boar pet.",
model={607},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Crag Boars around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Crag Boar_. |cast Tame Beast##1515 |goto Dun Morogh,54.6,42.0
Click here to see another location for this pet |next |confirm
step
Search for Dire Mottled Boar around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Dire Mottled Boar_. |cast Tame Beast##1515 |goto Durotar,54.8,33.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Brown Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Boar pet.",
model={703},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Mudbelly Boar around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Mudbelly Boar_. |cast Tame Beast##1515 |goto Loch Modan,55.6,37.8
Click here to see another location for this pet |next |confirm
step
Search for Bellygrub around the area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on _Bellygrub_. |cast Tame Beast##1515 |goto Redridge Mountains,17.4,45.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Diseased Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Boar pet.",
model={6121},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Plagued Swine around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Plagued Swine_. |cast Tame Beast##1515 |goto Eastern Plaguelands,14.8,28.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Ghostly Diseased Boar (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Diseased Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46532},
},[[
step
Search for Varah
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Varah_ |cast Tame Beast##1515 |goto Eastern Plaguelands/0 11.6,28.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Gray Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Boar pet.",
model={503},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Stonetusk Boar around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Stonetusk Boar_. |cast Tame Beast##1515 |goto Elwynn Forest,42.8,86.6
Click here to see another location for this pet |next |confirm
step
Search for Elder Mottled Boar around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Elder Mottled Boar_. |cast Tame Beast##1515 |goto Durotar,43.8,15.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Red Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Boar pet.",
model={30964},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Docile Island Boars around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Docile Island Boar_. |cast Tame Beast##1515 |goto Durotar,65.4,80.2
Click here to see another location for this pet |next |confirm
step
Search for Thistle Boars around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Thistle Boar_. |cast Tame Beast##1515 |goto Teldrassil,59.0,34.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Boars\\Yellow Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Boar pet.",
model={8869},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Young Thistle Boar around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Young Thistle Boar_. |cast Tame Beast##1515 |goto Teldrassil,59.8,40.0
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Young Goretusk around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Young Goretusk_. |cast Tame Beast##1515 |goto Westfall,53.8,25.0
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Young Battleboar around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Young Battleboar_. |cast Tame Beast##1515 |goto Mulgore,53.4,82.0
Click here to see the previous location for this pet |next "location2" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Lions\\Black Lion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Lion pet.",
model={26618},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Pitch here.
|tip It is level 20-30, depending on your level.
Use your Tame Beast ability on _Pitch_. |cast Tame Beast##1515 |goto Sholazar Basin,50.6,76.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Lions\\Gold Lions",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gold Lions pet.",
model={1973},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Savannah Highmanes around this area.
|tip They are level 5-30, depending on your level.
Search grassy patches nearby if you are having trouble finding them.
Use your Tame Beast ability on a _Savannah Highmane_. |cast Tame Beast##1515 |goto Northern Barrens,44.2,58.0
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Savannah Prowlers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Savannah Prowler_. |cast Tame Beast##1515 |goto Northern Barrens,54.8,31.8
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Plains Pridemane around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Plains Pridemane_. |cast Tame Beast##1515 |goto Southern Barrens,46.8,47.6
Click here to see the previous location for this pet |next "location2" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Lions\\Maned Lion (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Maned Lion pet.",
model={37169},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sambas around the area.
|tip It is level 30-35, depending on your level.
You can also find Sambas at the spots below:
[49.6,23.0]
[45.8,29.4]
[42.6,38.6]
[38.2,53.2]
Use your Tame Beast ability on _Sambas_. |cast Tame Beast##1515 |goto Twilight Highlands,68.8,25.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Lions\\White Lion (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Lion pet.",
model={10114},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sian-Rotam around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Sian-Rotam_. |cast Tame Beast##1515 |goto Winterspring,45.8,17.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Lynxes\\Brown Lynx",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Lynx pet.",
model={30963},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Elder Springpaw around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on an _Elder Springpaw_. |cast Tame Beast##1515 |goto Eversong Woods,65.6,59.4
Click here to see another location for this pet |next |confirm
step
Search for Bobcats around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Bobcat_. |cast Tame Beast##1515 |goto Loch Modan,69.8,73.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Lynxes\\Red Lynx",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Lynx pet.",
model={15507},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Springpaw Stalkers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Springpaw Stalker_. |cast Tame Beast##1515 |goto Eversong Woods,44.0,65.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Black Mystic Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Mystic Cat pet.",
model={29042},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Pride of Bethekk in this area.
|tip They are level 32-35, depending on your level.
|tip Keep in mind that you should frost trap this before attempting to tame.
Use your Tame Beast ability on a _Pride of Bethekk_. |cast Tame Beast##1515 |goto Zul'Gurub,47.8,21.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Brown and Tan Mystic Cat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown and Tan Mystic Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46251},
},[[
step
Search for Tabbs
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Tabbs_ |cast Tame Beast##1515 |goto Badlands/0 58.4,60.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Golden-Tan Mystic Cat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Golden-Tan Mystic Cat pet.",
model={37615},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Pogeyan around the area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Pogeyan_. |cast Tame Beast##1515 |goto Northern Stranglethorn,36.8,28.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Obsidian Mystic Cat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Obsidian Mystic Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19607},
},[[
step
To get this pet, you will need to unlock the Molten Front daily area
|tip Refer to the Molten Front guide to achieve this.
Click here to load "The Molten Front" guide |confirm |next "Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive"
Unlock the Molten Front |complete completedq(25372)
step
Follow the path	|goto Molten Front/0 42.12,79.80 < 20
Follow the path	|goto 37.05,72.17 < 20
Follow the path	|goto 37.63,62.62 < 20
Follow the path	|goto 35.33,54.68 < 20
|tip You will need to jump between the platforms to reach this pet.
|tip Be on the look out for cracked platforms, as they will disappear soon after the cracks show up.
Search for Skarr
|tip It is level 30-35, depending on your level.
Use your Tame Beast ability on _Skarr_ |cast Tame Beast##1515 |goto 33.6,52.6
Skarr can also spawn at this spot |goto 37.4,35.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Orange-Striped Green Mystic Cat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange-Striped Green Mystic Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46575},
},[[
step
Search for Kash
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Kash_ |cast Tame Beast##1515 |goto Swamp of Sorrows/0 80.6,28.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Spotted Black Mystic Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted Black Mystic Cat pet.",
model={25708},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Cursed Offspring of Har'koa around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Cursed Offspring of Har'koa_. |cast Tame Beast##1515 |goto Zul'Drak,65.2,68.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Spotted White Mystic Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted White Mystic Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={39067},
},[[
step
The Time-Twisted Nightsaber only appears during the _Echo of Tyrande encounter_ in the _End Time_ dungeon
Click here to load the "End Time" dungeon guide |confirm |next "Dungeon Guides\\Cataclysm Dungeons\\End Time"
Click here to continue |confirm
step
Search for a Time-Twisted Nightsaber
|tip These only appear in the Emerald Dragonshrine during the Echo of Tyrande encounter.
|tip They are level 35.
|tip These share a spawn with the Spotted cats as well.
Use your Tame Beast ability on a _Time-Twisted Nightsaber_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Striped Orange Mystic Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped Orange Mystic Cat pet.",
model={34248},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Tamed Tol'vir Prowlers in the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Tamed Tol'vir Prowler_. |cast Tame Beast##1515 |goto Lost City of the Tol'vir,33.6,22.8
Click here to see another location for this pet |next |confirm
step
Search for Tigers around this area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Tiger_. |cast Tame Beast##1515 |goto Uldum,51.2,78.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Striped White Mystic Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped White Mystic Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={39065},
},[[
step
The Time-Twisted Nightsaber only appears during the _Echo of Tyrande encounter_ in the _End Time_ dungeon
Click here to load the End Time dungeon guide |confirm |next "Dungeon Guides\\Cataclysm Dungeons\\End Time"
Click here to continue |confirm
step
Search for a Time-Twisted Nightsaber
|tip These only appear in the Emerald Dragonshrine during the Echo of Tyrande encounter.
|tip They are level 35.
|tip These share a spawn with the Spotted cats as well.
Use your Tame Beast ability on a _Time-Twisted Nightsaber_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\White-Striped Black Mystic Cat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White-Striped Black Mystic Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={38913},
},[[
step
Search for Duskcoat
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on a _Duskcoat_ |cast Tame Beast##1515 |goto Felwood/0 39.8,31.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Aqua Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Aqua Saber Cat pet.",
model={10054},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Shy-Rotam around this area.
|tip She is level 15-30, depending on your level.
Use your Tame Beast ability on _Shy-Rotam_. |cast Tame Beast##1515 |goto Winterspring,46.2,17.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Black Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Saber Cat pet.",
model={35503},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Duskfang around this area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Duskfang_. |cast Tame Beast##1515 |goto Swamp of Sorrows,10.8,33.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Black Striped Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Striped Saber Cat pet.",
model={37555},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Shadowclaw around the area.
|tip It is level 5-30, depending on your level.
Use your Tame Beast ability on _Shadowclaw_. |cast Tame Beast##1515 |goto Darkshore,41.6,36.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Icy Blue Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Icy Blue Saber Cat pet.",
model={38005},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Frostsaber Stalkers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Frostsaber Stalker_. |cast Tame Beast##1515 |goto Winterspring,53.0,23.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Lavendar Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Lavendar Saber Cat pet.",
model={9954},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Frostsaber Pride Watchers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ffrostsaber Pride Watcher_. |cast Tame Beast##1515 |goto Winterspring,46.0,19.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Spotted Orange Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted Orange Saber Cat pet.",
model={25005},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Dreadsabers around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Dreadsaber_. |cast Tame Beast##1515 |goto Sholazar Basin,26.2,67.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Spotted White Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted White Saber Cat pet.",
model={37558},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Duskstalker around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on _Duskstalker_. |cast Tame Beast##1515 |goto Teldrassil,52.4,67.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Striped Orange Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Stripped Orange Saber Cat pet.",
model={37546},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Shango here.
|tip It is level 20-30, depending on your level.
Use your Tame Beast ability on _Shango_. |cast Tame Beast##1515 |goto Sholazar Basin,34.0,34.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\Striped White Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Stripped White Saber Cat pet.",
model={37545},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Frostsabers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Frostsaber_. |cast Tame Beast##1515 |goto Winterspring,52.8,21.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Saber Cats\\White Saber Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Saber Cat pet.",
model={38004},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Frostsaber Huntresses around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Frostsaber Huntress_. |cast Tame Beast##1515 |goto Winterspring,49.8,24.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Black Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2437},
},[[
step
Search for a Young Panther
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Young Panther_ |cast Tame Beast##1515 |goto Northern Stranglethorn/0 54.6,22.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Black-Striped Black Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black-Striped Black Cat pet.",
model={11454},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Moonstalker Matriarchs around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Moonstalker Matriarch_. |cast Tame Beast##1515 |goto Darkshore,43.0,63.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Brown and Tan Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown and Tan Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1978},
},[[
step
Search for a Plains Prowler
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Plains Prowler_ |cast Tame Beast##1515 |goto Southern Barrens/0 50.6,54.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Ghostly White Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly White Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={4472},
},[[
step
kill Ghost Saber##3619
|tip They are level 5-30, depending on your level.
collect Glowing Cat Figurine##5332 |n
Use the Glowing Cat Figurine |use Glowing Cat Figurine##5332
|tip This will cause a Ghost Saber to spawn that can be tamed.
Use your Tame Beast ability on a _Ghost Saber_ |cast Tame Beast##1515 |goto Darkshore/0 63.2,17.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Golden-Tan Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Golden-Tan Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1056},
},[[
step
Search for a Savannah Huntress
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Savannah Huntress_ |cast Tame Beast##1515 |goto Northern Barrens/0 48.44,51.18
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Icy Blue Cat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Icy Blue Cat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={9951},
},[[
step
Search for Iceclaw
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on a _Iceclaw_ |cast Tame Beast##1515 |goto Winterspring/0 52.0,18.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Orange-Striped Green Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange-Striped Green Cat pet.",
model={35951},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Winna's Kitten here.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on a _Winna's Kitten_. |cast Tame Beast##1515 |goto Felwood,38.6,53.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Spotted Black Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted Black Cat pet.",
model={11448},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Twilight Runners around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Twilight Runner_. |cast Tame Beast##1515 |goto Stonetalon Mountains,39.0,21.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Spotted Orange Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted Orange Cat pet.",
model={1043},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Ridge Stalkers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ridge Stalker_. |cast Tame Beast##1515 |goto Badlands,70.6,29.6
Click here to see another location for this pet |next |confirm
step
label "location"
Search for Ridge Huntresses around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ridge Huntress_. |cast Tame Beast##1515 |goto Badlands,54.6,46.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Ridge Stalker Patriarchs around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ridge Stalker Patriarch_. |cast Tame Beast##1515 |goto Badlands,19.2,55.4
Click here to see the previous location for this pet |next "location" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Spotted White Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spotted White Cat pet.",
model={32764},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Snow Leopards around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Snow Leopard_. |cast Tame Beast##1515 |goto Dun Morogh,78.4,50.8
Click here to see another location for this pet |next |confirm
step
Search for Frost Leopards around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Frost Leopard_. |cast Tame Beast##1515 |goto Zul'Drak 61.8,61.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Striped Orange Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped Orange Cat pet.",
model={320},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Kurzen War Tigers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Kurzen War Tiger_. |cast Tame Beast##1515 |goto Northern Stranglethorn,59.6,21.0
Click here to see another location for this pet |next |confirm
step
Search for Stranglethorn Tigress around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Stranglethorn Tigress_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,41.8,28.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Striped White Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped White Cat pet.",
model={616},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
King Bangalash patrols around on top of this plataue.
|tip He is level 10-30, depending on your level.
Use your Tame Beast ability on _King Bangalash_. |cast Tame Beast##1515 |goto Northern Stranglethorn,47.8,59.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\White Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Cat pet.",
model={9958},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Young Frostsabers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Young Frostsaber_. |cast Tame Beast##1515 |goto Winterspring,46.6,16.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\White-Striped Black Cat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White-Striped Black Cat pet.",
model={321},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Moonstalkers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Moonstalker_. |cast Tame Beast##1515 |goto Darkshore,41.8,37.0
Click here to see another location for this pet |next |confirm
step
Search for Blackwind Sabercats around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Blackwind Sabercat_. |cast Tame Beast##1515 |goto Terokkar Forest,73.4,71.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\Blue Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Demon Dog pet.",
model={9021},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ravenous Darkhounds around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Ravenous Darkhound_. |cast Tame Beast##1515 |goto Tirisfal Glades,83.8,44.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\Ghostly Gray Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Gray Demon Dog pet.",
model={16052},
condition_suggested=function() return level>=27 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
You will need to venture into the old Karazhan raid in order to get this pet
Click here to load the Karazhan raid guide |confirm |next "Dungeon Guides\\Outland Raids\\Karazhan"
|tip Go to the Servant's Quarters and search for a Shadowbeast.
|tip They are level 27-30, depending on your level.
Use your Tame Beast ability on a _Shadowbeast_. |cast Tame Beast##1515 |goto Karazhan,61.4,19.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\Ghostly White Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly White Demon Dog pet.",
model={16049},
condition_suggested=function() return level>=27 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Phase Hounds around this area.
|tip They are level 27-30, depending on your level.
Use your Tame Beast ability on a _Phase Hound_. |cast Tame Beast##1515 |goto Karazhan,61.4,19.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\Gray Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Demon Dog pet.",
model={6195},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Deathshadow Hounds around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Deathshadow Hound_. |cast Tame Beast##1515 |goto Nagrand,10.6,39.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\Purple Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Demon Dog pet.",
model={37773},
condition_suggested=function() return level>=27 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Dreadbeasts around the area.
|tip They are level 27-30, depending on your level.
Use your Tame Beast ability on a _Dreadbeast_. |cast Tame Beast##1515 |goto Karazhan,61.4,19.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\Red Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Demon Dog pet.",
model={8181},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Rokad the Ravager around the area.
|tip They are level 27-30, depending on your level.
Use your Tame Beast ability on _Rokad the Ravager_. |cast Tame Beast##1515 |goto Karazhan,74.6,21.6
Click here to see another location for this pet |next |confirm
step
Search for Bloodhound Mastiff around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Bloodhound Mastiff_. |cast Tame Beast##1515 |goto Blackrock Depths,55.8,69.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Demon Dogs\\White Demon Dog (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Demon Dog pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46517},
},[[
step
Search for Bleakheart
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Bleakheart_ |cast Tame Beast##1515 |goto Eastern Plaguelands/0 71.8,45.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Mastiffs\\Black Mastiff",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Mastiff pet.",
model={35355},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Onslaught Bloodhounds around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Onslaught Bloodhound_. |cast Tame Beast##1515 |goto Dragonblight,87.6,38.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Mastiffs\\Brown Mastiff",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Mastiff pet.",
model={33998},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Blighthounds around the area.
|tip They are level 15-30, depending on your level.
|tip Note that when you aggro one, the others will come.
Use your Tame Beast ability on a _Blighthound_. |cast Tame Beast##1515 |goto Eastern Plaguelands,22.6,68.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Mastiffs\\Gray Mastiff",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Mastiff pet.",
model={30213},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Dragonflayer Hunting Hounds around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Dragonflayer Hunting Hound_. |cast Tame Beast##1515 |goto Howling Fjord,69.2,56.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Mastiffs\\Red Mastiff",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Mastiff pet.",
model={35353},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for the Scarlet Tracking Hound.
|tip They are level 10-30, depending on your level.
Note that there will be several later inside of the instance.
Use your Tame Beast ability on a _Scarlet Tracking Hound_. |cast Tame Beast##1515 |goto Scarlet Monastery/2 20.6,34.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Runed Demon Dogs\\Blue Runed Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Runed Demon Dog pet.",
model={24906},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Coldarra Mage Slayers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Coldarra Mage Slayer_. |cast Tame Beast##1515 |goto Borean Tundra,33.8,28.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Runed Demon Dogs\\Green Runed Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Runed Demon Dog pet.",
model={37408},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Plaguehounds around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Plaguehound_. |cast Tame Beast##1515 |goto Eastern Plaguelands,51.2,54.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Dogs\\Runed Demon Dogs\\Red Runed Demon Dog",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Runed Demon Dog pet.",
model={25785},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Vargul Blighthounds around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Vargul Blighthound_. |cast Tame Beast##1515 |goto Zul'Drak,19.4,61.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Foxes\\Black Fox",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Fox pet.",
model={30255},
condition_suggested=function() return level>=7 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Forest Stalkers around the area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Forest Stalker_. |cast Tame Beast##1515 |goto Redridge Mountains 63.4,41.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Foxes\\Brown Fox",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Fox pet.",
model={30302},
condition_suggested=function() return level>=7 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Redridge Fox around the area.
|tip They are level 7-30, depending on your level.
You can find more around [43.6,70.4].
Use your Tame Beast ability on a _Redridge Fox_. |cast Tame Beast##1515 |goto Redridge Mountains,21.6,64.8
Click here to see another location for this pet |next |confirm
step
Search for a Rabid Fox around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Rabid Fox_. |cast Tame Beast##1515 |goto Western Plaguelands,48.8,30.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Foxes\\Gray Fox",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Fox pet.",
model={30239},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for an Ashtail around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on an _Ashtail_. |cast Tame Beast##1515 |goto Loch Modan,73.6,44.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Foxes\\Red Foxes",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Foxes pet.",
model={30301},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Hill Fox around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Hill Fox_. |cast Tame Beast##1515 |goto Loch Modan,74.4,38.6
Click here to see another location for this pet |next |confirm
step
Search for a Whitetail Fox around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Whitetail Fox_. |cast Tame Beast##1515 |goto Western Plaguelands,40.2,60.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Foxes\\White Fox",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Fox pet.",
model={30254},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Highlands Fox around the area.
|tip They are level 1-20, depending on your level.
Use your Tame Beast ability on a _Highlands Fox_. |cast Tame Beast##1515 |goto Ruins of Gilneas,61.8,32.2
Click here to see another location for this pet |next |confirm
step
Search for a Snowfrolic Fox around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Snowfrolic Fox_. |cast Tame Beast##1515 |goto Winterspring,62.6,26.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Gorillas\\Black Gorilla",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Gorilla pet.",
model={839},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Skymane Gorillas around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Skymane Gorilla_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,62.6,77.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Gorillas\\Dark Gray Gorilla",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Gray Gorilla pet.",
model={844},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Silverback Patriarchs around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Silverback Patriarch_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,56.2,52.6
Click here to see another location for this pet |next |confirm
step
Search for Un'Goro Gorillas around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Un'Goro Gorilla_. |cast Tame Beast##1515 |goto Un'Goro Crater,62.4,19.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Gorillas\\Gray Gorilla",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Gorilla pet.",
model={838},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Elder Mistvale Gorilla around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Elder Mistvale Gorilla_. |cast Tame Beast##1515 |goto Un'Goro Crater,52.6,56.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Gorillas\\Red Gorilla",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Gorilla pet.",
model={3188},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Groddoc Apes around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Groddoc Ape_. |cast Tame Beast##1515 |goto Feralas,72.8,49.4
Click here to see another location for this pet |next |confirm
step
Search for U'cha around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on a _U'cha_. |cast Tame Beast##1515 |goto Un'Goro Crater,68.6,13.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Gorillas\\White Gorilla (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Gorilla pet.",
model={10133},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Tsul'Kalu around the area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Tsul'Kalu_. |cast Tame Beast##1515 |goto Northern Stranglethorn,47.8,31.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Orange Azeroth Hydra",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2423},
},[[
step
Search for a Strashaz Hydra
|tip Kill the other Hydras in the area until the orange one spawns.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Strashaz Hydra_ |cast Tame Beast##1515 |goto Dustwallow Marsh/0 71.8,18.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Brown Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Hyena pet.",
model={2726},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Starving Bonepaw around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Starving Bonepaw_. |cast Tame Beast##1515 |goto Desolace,70.8,25.6
Click here to see another location for this pet |next |confirm
step
Search for a Tundra Scavenger around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Tundra Scavenger_. |cast Tame Beast##1515 |goto Dragonblight,41.2,45.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Dark Orange Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Orange Hyena pet.",
model={1536},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Blisterpaw Hyena around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Blisterpaw Hyena_. |cast Tame Beast##1515 |goto Tanaris,48.0,27.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Gray Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Hyena pet.",
model={2714},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Snickeringfang Hyena around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Snickerfang Hyena_. |cast Tame Beast##1515 |goto Blasted Lands,50.2,34.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Orange Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Hyena pet.",
model={1535},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Kolkar Packhounds around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Kolkar Packhound_. |cast Tame Beast##1515 |goto Northern Barrens,52.8,76.4
Click here to see another location for this pet |next |confirm
step
Search for Hecklefang Scavengers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Hecklefang Scavenger_. |cast Tame Beast##1515 |goto Southern Barrens,45.8,43.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Purple Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Hyena pet.",
model={10903},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Rabid Blisterpaw around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Rabid Blisterpaw_. |cast Tame Beast##1515 |goto Tanaris,56.2,56.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Red Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Hyena pet.",
model={31352},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Bloodsnarl Hyena around this area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Bloodsnarl Hyena_. |cast Tame Beast##1515 |goto Uldum,55.6,58.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Hyenas\\Yellow Hyena",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Hyena pet.",
model={2710},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Hecklefang Hyena around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Hecklefang Hyena_. |cast Tame Beast##1515 |goto Northern Barrens,54.4,27.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Monkeys\\Black Monkey",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Monkey pet.",
model={30180},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
The Mining Monkey will be alone the walls mining with a chain against the wall.
|tip They are level 10-30, depending on your level.
|tip There are several colors that can be found here.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Deadmines,47.0,60.4
Click here to see another location for this pet |next |confirm
step
Search for Skymane Bonobos around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,62.8,77.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Monkeys\\Black Monkey with Fez (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Monkey with Fez pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46574},
},[[
step
Search for Gib the Banana-Hoarder
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Gib the Banana-Hoarder_ |cast Tame Beast##1515 |goto Swamp of Sorrows/0 17.6,47.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Monkeys\\Brown Monkey",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Monkey pet.",
model={30186},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
The Mining Monkey will be alone the walls mining with a chain against the wall.
|tip They are level 10-30, depending on your level.
|tip There are several colors that can be found here.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Deadmines,47.0,60.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Monkeys\\Dark Gray Monkey",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Gray Monkey pet.",
model={30184},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Vale Howlers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Vale Howler_. |cast Tame Beast##1515 |goto Northern Stranglethorn,53.6,25.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Monkeys\\Gray Monkey",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Monkey pet.",
model={30185},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
The Mining Monkey will be alone the walls mining with a chain against the wall.
|tip They are level 10-30, depending on your level.
|tip There are several colors that can be found here.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Deadmines,47.0,60.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Spiky Raptors\\Black Spiky Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Spiky Raptor pet.",
model={19770},
condition_suggested=function() return level>=20 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Daggermaw Blackhide around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Daggermaw Blackhide_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,48.8,46.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Spiky Raptors\\Blue Spiky Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Spiky Raptor pet.",
model={19770},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Drakuru Raptor around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Drakuru Raptor_. |cast Tame Beast##1515 |goto Zul'Drak,29.2,70.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Spiky Raptors\\Brown Spiky Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Spiky Raptor pet.",
model={19736},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Deviate Terrortooth around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deviate Terrortooth_. |cast Tame Beast##1515 |goto Southern Barrens,52.2,39.6
Click here to see another location for this pet |next |confirm
step
Search for a Bladespire Raptor around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Bladespire Raptor_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,42.6,53.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Spiky Raptors\\Green Spiky Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Spiky Raptor pet.",
model={19742},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Felsworn Daggermaw around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Felsworn Daggermaw_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,70.6,32.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Spiky Raptors\\Red Spiky Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Spiky Raptor pet.",
model={30847},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Corrupted Bloodtalons around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Corrupted Bloodtalon_. |cast Tame Beast##1515 |goto Durotar,61.6,91.8
Click here to see another location for this pet |next |confirm
step
Search for Daggermaw Lashtail around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Daggermaw Lashtail_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,64.8,54.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Black Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Raptor pet.",
model={21825},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Goreclaw the Ravenous here.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on a _Goreclaw the Ravenous_. |cast Tame Beast##1515 |goto Dustwallow Marsh,32.6,65.2
Click here to see another location for this pet |next |confirm
step
Search for Venomhide Ravasaurs around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Venomhide Ravasaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,69.4,53.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Blue Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Raptor pet.",
model={949},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Mottled Screechers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Mottled Screecher_. |cast Tame Beast##1515 |goto Wetlands,29.6,45.6
Click here to see another location for this pet |next |confirm
step
Search for Tethis around this area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on a _Tethis_. |cast Tame Beast##1515 |goto Northern Stranglethorn,63.0,62.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Green Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Raptor pet.",
model={676},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Highland Scytheclaws around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Highland Scytheclaw_. |cast Tame Beast##1515 |goto Wetlands,35.4,18.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Gray Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Raptor pet.",
model={1337},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Screamslash here.
|tip It is level 1-30, depending on your level.
Use your Tame Beast ability on a _Screamlash_. |cast Tame Beast##1515 |goto Durotar,36.0,32.4
Click here to see another location for this pet |next |confirm
step
Search for King Reaperclaw here.
|tip It is level 5-30, depending on your level.
Use your Tame Beast ability on a _King Reaperclaw_. |cast Tame Beast##1515 |goto Northern Barrens,65.2,58.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Orange Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Raptor pet.",
model={787},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Highland Razormaw around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Highland Razormaw_. |cast Tame Beast##1515 |goto Wetlands,32.8,21.0
Click here to see another location for this pet |next |confirm
step
Search for Terrortooth Scytheclaw around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Terrortooth Scytheclaw_. |cast Tame Beast##1515 |goto Southern Barrens,41.2,24.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Purple Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Raptor pet.",
model={1747},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Sunscale Raptors around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Sunscale Raptor_. |cast Tame Beast##1515 |goto Northern Barrens,51.4,35.0
Click here to see another location for this pet |next |confirm
step
Search for Mottled Raptors around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Mottled Raptor_. |cast Tame Beast##1515 |goto Wetlands,23.2,49.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Red Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Raptor pet.",
model={1960},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Bloodtalon Taillashers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Bloodtalon Taillasher_. |cast Tame Beast##1515 |goto Durotar,44.6,32.6
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Terrortooth Runners around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Terrortooth Runner_. |cast Tame Beast##1515 |goto Southern Barrens,42.2,22.0
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Bloodfen Raptors around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Bloodfen Raptor_. |cast Tame Beast##1515 |goto Dustwallow Marsh,47.6,17.6
Click here to see the previous location for this pet |next "location2" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Yellow Raptor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Raptor pet.",
model={11316},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Highland Striders around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Highland Strider_. |cast Tame Beast##1515 |goto Arathi Highlands,20.8,20.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Dire Ravagers\\Dark Green Dire Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Green Dire Ravager pet.",
model={20297},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Quillfang Ravagers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Quillfang Ravager_. |cast Tame Beast##1515 |goto Hellfire Peninsula,22.4,67.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Dire Ravagers\\Purple Dire Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Dire Ravager pet.",
model={20308},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Thornfang Ravagers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Thornfang Ravager_. |cast Tame Beast##1515 |goto Hellfire Peninsula,8.2,49.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Dire Ravagers\\Dark Orange and Crimson Dire Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Orange and Crimson Dire Ravager pet.",
model={20309},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Razorfang Ravagers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Razorfang Ravager_. |cast Tame Beast##1515 |goto Hellfire Peninsula,39.0,88.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Black, Purple, and Rose Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black, Purple, and Rose Ravager pet.",
model={20063},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Thornfang Venomspitters around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Thornfang Venomspitter_. |cast Tame Beast##1515 |goto Hellfire Peninsula,12.8,53.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Green and Blue Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Blue Ravager pet.",
model={20066},
condition_suggested=function() return level>=1 and level<=10 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Death Ravager is spawned from the Warrior quest "Strength of One" (Alliance only).
|tip It is level 1-10, depending on your level.
Use your Tame Beast ability on a _Death Ravager_. |cast Tame Beast##1515 |goto Azuremyst Isle,54.0,9.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Green and Crimson Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Crimson Ravager pet.",
model={19845},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Lost Ravagers inside the cave here.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Lost Ravager_. |cast Tame Beast##1515 |goto Winterspring,52.0,68.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Green and Indigo Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Indigo Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20062},
},[[
step
Search for a Quillfang Skitterer
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Quillfang Skitterer_ |cast Tame Beast##1515 |goto Hellfire Peninsula/0 22.8,65.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Green and Yellow Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Yellow Ravager pet.",
model={17062},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Enraged Ravagers around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Enraged Ravager_. |cast Tame Beast##1515 |goto Bloodmyst Isle,31.8,54.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Green, Purple, and Rose Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green, Purple, and Rose Ravager pet.",
model={37560},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Bloodmyst Hatchlings around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Bloodmyst Hatchling_. |cast Tame Beast##1515 |goto Bloodmyst Isle,59.8,89.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Orange and Black Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Black Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19844},
},[[
step
Search for a Razorfang Hatchling
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Razorfang Hatchling_ |cast Tame Beast##1515 |goto Hellfire Peninsula/0 42.0,85.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Orange and Crimson Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Crimson Ravager pet.",
model={16885},
condition_suggested=function() return level>=1 and level<=10 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ravager Specimen around this area.
|tip They are level 1-10, depending on your level.
Use your Tame Beast ability on a _Ravager Specimen_. |cast Tame Beast##1515 |goto Azuremyst Isle,55.6,18.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Orange and Indigo Ravager",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Indigo Ravager pet.",
model={19845},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Gore-Scythe Ravagers around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Gore-Scythe Ravager_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,60.4,69.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Orange and Magenta Ravager (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Magenta Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20067},
},[[
step
Search for Karapax
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Karapax_ |cast Tame Beast##1515 |goto Silithus/0 57.6,14.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Purple, Rose, and Blue Ravager #1",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple, Rose, and Blue Ravager pet.",
model={20068},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Nethermine Ravagers inside of the mine here.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Nethermine Ravager_. |cast Tame Beast##1515 |goto Shadowmoon Valley,74.0,88.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Ravagers\\Purple, Rose, and Blue Ravager #2",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple, Rose, and Blue Ravager pet.",
model={17086},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Rip-Blade Ravagers around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Rip-Blade Ravager_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,59.6,65.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Fire Scorpions\\Fiery Fire Scorpion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fiery Fire Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43935},
},[[
step
To get this pet, you will need to unlock the Molten Front daily area
|tip Refer to the Molten Front guide to achieve this.
Click here to load "The Molten Front" guide |confirm |next "Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive"
Unlock the Molten Front |complete completedq(25372)
step
Follow the path	|goto Molten Front/0 42.12,79.80 < 20
Follow the path	|goto 37.05,72.17 < 20
Follow the path	|goto 37.63,62.62 < 20
Follow the path	|goto 35.33,54.68 < 20
|tip You will need to jump between the platforms to reach this pet.
|tip Be on the look out for cracked platforms, as they will disappear soon after the cracks show up.
Search for a Lost Emberspit Scorpion
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Lost Emberspit Scorpion_ |cast Tame Beast##1515 |goto 55.2,52.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Rugged Scorpions\\Blue Rugged Scorpion (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Rugged Scorpion pet.",
model={37361},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Uldum
path follow strict;loop;ants straight
path	50.6,23.0	50.6,20.2	54.0,19.4
path	47.6,18.4	44.6,10.4	44.6,21.8
Search for Madexx at the points on your map.
|tip It is level 30-35, depending on your level.
|tip Note that there are 5 different skins for Madexx that all share the very same spawn point.
Use your Tame Beast ability on _Madexx_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Rugged Scorpions\\Brown Rugged Scorpion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Rugged Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37603},
},[[
step
Search for a Venomscale Spitter
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Venomscale Spitter_ |cast Tame Beast##1515 |goto Uldum/0 63.2,21.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Rugged Scorpions\\Green Rugged Scorpion (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Rugged Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37362},
},[[
step
label "first"
Search for Toxx
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Toxx_ |cast Tame Beast##1515 |goto Silithus/0 42.6,17.4
Click here for a higher level spawn |confirm
step
Search for Madexx
|tip It is level 30-35, depending on your level.
Use your Tame Beast ability on _Madexx_ |cast Tame Beast##1515 |goto Uldum/0 47.6,18.4
It spawns around this area, some searching may be required
Click here to return to the first step |confirm |next "first"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Black Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Scorpid pet.",
model={6068},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Duneclaw Stalkers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Duneclaw Stalker_. |cast Tame Beast##1515 |goto Tanaris 54.6,54.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Bronze Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Bronze Scorpid pet.",
model={2487},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Armored Scorpid around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Armored Scorpid_. |cast Tame Beast##1515 |goto Durotar,40.2,41.6
Click here to see another location for this pet |next |confirm
step
label "location"
Search for Venomtail Scorpid around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Venomtail Scorpid_. |cast Tame Beast##1515 |goto Durotar,42.0,19.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Venomtip Scorpids around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Venomtip Scorpid_. |cast Tame Beast##1515 |goto Burning Steppes,10.6,55.4
Click here to see the previous location for this pet |next "location" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Brown Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Scorpid pet.",
model={2485},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Scorpid Workers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Scorpid Worker_. |cast Tame Beast##1515 |goto Durotar,42.0,64.8
Click here to see another location for this pet |next |confirm
step
Search for Clattering Scorpids around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Clattering Scorpid_. |cast Tame Beast##1515 |goto Durotar,52.4,75.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Green Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Scorpid pet.",
model={2730},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Scorpid Cliffcrawlers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Scorpid Cliffcrawler_. |cast Tame Beast##1515 |goto Thousand Needles,65.4,74.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Gray Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Scorpid pet.",
model={33995},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Duneclaw Broodlords around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Duneclaw Broodlord_. |cast Tame Beast##1515 |goto Tanaris,40.4,65.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Pink Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink Scorpid pet.",
model={10987},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Duneclaw Lasher around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Duneclaw Lasher_. |cast Tame Beast##1515 |goto Tanaris,43.0,26.6
Click here to see another location for this pet |next |confirm
step
Search for Scorpid Bonecrawler around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Scorpid Bonecrawler_. |cast Tame Beast##1515 |goto Terokkar Forest,32.4,56.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Red Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Scorpid pet.",
model={5985},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Duneclaw Burrowers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Duneclaw Burrower_. |cast Tame Beast##1515 |goto Tanaris,52.8,41.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\White Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Scorpid pet.",
model={10988},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Stonelash Flayer around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Stonelash Flayer_. |cast Tame Beast##1515 |goto Silithus,42.6,63.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Yellow Scorpid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Scorpid pet.",
model={2729},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Scorpashi Snappers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Scorpashi Snapper_. |cast Tame Beast##1515 |goto Desolace,62.2,27.4
Click here to see another location for this pet |next |confirm
step
Search for Duneclaw Matriarchs around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Duneclaw Matrarch_. |cast Tame Beast##1515 |goto Tanaris,42.8,30.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Blue Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Serpent pet.",
model={4317},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Deviate Adders around this area.
|tip They are level 10-30, depending on your level.
You can find more around [14.2,23.8],
As well as [15.6,53.8].
Use your Tame Beast ability on a _Deviate Adder_. |cast Tame Beast##1515 |goto Wailing Caverns,30.6,43.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Brown Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Serpent pet.",
model={33990},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Murk Spitters around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Murk Spitter_. |cast Tame Beast##1515 |goto The Temple of Atal'Hakkar,77.8,41.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Crimson Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Crimson Serpent pet.",
model={36273},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Needlespine Shimmerbacks around this area.
|tip They are level 15-30, depending on your level.
You can find more around [67.0,74.8].
Use your Tame Beast ability on a _Needlespine Shimmerback_. |cast Tame Beast##1515 |goto Thousand Needles,66.0,67.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Green Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Serpent pet.",
model={14557},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Needlespine Cobras around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Needlespine Cobra_. |cast Tame Beast##1515 |goto Thousand Needles,66.0,67.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Purple Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Serpent pet.",
model={4312},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Deviate Vipers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deviate Viper_. |cast Tame Beast##1515 |goto Wailing Caverns,30.6,43.6
Click here to see another location for this pet |next |confirm
step
Search for Venomtip.
|tip It is level 20-30, depending on your level.
Use your Tame Beast ability on a _Venomtip_. |cast Tame Beast##1515 |goto Sholazar Basin,58.4,53.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Ruby Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ruby Serpent pet.",
model={26522},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sunburst Adders around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Sunburst Adder_. |cast Tame Beast##1515 |goto Tanaris,40.4,65.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\Teal Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Teal Serpent pet.",
model={4768},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Murk Spitters around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Murk Spitter_. |cast Tame Beast##1515 |goto The Temple of Atal'Hakkar,77.8,41.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Serpents\\White Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Serpent pet.",
model={4305},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Deviate Moccasin around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deviate Moccasin_. |cast Tame Beast##1515 |goto Wailing Caverns,34.8,15.8
Click here to see another location for this pet |next |confirm
step
Search for Coilskar Cobras around this area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Coilskar Cobra_. |cast Tame Beast##1515 |goto Shadowmoon Valley,54.6,21.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Barbed Spiders\\Orange and Black Barbed Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Black Barbed Spider pet.",
model={18043},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Myst Leechers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Myst Leecher_. |cast Tame Beast##1515 |goto Bloodmyst Isle,22.8,36.2
Click here to see another location for this pet |next |confirm
step
Search for Deathskitter around this area. He patrols to [53.6,64.6]
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Deathskitter_. |cast Tame Beast##1515 |goto Terokkar Forest,53.8,57.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Barbed Spiders\\Red and Black Barbed Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Black Barbed Spider pet.",
model={17180},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Zarakh around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Zarakh_. |cast Tame Beast##1515 |goto Bloodmyst Isle,18.2,37.6
Click here to see another location for this pet |next |confirm
step
Search for the Black Recluse around this area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Black Recluse_. |cast Tame Beast##1515 |goto Twilight Highlands,45.8,31.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Barbed Spiders\\Red and Yellow Barbed Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Yellow Barbed Spider pet.",
model={17346},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for the Myst Spinners around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Myst Spinner_. |cast Tame Beast##1515 |goto Bloodmyst Isle,23.6,40.4
Click here to see another location for this pet |next |confirm
step
Search for Ridgespine Stalkers around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Ridgespine Stalker_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,67.8,52.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Bone Spiders\\Brown Bone Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Bone Spider pet.",
model={26773},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Skitterweb Lurkers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Skitterweb Lurker_. |cast Tame Beast##1515 |goto Silverpine Forest,36.6,14.8
Click here to see another location for this pet |next |confirm
step
_Only Alliance Players_ can tame this spider. Search for Domesticated Mine Creepers inside the mine.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Domesticated Mine Creeper_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,34.6,72.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Bone Spiders\\Dark Brown Bone Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Bone Spider pet.",
model={26760},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Tainted Nightstalkers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Tainted Nightstalker_. |cast Tame Beast##1515 |goto Blasted Lands,35.6,59.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Bone Spiders\\Gray Bone Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Bone Spider pet.",
model={27973},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Necrotic Webspinners.
|tip They are level 25-30, depending on your level.
You will not be able to see them if you have an Argent Tournament daily quest.
Use your Tame Beast ability on a _Necrotic Webspinner_. |cast Tame Beast##1515 |goto Icecrown,53.6,75.2
Click here to see another location for this pet |next |confirm
step
Search for Carrion Fleshstrippers around this area.
|tip They are level 25-30, depending on your level.
If you've done the quest hub here, they will be phased out.
Use your Tame Beast ability on a _Carrion Fleshstripper_. |cast Tame Beast##1515 |goto Icecrown,85.8,73.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Bone Spiders\\Green-Gray Bone Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green-Gray Bone Spider pet.",
model={34168},
condition_suggested=function() return level>=5 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for the Skitterweb Matriarch. She may be hanging on the roof.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Skitterweb matriarch_. |cast Tame Beast##1515 |goto Silverpine Forest,36.0,8.8
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Battle Creepers around this area.
|tip They are level 7-30, depending on your level.
_Only Alliance Players_ can tame this pet.
Use your Tame Beast ability on a _Battle Creeper_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,46.4,68.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Darkwood Broodmothers in the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Darkwood Broodmother_. |cast Tame Beast##1515 |goto Tol Barad Peninsula,54.6,52.8
Click here to see the previous location for this pet |next "location2" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Bone Spiders\\Rusty Bone Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Rusty Bone Spider pet.",
model={34167},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Darkwood Lurkers around this area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Darkwood Lurker_. |cast Tame Beast##1515 |goto Tol Barad Peninsula,55.0,55.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Fire Spiders\\Green Fire Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Fire Spider pet.",
model={38543},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Use your Tame Beast ability on a _Cinderweb Broodling_. |cast Tame Beast##1515 |goto Molten Front,65.6,49.2
|tip Cinderweb Broodlings spawn and move quickly through the area.
|tip They will despawn shortly after, so if you see one that isn't moving, you likely won't be able to tame it.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Fire Spiders\\Orange Fire Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Fire Spider pet.",
model={38780},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Solix_ around the area.
|tip It can be found in lava pools inside of the Igneous Depths.
|tip In order to tame this pet, you will have to kite him around until its Energy is low. DO NOT kite it until its energy reaches 0, or it will die.
Open with _Concussion Shot_ and kite him around until it has _20 to 30 Energy_. Use _Concussion Shot_ whenever it is off cooldown.
If you are having trouble kiting, you can also use _Aspect of the Cheetah_.
Use your Tame Beast ability on _Solix_ when it is at _20 to 30 Energy_. |cast Tame Beast##1515 |goto Molten Front 60.4,50.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Fire Spiders\\Purple Fire Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Fire Spider pet.",
model={38424},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Deth'tilac around the area.
|tip It is level 30-35, depending on your level.
|tip Note that this will be much easier as Survival, with talents into Entrapment, Trap Mastery and Resourcefulness.
You will need to use a pet with a snare effect in order to tame this, as well as beat him down to _20%_.  We suggest using a spider pet.
Start with laying down a _Snake Trap_, followed by an _Ice Trap_ behind it.
Send your pet in, sacrificing it.  Once Deth'tilac kills it, he'll trigger your _Snake Trap_.
While Deth'tilac is attacking the snakes, cast _Revive Pet_.  Once the snakes are all dead and Deth'tilac has triggered _Ice Trap_, sacrifice your pet again.
Repeat the above steps until Deth'tilac is at _20%_ health. Be sure to _Dismiss your pet_ at this point.
Use your Tame Beast ability on _Deth'tilac_. |cast Tame Beast##1515 |goto Molten Front,66.6,72.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Fire Spiders\\Red Fire Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Fire Spider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={38463},
},[[
step
To get this pet, you will need to unlock the Molten Front daily area
|tip Refer to the Molten Front guide to achieve this.
Click here to load "The Molten Front" guide |confirm |next "Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive"
Unlock the Molten Front |complete completedq(25372)
step
Search for an Echoweb Cinderfang
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on an _Echoweb Cinderfang_ |cast Tame Beast##1515 |goto Molten Front/0 66.6,56.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Fire Spiders\\Yellow Fire Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Fire Spider pet.",
model={38426},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Anthriss_ around the area.
|tip In order to tame this pet, you will have to run into the lava pools when he casts his web on you.
Open with _Concussion Shot_ and _Deterrence_ to avoid failure.
Use your Tame Beast ability on _Anthriss_. |cast Tame Beast##1515 |goto Molten Front 54.8,41.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Tarantulas\\Green Tarantula",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Tarantula pet.",
model={709},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Webwood Venomfangs around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Webwood Venomfang_. |cast Tame Beast##1515 |goto Teldrassil,42.4,53.6
Click here to see another location for this pet |next |confirm
step
Search for Forest Creepers around this area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Forest Creeper_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,34.2,58.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Tarantulas\\Gray Tarantula",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Tarantula pet.",
model={6214},
condition_suggested=function() return level>=7 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Wildthorn Lurkers around this area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Wildthorn Lurker_. |cast Tame Beast##1515 |goto Ashenvale,72.2,82.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Tarantulas\\Lava Tarantula",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Lava Tarantula pet.",
model={7510},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Greater Lava Spiders around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Greater Lava Spider_. |cast Tame Beast##1515 |goto Searing Gorge,30.8,43.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Tarantulas\\Orange Tarantula",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Tarantula pet.",
model={382},
condition_suggested=function() return level>=7 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Tarantulas around this area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Tarantula_. |cast Tame Beast##1515 |goto Redridge Mountains,19.6,65.8
Click here to see another location for this pet |next |confirm
step
Search for Darkfang Creepers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Darkfang Creeper_. |cast Tame Beast##1515 |goto Dustwallow Marsh,43.0,48.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Tarantulas\\Red Tarantula",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Tarantula pet.",
model={827},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Forest Lurkers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Forest Lurker_. |cast Tame Beast##1515 |goto Loch Modan,33.8,31.0
Click here to see another location for this pet |next |confirm
step
Search for Sand Skitterers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Sand Skitterer_. |cast Tame Beast##1515 |goto Silithus,60.6,31.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Black Widow Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Widow Spider pet.",
model={539},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Black Widows around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Black Window_. |cast Tame Beast##1515 |goto Duskwood,33.6,44.4
Click here to see another location for this pet |next |confirm
step
Search for Vicious Night Web Spiders around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Vicious Night Web Spider_. |cast Tame Beast##1515 |goto Tirisfal Glades,86.4,53.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Crystal Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Crystal Spider pet.",
model={4456},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Glassweb Spiders around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Searing Gorge,56.2,69.4
Click here to see another location for this pet |next |confirm
step
Search for Dreadfang Widows around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Dreadfang Widow_. |cast Tame Beast##1515 |goto Terokkar Forest,53.0,78.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Green Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Spider pet.",
model={283},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Darkmist Silkspinners around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Darkmist Silkspinner_. |cast Tame Beast##1515 |goto Dustwallow Marsh,35.4,22.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Gray Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Spider pet.",
model={955},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Spindleweb Spiders around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Spindleweb Spider_. |cast Tame Beast##1515 |goto Ghostlands,30.6,27.6
Click here to see another location for this pet |next |confirm
step
Search for Cave Stalkers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Cave Stalker_. |cast Tame Beast##1515 |goto Wetlands,50.2,60.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Jungle Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Jungle Spider pet.",
model={34278},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Darkmist Recluse around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Darkmist Recluse_. |cast Tame Beast##1515 |goto Dustwallow Marsh,35.0,22.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Olive Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Olive Spider pet.",
model={513},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Plauge Lurkers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Plague Lurker_. |cast Tame Beast##1515 |goto Western Plaguelands,56.0,60.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Purple Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Spider pet.",
model={15937},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Plauge Lurkers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Plague Lurker_. |cast Tame Beast##1515 |goto Western Plaguelands,56.0,60.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Red Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Spider pet.",
model={36505},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Use your Tame Beast ability on _Terokkarantula_. |cast Tame Beast##1515 |goto Terokkar Forest,54,81.6
|tip It is level 15-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Spiders\\Tan Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Spider pet.",
model={711},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Leech Stalkers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Leech Stalker_. |cast Tame Beast##1515 |goto Wetlands,56.4,63.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Tallstriders\\Brown Tallstrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Tallstrider pet.",
model={1219},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Greater Plainstriders around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Greater Plainstrider_. |cast Tame Beast##1515 |goto Northern Barrens,66.6,38.6
Click here to see another location for this pet |next |confirm
step
Search for a Foreststrider Fledgling around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Foreststrider Fledgling_. |cast Tame Beast##1515 |goto Darkshore,40.8,48.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Tallstriders\\Gray Tallstrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Tallstrider pet.",
model={1220},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for an Ornery Plainstrider around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Ornery Plainstrider_. |cast Tame Beast##1515 |goto Northern Barrens,64.6,60.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Tallstriders\\Pink Tallstrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink Tallstrider pet.",
model={1961},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Deviate Plainstrider around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deviate Plainstrider_. |cast Tame Beast##1515 |goto Southern Barrens,50.8,41.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Tallstriders\\Purple Tallstrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Tallstrider pet.",
model={21087},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Lost Torranche around this area.
|tip They are level 15-30, depending on your level.
You will need a flying mount to have access to these.
Use your Tame Beast ability on a _Lost Torranche_. |cast Tame Beast##1515 |goto Terokkar Forest,45.2,94.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Tallstriders\\Turqouise Tallstrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Turqouise Tallstrider pet.",
model={38},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Swampstider around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Swampstrider_. |cast Tame Beast##1515 |goto Swamp of Sorrows,83.6,30.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Tallstriders\\White Tallstrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Tallstrider pet.",
model={1221},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for an Elder Plainstrider around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Elder Plainstrider_. |cast Tame Beast##1515 |goto Mulgore,57.8,56.4
Click here to see another location for this pet |next |confirm
step
Search for a Fleeting Plainstrider around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Fleeting Plainstrider_. |cast Tame Beast##1515 |goto Northern Barrens,39.8,55.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Warp Stalkers\\Blue Warp Stalker",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Warp Stalker pet.",
model={19369},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Chasm Stalker around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Chasm Stalker_. |cast Tame Beast##1515 |goto Abyssal Depths,41.2,41.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Warp Stalkers\\Blue-Green Warp Stalker",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Green Warp Stalker pet.",
model={19979},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Warp Chasers around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Warp Chaser_. |cast Tame Beast##1515 |goto Netherstorm,62.4,60.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Warp Stalkers\\Green Warp Stalker",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Warp Stalker pet.",
model={29740},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Displaced Warp Stalkers around the area (Inside the cave).
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Displaced Warp Stalker_. |cast Tame Beast##1515 |goto Winterspring,53.2,63.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Warp Stalkers\\Red Warp Stalker",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Warp Stalker pet.",
model={20901},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Daggertail Lizards around the area.
|tip They are level 20-30, depending on your level.
There are more around [71.0,11.6].
Use your Tame Beast ability on a _Daggertail Lizard_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,54.6,14.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Warp Stalkers\\White Warp Stalker",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Warp Stalker pet.",
model={20025},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Warp Stalkers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Warp Stalker_. |cast Tame Beast##1515 |goto Terokkar Forest,57.2,42.6
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Warp Hunters around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Warp Hunter_. |cast Tame Beast##1515 |goto Terokkar Forest,20.0,72.8
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Blackwind Warp Chasers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Blackwind Warp Chaser_. |cast Tame Beast##1515 |goto Terokkar Forest,62.4,84.6
Click here to see the previous location for this pet |next "location2" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Coyotes\\Black Coyote",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Coyote pet.",
model={780},
condition_suggested=function() return level>=7 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Blackrock Battle Worg in the area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Blackrock Battle Worg_. |cast Tame Beast##1515 |goto Redridge Mountains,48.8,37.4
Click here to see another location for this pet |next |confirm
step
Search for Vilebranch Raiding Wolves around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Vilebranch Raiding Wolf_. |cast Tame Beast##1515 |goto The Hinterlands,58.6,64.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Coyotes\\Diseased Coyote",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Coyote pet.",
model={4124},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Rabid Worgs around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Rabid Worg_. |cast Tame Beast##1515 |goto Silverpine Forest,43.0,19.8
Click here to see another location for this pet |next |confirm
step
Search for Felpaw Wolves around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Felpaw Wolf_. |cast Tame Beast##1515 |goto Felwood,53.2,83.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Coyotes\\Gray Coyote",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Coyote pet.",
model={18156},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Gray Forest Wolves around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Gray Forest Wolf_. |cast Tame Beast##1515 |goto Elwynn Forest,61.0,64.6
Click here to see another location for this pet |next |confirm
step
Search for Longtooth Runners around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Longtooth Runner_. |cast Tame Beast##1515 |goto Feralas,57.8,47.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Coyotes\\Tan Coyote",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Coyote pet.",
model={1100},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Coyote around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Coyote_. |cast Tame Beast##1515 |goto Westfall,51.6,23.6
Click here to see another location for this pet |next |confirm
step
Search for Feral Crag Coyotes around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Feral Crag Coyote_. |cast Tame Beast##1515 |goto Badlands,70.8,29.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Coyotes\\White Coyote",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Coyote pet.",
model={11416},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Winter Wolves around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Winter Wolf_. |cast Tame Beast##1515 |goto Dun Morogh,45.2,39.8
Click here to see another location for this pet |next |confirm
step
Search for Ghostpaw Runners around the area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Ghostpaw Runner_. |cast Tame Beast##1515 |goto Ashenvale,27.6,28.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Black Saber Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Saber Worg pet.",
model={40147},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Serch for Blackrock Battle Worgs around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Blackrock Battle Worg_. |cast Tame Beast##1515 |goto Elwynn Forest,47.6,40.6
Click here to see another location for this pet |next |confirm
step
Search for Bloodthirsty Worgs around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Bloodthirsty Worg_. |cast Tame Beast##1515 |goto Howling Fjord,56.8,53.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Brown Saber Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Saber Worg pet.",
model={22502},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Bjomolf around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Bjomolf_. |cast Tame Beast##1515 |goto Howling Fjord,28.8,22.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Ghostly Black Saber Worg (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Black Saber Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46667},
},[[
step
Search for Nighthowl
|tip It is level 1-30, depending on your level.
Use your Tame Beast ability on _Nighthowl_ |cast Tame Beast##1515 |goto Tirisfal Glades/0 42.8,28.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Ghostly Brown Saber Worg (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Brown Saber Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46520},
},[[
step
Search for Snort
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Snort_ |cast Tame Beast##1515 |goto Eastern Plaguelands/0 57.6,79.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Gray Saber Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Saber Worg pet.",
model={22044},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Dragonflayer Worg around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Dragonflayer Worg_. |cast Tame Beast##1515 |goto Howling Fjord,59.0,59.8
Click here to see another location for this pet |next |confirm
step
Search for Tundra Wolves around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Tundra Wolf_. |cast Tame Beast##1515 |goto Borean Tundra,49.2,48.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\White Saber Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Saber Worg pet.",
model={22089},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Serch for Winterskorn Worgs around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Winterskorn Worg_. |cast Tame Beast##1515 |goto Howling Fjord,45.6,30.2
Click here to see another location for this pet |next |confirm
step
Search for Frostworgs around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Frostworg_. |cast Tame Beast##1515 |goto The Storm Peaks,56.6,65.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saddled Worgs\\Black Saddled Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Saddled Worg pet.",
model={14334},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Shattered Hand Warhounds around the area.
|tip They will be deeper in.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Shattered Hand Warhound_. |cast Tame Beast##1515 |goto Hellfire Ramparts,47.8,51.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Black Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Worg pet.",
model={741},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Worgs around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Worg_. |cast Tame Beast##1515 |goto Silverpine Forest,60.6,16.0
Click here to see another location for this pet |next |confirm
step
Search for Black Ravagers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Black Ravager_. |cast Tame Beast##1515 |goto Duskwood,27.6,67.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Brown and Gray Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown and Gray Worg pet.",
model={18063},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ironjaw around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Ironjaw_. |cast Tame Beast##1515 |goto Terokkar Forest,66.6,35.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Brown Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Worg pet.",
model={37576},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ripp around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Ripp_. |cast Tame Beast##1515 |goto Hellfire Peninsula,68.6,73.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Dark Brown Worg (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37671},
},[[
step
label "grovepaw"
Search for Grovepaw
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Grovepaw_ |cast Tame Beast##1515 |goto Felwood/0 38.2,72.8
If Grovepaw isn't present, click here for another rare spawn |confirm
step
Search for Deathmaw
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Deathmaw_ |cast Tame Beast##1515 |goto Burning Steppes/0 63.2,32.2
Click here to go back to the previous spawn |confirm |next "grovepaw"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Dark Gray Worg (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Gray Worg pet.",
model={11414},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Old Cliff Jumper around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Old Cliff Jumper_. |cast Tame Beast##1515 |goto The Hinterlands,13.6,53.8
step
You should tame one of the following:
learnpet Mist Howler##8211
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Ghost Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghost Worg pet.",
model={34508},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for The Lone Hunter around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _The Lone Hunter_. |cast Tame Beast##1515 |goto Eastern Plaguelands,40.0,83.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Gray Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Worg pet.",
model={11415},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Prowlers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Prowler_. |cast Tame Beast##1515 |goto Elwynn Forest,79.8,60.6
Click here to see another location for this pet |next |confirm
step
Search for Silvermane Stalkers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Silvermane Stalker_. |cast Tame Beast##1515 |goto The Hinterlands,72.0,57.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Red Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Worg pet.",
model={9372},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Ember Worgs around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ember Worg_. |cast Tame Beast##1515 |goto Burning Steppes,19.0,54.6
Click here to see another location for this pet |next |confirm
step
Search for Thunderlord Dire Wolves around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Thunderlord Dire Wolf_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,52.8,67.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Silver Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Worg pet.",
model={10278},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ghost Howl around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on _Ghost Howl_. |cast Tame Beast##1515 |goto Mulgore,44.6,16.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Brown Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Bat pet.",
model={4732},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Greater Duskbats around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Greater Duskbat_. |cast Tame Beast##1515 |goto Tirisfal Glades,66.8,54.2
Click here to see another location for this pet |next |confirm
step
Search for Mistbats around this area.
|tip They are level 1-30, depending on your level.
Use Tame Beast ability on a _Mistbat_. |cast Tame Beast##1515 |goto Ghostlands,50.8,15.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Ghostly Tan Bat (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Tan Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46665},
},[[
step
Search for Fangor
|tip They are level 10-3, depending on your level.
Use your Tame Beast ability on _Fangor_ |cast Tame Beast##1515 |goto Deathknell/0 62.8,80.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Purple-Red Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple-Red Bat pet.",
model={8808},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Vampiric Duskbat around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Vampiric Duskbat_. |cast Tame Beast##1515 |goto Tirisfal Glades,73.4,63.4
Click here to see another location for this pet |next |confirm
step
Search for Plaguebats around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Plaugebat_. |cast Tame Beast##1515 |goto Eastern Plaguelands,39.8,75.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Tan Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Bat pet.",
model={1954},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Greater Kraul Bats around this area.
|tip They are level 10-30, depending on your level.
|tip Kraul Bat's also work for this.
Use your Tame Beast ability on a _Greater Kraul Bat_. |cast Tame Beast##1515 |goto Razorfen Kraul,10.6,49.6
Click here to see another location for this pet |next |confirm
step
Search for Noxious Plaguebats around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Noxious Plaguebat_. |cast Tame Beast##1515 |goto Eastern Plaguelands,62.8,58.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\White Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Bat pet.",
model={16053},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Zul'drak bats around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Zul'Drak Bat_. |cast Tame Beast##1515 |goto Zul'Drak,38.2,50.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Eagles\\Undead Eagle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Undead Eagle pet.",
model={25630},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
The Diseased Hawk can only be accessed from doing the quest 'A Different Approach'.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Diseased Hawk_. |cast Tame Beast##1515 |goto Western Plaguelands,53.8,53.6
Click here to see another location for this pet |next |confirm
step
Search for Vargul Plaguetalons around this area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Vargul Plaguetalon_. |cast Tame Beast##1515 |goto Zul'Drak,18.4,57.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Hawks\\Black Hawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Hawk pet.",
model={20857},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Daggercap Hawks around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Daggercap Hawk_. |cast Tame Beast##1515 |goto Howling Fjord,58.6,50.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Hawks\\Brown Hawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Hawk pet.",
model={22633},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Fjord Hawks around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Fjord Hawk_. |cast Tame Beast##1515 |goto Howling Fjord,74.6,66.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Black Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Owl pet.",
model={18933},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Barn owls around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Barn Owl_. |cast Tame Beast##1515 |goto Duskwood,20.8,76.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Brown Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Owl pet.",
model={18375},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Vale Owls around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Vale Owl_. |cast Tame Beast##1515 |goto Feralas,46.0,9.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Dark Brown Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Owl pet.",
model={20725},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for an Avian Darkhawk in this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Vale Owl_. |cast Tame Beast##1515 |goto Sethekk Halls,73.6,30.4
You can find more around [51.4,52.6]
Click here to see another location for this pet |next |confirm
step
Search for Akkarai Hatchlings in this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Akkarai Hatchling_. |cast Tame Beast##1515 |goto Terokkar Forest,70.0,79.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Ghostly Green Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Green Owl pet.",
model={29505},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Emerald Spirits around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on an _Emerald Spirit_. |cast Tame Beast##1515 |goto Stonetalon Mountains,48.8,75.8
Click here to see another location for this pet |next |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Gray Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Owl pet.",
model={10832},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Strigid Screechers around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Strigid Screecher_. |cast Tame Beast##1515 |goto Teldrassil,42.8,43.2
Click here to see another location for this pet |next |confirm
step
Search for Strigid Screechers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Strigid Screecher_. |cast Tame Beast##1515 |goto Felwood,51.6,84.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Green Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Owl pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={24453},
},[[
step
Search for an Emerald Skytalon
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on an _Emerald Skytalon_ |cast Tame Beast##1515 |goto Dragonblight/0 64.8,73.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Purple Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Owl pet.",
model={37567},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Hell-Hoot around this area.
|tip They are level 15-30, depending on your level.
|tip He patrols up and down the mountain here.  Some searching may be required.
Use your Tame Beast ability on _Hell-Hoot_. |cast Tame Beast##1515 |goto Winterspring 53.0,36.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Red and Purple Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Purple Owl pet.",
model={20729},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Skettis kaliri around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Skettis Kaliri_. |cast Tame Beast##1515 |goto Terokkar Forest,70.6,82.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Red Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Owl pet.",
model={20730},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Montrous Kaliri around this area.
|tip They are level 15-30, depending on your level.
|tip They fly overhead most of the time.
Use your Tame Beast ability on a _Monstrous Kaliri_. |cast Tame Beast##1515 |goto Terokkar Forest,69.2,78.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Sapphire Owl (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Sapphire Owl pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46988},
},[[
step
Search for Quall
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Quall_ |cast Tame Beast##1515 |goto Stonetalon Mountains/0 60.0,63.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Spectral Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spectral Owl pet.",
model={37568},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Olm the Wise around the area.
|tip It is level 15-30, depending on your level.
It can also spawn at [54.6,27.6]
As well as [57.6,19.8]
Use your Tame Beast ability on _Olm the Wise_. |cast Tame Beast##1515 |goto Felwood,56.2,23.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\White Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Owl pet.",
model={10833},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Winterspring Screechers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Winterspring Screecher_. |cast Tame Beast##1515 |goto Winterspring,55.4,32.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Blue Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Parrot pet.",
model={27975},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Aotana around the area.
|tip It is level 20-30, depending on your level.
Aotona has several spawning points, listed below:
[42.6,51.0]
[40.6,58.6]
[41.8,69.6]
[42.6,73.8]
[52.6,73.0]
[57.8,65.6]
[54.8,52.6]
Use your Tame Beast ability on _Aotana_. |cast Tame Beast##1515 |goto Sholazar Basin,48.0,55.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Dark Red Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Red Parrot pet.",
model={5505},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Monstrous Macaws around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Monstrous Macaw_. |cast Tame Beast##1515 |goto Thousand Needles,92.0,73.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Green and Orange Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Orange Parrot pet.",
model={36150},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sunwing Squawkers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Sunwing Squawker_. |cast Tame Beast##1515 |goto The Deadmines/2 41.0,47.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Green and Yellow Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Yellow Parrot pet.",
model={36006},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Brilliant Clayscraper around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Brilliant Clayscraper_. |cast Tame Beast##1515 |goto Thousand Needles,92.0,73.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Gray Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Parrot pet.",
model={36152},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Ol' Beaky will be on a little island on the side of the ship.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Ol' Beaky_. |cast Tame Beast##1515 |goto The Deadmines/2 50.4,60.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Lavender-Blue Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Lavender-Blue Parrot pet.",
model={36151},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Brilliant Macaws around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Brilliant Macaw_. |cast Tame Beast##1515 |goto The Deadmines/2 41.0,47.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Red Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Parrot pet.",
model={36148},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Monstrous Parrots around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Monstrous Parrot_. |cast Tame Beast##1515 |goto The Deadmines/2 41.0,47.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\White Parrot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Parrot pet.",
model={36153},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Albino Eyegougers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Albino Eyegouger_. |cast Tame Beast##1515 |goto The Deadmines/2 41.0,47.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Seagull",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Seagull pet.",
model={34160},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Rustberg Gulls around this area.
|tip They are level 30-35, depending on your level.
|tip They are around the docks and ledges.
Use your Tame Beast ability on a _Rustberg Gull_. |cast Tame Beast##1515 |goto Tol Barad Peninsula,69.8,25.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Condors\\Blue Condor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Condor pet.",
model={23962},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Dragonbone Condors around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Dragonbone Condor_. |cast Tame Beast##1515 |goto Dragonblight,51.6,26.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Condors\\Gold Condor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gold Condor pet.",
model={23482},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Loch Buzzards around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Loch Buzzard_. |cast Tame Beast##1515 |goto Loch Modan,52.4,63.2
Click here to see another location for this pet |next |confirm
step
Search for Dire Condors around this area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Dire Condor_. |cast Tame Beast##1515 |goto Redridge Mountains,20.0,65.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Condors\\White Condor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Condor pet.",
model={25868},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Carion Condors around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Carrion Condor_. |cast Tame Beast##1515 |goto Borean Tundra,85.6,35.8
Click here to see another location for this pet |next |confirm
step
Search for Dreadtalon flying around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Dreadtalon_. |cast Tame Beast##1515 |goto Dragonblight,46.6,44.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Blue Two-Headed Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Two-Headed Vulture pet.",
model={37578},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
kill Trachela##21515
collect Trachela's Carcass##30618 |goto Terokkar Forest,43,51
Click here to see another location for this pet |next |confirm
step
Use Trachela's Carcass at the Scarecrow here. |goto Terokkar Forest,27,55 |use Trachela's Carcass##30618
Torgos will fly down.
Use your Tame Beast ability on _Torgos_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Ghostly Blue Two-Headed Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Blue Two-Headed Vulture pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20300},
},[[
step
Search for a Lashh'an Wing Guard in the area
|tip Once you find one, drag it to the coordinates provided.
|tip Once the Wing Guard is in the circle, damage it without killing it!
|tip This will be hard for those who are higher level. Try bringing a lower level friend to accomplish this.
Eventually, an Angered Arakkoa Protector will spawn
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Angered Arakkoa Protector_ |cast Tame Beast##1515 |goto Blade's Edge Mountains/0 35.22,77.28
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Ghostly White Two-Headed Vulture (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly White Two-Headed Vulture pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46516},
},[[
step
Search for Fene-mal
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Fene-mal_ |cast Tame Beast##1515 |goto Eastern Plaguelands/0 49.6,43.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Ghostly Yellow Two-Headed Vulture (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Yellow Two-Headed Vulture pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46740},
},[[
step
Search for Heress
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Heress_ |cast Tame Beast##1515 |goto Western Plaguelands/0 35.0,52.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Green Two-Headed Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Two-Headed Vulture pet.",
model={16882},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Bonepicker Felfeeders around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Bonepicker Felfeeder_. |cast Tame Beast##1515 |goto Blasted Lands,58.4,33.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Red Two-Headed Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Two-Headed Vulture pet.",
model={34048},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Searing Rocs around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Searing Roc_. |cast Tame Beast##1515 |goto Tanaris,41.4,62.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\White Two-Headed Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Two-Headed Vulture pet.",
model={20348},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Trachela around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Trachela_. |cast Tame Beast##1515 |goto Terokkar Forest,43.2,51.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\Yellow Two-Headed Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Two-Headed Vulture pet.",
model={37536},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Spiteflayer around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Spiteflayer_. |cast Tame Beast##1515 |goto Blasted Lands,62.6,36.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Black Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Vulture pet.",
model={1229},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Taloned Swoops around this area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Taloned Swoop_. |cast Tame Beast##1515 |goto Mulgore,52.8,21.4
Click here to see another location for this pet |next |confirm
step
Search for Greater Fleshrippers around this area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Greater Fleshripper_. |cast Tame Beast##1515 |goto Westfall,59.8,60.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Blue Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Vulture pet.",
model={507},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Dread Swoops around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Dread Swoop_. |cast Tame Beast##1515 |goto Desolace,65.0,27.6
Click here to see another location for this pet |next |confirm
step
Search for Sky Shadows along the roads in this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Sky Shadow_. |cast Tame Beast##1515 |goto Deadwind Pass,38.0,41.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Brown Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Vulture pet.",
model={410},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Dread Swoops around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Dread Swoop_. |cast Tame Beast##1515 |goto Desolace,65.0,27.6
Click here to see another location for this pet |next |confirm
step
Search for Sky Shadows along the roads in this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Sky Shadow_. |cast Tame Beast##1515 |goto Deadwind Pass,38.0,41.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Ghostly Blue Vulture (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Ghostly Blue Vulture pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37992},
},[[
step
Search for Bonechewer
|tip It will be flying around the area.
|tip It is level 1-30, depending on your level.
Use your Tame Beast ability on _Bonechewer_ |cast Tame Beast##1515 |goto Tirisfal Glades/0 32.6,46.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Red Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Vulture pet.",
model={7348},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Fire Rocs around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Fire Roc_. |cast Tame Beast##1515 |goto Tanaris,45.0,40.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\White Vulture",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Vulture pet.",
model={37577},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Zaricotl around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Zaricotl_. |cast Tame Beast##1515 |goto Badlands,57.0,42.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Black Dragonhawk (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Dragonhawk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45201},
},[[
step
Search for Sunwing
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Sunwing_ |cast Tame Beast##1515 |goto Burning Steppes/0 9.0,54.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Gray Dragonhawk (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Dragonhawk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45200},
},[[
step
Search for Manas
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Manas_ |cast Tame Beast##1515 |goto Winterspring/0 64.0,80.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Orange Dragonhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Dragonhawk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={17547},
},[[
step
Search for a Feral Dragonhawk Hatchling
|tip They are level 1-10, depending on your level.
Use your Tame Beast ability on a _Feral Dragonhawk Hatchling_ |cast Tame Beast##1515 |goto Eversong Woods/0 44.6,56.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Orange and Red Dragonhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Red Dragonhawk pet.",
model={17545},
condition_suggested=function() return level>=1 and level<=10 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for the Crazed Dragonhawks around this area.
|tip They are level 1-10, depending on your level.
Use your Tame Beast ability on a _Crazed Dragonhawk_. |cast Tame Beast##1515 |goto Eversong Woods,40.0,69.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Pink and Purple Dragonhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink and Purple Dragonhawk pet.",
model={20263},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Eclipsion Dragonhawks around this area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Eclipsion Dragonhawk_. |cast Tame Beast##1515 |goto Shadowmoon Valley,47.6,68.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Purple and Cyan Dragonhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple and Cyan Dragonhawk pet.",
model={19663},
condition_suggested=function() return level>=27 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for the Sunblade Dragonhawks around this area.
|tip They are level 27-30, depending on your level.
Use your Tame Beast ability on a _Sunblade Dragonhawk_. |cast Tame Beast##1515 |goto Sunwell Plateau,34.6,56.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Red Dragonhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Dragonhawk pet.",
model={19685},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
The Bloodfalcon will be before and after a bridge.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Bloodfalcon_. |cast Tame Beast##1515 |goto The Botanica,49.8,56.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Dragonhawks\\Yellow and Pink Dragonhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow and Pink Dragonhawk pet.",
model={37573},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Amani Dragonhawks around this area.
|tip They are level 32-35, depending on your level.
Use your Tame Beast ability on a _Amani Dragonhawk_. |cast Tame Beast##1515 |goto Zul'Aman,46.4,90.8
Click here to see another location for this pet |next |confirm
step
The Amani Dragonhawk Hatchlings spawn during the boss encounter.
|tip They are level 32-35, depending on your level.
Use your Tame Beast ability on a _Amani Dragonhawk Hatchling_. |cast Tame Beast##1515 |goto Zul'Aman,56.4,71.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Beige Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Beige Moth pet.",
model={17574},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Teromoths around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Teromoth_. |cast Tame Beast##1515 |goto Terokkar Forest,45.4,31.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Blue and Magenta Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Magenta Moth pet.",
model={17709},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Royal Blue Flutterers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Royal Blue Flutterer_. |cast Tame Beast##1515 |goto Bloodmyst Isle,44.6,56.2
Click here to see another location for this pet |next |confirm
step
Search for Shimmerwing Moths around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Shimmerwing Moth_. |cast Tame Beast##1515 |goto Netherstorm,44.6,55.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Blue and Yellow Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Yellow Moth pet.",
model={17798},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Teromoths around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Teromoth_. |cast Tame Beast##1515 |goto Terokkar Forest,45.4,31.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Gray Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Moth pet.",
model={37566},
condition_suggested=function() return level>=1 and level<=10 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Vale Moth around this area.
|tip They are level 1-10, depending on your level.
Note that if you are Horde you will likely die trying to attain this pet.
Use your Tame Beast ability on a _Vale Moth_. |cast Tame Beast##1515 |goto Azuremyst Isle,80.6,42.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Green and Blue Moth (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Blue Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46831},
},[[
step
Search for Thicket
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Thicket_ |cast Tame Beast##1515 |goto Felwood/0 59.6,6.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Green and Red Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Red Moth pet.",
model={17795},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Vicious Termoth around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Vicious Teromoth_. |cast Tame Beast##1515 |goto Terokkar Forest,45.0,22.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Red and Beige Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Beige Moth pet.",
model={23316},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Bloodspore Moth around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Bloodspore Moth_. |cast Tame Beast##1515 |goto Borean Tundra,52.8,53.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\White Moth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Moth pet.",
model={23237},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Aspatha the Broodmother here.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Aspatha the Broodmother_. |cast Tame Beast##1515 |goto Borean Tundra,48.6,59.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\White and Yellow Moth (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White and Yellow Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46551},
},[[
step
Search for Dustwing
|tip It is level 7-30, depending on your level.
Use your Tame Beast ability on _Dustwing_ |cast Tame Beast##1515 |goto Hillsbrad Foothills/0 28.6,83.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Nether Rays\\Blue Nether Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Nether Ray pet.",
model={19404},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Marshfang Rippers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Marshfang Ripper_. |cast Tame Beast##1515 |goto Zangarmarsh,74.8,49.0
Click here to see another location for this pet |next |confirm
step
Search for Marshfang Slicers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Marshfang Slicer_. |cast Tame Beast##1515 |goto Zangarmarsh,35.0,59.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Nether Rays\\Gold Nether Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gold Nether Ray pet.",
model={21282},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Aether Rays around this area.
|tip They are level 20-30, depending on your level.
You can find more between the above coordinates and [30.4,64.4].
Use your Tame Beast ability on a _Aether Ray_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,30.6,51.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Nether Rays\\Green Nether Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Nether Ray pet.",
model={19405},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Bloodthirsty Marshfang around this area.
|tip They are level 10-30, depending on your level.
You can find around [41.4,59.6].
Use your Tame Beast ability on a _Bloodthirsty Marshfang_. |cast Tame Beast##1515 |goto Zangarmarsh,53.8,67.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Nether Rays\\Purple Nether Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Nether Ray pet.",
model={19400},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for "Count" Ungula around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _"Count" Ungula_. |cast Tame Beast##1515 |goto Zangarmarsh,32.4,59.6
Click here to see another location for this pet |next |confirm
step
Search for Nether Rays around this area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Nether Ray_. |cast Tame Beast##1515 |goto Netherstorm,45.4,71.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Nether Rays\\Red Nether Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Nether Ray pet.",
model={20596},
condition_suggested=function() return level>=25 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Netherskates around this area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Netherskate_. |cast Tame Beast##1515 |goto Shadowmoon Valley,69.2,67.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Serpents\\Arcane Wyrms\\Blue Arcane Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Arcane Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46684},
},[[
step
Search for an Arcane Wyrm
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on an _Arcane Wyrm_ |cast Tame Beast##1515 |goto Dragonblight/0 32.6,62.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Serpents\\Arcane Wyrms\\Purple Arcane Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Arcane Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={23333},
},[[
step
Search for an Arcane Serpent
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on an _Arcane Serpent_ |cast Tame Beast##1515 |goto Borean Tundra/0 29.2,26.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Serpents\\Arcane Wyrms\\Red Arcane Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Arcane Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46985},
},[[
step
Enter the cave |goto Silithus/0 70.21,16.11 < 20
Follow the path |goto Silithus/13 34.12,65.98 < 15
Follow the path down |goto 49.41,56.24 < 15
Follow the path up |goto 59.82,67.05 < 15
Search for Acroniss
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability _Acroniss_ |cast Tame Beast##1515 |goto 59.43,84.57
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Serpents\\Arcane Wyrms\\White Arcane Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Arcane Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={23329},
},[[
step
Search for a Spirit of the North
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Spirit of the North_ |cast Tame Beast##1515 |goto Borean Tundra/0 28.8,33.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Blue Sporebat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Sporebat pet.",
model={17751},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sporebats around this area.
|tip They are level 10-30, depending on your level.
You can find more around [40.2,53.6].
Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,64.6,55.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Brown Sporebat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Sporebat pet.",
model={18029},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sporebats around this area.
|tip They are level 10-30, depending on your level.
You can find more around [40.2,53.6].
Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,64.6,55.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Green Sporebat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Sporebat pet.",
model={17753},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Serch for Young Sporebats around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Young Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,74.0,42.0
Click here to see another location for this pet |next |confirm
step
Search for Greater Sporebats around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Greater Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,16.2,31.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Boss Wasps\\Blue Boss Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Boss Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25860},
},[[
step
Search for a Sapphire Hive Wasp
|tip They are level 20-30, depending on your level.
|tip They are flying up in the air in the area.
Use your Tame Beast ability on a _Sapphire Hive Wasp_ |cast Tame Beast##1515 |goto Sholazar Basin/0 61.4,77.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Boss Wasps\\Blue and Red Boss Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Red Boss Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25857},
},[[
step
Search for Stinglasher
|tip They are level 15-30, depending on your level.
|tip It patrols around the area, so some searching may be required.
Use your Tame Beast ability on _Stinglasher_ |cast Tame Beast##1515 |goto Feralas/0 76.0,61.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Boss Wasps\\Green and Red Boss Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Red Boss Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={15739},
},[[
step
You can tame Princess Huhuran in the Temple of Ahn'Qiraj
|tip Princess Huhuran will be a boss level elite.
Click here to load the Temple of Ahn'Qiraj raid guide for assistance |confirm |next "Dungeon Guides\\Classic Raids\\Temple of Ahn'Qiraj"
Use your Tame Beast ability on _Princess Huhuran_ |cast Tame Beast##1515 |goto Ahn'Qiraj/2 43.5,50.3
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Boss Wasps\\Orange Boss Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Boss Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={26359},
},[[
step
Enter the cave |goto Sholazar Basin/0 59.45,79.09 < 15
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Sapphire Hive Queen_ |cast Tame Beast##1515 |goto 57.2,79.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Green Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={35956},
},[[
step
Search for an Ironwood Buzzer
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on an _Ironwood Buzzer_ |cast Tame Beast##1515 |goto Felwood/0 49.8,30.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Purple with Purple Glow Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple with Purple Glow Firefly pet.",
model={19252},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Marshlight Bleeder around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Marshlight Bleeder_. |cast Tame Beast##1515 |goto Zangarmarsh,25.8,33.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Red Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Firefly pet.",
model={18724},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Blacksting around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Blacksting_. |cast Tame Beast##1515 |goto Zangarmarsh,49.8,59.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Yellow Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Firefly pet.",
model={18723},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Bogflare Needler around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Bogflare Needler_. |cast Tame Beast##1515 |goto Zangarmarsh,39.6,34.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Black Wasp (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Wasp pet.",
model={37579},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Rex Ashil around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Rex Ashil_. |cast Tame Beast##1515 |goto Silithus,52.2,24.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Blue and Red Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Red Wasp pet.",
model={29113},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Sapphire Hive Drone around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Sapphire Hive Drone_. |cast Tame Beast##1515 |goto Sholazar Basin,61.6,79.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Blue Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Wasp pet.",
model={37861},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for a Florawing Needler around the area.
|tip They are level 32-35, depending on your level.
You can find more around [44.0,51.2].
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub,33.0,49.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Copper Wasp (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Copper Wasp pet.",
model={37548},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Silithus
path follow strict;loop off;ants straight
path	33.8,53.0	32.0,56.2	28.6,53.4
path	26.4,62.2	31.4,63.2
Search for Zora around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Zora_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Green and Red Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Red Wasp pet.",
model={37743},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for a Ferndweller Wasp around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Ferndweller Wasp_. |cast Tame Beast##1515 |goto Uldum,57.8,47.6
Click here to see another location for this pet |next |confirm
step
Search for a Florawing Needlers around the area.
|tip They are level 32-35, depending on your level.
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub,32.0,47.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Green Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Wasp pet.",
model={482},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Zukk'ash Wasps around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Zukk'ash Wasp_. |cast Tame Beast##1515 |goto Feralas,75.6,62.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Orange Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Wasp pet.",
model={37859},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Florawing Needlers around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub 32.8,49.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Purple Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Wasp pet.",
model={37860},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Florawing Needlers around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub 32.8,49.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Red Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Wasp pet.",
model={92},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Zukk'ash Stingers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Zukk'ash Stinger_. |cast Tame Beast##1515 |goto Feralas,78.8,64.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Tan Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Wasp pet.",
model={36034},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Silithid Wasps around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Silithid Wasp_. |cast Tame Beast##1515 |goto Thousand Needles,70.4,86.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\White Wasp (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Wasp pet.",
model={11142},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Qirot around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Qirot_. |cast Tame Beast##1515 |goto Feralas,76.6,61.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Yellow Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Wasp pet.",
model={11090},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Gorishi Wasps around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Gorishi Wasp_. |cast Tame Beast##1515 |goto Un'Goro Crater,53.4,76.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Blue Spiked Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={16901},
},[[
step
Search for an Ice Serpent
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on an _Ice Serpent_ |cast Tame Beast##1515 |goto Grizzly Hills/0 13.4,59.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Blue and White Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and White Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46990},
},[[
step
Search for Sparkwing
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Sparkwing_ |cast Tame Beast##1515 |goto Stonetalon Mountains/0 58.8,86.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Gray Spiked Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19704},
},[[
step
Search for a Swiftwing Shredder
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Swiftwing Shredder_ |cast Tame Beast##1515 |goto Netherstorm/0 67.8,61.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Gray and Red Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray and Red Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47120},
},[[
step
Search for Ionis
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Ionis_ |cast Tame Beast##1515 |goto Swamp of Sorrows/0 39.8,35.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Gray and Yellow Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray and Yellow Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46995},
},[[
step
Search for Skyshadow
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Skyshadow_ |cast Tame Beast##1515 |goto Thousand Needles/0 94.0,58.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Green Spiked Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20094},
},[[
step
Search for a Felsworn Scalewing
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Felsworn Scalewing_ |cast Tame Beast##1515 |goto Blade's Edge Mountains/0 72.8,29.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Red and Gray Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red and Gray Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47124},
},[[
step
Search for Anith
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Anith_ |cast Tame Beast##1515 |goto Dustwallow Marsh/0 32.14,31.09
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Red Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20838},
},[[
step
Search for Yukiko
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Yukiko_ |cast Tame Beast##1515 |goto Swamp of Sorrows/0 69.8,67.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\White and Gray Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White and Gray Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47126},
},[[
step
Search for Yukiko
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Yukiko_ |cast Tame Beast##1515 |goto Swamp of Sorrows/0 69.8,67.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\White Spiked Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25460},
},[[
step
Search for a Scion of Quetz'lun
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Scion of Quetz'lun_ |cast Tame Beast##1515 |goto Zul'Drak/0 72.4,58.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Yellow Spiked Wind Serpent (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46278},
},[[
step
Search for Chiaa
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Chiaa_ |cast Tame Beast##1515 |goto Burning Steppes/0 35.2,26.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Dark Blue Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Blue Wind Serpent pet.",
model={3006},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Deviate Dreadfang around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Deviate Dreadfang_. |cast Tame Beast##1515 |goto Wailing Caverns,53.6,66.6
Click here to see another location for this pet |next |confirm
step
Search for Thunderhawk Cloudscrapers around this area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Thunderhawk Cloudscraper_. |cast Tame Beast##1515 |goto Southern Barrens,46.4,78.0
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Dark Orange Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Orange Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1742},
},[[
step
Search for a Noxious Flayer
|tip They sparsely patrol around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Noxious Flayer_ |cast Tame Beast##1515 |goto Dustwallow Marsh/0 40.8,25.6
You can find another here |goto 47.75,26.12
|tip In general, there will be one flying around the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Green Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Wind Serpent pet.",
model={4091},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Noxious Shredders around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Noxious Shredder_. |cast Tame Beast##1515 |goto Dustwallow Marsh,41.4,54.4
Click here to see another location for this pet |next |confirm
step
Search for Venomous Cloud Serpents around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Venomous Cloud Serpent_. |cast Tame Beast##1515 |goto Thousand Needles 94.2,57.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Light Orange Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Light Orange Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19793},
},[[
step
Enter the cave |goto Northern Barrens/0 38.95,69.22 < 20
Search for a Deviate Coiler Hatchling
|tip This takes some time to spawn.
|tip Kill Deviate Coilers to try forcing them to spawn.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Deviate Coiler Hatchling_ |cast Tame Beast##1515 |goto 39.8,66.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Orange-Winged Red Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange-Winged Red Wind Serpent pet.",
model={2699},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Vale Screechers around this area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Vale Screecher_. |cast Tame Beast##1515 |goto Feralas,43.6,36.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\Red Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Wind Serpent pet.",
model={2702},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Azzere the Skyblade around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Azzere the Skyblade_. |cast Tame Beast##1515 |goto Southern Barrens,43.88,57.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wind Serpents\\White Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Wind Serpent pet.",
model={7569},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Arash-ethis around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Arash-ethis_. |cast Tame Beast##1515 |goto Feralas,38.8,24.6
Click here to see another location for this pet |next |confirm
step
Search for Hayoc around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Hayoc_. |cast Tame Beast##1515 |goto Dustwallow Marsh,47.8,61.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Black Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Spiked Crab pet.",
model={32143},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Spiny Rock Crab around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Spiny Rock Crab_. |cast Tame Beast##1515 |goto Dustwallow Marsh,68.4,45.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32022},
},[[
step
Search for a _Spiny Rock Crab_
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Spiny Rock Crab_ |cast Tame Beast##1515 |goto Dustwallow Marsh/0 67.02,43.77
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Black Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Marked Black Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
Search for a _Pyreshell Scuttler_
|tip They are level 30-35, depending on your level.
|tip They are located at the bottom of the canyon.
|tip These share a spawn with other crabs in this location. Killing them may cause the color you desire to spawn.
Use your Tame Beast ability on a _Pyreshell Scuttler_ |cast Tame Beast##1515 |goto Abyssal Depths/0 45.2,59.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Gem Crab (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Tinged Steel Blue Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61702},
},[[
step
To get this pet, you will need to unlock the Molten Front daily area
|tip Refer to the Molten Front guide to achieve this.
Click here to load "The Molten Front" guide |confirm |next "Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive"
Unlock the Molten Front |complete completedq(25372)
step
Follow the path	|goto Molten Front/0 42.12,79.80 < 20
Follow the path	|goto 37.05,72.17 < 20
Follow the path	|goto 37.63,62.62 < 20
Follow the path	|goto 35.33,54.68 < 20
|tip You will need to jump between the platforms to reach this pet.
|tip Be on the look out for cracked platforms, as they will disappear soon after the cracks show up.
Search for _Karkin_
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Karkin_ |cast Tame Beast##1515 |goto 33.6,52.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Green Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Spiked Crab pet.",
model={32023},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Felscale Crawlers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Felscale Crawler_. |cast Tame Beast##1515 |goto Blasted Lands,71.0,75.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Green and Blue Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Blue Spiked Crab pet.",
model={32112},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Enormous Sand Crabs around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Enormous Sand Crab_. |cast Tame Beast##1515 |goto Shimmering Expanse,42.6,35.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Orange Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Spiked Crab pet.",
model={32025},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Silversand Burrowers around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Silversand Burrower_. |cast Tame Beast##1515 |goto Shimmering Expanse,54.2,83.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Black Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple-Marked Black Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
Search for a _Pyreshell Scuttler_
|tip They are level 30-35, depending on your level.
|tip They are located at the bottom of the canyon.
|tip These share a spawn with other crabs in this location. Killing them may cause the color you desire to spawn.
Use your Tame Beast ability on a _Pyreshell Scuttler_ |cast Tame Beast##1515 |goto Abyssal Depths/0 45.2,59.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Blue Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Marked Black Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
Search for a _Pyreshell Scuttler_
|tip They are level 30-35, depending on your level.
|tip They are located at the bottom of the canyon.
|tip These share a spawn with other crabs in this location. Killing them may cause the color you desire to spawn.
Use your Tame Beast ability on a _Pyreshell Scuttler_ |cast Tame Beast##1515 |goto Abyssal Depths/0 45.2,59.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Red Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Spiked Crab pet.",
model={32075},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Spineshell Pincers around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Spineshell Pincer_. |cast Tame Beast##1515 |goto Shimmering Expanse,46.8,52.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Red-Black Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Black Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={36282},
},[[
step
Search for _Barnacle Jim_
|tip He is level 15-30, depending on your level.
|tip It will be walking around underwater.
Use your Tame Beast ability on _Barnacle Jim_ |cast Tame Beast##1515 |goto Thousand Needles/0 41.2,36.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Blue Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Crab pet.",
model={979},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Sea Crawler around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Sea Crawler_. |cast Tame Beast##1515 |goto Westfall,31.8,22.2
Click here to see another location for this pet |next |confirm
step
Search for Clattering Crawler around the area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Clattering Crawler_. |cast Tame Beast##1515 |goto Ashenvale,15.2,22.8
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Bronze Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Bronze Crab pet.",
model={28827},
condition_suggested=function() return level>=1 and level<=10 end,
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Barbed Crawler around the area.
|tip They are level 1-10, depending on your level.
Use your Tame Beast ability on a _Barbed Crawler_. |cast Tame Beast##1515 |goto Azuremyst Isle,22.8,73.2
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Desert Crawler around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Desert Crawler_. |cast Tame Beast##1515 |goto Tanaris,53.4,34.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Silt Crawlers around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Silt Crawler_. |cast Tame Beast##1515 |goto Swamp of Sorrows,81.6,17.2
Click here to see the previous location for this pet |next "location2" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Red Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Crab pet.",
model={31269},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Mature Surf Crawlers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Mature Surf Crawler_. |cast Tame Beast##1515 |goto Durotar,59.6,23.8
Click here to see another location for this pet |next |confirm
step
Search for Harbor Crawlers around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Harbor Crawler_. |cast Tame Beast##1515 |goto Wetlands,18.2,53.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\White Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Crab pet.",
model={999},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Encrusted Surf Crawler around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Encrusted Surf Crawler_. |cast Tame Beast##1515 |goto Durotar,57.4,11.2
Click here to see another location for this pet |next |confirm
step
Search for Spined Crawler around the area.
|tip They are level 7-30, depending on your level.
Use your Tame Beast ability on a _Spined Crawler_. |cast Tame Beast##1515 |goto Ashenvale,14.8,16.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Greater Crocolisks\\Blue Greater Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Greater Crocolisk pet.",
model={37613},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Baradin Crocolisks around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Baradin Crocolisk_. |cast Tame Beast##1515 |goto Tol Barad,39.4,42.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Greater Crocolisks\\Brown Greater Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Greater Crocolisk pet.",
model={32812},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Riverbed Crocolisks around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Riverbed Crocolisk_. |cast Tame Beast##1515 |goto Uldum,57.6,50.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Greater Crocolisks\\Green Greater Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Greater Crocolisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32812},
},[[
step
Search for an _Oasis Crocolisk_
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on the _Oasis Crocolisk_ |cast Tame Beast##1515 |goto Uldum/0 68.2,77.0
You can find more along the coast line here |goto 63.6,79.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Greater Crocolisks\\Purple Greater Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Greater Crocolisk pet.",
model={40269},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
kill Manglemaw##58754 |goto Valley of the Four Winds/0 57.3,26.2
|tip Once Manglemaw is killed Manglemaw's Mother will appear.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on _Manglemaw's Mother_. |cast Tame Beast##1515 |goto Valley of the Four Winds/0 57.3,26.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Greater Crocolisks\\White Greater Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Greater Crocolisk pet.",
model={37748},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Neferset Crocolisks around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Neferset Crocolisk_. |cast Tame Beast##1515 |goto Uldum,63.6,79.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Green Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Crocolisk pet.",
model={1035},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Dreadmaw Toothgnashers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Dreadmaw Toothgnasher_. |cast Tame Beast##1515 |goto Durotar,40.2,33.6
Click here to see another location for this pet |next |confirm
step
Search for Wetlands Crocolisk around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Wetlands Crocolisk_. |cast Tame Beast##1515 |goto Wetlands,27.6,32.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Gray Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Crocolisk pet.",
model={1250},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Dreadmaw Crocolisk around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Dreadmaw Crocolisk_. |cast Tame Beast##1515 |goto Durotar,37.0,20.8
Click here to see another location for this pet |next |confirm
step
Search for River Crocolisks around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _River Crocolisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn,43.8,18.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\White Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Crocolisk pet.",
model={2996},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Horrorjaw around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Horrorjaw_. |cast Tame Beast##1515 |goto Wetlands,31.0,22.6
Click here to see another location for this pet |next |confirm
step
Search for Barbscale Crocolisks around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on a _Barbscale Crocolisk_. |cast Tame Beast##1515 |goto Netherstorm,46.6,51.6
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Yellow Crocolisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Crocolisk pet.",
model={1080},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Loch Crocolisk around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Loch Crocolisk_. |cast Tame Beast##1515 |goto Loch Modan,51.8,63.6
Click here to see another location for this pet |next |confirm
step
Search for Drywallow Snapper around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Drywallow Snapper_. |cast Tame Beast##1515 |goto Dustwallow Marsh,41.0,37.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Ancient Turtles\\Fiery Ancient Turtle (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fiery Ancient Turtle pet.",
model={37282},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	51.8,84.0	54.0,80.6	55.8,75.6
path	53.2,73.8	52.0,72.2	48.8,72.0
Search for Terrorpene in the lava at along the waypoints.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Terrorpene_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Ancient Turtles\\Green Ancient Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Ancient Turtle pet.",
model={37143},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ghamoo-ra around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Ghamoo-Ra_. |cast Tame Beast##1515 |goto Blackfathom Deeps 33.3,58.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Blue Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Turtle pet.",
model={6368},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Oasis Snapjaws around the area.
|tip They are level 5-30, depending on your level.
There are more around [56.6,81.6].
Use your Tame Beast ability on a _Oasis Snapjaw_. |cast Tame Beast##1515 |goto Northern Barrens,41.8,74.8
Click here to see another location for this pet |next |confirm
step
Search for Gammerita around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Gammerita_. |cast Tame Beast##1515 |goto The Hinterlands,79.6,70.2
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Green Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Turtle pet.",
model={28819},
condition_suggested=function() return level>=1 and level<=10 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Lake Snappers around the area.
|tip They are level 1-10, depending on your level.
Use your Tame Beast ability on a _Lake Snapper_. |cast Tame Beast##1515 |goto Eversong Woods,65.6,76.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Gray Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Turtle pet.",
model={37770},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Mudrock Spikeshell around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Mudrock Spikeshell_. |cast Tame Beast##1515 |goto Dustwallow Marsh 65.6,38.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Orange Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Turtle pet.",
model={5026},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Saltwater Snapjaws around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Saltwater Snapjaw_. |cast Tame Beast##1515 |goto The Hinterlands,78.0,65.6
Click here to see another location for this pet |next |confirm
step
Search for Sorrowmurk Snapjaws around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Sorrowmurk Snapjaw_. |cast Tame Beast##1515 |goto Swamp of Sorrows,75.6,72.4
Click here to see the previous location for this pet |next "start" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\White Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Turtle pet.",
model={28820},
condition_suggested=function() return level>=1 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Plagued Snappers around the area.
|tip They are level 1-30, depending on your level.
Use your Tame Beast ability on a _Plagued Snapper_. |cast Tame Beast##1515 |goto Ghostlands,62.8,57.6
Click here to see another location for this pet |next |confirm
step
label "location2"
Search for Stranded Sparkleshells around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Stranded Sparkshell_. |cast Tame Beast##1515 |goto Thousand Needles,65.2,51.8
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "start" |confirm
step
Search for Sand Turtles around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Sand Turtle_. |cast Tame Beast##1515 |goto Borean Tundra,32.4,54.6
Click here to see the previous location for this pet |next "location2" |confirm
]])
