local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsAWOD") then return end
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
_Complete the Advanced Husbandry achievement_ |achieve 9539
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
_Complete the The Stable Master achievement_ |achieve 9540
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
|tip quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
confirm
step
talk Keegan Firebeard##86973
accept Capturing a Clefthoof##36916 |goto Lunarfall 39.8,56.6
step
Use your _Clefthoof Lasso_ on the Young Icehoof in the area |use Clefthoof Lasso##118181 |q 36916/1 |goto Frostfire Ridge/0 54.0,20.5
step
talk Keegan Firebeard##86973
turnin Capturing a Clefthoof##36916 |goto Lunarfall 39.8,56.6
step
talk Keegan Firebeard##86973
You will only be able to _complete 1 of the following quests_ per day
accept Clefthoof Training: Riplash##36985 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36985)
accept Clefthoof Training: Gezz'ran##36986 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36986)
accept Clefthoof Training: Bulbapore##36987 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36987)
accept Clefthoof Training: Cruel Ogres##36988 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36988)
accept Clefthoof Training: Darkwing Roc##36989 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36989)
accept Clefthoof Training: Ironbore##36992 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36992)
accept Clefthoof Training: Moth of Wrath##36990 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36990)
accept Clefthoof Training: Orc Hunters##36993 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36993)
accept Clefthoof Training: The Garn##36994 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36994)
accept Clefthoof Training: Thundercall##36991 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36991)
accept Clefthoof Training: Great-Tusk##36983 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36983)
accept Clefthoof Training: Rakkiri##36984 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36984)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q 36985/1 |goto Gorgrond/0 50.2,38.4
only if haveq(36985)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q 36986/1 |goto Talador/0 31.5,54.9
only if haveq(36986)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q 36987/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(36987)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q 36988/1 |goto Nagrand D/0 79.2,71.3
only if haveq(36988)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q 36989/1 |goto Nagrand D/0 68.4,20.3
only if haveq(36989)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q 36992/1 |goto Nagrand D/0 53.1,77.4
only if haveq(36992)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q 36990/1 |goto Nagrand D/0 43.6,69.3
only if haveq(36990)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q 36993/1 |goto Nagrand D/0 69.6,34.6
only if haveq(36993)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Maimclaw##87107 |q 36994/1 |goto Nagrand D/0 63.8,80.9
only if haveq(36994)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q 36991/1 |goto Nagrand D/0 90.6,23.6
only if haveq(36991)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q 36983/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if haveq(36983)
step
Use your _Icehoof-In-Training Whistle_ |use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q 36984/1 |goto Frostfire Ridge/0 72.7,70.0
only if haveq(36984)
step
talk Keegan Firebeard##86973
turnin Clefthoof Training: Riplash##36985 |goto Lunarfall 39.8,56.6 |only if haveq(36985)
turnin Clefthoof Training: Gezz'ran##36986 |goto Lunarfall 39.8,56.6 |only if haveq(36986)
turnin Clefthoof Training: Bulbapore##36987 |goto Lunarfall 39.8,56.6 |only if haveq(36987)
turnin Clefthoof Training: Cruel Ogres##36988 |goto Lunarfall 39.8,56.6 |only if haveq(36988)
turnin Clefthoof Training: Darkwing Roc##36989 |goto Lunarfall 39.8,56.6 |only if haveq(36989)
turnin Clefthoof Training: Ironbore##36992 |goto Lunarfall 39.8,56.6 |only if haveq(36992)
turnin Clefthoof Training: Moth of Wrath##36990 |goto Lunarfall 39.8,56.6 |only if haveq(36990)
turnin Clefthoof Training: Orc Hunters##36993 |goto Lunarfall 39.8,56.6 |only if haveq(36993)
turnin Clefthoof Training: The Garn##36994 |goto Lunarfall 39.8,56.6 |only if haveq(36994)
turnin Clefthoof Training: Thundercall##36991 |goto Lunarfall 39.8,56.6 |only if haveq(36991)
turnin Clefthoof Training: Great-Tusk##36983 |goto Lunarfall 39.8,56.6 |only if haveq(36983)
turnin Clefthoof Training: Rakkiri##36984 |goto Lunarfall 39.8,56.6 |only if haveq(36984)
step
collect Trained Icehoof##116656
learnmount Trained Icehoof##171617 |use Trained Icehoof##116656
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
|tip quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
confirm
step
talk Keegan Firebeard##86973
accept Entangling an Elekk##36915 |goto Lunarfall 39.8,56.6
step
Use your _Elekk Lasso_ on the Young Meadowstomper in the area |use Elekk Lasso##118184 |q 36915/1 |goto Nagrand D/0 84.8,39.6
step
talk Keegan Firebeard##86973
turnin Entangling an Elekk##36915 |goto Lunarfall 39.8,56.6
step
talk Keegan Firebeard##86973
You will only be able to _complete 1 of the following quests_ per day
accept Elekk Training: Cruel Ogres##37015 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37015)
accept Elekk Training: Darkwing Roc##37016 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37016)
accept Elekk Training: Ironbore##37019 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37019)
accept Elekk Training: Moth of Wrath##37017 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37017)
accept Elekk Training: Orc Hunters##37020 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37020)
accept Elekk Training: The Garn##37021 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37021)
accept Elekk Training: Thundercall##37018 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37018)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q 37015/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37015)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q 37016/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37016)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q 37019/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37019)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q 37017/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37017)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q 37020/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37020)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87107 |q 37021/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37021)
step
Use your _Meadowstomper-In-Training Whistle_ |use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q 37018/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37018)
step
talk Keegan Firebeard##86973
turnin Elekk Training: Cruel Ogres##37015 |goto Lunarfall 39.8,56.6 |only if haveq(37015)
turnin Elekk Training: Darkwing Roc##37016 |goto Lunarfall 39.8,56.6 |only if haveq(37016)
turnin Elekk Training: Ironbore##37019 |goto Lunarfall 39.8,56.6 |only if haveq(37019)
turnin Elekk Training: Moth of Wrath##37017 |goto Lunarfall 39.8,56.6 |only if haveq(37017)
turnin Elekk Training: Orc Hunters##37020 |goto Lunarfall 39.8,56.6 |only if haveq(37020)
turnin Elekk Training: The Garn##37021 |goto Lunarfall 39.8,56.6 |only if haveq(37021)
turnin Elekk Training: Thundercall##37018 |goto Lunarfall 39.8,56.6 |only if haveq(37018)
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
|tip quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
confirm
step
talk Fanny Firebeard##86974
accept Requisition a Riverbeast##36918 |goto Lunarfall 38.66,61.94
step
Use your _Riverbeast Lasso_ on the Young Riverwallow in the area |use Riverbeast Lasso##118183 |q 36918/1 |goto Talador/0 63.8,54.9
step
talk Fanny Firebeard##86974
turnin Requisition a Riverbeast##36918 |goto Lunarfall 38.66,61.94
step
talk Fanny Firebeard##86974
You will only be able to _complete 1 of the following quests_ per day
accept Riverbeast Training: Gezz'ran##37005 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37005)
accept Riverbeast Training: Bulbapore##37006 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37006)
accept Riverbeast Training: Cruel Ogres##37007 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37007)
accept Riverbeast Training: Darkwing Roc##37008 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37008)
accept Riverbeast Training: Ironbore##37011 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37011)
accept Riverbeast Training: Moth of Wrath##37009 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37009)
accept Riverbeast Training: Orc Hunters##37012 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37012)
accept Riverbeast Training: The Garn##37013 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37013)
accept Riverbeast Training: Thundercall##37010 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37010)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q 37005/1 |goto Talador/0 31.5,54.9
only if haveq(37005)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q 37006/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(37006)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q 37007/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37007)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Darkwing Roc##87088 |q 37008/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37008)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q 37011/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37011)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q 37009/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37009)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q 37012/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37012)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87107 |q 37013/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37013)
step
Use your _Riverwallow-In-Training Whistle_ |use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q 37010/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37010)
step
talk Fanny Firebeard##86974
turnin Riverbeast Training: Gezz'ran##37005 |goto Lunarfall 38.66,61.94 |only if haveq(37005)
turnin Riverbeast Training: Bulbapore##37006 |goto Lunarfall 38.66,61.94 |only if haveq(37006)
turnin Riverbeast Training: Cruel Ogres##37007 |goto Lunarfall 38.66,61.94 |only if haveq(37007)
turnin Riverbeast Training: Darkwing Roc##37008 |goto Lunarfall 38.66,61.94 |only if haveq(37008)
turnin Riverbeast Training: Ironbore##37011 |goto Lunarfall 38.66,61.94 |only if haveq(37011)
turnin Riverbeast Training: Moth of Wrath##37009 |goto Lunarfall 38.66,61.94 |only if haveq(37009)
turnin Riverbeast Training: Orc Hunters##37012 |goto Lunarfall 38.66,61.94 |only if haveq(37012)
turnin Riverbeast Training: The Garn##37013 |goto Lunarfall 38.66,61.94 |only if haveq(37013)
turnin Riverbeast Training: Thundercall##37010 |goto Lunarfall 38.66,61.94 |only if haveq(37010)
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
|tip quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
confirm
step
talk Keegan Firebeard##86973
accept Besting a Boar##36913 |goto Lunarfall 39.8,56.6
step
Use your _Boar Lasso_ on Young Rocktusks in the area |use Boar Lasso##118185 |q 36913/1 |goto Gorgrond/0 43.9,37.3
step
talk Keegan Firebeard##86973
turnin Besting a Boar##36913 |goto Lunarfall 39.8,56.6
step
talk Keegan Firebeard##86973
You will only be able to _complete 1 of the following quests_ per day
accept Boar Training: Riplash##36995 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36995)
accept Boar Training: Gezz'ran##36996 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36996)
accept Boar Training: Bulbapore##36997 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36997)
accept Boar Training: Cruel Ogres##36998 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36998)
accept Boar Training: Darkwing Roc##36999 |goto Lunarfall 39.8,56.6 |or |only if not completedq(36999)
accept Boar Training: Ironbore##37002 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37002)
accept Boar Training: Moth of Wrath##37000 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37000)
accept Boar Training: Orc Hunters##37003 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37003)
accept Boar Training: The Garn##37004 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37004)
accept Boar Training: Thundercall##37001 |goto Lunarfall 39.8,56.6 |or |only if not completedq(37001)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q 36995/1 |goto Gorgrond/0 50.2,38.4
only if haveq(36995)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q 36996/1 |goto Talador/0 31.5,54.9
only if haveq(36996)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q 36997/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(36997)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q 36998/1 |goto Nagrand D/0 79.2,71.3
only if haveq(36998)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q 36999/1 |goto Nagrand D/0 68.4,20.3
only if haveq(36999)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q 37002/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37002)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q 37000/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37000)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q 37003/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37003)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87107 |q 37004/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37004)
step
Use your _Rocktusk-In-Training Whistle_ |use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q 37001/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37001)
step
talk Keegan Firebeard##86973
turnin Boar Training: Riplash##36995 |goto Lunarfall 39.8,56.6 |only if haveq(36995)
turnin Boar Training: Gezz'ran##36996 |goto Lunarfall 39.8,56.6 |only if haveq(36996)
turnin Boar Training: Bulbapore##36997 |goto Lunarfall 39.8,56.6 |only if haveq(36997)
turnin Boar Training: Cruel Ogres##36998 |goto Lunarfall 39.8,56.6 |only if haveq(36998)
turnin Boar Training: Darkwing Roc##36999 |goto Lunarfall 39.8,56.6 |only if haveq(36999)
turnin Boar Training: Ironbore##37002 |goto Lunarfall 39.8,56.6 |only if haveq(37002)
turnin Boar Training: Moth of Wrath##37000 |goto Lunarfall 39.8,56.6 |only if haveq(37000)
turnin Boar Training: Orc Hunters##37003 |goto Lunarfall 39.8,56.6 |only if haveq(37003)
turnin Boar Training: The Garn##37004 |goto Lunarfall 39.8,56.6 |only if haveq(37004)
turnin Boar Training: Thundercall##37001 |goto Lunarfall 39.8,56.6 |only if haveq(37001)
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
|tip quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
confirm
step
talk Fanny Firebeard##86974
accept Taming a Talbuk##36911 |goto Lunarfall 38.66,61.94
step
Use your _Talbuk Lasso_ on Young Silverpelts in the area |use Talbuk Lasso##118179 |q 36911/1 |goto Shadowmoon Valley D/0 50.3,30.1
step
talk Fanny Firebeard##86974
turnin Taming a Talbuk##36911 |goto Lunarfall 38.66,61.94
step
talk Fanny Firebeard##86974
You will only be able to _complete 1 of the following quests_ per day
accept Talbuk Training: Riplash##36973 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36973)
accept Talbuk Training: Gezz'ran##36974 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36974)
accept Talbuk Training: Bulbapore##36975 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36975)
accept Talbuk Training: Cruel Ogres##36976 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36976)
accept Talbuk Training: Darkwing Roc##36977 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36977)
accept Talbuk Training: Ironbore##36980 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36980)
accept Talbuk Training: Moth of Wrath##36978 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36978)
accept Talbuk Training: Orc Hunters##36981 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36981)
accept Talbuk Training: The Garn##36982 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36982)
accept Talbuk Training: Thundercall##36979 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36979)
accept Talbuk Training: Great-Tusk##36971 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36971)
accept Talbuk Training: Rakkiri##36972 |goto Lunarfall 38.66,61.94 |or |only if not completedq(36972)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q 36973/1 |goto Gorgrond/0 50.2,38.4
only if haveq(36973)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q 36974/1 |goto Talador/0 31.5,54.9
only if haveq(36974)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q 36975/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(36975)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q 36976/1 |goto Nagrand D/0 79.2,71.3
only if haveq(36976)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q 36977/1 |goto Nagrand D/0 68.4,20.3
only if haveq(36977)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q 36980/1 |goto Nagrand D/0 53.1,77.4
only if haveq(36980)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q 36978/1 |goto Nagrand D/0 43.6,69.3
only if haveq(36978)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q 36981/1 |goto Nagrand D/0 69.6,34.6
only if haveq(36981)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87107 |q 36982/1 |goto Nagrand D/0 63.8,80.9
only if haveq(36982)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q 36979/1 |goto Nagrand D/0 90.6,23.6
only if haveq(36979)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q 36971/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if haveq(36971)
step
Use your _Silverpelt-In-Training Whistle_ |use Silverpelt-In-Training Whistle##118352
kill Rakkiri##87085 |q 36972/1 |goto Frostfire Ridge/0 72.7,70.0
only if haveq(36972)
step
talk Fanny Firebeard##86974
turnin Talbuk Training: Riplash##36973 |goto Lunarfall 38.66,61.94 |only if haveq(36973)
turnin Talbuk Training: Gezz'ran##36974 |goto Lunarfall 38.66,61.94 |only if haveq(36974)
turnin Talbuk Training: Bulbapore##36975 |goto Lunarfall 38.66,61.94 |only if haveq(36975)
turnin Talbuk Training: Cruel Ogres##36976 |goto Lunarfall 38.66,61.94 |only if haveq(36976)
turnin Talbuk Training: Darkwing Roc##36977 |goto Lunarfall 38.66,61.94 |only if haveq(36977)
turnin Talbuk Training: Ironbore##36980 |goto Lunarfall 38.66,61.94 |only if haveq(36980)
turnin Talbuk Training: Moth of Wrath##36978 |goto Lunarfall 38.66,61.94 |only if haveq(36978)
turnin Talbuk Training: Orc Hunters##36981 |goto Lunarfall 38.66,61.94 |only if haveq(36981)
turnin Talbuk Training: The Garn##36982 |goto Lunarfall 38.66,61.94 |only if haveq(36982)
turnin Talbuk Training: Thundercall##36979 |goto Lunarfall 38.66,61.94 |only if haveq(36979)
turnin Talbuk Training: Great-Tusk##36971 |goto Lunarfall 38.66,61.94 |only if haveq(36971)
turnin Talbuk Training: Rakkiri##36972 |goto Lunarfall 38.66,61.94 |only if haveq(36972)
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
|tip Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
confirm
step
talk Fanny Firebeard##86974
accept Wrangling a Wolf##36914 |goto Lunarfall 38.66,61.94
step
Use your _Wolf Lasso_ on the Young Snarler in the area |use Wolf Lasso##118182 |q 36914/1 |goto Nagrand D/0 55.6,60.9
step
talk Fanny Firebeard##86974
turnin Wrangling a Wolf##36914 |goto Lunarfall 38.66,61.94
step
talk Fanny Firebeard##86974
You will only be able to _complete 1 of the following quests_ per day
accept Wolf Training: Cruel Ogres##37022 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37022)
accept Wolf Training: Darkwing Roc##37023 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37023)
accept Wolf Training: Ironbore##37026 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37026)
accept Wolf Training: Moth of Wrath##37024 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37024)
accept Wolf Training: Orc Hunters##37027 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37027)
accept Wolf Training: The Garn##37028 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37028)
accept Wolf Training: Thundercall##37025 |goto Lunarfall 38.66,61.94 |or |only if not completedq(37025)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q 37022/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37022)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q 37023/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37023)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q 37026/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37026)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q 37024/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37024)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q 37027/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37027)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Maimclaw##87107 |q 37028/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37028)
step
Use your _Snarler-In-Training Whistle_ |use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q 37025/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37025)
step
talk Fanny Firebeard##86974
turnin Wolf Training: Cruel Ogres##37022 |goto Lunarfall 38.66,61.94 |only if haveq(37022)
turnin Wolf Training: Darkwing Roc##37023 |goto Lunarfall 38.66,61.94 |only if haveq(37023)
turnin Wolf Training: Ironbore##37026 |goto Lunarfall 38.66,61.94 |only if haveq(37026)
turnin Wolf Training: Moth of Wrath##37024 |goto Lunarfall 38.66,61.94 |only if haveq(37024)
turnin Wolf Training: Orc Hunters##37027 |goto Lunarfall 38.66,61.94 |only if haveq(37027)
turnin Wolf Training: The Garn##37028 |goto Lunarfall 38.66,61.94 |only if haveq(37028)
turnin Wolf Training: Thundercall##37025 |goto Lunarfall 38.66,61.94 |only if haveq(37025)
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success.
map Frostfire Ridge
path follow loose; loop; ants curved
path	16.6,39.2	12.8,47.2	15.4,52.6
path	26.0,45.6	19.6,39.4
kill Nok-Karosh##81001
collect Garn Nighthowl##116794
|next "done"
step
label "buy"
talk Devin Tyron##86733
buy 1 Garn Nighthowl##116794 |goto Stormshield 53.8,65.0
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success.
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success.
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success.
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" to start or join a farming raid to increase your chance of success.
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" to start or join a farming raid to increase your chance of success.
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Steed",{
keywords={"viscious","war","steed","horse","warhorse","pvp","rated","battlegrounds","arena","ground","mount"},
model={38668},
mounts={100332},
patch='unknown',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious War Steed mount.",
},[[
step
In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches
Win 100 Arena Matches |achieve 8642/1 |or
Win 40 Rated Battlegrounds |achieve 8642/2 |or
|tip To do this, press "I", then select the "Player vs. Player" tab, then select the "Rated" section.
step
Check your mail box once you have completed the matches
collect 1 Vicious Saddle##103533
step
talk Necrolord Sipe##73190
buy Reins of the Vicious War Steed##70909 |goto Stormwind City/0 77.0,65.8
step
Use the _Reins of the Vicious War Steed_ in your bags |use Vicious War Steed##70909
learnmount Vicious War Steed##100332
step
Congratulations, you earned the _Vicious War Steed_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious Warsaber",{
keywords={"vicious","warsaber","tiger","pvp","rated","battlegrounds","arena","ground","mount"},
model={51037},
mounts={146615},
patch='54000',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious Warsaber mount.",
},[[
step
In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches
Win 100 Arena Matches |achieve 8642/1 |or
Win 40 Rated Battlegrounds |achieve 8642/2 |or
|tip To do this, press "I", then select the "Player vs. Player" tab, then select the "Rated" section.
step
Check your mail box once you have completed the matches
collect 1 Vicious Saddle##103533
step
talk Necrolord Sipe##73190
buy Reins of the Vicious Warsaber##102514 |goto Stormwind City/0 77.0,65.8
step
Use the _Reins of the Vicious Warsaber_ in your bags |use Reins of the Vicious Warsaber##102514
learnmount Vicious Warsaber##146615
step
Congratulations, you earned the _Vicious Warsaber_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Ram",{
keywords={"vicious","war","ram","pvp","rated","battlegrounds","arena","ground","mount"},
model={60574},
mounts={171834},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious War Ram mount.",
},[[
step
In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches
Win 100 Rated Arena (3v3) Matches |achieve 9238/1 |or
Win 40 Rated Battleground (10v10) Matches |achieve 9238/2 |or
|tip To do this, press "I", then select the "Player vs. Player" tab, then select the "Rated" section.
step
Check your mail box once you have completed the matches.
collect 1 Vicious Saddle##103533
step
talk Necrolord Sipe##73190
buy Vicious War Ram##116777 |goto Stormwind City 76.8,65.6
step
use _Vicious War Ram_ in your bags |use Reins of the Vicious War Ram##116777
learnmount Vicious War Ram##171834
step
Congratulations, you earned the _Vicious War Ram_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Mechanostrider",{
keywords={"vicious","war","mechanostrider","pvp","rated","battlegrounds","arena","ground","mount"},
model={63249},
mounts={183889},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Vicious War Mechanostrider mount.",
},[[
step
In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches
Win 100 Rated Arena (3v3) Matches |achieve 9236/1 |or
Win 40 Rated Battleground (10v10) Matches |achieve 9236/2 |or
|tip To do this, press "I", then select the "Player vs. Player" tab, then select the "Rated" section.
step
Check your mail box once you have completed the matches
collect 1 Vicious Saddle##103533.
step
talk Necrolord Sipe##73190
buy Vicious War Mechanostrider##124089 |goto Stormwind City 76.8,65.6
step
use Vicious War Mechanostrider##124089
learnmount Vicious War Mechanostrider##183889
step
Congratulations, you earned the _Vicious War Mechanostrider_ mount!
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
talk Almie##96451
accept What Horrible Presents!##39668 |goto Lunarfall 44.1,51.7
accept Grumpus##39651 |goto Lunarfall 44.1,51.7
accept Menacing Grumplings##39649 |goto Lunarfall 44.1,51.7
accept Where Are the Children##39648 |goto Lunarfall 44.1,51.7
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
turnin Where Are the Children?##39648 |goto Lunarfall 44.1,51.7
turnin Menacing Grumplings##39649 |goto Lunarfall 44.1,51.7
turnin What Horrible Presents!##39668 |goto Lunarfall 44.1,51.7
turnin Grumpus##39651 |goto Lunarfall 44.1,51.7
step
talk Izzy Hollyfizzle##96362
buy 1 Savage Gift##128670 |use Savage Gift##128670 |goto Lunarfall 44.1,51.7
|tip The savage gift costs 5 merry supplies and one character can only obtain 5 merry supplies per day during this event.
collect Minion of Grumpus##128671
learnmount Minion of Grumpus##191314 |use Minion of Grumpus##128671
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
This mount _requires_ you to have level 600 Leatherworking
_Click here_ to use Skinning to gather the Raw Beast Hide yourself |confirm |next "farml"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buyl"
step
label "farml"
collect 2000 Raw Beast Hide##110609
map Nagrand D
path follow loose; loop; ants curved
path	75.4,43.1	72.6,42.8	69.7,43.5
path	66.6,43.5	62.2,45.1	61.0,50.3
path	62.6,56.9	68.2,57.9	73.1,52.2
Kill any beasts you see on this path for skinning
|next "nextl"
step
label "buyl"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 2000 Raw Beast Hide##110609
step
label "nextl"
_Click here_ to use Herbalism to gather the Gorgrond Flytrap yourself |confirm |next "farm"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buy"
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
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Ironhoof Destroyer",{
mounts={171621},
patch='60100',
mounttype='Ground',
keywords={"ironhoof","destroyer","ground","mount","raid"},
model={59837},
description="\nThis guide will help you acquire the Ironhoof Destroyer mount.",
},[[
step
Enter the Blackrock Foundry _Mythic_ Dungeon |goto Gorgrond/0 51.3,28.7
|tip Press "I", then select "Premade Groups" -> "Raids", and join a group for Blackrock Foundry Mythic. You can also create your own group. You have to enter the dungeon manually for Mythic difficulty.
kill Blackhand##77325
|tip Only one mount drops per kill.
collect Ironhoof Destroyer##116660 |complete hasmount(171621)
step
use Ironhoof Destroyer##116660
learnmount Ironhoof Destroyer##171621
step
Congratulations, you earned the _Ironhoof Destroyer_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Felsteel Annihilator",{
mounts={182912},
patch='62000',
mounttype='Flying',
keywords={"felsteel","annihilator","ground","mount","raid"},
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Armored Irontusk",{
keywords={"armored","irontusk","exalted","the","sha'tari","defense","ground","mount"},
model={59343},
mounts={171626},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Armored Irontusk mount.",
},[[
step
This mount is _Alliance only_ and requires you to be _Exalted_ with the _Sha'tari Defense_
|tip This vendor is only available if you at least have a level 2 Trading Post in your garrision.
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Sha'tari Defense"
confirm
step
talk Maaria##85427
|tip This mount costs 5,000 Gold and 5,000 Apexis Crystals.
buy Armored Irontusk##116665 |goto Lunarfall/0 34.2,149.2
learnmount Armored Irontusk##171626 |use Armored Irontusk##116665
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
confirm
step
talk Gazrix Gearlock##88482 |goto Stormshield 43.2,77.4
buy Domesticated Razorback##116672
learnmount Domesticated Razorback##171634 |use Domesticated Razorback##116672
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Dusty Rockhide",{
keywords={"dusty","rockhide","meadowstomper","exalted","council","of","exarchs","ground","mount"},
model={59342},
mounts={171625},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Dusty Rockhide mount.",
},[[
step
This mount is _Alliance only_ and requires you to be _Exalted_ with the _Council of Exarchs_
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Council of Exarchs"
confirm
step
talk Vindicator Nuurem ##85932
|tip This mount costs 5,000 Gold and 5,000 Apexis Crystals.
buy Dusty Rockhide##116664 |goto Stormshield 46.6,76.2
learnmount Dusty Rockhide##171625 |goto Stormshield 46.6,76.2 |use Dusty Rockhide##116664
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
confirm
step
talk Shadow-Sage Brakoss##85946
|tip This mount costs 5,000 gold and 5,000 apexis crystals.
buy Shadowmane Charger##116772 |n
learnmount Shadowmane Charger##171829 |goto Stormshield 45.0,75.8 |use Shadowmane Charger##116772
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Wild Goretusk",{
keywords={"wild","goretusk","ground","mount","reputation","boar"},
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
buy Wild Goretusk##116671 |complete hasmount(171633) |goto Tanaan Jungle/0 55.3,74.8
|tip You need 1,000 Blackfang Claws to purchase this. You get them by killing Blackfang mobs. Use the "Saberstalkers" dailies guide to accomplish this.
step
use Wild Goretusk##116671
learnmount Wild Goretusk##171633
step
Congratulations, you earned the _Wild Goretusk_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Bristling Hellboar",{
keywords={"hellboar","bristling","ground","mount","reputation","boar"},
model={64726},
mounts={190690},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Bristling Hellboar mount.",
},[[
step
Reach _Exalted_ Reputation with The Saberstalkers |complete rep('The Saberstalkers') == Exalted
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
keywords={"deathtusk","felboar","ground","mount","reputation","boar"},
model={64849},
mounts={190977},
patch='62000',
mounttype='Ground',
description="\nThis guide will help you acquire the Deathtusk Felboar mount.",
},[[
step
Reach _Exalted_ Reputation with Hand of the Prophet |complete rep('Hand of the Prophet') == Exalted
|tip Use the "Hand of the Prophet" dailies guide to accomplish this.
step
talk Vindicator Krethos##90974
buy Deathtusk Felboar##128526 |complete hasmount(190977) |goto Tanaan Jungle/0 58.4,60.5
|tip This costs 2,000 gold.
step
use Deathtusk Felboar##128526
learnmount Deathtusk Felboar##190977
step
Congratulations, you earned the _Deathtusk Felboar_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Pale Thorngrazer",{
keywords={"pale","thorngrazer","talbuk","exalted","wrynn's","vanguard","ground","mount"},
model={59367},
mounts={171833},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Pale Thorngrazer mount.",
},[[
step
This mount is _Alliance only_ and requires you to be _Exalted_ with the _Wrynn's Vanguard_
_Click here_ for the reputation guide. |confirm |next "Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard"
confirm
step
talk Tomas Riogain##80882
buy Pale Thorngrazer##116776 |goto Stormshield 44.2,74.0
|tip This costs 5,000 Gold and 5,000 Apexis Crystals.
learnmount Pale Thorngrazer##171833 |use Pale Thorngrazer##116776
step
Congratulations, you earned the _Pale Thorngrazer_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Garrison Mounts\\Mudback Riverbeast",{
keywords={"mudback","riverbeast","ground","mount","garrison"},
model={59746},
mounts={171826},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Mudback Riverbeast mount.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete the _It's a Boat, It's a Plane, It's... Just a Riverbeast_ Naval Mission
|tip This mount is a reward for successfully completing the rare Naval Mission: It's a Boat, It's a Plane, It's... Just a Riverbeast. Check your naval mission table often until you have the mission available.
use Mudback Riverbeast##116769
learnmount Mudback Riverbeast##171826 |goto Shadowmoon Valley D/0 28.2,11.8
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
learnmount Coalfist Gronnling##189364
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
keywords={"core","hound","corehound","molten","mount","unavailable"},
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
keywords={"crimson","water","strider","waterwalking","nat","pagle","ground","mount","vendor"},
model={43713},
mounts={127271},
patch='50400',
mounttype='Ground',
description="\nThis guide will help you acquire the Crimson Water Strider mount.",
},[[
step
This mount requires you to be _Honored_ with the _Nat Pagle_
You must also have a _700 fishing skill_, and a _level 3 Fishing Shack_
|tip This mount requires 100 Nat's Lucky Coins.
confirm
step
talk Nat Pagle##85984
buy Reins of the Crimson Water Strider##87791 |n
learnmount Crimson Water Strider##127271 |goto Lunarfall 53.8,13.8 |use Reins of the Crimson Water Strider##87791
step
Congratulations, you earned the _Crimson Water Strider_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Mosshide Riverwallow",{
keywords={"mosshide","riverwallow","ground","mount","vendor"},
model={59745},
mounts={171825},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Mosshide Riverwallow mount.",
},[[
step
talk Dawn-Seeker Krek##86391
buy Mosshide Riverwallow##116768 |n |goto Stormshield 50.4,61.6
|tip This mount costs 50,000 Gold and 5,000 Apexis Crystals
step
use Mosshide Riverwallow##116768
learnmount Mosshide Riverwallow##171825
step
Congratulations, you earned the _Mosshide Riverswallow_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Rocktusk Battleboar",{
keywords={"rocktusk","battleboar","boar","hog","pig","ground","mount","vendor"},
model={59348},
mounts={171628},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Rocktusk Battleboar mount.",
},[[
step
talk Trader Araanda##95470
buy Rocktusk Battleboar##116667 |complete hasmount(171628) |goto Lunarfall/0 30.0,34.6
|tip This costs 10,000 gold.
step
use Rocktusk Battleboar##116667
learnmount Rocktusk Battleboar##171628
step
Congratulations, you earned the _Rocktusk Battleboar_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Witherhide Cliffstomper",{
keywords={"witherhide","cliffstomper","ground","mount","vendor"},
model={59321},
mounts={171616},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Witherhide Cliffstomper mount.",
},[[
step
talk Trader Araanda##95470
buy Witherhide Cliffstomper##116655 |complete hasmount(171616) |goto Lunarfall/0 30.0,34.6
|tip This costs 20,000 gold.
step
use Witherhide Cliffstomper##116655
learnmount Witherhide Cliffstomper##171616
step
Congratulations, you earned the _Witherhide Cliffstomper_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Champion's Treadblade",{
keywords={"champion","treadblade","ground","mount","vendor"},
model={60207},
mounts={171846},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Champion's Treadblade mount.",
},[[
step
talk Paulie##87501
buy Witherhide Cliffstomper##116789 |complete hasmount(171846) |goto Stormwind City 73.1,59
|tip This costs 100,000 gold.
step
use Champion's Treadblade##116789
learnmount Champion's Treadblade##171846
step
Congratulations, you earned the _Champion's Treadblade_ mount!
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
|tip Press "I" on your keyboard, select "Premade Groups", and then "Questing" or "Custom" to start or join a farming raid to increase your chance of success.
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Felfire Hawk",{
keywords={"felfire","hawk","flying","mount","schievement"},
model={38032},
mounts={97501},
patch='unknown',
mounttype='Flying',
description="\nThis guide will help you acquire the Felfire Hawk mount.",
},[[
step
This mount requires the achievement _Mountacular_
_Complete the Mountacular achievement_ |achieve 9598
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
keywords={"solar","spirehawk","flying","mount"},
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
keywords={"Infinite","Timereaver","flying","mount"},
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
Congratulations, you have attained the _Dread Raven_ mount!
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
|tip This mount is one of 5 recruit a friend mounts.
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
keywords={"tailoring","creeping","carpet","flying","mount"},
model={46453},
mounts={169952},
patch='60100',
mounttype='Ground',
description="\nThis guide will help you acquire the Creeping Carpet mount.",
},[[
step
This mount requires you to have _level 600 Tailoring_
Click here to gather the _Sumptuous Fur_ yourself |confirm |next "farml"
Click here to be _taken to the Auctioneer_ to purchase it |confirm |next "buyl"
step
label "farml"
collect 2000 Sumptuous Fur##111557
map Spires of Arak
path follow loose; loop; ants curved
path	45.8,66.6	46.4,69.6	47.8,74.0
path	49.6,76.0	52.4,77.4	47.8,69.6
path	46.6,68.0
Kill _any Bloodmane mobs_ for looting the fur
|next "nextl"
step
label "buyl"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
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
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
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
keywords={"dreadwing","corrupted","flying","mount","reputation"},
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
buy Reins of the Corrupted Dreadwing##123974 |complete hasmount(183117) |goto Tanaan Jungle/0 58.0,59.4
|tip This costs 150,000 Apexis Crystals. You can earn them by using all of the Tanaan Jungle dailies guides, as well as the "Garrison Assault Daily Quests" guide. Also, you can earn Apexis Crystals by killing mobs in the Tanaan Jungle "Assault" bonus objective areas, by looting Treasures in Draenor, or by completing Garrison Missions. There are many ways to earn Apexis Crystals now.
step
use Corrupted Dreadwing##123974
learnmount Corrupted Dreadwing##183117
step
Congratulations, you earned the _Corrupted Dreadwing_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Bridle of the Ironbound Wraithcharger",{
keywords={"Bridle","of","the","Ironbound","Wraithcharger","flying","mount","vendor"},
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
keywords={"Reins","of","the","Eclipse","Dragonhawk","flying","mount","vendor"},
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
