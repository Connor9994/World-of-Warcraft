local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PoiRareCSHADOW") then return end
ZGV.Poi.Sets.PoiRareCSHADOW={
{
rare=[[Deathbinder Hroth]],
level=50,
spot="Ardenweald/0 34.63,67.99",
item=164477,
quest=59226,
polish=false,
steps=[[
step
kill Deathbinder Hroth##164477 |confirm |q 59226 |goto Ardenweald/0 34.63,67.99 |future
]],
},
{
rare=[[Deifir the Untamed]],
level=60,
spot="Ardenweald/0 47.52,28.45",
item=180631,
quest=59201,
polish=false,
steps=[[
step
clicknpc Deifir the Untamed##164238
|tip It runs around this area.
|tip Wait for it at this spot.
|tip Use the "Harry" ability on your action bar to do some damage as it continues to run.
|tip Use the "Stunning Strike" ability on your action bar to stun it and then do as much burst damage as you can.
kill Deifir the Untamed##164238 |confirm |q 59201 |goto Ardenweald/0 47.52,28.45 |future
]],
},
{
rare=[[Dustbrawl]],
level=60,
spot="Ardenweald/0 48.12,76.99",
item=163229,
quest=58987,
polish=false,
steps=[[
step
kill Dustbrawl##163229 |confirm |q 58987 |goto Ardenweald/0 48.12,76.99 |future
|tip It walks around this area.
]],
},
{
rare=[[Egg-Tender Leh'go]],
level=60,
spot="Ardenweald/0 57.86,29.55",
item=167851,
quest=60266,
polish=false,
steps=[[
step
Enter the cave |goto Ardenweald/0 58.48,31.80 < 7 |walk
click Quivering Gorm-Egg##351728+
|tip They look like small wiggling eggs along the sides of the cave.
kill Egg-Tender Leh'go##167851 |confirm |q 60266 |goto 57.86,29.55 |future
|tip Inside the cave.
|tip It spawns after breaking eggs.
]],
},
{
rare=[[Faeflayer]],
level=60,
spot="Ardenweald/0 68.61,27.65",
item=171688,
quest=61184,
polish=false,
steps=[[
step
Enter the cave |goto Ardenweald/0 68.41,29.34 < 7 |walk
kill Faeflayer##171688 |confirm |q 61184 |goto 68.61,27.65 |future
|tip Inside the cave behind a waterfall.
]],
},
{
rare=[[Gormbore]],
level=60,
spot="Ardenweald/0 54.06,76.01",
item=183196,
quest=59006,
polish=false,
steps=[[
step
kill Evolving Mite##165420+
|tip Kill them on the dust cloud that appears here.
kill Gormbore##163370 |confirm |q 59006 |goto Ardenweald/0 53.60,75.96 |future
|tip It spawns after killing enough Evolving Mites.
]],
},
{
rare=[[Gormtamer Tizo]],
level=60,
spot="Ardenweald/0 27.88,52.48",
item=180725,
quest=59145,
polish=false,
steps=[[
step
Kill enemies around this area
kill Chompy##164110
|tip Chompy has a low chance of spawning when you kill other enemies.
|tip Killing Chompy will spawn Gormtamer Tizo.
|tip A group is recommended to make this easier and faster.
kill Gormtamer Tizo##164107 |confirm |q 59145 |goto Ardenweald/0 27.88,52.48 |future
]],
},
{
rare=[[Humon'gozz]],
level=60,
spot="Ardenweald/0 32.43,30.27",
item=182650,
requires='{item:175247}',
quest=59157,
polish=false,
steps=[[
step
Kill enemies around this area
collect Unusually Large Mushroom##175247 |goto Ardenweald/0 30.83,37.86 |complete hasmount(339632)
|tip This has about a 3-5% drop rate.
|tip This item only lasts for 20 minutes before disappearing.
step
Follow the path |goto 32.75,33.81 < 15 |only if walking
click Damp Loam##344732
|tip It is recommended you clear the area of enemies before clicking.
kill Humon'gozz##164112 |confirm |q 59157 |goto Ardenweald/0 32.43,30.27 |future
]],
},
{
rare=[[Hunter Vivanna]],
level=60,
spot="Ardenweald/0 67.46,51.47",
item=179596,
quest=59221,
polish=false,
steps=[[
step
kill Hunter Vivanna##160448 |confirm |q 59221 |goto Ardenweald/0 67.46,51.47 |future
]],
},
{
rare=[[Mymaen]],
level=60,
spot="Ardenweald/0 62.10,24.70",
item=179502,
quest=59431,
polish=false,
steps=[[
step
Follow the path up |goto Ardenweald/0 64.25,23.83 < 20 |only if walking
Kill Rotbriar enemies around this area
kill Mymaen##165053 |confirm |q 59431 |goto Ardenweald/0 62.10,24.70 |future
|tip He spawns after killing enough enemies.
]],
},
{
rare=[[Mystic Rainbowhorn]],
level=60,
spot="Ardenweald/0 49.71,20.55",
item=182179,
quest=59235,
polish=false,
steps=[[
step
click Great Horn of the Runestag##345446 |goto Ardenweald/0 49.66,19.74 < 5 |walk
|tip This has about a two hour respawn timer.
|tip Clicking the horn will cause the Mystic Rainbowhorn to spawn.
|tip It spawns and runs around at the following location.
kill Mystic Rainbowhorn##164547 |confirm |q 59235 |goto 49.71,20.55 |future
]],
},
{
rare=[[Night Mare]],
level=60,
spot="Ardenweald/0 57.87,49.83",
item=180728,
requires='{item:178675}',
quest=60306,
polish=false,
steps=[[
step
Start here |goto Ardenweald/0 18.06,62.08 < 7 |only if walking
Jump to the vine |goto 17.71,62.14 < 7 |only if walking
Run up the vine |goto 17.75,62.88 < 7 |only if walking
Run up the second vine |goto 18.10,63.48 < 7 |only if walking
Carefully run along the wall |goto 19.41,63.08 < 5 |only if walking
click Cracked Soulweb##355800
|tip It looks like a small branch on the ground behind the broken cart.
collect 1 Broken Soulweb##181243 |goto 19.77,63.44 |q 60306 |future
step
collect 10 Lightless Silk##173204 |q 60306 |future
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Complete the "Trouble at the Gormling Corral" Questline in Ardenweald |achieve 14800/3 |q 60306 |future
|tip Use the "Ardenweald" leveling guide to accomplish this.
step
Complete the "Tricky Spriggans" Questline in Ardenweald |achieve 14800/4 |q 60306 |future
|tip Use the "Ardenweald" leveling guide to accomplish this.
step
talk Elder Gwenna##165704
Ask her _"Can you tell me anything about this broken soulweb?"_
Then _"I have the materials here."_
collect 1 Repaired Soulweb##181242 |goto 50.42,33.04 |q 60306 |future
step
talk Elite Queensguard##158555
Tell him _"I wish to speak with Ysera."_
Click Here After Requesting an Audience |confirm |goto 47.65,54.05 |q 60306 |future
|only if not NightFae
step
talk Ysera##160262
|tip She will walk out to you.
Ask her _"Ysera, this soulweb has the ability to capture dreams, but requires power to do so. Can you help?"_
collect 1 Dream Catcher##178675 |goto Heart of the Forest/0 69.34,45.71 |q 60306 |future
|only if not NightFae
step
talk Ysera##160262
Ask her _"Ysera, this soulweb has the ability to capture dreams, but requires power to do so. Can you help?"_
collect 1 Dream Catcher##178675 |goto Heart of the Forest/0 44.78,38.94 |q 60306 |future
|only if  NightFae
step
use the Dream Catcher##178675
Gain The Shadow's Dream Buff |havebuff spell:327083 |goto Ardenweald/0 60.21,49.51 |q 60306 |future
|tip This buff will only last for 5 minutes and is required to see Night Mare.
step
'|use the Dream Catcher##178675
kill Night Mare##168135 |confirm |q 60306 |goto Ardenweald/0 57.87,49.83 |future
|tip It runs north and south along the east side of Hibernal Hollow.
|tip Wait here for it to run by.
|tip It will appear on your mini map as a gold star.
|tip You may need help with this.
|tip If The Shadow's Dream buff wears off you'll need to use the Dream Catcher again to reapply it.
]],
},
{
rare=[[Old Ardeite]],
level=60,
spot="Ardenweald/0 51.19,57.63",
item=180643,
quest=59208,
polish=false,
steps=[[
step
click Basket of Enchanted Wings##349383
Gain the Faerie's Blessing Buff |havebuff spell:313053 |goto Ardenweald/0 51.07,57.39 |q 59208 |future
step
Fly up to Old Ardeite
|tip The Faerie's Blessing buff allows you to fly when double jumping.
|tip Use it to fly up to Old Ardeite and pull it.
|tip In order for it to not bug once you reach the ground, you may have to remove the buff, pull Old Areite as you fall, and then use something that slows your fall (Heroic Leap, Goblin Glider Kit, etc) before you hit the ground.
kill Old Ardeite##164391 |confirm |q 59208 |goto 51.19,57.63 |future
|tip It flies around this area while very high up in the air.
]],
},
{
rare=[[Rootwrithe]],
level=60,
spot="Ardenweald/0 65.05,44.33",
item=179603,
quest=60273,
polish=false,
steps=[[
step
clicknpc Dormant Blossom##167928+
|tip You may need to click them multiple times.
kill Rootwrithe##167726 |confirm |q 60273 |goto Ardenweald/0 65.05,44.33 |future
|tip It spawns after clicking the Dormant Blossoms.
]],
},
{
rare=[[Rotbriar Boggart]],
level=50,
spot="Ardenweald/0 65.78,23.90",
item=175729,
quest=60258,
polish=false,
steps=[[
step
talk Daffodil##171684
Ask him _"Can't say I have. What's his deal?"_
And then _"So what can you do about it?"_
Watch the dialogue
kill Rotbriar Boggart##167724 |confirm |q 60258 |goto Ardenweald/0 65.78,23.90 |future
]],
},
{
rare=[[Soultwister Cero]],
level=50,
spot="Ardenweald/0 72.42,51.75",
item=180164,
quest=61177,
polish=false,
steps=[[
step
kill Soultwister Cero##171451 |confirm |q 61177 |goto Ardenweald/0 72.42,51.75 |future
]],
},
{
rare=[[Skuld Vit]],
level=60,
spot="Ardenweald/0 37.67,59.17",
item=182183,
covenant=NIGHTFAE,
quest=59220,
polish=false,
steps=[[
step
Cast _"Soulshape"_ |cast 310143
Enter Soulshape |havebuff spell:310143 |goto Ardenweald/0 36.85,60.26 |q 59220 |future
step
Enter the cave |goto 36.91,60.17 < 7 |walk
Run through the barrier |goto 37.04,59.96 < 7 |walk
|tip You can only pass through the barrier while in Soulshape.
kill Skuld Vit##164415 |confirm |q 59220 |goto 37.67,59.17 |future
|tip Inside the cave.
]],
},
{
rare=[[The Slumbering Emperor]],
level=50,
spot="Ardenweald/0 59.30,46.60",
item=175711,
quest=60290,
polish=false,
steps=[[
step
kill The Slumbering Emperor##167721 |confirm |q 60290 |goto Ardenweald/0 59.30,46.60 |future
|tip Entering the mist in this area will cause you to fall asleep after a few seconds.
|tip Quickly enter the mist with a movement ability and then AoE to find The Slumbering Emperor.
]],
},
{
rare=[[Valfir the Unrelenting]],
level=60,
spot="Ardenweald/0 30.11,55.36",
item=180730,182176,
quest=61632,
polish=false,
steps=[[
step
click Sparkling Animaseed##356676
Gather the Sparkling Animaseed |havebuff spell:338045 |goto Ardenweald/0 30.44,55.54 |q 61632 |future
step
Cast _"Animaseed Light"_ |cast Animaseed Light##338045
|tip It appears as a button on the screen.
|tip Use it on Valfir the Unrelenting to make him vulnerable to attack.
kill Valfir the Unrelenting##168647 |confirm |q 61632 |goto 30.11,55.36 |future
]],
},
{
rare=[[Wrigglemortis]],
level=50,
spot="Ardenweald/0 58.34,61.79",
item=181396,
quest=59170,
polish=false,
steps=[[
step
clicknpc Wriggling Tendril##164179+
|tip Click it and walk away to pull it out of the ground.
kill Wrigglemortis##164147 |confirm |q 59170 |goto Ardenweald/0 58.34,61.79 |future
]],
},
{
rare=[[Aspirant Eolis]],
level=60,
spot="Bastion/0 32.59,23.36",
item=183607,
quest=61083,
polish=false,
steps=[[
step
click Fragile Humility Scroll##354848
|tip Inside the building.
|tip It looks like an unrolled floating scroll next to tables around this area.
collect Fragile Humility Scroll##180613 |goto Bastion/0 32.77,20.34 |q 61083 |future
step
clicknpc Aspirant Eolis##171211
use Fragile Humility Scroll##180613
|tip Use it on Aspirant Eolis.
click Aspirant's Belongings##354849 |confirm |q 61083 |goto 32.59,23.36 |future
]],
},
{
rare=[[Baedos]],
level=50,
spot="Bastion/0 51.34,40.80",
item=172232,
quest=58648,
polish=false,
steps=[[
step
click Cask of Fermenting Purian Fruit##340004+
|tip They look like small metal jars around this area.
|tip Bring them to the baskets in front of Baedos.
|tip If they aren't available then Baedos isn't hungry yet and you'll have to wait.
|tip After feeding him five items he will grow and become attackable.
kill Baedos##160629
click Baedos' Regurgitated Treasure##340058 |confirm |q 58648 |goto Bastion/0 51.34,40.80 |future
]],
},
{
rare=[[Basilofos, King of the Hill]],
level=50,
spot="Bastion/0 48.53,50.70",
item=180704,
quest=60897,
polish=false,
steps=[[
step
Stand in the ring of Cloudracer corpses
|tip Basilofos is avilable if you get marked with purple eyes and a message appears in chat.
|tip Stay in the circle and wait, Basilofos will slowly fly down and become attackable.
kill Basilofos, King of the Hill##170659 |confirm |q 60897 |goto Bastion/0 48.53,50.70 |future
]],
},
{
rare=[[Beasts of Bastion]],
level=50,
spot="Bastion/0 55.35,80.24",
item=174445,
item=179486,179488,179485,179487,
quest=60570,60571,60569,58526,
questCount=false,
polish=false,
steps=[[
step
talk Orator Kloe##161441
|tip Inside the building.
|tip Talk to her again to spawn each enemy.
Tell her _"I am."_
kill Sigilback##161527 |confirm |q 60570 |goto Bastion/0 55.35,80.24 |future
kill Cloudtail##161530 |confirm |q 60571 |goto Bastion/0 55.35,80.24 |future
kill Nemaeus##161529 |confirm |q 60569 |goto Bastion/0 55.35,80.24 |future
kill Aethon##161528 |confirm |q 58526 |goto Bastion/0 55.35,80.24 |future
]],
},
{
rare=[[Bookkeeper Mnemis]],
level=50,
spot="Bastion/0 55.82,62.49",
item=182682,
quest=59022,
polish=false,
steps=[[
step
kill Bookkeeper Mnemis##171189 |confirm |q 59022 |goto Bastion/0 55.82,62.49 |future
|tip He walks around this area.
|tip He shares spawns with the Converted Praetor in the area.
|tip Kill Converted Praetors around this area to spawn him if he's not already up.
]],
},
{
rare=[[Cloudfeather Guardian]],
level=50,
spot="Bastion/0 50.43,58.04",
item=180812,
quest=62191,
polish=false,
steps=[[
step
kill Anima-Starved Cloudfeather##158110+
|tip Kill Anima-Starved Cloudfeathers around this area to summon the Cloudfeather Guardian.
kill Cloudfeather Guardian##170932 |confirm |q 62191 |goto Bastion/0 50.43,58.04 |future
|tip It flies around this area.
]],
},
{
rare=[[Collector Astorestes]],
level=60,
spot="Bastion/0 65.91,43.68",
item=184295,
quest=61002,
polish=false,
steps=[[
step
Enter the building |goto Bastion/0 66.41,43.68 < 7 |walk
Click the scrolls in the following order:
click Mercia's Legacy: Chapter One##354283 |goto 66.19,44.12 < 3 |walk
click Mercia's Legacy: Chapter Two##354284 |goto 65.90,44.12 < 3 |walk
click Mercia's Legacy: Chapter Three##354285 |goto 65.74,43.96 < 3 |walk
click Mercia's Legacy: Chapter Four##354286 |goto 65.73,43.46 < 3 |walk
click Mercia's Legacy: Chapter Five##354287 |goto 65.93,43.17 < 3 |walk
click Mercia's Legacy: Chapter Six##354288 |goto 66.20,43.27 < 3 |walk
|tip After clicking each Mercia's Legacy scroll, talk to the Echo of Mercia.
talk Echo of Mercia##157979
|tip Inside the building.
Tell her _"I will find the tome."_
Gain the Humble Gaze Buff |havebuff spell:333779 |goto 65.91,43.68 |q 61002 |future
step
Maintain the Humble Gaze Buff:
|tip This buff only lasts five minutes and is required to find the final Mercia's Legacy scroll.
|tip If it runs out talk to the Echo of Mercia to reapply it.
click Mercia's Legacy: Chapter Seven##354467
|tip It spawns outside around this area.
|tip Look for a purple glow on a table.
collect Mercia's Legacy: Chapter Seven##180569 |goto 65.27,44.48 |q 61002 |future
It can also be found around: |notinsticky
[65.07,41.38]
[65.38,42.91]
step
talk Echo of Mercia##157979
|tip Inside the building.
Choose _<Offer the tome.>_
kill Collector Astorestes##171014 |confirm |q 61002 |goto 65.91,43.68 |future
]],
},
{
rare=[[Corrupted Clawguard]],
level=50,
spot="Bastion/0 56.90,47.78",
item=182759,
requires="{item:180651}",
quest=60999,
polish=false,
steps=[[
step
Enter the cave |goto Bastion/0 56.42,46.14 < 7 |walk
click Discarded Phalynx Core##354920
|tip Inside the cave.
collect Discarded Phalynx Core##180651 |goto 57.01,48.31
step
clicknpc Malfunctioning Clawguard##171300
|tip It walks around inside the cave.
kill Corrupted Clawguard##171010 |confirm |q 60999 |goto 56.90,47.78 |future
]],
},
{
rare=[[Dark Watcher]],
level=50,
spot="Bastion/0 27.82,30.14",
item=184297,
quest=60883,
polish=false,
steps=[[
step
Let the Enemies Kill You |goto Bastion/0 27.40,27.38 |complete isdead() |q 60883 |future
|tip You must be dead to see the Dark Watcher.
step
talk Dark Watcher##170623
|tip You must be dead to see her.
Tell her _"I accept your challenge."_
kill Dark Watcher##170623 |confirm |q 60883 |goto 27.82,30.14 |future |zombiewalk
]],
},
{
rare=[[Demi the Relic Hoarder]],
level=60,
spot="Bastion/0 37.00,41.80",
item=183608,
quest=61069,
polish=false,
steps=[[
step
kill Demi the Relic Hoarder##171011
|tip When attacked he gains a shield buff that absorbs 100 attacks and then he runs around the area.
|tip Clear the area of enemies before pulling him or pull him by stunning to prevent him from putting up the shield buff.
click Relic Hoard##354649 |confirm |q 61069 |goto Bastion/0 37.00,41.80 |future
]],
},
{
rare=[[Dionae]],
level=60,
spot="Bastion/0 41.35,48.87",
item=184769,
quest=62650,
polish=false,
steps=[[
step
Enter the building |goto Bastion/0 40.98,47.48 < 10 |walk
kill Dionae##163460
|tip Inside the building.
|tip When she flies into the air to attack, click the Anima Spears to remove her shield and bring her back down.
click Stewart's Stewpendous Stew##344588 |confirm |q 62650 |goto 41.35,48.87 |future
]],
},
{
rare=[[Echo of Aella]],
level=50,
spot="Bastion/0 46.32,66.88",
item=180062,
quest=61091,
polish=false,
steps=[[
step
talk Echo of Aella##171255
|tip She walks around this area.
Tell her _"I accept your challenge."_
kill Echo of Aella##171255
click Worthy Aspirant's Cache##354859 |confirm |q 61091 |goto Bastion/0 46.32,66.88 |future
]],
},
{
rare=[[Embodied Hunger]],
level=60,
spot="Bastion/0 56.11,14.47",
item=183605,
quest=61001,
polish=false,
steps=[[
step
clicknpc Swelling Tear##171012
|tip If the Rare isn't already there, clicking one of these nearby can cause it to spawn.
kill Embodied Hunger##171013 |confirm |q 61001 |goto Bastion/0 56.11,14.47 |future
|tip It shares a spawn with Xixin the Ravening and Worldfeaster Chronn.
It may also be found at: |notinsticky
[52.21,32.82]
[63.45,35.90]
[59.65,51.43]
[47.99,42.96]
]],
},
{
rare=[[Enforcer Aegeon]],
level=60,
spot="Bastion/0 51.15,19.53",
item=184404,
quest=60998,
polish=false,
steps=[[
step
Kill enemies around this area
|tip Killing enough enemies will cause Enforcer Aegeon to spawn.
kill Enforcer Aegeon##171009 |confirm |q 60998 |goto Bastion/0 51.15,19.53 |future
|tip It walks around this area.
]],
},
{
rare=[[Fallen Acolyte Erisne]],
level=50,
spot="Bastion/0 60.42,73.05",
item=180444,
quest=58222,
polish=false,
steps=[[
step
kill Fallen Acolyte Erisne##160721 |confirm |q 58222 |goto Bastion/0 60.42,73.05 |future
|tip She walks around this area.
]],
},
{
rare=[[Herculon]],
level=50,
spot="Bastion/0 42.90,82.65",
item=182759,
quest=57705,
polish=false,
steps=[[
step
click Depleted Anima Canister##348830+
|tip They look like metal barrels on the ground around this area and inside the building.
collect 10 Weak Anima Mote##172451 |confirm |q 57705 |goto Bastion/0 42.88,80.51 |future
step
Enter the building |goto 42.75,80.91 < 10 |walk
clicknpc Herculon##158659 |goto 42.90,82.65 < 5 |walk
|tip Inside the building.
Choose _<Supply [Weak Anima Motes]>_
kill Herculon##158659
|tip He will awaken and become attackable after giving him all ten Weak Anima Motes.
click Aspirant's Chest##336428 |confirm |q 57705 |goto 42.94,83.02 |future
]],
},
{
rare=[[Nikara Blackheart]],
level=50,
spot="Bastion/0 51.45,68.59",
item=183608,
quest=58319,
polish=false,
steps=[[
step
This Rare can only be spawned during the Vesper Repair event
|tip A minimum of three players are required to summon her.
|tip Each player needs to stand on a plate and click the Ancient Incense.
click Ancient Incense |goto Bastion/0 51.45,68.59 < 10 |walk
Watch the dialogue
Kill the enemies that attack in waves
kill Nikara Blackheart##160882
click Sophia's Gift##339625 |confirm |q 58319 |goto 51.73,68.83 |future
]],
},
{
rare=[[Reekmonger]],
level=60,
spot="Bastion/0 30.36,55.17",
item=182749,
quest=61108,
polish=false,
steps=[[
step
click Anima Gateway## |goto Bastion/0 39.13,56.12 < 7 |only if walking
Kill enemies around this area
|tip After killing enough enemies Reekmonger will fly down and become attackable.
kill Reekmonger##171327 |confirm |q 61108 |goto 30.36,55.17 |future
]],
},
{
rare=[[Sundancer]],
level=60,
spot="Bastion/0 61.40,90.50",
item=180773,
quest=60862,
polish=false,
steps=[[
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
kill Sundancer##170548 |confirm |q 60862 |goto 60.25,93.63 |future
|tip You may need a group for this.
|tip You only need to bring it to around 15% health.
]],
},
{
rare=[[Unstable Memory]],
level=60,
spot="Bastion/0 43.48,25.24",
item=184413,
quest=60997,
polish=false,
steps=[[
step
kill Unstable Memory Fragment##171018+
|tip Hit it once to aggro and drag it to another one, they will combine and gain stacks of Instability.
|tip Only attack the original Unstable Memory Fragment then kite it around to the other yellow, neutral Unstable Memory Fragments.
|tip Keep doing this until it has ten stacks of Instability and it will transform into the Rare.
|tip If there are no Unstable Memory Fragments here then the required event is currently not active and the Rare cannot be summoned.
kill Unstable Memory##171008 |confirm |q 60997 |goto Bastion/0 43.48,25.24 |future
]],
},
{
rare=[[Wingflayer the Cruel]],
level=50,
spot="Bastion/0 40.63,53.06",
item=182749,
quest=60314,
polish=false,
steps=[[
step
kill Wingflayer the Cruel##167078 |confirm |q 60314 |goto Bastion/0 40.63,53.06 |future
]],
},
{
rare=[[Worldfeaster Chronn]],
level=60,
spot="Bastion/0 48.00,42.90",
item=183605,
quest=61047,
polish=false,
steps=[[
step
clicknpc Swelling Tear##171012
|tip If the Rare isn't already there, clicking one of these nearby can cause it to spawn.
kill Worldfeaster Chronn##171041 |confirm |q 61047 |goto Bastion/0 56.11,14.47 |future
|tip It shares a spawn with Xixin the Ravening and Embodied Hunger.
It may also be found at: |notinsticky
[52.21,32.82]
[63.45,35.90]
[59.65,51.43]
[47.99,42.96]
]],
},
{
rare=[[Xixin the Ravening]],
level=60,
spot="Bastion/0 63.50,35.90",
item=183605,
quest=61046,
polish=false,
steps=[[
step
clicknpc Swelling Tear##171012
|tip If the Rare isn't already there, clicking one of these nearby can cause it to spawn.
kill Xixin the Ravening##171040 |confirm |q 61046 |goto Bastion/0 56.11,14.47 |future
|tip It shares a spawn with Worldfeaster Chronn and Embodied Hunger.
It may also be found at: |notinsticky
[52.21,32.82]
[63.45,35.90]
[59.65,51.43]
[47.99,42.96]
]],
},
{
rare=[[Bubbleblood]],
level=50,
spot="Maldraxxus/0 52.66,35.42",
item=184154,
quest=58870,
polish=false,
steps=[[
step
kill Bubbleblood##162727 |confirm |q 58870 |goto Maldraxxus/0 52.66,35.42 |future
|tip Kill the Clotting Mass adds that spawn to prevent it from healing.
]],
},
{
rare=[[Collector Kash]],
level=60,
spot="Maldraxxus/0 49.01,23.51",
item=184182,
quest=58005,
polish=false,
steps=[[
step
kill Collector Kash##159105 |confirm |q 58005 |goto Maldraxxus/0 49.01,23.51 |future
|tip It walks around this area.
]],
},
{
rare=[[Corpsecutter Moroc]],
level=60,
spot="Maldraxxus/0 26.39,26.33",
item=184177,
quest=58335,
polish=false,
steps=[[
step
Enter the tunnel |goto Maldraxxus/0 28.24,28.91 < 15 |only if walking
kill Corpsecutter Moroc##157058 |confirm |q 58335 |goto 26.39,26.33 |future
]],
},
{
rare=[[Deadly Dapperling]],
level=50,
spot="Maldraxxus/0 76.83,57.07",
item=181263,
quest=58868,
polish=false,
steps=[[
step
kill Deadly Dapperling##162711 |confirm |q 58868 |goto Maldraxxus/0 76.83,57.07 |future
]],
},
{
rare=[[Deepscar]],
level=50,
spot="Maldraxxus/0 46.73,45.50",
item=182191,
quest=58878,
polish=false,
steps=[[
step
kill Deepscar##162797 |confirm |q 58878 |goto Maldraxxus/0 46.73,45.50 |future
|tip Inside the building.
It can also spawn at: |notinsticky
[48.11,51.86]
[53.95,45.52]
]],
},
{
rare=[[Devour'us]],
level=50,
spot="Maldraxxus/0 45.05,28.42",
item=184178,
quest=58835,
polish=false,
steps=[[
step
kill Devour'us##162669 |confirm |q 58835 |goto Maldraxxus/0 45.05,28.42 |future
|tip It walks around this area.
]],
},
{
rare=[[Gieger]],
level=60,
spot="Maldraxxus/0 31.60,35.40",
item=182080,
covenant=NECROLORD,
quest=58872,
polish=false,
steps=[[
step
kill Gieger##162741 |confirm |q 58872 |goto Maldraxxus/0 31.60,35.40 |future
|tip Only members of the Necrolord covenant and channeling their Anima Conductor to the House of Constructs area can loot the mount dropped by this Rare.
]],
},
{
rare=[[Gristlebeak]],
level=50,
spot="Maldraxxus/0 57.79,51.55",
item=182196,
quest=58837,
polish=false,
steps=[[
step
clicknpc Unusual Egg##162761+
|tip Destroy all of the Unusual Eggs to make Gristlebeak attackable.
kill Gristlebeak##162588 |confirm |q 58837 |goto Maldraxxus/0 57.79,51.55 |future
]],
},
{
rare=[[Indomitable Schmitd]],
level=50,
spot="Maldraxxus/0 38.79,43.33",
item=182192,
quest=58332,
polish=false,
steps=[[
step
click Fuseless Special##339646
|tip They look like sparkling green fel bombs inside crates around this area.
Cast _"Fuseless Special"_ |cast 313451
|tip Throw the bomb at the Indomitable Schmitd to remove its shield.
kill Indomitable Schmitd##161105 |confirm |q 58332 |goto Maldraxxus/0 38.79,43.33 |future
]],
},
{
rare=[[Necromantic Anomaly]],
level=60,
spot="Maldraxxus/0 72.87,28.91",
item=181810,
quest=62369,
polish=false,
steps=[[
step
kill Necromantic Anomaly##174108 |confirm |q 62369 |goto Maldraxxus/0 72.87,28.91 |future
|tip At the top of the hill.
]],
},
{
rare=[[Nerissa Heartless]],
level=60,
spot="Maldraxxus/0 66.02,35.32",
item=182084,
quest=58851,
polish=false,
steps=[[
step
kill Nerissa Heartless##162690 |confirm |q 58851 |goto Maldraxxus/0 66.02,35.32 |future
|tip She walks around this area.
]],
},
{
rare=[[Nirvaska the Summoner]],
level=60,
spot="Maldraxxus/0 50.34,63.28",
item=181811,
quest=58629,
polish=false,
steps=[[
step
kill Nirvaska the Summoner##161857 |confirm |q 58629 |goto Maldraxxus/0 50.34,63.28 |future
|tip He will only spawn when the "Deadly Reminder" world quest is active.
]],
},
{
rare=[[Pesticide]],
level=50,
spot="Maldraxxus/0 53.72,61.32",
item=182205,
quest=58875,
polish=false,
steps=[[
step
kill Pesticide##162767 |confirm |q 58875 |goto Maldraxxus/0 53.72,61.32 |future
]],
},
{
rare=[[Ravenomous]],
level=60,
spot="Maldraxxus/0 53.84,18.77",
item=181283,
quest=58004,
polish=false,
steps=[[
step
kill Boneweave Spiderling##159901+
|tip They look like small, neutral spiders around this area.
|tip Simply walking over them will kill them.
|tip You must squish around 100 of them to spawn Ravenomous.
kill Ravenomous##159753 |confirm |q 58004 |goto Maldraxxus/0 53.84,18.77 |future
]],
},
{
rare=[[Sabreil the Bonecleaver]],
level=60,
spot="Maldraxxus/0 50.35,47.28",
item=181815,
quest=58784,
polish=false,
steps=[[
step
kill Sabreil the Bonecleaver##168147 |confirm |q 58784 |goto Maldraxxus/0 50.35,47.28 |future
|tip She spawns in the Theater of Pain arena during the "Bet On Yourself" daily quest.
]],
},
{
rare=[[Scunner]],
level=60,
spot="Maldraxxus/0 62.10,75.80",
item=181267,
quest=58006,
polish=false,
steps=[[
step
talk Pandemis##161841
Ask him _"Wear a mask?"_
Borrow a Gas Mask |havebuff spell:338920 |goto Maldraxxus/0 59.71,71.18 |q 58006 |future
step
kill Scunner##158406 |confirm |q 58006 |goto 62.10,75.80 |future
]],
},
{
rare=[[Sister Chelicerae]],
level=50,
spot="Maldraxxus/0 55.58,23.78",
item=181172,
quest=58003,
polish=false,
steps=[[
step
kill Intricate Webbing##159885
|tip Destroy the webbing to draw her out of the cave.
kill Sister Chelicerae##159886 |confirm |q 58003 |goto Maldraxxus/0 55.58,23.78 |future
]],
},
{
rare=[[Smorgas the Feaster]],
level=60,
spot="Maldraxxus/0 42.51,53.49",
item=181266,181265,
quest=58768,
polish=false,
steps=[[
step
click Bloody Lump##341460
kill Ravenous Bloodlouse##162504+
kill Smorgas the Feaster##162528 |confirm |q 58768 |goto Maldraxxus/0 42.51,53.49 |future
]],
},
{
rare=[[Tahonta]],
level=50,
spot="Maldraxxus/0 44.21,51.32",
item=182190,
quest=58783,
polish=false,
steps=[[
step
kill Tahonta##162586 |confirm |q 58783 |goto Maldraxxus/0 44.21,51.32 |future
]],
},
{
rare=[[Taskmaster Xox]],
level=60,
spot="Maldraxxus/0 50.56,20.11",
item=184192,
quest=58091,
polish=false,
steps=[[
step
kill Taskmaster Xox##160059 |confirm |q 58091 |goto Maldraxxus/0 50.56,20.11 |future
|tip He shares a spawn with Taskmaster Mortis, Taskmaster Joyless and Taskmaster Bloata.
|tip If one of them are here instead, kill them to try and get Taskmaster Xox to spawn.
]],
},
{
rare=[[Warbringer Mal'Korak]],
level=60,
spot="Maldraxxus/0 33.53,80.86",
item=182085,
quest=58889,
polish=false,
steps=[[
step
kill Wartusk##162818
kill Warbringer Mal'Korak##162819 |confirm |q 58889 |goto Maldraxxus/0 33.53,80.86 |future
]],
},
{
rare=[[Zargox the Reborn]],
level=60,
spot="Maldraxxus/0 28.96,51.38",
item=181804,
requires='{item:175827}',
quest=62079,
polish=false,
steps=[[
step
talk Synder Sixfold##157076
Ask him _"Can I borrow the orb again?"_
|tip If he has the "Ani-Matter Animator" quest instead of this dialogue option, accept the quest instead.
collect Ani-Matter Orb##175827 |goto Maldraxxus/0 26.30,42.66 |q 62079 |future
step
use the Ani-Matter Orb##175827 |only if default
use the Ani-Matter Orb##175841 |only if itemcount(175841) >= 1
|tip Use it on the Bone Mass at this location.
kill Zargox the Reborn##157125 |confirm |q 62079 |goto 28.96,51.38 |future
]],
},
{
rare=[[Amalgamation of Filth]],
level=60,
spot="Revendreth/0 53.16,73.02",
item=183729,
quest=59854,
polish=false,
steps=[[
step
click Rubbish Box##349554
Use the "Throw Rubbish" ability
|tip It appears as a button on the screen.
|tip Do this repeatedly to spawn the Amalgamation of Filth.
kill Violent Muckmare##166318+
kill Amalgamation of Filth##166393 |confirm |q 59854 |goto Revendreth/0 53.86,72.52 |future
|tip You can let Muckmaster Rotjaw tank if possible.
]],
},
{
rare=[[Amalgamation of Light]],
level=50,
spot="Revendreth/0 25.30,48.50",
item=180688,
quest=59584,
polish=false,
steps=[[
step
click Mirror Trap##344792+
|tip Click each of the mirrors to move them away from the center.
kill Amalgamation of Light##164388 |confirm |q 59584 |goto Revendreth/0 25.30,48.50 |future
]],
},
{
rare=[[Amalgamation of Sin]],
level=60,
spot="Revendreth/0 65.94,29.70",
item=183730,
quest=60836,
polish=false,
steps=[[
step
accept Summon Your Sins##60656 |goto Revendreth/0 65.74,30.70
|tip If this world quest is available today, you will accept this quest automatically.
|tip The Amalgamation of Sin can only be summoned while this world quest is active.
step
click Sinstone Fragment##353655+
|tip They look like small broken stone tablets on the ground around this area.
Kill Sinstone enemies around this area
collect 20 Sinstone Fragment##180279 |q 60656/1 |goto 65.74,30.70
step
Enter the building |goto 65.93,29.37 < 7 |walk
Click an object on the table
|tip Inside the building.
Choose a Catalyst |q 60656/2 |goto 65.69,29.15
step
talk Alchemist Leticia##170291
|tip Inside the building.
Tell her _"I am ready."_
Watch the dialogue
collect Amalgamation of Sin##180376 |confirm |q 60836 |goto 65.74,28.98 |future
|tip The quest reward is random, so this drop is not guaranteed and may take several attempts.
step
use Amalgamation of Sin##180376
kill Amalgamation of Sin##170434 |confirm |q 60836 |goto 65.94,29.70 |future
]],
},
{
rare=[[Azgar]],
level=50,
spot="Revendreth/0 35.81,70.52",
item=183731,
quest=59893,
polish=false,
steps=[[
step
kill Azgar##166576 |confirm |q 59893 |goto Revendreth/0 35.81,70.52 |future
|tip Avoid the small tornados and keep attacking to break the immune shield, then interrupt the channeled ability.
]],
},
{
rare=[[Bog Beast]],
level=50,
spot="Revendreth/0 35.00,32.30",
item=180588,
quest=59823,
polish=false,
steps=[[
step
accept Muck It Up##59808 |goto Revendreth/0 35.55,32.37
|tip If this world quest is available today, you will accept this quest automatically.
|tip The Bog Beast can only be summoned while this world quest is active.
step
kill Primordial Sludge##166206+
collect Primordial Muck##177880 |n
use the Primordial Muck##177880
|tip Using the Primordial Muck has a chance to spawn the Bog Beast.
|tip After collecting lots of Primordial Muck, you can join a raid group using the LFG system and then throw all of the muck at once, since being in a raid group will prevent the world quest from completing.
kill Bog Beast##166292 |confirm |q 59823 |goto 35.00,32.30 |future
]],
},
{
rare=[[Endlurker]],
level=50,
spot="Revendreth/0 66.55,59.46",
item=179927,
quest=59582,
polish=false,
steps=[[
step
click Anima Stake##
Collect the Anima Stake |havebuff spell:321827 |goto Revendreth/0 65.42,60.18 |q 59582 |future
It can also be found at [66.64,59.36]
step
Cast _"Lure"_ |cast 321827
|tip It appears as a button on the screen.
kill Endlurker##165206 |confirm |q 59582 |goto 66.55,59.46 |future
]],
},
{
rare=[[Executioner Aatron]],
level=60,
spot="Revendreth/0 37.07,47.43",
item=183737,
quest=59913,
polish=false,
steps=[[
step
kill Stone Legion Punisher##166715+
kill Executioner Aatron##166710 |q 59913 |goto Revendreth/0 37.07,47.43 |future
|tip He flies up and down the wall.
|tip Kill the Stone Legion Punishers to engage him.
|tip You can tell how many are left alive by the number of stacks of "Strength in Numbers" he has.
]],
},
{
rare=[[Executioner Adrastia]],
level=60,
spot="Revendreth/0 43.05,51.83",
item=180502,
quest=58441,
polish=false,
steps=[[
step
Kill enemies around this area
|tip Kill enemies inside the broken tower and around this area to free the friendly Darkwall Captives.
|tip Walk next to them after killing enemies to make sure they run free.
|tip Releasing enough Darkwall Captives will cause Executioner Adrastia to spawn.
kill Executioner Adrastia##161310 |confirm |q 58441 |goto Revendreth/0 43.05,51.83 |future
|tip She flies around this area.
]],
},
{
rare=[[Famu the Infinite]],
level=60,
spot="Revendreth/0 62.48,47.16",
item=180582,
quest=59869,
polish=false,
steps=[[
step
talk Seeker Hilda##166483
Tell her _"Let's close that rift!"_
|tip Kill the enemies that attack in waves to spawn Famu the Infinite.
kill Famu the Infinite##166521 |confirm |q 59869 |goto Revendreth/0 62.48,47.16 |future
]],
},
{
rare=[[Grand Arcanist Dimitri]],
level=60,
spot="Revendreth/0 20.48,52.98",
item=180503,
quest=60173,
polish=false,
steps=[[
step
Enter the building |goto Revendreth/0 20.90,54.38 < 7 |walk
kill Shrouded Ritualist##167467+
|tip Inside the building.
|tip Kill the four Shrouded Ritualists to release Grand Arcanist Dimitri.
kill Grand Arcanist Dimitri##167464 |confirm |q 60173 |goto 20.48,52.98 |future
]],
},
{
rare=[[Hopecrusher]],
level=60,
spot="Revendreth/0 52.07,51.82",
item=180581,
quest=59900,
polish=false,
steps=[[
step
kill Hopecrusher##166679 |confirm |q 59900 |goto Revendreth/0 52.07,51.82 |future
]],
},
{
rare=[[Huntmaster Petrus]],
level=60,
spot="Revendreth/0 61.71,79.49",
item=180705,
quest=60022,
polish=false,
steps=[[
step
Enter the building |goto Revendreth/0 61.80,79.01 < 10 |walk
kill Huntmaster Petrus##166993 |confirm |q 60022 |goto 61.71,79.49 |future
|tip Inside the building.
]],
},
{
rare=[[Innervus]],
level=60,
spot="Revendreth/0 21.40,36.16",
item=183735,
requires="{item:177223}",
quest=58210,
polish=false,
steps=[[
step
kill Feral Ritualist##160375+
collect 1 Scorched Crypt Key##177223 |q 58210 |goto Revendreth/0 21.68,36.44 |future
step
click Crypt Door##339822 |goto 21.85,35.92 < 5 |walk
kill Reckless Ritualist##160641+
|tip Downstairs inside the crypt.
kill Innervus##160640 |confirm |q 58210 |goto 21.40,36.16 |future
]],
},
{
rare=[[Leeched Soul]],
level=50,
spot="Revendreth/0 67.97,81.79",
item=183736,
quest=59580,
polish=false,
steps=[[
step
Enter the crypt |goto Revendreth/0 67.45,82.33 < 7 |walk
Kill enemies that attack in waves
|tip Downstairs inside the crypt.
kill Prideful Hulk##165175 |q 59580 |goto 67.97,81.79 |future
]],
},
{
rare=[[Lord Mortegore]],
level=60,
spot="Revendreth/0 75.97,61.61",
item=180501,
quest=58633,
polish=false,
steps=[[
step
kill Maldraxxi Defector##161180+
collect Mortegore Scroll##174378 |n
|tip You can only hold one at a time.
clicknpc Mortegore Sigil##161870+
|tip They look like small green glowing rocks on the ground around the large central Mortegore Obelisk.
kill Lord Mortegore##161891 |confirm |q 58633 |goto Revendreth/0 75.97,61.61 |future
]],
},
{
rare=[[Manifestation of Wrath]],
level=60,
spot="Revendreth/0 49.00,34.90",
item=180585,
quest=60729,
polish=false,
steps=[[
step
accept Swarming Souls##60654 |goto Revendreth/0 50.84,31.99
|tip If this world quest is available today, you will accept this quest automatically.
|tip The Manifestation of Wrath can only be spawned while this world quest is active.
step
clicknpc Lost Soul##169916+
|tip They look like floating ghosts around this area.
talk Avowed Ritualist##169917
Tell him _"I have a soul for you."_
|tip The Manifestation of Wrath has a chance to spawn when returning Lost Souls.
|tip If it doesn't spawn for you, you can wait here to see if it spawns for another player.
kill Manifestation of Wrath##170048 |confirm |q 60729 |goto 49.02,34.86 |future
]],
},
{
rare=[[Scrivener Lenua]],
level=60,
spot="Revendreth/0 38.31,69.14",
item=180587,
quest=58213,
polish=false,
steps=[[
step
clicknpc Forbidden Tomes##160753+
|tip They look like piles of books and scrolls on the ground around this area.
|tip They will appear on your mini map as yellow dots.
|tip They will only spawn if there is text at the top of the screen that says "Forbidden Tomes returned: 0/4".
|tip If this text is not showing, you must wait for the event to respawn.
|tip Bring four Forbidden Tomes back to the library room to summon Scrivener Lenua.
kill Scrivener Lenua##160675 |confirm |q 58213 |goto Revendreth/0 38.31,69.14 |future
]],
},
{
rare=[[Sinstone Hoarder]],
level=60,
spot="Revendreth/0 67.44,30.48",
item=183732,
quest=62252,
polish=false,
steps=[[
step
Enter the building |goto Revendreth/0 66.92,30.32 < 7 |only if walking
clicknpc Catacombs Cache##162503
|tip Inside the building.
kill Sinstone Hoarder##162481
clicknpc Catacombs Cache##162503 |confirm |q 62252 |goto 67.44,30.48 |future
]],
},
{
rare=[[Sire Ladinas]],
level=60,
spot="Revendreth/0 34.04,55.55",
item=180873,
quest=58263,
polish=false,
steps=[[
step
click Remnant of Light##339499+
|tip They look like small yellow glittering rocks on the ground around this area.
Use _"Light Impalement"_
|tip It appears as a button on the screen.
|tip Use it on Crazed Ash Ghouls around this area to have a chance of spawning the Sire Ladinas.
|tip This ability is usable while carrying a Remnant of Light.
kill Sire Ladinas##160857 |confirm |q 58263 |goto Revendreth/0 34.04,55.55 |future
]],
},
{
rare=[[Soulstalker Doina]],
level=50,
spot="Revendreth/0 78.93,49.75",
item=180692,
quest=58130,
polish=false,
steps=[[
step
Cross the bridge |goto Revendreth/0 77.04,49.72 < 20 |only if walking
Enter the building |goto 78.58,49.72 < 10 |walk
kill Soulstalker Doina##160392 |confirm |q 58130 |goto Revendreth/0 78.93,49.75 |future
|tip Inside the building.
|tip Follow her downstairs and through the portals when she runs away.
]],
},
{
rare=[[Stonefist]],
level=60,
spot="Revendreth/0 31.31,23.24",
item=180488,
quest=62220,
polish=false,
steps=[[
step
kill Stonefist##159503 |q 62220 |goto Revendreth/0 31.31,23.24 |future
]],
},
{
rare=[[Tollkeeper Varaboss]],
level=50,
spot="Revendreth/0 66.48,71.50",
item=179363,
quest=59595,
polish=false,
steps=[[
step
Enter the building |goto Revendreth/0 66.48,70.78 < 7 |walk
kill Tollkeeper Varaboss##165253 |confirm |q 59595 |goto 66.48,71.50 |future
|tip Inside the building.
]],
},
{
rare=[[Tomb Burster]],
level=50,
spot="Revendreth/0 43.09,79.16",
item=180584,
quest=56877,
polish=false,
steps=[[
step
kill Crawler Egg##155769+
|tip They look like wiggling white coccoons around this area.
|tip If the Crawler Eggs aren't there then the rare is not currently available.
Kill the enemies that attack in waves
kill Tomb Burster##155779 |confirm |q 56877 |goto Revendreth/0 43.09,79.16 |future
]],
},
{
rare=[[Worldedge Gorger]],
level=60,
spot="Revendreth/0 38.61,72.21",
item=180583,
requires="{item:173939}",
quest=58259,
polish=false,
steps=[[
step
Kill Encroaching enemies around this area
collect 1 Enticing Anima##173939 |q 58259 |goto Revendreth/0 40.08,72.10 |future
step
use Enticing Anima##173939
kill Worldedge Gorger##160821 |confirm |q 58259 |goto 38.61,72.21 |future
]],
},
{
rare=[[Apholeias, Herald of Loss]],
level=60,
spot="The Maw/0 19.32,41.72",
item=182327,
quest=60788,
polish=false,
steps=[[
step
Have a player stand on each of the four plates:
Cast _"Convocation of Loss"_ |cast Convocation of Loss##331783
|tip It appears as a button on the screen when each of the four plates around this circular platform has a player standing on it.
kill Apholeias, Herald of Loss##170301 |confirm |q 60788 |goto The Maw/0 19.32,41.72 |future
]],
},
{
rare=[[Borr-Geth]],
level=60,
spot="The Maw/0 39.01,41.19",
item=184312,
quest=57469,
polish=false,
steps=[[
step
kill Borr-Geth##157833 |confirm |q 57469 |goto The Maw/0 39.01,41.19 |future
]],
},
{
rare=[[Conjured Death]],
level=60,
spot="The Maw/0 27.73,13.05",
item=183887,
quest=61106,
polish=false,
steps=[[
step
kill Conjured Death##171317 |confirm |q 61106 |goto The Maw/0 27.73,13.05 |future
]],
},
{
rare=[[Darithis the Bleak]],
level=60,
spot="The Maw/0 60.96,48.05",
item=184395,
quest=62281,
polish=false,
steps=[[
step
Enter the cave |goto The Maw/0 59.46,51.88 < 7 |walk
kill Darithis the Bleak##160770 |confirm |q 62281 |goto 60.96,48.05 |future
|tip Inside the cave.
|tip If you do not have the "Make it Double!" achievement, you will periodically lose control of your character and take a large amount of damage while in this zone.
]],
},
{
rare=[[Darklord Taraxis]],
level=60,
spot="The Maw/0 49.12,81.75",
item=184395,
quest=62282,
polish=false,
steps=[[
step
kill Darklord Taraxis##158025 |confirm |q 62282 |goto The Maw/0 49.12,81.75 |future
|tip If you do not have the "Make it Double!" achievement, you will periodically lose control of your character and take a large amount of damage while in this zone.
]],
},
{
rare=[[Dolos]],
level=60,
spot="The Maw/0 32.94,66.46",
item=184395,
quest=60909,
polish=false,
steps=[[
step
Earn the "Prepare for Trouble!" achievement |achieve 14746
|tip Use the "Prepare for Trouble!" achievement guide to accomplish this.
|tip You must have this achievement to reach this rare.
step
Go through the first gate |goto The Maw/0 33.0,57.0 < 10 |only if walking
Go through the second gate |goto 34.9,66.4 < 10 |only if walking
kill Dolos##170711 |confirm |q 60909 |goto 32.94,66.46 |future
]],
},
{
rare=[[Eketra]],
level=60,
spot="The Maw/0 23.76,53.41",
item=173202,
quest=60915,
polish=false,
steps=[[
step
kill Eketra##170774 |confirm |q 60915 |goto The Maw/0 23.76,53.41 |future
]],
},
{
rare=[[Ekphoras, Herald of Grief]],
level=60,
spot="The Maw/0 42.34,21.08",
item=184105,
quest=60666,
polish=false,
steps=[[
step
Have a player stand on each of the four plates:
Cast _"Convocation of Grief"_ |cast Convocation of Grief##330650
|tip It appears as a button on the screen when each of the four plates around this circular platform has a player standing on it.
kill Ekphoras, Herald of Grief##169827 |confirm |q 60666 |goto The Maw/0 42.34,21.08 |future
]],
},
{
rare=[[Eternas the Tormentor]],
level=60,
spot="The Maw/0 27.58,49.66",
item=175769,
quest=57509,
polish=false,
steps=[[
step
kill Eternas the Tormentor##154330 |confirm |q 57509 |goto The Maw/0 27.58,49.66 |future
]],
},
{
rare=[[Exos, Herald of Domination]],
level=60,
spot="The Maw/0 20.58,69.35",
item=184108,
requires="{item:182329}",
quest=62260,
polish=false,
steps=[[
step
Earn the "Prepare for Trouble!" achievement |achieve 14746
|tip Use the "Prepare for Trouble!" achievement guide to accomplish this.
|tip You must have this achievement to reach this rare.
step
kill Talaporas, Herald of Pain##170302
|tip Use the POI feature to accomplish this.
collect 1 Dominion Etching: Pain##182326 |goto The Maw/0 28.70,12.04 |complete itemcount(182326) == 1 or itemcount(182329) == 1 or completedq(62260)
|tip This item is required to create a Domination's Calling, which is used to summon Exos, Herald of Domination.
step
kill Apholeias, Herald of Loss##170301
|tip Use the POI feature to accomplish this.
collect 1 Dominion Etching: Loss##182327 |goto 19.32,41.72 |complete itemcount(182327) == 1 or itemcount(182329) == 1 or completedq(62260)
|tip This item is required to create a Domination's Calling, which is used to summon Exos, Herald of Domination.
step
kill Ekphoras, Herald of Grief##169827
|tip Use the POI feature to accomplish this.
collect 1 Dominion Etching: Grief##182328 |goto 42.34,21.08 |complete itemcount(182328) == 1 or itemcount(182329) == 1 or completedq(62260)
|tip This item is required to create a Domination's Calling, which is used to summon Exos, Herald of Domination.
step
use Dominion Etching: Pain##182326
collect Domination's Calling##182329 |q 62260 |future
step
Go through the first gate |goto The Maw/0 33.0,57.0 < 10 |only if walking
Go through the second gate |goto 34.9,66.4 < 10 |only if walking
Enter the cave |goto 23.0,68.4 < 7 |walk
use Domination's Calling##182329
|tip Inside the cave.
click Portal to Dominion's Apex |goto 46.0,47.7 < 5 |walk
kill Exos, Herald of Domination##170303 |confirm |q 62260 |goto 20.58,69.35 |future
]],
},
{
rare=[[Morguliax]],
level=60,
spot="The Maw/0 16.94,51.02",
item=184292,
quest=60987,
polish=false,
steps=[[
step
kill Morguliax##162849 |confirm |q 60987 |goto The Maw/0 16.94,51.02 |future
]],
},
{
rare=[[Nascent Devourer]],
level=60,
spot="The Maw/0 45.50,73.76",
item=158278,
quest=57573,
polish=false,
steps=[[
step
kill Nascent Devourer##158278 |confirm |q 57573 |goto The Maw/0 45.50,73.76 |future
|tip If you do not have the "Make it Double!" achievement, you will periodically lose control of your character and take a large amount of damage while in this zone.
]],
},
{
rare=[[Obolos <Prime Adjutant>]],
level=60,
spot="The Maw/0 48.80,18.30",
item=173202,
quest=60667,
polish=false,
steps=[[
step
kill Obolos##164064 |confirm |q 60667 |goto The Maw/0 48.80,18.30 |future
]],
},
{
rare=[[Orophea]],
level=60,
spot="The Maw/0 23.69,21.39",
item=181794,
quest=61519,
polish=false,
steps=[[
step
click Eurydea's Necklace##356555
Collect Eurydea's Necklace |havebuff spell:337150 |goto The Maw/0 26.79,29.32 |q 61519 |future
step
Cast _"Eurydea's Necklace"_ |cast Eurydea's Necklace##337150
|tip It appears as a button on the screen.
|tip Use it on Orophea.
|tip Watch the timing of the "Overpowering Dirge" spell Orophea is channeling and use the necklace in between the pulses.
kill Orophea##172577 |confirm |q 61519 |goto 23.69,21.39 |future
]],
},
{
rare=[[Shadeweaver Zeris]],
level=60,
spot="The Maw/0 30.72,60.36",
item=183066,
quest=60884,
polish=false,
steps=[[
step
Earn the "Prepare for Trouble!" achievement |achieve 14746
|tip Use the "Prepare for Trouble!" achievement guide to accomplish this.
|tip You must have this achievement to reach this rare.
step
Go through the first gate |goto The Maw/0 33.0,57.0 < 10 |only if walking
Go through the second gate |goto 34.9,66.4 < 10 |only if walking
kill Shadeweaver Zeris##170634 |confirm |q 60884 |goto The Maw/0 30.72,60.36 |future
]],
},
{
rare=[[Soulforger Rhovus]],
level=60,
spot="The Maw/0 35.97,41.56",
item=171833,
quest=60834,
polish=false,
steps=[[
step
kill Soulforger Rhovus##166398 |confirm |q 60834 |goto The Maw/0 35.97,41.56 |future
]],
},
{
rare=[[Talaporas, Herald of Pain]],
level=60,
spot="The Maw/0 28.70,12.04",
item=184107,
quest=60789,
polish=false,
steps=[[
step
Have a player stand on each of the four plates:
Cast _"Convocation of Pain"_ |cast Convocation of Pain##331800
|tip It appears as a button on the screen when each of the four plates around this circular platform has a player standing on it.
kill Talaporas, Herald of Pain##170302 |confirm |q 60789 |goto The Maw/0 28.70,12.04 |future
]],
},
{
rare=[[Thanassos]],
level=60,
spot="The Maw/0 27.39,71.52",
item=184395,
quest=60914,
polish=false,
steps=[[
step
kill Thanassos##170731 |confirm |q 60914 |goto The Maw/0 27.39,71.52 |future
]],
},
{
rare=[[Yero the Skittish]],
level=60,
spot="The Maw/0 38.84,58.61",
item=184395,
quest=61568,
polish=false,
steps=[[
step
Approach Yero |goto The Maw/0 37.87,61.55 < 10 |walk
|tip It looks like a friendly spirit that floats around this area.
|tip After approaching, it will float into a nearby cave and become attackable.
Enter the cave |goto 38.84,58.61 < 7 |walk
kill Yero the Skittish##172862 |confirm |q 61568 |goto 37.44,62.06 |future
|tip Inside the cave.
]],
},
{
rare=[[Agonix]],
level=60,
spot="The Maw/0 23.00,41.60",
item=184395,
quest=61136,
polish=false,
steps=[[
step
kill Agonix##169102 |confirm |q 61136 |goto The Maw/0 23.00,41.60 |future
]],
},
{
rare=[[Akros]],
level=60,
spot="The Maw/0 26.07,54.98",
item=184395,
quest=60920,
polish=false,
steps=[[
step
kill Akros##170787 |confirm |q 60920 |goto The Maw/0 26.07,54.98 |future
|tip Fight with your back against the wall so you don't get knocked off.
]],
},
{
rare=[[Cyrixia]],
level=60,
spot="The Maw/0 28.71,25.13",
item=183070,
quest=61346,
polish=false,
steps=[[
step
kill Cyrixia##168693 |confirm |q 61346 |goto The Maw/0 28.71,25.13 |future
]],
},
{
rare=[[Dartanos]],
level=60,
spot="The Maw/0 25.83,14.79",
item=183070,
quest=59230,
polish=false,
steps=[[
step
Step onto the teleporter |goto The Maw/0 27.62,17.41 < 5 |only if walking
kill Dartanos##162452 |confirm |q 59230 |goto 25.83,14.79 |future
|tip At the top of the tower.
]],
},
{
rare=[[Dath Rezara]],
level=60,
spot="The Maw/0 19.20,57.40",
item=183070,
quest=61140,
polish=false,
steps=[[
step
kill Dath Rezara##162844 |confirm |q 61140 |goto The Maw/0 19.20,57.40 |future
]],
},
{
rare=[[Drifting Sorrow]],
level=60,
spot="The Maw/0 34.20,20.00",
item=183070,
quest=59183,
polish=false,
steps=[[
step
kill Agonizing Shade##175246+
|tip Kill Agonizing Shades around this area to spawn Drifting Sorrow.
kill Drifting Sorrow##158314 |confirm |q 59183 |goto The Maw/0 34.20,20.00 |future
]],
},
{
rare=[[Houndmaster Vasanok]],
level=60,
spot="The Maw/0 60.45,64.78",
item=183070,
quest=62209,
polish=false,
steps=[[
step
kill Houndmaster Vasanok##172523 |confirm |q 62209 |goto The Maw/0 60.45,64.78 |future
|tip If you do not have the "Make it Double!" achievement, you will periodically lose control of your character and take a large amount of damage while in this zone.
]],
},
{
rare=[[Krala <Death's Wings>]],
level=60,
spot="The Maw/0 30.84,68.66",
item=183070,
quest=63381,
polish=false,
steps=[[
step
kill Krala##170692 |confirm |q 63381 |goto The Maw/0 30.84,68.66 |future
]],
},
{
rare=[[Malevolent Stygia]],
level=60,
spot="The Maw/0 27.31,17.54",
item=183070,
quest=61125,
polish=false,
steps=[[
step
Enter the cave |goto The Maw/0 27.31,18.30 < 7 |walk
kill Malevolent Stygia##171316 |confirm |q 61125 |goto 27.31,17.54 |future
|tip Inside the cave.
]],
},
{
rare=[[Odalrik]],
level=60,
spot="The Maw/0 43.80,48.00",
item=178561,
quest=62618,
polish=false,
steps=[[
step
kill Odalrik##172207 |confirm |q 62618 |goto The Maw/0 43.80,48.00 |future
]],
},
{
rare=[[Orrholyn]],
level=60,
spot="The Maw/0 25.36,48.75",
item=183070,
quest=60991,
polish=false,
steps=[[
step
kill Orrholyn##162845 |confirm |q 60991 |goto The Maw/0 25.36,48.75 |future
]],
},
{
rare=[[Razkazzar]],
level=60,
spot="The Maw/0 26.17,37.44",
item=183070,
quest=62228,
polish=false,
steps=[[
step
kill Razkazzar##162829 |confirm |q 62228 |goto The Maw/0 26.17,37.44 |future
]],
},
{
rare=[[Sanngror the Torturer]],
level=50,
spot="The Maw/0 55.62,63.18",
item=183070,
quest=62210,
polish=false,
steps=[[
step
kill Sanngror the Torturer##172521 |confirm |q 62210 |goto The Maw/0 55.62,63.18 |future
]],
},
{
rare=[[Skittering Broodmother]],
level=60,
spot="The Maw/0 61.73,77.95",
item=184395,
quest=62211,
polish=false,
steps=[[
step
Enter the cave |goto The Maw/0 59.37,80.07 < 7 |walk
Kill Mawrat enemies around this area
|tip Inside the cave.
|tip Kill them to spawn the Skittering Broodmother if she's not already spawned.
kill Skittering Broodmother##172524 |confirm |q 62211 |goto 61.73,77.95 |future
|tip If you do not have the "Make it Double!" achievement, you will periodically lose control of your character and take a large amount of damage while in this zone.
]],
},
{
rare=[[Huwerath]],
level=60,
spot="The Maw/0 20.78,29.68",
item=184395,
quest=58918,
polish=false,
steps=[[
step
Enter the cave |goto The Maw/0 21.28,29.40 < 7 |walk
kill Huwerath##162965 |confirm |q 58918 |goto 20.78,29.68 |future
|tip Inside the cave.
]],
},
{
rare=[[Soulsmith Yol-Mattar]],
level=60,
spot="The Maw/0 36.25,37.44",
item=184395,
quest=59441,
polish=false,
steps=[[
step
kill Soulsmith Yol-Mattar##165047 |confirm |q 59441 |goto The Maw/0 36.25,37.44 |future
]],
},
{
rare=[[Stygian Incinerator]],
level=60,
spot="The Maw/0 36.84,44.80",
item=178044,
quest=62539,
polish=false,
steps=[[
step
kill Stygian Incinerator##156203 |confirm |q 62539 |goto The Maw/0 36.84,44.80 |future
]],
},
{
rare=[[Valis the Cruel]],
level=60,
spot="The Maw/0 40.70,59.59",
item=184395,
quest=61728,
polish=false,
steps=[[
step
clicknpc Rune of Cruelty##174810+ |goto The Maw/0 40.89,59.36 < 5 |walk
|tip Click the three runes to summon Valis the Cruel.
|tip The order in which the runes must be clicked changes after every time it is summoned.
|tip If you click the wrong rune you'll get a one minute debuff, wait for it to expire and then try a different rune.
|tip If you click the correct rune an orb will appear floating over the rune.
kill Valis the Cruel##173086 |confirm |q 61728 |goto 40.70,59.59 |future
]],
},
{
rare=[[Akkaris]],
level=60,
spot="Zereth Mortis/0 64.74,33.69",
quest=65549,
polish=true,
steps=[[
step
kill Akkaris##179006 |goto Zereth Mortis/0 64.74,33.69 |q 65549 |future
|tip If you attacking the elites fighting Akkaris, they will contribute damage.
|tip Interrupt the "Lingering Mucus" cast.
|tip "Devouring Helix" will draw you towards Akkaris and deal physical damage every second.
|tip "Whirling Smash" will deal AoE damage followed by a 2 second stun in a 10 yard radius.
]],
},
{
rare=[[Chitali the Eldest]],
level=60,
spot="Zereth Mortis/0 49.56,67.51",
quest=65553,
polish=true,
steps=[[
step
kill Chitali the Eldest##183596 |goto Zereth Mortis/0 49.56,67.51 |q 65553 |future
|tip It walks around this area.
|tip "Hoof Stop" deals physical damage and stacks a 10% increased damage taken debuff.
|tip "Alert the Herd" will draw nearby Cervid mobs to attack you.
|tip Step out of the path of "Furious Charge" to avoid being stunned.
]],
},
{
rare=[[Corrupted Architect]],
level=60,
spot="Zereth Mortis/0 47.48,62.28",
quest=65273,
polish=true,
steps=[[
step
kill Corrupted Architect##183953 |goto Zereth Mortis/0 47.48,62.28 |q 65273 |future
|tip "Desecrate" deals heavy AoE damage to anyone within 40 yards.
|tip During "Desecrate," dealing enough damage to break the barrier will stun the Corrupted Architect, breaking the cast.
|tip Destroy "Charged Sentry" orbs when they appear.
|tip If you have threat, an "Unstable Core" will periodically be cast at your location and explode after a short duration.
|tip This rare has particularly heavy damage output.
]],
},
{
rare=[[Destabilized Core]],
level=60,
spot="Zereth Mortis/0 53.63,44.35",
item=189985,
quest=64716,
polish=true,
steps=[[
step
kill Destabilized Core##180917 |goto Zereth Mortis/0 53.61,44.33 |q 64716 |future
|tip While "Overload" is channeling, move out of swirling spots on the ground.
|tip Save cooldowns for the final 20%, when it will "Meltdown" and deal AoE damage until death.
]],
},
{
rare=[[Feasting]],
level=60,
spot="Zereth Mortis/0 61.80,60.63",
quest=65557,
polish=true,
steps=[[
step
kill Feasting##178229 |goto Zereth Mortis/0 61.80,60.63 |q 65557 |future
|tip Run over eggs on the ground to destroy them.
|tip "Poison Chomp" inflicts nature damage over time and stacks.
|tip "Sticky Venom" deals damage and reduces your movement speed, making it more difficult to run over eggs.
]],
},
{
rare=[[Furidian]],
level=60,
spot="Zereth Mortis/0 64.57,58.65",
item=190004,
quest=65544,
polish=true,
steps=[[
step
click Empowered Key
|tip If you can't click it, it is either already unlocked or the rare is not active.
Click Here to Continue |confirm |goto Zereth Mortis/0 64.01,57.31 |q 65544 |future
step
click Empowered Key
|tip If you can't click it, it is either already unlocked or the rare is not active.
Click Here to Continue |confirm |goto 62.60,59.82 |q 65544 |future
step
click Empowered Key
|tip If you can't click it, it is either already unlocked or the rare is not active.
Click Here to Continue |confirm |goto 64.46,60.42 |q 65544 |future
step
click Suspiciously Angry Chest
|tip The three floating locks should be glowing.
|tip It may take a moment to become interactive.
kill Furidian##183646 |goto Zereth Mortis/0 64.57,58.65 |q 65544 |future
|tip Furidian gains stacks of "Anger" for every 10% health lost, increasing its attack speed with each stack.
|tip 20% of Furidian's melee attacks will apply a bleed effect.
|tip "Raging Flurry" does slightly more damage than regular melee attacks.
]],
},
{
rare=[[General Zarathura]],
level=60,
spot="Zereth Mortis/0 59.86,21.11",
item=189968,
quest=65583,
polish=true,
steps=[[
step
kill General Zarathura##182318 |goto Zereth Mortis/0 59.86,21.11 |q 65583 |future
|tip "Army of Deceit" will summon copies of nearby players to attack you.
|tip "Commanding Stomp" will deal damage and stun anyone within 15 yards, but can be interrupted.
|tip Interrupt "Carrion Swarm" when possible.
|tip Upon casting "Sweeping Calamity," Zarathura will fly forward, dealing damage and leaving behind shadow pools.
|tip Don't stand in pools on the ground.
]],
},
{
rare=[[Euv'ouk]],
level=60,
spot="Zereth Mortis/0 47.47,45.16",
item=164477,
quest=65555,
polish=true,
steps=[[
step
kill Euv'ouk##184409 |goto Zereth Mortis/0 47.47,45.16 |confirm |q 65555 |future
|tip "Phasic Wound" will inflict damage to everyone nearby every 3 seconds.
|tip "Draw Spark" will buff Euv'ouk with +10% damage taken and dealt for each player or pet nearby.
|tip Stacks of this buff can be dispelled.
]],
},
{
rare=[[Gluttonous Overgrowth]],
level=60,
spot="Zereth Mortis/0 53.08,93.05",
quest=65579,
polish=true,
steps=[[
step
click Bulging Root
|tip If it is not present, someone has already pulled it.
|tip If the rare is not active, none of the five Bulging Roots will be present.
Click Here After Pulling the Bulging Root |confirm |goto Zereth Mortis/0 53.46,90.81
step
click Bulging Root
|tip If it is not present, someone has already pulled it.
|tip If the rare is not active, none of the five Bulging Roots will be present.
Click Here After Pulling the Bulging Root |confirm |goto 54.01,91.18
step
click Bulging Root
|tip If it is not present, someone has already pulled it.
|tip If the rare is not active, none of the five Bulging Roots will be present.
Click Here After Pulling the Bulging Root |confirm |goto 52.38,92.80
step
click Bulging Root
|tip If it is not present, someone has already pulled it.
|tip If the rare is not active, none of the five Bulging Roots will be present.
Click Here After Pulling the Bulging Root |confirm |goto 52.01,93.77
step
click Bulging Root
|tip If it is not present, someone has already pulled it.
|tip If the rare is not active, none of the five Bulging Roots will be present.
Click Here After Pulling the Bulging Root |confirm |goto 53.21,93.02
step
kill Gluttonous Overgrowth##178778 |goto 53.08,93.05 |q 65579 |future
|tip "Leaf Storm" inflicts damage and slows movement speed ever second while within 10 yards.
|tip Every "Vampiric Bite" will heal the Gluttonous Overgrowth slightly.
|tip Interrupt "Putrid Breath" on cooldown.
]],
},
{
rare=[[Gorkek]],
level=60,
spot="Zereth Mortis/0 80.38,47.06",
item=190001,
quest=63988,
polish=true,
steps=[[
step
kill Gorkek##178963 |goto Zereth Mortis/0 80.32,45.94 |q 63988 |future
|tip Move out of green pools on the ground after "Poisonous Cloud" casts.
|tip Interrupt every cast of "Play Dead" or Gorkek will rapidly heal.
You can also find it around:
[80.38,47.06]
[80.84,48.86]
]],
},
{
rare=[[Hirukon]],
level=60,
spot="Zereth Mortis/0 52.28,75.41",
item=187676,
quest=65548,
polish=true,
steps=[[
stickystart "Info_Message"
step
talk Retriever Au'prin##156671
Train Fishing |skillmax Fishing,300 |goto Oribos/0 46.13,26.34
step
talk Retriever Au'prin##156671
Train Shadowlands Fishing |skillmax Shadowlands Fishing,200 |goto 46.13,26.34
step
cast Fishing##131474
|tip Fish around the giant round orb with swirling waves around it.
collect Strange Goop##187662 |goto Zereth Mortis/0 52.38,75.02 |q 65039 |future
|tip This has a very low drop chance.
|tip You can also purchase it from the Auction House.
step
cast Fishing##131474
|tip Fish from the Flipper Fish school.
click Flipper Fish
|tip It will slip and flop around on the ground.
|tip Click it quickly to collect it.
|tip Try to click it at a spot where it stops or changes direction.
collect Flipper Fish##187922 |goto Nazjatar/0 72.8,24.3 |q 65039
step
cast Fishing##131474
|tip Fish from the Pungent Blobfish school inside Coilfang Reservoir.
|tip It spawns in various locations around the water.
|tip If you do not see it, it will respawn shortly.
collect Pungent Blobfish##187915 |goto Zangarmarsh/0 51.91,37.28 |region coilfangcave |q 65039
step
click Coilclutch Vine##373438
|tip On the middle level of the ruins, on the bacony of the tower.
|tip The balcony has pillars surrounding it.
|tip It is very difficult to see, blending in with the plants in the background.
collect Coilclutch Vine##187916 |goto Shimmering Expanse/0 34.7,75.0 |q 65039
step
talk Baroness Vashj##182194
Tell her _"I've brought the materials you need."_
collect Aurelid Lure##187923 |goto Maldraxxus/0 57.57,92.07 |q 65039
stickystop "Info_Message"
step
use the Aurelid Lure##187923
|tip This will apply it to your fishing pole.
cast Fishing##131474
|tip Fish in the Aurelid school to summon Hirukon.
kill Hirukon##180978 |goto Zereth Mortis/0 51.86,74.31 |confirm |q 65548 |future
|tip Interrupt "Torrent" on cooldown.
|tip After each "Cosmic Tides" cast, avoid the swirling white orbs floating around.
step
label "Info_Message"
kill Hirukon##180978 |goto Zereth Mortis/0 52.28,75.41 |confirm |q 65548 |future
|tip This rare must be summoned by fishing up a rare item.
|tip You can kill it when someone else summons, but the mount is only gauranteed when you summon it yourself.
]],
},
{
rare=[[Garudeon]],
level=60,
spot="Zereth Mortis/0 69.07,36.62",
item=189937,
quest=64719,
polish=true,
steps=[[
step
clicknpc Energizing Leporid##183562
|tip They look like tiny bugs on the ground around this area.
collect Energizing Leporid##188523 |q 64719 |future |goto Zereth Mortis/0 67.61,38.87
Check to see if Garudeon is active here first [Zereth Mortis/0 69.10,36.66]
|tip It will be on the highest pillar in the giant nest with a dodecahedron surrounding it.
step
Use the _"Throw Leporid"_ ability
|tip It appears as a button on your screen.
Feed the First Hungry Nestling |complete itemcount(188523) == 0 |goto Zereth Mortis/0 68.62,38.00
step
clicknpc Energizing Leporid##183562
|tip They look like tiny bugs on the ground around this area.
collect Energizing Leporid##188523 |q 64719 |future |goto Zereth Mortis/0 67.61,38.87
step
Use the _"Throw Leporid"_ ability
|tip It appears as a button on your screen.
Feed the Second Hungry Nestling |complete itemcount(188523) == 0 |goto 69.04,37.29
step
clicknpc Energizing Leporid##183562
|tip They look like tiny bugs on the ground around this area.
collect Energizing Leporid##188523 |q 64719 |future |goto Zereth Mortis/0 67.61,38.87
step
Use the _"Throw Leporid"_ ability
|tip It appears as a button on your screen.
Feed the Final Hungry Nestling |complete itemcount(188523) == 0 |goto 68.86,36.55
step
kill Garudeon##180924 |goto Zereth Mortis/0 68.75,37.04 |q 64719 |future
|tip After feeding the three Hungry Nestlings, it will fly down and attack.
|tip During "Deadly Gust" casts, move away from the front of Garudeon.
|tip Periodically a raptora will swoop down and pick you up.
|tip Kill the raptora quickly before it can drop you from a high point.
|tip During "Prime Rage," Garudeon's attack speed will be increased by 75%.
]],
},
{
rare=[[Hadeon the Stonebreaker]],
level=60,
spot="Zereth Mortis/0 52.61,25.03",
item=164477,
quest=65581,
polish=true,
steps=[[
step
kill Hadeon the Stonebreaker##178563 |goto Zereth Mortis/0 52.61,25.03 |confirm |q 65581 |future
|tip "Debilitating Headbutt" will leave a stacking debuff that reduces max health by 3% per application.
|tip Move out of swirling areas on the ground while Hadeon is underground.
|tip "Earthen Barrier" can be purged to remove the damage absorb.
]],
},
{
rare=[[Otaris the Provoked]],
level=60,
spot="Zereth Mortis/0 58.65,40.39",
item=189909,
quest=65257,
polish=true,
steps=[[
step
Enter the cave |goto Zereth Mortis/0 58.71,38.06 < 10 |walk
kill Mawsworn Binder##183897+
|tip Kill both binders to release Otaris.
kill Otaris the Provoked##183814 |goto 58.65,40.39 |q 65257 |future
|tip Inside the cave.
|tip Move out of the circular arc of "Defensive Sweep" from drones or it will stun you.
|tip "Reverberating Stomp" stuns anyone within 15 yards.
|tip Run around during "Charged Barrage," avoiding drone sweeps and areas on the ground.
]],
},
{
rare=[[Mother Phestis]],
level=60,
spot="Zereth Mortis/0 54.08,34.93",
item=164477,
quest=65547,
polish=true,
steps=[[
step
Enter the building |goto Zereth Mortis/0 55.91,32.67 < 10 |walk
kill Mother Phestis##178508 |goto Zereth Mortis/0 54.08,34.93 |q 65547 |future
|tip Inside the building.
|tip "Brood Stacks" that spawn will hatch into spiders if not killed within a few seconds.
|tip Interrupt "Acid Spit" on cooldown.
]],
},
{
rare=[[Orixal]],
level=60,
spot="Zereth Mortis/0 57.99,84.54",
item=189912,
quest=65582,
polish=true,
steps=[[
step
kill Overgrown Helicid##185487+
|tip Kill any of these that you see because they share the same spawn as Orixal.
kill Orixal##179043 |goto Zereth Mortis/0 55.64,68.77 |q 65582 |future
|tip Travel back and forth between the two points killing Overgrown Helicids until Orixal spawns.
|tip "Shell Barrier" reduces damage Orixal takes by 50% for 5 seconds.
|tip Move away or stun Orixal during "Slime Slam."
|tip Stay out of green "Slime Trails" on the ground.
|tip Interrupt "Sticky Mucus" on cooldown.
You can find more around [58.55,83.20]
]],
},
{
rare=[[Otiosen]],
level=60,
spot="Zereth Mortis/0 43.30,87.62",
item=189995,
quest=65556,
polish=true,
steps=[[
step
kill Otiosen##183746 |goto Zereth Mortis/0 43.30,87.62 |q 65556 |future
|tip Interrupt "Regenerate" quickly before Otiosen can heal large amounts.
|tip Move out of green "Paralytic Spew" on the ground when cast.
|tip If you are not tanking, avoid "Crippling Slime" by standing to the rear or sides.
]],
},
{
rare=[[Protector of the First Ones]],
level=60,
spot="Zereth Mortis/0 38.87,27.62",
item=189984,
quest=64668,
polish=true,
steps=[[
step
click Barrier Control Console+ |goto Zereth Mortis/0 39.81,26.37
|tip This rare requires two players to summon.
|tip If the cave is already open, the Protector is not active currently.
|tip Memorize the symbols at the consoles.
|tip Check each of the four sigils indicated below for a match.
|tip Each player must bring a matching sigil to the appropriate console to unlock the cave.
kill Protector of the First Ones##180746 |goto 38.87,27.62 |q 64668 |future
|tip Inside the cave.
|tip Avoid standing in "Charged Ground" areas on the ground.
|tip "Banishment Protocol" will damage and knock back anyone within 15 yards.
|tip Don't stand in front during "Charged Slam."
|tip Attack from a different while "Guardian Bulwark" is active.
Sigil One: [42.49,26.78]
Sigil Two: [43.02,25.19]
Sigil Three: [41.37,24.31]
Sigil Four: [40.54,23.94]
]],
},
{
rare=[[Sand Matriarch Ileus]],
level=60,
spot="Zereth Mortis/0 53.38,47.07",
item=164477,
quest=65574,
polish=true,
steps=[[
step
kill Sand Matriarch Ileus##183927 |goto Zereth Mortis/0 53.38,47.07 |q 65574 |future
|tip At 50% health, it will burrow underground until you kill the scarabs that spawn.
|tip Move out of dust clouds or be silenced.
]],
},
{
rare=[[Tethos]],
level=60,
spot="Zereth Mortis/0 54.50,73.44",
item=190055,
quest=65550,
polish=true,
steps=[[
step
kill Tethos##181249 |goto Zereth Mortis/0 54.50,73.44 |q 65550 |future
|tip Interrupt "Earthquake" on cooldown or move away when it is cast.
|tip Kill adds that spawn.
]],
},
}
