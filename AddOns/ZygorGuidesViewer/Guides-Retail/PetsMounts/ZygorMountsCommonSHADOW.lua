local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsMountsCSHADOW") then return end
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Rampart Screecher",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Rampart, Screecher"},
mounts={332903},
patch='90001',
mounttype='Flying',
model={97368},
description="\nThis mount is acquired by earning the \"Glory of the Nathria Raider\" achievement.",
},[[
step
Earn the "Glory of the Nathria Raider" Achievement |achieve 14355 |or
|tip Use the "Glory of the Nathria Raider" achievement guide to accomplish this.
'|complete hasmount(332903) |or
step
collect Rampart Screecher##182596 |or
|tip You can find it in your mailbox.
'|complete hasmount(332903) |or
step
use the Rampart Screecher##182596
Learn the "Rampart Screecher" Mount |learnmount Rampart Screecher##332903
step
_Congratulations!_
You Collected the "Rampart Screecher" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Silky Shimmermoth",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, anima, Shadowlands, Silky, Shimmermoth"},
mounts={318051},
patch='90001',
mounttype='Flying',
model={95205},
description="\nThis mount is purchased for 5,000 Reservoir Anima after earning the \"Ardenweald's a Stage\" achievement.",
},[[
step
Earn the "Ardenweald's a Stage" Achievement |achieve 14353 |or
|tip Use the "Ardenweald's a Stage" achievement guide to accomplish this.
'|complete hasmount(318051) |or
step
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(318051)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Master Clerk Salorn##163714
buy 1 Silky Shimmermoth##180748 |goto Ardenweald/0 43.12,47.06 |or
'|complete hasmount(318051) |or
step
use the Silky Shimmermoth##180748
Learn the "Silky Shimmermoth" Mount |learnmount Silky Shimmermoth##318051
step
_Congratulations!_
You Collected the "Silky Shimmermoth" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Sintouched Deathwalker",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, keystone, Sintouched, Deathwalker"},
mounts={340068},
patch='90001',
mounttype='Flying',
model={97644},
description="\nThis mount is acquired by earning the \"Shadowlands Keystone Master: Season One\" achievement.",
},[[
step
Earn the "Shadowlands Keystone Master: Season One" Achievement |achieve 14532 |or
|tip Use the "Shadowlands Keystone Master: Season One" achievement guide to accomplish this.
'|complete hasmount(340068) |or
step
collect Sintouched Deathwalker##182717 |or
|tip You can find it in your mailbox.
'|complete hasmount(340068) |or
step
use the Sintouched Deathwalker##182717
Learn the "Sintouched Deathwalker" Mount |learnmount Sintouched Deathwalker##340068
step
_Congratulations!_
You Collected the "Sintouched Deathwalker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Voracious Gorger",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Voracious, Gorger"},
mounts={344659},
patch='90001',
mounttype='Ground',
model={99091},
description="\nThis mount is acquired by earning the \"Glory of the Shadowlands Hero\" achievement.",
},[[
step
Earn the "Glory of the Shadowlands Hero" Achievement |achieve 14322 |or
|tip Use the "Glory of the Shadowlands Hero" achievement guide to accomplish this.
'|complete hasmount(344659) |or
step
collect Voracious Gorger##184183 |or
|tip You can find it in your mailbox.
'|complete hasmount(344659) |or
step
use the Voracious Gorger##184183
Learn the "Voracious Gorger" Mount |learnmount Voracious Gorger##344659
step
_Congratulations!_
You Collected the "Voracious Gorger" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Kyrian Mounts\\Gruesome Flayedwing (Kyrian)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Gruesome, Flayedwing, covenant"},
mounts={336039},
patch='90001',
mounttype='Flying',
model={98153},
description="\nThis mount is purchased for 2,500 Reservoir Anima from Binkiros after earning the \"All The Colors of the Painbow\" achievement.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Earn the "All The Colors of the Painbow" Achievement |achieve 14853 |or
'|complete hasmount(336039) |or
step
Collect 2500 Reservoir Anima |complete curcount(1813) >= 2500 or hasmount(336039)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Binkiros##171973
buy 1 Gruesome Flayedwing##181300 |goto Elysian Hold/0 31.38,47.90 |or
'|complete hasmount(336039) |or
step
use the Gruesome Flayedwing##181300
Learn the "Gruesome Flayedwing" Mount |learnmount Gruesome Flayedwing##336039
step
_Congratulations!_
You Collected the "Gruesome Flayedwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Kyrian Mounts\\Silvertip Dredwing (Kyrian)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Silvertip, Dredwing, covenant"},
mounts={312777},
patch='90001',
mounttype='Flying',
model={97367},
description="\nThis mount is purchased for 2,500 Reservoir Anima from Binkiros after earning the \"Curse of Thirst\" achievement.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Earn the "Curse of Thirst" Achievement |achieve 14858 |or
'|complete hasmount(312777) |or
step
Collect 2500 Reservoir Anima |complete curcount(1813) >= 2500 or hasmount(312777)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Binkiros##171973
buy 1 Silvertip Dredwing##181316 |goto Elysian Hold/0 31.38,47.90 |or
'|complete hasmount(312777) |or
step
use the Silvertip Dredwing##181316
Learn the "Silvertip Dredwing" Mount |learnmount Silvertip Dredwing##312777
step
_Congratulations!_
You Collected the "Silvertip Dredwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Eternal Phalynx of Courage",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Eternal, Phalynx, of, Courage, covenant"},
mounts={334406},
patch='90001',
mounttype='Ground',
model={94338},
description="\nThis mount is acquired by completing Chapter 6 of the Kyrian covenant questline.",
},[[
step
Complete the "A New Age" quest |q 61697 |future |or
|tip Use the "Kyrian Questline" leveling guide to accomplish this.
'|complete hasmount(334406) |or
step
collect Eternal Phalynx of Courage##180766 |or
|tip This is a reward from the "A New Age" quest.
'|complete hasmount(334406) |or
step
use the Eternal Phalynx of Courage##180766
Learn the "Eternal Phalynx of Courage" Mount |learnmount Phalynx of Courage##334406
step
_Congratulations!_
You Collected the "Eternal Phalynx of Courage" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Eternal Phalynx of Humility",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Eternal, Phalynx, of, Humility, covenant"},
mounts={334409},
patch='90001',
mounttype='Ground',
model={94337},
description="\nThis mount is purchased for 2,500 Reservoir Anima from Binkiros after earning the \"Learning from the Masters\" achievement.",
},[[
step
Earn the "Learning from the Masters" Achievement |achieve 14861 |or
'|complete hasmount(334409) |or
step
Collect 2500 Reservoir Anima |complete curcount(1813) >= 2500 or hasmount(334409)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Binkiros##171973
buy 1 Eternal Phalynx of Humility##180768 |goto Elysian Hold/0 31.38,47.90 |or
'|complete hasmount(334409) |or
step
use the Eternal Phalynx of Humility##180768
Learn the "Eternal Phalynx of Humility" Mount |learnmount Eternal Phalynx of Humility##334409
step
_Congratulations!_
You Collected the "Eternal Phalynx of Humility" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Eternal Phalynx of Loyalty",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Eternal, Phalynx, of, Loyalty, covenant"},
mounts={334408},
patch='90001',
mounttype='Ground',
model={94335},
description="\nThis mount is purchased for 2,500 Reservoir Anima from Binkiros after earning the \"Death Foursworn\" achievement.",
},[[
step
Earn the "Death Foursworn" Achievement |achieve 14863 |or
'|complete hasmount(334408) |or
step
Collect 2500 Reservoir Anima |complete curcount(1813) >= 2500 or hasmount(334408)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Binkiros##171973
buy 1 Eternal Phalynx of Loyalty##180767 |goto Elysian Hold/0 31.38,47.90 |or
'|complete hasmount(334408) |or
step
use the Eternal Phalynx of Loyalty##180767
Learn the "Eternal Phalynx of Loyalty" Mount |learnmount Eternal Phalynx of Loyalty##334408
step
_Congratulations!_
You Collected the "Eternal Phalynx of Loyalty" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Eternal Phalynx of Purity",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Eternal, Phalynx, of, Purity, covenant"},
mounts={334403},
patch='90001',
mounttype='Ground',
model={94336},
description="\nThis mount is purchased for 100 Reservoir Anima from Adjutant Galos after reaching Renown level 39 with the Kyrian covenant.",
},[[
step
Reach Renown Level 39 |complete covenantrenown() >= 39 or hasmount(334403)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
Collect 100 Reservoir Anima |complete curcount(1813) >= 100 or hasmount(334403)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Adjutant Galos##174937
buy 1 Eternal Phalynx of Purity##180765 |goto Elysian Hold/1 63.64,30.38 |or
'|complete hasmount(334403) |or
step
use the Eternal Phalynx of Purity##180765
Learn the "Eternal Phalynx of Purity" Mount |learnmount Eternal Phalynx of Purity##334403
step
_Congratulations!_
You Collected the "Eternal Phalynx of Purity" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Pale Acidmaw (Kyrian)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Pale, Acidmaw, covenant"},
mounts={334365},
patch='90001',
mounttype='Ground',
model={94348},
description="\nThis mount is purchased for 2,500 Reservoir Anima from Binkiros after earning the \"Bare Necessities\" achievement.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Earn the "Bare Necessities" Achievement |achieve 14860 |or
'|complete hasmount(334365) |or
step
Collect 2500 Reservoir Anima |complete curcount(1813) >= 2500 or hasmount(334365)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Binkiros##171973
buy 1 Pale Acidmaw##180726 |goto Elysian Hold/0 31.38,47.90 |or
'|complete hasmount(334365) |or
step
use the Pale Acidmaw##180726
Learn the "Pale Acidmaw" Mount |learnmount Pale Acidmaw##334365
step
_Congratulations!_
You Collected the "Pale Acidmaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Phalynx of Courage",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Phalynx, of, Courage, covenant"},
mounts={334391},
patch='90001',
mounttype='Ground',
model={94334},
description="\nThis mount is acquired by completing Chapter 3 of the Kyrian covenant questline.",
},[[
step
Complete the "Building the Base" quest |q 58181 |future |or
|tip Use the "Kyrian Questline" leveling guide to accomplish this.
'|complete hasmount(334391) |or
step
collect Phalynx of Courage##180763 |or
|tip This is a reward from the "Building the Base" quest.
'|complete hasmount(334391) |or
step
use the Phalynx of Courage##180763
Learn the "Phalynx of Courage" Mount |learnmount Phalynx of Courage##334391
step
_Congratulations!_
You Collected the "Phalynx of Courage" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Kyrian Mounts\\Phalynx of Purity",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Phalynx, of, Purity, covenant"},
mounts={334398},
patch='90001',
mounttype='Ground',
model={94331},
description="\nThis mount is purchased for 2,000 Reservoir Anima from Adjutant Galos after reaching Renown level 23 with the Kyrian covenant.",
},[[
step
Reach Renown Level 23 |complete covenantrenown() >= 23 or hasmount(334398)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
Collect 2,000 Reservoir Anima |complete curcount(1813) >= 2000 or hasmount(334398)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Adjutant Galos##174937
buy 1 Phalynx of Purity##180764 |goto Elysian Hold/1 63.64,30.38 |or
'|complete hasmount(334398) |or
step
use the Phalynx of Purity##180764
Learn the "Phalynx of Purity" Mount |learnmount Phalynx of Purity##334398
step
_Congratulations!_
You Collected the "Phalynx of Purity" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Necrolord Mounts\\Dauntless Duskrunner (Necrolord)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Dauntless, Duskrunner, covenant"},
mounts={336064},
patch='90001',
mounttype='Flying',
model={97870},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with the Stitchmasters.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock Abominable Stitching |complete covenantfeature("Covenant Unique") >= 1
step
Reach Exalted Reputation with the Stitchmasters |complete rep('Stitchmasters') == Exalted or hasmount(336064)
|tip Complete Abominable Stitchings every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(336064)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Run up the stairs |goto Maldraxxus/0 56.24,65.12 < 20 |only if walking
Continue up the stairs |goto 53.79,66.94 < 20 |only if walking
talk Atticus##159238
buy 1 Dauntless Duskrunner##181317 |goto 55.19,68.39 |or
'|complete hasmount(336064) |or
step
use the Dauntless Duskrunner##181317
Learn the "Dauntless Duskrunner" Mount |learnmount Dauntless Duskrunner##336064
step
_Congratulations!_
You Collected the "Dauntless Duskrunner" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Necrolord Mounts\\Gruesome Flayedwing (Necrolord)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Gruesome, Flayedwing, covenant"},
mounts={336039},
patch='90001',
mounttype='Flying',
model={98153},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with the Stitchmasters.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock Abominable Stitching |complete covenantfeature("Covenant Unique") >= 1
step
Reach Exalted Reputation with the Stitchmasters |complete rep('Stitchmasters') == Exalted or hasmount(336039)
|tip Complete Abominable Stitchings every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(336039)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Run up the stairs |goto Maldraxxus/0 56.24,65.12 < 20 |only if walking
Continue up the stairs |goto 53.79,66.94 < 20 |only if walking
talk Atticus##159238
buy 1 Gruesome Flayedwing##181300 |goto 55.19,68.39 |or
'|complete hasmount(336039) |or
step
use the Gruesome Flayedwing##181300
Learn the "Gruesome Flayedwing" Mount |learnmount Gruesome Flayedwing##336039
step
_Congratulations!_
You Collected the "Gruesome Flayedwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Necrolord Mounts\\Predatory Plagueroc",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Predatory, Plagueroc, covenant"},
mounts={336045},
patch='90001',
mounttype='Flying',
model={98150},
description="\nThis mount is a rare drop from the rare spawn, Gieger, in Maldraxxus. Only members of the Necrolord covenant can loot this mount.",
},[[
step
kill Gieger##162741
|tip You may need help with this.
|tip This rare enemy may not always be available.
collect Predatory Plagueroc##182080 |goto Maldraxxus/0 31.51,35.40 |or
|tip This mount has about a 2% drop rate.
|tip Only members of the Necrolord covenant can loot this mount.
'|complete hasmount(336045) |or
step
use the Predatory Plagueroc##182080
Learn the "Predatory Plagueroc" Mount |learnmount Predatory Plagueroc##336045
step
_Congratulations!_
You Collected the "Predatory Plagueroc" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Necrolord Mounts\\Silvertip Dredwing (Necrolord)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Silvertip, Dredwing, covenant"},
mounts={312777},
patch='90001',
mounttype='Flying',
model={97367},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with the Stitchmasters.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock Abominable Stitching |complete covenantfeature("Covenant Unique") >= 1
step
Reach Exalted Reputation with the Stitchmasters |complete rep('Stitchmasters') == Exalted or hasmount(312777)
|tip Complete Abominable Stitchings every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(312777)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Run up the stairs |goto Maldraxxus/0 56.24,65.12 < 20 |only if walking
Continue up the stairs |goto 53.79,66.94 < 20 |only if walking
talk Atticus##159238
buy 1 Silvertip Dredwing##181316 |goto 55.19,68.39 |or
'|complete hasmount(312777) |or
step
use the Silvertip Dredwing##181316
Learn the "Silvertip Dredwing" Mount |learnmount Silvertip Dredwing##312777
step
_Congratulations!_
You Collected the "Silvertip Dredwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\Armored Bonehoof Tauralus",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Armored, Bonehoof, Tauralus, covenant"},
mounts={332466},
patch='90001',
mounttype='Ground',
model={96471},
description="\nThis mount is purchased for 5,000 Reservoir Anima and 100 Grateful Offerings or obtained as a rare drop from the rare, Sabreil the Bonecleaver, in Maldraxxus.",
},[[
step
Click here to purchase the Armored Bonehoof Tauralus |confirm |next "Gather_Currencies" |or
|tip
Click here to kill the rare spawn |confirm |next "Kill_Sabriel" |or
'|complete hasmount(332466) |or
step
label "Gather_Currencies"
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(332466)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
Collect 100 Grateful Offerings |complete curcount(1885) >= 100 or hasmount(332466)
|tip These are gained by upgrading your covenant's Anima Conductor and completing its dailies.
step
talk Su Zettai##172176
buy 1 Armored Bonehoof Tauralus##181815 |goto Seat of the Primus/0 52.21,40.74 |next "Learn_Mount" |or
'|complete hasmount(332466) |or
step
label "Kill_Sabriel"
kill Sabriel the Bonecleaver##168147
|tip You may need help with this.
|tip This rare enemy may not always be available.
collect Armored Bonehoof Tauralus##181815 |goto Maldraxxus/0 50.37,47.28 |or
|tip This mount has a very low drop rate.
'|complete hasmount(332466) |or
step
label "Learn_Mount"
use the Armored Bonehoof Tauralus##181815
Learn the "Armored Bonehoof Tauralus" Mount |learnmount Armored Bonehoof Tauralus##332466
step
_Congratulations!_
You Collected the "Armored Bonehoof Tauralus" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\Armored Plaguerot Tauralus",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Armored, Plaguerot, Tauralus, covenant"},
mounts={332464},
patch='90001',
mounttype='Ground',
model={96470},
description="\nThis mount is purchased for 100 Reservoir Anima from Su Zettai after reaching Renown level 39 with the Necrolord covenant.",
},[[
step
Reach Renown Level 39 |complete covenantrenown() >= 39 or hasmount(332464)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
Collect 100 Reservoir Anima |complete curcount(1813) >= 100 or hasmount(332464)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Su Zettai##172176
buy 1 Armored Plaguerot Tauralus##181821 |goto Seat of the Primus/0 52.21,40.74 |or
'|complete hasmount(332464) |or
step
use the Armored Plaguerot Tauralus##181821
Learn the "Armored Plaguerot Tauralus" Mount |learnmount Armored Plaguerot Tauralus##332464
step
_Congratulations!_
You Collected the "Armored Plaguerot Tauralus" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\Armored War-Bred Tauralus",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Armored, War-Bred, Tauralus, covenant"},
mounts={332462},
patch='90001',
mounttype='Ground',
model={96469},
description="\nThis mount is acquired by completing Chapter 9 of the Necrolord covenant questline.",
},[[
step
Complete the "The Third Fall of Kel'Thuzad" quest |q 59020 |future |or
|tip Use the "Necrolord Questline" leveling guide to accomplish this.
'|complete hasmount(332462) |or
step
collect Armored War-Bred Tauralus##181822 |or
|tip This is a reward from the "The Third Fall of Kel'Thuzad" quest.
'|complete hasmount(332462) |or
step
use the Armored War-Bred Tauralus##181822
Learn the "Armored War-Bred Tauralus" Mount |learnmount Armored War-Bred Tauralus##332462
step
_Congratulations!_
You Collected the "Armored War-Bred Tauralus" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\Bonehoof Tauralus",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Bonehoof, Tauralus, covenant"},
mounts={332457},
patch='90001',
mounttype='Ground',
model={96467},
description="\nThis mount is a rare drop from the rare spawn, Tahonta, in Maldraxxus. Only members of the Necrolord covenant can loot this mount.",
},[[
step
kill Tahonta##162586
|tip You may need help with this.
|tip This rare enemy may not always be available.
collect Bonehoof Tauralus##182075 |goto Maldraxxus/0 44.64,51.78 |or
|tip This mount has about a 2-3% drop rate.
|tip Only members of the Necrolord covenant can loot this mount.
'|complete hasmount(332457) |or
step
use the Bonehoof Tauralus##182075
Learn the "Bonehoof Tauralus" Mount |learnmount Bonehoof Tauralus##332457
step
_Congratulations!_
You Collected the "Bonehoof Tauralus" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\Pale Acidmaw (Necrolord)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Pale, Acidmaw, covenant"},
mounts={334365},
patch='90001',
mounttype='Ground',
model={94348},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with the Stitchmasters.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock Abominable Stitching |complete covenantfeature("Covenant Unique") >= 1
step
Reach Exalted Reputation with the Stitchmasters |complete rep('Stitchmasters') == Exalted or hasmount(334365)
|tip Complete Abominable Stitchings every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(334365)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Run up the stairs |goto Maldraxxus/0 56.24,65.12 < 20 |only if walking
Continue up the stairs |goto 53.79,66.94 < 20 |only if walking
talk Atticus##159238
buy 1 Pale Acidmaw##180726 |goto 55.19,68.39 |or
'|complete hasmount(334365) |or
step
use the Pale Acidmaw##180726
Learn the "Pale Acidmaw" Mount |learnmount Pale Acidmaw##334365
step
_Congratulations!_
You Collected the "Pale Acidmaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\Plaguerot Tauralus",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Plaguerot, Tauralus, covenant"},
mounts={332456},
patch='90001',
mounttype='Ground',
model={96466},
description="\nThis mount is purchased for 2,000 Reservoir Anima from Su Zettai after reaching Renown level 23 with the Necrolord covenant.",
},[[
step
Reach Renown Level 23 |complete covenantrenown() >= 23 or hasmount(332456)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
Collect 2,000 Reservoir Anima |complete curcount(1813) >= 2000 or hasmount(332456)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Su Zettai##172176
buy 1 Plaguerot Tauralus##182076 |goto Seat of the Primus/0 52.21,40.74 |or
'|complete hasmount(332456) |or
step
use the Plaguerot Tauralus##182076
Learn the "Plaguerot Tauralus" Mount |learnmount Plaguerot Tauralus##332456
step
_Congratulations!_
You Collected the "Plaguerot Tauralus" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Necrolord Mounts\\War-Bred Tauralus",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, War-Bred, Tauralus, covenant"},
mounts={332455},
patch='90001',
mounttype='Ground',
model={96465},
description="\nThis mount is acquired by completing Chapter 2 of the Necrolord covenant questline.",
},[[
step
Complete the "Enemy at the Door" quest |q 59555 |future |or
|tip Use the "Necrolord Questline" leveling guide to accomplish this.
'|complete hasmount(332455) |or
step
collect War-Bred Tauralus##182077 |or
|tip This is a reward from the "Enemy at the Door" quest.
'|complete hasmount(332455) |or
step
use the War-Bred Tauralus##182077
Learn the "War-Bred Tauralus" Mount |learnmount War-Bred Tauralus##332455
step
_Congratulations!_
You Collected the "War-Bred Tauralus" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Night Fae Mounts\\Vibrant Flutterwing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Vibrant, Flutterwing, covenant"},
mounts={342667},
patch='90001',
mounttype='Flying',
model={95207},
description="\nThis mount is purchased for 5,000 Reservoir Anima after becoming Revered with the Marasmius.",
},[[
step
Reach Revered Reputation with the Marasmius |complete rep('Marasmius') >= Revered or hasmount(342667)
step
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(342667)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Cortinarius##174766
buy 1 Vibrant Flutterwing##183801 |goto Ardenweald/0 56.04,53.01 |or
'|complete hasmount(342667) |or
step
use the Vibrant Flutterwing##183801
Learn the "Vibrant Flutterwing" Mount |learnmount Vibrant Flutterwing##342667
step
_Congratulations!_
You Collected the "Vibrant Flutterwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Dreamlight Runestag",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Dreamlight, Runestag, covenant"},
mounts={312759},
patch='90001',
mounttype='Ground',
model={94339},
description="\nThis mount is acquired by completing Chapter 1 of the Night Fae covenant questline.",
},[[
step
Complete the "What's My Motivation?" quest |q 58159 |future |or
|tip Use the "Night Fae Questline" leveling guide to accomplish this.
'|complete hasmount(312759) |or
step
collect Dreamlight Runestag##180263 |or
|tip This is a reward from the "What's My Motivation?" quest.
'|complete hasmount(312759) |or
step
use the Dreamlight Runestag##180263
Learn the "Dreamlight Runestag" Mount |learnmount Dreamlight Runestag##312759
step
_Congratulations!_
You Collected the "Dreamlight Runestag" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Enchanted Dreamlight Runestag",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Enchanted, Dreamlight, Runestag, covenant"},
mounts={312761},
patch='90001',
mounttype='Ground',
model={94362},
description="\nThis mount is acquired by completing Chapter 9 of the Night Fae covenant questline.",
},[[
step
Complete the "Drust and Ashes" quest |q 60108 |future |or
|tip Use the "Night Fae Questline" leveling guide to accomplish this.
'|complete hasmount(312761) |or
step
collect Enchanted Dreamlight Runestag##180721 |or
|tip This is a reward from the "Drust and Ashes" quest.
'|complete hasmount(312761) |or
step
use the Enchanted Dreamlight Runestag##180721
Learn the "Enchanted Dreamlight Runestag" Mount |learnmount Enchanted Dreamlight Runestag##312761
step
_Congratulations!_
You Collected the "Enchanted Dreamlight Runestag" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Enchanted Shadeleaf Runestag",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Enchanted, Shadeleaf, Runestag, covenant"},
mounts={332246},
patch='90001',
mounttype='Ground',
model={94363},
description="\nThis mount is purchased for 100 Reservoir Anima from Elwyn after reaching Renown level 39 with the Night Fae covenant.",
},[[
step
Reach Renown Level 39 |complete covenantrenown() >= 39 or hasmount(332246)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
Collect 100 Reservoir Anima |complete curcount(1813) >= 100 or hasmount(332246)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Elwyn##174914
buy 1 Enchanted Shadeleaf Runestag##180722 |goto Heart of the Forest/0 60.14,35.97 |or
'|complete hasmount(332246) |or
step
use the Enchanted Shadeleaf Runestag##180722
Learn the "Enchanted Shadeleaf Runestag" Mount |learnmount Enchanted Shadeleaf Runestag##332246
step
_Congratulations!_
You Collected the "Enchanted Shadeleaf Runestag" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Enchanted Winterborn Runestag",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Enchanted, Winterborn, Runestag, covenant"},
mounts={332248},
patch='90001',
mounttype='Ground',
model={94365},
description="\nThis mount is purchased for 5,000 Reservoir Anima after becoming Revered with the Marasmius.",
},[[
step
Reach Revered Reputation with the Marasmius |complete rep('Marasmius') >= Revered or hasmount(332248)
step
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(332248)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Cortinarius##174766
buy 1 Enchanted Winterborn Runestag##180724 |goto Ardenweald/0 56.04,53.01 |or
'|complete hasmount(332248) |or
step
use the Enchanted Winterborn Runestag##180724
Learn the "Enchanted Winterborn Runestag" Mount |learnmount Enchanted Winterborn Runestag##332248
step
_Congratulations!_
You Collected the "Enchanted Winterborn Runestag" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Shadeleaf Runestag",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Shadeleaf, Runestag, covenant"},
mounts={332243},
patch='90001',
mounttype='Ground',
model={94340},
description="\nThis mount is purchased for 2,000 Reservoir Anima from Elwyn after reaching Renown level 23 with the Night Fae covenant.",
},[[
step
Reach Renown Level 23 |complete covenantrenown() >= 23 or hasmount(332243)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
Collect 2,000 Reservoir Anima |complete curcount(1813) >= 2000 or hasmount(332243)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Elwyn##174914
buy 1 Shadeleaf Runestag##180413 |goto Heart of the Forest/0 60.14,35.97 |or
'|complete hasmount(332243) |or
step
use the Shadeleaf Runestag##180413
Learn the "Shadeleaf Runestag" Mount |learnmount Shadeleaf Runestag##332243
step
_Congratulations!_
You Collected the "Shadeleaf Runestag" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Umbral Scythehorn",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Umbral, Scythehorn, covenant"},
mounts={340503},
patch='90001',
mounttype='Ground',
model={94344},
description="\nThis mount is purchased for 5,000 Reservoir Anima and 5 Grateful Offerings after becoming Revered with the Court of Night.",
},[[
step
Reach Revered Reputation with the Court of Night |complete rep('Court of Night') >= Revered or hasmount(340503)
step
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(340503)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
Collect 5 Grateful Offerings |complete curcount(1885) >= 5 or hasmount(340503)
|tip These are gained by upgrading your covenant's Anima Conductor and completing its dailies.
step
talk Spindlenose##162447
buy 1 Umbral Scythehorn##183053 |goto Ardenweald/0 59.58,52.84 |or
'|complete hasmount(340503) |or
step
use the Umbral Scythehorn##183053
Learn the "Umbral Scythehorn" Mount |learnmount Umbral Scythehorn##340503
step
_Congratulations!_
You Collected the "Umbral Scythehorn" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Wild Glimmerfur Prowler",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Wild, Glimmerfur, Prowler, covenant"},
mounts={334366},
patch='90001',
mounttype='Ground',
model={97623},
description="\nThis mount is purchased for 5,000 Reservoir Anima and 100 Grateful Offerings or obtained as a rare drop from the rare, Valfir the Unrelenting, in Ardenweald.",
},[[
step
Click here to purchase the Wild Glimmerfur Prowler |confirm |next "Gather_Currencies" |or
|tip
Click here to kill the rare spawn |confirm |next "Kill_Valfir" |or
'|complete hasmount(334366) |or
step
label "Gather_Currencies"
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(334366)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
Collect 100 Grateful Offerings |complete curcount(1885) >= 100 or hasmount(334366)
|tip These are gained by upgrading your covenant's Anima Conductor and completing its dailies.
step
talk Elwyn##174914
buy 1 Wild Glimmerfur Prowler##180730 |goto Heart of the Forest/0 60.14,35.97 |next "Learn_Mount" |or
'|complete hasmount(334366) |or
step
label "Kill_Valfir"
kill Valfir the Unrelenting##168647
|tip It walks around this area.
|tip You may need help with this.
|tip This rare enemy may not always be available.
collect Wild Glimmerfur Prowler##180730 |goto Ardenweald/0 30.94,54.64 |or
|tip This mount has a very low drop rate.
'|complete hasmount(334366) |or
step
label "Learn_Mount"
use the Wild Glimmerfur Prowler##180730
Learn the "Wild Glimmerfur Prowler" Mount |learnmount Wild Glimmerfur Prowler##334366
step
_Congratulations!_
You Collected the "Wild Glimmerfur Prowler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Night Fae Mounts\\Winterborn Runestag",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Winterborn, Runestag, covenant"},
mounts={332245},
patch='90001',
mounttype='Ground',
model={94342},
description="\nThis mount is purchased for 5,000 Reservoir Anima and 5 Grateful Offerings after becoming Revered with the Court of Night.",
},[[
step
Reach Revered Reputation with the Court of Night |complete rep('Court of Night') >= Revered or hasmount(332245)
step
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(332245)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
Collect 5 Grateful Offerings |complete curcount(1885) >= 5 or hasmount(332245)
|tip These are gained by upgrading your covenant's Anima Conductor and completing its dailies.
step
talk Spindlenose##162447
buy 1 Winterborn Runestag##180415 |goto Ardenweald/0 59.58,52.84 |or
'|complete hasmount(332245) |or
step
use the Winterborn Runestag##180415
Learn the "Winterborn Runestag" Mount |learnmount Winterborn Runestag##332245
step
_Congratulations!_
You Collected the "Winterborn Runestag" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Venthyr Mounts\\Dauntless Duskrunner (Venthyr)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Dauntless, Duskrunner, covenant, Ember, Court"},
mounts={336064},
patch='90001',
mounttype='Flying',
model={97870},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with The Ember Court.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock The Ember Court |complete covenantfeature("Covenant Unique") >= 1
|tip Use the "Venthyr The Ember Court" leveling guide to accomplish this.
step
Reach Exalted Reputation with The Ember Court |complete rep('The Ember Court') == Exalted or hasmount(336064)
|tip Complete The Ember Court every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(336064)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Enter the building |goto Revendreth/0 28.72,43.01 < 7 |only if walking
talk Temel##164966
|tip Inside the building.
buy 1 Dauntless Duskrunner##181317 |goto 27.93,43.05 |or
'|complete hasmount(336064) |or
step
use the Dauntless Duskrunner##181317
Learn the "Dauntless Duskrunner" Mount |learnmount Dauntless Duskrunner##336064
step
_Congratulations!_
You Collected the "Dauntless Duskrunner" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Venthyr Mounts\\Gruesome Flayedwing (Venthyr)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Gruesome, Flayedwing, covenant, Ember, Court"},
mounts={336039},
patch='90001',
mounttype='Flying',
model={98153},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with The Ember Court.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock The Ember Court |complete covenantfeature("Covenant Unique") >= 1
|tip Use the "Venthyr The Ember Court" leveling guide to accomplish this.
step
Reach Exalted Reputation with The Ember Court |complete rep('The Ember Court') == Exalted or hasmount(336039)
|tip Complete The Ember Court every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(336039)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Enter the building |goto Revendreth/0 28.72,43.01 < 7 |only if walking
talk Temel##164966
|tip Inside the building.
buy 1 Gruesome Flayedwing##181300 |goto 27.93,43.05 |or
'|complete hasmount(336039) |or
step
use the Gruesome Flayedwing##181300
Learn the "Gruesome Flayedwing" Mount |learnmount Gruesome Flayedwing##336039
step
_Congratulations!_
You Collected the "Gruesome Flayedwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Venthyr Mounts\\Horrid Dredwing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Horrid, Dredwing, covenant"},
mounts={332882},
patch='90001',
mounttype='Flying',
model={94350},
description="\nThis mount is purchased for 5,000 Reservoir Anima and 100 Grateful Offerings or obtained as a rare drop from the rare, Harika the Horrid, in Revendreth.",
},[[
step
Click here to purchase the Horrid Dredwing |confirm |next "Gather_Currencies" |or
|tip
Click here to kill the rare spawn |confirm |next "Kill_Harika" |or
'|complete hasmount(332882) |or
step
label "Gather_Currencies"
Collect 5,000 Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(332882)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
Collect 100 Grateful Offerings |complete curcount(1885) >= 100 or hasmount(332882)
|tip These are gained by upgrading your covenant's Anima Conductor and completing its dailies.
step
talk Chachi the Artiste##174710
|tip Inside the building.
buy 1 Horrid Dredwing##180461 |goto Sinfall/0 54.10,24.63 |next "Learn_Mount" |or
'|complete hasmount(332882) |or
step
label "Kill_Harika"
talk Wingsmash##165327
|tip Talk to Wingsmash nearby to summon Harika.
|tip Your covenant's Anima Conductor must be channeled to Wanecrypt Hill in order to summon it yourself.
kill Harika the Horrid##165290
|tip You may need help with this.
collect Horrid Dredwing##180461 |goto Revendreth/0 45.80,78.87 |or
|tip This mount has about a 2% drop rate.
'|complete hasmount(332882) |or
step
label "Learn_Mount"
use the Horrid Dredwing##180461
Learn the "Horrid Dredwing" Mount |learnmount Horrid Dredwing##332882
step
_Congratulations!_
You Collected the "Horrid Dredwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Covenant Mounts\\Venthyr Mounts\\Silvertip Dredwing (Venthyr)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying, mount, Shadowlands, Silvertip, Dredwing, covenant, Ember, Court"},
mounts={312777},
patch='90001',
mounttype='Flying',
model={97367},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with The Ember Court.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock The Ember Court |complete covenantfeature("Covenant Unique") >= 1
|tip Use the "Venthyr The Ember Court" leveling guide to accomplish this.
step
Reach Exalted Reputation with The Ember Court |complete rep('The Ember Court') == Exalted or hasmount(312777)
|tip Complete The Ember Court every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(312777)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Enter the building |goto Revendreth/0 28.72,43.01 < 7 |only if walking
talk Temel##164966
|tip Inside the building.
buy 1 Silvertip Dredwing##181316 |goto 27.93,43.05 |or
'|complete hasmount(312777) |or
step
use the Silvertip Dredwing##181316
Learn the "Silvertip Dredwing" Mount |learnmount Silvertip Dredwing##312777
step
_Congratulations!_
You Collected the "Silvertip Dredwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Battle Gargon Silessa",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Battle, Gargon, Silessa, covenant, mirror, transport"},
mounts={333023},
patch='90001',
mounttype='Ground',
model={94329},
description="\nThis mount is a rare drop from a Broken Mirror after upgrading the Transport Network mirrors to level 3.",
},[[
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Upgrade your Transport Network to Tier 3 |complete covenantfeature("Transport Network") == 3 or hasmount(333023) |goto Sinfall/0 55.60,26.25
|tip Use the "Venthyr Transport Network" leveling guide to accomplish this.
step
label "Mirrors_Start"
talk Chachi the Artiste##174710
|tip Inside the building.
buy 4 Handcrafted Mirror Repair Kit##181363 |goto 54.10,24.63 |or
'|complete hasmount(333023) |or
step
Run under the stone platform |goto Revendreth/0 27.67,38.22 < 7 |only if walking
Follow the stone pathway |goto 28.24,37.97 < 7 |only if walking
Run up the pile of rubble |goto 28.73,37.75 < 7 |only if walking
Continue along the broken stone platform |goto 28.89,37.38 < 7 |only if walking
Enter the building |goto 29.49,36.87 < 7 |walk
click Broken Mirror##353237
|tip Inside the building.
|tip These mirrors can be looted once a day.
collect Silessa's Battle Harness##183798 |goto 29.45,37.28 |next "Learn_Mount" |or
|tip Room with cooking pot.
|tip This mount is a rare drop.
Click Here for Another Mirror |confirm
'|complete hasmount(333023) |or
step
Enter the building |goto 27.05,22.01 < 7 |walk
click Broken Mirror##353237
|tip Inside the building.
|tip These mirrors can be looted once a day.
collect Silessa's Battle Harness##183798 |goto 27.15,21.63 |next "Learn_Mount" |or
|tip This mount is a rare drop.
Click Here for Another Mirror |confirm
'|complete hasmount(333023) |or
step
Enter the building |goto 40.86,73.10 < 7 |walk
click Broken Mirror##353237
|tip Inside the building.
|tip These mirrors can be looted once a day.
collect Silessa's Battle Harness##183798 |goto 40.41,73.34 |next "Learn_Mount" |or
|tip This mount is a rare drop.
Click Here for Another Mirror |confirm
'|complete hasmount(333023) |or
step
click Broken Mirror##353237
|tip These mirrors can be looted once a day.
collect Silessa's Battle Harness##183798 |goto 20.02,54.03 |next "Learn_Mount" |or
|tip This mount is a rare drop.
Click Here to Restart |confirm |next "Mirrors_Start"
'|complete hasmount(333023) |or
step
label "Learn_Mount"
use the Silessa's Battle Harness##183798
Learn the "Battle Gargon Silessa" Mount |learnmount Battle Gargon Silessa##333023
step
_Congratulations!_
You Collected the "Battle Gargon Silessa" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Battle Gargon Vrednic",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Battle, Gargon, Vrednic, covenant, Venthyr"},
mounts={312754},
patch='90001',
mounttype='Ground',
model={94327},
description="\nThis mount is acquired by completing Chapter 9 of the Venthyr covenant questline.",
},[[
step
Complete "The Medallion of Dominion" quest |q 58407 |future |or
|tip Use the "Venthyr Questline" leveling guide to accomplish this.
'|complete hasmount(312754) |or
step
collect Battle Gargon Vrednic##180948 |or
|tip This is a reward from "The Medallion of Dominion" quest.
'|complete hasmount(312754) |or
step
use the Battle Gargon Vrednic##180948
Learn the "Battle Gargon Vrednic" Mount |learnmount Battle Gargon Vrednic##312754
step
_Congratulations!_
You Collected the "Battle Gargon Vrednic" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Crypt Gargon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Crypt, Gargon, covenant, Venthyr"},
mounts={332932},
patch='90001',
mounttype='Ground',
model={94324},
description="\nThis mount is acquired by completing Chapter 4 of the Venthyr covenant questline.",
},[[
step
Complete the "Mirror, Mirror..." quest |q 58440 |future |or
|tip Use the "Venthyr Questline" leveling guide to accomplish this.
'|complete hasmount(332932) |or
step
collect Crypt Gargon##180945 |or
|tip This is a reward from the "Mirror, Mirror..." quest.
'|complete hasmount(332932) |or
step
use the Crypt Gargon##180945
Learn the "Crypt Gargon" Mount |learnmount Crypt Gargon##332932
step
_Congratulations!_
You Collected the "Crypt Gargon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Desire's Battle Gargon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Desire's, Battle, Gargon, covenant"},
mounts={332949},
patch='90001',
mounttype='Ground',
model={94328},
description="\nThis mount is acquired from The Countess' Tribute in the Ember Court after reaching Best Friends reputation.",
},[[
step
Reach Best Friend Reputation with The Countess |complete rep('The Countess') == BestFriend or hasmount(332949)
|tip Complete The Countess' RSVP quest to recruit her for the Ember Court.
|tip Complete The Ember Court every week and focus on Decadent, Relaxing and Formal atmosphere to increase your reputation with her.
step
click The Countess' Tribute
collect Desire's Battle Gargon##182209 |goto Ember Court/0 47.66,41.07 |or
'|complete hasmount(332949) |or
step
use the Desire's Battle Gargon##182209
Learn the "Desire's Battle Gargon" Mount |learnmount Desire's Battle Gargon##332949
step
_Congratulations!_
You Collected the "Desire's Battle Gargon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Gravestone Battle Armor",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Gravestone, Battle, Armor, covenant, venthyr"},
mounts={333021},
patch='90001',
mounttype='Ground',
model={94330},
description="\nThis mount is earned by reaching Renown level 39 with the Venthyr covenant.",
},[[
step
Reach Renown Level 39 |complete covenantrenown() >= 39 or hasmount(333021)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
use the Gravestone Battle Armor##182332
|tip It will be placed in your inventory after reaching Renown level 39.
Learn the "Gravestone Battle Armor" Mount |learnmount Gravestone Battle Armor##333021
step
_Congratulations!_
You Collected the "Gravestone Battle Armor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Hopecrusher Gargon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Hopecrusher, Gargon, covenant, venthyr"},
mounts={312753},
patch='90001',
mounttype='Ground',
model={95369},
description="\nThis mount is dropped for members of the Venthyr covenant by the rare, Hopecrusher, in Revendreth.",
},[[
step
kill Hopecrusher##166679
|tip You may need help with this.
collect Hopecrusher Gargon##180581 |goto Revendreth/0 52.07,51.82 |or
|tip This has a somewhat low drop rate.
|tip You must be a member of the Venthyr covenant in order for it to drop.
|tip You can kill Hopecrusher and loot him once a day.
'|complete hasmount(312753) |or
step
use the Hopecrusher Gargon##180581
Learn the "Hopecrusher Gargon" Mount |learnmount Hopecrusher Gargon##312753
step
_Congratulations!_
You Collected the "Hopecrusher Gargon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Pale Acidmaw (Venthyr)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Pale, Acidmaw, covenant, Ember, Court"},
mounts={334365},
patch='90001',
mounttype='Ground',
model={94348},
description="\nThis mount is purchased for 5,000 Reservoir Anima after reaching Exalted reputation with The Ember Court.\n\nThis mount is obtainable by all Covenants.",
},[[
step
Unlock The Ember Court |complete covenantfeature("Covenant Unique") >= 1
|tip Use the "Venthyr The Ember Court" leveling guide to accomplish this.
step
Reach Exalted Reputation with The Ember Court |complete rep('The Ember Court') == Exalted or hasmount(334365)
|tip Complete The Ember Court every week to increase your reputation.
step
Collect #5000# Reservoir Anima |complete curcount(1813) >= 5000 or hasmount(334365)
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
step
Enter the building |goto Revendreth/0 28.72,43.01 < 7 |only if walking
talk Temel##164966
|tip Inside the building.
buy 1 Pale Acidmaw##180726 |goto 27.93,43.05 |or
'|complete hasmount(334365) |or
step
use the Pale Acidmaw##180726
Learn the "Pale Acidmaw" Mount |learnmount Pale Acidmaw##334365
step
_Congratulations!_
You Collected the "Pale Acidmaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Covenant Mounts\\Venthyr Mounts\\Sinfall Gargon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground, mount, Shadowlands, Sinfall, Gargon, covenant, venthyr"},
mounts={332927},
patch='90001',
mounttype='Ground',
model={94326},
description="\nThis mount is purchased for 2,000 Reservoir Anima from Chachi the Artiste after reaching Renown level 23 with the Venthyr covenant.",
},[[
step
Reach Renown Level 23 |complete covenantrenown() >= 23 or hasmount(332927)
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
Collect 2,000 Reservoir Anima |complete curcount(1813) >= 2000 or hasmount(332927)
|tip These are gained by completing world quests and from defeating Rare enemies.
step
talk Chachi the Artiste##174710
|tip Inside the building.
buy 1 Sinfall Gargon##183715 |goto Sinfall/0 54.10,24.63 |or
'|complete hasmount(332927) |or
step
use the Sinfall Gargon##183715
Learn the "Sinfall Gargon" Mount |learnmount Sinfall Gargon##332927
step
_Congratulations!_
You Collected the "Sinfall Gargon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Callow Flayedwing",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount, Shadowlands, egg, hatched"},
mounts={336038},
patch='90001',
mounttype='Flying',
model={99463},
description="\nThis mount is hatched from a Blight-Touched Egg, which has a low drop chance from chimaeras in Maldraxxus.",
},[[
step
Kill enemies around this area
|tip Neonate Bonetooth and Satiated Sawtooth enemies can drop this item.
collect Blight-Touched Egg##184104 |goto Maldraxxus/0 42.42,48.62 |or
|tip This has a very low drop rate.
'|complete hasmount(336038) |or
step
Wait for the Blight-Touched Egg to hatch
collect Cracked Blight-Touched Egg##184103 |or
|tip It will take five days for the Blight-Touched Egg to become cracked.
'|complete hasmount(336038) |or
step
use the Cracked Blight-Touched Egg##184103
collect Chewed Reins of the Callow Flayedwing##181818 |or
'|complete hasmount(336038) |or
step
use the Chewed Reins of the Callow Flayedwing##181818
Learn the "Callow Flayedwing" Mount |learnmount Callow Flayedwing##336038
step
_Congratulations!_
You Collected the "Callow Flayedwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Endmire Flyer",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount, Shadowlands"},
mounts={332905},
patch='90001',
mounttype='Flying',
model={94353},
description="\nThis mount is dropped by the rare spawn, Famu the Infinite, in Revendreth.",
},[[
step
talk Seeker Hilda##166483
Tell her _"Let's close that rift!"_
|tip Kill the enemies that attack in waves to spawn Famu the Infinite.
kill Famu the Infinite##166521
|tip This rare enemy may not always be available.
|tip You will need help with this.
|tip You can only loot it once per day.
collect Endmire Flyer Tether##180582 |goto Revendreth/0 62.50,47.18 |or
|tip This mount is not a guaranteed drop.
'|complete hasmount(332905) |or
step
use the Endmire Flyer Tether##180582
Learn the "Endmire Flyer" Mount |learnmount Endmire Flyer##332905
step
_Congratulations!_
You Collected the "Endmire Flyer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Hulking Deathroc",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount, Shadowlands"},
mounts={336042},
patch='90001',
mounttype='Flying',
model={98149},
description="\nThis mount is dropped by the rare spawn, Violet Mistake, in Maldraxxus.",
},[[
step
kill Violet Mistake##157309
|tip This rare enemy is spawned by returning 15 Mephitic Goo and 15 Viscous Oil from nearby enemies.
|tip You can see the current totals in the pool by approaching it.
|tip Click the ooze corpses after killing them and then bring the pots to the slime pool.
|tip Mephitic Goo drops from Colossal Goos and Prodigious Animates.
|tip Viscous Oil drops from Burning Extracts and Colossal Plasmas.
|tip You may need help with this.
collect Slime-Covered Reins of the Hulking Deathroc##182079 |goto Maldraxxus/0 58.22,74.22 |or
|tip This mount is not a guaranteed drop.
Oozes can be found around:
[59.43,76.97]
[61.51,79.09]
'|complete hasmount(336042) |or
step
use the Slime-Covered Reins of the Hulking Deathroc##182079
Learn the "Hulking Deathroc" Mount |learnmount Hulking Deathroc##336042
step
_Congratulations!_
You Collected the "Hulking Deathroc" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Marrowfang",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount, dungeon, mythic, Necrotic, Wake"},
mounts={336036},
patch='90001',
mounttype='Flying',
model={98151},
description="\nThis mount has a very small chance to drop from Nalthor the Rimebinder in The Necrotic Wake dungeon on Mythic difficulty.",
},[[
step
Enter The Necrotic Wake Dungeon |goto The Necrotic Wake/0 81.64,40.17 < 1000 |or
|tip Enter the dungeon on Mythic difficulty.
'|complete hasmount(336036) |or
step
kill Nalthor the Rimebinder##166945
|tip This mount can only drop on Mythic difficulty.
|tip This has a very low drop rate.
collect Marrowfang's Reins##181819 |goto The Necrotic Wake/2 50.79,47.70 |or
'|complete hasmount(336036) |or
step
use Marrowfang's Reins##181819
Learn the "Marrowfang" Mount |learnmount Marrowfang##336036
step
_Congratulations!_
You Collected the "Marrowfang" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Shimmermist Runner",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount, Shadowlands"},
mounts={332252},
patch='90002',
mounttype='Flying',
model={94356},
description="\nThis mount is acquired by completing the Mistveil Tangle maze near Root-Home in Ardenweald.",
},[[
step
Start here |goto Ardenweald/0 32.46,51.18 < 15 |walk
click Tale of the Tangle##355547 |goto 32.54,53.06 < 5 |walk
Follow the path down |goto 30.96,54.58 < 15 |walk
Follow the path |goto 29.60,56.28 < 10 |walk
Follow the path right |goto 29.89,57.80 < 10 |walk
Follow the path right |goto 29.01,58.91 < 10 |walk
Follow the path |goto 28.07,58.13 < 10
Continue following the path |goto 27.04,58.23 < 10 |c |or
'|complete hasmount(332252) |or
step
kill Shizgher##171767
clicknpc Shimmermist Runner##171699
collect Shimmermist Runner##180727 |goto 26.29,58.97 |or
'|complete hasmount(332252) |or
step
use the Shimmermist Runner##180727
Learn the "Shimmermist Runner" Mount |learnmount Shimmermist Runner##332252
step
_Congratulations!_
You Collected the "Shimmermist Runner" Mount.
]])
ZGV.BETAEND()
ZGV.DevEnd()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Swift Gloomhoof",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={312767},
patch='90002',
mounttype='Flying',
model={94357},
description="\nThis mount is dropped by the rare spawn, Night Mare, in Ardenweald.",
},[[
step
Start here |goto Ardenweald/0 18.06,62.08 < 7 |only if walking
Jump to the vine |goto 17.71,62.14 < 7 |only if walking
Run up the vine |goto 17.75,62.88 < 7 |only if walking
Run up the second vine |goto 18.10,63.48 < 7 |only if walking
Carefully run along the wall |goto 19.41,63.08 < 5 |only if walking
click Cracked Soulweb##355800
|tip It looks like a small branch on the ground behind the broken cart.
collect 1 Broken Soulweb##181243 |goto 19.77,63.44 |or
'|complete hasmount(312767) |or
step
collect 10 Lightless Silk##173204 |or
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
'|complete hasmount(312767) |or
step
Complete the "Trouble at the Gormling Corral" Questline in Ardenweald |achieve 14800/3 |or
|tip Use the "Ardenweald" leveling guide to accomplish this.
'|complete hasmount(312767) |or
step
Complete the "Tricky Spriggans" Questline in Ardenweald |achieve 14800/4 |or
|tip Use the "Ardenweald" leveling guide to accomplish this.
'|complete hasmount(312767) |or
step
talk Elder Gwenna##165704
Ask her _"Can you tell me anything about this broken soulweb?"_
Then _"I have the materials here."_
collect 1 Repaired Soulweb##181242 |goto 50.42,33.04 |or
'|complete hasmount(312767) |or
step
talk Elite Queensguard##158555
Tell him _"I wish to speak with Ysera."_
Click Here After Requesting an Audience |confirm |goto 47.65,54.05 |complete itemcount(178675) == 1 or hasmount(312767)
|only if not NightFae
step
talk Ysera##160262
|tip She will walk out to you.
Ask her _"Ysera, this soulweb has the ability to capture dreams, but requires power to do so. Can you help?"_
collect 1 Dream Catcher##178675 |goto Heart of the Forest/0 69.34,45.71 |or
'|complete hasmount(312767) |or
|only if not NightFae
step
talk Ysera##160262
Ask her _"Ysera, this soulweb has the ability to capture dreams, but requires power to do so. Can you help?"_
collect 1 Dream Catcher##178675 |goto Heart of the Forest/0 44.78,38.94 |or
'|complete hasmount(312767) |or
|only if  NightFae
step
use the Dream Catcher##178675
Gain The Shadow's Dream Buff |havebuff spell:327083 |goto Ardenweald/0 60.21,49.51 |or
|tip This buff will only last for 5 minutes and is required to see Night Mare.
'|complete hasmount(312767) |or
step
'|use the Dream Catcher##178675
kill Night Mare##168135
|tip It runs north and south along the east side of Hibernal Hollow.
|tip Wait here for it to run by.
|tip It will appear on your mini map as a gold star.
|tip You may need help with this.
|tip If The Shadow's Dream buff wears off you'll need to use the Dream Catcher again to reapply it.
collect Swift Gloomhoof##180728 |goto 60.21,49.51 |or
'|complete hasmount(312767) |or
step
use the Swift Gloomhoof##180728
Learn the "Swift Gloomhoof" Mount |learnmount Swift Gloomhoof##312767
step
_Congratulations!_
You Collected the "Swift Gloomhoof" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Arboreal Gulper",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={339632},
patch='90001',
mounttype='Ground',
model={98498},
description="\nThis mount is dropped by the rare spawn, Humon'gozz, in Ardenweald.",
},[[
step
Kill enemies around this area
collect Unusually Large Mushroom##175247 |goto Ardenweald/0 30.83,37.86 |or
|tip This has about a 3-5% drop rate.
|tip This item only lasts for 20 minutes before disappearing.
'|complete hasmount(339632) |or
step
Follow the path |goto 32.75,33.81 < 15 |only if walking
click Damp Loam##344732
|tip It is recommended you clear the area of enemies before clicking.
kill Humon'gozz##164112
|tip You may need help with this.
collect Arboreal Gulper##182650 |goto 32.43,30.27 |or
'|complete hasmount(339632) |or
step
Reach Level 60 |ding 60
|tip You must be level 60 to learn this mount.
step
use the Arboreal Gulper##182650
Learn the "Arboreal Gulper" Mount |learnmount Arboreal Gulper##339632
step
_Congratulations!_
You Collected the "Arboreal Gulper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Battle-Bound Warhound",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={344228},
patch='90001',
mounttype='Ground',
model={98224},
description="\nThis mount is a rare drop from elite enemies in the Theater of Pain in Maldraxxus.",
},[[
step
Kill Elite enemies around this area
|tip You may need help with this.
|tip Enemies spawn continuously one at a time.
|tip You can loot each of the six bosses once per day.
collect Gnawed Reins of the Battle-Bound Warhound##184062 |goto Maldraxxus/0 50.38,47.29 |or
|tip This mount has a very low drop rate.
'|complete hasmount(344228) |or
step
use the Gnawed Reins of the Battle-Bound Warhound##184062
Learn the "Battle-Bound Warhound" Mount |learnmount Battle-Bound Warhound##344228
step
_Congratulations!_
You Collected the "Battle-Bound Warhound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Blisterback Bloodtusk",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={332478},
patch='90001',
mounttype='Ground',
model={98169},
description="\nThis mount is dropped by the rare spawn, Warbringer Mal'Korak, in Maldraxxus.",
},[[
step
kill Warbringer Mal'Korak##162819
|tip This rare enemy may not always be available.
|tip You may need help with this.
collect Blisterback Bloodtusk##182085 |goto Maldraxxus/0 33.70,80.17 |or
|tip This mount has a very low drop rate.
'|complete hasmount(332478) |or
step
use the Blisterback Bloodtusk##182085
Learn the "Blisterback Bloodtusk" Mount |learnmount Blisterback Bloodtusk##332478
step
_Congratulations!_
You Collected the "Blisterback Bloodtusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Gorespine",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={332480},
patch='90001',
mounttype='Ground',
model={98168},
description="\nThis mount is dropped by the rare spawn, Nerissa Heartless, in Maldraxxus.",
},[[
step
kill Nerissa Heartless##162690
|tip This rare enemy may not always be available.
|tip It spawns every 40 minutes or so.
|tip She walks around this area.
|tip You may need help with this.
collect Gorespine##182084 |goto Maldraxxus/0 65.88,35.31 |or
|tip This mount has a very low drop rate.
'|complete hasmount(332480) |or
step
use Gorespine##182084
Learn the "Gorespine" Mount |learnmount Gorespine##332480
step
_Congratulations!_
You Collected the "Gorespine" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Loyal Gorger",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={333027},
patch='90001',
mounttype='Ground',
model={97379},
description="\nThis mount is dropped by the rare spawn, Worldedge Gorger, in Revendreth.",
},[[
step
Kill Aberration enemies around this area
|tip Mite, Devourer, and Gorger enemies can drop this item.
collect 1 Enticing Anima##173939 |goto Revendreth/0 67.46,60.32 |or
You can find more around [45.86,68.36]
'|complete hasmount(333027) |or
step
use the Enticing Anima##173939
|tip Use it to summon the Worldedge Gorger.
|tip It's 62 elite.
|tip You will need to farm a new Enticing Anima every time you want to summon it.
kill Worldedge Gorger##160821
|tip You may need help with this.
|tip You can only loot this rare once per day.
collect Loyal Gorger##182589 |goto 38.64,72.15 |or
|tip This mount has a very low drop rate.
'|complete hasmount(333027) |or
step
use the Loyal Gorger##182589
Learn the "Loyal Gorger" Mount |learnmount Loyal Gorger##333027
step
_Congratulations!_
You Collected the "Loyal Gorger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Mawsworn Soulhunter",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={312762},
patch='90001',
mounttype='Ground',
model={92631},
description="\nThis mount is dropped by the rare spawn, Gorged Shadehound, in The Maw.",
},[[
step
Accept or Complete the "Rule 6: Concealment is Everything" Quest in The Maw |complete haveq(60285) or completedq(60285)
|tip Use "The Maw" leveling guide to accomplish this.
|tip This quest is required to remove the debuff from The Beastwarrens area.
step
kill Gorged Shadehound##174827
|tip This rare enemy is only available at the final stage of the "Hunt: Shadehounds" event.
|tip It can only be looted once per week.
collect Mawsworn Soulhunter##184167 |goto The Maw/0 53.48,79.48 |or
|tip This mount has a very low drop rate.
'|complete hasmount(312762) |or
step
use the Mawsworn Soulhunter##184167
Learn the "Mawsworn Soulhunter" Mount |learnmount Mawsworn Soulhunter##312762
step
_Congratulations!_
You Collected the "Mawsworn Soulhunter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Spinemaw Gladechewer",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={334364},
patch='90001',
mounttype='Ground',
model={94349},
description="\nThis mount is dropped by the rare spawn, Gormtamer Tizo, in Ardenweald.",
},[[
step
kill Bristlecone Terror##166736+
|tip They are riding elite Deranged Guardians.
|tip Killing them has a small chance to spawn a Chompy.
kill Chompy##164110
|tip Killing Chompy will spawn Gormtamer Tizo.
|tip A group is recommended to make this easier and faster.
kill Gormtamer Tizo##164107
|tip You may need help with this.
collect Spinemaw Gladechewer##180725 |goto Ardenweald/0 29.60,56.28 |or
'|complete hasmount(334364) |or
step
use the Spinemaw Gladechewer##180725
Learn the "Spinemaw Gladechewer" Mount |learnmount Spinemaw Gladechewer##334364
step
_Congratulations!_
You Collected the "Spinemaw Gladechewer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Ascended Skymane",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying", "mount", "Shadowlands"},
mounts={342335},
patch='90001',
mounttype='Flying',
model={94293},
description="\nThis mount is a rare drop from defeating the Ascended Council, which are summoned by ringing the five Vesper bells throughout Bastion.\n\nYou will likely need a raid group to ring the bells within time and defeat the Ascended Council.",
},[[
stickystart "Group_Information"
step
click Vesper of Loyalty##354036 |goto Bastion/0 32.19,17.84
confirm |or
'|complete hasmount(342335) |or
step
click Anima Gateway |goto 39.55,19.01 < 7 |only if walking
click Vesper of Wisdom##354095 |goto 39.16,20.36
confirm |or
'|complete hasmount(342335) |or
step
click Anima Gateway |goto 39.14,56.12 < 7 |only if walking
click Vesper of Courage##354097 |goto 33.38,59.74
confirm |or
'|complete hasmount(342335) |or
step
click Anima Gateway |goto 69.37,40.32 < 7 |only if walking
click Vesper of Humility##354096 |goto 71.91,38.92
confirm |or
'|complete hasmount(342335) |or
step
click Anima Gateway |goto 63.47,72.39 < 7 |only if walking
click Vesper of Purity##334847 |goto 64.34,69.84
confirm |complete hasmount(342335) |next "Collect_Ascended_Skymane"
step
label "Group_Information"
A group is recommended to complete this guide
|tip A group of at least three players is required to ring the five Vesper bells within the five minute time limit.
|tip Place a player at each of the following locations and then ring the bells within five minutes of the first.
|tip If done successfully, you will see the message "The Ascended Council has been assemble! They will arrive in Aspirant's Awakening in 1 minute."
|tip If bells are not active, you will need to wait 1-2 hours for them to respawn to try again.
confirm |complete hasmount(342335) |notinsticky
step
label "Collect_Ascended_Skymane"
Kill Champion enemies around this area
|tip This is a difficult fight and will require a group.
click Cache of the Ascended##354175
collect Ascended Skymane##183741 |goto 53.50,88.80 |or
|tip This mount has a very low drop rate.
|tip You can loot the cache once per day.
'|complete hasmount(342335) |or
step
use the Ascended Skymane##183741
Learn the "Ascended Skymane" Mount |learnmount Ascended Skymane##342335
step
_Congratulations!_
You Collected the "Ascended Skymane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Bulbous Necroray",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying", "mount", "Shadowlands", "covenant"},
mounts={344574},
patch='90001',
mounttype='Flying',
model={99439},
description="\nThis mount is a rare drop from Tribute of the Ambitious and Tribute of the Duty-Bound obtained from Covenant Callings.",
},[[
step
collect Tribute of the Ambitious##181732 |n
collect Tribute of the Duty-Bound##181733 |n
|tip These Tributes are rewards from completing Covenant Calling dailies that occur in Maldraxxus, as well as the Anima Salvage daily.
|tip Use the "Covenant Daily Quests" guides for your covenant to accomplish this.
use Tribute of the Ambitious##181732 |only if itemcount(181732) == 1
use Tribute of the Duty-Bound##181733 |only if itemcount(181733) == 1
collect 1 Necroray Egg##184159 |complete hasmount(344574) or itemcount (184158) >= 1
|tip This item has about a 2% drop rate.
step
collect 1 Oozing Necroray Egg##184158 |or
|tip It will take three days for the Necroray Egg to hatch and become Oozing.
'|complete hasmount(344574) |or
step
use the Oozing Necroray Egg##184158
collect Bulbous Necroray##184160 |or
|tip This egg can also drop the Infested and Pestilent Necroray mounts.
'|complete hasmount(344574) |or
step
use the Bulbous Necroray##184160
Learn the "Bulbous Necroray" Mount |learnmount Bulbous Necroray##344574
step
_Congratulations!_
You Collected the "Bulbous Necroray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Chittering Animite",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying", "mount", "Shadowlands", "covenant", "command", "table"},
mounts={312776},
patch='90001',
mounttype='Flying',
model={94355},
description="\nThis mount is acquired randomly by completing Adventure missions from the Command Table inside your Covenant.",
},[[
step
Unlock the Command Table Covenant Anima Upgrade |complete covenantfeature("Command Table") >= 1 or hasmount(312776)
|tip Use the "Kyrian Command Table" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolords Command Table" leveling guide to accomplish this. |only if  Necrolord
|tip Use the "Night Fae Command Table" leveling guide to accomplish this. |only if  NightFae
|tip Use the "Venthyr Command Table" leveling guide to accomplish this. |only if  Venthyr
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kirian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
|tip This mount randomly appears as a reward for one of the Mission Table adventures.
|tip Complete adventures regularly to increase the chance of receiving the correct adventure.
collect Chittering Animite##183617 |or
'|complete hasmount(312776) |or
step
use the Chittering Animite##183617
Learn the "Chittering Animite" Mount |learnmount Chittering Animite##312776
step
_Congratulations!_
You Collected the "Chittering Animite" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Highwind Darkmane",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying", "mount", "Shadowlands", "covenant", "command", "table"},
mounts={341776},
patch='90001',
mounttype='Flying',
model={93769},
description="\nThis mount is acquired randomly by completing Adventure missions from the Command Table inside your Covenant.",
},[[
step
Unlock the Command Table Covenant Anima Upgrade |complete covenantfeature("Command Table") >= 1 or hasmount(312776)
|tip Use the "Kyrian Command Table" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolords Command Table" leveling guide to accomplish this. |only if  Necrolord
|tip Use the "Night Fae Command Table" leveling guide to accomplish this. |only if  NightFae
|tip Use the "Venthyr Command Table" leveling guide to accomplish this. |only if  Venthyr
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kirian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
|tip This mount randomly appears as a reward for one of the Mission Table adventures.
|tip Complete adventures regularly to increase the chance of receiving the correct adventure.
collect Highwind Darkmane##183618 |or
'|complete hasmount(341776) |or
step
use the Highwind Darkmane##183618
Learn the "Highwind Darkmane" Mount |learnmount Highwind Darkmane##341776
step
_Congratulations!_
You Collected the "Highwind Darkmane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Infested Necroray",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying", "mount", "Shadowlands", "covenant"},
mounts={344576},
patch='90001',
mounttype='Flying',
model={99441},
description="\nThis mount is a rare drop from Tribute of the Ambitious and Tribute of the Duty-Bound obtained from Covenant Callings.",
},[[
step
collect Tribute of the Ambitious##181732 |n
collect Tribute of the Duty-Bound##181733 |n
|tip These Tributes are rewards from completing Covenant Calling dailies that occur in Maldraxxus, as well as the Anima Salvage daily.
|tip Use the "Covenant Daily Quests" guides for your covenant to accomplish this.
use Tribute of the Ambitious##181732 |only if itemcount(344576) == 1
use Tribute of the Duty-Bound##181733 |only if itemcount(344576) == 1
collect 1 Necroray Egg##184159 |complete hasmount(344576) or itemcount (184158) >= 1
|tip This item has about a 2% drop rate.
step
collect 1 Oozing Necroray Egg##184158 |or
|tip It will take three days for the Necroray Egg to hatch and become Oozing.
'|complete hasmount(344576) |or
step
use the Oozing Necroray Egg##184158
collect Infested Necroray##184161 |or
|tip This egg can also drop the Bulbous and Pestilent Necroray mounts.
'|complete hasmount(344576) |or
step
use the Infested Necroray##184161
Learn the "Infested Necroray" Mount |learnmount Infested Necroray##344576
step
_Congratulations!_
You Collected the "Infested Necroray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Pestilent Necroray",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying", "mount", "Shadowlands", "covenant"},
mounts={344575},
patch='90001',
mounttype='Flying',
model={99440},
description="\nThis mount is a rare drop from Tribute of the Ambitious and Tribute of the Duty-Bound obtained from Covenant Callings.",
},[[
step
collect Tribute of the Ambitious##181732 |n
collect Tribute of the Duty-Bound##181733 |n
|tip These Tributes are rewards from completing Covenant Calling dailies that occur in Maldraxxus, as well as the Anima Salvage daily.
|tip Use the "Covenant Daily Quests" guides for your covenant to accomplish this.
use Tribute of the Ambitious##181732 |only if itemcount(344575) == 1
use Tribute of the Duty-Bound##181733 |only if itemcount(344575) == 1
collect 1 Necroray Egg##184159 |complete hasmount(344575) or itemcount (184158) >= 1
|tip This item has about a 2% drop rate.
step
collect 1 Oozing Necroray Egg##184158 |or
|tip It will take three days for the Necroray Egg to hatch and become Oozing.
'|complete hasmount(344575) |or
step
use the Oozing Necroray Egg##184158
collect Pestilent Necroray##184162 |or
|tip This egg can also drop the Bulbous and Infested Necroray mounts.
'|complete hasmount(344575) |or
step
use the Pestilent Necroray##184162
Learn the "Pestilent Necroray" Mount |learnmount Pestilent Necroray##344575
step
_Congratulations!_
You Collected the "Pestilent Necroray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Silverwind Larion",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying", "mount", "Shadowlands"},
mounts={334433},
patch='90001',
mounttype='Flying',
model={93770},
description="\nThis mount is acquired by finding all 50 anima crystal shards in Bastion, The Necrotic Wake dungeon and the Spires of Ascension dungeon.",
},[[
step
Reach Level 60 |ding 60
|tip You must be level 60 to see the shards you need to collect.
|tip Use the leveling guides to accomplish this.
|tip A stack of Goblin Glider Kits will be beneficial for most classes as well.
step
click Anima Crystal Shard##355534
|tip Underneath the bridge.
|tip Jump off the edge of the bridge and use a Goblin Glider Kit, Heroic Leap, etc. to reach the bottom platform.
|tip After you get the shard, jump off the platform and an Ascended Bearer will catch you and bring you back up to the bridge.
Find Shard 1 |q 61225 |future |goto Bastion/0 39.05,77.04
step
click Anima Crystal Shard##355534
Find Shard 2 |q 61235 |future |goto 43.63,76.22
|tip On a small rock ledge above the waterfall.
step
Follow the path up |goto 47.05,72.33 < 10 |only if walking
Continue up the path |goto 47.31,70.01 < 15 |only if walking
Jump from the cliff and glide |goto 48.63,70.77 < 7 |only if walking
click Anima Crystal Shard##355534
|tip Use a Goblin Glider Kit from the cliff to the shard.
|tip On top of a pointed arch, about halfway up the stucture on the northeastern side.
Find Shard 3 |q 61236 |future |goto 48.42,72.73
step
click Anima Crystal Shard##355534
|tip On a small ledge just above the pool of water.
Find Shard 4 |q 61237 |future |goto 52.67,75.55
step
click Anima Crystal Shard##355534
|tip Underwater, underneath the bridge.
Find Shard 5 |q 61238 |future |goto 53.31,73.62
step
click Anima Crystal Shard##355534
|tip Jump off the edge of the cliff and use a Goblin Glider Kit, Heroic Leap, etc. to reach the top of the stone column.
Find Shard 6 |q 61239 |future |goto 53.49,80.60
step
Very carefully walk the ledge |goto 56.01,85.55 < 3 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge above the entrance to the Chamber of the First Reflection.
Find Shard 7 |q 61241 |future |goto 55.96,86.66
step
Follow the path up |goto 55.48,88.73 < 7 |only if walking
Jump down here |goto 61.03,86.26 < 7 |only if walking
click Anima Crystal Shard##355534
|tip Up on a rock ledge.
Find Shard 8 |q 61244 |future |goto 61.04,85.66
step
Jump down here |goto 57.98,80.13 < 10 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge next to the water.
Find Shard 9 |q 61245 |future |goto 58.10,80.08
step
Follow the path up |goto 57.53,72.86 < 15 |only if walking
Jump down carefully here |goto 56.83,74.92 < 5 |only if walking
click Anima Crystal Shard##355534
|tip On a small water fountain above the pool of water.
Find Shard 10 |q 61247 |future |goto 56.87,74.98
step
Cross the bridge |goto 60.98,74.62 < 15 |only if walking
click Anima Gateway
Ride the Anima Gateway |complete _G.UnitOnTaxi("player") |goto 63.46,72.39 < 7 |q 61249 |future
|only if walking
step
click Anima Crystal Shard##355534
|tip Sitting on the outside edge of the pillar.
Find Shard 11 |q 61249 |future |goto 65.52,71.92
step
click Anima Crystal Shard##355534
|tip Underneath the bridge at the top of the waterfall.
Find Shard 12 |q 61250 |future |goto 58.15,63.91
step
click Anima Crystal Shard##355534
|tip On the ground in a bell-type structure underneath the small waterfalls.
Find Shard 13 |q 61251 |future |goto 54.03,59.68
step
Follow the path up |goto 49.26,59.13 < 10 |only if walking
click Anima Crystal Shard##355534
|tip On top of the fallen stone archway.
Find Shard 14 |q 61253 |future |goto 46.70,65.95
step
click Anima Crystal Shard##355534
|tip On the roof of a small wooden structure.
Find Shard 15 |q 61254 |future |goto 50.68,56.14
step
click Anima Crystal Shard##355534
|tip On a small rock ledge underneath Epistasia.
Find Shard 16 |q 61257 |future |goto 34.84,65.78
step
Jump onto the ledge |goto Bastion/0 51.06,47.53 < 5 |only if walking |region heros_rest
Carefully walk along the ledge |goto 51.26,47.87 < 5 |only if walking |region heros_rest
click Anima Crystal Shard##355534
|tip On a small ledge on the outside of Hero's Rest.
Find Shard 17 |q 61258 |future |goto 51.67,48.02 |region heros_rest
step
click Anima Crystal Shard##355534
|tip On the ground underneath the platform.
Find Shard 18 |q 61260 |future |goto 47.08,49.23
step
Follow the path |goto 41.43,54.48 < 20 |only if walking
Walk along the rock ledge |goto 40.22,47.32 < 15 |only if walking
Continue along the rock ledge |goto 41.09,47.54 < 8 |only if walking
click Anima Crystal Shard##355534
|tip On a small rock ledge.
Find Shard 19 |q 61261 |future |goto 41.39,46.63
step
Follow the path |goto 42.81,56.33 < 20 |only if walking
Jump down here |goto 40.39,59.23 < 7 |only if walking
click Anima Crystal Shard##355534
|tip On top of the stone pillar.
Find Shard 20 |q 61263 |future |goto 40.04,59.12
step
click Anima Crystal Shard##355534
|tip At the top of the tilted stone structure.
Find Shard 21 |q 61264 |future |goto 38.52,53.26
step
click Anima Crystal Shard##355534
|tip Sitting at the base of a tree.
Find Shard 22 |q 61270 |future |goto 57.64,55.67
step
click Anima Crystal Shard##355534
|tip In a bookshelf on the upper platform.
Find Shard 23 |q 61271 |future |goto 65.25,42.88
step
Walk along the lower ledge |goto 71.48,38.97 < 5 |only if walking
click Anima Crystal Shard##355534
|tip On the smaller rock ledge below the cliff.
Find Shard 24 |q 61273 |future |goto 72.38,40.29
step
Follow the path up |goto 65.91,39.25 < 15 |only if walking
Run along the rock ledge |goto 66.77,26.98 < 5 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge underneath the small platform.
Find Shard 25 |q 61274 |future |goto 66.89,26.92
step
Enter the cave |goto 55.71,42.82 < 7 |walk
Follow the path |goto 56.71,40.67 < 7 |walk
click Anima Crystal Shard##355534
|tip Behind the barrels inside the cave.
Find Shard 26 |q 61275 |future |goto 57.55,38.27
step
Follow the path up |goto 53.54,41.22 < 15 |only if walking
click Anima Crystal Shard##355534
|tip On top of a stone column.
|tip You will need to carefully jump down and land on top of it.
Find Shard 27 |q 61277 |future |goto 52.16,39.39
step
Follow the path up |goto 49.55,40.36 < 15 |only if walking
Jump down carefully here |goto 49.36,38.46 < 7 |only if walking
click Anima Crystal Shard##355534
|tip Underneath the bridge.
|tip You may need to mount up to jump the gap.
Find Shard 28 |q 61278 |future |goto 49.99,38.26
step
Follow the path up |goto 49.59,40.27 < 15 |only if walking
Jump down carefully here |goto 48.30,35.02 < 7 |only if walking
click Anima Crystal Shard##355534
|tip On top of the stone column.
|tip Walking straight forward should land you on the column.
Find Shard 29 |q 61279 |future |goto 48.48,34.91
step
Enter the building |goto 56.90,28.84 < 7 |walk
click Anima Crystal Shard##355534
|tip On a table inside the small building.
Find Shard 30 |q 61280 |future |goto 56.72,28.84
step
Run up the stairs |goto 55.99,28.70 < 15 |only if walking
Jump down to the stone ledge below |goto 55.92,17.85 < 10 |only if walking
click Anima Crystal Shard##355534
|tip On a small rock ledge above the Memorial Offerings treasure.
Find Shard 31 |q 61281 |future |goto 56.20,17.31
step
Follow the path |goto 58.32,16.30 < 15 |only if walking
Jump off here |goto 58.97,15.62 < 10 |only if walking
|tip If you are at full health you won't die.
Get carried up the cliff |goto 57.54,15.28 < 7 |only if walking
Jump down carefully here |goto 59.80,13.55 < 10 |only if walking
click Anima Crystal Shard##355534
|tip On a small rock ledge on the edge of the cliff.
|tip You'll need a movement ability or a Goblin Glider Kit to not die from the fall.
|tip After clicking the Crystal Shard you can jump off the edge again to return to the top of the cliff.
Find Shard 32 |q 61282 |future |goto 59.88,13.91
step
Enter the cave |goto 53.54,9.48 < 10 |walk
click Anima Crystal Shard##355534
|tip Behind some barrels inside the cave.
Find Shard 33 |q 61283 |future |goto 52.44,09.42
step
Follow the path down |goto 47.60,17.30 < 20 |only if walking
Jump up the rocks |goto 45.49,20.08 < 10 |only if walking
Jump onto the rock ledge |goto 46.00,20.15 < 5 |only if walking
Run along the rock ledge |goto 46.39,20.29 < 5 |only if walking
Continue following the ledge |goto 46.74,18.95 < 5 |only if walking
click Anima Crystal Shard##355534
|tip On a small rock ledge under the large overhang.
Find Shard 34 |q 61284 |future |goto 46.69,18.04
step
Follow the path up |goto 46.09,25.50 < 10 |only if walking
Jump down here |goto 44.14,25.76 < 10 |only if walking
Jump onto the stone gate |goto 44.68,28.41 < 7 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge behind the waterfall.
|tip Jump down onto it carefully.
Find Shard 35 |q 61285 |future |goto 44.94,28.45
step
Follow the path up |goto 42.46,22.69 < 15 |only if walking
Continue following the path |goto 43.61,21.69 < 20 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge.
Find Shard 36 |q 61286 |future |goto 42.30,24.02
step
Follow the path up |goto 38.32,28.56 < 15 |only if walking
Continue following the path |goto 34.84,25.42 < 20 |only if walking
Follow the rock ledge around |goto 35.79,23.28 < 10 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge above the pool of water.
Find Shard 37 |q 61287 |future |goto 37.10,24.68
step
Follow the small rock ledge |goto 43.54,33.83 < 5 |only if walking
click Anima Crystal Shard##355534
|tip On a rock ledge.
Find Shard 38 |q 61288 |future |goto 42.81,33.21
step
Jump down here |goto 42.80,39.78 < 10 |only if walking
click Anima Crystal Shard##355534
|tip On the top of the small building with a blue roof.
Find Shard 39 |q 61289 |future |goto 42.71,39.40
step
Jump over the railing |goto 33.39,36.82 < 7 |only if walking
click Anima Crystal Shard##355534
|tip At the back edge of a rock ledge.
Find Shard 40 |q 61290 |future |goto 33.03,37.62
step
Run up the stairs |goto 33.22,33.27 < 10 |only if walking
click Anima Crystal Shard##355534
|tip Underwater next to a sunken statue.
Find Shard 41 |q 61291 |future |goto 31.00,27.47
step
Follow the path |goto 33.40,27.90 < 15 |only if walking
Continue following the path |goto 27.99,21.18 < 7 |only if walking
Run along the small rock ledge |goto 27.68,19.21 < 5 |only if walking
Continue following the path |goto 29.56,21.25 < 7 |only if walking
Jump down here |goto 30.66,22.65 < 7 |only if walking
click Anima Crystal Shard##355534
|tip On the top of the stone archway.
Find Shard 42 |q 61292 |future |goto 30.61,23.73
step
click Anima Crystal Shard##355534
|tip On top of the stone column below the platform with the Anima Gateway.
Find Shard 43 |q 61293 |future |goto 24.64,22.98
step
click Anima Crystal Shard##355534
|tip Behind the barrels.
Find Shard 44 |q 61294 |future |goto 26.15,22.62
step
Run up the stairs |goto 27.04,21.45 < 10 |only if walking
Follow the path |goto 26.10,19.39 < 10 |only if walking
Enter the building |goto 24.84,18.31 < 7 |only if walking
click Anima Crystal Shard##355534
|tip On a bookshelf inside the building.
Find Shard 45 |q 61295 |future |goto 24.37,18.21
step
Enter The Necrotic Wake dungeon |goto The Necrotic Wake/0 78.91,39.74 < 1000 |c |q 61297 |future
|tip You may need a group to complete this.
step
Inside The Necrotic Wake dungeon:
click Anima Crystal Shard##355534
|tip Next to the large brown fallen bell, on the southern side of The Final Toll, after defeating Blightbone.
|tip Opening your world map will show a small dot at its location.
|tip You may need a group to complete this.
|tip Use "The Necrotic Wake" dungeon guide to accomplish this.
Find Shard 46 |q 61296 |future |goto The Necrotic Wake/0 52.50,88.60
step
Inside The Necrotic Wake dungeon:
click Anima Crystal Shard##355534
|tip Behind a stone pillar in a pile of rubble the northeastern side of the Fall of Courage.
|tip Opening your world map will show a small dot at its location.
|tip You may need a group to complete this.
|tip Use "The Necrotic Wake" dungeon guide to accomplish this.
Find Shard 47 |q 61297 |future |goto 36.20,22.80
step
Enter the Spires of Ascension dungeon |goto Spires of Ascension/1 46.60,53.10 < 1000 |c |q 61300 |future
|tip You may need a group to complete this.
step
Inside the Spires Of Ascension dungeon:
click Anima Crystal Shard##355534
|tip Behind the lounge chair in the back left corner of the room with Kin-Tara.
|tip Opening your world map will show a small dot at its location.
|tip You may need a group to complete this.
|tip Use the "Spires Of Ascension" dungeon guide to accomplish this.
Find Shard 48 |q 61298 |future |goto Spires of Ascension/1 46.60,53.10
step
Inside the Spires Of Ascension dungeon:
click Anima Crystal Shard##355534
|tip Behind the large torch to the left of the Winged Champion after defeating Ventunax.
|tip Opening your world map will show a small dot at its location.
|tip You may need a group to complete this.
|tip Use the "Spires Of Ascension" dungeon guide to accomplish this.
Find Shard 49 |q 61299 |future |goto Spires of Ascension/1 69.40,38.70
step
Inside the Spires Of Ascension dungeon:
click Anima Crystal Shard##355534
|tip On the ledge just behind the Winged Champions in the central font structure in front of Oryphrion in the Font of Fealty.
|tip Opening your world map will show a small dot at its location.
|tip You may need a group to complete this.
|tip Use the "Spires Of Ascension" dungeon guide to accomplish this.
Find Shard 50 |q 61300 |future |goto Spires of Ascension/2 49.80,46.90
step
talk Forgelite Hephaesius##171732
Tell him _"I've brought you shards of anima crystals."_
Watch the dialogue
collect 1 Crystal Mallet of Heralds##180858 |goto Bastion/0 59.36,31.39 |or
'|complete hasmount(334433) |or
step
click Vesper of the Silver Wind##355435
click Gift of the Silver Wind##355449
collect Silverwind Larion##180772 |goto 36.13,26.61 |or
'|complete hasmount(334433) |or
step
use the Silverwind Larion##180772
Learn the "Silverwind Larion" Mount |learnmount Silverwind Larion##334433
step
_Congratulations!_
You Collected the "Silverwind Larion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Sundancer",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"flying", "mount", "Shadowlands"},
mounts={312765},
patch='90001',
mounttype='Flying',
model={94361},
description="\nThis mount is acquired by using an Ancient Memorial buff and a glider from the Kyrian covenant to tame Sundancer in Bastion.",
},[[
step
collect Skystrider Glider##180445 |or
|tip This item can be crafted with Ascended Crafting if you are from the Kyrian covenant.
|tip You must progress through the Kyrian covenant's Path of Ascension to unlock the crafting recipe.
|tip It can also be purchased from the Auction House.
|tip Note that the rare you need to fight is a 62 elite, so you will probably need a group.
'|complete hasmount(312765) |or
step
click Ancient Memorial##353807
Gain the Sunrider's Blessing Buff |havebuff spell:332309 |goto Bastion/0 60.04,93.99 |or
'|complete hasmount(312765) |or
step
Follow the path up |goto 57.53,89.65 < 10 |only if walking
Wait for Sundancer to fly near the cliff |goto 61.17,81.80 < 10 |only if walking
use the Skystrider Glider##180445
|tip This will allow you to float lightly.
|tip You will need to immediately move to Sundancer and click it.
Gain the "Skystrider Glider" Buff |havebuff spell:332308 |goto 61.70,81.46 |or
'|complete hasmount(312765) |or
step
clicknpc Sundancer##170439
|tip Immediately start spamming the "Soothe" button on-screen until it disappears.
Ride Sundancer |invehicle |goto 61.70,81.46 |or
'|complete hasmount(312765) |or
step
Subdue Sundancer
|tip Spam the "Soothe" button on-screen until it disappears.
|tip You will take damage until you subdue Sundancer.
Watch the dialogue
Ride Sundancer Back to the Ground |outvehicle |goto 60.08,93.60 |or
'|complete hasmount(312765) |or
step
talk Sundancer##170548
Choose _<Accept the challenge.>_
kill Sundancer##170548
|tip You may need a group for this.
|tip You only need to bring it to around 15% health.
collect Sundancer##180773 |goto 60.25,93.63 |or
'|complete hasmount(312765) |or
step
use Sundancer##180773
Learn the "Sundancer" Mount |learnmount Sundancer##312765
step
_Congratulations!_
You Collected the "Sundancer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Wildseed Cradle",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying", "mount", "Shadowlands"},
mounts={334352},
patch='90001',
mounttype='Flying',
model={98594},
description="\nThis mount is acquired by assembling the Twinklestar's Gardening Toolkit and looting the Cache of the Moon in Ardenweald.",
},[[
step
click Gardener's Basket##355212
|tip It looks like a small grey basket laying in between two rocks.
collect Gardener's Basket##180758 |goto Ardenweald/0 40.32,52.62 |or
'|complete itemcount(180753) == 1 or hasmount(334352) |or
step
click Gardener's Hammer##355211
|tip It looks like a small wooden hammer laying inside the cart.
collect Gardener's Hammer##180754 |goto 39.75,54.38 |or
'|complete itemcount(180753) == 1 or hasmount(334352) |or
step
Follow the path |goto 40.13,53.86 < 7 |only if walking
Cross the bridge |goto 40.04,55.40 < 7 |only if walking
click Diary of the Night##355216
|tip It looks like an open book laying on a small desk up on the tree platform.
collect Diary of the Night##180759 |goto 39.00,56.98 |or
'|complete itemcount(180753) == 1 or hasmount(334352) |or
step
click Gardener's Flute##355215
|tip It looks like a small white flute laying on the ground next to the glowing plants.
collect Gardener's Flute##180756 |goto 38.49,58.08 |or
'|complete itemcount(180753) == 1 or hasmount(334352) |or
step
click Gardener's Wand##355214
|tip It looks like a small white and wooden wand laying on the ground between two wheels of the cart.
collect Gardener's Wand##180757 |goto 38.85,60.11 |or
'|complete itemcount(180753) == 1 or hasmount(334352) |or
step
use the Gardener's Basket##180758
collect Twinklestar's Gardening Toolkit##180753 |or
'|complete hasmount(334352) |or
step
talk Twinklestar##171360
Tell her _"I found your gardening tools."_
Gain the Moonsight Buff |havebuff spell:334353 |goto 63.88,37.55 |or
'|complete hasmount(334352) |or
step
click Cache of the Moon##355041
|tip It looks like a blue and purple orb floating behind Twinklestar.
collect Wildseed Cradle##180731 |goto 63.90,37.77 |or
'|complete hasmount(334352) |or
step
use the Wildseed Cradle##180731
Learn the "Wildseed Cradle" Mount |learnmount Wildseed Cradle##334352
step
_Congratulations!_
You Collected the "Wildseed Cradle" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Bound Shadehound",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"mount", "Shadowlands"},
mounts={344577},
patch='90001',
mounttype='Ground',
model={92632},
description="\nThis mount can be acquired by completing various activities in The Maw.",
},[[
step
Reach Tentative Reputation with Ve'nari |complete rep("Ve'nari") >= Tentative
|tip Gain reputation by completing dailies, killing rares, and doing events in The Maw.
step
Collect 1,050 Stygia |complete curcount(1767) >= 1050 |q 63217 |future
|tip Stygia can be obtained by killing enemies and doing quests or events in The Maw.
step
talk Ve'nari##162804
buy 1 Animated Levitating Chain##184653 |goto The Maw/0 46.91,41.70 |q 63217 |future
step
use the Animated Levitating Chain##184653
Unlock the "Animated Levitating Chain" Upgrade |q 63217 |future
step
Reach Appreciative Reputation with Ve'nari |complete rep("Ve'nari") >= Appreciative
|tip Gain reputation by completing dailies, killing rares, and doing events in The Maw.
step
Collect 1,500 Stygia |complete curcount(1767) >= 1500 |q 63641 |future
|tip Stygia can be obtained by killing enemies and doing quests or events in The Maw.
step
talk Ve'nari##162804
buy 1 Stygia Dowser##184870 |goto 46.91,41.70 |q 63641 |future
step
click Grapple Point |goto 23.33,66.58 |only if walking
|tip On the wall above you. |only if walking
Cross the bridge |goto 22.56,72.21 < 20 |c |q 63641 |future
step
label "Collect_Crumbling_Stele"
click Grapple Point |goto 23.41,74.22 |only if walking
|tip On the wall above you. |only if walking
Use the _"Stygia Delirium"_ ability
|tip It appears as a button on the screen.
|tip Solve the puzzle that appears.
|tip Stand facing the southeast.
|tip Six runes will appear.
|tip You can swap two runes with each other at a time.
|tip You must match the order of runes to the order of the runes on the platform.
|tip Choose carefully, as you only have a limited number of attempts.
|tip If you fail to solve it, you will have to wait for two hours before trying again.
click Runed Chest
collect 1 Crumbling Stele##185056 |goto 24.08,75.70 |q 63641 |future |next "Collect_2000_Stygia" |or
'|havebuff spell:349931 |next "Puzzle_Fail" |or
step
label "Puzzle_Fail"
_Jump down quickly!_
|tip Jump down to the bridge or you will die!
Wait Two Hours to Try Again |nobuff spell:349931 |goto 23.63,74.69 |next "Collect_Crumbling_Stele"
step
label "Collect_2000_Stygia"
Collect 2,000 Stygia |complete curcount(1767) >= 2000 |q 63641 |future
|tip Stygia can be obtained by killing enemies and doing quests or events in The Maw.
step
talk Ve'nari##162804
buy 1 Partial Rune Codex##185350 |goto 46.91,41.70 |q 63641 |future
step
Enter the cave |goto 48.69,84.46 < 20 |walk
click Rune Codex Page
|tip Inside the cave.
collect 1 Rune Codex Page: Forging##185351 |goto 51.61,83.98 |q 63641 |future
step
use the Rune Codex Page: Forging##185351
Read the Partial Rune Codex |q 63641 |future
step
Cross the bridge |goto 28.18,62.52 < 20 |only if walking
Run down the stairs |goto 25.75,66.57 < 20 |only if walking
Run down the stairs |goto 25.85,69.96 < 20 |only if walking
click Rune Codex Page
collect 1 Rune Codex Page: Souls##185352 |goto 27.24,72.34
step
use the Rune Codex Page: Souls##185352
Read the Rune Codex Page: Souls |q 63642 |future
step
Walk onto the pad |goto 27.57,17.44
Teleport to The Tremaculum |goto 28.20,18.90 < 5 |c |noway |q 63643 |future
step
click Rune Codex Page
collect 1 Rune Codex Page: Binding##185353 |goto 24.63,12.55 |q 63643 |future
step
use the Rune Codex Page: Binding##185353
Read the Rune Codex Page: Binding |q 63643 |future
step
collect 1 Intact Rune Codex##185632 |q 63684 |future
|tip You should have this from reading the pages.
step
clicknpc Stray Soul##177195
|tip It looks like a wolf.
|tip It wanders from the southern end to the nothern end of the River of Souls.
|tip At the north end, it despawns and then respawns back at the south end.
|tip It's easiest to start at the north end and make your way south.
collect Willing Wolf Soul##185471 |goto 31.2,33.8 |q 63684 |future
step
kill Soulforger Rhovus##166398
|tip Soulforger Rhovus is a rare with approximately a one hour respawn timer.
collect 1 Soulforger's Tools##185473 |goto 35.97,41.56 |q 63684 |future
stickystart "Collect_Stygia_Sliver"
step
use the Stygia Dowser##184870
|tip Use it next to Stygian Nexuses all over The Maw.
|tip They look like glowing green orbs located randomly all over the zone.
|tip They will appear on your minimap as yellow dots.
collect 200 Stygia Dust##185618 |goto 53.16,78.42 |q 63684 |future
step
label "Collect_Stygia_Sliver"
use the Stygia Dowser##184870 |notinsticky
|tip Use it next to Stygian Nexuses all over The Maw. |notinsticky
|tip They look like glowing green orbs located randomly all over the zone. |notinsticky
|tip They will appear on your minimap as yellow dots.
collect 200 Stygia Sliver##185617 |goto 53.16,78.42 |q 63684 |future
step
Cross the bridge |goto 28.00,62.68 < 30 |only if walking
click Grapple Point |goto 23.52,66.66 |only if walking
|tip On the wall above you. |only if walking
click Grapple Point |goto 22.16,71.07 |only if walking
|tip On the wall above you. |only if walking
click Grapple Point |goto 22.24,70.79 |only if walking
|tip On the wall above you. |only if walking
Reach the Altar of Domination |goto 22.24,70.79 |c |noway |q 63684 |future
step
click Grapple Point |goto 20.51,67.83 |only if walking
|tip On the wall above you. |only if walking
clicknpc Soulsteel Anvil##177392
_<Create 20 Stygia Bars>_
collect 20 Stygia Bar##185630 |goto 20.04,66.81 |q 63684 |future
step
clicknpc Soulsteel Anvil##177392
_<Create 1 Armored Husk>_
collect 1 Armored Husk##185474 |goto 20.04,66.81 |q 63684 |future
step
click Chaotic Rift |goto 19.77,66.17
Ride the Rift |invehicle |q 63684 |future
step
Reach Zovaal's Cauldron |outvehicle |q 63684 |future
step
click Binding Altar##367761
collect 1 Feral Shadehound##185475 |goto 45.20,48.33 |q 63684 |future
step
use the Feral Shadehound##185475
accept Feral Shadehound##63684
step
use the Crumbling Stele##185056
|tip Read this first to see the order of runes and memorize it.
use the Feral Shadehound##185616
|tip Run the Shadehound between the cages so you can focus on the rune order.
|tip Click the buttons on your action bar in the order shown in the Crumbling Stele.
Summon and Bind your Feral Shadehound |q 63684/1  |goto 45.20,47.38
step
_Click the Complete Quest Box:_
turnin Feral Shadehound##63684
step
use the Bound Shadehound##184168
Learn the "Bound Shadehound" Mount |learnmount Bound Shadehound##344577
step
_Congratulations!_
You Collected the "Bound Shadehound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Corridor Creeper",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"ground", "mount", "Shadowlands"},
mounts={344578},
patch='90001',
mounttype='Ground',
model={92630},
description="\nThis mount is acquired by reaching Layer 8 of the Twisting Corridors in Torghast, Tower of the Damned.",
},[[
step
Unlock the Twisting Corridors of Torghast |complete completedq(62836) or hasmount(344578)
|tip Complete the "Signs of the Lion" quest in the "Torghast Questline" leveling guide to accomplish this.
step
Reach Layer 8 of the Twisting Corridors in Torghast |achieve 14570 |or
|tip You will have to complete each layer in order to advance to the next.
|tip Each layer consists of 18 floors, with a boss every 6 floors and rest area every 3.
|tip Expect to spend between 1.5 and 2.5 hours per level, possibly more at higher layers.
|tip Higher layers will have significantly increased difficulty and gear requirements.
'|complete hasmount(344578) |or
step
collect Corridor Creeper##184166 |or
|tip You can find it in your mailbox.
'|complete hasmount(344578) |or
step
use the Corridor Creeper##184166
Learn the "Corridor Creeper" Mount |learnmount Corridor Creeper##344578
step
_Congratulations!_
You Collected the "Corridor Creeper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Darkwarren Hardshell",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground", "mount", "Shadowlands"},
mounts={312763},
patch='90001',
mounttype='Ground',
model={94347},
description="\nThis mount is acquired randomly by completing Adventure missions from the Command Table inside your Covenant.",
},[[
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kirian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
|tip This mount randomly appears as a reward for one of the Command Table adventures.
|tip Complete adventures regularly to increase the chance of receiving the correct adventure.
collect Darkwarren Hardshell##183052 |or
'|complete hasmount(312763) |or
step
use the Darkwarren Hardshell##183052
Learn the "Darkwarren Hardshell" Mount |learnmount Darkwarren Hardshell##312763
step
_Congratulations!_
You Collected the "Darkwarren Hardshell" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Sinrunner Blanchy",{
author="support@zygorguides.com",
startlevel=55.0,
keywords={"ground", "mount", "Shadowlands"},
mounts={339588},
patch='90001',
mounttype='Ground',
model={98449},
description="\nThis mount is acquired by bringing 6 sets of items to Dead Blanchy in Revendreth over the course of 6 days.",
},[[
step
click Sack of Oats##2724+
|tip They look like brown sacks on the ground near buildings around this area.
collect 8 Handful of Oats##182581 |goto Westfall/0 52.22,33.57 |q 62038 |future
|tip You can also purchase them from the Auction House.
You can find more around [46.51,37.86]
step
talk Mims##167815
buy 3 Dredhollow Apple##179271 |goto Revendreth/0 40.86,46.66 |or
|tip You can buy these items with gold.
'|complete hasmount(339588) |or
step
talk Snickersnee##173570
Choose _<Ask to borrow a grooming brush>_
collect 1 Grooming Brush##182585 |goto 63.41,61.77 |q 62042 |future
step
click Empty Water Bucket##357526
collect 1 Empty Water Bucket##182620 |goto 63.26,61.55 |q 62049 |future
step
click Discarded Horseshoe##357541+
|tip They look like small glittering objects on the ground around this area.
|tip They're usually found along the road.
|tip It's usually easiest to stand in the same spot after finding one and wait for it to respawn.
collect 4 Sturdy Horseshoe##182595 |goto 70.25,72.03 |q 62047 |future
step
use the Empty Water Bucket##182620
collect 1 Bucket of Clean Water##182599 |goto Ardenweald/0 49.41,51.51 |q 62049 |future
step
talk Ta'tru##171808
buy 1 Comfortable Saddle Blanket##182597 |goto Revendreth/0 51.14,78.84 |q 62048 |future
|tip You must trade Ta'tru for this item.
|tip The quantity and the specific item required change every week.
|tip Check to see what you need before gathering materials or buying them from the Auction House.
step
talk Dead Blanchy##173468
Choose _<Offer Dead Blanchy eight handfuls of oats>_
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip You can only offer one item per day, requiring six days total.
|tip Check the group finder for Blanchy groups to quickly find it.
Offer the Handful of Oats |complete completedq(62038) or hasmount(339588) |goto 63.21,42.87
step
Wait for the Next Daily Reset |complete not completedq(62107) or completedq(62038)
|tip After the next reset you can turn in the next item.
step
talk Dead Blanchy##173468
Choose _<Remove the irritants from Dead Blanchy's skin with the grooming brush>_
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip You can only offer one item per day, requiring six days total.
|tip Check the group finder for Blanchy groups to quickly find it.
Offer the Grooming Brush |complete completedq(62042) or hasmount(339588) |goto 63.21,42.87
step
Wait for the Next Daily Reset |complete not completedq(62107) or completedq(62042)
|tip After the next reset you can turn in the next item.
step
talk Dead Blanchy##173468
Choose _<Gently check Dead Blanchy's feet and apply horeshoes>_
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip You can only offer one item per day, requiring six days total.
|tip Check the group finder for Blanchy groups to quickly find it.
Offer the Sturdy Horseshoes |complete completedq(62047) or hasmount(339588) |goto 63.21,42.87
step
Wait for the Next Daily Reset |complete not completedq(62107) or completedq(62047)
|tip After the next reset you can turn in the next item.
step
talk Dead Blanchy##173468
Choose _<Bring the brimming bucket of water close to Dead Blanchy so she can quench her thirst>_
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip You can only offer one item per day, requiring six days total.
|tip Check the group finder for Blanchy groups to quickly find it.
Offer the Bucket of Clean Water |complete completedq(62049) or hasmount(339588) |goto 63.21,42.87
step
Wait for the Next Daily Reset |complete not completedq(62107) or completedq(62049)
|tip After the next reset you can turn in the next item.
step
talk Dead Blanchy##173468
Choose _<Let Dead Blanchy sniff the saddle blanket before lifting it over her shoulders and onto her back>_
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip You can only offer one item per day, requiring six days total.
|tip Check the group finder for Blanchy groups to quickly find it.
Offer the Comfortable Saddle Blanket |complete completedq(62048) or hasmount(339588) |goto 63.21,42.87
step
Wait for the Next Daily Reset |complete not completedq(62107) or completedq(62048)
|tip After the next reset you can turn in the next item.
step
talk Dead Blanchy##173468
Choose _<Offer Dead Blanchy three Dredhollow Apples>_
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip You can only offer one item per day, requiring six days total.
|tip Check the group finder for Blanchy groups to quickly find it.
Offer the Dredhollow Apples |complete completedq(62050) or hasmount(339588) |goto 63.21,42.87
step
clicknpc Dead Blanchy##173468
|tip This NPC has about a 1-2 hour respawn timer.
|tip It spawns in this spot and runs back and forth to the south a short distance.
|tip You must stand in front of it to prevent it from running and then you can interact with it.
|tip Offer Dead Blanchy the different sets of items every day for six days.
|tip They do not need to be done six days in a row, just six days total.
collect Blanchy's Reins##182614 |goto 63.21,42.87 |or
'|complete hasmount(339588) |or
step
use Blanchy's Reins##182614
Learn the "Sinrunner Blanchy" Mount |learnmount Sinrunner Blanchy##339588
step
_Congratulations!_
You Collected the "Sinrunner Blanchy" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Warstitched Darkhound",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, adventure, Shadowlands, Warstitched, Darkhound"},
mounts={341766},
patch='90001',
mounttype='Ground',
model={98223},
description="\nThis mount is acquired randomly by completing Adventure missions from the Command Table inside your Covenant.",
},[[
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kirian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
|tip This mount randomly appears as a reward for one of these Adventures.
|tip Complete Adventures regularly to increase the chance of receiving the correct Adventure.
collect Warstitched Darkhound##183615 |or
'|complete hasmount(341766) |or
step
use the Warstitched Darkhound##183615
Learn the "Warstitched Darkhound" Mount |learnmount Warstitched Darkhound##341766
step
_Congratulations!_
You Collected the "Warstitched Darkhound" Mount.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\The Wild Hunt Mounts\\Amber Ardenmoth",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, Shadowlands, emissary, Amber, Ardenmoth"},
mounts={342666},
patch='90001',
mounttype='Flying',
model={95208},
description="\nThis mount has a low chance to drop from Wild Hunt Supplies gained by earning paragon ranks with The Wild Hunt after reaching Exalted reputation.",
},[[
step
Reach Exalted Reputation with The Wild Hunt |complete rep('The Wild Hunt') == Exalted or hasmount(342666)
step
Continue increasing your reputation with The Wild Hunt
|tip Press "U" to open the reputations panel and mouse over the bag icon next to The Wild Hunt.
|tip Gain additional reputation to fill up the progress bar and earn Wild Hunt Supplies.
collect Wild Hunt Supplies##180649 |or
'|complete hasmount(342666) |or
step
use Wild Hunt Supplies##180649
collect Amber Ardenmoth##183800 |or
|tip This has a very low drop chance.
'|complete hasmount(342666) |or
step
use the Amber Ardenmoth##183800
Learn the "Amber Ardenmoth" Mount |learnmount Amber Ardenmoth##342666
step
_Congratulations!_
You Collected the "Amber Ardenmoth" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\The Undying Army\\Colossal Slaughterclaw",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, Shadowlands, Colossal, Slaughterclaw"},
mounts={327405},
patch='90001',
mounttype='Flying',
model={98147},
description="\nThis mount has a low chance to drop from Supplies of the Undying Army gained by earning paragon ranks with The Undying Army after reaching Exalted reputation.",
},[[
step
Reach Exalted Reputation with The Undying Army |complete rep('The Undying Army') == Exalted or hasmount(327405)
step
Continue increasing your reputation with The Undying Army
|tip Press "U" to open the reputations panel and mouse over the bag icon next to The Undying Army.
|tip Gain additional reputation to fill up the progress bar and earn Supplies of the Undying Army.
collect Supplies of the Undying Army##180646 |or
'|complete hasmount(327405) |or
step
use Supplies of the Undying Army##180646
collect Reins of the Colossal Slaughterclaw##182081 |or
|tip This has a very low drop chance.
'|complete hasmount(327405) |or
step
use the Reins of the Colossal Slaughterclaw##182081
Learn the "Colossal Slaughterclaw" Mount |learnmount Colossal Slaughterclaw##327405
step
_Congratulations!_
You Collected the "Colossal Slaughterclaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\The Wild Hunt Mounts\\Duskflutter Ardenmoth",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, Shadowlands, Wild, Hunt, Duskflutter, Ardenmoth"},
mounts={332256},
patch='90001',
mounttype='Flying',
model={95206},
description="\nThis mount is purchased for 24,000 gold after becoming Exalted with The Wild Hunt.",
},[[
step
Reach Exalted Reputation with The Wild Hunt |complete rep('The Wild Hunt') == Exalted or hasmount(332256)
step
talk Aithlyn##158556
buy 1 Duskflutter Ardenmoth##180729 |goto Ardenweald/0 48.48,50.42 |or
'|complete hasmount(332256) |or
step
use the Duskflutter Ardenmoth##180729
Learn the "Duskflutter Ardenmoth" Mount |learnmount Duskflutter Ardenmoth##332256
step
_Congratulations!_
You Collected the "Duskflutter Ardenmoth" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\The Ascended Mounts\\Gilded Prowler",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, Shadowlands, Gilded, Prowler"},
mounts={342334},
patch='90001',
mounttype='Flying',
model={93771},
description="\nThis mount is purchased for 24,000 gold after becoming Exalted with The Ascended.",
},[[
step
Reach Exalted Reputation with The Ascended |complete rep('The Ascended') == Exalted or hasmount(342334)
step
talk Adjutant Nikos##160470
buy 1 Gilded Prowler##183740 |goto Bastion/0 52.24,47.10 |region heros_rest |or
'|complete hasmount(342334) |or
step
use the Gilded Prowler##183740
Learn the "Gilded Prowler" Mount |learnmount Gilded Prowler##342334
step
_Congratulations!_
You Collected the "Gilded Prowler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Court of Harvestors Mounts\\Court Sinrunner",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, Shadowlands, Court, Sinrunner"},
mounts={341639},
patch='90001',
mounttype='Ground',
model={98721},
description="\nThis mount is purchased for 24,000 gold after becoming Exalted with the Court of Harvesters.",
},[[
step
Reach Exalted Reputation with the Court of Harvesters |complete rep('Court of Harvesters') == Exalted or hasmount(341639)
step
Enter the building |goto Revendreth/0 62.26,63.57 < 7 |walk
talk Mistress Mihaela##156822
|tip Inside the building.
buy 1 Court Sinrunner##183518 |goto 61.31,63.78 |or
'|complete hasmount(341639) |or
step
use the Court Sinrunner##183518
Learn the "Court Sinrunner" Mount |learnmount Court Sinrunner##341639
step
_Congratulations!_
You Collected the "Court Sinrunner" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\The Avowed Mounts\\Inquisition Gargon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, Shadowlands, Inquisition, Gargon"},
mounts={332923},
patch='90001',
mounttype='Ground',
model={94325},
description="\nThis mount is purchased for 2,000 Sinstone Fragments after becoming Exalted with The Avowed.",
},[[
step
Complete the "Abuse of Power" Questline in Revendreth |complete completedq(57929) or hasmount(332923)
|tip Completing this questline will unlock The Avowed faction.
step
Kill enemies around this area
|tip Depraved enemies and Carved Catalogers will drop Sinstone Fragments.
Collect 2,000 Sinstone Fragments |complete curcount(1816) >= 2000 or hasmount(332923) |goto Revendreth/0 72.30,54.13
step
Reach Exalted Reputation with The Avowed |complete rep('The Avowed') == Exalted or hasmount(332923)
step
Enter the building |goto Revendreth/0 72.98,52.46 < 10 |walk
talk Archivist Janeera##173705
|tip Inside the building.
buy 1 Inquisition Gargon##182954 |goto 73.07,52.14 |or
'|complete hasmount(332923) |or
step
use the Inquisition Gargon##182954
Learn the "Inquisition Gargon" Mount |learnmount Inquisition Gargon##332923
step
_Congratulations!_
You Collected the "Inquisition Gargon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\The Undying Army\\Lurid Bloodtusk",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, Shadowlands, Lurid, Bloodtusk"},
mounts={332484},
patch='90001',
mounttype='Ground',
model={98166},
description="\nThis mount is purchased for 24,000 gold after becoming Exalted with The Undying Army.",
},[[
step
Reach Exalted Reputation with The Undying Army |complete rep('The Undying Army') == Exalted or hasmount(332484)
step
talk Nalcorn Talsen##173003
buy 1 Lurid Bloodtusk##182082 |goto Maldraxxus/0 50.76,53.38 |or
'|complete hasmount(332484) |or
step
use the Lurid Bloodtusk##182082
Learn the "Lurid Bloodtusk" Mount |learnmount Lurid Bloodtusk##332484
step
_Congratulations!_
You Collected the "Lurid Bloodtusk" Mount.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Amber Shardhide",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Death's, Advance"},
mounts={354356},
patch='90100',
mounttype='Ground',
model={100422},
description="\nThis mount can be purchased for 5,000 Stygia after becoming Revered with Death's Advance.",
},[[
step
Reach Revered Reputation with Death's Advance |complete rep("Death's Advance") >= Revered |or
|tip Use the "Death's Advance" reputation guide to help you accomplish this.
'|learnmount Amber Shardhide##354356 |or
step
Collect #5000# Stygia |complete curcount(1767) >= 5000 |or
|tip Kill enemies or complete daily and world quests inside of The Maw to earn this currency.
|tip Use "The Maw World Quests" and "Ve'nari Daily Quests" guides to accomplish this.
'|learnmount Amber Shardhide##354356 |or
step
talk Duchess Mynx##179321
buy Amber Shardhide##186647 |goto Korthia/0 63.31,23.33 |or
|tip This costs 5,000 Stygia.
'|learnmount Amber Shardhide##354356 |or
step
use the Amber Shardhide##186647
Learn the "Amber Shardhide" Mount |learnmount Amber Shardhide##354356
step
_Congratulations!_
You Collected the "Amber Shardhide" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Ardenweald Wilderling",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Night, Fae"},
mounts={353856},
patch='90100',
mounttype='Flying',
model={100105},
description="\nThis mount is rewarded to you after reaching Renown level 45 with the Night Fae covenant.",
},[[
step
Join the Night Fae Covenant |complete  NightFae |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Ardenweald Wilderling##353856 |or
step
Reach Renown Level 45 |complete covenantrenown() >= 45 |or
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
'|learnmount Ardenweald Wilderling##353856 |or
step
collect Ardenweald Wilderling Harness##186493 |or
'|learnmount Ardenweald Wilderling##353856 |or
step
use the Ardenweald Wilderling Harness##186493
Learn the "Ardenweald Wilderling" Mount |learnmount Ardenweald Wilderling##353856
step
_Congratulations!_
You Collected the "Ardenweald Wilderling" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Ascendant's Aquilon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Bastion"},
mounts={353880},
patch='90100',
mounttype='Flying',
model={99108},
description="\nThis mount can be purchased for 7,500 Reservoir Anima from Adjutant Galos in Bastion.",
},[[
step
Join the Kyrian Covenant |complete  Kyrian |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Ascendant's Aquilon##353880 |or
step
Collect #7500# Reservoir Anima |complete curcount(1813) >= 7500 |or
|tip Collect Resevoir Anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
'|learnmount Ascendant's Aquilon##353880 |or
step
talk Adjutant Galos##174937
|tip Inside the building.
buy Ascendant's Aquilon##186485 |goto Elysian Hold/1 63.35,30.62 |or
|tip This costs 7,500 Reservoir Anima.
'|learnmount Ascendant's Aquilon##353880 |or
step
use the Ascendant's Aquilon##186485
Learn the "Ascendant's Aquilon" Mount |learnmount Ascendant's Aquilon##353880
step
_Congratulations!_
You Collected the "Ascendant's Aquilon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Autumnal Wilderling",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Ardenweald"},
mounts={353857},
patch='90100',
mounttype='Flying',
model={100102},
description="\nThis mount can be purchased for 7,500 Reservoir Anima from Elwyn in Ardenweald.",
},[[
step
Collect #7500# Reservoir Anima |complete curcount(1813) >= 7500 |or
|tip Collect Resevoir Anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
'|learnmount Autumnal Wilderling##353857 |or
step
talk Elwyn##174914
|tip Inside the building.
buy Autumnal Wilderling Harness##186494 |goto Heart of the Forest/0 60.14,35.97 |or
|tip This costs 7,500 Reservoir Anima.
'|learnmount Autumnal Wilderling##353857 |or
step
use the Autumnal Wilderling Harness##186494
Learn the "Autumnal Wilderling" Mount |learnmount Autumnal Wilderling##353857
step
_Congratulations!_
You Collected the "Autumnal Wilderling" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Beryl Shardhide",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Death's, Advance, Supplies"},
mounts={347810},
patch='90100',
mounttype='Ground',
model={100421},
description="\nThis mount has a chance to drop from Death's Advance Supplies.",
},[[
step
Reach Exalted Reputation with Death's Advance |complete rep("Death's Advance") == Exalted |or
|tip Earn reputation for "Death's Advance" by completing daily quests, killing rares, and opening chests in Korthia.
'|learnmount Beryl Shardhide##347810 |or
step
label "Turnin_Supply_Quest"
talk Duchess Mynx##179321
turnin Supplies from Death's Advance##64012 |goto Korthia/0 63.31,23.33 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for Death's Advance.
|tip Earn reputation for "Death's Advance" by completing daily quests, killing rares, and opening chests in Korthia.
|tip This quest is repeatable.
'|learnmount Beryl Shardhide##347810 |or
step
use the Death's Advance Supplies##186650
collect Beryl Shardhide##186644
|tip It may take several attempts to get this.
'|complete itemcount(186650) == 0 and itemcount(186644) == 0 and not hasmount(347810) |next "Turnin_Supply_Quest" |or
'|learnmount Beryl Shardhide##347810 |or
step
use the Beryl Shardhide##186644
Learn the "Beryl Shardhide" Mount |learnmount Beryl Shardhide##347810
step
_Congratulations!_
You Collected the "Beryl Shardhide" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Cartel Master's Gearglider",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Tazavesh, The, Veiled, Market"},
mounts={353263},
patch='90100',
mounttype='Flying',
model={100051},
description="\nThis mount has a chance to drop from So'leah in Tazavesh, The Veiled Market Mythic dungeon.",
},[[
step
Enter Tazavesh, the Veiled Market |c |goto Tazavesh, the Veiled Market/7 0.00,0.00 |or
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to unlock the dungeon.
'|learnmount Cartel Master's Gearglider##353263 |or
step
kill So'leah##178433
|tip Use the "Tazavesh, The Veiled Market" dungeon guide to accomplish this.
collect Cartel Master's Gearglider##186638 |or
|tip This will only drop on Mythic difficulty.
|tip It may take several attempts to get this.
'|learnmount Cartel Master's Gearglider##353263 |or
step
use the Cartel Master's Gearglider##186638
Learn the "Cartel Master's Gearglider" Mount |learnmount Cartel Master's Gearglider##353263
step
_Congratulations!_
You Collected the "Cartel Master's Gearglider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Crimson Shardhide",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Korthia"},
mounts={354357},
patch='90100',
mounttype='Ground',
model={100423},
description="\nThis mount has a chance to drop from the rare boss Malbog in Korthia.",
},[[
step
talk Caretaker Kah-Kay##179729
tell him _"I will eliminate the threat!"_
|tip He has a chance to spawn at this location each day.
Gain the Sharp-Eyed Buff |complete hasbuff("spell:355078") |goto Korthia/0 60.67,23.11 |or
'|learnmount Crimson Shardhide##354357 |or
step
click Fleshy Remains##369181
|tip Follow the purple tracks with the "Sharp-eyed" buff active.
|tip They will lead you to the location of the "Fleshy Remains".
|tip If you run ahead of the purple tracks the "Fleshy Remains" will not spawn, so let the tracks lead you to this location.
|tip The "Sharp-eyed" buff will last for 15 minutes, if you lose the buff you can go back to Kah-Kay to get it again.
kill Malbog##179684
collect Crimson Shardhide##186645 |goto 44.24,29.33 |or
|tip It may take several attempts to get this.
'|learnmount Crimson Shardhide##354357 |or
step
use the Crimson Shardhide##186645
Learn the "Crimson Shardhide" Mount |learnmount Crimson Shardhide##354357
step
_Congratulations!_
You Collected the "Crimson Shardhide" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Darkmaul",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Korthia"},
mounts={354358},
patch='90100',
mounttype='Ground',
model={100424},
description="\nThis mount can be obtained by feeding 6 Tasty Mawshrooms to a Darkmaul in Korthia.",
},[[
step
click Invasive Mawshroom##369332+
|tip They can either look like tiny mushrooms growing on tree limbs or bulbous white mushrooms growing from the ground.
|tip They can be found in various locations all around Korthia each day.
|tip After some one loots an "Invasive Mushrooms" you will have about a minute until it despawns.
collect 6 Tasty Mawshroom##187153 |goto Korthia/0 54.2,41.2 |or
|tip This has a 11% chance to drop, it may take several attempts to get.
You can also find it around:
[57.34,39.41]
[53.8,37.9]
[39.8,34.9]
[45.7,34.3]
'|learnmount Darkmaul##354358 |or
step
click Darkmaul##180063
|tip You must have 6 "Tasty Mawshrooms" in your inventory.
collect Darkmaul##186646 |goto 42.8,32.7 |or
'|learnmount Darkmaul##354358 |or
step
use the Darkmaul##186646
Learn the "Darkmaul" Mount |learnmount Darkmaul##354358
step
_Congratulations!_
You Collected the "Darkmaul" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Dusklight Razorwing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Korthia"},
mounts={354361},
patch='90100',
mounttype='Flying',
model={100254},
description="\nThis mount can be obtained by brining a Lost Razorwing Egg to a Razorwing Nest.",
},[[
step
Kill enemies around this area
collect 10 Lost Razorwing Egg##187054 |goto Korthia/0 37.39,49.23 |or
|tip Only Gorgers, Scavengers, and Worldeater type enemies will drops this.
'|learnmount Dusklight Razorwing##354361 |or
step
click Razorwing Nest##369246
|tip When you place the first egg in the nest you will be attacked by a Nestguardian, upon placing the 10th egg you will receive the mount.
collect Dusklight Razorwing##186651 |goto 25.72,51.08 |or
'|learnmount Dusklight Razorwing##354361 |or
step
use the Dusklight Razorwing##186651
Learn the "Dusklight Razorwing" Mount |learnmount Dusklight Razorwing##354361
step
_Congratulations!_
You Collected the "Dusklight Razorwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Elysian Aquilon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Kyrian"},
mounts={353875},
patch='90100',
mounttype='Flying',
model={99107},
description="\nThis mount is rewarded to you after reaching Renown level 45 with the Kyrian covenant.",
},[[
step
Join the Kyrian Covenant |complete  Kyrian |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Elysian Aquilon##353875 |or
step
Reach Renown Level 45 |complete covenantrenown() >= 45 |or
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
'|learnmount Elysian Aquilon##353875 |or
step
collect Elysian Aquilon##186482 |or
'|learnmount Elysian Aquilon##353875 |or
step
use the Elysian Aquilon##186482
Learn the "Elysian Aquilon" Mount |learnmount Elysian Aquilon##353875
step
_Congratulations!_
You Collected the "Elysian Aquilon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Fallen Charger",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, The, Maw"},
mounts={354353},
patch='90100',
mounttype='Ground',
model={98542},
description="\nThis mount has a chance to drop from Fallen Charger in The Maw.",
},[[
step
kill Fallen Charger##179460
|tip This boss will spawn at Tremeculum and run around The Maw until he reaches the entrance to Korthia where he will then despawn.
collect Fallen Charger's Reins##186659 |goto The Maw/0 29.8,15.7 |or
|tip It may take several attempts to get this.
It can also spawn around:
[16.27,49.49]
[27.9,62.9]
'|learnmount Fallen Charger##354353 |or
step
use the Fallen Charger's Reins##186659
Learn the "Fallen Charger" Mount |learnmount Fallen Charger##354353
step
_Congratulations!_
You Collected the "Fallen Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Fierce Razorwing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Death's, Advance, Supplies"},
mounts={354359},
patch='90100',
mounttype='Flying',
model={100255},
description="\nThis mount has a chance to drop from Death's Advance Supplies.",
},[[
step
Reach Exalted Reputation with Death's Advance |complete rep("Death's Advance") == Exalted |or
|tip Earn reputation for "Death's Advance" by completing daily quests, killing rares, and opening chests in Korthia.
'|learnmount Fierce Razorwing##354359 |or
step
label "Turnin_Supply_Quest"
talk Duchess Mynx##179321
turnin Supplies from Death's Advance##64012 |goto Korthia/0 63.31,23.33 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for Death's Advance.
|tip Earn reputation for "Death's Advance" by completing daily quests, killing rares, and opening chests in Korthia.
|tip This quest is repeatable.
'|learnmount Fierce Razorwing##354359 |or
step
use the Death's Advance Supplies##186650
collect Fierce Razorwing##186649
|tip It may take several attempts to get this.
'|complete itemcount(186650) == 0 and itemcount(186649) == 0 and not hasmount(354359) |next "Turnin_Supply_Quest" |or
'|learnmount Fierce Razorwing##354359 |or
step
use the Fierce Razorwing##186649
Learn the "Fierce Razorwing" Mount |learnmount Fierce Razorwing##354359
step
_Congratulations!_
You Collected the "Fierce Razorwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Foresworn Aquilon",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Korthia"},
mounts={353877},
patch='90100',
mounttype='Flying',
model={99106},
description="\nThis mount is rewarded to you after completing the quest Intact Aquilon Core while aligned with the Kyrian covenant.",
},[[
step
Join the Kyrian Covenant |complete  Kyrian |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Foresworn Aquilon##353877 |or
step
talk Popo##180028
Tell her _"I will protect you while you deliver supplies."_
|tip This rare event can only be activated by characters aligned with the Kyrian covenant.
Gain the Popo's Potion Buff |havebuff spell:356192 |goto Korthia/0 56.88,32.38 |or
'|learnmount Foresworn Aquilon##353877 |or
step
kill Wild Worldcracker##180032
|tip Follow Popo to this location.
collect Intact Aquilon Core##187282 |goto 47.0,35.5 |or
|tip This can only be collected by a character aligned with the Kyrian covenant.
|tip It may take several attempts to get this.
'|learnmount Foresworn Aquilon##353877 |or
step
Click the Quest Accept Box
accept Intact Aquilon Core##64529 |or
'|learnmount Foresworn Aquilon##353877 |or
step
talk Deos##180339
turnin Intact Aquilon Core##64529 |goto 62.0,24.8 |or
'|learnmount Foresworn Aquilon##353877 |or
step
collect Foresworn Aquilon##186483 |or
'|learnmount Foresworn Aquilon##353877 |or
step
use the Foresworn Aquilon##186483
Learn the "Foresworn Aquilon" Mount |learnmount Foresworn Aquilon##353877
step
_Congratulations!_
You Collected the "Foresworn Aquilon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Garnet Razorwing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Korthia"},
mounts={354360},
patch='90100',
mounttype='Flying',
model={100253},
description="\nThis mount has a chance to drop from Reliwik the Defiant in Korthia.",
},[[
step
click Uncorrupted Razorwing Egg##369435
kill Reliwik the Defiant##180160
|tip It will fly down to you after you click the "Uncorrupted Razorwing Egg".
collect Garnet Razorwing##186652 |goto Korthia/0 56.27,66.13 |or
|tip It may take several attempts to get this.
'|learnmount Garnet Razorwing##354360 |or
step
use the Garnet Razorwing##186652
Learn the "Garnet Razorwing" Mount |learnmount Garnet Razorwing##354360
step
_Congratulations!_
You Collected the "Garnet Razorwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Hand of Bahmehthra",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Tomentors, Of, Torghast"},
mounts={352309},
patch='90100',
mounttype='Ground',
model={101220},
description="\nThis mount can be created after collecting 200 Bahmeht Chain Links during the Tormentors of Torghast event.",
},[[
step
Kill enemies around this area
|tip The "Tormentors of Torghast" event will spawn every hour in a random location in The Maw.
|tip Look for the POI icon on your map and head towards that area.
|tip Each "Tormentors of Torghast" event will spawn 3 elite lieutenants and 1 boss to kill.
collect 200 Bahmeht Chain Link##185974 |or
|tip The Lieutenants have a chance to drop 1 "Bahmeht Chain Link".
|tip The boss will always drop 1 "Bahmeht Chain Link".
|tip This will take a while to get.
'|learnmount Hand of Bahmeht##352309 |or
step
use the Bahmeht Chain Link##185974
collect Chain of Bahmehthra##185973 |or
'|learnmount Hand of Bahmeht##352309 |or
step
use the Chain of Bahmehthra##185973
Learn the "Hand of Bahmeht" Mount |learnmount Hand of Bahmeht##352309
step
_Congratulations!_
You Collected the "Hand of Bahmeht" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Lord of the Corpseflies",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Korthia"},
mounts={347250},
patch='90100',
mounttype='Flying',
model={100238},
description="\nThis mount has a chance to drop from Fleshwing in Korthia for characters aligned with the Necrolord covenant.",
},[[
step
Join the Necrolord Covenant |complete  Necrolord |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Lord of the Corpseflies##347250 |or
step
talk Cadaverous##180079
|tip He has a chance to spawn here each day.
|tip You have to be aligned with the Necrolord covenant to start this event.
kill Fleshwing##180042
|tip Kill enemies in waves around this area.
|tip He will eventually fly down to this location.
collect Lord of the Corpseflies##186489 |goto Korthia/0 59.87,43.49 |or
|tip This can only be collectd if you are aligned with the Necrolord covenant.
|tip It may take several attempts to get this.
'|learnmount Lord of the Corpseflies##347250 |or
step
use the Lord of the Corpseflies##186489
Learn the "Lord of the Corpseflies" Mount |learnmount Lord of the Corpseflies##347250
step
_Congratulations!_
You Collected the "Lord of the Corpseflies" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Maldraxxian Corpsefly",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Necrolord"},
mounts={353883},
patch='90100',
mounttype='Flying',
model={100240},
description="\nThis mount is rewarded to you after reaching Renown level 45 as a member of the Necrolord covenant.",
},[[
step
Join the Necrolord Covenant |complete  Necrolord |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Maldraxxian Corpsefly##353883 |or
step
Reach Renown Level 45 |complete covenantrenown() >= 45 |or
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
'|learnmount Maldraxxian Corpsefly##353883 |or
step
collect Maldraxxian Corpsefly Harness##186487 |or
'|learnmount Maldraxxian Corpsefly##353883 |or
step
use the Maldraxxian Corpsefly Harness##186487
Learn the "Maldraxxian Corpsefly" Mount |learnmount Maldraxxian Corpsefly##353883
step
_Congratulations!_
You Collected the "Maldraxxian Corpsefly" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Obsidian Gravewing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Revendreth"},
mounts={353866},
patch='90100',
mounttype='Flying',
model={100109},
description="\nThis mount can be purchased for 7,500 Reservoir Anima from Chachi the Artiste in Revendreth.",
},[[
step
Collect #7500# Reservoir Anima |complete curcount(1813) >= 7500 |or
|tip Collect Resevoir Anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
'|learnmount Obsidian Gravewing##353866 |or
step
talk Chachi the Artiste##174710
|tip Inside the building.
buy Obsidian Gravewing##186478 |goto Sinfall/0 54.10,24.63 |or
|tip This costs 7,500 Reservoir Anima.
'|learnmount Obsidian Gravewing##353866 |or
step
collect Obsidian Gravewing##186478 |or
'|learnmount Obsidian Gravewing##353866 |or
step
use the Obsidian Gravewing##186478
Learn the "Obsidian Gravewing" Mount |learnmount Obsidian Gravewing##353866
step
_Congratulations!_
You Collected the "Obsidian Gravewing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Regal Corpsefly",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Maldraxxus"},
mounts={353884},
patch='90100',
mounttype='Flying',
model={100241},
description="\nThis mount can be purchased for 7,500 Reservoir Anima from Su Zettai in Maldraxxus.",
},[[
step
Collect #7500# Reservoir Anima |complete curcount(1813) >= 7500 |or
|tip Collect Resevoir Anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
'|learnmount Regal Corpsefly##353884 |or
step
talk Su Zettai##172176
|tip Inside the building.
buy Regal Corpsefly Harness##186488 |goto Seat of the Primus/0 52.21,40.74 |or
|tip This costs 7,500 Reservoir Anima.
'|learnmount Regal Corpsefly##353884 |or
step
collect Regal Corpsefly Harness##186488 |or
'|learnmount Regal Corpsefly##353884 |or
step
use the Regal Corpsefly Harness##186488
Learn the "Regal Corpsefly" Mount |learnmount Regal Corpsefly##353884
step
_Congratulations!_
You Collected the "Regal Corpsefly" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Sanctum Gloomcharger",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Sanctum, Of, Domination"},
mounts={354351},
patch='90100',
mounttype='Ground',
model={98540},
description="\nThis mount has a chance to drop from Kyra in the Sanctum of Domination raid.",
},[[
step
kill Kyra##178738
|tip Use the "Sanctum of Domination" raid guide to accomplish this.
collect Sanctum Gloomcharger's Reins##186656 |or
|tip It may take several attempts to get this.
'|learnmount Sanctum Gloomcharger##354351 |or
step
use the Sanctum Gloomcharger's Reins##186656
Learn the "Sanctum Gloomcharger" Mount |learnmount Sanctum Gloomcharger##354351
step
_Congratulations!_
You Collected the "Sanctum Gloomcharger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Sinfall Gravewing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Venthyr"},
mounts={353872},
patch='90100',
mounttype='Flying',
model={100110},
description="\nThis mount is rewarded to you after reaching Renown level 45 as a member of the Venthry covenant.",
},[[
step
Join the Venthyr Covenant |complete  Venthyr |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Sinfall Gravewing##353872 |or
step
Reach Renown Level 45 |complete covenantrenown() >= 45 |or
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
'|learnmount Sinfall Gravewing##353872 |or
step
collect Sinfall Gravewing##186476 |or
'|learnmount Sinfall Gravewing##353872 |or
step
use the Sinfall Gravewing##186476
Learn the "Sinfall Gravewing" Mount |learnmount Sinfall Gravewing##353872
step
_Congratulations!_
You Collected the "Sinfall Gravewing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Soaring Razorwing",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Death's, Advance"},
mounts={347251},
patch='90100',
mounttype='Flying',
model={100251},
description="\nThis mount can be purchased for 5,000 Cataloged Research after reaching Tier 6 reputation with The Archivists' Codex.",
},[[
step
Reach Tier 6 Reputation with The Archivists' Codex |complete rep("The Archivists' Codex") == Tier6 |or
|tip Use the "Archivists' of Korthia Questline" leveling guide to accomplish this.
'|learnmount Soaring Razorwing##347251 |or
step
Collect #5000# Cataloged Research |complete curcount(1931) >= 5000 |or
|tip Collect Cataloged Research by completing daily quests, killing rares, and opening treasures in Korthia.
'|learnmount Soaring Razorwing##347251 |or
step
Enter the cave |goto Korthia/0 61.63,21.71 < 30 |walk
talk Archivist Roh-Suir##178257
|tip Inside the cave.
buy Soaring Razorwing##186648 |goto 62.78,22.61 |or
|tip This costs 5,000 Cataloged Research.
'|learnmount Soaring Razorwing##347251 |or
step
use the Soaring Razorwing##186648
Learn the "Soaring Razorwing" Mount |learnmount Soaring Razorwing##347251
step
_Congratulations!_
You Collected the "Soaring Razorwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Soulbound Gloomcharger",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Ve'nari"},
mounts={354352},
patch='90100',
mounttype='Ground',
model={98541},
description="\nThis mount has a chance to drop from Mysterious Gift from Ve'nari in The Maw.",
},[[
step
Reach Appreciative Reputation with Ve'nari |complete rep("Ve'nari") == Appreciative |or
|tip You can earn reputation by completing dailies, killing rares, and opening chests in The Maw.
|tip Use the "Ve'nari Daily Quests" guide to accomplish this.
'|learnmount Soulbound Gloomcharger##354352 |or
step
label "Turnin_Supply_Quest"
talk Ve'nari##162804
turnin Mysterious Gifts from Ve'nari##64267 |goto The Maw/0 46.91,41.69 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for Ve'nari.
|tip You can earn reputation by completing dailies, killing rares, and opening chests in The Maw.
|tip This quest is repeatable.
'|learnmount Soulbound Gloomcharger##354352 |or
step
use the Mysterious Gift from Ve'nari##187029
collect Soulbound Gloomcharger's Reins##186657 |or
|tip It may take several attempts to get this.
'|complete itemcount(187029) == 0 and itemcount(186657) == 0 and not hasmount(354352) |next "Turnin_Supply_Quest" |or
'|learnmount Soulbound Gloomcharger##354352 |or
step
use the Soulbound Gloomcharger's Reins##186657
Learn the "Soulbound Gloomcharger" Mount |learnmount Soulbound Gloomcharger##354352
step
_Congratulations!_
You Collected the "Soulbound Gloomcharger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Summer Wilderling",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Night, Fae"},
mounts={353859},
patch='90100',
mounttype='Flying',
model={101002},
description="\nThis mount is rewarded to you after completing the quest Wilderling Saddle in Korthia as a member of the Night Fae covenant.",
},[[
step
Join the Night Fae Covenant |complete  NightFae |or
|tip Use the "Shadowlands Intro & Main Story Questline" leveling guide to accomplish this.
'|learnmount Summer Wilderling##353859 |or
step
talk Karras##180005
|tip He will start the rare event "Escaped Wilderling".
|tip You will see a gold star on your mini map when this event is active.
kill Escaped Wilderling##180014 |goto Korthia/0 35.73,32.22 |or
'|learnmount Summer Wilderling##353859 |or
step
click Escaped Wilderling##180014
Begin Riding the Escaped Wilderling |invehicle |c |goto 35.73,32.22 |or
'|learnmount Summer Wilderling##353859 |or
step
Ride the Escaped Wilderling
|tip Use the "Hold on Tight" button that appears on the skillbar whenever the "Escaped Wilderling" gains a burst of speed.
collect Wilderling Saddle##187281 |or
|tip This can only be collected by a character aligned with the Night Fae covenant.
|tip This has a chance to drop after you finish riding the "Escaped Wilderling".
|tip It may take several attempts to get this.
'|learnmount Summer Wilderling##353859 |or
step
Click the Quest Accept Box
accept Wilderling Saddle##64528 |or
'|learnmount Summer Wilderling##353859 |or
step
talk Reldorn##180340
turnin Wilderling Saddle##64528 |goto 60.6,21.2 |or
'|learnmount Summer Wilderling##353859 |or
step
collect Summer Wilderling Harness##186492 |or
'|learnmount Summer Wilderling##353859 |or
step
use the Summer Wilderling Harness##186492
Learn the "Summer Wilderling" Mount |learnmount Summer Wilderling##353859
step
_Congratulations!_
You Collected the "Summer Wilderling" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Tamed Mauler",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, Supplies, Of, The, Archivists', Codex"},
mounts={347536},
patch='90100',
mounttype='Ground',
model={100367},
description="\nThis mount has a chance to drop from Supplies of the Archivists' Codex in Korthia.",
},[[
step
Reach Tier 6 Reputation with The Archivists' Codex |complete rep("The Archivists' Codex") == Tier6 |or
|tip Use the "Archivists' of Korthia Questline" leveling guide to accomplish this.
'|learnmount Tamed Mauler##347536 |or
step
label "Turnin_Supply_Quest"
Enter the cave |goto Korthia/0 61.63,21.71 < 30 |walk
talk Archivist Roh-Suir##178257
|tip Inside the cave.
turnin Supplies from The Archivists' Codex##64266 |goto 62.78,22.61 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for The Archivists' Codex.
|tip You can earn reputation by completing dailies, killing rares, and opening treasures in Korthia.
|tip This quest is repeatable.
'|learnmount Tamed Mauler##347536 |or
step
use the Supplies of the Archivists' Codex##187028
collect Tamed Mauler Harness##186641 |or
|tip It may take several attempts to get this.
'|complete itemcount(187028) == 0 and itemcount(186641) == 0 and not hasmount(347536) |next "Turnin_Supply_Quest" |or
'|learnmount Tamed Mauler##347536 |or
step
use the Tamed Mauler Harness##186641
Learn the "Tamed Mauler" Mount |learnmount Tamed Mauler##347536
step
_Congratulations!_
You Collected the "Tamed Mauler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Undying Darkhound",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, War, Chest, Of, The, Undying, Army"},
mounts={352742},
patch='90100',
mounttype='Ground',
model={98225},
description="\nThis mount has a chance to drop from War Chest of the Undying Army in The Maw.",
},[[
step
Complete Necrolord Assaults in The Maw
|tip Use the "Covenant Assaults" leveling guide to accomplish this.
collect War Chest of the Undying Army##185992 |or
'|learnmount Undying Darkhound##352742 |or
step
use the War Chest of the Undying Army##185992
collect Undying Darkhound's Harness##186103 |or
|tip It may take several attempts to get this.
'|learnmount Undying Darkhound##352742 |or
step
use the Undying Darkhound's Harness##186103
Learn the "Undying Darkhound" Mount |learnmount Undying Darkhound##352742
step
_Congratulations!_
You Collected the "Undying Darkhound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Vengeance",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount, Sanctum, Of, Domination"},
mounts={351195},
patch='90100',
mounttype='Flying',
model={100912},
description="\nThis mount has a chance to drop from Sylvanas Windrunner in the Sanctum of Domination Mythic raid.",
},[[
step
kill Sylvanas Windrunner##179687
|tip Use the "Sanctum of Domination" raid guide to help you accomplish this.
collect Vengeance's Reins##186642 |or
|tip This will only drop on Mythic difficulty.
|tip It may take several attempts to get this.
'|learnmount Vengeance##351195 |or
step
use the Vengeance's Reins##186642
Learn the "Vengeance" Mount |learnmount Vengeance##351195
step
_Congratulations!_
You Collected the "Vengeance" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Vicious War Gorm (Alliance)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, PVP, Alliance"},
mounts={348770},
patch='90100',
mounttype='Ground',
model={100579},
description="\nThis mount is a Shadowlands Season 2 Rated Arena and Rated Battleground seasonal reward for Alliance characters.",
},[[
step
Participate in Rated Arena or Rated Battleground
collect Vicious War Gorm##186178 |or
|tip Participate with an Alliance character during the Shadowlands Season 2 Rated PVP season to obtain this mount.
'|learnmount Vicious War Gorm##348770 |or
step
use the Vicious War Gorm##186178
Learn the "Vicious War Gorm" Mount |learnmount Vicious War Gorm##348770
step
_Congratulations!_
You Collected the "Vicious War Gorm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Vicious War Gorm (Horde)",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, PVP, Horde"},
mounts={348769},
patch='90100',
mounttype='Ground',
model={100580},
description="\nThis mount is a Shadowlands Season 2 Rated Arena and Rated Battleground seasonal reward for Horde characters.",
},[[
step
Participate in Rated Arena or Rated Battleground
collect Vicious War Gorm##186179 |or
|tip Participate with a Horde character during the Shadowlands Season 2 Rated PVP season to obtain this mount.
'|learnmount Vicious War Gorm##348769 |or
step
use the Vicious War Gorm##186179
Learn the "Vicious War Gorm" Mount |learnmount Vicious War Gorm##348769
step
_Congratulations!_
You Collected the "Vicious War Gorm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Wandering Arden Doe",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Flying, Mount"},
mounts={354362},
patch='90100',
mounttype='Flying',
model={94296},
description="\nThis mount is rewarded to you after completing the quest Maelie, The Wanderer.",
},[[
step
click Maelie the Wanderer##179912
|tip She looks like a reddish-brown unicorn with a silver mane and purple horn.
|tip Each day "Maelie The Wanderer" will spawn in a random location, mostly along cliffs and behind big tree roots all around Korthia.
|tip Tinybell will provide you with a quest after you have successfully located and returned "Maelie the Wanderer" back to her 6 times.
|tip "Maelie the Wanderer" can only be rescued once a day.
Click Here When You Return Maelie the Wanderer Back Home |confirm |goto Korthia/0 49.4,42.2 |or
You can also find it around:
[41.0,39.8]
[35.8,46.4]
[30.0,55.6]
[38.4,31.4]
[43.2,31.4]
[50.4,23.2]
[60.0,15.2]
[62.4,49.8]
'|learnmount Wandering Arden Doe##354362 |or
step
click Maelie the Wanderer##179912
|tip She looks like a reddish-brown unicorn with a silver mane and purple horn.
|tip Each day "Maelie The Wanderer" will spawn in a random location, mostly along cliffs and behind big tree roots all around Korthia.
|tip Tinybell will provide you with a quest after you have successfully located and returned "Maelie the Wanderer" back to her 6 times.
|tip "Maelie the Wanderer" can only be rescued once a day.
Click Here When You Return Maelie the Wanderer Back Home Two Times |confirm |goto 49.4,42.2 |or
You can also find it around:
[41.0,39.8]
[35.8,46.4]
[30.0,55.6]
[38.4,31.4]
[43.2,31.4]
[50.4,23.2]
[60.0,15.2]
[62.4,49.8]
'|learnmount Wandering Arden Doe##354362 |or
step
click Maelie the Wanderer##179912
|tip She looks like a reddish-brown unicorn with a silver mane and purple horn.
|tip Each day "Maelie The Wanderer" will spawn in a random location, mostly along cliffs and behind big tree roots all around Korthia.
|tip Tinybell will provide you with a quest after you have successfully located and returned "Maelie the Wanderer" back to her 6 times.
|tip "Maelie the Wanderer" can only be rescued once a day.
Click Here When You Return Maelie the Wanderer Back Home Three Times |confirm |goto 49.4,42.2 |or
You can also find it around:
[41.0,39.8]
[35.8,46.4]
[30.0,55.6]
[38.4,31.4]
[43.2,31.4]
[50.4,23.2]
[60.0,15.2]
[62.4,49.8]
'|learnmount Wandering Arden Doe##354362 |or
step
click Maelie the Wanderer##179912
|tip She looks like a reddish-brown unicorn with a silver mane and purple horn.
|tip Each day "Maelie The Wanderer" will spawn in a random location, mostly along cliffs and behind big tree roots all around Korthia.
|tip Tinybell will provide you with a quest after you have successfully located and returned "Maelie the Wanderer" back to her 6 times.
|tip "Maelie the Wanderer" can only be rescued once a day.
Click Here When You Return Maelie the Wanderer Back Home Four Times |confirm |goto 49.4,42.2 |or
You can also find it around:
[41.0,39.8]
[35.8,46.4]
[30.0,55.6]
[38.4,31.4]
[43.2,31.4]
[50.4,23.2]
[60.0,15.2]
[62.4,49.8]
'|learnmount Wandering Arden Doe##354362 |or
step
click Maelie the Wanderer##179912
|tip She looks like a reddish-brown unicorn with a silver mane and purple horn.
|tip Each day "Maelie The Wanderer" will spawn in a random location, mostly along cliffs and behind big tree roots all around Korthia.
|tip Tinybell will provide you with a quest after you have successfully located and returned "Maelie the Wanderer" back to her 6 times.
|tip "Maelie the Wanderer" can only be rescued once a day.
Click Here When You Return Maelie the Wanderer Back Home Five Times |confirm |goto 49.4,42.2 |or
You can also find it around:
[41.0,39.8]
[35.8,46.4]
[30.0,55.6]
[38.4,31.4]
[43.2,31.4]
[50.4,23.2]
[60.0,15.2]
[62.4,49.8]
'|learnmount Wandering Arden Doe##354362 |or
step
click Maelie the Wanderer##179912
|tip She looks like a reddish-brown unicorn with a silver mane and purple horn.
|tip Each day "Maelie The Wanderer" will spawn in a random location, mostly along cliffs and behind big tree roots all around Korthia.
|tip Tinybell will provide you with a quest after you have successfully located and returned "Maelie the Wanderer" back to her 6 times.
|tip "Maelie the Wanderer" can only be rescued once a day.
Click Here When You Return Maelie the Wanderer Back Home Six Times |confirm |goto 49.4,42.2 |or
You can also find it around:
[41.0,39.8]
[35.8,46.4]
[30.0,55.6]
[38.4,31.4]
[43.2,31.4]
[50.4,23.2]
[60.0,15.2]
[62.4,49.8]
'|learnmount Wandering Arden Doe##354362 |or
step
talk Tinybell##179930
accept Maelie, The Wanderer##64292 |goto 60.6,21.8 |or
turnin Maelie, The Wanderer##64292 |goto 60.6,21.8 |or
'|learnmount Wandering Arden Doe##354362 |or
step
collect Reins of the Wanderer##186643 |or
'|learnmount Wandering Arden Doe##354362 |or
step
use the Reins of the Wanderer##186643
Learn the "Wandering Arden Doe" Mount |learnmount Wandering Arden Doe##354362
step
_Congratulations!_
You Collected the "Wandering Arden Doe" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Wild Hunt Legsplitter",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Ground, Mount, War, Chest, Of, The, Wild, Hunt"},
mounts={352441},
patch='90100',
mounttype='Ground',
model={94346},
description="\nThis mount has a chance to drop from War Chest of the Wild Hunt in The Maw.",
},[[
step
Complete Night Fae Assaults in The Maw
|tip Use the "Covenant Assaults" guide to help you accomplish this.
collect War Chest of the Wild Hunt##185991 |or
'|learnmount Wild Hunt Legsplitter##352441 |or
step
use the War Chest of the Wild Hunt##185991
collect Legsplitter War Harness##186000 |or
|tip It may take several attempts to get this.
'|learnmount Wild Hunt Legsplitter##352441 |or
step
use the Legsplitter War Harness##186000
Learn the "Wild Hunt Legsplitter" Mount |learnmount Wild Hunt Legsplitter##352441
step
_Congratulations!_
You Collected the "Wild Hunt Legsplitter" Mount.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Patient Bufonid",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={363701},
patch='90200',
mounttype='Ground',
model={104886},
description="\nThis guide will walk you through collecting the \"Patient Bufonid\" mount.",
},[[
step
Complete "The Forces Gather" Quest |complete completedq(64958) |or
|tip This is the final quest of the first chapter of the Zereth Mortis campaign.
Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis" |or
step
talk Avna##180950
accept The Burrowed Bufonid##65727 |goto Zereth Mortis/0 34.34,65.89
step
Kill Vespoid enemies around this area
collect 15 Vespoid Honey##190852 |q 65727/1 |goto 63.05,58.59
step
talk Avna##180950
turnin The Burrowed Bufonid##65727 |goto 34.34,65.89
step
collect 30 Tenebrous Ribs##172053 |q 65725 |future
step
Wait for the Next Quest to Become Available |complete not completedq(65724) |q 65725 |future
step
talk Avna##180950
accept The Burrowed Bufonid##65725 |goto 34.34,65.88
step
collect 200 Shrouded Cloth##173202 |q 65726 |future
step
Wait for the Next Quest to Become Available |complete not completedq(65724) |q 65726 |future
step
talk Avna##180950
accept The Burrowed Bufonid##65726 |goto 34.34,65.88
step
collect 10 Elysian Thade##173037 |q 65728 |future
step
Wait for the Next Quest to Become Available |complete not completedq(65724) |q 65728 |future
step
talk Avna##180950
accept The Burrowed Bufonid##65728 |goto 34.34,65.89
step
collect 5 Protoflesh##187704 |q 65729 |future
step
Wait for the Next Quest to Become Available |complete not completedq(65724) |q 65729 |future
step
talk Avna##180950
accept The Burrowed Bufonid##65729 |goto 34.34,65.88
step
talk Mai Toa##185748
buy 5 Catalyzed Apple Pie##190880 |goto 58.55,49.81 |q 65730 |future
step
Wait for the Next Quest to Become Available |complete not completedq(65724) |q 65730 |future
step
talk Avna##180950
accept The Burrowed Bufonid##65730 |goto 34.34,65.89
step
talk Fruit Vendor##180114
|tip Inside the Tazavesh, the Veiled Market dungeon under the tent on the left side before the stairs.
buy 1 Organic Melon##187171 |goto Tazavesh, the Veiled Market/7 86.37,47.60 |q 65731 |future
|tip These are limited to a quantity of 10.
|tip If they are not in stock, you will need to wait for the vendor to resupply.
step
Wait for the Next Quest to Become Available |complete not completedq(65724) |q 65731 |future
step
talk Avna##180950
accept The Burrowed Bufonid##65731 |goto Zereth Mortis/0 34.34,65.89
step
Watch the dialogue
talk Avna##180950
accept The Patient Bufonid##65732 |goto 34.34,65.88
step
talk Avna##180950
turnin The Patient Bufonid##65732 |goto 34.34,65.88
step
use the Patient Bufonid##188808
Learn the "Patient Bufonid" Mount |learnmount Patient Bufonid##363701
step
_Congratulations!_
You Collected the "Patient Bufonid" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Bronze Helicid",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359376},
patch='90200',
mounttype='Ground',
model={100125},
description="\nThis guide will walk you through collecting the \"Bronze Helicid\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Bronze Helicid"
step
use the Schematic: Bronze Helicid##189462
accept Schematic Reassimilation: Bronze Helicid##65385
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Bronze Helicid##65385 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Unalloyed_Bronze_Ingot"
stickystart "Collect_Helicid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Unalloyed_Bronze_Ingot"
collect Unalloyed Bronze Ingot##189179
|tip It is currently unknown where this item drops from.
step
label "Collect_Helicid_Lattice"
Kill Helicid enemies around these areas
collect Helicid Lattice##189145 |goto 57.33,82.92
You can find more around [55.88,69.41]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Bronze Helicid mount and click the "Create" button.
collect Bronze Helicid##187670 |goto 70.21,28.56
step
use the Bronze Helicid##187670
Learn the "Bronze Helicid" Mount |learn Bronze Helicid##359376
step
_Congratulations!_
You Collected the "Bronze Helicid" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Miscellaneous Mounts\\Deepstar Aurelid",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={342680},
patch='90200',
mounttype='Aquatic',
model={98891},
description="\nThis guide will walk you through collecting the \"Deepstar Aurelid\" mount.",
},[[
step
kill Hirukon##180978
|tip Use the POI rare guide for this mob by clicking its icon on the map.
collect Deepstar Polyp##187676 |goto Zereth Mortis/0 52.20,75.30
step
use Deepstar Polyp##187676
Learn the "Deepstar Aurelid" Mount |learnmount Deepstar Aurelid##342680
step
_Congratulations!_
You Collected the "Deepstar Aurelid" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Bronzewing Vespoid",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359364},
patch='90200',
mounttype='Flying',
model={98888},
description="\nThis guide will walk you through collecting the \"Bronzewing Vespoid\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Bronzewing Vespoid"
step
use the Schematic: Bronzewing Vespoid##189473
accept Schematic Reassimilation: Bronzewing Vespoid##65396
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Bronzewing Vespoid##65396 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Unalloyed_Bronze_Ingot"
stickystart "Collect_Vespoid_Lattice"
step
Kill enemies around this area
collect 350 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Unalloyed_Bronze_Ingot"
collect Unalloyed Bronze Ingot##189179
|tip It is currently unknown where this item drops from.
step
label "Collect_Vespoid_Lattice"
Kill Vespoid enemies around these areas
collect Vespoid Lattice##189154 |goto 51.47,42.07
You can find more around [62.93,57.96]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Bronzewing Vespoid mount and click the "Create" button.
collect Bronzewing Vespoid##187663 |goto 70.21,28.56
step
use the Bronzewing Vespoid##187663
Learn the "Bronzewing Vespoid" Mount |learn Bronzewing Vespoid##359364
step
_Congratulations!_
You Collected the "Bronzewing Vespoid" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Buzz",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
Mounts={365048},
patch='90200',
mounttype='Flying',
model={98889},
description="\nThis guide will walk you through collecting the \"Buzz\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Buzz"
step
use the Schematic: Buzz##189474
accept Schematic Reassimilation Buzz##65397
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Buzz##65397 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Protoform_Sentience_Crown"
stickystart "Collect_Vespoid_Lattice"
step
Kill enemies around this area
collect 500 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Protoform_Sentience_Crown"
Kill enemies around this area
|tip Dominated Jiro and Automa mobs have the best chance to drop these items.
|tip Look for Dominated, Subjugated, Bound, and Enchained enemies.
|tip Most of these enemies are elite.
collect Protoform Sentience Crown##189176 |goto 47.87,10.52
step
label "Collect_Vespoid_Lattice"
Kill Vespoid enemies around these areas
collect Vespoid Lattice##189154 |goto 51.47,42.07
You can find more around [62.93,57.96]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Buzz mount and click the "Create" button.
collect Buzz##187665 |goto 70.21,28.56
step
use the Buzz##187665
Learn the "Buzz" Mount |learn Buzz##359364
step
_Congratulations!_
You Collected the "Buzz" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Forged Spiteflyer",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359367},
patch='90200',
mounttype='Flying',
model={98890},
description="\nThis guide will walk you through collecting the \"Forged Spiteflyer\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Forged Spiteflyer"
step
use the Schematic: Forged Spiteflyer##189475
accept Schematic Reassimilation: Forged Spiteflyer##65398
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Forged Spiteflyer##65398 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Eternal_Ragepearl"
stickystart "Collect_Vespoid_Lattice"
step
Kill enemies around this area
collect 450 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Eternal_Ragepearl"
Kill Fettered enemies around this area |goto 62.22,25.36
|tip Fettered Gunners and Fettered Wardens can drop this item.
Kill Dominated enemies around this area |goto 47.87,10.52
|tip Dominated Worldbreakers and Dominated Runeshapers can drop this item.
collect Eternal Ragepearl##189173
step
label "Collect_Vespoid_Lattice"
Kill Vespoid enemies around these areas
collect Vespoid Lattice##189154 |goto 51.47,42.07
You can find more around [62.93,57.96]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Forged Spiteflyer mount and click the "Create" button.
collect Forged Spiteflyer##187664 |goto 70.21,28.56
step
use Forged Spiteflyer##187664
Learn the "Forged Spiteflyer" Mount |learnmount Forged Spiteflyer##359367
step
_Congratulations!_
You Collected the "Forged Spiteflyer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Adorned Vombata",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359232},
patch='90200',
mounttype='Ground',
model={98898},
description="\nThis guide will walk you through collecting the \"Adorned Vombata\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Adorned Vombata"
step
use the Schematic: Adorned Vombata##189478
accept Schematic Reassimilation: Adorned Vombata##65401
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Adorned Vombata##65401 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Vombata_Lattice"
step
Kill enemies around this area
collect 450 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Vombata_Lattice"
kill Mawtouched Bull##181359+
|tip You can also kill Vombata Matrons and Grasslands Vombata if you see them.
collect Vombata Lattice##189156 |goto 43.96,59.04
You can find more around [49.13,60.50]
step
Reach Revered Reputation with The Enlightened |complete rep("The Enlightened") >= Revered
|tip This can be accomplished by completing daily quests and world quests in Zereth Mortis.
|tip Rares and treasures have a chance to drop reputation tokens as well.
step
talk Vilo##182257
buy 1 Lens of Focused Intention##189174 |goto 34.76,64.13
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Adorned Vombata mount and click the "Create" button.
collect Adorned Vombata##187632 |goto 70.21,28.56
step
use the Adorned Vombata##187632
Learn the "Adorned Vombata" Mount |learn Adorned Vombata##359232
step
_Congratulations!_
You Collected the "Adorned Vombata" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Deathrunner",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359278},
patch='90200',
mounttype='Ground',
model={98882},
description="\nThis guide will walk you through collecting the \"Deathrunner\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Deathrunner"
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Deathrunner##65380 |goto Zereth Mortis/0 70.21,28.56
stickystart "Collect_Tools_of_Incomprehensible_Experimentation"
stickystart "Collect_Cervid_Lattice"
step
Kill enemies around this area
collect 450 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Tools_of_Incomprehensible_Experimentation"
collect Tools of Incomprehensible Experimentation##189178
|tip It is currently unknown where this item drops from.
step
label "Collect_Cervid_Lattice"
Kill Cervid enemies around these areas
|tip You can also kill Chitali the Eldest using the POI guide.
collect Cervid Lattice##187635 |goto 52.08,66.66
You can find more around:
[56.33,61.35]
[49.74,69.15]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Deathrunner mount and click the "Create" button.
collect Deathrunner##187638 |goto 70.21,28.56
step
use Deathrunner##187638
Learn the "Deathrunner" Mount |learnmount Deathrunner##359278
step
_Congratulations!_
You Collected the "Deathrunner" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Genesis Crawler",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359401},
patch='90200',
mounttype='Ground',
model={98883},
description="\nThis guide will walk you through collecting the \"Genesis Crawler\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Genesis Crawler"
step
use the Schematic: Genesis Crawler##189465
accept Schematic Reassimilation: Genesis Crawler##65388
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Genesis Crawler##65388 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Bauble_of_Pure_Innovation"
stickystart "Collect_Tarachnid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Bauble_of_Pure_Innovation"
click Bauble of Pure Innovation
|tip Inside the cave.
|tip It looks like a tiny floating crystal-shaped object radiating small sparkles inside Exiles Hollow.
|tip This item has a very long respawn timer.
collect Bauble of Pure Innovation##189171 |goto 34.49,49.72
step
label "Collect_Tarachnid_Lattice"
Enter the building |goto 55.93,32.65 < 10 |walk
Kill enemies around this area
|tip Inside the building.
|tip You can find more outside of the building.
collect Tarachnid Lattice##189152 |goto 54.09,34.93
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Genesis Crawler mount and click the "Create" button.
collect Genesis Crawler##187677 |goto 70.21,28.56
step
use Genesis Crawler##187677
Learn the "Genesis Crawler" Mount |learnmount Genesis Crawler##359401
step
_Congratulations!_
You Collected the "Genesis Crawler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Pale Regal Cervid",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={342671},
patch='90200',
mounttype='Ground',
model={98879},
description="\nThis guide will walk you through collecting the \"Pale Regal Cervid\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Pale Regal Cervid"
step
use the Schematic: Pale Regal Cervid##189455
accept Schematic Reassimilation: Pale Regal Cervid##65375
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Pale Regal Cervid##65375 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Protoform_Sentience_Crown"
stickystart "Collect_Cervid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Protoform_Sentience_Crown"
Kill enemies around this area
|tip Dominated Jiro and Automa mobs have the best chance to drop these items.
|tip Look for Dominated, Subjugated, Bound, and Enchained enemies.
|tip Most of these enemies are elite.
collect Protoform Sentience Crown##189176 |goto 47.87,10.52
step
label "Collect_Cervid_Lattice"
Kill Cervid enemies around these areas
|tip You can also kill Chitali the Eldest using the POI guide.
collect Cervid Lattice##187635 |goto 52.08,66.66
You can find more around:
[56.33,61.35]
[49.74,69.15]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Pale Regal Cervid mount and click the "Create" button.
collect Pale Regal Cervid##187639 |goto 70.21,28.56
step
use Pale Regal Cervid##187639
Learn the "Pale Regal Cervid" Mount |learnmount Pale Regal Cervid##342671
step
_Congratulations!_
You Collected the "Pale Regal Cervid" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Raptora Swooper",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359373},
patch='90200',
mounttype='Flying',
model={98878},
description="\nThis guide will walk you through collecting the \"Raptora Swooper\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Raptora Swooper"
step
use the Schematic: Raptora Swooper##189460
accept Schematic Reassimilation: Raptora Swooper##65383
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Raptora Swooper##65383 |goto Zereth Mortis/0 70.21,28.57
step
Kill enemies around this area
collect 450 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
stickystart "Collect_Eternal_Ragepearl"
stickystart "Collect_Raptora_Lattice"
step
label "Collect_Eternal_Ragepearl"
Kill Fettered enemies around this area |goto 62.22,25.36
|tip Fettered Gunners and Fettered Wardens can drop this item.
Kill Dominated enemies around this area |goto 47.87,10.52
|tip Dominated Worldbreakers and Dominated Runeshapers can drop this item.
collect Eternal Ragepearl##189173
step
label "Collect_Raptora_Lattice"
Kill Raptora enemies around Zereth Mortis
|tip You can find them flying all over the zone.
|tip Garudeon and Tahkwitz are rare mobs that drop it as well.
collect Raptora Lattice##189150
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Raptora Swooper mount and click the "Create" button.
collect Raptora Swooper##187668 |goto 70.21,28.56
step
use Raptora Swooper##187668
Learn the "Raptora Swooper" Mount |learnmount Raptora Swooper##359373
step
_Congratulations!_
You Collected the "Raptora Swooper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Russet Bufonid",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={363706},
patch='90200',
mounttype='Ground',
model={104888},
description="\nThis guide will walk you through collecting the \"Russet Bufonid\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Russet Bufonid"
step
use the Schematic: Russet Bufonid##189471
accept Schematic Reassimilation: Russet Bufonid##65394
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Russet Bufonid##65394 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Bufonid_Lattice"
step
Kill enemies around this area
collect 350 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Bufonid_Lattice"
Kill Bufonid enemies around these areas
|tip Accelerated and Overgrown Bufonids drop this, as well as the rare mob Gorkek.
collect Bufonid Lattice##187633 |goto 50.62,73.68
You can find more around:
[43.65,88.44]
[76.43,53.07]
[75.52,60.47]
[75.91,46.29]
step
Reach Revered Reputation with The Enlightened |complete rep("The Enlightened") >= Revered
|tip This can be accomplished by completing daily quests and world quests in Zereth Mortis.
|tip Rares and treasures have a chance to drop reputation tokens as well.
step
talk Vilo##182257
buy 1 Lens of Focused Intention##189174 |goto 34.76,64.13
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Russet Bufonid mount and click the "Create" button.
collect Russet Bufonid##188810 |goto 70.21,28.56
step
use Russet Bufonid##188810
Learn the "Russet Bufonid" Mount |learnmount Russet Bufonid##363706
step
_Congratulations!_
You Collected the "Russet Bufonid" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Sundered Zerethsteed",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359277},
patch='90200',
mounttype='Ground',
model={98880},
description="\nThis guide will walk you through collecting the \"Sundered Zerethsteed\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Sundered Zerethsteed"
step
use the Schematic: Sundered Zerethsteed##189456
accept Schematic Reassimilation: Sundered Zerethsteed##65379
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Sundered Zerethsteed##65379 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Mawforged_Bridle"
stickystart "Collect_Cervid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Mawforged_Bridle"
collect Mawforged Bridle##189175
|tip It is currently unknown where this item drops from.
step
label "Collect_Cervid_Lattice"
Kill Cervid enemies around these areas
|tip You can also kill Chitali the Eldest using the POI guide.
collect Cervid Lattice##187635 |goto 52.08,66.66
You can find more around:
[56.33,61.35]
[49.74,69.15]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Sundered Zerethsteed mount and click the "Create" button.
collect Reins of the Sundered Zerethsteed##187641 |goto 70.21,28.56
step
use Reins of the Sundered Zerethsteed##187641
Learn the "Sundered Zerethsteed" Mount |learnmount Sundered Zerethsteed##359277
step
_Congratulations!_
You Collected the "Sundered Zerethsteed" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Tarachnid Creeper",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={359402},
patch='90200',
mounttype='Ground',
model={98884},
description="\nThis guide will walk you through collecting the \"Tarachnid Creeper\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Tarachnid Creeper"
step
use the Schematic: Tarachnid Creeper##189466
accept Schematic Reassimilation: Tarachnid Creeper##65389
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Tarachnid Creeper##65389 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Revelation_Key"
stickystart "Collect_Tarachnid_Lattice"
step
Kill enemies around this area
collect 450 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Revelation_Key"
kill Protector of the First Ones##180746
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Revelation Key##189177 |goto 38.87,27.62
step
label "Collect_Tarachnid_Lattice"
Enter the building |goto 55.93,32.65 < 10 |walk
Kill enemies around this area
|tip Inside the building.
|tip You can find more outside of the building.
collect Tarachnid Lattice##189152 |goto 54.09,34.93
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Tarachnid Creeper mount and click the "Create" button.
collect Tarachnid Creeper##187678 |goto 70.21,28.56
step
use Tarachnid Creeper##187678
Learn the "Tarachnid Creeper" Mount |learnmount Tarachnid Creeper##359402
step
_Congratulations!_
You Collected the "Tarachnid Creeper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Vespoid Flutterer",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"Mount"},
mounts={342678},
patch='90200',
mounttype='Flying',
model={98887},
description="\nThis guide will walk you through collecting the \"Vespoid Flutterer\" mount.",
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Vespoid Flutterer"
step
use the Schematic: Vespoid Flutterer##189472
accept Schematic Reassimilation: Vespoid Flutterer##65395
step
talk Servitor Interface##181135
|tip Inside the building.
turnin Schematic Reassimilation: Vespoid Flutterer##65395 |goto Zereth Mortis/0 70.21,28.57
stickystart "Collect_Wind's_Infinite_Call"
stickystart "Collect_Vespoid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Wind's_Infinite_Call"
kill Enhanced Avian##182096+
|tip You can find them all over The Sepulcher of the First Ones isle.
collect Wind's Infinite Call##189180 |goto 76.46,53.35
step
label "Collect_Vespoid_Lattice"
Kill Vespoid enemies around these areas
collect Vespoid Lattice##189154 |goto 51.47,42.07
You can find more around [62.93,57.96]
step
talk Servitor Interface##181135
|tip Inside the building.
Choose _"Begin Protoform Synthesis."_
|tip Select the Vespoid Flutterer mount and click the "Create" button.
collect Vespoid Flutterer##187660 |goto 70.21,28.56
step
use Vespoid Flutterer##187660
Learn the "Vespoid Flutterer" Mount |learnmount Vespoid Flutterer##342678
step
_Congratulations!_
You Collected the "Vespoid Flutterer" Mount.
]])
ZGV.BETAEND()
