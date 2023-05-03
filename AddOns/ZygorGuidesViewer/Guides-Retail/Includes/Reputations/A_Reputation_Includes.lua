if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

------------------------------
----- The Argent Crusade -----
------------------------------

ZygorGuidesViewer:RegisterInclude("Argent_Crusade_Rep",[[
	--step
	--	Routing to proper section. |next |only if not completedq(13082)
	--	Routing to proper section. |next "Tabard" |only if completedq(13082)
	step
		talk Highlord Tirion Fordring##28179
		accept Honor Above All Else##13036 |goto Icecrown 87.5,75.8
	step
		talk Crusade Commander Entari##30223
		turnin Honor Above All Else##13036 |goto 87.1,75.8
		accept Scourge Tactics##13008 |goto 87.1,75.8
	step
		talk Father Gustav##30226
		accept Curing The Incurable##13040 |goto 86.8,76.7
	step
		talk Crusader Lord Dalfors##30224
		accept Defending The Vanguard##13039 |goto 86.1,75.8
	step
		kill Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
		kill 15 Forgotten Depths Nerubian |q 13039/1 |goto 84.4,74.3
		collect 10 Forgotten Depths Venom Sac##42770|q 13040/1 |goto 84.4,74.3
		Kill the white spider wrappings around this area
		Free 8 Webbed Crusaders |q 13008/1 |goto 84.4,74.3
	step
		talk Crusader Lord Dalfors##30224
		turnin Defending The Vanguard##13039 |goto 86.1,75.8
	step
		talk Father Gustav##30226
		turnin Curing The Incurable##13040 |goto 86.8,76.7
	step
		talk Crusade Commander Entari##30223
		turnin Scourge Tactics##13008 |goto 87.1,75.8
		accept If There Are Survivors...##13044 |goto 87.1,75.8
	step
		talk Penumbrius##30227
		turnin If There Are Survivors...##13044 |goto 87.0,79.0
		accept Into The Wild Green Yonder##13045 |goto 87.0,79.0
	step
		Click the Argent Skytalon to ride it |invehicle |c |q 13045 |goto 87.1,79.1
	step
		Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
		Once you pick up a Captured Crusader, fly to the following location |goto 86.9,76.5 < 5 |walk
		Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
		Repeat this process 2 more times
		Rescue #3# Captured Crusaders |q 13045/1 |goto 79.0,67.4
	step
		Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle |q 13045
	step
		talk Highlord Tirion Fordring##28179
		turnin Into The Wild Green Yonder##13045 |goto 87.5,75.8
		accept A Cold Front Approaches##13070 |goto 87.5,75.8
	step
		talk Siegemaster Fezzik##30657
		turnin A Cold Front Approaches##13070 |goto 85.6,76.0
		accept The Last Line Of Defense##13086 |goto 85.6,76.0
	step
		Click the Argent Cannon to get on it |invehicle |c |q 13086 |goto 85.3,75.9
	step
		Use the skills on your hotbar to kill scourge mobs and dragons
		kill Forgotten Depths Slayer##30593+, Frostbrood Destroyer##30575+
		Kill #100# Scourge Attackers |q 13086/1
		kill 3 Frostbrood Destroyer##30575 |q 13086/2
	step
		Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
	step
		talk Siegemaster Fezzik##30657
		turnin The Last Line Of Defense##13086 |goto 85.6,76.0
	step
		talk Highlord Tirion Fordring##28179
		accept Once More Unto The Breach, Hero##13105 |only DeathKnight |goto 86.0,75.8
		accept Once More Unto The Breach, Hero##13104 |only if not DeathKnight |goto 86.0,75.8
	step
		talk The Ebon Watcher##30596
		turnin Once More Unto The Breach, Hero##13105 |only DeathKnight |goto 83.0,72.9
		turnin Once More Unto The Breach, Hero##13104 |only if not DeathKnight |goto 83.0,72.9
		accept The Purging Of Scourgeholme##13118 |goto 83.0,72.9
		accept The Scourgestone##13122 |goto 83.0,72.9
	step
		talk Crusade Architect Silas##30686
		accept The Stone That Started A Revolution##13130 |goto 83.0,73.1
	step
		talk Crusade Engineer Spitzpatrick##30714
		accept It Could Kill Us All##13135 |goto 83.0,73.1
	step
		talk Father Gustav##30683
		accept The Restless Dead##13110 |goto 82.9,72.8
	step
		kill 8 Reanimated Crusader##31043+ |q 13118/3 |goto 80.4,68.2
		kill 3 Forgotten Depths Underking##31039+ |q 13118/2 |goto 80.4,68.2
		collect 15 Scourgestone##43169 |q 13122/1 |goto 80.4,68.2
		Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
		Free #10# Restless Souls |q 13110/1 |goto 80.4,68.2
	step
		kill 3 Forgotten Depths High Priest##31037+ |q 13118/1 |goto 78.7,60.2
		You can find another Forgotten Depths High Priest at the following location |goto 76.2,61.0
	step
		talk Father Gustav##30683
		turnin The Restless Dead##13110 |goto 82.9,72.8
	step
		talk The Ebon Watcher##30596
		turnin The Purging Of Scourgeholme##13118 |goto 83.0,72.9
		turnin The Scourgestone##13122 |goto 83.0,72.9
		accept The Air Stands Still##13125 |goto 83.0,72.9
	step
		Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206
		|tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
		kill Salranax the Flesh Render##30829 |q 13125/1 |goto 77.6,62.2
	step
		Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206
		|tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
		kill High Priest Yath'amon##30831 |q 13125/3 |goto 79.7,60.9
	step
		Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206
		|tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
		kill Underking Talonox##30830 |q 13125/2 |goto 76.6,54.1
	step
		Click the portal that appears and travel to the Valley of Echoes |goto Icecrown 83.0,72.6 < 5
		talk The Ebon Watcher##30596
		turnin The Air Stands Still##13125 |goto 83.0,72.9
	step
		kill Unbound Ent##30862+, Unbound Dryad##30860+
		collect 8 Crystallized Energy##43225 |q 13135/1 |goto Crystalsong Forest 59.9,57.2
		click Crystalline Heartwood##192908
		collect 10 Crystalline Heartwood##43217 |q 13130/1 |goto Crystalsong Forest 59.9,57.2
	step
		click Ancient Elven Masonry##192912
		collect 10 Ancient Elven Masonry##43218 |q 13130/2 |goto 73.6,64.0
		You can find more Ancient Elven Masonry at the following location |goto 79.6,61.3
	step
		talk Crusade Architect Silas##30686
		turnin The Stone That Started A Revolution##13130 |goto Icecrown 83.0,73.1
	step
		talk Crusade Engineer Spitzpatrick##30714
		turnin It Could Kill Us All##13135 |goto 83.0,73.1
	step
		talk Father Gustav##30683
		accept Into The Frozen Heart Of Northrend##13139 |goto 82.9,72.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Into The Frozen Heart Of Northrend##13139 |goto 86.0,75.8
		accept The Battle For Crusaders' Pinnacle##13141 |goto 86.0,75.8
	step
		Stand next to the Pile of Crusader Skulls
		Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		Defend the Banner of the Crusade against oncoming attackers
		Complete the Battle for Crusaders' Pinnacle |q 13141/1 |goto 80.1,72.0
	step
		talk Father Gustav##30683
		turnin The Battle For Crusaders' Pinnacle##13141 |goto 82.9,72.8
		accept The Crusaders' Pinnacle##13157 |goto 82.9,72.8
	step
		talk Highlord Tirion Fordring##28179
		turnin The Crusaders' Pinnacle##13157 |goto 79.8,71.8
		accept A Tale of Valor##13068 |goto 79.8,71.8
	step
		talk Marshal Ivalius##31241
		accept The Skybreaker##13225 |goto 79.4,72.9
	step
		talk Crusader Bridenbrad##30562
		turnin A Tale of Valor##13068 |goto 79.8,30.8
		accept A Hero Remains##13072 |goto 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin A Hero Remains##13072 |goto 79.8,71.8
		accept The Keeper's Favor##13073 |goto 79.8,71.8
	step
		talk Arch Druid Lilliandra##30630
		Ask her for a portal to Moonglade |goto 87.1,77.0 < 5
		talk Keeper Remulos##11832
		turnin The Keeper's Favor##13073 |goto Moonglade 36.2,41.8
		accept Hope Within the Emerald Nightmare##13074 |goto Moonglade 36.2,41.8
	step
		click Emerald Acorn##192676
		collect 3 Emerald Acorn##44790 |q 13074/1 |goto 33.7,44.1
	step
		Right click your Fitfull Dream buff to awaken from the nightmare |nobuff Spell_Nature_Sleep |q 13074
		|tip The Fitfull Dream buff icon looks like a closed eye.
	step
		talk Keeper Remulos##11832
		turnin Hope Within the Emerald Nightmare##13074 |goto 36.2,41.8
		accept The Boon of Remulos##13075 |goto 36.2,41.8
	step
		talk Keeper Remulos##11832
		Tell him you wish to return to Arch Druid Lilliandra |goto 36.2,41.8 < 5 |walk
		talk Crusader Bridenbrad##30562
		turnin The Boon of Remulos##13075 |goto Icecrown 79.8,30.8
		accept Time Yet Remains##13076 |goto Icecrown 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Time Yet Remains##13076 |goto 79.8,71.8
		accept The Touch of an Aspect##13077 |goto 79.8,71.8
	step
		talk Tariolstrasz##26443
		Tell him you need to go to the top of the temple |goto Dragonblight 57.9,54.2 < 5
		talk Alexstrasza the Life-Binder##26917
		turnin The Touch of an Aspect##13077 |goto 59.8,54.7
		accept Dahlia's Tears##13078 |goto 59.8,54.7
	step
		talk Torastrasza##26949
		Tell him you want to go to the ground level of the temple |goto 59.5,53.3 < 5
		There should be a fight happening, so just wait around until the fight is over
		|tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
		At the end of the fight, a Ruby Watcher will blow a lot of fire on the ground and the Dahlia's Tears will spawn
		click Dahlia's Tears##192773
		collect Dahlia's Tears##43084 |q 13078/1 |goto 43.2,51.7
	step
		talk Tariolstrasz##26443
		Tell him you need to go to the top of the temple |goto 57.9,54.2 < 5
		talk Alexstrasza the Life-Binder##26917
		turnin Dahlia's Tears##13078 |goto 59.8,54.7
		accept The Boon of Alexstrasza##13079 |goto 59.8,54.7
	step
		talk Torastrasza##26949
		Tell him you want to go to the ground level of the temple |goto Dragonblight 59.5,53.3 < 5
		talk Crusader Bridenbrad##30562
		turnin The Boon of Alexstrasza##13079 |goto Icecrown 79.8,30.8
		accept Hope Yet Remains##13080 |goto Icecrown 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Hope Yet Remains##13080 |goto 79.8,71.8
		accept The Will of the Naaru##13081 |goto 79.8,71.8
	step
		Click the Portal to Shattrath that appears near you
		talk A'dal##18481
		turnin The Will of the Naaru##13081 |goto Shattrath City 54,44.8
		accept The Boon of A'dal##13082 |goto Shattrath City 54,44.8
	step
		talk Crusader Bridenbrad##30562
		turnin The Boon of A'dal##13082 |goto Icecrown 79.8,30.8
	step
	label "Tabard"
		You should now be above Honored with the _Argent Crusade_
		The fastest way to continue to earn reputation with Argent Crusade is to buy a tabard and run any dungeon that gives experience
		|confirm
	step
		talk Veteran Crusader Aliocha Segard##30431
		buy 1 Tabard of the Argent Crusade##43154 |goto Icecrown 87.5,75.6
	step
		Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
		You can run any dungeon in Northrend to gain reputation for the Argent Crusade
		Friendly with Argent Crusade |complete rep("Argent Crusade")>=Friendly
		Honored with Argent Crusade |complete rep("Argent Crusade")>=Honored
		Revered with Argent Crusade |complete rep("Argent Crusade")>=Revered
		Become Exalted with Argent Crusade |complete rep("Argent Crusade")==Exalted
	step
		Congratulations! You are now Exalted with the Argent Crusade!
]])

---------------------------
----- The Argent Dawn -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Argent_Dawn_Rep",[[
	--step
	--	Routing to proper section |next |only if not completedq(27527)
	--	Routing to proper section |next "Annals" |only if completedq(27527)
	step
		talk Fiona##45417
		turnin Into the Woods##27683 |only if haveq(27683) |goto Eastern Plaguelands 9.0,66.5
		accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands 9.0,66.5
		accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.0,66.5
	step
		talk Gidwin Goldbraids##45428
		turnin Gidwin Goldbraids##27367 |goto 4.1,36.0
		accept Just Encased##27368 |goto 4.1,36.0
	step
		Enter the tunnel |goto 4.7,35.6 < 10 |walk
		kill Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+
		|tip All inside this tunnel.
		collect 8 Crypt Bile##60983 |q 27368/1 |goto 5.1,33.4
	step
		Leave the tunnel |goto 4.7,35.6 < 10 |walk
		talk Gidwin Goldbraids##45428
		turnin Just Encased##27368 |goto Eastern Plaguelands 4.1,36.0
		accept Greasing the Wheel##27369 |goto Eastern Plaguelands 4.1,36.0
	step
		click Banshee's Bell##9889+
		|tip They are located right along the edge of the water.
		collect 10 Banshee's Bells##60984 |q 27369/1 |goto 3.4,38.0
	step
		talk Fiona##45417
		turnin Greasing the Wheel##27369 |goto 9.0,66.5
	step
		talk Tarenar Sunstrike##45429
		turnin Tarenar Sunstrike##27370 |goto 18.4,74.8
		accept What I Do Best##27371 |goto 18.4,74.8
	step
		kill 5 Death's Step Miscreation##45444+ |q 27371/1
	step
		Click the _Quest Complete_ box:
		turnin What I Do Best##27371 |goto 18.6,76.9
		accept A Gift For Fiona##27372 |goto 18.6,76.9
	step
		kill Plaguehound Runt##8596+
		|tip They share spawn locations with the Carrion Grubs. So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
		collect 10 Plaguehound Blood##60986 |q 27372/1 |goto 17.2,68.7
		You can find more Plague Hound Runts at the following location |goto Eastern Plaguelands 14.4,63.0
	step
		talk Fiona##45417
		turnin A Gift For Fiona##27372 |goto 9.0,66.5
		accept Onward, to Light's Hope Chapel##27373 |goto 9.0,66.5
	step
		clicknpc Fiona's Caravan##45400
		Choose 1 of the 3 buffs you can choose from |goto 8.8,66.6
		|tip All of the buffs only work while you're in Eastern Plaguelands. Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies. Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks. Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
		|confirm
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan |q 27373/1 |goto 8.8,66.6
	step
		talk Urk Gagbaz##45500
		accept Zaeldarr the Outcast##27432 |goto 35.0,68.1
	step
		talk Fiona##45417
		turnin Onward, to Light's Hope Chapel##27373 |goto 34.9,69.1
	step
		talk Tarenar Sunstrike##45429
		accept Traveling Companions##27381 |goto 35.3,68.8
	step
		talk Carlin Redpath##11063
		accept Little Pamela##27383 |goto 35.6,68.9
	step
		Go to the top of the tower
		talk Argus Highbeacon##45451
		Ask him if he's interested in joining your caravan
		Find a traveling companion |q 27381/1 |goto 35.9,69.3
	step
		talk Argus Highbeacon##45451
		accept Rough Roads##27382 |goto 35.9,69.3
	step
		talk Tarenar Sunstrike##45429
		turnin Traveling Companions##27381 |goto 35.3,68.9
	step
		talk Pamela Redpath##10926
		turnin Little Pamela##27383 |goto 32.4,83.7
		accept Pamela's Doll##27384 |goto 32.4,83.7
		accept I'm Not Supposed to Tell You This##27392 |goto 32.4,83.7
	step
		You can find the doll parts in all of the buildings
		click Pamela's Doll's Right Side##176143
		collect Pamela's Doll's Right Side##12888 |q 27384 |goto 35.5,85.3
		click Pamela's Doll's Left Side##176142
		collect Pamela's Doll's Left Side##12887 |q 27384 |goto 35.5,85.3
		click Pamela's Doll's Head##176116
		collect Pamela's Doll's Head##12886 |q 27384 |goto 35.5,85.3
	step
		Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
		collect Pamela's Doll##12885 |q 27384/1
	step
		kill The Lone Hunter##45450
		collect Joseph's Hunting Blade##60987 |q 27392/1 |goto 40.3,83.8
	step
		talk Pamela Redpath##10926
		turnin Pamela's Doll##27384 |goto 32.4,83.7
		turnin I'm Not Supposed to Tell You This##27392 |goto 32.4,83.7
		accept Uncle Carlin##27385 |goto 32.4,83.7
	step
		talk Carlin Redpath##11063
		turnin Uncle Carlin##27385 |goto 35.6,68.9
		accept A Strange Historian##27386 |goto 35.6,68.9
	step
		talk Chromie##10667
		turnin A Strange Historian##27386 |goto 35.3,68.0
		accept Villains of Darrowshire##27387 |goto 35.3,68.0
		accept Heroes of Darrowshire##27388 |goto 35.3,68.0
		accept Marauders of Darrowshire##27389 |goto 35.3,68.0
	step
		talk Urk Gagbaz##45500
		accept Cenarion Tenacity##27544 |goto 35.0,68.1
	stickystart "plaguebat"
	step
		talk Carlin Redpath##11063
		Ask him if he has the extended Annals of Darrowshire
		collect Extended Annals of Darrowshire##13202 |q 27388/1 |goto 35.6,68.9
	step
		click Shattered Sword of Marduk##176209
		collect Shattered Sword of Marduk##12957 |q 27387/2 |goto 39.8,72.4
	step
	label "plaguebat"
		kill 13 Plaguebat##8600+ |q 27382/1 |goto 39.6,72.1
	step
		Go to the top of the tower
		talk Argus Highbeacon##45451
		turnin Rough Roads##27382 |goto 35.6,68.7
	step
		Enter the crypt |goto 24.2,78.5 < 10 |walk
		kill Zaeldarr the Outcast##12250
		collect Zaeldarr's Head##15785 |q 27432/1 |goto 23.8,77.9
	step
		click Redpath's Shield##176207
		collect Redpath's Shield##12955 |q 27388/3 |goto 22.1,68.2
	step
		Go upstairs
		click Davil's Libram##176206
		collect Davil's Libram##12954 |q 27388/2 |goto 22.3,68.3
	step
		talk Urk Gagbaz##45500
		turnin Zaeldarr the Outcast##27432 |goto 35.0,68.2
	step
		talk Chromie##10667
		turnin Heroes of Darrowshire##27388 |goto 35.2,68.1
	step
		click Horgus' Skull##176208
		collect Skull of Horgus##12956 |q 27387/1 |goto 37.3,60.2
	step
		talk Rayne##16135
		turnin Cenarion Tenacity##27544 |goto 30.2,56.9
		accept Postponing the Inevitable##27420 |goto 30.2,56.9
		accept Amidst Death, Life##27421 |goto 30.2,56.9
	stickystart "scourgechampion"
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Western Necropolis |q 27421/2 |goto 33.7,44.4
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto 37.8,42.5
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto 37.6,48.3
	step
	label "scourgechampion"
		kill Scourge Champion##8529+
		collect Fetid Skull##13157 |n
		Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
		collect 5 Resonating Skull##13155 |q 27389/1 |goto 36.4,46.0
		kill Shadowmage##8550+, Dark Adept##8546+
		collect Plague Disseminator Control Rune##61037 |n
		Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		Destroy #3# Plague Disseminators |q 27420/1 |goto 36.4,46.0
	step
		talk Rayne##16135
		turnin Postponing the Inevitable##27420 |goto 30.2,56.9
		turnin Amidst Death, Life##27421 |goto 30.2,56.9
	step
		talk Chromie##10667
		turnin Villains of Darrowshire##27387 |goto 35.3,68.1
		turnin Marauders of Darrowshire##27389 |goto 35.3,68.1
		accept The Battle of Darrowshire##27390 |goto 35.3,68.1
	step
		Use your Relic Bundle |use Relic Bundle##15209
		Fight in the battle and follow the instructions that appear on your screen
		kill Redpath the Corrupted##10938
		Joseph Redpath will appear after the battle at the following location |goto Eastern Plaguelands 35.1,84.0
		talk Joseph Redpath##10936
		Accept Redpath's Forgiveness |q 27390/1 |goto 35.1,84.0
	step
		talk Pamela Redpath##10926
		turnin The Battle of Darrowshire##27390 |goto 32.4,83.7
		accept Hidden Treasures##27391 |goto 32.4,83.7
	step
		click Joseph's Chest##177544
		turnin Hidden Treasures##27391 |goto 32.2,83.4
	step
		talk Fiona##45417
		accept The Trek Continues##27448 |goto 34.9,69.2
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride in Fiona's Caravan |q 27448/1 |goto 35.0,69.3
	step
		talk Fiona##45417
		turnin The Trek Continues##27448 |goto 52.9,53.1
		accept Boys Will Be Boys##27455 |goto 52.9,53.1
	step
		clicknpc Fiona's Caravan##45400
		Complete the Argus' Journal quest |goto 53.0,53.1
		|tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
		|confirm
	step
		talk Betina Bigglezink##11035
		accept To Kill With Purpose##27451 |goto 53.2,54.6
		accept Dark Garb##27452 |goto 53.2,54.6
	step
		Go to the top of the tower
		talk Frederick Calston##45575
		accept Frederick's Fish Fancy##27450 |goto 53.8,54.0
	step
		talk Vex'tul##45574
		accept Honor and Strength##27449 |goto 52.8,51.4
		kill 3 Mossflayer Rogue##45579+ |q 27449/1 |goto 52.8,51.4
	step
		talk Vex'tul##45574
		turnin Honor and Strength##27449 |goto 52.8,51.4
	stickystart "killwithpurpose"
	step
		clicknpc Plague Puffer##45650+
		collect 8 Plague Puffer##61292 |q 27450/1 |goto 50.2,61.3
		clicknpc Infectis Incher##45655+
		collect 8 Infectis Incher##61293 |q 27450/2 |goto 50.2,61.3
		clicknpc Infectis Scuttler##45657+
		collect 8 Infectis Scuttler##61294 |q 27450/3 |goto 50.2,61.3
	step
	label "killwithpurpose"
		kill Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
		collect 7 Living Rot##15447 |n
		|tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
		Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
		collect Coagulated Rot##15448 |q 27451/1 |goto 53.7,62.3
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin To Kill With Purpose##27451
	step
		kill Dark Summoner##8551+, Vile Tutor##8548+
		collect Death Cultist Headwear##61280 |q 27452/1 |goto 55.7,61.0
		collect Death Cultist Robes##61281 |q 27452/2 |goto 55.7,61.0
	step
		Click the _Quest Complete_ box:
		turnin Dark Garb##27452
		accept Catalysm##27453
	step
		Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
		collect 8 Active Liquid Plague Agent##61285 |q 27453/1 |goto 57.6,72.6
	step
		Click the _Quest Complete_ box:
		turnin Catalysm##27453
		accept Just a Drop in the Bucket##27454
	step
		Use your Death Cultist Disguise |use Death Cultist Disguise##61283
		Wear your Death Cultist Disguise |havebuff 340019 |q 27454 |goto 61.7,75.5 --inv_helmet_152
	step
		click Mereldar Plague Cauldron##205485
		Choose to throw in an entire flask
		Disturb the Mereldar Plague Cauldron |q 27454/1 |goto 62.4,76.4
	step
		talk Betina Bigglezink##11035
		turnin Just a Drop in the Bucket##27454 |goto 53.2,54.6
	step
		Go to the top of the tower
		talk Frederick Calston##45575
		turnin Frederick's Fish Fancy##27450 |goto 53.8,54.0
	step
		talk Gidwin Goldbraids##45431
		turnin Boys Will Be Boys##27455 |goto 74.4,53.3
		accept A Boyhood Dream##27463 |goto 74.4,53.3
	step
		talk Rimblat Earthshatter##16134
		accept Gathering Some Grub(s)##27456 |goto 73.8,51.9
	step
		talk Smokey LaRue##11033
		accept Smokey and the Bandage##27458 |goto 74.9,53.5
	step
		talk Jessica Chambers##16256
		home Light's Hope Chapel |goto 75.6,52.4
	step
		talk Leonid Barthalomew the Revered##11036
		accept The Brotherhood of Light##27459 |goto 75.6,52.0
	step
		talk Lord Maxwell Tyrosus##11034
		turnin A Boyhood Dream##27463 |goto 75.9,52.0
		accept Argent Call: The Trial of the Crypt##27464 |goto 75.9,52.0
	step
		Enter the crypt |goto 77.2,50.8 < 10 |walk
		Go to the bottom of the crypt
		Use your Argent Scroll |use Argent Scroll##61309
		kill Argent Warden##45698+
		kill Lord Raymond George##45707
		Complete the Trial of the Crypt |q 27464/1 |goto 77.2,51.4
	step
		talk Lord Maxwell Tyrosus##11034
		turnin Argent Call: The Trial of the Crypt##27464 |goto 75.9,52.0
		accept Argent Call: The Noxious Glade##27465 |goto 75.9,52.0
	step
		talk Master Craftsman Omarion##16365
		accept Buried Blades##27467 |goto 75.7,52.0
	step
		kill Stephen Browman##46167
		collect Browman's Wrappings##62028 |q 27458/1 |goto 71.9,45.4
	step
		Run up the path |goto 72.1,41.6 < 10 |only if walking
		kill 16 Noxious Glade Scourge |q 27465/1 |goto 77.4,37.3
		kill 8 Noxious Glade Cultists |q 27465/2 |goto 77.4,37.3
		clicknpc Slain Scourge Trooper##45695+
		Bury #10# Blades |q 27467/1
		kill Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
		kill Skullmage##45691+, Noxious Assassin##45692+
		|tip Be careful of the patrolling elite, Garginox, in this area.
	step
		talk Master Craftsman Omarion##16365
		turnin Buried Blades##27467 |goto 75.7,52.0
	step
		talk Lord Maxwell Tyrosus##11034
		turnin Argent Call: The Noxious Glade##27465 |goto 75.9,52.0
	step
		talk Smokey LaRue##11033
		turnin Smokey and the Bandage##27458 |goto 74.9,53.5
	step
		kill Carrion Grub##8603+, Carrion Devourer##8605+
		collect 15 Slab of Carrion Worm Meat##13853 |q 27456/1 |goto 71.1,60.6
	step
		talk Archmage Angela Dosantos##16116
		turnin The Brotherhood of Light##27459 |goto 72.6,74.8
		accept Soft Landing##27460 |goto 72.6,74.8
	step
		kill Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
		Kill #10# Tyr's Hand Scarlet Crusaders |q 27460/1 |goto 73.6,74.8
	step
		click Crusader's Flare##205875
		turnin Soft Landing##27460 |goto 77.6,79.4
		accept To Take the Abbey##27461 |goto 77.6,79.4
		accept To Take the Barracks##27462 |goto 77.6,79.4
	step
		talk Crusade Commander Korfax##16112
		turnin To Take the Barracks##27462 |goto 75.3,76.2
		accept Scarlet Salvage##27614 |goto 75.3,76.2
		accept The Wrathcaster##27615 |goto 75.3,76.2
		accept The Huntsman##27616 |goto 75.3,76.2
		accept The Commander##27619 |goto 75.3,76.2
	step
		click Battered Chest##205880
		collect Crimson Boar##61959 |q 27614/1 |goto 74.8,76.7
	step
		click Battered Chest##205880
		collect Lihanna's Strand##61960 |q 27614/2 |goto 74.2,78.3
	step
		click Battered Chest##205880
		collect Shroud of Uther##61961 |q 27614/3 |goto 75.1,79.0
	step
		click Battered Chest##205880
		collect Gavinrad's Sigil##61962 |q 27614/4 |goto 75.9,77.5
	step
		Go into the basement of the fortress
		kill Mataus the Wrathcaster##46093 |q 27615/1 |goto 75.0,78.3
	step
		Go upstairs into the main room of the fortress
		kill Scarlet Commander Marjhan##46092 |q 27619/1 |goto 74.9,78.3
	step
		Go down the hall and up more stairs
		kill Huntsman Leopold##46094 |q 27616/1 |goto 74.5,77.5
	step
		talk Crusade Commander Korfax##16112
		turnin Scarlet Salvage##27614 |goto 75.3,76.2
		turnin The Wrathcaster##27615 |goto 75.3,76.2
		turnin The Huntsman##27616 |goto 75.3,76.2
		turnin The Commander##27619 |goto 75.3,76.2
		accept Argent Upheaval##27618 |goto 75.3,76.2
	step
		talk Archmage Angela Dosantos##16116
		turnin Argent Upheaval##27618 |goto 76.1,75.3
	step
		talk Crusade Commander Eligor Dawnbringer##16115
		turnin To Take the Abbey##27461 |goto 76.7,73.1
		accept Victory From Within##27612 |goto 76.7,73.1
		accept The Assassin##27613 |goto 76.7,73.1
	step
		Click the Argent Portal
		|tip It looks like a swirling portal in a room on the north side of the building. Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
		Open the Portal within the Library Wing |q 27612/2 |goto 77.8,71.0
	step
		Click the Argent Portal
		|tip It looks like a swirling portal in a room on the west side of the building.
		Open the Portal Within the Hall of Arms |q 27612/1 |goto 78.6,72.9
	step
		Follow the big spiral stairs up to the top of the bell tower
		kill Rohan the Assassin##46095 |q 27613/1 |goto 77.6,72.7
	step
		talk Crusade Commander Eligor Dawnbringer##16115
		turnin Victory From Within##27612 |goto 76.7,73.1
		turnin The Assassin##27613 |goto 76.7,73.1
		accept Befouled No More##27617 |goto 76.7,73.1
	step
		talk Archmage Angela Dosantos##16116
		turnin Befouled No More##27617 |goto 76.1,75.3
		accept Like Rats##27620 |goto 76.1,75.3
	step
		kill Crusader Lord Valdelmar##46096 |q 27620/1 |goto 82.3,79.4
	step
		talk Leonid Barthalomew the Revered##11036
		turnin Like Rats##27620 |goto 75.6,52.0
	step
		talk Tarenar Sunstrike##45729
		accept Argent Call: Northdale##27466 |goto Eastern Plaguelands 75.8,52.4
	step
		talk Rimblat Earthshatter##16134
		turnin Gathering Some Grub(s)##27456 |goto 73.8,51.9
		accept An Opportune Alliance##27457 |goto 73.8,51.9
	step
		talk Vex'tul##45574
		accept Out of the Ziggurat##27481 |goto 61.8,41.0
	step
		talk Deacon Andaal##45736
		accept Righteous Indignation##27479 |goto 61.0,43.7
	step
		talk Gamella Cracklefizz##45735
		accept The Corpulent One##27477 |goto 61.6,43.1
	step
		talk Fiona##45417
		turnin An Opportune Alliance##27457 |goto 61.5,42.7
		turnin Argent Call: Northdale##27466 |goto 61.5,42.7
	step
		talk Tarenar Sunstrike##45729
		accept Ix'lar the Underlord##27487 |goto 61.6,43.2
	step
		kill Ix'lar the Underlord##45744 |q 27487/1 |goto 61.8,35.7
		|tip He's a big purple bug that walks around this area, so you may need to search for him.
		kill Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
		Kill #10# Ix'lar Minions |q 27487/2 |goto 61.8,35.7
	step
		kill Borelgore##11896 |q 27477/1 |goto 56.7,27.9
		|tip He's a huge yellow grub that walks along in this big trench.
	stickystart "mossflayereye"
	step
		Run up the path |goto 58.9,20.4 < 10 |only if walking
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Warlord Thresh'jin##10822
		|tip Don't worry that he's elite, you can kill him easily.
		collect Body of Warlord Thresh'jin##61315 |q 27481/1 |goto 66.8,9.9
	step
		Click the _Quest Complete_ box:
		turnin Out of the Ziggurat##27481
		accept Into the Flames##27482
	step
		Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
		Burn Warlord Thresh'jin's Body |q 27482/1 |goto 67.4,9.0
	step
		Click the _Quest Complete_ box:
		turnin Into the Flames##27482
	step
	label "mossflayereye"
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+, Infected Mossflayer##12261+
		collect 30 Mossflayer Eye##61313 |q 27479/1 |goto 64.5,13.7
	step
		talk Deacon Andaal##45736
		turnin Righteous Indignation##27479 |goto 61.3,44.5
	step
		talk Gamella Cracklefizz##45735
		turnin The Corpulent One##27477 |goto 61.6,43.1
	step
		talk Fiona##45417
		turnin Ix'lar the Underlord##27487 |goto 61.5,42.7
	step
		talk Tarenar Sunstrike##45729
		accept Impatience##27488 |goto 61.6,43.2
	step
		click Open Prayer Book##205537
		collect Gidwin's Prayer Book##61318 |q 27488/1 |goto 65.5,24.4
	step
		talk Tarenar Sunstrike##45729
		turnin Impatience##27488 |goto 61.6,43.2
		accept Nobody to Blame but Myself##27489 |goto 61.6,43.2
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan to Northpass Tower |q 27489/1 |goto 61.6,42.5
	step
		talk Tarenar Sunstrike##45729
		turnin Nobody to Blame but Myself##27489 |goto 50.4,20.1
		accept Beat it Out of Them##27522 |goto 50.4,20.1
	step
		talk Kirkian Dawnshield##45826
		accept Wretched Hive of Scum and Villainy##27521 |goto 50.0,19.5
	step
		kill Scourge Siege Engineer##17878+
		Beat #6# Scourge Siege Engineers |q 27522/1 |goto 54.6,19.1
		Discover Gidwin's Location |q 27522/2 |goto 54.6,19.1
		Discover Gidwin's Captor |q 27522/3 |goto 54.6,19.1
	step
		kill Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
		Kill #9# Quel'lithien Wretched |q 27521/1 |goto 47.0,17.4
	step
		talk Corpseburner Tim##45816
		accept Duskwing, Oh How I Hate Thee...##27523 |goto 48.0,23.0
	step
		Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334
		|tip If you get a message that there are no valid targets, wait until Duskwing spawns. He's a big gray bat that flies in the sky around this area.
		kill Duskwing##11897
		collect Patch of Duskwing's Fur##15850 |q 27523/1 |goto 46.4,33.8
	step
		talk Corpseburner Tim##45816
		turnin Duskwing, Oh How I Hate Thee...##27523 |goto 48.0,23.0
	step
		talk Fiona##45417
		turnin Beat it Out of Them##27522 |goto 50.5,20.2
		accept Blind Fury##27524 |goto 50.5,20.2
	step
		talk Argus Highbeacon##45451
		accept The Plaguewood Tower##27532 |goto 50.5,20.2
	step
		talk Kirkian Dawnshield##45826
		turnin Wretched Hive of Scum and Villainy##27521 |goto 50.0,19.5
	step
		talk Tarenar Sunstrike##45729
		turnin Blind Fury##27524 |goto 27.6,21.2
		accept Guardians of Stratholme##27525 |goto 27.6,21.2
	step
		talk Crusader Kevin Frost##45831
		accept Scourged Mass##27528 |goto 27.6,20.9
		accept Defenders of Darrowshire##27529 |goto 27.6,20.9
		accept Add 'em to the Pile##27539 |goto 27.6,20.9
	step
		kill Karthis Darkrune##45868 |q 27525/2
		collect The Baroness' Missive##61378 |n
		Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
		accept The Baroness' Missive##27551 |goto 29.4,19.7
	step
		talk Tarenar Sunstrike##45729
		turnin The Baroness' Missive##27551 |goto 27.4,21.3
		accept Gidwin's Fate Revealed##27526 |goto 27.4,21.3
	step
		Enter this building and watch the cutscene
		Find Gidwin Goldbraids |q 27526/1 |goto 29.1,26.2
	step
		talk Gidwin Goldbraids##45730
		turnin Gidwin's Fate Revealed##27526 |goto 28.4,25.9
		accept Journey's End##27527 |goto 28.4,25.9
	stickystart "plaguewood"
	step
		kill Omasum Blighthoof##45867 |q 27525/1 |goto 25.4,19.8
	step
	label "plaguewood"
		All around Plaguewood, do the following:
		kill Overstuffed Golem##45851+
		Use your Crusader's Torch on their corpses |use Crusader's Torch##61369
		Burn #8# Overstuffed Golem Corpses |q 27528/1 |goto 31.4,20.3
		kill Cursed Mage##8524+, Scourge Soldier##8523+
		collect 16 Stinking Skull##61372 |q 27539/1 |goto 31.4,20.3
		kill Cannibal Ghoul##8530+
		talk Darrowshire Spirit##11064
		|tip They spawn after you kill Cannibal Ghouls.
		Free #8# Darrowshire Spirits |q 27529/1 |goto 31.4,20.3
	step
		talk Tarenar Sunstrike##45729
		turnin Guardians of Stratholme##27525 |goto 28.5,25.9
	step
		talk Crusader Kevin Frost##45831
		turnin Scourged Mass##27528 |goto 27.6,20.9
		turnin Defenders of Darrowshire##27529 |goto 27.6,20.9
		turnin Add 'em to the Pile##27539 |goto 27.6,20.9
		accept The Corpsebeasts##27530 |goto 27.6,20.9
	step
		Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375
		|tip You will have to put 3 around each corpse, and you can't put them too close together.
		Destroy #3# Corpsebeasts |q 27530/1 |goto 28.3,32.3
	step
		talk Crusader Kevin Frost##45831
		turnin The Corpsebeasts##27530 |goto 27.6,20.9
	step
		talk Argent Apothecary Judkins##45828
		turnin The Plaguewood Tower##27532 |goto 17.7,28.0
		accept Counter-Plague Research##27531 |goto 17.7,28.0
		accept Just a Little Touched##27535 |goto 17.7,28.0
	step
		click Flesh Giant Foot##205558
		collect Flesh Giant Foot Scrapings##61366 |q 27531/3 |goto 25.1,34.5
	step
		Lying on the ground all around this area:
		click Rotberry Bush##205559
		collect 20 Rotberry##61364 |q 27531/1 |goto 23.5,22.4
		click Disembodied Arm##205560
		collect 5 Disembodied Arm##61365 |q 27531/2 |goto 23.5,22.4
	step
		talk Argent Apothecary Judkins##45828
		turnin Counter-Plague Research##27531 |goto 17.7,28.0
	step
		talk Augustus the Touched##12384
		turnin Just a Little Touched##27535 |goto 11.3,28.6
		accept A Fate Worse Than Butchery##27533 |goto 11.3,28.6
		accept Augustus' Receipt Book##27534 |goto 11.3,28.6
	stickystart "plaguedswine"
	step
		click Augustus' Receipt Book##177789
		|tip The Receipt Book is upstairs in the far room.
		collect Augustus' Receipt Book##15884 |q 27534/1 |goto 14.2,26.3
	step
	label "plaguedswine"
		kill 9 Plagued Swine##16117+ |q 27533/1 |goto 14.4,28.5
	step
		talk Augustus the Touched##12384
		turnin A Fate Worse Than Butchery##27533 |goto 11.3,28.6
		turnin Augustus' Receipt Book##27534 |goto 11.3,28.6
	step
		talk Fiona##45417
		turnin Journey's End##27527 |goto 73.7,52.1
	step
	label "Annals"
		talk Lord Raymond George##49856
		|tip These are dungeon quests. If you are not high level, you will need to get a group to continue.
		accept Annals of the Silver Hand##28755 |repeatable |goto 76.1,51.0
	step
		click The Bastion Door##444
		Enter the hallway |goto Stratholme 30.5,35.8 < 10
		click Hall of the High Command Door##444
		Enter the Hallway and turn left |goto 20.1,59.5 < 10
		click Annals of the Silver Hand##207389
		collect Annals of the Silver Hand##65615 |q 28755/1 |repeatable |goto Stratholme 27.5,74.7
	step
		talk Lord Raymond George##49856
		turnin Annals of the Silver Hand##28755 |goto Eastern Plaguelands 76.2,51.0
		|tip If you do not reset your instance then you will only be forced to clear mobs one time.
		Earn Exalted reputation with the Argent Dawn |complete rep('Argent Dawn')==Exalted |only if rep('Argent Dawn')==Exalted
		|next "Annals" |only if rep('Argent Dawn')<=Revered
		|next "exalted" |only if rep('Argent Dawn')==Exalted
	step
	label "exalted"
		Congratulations, you are now Exalted with the Argent Dawn!
]])

---------------------------
----- Cenarian Circle -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Cenarion_Circle_Rep",[[
	step
	label "menu"
		There are several ways to earn reputation with _Cenarion Circle_. Earning Exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
		You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_. You would need at least 1 other person to form the raid.
		There are a large number of _quests_ available at _Cenarion Hold_, but once those are completed you'll need to grind your way to Exalted. Click here to go to these quests |confirm always |next "quest"
		The _only repeatable quest_ as of 4.2 is from Bor Wildmane at Cenarion Hold. You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm_text"
		|next "exalted" |only if rep('Cenarion Circle')==Exalted
	step
	label "quest"
		talk Windcaller Proudhorn##15191
		accept Securing the Supply Lines##8280 |goto Silithus 54.9,36.0
	step
		click Wanted Poster: Deathclasp##180448
		accept Wanted - Deathclasp, Terror of the Sands##8283 |goto 55.0,36.0
		|tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it. You can skip this quest if you can't solo it and can't find a partner to help.
	step
		talk Calandrath##15174
		home Cenarion Hold |goto 55.5,36.8
	step
		talk Beetix Ficklespragg##15189
		accept Deadly Desert Venom##8277 |goto 55.4,36.3
	step
		talk Rifleman Torrig##17082
		accept Report to Marshal Bluewall##9415 |goto 54.5,33.0
	step
		talk Bor Wildmane##15306
		accept Secret Communication##8318 |goto 53.2,35.1
	step
		talk Huum Wildmane##15270
		accept Twilight Geolords##8320 |goto 53.2,35.1
	step
		kill Twilight Avenger##11880+, Twilight Stonecaller##11882+
		collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto 45.4,41.3
		collect 20 Encrypted Twilight Text##20404 |q 8323 |goto 45.4,41.3 |future
		|tip You need 10 extra Encrypted Twighlight Text for a future quest.
		kill 10 Twilight Geolord##11881+ |q 8320/1 |goto 45.4,41.3
	step
		kill Sand Skitterer##11738+
		collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto 46.2,34.8
		kill Stonelash Scorpid##11735+
		collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto 46.2,34.8
		kill 15 Dredge Striker##11740+ |q 8280/1 |goto 46.2,34.8
	step
		talk Beetix Ficklespragg##15189
		turnin Deadly Desert Venom##8277 |goto 55.4,36.3
		accept Noggle's Last Hope##8278 |goto 55.4,36.3
	step
		talk Windcaller Proudhorn##15191
		turnin Securing the Supply Lines##8280 |goto 54.9,36.0
		accept Stepping Up Security##8281 |goto 54.9,36.0
	step
		talk Bor Wildmane##15306
		turnin Secret Communication##8318 |goto 52.7,35.6
	step
		talk Huum Wildmane##15270
		turnin Twilight Geolords##8320 |goto 52.7,35.7
		accept Vyral the Vile##8321 |goto 52.7,35.7
	step
		Enter the cave |goto 70.2,16.1 < 5 |walk
		|tip Follow the path inside the cave.
		kill Vyral the Vile##15202
		collect Vyral's Signet Ring##20466 |q 8321/1 |goto 73.1,16.5
	step
		Leave the cave |goto 70.2,16.1 < 5 |walk
		talk Huum Wildmane##15270
		turnin Vyral the Vile##8321 |goto 52.7,35.6
	step
		talk Geologist Larksbane##15183
		accept The Twilight Mystery##8284 |goto 53.6,35.3
	step
		click Twilight Tablet Fragments##180436
		collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto 31.0,13.6
	step
		talk Geologist Larksbane##15183
		turnin The Twilight Mystery##8284 |goto 53.6,35.3
		accept The Deserter##8285 |goto 53.6,35.3
	step
		talk Commander Mar'alith##15181
		accept Dearest Natalia##8304 |goto 53.2,32.5
	step
		talk Hermit Ortell##15194
		turnin The Deserter##8285 |goto 68.7,63.0
		accept The Twilight Lexicon##8279 |goto 68.7,63.0
	step
		talk Marshal Bluewall##17080
		turnin Report to Marshal Bluewall##9415 |goto 39.6,47.0
	stickystart "dredgecrusher"
	step
		kill Twilight Keeper Havunth##11804
		|tip He walks around this area in a purple robe, so you may need to search for him.
		collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto 46.2,39.8
	step
		kill Twilight Keeper Mayna##15200
		|tip She walks around this area carrying a book, so you may need to search for her.
		collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto 33.9,34.1
	step
	label "dredgecrusher"
		kill 20 Dredge Crusher##11741+ |q 8281/1 |goto 44.9,48.7
		You can find more Dredge Crushers at the following location |goto Silithus 37.9,32.4
	step
		kill Stonelash Flayer##11737+
		collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto 42.8,63.5
		kill Stonelash Pincer##11736+
		collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto 42.8,63.5
		kill Rock Stalker##11739+
		collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto 42.8,63.5
	step
		talk Windcaller Proudhorn##15191
		turnin Stepping Up Security##8281 |goto 54.9,36.0
	step
		talk Beetix Ficklespragg##15189
		turnin Noggle's Last Hope##8278 |goto 55.4,36.3
	step
		talk Noggle Ficklespragg##15190
		accept Noggle's Lost Satchel##8282 |goto 55.3,36.2
	step
		talk Frankal Stonebridge##15171
		Tell him _"I've heard you might have some information as to the weareabouts of Mistress Natalia Mar'alith."_
		Question Frankal |q 8304/1 |goto 46.0,79.4
	step
		talk Rutgar Glyphshaper##15170
		Tell him _"The Commander has sent me here to gather some information about your missing wife."_
		Question Rutgar |q 8304/2 |goto 46.4,79.1
	step
		Click the _Quest Complete_ box:
		turnin Dearest Natalia##8304
		accept Into The Maw of Madness##8306
	step
		Follow the path up |goto 47.4,81.1 < 10
		click Noggle's Satchel##180435
		|tip Be careful of Deathclasp, the elite scorpion that patrols this small area.
		collect Noggle's Satchel##20379 |q 8282/1 |goto 49.2,81.6
	step
		kill Deathclasp##15196
		collect Deathclasp's Pincer##20385 |q 8283/1 |goto 49.5,81.3
		|tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him. You can skip this quest if you can't solo it and can't find a partner to help.
	step
		kill Twilight Keeper Exeter##11803
		collect Twilight Lexicon - Chapter 2##20395 |q 8279/2 |goto 24.8,77.3
	step
		talk Noggle Ficklespragg##15190
		turnin Noggle's Lost Satchel##8282 |goto 55.3,36.2
	step
		Follow the path up |goto 54.3,34.0 < 10
		talk Vish Kozus##15182
		turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto 54.5,32.0
	step
		talk Frankal Stonebridge##15171
		accept Breaking the Code##8310 |goto 46.0,79.4
	step
		talk Rutgar Glyphshaper##15170
		accept Glyph Chasing##8309 |goto 46.4,79.1
	step
		Enter the hive |goto 58.5,78.4 < 10 |walk
		Follow the path |goto 57.2,79.2 < 10 |walk
		Continue along the path |goto 56.4,83.0 < 10 |walk
		Follow the path towards the open room |goto 56.1,87.8 < 10 |walk
		kill Mistress Natalia Mar'alith##15215
		Discover the Fate of Mistress Natalia Mar'alith |q 8306/1 |goto 55.6,90.6
	step
		click the Hive'Regal Glyphed Crystal##6414
		Select _"<Use the transcription device to gather a rubbing.>"_
		collect Hive'Regal Rubbing##20456 |q 8309/1 |goto 55.6,90.5
	step
		Enter the tunnel |goto 56.1,87.8 < 10 |walk
		Follow the path |goto 56.4,83.0 < 10 |walk
		Continue along the path |goto 57.2,79.2 < 10 |walk
		Leave the hive |goto 58.5,78.4 < 10 |walk
		kill Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
		collect Hive'Regal Silithid Brain##20459 |q 8310/1 |goto 59.3,74.8
		collect 1 Brann Bronzebeard's Lost Letter##20461 |n
		Use Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
		accept Brann Bronzebeard's Lost Letter##8308 |goto 59.3,74.8
	step
		Follow the path up |goto 65.8,76.5 < 10 |only if walking
		talk Hermit Ortell##15194
		turnin The Twilight Lexicon##8279 |goto 68.7,63.0
		accept A Terrible Purpose##8287 |goto 68.7,63.0
		accept True Believers##8323 |goto 68.7,63.0
	step
		talk Commander Mar'alith##15181
		turnin Into The Maw of Madness##8306 |goto 53.2,32.5
		turnin A Terrible Purpose##8287 |goto 53.2,32.5
	step
		kill Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
		collect 10 Encrypted Twilight Text##20404 |q 8323/1 |goto 45.4,41.3
	step
		talk Frankal Stonebridge##15171
		turnin Breaking the Code##8310 |goto 46.0,79.4
	step
		talk Rutgar Glyphshaper##15170
		turnin Brann Bronzebeard's Lost Letter##8308 |goto 46.4,79.1
		turnin Glyph Chasing##8309 |goto 46.4,79.1
		accept Unraveling the Mystery##8314 |goto 46.4,79.1
	step
		Follow the path up |goto 65.8,76.5 < 10 |only if walking
		talk Hermit Ortell##15194
		turnin True Believers##8323 |goto 68.7,63.0
	step
		talk Geologist Larksbane##15183
		turnin Unraveling the Mystery##8314 |goto 53.6,35.3 |next "menu"
	step
	label "farm_text"
		map Silithus
		path loop on
		path	45.6,40.1	28.0,74.8	69.7,16.6
		path	33.5,33.9
		Kill the enemies at the provided locations
		kill Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
		collect Encrypted Twilight Text##20404 |n
		When you have a lot of Twilight Texts to turn in, click here |confirm
	step
		talk Bor Wildmane##15306
		accept Encrypted Twilight Texts##8319 |goto Silithus,53.2,35.1 |n
		You can click here to farm more Texts |confirm |next "farm_text"
		Click here to do quests outside of Silithus for more rep |confirm
		|next "exalted" |only if rep('Cenarion Circle')==Exalted
	step
		talk Zen'Aliri##38269
		accept Finding Stormclaw##24854 |goto Un'Goro Crater 55.7,60.6
	step
		talk Garl Stormclaw##38274
		turnin Finding Stormclaw##24854 |goto 70.8,76.4
		accept Claws of White##24719 |goto 70.8,76.4
	step
		kill Ravasaur##6505+, Ravasaur Runner##6506+, Ravasaur Hunter##6507+, Venomhide Ravasaur##6508+
		collect 5 White Ravasaur Claw##11477 |q 24719/1 |goto 67.4,72.3
		More can be found at the following location |goto Un'Goro Crater 69.1,57.1
	step
		talk Garl Stormclaw##38274
		turnin Claws of White##24719 |goto 70.6,76.8
		accept Carried on the Waves##24686 |goto 70.6,76.8
	step
		While traveling to the coordinates, look in the water for Bloodpetal Seeds
		Catch the Bloodpetal Seeds with Garl's Net |use Garl's Net##50441
		collect 4 Un'Goro Lasher Seed##50253 |q 24686/1 |goto 73.5,60.2
	step
		talk Garl Stormclaw##38274
		turnin Carried on the Waves##24686 |goto 70.6,75.9
		accept Flowing to the North##24689 |goto 70.6,75.9
	step
		talk Ithis Moonwarden##38263
		turnin Flowing to the North##24689 |goto 76.4,48.3
		accept Bouquets of Death##24687 |goto 76.4,48.3
	step
		Attack the Juvenile Bloodpetals in the area
		kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1 |goto 75.8,44.1
	step
		talk Ithis Moonwarden##38263
		turnin Bouquets of Death##24687 |goto 76.4,48.3
		accept Aberrant Flora##24855 |goto 76.4,48.3
	step
		kill 11 Bloodpetal##6512+ |q 24855/1 |goto 69.9,34.1
	step
		talk Ithis Moonwarden##38263
		turnin Aberrant Flora##24855 |goto 76.4,48.3
	step
		talk Adrine Towhide##44456
		accept Zen'Kiki, the Druid##26953 |goto Western Plaguelands 48.9,54.8
	step
		talk Selyria Groenveld##44457
		accept I Ain't Sayin' You a Gourd-Digger...##26956 |goto 48.5,54.9
	step
		click Unhealthy-Looking Pumpkin##6326
		kill Thrashing Pumpkin##44487+
		Remove #3# Unhealthy-Looking Pumpkins |q 26956/3 |goto 47.4,52.9
	step
		click Rotten Apple##9820+
		kill Pome Wraith##44488+
		Remove #4# Rotten Apples |q 26956/2 |goto 46.8,54.1
	step
		click Bad Corn##9819
		kill Corn Stalker##44489+
		Remove #6# Bad Corn |q 26956/1 |goto 45.8,53.4
	step
		kill Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+
		|tip You must do this with the Troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
		Kill #20# Wildlife with Zen'Kiki |q 26953/1 |goto 50.3,59.6
	step
		talk Adrine Towhide##44456
		turnin Zen'Kiki, the Druid##26953 |goto 48.9,54.8
		accept A Different Approach##26954 |goto 48.9,54.8
	step
		talk Selyria Groenveld##44457
		turnin I Ain't Sayin' You a Gourd-Digger...##26956 |goto 48.5,54.9
	step
		Click Zen'Kiki
		|tip He's the Troll that's following you around. Keep clicking him to pull the Diseased Hawks down to you.
		kill 7 Diseased Hawk##44481 |q 26954/1 |goto 53.9,53.7
	step
		talk Adrine Towhide##44456
		turnin A Different Approach##26954 |goto 48.9,54.8
	step
		talk Field Agent Kaartish##44454
		accept A New Era for the Plaguelands##26999 |goto 49.3,55.0
	step
		kill Hulking Plaguebear##44482+
		collect 4 Hulking Plaguebear Sample##60762 |q 26999/3 |goto 46.0,48.7
		kill Diseased Wolf##1817+
		collect 4 Diseased Wolf Sample##60763 |q 26999/4 |goto 46.0,48.7
	step
		kill Plague Lurker##1824+
		collect 4 Plague Lurker Sample##60760 |q 26999/1 |goto 57.0,62.7
		kill Venom Mist Lurker##1822+
		collect 4 Venom Mist Lurker Sample##60761 |q 26999/2 |goto 57.0,62.7
	step
		talk Field Agent Kaartish##44454
		turnin A New Era for the Plaguelands##26999 |goto 49.3,55.0
		accept Northridge Lumber Mill##26935 |goto 49.3,55.0
	step
		talk Nathaniel Dumah##11616
		turnin Northridge Lumber Mill##26935 |goto 48.1,32.4
		accept Learning the Ropes##27000 |goto 48.1,32.4
	step
		clicknpc Hearthglen Mustang##44836
		Ride the Hearthglen Mustang |invehicle |c |q 27000 |goto 47.7,31.7
	step
		Use your Whinny ability on your hotbar near Northridge Spiders
		Frighten #25# Northridge Spiders |q 27000/1 |goto 47.4,35.0
	step
		Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
	step
		talk Nathaniel Dumah##11616
		turnin Learning the Ropes##27000 |goto 48.1,32.4
		accept This Means WAR (Wild Arachnid Roundup)##27001 |goto 48.1,32.4
	step
		clicknpc Hearthglen Mustang##44836
		Ride the Hearthglen Mustang |invehicle |c |q 27001 |goto 47.7,31.7
	step
		Use your Whinny ability on your hotbar near Northridge Spiders
		Continuously scare the Northridge Spiders and try to make them run to [48.0,32.9]
		The Hearthglen Recruits will kill the Northridge Spiders
		Lure #10# Northridge Spiders to Lumber Mill |q 27001/1 |goto 47.0,35.3
	step
		Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
	step
		talk Nathaniel Dumah##11616
		turnin This Means WAR (Wild Arachnid Roundup)##27001 |goto 48.1,32.4
		accept An Audience with the Highlord##27002 |goto 48.1,32.4
	step
		talk Highlord Tirion Fordring##44441
		turnin An Audience with the Highlord##27002 |goto 42.0,14.8
	step
		talk Field Agent Kaartish##44454
		accept Gahrron's Withering Cauldron##27053 |goto 49.3,54.9
	step
		kill Cauldron Lord Soulwrath##11078
		collect Gahrron's Withering Cauldron Key##13196 |q 27053/1 |goto 62.7,58.9
	step
		Click the Scourge Cauldron
		|tip It's a huge shaking black pot with orange liquid in it on a stone platform.
		turnin Gahrron's Withering Cauldron##27053 |goto 62.6,58.6
		accept Return to the Stead##27057 |goto 62.6,58.6
	step
		talk Field Agent Kaartish##44454
		turnin Return to the Stead##27057 |goto 49.3,55.0
	step
		talk Adrine Towhide##44456
		accept Zen'Kiki and the Cultists##26955 |goto 48.9,54.8
	step
		Click Cultist Cages
		|tip They look like big yellow cages around this area.
		Free and Heal #4# Captive Plaguebears |q 26955/1 |goto 66.7,48.9
	step
		talk Adrine Towhide##44456
		turnin Zen'Kiki and the Cultists##26955 |goto 48.9,54.8
	step
		talk Carlin Redpath##11063
		accept Little Pamela##27383 |goto Eastern Plaguelands 35.6,68.9
	step
		talk Pamela Redpath##10926
		turnin Little Pamela##27383 |goto Eastern Plaguelands 32.5,83.7
		accept Pamela's Doll##27384 |goto Eastern Plaguelands 32.5,83.7
	step
		You can find the doll parts in all of the buildings
		click Pamela's Doll's Right Side##176143
		collect Pamela's Doll's Right Side##12888 |q 27384 |goto 35.5,85.3
		click Pamela's Doll's Left Side##176142
		collect Pamela's Doll's Left Side##12887 |q 27384 |goto 35.5,85.3
		click Pamela's Doll's Head##176116
		collect Pamela's Doll's Head##12886 |q 27384 |goto 35.5,85.3
	step
		Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
		collect Pamela's Doll##12885 |q 27384/1
	step
		talk Pamela Redpath##10926
		turnin Pamela's Doll##27384 |goto 32.4,83.7
		accept I'm Not Supposed to Tell You This##27392 |goto 32.4,83.7
	step
		kill The Lone Hunter##45450
		collect Joseph's Hunting Blade##60987 |q 27392/1 |goto 40.3,83.8
	step
		talk Pamela Redpath##10926
		turnin I'm Not Supposed to Tell You This##27392 |goto 32.5,83.6
		accept Uncle Carlin##27385 |goto 32.5,83.6
	step
		talk Carlin Redpath##11063
		turnin Uncle Carlin##27385 |goto 35.6,68.9
		accept A Strange Historian##27386 |goto 35.6,68.9
	step
		talk Chromie##10667
		turnin A Strange Historian##27386 |goto 35.3,68.1
	step
		talk Urk Gagbaz##45500
		accept Cenarion Tenacity##27544 |goto Eastern Plaguelands 35.0,68.1
	step
		talk Rayne##16135
		turnin Cenarion Tenacity##27544 |goto 30.2,56.9
		accept Postponing the Inevitable##27420 |goto 30.2,56.9
		accept Amidst Death, Life##27421 |goto 30.2,56.9
	stickystart "shadowmage"
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Western Necropolis |q 27421/2 |goto 33.7,44.4
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto 37.8,42.5
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto 37.6,48.3
	step
	label "shadowmage"
		kill Shadowmage##8550+, Dark Adept##8546+
		collect Plague Disseminator Control Rune##61037 |n
		Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		Destroy #3# Plague Disseminators |q 27420/1 |goto 36.4,46.0
	step
		talk Rayne##16135
		turnin Postponing the Inevitable##27420 |goto 30.2,56.9
		turnin Amidst Death, Life##27421 |goto 30.2,56.9
		|next "exalted" |only if rep('Cenarion Circle')==Exalted
	step
		This is the end of the questing
		Click here to go back to the Silithus Reputation menu |confirm |next "menu"
	step
	label "exalted"
		Congratulations, you are Exalted with Cenarion Expedition |only if rep('Cenarion Circle')==Exalted
]])

-------------------------------
----- Cenarian Expedition -----
-------------------------------

ZygorGuidesViewer:RegisterInclude("Cenarion_Expedition_Rep",[[
		description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
		author support@zygorguides.com
	step
		You will need to farm Cenarion Circle and Cenarion Expedition reputation.
		Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to honoroed.
		You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
		You can also grind reputation from Heroic Coilfang Instances up to exalted if you would rather do that.
		confirm always
	step
		kill Crust Burster##16844+
		|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
		collect Eroded Leather Case##23338 |n
		Use the Eroded Leather Case |use Eroded Leather Case##23338
		accept Missing Missive##9373 |goto Hellfire Peninsula 47.8,65.8
	step
		talk Thiah Redmane##16991
		turnin Missing Missive##9373 |goto 15.7,52
		accept Demonic Contamination##9372 |goto 15.7,52
	step
		kill Hulking Helboar##16880+
		collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 24.9,54.3
	step
		talk Thiah Redmane##16991
		turnin Demonic Contamination##9372 |goto 15.7,52
		accept Testing the Antidote##10255 |goto 15.7,52
	step
		talk Mahuram Stouthoof##16888
		accept Keep Thornfang Hill Clear!##10159 |goto 15.7,52
	step
		Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
		kill Dreadtusk##16992
		Administer the Antidote |q 10255/1 |goto 25,54
	step
		talk Thiah Redmane##16991
		turnin Testing the Antidote##10255 |goto 15.7,52
	step
		kill 8 Thornfang Ravager##19349+ |q 10159/1 |goto 10.1,53.2
		kill 8 Thornfang Venomspitter##19350+ |q 10159/2 |goto 10.1,53.2
	step
		talk Mahuram Stouthoof##16888
		turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.7,52
	step
		talk Tola'thion##19293
		accept Colossal Menace##10132 |goto 15.6,52.0
	step
		kill 5 Raging Colossus##19188+ |q 10132/1 |goto 14.7,44.6
		collect Crimson Crystal Shard##29476 |n
		Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
		accept Crimson Crystal Clue##10134 |goto 14.7,44.6
	step
		talk Tola'thion##19293
		turnin Colossal Menace##10132 |goto 15.6,52.0
		turnin Crimson Crystal Clue##10134 |goto 15.6,52.0
		accept The Earthbinder##10349 |goto 15.6,52.0
	step
		talk Earthbinder Galandria Nightbreeze##19294
		turnin The Earthbinder##10349 |goto 16.0,51.6
		accept Natural Remedies##10351 |goto 16.0,51.6
	step
		Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478
		|tip It's a bright green symbol on the ground.
		kill Goliathon##19305
		Revitalize Fallen Sky Ridge |q 10351/1 |goto 13.6,39.1
	step
		talk Earthbinder Galandria Nightbreeze##19294
		turnin Natural Remedies##10351 |goto 16.0,51.6
	step
		talk Lauranna Thar'well##17909
		accept Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.4,64.2
		talk Ikeyen##17956
		accept The Umbrafen Tribe##9747 |goto Zangarmarsh 80.4,64.2
	step
		talk Warden Hamoot##17858
		accept A Warm Welcome##9728 |goto 79.1,65.3
	step
		talk Lethyn Moonfire##17834
		accept The Dying Balance##9895 |goto 78.5,63.1
	step
		talk Ysiel Windsinger##17841
		accept Disturbance at Umbrafen Lake##9716 |goto 78.4,62
	stickystart "unidentifiedplants"
	step
		kill Boglash##18281##18281 |q 9895/1 |goto 81,72.2
		|tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
	step
	label "unidentifiedplants"
		Kill all mobs in this area
		collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 80.1,73.3
	step
		talk Lauranna Thar'well##17909
		turnin Plants of Zangarmarsh##9802 |goto 80.4,64.2
	step
		talk Lethyn Moonfire##17834
		turnin The Dying Balance##9895 |goto 78.5,63.1
	stickystart "umbrafenmobs"
	step
		kill Kataru##18080 |q 9747/1 |goto 85.3,90.9
		|tip In the big building, all the way at the top.
	step
	label "umbrafenmobs"
		kill 6 Umbrafen Oracle##18077+ |q 9747/2 |goto 83.1,85.2
		kill 8 Umbrafen Seer##18079+ |q 9747/3 |goto 83.1,85.2
		kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4 |goto 83.1,85.2
	step
		talk Kayra Longmane##17969
		accept Escape from Umbrafen##9752 |goto 83.4,85.5
		Escort Kayra Longmane to Safety |q 9752/1 |goto 83.4,85.5
	step
		talk Ikeyen##17956
		turnin The Umbrafen Tribe##9747 |goto 80.4,64.2
		accept A Damp, Dark Place##9788 |goto 80.4,64.2
	step
		talk Lauranna Thar'well##17909
		accept Saving the Sporeloks##10096 |goto 80.4,64.2
	step
		talk Windcaller Blackhoof##18070
		accept Safeguarding the Watchers##9894 |goto 80.4,64.7
	step
		talk Ysiel Windsinger##17841
		turnin Escape from Umbrafen##9752 |goto 78.4,62
	stickystart "marshlurker"
	step
		Follow the path up |goto Zangarmarsh 74.7,91.6 < 10 |only if walking
		Enter the cave |goto 70.5,97.9 < 5 |walk
		click Ikeyen's Belongings##182122
		collect Ikeyen's Belongings##24411 |q 9788/1 |goto 70.6,97.9
	step
		Follow the path to the northeast |goto 72.5,94.0 |walk
		kill Lord Klaq##18282 |q 9894/1
		|tip On the bottom level of the cave, in the small round room all the way in the back.
	step
	label "marshlurker"
		kill 10 Marsh Lurker##18136+ |q 10096/2 |goto 75.7,90.2
		kill 10 Marsh Dredger##18137+ |q 10096/1 |goto 75.7,90.2
	stickystart "darkcreststuff"
	step
		Investigate Umbrafen Lake |q 9716/1 |goto 70.9,82.1
	step
	label "darkcreststuff"
		kill Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
		collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 70.9,82.1
		collect 30 Naga Claws##24280 |q 9728/1 |goto 70.9,82.1
		You can find more Naga at the following locations:
		Location 1: |goto 73.4,82.3
		Location 2: |goto 72.2,75.8
	step
		talk Windcaller Blackhoof##18070
		turnin Safeguarding the Watchers##9894 |goto 80.4,64.7
	step
		talk Ikeyen##17956
		turnin A Damp, Dark Place##9788 |goto 80.4,64.2
		talk Lauranna Thar'well##17909
		turnin Saving the Sporeloks##10096 |goto 80.4,64.2
		Turn in any stacks of 10 Unidentified Plant Parts you have
		If you found an Uncatalogued Species, turn that in also
	step
		talk Warden Hamoot##17858
		turnin A Warm Welcome##9728 |goto 79.1,65.3
	step
		talk Lethyn Moonfire##17834
		accept What's Wrong at Cenarion Thicket?##9957 |goto 78.5,63.1
	step
		talk Ysiel Windsinger##17841
		turnin Disturbance at Umbrafen Lake##9716 |goto 78.4,62
		accept As the Crow Flies##9718 |goto 78.4,62
	step
		Use your Stormcrow Amulet |use Stormcrow Amulet##25465
		|tip Watch yourself fly as a crow.
		Explore the Lakes of Zangarmarsh |q 9718/1
	step
		talk Ysiel Windsinger##17841
		turnin As the Crow Flies##9718 |goto 78.4,62
		accept Balance Must Be Preserved##9720 |goto 78.4,62
	step
		talk Windcaller Blackhoof##18070
		accept Blessings of the Ancients##9785 |goto 80.4,64.7
	step
		talk Keleth##17901
		Get the Mark of War |q 9785/2 |goto 78.1,63.8
	step
		talk Ashyen##17900
		Get the Mark of Lore |q 9785/1 |goto 81.1,63.9
	step
		talk Windcaller Blackhoof##18070
		turnin Blessings of the Ancients##9785 |goto 80.4,64.7
	step
		Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
		Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.6,80.3
		|tip The pump controls look like a little box with some levers on it.
	step
		Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
		Disable the Lagoon Pump Controls |q 9720/4 |goto 63.1,64.1
		|tip The pump controls look like a little box with some levers on it.
	stickystart "getdrainschematic"
	step
		Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355
		|tip The pump controls look like a little box with some levers on it.
		Disable the Serpent Lake Controls |q 9720/3 |goto 62,40.8
	step
	label "getdrainschematic"
		kill Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
		collect Drain Schematics##24330 |n
		Click the Drain Schematics in your bags |use Drain Schematics##24330
		accept Drain Schematics##9731 |goto 62,40.8
	step
		Swim straight down into the big bubbling pipe opening below until you discover the drain
		Locate the drain in Serpent Lake |q 9731/1 |goto 50.4,40.8
	step
		Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
		Disable the Umbrafen Lake Pump Controls |q 9720/2 |goto 25.4,42.9
		|tip The pump controls look like a little box with some levers on it.
	step
		talk Ysiel Windsinger##17841
		turnin Balance Must Be Preserved##9720 |goto 78.4,62
		turnin Drain Schematics##9731 |goto 78.4,62
		accept Warning the Cenarion Circle##9724 |goto 78.4,62
	step
		talk Lethyn Moonfire##17834
		accept What's Wrong at Cenarion Thicket?##9957 |goto 78.5,63.1
	step
		talk Amythiel Mistwalker##16885
		turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula 16,52.2
		accept Return to the Marsh##9732 |goto Hellfire Peninsula 16,52.2
	step
		talk Ysiel Windsinger##17841
		turnin Return to the Marsh##9732 |goto Zangarmarsh 78.4,62
		accept Checking Up##29566 |goto Zangarmarsh 78.4,62
		accept Storming the Steamvault##29616 |goto Zangarmarsh 78.4,62
	step
		talk Watcher Jhang##54667
		turnin Checking Up##29566 |goto The Slave Pens 18.9,11.3
	step
		talk Watcher Jhang##54667
		accept Lost in Action##29563 |goto The Slave Pens 18.9,11.3
		accept The Heart of the Matter##29565 |goto The Slave Pens 18.9,11.3
	step
		talk Nahuud##54668
		accept A Brother Betrayed##29564 |goto 17.9,12.1
	step
		Follow the path and go straight through the main room |goto 25.0,51.2 < 10 |only if walking
		Go through the hallway |goto 40.2,35.5 < 10 |only if walking
		You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro
		kill Mennu the Betrayer##17941 |q 29564/1 |goto 48.8,24.3
	step
		talk Weeder Greenthumb##17890
		Discover Weeder Greenthumb |q 29563/2 |goto 48.9,83.4
	step
		kill Rokmar the Crackler##17991+
		collect The Invader's Claw##72118 |q 29565/1 |goto 57.3,45.4
	step
		Follow the path up |goto 74.9,51.4 < 10
		talk Naturalist Bite##17893
		Discover Naturalist Bite |q 29563/2 |goto 95.7,66.2
	step
		Be ready to fight a couple mobs
		kill Coilfang Champion##17957+, Coilfang Enchantress##17961+
		talk Naturalist Bite##17893
		Tell him _"Naturalist, please grant me your boon."_ |havebuff 132127 |q 29565 |goto 95.7,66.2 --Ability_Druid_FerociousBite
	step
		kill Quagmirran##17942+
		collect The Slave Master's Eye##72119 |q 29565/2 |goto The Slave Pens 86.2,67.9
	step
		talk Nahuud##54668
		turnin A Brother Betrayed##29564 |goto The Slave Pens 17.9,12.2
	step
		talk Watcher Jhang##54667
		turnin Lost in Action##29563 |goto 18.8,11.3
	step
		talk Naturalist Bite##54678
		accept A Necessary Evil##29568 |goto The Underbog 29.5,64.7
	step
		talk Watcher Jhang##54675
		accept Rescuing the Expedition##29570 |goto 30.9,65.3
	step
		talk T'shu##54674
		accept Stalk the Stalker##29567 |goto 31.5,65.5
		accept Bring Me A Shrubbery!##29691 |goto 31.5,65.5
	stickystart "sanguinehibiscus"
	step
		Keep following this straight path |goto 42.5,62.0 < 10
		Follow the path up and around |goto 57.4,82.9 < 10
		He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
		|tip Keep moving him so that doesn't happen.
		kill Hungarfen##17770 |q 29568/1 |goto 70.0,90.0
	step
		kill Ghaz'an##18105 |goto 77.2,43.8
		confirm |q 29567
	step
		Jump down into the water |goto 78.9,24.5 < 10
		Swim across the water and jump down |goto 79.6,15.2 < 10
		talk Earthbinder Rayge##17885
		Discover Earthbinder Rayge |q 29570/1 |goto 67.4,21.3
	step
		Follow the path down and to the right |goto 67.0,14.0 < 10
		kill Swamplord Musel'ek##17826, Claw##17827
		Talk to Windcaller Claw
		Discover Windcaller Claw |q 29570/2 |goto 41.5,25.4
	step
		kill The Black Stalker##17882
		collect Black Stalker's Brain##24248 |q 29567/1 |goto The Underbog 25.9,45.5
	step
	label "sanguinehibiscus"
		As you go through the dungeon, look for Sanguine Hibiscus
		click Sanguine Hibiscus##183385
		collect 5 Sanguine Hibiscus##24246 |q 29691/1
	step
		talk Naturalist Bite##54678
		turnin A Necessary Evil##29568 |goto The Underbog 29.5,64.5
	step
		talk Watcher Jhang##54675
		turnin Rescuing the Expedition##29570 |goto 30.8,65.3
	step
		talk T'shu##54674
		turnin Stalk the Stalker##29567 |goto 31.6,65.5
		turnin Bring Me A Shrubbery!##29691 |goto 31.6,65.5
	step
		talk Watcher Jhang##54848
		turnin Storming the Steamvault##29616 |goto The Steamvault 17.9,27.3
		accept A Proper Fate##29613 |goto The Steamvault 17.9,27.3
	step
		talk Naturalist Bite##54849
		accept Containment is Key##29614 |goto 17.5,25.9
	step
		talk Windcaller Claw##54851
		accept Windcaller Claw and the Water Thief##29615 |goto 18.9,27.8
	step
		kill 3 Bog Overlord##21694+ |q 29614/1 |goto 33.7,22.7
	step
		kill Hydromancer Thespia##17797 |q 29615/1 |goto The Steamvault 54.3,12.4
	step
		click Main Chambers Access Panel##7147 |goto 54.2,10.6
		You hear a faint echo...
		confirm always
	step
		Go through the opening on your left |goto 42.1,32.9 < 10
		Go up the ramp |goto 49.3,42.8 < 10
		Go up to the bridge on the right side |goto 55.8,47.3 < 10
		Cross the bridge and go through the hallway |goto 39.7,69.0 < 10
		kill Mekgineer Steamrigger##17796
		collect Irradiated Gear##72574 |q 29614/3 |goto The Steamvault 33.6,81.2
		kill 6 Coilfang Leper##21338+ |q 29614/2 |goto The Steamvault 33.6,81.2
	step
		click Main Chambers Access Panel##7147 |goto 31.8,84.0
		You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
		confirm always
	step
		Follow the tunnel back to the bridge |goto 54.0,51.4 < 10
		Take a right after crossing the bridge, and go up a ramp |goto 69.8,43.4 < 10
		kill Warlord Kalithresh##17798 |q 29613/1
	step
		Follow the path down to the ramp |goto 49.1,42.6 < 10
		Enter the doorway |goto 42.5,33.0 < 10
		talk Windcaller Claw##54851
		turnin Windcaller Claw and the Water Thief##29615 |goto 18.8,27.6
	step
		talk Watcher Jhang##54848
		turnin A Proper Fate##29613 |goto 18.0,27.2
	step
		talk Naturalist Bite##54849
		turnin Containment is Key##29614 |goto 17.6,25.9
	step
		click Wanted Poster##184945
		accept Leader of the Darkcrest##9730 |goto Zangarmarsh 79.1,64.8
		accept Leader of the Bloodscale##9817 |goto Zangarmarsh 79.1,64.8
	step
		kill Rajah Haghazed##18046 |q 9730/1 |goto Zangarmarsh 65.1,68.7
	step
		kill Rajis Fyashe##18044 |q 9817/1 |goto Zangarmarsh 65.1,40.9
	step
		talk Warden Hamoot##17858
		turnin Leader of the Darkcrest##9730 |goto 79.1,65.2
		turnin Leader of the Bloodscale##9817 |goto 79.1,65.2
	step
		talk Earthbinder Tavgren##18446
		turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest 44.3,26.3
		accept Strange Energy##9968 |goto Terokkar Forest 44.3,26.3
		accept Clues in the Thicket##9971 |goto Terokkar Forest 44.3,26.3
	step
		talk Warden Treelos##18424
		accept It's Watching You!##9951 |goto 45,22.5
	step
		click Strange Object##183789
		Examine the Strange Object |q 9971/1 |goto 45.1,21.8
		|tip Inside the building, looks like a white ball on the floor next to a dead guy.
	step
		kill Naphthal'ar##18438 |q 9951/1 |goto 43.4,22.1
		|tip At the top of the big tower.
	step
		talk Warden Treelos##18424
		turnin It's Watching You!##9951 |goto 45,22.5
	step
		talk Earthbinder Tavgren##18446
		turnin Clues in the Thicket##9971 |goto 44.3,26.3
	step
		kill Vicious Teromoth##18437+
		collect 4 Vicious Teromoth Sample##24279 |q 9968/2 |goto 44.1,23.8
	step
		kill Teromoth##18468+
		collect 4 Teromoth Sample##25672 |q 9968/1 |goto 45.8,29.8
	step
		talk Earthbinder Tavgren##18446
		turnin Strange Energy##9968 |goto 44.3,26.3
		accept By Any Means Necessary##9978 |goto 44.3,26.3
	step
		talk Empoor##18482
		|tip Fight Empoor until he's almost dead.
		turnin By Any Means Necessary##9978 |goto 47.1,27
		accept Wind Trader Lathrai##9979 |goto 47.1,27
	step
		talk Wind Trader Lathrai##18484
		turnin Wind Trader Lathrai##9979 |goto Shattrath City 72.2,30.7
		accept A Personal Favor##10112 |goto Shattrath City 72.2,30.7
	step
		kill Skithian Windripper##18453+
		kill Skithian Dreadhawk##18452+
		collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto Terokkar Forest 30.9,42.0
	step
		talk Wind Trader Lathrai##18484
		turnin A Personal Favor##10112 |goto Shattrath City 72.3,30.9
		accept Investigate Tuurem##9990 |goto Shattrath City 72.3,30.9
	step
		click Sealed Box##182542
		collect Sealed Box##25727 |q 9990/1 |goto Terokkar Forest 54.0,30.0
	step
		talk Earthbinder Tavgren##18446
		turnin Investigate Tuurem##9990 |goto 44.4,26.3
		accept What Are These Things?##9994 |goto 44.4,26.3
	step
		talk Jenai Starwhisper##18459
		turnin What Are These Things?##9994 |goto Terokkar Forest 57.0,53.5
		accept Report to the Allerian Post##10444 |goto Terokkar Forest 57.0,53.5
	step
		talk Lieutenant Meridian##21006
		turnin Report to the Allerian Post##10444 |goto Terokkar Forest 69.7,44.2
		accept Attack on Firewing Point##9996 |goto Terokkar Forest 69.7,44.2
	step
		kill 10 Firewing Defender##5355+ |q 9996/1 |goto 70.5,37.4
		kill 10 Firewing Bloodwarder##1410+ |q 9996/2 |goto 70.5,37.4
		kill 10 Firewing Warlock##16769+ |q 9996/3 |goto 70.5,37.4
	step
		talk Lieutenant Meridian##21006
		turnin Attack on Firewing Point##9996 |goto Terokkar Forest 69.7,44.2
		accept The Final Code##10446 |goto Terokkar Forest 69.7,44.2
	step
		Enter this building |goto 73.4,36.3 < 10 |walk
		click Orb of Translocation##184500 |goto 73.3,34.6 < 5 |walk
		Run up the ramp |goto 73.9,35.8 < 10
		kill Sharth Voldoun##18554+
		collect The Final Code##29912 |q 10446 |goto 73.8,35.8
	step
		click Orb of Translocation##184500
		Teleport to the bottom of the tower |goto 73.3,36.3 < 10 |walk
		click Mana Bomb##184725
		Activate Mana Bomb |q 10446/1 |goto 71.3,37.4
	step
		talk Jenai Starwhisper##18459
		turnin The Final Code##10446 |goto Terokkar Forest 57.0,53.5
		accept Letting Earthbinder Tavgren Know##10005 |goto Terokkar Forest 57.0,53.5
	step
		talk Earthbinder Tavgren##18446
		turnin Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest 44.3,26.3
	step
		talk Lakotae##22420
		accept The Infested Protectors##10896 |goto 37.9,51.7
	step
		kill Infested Root-walker##22095+
		|tip Kill the Wood Mites that come out of their corpses.
		kill 25 Wood Mite##22419+ |q 10896/1 |goto 35.2,48.8
		You can find more Infested Root-walkers at the following location |goto 39.1,47.0
	step
		talk Lakotae##22420
		turnin The Infested Protectors##10896 |goto 37.9,51.7
	step
		talk Timeon##21782
		accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.2,39.1
	step
		talk Tree Warden Chawn##22007
		accept A Time for Negotiation...##10682 |goto 62.0,39.5
	step
		talk Faradrella##22133
		accept Culling the Wild##10753 |goto 62.5,38.2
	step
		talk Mosswood the Ancient##22053
		accept From the Ashes##10771 |goto 61.3,38.4
		accept Little Embers##10770 |goto 61.3,38.4
	step
		talk Overseer Nuaar##21981
		|tip He wanders around the Wyrmcult camps.
		Negotiate with Overseer Nuaar |q 10682/1 |goto 58.8,39.1
	step
		talk Tree Warden Chawn##22007
		turnin A Time for Negotiation...##10682 |goto 62,39.5
		accept ...and a Time for Action##10713 |goto 62,39.5
	step
		talk Samia Inkling##21983
		accept Poaching from Poachers##10717 |goto 61.8,39.6
	stickystart "wyrmculthewerkills"
	step
		kill Wyrmcult Poacher##21809+
		collect 5 Wyrmcult Net##31119 |q 10717/1 |goto 59.9,37.8
		collect Meeting Note##31120 |n
		Click the Meeting Note in your bags |use Meeting Note##31120
		accept Did You Get The Note?##10719 |goto 59.9,37.8
	step
	label "wyrmculthewerkills"
		kill 10 Wyrmcult Hewer##21810+ |q 10713/1 |goto 59.9,37.8
	step
		kill Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
		collect 6 Ruuan'ok Claw##30704 |q 10567 |goto 63.9,31.5
	step
		Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
		kill Harbinger of the Raven##21767
		|tip On the little island in the pond.
		collect Harbinger's Pendant##30706 |q 10567/1 |goto 64.5,33.1
	step
		talk Timeon##21782
		turnin Creating the Pendant##10567 |goto 62.2,39.1
		accept Whispers of the Raven God##10607 |goto 62.2,39.1
	step
		talk Samia Inkling##21983
		turnin Poaching from Poachers##10717 |goto 62,39.5
	step
		talk Tree Warden Chawn##22007
		turnin ...and a Time for Action##10713 |goto 62.0,39.6
		turnin Did You Get The Note?##10719 |goto 62.0,39.6
		accept Wyrmskull Watcher##10894 |goto 62.0,39.6
	step
		talk Watcher Moonshade##22386
		turnin Wyrmskull Watcher##10894 |goto 49.9,35.9
		accept Longtail is the Lynchpin##10893 |goto 49.9,35.9
	step
		kill Draaca Longtail##22396 |q 10893/1 |goto 46.7,32.9
		|tip She walks near the Raven's Wood end of the cave.
	step
		talk Watcher Moonshade##22386
		turnin Longtail is the Lynchpin##10893 |goto 49.9,35.9
		accept Meeting at the Blackwing Coven##10722 |goto 49.9,35.9
	step
		kill Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
		Get the Understanding Ravenspeech buff |havebuff 132188 |q 10722 |goto 42.2,25.1 --Ability_Hunter_Pet_DragonHawk
		|tip Must be within melee range to receive the buff.
		|tip Anytime the buff wears off, kill Grishna mobs again to get it back.
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip On the ground, next to a pond with basilisks in it.
		Receive the Third Prophecy |q 10607/3 |goto 40.7,18.7
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip Up the left ramp, then left across the hanging bridge.
		Receive the First Prophecy |q 10607/1 |goto 39,17.2
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
		Receive the Second Prophecy |q 10607/2 |goto 42.5,21.6
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip On the ground, in front of a hut.
		Receive the Fourth Prophecy |q 10607/4 |goto 40.2,23
	step
		Go inside the cave
		kill Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
		collect 5 Costume Scraps##31121 |q 10722 |goto 32.3,34.9
	step
		Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
		Put on the Overseer Disguise |havebuff 132760 |q 10722 |goto 32.6,37.5 |use Overseer Disguise##31122 --INV_Chest_Wolf
		talk Kolphis Darkscale##22019
		Attend the meeting with Kolphis Darkscale |q 10722/1 |goto 32.6,37.5
	step
		talk Tree Warden Chawn##22007
		turnin Meeting at the Blackwing Coven##10722 |goto 62.0,39.5
		accept Maxnar Must Die!##10748 |goto 62.0,39.5
	step
		Go inside the cave |goto Blade's Edge Mountains,32.1,34.1 < 10 |q 10748 |walk
		kill Maxnar the Ashmaw##21389 |q 10748/1 |goto 33.9,35.4
		|tip Follow the cave path until it dead ends into him.
	step
		Leave the cave |goto Blade's Edge Mountains 32.1,34.1 < 10 |q 10748 |walk
		talk Tree Warden Chawn##22007
		turnin Maxnar Must Die!##10748 |goto 62,39.5
	step
		talk Timeon##21782
		turnin Whispers of the Raven God##10607 |goto 62.2,39.1
	step
		kill 4 Felsworn Scalewing##21123+ |q 10753/1 |goto 68.9,35.6
		kill 4 Felsworn Daggermaw##21124+ |q 10753/2 |goto 68.9,35.6
		kill 2 Fel Corrupter##21300+ |q 10753/3 |goto 68.9,35.6
		collect Damaged Mask##31384 |n
		Click the Damaged Mask |use Damaged Mask##31384
		accept Damaged Mask##10810 |goto 68.9,35.6
	stickystart "scorchimps"
	step
		click Fertile Volcanic Soil##185148
		Plant the Ironroot Seeds |q 10771/1 |goto 71.7,22.4
	step
		click Fertile Volcanic Soil##185148
		Plant the Ironroot Seeds |q 10771/2 |goto 71.6,20.3
	step
		click Fertile Volcanic Soil##185148
		Plant the Ironroot Seeds |q 10771/3 |goto 71.6,18.5
	step
	label "scorchimps"
		kill 8 Scorch Imp##21021+ |q 10770/1 |goto 70.7,20.2
	step
		talk O'Mally Zapnabber##22020
		turnin Damaged Mask##10810 |goto 62.7,40.4
		accept Mystery Mask##10812 |goto 62.7,40.4
	step
		talk Wildlord Antelarion##22127
		turnin Mystery Mask##10812 |goto 62.2,40.1
		accept Felsworn Gas Mask##10819 |goto 62.2,40.1
	step
		talk Faradrella##22133
		turnin Culling the Wild##10753 |goto 62.6,38.2
	step
		talk Mosswood the Ancient##22053
		turnin Little Embers##10770 |goto 61.2,38.4
		turnin From the Ashes##10771 |goto 61.2,38.4
	step
		collect 1 Felsworn Gas Mask##31366 |q 10819
		It has a 60 minute timer on it
		If you need another one, talk to Wildlord Antelarion at the following location |goto 62.6,39.6
	step
		Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
		Wear the Felsworn Gas Mask |havebuff 133133 |c |q 10819 --INV_Helmet_31
		Click the Legion Communicator
		|tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator.
		turnin Felsworn Gas Mask##10819 |goto 73.3,40.1
		accept Deceive thy Enemy##10820 |goto 73.3,40.1
	step
		kill 4 Doomforge Attendant##19961+ |q 10820/1 |goto 74.9,39.9
		kill 4 Doomforge Engineer##19960+ |q 10820/2 |goto 74.9,39.9
	step
		Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
		Wear the Felsworn Gas Mask |havebuff 133133 |c |q 10819 --INV_Helmet_31
		Click the Legion Communicator
		turnin Deceive thy Enemy##10820 |goto 73.3,40.1
		|tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator.
		accept You're Fired!##10821 |goto 73.3,40.1
	step
		kill Anger Guard##16952+
		collect 5 Camp Anger Key##31536 |q 10821 |goto 73.0,41.0
	step
		Click the Legion Obelisk to activate it |goto 73.5,43.5
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 75.3,41.7
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 73.8,41.0
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 75.4,40.6
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 74.0,39.9
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		kill Doomcryer##19963 |q 10821/1 |goto 74.3,42.5
	step
		talk Wildlord Antelarion##22127
		turnin You're Fired!##10821 |goto 62.4,38.4
		accept Death's Door##10910 |goto 62.4,38.4
	step
		Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		talk Evergrove Druid##22423
		turnin Death's Door##10910 |goto 63.2,65.5
		accept Harvesting the Fel Ammunition##10904 |goto 63.2,65.5
	step
		kill Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
		collect 5 Fel Cannonball##31757 |q 10904/1 |goto 63.8,66.5
	step
		Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		talk Evergrove Druid##22423
		turnin Harvesting the Fel Ammunition##10904
		accept Fire At Will!##10911
	step
		Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
		|tip It looks like a big metal green-glowing bullet shaped machine.
		Use the Artillery on the Warp-Gate 7 Times |cast Artillery on the Warp-Gate##39221
		Destroy the South Warp-Gate |q 10911/1 |goto 64.8,68.3
	step
		Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
		|tip It looks like a big metal green-glowing bullet shaped machine.
		Use the Artillery on the Warp-Gate 7 times |cast Artillery on the Warp-Gate##39221
		Destroy the North Warp-Gate |q 10911/2 |goto 62.0,60.3
	step
		Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		Talk to Evergrove Druid
		turnin Fire At Will!##10911
		accept The Hound-Master##10912
	step
		kill Baelmon the Hound-Master##19747 |q 10912/1 |goto 63.6,59.1
	step
		talk Wildlord Antelarion##22127
		turnin The Hound-Master##10912 |goto 62.7,39.4
	step
		talk Aurine Moonblaze##20871
		accept Flora of the Eco-Domes##10426 |goto Netherstorm 42.3,32.6
	step
		Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
		kill Mutated Farahlon Lasher##20774+
		Test Energy Modulator #10# Times |q 10426/1 |goto 41.2,32.2
	step
		talk Aurine Moonblaze##20871
		turnin Flora of the Eco-Domes##10426 |goto 42.3,32.6
		accept Creatures of the Eco-Domes##10427 |goto 42.3,32.6
	step
		kill Talbuk Doe##20610+, Talbuk Sire##20777
		Use the Talbuk Tagger on talbuks when they are below 20% health |use Talbuk##29817
		Tag #12# Talbuk |q 10427/1 |goto 40.4,35.5
	step
		talk Aurine Moonblaze##20871
		turnin Creatures of the Eco-Domes##10427 |goto 42.3,32.6
		accept When Nature Goes Too Far##10429 |goto 42.3,32.6
	step
		kill Markaru##20775+
		collect Hulking Hydra Heart##29768 |q 10429/1 |goto 44.3,28.5
	step
		talk Aurine Moonblaze##20871
		turnin When Nature Goes Too Far##10429 |goto 42.3,32.6
	step
		talk Arch Druid Lathorius##25809
		accept A Mission Statement##11864 |goto Borean Tundra 57,44.3
		accept Ears of Our Enemies##11866 |goto Borean Tundra 57,44.3
		accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.3
	step
		talk Hierophant Cenius##25810
		accept Happy as a Clam##11869 |goto 57.3,44.1
	step
		talk Killinger the Den Watcher##25812
		accept Ned, Lord of Rhinos...##11884 |goto 57,44
	step
		talk Zaza##25811
		accept Unfit for Death##11865 |goto 56.8,44
	stickystart "lootcrazed"
	step
		Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228
		|tip They look like baby elephants laying on the ground in a trap.
		Free #8# Mammoth Calves |q 11876/1 |goto 53.8,40.6
	step
	label "lootcrazed"
		kill 10 Loot Crazed Diver##25836+ |q 11869/1 |goto 53.4,42.7
		kill Loot Crazed Divers
		collect 15 Nesingwary Lackey Ear##35188 |q 11866/1 |goto 53.4,42.7
	step
		kill "Lunchbox"##25968 |q 11884/2 |goto 46.4,40
		|tip He walks around this area. Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
		kill Nedar, Lord of Rhinos##25801 |q 11884/1 |goto 46.4,40
	step
		Stand inside the Caribou Traps on the ground
		|tip They look like metal spiked traps on the ground.
		Use your Pile of Fake Furs |use Pile of Fake Furs##35127
		Trap #8# Nesingwary Trappers |q 11865/1 |goto 56.2,50.5
	step
		talk Arch Druid Lathorius##25809
		turnin Ears of Our Enemies##11866 |goto 57,44.3
		turnin Help Those That Cannot Help Themselves##11876 |goto 57,44.3
		accept Khu'nok Will Know##11878 |goto 57,44.3
		|tip After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
	step
		talk Hierophant Cenius##25810
		turnin Happy as a Clam##11869 |goto 57.3,44.1
		accept The Abandoned Reach##11870 |goto 57.3,44.1
	step
		talk Killinger the Den Watcher##25812
		turnin Ned, Lord of Rhinos...##11884 |goto 57,44
	step
		talk Zaza##25811
		turnin Unfit for Death##11865 |goto 56.8,44
		accept The Culler Cometh##11868 |goto 56.8,44
	step
		Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto 59.5,30.4
		kill Mammoth Calf##24613, Khu'nok the Behemoth##25862
	step
		talk Khu'nok the Behemoth##25862
		turnin Khu'nok Will Know##11878 |goto 59.5,30.4
		accept Kaw the Mammoth Destroyer##11879 |goto 59.5,30.4
	step
		Ride around and find a Wooly Mammoth Bull
		Click it to ride it |invehicle |c |q 11879
	step
		Use the skills on your mammoth action bar to do the following:
		kill Kaw the Mammoth Destroyer##25802
		Click Kaw's War Halberd on the ground
		collect Kaw's War Halberd##35234 |q 11879/1 |goto 53.7,23.9
	step
		talk Arch Druid Lathorius##25809
		turnin Kaw the Mammoth Destroyer##11879 |goto 57,44.3
	step
		kill 1 Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto 57.3,56.5
		|tip She walks around in this spot. Be careful, she has 2 stealthed guards that come with her.
	step
		talk Hierophant Liandra##25838
		turnin The Abandoned Reach##11870 |goto 57.8,55.1
		accept Not On Our Watch##11871 |goto 57.8,55.1
	step
		kill Northsea Thugs##25843
		Click the Shipment of Animal Parts containers on the ground
		|tip They look like brown bags and crates sitting on the ground around this area.
		collect 12 Shipment of Animal Parts##35222 |q 11871/1 |goto 59.1,55.9
	step
		talk Hierophant Liandra##25838
		turnin Not On Our Watch##11871 |goto 57.8,55.1
		accept The Nefarious Clam Master...##11872 |goto 57.8,55.1
	step
		kill 1 Clam Master K##25800 |q 11872/1 |goto 61.5,66.5
		|tip He's walking around underwater.
	step
		talk Hierophant Cenius##25810
		turnin The Nefarious Clam Master...##11872 |goto 57.3,44.1
	step
		talk Zaza##25811
		turnin The Culler Cometh##11868 |goto 56.8,44
	step
		talk King Mrgl-Mrgl##25197
		accept Learning to Communicate##11571 |goto 43.5,14
	stickystart "winterfinclam"
	step
		kill Scalder##25226
		|tip It's underwater.
		Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
		collect The King's Filled Conch##34623 |q 11571/1 |goto 42.5,15.9
	step
	label "winterfinclam"
		click Winterfin Clam##187367
		|tip They are on the ground underwater.
		collect 5 Winterfin Clam##34597 |furure |q 11559 |goto 42.5,16.4
	step
		talk King Mrgl-Mrgl##25197
		turnin Learning to Communicate##11571 |goto 43.5,14
		accept Winterfin Commerce##11559 |goto 43.5,14
	step
		talk Ahlurglgr##25206
		turnin Winterfin Commerce##11559 |goto 43,13.8
	step
		click Winterfin Clam##187367
		|tip They are on the ground underwater.
		collect 5 Winterfin Clam##34597 |q 11559/1 |goto 41.5,13.4
	step
		talk Ahlurglgr##25206
		turnin Winterfin Commerce##11559 |goto 43,13.8
	step
		talk Brglmurgl##25199
		accept Them!##11561 |goto 42.8,13.7
	step
		talk King Mrgl-Mrgl##25197
		accept Oh Noes, the Tadpoles!##11560 |goto 43.5,14
	step
		kill Winterfin Oracle##25216, Winterfin Shorestriker##25215
		Kill #15# Winterfin murlocs |q 11561/1 |goto 40.6,17.5
		click the Yellow Cage##1787+
		Rescue #20# Winterfin Tadpoles |q 11560/1 |goto 40.6,17.5
	step
		talk Brglmurgl##25199
		turnin Them!##11561 |goto 42.8,13.7
	step
		talk King Mrgl-Mrgl##25197
		turnin Oh Noes, the Tadpoles!##11560 |goto 43.5,14
		accept I'm Being Blackmailed By My Cleaner##11562 |goto 43.5,14
	step
		talk Mrmrglmr##25205
		turnin I'm Being Blackmailed By My Cleaner##11562 |goto 42,12.8
		accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42,12.8
	step
		talk Cleaver Bmurglbrm##25211
		accept Succulent Orca Stew##11564 |goto 42,13.2
	step
		kill Glrggl##25203
		collect Glrggl's Head##34617 |q 11563/1 |goto 37.4,9.8
	step
		kill Glimmer Bay Orcas##25204+
		collect 7 Succulent Orca Blubber##34618 |q 11564/1 |goto 40.3,12.4
	step
		talk Mrmrglmr##25205
		turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42,12.8
		accept The Spare Suit##11565 |goto 42,12.8
	step
		talk Cleaver Bmurglbrm##25211
		turnin Succulent Orca Stew##11564 |goto 42,13.2
	step
		talk King Mrgl-Mrgl##25197
		turnin The Spare Suit##11565 |goto 43.5,14
		accept Surrender... Not!##11566 |goto 43.5,14
	step
		Go southwest to Winterfin Village
		Use King Mrgl-Mrgl's Spare Suit |havebuff 134169 |use King Mrgl-Mrgl's Spare Suit##34620 |q 11566 --INV_Misc_Head_Murloc_01
	step
		Enter the cave |goto 37.8,23.2 < 5 |walk
		talk Glrglrglr##28375
		accept Keymaster Urmgrgl##11569 |goto 37.8,23.2
	step
		kill Keymaster Urmgrgl##25210
		collect Urmgrgl's Key##34600 |q 11569/1 |goto 38.4,22.7
	step
		Follow the path up and to the back of the cave
		kill Claximus##25209
		collect Claw of Claximus##34621 |q 11566/1 |goto 37.6,27.4
	step
		Go back up the path |goto 37.8,23.2 < 10
		talk Glrglrglr##28375
		turnin Keymaster Urmgrgl##11569 |goto 37.8,23.2
	step
		talk Lurgglbr##25208
		accept Escape from the Winterfin Caverns##11570 |goto 37.8,23
		Escort Lurgglbr to safety |q 11570/1 |goto 37.8,23
	step
		talk King Mrgl-Mrgl##25197
		turnin Surrender... Not!##11566 |goto 43.5,14
		turnin Escape from the Winterfin Caverns##11570 |goto 43.5,14
	step
	label "menu2"
		If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
		The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
		Click here to do the repeatable quest |confirm |next "ears"
		Click here to be taken to the Slave Pens |confirm |next "Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens" |only if ZGV.guidesets['DungeonAMOP']
		Click here to be taken to the Underbog |confirm |next "Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog" |only if ZGV.guidesets['DungeonAMOP']
		Click here to be taken to the Steamvault |confirm |next "Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault" |only if ZGV.guidesets['DungeonAMOP']
	step
	label "ears"
		kill Northsea Mercenary##25839+, Northsea Thug##25843+
		collect Nesingwary Lackey Ear##35188 |n
		Collect Lackey Ears in stacks of 15 |goto Borean Tundra 60.9,63.4
		When you want to turn in Lackey Ears, click here |next "turnin" |confirm
	step
	label "turnin"
		talk Arch Druid Lathorius##25809
		accept Can't Get Ear-Nough##11867 |goto 57.1,44.3 |n
		Click here to go back to farming ears |next "ears" |confirm
		Keep repeating this quest until you are Exalted with the Cenarion Expedition |complete rep('Cenarion Expedition')==Exalted |next "exalted"
	step
	label "exalted"
		Congratulations, you are now Exalted with the Cenarion Expedition!
]])

------------------
----- Kaluak -----
------------------

ZygorGuidesViewer:RegisterInclude("Kaluak_rep",[[
	step
		talk Etaruk##25292
		accept Reclaiming the Quarry##11612 |goto Borean Tundra 54.3,36.1
	step
		Talk to Elder Atkanok
		accept The Honored Ancestors##11605 |goto 54.7,35.8

	stickystart "beryltreasure"
	step
		click "Elder Sagani"##187663
		Identify the Elder Sagani |q 11605/2 |goto 52.8,34
	step
		click "Elder Takret"##187664
		Identify the Elder Takret |q 11605/3 |goto 52.3,31.2
	step
		click "Elder Kesuk"##187662
		Identify the Elder Kesuk |q 11605/1 |goto 50.9,32.4
	step
	label "beryltreasure"
		kill 12 Beryl Treasure Hunter##25353+ |q 11612/1 |goto 54.4,35.1
	step
		Talk to Elder Atkanok
		turnin The Honored Ancestors##11605 |goto 54.7,35.8
		accept The Lost Spirits##11607 |goto 54.7,35.8
	step
		talk Etaruk##25292
		turnin Reclaiming the Quarry##11612 |goto 54.3,36.1
		accept Hampering Their Escape##11617 |goto 54.3,36.1
	stickystart "berylhound"
	step
		kill Beryl Reclaimer##25449+
		collect 3 Gnomish Grenade##34772 |q 11617 |goto 51.5,31.4
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the North Platform |q 11617/2 |goto 52.2,32.1
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the West Platform |q 11617/3 |goto 51,33.9
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the East Platform |q 11617/1 |goto 52.8,34.5
	step
	label "berylhound"
		kill Beryl Hound##25355+
		collect 6 Cores of Malice##34711 |n
		Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
		Free 3 Kaskala Craftsman spirits |q 11607/1 |goto 51.5,31.4
		Free 3 Kaskala Shaman spirits |q 11607/2 |goto 51.5,31.4
	step
		Talk to Elder Atkanok
		turnin The Lost Spirits##11607 |goto 54.7,35.8
		accept Picking Up the Pieces##11609 |goto 54.7,35.8
	step
		talk Etaruk##25292
		turnin Hampering Their Escape##11617 |goto 54.3,36.1
		accept A Visit to the Curator##11623 |goto 54.3,36.1
	stickystart "tuskarr"
	step
		kill Curator Insivius##25448 |q 11623/1 |goto 50.1,32.6
	step
	label "tuskarr"
		click Tuskarr Ritual Object##187671
		collect 6 Tuskarr Ritual Object##34713|q 11609/1 |goto 53.1,33.3
	step
		Talk to Elder Atkanok
		turnin Picking Up the Pieces##11609 |goto 54.7,35.8
		accept Leading the Ancestors Home##11610 |goto 54.7,35.8
	step
		talk Etaruk##25292
		turnin A Visit to the Curator##11623 |goto 54.3,36.1
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Sagani |use Tuskarr Ritual Object##34715
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Sagani's ceremony |q 11610/2 |goto 52.8,34
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Takret |use Tuskarr Ritual Object##34715
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Takret's ceremony |q 11610/3 |goto 52.3,31.2
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Kesuk |use Tuskarr Ritual Object##34715
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Kesuk's ceremony |q 11610/1 |goto 50.9,32.4
	step
		Talk to Elder Atkanok
		turnin Leading the Ancestors Home##11610 |goto 54.7,35.8
	step
		talk Medic Hawthorn##25825
		accept A Soldier in Need##11789 |goto 55.0,68.9
	step
		click First Aid Supplies##187980
		collect Hawthorn's Anti-Venom##35119 |q 11789/1 |goto 57.5,69.3
	step
		Click the Cultist Shrine
		|tip It looks like a small candle shrine on the ground downstairs in this ship, next to the wall.
		accept Cultists Among Us##11920 |or |goto 57.5,69.1
		accept Cultists Among Us##11790 |or |goto 57.5,69.1
	step
		talk Medic Hawthorn##25825
		turnin A Soldier in Need##11789 |goto 55.0,68.9
	step
		talk Captain "Lefty" Lugsail##25298
		turnin Cultists Among Us##11920 |or |goto 57.8,69.2
		turnin Cultists Among Us##11790 |or |goto 57.8,69.2
	step
		talk Admiral Cantlebree##25299
		accept Notify Arlos##11791 |goto 57.8,69.2
	step
		talk General Arlos##25250
		turnin Notify Arlos##11791 |goto 56.7,72.6
	step
		talk Counselor Talbot##25301
		accept A Diplomatic Mission##12141 |goto 56.7,72.6
	step
		talk Medic Hawthorn##25825
		turnin A Soldier in Need##11789 |goto 55,68.9
	step
		talk Karuk##25435
		turnin A Diplomatic Mission##12141 |goto 47.1,75.5
		accept Karuk's Oath##11613 |goto 47.1,75.5
	stickystart "skadirraider"
	step
		Kill the Riplash Myrmidon and cheering Skadir mobs
		talk Captured Tuskarr Prisoner##25636 |goto 44.2,77.8
		accept Cruelty of the Kvaldir##12471 |goto 44.2,77.8
	step
	label "skadirraider"
		kill 6 Skadir Raider##25522+ |q 11613/1 |goto 46.5,77.2
		kill 5 Skadir Longboatsman##25521+ |q 11613/2 |goto 46.5,77.2
	step
		talk Karuk##25435
		turnin Karuk's Oath##11613 |goto 47.1,75.5
		accept Gamel the Cruel##11619 |goto 47.1,75.5
		turnin Cruelty of the Kvaldir##12471 |goto 47.1,75.5
	step
		kill Gamel the Cruel##26449 |q 11619/1 |goto 46.4,78.2
		|tip He's inside of the cave.
	step
		talk Karuk##25435
		turnin Gamel the Cruel##11619 |goto 47.1,75.5
		accept A Father's Words##11620 |goto 47.1,75.5
	step
		talk Veehja##25450
		turnin A Father's Words##11620 |goto 43.6,80.5
		accept The Trident of Naz'jan##11625 |goto 43.6,80.5
	step
		kill Ragnar Drakkarlund##26451
		|tip He's inside of the building.
		collect Trident of Naz'jan##35774|q 11625/1 |goto 54.7,89.1
	step
		talk Veehja##25450
		turnin The Trident of Naz'jan##11625 |goto 43.6,80.5
		accept The Emissary##11626 |goto 43.6,80.5
	step
		Swim underwater to the bubbling rock at the very bottom, so you don't run out of air
		Use your Trident of Naz'jan on Leviroth |use Trident of Naz'jan##35850
		kill Leviroth##26452 |q 11626/1 |goto 52.2,88.2
	step
		talk Karuk##25435
		turnin The Emissary##11626 |goto 47.1,75.5
	step
		talk Ataika##26169
		accept Not Without a Fight!##11949 |goto 63.8,46.1
	step
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto 64,45.7
	step
		kill 12 Kvaldir Raider##25760+ |q 11949/1 |goto 65.3,47.2
		click Kaskala Supplies##188164
		collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 65.3,47.2
	step
		talk Ataika##26169
		turnin Not Without a Fight!##11949 |goto 63.8,46.1
		accept Muahit's Wisdom##11950 |goto 63.8,46.1
	step
		talk Utaik##26213
		turnin Preparing for the Worst##11945 |goto 64,45.7
	step
		talk Elder Muahit##26218
		turnin Muahit's Wisdom##11950 |goto 67.2,54.9
		accept Spirits Watch Over Us##11961 |goto 67.2,54.9
	step
		talk Iruk##26219
		<Search corpse for Issliruk's Totem>
		collect Issliruk's Totem##35701 |q 11961/1 |goto 67.6,50.4
	step
		talk Elder Muahit##26218
		turnin Spirits Watch Over Us##11961 |goto 67.2,54.9
		accept The Tides Turn##11968 |goto 67.2,54.9
	step
		kill Heigarr the Horrible##26266 |q 11968/1 |goto 67.6,56.6
	step
		talk Elder Muahit##26218
		turnin The Tides Turn##11968 |goto 67.2,54.8
	step
		talk Orfus of Kamagua##23804
		accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
	step
		Click the Mound of Debris
		|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		collect Fengir's Clue##34222|q 11504/1 |goto 57.7,77.5
	step
		Click the Unlocked Chest
		|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		collect Rodin's Clue##34223|q 11504/2 |goto 59.2,77
	step
		Click the Long Tail Feather
		|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		collect Isuldof's Clue##34224|q 11504/3 |goto 59.8,79.4
	step
		Click the Cannonball
		|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		collect Windan's Clue##34225|q 11504/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin The Dead Rise!##11504 |goto 40.3,60.3
		accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
	step
		--Go across The Ancient Lift
		talk Elder Atuik##24755
		turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
		accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
		accept Feeding the Survivors##11456 |goto 25.0,57.0
	step
		talk Kip Trawlskip##28197
		fpath Kamagua |goto 24.7,57.8
	step
		kill Island Shoveltusk##24681+
		collect 6 Island Shoveltusk Meat##36776|q 11456/1 |goto 29.1,58.8
	step
		talk Elder Atuik##24755
		turnin Feeding the Survivors##11456 |goto 25.0,57.0
		accept Arming Kamagua##11457 |goto 25.0,57.0
	step
		kill Frostwing Chimaera##24673
		collect 3 Chimaera Horn##34101 |q 11457/1 |goto 26.4,62.9
	step
		talk Elder Atuik##24755
		turnin Arming Kamagua##11457 |goto 25.0,57.0
		accept Avenge Iskaal##11458 |goto 25.0,57.0
	step
		talk Grezzix Spindlesnap##24643
		turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
		accept Street "Cred"##11509 |goto 23.1,62.7
	step
		talk "Silvermoon" Harry##24539
		turnin Street "Cred"##11509 |goto 35.1,80.9
		accept "Scoodles"##11510 |goto 35.1,80.9
	step
		talk Handsome Terry##24537
		accept Forgotten Treasure##11434 |goto 35.6,80.2
	step
		talk Scuttle Frostprow##24784
		accept Swabbin' Soap##11469 |goto 37.8,79.6
	step
		kill "Scoodles"##24899
		collect Sin'dorei Scrying Crystal##34235|q 11510/1 |goto 38.3,83.4
	step
		click the Eagle Figurine##186886
		|tip It's a blue eagle statue inside this ship on the middle floor.
		collect Eagle Figurine##34070|q 11434/2 |goto 37.8,84.6
	step
		click the Amani Vase##186885
		|tip It looks like a grey vase at the bottom of this wrecked ship.
		collect Amani Vase##34069|q 11434/1 |goto 37.1,85.5
	step
		kill Big Roy##24785
		collect Big Roy's Blubber##34122|q 11469/1 |goto 31.4,77.9
	step
		talk "Silvermoon" Harry##24539
		turnin "Scoodles"##11510 |goto 35.1,80.9
		accept The Ancient Armor of the Kvaldir##11567 |goto 35.1,80.9
		accept The Frozen Heart of Isuldof##11512 |goto 35.1,80.9
		accept The Lost Shield of the Aesirites##11519 |goto 35.1,80.9
		accept The Staff of Storm's Fury##11511 |goto 35.1,80.9
	step
		talk Handsome Terry##24537
		turnin Forgotten Treasure##11434 |goto 35.6,80.2
		accept The Fragrance of Money##11455 |goto 35.6,80.2
	step
		talk Taruk##24541
		accept Gambling Debt##11464 |goto 36.3,80.5
	step
		talk Scuttle Frostprow##24784
		turnin Swabbin' Soap##11469 |goto 37.7,79.6
	step
		talk "Silvermoon" Harry##24539
		Tell him:
		Taruk sent me to collect what you owe.>
		kill "Silvermoon" Harry##24539
		After he submits to you
		<Pay up, Harry!>
		Collect "Silvermoon" Harry's Debt |q 11464/1 |goto 35.1,81.0
	step
		talk Taruk##24541
		turnin Gambling Debt##11464 |goto 36.3,80.5
		accept Jack Likes His Drink##11466 |goto 36.3,80.5
	step
		talk Olga, the Scalawag Wench##24639
		Tell her:
		<I'd like to buy Jack a drink.> |goto 35.3,79.6
		She will walk over to Jack Adams
		clicknpc Jack Adams##24788
		Discretely search the pirate's pockets for Taruk's payment.>
		collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.5,79.4
	step
		talk Taruk##24541
		turnin Jack Likes His Drink##11466 |goto 36.3,80.5
		accept Dead Man's Debt##11467 |goto 36.3,80.5
	step
		kill Rabid Brown Bear##24633+
		collect 4 Bear Musk##34084 |q 11455/1 |goto 35.4,78.1
	step
		_Enter_ the cave |goto 33.6,75.6 < 10 |walk
		kill "Mad" Jonah Sterling##24742 |goto 33.8,78.0
		After you beat him, he will jump down
		Run down the ramp here |goto 33.7,79.2 < 10
		click The Frozen Heart of Isuldof##187032
		collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.3,78.7
	step
		talk Captain Ellis##24910
		turnin The Lost Shield of the Aesirites##11519 |goto 37.2,74.8
		accept Mutiny on the Mercy##11527 |goto 37.2,74.8
	step
		Go downstairs in the ship
		kill Mutinous Sea Dog##25026+
		collect 5 Barrel of Blasting Powder##34387|q 11527/1
	step
		Go upstairs to the ship deck
		talk Captain Ellis##24910
		turnin Mutiny on the Mercy##11527
		accept Sorlof's Booty##11529
	step
		Run to the other end of the ship deck to the big cannon
		clicknpc The Big Gun##24992
		Keep clicking The Big Gun until Sorlof is dead
		Sorlof will drop a big pile of gold on the shore
		Jump off the ship and click Sorlof's Booty
		collect Sorlof's Booty##34468|q 11529/1
	step
		talk Captain Ellis##24910
		turnin Sorlof's Booty##11529 |goto 37.2,74.8
		accept The Shield of the Aesirites##11530 |goto 37.2,74.8
	step
		Leave the cave
		kill 8 Crazed Northsea Slaver##24676+ |q 11458/1 |goto 33.2,63.9
	step
		If you are careful, you can avoid _Abdul the Insane_
		click The Staff of Storm's Fury##187033
		It's at the bottom of the ship
		collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.3,64.8
	step
		click Dirt Mound##186944
		kill Black Conrad's Ghost##24790+
		collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.7,60.2
	step
		talk Elder Atuik##24755
		turnin Avenge Iskaal##11458 |goto 25.0,57.0
	step
		talk Taruk##24541
		turnin Dead Man's Debt##11467 |goto 36.3,80.5
	step
		talk Handsome Terry##24537
		turnin The Fragrance of Money##11455 |goto 35.6,80.2
	step
		click The Ancient Armor of the Kvaldir##187381
		collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.8,73.9
	step
		Ride the big lift to the top of the cliff
		talk Orfus of Kamagua##23804
		turnin The Ancient Armor of the Kvaldir##11567 |goto 40.3,60.3
		turnin The Frozen Heart of Isuldof##11512 |goto 40.3,60.3
		turnin The Shield of the Aesirites##11530 |goto 40.3,60.3
		turnin The Staff of Storm's Fury##11511 |goto 40.3,60.3
		accept A Return to Resting##11568 |goto 40.3,60.3
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Shield of Aesirites |q 11568/1 |goto 57.6,77.4
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Staff of Storm's Fury |q 11568/2 |goto 59.2,77
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.8,79.4
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin A Return to Resting##11568 |goto 40.3,60.3
		accept Return to Atuik##11572 |goto 40.3,60.3
	step
		--Go across the Ancient Lift
		talk Elder Atuik##24755
		turnin Return to Atuik##11572 |goto 25.0,57.0
	step
		talk Elder Ko'nani##26194
		accept Let Nothing Go To Waste##11958 |goto Dragonblight 48,74.9
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto 48.3,74.3
	step
		kill Snowfall Glade Reaver##26197, Snowfall Glade Wolvar##26198, Snowfall Glade Shaman##26201, Snowfall Glade Den Mother##26199
		collect 6 Stolen Moa'ki Goods##35686|q 11958/1 |goto 45.3,63.7
		clicknpc Snowfall Glade Pup##26200
		collect 12 Snowfall Glade Pup##35692|q 11960/1 |goto 45.3,63.7
	step
		talk Trapper Mau'i##26228
		turnin Planning for the Future##11960 |goto 48.3,74.3
	step
		talk Elder Ko'nani##26194
		turnin Let Nothing Go To Waste##11958 |goto 48,74.9
		accept Slay Loguhn##11959 |goto 48,74.9
	step
		kill Loguhn##26196
		collect Blood of Loguhn##35688|n
		Click the Blood of Loguhn in your bags |use Blood of Loguhn##35688
		Smear the Blood of Loguhn on yourself |q 11959/1 |goto 46.3,59.2
	step
		talk Elder Ko'nani##26194
		turnin Slay Loguhn##11959 |goto 48,74.9
	step
		talk Toalu'u the Mystic##26595
		accept Spiritual Insight##12028 |goto 49.2,75.6
	step
		Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier |use Toalu'u's Spiritual Incense##35907
		|tip Sitting next to the entrance to the small house.
		Watch yourself fly as a wisp
		Attain Spiritual Insight concerning Indu'le Village |q 12028/1 |goto 48.9,75.8
	step
		talk Toalu'u the Mystic##26595
		turnin Spiritual Insight##12028 |goto 49.2,75.6
		accept Elder Mana'loa##12030 |goto 49.2,75.6
	step
		talk Tua'kea##26245
		accept Tua'kea's Crab Traps##12009 |goto Dragonblight/0 48.0,76.1
	step
		Click Tua'kea's Crab Traps
		|tip They look like small cages on the ground underwater around this area.
		collect 8 Tua'kea Crab Trap##35802|q 12009/1 |goto 46.6,77.5
	step
		Click the Wrecked Crab Trap
		|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
		accept Signs of Big Watery Trouble##12011 |goto 47.7,80
	step
		talk Tua'kea##26245
		turnin Tua'kea's Crab Traps##12009 |goto Dragonblight/0 48.0,76.1
		turnin Signs of Big Watery Trouble##12011 |goto Dragonblight/0 48.0,76.1
		accept The Bait##12016 |goto Dragonblight/0 48.0,76.1
	step
		kill Kili'ua##26521
		collect The Flesh of "Two Huge Pincers"##35831|q 12016/1 |goto 43.7,82.3
	step
		talk Tua'kea##26245
		turnin The Bait##12016 |goto Dragonblight/0 48.0,76.1
		accept Meat on the Hook##12017 |goto Dragonblight/0 48.0,76.1
	step
		Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook |use Tu'u'gwar's Bait##35838
		|tip It looks like a rope leading into the water, with a big hook on the end.
		Kill Tu'u'gwar when he appears
		kill 1 Tu'u'gwar##26510 |q 12017/1 |goto 46.7,78.2
	step
		talk Tua'kea##26245
		turnin Meat on the Hook##12017 |goto Dragonblight/0 48.0,76.1
	step
		Talk to Elder Mana'loa
		turnin Elder Mana'loa##12030 |goto 36.4,65
		accept Freedom for the Lingering##12031 |goto 36.4,65
	step
		kill Indu'le Mystic##26336, Indu'le Warrior##26344
		Put #15# Indu'le spirits to rest |q 12031/1 |goto 37.2,65.5
	step
		Talk to Elder Mana'loa
		turnin Freedom for the Lingering##12031 |goto 36.4,65
		accept Conversing With the Depths##12032 |goto 36.4,65
	step
		_Follow_ the path up |goto Dragonblight,34.3,79.8 < 10 |only if walking
		_Continue_ along the path |goto 34,83.4 < 10 |only if walking
		Click The Pearl of the Depths
		|tip It's a big white pearl sitting on a altar thing.
		Oacha'noa appears and tells you to jump in the water
		Jump in the water when he tells you to
		Obey Oacha'noa's compulsion |q 12032/1
	step
		talk Toalu'u the Mystic##26595
		turnin Conversing With the Depths##12032 |goto 49.2,75.6
	step
		Once you've completed all of the quests above, you can now do the daily quests
		Reach exalted with The Kalu'ak |next "exalted" |only if rep("Kalu'ak")==Exalted
		|confirm |next |only if default
	//borean//
	step
	label "daily"
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto Borean Tundra,64,45.7
	step
		click Kaskala Supplies##188164
		collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 67.8,49.5
	step
		talk Utaik##26213
		turnin Preparing for the Worst##11945 |goto 64,45.7
	//dragon//
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto Dragonblight,48.3,74.3
	step
		clicknpc Snowfall Glade Pup##26200
		collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.3,63.7
	step
		talk Trapper Mau'i##26228
		turnin Planning for the Future##11960 |goto 48.3,74.3
	//howling//
	step
		talk Anuniaq##24810
		accept The Way to His Heart...##11472 |goto Howling Fjord 24.6,58.9
	step
		Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946
		|tip They look like swarms of fish in the water.
		kill Great Reef Shark##24637+ |n
		collect 10 Tasty Reef Fish##34127|q 11472 |goto 28.9,74.8
	step
		Use your Tasty Reef Fish on a Reef Bull as far away as you can |use Tasty Reef Fish##34127
		He will come to the spot where you're standing
		Keep doing this
		Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1 |goto 31,74.4
	step
		talk Anuniaq##24810
		turnin The Way to His Heart...##11472 |goto 24.6,58.9
	step
		You have reached the end of the dailies for today.
		To reset this section, click here. |next "daily" |confirm
		Earn Exalted reputation with the Kalu'ak |next "exalted" |complete rep("Kalu'ak")==Exalted
	step
	label "exalted"
		Congratulation, you  have reached Exalted with the Kalu'ak
]])

-----------------------
----- The Kurenai -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Kurenai_Rep",[[
	--step
	--	Proceeding to Daily |only if completedq(10011)
	--	Proceeding to Quests |only if not completedq(10011)
	--	|next |only if not completedq(10011)
	--	|next "bead_grind" |only if completedq(10011)
	step
		talk Ikuti##18008
		accept Ango'rosh Encroachment##9835 |goto Zangarmarsh 41.9,27.2
		accept Daggerfen Deviance##10115 |goto Zangarmarsh 41.9,27.2
	step
		click Wanted Poster##184945
		accept Wanted: Chieftain Mummaki##10116 |goto 41.7,27.3
	step
		kill Chieftain Mummaki##19174
		collect Chieftain Mummaki's Totem##27943 |q 10116/1 |goto 23.8,26.8
	step
		kill 3 Daggerfen Assassin##18116+ |q 10115/1 |goto 28.2,22.1
		kill 15 Daggerfen Muckdweller##18115+ |q 10115/2 |goto 28.2,22.1
	step
		kill 5 Ango'rosh Shaman##18118+ |q 9835/1 |goto 34.6,29.7
		kill 10 Ango'rosh Ogre##18117+ |q 9835/2 |goto 34.6,29.7
	step
		talk Ikuti##18008
		turnin Wanted: Chieftain Mummaki##10116 |goto 42.0,27.2
		turnin Ango'rosh Encroachment##9835 |goto 42.0,27.2
		turnin Daggerfen Deviance##10115 |goto 42.0,27.2
		accept Overlord Gorefist##9839 |goto 42.0,27.2
	step
		talk Puluu##18009
		accept Stinger Venom##9830 |goto 40.8,28.7
		accept Lines of Communication##9833 |goto 40.8,28.7
		accept The Terror of Marshlight Lake##9902 |goto 40.8,28.7
	step
		talk Maktu##18010
		accept Natural Armor##9834 |goto 41.6,27.3
	step
		kill Fenclaw Thrasher##18214
		collect 8 Fenclaw Hide##24486 |q 9834/1 |goto 48.1,38.4
	step
		kill 12 Marshfang Slicer##18131+ |q 9833/1 |goto 35.9,58.6
	step
		kill Terrorclaw##20477 |q 9902/1 |goto 22.4,46.1
		|tip On a little island.
	step
		kill Marshlight Bleeder##18133
		|tip They are all around this area on the land, to the north and south.
		collect 6 Marshlight Bleeder Venom##24485 |q 9830/1 |goto 17.3,38.4
		You'll be able to find more around the following location |goto Zangarmarsh 19.6,33.3
	stickystart "angoroshmaul"
	step
		kill Overlord Gorefist##18160 |q 9839/1 |goto 18.3,7.7
		|tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
	step
	label "angoroshmaul"
		kill 10 Ango'rosh Mauler##18120+ |q 9839/2 |goto 17.3,10.2
		Click the brown crates and kill ogres around this area
	step
		talk Puluu##18009
		turnin Stinger Venom##9830 |goto 40.8,28.7
		turnin Lines of Communication##9833 |goto 40.8,28.7
		turnin The Terror of Marshlight Lake##9902 |goto 40.8,28.7
	step
		talk Maktu##18010
		turnin Natural Armor##9834 |goto 41.6,27.3
		accept Maktu's Revenge##9905 |goto 41.6,27.3
	step
		kill Mragesh##18286 |q 9905/1 |goto 42.2,41.4
	step
		talk Maktu##18010
		turnin Maktu's Revenge##9905 |goto 41.6,27.3
	step
		talk Huntress Kima##18416
		accept The Ravaged Caravan##9956 |goto Nagrand 54.2,70.0
	step
		talk Elementalist Ioki##18233
		accept The Throne of the Elements##9869 |goto 55.5,68.8
	step
		talk Huntress Bintook##18353
		accept Do My Eyes Deceive Me##9917 |goto 55,70.5
	step
		click Telaar Bulletin Board##182393
		accept Wanted: Giselda the Crone##9936 |goto 54.6,70.7
		accept Wanted: Zorbo the Advisor##9940 |goto 54.6,70.7
	step
		talk Warden Moi'bff Jill##18408
		accept Fierce Enemies##10476 |goto 54.7,70.9
	step
		talk Otonbu the Sage##18222
		accept Stopping the Spread##9874 |goto 54.5,72.1
	step
		talk Poli'lukluk the Wiser##18224
		accept Solving the Problem##9878 |goto 54.5,72.3
	step
		kill Boulderfist Hunter##18352+
		collect Boulderfist Plans##25468 |q 9917/1 |goto 63.1,73.2
	stickystart "kilsorrowagents"
	step
		kill Giselda the Crone##18391 |q 9936/1 |goto 71.1,82.4
	step
	label "kilsorrowagents"
		kill Kil'sorrow Deathsworn##17148+, Kil'sorrow Spellbinder##17146+, Kil'sorrow Cultist##17147+
		Kill #10# Kil'sorrow Agents |q 9936/2 |goto 67.9,79.3
	step
		talk Corki##18369
		accept HELP!##9923 |goto 72.6,70.7
	step
		kill Boulderfist Crusher##17134+, Boulderfist Mystic##17135+
		collect 1 Boulderfist Key##25490 |n
		click Corki's Prison##1787
		Free Corki |q 9923/1 |goto 72.6,70.7
	step
		talk Elementalist Sharvak##18072
		turnin The Throne of the Elements##9869 |goto 60.7,22.1
	stickystart "getobsidianwarbeads"
	step
		kill Zorbo the Advisor##18413|q 9940/1 |goto 46.5,18.2
	step
	label "getobsidianwarbeads"
		kill 5 Warmaul Shaman##18064+ |q 9940/2 |goto 48.3,21.5
		kill 5 Warmaul Reaver##17138+ |q 9940/3 |goto 48.3,21.5
		collect 10 Obsidian Warbeads##25433 |q 10476/1 |goto 48.3,21.5
	step
		click Telaar Supply Crate##182520
		collect 10 Telaar Supply Crate##25647 |q 9956/1 |goto 27.9,29.7
	stickystart "murkkills"
	step
		Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water and the village |use Torch of Liquid Fire##24560
		Burn #10# Sunspring Villager Corpses |q 9874/1 |goto 29.5,43.5
	step
	label "murkkills"
		kill 10 Murkblood Scavenger##18207+ |q 9878/1 |goto 29.5,43.5
		kill 5 Murkblood Raider##18203+ |q 9878/2 |goto 29.5,43.5
	step
		talk Poli'lukluk the Wiser##18224
		turnin Solving the Problem##9878 |goto 54.5,72.3
	step
		talk Otonbu the Sage##18222
		turnin Stopping the Spread##9874 |goto 54.5,72.1
	step
		talk Huntress Kima##18416
		turnin The Ravaged Caravan##9956 |goto 54.2,70
	step
		talk Arechron##18183
		turnin HELP!##9923 |goto 55.5,68.8
		accept Corki's Gone Missing Again!##9924 |goto 55.5,68.8
	step
		talk Huntress Bintook##18353
		turnin Do My Eyes Deceive Me##9917 |goto 55,70.5
		accept Not On My Watch!##9918 |goto 55,70.5
	step
		talk Warden Moi'bff Jill##18408
		turnin Wanted: Giselda the Crone##9936 |goto 54.8,71
		turnin Wanted: Zorbo the Advisor##9940 |goto 54.8,71
		turnin Fierce Enemies##10476 |goto 54.8,71
	step
		Fight Lump until he's almost dead
		|tip Sleeping on the hill.
		Talk to Lump and tell him _"I need answers!"_
		Interrogate Lump |q 9918/1 |goto 62.7,71.4
	step
		talk Huntress Bintook##18353
		turnin Not On My Watch!##9918 |goto 55,70.5
		accept Mo'mor the Breaker##9920 |goto 55,70.5
	step
		talk Mo'mor the Breaker##18223
		turnin Mo'mor the Breaker##9920 |goto 54.6,72.2
		accept The Ruins of Burning Blade##9921 |goto 54.6,72.2
	step
		kill 8 Boulderfist Crusher##17134+ |q 9921/1 |goto 72.9,69.8
		kill 8 Boulderfist Mystic##17135+ |q 9921/2 |goto 72.9,69.8
	step
		talk Mo'mor the Breaker##18223
		turnin The Ruins of Burning Blade##9921 |goto 54.6,72.2
		accept The Twin Clefts of Nagrand##9922 |goto 54.6,72.2
	step
		kill 10 Boulderfist Warrior##17136+ |q 9922/1 |goto 40.7,35.6
		kill 10 Boulderfist Mage##17137+ |q 9922/2 |goto 40.7,35.6
		collect 1 Northwind Cleft Key##25509 |q 9924 |sticky |goto 40.7,35.6
	step
		click Corki's Prison##1787
		Free Corki inside the Cave |q 9924/1 |goto 39.3,27.5
		|tip Inside the cave, way in the back.
	step
		talk Mo'mor the Breaker##18223
		turnin The Twin Clefts of Nagrand##9922 |goto 54.6,72.2
		accept Diplomatic Measures##10108 |goto 54.6,72.2
	step
		talk Arechron##18183
		turnin Corki's Gone Missing Again!##9924 |goto 55.5,68.8
	step
		talk Lantresor of the Blade##18261
		Listen to his story
		turnin Diplomatic Measures##10108 |goto 73.8,62.6
		accept Armaments for Deception##9928 |goto 73.8,62.6
		accept Ruthless Cunning##9927 |goto 73.8,62.6
	stickystart "kilsorrowarms"
	step
		kill Kil'sorrow Deathsworn##17148+, Kil'sorrow Spellbinder##17146+, Kil'sorrow Cultist##17147+
		Use your Warmaul Ogre Banners on their corpses |use Warmaul Ogre Banner##25552
		Plant #10# Warmaul Ogre Banners |q 9927/1 |goto 71.4,79.4
	step
	label "kilsorrowarms"
		click Kil'sorrow Armament##6959+
		collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto 71.4,79.4
	step
		talk Lantresor of the Blade##18261
		turnin Armaments for Deception##9928 |goto 73.8,62.6
		turnin Ruthless Cunning##9927 |goto 73.8,62.6
		accept Returning the Favor##9931 |goto 73.8,62.6
		accept Body of Evidence##9932 |goto 73.8,62.6
	stickystart "kilsorrowbanners"
	step
		Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
		Defend the Boulderfist Saboteurs that appear until they are done placing the corpses |q 9932/1 |goto 46.5,24.3
	step
	label "kilsorrowbanners"
		kill Warmaul Shaman##18064+,Warmaul Reaver##17138+
		Use your Kil'sorrow Banners on their corpses |use Kil'sorrow Banner##25555
		Plant #10# Kil'sorrow Banners |q 9931/1 |goto 46.5,24.3
	step
		talk Lantresor of the Blade##18261
		turnin Returning the Favor##9931 |goto 73.8,62.6
		turnin Body of Evidence##9932 |goto 73.8,62.6
		accept Message to Telaar##9933 |goto 73.8,62.6
	step
		talk Arechron##18183
		turnin Message to Telaar##9933 |goto 55.5,68.8
	step
		talk Arechron##18183
		accept Corki's Ransom##9954 |goto 55.5,68.7
	step
		talk Warden Moi'bff Jill##18408
		accept Wanted: Durn the Hungerer##9938 |goto 54.7,70.9
	step
		talk Huntress Kima##18416
		accept He Called Himself Altruis...##9982 |goto Nagrand 54.8,70.5
	step
		The next few quests are meant to be _group quests_
		If you are not high level, you may need at least _3 people_ for these quests
		|confirm
	step
		map Nagrand
		path follow loose;loop;ants curved
		path	46.7,63.7	40.8,63.5	37.4,62.1
		path	34.0,62.7	31.7,65.4	30.5,71.3
		path	32.0,75.9	35.5,78.5	39.8,78.7
		path	42.4,75.5	46.0,70.2
		Follow the path around this area to look for _Durn the Hungerer_
		kill Durn the Hungerer##18411 |q 9938/1
	step
		talk Altruis the Sufferer##18417
		turnin He Called Himself Altruis...##9982
		accept Survey the Land##9991 |goto 27.3,43.1
		|tip You will fly around on a drake to view The Twilight Ridge.
		turnin Survey the Land##9991 |goto 27.3,43.1
		accept Buying Time##9999 |goto 27.3,43.1
	step
		kill 2 Felguard Legionnaire##17152+ |q 9999/1 |goto 25.2,38.3
		kill 3 Mo'arg Engineer##16945+ |q 9999/2 |goto 25.2,38.3
		kill 8 Gan'arg Tinkerer##17151+ |q 9999/3 |goto 25.2,38.3
	step
		talk Altruis the Sufferer##18417
		turnin Buying Time##9999 |goto 27.3,43.1
		accept The Master Planner##10001 |goto 27.3,43.1
	step
		kill Mo'arg Master Planner##18567
		collect The Master Planner's Blueprints##25751 |q 10001/1 |goto 23.6,34.6
	step
		talk Altruis the Sufferer##18417
		turnin The Master Planner##10001 |goto 27.3,43.1
		accept Patience and Understanding##10004 |goto 27.3,43.1
	step
		Enter the cave |goto 27.0,23.7 < 10 |walk
		talk Corki##18445
		|tip You may have to fight the 65 Elite standing next to the cage.
		turnin Corki's Ransom##9954 |goto 29.5,26.1
		accept Cho'war the Pillager##9955 |goto 29.5,26.1
	step
		Leave the cave |goto 27.0,23.7 < 10 |walk
		Enter the cave |goto 27.2,18.7 < 10 |walk
		kill Cho'war the Pillager##18423+
		collect Cho'war's Key##25648 |q 9955 |goto Nagrand 25.8,13.8
	step
		Leave the cave |goto 27.2,18.7 < 10 |walk
		Enter the cave |goto 27.0,23.7 < 10 |walk
		Click Corki's cage to unlock it
		Free Corki |q 9955/1 |goto 29.5,26.1
		|tip You may have to fight the 65 Elite standing next to the cage.
	step
		Leave the cave |goto 27.0,23.7 < 10 |walk
		talk Warden Moi'bff Jill##18408
		turnin Wanted: Durn the Hungerer##9938 |goto 54.7,70.9
	step
		talk Arechron##18183
		turnin Cho'war the Pillager##9955 |goto 55.5,68.7
	step
		talk Sal'salabim##18584
		Tell him _"Altruis sent me. He said that you could help me."_
		|tip He will immediately start attacking you!
		Persuade Sal'salabim |q 10004/1 |goto Shattrath City 77.3,34.9
	step
		talk Sal'salabim##18584
		turnin Patience and Understanding##10004 |goto Shattrath City 77.3,34.9
		accept Crackin' Some Skulls##10009 |goto Shattrath City 77.3,34.9
	step
		talk Raliq the Drunk##18585
		Tell him _"I am here to collect a debt, pay up or I'm going to have to hurt you."_
		|tip He will immediately start attacking you!
		collect Raliq's Debt##25767 |q 10009/1 |goto 75.0,31.5
	step
		talk Coosh'coosh##18586
		Tell him _"I am here to collect a debt, pay up or I'm going to have to hurt you."_
		|tip He will immediately start attacking you!
		collect Coosh'coosh's Debt##25768 |q 10009/2 |goto Zangarmarsh 80.9,91.1
	step
		talk Floon##18588
		Tell him _"I am here to collect a debt, pay up or I'm going to have to hurt you."_
		|tip He will immediately start attacking you!
		collect Floon's Debt##25769 |q 10009/3 |goto Terokkar Forest 27.2,58.1
	step
		talk Sal'salabim##18584
		turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.3,34.9
		accept It's Just That Easy?##10010 |goto Shattrath City 77.3,34.9
	step
		talk Altruis the Sufferer##18417
		turnin It's Just That Easy?##10010 |goto Nagrand 27.3,43.1
		accept Forge Camp: Annihilated##10011 |goto Nagrand 27.3,43.1
	step
		kill Demos, Overseer of Hate##18535
		collect Fel Cannon Activator##25770 |n
		Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
		Destroy Forge Camp: Hate |q 10011/1 |goto Nagrand 25.0,36.1
	step
		kill Xirkos, Overseer of Fear##18536
		collect Fel Cannon Activator##25771 |n
		Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
		Destoy Forge Camp: Fear |q 10011/2 |goto 19.6,51.1
	step
		talk Altruis the Sufferer##18417
		turnin Forge Camp: Annihilated##10011 |goto 27.3,43.1
	step
		Once you have completed the above quests, you will have to grind your way to Exalted
		|confirm
	step
	label "bead_grind"
		kill Warmaul Reaver##17138+, Warmaul Shaman##18064+, Warmaul Warlock##18037+, Warmaul Brute##18065+
		collect Obsidian Warbeads##25433 |n |goto Nagrand 48.9,22.7
		If you are fresh into revered, you will need 420 beads to get 21,000 reputation points
		Collect beads in sets of 10
		You can find more spots to farm Warbeads at the following locations:
		Location 1 (Inside of the cave) |goto 50.0,56.8
		Location 2 (Inside of the cave) |goto 40.8,31.7
		Location 3 (Around this area) |goto 27.3,21.4
		Click here when you're ready to turn in |confirm
	step
	label "turn_in"
		talk Warden Moi'bff Jill##18408
		accept More Warbeads##10477 |n |goto Nagrand,54.7,70.9
		Click here to go back to farming |next "bead_grind" |confirm
		Earn Exalted reputation with the Kurenai |complete rep("Kurenai")==Exalted |next "exalted"
	step
	label "exalted"
		Congratulations, you are now Exalted with The Kurenai! |complete rep("Kurenai")==Exalted
]])

---------------------
----- Sporeggar -----
---------------------

ZygorGuidesViewer:RegisterInclude("Sporeggar_Rep",[[
	step
		talk Fahssn##17923
		|tip He walks around this area.
		accept The Sporelings' Plight##9739 |goto Zangarmarsh/0 18.96,63.45
		accept Natural Enemies##9743 |goto Zangarmarsh/0 18.96,63.45
	stickystart "Collect_Mature_Spore_Sacs"
	step
		Kill Starving enemies around this area
		collect 6 Bog Lord Tendril##24291 |q 9743/1 |goto 15.90,60.51
	step
	label "Collect_Mature_Spore_Sacs"
		click Mature Spore Sac##182069+
		|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
		collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 15.90,60.51
	step
		talk Fahssn##17923
		|tip He walks around this area.
		turnin The Sporelings' Plight##9739 |goto 18.96,63.45
		turnin Natural Enemies##9743 |goto 18.96,63.45
	step
	label "Collect_Spore_Sacs_Reach_Friendly"
		click Mature Spore Sac##182069+
		|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
		collect Mature Spore Sac##24290 |n |goto 15.90,60.51
		|tip Collect them in in stacks of 10.
		Click here to turn them in |confirm |only if rep('Sporeggar')<Friendly
	step
		talk Fahssn##17923
		|tip He walks around this area.
		accept More Spore Sacs##9742 |goto 18.96,63.45 |only if rep('Sporeggar')<Friendly
		Click here to continue farming |next "Collect_Spore_Sacs_Reach_Friendly" |confirm |only if rep('Sporeggar')<Friendly
		Reach Friendly with Sporeggar |complete rep('Sporeggar')>=Friendly |next "Reached_Friendly_Reputation"
	step
	label "Reached_Friendly_Reputation"
		talk Fahssn##17923
		|tip He walks around this area.
		accept Sporeggar##9919 |goto 18.96,63.45
	step
		Enter the building |goto 19.54,51.82 < 5 |walk
		talk Msshi'fn##17924
		|tip Inside the building.
		turnin Sporeggar##9919 |goto 19.68,52.07
	step
		The fastest way to go reach Exalted is to farm The Underbog dungeon
		|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
		Enter The Underbog |goto The Underbog/1 30.02,67.39 < 1000 |c
		only if rep('Sporeggar')<Exalted
	step
	label "Farm_Dungeon_Collect_Sanguine_Hibiscus"
		Kill everything in the dungeon
		click Sanguine Hibiscus##183385+
		|tip They look like small red flowery plants on the ground throughout the dungeon.
		|tip They can also drop from creatures in the dungeon.
		collect Sanguine Hibiscus##24246 |n
		|tip Collect these and turn them in for more reputation after each run.
		Click here to turn them in |confirm |only if rep('Sporeggar')<Exalted
	step
		talk T'shu##54674
		accept Bring Me Another Shrubbery!##29692 |goto 31.48,65.21 |only if rep('Sporeggar')<Exalted
		Click here to continue farming |next "Farm_Dungeon_Collect_Sanguine_Hibiscus" |confirm |only if rep('Sporeggar')<Exalted
		|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
		Earn Exalted status with the Sporeggar |complete rep('Sporeggar')==Exalted |next "Reached_Exalted_Status"
	step
	label "Reached_Exalted_Status"
		_Congratulations!_
		You reached Exalted reputation with the "Sporeggar" faction.
]])

-------------------------
----- The Timbermaw -----
-------------------------

ZygorGuidesViewer:RegisterInclude("Timbermaw_Rep",[[
	--step
	--	Routing to proper section |next "the_grind" |only if completedq(28614)
	--	Routing to proper section |next |only if not completedq(28614)
	step
		talk Nafien##15395
		accept Deadwood of the North##28338 |goto Felwood 64.0,10.3
		accept Disarming Bears##28366 |goto Felwood 64.0,10.3
	step
		talk Ferli##48461
		accept Stupid Drizle!##28362 |goto 64.1,10.3
	step
		talk Drizle##47556
		turnin Stupid Drizle!##28362 |goto 60.6,9.5
		accept The Chieftain's Key##28364 |goto 60.6,9.5
	step
		kill Chieftain Bloodmaw##9462
		collect Drizle's Key##63695 |q 28364/1 |goto 62.1,9.9
	step
		talk Drizle##47556
		turnin The Chieftain's Key##28364 |goto 60.6,9.5
	step
		kill Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
		Kill #15# Deadwood Furbolg |q 28338/1 |goto 62.0,12.8
		click Deadwood Weapon Pile##207126
		collect 7 Deadwood Weapons##63689 |q 28366/1 |goto 62.0,12.8
		collect 1 Deadwood Ritual Totem##20741 |use Deadwood Ritual Totem##20741 |n
		accept Deadwood Ritual Totem##8470
		You can find more at the following location |goto Felwood 59.7,9.8
	step
		talk Nafien##15395
		turnin Deadwood of the North##28338 |goto 64.0,10.3
		turnin Disarming Bears##28366 |goto 64.0,10.3
		accept Speak to Salfa##28521 |goto 64.0,10.3
		|tip You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
	step
		talk Kernda##11558
		turnin Deadwood Ritual Totem##8470 |goto 64.7,5.7
		|tip You should be friendly with Timbermaw after completing this quest.
		only if rep('Timbermaw Hold')>=Neutral
	step
		talk Meilosh##11557
		accept Runecloth##6031 |goto 64.9,5.2
		only if rep ('Timbermaw Hold')>=Friendly
	step
		talk Salfa##11556
		turnin Speak to Salfa##28521 |goto Winterspring 21.1,46.2
		accept Delivery for Donova##28524 |goto Winterspring 21.1,46.2
		accept Winterfall Activity##28522 |goto Winterspring 21.1,46.2
	step
		talk Donova Snowden##9298
		turnin Delivery for Donova##28524 |goto 25.1,58.5
		accept Threat of the Winterfall##28460 |goto 25.1,58.5
		accept Falling to Corruption##28464 |goto 25.1,58.5
	step
		Click the Winterfall Cauldron
		turnin Falling to Corruption##28464 |goto 24.5,47.6
		accept Mystery Goo##28467 |goto 24.5,47.6
	step
		kill Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
		Kill #15# Winterfall Furbolg |q 28460/1 |goto 24.5,47.6
		collect 10 Winterfall Spirit Beads##21383 |q 28522/1 |goto 24.5,47.6
		You can find more mobs at the following location |goto Winterspring 27.3,49.3
	step
		talk Donova Snowden##9298
		turnin Mystery Goo##28467 |goto 25.1,58.5
		turnin Threat of the Winterfall##28460 |goto 25.1,58.5
		accept Winterfall Runners##28469 |goto 25.1,58.5
		accept Scalding Signs##28530 |goto 25.1,58.5
	step
		kill Winterfall Runner##10916
		collect Winterfall Crate##12829 |q 28469/1 |goto 29.3,54.8
		|tip They walk along the road so some searching may be required.
	step
		kill Scalding Springsurge##48767+,Boiling Springbubble##48768+
		collect 7 Suspicious Green Sludge##64449 |q 28530/1 |goto 32.7,50.6
	step
		talk Donova Snowden##9298
		turnin Winterfall Runners##28469 |goto 25.1,58.5
		turnin Scalding Signs##28530 |goto 25.1,58.5
		accept High Chief Winterfall##28470 |goto 25.1,58.5
		|tip You should be honored with Timbermaw Hold at this point.
	step
		kill High Chief Winterfall##10738 |q 28470/1 |goto 37.0,55.6
	step
		talk Donova Snowden##9298
		turnin High Chief Winterfall##28470 |goto 25.1,58.5
	step
		talk Salfa##11556
		turnin Winterfall Activity##28522 |goto 21.1,46.2
		|tip You should now be able to do the quest More Beads for Salfa.
	step
		talk Burndl##48722
		accept Bearzerker##28614 |goto 65.3,46.2
	step
		talk Tanrir##48723
		accept Turning the Earth##28615 |goto 65.4,46.2
	step
		Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems |use Tanrir's Overcharged Totem##64637
		Overload 4 Winterfall Earth Totems |q 28615/1 |goto 67.0,47.7
	step
		kill Grolnar the Berserk##49178 |q 28614/1 |goto 69.3,50.6
	step
		talk Tanrir##48723
		turnin Turning the Earth##28615 |goto Winterspring 65.4,46.2
	step
		talk Burndl##48722
		turnin Bearzerker##28614 |goto 65.3,46.2
	step
	label "the_grind"
		At this point, you can do two repeatable quests, as well as grind to earn rep.
		More Beads for Salfa requires that you grind in Winterspring. You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in. Click here to farm at the Winterspring location. |confirm |next "winterfall"
		Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in. Click here to farm at the Felwood location. |confirm |next "deadwood"
		|tip Collecting 65 Beads/Feathers will get you from Honored to Exalted.
	step
	label "winterfall"
		kill Winterfall Shaman##7439+,Winterfall Ursa##7438+
		collect Winterfall Spirit Beads##21383 |n |goto 67.5,49.8
		|tip You need to collect at least 5.
		5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
		More can be found at the following location |goto Winterspring 35.6,56.3
		Click here to turn in your beads |confirm
	step
		talk Salfa##11556
		accept More Beads for Salfa##28523 |n |goto 21.1,46.2
		Click here to go back to grinding |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
		Exalted with Timbermaw Hold |next "exalted" |complete rep('Timbermaw Hold')==Exalted
	step
	label "deadwood"
		kill Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
		collect Deadwood Headdress Feather##21377 |n |goto Felwood 61.9,12.3
		|tip You need to collect at least 5.
		5 Feather Headresses = 2,000 Reputation. You're aiming for at least 60 to 65 Feather Headresses in total.
		More can be found at the following location |goto Felwood 59.6,8.9
		Click here to turn in your feathers |confirm |next "turnin"
	step
	label "turnin"
		talk Nafien##15395
		accept Feathers for Nafien##28395 |n |goto 64.0,10.3
		Click here to go back to grinding |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
		Exalted with Timbermaw Hold |next "exalted" |complete rep('Timbermaw Hold')==Exalted
	step
	label "exalted"
		Congratulations, you are now Exalted with Timbermaw Hold!
]])

---------------------------
----- Tabard Includes -----
---------------------------

ZygorGuidesViewer:RegisterInclude("SWTabard",[[
		talk Captain Lancy Revshon##49877 |only if rep("Stormwind")<Exalted
		buy 1 Stormwind Tabard##45574 |goto Stormwind City 67.6,72.8 |only if rep("Stormwind")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("DarnTabard",[[
		talk Moon Priestess Lasara##50305 |only if rep("Darnassus")<Exalted
		buy 1 Darnassus Tabard##45579 |goto Darnassus 36.6,49.0 |only if rep("Darnassus")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("ExTabard",[[
		talk Kadu##50306 |only if rep("Exodar")<Exalted
		buy 1 Exodar Tabard##45580 |goto The Exodar 54.6,36.8 |only if rep("Exodar")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("GnomTabard",[[
		talk Master Tinker Trini##50308 |only if rep("Gnomeregan")<Exalted
		buy 1 Gnomeregan Tabard##45578 |goto Ironforge 56.2,49.0 |only if rep("Gnomeregan")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("IFTabard",[[
		talk Captain Stonehelm##50309 |only if rep("Ironforge")<Exalted
		buy 1 Ironforge Tabard##45577 |goto Ironforge 55.8,47.8 |only if rep("Ironforge")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("GilTabard",[[
		talk Lord Candren##50307 |only if rep("Gilneas")<Exalted
		buy 1 Gilneas Tabard##64882 |goto Darnassus 37.0,47.8 |only if rep("Gilneas")<Exalted
]])