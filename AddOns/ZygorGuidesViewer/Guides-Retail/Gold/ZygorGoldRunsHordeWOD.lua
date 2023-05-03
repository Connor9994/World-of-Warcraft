local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"


-- DAILIES RUNS

if UnitFactionGroup("player")=="Horde" then

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Anglers Dailies Run",{
	meta={goldtype="daily",levelreq=15,gold=34,time=15,icon="Interface\\ICONS\\Achievement_Faction_Anglers"},
	description="\nThis guide will take you through The Anglers dailies",
	},[[
	step
	label "dailies"
		There will only be three dailies available from the following questgivers
		|tip It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
		confirm
	step
		talk Fisherman Haito##59584
		accept Shocking!##30584 |goto Krasarang Wilds 67.9,45.2 |or
		accept Jagged Abalone##30586 |goto Krasarang Wilds 67.9,45.2  |or
		If these quests are unavailable today, click here |confirm
	step
		talk Angler Shen##59586
		accept Snapclaw##30700 |goto 67.5,43.5 |or
		accept Fishing for a Bruising##30588 |goto 67.5,43.5 |or
		If these quests are unavailable today, click here |confirm
	step
		talk John "Big Hook" Marsock##60674
		accept Bright Bait##30754 |goto 68.3,43.5 |or
		accept Jumping the Shark##30753 |goto 68.3,43.5 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Trawler Yotimo##60135
		accept Armored Carp##30613 |goto 67.6,42.5 |or
		accept Huff & Puff##30658 |goto 67.6,42.5 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Elder Fisherman Rassan##60673
		accept What Lurks Below##30585 |goto 68.4,42.1 |or
		accept Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Fo Fook##60675
		accept Piranha!##30763 |goto 67.2,41.2 |or
		accept Viseclaw Soup##30701 |goto 67.2,41.2 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Fiznix##60136
		accept Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6 |or
		accept Scavenger Hunt##30698 |goto 67.5,44.6 |or
		If this quest is unavailable today, click here |confirm
	step
		click Goblin Fishing Raft##211596
		Ride a Goblin Fishing Raft |goto 67.5,44.8 |havebuff 534592 --Inv_boot_leather_raiddruid_k_01
		only if haveq(30698)
	step
		Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris
		collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto 64.3,50.7
		You can find more Debris at [64.3,50.6]
		only if haveq(30698)
	step
		clicknpc Frenzied Reef Shark##60408
		Ride the shark |goto 68.4,43.1 |invehicle |c
		only if haveq(30753)
	step
		Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero
		kill Frenzied Reef Shark##60408 |q 30753/1
		only if haveq(30753)
	step
		click Jagged Abalone##211118
		collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto 69.1,37.9
		only if haveq(30586)
	step
		Enter the underwater cave here |goto 71.3,38.5 < 5
		kill Snapclaw##60401
		collect Snapclaw's Claw##80831 |q 30700/1 |goto 73.9,38.4
		only if haveq(30700)
	step
		Use your fishing skill to fish up 7 Dojani Eel |cast Fishing##131474
		collect 7 Dojani Eel##80260 |q 30584/1 |goto 65.6,30.5
		only if haveq(30584)
	step
		kill 8 Riverblade Raider##59714+ |q 30588/1 |goto 62.4,40.9
		only if haveq(30588)
	step
		kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
		collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto 55.1,45.7
		only if haveq(30701)
	step
		click Suncrawler##211474
		collect 7 Suncrawler##81116 |q 30754/1 |goto 59.8,38.8
		only if haveq(30754)
	step
		Use your Goblin Fishing Bomb to kill Sting Rays |use Goblin Fishing Bomb##80599
		|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
		kill Sting Ray##60278+
		collect 3 Stinger##80600+ |q 30678/1 |goto 59.3,46.3
		only if haveq(30678)
	step
		Use your fishing skill to fish up 5 Wolf Piranha. |cast Fishing##7620
		collect 5 Wolf Piranha##81122 |q 30763/1 |goto 36.8,43.3
		only if haveq(30763)
	step
		Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
		|tip When Narjon spawns, make sure to equip your weapon quickly. |cast Fishing##131474
		|tip It's a small swirling pool of water at this location
		kill Narjon the Gulper##59689 |q 30585/1 |goto 34.4,31.4
		collect Beloved Ring##80262 |q 30585/2 |goto 34.4,31.4
		only if haveq(30585)
	step
		Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403
		|tip The closer you are the easier it is to hit the fish.
		kill Prickly Puffer##60037
		collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto 51.4,62.2
		only if haveq(30658)
	step
		click Pristine Crane Egg##211160
		collect Pristine Crane Egg##80303 |q 30598/1 |goto 65.2,47.5
		only if haveq(30598)
	step
		Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403
		|tip The closer you are the easier it is to hit the fish.
		kill Armored Carp##59936+
		collect 5 Armored Carp##80437 |q 30613/1 |goto 70.1,51.2
		only if haveq(30613)
	step
		Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
		Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
		collect Silver Goby##80310 |q 30598/2 |goto 68.2,42.7
		only if haveq(30598)
	step
		talk Elder Fisherman Rassan##60673
		turnin What Lurks Below##30585 |goto 68.4,42.1
		turnin Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1
	step
		talk Fiznix##60136
		turnin Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6
		turnin Scavenger Hunt##30698 |goto 67.5,44.6
	step
		talk Angler Shen##59586
		turnin Snapclaw##30700 |goto 67.5,43.5
		turnin Fishing for a Bruising##30588 |goto 67.5,43.5
	step
		talk Trawler Yotimo##60135
		turnin Armored Carp##30613 |goto 67.6,42.5
		turnin Huff & Puff##30658 |goto 67.6,42.5
	step
		talk Fisherman Haito##59584
		turnin Shocking!##30584 |goto 67.9,45.2
		turnin Jagged Abalone##30586 |goto 67.9,45.2
	step
		talk John "Big Hook" Marsock##60674
		turnin Bright Bait##30754 |goto 68.3,43.5
		turnin Jumping the Shark##30753 |goto 68.3,43.5
	step
		talk Fo Fook##60675
		turnin Piranha!##30763 |goto 67.2,41.2
		turnin Viseclaw Soup##30701 |goto 67.2,41.2
	step
		talk Nat Pagle##63721
		buy 1 Grand Commendation of the Anglers##93225 |n
		Use the Commendation of the Anglers you just purchased |goto 68.4,43.4 |complete ZGV:GetReputation("The Anglers").hasBonus |use Grand Commendation of the Anglers##93225
		only if rep("The Anglers")>=Revered
	step
		You have reached the end of this guide
		Click here to go back to the dailies |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The August Celestials Dailies Run",{
	meta={goldtype="daily",levelreq=15,gold=57,time=5,icon="Interface\\ICONS\\Achievement_Faction_Celestials"},
	description="\nThis guide will take you through The August Celestials dailies",
	},[[
	step
	label "startaug"
		talk Sage Lotusbloom##64001
		|tip The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
		accept Challenge At The Temple of the Red Crane##31379 |goto Vale of Eternal Blossoms 62.79,23.39 |next "crane" |or |only if not completedq(31379)
		accept Attack At The Temple of the Jade Serpent##31377 |goto Vale of Eternal Blossoms 62.79,23.39 |next "serpent" |or |only if not completedq(31377)
		accept Defense At Niuzao Temple##31383 |goto Vale of Eternal Blossoms 62.79,23.39 |next "ox" |or |only if not completedq(31383)
		accept Trial At The Temple of the White Tiger##31381 |goto Vale of Eternal Blossoms 62.79,23.39 |next "tiger" |or |only if not completedq(31381)
		|tip If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
		Niuzao the Black Ox |confirm |next "ox"
		Yu'lon the Jade Serpent |confirm |next "serpent"
		Xuen the White Tiger |confirm |next "tiger"
		Chi-Ji the Red Crane |confirm |next "crane"
	step
	label "crane"
		talk Thelonius##60506
		turnin Challenge At The Temple of the Red Crane##31379 |goto Krasarang Wilds 31.3,63.4
		|only if not completedq(31379)
	step
		talk Thelonius##60506
		accept Students of Chi-Ji##30718 |goto 31.3,63.4
		accept Champion of Chi-Ji##30740 |goto 31.3,63.4 |only if achieved(7287)
	step
		talk Yan Quillpaw##60529
		accept Gifts of the Great Crane##30717 |goto 31.3,63.6
	step
		talk Kuo-Na Quillpaw##60528
		accept Chasing Hope##30716 |goto 31.3,63.6
	step
		talk Champion of Chi-Ji##60546
		Let's fight!
		Defeat a Champion of Chi-Ji |q 30740/1 |goto 34.6,82.0
		|only if haveq(30740)
	step
		kill Student of Chi-Ji##60601+
		Duel #10# Students of Chi-Ji |q 30718/1 |goto 31.2,73.9
		click Cerulean Gift of the Crane##211451
		click Crimson Gift of the Crane##211453
		click Bronze Gift of the Crane##211452
		|tip The Gifts look like feathers laying around on the ground.
		collect 10 Gift of the Great Crane##80938+ |q 30717/1 |goto 31.2,73.9
		Find #3# Spirits of the Crane |q 30716/1 |goto 31.2,73.9
		|tip They look like stealthed birds roaming around the isle in set paths. Run into them.
	step
		talk Kuo-Na Quillpaw##60528
		turnin Chasing Hope##30716 |goto 31.3,63.6
	step
		talk Yan Quillpaw##60529
		turnin Gifts of the Great Crane##30717 |goto 31.3,63.6
	step
		talk Thelonius##60506
		turnin Students of Chi-Ji##30718 |goto 31.3,63.4
		accept Ellia Ravenmane##30725 |goto 31.3,63.4 |or
		accept Minh Do-Tan##30726 |goto 31.3,63.4 |or
		accept Ellia Ravenmane: Rematch##30727 |goto 31.3,63.4 |or
		accept Fat Long-Fat##30728 |goto 31.3,63.4 |or
		accept Julia Bates##30729 |goto 31.3,63.4 |or
		accept Dextrous Izissha##30730 |goto 31.3,63.4 |or
		accept Kuo-Na Quillpaw##30731 |goto 31.3,63.4 |or
		accept Ellia Ravenmane: Revenge##30732 |goto 31.3,63.4 |or
		accept Tukka-Tuk##30733 |goto 31.3,63.4 |or
		accept Huck Wheelbarrow##30734 |goto 31.3,63.4 |or
		accept Mindel Sunspeaker##30735 |goto 31.3,63.4 |or
		accept Yan Quillpaw##30736 |goto 31.3,63.4 |or
		accept Fat Long-Fat: Rematch##30737 |goto 31.3,63.4 |or
		accept Thelonius##30738 |goto 31.3,63.4 |or
		accept Ellia Ravenmane: Redemption##30739 |goto 31.3,63.4 |or
		|only if not achieved(7287)
	step
		talk Thelonius##60506
		turnin Students of Chi-Ji##30718 |goto 31.3,63.4
		turnin Champion of Chi-Ji##30740 |goto 31.3,63.4
		only if achieved(7287)
		|next "end"
	step
		talk Fat Long-Fat##60534
		|tip He is on the very top of this building.
		Let's fight!
		Defeat Fat Long-Fat |q 30728/1 |goto 32.0,70.7
		|only if haveq(30728)
	step
		talk Ellia Ravenmane##60530
		Let's fight!
		Defeat Ellia Ravenmane |q 30725/1 |goto 31.8,71.2
		|only if haveq(30725)
	step
		talk Mindel Sunspeaker##60541
		Let's fight!
		Defeat Mindel Sunspeaker |q 30735/1 |goto 32.1,69.9
		|only if haveq(30735)
	step
		talk Minh Do-Tan##60532
		Let's fight!
		Defeat Minh Do-Tan |q 30726/1 |goto 32.0,76.5
		|only if haveq(30726)
	step
		talk Tukka-Tuk##60539
		Let's fight!
		Defeat Tukka-Tuk |q 30733/1 |goto 34.1,75.1
		|only if haveq(30733)
	step
		talk Ellia Ravenmane##60545
		Let's fight!
		Defeat Ellia Ravenmane |q 30739/1 |goto 36.4,75.6
		|only if haveq(30739)
	step
		talk Dextrous Izissha##60536
		Let's fight!
		Defeat Dextrous Izissha |q 30730/1 |goto 31.7,80.3
		|only if haveq(30730)
	step
		talk Fat Long-Fat##60543
		Let's fight!
		Defeat Fat Long-Fat |q 30737/1 |goto 34.8,82.6
		|only if haveq(30737)
	step
		talk Kuo-Na Quillpaw##60537
		Let's fight!
		Defeat Kuo-Na Quillpaw |q 30731/1 |goto 36.6,74.8
		|only if haveq(30731)
	step
		talk Ellia Ravenmane##60533
		Let's fight!
		Defeat Ellia Ravenmane |q 30727/1 |goto 35.2,75.1
		|only if haveq(30727)
	step
		talk Julia Bates##60535
		Let's fight!
		Defeat Julia Bates |q 30729/1 |goto 28.9,75.5
		|only if haveq(30729)
	step
		talk Huck Wheelbarrow##60540
		Let's fight!
		Defeat Huck Wheelbarrow |q 30734/1 |goto 27.9,70.3
		|only if haveq(30734)
	step
		talk Yan Quillpaw##60542
		Let's fight!
		Defeat Yan Quillpaw |q 30736/1 |goto 36.5,76.2
		|only if haveq(30736)
	step
		talk Ellia Ravenmane##60538
		Let's fight!
		Defeat Ellia Ravenmane |q 30732/1 |goto 34.5,83.3
		|only if haveq(30732)
	step
		talk Thelonius##60544
		Let's fight!
		Defeat Thelonius |q 30738/1 |goto 28.8,72.4
		|only if haveq(30738)
	step
		talk Thelonius##60506
		turnin Ellia Ravenmane##30725 |goto 31.3,63.4 |or
		turnin Minh Do-Tan##30726 |goto 31.3,63.4 |or
		turnin Ellia Ravenmane: Rematch##30727 |goto 31.3,63.4 |or
		turnin Fat Long-Fat##30728 |goto 31.3,63.4 |or
		turnin Julia Bates##30729 |goto 31.3,63.4 |or
		turnin Dextrous Izissha##30730 |goto 31.3,63.4 |or
		turnin Kuo-Na Quillpaw##30731 |goto 31.3,63.4 |or
		turnin Ellia Ravenmane: Revenge##30732 |goto 31.3,63.4 |or
		turnin Tukka-Tuk##30733 |goto 31.3,63.4 |or
		turnin Huck Wheelbarrow##30734 |goto 31.3,63.4 |or
		turnin Mindel Sunspeaker##30735 |goto 31.3,63.4 |or
		turnin Yan Quillpaw##30736 |goto 31.3,63.4 |or
		turnin Fat Long-Fat: Rematch##30737 |goto 31.3,63.4 |or
		turnin Thelonius##30738 |goto 31.3,63.4 |or
		turnin Ellia Ravenmane: Redemption##30739 |goto 31.3,63.4 |or
		|only if not achieved(7287)
		|next "end"
	step
	label "serpent"
		talk Elder Sage Tai-Feng##57324
		turnin Attack At The Temple of the Jade Serpent##31377 |goto The Jade Forest 53.9,61.9 |only if haveq(31377)
		accept Arrows of Fortune##30065 |goto The Jade Forest 53.9,61.9 |or
		accept Hidden Power##30066 |goto The Jade Forest 53.9,61.9 |or
		accept The Darkness Around Us##30006 |goto The Jade Forest 53.9,61.9 |or
		Click here when no more quests are available |confirm --|noquest
	step
		talk Elder Sage Storm-Sing##57319
		accept Behind the Masks##30063 |goto 53.9,61.9 |or
		accept Saving the Sutras##30064 |goto 53.9,61.9 |or
		Click here when no more quests are available |confirm --|noquest
	stickystart "defendersarrow"
	stickystart "shainvaders"
	stickystart "maskofdoubt"
	step
		click Ancient Sutra##210086
		collect 6 Ancient Sutra##77432 |q 30064/1 |goto 56.5,53.6
		|only if haveq(30064)
	step
	label "defendersarrow"
		click Defender's Arrow##210087 |only if haveq(30065)
		collect 10 Defender's Arrow##77452+ |q 30065/1 |goto 55.3,57.4 |only if haveq(30065)
		click Yu'lon Guardian##57400+, Yu'lon Adept##57316+ |only if haveq(30066)
		Use the Stack of Mantras |use Stack of Mantras##77475 |only if haveq(30066)
		Deliver #6# Ancient Mantras |q 30066/1 |goto 55.3,57.4 |only if haveq(30066)
	step
	label "maskofdoubt"
		kill Final Doubt##57330+, Lingering Doubt##57396+ |only if haveq(30063)
		collect 8 Mask of Doubt##77419+ |q 30063/1 |only if haveq(30063) |goto 54.5,54.1
		|only if haveq(30063)
	step
	label "shainvaders"
		kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
		Kill #15# Sha Invaders |q 30006/1 |goto 53.4,54.2
		|only if haveq(30006)
	step
		talk Elder Sage Storm-Sing##57319
		turnin Behind the Masks##30063 |goto 53.9,61.9 |only if haveq(30063)
		turnin Saving the Sutras##30064 |goto 53.9,61.9 |only if haveq(30064)
	step
		talk Elder Sage Tai-Feng##57324
		turnin Arrows of Fortune##30065 |goto The Jade Forest 53.9,61.9 |only if haveq(30065)
		turnin Hidden Power##30066 |goto The Jade Forest 53.9,61.9 |only if haveq(30066)
		turnin The Darkness Around Us##30006 |goto The Jade Forest 53.9,61.9 |only if haveq(30006)
		accept Flames of the Void##30068 |goto The Jade Forest 53.9,61.9 |or
		accept The Shadow of Doubt##30067 |goto The Jade Forest 53.9,61.9 |or
		Click here when no more quests are available |confirm --|noquest
	step
		kill Shadow of Doubt##57389 |q 30067/1 |goto 57.5,62.3
		|only if haveq(30067)
	step
		clicknpc War Serpent##57871
		Ride the War Serpent |invehicle |goto 54.1,60.9
		|only if haveq(30068)
	step
		Fly around the Jade Temple Grounds and extinguish Void Flames
		|tip They look like swirling black fire.
		If you run out of water you can refill it in the river here |goto 53.9,58.0
		|tip Look for small light-blue patches of swirling water and then fly over them.
		Douse #6# Void Flames |q 30068/1
		|only if haveq(30068)
	step
		Click the Leave Vehicle button |outvehicle |goto 53.9,61.9
		|only if haveq(30068)
	step
		talk Elder Sage Tai-Feng##57324
		turnin The Shadow of Doubt##30067 |goto 53.9,61.9
		turnin Flames of the Void##30068 |goto 53.9,61.9
		|next "end"
	step
	label "tiger"
		talk Xuen##60968
		turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit 67.2,55.9
		|only if haveq(31381)
	step
		talk Xuen##60968
		accept Round 1: Brewmaster Chani##30879 |goto 67.2,55.9 |or
		accept Round 1: The Streetfighter##30880 |goto 67.2,55.9 |or
		accept Contending With Bullies##31517 |goto 67.2,55.9
		|tip This quest may not be available.
		Click here when no more quests are available |confirm --|noquest
	step
		kill Shonuf##64757 |q 31517/1 |goto 71.1,55.8
		|only if haveq(31517)
	step
		talk Brewmaster Chani##60996
		|tip Challenge her.
		|tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
		Defeat Brewmaster Chani |q 30879/1 |goto 71.0,51.8
		|only if haveq(30879)
	step
		talk Lun-Chi##60994
		|tip Challenge her.
		Defeat The Streetfighter |q 30880/1 |goto 71.0,51.8
		|only if haveq(30880)
	step
		talk Xuen##60968
		turnin Round 1: Brewmaster Chani##30879 |goto 70.3,51.3 |only if haveq(30879)
		turnin Round 1: The Streetfighter##30880 |goto 70.3,51.3 |only if haveq(30880)
		turnin Contending With Bullies##31517 |goto 70.3,51.3 |only if haveq(31517)
		accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto 70.3,51.3 |or
		accept Round 2: Kang Bramblestaff##30882 |goto 70.3,51.3 |or
	step
		talk Kang Bramblestaff##60978
		|tip Challenge him.
		Defeat Kang Bramblestaff |q 30882/1 |goto 71.7,45.4
		|only if haveq(30882)
	step
		talk Clever Ashyo##60980
		|tip Challenge him.
		|tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The spheres are top priority and the Spouts are easily avoidable.
		Defeat Clever Ashyo |q 30881/1 |goto 71.7,45.4
		Defeat Ken-Ken |q 30881/2 |goto 71.7,45.4
		|only if haveq(30881)
	step
		talk Xuen##60968
		turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto 71.8,44.9 |only if haveq(30881)
		turnin Round 2: Kang Bramblestaff##30882 |goto 71.8,44.9 |only if haveq(30882)
		accept Round 3: The Wrestler##30883 |goto 71.8,44.9 |or
		accept Round 3: Master Boom Boom##30885 |goto 71.8,44.9 |or
	step
		talk Master Boom Boom##61013
		|tip Challenge him.
		|tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
		Defeat Master Boom Boom |q 30885/1 |goto 66.7,46.5
		|only if haveq(30885)
	step
		talk The Wrestler##60997
		|tip Challenge him.
		|tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
		Defeat The Wrestler |q 30883/1 |goto 66.7,46.5
		|only if haveq(30883)
	step
		talk Xuen##60968
		turnin Round 3: The Wrestler##30883 |goto 66.4,46.3 |only if haveq(30883)
		turnin Round 3: Master Boom Boom##30885 |goto 66.4,46.3 |only if haveq(30885)
		accept Round 4: The P.U.G.##30907 |goto 66.4,46.3 |or
		accept Round 4: Master Windfur##30902 |goto 66.4,46.3 |or
	step
		talk Master Windfur##61012
		|tip Challenge him.
		Defeat Master Windfur |q 30902/1 |goto 68.8,43.8
		|only if haveq(30902)
	step
		Enter the building |goto 69.0,43.7 < 15
		talk Healiss##61004
		|tip Challenge him.
		|tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
		Defeat Hackiss |q 30907/1
		Defeat Healiss |q 30907/2
		Defeat Tankiss |q 30907/3
		|only if haveq(30907)
	step
		talk Xuen##60968
		turnin Round 4: The P.U.G.##30907 |goto 68.5,44.6
		turnin Round 4: Master Windfur##30902 |goto 68.5,44.6
	step
		talk Lin Tenderpaw##60981
		accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
		Click here if this quest is unavailable |confirm |next "end"
	step
		For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over.
		confirm
		|only if haveq(31492)
	step
		Enter the first temple |goto 69.6,53.0 < 10 |walk
		Enter the second temple |goto 66.9,51.2 < 10 |walk
		click The Strong Brazier##214628
		Light the Strong Brazier |q 31492/1 |goto 68.6,46.6
		|only if haveq(31492)
	step
		talk Lin Tenderpaw##60981
		turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
		|next "end"
		|only if haveq(31492)
	step
		End of section |next "end"
	step
	label "ox"
		talk Ogo the Elder##61580
		turnin Defense At Niuzao Temple##31383 |goto Townlong Steppes 39.35,62.30 |only if haveq(31383)
		accept The Siege Swells##30956 |goto Townlong Steppes 39.35,62.30 |or
		accept The Unending Siege##30952 |goto Townlong Steppes 39.35,62.30 |or
	step
		talk Ogo the Younger##61581
		accept The Big Guns##30959 |goto 39.34,62.21 |or
		accept A Blade is a Blade##30954 |goto 39.34,62.21 |or
	step
		talk Yak-Keeper Kyana##61585
		accept Fallen Sentinels##30953 |goto 39.15,62.07
		If this quest is unavailable today, click here |confirm
	step
		talk Sentinel Commander Qipan##61584
		accept The Overwhelming Swarm##30957 |goto 39.41,61.96
		Click here when no more quests are available |confirm --|noquest
	step
		talk High Adept Paosha##61583
		accept In Battle's Shadow##30958 |goto 38.95,62.44 |or
		accept Paying Tribute##30955 |goto 38.95,62.44 |or
	step
		Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |only if haveq(30959)
		Cause #3# Sri'thik War Wagons to explode |q 30959/1 |goto 40.99,60.35 |only if haveq(30959)
		kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if haveq(30956)
		Kill #25# Sri'thik attackers |q 30956/1 |goto 40.99,60.35 |only if haveq(30956)
		kill Sra'thik Kunchong##61509+
		Kill #4# Kuchong |q 30957/1 |goto 40.99,60.35 |only if haveq(30957)
		click Loose Brick##211752 |only if haveq(30958)
		Throw #10# Loose Stones up to Niuzao Stonemasons |q 30958/1 |goto 40.99,60.35 |only if haveq(30958)
		clicknpc Wounded Niuzao Sentinel##61570 |only if haveq(30953)
		Use your Yak's Milk Flask on Wounded Niuzao Sentinels |use Yak's Milk Flask##82381 |only if haveq(30953)
		|tip Normal healing spells will also heal the Sentinels if you have them. |only if haveq(30953)
		Heal #8# Niuzao Sentinels |q 30953/1 |goto 40.99,60.35 |only if haveq(30953)
		click Niuzao Food Supply##212133 |only if haveq(30955)
		Gather #6# Food for Niuzao |q 30955/1 |goto 40.99,60.35 |only if haveq(30955)
		kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if haveq(30952)
		Kill #12# Sra'thik attackers |q 30952/1 |goto 40.99,60.35 |only if haveq(30952)
		click Sra'thik Weapon##211766 |only if haveq(30954)
		|tip After you kill a Sra'thik, a weapon may drop. |only if haveq(30954)
		collect 10 Sra'thik Weapon##82353 |q 30954/1 |goto 40.99,60.35 |only if haveq(30954)
	step
		talk Ogo the Elder##61580
		turnin The Siege Swells##30956 |goto 39.35,62.30 |only if haveq(30956)
		turnin The Unending Siege##30952 |goto 39.35,62.30 |only if haveq(30952)
	step
		talk Ogo the Younger##61581
		turnin The Big Guns##30959 |goto 39.34,62.21 |only if haveq(30959)
		turnin A Blade is a Blade##30954 |goto 39.34,62.21 |only if haveq(30954)
	step
		talk Yak-Keeper Kyana##61585
		turnin Fallen Sentinels##30953 |goto 39.15,62.07 |only if haveq(30953)
		turnin In Battle's Shadow##30958 |goto 39.15,62.07 |only if haveq(30958)
	step
		talk Sentinel Commander Qipan##61584
		turnin The Overwhelming Swarm##30957 |goto 39.41,61.96
		|only if haveq(30957)
	step
		talk High Adept Paosha##61583
		turnin Paying Tribute##30955 |goto 38.95,62.44
		|only if haveq(30955)
	step
		label "end"
		talk Sage Lotusbloom##64001
		buy 1 Grand Commendation of the August Celestials##93224 |n
		Use the Commendation of the August Celestials you just purchased |complete ZGV:GetReputation("August Celestials").hasBonus |goto Vale of Eternal Blossoms 62.8,23.4 |use Grand Commendation of the August Celestials##93224
		|only if rep("August Celestials")>=Revered
	step
		You have reached the end of this daily guide
		Click here to return to the start of the dailies |next "startaug" |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Order of the Cloud Serpent Dailies Run",{
	meta={goldtype="daily",levelreq=10,gold=46,time=6,icon="Interface\\ICONS\\Achievement_Faction_SerpentRiders"},
	description="\nThis guide will take you through the Order of the Cloud Serpent dailies",
	},[[
	step
	label "start"
		Proceeding to Order of the Cloud Serpent Dailies |complete completedq(30142) |next "dailies" |only if completedq(30142)
		Moving to the Order of the Cloud Serpent prequests. |next |complete not completedq(30142) |only if not completedq(30142)
	step
		#include "CS_PreQuests"
	step
	label "dailies"
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		accept Catch!##30151 |goto The Jade Forest 57.5,45.3 |or 2
		accept Pooped##31704 |goto The Jade Forest 57.5,45.3 |or 2
		accept Feeding Time##30156 |goto The Jade Forest 57.5,45.3 |or 2
		accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.5,45.3 |or 2
		accept Sweet as Honey##30150 |goto The Jade Forest 57.5,45.3 |or 2
		Make sure Your Hatchling offers no more quests and click here |confirm
		only if not completedq(30143)
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		accept Catch!##30151 |goto 57.5,45.3 |or 2
		accept Pooped##31704 |goto 57.5,45.3 |or 2
		accept Pooped##31716 |goto 57.5,45.3 |or 2
		accept Feeding Time##30156 |or 2
		accept The Easiest Way To A Serpent's Heart##30154 |goto 57.5,45.3 |or 2
		accept Sweet as Honey##30150 |goto 57.5,45.3 |or 2
		Make sure Your Hatchling offers no more quests and click here. |confirm
		only if completedq(30143)
	step
		talk Instructor Skythorn##58228
		accept Restoring the Balance##30155 |goto 57.6,45.1 |or 2
		accept Disarming the Enemy##30158 |goto 57.6,45.1 |or 2
		accept Thinning The Pack##31698 |goto 57.6,45.1 |or 2
		accept Weeping Widows##31706 |goto 57.6,45.1 |or 2
		accept A Tangled Web##31707 |goto 57.6,45.1 |or 2
		accept Monkey Mischief##31712 |goto 57.6,45.1 |or 2
		noquest
	step
		talk Jenova Longeye##58413
		|tip NOTE: You will be able to accept Fragments of the Past at any level Archaeology, but won't be able to do the quest unless your skill in Archaeology is 525 or more.
		accept Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("First Aid")>=525
		accept A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
		accept Fragments of the Past##30147 |goto 57.5,44.7 |only if skill("Archaeology")>=525
		accept Snack Time##30146 |goto 57.5,44.7 |only if skill("Fishing")>=1
		She can also be found inside of the following building |goto The Jade Forest/0 57.3,45.7
	step
		talk Elder Anli##58564
		accept Slitherscale Suppression##31194 |goto 57.6,44.9 |or 2
		accept Madcap Mayhem##31703 |goto 57.6,44.9 |or 2
		accept Dark Huntress##31701 |goto 57.6,44.9 |or 2
		accept On The Prowl##31702 |goto 57.6,44.9 |or 2
		accept The Seed of Doubt##31711 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9 |or 2
		accept The Big Kah-Oona##31715 |goto 57.6,44.9 |or 2
		noquest
	step
		talk Ningna Darkwheel##58509
		accept Sprite Fright##31699 |goto 58.3,45.0 |or
		accept The Shoe Is On The Other Foot##31700 |goto 58.3,45.0 |or
		noquest
	step
		talk Suchi the Sweet##58510
		accept Preservation##30159 |goto 58.5,44.7 |or
		accept Emptier Nests##30157 |goto 58.5,44.7 |or
		noquest
	step
		talk Big Bao##58508
		accept Lingering Doubt##31709 |goto 57.5,44.0
		noquest
	step
		talk Qua-Ro Whitebrow##58511
		accept Serpent's Scale##31708 |goto 57.3,43.5
		accept Saving the Serpents##31714 |goto 57.3,43.5
		noquest
	step
		talk Instructor Windblade##58420
		accept The Sky Race##30152 |goto The Jade Forest 58.6,43.7
		noquest
	step
		talk Ace Longpaw##58506
		accept The Big Brew-haha##31713 |goto 58.0,43.7
		noquest
	step
		talk Instructor Windblade##58420
		Tell her you are ready to start the Sky Race.
		Ride your Dragon! |invehicle |goto 58.6,43.7
		only if haveq(30152)
	step
		map The Jade Forest/0
		path loop on; follow strict; dist 40
		path	60.6,39.4	59.7,31.5	61.3,25.2
		path	66.3,36.0	66.2,42.4	66.8,51.4
		path	64.0,51.0	60.4,52.9	61.8,54.5
		path	58.7,46.8	58.4,46.4	58.1,46.0
		Follow this path and collect the checked flags hanging off of the Checkpoint balloons
		As you fly, gain speed by flying through cloud rings
		Pass 10 Checkpoints |q 30152/1
		Pass underneath the Finish Line |q 30152/2
		only if haveq(30152)
	step
		talk Qua-Ro Whitebrow##58511
		Challenge him to a duel!
		Defeat Qua-Ro Whitebrow |q 31721/1 |goto 57.3,43.5
		only if haveq(31721)
	step
		talk Ace Longpaw##58506
		Challenge him to a duel!
		Defeat Ace Longpaw |q 31717/1 |goto 58.0,43.7
		only if haveq(31717)
	step
		talk Big Bao##58508
		Challnge him to a duel!
		Defeat Big Bao |q 31718/1 |goto 57.5,44.0
		only if haveq(31718)
	step
		talk Suchi the Sweet##58510
		Challenge her to a duel!
		Defeat Suchi the Sweet |q 31720/1 |goto 58.5,44.7
		only if haveq(31720)
	stickystart "slitherharpoon"
	stickystart "saltback"
	step
		kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto 69.8,31.3
		only if haveq(31194)
	step
	label "slitherharpoon"
		kill 8 Slitherscale saurok Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |q 30155/1 |goto 68.1,31.2 |only if haveq(30155)
		click Slitherscale Weapons##210277 |only if haveq(30158)
		collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto 68.1,31.2 |only if haveq(30158)
		click Serpent Egg##215392 |only if haveq(30159)
		collect 8 Stolen Egg##79067 |q 30159/1 |goto 68.1,31.2 |only if haveq(30159)
	step
	label "saltback"
		kill Saltback Turtle##58218+, Saltback Yearling##58219+
		collect 15 Saltback Meat Scrap##79028 |n
		Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
		collect 3 Saltback Meat##79027 |n
		Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1 |goto 64.6,33.3
		only if haveq(30156)
	step
		Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
		Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
		Catch the Ball #8# times |q 30151/1 |goto 57.2,45.2
		only if haveq(30151)
	step
		click Hatchling Poop##214863
		|tip It is all around this area.
		collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto 55.1,46.5
		only if haveq(31704)
	step
		click Hatchling Poop##214863
		|tip It is all around this area.
		collect 5 Big Bag of Poop##89053 |q 31716/1 |goto 55.1,46.5
		only if haveq(31716)
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Pooped##31704 |goto 57.5,45.4
		only if haveq(31704)
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Pooped##31716 |goto 57.5,45.4
		only if haveq(31716)
	stickystart "stolenboots"
	step
		kill Shadowfae Madcap##65613 |q 31703/1 |goto 62.7,27.4
		only if haveq(31703)
	step
		_Enter_ the cave |goto The Jade Forest/0 64.4,25.8 < 10 |walk
		kill Windward Huntress##63538 |q 31701/1 |goto 64.7,25.7
		only if haveq(31701)
	step
		kill Windward Saber##65612 |q 31702/1 |goto 63.8,22.3
		only if haveq(31702)
	step
	label "stolenboots"
		kill Windward Tiger##63537 |only if haveq(30154)
		collect 5 Tiger Flank##85282 |q 30154/1 |goto 62.8,24.7 |only if haveq(30154)
		kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto 62.8,24.7 |only if haveq(31699)
		kill 8 Windward Alpha+, Windward Tiger##63537+ |q 31698/1 |goto 62.8,24.7 |only if haveq(31698)
		click Stolen Boots##214868 |only if haveq(31700)
		collect 14 Stolen Boots##89054 |q 31700/1 |goto 62.8,24.7 |only if haveq(31700)
	stickystart "widowspawn"
	step
		_Enter_ the cave |goto 58.0,31.7 < 10 |walk
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.7,25.7
		only if haveq(31709)
	step
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.0,31.9
		only if haveq(31709)
	step
		_Enter_ the cave |goto 58.0,31.7 < 10 |walk
		kill Seed of Doubt |q 31711/1 |goto The Jade Forest/15 35.7,40.2
		only if haveq(31711)
	step
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.0,74.1
		only if haveq(31709)
	step
	label "widowspawn"
		_Enter_ the cave |goto 58.0,31.7 < 10
		kill Widowspawn##65658 |only if haveq(31710)
		collect 100 Tiny Spider Eye##88907 |q 31710/1 |only if haveq(31710)
		kill 7 Weeping Widow##65653+ |q 31706/1 |only if haveq(31706)
		click Serpent's Scale##214844 |only if haveq(31708)
		collect 25 Serpent's Scale##88895 |q 31708/1 |only if haveq(31708)
		kill Widow's Web##65634+ |only if haveq(31707)
		Free #5# Sri-La Villagers |q 31707/1 |only if haveq(31707)
		only if haveq(31706) or haveq(31707) or haveq(31708) or haveq(31710)
	stickystart "rescueserp"
	stickystart "oonabrew"
	stickystart "oonagoon"
	step
		_Leave_ the cave |goto The Jade Forest/15 75.8,19.0 < 10 |only if haveq(31708) or haveq(31710) or haveq(31706) or haveq(31711) or haveq(31709) or haveq(31707) |walk
		_Enter_ the Oona Kagu cave |goto The Jade Forest/0 57.7,27.7 < 10 |only if haveq(31715) |walk
		kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.8,77.8
		only if haveq(31715)
	step
	label "rescueserp"
		clicknpc Serpent##128767
		collect 10 Rescued Serpent##88894 |q 31714/1 |goto 55.2,28.4
		only if haveq(31714)
	step
	label "oonabrew"
		kill Oona Brewchugger##65624
		click Stolen Sri-La Keg##214986
		collect 100 Sri-La Stout##88855 |q 31713/1 |goto 55.2,28.4
		only if haveq(31713)
	step
	label "oonagoon"
		kill 13 Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+ |q 31712/1 |goto 55.2,28.0
		only if haveq(31712)
	step
		Use your Silken Rope on _Windward Hatchlings_ |use Silken Rope##78947
		Bring the Windward Hatchlings to the nest at |goto 63.4,31.4
		Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest 64.5,31.1
		only if haveq(30157)
	step
		Use your First Aid skill to create 8 _Windwool Bandages_ or _Heavy Windwool Bandages_
		You can also ask other players to sell you some bandages
		create 8 Heavy Windwool Bandage##102698,First Aid,8 total |only if skill("First Aid")>=550 and skill("First Aid")<600
		collect 8 Windwool Bandage##72985 |only if skill("First Aid")<550
		or
		create 8 Heavy Windwool Bandage##102699,First Aid,8 total  |only if skill("First Aid")>=600
		collect 8 Heavy Windwool Bandage##72986 |only if skill("First Aid")<550
		only if haveq(30148)
	step
		Use your Windwool Bandages on Injured Hatchlings |use Windwool Bandage##72985
		Heavy Windwool Bandages work, too |use Heavy Windwool Bandage##72986
		Bandage #8# Injured Hatchlings |q 30148/1 |goto 63.9,31.1
		only if haveq(30148)
	step
		Use your Fishing skill to fish in the water here |cast Fishing##7620
		|tip You will have to fish from Pools if you have low Fishing Skill.
		collect 10 Sugar Minnow##79046 |q 30146/1 |goto 57.0,43.0 |only if haveq(30146)
		collect 10 Golden Carp##74866 |only if haveq(30149)
		You can find more pools of fish here |goto The Jade Forest/0 54.8,51.5
		only if haveq(30146) or haveq(30149)
	step
		Use your Cooking skill to create 5 Fish Cakes
		create 5 Fish Cake##104297,Cooking,5 total |q 30149/1 |or
		buy 5 Fish Cake##74641 |or
		You can ask other players to sell you some, if they happen to have leftovers
		only if haveq(30149)
	step
		kill Honeykeeper##58363+
		collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest 55.1,47.2
		only if haveq(30150)
	step
		talk Ace Longpaw##58506
		turnin The Big Brew-haha##31713 |goto 58.0,43.7
		only if haveq(31713)
	step
		talk Elder Anli##58564
		|tip You will only have a couple of these quests.
		turnin Slitherscale Suppression##31194 |goto 57.6,44.9
		turnin Dark Huntress##31701 |goto 57.6,44.9
		turnin On The Prowl##31702 |goto 57.6,44.9
		turnin Restoring the Balance##30155 |goto 57.6,44.9
		turnin Disarming the Enemy##30158 |goto 57.6,44.9
		turnin Madcap Mayhem##31703 |goto 57.6,44.9
		turnin The Easiest Way To A Serpent's Heart##30154 |goto 57.6,44.9
		turnin Sprite Fright##31699 |goto 57.6,44.9
		turnin Thinning The Pack##31698 |goto 57.6,44.9
		turnin The Shoe Is On The Other Foot##31700 |goto 57.6,44.9
		turnin Weeping Widows##31706 |goto 57.6,44.9
		turnin The Seed of Doubt##31711 |goto 57.6,44.9
		turnin A Tangled Web##31707 |goto 57.6,44.9
		turnin The Sky Race##30152 |goto 57.6,44.9
		turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9
		turnin The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9
		turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9
		turnin The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9
		turnin Preservation##30159 |goto 57.6,44.9
		turnin Lingering Doubt##31709 |goto 57.6,44.9
		turnin Emptier Nests##30157 |goto 57.6,44.9
		turnin Monkey Mischief##31712 |goto 57.6,44.9
		turnin The Big Kah-Oona##31715 |goto 57.6,44.9
		turnin Saving the Serpents##31714 |goto 57.6,44.9
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Tiny Treats##31710 |goto 57.5,45.3 |only if haveq(31710)
		turnin Sweet as Honey##30150 |goto 57.5,45.3 |only if haveq(30150)
		turnin Feeding Time##30156 |goto 57.5,45.3 |only if haveq(30156)
		turnin Pooped##31704 |goto 57.5,45.3 |only if haveq(31704)
		turnin The Easiest Way To A Serpent's Heart##30154 |only if haveq(30154)
		only if haveq(31710) or haveq(30150) or haveq(30156) or haveq(31704) or haveq(30154)
	step
		Talk to Your Hatchling |goto 57.5,45.3
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		confirm
		only if not completedq(30143)
	step
		Talk to Your Hatchling |goto 57.5,45.3
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		confirm
		only if completedq(30143)
	step
		Open your world map, find dig sites in Pandaria, then go to them
		|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
		Use your Survey ability inside the dig site area |cast Survey##80451
		A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
		Click the Archaeology Fragments that spawn on the ground
		collect 6 Serpentrider Relic## |q 30147/1
		only if haveq(30147)
	step
		talk Jenova Longeye##58413
		turnin Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("First Aid")>=525
		turnin A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
		turnin Fragments of the Past##30147 |goto 57.5,44.7
		turnin Snack Time##30146 |goto 57.5,44.7
	step
		Talk to Your Hatchling |goto 57.5,45.4
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Sweet as Honey##30150
		only if haveq(30150)
	step
		talk Elder Anli##58564
		turnin Catch!##30151 |goto 57.6,44.9
		only if haveq(30151)
	step
		talk Elder Anli##58564
		accept Needle Me Not##31705 |goto 57.6,44.9
		only if completedq(30151)
	step
		Use the Golden Honey in your bags |use Golden Honey##89113
		kill Orchard Needler |q 31705/1 |goto 57.0,41.2
		only if haveq(31705)
	step
		talk Elder Anli##58564
		turnin Needle Me Not##31705 |goto 57.6,44.9
		|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
		|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
		|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
	step
	label "revered"
		talk San Redscale##58414
		buy 1 Grand Commendation of the Order of the Cloud Serpent##93229 |n
		Use the Commendation of the Order of the Cloud Serpent you just purchased |goto The Jade Forest 56.6,44.4 |complete ZGV:GetReputation("Order of the Cloud Serpent").hasBonus |use Grand Commendation of the Order of the Cloud Serpent##93229
		only if rep("Order of the Cloud Serpent")>=Revered
	step
		talk Elder Anli##58564
		accept They Grow Like Weeds##30143 |goto 57.6,44.9
	step
		talk Instructor Windblade##58420
		Ask Instructor Windbalde how your serpent is doing
		Speak to Instructor Windblade |q 30143/1 |goto 58.6,43.7
	step
		talk Instructor Windblade##58420
		turnin They Grow Like Weeds##30143 |goto 58.6,43.7
		accept Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if haveq(30144)
	step
		Fly your Cloud Serpent through the rings made from clouds
		Fly through #6# Cloud Rings |q 30144/1
	step
		Click the Leave Vehicle button |outvehicle |c |goto 58.6,43.7
	step
		talk Instructor Windblade##58420
		turnin Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
		accept Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if haveq(30145)
	step
		Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide
		If you move too slowly or get too far away from the guide, the course will restart
		Finish the course |q 30145/1
	step
		talk Instructor Windblade##58420
		turnin Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
		accept Flight Training: In Due Course##30187 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if haveq(30187)
	step
		map The Jade Forest/0
		path loop on; follow strict; dist 40
		path	60.6,39.4	59.7,31.5	61.3,25.2
		path	66.3,36.0	66.2,42.4	66.8,51.4
		path	64.0,51.0	60.4,52.9	61.8,54.5
		path	58.7,46.8	58.4,46.4
		Follow this path and collect the checked flags hanging off of the Checkpoint balloons
		As you fly, gain speed by flying through cloud rings
		Pass 10 Checkpoints |q 30187/1
	step
		talk Instructor Windblade##58420
		turnin Flight Training: In Due Course##30187 |goto 58.6,43.7
		|next "end"
	step
	label "exalted"
		talk Elder Anli##58564
		accept Riding the Skies##31811 |goto 57.6,45.0
	step
		Watch the cinematic
		Join the Order of the Cloud Serpent |q 31811/1
	step
		talk Elder Anli##58564
		turnin Riding the Skies##31811 |goto 57.6,45.0
	step
		Proceeding to the next step |next "end" |only if default
		Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
	step
	label "exalted"
		talk Elder Anli##58564
		accept Riding the Skies##31810 |goto 57.7,44.9
	step
		talk Elder Anli##58564
		turnin Riding the Skies##31810 |goto 57.7,44.9
	step
	label "end"
		This the end of our daily guide
		Click here to go back to the beginning |confirm |next "start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Shado-Pan Dailies Run",{
	meta={goldtype="daily",levelreq=25,gold=65,time=5,icon="Interface\\ICONS\\Achievement_Faction_ShadoPan"},
	description="\nThis guide will take you through the Shado-Pan dailies",
	},[[
	step
	label "shado_dailies"
		Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.5,70.6
		Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto 49.0,70.5 |next "bearheart"
		Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto 49.0,71.3 |next "ling"
	step
		talk Master Snowdrift##63009
		accept The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
		only if not completedq(31127)
		only if rep('Shado-Pan')>=Honored
	step
		talk Master Snowdrift##63009
		accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.4,70.6
		only if rep('Shado-Pan')>=Revered
	step
		talk Lao-Chin the Iron Belly##62978
		I'm here to challenge you! |q 31128/1 |goto 49.3,72.0
		only if haveq(31128)
	step
		talk Lao-Chin the Iron Belly##63135
		Tell him: _"All right, let's do this!"_
		Defeat Lao-Chin the Iron Belly |q 31128/2 |goto 50.6,67.8
		only if haveq(31128)
	step
		talk Master Snowdrift##63009
		turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.6,70.5
		only if haveq(31128)
	step
		talk Chao the Voice##62550
		Tell her you're here to challenge her! |q 31127/1 |goto 49.7,70.5
		only if haveq(31127)
	step
		talk Chao the Voice##63125
		Let's do this.
		Defeat Chao the Voice |q 31127/2 |goto 50.1,68.3
		only if haveq(31127)
	step
		talk Master Snowdrift##63009
		turnin The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
		only if haveq(31127)
	step
		talk Master Snowdrift##63009
		|tip You will only be able to accept 4 of the following dailies.
		accept Assault Fire Camp Gai-Cho##31113 |goto 49.4,70.6 |or 4
		accept Assault Deadtalker's Plateau##31114 |goto 49.4,70.6 |or 4
		accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto 49.4,70.6 |or 4
		accept Spirit Dust##31116 |goto 49.4,70.6 |or 4
		accept The Deadtalker Cipher##31118 |goto 49.4,70.6 |or 4
	step
		Talk to Chao the Voice or Protector Yi and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		|tip Yi patrols so you may need to search for him.
		talk Chao the Voice##62550 |goto 49.7,70.5
		talk Protector Yi##62546 |goto 49.3,71.3
		confirm
		only if not completedq(31128)
	step
		Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		|tip Yi patrols so you may need to search for him.
		talk Chao the Voice##62550 |goto 49.7,70.5
		talk Protector Yi##62546 |goto 49.3,71.3
		talk Lao-Chin the Iron Belly##62978 |goto 49.3,71.9
		confirm
		only if completedq(31128)
	step
		kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if haveq(31113)
		Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto 63.4,43.3 |only if haveq(31113)
		click Highly Explosive Yaungol Oil Barrel##212877 |only if haveq(31119)
		collect Highly Explosive Yaungol Oil##84762 |n |goto 63.4,43.3
		|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if haveq(31119)
	step
		Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
		kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
		Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto 60.2,48.6
		If you run out of oil, you can find more around this area |goto 63.4,43.3
		only if haveq(31119)
	stickystart "spiritremains"
	step
		kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
		collect Ciphered Scroll##84759 |q 31118/1  |goto 51.1,51.8
		only if haveq(31118)
	step
	label "spiritremains"
		kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto 51.1,51.8 |only if haveq(31114)
		kill Deadtalker Crusher##62844 |q 31114/2 |goto 51.1,51.8
		|tip He is elite but with your companion you should be able to defeat him. |only if haveq(31114)
		kill Defiled Spirit##62679 |only if haveq(31116)
		collect Ancient Spirit Dust##84727 |n |only if haveq(31116)
		click Defiled Yaungol Remains##212779 |only if haveq(31116)
		Return 8 Spirits to Their Remains |q 31116/1 |goto 51.1,51.8 |only if haveq(31116)
	step
		Next to you will either be Chao the Voice or Protector Yi:
		Talk to Chao the Voice
		Talk to Protector Yi
		turnin Assault Fire Camp Gai-Cho##31113
		turnin Assault Deadtalker's Plateau##31114
		turnin The Enemy of My Enemy... Is Still My Enemy!##31119
		turnin Spirit Dust##31116
		turnin The Deadtalker Cipher##31118
		only if not completedq(31128)
	step
		Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
		Talk to Chao the Voice
		Talk to Protector Yi
		Talk to Lao-Chin the Iron Belly
		turnin Assault Fire Camp Gai-Cho##31113
		turnin Assault Deadtalker's Plateau##31114
		turnin The Enemy of My Enemy... Is Still My Enemy!##31119
		turnin Spirit Dust##31116
		turnin The Deadtalker Cipher##31118
		only if completedq(31128)
	step
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Uruk!##31117 |or
		accept Cheng Bo!##31120 |or
	step
		kill Uruk##62613 |q 31117/1 |goto 50.4,48.9
	step
		kill Cheng Bo##62554 |q 31120/1 |goto 60.7,42.1
	step
		talk Master Snowdrift##63009
		turnin Uruk!##31117 |goto 49.6,70.5 |or
		turnin Cheng Bo!##31120 |goto 49.6,70.5 |or
		|next "end"
	///New questgiver today?
	step
	label "bearheart"
		talk Ban Bearheart##62304
		accept The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
		only if not completedq(31038)
		only if rep('Shado-Pan')>=Honored
	step
		talk Ban Bearheart##62304
		accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
		only if rep('Shado-Pan')>=Revered
	step
		talk Snow Blossom##62380
		Ask her to meet in the Challenger's Ring. |q 31038/1 |goto 48.9,70.1
		only if haveq(31038)
	step
		talk Snow Blossom##62834
		I challenge you!
		Defeat Snow Blossom |q 31038/2 |goto 50.2,67.9
		only if haveq(31038)
	step
		talk Ban Bearheart##62304
		turnin The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
		only if haveq(31038)
	step
		talk Yalia Sagewhisper##62303
		Ask her to meet you in the Challenger's Ring |q 31104/1 |goto 48.9,70.0
		only if haveq(31104)
	step
		talk Yalia Sagewhisper##62850
		I challenge you!
		Defeat Yalia Sagewhisper |q 31104/2 |goto 50.4,67.7
		only if haveq(31104)
	step
		talk Ban Bearheart##62304
		turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
		only if haveq(31104)
	step
		talk Ban Bearheart##62304
		accept Born Free##31047 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31105 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31106 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31039 |goto 49.0,70.4 |or 4
		accept Bronze Claws##31044 |goto 49.0,70.4 |or 4
		accept Illusions Of The Past##31045 |goto 49.0,70.4 |or 4
		accept Grave Consequences##31048 |goto 49.0,70.4 |or 4
		accept Dark Arts##31043 |goto 49.0,70.4 |or 4
		accept Onyx Hearts##31042 |goto 49.0,70.4 |or 4
		accept Spiteful Sprites##31040 |goto 49.0,70.4 |or 4
		accept Egg Rescue!##31041 |goto 49.0,70.4 |or 4
		accept Little Hatchlings##31046 |goto 49.0,70.4 |or 4
	step
		Talk to Snow Blossom or Fei Li and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Snow Blossom##62380 |goto 48.9,70.1
		talk Fei Li##62354 |goto 48.8,70.2
		confirm
		only if not completedq(31104)
	step
		Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Snow Blossom##62380 |goto 48.9,70.1
		talk Fei Li##62354 |goto 48.8,70.2
		talk Yalia Sagewhisper##62303 |goto 48.8,70.0
		confirm
		only if completedq(31104)
	step
		talk Moshu the Arcane##62810
		accept Through the Portal##31110 |goto 28.8,22.4
		only if not completedq(31110)
	step
		clicknpc Ball and Chain##62539 |only if haveq(31047)
		Free 6 Wild Cloudriders |q 31047/1 |goto 32.8,25.1 |only if haveq(31047)
		click Shan'ze Cage##215573 |goto 32.8,25.1 |only if haveq(31046)
		Free 20 Cloudrider Hatchlings. |q 31046/1 |goto 32.8,25.1 |only if haveq(31046)
		click Shiny Egg##214481 |only if haveq(31041)
		collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto 32.8,25.1 |only if haveq(31041)
		only if haveq(31041) or haveq(31046) or haveq(31047)
	stickystart "bronzeclaw"
	stickystart "darkwoodscharmer"
	stickystart "arcanepowder"
	step
		kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto 24.4,15.2 |only if haveq(31045)
		click Shan'ze Tablet##212319 |only if haveq(31043)
		collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto 24.4,15.2 |only if haveq(31043)
		click Mogu Burial Urn##212324 |only if haveq(31048)
		kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto 24.4,15.2 |only if haveq(31048)
		kill Onyx Stormclaw##62448 |only if haveq(31042)
		collect 4 Onyx Heart##83138 |q 31042/1 |goto 24.4,15.2 |only if haveq(31042)
	step
	label "bronzeclaw"
		kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if haveq(31105) or haveq(31106) or haveq (31039)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto 28.5,18.5 |only if haveq(31105)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto 28.5,18.5 |only if haveq(31106)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto 28.5,18.5 |only if haveq(31039)
		kill Bronze Quilen##62266+ |only if haveq(31044)
		collect 20 Bronze Claw##83153+ |q 31044/1 |goto 28.5,18.5 |only if haveq(31044)
	step
	label "darkwoodscharmer"
		kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
		Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto 23.0,19.5
		only if haveq(31040)
	step
	label "arcanepowder"
		kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
		collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
		only if haveq(31110)
	step
		Next to you will either be Fei Li or Snow Blossom
		talk Fei Li##62354
		talk Snow Blossom##62380
		turnin The Mogu Menace##31105
		turnin The Mogu Menace##31106
		turnin The Mogu Menace##31039
		turnin Bronze Claws##31044
		turnin Illusions Of The Past##31045
		turnin Grave Consequences##31048
		turnin Dark Arts##31043
		turnin Onyx Hearts##31042
		turnin Born Free##31047
		turnin Spiteful Sprites##31040
		turnin Egg Rescue!##31041
		turnin Little Hatchlings##31046
		accept When The Dead Speak##31062 |or
		accept Riding the Storm##31061 |or
		accept In Sprite Of Everything##31049 |or
		only if not completedq(31104)
	step
		Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
		talk Fei Li##62354
		talk Snow Blossom##62380
		talk Yalia Sagewhisper##62303
		turnin The Mogu Menace##31105
		turnin The Mogu Menace##31106
		turnin The Mogu Menace##31039
		turnin Bronze Claws##31044
		turnin Illusions Of The Past##31045
		turnin Grave Consequences##31048
		turnin Dark Arts##31043
		turnin Onyx Hearts##31042
		turnin Born Free##31047
		turnin Spiteful Sprites##31040
		turnin Egg Rescue!##31041
		turnin Little Hatchlings##31046
		accept When The Dead Speak##31062 |or
		accept Riding the Storm##31061 |or
		accept In Sprite Of Everything##31049 |or
		only if completedq(31104)
	step
		Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
		kill Shan'ze Cloudrunner##62584
		Free 8 Shan'ze Cloudriders |q 31061/1 |goto 30.9,12.6
		only if haveq(31061)
	step
		Click the Leave Vehicle button |outvehicle
		only if haveq(31061)
	step
		_Enter_ the tunnel |goto 20.3,15.8 < 15
		kill Darkwoods Faerie##62522 |q 31049/1 |goto 19.5,13.8
		only if haveq(31049)
	step
		_Leave_ the tunnel |goto 20.3,15.8 < 15
		kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto 32.3,9.5
		|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
		only if haveq(31062)
	step
		talk Moshu the Arcane##62810
		turnin Through the Portal##31110 |goto 28.8,22.4
		only if haveq(31110)
	step
		talk Ban Bearheart##62304
		turnin When The Dead Speak##31062 |goto 49.0,70.4
		turnin Riding the Storm##31061 |goto 49.0,70.4
		turnin In Sprite Of Everything##31049 |goto 49.0,70.4
		|next "end"
	/// New Questigver today
	step
	label "ling"
		talk Ling of the Six Pools##63614
		accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
		only if not completedq(31220)
		only if rep('Shado-Pan')>=Honored
	step
		talk Ling of the Six Pools##63614
		accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
		only if rep('Shado-Pan')>=Revered
	step
		talk Tenwu of the Red Smoke##63616
		Ask him to meet you in the Challenger's Ring |q 31221/1 |goto 48.9,71.2
		only if haveq(31221)
	step
		talk Tenwu of the Red Smoke##64471
		Let's see if you can back that talk up
		Defeat Temwu of the Red Smoke |q 31221/2 |goto 50.6,68.5
		only if haveq(31221)
	step
		talk Ling of the Six Pools##63614
		turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
		only if haveq(31221)
	step
		talk Hawkmaster Nurong##63618
		Ask him to meet you in the Challenger's Ring |q 31220/1 |goto 49.0,70.9
		only if haveq(31220)
	step
		talk Hawkmaster Nurong##64470
		Let's go!
		Defeat Hawkmaster Nurong |q 31220/2 |goto 50.7,68.2
		only if haveq(31220)
	step
		talk Ling of the Six Pools##63614
		turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
		only if haveq(31220)
	step
		talk Ling of the Six Pools##63614
		accept Sra'vess Wetwork##31196 |goto 49.0,71.3 |or 4
		accept The Bigger They Come...##31197 |goto 49.0,71.3 |or 4
		accept A Morale Victory##31198 |goto 49.0,71.3 |or 4
		accept Destroy the Siege Weapons!##31199 |goto 49.0,71.3 |or 4
		accept Fumigation##31200 |goto 49.0,71.3 |or 4
		accept Friends, Not Food!##31201 |goto 49.0,71.3 |or 4
	step
		Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Hawkmaster Nurong##63618 |goto 48.7,71.2
		talk Taoshi##63617 |goto 48.7,71.0
		confirm
		only if not completedq(31221)
	step
		Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Hawkmaster Nurong##63618 |goto 48.7,71.2
		talk Taoshi##63617 |goto 48.7,71.0
		talk Tenwu of the Red Smoke##63616 |goto 48.9,71.2
		confirm
		only if completedq(31221)
	step
		talk Ku-Mo##65341
		accept Seeking Father##30933 |goto 48.7,71.1
		If this quest is unavailable, click here. |confirm
		only if not completedq(30933)
	stickystart "lessergreatermantid"
	step
		click Sra'thik Siege Weapon##213311
		Small Southern Siege Weapon destroyed |q 31199/2 |goto 27.5,54.6
		only if haveq(31199)
	step
		click Sra'thik Siege Weapon##213311
		Large Southern Siege Weapon destroyed |q 31199/1 |goto 25.8,53.8
		only if haveq(31199)
	step
		click Sra'thik Idol##213309
		Southern Idol destroyed |q 31198/1 |goto 23.5,55.5
		only if haveq(31198)
	step
		click Sra'thik Idol##213309
		Central Idol destroyed |q 31198/3 |goto 21.5,49.2
		only if haveq(31198)
	step
		click Sra'thik Siege Weapon##213311
		Large Northern Siege Weapon destroyed |q 31199/3 |goto 27.2,41.2
		only if haveq(31199)
	step
		click Sra'thik Siege Weapon##213311
		Small Northern Siege Weapon destroyed |q 31199/4 |goto 26.2,39.8
		only if haveq(31199)
	step
		click Sra'thik Idol##213309
		Eastern Idol destroyed |q 31198/4 |goto 27.8,41.9
		only if haveq(31198)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Egg Chamber bombed |q 31200/3 |goto 23.6,44.7
		only if haveq(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Torture Cell bombed |q 31200/4 |goto 22.0,41.6
		only if haveq(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Slaughtering Pit bombed |q 31200/5 |goto 21.2,43.2
		only if haveq(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Amber Vault bombed |q 31200/1 |goto 21.0,45.9
		only if haveq(31200)
	step
		click Sra'thik Idol##213309
		Western Idol destroyed |q 31198/2 |goto 16.2,45.8
		only if haveq(31198)
	step
		talk Shado-Pan Trainee##64459
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto 17.6,58.0
		only if haveq(31201)
	step
		talk Shado-Pan Trainee##64460
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto 17.4,57.0
		only if haveq(31201)
	step
		talk Sentinel Ku-Yao##61694
		Tell him his son has been looking for him
		Search for Sentinel Ku-Yao. |q 30933/1 |goto 17.4,57.0
		only if haveq(30933)
	step
		talk Shado-Pan Trainee##64461
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto 18.0,53.5
		only if haveq(31201)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Nutriment Cell bombed |q 31200/2 |goto 23.9,47.3
		only if haveq(31200)
	step
	label "lessergreatermantid"
		kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if haveq(31196)
		Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if haveq(31196)
		kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if haveq(31197)
		Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if haveq(31197)
	step
		Next to you is either Hawkmaster Nurong or Taoshi
		talk Taoshi##63617
		talk Hawkmaster Nurong##63618
		turnin Sra'vess Wetwork##31196
		turnin The Bigger They Come...##31197
		turnin A Morale Victory##31198
		turnin Destroy the Siege Weapons!##31199
		turnin Fumigation##31200
		turnin Friends, Not Food!##31201
		only if not completedq(31221)
	step
		Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
		Talk to Taoshi
		Talk to Hawkmaster Nurong
		Talk to Tenwu of the Red Smoke
		turnin Sra'vess Wetwork##31196
		turnin The Bigger They Come...##31197
		turnin A Morale Victory##31198
		turnin Destroy the Siege Weapons!##31199
		turnin Fumigation##31200
		turnin Friends, Not Food!##31201
		only if completedq(31221)
	step
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Target of Opportunity: Sra'thik Hivelord##31204 |or
		accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
	step
		kill Sra'thik Swarmlord##63693 |q 31203/1 |goto 16.4,40.9
		only if haveq(31203)
	step
		_Enter_ the building |goto 27.1,44.1 < 15
		kill Sra'thik Hivelord##63694 |q 31204/1 |goto 24.3,44.0
		only if haveq(31204)
	step
		_Leave_ the building |goto 27.1,44.1 < 15
		talk Ku-Mo##65341
		turnin Seeking Father##30933 |goto 48.7,71.1
		only if haveq(30933)
	step
		talk Ling of the Six Pools##63614
		turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto 49.0,71.4 |or
		turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto 49.0,71.4 |or
		|next "end"
	/// Exalted Reputation
	step
	label "end"
		talk Rushi the Fox##64595 |goto 48.8,70.6
		buy 1 Grand Commendation of the Shado-Pan##93220 |n
		Use the Commendation of the Shado-Pan you just purchased |complete ZGV:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
		only if rep("Shado-Pan")>=Revered
	step
		talk Master Snowdrift##63009
		accept Mogu Incursions##31266 |goto 49.4,70.6
		only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		kill Shan'ze Spymaster##63888 |q 31266/1 |goto 48.8,58.6
		only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		talk Master Snowdrift##63009
		turnin Mogu Incursions##31266 |goto 49.4,70.6
		accept Surprise Attack!##31277 |goto 49.4,70.6
		only if rep('Shado-Pan')==Exalted and not completedq(31277)
	step
		talk Ban Bearheart##63908
		Tell him "Let's go".
		Join the battle of Niuzao Temple |q 31277/1 |goto 42.6,63.9
		only if haveq(31277)
	step
		Wait for the dialogue to end and fight off the invasion.
		kill Shan'ze Brutalizer##63933+, Hei Feng##63920
		|tip When he casts Deep Breath step behind him.
		Defeat the Mogu Invasion |q 31277/2 |goto 41.3,60.0
		only if haveq(31277)
	step
		talk Ban Bearheart##62304
		turnin Surprise Attack!##31277 |goto 49.2,71.0
		only if haveq(31277)
	step
		You have reached the end of this daily guide
		Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Tillers Dailies Run",{
	startlevel=90,
	meta={goldtype="daily",levelreq=15,gold=49,time=5,icon="Interface\\ICONS\\Achievement_Faction_Tillers"},
	description="\nThis guide will take you through The Tillers dailies",
	},[[
		step
			#include "Tillers_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Golden Lotus Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=109,time=11,icon="Interface\\ICONS\\Achievement_Faction_GoldenLotus"},
	description="\nThis guide will take you through The Golden Lotus dailies",
	},[[
	step
		Routing to proper section |next "prequests" |only if not completedq(31511)
		Routing to proper section |next "dailies" |only if completedq(31511)
	step
	label "prequests"
		talk Wanderer Chu##64521
		accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.0,94.2
	step
		talk Sunwalker Dezco##64542
		turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.7,43.0
		accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.7,43.0
	step
		Talk to Xuen |q 31395/1
		kill Spirit of Violence##64656
		Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.9,42.8
		kill Spirit of Anger##64684
		Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.9,42.8
		kill Spirit of Hatred##64742
		Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.9,42.8
	step
		talk Sunwalker Dezco##64542
		turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.7,43.0
		accept A Witness to History##31511 |goto Kun-Lai Summit 68.7,43.0
	step
		talk Sunwalker Dezco##64853
		Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.0,91.4
	step
		talk Madam Vee Luo##62996
		accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.3,48.9
	step
		talk Sunwalker Dezco##64853
		Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.1,91.6
	step
		talk Madam Vee Luo##62996
		turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.2,49.0
	step
	label "dailies"
		talk Kun Autumnlight##58920
		accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
		accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
		noquest
	step
		talk Anji Autumnlight##58919
		accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
		accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
		noquest
	step
		talk Hai-Me Heavyhands##58962
		|tip He walks around the Trainees in this area.
		accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
	step
		talk Yumi Goldenpaw##58743
		accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.6
		accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.6
		noquest
	step
		talk Kelari Featherfoot##58704
		accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
	step
		talk Kelari Featherfoot##58704
		Tell him: _"Let's roll."_ |q 30261/1 |goto Vale of Eternal Blossoms/0 18.1,63.5
		only if haveq(30261)
	step
		Hold down your right mouse button to help you maneuver through the course.
		|tip Grab as many speed boosts as you can to make it go quicker.
		Complete the Serpent's Spine Roll Course. |q 30261/2
		only if haveq(30261)
	step
		talk Kelari Featherfoot##58704
		turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
		only if haveq(30261)
	step
		kill Shado-Pan Trainee##58992+
		Defeat 20 Shado-Pan Trainees. |q 30306/1 |goto Vale of Eternal Blossoms 19.7,74.2
		only if haveq(30306)
	step
		Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
		Live through the Survival Ring for 90 seconds |q 30242/1 |goto Vale of Eternal Blossoms 19.2,67.5
		only if haveq(30242)
	step
		Stay within the circle and avoid getting hit by the fireworks.
		Live through the Survival Ring for 90 seconds |q 30240/1 |goto 19.2,67.5
		only if haveq(30240)
	step
		clicknpc Setting Sun Turret##64336 |goto Vale of Eternal Blossoms 5.4,72.3
		Mount a turret |invehicle |c
		|tip It's on the upper level of the tower here.
		only if haveq(30266)
	step
		kill 30 Krik'thik Swarmer##63973+ |q 30266/1
		only if haveq(30266)
	step
		Click the Leave Vehicle button |outvehicle
		only if haveq(30266)
	step
		clicknpc Hot Oil Cauldron##64369
		Use the abilities on your hotbar to kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.9,51.7
		|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch.
	step
		Traverse the following rooms by only stepping on the _green_ or _red_ tiles, other tiles will harm you. The safe tile changes every day but will be one of the two. |goto Vale of Eternal Blossoms 22.4,26.9
		confirm
		only if haveq(30280) or haveq(30277)
	step
		kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/1 53.9,68.3
		|tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
		only if haveq(30280)
	step
		click Deactivate Final Spirit Wall##214477
		Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 42.1,27.2
		only if haveq(30277)
	step
		click Ancient Guo-Lai Artifact##214394
		collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto 49.4,30.6
		only if haveq(30277)
	step
		talk Yumi Goldenpaw##58743
		turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.5
		turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.5
	step
		talk Hai-Me Heavyhands##58962
		|tip He walks around the Trainees in this area.
		turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
	step
		talk Anji Autumnlight##58919
		turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
		turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
	step
		talk Kun Autumnlight##58920
		turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
		turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
	step
	label "end"
		You have reached the end of the guide for today
		Click here to go back to the beginning of the dailies |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Klaxxi Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=68,time=5,icon="Interface\\ICONS\\Achievement_Faction_Klaxxi"},
	description="\nThis guide will take you through The Klaxxi dailies",
	},[[
	step
	label "klaxxi start"
		talk Kil'ruk the Wind-Reaver##62538
		accept Dreadspinner Extermination##31231 |goto Dread Wastes 55.0,35.9 |or 2
		accept Nope Nope Nope##31235 |goto Dread Wastes 55.0,35.9 |or 2
		accept Culling the Swarm##31109 |goto Dread Wastes 55.0,35.9 |or 2
		accept Mistblade Destruction##31267 |goto Dread Wastes 55.0,35.9 |or 2
		accept Eradicating the Zan'thik##31111 |goto Dread Wastes 55.0,35.9 |or 2
		accept Vess-Guard Duty##31505 |goto Dread Wastes 55.0,35.9 |or 2
		noquest
	step
		talk Korven the Prime##62180
		accept An Ancient Empire##31232 |goto 54.3,36.1 |or 2
		accept Sap Tapping##31233 |goto 54.3,36.1 |or 2
		accept Sampling the Empire's Finest##31496 |goto 54.3,36.1 |or 2
		accept The Fight Against Fear##31270 |goto 54.3,36.1 |or 2
		accept The Scale-Lord##31269 |goto 54.3,36.1 |or 2
		accept Meltdown##31507 |goto 54.3,36.1 |or 2
		noquest
	step
		talk Rik'kal the Dissector##65253
		accept Bad Genes##31271 |goto 54.3,35.9 |or 2
		accept Wing Clip##31502 |goto 54.3,35.9 |or 2
		accept Shortcut to Ruin##31503 |goto 54.3,35.9 |or 2
		accept Putting An Eye Out##31234 |goto 54.3,35.9 |or 2
		accept Specimen Request##31508 |goto 54.3,35.9 |or 2
		accept Fear Takes Root##31509 |goto 54.3,35.9 |or 2
		noquest
		only if completedq(31606)
	step
		talk Kaz'tik the Manipulator##63758
		accept Brain Food##31238 |goto 54.3,35.8 |or 2
		accept Sonic Disruption##31487 |goto 54.3,35.8 |or 2
		accept Free From Her Clutches##31494 |goto 54.3,35.8 |or 2
		accept A Little Brain Work##31268 |goto 54.3,35.8 |or 2
		accept Kunchong Treats##31024 |goto 54.3,35.8  |or 2
		accept Rampage Against the Machine##31808 |goto 54.3,35.8 |or 2
		accept Shackles of Manipulation##31506 |goto 54.3,35.8 |or 2
		noquest
	step
		talk Xaril the Poisoned Mind##62151
		accept Dark Skies##31216 |goto 54.9,36.2
		noquest
		only if completedq(31211)
	step
		talk Hisek the Swarmkeeper##63785
		accept Debugging the Terrace##31237 |goto 54.8,36.2 |or
		accept Quiet Now##31510 |goto 54.8,36.2 |or
		accept Infection##31272 |goto 54.8,36.2 |or
		accept Ordnance Disposal##31504 |goto 54.8,36.2 |or
		noquest
		only if completedq(31439)
	step
		talk Malik the Unscathed##62774
		accept The Empress' Gambit##31959 |goto 55.0,35.4
		only if rep("The Klaxxi")>=Exalted
	//terrace of gurthan
	step
		talk Kil'ruk the Wind-Reaver##62538
		Tell him _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto 55.1,35.9
		only if haveq(31237) or haveq(31231)
	step
		Kill creatures until you get the buff:
		Pheremone Tracking |havebuff 132284 --Ability_Rogue_BloodyEye
		Locate and kill Eye's of the Empress
		|tip Start looking for red mist on the groud first.
		kill 6 Eye of the Empress##63783+ |q 31237/1 |goto 67.9,24.3
		only if haveq(31237)
	step
		In order to do the 'hidden' quest for this area, you must have at least one other person to help you
		confirm |future |q 31677
		only if haveq(31237) or haveq(31231)
	step
		Around this location you should be able to see a _green rune_ and a _red rune_
		One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_
		This will cause a level 90 Elite to spawn
		This daily is active for everyone in the area, so you should find some help easily
		kill Warlord Gurthan##65502
		collect Ashes of Warlord Gurthan##88715 |future |q 31677 |goto 66.2,31.8
		only if haveq(31237)
	step
		Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
		accept The Warlord's Ashes##31677
		only if haveq(31237) or haveq(31677)
	step
		talk Xaril the Poisoned Mind##62151
		Tell him _"I am ready to fly, Xaril."_ |q 31216/1 |goto 54.9,36.2
		Ride Xaril the Poisoned Mind |invehicle |only if haveq(31216)
		only if haveq(31216)
	step
		Use the _Venom Bomb_ to kill the small enemies
		Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies
		kill 200 Mantid |q 31216/2
		kill 3 Kunchong |q 31216/3
		only if haveq(31216)
	step
		Click the Return to Klaxxi'vess button on your action bar |outvehicle
		only if haveq(31216)
	step
		talk Kil'ruk the Wind-Reaver##62538
		Ask him to fly you to the Clutches of Shek'zeer |invehicle |goto 55.0,35.9
		only if haveq(31109)
	step
		Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 38.3,30.3
		|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
		only if haveq(31109)
	step
		Enter this building |goto 37.0,28.1 < 10
		click Central Feeder##215762
		Sample the Central Feeder |q 31496/1 |goto 37.4,29.3
		only if haveq(31496)
	step
		Enter this building. |goto 39.3,29.3 < 10
		click Northeast Feeder##215700
		Sample the Northeast Feeder |q 31496/4 |goto 39.1,30.5
		only if haveq(31496)
	step
		kill Vess-Guard Na'kal##64890 |q 31503/1 |goto 39.3,30.9
		only if haveq(31503)
	step
		Enter this building |goto 38.3,32.0 < 10 |walk
		click East Feeder##215761
		Sample the East Feeder |q 31496/2 |goto 37.9,33.1
		only if haveq(31496)
	step
		Enter this building |goto 36.3,32.3 < 10 |walk
		click North Feeder##215703
		Sample the North Feeder |q 31496/3 |goto 37.0,32.8
		only if haveq(31496)
	step
		kill Shek'zeer Needler##64714+
		collect 24 Needler Wings##87401 |q 31502/1 |goto 35.2,31.3
		only if haveq(31502)
	step
		kill Greatback Mushan##62029
		collect 6 Mushan Tongue##85665 |q 31238/1 |goto 66.0,19.3
		You can find more Mushan around here |goto 56.9,23.4
		only if haveq(31238)
	step
		Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if haveq(31235)
		Destroy 20 Dreadspinner Eggs |q 31235/1 |only if haveq(31235) |goto 73.2,22.5
		kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if haveq(31231) |goto 73.2,22.5
		only if haveq(31235) or haveq(31231)
	step
		click Gurthani Tablet##213314
		collect 8 Gurthani Tablet##85634 |q 31232/1 |goto 68.1,30.0
		only if haveq(31232)
	step
		kill Mire Beast##63731+
		collect 1 Pristine Mire Beast Eye## |q 31234/1 |goto 67.7,37.1
		only if haveq(31234)
	step
		clicknpc Amber Tap##63740
		|tip These are located on trees. Look for Sapfly packs to find these easier.
		click Amber Pot##213319
		collect 6 Amber Sap##85664 |q 31233/1 |goto 66.6,43.8
		only if haveq(31233)
	step
		click Pheromone Mine##214964
		Disable 8 Pheromone Mines |q 31504/1 |goto 42.0,33.7
		You can find more mines here |goto 48.1,31.4
		only if haveq(31504)
	step
		Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if haveq(31487)
		kill 4 Dread Kunchong##64717 |q 31487/1 |only if haveq(31487) |goto 44.9,35.6
		kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if haveq(31487) |goto 44.9,35.6
		click Kunchong Cage##214292 |only if haveq(31494) |goto 44.9,35.6
		Free 8 Kunchong Hatchlings |q 31494/1 |only if haveq(31494) |goto 44.9,35.6
		only if haveq(31487) or haveq(31494)
	step
		kill Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
		Kill 40 Shek'zeer Mantid |q 31109/1 |goto 44.4,43.0
		|tip It's by far fastest to kill the tiny Shek'zeer Swarmborn by the dozen.
		only if haveq(31109)
	step
		kill Karanosh##64724 |tip She wanders around this area, so you may have to search for her.
		collect Enormous Kunchong Mandibles##87878
		Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
		accept The Matriarch's Maw##31599 |goto 41.4,33.2
		only if haveq(31109)
	step
		kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto 58.6,51.1 |only if haveq(31270)
		kill Chillwater Turtle##62160+ |only if haveq(31024)
		collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto 58.6,51.1 |only if haveq(31024)
		only if haveq(31270) or haveq(31024)
	stickystart "amberencrusted"
	stickystart "infectedwildlife"
	step
		kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto 62.0,65.8
		kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto 62.0,65.8
		only if haveq(31271)
	step
	label "amberencrusted"
		Use the Sonic Emitter in your bags on Ik'thik Amberstingers |use Sonic Emitter##85884
		kill Ik'thik Amberstinger##63728+
		collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto 61.4,70.3
		only if haveq(31268)
	step
	label "infectedwildlife"
		kill Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+
		|tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
		kill 6 Infected wildlife |q 31272/1 |goto 60.7,67.7
		only if haveq(31272)
	step
		Enter the tunnel here |goto 66.8,63.8 < 10 |walk
		kill Mistblade Scale-Lord##63179 |q 31269/1 |goto 66.5,66.0
		only if haveq(31269)
	step
		Leave the tunnel |goto 66.8,63.8 < 10 |only if haveq(31269) |walk
		kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto 67.2,59.3
		only if haveq(31267)
	step
		talk Kil'ruk the Wind-Reaver##62538
		Ask him to fly you to Zan'vess |invehicle |goto 55.1,35.9
		only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
	step
		Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 31,70
		only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
	step
		As you complete quests in this area:
		clicknpc Dreadspore Bulbs##69093
		Destroy 15 Dreadspore Bulbs |q 31509/1 |n
		confirm
		only if haveq(31509)
	step
		kill Kypari Crawler##65231+ |only if haveq(31508)
		collect 6 Kyparite Shards##87874 |q 31508/1 |goto 31.5,69.6 |only if haveq(31508)
		kill Thought-Bound Miner##64970+ |only if haveq(31506)
		collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto 31.5,69.6 |only if haveq(31506)
		kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto 31.5,69.6 |only if haveq(31111)
		kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto 31.5,69.6 |only if haveq(31111)
		only if haveq(31506) or haveq(31111) or haveq(31508)
	step
		kill Kypa'rak##65229
		collect 1 Massive Kyparite Core##87871 |n
		Click the Massive Kyparite Core in your bags |use Massive Kyparite Core##87871
		accept Kypa'rak's Core##31598 |goto 33.4,61.0
		only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
	step
		kill Vess-Guard Vik'az##64979+ |q 31505/1 |goto 29.1,74.7
		only if haveq(31505)
	step
		kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto 23.0,77.3
		only if haveq(31507)
	step
		All around this area
		clicknpc Dreadspore Bulbs##69093
		Destroy 15 Dreadspore Bulbs |q 31509/1
		only if haveq(31509)
	step
		click Zan'thik Resonating Crystal##214455
		kill Adjunct Sek'ot##64995 |q 31510/1 |goto 24.2,86.2
		only if haveq(31510)
	step
		clicknpc Kovok##63765
		Locate Kovok |q 31808/1 |goto 50.8,41.3
		only if haveq(31808)
	step
		Use the abilities on your hotbar to complete your task.
		kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
		Kill 200 Mantid |q 31808/2
		only if haveq(31808)
	step
		talk Kil'ruk the Wind-Reaver##62538
		turnin Dreadspinner Extermination##31231 |goto 55.0,35.9
		turnin Nope Nope Nope##31235 |goto 55.0,35.9
		turnin Culling the Swarm##31109 |goto 55.0,35.9
		turnin Mistblade Destruction##31267 |goto 55.0,35.9
		turnin Eradicating the Zan'thik##31111 |goto 55.0,35.9
		turnin Vess-Guard Duty##31505 |goto 55.0,35.9
		turnin The Warlord's Ashes##31677 |goto 55.0,35.9
	step
		talk Xaril the Poisoned Mind##62151
		turnin Dark Skies##31216 |goto 54.9,36.2
	step
		talk Hisek the Swarmkeeper##63785
		turnin Debugging the Terrace##31237 |goto 54.8,36.2
		turnin Quiet Now##31510 |goto 54.8,36.2
		turnin Infection##31272 |goto 54.8,36.2
		turnin Ordnance Disposal##31504 |goto 54.8,36.2
	step
		talk Korven the Prime##62180
		turnin An Ancient Empire##31232 |goto 54.3,36.1
		turnin Sap Tapping##31233 |goto 54.3,36.1
		turnin Sampling the Empire's Finest##31496 |goto 54.3,36.1
		turnin The Fight Against Fear##31270 |goto 54.3,36.1
		turnin The Scale-Lord##31269 |goto 54.3,36.1
		turnin Meltdown##31507 |goto 54.3,36.1
	step
		talk Ambersmith Zikk##64599
		turnin Kypa'rak's Core##31598 |goto 55.0,35.4
		turnin The Matriarch's Maw##31599 |goto 55.0,35.4
		only if haveq(31598) or haveq(31599)
	step
		talk Rik'kal the Dissector##65253
		turnin Bad Genes##31271 |goto 54.3,35.9
		turnin Wing Clip##31502 |goto 54.3,35.9
		turnin Shortcut to Ruin##31503 |goto 54.3,35.9
		turnin Putting An Eye Out##31234 |goto 54.3,35.9
		turnin Specimen Request##31508 |goto 54.3,35.9
		turnin Fear Takes Root##31509 |goto 54.3,35.9
	step
		talk Kaz'tik the Manipulator##63758
		turnin Brain Food##31238 |goto 54.3,35.8
		turnin Sonic Disruption##31487 |goto 54.3,35.8
		turnin Free From Her Clutches##31494 |goto 54.3,35.8
		turnin A Little Brain Work##31268 |goto 54.3,35.8
		turnin Kunchong Treats##31024 |goto 54.3,35.8
		turnin Rampage Against the Machine##31808 |goto 54.3,35.8
		turnin Shackles of Manipulation##31506 |goto 54.3,35.8
		|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
		|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
		|next "end" |only if default
	step
		talk Ambersmith Zikk##64599
		buy 1 Grand Commendation of the Klaxxi##92522 |n
		Use the Commendation of the Klaxxi you just purchased. |complete ZGV:GetReputation("The Klaxxi").hasBonus |use Grand Commendation of the Klaxxi##92522 |goto 55.0,35.6
		only if rep("The Klaxxi")>=Revered
	step
		talk Kil'ruk the Wind-Reaver##62538
		accept Beneath The Heart Of Fear##31018 |goto 55.1,35.9
	step
		Enter this tunnel |goto 29.0,42.4 < 10 |walk
		kill Adjunct Ek'vem##62073+ |q 31018/1 |goto 30.7,40.3
	step
		kill Adjunct Ikkess##62074+ |q 31018/2 |goto 33.4,40.2
	step
		kill Adjunct Suruz##62075+ |q 31018/3 |goto 33.4,44.3
	step
		kill Adjunct Tzikzi##62076+ |q 31018/4 |goto 30.7,44.4
	step
		click Ancient Amber Chunk##212980
		Wake Xaril the Poisoned Mind |q 31018/5 |goto 31.9,42.5
	step
		_Exit_ the tunnel here |goto 29.0,42.4 < 10 |walk
		talk Xaril the Poisoned Mind##62151
		turnin Beneath The Heart Of Fear##31018 |goto 28.6,42.1
		accept Venomous Intent##31208 |goto 28.6,42.1
		accept Dark Wings, Dark Things##31209 |goto 28.6,42.1
		accept A Shade of Dread##31210 |goto 28.6,42.1
	step
		kill Ruby Venomtail##63588+, Dread Scarab##63587+
		collect 150 Scarab Wing##85572 |q 31209/1 |goto 24.7,41.8
		collect 8 Venomous Stinger##85571 |q 31208/1 |goto 24.7,41.8
		click Dreadshade##213267
		collect 8 Dreadshade##85573 |q 31210/1 |goto 24.7,41.8
		You can find more here |goto 26.4,36.4
		As well as here |goto 26.2,30.8
	step
		talk Xaril the Poisoned Mind##62151
		turnin Venomous Intent##31208 |goto 28.6,42.1
		turnin Dark Wings, Dark Things##31209 |goto 28.6,42.1
		turnin A Shade of Dread##31210 |goto 28.6,42.1
	step
		talk Xaril the Poisoned Mind##62151
		accept The Poisoned Mind##31211 |goto 28.6,42.1
	step
		talk Xaril the Poisoned Mind##62151
		Tell him _"I am ready to fly, Xaril."_ |invehicle |q 31211 |goto 28.6,42.1
	step
		Use the _Venom Syrum_ to kill the small enemies
		Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies
		Speak to Xaril the Poisoned Mind |q 31211/1
		kill 200 Mantid |q 31211/2
		kill 3 Kunchong |q 31211/3
		kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
	step
		talk Xaril the Poisoned Mind##62151
		turnin The Poisoned Mind##31211 |goto 54.9,36.2
	step
		talk Kor'ik##64815
		accept Dropping Our Signal##31439 |goto 54.8,34.1
	step
		Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
		Awaken Hisek the Swarmkeeper |q 31439/1 |goto 56.3,58.2
	step
		talk Hisek the Swarmkeeper##64672
		turnin Dropping Our Signal##31439 |goto 56.3,58.2
		accept Corruption Runs Deep##31441 |goto 56.3,58.2
	step
		kill Kor'ik##64583+ |q 31441/1 |goto 56.2,57.6
	step
		talk Hisek the Swarmkeeper##64705
		turnin Corruption Runs Deep##31441 |goto 56.3,57.6
		accept Damage Control##31458 |goto 56.3,57.6
		accept Extracting Answers##31465 |goto 56.3,57.6
	stickystart "venomcoatdmandible"
	step
		click Kypari Ik Beacon##214281
		Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto 55.6,47.1
	step
	label "venomcoatdmandible"
		kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto 50.5,45.8
		kill Ik'thik Swarmborn##64831+
		collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto 50.5,45.8
	step
		talk Hisek the Swarmkeeper##63785
		turnin Damage Control##31458 |goto 54.8,36.2
		turnin Extracting Answers##31465 |goto 54.8,36.2
		|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
		|next "end" |only if default
	step
	label "exalted"
		talk Malik the Unscathed##66776
		Report to Malik the Unscathed |q 31959/1 |goto 40.4,34.4
	step
		Click the Auto complete quest box that appears below your minimap:
		turnin The Empress' Gambit##31959
		accept The Wrath of Shek'zeer##31609
	step
		While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
		confirm
	stickystart "mantidsubs"
	step
		kill Akkolon##66783 |q 31609/1 |goto 44.6,35.2
		|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
	step
		kill Shox'tik##66784 |q 31609/2 |goto 41.6,39.8
		|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
	step
		kill Manifestation of Terror##66785 |q 31609/3 |goto 43.8,29.6
		|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
	step
	label "mantidsubs"
		kill 25 Mantid Subjugates |q 31609/4 |goto 43.4,33.0
	step
		talk Kil'ruk the Wind-Reaver##62538
		turnin The Wrath of Shek'zeer##31609 |goto 55.0,35.9
		accept Shadow of the Empire##31612 |goto 55.0,35.9
	step
		Follow Kil'ruk the Wind-Rever into the chamber
		Walk with Kil'ruk |q 31612/1
	step
		Next to you:
		talk Kil'ruk the Wind-Reaver##66800
		turnin Shadow of the Empire##31612
		|next "end"
	step
	label "end"
		This is the end of this guide.
		Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Dominance Offensive Dailies Run",{
	meta={goldtype="daily",levelreq=15,gold=61,time=8,icon="Interface\\ICONS\\Achievement_General_HordeSlayer"},
	description="\nThis guide will take you through The Dominance Offensive dailies",
	},[[
			#include "Dominance_Offensive"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Sunreaver Onslaught Dailies Run",{
	meta={goldtype="daily",levelreq=32,gold=288,time=75,icon="Interface\\ICONS\\Achievement_Faction_SunreaverOnslaught"},
	description="\nThis guide will take you through the Sunreaver Onslaught Dailies.",
	},[[
		step
			#include "Sunreavers_dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Kalimdor Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=1,gold=238,time=45,icon="Interface\\ICONS\\PetJournalPortrait"},
	description="\nThis guide will take you through the Battle Pet Dailies in Kalimdor.",
	maps={"Northern Barrens","Thousand Needles","Felwood","Desolace","Southern Barrens","Winterspring","Feralas","Moonglade","Dustwallow Marsh","Stonetalon Mountains","Ashenvale","Durotar"},
	},[[
		step
			talk Zunta##66126
			accept Zunta##31818 |goto Durotar 43.86,28.86
		step
			talk Zunta##66126
			Tell him _"Let's fight!"_
			Defeat Zunta |q 31818/1 |goto Durotar 43.86,28.86
		step
			talk Zunta##66126
			turnin Zunta##31818 |goto Durotar 43.86,28.86
		step
			talk Dagra the Fierce##66135
			accept Dagra the Fierce##31819 |goto Northern Barrens 58.6,53.0
		step
			talk Dagra the Fierce##66135
			Tell her _"Let's fight!"_
			Defeat Dagra the Fierce |q 31819/1 |goto Northern Barrens 58.6,53.0
		step
			talk Dagra the Fierce##66135
			turnin Dagra the Fierce##31819 |goto Northern Barrens 58.6,53.0
		step
			talk Stone Cold Trixxy##66466
			accept Grand Master Trixxy##31909 |goto Winterspring 65.63,64.52
		step
			talk Stone Cold Trixxy##66466
			Tell her _"Let's rumble!"_
			She uses level 19 Flying, Beast and Dragonkin pets.
			Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.63,64.52
		step
			talk Stone Cold Trixxy##66466
			turnin Grand Master Trixxy##31909 |goto Winterspring 65.63,64.52
		step
			talk Elena Flutterfly##66412
			accept Elena Flutterfly##31908 |goto Moonglade 46.1,60.3
		step
			talk Elena Flutterfly##66412
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Elena if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Elena Flutterfly |q 31908/1 |goto Moonglade 46.1,60.3
		step
			talk Elena Flutterfly##66412
			turnin Elena Flutterfly##31908 |goto Moonglade 46.1,60.3
		step
			talk Zoltan##66442
			accept Zoltan##31907 |goto Felwood 40.0,56.6
		step
			talk Zoltan##66442
			Tell him _"Let's do it!"_
			|tip You will not be able to challenge Zoltan if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Zoltan |q 31907/1 |goto Felwood 40.0,56.6
		step
			talk Zoltan##66442
			turnin Zoltan##31907 |goto Felwood 40.0,56.6
		step
			talk Analynn##66136
			accept Analynn##31854 |goto Ashenvale 20.2,29.5
		step
			talk Analynn##66136
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Analynn if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Analynn |q 31854/1 |goto Ashenvale 20.2,29.5
		step
			talk Analynn##66136
			turnin Analynn##31854 |goto Ashenvale 20.2,29.5
		step
			talk Zonya the Sadist##66137
			accept Zonya the Sadist##31862 |goto Stonetalon Mountains 59.66,71.59
		step
			talk Zonya the Sadist##66137
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Zonya if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Zonya the Sadist |q 31862/1 |goto Stonetalon Mountains 59.66,71.59
		step
			talk Zonya the Sadist##66137
			turnin Zonya the Sadist##31862 |goto Stonetalon Mountains 59.66,71.59
		step
			talk Merda Stronghoof##66372
			accept Merda Stronghoof##31872 |goto Desolace 57.1,45.7
		step
			talk Merda Stronghoof##66372
			Tell her _"Let's fight!"_
			Defeat Merda Stronghoof |q 31872/1 |goto Desolace 57.1,45.7
		step
			talk Merda Stronghoof##66372
			turnin Merda Stronghoof##31872 |goto Desolace 57.1,45.7
		step
			talk Traitor Gluk##66352
			accept Traitor Gluk##31871 |goto Feralas 59.7,49.6
		step
			talk Traitor Gluk##66352
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Traitor Gluk if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Traitor Gluk |q 31871/1 |goto Feralas 59.7,49.6
		step
			talk Traitor Gluk##66352
			turnin Traitor Gluk##31871 |goto Feralas 59.7,49.6
		step
			talk Kela Grimtotem##66452
			accept Kela Grimtotem##31906 |goto Thousand Needles 31.9,33.0
		step
			talk Kela Grimtotem##66452
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Kela Grimtotem if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Kela Grimtotem |q 31906/1 |goto Thousand Needles 31.9,33.0
		step
			talk Kela Grimtotem##66452
			turnin Kela Grimtotem##31906 |goto Thousand Needles 31.9,33.0
		step
			talk Cassandra Kaboom##66422
			accept Cassandra Kaboom##31904 |goto Southern Barrens 39.6,79.1
		step
			talk Cassandra Kaboom##66422
			Tell her _"Let's fight!"_
			Defeat Cassandra Kaboom |q 31904/1 |goto Southern Barrens 39.6,79.1
		step
			talk Cassandra Kaboom##66422
			turnin Cassandra Kaboom##31904 |goto Southern Barrens 39.6,79.1
		step
			talk Grazzle the Great##66436
			accept Grazzle the Great##31905 |goto Dustwallow Marsh 53.9,74.8
		step
			talk Grazzle the Great##66436
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Grazzle the Great if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Grazzle the Great |q 31905/1 |goto Dustwallow Marsh 53.9,74.8
		step
			talk Grazzle the Great##66436
			turnin Grazzle the Great##31905 |goto Dustwallow Marsh 53.9,74.8
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Outland Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=10,gold=99,time=15,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31920)",
	description="\nThis guide will take you through the Battle Pet Dailies in Outland.",
	maps={"Zangarmarsh","Nagrand","Shadowmoon Valley","Hellfire Peninsula","Shattrath City"},
	},[[
		step
			talk Nicki Tinytech##66550
			accept Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		step
			talk Nicki Tinytech##66550
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.3,49.3
			|tip Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
		step
			talk Nicki Tinytech##66550
			turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		step
			talk Ras'an##66551
			accept Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		step
			talk Ras'an##66551
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.2,50.5
			|tip Ras'an has a Flying Pet, a Humanoid Pet, and a Magic Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
		step
			talk Ras'an##66551
			turnin Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		step
			talk Narrok##66552
			accept Narrok##31924 |goto Nagrand 61.0,49.4
		step
			talk Narrok##66552
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Narrok |q 31924/1 |goto Nagrand 61.0,49.4
			|tip Narrok has an Aquatic Pet, a Beast Pet, and a Critter Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
		step
			talk Narrok##66552
			turnin Narrok##31924 |goto Nagrand 61.0,49.4
		step
			talk Morulu The Elder##66553
			accept Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		step
			talk Morulu The Elder##66553
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.8,70.1
			|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
		step
			talk Morulu The Elder##66553
			turnin Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		step
			talk Bloodknight Antari##66557
			accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		step
			talk Bloodknight Antari##66557
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0
			|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
		step
			talk Bloodknight Antari##66557
			turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Northrend Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=10,gold=99,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31928)",
	description="\nThis guide will take you through the Battle Pet Dailies in Northrend.",
	maps={"Howling Fjord","Crystalsong Forest","Dragonblight","Zul'Drak","Icecrown"},
	},[[
		step
			talk Beegle Blastfuse##66635
			accept Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		step
			talk Beegle Blastfuse##66635
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Beegle Blastfuse |q 31931/1 |goto Howling Fjord 28.6,33.9
			|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets. Your pets should all be around level 25 before fighting Beegle.
		step
			talk Beegle Blastfuse##66635
			turnin Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		step
			talk Okrut Dragonwaste##66638
			accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		step
			talk Okrut Dragonwaste##66638
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Okrut Dragonwaste |q 31933/1 |goto Dragonblight 59.0,77.0
			|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
		step
			talk Okrut Dragonwaste##66638
			turnin Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		step
			talk Nearly Headless Jacob##66636
			accept Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		step
			talk Nearly Headless Jacob##66636
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.1,59.0
			|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25.
		step
			talk Nearly Headless Jacob##66636
			turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		step
			talk Major Payne##66675
			accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		step
			talk Major Payne##66675
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6
			|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
		step
			talk Major Payne##66675
			turnin Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		step
			talk Gutretch##66639
			accept Gutretch##31934 |goto Zul'Drak 13.2,66.8
		step
			talk Gutretch##66639
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.2,66.8
			|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25 for this fight.
		step
			talk Gutretch##66639
			turnin Gutretch##31934 |goto Zul'Drak 13.2,66.8
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Cataclysm Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=79,time=15,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31970)",
	description="\nThis guide will take you through the Battle Pet Dailies in the Cataclysm Expansion.",
	maps={"Uldum","Deepholm","Twilight Highlands","Mount Hyjal"},
	},[[
		step
			talk Brok##66819
			accept Brok##31972 |goto Mount Hyjal 61.4,32.7
		step
			talk Brok##66819
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Brok |q 31972/1 |goto Mount Hyjal 61.4,32.7
			|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		step
			talk Brok##66819
			turnin Brok##31972 |goto Mount Hyjal 61.4,32.7
		step
			talk Bordin Steadyfist##66815
			accept Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		step
			talk Bordin Steadyfist##66815
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Bordin Steadyfist |q 31973/1 |goto Deepholm 49.9,57.0
			|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
		step
			talk Bordin Steadyfist##66815
			turnin Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		step
			talk Goz Banefury##66822
			accept Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		step
			talk Goz Banefury##66822
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Goz Banefury |q 31974/1 |goto Twilight Highlands 56.6,56.8
			|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		step
			talk Goz Banefury##66822
			turnin Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		step
			talk Obalis##66824
			accept Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		step
			talk Obalis##66824
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0
			|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
		step
			talk Obalis##66824
			turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Pandaria Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=10,gold=139,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31970)",
	description="\nThis guide will take you through the Battle Pet Dailies in Pandaria.",
	maps={"The Jade Forest","Vale of Eternal Blossoms","Townlong Steppes","Valley of the Four Winds","Krasarang Wilds","Kun-Lai Summit","Dread Wastes"},
	},[[
		step
			talk Hyuna of the Shrines##66730
			accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		step
			talk Hyuna of the Shrines##66730
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
			|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
		step
			talk Hyuna of the Shrines##66730
			turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		step
			talk Aki the Chosen##66741
			accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		step
			talk Aki the Chosen##66741
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0
			|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
		step
			talk Aki the Chosen##66741
			turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		step
			talk Courageous Yon##66738
			accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		step
			talk Courageous Yon##66738
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8
			|tip Courageous Yon has a Flying Pet, and two Critter Pets. Use Beast type attacks on his Critters, and Magic type attacks on his Flying. Your pets should all be level 25.
			He can also be found around this area |goto 44.7,52.4
		step
			talk Courageous Yon##66738
			turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		step
			talk Seeker Zusshi##66918
			accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		step
			talk Seeker Zusshi##66918
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Seeker Zusshi |q 31991/5 |goto Townlong Steppes 36.3,52.2
			|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
		step
			talk Seeker Zusshi##66918
			turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		step
			talk Wastewalker Shu##66739
			accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		step
			talk Wastewalker Shu##66739
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
			|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		step
			talk Wastewalker Shu##66739
			turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		step
			talk Mo'ruk##66733
			accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		step
			talk Mo'ruk##66733
			Tell him _"Let's fight!"_
			|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9
			|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		step
			talk Mo'ruk##66733
			turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		step
			talk Farmer Nishi##66734
			accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		step
			talk Farmer Nishi##66734
			Tell her _"Let's fight!"_
			|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
			|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
		step
			talk Farmer Nishi##66734
			turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Pandaren Spirits Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=10,gold=79,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(32428)",
	description="\nThis guide will take you through the Pandaren Spirits Battle Pet Dailies.",
	maps={"Townlong Steppes","The Jade Forest","Kun-Lai Summit","Dread Wastes"},
	},[[
		step
			talk Whispering Pandaren Spirit##68464
			accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.8,36.0
		step
			talk Whispering Pandaren Spirit##68464
			Challenge him to a pet battle and defeat him. |q 32440/1 |goto The Jade Forest 28.8,36.0
		step
			talk Whispering Pandaren Spirit##68464
			turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.8,36.0
		step
			talk Thundering Pandaren Spirit##68465
			accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.0,93.9
		step
			talk Thundering Pandaren Spirit##68465
			Challenge him to a pet battle and defeat him. |q 32441/1 |goto Kun-Lai Summit/0 65.0,93.9
		step
			talk Thundering Pandaren Spirit##68465
			turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.0,93.9
		step
			talk Burning Pandaren Spirit##68463
			accept Burning Pandaren Spirit##32434	|goto Townlong Steppes 57.0,42.2
		step
			talk Burning Pandaren Spirit##68463
			Challenge him to a pet battle and defeat him. |q 32434/1 |goto Townlong Steppes 57.0,42.2
		step
			talk Burning Pandaren Spirit##68463
			turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.0,42.2
		step
			talk Flowing Pandaren Spirit##68462
			accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.2,87.6
		step
			talk Flowing Pandaren Spirit##68462
			Challenge him to a pet battle and defeat him. |q 32439/1 |goto Dread Wastes 61.2,87.6
		step
			talk Flowing Pandaren Spirit##68462
			turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.2,87.6
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Beasts of Fable Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=59,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(32428)",
	description="\nThis guide will take you through the Beasts of Fable Pet Dailies.",
	maps={"The Jade Forest","Vale of Eternal Blossoms","Townlong Steppes","Valley of the Four Winds","Krasarang Wilds","Kun-Lai Summit","Dread Wastes"},
	},[[
		step
			talk Gentle San##64582
			accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
			accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
			accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
		step
			_No-No_
			This enemy is aquatic.
			It is strong against undead and weak to flying attacks.
			I would suggest that you use flying pets against this enemy.
			No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms 11.0,70.9
		step
			_Lucky Yi_
			This enemy is a critter.
			Is is strong against Elementals and weak to beast attacks.
			I would suggest using beast pets against this enemy.
			Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds 40.5,43.7
		step
			_Greyhoof_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds 25.3,78.5
		step
			_Skitterer Xi'a_
			This enemy is aquatic.
			It is strong against undead and weak to flying pets.
			I would suggest using flying pets against this enemy.
			Xi'a defeated |q 32868/3 |goto Krasarang Wilds 36.3,37.3
		step
			_Gorespine_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Gorespine defeated |q 32869/1 |goto Dread Wastes 26.1,50.2
		step
			_Ti'un the Wanderer_
			This enemy is aquatic.
			It is strong against undead and weak to flying pets.
			I would suggest using flying pets against this enemy.
			Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes 72.3,79.8
		step
			_Kafi_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Kafi defeated |q 32604/2 |goto Kun-Lai Summit 35.2,56.2
		step
			_Dos-Ryga_
			This enemy is aquatic.
			It is strong against undead and weak to flying pets.
			I would suggest using flying pets against this enemy.
			Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit 67.9,84.7
		step
			_Ka'wi the Gorger_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest 48.4,71.0
		step
			_Nitun_
			This enemy is a critter.
			Is is strong against Elementals and weak to beast attacks.
			I would suggest using beast pets against this enemy.
			Nitun defeated |q 32604/4 |goto The Jade Forest 57.0,29.1
		step
			talk Gentle San##64582
			turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
			turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
			turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Nagrand Soup Bones",{
	meta={goldtype="daily",levelreq=35,gold=73,time=15,icon="Interface\\ICONS\\inv_misc_bone_01"},
	description="\nThis guide will walk you through farming soup bones for gold.",
	maps={"Nagrand D","Spires of Arak","Frostwall"},
	},[[
		step
			talk Shadow-Sage Iskar##80153
			accept News from Nagrand##36602 |goto Spires of Arak 46.58,46.55
		step
			talk Rokhan##78487
			turnin News from Nagrand##36607 |goto Frostwall/0 45.90,42.82
			turnin News from Nagrand##36607 |goto 45.93,42.88
			accept Taking the Fight to Nagrand##34794 |goto 45.79,43.12
		step
			talk Bron Skyhorn##79407
			Tell him _"I need a flight to the border of Nagrand."_ |goto Frostwall/0 45.8,50.8 < 5
			_Go up_ the hill |goto Nagrand D/0 89.4,70.5
			talk Stone Guard Brox##80001
			turnin Taking the Fight to Nagrand##34794 |goto Nagrand D/0 86.37,66.18
			accept The Might of the Warsong##34795 |goto 86.37,66.19
		step
			_Follow_ the path |goto Nagrand D/0 84.8,66.0 < 20 |only if walking
			_Continue_ along the cobblestone path |goto Nagrand D/0 80.9,56.5 < 20 |only if walking
			_Go straight_ through the crossroads |goto 81.9,53.3 < 20 |only if walking
			talk Thrall##80003
			turnin The Might of the Warsong##34795 |goto 82.84,45.07
			accept More Lazy Peons##34808 |goto 82.84,45.07
		step
			talk Tal##82346
			fpath Wor'var |goto Nagrand D/0 83.3,44.7
		step
			talk Elathriel Sunstriker##82345
			home Wor'var |goto Nagrand D/0 82.6,45.4
		step
			clicknpc Lazy Peon##79906
			Motivate 8 Lazy Peons |q More Lazy Peons##34808/1 |goto 82.65,45.31
			|tip They are all around the town
		step
			talk Foreman Thazz'ril##80140
			turnin More Lazy Peons##34808 |goto 82.93,44.14
			accept They Call Him Lantresor of the Blade##34818 |goto 82.93,44.14
		step
			talk Thrall##80003
			accept The Friend of My Enemy##34826 |goto 82.85,45.07
		stickystart "ST1"
		step
			_Swim over_ the lake and run up the hill |goto Nagrand D/0 85.1,45.0 < 20 |only if walking
			accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not haveq(35379)
			kill Lupe##82205 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/2 |goto Nagrand D/0 87.6,45.6
			kill Loup##82209 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/3 |goto Nagrand D/0 87.6,45.6
		step
			accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not haveq(35379)
			kill Big Pete##123 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/4 |goto Nagrand D/0 88.7,43.9
		step
	label "ST1"
			accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not haveq(35379)
			kill 15 Nagrand Prowler##81902 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/1 |goto 87.13,49.16
		step
			_Travel up_ the dirt road and through the gate |goto Nagrand D/0 87.0,52.6 < 20 |only if walking
			talk Lantresor of the Blade##80161
			turnin They Call Him Lantresor of the Blade##34818 |goto 85.42,54.59
			accept The Blade Itself##34849 |goto 85.42,54.59
			accept Not Without My Honor##34850 |goto 85.42,54.59

		stickystart "ST2"
		step
			kill Instructor Luhk##80236
			collect Lantresor's Blade##111938 |q The Blade Itself##34849/1 |goto 86.09,53.90
		step
			The banner is located randomly inside one of the chests in the buildings below:
			click Burning Blade Locker##233815
			|tip You may need to check inside a couple lockers before you find the banner. //ID NA
			There should be one chest in this building |goto Nagrand D/0 84.8,55.5 < 20
			Check the Chests in this building, there should be 2 |goto Nagrand D/0 85.8,56.9 < 20
			There should be a single chest in here |goto Nagrand D/0 85.5,53.0 < 20
			collect Blademaster's Banner##113508 |q Not Without My Honor##34850/1 |goto 85.73,56.95
		step
	label "ST2"
			kill 15 Burning Flameseer##80197, Blademaster Trainee##80191, Hallvalor Villager##80205 |q The Friend of My Enemy##34826/1 |goto 87.23,53.63
		step
			_Enter_ the building |goto Nagrand D/0 85.5,55.0 < 10 |walk
			talk Lantresor of the Blade##80161
			turnin The Blade Itself##34849 |goto 85.42,54.59
			turnin Not Without My Honor##34850 |goto 85.42,54.59
			accept Meet Me in the Cavern##34866 |goto 85.42,54.59
		step
			_Enter_ the cave |goto Nagrand D/0 88.0,55.5 < 20 |walk
			talk Lantresor of the Blade##80319
			turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.9,19.8
			accept Challenge of the Masters##34868 |goto Nagrand D/10 44.9,19.8
		step
			click Burning Blade Sword##231088
			|tip The sword in the center of the steel circle. //ID NA
			Pull the blade |q Challenge of the Masters##34868/1 |goto 53.01,68.47
		step
			kill Packleader Dran'ruk##80326, Sesk##80325, Gorn##80324, Warlord Dharl of the Thrice-Bloodied Bla##80327
			Survive the Challenge |q Challenge of the Masters##34868/2 |goto 52.53,67.97
		step
			click Garrison Blueprints##230946
			collect Garrison Blueprints##112020 |q Challenge of the Masters##34868/3 |goto 52.88,68.41
		step
			_Leave_ the cave |goto Nagrand D/10 30.5,15.7 < 15 |walk
			_Pass_ through the gates |goto Nagrand D/0 87.0,52.5 < 20 |only if walking
			_Continue_ traveling between the cliffs |goto Nagrand D/0 86.0,51.5 < 20 |only if walking
			_Follow_ the path |goto 84.3,49.3 < 15 |only if walking
			talk Thrall##80003
			turnin The Friend of My Enemy##34826 |goto 82.85,45.08
		step
			talk Foreman Thazz'ril##80140
			turnin Challenge of the Masters##34868 |goto 82.93,44.14
			accept A Choice to Make##34899 |goto 82.93,44.14
		step
			clicknpc Drafting Table##79177
			Choose between Corral & Tankworks |q A Choice to Make##34899/1 |goto Nagrand D 83.0,44.1
		step
			talk Shadow Hunter Taz##82078
			accept That Pounding Sound##35374 |goto 82.53,43.96
		step
			talk Stalker Ogka##82080
			accept Shooting the Breeze##35376 |goto 82.60,43.95
		step
			talk Thrall##80003
			turnin A Choice to Make##34899 |goto 82.85,45.07
		step
		label "mhm"
			map Nagrand D/0
			path loop on; follow smart; dist 40
			path	79.6,44.0	80.7,42.9	79.8,40.5
			path	79.5,37.6	77.6,36.1	75.4,37.5
			path	74.7,41.0	72.7,42.2	73.2,48.4
			path	73.7,52.1	75.1,54.3	78.0,55.4
			path	80.9,52.8	80.9,49.6	81.0,46.1
			kill Breezestrider Colt##78277+, Windroc##79398+, Leatherhide Clefthoof##78575+, Tenderhoof Meadowstomper##78459+
			collect Sumptuous Fur##111557 |n
			collect Soup Bone##113578 |n
			|tip You will need 20 Soup Bones for 1 turnin
			confirm
			--15 minutes 27 furs, 200 hearty soup bones 73G first run
		step
			talk Meatgut##82727
			accept Meatgut Needs Bones##35928 |instant |repeatable |goto Nagrand D/0 78.3,52.4
			It is important to note that the amount of gold you can farm from this guide is dependant on how fast you can kill the enemies.
			Click here to go back to farming |confirm always |next "mhm"
]])

end

-- VENDOR RUNS

--[=[
if UnitFactionGroup("player")=="Horde" then
ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Vendor Runs\\Eastern Kingdoms Vendor Run",{
	meta={goldtype="vendor",levelreq=10,gold=34,time=45,icon="Interface\\ICONS\\Achievement_Zone_EasternKingdoms_01"},
	description="\nThis guide will take you through The Anglers dailies",
	maps={"Silverpine Forest","Undercity","Arathi Highlands","Badlands","Silvermoon City","Tirisfal Glades","Eastern Plaguelands","Ghostlands","Swamp of Sorrows","Northern Stranglethorn","Hillsbrad Foothills","The Hinterlands","Dun Morogh","Duskwood","The Cape of Stranglethorn"},
	},[[
		step
			talk Melaris##16641
			buy 1 Recipe: Transmute Primal Might##23574 |goto Silvermoon City 67.0,19.2
			buy 1 Recipe: Elixir of Camouflage##22900 |goto Silvermoon City 67.0,19.2
			buy 1 Liferoot##3357 |goto Silvermoon City 67.0,19.2
			buy 1 Kingsblood##3356 |goto Silvermoon City 67.0,19.2
			buy 1 Wild Steelbloom##3355 |goto Silvermoon City 67.0,19.2
			buy 2 Bruiseweed##2453 |goto Silvermoon City 67.0,19.2
			buy 3 Earthroot##2449 |goto Silvermoon City 67.0,19.2
			buy 2 Mageroyal##785 |goto Silvermoon City 67.0,19.2
			buy 2 Peacebloom##2447 |goto Silvermoon City 67.0,19.2
			buy 3 Silverleaf##765 |goto Silvermoon City 67.0,19.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Lyna##16635
			buy 1 Formula: Superior Wizard Oil##22563 |goto Silvermoon City 70.0,24.6
			buy 1 Formula: Large Prismatic Shard##22565 |goto Silvermoon City 70.0,24.6
			buy 1 Formula: Superior Mana Oil##22562 |goto Silvermoon City 70.0,24.6
			buy 2 Lesser Magic Essence##10938 |goto Silvermoon City 70.0,24.6
			buy 4 Strange Dust##10940 |goto Silvermoon City 70.0,24.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Yatheon##16782
			buy 1 Schematic: Adamantite Rifle##23799 |goto Silvermoon City 75.8,40.6
			buy 1 Schematic: White Smoke Flare##23811 |goto Silvermoon City 75.8,40.6
			buy 1 Schematic: Fel Iron Toolbox##23816 |goto Silvermoon City 75.8,40.6
			buy 1 Gyrochronatom##4389 |goto Silvermoon City 75.8,40.6
			buy 1 Bronze Framework##4382 |goto Silvermoon City 75.8,40.6
			buy 2 Bronze Tube##4371 |goto Silvermoon City 75.8,40.6
			buy 3 Silver Contact##4404 |goto Silvermoon City 75.8,40.6
			buy 4 Coarse Blasting Powder##4364 |goto Silvermoon City 75.8,40.6
			buy 4 Rough Blasting Powder##4357 |goto Silvermoon City 75.8,40.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Eriden##16670
			buy 1 Plans: Adamantite Rapier##23593 |goto Silvermoon City 80.6,37.0
			buy 1 Plans: Adamantite Dagger##23592 |goto Silvermoon City 80.6,37.0
			buy 1 Plans: Adamantite Cleaver##23591 |goto Silvermoon City 80.6,37.0
			buy 1 Plans: Adamantite Maul##23590 |goto Silvermoon City 80.6,37.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gelanthis##16624
			buy 1 Design: Opal Necklace of Impact##21948 |goto Silvermoon City 90.8,73.6
			buy 1 Design: The Jade Eye##20975 |goto Silvermoon City 90.8,73.6
			buy 1 Design: Heavy Golden Necklace of Battle##20856 |goto Silvermoon City 90.8,73.6
			buy 1 Design: Amulet of the Moon##20854 |goto Silvermoon City 90.8,73.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zaralda##16689
			buy 1 Pattern: Comfortable Insoles##25726 |goto Silvermoon City 84.6,79.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Andra##16631
			buy 2 Mageweave Cloth##4338 |goto Silvermoon City 65.6,47.8
			buy 2 Bolt of Silk Cloth##4305 |goto Silvermoon City 65.6,47.8
			buy 4 Silk Cloth##4306 |goto Silvermoon City 65.6,47.8
			buy 2 Bolt of Woolen Cloth##2997 |goto Silvermoon City 65.6,47.8
			buy 9 Wool Cloth##2592 |goto Silvermoon City 65.6,47.8
			buy 2 Bolt of Linen Cloth##2996 |goto Silvermoon City 65.6,47.8
			buy 5 Linen Cloth##2589 |goto Silvermoon City 65.6,47.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Deynna##16638 |goto Silvermoon City 55.8,51.0
			buy 1 Pattern: Bolt of Soulcloth##21894 |goto Silvermoon City 55.8,51.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rathis Tomber##16224
			buy 2 Bruiseweed##2453 |goto Ghostlands 47.2,28.6
			buy 3 Tin Ore##2771 |goto Ghostlands 47.2,28.6
			buy 1 Pattern: Red Linen Bag##5771 |goto Ghostlands 47.2,28.6
			buy 1 Silver Ore##2775 |goto Ghostlands 47.2,28.6
			buy 5 Copper Ore##2770 |goto Ghostlands 47.2,28.6
			buy 3 Earthroot##2449 |goto Ghostlands 47.2,28.6
			buy 2 Mageroyal##785 |goto Ghostlands 47.2,28.6
			buy 2 Peacebloom##2447 |goto Ghostlands 47.2,28.6
			buy 3 Silverleaf##765 |goto Ghostlands 47.2,28.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jase Farlane##12941
			buy 1 Design: Ring of Bitter Shadows##21954 |goto Eastern Plaguelands 74.2,51.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Werg Thickblade##12943
			buy 1 Pattern: Stormshroud Pants##15741 |goto Tirisfal Glades 83.2,69.4
			buy 1 Pattern: Wicked Leather Gauntlets##15725 |goto Tirisfal Glades 83.2,69.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Selina Weston##3548
			buy 2 Bruiseweed##2453 |goto Tirisfal Glades 59.6,52.2
			buy 2 Mageroyal##785 |goto Tirisfal Glades 59.6,52.2
			buy 2 Peacebloom##2447 |goto Tirisfal Glades 59.6,52.2
			buy 2 Silverleaf##765 |goto Tirisfal Glades 59.6,52.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Constance Brisboise##3522
			buy 1 Pattern: Blue Linen Vest##6270 |goto Tirisfal Glades 52.6,55.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Felicia Doan##4775
			buy 1 Design: The Jade Eye##20975 |goto Undercity 64.8,49.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Daniel Bartlett##4561
			buy 1 Design: Amulet of the Moon##20854 |goto Undercity 64.8,38.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Millie Gregorian##4577
			buy 1 Pattern: Tuxedo Jacket##10326 |goto Undercity 70.8,29.6
			buy 1 Pattern: Tuxedo Pants##10323 |goto Undercity 70.8,29.6
			buy 1 Pattern: Tuxedo Shirt##10321 |goto Undercity 70.8,29.6
			buy 1 Pattern: Red Woolen Bag##5772 |goto Undercity 70.8,29.6
			buy 1 Pattern: Greater Adept's Robe##6275 |goto Undercity 70.8,29.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Joseph Moore##4589
			buy 1 Pattern: Green Whelp Bracers##7451 |goto Undercity 70.6,59.6
			buy 1 Pattern: Barbaric Bracers##18949 |goto Undercity 70.6,59.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Andrew Hilbert##3556
			buy 1 Pattern: Blue Linen Robe##6272 |goto Silverpine Forest 43.2,40.6
			buy 1 Pattern: Murloc Scale Breastplate##5787 |goto Silverpine Forest 43.2,40.6
			buy 1 Pattern: Murloc Scale Belt##5786 |goto Silverpine Forest 43.2,40.6
			buy 1 Pattern: Red Linen Bag##5771 |goto Silverpine Forest 43.2,40.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Lilly##5757
			buy 1 Formula: Enchant Chest - Lesser Mana##6346 |goto Silverpine Forest 46.8,40.6
			buy 2 Lesser Magic Essence##10938 |goto Silverpine Forest 46.8,40.6
			buy 4 Strange Dust##10940 |goto Silverpine Forest 46.8,40.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Leo Sarn##5758
			buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Silverpine Forest 53.8,82.2
			buy 1 Lesser Magic Essence##10938 |goto Silverpine Forest 53.8,82.2
			buy 3 Strange Dust##10940 |goto Silverpine Forest 53.8,82.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Bro'kin##2480
			buy 1 Recipe: Frost Oil##14634 |goto Hillsbrad Foothills 44.0,21.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Christoph Jeffcoat##2393
			buy 1 Recipe: Shadow Protection Potion##6054 |goto Hillsbrad Foothills 57.4,47.6
			buy 1 Pattern: Thick Murloc Armor##5788 |goto Hillsbrad Foothills 57.4,47.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mallen Swain##2394
			buy 1 Pattern: Dark Silk Shirt##6401 |goto Hillsbrad Foothills 58.0,47.8
			buy 1 Pattern: Blue Overalls##6274 |goto Hillsbrad Foothills 58.0,47.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zixil##3537
			|tip He patrols between Tarren Mill and Southshore, but makes a stop here. You may need to search for him a bit.
			buy 1 Schematic: Goblin Jumper Cables##7561 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Strength of Will##4837 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Dreamer's Belt##4829 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Fireproof Orb##4836 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Wizard's Belt##4827 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Nightwind Belt##4828 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Orb of Power##4838 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Pattern: Earthen Leather Shoulders##7362 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Formula: Enchant Boots - Minor Agility##6377 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Pattern: Red Woolen Bag##5772 |goto Hillsbrad Foothills 52.6,56.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zan Shivsproket##6777
			buy 1 Schematic: Gnomish Cloaking Device##7742 |goto Hillsbrad Foothills 71.2,45.2
			buy 1 Gyrochronatom##4389 |goto Hillsbrad Foothills 71.2,45.2
			buy 1 Bronze Framework##4382 |goto Hillsbrad Foothills 71.2,45.2
			buy 2 Bronze Tube##4371 |goto Hillsbrad Foothills 71.2,45.2
			buy 3 Silver Contact##4404 |goto Hillsbrad Foothills 71.2,45.2
			buy 4 Coarse Blasting Powder##4364 |goto Hillsbrad Foothills 71.2,45.2
			buy 4 Rough Blasting Powder##4357 |goto Hillsbrad Foothills 71.2,45.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk George Candarte##2698
			buy 1 Pattern: Green Leather Armor##7613 |goto Hillsbrad Foothills 76.6,58.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gigget Zipcoil##12958
			buy 1 Pattern: Ironfeather Shoulders##15735 |goto The Hinterlands 34.6,38.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Ruppo Zipcoil##2688
			buy 1 Schematic: Mithril Mechanical Dragonling##10609 |goto The Hinterlands 34.2,37.8
			buy 1 Gyrochronatom##4389 |goto The Hinterlands 34.2,37.8
			buy 1 Bronze Framework##4382 |goto The Hinterlands 34.2,37.8
			buy 2 Bronze Tube##4371 |goto The Hinterlands 34.2,37.8
			buy 3 Silver Contact##4404 |goto The Hinterlands 34.2,37.8
			buy 4 Coarse Blasting Powder##4364 |goto The Hinterlands 34.2,37.8
			buy 4 Rough Blasting Powder##4357 |goto The Hinterlands 34.2,37.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Keena##2821
			buy 1 Design: Ruby Crown of Restoration##21942 |goto Arathi Highlands 69.2,33.6
			buy 1 Pattern: Barbaric Leggings##5973 |goto Arathi Highlands 69.2,33.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Tunkk##2819
			buy 1 Pattern: Raptor Hide Harness##13287 |goto Arathi Highlands 70.0,35.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jun'ha##6574
			buy 1 Pattern: Azure Silk Cloak##7089 |goto Arathi Highlands 68.0,37.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk High Admiral Shelly Jorrik##26081
			buy 1 Plans: Solid Iron Maul##10858 |goto Dun Morogh 17.8,74.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk "Chef" Overheat##48060
			buy 3 Recipe: Undermine Clam Chowder##16767 |goto Badlands 65.0,38.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Buckslappy##49918
			buy 1 Schematic: EZ-Thro Dynamite II##18650 |goto Badlands 91.0,38.4
			buy 1 Schematic: Green Firework##18648 |goto Badlands 91.0,38.4
			buy 1 Red Firework##18647 |goto Badlands 91.0,38.4
			buy 1 Blue Firework##18649 |goto Badlands 91.0,38.4
			buy 1 Gyrochronatom##4389 |goto Badlands 91.0,38.4
			buy 1 Bronze Framework##4382 |goto Badlands 91.0,38.4
			buy 2 Bronze Tube##4371 |goto Badlands 91.0,38.4
			buy 3 Silver Contact##4404 |goto Badlands 91.0,38.4
			buy 4 Coarse Blasting Powder##4364 |goto Badlands 91.0,38.4
			buy 3 Rough Blasting Powder##4357 |goto Badlands 91.0,38.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gharash##8176
			buy 1 Plans: Mithril Scale Bracers##7995 |goto Swamp of Sorrows 47.2,52.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rartar##8177
			buy 1 Recipe: Elixir of Demonslaying##9300 |goto Swamp of Sorrows 47.2,57.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Banalash##989
			buy 1 Formula: Enchant Bracer - Dodge##11223 |goto Swamp of Sorrows 46.6,57.0
			buy 1 Design: Black Pearl Panther##21941 |goto Swamp of Sorrows 46.6,57.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kzixx##3134
			buy 1 Schematic: Goblin Jumper Cables##7561 |goto Duskwood 81.8,19.8
			buy 1 Recipe: Holy Protection Potion##6053 |goto Duskwood 81.8,19.8
			buy 1 Strength of Will##4837 |goto Duskwood 81.8,19.8
			buy 1 Dreamer's Belt##4829 |goto Duskwood 81.8,19.8
			buy 1 Fireproof Orb##4836 |goto Duskwood 81.8,19.8
			buy 1 Wizard's Belt##4827 |goto Duskwood 81.8,19.8
			buy 1 Nightwind Belt##4828 |goto Duskwood 81.8,19.8
			buy 1 Orb of Power##4838 |goto Duskwood 81.8,19.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jaquilina Dramet##2483
			buy 1 Plans: Massive Iron Axe##12164 |goto Northern Stranglethorn 43.6,23.0
			buy 1 Midnight Axe##12250 |goto Northern Stranglethorn 43.6,23.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Nerrist##1148
			buy 1 Design: Truesilver Crab##21943 |goto Northern Stranglethorn 39.2,51.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Vharr##1146
			buy 1 Daring Dirk##12248 |goto Northern Stranglethorn 38.6,49.0
			buy 1 Plans: Massive Iron Axe##12164 |goto Northern Stranglethorn 38.6,49.0
			buy 1 Midnight Axe##12250 |goto Northern Stranglethorn 38.6,49.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Knaz Blunderflame##8679
			buy 1 Schematic: Deadly Scope##10602 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Gyrochronatom##4389 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Bronze Framework##4382 |goto Northern Stranglethorn 67.6,61.0
			buy 2 Bronze Tube##4371 |goto Northern Stranglethorn 67.6,61.0
			buy 3 Silver Contact##4404 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Coarse Blasting Powder##4364 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Rough Blasting Powder##4357 |goto Northern Stranglethorn 67.6,61.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gnaz Blunderflame##2687
			buy 1 Schematic: Deadly Scope##13311 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Gyrochronatom##4389 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Bronze Framework##4382 |goto Northern Stranglethorn 67.6,61.0
			buy 2 Bronze Tube##4371 |goto Northern Stranglethorn 67.6,61.0
			buy 3 Silver Contact##4404 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Coarse Blasting Powder##4364 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Rough Blasting Powder##4357 |goto Northern Stranglethorn 67.6,61.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Narkk##2663
			buy 1 Pattern: Black Swashbuckler's Shirt##10728 |goto The Cape of Stranglethorn 42.6,69.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zarena Cromwind##2482
			buy 1 Plans: Moonsteel Broadsword##12163 |goto The Cape of Stranglethorn 43.0,70.6
			buy 1 Big Stick##12251 |goto The Cape of Stranglethorn 43.0,70.6
			buy 1 Staff of Protection##12252 |goto The Cape of Stranglethorn 43.0,70.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rikqiz##2699
			buy 1 Pattern: Shadowskin Gloves##18239 |goto The Cape of Stranglethorn 43.2,71.6
			buy 1 Pattern: Gem-Studded Leather Belt##14635 |goto The Cape of Stranglethorn 43.2,71.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Xizk Goodstitch##2670
			buy 1 Pattern: Enchanter's Cowl##14630 |goto The Cape of Stranglethorn 43.6,73.0
			buy 1 Pattern: Crimson Silk Cloak##7087 |goto The Cape of Stranglethorn 43.6,73.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Crazk Sparks##2838
			buy 1 Schematic: Green Firework##18648 |goto The Cape of Stranglethorn 43.0,72.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Glyx Brewright##2848
			buy 1 Recipe: Frost Protection Potion##6056 |goto The Cape of Stranglethorn 42.6,74.8
			buy 1 Recipe: Nature Protection Potion##6057 |goto The Cape of Stranglethorn 42.6,74.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mrs. Gant##54232
			buy 1 Recipe: Undermine Clam Chowder##16767 |goto The Cape of Stranglethorn 42.6,72.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Blixrez Goodstitch##2846
			buy 1 Pattern: Murloc Scale Bracers##5789 |goto The Cape of Stranglethorn 42.8,74.0
			buy 1 Pattern: Thick Murloc Armor##5788 |goto The Cape of Stranglethorn 42.8,74.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jutak##2843
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto The Cape of Stranglethorn 41.6,74.0
			buy 1 Daring Dirk##12248 |goto The Cape of Stranglethorn 41.6,74.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Cowardly Crosby##2672
			buy 1 Pattern: Admiral's Hat##10318 |goto The Cape of Stranglethorn 40.8,82.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Silver-Thread Set",{
	meta={goldtype="xmog",levelreq=100,gold=100,time=15},
	description="\nThis guide will put you on the path to obtaining the Jade Plate Set",
	},[[
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Vendor Runs\\Kalimdor Vendor Run",{
	meta={goldtype="vendor",time=30,icon="Interface\\ICONS\\Achievement_Zone_Kalimdor_01"},
	maps={"Un'Goro Crater","Tanaris","Northern Barrens","Thunder Bluff","Orgrimmar","Desolace","Silithus","Southern Barrens","Winterspring","Feralas","Moonglade","Dustwallow Marsh","Stonetalon Mountains"},
	},[[
		step
			talk Lorelae Wintersong##12022
			buy 1 Formula: Enchant Cloak - Superior Defense##16224 |goto Moonglade 48.6,40.2
			buy 1 Pattern: Felcloth Pants##14483 |goto Moonglade 48.6,40.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Qia##11189
			buy 1 Design: Necklace of the Diamond Tower##21957 |goto Winterspring 59.6,49.2
			buy 1 Pattern: Frostsaber Boots##15740 |goto Winterspring 59.6,49.2
			buy 1 Formula: Enchant Chest - Major Health##16221 |goto Winterspring 59.6,49.2
			buy 1 Pattern: Runecloth Bag##14468 |goto Winterspring 59.6,49.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Xizzer Fizzbolt##11185
			buy 1 Schematic: Delicate Arcanite Converter##16050 |goto Winterspring 59.2,50.8
			buy 1 Schematic: Powerful Seaforium Charge##18656 |goto Winterspring 59.2,50.8
			buy 1 Schematic: Masterwork Target Dummy##16046 |goto Winterspring 59.2,50.8
			buy 1 Schematic: Gyrofreeze Ice Reflector##18652 |goto Winterspring 59.2,50.8
			buy 1 Gyrochronatom##4389 |goto Winterspring 59.2,50.8
			buy 1 Bronze Framework##4382 |goto Winterspring 59.2,50.8
			buy 2 Bronze Tube##4371 |goto Winterspring 59.2,50.8
			buy 3 Silver Contact##4404 |goto Winterspring 59.2,50.8
			buy 4 Coarse Blasting Powder##4364 |goto Winterspring 59.2,50.8
			buy 4 Rough Blasting Powder##4357 |goto Winterspring 59.2,50.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Daleohm##50129
			buy 1 Plans: Frostguard##12836 |goto Winterspring 58.0,63.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Vi'el##16015
			buy 2 Felcloth##14256 |goto Winterspring 61.6,87.6
			buy 4 Gromsblood##8846 |goto Winterspring 61.6,87.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Sumi##3356
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto Orgrimmar 75.8,35.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kor'geld##3348
			buy 1 Recipe: Elixir of Superior Defense##13478 |goto Orgrimmar 55.6,46.4
			buy 1 Recipe: Free Action Potion##5642 |goto Orgrimmar 55.6,46.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kithas##3346
			buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Orgrimmar 53.2,48.8
			buy 1 Formula: Enchant Chest - Lesser Mana##6346 |goto Orgrimmar 53.2,48.8
			buy 2 Lesser Magic Essence##10938 |goto Orgrimmar 53.2,48.8
			buy 4 Strange Dust##10940 |goto Orgrimmar 53.2,48.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Sovik##3413
			buy 1 Red Firework##18647 |goto Orgrimmar 56.0,56.0
			buy 1 Gyrochronatom##4389 |goto Orgrimmar 56.0,56.0
			buy 1 Bronze Framework##4382 |goto Orgrimmar 56.0,56.0
			buy 2 Bronze Tube##4371 |goto Orgrimmar 56.0,56.0
			buy 3 Silver Contact##4404 |goto Orgrimmar 56.0,56.0
			buy 4 Coarse Blasting Powder##4364 |goto Orgrimmar 56.0,56.0
			buy 4 Rough Blasting Powder##4357 |goto Orgrimmar 56.0,56.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Borya##3364
			buy 1 Pattern: Red Woolen Bag##5772 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Pink Mageweave Shirt##10317 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Lavender Mageweave Shirt##10314 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Blue Overalls##6274 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Blue Linen Vest##6270 |goto Orgrimmar 60.6,58.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Hagrus##3335
			buy 2 Recipe: Great Rage Potion##5643 |goto Orgrimmar/2 44.5,36.5
			buy 2 Recipe: Rage Potion##5640 |goto Orgrimmar/2 44.5,36.5
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Punra##46359
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto Orgrimmar 45.0,77.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Lizna Goldweaver##45558
			buy 1 Pattern: Red Woolen Bag##5772 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Pink Mageweave Shirt##10317 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Lavender Mageweave Shirt##10314 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Blue Overalls##6274 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Blue Linen Vest##6270 |goto Orgrimmar 41.0,79.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zido Helmbreaker##45549
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto Orgrimmar 36.2,83.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Vizna Bangwrench##45546
			buy 1 Red Firework##18647 |goto Orgrimmar 36.6,86.8
			buy 1 Gyrochronatom##4389 |goto Orgrimmar 36.6,86.8
			buy 1 Bronze Framework##4382 |goto Orgrimmar 36.6,86.8
			buy 2 Bronze Tube##4371 |goto Orgrimmar 36.6,86.8
			buy 3 Silver Contact##4404 |goto Orgrimmar 36.6,86.8
			buy 4 Coarse Blasting Powder##4364 |goto Orgrimmar 36.6,86.8
			buy 4 Rough Blasting Powder##4357 |goto Orgrimmar 36.6,86.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gagsprocket##3495
			buy 1 Schematic: Minor Recombobulator##14639 |goto Northern Barrens 68.4,69.2
			buy 1 Schematic: Green Firework##18648 |goto Northern Barrens 68.4,69.2
			buy 1 Gyrochronatom##4389 |goto Northern Barrens 68.4,69.2
			buy 1 Bronze Framework##4382 |goto Northern Barrens 68.4,69.2
			buy 2 Bronze Tube##4371 |goto Northern Barrens 68.4,69.2
			buy 3 Silver Contact##4404 |goto Northern Barrens 68.4,69.2
			buy 4 Coarse Blasting Powder##4364 |goto Northern Barrens 68.4,69.2
			buy 4 Rough Blasting Powder##4357 |goto Northern Barrens 68.4,69.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Ranik##3499
			buy 1 Design: Wicked Moonstone Ring##20855 |goto Northern Barrens 67.0,73.4
			buy 1 Pattern: Great Adept's Robe##6275 |goto Northern Barrens 67.0,73.4
			buy 2 Recipe: Rage Potion##5640 |goto Northern Barrens 67.0,73.4
			buy 1 Pattern: Blue Linen Robe##6272 |goto Northern Barrens 67.0,73.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Wrahk##3485
			buy 1 Pattern: Blue Linen Robe##6272 |goto Northern Barrens 50.0,61.0
			buy 1 Pattern: Blue Linen Vest##6270 |goto Northern Barrens 50.0,61.0
			buy 1 Pattern: Red Woolen Bag##5772 |goto Northern Barrens 50.0,61.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Hula'mahi##3490
			buy 1 Recipe: Holy Protection Potion##6053 |goto Northern Barrens 48.6,58.4
			buy 1 Bruiseweed##2453 |goto Northern Barrens 48.6,58.4
			buy 2 Earthroot##2449 |goto Northern Barrens 48.6,58.4
			buy 2 Mageroyal##785 |goto Northern Barrens 48.6,58.4
			buy 3 Peacebloom##2447 |goto Northern Barrens 48.6,58.4
			buy 2 Silverleaf##765 |goto Northern Barrens 48.6,58.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jeeda##4083
			buy 1 Recipe: Fire Protection Potion##6055 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Liferoot##3357 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Kingsblood##3356 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Wild Steelbloom##3355 |goto Stonetalon Mountains 50.4,63.6
			buy 2 Bruiseweed##2453 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Mageroyal##785 |goto Stonetalon Mountains 50.4,63.6
			buy 3 Earthroot##2449 |goto Stonetalon Mountains 50.4,63.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kulwia##12043
			buy 1 Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains 48.6,61.6
			buy 1 Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains 48.6,61.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kireena##9636
			buy 1 Pattern: Azure Silk Gloves##7114 |goto Desolace 51.0,53.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Muuran##8878
			buy 1 Plans: Solid Iron Maul##10858 |goto Desolace 55.8,56.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Nata Dawnstrider##3012
			buy 1 Formula: Enchant Boots - Minor Agility##6377 |goto Thunder Bluff 45.0,38.6
			buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Thunder Bluff 45.0,38.6
			buy 2 Lesser Magic Essence##10938 |goto Thunder Bluff 45.0,38.6
			buy 4 Strange Dust##10940 |goto Thunder Bluff 45.0,38.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mahu##3005
			buy 1 Pattern: White Wedding Dress##10325 |goto Thunder Bluff 43.8,44.6
			buy 1 Pattern: Red Woolen Bag##5772 |goto Thunder Bluff 43.8,44.6
			buy 1 Pattern: Red Linen Bag##5771 |goto Thunder Bluff 43.8,44.6
			buy 1 Pattern: Orange Martial Shirt##10311 |goto Thunder Bluff 43.8,44.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Palehoof's Big Bag of Parts##52655
			buy 1 Red Firework##18647 |goto Thunder Bluff 36.8,59.4
			buy 1 Gyrochronatom##4389 |goto Thunder Bluff 36.8,59.4
			buy 1 Bronze Framework##4382 |goto Thunder Bluff 36.8,59.4
			buy 2 Bronze Tube##4371 |goto Thunder Bluff 36.8,59.4
			buy 3 Silver Contact##4404 |goto Thunder Bluff 36.8,59.4
			buy 4 Coarse Blasting Powder##4364 |goto Thunder Bluff 36.8,59.4
			buy 4 Rough Blasting Powder##4357 |goto Thunder Bluff 36.8,59.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Shadi Mistrunner##8363
			buy 1 Design: Opal Necklace of Impact##21948 |goto Thunder Bluff 40.6,62.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Murhane##44286
			buy 2 Heavy Leather##4234 |goto Southern Barrens 44.0,33.8
			buy 1 Medium Hide##4232 |goto Southern Barrens 44.0,33.8
			buy 5 Medium Leather##2319 |goto Southern Barrens 44.0,33.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Ghok'kah##6567
			buy 1 Pattern: Icy Cloak##4355 |goto Dustwallow Marsh 35.2,30.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Alchemist Pestlezugg##5594
			buy 1 Recipe: Nature Protection Potion##6057 |goto Tanaris 50.8,28.0
			buy 1 Recipe: Transmute Mithril to Truesilver##9305 |goto Tanaris 50.8,28.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Blizrik Buckshot##8131
			buy 1 Schematic: EZ-Thro Dynamite II##18650 |goto Tanaris 50.6,28.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Haughty Modiste##40572
			buy 1 Pattern: Dress Shoes##37915 |goto Tanaris 50.6,28.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Krinkle Goodsteel##5411
			buy 1 Plans: Golden Scale Coif##6047 |goto Tanaris 51.2,30.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Nergal##12959
			buy 1 Pattern: Devilsaur Leggings##15772 |goto Un'Goro Crater 54.8,62.6
			buy 1 Pattern: Devilsaur Gauntlets##15758 |goto Un'Goro Crater 54.8,62.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zannok Hidepiercer##12956
			buy 1 Pattern: Heavy Scorpid Helm##15762 |goto Silithus 81.2,18.6
			buy 1 Heavy Scorpid Bracers##15724 |goto Silithus 81.2,18.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Calandrath##15174
			buy 1 Recipe: Greater Nature Protection Potion##13496 |goto Silithus 55.4,36.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mishta##15179
			buy 1 Design: Emerald Crown of Destruction##21952 |goto Silithus 53.8,34.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Bronk##8158
			buy 1 Recipe: Ghost Dye##9302 |goto Feralas 76.0,43.4
			buy 1 Recipe: Nature Protection Potion##6057 |goto Feralas 76.0,43.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jangdor Swiftstrider##7854
			buy 1 Pattern: Living Shoulders##15734 |goto Feralas 52.8,47.0
			buy 1 Pattern: Nightscape Shoulders##8409 |goto Feralas 52.8,47.0
			buy 1 Pattern: Turtle Scale Gloves##8385 |goto Feralas 52.8,47.0
			buy 1 Pattern: Green Whelp Bracers##7451 |goto Feralas 52.8,47.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Vendor Runs\\Outland/Northrend Vendor Run",{
	meta={goldtype="vendor",time=30,icon="Interface\\ICONS\\ExpansionIcon_MistsOfPandaria"},
	maps={"Dalaran","Terokkar Forest","Blade's Edge Mountains","Nagrand","Netherstorm","Zangarmarsh","Hellfire Peninsula","Shadowmoon Valley","Shattrath City","Icecrown"},
	},[[
		step
		label "start"
			talk Kul Inkspiller##30735
			buy 2 Technique: Glyph of Counterspell##50166 |goto Hellfire Peninsula 52.4,36.0
			buy 3 Scribe's Satchel##39489 |goto Hellfire Peninsula 52.4,36.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rohok##16583
			buy 1 Plans: Lesser Ward of Shielding##23638 |goto Hellfire Peninsula 53.2,38.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Arrond##19521
			buy 1 Pattern: Imbued Netherweave Tunic##21901 |goto Shadowmoon Valley 55.8,58.2
			buy 1 Pattern: Imbued Netherweave Robe##21900 |goto Shadowmoon Valley 55.8,58.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Krek Cragcrush##19342
			buy 1 Plans: Adamantite Breastplate##23596 |goto Shadowmoon Valley 29.2,31.0
			buy 1 Plans: Adamantite Plate Bracers##23564 |goto Shadowmoon Valley 29.2,31.0
			buy 1 Plans: Adamantite Plate Gloves##23595 |goto Shadowmoon Valley 29.2,31.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Dealer Tariq##20986
			buy 3 Mote of Life##22575 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Air##22572 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Earth##22573 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Fire##22574 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Mana##22576 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Shadow##22577 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Water##22578 |goto Terokkar Forest 39.4,70.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Aaron Hollman##19662
			buy 1 Plans: Adamantite Rapier##23593 |goto Shattrath City 64.0,71.8
			buy 1 Plans: Adamantite Dagger##23592 |goto Shattrath City 64.0,71.8
			buy 1 Plans: Adamantite Cleaver##23591 |goto Shattrath City 64.0,71.8
			buy 1 Plans: Adamantite Maul##23590 |goto Shattrath City 64.0,71.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Madame Ruby##19663
			buy 1 Formula: Superior Wizard Oil##22563 |goto Shattrath City 63.6,70.0
			buy 1 Formula: Large Prismatic Shard##22565 |goto Shattrath City 63.6,70.0
			buy 1 Formula: Enchant Shield - Major Stamina##28282 |goto Shattrath City 63.6,70.0
			buy 1 Formula: Superior Mana Oil##22562 |goto Shattrath City 63.6,70.0
			buy 2 Lesser Magic Essence##10938 |goto Shattrath City 63.6,70.0
			buy 4 Strange Dust##10940 |goto Shattrath City 63.6,70.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Viggz Shinesparked##19661
			buy 1 Schematic: Adamantite Rifle##23799 |goto Shattrath City 64.8,69.6
			buy 2 Elemental Blasting Powder##23781 |goto Shattrath City 64.8,69.6
			buy 2 Handful of Fel Iron Bolts##23783 |goto Shattrath City 64.8,69.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Wind Trader Lathrai##18484
			buy 1 Schematic: White Smoke Flare##23811 |goto Shattrath City 72.6,31.6
			buy 1 Schematic: Fel Iron Toolbox##23816 |goto Shattrath City 72.6,31.6
			buy 1 Gyrochronatom##4389 |goto Shattrath City 72.6,31.6
			buy 1 Bronze Framework##4382 |goto Shattrath City 72.6,31.6
			buy 2 Bronze Tube##4371 |goto Shattrath City 72.6,31.6
			buy 3 Silver Contact##4404 |goto Shattrath City 72.6,31.6
			buy 4 Coarse Blasting Powder##4364 |goto Shattrath City 72.6,31.6
			buy 4 Rough Blasting Powder##4357 |goto Shattrath City 72.6,31.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Skreah##19074
			buy 1 Recipe: Transmute Primal Might##23574 |goto Shattrath City 45.8,20.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mathar G'ochar##19015
			buy 1 Pattern: Soulcloth Gloves##21902 |goto Nagrand 56.8,38.4
			buy 1 Pattern: Bolt of Soulcloth##21894 |goto Nagrand 56.8,38.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Seer Janidi##18017
			buy 1 Recipe: Elixir of Major Frost Power##22902 |goto Zangarmarsh 32.4,51.8
			buy 1 Recipe: Sneaking Potion##22901 |goto Zangarmarsh 32.4,51.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Captured Gnome##19383
			buy 1 Schematic: Ultra-Spectropic Detection Goggles##23805 |goto Zangarmarsh 32.4,48.0
			buy 2 Schematic: White Smoke Flare##23811 |goto Zangarmarsh 32.4,48.0
			buy 2 Gyrochronatom##4389 |goto Zangarmarsh 32.4,48.0
			buy 2 Bronze Framework##4382 |goto Zangarmarsh 32.4,48.0
			buy 4 Bronze Tube##4371 |goto Zangarmarsh 32.4,48.0
			buy 6 Silver Contact##4404 |goto Zangarmarsh 32.4,48.0
			buy 8 Coarse Blasting Powder##4364 |goto Zangarmarsh 32.4,48.0
			buy 8 Rough Blasting Powder##4357 |goto Zangarmarsh 32.4,48.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zurai##18011
			buy 1 Pattern: Imbued Netherweave Boots##21899 |goto Zangarmarsh 85.2,54.6
			buy 1 Pattern: Imbued Netherweave Pants##21898 |goto Zangarmarsh 85.2,54.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Daga Ramba##19837
			buy 1 Recipe: Major Dreamless Sleep Potion##22911 |goto Blade's Edge Mountains 51.0,57.8
			buy 1 Recipe: Elixir of Major Defense##22909 |goto Blade's Edge Mountains 51.0,57.8
			buy 1 Recipe Super Mana Potion##22907 |goto Blade's Edge Mountains 51.0,57.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Qiff##19575
			buy 1 Felsteel Stabalizer##23787 |goto Netherstorm 32.6,66.6
			buy 1 Khorium Power Core##23786 |goto Netherstorm 32.6,66.6
			buy 1 Adamantite Frame##23784 |goto Netherstorm 32.6,66.6
			buy 4 Handful of Fel Iron Bolts##23783 |goto Netherstorm 32.6,66.6
			buy 1 Fel Iron Casing##23782 |goto Netherstorm 32.6,66.6
			buy 4 Elemental Blasting Powder##23781 |goto Netherstorm 32.6,66.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Dealer Najeeb##20981
			buy 1 Hardened Adamantite Tube##23785 |goto Netherstorm 44.8,36.6
			buy 5 Mote of Air##22572 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Water##22578 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Shadow##22577 |goto Netherstorm 44.8,36.6
			buy 3 Adamantite Frame##23784 |goto Netherstorm 44.8,36.6
			buy 5 Mote of Mana##22576 |goto Netherstorm 44.8,36.6
			buy 4 Mote of Life##22575 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Fire##22574 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Earth##22573 |goto Netherstorm 44.8,36.6
			buy 8 Handful of Fel Iron Bolts##23783 |goto Netherstorm 44.8,36.6
			buy 8 Elemental Blasting Powder##23781 |goto Netherstorm 44.8,36.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Dealer Sadaqat##20989
			buy 1 Mana Thistle##22793 |goto Netherstorm 43.2,35.0
			buy 3 Netherbloom##22791 |goto Netherstorm 43.2,35.0
			buy 2 Dreaming Glory##22786 |goto Netherstorm 43.2,35.0
			buy 3 Felweed##22785 |goto Netherstorm 43.2,35.0
			buy 3 Icecap##13467 |goto Netherstorm 43.2,35.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Larana Drome##28723
			buy 6 Technique: Glyph of Everlasting Affliction##50168 |goto Dalaran 42.4,37.6
			buy 7 Technique: Glyph of Counterspell##50166 |goto Dalaran 42.4,37.6
			buy 6 Scribe's Satchel##39489 |goto Dalaran 42.4,37.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Bryan Landers##28722
			buy 5 Schematic: Titanium Toolbox##23817 |goto Dalaran 39.0,26.0
			buy 3 Gyrochronatom##4389 |goto Dalaran 39.0,26.0
			buy 3 Bronze Framework##4382 |goto Dalaran 39.0,26.0
			buy 6 Bronze Tube##4371 |goto Dalaran 39.0,26.0
			buy 9 Silver Contact##4404 |goto Dalaran 39.0,26.0
			buy 12 Coarse Blasting Powder##4364 |goto Dalaran 39.0,26.0
			buy 12 Rough Blasting Powder##4357 |goto Dalaran 39.0,26.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Fizzix Blastbolt##33594
			buy 10 Schematic: Titanium Toolbox##23817 |goto Icecrown 72.2,20.8
			buy 4 Gyrochronatom##4389 |goto Icecrown 72.2,20.8
			buy 4 Bronze Framework##4382 |goto Icecrown 72.2,20.8
			buy 8 Bronze Tube##4371 |goto Icecrown 72.2,20.8
			buy 12 Silver Contact##4404 |goto Icecrown 72.2,20.8
			buy 16 Coarse Blasting Powder##4364 |goto Icecrown 72.2,20.8
			buy 16 Rough Blasting Powder##4357 |goto Icecrown 72.2,20.8
			This is the last step of the guide:
			If these items are not available, click here to be routed back to the start of the guide. |confirm |next "start"
]])
end
--]=]

-- FARM VARIOUS
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Cocoa Beans (Horde)",{
	condition_valid='raceclass("Horde")',
	},[[
		#include "Org_Cooking_Dailies"
		earn 1 Epicurean's Reward##81
	step
		talk Shazdar##49737
		buy Imported Supplies##68689 |goto Orgrimmar 56.8,62.6
	step
		Use the Imported Supplies in your bags. |use Imported Supplies##68689
		goldcollect Cocoa Beans##62786
		goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])
