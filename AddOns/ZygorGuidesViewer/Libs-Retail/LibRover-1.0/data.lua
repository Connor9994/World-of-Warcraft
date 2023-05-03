local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.version={
	nodes_version = 466,  -- Increase this when working on the nodes. Connections will be baked automatically when committing.
}

-- These are kept strictly unique. Make up bogus names if you need to.
-- If multiple numbers are given, then only the first one is used here; others are used by Pointer to define phasedMaps.

data.MapIDsByName = {

--World Zones
["Argus"] = {[0]=905},
["Azeroth"] = {[0]=947},
["Broken Isles"] = {[0]=619},
["Cosmic"] = {[0]=946},
["Draenor"] = {[0]=572},
["Eastern Kingdoms"] = {[0]=13},
["Kalimdor"] = {[0]=12},
["Kul Tiras"] = {[0]=876, [1]=1014},
["Northrend"] = {[0]=113},
["Outland"] = {[0]=101},
["Pandaria"] = {[0]=424},
["The Maelstrom Continent"] = {[0]=948},
["Zandalar"] = {[0]=875, [1]=1011},
["The Shadowlands"] = {[0]=1550,[1]=1647},
["Dragon Isles"] = {[0]=1978},



---------------------------------
-------    DRAGONFLIGHT   -------
---------------------------------
["The Forbidden Reach"] = {[0]=2118,[1]=2107,[2]=2026,[3]=2110,[4]=2109},
["The Azure Vault"] = {[0]=2077,[1]=2076,[2]=2075,[3]=2074,[4]=2073},
["Azmerloth"] = {[0]=2092},
["Brackenhide Hollow"]={[0]=2096,[1]=2106},
["Dragon Isles"] = {[0]=1978,[1]=2057,[2]=2063,[3]=2079},
["Halls of Infusion"] = {[0]=2082,[1]=2083},
["Neltharus"] = {[0]=2080,[1]=2081},
["Ohn'ahran Plains"] = {[0]=2023},
["Pandaren Revolution"] = {[0]=2088},
["Primalist Tomorrow"] = {[0]=2085},
["Redridge Mountains"] = {[0]=1260},
["Resonant Peaks"] = {[0]=2059},
["Ruby Life Pools"] = {[0]=2095,[1]=2094},
["Thaldraszus"] = {[0]=2025},
["The Azure Span"] = {[0]=2024,[1]=2132},
["The Black Empire"] = {[0]=2089},
["The Gnoll War"] = {[0]=2090},
["The Nokhud Offensive"] = {[0]=2093},
["The Waking Shores"] = {[0]=2022},
["Uldaman Legacy of Tyr"] = {[0]=2071,[1]=2072},
["Valdrakken"] = {[0]=2112},
["War of the Shifting Sands"] = {[0]=2091},
["Algeth'ar Academy"] = {[0]=2099,[1]=2097,[2]=2098},
["Vault of the Incarnates"] = {[0]=2123,[1]=2124,[2]=2122,[3]=2119,[4]=2126,[5]=2120,[6]=2121,[7]=2125},
["The Emerald Dreamway DF"]={[0]=2084},




---------------------------------------------------------------
-------			SHADOWLANDS			-------
---------------------------------------------------------------
["Exile's Reach"] = {[0]=1409},
["Icecrown Citadel Intro"] = {[0]=1681, [1]=1682, [2]=1360, [3]=1359},
["The Maw Intro"] = {[0]=1648},
["Oribos"] = {[0]=1670, [1]=1671, [2]=1672, [3]=1673, [4]=1613},
["Bastion"] = {[0]=1533, [1]=1690},
["Elysian Hold"] = {[0]=1707, [1]=1708},
["Maldraxxus"] = {[0]=1536, [1]=1652},
["Sightless Hold"] = {[0]=1650},
["Ardenweald"] = {[0]=1565, [1]=1829, [2]=1818, [3]=1824, [4]=1709},
["Battle of Ardenweald"] = {[0]=2005},
["Revendreth"] = {[0]=1525},
["Ember Court"] = {[0]=1644},
["The Maw"] = {[0]=1543},
["The Maw M"] = {[0]=1960},--Maldraxxus questline
["Val'sharah SDL"] = {[0]=1642},
["Heart of the Forest"] = {[0]=1701, [1]=1702, [2]=1703},
["Fungal Terminus"] = {[0]=1819},
["The Root Cellar"] = {[0]=1826, [1]=1827, [2]=1828, [3]=1825},
["Sinfall"] = {[0]=1699, [1]=1700},
["Seat of the Primus"] = {[0]=1698},
["Torghast"] = {[0]=1911, [1]=1656, [2]=1752, [3]=1751, [4]=1753, [5]=1705, [6]=1765, [7]=1627, [8]=1758, [9]=1763, [10]=1769, [11]=1985 },
["The Runecarver"] = {[0]=1912},
["Maldraxxus Venthyr Scenario"] = {[0]=1689},
["Shattered Grove"] = {[0]=1691},
["Pit of Anguish"] = {[0]=1821, [1]=1820},
["Altar of Domination"] = {[0]=1823},
["Revendreth Scenario"] = {[0]=1688},
["Extractor's Sanatorium"] = {[0]=1822},
["Night Fae Torghast"] = {[0]=1720},
["Path of Wisdom"] = {[0]=1713},
["Queen's Conservatory"] = {[0]=1662},
["Ascension Coliseum"] = {[0]=1711},
["Third Chamber of Kalliope"] = {[0]=1714},
["Etheric Vault"] = {[0]=1649},
["Chill's Reach"] = {[0]=1717},
["Battle of Ardenweald"] = {[0]=2005},
["Korthia"] = {[0]=1961},
["9.1 Skyhold"] = {[0]=1971},
["Caverns of Contemplation"] = {[0]=2006},
["Chamber of the Sigil"] = {[0]=2008},
["Ossuary of the Banished"] = {[0]=1969},
["Seat of the Archon"] = {[0]=2018},
["The Gilded Landing"] = {[0]=2016},
["Gromit Hollow"] = {[0]=2007},
["Spires of Ascension SL"] = {[0]=2017},
["The Crucible"] = {[0]=2042},
["Zereth Mortis"] = {[0]=1970},
["Locrian Esper"] = {[0]=2028},
["Gravid Repose"] = {[0]=2029},
["Nexus of Actualization"] = {[0]=2030},
["Crypts of the Eternal"] = {[0]=2031},
["Catalyst Wards"] = {[0]=2066},
["Blooming Foundry"] = {[0]=2027},
["Tirisfal Glades L"] = {[0]=2070},

--Shadowlands Dungeons--
["Theater of Pain"] = {[0]=1687, [1]=1686, [2]=1685, [3]=1684, [4]=1683},
["De Other Side"] = {[0]=1678, [1]=1677, [2]=1679, [3]=1680},
["Halls of Atonement"] = {[0]=1663, [1]=1664, [2]=1665},
["Plaguefall"] = {[0]=1697, [1]=1674},
["The Necrotic Wake"] = {[0]=1666, [1]=1667, [2]=1668},
["Spires of Ascension"] = {[0]=1692, [1]=1693, [2]=1694, [3]=1695},
["Sanguine Depths"] = {[0]=1676, [1]=1675},
["Mists of Tirna Scithe"] = {[0]=1669},
["Tazavesh, the Veiled Market"] = {[0]=1993, [1]=1996, [2]=1997, [3]=1995, [4]=1992, [5]=1991, [6]=1990, [7]=1989},

--Shadowlands Raids--
["Castle Nathria"] = {[0]=1750, [1]=1745, [2]=1746, [3]=1735, [4]=1744, [5]=1748, [6]=1747, [7]=1755},
["Sanctum of Domination"] = {[0]=1998, [1]=1999, [2]=2000, [3]=2001, [4]=2002, [5]=2003, [6]=2004},

["Sepulcher of the First Ones"] = {[0]=2061, [1]=2048, [2]=2049, [3]=2051, [4]=2052, [5]=2050, [6]=2047, [7]=2055},



---------------------------------------
-------    BATTLE FOR AZEROTH   -------
---------------------------------------

--Kul Tiras
["Boralus"] = {[0]=1161},
["Drustvar"] = {[0]=896, [1]=1045},
["Stormsong Valley"] = {[0]=942, [1]=1179, [2]=1180, [3]=1183, [4]=1182},
["Tiragarde Sound"] = {[0]=895, [1]=1171, [2]=1172, [3]=1185, [4]=1184},
["The Great Sea"] = {[0]=1157},

--Zandalar
["Nazmir"] = {[0]=863},
["Vol'dun"] = {[0]=864,[1]=1009},
["Zuldazar"] = {[0]=862, [1]=1173, [2]=1174, [3]=1176, [4]=1177,[5]=1181},
["Dazar'alor"] = {[0]=1165, [1]=1163, [2]=1164, [3]=1166, [4]=1167},

--BFA Dungeon
["Atal'Dazar"] = {[0]=934,[1]=935},
["Freehold"] = {[0]=936},
["Shrine of the Storm"] = {[0]=1039,[1]=1040},
["Tol Dagor"] = {[0]=974,[1]=975,[2]=976,[3]=977,[4]=978,[5]=979,[6]=980},
["Tol Dagor Isle"] = {[0]=1169},
["King's Rest"] = {[0]=1004},
["Temple of Sethraliss"] = {[0]=1038,[1]=1043},
["Waycrest Manor"] = {[0]=1015,[1]=1016,[2]=1017,[3]=1018,[4]=1029},
["The MOTHERLODE!!"] = {[0]=1010},
["Uldir"] = {[0]=1148, [1]=1149, [2]=1150, [3]=1151, [4]=1152, [5]=1153, [6]=1154, [7]=1155},
["Siege of Boralus"] = {[0]=1162},

--BFA Raid
["Battle of Dazar'alor"] = {[0]=1352, [1]=1353, [2]=1354, [3]=1356, [4]=1357, [5]=1358, [6]=1364, [7]=1367},
["Crucible of Storms"] = {[0]=1363},
["Ring of Containment"] = {[0]=1381},
["The Oblivion Door"] = {[0]=1382},


--Island Expeditions
["Uncharted Island"] = {[0]=1022},
["Un'gol Ruins"] = {[0]=981},
["Havenswood"] = {[0] = 1336},


--Patch 8.1
["Tol Dagor Scenario"] = {[0]=1349,[1]=1351,[2]=1350},
["Zandalari Treasury"] = {[0]=1348},
["Arathi Warfront"] = {[0]=1044},
["Darkshore Warfront"] = {[0]=1332},
["Darkshore H"] = {[0]=1333},

--Shadowforge City
["Shadowforge City"] = {[0]=1186},

--Mag'har Allied Race Gorgrond Scenario
["Gorgrond Maghar Scenario"] = {[0]=1170},

--Prison of Ink
["Prison of Ink"] = {[0]=1407},

--Icecrown Citadel Scenario
["Icecrown Citadel L"] = {[0]=1359},

--Patch 8.2.5
["Durotar War Campaign"] = {[0]=1535},
["Orgrimmar War Campaign"] = {[0]=1534},

--Patch 8.3
["Orgrimmar Vision"] = {[0]=1469},
["Stormwind Vision"] = {[0]=1470},
["Uldum New"] = {[0]=1527},
["Vale of Eternal Blossoms New"] = {[0]=1530},
["Crapopolis Scenario"] = {[0]=1531},
["Crapopolis"] = {[0]=1532},
["BWD Scenario"] = {[1]=1538,[0]=1539},
["Halls of Origination S"] = {[0]=1540,[1]=1541,[2]=1542},
["Mogu Palace New"] = {[1]=1544,[0]=1545},
["Mogu Vaults New"] = {[1]=1548,[0]=1549},
["Vale Vision"] = {[0]=1570},
["Uldum Vision"] = {[0]=1571},
["Mechagon City"] = {[0]=1574,[1]=1573},
["Gilneas Scenario"] = {[0]=1577},
["BRD Pet Battle"] = {[0]=1578},
["Ny'alotha, the Waking City"] = {[0]=1596,[1]=1595,[2]=1594,[3]=1597,[4]=1590,[5]=1591,[6]=1592,[7]=1593,[8]=1582,[9]=1581,[10]=1580},
["CoH Scenario"] = {[0]=1604},
["The Frozen Throne"] = {[0]=1602},
["Pools of Power"] = {[0]=1579},

-------------------------------------
-------    EASTERN KINGDOMS   -------
-------------------------------------

["Abyssal Depths"] = {[0]=204},
["Alterac Valley"] = {[0]=91},
["Arathi Highlands"] = {[0]=14},
["Blasted Lands"] = {[0]=17},
["Burning Steppes"] = {[0]=36,[14]=33,[15]=34,[16]=35}, -- bfa alpha 14,15,16 were marked as searing gorge
["The Cape of Stranglethorn"] = {[0]=210},
["Coldridge Valley"] = {[0]=427,[9]=428},
["Deadwind Pass"] = {[0]=42,[21]=41,[22]=43,[23]=44,[24]=45,[27]=46},
["Deeprun Tram"] = {[1]=499,[2]=500},
["Dun Morogh"] = {[0]=27,[6]=28,[7]=29,[10]=30,[11]=31},
["Duskwood"] = {[0]=47},
["Eastern Plaguelands"] = {[0]=23,[20]=24},
["Elwynn Forest"] = {[0]=37,[1]=38,[2]=39,[19]=40},
["Gnomeregan Scenario"] = {[0]=840,[1]=841,[2]=842},
["Gnomeregan Heritage"] = {[0]=1380},
["Hillsbrad Foothills"] = {[0]=25},
["The Hinterlands"] = {[0]=26},
["Ironforge"] = {[0]=87,[1]=1361},
["Kelp'thar Forest"] = {[0]=201},
["Loch Modan"] = {[0]=48},
["New Tinkertown"] = {[0]=469,[8]=470},
["Northern Stranglethorn"] = {[0]=50},
["Northshire"] = {[0]=425,[3]=426},
["Redridge Mountains"] = {[0]=49},
["Searing Gorge"] = {[0]=32,},
["Shimmering Expanse"] = {[0]=205},
["Stormwind City"] = {[0]=84},
["Stranglethorn Vale"] = {[0]=224},
["Swamp of Sorrows"] = {[0]=51},
["Twilight Highlands"] = {[0]=241},
["Vashj'ir"] = {[0]=203},
["Western Plaguelands"] = {[0]=22},
["Westfall"] = {[0]=52,[4]=53,[5]=54,[17]=55},
["Wetlands"] = {[0]=56},

--Kalimdor
["Ahn'Qiraj: The Fallen Kingdom"] = {[0]=327},
["Ammen Vale"] = {[0]=468},
["Ashenvale"] = {[0]=63},
["Azshara"] = {[0]=76},
["Azuremyst Isle"] = {[0]=97,[2]=98,[3]=99},
["Badlands"] = {[0]=15,[18]=16},
["Bloodmyst Isle"] = {[0]=106},
["Camp Narache"] = {[0]=462},
["Darkshore"] = {[0]=62},
["Darkshore Scenario"] = {[0]=1338},
["Darnassus"] = {[0]=89},
["Deathknell"] = {[0]=465,[12]=466},
["Desolace"] = {[0]=66,[21]=67,[22]=68},
["Durotar"] = {[0]=1,[8]=2,[10]=3,[11]=4,[12]=5,[19]=6},
["Dustwallow Marsh"] = {[0]=70},
["Echo Isles"] = {[0]=463,[9]=464},
["Eversong Woods"] = {[0]=94},
["The Exodar"] = {[0]=103},
["Felwood"] = {[0]=77},
["Feralas"] = {[0]=69},
["Ghostlands"] = {[0]=95,[1]=96},
["Gilneas"] = {[0]=179,[1]=180,[2]=181,[3]=182},
["Gilneas 2"] = {[0]=179,[1]=180,[2]=181,[3]=182}, -- bfa alpha missing, needs fixing
["Gilneas 3"] = {[0]=179,[1]=180,[2]=181,[3]=182}, -- bfa alpha missing, needs fixing
["Gilneas City"] = {[0]=202},
["The Lost Isles"] = {[0]=174,[1]=175,[2]=176,[3]=177,[4]=178},
["Moonglade"] = {[0]=80},
["Mulgore"] = {[0]=7,[6]=8,[7]=9},
["Northern Barrens"] = {[0]=10,[20]=11},
["Orgrimmar"] = {[1]=85,[2]=86},
["Shadowglen"] = {[0]=460},
["Silithus"] = {[0]=81,[13]=82},
["Silvermoon City"] = {[0]=110},
["Silverpine Forest"] = {[0]=21},
["Southern Barrens"] = {[0]=199},
["Stonetalon Mountains"] = {[0]=65},
["Sunstrider Isle"] = {[0]=467},
["Tanaris"] = {[0]=71,[15]=72,[16]=73,[17]=74,[18]=75},
["Teldrassil"] = {[0]=57,[2]=58,[3]=59,[4]=60,[5]=61},
["Thousand Needles"] = {[0]=64},
["Thunder Bluff"] = {[0]=88},
["Tirisfal Glades"] = {[0]=18,[13]=19,[25]=20},
["Uldum"] = {[0]=249},
["Un'Goro Crater"] = {[0]=78,[14]=79},
["Undercity"] = {[0]=90},
["Valley of Trials"] = {[0]=461},
["Winterspring"] = {[0]=83},

--Outlands
["Blade's Edge Mountains"] = {[0]=105},
["Hellfire Peninsula"] = {[0]=100},
["Nagrand"] = {[0]=107},
["Netherstorm"] = {[0]=109},
["Shadowmoon Valley"] = {[0]=104},
["Shattrath City"] = {[0]=111},
["Terokkar Forest"] = {[0]=108},
["Zangarmarsh"] = {[0]=102},

--Northrend
["Borean Tundra"] = {[0]=114},
["Crystalsong Forest"] = {[0]=127},
["Dalaran"] = {[1]=125,[2]=126},
["Dragonblight"] = {[0]=115},
["Grizzly Hills"] = {[0]=116},
["Howling Fjord"] = {[0]=117},
["Hrothgar's Landing"] = {[0]=170},
["Icecrown"] = {[0]=118},
["Sholazar Basin"] = {[0]=119},
["The Storm Peaks"] = {[0]=120},
["Zul'Drak"] = {[0]=121},
 
 --Pandaria
["Dread Wastes"] = {[0]=422},
["Isle of Giants"] = {[0]=507},
["The Jade Forest"] = {[0]=371,[6]=372,[7]=373,[15]=374,[16]=375},
["Krasarang Wilds"] = {[0]=418,[1]=419,[2]=420,[3]=421},
["Kun-Lai Summit"] = {[0]=379,[8]=380,[9]=381,[10]=382,[11]=383,[12]=384,[17]=385,[20]=386,[21]=387},
["Shrine of Seven Stars"] = {[1]=393,[2]=394}, 
["Shrine of Two Moons"] = {[1]=391,[2]=392},
["Timeless Isle"] = {[0]=554,[22]=555},
["Townlong Steppes"] = {[0]=388,[13]=389},
["Vale of Eternal Blossoms"] = {[0]=390,[1]=395,[2]=396},
["Valley of the Four Winds"] = {[0]=376,[14]=377},
["The Veiled Stair"] = {[0]=433,[5]=434},

 --Draenor
["Ashran"] = {[0]=588,[29]=589},
["Frostfire Ridge"] = {[0]=525,[1]=526,[2]=527,[3]=528,[4]=529,[6]=530,[7]=531,[8]=532,[9]=533},
["Frostwall"] = {[0]=590,[26]=585,[27]=586,[28]=587}, 
["Gorgrond"] = {[0]=543,[16]=544,[17]=545,[18]=546,[19]=547,[20]=548,[21]=549},
["Lunarfall"] = {[0]=582,[23]=579,[24]=580,[25]=581},
["Nagrand D"] = {[0]=550,[10]=551,[11]=552,[12]=553},
["Shadowmoon Valley D"] = {[0]=539,[15]=540,[22]=541},
["Shattrath City 2"] = {[0]=594},
["Spires of Arak"] = {[0]=542},
["Stormshield"] = {[0]=622},
["Talador"] = {[0]=535,[13]=536,[14]=537,[30]=538},
["Tanaan Jungle"] = {[0]=534},
["Warspear"] = {[0]=624},

 --Broken Isles/Argus
["Antoran Wastes"] = {[0]=885,[5]=886,[6]=887},
["Azsuna"] = {[0]=630,[17]=631,[18]=632,[19]=633},
["Broken Shore"] = {[0]=646,[1]=647,[2]=648},
["Broken Shore 2"] = {[0]=676},
["Dalaran L"] = {[4]=626,[10]=627,[11]=628,[12]=629,default=10},
["Eye of Azshara Map"] = {[0]=790},
["Highmountain"] = {[0]=650,[5]=651,[8]=653,[16]=654,[20]=655,[21]=656,[29]=657,[30]=658,[31]=659,[40]=660},
["Krokuun"] = {[0]=830,[1]=831,[2]=832,[7]=833},
["Eredath"] = {[0]=882,[3]=883,[4]=884},
["Stormheim"] = {[0]=634,[1]=635,[9]=636,[25]=637,[26]=638,[27]=639,[28]=640},
["Suramar"] = {[0]=680,[22]=681,[23]=682,[24]=683,[32]=684,[33]=685,[34]=686,[35]=687,[36]=688,[37]=689,[38]=690,[39]=691,[41]=692,[42]=693},
["Thunder Totem"] = {[0]=750, [6]=652},
["Val'sharah"] = {[0]=641,[13]=642,[14]=643,[15]=644},

--Dungeons
["Ahn'kahet: The Old Kingdom"] = {[1]=132},
["Ahn'Qiraj"] = {[1]=319,[2]=320,[3]=321},
["The Arcatraz"] = {[1]=269,[2]=270,[3]=271},
["The Arcway"] = {[1]=749},
["Auchenai Crypts"] = {[1]=256,[2]=257},
["Auchindoun"] = {[1]=593},
["Azjol-Nerub"] = {[1]=157,[2]=158,[3]=159},
["The Black Morass"] = {[0]=273},
["Black Rook Hold"] = {[1]=751,[2]=752,[3]=753,[4]=754,[5]=755,[6]=756},
["Blackfathom Deeps"] = {[1]=221,[2]=222,[3]=223},
["Blackrock Caverns"] = {[1]=283,[2]=284},
["Blackrock Depths"] = {[1]=242,[2]=243},
["Blackrock Spire"] = {[1]=250,[2]=251,[3]=252,[4]=253,[5]=254,[6]=255},
["The Blood Furnace"] = {[1]=261},
["Bloodmaul Slag Mines"] = {[1]=573},
["The Botanica"] = {[1]=266},
["Cathedral of Eternal Night"] = {[1]=845,[2]=846,[3]=847,[4]=848,[5]=849},
["Court of Stars"] = {[1]=761,[2]=762,[3]=763},
["The Culling of Stratholme"] = {[1]=130,[2]=131},
["Darkheart Thicket"] = {[0]=733},
["The Deadmines"] = {[1]=291,[2]=292},
["Dire Maul"] = {[0]=234,[1]=235,[2]=236,[3]=237,[4]=238,[5]=239,[6]=240},
["Drak'Tharon Keep"] = {[1]=160,[2]=161},
["End Time"] = {[1]=401,[2]=402,[3]=403,[4]=404,[5]=405,[6]=406},
["The Everbloom"] = {[1]=620,[2]=621},
["Eye of Azshara"] = {[1]=713},
["The Forge of Souls"] = {[1]=183},
["Gate of the Setting Sun"] = {[1]=437,[2]=438},
["Gnomeregan"] = {[1]=226,[2]=227,[3]=228,[4]=229},
["Grim Batol"] = {[1]=293},
["Grimrail Depot"] = {[1]=606,[2]=607,[3]=608,[4]=609},
["Gundrak"] = {[0]=153,[1]=154},
["Halls of Lightning"] = {[1]=138,[2]=139},
["Halls of Origination"] = {[1]=297,[2]=298,[3]=299},
["Halls of Reflection"] = {[1]=185},
["Halls of Stone"] = {[1]=140},
["HoS Heritage"] = {[1]=1375},
["Hellfire Ramparts"] = {[1]=347},
["Helmouth Cliffs"] = {[1]=706,[2]=707,[3]=708},
["Hour of Twilight"] = {[1]=399,[2]=400},
["Iron Docks"] = {[1]=595},
["Lost City of the Tol'vir"] = {[0]=277},
["Magisters' Terrace"] = {[1]=348,[2]=349},
["Mana-Tombs"] = {[1]=272},
["Maraudon"] = {[1]=280,[2]=281},
["The Mechanar"] = {[1]=267,[2]=268},
["Mogu'shan Palace"] = {[1]=453,[2]=454,[3]=455},
["Neltharion's Lair"] = {[0]=731},
["The Nexus"] = {[1]=129},
["The Oculus"] = {[0]=142,[1]=143,[2]=144,[3]=145,[4]=146},
["Old Hillsbrad Foothills"] = {[0]=274},
["Pit of Saron"] = {[0]=184},
["Ragefire Chasm"] = {[1]=213},
["Razorfen Downs"] = {[1]=300},
["Razorfen Kraul"] = {[1]=301},
["Scarlet Halls"] = {[1]=431,[2]=432},
["Scarlet Monastery"] = {[1]=302,[2]=303,[3]=304,[4]=305},
["Scholomance"] = {[1]=476,[2]=477,[3]=478,[4]=479},
["The Seat of the Triumvirate"] = {[0]=903},
["Sethekk Halls"] = {[1]=258,[2]=259},
["Shado-Pan Monastery"] = {[1]=443,[2]=444,[3]=445,[4]=446},
["Shadow Labyrinth"] = {[1]=260},
["Shadowfang Keep"] = {[1]=310,[2]=311,[3]=312,[4]=313,[5]=314,[6]=315,[7]=316},
["Shadowmoon Burial Grounds"] = {[1]=574,[2]=575,[3]=576},
["The Shattered Halls"] = {[1]=246},
["Siege of Niuzao Temple"] = {[1]=457,[2]=458,[3]=459},
["Skyreach"] = {[1]=601,[2]=602},
["The Slave Pens"] = {[1]=265},
["The Steamvault"] = {[1]=263,[2]=264},
["The Stockade"] = {[1]=225},
["The Stonecore"] = {[1]=324},
["Stormstout Brewery"] = {[1]=439,[2]=440,[3]=441,[4]=442},
["Stratholme"] = {[1]=317,[2]=318},
["The Temple of Atal'Hakkar"] = {[1]=220},
["Temple of the Jade Serpent"] = {[1]=429,[2]=430},
["Throne of the Tides"] = {[1]=322,[2]=323},
["Trial of the Champion"] = {[1]=171},
["Uldaman"] = {[1]=230,[2]=231},
["The Underbog"] = {[1]=262},
["Upper Blackrock Spire 2"] = {[1]=616,[2]=617,[3]=618},
["Utgarde Keep"] = {[1]=133,[2]=134,[3]=135},
["Utgarde Pinnacle"] = {[1]=136,[2]=137},
["Vault of the Wardens"] = {[1]=677,[2]=678,[3]=679},
["Violet Hold"] = {[1]=732},
["The Violet Hold"] = {[1]=168},
["The Vortex Pinnacle"] = {[1]=325},
["Wailing Caverns"] = {[1]=279},
["Well of Eternity"] = {[0]=398},
["Zul'Aman"] = {[0]=333},
["Zul'Farrak"] = {[0]=219},
["Zul'Gurub"] = {[0]=337},

["Halls of Valor"] = {[0]=829,[1]=703,[2]=704,[3]=705},
["Vault of the Wardens 2"] = {[1]=710,[2]=711,[3]=712},
["Karazhan L"] = {[1]=809,[2]=810,[3]=811,[4]=812,[5]=813,[6]=814,[7]=815,[8]=816,[9]=817,[10]=818,[11]=819,[12]=820,[13]=821,[14]=822},

--Raids
["Antorus"] = {[0]=909,[1]=910,[2]=911,[3]=912,[4]=913,[5]=914,[6]=915,[7]=916,[8]=917,[9]=918,[10]=919,[11]=920},
["Baradin Hold"] = {[1]=282},
["The Bastion of Twilight"] = {[1]=294,[2]=295,[3]=296},
["Black Temple"] = {[1]=339,[2]=340,[3]=341,[4]=342,[5]=343,[6]=344,[7]=345,[8]=346},
["Blackrock Foundry"] = {[1]=596,[2]=597,[3]=598,[4]=599,[5]=600},
["Blackwing Descent"] = {[1]=285,[2]=286},
["Blackwing Lair"] = {[1]=287,[2]=288,[3]=289,[4]=290},
["Dragon Soul"] = {[1]=409,[2]=410,[3]=411,[4]=412,[5]=413,[6]=414,[7]=415},
["The Emerald Nightmare"] = {[1]=777,[2]=778,[3]=779,[4]=780,[5]=781,[6]=782,[7]=783,[8]=784,[9]=785,[10]=786,[11]=787,[12]=788,[13]=789},
["The Eye of Eternity"] = {[1]=141},
["Firelands"] = {[0]=367,[1]=368,[3]=369},
["Gruul's Lair"] = {[1]=330},
["Heart of Fear"] = {[1]=474,[2]=475},
["Hellfire Citadel"] = {[1]=661,[2]=662,[3]=663,[4]=664,[5]=665,[6]=666,[7]=667,[8]=668,[9]=669,[10]=670},
["Highmaul"] = {[1]=610,[2]=611,[3]=612,[4]=613,[5]=614,[6]=615},
["Hyjal Summit"] = {[0]=329},
["Icecrown Citadel"] = {[1]=186,[2]=187,[3]=188,[4]=189,[5]=190,[6]=191,[7]=192,[8]=193},
["Karazhan"] = {[1]=350,[2]=351,[3]=352,[4]=353,[5]=354,[6]=355,[7]=356,[8]=357,[9]=358,[10]=359,[11]=360,[12]=361,[13]=362,[14]=363,[15]=364,[16]=365,[17]=366},
["Magtheridon's Lair"] = {[1]=331},
["Mogu'shan Vaults"] = {[1]=471,[2]=472,[3]=473},
["Molten Core"] = {[1]=232},
["Mount Hyjal"] = {[0]=198},
["Naxxramas"] = {[1]=162,[2]=163,[3]=164,[4]=165,[5]=166,[6]=167},
["The Nighthold"] = {[1]=764,[2]=765,[3]=766,[4]=767,[5]=768,[6]=769,[7]=770,[8]=771,[9]=772},
["The Obsidian Sanctum"] = {[0]=155},
["Onyxia's Lair"] = {[1]=248},
["The Ruby Sanctum"] = {[0]=200},
["Ruins of Ahn'Qiraj"] = {[0]=247},
["Serpentshrine Cavern"] = {[1]=332},
["Siege of Orgrimmar"] = {[0]=556,[1]=557,[2]=558,[3]=559,[4]=560,[5]=561,[6]=562,[7]=563,[8]=564,[9]=565,[10]=566,[11]=567,[12]=568,[13]=569,[14]=570},
["Sunwell Plateau"] = {[1]=335,[2]=336},
["Tempest Keep"] = {[1]=334},
["Terrace of Endless Spring"] = {[0]=456},
["Throne of the Four Winds"] = {[1]=328},
["Throne of Thunder"] = {[1]=508,[2]=509,[3]=510,[4]=511,[5]=512,[6]=513,[7]=514,[8]=515},
["Tomb of Sargeras"] = {[1]=850,[2]=851,[3]=852,[4]=853,[5]=854,[6]=855,[7]=856},
["Trial of the Crusader"] = {[1]=172,[2]=173},
["Trial of Valor"] = {[1]=806,[2]=807,[3]=808},
["Ulduar"] = {[1]=147,[2]=148,[3]=149,[4]=150,[5]=151,[6]=152},
["Vault of Archavon"] = {[1]=156},

--Scenarios
["Abyssal Maw"] = {[1]=742,[2]=743},
["Arcatraz L"] = {[1]=889,[2]=890},
["Assault on Broken Shore"] = {[0]=858},
["Assault on Zan'vess"] = {[0]=451},
["Azshara L"] = {[0]=697},
["Azsuna Invasion"] = {[1]=867},
["Azuremyst Scenario"] = {[0]=891,[1]=892,[2]=893,[3]=894},
["Battle on the High Seas"] = {[0]=524},
["The Beyond"] = {[1]=736},
["A Brewing Storm"] = {[0]=447},
["Black Rook Hold B"] = {[0]=793},
["Blood in the Snow"] = {[0]=523},
["Brewmoon Festival"] = {[0]=452},
["Celestial Tournament"] = {[0]=571},
["Chromie Dragonblight"] = {[1]=897,[2]=898,[3]=899,[4]=900,[5]=901,[6]=902},
["The Cove of Nashal"] = {[0]=671},
["Crypt of Forgotten Kings"] = {[1]=481,[2]=482},
["Dagger in the Dark"] = {[0]=488,[1]=489},
["Dark Heart of Pandaria"] = {[0]=520,[1]=521},
["Deadmines Scenario"] = {[1]=835,[2]=836},
["Domination Point"] = {[0]=498},
["Draenei Scenario"] = {[0]=933},
["The Exodar L"] = {[0]=775},
["Felwing Ledge"] = {[0]=861},
["Fields of the Eternal Hunt"] = {[0]=877},
["Gloaming Reef"] = {[0]=758},
["Greenstone Village"] = {[0]=448},
["Hall of Communion"] = {[1]=888},
["Icecrown Citadel L"] = {[1]=698,[2]=699,[3]=700,[4]=701},
["Invasion Point Alluradel"] = {[0]=928},
["Invasion Point Aurinor"] = {[0]=921},
["Invasion Point Bonich"] = {[0]=922},
["Invasion Point Cen'gar"] = {[0]=923},
["Invasion Point Folnuna"] = {[0]=929},
["Invasion Point Meto"] = {[0]=930},
["Invasion Point Naigtal"] = {[0]=924},
["Invasion Point Occularus"] = {[0]=932},
["Invasion Point Sangua"] = {[0]=925},
["Invasion Point Sotanathor"] = {[0]=931},
["Invasion Point Val"] = {[0]=926},
["Invasion Point Vilemus"] = {[0]=927},
["Lightless Cavern"] = {[1]=839},
["Lion's Landing"] = {[0]=486},
["A Little Patience"] = {[0]=487},
["The Lost Glacier"] = {[0]=871},
["The Maelstrom L A"] = {[0]=725},
["Niskara"] = {[0]=748},
["Niskara B"] = {[0]=714},
["The Oculus L"] = {[0]=799,[1]=800,[2]=801,[3]=802,[4]=803},
["Proving Grounds"] = {[1]=480},
["The Secrets of Ragefire"] = {[1]=522},
["Shadowgore Citadel"] = {[1]=740,[2]=741},
["Shrine of the Eclipse"] = {[1]=973},
["Skywall"] = {[1]=716},
["Stratholme Battle Pet"] = {[0]=1505},
["Telogrus Rift"] = {[0]=971},
["Temple of the Jade Serpent L"] = {[1]=791,[2]=792},
["Terrace of Endless Spring L"] = {[0]=728},
["Theramore's Fall"] = {[0]=483},
["Theramore's Fall H"] = {[0]=416},
["Tol Barad L"] = {[0]=773,[1]=774},
["Ulduar L"] = {[1]=744,[2]=745,[3]=746},
["Unga Ingoo"] = {[0]=450},
["Ursoc's Lair"] = {[0]=757},
["Vindicaar Scenario"] = {[1]=940,[2]=941},
["Void Elf Scenario"] = {[0]=972},
["Helmouth Shallows"] = {[0]=694},				-- Hunter Survival Legion artifact weapon scenario map

--Battlegrounds
["Arathi Basin"] = {[0]=93},
["Eye of the Storm"] = {[0]=112},
["Isle of Conquest"] = {[0]=169},
["Silvershard Mines"] = {[1]=423},
["Strand of the Ancients"] = {[0]=128},
["Twin Peaks"] = {[0]=206},
["Warsong Gulch"] = {[0]=92},

--Instanced Zones/Misc
["Assault on the Dark Portal"] = {[0]=577,[1]=578},
["Azuremyst Isle L"] = {[0]=776},
["Black Temple L"] = {[1]=759},
["Brawl'gar Arena"] = {[1]=503},
["Darkmoon Island"] = {[0]=407,[1]=408},
["Deepholm"] = {[0]=207,[1]=208,[2]=209},
["The Fel Hammer"] = {[0]=878,[1]=879,[2]=880},
["Firelands L"] = {[0]=738},
["Helheim"] = {[0]=649},
["Highmountain Invasion"] = {[1]=869,[2]=870},
["Kezan"] = {[0]=194,[5]=195,[6]=196,[7]=197},
["Isle of Quel'Danas"] = {[0]=122},
["Isle of Thunder"] = {[0]=504,[1]=505,[2]=506},
["The Maelstrom"] = {[0]=276}, -- deepholm intro scenario, among others
["Malorne's Nightmare"] = {[0]=760},
["Mardum, the Shattered Abyss C"] = {[0]=672,[1]=673,[2]=674,[3]=675},
["Molten Front"] = {[0]=338},
["Pit of Saron DK"] = {[0]=823},
["Plaguelands: The Scarlet Enclave"] = {[0]=124},
["The Ruby Sanctum DK"] = {[0]=860},
["Ruins of Gilneas"] = {[0]=217},
["Ruins of Gilneas City"] = {[0]=218},
["Stormheim Invasion"] = {[1]=865,[2]=866},
["Tol Barad"] = {[0]=244},
["Tol Barad Peninsula"] = {[0]=245},
["Val'sharah Invasion"] = {[1]=868},
["The Violet Hold L"] = {[1]=723},
["The Vortex Pinnacle L"] = {[1]=737},
["The Wandering Isle"] = {[0]=378},
["The Wandering Isle L"] = {[0]=709},
["Wintergrasp"] = {[0]=123},
["WC Pet Battle"] = {[0]=825},

["Isle of Thunder Scenario"] = {[0]=516,[1]=517,[2]=517},

--Legion Order Halls
["Dreadscar Rift"] = {[0]=717},
["The Dreamgrove"] = {[0]=747},
["Emerald Dreamway"] = {[0]=715},
["Hall of the Guardian"] = {[1]=734,[2]=735},
["The Maelstrom L"] = {[0]=726},
["Mardum, the Shattered Abyss"] = {[1]=719,[2]=720,[3]=721},
["Netherlight Temple"] = {[1]=702},
["Skyhold"] = {[1]=695},
["Trueshot Lodge"] = {[0]=739},
["Scarlet Monastery L"] = {[0]=804,[1]=805},
["Stormstout Brewery Monk"] = {[0]=872, [1]=873, [2]=874},
['Throne of the Four Winds Scenario'] = {[1] = 857},






['Dreadscar Rift Warlock Intro'] = {[0] = 718},	-- Warlock Legion Intro Scenario





["Atul'Aman"] = {[0]=1009},
["Greymane Manor"] = {[0]=1030,[1]=1031},
["Islands"] = {[0]=824},
["Molten Cay"] = {[0]=1035},
["Ruins of Lordaeron"] = {[0]=908},
["Seething Shore"] = {[0]=907},
["Silithus Brawl"] = {[0]=904},
["Skittering Hollow"] = {[0]=1032},
["The Dread Chain"] = {[0]=1036},
["The Rotting Mire"] = {[0]=1033},
["The Underrot"] = {[0]=1041,[1]=1042},
["Tropical Isle 8.0"] = {[0]=939},
["Verdant Wilds"] = {[0]=1034},
["Whispering Reef"] = {[0]=1037},
["Thros, The Blighted Lands"] = {[0]=1045},
["Tirisfal Glades BFA"] = {[0]=997},
["Undercity BFA"] = {[0]=998},
["Blackrock Scenario"] = {[0]=1159, [1]=1160},
["Arathi Highlands BFA"] = {[0]=1158},
["The Great Sea"] = {[0]=1157},
["Stormwind City BFA"] = {[0]=1012},
["Stockcades Scenario"] = {[0]=1013},
["Stratholme Scenario"] = {[0] = 827},

["The Nexus Scenario"] = {[0] = 370},
['924'] = {[1] = 501,[2] = 502}, -- Dalaran L
['The Arcway Scenario'] = {[0] = 798}, -- The Arcway 2
['1127'] = {[1] = 825},
['The Eye of Eternity'] = {[1] = 881},

-- 8.2
["Orgrimmar Collapse Scenario"] = {[0]=1499},
["Mechagon Island"] = {[0]=1462},
["Baine Rescue"] = {[0]=1479},
["Mechagon"] = {[0]=1497, [1]=1494, [2]=1491, [3]=1490},
["Nazjatar"] = {[0]=1355, [10]=1524},
["The Eternal Palace"] = {[8]=1528, [7]=1512, [6]=1513, [5]=1514, [4]=1516, [3]=1517, [2]=1518, [1]=1519, [0]=1520},
["Chamber of Heart"] = {[0]=1021, [1]=1473},
["The Emerald Dreamway"] = {[0]=1471,[1]=1475},
["The Dragon's Spine"] = {[0]=1472},
["The Maelstrom HoA"] = {[0]=1474},
["Vermillion Redoubt"] = {[0]=1476},
}










data.MapNamesByID = {}
data.FloorByID = {}
data.MapGroupIDs = {}
data.InstanceMaps = {}
data.InstanceMapsRev = {}
for mapname,mapdata in pairs(data.MapIDsByName) do 
	for floornum,floormap in pairs(mapdata) do
		if floornum~="default" then
			data.MapNamesByID[floormap] = {mapname,floornum}
			data.FloorByID[floormap] = floornum
			data.MapGroupIDs[floormap] = mapname
		end
	end
end

-- /run D={}  for i=1,1000 do pcall(EJ_SelectInstance,i) local _, _, _, _, _, _, dungeonMapId, _ = EJ_GetInstanceInfo()  D[dungeonMapId or 0]=true end  ZGV:ShowDump(ZGV:Serialize(D),"")
-- This is used by |goto implementation to detect which maps cannot be positioned anymore.
data.DungeonMaps = {
  [0] = true,
  [129] = true,
  [131] = true,
  [132] = true,
  [133] = true,
  [136] = true,
  [138] = true,
  [140] = true,
  [141] = true,
  [143] = true,
  [147] = true,
  [154] = true,
  [155] = true,
  [156] = true,
  [159] = true,
  [160] = true,
  [163] = true,
  [168] = true,
  [171] = true,
  [172] = true,
  [183] = true,
  [184] = true,
  [185] = true,
  [186] = true,
  [200] = true,
  [213] = true,
  [219] = true,
  [220] = true,
  [221] = true,
  [225] = true,
  [226] = true,
  [230] = true,
  [232] = true,
  [240] = true,
  [242] = true,
  [246] = true,
  [247] = true,
  [248] = true,
  [252] = true,
  [257] = true,
  [258] = true,
  [260] = true,
  [261] = true,
  [262] = true,
  [263] = true,
  [265] = true,
  [266] = true,
  [267] = true,
  [269] = true,
  [272] = true,
  [273] = true,
  [274] = true,
  [277] = true,
  [279] = true,
  [280] = true,
  [282] = true,
  [283] = true,
  [285] = true,
  [287] = true,
  [291] = true,
  [293] = true,
  [294] = true,
  [297] = true,
  [300] = true,
  [301] = true,
  [310] = true,
  [317] = true,
  [320] = true,
  [323] = true,
  [324] = true,
  [325] = true,
  [328] = true,
  [329] = true,
  [330] = true,
  [331] = true,
  [332] = true,
  [333] = true,
  [334] = true,
  [335] = true,
  [337] = true,
  [340] = true,
  [347] = true,
  [349] = true,
  [350] = true,
  [367] = true,
  [379] = true,
  [398] = true,
  [399] = true,
  [404] = true,
  [409] = true,
  [429] = true,
  [431] = true,
  [435] = true,
  [437] = true,
  [440] = true,
  [443] = true,
  [453] = true,
  [456] = true,
  [458] = true,
  [471] = true,
  [474] = true,
  [476] = true,
  [508] = true,
  [543] = true,
  [557] = true,
  [573] = true,
  [574] = true,
  [593] = true,
  [595] = true,
  [597] = true,
  [601] = true,
  [606] = true,
  [612] = true,
  [617] = true,
  [620] = true,
  [661] = true,
  [704] = true,
  [706] = true,
  [710] = true,
  [713] = true,
  [731] = true,
  [732] = true,
  [733] = true,
  [749] = true,
  [751] = true,
  [761] = true,
  [764] = true,
  [777] = true,
  [807] = true,
  [812] = true,
  [846] = true,
  [850] = true,
  [903] = true,
  [909] = true,
  [929] = true,
  [934] = true,
  [936] = true,
  [974] = true,
  [1004] = true,
  [1010] = true,
  [1015] = true,
  [1038] = true,
  [1039] = true,
  [1041] = true,
  [1148] = true,
  [1162] = true,
  [1345] = true,
  [1358] = true,
  [1490] = true,
  [1512] = true,
  [1581] = true,
  [1663] = true,
  [1666] = true,
  [1669] = true,
  [1674] = true,
  [1675] = true,
  [1679] = true,
  [1683] = true,
  [1693] = true,
  [1735] = true,
  [1989] = true,
  [1998] = true,
}


--[[
	YE OLDE HELP TEXT

	Okay, to clarify, there's multiple ways to write a map link now. It's a mess, but it works.

	The first, simplest way, is two nodes linked, written in plain text (let's hope they're accessible by some means):
		"First Zone/2 11.22,33.44 -x- Second Zone/3 55.66,77.88",

	The "-x-" means it's a crossing, two-way. You can use "-to-" to make a one-way link.


	NODE NAMES:

	Adding @something after the node coordinates gives the node a name, for later reuse.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88 @stormgate",
		"Elwynn 77.77,66.66 -x- @stormgate",

	You can also use @+ to indicate the last node created or mentioned, whether it was named or not.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88",
		"@+ -x- Elwynn 77.77,66.66",

	This allows for easy chaining of nodes.


	ONE NODE?

	You can create just one node:
		"Solitary 11.1,22.2"

	This only makes sense if you @+ link to it later, or give it an explicit @name and refer to that.


	ADDITIONAL NODE DATA:

	Writing <field:value> after a node's coordinates assigns additional data.
		"Stormwind 11.1,22.2 <title:Watch out, dog poo> <radius:5>"

	Data fields include (among others):
		'title' to caption a node,
		'radius' to set the node's player-detection radius,
		'region' to assign a node to a special region,
		'nofly' set to 1 means the node cannot be flown to,
		'dark' set to 1 means the node can only be seen by the player from a small distance, but suffers no penalty when chained between other nodes


	ADDITIONAL LINK DATA:

	Writing {field:value} after both nodes assigns data to their link:
		"Stormwind 11.1,22.2 -x- Elwynn Forest 55.5,66.6 {cost:999}"   -- this is a very time-costly connection


	ADVANCED FORMAT:

	If that's not enough, you can use a "raw" format to write node links:
		{ "@+" , "Orgrimmar/1 11.1,22.2" , template="portalauto", faction="H", cost=123 }

	Within that, you can go even deeper and write the node(s) in raw mode, too:
		{ "@+" , {"Orgrimmar/1 11.1,22.2",title="Something in Orgri",region="whatever"} , oneway=1 }

	Very advanced, messy, "fake zone"-based mapping (Maraudon the Zone of Nightmares) makes extensive use of that.

--]]


data.basenodes = {}

data.basenodes.setup = {
	--"REGION fuselightbtspre Badlands 79.1,31.6 <150",
}



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS		GREEN BORDERS      ---
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- These zone pairs see directly into each other, as they share "green" borders.
data.greenborders = {


--------------------------------
-----     DRAGONFLIGHT     -----
--------------------------------
-- Dracthyr Starter
	{"The Forbidden Reach/0","The Forbidden Reach/3"},

-- Dragon Isles Main Zones
	{"The Waking Shores/0","Ohn'ahran Plains/0"},
	{"The Waking Shores/0","Thaldraszus/0"},
	{"Ohn'ahran Plains/0","The Azure Span/0"},
	{"Ohn'ahran Plains/0","Thaldraszus/0"},
	{"The Azure Span/0","Thaldraszus/0"},
	{"Valdrakken/0","Thaldraszus/0"},




-------------------------------
-----     SHADOWLANDS     -----
-------------------------------
-- Icecrown Citadel Intro
	{"Icecrown Citadel Intro/0","Icecrown Citadel Intro/1"},

-- Bastion
	{"Bastion/0","Bastion/1"},

-- Elysian Hold (Bastion)
	{"Elysian Hold/0","Elysian Hold/1"},

-- Maldraxxus
	{"Maldraxxus/0","Maldraxxus/1"},

-- Ardenweald
	{"Ardenweald/0","Ardenweald/1"},
	{"Ardenweald/0","Ardenweald/2"},
	{"Ardenweald/0","Ardenweald/3"},
	{"Ardenweald/0","Heart of the Forest/0","Heart of the Forest/1"},
-- Heart of the Forest (Ardenweald)

-- Oribos
	{"Oribos/0","Oribos/4"},

-- Vindicaar Scenario (Lightforged Draenei Starter)
	{"Vindicaar Scenario/1","Vindicaar Scenario/2"},
	
	
	
--------------
-- KALIMDOR --
--------------
-- Orgrimmar
	{"Orgrimmar/1","Orgrimmar/2"},



----------------------
-- EASTERN KINGDOMS --
----------------------

-- Main Zone Borders
	{"Elwynn Forest/0","Duskwood/0"},
	{"Westfall/0","Duskwood/0"},
	{"Eversong Woods/0","Ghostlands/0"},

-- Ghostlands
	{"Ghostlands/0","Ghostlands/1"},

-- Ironforge
	{"Ironforge/0","Ironforge/1"},	-- Old Ironforge

	{"Durotar War Campaign/0","Durotar/0"},

-- Phases of Tirisfal Glades
	{"Tirisfal Glades L/0","Tirisfal Glades/0"},

---------------
-- CATACLYSM --
---------------

-- Main Zone Borders
	{"Kelp'thar Forest/0","Shimmering Expanse/0"},
	{"Shimmering Expanse/0","Abyssal Depths/0"},
	{"Abyssal Depths/0","Kelp'thar Forest/0"},

-- Deepholm
	{"Deepholm/1","Deepholm/2"},




---------------
-- PANDARIA --
---------------
	{"Kun-Lai Summit/11","Kun-Lai Summit/12","oneway"},


------------
-- LEGION --
------------
-- Main Zone Borders
	{"Azsuna/0","Suramar/0"},

-- Deadwind Pass
	{"Deadwind Pass/0","Deadwind Pass/27"},

-- Exodar Scenario
	{"Azuremyst Isle L/0","The Exodar L/0"},

-- Demon Hunter
	{"Mardum, the Shattered Abyss C/0","Mardum, the Shattered Abyss C/1"},
	{"Mardum, the Shattered Abyss/2","Mardum, the Shattered Abyss/3"},
	{"The Fel Hammer/1","The Fel Hammer/2"},

-- Death Knight
	{"Broken Shore/2","Broken Shore/1"},
	{"Icecrown Citadel L/1","Icecrown Citadel L/2"},
	{"Scarlet Monastery L/0","Scarlet Monastery L/1"},

-- Mage
	{"Hall of the Guardian/1","Hall of the Guardian/2"},
	{"The Oculus L/0","The Oculus L/1","The Oculus L/2","The Oculus L/3","The Oculus L/4"},
	{"Deadwind Pass/0","Deadwind Pass/22"},

-- Monk
	{"Temple of the Jade Serpent L/1","Temple of the Jade Serpent L/2"},
	{"Stormstout Brewery Monk/0","Stormstout Brewery Monk/1","Stormstout Brewery Monk/2"},

-- Rogue
	{"Shadowgore Citadel/1","Shadowgore Citadel/2"},

-- Shaman
	{"Vale of Eternal Blossoms/1","Vale of Eternal Blossoms/2"},
	{"Abyssal Maw/1","Abyssal Maw/2"},

-- Warrior
	{"Stormheim/0","Stormheim/1"},
	{"Ulduar L/1","Ulduar L/2","Ulduar L/3"},

-- Azsuna
	{"Azsuna/0","Azsuna/17"},
	{"Azsuna/0","Azsuna/18"},
	{"Azsuna/0","Azsuna/19"},

-- Highmountain
	{"Highmountain/0","Highmountain/40"},
	{"Highmountain/0","Highmountain/30","Highmountain/29"},
	{"Highmountain/0","Highmountain/16"},
	{"Highmountain/0","Highmountain/20"},
	{"Highmountain/20","Highmountain/21"},
	{"Highmountain/0","Highmountain/5"},
	{"Highmountain/0","Highmountain/8"},
	{"Highmountain/0","Highmountain/31"},
	{"Highmountain Invasion/1","Highmountain Invasion/2"},
	{"Highmountain/0","Thunder Totem/0","Thunder Totem/6"},

-- Stormeheim
	{"Stormheim/0","Stormheim/9"},
	{"Stormheim/0","Stormheim/25","Stormheim/26"},
	{"Stormheim/0","Stormheim/27"},
	{"Stormheim/0","Stormheim/28"},

-- Suramar
	{"Suramar/0","Suramar/22"},
	{"Suramar/0","Suramar/23"},
	{"Suramar/0","Suramar/24"},
	{"Suramar/0","Suramar/32","Suramar/33"},	-- Falanaar Tunnels
	{"Suramar/0","Suramar/34"},
	{"Suramar/0","Suramar/35"},
	{"Suramar/0","Suramar/36"},
	{"Suramar/0","Suramar/37"},
	{"Suramar/0","Suramar/38"},
	{"Suramar/0","Suramar/41"},
	{"Suramar/41","Suramar/42"},
	{"Suramar/0","Suramar/34"},			-- Elor'shan cave

-- Val'sharah
	{"Val'sharah/0","Val'sharah/14","Val'sharah/15"},	-- Sleeper's Barrow cave
	{"Val'sharah/0","Val'sharah/13"},		-- Darkpens

-- Invasion Scenarios
	{"Stormheim Invasion/1","Stormheim Invasion/2"},

-- Argus
	{"Azuremyst Scenario/0","Azuremyst Scenario/1","Azuremyst Scenario/2","Azuremyst Scenario/3"},

	{"Krokuun/1","Krokuun/2"},			-- Vindicaar (Krokuun)
	{"Eredath/3","Eredath/4"},			-- Vindicaar (Eredath)
	{"Antoran Wastes/5","Antoran Wastes/6"},	-- Vindicaar (Antoran Wastes)

	{"Arcatraz L/1","Arcatraz L/2"},		-- Arcatraz Argus Campaign



------------------------
-- BATTLE FOR AZEROTH --
------------------------

-- Main Zone Borders
	{"Tiragarde Sound/0","Boralus/0"},
	{"Zuldazar/0","Dazar'alor/0"},
	{"Drustvar/0","Tiragarde Sound/0"},
	{"Zandalar/0","Nazmir/0"},

-- Dazar'alor
	{"Dazar'alor/0","Dazar'alor/1","Dazar'alor/2","Dazar'alor/3","Dazar'alor/4","Zuldazar/0"},

-- Tiragarde Sound
	{"Tiragarde Sound/3","Tiragarde Sound/4"},
	{"Tiragarde Sound/0","Tiragarde Sound/3"},
	{"Tiragarde Sound/0","Tiragarde Sound/4"},
	{"Tiragarde Sound/1","Tiragarde Sound/2"},
	{"Tiragarde Sound/0","Tiragarde Sound/1"},
	{"Tiragarde Sound/0","Tiragarde Sound/2"},

-- Stormsong Valley
	{"Stormsong Valley/0","Stormsong Valley/4"},
	{"Stormsong Valley/0","Stormsong Valley/1"},
	{"Stormsong Valley/0","Stormsong Valley/2"},
	{"Stormsong Valley/1","Stormsong Valley/2"},
	{"Stormsong Valley/0","Stormsong Valley/3"},

-- Zuldazar
	{"Zuldazar/0","Zuldazar/1","Zuldazar/2","Zuldazar/3","Zuldazar/4"},

-- Vol'dun
	{"Vol'dun/0","Vol'dun/1"},

-- Stormheim
	{"Stormheim/0","Helmouth Shallows/0"},

-- Tol Dagor Scenario
	{"Tol Dagor Scenario/0","Tol Dagor Scenario/1","Tol Dagor Scenario/2"},

-- Nazjatar
	{"Nazjatar/0","Nazjatar/10"},



-------------------------
-- WARLORDS OF DRAENOR --
-------------------------

-- Draenor Intro
	{"Assault on the Dark Portal/0","Assault on the Dark Portal/1"},

-- Alliance Garrison
	{"Shadowmoon Valley D/0","Lunarfall/0"},

-- Horde Garrison
	{"Frostfire Ridge/0","Frostwall/0"},
	{"Frostwall/0","Frostwall/26"},

-- Shadowmoon Valley
	{"Shadowmoon Valley D/0","Shadowmoon Valley D/15"},

-- Gorgrond
	{"Gorgrond/0","Gorgrond/16","Gorgrond/17"},
	{"Gorgrond/0","Gorgrond/18","Gorgrond/19"},
	{"Gorgrond/0","Gorgrond/20"},
	{"Gorgrond/20","Gorgrond/18"},
	{"Gorgrond/20","Gorgrond/19"},
	{"Gorgrond/20","Gorgrond/21"},

-- Talador
	{"Talador/0","Talador/13"},
	{"Talador/0","Talador/14"},
	{"Shattrath City 2/0","Talador/0"},

-- Nagrand D
	{"Nagrand D/0","Nagrand D/11"},
	{"Nagrand D/0","Nagrand D/10"},
	{"Nagrand D/0","Nagrand D/12"},

-- Frostfire Ridge
	{"Frostfire Ridge/0","Frostfire Ridge/1","Frostfire Ridge/2"},
	{"Frostfire Ridge/0","Frostfire Ridge/4"},
	{"Frostfire Ridge/0","Frostfire Ridge/6"},
	{"Frostfire Ridge/0","Frostfire Ridge/7","Frostfire Ridge/8"},
	{"Frostfire Ridge/0","Frostfire Ridge/9"},	
	{"Frostfire Ridge/2","Frostfire Ridge/3"},
}









data.walls = {
	["Tirisfal Glades"] = {
		{ 48.8,50.9, 50.8,50.7, 51.0,56.1, 48.2,56.4, "loop" }, -- Calston Lake (example)
	},
	["Eastern Plaguelands"] = {
		{ 90.3,0.1, 84.7,38.2, 80.8,54.1, 84.3,71.8 }, -- wall off Scarlet Enclave
	},
	["The Maw"] = {
		{ 46.81,54.61, 54.80,53.86, 64.80,16.40 }, -- top cutoff of southeast part
		{ 42.18,65.04, 42.51,85.87, 47.10,91.90 }, -- bottom cutoff of southeast part
	},
}

data.ZoneMeta = {
	["ALL_MICROS"] = {hostile=true},

	["Orgrimmar/2"] = {flyable=true}, -- Cleft of Shadow
	["Razorfen Kraul"]={dark=1},
	["Stormsong Valley/1"] = {hostile=true},
	["Stormsong Valley/2"] = {hostile=true},
	["Stormsong Valley/3"] = {hostile=true},
	["Caverns of Time"] = {hostile=false},
	["Deeprun Tram/1"] = {hostile=false},
	["Deeprun Tram/2"] = {hostile=false},
	[831] = {hostile=false},
	[886] = {hostile=false},
	[883] = {hostile=false},
	[647] = {hostile=false}, -- archerus, the ebon hold
	[648] = {hostile=false}, -- archerus, the ebon hold
	[1534] = {flyable=false}, -- Orgrimmar War Campaign: flight banned
	[24] = {hostile=false},		-- Paladin order hall, would avoid using portal if zone is hostile

	["The Exodar/0"] = {flyable=false},
	["Azuremyst Isle/0"] = {flyable=false},
	["Azuremyst Isle/2"] = {flyable=false},
	["Azuremyst Isle/3"] = {flyable=false},
	["Bloodmyst Isle/0"] = {flyable=false},
	["Ammen Vale/0"] = {flyable=false},
	["Silvermoon City/0"] = {flyable=false},
	["Ghostlands/0"] = {flyable=false},
	["Ghostlands/1"] = {flyable=false},
	["Eversong Woods/0"] = {flyable=false},
	["Sunstrider Isle/0"] = {flyable=false},
	["Sunstrider Isle/0"] = {flyable=false},

	["Tol Barad/0"] = {flyable=false},

	["Icecrown Citadel Intro/0"] = {hostile=false},
	["Icecrown Citadel Intro/1"] = {hostile=false},
	["Icecrown Citadel Intro/2"] = {hostile=false},
	["Icecrown Citadel Intro/3"] = {hostile=false},

	["Krokuun/1"] = {hostile=false},	-- Vindicaar
	["Krokuun/2"] = {hostile=false},	-- Vindicaar
	["Eredath/3"] = {hostile=false},	-- Vindicaar
	["Eredath/4"] = {hostile=false},	-- Vindicaar
	["Antoran Wastes/5"] = {hostile=false},	-- Vindicaar
	["Antoran Wastes/6"] = {hostile=false},	-- Vindicaar	
	["Krokuun/7"] = {hostile=false},	-- Nath'raxas Spire		-- Hostile, but small map, travel wants to always hearth instead of walking through map
	["Suramar/34"] = {hostile=false},					-- Hostile, but small map, travel wants you to go to Suramar/Stormheim border, outside this cave, instead of walking through map
	["Suramar/23"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Shal'Aran instead of walking through map
	["Suramar/32"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Shal'Aran instead of walking through map
	["Suramar/33"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Shal'Aran instead of walking through map
	["Suramar/37"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Shal'Aran instead of walking through map
	["Suramar/38"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Shal'Aran instead of walking through map
	["Suramar/35"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Shal'Aran instead of walking through map
	["Thunder Totem/0"] = {hostile=false,flyable=true},
	["Thunder Totem/6"] = {hostile=false,flyable=true},
	["Highmountain/20"] = {hostile=false},
	["Highmountain/21"] = {hostile=false},
	["Highmountain/5"] = {hostile=false,flyable=true},
	["Highmountain/16"] = {hostile=false,flyable=true},			-- Mucksnout Den cave, is flyable
	["Highmountain/8"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Dalaran instead of walking through map
	["Highmountain/31"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth instead of walking through map
	["Stormheim/27"] = {hostile=false},					-- Not hostile, small map, wants to hearth out, instead of running out of the building
	["Stormheim/25"] = {hostile=false},					-- Hostile, but small map, travel wants you to take a non-existant portal instead of walking through map
	["Stormheim/26"] = {hostile=false},					-- Hostile, but small map, travel wants you to take a non-existant portal instead of walking through map
	["Stormheim/9"] = {hostile=false},					-- Hostile, but small map, travel wants you to hearth to Dalaran instead of walking through map

	["Vashj'ir/0"] = {vashjir=true},
	["Shimmering Expanse/0"] = {vashjir=true},
	["Kelp'thar Forest/0"] = {vashjir=true},
	["Abyssal Depths/0"] = {vashjir=true},

	["Gorgrond/16"] = {hostile=false},
	["Gorgrond/17"] = {hostile=false},
	["Gorgrond/18"] = {hostile=false},
	["Gorgrond/19"] = {hostile=false},
	["Gorgrond/20"] = {hostile=false},
	["Gorgrond/21"] = {hostile=false},
	["Talador/13"] = {hostile=false},
	["Talador/14"] = {hostile=false},
	["Nagrand D/11"] = {hostile=false},
	["Nagrand D/10"] = {hostile=false},
	["Nagrand D/12"] = {hostile=false},
	["Frostfire Ridge/1"] = {hostile=false},
	["Frostfire Ridge/2"] = {hostile=false},
	["Frostfire Ridge/3"] = {hostile=false},
	["Frostfire Ridge/4"] = {hostile=false},
	["Frostfire Ridge/6"] = {hostile=false},
	["Frostfire Ridge/7"] = {hostile=false},
	["Frostfire Ridge/8"] = {hostile=false},
	["Shattrath City 2/0"] = {hostile=false},

	["Dazar'alor/0"] = {hostile=false},
	["Dazar'alor/1"] = {hostile=false, flyable=true},
	["Dazar'alor/2"] = {hostile=false, flyable=true},
	["Dazar'alor/3"] = {hostile=false, flyable=true},
	["Dazar'alor/4"] = {hostile=false, flyable=true},

	["Oribos/0"] = {hostile=false,flyable=false},
	["Oribos/1"] = {hostile=false,flyable=false},
	["Oribos/2"] = {hostile=false,flyable=false},
	["Oribos/3"] = {hostile=false,flyable=false},
	["Oribos/4"] = {flyable=false},
	["Elysian Hold/0"] = {hostile=false},
	["Elysian Hold/1"] = {hostile=false},
	["Heart of the Forest/0"] = {hostile=false, flyable=true},
	["Heart of the Forest/1"] = {hostile=false, flyable=true},
	["Heart of the Forest/2"] = {hostile=false, flyable=true},
	["Seat of the Primus/0"] = {hostile=false},
	["Sinfall/0"] = {hostile=false,flyable=false},
	["Sinfall/1"] = {hostile=false,flyable=false},
	["Ardenweald/1"] = {hostile=false},
	["Ardenweald/2"] = {hostile=false},
	["Ardenweald/3"] = {hostile=false},
	["Fungal Terminus/0"] = {hostile=false},
	["Bastion/1"] = {hostile=false},
	["Extractor's Sanatorium/0"] = {hostile=false},
	["Path of Wisdom/0"] = {hostile=false},
	["Altar of Domination/0"] = {hostile=false},
	["Third Chamber of Kalliope/0"] = {hostile=false},
	["Etheric Vault/0"] = {hostile=false},
	["The Maw/0"] = {flyable=false},
	["Korthia/0"] = {flyable=false},
	["Gravid Repose/0"] = {hostile=false},
	["Locrian Esper/0"] = {hostile=false},

} -- Gets numberized and setmetatable-ized in lib code.

--[[
data.ZoneMeta[614].level=80 -- 3 sub zones in Vashj'ir that returned 0 as their level... Thank you blizzard.  They're just subzones of Vashj'ir #613.
data.ZoneMeta[615].level=80
data.ZoneMeta[610].level=80
data.ZoneMeta[499].level=65 -- Isle of Quel'Danas. Had 0 for whatever reason but FP is learned automatically at 65
--Panda Land Levels hardcoded until GetCurrentMapLevelRange() works for them.
data.ZoneMeta[873].level=87
data.ZoneMeta[929].level=90
--]]

--[[
TaxiWhistlePredictor valid maps
[123] = true,
[123] = 11111, -- whistle valid if quest completed
[123]={11111,22222} -- whistle valid if any quest completed
--]]
data.WhistleMaps = {
	[ 630]=true,	-- Azsuna
	[ 650]=true,	-- Highmountain
	[ 634]=true,	-- Stormheim
	[ 696]=true,
	[ 680]=true,	-- Suramar
	[ 750]=true,	-- Thunder Totem
	[ 739]=true,	-- Trueshot Lodge
	[ 641]=true,	-- Val'sharah
	[ 646]=true,	-- Broken Shore
	[ 830]=true,	-- Krokuun	
	[ 882]=true,	-- Eredath
	[ 885]=true,	-- Antoran Wastes

	-- BfA:
	[1014]=true, -- Kul Tiras
	[ 896]=true,  -- Drustvar
	[ 942]=true,  -- Stormsong Valley
	[ 895]=true,  -- Tiragarde Sound
	[1161]=true,   -- Boralus
	[ 936]=true,   -- Freehold
	[1462]=true,  -- Mechagon Isle
	[1011]=true, -- Zandalar
	[ 863]=true,  -- Nazmir
	[ 864]=true,  -- Vol'dun
	[ 862]=true,  -- Zuldazar
	[1165]=true,   -- Dazar'alor

	[1355]=56422,	-- Nazjatar needs quest 56422: On Ghostly Wings
}



-- force areas of map1 to be treated as if player was on target map. useful when blizz map detection fails and gives us continent instead of local map. 
data.RemapData = {
	-- source map = ractange based on y,x = unitposition, target map to remap coords to
	-- use ZGV.Testing.remap_dump to grab this
	[12] = { -- kalimdor
		{top=-4683.398, bottom=-4745.10, left=-3627.80, right=-3781.30, target=70}, -- use dustwallow marsh around onyxia lair
		{top=-4213.3999023438, bottom=-4307.5, left=-11296.400390625, right=-11488.100585938, target=97, offsetx=-4.3234, offsety=-3.733},        -- Azuremyst Isle Exodar dock
		{top=-4657.2001953125, bottom=-4674.3002929688, left=-2531.1999511719, right=-2367.1999511719, target=64}, --RFD
		{top=-4473.3002929688, bottom=-4460.7001953125, left=-1686.3000488281, right=-1662, target=199}, --RFK
		{top=911.40002441406, bottom=533.79998779297, left=-4434.2001953125, right=-4767.3002929688, target=1, cond=function() return C_QuestLog.GetLogIndexForQuestID(56719) end },--Only if on quest 56719, Alliance
		{top=1700, bottom=533, left=-3710, right=-5100, target=1, cond=function() return C_QuestLog.GetLogIndexForQuestID(56993) end }, --Only if on quest 56993, Alliance
		{top=1760, bottom=1681, left=-3920, right=-3990, target=1534, cond=function() return C_QuestLog.GetLogIndexForQuestID(56993) end }, --Only if on quest 56993, Alliance

		{top=2773.4428710938, bottom=1813.1990966797, left=-3459.7746582031, right=-6547.7373046875, target=76}, -- southern azshara fix	
	},
	[13] = {
		{top=-7377.7001953125, bottom=-7559.3999023438, left=-1141.5999755859, right=-1354.4000244141, target=36}, -- Blackwing Descent entrance
	},
	[619] = { -- broken island 
		{top=-593.10003662109, bottom=-1120, left=4782.3002929688, right=4057.3000488281, target=627}, -- use dalaranL on right half of dalaran map
	},
	[805] = { -- scholomance scenario
		{top=1185.30, bottom=1063.60, left=723.60, right=522, target=804}, -- fix first floor showing up as second floor when going off the path
	},
}