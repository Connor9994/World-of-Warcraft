local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.inns = {
	
	--------------------------------
	-----     DRAGON ISLES     -----
	--------------------------------
	["The Waking Shores"]={
		{name="Wild Coast",faction="B",npc="Happy Hal",npcid=187412,x=81.31,y=31.90},
		{name="Wild Coast",faction="B",npc="Sil'nori Crestshade",npcid=187403,x=80.40,y=27.82},
		{name="Wingrest Embassy",faction="B",npc="Ambassador Fastrasz",npcid=193393,x=76.33,y=35.62},
		{name="Skytop Observatory",faction="B",npc="Meehran Highlock",npcid=194432,x=76.07,y=54.71},
		{name="Ruby Lifeshrine",faction="B",npc="Lifecaller Tzadrak",npcid=191025,x=61.90,y=73.82},
		{name="Obsidian Bulwark",faction="B",npc="Lifecaller Tzadrak",npcid=191025,x=43.12,y=66.56},
		--{name="Dragonscale Basecamp",faction="B",npc="Maribeth",npcid=187399,x=47.75,y=83.25},
		{name="Dragonscale Basecamp",faction="B",npc="Granpap Whiskers",npcid=187408,x=47.73,y=83.24},
		{name="Ruby Lifeshrine",faction="B",npc="Meliane Enorath",npcid=189400,x=65.16,y=58.06},
		{name="Uktulut Pier",faction="B",npc="Innkeeper Notuk",npcid=197849,x=46.42,y=27.25},
		{name="Apex Observatory",faction="B",npc="Aylveth",npcid=198190,x=24.41,y=82.19},
	},

	["Ohn'ahran Plains"]={
		{name="Ohn'iri Springs",faction="B",npc="Mirojin",npcid=192113,x=57.15,y=76.60},
		{name="Forkriver Crossing",faction="B",npc="Hearthkeeper Marag",npcid=192878,x=72.15,y=80.50},
		{name="Pinewood Post",faction="B",npc="Jhara",npcid=191391,x=81.33,y=59.30},
		{name="Rusza'thar Reach",faction="B",npc="Ilana",npcid=196161,x=85.87,y=35.25},
		{name="Timberstep Outpost",faction="B",npc="Malakesh",npcid=196259,x=85.10,y=26.03},
		{name="Emberwatch",faction="B",npc="Fig Fireheart",npcid=190087,x=66.39,y=24.38},
		{name="Maruukai",faction="B",npc="Hearthkeeper Berulan",npcid=191269,x=62.81,y=40.65},
		{name="Broadhoof Outpost",faction="B",npc="Hearthkeeper Khonor",npcid=191813,x=46.12,y=40.61},
		{name="Greenscale Inn",faction="B",npc="Sugarbough",npcid=186502,x=28.57,y=60.51},
		{name="Teerakai",faction="B",npc="Hearthkeeper Atahl",npcid=195104,x=41.94,y=60.52},
	},

	["The Azure Span"]={
		{name="The Missing Hinge Inn",faction="B",npc="Willa Stronghinge",npcid=190315,x=18.73,y=24.47},
		{name="The Filled Bowl",faction="B",npc="Elder Nappa",npcid=186446,x=12.40,y=49.41},
		{name="Mage's Rest",faction="B",npc="Arcanist Tysha",npcid=189147,x=46.95,y=40.34},
		{name="Mulsted's Marquee",faction="B",npc="Mulsted Farpass",npcid=186851,x=62.78,y=57.82},
		{name="Theron's Watch",faction="B",npc="Revnar Thunderale",npcid=186762,x=65.53,y=16.19},
		{name="The Conjured Biscuit Inn",faction="B",npc="Vel Tal IX",npcid=189460,x=37.36,y=62.43},
	},

	["Valdrakken"]={
		{name="Valdrakken",faction="B",npc="Tithris",npcid=185562,x=47.47,y=46.20},
	},

	["Thaldraszus"]={
		{name="The Late Night Lab",faction="B",npc="Zuligosa",npcid=186458,x=50.22,y=42.54},
		{name="Gelikyr Post",faction="B",npc="Bivogosa",npcid=188887,x=52.46,y=69.60},
		{name="Temporal Conflux",faction="B",npc="Suma the Guised",npcid=189520,x=58.72,y=82.43},
		{name="Garden Shrine",faction="B",npc="Szaratheldra",npcid=194788,x=35.11,y=79.24},
		{name="Temporal Conflux",faction="B",npc="Suma the Guised",npcid=186952,x=59.84,y=82.65,quest=65938},
	},
	
	-------------------------------
	-----     SHADOWLANDS     -----
	-------------------------------
	["Zereth Mortis"]={
		{name="Haven",faction="B",npc="Anap",npcid=180916,x=34.80,y=63.96},
		{name="Pilgrim's Grace",faction="B",npc="Drim",npcid=181084,x=61.49,y=49.18},
	},

	["Korthia"]={
		{name="Keeper's Respite",faction="B",npc="Caretaker Kah-Lind",npcid=177156,x=60.73,y=24.15},
	},

	["Oribos"]={
		{name="Ring of Fates",faction="B",npc="Host Ta'rela",npcid=156688,x=67.48,y=50.33},
	},

	["Bastion"]={
		{name="Aspirant's Rest",faction="B",npc="Caretaker Mirene",npcid=160601,x=48.10,y=72.97},
		{name="Hero's Rest",faction="B",npc="Inkiep",npcid=160173,x=53.21,y=46.86,region="heros_rest"},
		{name="Sagehaven",faction="B",npc="Caretaker Calisaphene",npcid=172576,x=42.92,y=32.73},
	},

	["Maldraxxus"]={
		{name="Theater of Pain",faction="B",npc="Slumbar Valorum",npcid=161702,x=50.95,y=53.17},
		{name="The Spearhead",faction="B",npc="Odew Testan",npcid=168952,x=39.62,y=55.20},
	},

	["Ardenweald"]={
		{name="Tirna Vaal",faction="B",npc="Nolon",npcid=162446,x=62.56,y=35.31},
		{name="Glitterfall Basin",faction="B",npc="Shelynn",npcid=163738,x=50.69,y=33.80},
		{name="Hibernal Hollow",faction="B",npc="Taiba",npcid=162445,x=60.48,y=53.93},
		{name="Heart of the Forest",faction="B",npc="Flwngyrr",npcid=168032,x=48.38,y=50.46},				-- Outside the tree
		{name="Dreamsong Fenn",faction="B",npc="Flitterbit",npcid=171015,x=36.73,y=37.00},
	},

	["Revendreth"]={
		{name="The Sinposium",faction="B",npc="Tremen Winefang",npcid=156290,x=62.06,y=64.48},
		{name="Wanecrypt Hill",faction="B",npc="Soultrapper Valistra",npcid=156220,x=47.33,y=70.65},
		{name="Sanctuary of the Mad",faction="B",npc="Delia",npcid=166089,x=31.19,y=46.63},
		{name="Absolution Crypt",faction="B",npc="Absolooshun",npcid=158986,x=72.32,y=39.85},
	},

	["Seat of the Primus"]={
		{name="Seat of the Primus",faction="B",npc="Tapani Nightwish",npcid=161994,x=46.91,y=29.84},			-- Requires Necrolords covenant
	},

	["Heart of the Forest"]={
		{name="Heart of the Forest",faction="B",npc="Kewarin",npcid=160292,x=54.80,y=56.21},				-- Inside the tree (requires Night Fae covenant)
	},

	["Sinfall"]={
		{name="Sinfall",faction="B",npc="Tavian",npcid=166137,x=66.02,y=33.59},						-- Requires Venthyr covenant
	},

	["Elysian Hold"]={
		{name="Elysian Hold",faction="B",npc="Caretaker Theo",npcid=174581,x=48.25,y=59.16},				-- Requires Kyrian covenant
	},


	-----------------------------
	-----     KUL TIRAS     -----
	-----------------------------


	["Tiragarde Sound"] = {
		-- Snug Harbor Inn (Tradewinds Market)
			{name="Snug Harbor Inn",faction="A",npc="Wesley Rockhold",npcid=135153,f=0,x=75.28,y=22.84},

		-- Hatherford
			{name="Hatherford",faction="A",npc="Dandy Jones",npcid=133214,f=0,x=66.27,y=24.29},

		-- Norwington Estate
			{name="Norwington Estate",faction="A",npc="Terry Rigglesmith",npcid=136459,f=0,x=53.31,y=28.29},

		-- Roughneck Camp
			{name="Roughneck Camp",faction="A",npc="Egert Tominson",npcid=129159,f=0,x=42.06,y=22.85},

		-- Outrigger Post
			{name="Outrigger Post",faction="A",npc="Tom Fishbury",npcid=136465,f=0,x=35.33,y=24.22},

		-- Vigil Hill
			{name="Vigil Hill",faction="A",npc="Gordon Fine",npcid=136482,f=0,x=57.95,y=62.08},

		-- Kennings Lodge
			{name="Kennings Lodge",faction="A",npc="Heather Morgan",npcid=136437,f=0,x=75.67,y=64.52},

		-- Dead Man's Tale (Freehold)
			{name="Dead Man's Tale",faction="B",npc="Jill McHoonigan",npcid=136479,f=0,x=77.39,y=83.97},

		-- Castaway Point
			{name="Castaway Point",faction="B",npc="Friendly Pete",npcid=128233,f=0,x=85.26,y=80.32},
	},

	--["Boralus"] = {
		-- The Curious Octopus (Mariner's Row)
		--	{name="The Curious Octopus",faction="A",npc="Jaela Billman",npcid=135525,f=0,x=72.60,y=68.41},		---She appears on the map as an Innkeeper, but talking to her doesn't give an option
																---to make this location your Home. May not be implemented yet?
	--},

	["Stormsong Valley"] = {
		-- The Golden Flagon (Brennadam)
			{name="The Golden Flagon",faction="A",npc="\"Nasty\" Buck",npcid=138221,f=0,x=58.58,y=70.31},
		
		-- Seekers' Vista
			{name="Seekers' Vista",faction="B",npc="Okada",npcid=137668,f=0,x=40.84,y=37.09},

		-- Fort Daelin
			{name="Fort Daelin",faction="A",npc="Staff Sergeant Cotner",npcid=138210,f=0,x=34.83,y=47.15},

		-- Millstone Hamlet
			{name="Millstone Hamlet",faction="A",npc="Carol Netley",npcid=143328,f=0,x=31.51,y=67.26},

		-- Deadwash
			{name="Deadwash",faction="A",npc="Tess Tomalin",npcid=134969,f=0,x=43.28,y=54.23},

		-- Tidecross
			{name="Tidecross",faction="A",npc="Sister Alison",npcid=142634,f=0,x=65.47,y=48.30},
	},

	["Drustvar"] = {
		-- Watchman's Tower (Watchman's Rise)
			{name="Watchman's Tower",faction="A",npc="Quartermaster Rickard",npcid=137455,f=0,x=31.19,y=29.77,quest=50003},

		-- The Drust Bar (Anyport)
			{name="The Drust Bar",faction="A",npc="Fixi Slyshiv",npcid=136138,f=0,x=21.50,y=43.69,quest=50978},

		-- Krazzlefrazz Outpost
			{name="Krazzlefrazz Outpost",faction="H",npc="Groggil",npcid=138020,x=37.74,y=25.49,quest=51234},

		-- Falcon's Roost (Falconhurst)
			{name="Falcon's Roost",faction="A",npc="Alisha Darkwater",npcid=136655,f=0,x=26.67,y=72.55},

		-- Northwood Home (Arom's Stand)
			{name="Northwood Home",faction="A",npc="Owen Northwood",npcid=136480,f=0,x=37.43,y=48.56},

		-- The Swine's Larder (Fallhaven)
			{name="The Swine's Larder",faction="A",npc="Dinah Wellard",npcid=129992,f=0,x=55.50,y=34.26},
	},

	["Mechagon Island"] = {
		-- Rustbolt
			{name="Rustbolt",faction="B",npc="Smiles Cracklekey",npcid=150628,f=0,x=71.28,y=35.75},
	},

	["Nazjatar"] = {
			{name="Mezzamere",faction="A",npc="Enizo",npcid=155940,f=0,x=37.80,y=55.48},
			{name="Newhome",faction="H",npc="Asme Seapearl",npcid=151618,f=0,x=50.94,y=65.72},
	},



	----------------------------
	-----     ZANDALAR     -----
	----------------------------

	["Dazar'alor"] = {
		-- The Hozen Throne (Grand Bazaar)
			{name="The Hozen Throne",faction="H",npc="Gluk-Gluk",npcid=129556,f=0,x=48.45,y=87.96},

		-- Spirits Be With You (Port of Zandalar)
			{name="Spirits Be With You",faction="H",npc="Ximo the Callous",npcid=120840,f=0,x=52.42,y=84.94},

		-- The Great Seal
			{name="The Great Seal",faction="H",npc="Brillin the Beauty",npcid=122690,f=1,x=48.74,y=71.95},

		-- Watertusk Inn (The Sliver)
			{name="Watertusk Inn",faction="H",npc="Tanubu",npcid=133030,f=0,x=52.64,y=17.20},

		-- Atal'Jani (The Zocalo)
			{name="Atal'Jani",faction="B",npc="Rakle the Wretched",npcid=126330,f=0,x=34.74,y=11.59},
	},

	["Zuldazar"] = {
		-- Xibala
			{name="Xibala",faction="H",npc="Alitha Duskwing",npcid=124458,f=0,x=44.61,y=71.76},

		-- Zeb'ahari
			{name="Zeb'ahari",faction="H",npc="Jol the Ancient",npcid=124063,f=0,x=76.42,y=16.08,quest=47738},

		-- Scaletrader Post
			{name="Scaletrader Post",faction="B",npc="Corka",npcid=138488,f=0,x=71.36,y=29.00},

		-- Beastcaller Inn (Warbeast Kraal)
			{name="Beastcaller Inn",faction="H",npc="Jes'tri",npcid=123062,f=0,x=66.56,y=42.35},

		-- Village in the Vines (The Shrunken Head)
			{name="Village in the Vines",faction="H",npc="Shado",npcid=137331,f=0,x=51.29,y=51.18},
	},

	["Nazmir"] = {
		----------
		-- HORDE--
		----------

		-- Zul'jan Ruins (Zul'jan)
			{name="Zul'jan Ruins",faction="H",npc="Crazy Vaza",npcid=121840,f=0,x=38.63,y=78.66},

		-- Wayshrine of the Fallen (Zo'bal Ruins)
			{name="Wayshrine of the Fallen",faction="H",npc="Ru'ka",npcid=128701,f=0,x=40.87,y=43.54},

		-- Gloom Hollow
			{name="Gloom Hollow",faction="H",npc="Korkush",npcid=131988,f=0,x=67.76,y=41.85},

		--------------
		-- ALLIANCE --
		--------------

		-- Fort Victory
			{name="Fort Victory",faction="A",npc="Priestess Islara",npcid=135082,f=0,x=61.95,y=40.79},
	},

	["Vol'dun"] = {
		-- Temple of Akunda
			{name="Temple of Akunda",faction="H",npc="Ziaeja",npcid=128335,f=0,x=51.92,y=89.83},

		-- Scorched Sands Outpost
			{name="Scorched Sands Outpost",faction="H",npc="Mozesha",npcid=135655,f=0,x=43.04,y=76.46},

		-- Goldtusk Inn
			{name="Goldtusk Inn",faction="H",npc="Rhan'ka",npcid=129354,f=0,x=43.51,y=60.21,quest=48320},

		-- Sanctuary of the Devoted
			{name="Sanctuary of the Devoted",faction="B",npc="Issik",npcid=128693,f=0,x=26.87,y=52.22},

		-- Vulpera Hideaway
			{name="Vulpera Hideaway",faction="H",npc="Hagashi",npcid=124108,f=0,x=56.78,y=49.81}, --quest=?????

		-- Tortaka Refuge
			{name="Tortaka Refuge",faction="B",npc="Tuka",npcid=138917,f=0,x=61.50,y=20.54},
	},



	--------------------------------
	-----     BROKEN ISLES     -----
	--------------------------------
	["Dalaran L"]={
		-- The Legerdemain Lounge #1 (Both)
			{name="The Legerdemain Lounge",faction="B",npc="Amisi Azuregaze",npcid=96806,x=49.79,y=40.17,f=10},

		-- The Legerdemain Lounge #2 (Both)
			{name="The Legerdemain Lounge",faction="B",npc="Afsaneh Asrar",npcid=96807,x=48.52,y=41.79,f=10},
		
		-- Greyfang Enclave (Alliance)
			{name="Greyfang Enclave",faction="A",npc="Isirami Fairwind",npcid=96790,x=44.19,y=63.78,f=10},

		-- Dalaran (Alliance)
			{name="Greyfang Enclave",faction="A",npc="Caliel Brightwillow",npcid=96789,x=38.81,y=71.82,f=10,legion=true},

		-- Dalaran #1 (Horde)
			{name="Windrunner's Sanctuary",faction="H",npc="Uda the Beast",npcid=96796,x=65.38,y=32.21,f=10,legion=true},

		-- Dalaran #2 (Horde)
			{name="Windrunner's Sanctuary",faction="H",npc="Abohba",npcid=96799,x=67.09,y=35.45,f=10,legion=true},		
	},
	
		
	["Azsuna"] = {
		-- Shackle's Den
			{name="Shackle's Den",faction="B",npc="Gentle Rosh",npcid=91457,x=56.64,y=59.56},

		-- Illidari Stand
			{name="Illidari Stand",faction="B",npc="Belath Dawnblade",npcid=89639,x=43.11,y=42.62},

		-- Crumbled Palace
			{name="Crumbled Palace",faction="B",npc="Nalysse Dawnsorrow",npcid=109372,x=47.33,y=41.35},

		-- Nar'Thalas Academy
		--	{name="Nar'thalas Academy",faction="B",npc="Filrich",npcid=109377,x=52.80,y=36.80},	
	},


	["Val'sharah"] = {
		-- The Traveler's Den (Lorlathil)
			{name="The Traveler's Den",faction="B",npc="Feonir Cloudthistle",npcid=93460,x=56.07,y=73.51},

		-- Lightsong
			{name="Lightsong",faction="B",npc="Khardon Timberdawn",npcid=109304,x=58.24,y=84.80},

		-- Thornton's Cottage (Bradensbrook)
			{name="Thornton's Cottage",faction="B",npc="Alistair Thornton",npcid=92684,x=42.57,y=59.60},

		-- Starsong Refuge
			{name="Starsong Refuge",faction="B",npc="Faeolas Nightwhisper",npcid=95118,x=69.57,y=49.43},
	},
	
	
	["Highmountain"] = {
		-- Nesingwary's Retreat
			{name="Nesingwary's Retreat",faction="B",npc="Greta Stonebrow",npcid=94099,x=39.98,y=52.56},

		-- Tradewind Roost (Skyhorn)
			{name="Tradewind Roost",faction="B",npc="Harum Grayfeather",npcid=97786,x=53.00,y=44.88},

		-- Stonedark Grotto
			{name="Stonedark Grotto",faction="B",npc="Margul",npcid=99207,x=34.51,y=65.03,f=31},

		-- Prepfoot Compound (Prepfoot)
			{name="Prepfoot Compound",faction="B",npc="Chaff Prepfoot",npcid=108559,x=57.39,y=27.71},

		-- Ironhorn Enclave
			{name="Ironhorn Enclave",faction="B",npc="Burnedhoof the Retired",npcid=108554,x=54.61,y=84.94},
	},


	["Thunder Totem"] = {
		-- Thunder Totem
			{name="Thunder Totem",faction="B",npc="Ernu Mesawind",npcid=97852,x=44.36,y=53.87,region="thunder_totem_circle_platform"},
	},


	["Stormheim"] = {
		-- Valdisdall
			{name="Valdisdall",faction="B",npc="Riala the Hearthwatcher",npcid=103796,x=60.54,y=50.27},

		-- Greywatch Barracks (Greywatch - Alliance Only)
			{name="Greywatch Barracks",faction="A",npc="Steward Dayton",npcid=98112,x=71.63,y=60.61},

		-- Theodric's Lodge (Dreadwake's Landing - Horde Only)
			{name="Theodric's Lodge",faction="H",npc="Elliot Theodric",npcid=98106,x=54.01,y=72.29},
	},


	["Suramar"] = {
		-- Shal'Aran
			{name="Shal'Aran",faction="B",npc="First Arcanist Thalyssra",npcid=97140,x=36.52,y=46.76,region="suramar_shalaran"},

		-- The Nighthold (Nightborned Allied Race Default Hearthstone)
			{name="The Nighthold",faction="B",x=59.55,y=85.29},
	},


	["Krokuun"] = {
		-- The Vindicaar in Krokuun
			{name="The Vindicaar, Krokuun",faction="B",npc="High Priestess Ishanah",npcid=123395,f=1,x=50.31,y=74.34},
	},


	["Eredath"] = {
		-- The Vindicaar in Eredath
			{name="The Vindicaar, Eredath",faction="B",npc="High Priestess Ishanah",npcid=123395,f=3,x=49.63,y=68.54},
	},

	["Antoran Wastes"] = {
		-- The Vindicaar in Antoran Wastes
			{name="The Vindicaar, Antoran Wastes",faction="B",npc="High Priestess Ishanah",npcid=123395,f=5,x=63.49,y=54.73},
	},



	---------------------------
	-----     DRAENOR     -----
	---------------------------

	["Shadowmoon Valley D"]={
		{name="The Silken Pillow",faction="A",npc="Nethene",npcid=82775,x=60.0,y=27.4},
		{name="Tranquil Court",faction="A",npc="Mirathen",npcid=83825,x=70.5,y=50.8},
		{name="The Crescent Hearth",faction="A",npc="Melphaar",npcid=82770,x=56.9,y=57.4},
		{name="Twilight Glade",faction="A",npc="Old Loola",npcid=71641,x=41.3,y=55.1},
		{name="Lamplighter Inn",faction="A",npc="Coriander",npcid=78952,x=46.7,y=40.9},
	},

	["Gorgrond"]={
		{name="Highpass",faction="A",npc="Trader Yula",npcid=85968,x=53.2,y=59.8},
		{name="Breaker's Crown",faction="B",npc="Keepers",npcid=84237,x=45.9,y=54.7},
		{name="Skysea Ridge",faction="B",npc="Aeden Summersky",npcid=85830,x=40.1,y=36.3},
		{name="Beastwatch",faction="H",npc="Durotan",npcid=74594,x=46.0,y=69.7},
	},

	["Nagrand D"]={
		{name="Telaari Station",faction="A",npc="Caregiver Felaani",npcid=80006,x=63.6,y=62.5},
		{name="Yrel's Watch",faction="A",npc="Amma Stouthearth",npcid=81249,x=62.2,y=40.0},
		{name="Wor'var",faction="H",npc="Elathriel Sunstriker",npcid=82345,x=82.6,y=45.4},
		{name="Riverside Post",faction="H",npc="Mrs. Winterby",npcid=82341,x=48.5,y=47.3},
	},

	["Spires of Arak"]={
		{name="Southport",faction="A",npc="Elria Willowfall",npcid=84134,x=40.1,y=61.5},
		{name="Axefall",faction="H",npc="Taz'jari",npcid=84213,x=40.4,y=42.9},
		{name="Veil Terrok",faction="B",npc="Kuro'ak",npcid=86386,x=46.7,y=44.0},
	},

	["Talador"]={
		{name="Spire of Light",faction="B",npc="Barda",npcid=86316,x=50.9,y=44.5},
		{name="Anchorite's Sojourn",faction="A",npc="Caregiver Uluura",npcid=75430,x=77.2,y=57.5},
		{name="Fort Wrynn",faction="A",npc="Olivia Abbington",npcid=81358,x=69.7,y=21.8},
		{name="Frostwolf Overlook",faction="H",npc="Wagtan",npcid=77028,x=61.8,y=11.0},
		{name="Vol'jin's Pride",faction="H",npc="Paoni Softhoof",npcid=81359,x=72.0,y=30.0},
	},

	["Stormshield"]={
		{name="Stormshield",faction="A",npc="Jaesia Rosecheer",npcid=85956,x=35.7,y=77.9},
	},

	["Warspear"]={
		{name="Warspear",faction="H",npc="Narnin Dawnglow",npcid=86307,x=45.0,y=43.2},
	},

	["Frostfire Ridge"]={
		{name="Stonefang Outpost",faction="H",npc="Dorg",npcid=72382,x=40.7,y=51.7},
		{name="The Sheltered Den",faction="H",npc="Humble Sak'ko",npcid=77460,x=20.9,y=56.5},
		{name="Darkspear's Edge",faction="H",npc="Provisioner Lambala",npcid=78672,x=52.2,y=39.7},
		{name="Bladespire Citadel",faction="H",npc="Der'shway",npcid=76746,x=42.97,y=44.64,f=1},
	},

	["Lunarfall"]={
		{name="Town Hall",faction="A",npc="Deedree",npcid=82776,x=42.3,y=53.0, garrlevel=1}, -- verified
		{name="Town Hall",faction="A",npc="Deedree",npcid=82776,x=32.3,y=31.7, garrlevel=2}, -- verified
		{name="Town Hall",faction="A",npc="Deedree",npcid=82776,x=48.1,y=49.7, garrlevel=3},
	},

	["Frostwall"]={
		{name="Town Hall",faction="H",npc="Provisioner Rashma",npcid=80151,x=53.8,y=54.2, garrlevel=1}, -- verified
		{name="Town Hall",faction="H",npc="Provisioner Rashma",npcid=80151,x=42.5,y=53.5, garrlevel=2},
		{name="Town Hall",faction="H",npc="Provisioner Rashma",npcid=80151,x=42.5,y=53.5, garrlevel=3}, -- verified
	},

	["Tanaan Jungle"]={
		{name="The Lion's Den",faction="A",npc="Shima Islebreeze",npcid=90971,x=58.6,y=60.3},
		{name="Vol'mar Hold",faction="H",npc="Retho Quillmane",npcid=90989,x=61.5,y=46.2},
	},


	----------------------------
	-----     PANDARIA     -----
	----------------------------

	["The Jade Forest"]={
		{name="The Drunken Hozen",faction="B",npc="Peiji Goldendraft",npcid=55809,x=45.8,y=43.7},
		{name="Dawn's Blossom",faction="B",npc="Lin Wildfur",npcid=55233,x=45.7,y=43.9},
		{name="Paur's Pub",faction="B",npc="Bolo the Elder",npcid=62867,x=41.7,y=23.2},
		{name="Jade Temple Grounds",faction="B",npc="Fela Woodear",npcid=57313,x=54.6,y=63.2},
		{name="Sri-La Village",faction="B",npc="Lana the Sea Breeze",npcid=62868,x=55.8,y=24.4},
		{name="Paw'don Village",faction="A",npc="Jiayi Applebloom",npcid=371,x=44.9,y=84.4},
		{name="Pearlfin Village",faction="A",npc="Cheerful Jessu",npcid=61599,x=59.6,y=83.2},
		{name="Honeydew Village",faction="H",npc="Brewmother Kiki",npcid=700,x=28.5,y=13.3},
		{name="Grookin Hill",faction="H",npc="Grookin Bed-Haver",npcid=62975,x=28.0,y=47.4},
	},

	["Krasarang Wilds"]={
		{name="Wilds' Edge Inn",faction="B",npc="Rude Sho",npcid=62879,x=75.8,y=7.3},
		{name="The Incursion",faction="A",npc="Magister Xintar",npcid=58926,x=67.3,y=33.0},
		{name="Crane Wing Refuge",faction="B",npc="Ni the Merciful",npcid=62869,x=40.8,y=34.5},
		{name="Sentinel Basecamp",faction="A",npc="Magister Xintar",npcid=58926,x=25.5,y=33.2},
		{name="Krasarang Cove",faction="A",npc="Keeper Jaril",npcid=69088,x=88.8,y=35.3},
		{name="Marista's Bair & Brew",faction="B",npc="Cranfur the Noodler",npcid=62872,x=51.5,y=77.2},
		{name="Thunder Cleft",faction="H",npc="Malaya Dawnchaser",npcid=58184,x=60.9,y=24.9},
		{name="Dawnchaser Retreat",faction="H",npc="Aizra Dawnchaser",npcid=62967,x=28.3,y=50.8},
		{name="Horde Landing Site",faction="H",npc="Tonak",npcid=61122,x=10.8,y=52.3},
	},

	["Valley of the Four Winds"]={
		{name="Pang's Stead",faction="B",npc="Nan Thunderfoot",npcid=65528,x=83.7,y=20.2},
		{name="The Lazy Turnip",faction="B",npc="Innkeeper Lei Lan",npcid=59582,x=55.1,y=50.3},
		{name="Stone Mug Tavern",faction="B",npc="Nan the Mason Mug",npcid=62878,x=19.7,y=55.9},
		{name="Sunsong Ranch",faction="B",npc="Farmer's Journal",npcid=70585,x=52.7,y=47.9},
		{name="Thunderfoot Inn",faction="B",npc="Nan Thunderfoot",npcid=65528,x=83.7,y=20.3},
	},

	["Vale of Eternal Blossoms"]={
		{name="The Golden Rose",faction="B",npc="Bartender Tomro",npcid=58691,x=35.34,y=77.64},
	},

	["Vale of Eternal Blossoms New"]={
		{name="The Golden Rose",faction="B",npc="Bartender Tomro",npcid=58691,x=35.34,y=77.64},
		{name="The Golden Lantern",faction="A",npc="Matron Vi Vinh",npcid=64149,x=87.44,y=66.95},
		{name="Summer's Rest",faction="H",npc="Madam Vee Luo",npcid=62996,x=62.92,y=11.95},
	},

	["Shrine of Seven Stars"]={
		{name="The Golden Lantern",f=1,faction="A",npc="Matron Vi Vinh",npcid=64149,x=36.38,y=66.70},
	},

	["Shrine of Two Moons"]={
		{name="Summer's Rest",f=1,faction="H",npc="Madam Vee Luo",npcid=62996,x=68.42,y=47.72},
		{name="Hall of the Crescent Moon",f=2,faction="H",npc="Brewmaster Skye",npcid=63008,x=60.30,y=77.09,region="shrine2moon_east"},
	},

	["The Veiled Stair"]={
		{name="Tavern in the Mists",faction="B",npc="Tong the Fixer",npcid=62917,x=55.0,y=72.4},
	},

	["Kun-Lai Summit"]={
		{name="Binan Brew & Stew",faction="B",npc="Puli the Even Handed",npcid=62871,x=72.7,y=92.3},
		{name="Westwind Rest",faction="A",npc="Kai the Restless",npcid=62882,x=54.1,y=82.9},
		{name="The Two Fisted Brew",faction="B",npc="Li Goldendraft",npcid=59405,x=64.2,y=61.4},
		{name="The Lucky Traveller",faction="B",npc="Chiyo Mistpaw",npcid=59688,x=57.4,y=60.0},
		{name="Kota Basecamp",faction="B",npc="Clover Keeper",npcid=60420,x=42.7,y=70.0},
		{name="Eastwind Rest",faction="H",npc="Mai the Sleepy",npcid=62883,x=62.8,y=80.5},
		{name="Temple of the White Tiger",faction="B",npc="Master Lao",npcid=61651,x=66.9,y=51.0},
		{name="North Wind Tavern",faction="B",npc="Liu Ze",npcid=60605,x=62.5,y=28.8},
		{name="Shado-Pan Fallback",faction="B",npc="Stained Mug",npcid=62877,x=44.4,y=90.3},
	},

	["Townlong Steppes"]={
		{name="Longying Outpost",faction="B",npc="Saito the Sleeping Shadow",npcid=62873,x=71.1,y=57.9},
		{name="Gao-Ran Battlefront",faction="B",npc="Kim the Quiet",npcid=62875,x=76.0,y=82.9},
		{name="Shado-Pan Garrison",faction="B",npc="Kali the Night Watcher",npcid=62874,x=48.9,y=70.8},
	},

	["Dread Wastes"]={
		{name="The Chum Bucket",faction="B",npc="San the Sea Calmer",npcid=63016,x=55.2,y=71.1},
		{name="Klaxxi'vess",faction="B",npc="Zit'tix",npcid=65220,x=55.9,y=32.3},
	},

	["Isle of Thunder"]={
		{name="Violet Rise",faction="A",npc="Isirami Fairwind",npcid=70182,x=64.9,y=73.0},
		{name="Battlefront Provisions",faction="B",npc="Uda the Beast",npcid=70182,x=64.9,y=73.0},
	},

	["Timeless Isle"]={
		{name="The Celestial Court",faction="B",npc="Graceful Swan",npcid=73622,x=36.6,y=46.8},
	},


	----------------------------
	-----     NORTHREND     ----
	----------------------------

	["Borean Tundra"]={
		{name="Valiant Rest",faction="A",npc="James Deacon",npcid=25245,x=58.29,y=68.05},
		{name="Fizzcrank Airstrip",faction="A",npc="\"Charlie\" Northtop",npcid=26596,x=57.12,y=18.71},
		{name="Warsong Hold",faction="H",npc="Williamson",npcid=25278,x=41.8,y=54.6},
		{name="Taunka'le Village",faction="H",npc="Pahu Frosthoof",npcid=26709,x=76.2,y=37.2},
		{name="Unu'pe",faction="B",npc="Caregiver Poallu",npcid=27187,x=78.39,y=49.28},
	},
	["Howling Fjord"]={
		{name="Valgarde",faction="A",npc="Innkeeper Hazel Lagras",npcid=23731,x=58.4,y=62.6},
		{name="Westguard Inn",faction="A",npc="Innkeeper Celeste Goodhutch",npcid=23937,x=30.8,y=41.4},
		{name="Fort Wildervar",faction="A",npc="Christina Daniels",npcid=24057,x=60.4,y=15.8},
		{name="Vengeance Landing",faction="H",npc="Timothy Holland",npcid=24342,x=79.7,y=30.8},
		{name="New Agamand",faction="H",npc="Basil Osgood",npcid=24149,x=52.2,y=66.4},
		{name="Camp Winterhoof",faction="H",npc="Bori Wintertotem",npcid=24033,x=49.4,y=10.8},
		{name="Kamagua",faction="B",npc="Caregiver Iqniq",npcid=27148,x=25.4,y=59.8},
	},
	["Dragonblight"]={
		{name="Wintergarde Keep",faction="A",npc="Illusia Lune",npcid=27042,x=77.40,y=51.84},
		{name="Stars' Rest",faction="A",npc="Naohain",npcid=27052,x=28.89,y=56.09},
		{name="Venomspite",faction="H",npc="Mrs. Winterby",npcid=27027,x=76.8,y=63.0},
		{name="Agmar's Hammer",faction="H",npc="Barracks Master Harga",npcid=26985,x=38.2,y=46.6},
		{name="Moa'ki Harbor",faction="B",npc="Caregiver Mumik",npcid=27174,x=48.14,y=74.76},
		{name="Wyrmrest Temple",faction="B",npc="Demestrasz",npcid=27950,x=59.80,y=54.24},
	},
	["Grizzly Hills"]={
		{name="Amberpine Lodge",faction="A",npc="Jennifer Bell",npcid=27066,x=32.0,y=60.2},
		{name="Westfall Brigade Encampment",faction="A",npc="Quartermaster McCarty",npcid=26375,x=59.6,y=26.4},
		{name="Conquest Hold",faction="H",npc="Barracks Master Rhekku",npcid=27125,x=20.8,y=64.6},
		{name="Camp Oneqwah",faction="H",npc="Aiyan Coldwind",npcid=26680,x=65.4,y=47.0},
	},
	["Dalaran"]={
		{name="Dalaran",faction="B",npc="Amisi Azuregaze",npcid=28687,x=51.0,y=40.0,legion=false}, -- this is the universal innkeeper in Dalaran for our purpose. GetBindLocation() returns Dalaran so needed a way to find it.
		{name="The Silver Enclave",faction="A",npc="Isirami Fairwind",npcid=32413,x=44.6,y=63.0},
		{name="Sunreaver's Sanctuary",faction="H",npc="Uda the Beast",npcid=31557,x=65.6,y=32.6},
		{name="Sunreaver's Sanctuary",faction="H",npc="Abohba",npcid=32418,x=69.0,y=33.4},
		{name="Runeweaver Square",faction="B",npc="Amisi Azuregaze",npcid=28687,x=51.0,y=40.0},
		{name="The Underbelly",faction="B",npc="Ajay Green",npcid=29532,x=37.0,y=56.8},
		{name="Runeweaver Square",faction="B",npc="Afsaneh Asrar",npcid=32411,x=49.6,y=40.6},
	},
	["The Storm Peaks"]={
		{name="Frosthold",faction="A",npc="Gunda Boldhammer",npcid=29926,x=28.6,y=74.4},
		{name="Camp Tunka'lo",faction="H",npc="Wabada Whiteflower",npcid=29971,x=67.6,y=50.6},
		{name="Grom'arsh Crash-Site",faction="H",npc="Peon Gakra",npcid=29944,x=37.0,y=49.6},
		{name="K3",faction="B",npc="Smilin\' Slirk Brassknob",npcid=29904,x=41.0,y=85.8},
		{name="Brunnhildar Village",faction="B",npc="Lodge-Matron Embla",npcid=30005,x=48.8,y=65.0},
		{name="Bouldercrag's Refuge",faction="B",npc="Magorn",npcid=29963,x=30.8,y=37.2},
	},
	["Icecrown"]={
		{name="Silver Covenant Pavilion",faction="A",npc="Caris Sunlance",npcid=33970,x=76.19,y=19.66},
		{name="Sunreaver Pavilion",faction="H",npc="Jarin Dawnglow",npcid=33971,x=76.10,y=23.96},
		{name="The Shadow Vault",faction="B",npc="Initiate Brenners",npcid=30308,x=43.99,y=22.18},
	},
	["Zul\'Drak"]={
		{name="The Argent Stand",faction="B",npc="Marissa Everwatch",npcid=28791,x=40.8,y=66.2},
		{name="Zim'Torga",faction="B",npc="Pan'ya",npcid=29583,x=59.2,y=57.2},
	},
	["Sholazar Basin"]={
		{name="Nesingwary Base Camp",faction="B",npc="Purser Boulian",npcid=28038,x=26.75,y=59.27},
	},


	---------------------------
	-----     OUTLAND     -----
	---------------------------

	["Hellfire Peninsula"]={
		{name="Thrallmar",faction="H",npc="Floyd Pinkus",npcid=16602,x=56.6,y=37.6},
		{name="Falcon Watch",faction="H",npc="Innkeeper Bazil Olof'tazun",npcid=18905,x=26.8,y=59.6},
		{name="Honor Hold",faction="A",npc="Sid Libardi",npcid=16826,x=54.2,y=63.5},
		{name="Temple of Telhamat",faction="A",npc="Caregiver Ophera Windfury",npcid=18906,x=23.4,y=36.4},
	},
	["Zangarmarsh"]={
		{name="Zabra'jin",faction="H",npc="Merajit",npcid=18245,x=30.66,y=50.93},
		{name="Firefly Tavern",faction="B",npc="Innkeeper Coryth Stoktron",npcid=18907,x=78.6,y=63.0},
		{name="Orebor Harborage",faction="A",npc="Innkeeper Kerp",npcid=18908,x=41.9,y=26.3},
		{name="Zangarmarsh",faction="A",npc="Caregiver Abidaar",npcid=18251,x=67.2,y=49.0},
	},
	["Terokkar Forest"]={
		{name="Allerian Stronghold",faction="A",npc="Innkeeper Biribi",npcid=19296,x=56.7,y=53.3},
		{name="Stonebreaker Hold",faction="H",npc="Innkeeper Grilka",npcid=18957,x=48.8,y=45.0},
	},
	["Nagrand"]={
		{name="Telaar",faction="A",npc="Caregiver Isel",npcid=18914,x=54.22,y=76.11},
		{name="Garadar",faction="H",npc="Matron Tikkit",npcid=18913,x=56.6,y=34.6},
	},
	["Blade\'s Edge Mountains"]={
		{name="Sylvanaar",faction="A",npc="Innkeeper Shaunessy",npcid=19495,x=35.8,y=63.9},
		{name="Toshley's Station",faction="A",npc="Fizit \"Doc\" Clocktok",npcid=21110,x=61.0,y=68.1},
		{name="Thunderlord Stronghold",faction="H",npc="Gholah",npcid=19470,x=53.2,y=55.4},
		{name="Mok'Nathal Village",faction="H",npc="Matron Varah",npcid=21088,x=76.0,y=60.2},
		{name="Evergrove",faction="B",npc="Innkeeper Aelerya",npcid=22922,x=62.8,y=38.2},
	},
	["Shadowmoon Valley"]={
		{name="Shadowmoon Village",faction="H",npc="Innkeeper Darg Bloodclaw",npcid=19319,x=30.2,y=27.8},
		{name="Altar of Sha'tar",faction="B",npc="Caretaker Aluuro",npcid=21746,x=61.0,y=28.2},-- // ALDOR ONLY
		{name="Sanctum of the Stars",faction="B",npc="Roldemar",npcid=21744,x=56.2,y=59.8},-- // SCRYER ONLY
		{name="Wildhammer Stronghold",faction="A",npc="Dreg Cloudsweeper",npcid=19352,x=37.0,y=58.2},
	},
	["Shattrath City"]={
		{name="Shattrath City",faction="B",npc="Minalei",npcid=19046,x=28.2,y=48.4},-- // ALDOR ONLY
		{name="Scryer's Tier",faction="B",npc="Innkeeper Haelthol",npcid=19232,x=56.2,y=81.6},-- // SCRYER ONLY
	},
	["Netherstorm"]={
		{name="Rusty Rocket Tavern",faction="B",npc="Innkeeper Remi Dodoso",npcid=19571,x=32.0,y=64.4},
		{name="The Stormspire",faction="B",npc="Eyonix",npcid=19531,x=43.4,y=36.0},
	},


	------------------------------------
	-----     EASTERN KINGDOMS     -----
	------------------------------------

	["Gilneas 2"]={
		{name="Duskhaven",faction="A",npc="Willa Arnes",npcid=38791,x=36.8,y=65.6},
		{name="Stormglen Village",faction="A",npc="Willa Arnes",npcid=38792,x=60.06,y=91.67},
	},
	["Dun Morogh"]={
		--{name="Gnomeregan",faction="A",npc="Nevin Twistwrench",npcid=45966,x=25.7,y=31.9}, --This ports to a submap of DM. Kind of a mess, should never be used because it goes backwards.
		{name="Thunderbrew Distillery",faction="A",npc="Innkeeper Belm",npcid=1247,x=54.5,y=50.8},
	},
	["Elwynn Forest"]={
		{name="Lion's Pride Inn",faction="A",npc="Innkeeper Farley",npcid=295,x=43.8,y=65.8},
		{name="Elwynn Forest",faction="A",npc="Aysa Cloudsinger",npcid=60566,x=74.2,y=92.4},
	},
	["Ironforge"]={
		{name="The Stonefire Tavern",faction="A",npc="Innkeeper Firebrew",npcid=5111,x=18.6,y=51.6},
	},
	["Stormwind City"]={
		{name="Trade District",faction="A",npc="Innkeeper Allison",npcid=6740,x=60.8,y=74.8},
		{name="Old District",faction="A",npc="Maegan Tillman",npcid=44237,x=75.5,y=54.2},
		{name="Dwarven District",faction="A",npc="Thaegra Tillstone",npcid=44235,x=64.8,y=32.3},
	},
	["Loch Modan"]={
		{name="Stoutlager Inn",faction="A",npc="Innkeeper Hearthstove",npcid=6734,x=35.5,y=48.4},
		{name="The Farstrider Lodge",faction="A",npc="Vyrin Swiftmend",npcid=1156,x=81.9,y=64.5},
	},
	["Westfall"]={
		{name="Sentinel Hill",faction="A",npc="Innkeeper Heather",npcid=8931,x=52.8,y=53.6},
	},
	["Redridge Mountains"]={
		{name="Lakeshire",faction="A",npc="Innkeeper Brianna",npcid=6727,x=26.4,y=41.4},
	},
	["Wetlands"]={
		{name="Deepwater Tavern",faction="A",npc="Innkeeper Helbrek",npcid=1464,x=10.7,y=60.8},
		{name="Greenwarden's Grove",faction="A",npc="Innkeeper Larisal",npcid=43993,x=58.2,y=39.2},
		{name="Swiftgear Station",faction="A",npc="Innkeeper Daughny",npcid=44006,x=25.6,y=25.8},
	},
	["Duskwood"]={
		{name="Darkshire",faction="A",npc="Innkeeper Trelayne",npcid=6790,x=73.9,y=44.4},
	},
	["Tirisfal Glades"]={
		{name="Brill",faction="H",npc="Innkeeper Renee",npcid=5688,x=60.8,y=51.6},
		{name="The Bulwark",faction="H",npc="Provisioner Elda",npcid=46271,x=83.0,y=71.8},
	},
	["Deathknell"]={
		{name="Deathknell Graves",faction="H",npc="",npcid=0,x=40.5,y=78.5},
	},
	["Eversong Woods"]={
		{name="Falconwing Inn",faction="H",npc="Innkeeper Delaniel",npcid=15433,x=48.1,y=47.7},
		{name="Fairbreeze Village",faction="H",npc="Marniel Amberlight",npcid=15397,x=43.67,y=71.32},
	},
	["Undercity"]={
		{name="The Trade Quarter",faction="H",npc="Innkeeper Norman",npcid=6741,x=67.8,y=38.6},
	},
	["Silvermoon City"]={
		{name="The Royal Exchange",faction="H",npc="Innkeeper Velandra",npcid=16618,x=79.6,y=58.6},
		{name="The Bazaar",faction="H",npc="Innkeeper Jovia",npcid=17630,x=79.6,y=58.6},
	},
	["Silverpine Forest"]={
		{name="The Sepulcher",faction="H",npc="Innkeeper Velandra",npcid=6739,x=46.4,y=42.6},
		{name="Forsaken Rear Guard",faction="H",npc="Commander Hickley",npcid=45496,x=44.4,y=20.6},
	},
	["Ghostlands"]={
		{name="Tranquillien",faction="H",npc="Innkeeper Kalarin",npcid=16542,x=48.8,y=32.4},
	},
	["Hillsbrad Foothills"]={
		{name="Tarren Mill",faction="H",npc="Innkeeper Shay",npcid=2388,x=57.8,y=47.2},
		{name="The Sludge Fields",faction="H",npc="Innkeeper Hershberg",npcid=49394,x=35.8,y=61.2},
		{name="Eastpoint Tower",faction="H",npc="Innkeeper Durgens",npcid=49430,x=59.6,y=64.8},
	},
	["Arathi Highlands"]={
		{name="Refuge Pointe",faction="A",npc="Vikki Lonsav",npcid=2808,x=39.9,y=49.0},
		{name="Hammerfall",faction="H",npc="Innkeeper Adegwa",npcid=7731,x=69.0,y=33.2},
	},
	["Northern Stranglethorn"]={
		{name="Fort Livingston",faction="A",npc="Livingston Marshal",npcid=44019,x=53.2,y=66.8},
		{name="Grom'gol Base Camp",faction="H",npc="Innkeeper Thulbek",npcid=5814,x=37.2,y=51.8},
	},
	["The Cape of Stranglethorn"]={
		{name="Booty Bay",faction="B",npc="Innkeeper Skindle",npcid=6807,x=40.8,y=73.8},
		{name="Hardwrench Hideaway",faction="H",npc="Innkeeper Draxle",npcid=44190,x=35.08,y=27.20},
	},
	["Swamp of Sorrows"]={
		{name="Bogpaddle",faction="B",npc="Cap'n Geech",npcid=47334,x=71.7,y=13.9},
		{name="The Harborage",faction="A",npc="Verad",npcid=47367,x=29.0,y=32.5},
		{name="Stonard",faction="H",npc="Innkeeper Karakul",npcid=6930,x=46.8,y=56.8},
	},
	["Badlands"]={
		{name="Dragon's Mouth",faction="A",npc="Ivan Zypher",npcid=48093,x=20.7,y=56.2},
		{name="New Kargath",faction="H",npc="Innkeeper Shul\'kar",npcid=9356,x=18.2,y=42.8},
		{name="Fuselight-By-The-Sea",faction="B",npc="The Great Pisani",npcid=49934,x=90.0,y=37.6},
		{name="Fuselight",faction="B",npc="Sally Gearwell",npcid=48054,x=65.8,y=35.6},
	},
	["The Hinterlands"]={
		{name="Stormfeather Outpost",faction="A",npc="Innkeeper Keirnan",npcid=43699,x=66.2,y=44.4},
		{name="Aerie Peak",faction="A",npc="Innkeeper Thulfram",npcid=7744,x=14.0,y=44.8},
		{name="Revantusk Village",faction="H",npc="Lard",npcid=14731,x=78.2,y=81.2},
		{name="Hiri'watha Research Station",faction="H",npc="Bitsy",npcid=43739,x=31.8,y=58.0},
	},
	["Eastern Plaguelands"]={
		{name="Light's Hope Chapel",faction="B",npc="Jessica Chambers",npcid=16256,f=20,x=44.01,y=89.49},
	},
	["Isle of Quel\'Danas"]={
		{name="Sun's Reach Harbor",faction="B",npc="Caregiver Inaara",npcid=25036,x=51.2,y=33.4},
	},
	["Western Plaguelands"]={
		{name="Chillwind Camp",faction="A",npc="Mother Matterly",npcid=46269,x=43.4,y=84.6},
		{name="Andorhal",faction="H",npc="Roman Garner",npcid=47857,x=48.2,y=63.8},
	},
	["Blasted Lands"]={
		{name="Surwich",faction="A",npc="Donna Berrymore",npcid=44334,x=44.4,y=87.6},
		{name="Nethergarde Keep",faction="A",npc="Mama Morton",npcid=44325,x=60.7,y=14.0},
		{name="Dreadmaul Hold",faction="H",npc="Innkeeper Grak",npcid=44309,x=40.4,y=11.4},
	},
	["Kelp\'thar Forest"]={
		{name="The Briny Cutter",faction="A",npc="Erunak Stonespeaker",npcid=40697,x=45.2,y=23.4},
		{name="Legion's Fate",faction="H",npc="Erunak Stonespeaker",npcid=41794,x=39.6,y=30.8},
		{name="Deepmist Grotto",faction="B",npc="Erunak Stonespeaker",npcid=41341,x=63.8,y=59.8},
	},
	["Shimmering Expanse"]={
		{name="Silver Tide Hollow",faction="A",npc="Caretaker Movra",npcid=39878,x=49.2,y=41.9},
		{name="Tranquil Wash",faction="A",npc="Anissa Matherly",npcid=42873,x=49.7,y=57.4},
		{name="Legion's Rest",faction="H",npc="Zun'ja",npcid=42908,x=51.6,y=62.6},
	},
	["Abyssal Depths"]={
		{name="Darkbreak Cove",faction="A",npc="Barracks Officer Milson",npcid=42963,x=54.8,y=72.1},
		{name="Tenebrous Cavern",faction="H",npc="Innkeeper Nerius",npcid=43141,x=51.2,y=60.6},
	},
	["Twilight Highlands"]={
		{name="Thundermar",faction="A",npc="Naveen Tendernose",npcid=49591,x=49.5,y=30.4},
		{name="Highbank",faction="A",npc="Innkeeper Francis",npcid=49688,x=79.4,y=78.5},
		{name="Highbank",faction="A",npc="Innkeeper Teresa",npcid=49686,x=79.0,y=77.6},
		{name="Firebeard's Patrol",faction="A",npc="Innkeeper Corlin",npcid=49795,x=60.4,y=58.0},
		{name="Kirthaven",faction="A",npc="Vaughn Blusterbeard",npcid=49574,x=54.6,y=18.0},
		{name="Victor's Point",faction="A",npc="Ben Mora",npcid=49599,x=43.6,y=57.3},
		{name="Dragonmaw Port",faction="H",npc="Innkeeper Lutz",npcid=49498,x=75.8,y=52.6},
		{name="The Krazzworks",faction="H",npc="Innkeeper Geno",npcid=49783,x=75.4,y=16.6},
		{name="Bloodgulch",faction="H",npc="Innkeeper Turk",npcid=49762,x=53.2,y=42.8},
		{name="Crushblow",faction="H",npc="Innkeeper Krum",npcid=49747,x=45.2,y=76.4},
	},


	----------------------------
	-----     KALIMDOR     -----
	----------------------------

	
	["Valley of Trials"]={
		{name="Valley of Trials",faction="H",npc="Kaltunk",npcid=10176,x=45.2,y=68.7},
	},
	["Teldrassil"]={
		{name="Dolanaar",faction="A",npc="Innkeeper Keldamyr",npcid=6736,x=55.4,y=52.2},
	},
	["Shadowglen"]={
		{name="Shadowglen",faction="A",npc="Ilthalaine",npcid=2079,x=45.5,y=74.7},
	},
	["Ammen Vale"]={
		{name="Ammen Vale",faction="A",x=61.39,y=29.48}, -- no innkeeper npc
	},
	["Azuremyst Isle"]={
		{name="Azure Watch",faction="A",npc="Caregiver Chellan",npcid=16553,x=48.4,y=49.2},
	},
	["Darnassus"]={
		{name="Craftsmen's Terrace",faction="A",npc="Innkeeper Saelienne",npcid=6735,x=62.4,y=32.8},
	},
	["Darkshore"]={
		{name="Lor'danel",faction="A",npc="Innkeeper Kyteran",npcid=43420,x=50.92,y=18.63},
	},
	["The Exodar"]={
		{name="The Exodar",faction="A",npc="Caregiver Breel",npcid=16739,x=59.91,y=19.45},
	},
	["Bloodmyst Isle"]={
		{name="Blood Watch",faction="A",npc="Caregiver Topher Loaal",npcid=17553,x=55.6,y=59.6},
	},
	["Ashenvale"]={
		{name="Astranaar",faction="A",npc="Innkeeper Kimlya",npcid=6738,x=37.0,y=49.2},
		{name="Splintertree Post",faction="H",npc="Innkeeper Kaylisk",npcid=12196,x=74.0,y=60.6},
		{name="Silverwind Refuge",faction="H",npc="Innkeeper Chin'toka",npcid=43633,x=50.4,y=67.0},
		{name="Zoram'gar Outpost",faction="H",npc="Innkeeper Duras",npcid=43606,x=12.8,y=34.0},
		{name="Hellscream's Watch",faction="H",npc="Innkeeper Linkasa",npcid=43624,x=38.6,y=42.2},
	},
	["Stonetalon Mountains"]={
		{name="Fallowmere Inn",faction="A",npc="Alithia Fallowmere",npcid=40898,x=59.0,y=56.4},
		{name="Northwatch Expedition Base Camp",faction="A",npc="Lyanath",npcid=41286,x=71.1,y=79.1},
		{name="Thal\'darah Overlook",faction="A",npc="Valos Shadowrest",npcid=41491,x=39.4,y=32.8},
		{name="Farwatcher's Glen",faction="A",npc="Innkeeper Bernice",npcid=44177,x=31.4,y=60.6},
		{name="Krom'gar Fortress",faction="H",npc="Felonius Stark",npcid=41892,x=66.4,y=64.2},
		{name="Sun Rock Retreat",faction="H",npc="Innkeeper Jayka",npcid=7731,x=50.4,y=63.8},
	},
	["Desolace"]={
		{name="Nijel's Point",faction="A",npc="Innkeeper Lyshaerya",npcid=11103,x=66.2,y=6.6},
		{name="Shadowprey Village",faction="H",npc="Innkeeper Sikewa",npcid=11106,x=24.0,y=68.2},
		{name="Karnum's Glade",faction="B",npc="Innkeeper Dessina",npcid=43872,x=56.8,y=50.0},
	},
	["Dustwallow Marsh"]={
		{name="Theramore Isle",faction="A",npc="Innkeeper Janene",npcid=6272,x=66.6,y=45.2},
		{name="Brackenwall Village",faction="H",npc="\"Little\" Logok",npcid=24208,x=36.8,y=32.2},
		{name="Mudsprocket",faction="B",npc="Axle",npcid=23995,x=41.8,y=74.0},
	},
	["Felwood"]={
		{name="Talonbranch Glade",faction="A",npc="Denmother Ulrica",npcid=47931,x=61.8,y=26.6},
		{name="Wildheart Point",faction="B",npc="Innkeeper Teenycaugh",npcid=48599,x=44.0,y=61.8},
		{name="Whisperwind Grove",faction="B",npc="Innkeeper Wylaria",npcid=48215,x=44.8,y=29.0},
	},
	["Tanaris"]={
		{name="The Road Warrior",faction="B",npc="Innkeeper Fizzgrimble",npcid=7733,x=52.6,y=27.0},
		{name="Bootlegger Outpost",faction="B",npc="Carmen Ibanozzle",npcid=38714,x=55.6,y=60.8},
	},
	["Durotar"]={
		{name="Razor Hill",faction="H",npc="Innkeeper Grosk",npcid=6928,x=51.6,y=41.6},
		{name="The Dranosh'ar Blockade",faction="H",npc="Ji Firepaw",npcid=60570,x=45.6,y=13.1},
	},
	["Kezan"]={
		{name="KTC Headquarters",faction="H",npc="Sassy Hardwrench",npcid=34668,x=56.8,y=77.0},
	},
	["The Lost Isles"]={
		{name="Shipwreck Shore",faction="H",npc="Grimy Greasefingers",npcid=36496,x=28.0,y=75.8},
		{name="Town-In-A-Box",faction="H",npc="Grimy Greasefingers",npcid=42473,x=45.0,y=65.4},
		{name="Warchief's Lookout",faction="H",npc="Grimy Greasefingers",npcid=42473,x=36.8,y=43.2},
	},
	["Mulgore"]={
		{name="Bloodhoof Village",faction="H",npc="Innkeeper Kauth",npcid=6747,x=46.8,y=60.4},
	},
	["Orgrimmar"]={
		{name="Orgrimmar",faction="H",npc="Innkeeper Gryshka",npcid=6929,x=53.6,y=78.8},
		{name="Valley of Strength",faction="H",npc="Innkeeper Gryshka",npcid=6929,x=53.6,y=78.8},
		{name="Valley of Honor",faction="H",npc="Innkeeper Nufa",npcid=46642,x=70.6,y=49.2},
		{name="Valley of Wisdom",faction="H",npc="Miwana",npcid=44785,x=39.2,y=48.4},
		{name="Goblin Slums",faction="H",npc="Tinza Silvermug",npcid=45563,x=39.8,y=81.0},
		{name="Valley of Spirits",faction="H",npc="Sijambi",npcid=45086,x=32.8,y=65.6},
	},
	["Thunder Bluff"]={
		{name="Lower Rise",faction="H",npc="Innkeeper Pala",npcid=6746,x=45.8,y=64.6},
	},
	["Northern Barrens"]={
		{name="The Crossroads",faction="H",npc="Innkeeper Boorand Plainswind",npcid=3934,x=49.6,y=58.0},
		{name="Grol'dom Farm",faction="H",npc="Innkeeper Kerntis",npcid=43946,x=56.2,y=40.0},
		{name="Nozzlepot's Outpost",faction="H",npc="Innkeeper Kritzle",npcid=43945,x=62.4,y=16.6},
		{name="Ratchet",faction="B",npc="Innkeeper Wiley",npcid=6791,x=67.2,y=74.6},
	},
	["Southern Barrens"]={
		{name="Honor's Stand",faction="A",npc="Logistics Officer Renaldo",npcid=44219,x=39.0,y=11.0},
		{name="Northwatch Hold",faction="A", npc="Keep Watcher Kerry",npcid=44268,x=65.6,y=46.6},
		{name="Fort Triumph",faction="A", npc="Logistics Officer Salista",npcid=44267,x=49.0,y=68.5},
		{name="Camp Taurajo",faction="H",npc="Byula",npcid=7714,x=44.2,y=33.6},
		{name="Hunter's Hill",faction="H",npc="Innkeeper Hurnahet",npcid=44270,x=39.2,y=20.0},
		{name="Desolation Hold",faction="H",npc="Innkeeper Lhakadd",npcid=44276,x=40.8,y=69.2},
	},
	["Thousand Needles"]={
		{name="Speedbarge Bar",faction="B",npc="Daisy",npcid=40832,x=76.4,y=74.6},
	},
	["Feralas"]={
		{name="Dreamer's Rest",faction="A",npc="Andoril",npcid=40968,x=51.0,y=17.8},
		{name="Feathermoon Stronghold",faction="A",npc="Innkeeper Shyria",npcid=44391,x=46.0,y=45.2},
		{name="Camp Mojache",faction="H",npc="Innkeeper Greul",npcid=7737,x=74.8,y=45.2},
		{name="Camp Ataya",faction="H",npc="Adene Treetotem",npcid=40467,x=41.4,y=15.6},
		{name="Stonemaul Hold",faction="H",npc="Chonk",npcid=44376,x=51.8,y=47.6},
	},
	["Winterspring"]={
		{name="The Laughing Yeti",faction="B",npc="Innkeeper Vizzie",npcid=11118,x=59.8,y=51.8},
	},
	["Silithus"]={
		{name="The Oasis Inn",faction="B",npc="Calandrath",npcid=15174,x=55.4,y=36.6},
	},
	["Searing Gorge"]={
		{name="Iron Summit",faction="B",npc="Velma Rockslide",npcid=47942,x=39.4,y=66.2},
	},
	["Un\'Goro Crater"]={
		{name="Marshal's Stand",faction="B",npc="Innkeeper Dreedle",npcid=38488,x=55.2,y=62.2},
	},
	["Uldum"]={
		{name="Ramkahen",faction="B",npc="Kazemde",npcid=48886,x=54.7,y=32.9},
		{name="Oasis of Vir'sar",faction="B",npc="Yasmin",npcid=49406,x=26.6,y=7.3},
		{name="Schnottz's Hostel",faction="B",npc="Arcane Guest Registry",npcid=49528,x=22.0,y=64.4},
	},
	["Uldum New"]={
		{name="Ramkahen",faction="B",npc="Kazemde",npcid=162938,x=54.67,y=32.93},
		{name="Oasis of Vir'sar",faction="B",npc="Yasmin",npcid=163252,x=26.62,y=7.24},
	},
	["Mount Hyjal"]={
		{name="Nordrassil Inn",faction="B",npc="Sebelia",npcid=40843,x=63.1,y=24.1},
		{name="Shrine of Aviana",faction="B",npc="Isara Riverstride",npcid=50068,x=42.6,y=45.6},
		{name="Grove of Aessina",faction="B",npc="Salirn Moonbear",npcid=53779,x=18.6,y=37.2},
	},
	["Deepholm"]={
		{name="Temple of Earth",faction="B",npc="Caretaker Nuunwa",npcid=45300,x=49.8,y=52.0},
	},

}