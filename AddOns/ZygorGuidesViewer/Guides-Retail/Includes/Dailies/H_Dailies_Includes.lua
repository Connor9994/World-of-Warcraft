if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------------
----- Argent Tournament -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Aspirant",[[
	step
		talk Magister Edien Sunhollow##33542
		accept Up To The Challenge##13678 |goto Icecrown 76.3,24.3
	step
		talk Magister Edien Sunhollow##33542
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13673 |goto 76.3,24.4 |or
		accept A Worthy Weapon##13674 |goto 76.3,24.4 |or
		accept The Edge of Winter##13675 |goto 76.3,24.4 |or
	step
		talk Amariel Sunsworn##33658
		accept Training in the Field##13676 |goto 76.3,24.4
	step
		talk Galathia Brightdawn##33659
		accept Learning the Reins##13677 |goto 76.2,24.4
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		Tell her _"I am glad to help."_
		collect Ashwood Brand##44981 |q 13673/1 |goto Grizzly Hills 61.2,50.3
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13674 |goto Icecrown 69.1,76.2
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238 |goto Dragonblight 93.2,26.1
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13674/1
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13675 |goto Crystalsong Forest 54.5,74.9
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13675/1 |goto Howling Fjord 42.2,19.7
	step
		kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
		Kill #8# Icecrown Scourge |q 13676/1 |goto Icecrown 74.8,35.5
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Sunreaver Hawkstrider##33842
		Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13677 |goto 75.6,23.7
	step
		clicknpc Melee Target##33229
		|tip If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks.
		Use your Thrust ability #5# times |q 13677/1 |goto 73.1,24.8
	step
		clicknpc Charge Target##33272
		|tip Use Shield-Breaker ability until you notice the targets Defend is gone.
		Use your Charge ability #2# times |q 13677/3 |goto 72.9,25.1
	step
		clicknpc Ranged Target##33243
		|tip Use Shield-Breaker ability on a Ranged Target to bring its shield down.
		Use Shield-Breaker ability on a Ranged Target #2# times |q 13677/2 |goto 73.3,25.0
		|tip These will only count if the target's shield is down.
	step
		talk Magister Edien Sunhollow##33542
		|tip You will only be able to accept and turn in 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13673 |goto 76.3,24.4 |only if not completedq(13673)
		turnin A Worthy Weapon##13674 |goto 76.3,24.4 |only if not completedq(13674)
		turnin The Edge of Winter##13675 |goto 76.3,24.4 |only if not completedq(13675)
	step
		talk Amariel Sunsworn##33658
		turnin Training in the Field##13676 |goto 76.3,24.4
	step
		talk Galathia Brightdawn##33659
		turnin Learning the Reins##13677 |goto 76.2,24.4
	step
		collect 15 Aspirant's Seal##45192 |q 13678/1
		|tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.
		|tip It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
	step
		talk Magister Edien Sunhollow##33542
		turnin Up To The Challenge##13678 |goto 76.3,24.4
]])

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Valiant",[[
	step
		talk Magister Edien Sunhollow##33542
		accept The Aspirant's Challenge##13680 |goto Icecrown 76.3,24.4
	step
		Equip the Horde Lance in your bags |use Horde Lance##46070
		clicknpc Stabled Sunreaver Hawkstrider##33842
		Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13680 |goto 71.8,20.0
	step
		talk Squire David##33447
		Tell him _"I am ready to fight!"_
		|tip Before telling Squire David this, use the Defend ability on your hotbar to max your shield out at 3 charges.
		kill Argent Valiant##33448
		|tip Use the abilities on your hotbar to defeat the Argent Valiant.
		|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.
		|tip Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.
		|tip When his shield is down, use your Charge ability on him. Keep repeating this process until he is defeated.
		Defeat the Argent Valiant |q 13680/1 |goto 71.4,19.6
	step
		talk Magister Edien Sunhollow##33542
		turnin The Aspirant's Challenge##13680 |goto 76.3,24.4
		accept A Valiant Of Orgrimmar##13691 |only Orc |goto 76.3,24.4
		accept A Valiant Of Sen'jin##13693 |only Troll |goto 76.3,24.4
		accept A Valiant Of Thunder Bluff##13694 |only Tauren |goto 76.3,24.4
		accept A Valiant Of Undercity##13695 |only Scourge |goto 76.3,24.4
		accept A Valiant Of Silvermoon##13696 |only BloodElf |goto 76.3,24.4
	step
		talk Mokra the Skullcrusher##33361
		turnin A Valiant Of Orgrimmar##13691 |goto 76.5,24.6
		accept The Valiant's Charge##13697 |goto 76.5,24.6
		|only Orc
	step
		talk Zul'tore##33372
		turnin A Valiant Of Sen'jin##13693 |goto 76.0,24.5
		accept The Valiant's Charge##13719 |goto 76.0,24.5
		|only Troll
	step
		talk Runok Wildmane##33403
		turnin A Valiant Of Thunder Bluff##13694 |goto 76.2,24.6
		accept The Valiant's Charge##13720 |goto 76.2,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin A Valiant Of Undercity##13695 |goto 76.5,24.2
		accept The Valiant's Charge##13721 |goto 76.5,24.2
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin A Valiant Of Silvermoon##13696 |goto 76.5,23.9
		accept The Valiant's Charge##13722 |goto 76.5,23.9
		|only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13762 |goto 76.5,24.6 |or
		accept A Worthy Weapon##13763 |goto 76.5,24.6 |or
		accept The Edge Of Winter##13764 |goto 76.5,24.6 |or
		|only Orc
	step
		talk Akinos##33405
		accept A Valiant's Field Training##13765 |goto 76.5,24.5
		|only Orc
	step
		talk Morah Worgsister##33544
		accept The Grand Melee##13767 |goto 76.4,24.6
		accept At The Enemy's Gates##13856 |goto 76.4,24.6
		|only Orc
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		|tip Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills 61.2,50.3
		|only Orc
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown 69.1,76.2
		|only Orc
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight 93.2,26.1
		|only Orc
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest 54.5,74.9
		|only Orc
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord 42.2,19.7
		|only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown 48.9,71.4
		|only Orc
	step
		kill 15 Boneguard Footman##33438+ |q 13856/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13856/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13856/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Orc
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13856 |goto 49.1,71.4
		|only Orc
	step
		kill 10 Converted Hero##32255+ |q 13765/1 |goto 44.3,54.2
		|only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Orgrimmar Wolf##33799
		Mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.5,24.0
		|only Orc
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.3,26.0
		|only Orc
	step
		talk Mokra the Skullcrusher##33361
		turnin A Blade Fit For A Champion##13762 |goto 76.5,24.6 |only if not completedq(13762)
		turnin A Worthy Weapon##13763 |goto 76.5,24.6 |only if not completedq(13763)
		turnin The Edge Of Winter##13764 |goto 76.5,24.6 |only if not completedq(13764)
		|only Orc
	step
		talk Akinos##33405
		turnin A Valiant's Field Training##13765 |goto 76.5,24.5
		|only Orc
	step
		talk Morah Worgsister##33544
		turnin The Grand Melee##13767 |goto 76.4,24.6
		turnin At The Enemy's Gates##13856 |goto 76.4,24.6
		|only Orc
	step
		talk Zul'tore##33372
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13768 |goto 76.0,24.5 |or
		accept A Worthy Weapon##13769 |goto 76.0,24.5 |or
		accept The Edge Of Winter##13770 |goto 76.0,24.5 |or
		|only Troll
	step
		talk Shadow Hunter Mezil-kree##33540
		accept A Valiant's Field Training##13771 |goto 76.0,24.6
		|only Troll
	step
		talk Gahju##33545
		accept The Grand Melee##13772 |goto 75.9,24.4
		accept At The Enemy's Gates##13857 |goto 75.9,24.4
		|only Troll
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		|tip Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills 61.2,50.3
		|only Troll
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown 69.1,76.2
		|only Troll
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight 93.2,26.1
		|only Troll
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest 54.5,74.9
		|only Troll
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord 42.2,19.7
		|only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown 48.9,71.4
		|only Troll
	step
		kill 15 Boneguard Footman##33438+ |q 13857/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13857/2
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13857/3
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Troll
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13857 |goto 49.1,71.4
		|only Troll
	step
		kill 10 Converted Hero##32255+ |q 13771/1 |goto 44.3,54.2
		|only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Darkspear Raptor##33796
		Mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.6,23.8
		|only Troll
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.3,26.0
		|only Troll
	step
		talk Zul'tore##33372
		turnin A Blade Fit For A Champion##13768 |goto 76.0,24.5 |only if not completedq(13768)
		turnin A Worthy Weapon##13769 |goto 76.0,24.5 |only if not completedq(13769)
		turnin The Edge Of Winter##13770 |goto 76.0,24.5 |only if not completedq(13770)
		|only Troll
	step
		talk Shadow Hunter Mezil-kree##33540
		turnin A Valiant's Field Training##13771 |goto 76.0,24.6
		|only Troll
	step
		talk Gahju##33545
		turnin The Grand Melee##13772 |goto 75.9,24.4
		turnin At The Enemy's Gates##13857 |goto 75.9,24.4
		|only Troll
	step
		talk Runok Wildmane##33403
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13773 |goto 76.2,24.6 |or
		accept A Worthy Weapon##13774 |goto 76.2,24.6 |or
		accept The Edge Of Winter##13775 |goto 76.2,24.6 |or
		|only Tauren
	step
		talk Dern Ragetotem##33539
		accept A Valiant's Field Training##13776 |goto 76.3,24.7
		|only Tauren
	step
		talk Anka Clawhoof##33549
		accept The Grand Melee##13777 |goto 76.1,24.6
		accept At The Enemy's Gates##13858 |goto 76.1,24.6
		|only Tauren
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		|tip Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills 61.2,50.3
		|only Tauren
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown 69.1,76.2
		|only Tauren
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight 93.2,26.1
		|only Tauren
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest 54.5,74.9
		|only Tauren
	step
		Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord 42.2,19.7
		|only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13858 |goto Icecrown 48.9,71.4
		|only Tauren
	step
		kill 15 Boneguard Footman##33438+ |q 13858/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13858/2
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13858/3
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Tauren
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13858 |goto 49.1,71.4
		|only Tauren
	step
		kill 10 Converted Hero##32255+ |q 13776/1 |goto 44.3,54.2
		|only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Thunder Bluff Kodo##33792
		Mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.5,24.3
		|only Tauren
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.3,26.0
		|only Tauren
	step
		talk Runok Wildmane##33403
		turnin A Blade Fit For A Champion##13773 |goto 76.2,24.6 |only if not completedq(13773)
		turnin A Worthy Weapon##13774 |goto 76.2,24.6 |only if not completedq(13774)
		turnin The Edge Of Winter##13775 |goto 76.2,24.6 |only if not completedq(13775)
		|only Tauren
	step
		talk Dern Ragetotem##33539
		turnin A Valiant's Field Training##13776 |goto 76.3,24.7
		|only Tauren
	step
		talk Anka Clawhoof##33549
		turnin The Grand Melee##13777
		turnin At The Enemy's Gates##13858 |goto 76.1,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13778 |goto 76.5,24.2 |or
		accept A Worthy Weapon##13779 |goto 76.5,24.2 |or
		accept The Edge Of Winter##13780 |goto 76.5,24.2 |or
		|only Scourge
	step
		talk Sarah Chalke##33541
		accept A Valiant's Field Training##13781 |goto 76.6,24.1
		|only Scourge
	step
		talk Handler Dretch##33547
		accept The Grand Melee##13782
		accept At The Enemy's Gates##13860 |goto 76.5,24.3
		|only Scourge
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills 61.2,50.3
		|only Scourge
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown 69.1,76.2
		|only Scourge
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##194238
		collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight 93.2,26.1
		|only Scourge
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest 54.5,74.9
		|only Scourge
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord 42.2,19.7
		|only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown 48.9,71.4
		|only Scourge
	step
		kill 15 Boneguard Footman##33438+ |q 13860/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13860/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13860/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Scourge
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13860 |goto 49.1,71.4
		|only Scourge
	step
		kill 10 Converted Hero##32255+ |q 13781/1 |goto 44.3,54.2
		|only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.6,23.9
		|only Scourge
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.3,26.0
		|only Scourge
	step
		talk Deathstalker Visceri##33373
		turnin A Blade Fit For A Champion##13778 |only if not completedq(13778)
		turnin A Worthy Weapon##13779 |only if not completedq(13779)
		turnin The Edge Of Winter##13780 |goto 76.5,24.2 |only if not completedq(13780)
		|only Scourge
	step
		talk Sarah Chalke##33541
		turnin A Valiant's Field Training##13781 |goto 76.6,24.1
		|only Scourge
	step
		talk Handler Dretch##33547
		turnin The Grand Melee##13782 |goto 76.5,24.3
		turnin At The Enemy's Gates##13860 |goto 76.5,24.3
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13783 |goto 76.5,23.9 |or
		accept A Worthy Weapon##13784 |goto 76.5,23.9 |or
		accept The Edge Of Winter##13785 |goto 76.5,23.9 |or
		|only BloodElf
	step
		talk Kethiel Sunlance##33538
		accept A Valiant's Field Training##13786 |goto 76.4,23.8
		|only BloodElf
	step
		talk Aneera Thuron##33548
		accept The Grand Melee##13787 |goto 76.5,23.9
		accept At The Enemy's Gates##13859 |goto 76.5,23.9
		|only BloodElf
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills 61.2,50.3
		|only BloodElf
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown 69.1,76.2
		|only BloodElf
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight 93.2,26.1
		|only BloodElf
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest 54.5,74.9
		|only BloodElf
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord 42.2,19.7
		|only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown 48.9,71.4
		|only BloodElf
	step
		kill 15 Boneguard Footman##33438+ |q 13859/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13859/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13859/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		only BloodElf
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13859 |goto 49.1,71.4
		|only BloodElf
	step
		kill 10 Converted Hero##32255 |q 13786/1 |goto 44.3,54.2
		|only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Silvermoon Hawkstrider##33791
		Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.5,24.1
		|only BloodElf
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.3,26.0
		|only BloodElf
	step
		talk Eressea Dawnsinger##33379
		turnin A Blade Fit For A Champion##13783 |goto 76.5,23.9 |only if not completedq(13783)
		turnin A Worthy Weapon##13784 |goto 76.5,23.9 |only if not completedq(13784)
		turnin The Edge Of Winter##13785 |goto 76.5,23.9 |only if not completedq(13785)
		|only BloodElf
	step
		talk Kethiel Sunlance##33538
		turnin A Valiant's Field Training##13786 |goto 76.4,23.8
		|only BloodElf
	step
		talk Aneera Thuron##33548
		turnin The Grand Melee##13787 |goto 76.5,23.9
		turnin At The Enemy's Gates##13859 |goto 76.5,23.9
		|only BloodElf
	step
		Make sure you have 25 Valiant Seals:
		collect 25 Valiant's Seal##44987 |q 13697/1 |only Orc
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
		collect 25 Valiant's Seal##44987 |q 13719/1 |only Troll
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
		collect 25 Valiant's Seal##44987 |q 13720/1 |only Tauren
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
		collect 25 Valiant's Seal##44987 |q 13721/1 |only Scourge
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
		collect 25 Valiant's Seal##44987 |q 13722/1 |only BloodElf
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		turnin The Valiant's Charge##13697 |goto 76.5,24.6
		accept The Valiant's Challenge##13726 |goto 76.5,24.6
		|only Orc
	step
		talk Zul'tore##33372
		turnin The Valiant's Charge##13719 |goto 76.0,24.5
		accept The Valiant's Challenge##13727 |goto 76.0,24.5
		|only Troll
	step
		talk Runok Wildmane##33403
		turnin The Valiant's Charge##13720 |goto 76.2,24.6
		accept The Valiant's Challenge##13728 |goto 76.2,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin The Valiant's Charge##13721 |goto 76.5,24.2
		accept The Valiant's Challenge##13729 |goto 76.5,24.2
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin The Valiant's Charge##13722 |goto 76.5,23.9
		accept The Valiant's Challenge##13731 |goto 76.5,23.9
		|only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Orgrimmar Wolf##33799
		Mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.2,22.5
		|only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Darkspear Raptor##33796
		Mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.0,22.5
		|only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Thunder Bluff Kodo##33792
		Mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 71.9,22.4
		|only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Forsaken Warhorse##33798
		Mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.1,22.4
		|only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Silvermoon Hawkstrider##33791
		Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.2,22.4
		|only BloodElf
	step
		talk Squire Danny##33518
		Tell him: "_I am ready to fight!_"
		kill Argent Valiant##33448
		|tip Use the abilities on your hotbar to defeat the Argent Valiant.
		|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.
		|tip Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.
		|tip When his shield is down, use your Charge ability on him. Keep repeating this process until he is defeated.
		Defeat the Argent Valiant |q 13726/1 |goto 68.6,21.0 |only Orc
		Defeat the Argent Valiant |q 13727/1 |goto 68.6,21.0 |only Troll
		Defeat the Argent Valiant |q 13728/1 |goto 68.6,21.0 |only Tauren
		Defeat the Argent Valiant |q 13729/1 |goto 68.6,21.0 |only Scourge
		Defeat the Argent Valiant |q 13731/1 |goto 68.6,21.0 |only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		turnin The Valiant's Challenge##13726 |goto 76.5,24.6
		accept A Champion Rises##13736 |goto 76.5,24.6
		|only Orc
	step
		talk Zul'tore##33372
		turnin The Valiant's Challenge##13727 |goto 76.0,24.5
		accept A Champion Rises##13737 |goto 76.0,24.5
		|only Troll
	step
		talk Runok Wildmane##33403
		turnin The Valiant's Challenge##13728 |goto 76.2,24.6
		accept A Champion Rises##13738 |goto 76.2,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin The Valiant's Challenge##13729 |goto 76.5,24.2
		accept A Champion Rises##13739 |goto 76.5,24.2
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin The Valiant's Challenge##13731 |goto 76.5,23.9
		accept A Champion Rises##13740 |goto 76.5,23.9
		|only BloodElf
	step
		talk Justicar Mariel Trueheart##33817
		turnin A Champion Rises##13736 |goto 69.7,22.9 |only Orc
		turnin A Champion Rises##13737 |goto 69.7,22.9 |only Troll
		turnin A Champion Rises##13738 |goto 69.7,22.9 |only Tauren
		turnin A Champion Rises##13739 |goto 69.7,22.9 |only Scourge
		turnin A Champion Rises##13740 |goto 69.7,22.9 |only BloodElf
		accept The Scourgebane##13795 |goto 69.7,22.9 |only DeathKnight
		accept Eadric the Pure##13794 |goto 69.7,22.9 |only if not DeathKnight
	step
		talk Crok Scourgebane##33762
		turnin The Scourgebane##13795 |goto 73.8,20.1
		|only DeathKnight
	step
		talk Eadric the Pure##33759
		turnin Eadric the Pure##13794 |goto 70.0,23.4
		|only if not DeathKnight
]])

------------------------
----- Baradin Hold -----
------------------------



---------------------------
----- Cooking Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Org_Cooking_Dailies",[[
	step
	label "start"
		talk Marogg##42506
		|tip You will only be able to complete 1 of the following quests per day.
		accept Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |or
		accept Crawfish Creole##26226 |goto 56.53,62.48 |or
		accept Even Thieves Get Hungry##26235 |goto 56.53,62.48 |or
		accept Everything Is Better with Bacon##26220 |goto 56.53,62.48 |or
		accept Stealing From Our Own##26234 |goto 56.53,62.48 |only Troll |or
		accept Stealing From Our Own##26233 |goto 56.53,62.48 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren |or
	step
		click Prickly Pear Fruit##203969
		|tip They look like smaller cactus plants with red round fruit on top of them.
		|tip They are usually found next to walls all around Orgrimmar.
		collect 8 Prickly Pear Fruit##57766 |q 26227/1 |goto 52.81,62.11
		|only if haveq(26227)
	stickystart "hordeinfant"
	step
		clicknpc Muddy Crawfish##42548+
		|tip They look like tiny lobsters in the water around this area.
		collect 10 Muddy Crawfish##57765 |q 26226/1 |goto 65.26,43.47
		|only if haveq(26226)
	step
	label "hordeinfant"
		kill Orgrimmar Thief##42594+
		|tip They are stealthed near wooden crates.
		|tip They are all around Orgrimmar, so you can walk around and find them everywhere.
		|tip They won't be next to every pile of crates, so you'll need to search for them.
		collect 3 Horde Infantry Rations##57879 |q 26235/1 |goto 65.77,39.62
		|only if haveq(26235)
	step
		Kill enemies around this area
		collect 6 Swine Belly##57758 |q 26220/1 |goto Durotar/0 48.71,16.00
		|only if haveq(26220)
	step
		click Barrels of Kezan Rice##9664+
		|tip They look like light brown wooden barrels around this area.
		collect 6 Barrel of Kezan Rice##57878 |q 26234/1 |goto Orgrimmar/1 35.11,69.70
		|only Troll
		|only if haveq(26234)
	step
		click Barrels of Darkspear Rice##6037+
		|tip They looks like dark brown wooden barrels around this area.
		collect 6 Barrel of Darkspear Rice##57877 |q 26233/1 |goto Orgrimmar/1 35.11,69.70
		|only Orc,Scourge,Tauren,BloodElf,Goblin
		|only if haveq(26233)
	step
		talk Marogg##42506
		|tip You will only be able to complete 1 of the following quests per day.
		turnin Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26227)
		turnin Crawfish Creole##26226 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26226)
		turnin Even Thieves Get Hungry##26235 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26235)
		turnin Everything Is Better with Bacon##26220 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26220)
		turnin Stealing From Our Own##26234 |goto Orgrimmar/1 56.53,62.48 |only Troll |only if haveq(26234)
		turnin Stealing From Our Own##26233 |goto Orgrimmar/1 56.53,62.48 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren |only if haveq(26233)
]])

ZygorGuidesViewer:RegisterInclude("TB_Cooking_Dailies",[[
	step
	label "dailies"
		talk Aska Mistrunner##3026
		accept Pining for Nuts##29358 |goto Thunder Bluff/0 50.72,53.11 |or
		accept "Magic" Mushrooms##29362 |goto 50.72,53.11 |or
		accept Mulgore Spice Bread##29363 |goto 50.72,53.11 |or
		accept Corn Mash##29364 |goto 50.72,53.11 |or
		accept Perfectly Pickled Portions##29365 |goto 50.72,53.11 |or
	step
		click Mulgore Pine Cone##208875
		|tip They look like sparkling pine cones on the ground next to the base of moss trees in Thunder Bluff.
		_<Create a Cooking Fire>_
		use the Mulgore Pine Cones##69990
		collect 30 Pine Nut##69988 |q 29358/1 |goto 48.52,62.16
		|only if haveq(29358)
	step
		Enter the cave |goto 29.49,29.82 < 5
		click "Magic" Mushroom##208878
		|tip They look like pale grey mushrooms grouped in fours all around the cave.
		collect 6 "Magic" Mushroom##69994 |q 29362/1 |goto 26.16,22.18
		|only if haveq(29362)
	step
		talk Naal Mistrunner##3027
		buy 5 Simple Flour##30817 |q 29363 |goto 51.01,52.46
		buy 5 Mild Spices##2678 |q 29363 |goto 51.01,52.46
		|only if haveq(29363)
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Spice Bread>_
		collect 5 Spice Bread##30816 |q 29363/1
		|only if haveq(29363)
	step
		use the Mulgore Spices##69997
		collect 5 Fresh Mulgore Spice Bread##69996 |q 29363/1
		|only if haveq(29363)
	step
		Click the bowls of Corn Kernels
		|tip They look like little bowls of yellow corn in almost all the huts in Thunderbluff.
		Grind #6# Bowls of Corn Kernels |q 29364/1 |goto 52.00,45.53
		|only if haveq(29364)
	step
		collect Succulent Sweet Potatoes##70000 |q 29365/1 |goto 47.96,43.08
		|tip They look like baskets in this little hut.
		|only if haveq(29365)
	step
		collect Savory Spices##70001 |q 29365/2 |goto 49.71,41.54
		|tip It looks like a bag with weeds in it
		|only if haveq(29365)
	step
		collect Fresh-Caught Fish##70002 |q 29365/3 |goto 56.01,44.47
		|tip It looks like a rope hanging down with a bunch of fish on it inside of the tent.
		|only if haveq(29365)
	step
		collect Fresh-Hunted Fowl##70003 |q 29365/4 |goto 51.02,47.12
		|tip It looks like a bird hanging upside down at the side of the tent.
		|only if haveq(29365)
	step
		talk Aska Mistrunner##3026
		turnin Pining for Nuts##29358 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29358)
		turnin "Magic" Mushrooms##29362 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29362)
		turnin Mulgore Spice Bread##29363 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29363)
		turnin Corn Mash##29364 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29364)
		turnin Perfectly Pickled Portions##29365 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29365)
]])

ZygorGuidesViewer:RegisterInclude("UC_Cooking_Dailies",[[
	step
		talk Eunice Burch##4552
		accept Roach Coach##29334 |goto Undercity/0 62.15,44.89 |or
		accept Escargot A Go-Go##29333 |goto 62.15,44.89 |or
		accept Would You Like Some Flies With That?##29360 |goto 62.15,44.89 |or
		accept Lily, Oh Lily##29332 |goto 62.15,44.89 |or
		accept Fungus Among Us##29315 |goto 62.15,44.89 |or
	step
		click Cockrach Cabin##336+
		|tip Look in corners and behind crates.
		|tip They are hidden all around Undercity.
		collect 20 Plump Cockroach##69919 |q 29334/1 |goto 61.28,34.06
		|only if haveq(29334)
	step
		click Fly Covered "Meat"##208876
		|tip You will find the fly meat around the wagons in this area.
		collect 25 Bloated Fly##69989 |q 29360/1 |goto 69.26,52.38
		You can find more around [57.08,17.01]
		|only if haveq(29360)
	step
		clicknpc Brightwater Snail##53526+
		|tip They are underneath the water around the area.
		collect 8 Brightwater Snail##69918 |q 29333/1 |goto Tirisfal Glades/0 70.72,39.55
		|only if haveq(29333)
	step
		click Sewer Cap##208816
		|tip They spawn near walls around this area.
		collect 12 Sewer Cap##208816 |q 29315/1 |goto Undercity/0 36.24,30.34
		|only if haveq(29315)
	step
		click Stillwater Lily##208833
		|tip They are floating along the edge of the lake around this area.
		collect 10 Stillwater Lily##69917 |q 29332/1 |goto Tirisfal Glades/0 50.86,55.57
		|only if haveq(29332)
	step
		talk Chef Audrey##53528
		turnin Roach Coach##29334 |goto Undercity/0 62.68,35.51
		--|only if haveq(29334)
	step
		talk Eunice Burch##4552
		turnin Escargot A Go-Go##29333 |goto 62.15,44.89 |only if haveq(29333)
		turnin Would You Like Some Flies With That?##29360 |goto 62.15,44.89 |only if haveq(29360)
		turnin Fungus Among Us##29315 |goto 62.15,44.89 |only if haveq(29315)
		turnin Lily, Oh Lily##29332 |goto 62.15,44.89 |only if haveq(29332)
]])

ZygorGuidesViewer:RegisterInclude("H_Shattrath_Cooking_Dailies",[[
	step
		talk The Rokk##24393
		You will only be able to accept one of these daily quests per day
		accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6 |next "soup"
		accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6 |next "stew"
		accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6 |next "mana"
		accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6 |next "tasty"
	step
	label "soup"
		talk Uriku##20096
		buy Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand 56.2,73.3
	step
		kill Clefthoof##18205+, Clefthoof Calf##19183+
		collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 58.5,46.8
		You can find more Clefthooves at  45.5,72.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		use Cooking Pot##33851
		|tip Use your Cooking Pot to Cook up some Spiritual Soup.
		Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.4
		|next "turnin"
	step
	label "stew"
		talk Xerintha Ravenoak##20916
		buy Recipe: Mok'Nathal Shortribs##31675 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##31672 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		talk Xerintha Ravenoak##20916
		buy Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31674
		learn Crunchy Serpent##31673 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		collect 4 Raptor Ribs##31670 |q 11379 |goto Blade's Edge Mountains 49.6,46.2
	step
		kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
		collect 1 Serpent Flesh##31671 |q 11379 |goto 68.2,63.2
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
	step
		kill Abyssal Flamebringer##19973+
		use Cooking Pot##33852
		|tip Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise.
		collect Demon Broiled Surprise##33848 |q 11379/1 |goto 29.0,84.5
		|next "turnin"
	step
	label "mana"
		click Mana Berry Bush##186729
		collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm 45.6,54.2
		|next "turnin"
	step
	label "tasty"
		talk Innkeeper Grika##18957
		buy Recipe: Warp Burger##27692 |n
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 48.8,45.0
	step
		kill Blackwind Warp Chaser##23219+
		collect 3 Warped Flesh##27681 |q 11377 |goto 64.0,83.5
	step
		kill Monstrous Kaliri##23051+
		|tip They fly around in the sky close to the tree outposts and bridges.
		collect Giant Kaliri Wing##33838 |q 11377 |goto 67.6,74.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Warp Burger##33288,Cooking,3 total |q 11377 |goto 25.9,59.5
		use Cooking Pot##33837
		|tip Use your Cooking Pot to Cook up some Kaliri Stew.
		create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
		|next "turnin"
	step
	label "turnin"
		talk The Rokk##24393
		turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
		turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
		turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
		turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
]])

ZygorGuidesViewer:RegisterInclude("H_Dalaran_Cooking_Dailies",[[
		Enter the building |goto Dalaran/1 63.75,32.77 < 5 |walk
		talk Awilo Lon'gomba##29631
		|tip Inside the building.
		accept Cheese for Glowergold##13115 |or |goto 69.93,38.99
		accept Convention at the Legerdemain##13113 |or |goto 69.93,38.99
		accept Infused Mushroom Meatloaf##13112 |or |goto 69.93,38.99
		accept Mustard Dogs!##13116 |or |goto 69.93,38.99
		accept Sewer Stew##13114 |or |goto 69.93,38.99
		|tip You will only be able to accept and turn in 1 of these 5 daily quests per day.
	step
		Enter the building |goto 53.30,33.32 < 5 |walk
		click Aged Dalaran Limburger##192825
		|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		collect 1 Aged Dalaran Limburger##43137 |q 13115 |goto 54.63,31.56
	step
		click Half Full Glass of Wine##192824
		|tip Inside the building.
		|tip They look like small blue-ish wine glasses sitting on tables and on the ground inside this building.
		|tip They spawn in random locations.
		collect 6 Half Full Dalaran Wine Glass##43138 |q 13115 |goto 54.55,33.95
		You can find more Half Full Glasses of Wine inside the building at [49.33,39.36]
	step
		use the Empty Cheese Serving Platter##43139
		collect 1 Wine and Cheese Platter##43136 |q 13115/1
	step
		click Full Jug of Wine##192823
		|tip They look like small blue-ish green jugs sitting on the ground inside this building.
		|tip They spawn in random locations.
		collect 1 Jug of Wine##43128 |q 13113/2 |goto 54.96,30.79
	step
		Kill enemies around this area
		collect 4 Chilled Meat##43013 |q 13113 |goto Dragonblight/0 30.01,49.81
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 4 Northern Stews>_
		Reach Level 25 Northrend Cooking |skill Northrend Cooking,25
		collect 4 Northern Stew##34747 |q 13113/1
	step
		Jump into the Well |goto Dalaran/1 48.36,32.50
		click Infused Mushroom##192818
		|tip They look like grouped up blue mushrooms on the ground.
		collect 4 Infused Mushroom##43100 |q 13112 |goto Dalaran/2 51.41,41.78
	step
		Run up the stairs |goto 51.45,38.37 < 5 |walk
		Run up the ramp |goto 64.42,48.37 < 5 |walk
		Leave the Dalaran Sewers |goto 65.45,46.99 < 5 |walk
		Kill enemies around this area
		collect 2 Chilled Meat##43013 |q 13112 |goto Dragonblight/0 30.01,49.81
	step
		_<Create a Cooking Fire>_
		use the Meatloaf Pan##43101
		collect 1 Infused Mushroom Meatloaf##43099 |q 13112/1
	step
		click Wild Mustard##192827
		|tip They look like small bushy yellow flowers on the ground around this area.
		|tip They spawn randomly in grassy areas.
		collect 4 Wild Mustard##43143 |q 13116 |goto Dalaran/1 72.21,38.68
		You can find more around [50.68,50.88]
		You can find more around [33.74,39.57]
	step
		Kill Wooly Rhino enemies around this area
		collect 4 Rhino Meat##43012 |q 13116 |goto Borean Tundra/0 46.22,43.98
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 4 Rhino Dogs>_
		collect 4 Rhino Dogs##34752 |q 13116
	step
		use the Empty Picnic Basket##43142
		collect 1 Mustard Dog Basket##43144 |q 13116/1
	step
		click Crystalsong Carrots##192828
		|tip They look like carrots sticking out of the ground at the base of trees around this area, underneath Dalaran.
		|tip They spawn in random locations around this area.
		collect 4 Crystalsong Carrot##43148 |q 13114 |goto Crystalsong Forest 26.92,45.46
	step
		Kill enemies around this area
		collect 4 Chilled Meat##43013 |q 13114 |goto Dragonblight/0 30.01,49.81
	step
		_<Create a Cooking Fire>_
		use the Stew Cookpot##43147
		collect 1 Vegetable Stew##43149 |q 13114/1
	step
		Enter the building |goto Dalaran/1 36.80,29.78 < 5 |walk
		talk Ranid Glowergold##28718
		turnin Cheese for Glowergold##13115 |goto 36.62,27.81
	step
		Enter the building |goto 50.29,37.62 < 5 |walk
		talk Arille Azuregaze##29049
		turnin Convention at the Legerdemain##13113 |goto 48.39,37.46
	step
		Enter the building |goto 48.99,56.99 < 5 |walk
		talk Orton Bennet##29527
		turnin Infused Mushroom Meatloaf##13112 |goto 52.33,55.59
	step
		talk Archmage Pentarus##28160
		turnin Mustard Dogs!##13116 |goto 68.54,41.99
	step
		Enter the Dalaran Sewers |goto 35.12,45.18 < 5 |walk
		talk Ajay Green##29532
		turnin Sewer Stew##13114 |goto Dalaran/2 35.44,57.62
]])

-------------------------------
----- Dominance Offensive -----
-------------------------------

ZygorGuidesViewer:RegisterInclude("Dominance_Offensive",[[
	startlevel 15
	step
		talk Sunwalker Dezco##64566
		accept Meet the Scout##32249 |goto Vale of Eternal Blossoms 62.9,28.3
	step
		talk Scout Rokla##67812
		turnin Meet the Scout##32249 |goto Krasarang Wilds 8.7,64.4
	step
		talk Garrosh Hellscream##62092
		accept The Might of the Warchief##32250 |goto Krasarang Wilds 8.7,64.4
	stickystart "alliancetroops"
	step
		talk Blood Guard Gro'tash##67927
		Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds 10.7,53.2
	step
		talk Grizzle Gearslip##67926
		Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds 15.7,57.8
	step
	label "alliancetroops"
		kill Alliance Sentinel##67900+, Alliance Footman##+, Alliance Priest##+
		Kill 25 Alliance troops |q 32250/1 |goto Krasarang Wilds 10.0,64.1
	step
		Next to you:
		talk Garrosh Hellscream##62092
		turnin The Might of the Warchief##32250
		accept Domination Point##32108
	step
		click Signal Fire##216274
		turnin Domination Point##32108 |goto 8.5,63.8
	step
		talk Kromthar##67785
		fpath Domination Point |goto Krasarang Wilds 9.7,52.5
	step
	label "dailies"
		talk Blood Guard Gro'tash##67880
		accept The Ruins of Ogudei##32449 |goto Krasarang Wilds 10.1,53.9 |or |next "ogudei"
		accept The Time is Now!##32450 |goto Krasarang Wilds 10.1,53.9 |or |next "lion"
		accept Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds 10.1,53.9 |or |next
		If no quests are available, click here |confirm |next "cave"
	step
		talk Brolic##67767
		accept Tear It Up##32126 |goto Krasarang Wilds 10.2,53.6
	step
		talk Shokia##56411
		accept Death on Two Legs##32123 |goto Krasarang Wilds 10.3,55.6
	step
		Fly up in the air and throw your Bilgewater Molotovs at the Skyfire Gyrocopter X2s |use The Bilgewater Molotov##92019
		Kill 6 Skyfire Gyrocopter X2s |q 32235/1 |goto Krasarang Wilds 11.8,57.6
	stickystart "shieldwalltroop"
	step
		clicknpc Alliance Supply Drop##67969
		Destroy 8 Alliance Supply Drops |q 32126/1 |goto Krasarang Wilds 8.1,61.3
	step
	label "shieldwalltroop"
		kill Shieldwall Marine##+, Shieldwall Stormcaller##+
		Kill 10 Alliance Troops |q 32123/1 |goto 9.9,64.2
	step
		talk Shokia##56411
		turnin Death on Two Legs##32123 |goto Krasarang Wilds 10.3,55.6
	step
		talk Brolic##67767
		turnin Tear It Up##32126 |goto Krasarang Wilds 10.3,53.1
	step
		talk Blood Guard Gro'tash##67880
		turnin Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds 10.1,53.9
		accept Another One Bites the Dust##32128 |goto Krasarang Wilds 10.1,53.9
	step
		talk Brolic##67767
		accept All Dead, All Dead##32127 |goto Krasarang Wilds 10.3,53.1
	step
		kill Captain Brent the Black##67626 |q 32127/1 |goto Krasarang Wilds 12.7,75.8
		|tip On the second floor of the ship, towards the back.
	step
		click Powder Magazine##216231
		|tip It's on the bottom floor of the ship, next to Fireworks and Bombs.
		Destroy the Defiant ammunition |q 32128/2 |goto Krasarang Wilds 12.3,75.6
	step
		kill Captain Mulkey##67627 |q 32127/2 |goto Krasarang Wilds 15.0,76.4
		|tip On the second floor of the ship, towards the back.
	step
		click Powder Magazine##216231 |tip It's on the bottom floor of the ship, next to Fireworks and Bombs.
		Destroy the Valor's Edge ammunition |q 32128/1 |goto Krasarang Wilds 15.1,76.6
	step
		talk Blood Guard Gro'tash##67880
		turnin Another One Bites the Dust##32128 |goto Krasarang Wilds 10.1,53.9
	step
		talk Brolic##67767
		turnin All Dead, All Dead##32127 |goto Krasarang Wilds 10.3,53.1
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "cave"
		click Bounty Board##232398
		accept Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds 12.8,56.8 |or
		accept Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds 12.8,56.8 |or
	step
		talk Rivett Clutchpop##67608
		accept Storming the Beach##32221 |goto Krasarang Wilds 13.0,56.2 |or
		accept Bilgewater Infiltrators##32214 |goto Krasarang Wilds 13.0,56.2 |or
	step
		talk Duke##67562
		accept Krasarang Steampot##32199 |goto Krasarang Wilds 13.7,55.8 |or
		accept Mystery Meatloaf##32197 |goto Krasarang Wilds 13.7,55.8 |or
	step
		talk Boss-Lady Trixel##67535
		accept Work Order: Iron##32140 |goto Krasarang Wilds 13.7,55.8 |or
		accept Work Order: Fuel##32136 |goto Krasarang Wilds 13.7,55.8 |or
		accept Work Order: Lumber##32138 |goto Krasarang Wilds 13.7,55.8 |or
	stickystart "shieldwallforces"
	step
		Use the "New" and "Improved" Infared Heat Focals in your bags |use "New" and "Improved" Infared Heat Focals##92475
		kill SI:7 Saboteur##67689+
		Kill 10 SI:7 Saboteurs |q 32214/1 |goto Krasarang Wilds 9.9,60.8
		|only if haveq(32214)
	step
		kill Polluted Viseclaw##67896+, Polluted Viseclaw Scuttler##68584+
		collect 5 Polluted Viseclaw Meat##91869 |q 32199/1 |goto Krasarang Wilds 17.7,54.7
		|only if haveq(32199)
	step
		kill Mature Terrapin##67895+, Polluted Viseclaw##67896+, Polluted Viseclaw Scuttler##68584+
		collect 7 Chunk of Mystery Meat##91874 |q 32197/1 |goto Krasarang Wilds 15.9,65.1
		|only if haveq(32197)
	step
		kill Lieutenant Ethan Jacobson##68028 |q 32223/1 |goto Krasarang Wilds 19.0,71.0
		|only if haveq(32223)
	step
		kill Chief Engineer Cogwrench##68012 |q 32222/1  |goto Krasarang Wilds 21.6,51.2
		|only if haveq(32222)
	step
	label "shieldwallforces"
		kill Shieldwall Marine##67354+
		kill Dwarven Mortar Team Engineer##67545+
		kill Shieldwall Stormcaller##67425+
		Kill 10 Shieldwall Forces |q 32221/1 |goto Krasarang Wilds 18.8,68.2
		|only if haveq(32221)
	step
		talk Zino "The Shredder" Quickchop##67534
		turnin Work Order: Lumber##32138 |goto Krasarang Wilds 20.5,58.1
		accept Stacked!##32139 |goto Krasarang Wilds 20.5,58.1
		|only if haveq(32138) or completedq(32138)
	step
		talk Daxil "The Gem" Oregrind##67537
		turnin Work Order: Iron##32140 |goto Krasarang Wilds 22.6,62.3
		accept Power Metal##32141 |goto Krasarang Wilds 22.6,62.3
		|only if haveq(32140) or completedq(32140)
	step
		talk Grizzle Gearslip##67542
		turnin Work Order: Fuel##32136 |goto Krasarang Wilds 25.5,60.4
		accept Runnin' On Empty##32137 |goto Krasarang Wilds 25.5,60.4
		|only if haveq(32136) or completedq(32136)
	step
		talk Bixy Buzzsaw##67533
		accept Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
		|only if completedq(32138)
	step
		talk Bixy Buzzsaw##67553
		accept Precious Resource##32237 |goto Krasarang Wilds 25.3,60.4
		|only if completedq(32136)
	step
		talk Bixy Buzzsaw##67553
		accept Bug Off!##32236 |goto Krasarang Wilds 22.4,62.2
		|only if completedq(32140)
	step
		click Domination Point Lumber##216177 |only if haveq(32139)
		collect 9 Domination Point Lumber##216177 |q 32139/1 |goto Krasarang Wilds 20.2,60.7 |only if haveq(32139)
		Use your Universal Remote on Shieldwall Mecha-Pounders to weaken them. |use Universal Remote##91902 |only if haveq(32238)
		kill 9 Shieldwall Mecha-Pounder##68011 |q 32238/1 |only if haveq(32238)
		|only if haveq(32139) or haveq(32238)
	step
		click Fauly Valve
		Tighten 8 Faulty Valves |q 32237/1 |goto Krasarang Wilds 23.5,56.4
		|only if haveq(32237)
	step
		click "Distilled" Fuel Barrel
		collect 9 "Distilled" Fuel Barrel##91846 |q 32137/1 |goto Krasarang Wilds 26.5,63.2
		|only if haveq(32137)
	step
		Use your Hand-Dandy Bug Off Sprayer on _Agitated Shale Spiders_ to spawn Shale Shards |use Hand-Dandy Bug Off Sprayer##93026 |only if haveq(32236)
		Spray 5 Agitated Shale Spiders |q 32236/1 |goto Krasarang Wilds 19.9,62.5 |only if haveq(32236)
		kill 12 Shale Shards##68653+ |q 32236/2 |goto Krasarang Wilds 19.9,62.5 |only if haveq(32236)
		Click _Energized Iron_ deposits on the sides of the cave to spawn Energized Iron Ore Chunks. |only if haveq(32141)
		click Energized Iron Ore Chunk##216716 |only if haveq(32141)
		collect 7 Energized Iron Ore Chunk##91848 |q 32141/1 |goto Krasarang Wilds 19.9,62.5 |only if haveq(32141)
		|only if haveq(32236) or haveq(32141)
	step
		talk Bixy Buzzsaw##67533
		turnin Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
		|only if haveq(32238)
	step
		talk Zino "The Shredder" Quickchop##67534
		turnin Stacked!##32139 |goto Krasarang Wilds 20.5,58.1
		|only if haveq(32139)
	step
		talk Bixy Buzzsaw##67553
		turnin Bug Off!##32236 |goto Krasarang Wilds 22.4,62.2
		|only if haveq(32236)
	step
		talk Bixy Buzzsaw##67553
		turnin Precious Resource##32237 |goto Krasarang Wilds 25.3,60.4
		|only if haveq(32237)
	step
		talk Sezik Steampot##67536
		turnin Krasarang Steampot##32199 |goto Krasarang Wilds 26.0,58.1 |only if haveq(32199)
		turnin Mystery Meatloaf##32197 |goto Krasarang Wilds 26.0,58.1 |only if haveq(32197)
		|only if haveq(32199) or haveq(32197)
	step
		talk Boss-Lady Trixel##67535
		turnin Power Metal##32141 |goto Krasarang Wilds 13.8,55.9 |only if haveq(32141)
		turnin Runnin' On Empty##32137 |goto Krasarang Wilds 13.8,55.9 |only if haveq(32137)
		|only if haveq(32137) or haveq(32141)
	step
		talk Rivett Clutchpop##67608
		turnin Storming the Beach##32221 |goto Krasarang Wilds 13.0,56.1 |only if haveq(32221)
		turnin Bilgewater Infiltrators##32214 |goto Krasarang Wilds 13.0,56.1 |only if haveq(32214)
		|only if haveq(32214) or haveq(32221)
	step
		talk Blood Guard Gro'tash##67880
		turnin Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds 10.1,53.9 |only if haveq(32223)
		turnin Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds 10.1,53.9 |only if haveq(32222)
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "lion"
		talk Shademaster Kiryn##67628
		turnin The Time is Now!##32450 |goto Krasarang Wilds 75.9,34.4
		accept Hero Killer##32135 |goto Krasarang Wilds 75.9,34.4
		accept Worker Harassment##32132 |goto Krasarang Wilds 75.9,34.4
		accept Sentry Wards##32133 |goto Krasarang Wilds 75.9,34.4
	step
		talk Zazzix "Toasty" Sparkrocket##67402
		accept Good Luck, Have Fun##32130 |goto Krasarang Wilds 75.9,34.2 |or 2
		accept We Require More Minerals!##32131 |goto Krasarang Wilds 75.9,34.2 |or 2
		accept Hard Counter##32134 |goto Krasarang Wilds 75.9,34.2 |or 2
	step
		kill Thane Stonehearth##67636 |q 32135/1 |goto Krasarang Wilds 81.8,25.4
		|only if haveq(32135)
	step
		clicknpc Town Hall Sentry Ward Location##67744
		Place the Sentry Ward in Town Hall |q 32133/1 |goto Krasarang Wilds 86.2,25.6
		|only if haveq(32133)
	step
		clicknpc Docks Sentry Ward Location##67742
		Place the Sentry Ward on the docks |q 32133/2 |goto Krasarang Wilds 86.1,33.1
		|only if haveq(32133)
	step
		_Enter_ the Barracks |goto Krasarang Wilds 87.1,30.9 < 15
		clicknpc Barracks Sentry Ward Location##67743
		Place the Sentry Ward in the Barracks |q 32133/3 |goto Krasarang Wilds 87.7,32.7 < 15
		|only if haveq(32133)
	step
		kill Shieldwall Peasant##67423+
		Kill 30 Shieldwall Peasant |q 32132/1 |goto Krasarang Wilds 84.2,22.9
		|only if haveq(32132)
	step
		kill Shieldwall Engineer##67971
		click Animatable Stone
		collect 20 Animatable Stone##91823 |q 32131/1 |goto Krasarang Wilds 78.2,18.3
		|only if haveq(32131)
	stickystart "waxyalliance"
	step
		kill 8 Dwarven Mortar Team Engineer##67545+ |q 32134/1 |goto Krasarang Wilds 82.4,24.5
		kill 2 Dwarven Mortar Tube##67541+ |q 32134/2 |goto Krasarang Wilds 82.4,24.5
		|only if haveq(32134)
	step
	label "waxyalliance"
		kill Shieldwall Footman##67304
		collect 10 Extra-Waxy Alliance Ears##92474 |q 32130/1 |goto Krasarang Wilds 81.4,25.7
		|only if haveq(32130)
	step
		talk Zazzix "Toasty" Sparkrocket##67402
		turnin Good Luck, Have Fun##32130 |goto Krasarang Wilds 75.9,34.2
		turnin We Require More Minerals!##32131 |goto Krasarang Wilds 75.9,34.2
		turnin Hard Counter##32134 |goto Krasarang Wilds 75.9,34.2
	step
		talk Shademaster Kiryn##67628
		turnin Hero Killer##32135 |goto Krasarang Wilds 75.9,34.4
		turnin Worker Harassment##32132 |goto Krasarang Wilds 75.9,34.4
		turnin Sentry Wards##32133 |goto Krasarang Wilds 75.9,34.4
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "ogudei"
		talk Belloc Brightblade##67847
		turnin The Ruins of Ogudei##32449 |goto Krasarang Wilds 76.3,34.1
		accept Taking Advantage##32118 |goto Krasarang Wilds 76.3,34.1
	step
		Click the portal to go to the Ruins of Ogudei |goto Krasarang Wilds 76.2,34.0 |only if haveq(32118)
		talk Kaelis Sunsoar##68274
		turnin Taking Advantage##32118 |goto Krasarang Wilds/3 36.1,42.1
	step
		talk Kaelis Sunsoar##68274
		accept The Spirit Trap##32342 |goto Krasarang Wilds/3 36.1,42.1
		accept It Is A Mystery##32344 |goto Krasarang Wilds/3 36.1,42.1 |or
		accept We're Not Monsters!##32345 |goto Krasarang Wilds/3 36.1,42.1 |or
		accept Legacy of Ogudei##32120 |goto Krasarang Wilds/3 36.1,42.1
		accept Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 36.1,42.1
		accept Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 36.1,42.1
	step
		_Go up_ the path |goto Krasarang Wilds/3 78.6,44.2 < 15
		Walk around this cave and pay attention to your Anamoly Reader above your actionbars. This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get. Once you have 100%, you will automatically disperse the anamoly.
		Disperse the anamoly |q 32344/1
		|only if haveq(32344)
	step
		kill Troubled Slave Spirit##68074+
		Free 14 Troubled Slave Spirits |q 32345/1 |goto Krasarang Wilds/3 70.2,52.8
		|only if haveq(32345)
	step
		kill Spiritbound Brutalizer##68073+
		kill Spiritbound Arcanist##68070+
		collect 5 Ancient Mogu Essence##92704 |q 32120/1 |goto Krasarang Wilds/2 55.5,53.7
		|only if haveq(32120)
	step
		kill Spirit Trap##68061+
		colect 3 Spirit Trap |q 32342/1 |goto Krasarang Wilds/2 74.1,29.7
		|only if haveq(32342)
	step
		kill Gen-li Twister of Words##68169
		kill Meng-do Strength of Mountains##68170
		collect Gen-Li's Essence##92736 |q 32343/1 |goto Krasarang Wilds/2 67.8,80.3
		collect Meng-do's Essence##92735 |q 32343/1 |goto Krasarang Wilds/2 67.8,80.3
	step
		Go up the stairs here. |goto Krasarang Wilds/2 56.7,38.7 < 15
		kill Shieldwall Footman##67304+, Shieldwall Rifleman##67297+, Lion's Landing Guard Captain##68310+
		Kill 12 Lion's Landing Military |q 32348/1 |goto Krasarang Wilds/1 59.3,37.3
	step
		talk Kaelis Sunsoar##68274
		turnin The Spirit Trap##32342 |goto Krasarang Wilds/3 36.2,41.2
		turnin It Is A Mystery##32344 |goto Krasarang Wilds/3 36.2,41.2
		turnin We're Not Monsters!##32345 |goto Krasarang Wilds/3 36.2,41.2
		turnin Legacy of Ogudei##32120 |goto Krasarang Wilds/3 36.2,41.2
		turnin Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 36.2,41.2
		turnin Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 36.2,41.2
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "friendly"
		talk General Nazgrim##67939
		accept Rise Of An Empire##32256 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.4 < 15
		Tell him to take you to the Shrine of Two Moons |goto Vale of Eternal Blossoms 59.1,20.4 < 15
		talk Garrosh Hellscream##67840
		turnin Rise Of An Empire##32256 |goto Shrine of Two Moons/2 32.1,83.8
		accept Buried Secrets##32242 |goto Shrine of Two Moons/2 32.1,83.8
	step
		talk Fanlyr Silverthorn##67834
		turnin Buried Secrets##32242 |goto Vale of Eternal Blossoms 20.9,15.5
		accept Voice of the Gods##32257 |goto Vale of Eternal Blossoms 20.9,15.5
	step
		Click on the Mercurial Guardian to investigate it. |q 32257/1 |goto Vale of Eternal Blossoms 18.2,12.0
		kill Mercurial Guardian##67833
		collect Ancient Korune Tablet##92425 |q 32257/2 |goto Vale of Eternal Blossoms 18.2,12.0
	step
		talk Fanlyr Silverthorn##67834
		turnin Voice of the Gods##32257 |goto Vale of Eternal Blossoms 20.9,15.5
		|next "end"
	step
	label "friendly2"
		talk Messenger Grummle##67865
		accept Someone You Should See##32284 |goto Krasarang Wilds 10.6,53.6
	step
		talk Chen Stormstout##67866
		turnin Someone You Should See##32284 |goto Kun-Lai Summit 71.6,93.0
		accept Regeneration Takes Time##32318 |goto Kun-Lai Summit 71.6,93.0
	step
		kill Summit Sprite##68026+, Sinister Needle##68027+
		collect 10 Sturdy Needle##92499+ |q 32318/1 |goto Kun-Lai Summit 77.2,92.2
	step
		talk Chen Stormstout##67866
		turnin Regeneration Takes Time##32318 |goto Kun-Lai Summit 71.6,93.0
	step
		talk Vol'jin##68023
		accept Find Thrall!##32319 |goto Kun-Lai Summit 71.6,93.2
	step
		Use Vol'jin's Hearthstone in your bags to get to Thrall. |use Vol'jin's Hearthstone##92510 |q 32319/1
	step
		talk Thrall##68025
		turnin Find Thrall!##32319 |goto Valley of Trials 44.4,66.6
		accept The Horde Is Family##32320 |goto Valley of Trials 44.4,66.6
		Escort Thrall to the Echo Isles |q 32320/1
	step
		talk Thrall##68025
		turnin The Horde Is Family##32320 |goto Echo Isles 38.4,46.6
		accept De-Subjugation##32372 |goto Echo Isles 38.4,46.6
	stickystart "korkronover"
	step
		kill Gul'tar the Subjugator##68048 |q 32372/3 |goto Echo Isles 61.6,65.8
		|tip He's elite, but easy to kill. You will get help from other NPCs during the battle.
	step
	label "korkronover"
		kill 10 Kor'kron Overseer##68041 |q 32372/1 |goto Echo Isles 54.4,54.6
		kill 5 Kor'kron Subjugator##68044 |q 32372/2 |goto Echo Isles 54.4,54.6
	step
		talk Thrall##68025
		turnin De-Subjugation##32372 |goto Echo Isles 58.5,62.1
		|next "end"
	step
	label "honored"
		talk General Nazgrim##67939
		accept To Mogujia##32190 |goto Krasarang Wilds 10.4,53.7
	step
		talk Lor'themar Theron##67581
		turnin To Mogujia##32190 |goto Kun-Lai Summit 57.0,79.0
		accept Bloodlines##32192 |goto Kun-Lai Summit 57.0,79.0
	step
		talk Fanlyr Silverthorn##67603
		accept Ancient Guardians##32191 |goto Kun-Lai Summit 57.0,78.6
		accept The Korune##32244 |goto Kun-Lai Summit 57.0,78.6
	stickystart "koruneguardian"
	step
		kill Korune Spellweaver##67752
		collect Korune Codex##92072 |q 32244/1 |goto Kun-Lai Summit 58.2,71.0
	step
	label "koruneguardian"
		kill Korune Warden##67587+
		Free 6 Blood Elves |q 32192/1 |goto 58.6,74.4
		kill 5 Korune Guardian##67574+ |q 32191/1 |goto 58.6,74.4
	step
		talk Lor'themar Theron##67581
		turnin Bloodlines##32192 |goto Kun-Lai Summit 57.0,79.0
	step
		talk Fanlyr Silverthorn##67603
		turnin Ancient Guardians##32191 |goto Kun-Lai Summit 57.0,78.6
		turnin The Korune##32244 |goto Kun-Lai Summit 57.0,78.6
		|next "end"
	step
	label "honored2"
		talk General Nazgrim##67939
		accept To the Valley!##32376 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Valley of Emperors |goto Kun-Lai Summit 53.8,49.0 < 15
	step
		talk Lor'themar Theron##68370
		turnin To the Valley!##32376 |goto Kun-Lai Summit 53.8,49.2
		accept Legacy of the Korune##32379 |goto Kun-Lai Summit 53.8,49.2
		accept Clearing a Path##32378 |goto Kun-Lai Summit 53.8,49.2
	stickystart "sealedartifact"
	step
		click Legacy of the Korune
		collect Legacy of the Korune##92802 |q 32379/2 |goto Kun-Lai Summit 56.9,47.8
	step
	label "sealedartifact"
		kill Korune Sha-weaver##68410+, Korune Mutilator##68401+ |q 32378/1
		collect Korune Orders##92801 |q 32379/1 |goto Kun-Lai Summit 57.3,48.0
		collect Sealed Korune Artifact##92803 |q 32379/3 |goto Kun-Lai Summit 57.3,48.0
	step
		talk Lor'themar Theron##68370
		turnin Clearing a Path##32378 |goto Kun-Lai Summit 53.8,49.2
		turnin Legacy of the Korune##32379 |goto Kun-Lai Summit 53.8,49.2
		accept Trapping the Leader##32384 |goto Kun-Lai Summit 53.8,49.2
	step
		Enter the tomb here |goto Kun-Lai Summit 55.9,46.2 < 15
		kill Shan Kien##68378+
		Weaken Shan Kien |q 32384/1 |goto Kun-Lai Summit 56.7,44.2
	step
		talk Lor'themar Theron##68370
		turnin Trapping the Leader##32384 |goto Kun-Lai Summit 53.8,49.2
		|next "end"
	step
	label "honored3"
		talk General Nazgrim##67939
		accept Echoes of Thunder##32351 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Shrine of Seven Stars |goto Vale of Eternal Blossoms/0 59.1,20.3 < 15
		|tip This is an error by Blizzard. Eventually they will fix it and it will say the Shrine of Two Moons, so don't worry about going into enemy territory.
		talk Baine Bloodhoof##68287
		turnin Echoes of Thunder##32351 |goto Shrine of Two Moons/2 68.0,44.6
		accept A Gathering Storm##32352 |goto Shrine of Two Moons/2 68.0,44.6
	step
		clicknpc Sha-Touched Grunt##68284+
		Fight the Grunts until they surrender.
		Save 6 Sha-Touched Grunts |q 32352/1 |goto Shrine of Two Moons/1 48.9,41.3
	step
		talk Garrosh Hellscream##67840
		turnin A Gathering Storm##32352 |goto Shrine of Two Moons/2 66.0,46.3
		|next "end"
	step
	label "revered"
		talk General Nazgrim##67939
		accept Get My Results!##32329 |goto Krasarang Wilds 10.4,53.8
	step
		talk Lor'themar Theron##16802
		turnin Get My Results!##32329 |goto Silvermoon City 54.0,20.4
		accept What's in the Box?##32330 |goto Silvermoon City 54.0,20.4
	step
		clicknpc Arcanis Mechanica##68430 |q 32330/1 |goto Silvermoon City 86.4,31.8
	step
		talk Archmage Aethas Sunreaver##68086 |q 32330/2 |goto Silvermoon City 92.0,37.4
		talk Grand Magister Rommath##68085 |q 32330/1 |goto Silvermoon City 92.0,37.4
	step
		Click the big glowing box in front of you
		kill Concentrated Sha##68259 |q 32330/4
	step
		talk Lor'themar Theron##68084
		turnin What's in the Box?##32330 |goto Silvermoon City 91.3,37.5
		|next "end"
	step
	label "revered2"
		talk General Nazgrim##67939
		accept The Kun-Lai Expedition##32363 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Gossh'ar Advance |goto Kun-Lai Summit 60.6,55.0 < 15
		talk Baine Bloodhoof##68287
		turnin The Kun-Lai Expedition##32363 |goto Kun-Lai Summit 60.4,55.2
		accept Ties with the Past##32448 |goto Kun-Lai Summit 60.4,55.2
	step
		Enter the cave here |goto Kun-Lai Summit 63.2,41.8 < 15
		kill Varatus the Conqueror##68907
		collect Spirit Essence of Varatus##93212 |q 32448/1 |goto Kun-Lai Summit 63.8,45.2
	step
		talk Baine Bloodhoof##68287
		turnin Ties with the Past##32448 |goto Kun-Lai Summit 60.4,55.2
		accept Memory Wine##32368 |goto Kun-Lai Summit 60.4,55.2
	step
		Drink the Memory Wine in your bags |use Memory Wine##92756 |q 32368/1
		Witness Shan Kien's Past |q 32368/2
	step
		talk Baine Bloodhoof##68287
		turnin Memory Wine##32368 |goto Kun-Lai Summit 60.4,55.2
		|next "end"
	step
	label "revered3"
		talk General Nazgrim##67939
		accept The Ruins of Korune##32391 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Ruins of Korune |goto Kun-Lai Summit 32.9,25.9 < 15
		talk Ishi##68337
		turnin The Ruins of Korune##32391 |goto Kun-Lai Summit 32.8,26.2
		accept The Divine Bell##32392 |goto Kun-Lai Summit 32.8,26.2
	step
		_Enter_ the cave here |goto Kun-Lai Summit 33.1,26.7 < 15
		When you get to this area, make sure to step on the light blue/grey tiles to avoid death. |goto Kun-Lai Summit/20 53.9,30.4 < 15
		Go down the stairs here |goto Kun-Lai Summit/20 28.9,79.8 < 15
		kill Sarannha Skyglaive##68472 |q 32392/1 |goto Kun-Lai Summit/21 59.9,25.7
		|tip She patrols all around this area. Some searching may be required.
	step
		talk Ishi##68337
		turnin The Divine Bell##32392 |goto Kun-Lai Summit/21 61.0,24.9
		|next "end"
	step
	label "revered4"
		talk General Nazgrim##67939
		accept Insertion##32326 |goto Krasarang Wilds 10.4,53.8
	step
		talk Fanlyr Silverthorn##68077
		turnin Insertion##32326 |goto Teldrassil 40.0,50.4
		accept The Darnassus Mission##32327 |goto Teldrassil 40.0,50.4
	step
		You will get a stealth buff. This mission does not put you in a seperate phase from any other NPCs or players in this zone, so be careful!
		_Enter_ the Cenarion Enclave here |goto Darnassus 38.4,33.3 < 15
		click Divine Bell##216678
		Locate the Devine Bell |q 32327/2 |goto Darnassus 40.0,39.6
		|tip You will be teleported back to Fanlyr once you tag the bell
	step
		talk Fanlyr Silverthorn##68077
		turnin The Darnassus Mission##32327 |goto Teldrassil 40.0,50.4
		accept Victorious Return##32328 |goto Teldrassil 40.0,50.4
	step
		Go to the portal at Domination Point |goto Teldrassil 40.0,50.4 < 15
		click Portal to Domination Point |goto Krasarang Wilds 10.4,53.8 < 15
		talk General Nazgrim##67939
		turnin Victorious Return##32328 |goto Krasarang Wilds 10.4,53.8
		|next "end"
	step
	label "revered5"
		talk General Nazgrim##67939
		accept The Situation in Dalaran##32402 |goto Krasarang Wilds 10.4,53.8
	step
		talk Kromthar##67785
		Tell her you need to get to Dalaran |goto 924/2 |goto Krasarang Wilds/0 9.7,52.5
	step
		talk Grand Magister Rommath##68586
		turnin The Situation in Dalaran##32402 |goto 924/2 31.6,51.3
		accept It Starts in the Sewers##32403 |goto 924/2 31.6,51.3
	step
		talk Sunreaver Citizen##68695
		Tell them it is not safe here!
		Evacuate 9 Sunreaver Citizens |q 32403/1 |goto 924/2 45.3,56.9
	step
		talk Grand Magister Rommath##68586
		turnin It Starts in the Sewers##32403 |goto 924/2 45.4,53.7
		accept Violence in the Arena##32404 |goto 924/2 45.4,53.7
	step
		kill 6 Silver Covenant Enforcer##68042+ |q 32404/1 |goto 924/2 47.2,43.4
		kill 4 Silver Covenant Spellbow##68043+ |q 32404/2 |goto 924/2 47.2,43.4
	step
		talk Grand Magister Rommath##68586
		turnin Violence in the Arena##32404 |goto 924/2 54.3,28.2
		accept Hand of the Silver Covenant##32405 |goto 924/2 54.3,28.2
	step
		kill Sorin Magehand##32405 |q 32405/1 |goto 924/2 61.4,14.0
	step
		talk Grand Magister Rommath##68586
		turnin Hand of the Silver Covenant##32405 |goto 924/2 64.0,48.0
		accept A Tactical Assault##32406 |goto 924/2 64.0,48.0
	step
		Follow Grand Magister Rommath to the center of Dalaran |goto 924/1 50.4,48.4
		You will be teleported to the Violet Hold and must fight your way back to him.
		talk Grand Magister Rommath##68586
		turnin A Tactical Assault##32406
		accept The Silver Covenant's Stronghold##32408
		accept The Kirin Tor's True Colors##32409
		accept Krasus' Landing##32410
	step
		kill Arcanist Rathaella##68049 |q 32408/1 |goto 924/1 37.2,62.0
	step
		kill Lieutenant Corwin##68047 |q 32409/1 |goto 924/1 47.4,22.2
		kill Stormwind Footman##68707+, Stormwind Cleric##68708+ |q 32409/2 |goto 924/1 47.4,22.2
	step
		clicknpc Sunreaver Dragonhawk##68728
		Free *6* Sunreaver Dragonhawks |q 32410/1 |goto 924/1 71.0,44.8
	step
		talk Grand Magister Rommath##68586
		turnin The Silver Covenant's Stronghold##32408 |goto 924/1 50.4,48.4
		turnin The Kirin Tor's True Colors##32409 |goto 924/1 50.4,48.4
		turnin Krasus' Landing##32410 |goto 924/1 50.4,48.4
		accept The Remaining Sunreavers##32411 |goto 924/1 50.4,48.4
	step
		Use your Tear of the Sin'dorei on Magister Surdiel |use Tear of the Sin'dorei##93124
		Rescue Magister Surdiel |q 32411/4 |goto 924/1 58.6,27.2
	step
		Use your Tear of the Sin'dorei on High Arcanist Savor |use Tear of the Sin'dorei##93124
		Rescue High Arcanist Savor |q 32411/2 |goto 924/1 60.0,15.4
	step
		Use your Tear of the Sin'dorei on Magistrix Vesara |use Tear of the Sin'dorei##93124
		Rescue Magistrix Vesara |q 32411/5 |goto 924/1 65.2,23.6
	step
		Use your Tear of the Sin'dorei on Uda the Beast |use Tear of the Sin'dorei##93124
		Rescue Uda the Beast |q 32411/1 |goto 924/1 69.8,33.6
	step
		Use your Tear of the Sin'dorei on Magister Hathorel |use Tear of the Sin'dorei##93124
		Rescue Magister Hathorel |q 32411/3 |goto 924/1 67.2,35.6
	step
		talk Grand Magister Rommath##68586
		turnin The Remaining Sunreavers##32411 |goto 924/1 50.4,48.4
		accept One Last Grasp##32412 |goto 924/1 50.4,48.4
	step
		kill Mage-Commander Zuros##68632 |q 32412/1 |goto 924/1 30.0,48.4
	step
		Click the portal to go into the sewers. |goto 30.0,48.4 < 15
		Jump out of the sewers here.
		|tip Don't worry, a Dragonhawk will catch you before you die.
		Escape from Dalaran |q 32412/2 |goto 924/2 9.8,87.6
	step
		talk Lor'themar Theron##16802
		turnin One Last Grasp##32412 |goto Silvermoon City 71.2,41.6
	step
		talk General Nazgrim##67939
		accept The Bell Speaks##32398 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds/0 9.9,52.5 < 15
		Tell him to take you to Emperor's Reach
		talk Malkorok##67844
		turnin The Bell Speaks##32398 |goto Kun-Lai Summit 55.8,34.0
		accept Breath of Darkest Shadow##32399 |goto Kun-Lai Summit 55.8,34.0
	step

		kill Kor'kron Juggernaut##68840
		Clear the area of all Juggernauts |goto Kun-Lai Summit 56.0,32.1 < 15
		kill Ishi##68225 |q 32399/1 |goto Kun-Lai Summit 55.8,32.0
		kill Anduin Wrynn##68224 |q 32399/2 |goto Kun-Lai Summit 55.8,32.0
	step
		talk Garrosh Hellscream##68223
		turnin Breath of Darkest Shadow##32399 |goto Kun-Lai Summit 55.8,32.0
		|next "end"
	step
	label "end"
		talk Tuskripper Grukna##69060 |goto Krasarang Wilds 10.8,53.4
		buy 1 Grand Commendation of Dominance Offensive##93232 |n
		Use the Commendation of Dominance Offensive you just purchased. |complete ZGV:GetReputation("Dominance Offensive").hasBonus |use Grand Commendation of Dominance Offensive##93232
		|only if rep("Dominance Offensive")>=Revered
	step
		This is the end of this guide.
		Click here to return to the beginning of the dailies |confirm |next "dailies"
	step
	label "exalted"
		Congratulations, you are now Exalted with the Dominance Offensive!
]])

ZygorGuidesViewer:RegisterInclude("Sturdy_Traps",[[
	startlevel 90
	step
		This guide will take you through the bonus quests for the Dominance Offensive.
		These quests do not offer any reputation, but they do offer Valor Points and the Lesser Charms of Good Fortune.
		|confirm
	step
	label "route"
		Routing to proper section |next "tokens" |only if itemcount(91838)<30
		Routing to proper section |next "menu" |only if itemcount(91838)>=30
	step
	label "tokens"
		kill Shieldwall Marine##+, Shieldwall Stormcaller##+
		collect 30 Lion's Landing Commission##91838 |goto Krasarang Wilds 9.9,64.2
	step
	label "menu"
		Click here to go purchase and accept the Sturdy Tiger Trap questline |confirm |next "tiger"
		Click here to go purchase and accept the Sturdy Crane Snare questline |confirm |next "crane"
		Click here to go purchase and accept the Sturdy Crab Crate questline |confirm |next "crab"
	step
	label "tiger"
		talk Ongrom Black Tooth##67751
		buy 1 Sturdy Tiger Trap##91855 |goto Krasarang Wilds 10.7,53.6
	step
		Click the _Sturdy Tiger Trap_ in your bags. |use Sturdy Tiger Trap##91855
		accept Beastmaster's Hunt: The Tiger##32162
	step
		kill Wasteland Yak##66549+, Wasteland Calf##66595
		collect 25 Unbruised Yak Haunch##91816 |q 32162/1 |goto Dread Wastes 51.6,67.4
	step
		click Mount of Dirt##
		turnin Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds 13.9,41.4
	step
		clicknpc Krasari Elder##67556
		accept Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds 13.8,41.2
	step
		talk Jorn Skyseer##67447
		turnin Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds 12.6,62.7
		|next "group"
	step
	label "crab"
		talk Ongrom Black Tooth##67751
		buy 1 Sturdy Crab Crate##91822 |goto Krasarang Wilds 10.7,53.6
	step
		Click the _Sturdy Crab Crate_ in your bags |use Sturdy Crab Crate##91822
		accept Beastmaster's Hunt: The Crab##32163
	step
		kill Unga Villager##60358+
		collect 30 Funky Rotten Fish##91817 |q 32163/1 |goto Krasarang Wilds 45.2,91.6
	step
		click Mount of Dirt##
		turnin Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds 56.3,42.1
	step
		click Captured Colossal Viseclaw
		accept Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds 56.4,42.1
	step
		talk Jorn Skyseer##67447
		turnin Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds 12.6,62.7
		|next "group"
	step
	label "crane"
		talk Ongrom Black Tooth##67751
		buy 1 Sturdy Crane Snare##91819 |goto Krasarang Wilds 10.7,53.6
	step
		Click the _Sturdy Crane Snare_ in your bags |use Sturdy Crane Snare##91819
		accept Beastmaster's Hunt: The Crane##32161
	step
		kill Child of Chi-Ji##60616+
		collect 5 Pristine Golden Crownfeather##91814 |q 32161/1 |goto Krasarang Wilds/0 34.5,71.2
	step
		kill Great Crane##59763+
		collect Pristine Jet Crownfeather##91815 |q 32161/2 |goto Krasarang Wilds/0 73.2,44.6
	step
		click Mount of Dirt##
		turnin Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds 56.3,42.1
	step
		clicknpc Ancient Bloodcrown Crane##67503
		accept Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds 56.4,42.1
	step
		talk Jorn Skyseer##67447
		turnin Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds 12.6,62.7
		|next "group"
	step
	label "group"
		talk Jorn Skyseer##67447 |goto Krasarang Wilds 12.6,62.7
		The dailies you have completed will determine which enemies are available to you to fight
		Click here to fight the _Ancient Bloodcrown Crane_ |confirm |next "bc"
		Click here to fight the _Krasari Elder_ |confirm |next "ke"
		Click here to fight the _Colossal Viseclaw_ |confirm |next "cv"
	step
	label "bc"
		Tell him you would like to fight the Bloodcrown Crane
		During the fight, pay attention to the songs that it uses
		Some can be interrupted while others simply need to be avoided
		kill Ancient Bloodcrown Crane##67555
		accept Ancient's Fall##32167
	step
		talk Jorn Skyseer##67447
		turnin Ancient's Fall##32167 |goto Krasarang Wilds 12.6,62.7
		|next "end"
	step
	label "ke"
		Tell him you would like to fight the Krasari Elder
		During the fight, you will want to stay close to it at _ALL TIMES_
		It will occassionally vanish, if you have a hunter simply put a flare out
		kill Krasari Elder##67556
		accept End of an Elder##32168
	step
		talk Jorn Skyseer##67447
		turnin End of an Elder##32168 |goto Krasarang Wilds 12.6,62.7
		|next "end"
	step
	label "cv"
		Tell him you would like to fight the Colossal Viseclaw
		During the fight, you will want to kite him around
		He will have a damage reduction buff that decreases while he moves
		If it reaches _0_, the buff will reset
		kill Colossal Viseclaw##67508
		accept A Colossal Victory##32169
	step
		talk Jorn Skyseer##67447
		turnin A Colossal Victory##32169 |goto Krasarang Wilds 12.6,62.7
		|next "end"
	step
	label "end"
		You have reached the end of the guide
		Click here to go back to the beginning of the Traps guide |next "route"
]])

---------------------
----- Firelands -----
---------------------

ZygorGuidesViewer:RegisterInclude("H_Firelands_PreQuests",[[
	step
		Click the Warchief's Command Board
		|tip It looks like a wooden wall with a bunch of paper notes on it.
		accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar 49.7,76.5
		You will automatically accept a quest by entering Orgrimmar
		accept A Personal Summons##28790 |goto Orgrimmar 49.7,76.5
	step
		talk Farseer Krogar##45244
		turnin A Personal Summons##28790 |goto 50.5,38.4
		accept The Eye of the Storm##28805 |goto 50.5,38.4
	step
		Click the Waters of Farseeing
		|tip It looks like a small bowl with spinning bright blue water in it.
		Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
	step
		talk Farseer Krogar##45244
		turnin The Eye of the Storm##28805 |goto 50.5,38.4
	step
		talk Cenarion Emissary Blackhoof##15188
		Ask him to please send you to Moonglade |goto 50.5,38.4 < 5
		You will teleport to Moonglade |goto Moonglade 45.1,43.1 < 5
		talk Emissary Windsong##39865
		turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade 45.5,44.9
		accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
	step
		talk Sebelia##40843
		home Nordrassil |goto Mount Hyjal 63.1,24.1
	step
		talk Ysera##40928
		turnin As Hyjal Burns##25316 |goto 62.0,24.9
		accept Protect the World Tree##25317 |goto 62.0,24.9
	step
		talk Anren Shadowseeker##39925
		accept The Earth Rises##25460 |goto 64.0,22.6
	step
		talk Tholo Whitehoof##40278
		accept Inciting the Elements##25370 |goto 64.0,22.5
	step
		kill 8 Scalding Rock Elemental |q 25460/1 |goto 65.8,20.8
		Click Juniper Berries
		|tip They look like small green bushes with small red berries on them, at the base of trees around this area.
		collect 4 Juniper Berries##53009 |n
		Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
		|tip They look like small blue flying dragons around this area.
		Follow the Faerie Dragons to find Twilight Inciters
		kill 4 Twilight Inciter |q 25370/1 |goto 65.8,20.8
	step
		talk Tholo Whitehoof##40278
		turnin Inciting the Elements##25370 |goto 64.0,22.5
		accept Flames from Above##25574 |goto 64.0,22.5
	step
		talk Anren Shadowseeker##39925
		turnin The Earth Rises##25460 |goto 64.0,22.6
	step
		Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
		Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
	step
		talk Tholo Whitehoof##40278
		turnin Flames from Above##25574 |goto 64.0,22.5
	step
		talk Malfurion Stormrage##15362
		turnin Protect the World Tree##25317 |goto 47.7,35.5
		accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept The Flameseer's Staff##25472 |goto 47.7,35.5
	step
		kill 4 Twilight Flamecaller |q 25319/1 |goto 47.8,29.4
		kill 10 Twilight Vanquisher |q 25319/2 |goto 47.8,29.4
		Click Charred Stagg Fragments
		|tip They look like small white pieces on the ground around this area.
		collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.8,29.4
	step
		talk Malfurion Stormrage##15362
		turnin War on the Twilight's Hammer##25319
		turnin The Flameseer's Staff##25472
		accept Flamebreaker##25323 |goto 47.7,35.5
	step
		Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
		kill 30 Unbound Flame Spirit |q 25323/1 |goto 44.7,33.2
		You can find more Blazebound Revenants at the following location |goto 48.5,29.2
	step
		talk Malfurion Stormrage##15362
		turnin Flamebreaker##25323 |goto 47.7,35.5
		accept The Return of Baron Geddon##25464 |goto 47.7,35.5
	step
		Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
		|tip He's a big fire elemental standing in the middle of this crater.
		Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!" |goto 44.1,27.0
	step
		talk Malfurion Stormrage##15362
		turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept Emerald Allies##25430 |goto 47.7,35.5
	step
		talk Alysra##38917
		turnin Emerald Allies##25430 |goto 48.4,19.0
		accept The Captured Scout##25320 |goto 48.4,19.0
	step
		talk Scout Larandia##40096
		turnin The Captured Scout##25320 |goto 44.5,18.9
		accept Twilight Captivity##25321 |goto 44.5,18.9
	step
		kill Twilight Overseer##40123
		collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.4,20.7
	step
		talk Scout Larandia##40096
		turnin Twilight Captivity##25321 |goto 44.5,18.9
		accept Return to Alysra##25424 |goto 44.5,18.9
	step
		talk Alysra##38917
		turnin Return to Alysra##25424 |goto 48.4,19.0
		accept A Prisoner of Interest##25324 |goto 48.4,19.0
	step
		_Enter_ the cave |goto 52.6,17.3 < 5
		Follow the path in the cave
		talk Captain Saynna Stormrunner##40139
		turnin A Prisoner of Interest##25324 |goto 56.8,18.8
		accept Through the Dream##25325 |goto 56.8,18.8
	step
		Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.6,17.3
	step
		talk Alysra##40178
		turnin Through the Dream##25325 |goto 52.2,17.4
		accept Return to Nordrassil##25578 |goto 52.2,17.4
	step
		talk Ysera##40928
		turnin Return to Nordrassil##25578 |goto 62.0,24.9
		accept The Return of the Ancients##25584 |goto 62.0,24.9
	step
		talk Oomla Whitehorn##39429
		turnin The Return of the Ancients##25584 |goto 35.7,19.4
		accept Harrying the Hunters##25255 |goto 35.7,19.4
	step
		talk Jadi Falaryn##39427
		accept End of the Supply Line##25233 |goto 35.8,19.7
		accept In the Rear With the Gear##25234 |goto 35.8,19.7
	step
		kill 6 Twilight Hunter |q 25255/1 |goto 34.6,24.5
		kill 4 Twilight Proveditor |q 25233/1 |goto 34.6,24.5
		|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
		Click Twilight Supplies
		|tip The Twilight Slaves are carrying them. You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
		collect 36 Twilight Supplies##52568 |q 25234/1 |goto 34.6,24.5
	step
		talk Jadi Falaryn##39427
		turnin End of the Supply Line##25233 |goto 35.8,19.7
		turnin In the Rear With the Gear##25234 |goto 35.8,19.7
	step
		talk Oomla Whitehorn##39429
		turnin Harrying the Hunters##25255 |goto 35.7,19.4
		accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
	step
		talk Takrik Ragehowl##39432
		turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
		accept Howling Mad##25270 |goto 30.1,31.7
	step
		kill Lycanthoth Vandal##39445+
		collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
	step
		talk Takrik Ragehowl##39432
		turnin Howling Mad##25270 |goto 30.1,31.7
		accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
	step
		Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
		|tip Inside the cave.
		kill Lycanthoth |q 25272/1 |goto 32.4,37.3
	step
		talk Spirit of Lo'Gosh##39622
		turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
	step
		talk Spirit of Lo'Gosh##39622
		accept The Shrine Reclaimed##25279 |goto 29.6,29.3
	step
		talk Takrik Ragehowl##39432
		turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
		accept Cleaning House##25277 |goto 28.4,29.9
	step
		talk Royce Duskwhisper##39435
		accept The Eye of Twilight##25300 |goto 28.3,30.0
	step
		talk Rio Duran##39434
		accept From the Mouth of Madness##25297 |goto 28.2,29.9
	step
		Click a Bitterblossom
		|tip They look like purple flowers around this small island.
		collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.1
	step
		Click a Stonebloom
		|tip They look like piles of brown-ish bags on the ground around this area.
		collect Stonebloom##52726 |q 25297/1 |goto 26.5,35.0
	step
		Click the Eye of Twilight
		|tip It looks like a glowing purple ball in a metal rod with a hook on it.
		turnin The Eye of Twilight##25300 |goto 27.2,35.2
		accept Mastering Puppets##25301 |goto 27.2,35.2
	step
		Click a Darkflame Ember
		|tip They are purple glowing coals sitting in a brazier.
		collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
	step
		Click the Twilight Cauldron
		|tip It's a metal pot with blue smoke coming out of it.
		turnin From the Mouth of Madness##25297 |goto 28.4,36.5
		accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
	step
		_Enter_ the cave |goto 26.9,36.3 < 5
		talk Kristoff Manheim##39797
		accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
		|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
	step
		Click Gar'gol's Personal Treasure Chest
		|tip It's a small metal chest sitting on a small stone mound.
		collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
	step
		Click The Twilight Apocrypha
		|tip It's an open book layin on a wooden crate at the very back of the cave.
		turnin Mastering Puppets##25301 |goto 25.8,41.6
		accept Elementary!##25303 |goto 25.8,41.6
	stickystart "hovelbrute"
	step
		Click the Crucible of Fire
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
	step
		Click the Crucible of Earth
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7
	step
		Click the Crucible of Air
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
	step
		Click the Crucible of Water
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
	step
		Click The Twilight Apocrypha
		|tip It's an open book layin on a wooden crate at the very back of the cave.
		turnin Elementary!##25303 |goto 25.8,41.6
		accept Return to Duskwhisper##25312 |goto 25.8,41.6
	step
	label "hovelbrute"
		kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
		Slay 8 Minions of Gar'gol |q 25277/1
		talk Twilight Servitor##39644 |goto 26.7,39.2
		Administor the drought
		Free 8 Twilight Servitors |q 25298/1
	step
		talk Kristoff Manheim##39797
		turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
		accept Get Me Outta Here!##25332 |goto 27.2,40.8
	step
		Leave the cave |goto 27.1,36.0 < 10
		Escort Kristoff Out |q 25332/1
	step
		talk Royce Duskwhisper##39435
		turnin Return to Duskwhisper##25312 |goto 28.6,30.2
		turnin Get Me Outta Here!##25332 |goto 28.6,30.2
	step
		talk Takrik Ragehowl##39432
		turnin Cleaning House##25277 |goto 28.4,29.9
		accept Sweeping the Shelf##25354 |goto 28.4,29.9
		accept Lightning in a Bottle##25355 |goto 28.4,29.9
	step
		talk Rio Duran##39434
		turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
	step
		kill 8 Twilight Stormcaller |q 25354/1 |goto 29.1,40.7
		kill 5 Howling Riftdweller |q 25354/2 |goto 29.1,40.7
		Click a Lightning Channel
		|tip They look like rods standing upright around this area, with lamps at the top of them.
		collect Charged Condenser Jar##52834 |q 25355/1 |goto 29.1,40.7
	step
		Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
		talk Spirit of Lo'Gosh##39622
		turnin Lightning in a Bottle##25355
		accept Into the Maw!##25617
	step
		_Go inside_ the portal |goto 25.8,41.5 < 5
		talk Jordan Olafson##40834
		turnin Into the Maw!##25617 |goto 26.3,41.9
		accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
		accept Crushing the Cores##25577 |goto 26.3,41.9
	step
		talk Yargra Blackscar##40837
		accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
	step
		kill 12 Dark Iron Laborer |q 25576/1 |goto 29.6,41.8
		kill Searing Guardian##40841+
		collect 8 Smoldering Core##55123 |n
		Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
		|tip They are small anvils sitting on the ground around this area.
		Destroy 8 Smoldering Cores |q 25577/1 |goto 29.6,41.8
		Click Twilight Arms Crates
		|tip They look like wooden boxes sitting on the ground around this area.
		Destroy 10 Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
	step
		talk Yargra Blackscar##40837
		turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
	step
		talk Jordan Olafson##40834
		turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
		turnin Crushing the Cores##25577 |goto 26.3,41.9
		accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
	step
		kill Cindermaul |q 25599/1 |goto 30.7,41.7
		Click the Battered Stone Chest
		|tip It spawns after you kill Cindermaul.
		collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
	step
		talk Jordan Olafson##40834
		turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
		accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
	step
		Click the Portal Runes
		|tip They are brown metal plates on the ground on this small circular island in the lava.
		Lure Forgemaster Pyrendius onto the activated Portal Runes
		|tip This will weaken him and allow you to kill him.
		kill Forgemaster Pyrendius |q 25600/1 |goto 31.9,46.3
	step
		talk Jordan Olafson##40834
		turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
		accept Return from the Firelands##25612 |goto 26.3,41.9
	step
		_Go inside_ the blue portal |goto 26.3,40.9 < 5
		talk Takrik Ragehowl##39432
		turnin Sweeping the Shelf##25354 |goto 28.4,29.9
		turnin Return from the Firelands##25612 |goto 28.4,29.9
	step
		talk Vision of Ysera##46987
		accept Aviana's Legacy##27874 |goto 27.0,62.7
	step
		talk Rio Duran##39434
		accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
	step
		talk Laina Nightsky##39927
		turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
		accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
		accept Disrupting the Rituals##25382 |goto 19.0,40.9
	step
		talk Mylune##39930
		accept Save the Wee Animals##25385 |goto 19.2,37.9
	step
		talk Matoclaw##39928
		accept If You're Not Against Us...##25404 |goto 19.0,37.0
	step
		talk Tyrus Blackhorn##39933
		Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
		Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
	step
		talk Tyrus Blackhorn##39933
		turnin If You're Not Against Us...##25404 |goto 22.3,44.9
		accept Seeds of Their Demise##25408 |goto 22.3,44.9
	step
		kill Wailing Weed##40066+
		collect 8 Bileberry##53102 |q 25408/1 |goto 21.1,42.6
	step
		talk Tyrus Blackhorn##39933
		turnin Seeds of Their Demise##25408 |goto 22.3,44.9
		accept A New Master##25411 |goto 22.3,44.9
	step
		kill Twilight Inferno Lord##39974
		Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
		Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
	step
		Next to you:
		talk Subjugated Inferno Lord##40093
		turnin A New Master##25411
		accept The Name Never Spoken##25412
	stickystart "frightanimal"
	step
		Click the Southern Firestone
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
	step
		Click the Central Firestone
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Central Firestone |q 25412/2 |goto 11.7,41.5
	step
		Click the Northern Firestone
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
	step
	label "frightanimal"
		kill 10 Raging Firestorm |q 25381/1
		kill 6 Twilight Inferno Lord |q 25382/1
		Click Panicked Bunnies and Terrified Squirrels
		|tip They are small and run around this area.
		collect 10 Frightened Animal##53060 |q 25385/1 |goto 11.3,38.2
	step
		talk Laina Nightsky##39927
		turnin Fighting Fire With ... Anything##25381
		turnin Disrupting the Rituals##25382 |goto 19.0,40.9
	step
		talk Mylune##39930
		turnin Save the Wee Animals##25385
		accept Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin The Name Never Spoken##25412
		accept Black Heart of Flame##25428 |goto 22.3,44.9
	stickystart "frightanimal"
	step
		Use your Charred Branch while in the burning forest area |use Charred Branch##53464
		kill Thol'embaar##40107
		collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 14.6,42.2
	step
	label "injuredfawn"
		Click 3 Injured Fawns
		|tip They look like tiny deer laying on the ground around this area.
		Lead the Injured Fawns back to Mylune at [19.2,37.9]
		Escort 3 Injured Fawns Home |q 25392/1 |goto 12.5,44.6
	step
		talk Mylune##39930
		turnin Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin Black Heart of Flame##25428
		accept Good News... and Bad News##29066 |goto 22.3,44.9
	step
		talk Laina Nightsky##39927
		accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
	step
		talk Matoclaw##39928
		turnin Good News... and Bad News##29066 |goto 19.0,37.0
	step
		talk Keeper Taldros##39932
		turnin Last Stand at Whistling Grove##25940
		accept The Bears Up There##25462 |goto 13.7,32.8
	step
		Click the Climbing Tree
		|tip They look like small ladders leaning aginst the trees around this area.
		Click Hyjal Bear Cubs in the tree
		Use your Climb Up ability to climb to the top of the tree
		Use your Chuck-a-bear ability to throw the cubs down
		|tip Aim the yellow spot at the bearskin trampoline on the ground.
		Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
	step
		talk Keeper Taldros##39932
		turnin The Bears Up There##25462
		accept Smashing Through Ashes##25490 |goto 13.7,32.8
	step
		kill 8 Charbringer |q 25490/1 |goto 16.4,51.8
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Smashing Through Ashes##25490
		accept Durable Seeds##25491
		accept Fresh Bait##25493 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		accept Firebreak##25492 |goto 27.1,63.0
	step
		kill 10 Lava Surger |q 25492/1
		kill Core Hound##46910+
		collect 4 Core Hound Entrails##54609 |q 25493/1
		Click Scorched Soil
		|tip They look like piles of dirt around this area.
		collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 34.0,53.2
	step
		talk Thisalee Crow##41006
		accept The Wormwing Problem##25655
		accept Scrambling for Eggs##25656 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin Aviana's Legacy##27874
		accept An Offering for Aviana##25663 |goto 44.4,46.2
	step
		Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
		Offer the Nectar |q 25663/1
		talk Mysterious Winged Spirit##41068
		turnin An Offering for Aviana##25663
		accept A Plea From Beyond##25665 |goto 40.4,44.3
	step
		kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
		Slay 10 Wormwing Harpies |q 25655/1
		Click Stolen Hyjal Eggs
		|tip They look like big white eggs sitting at the base of trees around this area.
		collect 8 Hyjal Egg##55189 |q 25656/1 |goto 36.9,43.4
	step
		talk Thisalee Crow##41006
		turnin The Wormwing Problem##25655
		turnin Scrambling for Eggs##25656
		accept A Bird in Hand##25731 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin A Plea From Beyond##25665
		accept A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Click the Harpy Signal Fire
		|tip It's a brazier with red fire in it.
		Fight Marion Wormwing until she gets captured |q 25731/1
		talk Marion Wormwing##41112 |goto 38.4,44.2
		Ask her why she is stealing eggs, then tell Thisalee to kill her
		Interrogate Marion Wormwing |q 25731/2
	step
		Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
		|tip It's a huge bird nest sitting on top of this mountain peak.
		kill Blaithe##41084 |goto 39.2,37.1
		collect Ancient Feather##55210 |q 25664/1
	step
		talk Thisalee Crow##41006
		turnin A Bird in Hand##25731 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Go upstairs in the Shrine of Aviana
		talk Skylord Omnuron##40997
		accept Fact-Finding Mission##25740 |goto 43.5,45.9
	step
		ding 81
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Durable Seeds##25491
		turnin Fresh Bait##25493
		accept Hell's Shells##25507 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Firebreak##25492
		accept Prepping the Soil##25502 |goto 27.1,63.0
	step
		Click the Flameward |goto 33.0,64.6
		|tip It's a floating stone in a golden claw stand.
		Activate the Flameward |q 25502/1
		Defend the Flameward |q 25502/2
	step
		talk Thisalee Crow##41006
		turnin Fact-Finding Mission##25740
		accept Sethria's Brood##25746
		accept A Gap in Their Armor##25758 |goto 32.8,70.8
	step
		Click the Codex of Shadows
		|tip It's an open book sitting on a wooden box.
		accept The Codex of Shadows##25763 |goto 31.3,77.1
	step
		kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
		Slay 12 Sethria's Minions |q 25746/1
		Click Twilight Armor Plates
		|tip They look like tan pieces of metal laying on the ground around this area.
		collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
	step
		talk Thisalee Crow##41006
		turnin Sethria's Brood##25746
		turnin A Gap in Their Armor##25758
		accept Disassembly##25761
		turnin The Codex of Shadows##25763
		accept Egg Hunt##25764 |goto 32.8,70.8
	step
		Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883
		|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
		kill 3 Twilight Juggernaut |q 25761/1
		Click Shadow Cloak Generators
		|tip They look like blue glowing machines around this area.
		Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
	step
		talk Thisalee Crow##41006
		turnin Disassembly##25761
		turnin Egg Hunt##25764
		accept Sethria's Demise##25776 |goto 32.8,70.8
	step
		kill Sethria##41255
		Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
		kill Sethria |q 25776/1 |goto 35.5,98.0
	step
		talk Thisalee Crow##41006
		turnin Sethria's Demise##25776
		accept Return to the Shrine##25795 |goto 32.8,70.8
	step
		Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744
		|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
		Click Nemesis when he becomes friendly
		collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
	step
		talk Choluna##41005
		turnin Return to the Shrine##25795
		accept An Ancient Reborn##25807 |goto 44.4,46.2
	step
		Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
		|tip Aviana's Egg is in the tree tower, in a side room.
		Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
	step
		talk Aviana##41308
		turnin An Ancient Reborn##25807 |goto 44.3,48.0
	step
		talk Morthis Whisperwing##41003
		accept The Hatchery Must Burn##25810 |goto 44.1,45.9
	step
		Go inside the blue portal |goto 38.8,58.0 < 5 |noway |c
	step
		talk Farden Talonshrike##40578
		turnin The Hatchery Must Burn##25810
		accept Flight in the Firelands##25523 |goto 37.2,56.2
	step
		Click the Twilight Weapon Rack
		|tip It's a wooden stand with some weapons leaning against it.
		collect Twilight Firelance##52716 |q 25523
	step
		Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
		Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
		|tip They are hippogryphs.
	step
		Use your Flap ability on your hotbar repeatedly to fly to this green flag
		Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Flight in the Firelands##25523
		accept Wave One##25525 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Buzzards to joust them
		kill 10 Twilight Knight Rider |q 25525/1 |goto 36.8,54.0
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave One##25525
		accept Wave Two##25544 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Firebirds to joust them
		|tip Be careful, don't let the burning Falling Boulders hit you.
		kill 10 Twilight Lancer |q 25544/1 |goto 36.8,54.0
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave Two##25544
		accept Egg Wave##25560 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Run over Firelands Eggs
		|tip They look like blue eggs on the ground around this area.
		Destroy 40 Firelands Eggs |q 25560/1 |goto 33.3,56.9
		You can find more Firelands Eggs all around [35.8,53.6]
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Egg Wave##25560
		accept Return to Aviana##25832 |goto 37.2,56.2
	step
		Click the red arrow on your hotbar to get off the hippogryph |outvehicle |c |q 25832
	step
		Don't forget to equip your real weapon again
		|confirm
	step
		Go inside the blue glowing orb |goto 38.8,58.6 < 5 |noway |c
	step
		talk Aviana##41308
		turnin Return to Aviana##25832 |goto 44.3,48.0
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Hell's Shells##25507
		accept Tortolla Speaks##25510 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Prepping the Soil##25502 |goto 27.1,63.0
	step
		talk Tortolla##41504
		turnin Tortolla Speaks##25510
		accept Breaking the Bonds##25514
		accept Children of Tortolla##25519 |goto 24.7,55.7
	step
		Click the Rod of Subjugation
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable the First Rod of Subjugation |q 25514/1 |goto 24.0,55.9
	step
		Click the Rod of Subjugation
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable the Second Rod of Subjugation |q 25514/2 |goto 25.2,54.9
	step
		talk Tortolla##41504
		turnin Breaking the Bonds##25514 |goto 24.7,55.7
	step
		kill Deep Corruptor##40561+
		Save 6 Tortolla's Eggs |q 25519/1 |goto 24.8,57.1
	step
		talk Tortolla##41504
		turnin Children of Tortolla##25519
		accept An Ancient Awakens##25520 |goto 24.7,55.7
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin An Ancient Awakens##25520 |goto 27.1,62.6
	step
		talk Vision of Ysera##46998 |goto 27.0,62.7
		accept The Last Living Lorekeeper##25830
	step
		talk Nordu##41381
		turnin The Last Living Lorekeeper##25830
		accept Firefight##25842 |goto 27.4,55.5
	step
		kill 5 Fiery Tormentor |q 25842/1 |goto 26.6,53.2
	step
		talk Nordu##41381
		turnin Firefight##25842
		accept Aessina's Miracle##25372 |goto 27.4,55.5
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Aessina's Miracle##25372 |goto 19.5,37.8
]])

---------------------------
----- Fishing Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("H_TB_Fishing_Dailies",[[
		talk Kah Mistrunner##3028 |or
		accept Craving Crayfish##29349 |or |goto Thunder Bluff 56.0,47.0
		accept Pond Predators##29345 |or |goto Thunder Bluff 56.0,47.0
		accept Shiny Baubles##29354 |or |goto Thunder Bluff 56.0,47.0
		accept The Race to Restock##29348 |or |goto Thunder Bluff 56.0,47.0
		accept The Ring's the Thing##29346 |or |goto Thunder Bluff 56.0,47.0
	step
		Dive into the water and click on the Stonebull Crafish
		|tip They look like little blue crabs.
		collect 10 Stonebull Crayfish##69977 |q 29349/1 |goto Mulgore 44.9,54.8
		only if haveq(29349)
	step
		Use your Fishing skill here to catch Azshara Snakeheads |cast Fishing##7620
		collect 8 Azshara Snakehead##69934 |q 29345/1 |goto Thunder Bluff 41.7,59.4
		only if haveq(29345)
	step
		Click on the Shiny Stones lying on the ground around Thunder Bluff's base
		|tip They look like shinning purple stones
		collect 20 Shiny Stone##69983 |q 29354/1 |goto Thunder Bluff 35.6,40.9
		only if haveq(29354)
	step
		Use your Fishing skill here to catch Randy Smallfish and Amorous Mud Snapper |cast Fishing##7620
		collect 2 Randy Smallfish##69964 |q 29348/1 |goto Mulgore 49.6,49.5
		collect 2 Amorous Mud Snapper##69967 |q 29348/2 |goto Mulgore 49.6,49.5
		only if haveq(29348)
	step
		Use your Fishing skill in the glowing water here |cast Fishing##7620
		collect 1 Poshken's Ring##69935 |q 29346/1 |goto Thunder Bluff 28.8,20.4
		only if haveq(29346)
	step
		talk Kah Mistrunner##3028
		turnin Craving Crayfish##29349 |goto Thunder Bluff 56.0,47.0
		turnin Pond Predators##29345 |goto Thunder Bluff 56.0,47.0
		turnin The Race to Restock##29348 |goto Thunder Bluff 56.0,47.0
		only if haveq(29349) or haveq(29345) or haveq(29348)
	step
		talk Nahari Cloudchaser##29354
		turnin Shiny Baubles##29354 |goto Thunder Bluff 35,53.8
		only if haveq(29354)
	step
		talk Poshken Hardbinder##30709
		turnin The Ring's the Thing##29346 |goto Thunder Bluff 28.8,20.4
		only if haveq(29346)
]])

ZygorGuidesViewer:RegisterInclude("H_Org_Fishing_Dailies",[[
		talk Razgar##43239
		You will only be able to complete 1 of the following quests per day
		accept A Furious Catch##26588 |or |goto Orgrimmar 65.7,41.1
		accept A Golden Opportunity##26572 |or |goto Orgrimmar 65.7,41.1
		accept A Staggering Effort##26557 |or |goto Orgrimmar 65.7,41.1
		accept Clammy Hands##26543 |or |goto Orgrimmar 65.7,41.1
		accept No Dumping Allowed##26556 |or |goto Orgrimmar 65.7,41.1
	step
		Fish in the river in this spot
		collect Giant Furious Pike##58951 |q 26588/1 |goto Durotar 37.4,16.8
		|tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
	step
		use Razgar's Fillet Knife##58955
		|tip Use Razgar's Fillet Knife on a Drowned Thunder Lizard.
		|tip They look like dead dinosaurs underwater around this area.
		collect Drowned Thunder Lizard Tail##58958 |n
		use Drowned Thunder Lizard Tail##58958
		|tip Use your Drowned Thunder Lizard Tail next to Golden Stonefish.
		|tip They look like big yellow fish underwater around this area.
		collect 3 Golden Stonefish##58960 |q 26572/1 |goto 42.8,24.0
	step
		click Monstrous Clam##204360
		|tip They look like huge white clams underwater around this area.
		collect 10 Monstrous Clam Meat##58934 |q 26543/1 |goto 57.2,9.5
	step
		kill Weakened Mosshoof Stag##35096+
		collect 1 Stag Eye##58949 |q 26557 |goto Azshara 27.6,74.5
	step
		Use your Stag Eye |use Stag Eye##58949
		|tip Fish in the water off the dock in this spot.
		collect Sandy Carp##58946 |q 26557/1 |goto Orgrimmar 46.2,46.5
	step
		Fish in the water in this spot
		collect 6 Toxic Puddlefish##58945 |q 26556/1 |goto 38.5,80.1
	step
		talk Razgar##43239
		You will only be able to complete 1 of the following quests per day
		turnin A Furious Catch##26588 |goto 65.7,41.1
		turnin A Golden Opportunity##26572 |goto 65.7,41.1
		turnin A Staggering Effort##26557 |goto 65.7,41.1
		turnin Clammy Hands##26543 |goto 65.7,41.1
		turnin No Dumping Allowed##26556 |goto 65.7,41.1
]])

ZygorGuidesViewer:RegisterInclude("H_UC_Fishing_Dailies",[[
		talk Armand Cromwell##4573
		You will only be able to accept one of the five quests listed
		accept Fish Head##29317 |or |goto Undercity 81.6,30.8
		accept Like Pike?##29320 |or |goto Undercity 81.6,30.8
		accept Moat Monster!##29361 |or |goto Undercity 81.6,30.8
		accept Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
		accept Time for Slime##29322 |or |goto Undercity 81.6,30.8
	step
		Use your Fishing skill at the edge of the wooden dock |cast Fishing##7620
		|tip Fish up a Severed Abomination Head.
		collect Severed Abomination Head##69901 |q 29317/1 |goto 81.6,31.5
		only if haveq(29317)
	step
		Click on the graves here
		|tip It looks like sparkling dirt in front of a grave stone.
		collect Corpse Worm##69907 |goto Undercity 67.3,15.2
		only if haveq(29320)
	step
		Use your Fishing skill in the water here to fish up Corpse-Fed Pike |cast Fishing##7620
		collect Corpse-Fed Pike##69909 |q 293320/1 |goto Tirisfal Glades 67.1,50.8
		only if haveq(29320)
	step
		use Moat Monster Feeding Kit##69999
		Lure the Moat Monster out with the Alliance Decoy |use Alliance Decoy Ki##69998
		Feed the Moat Monster with your Bloated Frogs! |use Bloated Frog##69995
		Feed Bloated Frogs to the Moat Monster |q 29361/1 |goto Undercity 64.7,16.5
		only if haveq(29361)
	step
		Use your Fishing skill |cast Fishing##7620
		|tip Fish up Giant Flesh-Eating Tadpoles.
		collect 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1 |goto Tirisfal Glades 50.6,56.5
		only if haveq(29319)
	step
		clicknpc Squirming Slime Mold##53517+
		|tip These are a bit hard to see, so, to see them better, you can dive into the water, or turn on your display health bars by pushing [V].
		collect 10 Squirming Slime Mold##69911 |q 29322/1 |goto Undercity 81.1,32.0
		only if haveq(29322)
	step
		talk Armand Cromwell##4573
		turnin Like Pike?##29320 |or |goto Undercity 81.6,30.8
		turnin Moat Monster!##29361 |or |goto Undercity 81.6,30.8
		turnin Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
		turnin Time for Slime##29322 |or |goto Undercity 81.6,30.8
		only if haveq(29320) or haveq(29361) or haveq(29319) or haveq(29322)
	step
		talk Master Apothecary Faranell##2055 |or
		turnin Fish Head##29317 |goto Undercity 48.4,69.4
		only if haveq(29317)
]])

-----------------------------
----- Sha'tari Skyguard -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("H_Skyguard_PreQ",[[
	step
		talk Yuula##23449
		accept Threat from Above##11096 |goto Shattrath City 64.3,42.3
	step
		kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.8,16.1
		You can find more around here at the following location |goto 24.4,8.9
	step
		talk Yuula##23449
		turnin Threat from Above##11096 |goto Shattrath City 64.3,42.3
		accept To Skettis!##11098 |goto Shattrath City 64.3,42.3
	step
		talk Sky Sergeant Doryn##23048
		turnin To Skettis!##11098 |goto Terokkar Forest 64.5,66.7
	step
		talk Skyguard Handler Deesak##23415
		accept Hungry Nether Rays##11093 |goto 63.5,65.8
	step
		talk Severin##23042
		accept World of Shadows##11004 |goto 64.0,66.9
	step
		Use your Nether Ray Cage |use Nether Ray Cage##32834
		|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
		kill Blackwind Warp Chaser##23219+
		You can find more Warp Chasers at the following location |goto 64.5,84.4
		Provide Nether Ray Meals |q 11093/1 |goto 61.4,81.8
	step
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		turnin World of Shadows##11004 |goto Terokkar Forest 64.0,66.9
	step
		talk Skyguard Handler Deesak##23415
		turnin Hungry Nether Rays##11093 |goto 63.5,65.8
	step
		talk Sky Commander Adaris##23038
		accept Secrets of the Talonpriests##11005 |goto 64.1,66.9
	step
		Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446 |goto 69.7,74.7
		You will get a buff Elixir of Shadows |havebuff 136152 --Spell_Shadow_DetectInvisibility
	step
		kill Talonpriest Zellek##23068 |q 11005/3 |goto 70.1,74.5
	step
		kill Talonpriest Ishaal##23066+ |q 11005/1
		collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
		accept Ishaal's Almanac##11021 |goto 69.3,78.1
	step
		kill Talonpriest Skizzik##23067+ |q 11005/2 |goto 69.8,81.8
	step
		talk Sky Commander Adaris##23038
		turnin Secrets of the Talonpriests##11005 |goto 64.1,66.9
		turnin Ishaal's Almanac##11021 |goto 64.1,66.9
		accept An Ally in Lower City##11024 |goto 64.1,66.9
	step
		talk Rilak the Redeemed##22292
		turnin An Ally in Lower City##11024 |goto Shattrath City 52.5,21.0
		accept Countdown to Doom##11028 |goto Shattrath City 52.5,21.0
	step
		talk Nutral##18940
		turnin Countdown to Doom##11028 |goto Terokkar Forest 64.1,66.9
	step
		talk Hazzik##23306
		accept Hazzik's Bargain##11056 |goto 64.2,66.9
	step
		click Hazzik's Package##185954
		collect Hazzik's Package##32687 |q 11056/1 |goto 74.8,80.1
	step
		talk Hazzik##23306
		turnin Hazzik's Bargain##11056 |goto 64.3,66.9
		accept A Shabby Disguise##11029 |goto 64.3,66.9
	step
		Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
		Wear the Shabby Arakkoa Disguise |havebuff 133707 |goto 66.2,77.5 --INV_Misc_Birdbeck_01
	step
		talk Sahaak##23363
		buy 1 Adversarial Bloodlines##32742 |q 11029 |goto 67.0,79.7
	step
		talk Hazzik##23306
		turnin A Shabby Disguise##11029 |goto 64.3,66.9
		accept Adversarial Blood##11885 |goto 64.3,66.9
	step
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 12 Shadow Dust##32388 |q 11885 |future |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		accept More Shadow Dust##11006
		collect 2 Elixir of Shadows##32446+ |q 11885 |future |goto 64.0,66.9
	step
		This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
		|confirm always
	step
		Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
		You will get a buff Elixir of Shadows |havebuff 136152 --Spell_Shadow_DetectInvisibility
	step
		kill Time-Lost Skettis High Priest##21787+, Time-Lost Skettis Reaver##21651+, Time-Lost Skettis Worshipper##21763+
		collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest 61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		click Skull Pile##185913
		|tip This will use 10 Time-Lost Scrolls
		<Call forth Darkscreecher Akkarai.>
		<Call forth Karrog.>
		<Call forth Gezzarak the Huntress.>
		<Call forth Vakkiz the Windrager.>
		kill Darkscreecher Akkarai##23161 |q 11885/1 |goto 69.7,74.7
		collect Akkarai's Talons##32715
		kill Karrog##23165 |q 11885/2 |goto 69.7,74.7
		collect Karrog's Spine##32717
		kill Gezzarak the Huntress##23163 |q 11885/3 |goto 69.7,74.7
		collect Gezzarak's Claws##32716
		kill Vakkiz the Windrager##23204 |q 11885/4 |goto 69.7,74.7
		collect Vakkiz's Scale##32718
		You can find more skull piles at the following locations:
		Location 1: |goto 70.1,79.5
		Location 2: |goto 73.5,80.7
		Location 3: |goto 70.2,83.3
	step
		talk Hazzik##23306
		turnin Adversarial Blood##11885 |goto 64.2,66.9
		accept Tokens of the Descendants##11074 |goto 64.2,66.9
	step
		talk Sky Commander Adaris##23038
  		accept Terokk's Downfall##11073 |goto 64.1,66.9
	step
		click Skull Pile##185913
		|tip This will use 1 Time-Lost Offering.
		<Call forth Terokk.>
		kill Terokk##21838 |goto 66.2,77.5
		|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
		Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
		|confirm always
	step
		talk Sky Commander Adaris##23038
  		turnin Terokk's Downfall##11073 |goto 64.1,66.9
]])

ZygorGuidesViewer:RegisterInclude("H_Skyguard_Daily",[[
	step
	label "dailies"
		talk Sky Sergeant Doryn##23048
		accept Fires Over Skettis##11008 |goto Terokkar Forest,64.5,66.7
	step
		Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
		Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
		Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto 63.1,80.0
		You can find more eggs at the following locations:
		Location 1: |goto 61.3,79.9
		Location 2: |goto 67.5,79.3
		Location 3: |goto 68.0,85.6
		Location 4: |goto 70.3,84.5
	step
		talk Sky Sergeant Doryn##23048
		turnin Fires Over Skettis##11008 |goto 64.5,66.7
	step
		talk Skyguard Prisoner##23383
		accept Escape from Skettis##11085 |goto 61.0,75.6
		He can also be found at the following locations:
		Location 1: |goto 68.4,74.0
		Location 2: |goto 75.0,86.5
	step
		Escort the Skyguard Prisoner to the bottom of the bridge
		|tip Help him kill any mobs on the way down.
		Rescue the Skyguard Prisoner |q 11085/1
	step
		talk Sky Sergeant Doryn##23048
		turnin Escape from Skettis##11085 |goto 64.5,66.7
	step
	label "grind"
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 12 Shadow Dust##32388 |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		accept More Shadow Dust##11006 |n
		collect 2 Elixir of Shadows##32446 |goto 64.0,66.9
	step
		Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
		You will get a buff Elixir of Shadows |havebuff 136152 --Spell_Shadow_DetectInvisibility
	step
		kill Time-Lost Skettis High Priest##21787+
		kill Time-Lost Skettis Reaver##21651+
		kill Time-Lost Skettis Worshipper##21763+
		collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		click Skull Pile##185913
		|tip This will use 10 Time-Lost Scrolls
		<Call forth Darkscreecher Akkarai.>
		<Call forth Karrog.>
		<Call forth Gezzarak the Huntress.>
		<Call forth Vakkiz the Windrager.>
		kill Darkscreecher Akkarai##23161
		collect Akkarai's Talons##32715 |goto 69.7,74.7
		kill Karrog##23165
		collect Karrog's Spine##32717 |goto 69.7,74.7
		kill Gezzarak the Huntress##23163
		collect Gezzarak's Claws##32716 |goto 69.7,74.7
		kill Vakkiz the Windrager##23204
		collect Vakkiz's Scale##32718 |goto 69.7,74.7
		You can find more skull piles at the following locations:
		Location 1: |goto 70.1,79.5
		Location 2: |goto 73.5,80.7
		Location 3: |goto 70.2,83.3
	step
		talk Hazzik##23306
		accept Tokens of the Descendants##11074 |n
		collect Time-Lost Offering##32720 |goto Terokkar Forest,64.3,66.9
	step
		click Skull Pile##185913
		|tip This will use 1 Time-Lost Offering.
		<Call forth Terokk.>
		kill Terokk##21838 |goto 66.2,77.5
		|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
		Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
		|confirm always
		|next "dailies" |only if rep("Sha'tari Skyguard")<=Revered
		|next |only if rep("Sha'tari Skyguard")==Exalted
]])

-------------------------
----- Sons of Hodir -----
-------------------------

ZygorGuidesViewer:RegisterInclude("Hodir_Quests",[[
		talk Jeer Sparksocket##29431
		turnin Luxurious Getaway!##12853 |goto The Storm Peaks 41,86.4
		accept Clean Up##12818 |goto The Storm Peaks 41,86.4
	step
		talk Smilin' Slirk Brassknob##29904
		home K3 |goto The Storm Peaks 41.1,85.9
	step
		talk Gretchen Fizzlespark##29473
		|tip She's inside the inn.
		accept They Took Our Men!##12843 |goto 41.1,86.1
		accept Equipment Recovery##12844 |goto 41.1,86.1
	step
		talk Ricket##29428
		accept Reclaimed Rations##12827 |goto 40.9,85.3
		accept Expression of Gratitude##12836 |goto 40.9,85.3
	step
		talk Skizzle Slickslide##29721
		fpath K3 |goto 40.8,84.5
	stickystart "gnollration"
	stickystart "charredwreck"
	step
		kill 1 Gnarlhide |q 12836/1 |goto 30.3,85.7
		|tip Standing in front of a tent.
	step
	label "charredwreck"
		Click the Charred Wreckage
		|tip They look like various metal parts on the ground around this area.
		collect 10 Charred Wreckage##40603 |q 12818/1 |goto 39.8,86.4
	step
	label "gnollration"
		kill Savage Hill gnolls |n
		Click Dried Gnoll Rations crates
		|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		collect 16 Dried Gnoll Rations##40645 |q 12827/1 |goto 35,83.8
	step
		talk Jeer Sparksocket##29431
		turnin Clean Up##12818 |goto 41,86.4
		accept Just Around the Corner##12819 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Reclaimed Rations##12827 |goto 40.9,85.3
		turnin Expression of Gratitude##12836 |goto 40.9,85.3
		accept Ample Inspiration##12828 |goto 40.9,85.3
	step
		Click Sparksocket's Tools
		|tip They look like a box of tools in the middle of the mine field. Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
		collect Sparksocket's Tools##40642|q 12819/1 |goto 35.1,87.8
	step
		talk Jeer Sparksocket##29431
		turnin Just Around the Corner##12819 |goto 41,86.4
		accept Slightly Unstable##12826 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Slightly Unstable##12826 |goto 40.9,85.3
		accept A Delicate Touch##12820 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Attackers |q 12820/1 |goto 43.1,81.2
	step
		talk Tore Rumblewrench##29430
		accept Moving In##12829 |goto 41.7,80
		accept Ore Repossession##12830 |goto 41.7,80
	step
		Click the U.D.E.D. Dispenser next to Tore Rumblewrench
		Retrieve a bomb from the dispenser
		collect 1 U.D.E.D.##40686 |q 12828 |goto 41.7,80
	step
		Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686
		|tip They walk around this area spread out.
		Click the Mammoth Meat on the ground
		collect 8 Hearty Mammoth Meat##40728 |q 12828/1 |goto 43.9,79.0
	step
		_Enter_ the cave |goto 40.4,77.8 < 10
		talk Injured Goblin Miner##29434
		accept Only Partly Forgotten##12831 |goto 41.5,74.9
	stickystart "impursaron"
	step
		kill Icetip Crawlers
		|tip They are big purple spiders walking around this area inside the cave.
		collect 1 Icetip Venom Sac##40944 |q 12831/1 |goto 47.1,72.3
	step
	label "impursaron"
		kill 12 Crystalweb Spiders |q 12829/1 |goto 44,75.9
		kill Snowblind Diggers
		collect 5 Impure Saronite Ore##40744|q 12830/1 |goto 44,75.9
	step
		talk Injured Goblin Miner##29434
		turnin Only Partly Forgotten##12831 |goto 43.5,75.2
		accept Bitter Departure##12832 |goto 43.5,75.2
	step
		talk Injured Goblin Miner##29434
		Tell the miner you're ready
		Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1 |goto 43.5,75.2
	step
		kill Sifreldar Storm Maiden##29323+
		collect 5 Cold Iron Key##40641 |n
		click Rusty Cage##191544
		Free 5 Goblin Prisoners |q 12843/1|goto 39.8,73.3
		click K3 Equipment##191568
		collect 8 K3 Equipment##40726 |q 12844/1|goto 39.8,73.3
	step
		talk Tore Rumblewrench##29430
		turnin Moving In##12829 |goto 41.7,80
		turnin Ore Repossession##12830 |goto 41.7,80
	step
		talk Ricket##29428
		turnin A Delicate Touch##12820 |goto 40.9,85.3
		turnin Ample Inspiration##12828 |goto 40.9,85.3
		turnin Bitter Departure##12832 |goto 40.9,85.3
		accept Cell Block Tango##12821 |goto 40.9,85.3
	step
		talk Gretchen Fizzlespark##29473
		turnin They Took Our Men!##12843 |goto 41.1,86.1
		accept Leave No Goblin Behind##12846 |goto 41.1,86.1
		turnin Equipment Recovery##12844 |goto 41.1,86.1
	step
		click Transporter Power Cell##191576
		collect Transporter Power Cell##40731 |q 12821/1 |goto 45.1,82.4
	step
		Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731
		|tip It looks like a tall machine with a fan in the bottom of it.
		Activate the Garm Teleporter |q 12821/2 |goto 50.7,81.9
	step
		talk Ricket##29428
		turnin Cell Block Tango##12821 |goto 40.9,85.3
		accept Know No Fear##12822 |goto 40.9,85.3
	step
		talk Gino##29432
		accept A Flawless Plan##12823 |goto 50.0,81.8
	step
		Go inside the cave |goto 50.5,77.8
		Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431
		|tip It's a stone altar with a bunch of melted red candles on it. Follow the path in the cave that spirals up all the way to the top of the cave to find it.
		kill Tormar Frostgut##29626 |q 12823/2
	step
		kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
		kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
	step
		talk Gino##29432
		turnin A Flawless Plan##12823 |goto 50.0,81.8
		accept Demolitionist Extraordinaire##12824 |goto 50.0,81.8
	step
		talk Lok'lira the Crone##29481
		turnin Leave No Goblin Behind##12846 |goto 42.8,68.9
		accept The Crone's Bargain##12841 |goto 42.8,68.9
		|tip Inside the cave.
	step
		kill Overseer Syra##29518
		collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto 44.2,68.9
	step
		talk Lok'lira the Crone##29481
		turnin The Crone's Bargain##12841 |goto 42.8,68.9
		accept Mildred the Cruel##12905 |goto 42.8,68.9
	step
		talk Mildred the Cruel##29885
		turnin Mildred the Cruel##12905 |goto 44.4,68.9
		accept Discipline##12906 |goto 44.4,68.9
	step
		Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837
		|tip They are sitting on the ground inside these side tunnels inside this mine.
		Discipline 6 Exhausted Vrykul |q 12906/1 |goto 44.8,70.3
	step
		talk Mildred the Cruel##29885
		turnin Discipline##12906 |goto 44.4,68.9
		accept Examples to be Made##12907 |goto 44.4,68.9
	step
		kill 1 Garhal##30147 |q 12907/1 |goto 45.4,69.1
	step
		talk Mildred the Cruel##29885
		turnin Examples to be Made##12907 |goto 44.4,68.9
		accept A Certain Prisoner##12908 |goto 44.4,68.9
	step
		talk Lok'lira the Crone##29481
		turnin A Certain Prisoner##12908 |goto 42.8,68.9
		accept A Change of Scenery##12921 |goto 42.8,68.9
	step
		talk Lok'lira the Crone##29975
		turnin A Change of Scenery##12921 |goto 47.5,69.1
		accept Is That Your Goblin?##12969 |goto 47.5,69.1
	step
		talk Agnetta Tyrsdottar##30154
		Tell her to skip the warm up
		kill Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.2,69.8
	step
		talk Lok'lira the Crone##29975
		turnin Is That Your Goblin?##12969 |goto 47.5,69.1
		accept The Hyldsmeet##12970 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		Ask her about her proposal
		Listen to Lok'lira's proposal |q 12970/1 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		turnin The Hyldsmeet##12970 |goto 47.5,69.1
		accept Taking on All Challengers##12971 |goto 47.5,69.1
	step
		talk Victorious Challenger##30012
		kill 6 Victorious Challenger##30012+ |q 12971/1 |goto 51,66.4
	step
		talk Lok'lira the Crone##29975
		turnin Taking on All Challengers##12971 |goto 47.5,69.1
		accept You'll Need a Bear##12972 |goto 47.5,69.1
	step
		talk Iva the Vengeful##29997
		accept Off With Their Black Wings##12942 |goto 48.4,72.1
		accept Yulda's Folly##12968 |goto 48.4,72.1
	step
		talk Thyra Kvinnshal##30041
		accept Aberrations##12925 |goto 48.4,72.1
	step
		talk Brijana##29592
		turnin You'll Need a Bear##12972 |goto 53.1,65.7
		accept Bearly Hanging On##12851 |goto 53.1,65.7
	step
		Click Icefang to ride him
		|tip Standing down the hill, Icefang is a white bear.
		While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants |petaction Flaming Arrow
		Burn 7 Frostworgs |q 12851/1 |goto 53.1,65.7
		Burn 15 Frost Giants |q 12851/2 |goto 53.1,65.7
	step
		talk Brijana##29592
		turnin Bearly Hanging On##12851 |goto 53.1,65.7
		accept Cold Hearted##12856 |goto 53.1,65.7
	step
		Click the Captive Proto-Drakes to ride them
		|tip The Captive Proto-Drakes are chained up flying in the sky.
		Use your Ice Shard ability on the Brunnhildar Prisoners |petaction Ice Shard
		|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		When your Proto-Drake is holding 3 Brunnhildar Prisoners, take them to this location |goto The Storm Peaks 59.9,61.2
		Repeat this process 2 more times
		Rescue 9 Brunnhildar Prisoners |q 12856/1 |goto 63.9,62.5
		Free 3 Proto-Drakes |q 12856/2 |goto 63.9,62.5
	step
		talk Brijana##29592
		turnin Cold Hearted##12856 |goto 53.1,65.7
		accept Deemed Worthy##13063 |goto 53.1,65.7
	step
		talk Astrid Bjornrittar##29839
		turnin Deemed Worthy##13063 |goto 49.7,71.8
		accept Making a Harness##12900 |goto 49.7,71.8
	step
		kill Icemane Yeti##29875+
		collect 3 Icemane Yeti Hide##41424 |q 12900/1 |goto 47.9,74.7
	step
		talk Astrid Bjornrittar##29839
		turnin Making a Harness##12900 |goto 49.7,71.8
		accept The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Slithering Darkness##12989 |goto 49.7,71.8
	stickystart "ravjorm"
	step
		clicknpc Injured Icemaw Matriarch##29563
		The bear runs back to Brunnhildar Village
		Rescue the Icemaw Matriarch |q 12983/1 |goto 54.8,60.4
	step
	label "ravjorm"
		kill 8 Ravenous Jormungar |q 12989/1 |goto 55.8,63.9
	step
		talk Astrid Bjornrittar##29839
		turnin The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Warm-Up##12996 |goto 49.7,71.8
		turnin The Slithering Darkness##12989 |goto 49.7,71.8
	step
		Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
	step
		Use the abilities on your hotbar to fight Kirgaraak
		|tip He's a big white yeti.
		Defeat Kirgaraak |q 12996/1 |goto 50.8,67.7
	step
		talk Astrid Bjornrittar##29839
		turnin The Warm-Up##12996 |goto 49.7,71.8
		accept Into the Pit##12997 |goto 49.7,71.8
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle|c
	step
		Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
		Use the abilities on your hotbar to fight Hyldsmeet Warbears
		kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto 49.1,69.4
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle|c
	step
		talk Astrid Bjornrittar##29839
		turnin Into the Pit##12997 |goto 49.7,71.8
		accept Prepare for Glory##13061 |goto 49.7,71.8
	step
		talk Lok'lira the Crone##29975
		turnin Prepare for Glory##13061 |goto 47.5,69.1
		accept Lok'lira's Parting Gift##13062 |goto 47.5,69.1
	step
		talk Gretta the Arbiter##29796
		turnin Lok'lira's Parting Gift##13062 |goto 50.9,65.6
		accept The Drakkensryd##12886 |goto 50.9,65.6
	step
		You fly off on a drake and start flying in circles around a tower:
		Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
		kill Hyldsmeet Drakerider##29694+
		Repeat this process 9 more times
		Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
	step
		They look like light fixtures on the side of the stone columns
		Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
	step
		talk Thorim##29445
		turnin The Drakkensryd##12886 |goto 33.4,58
		accept Sibling Rivalry##13064 |goto 33.4,58
	step
		talk Thorim##29445
		Ask him what became of Sif
		Hear Thorim's History |q 13064/1 |goto 33.4,58
	step
		talk Thorim##29445
		turnin Sibling Rivalry##13064 |goto 33.4,58
		accept Mending Fences##12915 |goto 33.4,58
	step
		kill 12 Nascent Val'kyr##29570+ |q 12942/1 |goto 27.3,63.7
		kill Valkyrion Aspirant##29569+
		collect 6 Vial of Frost Oil##41612 |q 12925 |goto 27.3,63.7
	step
		Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
		|tip They look like brown spiked eggs sitting in the yellow water around this area.
		Try to get 6 at a time
		Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto 23.7,58.3
	step
		kill Yulda the Stormspeaker##30046 |q 12968/1 |goto 24,61.8
		click Harpoon Crate##192072
		accept Valkyrion Must Burn##12953 |goto 24,61.8
	step
		clicknpc Valkyrion Harpoon Gun##30066
		Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area |petaction Flaming Harpoon
		Start 6 Fires |q 12953/1 |goto 26,59.8
	step
		Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
	step
		talk Ricket##29428
		turnin Demolitionist Extraordinaire##12824 |goto 40.9,85.3
		turnin Know No Fear##12822 |goto 40.9,85.3
		accept Overstock##12833 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Invader |q 12833/1 |goto 43.1,81.2
	step
		talk Ricket##29428
		turnin Overstock##12833 |goto 40.9,85.3
	step
		talk Thyra Kvinnshal##30041
		turnin Aberrations##12925 |goto 48.4,72.1
	step
		talk Iva the Vengeful##29997
		turnin Off With Their Black Wings##12942 |goto 48.4,72.1
		turnin Yulda's Folly##12968 |goto 48.4,72.1
		turnin Valkyrion Must Burn##12953 |goto 48.4,72.1
	stickystart "furspar"
	step
		click Granite Boulder##191815
		Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
		Help the dwarves kill them
		kill 5 Stormforged Iron Giant##29375+ |q 12915/2 |goto 75.8,63
		collect Slag Covered Metal##41556 |q 12922 |future |n |goto 75.8,63
		use Slag Covered Metal##41556
		accept The Refiner's Fire##12922 |goto 75.8,63
	step
	label "furspar"
		kill Seething Revenant##29504+
		collect 10 Furious Spark##41558|q 12922/1 |goto 75.4,63.5
	step
		Click a Granite Boulder and get one
		|tip The Granite Boulders look like big grey rocks on the ground around this area.
		Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505
		|tip He's a huge fire giant, holding a huge smithing hammer.
		Help the dwarves kill him
		kill Fjorn##29503 |q 12915/1 |goto 77.2,62.9
	step
		click Fjorn's Anvil##192071
		turnin The Refiner's Fire##12922 |goto 77.2,62.9
		accept A Spark of Hope##12956 |goto 77.2,62.9
	step
		talk Thorim##29445
		turnin A Spark of Hope##12956 |goto 33.4,58
		turnin Mending Fences##12915 |goto 33.4,58
		accept Forging an Alliance##12924 |goto 33.4,58
	step
		talk Halvdan##32571
		fpath Dun Niffelem |goto 62.6,60.9
	step
		talk King Jokkum##30105
		accept You Can't Miss Him##12966 |goto 65.4,60.2
	step
		talk Njormeld##30099
		turnin You Can't Miss Him##12966 |goto 75.4,63.6
		accept Battling the Elements##12967 |goto 75.4,63.6
	step
		Click Snorri to accompany on him |invehicle |c |goto 75.7,63.9
		|tip Standing on the side of the road.
	step
		Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow
		|tip The Snowdrifts look like piles of snow on the ground.
		Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
		kill 10 Seething Revenant##29504+ |q 12967/1 |goto 76.7,63.4
	step
		Click the red arrow on your hotbar to leave Snorri |script VehicleExit()|outvehicle |c
	step
		talk Njormeld##30099
		turnin Battling the Elements##12967 |goto 75.4,63.6
	step
		talk Njormeld##30127
		turnin Forging an Alliance##12924 |goto 63.2,63.2
		accept A New Beginning##13009 |goto 63.2,63.2
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		talk King Jokkum##30105
		accept In Memoriam##12975 |goto 65.4,60.2
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		click  Frozen Iron Scrap##192127
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		click Horn Fragment##192082
		collect 8 Horn Fragment##42162 |q 12975/1 |goto 72.1,49.4
		Kill mobs in the area
		collect 10 Relic of Ulduar##42780 |q 12975 |goto 72.1,49.4
	step
		talk King Jokkum##30105
		turnin In Memoriam##12975 |goto 65.4,60.2
		accept A Monument to the Fallen##12976 |goto 65.4,60.2
	step
		talk Njormeld##30127
		turnin A Monument to the Fallen##12976 |goto 63.2,63.2
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		talk Njormeld##30127
		accept Forging a Head##12985 |goto 63.2,63.2
	step
		Click Hodir's Horn
		|tip It's a huge bone war horn.
		accept Hodir's Call##12977 |goto 64.1,65.1
	step
		talk King Jokkum##30105
		accept Culling Jorcuttar##13011 |goto 65.4,60.2
	step
		Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
		kill Stormforged Ambusher##30208+
		collect 8 Stormforged Eye##42423 |q 12985/1 |goto 69.7,58.9
	step
		Kill Niffelem Forefathers and Restless Frostborn Ghosts
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |goal 5 Niffelem Forefather freed |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |goal 5 Restless Frostborn freed |q 12977/2 |goto 72.1,51.8
	step
		talk Njormeld##30127
		turnin Forging a Head##12985 |goto 63.2,63.2
		accept Placing Hodir's Helm##12987 |goto 63.2,63.2
	step
		Click Hodir's Horn
		|tip It's a huge bone war horn.
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		Fly to the tip of this ice spike
		Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
		Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
	step
		talk Njormeld##30127
		turnin Placing Hodir's Helm##12987 |goto 63.2,63.2
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		kill Viscous Oil##30325+
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
		Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
		collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 55.6,63.4
	step
		Follow the path inside the cave to this spot
		Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
		kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.7,60.8
	step
		talk Thorim##29445
		turnin A New Beginning##13009 |goto 33.4,58
		accept Veranus##13050 |goto 33.4,58
	step
		click Small Proto-Drake Egg##192536
		collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto 43.7,67.4
		You can find more Small Proto-Drake Eggs at the following location |goto 45.2,66.9
	step
		talk Thorim##29445
		turnin Veranus##13050 |goto 33.4,58
		accept Territorial Trespass##13051 |goto 33.4,58
	step
		Stand in this big nest
		Click the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
		Lure Veranus |goal Veranus Lured |q 13051/1 |goto 38.7,65.6
	step
		talk Thorim##29445
		turnin Territorial Trespass##13051 |goto 33.4,58
		accept Krolmir, Hammer of Storms##13010 |goto 33.4,58
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		talk King Jokkum##30105
		turnin Culling Jorcuttar##13011 |goto 65.4,60.2
	step
		talk King Jokkum##30105
		Ask him what has become of Krolmir
		Discover Krolmir's Fate |q 13010/1 |goto 65.4,60.2
	step
		talk Thorim##30390
		turnin Krolmir, Hammer of Storms##13010 |goto 71.4,48.8
		accept The Terrace of the Makers##13057 |goto 71.4,48.8
	-- Tauren section, recovered from trunk
	step
		talk Hyeyoung Parka##29762
		fpath Camp Tunka'lo |goto 65.4,50.6
	step
		talk Xarantaur##30381
		accept The Witness and the Hero##13034 |goto 65.7,51.4
	step
		Click the First History Scroll
		|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
		Read the First History Scroll |q 13034/1 |goto 65.8,50.4
	step
		Click the Second History Scroll
		|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
		Read the Second History Scroll |q 13034/2 |goto 66.8,50.1
	step
		Click the Third History Scroll
		|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
		Read the Third History Scroll |q 13034/3 |goto 67.5,50.6
	step
		talk Xarantaur##30381
		turnin The Witness and the Hero##13034 |goto 65.7,51.4
		accept Memories of Stormhoof##13037 |goto 65.7,51.4
	step
		_Enter_ the cave |goto 62.5,41.5 < 10
		talk Chieftain Swiftspear##30395
		Ask him what he remembers of his brother |q 13037/1 |goto 61.2,39.0
	step
		talk Chieftain Swiftspear##30395
		accept Distortions in Time##13038 |goto 61.2,39.0
	step
		Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
		Close 4 Frostfloe Rifts |q 13038/1 |goto 61.7,39.8
	step
		_Leave_ the cave |goto 62.5,41.5 < 10
		talk Xarantaur##30381
		turnin Memories of Stormhoof##13037 |goto 65.7,51.4
		turnin Distortions in Time##13038 |goto 65.7,51.4
		accept Where Time Went Wrong##13048 |goto 65.7,51.4
		accept The Hero's Arms##13049 |goto 65.7,51.4
	step
		_Enter_ the cave |goto 67.0,44.9 < 10
		kill Scion of Storm##30184+
		collect 1 Stormhoof's Spear##42782 |q 13049/1 |goto 67.2,44.3
		collect 1 Stormhoof's Mail##42783 |q 13049/2 |goto 67.2,44.3
		Click Taunka Artifacts
		|tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
		Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1 |goto 67.2,44.3
	step
		_Leave_ the cave |goto 67.0,44.9 < 10
		talk Xarantaur##30381
		turnin Where Time Went Wrong##13048 |goto 65.7,51.4
		turnin The Hero's Arms##13049 |goto 65.7,51.4
		accept Changing the Wind's Course##13058 |goto 65.7,51.4
	step
		Use The Lorehammer in your bags |use The Lorehammer##42918
		Go back in time and become Stormhoof |invehicle |q 13058 |goto 64.9,48.1
	step
		Use your Stormhoof abilities to fight and kill The North Wind
		|tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you. Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
		When The North Wind is dazed, go to this location |goto 64.6,46.9
		Click the Horn of Elemental Fury
		|tip It looks like a spiral white horn sitting on the ground.
		Restore the True Timeline |q 13058/1 |goto 64.5,47.5
	step
		talk Xarantaur##30381
		turnin Changing the Wind's Course##13058 |goto 65.7,51.4

	-- end of Tauren section recovered

	step
		talk Thorim##30295
		turnin The Terrace of the Makers##13057 |goto 56.3,51.4
		accept The Earthen Oath##13005 |goto 56.3,51.4
		accept Loken's Lackeys##13035 |goto 56.3,51.4
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		Fight mobs around this area
		kill 7 Iron Sentinel##29984+ |q 13005/1 |goto 57.3,46.7
		kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto 57.3,46.7
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Eisenfaust##30341 |q 13035/1 |goto 55.3,43.3
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.6,45.6
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Duronn the Runewrought##30353 |q 13035/3 |goto 45,38.1
		|tip Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
	step
		talk Thorim##30295
		turnin The Earthen Oath##13005 |goto 56.3,51.4
		turnin Loken's Lackeys##13035 |goto 56.3,51.4
		accept The Reckoning##13047 |goto 56.3,51.4
	step
		talk Thorim##30399
		Tell him you are with him
		Witness the Reckoning |q 13047/1 |goto 35.9,31.5
	step
		talk King Jokkum##30105
		turnin The Reckoning##13047 |goto 65.4,60.2
	step
		talk Ricket##29428
		accept When All Else Fails##13060 |goto 40.9,85.3
	step
		talk Ricket##29428
		Tell her you are ready to head further into Storm Peaks |goto 40.9,85.3 < 10
		You will fly to Grom'arsh Crash Site |goto 36.8,49.6 < 10
		talk Olut Alegut##30472
		turnin When All Else Fails##13060 |goto The Storm Peaks 37.0,49.6
	step
		talk Boktar Bloodfury##29651
		accept The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
	step
		talk Peon Gakra##29944
		home Grom'arsh Crash-Site |goto The Storm Peaks 37.1,49.5
	step
		talk Blood Guard Lorga##30247
		accept Emergency Measures##13000 |goto The Storm Peaks 36.5,49.1
		accept The Missing Tracker##13054 |goto The Storm Peaks 36.5,49.1
	step
		click Disturbed Snow##191708
		collect Burlap-Wrapped Note##40947 |q 12895/1 |goto The Storm Peaks 36.1,64.1
		|modeidisplay 5333
	step
		_Enter_ the cave |goto The Storm Peaks 47.0,54.9 < 10
		talk Tracker Val'zij##30469
		turnin The Missing Tracker##13054 |goto 48.5,54.3
		accept Cave Medicine##13055 |goto 48.5,54.3
	step
		click Cave Mushroom##192556
		collect 8 Cave Mushroom##42926 |q 13055/1 |goto The Storm Peaks 49.3,52.8
	step
		kill Cavedweller Worg##30164+
		collect 6 Worg Fur##42510 |q 13000/1 |goto The Storm Peaks 48.5,47.5
		kill Infesting Jormungar##30148+
		collect Toxin Gland##42927 |q 13055/2 |goto The Storm Peaks 48.5,47.5
	step
		talk Tracker Val'zij##30469
		turnin Cave Medicine##13055 |goto The Storm Peaks 48.5,54.3
		accept There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
	step
		_Follow_ the path into the cave |goto 48.2,48.1 < 10
		kill Gimorak##30167 |q 13056/1 |goto The Storm Peaks 48.9,46.7
	step
		talk Tracker Val'zij##30469
		turnin There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
	step
		talk Boktar Bloodfury##29651
		turnin The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
		accept The Nose Knows##12909 |goto The Storm Peaks 37.3,49.7
	step
		talk Blood Guard Lorga##30247
		turnin Emergency Measures##13000 |goto The Storm Peaks 36.4,49.1
	step
		talk Khaliisi##29855
		turnin The Nose Knows##12909 |goto The Storm Peaks 40.8,51.2
		accept Sniffing Out the Perpetrator##12910 |goto The Storm Peaks 40.8,51.2
	step
		clicknpc Frostbite##29857
		Use the abilities on your hotbar to slow down the _Steamforged Pursuers_.
		Ride Frostbite until you reach the end of the scent trail. |q 12910/1 |goto The Storm Peaks 40.8,51.2
	step
		kill Tracker Thulin##29695+ |q 12910/2 |goto The Storm Peaks 48.5,60.8
		collect Brann's Communicator##40971 |n
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Sniffing Out the Perpetrator##12910
		accept Speak Orcish, Man!##12913
	step
		talk Moteha Windborn##29937
		turnin Speak Orcish, Man!##12913 |goto The Storm Peaks 37.3,49.7
		accept Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
	step
		kill Stormrider##29624+
		collect 5 Voice of the Wind##41514 |q 12917/1 |goto The Storm Peaks 27.1,42.0
	step
		talk Moteha Windborn##29937
		turnin Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
	step
		talk Boktar Bloodfury##29651
		accept Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		Ask him if he can understand you |q 12920/1
	step
		talk Boktar Bloodfury##29651
		turnin Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
		accept Pieces of the Puzzle##12926 |goto The Storm Peaks 37.3,49.7
	step
		kill Library Guardian##29724
		collect 6 Inventor's Disk Fragment##41130 |n
		Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
		collect The Inventor's Disk##41132 |q 12926/1 |goto The Storm Peaks 37.6,43.5
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Pieces of the Puzzle##12926
		accept Data Mining##12927
	step
		Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
		|tip They look like floating round star things.
		Gather 7 Hidden Data |q 12927/1 |goto 38.5,44.2
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Data Mining##12927
		accept The Library Console##13416
	step
		click Inventor's Library Console##191760
		turnin The Library Console##13416 |goto The Storm Peaks 37.4,46.8
		accept Norgannon's Shell##12928 |goto The Storm Peaks 37.4,46.8
	step
		Click the Charged Disk in your bags |use Charged Disk##44704
		kill Archivist Mechaton##29775
		collect Norgannon's Shell##41258 |q 12928/1 |goto The Storm Peaks 37.4,46.8
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Norgannon's Shell##12928
		accept Going After the Core##13273
		accept The Earthen of Ulduar##12929
	step
		click Prospector Soren's Maps##193560
		|tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
		collect Prospector Soren's Maps##43983 |q 13273/2 |goto 59.2,51.5
	step
		Click Prospector Khrona's Notes##193561
		|tip It looks like an open book laying on a wooden box, next to a tent.
		collect Prospector Khrona's Notes##43984 |q 13273/1 |goto 59.8,52.6
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Going After the Core##13273
		accept The Core's Keeper##13274
	step
		The entrance to the big round metal door starts here |goto 56.5,58.5 < 10
		|tip It's a big metal hole on in the side of the mountain.
	step
		kill Athan##31798+
		collect Norgannon's Core##41260 |q 13274/1 |goto The Storm Peaks 56.3,52.3
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin The Core's Keeper##13274
		accept Forging the Keystone##13285
	step
		Go outside |goto 56.5,58.5 < 10
		talk Brann Bronzebeard##29579
		Tell him you're ready to make the keystone
		Help Brann create the keystone |q 13285/1 |goto The Storm Peaks 45.5,49.5
	step
		talk Boktar Bloodfury##29651
		turnin Forging the Keystone##13285 |goto 37.3,49.7
	step
		talk Breck Rockbrow##29950
		fpath Bouldercrag's Refuge |goto 30.6,36.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Earthen of Ulduar##12929 |goto 31.4,38.1
		accept Rare Earth##12930 |goto 31.4,38.1
	stickystart "enchanearth"
	step
		kill Stormforged Raider##29377+
		collect 5 Frostweave Cloth##33470 |q 12930/2 |goto 28.9,36.7
	step
	label "enchanearth"
		Click the Enchanted Earth
		|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliff side.
		collect 7 Enchanted Earth##41614 |q 12930/1 |goto 28.3,29.4
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Rare Earth##12930 |goto 31.4,38.1
		accept Fighting Back##12931 |goto 31.4,38.1
		accept Relief for the Fallen##12937 |goto 31.4,38.1
	step
		talk Magorn##29963
		home Bouldercrag's Refuge |goto The Storm Peaks 30.9,37.3
	step
		kill Stormforged Raiders##29377+, Stormforged Reavers##29382+
		kill 10 Stormforged Attacker |q 12931/1 |goto 28.1,36.7
		Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
		Heal 8 Fallen Earthen Defenders |q 12937/1 |goto 28.1,36.7
	step
		talk Bouldercrag the Rockshaper##29801
		|tip He's inside of the building.
		turnin Fighting Back##12931 |goto 31.4,38.1
		turnin Relief for the Fallen##12937 |goto 31.4,38.1
		accept Slaves of the Stormforged##12957 |goto 31.4,38.1
		accept The Dark Ore##12964 |goto 31.4,38.1
	step
		kill 3 Stormforged Taskmaster |q 12957/2 |goto 27.5,49.7
		talk Captive Mechagnome##29384
		Attempt to free 8 Captive Mechagnomes |q 12957/1 --|goal 8 Attempt to free Captive Mechagnome
		Click Ore Carts
		|tip They look like carts with ore in them.
		collect 5 Dark Ore Sample##42109 |q 12964/1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Slaves of the Stormforged##12957 |goto 31.4,38.1
		turnin The Dark Ore##12964 |goto 31.4,38.1
		accept The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Facing the Storm##12978 |goto 31.3,38.2
	stickystart "armordark"
	step
		Right-click Loken's Fury
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Fury |q 12965/1 |goto 24,42.6
	step
		Right-click Loken's Power
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Power |q 12965/2 |goto 26.2,47.7
	step
		Right-click Loken's Favor
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Favor |q 12965/3 |goto 24.6,48.4
	step
	label "armordark"
		kill Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
		kill 10 Nidavelir Stormforged |q 12978/1 |goto 25,42.9
		kill Stormforged War Golem##29380+
		collect 1 Dark Armor Plate##42203 |n
		Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
		accept Armor of Darkness##12979
	step
		kill Stormforged War Golem##29380+
		collect 4 Dark Armor Sample##42204 |q 12979/1 |goto 28.7,43.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Facing the Storm##12978 |goto 31.3,38.2
		turnin Armor of Darkness##12979 |goto 31.3,38.2
		accept The Armor's Secrets##12980 |goto 31.3,38.2
	step
		_Enter_ Mimir's Workshop |goto 33.6,39.6 < 10
		talk Attendant Tock##30190
		Tell him you found a strange armor plate
		Investigate the Armor Plate |q 12980/1 |goto 32.0,40.7
	step
		_Leave_ Mimir's Workshop |goto 33.6,39.6
		talk Bruor Ironbane##30152
		turnin The Armor's Secrets##12980 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept Valduran the Stormborn##12984 |goto 31.4,38.1
	step
		Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
		Help fight Valduran the Stormborn
		kill Valduran the Stormborn |q 12984/1 |goto 24.4,52.1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Valduran the Stormborn##12984 |goto 31.4,38.1
		accept Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Hit Them Where it Hurts##12991 |goto 31.3,38.2
	stickystart "forgedart"
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the North Lightning Forge |q 12988/1 |goto 29.0,45.8
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the Central Lightning Forge |q 12988/2 |goto 29.5,45.9
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the South Lightning Forge |q 12988/3 |goto 30.2,46.1
	step
	label "forgedart"
		kill 10 Stormforged Artificer |q 12991/1 |goto 30.0,46.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Hit Them Where it Hurts##12991 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept A Colossal Threat##12993 |goto 31.4,38.1
	step
		Click the Colossus Attack Specs
		|tip It looks like a white scroll laying on a small square metal table.
		collect Colossus Attack Specs##42475 |q 12993/1 |goto 28.9,44.1
	step
		Click the Colossus Defense Specs
		|tip It looks like a white scroll laying on an anvil under a white canopy.
		collect Colossus Defense Specs##42476 |q 12993/2 |goto 29.9,45.8
	step
		talk Bouldercrag the Rockshaper##29801
		turnin A Colossal Threat##12993 |goto 31.4,38.1
		accept The Heart of the Storm##12998 |goto 31.4,38.1
	step
		_Enter_ the doorway |goto 32.4,63.9 < 10
		Click the Heart of the Storm
		|tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot. It looks like a big blue orb, sitting in a three-pronged metal stand.
		Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.2,60.9
	step
		_Pass through_ the gates |goto 32.4,63.9 < 10
		talk Bouldercrag the Rockshaper##29801
		turnin The Heart of the Storm##12998 |goto 31.4,38.1
		accept The Iron Colossus##13007 |goto 31.4,38.1
	step
		Click the Jormungar Control Orb
		|tip It looks like a white glowing ball floating with a golden ring around it.
		Start controlling a Jormungar |invehicle |c |q 13007 |goto 27.2,35.9
	step
		In order to move as the Jormungar, use the Submerge ability on your hotbar. When you want to come back up to the surface, use the Emerge ability while submerged underground.
		kill Iron Colossus |q 13007/1 |goto 27.2,42.0
		|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
	step
		Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Iron Colossus##13007 |goto 31.4,38.1
]])

ZygorGuidesViewer:RegisterInclude("Hodir_Dailies",[[
	//DAILY//
	step
	label "Daily"
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
	step
		talk Lorekeeper Randvir##30252
		accept Forging Hodir's Spear##13001 |goto The Storm Peaks 64.8,59.1
		only if rep ('The Sons of Hodir')>=Honored
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	stickystart "viscoil"
	step
		kill Stoic Mammoth##30260+
		collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 59.0,61.2
		only if rep ('The Sons of Hodir')>=Honored
	step
	label "viscoil"
		kill Viscous Oil##30325+
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
	step
		_Enter_ the cave |goto 55.9,64.2 < 10
		click Everfrost Shard##192191
		collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.7,60.8
		only if rep ('The Sons of Hodir')>=Honored
	step
		_Leave_ the cave |goto 55.9,64.2 < 10
		talk Lorekeeper Randvir##30252
		turnin Forging Hodir's Spear##13001 |goto 64.8,59.1
		|tip This quest will unlock the How to Slay Your Dragon daily quest.
		only if rep ('The Sons of Hodir')>=Honored
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		click Frozen Iron Scrap##192127
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+ |goto 67.0,45.1
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+|n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		Click here to reset the daily quests |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
		Become honored with The Sons of Hodir |complete rep('The Sons of Hodir')>=Honored |next "Daily2"
	step
	label "Daily2"
		talk Frostworg Denmother##30294
		accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		accept How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	stickystart "visouoil"
	step
		Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		Repeat this process 2 more times
		Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
	step
		Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		While fighting the Wild Wyrm, there will be 2 phases to the fight. Phase 1:
		|tip In phase 1 of the fight, you will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		In phase 2 of the fight with the Wild Wyrm, the strategy changes:
		|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth. Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
		Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
	step
	label "visouoil"
		kill Viscous Oil##30325+
		|tip They look like slimes inside this cave.
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
	step
		talk Frostworg Denmother##30294
		turnin Spy Hunter##12994 |goto 63.5,59.8
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		Click the Frozen Iron Scraps
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+|n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
		Become Revered with The Sons of Hodir |complete rep('The Sons of Hodir')>=Revered |next "Daily3"
	step
	label "Daily3"
		talk Frostworg Denmother##30294
		accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		accept How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		click Arngrim the Insatiable##192524
		accept Feeding Arngrim##13046 |goto 67.6,59.9
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	stickystart "cousoil"
	step
		Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		Repeat this process 2 more times
		Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
	step
		Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
	step
		Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		While fighting the Wild Wyrm, there will be 2 phases to the fight
		Phase 1:
		|tip In phase 1 of the fight, you will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		In phase 2 of the fight with the Wild Wyrm, the strategy changes:
		|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
		Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
	step
	label "cousoil"
		kill Viscous Oil##30325+
		|tip They look like slimes inside this cave.
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
	step
		talk Frostworg Denmother##30294
		turnin Spy Hunter##12994 |goto 63.5,59.8
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		click Arngrim the Insatiable##192524
		turnin Feeding Arngrim##13046 |goto 67.6,59.9
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		Click the Frozen Iron Scraps
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
		Become Exalted with The Sons of Hodir |complete rep('The Sons of Hodir')==Exalted |next "BuyMount"
]])

----------------------
----- Sunreavers -----
----------------------

ZygorGuidesViewer:RegisterInclude("Sunreavers_dailies",[[
	label "start"
		Proceeding to the Sunreavers Dailies |next "dailies" |only if default
		Moving to the Sunreavers prequests |next |only if not completedq(32680) and thunderstage()==1
		Moving to the First Scenario |next "scenario1" |only if thunderstage()>=2 and not completedq(32212)
		Moving to the Second Scenario |next "scenario2" |only if thunderstage()>=3 and not completedq(32276)
		Moving to the Third Scenario |next "scenario3" |only if thunderstage()>=4 and not completedq(32277)
		Moving to the Fourth Scenario |next "scenario4" |only if thunderstage()>=5 and not completedq(32278)
		Moving to the Fifth Scenario |next "post5" |only if thunderstage()==5 and not completedq(32279)
	//PREQUEST
	step
	label "prequest"
		talk Sunwalker Dezco##64566
		accept Thunder Calls##32678 |goto Vale of Eternal Blossoms 62.9,28.3
	step
		talk Scout Captain Elsia##70358
		turnin Thunder Calls##32678 |goto Townlong Steppes 50.8,73.4
		accept The Storm Gathers##32680 |goto Townlong Steppes 50.8,73.4
	step
		talk Scout Captain Elsia##70358
		Tell her you're ready to go |q 32680/1	|goto Townlong Steppes 50.8,73.4
		Discover the Isle of Thunder |q 32680/2	|goto Townlong Steppes 50.8,73.4
	step
		talk Lor'themar Theron##67990
		turnin The Storm Gathers##32680 |goto Isle of Thunder 28.4,52.4
		|next "start"
	////SCENARIO
	step
	label "scenario1"
		talk Lor'themar Theron##67990
		accept The Assault on Zeb'tula##32212 |goto Isle of Thunder 28.4,52.3
		Enter the Scenario _Assault on Zeb'tula_ |goto Isle of Thunder Scenario |noway |q 32212
	step
		talk Lor'themar Theron##67990
		Tell him you're ready to go
		Speak to Lor'themar Theron |q 32212/1 |goto Isle of Thunder 28.4,52.3
	step
		clicknpc Sunreaver Bloodhawk##69487
		Ride the Sunreaver Bloodhawk |scenariogoal 1/22673 |goto Isle of Thunder Scenario 28.5,52.3 |q 32212
	step
		Watch the dialogue
		Fly with Scout Captain Elsia |scenariogoal 1/22654 |q 32212
	step
		Rendezvous with Scout Captain Elsia |scenariostage 1 |q 32212
	step
		kill Zeb'tula Raptor##69658+, from Zeb'tula Beastcaller##69657+
		Survive the Ambush |scenariogoal 2/22655 |goto Isle of Thunder Scenario 42.7,50.5 |q 32212
	step
		kill Zeb'tula Stoneshield##69517+
		kill Zandalari Barricade##69516+
		kill Zeb'tula Spearanger##69518+
		Destroy the Barricades and its Defenders |scenariogoal 3/22656 |goto Isle of Thunder Scenario 39.0,43.9 |q 32212
	step
		kill Kresh the Ripper##69474 |scenariogoal 4/22657 |q 32212 |goto Isle of Thunder Scenario 38.8,38.7
	step
		Cross the bridge |goto 36.74,38.67 < 10 |only if walking
		kill Arcanital Tula'chek##69475 |scenariogoal 5/22659 |goto 32.71,35.27 |q 32212
		|tip The mask puts down yellow protection fields.
		|tip Position yourself so that you are IN the yellow field, while Tula'chek is OUT of the field.
	step
		talk Lor'themar Theron##67990
		turnin The Assault on Zeb'tula##32212 |goto Isle of Thunder 32.5,35.5
		|next "start"
	////SCENARIO2
	step
	label "scenario2"
		talk Lor'themar Theron##67990
		accept Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
	step
		talk Lor'themar Theron##67990
		Tell him _"I'm ready to tear down the wall! [Queue for solo instance.]"_ |q 32276/1 |goto 32.51,35.58
		Enter the Scenario |goto Isle of Thunder Scenario |noway |q 32276
	step
		click Heavy Explosives##218197
		|tip It's a pink spiky orb on the ground.
		Acquire the Heavy Explosives |scenariogoal 1/22696 |goto Isle of Thunder Scenario 48.4,51.1 |q 32276
	step
		talk Scout Captain Elsia##69565
		Tell her _"Here are the explosives, Elsia."_
		Deliver the Explosives to Elsia |scenariogoal 2/22700 |goto Isle of Thunder Scenario 55.8,57.9 |q 32276
	step
		click Heavy Explosives##218197
		Detonate the Heavy Explosives |scenariogoal 3/22702 |goto Isle of Thunder Scenario 56.2,56.2 |q 32276
	step
		_Go through_ the passage |goto 54.9,51.5 < 20 |walk
		_Go up_ the stairs |goto 53.7,47.3 < 20 |walk
		kill War-God Al'chukla##69755 |scenariogoal 4/23004 |goto Isle of Thunder Scenario 54.7,45.9 |q 32276
	step
		click Portal to the Isle of Thunder |goto 54.1,46.2
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32276
	step
		talk Lor'themar Theron##67990
		turnin Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
		|next "start"
	////SCENARIO3
	step
	label "scenario3"
		talk Lor'themar Theron##67990
		accept To the Skies!##32277 |goto Isle of Thunder/0 32.51,35.58
	step
		talk Lor'themar Theron##67990
		Tell him _"I am ready! [Queue for solo instance.]"_ |q 32277/1 |goto Isle of Thunder/0 32.51,35.58
		Enter the To the Skies scenario! |goto Isle of Thunder Scenario |noway |q 32277
	step
		clicknpc Thunderwing##69509
		Mount Thunderwing |scenariogoal 1/22666 |goto Isle of Thunder Scenario 32.3,34.4 |q 32277
	step
		Approach the Mine Entrance |scenariogoal 1/22701 |goto Isle of Thunder Scenario 32.3,34.4 |q 32277
	step
		kill Zandalari Beastcaller##69521+
		|tip Use the "Jump!" ability to jump onto nearby Zandalari Attackers.
		|tip It appears as a button on your screen.
		Defeat Your Attackers! |scenariogoal 2/22668 |q 32277
	step
		kill Beastmaster Horaki##69559 |scenariogoal 3/22669 |goto Isle of Thunder Scenario 48.7,25.5 |q 32277
	step
		talk Taoshi##69810
		Tell her _"Alright. Let's go."_
		Join with Taoshi |scenariogoal 4/22738 |goto Isle of Thunder Scenario 49.3,26.0 |q 32277
	step
		Watch the dialogue
		Clear the Cave-in |scenariogoal 5/22740 |goto Isle of Thunder Scenario 48.8,25.6 |q 32277
	step
		_Enter_ the cave |goto Isle of Thunder Scenario/1 < 10 |walk
		_Follow_ the ledge |goto 44.7,53.1 < 20 |walk
		Make Your Way to the Mine Entrance |scenariogoal 5/22741 |goto Isle of Thunder Scenario/1 32.9,57.9 |q 32277
		|tip Inside the cave.
	step
		kill Slavemaster Shiaxu##69923 |scenariogoal 6/22672 |goto Isle of Thunder Scenario/1 28.17,67.47 |q 32277
		|tip Inside the cave.
	step
		Unlock the Mine Door |scenariogoal 6/22739 |q 32277
	step
		click Portal to the Isle of Thunder |goto 31.2,77.7
		|tip Inside the cave.
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32277
	step
		talk Lor'themar Theron##67990
		turnin To the Skies!##32277 |goto Isle of Thunder/0 32.91,32.58
		|next "start"
	////SCENARIO4
	step
	label "scenario4"
		talk Taoshi##70297
		accept Decisive Action##32278 |goto Isle of Thunder/0 32.9,32.7
	step
		talk Taoshi##70297 |goto Isle of Thunder/0 32.9,32.7
		Tell her _"I'm with you. Let's break into that shipyard! [Queue for solo instance.]"_
		Enter the To the Skies scenario! |goto Isle of Thunder Scenario |noway |q 32278
	step
		clicknpc Thunderwing##69458
		Intercept the Zandalari Patrol |scenariogoal 1/22661 |goto Isle of Thunder Scenario/0 63.2,54.4 |q 32278
	step
		Deactivate the Sentry Totems |scenariogoal 2/23007 |q 32278
		|tip Use the "Smoke Bomb" ability on your action bar to cloud the vision of the Zandalari patrols.
		|tip They are marked with blue circles on the ground around this area.
	step
		Follow Taoshi around the ship
		|tip Sneak up behind the Veteran Wingriders she marks for you.
		|tip When the enemies are inside your red circle, use the "Knock Out" ability.
		|tip It appears as a button on your screen.
		Neutralize the Marked Crew Members |scenariogoal 3/23003 |q 32278
	step
		Have Taoshi Trap the Siege Weapons |scenariogoal 3/22663 |q 32278
	step
		Run down the ramp |goto 68.57,45.67 < 5 |walk
		kill Captain Halu'kal##69482 |scenariogoal 4/22664 |goto Isle of Thunder Scenario/0 67.2,47.3 |q 32278
		|tip Downstairs inside the ship.
	step
		_Go through_ the door |goto 67.3,45.6 < 15 |walk
		_Go up_ the stairs |goto 64.2,42.3 < 15 |walk
		_Continue up_ the hill |goto 61.9,43.3 < 20 |walk
		|tip Sneak your way around the totems and guards to Hu'seng the Gatekeeper.
		Locate Hu'seng the Gatekeeper |scenariogoal 5/22665 |goto Isle of Thunder Scenario/0 59.4,44.2 |q 32278
	step
		kill Hu'seng the Gatekeeper##69483 |scenariogoal 6/22667 |goto Isle of Thunder Scenario/0 59.1,44.1 |q 32278
	step
		collect Gatekeeper's Orb##94918 |scenariogoal 6/22810 |goto Isle of Thunder Scenario/0 59.1,44.1 |q 32278
		|tip Loot it from Hu'seng the Gatekeeper's corpse.
	step
		click Deactivated Access Generator##219094
		Open the Gate |scenariogoal 7/22809 |goto Isle of Thunder Scenario/0 58.4,42.8 |q 32278
	step
		Click the Portal to Dawnseeker Promontory |goto 57.79,41.87
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32278
	step
		talk Lor'themar Theron##67990
		turnin Decisive Action##32278 |goto Isle of Thunder/0 32.51,35.58
		|next "start"
	//SCENARIO5
	step
	label "post5"
		talk Lor'themar Theron##67990
		accept The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.51,35.58
	step
		talk Lor'themar Theron##67990
		Tell him _"I am ready to launch the asault [Queue for solo instance.]"_
		Speak to Lor'themar Theron |q 32279/1 |goto Isle of Thunder/0 32.51,35.58
		Enter the scenario |goto Isle of Thunder Scenario |noway |q 32279
	step
		talk Scout Captain Elsia##69620
		Tell her _"I am ready."_
		Speak with Your Assault Leader |scenariogoal 1/22742 |goto Isle of Thunder Scenario/0 56.07,39.20 |q 32279
	step
		Enter the Courtyard |scenariogoal 1/22799 |goto Isle of Thunder Scenario/0 57.7,41.3 |q 32279
	step
		kill Zandalari Stoneshield##69527+
		Slay the Zandalari |scenariogoal 1/22675 |goto Isle of Thunder Scenario/0 57.5,40.8 |q 32279
	step
		kill Palace Gatekeeper##69510+
		Slay the Palace Gatekeepers |scenariogoal 2/22685 |goto Isle of Thunder Scenario/0 57.9,40.8 |q 32279
	step
		kill Quilen Guardian##69506+, Shan'ze Electrocutioner##69525+, Zandalari Stoneshield##69865+
		Slay the Zandalari and Mogu |scenariogoal 3/22734 |goto Isle of Thunder Scenario/0 59.8,38.0 |q 32279
	step
		Watch the dialogue
		kill Shan Bu##69534 |scenariogoal 4/22683 |goto Isle of Thunder Scenario/0 60.0,37.8 |q 32279
	step
		click Portal to the Isle of Thunder |goto 56.82,40.44
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32279
	step
		talk Lor'themar Theron##67990
		turnin The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.51,35.58
		|next "start"
	//DAILIES
	step
	label "dailies"
		talk Lor'themar Theron##67990
		accept Za'Tual##32729 |goto Isle of Thunder/0 32.51,35.58
		|only if thunderstage()==1
	step
		talk Girana the Blooded##67673
		accept The Court of Bones##32728 |goto Isle of Thunder/0 32.43,35.22
		|only if thunderstage()==1
	step
		talk Magister Hathorel##67663
		accept Ihgaluk Crag##32730 |goto Isle of Thunder/0 32.47,35.24
		|only if thunderstage()==1
	step
		clicknpc Assignment Map##70567 |goto Isle of Thunder 32.5,35.3
		Click PvE at the assignment screen. |questchoice 21 54 -- PvE
		|only if thunderstage()>=2
	step
		talk Magister Hathorel##67663
		accept Ihgaluk Crag##32730 |goto Isle of Thunder 32.5,35.2
		accept A Wing to Fly On##32506 |only if thunderstage()>=2 |goto Isle of Thunder 32.5,35.2
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Girana the Blooded##67673
		accept The Court of Bones##32728 |or 2 |goto Isle of Thunder 32.5,35.2
		accept The Zandalari Colossus##32230 |or 2 |goto Isle of Thunder 32.5,35.2
		accept The Shuddering Moor##32228 |or 2 |only if thunderstage()>=2 |goto Isle of Thunder 32.5,35.2
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Lor'themar Theron##67990
		accept Za'Tual##32729 |goto Isle of Thunder/0 32.51,35.58
		accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
		|only if thunderstage()>=2  and completedq(32212)
		Click here when no more quests are available |confirm --|noquest
	step
		talk High Arcanist Savor##67662
		accept The Sleepless Legion##32285 |or |goto Isle of Thunder 33.5,35.1
		accept Enemies Beneath the Tower##32287 |or |goto Isle of Thunder 33.5,35.1
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2
		|next "dailies2"
	////COURT OF BONES
	step
	label "dailies2"
		Routing to the next section |next "zatual" |only if thunderstage()>=2 and not haveq(32728) and not completedq(32728)
		Routing to the next section |next |only if default
	step
		talk Grand Magister Rommath##67989
		turnin The Court of Bones##32728 |only if haveq(32728) |goto Isle of Thunder 33.1,52.7
		accept Grave Circumstances##32201 |only if haveq(32728) or completedq(32728) |goto Isle of Thunder 33.1,52.7
		accept The Call of Thunder##32225 |only if haveq(32728) or completedq(32728) |goto Isle of Thunder 33.1,52.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()==1
	step
		talk Ryshelle Brightlock##69389
		accept Stone Cold##32219 |goto Isle of Thunder 32.9,52.6
		accept Into the Crypts##32226 |goto Isle of Thunder 32.9,52.6
		accept Rise No More!##32224 |goto Isle of Thunder 32.9,52.6
		accept The Conquest of Stone##32517 |goto Isle of Thunder 32.9,52.6
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()==1
	step
		talk Captain Aerthas Firehawk##67983
		accept Ashes of the Enemy##32218 |or |goto Isle of Thunder 33.1,53.0
		accept Soul Surrender##32220 |or |goto Isle of Thunder 33.1,53.0
		|only if thunderstage()==1
	step
		talk Grand Magister Rommath##67989
		turnin The Court of Bones##32728 |goto Isle of Thunder 38.5,51.3
		accept Grave Circumstances##32201 |goto Isle of Thunder 38.5,51.3
		accept The Bloodletter##32495 |goto Isle of Thunder 38.5,51.3
		accept The Call of Thunder##32225 |goto Isle of Thunder 38.5,51.3
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Ryshelle Brightlock##69389
		accept Stone Cold##32219 |goto Isle of Thunder 38.5,51.2
		accept Rise No More!##32224 |goto Isle of Thunder 38.5,51.2
		accept Into the Crypts##32226 |goto Isle of Thunder 38.5,51.2
		accept The Conquest of Stone##32517 |goto Isle of Thunder 38.5,51.2
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Captain Aerthas Firehawk##67983
		accept Soul Surrender##32220 |or |goto Isle of Thunder 38.5,51.1
		accept Ashes of the Enemy##32218 |or |goto Isle of Thunder 38.5,51.1
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	stickystart "shanzemobs"
	stickystart "savescouts"
	step
		kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.0,48.2
		|only if haveq(32495)
	step
		Kill the Shan'ze Soulrippers surrounding the Ancient Stone Conqueror in this room.
		Stop the Ancient Stone Conqueror ritual |q 32517/1 |goto Isle of Thunder 35.1,64.3
		|only if haveq(32517)
	step
		kill Shan'ze Thundercaller##69264+
		Kill the _Shan'ze Thundercallers_ around the Lightning Rod to stop the ritual. |q 32225/1 |goto Isle of Thunder 32.9,55.9
		|only if haveq(32225)
	step
	label "savescouts"
		click Tormented Cage
		Save 6 Scouts |q 32220/1 |goto Isle of Thunder 36.1,51.8
		|only if haveq(32220)
	step
	label "shanzemobs"
		kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+ |q 32201/1 |only if haveq(32201)
		|tip The Thundercallers will cast Chain Lightning which places a circular spell under your character that you will need to move out of to avoid heavy damage.
		kill Risen Ancestor##69237+ |q 32224/1 |only if haveq(32224) |goto Isle of Thunder 35.5,52.3
		kill Grave Guardian##69240+ |q 32219/1 |only if haveq(32219) |goto Isle of Thunder 35.5,52.3
		Use your Blessed Torch on Mummified Remains |use Blessed Torch##93751
		Burn Mummified Remains |q 32218/1 |only if haveq(32218)
		|tip They're laying in coffins scattered around this area.
		|only if haveq(32219) or haveq(32218) or haveq(32201) or haveq(32224)
	step
		Enter the Hall of the Exalted here |goto Isle of Thunder 36.3,58.8 < 10
		Use the Incantation of Gura in your bags to summon Gura |use Incantation of Gura##93803
		kill Gura the Reclaimed##69241+ |q 32226/1 |goto Isle of Thunder 36.8,56.5 |subzone Hall of the Exalted
		|only if haveq(32226)
	////ZA'TUAL
	step
	label "zatual"
		Routing to the next section |next "crag" |only if thunderstage()>=4 and not haveq(32729) and not completedq(32729)
		Routing to the next section |next |only if default
	step
		talk Halduron Brightwing##70520
		turnin Za'Tual##32729 |goto Isle of Thunder 36.8,64.8
		accept Surgical Death##32275 |goto Isle of Thunder 36.8,64.8
		accept Harbingers of the Loa##32252 |goto Isle of Thunder 36.8,64.8
		accept Dangers of Za'Tual##32200 |goto Isle of Thunder 36.8,64.8
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=1 and haveq(32729) or completedq(32729)
	step
		talk Elina Zaralae##69418
		accept Dark Offerings##32217 |goto Isle of Thunder 36.7,64.7
		accept Heinous Sacrifice##32215 |goto Isle of Thunder 36.7,64.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=1 and completedq(32729)
	step
		talk Kethiel Sunlance##67984
		accept Pterrible Ptorment##32216 |goto Isle of Thunder 36.8,64.9
		accept Preventing a Future Threat##32227 |goto Isle of Thunder 36.8,64.9
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=1 and completedq(32729)
	step
		kill Zandalari Arcweaver##69224+
		Free the Tormented Skyscreamer |q 32216/1 |goto Isle of Thunder 41.3,69.9
		|only if haveq(32216)
	step
		Run over _Hatchling Skyscreamers_ in this area to scare them.
		Scare 12 Hatchling Skyscreamers |q 32227/1 |goto Isle of Thunder/0 28.0,77.2
		|only if haveq(32227)
	stickystart "zandamobs"
	stickystart "zandabeast"
	step
		kill Spiritbinder Tec'uat##69255 |only if haveq(32275)
		click Tec'uat's Altar
		Destroy Tec'uat's Altar |q 32215/2 |goto Isle of Thunder 39.8,65.3
		|only if haveq(32215)
	step
		kill Spiritbinder Pa'chek##69256 |only if haveq(32275)
		click Pa'chek's Altar
		Destroy Pa'chek's Altar |q 32215/3 |goto Isle of Thunder 38.7,78.6
		|only if haveq(32215)
	step
		kill Spiritbinder Cha'lat##69254 |only if haveq(32275)
		click Cha'lat's Altar
		Destroy Cha'lat's Altar |q 32215/1 |goto Isle of Thunder 33.9,76.2
		|only if haveq(32215)
	step
		click Zandalari Offering##216991
		Destroy 6 Zandalari Offerings |q 32217/1 |goto Isle of Thunder 35.4,68.0
		|only if haveq(32217)
	step
		kill Zandalari Arcanital##69281+, Zandalari Speaker##69136+ |q 32252/1 |goto Isle of Thunder 36.4,70.0
		You can either wait here _(the respawn rate is high for these mobs)_, or find another at [38.9,76.4]
		|only if haveq(32252)
	step
	label "zandabeast"
		kill Zandalari Jaguar Warrior##69171+ |q 32275/2 |goto Isle of Thunder 31.3,69.9
		kill Zandalari Beastcaller##69065+ |q 32275/1 |goto Isle of Thunder 31.3,69.9
		kill Zandalari Spiritbinder## |q 32275/3 |goto Isle of Thunder 31.3,69.9
		|only if haveq(32275)
	step
	label "zandamobs"
		kill Zandalari Stoneshield##69223+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+, Zandalari Jaguar Warrior##69171+ |q 32200/1 |goto Isle of Thunder 31.3,69.9
		|only if haveq(32200)
	////IHGALUK CRAG
	step
	label "crag"
		Routing to the next section |next "dire" |only if thunderstage()>=2 and not haveq(32730) and not completedq(32730)
		Routing to the next section |next |only if default
	step
		talk Archmage Aethas Sunreaver##67660
		turnin Ihgaluk Crag##32730 |goto Isle of Thunder 46.9,66.9
		accept The Skumblade Threat##32204 |or 2 |goto Isle of Thunder 46.9,66.9
		accept Manipulating the Saurok##32254 |or 2 |goto Isle of Thunder 46.9,66.9
		accept Subtle Encouragement##32605 |or 2 |goto Isle of Thunder 46.9,66.9
		accept De-Constructed##32255 |or 2 |goto Isle of Thunder 46.9,66.9
		Click here when no more quests are available |confirm --|noquest
	step
		talk Sunwalker Dezco##69425
		accept The Residents of Ihgaluk##32274 |goto Isle of Thunder 46.8,66.8
		Click here when no more quests are available |confirm --|noquest
	step
		talk Amalia Penshire##69371
		accept Just Some Light Clean-Up Work##32299 |or 2 |goto Isle of Thunder 47.0,66.7
		accept The Creeping Carpet of Ihgaluk##32489 |or 2 |goto Isle of Thunder 47.0,66.7
		accept Left to Rot##32491 |or 2 |goto Isle of Thunder 47.0,66.7
		Click here when no more quests are available |confirm --|noquest
	step
		talk Archmage Aethas Sunreaver##67660
		accept Skin of the Saurok##32549 |goto Isle of Thunder 46.9,66.9
		|tip NOTE: This quest will give you the ability to disguise yourself as a saurok. This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag. If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
		Click here when no more quests are available |confirm --|noquest
		|only if not completedq(32507)
	step
		kill Skumblade Filthmonger##69228+, Skumblade Brute##69338+, Skumblade Scavenger##69227+ |q 32549/1 |goto Isle of Thunder 47.2,79.6
		|only if not completedq(32507) and thunderstage()==1
	step
		Click the quest complete box that appears below your minimap.
		turnin Skin of the Saurok##32549
		|only if not completedq(32507)
	stickystart "ihgaroach"
	stickystart "killskum"
	stickystart "plantmogu"
	step
		kill Fetid Meat Pile##69247+
		Fetid Meat Pile destroyed |q 32491/1 |goto Isle of Thunder 51.5,78.4
		|only if haveq(32491)
	step
		clicknpc Malfunctioning Sunreaver##69289
		Recover Malfunctioning Sunreaver |q 32255/4 |goto Isle of Thunder/0 46.6,71.9
		|only if haveq(32255)
	step
		clicknpc Magister Arlan##69293
		Speak with Magister Arlan |q 32254/1 |goto Isle of Thunder 44.6,83.3
		|only if haveq(32254)
	step
		clicknpc Disabled Sunreaver Construct##69439
		Recover Disabled Construct |q 32255/1 |goto Isle of Thunder/0 44.2,81.8
		|only if haveq(32255)
	step
		clicknpc Magistrix Vesara##69310
		Speak with Magistrix Vesara |q 32254/3 |goto Isle of Thunder 51.7,73.6
		|only if haveq(32254)
	step
		map Isle of Thunder/0
		path follow loose;loop;ants straight
		path	51.8,74.4	53.3,77.0	54.3,79.3
		path	55.1,82.2	55.1,82.2	55.3,84.2
		path	54.9,86.7	53.9,88.3	52.4,90.4
		path	50.8,90.5	49.2,89.5	49.4,85.8
		path	49.8,84.0	49.4,82.0	49.2,79.8
		path	50.1,78.4	50.4,77.1	50.6,75.8
		clicknpc Distressed Sunreaver Construct##69290
		Recover Distressed Construct |q 32255/3
		|only if haveq(32255)
	step
		clicknpc Magister Sarien##69309
		Speak with Magister Sarien |q 32254/2 |goto Isle of Thunder 51.5,85.0
		|only if haveq(32254)
	step
		clicknpc Buried Sunreaver Construct##69288
		Recover Buried Construct |q 32255/2 |goto Isle of Thunder/0 53.6,91.2
		|only if haveq(32255)
	step
		kill Quivering Filth##69251+
		Disperse 75 Filth |q 32299/1 |goto Isle of Thunder 51.5,81.0
		|only if haveq(32299)
	step
		kill 1 Skumblade Brute##69338 |q 32274/1 |goto Isle of Thunder 50.9,78.9
		|only if haveq(32274)
	step
		_Follow_ the path up |goto Isle of Thunder 50.5,76.8 < 10
		kill 1 Skumblade Saur-Priest##69229 |q 32274/2 |goto Isle of Thunder 49.8,76.1
		|only if haveq(32274)
	step
		kill 1 Skumblade Seadragon##69226+ |q 32274/3 |goto Isle of Thunder 56.3,86.4
		|only if haveq(32274)
	step
	label "ihgaroach"
		Go around Ihgaluk running over any _Ihgaluk Roaches_ you see.
		Crush 150 Ihgaluk Roaches |q 32489/1 |goto Isle of Thunder 53.9,78.0
		|only if haveq(32489)
	step
	label "plantmogu"
		kill Skumblade Brute##69338+, Skumblade Shortfang##69348+, Skumblade Scavenger##69227+, Skumblade Fleshripper##69210+
		Click the _Plant the spear_ ability that appears in the middle of your screen to plant the weapons on their corpses.
		Plant 9 Mogu weapons |q 32605/1 |goto Isle of Thunder 45.2,74.7
		|only if haveq(32605)
	step
	label "killskum"
		kill Skumblade Brute##69338+, Skumblade Shortfang##69348+, Skumblade Scavenger##69227+, Skumblade Fleshripper##69210+ |q 32204/1 |goto Isle of Thunder 45.2,74.7
		|only if haveq(32204)
	step
	label "dire"
		clicknpc Wild Pterrorwing Hatchling##69428
		|tip The hatchling roams around this circular path, some searching may be necessary.
		Catch a Wild Pterrorwing Hatchling |q 32506/1 |goto Isle of Thunder 40.8,48.3
		|only if haveq(32506)
	step
		kill Zandalari Colossus##69405 |q 32230/1  |goto Isle of Thunder/0 42.8,64.0
		|tip He patrols around this circular path, some searching may be necessary.
		|only if haveq(32230)
	step
		kill Mighty Devilsaur##69406 |q 32228/1 |goto Isle of Thunder/0 53.2,56.3
		|tip He patrols around this circular path, some searching may be necessary.
		|only if haveq(32228)
	step
		kill Animated Warrior##67473+ |q 32285/1  |goto Isle of Thunder 43.0,55.2
		|only if haveq(32285)
	step
		kill Shan'ze Bloodseeker##69431+, Shan'ze Animator##70069+ |q 32287/1 |goto Isle of Thunder/0 47.0,61.4
		|only if haveq(32287)
	////TURNIN
	step
	label "turnin"
		talk Amalia Penshire##69371
		turnin The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder 47.0,66.8
		turnin Just Some Light Clean-Up Work##32299 |goto Isle of Thunder 47.0,66.8
		turnin Left to Rot##32491 |goto Isle of Thunder 47.0,66.8
		|only if haveq(32299) or haveq(32489) or haveq(32491)
	step
		talk Archmage Aethas Sunreaver##67660
		turnin The Skumblade Threat##32204 |goto Isle of Thunder 46.9,66.9
		turnin Manipulating the Saurok##32254 |goto Isle of Thunder 46.9,66.9
		turnin Subtle Encouragement##32605 |goto Isle of Thunder 46.9,66.9
		turnin The Skumblade Threat##32204 |goto Isle of Thunder 46.9,66.9
		turnin De-Constructed##32255 |goto Isle of Thunder 46.9,66.9
		|only if haveq(32489) or haveq(32605) or haveq(32254) or haveq(32255) or haveq(32204)
	step
		talk Sunwalker Dezco##69425
		turnin The Residents of Ihgaluk##32274 |goto Isle of Thunder 46.8,66.7
		|only if haveq(32274)
	step
		talk Elina Zaralae##69418
		turnin Dark Offerings##32217 |goto Isle of Thunder 36.7,64.7
		turnin Heinous Sacrifice##32215 |goto Isle of Thunder 36.7,64.7
		|only if haveq(32217) or haveq(32215)
	step
		talk Kethiel Sunlance##67984
		turnin Pterrible Ptorment##32216 |goto Isle of Thunder 36.8,64.9
		turnin Preventing a Future Threat##32227 |goto Isle of Thunder 36.8,64.9
		|only if haveq(32216) or haveq(32227)
	step
		talk Halduron Brightwing##70520
		turnin Harbingers of the Loa##32252 |goto Isle of Thunder 36.8,64.8
		turnin Surgical Death##32275 |goto Isle of Thunder 36.8,64.8
		turnin Dangers of the Za'Tual##32200 |goto Isle of Thunder 36.8,64.8
		accept Encroaching Force##32521 |goto Isle of Thunder 36.8,64.8
		accept The Beast Pens##32523 |goto Isle of Thunder 36.8,64.8
		accept The Beating of Troll Drums##32524 |goto Isle of Thunder 36.8,64.8
		accept Among the Bones##32293 |goto Isle of Thunder 36.8,64.8
		accept Imposing Threat##32522 |goto Isle of Thunder 36.8,64.8
		|only if haveq(32252) or haveq(32275) or haveq(32200) or completedq(32252) or completedq(32275) or completedq(32200)
		Click here when no more quests are available |confirm --|noquest
	step
		talk Ryshelle Brightlock##69389
		turnin Stone Cold##32219 |goto Isle of Thunder 38.5,51.2
		turnin Rise No More!##32224 |goto Isle of Thunder 38.5,51.2
		turnin Into the Crypts##32226 |goto Isle of Thunder 38.5,51.2
		turnin The Conquest of Stone##32517 |goto Isle of Thunder 38.5,51.2
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 38.6,51.1
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |goto Isle of Thunder 38.5,51.3
		turnin The Bloodletter##32495 |goto Isle of Thunder 38.5,51.3
		turnin Soul Surrender##32220 |goto Isle of Thunder 38.5,51.3
		turnin The Call of Thunder##32225 |goto Isle of Thunder 38.5,51.3
		accept Encroaching Force##32521 |or |goto Isle of Thunder 38.5,51.3
		accept Competing Magic##32520 |or |goto Isle of Thunder 38.5,51.3
		accept Imposing Threat##32522 |or |goto Isle of Thunder 38.5,51.3
		accept The Beating of Troll Drums##32524 |or |goto Isle of Thunder 38.5,51.3
		accept The Beast Pens##32523 |or |goto Isle of Thunder 38.5,51.3
		accept Among the Bones##32293 |or |goto Isle of Thunder 38.5,51.3
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212) and haveq(32201) or thunderstage()>=2 and completedq(32212) and completedq(32201)
	step
		talk Ryshelle Brightlock##69389
		turnin The Conquest of Stone##32517 |goto Isle of Thunder 32.9,52.6
		turnin Into the Crypts##32226 |goto Isle of Thunder 32.9,52.6
		turnin Stone Cold##32219 |goto Isle of Thunder 32.9,52.6
		turnin Rise No More!##32224 |goto Isle of Thunder 32.9,52.6
		|only if thunderstage()==1
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 33.1,53.0
		|only if thunderstage()==1
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |goto Isle of Thunder 33.0,52.8
		turnin Soul Surrender##32220 |goto Isle of Thunder 33.0,52.8
		turnin The Call of Thunder##32225 |goto Isle of Thunder 33.0,52.8
		accept Competing Magic##32561 |or |goto Isle of Thunder 33.0,52.8
		accept Imposing Threat##32562 |or |goto Isle of Thunder 33.0,52.8
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()==1
	step
		talk Lor'themar Theron##67990
		accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
		accept Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58
		accept Imposing Threat##32522 |goto Isle of Thunder/0 32.51,35.58
		accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 32.51,35.58
		accept The Beast Pens##32523 |goto Isle of Thunder/0 32.51,35.58
		accept Among the Bones##32293 |goto Isle of Thunder/0 32.51,35.58
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212) and not haveq(32201) and not completedq(32201)
	step
		kill 1 Horgak the Enslaver##70176 |q 32562/1 |only if haveq(32562) |goto Isle of Thunder/0 45.7,59.5
		kill 1 Horgak the Enslaver##70176 |q 32522/1 |only if haveq(32522) |goto Isle of Thunder/0 45.7,59.5
		|only if haveq(32562) or haveq(32522)
	step
		kill Arcweaver Jor'guva##69665 |q 32561/1 |only if haveq(32561) |goto Isle of Thunder 44.2,68.7
		kill Arcweaver Jor'guva##69665 |q 32520/1 |only if haveq(32520) |goto Isle of Thunder 44.2,68.7
		|only if haveq(32561) or haveq(32520)
	step
		kill Arcweaver Jor'guva##69665+ |q 32520/1 |goto Isle of Thunder 44.2,68.7
		|only if haveq(32520)
	step
		click Orb of Translocation##184500 |goto Isle of Thunder 33.0,52.6
		Teleport to the Crimson Treader |goto Isle of Thunder 28.5,51.6 |noway |c
		|only if haveq(32561)
	step
		kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.1,35.6
		|only if haveq(32521)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.9,79.4
		|only if haveq(32293)
	step
		talk Lor'themar Theron##67990
		turnin Competing Magic##32561 |goto Isle of Thunder 28.4,52.4
		turnin Encroaching Force##32521 |goto Isle of Thunder 28.4,52.4
		turnin Imposing Threat##32562 |goto Isle of Thunder 28.4,52.4
		|only if haveq(32561) or haveq(32521) or haveq(32562)
		|only if thunderstage()==1
	step
		talk Lor'themar Theron##67990
		turnin Za'Tual##32729 |goto Isle of Thunder 32.6,35.5
		turnin Encroaching Force##32521 |goto Isle of Thunder 32.6,35.5
		turnin Competing Magic##32520 |goto Isle of Thunder 32.6,35.5
		turnin Imposing Threat##32562 |goto Isle of Thunder 32.6,35.5
		turnin Imposing Threat##32522 |goto Isle of Thunder 32.6,35.5
		|only if thunderstage()>=2  and completedq(32212) or haveq(32729) or haveq(32521) or haveq(32520) or haveq(32562)
	step
		talk Archmage Aethas Sunreaver##67660
		turnin Subtle Encouragement##32605 |goto Isle of Thunder 32.6,33.0
		accept De-Constructed##32255 |goto Isle of Thunder 32.6,33.0
		accept The Skumblade Threat##32204 |goto Isle of Thunder 32.6,33.0
		Click here when no more quests are available |confirm --|noquest
		|only if haveq(32605) or haveq(32204) or haveq(32255)
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |only if haveq(32201) |goto Isle of Thunder 33.7,33.7
		turnin The Call of Thunder##32225 |only if haveq(32225) |goto Isle of Thunder 33.7,33.7
		turnin Soul Surrender##32220 |only if haveq(32220) |goto Isle of Thunder 33.7,33.7
		|only if haveq(32201) or haveq(32225) or haveq(32220)
	step
		talk Ryshelle Brightlock##69389
		turnin Rise No More!##32224 |only if haveq(32224) |goto Isle of Thunder 33.7,33.7
		turnin The Conquest of Stone##32517 |only if haveq(32517) |goto Isle of Thunder 33.7,33.7
		turnin Stone Cold##32219 |only if haveq(32219) |goto Isle of Thunder 33.7,33.7
		|only if haveq(32224) or haveq(32517) or haveq(32219)
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 33.6,33.9
		|only if haveq(32218)
	step
		talk Girana the Blooded##67673
		turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.5,35.2
		turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.5,35.2
		|only if haveq(32230) or haveq(32228) or completedq(32230) or completedq(32228)
	step
		talk Magister Hathorel##67663
		turnin A Wing to Fly On##32506 |goto Isle of Thunder 32.5,35.2
		|only if haveq(32506)
	step
		talk High Arcanist Savor##67662
		turnin The Sleepless Legion##32285 |goto Isle of Thunder 33.5,35.1
		turnin Enemies Beneath the Tower##32287 |goto Isle of Thunder 33.5,35.1
		|only if haveq(32285) or haveq(32287)
	step
		talk Elina Zaralae##69418
		turnin Heinous Sacrifice##32215 |goto Isle of Thunder 32.5,35.5
		turnin Dark Offerings##32217 |goto Isle of Thunder 32.5,35.5
		|only if haveq(32215) or haveq(32217)
	step
		talk Kethiel Sunlance##67984
		turnin Preventing a Future Threat##32227 |goto Isle of Thunder/0 32.5,35.6
		|only if haveq(32227)
	step
		talk Lor'themar Theron##67990
		accept Encroaching Force##32521 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Competing Magic##32520 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Imposing Threat##32522 |or 2 |goto Isle of Thunder 32.5,35.6
		accept The Beating of Troll Drums##32524 |or 2 |goto Isle of Thunder 32.5,35.6
		accept The Beast Pens##32523 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Among the Bones##32293 |goto Isle of Thunder 32.5,35.6
		Click here when no more quests are available |confirm --|noquest
	step
		kill Arcweaver Jor'guva##69665 |q 32561/1 |only if haveq(32561) |goto Isle of Thunder 44.2,68.7
		kill Arcweaver Jor'guva##69665 |q 32520/1 |only if haveq(32520) |goto Isle of Thunder 44.2,68.7
		|only if haveq(32561) or haveq(32520)
	step
		kill Nurkala##69663 |q 32521/1 |only if haveq(32521) |goto Isle of Thunder 45.0,35.5
		|only if haveq(32521)
	step
		kill 1 Horgak the Enslaver##70176 |q 32522/1 |only if haveq(32522) |goto Isle of Thunder/0 45.7,59.5
		|only if haveq(32522)
	step
		kill Zur'chaka the Bonecrafter##69666+ |goto Isle of Thunder 54.5,45.2
		|only if haveq(32294)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.9,79.4
		|only if haveq(32293)
	step
		talk Scout Captain Elsia##67985
		turnin Raining Bones##32294 |goto Isle of Thunder 47.2,40.7
		|only if haveq(32294)
	step
		talk Lor'themar Theron##67990
		turnin Harbingers of the Loa##32252 |goto Isle of Thunder 32.5,35.5
		turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder 32.5,35.5
		turnin Among the Bones##32293 |goto Isle of Thunder 32.5,35.5
		turnin Surgical Death##32275 |goto Isle of Thunder 32.5,35.5
		|only if haveq(32252) or haveq(32200) or haveq(32293) or haveq(32275)
	step
		Routing to proper section |next "beast" |only if haveq(32523) or completedq(32523)
		Routing to proper section |next "terrace" |only if haveq(32524) or completedq(32524)
		Routing to proper section |next "end" |only if default
	////CONQUEROR'S TERRACE
	step
	label "terrace"
		talk Scout Captain Elsia##67985
		turnin The Beating of Troll Drums##32524 |goto Isle of Thunder 54.0,49.8
		accept Very Disarming##32233 |goto Isle of Thunder 54.0,49.8
		accept This Just Won't Do##32206 |goto Isle of Thunder 54.0,49.8
		accept What's Inside Counts##32232 |goto Isle of Thunder 54.0,49.8
		Click here when no more quests are available |confirm --|noquest
		|only if haveq(32524) or completedq(32524)
	step
		talk Magister Edien Sunhollow##67986
		accept Power Play##32494 |or 2 |goto Isle of Thunder/0 53.9,49.9
		accept Knowledge Is Power##32234 |or 2 |goto Isle of Thunder/0 53.9,49.9
		accept They All Fall Down##32493 |or 2 |goto Isle of Thunder/0 53.9,49.9
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32524)
	stickystart "ritualfact"
	stickystart "loablade"
	stickystart "zandacapture"
	step
		kill Arcanital Ra'kul##69300
		collect Mask of the Dark Mystic##93734 |q 32494/2 |goto Isle of Thunder/0 56.8,46.3
		|only if completedq(32524)
	step
		kill Spiritbinder Tu'chek##69301
		collect Mask of the Spirit-Caller##93733 |q 32494/1 |goto Isle of Thunder/0 59.4,56.6
		|only if completedq(32524)
	step
		kill Guardian Tak'u##69336+ |q 32232/1 |goto Isle of Thunder/0 60.2,54.0
	step
	label "ritualfact"
		click Ritual Artifact##218053
		collect 6 Ritual Artifact##93735 |q 32234/1 |goto Isle of Thunder/0 57.1,50.4
		|only if completedq(32524)
	step
	label "loablade"
		click Loa-Infused Blade##218056
		collect 7 Loa-Infused Blade##93736 |q 32233/1 |goto Isle of Thunder/0 55.7,50.7
		|only if completedq(32524)
	step
	label "zandacapture"
		kill Zandalari Acolyte##69295+, Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+ |q 32206/1
		kill Spirit-Bound Sentry##69335+
		Use your _Resonance Siphon_ on Spirit-Bound Sentries.  |use Resonance Siphon##93806
		5 Zandalari Spirits captured |q 32493/1 |goto Isle of Thunder 55.7,50.7
		|only if completedq(32524)
	step
		talk Scout Captain Elsia##67985
		turnin This Just Won't Do##32206 |goto Isle of Thunder/0 53.9,49.8
		turnin Very Disarming##32233 |goto Isle of Thunder/0 53.9,49.8
		turnin What's Inside Counts##32232 |goto Isle of Thunder/0 53.9,49.8
		|only if completedq(32524)
	step
		talk Magister Edien Sunhollow##67986
		turnin Power Play##32494 |goto Isle of Thunder/0 53.9,49.8
		turnin Knowledge Is Power##32234 |goto Isle of Thunder/0 53.9,49.8
		turnin They All Fall Down##32493 |goto Isle of Thunder/0 53.9,49.8
		accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 53.9,49.8
		accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 53.9,49.8
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32524)
	step
		talk Scout Captain Elsia##67985
		accept Raining Bones##32294 |or |goto Isle of Thunder 54.0,49.9
		accept Encroaching Force##32565 |or |goto Isle of Thunder 54.0,49.9
		Click here when no more quests are available |confirm --|noquest
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32294/1 |goto Isle of Thunder 54.5,45.3
		|only if haveq(32294)
	step
		kill Nurkala##69663 |q 32565/1 |goto Isle of Thunder 61.9,61.6
		|only if haveq(32565)
	step
		talk Scout Captain Elsia##67985
		turnin Raining Bones##32294 |goto Isle of Thunder 53.9,49.8
		turnin Encroaching Force##32565 |goto Isle of Thunder 53.9,49.8
		|next "end" |only if thunderstage()<=3
	step
		Use your Arcane Emancipator on Scout Alaine |use Arcane Emancipator##93761
		Scout Alaine rescued |q 32209/3 |goto Isle of Thunder/1 28.0,62.2
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Elearis |use Arcane Emancipator##93761
		Scout Elearis rescued |q 32209/1 |goto Isle of Thunder/1 44.3,54.8
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Merior |use Arcane Emancipator##93761
		Scout Merior rescued |q 32209/2 |goto Isle of Thunder/1 54.3,35.2
		|only if haveq(32209)
	step
		clicknpc Lightning Drill##69671
		Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.0,69.9
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.6,37.5
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.2,15.4
		|only if haveq(32208)
	step
		kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32209)
	step
		kill Metal Lord Mono-Han##69326+ |q 32208/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32208)
	step
		Click the Quest Complete box in the upper left corner of your screen below your minimap
		turnin Save Our Scouts!##32209
		turnin Maximum Capacitor##32208
		accept Forge Ahead!##32292 |only if thunderstage()>=4
		Click here when no more quests are available |confirm --|noquest
		|next "end" |only if thunderstage()<=4
		|only if completedq(32524) or completedq(32523)
	step
		kill Itoka##69461+ |q 32292/1 |goto Isle of Thunder/0 57.7,34.0
		|only if completedq(32524) or completedq(32523)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment##93731 |q 32292/2 |goto Isle of Thunder/0 55.4,38.4
		|only if completedq(32524) or completedq(32523)
	step
		talk Scout Captain Elsia##70551
		turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.7,42.7
		|only if completedq(32524) or completedq(32523)
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32676 |goto Isle of Thunder/0 58.6,42.7
		accept Raiding the Vault##32677 |goto Isle of Thunder/0 58.6,42.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=5
	step
		kill Lu-Shero##69274+
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 58.6,66.2
		|only if haveq(32677)
	step
		click Stormy Chest##218853
		Choker of Storms |q 32677/1 |goto 33.2,28.3
		|only if haveq(32677)
	step
		collect Workshop Orders##95371 |q 32676/2 |goto Isle of Thunder/0 63.8,38.9
		|only if haveq(32676)
		|only if thunderstage()>=5
	step
		kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.7,46.3
		|only if haveq(32676)
		|only if thunderstage()>=5
	step
		talk Lor'themar Theron##67990
		turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.5,35.5
		turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.5,35.5
		turnin Competing Magic##32520 |goto Isle of Thunder/0 32.5,35.5
		|next "end"
		|only if thunderstage()>=5
	////BEAST PENS
	step
	label "beast"
		talk Scout Captain Elsia##67985
		Find Scout Captain Elsia at the Beast Pens |q 32523/1 |goto Isle of Thunder/0 47.1,40.7
		turnin The Beast Pens##32523 |goto Isle of Thunder/0 47.1,40.7
	step
		talk Magister Edien Sunhollow##67986
		accept Saur Loser##32207 |goto Isle of Thunder/0 47.2,40.8
		accept Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.2,40.8
		accept Loa-saur##32283 |goto Isle of Thunder/0 47.2,40.8
		Click here when no more quests are available |confirm --|noquest
	step
		talk Scout Captain Elsia##67985
		accept Dino Might##32298 |or |goto Isle of Thunder/0 47.1,40.7
		accept Compy Stomp##32282 |or |goto Isle of Thunder/0 47.1,40.7
		Click here when no more quests are available |confirm --|noquest
	stickystart "saurfetish"
	stickystart "trainedcompy"
	step
		kill Loa Speaker##69302 |q 32283/1 |goto 53.6,44.6
		|only if haveq(32283)
	step
	label "saurfetish"
		click Saur Fetish##218373
		kill Zandalari Saurcaller##69154+
		kill Zandalari Fetish-Binder##69155+
		collect 5 Saur Fetish##93668 |goto Isle of Thunder/0 49.7,38.8
		|only if haveq(32298)
	step
	label "trainedcompy"
		Use your _Saur Fetish_ on any dinosaurs near this spot |use Saur Fetish##93668 |only if haveq(32298)
		Use 5 Saur Fetishes on dinosaurs in the area |q 32298/1 |only if haveq(32298) |goto Isle of Thunder/0 49.2,40.9
		kill Trained Compy##58071+, Zandalari Fetish-Binder##69155+, Tamed Bladetalon##69180+, Zandalari Beastlord##69144+, Zandalari Fetish-Binder##69155+, Zandalari Saurcaller##69154+, Maturing Raptor##69183+
		Kill 10 Beast Pens Trolls |q 32207/1 |goto Isle of Thunder/0 49.2,40.9 |only if haveq(32207)
		You can find more around the following location |goto 49.4,38.2
		kill 5 Raptor |q 32282/1 |goto Isle of Thunder/0 49.2,40.9 |only if haveq(32282)
		You can find more raptors around the following location |goto 49.6,37.9 |only if haveq(32282)
		kill 10 Trained Compy |q 32282/2 |goto Isle of Thunder/0 49.2,40.9 |only if haveq(32282)
		|only if haveq(32207) or haveq(32298)
	step
		Kill all the _Master Callers_ surrounding the direhorn
		Disrupt the Binding Ritual |q 32297/1 |goto Isle of Thunder/0 51.8,32.9
		|only if haveq(32297)
	step
		talk Scout Captain Elsia##67985
		turnin Dino Might##32298 |goto Isle of Thunder/0 47.2,40.6
		turnin Compy Stomp##32282 |goto Isle of Thunder/0 47.2,40.6
	step
		talk Magister Edien Sunhollow##67986
		turnin Saur Loser##32207 |goto Isle of Thunder/0 47.3,40.8
		turnin Loa-saur##32283 |goto Isle of Thunder/0 47.3,40.8
		turnin Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.3,40.8
		accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 47.3,40.8
		accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 47.3,40.8
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32523)
	 step
		talk Scout Captain Elsia##67985
		accept Encroaching Force##32563 |goto Isle of Thunder 47.2,40.6
		accept Zandalari on the Rise##32564 |goto Isle of Thunder 47.2,40.6
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32523)
	step
		kill Arcweaver Jor'guva##69665 |q 32564/1 |goto Isle of Thunder 44.2,68.7
		|only if haveq(32564)
	step
		kill Nurkala##69663 |q 32563/1 |goto Isle of Thunder 45.3,35.1
		|only if haveq(32563)
	 step
		talk Scout Captain Elsia##67985
		turnin Encroaching Force##32563 |goto Isle of Thunder 47.2,40.6
		turnin Zandalari on the Rise##32564 |or |goto Isle of Thunder 47.2,40.6
	step
		Use your Arcane Emancipator on Scout Alaine |use Arcane Emancipator##93761
		Scout Alaine rescued |q 32209/3 |goto Isle of Thunder/1 28.0,62.2
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Elearis |use Arcane Emancipator##93761
		Scout Elearis rescue |q 32209/1 |goto Isle of Thunder/1 44.3,54.8
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Merior |use Arcane Emancipator##93761
		Scout Merior rescued |q 32209/2 |goto Isle of Thunder/1 54.3,35.2
		|only if haveq(32209)
	step
		clicknpc Lightning Drill##69671
		Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.0,69.9
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.6,37.5
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.2,15.4
		|only if haveq(32208)
	step
		kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32209)
	step
		kill Metal Lord Mono-Han##69326 |q 32208/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32208)
	step
		Click the Quest Complete box in the upper left corner of your screen below your minimap
		turnin Save Our Scouts!##32209
		turnin Maximum Capacitor##32208
		accept Forge Ahead!##32292
		Click here when no more quests are available |confirm --|noquest
		|only if haveq(32209) or completedq(32208) or haveq(32208) or completedq(32209)
	step
		kill Itoka##69461+ |q 32292/1 |goto Isle of Thunder/0 57.7,34.0
		|only if haveq(32292)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment##93731 |q 32292/2 |goto Isle of Thunder/0 55.4,38.4
		|only if haveq(32292)
	step
		talk Scout Captain Elsia##70551
		turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.7,42.7
		|only if haveq(32292)
		|next "end" |only if thunderstage()<=4
		|next |only if default |only if thunderstage()>=5
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32676 |or |goto Isle of Thunder/0 58.6,42.7
		accept Raiding the Vault##32677 |or |goto Isle of Thunder/0 58.6,42.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=4
	step
		kill Lu-Shero##69274+
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 58.6,66.2
		|only if haveq(32677)
	step
		click Stormy Chest##218853
		Choker of Storms |q 32677/1 |goto 33.2,28.3
		|only if haveq(32677)
	step
		collect Workshop Orders##95371 |q 32676/2 |goto Isle of Thunder/0 63.8,38.9
		|only if haveq(32676)
	step
		kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.7,46.3
		|only if haveq(32676)
	step
		talk Lor'themar Theron##67990
		turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.5,35.5
		turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.5,35.5
		|next "end"
	step
	label "end"
		talk Vasarin Redmorn##67672
		buy 1 Grand Commendation of the Sunreaver Onslaught##95548 |n |goto Isle of Thunder/0 33.4,32.4
		Use the Commendation of the Shado-Pan you just purchased |complete ZGV:GetReputation("Sunreaver Onslaught").hasBonus |use Grand Commendation of the Sunreaver Onslaught##95548
		|only if rep("Sunreaver Onslaught")>=Revered
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the guide |confirm |next "start"
]])

---------------------
----- Therazane -----
---------------------

ZygorGuidesViewer:RegisterInclude("H_Therazane_PreQuest",[[
		Click the Warchief's Command Board
		|tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
		accept Warchief's Command: Deepholm!##27722 |goto Orgrimmar,49.7,76.5
	step
		talk Farseer Krogar##45244
		turnin The War Has Many Fronts##27442 |goto 50.5,38.4
		turnin Warchief's Command: Deepholm!##27722 |goto 50.5,38.4
		accept The Maelstrom##27203 |goto 50.5,38.4
	step
		talk Thrall##45042
		turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
		accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
	step
		Click the Wyvern |goto 32.5,52.0
		|tip It looks like a wind rider flying in place.
		You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
	step
		talk Maruut Stonebinder##43065
		turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
		accept Gunship Down##26245 |goto Deepholm,49.6,53.0
	step
		talk Seer Kormo##43397
		accept Elemental Energy##27136 |goto 49.7,52.9
		accept The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Earthcaller Yevaa##42573
		accept Where's Goldmine?##26409 |goto 49.5,53.3
	step
		talk Caretaker Nuunwa##45300
		home Temple of Earth |goto 49.2,51.9
	step
		talk Initiate Goldmine##42574
		turnin Where's Goldmine?##26409 |goto 46.5,57.3
		accept Explosive Bonding Compound##26410 |goto 46.5,57.3
		accept Something that Burns##27135 |goto 46.5,57.3
	step
		kill Rockslice Flayer##42606+
		collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
	step
		talk Initiate Goldmine##42574
		turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
	step
		Use your Depleted Totem |use Depleted Totem##60835
		kill Lodestone Elemental##43258+, Energized Geode##43254+
		|tip Kill them next to your Depleted Totems.
		Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
	step
		Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		kill Magmatooth##45099
		collect The Burning Heart##60837 |q 27135/1 |goto 52.0,58.9
	step
		talk Seer Kormo##43397
		turnin Elemental Energy##27136 |goto 49.7,52.9
	step
		talk Initiate Goldmine##42574
		turnin Something that Burns##27135 |goto 46.5,57.3
		accept Apply and Flash Dry##26411 |goto 46.5,57.3
	step
		Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
		|tip He's laying on the ground next to Initiate Goldmine.
		Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
	step
		talk Initiate Goldmine##42574
		turnin Apply and Flash Dry##26411 |goto 46.5,57.3
		accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
	step
		Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
	step
		talk Earthcaller Yevaa##42573
		turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
		accept To Stonehearth's Aid##26484 |goto 49.5,53.3
	stickystart "deepstoneelemental"
	step
		Click the Slain Cannoneer
		|tip It looks like a dead orc on the deck of the crashed zeppelin, laying next to a pile of cannon balls and a cannon.
		Receive the Second Clue |q 26245/2 |goto 56.1,74.2
	step
		Click Captain Skullshatter
		|tip He's a dead orc laying on the ground next to a small round table in a side room on the deck of the crashed zeppelin.
		Receive the First Clue |q 26245/1 |goto 53.5,73.8
	step
		Click the Captain's Log
		|tip It's a gray book laying on the small round table next to Captain Skullshatter.
		accept Captain's Log##26246 |goto 53.6,73.8
	step
		Click the Unexploded Artillery Shell
		|tip It looks like a metal casing, or bullet type of object laying on the ground underneath the crashed zeppelin.  You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
		Receive the Third Clue |q 26245/3 |goto 56.7,76.4
	step
	label "deepstoneelemental"
		kill 5 Deepstone Elemental |q 26244/1 |goto 55.9,74.9
	step
		talk Maruut Stonebinder##43065
		turnin Gunship Down##26245 |goto 49.6,52.9
		turnin Captain's Log##26246 |goto 49.6,52.9
	step
		talk Seer Kormo##43397
		turnin The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Maruut Stonebinder##43065
		accept Diplomacy First##26247 |goto 49.6,53.0
	step
		talk Stormcaller Mylra##42684
		turnin Diplomacy First##26247 |goto 62.4,52.6
		accept All Our Friends Are Dead##26248 |goto 62.4,52.6
		accept The Admiral's Cabin##26249 |goto 62.4,52.6
	step
		All around on this airship:
		Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
		|tip They look like dead Alliance soldiers all over this airship.
		Receive 6 Slain Crew Member Information |q 26248/1
	step
		Enter the doorway on the main deck of the airship:
		talk First Mate Moody##43082
		turnin The Admiral's Cabin##26249
		accept Without a Captain or Crew##26427
	step
		Leave through the doorway and immediately turn right:
		Click the Bottle of Whiskey
		|tip It's a yellow bottle sitting on the edge of a small life boat on the side of the airship.
		collect Bottle of Whiskey##58798 |q 26427/1
	step
		All around on the deck of the airship:
		Click a Spool of Rope
		|tip They are coiled up ropes laying all around on the deck of the airship.
		collect Spool of Rope##58806 |q 26427/2
	step
		Enter the doorway on the main deck of the airship:
		talk First Mate Moody##43082
		turnin Without a Captain or Crew##26427
	step
		Go to the very top of the airship:
		talk Stormcaller Mylra##42684
		turnin All Our Friends Are Dead##26248
		accept Take No Prisoners##26251
		accept On Second Thought, Take One Prisoner##26250
	stickystart "twisaboteur"
	step
		Go onto the main deck of the ship and go down the stairs to the deck below:
		Fight Mor'norokk the Hateful until he surrenders
		|tip He's downstairs in the airship, in the very back of the first level you come to.
		talk Mor'norokk the Hateful##42801
		Subdue Mor'norokk the Hateful |q 26250/1
	step
	label "twisaboteur"
		All around on this lower deck of the airship:
		kill 6 Twilight Saboteur |q 26251/1
	step
		Go to the very top of the airship:
		talk Stormcaller Mylra##42684
		turnin Take No Prisoners##26251
		turnin On Second Thought, Take One Prisoner##26250
		accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		Click Stormbeak
		|tip It's a gryphon flying in place next to the airship.
		Interrogate Mok'norrok |q 26254/1
	step
		When you land on the airship again:
		talk Stormcaller Mylra##42684
		turnin Some Spraining to Do##26254
		accept Return to the Temple of Earth##26255
	step
		talk Maruut Stonebinder##43065
		turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
		accept Deathwing's Fall##26258 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		accept Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		Go to this spot
		Reach Deathwing's Fall |q 26258/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Deathwing's Fall##26258 |goto 59.4,58.2
		accept Bleed the Bloodshaper##26256 |goto 59.4,58.2
	stickystart "livingblood"
	step
		kill Twilight Bloodshaper##43218+
		collect Twilight Orders##60264 |q 26256/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Bleed the Bloodshaper##26256 |goto 61.5,60.6
		accept Question the Slaves##26261 |goto 61.5,60.6
	step
		Click the Slavemaster's Coffer
		|tip It looks like a small wooden chest on the ground inside a red tent.
		collect Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
	step
	label "livingblood"
		kill Living Blood##43123+
		collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
	step
		Click Ball and Chains
		|tip They are attached to the feet of the Enslaved Miners around this area.
		Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Question the Slaves##26261 |goto 64.5,65.5
		accept The Forgemaster's Log##26260 |goto 64.5,65.5
	step
		Click the Forgemaster's Log
		|tip It's a blue-ish book laying on the floor at the very top of this tower.
		turnin The Forgemaster's Log##26260 |goto 63.7,55.4
		accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
	step
		Reach Upper Silvermarsh |q 27007/1 |goto 70.6,61.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Silvermarsh Rendezvous##27007
		accept Quicksilver Submersion##27010
	step
		Click the Trogg Crate
		|tip It's a brown box sitting next to the water.
		collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
		kill Murkstone Trogg##44936
		collect Maziel's Research##60816 |n
		Click Maziel's Research in your bags |use Maziel's Research##60816
		accept Twilight Research##27100
	step
		Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		Watch the dialogue
		Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Quicksilver Submersion##27010 |goto 74.9,64.8
		accept The Twilight Overlook##27061 |goto 74.9,64.8
	step
		kill Mercurial Ooze##43158+
		collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.5,65.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Twilight Research##27100 |goto 72.5,65.2
		accept Maziel's Revelation##27101 |goto 72.5,65.2
	step
		Click Maziel's Journal
		|tip It looks like a small black book laying on the ground on this tiny island in a pond, next to a big rock.
		turnin Maziel's Revelation##27101 |goto 67.2,70.2
		accept Maziel's Ascendancy##27102 |goto 67.2,70.2
	step
		Enter the cave |goto 69.5,68.0 < 15
		kill Maziel |q 27102/1 |goto 72.8,62.0
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Maziel's Ascendancy##27102 |goto 72.8,62.0
	step
		Leave the cave |goto 69.5,68.0 < 15
		talk Stormcaller Mylra##44010
		turnin The Twilight Overlook##27061 |goto 64.5,82.1
		accept Big Game, Big Bait##26766 |goto 64.5,82.1
		accept To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Scalesworn Cultist##44221+
		collect Twilight Snare##60383 |q 26768/1 |goto 68.2,77.9
	step
		talk Stormcaller Mylra##44010
		turnin To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Jadecrest Basilisk##43981+
		Use Mylra's Knife on Jadefire Basilisk corpses |use Mylra's Knife##60382
		collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 59.9,83.6
	step
		talk Stormcaller Mylra##44010
		turnin Big Game, Big Bait##26766 |goto 64.5,82.1
		accept Testing the Trap##26771 |goto 64.5,82.1
	step
		Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		kill Stonescale Matriarch |q 26771/1 |goto 50.9,85.3
	step
		talk Stormcaller Mylra##44010
		turnin Testing the Trap##26771 |goto 64.5,82.1
		accept Abyssion's Minions##26857 |goto 64.5,82.1
	step
		talk Seer Galekk##44222
		accept Block the Gates##26861 |goto 64.6,82.2
	stickystart "abyssionunder"
	step
		Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
	step
		Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
	step
	label "abyssionunder"
		kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
		Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
	step
		talk Seer Galekk##44222
		turnin Block the Gates##26861 |goto 64.6,82.2
	step
		talk Stormcaller Mylra##44010
		turnin Abyssion's Minions##26857 |goto 64.5,82.2
		accept The World Pillar Fragment##26876 |goto 64.5,82.2
	step
		Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		kill Abyssion##
		Click The First Fragment of the World Pillar
		|tip It's a floating green rock that appears after you kill Abyssion.
		collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.9,76.9
	step
		talk Maruut Stonebinder##43065
		turnin The World Pillar Fragment##26876 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		talk Crag Rockcrusher##43071
		turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
		accept The Quaking Fields##27931 |goto 27.9,68.7
	step
		talk Slate Quicksand##47195
		turnin The Quaking Fields##27931 |goto 30.6,77.7
		accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		accept Elemental Ore##27933 |goto 30.6,77.7
	step
		Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		|tip They look like glowing giants that walk around this area.
		kill 5 Sundered Emerald Colossus |q 27932/1 |goto 32.2,79.1
		kill Jade Rager##44220+
		collect 6 Elemental Ore##60487 |q 27933/1 |goto 32.2,79.1
	step
		talk Slate Quicksand##47195
		turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		turnin Elemental Ore##27933 |goto 30.6,77.7
		accept One With the Ground##27934 |goto 30.6,77.7
	step
		talk Slate Quicksand##47195
		Tell him you are ready for the ritual
		Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin One With the Ground##27934 |goto 30.6,77.7
		accept Bring Down the Avalanche##27935 |goto 30.6,77.7
	step
		kill Avalanchion |q 27935/1 |goto 46.9,89.1
	step
		Leave the cave |goto 43.4,82.0 < 15
		talk Crag Rockcrusher##43071
		turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
		accept Stonefather's Boon##26499 |goto 27.9,68.7
	step
		talk Earthbreaker Dolomite##43160
		accept We're Surrounded##26500 |goto 28.2,69.6
	step
		kill 12 Stone Trogg Ambusher##43134 |q 26500/1 |goto 29.7,68.8
		Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
		|tip They look like dwarves. Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
		Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
	step
		talk Earthbreaker Dolomite##43160
		turnin We're Surrounded##26500 |goto 28.2,69.6
		accept Thunder Stones##26502 |goto 28.2,69.6
	step
		talk Crag Rockcrusher##43071
		turnin Stonefather's Boon##26499 |goto 27.9,68.7
		accept Sealing the Way##26501 |goto 27.9,68.7
	stickystart "thunderstones"
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Shrine |q 26501/4 |goto 27.3,67.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Barracks |q 26501/3 |goto 26.0,68.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Inn |q 26501/2 |goto 26.2,69.8
	step
	label "thunderstones"
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Armory |q 26501/1 |goto 27.3,70.1
		Click Thunder Stones |tip They looks like blue round spiked cannonballs on the ground and in wagons around this area
		get 12 Thunder Stone |q 26502/1 |goto 27.3,70.1
	step
		talk Gravel Longslab##43168
		turnin Sealing the Way##26501 |goto 24.5,62.4
		accept Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		turnin Thunder Stones##26502 |goto 24.8,62.2
		accept Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Earthmender Deepvein##43319
		accept Battlefront Triage##26591 |goto 24.6,62.2
	step
		Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
		|tip They look like dwarves laying on the ground around this area.
		Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
		Click Catapult Parts
		|tip They look kind of like big metal parts laying on the ground around this area
		collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
		kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
		kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
	step
		talk Gravel Longslab##43168
		turnin Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Earthmender Deepvein##43319
		turnin Battlefront Triage##26591 |goto 24.6,62.2
	step
		talk Clay Mudaxle##43169
		turnin Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Gravel Longslab##43168
		accept Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		kill Troggzor the Earthinator##43456
		collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.6,56.9
	step
		talk Gravel Longslab##43168
		turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		accept Rush Delivery##27126 |goto 24.8,62.2
	step
		talk Peak Grindstone##45043
		turnin Rush Delivery##27126 |goto 20.7,61.6
		accept Close Escort##26632 |goto 20.7,61.6
	step
		talk Peak Grindstone##45043
		Tell him you're ready to escort the catapult
		Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
	step
		talk Pyrium Lodestone##43897
		turnin Close Escort##26632 |goto 22.7,52.0
		accept Keep Them off the Front##26755 |goto 22.7,52.0
	step
		Click an Earthen Catapult
		|tip They look like wooden launchers with stone wheels.
		Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		Bombarb 30 Reinforcements |q 26755/1 |goto 22.4,52.0
	step
		talk Pyrium Lodestone##43897
		turnin Keep Them off the Front##26755 |goto 22.7,52.0
		accept Reactivate the Constructs##26762 |goto 22.7,52.0
	step
		talk Flint Oremantle##43898
		accept Mystic Masters##26770 |goto 22.8,52.1
	step
		Click Deactivated War Construct
		|tip They look like metal golems around this area.
		Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
		kill 5 Needlerock Mystic |q 26770/1 |goto 22.6,47.6
	step
		talk Flint Oremantle##43898
		turnin Mystic Masters##26770 |goto 22.8,52.1
	step
		talk Pyrium Lodestone##43897
		turnin Reactivate the Constructs##26762 |goto 22.7,52.0
		accept Down Into the Chasm##26834 |goto 22.7,52.0
	step
		talk Slate Quicksand##44143
		turnin Down Into the Chasm##26834 |goto 27.6,44.8
		accept Sprout No More##26791 |goto 27.6,44.8
		accept Fungal Monstrosities##26792 |goto 27.6,44.8
	step
		Click the War Guardian
		|tip It looks like a metal golem.
		Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
		Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
	step
		kill 5 Fungal Monstronsity |q 26792/2 |goto 26.8,41.8
		Click Giant Mushrooms
		|tip They look like huge mushrooms with orange caps around this area.
		Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
	step
		talk Slate Quicksand##44143
		turnin Sprout No More##26791 |goto 27.6,44.8
		turnin Fungal Monstrosities##26792 |goto 27.6,44.8
		accept A Slight Problem##26835 |goto 27.6,44.8
	step
		talk Pyrium Lodestone##43897
		turnin A Slight Problem##26835 |goto 22.7,52.0
		accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
	step
		kill Bouldergut##44151
		Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
	step
		talk Pyrium Lodestone##43897
		turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
		accept The Hero Returns##27937 |goto 22.7,52.0
	step
		talk Stonefather Oremantle##44204
		turnin The Hero Returns##27937 |goto 28.0,68.6
		accept The Middle Fragment##27938 |goto 28.0,68.6
	step
		Click The Stonefather's Safe
		|tip It looks like a metal vault door with gold circles and symbols on it.
		collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.0,68.7
	step
		talk Earthcaller Yevaa##42573
		turnin The Middle Fragment##27938 |goto 49.5,53.3
	step
		talk Maruut Stonebinder##43065
		accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
	step
		talk Earthcaller Torunscar##42730
		turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
		accept Crumbling Defenses##26312 |goto 46.1,45.6
		accept On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Core of Our Troubles##26313 |goto 46.2,45.7
	stickystart "servanttherazane"
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane
		use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
	step
	label "servanttherazane"
		kill Irestone Rumbler##42780+
		collect 6 Irestone Core##58168 |q 26313/1 |goto 46.2,42.2
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
	step
		talk Earthmender Norsala##42731
		turnin Core of Our Troubles##26313 |goto 46.2,45.7
	step
		talk Earthcaller Torunscar##42730
		turnin Crumbling Defenses##26312 |goto 46.1,45.6
		turnin On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Imposing Confrontation##26315 |goto 46.2,45.7
	step
		Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
		|tip He's a huge rock giant that walks around this area.
		Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
	step
		talk Earthmender Norsala##42731
		turnin Imposing Confrontation##26315 |goto 46.2,45.7
		accept Rocky Relations##26328 |goto 46.2,45.7
	step
		talk Diamant the Patient##42467
		turnin Rocky Relations##26328 |goto 56.5,42.7
		accept Hatred Runs Deep##26376 |goto 56.5,42.7
		accept Unsolid Ground##26377 |goto 56.5,42.7
	step
		talk Quartz Stonetender##42899
		accept Loose Stones##26375 |goto 56.5,41.0
	stickystart "jadecluster"
	stickystart "lorthunacult"
	step
		kill Dragul Giantbutcher |q 26376/1 |goto 60.2,39.4
	step
	label "jadecluster"
		Click Jade Crystal Clusters
		|tip They look like green glowing rocks sitting on the ground all around this area.
		collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
		Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
		|tip They look like small rock giants around this area.
		Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
	step
		Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		collect Jade Crystal Composite##58783 |q 26377
	step
		Use your Jade Crystal Composite |use Jade Crystal Composite##58783
		Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
	step
	label "lorthunacult"
		kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
		kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
	step
		talk Quartz Stonetender##42899
		turnin Loose Stones##26375 |goto 56.5,41.0
	step
		talk Diamant the Patient##42467
		turnin Hatred Runs Deep##26376 |goto 56.5,42.7
		turnin Unsolid Ground##26377 |goto 56.5,42.7
		accept Violent Gale##26426 |goto 56.5,42.7
	step
		Get next to Felsen the Enduring
		|tip He's a big white rock giant.
		Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
	step
		Fly to the mouth of this cave
		Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Violent Gale##26426
		accept Depth of the Depths##26869 |goto 58.4,25.7
	step
		Follow the path |goto 64.5,21.7 < 15
		Follow the path |goto 65.3,18.4 < 20
		Click the Gigantic Painite Cluster
		|tip It looks like a green crystal cluster near the mouth of the cave.
		turnin Depth of the Depths##26869
		accept A Rock Amongst Many##26871 |goto 66.4,20.6
	step
		Follow the path to this spot, then jump down |goto 64.3,23.5 < 15
		Leave the cave |goto 58.3,25.5 < 15
		talk Diamant the Patient##42467
		turnin A Rock Amongst Many##26871 |goto 56.5,42.7
		accept Entrenched##26436 |goto 56.5,42.7
	step
		talk Kor the Immovable##42469
		turnin Entrenched##26436 |goto 34.3,34.3
		accept Intervention##26438 |goto 34.3,34.3
		accept Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		accept Putting the Pieces Together##26439 |goto 34.6,34.2
	step
		kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+
		kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
		Click Chalky Crystal Formations
		|tip They look like big white blocks on the ground around this area.
		collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 30.5,46.8
		Click Dormant Stonebound Elementals
		|tip They look like crumbled rock elementals on the ground around this area.
		Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
	step
		talk Kor the Immovable##42469
		turnin Intervention##26438 |goto 34.3,34.3
		turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		turnin Putting the Pieces Together##26439 |goto 34.5,34.4
	step
		Next to you:
		talk Pebble##43116
		accept Clingy##26440
	step
		Get next to the huge green crystals
		Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
	step
		Next to you:
		talk Pebble##43116
		turnin Clingy##26440
		accept So Big, So Round...##26441
	step
		talk Kor the Immovable##42469
		turnin So Big, So Round...##26441 |goto 34.3,34.3
		accept Petrified Delicacies##26507 |goto 34.3,34.3
		accept Rock Bottom##26575 |goto 34.3,34.3
	stickystart "petrifiedstonebat"
	step
		kill Gorgonite |q 26575/1 |goto 47.6,26.8
	step
	label "petrifiedstonebat"
		 Click Petrified Stone Bats
		|tip They looks like black stone bats laying on the ground around this area.
		collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
	step
		Next to you:
		talk Pebble##43116
		turnin Petrified Delicacies##26507
	step
		talk Kor the Immovable##42469
		turnin Rock Bottom##26575 |goto 34.3,34.3
		accept Steady Hand##26576 |goto 34.3,34.3
		accept Rocky Upheaval##26577 |goto 34.3,34.3
	step
		talk Terrath the Steady##42466
		turnin Steady Hand##26576 |goto 39.9,19.4
		accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
	step
		talk Terrath the Steady##42466
		Tell him: _You are ready to escort a group of elementals across the open._
		Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
	step
		Go to this spot
		Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
		|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
	step
		talk Terrath the Steady##42466
		turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
		accept Hard Falls##26657 |goto 39.9,19.4
		accept Fragile Values##26658 |goto 39.9,19.4
	step
		kill Stone Trogg Beast Tamer##43598
		|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		collect Stonework Mallet##59323 |q 26658/1 |goto 35.4,22.5
	step
		talk Terrath the Steady##42466
		turnin Fragile Values##26658 |goto 39.9,19.4
	step
		kill 6 Stone Drake |q 26657/1 |goto 36.5,18.8
		|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		talk Terrath the Steady##42466
		turnin Hard Falls##26657 |goto 40.0,19.4
		accept Resonating Blow##26659 |goto 40.0,19.4
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
		kill Aeosera##43641
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 26659/2 |goto 32.7,24.3
	step
		talk Terrath the Steady##42466
		turnin Resonating Blow##26659 |goto 33.1,24.1
	step
		talk Earthcaller Yevaa##42573
		accept The Reliquary##27953 |goto 49.5,53.3
	step
		talk Examiner Rowe##44823
		turnin The Reliquary##27953 |goto 51.3,50.1
		accept The Twilight Plot##27005 |goto 51.3,50.1
	step
		talk Reliquary Jes'ca Darksun##44818
		accept Fly Over##27008 |goto 51.3,50.0
	stickystart "mastergate"
	step
		Go to this spot next to the big white portal
		Investigate the Master's Gate |q 27008/1 |goto 39.0,74.2
	step
	label "mastergate"
		kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		collect Masters' Gate Plans##60745 |q 27005/1 |goto 40.1,72.2
	step
		talk Examiner Rowe##44823
		turnin The Twilight Plot##27005 |goto 51.3,50.1
	step
		talk Reliquary Jes'ca Darksun##44818
		turnin Fly Over##27008 |goto 51.3,50.0
		accept Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
	step
		talk Examiner Rowe##44823
		accept Decryption Made Easy##27041 |goto 51.3,50.1
	stickystart "decryptplans"
	step
		kill Bound Water Elemental##44886
		Acquire the Water Ward |q 27043/2 |goto 40.8,66.3
	step
		kill Bound Fire Elemental##44887
		Acquire the Fire Ward |q 27043/1 |goto 36.0,67.4
	step
		kill Bound Air Elemental##44885
		Acquire the Air Ward |q 27043/3 |goto 40.5,72.4
	step
	label "decryptplans"
		Click One-Time Decryption Engines
		|tip They look like machines around this area with a circular scroll spinning around them, and yellow cores floating in the middle of the spinning scrolls.
		Decrypt 6 Plans |q 27041/1  |goto 40.2,67.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Decryption Made Easy##27041 |goto 40.2,67.5
		accept The Wrong Sequence##27059 |goto 40.2,67.5
	step
		Click the Waygate Controller
		|tip It looks like a cylinder stone container with a stone ring on top of it, sitting in front of the huge white portal.
		Destroy the Waygate |q 27059/1 |goto 39.1,73.9
	step
		kill Haethen Kaul |q 27043/4 |goto 39.9,62.2
		|tip He's up on a huge floating rock.
	step
		talk Examiner Rowe##44823
		turnin The Wrong Sequence##27059 |goto 51.3,50.0
		accept That's No Pyramid!##28293 |goto 51.3,50.0
	step
		talk Reliquary Jes'ca Darksun##44818
		turnin Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
	step
		talk Gorsik the Tumultuous##42472
		turnin Rocky Upheaval##26577 |goto 72.2,54.0
		accept Doomshrooms##26578 |goto 72.2,54.0
		accept Gone Soft##26579 |goto 72.2,54.0
		accept Familiar Intruders##26580 |goto 72.2,54.0
	step
		talk Windspeaker Lorvarius##43395
		turnin Familiar Intruders##26580 |goto 71.8,47.6
		accept A Head Full of Wind##26581 |goto 71.8,47.6
	step
		kill 8 Fungal Behemoth |q 26579/1 |goto 73.6,40.8
		kill Doomshroom##+
		|tip They look like orange mushrooms around this area.
		Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
		Gather a sample of the red mist|q 26581/1 |goto 73.6,40.8
		|tip There are small clouds of red mist that float around on the ground around this area. Walk into one of them to gather a sample.
	step
		talk Windspeaker Lorvarius##43395
		turnin A Head Full of Wind##26581 |goto 71.8,47.6
		accept Unnatural Causes##26582 |goto 71.8,47.6
	step
		talk Gorsik the Tumultuous##42472
		turnin Doomshrooms##26578 |goto 72.2,54.0
		turnin Gone Soft##26579 |goto 72.2,54.0
		turnin Unnatural Causes##26582 |goto 72.2,54.0
		accept Shaken and Stirred##26584 |goto 72.2,54.0
		accept Corruption Destruction##26585 |goto 72.2,54.0
	step
		talk Ruberick##43442
		accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
	step
		_Enter_ the cave |goto 68.6,29.1 < 15
		talk Earthmender Norsala##43503
		Tell her: "I'm ready when you are."
		kill Fungalmancer Glop |q 26583/2 |goto 69.8,31.9
		|tip Follow him each time he runs away. Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
	step
		Follow the path up |goto 70.2,33.8 < 15
		Leave the cave |goto 68.6,29.1 < 15
		talk Ruberick##43442
		turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
	step
		kill 8 Verlok Pillartumbler |q 26584/1 |goto 69.4,24.8
		Click Verlok Miracle-grow
		|tip They look like gray bags sitting on the ground around this area.
		collect 8 Verlok Miracle-grow##59123 |q 26585/1 |goto 69.4,24.8
	step
		talk Gorsik the Tumultuous##42472
		turnin Shaken and Stirred##26584 |goto 72.2,54.0
		turnin Corruption Destruction##26585 |goto 72.2,54.0
		accept At the Stonemother's Call##26750 |goto 72.2,54.0
	step
		talk Therazane##42465
		turnin At the Stonemother's Call##26750 |goto 56.3,12.2
		accept Audience with the Stonemother##26752 |goto 56.3,12.2
	step
		Watch the dialogue
		Attend the Stonemother's Audience |q 26752/1
	step
		talk Earthcaller Torunscar##43809
		turnin Audience with the Stonemother##26752 |goto 56.1,13.5
		accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
	step
		talk Hargoth Dimblaze##44644
		Tell him you are joining an assault on Lorthuna's Gate and he is needed |goto 49.9,50.1
		|confirm
	step
		talk Stormcaller Jalara##44633
		Tell her you are joining an assault on Lorthuna's Gate and she is needed |goto 51.5,51.8
		|confirm
	step
		talk Hargoth Dimblaze##44644
		Tell him you are joining an assault on Lorthuna's Gate and he is needed |goto 49.9,50.1
		Rally 5 Earthen Ring |q 26827/1
	step
		talk Maruut Stonebinder##43065
		turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
		accept Our Part of the Bargain##26828 |goto 49.6,53.0
	step
		talk Therazane##44025
		turnin Our Part of the Bargain##26828 |goto 63.3,25.0
		accept The Stone March##26829 |goto 63.3,25.0
		accept Therazane's Mercy##26832 |goto 63.3,25.0
	step
		talk Boden the Imposing##44080
		accept The Twilight Flight##26831 |goto 62.6,26.9
	stickystart "twililghtprecipice"
	step
		kill High Priestess Lorthuna##42914
		|tip She is in a small room on the top of this building. She is elite, but you can still kill her. She will run away when she is almost dead.
		Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
	step
		kill Boldrich Stonerender##42923
		Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
	step
		kill Zoltrik Drakebane##42918
		|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane. You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
		Defeat Zoltrik Drakebane |q 26831/1 |goto 63.1,38.1
	step
		talk Terrath the Steady##42614
		turnin The Twilight Flight##26831 |goto 64.1,36.9
	step
	label "twililghtprecipice"
		kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		kill 15 Twilight Precipice Cultists |q 26829/1 |goto 60.3,33.2
	step
		talk Therazane##44025
		turnin The Stone March##26829 |goto 63.3,25.0
		turnin Therazane's Mercy##26832 |goto 63.3,25.0
		accept Word In Stone##26833 |goto 63.3,25.0
	step
		talk Maruut Stonebinder##43818
		turnin Word In Stone##26833 |goto 49.6,53.0
		accept Undying Twilight##26875 |goto 49.6,53.0
	step
		kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
		kill Desecrated Earthrager |q 26875/2 |goto 50.7,49.6
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Undying Twilight##26875 |goto 50.7,49.6
		accept The Binding##26971 |goto 50.7,49.6
	step
		kill High Priestess Lorthuna |q 26971/1 |goto 49.6,52.9
	step
		talk Earthcaller Torunscar##43835
		turnin The Binding##26971 |goto 49.6,52.9
	step
		talk Therazane##43792
		accept The Stone Throne##26709 |goto 49.8,53.4
	step
		talk Therazane##42465
		turnin The Stone Throne##26709 |goto 56.4,12.1
]])

-----------------------
----- The Tillers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Tillers_Dailies",[[
		Proceeding to the Tiller's Dailies  |next "dailies" |complete completedq(31945) |only if completedq(31945)
		Proceeding to the Tiller's Prequests |next |complete not completedq(31945) |only if not completedq(31945)
	step
	label "Tillers_Prequests"
		talk Farmer Yoon##58721
		accept A Helping Hand##30252 |goto Valley of the Four Winds/0 52.02,48.01
	step
		clicknpc Unbudging Rock##58719
		Clear the First Unbudging Rock |q 30252/1 |goto 52.23,47.66 |count 1
	step
		clicknpc Unbudging Rock##58719
		Clear the Second Unbudging Rock |q 30252/1 |goto 52.10,48.02 |count 2
	step
		clicknpc Unbudging Rock##58719
		Clear the Third Unbudging Rock |q 30252/1 |goto 51.89,48.39 |count 3
	step
		clicknpc Unbudging Rock##58719
		Clear the Fourth Unbudging Rock |q 30252/1 |goto 51.70,48.70 |count 4
	step
		clicknpc Unbudging Rock##58719
		Clear the Fifth Unbudging Rock |q 30252/1 |goto 51.55,49.30 |count 5
	step
		clicknpc Unbudging Rock##58719
		Clear the Sixth Unbudging Rock |q 30252/1 |goto 51.90,49.16 |count 6
	step
		clicknpc Unbudging Rock##58719
		Clear the Seventh Unbudging Rock |q 30252/1 |goto 52.36,49.23 |count 7
	step
		clicknpc Unbudging Rock##58719
		Clear the Final Unbudging Rock |q 30252/1 |goto 52.83,49.86 |count 8
	step
		Go up the stairs |goto 52.22,48.47 < 7 |only if walking
		Enter the building |goto 52.56,48.12 < 7 |walk
		talk Farmer Yoon##58646
		turnin A Helping Hand##30252 |goto 52.75,47.94
	step
		Leave the building |goto 52.53,48.15 < 5 |walk
		Go down the stairs |goto 52.20,48.49 < 7 |only if walking
		talk Farmer Yoon##58646
		|tip Wait for the dialogue to complete.
		accept Learn and Grow I: Seeds##30535 |goto 52.25,48.79
	step
		Follow the path |goto 52.64,50.43 < 10 |only if walking
		Follow the path |goto 53.16,51.39 < 10 |only if walking
		talk Merchant Greenfield##58718
		Tell him _"I'm here to pick up seeds for Farmer Yoon."_
		Get a Packet of Green Cabbage Seeds |q 30535/1 |goto 52.88,52.14
	step
		Follow the path |goto 53.15,51.03 < 10 |only if walking
		talk Farmer Yoon##58646
		turnin Learn and Grow I: Seeds##30535 |goto 52.25,48.79
		accept Learn and Grow II: Tilling and Planting##30254 |goto 52.25,48.79
	step
		clicknpc Untilled Soil##59985
		Till the Soil |q 30254/1 |goto 52.01,48.44 |count 1
	step
		use EZ-Gro Green Cabbage Seeds##80302
		Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto 52.01,48.44 |count 1
	step
		clicknpc Untilled Soil##59985
		Till the Soil |q 30254/1 |goto 52.03,48.25 |count 2
	step
		use EZ-Gro Green Cabbage Seeds##80302
		Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto 52.03,48.25 |count 2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow II: Tilling and Planting##30254 |goto 52.25,48.79
		accept Learn and Grow III: Tending Crops##30255 |goto 52.25,48.79
	step
		use Rusty Watering Can##79104
		Water the First Parched EZ-Gro Green Cabbage |q 30255/1 |goto 52.01,48.44 |count 1
	step
		use Rusty Watering Can##79104
		Water the Second Parched EZ-Gro Green Cabbage |q 30255/1 |goto 52.03,48.23 |count 2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow III: Tending Crops##30255 |goto 52.25,48.79
		accept Learn and Grow IV: Harvesting##30256 |goto 52.25,48.79
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		|tip Wait a moment for it to ripen fully.
		collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.01,48.44 |count 1
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.03,48.23 |count 2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow IV: Harvesting##30256 |goto 52.25,48.79
		accept Learn and Grow V: Halfhill Market##30257 |goto 52.25,48.79
	step
		Follow the path |goto 52.91,48.41 < 5 |only if walking
		click Dark Soil##210582
		collect Marsh Lily##79268 |q 30257/1 |goto 52.83,48.00
	step
		talk Gina Mudclaw##58706
		turnin Learn and Grow V: Halfhill Market##30257 |goto 53.16,51.80
		accept Learn and Grow VI: Gina's Vote##31945 |goto 53.16,51.80
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |n
		collect 1 Scallion Seeds##80591 |goto 52.88,52.14 |q 31945 |future
	step
		Follow the path |goto 53.09,51.01 < 7 |only if walking
		clicknpc Untilled Soil##58562
		use Scallion Seeds##80591
		Plant Scallion Seeds |q 31945/1 |goto 52.01,48.44
	step
	label "info"
		Click here for information on Bursting Crops |next "bursting" |confirm
		Click here for information on Parched Crops |next "parched" |confirm
		Click here for information on Infested Crops |next "infested" |confirm
		Click here for information on Wiggling Crops |next "wiggling" |confirm
		Click here for information on Alluring Crops |next "alluring" |confirm
		Click here for information on Smothered Crops |next "smothered" |confirm
		Click here for information on Wild Crops |next "wild" |confirm
		Click here for information on Runty Crops |next "runty" |confirm
		Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label "bursting"
		Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops
		Click here if you are ready to harvest your crops |confirm
		Click here to start doing dailies |next "dailies" |confirm
	step
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		Harvest Ripe Scallions |q 31945/2 |goto 52.0,48.4
		collect 5 Scallion##74843 |q 31945/3 |goto 52.0,48.4
		|next "exit"
	step
	label "runty"
		clicknpc Runty Scallions##63166 |goto 52.0,48.4
		Press your Space Bar and jump
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wiggling"
		clicknpc Wiggling Scallions##63169 |goto 52.0,48.4
		kill Voracious Virmen##60039
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "infested"
		click Vintage Bug Sprayer##211331
		collect Vintage Bug Sprayer##80513 |n
		Use your Vintage Bug Sprayer on the Infested Scallions |use Vintage Bug Sprayer##80513 |goto 52.2,48.3
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "alluring"
		clicknpc Alluring Scallions##63159
		kill Swooping Plainshawk##60072 |goto 52.2,48.3
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wild"
		clicknpc Wild Scallions##63170
		Ride the Scallion |invehicle |c |goto 52.0,48.4
	step
		Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
		Build 50 stacks on Dominance |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "tangled"
		clicknpc Tangled Scallions##63168 |goto 52.0,48.4
		Run to this area |goto 51.7,48.9
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "parched"
		Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "smothered"
		clicknpc Encroaching Weed##60185 |goto 52.0,48.4
		Ride the Weed |invehicle |c
	step
		Spam the Pull ability on your new hotbar
		Pull the Weed |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "exit"
		talk Gina Mudclaw##58706
		turnin Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
	step
	label "dailies"
		Start each day out by harvesting the crops from the previous day |goto Valley of the Four Winds 51.9,48.3
		confirm
	step
		talk Farmer Yoon##58646
		|tip He will only have 1 quest a day.
		accept The Kunzen Hunter-Chief##30336 |goto 53.0,51.8 |or
		accept Stealing is Bad... Re-Stealing is OK##30334 |goto 53.0,51.8 |or
		accept Stalling the Ravage##30335 |goto 53.0,51.8 |or
		accept The Lesser of Two Evils##30333 |goto 53.0,51.8 |or
		accept Simian Sabotage##30337 |goto 53.0,51.8 |or
		only if not completedq(32682)
	step
		talk Farmer Yoon##58646
		|tip He will only have 2 dailies at a time.
		accept The Kunzen Hunter-Chief##30336 |goto 52.25,48.79 |or 2
		accept That Dangling Carrot##31670 |goto 52.25,48.79 |or 2
		accept Stealing is Bad... Re-Stealing is OK##30334 |goto 52.25,48.79 |or 2
		accept The Cabbage Test##31669 |goto 52.25,48.79 |or 2
		accept It's Melon Time##31942 |goto 52.25,48.79 |or 2
		accept A Pumpkin-y Perfume##31672 |goto 52.25,48.79 |or 2
		accept Stalling the Ravage##30335 |goto 52.25,48.79 |or 2
		accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto 52.25,48.79 |or 2
		accept Squash Those Foul Odors##31941 |goto 52.25,48.79 |or 2
		accept The Lesser of Two Evils##30333 |goto 52.25,48.79 |or 2
		accept The White Turnip Treatment##31675 |goto 52.25,48.79 |or 2
		accept The Pink Turnip Challenge##31674 |goto 52.25,48.79 |or 2
		accept Which Berries? Witchberries.##31943 |goto 52.25,48.79 |or 2
		accept Why Not Scallions?##31671 |goto 52.25,48.79 |or 2
		accept Simian Sabotage##30337 |goto 52.25,48.79 |or 2
		only if completedq(32682)
	step
		talk Andi##64464
		|tip He will only have 1 quest a day.
		accept A Gift For Fung##30475 |goto 52.7,50.5 |or
		accept A Gift For Chee Chee##30471 |goto 52.7,50.5 |or
		accept A Gift For Haohan##30477 |goto 52.7,50.5 |or
		accept A Gift For Jogu##30478 |goto 52.7,50.5 |or
		accept A Gift For Sho##30472 |goto 52.7,50.5 |or
		accept A Gift For Tina##30470 |goto 52.7,50.5 |or
		accept A Gift For Ella##30474 |goto 52.7,50.5 |or
		accept A Gift For Old Hillpaw##30476 |goto 52.7,50.5 |or
		accept A Gift For Fish##30473 |goto 52.7,50.5 |or
		accept A Gift For Gina##30479 |goto 52.7,50.5 |or
	step
		talk Ella##58647
		accept You Have to Burn the Ropes##30327 |goto 53.1,51.7
		_
		Click here if Ella is not in town |confirm
	step
		talk Haohan Mudclaw##57402
		accept Pest Problems##30319 |goto 53.0,51.7
		_
		Click here if Haohan is not in town |confirm
	step
		talk Tina Mudclaw##58761
		accept They Don't Even Wear Them##30323 |goto 53.1,51.7
		_
		Click here if Tina is not in town |confirm
	step
		talk Chee Chee##58709
		accept Not in Chee-Chee's Backyard##30324 |goto 53.1,52.1
		_
		Click here if Chee-Chee is not in town |confirm
	step
		talk Fish Fellreed##58705
		accept The Kunzen Legend-Chief##30326 |goto 52.8,51.8
		_
		Click here if Fish Felreed is not in town |confirm
	step
		talk Farmer Fung##57298
		accept Water, Water Everywhere##30317 |goto 52.9,51.7
		_
		Click here if Farmer Fung is not in town |confirm
	step
		talk Sho##58708
		accept Where It Counts##30325 |goto 53.1,52.1
		_
		Click here if Sho is not in town |confirm
	step
		talk Jogu the Drunk##58710
		accept Weed War II##30321 |goto 53.6,52.5
		_
		Click here if Jogu has no available quests |confirm
	step
		talk Old Hillpaw##58707
		accept Chasing the Chicken##30318 |goto 53.0,51.8
		_
		Click here if Old Hillpaw is not in town |confirm
	step
		talk Gina Mudclaw##58706
		accept Money Matters##30322 |goto 53.2,51.8
		_
		If this quest is unavailable click here |confirm
	step
		talk Innkeeper Lei Lan##59582
		Tell her you are here on behalf of Gina Mudclaw
		Innkeeper Lei Lan's Payment |q 30322/3 |goto 55.1,50.3
		only if haveq(30322)
	step
		talk Lolo Lio##59585
		Tell him you are here on behalf of Gina Mudclaw
		Lolo Lio's Payment |q 30322/4 |goto 55.6,52.1
		only if haveq(30322)
	step
		talk Trader Jambeezi##59583
		Tell him you are here on behalf of Gina Mudclaw
		Trader Jambeezi's Payment |q 30322/2 |goto 56.1,49.6
		only if haveq(30322)
	step
		talk Spicemaster Jin Jao##59581
		Tell him you are here on behalf of Gina Mudclaw
		Spicemaster Jin Jao's Payment |q 30322/1 |goto 56.7,47.1
		only if haveq(30322)
	step
		talk Merchant Greenfield##58718
		buy 1 Juicycrunch Carrot Seeds##80590 |goto 52.9,52.1
		only if haveq(31670)
	step
		talk Merchant Greenfield##58718
		buy 1 Green Cabbage Seeds##79102 |goto 52.9,52.1
		only if haveq(31669)
	step
		talk Merchant Greenfield##58718
		buy 1 Witchberry Seeds##89326 |goto 52.9,52.1
		only if haveq(31943)
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |goto 52.9,52.1
		only if haveq(31671)
	step
		talk Merchant Greenfield##58718
		buy 1 White Turnip Seeds##80595 |goto 52.9,52.1
		only if haveq(31675)
	step
		talk Merchant Greenfield##58718
		buy 1 Pink Turnip Seeds##80594 |goto 52.9,52.1
		only if haveq(31674)
	step
		talk Merchant Greenfield##58718
		buy 1 Jade Squash Seeds##89328 |goto 52.9,52.1
		only if haveq(31941)
	step
		talk Merchant Greenfield##58718
		buy 1 Striped Melon Seeds##89329 |goto 52.9,52.1
		only if haveq(31942)
	step
		talk Merchant Greenfield##58718
		buy 1 Mogu Pumpkin Seeds##80592 |goto 52.9,52.1
		only if haveq(31672)
	step
		talk Merchant Greenfield##58718
		buy 1 Red Blossom Leek Seeds##80593 |goto 52.9,52.1
		only if haveq(31673)
	step
		talk Wing Nga##60231
		Tell her that you'd like to borrow one of Farmer Fung's kites |goto 56.5,50.4
		Ride a kite |invehicle |c
		only if haveq(30317)
	step
		Use your Water Buckest ability on the Dusty Spots below you
		|tip They are outlined by a yellow circle.
		Water 35 Dusty Spots |q 30317/1
		only if haveq(30317)
	step
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31671/1 |goto 52.0,48.4
		only if haveq(31671)
	step
		clicknpc Untilled Soil##58562
		Use your Juicycrunch Carrot Seed on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		Plant 1 Juicycrunch Carrot Seed |q 31670/1 |goto 52.0,48.4
		only if haveq(31670)
	step
		clicknpc Untilled Soil##58562
		Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		Plant Witchberry Seeds |q 31943/1 |goto 52.0,48.4
		only if haveq(31943)
	step
		clicknpc Untilled Soil##58562
		Use your Mogu Pumpkin Seeds on the Tilled Soil |use Mogu Pumpkin Seeds##80592
		Plant Mogu Pumpkin Seeds |q 31672/1 |goto 52.0,48.4
		only if haveq(31672)
	step
		clicknpc Untilled Soil##58562
		Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328
		Plant Jade Squash Seeds |q 31941/1 |goto 52.0,48.4
		only if haveq(31941)
	step
		clicknpc Untilled Soil##58562
		Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
		Plant White Turnip Seeds |q 31675/1 |goto 52.0,48.4
		only if haveq(31675)
	step
		clicknpc Untilled Soil##58562
		Use your Pink Turnip Seeds on the Tilled Soil |use Pink Turnip Seeds##80594
		Plant Pink Turnip Seeds |q 31674/1 |goto 52.0,48.4
		only if haveq(31674)
	step
		clicknpc Untilled Soil##58562
		Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		Plant Green Cabbage Seeds |q 31669/1 |goto 52.0,48.4
		only if haveq(31669)
	step
		clicknpc Untilled Soil##58562
		Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		Plant Striped Melon Seeds |q 31942/1 |goto 52.0,48.4
		only if haveq(31942)
	step
		clicknpc Untilled Soil##58562
		Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
		Plant Red Blossom Leek Seeds |q 31673/1 |goto 52.0,48.4
		only if haveq(31673)
	step
		click Goldenfire Orchid##211025
		collect Goldenfire Orchid##80231 |q 30479/1 |goto 45.9,48.5
		You can also find this here |goto 41.6,42.8
		or at this location |goto 37.5,37.3
		only if haveq(30479)
	step
		talk Lost Dog##59533
		accept Lost and Lonely##30526 |goto 42.4,50.0
		only if repval('The Tillers','Revered')>=13000
	step
		talk Gai Lan##57385
		Ask him, "What Weeds?"
		Get the Weed War buff. |havebuff 134185 |goto 38.5,51.7 --INV_Misc_Herb_05
		only if haveq(30321)
	step
		clicknpc Ugly Weed##57306
		clicknpc Nasty Weed##57308
		click Weed-B-Gone Gas Bomb##210057
		|tip Use the new button available to you to clear a lot of weeds at once
		Pull 100 Weeds |q 30321/1
		only if haveq(30321)
	step
		clicknpc Hillpaw's Chicken##58918
		|tip Most of these chickens are disguised animals. When you pick one up click the button that appears on your screen.
		You can deliver lost hens to the chicken coop here |goto 30.4,52.5
		collect Old Hillpaw's Prize Chicken##80223 |q 30318/1 |goto 31.3,53.2
		only if haveq(30318)
	step
		kill Monstrous Plainshawk##59641
		collect 1 Bloody Plainshawk Leg##80232 |goto 37.4,37.3
		only if haveq(30475)
	step
		talk Wika-Wika##59532
		Mook-mooks?
		Get the Pest Problems buff |havebuff 538518 |goto 39.6,45.3 --Spell_nature_insect_swarm2
		only if haveq(30319)
	step
		clicknpc Black-Nose Marmot##59530
		Stomp 25 Black-Nose Marmot |q 30319/1 |goto 39.6,45.3
		only if haveq(30319)
	step
		kill Teeku##59130, Jim-Jim##59128, Jokka-Jokka##59126, Kon-Kon##59127
		Kill the Kunzen-Hunter Chief |q 30336/1 |goto 30.2,46.0
		only if haveq(30336)
	step
		kill Skyrange Mushan##64309+
		collect 20 Tasty T-Bone##80144 |q 30526/1 |goto 29.2,38.2
		only if haveq(30526)
	stickystart "kunzenritual"
	stickystart "kunzenhozen"
	step
		click Kunzen Rope
		Burn 6 ropes |q 30327/1 |goto 32.0,32.1
		only if haveq(30327)
	step
		click Yu-Ping Soup Cauldron##210873
		collect Yu-Ping Soup##79870 |q 30472/1 |goto 29.7,34.5
		only if haveq(30472)
	step
	label "kunzenritual"
		kill 1 Kunzen Ritualist##59123 |q 30325/3 |goto 29.7,34.5
		click Blazing Ember##210890
		Kick 4 Blazing Ember |q 30325/2
		click Kunzen Ritual Candle##210955
		Throw 8 Kunzen Ritual Candles |q 30325/1 |goto 29.7,34.5
		only if haveq(30325)
	stickystart "kunzentribe"
	step
		kill Buk-Buk##59133+, Bimba##59135+, Yammo##59134+, Rit-Rit##59132+
		collect 1 Kunzen Legend-Book##79866 |q 30326/1 |goto 31.6,28.7
		only if haveq(30326)
	step
		click Authentic Valley Stir Fry##210803
		collect Authentic Valley Stir Fry##79827 |q 30471/1 |goto 33.6,23.9
		only if haveq(30471)
	step
		clicknpc Yak Statuette##59154
		collect Yak Statuette##79828 |q 30473/1 |goto 34.0,24.1
		only if haveq(30473)
	step
		talk Zidormi##163463
		Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
		Trave to the Past |complete ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms New/0 80.97,29.48 |q 30337
		only if haveq(30337)
	step
		use Barrel of Fireworks##79885
		Explode the Stolen Tools |q 30337/2 |goto Valley of the Four Winds/0 32.7,30.6
		only if haveq(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen weapons exploded |q 30337/1 |goto 30.4,28.1
		only if haveq(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen beer exploded |q 30337/3 |goto 32.1,25.9
		only if haveq(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen grain exploded |q 30337/4 |goto 35.0,22.0
		only if haveq(30337)
	step
	label "kunzenhozen"
		kill Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+
		Kill 12 Kunzen hozen |q 30335/1 |goto 34.2,23.5
		only if haveq(30335)
	step
	label "kunzentribe"
		click Stolen Vegetable##210768 |only if haveq(30334)
		collect 16 Stolen Vegetable##79824 |q 30334/1 |only if haveq(30334) |goto 34.2,23.5
		kill Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+ |only if haveq(30324) or haveq(30474)
		Kill 8 Kunzen tribe members |q 30324/1 |only if haveq(30324) |goto 34.2,23.5
		collect Spicy Shrimp Dumplings##79871 |q 30474/1 |only if haveq(30474) |goto 34.2,23.5
		only if haveq(30474) or haveq(30334) or haveq(30324)
	step
		kill Enormous Cattail Grouper##59639
		collect Enormous Cattail Grouper Tooth##80228 |q 30477/1 |goto 44.1,29.1
		only if haveq(30477)
	stickystart "chrysoberylout"
	step
		Enter this warren |goto 46.9,21.1 < 10
		kill Springtail Warren-Mother##59516 |q 30333/1 |goto 48.7,18.7
		only if haveq(30333)
	step
		kill Springtail Littlewhisker##59515+, Springtail Trapper##59513+, Springtail Burrower##59514+
		collect Stolen Circlet##80138 |q 30323/1 |goto 44.7,19.6
		collect Ransacked Ring##80137 |q 30323/2 |goto 44.7,19.6
		collect Buglarized Bracelet##80139 |q 30323/3 |goto 44.7,19.6
		only if haveq(30323)
	step
	label "chrysoberylout"
		This item could be in either warren or the patch of land seperating the two entrances
		click Chrysoberyl Outcropping##210960
		collect Uncut Chrysoberyl##80134 |q 30470/1
		only if haveq(30470)
	step
		click Freshwater Oyster##211021
		collect Blue Freshwater Pearl## |q 30476/1 |goto 44.2,28.8
		only if haveq(30476)
	step
		talk Lost Dog##59533
		turnin Lost and Lonely##30526 |goto 42.4,50.0
		only if haveq(30526)
	step
		click Yoon's Apples##211020
		collect 8 Yoon's Apple##80234 |goto 52.6,47.8
		only if haveq(30478)
	step
		click Yoon's Craneberries##211022
		collect 50 Yoon's Craneberry##80235 |goto 52.8,47.9
		only if haveq(30478)
	step
		talk Bobo Ironpaw##58717
		Tell him you've got all this fruit here
		collect Apple-Berry Hooch##80236 |q 30478/1 |goto 53.2,52.2
		only if haveq(30478)
	step
		talk Kol Ironpaw##58712
		Ask him if he could grill your plainshawk leg
		collect Grilled Plainshawk Leg##80233 |q 30475/1 |goto 53.0,51.3
		only if haveq(30475)
	step
		Leave the warren |goto 46.9,21.1 < 10 |only if haveq(30333)
		talk Farmer Yoon##58646
		turnin The Kunzen Hunter-Chief##30336 |goto 52.25,48.79
		turnin That Dangling Carrot##31670 |goto 52.25,48.79
		turnin Stealing is Bad... Re-Stealing is OK##30334 |goto 52.25,48.79
		turnin The Cabbage Test##31669 |goto 52.25,48.79
		turnin It's Melon Time##31942 |goto 52.25,48.79
		turnin A Pumpkin-y Perfume##31672 |goto 52.25,48.79
		turnin Stalling the Ravage##30335 |goto 52.25,48.79
		turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto 52.25,48.79
		turnin Squash Those Foul Odors##31941 |goto 52.25,48.79
		turnin The Lesser of Two Evils##30333v
		turnin The White Turnip Treatment##316 |goto 52.25,48.7975
		turnin The Pink Turnip Challenge##31674 |goto 52.25,48.79
		turnin Which Berries? Witchberries.##31943 |goto 52.25,48.79
		turnin Why Not Scallions?##31671 |goto 52.25,48.79
		turnin Simian Sabotage##30337 |goto 52.25,48.79
		only if not completedq(32682)
	step
		talk Farmer Yoon##58646
		|tip He will only have 1 quest a day.
		turnin The Kunzen Hunter-Chief##30336 |or |goto 53.0,51.8
		turnin Stealing is Bad... Re-Stealing is OK##30334 |or |goto 53.0,51.8
		turnin Stalling the Ravage##30335 |or |goto 53.0,51.8
		turnin The Lesser of Two Evils##30333 |or |goto 53.0,51.8
		turnin Simian Sabotage##30337 |or |goto 53.0,51.8
		only if not completedq(32682)
	step
		talk Farmer Fung##57298
		turnin Water, Water Everywhere##30317 |goto 52.9,51.7
		turnin A Gift For Fung##30475 |goto 52.9,51.7 |only if haveq(30475)
	step
		talk Fish Fellreed##58705
		turnin The Kunzen Legend-Chief##30326 |goto 52.8,51.8
		turnin A Gift For Fish##30473 |goto 52.8,51.8 |only if haveq(30473)
	step
		talk Ella##58647
		turnin You Have to Burn the Ropes##30327 |goto 53.0,51.7
		turnin A Gift For Ella##30474 |goto 53.0,51.7 |only if haveq(30474)
	step
		talk Sho##58708
		turnin Where It Counts##30325 |goto 53.1,52.1
		turnin A Gift For Sho##30472 |goto 53.1,52.1 |only if haveq(30472)
	step
		talk Gina Mudclaw##58706
		turnin Money Matters##30322 |goto 53.2,51.8
		turnin A Gift For Gina##30479 |goto 53.2,51.8 |only if haveq(30479)
	step
		talk Old Hillpaw##58707
		turnin Chasing the Chicken##30318 |goto 53.1,51.9
		turnin A Gift For Old Hillpaw##30476 |goto 53.1,51.9 |only if haveq(30476)
	step
		talk Tina Mudclaw##58761
		turnin A Gift For Tina##30470 |goto 53.1,51.7 |only if haveq(30470)
		turnin They Don't Even Wear Them##30323 |goto 53.1,51.7
	step
		talk Haohan Mudclaw##57402
		turnin Pest Problems##30319 |goto 53.0,51.7
		turnin A Gift For Haohan##30477 |goto 53.0,51.7 |only if haveq(30477)
	step
		talk Jogu the Drunk##58710
		turnin Weed War II##30321 |goto 53.6,52.5
		turnin A Gift For Jogu##30478 |goto 53.6,52.5 |only if haveq(30478)
	step
		talk Chee Chee##58709
		turnin Not in Chee-Chee's Backyard##30324 |goto 53.1,52.1
		turnin A Gift For Chee Chee##30471 |goto 53.1,52.1 |only if haveq(30471)
		|next "honored" |only if rep('The Tillers')==Honored
		|next "revered" |only if rep('The Tillers')==Revered
		|next "exalted" |only if rep('The Tillers')==Exalted
		|next "end" |only if rep('The Tillers')<=Friendly
	step
	label "honored"
		talk Farmer Yoon##58646
		accept Growing the Farm I: The Weeds##30260 |goto 52.3,48.8
		|next "mungmung" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
	step
		talk Gai Lan##57385
		turnin Growing the Farm I: The Weeds##30260 |goto 38.6,51.7
		accept Growing the Farm I: A Little Problem##30516 |goto 38.6,51.7
	step
		click Spideroot##211117
		collect 6 Spideroot##80122 |q 30516/1 |goto 36.5,51.1
	step
		talk Gai Lan##57385
		turnin Growing the Farm I: A Little Problem##30516 |goto 38.6,51.7
		|next "revered" |only if rep('The Tillers')>=Revered
	step
		When you arrive at Sunsong Ranch you will get a buff |goto 51.9,48.3
		After 15 minutes your ranch will be expanded
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31936)
	step
		talk Gina Mudclaw##58706
		buy 1 "Jinyu Princess" Irrigation System##89812 |q 31936 |goto 53.2,51.8
	step
		Click the "Jinyu Princess" Irrigation System in your bags |use "Jinyu Princess" Irrigation System##89812
		accept The "Jinyu Princess" Irrigation System##31936
	step
		talk Farmer Yoon##58646
		turnin The "Jinyu Princess" Irrigation System##31936 |goto 52.3,48.8
		|next "mungmung" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
		|next "end" |only if default
	step
	label "revered"
		talk Gina Mudclaw##58706
		buy 1 Grand Commendation of the Tillers##93226 |n
		Use the Commendation of the Tillers you just purchased |complete ZGV:GetReputation("The Tillers").hasBonus |use Grand Commendation of the Tillers##93226 |goto 53.2,51.8
		only if rep("The Tillers")>=Revered
	step
		talk Farmer Yoon##58646
		accept Growing the Farm II: The Broken Wagon##30523 |goto 52.3,48.8
		|next "fung" |only if repval('The Tillers','Revered')>=4200
		|next "mungmung" |only if completedq(31936) and not completedq(31946)
		only if completedq(30516) and rep('The Tillers')>=Revered
	step
		talk Fish Fellreed##58705
		turnin Growing the Farm II: The Broken Wagon##30523 |goto 41.7,30.0
		accept Growing the Farm II: Knock on Wood##30524 |goto 41.7,30.0
	step
		click Boat Planks##211122
		collect 100 Waxed Plank##80136 |q 30524/1 |goto 42.8,29.1
	step
		talk Fish Fellreed##58705
		turnin Growing the Farm II: Knock on Wood##30524 |goto 41.7,30.0
	step
		When you arrive at Sunsong Ranch you will get a buff |goto 51.9,48.3
		After 15 minutes your ranch will be expanded
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31937)
	step
		talk Gina Mudclaw##58706
		buy 1 "Thunder King" Pest Repellers##89813 |q 31937 |goto 53.2,51.8
	step
		Click the "Thunder King" Pest Repellers in your bags |use "Thunder King" Pest Repellers##89813
		accept "Thunder King" Pest Repellers##31937
	step
		talk Farmer Yoon##58646
		turnin "Thunder King" Pest Repellers##31937 |goto 52.3,48.8
		|next "end"
	step
	label "mungmung"
		talk Farmer Yoon##58646
		accept Mung-Mung's Vote I: A Hozen's Problem##30258 |goto 52.3,48.8
		|next "fung" |only if completedq(31946)
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote I: A Hozen's Problem##30258 |goto 44.2,34.3
		accept Mung-Mung's Vote II: Rotten to the Core##30259 |goto 44.2,34.3
	step
		click Partially Chewed Carrot##210942
		collect 10 Partially Chewed Carrot##80116 |q 30259/1 |goto 42.7,38.2
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote II: Rotten to the Core##30259 |goto 44.2,34.3
		accept Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto 44.2,34.3
	step
		talk Merchant Greenfield##58718
		buy 2 Juicycrunch Carrot Seeds##80590 |q 31946 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		Plant 2 Juicycrunch Carrot Seeds |q 31946/1 |goto 52.0,48.4
	step
		Wait a day for the carrots to grow and then harvest them
		Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
		collect 10 Juicycrunch Carrot##74841 |q 31946/3
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto 44.2,34.3
		|next "end"
	step
	label "fung"
		talk Farmer Yoon##58646
		accept Farmer Fung's Vote I: Yak Attack##30517 |goto 52.3,48.8
		|next |only if repval('The Tillers','Revered')>=8400
		Click here if this quest is not available yet |confirm |next "end"
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote I: Yak Attack##30517 |goto 48.3,33.9
		accept Farmer Fung's Vote II: On the Loose##30518 |goto 48.3,33.9
	step
		clicknpc Escaped Shagskin##59491
		Ride 5 Escaped Shagskin to |q 30518/1 |goto 51.0,36.7
		Take the Shagskin to this location|goto 50.4,34.7
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote II: On the Loose##30518 |goto 48.3,33.9
		accept Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto 48.3,33.9
	step
		talk Merchant Greenfield##58718
		buy 3 Green Cabbage Seeds##79102 |q 31947 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		Plant 3 Green Cabbage Seeds |q 31947/1 |goto 52.0,48.4
	step
		Wait a day for the Green Cabbage to grow and then harvest them
		Harvest 3 Green Cabbage |q 31947/2
		collect 15 Green Cabbage##74840 |q 31947/3
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto 48.3,33.9
	step
	label "nana"
		talk Farmer Yoon##58646
		accept Nana's Vote I: Nana's Secret Recipe##30519 |goto 52.2,48.8
		|next |only if repval('The Tillers','Revered')>=16800
		Click here if this quest is not available yet |confirm |next "end"
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote I: Nana's Secret Recipe##30519 |goto 54.7,47.0
		accept Nana's Vote II: The Sacred Springs##31948 |goto 54.7,47.0
	step
		kill Thousand-Year Guardian##66850+
		You may have to kill the Guardian first, then collect the water
		Use the Empty Pitcher while standing under the waterfall |use Empty Pitcher##89902
		Thousand-Year Water |q 31948/1 |goto 56.7,21.7
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote II: The Sacred Springs##31948 |goto 54.7,47.0
		accept Nana's Vote III: Witchberry Julep##31949 |goto 54.7,47.0
	step
		talk Merchant Greenfield##58718
		buy 3 Witchberry Seeds##89326 |q 31949 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		Plant 3 Witchberry Seeds |q 31949/1 |goto 52.0,48.4
		only if haveq(31949)
	step
		Wait a day for the Witchberries to grow and then harvest them
		Harvest 3 Witchberries |q 31949/2
		collect 15 Witchberries##74846 |q 31949/3
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote III: Witchberry Julep##31949 |goto 54.7,47.0
	step
	label "haohan"
		talk Farmer Yoon##58646
		accept Haohan's Vote I: Bungalow Break-In##30521 |goto 52.2,48.8
		Click here if this quest is not available yet |confirm |next "end"
	step
		talk Haohan Mudclaw##57402
		turnin Haohan's Vote I: Bungalow Break-In##30521 |goto 44.6,34.1
		accept Haohan's Vote II: The Real Culprits##30522 |goto 44.6,34.1
	step
		clicknpc Muddy Tracks##52171
		Investigate 8 Suspicious Footprints. |q 30522/1 |goto 39.4,43.6
		|tip When you click the eighth footprint a hozen will attack you.
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote II: The Real Culprits##30522 |goto 52.2,48.8
		accept Haohan's Vote III: Pure Poison##30525 |goto 52.2,48.8
	step
		_Enter_ the warren |goto 47.0,20.9 < 10
		click Cave Lily##210969
		collect Cave Lily##80141 |q 30525/2
	step
		_Leave_ the warren |goto 47.0,20.9 < 10
		_Enter_ the warren |goto 44.0,22.2 < 10
		click Bloodbloom##210968
		collect Bloodbloom##80140 |q 30525/1
	step
		_Leave_ the warren |goto 44.0,22.2 < 5 |walk
		click Violet Lichen##210971
		collect Violet Lichen##80143 |q 30525/4 |goto 42.5,22.3
	step
		_Enter_ the warren |goto 39.4,20.4 < 10 |walk
		click Ghostcap##210970
		collect Ghostcap##80142 |q 30525/3
	step
		_Leave_ the warren |goto 39.4,20.4 < 10
		talk Farmer Yoon##58646
		turnin Haohan's Vote III: Pure Poison##30525 |goto 52.2,48.8
		accept Haohan's Vote IV: Melons For Felons##30527 |goto 52.2,48.8
	step
		talk Merchant Greenfield##58718
		buy 4 Striped Melon Seeds##89329 |q 30527 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		Plant 4 Striped Melon Seeds |q 30527/1 |goto 52.0,48.4
	step
		Wait a day for the Striped Melons to grow and then harvest them
		Harvest 4 Striped Melons |q 30527/2
		collect 20 Striped Melon##74848 |q 30527/3
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote IV: Melons For Felons##30527 |goto 52.2,48.8
		accept Haohan's Vote V: Chief Yip-Yip##30528 |goto 52.2,48.8 //20000 Revered?
	step
		_Enter_ the cave here |goto 33.1,20.2 < 10 |walk
		kill Chief Yip-Yip##59567 |q 30528/1 |goto 32.4,20.6
		Use the _Throw Melon_ button on your screen when he begins casting _Charging Up_. This will cause him to stop attacking and take increased damage for a few seconds.
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote V: Chief Yip-Yip##30528 |goto 52.2,48.8
	step
		After some talking, the Offering Bowl should light up for you to click. |goto 52.0,49.0
		click Offering Bowl##241877
		confirm
		|next "end"
	step
	label "exalted"
		talk Farmer Yoon##58646
		accept Growing the Farm III: The Mossy Boulder##30529 |goto 52.2,48.8
		Click here if this quest is not available yet |confirm |next "end"
		|next |only if default
	step
		talk Haohan Mudclaw##57402
		turnin Growing the Farm III: The Mossy Boulder##30529 |goto 44.6,34.1
	step
		When you arrive at Sunsong Ranch you will get a buff |goto 51.9,48.3
		After 15 minutes your ranch will be expanded
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31938)
	step
		talk Gina Mudclaw##58706
		buy 1 "Earth-Slasher" Master Plow##89814 |q 31938 |goto 53.2,51.8
	step
		Click the "Earth-Slasher" Master Plow in your bags. |use "Earth-Slasher" Master Plow##89814
		accept The "Earth-Slasher" Master Plow##31938
	step
		talk Farmer Yoon##58646
		turnin The "Earth-Slasher" Master Plow##31938 |goto 52.3,48.8
	step
		talk Nana Mudclaw##64597
		accept Inherit the Earth##32682 |goto Valley of the Four Winds 54.7,47.0
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		talk Farmer Yoon##58646
		Ask him if he will join the council of the Tillers Union. |q 32682/1 |goto Valley of the Four Winds 52.2,48.8
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		talk Nana Mudclaw##64597
		turnin Inherit the Earth##32682 |goto Valley of the Four Winds 54.7,47.0
		|tip This quest opens up the farm to you, granting you a place to rest and set your hearthstone, as well as opening up new quests known as work orders that allow you to gain reputation with other factions through farming.
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		click Tillers Shrine##215705
		accept A Second Hand##30534 |goto 52.0,49.0
	step
		For this quest you must be _Best Friends_ with one of the 10 Tiller NPCs
		Please refer to the Reputations guides for assistance in gaining rep for an individual
		confirm
	step
		Go to your _Best Friend's_ home
		Ask them: <Friend>, how'd you like to help us run the farm? |q 30534/1
	step
		click Tillers Shrine##215705
		turnin A Second Hand##30534 |goto 52.0,49.0
	step
	label "end"
		The last thing to do with The Tillers each day is to plant as many crops as your farm can hold
		Each crop harvest will award reputation so do this every day
		Click here to go back to the beginning of the dailies section |next "dailies" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Marista_Hub",[[
	step
		talk Nan-Po##60441
		fpath Marista |goto Krasarang Wilds 52.4,76.6
	step
		talk Tony Tuna##60182
		accept Particular Plumage##30667 |goto Krasarang Wilds 51.7,75.3
	step
		talk Jay Cloudfall##60173
		|tip Outside, up the stairs and to the right.
		accept Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.5,76.9
	step
		kill Crimson Lory##60198+
		collect 6 Crimson Tailfeather##80678+ |q 30667/2 |goto 46.4,68.6
		kill Emerald Lory##60200+
		collect 6 Emerald Tailfeather##80677+ |q 30667/1 |goto 46.4,68.6
		kill Dusky Lory##60196+
		collect 6 Dusky Tailfeather##80679+ |q 30667/3 |goto 46.4,68.6
 		kill Mortbreath Skulker##60202+, Mortbreath Snapper##60201+
 		Kill 8 Mortbreath crocolisk |q 30666/1 |goto 46.4,68.6
	step
		talk Tony Tuna##60182
		turnin Particular Plumage##30667 |goto 51.7,75.3
	step
		talk Jay Cloudfall##60173
		turnin Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.5,76.9
		accept Build Your Own Raft##30668 |goto 51.5,76.9
	stickystart "spareplank"
	step
		click Tough Kelp##211382
		collect Tough Kelp##80804 |q 30668/2 |goto 52.3,77.9
	step
	label "spareplank"
		click Spare Plank##211379
		collect 4 Spare Plank##80685 |q 30668/1 |goto 52.4,76.2
	step
		talk Jay Cloudfall##60173
		turnin Build Your Own Raft##30668 |goto 51.5,76.9
		accept The Lorewalker on the Lake##30669 |goto 51.5,76.9
	step
		click Your Raft##211392
		Pick up your raft |q 30669/1 |goto 51.7,76.6
	step
		talk Wise Ana Wu##60139
		turnin The Lorewalker on the Lake##30669 |goto 46.0,78.9
		accept Wisdom Has A Price##30671 |goto 46.0,78.9
		accept Misery##30691 |goto 46.0,78.9
	step
		_Go underwater_ and enter the cave |goto 46.0,79.9 < 15 |walk
		kill Nahassa##60203+
		|tip Nahassa will use an ability called Feverish Deathbite that will cause you to hallucinate many more crocolisks have spawned, they aren't really there so don't panic.
		Put Nahassa out of his misery |q 30691/1 |goto 46.2,83.5 |indoors Mortbreath Grotto
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin Misery##30691
	step
		_Exit_ the cave |goto 46.0,79.9 < 15 |walk
		kill Great Grey Shark##60204+, Nayeli Hammerhead##60432+
		collect 5 Shark Fillet##80810+ |q 30671/1 |goto 46.0,79.0
	step
		talk Wise Ana Wu##60139
		turnin Wisdom Has A Price##30671 |goto 46.0,78.9
		accept Balance##30672 |goto 46.0,78.9
	stickystart "buriedtreasure"
	step
		Run over one of the piles of fish along the beach
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Balance Without Violence##30674 |goto 45.1,84.9
	step
	label "buriedtreasure"
		kill Unga Fish-Getter##60299+
		collect 1 Confusing Treasure Map##80827 |n
		Click the Confusing Treasure Map in your bags |use Confusing Treasure Map##80827
		accept Buried Hozen Treasure##30675 |goto 45.5,85.2
	step
		clicknpc Flailing Carp##60367
		|tip You can find these all along the beach, usually in the big piles of fish
		Throw 6 Flailing Carp back into the water |q 30674/1 |goto 46.1,86.7
		kill 10 Unga Fish-Getter##60299+ |q 30672/1 |goto 46.1,86.7
		click Lump of Sand##211420
		collect Buried Hozen Treasure##80817 |q 30675/1 |goto 46.1,86.7
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin Balance Without Violence##30674
		turnin Buried Hozen Treasure##30675
	step
		talk Jay Cloudfall##60173
		turnin Balance##30672 |goto 51.5,76.8
	step
		talk Tired Shushen##58278
		accept Thieving Raiders##30168 |goto Krasarang Wilds 29.7,39.0
		accept Raid Leader Slovan##30169 |goto Krasarang Wilds 29.7,39.0
	step
		kill Slovan##58285 |q 30169/1
		kill Riverblade Flesh-hunter##58274
		collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto 31.8,29.0
	step
		talk Tired Shushen##58278
		turnin Thieving Raiders##30168 |goto Krasarang Wilds 29.7,39.1
		turnin Raid Leader Slovan##30169 |goto Krasarang Wilds 29.7,39.1
	stickystart "Mogu Artifact"
	step
		clicknpc Dawnchaser Captive##58608
		|tip Marking them with Shift+v makes them much easier to spot (Use v to mark enemies again).
		Rescue 8 Captives |q 30163/1 |goto 24.6,39.2
		kill 8 Korjan Reclaimer##58614+ |q 30229/1 |goto 24.6,39.2
	step
	label "Mogu Artifact"
		click Mogu Artifact##212765
		|tip They look like large brown maces and artifacts on the ground.
		collect 10 Mogu Artifact##79120+ |q 30230/1 |goto 24.6,39.2
	step
		talk Kang Bramblestaff##56112
		turnin Re-Reclaim##30230 |goto 28.8,50.6
	step
		talk Kor Bloodtusk##58114
		turnin For the Tribe##30163 |goto 28.7,50.9
		turnin The Greater Danger##30229 |goto 28.7,50.9
	step
		talk Ambassador Han##58630
		accept The Mantid##30175 |goto 29.1,51.1
	step
		talk Sunwalker Dezco##58607
		accept The Stoneplow Convoy##30164 |goto 16.0,39.8
	stickystart "Ik Mantid"
	step
		clicknpc Stoneplow Envoy##58955
		|tip Marking them with Shift+v makes them much easier to spot (Use v to mark enemies again).
		Save 7 Stoneplow Envoy |q 30164/1 |goto 15.3,35.3
	step
	label "Ik Mantid"
		kill Ik'thallik Precursor##58367+, Ik'thallik Vanguard##58368+
		Kill 10 Ik'thallik Mantid |q 30175/1 |goto 15.3,35.3
	step
		talk Sunwalker Dezco##58607
		turnin The Stoneplow Convoy##30164 |goto 16.0,39.8
	step
		talk Ambassador Len##58954
		turnin The Mantid##30175 |goto 15.7,39.7
	step
		talk Sunwalker Dezco##58607
		accept For Family##30174 |goto 16.0,39.8
	step
		talk Kor Bloodtusk##58670
		Try to free Kor from his bonds
		kill Groundbreaker Brojai##58224 |q 30174/1 |goto 23.6,48.8
		|tip He will summon adds one at a time. They aren't too difficult to kill.
	step
		talk Sunwalker Dezco##58607
		turnin For Family##30174 |goto 28.9,50.8
		accept Warn Stoneplow##30241 |goto 28.9,50.8
	step
		talk Loon Mai##56720
		turnin Warn Stoneplow##30241 |goto Valley of the Four Winds 19.5,56.8
	step
		talk Mudmug##56474
		accept It Does You No Good In The Keg##30653 |goto 18.1,55.9
	step
		talk Loon Mai##56720
		accept The Swarm Begins##30622 |goto Valley of the Four Winds 18.0,56.3
	step
		talk Mei Barrelbottom##59855
		accept The Mantidote##30623 |goto Valley of the Four Winds 18.0,56.5
	stickystart "ikthallik"
	step
		Deliver beer to Zhu's Wardens |q 30653/1 |goto Valley of the Four Winds 17.5,50.2
	step
		Deliver beer to Crane Wing Priests |q 30653/2 |goto Valley of the Four Winds 15.2,55.4
	step
		Deliver beer to Tauren Settlers |q 30653/4 |goto Valley of the Four Winds 13.0,56.0
	step
		Deliver beer to Shado-Pan |q 30653/3 |goto Valley of the Four Winds 10.7,55.5
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin It Does You No Good In The Keg##30653
	step
	label "ikthallik"
		kill Ik'thallik Infestor##56721+, Ik'thik Warrior##56722+
		Kill 15 Ik'thallik Infestors or Warriors |q 30622/1 |goto 13.4,54.6
		Use Ken-Ken's mask on Ik'thik Wing Commanders |use Ken-Ken's Mask##80337
		kill Manifestation of Fear##59874+
		Defeat 5 Manifestation of Fear that come out of Ik'thik Wing Commanders |q 30623/1 |goto 13.4,54.6
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin The Mantidote##30623
	step
		talk Guard Captain Oakenshield##57198
		turnin The Swarm Begins##30622 |goto 11.6,49.5
		accept Students No More##30625 |goto 11.6,49.5
	stickystart "2nd coord"
	stickystart "3rd coord"
	stickystart "4th coord"
	step
		The students you are looking for can be at one of four locations fighting one of the quest mobs below. Find the students and kill the following monsters:
		|tip Once you find the students just follow them around and kill what they do.
		talk Ik'thallik Tendon-Slicer##59888
		kill Ik'thallik Tendon-Slicer##59888 |q 30625/3 |goto Valley of the Four Winds,9.5,54.0
	step
	label "2nd coord"
		talk Ik'thallik Fearmonger##59889
		kill Ik'thallik Fearmonger##59889 |q 30625/4 |goto Valley of the Four Winds,9.5,58.2
	step
	label "3rd coord"
		talk Ik'thallik Bloodrager##59887
		kill Ik'thallik Bloodrager##59887 |q 30625/1 |goto Valley of the Four Winds,8.9,54.2
	step
	label "4th coord"
		talk Ik'thik Incubator##59890
		kill Ik'thik Incubator##59890 |q 30625/2 |goto Valley of the Four Winds,8.9,51.0
	step
		talk Guard Captain Oakenshield##57198
		turnin Students No More##30625 |goto 11.6,49.5
		accept Retreat!##30626 |goto 11.6,49.5
	step
		talk Loon Mai##56720
		turnin Retreat!##30626 |goto 18.0,56.3
	step
		talk Master Bruised Paw##59856
		accept The Savior of Stoneplow##30627 |goto 17.9,55.7
	step
		talk Miss Fanny##59857
		Tell her "Let's go." |invehicle |goto 18.0,56.7
	step
		Use your Unyielding Fist ability to defeat the Mantid Collossus.
		|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
		kill Mantid Colossus##56703 |q 30627/1
	step
		talk Loon Mai##56720
		turnin The Savior of Stoneplow##30627 |goto 18.0,56.3
		accept The Gratitude of Stoneplow##30628 |goto 18.0,56.3
]])





-------------------------
----- World  Quests -----
-------------------------

-- LEGION
ZygorGuidesViewer:RegisterInclude("Legion_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "Court_of_Farondis_WQ" |complete readyq(42420) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Dreamweavers_WQ" |complete readyq(42170) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Highmountain_Tribe_WQ" |complete readyq(42233) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Valarjar_WQ" |complete readyq(42234) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Nightfallen_WQ" |complete readyq(42421) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Wardens_WQ" |complete readyq(42422) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Kirin_Tor_WQ" |complete readyq(43179) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Armies_of_Legionfall_WQ" |complete readyq(48641) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Argussian_Reach_WQ" |complete readyq(48642) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Army_of_the_Light_WQ" |complete readyq(48639) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("Legion_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "Court_of_Farondis_WQ"
		talk Veridis Fallon##107376
		|tip Inside the building.
		turnin Court of Farondis##42420 |goto Azsuna/0 46.90,41.43
		|only if readyq(42420)
	step
		talk Veridis Fallon##107376
		|tip Inside the building.
		turnin Supplies From the Court##46745 |goto Azsuna/0 46.90,41.43
		|only if haveq(46745)
	step
	label "Dreamweavers_WQ"
		talk Sylvia Hartshorn##106901
		turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25
		|only if readyq(42170)
	step
		talk Sylvia Hartshorn##106901
		turnin Supplies From the Dreamweavers##46747 |goto Val'sharah/0 54.70,73.25
		|only if haveq(46747)
	step
	label "Highmountain_Tribe_WQ"
		talk Ransa Greyfeather##106902
		turnin Highmountain Tribes##42233 |goto Thunder Totem/0 38.06,46.04
		|only if readyq(42233)
	step
		talk Ransa Greyfeather##106902
		turnin Supplies From Highmountain##46743 |goto Thunder Totem/0 38.06,46.04
		|only if haveq(46743)
	step
	label "Valarjar_WQ"
		talk Valdemar Stormseeker##106904
		turnin The Valarjar##42234 |goto Stormheim/0 60.26,51.38
		|only if readyq(42234)
	step
		talk Valdemar Stormseeker##106904
		turnin Supplies From the Valarjar##46746 |goto Stormheim/0 60.26,51.38
		|only if haveq(46746)
	step
	label "Nightfallen_WQ"
		talk First Arcanist Thalyssra##97140
		turnin The Nightfallen##42421 |goto Suramar/0 36.88,46.61 |region suramar_shalaran
		|only if readyq(42421)
	step
		talk First Arcanist Thalyssra##97140
		turnin Supplies From the Nightfallen##46748 |goto Suramar/0 36.88,46.61 |region suramar_shalaran
		|only if haveq(46748)
	step
	label "Wardens_WQ"
		talk Marin Bladewing##107379
		turnin The Wardens##42422 |goto Azsuna/0 48.17,73.90
		|only if readyq(42422)
	step
		talk Marin Bladewing##107379
		turnin Supplies From the Wardens##46749 |goto Azsuna/0 48.17,73.90
		|only if haveq(46749)
	step
	label "Kirin_Tor_WQ"
		talk Warmage Silva##32725
		turnin The Kirin Tor of Dalaran##43179 |goto Dalaran L/10 33.44,47.35
		|only if readyq(43179)
	step
	label "Armies_of_Legionfall_WQ"
		talk Commander Chambers##120183
		turnin Armies of Legionfall##48641 |goto Broken Shore/0 44.54,63.15
		|only if readyq(48641)
	step
		talk Captain Ruysantos##120414
		turnin The Bounties of Legionfall##46777 |goto Broken Shore/0 42.13,58.84
		|only if haveq(46777)
	step
	label "Argussian_Reach_WQ"
		talk Toraan the Revered##127151
		#include "Toraan_the_Revered"
		|only if readyq(48642)
	step
		talk Toraan the Revered##127151
		#include "Toraan_the_Revered_Paragon"
		|only if haveq(48976)
	step
	label "Army_of_the_Light_WQ"
		talk Vindicator Jaelaana##127120
		#include "Vindicator_Jaelaana"
		|only if readyq(48639)
	step
		talk Vindicator Jaelaana##127120
		#include "Vindicator_Jaelaana_Paragon"
		|only if haveq(48977)
	step
		|next "Choose_World_Quest"
]])

-- BATTLE FOR AZEROTH
ZygorGuidesViewer:RegisterInclude("BFA_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "Tortollan_Seekers_WQ" |complete (readyq(50604) or readyq(54451)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Horde_War_Effort_WQ" |complete (readyq(50606) or readyq(54455)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Zandalari_Empire_WQ" |complete (readyq(50598) or readyq(54462)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Talanjis_Expedition_WQ" |complete (readyq(50602) or readyq(54460)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Voldunai_WQ" |complete (readyq(50603) or readyq(54461)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Champions_of_Azeroth_WQ" |complete (readyq(50562) or readyq(54453)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Seacaller_Unow_Turnin" |complete (readyq(55777) or readyq(56223) or readyq(55776) or readyq(56226) or readyq(55775) or readyq(56227) or readyq(56225) or readyq(56222) or readyq(56224)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Suva_Turnin" |complete readyq(55766) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Slen_Darkroe_Turnin" |complete readyq(56151) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "The_Unshackled_WQ" |complete (readyq(56120) or readyq(53982)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Nevin_Tideheart_Turnin" |complete (readyq(55663) or readyq(55768)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Rustbolt_Resistance_WQ" |complete readyq(55348) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Rajani_WQ" |complete readyq(58096) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Uldum_Accord_WQ" |complete readyq(58097) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Nazjatar_Battle_Pet_Drop_Q" |complete haveq(56445,56457,56459,56460,56461,56462,56463,56464,56465,56467,56458,56466) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Mechagon_Battle_Pet_Drop_Q" |complete haveq(56437,56443,56442,56440,56441,56438,56439,56436) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("BFA_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "Tortollan_Seekers_WQ"
		talk Collector Kojo##135793
		turnin Tortollan Seekers##50604 |goto Zuldazar/0 71.50,30.35
		|only if readyq(50604)
	step
		talk Collector Kojo##135793
		turnin Baubles from the Seekers##54451 |goto Zuldazar/0 71.50,30.35
		|only if haveq(54451)
	step
	label "Horde_War_Effort_WQ"
		talk Ransa Greyfeather##135447
		turnin Horde War Effort##50606 |goto Zuldazar/0 58.07,62.65
		|only if readyq(50606)
	step
		talk Ransa Greyfeather##135447
		turnin Supplies from the Honorbound##54455 |goto Zuldazar/0 58.07,62.65
		|only if haveq(54455)
	step
	label "Zandalari_Empire_WQ"
		talk Natal'hakata##131287
		|tip Inside the building.
		turnin Zandalari Empire##50598 |goto Dazar'alor/2 67.27,71.60
		|only if readyq(50598)
	step
		talk Natal'hakata##131287
		|tip Inside the building.
		turnin Supplies from the Zandalari Empire##54462 |goto Dazar'alor/2 67.27,71.60
		|only if haveq(54462)
	step
	label "Talanjis_Expedition_WQ"
		talk Provisioner Lija##135459
		turnin Talanji's Expedition##50602 |goto Nazmir/0 39.07,79.52
		|only if readyq(50602)
	step
		talk Provisioner Lija##135459
		turnin Supplies from Talanji's Expedition##54460 |goto Nazmir/0 39.07,79.52
		|only if haveq(54460)
	step
	label "Voldunai_WQ"
		talk Hoarder Jena##135804
		turnin Voldunai##50603 |goto Vol'dun/0 56.69,49.74
		|only if readyq(50603)
	step
		talk Hoarder Jena##135804
		turnin Supplies from the Voldunai##54461 |goto Vol'dun/0 56.69,49.74
		|only if haveq(54461)
	step
	label "Champions_of_Azeroth_WQ"
		talk Zidormi##128607
		Ask her _"Can you return me to the present time?"_
		Return to the Present |complete not ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.97
		|only if readyq(50562) or haveq(54453)
	step
		talk Magni Bronzebeard##130216
		turnin Champions of Azeroth##50562 |goto Silithus/0 42.22,44.27
		|only if readyq(50562)
	step
		talk Magni Bronzebeard##130216
		turnin Supplies from Magni##54453 |goto Silithus/0 42.22,44.27
		|only if haveq(54453)
	step
	label "Seacaller_Unow_Turnin"
		talk Seacaller Unow##154450
		turnin WANTED: Braxicus##55777 |goto Nazjatar/0 48.06,61.35 |only if haveq(55777)
		turnin WANTED: Commander Sarj'eth##56223 |goto Nazjatar/0 48.06,61.35 |only if haveq(56223)
		turnin WANTED: Emorneth##55776 |goto Nazjatar/0 48.06,61.35 |only if haveq(55776)
		turnin WANTED: Gler'thogg##56226 |goto Nazjatar/0 48.06,61.35 |only if haveq(56226)
		turnin WANTED: Haggronar##55775 |goto Nazjatar/0 48.06,61.35 |only if haveq(55775)
		turnin WANTED: Inquisitor Ithriza##56227 |goto Nazjatar/0 48.06,61.35 |only if haveq(56227)
		turnin WANTED: Lady Narjiss##56225 |goto Nazjatar/0 48.06,61.35 |only if haveq(56225)
		turnin WANTED: Lady Naz'jess##56222 |goto Nazjatar/0 48.06,61.35 |only if haveq(56222)
		turnin WANTED: Lord Ha'kass##56224 |goto Nazjatar/0 48.06,61.35 |only if haveq(56224)
		|only if haveq(55777,56223,55776,56226,55775,56227,56225,56222,56224)
	step
	label "Suva_Turnin"
		talk Suva##153024
		|tip Inside the cave.
		turnin She Sells These Shells##55766 |goto Nazjatar/0 50.26,63.95
		|only if haveq(55766)
	step
	label "Slen_Darkroe_Turnin"
		talk Slen Darkroe##151635
		|tip Inside the cave.
		turnin Poen's Favorite Dish##56151 |goto Nazjatar/0 50.85,64.79
		|only if haveq(56151)
	step
	label "The_Unshackled_WQ"
		talk Atolia Seapearl##154002
		|tip Inside the cave.
		turnin The Unshackled##56120 |goto Nazjatar/0 50.98,65.26
		|only if readyq(56120)
	step
		talk Atolia Seapearl##154002
		|tip Inside the cave.
		turnin Supplies From the Unshackled##53982 |goto Nazjatar/0 50.98,65.26
		|only if haveq(53982)
	step
	label "Nevin_Tideheart_Turnin"
		talk Nevin Tideheart##151614
		|tip He walks around inside the cave.
		turnin Broken Controller##55663 |goto Nazjatar/0 50.18,66.32 |only if haveq(55663)
		turnin Emergent Sea Weeds##55768 |goto Nazjatar/0 50.18,66.32 |only if haveq(55768)
		|only if haveq(55663,55768)
	step
	label "Rustbolt_Resistance_WQ"
		turnin Supplies from the Rustbolt Resistance##55348 |goto Mechagon Island/0 74.12,37.01
		|only if haveq(55348)
	step
	label "Rajani_WQ"
		talk Zidormi##163463
		Ask her _"Can you return me to the present time?"_
		Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96
		|only if haveq(58096)
	step
		Enter the building |goto Vale of Eternal Blossoms New/0 40.24,75.24 < 20 |walk
		talk Zhang Ku##160711
		|tip Inside the building.
		turnin Supplies from the Rajani##58096 |goto 44.45,75.42
		|only if haveq(58096)
	step
	label "Uldum_Accord_WQ"
		talk Zidormi##162419
		Ask her _"Can you return me to the present time?"_
		Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14
		|only if haveq(58097)
	step
		talk Provisioner Qorra##160714
		|tip Inside the building.
		turnin Supplies from the Uldum Accord##58097 |goto Uldum New/0 55.11,32.86
		|only if haveq(58097)
	step
	label "Nazjatar_Battle_Pet_Drop_Q"
		talk Finder Palta##153514
		turnin Wiggletail's Poking Fork##56445 |goto Nazjatar/0 49.23,62.08 |only if haveq(56445)
		turnin Leathery Venom Gland##56457 |goto 49.23,62.08 |only if haveq(56457)
		turnin Half-Digested Deepcoral Pod##56459 |goto 49.23,62.08 |only if haveq(56459)
		turnin Molted Spineshell##56460 |goto 49.23,62.08 |only if haveq(56460)
		turnin Pearlescent Shell##56461 |goto 49.23,62.08 |only if haveq(56461)
		turnin Eel Jelly##56462 |goto 49.23,62.08 |only if haveq(56462)
		turnin Mottled Hydra Scale##56463 |goto 49.23,62.08 |only if haveq(56463)
		turnin Strange Organ##56464 |goto 49.23,62.08 |only if haveq(56464)
		turnin Overgrown Stone##56465 |goto 49.23,62.08 |only if haveq(56465)
		turnin Frenzy Fang##56467 |goto 49.23,62.08 |only if haveq(56467)
		turnin Opaline Conch##56458 |goto 49.23,62.08 |only if haveq(56458)
		turnin Crackling Mandible##56466 |goto 49.23,62.08 |only if haveq(56466)
		|only if haveq(56445,56457,56459,56460,56461,56462,56463,56464,56465,56467,56458,56466)
	step
	label "Mechagon_Battle_Pet_Drop_Q"
		talk Vera Lonelycog##150629
		turnin Rusty Tube##56437 |goto Mechagon Island/0 69.27,30.65 |only if haveq(56437)
		turnin Mechanical Eye##56443 |goto 69.27,30.65 |only if haveq(56443)
		turnin Broken Unit 6##56442 |goto 69.27,30.65 |only if haveq(56442)
		turnin Can of Critter Spray##56440 |goto 69.27,30.65 |only if haveq(56440)
		turnin Cluckbox##56441 |goto 69.27,30.65 |only if haveq(56441)
		turnin Flashing Siren##56438 |goto 69.27,30.65 |only if haveq(56438)
		turnin Mechanical Egg Sac##56439 |goto 69.27,30.65 |only if haveq(56439)
		turnin Small Skull##56436 |goto 69.27,30.65 |only if haveq(56436)
		|only if haveq(56437,56443,56442,56440,56441,56438,56439,56436)
	step
		|next "Choose_World_Quest"
]])

--SHADOWLANDS
ZygorGuidesViewer:RegisterInclude("Shadow_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "The_Ascended_WQ" |complete readyq(61097) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Court_of_Harvesters_WQ" |complete readyq(61100) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "The_Undying_Army_WQ" |complete readyq(61095) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "The_Wild_Hunt_WQ" |complete readyq(61098) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Death's_Advance_WQ" |complete readyq(64012) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Enlightened_WQ" |complete readyq(64867) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("Shadow_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "The_Ascended_WQ"
		talk Adjutant Nikos##168820
		turnin Supplies from The Ascended##61097 |goto Bastion/0 52.24,47.10 |region heros_rest
		|only if readyq(61097)
	step
	label "Court_of_Harvesters_WQ"
		talk Mistress Mihaela##156822
		turnin Supplies from the Court of Harvesters##61100 |goto Revendreth/0 61.31,63.78
		|only if readyq(61100)
	step
	label "The_Undying_Army_WQ"
		talk Nalcorn Talsen##173003
		turnin Supplies from The Undying Army##61095 |goto Maldraxxus/0 50.76,53.38
		|only if readyq(61095)
	step
	label "The_Wild_Hunt_WQ"
		talk Aithlyn##158556
		turnin Supplies from The Wild Hunt##61098 |goto Ardenweald/0 48.48,50.42 |only if not NightFae
		turnin Supplies from The Wild Hunt##61098 |goto Heart of the Forest/0 59.47,31.80 |only if  NightFae
		|only if readyq(61098)
	step
	label "Death's_Advance_WQ"
		talk Duchess Mynx##179321
		turnin Supplies from Death's Advance##64012 |goto Korthia/0 63.31,23.34
		|only if readyq(64012)
	step
	label "Enlightened_WQ"
		talk Vilo##182257
		turnin Supplies from The Enlightened##64867 |goto Zereth Mortis/0 34.75,64.13
		|only if readyq(64867)
	step
		|next "Choose_World_Quest"
]])