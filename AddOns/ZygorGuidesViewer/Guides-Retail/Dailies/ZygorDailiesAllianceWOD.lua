local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Lunarfall Inn Dungeon Dailies",{
description="\nThis guide will take you through the Lunarfall Inn dungeon dailies.",
},[[
step
label "start"
#include "Garrison_Medium_Building", building="Inn"
Accept the quests from the two NPCs that spawned today:
confirm
step
label "queuemenu"
Press _I_ and queue for the following Dungeons:
You don't have any dungeon quests! |only if default |confirm |next "start"
Enter _Auchindoun_ |only if haveq(37146) |goto Auchindoun/1 |c |next "auch" |or
|tip This can be completed on Heroic or Non-Heroic |only if haveq(37146)
Enter _Everbloom_ |only if haveq(37227) |goto The Everbloom/1 |c |next "everbloom" |or
|tip This can be completed on Heroic or Non-Heroic |only if haveq(37227)
Enter _Grimrail Depot_ |only if haveq(37209) |goto Grimrail Depot/1 |c |next "grimrail" |or
|tip This can be completed on Heroic or Non-Heroic |only if haveq(37209)
Enter _Iron Docks_ |only if haveq(37145) |goto Iron Docks/1 |c |next "irondocks" |or
|tip This can be completed on Heroic or Non-Heroic |only if haveq(37145)
Enter _Shadowmoon Burial Grounds_ |only if haveq(37245) |goto Shadowmoon Burial Grounds/1 |c |next "shadowmoon" |or
|tip This can be completed on Heroic or Non-Heroic |only if haveq(37245) or haveq(37149)
Enter _Upper Blackrock Spire_ |only if haveq(37244) |goto Upper Blackrock Spire 2/1 |c |next "upperbrs" |or
|tip This can be completed on Heroic or Non-Heroic |only if haveq(37244)
Enter _Auchindoun HEROIC_ |only if haveq(37233) or haveq(37232) |goto Auchindoun/1 |c |next "auch" |or
Enter _Bloodmaul Slag Mines HEROIC_ |only if haveq(37228) or haveq(37229) or haveq(37142) |goto Bloodmaul Slag Mines/1 51.5,83.3 |c |next "slagmines" |or
Enter _Everbloom HEROIC_ |only if haveq(37240) or haveq(37241) |goto The Everbloom/1 |c |next "everbloom" |or
Enter _Grimrail Depot HEROIC_ |only if haveq(37242) or haveq(37243) |goto Grimrail Depot/1 |c |next "grimrail" |or
Enter _Iron Docks HEROIC_ |only if haveq(37230) or haveq(37231) |goto Iron Docks/1 |c |next "irondocks" |or
Enter _Shadowmoon Burial Grounds HEROIC_ |only if haveq(37238) or haveq(37239) |goto Shadowmoon Burial Grounds/1 |c |next "shadowmoon" |or
Enter _Skyreach HEROIC_ |only if haveq(37234) or haveq(37235) or haveq(37158) |goto Skyreach/1 |c |next "skyreach" |or
Enter _Upper Blackrock Spire HEROIC_ |only if haveq(37236) or haveq(37237) |goto Upper Blackrock Spire 2/1 |c |next "upperbrs" |or
step
label "auch"
click Soulsever Blade##237464
|tip It's a purple weapon sitting on the ledge.
collect Soulsever Blade##118619 |q 37232/1 |goto Auchindoun/1 53.5,63.1
step
click Soulweave Vessel##237465
|tip It's a floating purple object.
collect Soulweave Vessel##118620 |q 37233/1 |goto Auchindoun/1 24.1,32.5
step
click Nightmare Bell##237479
|tip It looks like a purple bell hanging from the ceiling.
collect Nightmare Bell##118648 |q 37146/1 |goto Auchindoun/1 64.1,56.4
step
kill Teron'gor##77734 |q 37232/2 |goto Auchindoun/1 49.6,33.5
|tip Teron'gor is the final boss of the dungeon.
step
kill Teron'gor##77734 |q 37233/2 |goto Auchindoun/1 49.6,33.5
|tip Teron'gor is the final boss of the dungeon.
step
kill Teron'gor##77734 |q 37146/2 |goto Auchindoun/1 49.6,33.5
|tip Teron'gor is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Lilian Voss##87996", building="Inn"
turnin Soulcarver Voss##37232
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Leonid Barthalomew the Revered##87997", building="Inn"
turnin Vessel of Virtue##37233
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action "talk Johnny Awesome##88022", building="Inn"
turnin Go Fetch##37146
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "slagmines"
click Ogre Family Tree##237477
|tip It looks like a little tree stump on the ground.
collect Ogre Family Tree##118646 |q 37142/1 |goto Bloodmaul Slag Mines/1 52.0,58.7
step
kill Bloodmaul Enforcer##84978+, Bloodmaul Slaver##75191+
collect Giant Ogre Head##118534 |q 37228/1 |goto Bloodmaul Slag Mines 45,55
step
click Olaf's Shield##237461
|tip It's a small shield on the ground.
collect Olaf's Shield##118616 |q 37229/1 |goto Bloodmaul Slag Mines/1 45.6,56.5
step
kill Gug'rokk##74790 |q 37142/2 |goto Bloodmaul Slag Mines/1 65.4,22.7
|tip Gug'rokk is the final boss of the dungeon.
step
kill Gug'rokk##74790 |q 37228/2 |goto Bloodmaul Slag Mines/1 65.4,22.7
|tip Gug'rokk is the final boss of the dungeon.
step
kill Gug'rokk##74790 |q 37229/2 |goto Bloodmaul Slag Mines/1 65.4,22.7
|tip Gug'rokk is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk talk 88013", building="Inn"
turnin Ogre Ancestry##37142
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Cro Threadstrong##87991", building="Inn"
turnin A Fruitful Proposition##37228
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Olaf##87992", building="Inn"
turnin Like A Dwarf In A Mine##37229
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "everbloom"
click Overgrown Artifact##237473
|tip It's a small box with a glowing yellow-white sphere on the top.
collect Overgrown Artifact##118628 |q 37241/1 |goto The Everbloom/1 60.9,66.5
step
click Strangely-Glowing Frond##237472
|tip It is a small yellow and pink plant.
collect Strangely-Glowing Frond##118627 |q 37240/1 |goto The Everbloom/1 64.3,20.4
step
click Rustling Peachick Nest##237483
|tip It looks like a small brown bush.
collect Tiny Peachick Hatchling##118652 |q 37227/1 |goto The Everbloom/1 55.5,22.2
step
kill Yalnu##83846 |q 37241/2 |goto The Everbloom/2 47.0,67.0
|tip Yalnu is the final boss of the dungeon.
step
kill Yalnu##83846 |q 37240/2 |goto The Everbloom/2 47.0,67.0
|tip Yalnu is the final boss of the dungeon.
step
kill Yalnu##83846 |q 37227/2 |goto The Everbloom/2 47.0,67.0
|tip Yalnu is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Lorewalker Cho##88005", building="Inn"
turnin Lessons of the Past##37241
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Zen'kiki##88004", building="Inn"
turnin The Leaf-Reader##37240
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Mylune##88025", building="Inn"
turnin Put a Bird on It##37227
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "grimrail"
click Huge Crate of Weapons##237474
|tip It's a small crate with a red-yellow top next to some barrels.
collect Huge Crate of Weapons##118643 |q 37242/1 |goto Grimrail Depot/1 54.7,38.9
step
click Iron Limbcleaver##237475
|tip It looks like a large axe sitting in a weapon rack.
collect Iron Limbcleaver##118644 |q 37243/1 |goto Grimrail Depot/3 53.8,52.5
step
click Iron Autocannon##237484
|tip It is a steel cannon with a few spikes on it sitting on top of a crate.
collect Iron Autocannon##118653 |q 37209/1 |goto Grimrail Depot/4 67.4,47.5
step
kill Skylord Tovra##80005 |q 37242/2 |goto Grimrail Depot/4 15.3,51.7
|tip Skylord Tovra is the final boss of the dungeon.
step
kill Skylord Tovra##80005 |q 37243/2 |goto Grimrail Depot/4 15.3,51.7
|tip Skylord Tovra is the final boss of the dungeon.
step
kill Skylord Tovra##80005 |q 37209/2 |goto Grimrail Depot/4 15.3,51.7
|tip Skylord Tovra is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Lonika Stillblade##88006", building="Inn"
turnin Learning Is Painful##37242
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Gamon##88007", building="Inn"
turnin An Axe to Grind##37243
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk John J. Keeshan##88026", building="Inn"
turnin Cold Steel Part II##37209
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "irondocks"
click Strange Brass Compass##237463
|tip It's a small gold-colored compass next to the barrel and crate.
collect Strange Brass Compass##118618 |q 37231/1 |goto Iron Docks/1 47.2,26.3
step
click Horribly Acidic Solution##237462
|tip It's a greenish glowing bottle on top of the barrel.
collect Horribly Acidic Solution##118617 |q 37230/1 |goto Iron Docks/1 50.2,52.2
step
click Very Shiny Thing##237478
|tip It's a large gold coin sitting on a crate.
collect Very Shiny Thing##118647 |q 37145/1 |goto Iron Docks/1 85.0,48.0
step
kill Skulloc##83612 |q 37231/2 |goto Iron Docks/1 68.4,43.6
|tip Skulloc is the final boss of the dungeon.
step
kill Skulloc##83612 |q 37230/2 |goto Iron Docks/1 68.4,43.6
|tip Skulloc is the final boss of the dungeon.
step
kill Skulloc##83612 |q 37145/2 |goto Iron Docks/1 68.4,43.6
|tip Skulloc is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Fleet Master Seahorn##87995", building="Inn"
turnin The Search Continues##37231
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Moroes##87994", building="Inn"
turnin Bloody Expensive##37230
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Budd##88017", building="Inn"
turnin Budd's Gambit##37145
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "shadowmoon"
click Dark Parchment##237470
|tip It's a small rolled up scroll with a purple seal laying on the ground.
collect Dark Parchment##118625 |q 37238/1 |goto Shadowmoon Burial Grounds/1 30.0,42.9
step
_Jump down_ the hole |goto Shadowmoon Burial Grounds/1 52.5,77.6 < 10
click Void-Gate Key##237482
|tip It looks like a purple glowing crystal floating above a stone slab.
collect Void-Gate Key##118651 |q 37245/1 |goto Shadowmoon Burial Grounds/1 38.0,50.8
step
click Silver-Lined Arrow##237471
|tip It's an arrow with white and purple fletching laying next to some lit candles.
collect Silver-Lined Arrow##118626 |q 37239/1 |goto Shadowmoon Burial Grounds/1 83.6,80.6
step
kill Ner'zhul##76407 |q 37238/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|tip Ner'zhul is the final boss of the dungeon.
step
kill Ner'zhul##76407 |q 37245/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|tip Ner'zhul is the final boss of the dungeon.
step
kill Ner'zhul##76407 |q 37239/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|tip Ner'zhul is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Highlord Darion Mograine##88002", building="Inn"
turnin Secrets of Soulbinding##37238
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Impsy##88027", building="Inn"
turnin Whispers in the Darkness##37245
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Cowled Ranger##88003", building="Inn"
turnin Fate of the Fallen##37239
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "skyreach"
click Pristine Plumage##237467
|tip It looks like a blue feather quill pen.
collect Pristine Plumage##118622 |q 37235/1 |goto Skyreach/1 63.8,24.9
step
click Sun Crystal##237466
|tip It looks like a glowing yellow sun shield.
collect Sun Crystal##118621 |q 37234/1 |goto Skyreach/1 52.9,48.6
step
kill High Sage Viryx##76266 |q 37235/2 |goto Skyreach/2 48.8,33.3
|tip High Sage Viryx is the final boss of the dungeon.
step
kill High Sage Viryx##76266 |q 37234/2 |goto Skyreach/2 48.8,33.3
|tip High Sage Viryx is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Skylord Omnuron##87999", building="Inn"
turnin A Plea to the Sky##37235
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Sunwalker Dezco##87998", building="Inn"
turnin The Dark Within##37234
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
step
label "upperbrs"
click Bottled Flamefly##237481
|tip It can be found in the first room up the first ramp on a barrel.
collect Spire Flamefly##118650 |q 37244/1 |goto Upper Blackrock Spire 2/1 36.0,16.7
step
click Finkle's Improved Skinner##237468
|tip It's a jagged looking blade on the floor.
collect Finkle's Improved Skinner##118623 |q 37236/1 |goto Upper Blackrock Spire 2/2 30.3,38.3
step
click Shed Proto-Dragon Claw##237469
|tip It's a curved claw laying on the ground.
collect Shed Proto-Dragon Claw##118624 |q 37237/1 |goto Upper Blackrock Spire 2/3 48.5,19.52
step
kill Warlord Zaela##77120 |q 37244/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
|tip Warlord Zaela is the final boss of the dungeon.
step
kill Warlord Zaela##77120 |q 37236/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
|tip Warlord Zaela is the final boss of the dungeon.
step
kill Warlord Zaela##77120 |q 37237/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
|tip Warlord Zaela is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Oralius##88024", building="Inn"
turnin Flamefly Trap##37244
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Finkle Einhorn##88000", building="Inn"
turnin Like Father, Like Son##37236
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
step
#include "Garrison_Medium_Building", action="talk Maximillian of Northshire##88001", building="Inn"
turnin A Hero's Quest is Never Complete##37237
|tip Turn in NPCs can sometimes be found behind the inn or downstairs.
|next "queuemenu"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Fishing Dailies",{
description="\nThis guide will take you through the Fishing dailies.",
},[[
step
label "start"
talk Ron Ashton##77733
accept Fat Sleeper##36513 |or |goto Lunarfall/0 54.0,14.8
accept Fire Ammonite##36510 |or |goto Lunarfall/0 54.0,14.8
accept Blind Lake Sturgeon##36514 |or |goto Lunarfall/0 54.0,14.8
accept Abyssal Gulper Eel##36517 |or |goto Lunarfall/0 54.0,14.8
accept Blackwater Whiptail##36515 |or |goto Lunarfall/0 54.0,14.8
accept Jawless Skulker##36511 |or |goto Lunarfall/0 54.0,14.8
|tip You will only be able to accept one of these a day.
step
Fish in the water here |cast Fishing##131474
|tip Or fish in a nearby Fat Sleeper School.
use Fat Sleeper Bait##110289 |only if itemcount(110289) > 0
collect Small Fat Sleeper##111651 |n
use Small Fat Sleeper##111651 |only if itemcount(111651) > 4
|tip Use the Small Fat Sleepers to flay them. |only if itemcount(111651) > 4
collect Fat Sleeper##111668 |n
use Fat Sleeper##111668 |only if itemcount(111668) > 4
|tip Use the Fat Sleepers to flay them. |only if itemcount(111668) > 4
collect Enormous Fat Sleeper##111675 |n
use Enormous Fat Sleeper##111675 |only if itemcount(111675) > 4
|tip Use the Enormous Fat Sleepers to flay them. |only if itemcount(111675) > 4
collect 10 Fat Sleeper Egg##112631 |q 36513/1 |goto Nagrand D 72.5,26.5
step
Fish in the lava here |cast Fishing##131474
|tip Or fish in a nearby Fire Ammonite School.
use Fire Ammonite Bait##110291 |only if itemcount(110291) > 0
collect Small Fire Ammonite##111656 |n
use Small Fire Ammonite##111656 |only if itemcount(111656) > 4
|tip Use the Small Fire Ammonites to flay them. |only if itemcount(111656) > 4
collect Fire Ammonite##111666 |n
use Fire Ammonite##111666 |only if itemcount(111666) > 4
|tip Use the Fire Ammonites to flay them. |only if itemcount(111666) > 4
collect Enormous Fire Ammonite##111673 |n
use Enormous Fire Ammonite##111673 |only if itemcount(111673) > 4
|tip Use the Enormous Fire Ammonites to flay them. |only if itemcount(111673) > 4
collect 10 Fire Ammonite Eg##112628 |q 36510/1 |goto Frostfire Ridge/0 51.6,59.05
step
Fish in the water here |cast Fishing##131474
|tip Or fish in a nearby Blind Lake Sturgeon School.
use Blind Lake Sturgeon Bait##110290 |only if itemcount(110290) > 0
collect Small Blind Lake Sturgeon##111652 |n
use Small Blind Lake Sturgeon##111652 |only if itemcount(111652) > 4
|tip Use the Small Blind Lake Sturgeons to flay them. |only if itemcount(111652) > 4
collect Blind Lake Sturgeon##111667 |n
use Blind Lake Sturgeon##111667 |only if itemcount(111667) > 4
|tip Use the Blind Lake Sturgeons to flay them. |only if itemcount(111667) > 4
collect Enormous Blind Lake Sturgeon##111674 |n
use Enormous Blind Lake Sturgeon##111674 |only if itemcount(111674) > 4
|tip Use the Enormous Blind Lake Sturgeons to flay them. |only if itemcount(111674) > 4
collect 10 Blind Lake Sturgeon Egg##112629 |q 36514/1 |goto Shadowmoon Valley D 48.5,34.15
step
Fish in the water here |cast Fishing##131474
|tip Or fish in a nearby Abyssal Gulper Eel School.
use Abyssal Gulper Eel Bait####110293 |only if itemcount(110293) > 0
collect Small Abyssal Gulper Eel##111659 |n
use Small Abyssal Gulper Eel##111659 |only if itemcount(111659) > 4
|tip Use the Small Abyssal Gulper Eels to flay them. |only if itemcount(111659) > 4
collect Abyssal Gulper Eel##111664 |n
use Abyssal Gulper Eel##111664 |only if itemcount(111664) > 4
|tip Use the Abyssal Gulper Eels to flay them. |only if itemcount(111664) > 4
collect Enormous Abyssal Gulper Eel##111671 |n
use Enormous Abyssal Gulper Eel##111671 |only if itemcount(111671) > 4
|tip Use the Enormous Abyssal Gulper Eels to flay them. |only if itemcount(111671) > 4
collect 10 Abyssal Gulper Eel Egg##112627 |q 36517/1 |goto Spires of Arak 63.7,21.8
step
Fish in the water here |cast Fishing##131474
|tip Or fish in a nearby Blackwater Whiptail School.
use Blackwater Whiptail Bait##110294 |only if itemcount(110294) > 0
collect Small Blackwater Whiptail##111662 |n
use Small Blackwater Whiptail##111662 |only if itemcount(111662) > 4
|tip Use the Small Blackwater Whiptails to flay them. |only if itemcount(111662) > 4
collect Blackwater Whiptail##111663 |n
use Blackwater Whiptail##111663 |only if itemcount(111663) > 4
|tip Use Blackwater Whiptails to flay them. |only if itemcount(111663) > 4
collect Enormous Blackwater Whiptail##111670 |n
use Enormous Blackwater Whiptail##111670 |only if itemcount(111670) > 4
|tip Use Enormous Blackwater Whiptails to flay them. |only if itemcount(111670) > 4
collect 10 Blackwater Whiptail Egg##112626 |q 36515/1 |goto Talador 63.0,34.65
step
Fish in the water here |cast Fishing##1314745
|tip Or fish in a nearby Jawless Skulker School.
use Jawless Skulker Bait##110274 |only if itemcount(110274) > 0
collect Small Jawless Skulker##111650 |n
use Small Jawless Skulker##111650 |only if itemcount(111650) > 4
|tip Use the Small Jawless Skulkers to flay them. |only if itemcount(111650) > 4
collect Jawless Skulker##111669 |n
use Jawless Skulker##111669 |only if itemcount(111669) > 4
|tip Use the Jawless Skulkers to flay them. |only if itemcount(111669) > 4
collect Enormous Jawless Skulker##111676 |n
use Enormous Jawless Skulker##111676 |only if itemcount(111676) > 4
|tip Use the Enormous Jawless Skulkers to flay them. |only if itemcount(111676) > 4
collect 10 Jawless Skulker Egg##112630 |q 36511/1 |goto Gorgrond 43.5,81.0
step
talk Ron Ashton##77733
turnin Jawless Skulker##36511 |goto Lunarfall/0 54.0,14.8 |only if haveq(36511)
turnin Blackwater Whiptail##36515 |goto Lunarfall/0 54.0,14.8 |only if haveq(36515)
turnin Abyssal Gulper Eel##36517 |goto Lunarfall/0 54.0,14.8 |only if haveq(36517)
turnin Blind Lake Sturgeon##36514 |goto Lunarfall/0 54.0,14.8 |only if haveq(36514)
turnin Fire Ammonite##36510 |goto Lunarfall/0 54.0,14.8 |only if haveq(36510)
turnin Fat Sleeper##36513 |goto Lunarfall/0 54.0,14.8 |only if haveq(36513)
step
talk Nat Pagle##85984
accept Abyssal Gulper Lunker##36802 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(116818) > 0
accept Blackwater Whiptail Lunker##36803 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(116817) > 0
accept Blind Lake Lunker##36804 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(116820) > 0
accept Fat Sleeper Lunker##36805 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(116821) > 0
accept Felmouth Frenzy Lunker##39283 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(127994) > 0
accept Fire Ammonite Lunker##36800 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(116819) > 0
accept Jawless Skulker Lunker##36806 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(116822) > 0
accept Sea Scorpion Lunker##38406 |or |goto Lunarfall/0 38.2,72.0 |only if itemcount(122696) > 0
only if hasfollower(202)
step
label "end"
You've completed the daily for today
Click to restart the dailies run |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Battle Pets Dailies",{
patch='unknown',
source='unknown',
description="\nThis guide will take you through the Battle Pets dailies.",
},[[
step
label "start"
The Battle Pet dailies are _account wide_ and can only be completed on your account by _one character per day_
The Garrison Battle Pet dailies can be completed once per day _by each character_ you have that _has the Menagerie unlocked_ |only if not completedq(36662) or not completedq(37645) and not completedq(38300)
_Click_ to complete your Garrison daily |confirm |next "garris" |only if not completedq(36662) or not completedq(37645) and not completedq(38300)
You have completed your _Garrison_ Battle Pets Dailies today |confirm |only if completedq(36662) or completedq(37645) and completedq(38300)
_
_Click_ to battle Gargra |confirm |next "gargr" |only if not completedq(37205)
|tip She is located in Frostfire Ridge. |only if not completedq(37205)
You have defeated _Gargra_ today |only if completedq(37205)
_Click_ to battle Cymre Brightblade |confirm |next "cymre" |only if not completedq(37201)
|tip She is located in Gorgrond. |only if not completedq(37201)
You have defeated _Cymre Brightblade_ today |only if completedq(37201)
_Click_ to battle Taralune |confirm |next "teral" |only if not completedq(37208)
|tip She is in Talador. |only if not completedq(37208)
You have defeated _Taralune_ today |only if completedq(37208)
_Click_ to battle Vesharr |confirm |next "vesha" |only if not completedq(37207)
|tip He is in Spires of Arak. |only if not completedq(37207)
You have defeated _Vesharr_ today |only if completedq(37207)
_Click_ to battle Ashlei |confirm |next "ashle" |only if not completedq(37203)
|tip She is located in Shadowmoon Valley. |only if not completedq(37203)
You have defeated _Ashlei_ today |only if completedq(37203)
_Click_ to battle Tarr the Terrible |confirm |next "tarrt" |only if not completedq(37206)
|tip He is in Nagrand. |only if not completedq(37206)
You have defeated _Tarr the Terrible_ today |only if completedq(37206)
step
label "cymre"
Travel along this _stone bridge_ |goto Gorgrond 49.9,74.2 < 30
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
step
talk Cymre Brightblade##83837
Tell her: "_Let's do this!_"
|tip She has 3 LEGENDARY PETS. 1 Undead, 1 Magic and 1 Mechanical.
Defeat Cymre Brightblade In a Pet Battle |q 37201/1 |goto 51.1,70.6
step
talk Cymre Brightblade##83837
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|next "start"
step
label "ashle"
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
step
talk Ashlei##87124
Tell her: "_Let's do this!_"
|tip She has 3 RARE PETS. 2 Magic and 1 Beast.
Defeat Ashlei In a Pet Battle |q 37203/1 |goto 50.03,31.26
step
talk Ashlei##87124
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|next "start"
step
label "vesha"
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3
step
talk Vesharr##87123
Tell him: "_Let's do this!_"
|tip He has 3 RARE PETS. 2 Flying and 1 Mechanical.
Defeat Vesharr In a Pet Battle |q 37207/1 |goto 46.30,45.31
step
talk Vesharr##87123
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
|next "start"
step
label "gargr"
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8
step
talk Gargra##87122
Tell her: "_Let's do this!_"
|tip She has 3 RARE PETS. All 3 of them are Beast Pets.
Defeat Gargra In a Pet Battle |q 37205/1 |goto 68.59,64.77
step
talk Gargra##87122
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|next "start"
step
label "teral"
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3
step
talk Taralune##87125
Tell her: "_Let's do this!_"
|tip She has 3 RARE PETS. and all 3 of them are Flying.
Defeat Taralune In a Pet Battle |q 37208/1 |goto 49.10,80.36
step
talk Taralune##87125
turnin Taralune##37208 |goto Talador 49.1,80.3
|next "start"
step
label "tarrt"
_Enter_ the Gorian Proving Grounds |goto Nagrand D/0 57.0,19.0 < 30
_Go up_ the stone steps |goto Nagrand D/0 56.7,17.8 < 30
_Continue up_ the second set of stone steps |goto Nagrand D/0 56.9,11.5 < 20
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
step
talk Tarr the Terrible##87110
Tell him: "_Let's do this!_"
|tip He has 3 RARE PETS. All 3 of them are Humanoid.
Defeat Tarr the Terrible In a Pet Battle |q 37206/1 |goto 56.32,10.03
step
talk Tarr the Terrible##87110
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|next "start"
step
label "garris"
talk Lio the Lioness##85418
accept Battle Pet Roundup##36483 |or |only if hasbuilding(42) or hasbuilding(167) |goto Lunarfall 29.2,40.4
accept Mastering the Menagerie##37644 |or |only if hasbuilding(168) |goto Lunarfall 29.2,40.4
step
clicknpc Challenge Post##85626
|tip The pets are different each day, so choose to fight, then Forfeit after you see which pets are used. Choose the pets you need to counter, then fight again.
Defeat the Pets in the Small Arena |q 36483/1 |or |only if hasbuilding(42) or hasbuilding(167) | goto Lunarfall/0 28.7,43.5
Defeat the Pets in the Small Arena |q 36483/1 |or |only if hasbuilding(168) |goto Lunarfall/0 28.7,43.5
step
talk Lio the Lioness##85418
turnin Battle Pet Roundup##36483 |only if haveq(36483) or hasbuilding(167) |goto Lunarfall 29.2,40.4
turnin Mastering the Menagerie##37644 |only if haveq(37644) |goto Lunarfall 29.2,40.4
step
talk Erris the Collector##91014
accept Critters of Draenor##38299 |goto Lunarfall/0 31.1,39.6
step
talk Erris the Collector##91014
Tell her "_Let's do this!_"
|tip Her pets are different each day, so choose to fight her, then Forfeit after you see which pets she is using. Choose the pets you need to counter her, then fight her again.
Defeat Erris the Collector In a Pet Battle |q 38299/1 |goto Lunarfall/0 31.1,39.6
step
talk Erris the Collector##91014
turnin Critters of Draenor##38299 |goto Lunarfall/0 31.1,39.6
|next "start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Harrison Jones Treasure Contracts",{
description="\nThis guide will walk you through completing the Master Relic Hunter quests offered by Harrison Jones in your garrison.",
endlevel=40
},[[
step
label "Start"
ding 40
Proceeding to guide |only if garrisonlvl(3) |next "Dailies"
Proceeding to alternate |only if garrisonlvl(1) or garrisonlvl(2) |next "Alternate"
stickystart "NPC1"
step
label "Alternate"
You currently have a level 1 Town Hall. Harrison Jones will only appear in a level 3 garrison |only if garrisonlvl(1)
You currently have a level 2 Town Hall. Harrison Jones will only appear in a level 3 garrison |only if garrisonlvl(2)
To access Harrison Jones, you will need to join another player's level 3 garrison
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
#include "Garrison_Harrison"
Accept the daily quest Harrison Jones offers |complete haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37852) or haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37979) or haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37885) or haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37919) or haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37811) or haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37945) |repeatable |next "Quests"
accept Treasure Contract: Amulet of Rukhmar##37848 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Artificer##37973 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Explosive Discoveries##37881 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Thunderlord Sage##37914 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Gutrek's Cleaver##37788 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Infected Orc##37941 |repeatable |only if garrisonlvl(4)
step
label "NPC1"
Harrison Jones is one of 4 random NPCs that can spawn in a garrison
If he is not available in your garrison, you may join a friend's garrison who has him available
stickystart "NPC2"
step
label "Dailies"
#include "Garrison_Harrison"
Accept the daily quest Harrison Jones offers |complete haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37852) or haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37979) or haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37885) or haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37919) or haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37811) or haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37945) |repeatable |next "Quests"
accept Treasure Contract: Amulet of Rukhmar##37848 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Artificer##37973 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Explosive Discoveries##37881 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Thunderlord Sage##37914 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Gutrek's Cleaver##37788 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Infected Orc##37941 |repeatable |only if garrisonlvl(4)
step
label "NPC2"
Harrison Jones is one of 4 random NPCs that can spawn in a garrison
If he is not available in your garrison, you may join a friend's garrison who has him available
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
step
label "Quests"
Proceeding |next "Rukhmar" |only if haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37852)
Proceeding |next "Artificer" |only if haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37979)
Proceeding |next "Explosive" |only if haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37885)
Proceeding |next "Thunderlord" |only if haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37919)
Proceeding |next "Cleaver" |only if haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37811)
Proceeding |next "Infected" |only if haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37945)
step
label "Rukhmar"
click Research Note##239821+
|tip They look like small scroll cases on the ground, usually found inside or around the small cauldrons in this area.
collect 5 Research Note##121819 |q 37848/1 |goto Spires of Arak/0 48.8,8.4
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: Amulet of Rukhmar##37848
accept Amulet of Rukhmar: The First Key##37849
step
click Mysterious Device##239818
|tip It is a large gold circular plate laying on the ground.
Activate the First Key |q 37849/1 |goto Spires of Arak/0 53.0,14.8
step
Click the _Quest Complete_ Box:
turnin Amulet of Rukhmar: The First Key##37849
accept Amulet of Rukhmar: The Second Key##37850
step
click Mysterious Device##239819
|tip It is located underwater at the base of the waterfall
Activate the Second Key |q 37850/1 |goto Spires of Arak/0 60.5,12.3
step
Click the _Quest Complete_ Box:
turnin Amulet of Rukhmar: The Second Key##37850
accept Amulet of Rukhmar: The Final Key##37851
step
_Enter_ the cave |goto Spires of Arak/0 73.4,34.9 < 20 |walk
click Mysterious Device##239818
Activate the Final Key |q 37851/1 |goto Spires of Arak/0 71.8,34.6
step
Click the _Quest Complete_ Box:
turnin Amulet of Rukhmar: The Final Key##37851
accept Amulet of Rukhmar: The Apexis Device##37852
step
Locate the Apexis Device |q 37852/1 |goto Spires of Arak/0 73.5,43.1
step
Activate and Enter the Portal |q 37852/2 |goto Spires of Arak/0 73.5,43.1
|tip Click the each statue until they face the center portal device.
step
kill 1 Aspect of Rukhmar##89990
Face Rukhmar |q 37852/3 |goto Spires of Arak/0 70.0,34.2
|next "Turnin"
step
label "Artificer"
Locate the Missing Artificer |q 37973/1 |goto Spires of Arak/0 67.4,21.8
step
Read Artificer Maatun's Journal |q 37973/2 |goto Spires of Arak/0 67.4,21.8
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: The Artificer##37973
accept Dream of Argus: The First Fragment##37976
step
Enter the cave |goto Spires of Arak/0 69.2,22.4 < 10 |walk
kill Lor Stonefist##90603
Retrieve the First Rough Crystal Shard |q 37976/1 |goto Spires of Arak/0 70.4,22.0
step
Click the _Quest Complete_ Box:
turnin Dream of Argus: The First Fragment##37976
accept Dream of Argus: The Second Fragment##37977
step
kill Vok Blacktongue##90602
Retrieve the Cracked Crystal Shard |q 37977/1 |goto Spires of Arak/0 72.9,32.0
step
Click the _Quest Complete_ Box:
turnin Dream of Argus: The Second Fragment##37977
accept Dream of Argus: The Final Fragment##37978
step
kill Jagganath##90458, Koros Soulsplinter##90404
Retrieve the Cracked Crystal Shard |q 37978/1 |goto Spires of Arak/0 75.0,26.1
step
Click the _Quest Complete_ Box:
turnin Dream of Argus: The Final Fragment##37978
accept Dream of Argus: The Crystal Reborn##37979
step
Go _down the narrow_ path |goto Spires of Arak/0 74.8,19.4 < 15
_Enter_ the cave |goto Shadowmoon Valley D/0 32.7,45.3 < 10 |walk
Find the Reconstruction Device |q 37979/1 |goto Shadowmoon Valley D/0 32.3,46.6
step
Place the shards on the altar |q 37979/2 |goto Shadowmoon Valley D/0 32.3,46.6
|tip Click the altar to place the crystal shards. After, click the Inner, Middle, and Outer Rings until the purple crystals on the rings line up with the purple crystals on the altar.
Retrieve the Dream of Argus |q 37979/3 |goto Shadowmoon Valley D/0 32.3,46.6
|next "Turnin"
step
label "Explosive"
kill Demolitionist Megacharge##90107
collect Megacharge's Cookbook##121837 |q 37881/1 |goto Shadowmoon Valley D/0 56.6,92.0
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: Explosive Discoveries##37881
accept Dark Grimoire: The First Ingredient##37882
step
click Precision Blasting Powder##239889
collect Precision Blasting Powder##121830 |q 37882/1 |goto Shadowmoon Valley D/0 63.7,94.0
|tip You can jump up on the cart to reach the blasting powder.
step
Click the _Quest Complete_ Box:
turnin Dark Grimoire: The First Ingredient##37882
accept Dark Grimoire: The Second Ingredient##37883
step
click Detonators##239890
|tip The crate is located underwater.
Retrieve the Detonator |q 37883/1 |goto Shadowmoon Valley D/0 50.4,89.6
step
Click the _Quest Complete_ Box:
turnin Dark Grimoire: The Second Ingredient##37883
accept Dark Grimoire: The Final Ingredient##37884
step
kill Fel Imp##88264+, Nightshade Consort##84908+, Imp Servant##84999+, Sargerei Demonlord##81543+, Succubus##85478+, Obedient Felhound##86269+
collect 5 Demon's Blood##121832 |q 37884/1 |goto Shadowmoon Valley D/0 48.9,76.2
step
Click the _Quest Complete_ Box:
turnin Dark Grimoire: The Final Ingredient##37884
accept Dark Grimoire: Breaching the Barrier##37885
step
_Carefully jump_ down to the cave below |goto Shadowmoon Valley D/0 42.7,74.2 < 20
click Ancient Barrier
|tip It looks like a big blue swirling portal blocking the cave entrance. Move away until the bomb goes off.
Bypass the Ancient Barrier |q 37885/1 |goto Shadowmoon Valley D/0 43.3,74.5
step
click Grimoire of the Nameless Void##240147
|tip Jump over the runes and beams to reach the Grimoire. You cannot touch any of the pink areas. Try jumping along the left or right side for easier access.
collect Grimoire of the Nameless Void##121834 |q 37885/2 |goto Shadowmoon Valley D/0 43.7,75.0
|next "Turnin"
step
label "Thunderlord"
collect 1 Raw Clefthoof Meat##109131 |next "thunderlordstart"
|tip You will need at least 1 Raw Clefthoof Meat to complete this Treasure Contract.
_Click here_ to farm one of these instead |confirm |next "cleftfarm"
step
label "cleftfarm"
kill Tamed Clefthoof##79034+
collect 1 Raw Clefthoof Meat##109131 |goto Frostfire Ridge/0 25.1,43.9
stickystart "Meat"
step
label "thunderlordstart"
_Enter_ Magnarok |goto Frostfire Ridge/0 67.2,33.4 < 30
Find Argoram |q 37914/1 |goto Frostfire Ridge/0 70.1,26.8
step
clicknpc Windreader Argoram##90176
Select "_Search the orc for clues_"
Searh Argoram For Clues |q 37914/2 |goto Frostfire Ridge/0 70.1,26.8
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: The Thunderlord Sage##37914
accept Gronnsbane: The Broken Spear##37916
step
click Gronnsbane's Haft##239923
|tip It looks like a wooden pole laying on the ground across some broken eggs.
collect Gronnsbane's Haft##122098 |q 37916/2 |goto Frostfire Ridge/0 70.82,23.69
step
click Gronnsbane's Weight##239924
|tip It looks like a circular weight with small spikes sticking out of it.
collect Gronnsbane's Weight##122099 |q 37916/3 |goto Frostfire Ridge/0 72.45,26.87
step
click Gronnsbane's Blade##239922
|tip It is a grey blade sticking out of a large bone skull.
collect Gronnsbane's Blade##122096 |q 37916/1 |goto Frostfire Ridge/0 71.87,33.34
step
Click the _Quest Complete_ Box:
turnin Gronnsbane: The Broken Spear##37916
accept Gronnsbane: The Blessing of Fire##37917
step
_Continue west_ on the path |goto Frostfire Ridge/0 50.1,27.2 < 20
click Molten Shamanstone##239926
|tip It looks like a big grey stone with symbols carved into it.
Receive the Blessing of Fire |q 37917/1 |goto Frostfire Ridge/0 42.44,13.03
step
Click the _Quest Complete_ Box:
turnin Gronnsbane: The Blessing of Fire##37917
accept Gronnsbane: The Blessing of Frost##37918
step
Follow the _rocky path_ up |goto Frostfire Ridge 47.5,19.3 < 30
_Go up_ the short snowy ramp |goto Frostfire Ridge 49.9,19.6 < 30
_Enter_ the large circular building |goto 49.5,21.3 < 10
_Go up_ the wooden walkway  |goto 49.4,22.0 < 5
click Frozen Shamanstone##239925
|tip It is located at the top of the tower.
Receive the Blessing of Frost |q 37918/1 |goto Frostfire Ridge/0 42.6,12.6
step
Click the _Quest Complete_ Box:
turnin Gronnsbane: The Blessing of Frost##37918
accept Gronnsbane: The Blessing of Beasts##37919
step
label "Meat"
You will need at least 1 Raw Clefthoof Meat to complete this Treasure Contract!
collect 1 Raw Clefthoof Meat##109131
step
Pass through the rocky ridge |goto Frostfire Ridge 43.5,23.5 < 20
click Altar##239916
|tip It looks like a bloodied stone table with bones around it.
Select "_Place offering of raw clefthoof meat._"
kill Gok'tal##90598
Lure Out and Kill Gok'tal |q 37919/1 |goto Frostfire Ridge/0 45.57,28.15
step
clicknpc Gok'tal##90598
collect Empowered Gronnsbane##122103 |q 37919/2 |goto Frostfire Ridge/0 45.57,28.15
|next "Turnin"
step
label "Cleaver"
kill Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Sledgebasher##83575+
collect 5 Journal Page##121822 |q 37788/1 |goto Nagrand D/0 37.0,17.8
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: Gutrek's Cleaver##37788
accept Gutrek's Cleaver: The First Piece##37797
step
click Gutrek's Pommel##239772
|tip It is located inside the eye socket of a skull in the pit.
collect Gutrek's Pommel##120997 |q 37797/1 |goto Nagrand D/0 39.7,14.9
step
Click the _Quest Complete_ Box:
turnin Gutrek's Cleaver: The First Piece##37797
accept Gutrek's Cleaver: The Second Piece##37798
step
click Gutrek's Hilt##239771
|tip It is located just under the water next to the bones.
collect Gutrek's Hilt##120979 |q 37798/1 |goto Nagrand D/0 38.5,39.5
step
Click the _Quest Complete_ Box:
turnin Gutrek's Cleaver: The Second Piece##37798
accept Gutrek's Cleaver: The Final Piece##37799
step
_Jump up_ onto the wall here and follow it |goto Nagrand D/0 55.7,10.9 < 15
click Gutrek's Blade##239768
collect Gutrek's Blade##120998 |q 37799/1 |goto Nagrand D/0 55.0,12.3
step
Click the _Quest Complete_ Box:
turnin Gutrek's Cleaver: The Final Piece##37799
accept Gutrek's Cleaver: The Spirit Forge##37811
step
Find the Spirit Forge |q 37811/1 |goto Nagrand D/0 51.54,27.03
step
Reforge Gutrek's Cleaver |q 37811/2 |goto Nagrand D/0 52.8,27.0
|tip Click the Furnace followed by the Anvil and finally the Trough on the other side of the room.
step
click Gutrek's Cleaver##239779
|tip Click the cleaver and kill Gutrek when he appears.
kill Gutrek##89824
collect Gutrek's Cleaver##121814 |q 37811/3 |goto Nagrand D/0 52.8,26.6
|next "Turnin"
step
label "Infected"
kill Enthralled Mutant##88394+, Twisted Guardian##88279+
collect Grinning Tolg's Journal##122147 |q 37941/1 |goto Gorgrond/0 70.4,30.2
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: The Infected Orc##37941
accept The Silent Skull: The First Reagent##37942
step
click Shadethistle##239969
|tip It is a small purple and blue plant found underneath a rocky outcropping.
collect Shadethistle Leaves##122145 |q 37942/1 |goto Gorgrond/0 57.0,35.9
step
Click the _Quest Complete_ Box:
turnin The Silent Skull: The First Reagent##37942
accept The Silent Skull: The Second Reagent##37943
step
click Bonethorn##239968
|tip It is a small blue plant sitting inside a large bone.
collect Bonethorn Vine##122144 |q 37943/1 |goto Gorgrond/0 68.6,34.2
step
Click the _Quest Complete_ Box:
turnin The Silent Skull: The Second Reagent##37943
accept The Silent Skull: The Third Reagent##37944
step
click Steamcap Mushrooms##239977
|tip It looks like a small purple and blue mushroom.
collect Steamcap Mushrooms##122146 |q 37944/1 |goto Gorgrond/0 59.6,33.3
step
Click the _Quest Complete_ Box:
turnin The Silent Skull: The Third Reagent##37944
accept The Silent Skull: Taking from the Taker##37945
step
_Enter_ the cave |goto Gorgrond/0 60.0,32.6 < 10 |walk
click Cauldron##231290
|tip It's a rusty cauldron sitting on a stone slab inside the cave.
Brew the Laughing Skull Elixir |q 37945/1 |goto Gorgrond/0 59.9,31.6
step
click Cauldron##231290
|tip It's a rusty cauldron sitting on a stone slab inside the cave.
Drink the Elixir |havebuff Interface\Icons\Spell_Nature_ElementalAbsorption |goto Gorgrond/0 59.9,31.6
only if haveq(37945)
step
Maintain your Elixir buff! |havebuff Interface\Icons\Spell_Nature_ElementalAbsorption |only if haveq(37945)
|tip As you follow the path, avoid the skulls along the route.
|tip If you are spotted by a skull you will lose the buff and have to go back for it.
clicknpc Gu'rakh##90285
Find Gu'rakh and Ride to Skulltaker |q 37945/2 |goto Gorgrond/0 62.1,31.8
step
kill Skulltaker##90262
collect Silent Skull##122150 |q 37945/3 |goto Gorgrond/0 57.2,26.9
|next "Turnin"
step
label "Turnin"
#include "Garrison_BGrey"
turnin Amulet of Rukhmar: The Apexis Device##37852 |only if haveq(37852) |or
|tip You can safely delete the "Compiled Research" item in your inventory. |only if haveq(37852)
turnin Dream of Argus: The Crystal Reborn##37979 |only if haveq(37979) |or
|tip You can safely delete "Artificer Maatun's Journal" from your inventory. |only if haveq(37979)
turnin Dark Grimoire: Breaching the Barrier##37885 |only if haveq(37885) |or
|tip You can safely delete "Megacharge's Cookbook" from your inventory. |only if haveq(37885)
turnin Gronnsbane: The Blessing of Beasts##37919 |only if haveq(37919) |or
|tip You can safely delete "Argoram's Journal" from your inventory |only if haveq(37919)
turnin Gutrek's Cleaver: The Spirit Forge##37811 |only if haveq(37811) |or
|tip You can safely delete "Goldspade's Journal" from your inventory. |only if haveq(37811)
turnin The Silent Skull: Taking from the Taker##37945 |only if haveq(37945) |or
|tip You can safely delete "Grinning Tolg's Journal" from your inventory. |only if haveq(37945)
step
You have finished today's daily Treasure Contract! Check back tomorrow
Click here to return to the menu |confirm |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Muradin Bronzebeard Dailies",{
description="\nThis guide will walk you through completing the daily heroic dungeon quests from Muradin Bronzebeard in your garrison.",
endlevel=10
},[[
step
label "Start"
ding 10
Proceeding to guide |only if garrisonlvl(3) |next "Dailies"
Proceeding to alternate |only if garrisonlvl(1) or garrisonlvl(2) |next "Alternate"
stickystart "NPC1"
step
label "Alternate"
#include "Garrison_Muradin"
You currently have a level 1 Garrison. Muradin Bronzebeard will only appear in a level 3 Garrison |only if garrisonlvl(1)
You currently have a level 2 Garrison. Muradin Bronzebeard will only appear in a level 3 Garrison |only if garrisonlvl(2)
To access Muradin Bronzebeard, you will need to join another player's level 3 garrison
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
Accept the daily quest Murdadin Bronzebeard offers |complete haveq(37796) or haveq(37795) or haveq(37792) or haveq(37791) or haveq(37790) or haveq(37789) or haveq(37794) or haveq(37793) |repeatable |next "Quests"
_Optional_: Accept the weekly raid quest
accept Auchindoun##37796 |repeatable |only if garrisonlvl(4)
accept Bloodmaul Slag Mines##37795 |repeatable |only if garrisonlvl(4)
accept Shadowmoon Burial Grounds##37792 |repeatable |only if garrisonlvl(4)
accept Skyreach##37791 |repeatable |only if garrisonlvl(4)
accept The Everbloom##37790 |repeatable |only if garrisonlvl(4)
accept Upper Blackrock Spire##37789 |repeatable |only if garrisonlvl(4)
accept Grimrail Depot##37794 |repeatable |only if garrisonlvl(4)
accept Iron Docks##37793 |repeatable |only if garrisonlvl(4)
accept Arcane Sanctum: Ko'ragh##37767 |repeatable |only if garrisonlvl(4)
accept Blackhand's Crucible: Blackhand##37772 |repeatable |only if garrisonlvl(4)
accept Imperator's Rise: Imperator Mar'gok##37768 |repeatable |only if garrisonlvl(4)
accept Iron Assembly: Admiral Gar'an##37771 |repeatable |only if garrisonlvl(4)
accept Slagworks: Heart of the Mountain##37769 |repeatable |only if garrisonlvl(4)
accept The Black Forge: Kromog##37770 |repeatable |only if garrisonlvl(4)
accept Walled City: Brackenspore##37766 |repeatable |only if garrisonlvl(4)
step
label "NPC1"
Muradin Bronzebeard is one of 4 random NPCs that can spawn in a garrison
|tip If he is not available in your garrison, you may join a friend's garrison who has him available.
stickystart "NPC2"
step
label "Dailies"
#include "Garrison_Muradin"
Accept the daily quest Murdadin Bronzebeard offers |complete haveq(37796) or haveq(37795) or haveq(37792) or haveq(37791) or haveq(37790) or haveq(37789) or haveq(37794) or haveq(37793) |repeatable |next "Quests"
_Optional_: Accept the weekly raid quest
accept Auchindoun##37796 |repeatable |only if garrisonlvl(4)
accept Bloodmaul Slag Mines##37795 |repeatable |only if garrisonlvl(4)
accept Shadowmoon Burial Grounds##37792 |repeatable |only if garrisonlvl(4)
accept Skyreach##37791 |repeatable |only if garrisonlvl(4)
accept The Everbloom##37790 |repeatable |only if garrisonlvl(4)
accept Upper Blackrock Spire##37789 |repeatable |only if garrisonlvl(4)
accept Grimrail Depot##37794 |repeatable |only if garrisonlvl(4)
accept Iron Docks##37793 |repeatable |only if garrisonlvl(4)
accept Arcane Sanctum: Ko'ragh##37767 |repeatable |only if garrisonlvl(4)
accept Blackhand's Crucible: Blackhand##37772 |repeatable |only if garrisonlvl(4)
accept Imperator's Rise: Imperator Mar'gok##37768 |repeatable |only if garrisonlvl(4)
accept Iron Assembly: Admiral Gar'an##37771 |repeatable |only if garrisonlvl(4)
accept Slagworks: Heart of the Mountain##37769 |repeatable |only if garrisonlvl(4)
accept The Black Forge: Kromog##37770 |repeatable |only if garrisonlvl(4)
accept Walled City: Brackenspore##37766 |repeatable |only if garrisonlvl(4)
step
label "NPC2"
Muradin Bronzebeard is one of 4 random NPCs that can spawn in a garrison
|tip If he is not available in your garrison, you may join a friend's garrison who has him available.
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
step
label "Quests"
Proceeding |next "Auch" |only if haveq(37796)
Proceeding |next "BSM" |only if haveq(37795)
Proceeding |next "SBG" |only if haveq(37792)
Proceeding |next "Skyreach" |only if haveq(37791)
Proceeding |next "Everbloom" |only if haveq(37790)
Proceeding |next "UBRS" |only if haveq(37789)
Proceeding |next "GD" |only if haveq(37794)
Proceeding |next "Iron" |only if haveq(37793)
step
label "Auch"
kill Teron'gor##77734
Defeat Teron'gor in Heroic Auchindoun |q 37796/1 |goto Auchindoun/1 49.6,33.5 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Teron'gor in Heroic Auchindoun |q 37796/1 |goto Auchindoun/1 49.6,33.5 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "BSM"
kill Gug'rokk##74790
Defeat Gug'rokk in Heroic Bloodmaul Slag Mines |q 37795/1 |goto Bloodmaul Slag Mines/1 65.4,22.7 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Gug'rokk in Heroic Bloodmaul Slag Mines |q 37795/1 |goto Bloodmaul Slag Mines/1 65.4,22.7 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "SBG"
kill Ner'zhul##76407
Defeat Ner'zhul in Heroic Shadowmoon Burial Ground |q 37792/1 |goto Shadowmoon Burial Grounds/3 48.1,47.1 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Ner'zhul in Heroic Shadowmoon Burial Ground |q 37792/1 |goto Shadowmoon Burial Grounds/3 48.1,47.1 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "Skyreach"
kill High Sage Viryx##76266
Defeat High Sage Viryx in Heroic Skyreach |q 37791/1 |goto Skyreach/2 48.8,33.3 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat High Sage Viryx in Heroic Skyreach |q 37791/1 |goto Skyreach/2 48.8,33.3 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "Everbloom"
kill Yalnu##83846
Defeat Yalnu in Heroic Everbloom |q 37790/1 |goto The Everbloom/2 47.0,67.0 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Yalnu in Heroic Everbloom |q 37790/1 |goto The Everbloom/2 47.0,67.0 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "UBRS"
kill Warlord Zaela##77120
Defeat Warlord Zaela in Heroic Upper Blackrock Spire |q 37789/1 |goto Upper Blackrock Spire 2/3 14.1,47.7 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Warlord Zaela in Heroic Upper Blackrock Spire |q 37789/1 |goto Upper Blackrock Spire 2/3 14.1,47.7 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "GD"
kill Skylord Tovra##80005
Defeat Skylord Tovra in Heroic Grimrail Depot |q 37794/1 |goto Grimrail Depot/4 15.3,51.7 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Skylord Tovra in Heroic Grimrail Depot |q 37794/1 |goto Grimrail Depot/4 15.3,51.7 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "Iron"
kill Skulloc##83612
Defeat Skulloc in Heroic Iron Docks |q 37793/1 |goto Iron Docks/1 68.4,43.6 |next "Turnin_1_2" |only if garrisonlvl(1) or garrisonlvl(2)
Defeat Skulloc in Heroic Iron Docks |q 37793/1 |goto Iron Docks/1 68.4,43.6 |next "Turnin_3" |only if garrisonlvl(3)
|tip If you have our dungeon guide, load it when prompted after entering the instance.
step
label "Turnin_1_2"
#include "Garrison_BGrey"
turnin Auchindoun##37796 |only if haveq(37796)
turnin Bloodmaul Slag Mines##37795 |only if haveq(37795)
turnin Shadowmoon Burial Grounds##37792 |only if haveq(37792)
turnin Skyreach##37791 |only if haveq(37791)
turnin The Everbloom##37790 |only if haveq(37790)
turnin Upper Blackrock Spire##37789 |only if haveq(37789)
turnin Grimrail Depot##37794 |only if haveq(37794)
turnin Iron Docks##37793 |only if haveq(37793)
|next "RaidCheck"
step
label "Turnin_3"
#include "Garrison_BGrey"
turnin Auchindoun##37796 |only if haveq(37796)
turnin Bloodmaul Slag Mines##37795 |only if haveq(37795)
turnin Shadowmoon Burial Grounds##37792 |only if haveq(37792)
turnin Skyreach##37791 |only if haveq(37791)
turnin The Everbloom##37790 |only if haveq(37790)
turnin Upper Blackrock Spire##37789 |only if haveq(37789)
turnin Grimrail Depot##37794 |only if haveq(37794)
turnin Iron Docks##37793 |only if haveq(37793)
|next "RaidCheck"
step
label "RaidCheck"
Proceeding |next "End" |only if default
Proceeding |next "Ko'ragh" |only if haveq(37767)
Proceeding |next "Blackhand" |only if haveq(37772)
Proceeding |next "Imperator" |only if haveq(37768)
Proceeding |next "Admiral" |only if haveq(37771)
Proceeding |next "Heart" |only if haveq(37769)
Proceeding |next "Kromog" |only if haveq(37770)
Proceeding |next "Brackenspore" |only if haveq(37766)
step
label "Ko'ragh"
kill Ko'ragh##79015
_Tank_:
|tip Distance yourself from others when you are afflicted by Expel Magic: Arcane
|tip Drag Volatile Anomalies into a Suppression Field when they are about to die
_DPS_:
|tip Caustic Energy will grant you a Nullification Barrier. When you gain this buff, absorb the Overflowing Energy
_Healer_:
|tip Players absorbing Caustic Energy will need heavy healing.
|tip Expel Magic: Fire and Expel Magic: Shadow will require heavy raid healing as well.
_All Roles_:
|tip Try to maintain at least a 5 yard distance from other players.
Defeat Ko'ragh in Highmaul: Arcane Sanctum |q 37767/1 |goto Highmaul/4 37.9,65.3 |next "Turnin2"
step
label "Blackhand"
kill Blackhand##77325
_Tank_:
|tip During phase 1, you will be knocked into the Slag.
|tip During phase 2, kite the boss away from Siege Machines and Slag Mines.
|tip During phase 3, avoid Slag Craters from Massive Shattering Smash.
_DPS_:
|tip During phase 1, stay far from Massive Demolition and hide behind Debris Piles when Marked for Death.
|tip During phase 2, kill Siegemakers and Soldiers.
|tip During phase 3, don't get knocked off by Impaling Throw.
_Healer_:
|tip During phase 1, stay far from Massive Demolition and hide behind Debris Piles when Marked for Death.
|tip During phase 2, focus on raid healing.
|tip During phase 3, heal players hit with Impaling Throw.
Defeat Blackhand in Blackrock Foundry: Blackrock Crucible |q 37772/1 |goto Blackrock Foundry/5 48.7,41.7 |next "Turnin2"
step
label "Imperator"
kill Imperator Mar'gok##77428
_Tank_:
|tip Tank swap about halfway through casts of Mark of Chaos.
|tip When not tanking, pick up Arcane Aberrations.
|tip When afflicted by Mark of Chaos, use movement speed increases to get 35 yards away from anyone.
_DPS_:
|tip If you have more than 4 stacks of Branded, run away from the raid.
|tip Do not come in contact with Destructive Resonance.
|tip Kill Arcane Aberrations quickly.
_Healer_:
|tip Be mindful of the heavy raid damage during this encounter.
_All Roles_:
|tip At 55% and 25%, guards spawn at the entrance. Kill them quickly
Defeat Imperator Mar'gok in Highmaul: Imperator's Rise |q 37768/1 |goto Highmaul/6 45.3,75.2 |next "Turnin2"
step
label "Admiral"
kill Admiral Gar'an##77557
kill Enforcer Sorka##77231
kill Marak the Blooded##77477
_Tank_:
|tip Move between Marak and the Blood Ritual target.
|tip Use heavy defensive cooldowns during Sanguine Strikes.
|tip Persue Sorka or Marak during bombard.
_DPS_:
|tip Stay 3 yards apart when attacking Sorka.
|tip Intercept Garan's Penetrating Shot.
_Healer_:
|tip During Sanguine Strikes, the raid will take heavy shadow damage.
|tip Players targeted by Dark Hunt should be topped off.
Defeat Admiral Gar'an in Blackrock Foundry: Iron Assembly |q 37771/1 |goto Blackrock Foundry/1 82.3,28.3 |next "Turnin2"
step
label "Heart"
kill Heart of the Mountain##76806
kill Foreman Feldspar##76809
_Tank_:
|tip Tank adds outside of Defense.
|tip Slag Elementals cannot be tanked.
|tip When facing the Heart, taunt at 3 stacks of Heat or when your stacks fall off.
_DPS_:
|tip If you are affected by Bomb, run to a Heat Regulator and use your extra action.
|tip Kill Slag Elementals near Primal Elementalists.
|tip Interrupt Firecallers' Cauterize Wounds.
_Healer_:
|tip Anyone near the Foreman will take periodic fire damage.
|tip When the Heart reaches 100 Energy, the raid will take heavy fire damage.
|tip Players with the debuff Volatile Fire with explode for fire damage hitting themselves and anyone within 8 yards of them watch these players.
Defeat the Heart of the Mountain in Blackrock Foundry: Slagworks |q 37769/1 |goto Blackrock Foundry/2 46.3,53.8 |next "Turnin2"
step
label "Kromog"
kill Kromog##77692
_Tank_:
|tip Stand close to the offtank to share damage from Fists of Stone.
|tip A tank must always be in melee range or the boss will continue to cast Stone Breath on the raid until a tank is in range.
_DPS_:
|tip When Runes of Grasping Earth comes out be sure to kill all hands before swithcing back to the boss.
_Healer_:
|tip Players gripped by a hand will take increasing damage over time.
|tip Stone Breath will cause high damage to the entire raid watch out for this.
_All Roles_:
|tip Allow yourself to be gripped by a hand from Rune of Grasping Earth to avoid heavy damage from Thundering Blows. Free yourself after
|tip All of Kromog's damaging spells activate Reverberations stay clear of these moving yellow circles.
Defeat Kromog in Blackrock Foundry: The Black Forge |q 37770/1 |goto Blackrock Foundry/1 33.2,43.1 |next "Turnin2"
step
label "Brackenspore"
kill Brackenspore##78491
_Tank_:
|tip Pick up the Fungal Flesh-Eaters when they spawn from the sea.
|tip Interrupt Decay when they begin to cast it
_DPS_:
|tip Interrupt Decay cast by Fungal Flesh-Eaters
|tip Kill any adds that appear.
|tip Be sure to stand in any active Rejuvenating Mushrooms, they give a haste buff.
_Healer_:
|tip Heal friendly mushrooms to full. Afterwards, continue to heal them to prolong their effects.
|tip Living Mushrooms must be healed to full to mitigate the damage caused by Infesting Spores.
|tip Rejuvenating Mushrooms give haste and restore mana, try to keep these mushrooms up for as long as possible.
Defeat Brackenspore in Highmaul: Walled City |q 37766/1 |goto Highmaul/1 50.8,16.4 |next "Turnin2"
step
label "Turnin2"
#include "Garrison_BGrey"
turnin Arcane Sanctum: Ko'ragh##37767 |only if haveq(37767)
turnin Blackhand's Crucible: Blackhand##37772 |only if haveq(37772)
turnin Imperator's Rise: Imperator Mar'gok##37768 |only if haveq(37768)
turnin Iron Assembly: Admiral Gar'an##37771 |only if haveq(37771)
turnin Slagworks: Heart of the Mountain##37769 |only if haveq(37769)
turnin The Black Forge: Kromog##37770 |only if haveq(37770)
turnin Walled City: Brackenspore##37766 |only if haveq(37766)
step
label "End"
You have completed today's daily quest, check back tomorrow!
Click _here_ to return |confirm |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Renzik Daily Quests",{
description="\nThis guide will walk you through completing the Group 3 daily kill quests offered by Renzik 'The Shiv' in your garrison.",
endlevel=40
},[[
step
label "Start"
ding 40
Proceeding to guide |only if garrisonlvl(3) |next "Dailies"
Proceeding to alternate |only if garrisonlvl(1) or garrisonlvl(2) |next "Alternate"
stickystart "NPC1"
step
label "Alternate"
You currently have a level 1 Town Hall. Harrison Jones will only appear in a level 3 garrison |only if garrisonlvl(1)
You currently have a level 2 Town Hall. Harrison Jones will only appear in a level 3 garrison |only if garrisonlvl(2)
To access Renzik "The Shiv", you will need to join another player's level 3 garrison
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
#include "Garrison_Shiv"
Accept the daily quest Renzik "The Shiv" offers |complete haveq(37773) or haveq(37774) or haveq(37777) or haveq(37776) or haveq(37778) or haveq(37775) or haveq(37948) |repeatable |next "Quests"
accept Death to Amethon!##37773 |repeatable |only if garrisonlvl(4)
accept Death to Gor'thul!##37774 |repeatable |only if garrisonlvl(4)
accept Death to Tremor!##37777 |repeatable |only if garrisonlvl(4)
accept Death to Undertow!##37776 |repeatable |only if garrisonlvl(4)
accept Death to Hivelord Ik'rix!##37778 |repeatable |only if garrisonlvl(4)
accept Death to Nullifier Darkoor##37775 |repeatable |only if garrisonlvl(4)
accept Death to Nullifier Darkoor##37948 |repeatable |only if garrisonlvl(4)
step
label "NPC1"
Renzik "The Shiv" is one of 4 random NPCs that can spawn in a garrison
If he is not available in your garrison, you may join a friend's garrison who has him available
stickystart "NPC2"
step
label "Dailies"
#include "Garrison_Shiv"
Accept the daily quest Renzik "The Shiv" offers |complete haveq(37773) or haveq(37774) or haveq(37777) or haveq(37776) or haveq(37778) or haveq(37775) or haveq(37948) |repeatable |next "Quests"
accept Death to Amethon!##37773 |repeatable |only if garrisonlvl(4)
accept Death to Gor'thul!##37774 |repeatable |only if garrisonlvl(4)
accept Death to Tremor!##37777 |repeatable |only if garrisonlvl(4)
accept Death to Undertow!##37776 |repeatable |only if garrisonlvl(4)
accept Death to Hivelord Ik'rix!##37778 |repeatable |only if garrisonlvl(4)
accept Death to Nullifier Darkoor##37775 |repeatable |only if garrisonlvl(4)
accept Death to Nullifier Darkoor##37948 |repeatable |only if garrisonlvl(4)
step
label "NPC2"
Renzik "The Shiv" is one of 4 random NPCs that can spawn in a garrison
If he is not available in your garrison, you may join a friend's garrison who has him available
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
step
label "Quests"
Proceeding |next "Amethon" |only if haveq(37773)
Proceeding |next "Gor'thul" |only if haveq(37774)
Proceeding |next "Tremor" |only if haveq(37777)
Proceeding |next "Undertow" |only if haveq(37776)
Proceeding |next "Hivelord" |only if haveq(37778)
Proceeding |next "Darkoor" |only if haveq(37775) or haveq(37948)
step
label "Amethon"
_Enter_ the cave |goto Talador/0 77.4,19.9 < 10 |walk
kill Amethon##89823
Amethon has the following abilities:
_Crystalline Cage_:
|tip This is used on his current target. Stuns for 10 seconds and deals massive damage. Kill the cage quickly to free the party member.
_Form Crystals_:
|tip Crystals will form on the ground and explode after 4.5 seconds, dealing heavy arcane damage. Stay at least 6 yards away from these.
collect Humming Draenite Spike##122133 |q 37773/1 |goto Talador/0 78.6,21.0
|next "Turnin"
step
label "Gor'thul"
Gor'thul has the following abilities:
_Blood Shield_:
|tip Deflects all front and side attacks. Stand behind him when he casts this.
_Gore Bolt_:
|tip A single-target ability with a 2 second cast that deals around 25,000 nature damage. Interrupt this when possible.
_Feeding Time_:
|tip Summons a group of Saberon that attack. These despawn after around 30 seconds.
kill Gor'thul##89843 |q 37774/1 |goto Spires of Arak/0 50.0,72.0
|next "Turnin"
step
label "Tremor"
kill Tremor##90070
Tremor has the following abilities:
_Dust Breath_:
|tip This ability deals heavy damage in a frontal cone. Stand behind him when he is channeling.
_Submerge_:
|tip Tremor will burrow and deal nature damage to everyone, knocking them into the air.
|tip When Tremor submerges, several Lobstok will approach from the shore. Pull 1 Tangled Lobstrok and kill it, then use the special action button net on Tremor to bring him to the surface.
collect Pile of Partially Digested Lobstrok Meat##122132 |q 37777/1 |goto Gorgrond/0 35.2,42.0
|next "Turnin"
step
label "Undertow"
Undertow has the following abilities:
_Crashing Tide_:
|tip Frontal cone attack that moves clockwise as Undertow rotates. When he begins to cast, move counter-clockwise 10 yards.
_Hailstorm_:
|tip Targeted Blizzard type attack that deals massive frost damage every second. Don't stand in this, even for a second.
_Tempest_:
|tip Inflicts moderate frost damage to everyone.
kill Undertow##89825 |q 37776/1 |goto Shadowmoon Valley D/0 52.8,8.6
|next "Turnin"
step
label "Hivelord"
kill Hivelord Ik'rix##89827
|tip Periodically, the Hivelord will summon baby adds. These adds deal minimal damage.
collect Iceshatter Carapace##122134 |q 37778/1 |goto Frostfire Ridge/0 66.7,81.5
|next "Turnin"
step
label "Darkoor"
kill Nullifier Darkoor##90118
_Fel Swing_:
|tip Move behind Darkoor when he casts this as it will affect everything in a semicircle in front of him.
_Seek Magic_:
|tip This ability will render Darkoor immune to magic for it's duration. This is a good time for cooldowns if you are a caster.
Win the Exhibition Match |q 37775/1 |goto Nagrand D/0 56.2,13.6 |only if haveq(37775)
Win the Exhibition Match |q 37948/1 |goto Nagrand D/0 56.2,13.6 |only if haveq(37948)
|next "Turnin"
step
label "Turnin"
#include "Garrison_BGrey"
turnin Death to Amethon!##37773 |only if haveq(37773)
turnin Death to Gor'thul!##37774 |only if haveq(37774)
turnin Death to Tremor!##37777 |only if haveq(37777)
turnin Death to Undertow!##37776 |only if haveq(37776)
turnin Death to Hivelord Ik'rix!##37778 |only if haveq(37778)
turnin Death to Nullifier Darkoor!##37775 |only if haveq(37775)
turnin Death to Nullifier Darkoor!##37948 |only if haveq(37948)
step
You have finished today's daily group quest. Check back tomorrow
Click here to return to the menu |confirm |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Garrison Assault Daily Quests",{
description="\nThis guide will walk you through the Garrison Assault daily quests.",
},[[
step
label "assault_dailies_start"
#include "Garrison_Warplans"
accept Assault on the Everbloom Wilds##36676 |or |next "assault_quest_start"
accept Assault on the Pit##36686 |or |next "assault_quest_start"
accept Assault on the Iron Siegeworks##36674 |or |next "assault_quest_start"
accept Assault on Magnarok##36675 |or |next "assault_quest_start"
accept Assault on Stonefury Cliffs##36648 |or |next "assault_quest_start"
accept Assault on the Broken Precipice##36677 |or |next "assault_quest_start"
accept Assault on Mok'gol Watchpost##36678 |or |next "assault_quest_start"
accept Assault on Darktide Roost##36679 |or |next "assault_quest_start"
accept Assault on Pillars of Fate##36682 |or |next "assault_quest_start"
accept Assault on Socrethar's Rise##36680 |or |next "assault_quest_start"
accept Assault on Lost Veil Anzu##36681 |or |next "assault_quest_start"
accept Assault on Skettis##36683 |or |next "assault_quest_start"
accept Assault on the Heart of Shattrath##36685 |or |next "assault_quest_start"
accept Assault on Shattrath Harbor##36649 |or |next "assault_quest_start"
|tip You'll be given a choice between 2 quests each day, but can only choose 1 quest per day to complete.
_
Click to complete Scouting Missives instead |confirm |next "scouting_missives" |or
|tip You can purchase Scouting Missives from your Garrison Quartermaster for Garrison Resources. This is useful if you're trying to complete certain quests that you need for the Securing Draenor achievement. The only quest there is no Scouting Missive for is "Assault on the Pit". You will have to wait to accept that quest normally.
step
label "scouting_missives"
#include "Garrison_Crowler"
buy Scouting Missive: The Pit##133878 |or |next "the_pit"
buy Scouting Missive: The Heart of Shattrath##133883 |next "heart_shatt"
buy Scouting Missive: Shattrath Harbor##122410 |or |next "shattrath_harbor"
buy Scouting Missive: Broken Precipice##122423 |or |next "broken_precipice"
buy Scouting Missive: Mok'gol Watchpost##122422 |or |next "mokgol_watchpost"
buy Scouting Missive: Darktide Roost##122417 |or |next "darktide_roost"
buy Scouting Missive: Socrethar's Rise##122415 |or |next "socrethars_rise"
buy Scouting Missive: Magnarok##122399 |or |next "magnarok"
buy Scouting Missive: Stonefury Cliffs##122401 |or |next "stonefury_cliffs"
buy Scouting Missive: Everbloom Wilds##122404 |or |next "everbloom_wilds"
buy Scouting Missive: Iron Siegeworks##122406 |or |next "iron_siegeworks"
buy Scouting Missive: Skettis##122407 |or |next "skettis"
buy Scouting Missive: Pillars of Fate##122409 |or |next "pillars_of_fate"
buy Scouting Missive: Lost Veil Anzu##122414 |or |next "lost_veil_anzu"
|tip Buy the Scouting Missive for the quest you want to complete.
step
label "the_pit"
use Scouting Missive: The Pit##133878
accept Missive: Assault on the Pit##40942 |next "assault_quest_start"
step
label "heart_shatt"
use Scouting Missive: The Heart of Shattrath##133883
accept Missive: Assault on the Heart of Shattrath##40944 |next "assault_quest_start"
step
label "shattrath_harbor"
use Scouting Missive: Shattrath Harbor##122410
accept Missive: Assault on Shattrath Harbor##38201 |next "assault_quest_start"
step
label "broken_precipice"
use Scouting Missive: Broken Precipice##122423
accept Missive: Assault on the Broken Precipice##38193 |next "assault_quest_start"
step
label "mokgol_watchpost"
use Scouting Missive: Mok'gol Watchpost##122422
accept Missive: Assault on Mok'gol Watchpost##38195 |next "assault_quest_start"
step
label "darktide_roost"
use Scouting Missive: Darktide Roost##122417
accept Missive: Assault on Darktide Roost##38196 |next "assault_quest_start"
step
label "socrethars_rise"
use Scouting Missive: Socrethar's Rise##122415
accept Missive: Assault on Socrethar's Rise##38197 |next "assault_quest_start"
step
label "magnarok"
use Scouting Missive: Magnarok##122399
accept Missive: Assault on Magnarok##38190 |next "assault_quest_start"
step
label "stonefury_cliffs"
use Scouting Missive: Stonefury Cliffs##122401
accept Missive: Assault on Stonefury Cliffs##38189 |next "assault_quest_start"
step
label "everbloom_wilds"
use Scouting Missive: Everbloom Wilds##122404
accept Missive: Assault on the Everbloom Wilds##38192 |next "assault_quest_start"
step
label "iron_siegeworks"
use Scouting Missive: Iron Siegeworks##122406
accept Missive: Assault on the Iron Siegeworks##38191 |next "assault_quest_start"
step
label "skettis"
use Scouting Missive: Skettis##122407
accept Missive: Assault on Skettis##38200 |next "assault_quest_start"
step
label "pillars_of_fate"
use Scouting Missive: Pillars of Fate##122409
accept Missive: Assault on Pillars of Fate##38199 |next "assault_quest_start"
step
label "lost_veil_anzu"
use Scouting Missive: Lost Veil Anzu##122414
accept Missive: Assault on Lost Veil Anzu##38198 |next "assault_quest_start"
step
label "assault_quest_start"
kill Twisted Guardian##88279+, Lumbering Ancient##86262+, Wild Mandragora##86260+, Everbloom Waterspeaker##88261+, Everbloom Wasp##86264+, Brine Lasher##86267+, Botani Vine-Weaver##86261+
|tip Wild Mandragoras will drop Mandragora Seed, which furthers your progress, so be sure to loot them.
clicknpc Blighted Axebeak##88592+
|tip They're green and yellow birds that fly overhead and sit in trees around this area.
Assault the Botani Forces in the Everbloom Wilds |q 36676/1 |goto Gorgrond/0 57.5,44.0 |only if haveq(36676)
Assault the Botani Forces in the Everbloom Wilds |q 38192/1 |goto Gorgrond/0 57.5,44.0 |only if haveq(38192)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Everbloom Wilds".
step
_Follow_ the path |goto Frostfire Ridge/0 85.2,59.9 < 40
kill Grom'kar Deadeye##85973+, Grom'kar Enforcer##77940+, Grom'kar Warforger##77945+, Grom'kar Pulverizer##78210+, Grom'kar Shocktrooper##77944+
click Secret Warplans##234685
|tip They look like brown maps with daggers stabbed into them. They are mostly inside the buildings around this area.
click Keg of Impaler Ale##237343
|tip They look like wooden barrels propped up to lay on their sides. They are mostly inside the buildings around this area.
Assault the Iron Horde forces at the Iron Siegeworks |q 36674/1 |goto Frostfire Ridge/0 85.7,51.4 |only if haveq(36674)
Assault the Iron Horde forces at the Iron Siegeworks |q 38191/1 |goto Frostfire Ridge/0 85.7,51.4 |only if haveq(38191)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Iron Siegeworks".
step
_Follow_ the snow path up |goto Frostfire Ridge/0 65.5,35.1 < 40
kill Vicious Acidmaw##76905+, Burning Slagmaw##72348+, Slagmaw Nibbler##87360+, Icejaw Rockbiter##72297+
clicknpc Flamewing Skytalon##87343+
|tip They look like dead chimeras on the ground around this area.
clicknpc Acidmaw Egg##87383+
|tip They look like stone eggs with orange cracks in them, sitting in or around the lava around this area.
Assault the Stone Monstrosities at Magnarok |q 36675/1 |goto Frostfire Ridge/0 69.4,29.4 |only if haveq(36675)
Assault the Stone Monstrosities at Magnarok |q 38190/1 |goto Frostfire Ridge/0 69.4,29.4 |only if haveq(38190)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Magnarok".
step
_Run down_ the path |goto Frostfire Ridge/0 52.1,18.8 < 20
_Follow_ the path up |goto Frostfire Ridge/0 50.1,17.3 < 30
kill Bloodmaul Brute##77991+, Bloodmaul Gladiator##78782+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578+, Bloodmaul Magma Shaper##77992+
collect Shackle Key##113489 |n
|tip Only the Bloodmaul Brutes and Taskmasters can drop these.
talk Draenei Slave##77979+
|tip You can only free them if you have a Shackle Key.
Assault the Bloodmaul Forces at Stonefury Cliffs |q 36648/1 |goto Frostfire Ridge/0 47.4,17.1 |only if haveq(36648)
Assault the Bloodmaul Forces at Stonefury Cliffs |q 38189/1 |goto Frostfire Ridge/0 47.4,17.1 |only if haveq(38189)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Stonefury Cliffs".
step
_Follow_ the path |goto Nagrand D/0 42.0,27.7 < 30
kill Sledgebasher##83575+, Broken Drudge##87638+, Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Broken Drudge##83831+, Defiant Drudge##83570+, Dominating Drudge##83640+, Bloodbash Breaker##87654+, Bloodbash Ogrechucker##83848+,
clicknpc Jewel of Transformation##88064+
|tip They look like small blue-ish white gemstones laying on the ground around this area. They turn you into and Ogron for 2 minutes.
click Boulder Pile##239121
|tip They look like piles of big rocks around this area. You can only click them while under the effects of a Jewel of Transformation.
Exploit the Conflict at the Broken Precipice |q 36677/1 |goto Nagrand D/0 38.7,24.1 |only if haveq(36677)
Exploit the Conflict at the Broken Precipice |q 38193/1 |goto Nagrand D/0 38.7,24.1 |only if haveq(38193)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Broken Precipice".
step
kill Mok'gol Grunt##86657+, Mok'gol Brutalizer##72571+, Mok'gol Raider##86660+, Mok'gol Pack-Leader##86658+, Mok'gol Wolfsong##86659+, Nagrand Savager##86656+
click Stolen Goods##237264
|tip They look like treasure chests on the ground around this area. They are often inside the buildings.
clicknpc Warsong Totem##87264+
|tip They look like poles with skulls on this stuck in the ground around this area.
Assault the Warsong Forces at Sunspring Watchpost |q 36678/1 |goto Nagrand D/0 43,37 |only if haveq(36678)
Assault the Warsong Forces at Sunspring Watchpost |q 38195/1 |goto Nagrand D/0 43,37 |only if haveq(38195)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Mok'gol Watchpost".
step
kill Darktide Pilferer##78148+, Darktide Engineer##78999+, Darktide Rylakinator-3000##78190+, Darktide Guardian##78168+, Darktide Guardian##78168+, Darktide Machinist##85150+, Darktide Windstalker##85098+, Darkwing Adolescent##85357+, Darkwing Whelpling##84927+, Darkwing Matron##75280+, Iron Peon##78324+, Controlled Darkwing##78550+
click Giant Rylak Egg##235826
|tip They look like big grey eggs sitting in big brown nests on the ground around this area.
Assault the Iron Horde Forces at Darktide Roost |q 36679/1 |goto Shadowmoon Valley D 59.1,86.0 |only if haveq(36679)
Assault the Iron Horde Forces at Darktide Roost |q 38196/1 |goto Shadowmoon Valley D 59.1,86.0 |only if haveq(38196)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Darktide Roost".
step
_Follow_ the path |goto Spires of Arak/0 69.1,26.7 < 30
kill Shadowmoon Warrior##85068+, Shadowmoon Defiler##85075+, Shadowmoon Peon##85204+, Shadowmoon Voidtwister##85073+, Void Alpha##85082+
clicknpc Stashed Shadowmoon Sundries##85976+
|tip They look like piles of crates and barrels inside and around buildings around this area.
Assault the Shadowmoon Orcs at the Pillars of Fate |q 36682/1 |goto Spires of Arak/0 73.4,30.8 |only if haveq(36682)
Assault the Shadowmoon Orcs at the Pillars of Fate |q 38199/1 |goto Spires of Arak/0 73.4,30.8 |only if haveq(38199)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Pillars of Fate".
step
kill Sargerei Initiate##81541+, Sargerei Binder##81542+, Sargerei Darkblade##84945+, Sargerei Acolyte##85168+, Sargerei Worker##84888+, Nightshade Consort##84908+, Eye of Zamaya##88486+
Assault the Sargerei Forces at Socrethar's Rise |q 36680/1 |goto Shadowmoon Valley D/0 49.3,78.2 |only if haveq(36680)
Assault the Sargerei Forces at Socrethar's Rise |q 38197/1 |goto Shadowmoon Valley D/0 49.3,78.2 |only if haveq(38197)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Socrethar's Rise".
step
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Amorphic Cognitor##86144+, Befuddled Relic-Seeker##86205+, Highmaul Skullcrusher##89127+, Highmaul Relic-Seeker##86155+, Vigilant Dreadtalon##89125+, Skyreach Archaeologist##86163+
|tip Right-click corpses after you loot them to consume them. Consuming enough corpses will make you turn into a creature with a special action bar that helps to kill things faster when you use the abilities.
Assault the Hostile Creatures at Lost Veil Anzu |q 36681/1 |goto Spires of Arak 73.3,45.4 |only if haveq(36681)
Assault the Hostile Creatures at Lost Veil Anzu |q 38198/1 |goto Spires of Arak 73.3,45.4 |only if haveq(38198)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Lost Veil Anzu".
step
_Follow_ the path up |goto Spires of Arak/0 62.9,15.4 < 30
_Continue following_ the path |goto Spires of Arak/0 61.1,10.5 < 30
kill Skyreach Labormaster##85542+, Energized Swift Feather##84013+, Skyreach Dawnbreaker##88078+, Stalwart Warden##83988+
collect Talon Key##118701 |n
click Ball and Chain##221674
|tip They look like small metal balls on chains attachs to arakkoa slaves around this area. You must have a Talon Key.
Free Slaves and _Boost their Morale_
|tip After you free them, kill mobs with them by your side to boost their morale. For every 1% of morale you boost, you will gain 1% progress toward your quest goal when you free the slaves.
Lead the slaves to [Spires of Arak/0 59.7,11.5]
|tip Talk to Outcast Darkscryer to free them.
Assault the Arakkoa Forces at Skettis |q 36683/1 |goto Spires of Arak/0 58.0,11.5 |only if haveq(36683)
Assault the Arakkoa Forces at Skettis |q 38200/1 |goto Spires of Arak/0 58.0,11.5 |only if haveq(38200)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Skettis".
step
kill Nascent Brawler##84760+, Drunken Scrapper##87310+, Rampant Gladiator##84764+
clicknpc Slave Post##88931+
Dominate the Gorian Proving Grounds |q 38194/1 |goto Nagrand D/0 57.2,17.6
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Gorian Proving Grounds".
step
kill Concubine of Lust##82940+, Conniving Deathblade##82981+, Draining Eye##86191+, Watchful Eye##86140+, Council Felcaller##86553+, Sargerei Fiendspeaker##83020+, Sargerei Discordant##86190+, Sargerei Ritualist##87341+,
talk Tortured Sha'tari##86869+
talk Captive Sha'tari Citizen##86599+
clicknpc Sargerei Missive##87364+
|tip They look like small tan pieces of paper pinned up around this area
Assault the Sargerei Forces in Shattrath City |q 36809/1 |goto Talador/0 41.2,42.3
|tip You will see a progress bar in your quest tracking area.
|tip Use the Group Finder to find a custom group. In the Group Finder, go to Premade Groups -> Custom, then search for "Heart of Shattrath".
step
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Nefarious Consort##82990+, Shadowbourne Felcaster##84871+, Fel Cannoneer##84880+, Gorebound Insurgent##87337+, Fel Seer##84873+
clicknpc Salvaged Iron Horde Artillery##84754+
|tip They look like dual metal cannons pointing upward around this area.
clicknpc Soul Crystal##83856+
|tip They look like big blue floating crystals around this area.
click Orc Bodies
|tip They look like various corpses laying on the ground around this area.
Assault the Sargerei Forces at Shattrath City |q 36649/1 |goto Talador/0 44.6,37.3 |only if haveq(36649)
Assault the Sargerei Forces at Shattrath City |q 38201/1 |goto Talador/0 44.6,37.3 |only if haveq(38201)
|tip You will see a progress bar in your quest tracking area.
|tip You can use the Group Finder to find a custom group to get this done faster. In the Group Finder, go to Premade Groups -> Custom, then search for "Shattrath Harbor".
step
kill Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Laborer##85277+, Iron Bloodburner##85128+, Iron Enforcer##85124+, Iron Cauterizer##85127+, Iron Warden##86499+, Iron Reinforcement##86297+, Hulking Brute##85136+, Gruesome Torturer##86405+
Assault the Pit |q 36686/1 |goto Gorgrond/0 46.23,24.35
|tip You will see a progress bar in your quest tracking area.
|tip Use the Group Finder to find a custom group. In the Group Finder, go to Premade Groups -> Custom, then search for "The Pit".
step
label "Turnin"
#include "Garrison_ScoutValdez"
turnin Assault on the Everbloom Wilds##36676 |only if haveq(36676) or completedq(36676)
turnin Assault on the Pit##36686 |only if haveq(36686) or completedq(36686)
turnin Assault on the Iron Siegeworks##36674 |only if haveq(36674) or completedq(36674)
turnin Assault on Magnarok##36675 |only if haveq(36675) or completedq(36675)
turnin Assault on Stonefury Cliffs##36648 |only if haveq(36648) or completedq(36648)
turnin Assault on the Broken Precipice##36677 |only if haveq(36677) or completedq(36677)
turnin Assault on Mok'gol Watchpost##36678 |only if haveq(36678) or completedq(36678)
turnin Assault on Darktide Roost##36679 |only if haveq(36679) or completedq(36679)
turnin Assault on Pillars of Fate##36682 |only if haveq(36682) or completedq(36682)
turnin Assault on Socrethar's Rise##36680 |only if haveq(36680) or completedq(36680)
turnin Assault on Lost Veil Anzu##36681 |only if haveq(36681) or completedq(36681)
turnin Assault on Skettis##36683 |only if haveq(36683) or completedq(36683)
turnin Assault on the Heart of Shattrath##36685 |only if haveq(36685) or completedq(36685)
turnin Assault on Shattrath Harbor##36649 |only if haveq(36649) or completedq(36649)
turnin Missive: Assault on Shattrath Harbor##38201 |only if haveq(38201) or completedq(38201)
turnin Missive: Assault on the Broken Precipice##38193 |only if haveq(38193) or completedq(38193)
turnin Missive: Assault on Mok'gol Watchpost##38195 |only if haveq(38195) or completedq(38195)
turnin Missive: Assault on the Gorian Proving Grounds##38194 |only if haveq(38194) or completedq(38194)
turnin Missive: Assault on Darktide Roost##38196 |only if haveq(38196) or completedq(38196)
turnin Missive: Assault on Socrethar's Rise##38197 |only if haveq(38197) or completedq(38197)
turnin Missive: Assault on Magnarok##38190 |only if haveq(38190) or completedq(38190)
turnin Missive: Assault on Stonefury Cliffs##38189 |only if haveq(38189) or completedq(38189)
turnin Missive: Assault on the Everbloom Wilds##38192 |only if haveq(38192) or completedq(38192)
turnin Missive: Assault on the Iron Siegeworks##38191 |only if haveq(38191) or completedq(38191)
turnin Missive: Assault on Skettis##38200 |only if haveq(38200) or completedq(38200)
turnin Missive: Assault on Pillars of Fate##38199 |only if haveq(38199) or completedq(38199)
turnin Missive: Assault on Lost Veil Anzu##38198 |only if haveq(38198) or completedq(38198)
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "assault_dailies_start"
|tip You can also click to restart if you want to do more Scouting Missives.
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Garrison Building Dailies",{
description="\nThis guide will walk you through the garrison daily quests offered from various garrison buildings.",
},[[
step
label "Menu"
Click on one of the buildings below to complete the associated daily quests:
Alchemy Lab |confirm |next "Alchemy" |only if hasbuilding(119) or hasbuilding(120) |or
Dwarven Bunker |confirm |next "Bunker" |only if hasbuilding(8) or hasbuilding(9) or hasbuilding(10) |or
Fishing Shack |confirm |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |or
Gem Boutique |confirm |next "Gem" |only if hasbuilding(131) or hasbuilding(132) |or
Menagerie |confirm |next "Menagerie" |only if hasbuilding(42) or hasbuilding(167) or hasbuilding(168) |or
_ |only if hasbuilding(76) or hasbuilding(96) or hasbuilding(95)
The following buildings must be upgraded to level 2 or higher before proceeding: |only if hasbuilding(76) or hasbuilding(96) or hasbuilding(95)
Alchemy Lab |only if hasbuilding(76)
Gem Boutique |only if hasbuilding(96)
Scribe's Quarters |only if hasbuilding(95)
_ |only if garrisonlvl(1)
You must upgrade your garrison to level 2 before you have access to the Fishing Shack |only if garrisonlvl(1)
_ |only if garrisonlvl(1) or garrisonlvl(2)
You must upgrade your garrison to level 3 before you have access to the Menagerie |only if garrisonlvl(1) or garrisonlvl(2)
step
label "Alchemy"
#include "Garrison_Small_Building", action="Speak to the follower assigned to your Alchemy Lab", building="Alchemy"
Choose the potion you would like to receive
accept Alchemy Experiment##37270 |repeatable
step
You have completed your daily Alchemy Experiement
Click here to return to the menu |confirm |next "Menu"
step
label "Bunker"
#include "Garrison_Large_Building", action="talk Kristen Stoneforge##77377", building="Armory"
|tip She is located inside your Dwarven Bunker.
accept Scraps of Iron##37092
step
collect 5 Iron Horde Scraps##113681 |q 37092/1 |goto Talador 68.4,4.6
|tip These can be looted from dungeons and Grom'kar mobs in northern Talador.
step
#include "Garrison_Large_Building", action="talk Kristen Stoneforge##77377", building="Armory"
|tip She is located inside your Dwarven Bunker.
turnin Scraps of Iron##37092
step
#include "Garrison_Large_Building", action="talk Kristen Stoneforge##77377", building="Armory"
|tip She is located inside your Dwarven Bunker.
accept Scrap Meltdown##38175 |repeatable
step
collect 25 Iron Horde Scraps##113681 |q 38175/1 |goto Talador 68.4,4.6
|tip These can be looted from dungeons and Grom'kar mobs in northern Talador.
step
#include "Garrison_Large_Building", action="talk Kristen Stoneforge##77377", building="Armory"
|tip She is located inside your Dwarven Bunker.
turnin Scrap Meltdown##38175
step
You have completed your daily Iron Horde Scraps quest
Click here to return to the menu |confirm |next "Menu"
step
label "Fish"
#include "Garrison_RAshton"
Accept the daily quest offered by Ron Ashton |complete haveq(36517) or haveq(36515) or haveq(36514) or haveq(36513) or haveq(36510) or haveq(36511)
accept Abyssal Gulper Eel##36517 |repeatable |only if garrisonlvl(5)
accept Blackwater Whiptail##36515 |repeatable |only if garrisonlvl(5)
accept Blind Lake Sturgeon##36514 |repeatable |only if garrisonlvl(5)
accept Fat Sleeper##36513 |repeatable |only if garrisonlvl(5)
accept Fire Ammonite##36510 |repeatable |only if garrisonlvl(5)
accept Jawless Skulker##36511 |repeatable |only if garrisonlvl(5)
|next "Check"
step
label "Check"
Proceeding |next "Gulper1" |only if haveq(36517) and not hasfollower(202)
Proceeding |next "Gulper2" |only if haveq(36517) and hasfollower(202)
Proceeding |next "Whiptail1" |only if haveq(36515) and not hasfollower(202)
Proceeding |next "Whiptail2" |only if haveq(36515) and hasfollower(202)
Proceeding |next "Sturgeon1" |only if haveq(36514) and not hasfollower(202)
Proceeding |next "Sturgeon2" |only if haveq(36514) and hasfollower(202)
Proceeding |next "Sleeper1" |only if haveq(36513) and not hasfollower(202)
Proceeding |next "Sleeper2" |only if haveq(36513) and hasfollower(202)
Proceeding |next "Fire1" |only if haveq(36510) and not hasfollower(202)
Proceeding |next "Fire2" |only if haveq(36510) and hasfollower(202)
Proceeding |next "Skulker1" |only if haveq(36511) and not hasfollower(202)
Proceeding |next "Skulker2" |only if haveq(36511) and hasfollower(202)
step
label "Gulper1"
Maintain your Abyssal Gulper Eel Bait buff |havebuff Interface\Icons\inv_fishing_lure_frogfish |use Abyssal Gulper Eel Bait##110293 |only if itemcount(110293) > 0
Fish in the water here |cast Fishing##131474
use Small Abyssal Gulper Eel##111659 |only if itemcount(111659) > 4
use Abyssal Gulper Eel##111664 |only if itemcount(111664) > 4
use Enormous Abyssal Gulper Eel##111671 |only if itemcount(111664) > 4
collect 10 Abyssal Gulper Eel Egg##112627 |q 36517/1 |goto Spires of Arak/0 60.9,17.8 |next "FishTurnin"
step
label "Gulper2"
#include "Garrison_Pagle"
Ask him: "_Any regular fish bait?_" and then select "_Abyssal Gulper Eel_" |havebuff Interface\Icons\inv_fishing_lure_frogfish
Fish in the water here |cast Fishing##131474
use Small Abyssal Gulper Eel##111659 |only if itemcount(111659) > 4
use Abyssal Gulper Eel##111664 |only if itemcount(111664) > 4
use Enormous Abyssal Gulper Eel##111671 |only if itemcount(111664) > 4
collect 10 Abyssal Gulper Eel Egg##112627 |q 36517/1 |goto Lunarfall/0 52.10,14.45
|next "FishTurnin"
step
label "Whiptail1"
Maintain your Blackwater Whiptail Bait buff |havebuff Interface\Icons\inv_fishing_lure_clam |use Blackwater Whiptail Bait##110294 |only if itemcount(110294) > 0
Fish in the water here |cast Fishing##131474
use Small Blackwater Whiptail##111662 |only if itemcount(111662) > 4
use Blackwater Whiptail##111663 |only if itemcount(111663) > 4
use Enormous Blackwater Whiptail##111670 |only if itemcount(111670) > 4
collect 10 Blackwater Whiptail Egg##112626 |q 36515/1 |goto Talador 63.0,34.65 |next "FishTurnin"
step
label "Whiptail2"
#include "Garrison_Pagle"
Ask him: "_Any regular fish bait?_" and then select "_Blackwater Whiptail_" |havebuff Interface\Icons\inv_fishing_lure_clam
Fish in the water here |cast Fishing##131474
use Small Blackwater Whiptail##111662 |only if itemcount(111662) > 4
use Blackwater Whiptail##111663 |only if itemcount(111663) > 4
use Enormous Blackwater Whiptail##111670 |only if itemcount(111670) > 4
collect 10 Blackwater Whiptail Egg##112626 |q 36515/1 |goto Lunarfall/0 52.10,14.45
|next "FishTurnin"
step
label "Sturgeon1"
Maintain your Blind Lake Sturgeon bait buff |havebuff Interface\Icons\inv_fishing_lure_sandcrab |use Blind Lake Sturgeon Bait##110290 |only if itemcount(110290) > 0
Fish in the water here |cast Fishing##131474
use Small Blind Lake Sturgeon##111652 |only if itemcount(111652) > 4
use Blind Lake Sturgeon##111667 |only if itemcount(111667) > 4
use Enormous Blind Lake Sturgeon##111674 |only if itemcount(111674) > 4
collect 10 Blind Lake Sturgeon Egg##112629 |q 36514/1 |goto Shadowmoon Valley D 48.5,34.15 |next "FishTurnin"
step
label "Sturgeon2"
#include "Garrison_Pagle"
Ask him: "_Any regular fish bait?_" and then select "_Blind Lake Sturgeon_" |havebuff Interface\Icons\inv_fishing_lure_sandcrab
Fish in the water here |cast Fishing##131474
use Small Blind Lake Sturgeon##111652 |only if itemcount(111652) > 4
use Blind Lake Sturgeon##111667 |only if itemcount(111667) > 4
use Enormous Blind Lake Sturgeon##111674 |only if itemcount(111674) > 4
collect 10 Blind Lake Sturgeon Egg##112629 |q 36514/1 |goto Lunarfall/0 52.10,14.45
|next "FishTurnin"
step
label "Sleeper1"
Maintain your Fat Sleeper Bait buff |havebuff Interface\Icons\inv_fishing_lure_donut |use Fat Sleeper Bait##110289 |only if itemcount(110289) > 0
Fish in the water here |cast Fishing##131474
use Small Fat Sleeper##111651 |only if itemcount(111651) > 4
use Fat Sleeper##111668 |only if itemcount(111668) > 4
use Enormous Fat Sleeper##111675 |only if itemcount(111675) > 4
collect 10 Fat Sleeper Egg##112631 |q 36513/1 |goto Nagrand D 72.5,26.5 |next "FishTurnin"
step
label "Sleeper2"
#include "Garrison_Pagle"
Ask him: "_Any regular fish bait?_" and then select "_Fat Sleeper_" |havebuff Interface\Icons\inv_fishing_lure_donut
Fish in the water here |cast Fishing##131474
use Small Fat Sleeper##111651 |only if itemcount(111651) > 4
use Fat Sleeper##111668 |only if itemcount(111668) > 4
use Enormous Fat Sleeper##111675 |only if itemcount(111675) > 4
collect 10 Fat Sleeper Egg##112631 |q 36513/1 |goto Lunarfall/0 52.10,14.45
|next "FishTurnin"
step
label "Fire1"
Maintain your Fire Ammonite Bait buff |havebuff Interface\Icons\inv_fishing_lure_jalapeno |use Fire Ammonite Bait##110291 |only if itemcount(110291) > 0
Fish in the lava here |cast Fishing##131474
use Small Fire Ammonite##111656 |only if itemcount(111656) > 4
use Fire Ammonite##111666 |only if itemcount(111666) > 4
use Enormous Fire Ammonite##111673 |only if itemcount(111673) > 4
collect 10 Fire Ammonite Eg##112628 |q 36510/1 |goto Frostfire Ridge/0 51.6,59.05 |next "FishTurnin"
step
label "Fire2"
#include "Garrison_Pagle"
Ask him: "_Any regular fish bait?_" and then select "_Fire Ammonite_" |havebuff Interface\Icons\inv_fishing_lure_jalapeno
Fish in the water here |cast Fishing##131474
use Small Fire Ammonite##111656 |only if itemcount(111656) > 4
use Fire Ammonite##111666 |only if itemcount(111666) > 4
use Enormous Fire Ammonite##111673 |only if itemcount(111673) > 4
collect 10 Fire Ammonite Eg##112628 |q 36510/1 |goto Lunarfall/0 52.10,14.45
|next "FishTurnin"
step
label "Skulker1"
Maintain your Jawless Skulker Bait buff |havebuff Interface\Icons\inv_fishing_lure_kelp |use Jawless Skulker Bait##110274 |only if itemcount(110274) > 0
Fish in the water here |cast Fishing##131474
use Small Jawless Skulker##111650 |only if itemcount(111650) > 4
use Jawless Skulker##111669 |only if itemcount(111669) > 4
use Enormous Jawless Skulker##111676 |only if itemcount(111676) > 4
collect 10 Jawless Skulker Egg##112630 |q 36511/1 |goto Gorgrond 43.5,81.0 |next "FishTurnin"
step
label "Skulker2"
#include "Garrison_Pagle"
Ask him: "_Any regular fish bait?_" and then select "_Jawless Skulker_" |havebuff Interface\Icons\inv_fishing_lure_kelp
Fish in the water here |cast Fishing##131474
use Small Jawless Skulker##111650 |only if itemcount(111650) > 4
use Jawless Skulker##111669 |only if itemcount(111669) > 4
use Enormous Jawless Skulker##111676 |only if itemcount(111676) > 4
collect 10 Jawless Skulker Egg##112630 |q 36511/1 |goto Lunarfall/0 52.10,14.45
|next "FishTurnin"
step
label "FishTurnin"
#include "Garrison_RAshton"
turnin Abyssal Gulper Eel##36517 |only if haveq(36517)
turnin Blackwater Whiptail##36515 |only if haveq(36515)
turnin Blind Lake Sturgeon##36514 |only if haveq(36514)
turnin Fat Sleeper##36513 |only if haveq(36513)
turnin Fire Ammonite##36510 |only if haveq(36510)
turnin Jawless Skulker##36511 |only if haveq(36511)
step
You have completed today's Fishing Shack daily
Click here to return to the main menu |confirm |next "Menu"
step
label "Gem"
#include "Garrison_Small_Building", action="Speak to the follower assigned to your Gem Boutique", building="Jewelcrafting"
Accept the daily quest your follower offers |complete haveq(37320) or haveq(37321) or haveq(37323) or haveq(37324) or haveq(37325)
accept Jewelcrafting Special Order: A Fine Choker##37320 |repeatable |only if garrisonlvl(5)
accept Jewelcrafting Special Order: A Yellow Brighter Than Gold##37321 |repeatable |only if garrisonlvl(5)
accept Jewelcrafting Special Order: Blue the Shade of Sky and Sea##37323 |repeatable |only if garrisonlvl(5)
accept Out of Stock: Blackrock Ore##37324 |repeatable |only if garrisonlvl(5)
accept Out of Stock: True Iron Ore##37325 |repeatable |only if garrisonlvl(5)
step
Proceeding |next "Choker" |only if haveq(37320)
Proceeding |next "Gold" |only if haveq(37321)
Proceeding |next "Sea" |only if haveq(37323)
Proceeding |next "StockBRO" |only if haveq(37324)
Proceeding |next "StockTIO" |only if haveq(37325)
step
label "Choker"
Create a Whispering Iron Choker |q 37320/1 |next "GemTurnin"
|tip For this quest, you will need 60 Blackrock Ore.
step
label "Gold"
Create a Critical Strike Taladite |q 37321/1 |next "GemTurnin"
|tip For this quest, you will need 10 Blackrock Ore and 2 Fireweed.
step
label "Sea"
Create 2 Haste Taladite |q 37323/1 |next "GemTurnin"
|tip For this quest, you will need 20 Blackrock Ore and 4 Frostweed.
step
label "StockBRO"
collect 20 Blackrock Ore##109118 |q 37324/1 |next "GemTurnin"
step
label "StockTIO"
collect 20 True Iron Ore##109119 |q 37325/1 |next "GemTurnin"
step
label "GemTurnin"
#include "Garrison_Small_Building", action="Speak to the follower assigned to your Gem Boutique", building="Jewelcrafting"
turnin Jewelcrafting Special Order: A Fine Choker##37320 |only if haveq(37320)
turnin Jewelcrafting Special Order: A Yellow Brighter Than Gold##37321 |only if haveq(37321)
turnin Jewelcrafting Special Order: Blue the Shade of Sky and Sea##37323 |only if haveq(37323)
turnin Out of Stock: Blackrock Ore##37324 |only if haveq(37324)
turnin Out of Stock: True Iron Ore##37325 |only if haveq(37325)
step
_Open your Jewelcrafting Payment_ |use Jewelcrafting Payment##119191 |only if itemcount(119191) > 0
You have completed today's Gem Boutique daily quest
Click here to return to the Main Menu |confirm |next "Menu"
step
label "Menagerie"
Proceeding |next "Menagerie12" |only if hasbuilding(42) or hasbuilding(167)
Proceeding |next "Menagerie3" |only if hasbuilding(168)
step
label "Menagerie12"
#include "Garrison_Lioness"
accept Battle Pet Roundup##36483 |repeatable
step
Click the Challenge Post
Obtain the Mark of Pet Mastery by defeating the challenge team |q 36483/1 |goto Lunarfall/0 28.8,42.9
step
#include "Garrison_Lioness"
turnin Battle Pet Roundup##36483 |next "PetFinish"
step
label "Menagerie3"
#include "Garrison_Lioness"
accept Mastering the Menagerie##37644 |repeatable
step
Challenge the daily pet and defeat it
Obtain the Mark of Pet Mastery |q 37644/1 |goto Lunarfall/0 29.0,42.7
step
#include "Garrison_Lioness"
turnin Mastering the Menagerie##37644 |next "PetFinish"
step
label "PetFinish"
use Big Bag of Pet Supplies##118697 |only if itemcount(118697) > 0
You have completed today's Menagerie daily quest
Click here to return to the Main Menu |confirm |next "Menu"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Tanaan Jungle (100)\\Hand of the Prophet Dailies",{
description="\nThis guide will walk you through the daily quests for the Hand of the Prophet faction.",
},[[
step
Complete the Tanaan Jungle (100) Leveling Guide |complete completedq(38578)
step
label "hand_prophet_start"
click Tanaan Planning Map##241725
|tip It looks like a rectangle table with a map laying on it.
accept Assault on Ironhold Harbor##37891 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Bleeding the Bleeding Hollow##38045 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Battle At The Iron Front##38046 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on the Ruins of Kra'nak##38250 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on The Fel Forge##38440 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on the Temple of Sha'naar##37968 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on the Throne of Kil'jaeden##38585 |goto Tanaan Jungle/0 58.5,60.4 |or
|tip You will be able to choose between 2 of these quests, but will only be able to accept 1 of these quests per day.
step
talk Parvink##96147
accept Demonslayer of Tanaan##39581 |goto Tanaan Jungle/0 57.8,59.8 |or
accept Bringing Down the Iron Horde##39586 |goto Tanaan Jungle/0 57.8,59.8 |or
|tip This quest only has a chance of being available each, day, so it's not guaranteed to be available. You can only accept one of these quests, if it's available. Sometimes, a different quest for Saberstalkers reputation will be available, instead.
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
clicknpc True Iron Bomb##90069+
|tip They look like round metal spiked balls on the ground and sitting on objects all around this area. Get them and cast the spell they grant you on Iron Battle Engines. They look like big metal artillery machines all around this area.
click Box of Iron Horde Equipment##239839
|tip They look like wooden crates on the ground around this area.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
click Inferno Shot##243205
|tip They look like silver metal artillery capsules laying on the ground around this area. They give you a buff that allows you to use Harbor Cannons around this area, which allow you to kill mobs easily.
Assault the Iron Horde Forces at Ironhold Harbor |q 37891/1 |goto Tanaan Jungle/0 39.6,37.0
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30 |only if walking
kill Eye Sentry##95235+, Bleeding Hollow Hunter##89699+, Felblood Overseer##92706+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
clicknpc Blood Ritual Orb##83670+
|tip They look like floating swirling red balls around this area.
Assault the Bleeding Hollow at Zeth'Gol |q 38045/1 |goto Tanaan Jungle/0 22.3,51.1
|tip You will see a progress bar in your quest tracking area.
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Footsoldier##90443+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38046/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300+
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 38250/1 |goto Tanaan Jungle/0 24.0,39.6
|tip You will see a progress bar in your quest tracking area.
step
kill Felblood Warrior##90066+, Felblood Overseer##91760+, Felblood Deadeye##91764+, Forge Engineer##91721+
click Siege Equipment Blueprints##241669
|tip They look like small tan pieces of paper laying on the ground and on objects around this area.
Assault the Iron Horde Forces at the Fel Forge |q 38440/1 |goto Tanaan Jungle/0 45.3,43.5
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20 |only if walking
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703+
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302+
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 37968/1 |goto Tanaan Jungle/0 28.5,67.9
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 58.1,42.5 < 30 |only if walking
_Run up_ the zigzag path |goto Tanaan Jungle/0 58.8,31.8 < 30 |only if walking
kill Felflame Fiend##92082+, Shadowheart Fiend##92083+, Infernal Devastator##92031+, Felblood Corruptor##92396+, Felguard Sentinel##92026+
Assault the Shadow Council Forces at the Throne of Kil'jaeden |q 38585/1 |goto Tanaan Jungle/0 56.0,25.6
|tip You will see a progress bar in your quest tracking area.
|tip This is a group quest. Use the Group Finder to easily find a group by opening it and selecting Premade Groups -> Custom, then searching for "Kil'jaeden".
step
talk Exarch Yrel##90309
turnin Assault on Ironhold Harbor##37891 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(37891) or completedq(37891)
turnin Bleeding the Bleeding Hollow##38045 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38045) or completedq(38045)
turnin Battle At The Iron Front##38046 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38046) or completedq(38046)
turnin Assault on the Ruins of Kra'nak##38250 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38250) or completedq(38250)
turnin Assault on The Fel Forge##38440 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38440) or completedq(38440)
turnin Assault on the Temple of Sha'naar##37968 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(37968) or completedq(37968)
turnin Assault on the Throne of Kil'jaeden##38585 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38585) or completedq(38585)
step
talk Vindicator Krethos##90974
accept Pressing the Attack##39574 |goto Tanaan Jungle/0 58.4,60.5
accept Harnessing Their Power##39573 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Disarming Sha'naar##39571 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Secrets of the Shadow Council##39570 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Breaking Their Fel Bonds##39569 |goto Tanaan Jungle/0 58.4,60.5 |or
accept A Little Wetwork##39568 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Bloodied Blades of Zeth'Gol##39567 |goto Tanaan Jungle/0 58.4,60.5 |or
|tip You will only be able to accept 2 of these quests per day.
step
accept Battle At The Iron Front##39443
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 39443/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39574/1") and not completedq(38046)
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
collect 20 Vial of Fel Blood##128431 |q 39569/1 |goto Tanaan Jungle/0 11.4,56.1
step
kill Iron Wargronn##90585+
collect Wargronn Harness##128434 |q 39514/1 |goto Tanaan Jungle/0 13.1,56.2
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
Slay #25# Iron Horde Orcs |q 39586/1 |goto Tanaan Jungle/0 11.4,56.1
step
_Follow_ the path up |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.7 < 30 |only if walking
_Follow_ the stairs up |goto Tanaan Jungle/0 29.2,68.4 < 30 |only if walking
_Enter_ the mine |goto Tanaan Jungle/0 29.4,70.8 < 20 |walk
click Unrefined Draenic Crystal##243794
|tip They look like small clusters of white crystals on the ground and on objects inside this mine.
collect 8 Unrefined Draenic Crystal##128433 |q 39571/1 |goto Tanaan Jungle/0 29.2,71.0
step
_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20 |only if walking
accept Assault on the Temple of Sha'naar##39449
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703+
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302+
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 39449/1 |goto Tanaan Jungle/0 28.5,67.9
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39574/1") and not completedq(37968)
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748+
collect 20 Shadow Council Missive##128432 |q 39570/1 |goto Tanaan Jungle/0 24.0,39.6
step
accept Assault on the Ruins of Kra'nak##39448
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748+
clicknpc Ritual Circle##90300+
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 39448/1 |goto Tanaan Jungle/0 24.0,39.6
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39574/1") and not completedq(38250)
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
collect 15 Iron Horde Naval Manifest##128429 |q 39568/1 |goto Tanaan Jungle/0 39.6,37.0
step
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
collect 25 Bleeding Hollow Ritual Blade##128428 |q 39567/1 |goto Tanaan Jungle/0 22.3,51.1
step
talk Vindicator Krethos##90974
turnin Pressing the Attack##39574 |goto Tanaan Jungle/0 58.4,60.5
turnin Harnessing Their Power##39573 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39573) or completedq(39573)
turnin Disarming Sha'naar##39571 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39571) or completedq(39571)
turnin Secrets of the Shadow Council##39570 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39570) or completedq(39570)
turnin Breaking Their Fel Bonds##39569 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39569) or completedq(39569)
turnin A Little Wetwork##39568 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39568) or completedq(39568)
turnin Bloodied Blades of Zeth'Gol##39567 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39567) or completedq(39567)
step
_Go through_ the doorway |goto Tanaan Jungle/0 57.8,58.0 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.9,51.6 < 30 |only if walking
kill Corrupting Fiend##93024+
|tip The imps spawn in groups of 3 around this area.
Slay #20# Demons |q 39581/1 |goto Tanaan Jungle/0 53.9,43.6
You can find more around [Tanaan Jungle/0 56.9,35.2]
step
talk Parvink##96147
turnin Demonslayer of Tanaan##39581 |goto Tanaan Jungle/0 57.8,59.8 |only if haveq(39581) or completedq(39581)
turnin Bringing Down the Iron Horde##39586 |goto Tanaan Jungle/0 57.8,59.8 |only if haveq(39586) or completedq(39586)
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "hand_prophet_start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Tanaan Jungle (100)\\Order of the Awakened Dailies",{
description="\nThis guide will walk you through the daily quests for the Order of the Awakened faction.",
},[[
step
Complete the Tanaan Jungle (100) Leveling Guide |complete completedq(38578)
step
label "order_awakened_start"
talk Dawn-Seeker Krisek##95424
accept Unseen Influence##39433 |goto Tanaan Jungle/0 58.0,59.4
step
Follow the path |goto Tanaan Jungle/0 54.9,64.1 < 30 |only if walking
kill Broodlord Ixkor##92429
|tip You may have to wait for it to respawn.
collect 1 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 57.8,67.3
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 55.9,66.1 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 54.9,63.5 < 30 |only if walking
Run through here |goto Tanaan Jungle/0 51.9,60.5 < 30 |only if walking
Jump down here |goto Tanaan Jungle/0 49.1,57.4 < 10 |only if walking
kill Captain Grok'mar##93264
|tip You may have to wait for him to respawn.
collect 2 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 48.6,57.4
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Jump up here |goto Tanaan Jungle/0 49.1,57.4 < 10 |only if walking
Follow the path |goto Tanaan Jungle/0 49.1,59.3 < 30 |only if walking
Continue following the dirt path |goto Tanaan Jungle/0 46.6,65.9 < 30 |only if walking
Turn off the road here |goto Tanaan Jungle/0 43.1,70.2 < 20 |only if walking
Enter the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |walk
Follow the path |goto Tanaan Jungle/0 40.5,69.3 < 20 |only if walking
kill Kris'kar the Unredeemed##93279
|tip You may have to wait for him to respawn.
collect 3 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 39.6,68.1
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 40.5,69.3 < 20 |only if walking
Leave the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |walk
kill Bramblefell##91093
|tip You may have to wait for him to respawn. He's a big tree ent that patrols the northern part of Zorammarsh, so you may need to search for him.
collect 4 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 40.8,69.6
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 38.2,75.1 < 30 |only if walking
Enter the cave |goto Tanaan Jungle/0 37.4,75.9 < 30 |walk
Run down the path |goto Tanaan Jungle/0 36.4,77.0 < 20 |only if walking
kill Captain Ironbeard##93076
|tip You may have to wait for him to respawn. He's a skeleton that walks around in this area of the cave, so you may need to search for him.
collect 5 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 36.5,79.8
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 36.7,78.9 < 20 |only if walking
Continue following the path |goto Tanaan Jungle/0 36.4,76.4 < 20 |only if walking
Follow the path |goto Tanaan Jungle/0 38.5,74.6 < 40 |only if walking
Run on the dirt road |goto Tanaan Jungle/0 37.5,69.5 < 30 |only if walking
Follow the path |goto Tanaan Jungle/0 35.6,67.5 < 30 |only if walking
Follow the dirt path up |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
Run up the stairs |goto Tanaan Jungle/0 28.8,66.7 < 20 |only if walking
Continue up the stairs |goto Tanaan Jungle/0 29.1,68.4 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.4,68.6 < 20 |only if walking
kill Ceraxas##90434
|tip You may have to wait for it to respawn.
collect 6 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.4,68.0
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Run down the stairs |goto Tanaan Jungle/0 30.7,68.5 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.3,70.2 < 20 |only if walking
kill Imp-Master Valessa##90429
|tip You may have to wait for her to respawn. She patrols this small area, so you may need to search for her.
collect 7 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.6,72.8
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 45.3,44.7 < 30 |only if walking
kill Felsmith Damorka##92647
|tip You may have to wait for her to respawn.
collect 8 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 45.9,47.2
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 47.8,44.7 < 30 |only if walking
kill Grand Warlock Nethekurse##91695
|tip You may have to wait for him to respawn. He walks in a circle around this area on this path, so you may need to search for him.
collect 9 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 47.4,42.3
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
kill Commander Org'mok##89675
|tip You may have to wait for him to respawn. He walks back and forth on this path, so you may need to search for him.
collect 10 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 50.3,45.2
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
talk Dawn-Seeker Krisek##95424
turnin Unseen Influence##39433 |goto Tanaan Jungle/0 58.0,59.4
step
You've completed the daily for today
Click to restart the dailies run |confirm |next "order_awakened_start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Warlords of Draenor Dailies\\Tanaan Jungle (100)\\The Saberstalkers",{
description="\nThis guide will walk you through the daily quests for the The Saberstalkers faction.",
},[[
step
Complete the Tanaan Jungle (100) Leveling Guide |complete completedq(38578)
step
label "saberstalkers_start"
talk Parvink##96147
accept Tooth and Claw##39582 |goto Tanaan Jungle/0 57.8,59.8 |or
|tip This quest has a chance to be available each day, but is not guaranteed to be available.
_
Click here if the quest is not available |confirm |or
step
_Go through_ the doorway |goto Tanaan Jungle/0 56.4,59.2 < 20 |walk
_Follow_ the path |goto Tanaan Jungle/0 54.9,64.3 < 30 |only if walking
kill Bloodfang Swarmer##89789+, Bloodfang Ravager##89741+
collect 100 Tanaan Jungle Tooth##128438 |q 39582/1 |goto Tanaan Jungle/0 56.4,67.1
step
_Follow_ the path |goto Tanaan Jungle/0 55.7,65.8 < 20 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 55.0,63.6 < 30 |only if walking
_Go through_ the doorway |goto Tanaan Jungle/0 56.5,59.2 < 20 |walk
talk Parvink##96147
turnin Tooth and Claw##39582 |goto Tanaan Jungle/0 57.8,59.8
step
_Go through_ the doorway |goto Tanaan Jungle/0 56.5,59.2 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.5,62.9 < 30 |only if walking
_Run on_ the dirt road |goto Tanaan Jungle/0 54.7,64.9 < 20 |only if walking
_Go up_ the dirt path |goto Tanaan Jungle/0 54.0,70.5 < 20 |only if walking
talk Z'tenga the Walker##92805
accept Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
|tip This quest can only be done once per week.
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,76.7 < 30 |only if walking
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 40 Blackfang Claw##124099 |q 39565 |goto Tanaan Jungle/0 55.8,78.6
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30 |only if walking
talk Z'tenga the Walker##92805
buy Minor Blackfang Challenge Totem##124093 |complete itemcount(124093) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.8,78.6
buy Major Blackfang Challenge Totem##124094 |complete itemcount(124094) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.8,78.6
buy Prime Blackfang Challenge Totem##124095 |complete itemcount(124095) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.8,78.6
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,75.9 < 30 |only if walking
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.8,80.9 < 20 |only if walking
use Minor Blackfang Challenge Totem##124093
kill Akrrilo##92766 |q 39565/1 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Major Blackfang Challenge Totem##124094
kill Rendarr##92817 |q 39565/2 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Prime Blackfang Challenge Totem##124095
kill Eyepiercer##92819 |q 39565/3 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30 |only if walking
talk Z'tenga the Walker##92805
turnin Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "saberstalkers_start"
]])
