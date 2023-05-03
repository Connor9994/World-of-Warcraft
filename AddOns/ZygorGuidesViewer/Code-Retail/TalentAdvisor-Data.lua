local name,ZGV = ...

local TA = ZGV.TalentAdvisor

--["display name"] = {spec index, recommended, [[class talents]], [[spec talents]]},

--/run ZGV.Testing.RecordTalents()

--/run ZGV.TalentAdvisor:DumpTalents()
--/run ZGV:ShowDump(ZGV.db.profile.dumptalents[ZGV.TalentAdvisor.PlayerClass])



TA.Builds = {
	DEATHKNIGHT = {
		["Blood (Tank)"] = {1,false,[[
				Raise Dead##96201
				Cleaving Strikes##96202
				Enfeeble##96189
				Brittle##96190
				Anti-Magic Shell##96199
				Improved Death Strike##96196
				Veteran of the Third War##96197
				Veteran of the Third War##96197
				Chains of Ice##96210
				Mind Freeze##96211
				Might of Thassarian##96205
				Grip of the Dead##96185
				Unholy Ground##96187
				Permafrost##96212
				Icebound Fortitude##96213
				Merciless Strikes##96214
				Gloom Ward##96180
				Runic Attenuation##96216
				Blinding Sleet##96172
				Anti-Magic Barrier##96174
				Insidious Chill##96217
				Icy Talons##96179
				Icy Talons##96179
				Empower Rune Weapon##96178
				Will of the Necropolis##96182
				Will of the Necropolis##96182
				Rune Mastery##96209
				Rune Mastery##96209
				Abomination Limb##96177
				Death's Echo##96184
				Unholy Endurance##96192
				Death Strike##96200
			]],[[
				Heart Strike##96304
				Marrowrend##96303
				Vampiric Blood##96308
				Ossuary##96277
				Blood Boil##96305
				Crimson Scourge##96306
				Death's Caress##96279
				Improved Heart Strike##96257
				Improved Heart Strike##96257
				Dancing Rune Weapon##96269
				Insatiable Blade##96260
				Hemostasis##96268
				Relish in Blood##96280
				Rapid Decomposition##96273
				Coagulopathy##96166
				Heartbreaker##96266
				Heartbreaker##96266
				Improved Bone Shield##96170
				Leeching Strike##96301
				Blood Tap##96274
				Everlasting Bond##96261
				Sanguine Ground##96169
				Iron Heart##96307
				Bloodshot##96256
				Bloodworms##96309
				Voracious##96171
				Tombstone##96270
				Shattering Bone##96259
				Shattering Bone##96259
				Red Thirst##96263
			]]
		},
		["Frost (DPS)"] = {2,false,[[
				Death Strike##96200
				Raise Dead##96201
				Mind Freeze##96211
				Permafrost##96212
				Cleaving Strikes##96202
				Enfeeble##96189
				Brittle##96190
				Icebound Fortitude##96213
				Merciless Strikes##96214
				Might of Thassarian##96205
				Unholy Endurance##96192
				Unholy Ground##96187
				Gloom Ward##96180
				Runic Attenuation##96216
				Anti-Magic Shell##96199
				Anti-Magic Barrier##96174
				Veteran of the Third War##96197
				Veteran of the Third War##96197
				Anti-Magic Zone##96194
				Improved Death Strike##96196
				Insidious Chill##96217
				Icy Talons##96179
				Icy Talons##96179
				Empower Rune Weapon##96178
				Will of the Necropolis##96182
				Will of the Necropolis##96182
				Rune Mastery##96209
				Rune Mastery##96209
				Abomination Limb##96177
				Unholy Bond##96183
				Unholy Bond##96183
				Chains of Ice##96210
			]],[[
				Frost Strike##96245
				Obliterate##96246
				Howling Blast##96244
				Killing Machine##96247
				Rime##96243
				Runic Command##96232
				Runic Command##96232
				Remorseless Winter##96242
				Pillar of Frost##96234
				Improved Rime##96241
				Biting Cold##96164
				Gathering Storm##96239
				Unleashed Frenzy##96248
				Improved Obliterate##96249
				Rage of the Frozen Champion##96250
				Murderous Efficiency##96252
				Frostreaper##96218
				Enduring Strength##96230
				Enduring Strength##96230
				Icecap##96162
				Avalanche##96235
				Frostwyrm's Fury##96224
				Absolute Zero##96223
				Icebreaker##96161
				Icebreaker##96161
				Invigorating Freeze##96238
				Invigorating Freeze##96238
				Breath of Sindragosa##96222
				Frostwhelp's Aid##96236
				Frostwhelp's Aid##96236
			]]
		},
		["Unholy (DPS)"] = {3,true,[[
				Death Strike##96200
				Chains of Ice##96210
				Mind Freeze##96211
				Cleaving Strikes##96202
				Enfeeble##96189
				Brittle##96190
				Permafrost##96212
				Icebound Fortitude##96213
				Merciless Strikes##96214
				Might of Thassarian##96205
				Grip of the Dead##96185
				Unholy Ground##96187
				Gloom Ward##96180
				Runic Attenuation##96216
				Anti-Magic Shell##96199
				Acclimation##96175
				Anti-Magic Barrier##96174
				Veteran of the Third War##96197
				Veteran of the Third War##96197
				Anti-Magic Zone##96194
				Insidious Chill##96217
				Icy Talons##96179
				Icy Talons##96179
				Empower Rune Weapon##96178
				Will of the Necropolis##96182
				Will of the Necropolis##96182
				Rune Mastery##96209
				Rune Mastery##96209
				Abomination Limb##96177
				Unholy Bond##96183
				Unholy Bond##96183
				Raise Dead##96201
			]],[[
				Festering Strike##96326
				Raise Dead##96325
				Scourge Strike##96327
				Dark Transformation##96324
				Outbreak##96328
				Unholy Blight##96296
				Infected Claws##96318
				Improved Festering Strike##96329
				Sudden Doom##96314
				Plaguebringer##96319
				Unholy Pact##96316
				Epidemic##96295
				Replenishing Wounds##96297
				Bursting Sores##96299
				Vile Contagion##96293
				Unholy Command##96331
				Unholy Command##96331
				Eternal Agony##96332
				Improved Festering Strike##96329
				Improved Death Coil##96321
				Army of the Dead##96333
				Army of the Damned##96287
				Superstrain##96289
				Death Rot##96292
				Festermight##96286
				Festermight##96286
				Unholy Assault##96285
				Ghoulish Frenzy##96288
				Ghoulish Frenzy##96288
				Morbidity##96334
			]]
		},
	},
	DEMONHUNTER = {
		["Havoc (DPS)"] = {1,true, [[
				Blazing Path##112928
				Unrestrained Fury##112852
				Unrestrained Fury##112852
				Improved Disrupt##112849
				Felblade##112842
				Pursuit##112851
				Sigil of Flame##112854
				Imprison##112927
				Consume Magic##112926
				Charred Warblades##112861
				Rush of Chaos##112844
				Infernal Armor##112924
				Infernal Armor##112924
				Demonic##112923
				Master of the Glaive##112912
				Chaos Nova##112911
				Will of the Illidari##112918
				Will of the Illidari##112918
				Illidari Knowledge##112846
				Illidari Knowledge##112846
				Darkness##112921
				The Hunt##112837
				Unnatural Malice##112836
				Internal Struggle##112845
				Erratic Felheart##112914
				Erratic Felheart##112914
				Collective Anguish##112913
				Soul Rending##112847
				Soul Rending##112847
				Bouncing Glaives##112841
				Unleashed Power##112909
				Vengeful Retreat##112853
			]],[[
				Eye Beam##112939
				Demon Blades##112940
				Felfire Heart##112938
				First Blood##112834
				Critical Chaos##112951
				Critical Chaos##112951
				Dancing with Fate##112936
				Dancing with Fate##112936
				Chaotic Transformation##112831
				Looks Can Kill##112830
				Trail of Ruin##112824
				Growing Inferno##112825
				Growing Inferno##112825
				Burning Wound##112826
				Burning Hatred##112832
				Initiative##112950
				Unbound Chaos##112942
				Unbound Chaos##112942
				Tactical Retreat##112944
				Furious Throws##112937
				Ragefire##112827
				Soulrend##112829
				Soulrend##112829
				Any Means Necessary##112828
				Accelerating Blade##112932
				Fodder to the Flame##112931
				Momentum##112943
				Know Your Enemy##112957
				Know Your Enemy##112957
				Essence Break##112956
			]]
		},
		["Vengeance (Tank)"] = {2,false, [[
				Shattered Restoration##112863
				Shattered Restoration##112863
				Charred Warblades##112861
				Vengeful Retreat##112853
				Unrestrained Fury##112852
				Unrestrained Fury##112852
				Pursuit##112851
				Blazing Path##112928
				Rush of Chaos##112844
				Infernal Armor##112924
				Infernal Armor##112924
				Demonic##112923
				Will of the Illidari##112918
				Will of the Illidari##112918
				Soul Rending##112847
				Soul Rending##112847
				Illidari Knowledge##112846
				Illidari Knowledge##112846
				Precise Sigils##112855
				Flames of Fury##112862
				Soul Sigils##112839
				The Hunt##112837
				Unnatural Malice##112836
				Aldrachi Design##112917
				Internal Struggle##112845
				Erratic Felheart##112914
				Erratic Felheart##112914
				Collective Anguish##112913
				Extended Sigils##112916
				Extended Sigils##112916
				Quickened Sigils##112915
				Sigil of Flame##112854
			]],[[
				Fel Devastation##112908
				Fiery Brand##112864
				Deflecting Spikes##112906
				Roaring Fire##112905
				Frailty##112907
				Perfectly Balanced Glaive##112883
				Fracture##112885
				Calcified Spikes##112882
				Spirit Bomb##112894
				Void Reaver##112893
				Soul Furnace##112890
				Agonizing Flames##112887
				Agonizing Flames##112887
				Extended Spikes##112881
				Extended Spikes##112881
				Volatile Flameblood##112902
				Darkglare Boon##112901
				Darkglare Boon##112901
				Fiery Demise##112872
				Fiery Demise##112872
				Stoke the Flames##112900
				Feed the Demon##112899
				Feed the Demon##112899
				Fodder to the Flame##112875
				Last Resort##112895
				Focused Cleave##112891
				Vulnerability##112897
				Vulnerability##112897
				Soulcrush##112896
				Soul Carver##112898
			]]
		},
	},
	EVOKER = {
		["Devastation (DPS)"] = {1,true, [[
				Natural Convergence##87709
				Quell##87692
				Obsidian Scales##87702
				Expunge##87716
				Verdant Embrace##87715
				Permeating Chill##87703
				Enkindled##87704
				Enkindled##87704
				Tip the Scales##87713
				Instinctive Arcana##87693
				Instinctive Arcana##87693
				Blast Furnace##87694
				Blast Furnace##87694
				Extended Flight##87706
				Extended Flight##87706
				Panacea##87707
				Inherent Resistance##87697
				Inherent Resistance##87697
				Source of Magic##87696
				Draconic Legacy##87712
				Renewing Blaze##87679
				Fire Within##87680
				Zephyr##87682
				Regenerative Magic##87677
				Aerial Mastery##87686
				Protracted Talons##87688
				Leaping Flames##87689
				Rescue##87685
				Draconic Legacy##87712
				Obsidian Bulwark##87701
				Scarlet Adaptation##87714
				Landslide##87708
			]],[[
				Pyre##87669
				Ruby Essence Burst##87670
				Inner Radiance##87666
				Dragonrage##87665
				Dense Energy##87671
				Power Nexus##87590
				Azure Essence Burst##87668
				Eternity Surge##87647
				Engulfing Blaze##87673
				Heat Wave##87661
				Heat Wave##87661
				Tyranny##87662
				Animosity##87664
				Arcane Intensity##87646
				Arcane Intensity##87646
				Essence Attunement##87649
				Causality##87639
				Shattering Star##87641
				Catalyze##87660
				Eternity's Span##87645
				Font of Magic##87656
				Burnout##87657
				Burnout##87657
				Feed the Flames##87637
				Spellweaver's Dominance##87652
				Scintillation##87653
				Scintillation##87653
				Hoarded Power##87591
				Focusing Iris##87643
				Charged Blast##87651
			]]
		},
		["Preservation (Healer)"] = {2,false, [[
				Verdant Embrace##87715
				Enkindled##87704
				Enkindled##87704
				Scarlet Adaptation##87714
				Cauterizing Flame##87700
				Obsidian Scales##87702
				Permeating Chill##87703
				Innate Magic##87710
				Tip the Scales##87713
				Attuned to the Dream##87699
				Attuned to the Dream##87699
				Bountiful Bloom##87588
				Panacea##87707
				Innate Magic##87710
				Inherent Resistance##87697
				Inherent Resistance##87697
				Source of Magic##87696
				Draconic Legacy##87712
				Draconic Legacy##87712
				Exuberance##87589
				Rescue##87685
				Twin Guardian##87683
				Zephyr##87682
				Lush Growth##87678
				Lush Growth##87678
				Oppressing Roar##87695
				Leaping Flames##87689
				Aerial Mastery##87686
				Renewing Blaze##87679
				Obsidian Bulwark##87701
				Extended Flight##87706
				Expunge##87716
			]],[[
				Echo##87628
				Dream Breath##87627
				Reversion##87629
				Essence Burst##87630
				Essence Attunement##87631
				Temporal Compression##87626
				Spiritbloom##87625
				Rewind##87612
				Emerald Communion##87594
				Dreamwalker##87593
				Call of Ysera##87618
				Time Dilation##87613
				Golden Hour##87614
				Temporal Anomaly##87611
				Resonating Sphere##87609
				Punctuality##87607
				Fluttering Seedlings##87632
				Fluttering Seedlings##87632
				Field of Dreams##87633
				Lifebind##87634
				Power Nexus##87598
				Renewing Breath##87599
				Renewing Breath##87599
				Dream Flight##87597
				Temporal Artificer##87619
				Grace Period##87621
				Grace Period##87621
				Cycle of Life##87622
				Energy Loop##87606
				Exhilarating Burst##87595
			]]
		},
	},
	DRUID = {
		["Balance (DPS)"] = {1,false, [[
				Moonkin Form##103290
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Frenzied Regeneration##103298
				Thrash##103301
				Swipe##103304
				Ironfur##103305
				Astral Influence##103288
				Astral Influence##103288
				Typhoon##103287
				Sunfire##103286
				Improved Sunfire##103285
				Wild Charge##103276
				Soothe##103307
				Stampeding Roar##103312
				Thick Hide##103306
				Thick Hide##103306
				Matted Fur##103314
				Improved Barkskin##103297
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Improved Stampeding Roar##103308
				Incapacitating Roar##103316
				Well-Honed Instincts##103326
				Well-Honed Instincts##103326
				Starfire##103279
				Starsurge##103280
			]],[[
				Eclipse##109858
				Starfall##109833
				Lunar Shrapnel##109868
				Force of Nature##109844
				Umbral Embrace##109850
				Umbral Embrace##109850
				Solar Beam##109867
				Shooting Stars##109861
				Rattle the Stars##109872
				Wild Mushroom##109854
				Solstice##109835
				Solstice##109835
				Stellar Flare##109841
				Twin Moons##109842
				Celestial Alignment##109849
				Orbital Strike##109856
				Soul of the Forest##109846
				Nature's Grace##109857
				Orbit Breaker##109831
				Waning Twilight##109834
				Convoke the Spirits##109838
				Fungal Growth##109837
				Fury of Elune##109859
				Sundered Firmament##109851
				Starlord##109832
				Starlord##109832
				Waning Twilight##109834
				Circle of Life and Death##109863
				Balance of All Things##109848
				Aetherial Kindling##109843
			]]
		},
		["Feral (DPS)"] = {2,true, [[
				Rip##103300
				Swipe##103304
				Frenzied Regeneration##103298
				Killer Instinct##103303
				Killer Instinct##103303
				Killer Instinct##103303
				Starfire##112967
				Starsurge##103278
				Moonkin Form##112968
				Feline Swiftness##103318
				Feline Swiftness##103318
				Primal Fury##103317
				Wild Charge##103276
				Soothe##103307
				Stampeding Roar##103312
				Skull Bash##103302
				Astral Influence##103288
				Astral Influence##103288
				Typhoon##103287
				Sunfire##103286
				Incapacitating Roar##103316
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Improved Stampeding Roar##103308
				Well-Honed Instincts##103326
				Well-Honed Instincts##103326
				Rake##103277
				Thrash##103301
			]],[[
				Tiger's Fury##103188
				Omen of Clarity##103187
				Primal Wrath##103184
				Predator##103186
				Pouncing Strikes##103183
				Merciless Claws##103159
				Sabertooth##103163
				Double-Clawed Rake##103145
				Berserk##103162
				Tear Open Wounds##103148
				Infected Wounds##103164
				Survival Instincts##103180
				Moment of Clarity##103161
				Dreadful Bleeding##103181
				Brutal Slash##103151
				Berserk: Frenzy##103149
				Rampant Ferocity##103160
				Predatory Swiftness##103167
				Raging Fury##103169
				Berserk: Heart of the Lion##103166
				Frantic Momentum##103179
				Frantic Momentum##103179
				Convoke the Spirits##103177
				Rip and Tear##103153
				Bloodtalons##103171
				Apex Predator's Craving##103152
				Feral Frenzy##103170
				Soul of the Forest##103157
				Circle of Life and Death##103156
				Carnivorous Instinct##103173
			]]
		},
		["Guardian (Tank)"] = {3,false, [[
				Improved Barkskin##103297
				Verdant Heart##103296
				Swipe##103304
				Killer Instinct##103303
				Killer Instinct##103303
				Killer Instinct##103303
				Ironfur##103305
				Starfire##112964
				Skull Bash##103302
				Thick Hide##103306
				Thick Hide##103306
				Matted Fur##103314
				Soothe##103307
				Stampeding Roar##103312
				Starsurge##103278
				Moonkin Form##112966
				Astral Influence##103288
				Astral Influence##103288
				Sunfire##103286
				Nurturing Instinct##103292
				Incapacitating Roar##103316
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Heart of the Wild##103309
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Frenzied Regeneration##103298
				Thrash##103301
			]],[[
				Maul##103191
				Gore##103190
				Survival Instincts##103193
				Ursine Adept##103217
				Berserk##103216
				Mangle##103195
				Brambles##103231
				Innate Resolve##103229
				Gory Fur##103196
				Survival of the Fittest##103210
				Survival of the Fittest##103210
				After the Wildfire##103206
				Berserk##103211
				Vulnerable Flesh##103228
				Vulnerable Flesh##103228
				Tooth and Claw##103197
				Fury of Nature##103203
				Fury of Nature##103203
				Flashing Claws##103226
				Flashing Claws##103226
				Circle of Life and Death##103202
				Incarnation: Guardian of Ursoc##103201
				Ursoc's Guidance##103199
				Scintillating Moonlight##103213
				Scintillating Moonlight##103213
				Galactic Guardian##103214
				Rage of the Sleeper##103207
				Twin Moonfire##103212
				Blood Frenzy##103209
				Elune's Favored##103198
			]]
		},
		["Restoration (Healer)"] = {4,false, [[
				Improved Nature's Cure##103281
				Starfire##112963
				Starsurge##103278
				Moonkin Form##112965
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Rake##103277
				Thrash##103301
				Rip##103300
				Feline Swiftness##103318
				Feline Swiftness##103318
				Primal Fury##103317
				Natural Recovery##103284
				Natural Recovery##103284
				Wild Growth##103320
				Sunfire##103286
				Improved Sunfire##103285
				Soothe##103307
				Stampeding Roar##103312
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Improved Rejuvenation##103319
				Incapacitating Roar##103316
				Well-Honed Instincts##103326
				Well-Honed Instincts##103326
				Protector of the Pack##103325
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Rejuvenation##103295
				Swiftmend##103294
			]],[[
				Lifebloom##103100
				Omen of Clarity##103143
				Nature's Swiftness##103101
				Ysera's Gift##103099
				Grove Tending##103098
				Improved Regrowth##103109
				Flash of Clarity##103142
				Cenarion Ward##103104
				Tranquility##103108
				Ironbark##103141
				Efflorescence##103111
				Improved Ironbark##103139
				Unstoppable Growth##103138
				Unstoppable Growth##103138
				Soul of the Forest##103113
				Rampant Growth##103112
				Cultivation##103110
				Harmonious Blooming##103121
				Harmonious Blooming##103121
				Regenesis##103117
				Flourish##103136
				Convoke the Spirits##103119
				Cenarius' Guidance##103118
				Germination##103127
				Spring Blossoms##103116
				Circle of Life and Death##103130
				Photosynthesis##103129
				Adaptive Swarm##103123
				Unbridled Swarm##103122
				Regenesis##103117
			]]
		},
	},
	HUNTER = {
		["Beast Mastery (DPS)"] = {1,true,[[
				Kill Shot##100539
				Posthaste##100634
				Posthaste##100634
				Counter Shot##100624
				Misdirection##100637
				Tar Trap##100641
				Survival of the Fittest##100523
				Natural Mending##100638
				Nature's Endurance##100521
				Binding Shot##100650
				Pathfinding##100631
				Pathfinding##100631
				Tranquilizing Shot##100617
				Intimidation##100621
				Improved Tranquilizing Shot##100632
				Rejuvenating Wind##100619
				Rejuvenating Wind##100619
				Natural Mending##100638
				Trailblazer##100644
				Born To Be Wild##100646
				Keen Eyesight##100635
				Keen Eyesight##100635
				Death Chakram##100628
				Master Marksman##100625
				Master Marksman##100625
				Beast Master##100639
				Beast Master##100639
				Improved Kill Command##100645
				Improved Kill Command##100645
				Alpha Predator##100613
				Serrated Shots##100513
				Kill Command##100648
			]],[[
				Cobra Shot##100663
				Multi-Shot##100630
				Barbed Shot##100683
				Beast Cleave##100670
				Beast Cleave##100670
				Pack Tactics##100672
				Aspect of the Beast##100658
				Animal Companion##100661
				Thrill of the Hunt##100679
				Thrill of the Hunt##100679
				Thrill of the Hunt##100679
				Bestial Wrath##100669
				Barbed Wrath##100524
				Wild Call##100681
				Kill Cleave##100668
				War Orders##100666
				War Orders##100666
				Training Expert##100662
				Training Expert##100662
				Killer Command##100653
				Scent of Blood##100680
				Scent of Blood##100680
				Piercing Fangs##100675
				Brutal Companion##100515
				Stomp##100656
				Stomp##100656
				Dire Command##100667
				Dire Command##100667
				Dire Command##100667
				Killer Command##100653
			]]
		},
		["Marksmanship (DPS)"] = {2,false,[[
				Improved Kill Shot##100643
				Posthaste##100634
				Posthaste##100634
				Counter Shot##100540
				Misdirection##100637
				Tar Trap##100641
				Survival of the Fittest##100523
				Natural Mending##100638
				Nature's Endurance##100521
				Binding Shot##100650
				Pathfinding##100631
				Pathfinding##100631
				Hunter's Avoidance##100536
				Improved Traps##100636
				Improved Traps##100636
				Tranquilizing Shot##100617
				Natural Mending##100638
				Born To Be Wild##100646
				Born To Be Wild##100646
				Camouflage##100647
				Master Marksman##100625
				Master Marksman##100625
				Arctic Bola##100514
				Arctic Bola##100514
				Explosive Shot##100626
				Keen Eyesight##100635
				Keen Eyesight##100635
				Death Chakram##100628
				Serpent Sting##100615
				Poison Injection##100623
				Serrated Shots##100513
				Kill Shot##100538
			]],[[
				Aimed Shot##100578
				Crack Shot##100600
				Rapid Fire##100585
				Streamline##100598
				Streamline##100598
				Lone Wolf##100576
				Careful Aim##100584
				Careful Aim##100584
				Target Practice##100591
				Double Tap##100579
				Focused Aim##100601
				Focused Aim##100601
				Deathblow##100588
				Surging Shots##100602
				Multi-Shot##100544
				Volley##100595
				Trick Shots##100580
				Serpentstalker's Trickery##100586
				Precise Shots##100582
				Precise Shots##100582
				Trueshot##100587
				Eagletalon's True Focus##100607
				Eagletalon's True Focus##100607
				Unerring Vision##100608
				Bulletstorm##100517
				Salvo##100534
				Lock and Load##100589
				Razor Fragments##100535
				Bullseye##100581
				Hunter's Knowledge##100593
			]]
		},
		["Survival (DPS)"] = {3,false,[[
				Kill Shot##100537
				Posthaste##100634
				Posthaste##100634
				Muzzle##100543
				Improved Kill Shot##100643
				Misdirection##100637
				Survival of the Fittest##100523
				Tar Trap##100641
				Entrapment##100692
				Intimidation##100621
				Binding Shackles##100633
				Nature's Endurance##100521
				Camouflage##100647
				Scatter Shot##100651
				Hunter's Avoidance##100536
				Born To Be Wild##100646
				Natural Mending##100638
				Natural Mending##100638
				Born To Be Wild##100646
				Trailblazer##100644
				Master Marksman##100625
				Master Marksman##100625
				Arctic Bola##100514
				Arctic Bola##100514
				Explosive Shot##100626
				Keen Eyesight##100635
				Keen Eyesight##100635
				Stampede##100629
				Serrated Shots##100513
				Serrated Shots##100513
				Beast Master##100639
				Kill Command##100542
			]],[[
				Raptor Strike##100551
				Wildfire Bomb##100568
				Bloodseeker##100564
				Ferocity##100549
				Tip of the Spear##100554
				Tip of the Spear##100554
				Harpoon##100546
				Terms of Engagement##100567
				Mongoose Bite##100566
				Flanking Strike##100545
				Butchery##100552
				Frenzy Strikes##100548
				Sharp Edges##100547
				Sharp Edges##100547
				Guerrilla Tactics##100572
				Intense Focus##100531
				Viper's Venom##100530
				Viper's Venom##100530
				Improved Wildfire Bomb##100555
				Improved Wildfire Bomb##100555
				Coordinated Assault##100570
				Coordinated Kill##100528
				Coordinated Kill##100528
				Birds of Prey##100569
				Wildfire Infusion##100575
				Fury of the Eagle##100557
				Ranger##100529
				Ranger##100529
				Ruthless Marauder##100533
				Ruthless Marauder##100533
			]]
		},
	},
	MAGE = {
		["Arcane (DPS)"] = {1,false, [[
				Overflowing Energy##80179
				Rune of Power##80171
				Invisibility##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Quick Witted##80161
				Shimmer##80163
				Tome of Antonidas##80155
				Master of Time##80159
				Blast Wave##80160
				Ice Nova##80186
				Tome of Rhonin##80187
				Energized Barriers##80157
				Rigid Ice##80168
				Incantation of Swiftness##80170
				Incantation of Swiftness##80170
				Arcane Warding##80173
				Flow of Time##80153
				Flow of Time##80153
				Greater Invisibility##80152
				Temporal Warp##80150
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Shifting Power##80141
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Prismatic Barrier##80180
			]],[[
				Arcane Barrage##80306
				Arcane Missiles##80307
				Arcane Orb##80308
				Clearcasting##80298
				Arcane Surge##80299
				Arcane Tempo##80205
				Nether Precision##80295
				Crackling Energy##80297
				Arcane Power##80190
				Resonance##80200
				Nether Tempest##80199
				Touch of the Magi##80302
				Arcing Cleave##80201
				Charged Orb##80310
				Presence of Mind##80208
				Amplification##80294
				Slipstream##80296
				Impetus##80291
				Improved Clearcasting##80293
				Crackling Energy##80297
				Arcane Bombardment##80303
				Radiant Spark##80304
				Harmonic Echo##80305
				Illuminated Thoughts##80292
				Illuminated Thoughts##80292
				Concentration##80194
				Arcane Harmony##80195
				Arcane Echo##80191
				Evocation##80209
				Siphon Storm##80210
			]]
		},
		["Fire (DPS)"] = {2,false, [[
				Overflowing Energy##80179
				Rune of Power##80171
				Invisibility##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Quick Witted##80161
				Shimmer##80163
				Tome of Rhonin##80187
				Ice Nova##80186
				Ring of Frost##80144
				Master of Time##80159
				Blast Wave##80160
				Tome of Antonidas##80155
				Tempest Barrier##80169
				Tempest Barrier##80169
				Arcane Warding##80173
				Arcane Warding##80173
				Flow of Time##80153
				Flow of Time##80153
				Greater Invisibility##80152
				Temporal Warp##80150
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Shifting Power##80141
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Blazing Barrier##80178
			]],[[
				Pyroblast##80283
				Fire Blast##80282
				Phoenix Flames##80285
				Fervent Flickering##80284
				Flamestrike##80258
				Improved Flamestrike##80257
				Scorch##80281
				Firestarter##80139
				Flame On##80256
				Flame On##80256
				Combustion##80275
				Improved Combustion##80269
				Feel the Burn##80261
				Feel the Burn##80261
				Critical Mass##80287
				Critical Mass##80287
				From the Ashes##80289
				Call of the Sun King##80278
				Flame Patch##80259
				Searing Touch##80280
				Wildfire##80270
				Wildfire##80270
				Fiery Rush##80271
				Pyroclasm##80277
				Controlled Destruction##80272
				Controlled Destruction##80272
				Sun King's Blessing##80273
				Master of Flame##80262
				Kindling##80265
				Firemind##80276
			]]
		},
		["Frost (DPS)"] = {3,true, [[
				Overflowing Energy##80179
				Rune of Power##80171
				Invisibility##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Quick Witted##80161
				Shimmer##80163
				Tome of Rhonin##80187
				Tome of Antonidas##80155
				Ice Nova##80186
				Ring of Frost##80144
				Master of Time##80159
				Blast Wave##80160
				Volatile Detonation##80145
				Energized Barriers##80157
				Incantation of Swiftness##80170
				Incantation of Swiftness##80170
				Flow of Time##80153
				Flow of Time##80153
				Greater Invisibility##80152
				Temporal Warp##80150
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Shifting Power##80141
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Ice Barrier##80176
			]],[[
				Ice Lance##80241
				Frozen Orb##80242
				Fingers of Frost##80227
				Blizzard##80240
				Cold Snap##80239
				Flurry##80243
				Shatter##80228
				Frostbite##102428
				Lonely Winter##80238
				Piercing Cold##80229
				Bone Chilling##80230
				Subzero##80223
				Subzero##80223
				Flash Freeze##80231
				Ice Caller##80233
				Snowstorm##80234
				Snowstorm##80234
				Icy Veins##80235
				Brain Freeze##80244
				Everlasting Frost##102429
				Icy Propulsion##80217
				Snap Freeze##80215
				Freezing Winds##80214
				Chain Reaction##80218
				Thermal Void##80219
				Slick Ice##80216
				Freezing Rain##80212
				Splitting Ice##80224
				Hailstones##80221
				Hailstones##80221
			]]
		},
	},
	MONK = {
		["Brewmaster (Tank)"] = {1,false, [[
				Rising Sun Kick##101508
				Calming Presence##101511
				Soothing Mist##101509
				Vigorous Expulsion##101530
				Grace of the Crane##101529
				Grace of the Crane##101529
				Paralysis##101506
				Improved Paralysis##101505
				Spear Hand Strike##101504
				Celerity##101503
				Transcendence##101512
				Ring of Peace##101516
				Chi Wave##101528
				Fortifying Brew##101496
				Expeditious Fortification##101497
				Strength of Spirit##101499
				Dampen Harm##101522
				Diffuse Magic##101515
				Profound Rebuttal##101526
				Ferocity of Xuen##101524
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Summon White Tiger Statue##101519
				Bounce Back##101536
				Bounce Back##101536
				Hasty Provocation##101514
				Fast Feet##101523
				Fast Feet##101523
				Ferocity of Xuen##101524
				Tiger's Lust##101507
			]],[[
				Keg Smash##101451
				Stagger##101454
				Purifying Brew##101453
				Shuffle##101455
				Special Delivery##101548
				Healing Elixir##101458
				Hit Scheme##101461
				Gift of the Ox##101452
				Zen Meditation##101547
				Gai Plin's Imperial Brew##101545
				Training of Niuzao##101447
				Shadowboxing Treads##101444
				Invoke Niuzao, the Black Ox##101544
				Celestial Brew##101463
				Improved Purifying Brew##101471
				Bob and Weave##101449
				Breath of Fire##101464
				Sal'salabim's Strength##101467
				Improved Celestial Brew##101462
				Gift of the Ox##101452
				Charred Passions##101465
				Elusive Footwork##101412
				Elusive Footwork##101412
				Weapons of Order##101539
				Chi Surge##101537
				Exploding Keg##101542
				Stormstout's Last Keg##101541
				Bonedust Brew##101552
				High Tolerance##101469
				High Tolerance##101469
			]]
		},
		["Mistweaver (Healer)"] = {2,false, [[
				Rising Sun Kick##101508
				Improved Vivify##101510
				Improved Vivify##101510
				Vivacious Vivification##101513
				Tiger's Lust##101507
				Improved Detox##102627
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Spear Hand Strike##101504
				Celerity##101503
				Transcendence##101512
				Ring of Peace##101516
				Chi Burst##101527
				Profound Rebuttal##101526
				Dampen Harm##101522
				Improved Touch of Death##101501
				Fast Feet##101523
				Fast Feet##101523
				Paralysis##101506
				Calming Presence##101511
				Generous Pour##101500
				Generous Pour##101500
				Close to Heart##101525
				Close to Heart##101525
				Save Them All##101533
				Save Them All##101533
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Diffuse Magic##101515
				Soothing Mist##101509
			]],[[
				Enveloping Mist##101370
				Essence Font##101406
				Life Cocoon##101390
				Thunder Focus Tea##101410
				Revival##101378
				Renewing Mist##101394
				Invigorating Mists##101358
				Mastery of Mist##101395
				Zen Pulse##101368
				Echoing Reverberation##101365
				Invoke Chi-Ji, the Red Crane##101396
				Mist Wrap##101363
				Mists of Life##101369
				Yu'lon's Whisper##101384
				Enveloping Breath##101388
				Teachings of the Monastery##101403
				Rapid Diffusion##101385
				Rapid Diffusion##101385
				Dancing Mists##101393
				Dancing Mists##101393
				Gift of the Celestials##101381
				Ancient Teachings##101408
				Faeline Stomp##101359
				Secret Infusion##101372
				Secret Infusion##101372
				Invoker's Delight##101373
				Ancient Concordance##101371
				Ancient Concordance##101371
				Awakened Faeline##101383
				Resplendent Mist##101391
			]]
		},
		["Windwalker (DPS)"] = {3,true,  [[
				Tiger's Lust##101507
				Paralysis##101506
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Soothing Mist##101509
				Vigorous Expulsion##101530
				Grace of the Crane##101529
				Grace of the Crane##101529
				Chi Burst##101527
				Transcendence##101512
				Ring of Peace##101516
				Eye of the Tiger##101518
				Fast Feet##101523
				Fast Feet##101523
				Spear Hand Strike##101504
				Celerity##101503
				Dampen Harm##101522
				Improved Paralysis##101505
				Fortifying Brew##101496
				Expeditious Fortification##101497
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Summon White Tiger Statue##101519
				Profound Rebuttal##101526
				Close to Heart##101525
				Close to Heart##101525
				Diffuse Magic##101515
				Calming Presence##101511
				Escape from Reality##101534
				Rising Sun Kick##101508
			]],[[
				Fists of Fury##101423
				Ascension##101422
				Touch of Karma##101420
				Power Strikes##101424
				Open Palm Strikes##101494
				Flashing Fists##101425
				Flashing Fists##101425
				Flying Serpent Kick##101432
				Widening Whirl##101419
				Mark of the Crane##101434
				Shadowboxing Treads##101435
				Storm, Earth, and Fire##101429
				Drinking Horn Cover##101430
				Invoke Xuen, the White Tiger##101473
				Glory of the Dawn##101493
				Strike of the Windlord##101491
				Thunderfist##101490
				Hit Combo##101492
				Teachings of the Monastery##101426
				Dance of Chi-Ji##101437
				Forbidden Technique##101418
				Fury of Xuen##101472
				Xuen's Battlegear##101478
				Invoker's Delight##101477
				Skyreach##101479
				Empowered Tiger Lightning##101475
				Transfer the Power##101476
				Crane Vortex##101483
				Crane Vortex##101483
				Fatal Flying Guillotine##101482
			]]
		},
	},
	PALADIN = {
		["Holy"] = {1,false, [[
				Blinding Light##102584
				Divine Steed##102625
				Cavalier##102592
				Blessing of Freedom##102587
				Improved Cleanse##102477
				Hammer of Wrath##102479
				Fist of Justice##102589
				Fist of Justice##102589
				Avenging Wrath##102593
				Blessing of Protection##102604
				Incandescence##102620
				Holy Aegis##102597
				Holy Aegis##102597
				Golden Path##102598
				Afterimage##102601
				Blessing of Sacrifice##102602
				Sacrifice of the Just##102595
				Unbreakable Spirit##102603
				Greater Judgment##114292
				Rebuke##102591
				Divine Purpose##102608
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Avenging Wrath##102611
				Aspiration of Divinity##102613
				Aspiration of Divinity##102613
				Of Dusk and Dawn##102615
				Seal of Order##102614
				Seal of Clarity##102600
				Seal of Clarity##102600
				Hallowed Ground##102478
				Lay on Hands##102583
				Auras of the Resolute##102586
			]],[[
				Holy Shock##102534
				Holy Light##102550
				Divine Insight##102554
				Moment of Compassion##102553
				Light of Dawn##102545
				Unending Light##102544
				Divine Protection##102549
				Aura Mastery##102548
				Divine Favor##102551
				Light's Hammer##102561
				Commanding Light##102564
				Commanding Light##102564
				Imbued Infusions##102536
				Tower of Radiance##102571
				Light of the Martyr##102540
				Echoing Blessings##102535
				Divine Glimpse##102570
				Divine Glimpse##102570
				Shining Savior##102559
				Radiant Onslaught##102557
				Beacon of Faith##102533
				Avenging Wrath##102569
				Awakening##102578
				Awakening##102578
				Empyrean Legacy##102576
				Blessing of Summer##102579
				Divine Toll##102563
				Divine Resonance##102582
				Glimmer of Light##102581
				Crusader's Might##102580
			]]
		},
		["Protection (Tank)"] = {2,false, [[
				Blinding Light##102584
				Divine Steed##102625
				Cavalier##102592
				Hammer of Wrath##102479
				Fist of Justice##102589
				Fist of Justice##102589
				Greater Judgment##102590
				Seasoned Warhorse##102624
				Avenging Wrath##102593
				Rebuke##102591
				Seal of Reprisal##102621
				Seal of Reprisal##102621
				Holy Aegis##102597
				Holy Aegis##102597
				Blessing of Protection##102604
				Blessing of Sacrifice##102602
				Unbreakable Spirit##102603
				Blessing of Freedom##102587
				Cleanse Toxins##102476
				Sacrifice of the Just##102595
				Divine Purpose##102608
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Avenging Wrath##102611
				Hallowed Ground##102478
				Seal of the Crusader##102617
				Seal of the Crusader##102617
				Zealot's Paragon##102616
				Aspiration of Divinity##102613
				Aspiration of Divinity##102613
				Of Dusk and Dawn##102615
				Lay on Hands##102583
				Auras of the Resolute##102586
			]],[[
				Avenger's Shield##102471
				Redoubt##102462
				Blessed Hammer##102430
				Holy Shield##102455
				Consecrated Ground##102459
				Grand Crusader##102453
				Ardent Defender##102445
				Shining Light##102467
				Consecration in Flame##102432
				Strength in Adversity##102461
				Sanctuary##102451
				Bulwark of Order##102468
				Bulwark of Order##102468
				Avenging Wrath##102448
				Guardian of Ancient Kings##102456
				Tyr's Enforcer##102437
				Tyr's Enforcer##102437
				Bastion of Light##102454
				Strength of Conviction##102450
				Strength of Conviction##102450
				Eye of Tyr##102466
				Bulwark of Righteous Fury##102457
				Righteous Protector##102440
				Righteous Protector##102440
				Divine Toll##102465
				Divine Resonance##102443
				Soaring Shield##102434
				Crusader's Judgment##102436
				Barricade of Faith##102470
				Gift of the Golden Val'kyr##102449
			]]
		},
		["Retribution (DPS)"] = {3,true, [[
				Divine Steed##102625
				Cavalier##102592
				Seasoned Warhorse##102624
				Fist of Justice##102589
				Fist of Justice##102589
				Greater Judgment##102590
				Lay on Hands##102583
				Blessing of Freedom##102587
				Blinding Light##102584
				Avenging Wrath##102593
				Rebuke##102591
				Seal of Reprisal##102621
				Seal of Reprisal##102621
				Incandescence##102620
				Holy Aegis##102597
				Holy Aegis##102597
				Blessing of Sacrifice##102602
				Recompense##102594
				Unbreakable Spirit##102603
				Cleanse Toxins##102476
				Divine Purpose##102608
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Seraphim##102610
				Aspiration of Divinity##102613
				Aspiration of Divinity##102613
				Of Dusk and Dawn##102615
				Seal of Order##102614
				Seal of Might##102612
				Seal of Might##102612
				Hallowed Ground##102478
				Hammer of Wrath##102479
				Auras of Swift Vengeance##102588
			]],[[
				Blade of Justice##102498
				Divine Storm##102501
				Art of War##102523
				Holy Blade##102522
				Shield of Vengeance##102521
				Improved Crusader Strike##102500
				Empyrean Power##102504
				Holy Crusader##102499
				Wake of Ashes##102495
				Crusade##102496
				Radiant Decree##102493
				Sanctify##102519
				Sanctification##102518
				Blade of Wrath##102491
				Consecrated Blade##102531
				Zeal##102530
				Tempest of the Lightbringer##102481
				Truth's Wake##102492
				Hand of Hindrance##102515
				Exorcism##102516
				Ashes to Ashes##102526
				Ashes to Ashes##102526
				Virtuous Command##102525
				Virtuous Command##102525
				Final Reckoning##102524
				Divine Toll##102513
				Divine Resonance##102512
				Empyrean Legacy##102480
				Relentless Inquisitor##102514
				Relentless Inquisitor##102514
			]]
		},
	},
	PRIEST = {
		["Discipline"] = {1,false, [[
				Improved Flash Heal##103866
				Holy Nova##103851
				Protective Light##103858
				Spell Warding##103872
				Leap of Faith##103868
				Dispel Magic##103867
				Improved Purify##103855
				Angelic Feather##103853
				Power Infusion##103844
				Body and Soul##103856
				Twins of the Sun Priestess##103832
				Void Shield##103842
				Mass Dispel##103849
				Shadow Word: Death##103864
				Twist of Fate##103833
				Twist of Fate##103833
				Unwavering Will##103847
				Unwavering Will##103847
				Throes of Pain##103861
				Throes of Pain##103861
				Binding Heals##103824
				Divine Star##103831
				Crystalline Reflection##103829
				Crystalline Reflection##103829
				Surge of Light##103823
				Surge of Light##103823
				Power Word: Life##103822
				Mindgames##103837
				Translucent Image##103835
				Death and Madness##103863
				Tithe Evasion##103838
				Renew##103869
				Shadowfiend##103865
			]],[[
				Atonement##103723
				Pain Suppression##103713
				Power Word: Radiance##103722
				Light's Promise##103721
				Enduring Luminescence##103719
				Shield Discipline##103717
				Power of the Dark Side##103724
				Dark Indulgence##103725
				Power Word: Barrier##103687
				Rapture##103727
				Purge the Wicked##103718
				Schism##103704
				Shadow Covenant##103706
				Embrace Shadow##103708
				Pain and Suffering##103703
				Pain and Suffering##103703
				Castigation##103702
				Stolen Psyche##103709
				Stolen Psyche##103709
				Revel in Purity##103690
				Lenience##103692
				Harsh Discipline##103697
				Harsh Discipline##103697
				Twilight Equilibrium##103696
				Light's Wrath##103700
				Blaze of Light##103693
				Blaze of Light##103693
				Weal and Woe##103694
				Expiation##103711
				Expiation##103711
			]]
		},
		["Holy (Healer)"] = {2,false, [[
				Improved Flash Heal##103866
				Protective Light##103858
				Shadowfiend##103865
				Holy Nova##103851
				Spell Warding##103872
				Leap of Faith##103868
				Angelic Feather##103853
				Dispel Magic##103867
				Power Infusion##103844
				Twins of the Sun Priestess##103832
				Void Shield##103842
				Twist of Fate##103833
				Twist of Fate##103833
				Inspiration##103846
				Unwavering Will##103847
				Unwavering Will##103847
				Throes of Pain##103861
				Throes of Pain##103861
				Improved Purify##103855
				Mass Dispel##103849
				Divine Star##103831
				Binding Heals##103824
				Surge of Light##103823
				Surge of Light##103823
				Power Word: Life##103822
				Translucent Image##103835
				Improved Fade##103836
				Improved Fade##103836
				Shadow Word: Death##103864
				Death and Madness##103863
				Tithe Evasion##103838
				Renew##103869
				Prayer of Mending##103870
			]],[[
				Holy Word: Serenity##103775
				Guardian Spirit##103774
				Holy Word: Chastise##103776
				Prayer of Healing##103766
				Holy Word: Sanctify##103767
				Guardian Angel##103773
				Burning Vehemence##103777
				Empyreal Blaze##103739
				Cosmic Ripple##103765
				Renewed Faith##103754
				Enlightenment##103752
				Symbol of Hope##103751
				Prismatic Echoes##103748
				Prismatic Echoes##103748
				Trail of Light##103770
				Trail of Light##103770
				Everlasting Light##103756
				Crisis Management##103762
				Crisis Management##103762
				Censure##103753
				Apotheosis##103743
				Harmonious Apparatus##103744
				Harmonious Apparatus##103744
				Divine Word##103675
				Pontifex##103763
				Desperate Times##103741
				Desperate Times##103741
				Lightweaver##103734
				Resonant Words##103735
				Resonant Words##103735
			]]
		},
		["Shadow (DPS)"] = {3,true, [[
				Death and Madness##103863
				Dominate Mind##103678
				Dispel Magic##103867
				Phantasm##103834
				Improved Flash Heal##103866
				Protective Light##103858
				Leap of Faith##103868
				Angelic Feather##103853
				Power Infusion##103844
				Twins of the Sun Priestess##103832
				Twist of Fate##103833
				Twist of Fate##103833
				Vampiric Embrace##103841
				San'layn##103840
				Throes of Pain##103861
				Tithe Evasion##103838
				Mass Dispel##103849
				Improved Mass Dispel##103848
				Unwavering Will##103847
				Unwavering Will##103847
				Angel's Mercy##103825
				Divine Star##103828
				Throes of Pain##103861
				Mindgames##103837
				Manipulation##103818
				Manipulation##103818
				Shattered Perceptions##103819
				Surge of Light##103823
				Surge of Light##103823
				Power Word: Life##103822
				Translucent Image##103835
				Shadowfiend##103865
				Shadow Word: Death##103864
			]],[[
				Devouring Plague##103808
				Dispersion##103806
				Mental Fortitude##103800
				Silence##103792
				Shadowy Apparitions##103809
				Misery##103791
				Mind Sear##103807
				Coalescing Shadows##103795
				Void Eruption##103674
				Shadow Crash##103803
				Ancient Madness##103798
				Ancient Madness##103798
				Auspicious Spirits##103811
				Puppet Master##103785
				Mental Decay##103804
				Shadowy Insight##103805
				Dark Evangelism##103802
				Dark Evangelism##103802
				Maddening Touch##103784
				Maddening Touch##103784
				Mindbender##103788
				Encroaching Shadows##103685
				Mind Devourer##103684
				Mind Devourer##103684
				Idol of Yogg-Saron##103817
				Screams of the Void##103789
				Screams of the Void##103789
				Idol of C'Thun##103782
				Inescapable Torment##103783
				Inescapable Torment##103783
			]]
		},
	},
	ROGUE = {
		["Assassination (DPS)"] = {1,false, [[
				Evasion##112657
				Numbing Poison##112656
				Sap##112573
				Cloak of Shadows##112585
				Blind##112572
				Feint##112632
				Gouge##112631
				Tricks of the Trade##112574
				Shadowstep##112583
				Tight Spender##112582
				Fleet Footed##112654
				Virulent Poisons##112653
				Deadly Precision##112652
				Deadly Precision##112652
				Vigor##112651
				Improved Sprint##112636
				Cheat Death##112637
				Thief's Versatility##112645
				Thief's Versatility##112645
				Acrobatic Strikes##112644
				Recuperator##112526
				Echoing Reprimand##112525
				Resounding Clarity##112524
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Leeching Poison##112650
				Seal Fate##112649
				Seal Fate##112649
				Lethality##112640
				Lethality##112640
				Shiv##112630
			]],[[
				Deadly Poison##112676
				Shadowstep##112675
				Venomous Wounds##112520
				Improved Shiv##112513
				Elaborate Planning##112512
				Elaborate Planning##112512
				Cut to the Chase##112514
				Bloody Mess##112510
				Bloody Mess##112510
				Improved Garrote##112673
				Deathmark##112662
				Thrown Precision##112515
				Crimson Tempest##112517
				Flying Daggers##112516
				Systemic Failure##112664
				Lethal Dose##112509
				Lethal Dose##112509
				Exsanguinate##112672
				Iron Wire##112671
				Lightweight Shiv##112518
				Blindside##112679
				Zoldyck Recipe##112678
				Zoldyck Recipe##112678
				Zoldyck Recipe##112678
				Kingsbane##112677
				Shrouded Suffocation##112669
				Scent of Blood##112668
				Scent of Blood##112668
				Scent of Blood##112668
				Indiscriminate Carnage##112667
			]]
		},
		["Outlaw (DPS)"] = {2,true, [[
				Sap##112573
				Cloak of Shadows##112585
				Shadowrunner##112575
				Feint##112632
				Gouge##112631
				Nimble Fingers##112635
				Shiv##112630
				Tricks of the Trade##112574
				Subterfuge##112576
				Tight Spender##112582
				Nightstalker##112581
				Nightstalker##112581
				Improved Ambush##112580
				Iron Stomach##112634
				Cheat Death##112637
				Deadened Nerves##112633
				Deadly Precision##112652
				Deadly Precision##112652
				Vigor##112651
				Thief's Versatility##112645
				Thief's Versatility##112645
				Acrobatic Strikes##112644
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Soothing Darkness##112579
				Find Weakness##112578
				Find Weakness##112578
				Shadow Dance##112577
				Lethality##112640
				Lethality##112640
				Blind##112572
			]],[[
				Blade Flurry##112561
				Opportunity##112571
				Grappling Hook##112570
				Weaponmaster##112533
				Combat Potency##112532
				Adrenaline Rush##112545
				Ambidexterity##112546
				Combat Stamina##112534
				Ruthlessness##112568
				Restless Blades##112544
				Roll the Bones##112543
				Loaded Dice##112542
				Triple Threat##112566
				Triple Threat##112566
				Fatal Flourish##112548
				Quick Draw##112549
				Dancing Steel##112556
				Improved Main Gauche##112555
				Improved Main Gauche##112555
				Devious Stratagem##112567
				Audacity##112527
				Blade Rush##112530
				Take 'em by Surprise##112563
				Take 'em by Surprise##112563
				Hidden Opportunity##112562
				Precise Cuts##112554
				Fan the Hammer##112553
				Fan the Hammer##112553
				Greenskin's Wickers##112552
				Heavy Hitter##112528
			]]
		},
		["Subtlety (DPS)"] = {3,false, [[
				Cloak of Shadows##112585
				Shadowrunner##112575
				Blind##112572
				Feint##112632
				Gouge##112631
				Nimble Fingers##112635
				Shiv##112630
				Tricks of the Trade##112574
				Shadowstep##112583
				Tight Spender##112582
				Nightstalker##112581
				Nightstalker##112581
				Improved Ambush##112580
				Iron Stomach##112634
				Cheat Death##112637
				Deadened Nerves##112633
				Deadly Precision##112652
				Deadly Precision##112652
				Vigor##112651
				Thief's Versatility##112645
				Leeching Poison##112650
				Seal Fate##112649
				Seal Fate##112649
				Thistle Tea##112648
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Soothing Darkness##112579
				Find Weakness##112578
				Find Weakness##112578
				Shadow Dance##112577
				Sap##112573
			]],[[
				Improved Shuriken Storm##112598
				Black Powder##112600
				Relentless Strikes##112597
				Shadow Blades##112614
				Improved Backstab##112629
				Weaponmaster##112628
				Premeditation##112627
				Silent Storm##112602
				Secret Technique##112603
				Gloomblade##112587
				Replicating Shadows##112605
				Shuriken Tornado##112604
				Veiltouched##112601
				Deepening Shadows##112612
				Shadowed Finishers##112611
				Shadowed Finishers##112611
				Secret Stratagem##112610
				Improved Shadow Dance##112623
				Improved Shadow Dance##112623
				Without a Trace##112590
				Dark Shadow##112620
				Dark Shadow##112620
				Lingering Shadow##112619
				Lingering Shadow##112619
				Danse Macabre##112618
				Deeper Daggers##112609
				Deeper Daggers##112609
				Finality##112608
				Finality##112608
				Dark Brew##112607
			]]
		},
	},
	SHAMAN = {
		["Elemental (DPS)"] = {1,false, [[
				Earth Elemental##101952
				Spiritwalker's Grace##101955
				Frost Shock##101965
				Astral Shift##101945
				Planes Traveler##101944
				Spirit Wolf##101963
				Wind Shear##101957
				Fire and Ice##101956
				Graceful Spirit##101954
				Capacitor Totem##101961
				Static Charge##101960
				Hex##101972
				Nature's Guardian##101974
				Nature's Guardian##101974
				Improved Lightning Bolt##101996
				Improved Lightning Bolt##101996
				Elemental Warding##101978
				Elemental Warding##101978
				Healing Stream Totem##101998
				Cleanse Spirit##101966
				Swirling Currents##101999
				Swirling Currents##101999
				Ancestral Guidance##102000
				Thunderstorm##101995
				Thundershock##101994
				Purge##101968
				Nature's Fury##101980
				Nature's Fury##101980
				Brimming with Life##101979
				Ancestral Defense##101977
				Winds of Al'Akir##101981
				Lava Burst##101950
				Chain Lightning##101949
			]],[[
				Earth Shock##101854
				Earthquake##101855
				Inundate##101856
				Call of Thunder##101858
				Storm Elemental##101849
				Elemental Fury##101853
				Primordial Fury##101852
				Flow of Power##101871
				Swelling Maelstrom##101893
				Aftershock##101874
				Icefury##101870
				Unrelenting Calamity##101859
				Stormkeeper##101860
				Electrified Shocks##101868
				Master of the Elements##101879
				Master of the Elements##101879
				Power of the Maelstrom##101892
				Power of the Maelstrom##101892
				Eye of the Storm##101867
				Eye of the Storm##101867
				Primal Elementalist##101885
				Elemental Blast##101866
				Elemental Equilibrium##101865
				Elemental Equilibrium##101865
				Lightning Rod##101864
				Echoes of Great Sundering##101862
				Echoes of Great Sundering##101862
				Echo Chamber##101890
				Echo Chamber##101890
				Mountains Will Fall##101889
			]]
		},
		["Enhancement (DPS)"] = {2,true, [[
				Flurry##101947
				Lava Burst##101950
				Earth Elemental##101952
				Frost Shock##101965
				Astral Shift##101945
				Wind Shear##101957
				Capacitor Totem##101961
				Guardian's Cudgel##101959
				Wind Rush Totem##101976
				Nature's Fury##101980
				Nature's Fury##101980
				Winds of Al'Akir##101981
				Winds of Al'Akir##101981
				Spirit Walk##101983
				Elemental Warding##101978
				Elemental Warding##101978
				Improved Lightning Bolt##101996
				Improved Lightning Bolt##101996
				Nature's Guardian##101974
				Nature's Guardian##101974
				Thunderstorm##101995
				Thundershock##101994
				Healing Stream Totem##101998
				Swirling Currents##101999
				Swirling Currents##101999
				Ancestral Guidance##102000
				Fire and Ice##101956
				Planes Traveler##101944
				Purge##101968
				Brimming with Life##101979
				Ancestral Defense##101977
				Maelstrom Weapon##101948
				Chain Lightning##101949
			]],[[
				Stormstrike##101804
				Windfury Weapon##101823
				Lava Lash##101805
				Molten Assault##101806
				Molten Assault##101806
				Fire Nova##101807
				Improved Maelstrom Weapon##101822
				Improved Maelstrom Weapon##101822
				Raging Maelstrom##101802
				Sundering##101841
				Crash Lightning##101840
				Crashing Storms##101818
				Storm's Wrath##101832
				Forceful Winds##101834
				Unruly Winds##101833
				Doom Winds##101824
				Overflowing Maelstrom##101801
				Swirling Maelstrom##101820
				Elemental Weapons##101826
				Elemental Weapons##101826
				Feral Spirit##101838
				Witch Doctor's Ancestry##101837
				Witch Doctor's Ancestry##101837
				Alpha Wolf##101835
				Deeply Rooted Elements##101816
				Static Accumulation##101814
				Static Accumulation##101814
				Thorim's Invocation##101813
				Legacy of the Frost Witch##101815
				Legacy of the Frost Witch##101815
			]]
		},
		["Restoration (Healer)"] = {3,false, [[
				Earth Shield##102004
				Spiritwalker's Grace##101955
				Elemental Orbit##102003
				Astral Shift##101945
				Chain Lightning##101949
				Spirit Wolf##101963
				Wind Shear##101957
				Improved Purify Spirit##101964
				Fire and Ice##101956
				Ancestral Defense##101977
				Earth Elemental##101952
				Elemental Warding##101978
				Elemental Warding##101978
				Healing Stream Totem##101998
				Improved Lightning Bolt##101996
				Improved Lightning Bolt##101996
				Purge##101968
				Nature's Fury##101980
				Nature's Fury##101980
				Brimming with Life##101979
				Capacitor Totem##101961
				Thunderstorm##101995
				Swirling Currents##101999
				Swirling Currents##101999
				Ancestral Guidance##102000
				Nature's Swiftness##101997
				Thundershock##101994
				Totemic Focus##101990
				Totemic Focus##101990
				Static Charge##101960
				Planes Traveler##101944
				Lava Burst##101950
				Chain Heal##101951
			]],[[
				Riptide##101905
				Healing Wave##101904
				Stormkeeper##101907
				Ancestral Vigor##101909
				Ancestral Vigor##101909
				Healing Stream Totem##101900
				Tidal Waves##101899
				Water Totem Mastery##101895
				Spirit Link Totem##101913
				Healing Tide Totem##101912
				Undulation##101919
				Master of the Elements##101896
				Living Stream##101934
				Earthliving Weapon##101935
				Lava Surge##101894
				Echo of the Elements##101928
				Deluge##101906
				Deluge##101906
				Torrent##101932
				Torrent##101932
				Earthen Harmony##101941
				Earthen Harmony##101941
				Ever-Rising Tide##101940
				Ascendance##101942
				Primordial Wave##101917
				Improved Primordial Wave##101916
				Improved Primordial Wave##101916
				Continuous Waves##101915
				Earthen Wall Totem##101931
				Call of Thunder##101901
			]]
		},
	},
	WARLOCK = {
		["Affliction (DPS)"] = {1,false, [[
				Fel Domination##91439
				Fel Armor##91461
				Fel Armor##91461
				Mortal Coil##91457
				Burning Rush##91460
				Demon Skin##91463
				Demon Skin##91463
				Curses of Enfeeblement##91462
				Amplify Curse##91442
				Wrathful Minion##91456
				Demonic Gateway##91466
				Dark Accord##91467
				Shadowfury##91452
				Demonic Inspiration##91436
				Sweet Souls##91435
				Dark Pact##91444
				Frequent Donor##91445
				Demonic Embrace##91438
				Demonic Fortitude##91430
				Accrued Vitality##91464
				Accrued Vitality##91464
				Soul Link##91433
				Soul Conduit##91431
				Soul Conduit##91431
				Summon Soulkeeper##91448
				Grimoire of Synergy##91432
				Grimoire of Synergy##91432
				Grim Feast##91434
				Fel Synergy##91425
				Fiendish Stride##91459
				Fiendish Stride##91459
				Demonic Circle##91441
			]],[[
				Malefic Rapture##91570
				Unstable Affliction##91569
				Seed of Corruption##91571
				Nightfall##91568
				Xavian Teachings##91572
				Writhe in Agony##91561
				Writhe in Agony##91561
				Shadow Embrace##91565
				Shadow Embrace##91565
				Drain Soul##91566
				Soul Tap##91563
				Sow the Seeds##91560
				Vile Taint##91556
				Absolute Corruption##91575
				Soul Flame##91562
				Soul Flame##91562
				Withering Bolt##91577
				Withering Bolt##91577
				Sacrolash's Dark Strike##91555
				Sacrolash's Dark Strike##91555
				Summon Darkglare##91554
				Malevolent Visionary##91504
				Malevolent Visionary##91504
				Grim Reach##91419
				Soul Rot##91578
				Soul-Eater's Gluttony##91428
				Soul-Eater's Gluttony##91428
				Dark Harvest##91579
				Wrath of Consumption##91553
				Creeping Death##91580
			]]
		},
		["Demonology (DPS)"] = {2,true, [[
				Fel Domination##91439
				Demon Skin##91463
				Demon Skin##91463
				Curses of Enfeeblement##91462
				Fel Armor##91461
				Fel Armor##91461
				Mortal Coil##91457
				Wrathful Minion##91456
				Demonic Gateway##91466
				Shadowfury##91452
				Dark Accord##91467
				Burning Rush##91460
				Demonic Inspiration##91436
				Sweet Souls##91435
				Dark Pact##91444
				Frequent Donor##91445
				Lifeblood##91449
				Lifeblood##91449
				Demonic Embrace##91438
				Demonic Fortitude##91430
				Soul Link##91433
				Soul Conduit##91431
				Soul Conduit##91431
				Inquisitor's Gaze##91427
				Soulburn##91469
				Grimoire of Synergy##91432
				Grimoire of Synergy##91432
				Fel Synergy##91425
				Teachings of the Black Harvest##91447
				Fiendish Stride##91459
				Fiendish Stride##91459
				Demonic Circle##91441
			]],[[
				Call Dreadstalkers##91543
				Demonbolt##91544
				Demonic Knowledge##91546
				Implosion##91520
				Dreadlash##91539
				Demonic Strength##91540
				Annihilan Training##91542
				From the Shadows##91533
				Fel and Steel##91534
				Grimoire: Felguard##91531
				Demonic Meteor##91530
				Fel Might##91532
				Fel Sunder##91528
				Ripped through the Portal##91527
				Ripped through the Portal##91527
				Carnivorous Stalkers##91536
				Inner Demons##91547
				Inner Demons##91547
				Dread Calling##91517
				Imp Gang Boss##91516
				Summon Demonic Tyrant##91550
				Soulbound Tyrant##91510
				Soulbound Tyrant##91510
				Grand Warlock's Design##91508
				Antoran Armaments##91526
				Infernal Command##91524
				Infernal Command##91524
				Guillotine##91523
				The Expendables##91512
				Imp Gang Boss##91516
			]]
		},
		["Destruction (DPS)"] = {3,false, [[
				Fel Domination##91439
				Fel Armor##91461
				Fel Armor##91461
				Mortal Coil##91457
				Demon Skin##91463
				Demon Skin##91463
				Curses of Enfeeblement##91462
				Demonic Inspiration##91436
				Wrathful Minion##91456
				Burning Rush##91460
				Demonic Gateway##91466
				Shadowfury##91452
				Dark Accord##91467
				Sweet Souls##91435
				Dark Pact##91444
				Frequent Donor##91445
				Demonic Fortitude##91430
				Demonic Embrace##91438
				Lifeblood##91449
				Lifeblood##91449
				Teachings of the Black Harvest##91447
				Soul Conduit##91431
				Soul Conduit##91431
				Inquisitor's Gaze##91427
				Soulburn##91469
				Soul Link##91433
				Grimoire of Synergy##91432
				Grimoire of Synergy##91432
				Fel Synergy##91425
				Fiendish Stride##91459
				Fiendish Stride##91459
				Demonic Circle##91441
			]],[[
				Chaos Bolt##91591
				Reverse Entropy##91496
				Conflagrate##91590
				Havoc##91493
				Cry Havoc##91497
				Channel Demonfire##91586
				Backdraft##91589
				Roaring Blaze##91588
				Raging Demonfire##91585
				Raging Demonfire##91585
				Flashpoint##91485
				Flashpoint##91485
				Eradication##91501
				Eradication##91501
				Rain of Fire##91592
				Pyrogenics##91489
				Cataclysm##91487
				Explosive Potential##91581
				Ashen Remains##91482
				Ashen Remains##91482
				Summon Infernal##91502
				Crashing Chaos##91473
				Crashing Chaos##91473
				Grand Warlock's Design##91471
				Ritual of Ruin##91483
				Master Ritualist##91475
				Master Ritualist##91475
				Avatar of Destruction##91476
				Madness of the Azj'Aqir##91480
				Madness of the Azj'Aqir##91480
			]]
		},
	},
	WARRIOR = {
		["Arms (DPS)"] = {1,true, [[
				War Machine##112185
				Fast Footwork##112238
				Frothing Berserker##112216
				Heroic Leap##112208
				Leeching Strikes##112206
				Furious Blows##112197
				Thunder Clap##114296
				Spell Reflection##112253
				Storm Bolt##112198
				Sidearm##112192
				Overwhelming Rage##112245
				Overwhelming Rage##112245
				Barbaric Training##114293
				Seismic Reverberation##112201
				Blood and Thunder##112204
				Double Time##112249
				Pain and Gain##112217
				Reinforced Plates##112235
				Defensive Stance##112187
				Rallying Cry##112188
				Armored to the Teeth##112233
				Armored to the Teeth##112233
				Avatar##112232
				Blademaster's Torment##112229
				Two-Handed Weapon Specialization##112179
				Wild Strikes##112224
				Wild Strikes##112224
				Thunderous Roar##112223
				Thunderous Words##112222
				Cruel Strikes##112248
				Cruel Strikes##112248
				Battle Stance##112184
			]],[[
				Mortal Strike##112122
				Overpower##112123
				Die by the Sword##112128
				Improved Execute##112125
				Sudden Death##112126
				Martial Prowess##112130
				Bloodsurge##112129
				Fueled by Violence##112127
				Colossus Smash##112144
				Anger Management##112143
				In For The Kill##112142
				Warbreaker##112139
				Tactician##112134
				Rend##112136
				Impale##112146
				Sweeping Strikes##112120
				Cleave##112147
				Storm of Swords##112119
				Reaping Swings##112148
				Dreadnaught##112137
				Valor in Victory##112315
				Valor in Victory##112315
				Bladestorm##112314
				Hurricane##112312
				Merciless Bonegrinder##112117
				Bloodborne##112135
				Bloodborne##112135
				Deft Experience##112309
				Deft Experience##112309
				Bloodletting##112310
			]]
		},
		["Fury (DPS)"] = {2,false, [[
				War Machine##112254
				Fast Footwork##112238
				Frothing Berserker##112213
				Heroic Leap##112208
				Leeching Strikes##112206
				Furious Blows##112197
				Spell Reflection##112253
				Defensive Stance##112187
				Storm Bolt##112198
				Sidearm##112196
				Overwhelming Rage##112245
				Overwhelming Rage##112245
				Barbaric Training##114294
				Seismic Reverberation##112201
				Bounding Stride##112219
				Double Time##112249
				Crushing Force##112212
				Crushing Force##112212
				Reinforced Plates##112235
				Rallying Cry##112188
				Armored to the Teeth##112108
				Armored to the Teeth##112108
				Avatar##112232
				Titan's Torment##112226
				Dual Wield Specialization##112240
				Cruel Strikes##112248
				Cruel Strikes##112248
				Spear of Bastion##112247
				Elysian Might##112180
				Wild Strikes##112224
				Wild Strikes##112224
				Berserker Stance##112182
			]],[[
				Bloodthirst##112261
				Raging Blow##112265
				Enraged Regeneration##112264
				Improved Enrage##112267
				Improved Bloodthirst##112266
				Improved Execute##112301
				Sudden Death##112300
				Warpaint##112263
				Rampage##112277
				Slaughtering Strikes##112280
				Recklessness##112281
				Frenzy##112275
				Cruelty##112299
				Focus in Chaos##112272
				Cold Steel, Hot Blood##112271
				Bloodborne##112270
				Ashen Juggernaut##112278
				Massacre##112279
				Improved Whirlwind##112298
				Meat Cleaver##112260
				Critical Thinking##112296
				Critical Thinking##112296
				Ravager##112256
				Hurricane##112257
				Deft Experience##112292
				Deft Experience##112292
				Odyn's Fury##112289
				Titanic Rage##112287
				Storm of Swords##112291
				Annihilator##112290
			]]
		},
		["Protection (Tank)"] = {3,false, [[
				War Machine##112207
				Fast Footwork##112238
				Frothing Berserker##112237
				Heroic Leap##112208
				Impending Victory##112183
				Spell Reflection##112253
				Thunder Clap##112205
				Rallying Cry##112188
				Storm Bolt##112198
				Blood and Thunder##112204
				Double Time##112249
				Crushing Force##112236
				Crushing Force##112236
				Reinforced Plates##112235
				Pain and Gain##112217
				Leeching Strikes##112206
				Furious Blows##112197
				Sidearm##112194
				Barbaric Training##112244
				Seismic Reverberation##112201
				Armored to the Teeth##112109
				Armored to the Teeth##112109
				Avatar##112232
				Unstoppable Force##112230
				Wild Strikes##112224
				Wild Strikes##112224
				Thunderous Roar##112223
				Endurance Training##112200
				Shockwave##112242
				One-Handed Weapon Specialization##112181
				Thunderous Words##112222
				Defensive Stance##112187
				Battle Stance##112112
			]],[[
				Ignore Pain##112149
				Revenge##112152
				Devastator##112153
				Last Stand##112151
				Demoralizing Shout##112159
				Strategist##112157
				Brace For Impact##112150
				Best Served Cold##112158
				Rend##112156
				Shield Wall##112167
				Enduring Defenses##112169
				Brutal Vitality##112325
				Tough as Nails##112324
				Punish##112323
				Challenging Shout##112163
				Show of Force##112177
				Into the Fray##112175
				Thunderlord##112162
				Bloodsurge##112154
				Anger Management##112166
				Enduring Alacrity##112305
				Ravager##112304
				Focused Vigor##112174
				Shield Charge##112173
				Champion's Bulwark##112172
				Shield Specialization##112171
				Shield Specialization##112171
				Indomitable##112306
				Violent Outburst##112116
				Booming Voice##112170
			]]
		},
	},
}
