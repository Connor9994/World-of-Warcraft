local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Armored Frostboar",{
keywords={"armored","frostboar","boar","ground","mount"},
model={59347},
mounts={171629},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Armored Frostboar mount.",
},[[
step
This mount requires the achievement _Advanced Husbandry_
_Please refer_ to our Achievement Guide to assist with this mount
_Complete the _Advanced Husbandry achievement_ |achieve 9705
step
Armored Frostboar should be _delivered via in game mail_
collect Armored Frostboar##116668
learnmount Armored Frostboar##171629 |use Armored Frostboar##116668
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Armored Frostwolf",{
keywords={"armored","frostwolf","wolf","ground","mount"},
model={59753},
mounts={171838},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Armored Frostwolf mount.",
},[[
step
This mount requires the achievement _The Stable Master_
_Complete the _The Stable Master achievement_ |achieve 9706
step
Armored Frostwolf should be _delivered via in game mail_
collect Armored Frostwolf##116781
learnmount Armored Frostwolf##171838 |use Armored Frostwolf##116781
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Blacksteel Battleboar",{
keywords={"blacksteel","battleboar","boar","ground","mount"},
model={59349},
mounts={171627},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Blacksteel Battleboar mount.",
},[[
step
This mount requires the Guild achievement _Guild Glory of the Draenor Raider_
_Complete the Guild Glory of the Draenor Raider achievement_ |achieve 9669
step
Blacksteel Battleboar should be _delivered via in game mail_
collect Blacksteel Battleboar##116666
learnmount Blacksteel Battleboar##171627 |use Blacksteel Battleboar##116666
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Challenger's War Yeti",{
keywords={"challenger","challenger's","war","yeti","ground","mount"},
model={60577},
mounts={171848},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Challenger's War Yeti mount.",
},[[
step
This mount requires the achievement _Challenge Warlord: Silver_
_Complete the Challenge Warlord: Silver achievement_ |achieve 8898
step
Challenger's War Yeti should be _delivered via in game mail_
collect Challenger's War Yeti##116791
learnmount Challenger's War Yeti##171848 |use Challenger's War Yeti##116791
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Frostplains Battleboar",{
keywords={"frostplains","battleboar","boar","ground","mount"},
model={59344},
mounts={171632},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Frostplains Battleboar mount.",
},[[
step
This mount requires the achievement _Glory of the Draenor Hero_
_Complete the Glory of the Draenor Hero achievement_ |achieve 9396
step
Frostplains Battleboar should be _delivered via in game mail_
collect Frostplains Battleboar##116670
learnmount Frostplains Battleboar##171632 |use Frostplains Battleboar##116670
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Gorestrider Gronnling",{
keywords={"gorestrider","gronnling","ground","mount"},
model={59159},
mounts={171436},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Gorestrider Gronnling mount.",
},[[
step
This mount requires the achievement _Glory of the Draenor Raider_
_Complete the Glory of the Draenor Raider achievement_ |achieve 8985
step
Gorestrider Gronnling should be _delivered via in game mail_
collect Gorestrider Gronnling##116383
learnmount Gorestrider Gronnling##171436 |use Gorestrider Gronnling##116383
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Infernal Direwolf",{
keywords={"infernal","direwolf","ground","mount"},
model={63873},
mounts={186305},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Infernal Direwolf mount.",
},[[
step
This mount requires the achievement _Glory of the Hellfire Raider_
_Complete the Glory of the Hellfire Raider achievement_ |achieve 10149
step
Infernal Direwolf should be _delivered via in game mail_
collect Infernal Direwolf##127140
learnmount Infernal Direwolf##186305 |use Infernal Direwolf##127140
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Chauffeured Chopper",{
keywords={"chauffeured","chopper","ground","mount"},
model={61803},
mounts={9909},
patch='unknown',
mounttype='unknown',
description="\nThis guide will help you earn the Chauffeured Chopper mount.",
},[[
step
This mount requires the achievement _Heirloom Hoarder_
_Complete the Heirloom Hoarder achievement_ |achieve 9909
step
Chauffeured Chopper should be _delivered via in game mail_
|tip The mount should be sent to the character that triggers the achievement, this may take a few minutes.
collect Chauffeured Chopper##122703
learnmount Chauffeured Chopper##186305 |use Chauffeured Chopper##122703
|tip This mount can be used at level 1.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Trained Icehoof",{
keywords={"trained","icehoof","clefthoof","ground","mount"},
model={59320},
mounts={171617},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Trained Icehoof mount.",
},[[
step
This mount requires a _level 1 or higher Stables_ in your Garrison
Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned
|tip Quests involve killing monsters around Draenor while mounted on your mount-in-training.
|confirm
step
talk Tormak the Scarred##86979
accept Capturing a Clefthoof##36912 |goto Frostwall 58.81,48.79
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,51.0
Use your _Clefthoof Lasso_ on the Young Icehoof in the area |use Clefthoof Lasso##118287 |q 36912/1 |goto Frostfire Ridge/0 54.0,20.5
step
talk Tormak the Scarred##86979
turnin Capturing a Clefthoof##36912 |goto Frostwall 58.81,48.79
step
talk Tormak the Scarred##86979 |goto Frostwall 58.81,48.79
You will only be able to _complete 1 of the following quests_ per day
accept Clefthoof Training: Riplash##37050 |or |only if not completedq(37050)
accept Clefthoof Training: Gezz'ran##37051 |or |only if not completedq(37051)
accept Clefthoof Training: Bulbapore##37052 |or |only if not completedq(37052)
accept Clefthoof Training: Cruel Ogres##37053 |or |only if not completedq(37053)
accept Clefthoof Training: Darkwing Roc##37054 |or |only if not completedq(37054)
accept Clefthoof Training: Ironbore##37057 |or |only if not completedq(37057)
accept Clefthoof Training: Moth of Wrath##37055 |or |only if not completedq(37055)
accept Clefthoof Training: Orc Hunters##37058 |or |only if not completedq(37058)
accept Clefthoof Training: The Garn##37059 |or |only if not completedq(37059)
accept Clefthoof Training: Thundercall##37056 |or |only if not completedq(37056)
accept Clefthoof Training: Great-Tusk##37048 |or |only if not completedq(37048)
accept Clefthoof Training: Rakkiri##37049 |or |only if not completedq(37049)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q 37050/1 |goto Gorgrond/0 50.2,38.4
|only if haveq(37050)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q 37051/1 |goto Talador/0 31.5,54.9
|only if haveq(37051)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q 37052/1 |goto Spires of Arak/0 66.3,75.3
|only if haveq(37052)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q 37053/1 |goto Nagrand D/0 79.2,71.3
|only if haveq(37053)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q 37054/1 |goto Nagrand D/0 68.4,20.3
|only if haveq(37054)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q 37057/1 |goto Nagrand D/0 53.1,77.4
|only if haveq(37057)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q 37055/1 |goto Nagrand D/0 43.6,69.3
|only if haveq(37055)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q 37058/1 |goto Nagrand D/0 69.6,34.6
|only if haveq(37058)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Maimclaw##87107 |q 37059/1 |goto Nagrand D/0 63.8,80.9
|only if haveq(37059)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q 37056/1 |goto Nagrand D/0 90.6,23.6
|only if haveq(37056)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q 37048/1 |goto Shadowmoon Valley D/0 62.7,39.1
|only if haveq(37048)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q 37049/1 |goto Frostfire Ridge/0 72.7,70.0
|only if haveq(37049)
step
talk Tormak the Scarred##86979 |goto Frostwall 58.81,48.79
You will only be able to _complete 1 of the following quests_ per day
turnin Clefthoof Training: Riplash##37050 |only if haveq(37050)
turnin Clefthoof Training: Gezz'ran##37051 |only if haveq(37051)
turnin Clefthoof Training: Bulbapore##37052 |only if haveq(37052)
turnin Clefthoof Training: Cruel Ogres##37053 |only if haveq(37053)
turnin Clefthoof Training: Darkwing Roc##37054 |only if haveq(37054)
turnin Clefthoof Training: Ironbore##37057 |only if haveq(37057)
turnin Clefthoof Training: Moth of Wrath##37055 |only if haveq(37055)
turnin Clefthoof Training: Orc Hunters##37058 |only if haveq(37058)
turnin Clefthoof Training: The Garn##37059 |only if haveq(37059)
turnin Clefthoof Training: Thundercall##37056 |only if haveq(37056)
turnin Clefthoof Training: Great-Tusk##37048 |only if haveq(37048)
turnin Clefthoof Training: Rakkiri##37049 |only if haveq(37049)
step
collect Trained Icehoof##116656
learnmount Trained Icehoof##171617 |use Trained Icehoof##37049
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Trained Meadowstomper",{
keywords={"trained","meadowstomper","ground","mount"},
model={59340},
mounts={171623},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Trained Meadowstomper mount.",
},[[
step
This mount requires a _level 1 or higher Stables_ in your Garrison
Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned
|tip Quests involve killing monsters around Draenor while mounted on your mount-in-training.
|confirm
step
talk Tormak the Scarred##86979
accept Entangling an Elekk##36946 |goto Frostwall 58.81,48.79
step
Use your _Elekk Lasso_ on the Young Meadowstomper in the area |use Elekk Lasso##118286 |q 36946/1 |goto Nagrand D/0 84.8,39.6
step
talk Tormak the Scarred##86979
turnin Entangling an Elekk##36946 |goto Frostwall 58.81,48.79
step
talk Tormak the Scarred##86979 |goto Frostwall 58.81,48.79
You will only be able to _complete 1 of the following quests_ per day
accept Elekk Training: Cruel Ogres##37063 |or |only if not completedq(37063)
accept Elekk Training: Darkwing Roc##37064 |or |only if not completedq(37064)
accept Elekk Training: Ironbore##37067 |or |only if not completedq(37067)
accept Elekk Training: Moth of Wrath##37065 |or |only if not completedq(37065)
accept Elekk Training: Orc Hunters##37068 |or |only if not completedq(37068)
accept Elekk Training: The Garn##37069 |or |only if not completedq(37069)
accept Elekk Training: Thundercall##37066 |or |only if not completedq(37066)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q 37063/1 |goto Nagrand D/0 79.2,71.3
|only if haveq(37063)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q 37064/1 |goto Nagrand D/0 68.4,20.3
|only if haveq(37064)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q 37067/1 |goto Nagrand D/0 53.1,77.4
|only if haveq(37067)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q 37065/1 |goto Nagrand D/0 43.6,69.3
|only if haveq(37065)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q 37068/1 |goto Nagrand D/0 69.6,34.6
|only if haveq(37068)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87107 |q 37069/1 |goto Nagrand D/0 63.8,80.9
|only if haveq(37069)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q 37066/1 |goto Nagrand D/0 90.6,23.6
|only if haveq(37066)
step
talk Tormak the Scarred##86979 |goto Frostwall 58.81,48.79
You will only be able to _complete 1 of the following quests_ per day
turnin Elekk Training: Cruel Ogres##37063 |only if haveq(37063)
turnin Elekk Training: Darkwing Roc##37064 |only if haveq(37064)
turnin Elekk Training: Ironbore##37067 |only if haveq(37067)
turnin Elekk Training: Moth of Wrath##37065 |only if haveq(37065)
turnin Elekk Training: Orc Hunters##37068 |only if haveq(37068)
turnin Elekk Training: The Garn##37069 |only if haveq(37069)
turnin Elekk Training: Thundercall##37066 |only if haveq(37066)
step
collect Trained Meadowstomper##116662
learnmount Trained Meadowstomper##171623 |use Trained Meadowstomper##116662
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Trained Riverwallow",{
keywords={"trained","riverwallow","ground","mount"},
model={59743},
mounts={171638},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Trained Riverwallow mount.",
},[[
step
This mount requires a _level 1 or higher Stables_ in your Garrison
Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned
|tip Quests involve killing monsters around Draenor while mounted on your mount-in-training.
|confirm
step
talk Sage Paluna##87242
accept Requisition a Riverbeast##36945 |goto Frostwall 59.15,50.58
step
Use your _Riverbeast Lasso_ on the Young Riverwallow in the area |use Riverbeast Lasso##118285 |q 36945/1 |goto Talador/0 63.8,54.9
step
talk Sage Paluna##87242
turnin Requisition a Riverbeast##36945 |goto Frostwall 59.15,50.58
step
talk Sage Paluna##87242 |goto Frostwall 59.15,50.58
You will only be able to _complete 1 of the following quests_ per day
accept Riverbeast Training: Gezz'ran##37071 |or |only if not completedq(37071)
accept Riverbeast Training: Bulbapore##37072 |or |only if not completedq(37072)
accept Riverbeast Training: Cruel Ogres##37073 |or |only if not completedq(37073)
accept Riverbeast Training: Darkwing Roc##37074 |or |only if not completedq(37074)
accept Riverbeast Training: Ironbore##37077 |or |only if not completedq(37077)
accept Riverbeast Training: Moth of Wrath##37075 |or |only if not completedq(37075)
accept Riverbeast Training: Orc Hunters##37078 |or |only if not completedq(37078)
accept Riverbeast Training: The Garn##37079 |or |only if not completedq(37079)
accept Riverbeast Training: Thundercall##37076 |or |only if not completedq(37076)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q 37071/1 |goto Talador/0 31.5,54.9
|only if haveq(37071)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q 37072/1 |goto Spires of Arak/0 66.3,75.3
|only if haveq(37072)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q 37073/1 |goto Nagrand D/0 79.2,71.3
|only if haveq(37073)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Darkwing Roc##87088 |q 37074/1 |goto Nagrand D/0 68.4,20.3
|only if haveq(37074)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q 37077/1 |goto Nagrand D/0 53.1,77.4
|only if haveq(37077)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q 37075/1 |goto Nagrand D/0 43.6,69.3
|only if haveq(37075)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q 37078/1 |goto Nagrand D/0 69.6,34.6
|only if haveq(37078)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87107 |q 37079/1 |goto Nagrand D/0 63.8,80.9
|only if haveq(37079)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q 37076/1 |goto Nagrand D/0 90.6,23.6
|only if haveq(37076)
step
talk Sage Paluna##87242 |goto Frostwall 59.15,50.58
You will only be able to _complete 1 of the following quests_ per day
turnin Riverbeast Training: Gezz'ran##37071 |only if haveq(37049)
turnin Riverbeast Training: Bulbapore##37072 |only if haveq(37049)
turnin Riverbeast Training: Cruel Ogres##37073 |only if haveq(37049)
turnin Riverbeast Training: Darkwing Roc##37074 |only if haveq(37049)
turnin Riverbeast Training: Ironbore##37077 |only if haveq(37049)
turnin Riverbeast Training: Moth of Wrath##37075 |only if haveq(37049)
turnin Riverbeast Training: Orc Hunters##37078 |only if haveq(37049)
turnin Riverbeast Training: The Garn##37079 |only if haveq(37049)
turnin Riverbeast Training: Thundercall##37076 |only if haveq(37049)
step
collect Trained Riverwallow##116676
learnmount Trained Riverwallow##171638 |use Trained Riverwallow##116676
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Trained Rocktusk",{
keywords={"trained","rocktusk","ground","mount"},
model={59735},
mounts={171637},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Trained Rocktusk mount.",
},[[
step
This mount requires a _level 1 or higher Stables_ in your Garrison
Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned
|tip Quests involve killing monsters around Draenor while mounted on your mount-in-training.
|confirm
step
talk Tormak the Scarred##86979
accept Besting a Boar##36944 |goto Frostwall 58.81,48.79
step
Use your _Boar Lasso_ on Young Rocktusks in the area |use Boar Lasso##118288 |q 36944/1 |goto Gorgrond/0 43.9,37.3
step
talk Tormak the Scarred##86979
turnin Besting a Boar##36944 |goto Frostwall 58.81,48.79
step
talk Tormak the Scarred##86979 |goto Frostwall 58.81,48.79
You will only be able to _complete 1 of the following quests_ per day
accept Boar Training: Riplash##37032 |or |only if not completedq(37032)
accept Boar Training: Gezz'ran##37033 |or |only if not completedq(37033)
accept Boar Training: Bulbapore##37034 |or |only if not completedq(37034)
accept Boar Training: Cruel Ogres##37035 |or |only if not completedq(37035)
accept Boar Training: Darkwing Roc##37036 |or |only if not completedq(37036)
accept Boar Training: Ironbore##37039 |or |only if not completedq(37039)
accept Boar Training: Moth of Wrath##37037 |or |only if not completedq(37037)
accept Boar Training: Orc Hunters##37040 |or |only if not completedq(37040)
accept Boar Training: The Garn##37041 |or |only if not completedq(37041)
accept Boar Training: Thundercall##37038 |or |only if not completedq(37038)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q 37032/1 |goto Gorgrond/0 50.2,38.4
|only if haveq(37032)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q 37033/1 |goto Talador/0 31.5,54.9
|only if haveq(37033)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q 37034/1 |goto Spires of Arak/0 66.3,75.3
|only if haveq(37034)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q 37035/1 |goto Nagrand D/0 79.2,71.3
|only if haveq(37035)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q 37036/1 |goto Nagrand D/0 68.4,20.3
|only if haveq(37036)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q 37039/1 |goto Nagrand D/0 53.1,77.4
|only if haveq(37039)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q 37037/1 |goto Nagrand D/0 43.6,69.3
|only if haveq(37037)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q 37040/1 |goto Nagrand D/0 69.6,34.6
|only if haveq(37040)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87107 |q 37041/1 |goto Nagrand D/0 63.8,80.9
|only if haveq(37041)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q 37038/1 |goto Nagrand D/0 90.6,23.6
|only if haveq(37038)
step
talk Tormak the Scarred##86979 |goto Frostwall 58.81,48.79
You will only be able to _complete 1 of the following quests_ per day
turnin Boar Training: Riplash##37032 |only if haveq(37032)
turnin Boar Training: Gezz'ran##37033 |only if haveq(37033)
turnin Boar Training: Bulbapore##37034 |only if haveq(37034)
turnin Boar Training: Cruel Ogres##37035 |only if haveq(37035)
turnin Boar Training: Darkwing Roc##37036 |only if haveq(37036)
turnin Boar Training: Ironbore##37039 |only if haveq(37039)
turnin Boar Training: Moth of Wrath##37037 |only if haveq(37037)
turnin Boar Training: Orc Hunters##37040 |only if haveq(37040)
turnin Boar Training: The Garn##37041 |only if haveq(37041)
turnin Boar Training: Thundercall##37038 |only if haveq(37038)
step
collect Trained Rocktusk##116675
learnmount Trained Rocktusk##171637 |use Trained Rocktusk##116675
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Trained Silverpelt",{
keywords={"trained","silverpelt","talbuk","ground","mount"},
model={59365},
mounts={171831},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Trained Silverpelt mount.",
},[[
step
This mount requires a _level 1 or higher Stables_ in your Garrison
Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned
|tip Quests involve killing monsters around Draenor while mounted on your mount-in-training.
|confirm
step
talk Sage Paluna##87242
accept Taming a Talbuk##36917 |goto Frostwall 59.15,50.58
step
Use your _Talbuk Lasso_ on Young Silverpelts in the area |use Talbuk Lasso##118284 |q 36917/1 |goto Shadowmoon Valley D/0 50.3,30.1
step
talk Sage Paluna##87242
turnin Taming a Talbuk##36917 |goto Frostwall 59.15,50.58
step
talk Sage Paluna##87242 |goto Frostwall 59.15,50.58
You will only be able to _complete 1 of the following quests_ per day
accept Talbuk Training: Riplash##37095 |or |only if not completedq(37095)
accept Talbuk Training: Gezz'ran##37096 |or |only if not completedq(37096)
accept Talbuk Training: Bulbapore##37097 |or |only if not completedq(37097)
accept Talbuk Training: Cruel Ogres##37098 |or |only if not completedq(37098)
accept Talbuk Training: Darkwing Roc##37099 |or |only if not completedq(37099)
accept Talbuk Training: Ironbore##37102 |or |only if not completedq(37102)
accept Talbuk Training: Moth of Wrath##37100 |or |only if not completedq(37100)
accept Talbuk Training: Orc Hunters##37103 |or |only if not completedq(37103)
accept Talbuk Training: The Garn##37104 |or |only if not completedq(37104)
accept Talbuk Training: Thundercall##37101 |or |only if not completedq(37101)
accept Talbuk Training: Great-Tusk##37093 |or |only if not completedq(37093)
accept Talbuk Training: Rakkiri##37094 |or |only if not completedq(37094)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q 37095/1 |goto Gorgrond/0 50.2,38.4
|only if haveq(37095)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q 37096/1 |goto Talador/0 31.5,54.9
|only if haveq(37096)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q 37097/1 |goto Spires of Arak/0 66.3,75.3
|only if haveq(37097)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q 37098/1 |goto Nagrand D/0 79.2,71.3
|only if haveq(37098)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q 37099/1 |goto Nagrand D/0 68.4,20.3
|only if haveq(37099)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q 37102/1 |goto Nagrand D/0 53.1,77.4
|only if haveq(37102)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q 37100/1 |goto Nagrand D/0 43.6,69.3
|only if haveq(37100)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q 37103/1 |goto Nagrand D/0 69.6,34.6
|only if haveq(37103)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87107 |q 37104/1 |goto Nagrand D/0 63.8,80.9
|only if haveq(37104)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q 37101/1 |goto Nagrand D/0 90.6,23.6
|only if haveq(37101)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q 37093/1 |goto Shadowmoon Valley D/0 62.7,39.1
|only if haveq(37093)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Rakkiri##87085 |q 37094/1 |goto Frostfire Ridge/0 72.7,70.0
|only if haveq(37094)
step
talk Sage Paluna##87242 |goto Frostwall 59.15,50.58
You will only be able to _complete 1 of the following quests_ per day
turnin Talbuk Training: Riplash##37095 |only if haveq(37095)
turnin Talbuk Training: Gezz'ran##37096 |only if haveq(37096)
turnin Talbuk Training: Bulbapore##37097 |only if haveq(37097)
turnin Talbuk Training: Cruel Ogres##37098 |only if haveq(37098)
turnin Talbuk Training: Darkwing Roc##37099 |only if haveq(37099)
turnin Talbuk Training: Ironbore##37102 |only if haveq(37102)
turnin Talbuk Training: Moth of Wrath##37100 |only if haveq(37100)
turnin Talbuk Training: Orc Hunters##37103 |only if haveq(37103)
turnin Talbuk Training: The Garn##37104 |only if haveq(37104)
turnin Talbuk Training: Thundercall##37101 |only if haveq(37101)
turnin Talbuk Training: Great-Tusk##37093 |only if haveq(37093)
turnin Talbuk Training: Rakkiri##37094 |only if haveq(37094)
step
collect Trained Silverpelt##116774
learnmount Trained Silverpelt##171831 |use Trained Silverpelt##116774
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Trained Snarler",{
keywords={"trained","snarler","wolf","ground","mount"},
model={59757},
mounts={171841},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Trained Snarler mount.",
},[[
step
This mount requires a _level 1 or higher Stables_ in your Garrison
Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned
|tip Quests involve killing monsters around Draenor while mounted on your mount-in-training.
|confirm
step
talk Sage Paluna##87242
accept Wrangling a Wolf##36950 |goto Frostwall 59.15,50.58
step
Use your _Wolf Lasso_ on the Young Snarler in the area |use Wolf Lasso##118283 |q 36950/1 |goto Nagrand D/0 55.6,60.9
step
talk Sage Paluna##87242
turnin Wrangling a Wolf##36950 |goto Frostwall 59.15,50.58
step
talk Sage Paluna##87242 |goto Frostwall 59.15,50.58
You will only be able to _complete 1 of the following quests_ per day
accept Wolf Training: Cruel Ogres##37105 |or |only if not completedq(37105)
accept Wolf Training: Darkwing Roc##37106 |or |only if not completedq(37106)
accept Wolf Training: Ironbore##37109 |or |only if not completedq(37109)
accept Wolf Training: Moth of Wrath##37107 |or |only if not completedq(37107)
accept Wolf Training: Orc Hunters##37110 |or |only if not completedq(37110)
accept Wolf Training: The Garn##37111 |or |only if not completedq(37111)
accept Wolf Training: Thundercall##37108 |or |only if not completedq(37108)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q 37105/1 |goto Nagrand D/0 79.2,71.3
|only if haveq(37105)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q 37106/1 |goto Nagrand D/0 68.4,20.3
|only if haveq(37106)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q 37109/1 |goto Nagrand D/0 53.1,77.4
|only if haveq(37109)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q 37107/1 |goto Nagrand D/0 43.6,69.3
|only if haveq(37107)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q 37110/1 |goto Nagrand D/0 69.6,34.6
|only if haveq(37110)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Maimclaw##87107 |q 37111/1 |goto Nagrand D/0 63.8,80.9
|only if haveq(37111)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q 37108/1 |goto Nagrand D/0 90.6,23.6
|only if haveq(37108)
step
talk Sage Paluna##87242 |goto Frostwall 59.15,50.58
You will only be able to _complete 1 of the following quests_ per day
turnin Wolf Training: Cruel Ogres##37105 |only if haveq(37105)
turnin Wolf Training: Darkwing Roc##37106 |only if haveq(37106)
turnin Wolf Training: Ironbore##37109 |only if haveq(37109)
turnin Wolf Training: Moth of Wrath##37107 |only if haveq(37107)
turnin Wolf Training: Orc Hunters##37110 |only if haveq(37110)
turnin Wolf Training: The Garn##37111 |only if haveq(37111)
turnin Wolf Training: Thundercall##37108 |only if haveq(37108)
step
collect Trained Snarler##116784
learnmount Trained Snarler##171841 |use Trained Snarler##116784
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Bloodhoof Bull",{
keywords={"bloodhoof","bull","clefthoof","ground","mount"},
model={59323},
mounts={171620},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Bloodhoof Bull mount.",
},[[
step
_Click_ Nakk the Thunderer's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success.
_Click_ here [Nagrand D 62.8,15.0]
_Click_ here [Nagrand D 64.0,19.9]
_Click_ here [Nagrand D 60.9,31.8]
_Click_ here [Nagrand D 54.5,34.9]
_Click_ here [Nagrand D 50.2,34.4]
kill Nakk the Thunderer##50990
collect Bloodhoof Bull##116659
learnmount Bloodhoof Bull##171620 |use Bloodhoof Bull##116659
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Garn Nighthowl",{
keywords={"garn","nighthowl","wolf","ground","mount"},
model={54114},
mounts={171851},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Garn Nighthowl mount.",
},[[
step
_Click here_ to gather the Garn Nighthowl mount yourself |confirm |next "farm"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "farm"
_Follow_ Nok-Karosh's known patrol location below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success
map Frostfire Ridge
path follow loose; loop; ants curved
path	16.6,39.2	12.8,47.2	15.4,52.6
path	26.0,45.6	19.6,39.4
kill Nok-Karosh##81001
collect Garn Nighthowl##116794
|next "done"
step
label "buy"
talk Regla Brighthorn##86635 |goto Warspear 54.2,27.0
buy 1 Garn Nighthowl##116794
step
label "done"
learnmount Garn Nighthowl##171851 |use Garn Nighthowl##116794
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Great Greytusk",{
keywords={"great","greytusk","boar","ground","mount"},
model={59736},
mounts={171636},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Great Greytusk mount.",
},[[
step
_Click_ Gorok's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success
_Click_ here [Frostfire Ridge 58.4,19.0]
_Click_ here [Frostfire Ridge 52.0,50.6]
_Click_ here [Frostfire Ridge 65.0,52.6]
_Click_ here [Frostfire Ridge 63.6,79.8]
_Click_ here [Frostfire Ridge 22.4,66.6]
kill Gorok##50992
collect Great Greytusk##116674
learnmount Great Greytusk##171636 |use Great Greytusk##116674
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Mottled Meadowstomper",{
keywords={"mottled","meadowstomper","ground","mount"},
model={59339},
mounts={171622},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Mottled Meadowstomper mount.",
},[[
step
_Click_ Luk'hok's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success
_Click_ here [Nagrand D 76.0,30.6]
_Click_ here [Nagrand D 66.6,44.0]
_Click_ here [Nagrand D 72.2,53.6]
_Click_ here [Nagrand D 79.6,55.6]
_Click_ here [Nagrand D 84.6,63.8]
kill Luk'hok##50981
collect Mottled Meadowstomper##116661
learnmount Mottled Meadowstomper##171622 |use Mottled Meadowstomper##116661
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Sapphire Riverbeast",{
keywords={"sapphire","riverbeast","ground","mount"},
model={59744},
mounts={171824},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Sapphire Riverbeast mount.",
},[[
step
_Click_ Silthide's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success
_Click_ here [Talador 62.0,32.4]
_Click_ here [Talador 67.8,58.2]
_Click_ here [Talador 79.9,54.8]
_Click_ here [Talador 54.5,82.5]
kill Silthide##51015
collect Sapphire Riverbeast##116767
learnmount Sapphire Riverbeast##171824 |use Sapphire Riverbeast##116767
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Sunhide Gronnling",{
keywords={"sunhide","gronnling","ground","mount"},
model={60578},
mounts={171849},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Sunhide Gronnling mount.",
},[[
step
_Click_ Poundfist's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success
_Click_ here [Gorgrond 42.0,25.0]
_Click_ here [Gorgrond 51.4,43.1]
_Click_ here [Gorgrond 45.4,47.5]
_Click_ here [Gorgrond 47.0,54.1]
_Click_ here [Gorgrond 43.2,55.5]
kill Poundfist##50985
collect Sunhide Gronnling##116792
learnmount Sunhide Gronnling##171849 |use Sunhide Gronnling##116792
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Swift Breezestrider",{
keywords={"swift","breezestrider","talbuk","ground","mount"},
model={59364},
mounts={171830},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Swift Breezestrider mount.",
},[[
step
_Click_ Pathrunner's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Shadowmoon Valley D 43.0,31.6]
_Click_ here [Shadowmoon Valley D 39.4,36.6]
_Click_ here [Shadowmoon Valley D 53.8,30.4]
_Click_ here [Shadowmoon Valley D 56.2,52.4]
_Click_ here [Shadowmoon Valley D 44.8,43.4]
_Click_ here [Shadowmoon Valley D 46.0,67.8]
kill Pathrunner##50883
collect Swift Breezestrider##116773
learnmount Swift Breezestrider##171830 |use Swift Breezestrider##116773
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Warsong Direfang",{
mounts={171837},
patch='60100',
mounttype='Ground',
keywords={"ground","warsong","direfang","ground","mount"},
model={59752},
description="\nThis guide will help you acquire the Warsong Direfang mount.",
},[[
step
Click lines to change the waypoint:
kill Doomroller##95056 |goto Tanaan Jungle/0 47.0,52.6
|tip It's a huge metal cannon.
kill Vengeance##95054 |goto Tanaan Jungle/0 32.6,73.8
|tip She's a huge purple draenei with wings.
kill Terrorfist##95044 |goto Tanaan Jungle/0 14.6,63.0
|tip He's a huge purple and green gronn that patrols this area. You may need to search for him.
kill Deathtalon##95053 |goto Tanaan Jungle/0 23.6,40.0
|tip He's a huge purple and green bird that flies around this small area. You may need to search for him.
collect Rattling Iron Cage##128025 |n
use Rattling Iron Cage##128025
collect Warsong Direfang##116780 |complete hasmount(171837)
|tip This is a random drop from any of these mobs. You will need to be in a group to kill them. You will see people talking in chat about these mobs, looking for groups, so join them when you see this. Additionally, you could create your own Custom Group by pressing "I", then selecting Premade Groups -> Custom. Getting this mount will likely take a lot of time and patience.
step
use Warsong Direfang##116780
learnmount Warsong Direfang##171837
step
Congratulations, you earned the _Warsong Direfang_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Armored Razorback",{
mounts={171630},
patch='60100',
mounttype='Ground',
keywords={"armored","razorback","ground","mount"},
model={59346},
description="\nThis guide will help you acquire the Armored Razorback mount.",
},[[
step
Click lines to change the waypoint:
kill Doomroller##95056 |goto Tanaan Jungle/0 47.0,52.6
|tip It's a huge metal cannon.
kill Vengeance##95054 |goto Tanaan Jungle/0 32.6,73.8
|tip She's a huge purple draenei with wings.
kill Terrorfist##95044 |goto Tanaan Jungle/0 14.6,63.0
|tip He's a huge purple and green gronn that patrols this area. You may need to search for him.
kill Deathtalon##95053 |goto Tanaan Jungle/0 23.6,40.0
|tip He's a huge purple and green bird that flies around this small area. You may need to search for him.
collect Rattling Iron Cage##128025 |n
use Rattling Iron Cage##128025
collect Armored Razorback##116669 |complete hasmount(171630)
|tip This is a random drop from any of these mobs. You will need to be in a group to kill them, and only one person in the group gets the mount. You will see people talking in chat about these mobs, looking for groups, so join them when you see this. Additionally, you could create your own Custom Group by pressing "I", then selecting Premade Groups -> Custom. Getting this mount will likely take a lot of time and patience.
step
use Armored Razorback##116669
learnmount Armored Razorback##171630
step
Congratulations, you earned the _Armored Razorback_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Tundra Icehoof",{
mounts={171619},
patch='60100',
mounttype='Ground',
keywords={"tundra","icehoof","ground","mount"},
model={59324},
description="\nThis guide will help you acquire the Tundra Icehoof mount.",
},[[
step
Click lines to change the waypoint:
kill Doomroller##95056 |goto Tanaan Jungle/0 47.0,52.6
|tip It's a huge metal cannon.
kill Vengeance##95054 |goto Tanaan Jungle/0 32.6,73.8
|tip She's a huge purple draenei with wings.
kill Terrorfist##95044 |goto Tanaan Jungle/0 14.6,63.0
|tip He's a huge purple and green gronn that patrols this area. You may need to search for him.
kill Deathtalon##95053 |goto Tanaan Jungle/0 23.6,40.0
|tip He's a huge purple and green bird that flies around this small area. You may need to search for him.
collect Rattling Iron Cage##128025 |n
use Rattling Iron Cage##128025
collect Tundra Icehoof##116658 |complete hasmount(171619)
|tip This is a random drop from any of these mobs. You will need to be in a group to kill them, and only one person in the group gets the mount. You will see people talking in chat about these mobs, looking for groups, so join them when you see this. Additionally, you could create your own Custom Group by pressing "I", then selecting Premade Groups -> Custom. Getting this mount will likely take a lot of time and patience.
step
use Tundra Icehoof##116658
learnmount Tundra Icehoof##171619
step
Congratulations, you earned the _Tundra Icehoof_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Event Mounts\\Minion of Grumpus",{
keywords={"Minion","of","Grumpus","ground","event","mount"},
model={64960},
mounts={191314},
patch='62200',
mounttype='Ground',
description="\nThis guide will help you acquire the Minion of Grumpus mount.",
},[[
step
This mount was released during the 2015 christmas event.
|tip It can only be obtained by completing the christmas dailies in your garrison and then buying the Savage Gift with the tokens received from said dailies.
|tip This mount has a very low chance of being inside this gift.
|tip This mount is also boe so it can be bought and sold in the AH.
confirm
step
talk Pizzle##96735
accept Where Are the Children?##39648 |goto Frostwall 47.3,37.7
accept Menacing Grumplings##39649 |goto Frostwall 47.3,37.7
accept What Horrible Presents!##39668 |goto Frostwall 47.3,37.7
accept Grumpus##39651 |goto Frostwall 47.3,37.7
stickystart "savethechildren"
stickystart "grumnplingkills"
step
kill Grumpus##96448 |q 39651/1 |goto Frostfire Ridge/0 45.7,28.2
|tip Grumpus will require a group to defeat.
step
use Spirit Bomb##128675
|tip Use the Spirit Bomb to destroy Unusual Gifts on the ground. They are found by brown sacks and have the text, "Unusual Gift", above them.
|tip Press I and look for a group in Custom, it helps to speed up the process.
Destroy #5# Unusual Gifts |q 39668/1 |goto Frostfire Ridge/0 45.7,27.6
step
label "savethechildren"
click Holding Cage##243905
Rescue #6# Children |q 39648/1 |goto Frostfire Ridge/0 46.4,26.2
step
label "grumnplingkills"
kill 8 Grumpling##96449 |q 39649/1 |goto Frostfire Ridge/0 46.9,27.8
step
talk Izzy Hollyfizzle##96362
turnin Where Are the Children?##39648 |goto Frostwall 47.3,38.5
turnin Menacing Grumplings##39649 |goto Frostwall 47.3,38.5
turnin What Horrible Presents!##39668 |goto Frostwall 47.3,38.5
turnin Grumpus##39651 |goto Frostwall 47.3,38.5
step
talk Izzy Hollyfizzle##96362
buy 1 Savage Gift##128670 |use Savage Gift##128670 |goto Frostwall 47.3,38.5
|tip The savage gift costs 5 merry supplies and one character can only obtain 5 merry supplies per day during this event.
collect Minion of Grumpus##128671
learnmount Minion of Grumpus##191314 |use Minion of Grumpus##128671
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Voidtalon of the Dark Star",{
keywords={"void","talon","dark","star","ground","miscellaneous","mount"},
model={38783},
mounts={179478},
patch='61000',
mounttype='Ground',
description="\nThis guide will help you acquire the Voidtalon mount.",
},[[
step
This mount is obtained from entering one of the extremely rare edge of reality portals
The portals can spawn in all of the WOD zones except for Tanaan Jungle
|tip these portals have an extreme long respawn timer, shortest recorded being 13 hours, longest recorded being 48 hours.
|tip these portals also only last about 3 minutes and then disappear.
step
_Click_ Voidtalon of the Dark Star's known spawn locations below for your chance at this rare mount
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success
_Click_ here [Shadowmoon Valley D 50.9,72.5]
_Click_ here [Shadowmoon Valley D 49.6,71.6]
_Click_ here [Shadowmoon Valley D 41.9,75.7]
_Click_ here [Shadowmoon Valley D 48.7,69.9]
_Click_ here [Shadowmoon Valley D 43.2,71.0]
_Click_ here [Frostfire Ridge 51.0,19.9]
_Click_ here [Frostfire Ridge 52.3,18.3]
_Click_ here [Frostfire Ridge 53.0,17.0]
|tip There are more spawn locations but these are the most condensed spawn points.
Enter the Edge of Reality
click Voidtalon Egg##239901
collect voidtalon of the dark star##121815
learnmount Voidtalon of the Dark Star##179478 |use Voidtalon of the Dark Star##121815
step
Congratulations, you have attained the _Voidtalon of the Dark Star_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Illidari Felstalker",{
keywords={"Illidari","Felstalker","collector's","collectors","edition","ground","mount"},
model={64582},
mounts={189998},
patch='62200',
mounttype='Ground',
description="\nThis guide will help you acquire the Illidari Felstalker mount.",
},[[
step
This mount is obtained by purchasing the Legion Collector's Edition
collect Reins of the Illidari Felstalker##128425
step
learnmount Illidari Felstalker##189998 |use Reins of the Illidari Felstalker##128425
step
Congratulations, you have attained the _Illidari Felstalker_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious Skeletal Warhorse",{
keywords={"vicious","skeletal","warhorse","ground","mount"},
model={51048},
mounts={146622},
patch='54000',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious Skeletal Warhorse mount.",
},[[
step
In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches
Win 100 Arena Matches |achieve 8642/1 |or
Win 40 Rated Battlegrounds |achieve 8642/2 |or
step
Check your mail box once you have completed the matches
collect 1 Vicious Saddle##103533
step
talk Deathguard Netharian##73151
buy Reins of the Vicious Skeletal Warhorse##102533  |goto Orgrimmar/1 41.9,73.2
step
Use the _Reins of the Vicious Skeletal Warhorse_ in your bags |use Reins of the Vicious Skeletal Warhorse##102533
learnmount Vicious Skeletal Warhorse##146622
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Wolf",{
keywords={"vicious","war","wolf","ground","mount"},
mounts={100333},
patch='unknown',
mounttype='Ground',
model={38607},
description="\nThis guide will help you acquire the Vicious War Wolf mount.",
},[[
step
In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches
Win 100 Arena Matches |achieve 8642/1 |or
Win 40 Rated Battlegrounds |achieve 8642/2 |or
step
Check your mail box once you have completed the matches
collect 1 Vicious Saddle##103533
step
talk Deathguard Netharian##73151
buy 1 Vicious War Wolf##70910 |goto Orgrimmar/1 41.9,73.2
step
learnmount Vicious War Wolf##100333 |use Vicious War Wolf##70910
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Raptor",{
keywords={"vicious","war","raptor","player","ground","mount"},
model={60575},
mounts={171835},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious War Raptor mount.",
},[[
step
Win 100 Rated Arena (3v3) Matches |achieve 9236/1 |or
Win 40 Rated Battleground (10v10) Matches |achieve 9236/2 |or
|tip To do this, press "I", then select the "Player vs. Player" tab, then select the "Rated" section.
step
collect Vicious Saddle##103533 |complete hasmount(171835)
|tip You will receive this item in the mail after you earn the "Primal Combatant" achievement.
step
talk Deathguard Netharian##73151
buy Vicious War Raptor##116778 |complete hasmount(171835) |goto Orgrimmar/1 41.9,73.2
|tip This costs 1 Vicious Saddle.
step
use Vicious War Raptor##116778
learnmount Vicious War Raptor##171835
step
Congratulations, you earned the _Vicious War Raptor_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Kodo",{
model={63580},
keywords={"vicious","war","kodo","player","ground","mount"},
mounts={185052},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious War Kodo mount.",
},[[
step
Win 100 Rated Arena (3v3) Matches |achieve 9236/1 |or
Win 40 Rated Battleground (10v10) Matches |achieve 9236/2 |or
|tip To do this, press "I", then select the "Player vs. Player" tab, then select the "Rated" section.
step
collect Vicious Saddle##103533 |complete hasmount(185052)
|tip You will receive this item in the mail after you earn the "Primal Combatant" achievement.
step
talk Deathguard Netharian##73151
buy Vicious War Kodo##124540 |complete hasmount(185052) |goto Orgrimmar/1 41.9,73.2
|tip This costs 1 Vicious Saddle.
step
use Vicious War Kodo##124540
learnmount Vicious War Kodo##185052
step
Congratulations, you earned the _Vicious War Kodo_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Profession Mounts\\Leatherworking\\Dustmane Direwolf",{
keywords={"leatherworking","dustmane","direwolf","wolf","ground","mount"},
model={59762},
mounts={171844},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Dustmane Direwolf mount.",
},[[
step
This pet _requires_ you to have level 600 Leatherworking
_Click here_ to use Skinning to gather the Raw Beast Hide yourself |confirm |next "farml"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buyl"
step
label "farml"
collect 2000 Raw Beast Hide##110609
map Frostfire Ridge
path follow loose; loop; ants curved
path	21.8,35.6	13.0,43.8	14.6,49.8
path	23.0,65.4	44.0,62.2	50.8,54.6
path	47.6,49.8	26.8,46.0
Kill any beasts you see on this path for skinning
|next "nextl"
step
label "buyl"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 2000 Raw Beast Hide##110609
step
label "nextl"
_Click here_ to use Herbalism to gather the Gorgrond Flytrap yourself |confirm |next "farm"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "farm"
collect 9000 Gorgrond Flytrap Ichor##109626
map Spires of Arak
path follow loose; loop; ants curved
path	31.9,26.3	30.7,33.3	37.6,45.6
path	42.6,52.3	46.6,49.2	51.9,59.7
path	52.0,71.9	54.2,79.8	56.3,94.1
path	60.4,70.1	65.8,53.9	57.0,47.4
path	54.0,38.8	45.0,36.8	41.2,26.0
path	49.5,22.9	52.6,33.3	63.9,38.1
path	66.5,36.1	67.9,46.1
step
_Create_ 1000 Gorgrond Flytrap##109126 |use Gorgrond Flytrap Ichor##109626
collect 1000 Gorgrond Flytrap##109126
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1000 Gorgrond Flytrap##109126
step
label "done"
_Create_ 100 Burnished Leather
collect 100 Burnished Leather##110611
collect 20 Sorcerous Air##113264
step
create 1 Riding Harness##171844,Leatherworking,600
learnmount Dustmane Direwolf##171844 |use Riding Harness##108883
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Felsteel Annihilator",{
mounts={182912},
patch='62000',
mounttype='Flying',
model={62893},
description="\nThis guide will help you acquire the Felsteel Annihilator mount.",
},[[
step
Enter the Hellfire Citadel _Mythic_ Dungeon |goto Tanaan Jungle/0 45.4,53.7
|tip Press "I", then select "Premade Groups" -> "Raids", and join a group for Hellfire Citadel Mythic. You can also create your own group. You have to enter the dungeon manually for Mythic difficulty.
kill Archimonde##91331
|tip Only one mount drops per kill.
collect Felsteel Annihilator##123890 |complete hasmount(182912)
step
use Felsteel Annihilator##123890
learnmount Felsteel Annihilator##182912
step
Congratulations, you earned the _Felsteel Annihilator_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Ironhoof Destroyer",{
mounts={171621},
patch='60100',
mounttype='Ground',
model={59837},
description="\nThis guide will help you acquire the Ironhoof Destroyer mount.",
},[[
step
Enter the Blackrock Foundry _Mythic_ Dungeon |goto Gorgrond/0 51.3,28.7
|tip Press "I", then select "Premade Groups" -> "Raids", and join a group for Blackrock Foundry Mythic. You can also create your own group. You have to enter the dungeon manually for Mythic difficulty.
kill Blackhand##77325
|tip Only one mount drops per kill.
collect Felsteel Annihilator##116660 |complete hasmount(171621)
step
use Felsteel Annihilator##116660
learnmount Felsteel Annihilator##171621
step
Congratulations, you earned the _Ironhoof Destroyer_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Breezestrider Stallion",{
keywords={"breezestrider","stallion","ground","mount"},
model={59366},
mounts={171832},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Breezestrider Stallion mount.",
},[[
step
This mount is _Horde only_ and requires you to be _Exalted_ with the _Vol'jin's Spear_
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear"
|confirm
step
talk Dazzerian##85115 |goto Warspear 47.0,21.4
buy Breezestrider Stallion##116775
learnmount Breezestrider Stallion##171832 |use Breezestrider Stallion##116775
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Domesticated Razorback",{
keywords={"domesticated","razorback","boar","exalted","the","steamwheedle","preservation","society","ground","mount"},
model={59738},
mounts={171634},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Domesticated Razorback mount.",
},[[
step
This mount requires you to be _Exalted_ with the _Steamwheedle "Preservation" Society_
_Click here_ for the reputation guide |confirm |next "Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
|confirm
step
talk Gazrix Gearlock##88482 |goto Stormshield 43.2,77.4
buy Domesticated Razorback##116672
learnmount Domesticated Razorback##171634 |use Domesticated Razorback##116672
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Ironside Warwolf",{
keywords={"ironside","warwolf","wolf","ground","mount"},
model={59754},
mounts={171839},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Ironside Warwolf mount.",
},[[
step
This mount is _Horde only_ and requires you to be _Exalted_ with the _Laughing Skull Orcs_
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs"
|confirm
step
talk Kil'rip##86698 |goto Frostwall 58.6,26.6
buy Ironside Warwolf##116782
learnmount Ironside Warwolf##171839 |use Ironside Warwolf##116782
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Shadowmane Charger",{
keywords={"horse","warhorse","shadowmane","charger","exalted","the","arakkoa","outcasts","ground","mount"},
model={59363},
mounts={171829},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Shadowmane Charger mount.",
},[[
step
This mount requires you to be _Exalted_ with the _Arakkoa Outcasts_
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
|confirm
step
talk Ravenspeaker Skeega##86037 |goto Warspear 54.0,61.0
buy Shadowmane Charger##116772
learnmount Shadowmane Charger##171829 |use Shadowmane Charger##116772
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Swift Frostwolf",{
keywords={"swift","frostwolf","wolf","exalted","frostwolf","orcs","ground","mount"},
model={59759},
mounts={171842},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Swift Frostwolf mount.",
},[[
step
This mount is _Horde only_ and requires you to be _Exalted_ with the _Frostwolf Orcs_
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs"
|confirm
step
talk Beska Redtusk##86036 |goto Warspear 53.6,62.6
buy Swift Frostwolf##116785
learnmount Swift Frostwolf##171842 |use Swift Frostwolf##116785
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Wild Goretusk",{
keywords={"wild","gore","tusk","ground","mount","reputation"},
model={59739},
mounts={171633},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Wild Goretusk mount.",
},[[
step
Reach _Honored_ Reputation with The Saberstalkers |complete rep('The Saberstalkers') >= Honored
|tip Use "The Saberstalkers" dailies guide to accomplish this.
step
talk Z'tenga the Walker##92805
buy Wild Goretusk##116671 |complete hasmount(171633)
|tip You need 1,000 Blackfang Claws to purchase this. You get them by killing Blackfang mobs. Use the "Saberstalkers" dailies guide to accomplish this.
step
use Wild Goretusk##116671
learnmount Wild Goretusk##171633
step
Congratulations, you earned the _Wild Goretusk_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Bristling Hellboar",{
keywords={"bristling","hell","boar","ground","mount","reputation"},
model={64726},
mounts={190690},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Bristling Hellboar mount.",
},[[
step
Reach _Exalted_ Reputation with The Saberstalkers |complete rep("The Saberstalkers") == Exalted
|tip Use "The Saberstalkers" dailies guide to accomplish this.
step
talk Z'tenga the Walker##92805
buy Bristling Hellboar##128480 |complete hasmount(190690) |goto Tanaan Jungle/0 55.3,74.8
|tip You need 5,000 Blackfang Claws to purchase this. You get them by killing Blackfang mobs. Use the "Saberstalkers" dailies guide to accomplish this.
step
use Bristling Hellboar##128480
learnmount Bristling Hellboar##190690
step
Congratulations, you earned the _Bristling Hellboar_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Deathtusk Felboar",{
keywords={"death","tusk","fel","boar","ground","mount","reputation"},
model={64849},
mounts={190977},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Deathtusk Felboar mount.",
},[[
step
Reach _Exalted_ Reputation with Vol'jin's Headhunters |complete rep("Vol'jin's Headhunters") == Exalted
|tip Use the "Vol'jin's Headhunters" dailies guide to accomplish this.
step
talk Shadow Hunter Denjai##96014
buy Deathtusk Felboar##128526 |complete hasmount(190977) |goto Tanaan Jungle/0 61.6,45.6
|tip This costs 2,000 gold.
step
use Deathtusk Felboar##128526
learnmount Deathtusk Felboar##190977
step
Congratulations, you earned the _Deathtusk Felboar_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Mudback Riverbeast",{
keywords={"mudback","river","beast","ground","garrison","mount"},
model={59746},
mounts={171826},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Mudback Riverbeast mount.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete the _It's a Boat, It's a Plane, It's... Just a Riverbeast._ Naval Mission
|tip This mount is a reward for successfully completing the rare Naval Mission: It's a Boat, It's a Plane, It's... Just a Riverbeast. Check your naval mission table often until you have the mission available.
use Mudback Riverbeast##116769
learnpet Mudback Riverbeast##171826 |goto Frostfire Ridge/0 42.1,70.9
step
Congratulations, you earned the _Mudback Riverbeast_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Coalfist Gronnling",{
keywords={"coalfist","gronnling","ground","mount","garrison"},
model={64426},
mounts={189364},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Coalfist Gronnling mount.",
},[[
step
#include "Garrison_CommandTable"
Complete the _Breaker Two_ Garrison Mission
|tip This mount is a reward for successfully completing the rare Garrison Mission: Breaker Two. Check your garrison mission table often until you have the mission available.
|tip This mount is bind on equip.
use Coalfist Gronnling##128311
learnpet Coalfist Gronnling##189364
step
Congratulations, you earned the _Coalfist Gronnling_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Garn Steelmaw",{
keywords={"garn","steelmaw","wolf","ground","mount"},
model={59756},
mounts={171836},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Garn Steelmaw mount.",
},[[
step
|tip This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ and _Routed Invader's Crate of Spoils_ reward
|tip This mount can also come from: Teluur, Gaur, Commander Dro'gan, Lady Fleshsear, Annihilon, or Mage Lord Gogg'nathog garrison bosses
Open the _Invader's Forgotten Treasure_ |use Invader's Forgotten Treasure##116980
Open the _Routed Invader's Crate of Spoils_ |use Routed Invader's Cache of Spoils##122163
collect Garn Steelmaw##116779
learnmount Garn Steelmaw##171836 |use Garn Steelmaw##116779
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Giant Coldsnout",{
keywords={"giant","coldsnout","boar","ground","mount"},
model={59737},
mounts={171635},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Giant Coldsnout mount.",
},[[
step
|tip This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ and _Routed Invader's Crate of Spoils_ reward
|tip This mount can also come from: Teluur, Gaur, Commander Dro'gan, Lady Fleshsear, Annihilon, or Mage Lord Gogg'nathog garrison bosses
Open the _Invader's Forgotten Treasure_ |use Invader's Forgotten Treasure##116980
Open the _Routed Invader's Crate of Spoils_ |use Routed Invader's Cache of Spoils##122163
collect Giant Coldsnout##116673
learnmount Giant Coldsnout##171635 |use Giant Coldsnout##116673
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Shadowhide Pearltusk",{
keywords={"shadowhide","pearltusk","ground","mount"},
model={59341},
mounts={171624},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Shadowhide Pearltusk mount.",
},[[
step
|tip This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ and _Routed Invader's Crate of Spoils_ reward
|tip This mount can also come from: Teluur, Gaur, Commander Dro'gan, Lady Fleshsear, Annihilon, or Mage Lord Gogg'nathog garrison bosses
Open the _Invader's Forgotten Treasure_ |use Invader's Forgotten Treasure##116980
Open the _Routed Invader's Crate of Spoils_ |use Routed Invader's Cache of Spoils##122163
collect Shadowhide Pearltusk##116663
learnmount Shadowhide Pearltusk##171624 |use Shadowhide Pearltusk##116663
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Smoky Direwolf",{
keywords={"smoky","direwolf","smokey","wolf","ground","mount"},
model={59760},
mounts={171633},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Smoky Direwolf mount.",
},[[
step
|tip This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ and _Routed Invader's Crate of Spoils_ reward
|tip This mount can also come from: Teluur, Gaur, Commander Dro'gan, Lady Fleshsear, Annihilon, or Mage Lord Gogg'nathog garrison bosses
Open the _Invader's Forgotten Treasure_ |use Invader's Forgotten Treasure##116980
Open the _Routed Invader's Crate of Spoils_ |use Routed Invader's Cache of Spoils##122163
collect Smoky Direwolf##116786
learnmount Smoky Direwolf##171843 |use Smoky Direwolf##116786
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Core Hound",{
keywords={"core","hound","corehound","molten"},
model={11997},
mounts={170347},
patch='60100',
mounttype='Ground',
description="\nThis mount has been removed from the game.",
},[[
step
The Core Hound was a limited-time reward for completing the new Molten Core upon the launch of Warlords of Draenor
This mount was retired from service on January 13, 2015
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Primal Gladiator's Felblood Gronnling",{
keywords={"primal","gladiator","felblood","gronnling","mount","unavailable","ground"},
model={63956},
mounts={186828},
patch='62000',
mounttype='Ground',
description="\nThis mount was only available in Warlords Season 1.",
},[[
step
This mount was a reward given to players that obtained the Gladiator rank during Warlords of Draenor PvP Season 1
|tip This achievement was given to the top 0.5 percent of players in Arena pvp during this season.
|tip This mount is no longer available as Warlords of Draenor PvP Season 1 has ended.
|tip The season ended June 23rd 2015
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Warlord's Deathwheel",{
keywords={"warlord","deathwheel","mount","unavailable","ground"},
model={60208},
mounts={171845},
patch='60100',
mounttype='Ground',
description="\nThis mount was only available for horde and if you logged into the game between July 25th, 2014 and September 30th, 2014.",
},[[
step
The Warlord's Deathwheel was a reward given to only the horde for winning the Azerith Choppers competition
If you logged into a horde character between July 25th, 2014 and September 30th, 2014 you received this mount via in-game mail
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Warmongering Gladiator's Felblood Gronnling",{
author="support@zygorguides.com",
startlevel=10.0,
keywords={"Warmongering","Gladiator's","Felblood","Gronnling","ground","mount"},
mounts={189044},
patch='62000',
mounttype='Ground',
model={64377},
description="\nThis guide will help you acquire the Warmongering Gladiator's Felblood Gronnling.",
},[[
step
This mount was a reward given to players that obtained the Gladiator rank during Warlords of Draenor PvP Season 3
|tip This achievement was given to the top 0.5 percent of players in Arena PvP during this season.
|tip This mount is no longer available, as Warlords of Draenor PvP Season 3 has ended.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Wild Gladiator's Felblood Gronnling",{
keywords={"wild","gladiator's","felblood","gronnling","pvp","rated","battlegrounds","arena","ground","mount"},
model={64378},
mounts={189043},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Wild Gladiator's Felblood Gronnling mount.",
},[[
step
This mount was a reward given to players that obtained the Gladiator rank during Warlords of Draenor PvP Season 2
|tip This achievement was given to the top 0.5 percent of players in Arena pvp during this season.
|tip This mount is no longer available as Warlords of Draenor PvP Season 2 has ended.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Crimson Water Strider",{
keywords={"crimson","water","strider","waterwalking","nat","pagle","ground","mount"},
model={43713},
mounts={127271},
patch='50400',
mounttype='Ground',
description="\nThis guide will help you acquire the Crimson Water Strider mount.",
},[[
step
This mount requires you to be _Honored_ with the _Nat Pagle_
You must also have a _700 fishing skill_, and a _level 3 Fishing Shack_
|tip This mount requires 100 Nat's Lucky Coins
|confirm
step
talk Nat Pagle##85984 |goto Frostwall/0 38.2,75.6
buy Reins of the Crimson Water Strider##87791
learnmount Crimson Water Strider##127271 |use Reins of the Crimson Water Strider##87791
step
Congratulations, you earned the _Crimson Water Strider_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Mosshide Riverwallow",{
keywords={"mosshide","riverwallow","ground","mount"},
model={59745},
mounts={171825},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Mosshide Riverwallow mount.",
},[[
step
|tip This mount costs 50,000 Gold and 5,000 Apexis Crystals.
talk Dawn-Seeker Alkset##86382 |goto Warspear 65.6,64.2
buy Mosshide Riverwallow##116768
learnmount Mosshide Riverwallow##171825 |use Mosshide Riverwallow##116768
step
Congratulations, you earned the _Mosshide Riverswallow_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Rocktusk Battleboar",{
keywords={"battleboar","rocktusk","mount","ground","vendor"},
model={59348},
mounts={171628},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Rocktusk Battleboar mount.",
},[[
step
talk Trader Darakk##95471
buy Rocktusk Battleboar##116667 |complete hasmount(171628) |goto Frostwall/0 40.8,55.8
|tip This costs 10,000 gold.
step
use Rocktusk Battleboar##116667
learnmount Rocktusk Battleboar##171628
step
Congratulations, you earned the _Rocktusk Battleboar_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Witherhide Cliffstomper",{
keywords={"witherhide","cilffstomper","ground","mount","vendor"},
model={59321},
mounts={171616},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Witherhide Cliffstomper mount.",
},[[
step
talk Trader Darakk##95471
buy Witherhide Cliffstomper##116655 |complete hasmount(171616) |goto Frostwall/0 40.8,55.8
|tip This costs 20,000 gold.
step
use Witherhide Cliffstomper##116655
learnmount Witherhide Cliffstomper##171616
step
Congratulations, you earned the _Witherhide Cliffstomper_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Felfire Hawk",{
keywords={"felfire","hawk","ground","mount"},
model={38032},
mounts={97501},
patch='unknown',
mounttype='Flying',
description="\nThis guide will help you acquire the Felfire Hawk mount.",
},[[
step
This mount requires the achievement _Mountacular_
_Complete the Mountacular achievement_ |achieve 9599
step
Felfire Hawk should be _delivered via in game mail_
collect Felfire Hawk##69226
learnmount Felfire Hawk##97501 |use Felfire Hawk##69226
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Soaring Skyterror",{
keywords={"soaring","skyterror","flying","mount","achievement"},
model={65040},
mounts={191633},
patch='62000',
mounttype='Flying',
description="\nThis guide will help you acquire the Soaring Skyterror mount.",
},[[
step
Complete the Draenor Pathfinder Achievement |achieve 10018
|tip Use the "Draenor Pathfinder" achievement guide to accomplish this.
step
use Soaring Skyterror##128706
|tip You will receive this item in the mail when you complete the "Draenor Pathfinder" achievement.
learnmount Soaring Skyterror##191633
step
Congratulations, you earned the _Soaring Skyterror_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Emerald Drake",{
keywords={"emerald","drake","flying","mount"},
model={25834},
mounts={175700},
patch='60100',
mounttype='Flying',
description="\nThis guide will help you acquire the Reins of the Emerald Drake mount.",
},[[
step
This mount requires the achievement _Awake the Drakes_
_Complete the Awake the Drakes achievement_ |achieve 9713
step
Reins of the Emerald Drake should be _delivered via in game mail_
collect Reins of the Emerald Drake##118676
learnmount Reins of the Emerald Drake##175700 |use Reins of the Emerald Drake##118676
step
Congratulations, you earned the _Emerald Drake_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Reins of the Heavenly Azure Cloud Serpent",{
keywords={"Reins","of","the","Heavenly","Azure","Cloud","Serpent","flying","mount"},
model={43697},
mounts={127169},
patch='50400',
mounttype='Flying',
description="\nThis guide will help you acquire the Reins of the Reins of the Heavenly Azure Cloud Serpent mount.",
},[[
step
This mount requires the achievement _Lord of the Reins_
|tip Complete the Lord of the Reins achievement. |achieve 10355
step
|tip Reins of the Heavenly Azure Cloud Serpent should be delivered via in game mail.
collect Reins of the Heavenly Azure Cloud Serpent##87776
learnmount Reins of the Heavenly Azure Cloud Serpent##127169 |use Reins of the Heavenly Azure Cloud Serpent##87776
step
Congratulations, you earned the _Reins of the Heavenly Azure Cloud Serpent_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Grinning Reaver",{
keywords={"blizzard","store","grinning","reaver","flying","mount"},
model={55907},
mounts={163025},
patch='60100',
mounttype='Flying',
description="\nThis guide will help you acquire the Grinning Reaver mount.",
},[[
step
This mount can only be purchased in the official _Blizzard Store_
After purchasing, check your _in-game mailbox_
confirm
step
collect Grinning Reaver##112327
learnmount Grinning Reaver##163025 |use Grinning Reaver##112327
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Mystic Runesaber",{
keywords={"blizzard","store","mystic","runesaber","flying","mount"},
model={62148},
mounts={180545},
patch='61000',
mounttype='Flying',
description="\nThis guide will help you acquire the Mystic Runesaber mount.",
},[[
step
This mount can only be purchased in the official _Blizzard Store_
After purchasing, check your _in-game mailbox_
confirm
step
collect Grinning Reaver##122469
learnmount Grinning Reaver##180545 |use Grinning Reaver##122469
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Solar Spirehawk",{
keywords={"solar","spirehawk","ground","mount"},
model={59751},
mounts={171828},
patch='60100',
mounttype='Flying',
description="\nThis guide will help you acquire the Solar Spirehawk mount.",
},[[
step
This mount requires you to kill _Rukhmar_, the _Spires of Arak world boss_
This _will require a group_ to complete
confirm
step
kill Rukhmar##87493
collect Solar Spirehawk##116771 |goto Spires of Arak 40.0,43.0
learnmount Solar Spirehawk##171828 |use Solar Spirehawk##116771
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Infinite Timereaver",{
keywords={"infinite","timereaver","flying","mount"},
model={67594},
mounts={201098},
patch='62300',
mounttype='Flying',
description="\nThis guide will help you acquire the Infinite Timereaver mount.",
},[[
step
This mount can only be obtained during Timewalking dungeon events.
The mount has a very small chance to drop off any timewalking boss during these events.
|tip The mount is personal loot.
confirm
step
collect Infinite Timereaver##133543
learnmount Infinite Timereaver##201098 |use Infinite Timereaver##133543
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Dread Raven",{
keywords={"dread","raven","collector's","collectors","edition","flying","mount"},
model={53774},
mounts={155741},
patch='54700',
mounttype='Flying',
description="\nThis guide will help you acquire the Dread Raven mount.",
},[[
step
This mount is obtained by purchasing the Warlords of Draenor Collector's Edition
collect Reins of the Dread Raven##109013
step
learnmount Dread Raven##155741 |use Reins of the Dread Raven##109013
step
Congratulations, you have attained the Dread Raven mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Cindermane Charger",{
keywords={"cindermane","charger","miscellaneous","flying","mount"},
model={61363},
mounts={171847},
patch='60100',
mounttype='Flying',
description="\nThis guide will help you acquire the Cindermane Charger mount.",
},[[
step
This mount is obtained through the Blizzard Recruit-a-riend system
|tip This mount is one of 5 recruit a friend mounts
collect Reins of the Cindermane Charger##118515
step
learnmount Cindermane Charger##171847 |use Cindermane Charger##118515
step
Congratulations, you have attained the _Cindermane Charger_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Grove Warden",{
keywords={"Grove","Warden","miscellaneous","flying","mount"},
model={64583},
mounts={189999},
patch='62200',
mounttype='Flying',
description="\nThis guide will help you acquire the Grove Warden mount.",
},[[
step
This mount is no longer obtainable.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Tailoring\\Creeping Carpet",{
keywords={"tailoring","creeping","carpet","ground","mount"},
model={46453},
mounts={169952},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Creeping Carpet mount.",
},[[
step
This pet requires you to have _level 600 Tailoring_
Click here to gather the _Sumptuous Fur_ yourself. |confirm |next "farml"
Click here to be _taken to the Auctioneer_ to purchase it. |confirm |next "buyl"
step
label "farml"
collect 2000 Sumptuous Fur##111557
map Spires of Arak
path follow loose; loop; ants curved
path	45.8,66.6	46.4,69.6	47.8,74.0
path	49.6,76.0	52.4,77.4	47.8,69.6
path	46.6,68.0
Kill _any Bloodmane mobs_ for looting the fur.
|next "nextl"
step
label "buyl"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 2000 Sumptuous Fur##111557
step
label "nextl"
Click here to use Herbalism to gather the _Gorgrond Flytrap_ yourself |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "farm"
collect 1000 Gorgrond Flytrap Ichor##109626
map Spires of Arak
path follow loose; loop; ants curved
path	31.9,26.3	30.7,33.3	37.6,45.6
path	42.6,52.3	46.6,49.2	51.9,59.7
path	52.0,71.9	54.2,79.8	56.3,94.1
path	60.4,70.1	65.8,53.9	57.0,47.4
path	54.0,38.8	45.0,36.8	41.2,26.0
path	49.5,22.9	52.6,33.3	63.9,38.1
path	66.5,36.1	67.9,46.1
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1000 Gorgrond Flytrap##109126
step
label "done"
Create 100 _Hexweave Cloth_
collect 100 Hexweave Cloth##111556
collect 20 Sorcerous Air##113264
step
create 1 Creeping Carpet##169952,Tailoring,600
learnmount Creeping Carpet##169952 |use Creeping Carpet##115363
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Corrupted Dreadwing",{
keywords={"corrupted","dreadwing","flying","mount","reputation"},
model={63032},
mounts={183117},
patch='62000',
mounttype='Flying',
description="\nThis guide will help you acquire the Corrupted Dreadwing mount.",
},[[
step
Reach _Friendly_ Reputation with Order of the Awakened |complete rep('Order of the Awakened') >= Friendly
|tip Use the "Order of the Awakened" dailies guide to accomplish this.
step
talk Dawn-Seeker Krisek##95424
buy Reins of the Corrupted Dreadwing##123974 |complete hasmount(183117) |goto Tanaan Jungle/0 60.4,46.6
|tip This costs 150,000 Apexis Crystals. You can earn them by using all of the Tanaan Jungle dailies guides, as well as the "Garrison Assault Daily Quests" guide. Also, you can earn Apexis Crystals by killing mobs in the Tanaan Jungle "Assault" bonus objective areas, by looting Treasures in Draenor, or by completing Garrison Missions. There are many ways to earn Apexis Crystals now.
step
use Corrupted Dreadwing##123974
learnmount Corrupted Dreadwing##183117
step
Congratulations, you earned the _Corrupted Dreadwing_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Bridle of the Ironbound Wraithcharger",{
keywords={"Bridle","of","the","Ironbound","Wraithcharger","ground","mount","vendor"},
model={48946},
mounts={142910},
patch='53000',
mounttype='Flying',
description="\nThis guide will help you acquire the Bridle of the Ironbound Wraithcharger mount.",
},[[
step
talk Auzin##98690
buy Bridle of the Ironbound Wraithcharger##129922 |complete hasmount(142910) |goto Dalaran 50.4,46.1
|tip This costs 5,000 Timewarped Badges.
|tip These can only be obtained through completing timewalking dungeons during the timewalking events.
|tip These events only happen twice a month.
step
use Bridle of the Ironbound Wraithcharger##129922
learnmount Bridle of the Ironbound Wraithcharger##142910
step
Congratulations, you earned the _Bridle of the Ironbound Wraithcharger_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Reins of the Eclipse Dragonhawk",{
keywords={"Reins","of","the","Eclipse","Dragonhawk","ground","mount","vendor"},
model={27525},
mounts={194464},
patch='62200',
mounttype='Flying',
description="\nThis guide will help you acquire the Reins of the Eclipse Dragonhawk mount.",
},[[
step
talk Auzin##98690
buy Reins of the Eclipse Dragonhawk##129923 |complete hasmount(194464) |goto Dalaran 50.4,46.1
|tip This costs 5,000 Timewarped Badges.
|tip These can only be obtained through completing timewalking dungeons during the timewalking events.
|tip These events only happen twice a month.
step
use Reins of the Eclipse Dragonhawk##129923
learnmount Reins of the Eclipse Dragonhawk##194464
step
Congratulations, you earned the _Reins of the Eclipse Dragonhawk_ mount!
]])
