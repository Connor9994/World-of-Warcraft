local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-------------------------
----- Timeless Isle -----
-------------------------

ZygorGuidesViewer:RegisterInclude("celestial_tournament",[[
		talk Master Li##73082
		accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
	step
		talk Master Li##73082 |goto Timeless Isle/0 34.7,59.6
		Tell him _I'd like to enter the Celestial Tournament._ |goto Celestial Tournament/0 34.0,55.2 < 20
		Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to.
		Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_. |confirm |next "chen"
		OR
		Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_. |confirm |next "shademaster"
	//Scenario (option 1)
	step
	label "chen"
		talk Chen Stormstout##71927
		Tell him _Let's do this!_
		|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental.
		Defeat Chen Stormstout in a pet battle |goto Celestial Tournament/0 37.8,57.3 |q 33137
		confirm
	step
		talk Wrathion##71924
		Tell him _Let's do this!_
		|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin.
		Defeat Wrathion in a pet battle |goto Celestial Tournament/0 40.3,56.5 |q 33137
		confirm
	step
		talk Taran Zhu##71931
		Tell him _Let's do this!_
		|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids.
		Defeat Taran Zhu in a pet battle |goto Celestial Tournament/0 40.1,52.6 |q 33137
		confirm |next "phasetwo"
	//Scenario (option 2)
	step
	label "shademaster"
		talk Shademaster Kiryn##71930
		Tell her _Let's do this!_
		|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical.
		Defeat Shademaster Kiryn in a pet battle |goto Celestial Tournament/0 37.8,57.3 |q 33137
		confirm
	step
		talk Blingtron 4000##71933
		Tell him _Let's do this!_
		|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical.
		Defeat Blingtron 4000 in a pet battle |goto Celestial Tournament/0 40.4,56.5 |q 33137
		confirm
	step
		talk Wise Mari##71932
		Tell him _Let's do this!_
		|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
		Defeat Wise Mari in a pet battle |goto Celestial Tournament/0 40.0,52.7 |q 33137
		confirm
	//Second part
	step
	label "phasetwo"
		talk Yu'la, Broodling of Yu'lon##73507
		Tell him, "Let's do this!"
		|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him.
		Defeat Yu'la, Broodling of Yu'lon in a pet battle |goto Celestial Tournament/0 38.9,56.7 |q 33137
		confirm
	step
		talk Xu-Fu, Cub of Xuen##73505
		Tell him, "Let's do this!"
		|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Xu-Fu, Cub of Xuen in a pet battle |goto Celestial Tournament/0 40.0,55.2 |q 33137
		confirm
	step
		talk Zao, Calfling of Niuzao##73506
		Tell him, "Let's do this!"
		|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Zao, Calfling of Niuzao in a pet battle |goto Celestial Tournament/0 39.0,53.8 |q 33137
		confirm
	step
		talk Chi-Chi, Hatchling of Chi-Ji##73503
		Tell him, "Let's do this!"
		|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |goto Celestial Tournament/0 38.0,55.2 |q 33137
		confirm
	step
		Complete The Celestial Tournament |q 33137/1
]])

ZygorGuidesViewer:RegisterInclude("Toraan_the_Revered",[[
		turnin Argussian Reach##48642 |goto Antoran Wastes/5 56.32,28.70 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887)
		turnin Argussian Reach##48642 |goto Eredath/3 66.69,58.99 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		turnin Argussian Reach##48642 |goto Krokuun/1 68.20,56.95 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Vindicator_Jaelaana",[[
		turnin Army of the Light##48639 |goto Antoran Wastes/5 62.61,63.91 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887)
		turnin Army of the Light##48639 |goto Eredath/3 43.37,67.09 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		turnin Army of the Light##48639 |goto Krokuun/1 43.25,74.39 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Toraan_the_Revered_Paragon",[[
		turnin Supplies From the Argussian Reach##48976 |goto Antoran Wastes/5 56.32,28.70 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887)
		turnin Supplies From the Argussian Reach##48976 |goto Eredath/3 66.69,58.99 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		turnin Supplies From the Argussian Reach##48976 |goto Krokuun/1 68.20,56.95 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Vindicator_Jaelaana_Paragon",[[
		turnin Supplies From the Army of the Light##48977 |goto Antoran Wastes/5 62.61,63.91 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887)
		turnin Supplies From the Army of the Light##48977 |goto Eredath/3 43.37,67.09 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		turnin Supplies From the Army of the Light##48977 |goto Krokuun/1 43.25,74.39 |only if default
]])