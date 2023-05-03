local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.Featured={}

table.insert(GuideMenu.Featured,{
	title="Dragonflight", group="dragonflight",
{"section", text=[[LEVELING]]},
        {"banner", image=ZGV.IMAGESDIR.."DragonflightLeveling",showcaseonly=true},
	{"content", text=[[Optional: Complete the Dracthyr starter zone]]},
	{"text", text=[[If leveling a Dracythr, use the Dracthyr starter guide to level your character to 60.]]},
	{"columns",
	{"item", text=[[**Dracthyr Starter (58-60)**]], guide="LEVELING\\Starter Guides\\Dracthyr Starter (58-60)"},
	}, --columnsend

	{"content", text=[[Reach Level 70 in the Dragon Isles]]},
	{"text", text=[[On your first character, we recommend using the Story Only guides, which will get you to level 67. Upon finishing the story you will unlock world quests. Once you finish the story and unlock world quests, load up the Thaldraszus Full Zone guide (since that's where you'll be when finishing the story) and start doing side quests, mixing in world quests, if you like. You will get the last 3 levels very quickly.|n|nFor alts, you will already have world quests unlocked, due to unlocking them on your main, so the leveling strategy would be to use the Story Only guides, and complete world quests that are nearby as you move through the story quests, then finish up with side quests in the Full Zone guides, if needed.]]},
	{"columns",
	{"item", text=[[**Intro & The Waking Shores (Full Zone)**]], guide="LEVELING\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"},
	{"item", text=[[**Intro & The Waking Shores (Story Only)**]], guide="LEVELING\\Dragonflight (60-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"},
	{"item", text=[[**Ohn'ahran Plains (Full Zone)**]], guide="LEVELING\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"},
	{"item", text=[[**Ohn'ahran Plains (Story Only)***]], guide="LEVELING\\Dragonflight (60-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"},
	{"item", text=[[**The Azure Span (Full Zone)**]], guide="LEVELING\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"},
	{"item", text=[[**The Azure Span (Story Only)***]], guide="LEVELING\\Dragonflight (60-70)\\Story Campaigns\\The Azure Span (Story Only)"},
	{"item", text=[[**Thaldraszus (Full Zone)**]], guide="LEVELING\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"},
	{"item", text=[[**Thaldraszus (Story Only)**]], guide="LEVELING\\Dragonflight (60-70)\\Story Campaigns\\Thaldraszus (Story Only)"},
	}, --columnsend

	{"content", text=[[Complete the Dragonflight Campaign]]},
	{"text", text=[[Once you've played through the main Dragonflight storyline content you'll want to start on the Dragonflight Campaign. There are 9 chapters to the Dragonflight campaign, 8 of which are locked behind renown levels, and a 9th bonus chapter called Spark of Ingenuity which is timegated and being released in one to two parts weekly. We will be adding in the various chapters in the order our team is able to unlock them, but your experience may be different than ours. Please see our official blog for the latest info on what chapters guides have been released for.]]},

	{"columns",
	{"item", text=[[**Dragonflight Campaign**]], guide="LEVELING\\Dragonflight (60-70)\\Dragonflight Campaign"},
	}, --columnsend	

	{"content", text=[[Collect Dragon Glyphs to Upgrade your Dragonflight Ability]]},
	{"columns",
	{"item", text=[[**Dragon Glyphs (All Zones)**]], guide="LEVELING\\Dragonflight (60-70)\\Dragon Glyphs\\Dragon Glyphs (All Zones)"},
	}, --columnsend	

{"section", text=[[DUNGEONS]]},
        {"banner", image=ZGV.IMAGESDIR.."DragonflightDungeons",showcaseonly=true},
	{"content", text=[[Optional: Complete the following Dragonflight dungeons.]]},
	{"columns",
	{"item", text=[[**Ruby Life Pools**]], guide="Dungeons\\Dragonflight Dungeons\\Ruby Life Pools"},
	{"item", text=[[**The Nokhud Offensive**]], guide="Dungeons\\Dragonflight Dungeons\\The Nokhud Offensive"},
	{"item", text=[[**Brackenhide Hollow**]], guide="Dungeons\\Dragonflight Dungeons\\Brackenhide Hollow"},
	{"item", text=[[**Halls of Infusion**]], guide="Dungeons\\Dragonflight Dungeons\\Halls of Infusion"},
	{"item", text=[[**Algeth'ar Academy**]], guide="Dungeons\\Dragonflight Dungeons\\Algeth'ar Academy"},
	{"item", text=[[**Neltharus**]], guide="Dungeons\\Dragonflight Dungeons\\Neltharus"},
	{"item", text=[[**The Azure Vault**]], guide="Dungeons\\Dragonflight Dungeons\\The Azure Vault"},
	}, --columnsend

{"section", text=[[DAILIES]]},
        {"banner", image=ZGV.IMAGESDIR.."DragonflightDailies",showcaseonly=true},
	{"content", text=[[Dragon Isles World Quests]]},
	{"columns",
	{"item", text=[[**The Azure Span World Quests**]], guide="Dailies\\Dragonflight (60-70)\\The Azure Span World Quests"},
	{"item", text=[[**Ohn'ahran Plains World Quests**]], guide="Dailies\\Dragonflight (60-70)\\Ohn'ahran Plains World Quests"},
	{"item", text=[[**Thaldraszus World Quests**]], guide="Dailies\\Dragonflight (60-70)\\Thaldraszus World Quests"},
	{"item", text=[[**The Waking Shores World Quests**]], guide="Dailies\\Dragonflight (60-70)\\The Waking Shores World Quests"},
	}, --columnsend

	{"content", text=[[Dragon Isles Weekly Quests]]},
	{"columns",
	{"item", text=[[**The Obsidian Citadel Weekly Quests**]], guide="Dailies\\Dragonflight (60-70)\\The Obsidian Citadel Weekly Quests"},
	}, --columnsend

	{"content", text=[[Dragon Isles Daily Quests]]},
	{"columns",
	{"item", text=[[**Aylaag Outpost Daily Quests (Rusza'thar Reach)**]], guide="Dailies\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Rusza'thar Reach)"},
	{"item", text=[[**Aylaag Outpost Daily Quests (Pinewood Post)**]], guide="Dailies\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Pinewood Post)"},
	{"item", text=[[**Aylaag Outpost Daily Quests (Eaglewatch Outpost)**]], guide="Dailies\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Eaglewatch Outpost)"},
	}, --columnsend


	{"content", text=[[Dragon Isles Misc. Endgame]]},
	{"columns",
	{"item", text=[[*Siege on Dragonbane Keep**]], guide="Dailies\\Dragonflight (60-70)\\Siege on Dragonbane Keep"},

	{"item", text=[[*A Climber's Calling**]], guide="Dailies\\Dragonflight (60-70)\\A Climber's Calling"},
	{"item", text=[[*A Cataloger's Paradise**]], guide="Dailies\\Dragonflight (60-70)\\A Cataloger's Paradise"},
	{"item", text=[[**Dragon Isles Emissary**]], guide="Dailies\\Dragonflight (60-70)\\Dragon Isles Emissary"},
	}, --columnsend

{"section", text=[[REPUTATIONS]]},
        {"banner", image=ZGV.IMAGESDIR.."DragonflightReputations",showcaseonly=true},
	{"content", text=[[Dragon Isles World Quests]]},
	{"columns",
	{"item", text=[[**Dragonscale Expedition**]], guide="Reputations\\Dragonflight Reputations\\Dragonscale Expedition\\Dragonscale Expedition"},
	{"item", text=[[**Dragonscale Expedition Flags**]], guide="Reputations\\Dragonflight Reputations\\Dragonscale Expedition\\Dragonscale Expedition Flags"},
	{"item", text=[[**Iskaara Tuskarr**]], guide="Reputations\\Dragonflight Reputations\\Iskaara Tuskarr\\Iskaara Tuskarr"},
	{"item", text=[[**Iskaara Tuskarr Community Feast**]], guide="Reputations\\Dragonflight Reputations\\Iskaara Tuskarr\\Community Feast"},
	{"item", text=[[**Iskaara Tuskarr Fishing Gear Crafting**]], guide="Reputations\\Dragonflight Reputations\\Iskaara Tuskarr\\Fishing Gear Crafting"},
	{"item", text=[[**Maruuk Centaur*]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Maruuk Centaur"},
	{"item", text=[[**Valdrakken Accord*]], guide="Reputations\\Dragonflight Reputations\\Valdrakken Accord\\Valdrakken Accord"},
	}, --columnsend

	{"content", text=[[Maruuk Centaur Grand Hunts:]]},
	{"columns",
	{"item", text=[[**Eastern Azure Span Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Eastern Azure Span Hunt"},
	{"item", text=[[**Southern Azure Span Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Southern Azure Span Hunt"},
	{"item", text=[[**Western Azure Span Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Western Azure Span Hunt"},
	{"item", text=[[**Eastern Ohn'ahran Plains Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Eastern Ohn'ahran Plains Hunt"},
	{"item", text=[[**Northern Ohn'ahran Plains Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Northern Ohn'ahran Plains Hunt"},
	{"item", text=[[**Western Ohn'ahran Plains Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Western Ohn'ahran Plains Hunt"},
	{"item", text=[[**Northern Thaldraszus Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Northern Thaldraszus Hunt"},
	{"item", text=[[**Southern Thaldraszus Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Southern Thaldraszus Hunt"},
	{"item", text=[[**Eastern Waking Shores Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Eastern Waking Shores Hunt"},
	{"item", text=[[**Northern Waking Shores Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Northern Waking Shores Hunt"},
	{"item", text=[[**Southern Waking Shores Hunt**]], guide="Reputations\\Dragonflight Reputations\\Maruuk Centaur\\Grand Hunts\\Southern Waking Shores Hunt"},
	}, --columnsend


{"section", text=[[PROFESSIONS]]},
	{"banner", image=ZGV.IMAGESDIR.."DragonflightProfessions",showcaseonly=true},

	{"text", text=[[NOTE: These guides are currently in a BETA state, meaning, while they can be used now, they are still being worked on by the Zygor team to ensure they are working correctly and optimally.]]},

	{"content", text=[[Gathering Professions]]},

	{"columns",
		--[=[ 
		{"item", text=[[**Dragon Isles Jewelcrafting 1-100**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Dragon Isles Jewelcrafting 1-100"},
		{"item", text=[[**Dragon Isles Cooking 1-75**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Dragon Isles Cooking 1-100"},
		{"item", text=[[**Dragon Isles Inscription 1-100**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Dragon Isles Inscription 1-100"},
		{"item", text=[[**SDragon Isles Fishing 1-100**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Dragon Isles Fishing 1-100"},

		--]=]

		{"item", text=[[**Dragon Isles Herbalism 1-100**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Dragon Isles Herbalism 1-100"},
		{"item", text=[[**Dragon Isles Mining 1-100**]], guide="PROFESSIONS\\Mining\\Leveling Guides\\Dragon Isles Mining 1-100"},
		{"item", text=[[**Dragon Isles Skinning 1-100**]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Dragon Isles Skinning 1-100"},

	}, --columnsend

	{"content", text=[[Crafting Professions]]},

	{"columns",
		--[=[ 
		{"item", text=[[**Dragon Isles Cooking 1-75**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Dragon Isles Cooking 1-100"},
		{"item", text=[[**Dragon Isles Inscription 1-100**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Dragon Isles Inscription 1-100"},
		{"item", text=[[**SDragon Isles Fishing 1-100**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Dragon Isles Fishing 1-100"},

		--]=]
		{"item", text=[[**Dragon Isles Alchemy 1-100**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Dragon Isles Alchemy 1-100"},
		{"item", text=[[**Dragon Isles Blacksmithing 1-100**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Dragon Isles Blacksmithing 1-100"},
		{"item", text=[[**Dragon Isles Enchanting 1-100**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Dragon Isles Enchanting 1-100"},
		{"item", text=[[**Dragon Isles Engineering 1-100**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Dragon Isles Engineering 1-100"},
		{"item", text=[[**Dragon Isles Jewelcrafting 1-100**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Dragon Isles Jewelcrafting 1-100"},
		{"item", text=[[**Dragon Isles Leatherworking 1-100**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Dragon Isles Leatherworking 1-100"},
		{"item", text=[[**Dragon Isles Tailoring 1-100**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Dragon Isles Tailoring 1-100"},
	}, --columnsend



})


table.insert(GuideMenu.Featured,{
	title="Patch 9.2 - Eternity's End", group="patch_92",
{"section", text=[[LEVELING]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch92Leveling",showcaseonly=true},
	{"content", text=[[Complete the Zereth Mortis questing guide and Unlock Flying in Zereth Mortis]]},
	{"text", text=[[Patch 9.2 introduces a new questing zone called Zereth Mortis with a new storyline campaign.|n|nComplete the first three chapters to unlock daily quests in Zereth Mortis. You can use the Flying Unlock guide to begin working towards unlocking flying in Zereth Mortis.|n|nNote that flying won't be fully attainable until the release of chapter 6 of the campaign which is estimated to be on or after March 15th.
]]},
	{"columns",
	{"item", text=[[**Zereth Mortis**]], guide="LEVELING\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis"},
	{"item", text=[[**Zereth Mortis Flying Unlock**]], guide="LEVELING\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis Flying Unlock"},
	}, --columnsend
	
{"section", text=[[DAILIES]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch92Dailies",showcaseonly=true},
	{"content", text=[[Complete Zereth Mortis Daily and World Quests]]},
	{"text", text=[[Make sure you have completed the first three chapters of the Zereth Mortis campaign guide to unlock daily quests.|n|nComplete Daily and World Quests to gain currency, gear, and materials to upgrade the cypher console and unlock new abilities for you and your Pocopoc companion.]]},
	{"columns",
	{"item", text=[[**Zereth Mortis Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Eternity's End\\\Zereth Mortis Daily Quests"},
	{"item", text=[[**Zereth Mortis World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Zereth Mortis World Quests"},
	}, --columnsend

{"section", text=[[DUNGEONS]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch92Dungeons",showcaseonly=true},
	{"content", text=[[Complete the Sepulcher of the First Ones Raid]]},

	{"columns",
	{"item", text=[[**Sepulcher of the First Ones Raid**]], guide="DUNGEONS\\Shadowlands Raids\\Sepulcher of the First Ones"},
	}, --columnsend


{"section", text=[[PROFESSIONS]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch92Professions",showcaseonly=true},
		{"content", text=[[Unlock the Protoform Synthesis crafting system and Collect Schematics]]},
		{"text", text=[[Zereth Mortis introduces a new crafting system called Protoform Synthesis that allows you to craft Battle Pets and Mounts.|n|nAfter you complete Chapter 3 of the Zereth Mortis campaign you will gain access to the Cypher Research Console. To unlock Protoform Synthesis, you will need to use the Dealic section of the Cypher Research Console to research the talents Dealic Understanding (for crafting Battle Pets) and Sopranian Understanding (for crafting Mounts).|n|nYou can then use the following guides to obtain schematics which teach you how to craft different creatures.|n|nNote: Some aspects of this content is time-gated until week 4 of the Patch 9.2 release.
]]},
		{"columns",
		{"item", text=[[**Schematic: Adorned Vombata**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Adorned Vombata"},
		{"item", text=[[**Schematic: Bronze Helicid**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Bronze Helicid"},
		{"item", text=[[**Schematic: Bronzewing Vespoid**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Bronzewing Vespoid"},
		{"item", text=[[**Schematic: Buzz**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Buzz"},
		{"item", text=[[**Schematic: Deathrunner**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Deathrunner"},
		{"item", text=[[**Schematic: Forged Spiteflyer**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Forged Spiteflyer"},
		{"item", text=[[**Schematic: Genesis Crawler**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Genesis Crawler"},
		{"item", text=[[**Schematic: Heartbond Lupine**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Heartbond Lupine"},
		{"item", text=[[**Schematic: Pale Regal Cervid**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Pale Regal Cervid"},
		{"item", text=[[**Schematic: Raptora Swooper**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Raptora Swooper"},
		{"item", text=[[**Schematic: Raptora Swooper**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Russet Bufonid"},
		{"item", text=[[**Schematic: Raptora Swooper**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Sundered Zerethsteed"},
		{"item", text=[[**Schematic: Raptora Swooper**]], guide="PROFESSIONS\\Protoform Synthesis\\Schematic: Tarachnid Creeper"},
		}, --columnsend

		{"section", text=[[PETSMOUNTS]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch92PetsMounts",showcaseonly=true},
		{"text", text=[[You can obtain the following collectibles in Patch 9.2.|n|nNote: Some aspects of this content is time-gated until week 4 of the Patch 9.2 release.
]]},


	{"guideslist", content=[[Battle Pets - Source: Vendor]],filters={patch="90200", source="Vendor"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Drop]],filters={patch="90200", source="Drop"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Quest]],filters={patch="90200", source="Quest"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Achievement]],filters={patch="90200", source="Achievement"},columns=4},

	{"guideslist", content=[[Battle Pets - Source: Discovery]],filters={patch="90200", source="Discovery"},columns=4},
	
	{"guideslist", content=[[Source: Profession]],filters={patch="90200", source="Profession"},columns=4},
	{"guideslist", content=[[Source: Promotion]],filters={patch="90200", source="Promotion"},columns=4},
	{"guideslist", content=[[Source: Trading Card Game]],filters={patch="90200", source="TradingCardGame"},columns=4},
	{"guideslist", content=[[Source: World Event]],filters={patch="90200", source="WorldEvent"},columns=4}, 
	

	{"guideslist", content=[[Ground Mounts]],filters={patch="90200", mounts="*", mounttype={"Ground"}},columns=4},
	{"guideslist", content=[[Flying Mounts]],filters={patch="90200", mounts="*", mounttype={"Flying"}},columns=4},

{"section", text=[[ACHIEVEMENTS]]},
	{"banner", image=ZGV.IMAGESDIR.."Patch92Achievements",showcaseonly=true},

	{"guideslist", content=[[Exploration Achievements]],filters={patch="90200",keywords="Exploration"},columns=4},
	{"guideslist", content=[[Quest Achievements]],filters={patch="90200",keywords="Quests"},columns=4},


}) 


table.insert(GuideMenu.Featured,{
	title="Patch 9.1 - Chains of Domination", group="patch_91",
{"section", text=[[LEVELING]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch91Leveling",showcaseonly=true},
	{"content", text=[[Complete the New Covenant Campaign Chapters and Unlock Flying in Shadowlands]]},
	{"text", text=[[The covenant campaign has been expanded with nine new chapters. Three of these chapters are available at launch. New chapters will unlock in game weekly. After completing the fourth chapter in week two you'll receive the item Memories of Sunless Skies which will unlock flying and let you get your covenant flying mount (at Renown 45).]]},
	{"columns",
	{"item", text=[[**Chains of Domination Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Chains of Domination\\Chains of Domination Questline"},
	}, --columnsend

	{"content", text=[[Unlock and Complete Korthia Questlines]]},
	{"text", text=[[Patch 9.1 introduces a new zone called Korthia. As you progress through the Chains of Domination guide you will unlock 2 questlines in Korthia:]]},
	{"list", text=[["They Could Be Anyone Questline" is the main Korthia questline. This questline is unlocked via the quest "A United Effort" in the Chains of Domination guide.]]},
	{"list", text=[["Archivists of Korthia Questline" unlocks the Archivists of Korthia faction. This questline is unlocked via the quest "In Need of Assistance" in the Chains of Domination guide.]]},
	{"text", text=[[You can do these individually or use our combined guide to do them together in one loop around Korthia.]]},


	{"columns",
	{"item", text=[[**They Could Be Anyone Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Chains of Domination\\They Could Be Anyone Questline"},
	{"item", text=[[**Archivists of Korthia Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Chains of Domination\\Archivists of Korthia Questline"},
	{"item", text=[[**Archivists of Korthia and They Could Be Anyone Questlines**]], guide="LEVELING\\Shadowlands (50-60)\\Chains of Domination\\Archivists of Korthia and They Could Be Anyone Questlines"},
	
	}, --columnsend

	{"content", text=[[Complete Covenant Assaults]]},
	{"text", text=[[These are the new covenant assault quests in The Maw that rotate every 3 days. They will unlock via the "A Unified Effort" quest in the Chains of Domination Questline.]]},
	{"columns",
	{"item", text=[[**Covenant Assaults**]], guide="LEVELING\\Shadowlands (50-60)\\Chains of Domination\\Covenant Assaults"},	}, --columnsend


{"section", text=[[DUNGEONS]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch91Dungeons",showcaseonly=true},
	{"content", text=[[Unlock the Tazavesh Dungeon]]},
	{"text", text=[[Complete this short quest chain to unlock the Gilded Landing flight path and Tazavesh, the Veiled Market dungeon.]]},
	{"columns",
	{"item", text=[[**Tazavesh, the Veiled Market Attunement**]], guide="DUNGEONS\\Shadowlands Dungeons\\Tazavesh, the Veiled Market Attunement"},
	}, --columnsend

	{"content", text=[[Complete the Tazavesh Dungeon]]},
	{"text", text=[[Tazavesh is a new 8 boss mythic megadungeon. It is unlocked by completing "The Veiled Market" quest in the Tazavesh, the Veiled Market Attunement guide.]]},
	{"columns",
	{"item", text=[[**Tazavesh, the Veiled Market**]], guide="DUNGEONS\\Shadowlands Dungeons\\Tazavesh, the Veiled Market"},
	}, --columnsend

	{"content", text=[[Complete the Sanctum of Domination Raid Questline]]},
	{"text", text=[[The Sanctum of Domination is a new 10 boss raid located inside Torghast. The normal and heroic version of the new raid will be available when the patch launches. The mythic and LFR will come later.]]},
	{"columns",
	{"item", text=[[**Sanctum of Domination**]], guide="DUNGEONS\\Shadowlands Raids\\Sanctum of Domination"},
	}, --columnsend


	
{"section", text=[[DAILIES]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch91Dailies",showcaseonly=true},
	{"content", text=[[Complete Korthia Daily Quests]]},
	{"text", text=[[These are the new Korthia daily quests which unlock via the "In Need of Assistance" quest in the Chains of Domination Questline guide.]]},
	{"columns",
	{"item", text=[[**Korthia Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Chains of Domination\\Korthia Daily Quests"},
	}, --columnsend

	{"content", text=[[Complete Daily Quests in The Maw]]},
	{"text", text=[[New world quests in the Maw. So far we've only seen one quest here, but this guide will be updated if more are added.]]},
	{"columns",
	{"item", text=[[**The Maw World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\The Maw World Quests"},
	}, --columnsend


{"section", text=[[PETSMOUNTS]]},
        {"banner", image=ZGV.IMAGESDIR.."Patch91PetsMounts",showcaseonly=true},

	{"guideslist", content=[[Battle Pets - Source: Vendor]],filters={patch="90100", source="Vendor"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Drop]],filters={patch="90100", source="Drop"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Quest]],filters={patch="90100", source="Quest"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Achievement]],filters={patch="90001", source="Achievement"},columns=4},

	{"guideslist", content=[[Battle Pets - Source: Discovery]],filters={patch="90100", source="Discovery"},columns=4},
	
	{"guideslist", content=[[Source: Profession]],filters={patch="90100", source="Profession"},columns=4},
	{"guideslist", content=[[Source: Promotion]],filters={patch="90100", source="Promotion"},columns=4},
	{"guideslist", content=[[Source: Trading Card Game]],filters={patch="90100", source="TradingCardGame"},columns=4},
	{"guideslist", content=[[Source: World Event]],filters={patch="90100", source="WorldEvent"},columns=4}, 
	

	{"guideslist", content=[[Ground Mounts]],filters={patch="90100", mounts="*", mounttype={"Ground"}},columns=4},
	{"guideslist", content=[[Flying Mounts]],filters={patch="90100", mounts="*", mounttype={"Flying"}},columns=4},


}) 


table.insert(GuideMenu.Featured,{
	title="Shadowlands", group="shadowlands",

{"section", text=[[LEVELING]]},
        {"banner", image=ZGV.IMAGESDIR.."ShadowlandsLeveling",showcaseonly=true},

	{"content", text=[[Reach Level 10]]},
	{"text", text=[[Shadowlands introduces a new shared starter zone called Exile's Reach to level from 1-10. If starting a new character, use the Exiles Reach guide to reach level 10.]]},
	{"columns",
		{"item", text=[[**Exile's Reach (1-10)**]], guide="LEVELING\\Starter Guides\\Exile's Reach (1-10)"},
	}, --columnsend

	{"content", text=[[Reach Level 50]]},
	{"text", text=[[At level 10 you can choose one expansion which will scale to level you from 10 to 50. If it's your first time Use the Chromie Time guide to pick or change your expansion.]]},
	{"columns",
		{"item", text=[[**Chromie Time**]], guide="LEVELING\\Starter Guides\\Chromie Time",roadmaponly=true},
		{"item", text=[[**Classic (1-60)**]], folder="LEVELING\\Classic (1-60)",roadmaponly=true},
		{"item", text=[[**The Burning Crusade (10-60)**]], folder="LEVELING\\The Burning Crusade (10-60)",roadmaponly=true},
		{"item", text=[[**Wrath of the Lich King (10-60)**]], folder="LEVELING\\Wrath of the Lich King (10-60)",roadmaponly=true},
		{"item", text=[[**Cataclysm (10-60)**]], folder="LEVELING\\Cataclysm (10-60)",roadmaponly=true},
		{"item", text=[[**Pandaria (10-60)**]], folder="LEVELING\\Pandaria (10-60)",roadmaponly=true},
		{"item", text=[[**Draenor (10-60)**]], folder="LEVELING\\Draenor (10-60)",roadmaponly=true},
		{"item", text=[[**Legion (10-60)**]], folder="LEVELING\\Legion (10-60)",roadmaponly=true},
		{"item", text=[[**Battle for Azeroth (10-60)**]], folder="LEVELING\\Battle for Azeroth (10-60)",roadmaponly=true},
	}, --columnsend
	
	{"content", text=[[Complete The Shadowlands Intro]]},
	{"text", text=[[Once you've reached level 50 you're ready to begin your journey into the Shadowlands by completing the intro scenario.]]},
	{"list", text=[[If it's your first time through Shadowlands you have to complete the storyline and will need to select the Main Character choice when prompted in this guide. If you've already played through Shadowlands you can choose the Alt Character option to skip the storyline and level with side quests, dungeons, and world quests.]]},
	{"columns",
		{"item", text=[[**Shadowlands Intro & Main Story Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"},
	}, --columnsend

	{"content", text=[[Reach Level 60]]},
	{"text", text=[[After you've completed the intro you will be able to choose one of the following four new zones to level up to 60. If you prefer to level only with story line quests and skip the side quests choose the story only versions]]},
	{"list", text=[[Alternatively, you can level up with our Shadowlands Dungeon guides.]]},
	{"columns",
		{"item", text=[[**Bastion**]], guide="LEVELING\\Shadowlands (50-60)\\Bastion"},
		{"item", text=[[**Bastion (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Bastion (Story Only)"},
		{"item", text=[[**Maldraxxus**]], guide="LEVELING\\Shadowlands (50-60)\\Maldraxxus"},
		{"item", text=[[**Maldraxxus (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Maldraxxus (Story Only)"},
		{"item", text=[[**Ardenweald**]], guide="LEVELING\\Shadowlands (50-60)\\Ardenweald"},
		{"item", text=[[**Ardenweald (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Ardenweald (Story Only)"},
		{"item", text=[[**Revendreth**]], guide="LEVELING\\Shadowlands (50-60)\\Revendreth"},
		{"item", text=[[**Revendreth (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Revendreth (Story Only)"},
		{"item", text=[[**The Maw**]], guide="LEVELING\\Shadowlands (50-60)\\The Maw"},
	}, --columnsend

	{"content", text=[[Complete Your Covenant Questline]]},
	{"text", text=[[Once you've reached level 60 you can start your covenant questline.]]},
	{"columns",
		{"item", text=[[**Kyrian Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Questline"},
		{"item", text=[[**Night Fae Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Questline"},
		{"item", text=[[**Necrolord Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Questline"},
		{"item", text=[[**Venthyr Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Questline"},
	}, --columnsend

	{"content", text=[[Unlock Covenant Sanctum Upgrades]]},
	{"text", text=[[You can use the following guides to unlock various upgrades for your covenant's sanctum.]]},
	{"columns",
		{"item", text=[[**Kyrian Anima Conductor**]], guide="LEVELING\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Anima Conductor"},
		{"item", text=[[**Kyrian Transport Network**]], guide="LEVELING\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Transport Network"},
		{"item", text=[[**Kyrian Path of Ascension**]], guide="LEVELING\\Shadowlands (50-60)\\Kyrian Covenant\\Path of Ascension\\Kyrian Path of Ascension"},

		{"item", text=[[**Night Fae Anima Conductor**]], guide="LEVELING\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Anima Conductor"},
		{"item", text=[[**Night Fae Transport Network**]], guide="LEVELING\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Transport Network"},
		{"item", text=[[**Night Fae Queen's Conservatory**]], guide="LEVELING\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Queen's Conservatory"},

		{"item", text=[[**Necrolords Anima Conductor**]], guide="LEVELING\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Anima Conductor"},
		{"item", text=[[**Necrolords Transport Network**]], guide="LEVELING\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Transport Network"},
		{"item", text=[[**Necrolords Command Table**]], guide="LEVELING\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Command Table"},
		{"item", text=[[**Necrolords Abomination Factory**]], guide="LEVELING\\Shadowlands (50-60)\\Necrolords Covenant\\Abomination Factory\\Necrolords Abomination Factory"},

		{"item", text=[[**Venthyr Anima Conductor**]], guide="LEVELING\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Anima Conductor"},
		{"item", text=[[**Venthyr Transport Network**]], guide="LEVELING\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Transport Network"},
		{"item", text=[[**Venthyr Command Table**]], guide="LEVELING\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Command Table"},
		{"item", text=[[**Venthyr The Ember Court**]], guide="LEVELING\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr The Ember Court"},
	}, --columnsend


{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.IMAGESDIR.."ShadowlandsDungeons",showcaseonly=true},

	{"content", text=[[Leveling Dungeons]]},
	{"text", text=[[You can level up to 60 using the following dungeons.]]},
	{"columns",
		{"item", text=[[**The Necrotic Wake**]], guide="DUNGEONS\\Shadowlands Dungeons\\The Necrotic Wake"},
		{"item", text=[[**Plaguefall**]], guide="DUNGEONS\\Shadowlands Dungeons\\Plaguefall"},
		{"item", text=[[**Mists of Tirna Scithe**]], guide="DUNGEONS\\Shadowlands Dungeons\\Mists of Tirna Scithe"},
		{"item", text=[[**Halls of Atonement**]], guide="DUNGEONS\\Shadowlands Dungeons\\Halls of Atonement"},
	}, --columnsend

	{"content", text=[[Max Level Dungeons]]},
	{"text", text=[[You can complete the following dungeons once you've reached level 60.]]},
	{"columns",
		{"item", text=[[**Theater of Pain**]], guide="DUNGEONS\\Shadowlands Dungeons\\Theater of Pain"},
		{"item", text=[[**De Other Side**]], guide="DUNGEONS\\Shadowlands Dungeons\\De Other Side"},
		{"item", text=[[**Spires of Ascension**]], guide="DUNGEONS\\Shadowlands Dungeons\\Spires of Ascension"},
		{"item", text=[[**Sanguine Depths**]], guide="DUNGEONS\\Shadowlands Dungeons\\Sanguine Depths"},
	}, --columnsend

	{"content", text=[[Unlock Torghast]]},
	{"text", text=[[Torghast is a new endlessly replayable dungeon. Use the guides below to unlock and play through the Torghast dungeon.]]},
	{"columns",
		{"item", text=[[**Torghast Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Torghast\\Torghast Questline"},
	}, --columnsend

	{"content", text=[[Shadowlands Raids]]},
	{"columns",
		{"item", text=[[**Castle Nathria**]], guide="DUNGEONS\\Shadowlands Raids\\Castle Nathria"},
	}, --columnsend

{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.IMAGESDIR.."ShadowlandsDailies",showcaseonly=true},

	{"content", text=[[Unlock World Quests and Covenant Dailies]]},
	{"text", text=[[Play through the Covenant Questline guides in the Leveling section until you unlock World Quests and Covenant Dailies.]]},

	{"content", text=[[Zone World Quests]]},
	{"text", text=[[Once you've reached level 60 you can enjoy the end game by completing world quests in the following zones.]]},
	{"list", text=[[It is recommended that you use the World Quest Planner feature for this.]]},
	{"columns",
		{"item", text=[[**Bastion World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Bastion World Quests"},
		{"item", text=[[**Ardenweald World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Ardenweald World Quests"},
		{"item", text=[[**Maldraxxus World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Maldraxxus World Quests"},
		{"item", text=[[**Revendreth World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Revendreth World Quests"},
		{"item", text=[[**Ve'nari Daily Quests (The Maw)**]], guide="DAILIES\\Shadowlands (50-60)\\Ve'nari Daily Quests (The Maw)", faction="A"},
		{"item", text=[[**Ve'nari World Quests (The Maw)**]], guide="DAILIES\\Shadowlands (50-60)\\Ve'nari Daily Quests (The Maw)", faction="H"},
	}, --columnsend

	{"content", text=[[Covenant Daily Quests]]},
	{"text", text=[[Once you've reached level 60 you can enjoy the end game by completing daily quests for the following covenants.]]},
	{"columns",
		{"item", text=[[**Kyrian Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Daily Quests"},
		{"item", text=[[**Kyrian Anima Conductor Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Anima Conductor Daily Quests"},
		{"item", text=[[**Necrolord Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolord Daily Quests"},
		{"item", text=[[**Necrolords Anima Conductor Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Anima Conductor Daily Quests"},
		{"item", text=[[**Necrolords Abomination Factory Weekly Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Abomination Factory Weekly Quests"},


		{"item", text=[[**Night Fae Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Daily Quests"},
		{"item", text=[[**Fungal Terminus Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Night Fae Covenant\\Fungal Terminus Daily Quests"},
		{"item", text=[[**Night Fae Anima Conductor Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Anima Conductor Daily Quests"},
		{"item", text=[[**Night Fae Anima Conductor Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Queen's Conservatory Daily Quests"},

		{"item", text=[[**Venthyr Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Daily Quests"},
		{"item", text=[[**Venthyr Anima Conductor Daily Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Anima Conductor Daily Quests"},
	}, --columnsend

--[=[

{"section", text=[[REPUTATIONS]]},
	{"banner", image=ZGV.IMAGESDIR.."ShadowlandsReputations",showcaseonly=true},

	{"content", text=[[Reach Exalted Status With Your Covenant]]},
	{"columns",
		{"item", text=[[**Kyrian Covenant of Bastion**]], guide="REPUTATIONS\\Shadowlands\\Kyrian Covenant of Bastion"},
		{"item", text=[[**Night Fae of Ardenweald**]], guide="REPUTATIONS\\Shadowlands\\Night Fae of Ardenweald"},
		{"item", text=[[**Necrolords of Maldraxxus**]], guide="REPUTATIONS\\Shadowlands\\Necrolords of Maldraxxus"},
		{"item", text=[[**Venthyr of Revendreth**]], guide="REPUTATIONS\\Shadowlands\\Venthyr of Revendreth"},
	}, --columnsend

--]=]

{"section", text=[[PROFESSIONS]]},
	{"banner", image=ZGV.IMAGESDIR.."ShadowlandsProfessions",showcaseonly=true},

	{"content", text=[[Reach Max Profession Skill in Shadowlands]]},
	{"columns",
		{"item", text=[[**Shadowlands Jewelcrafting 1-100**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Shadowlands Jewelcrafting 1-100"},
		{"item", text=[[**Shadowlands Cooking 1-75**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Shadowlands Cooking 1-75"},
		{"item", text=[[**Shadowlands Herbalism 1-175**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Shadowlands Herbalism 1-150"},
		{"item", text=[[**Shadowlands Mining 1-175**]], guide="PROFESSIONS\\Mining\\Leveling Guides\\Shadowlands Mining 1-150"},
		{"item", text=[[**Shadowlands Tailoring 1-100**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Shadowlands Tailoring 1-100"},
		{"item", text=[[**Shadowlands Alchemy 1-175**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Shadowlands Alchemy 1-175"},
		{"item", text=[[**Shadowlands Enchanting 1-100**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Shadowlands Enchanting 1-115"},
		{"item", text=[[**Shadowlands Engineering 1-100**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Shadowlands Engineering 1-100"},
		{"item", text=[[**Shadowlands Inscription 1-100**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Shadowlands Inscription 1-100"},
		{"item", text=[[**Shadowlands Leatherworking 1-100**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Shadowlands Leatherworking 1-100"},
		{"item", text=[[**Shadowlands Blacksmithing 1-100**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Shadowlands Blacksmithing 1-100"},
		{"item", text=[[**Shadowlands Fishing 1-175**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Shadowlands Fishing 1-200"},
	}, --columnsend


{"section", text=[[PETSMOUNTS]]},
	{"banner", image=ZGV.IMAGESDIR.."ShadowlandsPets",showcaseonly=true},

	{"guideslist", content=[[Battle Pets - Source: Vendor]],filters={patch="90001", source="Vendor"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Drop]],filters={patch="90001", source="Drop"},columns=4},
	{"guideslist", content=[[Battle Pets - Source: Quest]],filters={patch="90001", source="Quest"},columns=4},
	--{"guideslist", content=[[Battle Pets - Source: Achievement]],filters={patch="90001", source="Achievement"},columns=4},

	{"guideslist", content=[[Battle Pets - Source: Discovery]],filters={patch="90001", source="Discovery"},columns=4},
	--[=[
	{"guideslist", content=[[Source: Profession]],filters={patch="90001", source="Profession"},columns=4},
	{"guideslist", content=[[Source: Promotion]],filters={patch="90001", source="Promotion"},columns=4},
	{"guideslist", content=[[Source: Trading Card Game]],filters={patch="90001", source="TradingCardGame"},columns=4},
	{"guideslist", content=[[Source: World Event]],filters={patch="90001", source="WorldEvent"},columns=4}, 
	--]=]

	{"guideslist", content=[[Ground Mounts]],filters={patch="90001", mounts="*", mounttype={"Ground"}},columns=4},
	{"guideslist", content=[[Flying Mounts]],filters={patch="90001", mounts="*", mounttype={"Flying"}},columns=4},

{"section", text=[[ACHIEVEMENTS]]},
	{"banner", image=ZGV.IMAGESDIR.."ShadowlandsAchievements",showcaseonly=true},

	{"guideslist", content=[[Exploration Achievements]],filters={patch="90001",keywords="Exploration"},columns=4},
	{"guideslist", content=[[Quest Achievements]],filters={patch="90001",keywords="Sojourner"},columns=4},
	{"guideslist", content=[[Dungeon & Raids Achievements]],filters={patch="90001",keywords={"Dungeons","Raids"}},columns=4},
	{"guideslist", content=[[Expansion Feature Achievements]],filters={patch="90001",keywords={"Expansion Features"}},columns=4},
	{"guideslist", content=[[Feats of Strength Achievements]],filters={patch="90001",keywords={"Feats of Strength"}},columns=4},
	{"guideslist", content=[[Pet Battle Achievements]],filters={patch="90001",keywords={"AND","Pet","Battle"}},columns=4},

})



table.insert(GuideMenu.Featured,{
	title="Patch 8.3 - Visions of N'Zoth", group="patch_83",

{"section", text=[[LEVELING]]},
	{"banner", image=ZGV.IMAGESDIR.."Patch83Leveling",showcaseonly=true},

	{"content", text=[[Optional: Unlock Allied Races]]},
	{"text", text=[[Mechangnomes for Alliance and Vulperans for Horde are now available to unlock.]]},
	{"columns",
		{"item", text=[[**Mechagnome Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Mechagnome Race Unlock",faction="A"},
		{"item", text=[[**Vulpera Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Vulpera Race Unlock", faction="H"},
	}, --columnsend

	{"content", text=[[Optional: Obtain Worgen or Goblin Heritage Armor ]]},
	{"text", text=[[You can now obtain Heritage Armor for Worgen (Alliance only) and Goblins (Horde only).]]},
	{"columns",
		{"item", text=[[**Worgen Heritage Armor**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Heritage Armor\\Worgen Heritage Armor", faction="A"},
		{"item", text=[[**Goblin Heritage Armor**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Heritage Armor\\Goblin Heritage Armor", faction="H"},
	}, --columnsend

	{"content", text=[[Magni's Plan Questline]]},
	{"text", text=[[This is the new main questline for Patch 8.3. Play through the Magni's Plan leveling guide until you unlock the legendary cloak. This will open both assault zones and factions.]]},
	{"list", text=[[Once you complete this you can proceed to the new Dailies content.]]},
	{"columns",
		{"item", text=[[**Magni's Plan**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Heart of Azeroth\\Magni's Plan"},
	}, --columnsend

	{"content", text=[[Horrific Visions]]},
	{"text", text=[[These are 1-5 player Mage Tower inspired challenges. You can enter these solo or with a group when each group member has a Vessel of Horrific Visions. ]]},
	{"list", text=[[You get a Vessel of Horrific Vision each week from the N'Zoth assault and can purchase additional ones for 10,000 Coalescing Visions from Wrathion in the Chamber of Heart.]]},
	{"columns",
		{"item", text=[[**Horrific Vision of Stormwind**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Horrific Vision of Stormwind"},
	}, --columnsend
	
{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.IMAGESDIR.."Patch83Dungeons",showcaseonly=true},

	{"content", text=[[Raids]]},
	{"text", text=[[These guides will walk you through all 4 wings of the new 12 boss raid.]], guide="Magni's Plan"},
	{"columns",
		{"item", text=[[**Ny'alotha, the Waking City - Vision of Destiny**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Vision of Destiny"},
		{"item", text=[[**Ny'alotha, the Waking City - Halls of Devotion**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Halls of Devotion"},
		{"item", text=[[**Ny'alotha, the Waking City - Gift of Flesh**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Gift of Flesh"},{"item", text=[[**Ny'alotha, the Waking City - The Waking Dream**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - The Waking Dream"},
	}, --columnsend

{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.IMAGESDIR.."Patch83Dailies",showcaseonly=true},

	{"content", text=[[Assaults]]},
	{"text", text=[[One zone will have the Ny'alotha raid entrance in it each week. This zone is the N�Zoth assault zone and it will remain active each week. Do the assault in this zone every Tuesday.]]},
	{"list", text=[[The zone without the raid entrance will alternate every few days with a new assault available. ]]},
	{"columns",
		{"item", text=[[**Uldum Assaults**]], guide="DAILIES\\Battle for Azeroth\\Uldum\\Uldum Assaults"},
		{"item", text=[[**Vale of Eternal Blossoms Assaults**]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms\\Vale of Eternal Blossoms Assaults"},
	}, --columnsend

	{"content", text=[[World Quests]]},
	{"columns",
		{"item", text=[[**Uldum World Quests**]], guide="DAILIES\\Battle for Azeroth\\Uldum World Quests"},
		{"item", text=[[**Vale of Eternal Blossoms World Quests**]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms World Quests"},
	}, --columnsend

	{"content", text=[[Reputations ]]},
	{"columns",
		{"item", text=[[**Rajani**]], guide="REPUTATIONS\\Battle for Azeroth\\Rajani"},
		{"item", text=[[**Uldum Accord**]], guide="REPUTATIONS\\Battle for Azeroth\\Uldum Accord"},
	}, --columnsend
	
{"section", text=[[PETSMOUNTS]]},
	{"guideslist", content=[[Source: Vendor]],filters={patch="83000", source="Vendor"},columns=4},
	{"guideslist", content=[[Source: Drop]],filters={patch="83000", source="Drop"},columns=4},
	{"guideslist", content=[[Source: Quest]],filters={patch="83000", source="Quest"},columns=4},
	{"guideslist", content=[[Source: Achievement]],filters={patch="83000", source="Achievement"},columns=4},

	--[=[
	{"guideslist", content=[[Source: Discovery]],filters={patch="83000", source="Discovery"},columns=4},
	{"guideslist", content=[[Source: Profession]],filters={patch="83000", source="Profession"},columns=4},
	{"guideslist", content=[[Source: Promotion]],filters={patch="83000", source="Promotion"},columns=4},
	{"guideslist", content=[[Source: Trading Card Game]],filters={patch="83000", source="TradingCardGame"},columns=4},
	{"guideslist", content=[[Source: World Event]],filters={patch="83000", source="WorldEvent"},columns=4}, 
	--]=]


	
{"section", text=[[TITLES]]},
	{"content", text=[[Titles]]},
	{"columns",
		{"item", text=[[**The Awakened**]], guide="TITLES\\Battle for Azeroth Titles\\General\\The Awakened"},
		{"item", text=[[**Veteran of the Fourth War**]], guide="TITLES\\Battle for Azeroth Titles\\General\\Veteran of the Fourth War"},
	}, --columnsend

	{"content", text=[[Dungeon / Raid Achievements]]},
	{"columns",
		{"item", text=[[**Mythic: N'Zoth, the Corruptor**]], guide="ACHIEVEMENTS\\Dungeons & Raids\\Battle for Azeroth Raids\\Mythic: N'Zoth, the Corruptor"},
		{"item", text=[[**Battle for Azeroth Keystone Master: Season Four**]], guide="ACHIEVEMENTS\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Master: Season Four"},
		{"item", text=[[**Battle for Azeroth Keystone Conqueror: Season Four**]], guide="ACHIEVEMENTS\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Conqueror: Season Four"},
	}, --columnsend

	{"content", text=[[Reputation Achievements]]},
	{"columns",
		{"item", text=[[**Allied Races: Mechagnome**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Allied Races: Mechagnome", faction="A"},
		{"item", text=[[**Heritage of the Mechagnome**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Heritage of the Mechagnome", faction="A"},
		{"item", text=[[**Allied Races: Vulpera**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Allied Races: Vulpera", faction="H"},
		{"item", text=[[**Heritage of the Vulpera**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Heritage of the Vulpera", faction="H"},
	}, --columnsend

	{"content", text=[[Expansion Achievements]]},
	{"columns",
		{"item", text=[[**The Most Horrific Vision of Stormwind**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\The Most Horrific Vision of Stormwind"},
		{"item", text=[[**The Even More Horrific Vision of Stormwind**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\The Even More Horrific Vision of Stormwind"},
		{"item", text=[[**Reeking of Visions**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\Reeking of Visions"},
		{"item", text=[[**Through the Depths of Visions**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\Through the Depths of Visions"},
		{"item", text=[[**We Have the Technology**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\We Have the Technology"},
	}, --columnsend

	{"content", text=[[Pets Battle Achievements]]},
	{"columns",
		{"item", text=[[**Pet Battle Challenge: Blackrock Depths**]], guide="ACHIEVEMENTS\\Pet Battles\\Battle for Azeroth\\Pet Battle Challenge: Blackrock Depths"},
	}, --columnsend

	{"content", text=[[Quest Achievements]]},
	{"columns",
		{"item", text=[[**The Fourth War**]], guide="ACHIEVEMENTS\\Quests\\Battle for Azeroth\\The Fourth War"},
	}, --columnsend
})



table.insert(GuideMenu.Featured,{
	title="Battle for Azeroth", group="patch_80",

{"section", text=[[LEVELING]]},
	{"banner", image=ZGV.IMAGESDIR.."BFALeveling",showcaseonly=true},

	{"content", text=[[Unlock Allied Races]]},
	{"text", text=[[If you wish to play as one of the new Allied races, you will need to unlock them first, if you haven't already.]]},
	{"columns",
		{"item", text=[[**Void Elf Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Void Elf Race Unlock", faction="A"},
		{"item", text=[[**Lightforged Draenei Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Lightforged Draenei Race Unlock", faction="A"},
		{"item", text=[[**Kul Tiran Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Kul Tiran Race Unlock", faction="A"},
	}, --columnsend
	{"columns",
		{"item", text=[[**Nightborne Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Nightborne Race Unlock", faction="H"},
		{"item", text=[[**Highmountain Tauren Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Highmountain Tauren Race Unlock", faction="H"},
		{"item", text=[[**Mag'har Orc Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Allied Races\\Mag'har Orc Race Unlock", faction="H"},

	}, --columnsend

	{"content", text=[[10-60 Leveling    ]]},
	{"text", text=[[Use the Chromie Time guide and choose the Battle for Azeroth expansion. Before you can begin exploring the continents of Kul Tiras and Zandalar, you'll need to obtain the Heart of Azeroth, a necklace that replaces your artifact weapons. You'll also want to to begin the War Campaign guide in a separate tab. New war campaign quests will unlock as you level your character, so you will be using this guide along with the Leveling guides during the entire leveling process. ]]},
	{"list", text=[[Alternatively, you can level up with our Dungeon Guides. However, you'll miss out on reputation needed to unlock World Quests later.]], folder="DUNGEONS\\Battle for Azeroth Dungeons\\"},
	{"list", text=[[Once you reach level 120 you can start using our End Game guides.]], folder="DAILIES\\Battle for Azeroth\\"},
	{"columns",
		{"item", text=[[**Chromie Time**]], guide="LEVELING\\Starter Guides\\Chromie Time"},

		{"item", text=[[**Tiragarde Sound**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Kul Tiras\\Tiragarde Sound (10-60)", faction="A"},
		{"item", text=[[**Stormsong Valley**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Kul Tiras\\Stormsong Valley (30-60)", faction="A"},
		{"item", text=[[**Drustvar**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Kul Tiras\\Drustvar (20-60)", faction="A"},

		{"item", text=[[**Zuldazar**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)", faction="H"},
		{"item", text=[[**Nazmir**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Zandalar\\Nazmir (10-60)", faction="H"},
		{"item", text=[[**Vol'dun**]], guide="LEVELING\\Battle for Azeroth (10-60)\\Zandalar\\Vol'dun (10-60)", faction="H"},

		{"item", text=[[**War Campaign**]], guide="LEVELING\\Battle for Azeroth (10-60)\\War Campaign"},
	}, --columnsend

	
{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.IMAGESDIR.."BFADungeons",showcaseonly=true},

	{"text", text=[[You can run Dungeons to level up to 120 and get gear. ]]},
	{"list", text=[[Alternatively, you can level up with our Leveling guides.]], folder="LEVELING\\Battle for Azeroth (10-60)"},
	{"list", text=[[You can use the Gear Finder to find the best gear for your character.]]},
	{"list", text=[[Once you reach level 120 you can start using our End Game guides.]]},

	{"content", text=[[Dungeons]]},
	{"columns",
		{"item", text=[[**Freehold**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Freehold"},
		{"item", text=[[**Atal'Dazar**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Atal'Dazar"},
		{"item", text=[[**Waycrest Manor**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Waycrest Manor"},
		{"item", text=[[**Shrine of the Storm**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Shrine of the Storm"},
		{"item", text=[[**Siege of Boralus**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Siege of Boralus"},
		{"item", text=[[**Temple of Sethraliss**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Temple of Sethraliss"},
		{"item", text=[[**The Underrot**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\The Underrot"},
		{"item", text=[[**Kings' Rest**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Kings' Rest"},
		{"item", text=[[**The MOTHERLODE!!**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\The MOTHERLODE!!"},
	}, --columnsend

	{"content", text=[[Raids]]},
	{"columns",
		{"item", text=[[**Uldir - Crimson Descent**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Uldir - Crimson Descent"},
		{"item", text=[[**Uldir - Halls of Containment**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Uldir - Halls of Containment"},
		{"item", text=[[**Uldir - Heart of Corruption**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Uldir - Heart of Corruption"},
	}, --columnsend

{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.IMAGESDIR.."BFADailies",showcaseonly=true},

	{"content", text=[[Unlock World Quests]]},
	{"text", text=[[Once you've reached 120 and unlocked all 3 of the footholds in the War Campaign you'll receive a quest to unlock World Quests. In order to complete this quest you will need to reach "Friendly" status with the 3 new factions in Battle for Azeroth. After reaching Friendly status, you can turn in the quest, which will give you the Flight Master's Whistle and unlock world quests.]]},
	{"list", text=[[This will already be done if you used our Leveling guides.]]},
	{"columns",
		{"item", text=[[**Proudmoore Admiralty**]], guide="REPUTATIONS\\Battle for Azeroth\\Proudmoore Admiralty", faction="A"},
		{"item", text=[[**Order of Embers**]], guide="REPUTATIONS\\Battle for Azeroth\\Order of Embers", faction="A"},
		{"item", text=[[**Storm's Wake**]], guide="REPUTATIONS\\Battle for Azeroth\\Storm's Wake", faction="A"},

		{"item", text=[[**Zandalari Empire**]], guide="REPUTATIONS\\Battle for Azeroth\\Zandalari Empire", faction="H"},
		{"item", text=[[**Talanji's Expedition**]], guide="REPUTATIONS\\Battle for Azeroth\\Talanji's Expedition", faction="H"},
		{"item", text=[[**Voldunai**]], guide="REPUTATIONS\\Battle for Azeroth\\Voldunai", faction="H"},
	}, --columnsend

	{"content", text=[[Complete World Quests]]},
	{"text", text=[[Complete world quests in Kul Tiras and Zandalar to earn gear, gain War Resources, and Artifact Power to improve your Heart of Azeroth necklace.]]},
	{"list", text=[[You can use the World Quest Planner feature to complete World Quests.]]},
	{"columns",
		{"item", text=[[**Arathi Highlands World Quests**]], guide="DAILIES\\Battle for Azeroth\\Arathi Highlands World Quests"},
		{"item", text=[[**Drustvar World Quests**]], guide="DAILIES\\Battle for Azeroth\\Drustvar World Quests"},
		{"item", text=[[**Mechagon Island World Quests**]], guide="DAILIES\\Battle for Azeroth\\Mechagon Island World Quests"},
		{"item", text=[[**Nazmir World Quests**]], guide="DAILIES\\Battle for Azeroth\\Nazmir World Quests"},
		{"item", text=[[**Vale of Eternal Blossoms World Quests**]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms World Quests"},
	}, --columnsend

{"section", text=[[PROFESSIONS]]},
	{"content", text=[[Gathering Professions]]},
	{"columns",
		{"item", text=[[**Kul Tiran Herbalism 1-175**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Kul Tiran Herbalism 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Skinning 1-175**]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Kul Tiran Skinning 1-175", faction="A"},

		{"item", text=[[**Zandalari Herbalism 1-175**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Zandalari Herbalism 1-175", faction="H"},
		{"item", text=[[**Zandalari Skinning 1-175**]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Zandalari Skinning 1-175", faction="H"},
	}, --columnsend

	{"content", text=[[Crafting Professions]]},
	{"columns",
		{"item", text=[[**Kul Tiran Alchemy 1-175**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Kul Tiran Alchemy 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Blacksmithing 1-175**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Kul Tiran Blacksmithing 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Enchanting 1-175**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Kul Tiran Enchanting 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Engineering 1-175**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Kul Tiran Engineering 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Inscription 1-175**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Kul Tiran Inscription 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Jewelcrafting 1-175**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Kul Tiran Jewelcrafting 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Leatherworking 1-175**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Kul Tiran Leatherworking 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Tailoring 1-175**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Kul Tiran Tailoring 1-175", faction="A"},

		{"item", text=[[**Zandalari Alchemy 1-175**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Zandalari Alchemy 1-175", faction="H"},
		{"item", text=[[**Zandalari Blacksmithing 1-175**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Zandalari Blacksmithing 1-175", faction="H"},
		{"item", text=[[**Zandalari Enchanting 1-175**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Zandalari Enchanting 1-175", faction="H"},
		{"item", text=[[**Zandalari Engineering 1-175**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Zandalari Engineering 1-175", faction="H"},
		{"item", text=[[**Zandalari Inscription 1-175**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Zandalari Inscription 1-175", faction="H"},
		{"item", text=[[**Zandalari Jewelcrafting 1-175**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Zandalari Jewelcrafting 1-175", faction="H"},
		{"item", text=[[**Zandalari Leatherworking 1-175**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Zandalari Leatherworking 1-175", faction="H"},
		{"item", text=[[**Zandalari Tailoring 1-175**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Zandalari Tailoring 1-175", faction="H"},
	}, --columnsend

	{"content", text=[[Secondary Professions]]},
	{"columns",
		{"item", text=[[**Kul Tiran Cooking 1-175**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Kul Tiran Cooking 1-175", faction="A"},
		{"item", text=[[**Kul Tiran Fishing 1-175**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Kul Tiran Fishing 1-175", faction="A"},

		{"item", text=[[**Zandalari Cooking 1-175**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Zandalari Cooking 1-175", faction="H"},
		{"item", text=[[**Zandalari Fishing 1-175**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Zandalari Fishing 1-175", faction="H"},
	}, --columnsend
	
	{"content", text=[[Profession Questlines]]},
	{"columns",
		{"item", text=[[**Kul Tiran Herbalism Quest Line**]], guide="PROFESSIONS\\Herbalism\\Quest Guides\\Kul Tiran Herbalism Quest Line", faction="A"},
		{"item", text=[[**Kul Tiran Skinning Quest Guide**]], guide="PROFESSIONS\\Skinning\\Quest Guides\\Kul Tiran Skinning Quest Guide", faction="A"},

		{"item", text=[[**Zandalari Herbalism Quest Line**]], guide="PROFESSIONS\\Herbalism\\Quest Guides\\Zandalari Herbalism Quest Line", faction="H"},
		{"item", text=[[**Zandalari Skinning Quest Guide**]], guide="PROFESSIONS\\Skinning\\Quest Guides\\Zandalari Skinning Quest Guide", faction="H"},
	}, --columnsend


{"section", text=[[PETSMOUNTS]]},
	{"guideslist", content=[[Source: Pet Battle]],filters={patch="80100", source="PetBattle"},columns=4},
	{"guideslist", content=[[Source: Vendor]],filters={patch="80100", source="Vendor"},columns=4},
	{"guideslist", content=[[Source: Drop]],filters={patch="80100", source="Drop"},columns=4},
	{"guideslist", content=[[Source: Quest]],filters={patch="80100", source="Quest"},columns=4},
	{"guideslist", content=[[Source: Achievement]],filters={patch="80100", source="Achievement"},columns=4},
	{"guideslist", content=[[Source: Profession]],filters={patch="80100", source="Profession"},columns=4},
	{"guideslist", content=[[Source: Promotion]],filters={patch="80100", source="Promotion"},columns=4},
})
