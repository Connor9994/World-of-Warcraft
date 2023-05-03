local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PoiTreasureCSHADOW") then return end
ZGV.Poi.Sets.PoiTreasureCSHADOW={
{
treasure=[[Aerto's Body]],
level=50,
spot="Ardenweald/0 56.00,21.01",
item=180630,
quest=61072,
polish=false,
steps=[[
step
clicknpc Aerto##171156 |confirm |q 61072 |goto Ardenweald/0 56.00,21.01 |future
]],
},
{
treasure=[[Cache of the Moon]],
level=60,
spot="Ardenweald/0 63.90,37.77",
item=180731,
quest=61074,
polish=false,
steps=[[
step
click Gardener's Basket##355212
|tip It looks like a small grey basket laying in between two rocks.
collect Gardener's Basket##180758 |goto Ardenweald/0 40.32,52.62 |or
'|complete itemcount(180753) == 1 or completedq(61074) |or
step
click Gardener's Hammer##355211
|tip It looks like a small wooden hammer laying inside the cart.
collect Gardener's Hammer##180754 |goto 39.75,54.38 |or
'|complete itemcount(180753) == 1 or completedq(61074) |or
step
Follow the path |goto 40.13,53.86 < 7 |only if walking
Cross the bridge |goto 40.04,55.40 < 7 |only if walking
click Diary of the Night##355216
|tip It looks like an open book laying on a small desk up on the tree platform.
collect Diary of the Night##180759 |goto 39.00,56.98 |or
'|complete itemcount(180753) == 1 or completedq(61074) |or
step
click Gardener's Flute##355215
|tip It looks like a small white flute laying on the ground next to the glowing plants.
collect Gardener's Flute##180756 |goto 38.49,58.08 |or
'|complete itemcount(180753) == 1 or completedq(61074) |or
step
click Gardener's Wand##355214
|tip It looks like a small white and wooden wand laying on the ground between two wheels of the cart.
collect Gardener's Wand##180757 |goto 38.85,60.11 |or
'|complete itemcount(180753) == 1 or completedq(61074) |or
step
use the Gardener's Basket##180758
collect Twinklestar's Gardening Toolkit##180753 |or
'|complete completedq(61074) |or
step
talk Twinklestar##171360
Tell her _"I found your gardening tools."_
Gain the Moonsight Buff |havebuff spell:334353 |goto 63.88,37.55 |or
'|complete completedq(61074) |or
step
click Cache of the Moon##355041 |confirm |q 61074 |goto 63.90,37.77 |future
|tip It looks like a blue and purple orb floating behind Twinklestar.
]],
},
{
treasure=[[Cache of the Night]],
level=50,
spot="Ardenweald/0 36.23,65.27",
item=180637,
quest=61110,
polish=false,
steps=[[
step
Cross the bridge |goto Ardenweald/0 52.11,57.27 < 7 |only if walking
click Fae Ornament##355021
collect Fae Ornament##180654 |goto 51.55,61.60 |q 61110 |future
step
click Enchanted Bough##355020
|tip Under the platform.
collect Enchanted Bough##180656 |goto 42.42,46.72 |q 61110 |future
step
Cross the bridge |goto 36.83,27.64 < 15 |only if walking
click Raw Dream Silk##355019
|tip Up on the platform.
collect Raw Dream Fibers##180655 |goto 36.99,29.83 |q 61110 |future
step
use Raw Dream Fibers##180655
collect Fae Dreamcatcher##180652 |q 61110 |future
step
Run up the ramp |goto 35.39,65.22 < 10 |only if walking
Enter the tree |goto 36.02,65.51 < 7 |walk
click Cache of the Night##355000 |confirm |q 61110 |goto 36.23,65.27 |future
|tip Inside the trunk of the tree.
]],
},
{
treasure=[[Darkreach Supplies]],
level=50,
spot="Ardenweald/0 36.19,65.20",
item=180143,
quest=61068,
polish=false,
steps=[[
step
Follow the path up |goto Ardenweald/0 36.52,59.68 < 10 |only if walking
Step onto the mushroom |goto 37.64,61.60 < 5 |only if walking
Fly into the broken tree |goto 36.35,65.14 < 7 |walk
click Darkreach Supplies##354648 |confirm |q 61068 |goto 36.19,65.20 |future
|tip Inside the trunk of the large broken tree.
]],
},
{
treasure=[[Desiccated Moth]],
level=50,
spot="Ardenweald/0 41.95,32.53",
item=180640,
quest=61147,
polish=false,
steps=[[
step
click Aromatic Flowers##355271
collect Aromatic Flowers##180784 |goto Ardenweald/0 31.77,32.48 |q 61147 |future
step
Step onto the mushroom |goto 41.43,31.59 < 5 |only if walking
click Incense Burner##355273
|tip Up high in the tree.
clicknpc Desiccated Moth##171484 |confirm |q 61147 |goto 41.95,32.53 |future
]],
},
{
treasure=[[Dreamsong Heart]],
level=50,
spot="Ardenweald/0 37.68,36.88",
item=179510,
quest=61070,
polish=false,
steps=[[
step
Step onto the mushroom |goto Ardenweald/0 38.01,36.30 < 5 |only if walking
Carefully walk down the thin branch |goto 37.31,36.47 < 7 |only if walking
|tip Stay on the central ridge; the sides are slanted and you can slide down them. |only if walking
click Dreamsong Heart##354650 |confirm |q 61070 |goto 37.64,37.07 |future
|tip Hanging from a branch at the very top of the huge tree.
]],
},
{
treasure=[[Elusive Faerie Cache]],
level=50,
spot="Ardenweald/0 44.82,75.87",
item=184490,
quest=61175,
polish=false,
steps=[[
step
click Faerie Lamp##354665
Carry the Faerie Lamp |havebuff spell:333923 |goto Ardenweald/0 46.50,70.12 |q 61175 |future
step
clicknpc Elusive Faerie Cache##171475 |confirm |q 61175 |goto 44.81,75.83 |future
|tip Inside the broken tree stump.
]],
},
{
treasure=[[Enchanted Dreamcatcher]],
level=50,
spot="Ardenweald/0 36.42,25.06",
item=183129,
quest=62259,
polish=false,
steps=[[
step
Run up the rocks |goto Ardenweald/0 36.03,25.18 < 7 |only if walking
Continue up the large root |goto 36.04,25.77 < 7 |only if walking
click Enchanted Dreamcatcher##354651
|tip Hanging from the large roots.
accept Anima-Laden Dreamcatcher##62259 |goto 36.42,25.06
|tip You will accept this quest automatically.
step
talk Droman Dawnblossom##165341
turnin Anima-Laden Dreamcatcher##62259 |goto 38.16,36.74
]],
},
{
treasure=[[Faerie Trove]],
level=50,
spot="Ardenweald/0 49.71,55.89",
item=182673,
quest=61073,
polish=false,
steps=[[
step
Run under the platform |goto Ardenweald/0 49.87,55.92 < 5 |walk
click Faerie Trove##354652 |confirm |q 61073 |goto 49.71,55.89 |future
|tip Underneath the wooden platform.
]],
},
{
treasure=[[Harmonic Chest]],
level=50,
spot="Ardenweald/0 67.80,34.62",
item=184489,
quest=61165,
polish=false,
steps=[[
step
click Harmonic Chest##355355 |confirm |q 61165 |goto Ardenweald/0 67.80,34.62 |future
|tip You'll need two players to obtain this treasure.
|tip Click the Fae Harp and Fae Drum at the same time to unlock the Harmonic Treasure.
]],
},
{
treasure=[[Hearty Dragon Plume]],
level=50,
spot="Ardenweald/0 48.21,39.27",
item=182729,
quest=61067,
polish=false,
steps=[[
step
Cross the bridge |goto Ardenweald/0 46.05,39.08 < 15 |only if walking
Jump down carefully here |goto 47.59,39.50 < 7 |only if walking
Jump down here |goto 48.09,38.83 < 7 |only if walking
click Hearty Dragon Plume##354647 |confirm |q 61067 |goto 48.21,39.27 |future
|tip Up on the large root.
|tip It may be easiest to jump down and use a Goblin Glider Kit to reach it.
]],
},
{
treasure=[[Lost Satchel]],
level=50,
spot="Ardenweald/0 48.26,20.39",
item=182731,
quest=62187,
polish=false,
steps=[[
step
Carefully walk down the root |goto Ardenweald/0 48.34,20.49 < 5 |only if walking
click Lost Satchel##354645
|tip Hanging from the root next to the waterfall.
accept Satchel of Culexwood##62187 |goto 48.26,20.39
|tip You will accept this quest automatically.
step
talk Fluttercatch##158489
turnin Satchel of Culexwood##62187 |goto 48.07,24.34
]],
},
{
treasure=[[Swollen Anima Seed]],
level=50,
spot="Ardenweald/0 76.68,29.75",
item=182730,
quest=62186,
polish=false,
steps=[[
step
click Swollen Anima Seed##354911
accept Swollen Anima Seed##62186 |goto Ardenweald/0 76.68,29.75
|tip You will accept this quest automatically.
step
talk Droman Tashmur##158487
turnin Swollen Anima Seed##62186 |goto 63.49,36.28
]],
},
{
treasure=[[Tame Gladerunner]],
level=50,
spot="Ardenweald/0 26.28,58.97",
item=180727,
quest=61192,
polish=true,
steps=[[
step
click Tame Gladerunner |confirm |q 61192 |goto Ardenweald/0 26.28,58.97 |future
]],
},
{
treasure=[[Ancient Cloudfeather Egg]],
level=50,
spot="Ardenweald/0 52.94,37.29",
item=180642,
quest=61065,
polish=false,
steps=[[
step
Follow the path up |goto Ardenweald/0 54.94,37.05 < 10 |only if walking
Run down the root |goto 52.60,37.92 < 7 |only if walking
click Ancient Cloudfeather Egg##354646 |confirm |q 61065 |goto 52.94,37.29 |future
|tip Up on the root in the large nest.
]],
},
{
treasure=[[Abandoned Stockpile]],
level=50,
spot="Bastion/0 46.11,45.36",
item=184771,
quest=61006,
polish=false,
steps=[[
step
Enter the cave |goto Bastion/0 46.50,46.65 < 7 |walk
click Abandoned Stockpile##354202 |confirm |q 61006 |goto 46.11,45.36 |future
|tip Inside the cave.
]],
},
{
treasure=[[Windsmith's Tools]],
level=50,
spot="Bastion/0 35.83,48.11",
item=180064,
requires="{item:180536}",
quest=61053,
polish=false,
steps=[[
step
kill Agitated Etherwyrm##159610+
|tip Inside and outside the cave.
collect 1 Broken Kyrian Flute##180536 |goto Bastion/0 56.20,41.00 |q 61053 |future
|tip This item drops from any Etherwyrm in Bastion.
|tip The Agitated Etherwyrms appear to have the highest drop rate.
|tip They usually don't drop anything but the flute, and the respawn rate is pretty good.
step
click Windsmith's Tools##354289 |confirm |q 61053 |goto 35.83,48.11 |future
]],
},
{
treasure=[[Experimental Construct Part]],
level=50,
spot="Bastion/0 51.47,17.95",
item=183609,
requires="{item:180534}",
quest=61052,
polish=false,
steps=[[
step
click Unstable Construct Anima##354279
|tip They look like small, glowing blue glass cylinder containers on the ground around this area.
|tip They can be found anywhere around The Eternal Forge.
collect 1 Unstable Construct Anima##180534 |goto Bastion/0 53.54,17.15 |q 61052 |future
step
click Experimental Construct Part##354275 |confirm |q 61052 |goto 51.47,17.95 |future
]],
},
{
treasure=[[Gift of Agthia]],
level=60,
spot="Bastion/0 35.09,58.07",
item=180063,
requires="{spell:333063}",
quest=60893,
polish=false,
steps=[[
step
click Agthia's Flame##354153
Carry Agthia's Flame |havebuff spell:333320 |goto Bastion/0 39.10,54.47 |q 60893 |future
step
click Path of Courage##354169 |goto 38.45,57.07 < 3 |walk
Cross the light bridge |goto 37.63,56.80 < 5 |walk
click Path of Courage##354169 |goto 37.41,56.75 < 3 |walk
click Path of Courage##354169 |goto 37.11,56.85 < 3 |walk
Cross the light bridge |goto 35.31,58.11 < 5 |walk
|tip You may need to mount in order to cross this bridge in time.
click Path of Courage##354169
Gain the Proof of Courage |havebuff spell:333063 |goto 35.17,58.22 |q 60893 |future
step
click Gift of Agthia##353942 |confirm |q 60893 |goto 35.09,58.07 |future
]],
},
{
treasure=[[Gift of Chyrus]],
level=60,
spot="Bastion/0 70.47,36.45",
requires="{spell:333045}",
item=183988,
quest=60892,
polish=false,
steps=[[
step
click Anima Gateway## |goto Bastion/0 69.37,40.32 < 5 |only if walking
Fly to the Temple of Humility |goto 71.78,36.88 < 5 |q 60892 |future
step
Kneel Before the Treasure |script DoEmote("KNEEL")
|tip Perform the "/kneel" emote.
Gain the Proof of Humility |havebuff spell:333045 |goto 70.50,36.53 |q 60892 |future
step
click Gift of Chyrus##353941 |confirm |q 60892 |goto Bastion/0 70.47,36.45 |future
]],
},
{
treasure=[[Gift of Devos]],
level=60,
spot="Bastion/0 27.60,21.79",
requires="{spell:333070}",
item=179977,
quest=60895,
polish=false,
steps=[[
step
click Flame of Devotion##354133
|tip Carry the torch to the treasure to unlock it.
|tip Avoid enemies and the aoe detection sentries around this area.
|tip Getting into combat will cause you to drop the flame and you'll have to get it again.
|tip It helps to make sure the area is clear before taking the flame.
|tip This treasure is easier to obtain when the world quest "Disloyal Denizens" is active.
Carry the Torch |havebuff spell:333912 |goto Bastion/0 23.93,24.82 |q 60895 |future
step
Run up the stairs |goto 27.04,21.44 < 15 |only if walking
Enter the building |goto 27.68,21.23 < 7 |only if walking
click Brazier of Devotion##354135
|tip Inside the building.
Gain the Proof of Loyalty |havebuff spell:333070 |goto 27.48,21.72 |q 60895 |future
step
click Gift of Devos##353944 |confirm |q 60895 |goto 27.60,21.79 |future
|tip Inside the building.
]],
},
{
treasure=[[Gift of Thenios]],
level=60,
spot="Bastion/0 40.61,18.89",
requires="{spell:333068}",
item=181290,
quest=60894,
polish=false,
steps=[[
step
click Anima Gateway## |goto Bastion/0 39.55,19.00 < 5 |only if walking
click Path of Wisdom##355242 |goto 40.73,18.77 < 5 |only if walking
Fly to The Eonian Archives |goto 40.95,15.74 |q 60894 |future
step
click Path of Wisdom##355242 |goto 40.48,15.48 < 3 |only if walking
click Incense of Patience##355039 |goto 37.10,18.29 |walk
confirm |q 60894 |future
step
click Path of Wisdom##355242 |goto 36.92,18.68 < 3 |only if walking
click Path of Wisdom##355242 |goto 37.27,19.17 < 3 |only if walking
click Path of Wisdom##355242 |goto 41.78,18.44 < 3 |only if walking
click Incense of Knowledge##355044 |goto 40.77,15.64 |walk
confirm |q 60894 |future
step
click Path of Wisdom##355242 |goto 40.48,15.48 < 3 |only if walking
click Path of Wisdom##355242 |goto 36.92,18.68 < 3 |only if walking
click Incense of Insight##355052 |goto 37.36,18.73 |walk
confirm |q 60894 |future
step
click Path of Wisdom##355242 |goto 37.27,19.17 < 3 |only if walking
click Path of Judgment## |goto 42.12,18.48 < 3 |only if walking
click Incense of Judgment##355075 |goto 41.89,15.83
confirm  |q 60894 |future
step
click Path of Wisdom##355242
Gain the Proof of Wisdom |havebuff spell:333068 |goto 41.61,15.91 |q 60894 |future
step
click Gift of Thenios##353943 |confirm |q 60894 |goto 40.61,18.89 |future
]],
},
{
treasure=[[Gift of Vesiphone]],
level=60,
spot="Bastion/0 64.87,71.14",
item=180859,
requires="{spell:332785}",
quest=60890,
polish=false,
steps=[[
step
Cross the bridge |goto Bastion/0 61.00,74.60 < 15 |only if walking
Run up the stairs |goto 63.02,73.21 < 20 |only if walking
click Bell of Purification##354094 |goto 64.94,71.43 < 3 |walk
kill Lingering Impurity##170849
Walk Next to the Purity Steward
|tip Walking next to the Purity Steward after ringing the Bell of Purification and killing the Lingering Impurity will grant you the Proof of Purity.
Gain the Proof of Purity |havebuff spell:332785|goto 64.59,71.29 |q 60890 |future
step
click Gift of Vesiphone##353940 |confirm |q 60890 |goto 64.87,71.14 |future
]],
},
{
treasure=[[Larion Tamer's Harness]],
level=50,
spot="Bastion/0 58.23,39.99",
item=182652,
quest=61049,
polish=false,
steps=[[
step
Enter the cave |goto Bastion/0 55.71,42.82 < 7 |walk
Follow the path |goto 56.72,40.66 < 7 |only if walking
click Larion Tamer's Harness##354214 |confirm |q 61049 |goto 58.23,39.99 |future
|tip Inside the cave.
]],
},
{
treasure=[[Lost Disciple's Notes]],
level=50,
spot="Bastion/0 59.33,60.92",
item=182693,
quest=61048,
polish=false,
steps=[[
step
click Lost Disciple's Notes##354213 |confirm |q 61048 |goto Bastion/0 59.33,60.92 |future
|tip It looks like a small rolled-up scroll sitting on a small rock ledge.
step
accept You'll Never Walk Alone##62170
|tip You will accept this quest automatically.
step
talk Inkiep##160173
turnin You'll Never Walk Alone##62170 |goto 53.21,46.86 |region heros_rest
]],
},
{
treasure=[[Memorial Offerings]],
level=50,
spot="Bastion/0 56.48,17.14",
item=184771,
quest=61150,
requires="{item:180797}, {item:180788}",
polish=false,
steps=[[
step
talk Kobri##171526
|tip He walks around this area.
buy 1 Memorial Wine##180788 |goto Bastion/0 51.79,46.18 |region heros_rest |q 61150 |future
step
click Drink Tray##355274
collect 1 Memorial Offering Key##180797 |goto 56.85,18.99 |q 61150 |future
step
click Memorial Offerings##355286 |confirm |q 61150 |goto Bastion/0 56.48,17.14 |future
]],
},
{
treasure=[[Purifying Draught]],
level=50,
spot="Bastion/0 52.03,86.07",
item=174007,
quest=58329,
polish=false,
steps=[[
step
click Purifying Draught##339641 |confirm |q 58329 |goto Bastion/0 52.03,86.07 |future
]],
},
{
treasure=[[Scroll of Aeons]],
level=50,
spot="Bastion/0 53.50,80.37",
item=173984,
quest=58298,
polish=false,
steps=[[
step
click Purians##339587
collect 2 Purian##173973 |q 58298 |goto Bastion/0 54.37,81.87 |future
step
click Tribute##339572
Place the First Tribute |q 58293 |goto 56.17,83.06 |future
step
click Tribute##339572
Place the Second Tribute |q 58294 |goto 54.43,83.87 |future
step
click Scroll of Aeons##339601 |confirm |q 58298 |goto 53.50,80.37 |future
]],
},
{
treasure=[[Stolen Equipment]],
level=50,
spot="Bastion/0 40.50,49.80",
item=182561,
quest=61044,
polish=false,
steps=[[
step
click Stolen Equipment##354208 |confirm |q 61044 |goto Bastion/0 40.50,49.80 |future
]],
},
{
treasure=[[Vesper of the Silver Wind]],
level=60,
spot="Bastion/0 36.01,26.52",
item=180772,
requires="{item:180858}",
quest=61183,
polish=false,
steps=[[
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
collect 1 Crystal Mallet of Heralds##180858 |goto Bastion/0 59.36,31.39 |q 61183 |future
step
click Vesper of the Silver Wind##355435
click Gift of the Silver Wind##355449 |goto 36.13,26.61 |q 61183 |future
]],
},
{
treasure=[[Vesper of Virtues]],
level=50,
spot="Bastion/0 58.66,71.35",
item=179982,
quest=60478,
polish=false,
steps=[[
step
Enter the building |goto Bastion/0 58.53,72.01 < 7 |only if walking
click Vesper of Virtues##352428 |confirm |q 60478 |goto 58.66,71.35 |future
|tip Inside the building.
]],
},
{
treasure=[[Blackhound Cache]],
level=50,
spot="Maldraxxus/0 44.08,39.89",
item=183619,
quest=60368,
polish=true,
steps=[[
step
click Blackhound Cache##352086 |confirm |q 60368 |goto Maldraxxus/0 44.08,39.89 |future
]],
},
{
treasure=[[Chest of Eyes]],
level=50,
spot="Maldraxxus/0 48.30,16.31",
item=183696,
quest=59244,
polish=false,
steps=[[
step
Follow the path up |goto Maldraxxus/0 51.62,13.74 < 15 |only if walking
Follow the path |goto 51.06,13.94 < 10 |only if walking
Continue following the path |goto 49.02,14.62 < 10 |only if walking
click Chest of Eyes##345456 |confirm |q 59244 |goto 48.30,16.31 |future
]],
},
{
treasure=[[Giant Cache of Epic Treasure]],
level=50,
spot="Maldraxxus/0 41.51,19.53",
quest=62602,
polish=false,
steps=[[
step
Enter the cave |goto Maldraxxus/0 41.52,20.32 < 7 |walk
click Giant Cache of Epic Treasure##358531 |confirm |q 62602 |goto 41.51,19.53 |future
|tip Inside the cave.
]],
},
{
treasure=[[Glutharn's Stash]],
level=50,
spot="Maldraxxus/0 72.89,53.65",
item=181644,
quest=61484,
polish=false,
steps=[[
step
Go behind the waterfall |goto Maldraxxus/0 71.97,52.59 < 10 |walk
Enter the cave |goto 72.22,52.84 < 5 |walk
click Glutharn's Stash##355947 |confirm |q 61484 |goto 72.89,53.65 |future
|tip Inside the cave.
]],
},
{
treasure=[[Halis's Lunch Pail]],
level=50,
spot="Maldraxxus/0 30.79,28.74",
item=180430,
quest=60730,
polish=false,
steps=[[
step
click Halis's Lunch Pail##353380 |confirm |q 60730 |goto Maldraxxus/0 30.79,28.74 |future
]],
},
{
treasure=[[Kyrian Keepsake]],
level=50,
spot="Maldraxxus/0 32.74,21.27",
item=175708,
quest=60587,
polish=false,
steps=[[
step
clicknpc Kyrian Corpse##169664
Choose _Take the box._
collect Kyrian Keepsake##180085 |confirm |q 60587 |goto Maldraxxus/0 32.74,21.27 |future
step
use Kyrian Keepsake##180085
Recover the Kyrian Keepsake |confirm |q 60587 |future
]],
},
{
treasure=[[Misplaced Supplies]],
level=50,
spot="Maldraxxus/0 62.41,59.98",
item=184307,
quest=60311,
polish=false,
steps=[[
step
Run up the rocks |goto Maldraxxus/0 62.04,58.64 < 7 |only if walking
Jump to the mushroom |goto 62.63,58.51 < 7 |only if walking
Jump back to the rock |goto 63.10,58.80 < 7 |only if walking
Continue up the rock |goto 62.87,59.17 < 7 |only if walking
Jump across to the mushroom |goto 62.92,59.63 < 7 |only if walking
click Misplaced Supplies##351980 |confirm |q 60311 |goto 62.41,59.98 |future
|tip On the top of the large mushroom.
]],
},
{
treasure=[[Necro Tome]],
level=54,
spot="Maldraxxus/0 42.38,23.33",
item=182732,
quest=61470,
polish=false,
steps=[[
step
Complete the "Secrets Among the Shelves" quest in Maldraxxus |q 58622 |future
|tip This quest is part of the Archival Protection questline.
|tip Use the "Maldraxxus" leveling guide to accomplish this.
step
Enter the building |goto Maldraxxus/0 42.34,24.29 < 7 |only if walking
Run up the stairs |goto 41.99,23.94 < 7 |only if walking
click The Necronom-i-nom##355880 |confirm |q 61470 |goto 42.38,23.33 |future
|tip At the top of the tower.
]],
},
{
treasure=[[Ornate Bone Shield]],
level=50,
spot="Maldraxxus/0 47.23,62.16",
item=180749,
quest=59358,
polish=false,
steps=[[
step
click Ornate Bone Shield##347444 |confirm |q 59358 |goto Maldraxxus/0 47.23,62.16 |future
]],
},
{
treasure=[[Plaguefallen Chest]],
level=50,
spot="Maldraxxus/0 57.66,75.85",
item=183515,
quest=61474,
polish=false,
steps=[[
step
click Plaguefallen Potion##365130
Turn into a Plaguefallen |havebuff spell:330092 |goto Maldraxxus/0 59.15,71.93 |q 61474 |future
step
Enter the sewer |goto 62.37,76.55 < 7 |walk
clicknpc Plaguefallen Pipe##176355 |goto 61.58,76.70
|tip Inside the cave.
|tip You need to reach the cave and pipe within two minutes or you'll have to click the plague potion again.
Climb through the Pipe |goto 57.68,77.27 < 5 |noway |q 61474 |future
step
click Plaguefallen Chest##355886 |confirm |q 61474 |goto 57.66,75.85 |future
]],
},
{
treasure=[[Ritualist's Cache]],
level=60,
spot="Maldraxxus/0 64.67,24.75",
item=183517,
quest=61514,
polish=false,
steps=[[
step
Enter the building |goto Maldraxxus/0 64.89,25.08 < 7 |walk
click Ritual Pages##355979
|tip Inside the building.
collect 1 Missing Ritual Pages##181558 |goto 64.89,24.76 |q 61514 |future
step
click Book of Binding Rituals##356366
|tip Inside the building.
Gain Ritualist's Knowledge |havebuff spell:337041 |goto 64.62,24.49 |q 61514 |future
step
click Ritualist's Cache##355980 |confirm |q 61514 |goto 64.67,24.75 |future
|tip Inside the building.
]],
},
{
treasure=[[Runespeaker's Trove]],
level=50,
spot="Maldraxxus/0 31.75,70.03",
requires="{item:181777}",
item=183516,
quest=61491,
polish=false,
steps=[[
step
kill Runespeaker Phaeton##170563
collect 1 Phaeton's Key##181777 |goto Maldraxxus/0 37.91,70.10 |q 61491 |future
step
Enter the building |goto 32.14,68.92 < 7 |walk
click Runespeaker's Trove##356535 |confirm |q 61491 |goto 31.75,70.03 |future
|tip Inside the building.
]],
},
{
treasure=[[Stolen Jar]],
level=50,
spot="Maldraxxus/0 66.09,50.07",
item=182618,
quest=61451,
polish=false,
steps=[[
step
Enter the cave |goto Maldraxxus/0 65.64,50.80 < 7 |walk
click Stolen Jar##355872 |confirm |q 61451 |goto 66.09,50.07 |future
|tip Inside the cave.
]],
},
{
treasure=[[Strange Growth]],
level=50,
spot="Maldraxxus/0 55.89,38.97",
item=182606,
quest=59428,
polish=false,
steps=[[
step
click Strange Growth##348521
|tip Click the tentacle and walk away to pull it out of the ground.
click Strange Growth##348521 |confirm |q 59428 |goto Maldraxxus/0 55.89,38.97 |future
]],
},
{
treasure=[[Vat of Conspicuous Slime]],
level=50,
spot="Maldraxxus/0 59.86,79.06",
item=181825,
quest=61444,
polish=false,
steps=[[
step
click Empty Plague Bottle##355867
collect 1 Empty Plague Bottle##181394 |q 61444 |goto Maldraxxus/0 59.92,79.03 |future
step
click Vat of Conspicuous Slime##355865 |confirm |q 61444 |goto 59.86,79.06 |future
]],
},
{
treasure=[[Oonar's Arm]],
level=50,
spot="Maldraxxus/0 51.67,48.83",
item=181164,
quest=61127,
polish=false,
steps=[[
step
talk Slumbar Valorum##161702
home Theater of Pain |goto Maldraxxus/0 50.95,53.17 |q 61127 |future
|tip You will need to use your Hearthstone to get back to the treasure in time, make sure it is off cooldown.
step
click Edible Redcap##352048+
|tip They look like thin red mushrooms around this area.
Get Four Stacks of the Edible Redcap Buff |havebuff 4 spell:327367 |goto 76.73,56.12 |q 61127 |future
step
use Hearthstone##6948
Return to the Theater of Pain |goto 50.95,53.17 < 10 |noway |q 61127 |future
|tip This buff only lasts for two minutes so go as fast as you can.
step
click Oonar's Arm##335655 |confirm |q 61127 |goto 51.41,48.48 |future
|tip This buff only lasts for two minutes so go as fast as you can.
|tip Using a Goblin Glider Kit at the stop of the stairs will help you reach it faster.
]],
},
{
treasure=[[Sorrowbane]],
level=50,
spot="Maldraxxus/0 51.87,46.95",
item=180273,
quest=61128,
polish=false,
steps=[[
step
talk Ta'tru##171808
buy 1 Strength of Blood##182163 |goto Revendreth/0 51.14,78.84 |q 61128 |future
|tip Puchasing this item requires trading a different crafting material for it.
|tip The trade item and amount changes every week.
step
talk Au'larrynar##166640
buy 1 Potion of Unusual Strength##180771 |goto Maldraxxus/0 53.63,47.92 |q 61128 |future
step
talk Slumbar Valorum##161702
home Theater of Pain |goto 50.95,53.17 |q 61128 |future
|tip You will need to use your Hearthstone to get back to the treasure in time, make sure it is off cooldown.
|tip This treasure can only be obtained while the "A Few Bumps Along the Way" world quest is active.
step
accept A Few Bumps Along the Way##57205 |goto 37.59,50.90
|tip When this world quest is available you will accept this quest automatically.
only if not completedq(61128)
step
Kill enemies inside the yellow circle
Gain a Stack of the Battle Hardened Buff |havebuff spell:306272 |goto 37.58,50.98 |q 61128 |future
|tip Each enemy killed will increase your progress for defending the artillery.
|tip This buff only lasts for ten minutes so go as fast as you can.
step
Kill enemies inside the yellow circle
Gain Two Stacks of the Battle Hardened Buff |havebuff 2 spell:306272 |goto 37.09,47.88 |q 61128 |future
|tip Each enemy killed will increase your progress for defending the artillery.
|tip This buff only lasts for ten minutes so go as fast as you can.
step
talk Wing Guard Aela##157519 |goto 39.02,55.24
Fly to Renounced Bastille |goto 67.86,45.84 < 5 |q 61128 |future
step
click Edible Redcap##352048+
|tip They look like thin red mushrooms around this area.
Get Four Stacks of the Edible Redcap Buff |havebuff 4 spell:327367 |goto 76.73,56.12 |q 61128 |future
|tip This buff only lasts for two minutes so go as fast as you can.
step
use Hearthstone##6948
Return to the Theater of Pain |goto 50.95,53.17 < 10 |noway |q 61128 |future
step
use Strength of Blood##182163
Gain the Strength of Blood Buff |havebuff spell:338385 |goto 50.45,51.61 |q 61128 |future
|tip This buff only lasts for one minute!
|tip Don't use it until you are in this spot.
step
use Potion of Unusual Strength##180771
Gain the Unusual Strength Buff |havebuff spell:334436 |goto 51.44,48.48 |q 61128 |future
|tip This buff only lasts for 25 seconds!
|tip Don't use it until you are in this spot.
|tip You can use a Goblin Glider Kit while at the top of the stairs to glide down to this location faster.
step
click Sorrowbane##335649 |confirm |q 61128 |goto Maldraxxus/0 51.44,48.48 |future
]],
},
{
treasure=[[Stoneguard Satchel]],
level=50,
spot="Revendreth/0 76.23,64.11",
item=181744,
quest=60939,
polish=false,
steps=[[
step
Jump down carefully here |goto Revendreth/0 76.56,64.13 < 10 |only if walking
|tip Jump onto the ledge.
click Stoneguard Satchel##354114 |confirm |q 60939 |goto 76.23,64.11 |future
It may also be found around: |notinsticky
[58.07,67.22]
[55.38,42.38]
[53.69,57.23]
[43.82,57.12]
[57.76,29.39]
[76.60,50.99]
[76.23,64.10]
[75.82,77.37]
]],
},
{
treasure=[[Lost Quill]],
level=50,
spot="Revendreth/0 37.72,69.25",
item=182613,
quest=61990,
polish=false,
steps=[[
step
Enter the building |goto Revendreth/0 38.07,68.83 < 15 |walk
click Forbidden Ink
|tip Inside the building.
collect Forbidden Ink##182475 |goto 37.65,68.76 |q 61990 |future
step
Hug the wall |goto 38.41,68.14 < 10 |only if walking
talk Lost Quill##173449
Tell it _"Here, I found this ink in a bottle."_
Return the Forbidden Ink |q 61990 |goto 37.72,69.25 |future
]],
},
{
treasure=[[Makeshift Muckpool]],
level=50,
spot="Revendreth/0 29.69,37.23",
item=182780,
requires="{currency:1820} x30",
quest=62198,
polish=false,
steps=[[
step
Collect 30 Infused Rubies |complete curcount(1820) >= 30 |q 62198 |future
|tip Collect them by killing rare mobs, completing covenant callings, looting treasures, and running dungeons.
step
Follow the path |goto Revendreth/0 28.17,38.00 < 7 |only if walking
Enter the building |goto 29.47,36.86 < 15 |only if walking
click Outcast's Makeshift Muckpool## |q 62198 |goto 29.69,37.23 |future
|tip Inside the building.
]],
},
{
treasure=[[Rapier of the Fearless]],
level=50,
spot="Revendreth/0 80.00,37.01",
item=182689,
quest=62156,
polish=false,
steps=[[
step
clicknpc Rapier of the Fearless##173603
|tip On top of the rock pile on top of the building.
kill Rapier of the Fearless##173603 |confirm |q 62156 |goto Revendreth/0 80.00,37.01 |future
]],
},
{
treasure=[[Stylish Parasol]],
level=60,
spot="Revendreth/0 38.39,44.24",
item=182694,
quest=61999,
polish=false,
steps=[[
step
click Stylish Parasol##357487 |confirm |q 61999 |goto Revendreth/0 38.39,44.24 |future
]],
},
{
treasure=[[Taskmaster's Trove]],
level=50,
spot="Revendreth/0 62.82,75.31",
item=183986,
quest=62199,
polish=false,
steps=[[
step
click Ingress and Egress Rites
Gain the "Taskmaster's Trove" Buff |complete hasbuff("spell:341237") or completedq(62199) |goto Revendreth/0 63.01,72.36
step
click Taskmaster's Trove##357697 |q 62199 |goto 62.82,75.31 |future
|tip Avoid the floating blue orbs that knock you back.
]],
},
{
treasure=[[The Count]],
level=50,
spot="Revendreth/0 57.37,43.37",
requires="{currency:1820} x99",
item=182612,
quest=62063,
polish=false,
steps=[[
step
Collect 99 Infused Rubies |complete curcount(1820) >= 99 or completedq(62063)
|tip Collect them by killing rare mobs, completing covenant callings, looting treasures, and running dungeons.
step
talk The Count##173488
Choose _<Wake the Count>_
Wake The Count |confirm |q 62063 |goto Revendreth/0 57.37,43.37 |future
]],
},
{
treasure=[[Vyrtha's Dredglaive]],
level=50,
spot="Revendreth/0 70.17,60.05",
item=177807,
quest=62164,
polish=false,
steps=[[
step
click Vyrtha's Dredglaive##357584 |q 62164 |goto Revendreth/0 70.17,60.05 |future
|tip Underneath the bridge.
]],
},
{
treasure=[[Abandoned Curios]],
level=50,
spot="Revendreth/0 51.85,59.54",
item=182744,
quest=59888,
polish=false,
steps=[[
step
label "Jump_on_the_Bounding_Shroom"
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto Revendreth/0 52.48,59.20 |q 59888 |future
|tip Jump on the Bounding Shroom.
step
click Abandoned Curios##349797 |q 59888 |goto 51.85,59.54 |future
'|complete not hasbuff("spell:330976") and not completedq(59888) |next "Jump_on_the_Bounding_Shroom" |or
]],
},
{
treasure=[[Bleakwood Chest]],
level=50,
spot="Revendreth/0 27.57,11.91",
item=180592,
quest=60665,
polish=false,
steps=[[
step
click Bleakwood Chest##353232 |q 60665 |goto Revendreth/0 27.57,11.91 |future
|tip It will appear on your map as a large silver chest with gold around it.
It can also be found at: |notinsticky
[32.95,19.02]
[30.34,24.72]
[33.83,29.02]
[23.69,28.45]
]],
},
{
treasure=[[Chest of Envious Dreams]],
level=50,
spot="Revendreth/0 69.32,77.95",
item=179393,
quest=59833,
polish=false,
steps=[[
step
click Chest of Envious Dreams##349565 |q 59833 |goto Revendreth/0 69.32,77.95 |future
]],
},
{
treasure=[[Filcher's Prize]],
level=50,
spot="Revendreth/0 64.18,72.65",
item=179392,
quest=59883,
polish=false,
steps=[[
step
click Filcher's Prize##349792 |confirm |q 59883 |goto Revendreth/0 64.18,72.65 |future
]],
},
{
treasure=[[Fleeing Soul's Bundle]],
level=50,
spot="Revendreth/0 46.39,58.17",
item=184152,
quest=59886,
polish=false,
steps=[[
step
click Fleeing Soul's Bundle##349795 |confirm |q 59886 |goto Revendreth/0 46.39,58.17 |future
|tip Up on the platform.
]],
},
{
treasure=[[Forbidden Chamber Lockbox]],
level=50,
spot="Revendreth/0 47.34,55.36",
item=184075,
quest=62243,
polish=false,
steps=[[
step
Run up the stairs |goto Revendreth/0 46.66,55.55 < 20 |only if walking
Enter the building |goto 47.17,55.75 < 7 |walk
click Discarded Anima Canister##357936
|tip Inside the building.
Carry the Anima Canister |havebuff spell:340656 |goto 47.57,55.46 |q 62243 |future
step
clicknpc Silent Observer##173838+ |goto 47.51,55.37
|tip They look like tiny stone gargoyles inside the building around this area.
|tip Use the "Drain Anima" ability on-screen to fill the Anima Canister.
|tip When full, use the "Open Door" ability on-screen to unlock the door.
Watch the dialogue
click Forbidden Chamber Lockbox##358298 |q 62243 |goto 47.34,55.36 |future
]],
},
{
treasure=[[Forgotten Angler's Rod]],
level=50,
spot="Revendreth/0 73.59,75.39",
item=180993,
quest=62196,
polish=false,
steps=[[
step
click Forgotten Angler's Rod##357565
kill Muckribbon##173634 |confirm |q 62196 |goto Revendreth/0 73.59,75.39 |future
]],
},
{
treasure=[[Gilded Plum Chest]],
level=50,
spot="Revendreth/0 75.46,55.42",
item=179390,
quest=59887,
polish=false,
steps=[[
step
kill Greedy Soul##166680
|tip It walks up and down the road.
|tip It will drop the chest on the ground.
click Gilded Plum Chest##349796 |q 59887 |goto Revendreth/0 75.46,55.42 |future
]],
},
{
treasure=[[Pugilist's Prize]],
level=50,
spot="Revendreth/0 48.70,63.77",
item=182687,
quest=60953,
polish=false,
steps=[[
step
Kill enemies around this area
|tip They will attack you for trying to take the prize.
click Pugilist's Prize##354123 |q 60953 |goto Revendreth/0 48.70,63.77 |future
|tip It will appear on your map as a silver chest.
It may also be found around: |notinsticky
[71.39,80.19]
[35.80,67.55]
[66.64,36.34]
[38.38,29.96]
]],
},
{
treasure=[[Remlate's Hidden Cache]],
level=50,
spot="Revendreth/0 61.52,58.64",
item=181544,
quest=59885,
polish=false,
steps=[[
step
Jump up here |goto Revendreth/0 60.44,60.10 < 7 |only if walking
Jump down here |goto 61.35,58.64 < 10 |only if walking
click Remlate's Hidden Cache##349794 |q 59885 |goto 61.52,58.64 |future
]],
},
{
treasure=[[Secret Treasure]],
level=50,
spot="Revendreth/0 27.71,48.68",
item=182738,
quest=60202,
polish=true,
steps=[[
step
label "Collect_Book"
click Dusty Book##353340+
|tip Don't stand too close or the ghoul will attack you.
|tip Check all of the various cages along this road.
Collect a Book |complete (itemcount(180229) > 0 or itemcount(180219) > 0 or itemcount(180222) > 0 or itemcount(180221) > 0 or itemcount(180227) > 0 or itemcount(180225) > 0) and not completedq(60202) |goto Revendreth/0 27.99,48.48 |q 60202 |future
step
Climb up the wood stairs |goto 27.53,48.95 < 5 |only if walking
talk Lord Scowl##169993
Choose _<Give Lord Scowl the book you found.>_
click Secret Treasure##351545 |q 60202 |goto 27.65,48.73 |future |or
'|complete itemcount(180229) == 0 and itemcount(180219) == 0 and itemcount(180222) == 0 and itemcount(180221) == 0 and itemcount(180227) == 0 and itemcount(180225) == 0 and not completedq(60202) |next "Collect_Book" |or
]],
},
{
treasure=[[Secret Treasure]],
level=50,
spot="Revendreth/0 74.04,61.92",
item=171267,
quest=60199,
polish=false,
steps=[[
step
click Cracked Crate##353203 |goto Revendreth/0 74.70,62.60 < 3 |walk
|tip Inside the building.
click Hidden Valve##353202
Run down the stairs |goto 74.67,62.93 < 5 |q 60199 |future
step
click Door##344733 |goto 74.38,61.95 < 3 |walk
|tip Downstairs inside the building.
click Secret Treasure##351542 |goto 74.04,61.92 |q 60199 |future
]],
},
{
treasure=[[Smuggled Cache]],
level=50,
spot="Revendreth/0 31.05,55.06",
item=182738,
quest=59889,
polish=false,
steps=[[
step
click Smuggled Cache##349798 |confirm |q 59889 |goto Revendreth/0 31.05,55.06 |future
|tip Underneath the bridge.
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 44.34,77.93",
item=182721,
quest=60980,
polish=false,
steps=[[
step
Jump down here |goto Revendreth/0 44.24,77.73 < 15 |only if walking
click Stoneborn Satchel##354111 |q 60980 |goto 44.34,77.93 |future
|tip On the stone ledge.
|tip It will appear on your map as a silver chest.
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 53.69,57.22",
item=182720,
quest=60983,
polish=false,
steps=[[
step
Follow the path up |goto Revendreth/0 51.58,58.48 < 15 |only if walking
click Stoneborn Satchel##354111 |q 60983 |goto 53.69,57.22 |future
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 80.44,70.79",
item=182722,
quest=60943,
polish=false,
steps=[[
step
label "Jump_on_the_Bounding_Shroom"
Jump down carefully here |goto Revendreth/0 80.81,68.53 < 10 |only if walking
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto 81.15,68.77 |q 60943 |future
|tip Jump on the Bounding Shroom.
step
Ride the elevator up |goto 78.98,66.48 < 20 |only if walking
Land on the ledge |goto 79.36,69.08 < 20 |only if walking
|tip Jump from the edge of the elevator.
Drop down carefully here |goto 79.83,70.78 < 10
click Stoneborn Satchel##354111 |q 60943 |goto 80.44,70.79 |future |or
|tip On the rock ledge.
'|complete not hasbuff("spell:330976") and not completedq(60943) |next "Jump_on_the_Bounding_Shroom" |or
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 55.38,42.32",
item=182722,
quest=60942,
polish=false,
steps=[[
step
Run up the stairs |goto Revendreth/0 54.82,45.70 < 15 |only if walking
Jump down carefully here |goto 55.50,43.04 < 10 |only if walking
|tip Jump onto the roof.
click Stoneborn Satchel##354111 |q 60942 |goto 55.38,42.32 |future
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 29.94,37.45",
item=182720,
quest=60986,
polish=false,
steps=[[
step
Jump down carefully here |goto Revendreth/0 29.84,39.41 < 7 |only if walking
Jump down carefully here |goto 29.90,38.78 < 7 |only if walking
Jump down carefully here |goto 30.03,38.12 < 10 |only if walking
Jump down carefully here |goto 30.38,38.07 < 10 |only if walking
Jump down carefully here |goto 30.23,37.40 < 10 |only if walking
click Stoneborn Satchel##354111 |q 60986 |goto 29.94,37.45 |future
]],
},
{
treasure=[[Wayfarer's Abandoned Spoils]],
level=50,
spot="Revendreth/0 68.44,64.45",
item=184152,
quest=59884,
polish=false,
steps=[[
step
label "Jump_on_the_Bounding_Shroom"
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto Revendreth/0 67.96,64.58 |q 59884 |future
|tip Jump on the Bounding Shroom.
step
click Wayfarer's Abandoned Spoils##349793 |q 59884 |goto 68.44,64.45 |future |or
|tip On the broken wall.
'|complete not hasbuff("spell:330976") and not completedq(59884) |next "Jump_on_the_Bounding_Shroom" |or
]],
},
{
treasure=[[Library Vault]],
level=60,
spot="Zereth Mortis/0 58.84,77.06",
item=189447,
quest=65173,
polish=true,
steps=[[
step
Enter the cave |goto Zereth Mortis/0 59.28,81.38
click Tablet
|tip Inside the cave.
Memorize the Tablet |havebuff spell:362062 |goto 57.87,78.90 |q 65173 |future
step
click Library Vault##373543
|tip Inside the cave.
Loot the "Library Vault" Treasure |q 65173 |future |goto 58.84,77.06
]],
},
{
treasure=[[Damaged Jiro Stash]],
level=60,
spot="Zereth Mortis/0 38.25,37.24",
item=190637,
quest=64667,
polish=true,
steps=[[
step
Run up the ramp |goto Zereth Mortis/0 37.28,36.30 < 10 |only if walking
click Damaged Jiro Stash##370140
Loot the "Damaged Jiro Stash" Treasure |q 64667 |future |goto Zereth Mortis/0 38.25,37.24
]],
},
{
treasure=[[Mawsworn Cache]],
level=60,
spot="Zereth Mortis/0 60.59,30.53",
quest=65441,
polish=true,
steps=[[
step
click Mawsworn Cache##375272
|tip Clear the mobs in front of the chest.
|tip It will despawn shortly after clearing the mobs.
Loot the "Mawsworn Cache" Treasure |q 65441 |future |goto Zereth Mortis/0 60.59,30.53
]],
},
{
treasure=[[Fallen Vault]],
level=60,
spot="Zereth Mortis/0 51.55,09.89",
quest=65487,
polish=true,
steps=[[
step
Jump down carefully here |goto Zereth Mortis/0 51.43,9.74
click Fallen Vault##375376
|tip Jump down carefully two times to the vault.
Loot the "Fallen Vault" Treasure |q 65487 |future |goto Zereth Mortis/0 51.55,09.89
step
click Forgotten Translocator |goto 51.62,9.54
Teleport to the Cliff |goto 51.50,9.46 < 3 |c |noway
]],
},
{
treasure=[[Overgrown Protofruit]],
level=60,
spot="Zereth Mortis/0 35.24,44.11",
quest=65536,
polish=true,
steps=[[
step
Follow the path up |goto Zereth Mortis/0 36.86,44.51 < 7 |only if walking
Jump across here |goto 35.70,43.94 < 3 |only if walking
Jump across here |goto 35.41,44.26 < 3 |only if walking
click Overgrown Protofruit##375422
Loot the "Overgrown Protofruit" Treasure |q 65536 |future |goto Zereth Mortis/0 35.24,44.11
]],
},
{
treasure=[[Stolen Scroll]],
level=60,
spot="Zereth Mortis/0 34.04,67.64",
item=189863,
quest=65543,
polish=true,
steps=[[
step
Run up the ramp |goto Zereth Mortis/0 34.06,66.67 < 4 |only if walking
Run up the rock |goto 33.57,66.46 < 7 |only if walking
Jump across |goto 33.74,67.53 < 4 |only if walking
click Stolen Scroll##375483
Loot the "Stolen Scroll" Treasure |q 65543 |future |goto Zereth Mortis/0 34.04,67.64
]],
},
{
treasure=[[Protoflora Harvester]],
level=60,
spot="Zereth Mortis/0 52.57,71.47",
item=190952,
quest=65546,
polish=true,
steps=[[
step
Follow the path up |goto Zereth Mortis/0 55.34,65.08 < 30 |only if walking
Continue following the path |goto 55.80,70.76 < 20 |only if walking
Jump down here |goto 53.16,72.24 < 7 |only if walking
Jump across here while mounted |goto 52.91,72.16 < 4 |only if walking
click Protoflora Harvester##375485
Loot the "Protoflora Harvester" Treasure |q 65546 |future |goto Zereth Mortis/0 52.57,71.47
]],
},
{
treasure=[[Bushel of Progenitor Produce]],
level=60,
spot="Zereth Mortis/0 47.44,95.24",
item=190059,
quest=65573,
polish=true,
steps=[[
step
kill Nascent Servitor##182368+
Gain Five Stacks of the "Creation Catalyst Overcharge" Buff |havebuff 5 spell:367170 |goto Zereth Mortis/0 47.17,88.02
|tip Only the buff version that grants increased damage and maximum health counts.
|tip You will have 40 seconds to make it to the treasure on the next step.
step
click Bushel of Progenitor Produce##375485
|tip Click the door to unlock it.
Loot the "Bushel of Progenitor Produce" Treasure |q 65573 |future |goto Zereth Mortis/0 47.44,95.24
step
click Teleporter |goto 47.25,95.07
Teleport Outside |goto 48.17,96.27 < 5 |c |noway
]],
},
{
treasure=[[Template Archive]],
level=60,
spot="Zereth Mortis/0 59.61,46.19",
item=190060,
quest=65175,
polish=true,
steps=[[
step
click Orb |goto Nexus of Actualization/0 72.02,48.82
|tip Wait for it to roll across the room and open the passage.
click Template Archive##373548
Loot the "Template Archive" Treasure |q 65175 |future |goto 51.61,88.20
step
click Teleporter |goto 54.77,86.04
Choose _"Leave the Nexus of Actualization."_
Teleport Outside |goto Zereth Mortis/0 57.75,45.81 < 100 |c |noway
]],
},
{
treasure=[[Symphonic Vault]],
level=60,
spot="Zereth Mortis/0 52.59,62.97",
quest=65270,
polish=true,
steps=[[
step
Enter the cave |goto Zereth Mortis/0 51.91,62.84 < 10 |walk
click Broken Console |goto 52.61,64.05
click Broken Console |goto 52.50,62.62
click Broken Console |goto 52.18,63.88
click Broken Console |goto 52.83,63.01
|tip The consoles must be clicked in this order.
|tip Make sure the chest is active next to the Broken Automa first.
click Symphonic Vault##374976
Loot the "Symphonic Vault" Treasure |q 65270 |future |goto Zereth Mortis/0 52.59,62.97
]],
},
{
treasure=[[Stolen Relic]],
level=60,
spot="Zereth Mortis/0 37.90,65.20",
quest=65447,
polish=true,
steps=[[
step
Jump up the spheres here |goto Zereth Mortis/0 37.58,65.75 < 7 |only if walking
Jump up the spheres here |goto 38.04,64.90 < 7 |only if walking
click Stolen Relic##375281
|tip On the highest sphere floating in the air.
Loot the "Stolen Relic" Treasure |q 65447 |future |goto Zereth Mortis/0 37.90,65.20
]],
},
{
treasure=[[Filched Artifact]],
level=60,
spot="Zereth Mortis/0 49.75,87.23",
quest=65503,
polish=true,
steps=[[
step
click Filched Artifact##375405
|tip Jump up the floating spheres and onto the large tree branch.
Loot the "Filched Artifact" Treasure |q 65503 |future |goto Zereth Mortis/0 49.75,87.23
]],
},
{
treasure=[[Submerged Chest]],
level=60,
spot="Zereth Mortis/0 58.72,73.01",
item=190061,
quest=64545,
polish=true,
steps=[[
step
click Dangerous Orb of Power##375766
Pick up the Dangerous Orb of Power |havebuff spell:367523 |goto Zereth Mortis/0 59.42,76.84 |q 64545 |future
step
click Forgotten Pump##375765
|tip The pump has a cooldown of around 15 minutes.
|tip You may need to get the orb a few times and keep trying.
Activate the Pump |nobuff spell:367523 |goto Zereth Mortis/0 58.61,72.86 |q 64545 |future
step
click Submerged Chest##375485
Loot the "Submerged Chest" Treasure |q 64545 |future |goto Zereth Mortis/0 58.72,73.01
]],
},
{
treasure=[[Mistaken Ovoid]],
level=60,
spot="Zereth Mortis/0 53.66,72.63",
item=189435,
quest=65522,
polish=true,
steps=[[
step
click Lost Ovoid##375538+
|tip They look like small brown orbs usually found on larger metal orbs around Zereth Mortis.
|tip They do not sparkle like normal lootable objects.
collect 5 Lost Ovoid##190239
You can find them at these locations:
[Zereth Mortis/0 41.36,69.38]
[34.54,49.70]
[35.95,46.03]
[39.15,46.99]
[39.35,50.97]
[44.60,51.91]
[34.67,69.25]
[34.30,66.54]
[49.22,71.70]
[50.80,70.86]
[55.14,76.78]
[57.19,77.78]
[60.86,75.90]
[58.87,65.26]
[54.21,65.10]
[60.88,42.98]
[34.52,49.69]
[43.22,84.90]
step
Enter the cave |goto Zereth Mortis/0 52.51,73.41 < 10 |walk
click Missing Ovoid
Return the Missing Ovoids |q 65624 |future |goto 53.62,72.64
step
click Mistaken Ovoid##375411
|tip Inside the cave.
Loot the "Mistaken Ovoid" Treasure |q 65522 |future |goto Zereth Mortis/0 53.66,72.63
]],
},
{
treasure=[[Offering to the First Ones]],
level=60,
spot="Zereth Mortis/0 34.81,56.04",
quest=65537,
polish=true,
steps=[[
step
click Offering to the First Ones##375423
|tip This has a short respawn timer.
Loot the "Offering to the First Ones" Treasure |q 65537 |future |goto Zereth Mortis/0 34.81,56.04
]],
},
{
treasure=[[Crushed Supply Crate]],
level=60,
spot="Zereth Mortis/0 56.74,64.16",
quest=65489,
polish=true,
steps=[[
step
Jump down here |goto Zereth Mortis/0 56.50,65.01 < 7 |only if walking
|tip Jump onto the fallen pillar.
click Repair Tool##375392
|tip It's a tiny object on the very edge of the pillar above the Crushed Supply Crate.
collect Roaming Repair Tool##189767 |goto 56.71,64.13
step
talk Hiu Fi##185151
|tip It walks around this area.
Choose _<Hand over the missing tool.>_
collect Jiro Hammer##189768 |goto 57.54,62.90
step
click Fallen Rock+
|tip Click both of the rocks to destroy them and reveal the chest.
click Crushed Supply Crate##375382
Loot the "Crushed Supply Crate" Treasure |q 65489 |future |goto Zereth Mortis/0 56.74,64.16
]],
},
{
treasure=[[Undulating Foliage]],
level=60,
spot="Zereth Mortis/0 51.99,79.50",
item=190926,
quest=65572,
polish=true,
steps=[[
step
click Bloomthorn Vine
|tip Click any vines in your path to remove them.
click Teleporter Lock
Remove the First Teleporter Lock |q 65592 |future |goto Zereth Mortis/0 50.01,76.71
step
click Bloomthorn Vine
|tip Click any vines in your path to remove them.
click Teleporter Lock
Remove the Second Teleporter Lock |q 65589 |future |goto Catalyst Wards/0 39.56,68.55
step
click Bloomthorn Vine
|tip Click any vines in your path to remove them.
click Teleporter Lock
Remove the Third Teleporter Lock |q 65590 |future |goto 60.22,87.20
step
click Bloomthorn Vine
|tip Click any vines in your path to remove them.
click Teleporter Lock
Remove the Final Teleporter Lock |q 65591 |future |goto 69.73,52.46
step
Run up the ramp |goto Catalyst Wards/0 54.05,49.10 < 7 |walk
click Teleporter
Teleport Upstairs |havebuff spell:366839 |goto 43.01,50.13 |q 65572 |future
step
click Undulating Foliage##375495
Loot the "Undulating Foliage" Treasure |q 65572 |future |goto 48.96,34.41
]],
},
{
treasure=[[Syntactic Vault]],
level=60,
spot="Zereth Mortis/0 77.52,58.23",
item=190457,
quest=65565,
polish=true,
steps=[[
step
click Runic Syllable
|tip You can do this while mounted.
Learn the First Symbol |havebuff spell:367499 |goto Zereth Mortis/0 78.06,53.39
step
click Runic Syllable
|tip You can do this while mounted.
Learn the Second Symbol |havebuff 2 spell:367499 |goto 76.92,46.68
step
click Runic Syllable
|tip You can do this while mounted.
Learn the Third Symbol |havebuff 3 spell:367499 |goto 81.26,50.45
step
click Runic Syllable
|tip You can do this while mounted.
Learn the Fourth Symbol |havebuff 4 spell:367499 |goto 80.94,56.26
step
click Runic Syllable
|tip You can do this while mounted.
Learn the Fifth Symbol |havebuff 5 spell:367499 |goto 77.05,60.33
step
Enter the cave |goto 76.35,59.59 < 10 |walk
click Runic Syllable
|tip Inside the cave.
Learn the Final Symbol |havebuff 6 spell:367499 |goto 76.99,58.83
step
click Syntactic Seal
|tip Inside the cave.
Break the Seal |q 65670 |future |goto 77.59,58.15
step
click Syntactic Vault##375492
|tip Inside the cave.
Loot the "Syntactic Vault" Treasure |q 65565 |future |goto Zereth Mortis/0 77.52,58.23
]],
},
}
