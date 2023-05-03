local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.transit = {

---------------------
---------------------
----   PORTALS   ----
---------------------
---------------------

	--------------------------------
	-----     DRAGONFLIGHT     -----
	--------------------------------

	-----------------
	-- THALDRASZUS --
	-----------------
	--## ALLIANCE ##--

		-- Valdrakken -to- Stormwind City
		"Valdrakken/0 59.79,41.71 -to- Stormwind City/0 46.37,90.28 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind\ninside the Building} "..
			"{cond:PlayerCompletedQuest(66244)}",

	--## HORDE ##--

		-- Valdrakken -to- Orgrimmar
		"Valdrakken/0 56.59,38.26 -to- Orgrimmar/1 56.25,90.27 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar\ninside the Building} "..
			"{cond:PlayerCompletedQuest(66244)}",

	--## Neutral ##--

		-- Valdrakken -to- Shadowmoon Valley
		"Valdrakken/0 53.56,55.00 -to- Shadowmoon Valley D/0 50.50,35.40 {mode:PORTAL} {title:Click the Portal to Shadowmoon Valley}",

		-- Valdrakken -to- Dalaran
		"Valdrakken/0 53.97,55.64 -to- Dalaran/1 56.25,90.27 {mode:PORTAL}",

		-- Valdrakken -to- Jade Forest
		"Valdrakken/0 54.06,54.57 -to- The Jade Forest/0 44.66,67.12 {mode:PORTAL} {title:Click the Portal to Jade Forest}",

	--------------------
	-- THE AZURE SPAN --
	--------------------
	--## ALLIANCE ##--

	--## HORDE ##--

	--## Neutral ##--

		-- Camp Nowhere Coast, The Azure Span -to- Iskaara, The Azure Span (Instant teleport boat)
		"The Azure Span/0 73.67,70.52 -to- The Azure Span/0 13.84,50.47 {mode:PORTAL} {title:Click the Boat\nto Iskaara}",

	-------------------------------
	-----     SHADOWLANDS     -----
	-------------------------------

	------------
	-- ORIBOS --
	------------
	--## ALLIANCE ##--

		-- Oribos	-to-		Stormwind City
		"Oribos/0 20.86,45.67 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind} "..
			"{cond:PlayerCompletedQuest(60151)}",

		-- Stormwind City	-to-		Oribos
		"Stormwind City/0 47.56,94.96 <region:magetower> -to- Oribos/0 20.34,50.31 {fac:A} {mode:PORTAL} {title:Click the Portal to Oribos\nInside the Portal Room} "..
			"{cond:PlayerCompletedQuest(60151)}",


	--## HORDE ##--

		-- Oribos	-to-		Orgrimmar
		"Oribos/0 20.85,54.77 -to- Orgrimmar/1 56.25,90.27 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar} "..
			"{cond:PlayerCompletedQuest(60151)}",

		-- Orgrimmar	-to-		Oribos
		"Orgrimmar/1 58.32,87.85 -to- Oribos/0 20.34,50.31 {fac:H} {mode:PORTAL} {title:Click the Portal to Oribos\nInside the Portal Room} "..
			"{cond:PlayerCompletedQuest(60151)}",


	--## Neutral ##--
		-- Oribos -to- Zereth Mortis
		"Oribos/1 49.59,25.44 -to- Zereth Mortis/0 33.27,69.43 {mode:PORTAL} {title:Walk Into the Yellow Portal} "..
			"{cond:PlayerCompletedQuest(64957)}",

		-- Zereth Mortis -to- Oribos
		"Zereth Mortis/0 32.87,69.77 -to- Oribos/1 49.55,30.04 {mode:PORTAL} {title:Click the Ancient Waystone} "..
			"{cond:PlayerCompletedQuest(64957)}",

		-- Oribos -to- Zereth Mortis (Prior to opening portal)
		"Oribos/0 38.88,70.00 -to- Zereth Mortis/0 33.27,69.43 {mode:PORTAL} {title:Talk to Tal-Inara\nTell her |cfff0e081\"I am ready to go.\"|r} "..
			"{cond:PlayerCompletedQuest(64944) and not PlayerCompletedQuest(64957)}",

		-- Oribos Transport Portal (Downstairs to Upstairs) #1
		"Oribos/0 52.08,57.92 -to- Oribos/1 49.52,60.92 {mode:PORTAL} {cost:1} {title:Click the Ring of Transference\nto Teleport Upstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Downstairs to Upstairs) #2
		"Oribos/0 52.10,42.74 -to- Oribos/1 49.38,42.00 {mode:PORTAL} {cost:1} {title:Click the Ring of Transference\nto Teleport Upstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Downstairs to Upstairs) #3
		"Oribos/0 57.14,50.36 -to- Oribos/1 55.66,51.62 {mode:PORTAL} {cost:1} {title:Click the Ring of Transference\nto Teleport Upstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Downstairs to Upstairs) #3
		"Oribos/0 47.02,50.34 -to- Oribos/1 43.38,51.56 {mode:PORTAL} {cost:1} {title:Click the Ring of Transference\nto Teleport Upstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Upstairs to Downstairs) #1
		"Oribos/1 49.55,60.85 -to- Oribos/0 52.07,57.86 {mode:PORTAL} {cost:1} {title:Click the Ring of Fates\nto Teleport Downstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Upstairs to Downstairs) #2
		"Oribos/1 49.56,42.35 -to- Oribos/0 52.10,42.44 {mode:PORTAL} {cost:1} {title:Click the Ring of Fates\nto Teleport Downstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Upstairs to Downstairs) #3
		"Oribos/1 55.68,51.59 -to- Oribos/0 57.14,50.36 {mode:PORTAL} {cost:1} {title:Click the Ring of Fates\nto Teleport Downstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos Transport Portal (Upstairs to Downstairs) #4
		"Oribos/1 43.44,51.57 -to- Oribos/0 47.12,50.30 {mode:PORTAL} {cost:1} {title:Click the Ring of Fates\nto Teleport Downstairs} "..
			"{cond:PlayerCompletedQuest(60154)}",

		-- Oribos	-to-		The Maw
		"Oribos/1 49.27,50.88 -to- The Maw/0 44.95,40.99 {mode:PORTAL} {cost:15} {title:Jump into the Soul Pillar of Light\nin the Center of the Room\nto Travel to the Maw} ",--..
			--"{cond:PlayerCompletedQuest(59874)}",


		-- Oribos to Bastion (pre-taxi)
		"Oribos/1 60.86,68.36 -to- Bastion/0 37.85,76.52    {mode:PORTAL} {cost:53} {title:Talk to Pathscribe Roh-Avonavi\nTell him 'I need to get back to Bastion.'}    {cond:PlayerCompletedQuest(60156) and not ZGV.Parser.ConditionEnv.achieved(14281)}", -- went to Bas, not completed it yet
		-- Oribos to Revendreth (pre-taxi)
		"Oribos/1 60.86,68.36 -to- Revendreth/0 70.00,84.00 {mode:PORTAL} {cost:53} {title:Talk to Pathscribe Roh-Avonavi\nTell him 'I need to get back to Revendreth.'} {cond:PlayerCompletedQuest(57025) and not ZGV.Parser.ConditionEnv.achieved(13878)}", -- went to Rev, not completed it yet
		-- Oribos to Ardenweald (pre-taxi)
		"Oribos/1 60.86,68.36 -to- Ardenweald/0 68.00,18.00 {mode:PORTAL} {cost:53} {title:Talk to Pathscribe Roh-Avonavi\nTell him 'I need to get back to Ardenweald.'} {cond:PlayerCompletedQuest(60338) and not ZGV.Parser.ConditionEnv.achieved(14164)}", -- went to Ard, not completed it yet
		-- Oribos to Maldraxxus (pre-taxi)
		"Oribos/1 60.86,68.36 -to- Maldraxxus/0 50.00,41.00 {mode:PORTAL} {cost:53} {title:Talk to Pathscribe Roh-Avonavi\nTell him 'I need to get back to Maldraxxus.'} {cond:PlayerCompletedQuest(57386) and not ZGV.Parser.ConditionEnv.achieved(14206)}", -- went to Mal, not completed it yet


	-------------
	-- BASTION --
	-------------
	--## Neutral ##--

		-- Transport Pad (Enter the Vault of the Archon)
		"Bastion/0 54.32,64.04 -to- Bastion/0 57.80,67.00 {mode:PORTAL} {title:Click the Transport Pad to\nEnter the Vault of the Archon} "..
			"{cond:PlayerCompletedQuest(60013)}",

		-- Transport Pad (Leave the Vault of the Archon)
		"Bastion/0 57.70,67.17 -to- Bastion/0 54.36,64.15 {mode:PORTAL} {title:Click the Transport Pad Inside\nthe Building to Leave the Vault\nof the Archon} "..
			"{cond:PlayerCompletedQuest(60013)}",

		-- The Eonian Archives (Entering the Eonian Archivies)
		"Bastion/0 41.67,23.32 -to- Bastion/0 40.49,20.95 <region:eonian_archives_floatisle> {mode:PORTAL} {title:Click the Transport Pad\nto Enter the Eonian Archives} "..
			"{cond:not PlayerCompletedQuest(63893)}",

		-- The Eonian Archives (Leaving the Eonian Archivies)
		"Bastion/0 40.57,21.10 <region:eonian_archives_floatisle> -to- Bastion/0 41.73,23.45 {mode:PORTAL} {title:Click the Transport Pad\nto Leave the Eonian Archives}"..
			"{cond:not PlayerCompletedQuest(63893)}",

		-- Hero's Rest Anima Gateway #1 (Leaving Hero's Rest)
		"Bastion/0 53.30,44.90 <region:heros_rest> -to- Bastion/0 52.99,37.84 {cost:1} {mode:PORTAL} {title:Click the Anima Gateway\nto Leave Hero's Rest} "..
			"{cond:(PlayerCompletedQuest(59196) or PlayerIsOnQuest(59196)) and not PlayerCompletedQuest(63893)}",

		-- Hero's Rest Anima Gateway #1 (Entering Hero's Rest)
		"Bastion/0 52.99,38.02 -to- Bastion/0 53.21,45.03 <region:heros_rest> {cost:1} {mode:PORTAL} {title:Click the Anima Gateway\nto Enter Hero's Rest} "..
			"{cond:(PlayerCompletedQuest(59196) or PlayerIsOnQuest(59196)) and not PlayerCompletedQuest(63893)}",

		-- Hero's Rest Anima Gateway #2 (Leaving Hero's Rest)
		"Bastion/0 53.34,48.64 <region:heros_rest> -to- Bastion/0 56.11,52.91 {cost:1} {mode:PORTAL} {title:Click the Anima Gateway\nto Leave Hero's Rest} "..
			"{cond:(PlayerCompletedQuest(59196) or PlayerIsOnQuest(59196)) and not PlayerCompletedQuest(63893)}",

		-- Hero's Rest Anima Gateway #2 (Entering Hero's Rest)
		"Bastion/0 55.98,52.76 -to- Bastion/0 53.26,48.52 <region:heros_rest> {cost:1} {mode:PORTAL} {title:Click the Anima Gateway\nto Enter Hero's Rest} "..
			"{cond:(PlayerCompletedQuest(59196) or PlayerIsOnQuest(59196)) and not PlayerCompletedQuest(63893)}",

		-- Hero's Rest Anima Gateway #3 (Leaving Hero's Rest)
		"Bastion/0 50.55,46.80 <region:heros_rest> -to- Bastion/0 46.86,49.16 {cost:1} {mode:PORTAL} {title:Click the Anima Gateway\nto Leave Hero's Rest} "..
			"{cond:(PlayerCompletedQuest(59196) or PlayerIsOnQuest(59196)) and not PlayerCompletedQuest(63893)}",

		-- Hero's Rest Anima Gateway #3 (Entering Hero's Rest)
		"Bastion/0 46.95,48.91 -to- Bastion/0 50.71,46.79 <region:heros_rest> {cost:1} {mode:PORTAL} {title:Click the Anima Gateway\nto Enter Hero's Rest} "..
			"{cond:(PlayerCompletedQuest(59196) or PlayerIsOnQuest(59196)) and not PlayerCompletedQuest(63893)}",


	------------------
	-- ELYSIAN HOLD --
	------------------
	--## Neutral ##--

		-- Elysian Hold, Bastion -to- Oribos, The Shadowlands --
		"Elysian Hold/0 48.82,64.79 -to- Oribos/1 44.68,58.91 {mode:PORTAL} "..
			"{cond:covenant('Kyrian') and covenantnetwork() == 3}",

		-- Elysian Hold (Tamed Larion), Bastion -x- Oribos, The Shadowlands --
		"Elysian Hold/0 41.17,71.10 -x- Bastion/0 58.73,28.96 {mode:PORTAL} {title:Click the |cfff0e081\"Tamed Larion\"|r} "..
			"{cond:covenant('Kyrian') and PlayerLevel() >= 60}",

		-- Elysian Hold (Tamed Larion), Bastion -x- Everdrawn Commons (Tamed Larion), Bastion --
		"Elysian Hold/0 63.00,93.81 -x- Bastion/0 67.90,27.34 {mode:PORTAL} {title:Click the |cfff0e081\"Tamed Larion\"|r} "..
			"{cond:covenant('Kyrian') and PlayerLevel() >= 60}",

		-- Elysian Hold (Tamed Larion), Bastion -x- Fate's Precipice (Tamed Larion), Bastion --
		"Elysian Hold/0 22.38,29.10 -x- Bastion/0 59.00,11.63 {mode:PORTAL} {title:Click the |cfff0e081\"Tamed Larion\"|r} "..
			"{cond:covenant('Kyrian') and PlayerLevel() >= 60}",

		-- Elysian Hold , Bastion -x- Ascension Coliseum, Bastion --
		"Elysian Hold/0 28.18,42.34 -to- Ascension Coliseum/0 70.08,23.15 {mode:PORTAL} {title:Talk to |cfff0e081Artemede|r and tell her\n|cfff0e081\"We are ready to Challenge the\nPath of Ascension.\"|r} "..
			"{cond:covenant('Kyrian') and PlayerCompletedQuest(60496) or PlayerIsOnQuest(60496)}",

		-- Ascension Coliseum, Bastion -x- Elysian Hold , Bastion --
		"Ascension Coliseum/0 69.86,17.87 -to- Elysian Hold/0 29.79,41.85 {mode:PORTAL} {title:Talk to |cfff0e081Adrianos|r and tell him\n|cfff0e081\"Return me to Elysian Hold.\"|r} "..
			"{cond:covenant('Kyrian') and PlayerCompletedQuest(60496) or PlayerIsOnQuest(60496)}",



	----------------
	-- MALDRAXXUS --
	----------------
	--## Neutral ##--

		-- Necropolis Teleporter (Entering the Vortrexxis)
		"Maldraxxus/0 37.99,66.96 -to- Maldraxxus/0 37.10,67.69 <region:vortrexxis> {mode:PORTAL} {title:Click the Necropolis Teleporter to\nEnter the Vortrexxis} "..
			"{cond:PlayerCompletedQuest(60453)}",

		-- Necropolis Teleporter (Leaving the Vortrexxis)
		"Maldraxxus/0 37.13,67.56 <region:vortrexxis> -to- Maldraxxus/0 38.06,66.83  {mode:PORTAL} {title:Click the Necropolis Teleporter to\nLeave the Vortrexxis} "..
			"{cond:PlayerCompletedQuest(60453)}",

		-- Seat of the Primus, Maldraxxus -to- Overlook, Seat of the Primus, Maldraxxus --
		"Seat of the Primus/0 58.82,22.95 -to- Maldraxxus/0 50.39,73.42 {mode:PORTAL} {title:Click the Portal to Overlook, Seat of the Primus} "..
			"{cond:covenantnetwork() >= 1 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Overlook, Seat of the Primus, Maldraxxus -to- Main Hall, Seat of the Primus, Maldraxxus --
		"Maldraxxus/0 50.40,73.99 -to- Seat of the Primus/0 58.71,25.85 {mode:PORTAL} {title:Click the Portal to Main Hall, Seat of the Primus} "..
			"{cond:covenantnetwork() >= 1 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Seat of the Primus, Maldraxxus -to- Sixfold Recluse, House of Constructs, Maldraxxus --
		"Seat of the Primus/0 56.44,37.02 -to- Maldraxxus/0 26.08,43.01 {mode:PORTAL} {title:Click the Portal to Sixfold Recluse, House of Constructs} "..
			"{cond:covenantnetwork() >= 2 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Sixfold Recluse, House of Constructs, Maldraxxus -to- Main Hall, Seat of the Primus, Maldraxxus --
		"Maldraxxus/0 25.86,43.27 -to- Seat of the Primus/0 58.71,25.85 {mode:PORTAL} {title:Click the Portal to Main Hall, Seat of the Primus} "..
			"{cond:covenantnetwork() >= 2 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Seat of the Primus, Maldraxxus -to- Nurakkir, House of Eyes, Maldraxxus --
		"Seat of the Primus/0 61.62,37.75 -to- Maldraxxus/0 51.14,16.37 {mode:PORTAL} {title:Click the Portal to Nurakkir, House of Eyes} "..
			"{cond:covenantnetwork() >= 1 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Nurakkir, House of Eyes, Maldraxxus -to- Seat of the Primus, Maldraxxus --
		"Maldraxxus/0 51.64,16.39 -to- Seat of the Primus/0 58.92,34.24 {mode:PORTAL} {title:Click the Portal to Seat of the Primus} "..
			"{cond:covenantnetwork() >= 1 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Seat of the Primus, Maldraxxus -to- Zerekriss, Maldraxxus (CONSTANTLY MOVES) --
		--"Seat of the Primus/0 62.87,34.27 -to- Maldraxxus/0 28.97,44.65 {mode:PORTAL} {title:Click the Portal to Zerekriss: Maldraxxus} "..
			--"{cond:covenantnetwork() >= 2 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Zerekriss, Maldraxxus -to- Seat of the Primus, Maldraxxus (CONSTANTLY MOVES) --
		--"Maldraxxus/0 28.62,44.69 -to- Seat of the Primus/0 58.92,34.24 {mode:PORTAL} {title:Click the Portal to Seat of the Primus} "..
			--"{cond:covenantnetwork() >= 2 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Seat of the Primus, Maldraxxus -to- Exoramas, House of Rituals, Maldraxxus --
		"Seat of the Primus/0 61.58,30.50 -to- Maldraxxus/0 74.27,33.64 {mode:PORTAL} {title:Click the Portal to Exoramas, House of Rituals} "..
			"{cond:covenantnetwork() >= 3 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Exoramas, House of Rituals, Maldraxxus -to- Seat of the Primus, Maldraxxus --
		"Maldraxxus/0 74.46,33.64 -to- Seat of the Primus/0 58.92,34.24 {mode:PORTAL} {title:Click the Portal to Seat of the Primus} "..
			"{cond:covenantnetwork() >= 3 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Seat of the Primus, Malxraxxus -to- Oribos --
		"Seat of the Primus/0 56.38,31.48 -to- Oribos/1 44.68,58.91 {mode:PORTAL} "..
			"{cond:covenantnetwork() >= 3 and covenant('Necrolord') and PlayerCompletedQuest(63059)}",

		-- Seat of the Primus, Maldraxxus -to- Zerekriss, The Maw --
		"Seat of the Primus/0 62.98,34.28 -to- The Maw/0 43.28,58.58 <region:zerekriss> {mode:PORTAL} {title:Click the Portal to Zerekriss, The Maw} "..
			"{cond:covenantnetwork() >= 2 and QuestActiveOrComplete(63543) and covenant('Necrolord')}",

		-- Zerekriss, The Maw -to- Seat of the Primus, Maldraxxus --
		"The Maw/0 43.45,58.40 <region:zerekriss> -to- Seat of the Primus/0 58.92,34.24 {mode:PORTAL} {title:Click the Portal to Seat of the Primus} "..
			"{cond:covenantnetwork() >= 2 and QuestActiveOrComplete(63543) and covenant('Necrolord')}",

		-- Zerekriss, The Maw -to- Ground Level, The Maw --
		"The Maw/0 40.94,59.03 <region:zerekriss> -to- The Maw/0 33.84,54.83 {mode:PORTAL} {title:Click Twigin and Glide Around The Maw} "..
			"{cond:covenantnetwork() >= 2 and QuestActiveOrComplete(63543) and covenant('Necrolord')}",

		-- Necrolord Assault Front, The Maw -to- Zerekriss, The Maw --
		"The Maw/0 33.72,54.84 -to- The Maw/0 41.12,58.70 <region:zerekriss> {mode:PORTAL} {title:Click Twigin} "..
			"{cond:covenantnetwork() >= 2 and QuestActiveOrComplete(63543) and covenant('Necrolord')}",

	----------------
	-- ARDENWEALD --
	----------------
	--## Neutral ##--

		-- Ardenweald to Oribos (Portal non-existent on live)
		--"Ardenweald/0 68.35,17.27 -to- Oribos/0 20.38,50.33 {mode:PORTAL} {title:Click the Portal to Oribos} "..
			--"{cond:PlayerCompletedQuest(60338)}",



	-------------------------
	-- HEART OF THE FOREST --
	-------------------------
	--## Neutral ##--
		-- Winter Queen's Audience Chamber (Entering)
		"Heart of the Forest/0 53.69,38.26 -to- Heart of the Forest/2 43.94,60.67 {mode:PORTAL} {title:Talk to Attendant Sparkledew to\nEnter the Queen's Audience Chamber} "..
			"{cond:PlayerCompletedQuest(58160)}",

		-- Winter Queen's Audience Chamber (Leaving)
		"Heart of the Forest/2 36.12,63.68 -to- Heart of the Forest/0 53.96,38.73 {mode:PORTAL} {title:Talk to Attendant Shimmerwing to\nLeave the Queen's Audience Chamber} "..
			"{cond:PlayerCompletedQuest(58160)}",

		-- Heart of the Forest, Ardenweald -to- Fungal Terminus, Ardenweald
		"Heart of the Forest/1 55.29,26.63 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Heart of the Forest, Ardenweald
		"Fungal Terminus/0 58.81,62.18 -to- Heart of the Forest/1 55.33,27.40 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to the Heart of the Forest\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Forest's Edge, Ardenweald (Only one-way currently)
		"Fungal Terminus/0 41.97,61.14 -to- Ardenweald/0 65.73,60.26 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Forest's Edge\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Forest's Edge, Ardenweald -to- Fungal Terminus, Ardenweald (Bugged)
		"Ardenweald/0 65.73,60.26 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- The Stalks, Ardenweald (Rank 1 Night Fae Transport)
		"Fungal Terminus/0 41.47,40.07 -to- Ardenweald/0 29.51,34.63 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse To the Stalks\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- The Stalks, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 1 Night Fae Transport)
		"Ardenweald/0 29.50,34.61 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Stillglade, Ardenweald (Rank 1 Night Fae Transport)
		"Fungal Terminus/0 56.45,37.37 -to- Ardenweald/0 57.50,42.59 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Stillglade\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Stillglade, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 1 Night Fae Transport)
		"Ardenweald/0 57.49,42.63 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 1 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Gormhive, Ardenweald (Rank 2 Night Fae Transport)
		"Fungal Terminus/0 52.69,67.91 -to- Ardenweald/0 53.28,79.06 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Gormhive\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 2 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Gormhive, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 2 Night Fae Transport)
		"Ardenweald/0 53.28,79.04 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 2 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Banks of Life, Ardenweald (Rank 2 Night Fae Transport)
		"Fungal Terminus/0 38.65,48.02 -to- Ardenweald/0 49.39,27.55 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to the Banks of Life\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 2 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Banks of Life, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 2 Night Fae Transport)
		"Ardenweald/0 49.39,27.55 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 2 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Elder Stand, Ardenweald (Rank 2 Night Fae Transport)
		"Fungal Terminus/0 51.80,35.59 -to- Ardenweald/0 26.44,51.25 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Elder Stand\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 2 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Elder Stand, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 2 Night Fae Transport)
		"Ardenweald/0 26.45,51.25 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() >= 2 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Crumbled Ridge, Ardenweald (Rank 3 Night Fae Transport)
		"Fungal Terminus/0 45.79,66.38 -to- Ardenweald/0 73.69,25.22 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Crumbled Ridge\"|r ability on-screen} "..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Crumbled Ridge, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 3 Night Fae Transport)
		"Ardenweald/0 73.72,25.21 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Eventide Grove, Ardenweald (Rank 3 Night Fae Transport)
		"Fungal Terminus/0 46.87,35.40 -to- Ardenweald/0 41.09,69.54 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Eventide Grove\"|r ability on-screen} "..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Eventide Grove, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 3 Night Fae Transport)
		"Ardenweald/0 41.11,69.53 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Fungal Terminus, Ardenweald -to- Tirna Scithe, Ardenweald (Rank 3 Night Fae Transport)
		"Fungal Terminus/0 58.78,43.56 -to- Ardenweald/0 20.28,66.95 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to Tirna Scithe\"|r ability on-screen} "..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Tirna Scithe, Ardenweald -to- Fungal Terminus, Ardenweald (Rank 3 Night Fae Transport)
		"Ardenweald/0 20.29,66.96 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Heart of the Forest, Ardenweald -to- Oribos, The Shadowlands (Rank 3 Night Fae Transport)
		"Heart of the Forest/1 59.90,28.47 -to- Oribos/1 44.68,58.91 {mode:PORTAL}"..
			"{cond:covenantnetwork() == 3 and covenant('NightFae') and PlayerCompletedQuest(57583)}",

		-- Heart of the Forest, Ardenweald -to- Queen's Conservatory, Heart of the Forest
		"Heart of the Forest/1 57.33,65.57 -to- Queen's Conservatory/0 73.47,48.05 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to the Queen's Conservatory\"|r ability on-screen} "..
			"{cond:covenant('NightFae') and PlayerCompletedQuest(63046)}",

		-- Queen's Conservatory, Heart of the Forest -to- Heart of the Forest, Ardenweald
		"Queen's Conservatory/0 73.47,48.05 -to- Heart of the Forest/1 57.33,65.57 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse from the Queen's Conservatory\"|r ability on-screen} "..
			"{cond:covenant('NightFae') and PlayerCompletedQuest(63046)}",

	----------------
	-- REVENDRETH --
	----------------
	--## Neutral ##--

		-- Sanctuary of the Mad (Sinfall), Revendreth -x- The Shrouded Asylum, Revendreth
		"Revendreth/0 31.98,46.70 -x- Revendreth/0 24.84,50.28 {mode:PORTAL} {title_atob:Walk into the Red Swirling Portal\nto the Ember Ward Downstairs\nInside the Building} "..
			"{title_btoa:Walk into the Red Swirling Portal\nto the Sanctuary of the Mad} {cond:PlayerCompletedQuest(57536)}",

		-- Sinfall (Entering)
		"Revendreth/0 29.35,42.67 -to- Sinfall/0 23.65,57.06 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nDownstairs Inside the Building} "..
			"{cond:PlayerCompletedQuest(59327)}",

		-- Sinfall (Leaving)
		"Sinfall/0 17.70,61.34 -to- Revendreth/0 29.57,42.53 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:PlayerCompletedQuest(59327)}",

		-- Redelav Tower (Entering)
		"Revendreth/0 58.73,30.29 -to- Revendreth/0 57.42,28.60 <region:redelav_tower> {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building to\nEnter Redelav Tower} "..
			"{cond:PlayerCompletedQuest(57885)}",

		-- Redelav Tower (Leaving)
		"Revendreth/0 57.38,28.67 <region:redelav_tower> -to- Revendreth/0 58.91,30.34 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building to\nLeave Redelav Tower} "..
			"{cond:PlayerCompletedQuest(57885)}",

		-- Spire of the Unseen Guests (Ember Court) (Entering)
		"Revendreth/0 27.93,43.05 -to- Ember Court/0 33.76,47.29 {mode:PORTAL} {title:Talk to Temel and say\n|cfff0e081\"Open the Ember Court.\"|r} "..
			"{cond:covenant('Venthyr')}",



	-------------
	-- THE MAW --
	-------------
	--## Neutral ##--

		-- Waystone to Oribos --
		"The Maw/0 42.38,42.16 -to- Oribos/0 19.24,50.31 {mode:PORTAL} {title:Click the Waystone to Oribos\nto Return to Oribos} "..
			"{cond:PlayerCompletedQuest(59874)}",

		-- Portal to Torghast --
		"The Maw/0 48.20,39.39 -to- Torghast/0 16.29,47.08 {mode:PORTAL} {title:Enter the Portal to Torghast} "..
			"{cond:PlayerCompletedQuest(60136)}",

		-- Animaflow Transporter -to- The Tremaculum --
		"The Maw/0 48.29,41.45 -to- The Maw/0 34.19,14.73 {mode:PORTAL} {title:Talk to the Animaflow Teleporter\nChoose |cfff0e081\"The Tremaculum\"|r} "..
			"{cond:PlayerCompletedQuest(61600)}",

		-- Animaflow Transporter -to- The Beastwarrens --
		"The Maw/0 48.29,41.45 -to- The Maw/0 53.42,63.64 {mode:PORTAL} {title:Talk to the Animaflow Teleporter\nChoose |cfff0e081\"The Beastwarrens\"|r} "..
			"{cond:PlayerCompletedQuest(61600) and PlayerCompletedQuest(60285)}",

		-- Animaflow Transporter -to- Perdition Hold --
		"The Maw/0 48.29,41.45 -to- The Maw/0 33.94,56.78 {mode:PORTAL} {title:Talk to the Animaflow Teleporter\nChoose |cfff0e081\"Perdition Hold\"|r} "..
			"{cond:PlayerCompletedQuest(61600) and PlayerCompletedQuest(60284)}",

		-- Perdition Hold -x- Desmotaeron --
		"The Maw/0 33.89,56.71 -x- The Maw/0 68.78,36.80 {mode:PORTAL} {title:Click the Chatoic Riftstone\nChoose |cfff0e081\"Yes\"|r} "..
			"{cond:PlayerCompletedQuest(61600) and PlayerCompletedQuest(60284)}",

		-- Animaflow Transporter -to- Desmotaeron --
		"The Maw/0 48.29,41.45 -to- The Maw/0 68.89,36.60 {mode:PORTAL} {title:Talk to the Animaflow Teleporter\nChoose |cfff0e081\"Desmotaeron\"|r} "..
			"{cond:PlayerCompletedQuest(61600) and ZGV.Parser.ConditionEnv.achieved(15126)}",

		-- Crucible of the Damned, The Maw -x- The Tremaculum --
		"The Maw/0 19.16,47.73 -x- The Maw/0 25.18,17.88 {mode:PORTAL} {title:Click the Chatoic Riftstone\nChoose |cfff0e081\"Yes\"|r} "..
			"{cond:PlayerCompletedQuest(61600)}",

		-- Calcis, The Maw -x- Zovaal's Cauldron --
		"The Maw/0 23.48,31.23 -x- The Maw/0 34.81,43.69 {mode:PORTAL} {title:Click the Chatoic Riftstone\nChoose |cfff0e081\"Yes\"|r} "..
			"{cond:PlayerCompletedQuest(61600)}",

		-- Night Fae Assault Transport --
		"The Maw/0 43.53,39.91 -to- The Maw/0 22.41,43.09 {mode:PORTAL} {title:Click the Night\nFae Runestag} "..
			"{cond:QuestActiveOrComplete(63823)}",

		-- Fungal Terminus, Ardenweald -to- The Maw, Shadowlands --
		"Fungal Terminus/0 54.98,53.13 -to- The Maw/0 22.94,43.90 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to the Maw\"|r ability on-screen} "..
			"{cond:QuestActiveOrComplete(63823) and covenant('NightFae') and covenantnetwork() >= 1}",

		-- The Maw, Shadowlands -to- Fungal Terminus, Ardenweald --
		"The Maw/0 23.01,44.03 -to- Fungal Terminus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			"{cond:QuestActiveOrComplete(63823) and covenant('NightFae') and covenantnetwork() >= 1}",

		-- Venthyr Assault Transport --
		"The Maw/0 43.53,39.91 -to- The Maw/0 35.0,26.8 {mode:PORTAL} {title:Click the Venthyr\nSinrunner} "..
			"{cond:QuestActiveOrComplete(63822)}",

		-- Sinfall, Revendreth -to- The Maw, Shadowlands --
		"Sinfall/0 38.16,61.06 -to- The Maw/0 29.75,18.42 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:QuestActiveOrComplete(63822) and covenant('Venthyr') and covenantnetwork() >= 1}",

		-- The Maw, Shadowlands -to- Sinfall, Revendreth --
		"The Maw/0 29.69,18.27 -to- Sinfall/0 37.98,59.26 {mode:PORTAL} {title:Walk into the Red Swirling Portal} "..
			"{cond:QuestActiveOrComplete(63822) and covenant('Venthyr') and covenantnetwork() >= 1}",

		-- Necrolords Assault Transport --
		"The Maw/0 43.53,39.90 -to- The Maw/0 33.87,55.15 {mode:PORTAL} {title:Click the Maldraxxi\nTauralus} "..
			"{cond:QuestActiveOrComplete(63543)}",

		-- Seat of the Primus, Maldraxxus -to- The Maw, Shadowlands --
		--"Seat of the Primus/0 54.98,53.13 -to- The Maw/0 22.94,43.90 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to the Maw\"|r ability on-screen} "..
			--"{cond:QuestActiveOrComplete(63543) and covenant('Necrolord')}",

		-- The Maw, Shadowlands -to- Seat of the Primus, Maldraxxus --
		--"The Maw/0 23.01,44.03 -to- Seat of the Primus/0 65.75,73.60 {mode:PORTAL} {title:Use the |cfff0e081\"Traverse to The Ring\"|r ability on-screen} "..
			--"{cond:QuestActiveOrComplete(63543) and covenant('Necrolord')}",

		-- Elysian Hold, Bastion -to- The Maw, Shadowlands --
		"Elysian Hold/0 46.54,66.79 -to- The Maw/0 42.55,43.77 {mode:PORTAL} {title:Click the\n|cfff0e081\"Anima Gateway\"|r} "..
			"{cond:QuestActiveOrComplete(63824) and covenant('Kyrian') and covenantnetwork() >= 1}",

		-- The Maw, Shadowlands -to- Elysian Hold, Bastion --
		"The Maw/0 42.37,43.66 -to- Elysian Hold/0 46.14,66.19 {mode:PORTAL} {title:Click the\n|cfff0e081\"Anima Gateway\"|r} "..
			"{cond:QuestActiveOrComplete(63824) and covenant('Kyrian') and covenantnetwork() >= 1}",



	-------------
	-- KORTHIA --
	-------------
	--## Neutral ##--

		-- Waystone -to- Oribos --
		"Korthia/0 64.47,24.06 -to- Oribos/1 37.40,33.44 {mode:PORTAL} {title:Click the Waystone to Oribos\nto Return to Oribos} "..
			"{cond:PlayerCompletedQuest(63665) and not PlayerIsOnQuest(63855)}",

		-- Waystone -to- Oribos --
		"Oribos/1 29.16,20.89 -to- Korthia/0 64.38,24.11 {mode:PORTAL} {title:Jump into the swirling black portal} "..
			"{cond:PlayerCompletedQuest(63665) and not PlayerIsOnQuest(63855)}",

		-- Korthia -to- Vault of Secrets, Korthia --
		"Korthia/0 60.84,28.55 -to- Korthia/0 49.14,63.88 <region:vault_of_secrets> {mode:PORTAL} {title:Click the Flayedwing Transporter}",

		-- Korthia -to- Vault of Secrets, Korthia --
		"Korthia/0 49.35,63.87 <region:vault_of_secrets> -to- Korthia/0 60.43,28.02 {mode:PORTAL} {title:Click the Flayedwing Transporter}",



	--------------
	-- TORGHAST --
	--------------
	--## Neutral ##--

		-- Exit Torghast to the Maw
		"Torghast/0 10.43,47.13 -to- The Maw/0 48.14,39.57 {mode:PORTAL} {title:Click Exit Torghast\nto Return to the Maw} "..
			"{cond:PlayerCompletedQuest(60136)}",

		-- Torghast	-to-		Runecarver's Cell
		"Torghast/0 15.95,62.04 -to- The Runecarver/0 50.68,68.81 {mode:PORTAL} {title:Enter the Portal\nto the Runecarver's Oubilette} "..
			"{cond:PlayerCompletedQuest(60267)}",

		-- Runecarver's Cell	-to-		Torghast
		"The Runecarver/0 50.33,81.96 -to- Torghast/0 16.09,57.84 {mode:PORTAL} {title:Enter the Portal\nto Torghast Antechamber} "..
			"{cond:PlayerCompletedQuest(60267)}",



	--------------------------------
	-- SINFALL (VENTHYR COVENANT) --
	--------------------------------
	--## Neutral ##--

		-- Sinfall (Upstairs to Downstairs)
		"Sinfall/0 36.55,48.19 -to- Sinfall/1 68.86,39.54 {cost:1} {mode:PORTAL} {title:Walk into the Red Portal\nInside the Building to\nTeleport Downstairs} ",

		-- Sinfall (Downstairs to Upstairs)
		"Sinfall/1 70.64,38.24 -to- Sinfall/0 37.91,47.23 {cost:1} {mode:PORTAL} {title:Walk into the Red Portal\nInside the Building to\nTeleport Upstairs} ",

		-- Sinfall Surface Flyer (Bat to fly out of Sinfall)
		"Sinfall/0 41.95,48.50 -to- Revendreth/0 29.62,42.51 {mode:PORTAL} {title:Click the Sinfall Surface Flyer\nto Fly Out of Sinfall} ",

		-- Sinfall Surface Flyer (Bat to fly out of Sinfall)
		"Sinfall/1 67.24,47.29 -to- Revendreth/0 29.62,42.51 {mode:PORTAL} {title:Click the Sinfall Surface Flyer\nto Fly Out of Sinfall} ",

		-- Sinfall, Revendreth -x- The Eternal Terrace, Revendreth --
		"Sinfall/0 46.08,49.50 -x- Revendreth/0 56.74,32.46 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:covenantnetwork() >= 1 and covenant('Venthyr') and PlayerCompletedQuest(60147)}",

		-- Sinfall, Revendreth -x- Pridefall Hamlet, Revendreth --
		"Sinfall/0 42.12,36.22 -x- Revendreth/0 70.76,75.48 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:covenantnetwork() >= 1 and covenant('Venthyr') and PlayerCompletedQuest(60060)}",

		-- Sinfall, Revendreth -x- Halls of Atonement, Revendreth --
		"Sinfall/1 63.57,53.53 -x- Revendreth/0 73.61,43.94 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:covenantnetwork() >= 2 and covenant('Venthyr') and PlayerCompletedQuest(60159)}",

		-- Sinfall, Revendreth -x- The Banewood, Revendreth --
		"Sinfall/1 58.26,36.49 -x- Revendreth/0 43.48,57.07 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:covenantnetwork() >= 2 and covenant('Venthyr') and PlayerCompletedQuest(60160)}",

		-- Sinfall, Revendreth -x- Dominance Keep, Revendreth --
		"Sinfall/1 81.05,48.97 -x- Revendreth/0 25.47,26.83 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:covenantnetwork() >= 3 and covenant('Venthyr') and PlayerCompletedQuest(60164)}",

		-- Sinfall, Revendreth -x- Feeder's Thicket, Revendreth --
		"Sinfall/1 71.85,19.77 -x- Revendreth/0 58.24,62.72 {mode:PORTAL} {title:Walk into the Red Swirling Portal\nInside the Building} "..
			"{cond:covenantnetwork() >= 3 and covenant('Venthyr') and PlayerCompletedQuest(60165)}",

		-- Sinfall, Revendreth -to- Oribos, The Shadowlands (Rank 3 Venthyr Transport)
		"Sinfall/0 62.44,26.59 -to- Oribos/1 44.68,58.91 {mode:PORTAL}"..
			"{cond:covenantnetwork() == 3 and covenant('Venthyr')}",


	--------------
	-- KALIMDOR --
	--------------

	--## ALLIANCE ##--

		-- Bashal'Aran - Darkshore, Kalimdor -to- Boralus Harbor - Boralus, Kul Tiras --
		"Darkshore/0 48.02,36.28 -to- Boralus/0 66.81,25.06 {fac:A} {mode:PORTAL} {title:Click the Portal to Boralus Harbor} "..
			"{cond:PlayerCompletedQuest(54871) and not ZGV.InPhase('Old Darnassus') and ZGV.InPhase('Warfront Darkshore Control')}",

		-- Caverns of Time - Tanaris, Kalimdor -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Tanaris/17 58.98,26.75 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind}",

		-- The Exodar - Azuremyst Isle, Kalimdor -to- Rut'theran Village - Darnassus, Kalimdor --CHECKED
		"Azuremyst Isle/0 20.40,54.17 -to- Teldrassil/0 52.38,89.47 {fac:A} {mode:PORTAL} {title:Click the Portal to Darnassus} "..
			"{cond:ZGV.InPhase('Old Darnassus')}",

		-- The Exodar - Azuremyst Isle, Kalimdor -to- Darkshore, Kalimdor --CHECKED
		"Azuremyst Isle/0 20.40,54.17 -to- Darkshore/0 45.95,18.74 {fac:A} {mode:PORTAL} {title:Click the Portal to Darkshore} "..
			"{cond:not ZGV.InPhase('Old Darnassus')}",

		-- The Exodar - Azuremyst Isle, Kalimdor -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --CHECKED
		"The Exodar/0 48.34,62.94 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound --CHECKED
		"Silithus/0 41.48,44.85 -to- Boralus/0 70.18,15.87 {fac:A} {mode:PORTAL} {title:Click the Portal to Tiragarde} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus') and PlayerLevel() >= 10}",

		-- Nordrassil - Mount Hyjal, Kalimdor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Mount Hyjal/0 62.62,23.12 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or PlayerLevel() >= 50}",

		-- Rut'theran Village - Darnassus, Kalimdor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Teldrassil/0 55.03,93.72 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Rut'theran Village - Darnassus, Kalimdor -to- The Exodar - Azuremyst Isle, Kalimdor --CHECKED
		"Teldrassil/0 52.27,89.47 -to- Azuremyst Isle/0 20.52,54.16 {mode:PORTAL} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Temple of the Moon - Darnassus, Kalimdor -to- The Exodar - Azuremyst Isle, Kalimdor --CHECKED
		"Darnassus/0 44.23,78.70 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Temple of the Moon - Darnassus, Kalimdor (Old Time) -to- Hellfire Peninsula, Outland (Portal Usable) --
		"Darnassus/0 43.99,78.18 -to- Hellfire Peninsula/0 89.17,50.86 {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 10 and ZGV.InPhase('Old Darnassus')}",

		-- Temple of the Moon - Darnassus, Kalimdor (Old Time) -to- Hellfire Peninsula, Outland (Portal Not Usable) --
		"Darnassus/0 43.99,78.18 <override_text:You must be at least 10 to enter Outland.> <override_icon:error> -to- Hellfire Peninsula/0 89.17,50.86 {fac:A} "..
			"{mode:PORTAL} {cond:not (PlayerLevel() >= 10 and ZGV.InPhase('Old Darnassus'))} {cost:999}",

	--## HORDE ##--

		-- Bashal'Aran - Darkshore, Kalimdor -to- Port of Zandalar - Zuldazar, Zandalar --CHECKED
		"Darkshore/0 46.24,35.11 -to- Dazar'alor/0 51.66,93.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Port of Zandalar} "..
			"{cond:PlayerCompletedQuest(54416) and not ZGV.InPhase('Old Darnassus') and ZGV.InPhase('Warfront Darkshore Control')}",

			-- Caverns of Time - Tanaris, Kalimdor -to- Orgrimmar - Durotar, Kalimdor --CHECKED
			"Tanaris/17 58.21,26.69 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Hall of Ancient Paths - Zuldazar, Zandalar --CHECKED
		"Silithus/0 41.61,45.20 -to- Dazar'alor/1 68.28,64.58 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus') and PlayerLevel() >= 10}",

		-- Northern Stranglethorn Vale, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --CHECKED
		"Northern Stranglethorn/0 37.54,50.99 -to- Undercity/0 84.58,16.33 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('Old Undercity')}",

		-- Northern Stranglethorn Vale, Kalimdor -to- Tirisfal Glades, Eastern Kingdoms (After Destruction) --CHECKED
		"Northern Stranglethorn/0 37.54,50.99 -to- Tirisfal Glades/0 69.30,62.75 {fac:H} {mode:PORTAL} {cond:not ZGV.InPhase('Old Undercity')}",

		-- Orgrimmar - Durotar, Kalimdor -to- Kelp'thar Forest - Vashj'ir, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 49.23,36.52 -to- Kelp'thar Forest/0 45.14,23.33 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25924) and not PlayerCompletedQuest(25222)}",

		-- Orgrimmar - Durotar, Kalimdor -to- Shimmering Expanse - Vashj'ir, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 49.23,36.52 -to- Shimmering Expanse/0 49.50,40.50 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(26784)}",

		-- Orgrimmar - Durotar, Kalimdor -to- Abyssal Depths - Vashj'ir, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 49.23,36.52 -to- Abyssal Depths/0 51.40,61.01 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",

		-- Orgrimmar - Durotar, Kalimdor -to- Ramkaehen - Uldum, Kalimdor --CHECKED
		"Orgrimmar/1 48.87,38.55 -to- Uldum/0 54.90,34.25 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or PlayerLevel() >= 50}",

		-- Orgrimmar - Durotar, Kalimdor -to- Ramkaehen - Uldum, Kalimdor Patch 8.3
		"Orgrimmar/1 48.87,38.55 -to- Uldum New/0 54.90,34.25 {fac:H} {mode:PORTAL} {cond:not ZGV.InPhase('OldUldum') and PlayerLevel() >= 10}",

		-- Orgrimmar - Durotar, Kalimdor -to- Temple of Earth - Deepholm, The Maelstrom --CHECKED
		"Orgrimmar/1 50.84,36.29 -to- Deepholm/0 50.59,52.94 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or PlayerLevel() >= 50}",

		-- Orgrimmar - Durotar, Kalimdor -to- Nordrassil - Mount Hyjal, Kalimdor --CHECKED
		"Orgrimmar/1 51.13,38.28 -to- Mount Hyjal/0 63.49,23.37 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or PlayerLevel() >= 50} "..
			"{title:Click the Portal to Hyjal}",

			-- Nordrassil - Mount Hyjal, Kalimdor -to- Orgrimmar - Durotar, Kalimdor --CHECKED
			"Mount Hyjal/0 63.48,24.43 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or PlayerLevel() >= 50}",

		-- Orgrimmar - Durotar, Kalimdor -to- Hellscream's Grasp - Tol Barad Peninsula, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 47.40,39.27 -to- Tol Barad Peninsula/0 55.78,80.06 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 30}",

		-- Orgrimmar - Durotar, Kalimdor -to- Dragonmaw Point - Twilight Highlands, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 50.22,39.44 -to- Twilight Highlands/0 73.63,53.39 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or PlayerLevel() >= 50}",

		-- Orgrimmar - Durotar, Kalimdor -x- Brawl'gar Arena - Orgrimmar, Kalimdor --CHECKED
		"Orgrimmar/1 70.57,30.92 -x- Brawl'gar Arena/1 55.53,14.28 {fac:H} {mode:PORTAL} {template:pinkportal}",

		-- Orgrimmar - Durotar, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 50.74,55.57 -to- Undercity/0 84.58,16.33 {fac:H} {mode:PORTAL} {title:Click the Portal to Undercity on Top of the Zeppelin Tower} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

			-- Orgrimmar - Durotar, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --CHECKED
			"Orgrimmar/1 50.74,55.57 -to- Tirisfal Glades/0 69.30,62.75 {fac:H} {mode:PORTAL} {title:Click the Portal to Undercity on Top of the Zeppelin Tower} "..
				"{cond:not ZGV.InPhase('Old Undercity')}",

		-- Orgrimmar - Durotar, Kalimdor -to- The Dark Portal - Blasted Lands, Eastern Kingdoms
		"Orgrimmar/1 57.16,90.71 -to- Blasted Lands/0 55.00,50.00 {fac:H} {mode:PORTAL} "..
			"{title:Talk to the Thrallmar Mage in the Portal Room\nTell him |cfff0e081\"I must report to the Dark Portal.\"|r}"..
			"{cond:not PlayerCompletedQuest(60123) and UnitChromieTimeID('player')==6}",

		-- Orgrimmar - Durotar, Kalimdor -to- The Dark Portal - Blasted Lands, Eastern Kingdoms
		"Orgrimmar/1 57.16,90.71 -to- Hellfire Peninsula/0 89.39,50.22 {fac:H} {mode:PORTAL} "..
			"{title:Talk to the Thrallmar Mage in the Portal Room\nTell him |cfff0e081\"I must report to the Dark Portal.\"|r}"..
			"{cond:not (not PlayerCompletedQuest(60123) and UnitChromieTimeID('player')==6)}",

		-- Orgrimmar - Durotar, Kalimdor -to- Crumbling Palace - Azsuna, Broken Isles --CHECKED
		"Orgrimmar/1 58.89,89.53 -to- Azsuna/0 47.00,40.89 {fac:H} {mode:PORTAL} {title:Click the Portal to Azsuna in the Portal Room} ",

		-- Orgrimmar - Durotar, Kalimdor -to- Caverns of Time - Tanaris, Kalimdor --CHECKED
		"Orgrimmar/1 56.40,92.56 -to- Tanaris/17 54.60,28.30 {fac:H} {mode:PORTAL} "..
			"{title:Click the Portal to Caverns of Time Downstairs Inside the Pathfinder's Den}",

		-- Orgrimmar - Durotar, Kalimdor -to- Warspear - Ashran, Draenor --CHECKED
		"Orgrimmar/1 55.18,92.05 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Warspear, Ashran Downstairs Inside the Pathfinder's Den}",

		-- Orgrimmar - Durotar, Kalimdor -to- Hall of Ancient Paths - Zuldazar, Zandalar --CHECKED
		"Orgrimmar/1 58.59,91.35 -to- Dazar'alor/1 71.96,82.78 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar in the Portal Room} "..
			"{cond:ZGV.InPhase('BFA')}",

		-- Orgrimmar - Durotar, Kalimdor -to- Shattrath City - Terokkar Forest, Outland (Portal Usable) --CHECKED
		"Orgrimmar/1 57.51,91.65 -to- Shattrath City/0 53.01,49.21 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 10} "..
			"{title:Click the Portal to Shattrath Downstairs Inside the Pathfinder's Den}",

		-- Orgrimmar - Durotar, Kalimdor -to- Shattrath City - Terokkar Forest, Outland (Portal Not Usable) --CHECKED
		"Orgrimmar/1 57.51,91.65 <override_text:You must be at least 10 to enter Outland.> <override_icon:error> -to- Shattrath City/0 53.01,49.21 "..
			"{fac:H} {mode:PORTAL} {cond:PlayerLevel() < 10} {cost:999}",

		-- Orgrimmar - Durotar, Kalimdor -to- Honeydew Village - The Jade Forest, Pandaria --CHECKED
		"Orgrimmar/1 57.47,92.27 -to- The Jade Forest/0 28.56,13.98 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(31769) or PlayerLevel() >= 40} "..
			"{title:Click the Portal to Jade Forest in the Portal Room}",

		-- Orgrimmar - Durotar, Kalimdor, Eastern Kingdoms -to- Valdrakken - Thaldraszus, Dragon Isles
		"Orgrimmar/1 57.11,87.30 -to- Valdrakken/0 59.55,41.46 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(66244)}"..
			"{title:Click the Portal to Valdrakken\nInside the Portal Room}",

		-- Orgrimmar - Durotar, Kalimdor -to- Silvermoon City - Everson Woods, Eastern Kingdoms --CHECKED
		"Orgrimmar/1 55.99,88.22 -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon in the Portal Room}",

			-- Silvermoon City - Everson Woods, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --CHECKED
			"Silvermoon City/0 58.54,18.66 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

		-- Orgrimmar - Durotar, Kalimdor -to- Dalaran - Crystalsong Forest, Northrend --CHECKED
		"Orgrimmar/1 56.23,91.74 -to- Dalaran/1 55.92,46.79 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran, Crystalsong Forest in the Portal Room}",

	--## NEUTRAL ##--

		-- Chamber of Heart - Silithus, Kalimdor -to- Horrific Vision of Orgrimmar --
		"Chamber of Heart/0 50.13,73.20 -to- Orgrimmar Vision/0 52.10,83.85 {mode:PORTAL} "..
			"{title:Click the Tenebrous Gateway and choose |cffaaffaaYes|r}",

			-- Horrific Vision of Orgrimmar -to- Chamber of Heart - Silithus, Kalimdor --
			"Orgrimmar Vision/0 52.05,85.47 -to- Chamber of Heart/0 48.71,68.43 {mode:PORTAL} "..
				"{title:Click the Tenebrous Gateway and choose |cffaaffaaYes|r}",

		-- Chamber of Heart - Silithus, Kalimdor -to- Horrific Vision of Stormwind --
		"Chamber of Heart/0 50.13,73.20 -to- Stormwind Vision/0 52.18,51.67 {mode:PORTAL} "..
			"{title:Click the Tenebrous Gateway and choose |cffaaffaaYes|r}",

			-- Horrific Vision of Stormwind -to- Chamber of Heart - Silithus, Kalimdor --
			"Stormwind Vision/0 52.18,51.67 -to- Chamber of Heart/0 48.71,68.43 {mode:PORTAL} "..
				"{title:Click the Tenebrous Gateway and choose |cffaaffaaYes|r}",

		-- Darnassus - Teldrassil, Kalimdor -x- Rut'theran Village - Teldrassil, Kalimdor --CHECKED
		"Darnassus/0 36.79,50.44 -x- Teldrassil/0 55.07,88.38 {mode:PORTAL} {template:pinkportal} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Chamber of the Heart - Silithus, Kalimdor --CHECKED
		"Silithus/0 43.20,44.50 -to- Chamber of Heart/0 50.22,35.92 {mode:PORTAL} {title:Click the Titan Translocator} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

			-- Zidormi Phase -to- Present Day Silithus --CHECKED
			"Silithus/0 78.93,21.97 -to- Chamber of Heart/0 50.22,35.92 {mode:PORTAL} {cond:ZGV.InPhase('BFA') and ZGV.InPhase('Old Silithus')} "..
				"{title:Talk to Zidormi\nAsk her |cfff0e081\"Can you return me to the present time?\"|r}",

			-- Chamber of the Heart - Silithus, Kalimdor -to- Magni's Encampment - Silithus, Kalimdor --CHECKED
			"Chamber of Heart/0 50.09,30.45 -to- Silithus/0 41.41,45.19 {mode:PORTAL} {title:Click the Titan Translocator} "..
				"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

			-- Magni's Encampment	 -to-	Chamber of the Heart
			"Silithus/0 43.20,44.50 -to- Chamber of Heart/1 50.22,35.92 {mode:PORTAL} {title:Click the Titan Translocator} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

		-- Nordune Ridge - Mount Hyjal, Kalimdor -to- The Molten Front - Mount Hyjal, Kalimdor --CHECKED
		"Mount Hyjal/0 27.48,56.37 -to- Molten Front/0 51.74,84.42 {mode:PORTAL} {title:Click the Portal to the Firelands} "..
			"{cond:PlayerCompletedQuest(29199)}",

			-- The Molten Front - Mount Hyjal, Kalimdor -to- Nordune Ridge - Mount Hyjal, Kalimdor --CHECKED
			"Molten Front/0 53.02,83.70 -to- Mount Hyjal/0 27.46,55.94 {mode:PORTAL} {title:Click the Portal to Mount Hyjal}",

		-- Thunder Bluff - Mulgore, Kalimdor -to- Darkmoon Island --CHECKED
		"Mulgore/0 36.85,35.86 -to- Darkmoon Island/0 51.29,23.86 {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')} "..
			"{title:Click the Portal to the Darkmoon Faire}",

			-- Darkmoon Island -to- Thunder Bluff - Mulgore, Kalimdor --CHECKED
			"Darkmoon Island/0 51.22,23.12 -to- Mulgore/0 36.49,35.11 {fac:H} {mode:PORTAL} {title:Click the Portal Back}",

			-- Darkmoon Island -to- Thunder Bluff - Mulgore, Kalimdor --CHECKED
			"Darkmoon Island/0 50.56,90.75 -to- Mulgore/0 36.49,35.11 {fac:H} {mode:PORTAL} {title:Click the Portal Back}",

		-- Vir'naal Oasis - Uldum, Kalimdor -to- Vision of N'Zoth - Vir'naal Oasis, Kalimdor --
		"Uldum New/0 56.65,31.67 -to- Uldum Vision/0 57.38,31.78 {mode:PORTAL} "..
			"{title:Click the Uldum monolith and choose |cffaaffaaYes|r}",

			-- Vision of N'Zoth - Vir'naal Oasis, Kalimdor -to- Vir'naal Oasis - Uldum, Kalimdor --
			"Uldum Vision/0 57.38,31.38 -to- Uldum New/0 56.65,31.80 {mode:PORTAL} "..
				"{title:Click the Uldum monolith and choose |cffaaffaaYes|r}",

		-- Wailing Caverns - Northern Barrens, Kalimdor -to- Crag of the Everliving - Wailing Caverns Pet Battle Scenario, Kalimdor --
		"Northern Barrens/20 23.50,81.29 -to- WC Pet Battle/0 60.16,60.57 {mode:PORTAL} "..
			"{title:Talk to Muyani and tell her |cffaaffaa\"Take me into the Wailing Caverns\"|r}",

			-- Crag of the Everliving - Wailing Caverns Pet Battle Scenario, Kalimdor -to- Wailing Caverns - Northern Barrens, Kalimdor --
			"WC Pet Battle/0 60.23,62.67 -to- Northern Barrens/20 23.50,81.29 {mode:PORTAL} "..
			"{title:Talk to Muyani and tell her |cffaaffaa\"I would like to leave the Wailing Caverns\"|r}",

	----------------------
	-- EASTERN KINGDOMS --
	----------------------

	--## ALLIANCE ##--

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- Stormshield - Ashran, Draenor --CHECKED
		"Blasted Lands/0 55.01,54.27 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 10 and not ZGV.InPhase('Old Blasted Lands')} "..
			"{template:darkportal}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Not Usable) -to- Stormshield - Ashran, Draenor --CHECKED
		"Blasted Lands/0 55.01,54.27 <override_text:You must be at least 10 to enter Draenor.> <override_icon:error> -to- Stormshield/0 31.71,52.48 {fac:A} "..
			"{mode:PORTAL} {cond:PlayerLevel() < 10 and not ZGV.InPhase('Old Blasted Lands')} {template:darkportal} {cost:999}",

		-- Goldshire - Elynn Forest, Eastern Kingdoms -to- Darkmoon Island --CHECKED
		"Elwynn Forest/0 41.79,69.48 -to- Darkmoon Island/0 51.29,23.86 {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')} "..
			"{title:Click the Portal to the Darkmoon Faire}",
			-- Darkmoon Island -to- Goldshire - Elynn Forest, Eastern Kingdoms --CHECKED
			"Darkmoon Island/0 51.22,23.12 -to- Elwynn Forest/0 41.87,68.17 {fac:A} {mode:PORTAL} {title:Click the Portal Back}",

			-- Darkmoon Island -to- Goldshire - Elynn Forest, Eastern Kingdoms --CHECKED
			"Darkmoon Island/0 50.56,90.75 -to- Elwynn Forest/0 41.87,68.17 {fac:A} {mode:PORTAL} {title:Click the Portal Back}",

		-- Highbank - Twilight Highlands, Eastern Kingdoms -to- Stormwind - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Twilight Highlands/0 79.43,77.85 -to- Stormwind City/0 75.17,16.81 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537)} "..
			"{title:Walk Through the Large Portal}",

		-- Skyfire Airship - Elwynn Forest, Eastern Kingdoms -to- The Jade Forest, Pandaria --
		"Eastern Kingdoms/0 41.47,70.19 <title:Skyfire Airship> -to- The Jade Forest 46.23,85.17 {fac:A} {mode:PORTAL} "..
			"{cond:PlayerLevel() >= 10 and PlayerLevel() < 50  and not PlayerCompletedQuest(29548)}",

		-- Skyfire Airship - Elwynn Forest, Eastern Kingdoms -to- The Jade Forest, Pandaria --
		"Eastern Kingdoms/0 41.47,70.19 <title:The Skyfire Airship> <override_text:You must be at least 10 to enter Pandaria.> "..
			"<override_icon:error> -to- The Jade Forest 46.23,85.17 {fac:A} {mode:PORTAL} {cond:PlayerLevel() < 10} {cost:999}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- The Dark Portal - Blasted Lands, Eastern Kingdoms
		"Stormwind City/0 49.12,87.34 <region:magetower> -to- Blasted Lands/0 54.89,50.11 {fac:A} {mode:PORTAL} "..
			"{title:Talk to the Honor Hold Mage\nInside the Mage Tower\nTell him |cfff0e081\"I must report to the Dark Portal.\"|r}"..
			"{cond:not PlayerCompletedQuest(60123) and UnitChromieTimeID('player')==6}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- The Dark Portal - Blasted Lands, Eastern Kingdoms
		"Stormwind City/0 49.12,87.34 <region:magetower> -to- Hellfire Peninsula/0 90.00,50.00 {fac:A} {mode:PORTAL} "..
			"{title:Talk to the Honor Hold Mage\nInside the Mage Tower\nTell him |cfff0e081\"I must report to the Dark Portal.\"|r}"..
			"{cond:not (not PlayerCompletedQuest(60123) and UnitChromieTimeID('player')==6)}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Kelp'thar Forest - Vashj'ir, Eastern Kingdoms --
		"Stormwind City/0 73.30,16.87 -to- Kelp'thar Forest/0 45.14,23.33 {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shimmering Expanse - Vashj'ir, Eastern Kingdoms --
		"Stormwind City/0 73.30,16.87 -to- Shimmering Expanse 49.09,56.90 {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(26219)}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Abyssal Depths - Vashj'ir, Eastern Kingdoms --
		"Stormwind City/0 73.30,16.87 -to- Abyssal Depths/0 55.70,72.80 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(26219)}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Ramkaehen - Uldum, Kalimdor --CHECKED
		"Stormwind City/0 75.24,20.50 -to- Uldum/0 54.90,34.25 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or PlayerLevel() >= 50}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Ramkaehen - Uldum, Kalimdor Patch 8.3
		"Stormwind City/0 75.24,20.50 -to- Uldum New/0 54.90,34.25 {fac:A} {mode:PORTAL} {cond:not ZGV.InPhase('OldUldum')}}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Temple of Earth - Deepholm, The Maelstrom --CHECKED
		"Stormwind City/0 73.19,19.65 -to- Deepholm/0 48.73,53.56 {fac:A} {mode:PORTAL} {title:Click the Portal to Deepholm} "..
			"{cond:PlayerCompletedQuest(27123) or PlayerLevel() >= 50}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Nordrassil - Mount Hyjal, Kalimdor --CHECKED
		"Stormwind City/0 76.20,18.69 -to- Mount Hyjal/0 63.49,23.37 {fac:A} {mode:PORTAL} {title:Click the Portal to Hyjal} "..
			"{cond:PlayerCompletedQuest(25316) or PlayerLevel() >= 50}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Baradin Base Camp - Tol Barad Peninsula, Eastern Kingdoms --CHECKED
		"Stormwind City/0 73.20,18.37 -to- Tol Barad Peninsula/0 73.68,60.92 {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 30} "..
			"{title:Click the Portal to Tol Barad}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Highbank - Twilight Highlands, Eastern Kingdoms --CHECKED
		"Stormwind City/0 75.34,16.43 -to- Twilight Highlands/0 79.48,77.79 {fac:A} {mode:PORTAL} {title:Click the Portal to Twilight Highlands} "..
			"{cond:PlayerCompletedQuest(27537) or PlayerLevel() >= 50}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Temple of the Moon - Darnassus, Kalimdor --
		"Stormwind City/0 23.86,56.10 -to- Darnassus/0 43.47,78.67 {fac:A} {mode:PORTAL} {title:Click the Portal to Darnassus}",
		
		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Dalaran - Crystalsong Forest, Northrend --CHECKED
		"Stormwind City/0 44.36,88.71 <region:magetower> -to- Dalaran/1 55.92,46.79 {fac:A} {mode:PORTAL} "..
			"{title:Click the Portal to Dalaran, Crystalsong Forest Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Crumbled Palace - Azsuna, Broken Isles --CHECKED
		"Stormwind City/0 46.85,93.41 <region:magetower> -to- Azsuna/0 47.00,40.89 {fac:A} {mode:PORTAL} {cond:ZGV.IsLegionOn()} "..
			"{title:Click the Portal to Azsuna Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Caverns of Time - Tanaris, Kalimdor --CHECKED
		"Stormwind City/0 43.72,85.35 <region:magetower> -to- Tanaris/17 54.60,28.30 {fac:A} {mode:PORTAL} {title:Click the Portal to Caverns of Time Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- The Exodar - Azuremyst Isle, Kalimdor --CHECKED
		"Stormwind City/0 43.60,87.22 <region:magetower> -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to The Exodar Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Paw'don Village - The Jade Forest, Pandaria --CHECKED
		"Stormwind City/0 45.70,87.16 <region:magetower> -to- The Jade Forest/0 46.18,85.07 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(31735) or PlayerLevel() >= 40} "..
			"{title:Click the Portal to Jade Forest Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Stormshield - Ashran, Draenor --CHECKED
		"Stormwind City/0 48.12,91.96 <region:magetower> -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} "..
			"{title:Click the Portal to Shormshield, Ashran Inside the Mage Tower}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Boralus Harbor, Tiragarde Sound --CHECKED
		"Stormwind City/0 48.75,95.21 <region:magetower> -to- Boralus/0 70.62,16.98 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(47186)} "..
			"{title:Click the Portal to Boralus Inside the Mage Tower}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shattrath City - Terokkar Forest, Outland (Portal Usable) --CHECKED
		"Stormwind City/0 44.91,85.72 <region:magetower> -to- Shattrath City/0 54.97,40.23 {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 10}"..
			"{title:Click the Portal to Shattrath Inside the Mage Tower}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shattrath City - Terokkar Forest, Outland (Portal Not Usable) --CHECKED
		"Stormwind City/0 44.91,85.72 <region:magetower> <override_text:You must be at least 10 to enter Outland.> <override_icon:error> -to- Shattrath City/0 54.97,40.23 "..
			"{fac:A} {mode:PORTAL} {cond:PlayerLevel() < 10} {cost:999}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Valdrakken - Thaldraszus, Dragon Isles
		"Stormwind City/0 48.89,93.42 <region:magetower> -to- Valdrakken/0 59.55,41.46 {fac:A} {mode:PORTAL}  {cond:PlayerCompletedQuest(66244)}"..
			"{title:Click the Portal to Valdrakken\nInside the Mage Tower}",

		-- Stromgarde Keep- Arathi Highlands, Eastern Kingdom -to- Boralus Harbor - Boralus, Kul Tiras --CHECKED
		"Arathi Highlands/0 21.96,65.15 -to- Boralus/0 66.81,25.06 {fac:A} {mode:PORTAL} {title:Click the Portal to Boralus Harbor} "..
			"{cond:PlayerCompletedQuest(53198) and not ZGV.InPhase('Old Arathi') and ZGV.InPhase('Warfront Arathi Control')}",

	--## HORDE ##--

		-- Ar'gorok - Arathi Highlands, Eastern Kingdoms -to- Port of Zandalar - Zuldazar, Zandalar --CHECKED
		"Arathi Highlands/0 27.44,29.38 -to- Dazar'alor/0 51.66,93.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Port of Zandalar} "..
			"{cond:PlayerCompletedQuest(53212) and not ZGV.InPhase('Old Arathi') and ZGV.InPhase('Warfront Arathi Control')}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- Warspear - Ashran, Draenor --CHECKED
		"Blasted Lands/0 55.01,54.27 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL}"..
			"{template:darkportal}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- Warspear - Ashran, Draenor --CHECKED
		"Blasted Lands/0 55.01,54.27 <override_text:You must be at least 10 to enter Draenor.> <override_icon:error> -to- Warspear/0 44.42,35.53 {fac:H} "..
			"{mode:PORTAL} {template:darkportal} {cost:999}",

		-- Dragonmaw Port - Twilight Highlands, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Twilight Highlands/0 73.56,53.54 -to- Orgrimmar/1 50.14,37.89 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)} "..
			"{title:Walk Through the Large Portal Inside the Building}",

		-- Shattered Landing - Blasted Lands, Eastern Kingdoms (New Time) -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Blasted Lands/0 72.65,49.51 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 10 and not ZGV.InPhase('Old Blasted Lands')}",

		-- Silvermoon City - Eversong Woods, Eastern Kingdoms -x- Ruins of Lordaeron - Tirisfal Glades, Eastern Kingdoms (Old Time) --CHECKED
		"Silvermoon City/0 49.49,14.80 -x- Tirisfal Glades/0 59.45,67.44 <region:undercitycourt> {fac:H} {mode:PORTAL} {title:Click the Orb of Translocation} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

			-- Zidormi Phase -to- Past Tirisfal Glades (Silvermoon City) --CHECKED
			"Tirisfal Glades L/0 69.45,62.80 -to- Silvermoon City/0 49.49,14.80 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityOoze')} "..
				"{title:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?\"|r}",

		-- Silvermoon City - Eversong Woods, Eastern Kingdoms -to- Tirisfal Glades, Eastern Kingdoms (New Time) --CHECKED
		"Silvermoon City/0 49.49,14.80 -to- Tirisfal Glades/0 69.30,62.75 {fac:H} {mode:PORTAL} {title:Click the Orb of Translocation} "..
			"{cond:not ZGV.InPhase('Old Undercity')}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Northern Stranglethorn Vale, Kalimdor --CHECKED
		"Tirisfal Glades/0 61.88,59.01 -to- Northern Stranglethorn/0 37.23,50.48 {fac:H} {mode:PORTAL} {title:Click the Portal to Grom'gol on Top of the Zeppelin Tower} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

			-- Zidormi Phase -to- Past Tirisfal Glades (Grom'gol) --CHECKED
			"Tirisfal Glades L/0 69.45,62.80 -to- Northern Stranglethorn/0 37.23,50.48 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityOoze')} "..
				"{title:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?\"|r}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Tirisfal Glades/0 60.74,58.67 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('Old Undercity')}"..
			"{title:Click the Portal to Orgrimmar on Top of the Zeppelin Tower}",

			-- Zidormi Phase -to- Past Tirisfal Glades (Ogrimmar) --CHECKED
			"Tirisfal Glades L/0 69.45,62.80 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityOoze')} "..
				"{title:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?\"|r}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Vengeance Landing - Howling Fjord, Northrend --CHECKED
		"Tirisfal Glades/0 59.09,58.91 -to- Howling Fjord/0 79.00,28.92 {fac:H} {mode:PORTAL} {title:Click the Portal to Howling Fjord on Top of the Zeppelin Tower} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

			-- Zidormi Phase -to- Past Tirisfal Glades (Ogrimmar) --CHECKED
			"Tirisfal Glades L/0 69.45,62.80 -to- Howling Fjord/0 79.00,28.92 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityOoze')} "..
				"{title:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?\"|r}",

		-- Undercity - Tirisfal Glades, Eastern Kingdoms -to- The Stair of Destiny - Hellfire Peninsula, Outland (Portal Usable) --CHECKED
		"Undercity/0 85.25,17.04 -to- Hellfire Peninsula/0 89.16,49.56 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 10 and ZGV.InPhase('Old Undercity')}",

			-- Zidormi Phase -to- Past Tirisfal Glades (Ogrimmar) --CHECKED
			"Tirisfal Glades L/0 69.45,62.80 -to- Hellfire Peninsula/0 89.16,49.56 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityOoze')} "..
				"{title:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?\"|r}",




		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Northern Stranglethorn Vale, Kalimdor --CHECKED
		"Tirisfal Glades L/0 59.50,67.95 -to- Northern Stranglethorn/0 37.23,50.48 {fac:H} {mode:PORTAL} {title:Click the Portal to Stranglethorn Vale} "..
			"{cond:ZGV.InPhase('UndercityCharred')}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Tirisfal Glades L/0 59.50,66.95 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityCharred')}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Vengeance Landing - Howling Fjord, Northrend --CHECKED
		"Tirisfal Glades L/0 60.11,66.93 -to- Howling Fjord/0 79.00,28.92 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('UndercityCharred')}",

		-- Undercity - Tirisfal Glades, Eastern Kingdoms -to- The Stair of Destiny - Hellfire Peninsula, Outland (Portal Usable) --CHECKED
		--"Undercity/0 85.25,17.04 -to- Hellfire Peninsula/0 89.16,49.56 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 10 and ZGV.InPhase('UndercityCharred')}",

		-- Silvermoon City - Eversong Woods, Eastern Kingdoms -x- Ruins of Lordaeron - Tirisfal Glades, Eastern Kingdoms (Old Time) --CHECKED
		"Silvermoon City/0 49.49,14.80 -x- Tirisfal Glades L/0 59.40,67.45 {fac:H} {mode:PORTAL} {title:Click the Orb of Translocation} "..
			"{cond:ZGV.InPhase('UndercityCharred')}",

	--## NEUTRAL ##--

		-- Eastern Plaguelands, Eastern Kingdoms -x- Ghostlands, Eastern Kingdoms --CHECKED
		"Eastern Plaguelands/0 54.38,8.77 <subtype:darkportal> -x- Ghostlands/0 52.22,97.43 <subtype:darkportal> {mode:PORTAL}",

		-- The Masonary - Blackrock Mountain, Eastern Kingdoms -to- BRD Pet Battle - Blackrock Mountain, Eastern Kingdoms --
		"Burning Steppes/16 33.06,23.12 -to- BRD Pet Battle/0 42.33,57.01 {mode:PORTAL} "..
			"{title:Talk to Burt Macklyn and tell him\n|cffaaffaa\"I'm ready, send me into Blackrock Depths!\"|r}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- The Stair of Destiny - Hellfire Penninsula, Outland
		"Blasted Lands/0 55.01,54.27 -to- Hellfire Peninsula/0 89.56,50.22 {mode:PORTAL} {cond:PlayerLevel() >= 10 and ZGV.InPhase('Old Blasted Lands')} "..
			"{template:darkportal}",

	-------------
	-- OUTLAND --
	-------------

	--## ALLIANCE ##--

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Stormwind - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Hellfire Peninsula/0 89.22,51.00 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 10}",

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Stormwind - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Hellfire Peninsula/0 88.62,52.81 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 10}",

		-- Shattrath City - Terokka Forest, Outland -to- Stormwind - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Shattrath City/0 57.21,48.27 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {cost:15} {cond:PlayerLevel() >= 10}",

	--## HORDE ##--

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Hellfire Peninsula/0 89.23,49.45 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 10}",

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Hellfire Peninsula/0 88.57,47.70 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 10}",

		-- Shattrath City - Terokkar Forest, Outland -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Shattrath City/0 56.81,48.85 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

	--## NEUTRAL ##--

		-- Shattrath City - Terokka Forest, Outland -to- Sung's Reach Sanctum - Isle of Quel'Danas, Eastern Kingdoms --CHECKED
		"Shattrath City/0 48.57,42.02 -to- Isle of Quel'Danas/0 48.25,34.48 {mode:PORTAL} {title:Click the Shattrath Portal to Isle of Quel'Danas}",

	---------------
	-- NORTHREND --
	---------------

	--## ALLIANCE ##--

		-- Dalaran - Crystalsong Forest, Northrend -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --CHECKED
		"Dalaran/1 40.10,62.81 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind}",

		-- Dalaran - Crystalsong Forest, Northrend -to- Wintergrasp Fortress - Wintergrasp, Northrend --
		--"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",

		-- Wintergrasp Fortress - Wintergrasp, Northrend -to- Dalaran - Crystalsong Forest, Northrend --
		--"Wintergrasp/0 49.11,15.31 -to- Dalaran 33.6,68.6 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()} "..
			--"{title:Click the Portal to The Violet Citadel}",

	--## HORDE ##--

		-- Dalaran - Crystalsong Forest, Northrend -to- Orgrimmar - Durotar, Kalimdor --CHECKED
		"Dalaran/1 55.33,25.45 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

		-- Dalaran - Crystalsong Forest, Northrend -to- Wintergrasp Fortress - Wintergrasp, Northrend --
		--"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",

		-- Wintergrasp Fortress - Wintergrasp, Northrend -to- Dalaran - Crystalsong Forest, Northrend --
		--"Wintergrasp/0 49.11,15.31 -to- Dalaran/1 26.84,44.71 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()} "..
			--"{title:Click the Portal to The Violet Citadel}",

	--## NEUTRAL ##--

		-- Dalaran - Crystalsong Forest, Northrend -to- The Violet Stand - Crystalsong Forest, Northrend --CHECKED
		"Dalaran/1 55.93,46.77 -to- Crystalsong Forest/0 15.81,42.85 {mode:PORTAL} {title:Click the Teleport to Violet Stand Crystal Inside the Building}",

			-- The Violet Stand - Crystalsong Forest, Northrend -to- Dalaran - Crystalsong Forest, Northrend --CHECKED
			"Crystalsong Forest/0 15.74,42.47 -to- Dalaran/1 55.92,46.79 {mode:PORTAL} {title:Click the Teleport to Dalaran Crystal}",

		-- The Violet Citadel - Dalaran, Northrend -to- The Purple Parlor - Dalaran, Northrend --CHECKED
		"Dalaran/1 25.96,44.14 -to- Dalaran/1 23.95,39.43 {mode:PORTAL} {title:Click the Portal to The Purple Parlor}",

		-- The Purple Parlor - Dalaran, Northrend -to- The Violet Citadel - Dalaran, Northrend --CHECKED
		"Dalaran/1 22.31,39.67 -to- Dalaran/1 26.84,44.71 {mode:PORTAL} {title:Click the Portal to The Violet Citadel}",

		-- Hall of Communion - Sholazar Basin, Northrend -to- Dalaran - Crystalsong Forest, Northrend --CHECKED
		"Hall of Communion/1 49.78,8.80 -to- Dalaran L/10 39.65,50.54 {mode:PORTAL} {title:Click the Teleportation Pad} "..
			"{cond:PlayerIsOnQuest(47330) or PlayerIsOnQuest(46206)}",

		-- Maker's Overlook - Sholazar Basin, Northrend -to- Hall of Communion - Sholazar Basin, Northrend --CHECKED
		"Sholazar Basin/0 88.43,53.00 -to- Hall of Communion/1 43.69,82.00 {mode:PORTAL} {title:Click the Power Conduit} "..
				"{cond:PlayerIsOnQuest(47330) or PlayerIsOnQuest(46206)}",

		-- Waygate - Sholazar Basin, Northrend -to- Waygate - Un'Goro Crater, Kalimdor --CHECKED
		"Sholazar Basin/0 40.38,83.20 -x- Un'Goro Crater/0 50.53,7.71 {mode:PORTAL} {title:Walk into the light}",

	--------------
	-- PANDARIA --
	--------------

	--## ALLIANCE ##--

		-- Paw'don Village - The Jade Forest, Pandaria -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --CHECKED
		"The Jade Forest/0 46.24,85.17 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(31735)} "..
			"{title:Click the Portal to Stormwind}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- The Seabolt - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 49.74,68.66 -to- Isle of Thunder/0 34.86,89.85 <title:Portal to the Isle of Thunder> {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)}",

			-- The Seabolt - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 35.33,90.57 -to- Townlong Steppes/0 49.76,68.89 <title:Portal to Shado-Pan Garrison> {fac:A} {mode:PORTAL} "..
				"{cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)}",

		-- The Seabolt - Isle of Thunder, Pandaria -to- Za'Tual - Isle of Thunder, Pandaria --
		"Isle of Thunder/0 34.86,89.41 -to- Isle of Thunder/0 31.63,83.78 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} "..
			"{title:Click Teleport to Za'Tual}",

			-- Za'Tual - Isle of Thunder, Pandaria -to- The Seabolt - Isle of Thunder, Pandaria --
			"Isle of Thunder/0 31.62,83.61 -to- Isle of Thunder/0 34.78,89.26 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} "..
				"{title:Click Teleport to The Seabolt}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- The Violet Rise - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 49.74,68.67 -to- Isle of Thunder/0 64.08,72.48 <title:the Isle of Thunder> {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(32644)} {template:portal}",

			-- The Violet Rise - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 64.71,73.48 -to- Townlong Steppes/0 49.76,68.89 <title:Shado-Pan Garrison> {fac:A} {mode:PORTAL} "..
				"{cond:PlayerCompletedQuest(32644)} {template:portal}",

		-- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Shrine of Seven Stars/2 71.66,35.94 <region:shrine7star_east> -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL}",

		-- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria -to- Stormwind - Elwynn Forest, Eastern Kingdoms -- Patch 8.3
		"Vale of Eternal Blossoms New/0 91.59,64.30 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {cond:not ZGV.InPhase('OldVale')}",

	--## HORDE ##--

		-- Hellscream's Fist Airship - Durotar, Kalimdor -to- The Jade Forest, Pandaria --
		"Durotar 66,1 <title:Hellscream's Fist Airship> -to- The Jade Forest 28.5,14.0 {fac:H} {mode:PORTAL} "..
			"{cond:PlayerLevel()>=10 and PlayerLevel() < 50  and not PlayerCompletedQuest(31769) and not ZGV.IsLegionOn()}",

		-- Hellscream's Fist Airship - Durotar, Kalimdor -to- The Jade Forest, Pandaria --
		"Durotar 66,1 <title:Hellscream's Fist Airship> <override_text:You must be at least 10 to enter Pandaria.> <override_icon:error> -to- The Jade Forest 28.5,14.0 "..
			"{fac:H} {mode:PORTAL} {cond:PlayerLevel() < 10} {cost:999}",

		-- Honeydew Village - The Jade Forest, Pandaria -to- Orgrimmar - Durotar, Kalimdor --
		"The Jade Forest/0 28.52,14.02 -to- Orgrimmar/1 57.10,89.81 <title:Orgrimmar> {fac:H} {cond:PlayerCompletedQuest(31769)} "..
			"{mode:PORTAL}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- The Crimson Treader - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 50.65,73.40 <title:the Isle of Thunder> -to- Isle of Thunder/0 28.39,52.90 {fac:H} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",

			-- The Crimson Treader - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 28.37,52.98 <title:Shado-Pan Garrison> -to- Townlong Steppes/0 50.70,73.16 {fac:H} {mode:PORTAL} "..
				"{cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- Dawnseeker's Promontory - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 50.65,73.40 -to- Isle of Thunder/0 33.25,32.43 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32212)}"..
				"<title:the Isle of Thunder>",

			-- Dawnseeker's Promontory - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 33.22,32.69 -to- Townlong Steppes/0 50.70,73.16 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32212)}"..
				"<title:Shado-Pan Garrison upstairs inside the building>",

		-- The Crimson Treader - Isle of Thunder, Pandaria -to- Court of Bones - Isle of Thunder, Pandaria --
		"Isle of Thunder/0 28.60,52.79 -to- Isle of Thunder/0 33.06,52.84 {fac:H} {mode:PORTAL} {title:Click Teleport to Court of Bones} "..
			"{cond:PlayerCompletedQuest(32212) and not PlayerCompletedQuest(32212)}",

			-- Court of Bones - Isle of Thunder, Pandaria -to- The Crimson Treader - Isle of Thunder, Pandaria --
			"Isle of Thunder/0 33.02,52.72 -to- Isle of Thunder/0 28.50,51.55 {fac:H} {mode:PORTAL} {title:Click Teleport to the Crimson Treader} "..
				"{cond:PlayerCompletedQuest(32212) and not PlayerCompletedQuest(32212)}",

		-- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria -to- Orgrimmar - Durotar, Kalimdor --
		"Shrine of Two Moons/2 73.35,42.69 <region:shrine2moon_east> -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

		-- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria -to- Orgrimmar - Durotar, Kalimdor -- Patch 8.3
		"Vale of Eternal Blossoms New/0 63.72,9.89 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:not ZGV.InPhase('OldVale')}",

	--## NEUTRAL ##--

		-- Time travel between VoEB phases
		"Vale of Eternal Blossoms/0 80.48,31.95 -x- Vale of Eternal Blossoms New/0 80.97,29.48 {mode:PORTAL}"..
		    "{title_atob:Talk to Zidormi\nAsk her |cfff0e081\"Can you return me to the present time?\"|r}"..
		    "{title_btoa:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what the Vale was like before the Black Empire assault?\"|r}",

		-- Bleak Hollow - Isle of Thunder, Pandaria -x- The Foot of Lei Shen - Isle of Thunder, Pandaria --
		"Isle of Thunder/0 52.06,45.03 -x- Isle of Thunder/0 62.82,32.29 {mode:PORTAL}",

		-- The Deepwild - Krasarang Wilds, Pandaria -x- Wind's Edge - Valley of the Four Winds, Pandaria
		"Krasarang Wilds/0 50.47,22.42 -x- Valley of the Four Winds/0 51.25,77.50 {mode:PORTAL} {template:pandarope}",

		-- Terrace of Gurthan - Dread Wastes, Pandaria -x- Serpent's Spine - Vale of Eternal Blossoms, Pandaria --
		"Dread Wastes/0 75.09,21.29 -x- Vale of Eternal Blossoms/0 14.20,76.72 <region:topofthewallVEB> {mode:PORTAL} {template:pandarope}",

		-- The Summer Fields - Vale of Eternal Blossoms, Pandaria -to- Vision of N'Zoth - Vale of Eternal Blossoms, Pandaria --
		"Vale of Eternal Blossoms New/0 84.49,51.74 -to- Vale Vision/0 84.49,52.14 {mode:PORTAL} "..
			"{title:Click the Vale of Eternal Twilight monolith and choose |cffaaffaaYes|r}",

			-- Vision of N'Zoth - Vale of Eternal Blossoms, Pandaria -to- The Summer Fields - Vale of Eternal Blossoms, Pandaria --
			"Vale Vision/0 84.49,51.74 -to- Vale of Eternal Blossoms New/0 84.20,51.53 {mode:PORTAL} "..
				"{title:Click the Vale of Eternal Blossoms monolith and choose |cffaaffaaYes|r}",

	-------------
	-- DRAENOR --
	-------------

	--## ALLIANCE ##--

		-- Lion's Watch - Tanaan Jungle, Draenor -to- Throne of Kil'Jaeden - Tanaan Jungle, Draenor --
		"Tanaan Jungle/0 57.67,58.70 <noskip:1> -to- Tanaan Jungle/0 55.51,27.29 {fac:A} {mode:_} {cond:PlayerCompletedQuest(38603)} "..
			"{title:Take the Gnomish Flying Machine\nto Throne of Kil'Jaeden} {cost:30}",

		-- Lunarfall Garrison - Shadowmoon Valley, Draenor -to- Stormshield - Ashran, Draenor
		"Lunarfall/0 70.18,27.49 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} {title:Click the Portal to Ashran} "..
			"{cond:C_Garrison.GetGarrisonInfo("..(Enum.GarrisonType.Type_6_0 or 2)..") == 3}",

		-- Stormshield - Ashran, Draenor -to- Lion's Watch - Tanaan Jungle, Draenor --
		"Stormshield/0 36.38,41.15 -to- Tanaan Jungle/0 57.53,60.32 {fac:A} {mode:PORTAL} {title: Click the Portal to Lion's Watch} {cond:PlayerCompletedQuest(38445)}",

		-- Stormshield - Ashran, Draenor -to- Lion's Watch - Tanaan Jungle, Draenor --
		"Tanaan Jungle/0 57.45,60.48 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} {title: Click the Portal to Ashran} {cond:PlayerCompletedQuest(38445)}",

		-- Stormshield - Ashran, Draenor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Stormshield/0 60.81,37.87 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title: Click the Portal to Stormwind}",

	--## HORDE ##--

		-- Frostwall Garrison - Frostfire Ridge, Draenor -to- Warspear - Ashran, Draenor --
		"Frostwall/0 75.17,48.57 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Ashran} "..
			"{cond:C_Garrison.GetGarrisonInfo("..(Enum.GarrisonType.Type_6_0 or 2)..") == 3}",

		-- Vol'mar - Tanaan Jungle, Draenor -to- Warspear - Ashran, Draenor --
		"Tanaan Jungle/0 61.02,47.35 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {title: Click the Portal to Ashran} {cond:PlayerCompletedQuest(37935)}",

		-- Vol'mar - Tanaan Jungle, Draenor -to- Throne of Kil'Jaeden - Tanaan Jungle, Draenor --
		"Tanaan Jungle/0 59.99,47.41 <title:B-2 Personnel Relocator> <noskip:1> -to- Tanaan Jungle/0 55.57,27.19 {fac:H} {mode:_} {cond:PlayerCompletedQuest(38599)} "..
			"{title:Take the B-2 Personnel Relocator\nto Throne of Kil'Jaeden} {cost:23}",

		-- Warspear - Ashran, Draenor -to- Vol'mar - Tanaan Jungle, Draenor --
		"Warspear/0 53.16,43.91 -to- Tanaan Jungle/0 60.9,47.3 {fac:H} {mode:PORTAL} {title: Click the Portal to Vol'mar} {cond:PlayerCompletedQuest(37935)}",

		-- Warspear - Ashran, Draenor -to- Orgrimmar - Durotar, Kalimdor --
		"Warspear/0 60.7,51.6 -to- Orgrimmar/1 57.10,89.81 <subtype:cityportal> {fac:H} {mode:PORTAL} {title: Click the Portal to Orgrimmar\nInside the Building}",

	--## NEUTRAL ##--

	-------------------
	-- THE MAELSTROM --
	-------------------

	--## ALLIANCE ##--

		-- Baradin Base Camp - Tol Barad Peninsula, Eastern Kingdoms -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Tol Barad Peninsula/0 75.23,58.86 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerLevel() >= 30}",

		-- Temple of Earth - Deepholm, The Maelstrom -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Deepholm/0 48.53,53.84 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or PlayerLevel() >= 50}",

		--## HORDE ##--

		-- Hellscream's Grasp - Tol Barad Peninsula, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --
		"Tol Barad Peninsula/0 56.30,79.66 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerLevel() >= 30}",

		-- Temple of Earth - Deepholm, The Maelstrom -to- Orgrimmar - Durotar, Kalimdor --
		"Deepholm/0 50.93,53.10 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or PlayerLevel() >= 50}",

	--## NEUTRAL ##--

	------------------
	-- BROKEN ISLES --
	------------------

	--## ALLIANCE ##--

		-- Crumbled Palace - Azsuna, Broken Isles -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Azsuna/0 46.66,41.41 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind}"..
			"{cond:ZGV.IsLegionOn()}",

		-- Dalaran, Broken Isles -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Dalaran L/10 39.55,63.22 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

		-- Haustvald - Stormheim, Broken Isles -to- Helheim - Stormheim, Broken Isles --
		"Stormheim/0 73.70,39.29 -to- Helheim/0 66.25,47.63 {fac:A} {mode:PORTAL} {title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- Helheim - Stormheim, Broken Isles -to- Haustvald - Stormheim, Broken Isles --
		"Helheim/0 66.83,48.14 -to- Stormheim/0 73.54,39.51 {fac:A} {mode:PORTAL} {title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Galebroken Path - Stormheim, Broken Isles --
		"Stormheim/0 37.48,64.23 -to- Stormheim/0 44.83,77.39 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Thorim's Peak Outside the Thorignir Refuge - Stormheim, Broken Isles --
		"Stormheim/0 37.48,64.23 -to- Stormheim/0 42.79,82.67 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Thorim's Peak - Stormheim, Broken Isles --
		"Stormheim/0 37.48,64.23 -to- Stormheim/0 41.30,80.10 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}",

	--## HORDE ##--

		-- Crumbled Palace - Azsuna, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --NEEDS FIXED
		"Azsuna/0 46.67,41.30 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

		-- Dalaran, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --
		"Dalaran L/10 55.25,23.93 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar inside Windrunner's Sanctuary} "..
			"{cond:ZGV.IsLegionOn()}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Galebroken Path - Stormheim, Broken Isles --
		"Stormheim/0 44.66,59.51 -to- Stormheim/0 44.83,77.39 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Thorim's Peak Outside the Thorignir Refuge - Stormheim, Broken Isles --
		"Stormheim/0 44.66,59.51 -to- Stormheim/0 42.79,82.67 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Thorim's Peak - Stormheim, Broken Isles --
		"Stormheim/0 44.66,59.51 -to- Stormheim/0 41.30,80.10 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}",

	--## NEUTRAL ##--

		-- Chamber of the Guardian Entrance - Dalaran, Broken Isles -to- Chamber of the Guardian Interior - Dalaran, Broken Isles --
		"Dalaran L/10 49.26,47.62 -to- Dalaran L/12 63.38,23.87 {mode:PORTAL} {title:Step on the glowing pad inside the building} {cond:ZGV.IsLegionOn()}",

		-- Chamber of the Guardian Interior - Dalaran, Broken Isles -to- Chamber of the Guardian Entrance - Dalaran, Broken Isles --
		"Dalaran L/12 64.88,21.12 -to- Dalaran L/10 49.04,48.04 {mode:PORTAL} {title:Step on the glowing pad inside the building} {cond:ZGV.IsLegionOn()}",

		-- Krokuun - Argus, Broken Isles -to- Arcatraz Scenario - Netherstorm, Outland --
		"Krokuun/1 43.42,23.19 -to- Arcatraz L/1 41.20,74.29 {mode:PORTAL} {cond:PlayerIsOnQuest(47134)} "..
			"{title:Talk to |cffaaffaaGrand Artificer Romuul|r\n\nTell him |cfff0e081\"I am ready to go\nto the Arcatraz.\"|r}",

			-- Arcatraz Scenario - Netherstorm, Outland -to- Krokuun - Argus, Broken Isles --
			"Arcatraz L/2 22.13,75.91 -to- Krokuun/1 45.36,24.20 {mode:PORTAL} {title:Click the portal} {cond:PlayerIsOnQuest(47134)}",

		-- Margoss's Retreat - Dalran, Broken Isles -to- Dalaran, Broken Isles --
		"Dalaran L/10 23.10,-11.40 <region:dalaran_margosss_retreat> -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {cond:ZGV.IsLegionOn()} "..
			"{title:Talk to |cffaaffaaConjurer Margoss|r\n\nTell him |cfff0e081\"Please teleport me back to Dalaran.\"|r}",

		-- Shal'Aran Cave Entrance (Suramar)
		"Suramar/0 34.96,47.75 <radius:10> -x- Suramar/0 35.34,47.45 <radius:10> <region:suramar_shalaran> {title_atob:Enter the cave} {title_btoa:Leave the cave} {cost:0}",

		-- Shal'Aran Cave Portal -to- Felsoul Hold (Suramar)
		"Suramar/0 36.10,45.75 <region:suramar_shalaran> -to- Suramar/23 52.35,36.75 {mode:PORTAL} {cond:PlayerCompletedQuest(41575)} {cost:5} "..
			"{title:Click the Portal to Felsoul Hold\ninside the Shal'Aran Cave}",

			-- Felsoul Hold - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/23 53.60,36.80 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(41575)} {cost:60} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Falanaar - Suramar, Broken Isles --
		"Suramar/0 35.89,45.56 <region:suramar_shalaran> -to- Suramar/32 41.38,15.05 {mode:PORTAL} {cond:PlayerCompletedQuest(42230)} {cost:5} "..
			"{title:Click the Portal to Falanaar\ninside the Shal'Aran Cave}",

			-- Falanaar - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/32 40.93,13.69 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(42230)} {cost:15} "..
				"{title:Click the Portal to Shal'Aran\nUnderground in the Falanaar Tunnels}",

		-- Shal'Aran - Suramar, Broken Isles -to- Moon Guard Stronghold - Suramar, Broken Isles --
		"Suramar/0 36.01,45.25 <region:suramar_shalaran> -to- Suramar/0 30.79,10.87 {mode:PORTAL} {cond:PlayerCompletedQuest(43808)} {cost:5} "..
			"{title:Click the Portal to Moon Guard Stronghold\ninside the Shal'Aran Cave}",

			-- Moon Guard Stronghold -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 30.83,11.02 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(43808)} {cost:15}"..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Lunastre Estate - Suramar, Broken Isles --
		"Suramar/0 36.16,45.05 <region:suramar_shalaran> -to- Suramar/0 43.61,79.10 {mode:PORTAL} {cond:PlayerCompletedQuest(43811)} {cost:5} "..
			"{title:Click the Portal to Lunastre Estate\ninside the Shal'Aran Cave}",

			-- Lunastre Estate -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 43.68,79.25 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(43811)} {cost:15} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Ruins of Elune'eth - Suramar, Broken Isles --
		"Suramar/0 36.34,44.91 <region:suramar_shalaran> -to- Suramar/0 36.31,46.89 <region:suramar_eluneeth> {mode:PORTAL} {cond:PlayerCompletedQuest(40956)} {cost:5} "..
			"{title:Click the Portal to Ruins of Elune'eth\ninside the Shal'Aran Cave}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 36.10,47.23 <region:suramar_eluneeth> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(40956)} {cost:60} {cost_prev_fly:5}"..
				"{title:Click the Portal to Shal'Aran\nAbove the Shal'Aran Cave}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -x- Road Connection #1
			"Suramar/0 37.35,46.38 -x- Suramar/0 38.19,47.63 <region:suramar_eluneeth> {title:Follow the road}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -x- Road Connection #2
			"Suramar/0 35.86,44.39 -x- Suramar/0 36.51,45.27 <region:suramar_eluneeth> {title:Follow the road}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -x- Road Connection #3
			"Suramar/0 37.04,45.27 <region:suramar_eluneeth> -x- Suramar/0 37.69,45.22 {template:atob} {title_atob:Follow the path up} {title_btoa:Follow the path down}",

		-- Shal'Aran - Suramar, Broken Isles -to- Sanctum of Order - Suramar, Broken Isles --
		"Suramar/0 36.70,44.64 <region:suramar_shalaran> -to- Suramar/0 43.40,60.72 {mode:PORTAL} {cost:10}"..
			"{title:Click the Portal to Sanctum of Order\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(43813)}",

			-- Sanctum of Order - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 43.41,60.56 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cost:20} "..
				"{title:Click the Portal to Shal'Aran\nDownstairs inside the Sanctum of Order} {cond:PlayerCompletedQuest(43813)}",

		-- Shal'Aran - Suramar, Broken Isles -to- Tel'anor - Suramar, Broken Isles --
		"Suramar/0 36.92,44.66 <region:suramar_shalaran> -to- Suramar/0 42.17,35.38 {mode:PORTAL} {cond:PlayerCompletedQuest(43809)} {cost:5} "..
			"{title:Click the Portal to Tel'anor\ninside the Shal'Aran Cave}",

			-- Tel'anor - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 42.03,35.24 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(43809)} {cost:15} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Twilight Vineyards - Suramar, Broken Isles --
		"Suramar/0 36.95,45.00 <region:suramar_shalaran> -to- Suramar/0 64.09,60.80 {mode:PORTAL} {cond:PlayerCompletedQuest(44084)} {cost:0} "..
			"{title:Click the Portal to Twilight Vineyards\ninside the Shal'Aran Cave}",

			-- Twilight Vineyards - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 64.00,60.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(44084)} {cost:15} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- The Waning Crescent - Suramar, Broken Isles --
		"Suramar/0 36.48,44.75 <region:suramar_shalaran> -to- Suramar/0 47.45,81.97 {mode:PORTAL} "..
			"{title:Click the Portal to The Waning Crescent\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)} {cost:5}",

			-- The Waning Crescent - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 47.73,81.38 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} "..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)} {cost:15}",

		-- Shal'Aran - Suramar, Broken Isles -to- Evermoon Terrace - Suramar, Broken Isles --
		"Suramar/0 36.49,44.75 <region:suramar_shalaran> -to- Suramar/0 52.04,78.87 {mode:PORTAL} "..
			"{title:Click the Portal to Evermoon Terrace\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42889)} {cost:5}",

			-- Evermoon Terrace - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 51.98,78.75 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} "..
				"{title:Click the Portal to Shal'Aran\non Top of the Building} {cond:PlayerCompletedQuest(42889)} {cost:15}",

		-- Shal'Aran - Suramar, Broken Isles -x- Astravar Harbor - Suramar, Broken Isles --
		"Suramar/0 36.77,45.04 <region:suramar_shalaran> -to- Suramar/0 54.42,69.53 {mode:PORTAL} {cond:PlayerCompletedQuest(44740)} {cost:5} "..
			"{title_atob:Click the Portal to Astravar Harbor\ninside the Shal'Aran Cave} ",

			-- Shal'Aran - Suramar, Broken Isles -x- Astravar Harbor - Suramar, Broken Isles --
			"Suramar/0 54.47,69.44 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(44740)} {cost:15} "..
				"{title_atob:Click the Portal to Shal'Aran\nUpstairs Inside the Building}",

		-- Evermoon Terrace - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
		"Suramar/0 54.48,69.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
			"{title:Click the Portal to Shal'Aran\nupstairs inside the building} {cond:PlayerCompletedQuest(45317)} {cost:15}",

		-- Sanctum of Order - Suramar, Broken Isles (Region) -x- Sactum Depths - Suramar, Broken Isles (Region)
		"Suramar/0 42.06,60.85 {radius:15} -x- Suramar/0 42.72,61.13 {radius:15} {title:Follow the path}",

		-- The Vindicaar - Krokuun, Argus -to- Dalaran, Broken Isles --
		"Krokuun/2 43.32,25.27 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran\nDownstairs Inside the Vindicaar} {cond:LibRover:IsVindicaarIn('Krokuun')}",

			-- Dalaran, Broken Isles -to- The Vindicaar - Krokuun, Argus --
			"Dalaran L/10 74.22,49.26 -to- Krokuun/1 61.15,81.36 {mode:PORTAL} {title_atob:Click the Lightforged Beacon}",

		-- The Vindicaar - Eredath, Argus -to- Dalaran, Broken Isles --
		"Eredath/4 49.33,25.38 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran\nDownstairs Inside the Vindicaar} {cond:LibRover:IsVindicaarIn('Mac\\'Aree')}",

		-- The Vindicaar - Antoran Wastes, Argus -to- Dalaran, Broken Isles --
		"Antoran Wastes/6 33.83,55.94 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran\nDownstairs Inside the Vindicaar} "..
			"{cond:LibRover:IsVindicaarIn('Antoran Wastes')}",

	-----------------
	-- ORDER HALLS --
	-----------------

	------------------
	-- DEATH KNIGHT --
	------------------

	-- (DEATH KNIGHT) Acherus: The Ebon Hold, Broken Isles -to- Dalaran, Broken Isles --
		"Broken Shore/2 24.69,33.74 -to- Dalaran L/10 60.93,44.73 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39832)}",

	------------------
	-- DEMON HUNTER --
	------------------

	-- (DEMON HUNTER) Dalaran, Broken Isles -to- Fel Hammer - Mardum, Twisting Nether --
		"Dalaran L/10 98.02,69.27 -to- Mardum, the Shattered Abyss/2 59.18,85.75 {mode:PORTAL} {title:Glide to the Floating Island and Click the Illidari Gateway} "..
			"{cond:PlayerCompletedQuest(42872)}",

	-- (DEMON HUNTER) Fel Hammer - Mardum, Twisting Nether -to- Dalaran, Broken Isles --
		"Mardum, the Shattered Abyss/2 59.23,91.93 -to- Dalaran L/10 77.11,49.61 {mode:PORTAL} {title:Click the Illidari Gateway} {cond:PlayerCompletedQuest(42872)}",

	-----------
	-- DRUID --
	-----------

		-- (DRUID) The Dreamgrove - Val'sharah, Broken Isles -to- Dalran, Broken Isles --
		"The Dreamgrove/0 56.51,43.10 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) The Dreamgrove - Val'sharah, Broken Isles -to- Emerald Dreamway, Emerald Dream --
		"The Dreamgrove/0 55.66,22.09 -to- Emerald Dreamway/0 45.10,26.49 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Duskwood, Eastern Kingdoms -to- Emerald Dreamway, Emerald Dream --
		"Duskwood/0 46.57,35.64 -to- Emerald Dreamway/0 38.85,65.99 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- The Dreamgrove - Val'sharah, Broken Isles --
		"Emerald Dreamway/0 45.68,23.52 -to- The Dreamgrove/0 54.30,24.97 {mode:PORTAL} {title:Walk into the Swirling Portal to The Dreamgrove} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Mount Hyjal, Kalimdor --
		"Emerald Dreamway/0 53.87,53.17 -to- Mount Hyjal/0 59.29,25.83 {mode:PORTAL} {title:Walk into the Swirling Portal to Mount Hyjal} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- The Hinterlands, Eastern Kingdoms --
		"Emerald Dreamway/0 50.91,66.51 -to- The Hinterlands/0 62.49,23.50 {mode:PORTAL} {title:Walk into the Swirling Portal to the Hinterlands} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Duskwood, Eastern Kingdoms --
		"Emerald Dreamway/0 40.02,70.02 -to- Duskwood/0 46.59,37.06 {mode:PORTAL} {title:Walk into the Swirling Portal to Duskwood} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Moonglade, Kalimdor --
		"Emerald Dreamway/0 25.71,80.55 -to- Moonglade/0 67.59,60.19 {mode:PORTAL} {title:Walk into the Swirling Portal to Moonglade} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Feralas, Kalimdor --
		"Emerald Dreamway/0 22.73,38.50 -to- Feralas/0 51.20,11.03 {mode:PORTAL} {title:Walk into the Swirling Portal to Feralas} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Grizzly Hills, Northrend --
		"Emerald Dreamway/0 31.60,25.91 -to- Grizzly Hills/0 50.43,29.75 {mode:PORTAL} {title:Walk into the Swirling Portal to Grizzly Hills} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Feralas, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Feralas/0 51.34,10.59 -to- Emerald Dreamway/0 27.64,40.69 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Grizzly Hills, Northrend -to- Emerald Dreamway, Emerald Dream --
		"Grizzly Hills/0 50.32,29.18 -to- Emerald Dreamway/0 32.40,29.53 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) The Hinterlands, Eastern Kingdoms -to- Emerald Dreamway, Emerald Dream --
		"The Hinterlands/0 62.30,22.62 -to- Emerald Dreamway/0 49.42,62.50 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Moonglade, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Moonglade/0 68.14,60.28 -to- Emerald Dreamway/0 26.31,77.76 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Mount Hyjal, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Mount Hyjal/0 59.09,26.09 -to- Emerald Dreamway/0 51.59,51.89 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

	------------
	-- HUNTER --
	------------

		-- (HUNTER) Dalaran, Broken Isles -to- Trueshot Lodge - Highmountain, Broken Isles --
		"Dalaran L/10 72.85,41.21 -to- Trueshot Lodge/0 33.25,49.43 {mode:PORTAL} {title:Talk to Talua and Fly to Trueshot Lodge} {cond:PlayerCompletedQuest(40953)}",

		-- (HUNTER) Trueshot Lodge - Highmountain, Broken Isles -to- Dalaran, Broken Isles --
		"Trueshot Lodge/0 48.63,43.50 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran Upstairs Inside the Building} {cond:PlayerCompletedQuest(40953)}",

	----------
	-- MAGE --
	----------

		-- (MAGE) Hall of the Guardian -to- Dalaran --
			"Hall of the Guardian/1 57.30,90.46 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(41114)}",

		-- (MAGE) Hall of the Guardian -to- Val'sharah --
			"Hall of the Guardian/1 66.78,46.52 -x- Val'sharah/0 51.24,56.09 {mode:PORTAL} {title:Click the Portal to Val'sharah} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian -to- Stormheim --
			"Hall of the Guardian/1 67.12,41.71 -x- Stormheim/0 31.34,60.51 {mode:PORTAL} {title:Click the Portal to Stormheim} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian -to- Suramar --
			"Hall of the Guardian/1 60.26,51.78 -x- Suramar/0 33.43,50.44 {mode:PORTAL} {title:Click the Portal to Suramar} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian -to- Azsuna --
			"Hall of the Guardian/1 55.06,39.65 -x- Azsuna/0 57.95,15.15 {mode:PORTAL} {title:Click the Portal to Azsuna} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian -to- Highmountain --
			"Hall of the Guardian/1 54.75,44.45 -x- Highmountain/0 31.41,63.82 {mode:PORTAL} {title:Click the Portal to Highmountain} {cond:IsSpellKnown(223413)}",

	----------
	-- MONK --
	----------

		-- (MONK) Wandering Isle, The Great Sea -to- Peak of Serenity - Kun-Lai Summit, Pandaria --
		"The Wandering Isle L/0 50.05,54.41 -to- Kun-Lai Summit/0 48.69,43.12 {mode:PORTAL} {title:Click the Portal to Peak of Serenity} {cond:PlayerCompletedQuest(40236)}",

		-- (MONK) Wandering Isle, The Great Sea -to- Dalaran, Broken Isles --
		"The Wandering Isle L/0 52.39,57.15 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40236)}",

	-------------
	-- PALADIN --
	-------------
	--## ALLIANCE ##--

		-- (PALADIN) Dalaran, Broken Isles -to- Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms --
		"Dalaran L/10 32.59,69.96 -to- Eastern Plaguelands/20 39.42,61.46 {fac:A} {mode:PORTAL} {title:Click the Portal to Sanctum of Light inside Greyfang Enclave} "..
			"{cond:PlayerCompletedQuest(38566)}",

		-- (PALADIN) Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms -to- Dalaran, Broken Isles --
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 33.69,68.01 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

	--## HORDE ##--

		-- (PALADIN) Dalaran, Broken Isles -to- Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms --
		"Dalaran L/10 61.92,13.49 -to- Eastern Plaguelands/20 39.42,61.46 {fac:H} {mode:PORTAL} {title:Click the Portal to Sanctum of Light inside Windrunner's Sanctuary} "..
			"{cond:PlayerCompletedQuest(38566)}",

		-- (PALADIN) Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms -to- Dalaran, Broken Isles --
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 61.27,14.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

	------------
	-- PRIEST --
	------------
	--## ALLIANCE ##--

		-- (PRIEST) Dalaran, Broken Isles -to- Netherlight Temple, Twisting Nether --
		"Dalaran L/10 39.61,57.24 -to- Netherlight Temple/1 49.64,75.50 {fac:A} {mode:PORTAL} {title:Click the Portal to Netherlight Temple upstairs inside Greyfang Enclave} "..
			"{cond:PlayerCompletedQuest(40938)}",

		-- (PRIEST) Netherlight Temple, Twisting Nether -to- Dalaran, Broken Isles --
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 38.73,57.39 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

	--## HORDE ##--

		-- (PRIEST) Dalaran, Broken Isles -to- Netherlight Temple, Twisting Nether --
		"Dalaran L/10 63.00,17.70 -to- Netherlight Temple/1 49.64,75.50 {fac:H} {mode:PORTAL} {title:Click the Portal to Netherlight Temple inside Windrunner's Sanctuary} "..
			"{cond:PlayerCompletedQuest(40938)}",

		-- (PRIEST) Netherlight Temple (Horde), Twisting Nether -to- Dalaran, Broken Isles --
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 61.65,17.39 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

	-----------
	-- ROGUE --
	-----------

		-- (ROGUE) Hall of Shadows - The Underbelly, Dalaran -to- Dalaran, Broken Isles --
		"Dalaran L/4 39.67,21.52 -to- Dalaran L/10 54.20,32.68 {mode:PORTAL} {title:Click the Knocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

		-- (ROGUE) Hall of Shadows - The Underbelly, Dalaran -to- Dalaran, Broken Isles --
		"Dalaran L/4 29.48,22.02 -to- Dalaran L/10 46.44,26.01 {mode:PORTAL} {title:Click the Knocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

	------------
	-- SHAMAN --
	------------

		-- (SHAMAN) Dalaran, Broken Isles -to- The Heart of Azeroth, The Maelstrom --
		"Dalaran L/10 67.03,48.18 -to- The Maelstrom L/0 30.75,53.07 {mode:PORTAL} {title:Click the Portal to the Maelstrom} {cond:PlayerCompletedQuest(39746)}",

		-- (SHAMAN) The Heart of Azeroth, The Maelstrom -to- Dalaran, Broken Isles --
		"The Maelstrom L/0 29.78,51.98 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39746)}",

		-- (SHAMAN) The Heart of Azeroth, The Maelstrom -to- Vortex Pinnacle - Uldum, Kalimdor --
		"The Maelstrom L/0 26.71,41.32 -to- The Vortex Pinnacle L/1 54.14,16.85 {mode:PORTAL} {title:Click the Vortex Pinnacle Portal} {cond:PlayerCompletedQuest(43002)}",

		-- (SHAMAN) Vortex Pinnacle - Uldum, Kalimdor -to- The Heart of Azeroth, The Maelstrom --
		"The Vortex Pinnacle L/1 53.59,16.00 -to- The Maelstrom L/0 26.79,41.48 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(43002)}",

		-- (SHAMAN) The Heart of Azeroth, The Maelstrom -to- Firelands - Mount Hyjal, Kalimdor --
		"The Maelstrom L/0 31.08,61.02 -to- Firelands L/0 25.79,89.25 {mode:PORTAL} {title:Click the Firelands Portal} {cond:PlayerCompletedQuest(42208)}",

		-- (SHAMAN) Firelands - Mount Hyjal, Kalimdor -to- The Heart of Azeroth, The Maelstrom --
		"Firelands L/0 25.02,92.64 -to- The Maelstrom L/0 30.54,59.78 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(42208)}",


	-------------
	-- WARLOCK --
	-------------

		-- (WARLOCK) Dalaran, Broken Isles -to- Dreadscar Rift, Twisting Nether --
		"Dalaran L/11 27.85,44.50 -to- Dreadscar Rift/0 72.52,37.47 {mode:PORTAL} {title:Click the Portal to Dreadscar Rift} {cond:PlayerCompletedQuest(40729)}",

		-- (WARLOCK) Dreadscar Rift, Twisting Nether -to- Dalaran, Broken Isles --
		"Dreadscar Rift/0 74.16,38.35 -to- Dalaran L/11 29.20,43.97 {mode:PORTAL} {title:Walk into the Portal to Dalaran} {cond:PlayerCompletedQuest(40729)}",


	-------------
	-- WARRIOR --
	-------------

		-- DALARAN	-TO-	SKYHOLD
			"Dalaran L/10 75.23,47.22 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(39654) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- STORMHEIM	-TO-	SKYHOLD
			"Stormheim/0 60.18,52.23 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(39654) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- AZSUNA	-TO-	SKYHOLD
			"Azsuna/0 47.58,28.08 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(44060) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- VAL'SHARAH	-TO-	SKYHOLD
			"Val'sharah/0 54.71,74.89 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(44061) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- HIGHMOUNTAIN	-TO-	SKYHOLD
			"Thunder Totem/0 39.73,42.11 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(41359) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SURAMAR	-TO-	SKYHOLD
			"Suramar/0 33.08,48.20 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(44062) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- BROKEN SHORE	-TO-	SKYHOLD
			"Broken Shore/0 44.81,61.32 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
				"{cond:PlayerCompletedQuest(46734) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SKYHOLD	-TO-	DALARAN
			"Skyhold/1 58.34,24.98 -to- Dalaran L/10 72.42,46.00 {mode:PORTAL} {title:Talk to Aerylia and Choose Dalaran} "..
				"{cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SKYHOLD	-TO-	STORMHEIM
			"Skyhold/1 58.34,24.98 -to- Stormheim/0 60.42,51.05 {mode:PORTAL} {title:Talk to Aerylia and Choose Stormheim} "..
				"{cond:PlayerCompletedQuest(39654) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SKYHOLD	-TO-	AZSUNA
			"Skyhold/1 58.34,24.98 -to- Azsuna/0 47.55,27.87 {mode:PORTAL} {title:Talk to Aerylia and Choose Azsuna} "..
				"{cond:PlayerCompletedQuest(44060) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SKYHOLD	-TO-	VAL'SHARAH
			"Skyhold/1 58.34,24.98 -to- Val'sharah/0 55.01,72.49 {mode:PORTAL} {title:Talk to Aerylia and Choose Val'sharah} "..
				"{cond:PlayerCompletedQuest(44061) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SKYHOLD	-TO-	HIGHMOUNTAIN
			"Skyhold/1 58.34,24.98 -to- Thunder Totem/0 41.57,44.02 {mode:PORTAL} {title:Talk to Aerylia and Choose Highmountain} "..
				"{cond:PlayerCompletedQuest(41359) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- SKYHOLD	-TO-	SURAMAR
			"Skyhold/1 58.34,24.98 -to- Suramar/0 33.82,49.38 {mode:PORTAL} {title:Talk to Aerylia and Choose Suramar} "..
				"{cond:PlayerCompletedQuest(44062) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- BROKEN SHORE	-TO-	DALARAN
			"Skyhold/1 58.34,24.98 -to- Broken Shore/0 44.27,62.99 {mode:PORTAL} {title:Talk to Aerylia and Choose The Broken Shore} "..
				"{cond:PlayerCompletedQuest(46734) and select(2,UnitClass('player'))=='WARRIOR'}",

	---------------
	-- KUL TIRAS --
	---------------

	--## ALLIANCE ##--

		-- Boralus - Tiragarde Sound, Kul Tiras -to- Dun Morogh, Eastern Kingdoms (Gnomeregan Pet Battle Dungeon Reward) --
		"Boralus/0 50.04,46.72 -to- Dun Morogh/10 31.94,71.70 {fac:A} {mode:PORTAL} {title:Talk to Manapoof,\nAsk it \"Would you please send me to Gnomeregan?\"} "..
			"{cond:PlayerCompletedQuest(54185)}",

		-- Boralus - Tiragarde Sound, Kul Tiras -to- Eastwall Gate - Eastern Plaguelands, Eastern Kingdoms (Stratholme Pet Battle Dungeon Reward) --
		"Boralus/0 50.04,46.72 -to- Eastern Plaguelands/0 43.23,19.96 {fac:A} {mode:PORTAL} {title:Talk to Manapoof,\nAsk it \"Would you please send me to Stratholme?\"} "..
			"{cond:PlayerCompletedQuest(56491)}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- The Exodar - Azuremyst Isle, Kalimdor --
		"Tiragarde Sound/0 74.38,23.41 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to Exodar Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Tiragarde Sound/0 74.49,23.50 -to- Ironforge/0 25.51,8.43 {fac:A} {mode:PORTAL} {title:Click the Portal to Ironforge Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Magni's Encampment - Silithus, Kalimdor --
		"Boralus/0 69.65,15.92 -to- Silithus/0 41.41,45.19 {fac:A} {mode:PORTAL} {title:Click the Portal to Silithus Inside the Building} "..
			"{cond:ZGV.InPhase('BFA') and PlayerLevel() >= 50}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Mezzamere - Nazjatar, The Maelstrom --
		"Boralus/0 69.84,15.29 -to- Nazjatar/0 39.96,52.84 {fac:A} {mode:PORTAL} {title:Click the Portal to Nazjatar Inside the Building} "..
			"{cond:PlayerCompletedQuest(54972)}",

		-- Mezzamere - Nazjatar, The Maelstrom -to- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound --
		"Nazjatar/0 39.97,52.58 -to- Boralus/0 69.95,15.77 {fac:A} {mode:PORTAL} {title:Click the Portal to Boralus} "..
			"{cond:PlayerCompletedQuest(54972)}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Boralus/0 70.13,16.79 -to- Stormwind City/0 46.35,90.23 <region:magetower> {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind Inside the Building} "..
			"{cond:ZGV.InPhase('BFA') and PlayerCompletedQuest(47186)}",

	--## HORDE ##--

	--## NEUTRAL ##--

	--------------
	-- ZANDALAR --
	--------------

	--## ALLIANCE ##--

		-- Boralus Harbor - Boralus, Kul Tiras -to- Stromgarde Keep - Arathi Highlands, Eastern Kingdom --
		"Boralus/0 66.19,24.72 -to- Arathi Highlands/0 21.58,65.14 {fac:A} {mode:PORTAL} {title:Click the Portal to Arathi Highlands} "..
			"{cond:ZGV.InPhase('Warfront Arathi Control') and PlayerCompletedQuest(53194)}",

		-- Boralus Harbor - Boralus, Kul Tiras -to- Bashal'Aran - Darkshore, Kalimdor --
		"Boralus/0 66.22,24.42 -to- Darkshore/0 46.72,34.73 {fac:A} {mode:PORTAL} {title:Click the Portal to Darkshore} "..
			"{cond:ZGV.InPhase('Warfront Darkshore Control') and PlayerCompletedQuest(53194)}",

		-- Xibala - Zandalar, Zuldazar -to- Zandalari Treasury Scenario --
		"Zuldazar/0 40.60,70.70 -to- Zandalari Treasury/0 22.41,81.16 {fac:A} {mode:PORTAL} {title:Click the Entrance Portal} {cond:PlayerIsOnQuest(54169)}",

			-- Zandalari Treasury Scenario -to- Xibala - Zandalar, Zuldazar --
			"Zandalari Treasury/0 20.72,80.94 -to- Zuldazar/0 40.60,70.76 {fac:A} {mode:PORTAL} {title:Click the Exit Portal} {cond:PlayerIsOnQuest(54169)}",

	--## HORDE ##--

		-- Dazar'alor - Zandalar, Zuldazar -to- Dun Morogh, Eastern Kingdoms (Gnomeregan Pet Battle Dungeon Reward) --
		"Dazar'alor/0 56.32,30.79 -to- Dun Morogh/10 31.94,71.70 {fac:H} {mode:PORTAL} {title:Talk to Manapoof,\nAsk it \"Would you please send me to Gnomeregan?\"} "..
			"{cond:PlayerCompletedQuest(54185)}",

		-- Dazar'alor - Zandalar, Zuldazar -to- Eastwall Gate - Eastern Plaguelands, Eastern Kingdoms (Stratholme Pet Battle Dungeon Reward) --
		"Dazar'alor/0 56.32,30.79 -to- Eastern Plaguelands/0 43.23,19.96 {fac:H} {mode:PORTAL} {title:Talk to Manapoof,\nAsk it \"Would you please send me to Stratholme?\"} "..
			"{cond:PlayerCompletedQuest(56491)}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Newhome - Nazjatar --
		"Dazar'alor/1 62.95,85.50 -to- Nazjatar/0 47.54,62.35 {fac:H} {mode:PORTAL} {title:Click the Portal to Nazjatar Inside the Building} "..
			"{cond:PlayerCompletedQuest(55053)}",

		-- Newhome - Nazjatar -to- Hall of Ancient Paths - Zuldazar, Zandalar --
		"Nazjatar/0 47.27,62.78 -to- Dazar'alor/1 67.84,81.23 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar} "..
			"{cond:PlayerCompletedQuest(55053)}",

		-- The Golden Throne - Zuldazar, Zandalar -to- Orgrimmar - Durotar, Kalimdor --
		--"Dazar'alor/0 49.94,43.85 -to- Orgrimmar/1 40.67,77.43 {fac:H} {mode:PORTAL} {cond:ZGV:RaceClassMatch('ZANDALARITROLL')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Silvermoon City, Eversong Woods --
		"Dazar'alor/1 73.99,62.22 -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon City Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Orgrimmar - Durotar, Kalimdor --
		"Dazar'alor/1 74.05,69.75 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Thunder Bluff - Mulgore, Kalimdor --
		"Dazar'alor/1 73.60,77.38 -to- Thunder Bluff/0 22.21,16.87 {fac:H} {mode:PORTAL} {title:Click the Portal to Thunder Bluff Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Silithus, Kalimdor --
		"Dazar'alor/1 73.67,85.43 -to- Silithus/0 41.41,45.19 {fac:H} {mode:PORTAL} {title:Click the Portal to Silithus Inside the Building} "..
			"{cond:ZGV.InPhase('BFA') and PlayerLevel() >= 10}",

		-- Port of Zandalar - Zuldazar, Zandalar -to- Ar'gorok - Arathi Highlands, Eastern Kingdoms --
		"Dazar'alor/0 51.92,94.59 -to- Arathi Highlands/0 27.40,29.95 {fac:H} {mode:PORTAL} {title:Click the Portal to Ar'gorok} "..
			"{cond:ZGV.InPhase('Warfront Arathi Control') and PlayerCompletedQuest(53208)}",

		-- Port of Zandalar - Zuldazar, Zandalar -to- Bashal'Aran - Darkshore, Kalimdor --
		"Dazar'alor/0 51.99,94.55 -to- Darkshore/0 46.31,35.00 {fac:H} {mode:PORTAL} {title:Click the Portal to Darkshore} "..
			"{cond:ZGV.InPhase('Warfront Darkshore Control') and PlayerCompletedQuest(53208)}",

	--## NEUTRAL ##--

	-------------------
	-- BFA WARFRONTS --
	-------------------

	--## ALLIANCE ##--

	--## HORDE ##--

		-- Darkshore Warfront Scenario - Darkshore, Kalimdor -to- Port of Zandalar - Zandalar, Zuldazar --
		"Darkshore Warfront/0 52.70,21.28 -to- Dazar'alor/0 51.66,93.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Port of Zandalar} {cond:PlayerCompletedQuest(54042)}",

	--## NEUTRAL ##--

	----------------------
	---  ALLIED RACES  ---
	----------------------

	--## ALLIANCE ##--

	-- VOID ELF
		"Telogrus Rift/0 28.00,21.49 -to- Stormwind City/0 54.00,14.75 {mode:PORTAL} {title_atob:Click the Rift to Stormwind} {cond:ZGV:RaceClassMatch('VOIDELF')}",

		"Stormwind City/0 54.50,15.37 -to- Telogrus Rift/0 28.68,23.01 {mode:PORTAL} {title_atob:Click the Rift to Telogrus} {cond:ZGV:RaceClassMatch('VOIDELF')}",

	-- LIGHTFORGED DRAENEI
		"Vindicaar Scenario/2 43.23,25.02 -to- Stormwind City/0 54.00,14.75 {mode:PORTAL} {title_atob:Click the Portal to Stormwind\n Downstairs Inside the Ship} {cond:ZGV:RaceClassMatch('LIGHTFORGEDDRAENEI')}",

		"Stormwind City/0 54.44,14.44 -to- Vindicaar Scenario/1 49.95,46.23 {mode:PORTAL} {title_atob:Click the Lightforged Beacon} {cond:ZGV:RaceClassMatch('LIGHTFORGEDDRAENEI')}",

	-- DARK IRON DWARF
		"Shadowforge City/0 59.30,26.38 -to- Stormwind City/0 54.00,14.75 {fac:A} {mode:PORTAL} {title:Click the Mole Machine\nto Stormwind City} "..
				"{cond:ZGV:RaceClassMatch('DARKIRONDWARF')}",

		"Stormwind City/0 52.67,15.97 -to- Shadowforge City/0 61.44,24.35 {fac:A} {mode:PORTAL} {title:Click the Mole Machine\nto Shadowforge City} "..
				"{cond:ZGV:RaceClassMatch('DARKIRONDWARF')}",

	-- MECHAGNOME
		"Stormwind City/0 52.66,15.90 -to- Mechagon City/1 21.10,64.71 {fac:A} {mode:PORTAL} {title:Walk onto the\nMechagon City Teleporter} "..
				"{cond:ZGV:RaceClassMatch('MECHAGNOME')}",

		"Mechagon City/1 20.39,59.96 -to- Stormwind City/0 54.11,16.48 {fac:A} {mode:PORTAL} {title:Walk onto the\nStormwind Teleportation Unit} "..
				"{cond:ZGV:RaceClassMatch('MECHAGNOME')}",




	--## HORDE ##--

	-- HIGHMOUNTAIN TAUREN
		"Thunder Totem/6 46.02,63.74 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar} {cond:ZGV:RaceClassMatch('HIGHMOUNTAINTAUREN')}",

		"Orgrimmar/1 40.09,76.83 -to- Thunder Totem/6 44.17,64.06 {mode:PORTAL} {title_atob:Click the Portal to Thunder Totem} {cond:ZGV:RaceClassMatch('HIGHMOUNTAINTAUREN')}",


	-- NIGHTBORNE
		"Suramar/0 58.18,87.33 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar\non the Platform} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

		"Orgrimmar/1 40.09,76.84 -to- Suramar/0 59.55,85.29 {mode:PORTAL} {title_atob:Click the Portal to The Nighthold} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

		"Suramar/0 57.99,86.60 -to- Suramar/0 36.79,45.21 {mode:PORTAL} {title_atob:Click the Portal to Shal'Aran\non the Platform} {cond:ZGV:RaceClassMatch('NIGHTBORNE') and PlayerLevel() >= 45}",

		"Suramar/0 36.77,45.04 -to- Suramar/0 59.55,85.29 {mode:PORTAL} {title_atob:Click the Portal to The Nighthold\n Inside the Cave} {cond:ZGV:RaceClassMatch('NIGHTBORNE') and PlayerLevel() >= 45}",

	--## NEUTRAL ##--

-------------------------
-------------------------
-- BOATS AND ZEPPELINS --
-------------------------
-------------------------

	------------------
	-- DRAGON ISLES --
	------------------
	--## ALLIANCE ##--

		-- Stormwind City -x- The Waking Shores --
			"Stormwind City/0 22.51,56.18 -x- The Waking Shores/0 82.16,30.76 {fac:A} {mode:SHIP}",
	
	--## HORDE ##--

		-- Durotar -x- The Waking Shores --
			"Durotar/0 55.98,13.22 -x- The Waking Shores/0 82.16,30.76 {fac:H} {mode:SHIP}",
	
	
	
	--------------
	-- KALIMDOR --
	--------------

	--## ALLIANCE ##--

	--## HORDE ##--

		-- Orgrimmar - Durotar, Kalimdor -x- Thunder Bluff - Mulgore, Kalimdor --
		"Orgrimmar/1 43.00,64.99 -x- Thunder Bluff/0 15.28,25.70 {fac:H} {mode:ZEPPELIN}",

		-- Orgrimmar - Durotar, Kalimdor -x- Grom'gol - Northern Stranglethorn, Eastern Kingdoms --
		"Orgrimmar/1 52.52,53.15 -x- Northern Stranglethorn/0 37.17,52.49 {fac:H} {mode:ZEPPELIN}",

		-- Orgrimmar - Durotar, Kalimdor -x- Warsong Hold - Borean Tundra, Northrend --
		"Orgrimmar/1 44.75,62.30 -x- Borean Tundra/0 41.38,53.61 {fac:H} {mode:ZEPPELIN}",

	--## NEUTRAL ##--

	----------------------
	-- EASTERN KINGDOMS --
	----------------------

	--## ALLIANCE ##--

		-- Booty Bay - The Cape of Stranglethorn, Eastern Kingdoms -x- Rachet - Northern Barrens, Kalimdor --
		"The Cape of Stranglethorn/0 39.02,67.01 <port:Booty Bay> -x- Northern Barrens/0 70.16,73.27 <port:Ratchet> {mode:SHIP}",

		-- Menethil Harbor - Wetlands, Eastern Kingdoms -x- Theramore - Dustwallow Marsh, Kalimdor --
		"Wetlands/0 6.37,62.24 <port:Menethil Harbor> -x- Dustwallow Marsh/0 71.51,56.34 {fac:A} {mode:SHIP}",

		-- Menethil Harbor - Wetlands, Eastern Kingdoms -x- Valgarde - Howling Fjord, Northrend --
		"Wetlands/0 5.10,55.72 <port:Menethil Harbor> -x- Howling Fjord/0 61.33,62.60 <port:Valgarde> {fac:A} {mode:SHIP}",

		-- Stormwind - Elwyyn Forest, Eastern Kingdoms -x- Valiance Keep - Borian Tundra, Northrend --
		"Stormwind City/0 18.02,25.84 -x- Borean Tundra/0 59.68,69.41 {fac:A} {mode:SHIP} {cost:177}  {cond:not ZGV.IsLegionBoatLock()}",

	--## HORDE ##--

	--## NEUTRAL ##--

		"@deeprun_sw -x- @deeprun_if {mode:TRAM} {cost:30} {dontsetborder:1}",

		-- Stormwind - Elwyyn Forest, Eastern Kingdoms --
		"Stormwind City/0 69.62,31.11 -x- Deeprun Tram/1 42.53,11.53 @deeprun_sw {mode:PORTAL} {title_atob:Enter Stormwind Deeprun Tram portal\nTake tram to Ironforge} "..
			"{title_btoa:Exit Stormwind Deeprun Tram through portal}",

		-- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Ironforge/0 76.93,51.25 -x- Deeprun Tram/1 45.77,12.47 @deeprun_if {mode:PORTAL} {title_atob:Enter Ironforge Deeprun Tram portal\nTake tram to Stormwind} "..
			"{title_btoa:Take tram to Ironforge\nExit Ironforge Deeprun Tram through portal}",

	-------------
	-- OUTLAND --
	-------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	---------------
	-- NORTHREND --
	---------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

		-- Unu'pe - Borean Tundra, Northrend -x- Moa'ki Harbor - Dragonblight, Northrend --
		"Borean Tundra/0 78.92,53.65 <port:Unu'pe> -x- Dragonblight/0 47.94,78.76 <port:Moa'ki Harbor> {mode:SHIP} {template:turtle}",

		-- Moa'ki Harbor - Dragonblight, Northrend -x- Kamagua - Howling Fjord, Northrend --
		"Dragonblight/0 49.64,78.43 -x- Howling Fjord/0 23.46,57.75 <port:Kamagua> {mode:SHIP} {template:turtle}",

	--------------
	-- PANDARIA --
	--------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	-------------
	-- DRAENOR --
	-------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	-------------------
	-- THE MAELSTROM --
	-------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	------------------
	-- BROKEN ISLES --
	------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	---------------
	-- KUL TIRAS --
	---------------

	--## ALLIANCE ##--

		-- Boralus Harbor - Boralus, Kul Tiras -to- Zuldazar, Zandalar --
		"Boralus/0 67.95,26.69 -to- Zuldazar/0 40.68,70.86 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,\nTell her \"Set sail for Zuldazar.\"} {cond:PlayerCompletedQuest(51308)}",

		-- Boralus Harbor - Boralus, Kul Tiras -to- Nazmir, Zandalar --
		"Boralus/0 67.95,26.69 -to- Nazmir/0 61.95,39.92 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,\nTell her \"Set sail for Nazmir.\"} {cond:PlayerCompletedQuest(51571)}",

		-- Boralus Harbor - Boralus, Kul Tiras -to- Vol'dun, Zandalar --
		"Boralus/0 67.95,26.69 -to- Vol'dun/0 35.60,33.17 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,\nTell her \"Set sail for Vol'dun.\"} {cond:PlayerCompletedQuest(51572)}",

		-- Tradewinds Market - Tiragarde Sound, Kul Tiras -x- Stormwind - Elwyyn Forest, Eastern Kingdoms --
		"Boralus/0 77.62,26.15 -x- Stormwind City/0 22.43,55.93 {fac:A} {mode:SHIP} {cond:PlayerLevel()>=10}",

	--## HORDE ##--

		-- Anyport - Drustvar, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		"Drustvar/0 20.60,43.34 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Swellthrasher,\nTell him \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51340)}",

		-- Stormsong Valley, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		"Stormsong Valley/0 51.95,24.46 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Grok Seahandler,\nTell him \"Take me back to Zuldazar.\"} {cond:PlayerCompletedQuest(51532)}",

		-- Stormsong Valley, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		-- FIX LATER SINCE FPATH MISSING DURING STORMSONG VALLEY INCURSION 
		"Stormsong Valley/0 51.43,33.75 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Muka Stormbreaker,\nTell her \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51696)}",

		-- Tiragarde Sound, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		"Tiragarde Sound/0 87.85,51.18 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Erul Dawnbrook,\nTell him \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51421)}",

		-- Port of Zandalar - Zuldazar, Zandalar -x- Echo Isles - Durotar, Kalimdor --
		"Zuldazar/0 58.02,65.07 -x- Echo Isles/0 70.90,38.23 {fac:H} {mode:SHIP} {cond:ZGV.InPhase('BFA')}",

		-- Prospectus Bay - Mechagon Island, Kul Tiras -to- Zuldazar Harbor - Zuldazar, Zandalar --
		"Mechagon Island/0 75.49,22.66 -to- Dazar'alor/0 41.75,87.43 {fac:H} {mode:SHIP} {cost:20} {title:Talk to Captain Krooz,\nTell her \"Take me to Zuldazar Harbor.\"} "..
			"{cond:PlayerCompletedQuest(55651)}",

	--## NEUTRAL ##--

	--------------
	-- ZANDALAR --
	--------------

	--## ALLIANCE ##--

		-- Zuldazar, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Zuldazar/0 40.46,71.03 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Daria Smithson,\nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51418)}",

		-- Nazmir, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Nazmir/0 62.06,40.08 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Desha Stormwallow,\nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51571)}",

		-- Vol'dun, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Vol'dun/0 34.91,33.76 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,\nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51229)}",

		-- Vol'dun, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Vol'dun/0 36.69,34.28 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Barnard \"The Smasher\" Baysworth,\nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51229)}",

	--## HORDE ##--

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Anyport - Drustvar, Kul Tiras --
		"Zuldazar/0 58.46,62.99 -to- Drustvar/0 20.61,43.69 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail,\nTell her \"Set sail for Drustvar.\"} {cond:PlayerCompletedQuest(51801)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Stormsong Valley, Kul Tiras --
		"Zuldazar/0 58.46,62.99 -to- Stormsong Valley/0 51.98,24.49 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail,\nTell her \"Set sail for Stormsong Valley.\"} {cond:PlayerCompletedQuest(51802)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Tiragarde Sound, Kul Tiras --
		"Zuldazar/0 58.46,62.99 -to- Tiragarde Sound/0 88.20,51.16 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail,\nTell her \"Set sail for Tiragarde Sound.\"} {cond:PlayerCompletedQuest(51800)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Darkshore Warfront Scenario --
		"Zuldazar/0 58.46,62.99 -to- Darkshore Warfront/0 54.48,19.00 {fac:H} {mode:PORTAL} {title:Talk to Dread-Admiral Tattersail,\nTell her \"Send me to Darkshore.\"} {cond:PlayerCompletedQuest(54042)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Atal'Gral - Zuldazar, Zandalar --
		"Zuldazar##862 78.66,12.62 -x- Zuldazar##862 82.43,46.85 {mode:SHIP} {fac:H} {cost:50} {title_atob:Take canoe to Atal'Gral}           {title_btoa:Take canoe to Zeb'Hari}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Dreadpearl Shallows - Zuldazar, Zandalar --
		"@+ -x- Zuldazar##862 69.50,67.00           {mode:SHIP} {fac:H} {cost:45} {title_atob:Take the canoe to Dreadpearl Shallows} {title_btoa:Take canoe to Atal'Gral}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Zuldazar Harbor - Zuldazar, Zandalar --
		"@+ -x- Dazar'alor##1165 52.83,95.78        {mode:SHIP} {fac:H} {cost:50} {title_atob:Take canoe to Zuldazar Harbor}     {title_btoa:Take canoe to Dreadpearl Shallows}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Zuldazar Arena - Zuldazar, Zandalar --
		"@+ -x- Zuldazar##862 53.68,61.56           {mode:SHIP} {fac:H} {cost:30} {title_atob:Take canoe to Zuldazar Arena}      {title_btoa:Take canoe to Zuldazar Harbor}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Xibala - Zuldazar, Zandalar --
		"@+ -x- Zuldazar##862 47.93,70.48           {mode:SHIP} {fac:H} {cost:30} {title_atob:Take canoe to Xibala}              {title_btoa:Take canoe to Zuldazar Arena}",

		-- Prospectus Bay - Mechagon Island, Kul Tiras -to- Zuldazar Harbor - Zuldazar, Zandalar --
		"Dazar'alor/0 41.83,87.61 -to- Mechagon Island/0 75.73,21.32 {fac:H} {mode:SHIP} {cost:20} {title:Talk to Captain Krooz,\nTell her \"Take me to Mechagon.\"} "..
			"{cond:PlayerCompletedQuest(55651)}",

	--## NEUTRAL ##--

----------------------
----------------------
-- TELEPORT TARGETS --
----------------------
----------------------

	--------------
	-- ALLIANCE --
	--------------

		-- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Stormwind City/0 46.35,90.23 @sw_tp_dst", 

		-- Stormwind - Elwynn Forest, Eastern Kingdoms --
--		"Stormwind City/0 46.35,90.23 @SW_Tower", 

		-- Stormwind (The Eastern Earthshrine) - Elwynn Forest, Eastern Kingdoms --
--		"Stormwind City/0 74.46,18.34 @SW_Earthshrine", 

		-- Stormwind (Stormwind Embassy) - Elwynn Forest, Eastern Kingdoms --
--		"Stormwind City/0 54.00,14.75 @SW_Embassy", 

		-- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Ironforge/0 25.51,8.43 @if_tb_dst",

		-- Darnassus - Teldrassil, Kalimdor --
		"Darnassus/0 43.47,78.68 @darn_tb_dst",

		-- Exodar - Azuremyst Isle, Kalimdor --
--		"The Exodar/0 47.62,59.82 @The_Exodar_tb_dst",

		-- Exodar - Azuremyst Isle, Kalimdor --
		"The Exodar/0 47.62,59.82 @exo_tb_dst",

		-- The Stair of Destiny - Hellfire Peninsula, Outland --
		"Hellfire Peninsula/0 89.16,50.86 @hfpA_tb_dst",

		-- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria --
		"Vale of Eternal Blossoms/0 62.50,21.82 @sss_tb_dst",

	-----------
	-- HORDE --
	-----------

		-- Ogrimmar - Durotar, Kalimdor --
		"Orgrimmar/1 57.10,89.81 @org_tp_dst",

		-- Undercity - Tirisfal Glades, Kalimdor --
		"Undercity/0 84.59,16.33 @uc_tb_dst",

		-- Thunder Bluff - Mulgore, Kalimdor --
		"Thunder Bluff/0 22.21,16.87 @tb_tb_dst",

		-- Silvermoon City - Eversong Woods, Kalimdor --
		"Silvermoon City/0 58.26,19.24 @smc_tb_dst",

		-- The Stair of Destiny - Hellfire Peninsula, Outland --
		"Hellfire Peninsula/0 89.16,49.56 @hfpH_tb_dst",

		-- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria --
		"Vale of Eternal Blossoms/0 62.50,21.82 @stm_tb_dst",

	-------------
	-- NEUTRAL --
	-------------

		-- Dalaran - Crystalsong Forest, Northrend --
		"Dalaran/1 55.92,46.78 @dala_tp_dst",

		-- Dalaran - Broken Shore, Broken Isles --
		"Dalaran L/10 60.92,44.72 @dalL_tp_dst",

------------------
-- CLASS SPELLS --
------------------

		--## MAGE ##--

		-- Teleport: Exodar --
		"The Exodar/0 47.62,59.82				<spell:32271>	<faction:A>",
		-- Teleport: Theramore --
		"Dustwallow Marsh/0 66.00,48.99				<spell:49359>	<faction:A>",
		-- Teleport: Shattrath --
		"Shattrath City/0 54.97,40.23				<spell:33690>	<faction:A>",
		-- Ancient Teleport: Dalaran - Eastern Kingdoms --
		"Hillsbrad Foothills/0 30.81,36.47			<spell:120145>	<faction:B>	<title:Teleport to Old Dalaran Crater\n\n|cffff1100 Cast Slow Fall After Loading!|r\n>",
		-- Teleport: Dalaran - Northrend --
		"Dalaran/1 55.92,46.79					<spell:53140>	<faction:B>",
		-- Teleport: Darnassus --
		"Darkshore/0 45.95,18.74				<spell:3565>	<faction:A>	<cond:not ZGV.InPhase('Old Darnassus')>",
		"Darnassus/0 43.47,78.67				<spell:3565>	<faction:A>	<cond:ZGV.InPhase('Old Darnassus')>",
		-- Teleport: Ironforge --
		"Ironforge/0 25.51,8.43					<spell:3562>	<faction:A>",
		-- Teleport: Stormwind --
		"Stormwind City/0 49.59,86.53				<spell:3561>	<faction:A> <region:magetower>", 
		-- Teleport: Tol Barad --
		"Tol Barad Peninsula/0 73.67,60.92			<spell:88342>	<faction:A>",
		-- Teleport: Vale of Eternal Blossoms --
		"Vale of Eternal Blossoms/0 86.30,61.05			<spell:132621>	<faction:A>",
		-- Teleport: Stormshield --
		"Stormshield/0 62.67,35.78				<spell:176248>	<faction:A>",
		-- Teleport: Hall of the Guardian --
		"Hall of the Guardian/1 57.63,86.13			<spell:193759>	<faction:B>",
		-- Teleport: Dalaran - Broken Isles --
		"Dalaran L/10 60.92,44.73				<spell:224869>	<faction:B>",
		-- Teleport: Valdrakken --
		"Valdrakken/0 57.13,42.33				<spell:395277>	<faction:B>",
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --



		"Orgrimmar/1 57.10,89.81				<spell:3567>   <faction:H>",
		"Silvermoon City 58.3,19.2				<spell:32272>  <faction:H>",
		"Swamp of Sorrows 49.8,55.8				<spell:49358>  <faction:H>",	-- Stonard
		"Thunder Bluff 22.2,16.9				<spell:3566>   <faction:H>",
		"Shattrath City 53.0,49.2				<spell:35715>  <faction:H>",
		"Undercity 84.6,16.3					<spell:3563>   <faction:H>",
		"Tol Barad Peninsula 55.8,80.1				<spell:88344>  <faction:H>",
		"Vale of Eternal Blossoms/0 62.21,21.54			<spell:132627> <faction:H>",
		"Warspear/0 58.8,51.4					<spell:176242>  <faction:H>",
		"Boralus/0 69.80,15.75					<spell:281403>",		-- Alliance
		"Dazar'alor/1 68.28,64.58				<spell:281404>",		-- Horde
		"Oribos/0 20.37,50.32					<spell:344587>",

		--[[ Note: node cond functions work only for teleport spells --]]
		-- DRUIDS
		"Moonglade  56.3,32.4					<spell:18960>",  --Teleport Moonglade
		-- DK (DEATHGATE)
		"Eastern Plaguelands 83.72,50.03			<spell:50977> <cond:not (PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))>", --Class based!
		-- MONKS (Zen Pilgrimage)
		"Kun-Lai Summit 48.64,42.94				<spell:126892> <region:peak_of_serenity> <cond:not PlayerCompletedQuest(40236)>", --Class based!



		-- LEGION:

		-- MAGE

		-- DRUID
			"Emerald Dreamway/0 35.33,53.15 <spell:193753> <cond:ZGV.CurrentMapID~=715>",

		-- DEATHKNIGHT
			"Broken Shore/2 27.43,30.43 <spell:50977> <subtype:deathgate> <cond:(PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740)) and ZGV.CurrentMapID~=647 and ZGV.CurrentMapID~=648  and ZGV.CurrentMapID~=646>",

		-- MONK
			"The Wandering Isle L/0 51.45,48.65 <spell:126892> <cond:PlayerCompletedQuest(40236) and ZGV.CurrentMapID~=709>",
}
