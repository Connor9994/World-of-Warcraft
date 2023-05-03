local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCSHADOW") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Glimmerpool Hatchling",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the ponds and rivers in Northwest Bastion.",
keywords={"Aquatic","Bastion"},
pet=2930,
},[[
step
clicknpc Glimmerpool Hatchling##171670
|tip You can find them near the river around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Glimmerpool Hatchling" Battle Pet |learnpet Glimmerpool Hatchling##2930 |goto Bastion/0 45.82,34.27
You can find more around [44.93,29.78]
step
_Congratulations!_
You Collected the "Glimmerpool Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Silvershell Snapper",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Dionae in Bastion.",
keywords={"Aquatic","Bastion"},
pet=2932,
},[[
step
Follow the path down |goto Bastion/0 44.40,48.56 < 30 |walk
Continue following the path |goto 42.81,46.91 < 30 |walk
Enter the cave |goto 40.97,47.41 < 30 |walk
kill Dionae##163460
|tip Inside the cave.
|tip When she flies in to the airn click on the 4 Anima Spears around the room to break her shield and bring her to the ground.
click Stewart's Stewpendous Stew##344588
|tip It looks like a brown pot behind Stewart.
collect Silvershell Snapper##180856 |goto 41.41,49.13 |or
|tip This has a 5% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Silvershell Snapper##2932 |or
step
use the Silvershell Snapper##180856
Learn the "Silvershell Snapper" Battle Pet |learnpet Silvershell Snapper##2932
step
_Congratulations!_
You Collected the "Silvershell Snapper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bleak Skitterer",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The House of Rituals Maldraxxus.",
keywords={"Beast","Maldraxxus"},
pet=3050,
},[[
step
clicknpc Bleak Skitterer##175022
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Bleak Skitterer" Battle Pet |learnpet Bleak Skitterer##3050 |goto Maldraxxus/0 63.31,35.11
step
_Congratulations!_
You Collected the "Bleak Skitterer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bloodfeaster Spiderling",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained several different ways depending on which covenant you are aligned with.",
keywords={"Beast","Venthyr","Night","Fae","Kyrian","Necrolord"},
pet=2965,
},[[
step
Upgrade The Ember Court to Tier 3 |complete covenantfeature("Covenant Unique") >= 3 |only if  Venthyr
Upgrade the Queen's Conservatory to Tier 2 |complete covenantfeature("Covenant Unique") >= 2 |only if  NightFae
Upgrade the Path of Ascension to Tier 1 |complete covenantfeature("Covenant Unique") >=1 |only if  Kyrian
Upgrade the Abomination Factory to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Necrolord
|tip Use the "Venthyr Ember Court" leveling guides to accomplish this. |only if  Venthyr
|tip Use the "Night Fae Queen's Conservatory" guide to accomplish this. |only if  NightFae
|tip Use the "Kyrian Path of Ascension" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolord Abomination Factory" leveling guide to accomplish this. |only if  Necrolord
step
click Rendle and Cudgelface's Extravagant Tribute##356744
|tip This is awarded at the end of Ember Court when Rendle and Cudgelface are elated.
|tip Use the "Venthyr Ember Court" guides to help you accomplish this.
collect Bloodfeaster Spiderling##181315 |or
|tip This has a 61% chance to drop from "Rendle and Cudgelface's Extravagant Tribute."
|tip It may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Venthyr
step
click Queen's Conservatory Cache##350978+
|tip Use 4 "Wildseed Root Grain" on the 4 "Anima Catalyst Plots", then use "Divine Prideful Spirit" on "Wildseed of Regrowth" with the 4 "Anima Catalyst Plots" nearby.
|tip Wait 7 days for incubation then loot the "Queen's Conservatory Cache".
collect Bloodfeaster Spiderling##181315 |or
|tip This has a .2% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  NightFae
step
Earn the Itsy Bitsy Fighters Achievement |complete achieved(14857) |or
|tip Use the "Itsy Bitsy Fighters" Achievement guide to accomplish this.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Kyrian
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Kyrian
step
talk Zeleskos##171981
|tip He is upstairs.
|tip This costs 250 Polished Pet Charms.
buy Bloodfeaster Spiderling##181315 |goto Elysian Hold/1 31.01,47.25 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Kyrian
step
Reach Honored Reputation with the Stitchmasters |complete rep("Stitchmasters") >= Honored |or
|tip Use the "Stitchmasters" reputation guide to accomplish this.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Necrolord
step
Collect #1000# Reservoir Anima |complete curcount(1813) >= 1000 |or
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Necrolord
step
talk Atticus##159238
|tip Use the "Atticus (Abomination)" guide to unlock this vendor if you already haven't.
|tip This costs 1000 Reservoir Anima.
buy Bloodfeaster Spiderling##181315 |goto Maldraxxus/0 55.27,68.32 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Bloodfeaster Spiderling##2965 |or
|only if  Necrolord
step
use the Bloodfeaster Spiderling##181315
Learn the "Bloodfeaster Spiderling" Battle Pet |learnpet Bloodfeaster Spiderling##2965
step
_Congratulations!_
You Collected the "Bloodfeaster Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Blushing Spiderling",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from Tomb Burster in Revendreth.",
keywords={"Beast","Revendreth"},
pet=2891,
},[[
step
kill Tomb Burster##155779
|tip Tomb Burster is is a rare spawn.
|tip Use the POI guides to accomplish this.
collect Blushing Spiderling##180584 |goto Revendreth/0 42.95,79.09 |or
|tip This has a 2.05% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Blushing Spiderling##2891 |or
step
use the Blushing Spiderling##180584
Learn the "Blushing Spiderling" Battle Pet |learnpet Blushing Spiderling##2891
step
_Congratulations!_
You Collected the "Blushing Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Boneweave Hatchling",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from Sister Chelicerae in Maldraxxus.",
keywords={"Beast","Maldraxxus"},
pet=2948,
},[[
step
kill Sister Chelicerae##159886
|tip Sister Chelicerae is is a rare spawn.
|tip Use the POI guides to accomplish this.
|tip She is inside the cave blocked by spiderwebs.
|tip Destroy the "Intricate Webbing" to release her.
collect Boneweave Hatchling##181172 |goto Maldraxxus/0 55.57,23.74 |or
|tip This has a 2.82% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Boneweave Hatchling##2948 |or
step
use the Boneweave Hatchling##181172
Learn the "Boneweave Hatchling" Battle Pet |learnpet Boneweave Hatchling##2948
step
_Congratulations!_
You Collected the "Boneweave Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Copperfur Kit",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Bastion.",
keywords={"Beast","Bastion"},
pet=2936,
},[[
step
clicknpc Copperfur Kit##171702
|tip They can be found underneath the trees around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Copperfur Kit" Battle Pet |learnpet Copperfur Kit##2936 |goto Bastion/0 60.50,41.24
They can also be found around [41.82,61.37]
step
_Congratulations!_
You Collected the "Copperfur Kit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Corpulent Bonetusk",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained several different ways depending on which covenant you are aligned with.",
keywords={"Beast","Venthyr","Night","Fae","Kyrian","Necrolord"},
pet=2945,
},[[
step
Upgrade The Ember Court to Tier 3 |complete covenantfeature("Covenant Unique") >= 3 |only if  Venthyr
Upgrade the Queen's Conservatory to Tier 2 |complete covenantfeature("Covenant Unique") >= 2 |only if  NightFae
Upgrade the Path of Ascension to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Kyrian
Upgrade the Abomination Factory to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Necrolord
|tip Use the "Venthyr Ember Court" leveling guides to accomplish this. |only if  Venthyr
|tip Use the "Night Fae Queen's Conservatory" guide to accomplish this. |only if  NightFae
|tip Use the "Kyrian Path of Ascension" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolord Abomination Factory" leveling guide to accomplish this. |only if  Necrolord
step
click Grandmaster Vole's Extravagant Tribute##356700
|tip This is awarded at the end of Ember Court at good friend reputation.
|tip Use the "Venthyr Ember Court" guides to help you accomplish this.
collect Corpulent Bonetusk##181168 |or
|tip This has a .2% chance to drop from "Grandmaster Vole's Extravagant Tribute."
|tip It may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Venthyr
step
click Queen's Conservatory Cache##350978+
|tip Use 4 "Wildseed Root Grain" on the 4 "Anima Catalyst Plots", then use "Divine Martial Spirit" on "Wildseed of Regrowth" with the 4 "Anima Catalyst Plots" nearby.
|tip Wait 7 days for incubation then loot the "Queen's Conservatory Cache".
collect Corpulent Bonetusk##181168 |or
|tip This has a .2% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  NightFae
step
Earn the "Itsy Bitsy Fighters" Achievement |complete achieved(14857) |or
|tip Use the "Itsy Bitsy Fighters" Achievement guide to accomplish this.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Kyrian
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Kyrian
step
talk Zeleskos##171981
|tip He is upstairs.
|tip This costs 250 Polished Pet Charms.
buy Corpulent Bonetusk##181168 |goto Elysian Hold/1 31.01,47.25 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Kyrian
step
Reach Honored Reputation with the Stitchmasters |complete rep("Stitchmasters") >= Honored |or
|tip Use the "Stitchmasters" reputation guide to accomplish this.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Necrolord
step
Collect #1000# Reservoir Anima |complete curcount(1813) >= 1000 |or
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Necrolord
step
talk Atticus##159238
|tip Use the "Atticus (Abomination)" guide to unlock this vendor if you already haven't.
|tip This costs 1000 Reservoir Anima.
buy Corpulent Bonetusk##181168 |goto Maldraxxus/0 55.27,68.32 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Corpulent Bonetusk##2945 |or
|only if  Necrolord
step
use the Corpulent Bonetusk##181168
Learn the "Corpulent Bonetusk" Battle Pet |learnpet Corpulent Bonetusk##2945
step
_Congratulations!_
You Collected the "Corpulent Bonetusk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dodger",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by finding and communicating the proper emote to Playful Vulpin 5 times in the wild around Ardenweald.",
keywords={"Beast","Ardenweald"},
pet=2905,
},[[
step
click Playful Vulpin##171206
|tip Playful Vulpin spawns at a random location near other Vulpin creatures all around Ardenweald.
|tip Once you interact with the Playful Vulpin it will do an action, you will then have to respond to it with the proper emote.
|tip If done correctly he will then despawn and you will have to search for him again.
|tip You will have to find him and respond with the proper emote 5 times in order to get the battle pet "Dodger".
|tip If the Playful Vulpin begins to dig curiously, respond with the /curious emote.
|tip If the Playful Vulpin wanders around and is unable to sit still, respond with the /sit emote.
|tip If the Playful Vulpin sings all alone, respond with the /sing emote.
|tip If the Playful Vulpin dances with joy, respond with the /dance emote.
|tip If the Playful Vulpin sits down lonely and sad, respond with the /pet emote.
collect Dodger##180645	|goto Ardenweald/0 51.82,55.31 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
You can also find it around:
[72.87,31.33]
[64.79,23.02]
[40.82,28.10]
[32.89,43.21]
[41.51,51.21]
[68.94,31.89]
'|learnpet Dodger##2905 |or
step
use Dodger##180645
Learn the "Dodger" Battle Pet |learnpet Dodger##2905
step
_Congratulations!_
You Collected the "Dodger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Goldenpaw Kit",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching revered reputation with The Ascended.",
keywords={"Beast","Bastion"},
pet=2934,
},[[
step
Reach Revered Reputation With The Ascended Faction |complete rep('The Ascended') >= Revered
|tip Use "The Ascended" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Goldenpaw Kit##2934 |or
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Goldenpaw Kit##2934 |or
step
talk Adjutant Nikos##160470
buy Goldenpaw Kit##180857 |goto Bastion/0 52.24,47.10 |region heros_rest |or
|tip This costs 250 Polished Pet Charms.
'|learnpet Goldenpaw Kit##2934 |or
step
use the Goldenpaw Kit##180857
Learn the "Goldenpaw Kit" Battle Pet |learnpet Goldenpaw Kit##2934
step
_Congratulations!_
You Collected the "Goldenpaw Kit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Indigo",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after defeating Alderyn and Myn'ir in the Kyrian Path of Ascension.",
keywords={"Beast","Kyrian"},
pet=2941,
},[[
step
Join the Kyrian Covenant |complete  Kyrian |or
|tip You must be a member of the Kyrian covenant to collect this pet.
'|learnpet Indigo##2941 |or
step
Upgrade the Path of Ascension to Tier 3 |complete covenantfeature("Covenant Unique") >= 3 |or
|tip Use the "Kyrian Path of Ascension" guide to accomplish this.
'|learnpet Indigo##2941 |or
step
kill Alderyn##173402
kill Myn'ir##173403
collect Indigo##180871 |or
|tip This pet is rewarded to you after defeating "Alderyn" and "Myn'ir" in the "Path of Ascension".
|tip Use the "Kyrian Path of Ascension" guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Indigo##2941 |or
step
use Indigo##180871
Learn the "Indigo" Battle Pet |learnpet Indigo##2941
step
_Congratulations!_
You Collected the "Indigo" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Jingles",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained from the Winter Veil Gift in Ironforge and Orgrimmar during the Feast of Winter Veil event.",
keywords={"Beast","Feast","Of","Winter","Veil"},
pet=2622,
},[[
step
Wait for the Feast of Winter Veil Event |complete isevent("Feast of Winter Veil") |or
|tip You can only claim this during the Feast of Winter Veil event which runs from December 25th to Janruary 1st.
'|learnpet Jingles##2622 |or
step
click Winter Veil Gift##178528
|tip It looks like a gift underneath the Winter Veil Tree in Ironforge and Orgrimmar.
|tip You can only claim this during the Feast of Winter Veil event which runs from December 25th to Janruary 1st.
collect Shaking Pet Carrier##178533 |goto Ironforge/0 33.81,66.14 |only if Alliance |or
collect Shaking Pet Carrier##178533 |goto Orgrimmar/1 49.54,78.02 |only if Horde |or
'|learnpet Jingles##2622 |or
step
use the Shaking Pet Carrier##178533
Learn the "Jingles" Battle Pet |learnpet Jingles##2622
step
_Congratulations!_
You Collected the "Jingles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Luminous Webspinner",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Cache of Eyes treasure inside of the Sightless Hold in Maldraxxus.",
keywords={"Beast","Maldraxxus"},
pet=2947,
},[[
step
Enter the building |goto Maldraxxus/0 54.06,12.25 < 30 |walk
click Cache of Eyes##352433
|tip These chests spawn randomly inside the building.
|tip Look at your mini map while inside the Sightless Hold to see if any "Cache of Eyes" chests have spawned.
collect Luminous Webspinner##181171 |goto Sightless Hold/0 58.31,53.84 |or
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Luminous Webspinner##2947 |or
step
use the Luminous Webspinner##181171
Learn the "Luminous Webspinner" Battle Pet |learnpet Luminous Webspinner##2947
step
_Congratulations!_
You Collected the "Luminous Webspinner" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Pernicious Bonetusk",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the Command Table Quest Ahnqat's Darkness.",
keywords={"Beast","Command","Table"},
pet=2946,
},[[
step
Unlock the Command Table Covenant Feature |complete covenantfeature("Command Table") >= 1 |or
|tip Use the "Kyrian Command Table" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolords Command Table" leveling guide to accomplish this. |only if  Necrolord
|tip Use the "Night Fae Command Table" leveling guide to accomplish this. |only if  NightFae
|tip Use the "Venthyr Command Table" leveling guide to accomplish this. |only if  Venthyr
'|learnpet Pernicious Bonetusk##2946 |or
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kyrian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
collect Pernicious Bonetusk##181170 |or
|tip Keep completing Command Table quests until the quest "Campaign: Ahnqat's Darkness" appears.
|tip You will receive this as a reward for compeleting this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Pernicious Bonetusk##2946 |or
step
use the Pernicious Bonetusk##181170
Learn the "Pernicious Bonetusk" Battle Pet |learnpet Pernicious Bonetusk##2946
step
_Congratulations!_
You Collected the "Pernicious Bonetusk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Purity",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Gift of Vesiphone chest in Bastion.",
keywords={"Beast","Bastion"},
pet=2935,
},[[
step
Reach Level 60 |ding 60 |or
|tip You must be level 60 in order to open the chest that contains this pet.
|tip Use the leveling guides to accomplish this.
'|learnpet Purity##2935 |or
step
click Bell of Purification##354094
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Click Here After Ringing the Bell of Purificaiton |confirm |goto Bastion/0 64.93,71.38 |or
'|learnpet Purity##2935 |or
step
Run Through the Waterfall |havebuff spell:332785 |goto 64.60,71.39 |or
'|learnpet Purity##2935 |or
step
click Gift of Vesiphone##353940
collect Purity##180859 |goto 64.85,71.15 |or
'|learnpet Purity##2935 |or
step
use Purity##180859
Learn the "Purity" Battle Pet |learnpet Purity##2935
step
_Congratulations!_
You Collected the "Purity" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Renny",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the quest Renny the Vulpin in Ardenweald.",
keywords={"Beast","Ardenweald"},
pet=2878,
},[[
step
talk Clarion Song##163774
accept That Darn Fox!##59087 |goto Ardenweald/0 50.91,33.79
step
talk Clarion Song##163774
Tell her _"Grant me a boon to catch Renny the fox."_
Gain the Fox Hunting Buff |havebuff spell:318582 |q 59120 |future
step
clicknpc Renny##163826
|tip Keep clicking on Renny until you catch him, he will then teleport you to Bastion.
Catch Renny! |q 59087/2 |goto 50.41,33.41
step
clicknpc Renny##163797
|tip Keep clicking on Renny until you catch him, he will then teleport you to Maldraxxus.
Recapture Renny! |q 59087/3 |goto Bastion/0 56.14,90.31
step
kill Isengrimm##163777
|tip Inside the building.
Slay Isengrimm |q 59087/4 |goto Maldraxxus/0 26.87,62.47
step
clicknpc Renny##163846
|tip Inside the building.
|tip Sometimes Renny will bug out and not spawn after you kill Isengrimm.
|tip You will have to either re log or leave the area and come back and he should respawn.
Seriously, Catch that Fox |q 59087/5 |goto 26.89,62.36
step
talk Clarion Song##163774
turnin That Darn Fox!##59087 |goto Ardenweald/0 50.92,33.79
step
talk Renny##163903
accept Renny the Vulpin##59120 |goto 49.30,51.89
turnin Renny the Vulpin##59120 |goto 49.30,51.89
step
use Renny##175114
Learn the "Renny" Battle Pet |learnpet Renny##2878
step
_Congratulations!_
You Collected the "Renny" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rocky",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare boss Macabre in Ardenweald.",
keywords={"Beast","Ardenweald"},
pet=2907,
},[[
step
kill Macabre##164093
|tip This rare that can spawn in multiple locations all around Ardenweald.
|tip Open your world map and see if the "Mysterious Mushroom Ring" star is active, then head towards that location.
|tip When you reach the mushroom ring 3 people will have to dance with each other inside of the ring in order to spawn the boss.
collect Rocky##180644 |goto Ardenweald/0 36.6,48.2 |or
|tip This has a 96.6% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
It can also be found around:
[32.8,44.6]
[47.8,40.2]
[58.0,29.4]
'|learnpet Rocky##2907 |or
step
use Rocky##180644
Learn the "Rocky" Battle Pet |learnpet Rocky##2907
step
_Congratulations!_
You Collected the "Rocky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rosetipped Spiderling",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Banewood in Revendreth.",
keywords={"Beast","Revendreth"},
pet=3007,
},[[
step
clicknpc Rosetipped Spiderling
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rosetipped Spiderling" Battle Pet |learnpet Rosetipped Spiderling##3007 |goto Revendreth/0 47.05,75.14
step
_Congratulations!_
You Collected the "Rosetipped Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rustfur Kit",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in Bastion.",
keywords={"Beast","Bastion"},
pet=2937,
},[[
step
clicknpc Rustfur Kit##171703
|tip They can be found near the trees around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rustfur Kit" Battle Pet |learnpet Rusfur Kit##171703 |goto Bastion/0 43.84,42.44
You can find more around:
[54.59,30.90]
[59.12,85.96]
step
_Congratulations!_
You Collected the "Rustfur Kit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sable",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained several different ways depending on which covenant you are aligned with.",
keywords={"Beast","Venthyr","Night","Fae","Kyrian","Necrolord"},
pet=2933,
},[[
step
Upgrade The Ember Court to Tier 3 |complete covenantfeature("Covenant Unique") >= 3 |only if  Venthyr
Upgrade the Queen's Conservatory to Tier 2 |complete covenantfeature("Covenant Unique") >= 2 |only if  NightFae
Upgrade the Path of Ascension to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Kyrian
Upgrade the Abomination Factory to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Necrolord
|tip Use the "Venthyr Ember Court" leveling guides to accomplish this. |only if  Venthyr
|tip Use the "Night Fae Queen's Conservatory" guide to accomplish this. |only if  NightFae
|tip Use the "Kyrian Path of Ascension" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolord Abomination Factory" leveling guide to accomplish this. |only if  Necrolord
step
click Kleia and Pelagos' Extravagant Tribute##356733
|tip This is awarded at the end of Ember Court when Kleia and Pelagos' become best friends with you.
|tip Use the "Venthyr Ember Court" guides to help you accomplish this.
collect Sable##180814 |or
|tip This has a .6% chance to drop from "Kleia and Pelagos' Extravagant Tribute", it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Sable##2933 |or
|only if  Venthyr
step
click Queen's Conservatory Cache##350978+
|tip Use 4 "Wildseed Root Grain" on the 4 "Anima Catalyst Plots", then use "Divine Dutiful Spirit" on "Wildseed of Regrowth" with the 4 "Anima Catalyst Plots" nearby.
|tip Wait 7 days for incubation then loot the "Queen's Conservatory Cache".
collect Sable##180814 |or
|tip This has a .2% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Sable##2933 |or
|only if  NightFae
step
Earn the "Charmed, I'm Sure" Achievement |complete achieved(14856) |or
|tip Use the "Charmed, I'm Sure" Achievement guide to accomplish this.
'|learnpet Sable##2933 |or
|only if  Kyrian
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Sable##2933 |or
|only if  Kyrian
step
talk Zeleskos##171981
|tip He is upstairs.
buy Sable##180814 |goto Elysian Hold/1 31.01,47.25 |or
|tip This costs 250 Polished Pet Charms.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Sable##2933 |or
|only if  Kyrian
step
Reach Honored Reputation with the Stitchmasters |complete rep("Stitchmasters") >= Honored |or
|tip Use the "Stitchmasters" reputation guide to accomplish this.
'|learnpet Sable##2933 |or
|only if  Necrolord
step
Collect #1000# Reservoir Anima |complete curcount(1813) >= 1000 |or
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
'|learnpet Sable##2933 |or
|only if  Necrolord
step
talk Atticus##159238
|tip Use the "Atticus (Abomination)" guide to unlock this vendor if you already haven't.
buy Sable##180814 |goto Maldraxxus/0 55.27,68.32 |or
|tip This costs 1000 Reservoir Anima.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Sable##2933 |or
|only if  Necrolord
step
use Sable##180814
Learn the "Sable" Battle Pet |learnpet Sable##2933
step
_Congratulations!_
You Collected the "Sable" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Skittering Venomspitter",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Sprouting Growth treasure in Maldraxxus.",
keywords={"Beast","Maldraxxus"},
pet=2949,
},[[
step
click Grappling Growth##176288+
|tip Open your world map and see if a "Sprouting Growth" silver treasure chest icon is active in Maldraxxus, then head towards that location.
|tip There are multiple "Sprouting Growth" treasures than can spawn throughout Maldraxxus.
|tip Once you are near the "Sprouting Growth", start looking upwards at the giant mushrooms around the area and search for a "Grappling Growth".
|tip The "Grappling Growth" looks like tiny mushrooms that are on top of the giant mushrooms around this area.
|tip They are usually very high up and near the edge of the mushroom cap.
|tip Once you are tethered to the "Grappling Mushroom" press the space bar to zip towards your grapple point.
|tip Continue using the "Grappling Mushrooms" to navigate from mushroom to mushroom until you reach the "Sprouting Growth" treasure.
click Sprouting Growth##354852
collect Skittering Venomspitter##181173 |or
|tip This has a 1.6% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Skittering Venomspitter##2949 |or
step
use the Skittering Venomspitter##181173
Learn the "Skittering Venomspitter" Battle Pet |learnpet Skittering Venomspitter##2949
step
_Congratulations!_
You Collected the "Skittering Venomspitter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spirited Skyfoal",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the Command Table quest Save the Skyfoal.",
keywords={"Beast","Command","Table"},
pet=2942,
},[[
step
Unlock the Command Table Covenant Feature |complete covenantfeature("Command Table") >= 1 |or
|tip Use the "Kyrian Command Table" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolords Command Table" leveling guide to accomplish this. |only if  Necrolord
|tip Use the "Night Fae Command Table" leveling guide to accomplish this. |only if  NightFae
|tip Use the "Venthyr Command Table" leveling guide to accomplish this. |only if  Venthyr
'|learnpet Spirited Skyfoal##2942 |or
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kyrian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
collect Spirited Skyfoal##180872 |or
|tip Keep completing Command Table quests until the quest "Campaign: Save the Skyfoal" appears.
|tip You will receive this as a reward for compeleting this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Spirited Skyfoal##2942 |or
step
use the Spirited Skyfoal##180872
Learn the "Spirited Skyfoal" Battle Pet |learnpet Spirited Skyfoal##2942
step
_Congratulations!_
You Collected the "Spirited Skyfoal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Starry Dreamfoal",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Cache of the Night treasure in Ardenweald.",
keywords={"Beast","Ardenweald"},
pet=2914,
},[[
step
Run up the ramp |goto Ardenweald/0 53.10,57.98 < 30 |walk
Continue up the ramp |goto 53.78,60.68 < 30 |walk
click Fae Ornament##180654
collect Fae Ornament##180654 |goto 51.57,61.60 |or
'|learnpet Starry Dreamfoal##2914 |or
step
click Enchanted Bough##180656
|tip Underneath the platform.
collect Enchanted Bough##180656	|goto 42.41,46.72 |or
'|learnpet Starry Dreamfoal##2914 |or
step
Follow the path up |goto 38.86,28.62 < 30 |walk
Continue following the path |goto 36.82,27.47 < 30
click Raw Dream Fibers##180655
collect Raw Dream Fibers##180655 |goto 36.99,29.83 |or
'|learnpet Starry Dreamfoal##2914 |or
step
use the Raw Dream Fibers##180655
collect Fae Dreamcatcher##180652 |or
'|learnpet Starry Dreamfoal##2914 |or
step
Cross the bridge |goto 35.07,62.20 < 30 |walk
Run up the ramp |goto 35.38,65.23 < 30
Enter the tree |goto 36.00,65.58 < 30
click Cache of the Night##355000
|tip Inside the tree.
collect Starry Dreamfoal##180637 |goto 36.21,65.29 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Starry Dreamfoal##2914 |or
step
use the Starry Dreamfoal##180637
Learn the "Starry Dreamfoal" Battle Pet |learnpet Starry Dreamfoal##2914
step
_Congratulations!_
You Collected the "Starry Dreamfoal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Verdant Kit",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Heart of the Forest in Ardenweald.",
keywords={"Beast","Ardenweald"},
pet=3080,
},[[
step
clicknpc Verdant Kit##176019
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Verdant Kit" Battle Pet |learnpet Verdant Kit##3080 |goto Ardenweald/0 42.50,56.70
step
_Congratulations!_
You Collected the "Verdant Kit" Battle Pet.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Willowbreeze",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching friendly reputation with the Court of Night.",
keywords={"Beast","Court","Of","Night"},
pet=2915,
},[[
step
Join the Night Fae Covenant |complete  NightFae
|tip You must be a member of the Night Fae covenant to collect this pet.
'|learnpet Willowbreeze##2915 |or
step
Reach Friendly Reputation with the Court of Night |complete rep('Court of Night') >= Friendly
|tip Use the "Court of Night" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Willowbreeze##2915 |or
stickystart "Collect_Grateful_Offerings"
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Willowbreeze##2915 |or
step
label "Collect_Grateful_Offerings"
Collect #5# Grateful Offerings |complete curcount(1885) >= 5 |or
|tip Complete daily quests using the "Night Fae Anima Conductor Daily Quests" guide.
'|learnpet Willowbreeze##2915 |or
step
talk Spindlenose##162447
buy Willowbreeze##180636 |goto Ardenweald/0 59.58,52.84
|tip This costs 250 Polished Pet Charms and 5 Grateful Offerings.
'|learnpet Willowbreeze##2915 |or
step
use the Willowbreeze##180636
Learn the "Willowbreeze" Battle Pet |learnpet Willowbreeze##2915
step
_Congratulations!_
You Collected the "Willowbreeze" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Ashen Chomper",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any of the final bosses in Skoldus Hall inside of Torghast.",
keywords={"Critter","Torghast"},
pet=3030,
},[[
step
kill Warden Skoldus##151329
kill Custodian Thonar##153165
kill Cellblock Sentinel##151331
collect Jar of Ashes##183193 |or
|tip This has a 3% chance to drop from any of these final bosses in Skoldus Hall inside of Torghast.
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Ashen Chomper##3030 |or
step
use the Jar of Ashes##183193
Learn the "Ashen Chomper" Battle Pet |learnpet Ashen Chomper##3030
step
_Congratulations!_
You Collected the "Ashen Chomper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Bloodlouse Larva",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Strange Growth treasure in Maldraxxus.",
keywords={"Critter","Maldraxxus"},
pet=3013,
},[[
step
click Strange Growth##348521
|tip Strange Growth is is a treasure spawn.
|tip Use the POI guides to accomplish this.
|tip It looks like a black tentacle coming out of the ground around this area.
|tip Once you click on the tentacle walk backwards until it snaps.
|tip Loot the Strange Growth after it snaps to get the Hairy Egg.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Hairy Egg##182607|goto Maldraxxus/0 55.89,38.99 |or
'|learnpet Bloodlouse Larva##3013 |or
step
use the Hairy Egg##182607
|tip After 3 days it will hatch in to a Bloodlouse Larva.
collect Bloodlouse Larva##182606 |or
'|learnpet Bloodlouse Larva##3013 |or
step
use the Bloodlouse Larva##182606
Learn the "Bloodlouse Larva" Battle Pet |learnpet Bloodlouse Larva##3013
step
_Congratulations!_
You Collected the "Bloodlouse Larva" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Corpselouse Larva",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop after killing Smorgas the Feaster in Maldraxxus.",
keywords={"Critter","Maldraxxus"},
pet=2955,
},[[
step
click Bloody Lump##341460
|tip It looks like a red bloody lump on the ground around this area.
kill Smorgas the Feaster##162528
|tip There is a chance that Smorgas won't spawn after you click the Bloody Lump.
collect Corpselouse Larva##181265 |goto Maldraxxus/0 42.52,53.47
|tip This has a 1.57% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Corpselouse Larva##181265
Learn the "Corpselouse Larva" Battle Pet |learnpet Corpselouse Larva##2955
step
_Congratulations!_
You Collected the "Corpselouse Larva" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Decay Grub",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Dusty Burrows in Ardenweald.",
keywords={"Critter","Ardenweald"},
pet=3081,
},[[
step
clicknpc Decay Grub##176020
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Decay Grub" Battle Pet |learnpet Decay Grub##3081 |goto Ardenweald/0 58.33,30.99
step
_Congratulations!_
You Collected the "Decay Grub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Decaying Mawrat",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from a Fallen Adventurer's Cache inside The Maw.",
keywords={"Critter","The","Maw"},
pet=3039,
},[[
step
Kill bosses inside of The Maw
collect Fallen Adventurer's Cache##184395 |n
|tip This has about a 10% chance to drop from any of the bosses inside of The Maw.
step
use the Fallen Adventurer's Cache##184395
collect Decaying Mawrat##183409
|tip This has a 5% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Decaying Mawrat##183409
|tip It is in your bag.
Learn the "Decaying Mawrat" Battle Pet |learnpet Decaying Mawrat##3039
step
_Congratulations!_
You Collected the "Decaying Mawrat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Deepwood Leaper",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Renard's Den in Ardenweald.",
keywords={"Critter","Ardenweald"},
pet=3021,
},[[
step
clicknpc Deepwood Leaper##173590
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Deepwood Leaper" Battle Pet |learnpet Deepwood Leaper##3021 |goto Ardenweald/0 50.84,56.10
You can find more around [28.38,58.39]
step
_Congratulations!_
You Collected the "Deepwood Leaper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Feasting Larva",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop after killing Smorgas the Feaster in Maldraxxus.",
keywords={"Critter","Maldraxxus"},
pet=2956,
},[[
step
click Bloody Lump##341460
|tip It looks like a red bloody lump on the ground around this area.
kill Smorgas the Feaster##162528
|tip There is a chance that Smorgas won't spawn after you click the Bloody Lump.
collect Feasting Larva##181266 |goto Maldraxxus/0 42.52,53.47
|tip This has a 4.55% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Feasting Larva##181266
Learn the "Feasting Larva" Battle Pet |learnpet Feasting Larva##2956
step
_Congratulations!_
You Collected the "Feasting Larva" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Floofa",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching friendly reputation with The Wild Hunt.",
keywords={"Critter","Ardenweald"},
pet=2910,
},[[
step
Reach Friendly Reputation With The Wild Hunt |complete rep('The Wild Hunt') >= Friendly
|tip Use "The Wild Hunt" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Floofa##2910 |or
step
talk Aithlyn##158556
buy Floofa##180641 |goto Ardenweald/0 48.48,50.42
|tip This costs 250 Polished Pet Charms.
step
use Floofa##180641
Learn the "Floofa" Battle Pet |learnpet Floofa##2910
step
_Congratulations!_
You Collected the "Floofa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Frenzied Mawrat",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any of the final bosses inside Skoldus Hall located in Torghast.",
keywords={"Critter","Torghast"},
pet=3032,
},[[
step
kill Custodian Thonar##153165
kill Warden Skoldus##151329
kill Cellblock Sentinel##151331
collect Frenzied Mawrat##183192
|tip This pet has a chance to drop from any of these final bosses inside Skoldus Hall located in Torghast.
|tip This has a 3% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Frenzied Mawrat##183192
Learn the "Frenzied Mawrat" Battle Pet |learnpet Frenzied Mawrat##3032
step
_Congratulations!_
You Collected the "Frenzied Mawrat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gloober, as G'hunn",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Ardenweald.",
keywords={"Critter","Ardenweald"},
pet=2917,
},[[
step
Join the Night Fae Covenant |complete  NightFae
|tip You must be a member of the Night Fae covenant to collect this pet.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Gloober, as G'hunn##171243 |or
step
talk Master Clerk Salorn##163714
buy Gloober, as G'hunn##180634 |goto Ardenweald/0 43.11,47.06 |or
|tip This costs 250 Polished Pet Charms.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Gloober, as G'hunn##171243 |or
step
use the Gloober, as G'hunn##180634
Learn the "Gloober, as G'hunn" Battle Pet |learnpet Gloober, as G'hunn##171243
step
_Congratulations!_
You Collected the "Gloober, as G'hunn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grubby",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the quest A New Age in the Kyrian covenant storyline.",
keywords={"Critter","Bastion"},
pet=2918,
},[[
step
Join the Kyrian Covenant |complete  Kyrian
|tip You must be a member of the Kyrian covenant to collect this pet.
step
collect Grubby##180633
|tip You must be aligned with the Kyrian covenant in order to earn this.
|tip This battle pet is rewarded to you after you complete the quest "A New Age" in the Kyrian covenant storyline.
|tip The quest chain to earn this pet will become avaiable at renown level 17.
|tip Complete Covenant Sanctum quests inside of your covenants base to increase your renown.
|tip Use the "Kyrian Questline" Leveling Guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Grubby##180633
Learn the "Grubby" Battle Pet |learnpet Grubby##2918
step
_Congratulations!_
You Collected the "Grubby" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hissing Deathroach",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any of the final bosses inside Coldheart Interstitia located in Torghast.",
keywords={"Critter","Torghast"},
pet=3027,
},[[
step
kill Elder Longbranch##155251
kill Decayspeaker##155250
kill Dark Ascended Corrus##156239
collect Hissing Deathroach##183116
|tip This pet has a 4% chance to drop from any of these final bosses inside Coldheart Interstitia located in Torghast.
|tip It may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Hissing Deathroach##183116
Learn the "Hissing Deathroach" Battle Pet |learnpet Hissing Deathroach##3027
step
_Congratulations!_
You Collected the "Hissing Deathroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hungry Burrower",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Wild Hunt Supplies in Ardenweald.",
keywords={"Critter","Ardenweald"},
pet=2916,
},[[
step
Reach Exalted Reputation With The Wild Hunt |complete rep('The Wild Hunt') == Exalted
|tip Use the "The Wild Hunt" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Aithlyn##158556
turnin Supplies from The Wild Hunt##61098 |goto Ardenweald/0 48.50,50.45
|tip This quest will become available to turn in after you earn 10k reputation for "The Wild Hunt".
|tip You can earn reputation for The Wild Hunt by completing various world quests in Ardenweald.
|tip This quest is repeatable.
step
collect Wild Hunt Supplies##180649 |n
|tip You will receive "Wild Hunt Supplies" for every 10k reputation you earn with "The Wild Hunt" faction.
use the Wild Hunt Supplies##180649
collect Hungry Burrower##180635
|tip It may take several attempts to get this.
step
use the Hungry Burrower##180635
Learn the "Hungry Burrower" Battle Pet |learnpet Hungry Burrower##2916
step
_Congratulations!_
You Collected the "Hungry Burrower" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lavender Nibbler",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare boss Gormbore in Ardenweald.",
keywords={"Critter","Ardenweald"},
pet=3035,
},[[
step
kill Evolving Mite##165420+
|tip Keep killing them on the dustcloud around this area until Gormbore spawns.
kill Gormbore##163370
collect Lavender Nibbler##183196 |goto Ardenweald/0 53.93,75.98
|tip This has a 18.16% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Lavender Nibbler##183196
Learn the "Lavender Nibbler" Battle Pet |learnpet Lavender Nibbler##3035
step
_Congratulations!_
You Collected the "Lavender Nibbler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pulsating Maggot",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Forgotten Wounds in Maldraxxus.",
keywords={"Critter","Maldraxxus"},
pet=3049,
},[[
step
clicknpc Pulsating Maggot##175021
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Pulsating Maggot" Battle Pet |learnpet Pulsating Maggot##3049 |goto Maldraxxus/0 53.83,37.92
step
_Congratulations!_
You Collected the "Pulsating Maggot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Runelight Leaper",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the Command Table quest Rescue the Runelight Leaper.",
keywords={"Critter","Command","Table"},
pet=3020,
},[[
step
Unlock the Command Table Covenant Feature |complete covenantfeature("Command Table")>=1
|tip Use the "Kyrian Command Table" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolords Command Table" leveling guide to accomplish this. |only if  Necrolord
|tip Use the "Night Fae Command Table" leveling guide to accomplish this. |only if  NightFae
|tip Use the "Venthyr Command Table" leveling guide to accomplish this. |only if  Venthyr
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kyrian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
collect Runelight Leaper##182671
|tip Keep completing Command Table quests until the quest "Campaign: Rescue the Runelight Leaper" appears.
|tip You will receive this as a reward for compeleting this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Runelight Leaper##182671
Learn the "Runelight Leaper" Battle Pet |learnpet Runelight Leaper##3020
step
_Congratulations!_
You Collected the "Runelight Leaper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Shimmerbough Hoarder",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Faerie Trove treasure in Ardenweald.",
keywords={"Critter","Ardenweald"},
pet=3022,
},[[
step
Enter the hole underneath the platform |goto Ardenweald/0 49.85,55.91 < 20 |walk
click Faerie Trove##354652
|tip It is underneath the platform.
collect Shimmerbough Hoarder##182673 |goto 49.71,55.89
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Shimmerbough Hoarder##182673
Learn the "Shimmerbough Hoarder" Battle Pet |learnpet Shimmerbough Hoarder##3022
step
_Congratulations!_
You Collected the "Shimmerbough Hoarder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sir Reginald",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching Friendly reputation with the Marasmius faction.",
keywords={"Critter","Marasmius"},
pet=3023,
},[[
step
Join the Night Fae Covenant |complete  NightFae |or
|tip You must be a member of the Night Fae covenant to collect this pet.
'|learnpet Sir Reginald##3023 |or
step
Reach Friendly Reputation with the Marasmius |complete rep('Marasmius') >= Friendly |or
|tip Use the "Marasmius" reputation guide to accomplish this.
'|learnpet Sir Reginald##3023 |or
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Sir Reginald##3023 |or
step
talk Cortinarius##174766
buy Sir Reginald##182674 |goto Ardenweald/0 56.04,53.01 |or
|tip This costs 250 Polished Pet Charms.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Sir Reginald##3023 |or
step
use Sir Reginald##182674
Learn the "Sir Reginald" Battle Pet |learnpet Sir Reginald##3023
step
_Congratulations!_
You Collected the "Sir Reginald" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Spinemaw Gormling",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Tred'ova in the Mists of Tirna Scithe Mythic dungeon.",
keywords={"Critter","Ardenweald"},
pet=3044,
},[[
step
kill Tred'ova##164517
|tip Queue up for the Mists of Tirna Scithe dungeon on Mythic difficulty.
collect Spinemaw Gormling##183623
|tip This pet will only drop on Mythic difficulty.
|tip This has a 3.77% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Spinemaw Gormling##183623
Learn the "Spinemaw Gormling" Battle Pet |learnpet Spinemaw Gormling##3044
step
_Congratulations!_
You Collected the "Spinemaw Gormling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tower Deathroach",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the final bosses in Coldheart Inserstitia located inside of Torghast.",
keywords={"Critter","Torghast"},
pet=3026,
},[[
step
kill Decayspeaker##155250
kill Elder Longbranch##155251
kill Dark Ascended Corrus##156239
collect Tower Deathroach##183115
|tip This has a 4% chance to drop from any of these final bosses in Coldheart Inserstitia located inside of Torghast.
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Tower Deathroach##183115
Learn the "Tower Deathroach" Battle Pet |learnpet Tower Deathroach##3026
step
_Congratulations!_
You Collected the "Tower Deathroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undying Deathroach",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from a Fallen Adventurer's Cache inside The Maw.",
keywords={"Critter","The","Maw"},
pet=3038,
},[[
step
Kill rare spawns inside The Maw
|tip Use the POI guides to accomplish this.
collect Fallen Adventurer's Cache##184395
|tip This has a 10% chance to drop from any boss, it may take several attempts to get.
step
use the Fallen Adventurer's Cache##184395
collect Undying Deathroach##183408
|tip This has a 5% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Undying Deathroach##183408
|tip It is in your bag.
Learn the "undying Deathroach" Battle Pet |learnpet Undying Deathroach##3038
step
_Congratulations!_
You Collected the "Undying Deathroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Moon-Touched Netherwhelp",{
patch='90001',
source='Unknown',
author="support@zygorguides.com",
description="\nThis battle pet was available to purchase from the Blizzard Store during the 2021 BlizzConline event.",
keywords={"Dragonkin","Blizzard","Store"},
pet=3053,
},[[
step
collect Moon-Touched Netherwhelp##175203
|tip This battle pet was available to purchase from the Blizzard Store during the 2021 BlizzConline event.
|tip This pet is no longer available to purchase from the Blizzard Store, you will have to buy it from a third party site.
step
use the Moon-Touched Netherwhelp##175203
Learn the "Moon-Touched Netherwhelp" Battle Pet |learnpet Moon-Touched Netherwhelp##3053
step
_Congratulations!_
You Collected the "Moon-Touched Netherwhelp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Char",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Ashen Amalgamation in The Ember Court.",
keywords={"Elemental","The","Ember","Court"},
pet=3024,
},[[
step
Join the Venthyr Covenant |complete  Venthyr
|tip You must be a member of the Venthyr covenant to collect this pet.
step
click Sika's Extravagant Tribute##356737
|tip This has a chance to appear at the end of an Ember Court run.
|tip Sika needs to be friendly reputation with you and you must have "traditional decoration" set during the Ember Court run.
|tip Use the "Venthyr Ember Court" guides to help you accomplish this.
collect Anima-Infused Water##177230
|tip This has a 1% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Anima-Infused Water##177230
|tip Use it on the fires around The Ember Court.
|tip If you have "traditional decorations" fires should appear quicker.
kill Ashen Amalgamation##165686
|tip He has a chance to spawn when you are putting fires out around The Ember Court.
|tip He is not a guaranteed spawn.
collect Pile of Ashen Dust##183107
|tip It may take several attempts to get this.
step
use the Pile of Ashen Dust##183107
Learn the "Char" Battle Pet |learnpet Char##3024
step
_Congratulations!_
You Collected the "Char" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Dread",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Eternas the Tormentor in the Maw.",
keywords={"Elemental","The","Maw"},
pet=3037,
},[[
step
kill Eternas the Tormentor##154330
collect Contained Essence of Dread##183407 |goto The Maw/0 19.2,46.0
|tip This has a 21% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Contained Essence of Dread##183407
Learn the "Dread" Battle Pet |learnpet Dread##3037
step
_Congratulations!_
You Collected the "Dread" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fun Guss",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching friendly reputation with the Marasmius faction.",
keywords={"Elemental","Ardenweald"},
pet=3016,
},[[
step
Join the Night Fae Covenant |complete  NightFae
|tip You must be a member of the Night Fae covenant to collect this pet.
step
Reach Friendly Reputation With the Marasmius Faction |complete rep('Marasmius') >= Friendly
|tip Use the "Marasmius" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Fun Guss##3016 |or
step
talk Cortinarius##174766
buy Fun Guss##182661 |goto Ardenweald/0 56.04,53.01
|tip This costs 250 Polished Pet Charms.
step
use Fun Guss##182661
Learn the "Fun Guss" Battle Pet |learnpet Fun Guss##3016
step
_Congratulations!_
You Collected the "Fun Guss" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Leafadore",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after completing 3 different Star Lake Amphitheater performances for the Night Fae covenant.",
keywords={"Elemental","Night","Fae"},
pet=3017,
},[[
step
Join the Night Fae Covenant |complete  NightFae
|tip You must be a member of the Night Fae covenant to collect this pet.
step
Unlock the Anima Conductor Covenant Feature |complete covenantfeature("Anima Conductor")>=1
|tip Use the "Night Fae Anima Conductor" guide to help you accomplish this.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Leafadore##3017 |or
step
talk Master Clerk Salorn##163714
buy Leafadore##182662 |goto Ardenweald/0 43.12,47.06
|tip Power the "Dreamsong Fenn" conduit on the Anima Conductor and complete 3 different Star Lake Amphitheater performances.
|tip You can talk to Dapperdew at the Star Lake Amphitheater to begin a performance, each performance will summon a random rare boss that you can defeat once a day.
|tip This costs 250 Polished Pet Charms.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Talk to Dapperdew [41.50,44.83]
step
use Leafadore##182662
Learn the "Leafadore" Battle Pet |learnpet Leafadore##3017
step
_Congratulations!_
You Collected the "Leafadore" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Mire Creeper",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Endmire in Revendreth.",
keywords={"Elemental","Revendreth"},
pet=3014,
},[[
step
clicknpc Mire Creeper##173555
|tip It runs around the tree around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Mire Creeper" Battle Pet |learnpet Mire Creeper##3014 |goto Revendreth/0 56.36,58.59
step
_Congratulations!_
You Collected the "Mire Creeper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Raw Emotion",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Grand Proctor Beryllia in the Sanguine Depths Mythic dungeon.",
keywords={"Elemental","Sanguine","Depths"},
pet=2898,
},[[
step
kill Grand Proctor Beryllia##162102
|tip Queue up for the Sanguine Depths dungeon on Mythic difficulty.
collect Vile of Roiling Emotions##180591
|tip This pet will only drop on Mythic difficulty.
|tip This has a 2.38% chance to drop, it may take a few attempts to get.
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Vile of Roiling Emotions##180591
Learn the "Raw Emotion" Battle Pet |learnpet Raw Emotion##2898
step
_Congratulations!_
You Collected the "Raw Emotion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sinheart",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Venthyr Renown Quartermaster when you reach Renown level 27.",
keywords={"Elemental","Revendreth"},
pet=2966,
},[[
step
Reach Renown Level 27 |complete covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
stickystart "Collect_Grateful_Offerings"
step
Collect #1500# Reservoir Anima |complete curcount(1813) >= 1500 |or
|tip Complete covenant calling quests using the "Venthyr Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
'|learnpet Sinheart##2966 |or
step
label "Collect_Grateful_Offerings"
Collect #5# Grateful Offerings |complete curcount(1885) >= 5 |or
|tip Complete daily quests using the "Venthyr Anima Conductor Daily Quests" guide. |complete  Venthyr
'|learnpet learnpet Sinheart##2966 |or
step
talk Chachi the Artiste##174710
|tip Inside the building.
buy Sinheart##181555 |goto Sinfall/0 54.10,24.63
|tip It costs 1500 Reservoir Anima and 30 Grateful Offerings.
step
use Sinheart##181555
Learn the "Sinheart" Battle Pet |learnpet Sinheart##2966
step
_Congratulations!_
You Collected the "Sinheart" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Stemmins",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching Friendly reputation with the Court of Night faction.",
keywords={"Elemental","Court","Of","Night"},
pet=3019,
},[[
step
Join the Night Fae Covenant |complete  NightFae
|tip You must be a member of the Night Fae covenant to collect this pet.
step
Earn Friendly Reputation With the Court of Night |complete rep("Court of Night") >= Friendly
|tip Use the "Court of Night" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
stickystart "Collect_Grateful_Offerings"
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Stemmins##3019 |or
step
label "Collect_Grateful_Offerings"
Collect #5# Grateful Offerings |complete curcount(1885) >= 5 |or
|tip Complete daily quests using the "Night Fae Anima Conductor Daily Quests" guide. |complete  NightFae
'|learnpet Stemmins##3019 |or
step
talk Spindlenose##162447
buy Stemmins##182664 |goto Ardenweald/0 59.58,52.84
|tip This costs 250 Polished Pet Charms and 5 Grateful Offerings.
step
use Stemmins##182664
Learn the "Stemmins" Battle Pet |learnpet Stemmins##3019
step
_Congratulations!_
You Collected the "Stemmins" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Trootie",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Night Fae Renown Quartermaster when you reach Renown level 27.",
keywords={"Elemental","Ardenweald"},
pet=3018,
},[[
step
Reach Renown Level 27 |complete covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
stickystart "Collect_Grateful_Offerings"
step
Collect #1500# Reservoir Anima |complete curcount(1813) >= 1500 |or
|tip Complete covenant calling quests using the "Night Fae Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
'|learnpet Trootie##3018 |or
step
label "Collect_Grateful_Offerings"
Collect #20# Grateful Offerings |complete curcount(1885) >= 20 |or
|tip Complete daily quests using the "Night Fae Anima Conductor Daily Quests" guide. |complete  NightFae
'|learnpet Trootie##3018 |or
step
talk Elwyn##174914
|tip Inside the building.
buy Trootie##182663 |goto Heart of the Forest/0 60.14,35.97
|tip It costs 1500 Reservoir Anima and 20 Grateful Offerings.
step
use the Trootie##182663
Learn the "Trootie" Battle Pet |learnpet Trootie##3018
step
_Congratulations!_
You Collected the "Trootie" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Withering Creeper",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the center of Revendreth.",
keywords={"Elemental","Revendreth"},
pet=3015,
},[[
step
clicknpc Withering Creeper##173556
|tip They can be found across the entire dried river bank and streams in central Revendreth.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Withering Creeper" Battle Pet |learnpet Withering Creeper##3015 |goto Revendreth/0 46.81,68.63
You can also find them around [56.48,59.08]
You can also find them around [73.10,60.99]
step
_Congratulations!_
You Collected the "Withering Creeper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Wrathling",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare bosses Manifestation of Wrath and Prideful Hulk in Revendreth.",
keywords={"Elemental","Revendreth"},
pet=2897,
},[[
step
kill Manifestation of Wrath##170048
|tip This rare boss only spawns during the "Swarming Souls" World Quest in Revendreth.
|tip Every time you deliver a lost soul to the Avowed Ritualist it has a chance to spawn Manifestation of Wrath.
|tip You can keep delivering souls to the Avowed Ritualist as long as you do not complete the World Quest.
Or
kill Prideful Hulk##165175
|tip This rare boss spawns from the "Leeched Soul" instance that occurs in Revendreth.
|tip Open the world map and left click on the "Leeched Soul" boss icon if it is active to load the guide.
collect Bottled Up Rage##180585
|tip This has a 9% chance to drop from Manifestation of Wrath.
|tip This has a 5% chance to drop from Prideful Hulk.
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Bottled Up Rage##180585
Learn the "Wrathling" Battle Pet |learnpet Wrathling##2897
step
_Congratulations!_
You Collected the "Wrathling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Amber Glitterwing",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained from the Desiccated Moth treasure in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2911,
},[[
step
click Aromatic Flowers##355271
|tip The "Aromatic Flowers" will disappear from your bag after 10 minutes.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Aromatic Flowers##180784 |goto Ardenweald/0 31.77,32.48 |or
'|learnpet Amber Glitterwing##2911 |or
step
Step on the Bounding Shroom |goto 41.42,31.62 < 10 |only if walking
|tip Walking on the "Bounding Shroom" will launch you in the air.
|tip Angle yourself so that you are facing the giant tree to the right of the Bounding Shroom.
|tip When you are launched in the air try to aim for the middle branches of the tree and land on them.
Reach the Center of the Tree |goto 41.94,32.46 < 5 |c |or
'|learnpet Amber Glitterwing##2911 |or
step
click Incense Burner##355273
|tip It looks like a bowl hanging from some rope on the branches of the giant tree.
|tip You need to have the "Aromatic Flowers" in order to lure the "Desiccated Moth", if they have expired you will need to get more.
Click Here Once You Have Burned the Aromatic Flowers |confirm |or
'|learnpet Amber Glitterwing##2911 |or
step
click Desiccated Moth##171484
|tip It will fly towards the incense burner after you burn the Aromatic Flowers.
collect Amber Glitterwing##180640 |goto 41.95,32.49 |or
'|learnpet Amber Glitterwing##2911 |or
step
use the Amber Glitterwing##180640
Learn the "Amber Glitterwing" Battle Pet |learnpet Amber Glitterwing##2911
step
_Congratulations!_
You Collected the "Amber Glitterwing" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Battle",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching revered reputation with The Ember Court.",
keywords={"Flying","The","Ember","Court"},
pet=3011,
},[[
step
Join the Venthyr Covenant |complete  Venthyr |or
|tip You must be a member of the Venthyr covenant to collect this pet.
'|learnpet Battle##173535 |or
step
Reach Revered Reputation With The Ember Court |complete rep('The Ember Court') >= Revered |or
|tip Use "The Ember Court" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Battle##173535 |or
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Battle##173535 |or
step
talk Temel##164966
|tip Inside the building.
|tip This costs 250 Polished Pet Charms.
buy Battle's Pendant##183854 |goto Revendreth/0 28.0,43.0 |or
'|learnpet Battle##173535 |or
step
use Battle's Pendant##183854
Learn the "Battle" Battle Pet |learnpet Battle##173535
step
_Congratulations!_
You Collected the "Battle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Chirpy Valeshrieker",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet drops after killing Old Ardeite in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2908,
},[[
step
kill Old Ardeite##164391
|tip Open your world map to Ardenweald and select the "Old Ardeite" boss icon to load the guide to accomplish this.
collect Chirpy Valeshrieker##180643
|tip This has a 96.42% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Chirpy Valeshrieker##180643
Learn the "Chirpy Valeshrieker" Battle Pet |learnpet Chirpy Valeshrieker##2908
step
_Congratulations!_
You Collected the "Chirpy Valeshrieker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cloudfeather Fledgling",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Ancient Cloudfeather Egg treasure in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2909,
},[[
step
Follow the path up |goto Ardenweald/0 54.98,36.96 < 30 |only if walking
Continue following the path |goto 54.13,38.85 < 30 |only if walking
Continue following the path |goto 52.56,37.98 < 30 |only if walking
click Ancient Cloudfeather Egg##354646
|tip There is a chance the egg will not spawn if a world quest is going on in this area.
|tip Complete the world quest before visiting the Cloudfeather nest.
collect Cloudfeather Fledgling##180642 |goto 52.95,37.31
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Cloudfeather Fledgling##180642
Learn the "Cloudfeather Fledgling" Battle Pet |learnpet Cloudfeather Fledgling##2909
step
_Congratulations!_
You Collected the "Cloudfeather Fledgling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Courage",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by petting 5 Larion Cubs at the same time while at Nemea's Retreat in Bastion.",
keywords={"Flying","Bastion"},
pet=3065,
},[[
step
clicknpc Larion Cub##175760
|tip They look like small Larions running around this area.
|tip You will need at least 4 other people with you to earn the battle pet "Courage".
|tip You will have a higher chance at summoning "Courage" with more people in your party in case somebody messes up the timing.
|tip 5 "Larion Cubs" must be pet at the same time in order to summon "Courage".
|tip Assign a "Larion Cub" to each person in your party then use a countdown timer to let the group know when to begin petting the cub.
clicknpc Courage##175776
|tip He will run to this spot after you successfully pet 5 "Larion Cubs" at the same time.
|tip He will despawn in about 30 seconds so get to this spot quickly after you pet your "Larion Cub".
collect Courage##184400 |goto Bastion/0 57.32,39.31
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Courage##184400
Learn the "Courage" Battle Pet |learnpet Courage##3065
step
_Congratulations!_
You Collected the "Courage" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crawbat",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Valley of a Thousand Legs in Maldraxxus.",
keywords={"Flying","Maldraxxus"},
pet=3083,
},[[
step
clicknpc Crawbat##176024
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crawbat" Battle Pet |learnpet Crawbat##3083 |goto Maldraxxus/0 52.86,58.87
They can also be found around [51.62,36.42]
They can also be found around [45.66,49.51]
step
_Congratulations!_
You Collected the "Crawbat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Dredwing Pup",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from bat enemies in Revendreth.",
keywords={"Flying","Revendreth"},
pet=2903,
},[[
step
Kill bat enemies around this area
collect Crimson Dredwing Pup##180602 |goto Revendreth/0 47.55,75.98
|tip This pet has a rare chance to drop from bat enemies in Revendreth.
|tip This has a .05% to drop, it may take a while to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
More enemies can be found around [30.23,20.69]
More enemies can be found around [51.59,50.02]
step
use the Crimson Dredwing Pup##180602
Learn the "Crimson Dredwing Pup" Battle Pet |learnpet Crimson Dredwing Pup##2903
step
_Congratulations!_
You Collected the "Crimson Dredwing Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Devoured Wader",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Xinxin the Ravening, Embodied Hunger, and Woldfeaster Chronn in Bastion.",
keywords={"Flying","Bastion"},
pet=2940,
},[[
step
kill Xinxin the Ravening##171040
kill Embodied Hunger##171013
kill Worldfeaster Chronn##171041
|tip Open the world map and click on any of these bosses if they are active to load the guide to help you accomplish this.
collect Devoured Wader##180869
|tip This is a rare drop, it may take a while to get this.
|tip This has a 5% chance to drop from "Xinxin the Ravening" and "Embodied Hunger"; there is a 10% chance it will drop from "Worldfeaster Chronn".
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Devoured Wader##180869
Learn the "Devoured Wader" Battle Pet |learnpet Devoured Wader##2940
step
_Congratulations!_
You Collected the "Devoured Wader" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Devouring Animite",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the Command Table quest Charthox the Indomitable.",
keywords={"Flying","Command","Table"},
pet=2922,
},[[
step
Unlock the Command Table Covenant Feature |complete covenantfeature("Command Table")>=1
|tip Use the "Kyrian Command Table" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolords Command Table" leveling guide to accomplish this. |only if  Necrolord
|tip Use the "Night Fae Command Table" leveling guide to accomplish this. |only if  NightFae
|tip Use the "Venthyr Command Table" leveling guide to accomplish this. |only if  Venthyr
step
clicknpc Command Table##176143 |goto Elysian Hold/0 43.34,41.24 |only if  Kyrian
clicknpc Command Table##176143 |goto Seat of the Primus/0 39.31,46.32 |only if  Necrolord
clicknpc Command Table##176143 |goto Ardenweald/0 44.74,56.31 |only if  NightFae
clicknpc Command Table##176143 |goto Sinfall/0 55.82,61.46 |only if  Venthyr
collect Devouring Animite##180629
|tip This pet is rewarded to you after completing the "Command Table" quest "Campaign: Charthox the Indomitable".
|tip Keep completing "Command Table" quests until the quest "Campaign: Charthox the Indomitable" appears.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Devouring Animite##180629
Learn the "Devouring Animite" Battle Pet |learnpet Devouring Animite##2922
step
_Congratulations!_
You Collected the "Devouring Animite" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dusky Dredwing Pup",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Charred Ramparts in Revendrath.",
keywords={"Flying","Revendreth"},
pet=2902,
},[[
step
clicknpc Dusky Dredwing Pup##171149
|tip Look up in the sky, you will see a flock of them flying around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Dusky Dredwing Pup" Battle Pet |learnpet Dusky Dredwing Pup##2902 |goto Revendreth/0 39.01,49.37
step
_Congratulations!_
You Collected the "Dusky Dredwing Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Teroclaw",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Bastion.",
keywords={"Flying","Bastion"},
pet=2926,
},[[
step
clicknpc Fledgling Teroclaw##171567
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fledgling Teroclaw" Battle Pet |learnpet Fledgling Teroclaw##2926	|goto Bastion/0 43.42,59.31
step
_Congratulations!_
You Collected the "Fledgling Teroclaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fluttering Glimmerfly",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Bastion.",
keywords={"Flying","Bastion"},
pet=2927,
},[[
step
clicknpc Fluttering Glimmerfly##171664
|tip This battle pet can be found all around Bastion.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fluttering Glimmerfly" Battle Pet |learnpet Fluttering Glimmerfly##2927 |goto Bastion/0 56.98,88.60
step
_Congratulations!_
You Collected the "Fluttering Glimmerfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Foulwing Buzzer",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Ravenomous in Maldraxxus.",
keywords={"Flying","Maldraxxus"},
pet=2964,
},[[
step
kill Ravenomous##159753
|tip She will fly down to this location after you kill around 100 of the neutral "Boneweave Spiderlings" around this area.
|tip You can kill the "Boneweave Spiderlings" by running them over on foot or with your mount.
collect Foulwing Buzzer##181283 |goto Maldraxxus/0 53.86,18.85
|tip This has a 5.24% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Foulwing Buzzer##181283
Learn the "Foulwing Buzzer" Battle Pet |learnpet Foulwing Buzzer##2964
step
_Congratulations!_
You Collected the "Foulwing Buzzer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fuzzy Shimmermoth",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor after reaching friendly reputation with the Marasmius faction.",
keywords={"Flying","Ardenweald"},
pet=2913,
},[[
step
Join the Night Fae Covenant |complete  NightFae
|tip You must be a member of the Night Fae covenant to collect this pet.
step
Reach Friendly Reputation With the Marasmius Faction |complete rep('Marasmius') >= Friendly
|tip Use the "Marasmius" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Fuzzy Shimmermoth##2913 |or
step
talk Cortinarius##174766
buy Fuzzy Shimmermoth##180638 |goto Ardenweald/0 56.04,53.01
|tip This costs 250 Polished Pet Charms.
step
use the Fuzzy Shimmermoth##180638
Learn the "Fuzzy Shimmermoth" Battle Pet |learnpet Fuzzy Shimmermoth##2913
step
_Congratulations!_
You Collected the "Fuzzy Shimmermoth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gilded Wader",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Silver Strongbox treasure chests in Bastion.",
keywords={"Flying","Bastion"},
pet=2938,
},[[
step
talk Elios##170284
|tip This pet is cageable, meaning you can purchase it from the Auction House.
accept Fruit of the Gods##62730 |goto Bastion/0 53.21,46.35 |region heros_rest
step
click Ripe Purian##352239
|tip They look like small orange fruits around this area.
collect Ripe Purian##178915 |q 62730/1 |goto 51.61,41.59
step
talk Elios##170284
turnin Fruit of the Gods##62730 |goto 53.21,46.35 |region heros_rest
step
talk Elios##170284
accept The Sweetest Tribute##62733 |goto 53.21,46.35 |region heros_rest
step
click Tribute##352407
|tip It looks like a plate on the ground next to the Silver Strongbox around this area.
|tip After you place your offering on the "Tribute" plate you will be able to open the "Silver Lockbox".
click Silver Strongbox##353205
Open the Silver Strongbox |q 62733/1 |goto 52.84,45.23 |region heros_rest
step
talk Elios##170284
turnin The Sweetest Tribute##62733 |goto 53.21,46.35 |region heros_rest
step
click Ripe Purian##352239
|tip They look like small orange fruits around this area.
|tip They can be found all over Bastion.
collect Ripe Purian##178915 |goto 51.61,41.59
step
click Silver Strongbox##353205+
|tip These will appear on your mini map as silver chests all over Bastion.
|tip Click on the "Tribute" plate next to the "Silver Lockbox" to unlock the "Silver Lockbox".
|tip This will consume your "Ripe Purian".
collect Gilded Wader##180866
|tip This has a less than 1% chance to drop, it may take several attempts to get.
step
use the Gilded Wader##180866
Learn the "Gilded Wader" Battle Pet |learnpet Gilded Wader##2938
step
_Congratulations!_
You Collected the "Gilded Wader" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Golden Cloudfeather",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet drops from Cloudfeather Guardian in Bastion.",
keywords={"Flying","Bastion"},
pet=2925,
},[[
step
kill Cloudfeather Guardian##170932
|tip It will land around this area.
|tip Open the world map and click on the "Cloudfeather Guardian" boss icon to load the guide and help you accomplish this.
collect Golden Cloudfeather##180812 |goto Bastion/0 50.84,58.56
|tip This has a 91% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Golden Cloudfeather##180812
Learn the "Golden Cloudfeather" Battle Pet |learnpet Golden Cloudfeather##2925
step
_Congratulations!_
You Collected the "Golden Cloudfeather" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gorm Harrier",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Aerto treasure in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2921,
},[[
step
click Aerto##171156
|tip The neutral wasps around you will turn hostile after you click his body.
collect Gorm Harrier##180630 |goto Ardenweald/0 56.00,21.02
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Gorm Harrier##180630
Learn the "Gorm Harrier" Battle Pet |learnpet Gorm Harrier##2921
step
_Congratulations!_
You Collected the "Gorm Harrier" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gorm Needler",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet drops from Deifir the Untamed in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2920,
},[[
step
kill Deifir the Untamed##164238
|tip Open your world map and click on the "Deifer the Untamed" boss icon to load the guide and help you accomplish this.
collect Gorm Needler##180631 |goto Ardenweald/0 47.48,28.63
|tip This has a 94.11% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Gorm Needler##180631
Learn the "Gorm Needler" Battle Pet |learnpet Gorm Needler##2920
step
_Congratulations!_
You Collected the "Gorm Needler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gorm Rootstinger",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Dreamshrine Basin and Elder Stand in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2919,
},[[
step
clicknpc Gorm Rootstinger##171229
|tip You can find more around Elder Stand.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Gorm Rootstinger" Battle Pet |learnpet Gorm Rootstinger##2919 |goto Ardenweald/0 66.70,53.30
You can find more around [30.41,50.29]
step
_Congratulations!_
You Collected the "Gorm Rootstinger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Helpful Glimmerfly",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the quest How to catch a Glimmerfly in Bastion.",
keywords={"Flying","Bastion"},
pet=2928,
},[[
step
talk Kowalskos##164640
|tip This pet is cageable, meaning you can purchase it from the Auction House.
accept Broken Wings##59262 |goto Bastion/0 42.83,42.73
step
kill Ariella##164819
|tip She is flying around this area.
collect Ariella's Wing##175791 |q 59262/1 |goto 46.36,36.71
step
talk Kowalskos##164640
turnin Broken Wings##59262 |goto 42.83,42.72
accept Feathers of Flight##59263 |goto 42.83,42.72
step
kill Swiftwing Larion##160569+
collect Larion Flight Feather##175792 |q 59263/1 |goto 46.25,35.90
step
talk Kowalskos##164640
turnin Feathers of Flight##59263 |goto 42.83,42.73
accept Flight Test##60660 |goto 42.83,42.73
step
talk Kowalskos##164640
Tell him _"Ready when you are"_
Talk to Kowalskos |q 60660/1 |goto 42.83,42.73
step
Watch the dialogue
|tip He will run up the cliff and jump back down to this point.
Observe Kowalskos' Flight Test |q 60660/2 |goto 42.83,42.73
step
talk Kowalskos##164640
turnin Flight Test##60660 |goto 42.83,42.73
accept More Wings!##59348 |goto 42.83,42.73
accept Strings and Things##59351 |goto 42.83,42.73
stickystart "Collect_Etherwyrm_Filament"
step
click Animyllis Bloom##346108+
|tip They look like blue and white flowers around this area.
collect Animyllis Bloom##175968 |q 59348/1 |goto 48.65,47.31
step
label "Collect_Etherwyrm_Filament"
Kill Etherwyrm enemies around this area
collect Etherwyrm Filament##175967 |q 59351/1 |goto 46.62,47.62
step
talk Kowalskos##164640
turnin More Wings!##59348 |goto 42.83,42.73
turnin Strings and Things##59351 |goto 42.83,42.73
accept How to Catch a Glimmerfly##59311 |goto 42.83,42.73
step
use the Animyllis Bloom##176812
|tip Use it near Starving Glimmerflies around this area.
clicknpc Starving Glimmerfly##165077+
Capture #5# Glimmerflies |q 59311/1 |goto 42.07,29.91
step
talk Kowalskos##164640
turnin How to Catch a Glimmerfly##59311 |goto 42.83,42.73
step
use the Helpful Glimmerfly##180839
Learn the "Helpful Glimmerfly" Battle Pet |learnpet Helpful Glimmerfly##2928
step
_Congratulations!_
You Collected the "Helpful Glimmerfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Larion Cub",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Ascended Supplies in Bastion.",
keywords={"Flying","Bastion"},
pet=3064,
},[[
step
Reach Exalted Reputation With The Ascended |complete rep('The Ascended') == Exalted |or
|tip Use "The Ascended" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Larion Cub##3064 |or
step
label "Turnin_Supply_Quest"
talk Adjutant Nikos##160470
turnin Supplies from The Ascended##61097 |goto Bastion/0 52.24,47.10 |region heros_rest |future |or
|tip This quest will become available to turn in after you earn 10k reputation for "The Ascended".
|tip You can earn reputation for "The Ascended" by completing various world quests in Ardenweald.
|tip This quest is repeatable.
'|learnpet Larion Cub##3064 |or
step
use the Ascended Supplies##180647
collect Larion Cub##184399 |or
|tip It may take several attempts to get this.
'|complete itemcount(180647) == 0 and itemcount(184399) == 0 and not haspet(3064) |next "Turnin_Supply_Quest" |or
'|learnpet Larion Cub##3064 |or
step
use the Larion Cub##184399
Learn the "Larion Cub" Battle Pet |learnpet Larion Cub##3064
step
_Congratulations!_
You Collected the "Larion Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Larion Pouncer",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet drops from the rare boss Larionrider Orstus in Bastion.",
keywords={"Flying","Bastion"},
pet=3063,
},[[
step
Click the Anima Gateway |goto Bastion/0 24.49,22.77 < 30 |walk
click Black Bell##356677
|tip Members of the Kyrian covenant have to level their "Anima Conductor" to tier 3 and power up the "Citadel of Loyalty" conduit.
|tip Use the "Kyrian Anima Conductor" guide to help you accomplish this.
|tip This bell can only be activated by a member of the Kyrian covenant.
|tip If you are not aligned with the Kyrian covenant you can still participate in this fight; you will just have to wait for someone from the Kyrian covenant to ring the bell.
kill Larionrider Orstus##156340
|tip You may need help with this.
collect Larion Pouncer##184401 |goto 22.65,22.84
|tip This has a 6.96% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Larion Pouncer##184401
Learn the "Larion Pouncer" Battle Pet |learnpet Larion Pouncer##3063
step
_Congratulations!_
You Collected the "Larion Pouncer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Necroray Spawnling",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Glutharn's Decay in Maldraxxus.",
keywords={"Flying","Maldraxxus"},
pet=3052,
},[[
step
clicknpc Necroray Spawnling##175024
|tip They can be found flying around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Necroray Spawnling" Battle Pet |learnpet Necroray Spawnling##3052 |goto Maldraxxus/0 67.89,51.34
They can also be found around [45.07,31.58]
step
_Congratulations!_
You Collected the "Necroray Spawnling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pearlwing Heron",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained several different ways depending on which covenant you are aligned with.",
keywords={"Flying","Venthyr","Night","Fae","Kyrian","Necrolord"},
pet=2923,
},[[
step
Upgrade The Ember Court to Tier 3 |complete covenantfeature("Covenant Unique") >= 3 |only if  Venthyr
Upgrade the Queen's Conservatory to Tier 2 |complete covenantfeature("Covenant Unique") >= 2 |only if  NightFae
Upgrade the Path of Ascension to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Kyrian
Upgrade the Abomination Factory to Tier 1 |complete covenantfeature("Covenant Unique") >= 1 |only if  Necrolord
|tip Use the "Venthyr Ember Court" leveling guides to accomplish this. |only if  Venthyr
|tip Use the "Night Fae Queen's Conservatory" guide to accomplish this. |only if  NightFae
|tip Use the "Kyrian Path of Ascension" leveling guide to accomplish this. |only if  Kyrian
|tip Use the "Necrolord Abomination Factory" leveling guide to accomplish this. |only if  Necrolord
step
click Droman Aliothe's Extravagant Tribute##356716
|tip This is awarded at the end of Ember Court from Droman Aliothe when she becomes best friends with you.
|tip Use the "Venthyr Ember Court" guides to help you accomplish this.
collect Pearlwing Heron##180628
|tip This has a .7% chance to drop from "Droman Aliothe's Extravagant Tribute", it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
|only if  Venthyr
step
click Queen's Conservatory Cache##350978+
|tip Use 4 "Wildseed Root Grain" on the 4 "Anima Catalyst Plots", then use "Divine Untamed Spirit" on "Wildseed of Regrowth" with the 4 "Anima Catalyst Plots" nearby. |only if  NightFae
|tip Wait 7 days for incubation then loot the "Queen's Conservatory Cache".
collect Pearlwing Heron##180628
|tip This has a .4% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
|only if  NightFae
step
Earn The Hoot of the Issue Achievement |complete achieved(14852)
|tip Use the "The Hoot of the Issue" Achievement guide to accomplish this.
|only if  Kyrian
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Pearlwing Heron##2923 |or
|only if  Kyrian
step
talk Zeleskos##171981
|tip He is upstairs.
buy Pearlwing Heron##180628 |goto Elysian Hold/1 31.01,47.25
|tip This costs 250 Polished Pet Charms.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
|only if  Kyrian
step
Reach Honored Reputation with the Stitchmasters |complete rep("Stitchmasters") >= Honored |only if  Necrolord
|tip Use the "Stitchmasters" reputation guide to accomplish this.
|only if  Necrolord
step
Collect #1000# Reservoir Anima |complete curcount(1813) >= 1000
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
|only if  Necrolord
step
talk Atticus##159238
|tip Use the "Atticus (Abomination)" guide to unlock this vendor if you already haven't.
buy Pearlwing Heron##180628 |goto Maldraxxus/0 55.27,68.32
|tip This costs 1000 Reservoir Anima.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
|only if  Necrolord
step
use the Pearlwing Heron##180628
Learn the "Pearlwing Heron" Battle Pet |learnpet Pearlwing Heron##2923
step
_Congratulations!_
You Collected the "Pearlwing Heron" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Starmoth",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Glitterfall Basin in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=3082,
},[[
step
clicknpc Starmoth##176021
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Starmoth" Battle Pet |learnpet Starmoth##3082 |goto Ardenweald/0 52.43,33.68
step
_Congratulations!_
You Collected the "Starmoth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Stoneskin Dredwing Pup",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Court of Harvesters Supplies in Revendreth.",
keywords={"Flying","Revendreth"},
pet=3006,
},[[
step
Reach Exalted Reputation With the Court of Harvesters |complete rep('Court of Harvesters') == Exalted |or
|tip Use the "Court of Harvesters" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Stoneskin Dredwing Pup##3006 |or
step
label "Turnin_Supply_Quest"
Enter the building |goto Revendreth/0 62.29,63.42 < 30 |walk
talk Mistress Mihaela##156822
|tip Inside the building.
turnin Supplies from the Court of Harvesters##61100 |goto 61.31,63.78 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for the "Court of Harvesters".
|tip You can earn reputation for the "Court of Harvesters" by completing various world quests in Revendreth.
|tip This quest is repeatable.
'|learnpet Stoneskin Dredwing Pup##3006 |or
step
use the Court of Harvesters Supplies##180648
collect Stonewing Dredwing Pup##180601 |or
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|complete itemcount(180648) == 0 and itemcount(180601) == 0 and not haspet(3006) |next "Turnin_Supply_Quest" |or
'|learnpet Stoneskin Dredwing Pup##3006 |or
step
use the Stonewing Dredwing Pup##180601
Learn the "Stoneskin Dredwing Pup" Battle Pet |learnpet Stoneskin Dredwing Pup##3006
step
_Congratulations!_
You Collected the "Stoneskin Dredwing Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Stony",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Forgotten Chests in Revendreth.",
keywords={"Flying","Revendreth"},
pet=3012,
},[[
step
Join the Venthyr Covenant |complete  Venthyr
|tip You must be a member of the Venthyr covenant to collect this pet.
step
talk Simone##166133
|tip Inside the building.
|tip She will appear as a vendor when you unlock the tier 3 Transport Network for the Venthyr covenant.
|tip Use the "Venthyr Transport Network" leveling guide to help you accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
buy 3 Handcrafted Mirror Repair Kit##181363 |goto Sinfall/0 47.6,59.6
|tip They cost 20 Infused Ruby each.
step
use the Handcrafted Mirror Repair Kit##181363+
|tip Use them on "Broken Mirrors" around Revendreth.
|tip Open your map and look for "Broken Mirrors" icons and head towards the location.
|tip There will be 3 "Broken Mirrors" that can be repaired daily, their locations will reset each week.
click Forgotten Chest##351948
|tip Once a "Broken Mirror" is repaird you can walk through it and loot a "Forgotten Chest".
collect Stony's Infused Ruby##183855
|tip This has a 3% chance to drop, it may take several attempts to get.
step
use the Stony's Infused Ruby##183855
Learn the "Stony" Battle Pet |learnpet Stony##3012
step
_Congratulations!_
You Collected the "Stony" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\The Count",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from The Count for 99 Infused Ruby in Revendreth.",
keywords={"Flying","Revendreth"},
pet=3009,
},[[
step
talk The Count##173488
Choose _<Wake The Count.>_
collect The Count's Pendant##182612 |goto Revendreth/0 57.38,43.37
|tip This costs 99 Infused Ruby to unlock.
|tip You can get Infused Ruby by completing world quests and dailies around Revendreth.
|tip You can use our world quest and Revendreth covenant daily guides to help you complete these quests.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the The Count's Pendant##182612
Learn the "The Count" Battle Pet |learnpet The Count##3009
step
_Congratulations!_
You Collected the "The Count" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tranquil Wader",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Highland Path in Ardenweald.",
keywords={"Flying","Ardenweald"},
pet=2924,
},[[
step
clicknpc Tranquil Wader##171228
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tranquil Wader" Battle Pet |learnpet Tranquil Wader##2924 |goto Ardenweald/0 55.18,59.95
step
_Congratulations!_
You Collected the "Tranquil Wader" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Vibrant Glimmerfly",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Bastion.",
keywords={"Flying","Bastion"},
pet=2929,
},[[
step
clicknpc Vibrant Glimmerfly##171668
|tip They can be found all around Bastion.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Vibrant Glimmerfly" Battle Pet |learnpet Vibrant Glimmerfly##2929 |goto Bastion/0 46.63,55.96
step
_Congratulations!_
You Collected the "Vibrant Glimmerfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wader Chick",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Aspirant's Crucible in Bastion.",
keywords={"Flying","Bastion"},
pet=2939,
},[[
step
clicknpc Wader Chick##171712
|tip They can be found in the ponds around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Wader Chick" Battle Pet |learnpet Wader Chick##2939 |goto Bastion/0 52.96,84.78
You can find more around [53.74,32.71]
step
_Congratulations!_
You Collected the "Wader Chick" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wild Etherwyrm",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Mnemonic Locus in Bastion.",
keywords={"Flying","Bastion"},
pet=2943,
},[[
step
clicknpc Wild Etherwyrm##171666
|tip They can be found along the ledges of the cliff around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Wild Etherwyrm" Battle Pet |learnpet Wild Etherwyrm##2943 |goto Bastion/0 55.92,58.63
step
_Congratulations!_
You Collected the "Wild Etherwyrm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Court Messenger",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Revendreth after reaching revered reputation with the Court of Harvesters.",
keywords={"Humanoid","Revendreth"},
pet=2899,
},[[
step
Reach Revered Reputation With the Court of Harvesters |complete rep('Court of Harvesters') >= Revered
|tip Use the "Court of Harvesters" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Court Messenger##2899 |or
step
Enter the building |goto Revendreth/0 62.29,63.42 < 30 |walk
talk Mistress Mihaela##156822
|tip Inside the building.
buy Court Messenger Scroll##180593 |goto 61.31,63.78
|tip This costs 250 Polished Pet Charms.
step
use the Court Messenger Scroll##180593
Learn the "Court Messenger" Battle Pet |learnpet Court Messenger##2899
step
_Congratulations!_
You Collected the "Court Messenger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dal",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained after completing the world quest A Stolen Stone Fiend in Revendreth.",
keywords={"Humanoid","Revendreth"},
pet=2900,
},[[
step
talk Penkle##170189
Choose _<Take the Cage Key_>
|tip Penkle becomes available to talk to when you complete the "A Stolen Stone Fiend" world quest.
|tip Use the "A Stolen Stone Fiend" world quest guide to help you complete the quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Cage Key##180270 |goto Revendreth/0 45.30,47.91
step
use the Cage Key##180270
|tip Use it on the cage next to Penkle.
|tip There is a chance the cage will not unlock, if that happens you will have to come back and complete the world quest again.
collect Dal's Courier Badge##183859 |goto 45.22,47.84
step
use the Dal's Courier Badge##183859
Learn the "Dal" Battle Pet |learnpet Dal##2900
step
_Congratulations!_
You Collected the "Dal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dredger Butler",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is obtained after you level The Ember Court to tier 2 and complete the quest Dredging up an Assistant for the Venthy covenant.",
keywords={"Humanoid","Venthyr"},
pet=2967,
},[[
step
Upgrade The Ember Court to Tier 2 |complete covenantfeature("Covenant Unique") >= 2
|tip Use the "Venthyr The Ember Court" leveling guide to help you accomplish this.
step
collect Dredger Butler's Contract##182683
|tip This is awarded to you after completing the quest "Dredging up an Assistant".
|tip Continue using the "Venthyr The Ember Court" leveling guide, you will eventually come across this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Dredger Butler's Contract##182683
Learn the "Dredger Butler" Battle Pet |learnpet Dredger Butler##2967
step
_Congratulations!_
You Collected the "Dredger Butler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Glimr",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the Guardian of the Smallest quest chain in the Grizzly Hills.",
keywords={"Humanoid","Grizzly","Hills"},
pet=2888,
},[[
step
click Glimmerfin Scale##60605
|tip Run up to the murloc on the iceburg around this area.
|tip He will not drop the quest item if you approach him while on your mount.
|tip He will drop the glimmerfin scale as he runs away.
|tip If the murloc isn't there you will have to wait for him to respawn.
accept Glimmerfin Scale##60605 |goto Grizzly Hills/0 18.47,88.25
step
talk King Mrgl-Mrgl##25197
turnin Glimmerfin Scale##60605 |goto Borean Tundra/0 43.50,13.97
accept Glimmerfin Welcome##60606 |goto 43.50,13.97
step
kill Scuttleclaw Sandshell##169436+
|tip Underwater.
|tip You can use the Elixer of Water Breathing in your inventory to breath underwater for 30 mins.
collect Meaty Crab Chunk##180010 |q 60606/1 |goto Grizzly Hills/0 22.02,90.73
step
talk Glimmergut##169414
|tip He is downstairs inside of the sunken ship.
turnin Glimmerfin Welcome##60606 |goto 17.81,93.21
accept A Big Horkin' Task##60614 |goto 17.81,93.21
step
kill Horker##169460
collect Pile of Blubberfat##180025 |q 60614/1 |goto 10.36,85.20
step
talk Glimmergut##169414
|tip He is downstairs inside of the sunken ship.
turnin A Big Horkin' Task##60614 |goto 17.82,93.22
accept Seer of the Waves##60615 |goto 17.82,93.22
step
talk Glimmerfin Oracle##169415
|tip He is down in the hull of the sunken ship.
turnin Seer of the Waves##60615 |goto 17.06,93.76
accept Pearl in the Deeps##60616 |goto 17.06,93.76
step
click Giant Pearl##352915
|tip It is underwater.
|tip This is a fatigue zone so move quickly.
|tip Avoid the giant snake.
collect Giant Pearl##180026 |q 60616/1 |goto 21.77,95.57
step
talk Glimmerfin Oracle##169415
|tip He is down in the hull of the sunken ship.
turnin Pearl in the Deeps##60616 |goto 17.05,93.77
accept Trainer's Test##60617 |goto 17.05,93.77
step
talk Trainer Grrglin##169417
_Tell him "Begin pet battle"_
|tip His team is all aquatic.
Defeat Trainer Grrglin |q 60617/1 |goto 21.48,88.72
step
talk Glimmerfin Oracle##169415
|tip He is down in the hull of the sunken ship.
turnin Trainer's Test##60617 |goto 17.06,93.76
accept Wrap it Up##60619 |goto 17.06,93.76
step
click Bulbous Seaweed Stalk##352926
|tip It is underwater.
|tip This is a fatigue zone so move quickly.
|tip Avoid touching the electrified seaweed.
collect Bulbous Seaweed Stalk##180031 |q 60619/3 |goto 12.72,96.72
step
click Young Seaweed Stalk##352925
|tip It is underwater.
|tip This is a fatigue zone so move quickly.
|tip Avoid touching the electrified seaweed.
collect Young Seaweed Stalk##180032 |q 60619/2 |goto 8.90,94.28
step
click Warm Seaweed Stalk##352924
|tip It is underwater.
|tip This is a fatigue zone so move quickly.
|tip Avoid touching the electrified seaweed.
collect Warm Seaweed Stalk##180033 |q 60619/1 |goto 11.16,95.02
step
talk Glimmerfin Oracle##169415
|tip He is down in the hull of the sunken ship.
turnin Wrap it Up##60619 |goto 17.06,93.76
accept Guardian of the Smallest##60620 |goto 17.06,93.76
step
kill Great Mua'kin##169520
|tip He is underwater.
Slay Great Mua'kin |q 60620/1 |goto 8.79,91.20
step
talk Glimmerfin Oracle##169415
|tip He is down in the hull of the sunken ship.
turnin Guardian of the Smallest##60620 |goto 17.06,93.76
step
collect Glimr's Cracked Egg##180034
step
use the Glimr's Cracked Egg##180034
Learn the "Glimr" Battle Pet |learnpet Glimr##2888
step
_Congratulations!_
You Collected the "Glimr" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Lost Featherling",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from elite mobs in Bastion.",
keywords={"Humanoid","Bastion"},
pet=3062,
},[[
step
Join the Kyrian Covenant |complete  Kyrian
|tip You must be a member of the Kyrian covenant to collect this pet.
step
Kill enemies around this area
collect Lost Featherling##184397 |goto Bastion/0 28.85,23.05
|tip This pet will only drop if you are aligned with the Kyrian covenant.
|tip This has a .3% chance to drop, it may take a while to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Lost Featherling##184397
Learn the "Lost Featherling" Battle Pet |learnpet Lost Featherling##3062
step
_Congratulations!_
You Collected the "Lost Featherling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Ruffle",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Kyrian covenant quartermaster once you reach renown level 27.",
keywords={"Humanoid","Bastion"},
pet=3042,
},[[
step
Reach Renown Level 27 |complete covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
stickystart "Collect_Grateful_Offerings"
step
Collect #1500# Reservoir Anima |complete curcount(1813) >= 1500 |or
|tip Complete covenant calling quests using the "Kyrian Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
'|learnpet Ruffle##3042 |or
step
label "Collect_Grateful_Offerings"
Collect #30# Grateful Offerings |complete curcount(1885) >= 30 |or
|tip Complete daily quests using the "Kyrian Anima Conductor Daily Quests" guide.
'|learnpet Ruffle##3042 |or
step
talk Adjutant Galos##174937
|tip Downstairs inside the building.
buy Ruffle##184350 |n
|tip This battle pet can be purchased for 1500 Reservoir Anima and 30 Grateful Offerings.
|tip If you are not aligned with the Kyrian covenant you will have to purchase it from the Auction House.
collect Ruffle##184350 |goto Elysian Hold/1 63.41,30.45
step
use the Ruffle##184350
Learn the "Ruffle" Battle Pet |learnpet Ruffle##3042
step
_Congratulations!_
You Collected the "Ruffle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Spriggan Trickster",{
patch='90001',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after unlocking the Family Exorcist achievement.",
keywords={"Humanoid","Family","Exorcist"},
pet=3067,
},[[
step
Earn the Family Exorcist Achievement |complete achieved(14879)
|tip Use the "Family Exorcist" achievement guide to help you accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Spriggan Trickster##184509
step
use the Spriggan Trickster##184509
Learn the "Spiggan Trickster" Battle Pet |learnpet Spriggan Trickster##3067
step
_Congratulations!_
You Collected the "Spriggan Trickster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Steward Featherling",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Bastion after earning the Inside the Park Home Run achievement.",
keywords={"Humanoid","Bastion"},
pet=3061,
},[[
step
Join the Kyrian Covenant |complete  Kyrian
|tip You must be a member of the Kyrian covenant to collect this pet.
step
Earn the Inside the Park Home Run Achievement |complete achieved(14859)
|tip Use the "Inside the Park Home Run" achievement guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Steward Featherling##3061 |or
step
talk Zeleskos##171981
|tip He is upstairs.
buy Steward Featherling##184398 |n
|tip This costs 250 Polished Pet Charms.
collect Steward Featherling##184398 |goto Elysian Hold/1 31.01,47.25
step
use the Steward Featherling##184398
Learn the "Steward Featherling" Battle Pet |learnpet Steward Featherling##3061
step
_Congratulations!_
You Collected the "Steward Featherling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Trapped Stonefiend",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Bleakwood Chests in Revendreth.",
keywords={"Humanoid","Revendreth"},
pet=2901,
},[[
step
click Bleakwood Chest##353232
|tip Open your world map and see if any Bleakwood Chests are available in Revendreth.
|tip They spawn in the North-Western corner of Revendreth.
|tip Click on the Bleakwood Chest icon on your mini map to pull up a guide to help you reach the location.
collect Trapped Stonefiend##180592
|tip This has a 9% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Trapped Stonefiend##180592
Learn the "Trapped Stonefiend" Battle Pet |learnpet Trapped Stonefiend##2901
step
_Congratulations!_
You Collected the "Trapped Stonefiend" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Winterleaf Spriggan",{
patch='90001',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after earning the Abhorrent Adversaries of the Afterlife achievement.",
keywords={"Humanoid","Abhorrent","Adversaries","Of","The","Afterlife"},
pet=3079,
},[[
step
Earn the Abhorrent Adversaries of the Afterlife Achievement |complete achieved(14881)
|tip Use the "Abhorrent Adversaries of the Afterlife" achievement guide to help you earn this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Winterleaf Spriggan##184512
step
use the Winterleaf Spriggan##184512
Learn the "Winterleaf Spriggan" Battle Pet |learnpet Winterleaf Spriggan##3079
step
_Congratulations!_
You Collected the "Winterleaf Spriggan" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Animated Cruor",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Forgotten Wounds in Maldraxxus.",
keywords={"Magic","Maldraxxus"},
pet=3051,
},[[
step
clicknpc Animated Cruor##175023
|tip They can be found in the pools around this area.
|tip They can also be found around the House of Constructs in western Maldraxxus.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Animated Cruor" Battle Pet |learnpet Animated Cruor##3051 |goto Maldraxxus/0 55.66,35.65
You can find more around [35.25,34.20]
step
_Congratulations!_
You Collected the "Animated Cruor" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Animated Tome",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare boss Scrivener Lenua in Revendreth.",
keywords={"Magic","Revendreth"},
pet=2893,
},[[
step
click Forbidden Tomes##160753+
|tip They look like black books on the ground around this area.
|tip They appear as yellow dots on your mini map.
|tip Deliver 4 "Forbidden Tomes" to the building to summon "Scrivener Lenua".
|tip This rare boss event is not always available.
|tip When it is active you will see a progress bar at the top of your screen showing how many "Forbidden Tomes" need to be delivered inside the building.
kill Scrivener Lenua##160675
|tip He will float down and go inside the building where you placed the tomes.
collect Animated Tome##180587 |goto Revendreth/0 37.91,68.64 |or
|tip It may take several attempts to get this.
'|learnpet Animated Tome##2893 |or
step
use the Animated Tome##180587
Learn the "Animated Tome" Battle Pet |learnpet Animated Tome##2893
step
_Congratulations!_
You Collected the "Animated Tome" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Archivist's Quill",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold from a vendor after reaching exalted reputation with The Avowed.",
keywords={"Magic","Revendreth"},
pet=3054,
},[[
step
Reach Exalted Reputation with The Avowed |complete rep('The Avowed') == Exalted |or
|tip Use the "The Avowed" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Archivist's Quill##3054 |or
step
Collect #1000# Sinstone Fragments |complete curcount(1816) >= 1000 |or
|tip They are dropped by mobs in Revendreth.
|tip They can also be looted from rares and treasures.
'|learnpet Archivist's Quill##3054 |or
step
talk Archivist Janeera##173705
|tip Inside the building.
|tip This costs 1000 Sinstone Fragments.
buy Archivist's Quill##184221 |goto Revendreth/0 73.07,52.14 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Archivist's Quill##3054 |or
step
use the Archivist's Quill##184221
Learn the "Archivist's Quill" Battle Pet |learnpet Archivist's Quill##3054
step
_Congratulations!_
You Collected the "Archivist's Quill" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Bubbling Pustule",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Slime-Coated Crate treasure in Maldraxxus.",
keywords={"Magic","Maldraxxus"},
pet=2952,
},[[
step
click Slime-Coated Crate##354856
|tip Check your world map to see if the "Slime-Coated Crate" treasure is active then click on the icon to load the guide.
|tip It can spawn in multiple places around the House of Plagues in Maldraxxus.
collect Bubbling Pustule##181262
|tip This has a 3% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Bubbling Pustule##181262
Learn the "Bubbling Pustule" Battle Pet |learnpet Bubbling Pustule##2952
step
_Congratulations!_
You Collected the "Bubbling Pustule" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Death Seeker",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is obtained after completing Layer 2 of the Twisting Corridors in Torghast.",
keywords={"Magic","Torghast"},
pet=3041,
},[[
step
collect Death Seeker##183412
|tip This pet is rewarded to you after completing layer 2 of the Twisting Corridors in Torghast.
|tip Use the "Torghast Questline" leveling guide to help you accomplish this.
step
use the Death Seeker##183412
Learn the "Death Seeker" Battle Pet |learnpet Death Seeker##3041
step
_Congratulations!_
You Collected the "Death Seeker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Invertebrate Oil",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet drops from the rare boss Oily Invertebrate in Maldraxxus.",
keywords={"Magic","Maldraxxus"},
pet=2960,
},[[
step
kill Oily Invertebrate##157312
|tip This boss is summoned once you bring 10 of each colored items to the "Pool of Mixed Monstrosities".
|tip The recipe to summon the "Oily Invertebrate" is 10 red, 10 yellow, and 10 blue.
|tip The slimes around this area will sometimes drop a colored item once they die that you can pick up and dump in to the "Pool of Mixed Monstrosities".
|tip The red "Viscous Oil" drops from "Burning Extract" and "Colossal Plasma".
|tip The blue "Mephitic Goo" drops from "Colossol Goo" and "Prodigious Animate".
|tip The Yellow "Miscible Ooze" drops from "Diseased Remnant" and "Infectious Monstrosity".
collect Invertebrate Oil##181270 |goto Maldraxxus/0 58.58,73.95
You can find yellow slimes around here [57.90,64.40]
|tip This has a 3.53% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Invertebrate Oil##181270
Learn the "Invertebrate Oil" Battle Pet |learnpet Invertebrate Oil##2960
step
_Congratulations!_
You Collected the "Invertebrate Oil" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Iridescent Ooze",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Plaguefallen Chest in Maldraxxus.",
keywords={"Magic","Maldraxxus"},
pet=3045,
},[[
step
Follow the path down |goto Maldraxxus/0 62.13,77.09 < 20 |walk
Stand in the ooze until you gain 10 Stacks of Concentrated Plague
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Gain the Plaguefallen Debuff |havebuff spell:330092 |goto 62.55,76.56
step
Click the Plaguefallen Pipe |goto 61.62,76.70 < 10 |walk
click Plaguefallen Chest##355886
|tip It is on top of the wall.
|tip Click the Plaguefallen Pipe inside the cave while you are Plaguefallen to teleport on top of the wall to get to the chest.
collect Iridescent Ooze##183515 |goto 57.66,75.85
step
use the Iridescent Ooze##183515
Learn the "Iridescent Ooze" Battle Pet |learnpet Iridescent Ooze##3045
step
_Congratulations!_
You Collected the "Iridescent Ooze" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jiggles",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Necrolords Quartermaster after reaching renown 27.",
keywords={"Magic","Necrolords"},
pet=3043,
},[[
step
Reach Renown Level 27 |complete covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolords Daily Quests" guide to accomplish this.
stickystart "Collect_Grateful_Offerings"
step
Collect #1500# Reservoir Anima |complete curcount(1813) >= 1500
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
step
label "Collect_Grateful_Offerings"
Collect #30# Grateful Offerings |complete curcount(1885) >= 30 |or
|tip Complete daily quests using the "Necrolords Anima Conductor Daily Quests" guide. |complete  Necrolord
'|learnpet Jiggles##3043 |or
step
talk Su Zettai##172176
|tip Inside the building.
buy Jiggles##183601 |n
|tip This pet can only be purchased by people aligned with the Necrolord covenant.
|tip This pet costs 1500 "Reservoir Anima" and 30 "Grateful Offerings".
collect Jiggles##183601	|goto Seat of the Primus/0 52.64,41.06
step
use the Jiggles##183601
Learn the "Jiggles" Battle Pet |learnpet Jiggles##3043
step
_Congratulations!_
You Collected the "Jiggles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lost Quill",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after returning the Forbidden Ink to the Lost Quill.",
keywords={"Magic","Revendreth"},
pet=3008,
},[[
step
click Forbidden Ink##357467
|tip Inside the building.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Forbidden Ink##182475 |goto Revendreth/0 37.66,68.75
step
Follow the path carefully |goto 38.75,68.06 < 10 |walk
Drop down to the ledge below |goto 37.65,69.29 < 10
talk Lost Quill##173449
Choose _"Here, I found this ink bottle."_
collect Refilling Inkwell##182613 |goto 37.73,69.25
step
use the Refilling Inkwell##182613
Learn the "Lost Quill" Battle Pet |learnpet Lost Quill##3008
step
_Congratulations!_
You Collected the "Lost Quill" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Maw Stalker",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any of the final bosses inside the Soulforges and Skoldus Hall located in Torghast.",
keywords={"Magic","Torghast"},
pet=3033,
},[[
step
kill The Grand Malleare##159755
kill Arch-Suppressor Laguas##171422
kill Cellblock Sentinel##151331
kill Observer Zelgar##169859
collect Maw Stalker##183194
|tip This pet has a 3% chance to drop from any of these final bosses inside the Soulforges and Skoldus Hall located in Torghast.
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Maw Stalker##183194
Learn the "Maw Stalker" Battle Pet |learnpet Maw Stalker##3033
step
_Congratulations!_
You Collected the "Maw Stalker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Plagueborn Slime",{
patch='90001',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the quest Slime, Anyone? in Maldraxxus.",
keywords={"Magic","Maldraxxus"},
pet=2798,
},[[
step
talk Baroness Draka##166535
|tip This pet is cageable, meaning you can purchase it from the Auction House.
accept The House of Plagues##59130 |goto Maldraxxus/0 50.2,67.6
step
talk Plague Deviser Marileth##159930
turnin The House of Plagues##59130 |goto 56.48,57.27
accept Bug Bites##58011 |goto 56.48,57.27
accept Spores Galore##58016 |goto 56.48,57.27
stickystart "Collect_Stringy_Spore"
step
kill Virulent Pest##159856+
collect Bloated Venom Sac |q 58011/1 |goto 53.19,59.17
step
label "Collect_Stringy_Spore"
click Stringy Spore##170191+
|tip They look like tall weeds around this area.
|tip Walk backwards once you click on them to pull them out of the ground.
collect Stringy Spore |q 58016/1 |goto 53.19,59.17
step
talk Plague Deviser Marileth##159930
turnin Bug Bites##58011 |goto 56.48,57.27
turnin Spores Galore##58016 |goto 56.48,57.27
accept Slime, Anyone?##58027 |goto 56.48,57.27
step
click Cauldron of Creation##338858
Stir the Cauldron |q 58027/1 |goto 56.41,57.18
step
click Pile of Spores##340713
Incorporate the Spores |q 58027/2 |goto 56.54,57.07
step
click Jar of Venom##340712
Imbue the Venom |q 58027/3 |goto 56.52,57.15
step
click Cauldron of Creation##338858
Mix the Concoction |q 58027/4 |goto 56.41,57.18
step
talk Plague Deviser Marileth##159930
turnin Slime, Anyone?##58027 |goto 56.48,57.27
step
collect Plagueborn Slime##173891|n
use the Plagueborn Slime##173891
Learn the "Plagueborn Slime" Battle Pet |learnpet Plagueborn Slime##2798
step
_Congratulations!_
You Collected the "Plagueborn Slime" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Primordial Bogling",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the rare boss Bog Beast in Revendreth.",
keywords={"Magic","Revendreth"},
pet=2896,
},[[
step
kill Primordial Sludge##166206+
collect Primordial Muck##177880 |n
use the Primordial Muck##177880
|tip Use it near the mud pools around this area.
|tip Keep throwing the "Primodial Muck" until "Bog Beast" spawns.
kill Bog Beast##166292
|tip He will only spawn when the World Quest "Muck It Up" is active.
collect Bucket of Primordial Sludge##180588 |goto Revendreth/0 34.66,33.15
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Bucket of Primordial Sludge##180588
Learn the "Primordial Bogling" Battle Pet |learnpet Primordial Bogling##2896
step
_Congratulations!_
You Collected the "Primordial Bogling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shy Melvin",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Deadly Dapperling in Maldraxxus.",
keywords={"Magic","Maldraxxus"},
pet=2953,
},[[
step
kill Deadly Dapperling##162711
collect Shy Melvin##181263 |goto Maldraxxus/0 76.87,56.98
|tip This has a 34.23% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Shy Melvin##181263
Learn the "Shy Melvin" Battle Pet |learnpet Shy Melvin##2953
step
_Congratulations!_
You Collected the "Shy Melvin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Sludge Feeler",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Margrave Stradama in the Plaguefall Mythic dungeon.",
keywords={"Magic","Maldraxxus"},
pet=2961,
},[[
step
kill Margrave Stradama##164267
|tip Queue up for the Plaguefall dungeon on Mythic difficulty.
collect Sludge Feeler##181271
|tip This pet will only drop on Mythic difficulty.
|tip This has a .51% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Sludge Feeler##181271
Learn the "Sludge Feeler" Battle Pet |learnpet Sludge Feeler##2961
step
_Congratulations!_
You Collected the "Sludge Feeler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Will of Remornia",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Sire Denathrius in the Castle Nathria raid.",
keywords={"Magic","Castle","Nathria"},
pet=3036,
},[[
step
kill Sire Denathrius##168938
|tip Use the "Castle Nathria" raid guide to help you accompish this.
collect Pommel Jewel of Remornia##183395
|tip This has a 3.72% chance to drop, it may take several attempts to get.
step
use the Pommel Jewel of Remornia##183395
Learn the "Will of Remornia" Battle Pet |learnpet Will of Remornia##3036
step
_Congratulations!_
You Collected the "Will of Remornia" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\PHA7-YNX",{
patch='90001',
source='Crafted',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have level 100 Shadowlands Engineering.",
keywords={"Mechanical","Bastion"},
pet=2889,
},[[
step
Reach Exalted Reputation With The Ascended |complete rep('The Ascended') == Exalted
|tip Use "The Ascended" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Adjutant Nikos##160470
buy Schematic: PHA7-YNX##183097 |n
|tip Level 100 Shadowlands Engineers can use this schematic to create the PHA7-YNX battle pet.
|tip Use the "Shadowlands Engineering 1-100" profession leveling guide to help you accomplish this.
collect PHA7-YNX##180208 |goto Bastion/0 52.24,47.10 |region heros_rest
step
use the PHA7-YNX##180208
Learn the "PHA7-YNX" Battle Pet |learnpet PHA7-YNX##2889
step
_Congratulations!_
You Collected the "PHA7-YNX" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Backbone",{
patch='90001',
source='Crafted',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted using the Abomination Table in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=2958,
},[[
step
Join the Necrolords Covenant |complete  Necrolord |or
|tip You must be a member of the Necrolords covenant to collect this pet.
'|learnpet Backbone##2958 |or
step
Upgrade Abomination Factory to Tier 2 |complete covenantfeature("Covenant Unique") >= 2 |or
|tip Use the "Necrolord Abomination Factory" guide to accomplish this.
'|learnpet Backbone##2958 |or
step
Collect #750# Reservoir Anima |complete curcount(1813) >= 750
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
step
click Abominable Stitching Table##167042
|tip Backbone is listed under Specialty Items.
|tip It requires 1 Pallid Bone, 5 Malleable Flesh, and 750 Reservoir Anima to craft.
collect Backbone##181268 |goto Maldraxxus/0 54.93,68.80 |or
'|learnpet Backbone##2958 |or
step
use the Backbone##181268
Learn the "Backbone" Battle Pet |learnpet Backbone##2958
step
_Congratulations!_
You Collected the "Backbone" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Burdened Soul",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from Secret Treasures in Revendreth.",
keywords={"Undead","Revendreth"},
pet=2894,
},[[
step
click Secret Treasure##351541
|tip This can spawn in various places all over Revendreth.
|tip Open your world map to see if the "Secret Treasure" is active and click on the icon to load the guide.
collect Soullocked Sinstone##180589
|tip This has an 8% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Soullocked Sinstone##180589
Learn the "Burdened Soul" Battle Pet |learnpet Burdened Soul##2894
step
_Congratulations!_
You Collected the "Burdened Soul" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Carpal",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Skeletal Hand Fragments treasure in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=3025,
},[[
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Carpal##3025 |or
step
talk Nalcorn Talsen##173003
|tip This costs 250 Polished Pet Charms.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
buy Animated Radius##183112 |goto Maldraxxus/0 50.76,53.38 |or
'|learnpet Carpal##3025 |or
step
collect Animated Ulna##183111 |or
|tip This is a rare reward for completing Battle Pet World Quests in Maldraxxus.
|tip It may take a while to get this.
'|learnpet Carpal##3025 |or
step
click Skeletal Hand Fragments##358315
collect Flexing Phalanges##183113 |goto 47.39,62.11 |or
|tip You will need "Animated Radius" and "Animated Ulna" in your inventory to collect this.
'|learnpet Carpal##3025 |or
step
use Flexing Phalanges##183113
collect Carpal##183114 |or
'|learnpet Carpal##3025 |or
step
use Carpal##183114
Learn the "Carpal" Battle Pet |learnpet Carpal##3025
step
_Congratulations!_
You Collected the "Carpal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Clutch",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the House of Constructs in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=2950,
},[[
step
clicknpc Clutch##172130
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Clutch" Battle Pet |learnpet Clutch##2950 	|goto Maldraxxus/0 30.89,28.15
step
_Congratulations!_
You Collected the "Clutch" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lost Soul",{
patch='90001',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Grove of Terror and the Menagerie of the Master in Revendreth.",
keywords={"Undead","Revendreth"},
pet=2895,
},[[
step
clicknpc Lost Soul##171123
|tip This is a rare spawn, it may take a while to find this.
|tip They tend to spawn around the Grove of Terror and the Menagerie of the Master.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lost Soul" Battle Pet |learnpet Lost Soul##2895 |goto Revendreth/0 46.70,75.22
They can also spawn around here [50.03,31.86]
step
_Congratulations!_
You Collected the "Lost Soul" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lucy",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Dirty Glinting Objects in Ardenweald, Bastion, Maldraxxus, and Revendreth.",
keywords={"Undead","Bastion","Ardenweald","Maldraxxus","Revendreth"},
pet=3066,
},[[
step
Kill enemies around this area
click Dirty Glinting Objects##175390
|tip It looks like a lootable object on the ground underneath your trainee.
|tip Every 5 minutes one of these will appear underneath your trainee after you kill something.
|tip The "Dirty Glinting Objects" will only spawn during the covenant daily calling quest "Training Our Forces".
|tip Each covenant has a special trainee that will be able to find the "Dirty Glinting Objects" during this calling quest.
|tip There is also a chance you will be assigned a trainee that can not find the "Dirty Glinting Objects".
|tip The trainee you need for the Venthyr covenant is named "Drippy".
|tip The trainee you need for the Night Fae covenant is named "Twinklewings".
|tip The trainee you need for the Kyrian covenant is named "Deos".
|tip The trainee you need for the Necrolord covenant is named "Dregs".
collect Lucy's Lost Collar##184507
|tip This is a rare drop, it may take a while to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Lucy's Lost Collar##184507
Learn the "Lucy" Battle Pet |learnpet Lucy##3066
step
_Congratulations!_
You Collected the "Lucy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Maw Crawler",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any of the final bosses inside Skoldus Hall located in Torghast.",
keywords={"Undead","Torghast"},
pet=3029,
},[[
step
kill Writhing Soulmass##156015
kill Kosarus the Fallen##153451
kill Gherus the Chained##155945
kill Observer Zelgar##169859
kill Custodian Thonar##153165
collect Maw Crawler##183191
|tip This pet has a 2% chance to drop from any of these final bosses inside Skoldus Hall located in Torghast.
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Maw Crawler##183191
Learn the "Maw Crawler" Battle Pet |learnpet Maw Crawler##3029
step
_Congratulations!_
You Collected the "Maw Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Micromancer",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Supplies of the Undying Army in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=2959,
},[[
step
Reach Exalted Reputation With The Undying Army |complete rep('The Undying Army') == Exalted
|tip Use "The Undying Army" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Nalcorn Talsen##173003
turnin Supplies from The Undying Army##61095 |goto Maldraxxus/0 50.76,53.38
|tip This quest will become available to turn in after you earn 10k reputation for "The Undying Army".
|tip You can earn reputation for "The Undying Army" by completing various world quests in Maldraxxus.
|tip This quest is repeatable.
step
collect Supplies of the Undying Army##180646 |n
use the Supplies of the Undying Army##180646
collect Micromancer's Mystical Cowl##181269
|tip It may take several attempts to get this.
step
use the Micromancer's Mystical Cowl##181269
Learn the "Micromancer" Battle Pet |learnpet Micromancer##2959
step
_Congratulations!_
You Collected the "Micromancer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Mu'Dud",{
patch='90001',
source='Crafted',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted from the Necrolord Abomination Factory.",
keywords={"Undead","Abomination","Factory"},
pet=2963,
},[[
step
Join the Necrolords Covenant |complete  Necrolord
|tip You must be a member of the Necrolords covenant to collect this pet.
step
Upgrade the Abomination Factory to Tier 4 |complete covenantfeature("Covenant Unique") >= 4
|tip Use the "Necrolord Abomination Factory" leveling guide to help you accomplish this.
step
Collect #1600# Reservoir Anima |complete curcount(1813) >= 1600
|tip Complete covenant calling quests using the "Necrolords Daily Quests" guide.
|tip You can also kill rares and collect treasures using the POI guides.
step
clicknpc Abominable Stitching Table##167042
collect Mu'Dud##181282 |goto Maldraxxus/0 54.95,68.77
|tip You can find this pet under the "Specialty Items" tab.
|tip It takes 10 Malleable Flesh, 5 Superior Parts, and 1.6k Reservoir Anima to create this pet.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Mu'Dud##181282
Learn the "Mu'Dud" Battle Pet |learnpet Mu'Dud##172153
step
_Congratulations!_
You Collected the "Mu'Dud" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Oonar's Arm",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Oonar's Arm treasure in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=2944,
},[[
step
talk Slumbar Valorum##161702
|tip This pet is cageable, meaning you can purchase it from the Auction House.
home Seat of the Primus |goto Maldraxxus/0 50.95,53.16
step
click Edible Redcap##327367+
|tip Make sure your Hearthstone is available to use.
|tip You will need 4 stacks of the "Edible Redcap" buff.
|tip They look like tall thin mushrooms with red caps around this area.
|tip Your movement speed will be reduced significantly with each mushroom you eat, try to find 4 clumped up close together before you eat any.
|tip Quickly use your hearthstone after you gain your 4th buff.
Gain the Edible Redcap Buff |havebuff spell:327367 |goto 76.86,57.06
step
click Oonar's Arm##335655
|tip It is attached to the sword that is stuck in the ground around this area.
|tip You must have 4 stacks of the "Edible Redcaps" buff in order to have enough strength to pull the arm off of the sword.
collect Oonar's Arm##181164 |goto 51.42,48.48
step
use the Oonar's Arm##181164
Learn the "Oonar's Arm" Battle Pet |learnpet Oonar's Arm##2944
step
_Congratulations!_
You Collected the "Oonar's Arm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Putrid Geist",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Auction House.",
keywords={"Undead","Auction","House"},
pet=3046,
},[[
step
buy Putrid Geist##183621 |n
|tip This battle pet was available during a Shadowlands pre launch event that is no longer available.
|tip This pet can only be purchased from the Auction House.
collect Putrid Geist##183621
step
use the Putrid Geist##183621
Learn the "Putrid Geist" Battle Pet |learnpet Putrid Geist##3046
step
_Congratulations!_
You Collected the "Putrid Geist" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Severs",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the final bosses in The Upper Reaches located inside of Torghast.",
keywords={"Undead","Torghast"},
pet=3028,
},[[
step
kill Patrician Cromwell##157122
kill Synod##159190
kill Goxul the Devourer##170418
kill Arch-Suppressor Laguas##171422
kill Gherus the Chained##155945
collect Severs##183117
|tip This has a 5% chance to drop from any of these final bosses in The Upper Reaches located inside of Torghast.
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Severs##183117
Learn the "Severs" Battle Pet |learnpet Severs##3028
step
_Congratulations!_
You Collected the "Severs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Sharpclaw",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Sanngror the Torturer in the Maw.",
keywords={"Undead","The","Maw"},
pet=3040,
},[[
step
kill Sanngror the Torturer##172521
|tip Inside the cave.
collect Sharpclaw##183410 |goto The Maw/0 55.52,62.98
|tip This has a 9.77% chance to drop, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Sharpclaw##183410
Learn the "Sharpclaw" Battle Pet |learnpet Sharpclaw##3040
step
_Congratulations!_
You Collected the "Sharpclaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Spinebug",{
patch='90001',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from the Spinebug Treasure in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=3047,
},[[
step
Follow the path up |goto Maldraxxus/0 38.35,32.46 < 30 |walk
Continue following the path |goto 40.71,32.88 < 30
Enter the cave |goto 41.55,20.41 < 30
clicknpc Spinebug##174663
|tip Inside the cave.
collect Spinebug##174677 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Spinebug" Battle Pet |learnpet Spinebug##3047 |goto 41.51,19.48
step
_Congratulations!_
You Collected the "Spinebug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Toenail",{
patch='90001',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=2962,
},[[
step
Earn Revered Reputation with The Undying Army |complete rep("The Undying Army") >= Revered
|tip Use the "The Undying Army" reputation guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect 250 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Toenail##2962 |or
step
talk Nalcorn Talsen##173003
buy Toenail##181272 |n
|tip This costs 250 Polished Pet Charms.
collect Toenail##181272 |goto Maldraxxus/0 50.76,53.38
step
use the Toenail##181272
Learn the "Toenail" Battle Pet |learnpet Toenail##2962
step
_Congratulations!_
You Collected the "Toenail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Torghast Lurker",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the final bosses in Mort'regar located inside of Torghast.",
keywords={"Undead","Torghast"},
pet=3034,
},[[
step
kill Binder Baritas##153011
kill Watchers of Death##153174
kill Maw of the Maw##153382
kill Warden of Souls##152995
kill Goxul the Devourer##170418
collect Torghast Lurker##183195
|tip This has a 5% chance to drop from any of these final bosses in Mort'regar located inside of Torghast.
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Torghast Lurker##183195
Learn the "Torghast Lurker" Battle Pet |learnpet Torghast Lurker##3034
step
_Congratulations!_
You Collected the "Torghast Lurker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Writhing Spine",{
patch='90001',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Scunner in Maldraxxus.",
keywords={"Undead","Maldraxxus"},
pet=2957,
},[[
step
kill Scunner##158406
collect Writhing Spine##181267 |goto Maldraxxus/0 62.06,76.02
|tip This has a 1.94% chance to drop, it may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
use the Writhing Spine##181267
Learn the "Writhing Spine" Battle Pet |learnpet Writhing Spine##2957
step
_Congratulations!_
You Collected the "Writhing Spine" Battle Pet.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Amaranthine Stinger",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Gralebboih in The Maw.",
keywords={"Flying","The","Maw"},
pet=3117,
},[[
step
kill Gralebboih##177979
collect Amaranthine Stinger##186449 |goto The Maw/0 28.6,48.4 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
It can also be found around:
[22.2,50.8]
'|learnpet Amaranthine Stinger##3117 |or
step
use the Amaranthine Stinger##186449
Learn the "Amaranthine Stinger" Battle Pet |learnpet Amaranthine Stinger##3117
step
_Congratulations!_
You Collected the "Amaranthine Stinger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Animite Broodling",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Estuary of Awakening in Korthia.",
keywords={"Flying","Korthia"},
pet=3102,
},[[
step
clicknpc Animite Broodling##179131
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Animite Broodling" Battle Pet |learnpet Animite Broodling##3102 |goto Korthia/0 40.47,48.01
step
_Congratulations!_
You Collected the "Animite Broodling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Anxious Nibbler",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Mauler's Outlook in Korthia.",
keywords={"Critter","Korthia"},
pet=3134,
},[[
step
clicknpc Anxious Nibbler##179248
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Anxious Nibbler" Battle Pet |learnpet Anxious Nibbler##3134 |goto Korthia/0 47.29,30.00
step
_Congratulations!_
You Collected the "Anxious Nibbler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Chompy",{
patch='90100',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to be rewarded to you after completing either of the Korthian daily quests Oozing with Character or Local Reagents.",
keywords={"Flying","Korthia"},
pet=3127,
},[[
step
Reach Renown Level 44 |complete covenantrenown() >= 44 |or
|tip Use the "Chains of Domination Questline" leveling guide to accomplish this.
'|learnpet Chompy##3127 |or
step
collect Chompy##186548 |or
|tip This pet has a chance to be rewarded to you after completing either of the Korthian daily quests "Oozing with Character" or "Local Reagents".
|tip Use the "Korthian Daily Quests" guide to accomplish this.
|tip It may take several attempts to get.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
'|learnpet Chompy##3127 |or
step
use Chompy##186548
Learn the "Chompy" Battle Pet |learnpet Chompy##3127
step
_Congratulations!_
You Collected the "Chompy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Clinging Remains",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in The Maw.",
keywords={"Undead","The","Maw"},
pet=3115,
},[[
step
clicknpc Clinging Remains##179179
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Clinging Remains" Battle Pet |learnpet Clinging Remains##3115 |goto The Maw/0 28.8,33.6
You can also find it around:
[24.2,29.0]
[36.8,31.0]
[30.4,42.4]
[34.0,49.2]
[39.6,61.4]
step
_Congratulations!_
You Collected the "Clinging Remains" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Copperback Etherwyrm",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Ascended War Chests in The Maw.",
keywords={"Flying","The","Maw"},
pet=3103,
},[[
step
Complete Kyrian Assaults in The Maw
|tip Use the "Covenant Assault" leveling guide to accomplish this.
collect Ascended War Chest##185993 |or
'|learnpet Copperback Etherwyrm##3103 |or
step
use the Ascended War Chest##185993
collect Copperback Etherwyrm##186546 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Copperback Etherwyrm##3103 |or
step
use the Copperback Etherwyrm##186546
Learn the "Copperback Etherwyrm" Battle Pet |learnpet Copperback Etherwyrm##3103
step
_Congratulations!_
You Collected the "Copperback Etherwyrm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Curious Purrkin",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed inside the dungeon Tazavesh, the Veiled Market.",
keywords={"Beast","Tazavesh","The","Veiled","Market"},
pet=3108,
},[[
step
Enter Tazavesh, the Veiled Market |c |goto Tazavesh, the Veiled Market/7 0.00,0.00
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to unlock the dungeon.
step
clicknpc Curious Purrkin##179164
|tip This pet has a chance to spawn at the beginning of the dungeon in The Gilded Landing.
|tip You can keep resetting the dungeon until the pet spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Curious Purrkin" Battle Pet |learnpet Curious Purrkin##3108
step
_Congratulations!_
You Collected the "Curious Purrkin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Daisy",{
patch='90100',
source='BlizzardStore',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard Store.",
keywords={"Beast","Blizzard","Store"},
pet=2780,
},[[
step
collect Daisy##158142
|tip This pet can be claimed for free from the Blizzard Store until August 1st 2021.
|tip After August 1st this pet will no longer be free, but still available to purchase.
|tip This pet will appear in your mailbox after purchase.
step
use the Daisy##158142
Learn the "Daisy" Battle Pet |learnpet Daisy##2780
step
_Congratulations!_
You Collected the "Daisy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Damp Skrat",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed inside the dungeon Tazavesh, the Veiled Market.",
keywords={"Critter","Tazavesh","The","Veiled","Market"},
pet=3111,
},[[
step
Enter Tazavesh, the Veiled Market |c |goto Tazavesh, the Veiled Market/7 0.00,0.00
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to unlock the dungeon.
step
clicknpc Damp Skrat##179167
|tip This pet has a chance to spawn at the beginning of the dungeon in The Gilded Landing.
|tip You can keep resetting the dungeon until the pet spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Damp Skrat" Battle Pet |learnpet Damp Skrat##3111
step
_Congratulations!_
You Collected the "Damp Skrat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Deathroach",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Maw.",
keywords={"Critter","The","Maw"},
pet=3123,
},[[
step
clicknpc Deathroach##179226
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Deathroach" Battle Pet |learnpet Deathroach##3123 |goto The Maw/0 50.76,67.75
step
_Congratulations!_
You Collected the "Deathroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Devourling",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Korthia.",
keywords={"Beast","Korthia"},
pet=3139,
},[[
step
clicknpc Devourling##179256
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Devourling" Battle Pet |learnpet Devourling##3139 |goto Korthia/0 54.74,21.99
step
_Congratulations!_
You Collected the "Devourling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Domestic Aunian",{
patch='90100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased for 50 Polished Pet Charms and 1500 Stygia after becoming Honored with Death's Advance.",
keywords={"Critter","Death's","Advance"},
pet=3138,
},[[
step
Reach Honored Reputation with Death's Advance |complete rep("Death's Advance") >= Honored |or
|tip Use the "Death's Advance" reputation guide to accomplish this.
'|learnpet Domestic Aunian##3138 |or
step
collect 50 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Domestic Aunian##3138 |or
step
Collect #1500# Stygia |complete curcount(1767) >= 1500 |or
|tip Kill enemies or complete daily and world quests inside of The Maw to earn this currency.
|tip Use "The Maw World Quests" and "Ve'nari Daily Quests" guides to accomplish this.
'|learnpet Domestic Aunian##3138 |or
step
talk Duchess Mynx##179321
buy Domestic Aunian##186543 |goto Korthia/0 63.31,23.33 |or
|tip This costs 50 Polished Pet Charms and 1,500 Stygia.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
'|learnpet Domestic Aunian##3138 |or
step
use the Domestic Aunian##186543
Learn the "Domestic Aunian" Battle Pet |learnpet Domestic Aunian##3138
step
_Congratulations!_
You Collected the "Domestic Aunian" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Affliction",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Seeker's Quorum in Korthia.",
keywords={"Magic","Korthia"},
pet=3126,
},[[
step
clicknpc Eye of Affliction##179229
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Eye of Affliction" Battle Pet |learnpet Eye of Affliction##3126 |goto Korthia/0 49.62,53.25
You can find more around [45.29,50.68]
step
_Congratulations!_
You Collected the "Eye of Affliction" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Allseeing",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Eye of the Jailer in the Sanctum of Domination raid.",
keywords={"Magic","Sanctum","Of","Domination"},
pet=3128,
},[[
step
kill Eye of the Jailer##180018
|tip Use the "Sanctum of Domination" raid guide to accomplish this.
collect Eye of Allseeing##186554 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Eye of Allseeing##3128 |or
step
use the Eye of Allseeing##186554
Learn the "Eye of Allseeing" Battle Pet |learnpet Eye of Allseeing##3128
step
_Congratulations!_
You Collected the "Eye of Allseeing" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Extermination",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Eye of the Jailer in the Sanctum of Domination raid Mythic difficulty.",
keywords={"Magic","Sanctum","Of","Domination"},
pet=3129,
},[[
step
kill Eye of the Jailer##180018
|tip Use the "Sanctum of Domination" raid guide to accomplish this.
collect Eye of Extermination##186555 |or
|tip This will only drop on Mythic difficulty.
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Eye of Extermination##3129 |or
step
use the Eye of Extermination##186555
Learn the "Eye of Extermination" Battle Pet |learnpet Eye of Extermination##3129
step
_Congratulations!_
You Collected the "Eye of Extermination" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Flawless Amethyst Baubleworm",{
patch='90100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased for 10,000 Polished Pet Charms from Keeper Ta'hult in Oribos.",
keywords={"Beast","Oribos"},
pet=3097,
},[[
step
collect 10000 Polished Pet Charm##163036 |or
|tip Complete battle pet world quests to earn this currency.
|tip Use the "World Quests" guides to accomplish this.
'|learnpet Flawless Amethyst Baubleworm##3097 |or
step
talk Keeper Ta'hult##156769
buy Flawless Amethyst Baubleworm##185919 |goto Oribos/0 65.21,67.56 |or
|tip This costs 10,000 Polished Pet Charms.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
'|learnpet Flawless Amethyst Baubleworm##3097 |or
step
use the Flawless Amethyst Baubleworm##185919
Learn the "Flawless Amethyst Baubleworm" Battle Pet |learnpet Flawless Amethyst Baubleworm##3097
step
_Congratulations!_
You Collected the "Flawless Amethyst Baubleworm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fodder",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from War Chest of the Undying Army in The Maw.",
keywords={"Undead","The","Maw"},
pet=3114,
},[[
step
Complete Necrolord Assaults in The Maw
|tip Use the "Covenant Assault" leveling guide to accomplish this.
collect War Chest of the Undying Army##185992 |or
'|learnpet Fodder##3114 |or
step
use the War Chest of the Undying Army##185992
collect Fodder##186557 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Fodder##3114 |or
step
use the Fodder##186557
Learn the "Fodder" Battle Pet |learnpet Fodder##3114
step
_Congratulations!_
You Collected the "Fodder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gilded Darknight",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any of the final bosses inside Adamant Vaults located in Torghast.",
keywords={"Humanoid","Torghast"},
pet=3130,
},[[
step
kill Troz'igal the Oppressor##179526
kill Vault Sentinel##176578
kill Vault Aegis##179433
collect Gilded Darknight##186549 |or
|tip To unlock the "Adamant Vaults" you must five-gem a level 9-12 Torghast run with at least 200 points.
|tip You will be able to continue your Torghast run in the "Adamant Vaults" where you will you will have to complete 2 more floors, one of which will contain a boss fight.
|tip This pet has a 25-30% chance to drop from any of these final bosses inside the "Adamant Vaults" located in Torghast.
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Gilded Darknight##3130 |or
step
use the Gilded Darknight##186549
Learn the "Gilded Darknight" Battle Pet |learnpet Gilded Darknight##3130
step
_Congratulations!_
You Collected the "Gilded Darknight" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Gizmo",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from P.O.S.T. Master in Tazavesh, the Veiled Market dungeon on Mythic difficulty.",
keywords={"Beast","Tazavesh","The","Veiled","Market"},
pet=3110,
},[[
step
Enter Tazavesh, the Veiled Market |c |goto Tazavesh, the Veiled Market/7 0.00,0.00
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to unlock the dungeon.
step
kill P.O.S.T. Master##175646
|tip Use the "Tazavesh, the Veiled Market" dungeon guide to accomplish this.
collect Gizmo##186534 |or
|tip This will only drop on Mythic difficulty.
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Gizmo##3110 |or
step
use the Gizmo##186534
Learn the "Gizmo" Battle Pet |learnpet Gizmo##3110
step
_Congratulations!_
You Collected the "Gizmo" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Gnashtooth",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Supplies of the Archivists' Codex in Korthia.",
keywords={"Beast","Supplies","Of","The","Archivists'","Codex"},
pet=3140,
},[[
step
Reach Tier 6 Reputation with The Archivists' Codex |complete rep("The Archivists' Codex") == Tier6 |or
|tip Use the "Archivists' of Korthia Questline" leveling guide to accomplish this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Gnashtooth##3140 |or
step
label "Turnin_Supply_Quest"
Enter the cave |goto Korthia/0 61.63,21.71 < 30 |walk
talk Archivist Roh-Suir##178257
|tip Inside the cave.
turnin Supplies from The Archivists' Codex##64266 |goto 62.78,22.61 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for The Archivists' Codex.
|tip You can earn reputation by completing dailies, killing rares, and opening treasures in Korthia.
|tip This quest is repeatable.
'|learnpet Gnashtooth##3140 |or
step
use the Supplies of the Archivists' Codex##187028
collect Gnashtooth##186538
|tip This may take several attempts to get.
'|complete itemcount(187028) == 0 and itemcount(186538) == 0 and not haspet(3140) |next "Turnin_Supply_Quest" |or
'|learnpet Gnashtooth##3140 |or
step
use the Gnashtooth##186538
Learn the "Gnashtooth" Battle Pet |learnpet Gnashtooth##3140
step
_Congratulations!_
You Collected the "Gnashtooth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Golden Eye",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Helsworn Soulseekers around Desmotaeron in The Maw.",
keywords={"Magic","The","Maw"},
pet=3125,
},[[
step
kill Helsworn Seeker##177132+
collect Golden Eye##186564 |goto The Maw/0 65.8,58.0 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Golden Eye##3125 |or
step
use the Golden Eye##186564
Learn the "Golden Eye" Battle Pet |learnpet Golden Eye##3125
step
_Congratulations!_
You Collected the "Golden Eye" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Grappling Gauntlet",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Mawsworn enemies in Korthia.",
keywords={"Undead","Korthia"},
pet=3121,
},[[
step
Kill Mawsworn enemies around this area
collect Grappling Gauntlet##186559 |goto Korthia/0 49.86,53.24 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Grappling Gauntlet##3121 |or
step
use the Grappling Gauntlet##186559
Learn the "Grappling Gauntlet" Battle Pet |learnpet Grappling Gauntlet##3121
step
_Congratulations!_
You Collected the "Grappling Gauntlet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Grip of Terror",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in The Maw.",
keywords={"Undead","The","Maw"},
pet=3120,
},[[
step
clicknpc Grip of Terror##179219
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Grip of Terror" Battle Pet |learnpet Grip of Terror##3120 |goto The Maw/0 33.0,35.4
You can also find it around:
[43.8,42.0]
[43.2,48.4]
[21.2,45.2]
[33.0,62.2]
[29.6,14.2]
[63.8,52.8]
step
_Congratulations!_
You Collected the "Grip of Terror" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Infused Etherwyrm",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from an Etherwyrm Cage in The Maw.",
keywords={"Flying","The","Maw"},
pet=3099,
},[[
step
talk Lord Herne##178828
|tip He will be available to talk to when the Night Fae covenant assault is active.
Tell him _"I will join the hunt, Lord Herne."_
Report to Lord Herne |q 63823/1 |goto The Maw/0 22.48,43.41 |or
'|learnpet Infused Etherwyrm##3099 |or
step
talk Margrave Sin'dane##178890
accept A Shady Place##63951 |goto 22.57,43.27 |or
'|learnpet Infused Etherwyrm##3099 |or
step
use the Unbalanced Riftstone##187012
Use the Unstable Rifstone to Enter the Rift |q 63951/1 |goto 22.05,36.91 |or
'|learnpet Infused Etherwyrm##3099 |or
step
kill Elusive Keybinder##179030
collect Etherwyrm Cage key##186190 |goto 23.68,40.50 |or
They can also be found around:
[19.6,43.6]
[20.0,32.8]
'|learnpet Infused Etherwyrm##3099 |or
step
Enter the cave |goto 21.1,38.9 < 30 |walk
click Etherwyrm Cage##368653
|tip Use the "Exit the Rift" action button on your screen to exit the rift.
|tip Inside the cave.
collect Infused Etherwyrm##186191 |goto 23.1,42.3 |or
|tip It may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Infused Etherwyrm##3099 |or
step
use the Infused Etherwyrm##186191
Learn the "Infused Etherwyrm" Battle Pet |learnpet Infused Etherwyrm##3099
step
_Congratulations!_
You Collected the "Infused Etherwyrm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Invasive Buzzer",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from War Chest of the Wild Hunt in The Maw.",
keywords={"Flying","The","Maw"},
pet=3116,
},[[
step
Complete Night Fae Assaults in The Maw
|tip Use the "Covenant Assault" leveling guide to accomplish this.
collect War Chest of the Wild Hunt##185991 |or
'|learnpet Invasive Buzzer##3116 |or
step
use the War Chest of the Wild Hunt##185991
collect Invasive Buzzer##186547 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Invasive Buzzer##3116 |or
step
use the Invasive Buzzer##186547
Learn the "Invasive Buzzer" Battle Pet |learnpet Invasive Buzzer##3116
step
_Congratulations!_
You Collected the "Invasive Buzzer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Irongrasp",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Soulrender Dormazain in the Sanctum of Domination raid.",
keywords={"Undead","Sanctum","Of","Domination"},
pet=3122,
},[[
step
kill Soulrender Dormazain##175727
|tip Use the "Sanctum of Domination" raid guide to accomplish this.
collect Irongrasp##186558 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Irongrasp##3122 |or
step
use the Irongrasp##186558
Learn the "Irongrasp" Battle Pet |learnpet Irongrasp##3122
step
_Congratulations!_
You Collected the "Irongrasp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Korthian Specimen",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Zelnithop in Korthia.",
keywords={"Critter","Korthia"},
pet=3136,
},[[
step
Enter the cave |goto Korthia/0 30.15,55.11 < 30 |walk
kill Zelnithop##177336+
|tip Inside the cave.
collect Korthian Specimen##186542 |goto Gromit Hollow/0 44.30,68.04 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Korthian Specimen##3136 |or
step
use the Korthian Specimen##186542
Learn the "Korthian Specimen" Battle Pet |learnpet Korthian Specimen##3136
step
_Congratulations!_
You Collected the "Korthian Specimen" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lil'Abom",{
patch='90100',
source='Discovery',
author="support@zygorguides.com",
description="\nThis battle pet can be created after collecting 5 Lil'Abom parts in The Maw.",
keywords={"Undead","The","Maw"},
pet=3098,
},[[
step
Reach Tentative Reputation with Ve'nari |complete rep("Ve'nari") >= Tentative |or
|tip You can earn reputation by completing dailies, killing rares, and opening chests in The Maw.
|tip Use the "Ve'nari Daily Quests" guide to accomplish this.
'|learnpet Lil'Abom##3098 |or
step
talk Ve'nari##162804
turnin Rule 5: Be Audacious##60284 |goto The Maw/0 46.90,41.70 |or
|tip Use "The Maw" leveling guide to accomplish this.
'|learnpet Lil'Abom##3098 |or
step
click Lil'Abom Head##186183
|tip There is a chance this won't be available.
collect Lil'Abom Head##186183 |goto 32.2,56.0 |or
It can also be found around:
[27.4,56.6]
[30.3,63.3]
'|learnpet Lil'Abom##3098 |or
step
Enter the cave |goto 38.84,58.53 < 30 |walk
click Lil'Abom Right Hand##186186
|tip Inside the cave.
|tip There is a chance this won't be available.
collect Lil'Abom Right Hand##186186 |goto 37.93,62.63 |or
'|learnpet Lil'Abom##3098 |or
step
click Lil'Abom Spare Arm##186187
|tip There is a chance this won't be available.
collect Lil'Abom Spare Arm##186187 |goto 39.2,66.5 |or
It can also be found around:
[33.3,65.8]
'|learnpet Lil'Abom##3098 |or
step
Enter the cave |goto 36.92,67.41 < 30 |walk
click Lil'Abom Torso##186184
|tip Inside the cave.
|tip There is a chance this won't be available.
collect Lil'Abom Torso##186184 |goto 36.9,67.4 |or
It can also be found around:
[36.4,64.4]
[39.9,62.6]
'|learnpet Lil'Abom##3098 |or
step
click Lil'Abom Legs##186185
|tip There is a chance this won't be available.
collect Lil'Abom Legs##186185 |goto 29.4,67.2 |or
'|learnpet Lil'Abom##3098 |or
step
use the Lil'Abom Legs##186185
collect Lil'Abom##186188 |or
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Lil'Abom##3098 |or
step
use the Lil'Abom##186188
Learn the "Lil'Abom" Battle Pet |learnpet Lil'Abom##3098
step
_Congratulations!_
You Collected the "Lil'Abom" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lost Limb",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in The Maw.",
keywords={"Undead","The","Maw"},
pet=3119,
},[[
step
clicknpc Lost Limb##179183
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lost Limb" Battle Pet |learnpet Lost Limb##3119 |goto The Maw/0 31.61,31.15
step
_Congratulations!_
You Collected the "Lost Limb" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Mawsworn Minion",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Kel'Thuzad in the Sanctum of Domination raid.",
keywords={"Humanoid","Sanctum","Of","Domination"},
pet=3131,
},[[
step
kill Kel'Thuzad##15990
|tip Use the "Sanctum of Domination" raid guide to accomplish this.
collect Mawsworn Minion##186550 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Mawsworn Minion##3131 |or
step
use the Mawsworn Minion##186550
Learn the "Mawsworn Minion" Battle Pet |learnpet Mawsworn Minion##3131
step
_Congratulations!_
You Collected the "Mawsworn Minion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mosscoated Gromit",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Death's Advance Supplies in Korthia.",
keywords={"Critter","Korthia"},
pet=3137,
},[[
step
Reach Exalted Reputation with Death's Advance |complete rep("Death's Advance") == Exalted |or
|tip Earn reputation by completing dailies, killing rares, and opening chests in Korthia.
|tip Use the "Korthia Daily Quests" guide to accomplish this.
'|learnpet Mosscoated Gromit##3137 |or
step
label "Turnin_Supply_Quest"
talk Duchess Mynx##179321
turnin Supplies from Death's Advance##64012 |goto Korthia/0 63.32,23.33 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for Death's Advance.
|tip You can earn reputation by completing dailies, killing rares, and opening chests in Korthia.
|tip This quest is repeatable.
'|learnpet Mosscoated Gromit##3137 |or
step
use the Death's Advance Supplies##186650
collect Mosscoated Hopper##186541
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|complete itemcount(186650) == 0 and itemcount(186541) == 0 and not haspet(3137) |next "Turnin_Supply_Quest" |or
'|learnpet Mosscoated Gromit##3137 |or
step
use the Mosscoated Hopper##186541
Learn the "Mosscoated Gromit" Battle Pet |learnpet Mosscoated Gromit##3137
step
_Congratulations!_
You Collected the "Mosscoated Gromit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rarity",{
patch='90100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Tazavesh, The Veiled Market.",
keywords={"Critter","Tazavesh","The","Veiled","Market"},
pet=3113,
},[[
step
kill Seed Stealer##166627+
or
Pickpocket enemies around this area
collect Phaedrum Lockbox##180522 |goto Ardenweald/0 43.96,21.68 |or
|tip This has a .2% chance to drop from Seed Stealers.
|tip If you are a rogue you can Pickpocket Haassert or Possessed Keepers.
|tip Pickpocketing Haassert has a 7% chance to drop the "Phaedrum Lockbox" while the Possessed Keepers have a 2% chance to drop it.
|tip It may take a while to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
You can find enemies to pickpocket around:
[45.97,74.77]
'|learnpet Rarity##3113|or
step
kill River Terrapin##163566+
or
Pickpocket enemies around this area
collect Solenium Lockbox##180533 |goto Bastion/0 40.69,46.24 |or
|tip This has a 1.4% chance to drop from River Terrapins.
|tip If you are a rogue you can pickpocket Forsworn Enforcers.
|tip Pickpocketing Forsworn Enforcers has a 17% to drop the "Solenium lockbox".
You can find enemies to pickpocket around:
[41.73,38.34]
'|learnpet Rarity##3113|or
step
Kill enemies around this area
or
Pickpocket enemies around this area
collect Oxxein Lockbox##180532 |goto Maldraxxus/0 36.96,62.21 |or
|tip Killing enemies around this area has a .5% chance to drop the "Oxxein Lockbox".
|tip Pickpocketing enemies around this area has a 2% chance to drop the "Oxxein Lockbox".
|tip Pickpocketing Captain Marjanic has a 18% chance to drop the "Oxxein Lockbox".
You can Pickpocket Captain Marjanic around:
[32.48,60.28]
'|learnpet Rarity##3113|or
step
talk Shopkeeper##180161
|tip This Shopkeeper is located after the first boss in Tazavesh, The Veiled Market.
|tip Run down the stairs to the right and he will be located in the right corner.
|tip Once you reach Shopkeeper <Cartel Xy> he will yell out "Psst. Hey, you. Unassuming visitor. Do you like small creatures?".
|tip After he says the voice line, target him and respond with /yes to open up his shop.
|tip Use the "Tazavesh, the Veiled Market Attunement" leveling guide to unlock the dungeon.
buy Rarity##186540 |or
|tip This pet costs 2,143 gold, Phaedrum Lockbox, Solenium Lockbox, and a Oxxein Lockbox.
'|learnpet Rarity##3113|or
step
use Rarity##186540
Learn the "Rarity" Battle Pet |learnpet Rarity##3113
step
_Congratulations!_
You Collected the "Rarity" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Rook",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Mysterious Gifts from Ve'nari in The Maw.",
keywords={"Humanoid","Ve'nari"},
pet=3133,
},[[
step
Reach Appreciative Reputation with Ve'nari |complete rep("Ve'nari") == Appreciative |or
|tip You can earn reputation by completing dailies, killing rares, and opening chests in The Maw.
|tip Use the "Ve'nari Daily Quests" guide to accomplish this.
'|learnpet Rook##3133 |or
step
label "Turnin_Supply_Quest"
talk Ve'nari##162804
turnin Mysterious Gifts from Ve'nari##64267 |goto The Maw/0 46.91,41.69 |future |or
|tip This quest will become available to turn in after you earn 10k reputation for Ve'nari.
|tip You can earn reputation by completing dailies, killing rares, and opening chests in The Maw.
|tip This quest is repeatable.
'|learnpet Rook##3133 |or
step
use the Mysterious Gift from Ve'nari##187029
collect Rook##186552 |or
|tip This may take several attempts to get.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|complete itemcount(187029) == 0 and itemcount(186552) == 0 and not haspet(3133) |next "Turnin_Supply_Quest" |or
'|learnpet Rook##3133 |or
step
use Rook##186552
Learn the "Rook" Battle Pet |learnpet Rook##3133
step
_Congratulations!_
You Collected the "Rook" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scavenging Skrat",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed inside the dungeon Tazavesh, the Veiled Market.",
keywords={"Critter","Tazavesh","The","Veiled","Market"},
pet=3112,
},[[
step
Enter Tazavesh, the Veiled Market |c |goto Tazavesh, the Veiled Market/7 0.00,0.00
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to unlock the dungeon.
step
clicknpc Scavenging Skrat##179168
|tip This pet has a chance to spawn at the beginning of the dungeon in The Gilded Landing.
|tip You can keep resetting the dungeon until the pet spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scavenging Skrat" Battle Pet |learnpet Scavenging Skrat##3112
step
_Congratulations!_
You Collected the "Scavenging Skrat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ruby Baubleworm",{
patch='90100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased with a Ground Gear, Robble's Wobbly Staff, and a Very Unlucky Rock from Keeper Ta'hult in Oribos.",
keywords={"Beast","Oribos"},
pet=3104,
},[[
step
kill Harvest Collector##25623+
collect Ground Gear##36812 |goto Borean Tundra/0 58.09,60.84 |or
|tip This has a 20% chance to drop from Harvest Collectors.
|tip It may take several attempts to get.
|tip You can also purchase the "Ground Gear" from the Auction House.
'|learnpet Ruby Baubleworm##3104 |or
step
Enter the Firelands Raid |goto Firelands/0 0.00,0.00 |c |or
'|learnpet Ruby Baubleworm##3104 |or
step
Kill enemies around this area
collect Robble's Wobbly Staff##62072 |or
|tip This has about a 2% chance to drop from the enemies inside the "Firelands" dungeon.
|tip It may take a while to get this.
|tip You can also purchase this from the Auction House.
'|learnpet Ruby Baubleworm##3104 |or
step
click Lucky Horace's Lucky Chest
collect Very Unlucky Rock##67410 |goto Nazmir/0 77.67,36.11 |or
|tip You can also purchase this from the Auction House.
'|learnpet Ruby Baubleworm##3104 |or
step
talk Keeper Ta'hult##156769
buy Ruby Baubleworm##186537 |goto Oribos/0 65.21,67.56 |or
|tip You will need the "Ground Gear", "Robble's Wobbly Staff", and "Very Unlucky Rock" in your inventory in order to purchase this.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
'|learnpet Ruby Baubleworm##3104 |or
step
use the Ruby Baubleworm##186537
Learn the "Ruby Baubleworm" Battle Pet |learnpet Ruby Baubleworm##3104
step
_Congratulations!_
You Collected the "Ruby Baubleworm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scurrying Mawrat",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in The Maw.",
keywords={"Critter","The","Maw"},
pet=3118,
},[[
step
clicknpc Scurrying Mawrat##179182
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scurrying Mawrat" Battle Pet |learnpet Scurrying Mawrat##3118 |goto The Maw/0 33.2,45.8
You can also find it around:
[46.8,57.6]
[48.0,72.8]
[45.8,65.2]
[60.4,66.4]
[57.4,83.8]
[63.54,75.10]
[65.2,78.6]
[57.2,83.6]
step
_Congratulations!_
You Collected the "Scurrying Mawrat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silver Purrkin",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed inside the dungeon Tazavesh, the Veiled Market.",
keywords={"Beast","Tazavesh","The","Veiled","Market"},
pet=3109,
},[[
step
Enter Tazavesh, the Veiled Market |c |goto Tazavesh, the Veiled Market/7 0.00,0.00
|tip Use the "Tazavesh, the Veiled Market Attunement" guide to unlock the dungeon.
step
clicknpc Silver Purrkin##179165
|tip This pet has a chance to spawn at the beginning of the dungeon in The Gilded Landing.
|tip You can keep resetting the dungeon until the pet spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Silver Purrkin" Battle Pet |learnpet Silver Purrkin##3109
step
_Congratulations!_
You Collected the "Silver Purrkin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Squibbles",{
patch='90100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from a Grummlepouch.",
keywords={"Mechanical","Kun-Lai","Summit"},
pet=3092,
},[[
step
talk Anthea##176655
|tip If she is not here you will have to come back the next day.
accept Temple Throwdown##63435 |goto Kun-Lai Summit/0 70.37,51.35 |or
'|learnpet Squibbles##3092 |or
step
talk Anthea##176655
tell her _"Think you can take me in a pet battle? Let's fight!"_
Defeat Anthea |q 63435/1 |goto 70.37,51.35 |or
|tip The first pet you fight is RT-3 M15, this is a level 25 mechanical pet.
|tip The second pet you fight is Squibbles, this is a level 25 flying pet.
|tip The third pet you fight is Churro, this is a level 25 beast pet.
'|learnpet Squibbles##3092 |or
step
talk Anthea##176655
turnin Temple Throwdown##63435 |goto 70.36,51.35 |or
'|learnpet Squibbles##3092 |or
step
use the Grummlepouch##184866
collect Squibbles##184867 |or
|tip It may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Squibbles##3092 |or
step
use the Squibbles##184867
Learn the "Squibbles" Battle Pet |learnpet Squibbles##3092
step
_Congratulations!_
You Collected the "Squibbles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Topaz Baubleworm",{
patch='90100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased with a Rotting Bear Carcass, Dark Iron Baby Booties, and The Stoppable Force from Keeper Ta'hult in Oribos.",
keywords={"Beast","Oribos"},
pet=3106,
},[[
step
kill Angerclaw Mauler##8958+
collect Rotting Bear Carcass##11406 |goto Felwood/0 43.98,66.14 |or
|tip This has a 80% chance to drop, it may take several attempts to get.
|tip You can also purchase this from the Auction House.
'|learnpet Topaz Baubleworm##3106 |or
step
Enter the building |goto Burning Steppes/0 21.14,38.73 < 30 |only if walking
Enter the door |goto Burning Steppes/16 55.20,84.30 < 30
Follow the path |goto 38.11,49.06 < 30
Enter the Blackrock Depths Dungeon |goto Blackrock Depths/1 0.00,0.00 |c |or
'|learnpet Topaz Baubleworm##3106 |or
step
Kill enemies around this area
collect Relic Coffer Key##11078 |n
|tip This has a 13% chance to drop from enemies inside the "Blackrock Depths" dungeon.
|tip It may take several attempts to get.
use the Relic Coffer Key##11078
|tip Use it on the "Relic Coffer" chests throughout Blackrock Depths dungeon.
collect Dark Iron Baby Booties##11944 |or
|tip This has a 5% chance to drop, it may take several attempts to get.
|tip You can also purchase this from the Auction House.
'|learnpet Topaz Baubleworm##3106 |or
step
Enter the Karazhan Raid	|goto Karazhan/1 0.00,0.00 |or
'|learnpet Topaz Baubleworm##3106 |or
step
kill Arcane Protector##16504+
|tip They are located in the Guardian's Library area near "The Curator" boss inside Karazhan.
|tip Use the "Karazhan" raid guide to help you accomplish this.
collect The Stoppable Force##25402 |or
|tip This has a 3% chance to drop, it may take several attempts to get.
|tip You can also purchase this from the Auction House.
'|learnpet Topaz Baubleworm##3106 |or
step
talk Keeper Ta'hult##156769
buy Topaz Baubleworm##186535 |goto Oribos/0 65.21,67.56 |or
|tip You will need the "Rotting Bear Carcass", "Dark Iron Baby Booties", and "The Stoppable Force" in your inventory in order to purchase this.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
'|learnpet Topaz Baubleworm##3106 |or
step
use the Topaz Baubleworm##186535
Learn the "Topaz Baubleworm" Battle Pet |learnpet Topaz Baubleworm##3106
step
_Congratulations!_
You Collected the "Topaz Baubleworm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Turquoise Baubleworm",{
patch='90100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased with a Rabbit's Foot, Large Slimy Bone, and A Frayed Knot from Keeper Ta'hult in Oribos.",
keywords={"Beast","Oribos"},
pet=3105,
},[[
step
kill Blisterpaw Hyena##5426+
collect Rabbit's Foot##3300 |goto Tanaris/0 48.08,27.34 |or
|tip This has a 75% chance to drop, it may take several attempts to get.
|tip You can also purchase this from the Auction House.
'|learnpet Turquoise Baubleworm##3105 |or
step
kill Rotting Slime##3928+
collect Large Slimy Bone##3670 |or
|tip This has a 21% chance to drop, it may take several attempts to get.
|tip You can also purchase this from the Auction House.
'|learnpet Turquoise Baubleworm##3105 |or
step
collect A Frayed Knot##6150 |goto Elwynn Forest/0 68.22,77.11 |or
|tip You can pickpocket this item from Bandits around this area if you are a rogue.
|tip This has a 5% chance to be pickpocketed, it may take several attempts to get.
|tip You can also purchase this from the Auction House.
'|learnpet Turquoise Baubleworm##3105 |or
step
talk Keeper Ta'hult##156769
buy Turquoise Baubleworm##186536 |goto Oribos/0 65.21,67.56 |or
|tip You will need the "Rabbit's Foot", "Large Slimy Bone", and "A Frayed Knot" in your inventory in order to purchase this.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
'|learnpet Turquoise Baubleworm##3105 |or
step
use the Turquoise Baubleworm##186536
Learn the "Turquoise Baubleworm" Battle Pet |learnpet Turquoise Baubleworm##3105
step
_Congratulations!_
You Collected the "Turquoise Baubleworm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Vile Deathroach",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in The Maw.",
keywords={"Critter","The","Maw"},
pet=3124,
},[[
step
clicknpc Vile Deathroach##179227
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Vile Deathroach" Battle Pet |learnpet Vile Deathroach##3124 |goto The Maw/0 33.4,46.2
You can also find it around:
[46.8,57.4]
[50.2,69.6]
[53.2,63.4]
[47.6,80.8]
[56.8,83.4]
[61.4,71.2]
[61.2,75.2]
[60.0,66.8]
[58.4,78.6]
step
_Congratulations!_
You Collected the "Vile Deathroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wild Corpsefly",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Korthia.",
keywords={"Flying","Korthia"},
pet=3141,
},[[
step
clicknpc Wild Corpsefly##179329
|tip This pet will only appear as a secondary in a pet battle.
|tip You will have to challenge pets all around Korthia and wait for it to appear.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Wild Corpsefly" Battle Pet |learnpet Wild Corpsefly##3141
step
_Congratulations!_
You Collected the "Wild Corpsefly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Young Garnetgullet",{
patch='90100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Seeker's Quorum in Korthia.",
keywords={"Critter","Korthia"},
pet=3135,
},[[
step
clicknpc Young Garnetgullet##179250
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Young Garnetgullet" Battle Pet |learnpet Young Garnetgullet##3135 |goto Korthia/0 49.26,34.71
step
_Congratulations!_
You Collected the "Young Garnetgullet" Battle Pet.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Ambystan Darter",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Ambystan Darter\" battle pet.",
keywords={"Aquatic","Zereth","Mortis","9.2"},
pet=3223,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Ambystan Darter"
stickystart "Collect_Glimmer_of_Focus"
stickystart "Collect_Ambystan_Lattice"
step
Kill enemies around this area
collect 250 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Focus"
collect Glimmer of Focus##189160
|tip It is currently unknown where this item drops from.
step
label "Collect_Ambystan_Lattice"
kill Otiosen##183746
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Ambystan Lattice##187634 |goto Zereth Mortis/0 43.30,87.62
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Ambystan Darter pet and click the "Create" button.
collect Ambystan Darter##189363 |goto 60.52,59.39
step
use the Ambystan Darter##189363
Learn the "Ambystan Darter" Battle Pet |learn Ambystan Darter##3223
step
_Congratulations!_
You Collected the "Ambystan Darter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Archetype of Metamorphosis",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Metamorphosis\" battle pet.",
keywords={"Aquatic","Zereth","Mortis","9.2"},
pet=3197,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Metamorphosis"
stickystart "Collect_Glimmer_of_Metamorphosis"
stickystart "Collect_Ambystan_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Metamorphosis"
kill Mawsworn Converter##181782+
kill Ebon Dominator##181801+
collect Glimmer of Metamorphosis##189162 |goto goto 49.32,47.98
You can find more around: |notinsticky
[45.17,51.53] |notinsticky
[46.96,57.50] |notinsticky
step
label "Collect_Ambystan_Lattice"
kill Otiosen##183746
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Ambystan Lattice##187634 |goto Zereth Mortis/0 43.30,87.62
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Metamorphosis pet and click the "Create" button.
collect Archetype of Metamorphosis##187928 |goto 60.52,59.39
step
use Archetype of Metamorphosis##187928
Learn the "Archetype of Metamorphosis" Battle Pet |learnpet Archetype of Metamorphosis##3197
step
_Congratulations!_
You Collected the "Archetype of Metamorphosis" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Archetype of Renewal",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Metamorphosis\" battle pet.",
keywords={"Aquatic","Zereth","Mortis","9.2"},
pet=3229,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Renewal"
stickystart "Collect_Glimmer_of_Renewal"
stickystart "Collect_Aurelid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Renewal"
kill Carnivorous Overgrowth##182217+
kill Creeping Brambles##182326+
collect Glimmer of Renewal##189166 |goto 48.85,83.34
You can find more around: |notinsticky
[49.19,89.75] |notinsticky
[51.13,93.89] |notinsticky
[45.85,88.15] |notinsticky
[48.48,76.98] |notinsticky
[45.94,75.48] |notinsticky
step
label "Collect_Aurelid_Lattice"
kill Hirukon##180978
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Aurelid Lattice##187636 |goto 52.28,75.41
|tip You can also fish up Aurelids during the "Fish Eyes" world quest.
|tip Use the world quest guide to accomplish this.
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Renewal pet and click the "Create" button.
collect Archetype of Renewal##189371 |goto 60.52,59.39
step
use Archetype of Renewal##189371
Learn the "Archetype of Renewal" Battle Pet |learnpet Archetype of Renewal##3229
step
_Congratulations!_
You Collected the "Archetype of Renewal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Archetype of Serenity",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Serenity\" battle pet.",
keywords={"Aquatic","Zereth","Mortis","9.2"},
pet=3181,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Serenity"
stickystart "Collect_Glimmer_of_Serenity"
stickystart "Collect_Bufonid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Serenity"
click Glimmer of Serenity##375915
|tip They look like small pyramid shaped objects.
|tip They are almost always in areas that require flying such as on top of giant floating orbs.
collect Glimmer of Serenity##189168 |goto 64.48,39.08
You can find more around: |notinsticky
[46.95,11.22] |notinsticky
[64.72,63.39] |notinsticky
[51.21,28.33] |notinsticky
[50.02,10.92] |notinsticky
[43.04,35.52] |notinsticky
[34.33,71.39] |notinsticky
[64.78,33.81] |notinsticky
[49.22,1.95] |notinsticky
[49.26,25.54] |notinsticky
[41.18,79.69] |notinsticky
[37.71,29.17] |notinsticky
[50.67,89.01] |notinsticky
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
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Serenity pet and click the "Create" button.
collect Archetype of Serenity##189382 |goto 60.52,59.39
step
use Archetype of Serenity##189382
Learn the "Archetype of Serenity" Battle Pet |learnpet Archetype of Serenity##3181
step
_Congratulations!_
You Collected the "Archetype of Serenity" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Prototickles",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Prototickles\" battle pet.",
keywords={"Aquatic","Zereth","Mortis","9.2"},
pet=3231,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Prototickles"
stickystart "Collect_Glimmer_of_Discovery"
stickystart "Collect_Aurelid_Lattice"
step
Kill enemies around this area
collect 450 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Discovery"
Kill Annelid enemies around these areas
|tip Sandwkim Serpents can also drop these items.
collect Glimmer of Discovery##189159 |goto 55.96,75.91
You can find more around: |notinsticky
[56.72,70.00] |notinsticky
[60.71,74.77] |notinsticky
[58.36,54.33] |notinsticky
[65.81,39.49] |notinsticky
[67.77,34.60] |notinsticky
step
label "Collect_Aurelid_Lattice"
kill Hirukon##180978
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Aurelid Lattice##187636 |goto 52.28,75.41
|tip You can also fish up Aurelids during the "Fish Eyes" world quest.
|tip Use the world quest guide to accomplish this.
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Prototickles pet and click the "Create" button.
collect Prototickles##189373 |goto 60.52,59.39
step
use Prototickles##189373
Learn the "Prototickles" Battle Pet |learnpet Prototickles##3231
step
_Congratulations!_
You Collected the "Prototickles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Terror Jelly",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Terror Jelly\" battle pet.",
keywords={"Aquatic","Zereth","Mortis","9.2"},
pet=3230,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Terror Jelly"
stickystart "Collect_Glimmer_of_Predation"
stickystart "Collect_Aurelid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Predation"
kill Dematerializing Worldeater##181116+
collect Glimmer of Predation##189165 |goto 47.07,24.56
You can find more around: |notinsticky
[43.77,22.53] |notinsticky
[40.75,24.32] |notinsticky
step
label "Collect_Aurelid_Lattice"
kill Hirukon##180978
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Aurelid Lattice##187636 |goto 52.28,75.41
|tip You can also fish up Aurelids during the "Fish Eyes" world quest.
|tip Use the world quest guide to accomplish this.
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Terror Jelly pet and click the "Create" button.
collect Terror Jelly##189372 |goto 60.52,59.39
step
use Terror Jelly##189372
Learn the "Terror Jelly" Battle Pet |learnpet Terror Jelly##3230
step
_Congratulations!_
You Collected the "Terror Jelly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Archetype of Cunning",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Cunning\" battle pet.",
keywords={"Beast","Zereth","Mortis","9.2"},
pet=3207,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Cunning"
stickystart "Collect_Glimmer_of_Cunning"
stickystart "Collect_Viperid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Cunning"
collect Glimmer of Cunning##189158
|tip It is currently unknown where this item drops from.
step
label "Collect_Viperid_Lattice"
kill Furidian##183646
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Viperid Lattice##189155 |goto Zereth Mortis/0 64.57,58.65
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Cunning pet and click the "Create" button.
collect Archetype of Cunning##189380 |goto 60.52,59.39
step
use Archetype of Cunning##189380
Learn the "Archetype of Cunning" Battle Pet |learnpet Archetype of Cunning##3207
step
_Congratulations!_
You Collected the "Archetype of Cunning" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Archetype of Discovery",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Discovery\" battle pet.",
keywords={"Beast","Zereth","Mortis","9.2"},
pet=3174,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Discovery"
stickystart "Collect_Glimmer_of_Discovery"
stickystart "Collect_Vombata_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Discovery"
Kill Annelid enemies around these areas
|tip Sandwkim Serpents can also drop these items.
collect Glimmer of Discovery##189159 |goto 55.96,75.91
You can find more around: |notinsticky
[56.72,70.00] |notinsticky
[60.71,74.77] |notinsticky
[58.36,54.33] |notinsticky
[65.81,39.49] |notinsticky
[67.77,34.60] |notinsticky
step
label "Collect_Vombata_Lattice"
kill Mawtouched Bull##181359+
|tip You can also kill Vombata Matrons and Grasslands Vombata if you see them.
collect Vombata Lattice##189156 |goto 43.96,59.04
You can find more around [49.13,60.50]
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Discovery pet and click the "Create" button.
collect Archetype of Discovery##187795 |goto 60.52,59.39
step
use Archetype of Discovery##187795
Learn the "Archetype of Discovery" Battle Pet |learnpet Archetype of Discovery##3174
step
_Congratulations!_
You Collected the "Archetype of Discovery" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Archetype of Predation",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Predation\" battle pet.",
keywords={"Beast","Zereth","Mortis","9.2"},
pet=3201,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Predation"
stickystart "Collect_Glimmer_of_Predation"
stickystart "Collect_Tarachnid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Predation"
kill Dematerializing Worldeater##181116+
collect Glimmer of Predation##189165 |goto 47.07,24.56
You can find more around: |notinsticky
[43.77,22.53] |notinsticky
[40.75,24.32] |notinsticky
step
label "Collect_Tarachnid_Lattice"
Enter the building |goto 55.93,32.65 < 10 |walk
Kill enemies around this area
|tip Inside the building.
|tip You can find more outside of the building.
collect Tarachnid Lattice##189152 |goto 54.09,34.93
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Predation pet and click the "Create" button.
collect Archetype of Predation##189381 |goto 60.52,59.39
step
use Archetype of Predation##189381
Learn the "Archetype of Predation" Battle Pet |learnpet Archetype of Predation##3201
step
_Congratulations!_
You Collected the "Archetype of Predation" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tunneling Vombata",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Tunneling Vombata\" battle pet.",
keywords={"Beast","Zereth","Mortis","9.2"},
pet=3176,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Tunneling Vombata"
stickystart "Collect_Glimmer_of_Cunning"
stickystart "Collect_Vombata_Lattice"
step
Kill enemies around this area
collect 350 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Cunning"
collect Glimmer of Cunning##189158
|tip It is currently unknown where this item drops from.
step
label "Collect_Vombata_Lattice"
kill Mawtouched Bull##181359+
|tip You can also kill Vombata Matrons and Grasslands Vombata if you see them.
collect Vombata Lattice##189156 |goto 43.96,59.04
You can find more around [49.13,60.50]
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Tunneling Vombata pet and click the "Create" button.
collect Tunneling Vombata##187798 |goto 60.52,59.39
step
use Tunneling Vombata##187798
Learn the "Tunneling Vombata" Battle Pet |learnpet Tunneling Vombata##3176
step
_Congratulations!_
You Collected the "Tunneling Vombata" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Viperid Menace",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Viperid Menace\" battle pet.",
keywords={"Beast","Zereth","Mortis","9.2"},
pet=3234,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Viperid Menace"
stickystart "Collect_Glimmer_of_Vigilance"
stickystart "Collect_Viperid_Lattice"
step
Kill enemies around this area
collect 150 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Vigilance"
kill Overgrown Bulwark##182353+
kill Overgrown Drifter##182364+
|tip Vine-Choked Protectors can also drop this.
collect Glimmer of Vigilance##189170 |goto Zereth Mortis/0 46.31,93.85
You can find more around: |notinsticky
[52.01,89.31] |notinsticky
[44.48,86.08] |notinsticky
step
label "Collect_Viperid_Lattice"
kill Furidian##183646
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Viperid Lattice##189155 |goto Zereth Mortis/0 64.57,58.65
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Viperid Menace pet and click the "Create" button.
collect Viperid Menace##189379 |goto 60.52,59.39
step
use Viperid Menace##189379
Learn the "Viperid Menace" Battle Pet |learnpet Viperid Menace##3234
step
_Congratulations!_
You Collected the "Viperid Menace" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Archetype of Multiplicity",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Multiplicity\" battle pet.",
keywords={"Critter","Zereth","Mortis","9.2"},
pet=3189,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Multiplicity"
stickystart "Collect_Glimmer_of_Multiplicity"
stickystart "Collect_Leporid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Multiplicity"
kill Vespoid Worker##178158+
collect Glimmer of Multiplicity##189164 |goto 62.79,59.23
You can find more around: |notinsticky
[61.97,54.81] |notinsticky
[50.47,40.85] |notinsticky
[47.15,29.09] |notinsticky
step
label "Collect_Leporid_Lattice"
kill Clutch Guardian##185267+
kill Agitated Leponid##185270+
collect Leporid Lattice##189147 |goto 52.92,62.56
You can find more around: |notinsticky
[57.90,74.64] |notinsticky
[60.15,62.53] |notinsticky
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Multiplicity pet and click the "Create" button.
collect Archetype of Multiplicity##189375 |goto 60.52,59.39
step
use Archetype of Multiplicity##189375
Learn the "Archetype of Multiplicity" Battle Pet |learnpet Archetype of Multiplicity##3189
step
_Congratulations!_
You Collected the "Archetype of Multiplicity" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Archetype of Survival",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Survival\" battle pet.",
keywords={"Critter","Zereth","Mortis","9.2"},
pet=3204,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Survival"
stickystart "Collect_Glimmer_of_Survival"
stickystart "Collect_Scarabid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Survival"
kill Creeping Brambles##182326+
collect Glimmer of Survival##189169 |goto 50.88,84.18
You can find more around: [49.46,91.04] |notinsticky
step
label "Collect_Scarabid_Lattice"
kill Hadeon the Stonebreaker##178563 |goto Zereth Mortis/0 52.61,25.03
kill Sand Matriarch Ileus##183927 |goto Zereth Mortis/0 53.38,47.07
|tip These are rare mobs.
|tip Use the POI rare guide to accomplish this.
collect Scarabid Lattice##189151
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Survival pet and click the "Create" button.
collect Archetype of Survival##189364 |goto 60.52,59.39
step
use Archetype of Survival##189364
Learn the "Archetype of Survival" Battle Pet |learnpet Archetype of Survival##3204
step
_Congratulations!_
You Collected the "Archetype of Survival" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Archetype of Vigilance",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Vigilance\" battle pet.",
keywords={"Critter","Zereth","Mortis","9.2"},
pet=3233,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Vigilance"
stickystart "Collect_Glimmer_of_Vigilance"
stickystart "Collect_Helicid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Vigilance"
kill Overgrown Bulwark##182353+
kill Overgrown Drifter##182364+
|tip Vine-Choked Protectors can also drop this.
collect Glimmer of Vigilance##189170 |goto Zereth Mortis/0 46.31,93.85
You can find more around: |notinsticky
[52.01,89.31] |notinsticky
[44.48,86.08] |notinsticky
step
label "Collect_Helicid_Lattice"
Kill Helicid enemies around these areas
collect Helicid Lattice##189145 |goto 57.33,82.92
You can find more around [55.88,69.41]
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Vigilance pet and click the "Create" button.
collect Archetype of Vigilance##189377 |goto 60.52,59.39
step
use the Archetype of Vigilance##189377
Learn the "Archetype of Vigilance" Battle Pet |learnpet Archetype of Vigilance##3233
step
_Congratulations!_
You Collected the "Archetype of Vigilance" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fierce Scarabid",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Fierce Scarabid\" battle pet.",
keywords={"Critter","Zereth","Mortis","9.2"},
pet=3224,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Fierce Scarabid"
stickystart "Collect_Glimmer_of_Motion"
stickystart "Collect_Scarabid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Motion"
Kill Raptora enemies around these areas
collect Glimmer of Motion##189163 |goto 47.49,71.29
You can find more around: |notinsticky
[39.23,53.19] |notinsticky
[41.74,44.16] |notinsticky
[45.61,40.39] |notinsticky
step
label "Collect_Scarabid_Lattice"
kill Hadeon the Stonebreaker##178563 |goto Zereth Mortis/0 52.61,25.03
kill Sand Matriarch Ileus##183927 |goto Zereth Mortis/0 53.38,47.07
|tip These are rare mobs.
|tip Use the POI rare guide to accomplish this.
collect Scarabid Lattice##189151
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Fierce Scarabid pet and click the "Create" button.
collect Fierce Scarabid##189365 |goto 60.52,59.39
step
use the Fierce Scarabid##189365
Learn the "Fierce Scarabid" Battle Pet |learnpet Fierce Scarabid##3224
step
_Congratulations!_
You Collected the "Fierce Scarabid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Leaping Leporid",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Leaping Leporid\" battle pet.",
keywords={"Critter","Zereth","Mortis","9.2"},
pet=3232,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Leaping Leporid"
stickystart "Collect_Glimmer_of_Renewal"
stickystart "Collect_Leporid_Lattice"
step
Kill enemies around this area
collect 250 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Renewal"
kill Carnivorous Overgrowth##182217+
kill Creeping Brambles##182326+
collect Glimmer of Renewal##189166 |goto 48.85,83.34
You can find more around: |notinsticky
[49.19,89.75] |notinsticky
[51.13,93.89] |notinsticky
[45.85,88.15] |notinsticky
[48.48,76.98] |notinsticky
[45.94,75.48] |notinsticky
step
label "Collect_Leporid_Lattice"
kill Clutch Guardian##185267+
kill Agitated Leponid##185270+
collect Leporid Lattice##189147 |goto 52.92,62.56
You can find more around: |notinsticky
[57.90,74.64] |notinsticky
[60.15,62.53] |notinsticky
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Leaping Leporid pet and click the "Create" button.
collect Leaping Leporid##189374 |goto 60.52,59.39
step
use Leaping Leporid##189374
Learn the "Leaping Leporid" Battle Pet |learnpet Leaping Leporid##3232
step
_Congratulations!_
You Collected the "Leaping Leporid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Shelly",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Shelly\" battle pet.",
keywords={"Critter","Zereth","Mortis","9.2"},
pet=2193,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Shelly"
stickystart "Collect_Glimmer_of_Serenity"
stickystart "Collect_Helicid_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Serenity"
click Glimmer of Serenity##375915
|tip They look like small pyramid shaped objects.
|tip They are almost always in areas that require flying such as on top of giant floating orbs.
collect Glimmer of Serenity##189168 |goto 64.48,39.08
You can find more around: |notinsticky
[46.95,11.22] |notinsticky
[64.72,63.39] |notinsticky
[51.21,28.33] |notinsticky
[50.02,10.92] |notinsticky
[43.04,35.52] |notinsticky
[34.33,71.39] |notinsticky
[64.78,33.81] |notinsticky
[49.22,1.95] |notinsticky
[49.26,25.54] |notinsticky
[41.18,79.69] |notinsticky
[37.71,29.17] |notinsticky
[50.67,89.01] |notinsticky
step
label "Collect_Helicid_Lattice"
Kill Helicid enemies around these areas
collect Helicid Lattice##189145 |goto 57.33,82.92
You can find more around [55.88,69.41]
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Shelly pet and click the "Create" button.
collect Shelly##189378 |goto 60.52,59.39
step
use Shelly##189378
Learn the "Shelly" Battle Pet |learnpet Shelly##2193
step
_Congratulations!_
You Collected the "Shelly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Archetype of Animation",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Animation\" battle pet.",
keywords={"Elemental","Zereth","Mortis","9.2"},
pet=3179,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Animation"
stickystart "Collect_Glimmer_of_Animation"
stickystart "Collect_Geomental_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Animation"
kill Overgrown Drifter##182364+
kill Dominated Laborer##183184+
collect Glimmer of Animation##189157 |goto Zereth Mortis/0 46.31,93.85
You can find more around: |notinsticky
[52.01,89.31] |notinsticky
[44.48,86.08] |notinsticky
[47.81,11.35] |notinsticky
step
label "Collect_Geomental_Lattice"
kill Tethos##181249
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Geomental Lattice##189146 |goto Zereth Mortis/0 54.50,73.44
You can also kill Geomental enemies around these areas: |notinsticky
[58.99,67.33] |notinsticky
[61.77,70.47] |notinsticky
[49.69,27.92] |notinsticky |only if achieved(15509)
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Animation pet and click the "Create" button.
collect Archetype of Animation##189369 |goto 60.52,59.39
step
use Archetype of Animation##189369
Learn the "Archetype of Animation" Battle Pet |learnpet Archetype of Animation##3179
step
_Congratulations!_
You Collected the "Archetype of Animation" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Stabilized Geomental",{
patch='90200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Stabilized Geomental\" battle pet.",
keywords={"Elemental","Zereth","Mortis","9.2"},
pet=3227,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Stabilized Geomental"
stickystart "Collect_Glimmer_of_Metamorphosis"
stickystart "Collect_Geomental_Lattice"
step
Kill enemies around this area
collect 400 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Metamorphosis"
kill Mawsworn Converter##181782+
kill Ebon Dominator##181801+
collect Glimmer of Metamorphosis##189162 |goto goto 49.32,47.98
You can find more around: |notinsticky
[45.17,51.53] |notinsticky
[46.96,57.50] |notinsticky
step
label "Collect_Geomental_Lattice"
kill Tethos##181249
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Geomental Lattice##189146 |goto Zereth Mortis/0 54.50,73.44
You can also kill Geomental enemies around these areas: |notinsticky
[58.99,67.33] |notinsticky
[61.77,70.47] |notinsticky
[49.69,27.92] |notinsticky |only if achieved(15509)
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Stabilized Geomental pet and click the "Create" button.
collect Stabilized Geomental##189370 |goto 60.52,59.39
step
use the Stabilized Geomental##189370
Learn the "Stabilized Geomental" Battle Pet |learnpet Stabilized Geomental##3227
step
_Congratulations!_
You Collected the "Stabilized Geomental" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Archetype of Malice",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Malice\" battle pet.",
keywords={"Flying","Zereth","Mortis","9.2"},
pet=3211,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Malice"
stickystart "Collect_Glimmer_of_Malice"
stickystart "Collect_Vespoid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Malice"
kill Dreadlord Commander##181797+
collect Glimmer of Malice##189161 |goto 49.61,47.70
You can find more around [46.44,43.69] |notinsticky
step
label "Collect_Vespoid_Lattice"
Kill Vespoid enemies around these areas
collect Vespoid Lattice##189154 |goto 51.47,42.07
You can find more around [62.93,57.96]
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Malice pet and click the "Create" button.
collect Archetype of Malice##189383 |goto 60.52,59.39
step
use Archetype of Malice##189383
Learn the "Archetype of Malice" Battle Pet |learnpet Archetype of Malice##3211
step
_Congratulations!_
You Collected the "Archetype of Malice" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Archetype of Motion",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Motion\" battle pet.",
keywords={"Flying","Zereth","Mortis","9.2"},
pet=3178,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Motion"
stickystart "Collect_Glimmer_of_Motion"
stickystart "Collect_Proto_Avian_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Motion"
Kill Raptora enemies around these areas
collect Glimmer of Motion##189163 |goto 47.49,71.29
You can find more around: |notinsticky
[39.23,53.19] |notinsticky
[41.74,44.16] |notinsticky
[45.61,40.39] |notinsticky
step
label "Collect_Proto_Avian_Lattice"
kill Enhanced Avian##182096+
|tip You can find them all over The Sepulcher of the First Ones isle.
kill Mawtouched Avian##181330+
collect Proto Avian Lattice##189149 |goto 76.46,53.35
You can find more around: |notinsticky
[50.44,61.76] |notinsticky
[44.63,61.53] |notinsticky
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Motion pet and click the "Create" button.
collect Archetype of Motion##187803 |goto 60.52,59.39
step
use the Archetype of Motion##187803
Learn the "Archetype of Motion" Battle Pet |learnpet Archetype of Motion##3178
step
_Congratulations!_
You Collected the "Archetype of Motion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Archetype of Satisfaction",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Satisfaction\" battle pet.",
keywords={"Flying","Zereth","Mortis","9.2"},
pet=3220,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Satisfaction"
stickystart "Collect_Glimmer_of_Satisfaction"
stickystart "Collect_Poultrid_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Satisfaction"
collect Glimmer of Satisfaction##189167
|tip It is currently unknown where this item drops from.
step
label "Collect_Poultrid_Lattice"
click Avian Nest##375362+
|tip These nests randomly spawn at these locations.
collect Poultrid Lattice##189148 |goto 35.49,52.05
You can find more around: |notinsticky
[35.49,52.05] |notinsticky
[40.45,56.63] |notinsticky
[40.68,50.50] |notinsticky
[42.32,73.11] |notinsticky
[43.15,65.16] |notinsticky
[43.27,43.69] |notinsticky
[44.19,42.79] |notinsticky
[48.19,66.46] |notinsticky
[49.55,65.34] |notinsticky
[51.10,64.54] |notinsticky
[54.29,81.69] |notinsticky
[54.82,58.35] |notinsticky
[55.18,55.94] |notinsticky
[56.64,74.84] |notinsticky
[59.10,64.67] |notinsticky
[62.00,42.00] |notinsticky
[66.00,42.81] |notinsticky
[76.30,50.20] |notinsticky
[76.89,50.37] |notinsticky
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Satisfaction pet and click the "Create" button.
collect Archetype of Satisfaction##189367 |goto 60.52,59.39
step
use Archetype of Satisfaction##189367
Learn the "Archetype of Satisfaction" Battle Pet |learnpet Archetype of Satisfaction##3220
step
_Congratulations!_
You Collected the "Archetype of Satisfaction" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Multichicken",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Multichicken\" battle pet.",
keywords={"Flying","Zereth","Mortis","9.2"},
pet=3226,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Multichicken"
stickystart "Collect_Glimmer_of_Multiplicity"
stickystart "Collect_Poultrid_Lattice"
step
Kill enemies around this area
collect 350 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Multiplicity"
kill Vespoid Worker##178158+
collect Glimmer of Multiplicity##189164 |goto 62.79,59.23
You can find more around: |notinsticky
[61.97,54.81] |notinsticky
[50.47,40.85] |notinsticky
[47.15,29.09] |notinsticky
step
label "Collect_Poultrid_Lattice"
click Avian Nest##375362+
|tip These nests randomly spawn at these locations.
collect Poultrid Lattice##189148 |goto 35.49,52.05
You can find more around: |notinsticky
[35.49,52.05] |notinsticky
[40.45,56.63] |notinsticky
[40.68,50.50] |notinsticky
[42.32,73.11] |notinsticky
[43.15,65.16] |notinsticky
[43.27,43.69] |notinsticky
[44.19,42.79] |notinsticky
[48.19,66.46] |notinsticky
[49.55,65.34] |notinsticky
[51.10,64.54] |notinsticky
[54.29,81.69] |notinsticky
[54.82,58.35] |notinsticky
[55.18,55.94] |notinsticky
[56.64,74.84] |notinsticky
[59.10,64.67] |notinsticky
[62.00,42.00] |notinsticky
[66.00,42.81] |notinsticky
[76.30,50.20] |notinsticky
[76.89,50.37] |notinsticky
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Multichicken pet and click the "Create" button.
collect Multichicken##189368 |goto 60.52,59.39
step
use Multichicken##189368
Learn the "Multichicken" Battle Pet |learnpet Multichicken##3226
step
_Congratulations!_
You Collected the "Multichicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Violent Poultrid",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Violent Poultrid\" battle pet.",
keywords={"Flying","Zereth","Mortis","9.2"},
pet=3225,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Violent Poultrid"
stickystart "Collect_Glimmer_of_Malice"
stickystart "Collect_Poultrid_Lattice"
step
Kill enemies around this area
collect 200 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Malice"
kill Dreadlord Commander##181797+
collect Glimmer of Malice##189161 |goto 49.61,47.70
You can find more around [46.44,43.69] |notinsticky
step
label "Collect_Poultrid_Lattice"
click Avian Nest##375362+
|tip These nests randomly spawn at these locations.
collect Poultrid Lattice##189148 |goto 35.49,52.05
You can find more around: |notinsticky
[35.49,52.05] |notinsticky
[40.45,56.63] |notinsticky
[40.68,50.50] |notinsticky
[42.32,73.11] |notinsticky
[43.15,65.16] |notinsticky
[43.27,43.69] |notinsticky
[44.19,42.79] |notinsticky
[48.19,66.46] |notinsticky
[49.55,65.34] |notinsticky
[51.10,64.54] |notinsticky
[54.29,81.69] |notinsticky
[54.82,58.35] |notinsticky
[55.18,55.94] |notinsticky
[56.64,74.84] |notinsticky
[59.10,64.67] |notinsticky
[62.00,42.00] |notinsticky
[66.00,42.81] |notinsticky
[76.30,50.20] |notinsticky
[76.89,50.37] |notinsticky
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Violent Poultrid pet and click the "Create" button.
collect Violent Poultrid##189366 |goto 60.52,59.39
step
use Violent Poultrid##189366
Learn the "Violent Poultrid" Battle Pet |learnpet Violent Poultrid##3225
step
_Congratulations!_
You Collected the "Violent Poultrid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Archetype of Focus",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Archetype of Focus\" battle pet.",
keywords={"Magic","Zereth","Mortis","9.2"},
pet=3169,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Focus"
stickystart "Collect_Glimmer_of_Focus"
stickystart "Collect_Unformed_Lattice"
step
Kill enemies around this area
collect 300 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Focus"
collect Glimmer of Focus##189160
|tip It is currently unknown where this item drops from.
step
label "Collect_Unformed_Lattice"
kill Destabilized Core##180917
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Unformed Lattice##189153 |goto Zereth Mortis/0 53.61,44.33
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Archetype of Focus pet and click the "Create" button.
collect Archetype of Focus##187713 |goto 60.52,59.39
step
use Archetype of Focus##187713
Learn the "Archetype of Focus" Battle Pet |learnpet Archetype of Focus##3169
step
_Congratulations!_
You Collected the "Archetype of Focus" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Omnipotential Core",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Omnipotential Core\" battle pet.",
keywords={"Magic","Zereth","Mortis","9.2"},
pet=3171,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Omnipotential Core"
stickystart "Collect_Glimmer_of_Animation"
stickystart "Collect_Unformed_Lattice"
step
Kill enemies around this area
collect 350 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Animation"
kill Overgrown Drifter##182364+
kill Dominated Laborer##183184+
collect Glimmer of Animation##189157 |goto Zereth Mortis/0 46.31,93.85
You can find more around: |notinsticky
[52.01,89.31] |notinsticky
[44.48,86.08] |notinsticky
[47.81,11.35] |notinsticky
step
label "Collect_Unformed_Lattice"
kill Destabilized Core##180917
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Unformed Lattice##189153 |goto Zereth Mortis/0 53.61,44.33
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Omnipotential Core pet and click the "Create" button.
collect Omnipotential Core##187734 |goto 60.52,59.39
step
use Omnipotential Core##187734
Learn the "Omnipotential Core" Battle Pet |learnpet Omnipotential Core##3171
step
_Congratulations!_
You Collected the "Omnipotential Core" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Resonant Echo",{
patch='90200',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting the \"Resonant Echo\" battle pet.",
keywords={"Magic","Zereth","Mortis","9.2"},
pet=3170,
},[[
leechsteps "Profession Guides\\Protoform Synthesis\\Schematic: Resonant Echo"
stickystart "Collect_Glimmer_of_Survival"
stickystart "Collect_Unformed_Lattice"
step
Kill enemies around this area
collect 350 Genesis Mote##188957 |goto Zereth Mortis/0 41.74,72.00
|tip These drop from any enemy in Zereth Mortis.
|tip Respawns of gorgers and scavengers are fast in the Genesis Fields.
step
label "Collect_Glimmer_of_Survival"
kill Creeping Brambles##182326+
collect Glimmer of Survival##189169 |goto 50.88,84.18
You can find more around: [49.46,91.04] |notinsticky
step
label "Collect_Unformed_Lattice"
kill Destabilized Core##180917
|tip This is a rare mob.
|tip Use the POI rare guide to accomplish this.
collect Unformed Lattice##189153 |goto Zereth Mortis/0 53.61,44.33
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the building.
|tip Select the Resonant Echo pet and click the "Create" button.
collect Resonant Echo##187733 |goto 60.52,59.39
step
use Resonant Echo##187733
Learn the "Resonant Echo" Battle Pet |learnpet Resonant Echo##3170
step
_Congratulations!_
You Collected the "Resonant Echo" Battle Pet.
]])
ZGV.BETAEND()
