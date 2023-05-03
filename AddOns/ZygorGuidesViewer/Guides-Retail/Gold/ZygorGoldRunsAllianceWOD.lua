local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"

-- DAILIES RUNS

if UnitFactionGroup("player")=="Alliance" then

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The Anglers Dailies Run",{
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The August Celestials Dailies Run",{
	meta={goldtype="daily",levelreq=15,gold=57,time=5,icon="Interface\\ICONS\\Achievement_Faction_Celestials"},
	description="\nThis guide will take you through The August Celestials dailies",
	},[[
	step
	label "startaug"
		talk Sage Whiteheart##64032
		|tip The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
		accept Challenge At The Temple of the Red Crane##31378 |goto Vale of Eternal Blossoms 84.62,63.78 |next "crane" |or |only if not completedq(31378)
		accept Attack At The Temple of the Jade Serpent##31376 |goto Vale of Eternal Blossoms 84.62,63.78 |next "serpent" |or |only if not completedq(31377)
		accept Defense At Niuzao Temple##31382 |goto Vale of Eternal Blossoms 84.62,63.78 |next "ox" |or |only if not completedq(31382)
		accept Trial At The Temple of the White Tiger##31380 |goto Vale of Eternal Blossoms 84.62,63.78 |next "tiger" |or |only if not completedq(31380)
		|tip If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
		Niuzao the Black Ox |confirm |next "ox"
		Yu'lon the Jade Serpent |confirm |next "serpent"
		Xuen the White Tiger |confirm |next "tiger"
		Chi-Ji the Red Crane |confirm |next "crane"
	step
	label "crane"
		talk Thelonius##60506
		turnin Challenge At The Temple of the Red Crane##31378 |goto Krasarang Wilds 31.3,63.4
		only if not completedq(31378)
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
		only if not achieved(7287)
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
		turnin Attack At The Temple of the Jade Serpent##31376 |goto The Jade Forest 53.9,61.9 |only if haveq(31376)
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
		turnin Trial At The Temple of the White Tiger##31380 |goto Kun-Lai Summit 67.2,55.9
		|only if haveq(31380)
	step
		talk Xuen##60968
		accept Round 1: Brewmaster Chani##30879 |goto 67.2,55.9 |or
		accept Round 1: The Streetfighter##30880 |goto 67.2,55.9 |or
		accept Contending With Bullies##31517 |goto 67.2,55.9
		|tip This quest may not be available.
		Click here if it is not available |confirm --|noquest
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
		only if haveq(30907)
	step
		talk Xuen##60968
		turnin Round 4: The P.U.G.##30907 |goto 68.5,44.6
		turnin Round 4: Master Windfur##30902 |goto 68.5,44.6
	step
		talk Lin Tenderpaw##60981
		accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
		Click here if this quest is unavailable |confirm |next "end"
	step
		For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over
		confirm
		only if haveq(31492)
	step
		Enter the first temple |goto 69.6,53.0 < 10 |walk
		Enter the second temple |goto 66.9,51.2 < 10 |walk
		click The Strong Brazier##214628
		Light the Strong Brazier |q 31492/1 |goto 68.6,46.6
		only if haveq(31492)
	step
		talk Lin Tenderpaw##60981
		turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
		|next "end"
		only if haveq(31492)
	step
		End of section |next "end"
	step
	label "ox"
		talk Ogo the Elder##61580
		turnin Defense At Niuzao Temple##31382 |goto Townlong Steppes 39.35,62.30 |only if haveq(31382)
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
		If this quest is unavailable today, click here |confirm
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
		talk Sage Whiteheart##64032
		buy 1 Grand Commendation of the August Celestials##93224 |n
		Use the Commendation of the August Celestials you just purchased |complete ZGV:GetReputation("August Celestials").hasBonus |goto Vale of Eternal Blossoms 84.6,63.7 |use Grand Commendation of the August Celestials##93224
		only if rep("August Celestials")>=Revered
	step
		You have reached the end of this daily guide
		Click here to return to the start of the dailies |next "startaug" |confirm
	step
	label "end"
		'This is the end of the current guide. Click here to go back to the beginning. |confirm |next "startaug"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The Order of the Cloud Serpent Dailies Run",{
	meta={goldtype="daily",levelreq=10,gold=46,time=6,icon="Interface\\ICONS\\Achievement_Faction_SerpentRiders"},
	description="\nTh is guide will take you through the Order of the Cloud Serpent dailies",
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The Shado-Pan Dailies Run",{
	meta={goldtype="daily",levelreq=25,gold=65,time=8,icon="Interface\\ICONS\\Achievement_Faction_ShadoPan"},
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The Tillers Dailies Run",{
	meta={goldtype="daily",levelreq=15,gold=49,time=5,icon="Interface\\ICONS\\Achievement_Faction_Tillers"},
	description="\nThis guide will take you through The Tillers dailies",
	},[[
	step
		#include "Tillers_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The Golden Lotus Dailies Run",{
	meta={goldtype="daily",levelreq=20,gold=109,time=11,icon="Interface\\ICONS\\Achievement_Faction_GoldenLotus"},
	description="\nThis guide will take you through The Golden Lotus dailies",
	},[[
	step
		Routing to proper section |next "prequests" |only if not completedq(31511) and not completedq(31512)
		Routing to proper section |next "dailies" |only if completedq(31511) or completedq(31512)
	step
	label "prequests"
		talk Wanderer Chu##64521
		accept Temple of the White Tiger##31392 |goto Kun-Lai Summit 72,94.2
		|only if not completedq(31394)
	step
		talk Anduin Wrynn##64540
		turnin Temple of the White Tiger##31392 |only if not completedq(31394) |goto 68.8,43.1
		accept A Celestial Experience##31394 |goto 68.8,43.1
	step
		Talk to Xuen |q 31394/1 |goto 68.9,42.8
		kill Spirit of Violence##64656
		Pass the First Test |q 31394/2 |goto 68.9,42.8
		kill Spirit of Anger##64684
		Pass the Second Test |q 31394/3 |goto 68.9,42.8
		kill Spirit of Hatred##64744
		Pass the Third Test |q 31394/4 |goto 68.9,42.8
	step
		talk Anduin Wrynn##64540
		turnin A Celestial Experience##31394 |goto 68.8,43.1
		accept A Witness to History##31512 |or |goto 68.8,43.1
		accept A Witness to History##31511 |or |goto 68.8,43.1
	step
		talk Anduin Wrynn##64848
		Tell him "Let's find out!" |q 31512/1 |only if haveq(31512) |goto 55.5,91.3
		Tell him "Let's find out!" |q 31511/1 |only if haveq(31511) |goto 55.5,91.3
	step
		talk Matron Vi Vinh##64149
		turnin A Witness to History##31511 |goto Shrine of Seven Stars/1 35.4,65.9
		or
		turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 35.4,65.9
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\The Klaxxi Dailies Run",{
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Operation:Shieldwall Dailies Run",{
	meta={goldtype="daily",levelreq=15,gold=61,time=8,icon="Interface\\ICONS\\Achievement_General_AllianceSlayer"},
	description="\nThis guide will take you through quests for Operation: Shieldwall.",
	},[[
	step
		talk Lyalia##64610
		accept Meet the Scout##32246 |goto Vale of Eternal Blossoms 83.9,58.6
		|tip This will be available upon entering Vale of Eternal Blossoms.
	step
		talk Scout Lynna##68311
		turnin Meet the Scout##32246 |goto Krasarang Wilds 85.3,29.1
	step
		talk King Varian Wrynn##61796
		accept A King Among Men##32247 |goto Krasarang Wilds 85.3,29.1
	step
		talk Marshal Troteman##68331
		Marshal Troteman found |q 32247/2 |goto Krasarang Wilds 79.6,25.0
	step
		talk Hilda Hornswaggle##68312
		Hilda Hornswaggle found |q 32247/3 |goto Krasarang Wilds 80.4,17.5
	step
		kill Horde Raider##68332+, Horde Hunter##68334+, Horde Priest##67904+
		kill 25 Horde |q 32247/1 |goto Krasarang Wilds 84.6,22.0
	step
		talk King Varian Wrynn##61796
		|tip He is standing next to you.
		turnin A King Among Men##32247
		accept Lion's Landing##32109
	step
		click Flare Launcher##216609
		turnin Lion's Landing##32109 |goto Krasarang Wilds 85.6,29.1
	//Lions landing Achievement ^
	step
		fpath Lion's Landing |goto Krasarang Wilds 88.3,34.7
	step
	label "dailies"
		talk Marshal Troteman##68331
		accept Priorities, People!##32116 |next "Ruins of Ogudei" |goto Krasarang Wilds 89.7,33.1
		Click here when no more quests are available |confirm --|noquest
	step
		talk Amber Kearnen##68908
		accept Send A Message##32451 |or |next "Skyfire" |goto Krasarang Wilds 89.8,32.4
		accept And Then There Were Goblins##32452 |or |next "Skyfire" |goto Krasarang Wilds 89.8,32.4
		Click here when no more quests are available |confirm --|noquest
	//Lions Landing
	step
		talk Mishka##67630
		accept Resource Gathering##32149 |goto Krasarang Wilds 89.7,32.8
		accept Supply Block##32150 |goto Krasarang Wilds 89.7,32.8
	step
		talk Marshal Troteman##68331
		accept Attack! Move!##32148 |or 3 |goto Krasarang Wilds 89.7,33.1
		accept Tower Defense##32151 |or 3 |goto Krasarang Wilds 89.7,33.1
		accept Hero Killer##32153 |or 3 |goto Krasarang Wilds 89.7,33.1
		accept Siege Damage##32152 |or 3 |goto Krasarang Wilds 89.7,33.1
	step
		kill Bilgewater Sapper##67929+
		collect Bilgewater Blasting Cap##92493 |q 32152/1 |only if haveq(32152) |goto Krasarang Wilds 76.8,19.2
		collect 20 Animatable Stone##91823 |q 32151/1 |only if haveq(32151) |goto Krasarang Wilds 76.8,19.2
		only if haveq(32152) or haveq(32151)
	stickystart "dominationsupplycrate"
	stickystart "lionlumber"
	step
		Kill a Horde Hero |q 32153/1 |goto Krasarang Wilds 79.1,27.2
		only if haveq(32153)
	step
	label "dominationsupplycrate"
		kill 8 Domination Point Supply Cart##67756+ |q 32150/1 |only if haveq(32150) |goto Krasarang Wilds 78.2,28.9
		clicknpc Domination Point Demolisher##67671 |only if haveq(32152)
		Destroy a Domination Point Demolisher |q 32152/2 |only if haveq(32152) |goto Krasarang Wilds 78.2,28.9
		only if haveq(32150) or haveq(32152)
	step
	label "lionlumber"
		kill Dominance Shaman##67520+, Domination Point Raider##67826+
		Kill 12 Domination Point Shaman or Raider |q 32148/1 |goto Krasarang Wilds 77.0,24.3
		click Hastily Abandoned Lumber##216229
		Get 12 Lion's Landing Lumber |q 32149/1 |goto Krasarang Wilds 77.0,24.3
		only if haveq(32149) or haveq(32148)
	step
		talk Mishka##67630
		turnin Resource Gathering##32149 |goto Krasarang Wilds 89.7,32.8
		turnin Supply Block##32150 |goto Krasarang Wilds 89.7,32.8
	step
		talk Marshal Troteman##68331
		turnin Attack! Move!##32148 |goto Krasarang Wilds 89.7,33.1
		turnin Tower Defense##32151 |goto Krasarang Wilds 89.7,33.1
		turnin Hero Killer##32153 |goto Krasarang Wilds 89.7,33.1
		turnin Siege Damage##32152 |or 3 |goto Krasarang Wilds 89.7,33.1
		|next "friend1" |only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
		|next "friend2" |only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
		|next "honored1" |only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
		|next "honored2" |only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
		|next "honored3" |only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
		|next "revered1" |only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
		|next "revered2" |only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
		|next "revered3" |only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
		|next "revered4" |only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
		|next "revered5" |only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
		|next "exalted" |only if rep("Operation: Shieldwall")==Exalted
		|next "endg" |only if default
	// The Skyfire
	step
	label "Skyfire"
		Click the portal to the _Skyfire_ |goto Krasarang Wilds 18.1,79.6 < 5 |walk
		talk Sky Admiral Rogers##67386
		turnin Send A Message##32451 |goto Krasarang Wilds 16.5,79.2
		turnin And Then There Were Goblins##32452 |goto Krasarang Wilds 16.5,79.2
		accept Hammer to Fall##32146 |goto Krasarang Wilds 16.5,79.2
		accept We Will Rock You##32142 |goto Krasarang Wilds 16.5,79.2
		accept The Only Good Goblin...##32157 |goto Krasarang Wilds 16.5,79.2
	step
		talk Tinkmaster Overspark##67976
		accept A Kind of Magic##32143
	step
		talk Mishka##54614
		accept Under Pressure##32144 |or |goto Krasarang Wilds/0 16.7,78.6
		accept It's Only Right##32156 |or |goto Krasarang Wilds/0 16.7,78.6
	step
		talk Seraphine of the Winter##68182
		accept Two Step Program##32158 |or |goto Krasarang Wilds 16.7,78.6
		accept Undermining the Under Miner##32433 |or |goto Krasarang Wilds 16.7,78.6
	step
		talk Sully 'The Pickle' McLeary##54616
		accept Burn Out!##32154 |or 2 |goto Krasarang Wilds 16.9,78.6
		accept Dis-Assembly Required##32446 |or 2 |goto Krasarang Wilds 16.9,78.6
		accept Circle of Life##32159 |or 2 |goto Krasarang Wilds 16.9,78.6
	step
		clicknpc Scout-o-Meter Mk I##67544
		Eliminate the Beachhead Demolishers |q 32143/1 |goto Krasarang Wilds 11.6,67.9
		only if haveq(32143)
	step
		clicknpc the Scout-o-Meter Mk II##67546
		Eliminate the Horde Wolves |q 32143/2 |goto Krasarang Wilds 10.8,60.9
		only if haveq(32143)
	step
		clicknpc the Scout-o-Meter Mk III##67547
		Destroy the Horde Bomb Stockpile |q 32143/3 |goto Krasarang Wilds/0 12.7,56.6
		only if haveq(32143)
	step
		Click the quest complete box on the top right of the screen.
		turnin A Kind of Magic##32143
		accept Don't Lose Your Head##32145
		only if haveq(32143) or completedq(32143)
	step
		kill 1 Or'Dac##67435 |q 32145/1 |goto Krasarang Wilds 10.8,58.1
		only if haveq(32145)
	step
		kill 1 Chief Bombgineer Snicklefritz##67427 |q 32145/3 |goto Krasarang Wilds 13.4,56.3
		only if haveq(32145)
	step
		kill 1 Stone Guard Ruk'Ra##67429 |q 32145/2 |goto Krasarang Wilds/0 13.4,57.9
		only if haveq(32145)
	step
		click Horde Supply Crate##216665
		Destroy #8# Horde Supply Crates |q 32144/1 |goto Krasarang Wilds 11.9,60.4
		kill 5 Heavy Mook##67399+ |q 32146/1 |goto Krasarang Wilds 11.9,60.4
		kill 10 Domination Orc##67357+ |q 32142/1 |goto Krasarang Wilds 11.9,60.4
		only if haveq(32146) or haveq(32142)
	step
		Use your _Unstable Explosives_ |use Unstable Explosive##93187
		Northwestern Fuel Tank destroyed |q 32154/3 |goto Krasarang Wilds/0 15.3,59.1
		only if haveq(32154)
	step
		kill 1 Shredmaster Packle##67371 |q 32158/1 |goto Krasarang Wilds 19.6,62.1
		only if haveq(32158)
	step
		kill Jungle Shredder##67285+
		Use your _Re-Configured Remote_ on Jungle Shredders. |use Re-Configured Remote##93180
		collect 6 Scrap Metal##93179 |q 32446/1 |goto Krasarang Wilds/0 19.0,61.4
		only if haveq(32446)
	step
		kill Grezik Oregrind##67373 |q 32433/1 |goto Krasarang Wilds 22.2,61.3
		only if haveq(32433)
	step
		Click on mounds of dirt in the area
		Plant 11 Energized Seeds |q 32159/1 |goto Krasarang Wilds 19.9,60.4
		only if haveq(32159)
	stickystart "shieldwalltags"
	step
		Use your _Unstable Explosives_ |use Unstable Explosive##93187
		Northeastern Fuel Tank destroyed |q 32154/1 |goto Krasarang Wilds/0 25.4,59.5
		only if haveq(32154)
	step
		Use your _Unstable Explosives_ |use Unstable Explosive##93187
		Northern Fuel Tank destroyed |q 32154/2 |goto Krasarang Wilds/0 23.9,54.6
		only if haveq(32154)
	step
	label "shieldwalltags"
		kill 10 Bilgewater Goblins |q 32157/1 |goto Krasarang Wilds/0 24.6,56.6
		clicknpc Fallen Shieldwall Soldier##68700
		Get 7 Shieldwall Soldier Dog Tags |q 32156/1 |goto Krasarang Wilds/0 24.6,56.6
		only if haveq(32157) or haveq(32156)
	step
		talk Mishka##54614
		turnin Under Pressure##32144 |goto Krasarang Wilds/0 16.7,78.6
		turnin It's Only Right##32156 |goto Krasarang Wilds/0 16.7,78.6
	step
		talk Seraphine of the Winter##68182
		turnin Two Step Program##32158 |goto Krasarang Wilds 16.7,78.6
		turnin Undermining the Under Miner##32433 |goto Krasarang Wilds 16.7,78.6
	step
		talk Sully 'The Pickle' McLeary##54616
		turnin Burn Out!##32154 |goto Krasarang Wilds 16.9,78.6
		turnin Dis-Assembly Required##32446 |goto Krasarang Wilds 16.9,78.6
	step
		talk Sky Admiral Rogers##67386
		turnin Hammer to Fall##32146 |goto Krasarang Wilds 16.5,79.2
		turnin We Will Rock You##32142 |goto Krasarang Wilds 16.5,79.2
		turnin The Only Good Goblin...##32157 |goto Krasarang Wilds 16.5,79.2
	step
		talk Tinkmaster Overspark##67976
		turnin A Kind of Magic##32143
		turnin Don't Lose Your Head##32145
		|next "friend1" |only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
		|next "friend2" |only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
		|next "honored1" |only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
		|next "honored2" |only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
		|next "honored3" |only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
		|next "revered1" |only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
		|next "revered2" |only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
		|next "revered3" |only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
		|next "revered4" |only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
		|next "revered5" |only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
		|next "exalted" |only if rep("Operation: Shieldwall")==Exalted
		|next "endg" |only if default
	// Ruins of Ogudei
	step
	label "Ruins of Ogudei"
		Enter the Ruins of Ogudei |goto Krasarang Wilds/0 80.3,17.6 < 10 |walk
		talk Hilda Hornswaggle##68312
		turnin Priorities, People!##32116 |goto Krasarang Wilds/1 30.1,27.5
		accept The Spirit Trap##32121 |or 5 |goto Krasarang Wilds/1 30.1,27.5
		accept Shackles of the Past##32115 |or 5 |goto Krasarang Wilds/1 30.1,27.5
		accept Eviction Notice##32347 |or 5 |goto Krasarang Wilds/1 30.1,27.5
		accept Oi Ain't Afraid o' No Ghosts!##32346 |or 5 |goto Krasarang Wilds/1 30.1,27.5
		accept Ogudei's Lieutenants##32122 |or 5 |goto Krasarang Wilds/1 30.1,27.5
		accept It Is A Mystery##32119 |or 5 |goto Krasarang Wilds/1 30.1,27.5
		only if haveq(32116) or completedq(32116)
	step
		Go down the steps here |goto Krasarang Wilds/1 66.1,50.4 < 5 |walk
		Walk around this cave and pay attention to your Anamoly Reader above your actionbars. This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get. Once you have 100%, you will automatically disperse the anamoly
		Disperse the anamoly |q 32119/1
		only if haveq(32119)
	step
		kill 12 Spiritbound Arcanist##68070+ |q 32346/1 |only if haveq(32346) |goto Krasarang Wilds/2 50.3,26.7
		kill Troubled Slave Spirit##68074+ |only if haveq(32115)
		14 Troubled Slave Spirits released |q 32115/1 |only if haveq(32115) |goto Krasarang Wilds/2 50.3,26.7
	step
		kill Spirit Trap##68061+
		goal 3 Spirit Trap destroyed |q 32121/1 |goto Krasarang Wilds/2 72.7,15.4
	step
		Go down the steps here |goto Krasarang Wilds/2 62.4,39.0 < 10 |walk
		kill Reliquary Scout##67861+, Reliquary Blood Knight##68126+, Reliquary Mage##68114+
		Kill 10 Reliquary |q 32347/1 |goto Krasarang Wilds/3 66.3,48.3
	step
		Go up the path here |goto Krasarang Wilds/3 79.8,43.4 < 10 |only if walking
		Go down the path here |goto Krasarang Wilds/2 72.7,41.5 < 10 |only if walking
		kill Gen-li, Twister of Words##68169 |q 32122/1 |goto Krasarang Wilds/2 67.4,81.0
		kill Meng-do, Strength of Mountains##68170 |q 32122/2 |goto Krasarang Wilds/2 67.4,81.0
	step
		Go up the steps here |goto Krasarang Wilds/2 56.4,38.9 < 10 |only if walking
		talk Hilda Hornswaggle##68312
		turnin The Spirit Trap##32121 |goto Krasarang Wilds/1 30.1,27.5
		turnin Shackles of the Past##32115 |goto Krasarang Wilds/1 30.1,27.5
		turnin Eviction Notice##32347 |goto Krasarang Wilds/1 30.1,27.5
		turnin Oi Ain't Afraid o' No Ghosts!##32346 |goto Krasarang Wilds/1 30.1,27.5
		turnin Ogudei's Lieutenants##32122 |goto Krasarang Wilds/1 30.1,27.5
		turnin It Is A Mystery##32119 |goto Krasarang Wilds/1 30.1,27.5
		|next "friend1" |only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
		|next "friend2" |only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
		|next "honored1" |only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
		|next "honored2" |only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
		|next "honored3" |only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
		|next "revered1" |only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
		|next "revered2" |only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
		|next "revered3" |only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
		|next "revered4" |only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
		|next "revered5" |only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
		|next "exalted" |only if rep("Operation: Shieldwall")==Exalted
		|next "endg" |only if default
	//First Quest Chain
	step
	label "friend1"
		talk Admiral Taylor##67940
		accept The Best Around##32380 |goto Krasarang Wilds 89.5,32.6
		only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
	step
		Bizmo's Brawlpub Located |q 32380/1
		Go down the ramp here |goto Deeprun Tram/1 52.2,42.4 < 10 |only if walking
		only if haveq(32380)
	step
		talk Barkeep Townsley##68526
		Ask her if she is the agent following Connelly
		Agent Townsley located |q 32380/2 |goto Deeprun Tram/2 70.3,46.5
		turnin The Best Around##32380
		accept To Catch A Spy##32381
		only if not completedq(32426)
	step
		talk Barkeep Townsley##68526
		Tell her you're ready for the first clue
		Find Keith and talk to him here [Deeprun Tram/2 64.8,22.7]
		talk Keith 'The Party' Westin##3001
		Pink Marmot delivered |q 32381/1 |goto Deeprun Tram/2 70.7,46.5
		only if haveq(32381)
	step
		talk Barkeep Townsley##68526
		Tell her you're ready for the second clue
		[Deeprun Tram/2 49.7,33.6]
		talk Twix Gearspark##68540
		Rusty Dagger delivered |q 32381/2 |goto Deeprun Tram/2 70.1,47.2
		only if haveq(32381)
	step
		talk Barkeep Townsley##68526
		Tell her you're ready for the thrid clue
		[Deeprun Tram/2 66.9,59.7]
		talk Tasha Windpaw##68539
		Pink Marmot delivered |q 32381/3 |goto Deeprun Tram/2 70.1,47.2
		only if haveq(32381)
	step
		talk Barkeep Townsley##68526
		turnin To Catch A Spy##32381 |goto Deeprun Tram/2 70.1,47.2
		accept Stirred, Not Shaken##32426 |goto Deeprun Tram/2 70.1,47.2
		only if not completedq(32426)
	step
		Go up the ramp here |goto Deeprun Tram/2 31.7,19.7 < 10 |only if walking
		Locate Professor Kilt |q 32426/1 |goto Deeprun Tram/2 26.3,79.3
		only if haveq(32426)
	step
		talk Professor Kilt##68531
		turnin Stirred, Not Shaken##32426 |goto Deeprun Tram/2 24.5,81.4
		only if haveq(32426)
		|next "endg"
	// 4500 Rep
	step
	label "friend2"
		talk Admiral Taylor##67940
		accept He's In Deep##32382 |goto Krasarang Wilds/0 89.6,32.6
		only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
	step
		talk Fennie Hornswaggle##68741
		Ask her to take you to Fire Camp Bataar
		Find Connelly in Kun-Lai Summit |q 32382/1 |goto Krasarang Wilds 88.3,34.2
		only if haveq(32382)
	step
		talk Cousin Goottooth##68417
		turnin He's In Deep##32382 |goto Kun-Lai Summit 59.2,84.3
		accept Bugging Out##32383 |goto Kun-Lai Summit 59.2,84.3
		accept He Won't Even Miss It##32397 |goto Kun-Lai Summit 59.2,84.3
		only if not completedq(32383) or not completedq(32397)
	step
		Use your Grummle Disguise Kit |use Grummle Disguise Kit##92950
		Pay attention for _Nero_ the wolf. It will see through your costume
		clicknpc Shaggy Longhorn##2877
		Garrosh distracted |q 32397/1 |goto Kun-Lai Summit 58.6,83.8
		only if haveq(32397)
	step
		clicknpc Mogu Statue##68913
		Large Tent bugged |q 32383/1 |goto Kun-Lai Summit 58.4,84.0
		only if haveq(32383)
	step
		Click the Weathered Jounral on the edge of the table
		collect Weathered Journal##92804 |q 32397/2 |goto Kun-Lai Summit 58.3,84.2
		only if haveq(32397)
	step
		clicknpc Mogu Statue##68913
		Small Tent bugged |q 32383/2 |goto Kun-Lai Summit 58.0,84.6
		only if haveq(32383)
	step
		clicknpc Mogu Statue##68913
		Supplies bugged |q 32383/3 |goto Kun-Lai Summit 58.2,85.0
		only if haveq(32383)
	step
		talk Cousin Goottooth##68417
		turnin Bugging Out##32383 |goto Kun-Lai Summit 59.3,84.3
		turnin He Won't Even Miss It##32397 |goto Kun-Lai Summit 59.3,84.3
		only if haveq(32383) or haveq(32397)
		|next "endg"
	// 2850 Honoroed
	step
	label "honored1"
		talk Admiral Taylor##67940
		accept The Kirin Tor##32331 |goto Krasarang Wilds 89.6,32.6
		only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
	step
		Use the Portal to The Purple Parlor |q 32331/1 |goto Krasarang Wilds 89.2,33.6 |n
		|tip Make sure you use this portal rather than going to the dungeon yourself, this is a phased version of Dalaran, so you must use the portal to go through.
		only if haveq(32331)
	step
		talk Anduin Wrynn##68106
		turnin The Kirin Tor##32331 |goto 924/1 26.7,39.0
		accept The Fate of Dalaran##32362 |goto 924/1 26.7,39.0
		only if not completedq(32362)
	step
		Speak with Jaina Proudmoore |q 32362/1 |goto 924/1 26.7,39.3
		only if haveq(32362)
	step
		talk Anduin Wrynn##68106
		turnin The Fate of Dalaran##32362 |goto 924/1 26.8,39.0
		only if haveq(32362)
	step
		Click the portal to send you back to Lion's Landing |goto Krasarang Wilds 89.0,33.6 < 10 |walk
		|next "endg"
	// 6800 Honored
	step
	label "honored2"
		talk Admiral Taylor##67940
		accept To Mogujia##32193 |goto Krasarang Wilds 89.6,32.6
		only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
	step
		talk Fennie Hornswaggle##68741
		Ask her to take you Mogujia
		Find Brann Bronzebeard |q 32193/1 |goto Krasarang Wilds 88.3,34.3
		only if haveq(32193)
	step
		talk Brann Bronzebeard##67682
		turnin To Mogujia##32193 |goto Kun-Lai Summit 59.8,76.0
		only if haveq(32193)
	step
		talk Hilda Hornswaggle##67716
		accept The Source of Korune Power##32243 |goto Kun-Lai Summit 59.8,76.0
		only if not completedq(32243)
	step
		talk Sarannha Skyglaive##67734
		accept Bad Blood##32194 |goto Kun-Lai Summit 60.0,75.3
		only if not completedq(32243)
	step
		kill Korune Spellweaver##68815
		collect Sha-Touched Claw##93190 |q 32243/1 |goto Kun-Lai Summit 58.1,71.0
		only if haveq(32243)
	step
		kill Silvermoon Runeseeker##67806+, Dominance Mage##67804+, Dominance Knight##67805+
		collect 5 Korune Artifact##93189 |q 32194/1 |goto Kun-Lai Summit 58.5,74.5
		only if haveq(32194)
	step
		talk Sarannha Skyglaive##67734
		turnin Bad Blood##32194 |goto Kun-Lai Summit 60.0,75.3
		only if haveq(32194)
	step
		talk Hilda Hornswaggle##67716
		turnin The Source of Korune Power##32243 |goto Kun-Lai Summit 59.8,76.0
		only if haveq(32243)
		|next "endg"
	// 10,750 Honoroed
	step
	label "honored3"
		talk Admiral Taylor##67940
		accept Anduin's Plea##32315 |goto Krasarang Wilds 89.6,32.6
		only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
	step
		talk Fennie Hornswaggle##68741 |goto Krasarang Wilds 88.3,34.3
		Ask her to take you to Shrine of Seven Stars |goto Vale of Eternal Blossoms |noway |c
		only if haveq(32315)
	step
		talk Anduin Wrynn##67948
		Find Anduin |q 32315/1
		turnin Anduin's Plea##32315 |goto Shrine of Seven Stars/2 65.8,32.9
		accept Heart Of The Alliance##32316 |goto Shrine of Seven Stars/2 65.8,32.9
		only if not completedq(32316)
	step
		Walk around the shrine clicking Sha-Touched Footmen
		kill Sha-Touched Footman##68006+
		6 Sha-Touched Footmen saved |q 32316/1
		only if haveq(32316)
	step
		talk King Varian Wrynn##68242
		turnin Heart Of The Alliance##32316 |goto Shrine of Seven Stars/2 67.4,43.5
		only if haveq(32316)
		|next "endg"
	// 2700 Revered
	step
	label "revered1"
		talk Admiral Taylor##67940
		accept The Kun-Lai Expedition##32370 |goto Krasarang Wilds 89.6,32.6
		only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
	step
		talk Fennie Hornswaggle##68741
		Ask her to fly you to Garrash'ar Advance.
		Find Connelly at the Grummle Bazaar |q 32370/1 |goto Krasarang Wilds 88.3,34.3
		only if haveq(32370)
	step
		talk Agent Connelly##68375
		turnin The Kun-Lai Expedition##32370 |goto Kun-Lai Summit 65.0,60.8
		accept A Kor'kron In Our Midst##32377 |goto Kun-Lai Summit 65.0,60.8
		only if not completedq(32371)
	step
		kill Kor'kron Reaver##68367, Kor'Kron Honor Guard##68369, Kor'Kron Scout##68368
		collect Kor'kron Helmet##92763 |n
		collect Kor'kron Armor##92764 |n
		collect Kor'kron Boots##92765 |n
		Once you've collected all 3, Use on them to create a Kor'Kron Disguise. |use Kor'Kron Helmet##92763
		Obtain a Kor'Kron Disguise. |q 32377/1 |goto Kun-Lai Summit 60.9,57.7
		only if haveq(32377)
	step
		Click the auto complete quest box that pops up in the top right corner
		turnin A Kor'kron In Our Midst##32377
		accept Memory Wine##32371
		only if not completedq(32371)
	step
		Use your Kor'kron Disguise |q 32371/1 |use Kor'kron Disguise##92766
		only if haveq(32371)
	step
		click Memory Wine##216625
		Drink Memory Wine |q 32371/2 |goto Kun-Lai Summit 60.4,55.2
		Witness Shan Kien's Past |q 32371/3 |goto Kun-Lai Summit 60.4,55.2
		only if haveq(32371)
	step
		talk Agent Connelly##68375
		turnin Memory Wine##32371 |goto Kun-Lai Summit 65.0,60.8
		only if haveq(32371)
		|next "endg"
	// 6650 Revered
	step
	label "revered2"
		talk Admiral Taylor##67940
		accept The Ruins of Korune##32393 |goto Krasarang Wilds/0 89.6,32.6
		only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
	step
		talk Fennie Hornswaggle##68741
		Ask her to take you to the Ruins of Korune.
		Find Sarannha Skyglaive at the Ruins of Korune |q 32393/1 |goto Krasarang Wilds 88.3,34.3
		only if haveq(32393)
	step
		talk Sarannha Skyglaive##67734
		turnin The Ruins of Korune##32393 |goto Kun-Lai Summit 32.8,26.3
		accept The Divine Bell##32394 |goto Kun-Lai Summit 32.8,26.3
		only if haveq(32393) or not completedq(32394)
	step
		Enter the Ruins of Korune |goto Kun-Lai Summit 33.1,26.7 < 10 |walk
		only if haveq(32394)
	step
		Watch the dialog, then follow _Dreadweaver Avartu_, killing Kor'kron Tomb Guardians afterwards |goto Kun-Lai Summit/20 48.2,41.3
		confirm
		only if haveq(32394)
	step
		Run through the hallway, avoiding the glowing white marks on the ground |goto Kun-Lai Summit/20 36.3,79.3 |c
		only if haveq(32394)
	step
		Go down the steps here |goto Kun-Lai Summit/21 33.6,76.9 |only if walking
		Fight your way up the steps here |goto Kun-Lai Summit/21 65.1,44.8 |only if walking
		kill Dreadweaver Avartu##68504 |q 32394/1 |goto Kun-Lai Summit/21 56.2,31.3
		Recover the Divine Bell |q 32394/2 |goto Kun-Lai Summit/21 60.8,22.4
		only if haveq(32394)
	step
		talk Sarannha Skyglaive##67734
		turnin The Divine Bell##32394 |goto Kun-Lai Summit/21 62.5,25.8
		only if haveq(32394)
		|next "endg" |only if default
		|next |only if repval('Operation: Shieldwall','Revered')>=8665
	// 8665 Revered
	step
	label "revered3"
		talk Admiral Taylor##67940
		accept Darnassus Attacked?##32414 |goto Krasarang Wilds/0 89.6,32.6
		only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
	step
		talk Seamus Goldenkicks##67848 |q 32414/1 |goto Krasarang Wilds/0 89.0,33.6
		Ask him to snd you to Darnassus |goto Darnassus
	step
		talk Lady Jaina Proudmoore##68651
		turnin Darnassus Attacked?##32414 |goto Darnassus/0 39.0,32.7
		accept Tracking the Thieves##32460 |goto Darnassus/0 39.0,32.7
		only if not completedq(32423)
	step
		There will be white orbs that appear
		They will form a path as you follow them
		Track the Thieves |q 32460/1
		only if haveq(32460)
	step
		talk Lady Jaina Proudmoore##68651
		turnin Tracking the Thieves##32460 |goto Teldrassil/0 40.0,50.5
		accept Jaina's Resolution##32416 |goto Teldrassil/0 40.0,50.5
		only if haveq(32460) or not completedq(32416)
	step
		Click the portal to Dalaran |q 32416/1
		|tip It should be next to you
		only if haveq(32416)
	step
		There will be a short cutscene. Afterwards, speak with _Vereesa_
		talk Vereesa Windrunner##68687
		turnin Jaina's Resolution##32416 |goto 924/1 34.2,48.8
		accept Nowhere to Run##32421 |goto 924/1 34.2,48.8
		accept Nowhere to Hide##32419 |goto 924/1 34.2,48.8
		accept Sewer Cleaning##32417 |goto 924/1 34.2,48.8
		accept Unfair Trade##32418 |goto 924/1 34.2,48.8
		accept Cashing Out##32420 |goto 924/1 34.2,48.8
		only if not completedq(32423)
	step
		kill Sunreaver Dragonhawk##68762
		Render 5 Sunreaver Dragonhawks incapable of flying. |q 32421/1 |goto 924/1 70.0,43.5
		only if haveq(32421)
	step
		kill Inkmaster Aelon##68752 |q 32418/1 |goto 41.4,36.2
		only if haveq(32418)
	step
		kill Sintharia Cinderweave##68755 |q 32418/4 |goto 36.7,33.4
		only if haveq(32418)
	step
		kill Gearmage Astalon |q 32418/3 |goto 39.3,25.3
		only if haveq(32418)
	step
		kill Tolyria##68754 |q 32418/2 |goto 43.9,26.3
		only if haveq(32418)
	step
		kill Magister Brasael##68751 |q 32420/1 |goto 53.5,15.6
		only if haveq(32420)
	step
		Slay 16 Sunreavers in the Sunreaver's Sanctuary |q 32419/1 |goto 58.7,31.9
		only if haveq(32419)
	step
		Jump down the well here |goto 48.0,32.6 < 10 |walk
		Slay 12 Sunreavers in the Dalaran Sewers |q 32417/1 |goto 924/2 50.2,47.0
		only if haveq(32417)
	step
		talk Vereesa Windrunner##68687
		turnin Nowhere to Run##32421 |goto 924/1 34.3,48.6
		turnin Nowhere to Hide##32419 |goto 924/1 34.3,48.6
		turnin Sewer Cleaning##32417 |goto 924/1 34.3,48.6
		turnin Unfair Trade##32418 |goto 924/1 34.3,48.6
		turnin Cashing Out##32420 |goto 924/1 34.3,48.6
		accept What Had To Be Done##32423 |goto 924/1 34.3,48.6
		only if not completedq(32423)
	step
		talk King Varian Wrynn##68690
		turnin What Had To Be Done##32423 |goto Krasarang Wilds 87.8,33.0
		only if haveq(32423)
		|next "endg"
	// 15,500 Revered
	step
	label "revered4"
		talk Admiral Taylor##67940
		accept The Harmonic Mallet##32355 |goto Krasarang Wilds/0 89.6,32.6
		only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
	step
		talk Fennie Hornswaggle##68741
		Ask her to take you to the Valley of Emperors
		Find Anduin at the Tomb of Conquerors |q 32355/1 |goto Krasarang Wilds 88.3,34.3
		only if haveq(32355) or not completedq(32335)
	step
		talk Anduin Wrynn##68004
		turnin The Harmonic Mallet##32355 |goto Kun-Lai Summit 53.0,46.4
		accept The Monkey King##32321 |goto Kun-Lai Summit 53.0,46.4
		only if not completedq(32335)
	step
		Talk with Anduin Wrynn |q 32321/1 |goto Kun-Lai Summit 53.0,46.4
		Ask him why he is here
		only if haveq(32321) or not completedq(32335)
	step
		Enter the Tomb of Conquerors |goto Kun-Lai Summit/17 88.1,54.6 < 5 |walk
		only if haveq(32321) or not completedq(32335)
	step
		Follow Anduin through the Tomb
		Escort Anduin Wrynn |q 32321/2
		only if haveq(32321) or not completedq(32335)
	step
		Anduin will cast a spell, releasing _The Monkey King_ as well as _The Jade Warlord_
		kill The Jade Warlord##68005
		Release The Monkey King |q 32321/3
		only if haveq(32321) or not completedq(32335)
	step
		talk The Monkey King##68003
		|tip He should be standing at the center of the room next to Anduin.
		turnin The Monkey King##32321
		accept The First Riddle: Mercy##32332
		accept The Second Riddle: Fellowship##32333
		accept The Third Riddle: Strength##32334
		only if not completedq(32335)
	step
		Go down the ramp here |goto Kun-Lai Summit/0 68.9,45.5 < 5 |only if walking
		only if haveq(32334) or not completedq(32335)
	step
		talk The Monkey King##68538
		Tell him that you challange him.
		Challenger defeated |q 32334/1 |goto Kun-Lai Summit/0 70.1,45.6
		only if haveq(32334) or not completedq(32335)
	step
		Ring the Gong of Fellowship. |q 32333/1 |goto The Jade Forest 33.4,34.2
		kill Sam the Wise##64694 |q 32333/2 |goto The Jade Forest 33.4,34.2
		Click the keg that appears after you defeat him.
		collect The Metal Brew##92557 |q 32333/3 |goto The Jade Forest 33.4,34.2
		only if haveq(32333) or not completedq(32335)
	step
		click Untamed Amber##216360
		kill Untamed Ambertail##68117
		collect Untamed Amber##92539 |q 32332/1 |goto Dread Wastes 65.7,71.7
		only if haveq(32332) or not completedq(32335)
	step
		talk The Monkey King##68538
		turnin The First Riddle: Mercy##32332 |goto Krasarang Wilds 88.8,31.8
		turnin The Second Riddle: Fellowship##32333 |goto Krasarang Wilds 88.8,31.8
		turnin The Third Riddle: Strength##32334 |goto Krasarang Wilds 88.8,31.8
		accept The Greatest Prank##32335 |goto Krasarang Wilds 88.8,31.8
		only if not completedq(32335)
	step
		Listen to The Monkey King's story |q 32335/1
		only if haveq(32335) or not completedq(32335)
	step
		talk Anduin Wrynn##68004
		turnin The Greatest Prank##32335 |goto Krasarang Wilds/0 89.0,31.7
		only if haveq(32335)
		|next "endg" |only if default
		|next |only if repval('Operation: Shieldwall','Revered')>=18500
	// 18,500 Revered
	step
	label "revered5"
		talk The Monkey King##68538
		accept The Handle##32336 |goto Krasarang Wilds 88.8,31.8
		accept The Head##32337 |goto Krasarang Wilds 88.8,31.8
		accept The Harmonic Ointment##32338 |goto Krasarang Wilds 88.8,31.8
		only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
	step
		talk Chief Ingoo Ingoo XVII##68545
		Tell him that's the real monkey king
		kill Chief Ingoo Ingoo XVII##68545
		collect Mallet Handle##92561 |q 32336/1 |goto Krasarang Wilds 43.6,86.0
		only if haveq(32336)
	step
		talk The Monkey King##68544
		turnin The Handle##32336 |goto Krasarang Wilds/0 43.4,86.6
		only if not completedq(32337) and not completedq(32338) and not completedq(32336)
	step
		talk Royal Finder##68554
		Find the Royal Finder |q 32337/1 |goto Valley of the Four Winds 23.0,30.6
		only if haveq(32337)
	step
		kill Skiggit##68547
		|tip Inside of the tunnel entrance.
		click Mallet Head##216421
		collect Mallet Head##92560 |q 32337/2 |goto 24.8,28.2
		only if haveq(32337)
	step
		kill The Blade##61010
		collect Harmonic Ointment##92562 |q 32338/1 |goto Townlong Steppes 62.6,34.0
		only if haveq(32338)
	step
		talk The Monkey King##68538
		turnin The Head##32337 |goto Krasarang Wilds 88.8,31.8
		turnin The Harmonic Ointment##32338 |goto Krasarang Wilds 88.8,31.8
		only if haveq(32337) or haveq(32338)
		|next "endg" |only if default
		|next "exalted" |only if repval('Operation: Shieldwall','Exalted')>=1
	// Exalted
	step
	label "exalted"
		talk Admiral Taylor##67940
		accept The Bell Speaks##32400 |goto Krasarang Wilds/0 89.6,32.6
		only if repval('Operation: Shieldwall','Exalted')>=1 and not completedq(32455)
	step
		talk Fennie Hornswaggle##68741
		Ask her to take you to Emperor's Reach
		Find Anduin at Emperor's Reach |q 32400/1 |goto Krasarang Wilds 88.3,34.3
		only if haveq(32400)
	step
		talk Anduin Wrynn##68939
		turnin The Bell Speaks##32400 |goto Kun-Lai Summit 56.4,34.4
		accept Breath of Darkest Shadow##32401 |goto Kun-Lai Summit 56.4,34.4
		only if haveq(32400) and not completedq(32401) and not completedq(32455)
	step
		Wait until the Horde become afflicted by the Sha
		kill Kor'kron Juggernaut##68940
		Once the Juggernauts are defeated, Ishi will get possessed
		kill Ishi##68936 |q 32401/1 |goto Kun-Lai Summit 55.9,32.5
		Destroy the Divine Bell |q 32401/2 |goto Kun-Lai Summit 55.9,32.5
		only if haveq(32401)
	step
		talk Anduin Wrynn##68987
		turnin Breath of Darkest Shadow##32401 |goto Kun-Lai Summit 55.9,32.5
		accept The Silence##32455 |goto Kun-Lai Summit 55.9,32.5
		only if not completedq(32455)
	step
		Use your _Alliance Flare Gun_ |use Alliance Flare Gun##93362 |q 32455/1
		only if haveq(32455)
	step
		talk Admiral Taylor##69090
		turnin The Silence##32455 |goto Krasarang Wilds 87.7,33.1
		only if haveq(32455)
	step
	label "endg"
		talk Agent Malley##69059
		buy 1 Grand Commendation of Operation: Shieldwall##93231 |n |goto Krasarang Wilds 89.6,33.4
		Use the Commendation of Operation: Shieldwall you just purchased |complete ZGV:GetReputation("Operation: Shieldwall").hasBonus |use Grand Commendation of Operation: Shieldwall##93231
		only if rep("Operation: Shieldwall")>=Revered
	step
		You have reached the end of the guide
		Click here to go back to the start |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Kirin Tor Offensive Dailies Run",{
	meta={goldtype="daily",levelreq=32,gold=288,time=75,icon="Interface\\ICONS\\Achievement_Reputation_Kirintor_Offensive"},
	description="\nThis guide will take you through the bonus quests for the Kirin Tor.",
	},[[
	step
	label "start"
		Moving to the Kirin Tor Offensive Dailies |next "dailies" |only if default
		Moving to the Kirin Tor Offensive prequests. |next "prequests" |only if not completedq(32681)
		Moving to the First Scenario |next "scenario1" |only if not completedq(32644)
		Moving to the Second Scenario |next "scenario2" |only if completedq(32644) and not completedq(32654)
		Moving to the Third Scenario |next "scenario3" |only if completedq(32654) and not completedq(32652)
		Moving to the Fourth Scenario |next "scenario4" |only if completedq(32652) and not completedq(32655)
		Moving to the Fifth Scenario |next "post5" |only if completedq(32655) and not completedq(32656)
	///prequests
	step
	label "prequests"
		talk Lyalia##64610
		accept Thunder Calls##32679 |goto Vale of Eternal Blossoms 83.9,58.6
	step
		talk Vereesa Windrunner##70360
		turnin Thunder Calls##32679 |goto Townlong Steppes 49.9,69.0
		accept The Storm Gathers##32681 |goto Townlong Steppes 49.9,69.0
	step
		talk Vereesa Windrunner##70360
		Tell her that you are ready to go.
		Speak with Vereesa |q 32681/1|goto 49.9,69.0
		Isle of Thunder discovered |q 32681/2 |goto 49.9,69.0
	step
		talk Lady Jaina Proudmoore##67992
		turnin The Storm Gathers##32681 |goto Isle of Thunder 34.6,89.5
		|next "start"
	//stage2
	step
	label "scenario1"
		talk Lady Jaina Proudmoore##67992
		accept The Assault on Shaol'mara##32644 |goto Isle of Thunder/0 34.6,89.4
	step
		talk Lady Jaina Proudmoore##67992
		Tell her you are ready! |q 32644/1 |goto 34.6,89.4
		Enter the _The Assault on Shaol'mara_ Scenario |goto Isle of Thunder Scenario |noway |c
	step
		Enter the Assault on Shaol'mara Scenario |goto Isle of Thunder Scenario |noway |c
	step
		clicknpc Silver Covenant Hippogryph##70234 |goto Isle of Thunder Scenario 35.0,89.8
		scenariogoal 22869
	step
		scenariogoal 22654
	step
		scenariostage 1
	step
		kill Shaol'mara Beastcaller##70286+, Shaol'mara Raptor##70288+
		scenariogoal 22655 |goto 52.4,59.3
	step
		scenariostage 2
	step
		kill Zandalari Barricade##69515+, Zeb'tula Spearanger##69518+, Shaol'mara Stoneshield##70291+
		scenariogoal 22656 |goto 58.0,65.9
	step
		scenariostage 3
	step
		kill Anki##69531, Beastcaller Pakutesh##69532
		|tip Pakutesh will jump off of Anki once he is defeated.
		scenariogoal 22870 |goto 59.6,68.3
		scenariogoal 22871 |goto 59.6,68.3
	step
		scenariostage 4
	step
		kill Arcanital Mara'kah##69538
		While fighting Arcanital Mara'kah, the mask puts down yellow protection fields
		Position yourself so that you are IN the yellow field, while Mara'kah is OUT of the field
		scenariogoal 22872 |goto 64.3,73.0
	step
		scenariostage 5
	step
		talk Lady Jaina Proudmoore##67992
		turnin The Assault on Shaol'mara##32644 |goto Isle of Thunder/0 63.2,72.2
		|next "start"
	//stage3
	step
	label "scenario2"
		talk Lady Jaina Proudmoore##67992
		accept Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.2,72.2
	step
		talk Lady Jaina Proudmoore##67992
		Tell her you're ready to tear down the wall! |q 32654/1 |goto Isle of Thunder/0 63.2,72.2
		Enter the _Tear Down This Wall!_ Scenario |goto Isle of Thunder Scenario |noway |c
	step
		Click the _Heavy Explosive_
		Acquire the Heavy Explosives
		scenariogoal 22696 |goto Isle of Thunder Scenario 48.4,50.9
	step
		scenariostage 1
	step
		talk Vereesa Windrunner##69949
		Deliver the explosive to Vereesa
		scenariogoal 22700 |goto 55.8,57.7
	step
		scenariostage 2
	step
		Click the Heavy Explosives to detonate them
		scenariogoal 22702 |goto 56.3,56.1
	step
		scenariostage 3
	step
		Follow Vereesa Windrunner along the path
		kill War-God Al'chukla##69755+ |scenariogoal 23004
		Secure the lower city |q 32654/2 |goto 54.7,45.8
	step
		scenariostage 4
	step
		Click the Portal to the Isle of Thunder |goto Isle of Thunder/0 64.1,72.5 < 5 |walk
		talk Lady Jaina Proudmoore##67992
		turnin Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.2,72.2
		|next "start"
	//stage4
	step
	label "scenario3"
		talk Lady Jaina Proudmoore##67992
		accept To the Skies!##32652 |goto Isle of Thunder/0 63.2,72.2
	step
		talk Lady Jaina Proudmoore##67992
		Tell her you're ready! |q 32652/1 |goto Isle of Thunder/0 63.2,72.2
		Enter the _To the Skies!_ Scenario |goto Isle of Thunder Scenario |noway |c
	step
		clicknpc Thunderwing##70208
		Mount the Thunderwing
		scenariogoal 22666 |goto Isle of Thunder Scenario 63.3,74.3
	step
		Approach the Mine Entrace
		scenariogoal 22701
	step
		scenariostage 1
	step
		kill Zandalari Beastcaller##69521+
		You will be attacked by _Zandalari Beastcallers_
		Use the icon that appears at the bottom of your screen to jump to the enemy Thunderwing and kill them
		scenariogoal 22668
	step
		scenariostage 2
	step
		kill Beastmaster Horaki##69559+
		scenariogoal 22669 |goto 48.2,25.3
	step
		scenariostage 3
	step
		talk Taoshi##69810
		Tell her lets go
		scenariogoal 22738 |goto Isle of Thunder Scenario 49.3,26.0
	step
		scenariostage 4
	step
		Watch _Taoshi_ get rid of the Cave-in
		scenariogoal 22740
	step
		Make your way to the Mine Entrance
		scenariogoal 22741 |goto Isle of Thunder Scenario/1 34.8,55.1
	step
		scenariostage 5
	step
		kill Slavemaster Shiaxu##69923
		scenariogoal 22672
		Unlock the Mine door
		scenariogoal 22739
		Assault the Lightning Vein Mines |q 32652/2 |goto 28.7,68.8
	step
		scenariostage 6
	step
		Click the _Portal to the Isle of Thunder_ |goto Isle of Thunder/0 64.1,72.5 < 10 |walk
		talk Lady Jaina Proudmoore##67992
		turnin To the Skies!##32652 |goto Isle of Thunder 63.2,72.2
		Depending on your current phase, she can also be found here [63.2,74.0]
		|next "start"
	//stage5
	step
	label "scenario4"
		talk Taoshi##70297
		accept A Bold Idea##32655 |goto Isle of Thunder/0 63.2,73.9
	step
		talk Taoshi##70297 |goto Isle of Thunder/0 63.2,73.9
		Tell her let's break into the shipyard |goto Isle of Thunder Scenario 62.5,54.6 |noway |c
	step
		clicknpc Thunderwing##69458
		Intercept the Zandalari Patrol
		scenariogoal 22661 |goto 63.3,54.4
	step
		scenariostage 1
	step
		While on the _Thunderwing_ use your ability on the toolbar to disable Sentry Totems
		scenariogoal 23007
	step
		scenariostage 2
	step
		Follow _Taoshi_ around the ship and sneak up behind the _Veteran Wingriders_ she marks for you
		When the enemies are inside your red circle, use the _Knock Out_ ability that pops up on your screen
		scenariogoal 23003
		scenariogoal 22663
	step
		scenariostage 3
	step
		kill Captain Halu'kal##69482+
		scenariogoal 22664 |goto 67.2,47.3
	step
		scenariostage 4
	step
		Make your way up the pathway here, avoiding patrols and sentry towers
		There will be big blue circles on the ground representing what they can see
		scenariogoal 22665 |goto 59.2,43.9
	step
		scenariostage 5
	step
		kill Hu'seng the Gatekeeper##69483
		scenariogoal 22667 |goto 59.2,43.8
		scenariogoal 22810 |goto 59.2,43.8
	step
		scenariostage 6
	step
		Click Deactivated Access Generator
		scenariogoal 22809 |goto 58.4,42.8
	step
		scenariostage 7
	step
		Click the portal to the Violet Rise |goto 57.8,41.9 < 10 |walk
		talk Lady Jaina Proudmoore##67992
		turnin A Bold Idea##32655 |goto Isle of Thunder/0 63.2,72.2
		|next "start"
	//stage5end
	step
	label "post5"
		talk Lady Jaina Proudmoore##67992
		accept The Fall of Shan Bu##32656 |goto Isle of Thunder/0 63.2,72.2
		Talk to her to queue up for the solo scenario
		Enter The Fall of Shan Bu Scenario |goto Isle of Thunder Scenario |noway |c
	step
		talk Vereesa Windrunner##69615
		Tell her that you're ready |scenariogoal 22742 |goto Isle of Thunder Scenario 59.0,43.8
	step
		scenariogoal 22799
		kill 14 Zandalari Stoneshield##69527+ |scenariogoal 22675 |goto Isle of Thunder Scenario 58.1,41.3
		scenariostage 1 |override
	step
		kill 2 Palace Gatekeeper##69510+ |scenariogoal 22685 |goto Isle of Thunder Scenario 57.9,41.0
		scenariostage 2 |override
	step
		scenariogoal 22807 |goto Isle of Thunder Scenario 59.3,38.9
	step
		kill Quilen Guardian##69506+, Zandalari Stoneshield##69865+, Shan'ze Electrocutioner##69525+ |scenariogoal 22734 |goto Isle of Thunder Scenario 59.9,38.2
		scenariostage 3 |override
	step
		kill Shan Bu##69534+, Onyx Stormclaw##69580+ |scenariogoal 22683 |goto Isle of Thunder Scenario 60.0,37.8
		scenariostage 4 |override
	step
		Click the Portal to the Isle of Thunder |goto Isle of Thunder/0 64.1,72.5 < 5 |walk
		talk Lady Jaina Proudmoore##67992
		turnin The Fall of Shan Bu##32656 |goto Isle of Thunder/0 63.2,72.2
		|next "start"
	//dailies
	step
	label "dailies"
		clicknpc Assignment Map##70567 |goto 63.2,72.2
		Click PvE at the assignment screen |questchoice 26 64 -- PvE
		only if completedq(32644)
	step
		talk Lady Jaina Proudmoore##67992
		accept Za'Tual##32733 |goto Isle of Thunder/0 63.2,72.2
		Click here when no more quests are available |confirm --noquest
		only if completedq(32644)
	step
		talk Vereesa Windrunner##67993
		accept The Court of Bones##32731 |or 2 |goto 63.2,72.1
		accept The Shuddering Moor##32574 |or 2 |goto 63.2,72.1
		accept The Zandalari Colossus##32575 |or 2 |goto 63.2,72.1
		Click here when no more quests are available |confirm --noquest
		only if completedq(32644)
	step
		talk Warmage Yurias##67994
		accept A Wing to Fly On##32571 |goto 63.5,73.6
		Click here when no more quests are available |confirm --noquest
		only if completedq(32644)
	step
		talk Captain Elleane Wavecrest##67995
		accept Ihgaluk Crag##32732 |or 2 |goto 62.7,73.6
		accept The Sleepless Legion##32572 |or 2 |goto 62.7,73.6
		accept Enemies Beneath the Tower##32573 |or 2 |goto 62.7,73.6
		Click here when no more quests are available |confirm --noquest
		only if completedq(32644)
	// Ihgaluk Crag
	step
		talk Archmage Modera##67996
		turnin Ihgaluk Crag##32732 |goto Isle of Thunder 55.7,74.4
		accept Subtle Encouragement##32606 |goto Isle of Thunder 55.7,74.4
		accept De-Constructed##32537 |goto Isle of Thunder 55.7,74.4
		accept Manipulating the Saurok##32536 |goto Isle of Thunder 55.7,74.4
		accept The Skumblade Threat##32535 |goto Isle of Thunder 55.7,74.4
		Click here when no more quests are available |confirm --noquest
		only if completedq(32644) and (haveq(32732) or completedq(32732))
	step
		talk Lyalia##69675
		accept The Residents of Ihgaluk##32545 |goto 55.9,74.4
		Click here when no more quests are available |confirm --noquest
		only if completedq(32732)
	step
		talk Sanitation Sorcerer Stephen Litmatch##69677
		accept The Creeping Carpet of Ihgaluk##32547 |goto 55.5,74.5
		accept Just Some Light Clean-Up Work##32546 |goto 55.5,74.5
		accept Left To Rot##32548 |goto 55.5,74.5
		Click here when no more quests are available |confirm --noquest
		only if completedq(32732) and completedq(32644)
	step
		talk Image of Archmage Vargoth##69678
		accept Skin of the Saurok##32549 |goto Isle of Thunder 55.6,74.4
		|tip NOTE: This quest will give you the ability to disguise yourself as a saurok. This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag. If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
		only if not completedq(32549)
	step
		kill Skumblade Filthmonger##69228+, Skumblade Brute##69338+, Skumblade Scavenger##69227+ |q 32549/1 |goto Isle of Thunder 47.2,79.6
		only if haveq(32549)
	step
		Click the _Quest Complete_ Box:
		turnin Skin of the Saurok##32549
		only if haveq(32549)
	stickystart "moguweapons"
	stickystart "crushroach"
	stickystart "fetidmeat"
	step
		kill Quivering Filth##69251+
		Disperse 75 Filth |q 32546/1 |goto Isle of Thunder 52.7,80.2
		only if haveq(32546)
	step
		talk Magister Lyanis##69684
		|tip He's in a magic bubble inside the cave here, you will need to approach him in order to see him.
		Speak with Magister Lyanis |q 32536/2 |goto 51.6,84.4
		only if haveq(32536)
	step
		kill 1 Skumblade Brute##69338+ |q 32545/1 |goto 51.3,78.8
		only if haveq(32545)
	step
		talk Magistrix Sanal##69686
		|tip She's in a magic bubble, you will need to approach her in order to see her. If you have trouble finding her, look for the moving streaks of light.
		Speak with Magistrix Sanal |q 32536/3 |goto 50.8,73.4
		only if haveq(32536)
	step
		map Isle of Thunder
		path follow loose;loop;ants straight
		path 51.8,74.4	53.3,77.0	54.3,79.3
		path 55.1,82.2	55.1,82.2	55.3,84.2
		path 54.9,86.7	53.9,88.3	52.4,90.4
		path 50.8,90.5	49.2,89.5	49.4,85.8
		path 49.8,84.0	49.4,82.0	49.2,79.8
		path 50.1,78.4	50.4,77.1	50.6,75.8
		clicknpc Distressed Sunreaver Construct##69290
		|tip It runs around in a large area, follow the path if you have trouble finding it.
		Recover Distressed Construct |q 32537/3
		only if haveq(32537)
	step
		kill 1 Skumblade Saur-Priest##69229+ |q 32545/2 |goto Isle of Thunder 49.8,76.2
		|tip He's on top of the mountain on a cliffside.
		only if haveq(32545)
	step
		kill 1 Skumblade Seadragon##69226+ |q 32545/3 |goto 48.0,88.7
		only if haveq(32545)
	step
		clicknpc Buried Sunreaver Construct##69288
		Recover Buried Construct |q 32537/2 |goto Isle of Thunder/0 53.6,91.2
		only if haveq(32537)
	step
		clicknpc Malfunctioning Sunreaver##69289
		Recover Malfunctioning Construct |q 32537/4 |goto Isle of Thunder/0 46.6,71.9
		only if haveq(32537)
	step
		clicknpc Disabled Sunreaver Construct##69439
		Recover Disabled Construct |q 32537/1 |goto Isle of Thunder/0 44.2,81.8
		only if haveq(32537)
	step
		talk Magister Yalis##69682
		|tip He's in a magic bubble, you will need to approach him in order to see him. If you have trouble finding him, look for the moving streaks of light.
		Speak with Magister Yalis |q 32536/1 |goto Isle of Thunder/0 45.1,84.0
		only if haveq(32536)
	step
		kill Skumblade Seadragon##69226 |q 32545/3 |goto Isle of Thunder 53.2,90.0
		only if haveq(32545)
	step
		talk Buried Silver Covenant Construct##69688
		Recover Buried Construct |q 32537/2 |goto Isle of Thunder/0 53.6,91.2
		only if haveq(32537)
	step
	label "crushroach"
		Ride around the area, stepping on top of roaches |only if haveq(32547)
		75 Ihgaluk Roaches crushed |q 32547/1 |goto 45.6,76.5
		You can find additional roaches around [49.1,79.4].
		only if haveq(32547)
	step
	label "fetidmeat"
		kill 3 Fetid Meat Pile##69247 |q 32548/1 |only if haveq(32548) |goto Isle of Thunder 50.1,78.0
		only if haveq(32548)
	step
	label "moguweapons"
		kill Skumblade Fleshripper##69210+, Skumblade Scavenger##69227+, Skumblade Filthmonger##69228+
		kill 10 Skumblade Saurok |q 32535/1 |only if haveq(32535) |goto Isle of Thunder 52.3,82.6
		Click the _Plant Mogu Weapon_ icon that appears at the center of your screen |only if haveq(32606)
		Plant 9 Mogu Weapons on Skumblade corpses |q 32606/1 |only if haveq(32606) |goto Isle of Thunder 52.3,82.6
		only if haveq(32606) or haveq(32535) or haveq(32548)
	//VH Daily
	step
		Follow the Coordinates on the Map here.
		|tip The Pterrorwing will be flying and landing around these 6 different locations.
		clicknpc Wild Pterrorwing Hatchling##69428
		Recover a Wild Thunder Ptrerrorwing Hatchling |q 32571/1 |goto Isle of Thunder/0 54.6,57.4
		goto 53.8,65.1
		goto 49.8,64.9
		goto 52.7,60.3
		goto 51.1,54.9
		goto 53.4,52.2
		goto 54.6,57.4
		only if haveq(32571)
	step
		kill Shan'ze Animator##70069+, Shan'ze Animator##70069+, Shan'ze Bloodseeker##69431+ |only if haveq(32573)
		kill 7 Diremoor Shan'ze mogu |q 32573/1 |only if haveq(32573) |goto Isle of Thunder 49.5,65.4
		kill 6 Animated Warrior##67473+ |q 32572/1 |only if haveq(32572) |goto Isle of Thunder 49.5,65.4
		|tip If you lure the enemies into the squad of soldiers here, they will do the killing for you.
		only if haveq(32572) or haveq(32573)
	step
		kill Zandalari Colossus##69405 |q 32575/1 |goto Isle of Thunder/0 42.3,64.0
		|tip It patrols around this half of the Diremoor path. Some searching may be necessary.
		only if haveq(32575)
	step
		kill 1 Mighty Devilsaur##69406 |q 32574/1 |goto Isle of Thunder/0 50.5,51.4
		|tip It patrols around this half of the Diremoor path. Some searching may be necessary.
		only if haveq(32574)
	// Za'Tual
	step
		talk Archmage Lan'dalock##70517
		turnin Za'Tual##32733 |goto Isle of Thunder/0 42.2,66.3
		accept Harbingers of the Loa##32540 |goto Isle of Thunder/0 42.2,66.3
		accept Dangers of Za'Tual##32543 |goto Isle of Thunder/0 42.2,66.3
		accept Surgical Strike##32542 |goto Isle of Thunder/0 42.2,66.3
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32644) and (haveq(32733) or completedq(32733))
	step
		talk Dalvin Jaacor##69674
		accept Dark Offerings##32539 |goto 42.3,66.3
		accept Heinous Sacrifice##32538 |goto 42.3,66.3
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32733)
	step
		talk Ako##69673
		accept Pterrible Ptorment##32544 |goto 42.1,66.5
		accept Preventing a Future Threat##32541 |goto 42.1,66.5
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32733)
	stickystart "zandaoffering"
	stickystart "zandaspirit"
	stickystart "zandamobs"
	step
		click Tec'uat's Sacrificial Altar##218425
		Tec'uat's Altar destroyed |q 32538/2 |goto Isle of Thunder 39.8,65.3
		only if haveq(32538)
	step
		kill Zandalari Arcweaver##69224+
		Tormented Skyscreamer freed |q 32544/1 |goto Isle of Thunder/0 41.1,69.4
		only if haveq(32544)
	step
		click Pa'chek's Sacrificial Altar##218426
		Pa'chek's Altar destroyed |q 32538/3 |goto Isle of Thunder 38.7,78.6
		only if haveq(32538)
	step
		click Cha'lat's Sacrificial Altar##218424
		Cha'lat's Altar destroyed |q 32538/1 |goto 33.9,76.0
		only if haveq(32538)
	step
		kill Zandalari Arcanital##69281, Zandalari Spiritweaver##69285
		kill 2 Harbingers of the Loa |q 32540/1 |goto 36.5,70.0
		You can wait for this one to respawn, or find another at [38.9,76.5]
		only if haveq(32540)
	step
		Run over _Hatchling Skyscreamers_ to frighten them.
		Frighten #12# Hatchling Skyscreamers |q 32541/1 |goto Isle of Thunder 30.9,77.5
		only if haveq(32541)
	step
	label "zandaoffering"
		click Zandalari Offering##216991
		Destroy 6 Zandalari Offerings |q 32539/1 |goto Isle of Thunder/0 40.1,72.4
		More offerings can be found around [40.6,74.1]
		only if haveq(32539)
	step
	label "zandaspirit"
		kill 3 Zandalari Beastcaller##69065+ |q 32542/1 |goto Isle of Thunder 35.3,75.8
		kill 3 Zandalari Jaguar Warrior##69171+ |q 32542/2 |goto Isle of Thunder 35.3,75.8
		kill 3 Zandalari Spiritbinder##69225+ |q 32542/3 |goto Isle of Thunder 35.3,75.8
		only if haveq(32542)
	step
	label "zandamobs"
		kill Zandalari Stoneshield##69223+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+, Zandalari Jaguar Warrior##69171+, Zandalari Spiritbinder##69225+
		Kill #12# Trolls in Za'Tual |q 32543/1 |goto 40.7,74.2
		only if haveq(32543)
	// The Court of Bones
	step
		talk Narasi Snowdawn##67997
		turnin The Court of Bones##32731 |goto Isle of Thunder/0 40.2,59.6
		accept Soul Surrender##32526 |goto Isle of Thunder/0 40.2,59.6
		accept Grave Circumstances##32527 |goto Isle of Thunder/0 40.2,59.6
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32731) or completedq(32731)
	step
		talk Danara Silverglass##69668
		accept Rise No More!##32532 |goto 40.1,59.3
		accept Ashes of the Enemy##32525 |goto 40.1,59.3
		accept Stone Cold##32533 |goto 40.1,59.3
		accept Into the Crypts##32528 |goto 40.1,59.3
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32731) or completedq(32731)
	step
		talk Vylene Amaranth##69670
		accept The Call of Thunder##32529 |or |goto 40.1,59.1
		accept The Bloodletter##32530 |or |goto 40.1,59.1
		accept The Conquest of Stone##32531 |or |goto 40.1,59.1
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32731) or completedq(32731)
	stickystart "shanzegrave"
	step
		click Tormentor's Cage##217768
		|tip They will be all over the Court of Bones, usually close to walls. |only if haveq(32526)
		Rescue 6 Scouts  |q 32526/1 |goto 36.9,53.0
		only if haveq(32526)
	step
		kill Kaida the Bloodletter##69250 |q 32530/1 |goto Isle of Thunder/0 35.0,47.9
		only if haveq(32530)
	step
		kill Shan'ze Thundercaller##69264+
		|tip You will need to just down in the water here.
		Shan'ze Thundercallers' ritual stopped |q 32529/1 |goto Isle of Thunder/0 33.0,56.7
		only if haveq(32529)
	step
		kill Shan'ze Soulripper##69903+
		Disrupt the Ancient Stone Conqueror Ritual |q 32531/1 |goto Isle of Thunder/0 35.1,63.8
		only if haveq(32531)
	step
		Use your Incantation of Gura here |use Incantation of Gura##93803
		kill 1 Gura the Reclaimed##69241 |q 32528/1 |goto Isle of Thunder 36.8,56.5 |subzone Hall of the Exalted
		only if haveq(32528)
	step
	label "shanzegrave"
		kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+ |q 32527/1 |only if haveq(32527) |goto Isle of Thunder 35.5,52.3
		|tip The Thundercallers will cast Chain Lightning which places a circular spell under your character that you will need to move out of to avoid heavy damage.
		kill Risen Ancestor##69237+ |q 32532/1 |only if haveq(32532) |goto Isle of Thunder 35.5,52.3
		kill Grave Guardian##69240+ |q 32533/1 |only if haveq(32533) |goto Isle of Thunder 35.5,52.3
		|tip They sit as stone statues, you need to activate them first.
		clicknpc Mummified Remains##69331+ |only if haveq(32525)
		Use your _Blessed Torch_ on Mummified Remains |use Blessed Torch##93751 |only if haveq(32525)
		Burn #8# Mummified Remains |q 32525/1 |only if haveq(32525) |goto Isle of Thunder 35.5,52.3
		only if haveq(32532) or haveq(32526) or haveq(32527) or haveq(32533)
	// Court of Bones
	step
		talk Vylene Amaranth##69670
		turnin The Call of Thunder##32529 |goto 40.1,59.1
		turnin The Bloodletter##32530 |goto 40.1,59.1
		turnin The Conquest of Stone##32531 |goto 40.1,59.1
	step
		talk Danara Silverglass##69668
		turnin Rise No More!##32532 |goto 40.1,59.3
		turnin Into the Crypts##32528 |goto 40.1,59.3
		turnin Ashes of the Enemy##32525 |goto 40.1,59.3
		turnin Stone Cold##32533 |goto 40.1,59.3
	step
		talk Narasi Snowdawn##67997
		turnin Soul Surrender##32526 |goto Isle of Thunder/0 40.2,59.6
		turnin Grave Circumstances##32527 |goto Isle of Thunder/0 40.2,59.6
	step
		talk Narasi Snowdawn##67997
		accept The Beast Pens##32567 |goto Isle of Thunder/0 40.2,59.6
		accept Imposing Threat##32581 |goto Isle of Thunder/0 40.2,59.6
		Click here when no more quests are available |confirm --|noquest
		|next "beast_pens" |only if haveq(32567)
		only if completedq(32731)
	// Ihgaluk Crag Turnins
	step
		talk Ako##69673
		turnin Pterrible Ptorment##32544 |goto 42.1,66.5
		turnin Preventing a Future Threat##32541 |goto 42.1,66.5
	step
		talk Dalvin Jaacor##69674
		turnin Dark Offerings##32539 |goto 42.3,66.3
		turnin Heinous Sacrifice##32538 |goto 42.3,66.3
	step
		talk Archmage Lan'dalock##70517
		turnin Harbingers of the Loa##32540 |goto Isle of Thunder/0 42.2,66.3
		turnin Dangers of Za'Tual##32543 |goto Isle of Thunder/0 42.2,66.3
		turnin Surgical Strike##32542 |goto Isle of Thunder/0 42.2,66.3
		accept Among the Bones##32578 |goto Isle of Thunder/0 42.2,66.3
		accept No Time To Rest##32568 |goto Isle of Thunder/0 42.2,66.3
		accept Encroaching Force##32580 |goto Isle of Thunder/0 42.2,66.3
		accept The Beast Pens##32567 |goto Isle of Thunder/0 42.2,66.3
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32733) or completedq(32733)
	step
		talk Sanitation Sorcerer Stephen Litmatch##69677
		turnin The Creeping Carpet of Ihgaluk##32547 |goto Isle of Thunder 55.5,74.4
		turnin Just Some Light Clean-Up Work##32546 |goto Isle of Thunder 55.5,74.4
		turnin Left To Rot##32548 |goto Isle of Thunder 55.5,74.4
		only if completedq(32732)
	step
		talk Lyalia##69675
		turnin The Residents of Ihgaluk##32545 |goto Isle of Thunder 55.9,74.4
		only if completedq(32732)
	step
		talk Archmage Modera##67996
		turnin Subtle Encouragement##32606 |goto Isle of Thunder 55.8,74.4
		turnin The Skumblade Threat##32535 |goto Isle of Thunder 55.8,74.4
		turnin De-Constructed##32537 |goto Isle of Thunder 55.8,74.4
		turnin Manipulating the Saurok##32536 |goto Isle of Thunder 55.8,74.4
		only if haveq(32732) or completedq(32732)
	step
		talk Archmage Modera##67996
		accept Among the Bones##32578 |goto Isle of Thunder 55.8,74.4
		accept No Time To Rest##32568 |goto Isle of Thunder 55.8,74.4
		accept Imposing Threat##32581 |goto Isle of Thunder 55.8,74.4
		accept Encroaching Force##32580 |goto Isle of Thunder 55.8,74.4
		accept The Beast Pens##32567 |goto Isle of Thunder 55.8,74.4
		accept Competing Magic##32579 |goto Isle of Thunder 55.8,74.4
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32732) or completedq(32732)
	// Violet Rise Turnin
	step
		talk Captain Elleane Wavecrest##67995
		turnin The Sleepless Legion##32572 |goto Isle of Thunder/0 62.7,73.6
		turnin Enemies Beneath the Tower##32573 |goto Isle of Thunder/0 62.7,73.6
	step
		talk Warmage Yurias##67994
		turnin A Wing to Fly On##32571 |goto 63.5,73.6
	step
		talk Vereesa Windrunner##67993
		turnin The Shuddering Moor##32574 |goto 63.2,72.1
	step
		talk Vereesa Windrunner##69600
		turnin The Zandalari Colossus##32575 |goto Isle of Thunder/0 63.2,72.1
	step
		talk Lady Jaina Proudmoore##67992
		accept The Beast Pens##32567 |or 2 |goto Isle of Thunder 63.2,72.2
		accept Imposing Threat##32581 |or 2 |goto Isle of Thunder 63.2,72.2
		accept Imposing Threat##32577 |or 2 |goto Isle of Thunder 63.2,72.2
		accept Encroaching Force##32580 |or 2 |goto Isle of Thunder 63.2,72.2
		accept No Time To Rest##32568 |or 2 |goto Isle of Thunder 63.2,72.2
		accept Among the Bones##32578 |or 2 |goto Isle of Thunder 63.2,72.2
		accept Competing Magic##32579 |or 2 |goto Isle of Thunder 63.2,72.2
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32572) or completedq(32573) or completedq(32571) or completedq(32574) or completedq(32575)
	// Conqueror's Terrace
	step
		kill Nurkala##69663 |q 32580/1 |only if haveq(32580) |goto Isle of Thunder 61.8,61.4
		kill Nurkala##69663 |q 32584/1 |only if haveq(32584) |goto Isle of Thunder 61.8,61.4
		only if haveq(32580) or haveq(32584)
	step
		kill 1 Horgak the Enslaver##70176 |q 32581/1 |only if haveq(32581) |goto Isle of Thunder/0 45.7,59.5
		kill 1 Horgak the Enslaver##70176 |q 32577/1 |only if haveq(32577)|goto Isle of Thunder/0 45.7,59.5
		only if haveq(32581) or haveq(32577)
	step
		kill 1 Arcweaver Jor'guva##69665 |q 32579/1 |only if haveq(32579) |goto Isle of Thunder/0 43.9,69.0
		kill 1 Arcweaver Jor'guva##69665 |q 32576/1 |only if haveq(32576) |goto Isle of Thunder/0 43.9,69.0
		only if haveq(32579) or haveq(32576)
	//The Beast Pens
	step
	label "beast_pens"
		Find Scout Captain Daelin at the Beast Pens |q 32567/1 |goto Isle of Thunder 51.9,47.0
		only if haveq(32567)
	step
		talk Scout Captain Daelin##67998
		turnin The Beast Pens##32567 |goto 51.8,47.1
		accept Saur Loser##32550 |or 2 |goto 51.8,47.1
		accept Compy Stomp##32551 |or 2 |goto 51.8,47.1
		accept Dino Might##32554 |or 2 |goto 51.8,47.1
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32567) or completedq(32567)
	step
		talk Miura Brightweaver##67999
		accept Direhorn vs Devilsaur##32553 |goto 51.8,47.2
		accept Loa-saur##32552 |goto 51.8,47.2
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32567) or completedq(32567)
	stickystart "trainedcompy"
	stickystart "conquerorszanda"
	step
		kill Loa-Infused Bladetalon##69306+
		kill Loa Speaker##69302 |q 32552/1 |goto Isle of Thunder 53.3,44.3
		only if haveq(32552)
	step
		kill 6 Master Caller##69286+, Zandalari Fetish-Binder##69155
		Binding ritual disrupted |q 32553/1 |goto Isle of Thunder/0 53.4,42.2
		only if haveq(32553)
	step
	label "conquerorszanda"
		kill Zandalari Soultwister##69296+, Zandalari Haruspex##69297+, Zandalari Bloodguard##69294+,Zandalari Acolyte##69295+ |q 32560
		kill 8 Conqueror's Terrace Zandalari |q 32560/1 |goto Isle of Thunder 58.5,51.9
		only if haveq(32560)
	step
	label "trainedcompy"
		kill Zandalari Fetish-Binder##69155+, Zandalari Beastlord##69144+, Zandalari Fetish-Binder##69155+, Zandalari Saurcaller##69154+ |only if haveq(32550)
		kill 10 Beast Pens Trolls |q 32550/1 |only if haveq(32550) |goto Isle of Thunder 49.2,40.9
		click Saur Fetish##218373 |only if haveq(32554)
		Saur Fetish can be found around [50.7,43.2] |only if haveq(32554)
		collect 5 Saur Fetish##93668 |n |only if haveq(32554)
		Use the _Saur Fetish_ on Raptors, Compys, Skyscreamers or Direhorns |use Saur Fetish##93668 |only if haveq(32554)
		Use #5# Saur Fetishes |q 32554/1 |only if haveq(32554)
		kill 5 Raptor |q 32551/1 |only if haveq(32551)
		You can find more raptors around [49.6,37.9] |only if haveq(32551)
		kill 10 Trained Compy |q 32551/2 |only if haveq(32551)
		only if haveq(32550) or haveq(32551) or haveq(32554)
	step
		talk Scout Captain Daelin##67998
		turnin Compy Stomp##32551 |goto Isle of Thunder 51.8,47.1
		turnin Saur Loser##32550 |goto Isle of Thunder 51.8,47.1
		turnin Dino Might##32554 |goto Isle of Thunder 51.8,47.1
		only if haveq(32551) or completedq(32551) or haveq(32550) or completedq(32550)
	step
		talk Miura Brightweaver##67999
		turnin Direhorn vs Devilsaur##32553 |goto 51.8,47.2
		turnin Loa-saur##32552 |goto 51.8,47.2
		accept Maximum Capacitor##32586 |or |goto 51.8,47.2
		accept On Her Magic-ey Secret Service##32588 |or |goto 51.8,47.2
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32552) or haveq(32553) or completedq(32552) or completedq(32553)
	step
		talk Scout Captain Daelin##67998
		accept Among the Bones##32578 |or |goto Isle of Thunder 51.8,47.1
		accept No Time To Rest##32568 |or |goto Isle of Thunder 51.8,47.1
		accept Encroaching Force##32584 |or |goto Isle of Thunder 51.8,47.1
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32567)
	//Post Beast Pen Hubs
	step
		Enter the cave here |goto Isle of Thunder/0 49.3,33.0 < 10 |walk
		Use your Arcane Emancipator on _Agent Reginald_ |use Arcane Emancipator##93761
		Rescue Agent Reginald |q 32588/1 |goto Isle of Thunder/1 34.6,70.8
		only if haveq(32588)
	step
		Use your Arcane Emancipator on _Agent Grisel_ |use Arcane Emancipator##93761
		Rescue Agent Grisel |q 32588/2 |goto Isle of Thunder/1 40.8,53.8
		only if haveq(32588)
	step
		Use your Arcane Emancipator on _Agent Grisel_. |use Arcane Emancipator##93761
		Rescue Agent Crowley |q 32588/3 |goto Isle of Thunder/1 49.4,44.0
		only if haveq(32588)
	step
		kill Metal Lord Mono-Han##69326 |q 32588/4 |goto Isle of Thunder/0 54.9,31.3
		only if haveq(32588)
	step
		clicknpc Lightning Drill##69671
		Destroy the Western Lightning Drill |q 32586/1 |goto Isle of Thunder/1 21.0,69.9
		only if haveq(32586)
	step
		clicknpc Lightning Drill##69671
		Destroy the Central Lightning Drill |q 32586/2 |goto Isle of Thunder/1 32.6,37.5
		only if haveq(32586)
	step
		clicknpc Lightning Drill##69671
		Destroy the Eastern Lightning Drill |q 32586/3 |goto Isle of Thunder/1 62.2,15.4
		only if haveq(32586)
	step
		kill Metal Lord Mono-Han##69326 |q 32586/4 |goto Isle of Thunder/0 54.9,31.3
		only if haveq(32586)
	step
		Click the _Quest Complete_ Box:
		turnin Maximum Capacitor##32586 |only if haveq(32586)
		turnin On Her Magic-ey Secret Service##32588 |only if haveq(32588)
		accept Forge Ahead!##32587
		only if haveq(32586) or completedq(32586) or haveq(32588) or completedq(32588)
	step
		kill Itoka##69461 |q 32587/1 |goto Isle of Thunder/0 57.7,34.0
		only if haveq(32587)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment##93731 |q 32587/2 |goto Isle of Thunder 55.7,38.6
		only if haveq(32587)
	step
		talk Scout Captain Daelin##67998
		turnin No Time To Rest##32568 |goto 61.9,52.0
		accept Keep It Secret##32560 |goto 61.9,52.0
		accept Out of Enemy Hands##32557 |goto 61.9,52.0
		accept Even Giants Fall##32559 |goto 61.9,52.0
		Click here when no more quests are available |confirm --|noquest
		only if haveq(32568) or completedq(32568)
	step
		talk Miura Brightweaver##67999
		accept The More You Know##32556 |goto Isle of Thunder 61.9,52.1
		accept Centuries in Sentries##32555 |goto Isle of Thunder 61.9,52.1
		accept All In the Family##32558 |goto Isle of Thunder 61.9,52.1
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32568)
	step
		kill Priest of the Serpent##69567
		kill Guardian Tak'u##69336 |q 32559/1 |goto Isle of Thunder/0 60.2,54.2
		only if haveq(32559)
	step
		kill Spiritbinder Tu'chek##69301
		collect Mask of the Dark Mystic##93734 |q 32558/1 |goto Isle of Thunder/0 59.4,56.7
		only if haveq(32560)
	step
		kill Arcanital Ra'kul##69300
		collect Mask of the Dark Mystic##93734 |q 32558/2 |goto Isle of Thunder/0 56.7,46.3
		only if haveq(32560)
	stickystart "zandaspirit"
	step
		click Ritual Artifict
		collect 6 Ritual Artifact##93735 |q 32556/1 |goto Isle of Thunder 56.5,47.7
		only if haveq(32556)
	step
	label "zandaspirit"
		kill Zandalari Acolyte##69295+, Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+ |q 32206/1 |only if haveq(32206)
		kill Spirit-Bound Sentry##69335+ |only if haveq(32555)
		Use your _Resonance Siphon_ _Spirit-Bound Sentry_ corpses |use Resonance Siphon##93806 |only if haveq(32555)
		5 Zandalari Spirits captured |q 32555/1 |only if haveq(32555) |goto Isle of Thunder 55.7,50.7
		only if haveq(32555) or haveq(32206)
	step
		kill Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+
		kill 8 Conqueror's Terrace Zandalari |q 32560/1 |goto 59.0,51.3
		click Loa-Infused Blades##218056 |only if haveq(32557)
		collect 7 Loa-Infused Blade##93736 |q 32557/1 |only if haveq(32557) |goto 59.0,51.3
		You can find more around [58.1,48.9]
		only if haveq(32560) or haveq(32557)
	step
		talk Scout Captain Daelin##67998
		turnin Keep It Secret##32560 |goto 61.9,52.0
		turnin Out of Enemy Hands##32557 |goto 61.9,52.0
		turnin Even Giants Fall##32559 |goto 61.9,52.0
		only if completedq(32568)
	step
		talk Miura Brightweaver##67999
		turnin The More You Know##32556 |goto Isle of Thunder/0 61.9,52.1
		turnin All In the Family##32558 |goto Isle of Thunder/0 61.9,52.1
		turnin Centuries in Sentries##32555 |goto Isle of Thunder/0 61.9,52.1
		only if completedq(32560) or completedq(32557) or completedq(32559)
	step
		talk Miura Brightweaver##67999
		accept Maximum Capacitor##32586 |goto Isle of Thunder/0 61.9,52.1
		accept On Her Magic-ey Secret Service##32588 |goto Isle of Thunder/0 61.9,52.1
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32560) or completedq(32557) or completedq(32559)
	step
		talk Scout Captain Daelin##67998
		accept Raining Bones##32582 |goto 61.9,52.0
		accept Encroaching Force##32585 |goto 61.9,52.0
		Click here when no more quests are available |confirm --|noquest
		only if completedq(32568)
	step
		talk Scout Captain Daelin##67998
		turnin Encroaching Force##32585 |goto 61.9,52.0
		turnin Raining Bones##32582 |goto 61.9,52.0
		only if completedq(32568)
	step
		Enter the cave here |goto Isle of Thunder/0 49.3,33.0 < 10 |walk
		Use your Arcane Emancipator on _Agent Reginald_ |use Arcane Emancipator##93761
		Rescue Agent Reginald |q 32588/1 |goto Isle of Thunder/1 34.6,70.8
		only if haveq(32588)
	step
		Use your Arcane Emancipator on _Agent Grisel_ |use Arcane Emancipator##93761
		Rescue Agent Grisel |q 32588/2 |goto Isle of Thunder/1 40.8,53.8
		only if haveq(32588)
	step
		Use your Arcane Emancipator on _Agent Grisel_ |use Arcane Emancipator##93761
		Rescue Agent Crowley |q 32588/3 |goto Isle of Thunder/1 49.4,44.0
		only if haveq(32588)
	step
		kill Metal Lord Mono-Han##69326 |q 32588/4 |goto Isle of Thunder/0 54.9,31.3
		only if haveq(32588)
	step
		clicknpc Lightning Drill##69671
		Destroy the Western Lightning Drill |q 32586/1 |goto Isle of Thunder/1 21.0,69.9
		only if haveq(32586)
	step
		clicknpc Lightning Drill##69671
		Destroy the Central Lightning Drill |q 32586/2 |goto Isle of Thunder/1 32.6,37.5
		only if haveq(32586)
	step
		clicknpc Lightning Drill##69671
		Destroy the Eastern Lightning Drill |q 32586/3 |goto Isle of Thunder/1 62.2,15.4
		only if haveq(32586)
	step
		kill Metal Lord Mono-Han##69326+ |q 32586/4 |goto Isle of Thunder/0 54.9,31.3
		only if haveq(32586)
	step
		Click the _Quest Complete_ Box:
		turnin Maximum Capacitor##32586
		turnin On Her Magic-ey Secret Service##32588
		accept Forge Ahead!##32587
		only if haveq(32586) or completedq(32586) or haveq(32588) or completedq(32588)
	step
		kill Itoka##69461 |q 32587/1 |goto Isle of Thunder/0 57.7,34.0
		only if haveq(32587)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment##93731 |q 32587/2 |goto Isle of Thunder 55.7,38.6
		only if haveq(32587)
	step
		talk Scout Captain Daelin##70552
		turnin Forge Ahead!##32587 |goto Isle of Thunder 58.7,42.7
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32607 |or |goto Isle of Thunder 58.7,42.8
		accept Raiding the Vault##32608 |or |goto Isle of Thunder 58.7,42.8
		only if completedq(32587) and thunderstage()>=5
	step
		Click the door to The Swollen Vault
		Enter the Swollen Vault |goto Isle of Thunder/2 |noway |c |goto Isle of Thunder/0 62.3,40.2
		only if haveq(32608)
	step
		kill Lu-Shero##69274
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 57.6,65.6
		only if haveq(32608)
	step
		click Stormy Chest##218853
		collect Choker of Storms##95372 |q 32608/1 |goto Isle of Thunder/2 33.0,28.7
		only if haveq(32608)
	step
		Click Workshop Orders
		Workshop Orders |q 32607/2 |goto Isle of Thunder 63.8,38.9
		only if haveq(32607)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32578/1 |goto Isle of Thunder/0 41.9,79.4
		kill Zur'chaka the Bonecrafter##69666 |q 32582/1 |goto Isle of Thunder/0 41.9,79.4
		only if haveq(32578) or haveq(32582)
	 step
		kill Nurkala##69663 |q 32585/1 |only if haveq(32585) |goto Isle of Thunder/0 61.8,61.5
		kill Nurkala##69663 |q 32580/1 |only if haveq(32580) |goto Isle of Thunder/0 61.8,61.5
		kill Nurkala##69663 |q 32584/1 |only if haveq(32584) |goto Isle of Thunder/0 61.8,61.5
		only if haveq(32580) or haveq(32584) or haveq(32585)
	step
		kill 1 Arcweaver Jor'guva##69665 |q 32579/1 |only if haveq(32579) |goto Isle of Thunder/0 43.9,69.0
		kill 1 Arcweaver Jor'guva##69665 |q 32576/1 |only if haveq(32576) |goto Isle of Thunder/0 43.9,69.0
		only if haveq(32579) or haveq(32576)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32578/1 |goto Isle of Thunder/0 41.9,79.4
		only if haveq(32578)
	step
		kill Arcweaver Uzan##69272 |q 32607/1 |goto Isle of Thunder/0 68.3,45.3
		only if haveq(32607)
	step
		talk Lady Jaina Proudmoore##67992
		turnin Among the Bones##32578 |goto 63.2,72.3
		turnin Encroaching Force##32580 |goto 63.2,72.3
		turnin Encroaching Force##32584 |goto 63.2,72.3
		turnin Raiding the Vault##32608 |goto 63.2,72.3
		turnin Imposing Threat##32581 |goto 63.2,72.3
		turnin Extended Shore Leave##32607 |goto 63.2,72.3
		turnin Competing Magic##32576 |or |goto 63.2,72.3
		turnin Competing Magic##32579 |or |goto 63.2,72.3
	step
	label "end"
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the guide |confirm |next "start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Eastern Kingdoms Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=5,gold=238,time=45,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31915)",
	description="\nThis guide will take you through the Battle Pet Dailies in Eastern Kingdoms.",
	maps={"Deadwind Pass","Searing Gorge","Elwynn Forest","Northern Stranglethorn","Swamp of Sorrows","Eastern Plaguelands","Duskwood","The Hinterlands","Redridge Mountains","Westfall","Burning Steppes","The Cape of Stranglethorn"},
	},[[
	step
		talk Julia Stevens##64330
		accept Julia Stevens##31693 |goto Elwynn Forest 41.6,83.7
	step
		talk Julia Stevens##64330
		|tip You will not be able to challenge Julia if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Julia has 2 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Julia's pets are level 2 so you shouldn't have any issues here.
		Defeat Julia Stevens |q 31693/1 |goto Elwynn Forest 41.6,83.7
	step
		talk Julia Stevens##64330
		turnin Julia Stevens##31693 |goto Elwynn Forest 41.6,83.7
	step
		talk Old MacDonald##65648
		accept Old MacDonald##31780 |goto Westfall 60.9,18.6
	step
		talk Old MacDonald##65648
		|tip You will not be able to challenge Old MacDonald if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Old MacDonald has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Old MacDonald's pets are level 3 so you shouldn't have any issues here.
		Defeat Old MacDonald |q 31780/1 |goto Westfall 60.9,18.6
	step
		talk Old MacDonald##65648
		turnin Old MacDonald##31780 |goto Westfall 60.9,18.6
	step
		talk Eric Davidson##65655
		accept Eric Davidson##31850 |goto Duskwood 19.9,44.7
	step
		talk Eric Davidson##65655
		|tip You will not be able to challenge Eric if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Eric has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Eric's pets are level 7 so you shouldn't have any issues here.
		Defeat Eric Davidson |q 31850/1 |goto Duskwood 19.9,44.7
	step
		talk Eric Davidson##65655
		turnin Eric Davidson##31850 |goto Duskwood 19.9,44.7
	step
		talk Steven Lisbane##63194
		accept Steven Lisbane##31852 |goto Northern Stranglethorn 46.0,40.3
	step
		talk Steven Lisbane##63194
		|tip You will not be able to challenge Steven if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Steven has a Magic type Pet and 2 Beast type Pets. Use Dragonkin type attacks on the Magic Pet and Mechanical type attacks on the Beast Pets. Steven's pets are level 9 so you shouldn't have any issues here.
		Defeat Steven Lisbane |q 31852/1 |goto Northern Stranglethorn 46.0,40.3
	step
		talk Steven Lisbane##63194
		turnin Steven Lisbane##31852 |goto Northern Stranglethorn 46.0,40.3
	step
		talk Bill Buckler##65656
		accept Bill Buckler##31851 |goto The Cape of Stranglethorn 51.4,73.3
	step
		talk Bill Buckler##65656
		|tip You will not be able to challenge Bill if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Bill has a Humanoid type Pet and 2 Flying type Pets. Use Undead type attacks on the Humanoid Pet and Magic type attacks on the Flying Pets. Bill's pets are level 11 so you shouldn't have any issues here.
		Defeat Bill Buckler |q 31851/1 |goto The Cape of Stranglethorn 51.4,73.3
	step
		talk Bill Buckler##65656
		turnin Bill Buckler##31851 |goto The Cape of Stranglethorn 51.4,73.3
	step
		talk Lydia Accoste##66522
		accept Grand Master Lydia Accost##31916 |goto Deadwind Pass 40.1,76.4
	step
		talk Lydia Accoste##66522
		|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets. Your pets should be at least level 19 before fighting Lydia.
		Defeat Lydia Accoste |q 31916/1 |goto Deadwind Pass 40.1,76.4
	step
		talk Lydia Accoste##66522
		turnin Grand Master Lydia Accoste##31916 |goto 40.1,76.4
	step
		talk Everessa##66518
		accept Everessa##31913 |goto Swamp of Sorrows 76.8,41.5
	step
		talk Everessa##66518
		|tip You will not be able to challenge Everessa if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Everessa has a Flying Pet, a Beast Pet, and an Aquatic Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Flying type attacks on the Aquatic Pet. Her pets are all level 16. You should be able to win with ease.
		Defeat Everessa |q 31913/1 |goto Swamp of Sorrows 76.8,41.5
	step
		talk Everessa##66518
		turnin Everessa##31913 |goto Swamp of Sorrows 76.8,41.5
	step
		talk Lindsay##65651
		accept Lindsay##31781 |goto Redridge Mountains 33.2,52.6
	step
		talk Lindsay##65651
		|tip You will not be able to challenge Lindsay if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Lindsay has 3 Critter type pets. Use Beast type attacks the Critter Pets. Her pets are all level 16. You should be able to win with ease.
		Defeat Lindsay |q 31781/1 |goto Redridge Mountains 33.2,52.6
	step
		talk Lindsay##65651
		turnin Lindsay##31781 |goto Redridge Mountains 33.2,52.6
	step
		talk Durin Darkhammer##66520
		accept Durin Darkhammer##31914 |goto Burning Steppes 25.5,47.4
	step
		talk Durin Darkhammer##66520
		|tip You will not be able to challenge Durin if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Durin has a Flying type Pet, a Critter Pet, and an Elemental Pet. Use Magic type attacks on the Flying Pet, Beast type attacks on the Critter Pet, and Aquatic type attacks on the Elemental Pet. His pets are all level 17. You should be able to win with ease.
		Defeat Durin Darkhammer |q 31914/1 |goto Burning Steppes 25.5,47.4
	step
		talk Durin Darkhammer##66520
		turnin Durin Darkhammer##31914 |goto Burning Steppes 25.5,47.4
	step
		talk Kortas Darkhammer##66515
		accept Kortas Darkhammer##31912 |goto Searing Gorge 35.3,27.8
	step
		talk Kortas Darkhammer##66515
		|tip You will not be able to challenge Kortas if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Kortas has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets. His pets are all around level 15 so your pet team should be able to defeat him easily.
		Defeat Kortas Darkhammer |q 31912/1 |goto Searing Gorge 35.3,27.8
	step
		talk Kortas Darkhammer##66515
		turnin Kortas Darkhammer##31912 |goto Searing Gorge 35.3,27.8
	step
		talk David Kosse##66478
		accept David Kosse##31910 |goto The Hinterlands 63.0,54.6
	step
		talk David Kosse##66478
		|tip You will not be able to challenge David if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip David has a Beast Pet, a Critter Pet, and an Magic Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Dragonkin type attacks on the Magic Pet. His pets are all around level 13 so your pet team should be able to defeat him easily.
		Defeat David Kosse |q 31910/1 |goto The Hinterlands 63.0,54.6
	step
		talk David Kosse##66478
		turnin David Kosse##31910 |goto The Hinterlands 63.0,54.6
	step
		talk Deiza Plaguehorn##66512
		accept Deiza Plaguehorn##31911 |goto Eastern Plaguelands 67.0,52.4
	step
		talk Deiza Plaguehorn##66512
		|tip You will not be able to challenge Deiza if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Deiza has 2 Beast type Pets and an Undead type Pet. Use Mechanical type attacks on the Beast Pets and Critter type attacks on the Undead Pet. Her pets are all around level 14 so your pet team should be able to defeat her easily.
		Defeat Deiza Plaguehorn |q 31911/1 |goto Eastern Plaguelands 67.0,52.4
	step
		talk Deiza Plaguehorn##66512
		turnin Deiza Plaguehorn##31911 |goto Eastern Plaguelands 67.0,52.4
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Outland Battle Pet Dailies Run",{
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
		|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
		Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.3,49.3
	step
		talk Nicki Tinytech##66550
		turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
	step
		talk Ras'an##66551
		accept Ras'an##31923 |goto Zangarmarsh 17.2,50.5
	step
		talk Ras'an##66551
		|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Ras'an has a Flying Pet, a Humanoid Pet, and a Magic Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
		Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.2,50.5
	step
		talk Ras'an##66551
		turnin Ras'an##31923 |goto Zangarmarsh 17.2,50.5
	step
		talk Narrok##66552
		accept Narrok##31924 |goto Nagrand 61.0,49.4
	step
		talk Narrok##66552
		|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Narrok has an Aquatic Pet, a Beast Pet, and a Critter Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
		Defeat Narrok |q 31924/1 |goto Nagrand 61.0,49.4
	step
		talk Narrok##66552
		turnin Narrok##31924 |goto Nagrand 61.0,49.4
	step
		talk Morulu The Elder##66553
		accept Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
	step
		talk Morulu The Elder##66553
		|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
		Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.8,70.1
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
	step
		talk Bloodknight Antari##66557
		accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
	step
		talk Bloodknight Antari##66557
		|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
		Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0
	step
		talk Bloodknight Antari##66557
		turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Northrend Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=20,gold=99,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31928)",
	description="\nThis guide will take you through the Battle Pet Dailies in Northrend.",
	maps={"Howling Fjord","Crystalsong Forest","Dragonblight","Zul'Drak","Icecrown"},
	},[[
	step
		talk Beegle Blastfuse##66635
		accept Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
	step
		talk Beegle Blastfuse##66635
		|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets. Your pets should all be around level 25 before fighting Beegle.
		Defeat Beegle Blastfuse |q 31931/1 |goto Howling Fjord 28.6,33.9
	step
		talk Beegle Blastfuse##66635
		turnin Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
	step
		talk Okrut Dragonwaste##66638
		|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
		Defeat Okrut Dragonwaste |q 31933/1 |goto Dragonblight 59.0,77.0
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
	step
		talk Nearly Headless Jacob##66636
		|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25.
		Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.1,59.0
	step
		talk Nearly Headless Jacob##66636
		turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
	step
		talk Major Payne##66675
		|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
		Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
	step
		talk Gutretch##66639
		accept Gutretch##31934 |goto Zul'Drak 13.2,66.8
	step
		talk Gutretch##66639
		|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25 for this fight.
		Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.2,66.8
	step
		talk Gutretch##66639
		turnin Gutretch##31934 |goto Zul'Drak 13.2,66.8
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Cataclysm Battle Pet Dailies Run",{
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
		|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		Defeat Brok |q 31972/1 |goto Mount Hyjal 61.4,32.7
	step
		talk Brok##66819
		turnin Brok##31972 |goto Mount Hyjal 61.4,32.7
	step
		talk Bordin Steadyfist##66815
		accept Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
	step
		talk Bordin Steadyfist##66815
		|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
		Defeat Bordin Steadyfist |q 31973/1 |goto Deepholm 49.9,57.0
	step
		talk Bordin Steadyfist##66815
		turnin Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
	step
		talk Goz Banefury##66822
		accept Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
	step
		talk Goz Banefury##66822
		|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		Defeat Goz Banefury |q 31974/1 |goto Twilight Highlands 56.6,56.8
	step
		talk Goz Banefury##66822
		turnin Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
	step
		talk Obalis##66824
		accept Grand Master Obalis##31971 |goto Uldum 56.5,42.0
	step
		talk Obalis##66824
		|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
		Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0
	step
		talk Obalis##66824
		turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Pandaria Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=139,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31970)",
	description="\nThis guide will take you through the Battle Pet Dailies in Eastern Kingdoms.",
	maps={"The Jade Forest","Vale of Eternal Blossoms","Townlong Steppes","Valley of the Four Winds","Krasarang Wilds","Kun-Lai Summit","Dread Wastes"},
	},[[
	step
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
	step
		talk Hyuna of the Shrines##66730
		|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
		Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
	step
		talk Hyuna of the Shrines##66730
		turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
	step
		talk Aki the Chosen##66741
		accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
	step
		talk Aki the Chosen##66741
		|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
		Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0
	step
		talk Aki the Chosen##66741
		turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
	step
		talk Courageous Yon##66738
		accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
	step
		talk Courageous Yon##66738
		|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Courageous Yon has a Flying Pet, and two Critter Pets. Use Beast type attacks on his Critters, and Magic type attacks on his Flying. Your pets should all be level 25.
		Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8
		He can also be found at [44.7,52.4]
	step
		talk Courageous Yon##66738
		turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
	step
		talk Seeker Zusshi##66918
		accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
	step
		talk Seeker Zusshi##66918
		|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
		Defeat Seeker Zusshi |q 31991/5 |goto Townlong Steppes 36.3,52.2
	step
		talk Seeker Zusshi##66918
		turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
	step
		talk Wastewalker Shu##66739
		accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
	step
		talk Wastewalker Shu##66739
		|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
	step
		talk Wastewalker Shu##66739
		turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
	step
		talk Mo'ruk##66733
		accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
	step
		talk Mo'ruk##66733
		|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9
	step
		talk Mo'ruk##66733
		turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
	step
		talk Farmer Nishi##66734
		accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
	step
		talk Farmer Nishi##66734
		|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
		Let's fight!
		|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
		Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
	step
		talk Farmer Nishi##66734
		turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Pandaren Spirits Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=79,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(32428)",
	description="\nThis guide will take you through the Battle Pet Dailies in Eastern Kingdoms.",
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
		accept Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.0,42.2
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Daily Runs\\Beasts of Fable Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=30,gold=59,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	description="\nThis guide will take you through the Beasts of Fable Daily Questline.",
	maps={"The Jade Forest","Vale of Eternal Blossoms","Townlong Steppes","Valley of the Four Winds","Krasarang Wilds","Kun-Lai Summit","Dread Wastes"},
	},[[
	step
		talk Sara Finkleswitch##64572
		accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 86.6,60.0
		accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 86.6,60.0
		accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 86.6,60.0
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
		talk Sara Finkleswitch##64572
		turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 86.6,60.0
		turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 86.6,60.0
		turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 86.6,60.0
]])
end

-- VENDOR RUNS
--[=[
if UnitFactionGroup("player")=="Alliance" then

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Vendor Runs\\Kalimdor Vendor Run",{
	meta={goldtype="vendor",time=30,icon="Interface\\ICONS\\Achievement_Zone_Kalimdor_01"},
	description="\nThis guide will take you through Vendor Runs",
	maps={"Un'Goro Crater","The Exodar","Tanaris","Northern Barrens","Silithus","Winterspring","Feralas","Moonglade","Dustwallow Marsh","Ashenvale","Darnassus"},
	},[[
	step
		talk Neii##16767
		buy 1 Pattern: Bolt of Soulcloth##21894 |goto The Exodar 64.6,68.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Haferet##16748
		buy 1 Pattern: Comfortable Insoles##25726 |goto The Exodar 66.6,74.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Arras##16713
		buy 1 Plans: Adamantite Rapier##23593 |goto The Exodar 61.0,89.0
		buy 1 Plans: Adamantite Dagger##23592 |goto The Exodar 61.0,89.0
		buy 1 Plans: Adamantite Cleaver##23591 |goto The Exodar 61.0,89.0
		buy 1 Plans: Adamantite Maul##23590 |goto The Exodar 61.0,89.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Feera##16657
		buy 1 Schematic: Adamantite Rifle##23799 |goto The Exodar 53.0,90.0
		buy 1 Schematic: White Smoke Flare##23811 |goto The Exodar 53.0,90.0
		buy 1 Schematic: Fel Iron Toolbox##23816 |goto The Exodar 53.0,90.0
		buy 1 Gyrochronatom##4389 |goto The Exodar 53.0,90.0
		buy 1 Bronze Framework##4382 |goto The Exodar 53.0,90.0
		buy 2 Bronze Tube##4371 |goto The Exodar 53.0,90.0
		buy 3 Silver Contact##4404 |goto The Exodar 53.0,90.0
		buy 4 Coarse Blasting Powder##4364 |goto The Exodar 53.0,90.0
		buy 4 Rough Blasting Powder##4357 |goto The Exodar 53.0,90.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Altaa##16705
		buy 1 Recipe: Transmute Primal Might##23574 |goto The Exodar 28.0,62.1
		buy 1 Recipe: Elixir of Camouflage##22900 |goto The Exodar 28.0,62.1
		buy 1 Liferoot##3357 |goto The Exodar 28.0,62.1
		buy 1 Kingsblood##3356 |goto The Exodar 28.0,62.1
		buy 1 Wild Steelbloom##3355 |goto The Exodar 28.0,62.1
		buy 2 Bruiseweed##2453 |goto The Exodar 28.0,62.1
		buy 3 Earthroot##2449 |goto The Exodar 28.0,62.1
		buy 2 Mageroyal##785 |goto The Exodar 28.0,62.1
		buy 2 Peacebloom##2447 |goto The Exodar 28.0,62.1
		buy 3 Silverleaf##765 |goto The Exodar 28.0,62.1
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Egomis##16722
		buy 1 Formula: Superior Wizard Oil##22563 |goto The Exodar 39.8,40.2
		buy 1 Formula: Large Prismatic Shard##22565 |goto The Exodar 39.8,40.2
		buy 1 Formula: Superior Mana Oil##22562 |goto The Exodar 39.8,40.2
		buy 2 Lesser Magic Essence##10938 |goto The Exodar 39.8,40.2
		buy 4 Strange Dust##10940 |goto The Exodar 39.8,40.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Arred##17512
		buy 1 Design: Opal Necklace of Impact##21948 |goto The Exodar 45.0,25.6
		buy 1 Design: The Jade Eye##20975 |goto The Exodar 45.0,25.6
		buy 1 Design: Heavy Golden Necklace of Battle##20856 |goto The Exodar 45.0,25.6
		buy 1 Design: Amulet of the Moon##20854 |goto The Exodar 45.0,25.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Layna Karner##52641
		buy 1 Plans: Hardened Iron Shortsword##12162 |goto Darnassus 56.6,52.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Ulthir##4226
		buy 2 Recipe: Great Rage Potion##5643 |goto Darnassus 54.6,39.6
		buy 1 Recipe: Free Action Potion##5642 |goto Darnassus 54.6,39.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Mythrin'dir##4229
		buy 1 Formula: Enchant Bracer - Dodge##11223 |goto Darnassus 58.2,35.0
		buy 1 Design: Amulet of the Moon##20854 |goto Darnassus 58.2,35.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Saenorion##4225
		buy 1 Pattern: Green Whelp Bracers##7451 |goto Darnassus 60.0,37.2
		buy 1 Pattern: Barbaric Bracers##18949 |goto Darnassus 60.0,37.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Elynna##4168
		buy 1 Pattern: Orange Martial Shirt##10311 |goto Darnassus 60.4,36.8
		buy 1 Pattern: Greater Adept's Robe##6275 |goto Darnassus 60.4,36.8
		buy 1 Pattern: Blue Linen Robe##6272 |goto Darnassus 60.4,36.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Lorelae Wintersong##12022
		buy 1 Formula: Enchant Cloak - Superior Defense##16224 |goto Moonglade 48.3,40.2
		buy 1 Pattern: Felcloth Pants##14483 |goto Moonglade 48.3,40.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Qia##11189
		buy 1 Design: Necklace of the Diamond Tower##21957 |goto Winterspring 59.7,49.3
		buy 1 Pattern: Frostsaber Boots##15740 |goto Winterspring 59.7,49.3
		buy 1 Formula: Enchant Chest - Major Health##16221 |goto Winterspring 59.7,49.3
		buy 1 Pattern: Runecloth Bag##14468 |goto Winterspring 59.7,49.3
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Daleohm##50129
		buy 1 Plans: Frostguard##12836 |goto Winterspring 59.2,50.9
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
		talk Vi'el##16015
		buy 2 Felcloth##14256 |goto Winterspring 61.6,87.6
		buy 4 Gromsblood##8846 |goto Winterspring 61.6,87.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Lardan##3958
		buy 1 Pattern: Barbaric Leggings##5973 |goto Ashenvale 34.8,49.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Dalria##3954
		buy 1 Formula: Enchant Bracer - Lesser Strength##11101 |goto Ashenvale 35.0,52.0
		buy 1 Formula: Enchant Cloak - Minor Agility##11039 |goto Ashenvale 35.0,52.0
		buy 1 Design: Wicked Moonstone Ring##20855 |goto Ashenvale 35.0,52.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Harlown Darkweave##34601
		buy 1 Pattern: Herbalist's Gloves##7361 |goto Ashenvale 18.2,60.0
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
		talk Helenia Olden##4897
		buy 1 Design: Truesilver Crab##21943 |goto Dustwallow Marsh 66.4,51.4
		buy 1 Design: Black Pearl Panther##21941 |goto Dustwallow Marsh 66.4,51.4
		buy 1 Pattern: Murloc Scale Bracers##5789 |goto Dustwallow Marsh 66.4,51.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Alchemist Pestlezugg##5594
		buy 1 Recipe: Nature Protection Potion##6057 |goto Tanaris 50.8,28.0
		buy 1 Recipe: Transmute Mithril to Truesilver##9305 |goto Tanaris 50.8,28.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Vizzklick##6568
		buy 1 Pattern: Crimson Silk Robe##7088 |goto Tanaris 50.7,28.7
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Haughty Modiste##40572
		buy 1 Pattern: Dress Shoes##37915 |goto Tanaris 50.7,28.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Blizrik Buckshot##8131
		buy 1 Schematic: EZ-Thro Dynamite II##18650 |goto Tanaris 50.7,28.5
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Krinkle Goodsteel##5411
		buy 1 Plans: Golden Scale Coif##6047 |goto Tanaris 51.15,30.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Nergal##12959
		buy 1 Pattern: Devilsaur Leggings##15772 |goto Un'Goro Crater 54.8,62.6
		buy 1 Pattern: Devilsaur Gauntlets##15758 |goto Un'Goro Crater 54.8,62.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Zannok Hidepiercer##12956
		buy 1 Pattern: Heavy Scorpid Helm##15762 |goto Silithus 81.4,18.4
		buy 1 Heavy Scorpid Bracers##15724 |goto Silithus 81.4,18.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Calandrath##15174
		buy 1 Recipe: Greater Nature Protection Potion##13496 |goto Silithus 55.5,36.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Mishta##15179
		buy 1 Design: Emerald Crown of Destruction##21952 |goto Silithus 53.8,34.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Logannas##8157
		buy 1 Recipe: Ghost Dye##9302 |goto Feralas 46.8,43.2
		buy 1 Recipe: Nature Protection Potion##6057 |goto Feralas 46.8,43.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Pratt McGrubben##40226
		buy 1 Pattern: Living Shoulders##15734 |goto Feralas 45.4,41.2
		buy 1 Pattern: Turtle Scale Gloves##8385 |goto Feralas 45.4,41.2
		buy 1 Pattern: Green Whelp Bracers##7451 |goto Feralas 45.4,41.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Vendor Runs\\Eastern Kingdoms Vendor Run",{
	meta={goldtype="vendor",time=45,icon="Interface\\ICONS\\Achievement_Zone_EasternKingdoms_01"},
	maps={"Blasted Lands","Ironforge","Arathi Highlands","Western Plaguelands","Badlands","Stormwind City","Loch Modan","Elwynn Forest","Northern Stranglethorn","Wetlands","Eastern Plaguelands","Hillsbrad Foothills","Duskwood","Dun Morogh","The Hinterlands","Redridge Mountains","Westfall","The Cape of Stranglethorn"},
	},[[
	step
		talk Cowardly Crosby##2672
		buy 1 Pattern: Admiral's Hat##10318 |goto The Cape of Stranglethorn 40.8,82.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Glyx Brewright##2848
		buy 1 Recipe: Frost Protection Potion##6056 |goto The Cape of Stranglethorn 42.6,74.8
		buy 1 Recipe: Nature Protection Potion##6057 |goto The Cape of Stranglethorn 42.6,74.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Jutak##2843
		buy 1 Plans: Hardened Iron Shortsword##12162 |goto The Cape of Stranglethorn 41.6,74.0
		buy 1 Daring Dirk##12248 |goto The Cape of Stranglethorn 41.6,74.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Blixrez Goodstitch##2846
		buy 1 Pattern: Murloc Scale Bracers##5789 |goto The Cape of Stranglethorn 42.8,74.0
		buy 1 Pattern: Thick Murloc Armor##5788 |goto The Cape of Stranglethorn 42.8,74.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Mrs. Gant##54232
		buy 1 Recipe: Undermine Clam Chowder##16767 |goto The Cape of Stranglethorn 42.6,72.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Crazk Sparks##2838
		buy 1 Schematic: Green Firework##18648 |goto The Cape of Stranglethorn 43.0,72.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Xizk Goodstitch##2670
		buy 1 Pattern: Enchanter's Cowl##14630 |goto The Cape of Stranglethorn 43.6,73.0
		buy 1 Pattern: Crimson Silk Cloak##7087 |goto The Cape of Stranglethorn 43.6,73.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Rikqiz##2699
		buy 1 Pattern: Shadowskin Gloves##18239 |goto The Cape of Stranglethorn 43.2,71.6
		buy 1 Pattern: Gem-Studded Leather Belt##14635 |goto The Cape of Stranglethorn 43.2,71.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Zarena Cromwind##2482
		buy 1 Plans: Moonsteel Broadsword##12163 |goto The Cape of Stranglethorn 43.0,70.6
		buy 1 Big Stick##12251 |goto The Cape of Stranglethorn 43.0,70.6
		buy 1 Staff of Protection##12252 |goto The Cape of Stranglethorn 43.0,70.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Narkk##2663
		buy 1 Pattern: Black Swashbuckler's Shirt##10728 |goto The Cape of Stranglethorn 42.6,69.2
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
		talk Jaquilina Dramet##2483
		buy 1 Plans: Massive Iron Axe##12164 |goto Northern Stranglethorn 43.6,23.0
		buy 1 Midnight Axe##12250 |goto Northern Stranglethorn 43.6,23.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Gina MacGregor##843
		buy 1 Pattern: Blue Overalls##6274 |goto Westfall 57.6,53.8
		buy 1 Pattern: Murloc Scale Breastplate##5787 |goto Westfall 57.6,53.8
		buy 1 Pattern: Murloc Scale Belt##5786 |goto Westfall 57.6,53.8
		buy 1 Pattern: Red Linen Bag##5771 |goto Westfall 57.6,53.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Sheri Zipstitch##2669
		|tip On the top floor of this building.
		buy 1 Pattern: Dark Silk Shirt##6401 |goto Duskwood 75.6,45.4
		buy 1 Pattern: Blue Overalls##6274 |goto Duskwood 75.6,45.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Danielle Zipstitch##2668
		|tip On the top floor of this building.
		buy 1 Pattern: Bright Yellow Shirt##14627 |goto Duskwood 75.8,45.4
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
		talk Nina Lightbrew##8178
		buy 1 Recipe: Elixir of Demonslaying##9300 |goto Blasted Lands 62.4,16.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Clyde Ranthal##2697
		buy 1 Pattern: Black Whelp Cloak##7289 |goto Redridge Mountains 78.6,63.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Amy Davenport##777
		buy 1 Pattern: Red Woolen Bag##5772 |goto Redridge Mountains 28.2,43.4
		buy 1 Pattern: Black Whelp Tunic##20576 |goto Redridge Mountains 28.2,43.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Drake Lindgren##1250
		buy 1 Pattern: Blue Linen Robe##6272 |goto Elwynn Forest 83.2,66.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Antonio Perelli##844
		Note: He patrols between this spot and [75.0,72.4].
		buy 1 Liferoot##3357 |goto Elwynn Forest 42.6,66.6
		buy 1 Bear Bracers##4795 |goto Elwynn Forest 42.6,66.6
		buy 1 Owl Bracers##4796 |goto Elwynn Forest 42.6,66.6
		buy 1 Wolf Bracers##4794 |goto Elwynn Forest 42.6,66.6
		buy 1 Executioner's Sword##4818 |goto Elwynn Forest 42.6,66.6
		buy 1 Kingsblood##3356 |goto Elwynn Forest 42.6,66.6
		buy 1 Wild Steelbloom##3355 |goto Elwynn Forest 42.6,66.6
		buy 2 Blessed Claymore##4817 |goto Elwynn Forest 42.6,66.6
		buy 2 Bruiseweed##2453 |goto Elwynn Forest 42.6,66.6
		buy 1 Heavy Spiked Mace##4778 |goto Elwynn Forest 42.6,66.6
		buy 1 Ironwood Maul##4777 |goto Elwynn Forest 42.6,66.6
		buy 3 Earthroot##2449 |goto Elwynn Forest 42.6,66.6
		buy 2 Mageroyal##785 |goto Elwynn Forest 42.6,66.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Tharynn Bouden##66
		buy 1 Pattern: Blue Linen Vest##6270 |goto Elwynn Forest 42.0,67.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Bernard Gump##1302
		buy 1 Liferoot##3357 |goto Stormwind City 69.4,71.6
		buy 1 Wild Steelbloom##3355 |goto Stormwind City 69.4,71.6
		buy 2 Bruiseweed##2453 |goto Stormwind City 69.4,71.6
		buy 2 Earthroot##2449 |goto Stormwind City 69.4,71.6
		buy 2 Mageroyal##785 |goto Stormwind City 69.4,71.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Edna Mullby##1286
		buy 1 Design: Heavy Golden Necklace of Battle##20856 |goto Stormwind City 64.6,71.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Maria Lumere##1313
		buy 1 Recipe: Elixir of Shadow Power##9301 |goto Stormwind City 55.6,85.6
		buy 1 Liferoot##3357 |goto Stormwind City 55.6,85.6
		buy 1 Wild Steelbloom##3355 |goto Stormwind City 55.6,85.6
		buy 1 Kingsblood##3356 |goto Stormwind City 55.6,85.6
		buy 2 Bruiseweed##2453 |goto Stormwind City 55.6,85.6
		buy 6 Earthroot##2449 |goto Stormwind City 55.6,85.6
		buy 2 Mageroyal##785 |goto Stormwind City 55.6,85.6
		buy 3 Peacebloom##2447 |goto Stormwind City 55.6,85.6
		buy 3 Silverleaf##765 |goto Stormwind City 55.6,85.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Alexandra Bolero##1347
		buy 1 Pattern: White Wedding Dress##10325 |goto Stormwind City 53.2,81.6
		buy 1 Pattern: Blue Overalls##6274 |goto Stormwind City 53.2,81.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Darian Singh##1304
		buy 1 Schematic: Blue Firework##18649 |goto Stormwind City 42.6,76.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Kaita Deepforge##5512
		buy 1 Plans: Hardened Iron Shortsword##12162 |goto Stormwind City 63.2,37.6
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
		talk Xandar Goodbeard##1685
		buy 1 Recipe: Holy Protection Potion##6053 |goto Loch Modan 82.6,63.2
		buy 1 Recipe: Rage Potion##5640 |goto Loch Modan 82.6,63.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Rann Flamespinner##1474
		buy 1 Pattern: Greater Adept's Robe##6275 |goto Loch Modan 36.0,46.0
		buy 1 Pattern: Red Woolen Bag##5772 |goto Loch Modan 36.0,46.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk High Admiral "Shelly" Jorrik##26081
		buy 1 Plans: Solid Iron Maul##10858 |goto Dun Morogh 17.8,74.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Soolie Berryfizz##5178
		buy 1 Recipe: Elixir of Superior Defense##13478 |goto Ironforge 67.2,53.4
		buy 1 Recipe: Free Action Potion##5642 |goto Ironforge 67.2,53.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Gearcutter Cogspinner##5175
		buy 1 Schematic: Blue Firework##18649 |goto Ironforge 68.2,44.0
		buy 1 Schematic: Gnomish Universal Remote##7560 |goto Ironforge 68.2,44.0
		buy 1 Gyrochronatom##4389 |goto Ironforge 68.2,44.0
		buy 1 Bronze Framework##4382 |goto Ironforge 68.2,44.0
		buy 2 Bronze Tube##4371 |goto Ironforge 68.2,44.0
		buy 3 Silver Contact##4404 |goto Ironforge 68.2,44.0
		buy 4 Coarse Blasting Powder##4364 |goto Ironforge 68.2,44.0
		buy 4 Rough Blasting Powder##4357 |goto Ironforge 68.2,44.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Tilli Thistlefuzz##5158
		buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Ironforge 61.6,44.8
		buy 2 Lesser Magic Essence##10938 |goto Ironforge 61.6,44.8
		buy 4 Strange Dust##10940 |goto Ironforge 61.6,44.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Burbik Gearspanner##5163
		buy 1 Design: Opal Necklace of Impact##21948 |goto Ironforge 46.6,28.6
		buy 1 Design: The Jade Eye##20975 |goto Ironforge 46.6,28.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Outfitter Eric##8681
		buy 1 Pattern: Tuxedo Jacket##10326 |goto Ironforge 44.2,29.6
		buy 1 Pattern: Tuxedo Pants##10323 |goto Ironforge 44.2,29.6
		buy 1 Pattern: Tuxedo Shirt##10321 |goto Ironforge 44.2,29.6
		buy 1 Pattern: Pink Mageweave Shirt##10317 |goto Ironforge 44.2,29.6
		buy 1 Pattern: Lavender Mageweave Shirt##10314 |goto Ironforge 44.2,29.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Bombus Finespindle##5128
		buy 1 Pattern: Heavy Leather Ball##18731 |goto Ironforge 40.2,33.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Jennabink Powerseam##1454
		buy 1 Dreamer's Belt##4829 |goto Wetlands 10.0,59.0
		buy 1 Inferno Cloak##4790 |goto Wetlands 10.0,59.0
		buy 1 Nightwind Belt##4828 |goto Wetlands 10.0,59.0
		buy 1 Spirit Cloak##4792 |goto Wetlands 10.0,59.0
		buy 1 Sylvan Cloak##4793 |goto Wetlands 10.0,59.0
		buy 1 Wizard's Belt##4827 |goto Wetlands 10.0,59.0
		buy 1 Pattern: Greater Adept's Robe##6275 |goto Wetlands 10.0,59.0
		buy 1 Pattern: Red Woolen Bag##5772 |goto Wetlands 10.0,59.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Wenna Silkbeard##2679
		buy 1 Pattern: Green Leather Armor##7613 |goto Wetlands 25.6,25.8
		buy 1 Elite Shoulders##4835 |goto Wetlands 25.6,25.8
		buy 1 Dreamer's Belt##4829 |goto Wetlands 25.6,25.8
		buy 1 Mystic Sarong##4832 |goto Wetlands 25.6,25.8
		buy 1 Pattern: Azure Silk Gloves##7114 |goto Wetlands 25.6,25.8
		buy 1 Saber Leggings##4830 |goto Wetlands 25.6,25.8
		buy 1 Glorious Shoulders##4833 |goto Wetlands 25.6,25.8
		buy 1 Wizard's Belt##4827 |goto Wetlands 25.6,25.8
		buy 1 Nightwind Belt##4828 |goto Wetlands 25.6,25.8
		buy 1 Stalking Pants##4831 |goto Wetlands 25.6,25.8
		buy 1 Pattern: Red Whelp Gloves##7290 |goto Wetlands 25.6,25.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Fradd Swiftgear##41435
		buy 1 Schematic: Minor Recombobulator##14639 |goto Wetlands 26.8,26.0
		buy 1 Gyrochronatom##4389 |goto Wetlands 26.8,26.0
		buy 1 Bronze Framework##4382 |goto Wetlands 26.8,26.0
		buy 2 Bronze Tube##4371 |goto Wetlands 26.8,26.0
		buy 3 Silver Contact##4404 |goto Wetlands 26.8,26.0
		buy 4 Coarse Blasting Powder##4364 |goto Wetlands 26.8,26.0
		buy 4 Rough Blasting Powder##4357 |goto Wetlands 26.8,26.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Kixxle##8305
		buy 1 Liferoot##3357 |goto Wetlands 50.0,37.8
		buy 1 Wild Steelbloom##3355 |goto Wetlands 50.0,37.8
		buy 1 Kingsblood##3356 |goto Wetlands 50.0,37.8
		buy 2 Bruiseweed##2453 |goto Wetlands 50.0,37.8
		buy 2 Earthroot##2449 |goto Wetlands 50.0,37.8
		buy 2 Mageroyal##785 |goto Wetlands 50.0,37.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Jannos Ironwill##1471
		buy 1 Plans: Solid Iron Maul##10858 |goto Arathi Highlands 40.8,48.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Drovnar Strongbrew##2812
		buy 1 Recipe: Frost Protection Potion##6056 |goto Arathi Highlands 40.6,48.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Hammon Karwn##2810
		buy 1 Design: Ruby Crown of Restoration##21942 |goto Arathi Highlands 40.4,48.8
		buy 1 Pattern: Barbaric Leggings##5973 |goto Arathi Highlands 40.4,48.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Androd Fadran##2816
		buy 1 Pattern: Raptor Hide Belt##13288 |goto Arathi Highlands 39.2,48.2
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
		talk Bro'kin##2480
		buy 1 Recipe: Frost Oil##14634 |goto Hillsbrad Foothills 44.0,21.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Leonard Porter##12942
		buy 1 Pattern: Stormshroud Pants##15741 |goto Western Plaguelands 43.0,84.2
		buy 1 Pattern: Wicked Leather Gauntlets##15725 |goto Western Plaguelands 43.0,84.2
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
		talk Nioma##8160
		buy 1 Pattern: Nightscape Shoulders##8409 |goto The Hinterlands 13.4,43.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Harggan##8161
		buy 1 Plans: Mithril Scale Bracers##7995 |goto The Hinterlands 13.6,44.8
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
		talk Gigget Zipcoil##12958
		buy 1 Pattern: Ironfeather Shoulders##15735 |goto The Hinterlands 34.6,38.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Jase Farlane##12941
		buy 1 Design: Ring of Bitter Shadows##21954 |goto Eastern Plaguelands 74.2,51.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Alliance Vendor Runs\\Outland/Northrend/Pandaria Vendor Run",{
	meta={goldtype="vendor",time=30,icon="Interface\\ICONS\\ExpansionIcon_MistsOfPandaria"},
	description="\nThis guide will take you through Vendor Runs",
	maps={"Dalaran","Terokkar Forest","Blade's Edge Mountains","Nagrand","Netherstorm","Zangarmarsh","Krasarang Wilds","Hellfire Peninsula","Shadowmoon Valley","Shattrath City","Icecrown"},
	},[[
	step
	label "start"
		talk Jezebel Bican##30734
		buy 2 Technique: Glyph of Counterspell##50166 |goto Hellfire Peninsula 53.8,65.4
		buy 3 Scribe's Satchel##39489 |goto Hellfire Peninsula 53.8,65.4
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Arrond##19521
		buy 1 Pattern: Imbued Netherweave Tunic##21901 |goto Shadowmoon Valley 55.8,58.2
		buy 1 Pattern: Imbued Netherweave Robe##21900 |goto Shadowmoon Valley 55.8,58.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Mari Stonehand##19373
		buy 1 Plans: Lesser Ward of Shielding##23638 |goto Shadowmoon Valley 36.8,55.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Leeli Longhaggle##19042
		buy 1 Recipe: Major Dreamless Sleep Potion##22911 |goto Terokkar Forest 57.6,53.4
		buy 1 Recipe: Sneaking Potion##22901 |goto Terokkar Forest 57.6,53.4
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
		talk Borto##19017
		buy 1 Pattern: Soulcloth Gloves##21902 |goto Nagrand 53.2,71.8
		buy 1 Pattern: Bolt of Soulcloth##21894 |goto Nagrand 53.2,71.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Muheru the Weaver##19722
		buy 1 Pattern: Imbued Netherweave Boots##21899 |goto Zangarmarsh 40.6,28.2
		buy 1 Pattern: Imbued Netherweave Pants##21898 |goto Zangarmarsh 40.6,28.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Loolruna##19694
		buy 1 Plans: Adamantite Breastplate##23596 |goto Zangarmarsh 68.6,50.2
		buy 1 Plans: Adamantite Plate Bracers##23564 |goto Zangarmarsh 68.6,50.2
		buy 1 Plans: Adamantite Plate Gloves##23595 |goto Zangarmarsh 68.6,50.2
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Haalrun##18005
		buy 1 Recipe: Elixir of Major Defense##22909 |goto Zangarmarsh 67.8,48.0
		buy 1 Recipe Super Mana Potion##22907 |goto Zangarmarsh 67.8,48.0
		buy 1 Recipe: Elixir of Major Frost Power##22902 |goto Zangarmarsh 67.8,48.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Bossi Pentapiston##21112
		buy 1 Elemental Blasting Powder##23781 |goto Blade's Edge Mountains 60.6,69.0
		buy 3 Handful of Fel Iron Bolts##23783 |goto Blade's Edge Mountains 60.6,69.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Qiff##19575
		buy 1 Felsteel Stabalizer##23787 |goto Netherstorm 32.6,66.6
		buy 1 Khorium Power Core##23786 |goto Netherstorm 32.6,66.6
		buy 1 Adamantite Frame##23784 |goto Netherstorm 32.6,66.6
		buy 2 Handful of Fel Iron Bolts##23783 |goto Netherstorm 32.6,66.6
		buy 1 Fel Iron Casing##23782 |goto Netherstorm 32.6,66.6
		buy 2 Elemental Blasting Powder##23781 |goto Netherstorm 32.6,66.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Dealer Najeeb##20981
		buy 1 Hardened Adamantite Tube##23785 |goto Netherstorm 44.8,36.6
		buy 2 Mote of Air##22572 |goto Netherstorm 44.8,36.6
		buy 3 Mote of Water##22578 |goto Netherstorm 44.8,36.6
		buy 3 Mote of Shadow##22577 |goto Netherstorm 44.8,36.6
		buy 2 Adamantite Frame##23784 |goto Netherstorm 44.8,36.6
		buy 2 Mote of Mana##22576 |goto Netherstorm 44.8,36.6
		buy 1 Mote of Life##22575 |goto Netherstorm 44.8,36.6
		buy 3 Mote of Fire##22574 |goto Netherstorm 44.8,36.6
		buy 3 Mote of Earth##22573 |goto Netherstorm 44.8,36.6
		buy 4 Handful of Fel Iron Bolts##23783 |goto Netherstorm 44.8,36.6
		buy 4 Elemental Blasting Powder##23781 |goto Netherstorm 44.8,36.6
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
		buy 5 Technique: Glyph of Counterspell##50166 |goto Dalaran 42.4,37.6
		buy 3 Scribe's Satchel##39489 |goto Dalaran 42.4,37.6
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Bryan Landers##28722
		buy 5 Schematic: Titanium Toolbox##23817 |goto Dalaran 39.0,26.0
		buy 1 Gyrochronatom##4389 |goto Dalaran 39.0,26.0
		buy 1 Bronze Framework##4382 |goto Dalaran 39.0,26.0
		buy 2 Bronze Tube##4371 |goto Dalaran 39.0,26.0
		buy 3 Silver Contact##4404 |goto Dalaran 39.0,26.0
		buy 4 Coarse Blasting Powder##4364 |goto Dalaran 39.0,26.0
		buy 4 Rough Blasting Powder##4357 |goto Dalaran 39.0,26.0
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Fizzix Blastbolt##33594
		buy 5 Schematic: Titanium Toolbox##23817 |goto Icecrown 72.2,20.8
		buy 1 Gyrochronatom##4389 |goto Icecrown 72.2,20.8
		buy 1 Bronze Framework##4382 |goto Icecrown 72.2,20.8
		buy 2 Bronze Tube##4371 |goto Icecrown 72.2,20.8
		buy 3 Silver Contact##4404 |goto Icecrown 72.2,20.8
		buy 4 Coarse Blasting Powder##4364 |goto Icecrown 72.2,20.8
		buy 4 Rough Blasting Powder##4357 |goto Icecrown 72.2,20.8
		If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
	step
		talk Tinkmaster Overspark##67976
		buy 1 Schematic: Adamantite Rifle##23799 |goto Krasarang Wilds 16.6,79.6
		This is the last step of the guide:
		If these items are not available, click here to be routed back to the start of the guide. |confirm |next "start"
]])
end
--]=]

-- FARM VEGGIES

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Cocoa Beans (Alliance)",{
	condition_valid='raceclass("Alliance")',
	},[[
	step
		#include "SW_Cooking_Dailies"
		earn 1 Epicurean's Reward##81
	step
		talk Bario Matalli##49701
		buy Imported Supplies##68689 |goto Stormwind City 50.8,71.4
	step
		Use the Imported Supplies in your bags. |use Imported Supplies##68689
		goldcollect Cocoa Beans##62786
		goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])