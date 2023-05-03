local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("GarrisonAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Leveling Guide",{
description="\nThis guide will walk you through leveling your Garrison to Level 3.",
condition_suggested=function() return level >= 40 and level <= 50 and not completedq(36615) and garrisonlvl() < 3 end,
condition_end=function() return garrisonlvl(3) end,
},[[
step
Complete the "Step Three: Prophet!" Quest |condition completedq(34575)
|tip Use the "Draenor Intro" guide to accomplish this.
step
Gather Garrison Resources:
|tip You will naturally gather them as you progress through this guide
|tip You will need 200 Garrison Resources to upgrade your Garrison to Level 2.
|tip You will need 2,000 Garrison Resources to upgrade your Garrison to Level 3.
Click Here to Continue |confirm |q 36615 |future
step
talk Prophet Velen##79206
accept Finding a Foothold##34582 |goto Shadowmoon Valley D/0 26.97,8.10
step
Watch the dialogue
|tip Follow Prophet Velen as he walks.
Accompany Prophet Velen to the Lunarfall Ruins |q 34582/1 |goto Lunarfall/0 18.87,36.49
step
Follow the path |goto 20.22,36.23 < 30 |only if walking
talk Vindicator Maraad##79470
turnin Finding a Foothold##34582 |goto 30.02,34.36
accept For the Alliance!##34583 |goto 30.02,34.36
step
clicknpc Alliance Banner##120954
Plant the Alliance Banner |q 34583/1 |goto 32.61,33.36
step
Watch the dialogue
|tip Wait for Baron Alexston to appear and walk to this location.
Click Here Once Baron Alexston Arrives |confirm |goto 32.71,34.04 |q 34583
step
talk Baros Alexston##79243
turnin For the Alliance!##34583 |goto 32.71,34.04
accept Looking for Lumber##34584 |goto 32.71,34.04
accept Ravenous Ravens##34616 |goto 32.71,34.04
stickystart "Kill_Lunarfall_Ravens"
step
click Tree Marking##230527+
|tip They look like poles with flags on them planted in the ground around this area.
Mark #8# Trees for Lumberjacks |q 34584/1 |goto 47.85,50.20
step
label "Kill_Lunarfall_Ravens"
kill 6 Lunarfall Raven##82037 |q 34616/1 |goto 47.85,50.20
step
talk Baros Alexston##79243
turnin Looking for Lumber##34584 |goto 32.71,34.04
turnin Ravenous Ravens##34616 |goto 32.71,34.04
step
talk Yrel##79567
accept Quakefist##34585 |goto 31.37,35.83
step
kill Quakefist##81360 |q 34585/1 |goto 40.98,77.74
step
talk Yrel##79567
turnin Quakefist##34585 |goto 31.37,35.83
step
talk Baros Alexston##79243
accept Establish Your Garrison##34586 |goto 32.71,34.04
step
talk Baros Alexston##79243
Tell him _"We have everything we need. It's time to build the garrison."_
Speak with Baros to Build your Garrison |q 34586/1 |goto 32.71,34.04
step
#include "Garrison_BAlexston"
turnin Establish Your Garrison##34586
accept Keeping it Together##35176
accept Ship Salvage##35166
step
#include "Garrison_Brightstone"
Tell her _"Time to get back to work."_
Speak with Assistant Brightstone About Her Work Ethic |q 35176/1
step
click Garrison Cache##236916
Check the Garrison Cache |q 35176/3 |goto 49.19,43.59
step
#include "Garrison_Shelly"
Choose _"Gather Shelly's report."_
Gather Shelly's Report |q 35176/2
step
#include "Garrison_BAlexston"
turnin Keeping it Together##35176
step
#include "Garrison_Maraad"
accept Pale Moonlight##35174
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 35174
|tip Follow the road northwest.
stickystart "Kill_Pale_Devourers"
stickystart "Collect_Drudgeboat_Salvage"
step
kill Gnaw Bloodseeker##81670 |q 35174/1 |goto Shadowmoon Valley D/0 25.59,5.78
|tip He fights around this area.
step
label "Kill_Pale_Devourers"
kill 8 Pale Devourer##79205 |q 35174/2 |goto 26.55,8.76
step
label "Collect_Drudgeboat_Salvage"
Kill enemies around this area
click Drudgeboat Salvage##231851+
|tip They look like wooden barrels and boxes on the ground around this area.
collect 15 Drudgeboat Salvage##112696 |q 35166/1 |goto 27.13,5.56
step
Follow the Road to Your Garrison |goto 27.2,14.5 < 30 |c |q 35166
step
#include "Garrison_BAlexston"
turnin Ship Salvage##35166
step
#include "Garrison_Maraad"
turnin Pale Moonlight##35174
step
#include "Garrison_BAlexston"
accept Build Your Barracks##34587
step
click Garrison Blueprint: Barracks##231855
Find the Blueprints |q 34587/1 |goto Lunarfall/0 45.18,40.45
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Blueprints |q 34587/2
step
#include "Garrison_ArchitectTable"
|tip Select the "Large" tab at the top.
|tip Drag the "Barracks" to a Large Empty Plot.
Build Your Barracks |q 34587/3
step
click Finalize Garrison Plot##236262
|tip It looks like a huge floating white scroll.
Finalize Your Plot |q 34587/4 |goto Lunarfall/0 44.47,43.36
step
#include "Garrison_Maraad"
turnin Build Your Barracks##34587
accept Qiana Moonshadow##34646
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 34646
|tip Follow the road south.
step
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q 34646/1 |goto Shadowmoon Valley D/0 29.93,29.20
step
Return to the Garrison |goto 32.54,26.32 < 50 |q 34646
|tip Follow the road north.
step
#include "Garrison_QMoonshadow"
turnin Qiana Moonshadow##34646
step
#include "Garrison_LtThorn"
accept Delegating on Draenor##34692
step
#include "Garrison_CommandTable"
|tip Begin the "Killing the Corrupted" mission.
Use the Command Table |q 34692/1
step
#include "Garrison_LtThorn"
turnin Delegating on Draenor##34692
accept Ashran Appearance##36624
step
#include "Garrison_Yrel"
accept A Hero's Welcome##33075
step
#include "Garrison_DLongdrink"
Tell him _"Take me to Stormshield in Ashran."_
Speak with Dungar Longdrink |q 36624/1
step
Fly to Stormshield |offtaxi |goto Stormshield/0 31.23,49.26 |q 36624 |notravel
step
talk Private Tristan##86065
turnin Ashran Appearance##36624 |goto Stormshield/0 32.05,49.99
accept Host Howell##36626 |goto Stormshield/0 32.05,49.99
step
Enter the building |goto 36.14,72.77 < 7 |walk
talk Lieutenant Howell##86069
|tip Inside the building.
turnin Host Howell##36626 |goto 35.51,75.86
accept Inspiring Ashran##36629 |goto 35.51,75.86
step
talk Jaesia Rosecheer##85956
|tip Inside the building.
Speak with Jaesia Rosecheer |q 36629/1 |goto 35.71,77.89
step
Enter the building |goto 43.91,70.66 < 7 |walk
talk Vindicator Nuurem##85932
|tip Inside the building.
Speak with Vindicator Nuurem |q 36629/3 |goto 46.61,76.76
step
talk Knewbie McGreen##86148
Speak with a New Recruit |q 36629/2 |goto 62.7,41.7
step
Enter the building |goto 36.14,72.77 < 7 |walk
talk Lieutenant Howell##86069
|tip Inside the building.
turnin Inspiring Ashran##36629 |goto 35.51,75.86
accept A Surly Dwarf##36630 |goto 35.51,75.86
step
Enter the building |goto 47.37,32.01 < 7 |walk
talk Delvar Ironfist##86084
|tip Inside the building.
turnin A Surly Dwarf##36630 |goto 48.00,30.63
accept Delvar Ironfist##36633 |goto 48.00,30.63
step
Watch the dialogue
Find Samaara at Embaari Village |q 33075/1 |goto Shadowmoon Valley D/0 45.67,38.84
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765 |goto 46.04,38.92
step
talk Efee##80196
accept Think of the Children!##33070 |goto 46.64,37.74
step
talk Vindicator Tenuum##74343
accept Closing the Door##33905 |goto 46.65,37.29
stickystart "Close_Void_Portals"
stickystart "Kill_Shadowmoon_Voidmancers"
step
Enter the building |goto 48.83,30.84 < 10 |walk
talk Hakaam##62769
|tip Inside the building.
Save Hakaam |q 33070/1 |goto 48.98,30.90
step
Enter the building |goto 51.93,32.74 < 10 |walk
talk Ariaana##71502
|tip Inside the building.
accept In Need of a Hero##33813 |goto 52.03,32.66
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around this area.
collect Draenei Bucket##111908 |goto 51.79,32.53 |q 33813
step
Enter the building |goto 51.92,32.75 < 10 |walk
use the Draenei Bucket##111908
|tip Use it on the blue fire.
|tip Inside the building.
Douse the Bookshelf Fire |q 33813/1 |goto 52.09,32.86
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around this area.
collect Draenei Bucket##111908 |goto 51.79,32.53 |q 33813
step
Enter the building |goto 51.92,32.75 < 10 |walk
use the Draenei Bucket##111908
|tip Use it on the blue fire.
|tip Inside the building.
Douse the Floor Fire |q 33813/2 |goto 52.04,32.86
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around this area.
collect Draenei Bucket##111908 |goto 51.79,32.53 |q 33813
step
Enter the building |goto 51.92,32.75 < 10 |walk
use the Draenei Bucket##111908
|tip Use it on the blue fire.
|tip Inside the building.
Douse the Table Fire |q 33813/3 |goto 52.02,32.93
step
talk Ariaana##71502
|tip Inside the building.
turnin In Need of a Hero##33813 |goto 52.03,32.66
Save Ariaana |q 33070/3 |goto 52.03,32.66
step
Enter the building |goto 51.81,35.95 < 10 |walk
talk Rastaak##64224
|tip Inside the building.
Save Rastaak |q 33070/2 |goto 51.94,35.99
step
label "Close_Void_Portals"
kill Shadowmoon Portalmaster##80181+
|tip They are the ones channeling on the blue swirling portals on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Close #3# Void Portals |q 33905/1 |goto 51.89,34.65
step
label "Kill_Shadowmoon_Voidmancers"
kill 8 Shadowmoon Voidmancer##80162 |q 33765/1 |goto 51.89,34.65
step
Follow the path |goto 52.79,36.30 < 30 |only if walking
talk Prophet Velen##74043
turnin Think of the Children!##33070 |goto 49.12,38.51
turnin Dark Enemies##33765 |goto 49.12,38.51
turnin Closing the Door##33905 |goto 49.12,38.51
accept Shadows Awaken##34019 |goto 49.12,38.51
step
Watch the dialogue
Confront Ner'zhul |q 34019/1 |goto 49.35,37.26
step
Watch the dialogue
kill Karnoth##75043 |q 34019/2 |goto 49.43,36.87
step
talk Prophet Velen##74043
turnin Shadows Awaken##34019 |goto 49.30,37.41
accept Into Twilight##33072 |goto 49.30,37.41
step
talk Prophet Velen##79043
turnin Into Twilight##33072 |goto Shadowmoon Valley D/0 40.54,54.92
accept The Clarity Elixir##33076 |goto Shadowmoon Valley D/0 40.53,54.89
step
talk Rangari Veka##73425
accept Going Undercover##33080 |goto 40.58,54.84
step
talk Sylene##73106
Tell her _"I need a Shadowmoon orc illusion."_
Obtain an Orc Disguise From Sylene |q 33080/1 |goto 40.65,54.61
stickystart "Collect_Engorged_Hearts"
stickystart "Collect_Swamplighter_Dust"
step
Enter the tree |goto 47.26,51.96 < 7 |walk
click Pristine Star Lily##223824
|tip Inside the tree.
collect Pristine Star Lily##111024 |q 33076/3 |goto 47.33,52.09
step
label "Collect_Engorged_Hearts"
kill Echidnian Hydra##79020+
collect 3 Engorged Heart##105716 |q 33076/2 |goto 44.51,49.50
step
label "Collect_Swamplighter_Dust"
kill Frenzied Swamplighter##75471+
collect 6 Swamplighter Dust##104350 |q 33076/1 |goto 44.51,49.50
step
Follow the path up |goto 39.58,53.59 < 15 |only if walking
talk Prophet Velen##79043
|tip In the entrance of the tree.
turnin The Clarity Elixir##33076 |goto 35.27,49.13
accept The Fate of Karabor##33059 |goto 35.27,49.13
step
use the Clarity Elixir##111591
Drink the Clarity Elixir |q 33059/1 |goto 35.28,49.12
step
Begin the Scenario |scenariostart |q 33059
step
Watch the dialogue
|tip Follow Prophet Velen as he walks.
Follow Prophet Velen |scenariogoal 1/24541 |goto 79.87,46.60 |q 33059
step
Watch the dialogue
kill Krull##79560 |scenariogoal 2/24539 |goto 79.86,46.58 |q 33059
step
Watch the dialogue
Witness Commander Vorka's Arrival |scenariogoal 3/24542 |goto 79.86,46.58 |q 33059
step
Watch the dialogue
|tip Follow Prophet Velen as he walks.
talk Prophet Velen##79522
|tip He walk to this location.
Tell him _"Prophet, we're being overrun!"_
Watch the dialogue
Speak to Velen on the Karabor Stairs |scenariogoal 4/24543 |goto 79.21,46.58 |q 33059
step
Watch the dialogue
Witness the Fate of Karabor |q 33059/2 |goto 79.21,46.58
step
Follow the path down |goto 37.30,54.06 < 30 |only if walking
talk Prophet Velen##79043
turnin The Fate of Karabor##33059 |goto 40.52,54.91
step
Follow the path |goto 38.66,60.08 < 15 |only if walking
Enter the building |goto 37.13,59.58 < 10 |walk
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip Inside the building.
Plant Explosives at the Supply Hut |q 33080/2 |goto 37.17,59.25
step
Enter the building |goto 36.75,61.29 < 10 |walk
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip Inside the building.
Plant Explosives at the Main Lodge |q 33080/3 |goto 36.35,61.44
step
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground behind a huge stone.
Plant Explosives at the Chieftain's Seat |q 33080/4 |goto 39.12,62.87
step
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Training Pit |q 33080/5 |goto 36.53,65.50
step
talk Yrel##74877
turnin Going Undercover##33080 |goto 34.22,63.24
accept Escape From Shaz'gul##33081 |goto 34.22,63.24
step
talk Yrel##74877
|tip Choose any of the dialogue options you like, it doesn't matter.
Inspire Yrel |q 33081/1 |goto 34.22,63.24
step
Watch the dialogue
|tip Follow Yrel and protect her as she walks.
|tip She eventually walks to this location.
|tip When the large groups of enemies attack, let Yrel tank them.
|tip Focus on killing the Void Shield Totems that appear.
|tip If you don't kill the totems, the enemies will be very hard to kill.
Escape Shaz'gul with Yrel |q 33081/2 |goto 39.22,57.54
step
talk Yrel##74877
turnin Escape From Shaz'gul##33081 |goto 40.60,54.94
step
talk Scout Valdez##81152
|tip Sometimes he doesn't spawn correctly, for some reason.
|tip If here's not here, check in your garrison.
accept Fast Expansion##33814 |goto 40.64,54.87
step
#include "Garrison_BAlexston"
turnin Fast Expansion##33814
accept Bigger is Better##36592
step
label "Collect_Garrison_Resources_36592"
Collect #200# Garrison Resources |condition curcount(824) >= 200 |q 36592 |future
|tip You will collect them naturally as you complete quests.
|tip You will need these to upgrade your garrison to level 2.
step
#include "Garrison_ArchitectTable"
|tip Click your "Town Hall" building on the garrison architect map.
|tip Click the "Upgrade" button, at the top right.
Upgrade Your Garrison to Level 2 |condition garrisonlvl()>=2
step
#include "Garrison_BAlexston"
turnin Bigger is Better##36592
step
Reach level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
#include "Garrison_BAlexston"
accept My Very Own Castle##36615
step
Collect #2000# Garrison Resources |q 36615/1
|tip You will need 2,000 Garrison Resources and 5,000 gold to upgrade your Garrison to Level 3.
|tip Gather your Garrison Supply Cache each day, collect treasures, kill rares, and send followers on missions that award Garrison Resources.
step
#include "Garrison_ArchitectTable"
|tip You will need 2,000 Garrison Resources and 5,000 gold to upgrade your Garrison to Level 3.
|tip Click your "Town Hall" building on the garrison architect map.
|tip Click the "Upgrade" button, at the top right.
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
step
#include "Garrison_BAlexston"
turnin My Very Own Castle##36615
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Alchemy Lab",{
description="\nThis guide will walk you through creating and upgrading the Alchemy Lab Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Alchemy Lab_ to a _Small Plot_
Build your Alchemy Lab |havebuilding Alchemy
step
Wait for your Alchemy Lab to be Built |havebuilding Alchemy,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Alchemy"
Finalize the Level 1 Alchemy Lab |havebuilding Alchemy,1,active
step
#include "Garrison_Small_Building", action="talk Mary Kearie##77363", building="Alchemy"
accept Your First Alchemy Work Order##36641
step
#include "auctioneer_stormshield"
buy 5 Frostweed##109124 |q 36641
|tip Buy these from the Auction House if you don't have Herbalism, or don't want to farm them.
_Or_
click Frostweed##228571
|tip They look like small blue glowing plants on the ground around this area.
collect 5 Frostweed##109124 |q 36641 |goto Shadowmoon Valley D/0 30.0,30.0
step
#include "Garrison_Small_Building", action="talk Peter Kearie##77791", building="Alchemy"
Tell him _"I would like to place a work order."_
Click _Start Work Order_
Start the Alchemy Work Order |q 36641/1
step
#include "Garrison_Small_Building", action="click Alchemy Work Order##235892", building="Alchemy"
Collect the Alchemy Work Order |q 36641/2
step
#include "Garrison_Small_Building", action="talk Peter Kearie##77791", building="Alchemy"
turnin Your First Alchemy Work Order##36641
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Alchemy Lab, Level 2##111929 |condition itemcount(111929) > 0 or hasblueprint("Alchemy",2)
step
use Garrison Blueprint: Alchemy Lab, Level 2##111929
Learn the Alchemy Lab, Level 2 Blueprint |condition hasblueprint("Alchemy",2)
step
#include "Garrison_ArchitectTable"
Click your Alchemy Lab
Click _Upgrade_
Upgrade your Alchemy Lab to Level 2 |havebuilding Alchemy,2,building
step
Wait for your Alchemy Lab to be Built |havebuilding Alchemy,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Alchemy"
Finalize the Level 2 Alchemy Lab |havebuilding Alchemy,2,active
step
#include "Garrison_Small_Building", action="talk Peter Kearie##77791", building="Alchemy"
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip If you have the Herbalism profession, farm Frostweed in Shadowmoon Valley, Frostfire Ridge, or Spires of Arak. You can also get some Frostweed from your Herb Garden Garrison building. If you don't want to farm, you can buy Frostweed from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Alchemy Lab, Level 3##111930 |condition itemcount(111930) > 0 or hasblueprint("Alchemy",3)
step
use Garrison Blueprint: Alchemy Lab, Level 3##111930
Learn the Alchemy Lab, Level 3 Blueprint |condition hasblueprint("Alchemy",3)
step
#include "Garrison_ArchitectTable"
Click your Alchemy Lab
Click _Upgrade_
Upgrade your Alchemy Lab to Level 3 |havebuilding Alchemy,3,building
step
Wait for your Alchemy Lab to be Built |havebuilding Alchemy,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Alchemy"
Finalize the Level 3 Alchemy Lab |havebuilding Alchemy,3,active
step
Congratulations, you've finished upgrading your Alchemy Lab!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Enchanter's Study",{
description="\nThis guide will walk you through creating and upgrading the Enchanter's Study Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Enchanter's Study_ to a _Small Plot_
Build your Enchanter's Study |havebuilding Enchanting
step
Wait for your Enchanter's Study to be Built |havebuilding Enchanting,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Enchanting"
Finalize the Level 1 Enchanter's Study |havebuilding Enchanting,1,active
step
#include "Garrison_Small_Building", action="talk Ayada the White##77354", building="Enchanting"
accept Your First Enchanting Work Order##36645
step
#include "auctioneer_stormshield"
buy 5 Draenic Dust##109693 |q 36645
|tip Buy these from the Auction House if you don't have Enchanting, or don't want to farm them.
_Or_
Kill any mobs you want
Disenchant any green items you loot
collect 5 Draenic Dust##109693 |q 36645
|tip You can only do this if you have the Enchanting skill.
step
#include "Garrison_Small_Building", action="talk Garm##77781", building="Enchanting"
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Start the Enchanting Work Order |q 36645/1
step
#include "Garrison_Small_Building", action="click Enchanting Work Order##237138", building="Enchanting"
Collect the Enchanting Work Order |q 36645/2
step
#include "Garrison_Small_Building", action="talk Garm##77781", building="Enchanting"
turnin Your First Enchanting Work Order##36645
step
Reach level 40 |ding 40 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 2##111972 |condition itemcount(111972) > 0 or hasblueprint("Enchanting",2)
step
use Garrison Blueprint: Enchanter's Study, Level 2##111972
Learn the Enchanter's Study, Level 2 Blueprint |condition hasblueprint("Enchanting",2)
step
#include "Garrison_ArchitectTable"
Click on your Enchanter's Study
Click _Upgrade_
Upgrade your Enchanter's Study to Level 2 |havebuilding Enchanting,2,building
step
Wait for your Enchanter's Study to be Built |havebuilding Enchanting,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Enchanting"
Finalize the Level 2 Enchanter's Study |havebuilding Enchanting,2,active
step
#include "Garrison_Small_Building", action="talk Garm##77781", building="Enchanting"
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm any mobs you want and disenchant any green items you find, or buy lots of Draenic Dust from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 3##111973 |condition itemcount(111973) > 0 or hasblueprint("Enchanting",3)
step
use Garrison Blueprint: Enchanter's Study, Level 3##111973
Learn the Enchanter's Study, Level 3 Blueprint |condition hasblueprint("Enchanting",3)
step
#include "Garrison_ArchitectTable"
Click your Enchanter's Study
Click _Upgrade_
Upgrade your Enchanter's Study to Level 3 |havebuilding Enchanting,3,building
step
Wait for your Enchanter's Study to be Built |havebuilding Enchanting,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Enchanting"
Finalize the Level 3 Enchanter's Study |havebuilding Enchanting,3,active
step
Congratulations, you've finished upgrading your Enchanter's Study!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Engineering Works",{
description="\nThis guide will walk you through creating and upgrading the Engineering Works Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Engineering Works_ to a _Small Plot_
Build your Engineering Works |havebuilding Engineering
step
Wait for your Engineering Works to be Built |havebuilding Engineering,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Engineering"
Finalize the Level 1 Engineering Works |havebuilding Engineering,1,active
step
#include "Garrison_Small_Building", action="talk Zaren Hoffle##77365", building="Engineering"
accept Your First Engineering Work Order##36646
step
#include "auctioneer_stormshield"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Mining or your Lunarfall Excavation Garrison building, or don't want to farm them.
_Or_
click Blackrock Deposit##243313
collect 2 Blackrock Ore##109118 |goto Shadowmoon Valley D/0 30.0,30.0 |condition completedq(36641)
click True Iron Deposit##237358
collect 2 True Iron Ore##109119 |goto Shadowmoon Valley D/0 30.0,30.0 |condition completedq(36641)
|tip You can also get these by mining ore nodes in your Lunarfall Excavation Garrison building, if you have one.
step
#include "Garrison_Small_Building", action="talk Helayn Whent##77831", building="Engineering"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Start the Engineering Work Order |q 36646/1
step
#include "Garrison_Small_Building", action="click Engineering Work Order##237146", building="Engineering"
Collect the Engineering Work Order |q 36646/2
step
#include "Garrison_Small_Building", action="talk Helayn Whent##77831", building="Engineering"
turnin Your First Engineering Work Order##36646
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Engineering Works, Level 2##109256 |condition itemcount(109256) > 0 or hasblueprint("Engineering",2)
step
use Garrison Blueprint: Engineering Works, Level 2##109256
Learn the Engineering Works, Level 2 Blueprint |condition hasblueprint("Engineering",2)
step
#include "Garrison_ArchitectTable"
Click your Engineering Works
Click _Upgrade_
Upgrade your Engineering Works to Level 2 |havebuilding Engineering,2,building
step
Wait for your Engineering Works to be Built |havebuilding Engineering,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Engineering"
Finalize the Level 2 Engineering Works |havebuilding Engineering,2,active
step
#include "Garrison_Small_Building", action="talk Helayn Whent##77831", building="Engineering"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm Blackrock Ore and True Iron Ore from your Lunarfall Excavation Garrison building or by farming ore deposits in any Draenor zone, or buy Blackrock Ore and True Iron Ore from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Engineering Works, Level 3##109257 |condition itemcount(109257) > 0 or hasblueprint("Engineering",3)
step
use Garrison Blueprint: Engineering Works, Level 3##109257
Learn the Engineering Works, Level 3 Blueprint |condition hasblueprint("Engineering",3)
step
#include "Garrison_ArchitectTable"
Click your Engineering Works
Click _Upgrade_
Upgrade your Engineering Works to Level 3 |havebuilding Engineering,3,building
step
Wait for your Engineering Works to be Built |havebuilding Engineering,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Engineering"
Finalize the Level 3 Engineering Works |havebuilding Engineering,3,active
step
Congratulations, you've finished upgrading your Engineering Works!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\The Forge",{
description="\nThis guide will walk you through creating and upgrading The Forge Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _The Forge_ to a _Small Plot_
Build your Forge |havebuilding Blacksmith
step
Wait for your Forge to be Built |havebuilding Blacksmith,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Blacksmith"
Finalize the Level 1 Forge |havebuilding Blacksmith,1,active
step
#include "Garrison_Small_Building", action="talk Auria Irondreamer##77359", building="Blacksmith"
accept Your First Blacksmithing Work Order##35168
step
#include "auctioneer_stormshield"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Mining or your Lunarfall Excavation Garrison building, or don't want to farm them.
_Or_
click True Iron Deposit##237358
collect 5 True Iron Ore##109119 |goto Shadowmoon Valley D/0 30.0,30.0 |condition completedq(35168)
|tip You can also get these by mining ore nodes in your Lunarfall Excavation Garrison building, if you have one.
step
#include "Garrison_Small_Building", action="talk Yulia Samras##77792", building="Blacksmith"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Start the Blacksmithing Work Order |q 35168/1
step
#include "Garrison_Small_Building", action="click Blacksmithing Work Order##236641", building="Blacksmith"
Collect the Blacksmithing Work Order |q 35168/2
step
#include "Garrison_Small_Building", action="talk Yulia Samras##77792", building="Blacksmith"
turnin Your First Blacksmithing Work Order##35168
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Forge, Level 2##111990 |condition itemcount(111990) > 0 or hasblueprint("Blacksmith",2)
step
use Garrison Blueprint: The Forge, Level 2##111990
Learn the Forge, Level 2 Blueprint |condition hasblueprint("Blacksmith",2)
step
#include "Garrison_ArchitectTable"
Click your Forge
Click _Upgrade_
Upgrade your Forge to Level 2 |havebuilding Blacksmith,2,building
step
Wait for your Forge to be Built |havebuilding Blacksmith,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Blacksmith"
Finalize the Level 2 Forge |havebuilding Blacksmith,2,active
step
#include "Garrison_Small_Building", action="talk Yulia Samras##77792", building="Blacksmith"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm True Iron Ore from your Lunarfall Excavation Garrison building or by farming ore deposits in any Draenor zone, or buy True Iron Ore from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Forge, Level 3##111991 |condition itemcount(111991) > 0 or hasblueprint("Blacksmith",3)
step
use Garrison Blueprint: The Forge, Level 3##111991
Learn the Forge, Level 3 Blueprint |condition hasblueprint("Blacksmith",3)
step
#include "Garrison_ArchitectTable"
Click your Forge
Click _Upgrade_
Upgrade your Forge to Level 3 |havebuilding Blacksmith,3,building
step
Wait for your Forge to be Built |havebuilding Blacksmith,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Blacksmith"
Finalize the Level 3 Forge |havebuilding Blacksmith,3,active
step
Congratulations, you've finished upgrading your Forge!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Gem Boutique",{
description="\nThis guide will walk you through creating and upgrading the Gem Boutique Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Gem Boutique_ to a _Small Plot_
Build your Gem Boutique |havebuilding Jewelcrafting
step
Wait for your Gem Boutique to be Built |havebuilding Jewelcrafting,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Jewelcrafting"
Finalize the Level 1 Gem Boutique |havebuilding Jewelcrafting,1,active
step
#include "Garrison_Small_Building", action="talk Costan Highwall##77356", building="Jewelcrafting"
accept Your First Jewelcrafting Work Order##36644
step
#include "auctioneer_stormshield"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Mining or your Lunarfall Excavation Garrison building, or don't want to farm them.
_Or_
click Blackrock Deposit##243313
collect 5 Blackrock Ore##109118 |goto Shadowmoon Valley D/0 30.0,30.0 |condition completedq(36644)
|tip You can also get these by mining ore nodes in your Lunarfall Excavation Garrison building, if you have one.
step
#include "Garrison_Small_Building", action="talk Kaya Solasen##77775", building="Jewelcrafting"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Start the Jewelcrafting Work Order |q 36644/1
step
#include "Garrison_Small_Building", action="click Jewelcrafting Work Order##236652", building="Jewelcrafting"
Collect the Jewelcrafting Work Order |q 36644/2
step
#include "Garrison_Small_Building", action="talk Kaya Solasen##77775", building="Jewelcrafting"
turnin Your First Jewelcrafting Work Order##36644
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gem Boutique, Level 2##111974 |condition itemcount(111974) > 0 or hasblueprint("Jewelcrafting",2)
step
use Garrison Blueprint: Gem Boutique, Level 2##111974
Learn the Gem Boutique, Level 2 Blueprint |condition hasblueprint("Jewelcrafting",2)
step
#include "Garrison_ArchitectTable"
Click your Gem Boutique
Click _Upgrade_
Upgrade your Gem Boutique to Level 2 |havebuilding Jewelcrafting,2,building
step
Wait for your Gem Boutique to be Built |havebuilding Jewelcrafting,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Jewelcrafting"
Finalize the Level 1 Gem Boutique |havebuilding Jewelcrafting,2,active
step
#include "Garrison_Small_Building", action="talk Kaya Solasen##77775", building="Jewelcrafting"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm Blackrock Ore from your Lunarfall Excavation Garrison building or by farming ore deposits in any Draenor zone, or buy Blackrock Ore from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gem Boutique, Level 3##111975 |condition itemcount(111975) > 0 or hasblueprint("Jewelcrafting",3)
step
use Garrison Blueprint: Gem Boutique, Level 3##111975
Learn the Gem Boutique, Level 3 Blueprint |condition hasblueprint("Jewelcrafting",3)
step
#include "Garrison_ArchitectTable"
Click your Forge
Click _Upgrade_
Upgrade your Gem Boutique to Level 3 |havebuilding Jewelcrafting,3,building
step
Wait for your Gem Boutique to be Built |havebuilding Jewelcrafting,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Jewelcrafting"
Finalize the Level 3 Gem Boutique |havebuilding Jewelcrafting,3,active
step
Congratulations, you've finished upgrading your Gem Boutique!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Salvage Yard",{
description="\nThis guide will walk you through creating and upgrading the Salvage Yard Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Complete the Pinchwhistle Gearworks questline |condition completedq(35298)
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 1##111957 |condition itemcount(111957) > 0 or hasblueprint("SalvageYard",1)
step
use Garrison Blueprint: Salvage Yard, Level 1##111957
Learn the Salvage Yard, Level 1 Blueprint |condition hasblueprint("SalvageYard",1)
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Salvage Yard_ to a _Small Plot_
Build your Salvage Yard |havebuilding SalvageYard,1,building
step
Wait for your Salvage Yard to be Built |havebuilding SalvageYard,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="SalvageYard"
Finalize the Level 1 Salvage Yard |havebuilding SalvageYard,1,active
step
#include "Garrison_Small_Building", action="talk Hennick Helmsley##77378", building="SalvageYard"
accept Salvaging the Situation##37086
step
use Small Sack of Salvaged Goods##118473
Open the Sack of Salvaged Goods |q 37086/1
step
#include "Garrison_Small_Building", action="talk Hennick Helmsley##77378", building="SalvageYard"
turnin Salvaging the Situation##37086
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 2##111976 |condition itemcount(111976) > 0 or hasblueprint("SalvageYard",2)
step
use Garrison Blueprint: Salvage Yard, Level 2##111976
Learn the Salvage Yard, Level 2 Blueprint |condition hasblueprint("SalvageYard",2)
step
#include "Garrison_ArchitectTable"
Click your Salvage Yard
Click _Upgrade_
Upgrade your Salvage Yard to Level 2 |havebuilding SalvageYard,2,building
step
Wait for your Salvage Yard to be Built |havebuilding SalvageYard,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="SalvageYard"
Finalize the Level 2 Salvage Yard |havebuilding SalvageYard,2,active
step
#include "Garrison_Small_Building", action="In your Salvage Yard:", building="SalvageYard"
use Bag of Salvaged Goods##114116
|tip You get these when your followers successfully complete level 90-94 Garrison missions.
use Crate of Salvage##114119
|tip You get these when your followers successfully complete level 95-100 Garrison missions. Successful level 100 Garrison missions are guaranteed to give these.
Open 100 Pieces of Salvage |achieve 9468
|tip You must be standing next to the Incinerator in your Salvage Yard.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 3##111977 |condition itemcount(111977) > 0 or hasblueprint("SalvageYard",3)
step
use Garrison Blueprint: Salvage Yard, Level 3##111977
Learn the Salvage Yard, Level 3 Blueprint |condition hasblueprint("SalvageYard",3)
step
#include "Garrison_ArchitectTable"
Click your Salvage Yard
Click _Upgrade_
Upgrade your Salvage Yard to Level 3 |havebuilding SalvageYard,3,building
step
Wait for your Salvage Yard to be Built |havebuilding SalvageYard,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="SalvageYard"
Finalize the Level 3 Salvage Yard |havebuilding SalvageYard,3,active
step
Congratulations, you've finished upgrading your Salvage Yard!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Scribe's Quarters",{
description="\nThis guide will walk you through creating and upgrading the Scribe's Quarters Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Scribe's Quarters_ to a _Small Plot_
Build your Scribe's Quarters |havebuilding Inscription
step
Wait for your Scribe's Quarters to be Built |havebuilding Inscription,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Inscription"
Finalize the Level 1 Scribe's Quarters |havebuilding Inscription,1,active
step
#include "Garrison_Small_Building", action="talk Eric Broadoak##77372", building="Inscription"
accept Your First Inscription Work Order##36647
step
#include "auctioneer_stormshield"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Herbalism or your Herb Garden Garrison building, or don't want to farm them.
_Or_
Gather herbs in any Draenor zone
Mill the herbs
collect 2 Cerulean Pigment##114931 |complete completedq(36647)
|tip You can also get these by gathering herbs and milling them at your Herb Garden Garrison building, if you have one.
step
#include "Garrison_Small_Building",action="talk Kurt Broadoak##77777", building="Inscription"
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Start the Inscription Work Order |q 36647/1
step
#include "Garrison_Small_Building",action="click Inscription Work Order##236649", building="Inscription"
Collect the Inscription Work Order |q 36647/2
step
#include "Garrison_Small_Building",action="talk Kurt Broadoak##77777", building="Inscription"
turnin Your First Inscription Work Order##36647
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Scribe's Quarters, Level 2##111978 |condition itemcount(111978) > 0 or hasblueprint("Inscription",2)
step
use Garrison Blueprint: Scribe's Quarters, Level 2##111978
Learn the Scribe's Quarters, Level 2 Blueprint |condition hasblueprint("Inscription",2)
step
#include "Garrison_ArchitectTable"
Click your Scribe's Quarters
Click _Upgrade_
Upgrade your Scribe's Quarters to Level 2 |havebuilding Inscription,2,building
step
Wait for your Scribe's Quarters to be Built |havebuilding Inscription,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Inscription"
Finalize the Level 2 Scribe's Quarters |havebuilding Inscription,2,active
step
#include "Garrison_Small_Building",action="talk Kurt Broadoak##77777", building="Inscription"
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm herbs from your Herb Garden Garrison building or by gathering herbs in any Draenor zone, or buy them from the Auction House. Once you have the herbs, mill them to get Cerulean Pigments. The herbs you can gather or buy are Fireweed, Frostweed, Gorgrond Flytraps, Nagrand Arrowblooms, Starflowers, and Talador Orchids. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Scribe's Quarters, Level 3##111979 |condition itemcount(111979) > 0 or hasblueprint("Inscription",3)
step
use Garrison Blueprint: Scribe's Quarters, Level 3##111979
Learn the Scribe's Quarters, Level 3 Blueprint |condition hasblueprint("Inscription",3)
step
#include "Garrison_ArchitectTable"
Click your Scribe's Quarters
Click _Upgrade_
Upgrade your Scribe's Quarters to Level 3 |havebuilding Inscription,3,building
step
Wait for your Scribe's Quarters to be Built |havebuilding Inscription,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Inscription"
Finalize the Level 3 Scribe's Quarters |havebuilding Inscription,3,active
step
Congratulations, you've finished upgrading your Scribe's Quarters!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Storehouse",{
description="\nThis guide will walk you through creating and upgrading the Storehouse Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Storehouse_ to a _Small Plot_
Build your Storehouse |havebuilding Storehouse
step
Wait for your Storehouse to be Built |havebuilding Storehouse,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Storehouse"
Finalize the Level 1 Storehouse |havebuilding Storehouse,1,active
step
#include "Garrison_Small_Building", action="talk Kyra Goldhands##84857", building="Storehouse"
accept Lost in Transition##37087
step
click Crate of Surplus Material##237257
|tip They look like small wooden crates on the ground all around your garrison.
collect 5 Crate of Surplus Materials##118417 |q 37087/1 |goto Lunarfall/0 47.55,66.17
step
#include "Garrison_Small_Building", action="talk Kyra Goldhands##84857", building="Storehouse"
turnin Lost in Transition##37087
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Storehouse, Level 2##111982 |condition itemcount(111982) > 0 or hasblueprint("Storehouse",2)
step
use Garrison Blueprint: Storehouse, Level 2##111982
Learn the Storehoue, Level 2 Blueprint |condition hasblueprint("Storehouse",2)
step
#include "Garrison_ArchitectTable"
Click your Storehouse
Click _Upgrade_
Upgrade your Storehouse to Level 2 |havebuilding Storehouse,2,building
step
Wait for your Storehouse to be Built |havebuilding Storehouse,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Storehouse"
Finalize the Level 2 Storehouse |havebuilding Storehouse,2,active
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
Loot _2,500 Gold_ in Draenor |achieve 9487
|tip A fast way to achieve this is to build a Trading Post with one (or all) of your characters and purchase Smuggled Sacks of Gold from the trader using garrison resources. Additionally, just run dungeons reepeatedly, and grind any humanoid mobs you'd like when waiting for a dungeon queue.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Storehouse, Level 3##111983 |condition itemcount(111983) > 0 or hasblueprint("Storehouse",3)
step
use Garrison Blueprint: Storehouse, Level 3##111983
Learn the Storehoue, Level 3 Blueprint |condition hasblueprint("Storehouse",3)
step
#include "Garrison_ArchitectTable"
Click your Storehouse
Click _Upgrade_
Upgrade your Storehouse to Level 3 |havebuilding Storehouse,3,building
step
Wait for your Storehouse to be Built |havebuilding Storehouse,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Storehouse"
Finalize the Level 3 Storehouse |havebuilding Storehouse,3,active
step
Congratulations, you've finished upgrading your Storehouse!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Tailoring Emporium",{
description="\nThis guide will walk you through creating and upgrading the Tailoring Emporium Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _Tailoring Emporium_ to a _Small Plot_
Build your Tailoring Emporium |havebuilding Tailoring
step
Wait for your Tailoring Emporium to be Built |havebuilding Tailoring,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Tailoring"
Finalize the Level 1 Tailoring Emporium |havebuilding Tailoring,1,active
step
#include "Garrison_Small_Building", action="talk Christopher Macdonald##77382", building="Tailoring"
accept Your First Tailoring Work Order##36643
step
#include "auctioneer_stormshield"
Buy from the Auction House
|tip Buy these from the Auction House if you don't want to farm them.
_Or_
kill Rockhide Calf##87699+, Rockhide Grazer##87700+, Rockhide Bull##87698+
collect 5 Sumptuous Fur##111557 |goto Shadowmoon Valley D/0 59.0,34.0 |condition completedq(36643)
step
#include "Garrison_Small_Building", action="talk Kaylie Macdonald##77778", building="Tailoring"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Start the Tailoring Work Order |q 36643/1
step
#include "Garrison_Small_Building", action="click Tailoring Work Order##237665", building="Tailoring"
Collect the Tailoring Work Order |q 36643/2
step
#include "Garrison_Small_Building", action="talk Kaylie Macdonald##77778", building="Tailoring"
turnin Your First Tailoring Work Order##36643
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Tailoring Emporium, Level 2##111992 |condition itemcount(111992) > 0 or hasblueprint("Tailoring",2)
step
use Garrison Blueprint: Tailoring Emporium, Level 2##111992
Learn the Tailoring Emporium, Level 2 Blueprint |condition hasblueprint("Tailoring",2)
step
#include "Garrison_ArchitectTable"
Click your Tailoring Emporium
Click _Upgrade_ |condition hasbuilding(127,2)
Upgrade your Tailoring Emporium to Level 2 |havebuilding Tailoring,2,building
step
Wait for your Tailoring Emporium to be Built |havebuilding Tailoring,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Tailoring"
Finalize the Level 2 Tailoring Emporium |havebuilding Tailoring,2,active
step
#include "Garrison_Small_Building", action="talk Kaylie Macdonald##77778", building="Tailoring"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm beasts for Sumptuous Fur in any Draenor zone, or buy them from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Tailoring Emporium, Level 3##111993 |condition itemcount(111993) > 0 or hasblueprint("Tailoring",3)
step
use Garrison Blueprint: Tailoring Emporium, Level 3##111993
Learn the Tailoring Emporium, Level 3 Blueprint |condition hasblueprint("Tailoring",3)
step
#include "Garrison_ArchitectTable"
Click your Tailoring Emporium
Click _Upgrade_
Upgrade your Tailoring Emporium to Level 3 |havebuilding Tailoring,3,building
step
Wait for your Tailoring Emporium to be Built |havebuilding Tailoring,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Tailoring"
Finalize the Level 3 Tailoring Emporium |havebuilding Tailoring,3,active
step
Congratulations, you've finished upgrading your Tailoring Emporium!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\The Tannery",{
description="\nThis guide will walk you through creating and upgrading The Tannery Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Small_ tab at the top
Drag _The Tannery_ to a _Small Plot_
Build your Tannery |havebuilding Leatherworking
step
Wait for your Tannery to be Built |havebuilding Leatherworking,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Leatherworking"
Finalize the Level 1 Tannery |havebuilding Leatherworking,1,active
step
#include "Garrison_Small_Building", action="talk Anders Longstitch##77383", building="Leatherworking"
accept Your First Leatherworking Work Order##36642
step
#include "auctioneer_stormshield"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Skinning, or don't want to farm them.
_Or_
kill Rockhide Calf##87699+, Rockhide Grazer##87700+, Rockhide Bull##87698+
|tip Skin your kills.
collect 5 Raw Beast Hide##110609 |goto Shadowmoon Valley D/0 35.8,29.1 |condition completedq(36642)
step
#include "Garrison_Small_Building", action="talk Marianne Levine##78207", building="Leatherworking"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Start the Leatherworking Work Order |q 36642/1
step
#include "Garrison_Small_Building", action="click Leatherworking Work Order##236948", building="Leatherworking"
Collect the Leatherworking Work Order |q 36642/2
step
#include "Garrison_Small_Building", action="talk Marianne Levine##78207", building="Leatherworking"
turnin Your First Leatherworking Work Order##36642
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Tannery, Level 2##111988 |condition itemcount(111988) > 0 or hasblueprint("Leatherworking",2)
step
use Garrison Blueprint: The Tannery, Level 2##111988
Learn the Tannery, Level 2 Blueprint |condition hasblueprint("Leatherworking",2)
step
#include "Garrison_ArchitectTable"
Click your Tannery
Click _Upgrade_
Upgrade your Tannery to Level 2 |havebuilding Leatherworking,2,building
step
Wait for your Tannery to be Built |havebuilding Leatherworking,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Leatherworking"
Finalize the Level 2 Tannery |havebuilding Leatherworking,2,active
step
#include "Garrison_Small_Building", action="talk Marianne Levine##78207", building="Leatherworking"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm beasts and skin them for Raw Beast Hides in any Draenor zone, or buy them from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Tannery, Level 3##111989 |condition itemcount(111989) > 0 or hasblueprint("Leatherworking",3)
step
use Garrison Blueprint: The Tannery, Level 3##111989
Learn the Tannery, Level 3 Blueprint |condition hasblueprint("Leatherworking",3)
step
#include "Garrison_ArchitectTable"
Click your Tannery
Click _Upgrade_
Upgrade your Tannery to Level 3 |havebuilding Leatherworking,3,building
step
Wait for your Tannery to be Built |havebuilding Leatherworking,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Leatherworking"
Finalize the Level 3 Tannery |havebuilding Leatherworking,3,active
step
Congratulations, you've finished upgrading your Tannery!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Barn",{
description="\nThis guide will walk you through creating and upgrading the Barn Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have Medium building plots until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Medium_ tab at the top
Drag _Barn_ to a _Medium Plot_
Build your Barn |havebuilding Barn
step
Wait for your Barn to be Built |havebuilding Barn,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Barn"
Finalize the Level 1 Barn |havebuilding Barn,1,active
step
#include "Garrison_Medium_Building", action="talk Homer Stonefield##84524", building="Barn"
accept Breaking into the Trap Game##36271
step
use Iron Trap##113991
kill Shadowmoon Stalker##82308
|tip Fight it until it's almost dead, but don't kill it.
Lure the _Shadowmoon Stalker_ into your trap
Trap a Beast |q 36271/1 |goto Shadowmoon Valley D/0 54.1,34.1
step
#include "Garrison_Medium_Building", action="talk Homer Stonefield##84524", building="Barn"
Tell him _"I would like to place a work order for fur."_
Click _Start Work Order_
Place a Work Order |q 36271/2
step
#include "Garrison_Medium_Building", action="talk Homer Stonefield##84524", building="Barn"
turnin Breaking into the Trap Game##36271
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barn, Level 2##111968 |condition itemcount(111968) > 0 or hasblueprint("Barn",2)
step
use Garrison Blueprint: Barn, Level 2##111968
Learn the Barn, Level 2 Blueprint |condition hasblueprint("Barn",2)
step
#include "Garrison_ArchitectTable"
Click your Barn
Click _Upgrade_
Upgrade your Barn to Level 2 |havebuilding Barn,2,building
step
Wait for your Barn to be Built |havebuilding Barn,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Barn"
Finalize the Level 2 Barn |havebuilding Barn,2,active
step
#include "Garrison_Medium_Building", action="click Iron Trap##234186", building="Barn"
collect 150 Iron Trap##113991 |condition hasblueprint("Barn",3)
step
use Iron Trap##113991
kill Shadowmoon Stalker##82308
|tip Fight it until it's almost dead, but don't kill it.
Lure the _Shadowmoon Stalker_ into your trap
collect 125 Furry Caged Beast##119813 |goto Shadowmoon Valley D/0 54.1,34.1 |condition hasblueprint("Barn",3)
step
#include "Garrison_Medium_Building", action="talk Homer Stonefield##84524", building="Barn"
Tell him _"I would like to place a work order for fur."_
Click _Start Work Order_
Complete 125 Barn Work Orders |achieve 9565
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barn, Level 3##111969 |condition itemcount(111969) > 0 or hasblueprint("Barn",3)
step
use Garrison Blueprint: Barn, Level 3##111969
Learn the Barn, Level 3 Blueprint |condition hasblueprint("Barn",3)
step
#include "Garrison_ArchitectTable"
Click your Barn
Click _Upgrade_
Upgrade your Barn to Level 3 |havebuilding Barn,3,building
step
Wait for your Barn to be Built |havebuilding Barn,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Barn"
Finalize the Level 3 Barn |havebuilding Barn,3,active
step
Congratulations, you've finished upgrading your Barn!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Lunarfall Inn",{
description="\nThis guide will walk you through creating and upgrading the Lunarfall Inn Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have Medium building plots until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Medium_ tab at the top
Drag _Lunarfall Inn_ to a _Medium Plot_
Build your Lunarfall Inn |havebuilding Inn
step
Wait for your Lunarfall Inn to be Built |havebuilding Inn,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Inn"
Finalize the Level 1 Lunarfall Inn |havebuilding Inn,1,active
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Inn, Level 2##107694 |condition itemcount(107694) > 0 or hasblueprint("Inn",2)
step
use Garrison Blueprint: Lunarfall Inn, Level 2##107694
Learn the Lunarfall Inn, Level 2 Blueprint |condition hasblueprint("Inn",2)
step
#include "Garrison_ArchitectTable"
Click your Lunarfall Inn
Click _Upgrade_
Upgrade your Lunarfall Inn to Level 2 |havebuilding Inn,2,building
step
Wait for your Lunarfall Inn to be Built |havebuilding Inn,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Inn"
Finalize the Level 2 Lunarfall Inn |havebuilding Inn,2,active
step
#include "Garrison_Medium_Building", action="talk Lysa Serion##84947", building="Inn"
accept The Headhunter's Harvest##37119
step
#include "Garrison_Medium_Building", action="talk Lysa Serion##84947", building="Inn"
Tell her _"I'm looking to recruit someone."_
Choose any _Ability_ or _Trait_ you want
|tip This is the ability or trait you want your recruited follower to have. Pick any one you want. The follower you recruit will be level 90, and you will have to level them up with garrison missions.
Choose your Follower
|tip You can choose 1 of the 3 followers the headhunter finds for you.
Recruit a Follower from the Headhunter |q 37119/1
step
#include "Garrison_Medium_Building", action="talk Lysa Serion##84947", building="Inn"
turnin The Headhunter's Harvest##37119
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
#include "Garrison_LtThorn"
Tell her _"Enter the Proving Grounds"_
Enter the Proving Grounds |goto Proving Grounds/1 51.5,82.4 < 50 |noway |c |condition achieved(9573) or achieved(9579) or achieved(9585)
|tip Wait in the queue to enter.
step
click Soulwell
|tip It looks like a small green-glowing bowl on a pedastal.  It will give you a healthstone you can use during the fights.
collect 1 Healthstone##5512 |goto Proving Grounds/1 53.8,84.2 |c |condition achieved(9573) or achieved(9579) or achieved(9585)
step
talk Trial Master Rotun##61636
Start Basic _(Silver)_ Trial
|tip Choose Damage, Tank, or Healer, depending on your character's specialization. You will have to defeat 5 waves of enemies.
Speak to Rotun |scenariogoal 23900 |goto Proving Grounds 50.28,82.32 |condition achieved(9573) or achieved(9579) or achieved(9585)
step
Defeat the 8 waves of enemies that attack
|tip Each wave will get progressively more difficult to kill.
Complete a Silver Trial |condition achieved(9573) or achieved(9579) or achieved(9585)
|tip Leave the Proving Grounds afterward by clicking the green eye icon on your minimap and choosing "Leave Instance Group".
step
#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
|tip He's upstairs in the Lunarfall Inn.
accept For The Children!##37179
step
label "Start_Inn_Quests"
#include "Garrison_Medium_Building", action="Accept any quests in your Lunarfall Inn", building="Inn"
|tip You will be able to accept 2 different dungeon quests each day.  The quests that will be available are random. Daily quests won't count toward the goal of completing 10 Lunarfall Inn quests, only regular dungeon quests.
Click after accepting all quests |confirm |condition achieved(9703)
step
#include "Garrison_Inn_Quests"
step
Complete 10 Lunarfall Inn Quests |achieve 9703 |or
_
If you need more quests:
Click to Accept More _Lunarfall Inn Quests_ |confirm |next "Start_Inn_Quests" |or
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Inn, Level 3##109065 |condition itemcount(109065) > 0 or hasblueprint("Inn",3)
step
use Garrison Blueprint: Lunarfall Inn, Level 3##109065
Learn the Lunarfall Inn, Level 3 Blueprint |condition hasblueprint("Inn",3)
step
#include "Garrison_ArchitectTable"
Click your Lunarfall Inn
Click _Upgrade_
Upgrade your Lunarfall Inn to Level 3 |havebuilding Inn,3,building
step
Wait for your Lunarfall Inn to be Built |havebuilding Inn,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Inn"
Finalize the Level 3 Lunarfall Inn |havebuilding Inn,3,active
step
Congratulations, you've finished upgrading your Lunarfall Inn!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Gladiator's Sanctum",{
description="\nThis guide will walk you through creating and upgrading the Gladiator's Sanctum Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have Medium building plots until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Medium_ tab at the top
Drag _Gladiator's Sanctum_ to a _Medium Plot_
Build your Gladiator's Sanctum |havebuilding SparringArena,1,building
step
Wait for your Gladiator's Sanctum to be Built |havebuilding SparringArena,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="SparringArena"
Finalize the Level 1 Gladiator's Sanctum |havebuilding SparringArena,1,active
step
#include "Garrison_Medium_Building", action="talk Kuros##86677", building="SparringArena"
accept Warlord of Draenor##36876
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
|tip This is necessary since you have to be level 100 to enter Ashran, which you need to do to easily complete the quest you just picked up.
step
Follow the path |goto Stormshield/0 55.8,24.0 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 41.9,80.2 < 20 |walk
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 45.4,76.4 < 30
kill Enemy Players in Ashran
collect 20 Broken Bones##118043 |q 36876 |goto Ashran/0 46.7,70.8
|tip A much faster way to get the bones, if you can, would be to have a friend with an enemy faction character, at least level 92, let you kill them repeatedly in world pvp. You can only get Broken Bones from world pvp, or in Ashran.
step
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36876
step
#include "Garrison_Medium_Building", action="clicknpc Altar of Bones##86639", building="SparringArena"
|tip It looks like a pile of while skulls and bones in your Gladiator's Sanctum building.
Click _Start Work Order_
Earn a Conqueror's Tribute |q 36876/2
step
#include "Garrison_Medium_Building", action="talk Kuros##86677", building="SparringArena"
turnin Warlord of Draenor##36876
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gladiator's Sanctum, Level 2##111980 |condition itemcount(111980) > 0 or hasblueprint("SparringArena",2)
step
use Garrison Blueprint: Gladiator's Sanctum, Level 2##111980
Learn the use Gladiator's Sanctum, Level 2 Blueprint |condition hasblueprint("SparringArena",2)
step
#include "Garrison_ArchitectTable"
Click your Gladiator's Sanctum
Click _Upgrade_
Upgrade your Gladiator's Sanctum to Level 2 |havebuilding SparringArena,2,building
step
Wait for your Gladiator's Sanctum to be Built |havebuilding SparringArena,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="SparringArena"
Finalize the Level 2 Gladiator's Sanctum |havebuilding SparringArena,2,active
step
#include "Garrison_Medium_Building", action="talk Kuros##86677", building="SparringArena"
accept Nemesis: Hunter - Hunted##36955
step
#include "Garrison_Medium_Building", action="click Nemesis", building="SparringArena"
|tip They are statues circling your Gladiator's Sanctum. You will have to kill players of the race you select. We recommend you pick Blood Elf, since they are statistically the most common race of Horde players, but you can choose whichever you like.
Select your Nemesis |q 36955/1
step
#include "Garrison_Medium_Building", action="talk Kuros##86677", building="SparringArena"
turnin Nemesis: Hunter - Hunted##36955
accept Nemesis: Becoming Death##36963 |or
accept Nemesis: Becoming Death##36967 |or
accept Nemesis: Becoming Death##36957 |or
accept Nemesis: Becoming Death##36969 |or
accept Nemesis: Becoming Death##36965 |or
accept Nemesis: Becoming Death##36961 |or
accept Nemesis: Becoming Death##36959 |or
|tip The quest you can accept depends on which Nemesis you selected in the previous step.
step
Follow the path |goto Stormshield/0 55.8,24.0 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 41.9,80.2 < 20 |walk
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 45.4,76.4 < 30
kill Enemy Players in Ashran
collect Orc Heart##118362 |q 36963/1 |goto Ashran/0 46.7,70.8 |only if haveq(36963) or completedq(36963)
collect Pandaren Heart##118358 |q 36967/1 |goto Ashran/0 46.7,70.8 |only if haveq(36967) or completedq(36967)
collect Blood Elf Heart##118356 |q 36957/1 |goto Ashran/0 46.7,70.8 |only if haveq(36957) or completedq(36957)
collect Goblin Heart##118357 |q 36969/1 |goto Ashran/0 46.7,70.8 |only if haveq(36969) or completedq(36969)
collect Troll Heart##118360 |q 36965/1 |goto Ashran/0 46.7,70.8 |only if haveq(36965) or completedq(36965)
collect Tauren Heart##118361 |q 36961/1 |goto Ashran/0 46.7,70.8 |only if haveq(36961) or completedq(36961)
collect Forsaken Heart##118359 |q 36959/1 |goto Ashran/0 46.7,70.8 |only if haveq(36959) or completedq(36959)
|tip A much faster way to get the heart, if you can, would be to have a friend with an enemy faction character of the race you need to kill, at least level 92, let you kill them in world pvp. You can only get the heart from world pvp, or in Ashran.
step
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36963 |only if haveq(36963) or completedq(36963)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36967 |only if haveq(36967) or completedq(36967)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36957 |only if haveq(36957) or completedq(36957)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36969 |only if haveq(36969) or completedq(36969)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36965 |only if haveq(36965) or completedq(36965)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36961 |only if haveq(36961) or completedq(36961)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36959 |only if haveq(36959) or completedq(36959)
step
#include "Garrison_Medium_Building", action="talk Kuros##86677", building="SparringArena"
turnin Nemesis: Becoming Death##36963 |only if haveq(36963) or completedq(36963)
turnin Nemesis: Becoming Death##36967 |only if haveq(36967) or completedq(36967)
turnin Nemesis: Becoming Death##36957 |only if haveq(36957) or completedq(36957)
turnin Nemesis: Becoming Death##36969 |only if haveq(36969) or completedq(36969)
turnin Nemesis: Becoming Death##36965 |only if haveq(36965) or completedq(36965)
turnin Nemesis: Becoming Death##36961 |only if haveq(36961) or completedq(36961)
turnin Nemesis: Becoming Death##36959 |only if haveq(36959) or completedq(36959)
accept Nemesis: Orcslayer##36964 |only if haveq(36963) or completedq(36963)
accept Nemesis: Huojin's Fall##36968 |only if haveq(36967) or completedq(36967)
accept Nemesis: Death Stalker##36960 |only if haveq(36959) or completedq(36959)
accept Nemesis: Slayer of Sin'dorei##36958 |only if haveq(36957) or completedq(36957)
accept Nemesis: The Butcher##36962 |only if haveq(36961) or completedq(36961)
accept Nemesis: Troll Hunter##36966 |only if haveq(36965) or completedq(36965)
accept Nemesis: Killer of Kezan##36970 |only if haveq(36969) or completedq(36969)
step
Follow the path |goto Stormshield/0 55.8,24.0 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 41.9,80.2 < 20 |walk
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 45.4,76.4 < 30
kill Enemy Players in Ashran
kill 500 Orc Players |q 36964/1 |goto Ashran/0 46.7,70.8 |only if haveq(36963) or completedq(36963)
kill 500 Pandaren Players |q 36968/1 |goto Ashran/0 46.7,70.8 |only if haveq(36967) or completedq(36967)
kill 500 Blood Elf Players |q 36958/1 |goto Ashran/0 46.7,70.8 |only if haveq(36957) or completedq(36957)
kill 500 Goblin Players |q 36970/1 |goto Ashran/0 46.7,70.8 |only if haveq(36969) or completedq(36969)
kill 500 Troll Players |q 36966/1 |goto Ashran/0 46.7,70.8 |only if haveq(36965) or completedq(36965)
kill 500 Tauren Players |q 36962/1 |goto Ashran/0 46.7,70.8 |only if haveq(36961) or completedq(36961)
kill 500 Forsaken Players |q 36960/1 |goto Ashran/0 46.7,70.8 |only if haveq(36959) or completedq(36959)
|tip A much faster way to get the kills, if you can, would be to have a friend with an enemy faction character of the race you need to kill, at least level 92, let you kill them in world pvp. You can only get the kills from world pvp, or in Ashran.
step
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36963 |only if haveq(36963) or completedq(36963)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36967 |only if haveq(36967) or completedq(36967)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36957 |only if haveq(36957) or completedq(36957)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36969 |only if haveq(36969) or completedq(36969)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36965 |only if haveq(36965) or completedq(36965)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36961 |only if haveq(36961) or completedq(36961)
Return to your Garrison |goto Lunarfall/0 30.0,34.1 < 300 |q 36959 |only if haveq(36959) or completedq(36959)
step
#include "Garrison_Medium_Building", action="talk Kuros##86677", building="SparringArena"
turnin Nemesis: Orcslayer##36964 |only if haveq(36963) or completedq(36963)
turnin Nemesis: Huojin's Fall##36968 |only if haveq(36967) or completedq(36967)
turnin Nemesis: Death Stalker##36960 |only if haveq(36959) or completedq(36959)
turnin Nemesis: Slayer of Sin'dorei##36958 |only if haveq(36957) or completedq(36957)
turnin Nemesis: The Butcher##36962 |only if haveq(36961) or completedq(36961)
turnin Nemesis: Troll Hunter##36966 |only if haveq(36965) or completedq(36965)
turnin Nemesis: Killer of Kezan##36970 |only if haveq(36969) or completedq(36969)
step
Follow the path |goto Stormshield/0 55.8,24.0 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 41.9,80.2 < 20 |walk
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 45.4,76.4 < 30
kill Enemy Players in Ashran
Collect #4000# Broken Bones##118043 |achieve 9495 |goto Ashran/0 46.7,70.8
|tip A much faster way to get the bones, if you can, would be to have a friend with an enemy faction character, at least level 92, let you kill them repeatedly in world pvp. You can only get Broken Bones from world pvp, or in Ashran.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gladiator's Sanctum, Level 3##111981 |condition itemcount(111981) > 0 or hasblueprint("SparringArena",3)
step
use Garrison Blueprint: Gladiator's Sanctum, Level 3##111981
Learn the use Gladiator's Sanctum, Level 2 Blueprint |condition hasblueprint("SparringArena",3)
step
#include "Garrison_ArchitectTable"
Click your Gladiator's Sanctum
Click _Upgrade_
Upgrade your Gladiator's Sanctum to Level 3 |havebuilding SparringArena,3,building
step
Wait for your Gladiator's Sanctum to be Built |havebuilding SparringArena,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="SparringArena"
Finalize the Level 3 Gladiator's Sanctum |havebuilding SparringArena,3,active
step
Congratulations, you've finished upgrading your Galdiator's Sanctum!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Lumber Mill",{
description="\nThis guide will walk you through creating and upgrading the Lumber Mill Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have Medium building plots until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Medium_ tab at the top
Drag _Lumber Mill_ to a _Medium Plot_
Build your Lumber Mill |havebuilding LumberMill
step
Wait for your Lumber Mill to be Built |havebuilding LumberMill,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="LumberMill"
Finalize the Level 1 Lumber Mill |havebuilding LumberMill,1,active
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
accept Easing into Lumberjacking##36189
step
Go through the gate |goto Lunarfall/0 52.5,71.9 < 20 |only if garrisonlvl(3)
click Small Timber##233604
|tip It looks like a tall thin tree with purple leaves at the top.
Harvest the Timber |q 36189/1 |goto Shadowmoon Valley D/0 31.3,24.8
step
Go through the gate |goto Lunarfall/0 52.5,71.9 < 20 |walk
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
turnin Easing into Lumberjacking##36189
accept Turning Timber into Profit##36192
step
click Small Timber##233604
|tip They look like tall thin trees with green or purple leaves at the top all around this area. Look for the blinking yellow dots on your minimap.
collect 10 Timber##114781 |q 36192/1 |goto Shadowmoon Valley D 40.6,23.3
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
Tell him _"I would like to submit a work order."_
Click _Start Work Order_
Start a Work Order |q 36192/2
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
turnin Turning Timber into Profit##36192
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lumber Mill, Level 2##109254 |condition itemcount(109254) > 0 or hasblueprint("LumberMill",2)
step
use Garrison Blueprint: Lumber Mill, Level 2##109254
Learn the Lumber Mill, Level 2 Blueprint |condition hasblueprint("LumberMill",2)
step
#include "Garrison_ArchitectTable"
Click on your Lumber Mill
Click _Upgrade_
Upgrade your Lumber Mill to Level 2 |havebuilding LumberMill,2,building
step
Wait for your Lumber Mill to be Built |havebuilding LumberMill,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="LumberMill"
Finalize the Level 2 Lumber Mill |havebuilding LumberMill,2,active
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
accept Sharper Blades, Bigger Timber##36194
step
Go through the gate |goto Lunarfall/0 52.5,71.9 < 20 |only if garrisonlvl(3)
click Timber##233634
|tip It looks like a large tall tree with purple leaves at the top.
Watch the dialogue
collect Timber Sample##114898 |q 36194/1 |goto Shadowmoon Valley D/0 30.5,30.6
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
turnin Sharper Blades, Bigger Timber##36194
step
Check these 10 Locations in Gorgrond:
|tip Click the lines in the step to change the waypoint.
Location 1: [Gorgrond/0 43.6,92.6]
Location 2: [Gorgrond/0 41.4,76.4]
Location 3: [Gorgrond/0 53.0,65.4]
Location 4: [Gorgrond/0 73.6,39.4]
Location 5: [Gorgrond/0 70.6,25.6]
Location 6: [Gorgrond/0 61.8,32.2]
Location 7: [Gorgrond/0 57.6,43.2]
Location 8: [Gorgrond/0 49.0,50.0]
Location 9: [Gorgrond/0 50.4,42.2]
Location 10: [Gorgrond/0 41.6,37.6]
clicknpc Petrified Ancient##85199
|tip It looks like a huge tree ent standing still with its arms raised, and Lumberjack bodies laying at its feet.  You will likely see it from a good distance away.
kill Petrified Ancient##85199
collect Barkskin Tome##115467 |future |q 36385
step
use Barkskin Tome##115467
accept Legacy of the Ancients##36385
step
Jump down here |goto Gorgrond/0 69.3,28.7 < 10 |only if walking
Follow the path |goto Gorgrond/0 70.3,26.4 < 20 |only if walking
Run along the coast |goto Gorgrond/0 69.1,21.7 < 30 |only if walking
Run up the path |goto Gorgrond/0 67.0,22.9 < 20 |only if walking
Follow the path toward the forest |goto Gorgrond/0 67.0,24.3 < 15 |only if walking
click Timber##233634
|tip They look like tall skinny trees with a bunch of leaves at the top around this area. Click the Small Timber trees to clear them out, in case you don't see any Timber trees. Loruk the Ancient only spawns when you click Timber trees. Be careful of the nearby village where there's level 100 elite mobs. If you are a Hunter, dismiss your pet before clicking Timber trees, since this seems to cause Loruk the Ancient to not spawn.
kill Loruk the Ancient##85272
collect Twig of Loruk##115478 |q 36385/3 |goto Gorgrond/0 65.4,24.1
step
click Timber##233634
|tip They look like medium sized trees with long wilty strands of leaves all around this area. Click the Small Timber trees to clear them out, in case you don't see any Timber trees. Kuruk the Ancient only spawns when you click Timber trees.
kill Kuruk the Ancient##85271
collect Heart of Kuruk##115476 |q 36385/1 |goto Shadowmoon Valley D/0 43.4,51.5
step
click Timber##233634
|tip They look like medium sized trees with bushes of leaves at the top. Kuruk the Ancient only spawns when you click Timber trees (not Small Timber or Large Timber).  The timber trees are very spread out in Spires of Arak, so if you don't see a Timber tree at this location, run on the road that loops around the entire zone and you will eventually find one.
kill Hanuk the Ancient##85273
collect Roots of Hanuk##115480 |q 36385/4 |goto Spires of Arak/0 52.8,70.9
step
click Timber##233634
|tip They look like medium sized trees with a big bush of leaves at the top around this area. Autuk the Ancient only spawns when you click Timber trees (not Small Timber or Large Timber). If you don't see any Timber trees around this area, click Small Timber trees to clear them out, since they share spawn points.
kill Autuk the Ancient##85274
collect Trunk of Autuk##115477 |q 36385/2 |goto Nagrand D/0 58.0,52.9
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
turnin Legacy of the Ancients##36385
step
#include "Garrison_Weldon_Barov"
step
#include "Garrison_Medium_Building", action="talk Weldon Barov##85413", building="LumberMill"
accept Reduction in Force##36448
step
kill Alexi Barov##85446
|tip He spawns with a group of helpers when you approach this any type of Timber tree around this area.
collect Head of Alexi Barov##116152 |q 36448/1 |goto Shadowmoon Valley D/0 44.6,23.7
step
#include "Garrison_Medium_Building", action="talk Weldon Barov##85413", building="LumberMill"
turnin Reduction in Force##36448
step
map Spires of Arak/0
path follow loose; loop; ants curved
path	60.0,73.0	62.2,66.3	62.0,53.3
path	52.6,50.7	47.3,45.2	41.6,49.5
path	42.2,58.4	47.3,61.7	48.3,68.1
path	50.9,68.6	52.6,72.2	52.7,75.7
path	54.9,78.6
_Follow the road_ in Spires of Arak:
click Small Timber##233604
|tip They look like smaller thin trees with bushes of leaves at the top.
click Timber##233634
|tip They look like medium sized trees with bushes of trees at the top.
collect 750 Timber##114781 |condition hasbuilding("LumberMill",3)
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
Click _Create All_ in the _Work Order_ window
Place #75# Work Orders at the Lumber Mill |achieve 9429
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lumber Mill, Level 3##109255 |condition itemcount(109255) > 0 or hasblueprint("LumberMill",3)
step
use Garrison Blueprint: Lumber Mill, Level 3##109255
Learn the Lumber Mill, Level 3 Blueprint |condition hasblueprint("LumberMill",3)
step
#include "Garrison_ArchitectTable"
Click on your Lumber Mill
Click _Upgrade_
Upgrade your Lumber Mill to Level 3 |havebuilding LumberMill,3,building
step
Wait for your Lumber Mill to be Built |havebuilding LumberMill,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="LumberMill"
Finalize the Level 3 Lumber Mill |havebuilding LumberMill,3,active
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
accept Tree-i-cide##36195
step
Run up the rocks here |goto Shadowmoon Valley D/0 34.7,25.5 < 10 |only if walking
click Large Timber##233635
|tip It looks like a large tree up on top of a big hill.
collect Timber Sample##114899 |q 36195/1 |goto Shadowmoon Valley D/0 34.0,25.4
step
#include "Garrison_Medium_Building", action="talk Justin Timberlord##84248", building="LumberMill"
turnin Tree-i-cide##36195
step
Congratulations, you've finished upgrading your Lumber Mill!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Trading Post",{
description="\nThis guide will walk you through creating and upgrading the Trading Post Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have Medium building plots until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Medium_ tab at the top
Drag _Trading Post_ to a _Medium Plot_
Build your Trading Post |havebuilding TradingPost
step
Wait for your Trading Post to be Built |havebuilding TradingPost,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="TradingPost"
Finalize the Level 1 Trading Post |havebuilding TradingPost,1,active
step
#include "Garrison_Medium_Building", action="talk Trader Joseph##87217", building="TradingPost"
accept Tricks of the Trade##37088
step
clicknpc Krixel Pinchwhistle##87291
use Mug of Rousing Coffee##118418
Rouse the Trader |q 37088/1 |goto Lunarfall/0 57.84,71.76
step
#include "Garrison_Medium_Building", action="talk Trader Joseph##87217", building="TradingPost"
turnin Tricks of the Trade##37088 |goto Lunarfall/0 34.2,48.9
step
Reach level 40 |ding 40 |or |tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Trading Post, Level 2##111986 |condition itemcount(111986) > 0 or hasblueprint("TradingPost",2)
step
use Garrison Blueprint: Trading Post, Level 2##111986
Learn the Trading Post, Level 2 Blueprint |condition hasblueprint("TradingPost",2)
step
#include "Garrison_ArchitectTable"
Click your Trading Post
Click _Upgrade_
Upgrade your Trading Post to Level 2 |havebuilding TradingPost,2,building
step
Wait for your Trading Post to be Built |havebuilding TradingPost,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="TradingPost"
Finalize the Level 2 Trading Post |havebuilding TradingPost,2,active
step
Reach level 40 |ding 40 |tip Use the Leveling guide to accomplish this.
step
Earn the _Savage Friends_ Achievement |achieve 9478
|tip This achievement requires you to reach Exalted reputation with 1 Draenor faction. Use the Reputation guides to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Trading Post, Level 3##111987 |condition itemcount(111987) > 0 or hasblueprint("TradingPost",3)
step
use Garrison Blueprint: Trading Post, Level 3##111987
Learn the Trading Post, Level 3 Blueprint |condition hasblueprint("TradingPost",3)
step
#include "Garrison_ArchitectTable"
Click your Trading Post
Click _Upgrade_
Upgrade your Trading Post to Level 3 |havebuilding TradingPost,3,building
step
Wait for your Trading Post to be Built |havebuilding TradingPost,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="TradingPost"
Finalize the Level 3 Trading Post |havebuilding TradingPost,3,active
step
collect 1 Arcane Crystal Casing##118344 |q 36948 |future
collect 1 Arcane Crystal Conduit##118345 |q 36948 |future
collect 1 Arcane Crystal Amplifier##118346 |q 36948 |future
collect 1 Arcane Crystal Focusing Lens##118347 |q 36948 |future
|tip These items drop from The Butcher, Brackenspore, and Kargath Bladefist in the Highmaul Raid. Use the Group Finder to run this raid repeatedly.
|tip You need an item level of 615 in order use the Group Finder to enter this raid, so run dungeons until you have 615 item level.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Auction Memory Socket##118197 |q 36948 |future
collect 1 Auction Connecting Valve##118331 |q 36948 |future
collect 1 Auction A.D.D.O.N.S Installer##118332 |q 36948 |future
|tip These items can drop from any Draenor dungeon bosses, as well as dungeon reward container.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Universal Language Compensator##118333 |q 36948 |future
collect 1 Universal Language Filter##118334 |q 36948 |future
collect 1 Universal Language Repository##118335 |q 36948 |future
|tip These items drop from any enemy in Ashran.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Super Cooling Regulator##118336 |q 36948 |future
collect 1 Super Cooling Tubing##118337 |q 36948 |future
collect 1 Super Cooling Coolant##118338 |q 36948 |future
collect 1 Super Cooling Pump##118339 |q 36948 |future
|tip These items have a small chance to drop from any mob in Shadowmoon Valley, Talador, and Nagrand.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Cyclical Power Converter##118340 |q 36948 |future
collect 1 Cyclical Power Housing##118341 |q 36948 |future
collect 1 Cyclical Power Framing##118342 |q 36948 |future
collect 1 Cyclical Power Sequencer##118343 |q 36948 |future
|tip These items have a small chance to drop from any mob in Frostfire Ridge, Gorgrond, and Spires of Arak.
|tip You can also buy these items from the Auction House, if you'd like.
step
use Arcane Crystal Casing##118344
collect Arcane Crystal Module##118375 |q 36948 |future
step
use Auction Memory Socket##118197
collect Auction Control Module##118376 |q 36948 |future
step
use Universal Language Compensator##118333
collect Universal Language Module##118377 |q 36948 |future
step
use Super Cooling Regulator##118336
collect Super Cooling Module##118378 |q 36948 |future
step
use Cyclical Power Converter##118340
collect Cyclical Power Module##118379 |q 36948 |future
step
#include "Garrison_Medium_Building", action="talk Ancient Trading Mechanism##87206", building="TradingPost"
|tip It's a metal robot laying on the porch of your Trading Post.
accept Auctioning for Parts##36948
step
Congratulations, you've finished upgrading your Trading Post!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Barracks",{
description="\nThis guide will walk you through creating and upgrading the Barracks Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Barracks_ to a _Large Plot_
Build your Barracks |havebuilding Barracks
step
Wait for your Barracks to be Built |havebuilding Barracks,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Barracks"
Finalize the Level 1 Barracks |havebuilding Barracks,1,active
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34769) |or
|tip Use the Nagrand (Warlords of Draenor) leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barracks, Level 2##111970 |condition itemcount(111970) > 0 or hasblueprint("Barracks",2)
step
use Garrison Blueprint: Barracks, Level 2##111970
Learn the Barracks, Level 2 Blueprint |condition hasblueprint("Barracks",2)
step
#include "Garrison_ArchitectTable"
Click your Barracks
Click _Upgrade_
Upgrade your Barracks to Level 2 |havebuilding Barracks,2,building
step
Wait for your Barracks to be Built |havebuilding Barracks,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Barracks"
Finalize the Level 2 Barracks |havebuilding Barracks,2,active
step
#include "Garrison_CommandTable"
Complete 50 Garrison Patrol Missions |achieve 9523
|tip These are Garrison Missions. Garrison Patrol missions have a spyglass icon next to the level difficulty number.
_And_
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barracks, Level 3##111971 |condition itemcount(111971) > 0 or hasblueprint("Barracks",3)
step
use Garrison Blueprint: Barracks, Level 3##111971
Learn the Barracks, Level 3 Blueprint |condition hasblueprint("Barracks",3)
step
#include "Garrison_ArchitectTable"
Click your Barracks
Click _Upgrade_
Upgrade your Barracks to Level 3 |havebuilding Barracks,3,building
step
Wait for your Barracks to be Built |havebuilding Barracks,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Barracks"
Finalize the Level 3 Barracks |havebuilding Barracks,3,active
step
Congratulations, you've finished upgrading your Barracks!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Gnomish Gearworks",{
description="\nThis guide will walk you through creating and upgrading the Gnomish Gearworks Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have another Large building plot until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Gnomish Gearworks_ to a _Large Plot_
Build your Gnomish Gearworks |havebuilding Workshop
step
Wait for your Gnomish Gearworks to be Built |havebuilding Workshop,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Workshop"
Finalize the Level 1 Gnomish Gearworks |havebuilding Workshop,1,active
step
#include "Garrison_Large_Building", action="talk Zee##84286", building="Workshop"
|tip He's in your Gnomish Gearworks garrison building.
accept Unconventional Inventions##37091
step
#include "Garrison_Large_Building", action="click Sticky Grenades##234146", building="Workshop"
|tip They look like a pyramid pile of metal bombs on a table next to Zee.
Acquire a Workshop Invention |q 37091/1
step
#include "Garrison_Large_Building", action="talk Zee##84286", building="Workshop"
|tip He's in your Gnomish Gearworks garrison building.
turnin Unconventional Inventions##37091
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34769) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gnomish Gearworks, Level 2##111984 |condition itemcount(111984) > 0 or hasblueprint("Workshop",2)
step
use Garrison Blueprint: Gnomish Gearworks, Level 2##111984
Learn the Gnomish Gearworks, Level 2 Blueprint |condition hasblueprint("Workshop",2)
step
#include "Garrison_ArchitectTable"
Click your Gnomish Gearworks
Click _Upgrade_
Upgrade your Gnomish Gearworks to Level 2 |havebuilding Workshop,2,building
step
Wait for your Gnomish Gearworks to be Built |havebuilding Workshop,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Workshop"
Finalize the Level 2 Gnomish Gearworks |havebuilding Workshop,2,active
step
label "Inventions_Start"
#include "Garrison_Large_Building", action="click Invention", building="Workshop"
|tip The Inventions will be on the wooden table next to Zee and the wall in your Gnomish Gearworks. All the of the items are large and obvious, except the Prototype Mekgineer's Chopper key, which is pretty small and could be overlooked or covered by other invention, if you're not careful.
|tip You need multiple charges for each invention, so the fastest way seems to be to use the charges as fast as possible, causing another of the same item to spawn again immediately in your Gnomish Gearworks.
|tip If the Prototype Mekgineer's Chopper key isn't respawning, try logging out and in again, then moving your Gnomish Gearworks building to a different plot.
|tip You get 1 new invention per day.
Click after picking up inventions |confirm |condition achieved(9527)
step
use Robo-Rooster##119158
|tip There is a 15 second cooldown.
kill Dungeoneer's Training Dummy##88314
|tip Attack the Tanking training dummy, so that it kills your Robo-Rooster quickly. This way you don't have to wait 10 minutes to summon another one.
Use the _Robo-Rooster_ #20# Times |goto Lunarfall/0 70.9,34.7 |achieve 9527/1
|only if itemcount(119158) > 0
step
use Sticky Grenade Launcher##114983
|tip Use the Sticky Grenade Launcher on the Dungeoneer's Training Dummy. There is a 6 second cooldown.
Use the Sticky Grenade Launcher #50# Times |goto Lunarfall/0 69.6,35.2 |achieve 9527/2
|only if itemcount(114983) > 0
step
use Pneumatic Power Gauntlet##114974 |only if itemcount(114974) > 0
|tip Use the Pneumatic Power Gauntlet on the Dungeoneer's Training Dummy. There is a 2 minute cooldown. |only if itemcount(114974) > 0
Use the Pneumatic Power Gauntlet #50# Times |goto Lunarfall/0 69.6,35.2 |achieve 9527/3 |only if itemcount(114974) > 0
use Pneumatic Power Gauntlet##114975 |only if itemcount(114975) > 0
|tip Use the Pneumatic Power Gauntlet on the Dungeoneer's Training Dummy. There is a 2 minute cooldown. |only if itemcount(114975) > 0
Use the Pneumatic Power Gauntlet #50# Times |goto Lunarfall/0 69.6,35.2 |achieve 9527/3 |only if itemcount(114975) > 0
step
use Prototype Mekgineer's Chopper##114924
Use the _Prototype Mekgineer's Chopper_ #50# Times |goto Lunarfall/0 44.8,46.0 |achieve 9527/4
|tip Click the yellow arrow button on the action bar to leave the vehicle, so you can use the item again quickly.
|only if itemcount(114924) > 0
step
use "Skyterror" Personal Delivery System##114246
|tip You will fly around for a short time. There is a 5 second cooldown.
Use the _"Skyterror" Personal Delivery System_ #10# Times |goto Lunarfall/0 44.8,46.0 |achieve 9527/5
|only if itemcount(114246) > 0
step
use GG-117 Micro-Jetpack##114244
|tip There is a 10 second cooldown.
Use the _GG-117 Micro-Jetpack_ #10# Times |goto Lunarfall/0 44.8,46.0 |achieve 9527/6
|only if itemcount(114244) > 0
step
use Sentry Turret Dispenser##114744
|tip There is a 30 second cooldown.
Use the Sentry Turret Dispenser #10# Times |goto Lunarfall/0 44.8,46.0 |achieve 9527/7
|only if itemcount(114744) > 0
step
use XD-57 "Bullseye" Guided Rocket Kit##114633
|tip There is a 5 second cooldown.
Use the _XD-57 "Bullseye" Guided Rocket Kit_ #5# Times |goto Lunarfall/0 44.8,46.0 |achieve 9527/8
|only if itemcount(114633) > 0
step
use N.U.K.U.L.A.R. Target Painter##115530
|tip There is a 1 hour cooldown.
Use the _N.U.K.U.L.A.R. Target Painter_ #5# Times |goto Lunarfall/0 44.8,46.0 |achieve 9527/9
|tip After using this, click to the next step if you want to continue using other inventions, since the cooldown for this is so long.
|only if itemcount(115530) > 0
step
Use 6 of the Engineering Works Inventions |achieve 9527 |or
|tip You have to use a certain number of charges of at least 6 Inventions, so this will take a few days at least.
_
If you need more inventions:
Click to Get More _Gnomish Gearworks Inventions_ |confirm |next "Inventions_Start" |or
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gnomish Gearworks, Level 3##111985 |condition itemcount(111985) > 0 or hasblueprint("Workshop",3)
step
use Garrison Blueprint: Gnomish Gearworks, Level 3##111985
Learn the Gnomish Gearworks, Level 3 Blueprint |condition hasblueprint("Workshop",3)
step
#include "Garrison_ArchitectTable"
Click your Gnomish Gearworks
Click _Upgrade_
Upgrade your Gnomish Gearworks to Level 3 |havebuilding Workshop,3,building
step
Wait for your Gnomish Gearworks to be Built |havebuilding Workshop,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Workshop"
Finalize the Level 3 Gnomish Gearworks |havebuilding Workshop,3,active
step
Congratulations, you've finished upgrading your Gnomish Gearworks!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Mage Tower",{
description="\nThis guide will walk you through creating and upgrading the Mage Tower Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have another Large building plot until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Mage Tower_ to a _Large Plot_
Build your Mage Tower |havebuilding MageTower
step
Wait for your Mage Tower to be Built |havebuilding MageTower,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="MageTower"
Finalize the Level 1 Mage Tower |havebuilding MageTower,1,active
step
#include "Garrison_Large_Building", action="talk Archmage Kem##77367", building="MageTower"
|tip He's inside the tent.
accept Portable Portals##38354
step
#include "Garrison_Large_Building", action="talk Apprentice Var'nath##91582", building="MageTower"
|tip He's standing outside the tent, near the entrance.
Speak with Var'nath |q 38354/1
step
#include "Garrison_Large_Building", action="talk Archmage Kem##77367", building="MageTower"
|tip He's inside the tent.
turnin Portable Portals##38354
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34769) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Mage Tower, Level 2##109062 |condition itemcount(109062) > 0 or hasblueprint("MageTower",2)
step
use Garrison Blueprint: Mage Tower, Level 2##109062
Learn the Mage Tower, Level 2 Blueprint |condition hasblueprint("MageTower",2)
step
#include "Garrison_ArchitectTable"
Click your Mage Tower
Click _Upgrade_
Upgrade your Mage Tower to Level 2 |havebuilding MageTower,2,building
step
Wait for your Mage Tower to be Built |havebuilding MageTower,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="MageTower"
Finalize the Level 2 Mage Tower |havebuilding MageTower,2,active
step
#include "Garrison_Large_Building", action="talk Archmage Kem##77367", building="MageTower"
accept Ogre Waygates##36848
step
Follow the path |goto Gorgrond/0 44.3,70.0 < 20 |only if walking
Continue following the path |goto Gorgrond/0 42.9,65.6 < 30 |only if walking
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
collect 25 Ogre Waystone##117491 |q 36848/1 |goto Gorgrond/0 41.6,65.5
step
Choose the Location for your Ogre Waygate:
|tip Click a line below to choose that location. A portal to the location you choose will be built in your Mage Tower Garrison building.
The Cracking Plains, _Frostfire Ridge_ |next "frostfire" |confirm |condition completedq(36848)
Tuurem, _Talador_ |next "talador" |confirm |condition completedq(36848)
Ancestral Grounds, _Nagrand_ |next "nagrand" |confirm |condition completedq(36848)
Veil Zekk, _Spires of Arak_ |next "spires" |confirm |condition completedq(36848)
Stonemaul Arena, _Gorgrond_ |next "gorgrond" |confirm |condition completedq(36848)
step
label "frostfire"
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
Activate an Orgre Waygate |q 36848/2 |goto Frostfire Ridge/0 59.6,47.5
step
click Ogre Waygate |goto Frostfire Ridge/0 59.6,47.5
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Lunarfall 29.9,33.9 < 300 |c |noway |q 36848
|next "turnin"
step
label "talador"
Go down the stairs |goto Talador/0 51.1,46.2 < 20 |only if walking
Jump down carefully on the hills here |goto Talador/0 54.2,47.4 < 20 |only if walking
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
Activate an Orgre Waygate |q 36848/2 |goto Talador/0 55.1,48.2
step
click Ogre Waygate |goto Talador/0 55.1,48.2
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Lunarfall 29.9,33.9 < 300 |c |noway |q 36848
|next "turnin"
step
label "nagrand"
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
|tip Be careful of the elite mobs.
Activate an Orgre Waygate |q 36848/2 |goto Nagrand D/0 32.2,46.2
step
click Ogre Waygate |goto Nagrand D/0 32.2,46.2
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Lunarfall 29.9,33.9 < 300 |c |noway |q 36848
|next "turnin"
step
label "spires"
Follow the dirt path |goto Spires of Arak/0 60.6,44.0 < 30 |only if walking
Run along the road |goto Spires of Arak/0 60.4,46.5 < 30 |only if walking
Follow the path |goto Spires of Arak/0 54.3,50.1 < 30 |only if walking
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
Activate an Orgre Waygate |q 36848/2 |goto Spires of Arak/0 54.6,51.6
step
click Ogre Waygate |goto Spires of Arak/0 54.6,51.6
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Lunarfall 29.9,33.9 < 300 |c |noway |q 36848
|next "turnin"
step
label "gorgrond"
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
Activate an Ogre Waygate |q 36848/2 |goto Gorgrond 58.0,34.4
step
click Ogre Waygate |goto Gorgrond 58.0,34.4
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Lunarfall 29.9,33.9 < 300 |c |noway |q 36848
|next "turnin"
step
label "turnin"
#include "Garrison_Large_Building", action="talk Archmage Kem##77367", building="MageTower"
turnin Ogre Waygates##36848
step
Follow the path |goto Gorgrond/0 44.3,70.0 < 20 |only if walking
Continue following the path |goto Gorgrond/0 42.9,65.6 < 30 |only if walking
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
Loot #500# Ogre Waystones |achieve 9497 |goto Gorgrond/0 41.6,65.5
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Mage Tower, Level 3##109063 |condition itemcount(109063) > 0 or hasblueprint("MageTower",3)
step
use Garrison Blueprint: Mage Tower, Level 3##109063
Learn the Mage Tower, Level 3 Blueprint |condition hasblueprint("MageTower",3)
step
#include "Garrison_ArchitectTable"
Click your Mage Tower
Click _Upgrade_
Upgrade your Mage Tower to Level 3 |havebuilding MageTower,3,building
step
Wait for your Mage Tower to be Built |havebuilding MageTower,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="MageTower"
Finalize the Level 3 Mage Tower |havebuilding MageTower,3,active
step
Congratulations, you've finished upgrading your Mage Tower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Stables",{
description="\nThis guide will walk you through creating and upgrading the Stables Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Stables_ to a _Large Plot_
Build your Stables |havebuilding Stables
step
Wait for your Stables to be Built |havebuilding Stables,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Stables"
Finalize the Level 1 Stables |havebuilding Stables,1,active
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34769) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Stables, Level 2##112002 |condition itemcount(112002) > 0 or hasblueprint("Stables",2)
step
use Garrison Blueprint: Stables, Level 2##112002
Learn the Stables, Level 2 Blueprint |condition hasblueprint("Stables",2)
step
#include "Garrison_ArchitectTable"
Click on your Stables
Click _Upgrade_
Upgrade your Stables to Level 2 |havebuilding Stables,2,building
step
Wait for your Stables to be Built |havebuilding Stables,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Stables"
Finalize the Level 2 Stables |havebuilding Stables,2,active
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Taming a Talbuk##36911
accept The Black Claw##37121
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
Talk to Fanny |q 37121/1
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin The Black Claw##37121
step
clicknpc Young Silverpelt##86801
use Talbuk Lasso##118179
Tame a Silverpelt |q 36911/1 |goto Shadowmoon Valley D/0 50.9,29.8
|tip You will need to be mounted and follow the Young Silverpet as it tries to run away.
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Taming a Talbuk##36911
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Capturing a Clefthoof##36916
|tip If you can't accept the quest, logout and login again, and the quest should be available.  This seems to be a bug.
step
clicknpc Young Icehoof##86847
use Clefthoof Lasso##118181
Tame an Icehoof |q 36916/1 |goto Frostfire Ridge/0 53.5,20.0
|tip You will need to be mounted and follow the Young Icehoof as it tries to run away.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Taming a Clefthoof##36916
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Besting a Boar##36913
|tip If you can't accept the quest, logout and login again, and the quest should be available.  This seems to be a bug.
step
clicknpc Young Rocktusk##86850
use Boar Lasso##118185
Tame a Rocktusk |q 36913/1 |goto Gorgrond/0 43.1,37.2
|tip You will need to be mounted and follow the Young Rocktusk as it tries to run away.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Besting a Boar##36913
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Requisition a Riverbeast##36918
|tip If you can't accept the quest, logout and login again, and the quest should be available.  This seems to be a bug.
step
clicknpc Shadow Lily##77271
|tip They look like white glowing flowers on the ground right next to the water.
Obtain the Glowstep Buff |havebuff 237528 |goto Talador/0 64.4,56.3 |q 36918
|tip This buff will allow you to walk on water for 10 minutes, and will not be cancelled when you take damage.
step
clicknpc Young Riverwallow##86848
use Riverbeast Lasso##118183
|tip Be sure you still have the Glowstep buff that allows you to walk on water.  If you don't have it anymore, go back 1 step and get it again.
Tame a Riverwallow |q 36918/1 |goto Talador/0 64.4,56.3
|tip You will need to be mounted and follow the Young Riverwallow as it tries to run away.
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Requisition a Riverbeast##36918
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Entangling an Elekk##36915
|tip If you can't accept the quest, logout and login again, and the quest should be available.  This seems to be a bug.
step
Follow the path |goto Nagrand D/0 80.3,42.8 < 20 |only if walking
|tip Be careful to stay a good distance away from the nearby Horde town.
Run up the path |goto Nagrand D/0 82.8,41.7 < 20 |only if walking
Keep running up the path |goto Nagrand D/0 84.3,40.2 < 20 |only if walking
clicknpc Young Meadowstomper##86852
use Elekk Lasso##118184
Tame a Meadowstomper |q 36915/1 |goto Nagrand D/0 85.1,40.7
|tip You will need to be mounted and follow the Young Meadowstomper as it tries to run away. During the chase, the Young Meadowstomper jumps across a long gap.  Run on the path to the left when this happens.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Entangling an Elekk##36915
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Wrangling a Wolf##36914
|tip If you can't accept the quest, logout and login again, and the quest should be available.  This seems to be a bug.
step
Jump across here |goto Nagrand D/0 58.9,60.0 < 15 |only if walking
clicknpc Young Snarler##86851
use Wolf Lasso##118182
Tame a Snarler |q 36914/1 |goto Nagrand D/0 57.2,60.3
|tip You will need to be mounted and follow the Young Snarler as it tries to run away.
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Wrangling a Wolf##36914
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Talbuk Training: Great-Tusk##36971
|tip She will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Clefthoof Training: Great-Tusk##36983
|tip He will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q 36983/1 |goto Shadowmoon Valley D/0 62.9,39.1
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q 36971/1 |goto Shadowmoon Valley D/0 62.9,39.1
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Great-Tusk##36971
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Clefthoof Training: Great-Tusk##36983
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Talbuk Training: Rakkiri##36972
|tip You may not be able to pick this up until the next day.
|tip She will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Clefthoof Training: Rakkiri##36984
|tip You may not be able to pick this up until the next day.
|tip He will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
Enter the small tunnel in the rocks |goto Frostfire Ridge/0 78.9,56.0 < 20 |walk
Continue running through the tunnel |goto Frostfire Ridge/0 78.6,55.8 < 10 |walk
Exit the tunnel |goto Frostfire Ridge/0 78.4,54.9 < 20 |walk
Follow the path around the Horde village |goto Frostfire Ridge/0 75.3,55.6 < 20 |only if walking
Follow the snow path |goto Frostfire Ridge/0 71.2,58.7 < 20 |only if walking
use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q 36984/1 |goto Frostfire Ridge 72.9,69.9
|tip It's a huge bat flying in the air.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352 |goto Frostfire Ridge 72.9,69.9
kill Rakkiri##87085 |q 36972/1
|tip It's a huge bat flying in the air.
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Rakkiri##36972
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Clefthoof Training: Rakkiri##36984
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Talbuk Training: Riplash##36973
|tip She will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Riplash##36995
accept Clefthoof Training: Riplash##36985
|tip He will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
Run through here |goto Gorgrond/0 53.9,44.7 < 30 |only if walking
Follow the path around the mountain |goto Gorgrond/0 49.9,41.7 < 30 |only if walking
Continue around the mountain |goto Gorgrond/0 49.4,40.0 < 30 |only if walking
use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q 36973/1 |goto Gorgrond 50.2,38.0
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q 36995/1 |goto Gorgrond 50.2,38.0
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q 36985/1 |goto Gorgrond 50.2,38.0
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Riplash##36973
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Riplash##36995
turnin Clefthoof Training: Riplash##36985
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Gezz'ran##37005
accept Talbuk Training: Gezz'ran##36974
|tip She will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Gezz'ran##36996
accept Clefthoof Training: Gezz'ran##36986
|tip He will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
Follow the road |goto Talador/0 36.5,66.7 < 30 |only if walking
Run on the dirt path |goto Talador/0 31.0,59.7 < 30 |only if walking
use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q 36974/1 |goto Talador 31.4,54.5
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q 37005/1 |goto Talador 31.4,54.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q 36996/1 |goto Talador 31.4,54.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q 36986/1 |goto Talador 31.4,54.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Gezz'ran##36974
turnin Riverbeast Training: Gezz'ran##37005
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Gezz'ran##36996
turnin Clefthoof Training: Gezz'ran##36986
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Bulbapore##37006
accept Talbuk Training: Bulbapore##36975
|tip She will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Bulbapore##36997
accept Clefthoof Training: Bulbapore##36987
|tip He will offer other quests, but wait to do them later.  This will save you a lot of travel time each day you have to do these types of quests.  Only accept the quests listed in this step.
step
Follow the path |goto Spires of Arak/0 61.0,72.4 < 30 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q 37006/1 |goto Spires of Arak/0 66.7,75.7
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q 36975/1 |goto Spires of Arak/0 66.7,75.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q 36997/1 |goto Spires of Arak/0 66.7,75.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q 36987/1 |goto Spires of Arak/0 66.7,75.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Bulbapore##37006
turnin Talbuk Training: Bulbapore##36975
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Bulbapore##36997
turnin Clefthoof Training: Bulbapore##36987
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Cruel Ogres##37007
accept Talbuk Training: Cruel Ogres##36976
accept Wolf Training: Cruel Ogres##37022
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Cruel Ogres##36998
accept Clefthoof Training: Cruel Ogres##36988
accept Elekk Training: Cruel Ogres##37015
step
use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q 37007/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q 36976/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q 37022/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q 36998/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q 36988/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q 37015/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Cruel Ogres##37007
turnin Talbuk Training: Cruel Ogres##36976
turnin Wolf Training: Cruel Ogres##37022
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Cruel Ogres##36998
turnin Clefthoof Training: Cruel Ogres##36988
turnin Elekk Training: Cruel Ogres##37015
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Darkwing Roc##37008
accept Talbuk Training: Darkwing Roc##36977
accept Wolf Training: Darkwing Roc##37023
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Darkwing Roc##36999
accept Clefthoof Training: Darkwing Roc##36989
accept Elekk Training: Darkwing Roc##37016
step
Go up the path |goto Nagrand D/0 67.3,16.1 < 20 |only if walking
Continue following the path up |goto Nagrand D/0 66.6,15.0 < 20 |only if walking
Cross the bridge |goto 66.6,17.6 < 30 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Darkwing Roc##87088 |q 37008/1 |goto Nagrand D/0 68.5,20.5
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q 36977/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q 37023/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q 36999/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q 36989/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q 37016/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Darkwing Roc##37008
turnin Talbuk Training: Darkwing Roc##36977
turnin Wolf Training: Darkwing Roc##37023
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Darkwing Roc##36999
turnin Clefthoof Training: Darkwing Roc##36989
turnin Elekk Training: Darkwing Roc##37016
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Moth of Wrath##37009
accept Talbuk Training: Moth of Wrath##36978
accept Wolf Training: Moth of Wrath##37024
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Moth of Wrath##37000
accept Clefthoof Training: Moth of Wrath##36990
accept Elekk Training: Moth of Wrath##37017
step
use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q 37009/1 |goto Nagrand D 43.6,69.6
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q 36978/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q 37024/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q 37000/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q 36990/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q 37017/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Moth of Wrath##37009
turnin Talbuk Training: Moth of Wrath##36978
turnin Wolf Training: Moth of Wrath##37024
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Moth of Wrath##37000
turnin Clefthoof Training: Moth of Wrath##36990
turnin Elekk Training: Moth of Wrath##37017
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Thundercall##37010
accept Talbuk Training: Thundercall##36979
accept Wolf Training: Thundercall##37025
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Thundercall##37001
accept Clefthoof Training: Thundercall##36991
accept Elekk Training: Thundercall##37018
step
Follow the path |goto Nagrand D/0 73.6,29.8 < 30 |only if walking
Go up the path |goto Nagrand D/0 79.8,31.4 < 30 |only if walking
Jump down here |goto Nagrand D/0 82.1,32.2 < 20 |only if walking
Follow the path up |goto Nagrand D/0 83.5,33.1 < 15 |only if walking
Continue up the path |goto Nagrand D/0 85.0,34.8 < 15 |only if walking
Run up the narrow path |goto Nagrand D/0 86.3,36.8 < 10 |only if walking
Keep following the path up |goto Nagrand D/0 87.2,38.6 < 15 |only if walking
Follow the path down |goto Nagrand D/0 88.6,35.0 < 10 |only if walking
Jump down here | goto Nagrand D/0 88.5,32.6 < 15 |only if walking
Follow the side of the mountain |goto Nagrand D/0 89.0,30.3 < 15 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q 37010/1 |goto Nagrand D 90.6,23.6
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q 36979/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q 37025/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q 37001/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q 36991/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q 37018/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Thundercall##37010
turnin Talbuk Training: Thundercall##36979
turnin Wolf Training: Thundercall##37025
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Thundercall##37001
turnin Clefthoof Training: Thundercall##36991
turnin Elekk Training: Thundercall##37018
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Ironbore##37011
accept Talbuk Training: Ironbore##36980
accept Wolf Training: Ironbore##37026
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Ironbore##37002
accept Clefthoof Training: Ironbore##36992
accept Elekk Training: Ironbore##37019
step
use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q 37011/1 |goto Nagrand D/0 53.2,77.6
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q 36980/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q 37026/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q 37002/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q 36992/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q 37019/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Ironbore##37011
turnin Talbuk Training: Ironbore##36980
turnin Wolf Training: Ironbore##37026
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Ironbore##37002
turnin Clefthoof Training: Ironbore##36992
turnin Elekk Training: Ironbore##37019
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Orc Hunters##37012
accept Talbuk Training: Orc Hunters##36981
accept Wolf Training: Orc Hunters##37027
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: Orc Hunters##37003
accept Clefthoof Training: Orc Hunters##36993
accept Elekk Training: Orc Hunters##37020
step
use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q 37012/1 |goto Nagrand D/0 69.6,34.6
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q 36981/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q 37027/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q 37003/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q 36993/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q 37020/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Orc Hunters##37012
turnin Talbuk Training: Orc Hunters##36981
turnin Wolf Training: Orc Hunters##37027
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: Orc Hunters##37003
turnin Clefthoof Training: Orc Hunters##36993
turnin Elekk Training: Orc Hunters##37020
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: The Garn##37013
accept Talbuk Training: The Garn##36982
accept Wolf Training: The Garn##37028
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
accept Boar Training: The Garn##37004
accept Clefthoof Training: The Garn##36994
accept Elekk Training: The Garn##37021
step
Follow the road |goto Nagrand D/0 59.9,62.8 < 30 |only if walking
Cross the bridge |goto Nagrand D/0 59.9,69.1 < 20 |only if walking
Run up the path |goto Nagrand D/0 65.0,79.9 < 20 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87174 |q 37013/1 |goto Nagrand D/0 63.8,80.8
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87174 |q 36982/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Maimclaw##87174 |q 37028/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87174 |q 37004/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Maimclaw##87174 |q 36994/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87174 |q 37021/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip If you're a Hunter, make a macro that includes "/cast Mend Pet".  Using the whistle dismisses your pet and your mount takes damage in the fight.  Using this macro on your action bar will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: The Garn##37013
turnin Talbuk Training: The Garn##36982
turnin Wolf Training: The Garn##37028
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Boar Training: The Garn##37004
turnin Clefthoof Training: The Garn##36994
turnin Elekk Training: The Garn##37021
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Stables, Level 3##112003 |condition itemcount(112003) > 0 or hasblueprint("Stables",3)
step
use Garrison Blueprint: Stables, Level 3##112003
Learn the Stables, Level 3 Blueprint |condition hasblueprint("Stables",3)
step
#include "Garrison_ArchitectTable"
Click your Stables
Click _Upgrade_
Upgrade your Stables to Level 3 |havebuilding Stables,3,building
step
Wait for your Stables to be Built |havebuilding Stables,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Stables"
Finalize the Level 3 Stables |havebuilding Stables,3,active
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
accept Teeth of a Predator##37122
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
Talk to Fanny |q 37122/1
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
turnin Teeth of a Predator##37122
step
Congratulations, you've finished upgrading your Stables!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Dwarven Bunker",{
description="\nThis guide will walk you through creating and upgrading the Dwarven Bunker Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have another Large building plot until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Dwarven Bunker_ to a _Large Plot_
Build your Dwarven Bunker |havebuilding Armory
step
Wait for your Dwarven Bunker to be Built |havebuilding Armory,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Armory"
Finalize the Level 1 Dwarven Bunker |havebuilding Armory,1,active
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34769) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_Large_Building", action="talk Kristen Stoneforge##77377", building="Armory"
accept Scraps of Iron##37092
step
Go up the path |goto Talador/0 68.1,20.5 < 20 |only if walking
Follow the road |goto Talador/0 66.2,18.8 < 30 |only if walking
Cross the broken bridge |goto Talador/0 66.9,9.2 < 20 |only if walking
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85455+, Grom'kar Deadeye##85460+, Grom'kar Blademaster##85456+
|tip They are all around this whole area.
collect 5 Iron Horde Scraps##113681 |q 37092/1 |goto Talador/0 67.8,6.5
|tip Depending on your luck, this could take a little while, so be patient if you're not getting them at first.
step
#include "Garrison_Large_Building", action="talk Kristen Stoneforge##77377", building="Armory"
turnin Scraps of Iron##37092
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Dwarven Bunker, Level 2##111966 |condition itemcount(111966) > 0 or hasblueprint("Armory",2)
step
use Garrison Blueprint: Dwarven Bunker, Level 2##111966
Learn the Dwarven Bunker, Level 2 Blueprint |condition hasblueprint("Armory",2)
step
#include "Garrison_ArchitectTable"
Click your Dwarven Bunker
Click _Upgrade_
Upgrade your Dwarven Bunker to Level 2 |havebuilding Armory,2,building
step
Wait for your Dwarven Bunker to be Built |havebuilding Armory,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Armory"
Finalize the Level 2 Dwarven Bunker |havebuilding Armory,2,active
step
#include "Garrison_CommandTable"
Level 20 Garrison Followers to Level 100 |achieve 9129
|tip Send your Garrison Followers on missions to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Dwarven Bunker, Level 3##111967 |condition itemcount(111967) > 0 or hasblueprint("Armory",3)
step
use Garrison Blueprint: Dwarven Bunker, Level 3##111967
Learn the Dwarven Bunker, Level 3 Blueprint |condition hasblueprint("Armory",3)
step
#include "Garrison_ArchitectTable"
Click your Dwarven Bunker
Click _Upgrade_
Upgrade your Dwarven Bunker to Level 3 |havebuilding Armory,3,building
step
Wait for your Dwarven Bunker to be Built |havebuilding Armory,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Armory"
Finalize the Level 3 Dwarven Bunker |havebuilding Armory,3,active
step
Congratulations, you've finished upgrading your Dwarven Bunker!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Fishing Shack",{
description="\nThis guide will walk you through creating and upgrading the Fishing Shack Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and not completedq(36611) and garrisonlvl()>0 end,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
_And_
Upgrade your Garrison to Level 2 |condition garrisonlvl() >= 2
step
#include "Garrison_Fishing_Talk", npc="Ron Ashton##77733"
accept Looking For Help##34194
|tip You must have the Fishing skill to be able to accept this quest.
step
Follow the road |goto Shadowmoon Valley D/0 23.2,13.9 < 20 |only if walking
talk Madari##84372
Tell him _"You look like an able fisherman, do you think you can help us out?"_
Find a Local Fisherman |q 34194/1 |goto Shadowmoon Valley D 27.0,7.3
step
talk Madari##84372
turnin Looking For Help##34194 |goto Shadowmoon Valley D 26.96,7.29
accept Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.29
step
kill Moonshell Crawler##84341+
collect 4 Moonshell Claw##114873 |q 36199/1 |goto Shadowmoon Valley D 29.54,10.92
step
talk Madari##84372
turnin Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.28
accept Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
step
Equip your Fishing Pole
use Moonshell Claw Bait##114874
Stand on the edge of the beach
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch #5# Shadow Sturgeon |q 36201/1 |goto Shadowmoon Valley D 27.54,7.24
step
talk Madari##84372
turnin Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
accept Anglin' In Our Garrison##36202 |goto Shadowmoon Valley D 26.96,7.28
step
#include "Garrison_Fishing_Talk", npc="Ron Ashton##77733"
turnin Anglin' In Our Garrison##36202
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 2##111927 |condition itemcount(111927) > 0 or hasblueprint("Fishing",2)
step
use Garrison Blueprint: Fishing Shack, Level 2##111927
Learn the Fishing Shack, Level 2 Blueprint |condition hasblueprint("Fishing",2)
step
#include "Garrison_ArchitectTable"
Click your Fishing Shack
Click _Upgrade_
Upgrade your Fishing Shack to Level 2 |havebuilding Fishing,2,building
step
Wait for your Fishing Shack to be Built |havebuilding Fishing,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Fishing_Finalize"
Finalize the Level 2 Fishing Shack |havebuilding Fishing,2,active
step
Use your Fishing skill to fish in the water |goto Lunarfall/0 61.2,36.3 |cast Fishing##131474
Reach 700 Fishing Skill |skill Fishing,700
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
Gather any items you already have that give you bonus Fishing skill
|tip This will make catching the enormous amount of fish you need to catch faster.
Buy Worm Supreme from the Auction House
|tip Buy 10-20 of them, if you can. This is helpful, but not essential. If you don't have gold to spare, don't worry about it.
confirm
only if not achieved(9462)
step
Use any Fishing Lure you have
use Sea Scorpion Bait##110292
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Sea Scorpions |goto Stormshield/0 54.7,82.5 |achieve 9461
step
Use any Fishing Lure you have
use Blind Lake Sturgeon Bait##110290
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Blind Lake Sturgeon |goto Shadowmoon Valley D/0 36.8,26.3 |achieve 9458
step
Use any Fishing Lure you have
use Abyssal Gulper Eel Bait##110293
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Abyssal Gulper Eels |goto Spires of Arak/0 51.0,32.8 |achieve 9456
step
Follow the path to the water |goto Talador/0 51.3,45.2 < 10 |only if walking
Use any Fishing Lure you have
use Blackwater Whiptail Bait##110294
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Blackwater Whiptails |goto Talador/0 51.8,46.4 |achieve 9457
step
Use any Fishing Lure you have
use Fat Sleeper Bait##110289
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Fat Sleepers |goto Nagrand D/0 73.1,25.7 |achieve 9459
step
Use any Fishing Lure you have
use Fire Ammonite Bait##110291
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Fire Ammonite |goto Frostfire Ridge/0 59.4,25.6 |achieve 9455
step
Use any Fishing Lure you have
use Jawless Skulker Bait##110274
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Jawless Skulkers |goto Gorgrond/0 44.7,78.7 |achieve 9460
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 3##111928 |condition itemcount(111928) > 0 or hasblueprint("Fishing",3)
step
use Garrison Blueprint: Fishing Shack, Level 3##111928
Learn the Fishing Shack, Level 3 Blueprint |condition hasblueprint("Fishing",3)
step
#include "Garrison_ArchitectTable"
Click your Fishing Shack
Click _Upgrade_
Upgrade your Fishing Shack to Level 3 |havebuilding Fishing,3,building
step
Wait for your Fishing Shack to be Built |havebuilding Fishing,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Fishing_Finalize"
Finalize the Level 3 Fishing Shack |havebuilding Fishing,3,active
step
talk Segumi##85708
accept Luring Nat##36870 |goto Lunarfall/0 53.8,14.0
step
Use your Fishing skill to fish in the water |cast Fishing##131474
collect Arcane Trout##118041 |q 36870/1 |goto Shadowmoon Valley D/0 36.8,26.3
step
talk Segumi##85708
turnin Luring Nat##36870 |goto Lunarfall/0 53.8,14.0
accept Finding Nat Pagle##36608 |goto Lunarfall/0 53.8,14.0
step
talk Nat Pagle##63721
Tell him _"Are you Nat Pagle? I have been looking all over for you!"_
Find Nat Pagle in Krasarang Wilds |q 36608/1 |goto Krasarang Wilds/0 68.4,43.5
step
talk Nat Pagle##63721
turnin Finding Nat Pagle##36608 |goto Krasarang Wilds/0 68.4,43.5
accept The Great Angler Returns##36882 |goto Krasarang Wilds/0 68.4,43.5
step
talk Segumi##85708
turnin The Great Angler Returns##36882 |goto Lunarfall/0 53.8,14.0
step
talk Nat Pagle##85984
accept A True Draenor Angler##36611 |goto Lunarfall/0 53.4,13.5
step
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Shadowmoon Valley |q 36611/3 |goto Shadowmoon Valley D/0 36.8,26.3
step
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Gorgrond |q 36611/5 |goto Gorgrond/0 52.2,60.5
step
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Talador |q 36611/2 |goto Talador/0 80.1,56.3
step
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Spires of Arak |q 36611/4 |goto Spires of Arak/0 51.3,32.8
step
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Nagrand |q 36611/6 |goto Nagrand D/0 62.7,60.9
step
Run up the path |goto Frostfire Ridge/0 84.9,61.6 < 20 |only if walking
Continue following the path |goto Frostfire Ridge/0 86.1,65.2 < 30 |only if walking
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Frostfire Ridge |q 36611/1 |goto Frostfire Ridge/0 86.0,69.1
step
talk Nat Pagle##85984
turnin A True Draenor Angler##36611 |goto Lunarfall/0 53.4,13.5
accept An Angler on Our Team##36616 |goto Lunarfall/0 53.4,13.5
step
Congratulations, you've finished upgrading your Fishing Shack!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Lunarfall Excavation",{
description="\nThis guide will walk you through creating and upgrading the Lunarfall Excavation Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
Upgrade your Garrison to level 2 |condition garrisonlvl() >= 2
|tip Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_LunarfallExcavation_Talk", npc="Timothy Leens##77730"
accept Things Are Not Goren Our Way##34192
stickystart "lunar_goren"
step
#include "Garrison_LunarfallExcavation_EnterMine"
kill Stonetooth##81396 |q 34192/2 |goto Lunarfall/23 58.9,80.0
step
label "lunar_goren"
kill 8 Lunarfall Goren##83628 |q 34192/1 |goto Lunarfall/23 63.5,56.9
step
#include "Garrison_LunarfallExcavation_LeaveMine"
#include "Garrison_LunarfallExcavation_Talk", npc="Timothy Leens##77730"
turnin Things Are Not Goren Our Way##34192
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34981) or completedq(34711) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Excavation, Level 2##109576 |condition itemcount(109576) > 0 or hasblueprint("Mine",2)
step
use Garrison Blueprint: Lunarfall Excavation, Level 2##109576
Learn the Lunarfall Excavation, Level 2 Blueprint |condition hasblueprint("Mine",2)
step
#include "Garrison_ArchitectTable"
Click your Lunarfall Excavation
Click _Upgrade_
Upgrade your Lunarfall Excavation to Level 2 |havebuilding Mine,2,building
step
Wait for your Lunarfall Excavation to be Built |havebuilding Mine,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_LunarfallExcavation_Finalize"
Finalize the Level 2 Lunarfall Excavation |havebuilding Mine,2,active
step
click True Iron Deposit##237358
click Blackrock Desposit##232542+
Mine #500# Draenic Stones |achieve 9453 |goto Lunarfall/24 69.1,67.0
|tip Click the ore nodes inside your Lunarfall Excavation in your garrison. Also, if you have the Mining profession, you can get Draenic Stone by mining in any Draenor zone.
_And_
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Excavation, Level 3##111996 |condition itemcount(111996) > 0 or hasblueprint("Mine",3)
step
use Garrison Blueprint: Lunarfall Excavation, Level 3##111996
Learn the Lunarfall Excavation, Level 3 Blueprint |condition hasblueprint("Mine",3)
step
#include "Garrison_ArchitectTable"
Click your Lunarfall Excavation
Click _Upgrade_
Upgrade your Lunarfall Excavation to Level 3 |havebuilding Mine,3,building
step
Wait for your Lunarfall Excavation to be Built |havebuilding Mine,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_LunarfallExcavation_Finalize"
Finalize the Level 3 Lunarfall Excavation |havebuilding Mine,3,active
step
Congratulations, you've finished upgrading your Lunarfall Excavation!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Herb Garden",{
description="\nThis guide will walk you through creating and upgrading the Herb Garden Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
_And_
Upgrade your Garrison to Level 2 |condition garrisonlvl() >= 2
|tip Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_HerbGarden_Talk", npc="Naron Bloomthistle##85344"
accept Clearing the Garden##36404
step
kill 8 Lunarfall Raccoon##85341 |q 36404/1 |goto Lunarfall 57.80,59.10
step
#include "Garrison_HerbGarden_Talk", npc="Naron Bloomthistle##85344"
turnin Clearing the Garden##36404 |goto 58.90,53.46
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 2##109577 |condition itemcount(109577) > 0 or hasblueprint("Farm",2)
step
use Garrison Blueprint: Herb Garden, Level 2##109577
Learn the Herb Garden, Level 2 Blueprint |condition hasblueprint("Farm",2)
step
#include "Garrison_ArchitectTable"
Click your Herb Garden
Click _Upgrade_
Upgrade your Herb Garden to Level 2 |havebuilding Farm,2,building
step
Wait for your Herb Garden to be Built |havebuilding Farm,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_HerbGarden_Finalize"
Finalize the Level 2 Herb Garden |havebuilding Farm,2,active
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
_And_
Click the Herbs in your _Herb Garden_:
Gather #500# Draenic Seeds |achieve 9454 |goto Lunarfall/0 57.8,58.6
|tip Click the various herbs in your Herb Garden in your garrison. Also, if you have the Herbalism profession, you can get Draenic Seeds by farming herbs in any Draenor zone.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 3##111997 |condition itemcount(111997) > 0 or hasblueprint("Farm",3)
step
use Garrison Blueprint: Herb Garden, Level 3##111997
Learn the Herb Garden, Level 3 Blueprint |condition hasblueprint("Farm",3)
step
#include "Garrison_ArchitectTable"
Click your Herb Garden
Click _Upgrade_
Upgrade your Herb Garden to Level 3 |havebuilding Farm,3,building
step
Wait for your Herb Garden to be Built |havebuilding Farm,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_HerbGarden_Finalize"
Finalize the Level 3 Herb Garden |havebuilding Farm,3,active
step
Congratulations, you've finished upgrading your Herb Garden!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Menagerie",{
description="\nThis guide will walk you through creating and upgrading the Menagerie Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
_And_
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
talk Audrey Burnhep##63596
Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
step
talk Audrey Burnhep##63596
learnpet Snowshoe Rabbit##7560 |goto 69.48,25.15
|tip Train it from her.
step
talk Audrey Burnhep##63596
accept Learning the Ropes##31591 |goto 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Win a Pet Battle |q 31591/1 |goto 70.1,23.4
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Audrey Burnhep##63596
turnin Learning the Ropes##31591 |goto 69.48,25.15
accept On The Mend##31592 |goto 69.48,25.15
step
talk Jenova Stoneshield##11069
Tell her: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31592/1 |goto 67.3,37.7
step
talk Audrey Burnhep##63596
turnin On The Mend##31592 |goto 69.48,25.15
accept Level Up!##31821 |goto 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Raise a Battle Pet to level 3 |q 31821/1 |goto 70.1,23.4
|tip Keep battling critters around this area to accomplish this.
step
talk Audrey Burnhep##63596
turnin Level Up!##31821 |goto 69.48,25.15
turnin Audrey Burnhep##32008 |goto 69.48,25.15 |only if haveq(32008)
accept Got one!##31593 |goto 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Fawn.
|tip When it reaches 35% health or lower, use your Trap ability to capture it.
Catch a Pet |q 31593/1 |goto Elwynn Forest/0 32.65,50.65
step
talk Audrey Burnhep##63596
turnin Got one!##31593 |goto Stormwind City/0 69.48,25.15
step
talk Lio the Lioness##85418
accept Unearthed Magic##38241 |goto Lunarfall/0 28.55,39.05
step
click Strange Stone##240357
|tip It looks like a huge blue crystal sitting in a mining cart in front of your Lunarfall Excavation Garrison building.
collect Strange Stone##122458 |q 38241/1 |goto Lunarfall/0 65.8,42.4
step
talk Lio the Lioness##85418
turnin Unearthed Magic##38241 |goto Lunarfall/0 28.55,39.05
step
use Ultimate Battle-Training Stone##122457
Raise a Battle Pet to _Level 25_
|tip You can choose whichever you want.
Raise _3_ Battle Pets to _Level 25_
|tip Once you have at least one level 25 Battle Pet, talk to Erris the Collector in front of your Menagerie. She offers a daily quest that awards stones to help level your other Battle Pets faster.
Click Once You've Done This |confirm |only if not completedq(36423)
step
label "Pets_Versus_Pests"
talk Lio the Lioness##85418
accept Pets Versus Pests##36423 |goto Lunarfall/0 28.55,39.05
step
clicknpc Carrotus Maximus##85420
Engage in a pet battle
Defeat Carrotus Maximus |q 36423/1 |goto Lunarfall/0 57.71,60.13
step
clicknpc Gnawface##85419
Engage in a pet battle
Defeat Gnawface |q 36423/3 |goto Lunarfall/0 60.13,77.82
step
clicknpc Gorefu##85463
Engage in a pet battle
Defeat Gorefu |q 36423/2 |goto Lunarfall/0 57.75,21.80
step
Win #150# Pet Battles in Draenor |achieve 9463 |or
|tip Accomplish this by completing the quest goals for the "Pets Versus Pests" quest, then abandoning the quest. Keep accepting the quest, completing the battles in the previous few guide steps, then abandoning the quest so you can do it again.  Doing this repeatedly will allow you to earn this achievement very quickly and easily.  The achievement is required in order to unlock the Menagerie, Level 3 Blueprint.
|tip When doing this quest repeatedly, use 1 level 25 pet to win the battles, and 2 lower level pets. Simply bring the lower level pets out once each battle and they will get a lot of experience to help level them fast.
|tip Alternatively, talk to Erris the Collector in front of your Menagerie. She offers a daily quest that awards stones to help level your other Battle Pets faster.
|tip Lastly, you can buy level 25 Battle Pets from the Auction House, if you'd like.
|tip Talk to Lio the Liones at your Menagerie to heal and resurrect your pets.
_
If you need to win more pet battles:
Click to Redo the _"Pets Versus Pests"_ Quest |confirm |next "Pets_Versus_Pests" |or
|only if not completedq(36423) or achieved(9463)
step
clicknpc Lio the Lioness##85418
turnin Pets Versus Pests##36423 |goto Lunarfall/0 28.55,39.05
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 2##111998 |condition itemcount(111998) > 0 or hasblueprint("PetStable",2)
step
use Garrison Blueprint: Menagerie, Level 2##111998
Learn the Menagerie, Level 2 Blueprint |condition hasblueprint("PetStable",2)
step
#include "Garrison_ArchitectTable"
Click your Menagerie
Click _Upgrade_
Upgrade your Menagerie to Level 2 |havebuilding PetStable,2,building
step
Wait for your Menagerie to be Built |havebuilding PetStable,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
click Finalize Garrison Plot##236190 |goto Lunarfall/0 30.1,40.1
|tip It looks like a huge floating scroll in a column of yellow light.
Finalize the Level 2 Menagerie |havebuilding PetStable,2,active
step
Win #150# Pet Battles in Draenor |achieve 9463 |or
|tip Accomplish this by completing the daily pet battles at your Menagerie Garrison Building each day. You can also fight pet battles in any Draenor zone to get this done faster.
|only if completedq(36423) and not achieved(9463)
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 3##111999 |condition itemcount(111999) > 0 or hasblueprint("PetStable",3)
step
use Garrison Blueprint: Menagerie, Level 3##111999
Learn the Menagerie, Level 3 Blueprint |condition hasblueprint("PetStable",3)
step
#include "Garrison_ArchitectTable"
Click your Menagerie
Click _Upgrade_
Upgrade your Menagerie to Level 3 |havebuilding PetStable,3,building
step
Wait for your Menagerie to be Built |havebuilding PetStable,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
click Finalize Garrison Plot##236190 |goto Lunarfall/0 30.1,40.1
|tip It looks like a huge floating scroll in a column of yellow light.
Finalize the Level 3 Menagerie |havebuilding PetStable,3,active
step
Congratulations, you've finished upgrading your Menagerie!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Lunarfall Shipyard",{
description="\nThis guide will walk you through creating and upgrading the Lunarfall Shipyard Garrison building.",
condition_suggested=function() return level >= 40 and not completedq(39068) and garrisonlvl()>0 end,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
|tip You will automatically accept this quest.
step
talk King Varian Wrynn##92219
turnin Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
accept We Need a Shipwright##38257 |goto Lunarfall/0 32.0,31.9
step
talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 52.9,9.6 < 100 |noway |c |q 38257
accept Clearing the Docks##37921
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Exarch Naielle##90180
turnin We Need a Shipwright##38257 |goto Gorgrond/0 52.6,9.8
accept Derailment##38254 |goto Gorgrond/0 52.6,9.8
stickystart "clearing_the_docks"
step
Run across this bridge |goto Gorgrond/0 51.7,13.2 < 30 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q 38254/2 |goto Gorgrond/0 51.4,14.3
step
Run across this bridge |goto Gorgrond/0 50.1,14.3 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground next to a small wall.
collect Explosive Charges##122515 |q 38254/1 |goto Gorgrond/0 49.8,12.7
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 37921/1 |goto Gorgrond/0 52.3,11.0
|tip You will see a progress bar in your quest tracking area.
step
Follow the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
talk Exarch Yrel##90177
turnin Derailment##38254 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38255/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38255/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38255/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38255/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q 38255/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 56.8,17.2
step
Follow the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38256/1 |goto Gorgrond/0 50.7,16.1
step
Enter the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38256/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38258 |goto Gorgrond/0 50.6,16.7
step
talk King Varian Wrynn##92219
turnin Nothing Remains##38258 |goto Lunarfall/0 32.0,31.9
accept All Hands on Deck##38259 |goto Lunarfall/0 32.0,31.9
step
Go through the doorway |goto Lunarfall/0 26.8,48.9 < 20 |walk
talk Solog Roark##91242
turnin All Hands on Deck##38259 |goto Shadowmoon Valley D/0 27.5,11.3
step
talk Merreck Vonder##93822
accept Let's Get To Work##39082 |goto Shadowmoon Valley D/0 28.2,10.6
step
talk Solog Roark##94429
turnin Let's Get To Work##39082 |goto Shadowmoon Valley D/0 29.8,10.6
accept Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q 39054/1
step
talk Solog Roark##94429
turnin Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
accept Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.6
step
talk Yanas Seastrike##95002
turnin Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.7
accept Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
step
talk Yanas Seastrike##95002
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q 39055/1 |goto Shadowmoon Valley D/0 29.8,10.7
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport Once Construction is Complete |q 39055/2 |goto Shadowmoon Valley D/0 30.0,10.7
|tip It takes 1 minute to build after you begin the work order.
step
talk Yanas Seastrike##95002
turnin Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
accept The Invasion of Tanaan##38435 |goto Shadowmoon Valley D/0 29.8,10.7
step
Meet with Khadgar |q 38435/1 |goto Shadowmoon Valley D/0 27.6,10.3
step
talk Exarch Yrel##90177
Tell her _"Let us begin the invasion."_
Speak With Yrel |q 38435/2 |goto Shadowmoon Valley D/0 27.6,10.2
step
talk Exarch Yrel##91913
turnin The Invasion of Tanaan##38435 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##38436 |goto Tanaan Jungle/0 73.4,71.1
step
Follow the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q 38436/1 |goto Tanaan Jungle/0 68.9,64.9
step
Follow the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q 38436/2 |goto Tanaan Jungle/0 74.0,56.1
step
Follow the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Exarch Naielle##91923
turnin Obstacle Course##38436 |goto Tanaan Jungle/0 69.5,53.0
accept In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 69.5,53.0
step
Follow the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q 38444/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q 38444/2 |goto Tanaan Jungle/0 64.3,51.6
step
Meet Up With Exarch Naielle |q 38444/3 |goto Tanaan Jungle/0 62.5,54.2
step
talk Exarch Naielle##91923
turnin In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 62.5,54.2
accept The Assault Base##38445 |goto Tanaan Jungle/0 62.5,54.2
step
Follow the dirt path up |goto Tanaan Jungle/0 58.0,53.3 < 30 |only if walking
Continue following the path up |goto Tanaan Jungle/0 57.1,55.9 < 20 |only if walking
Follow Naielle |q 38445/1 |goto Tanaan Jungle/0 57.6,59.2
step
clicknpc Alliance Banner##120954
|tip It looks like a yellow hanging flag with the Alliance lion logo on it.
Plant the Flag to Build the Base |q 38445/2 |goto Tanaan Jungle/0 57.5,59.2
step
talk Skyguard Thann##90960
fpath Lion's Watch |goto Tanaan Jungle/0 57.6,58.8
step
Enter the building |goto Tanaan Jungle/0 58.2,60.0 < 20 |walk
talk Exarch Yrel##90309
turnin The Assault Base##38445 |goto Tanaan Jungle/0 58.5,60.3
accept Shipyard Report##39422 |goto Tanaan Jungle/0 58.5,60.3
step
Go through the doorway |goto Lunarfall/0 26.7,49.0 < 20 |walk
Follow the path down |goto Lunarfall/0 16.2,28.8 < 30 |only if walking
talk Merreck Vonder##93822
turnin Shipyard Report##39422 |goto Shadowmoon Valley D/0 28.2,10.6 |condition completedq(39056)
accept Naval Commander##39056 |goto Shadowmoon Valley D/0 28.2,10.6
step
Follow the path |goto Shadowmoon Valley D/0 27.9,11.3 < 20 |only if walking
Meet Merreck Vonder at Your Fleet Command Table |q 39056/1 |goto Shadowmoon Valley D/0 28.2,11.7
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Click the _Yellow Anchor Icon_ on the map
Drag _"The Hungry Riverbeast"_ to the mission screen
|tip Drag your ship to the yellow pulsing ship icon in the middle of the ship mission area.
Click the _Start Mission_ button
Start a Naval Mission |q 39056/2 |goto Shadowmoon Valley D/0 28.2,11.7
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Click the _View Completed Missions_ button
|tip It takes 1 minute to complete the mission after you started it.
Click the _Rewards Chest_
Click the _Next_ button
Complete a Naval Mission |q 39056/3 |goto Shadowmoon Valley D/0 28.2,11.7
step
talk Merreck Vonder##93822
turnin Naval Commander##39056 |goto Shadowmoon Valley D/0 28.2,11.7
accept Destroying the Competition##39404 |goto Shadowmoon Valley D/0 28.2,11.7
step
use Ship Blueprint: Destroyer##126900
Learn the Ship Blueprint: Destroyer |q 39404/1
step
Follow the path |goto Shadowmoon Valley D/0 28.7,11.1 < 30 |only if walking
talk Yanas Seastrike##95002
Tell him _"Start construction on our first destroyer."_
Click _Start Work Order_
click Alliance Destroyer Ship##243935
|tip It's a big metal and wooden ship sitting on the beach nearby. It takes 1 minute to build after you start the work order.
Build a Destroyer at Your Shipyard |q 39404/2 |goto Shadowmoon Valley D/0 29.8,10.7
step
Run up the path |goto Shadowmoon Valley D/0 28.8,11.9 < 20 |only if walking
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Click the _Yellow Anchor Icon_ on the map
Drag your _Ships_ to the mission screen
|tip Drag both of your ships to the yellow pulsing ship icons in the middle of the ship mission area.
Click the _Start Mission_ button
Complete the Mission
|tip It takes 38 seconds to complete the mission after you start it. Click the Fleet Command Table again and complete the mission.
Complete the Naval Mission: A Little Combat |q 39404/3 |goto Shadowmoon Valley D/0 28.2,11.7
step
talk Merreck Vonder##93822
turnin Destroying the Competition##39404 |goto Shadowmoon Valley D/0 28.2,11.7
accept If At First You Fail, Try Again!##39655 |goto Shadowmoon Valley D/0 28.2,11.7
step
Follow the path |goto Shadowmoon Valley D/0 28.7,11.1 < 30 |only if walking
talk Yanas Seastrike##95002
Tell him _"I would like to build another destroyer."_
Click _Start Work Order_
click Alliance Destroyer Ship##243935
|tip It's a big metal and wooden ship sitting on the beach nearby. It takes 1 minute to build after you start the work order.
Build Another Destroyer Ship |q 39655/1 |goto Shadowmoon Valley D/0 29.8,10.7
step
Run up the path |goto Shadowmoon Valley D/0 28.8,11.9 < 20 |only if walking
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Click the _Yellow Anchor Icon_ on the map
Drag your _Ships_ to the mission screen
|tip Drag both of your ships to the yellow pulsing ship icons in the middle of the ship mission area.
Click the _Start Mission_ button
Complete the Mission
|tip It takes 1 minute to complete the mission after you start it. Click the Fleet Command Table again and complete the mission.
Complete the Naval Mission: The Second Time Is the Charm |q 39655/2 |goto Shadowmoon Valley D/0 28.2,11.7
step
talk Merreck Vonder##93822
turnin If At First You Fail, Try Again!##39655 |goto Shadowmoon Valley D/0 28.2,11.7
accept Equipping Our Fleet##39666 |goto Shadowmoon Valley D/0 28.2,11.7
step
Follow the path down |goto Shadowmoon Valley D/0 27.9,11.2 < 20 |only if walking
talk Salty Jorren##93812
Tell him _"I hear you're and expert on naval equipment. Have some time to help me out?"_
Find Salty Jorren on the Docks |q 39666/1 |goto Shadowmoon Valley D/0 28.7,10.9
step
click Naval Equipment Blueprint: Blast Furnace##243938
|tip It looks like a tan scroll laying open on a flat wooden cart.
collect Equipment Blueprint: Blast Furnace##128274 |q 39666/2 |goto Shadowmoon Valley D/0 28.9,9.6
step
talk Salty Jorren##93812
turnin Equipping Our Fleet##39666 |goto Shadowmoon Valley D/0 28.7,10.9
accept A True Naval Commander##39665 |goto Shadowmoon Valley D/0 28.7,10.9
step
use Blast Furnace##127882
Click your _Destroyer_ ship
Click the available _Equipment Slot_
|tip The equipment slot currently has the Felsmoke Launcher equipment, so choose to replace it.
Equip a Blast Furnace on a Ship |q 39665/1
step
Run up the path |goto Shadowmoon Valley D/0 28.8,11.9 < 20 |only if walking
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Click the _White and Brown Icon_ on the map
Drag your _Ships_ to the mission screen
|tip Drag both of your ships to the yellow pulsing ship icons in the middle of the ship mission area.
Click the _Start Mission_ button
Complete the Naval Blockade Mission: South Sea |q 39665/2 |goto Shadowmoon Valley D/0 28.2,11.7
step
talk Merreck Vonder##93822
turnin A True Naval Commander##39665 |goto Shadowmoon Valley D/0 28.2,11.7
accept I Sunk Your Battleship##39601 |goto Shadowmoon Valley D/0 28.2,11.7
step
Enter the building |goto Tanaan Jungle/0 58.1,59.9 < 20 |walk
Find Vindicator Krethos |q 39601/1 |goto Tanaan Jungle/0 58.4,60.5
step
Earn Honored Reputation with the Hand of the Prophet Faction |q 39601/2
|tip Use the Tanaan Jungle (100) Main Questline guide, the Hand of the Prophet Dailies guide, and the Tanaan Jungle (6.2) Garrison Campaign guides to accomplish this.
step
talk Vindicator Krethos##90974
buy Ship Blueprint: Battleship##128492 |q 39601 |goto Tanaan Jungle/0 58.4,60.5
step
use Ship Blueprint: Battleship##128492
Learn the Ship Blueprint: Battleship |q 39601/3
step
talk Vindicator Krethos##90974
turnin I Sunk Your Battleship##39601 |goto Tanaan Jungle/0 58.4,60.5
step
Go through the doorway |goto Lunarfall/0 26.5,48.9 < 30 |walk
Follow the path down |goto Shadowmoon Valley D/0 27.3,14.2 < 30 |only if walking
talk Merreck Vonder##93822
accept Upgrading The Fleet##39067 |goto Shadowmoon Valley D/0 28.2,11.7
stickystart "garrison_resources"
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Send Boats on Missions
Complete #15# Naval Missions |q 39067/1 |goto Shadowmoon Valley D/0 28.2,11.8
You can build more ships at [Shadowmoon Valley D/0 29.8,10.7]
|tip Talk to Yanas Seastrike to build more ships, so you can complete more Naval missions faster. You can have 6 total ships in your fleet with a level 1 Shipyard.
|tip Oil can be gained from questing and killing Rares in Tanaan Jungle.
|tip Use the "Hand of the Prophet Dailies" daily guide to gain Oil.
You can purchase ship upgrades at [Shadowmoon Valley D/0 28.68,10.85]
|tip Talk to Salty Jorren to buy ship upgrades for your ships. These are used to counter abilities of the enemy ships while on missions.
|tip Garrison Resources can be gained by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs.
step
label "garrison_resources"
Collect #1000# Garrison Resources |q 39067/2
|tip Do this by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs. You can also collect Garrison Resources by doing Lumber Mill work orders, if you have a Lumber Mill Garrison building.
step
talk Merreck Vonder##93822
turnin Upgrading The Fleet##39067 |goto Shadowmoon Valley D/0 28.2,11.7
|tip You will need at least 1,000 Gold to be able to turn in this quest.
accept Naval Domination##39068 |goto Shadowmoon Valley D/0 28.2,11.7
stickystart "garrison_resources_2"
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Send Boats on Missions
Complete #25# Naval Treasure Missions |q 39068/1 |goto Shadowmoon Valley D/0 28.2,11.8
|tip These missions have a treasure chest icon on the missions map.
You can build more ships at [Shadowmoon Valley D/0 29.8,10.7]
|tip Talk to Yanas Seastrike to build more ships, so you can complete more Naval missions faster. You can have 8 total ships in your fleet with a level 2 Shipyard.
|tip Oil can be gained from questing and killing Rares in Tanaan Jungle.
|tip Use the "Hand of the Prophet Dailies" daily guide to gain Oil.
You can purchase ship upgrades at [Shadowmoon Valley D/0 28.68,10.85]
|tip Talk to Salty Jorren to buy ship upgrades for your ships. These are used to counter abilities of the enemy ships while on missions.
|tip Garrison Resources can be gained by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs.
step
label "garrison_resources_2"
Collect #2500# Garrison Resources |q 39068/2
|tip Do this by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs. You can also collect Garrison Resources by doing Lumber Mill work orders, if you have a Lumber Mill Garrison building.
step
talk Merreck Vonder##93822
turnin Naval Domination##39068 |goto Shadowmoon Valley D/0 28.2,11.7
|tip You will need at least 2,500 Gold to be able to turn in this quest.
step
Congratulations, you've finished upgrading your Lunarfall Shipyard!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Quest Guide",{
description="\nThis guide will walk you through completing the quests found in your Garrison.",
condition_suggested=function() return level >= 40 and level <= 50 and not completedq(38408) and garrisonlvl()>0 end,
},[[
step
#include "Garrison_KenLoggin"
accept Lost Lumberjacks##34820
step
talk Lost Packmule##79966
|tip The Packmule patrols a short area around the road.
turnin Lost Lumberjacks##34820 |goto Shadowmoon Valley D/0 39.82,30.07
accept Gloomshade Grove##33263 |goto Shadowmoon Valley D/0 39.82,30.07
stickystart "Gloomshade"
step
Search Gloomshade Grove for Clues |q 33263/1
step
talk Phlox##74667
Speak With Phlox |q 33263/2 |goto 39.27,25.64
step
Follow the path up |goto 38.9,25.0 < 20 |only if walking
click Alliance Sword##224229
|tip It looks like a sword, shield, and boot laying on a big rock in the water.
Investigate the Pond |q 33263/3 |goto 39.54,22.65
step
talk Phlox##74667
Speak With Phlox |q 33263/4 |goto 39.56,22.78
step
Follow the path up |goto 39.1,22.7 < 20 |only if walking
click Alliance Shield##223720
|tip It looks like a shield laying on the ground.
Investigate the Field |q 33263/5 |goto 39.84,19.92
step
talk Phlox##74667
Speak With Phlox |q 33263/6 |goto 39.86,19.98
step
clicknpc Dead Packmule##74193
|tip It looks like a donkey laying on the ground with a bunch of supplies strapped to its back.
Investigate the Beach |q 33263/7 |goto 41.83,18.00
step
talk Phlox##74667
Speak With Phlox |q 33263/8 |goto 41.93,18.01
step
Enter the cave |goto 46.4,15.3 < 10 |walk
Investigate Gloomshade Grotto |q 33263/9 |goto Shadowmoon Valley D/0 47.0,15.1
step
kill Phlox##74667 |q 33263/10 |goto 47.1,14.8
step
talk Jarrod Hamby##73877
turnin Gloomshade Grove##33263 |goto 47.09,14.41
accept Game of Thorns##33271 |goto 47.09,14.41
step
talk Ryan Metcalf##74547
accept Prune the Podlings##34806 |goto 47.04,14.35
step
label "Gloomshade"
Leave the cave |goto 46.4,15.3 < 10 |walk
kill Podling Spitter##74147+, Podling Squirt##74148+, Podling Nibbler##74146+, Podling Tender##74149+
Kill #15# Podlings |q 34806/1 |goto 46.25,15.41
step
Click the Complete Quest Box
turnin Prune the Podlings##34806
step
Follow the path up |goto 36.8,21.9 < 20 |only if walking
kill King Deathbloom##73888 |q 33271/1 |goto 35.7,19.8
step
talk Shelly Hamby##76748
turnin Game of Thorns##33271 |goto 36.39,19.28
accept Shelly Hamby##35625 |goto 36.39,19.28
step
#include "Garrison_BBoard"
accept The Southern Wilds##35459
step
talk Prelate Reenu##76200
turnin The Southern Wilds##35459 |goto Shadowmoon Valley D/0 56.96,57.49
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
#include "Garrison_LtThorn"
accept Proving Grounds##37433
step
#include "Garrison_LtThorn"
Tell her _"Enter the Proving Grounds"_
Speak with Lieutenant Thorn to Enter Proving Grounds |q 37433/1
step
Wait in the queue to enter the scenario
Enter the Proving Grounds |goto Proving Grounds/1 51.5,82.4 < 50 |noway |c |q 37433
step
click Soulwell |goto Proving Grounds/1 53.8,84.2 < 5
|tip It looks like a small green-glowing bowl on a pedastal. It will give you a healthstone you can use during the fights.
collect 1 Healthstone##5512 |c
only if haveq(37433)
step
talk Trial Master Rotun##61636
Select a trial based on your spec (_Damage_, _Tank_, or _Healer_)
|tip You will have to defeat 5 waves of enemies.
Speak to Rotun |scenariogoal 23900 |goto Proving Grounds 50.28,82.32
step
Defeat the waves of enemies that attack you
|tip Each wave will get progressively more difficult to kill.
Complete a Bronze Trial |q 37433/2
step
Click the _Scenarios_ button around your minimap
|tip It looks like a small green eye button.
Choose _"Leave Instance Group"_
Exit the Proving Grounds |goto Lunarfall/0 31.4,32.6 < 200 |c |noway
only if haveq(37433)
step
#include "Garrison_LtThorn"
turnin Proving Grounds##37433
accept New Goods##38408
step
#include "Garrison_Crowler"
Find Sergeant Crowler |q 38408/1
step
Click the Complete Quest Box
turnin New Goods##38408
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Starter Guide",{
description="\nThis guide will provide a tutorial for Garrison Followers.",
},[[
step
label "start"
Choose a section to start:
_Assigning Followers to Garrison Buildings_ |confirm |next "assign"
_Follower Abilities, Traits, and the Lunarfall Inn_ |confirm |next "ability"
_Leveling Followers_ |confirm |next "leveling"
step
label "assign"
Assigning a Follower to a Garrison building yields more resources
Each Follower has random traits and some have a profession that allows them to be assigned to a building
#include "Garrison_ArchitectTable"
Click on your buildings and click the _"+"_ sign to assign an available Follower to that building
Click here to return to the _Main Menu_ |confirm |next "start"
step
label "ability"
_Follower Abilities_
Abilities allow Followers to counter enemies during Garrison Missions. Doing so greatly increases the chance of successfully completing the mission
These abilities are based on class but can be randomly assigned upon gaining that Follower
Leveling a Follower up to Epic quality will grant them a second ability
Click here to continue to _Follower Traits_ |confirm
Click here to return to the _Main Menu_ |confirm |next "start"
step
_Follower Traits_
Traits are special bonuses to your Followers or Garrison missions
Some of these include increased mission success chance if paired with a certain environment or a specific race
Others include reduced mission time, increased experience gain, increased Garrison resources, or increased Gold
Leveling a Follower up to Rare quality will grant them a second Trait
Leveling a Follower to Epic quality will grant them a third trait
Click here to continue to _Lunarfall Inn_ info |confirm
Click here to return to the _Main Menu_ |confirm |next "start"
step
_Lunarfall Inn Info_
After reaching Level 2 with the Lunarfall Inn, you can search for specific Follower abilities or traits and then recruit that Follower
#include "Garrison_Medium_Building", action="talk Lysa Serion##84947", building="Inn"
Click a specific Ability or Trait from the drop down menus and then search
Hire whichever Follower you like best
You can recruit a new Follower this way once every week
Click here to return to the _Main Menu_ |confirm |next "start"
step
label "leveling"
The best way to level up your Followers is through Garrison Missions
Mission bonuses are listed on the right side of each mission. Look for mission that grant _Bonus Follower XP_
#include "Garrison_CommandTable"
Send your Followers on missions to level them
Click here to return to the _Main Menu_ |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Abu'gar",{
keywords={"abu'gar","blood","death","knight","dark","command","wild","aggression"},
description="\nThis guilde will walk you through obtaining Abu'gar as a Garrison Follower.",
},[[
step
click Abu'Gar's Favorite Lure##233642
collect 1 Abu'Gar's Favorite Lure##114245 |goto Nagrand D/0 38.36,49.33
only if not completedq(36711)
step
click Abu'Gar's Missing Reel##233506
collect 1 Abu'Gar's Finest Reel##114243 |goto Nagrand D/0 85.43,38.74
only if not completedq(36711)
step
Follow this path |goto Nagrand D/0 69.7,63.8 < 20 |only if walking
Continue along the path |goto Nagrand D/0 66.4,62.9 < 20 |only if walking
click Abu'Gar's Vitality##233157
collect 1 Abu'Gar's Vitality##114242 |goto Nagrand D/0 65.82,61.14
|tip You will have to drop down to the ledge.
only if not completedq(36711)
step
talk Abu'gar##82746
accept Abu'Gar##36711 |goto 67.18,56.01
step
Congratulations, you now have Abu'gar as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Admiral Taylor",{
keywords={"admiral","taylor","arms","warrior","recklessness","timed","battle","inscription"},
description="\nThis guilde will walk you through obtaining Admiral Taylor as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
Build an Outpost in Spires of Arak |condition haveq(35286) or completedq(35286)
|tip Use the Leveling guides to accomplish this.
step
talk Jasper Fel##81949
accept Old Friends##35293 |goto Spires of Arak/0 39.8,60.7
step
talk Jasper Fel##81949
turnin Old Friends##35293 |goto Spires of Arak/0 39.2,49.0
accept I See Dead People##35329 |goto Spires of Arak/0 39.2,49.0
step
kill Spectral Laborer##82055+, Restless Foreman##82083+
collect Bryan Finn's Schematic##113095 |q 35329/1 |goto Spires of Arak/0 37.5,49.3
step
talk Bryan Finn##82100
Select _"Show the schematic to Bryan"_
Show Bryan Finn the Schematic |q 35329/2 |goto 39.0,48.8
step
talk Bryan Finn##82100
turnin I See Dead People##35329 |goto 39.0,48.8
accept A Parting Favor##35339 |goto 39.0,48.8
step
kill Complicit Guard##82235+, Coerced Villager##82240+, Haunted Hound##82040+, Ghastly Nightwatch##82038+, Ghastly Guard##82028+, Lingering Rifleman##82029+, Tormented Villager##82027+
collect 6 Spectral Essence##113106 |q 35339/1 |goto 37.86,51.60
step
Enter the Inn |goto Spires of Arak/0 37.7,51.3 < 10 |walk
Go upstairs |goto Spires of Arak/0 37.5,50.7 < 8 |walk
talk Alice Finn##82110
Select _"Show the spectral essences to Alice"_
Free Alice Finn's Mind |q 35339/2 |goto 37.6,51.0
step
talk Alice Finn##82110
turnin A Parting Favor##35339 |goto 37.6,51.0
accept A Piece of the Puzzle##35353 |goto 37.6,51.0
step
Go downstairs |goto Spires of Arak/0 37.5,50.7 < 8 |walk
Go down to the basement |goto Spires of Arak/0 37.4,50.8 < 8 |walk
kill Watch Commander Branson##82136 |q 35353/1 |goto 37.6,51.0
step
talk Alice Finn##82124
turnin A Piece of the Puzzle##35353 |goto 37.6,51.0
accept Second in Command##35380 |goto 37.54,50.76
step
Run up the stairs |goto Spires of Arak 37.4,50.8 < 10 |walk
Leave the building |goto Spires of Arak 37.7,51.3 < 10 |walk
Enter the building |goto Spires of Arak 37.4,53.5 < 10 |walk
talk Sir Harris##82194
turnin Second in Command##35380 |goto 37.70,53.81
accept Punishable by Death##35407 |goto 37.70,53.81
step
talk Lady Claudia##82212
accept Prime the Cannons##35408 |goto 37.66,53.87
stickystart "killtraitors"
stickystart "armorycannonballs"
step
Leave the building |goto Spires of Arak 37.4,53.5 < 10 |walk
click Armory Cannon##232401
|tip It looks like a gray cannon sitting in a building doorway.
collect Armory Cannon##113127 |q 35408/2 |goto 36.43,53.53
step
label "armorycannonballs"
click Cannonball##232360
|tip They looks like dark gray balls laying on the ground around this area.
collect 10 Armory Cannonball##113122 |q 35408/1 |goto 36.95,53.25
step
label "killtraitors"
kill Complicit Guard##82235+, Renegade Cannoneer##82232+
Kill #8# Traitors |q 35407/1 |goto 36.93,53.20
step
Enter the building |goto Spires of Arak 37.4,53.5 < 10 |walk
talk Sir Harris##82194
turnin Punishable by Death##35407 |goto 37.68,53.78
step
talk Lady Claudia##82212
turnin Prime the Cannons##35408 |goto 37.64,53.85
accept Admiral Taylor##35482 |goto 37.64,53.85
step
Leave the building |goto Spires of Arak 37.4,53.5 < 10 |walk
Go through the doorway |goto Spires of Arak 37.0,55.2 < 10 |walk
Find Admiral Taylor |q 35482/1 |goto 36.82,56.90
step
Watch the dialogue
kill Soulscythe##82314 |q 35482/2 |goto 36.82,56.90
kill Ephial##82320 |q 35482/3 |goto 36.81,57.42
step
talk Admiral Taylor##82375
turnin Admiral Taylor##35482 |goto 36.82,56.94
step
talk Jasper Fel##82403
accept Honoring a Hero##35549 |goto 36.85,56.74
step
talk Lieutenant Willem##81929
turnin Honoring a Hero##35549 |goto 39.90,60.86
step
talk Admiral Taylor##85080
accept For Old Times' Sake##36353 |goto 39.98,60.66
step
Congratulations, you now have Admiral Taylor as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ahm",{
keywords={"ahm","arms","warrior","heroic","leap","danger","zones","enchanting"},
description="\nThis guilde will walk you through obtaining Ahm as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Ahm##77031
accept Dying Wish##33973 |goto Talador 56.8,26.0
step
kill Blademaster Bralok##76981
collect Ahm's Heirloom##108825 |q 33973/1 |goto Talador 57.0,24.6
step
talk Ahm##77031
turnin Dying Wish##33973 |goto Talador 56.8,26.0
step
talk Ahm##77031
accept Solidarity In Death##36522 |goto Lunarfall 52.8,69.0
step
Congratulations, you now have Ahm as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Aknor Steelbringer",{
keywords={"aknor","steelbringer","arms","warrior","cleave","minion","swarms"},
description="\nThis guilde will walk you through obtaining Aknor Steelbringer as a Garrison Follower.",
},[[
step
In order to recruit this Follower you must defeat _Flamebender Ka'graz_ in the Blackrock Foundry raid without killing Aknor
|tip This must be done on Normal or higher difficulty! It CANNOT be done in LFR.
achieve 8929 |goto Blackrock Foundry/1 18.8,76.8
step
Congratulations, you now have Aknor Steelbringer as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Apprentice Artificer Andren",{
keywords={"apprentice","artificer","andren","arms","warrior","heroic","leap","danger","zones","engineering"},
description="\nThis guilde will walk you through obtaining Apprentice Artificer Andren as a Garrison Follower.",
},[[
step
Routing to Apprentice Artificer Andren |next "Andren" |only if not completedq(34788)
Routing to End |next "Completed" |only if completedq(34788)
stickystart "disclaimer"
step
label "Andren"
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto Shadowmoon Valley D/0 56.51,23.59
step
Follow the winding pathway |goto Shadowmoon Valley D 59.0,24.9 < 20 |only if walking
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
Go up the stairs and follow the trail |goto Shadowmoon Valley D 60.0,26.6 < 20 |only if walking
Discover the Infiltrator's Hideout |q 35552/1 |goto 61.32,25.19
step
kill Sister of Secrets##82881
click Shadow Council Tome of Curses##233229
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
Begin the Ritual |q 34789/1 |goto 66.44,26.16
Defend Hataaru's Spirit |q 34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
click Maladaar's Focusing Lens##
Cross the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20 |only if walking
Plant the Focusing Lens |q 34792/1 |goto 60.58,20.56
step
kill Exarch Othaar##80076, Socrethar##82625
Reveal the Traitor |q 34792/2 |goto 60.48,20.70
Deal with the Traitor |q 34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's to be your Follower:
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
Choose a Follower |q 34788/1 |goto 62.41,26.22
step
label "disclaimer"
This questline allows you to choose one of three followers:
Apprentice Artificer Andren
Rangari Chel
Vindicator Onaala
You cannot earn the other followers after you have chosen one
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
step
label "Completed"
Congratulations, you now have _Apprentice Artificer Andren_ as a Garrison Follower! |only if hasfollower(184)
You have already chosen _Rangari Chel_, you cannot recruit _Apprentice Artificer Andren_ |only if hasfollower(185)
You have already chosen _Vindicator Onaala_, you cannot recruit _Apprentice Artificer Andren_ |only if hasfollower(186)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Artificer Romuul",{
keywords={"artificer","romuul","holy","paladin","rebuke","powerful","spell","jewelcrafting"},
description="\nThis guilde will walk you through obtaining Artificer Romuul as a Garrison Follower.",
},[[
step
talk Romuul##74741 |goto Shadowmoon Valley D/0 42.8,40.4
Tell him _"Of course."_
Defeat the waves of wolves that attack
kill Windfang Matriarch##75434, Windfang Runner##75431+
accept Artificer Romuul##35614 |goto Shadowmoon Valley D/0 42.8,40.4
step
Congratulations, you now have Artificer Romuul as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Blook",{
keywords={"blook","fury","warrior","recklessness","timed","battle","combat","experience"},
description="\nThis guilde will walk you through obtaining Blook as a Garrison Follower.",
},[[
step
_Follow the steep, winding path up to Blook's Overlook_ |goto Gorgrond 42.5,91.0 < 15 |only if walking
talk Blook##78031
Tell him _"What?"_
kill Blook##78031
|tip Defeat Blook in combat and then talk to him again.
accept I Am Blook##34279 |goto Gorgrond 41.2,91.4
step
Congratulations, you now have Blook as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Bruma Swiftstone",{
keywords={"bruma","swiftstone","subtlety","rogue","fan","of","knives","minion","swarms","alchemy"},
description="\nThis guilde will walk you through obtaining Bruma Swiftstone as a Garrison Follower.",
},[[
step
In order to recruit Bruma Swiftstone, you must complete the Garrison mission, _Killing the Corrupted_
|tip Qiana Moonshadow is designed for this mission.
#include "Garrison_CommandTable"
|tip Continue completing garrison missions until Killing the Corrupted is available.
collect Contract: Bruma Swiftstone##114826 |condition itemcount(114826) > 0 or hasfollower(153)
step
use Contract: Bruma Swiftstone##114826
Recruit Bruma Swiftstone |condition hasfollower(153)
step
Congratulations, you now have Bruma Swiftstone as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Cleric Maluuf",{
keywords={"cleric","maluuf","holy","priest","prayer","of","healing","group","damage"},
description="\nThis guilde will walk you through obtaining Cleric Maluuf as a Garrison Follower.",
},[[
step
Become Revered with the Council of Exarchs |condition rep("Council of Exarchs") >= Revered |goto Shadowmoon Valley D/0 48.8,78.0
|tip This can be achieved by completing quests in Draenor zones or farming kills in Socrethar's Rise, Pillars of Fate, or Darktide Roost.
step
talk Vindicator Nuurem##85932
buy Contract: Cleric Maluuf##119162 |condition itemcount(119162) > 0 or hasfollower(459) |goto Stormshield 46.6,76.2
|tip It costs 5,000 Gold.
step
use Contract: Cleric Maluuf##119162
Recruit Cleric Maluuf |condition hasfollower(459)
step
Congratulations, you now have Cleric Maluuf as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Croman",{
keywords={"croman","retribution","paladin","divine","shield","massive","strike"},
description="\nThis guilde will walk you through obtaining Croman as a Garrison Follower.",
},[[
step
Press _I_ and queue for _Bloodmaul Slag Mines HEROIC_
Enter the Bloodmaul Slag Mines dungeon |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c
|tip You gain this Follower by completing the Come With Me If You Want To Live achievement.
step
_Clear all the trash_ on the way to Magmolatus but _don't_ attack him yet
|tip You don't have to clear all the adds but it helps plan for messy mistakes.
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	43.7,54.0	35.9,55.8
path	29.1,55.9
Follow the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
After that _clear the adds_ to Slave Watcher Crushto and _kill_ him
|tip After the fight talk to Croman.
Croman seems to follow the person who freed him so _make sure it's someone_ who will not be likely to die as he despawns if they do
Croman _can be healed_ as well so make sure your healer is aware to watch his health
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	35.9,55.8	43.7,54.0
path	48.2,41.7	53.1,42.1	55.0,46.4
path	53.3,56.9	55.7,59.7
Follow the path |goto Bloodmaul Slag Mines/1 57.1,60.0 < 20 |noway |c
step
_Kill_ Magmolatus and Croman will grab up his sword
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
Follow the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
_Kill_ Roltall and then Gog'rokk
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	34.9,56.0	41.9,55.5
path	43.7,52.2	45.4,45.4	49.1,40.2
path	49.1,33.6	49.1,33.7	49.4,24.5
path	58.8,23.3
Follow the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
achieve 9005
|tip Croman will have some small RP and then you gain the achievement.
Recruit Croman |condition hasfollower(177)
step
Congratulations, you now have Croman as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dagg",{
keywords={"dagg","subtlety","rogue","sap","deadly","minions"},
description="\nThis guilde will walk you through obtaining Dagg as a Garrison Follower.",
},[[
step
click Thunderlord Cage##230498
Free Dagg from his cage |goto Frostfire Ridge/0 65.8,60.8 < 5 |c
only if not completedq(34733)
step
click Thunderlord Cage##230498
Free Dagg from his cage |goto Frostfire Ridge/0 39.5,28.1 < 5 |c
only if not completedq(34733)
step
talk Dagg##79492
accept Services of Dagg##34733 |goto Lunarfall 61.4,74.8
step
Congratulations, you now have Dagg as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Daleera Moonfang",{
keywords={"daleera","moonfang","holy","priest","dispel","magic","debuff"},
description="\nThis guilde will walk you through obtaining Daleera Moonfang as a Garrison Follower.",
},[[
step
In order to recruit Daleera Moonfang, you must complete the Garrison mission, _Rangari Rescue_
#include "Garrison_CommandTable"
|tip Continue completing garrison missions until Rangari Rescue is available.
collect Contract: Daleera Moonfang##112848 |condition itemcount(112848) > 0 or hasfollower(463)
step
use Contract: Daleera Moonfang##112848
Recruit Daleera Moonfang |condition hasfollower(463)
step
Congratulations, you now have Daleera Moonfang as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dawnseeker Rukaryx",{
keywords={"dawnseeker","rukaryx","balance","druid","hurricane","minion","swarms"},
description="\nThis guilde will walk you through obtaining Dawnseeker Rukaryx as a Garrison Follower.",
},[[
step
talk Dawn-Seeker Rilak##86387
buy 1 Contract: Dawnseeker Rukaryx##119248 |condition itemcount(119248) > 0 or hasfollower(462) |goto Stormshield 50.0,61.1
|tip It costs 5000 Gold and 5000 Apexis Crystals.
step
use Contract: Dawnseeker Rukaryx##119248
Recruit Dawnseeker Rukaryx |condition hasfollower(462)
step
Congratulations, you now have Dawnseeker Rukaryx as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Defender Illona",{
keywords={"defender","illona","protection","paladin","reckoning","wild","aggression","bodyguard"},
description="\nThis guilde will walk you through obtaining Defender Illona as a Garrison Follower.",
},[[
step
talk Defender Illona##79979
accept Gatekeepers of Auchindoun##34777 |goto Talador/0 57.43,51.11
step
talk Soulbinder Halaari##79977
Tell her: _"So be it."_
kill Soulbinder Halaari##79977 |q 34777/2 |goto 57.33,52.65
|tip This is a tough fight, you may need a friend to help you.
step
talk Vindicator Dalu##79970
Tell him: _"Very well. Let us fight."_
kill Vindicator Dalu##79970 |q 34777/1 |goto 57.39,52.77
|tip This is a tough fight, you may need a friend to help you.
step
talk Defender Illona##79979
turnin Gatekeepers of Auchindoun##34777 |goto 57.43,51.11
accept The True Path##36519 |goto 57.42,51.12
step
Congratulations, you now have Defender Illona as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Delvar Ironfist",{
keywords={"delvar","ironfist","unholy","death","knight","bone","shield","bodyguard","massive","strike"},
description="\nThis guilde will walk you through obtaining Delvar Ironfist as a Garrison Follower.",
},[[
step
#include "Garrison_LtThorn"
accept Ashran Appearance##36624
step
#include "Garrison_DLongdrink"
Tell him _"Take me to Stormshield in Ashran"_
Speak With Dungar Longdrink |q 36624/1 |goto Lunarfall 47.99,49.81
step
talk Private Tristan##86065
turnin Ashran Appearance##36624 |goto Stormshield 31.99,49.94
accept Host Howell##36626 |goto Stormshield 31.99,49.94
step
talk Lieutenant Howell##86069
turnin Host Howell##36626 |goto 35.52,75.81
accept Inspiring Ashran##36629 |goto 35.52,75.81
step
talk Jaesia Rosecheer##85956
Speak With Jaesia Rosecheer |q 36629/1 |goto 35.72,77.91
step
talk Vindicator Nuurem##85932
Speak With Vindicator Nuurem |q 36629/3 |goto 46.57,76.70
step
talk Knewbie McGreen##86148
Speak With a new recruit |q 36629/2 |goto 62.65,41.71
step
talk Lieutenant Howell##86069
turnin Inspiring Ashran##36 |goto 35.52,75.83
accept A Surly Dwarf##36630 |goto 35.52,75.83
step
talk Delvar Ironfist##86084
turnin A Surly Dwarf##36630 |goto Stormshield 48.0,30.6
accept Delvar Ironfist##36633 |goto Stormshield 48.0,30.6
step
Congratulations, you now have Delvar Ironfist as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fen Tao",{
keywords={"fen","tao","mistweaver","monk","magic","debuff","skinning","brew","aficionado"},
description="\nThis guilde will walk you through obtaining Fen Tao as a Garrison Follower.",
},[[
step
talk Fen Tao##91483
Ask him: "_Why are you here?_"
And then: "_Would you like to join our cause?_"
|tip Click the Accept button when prompted.
Recruit Fen Tao |condition hasfollower(467) |goto Stormshield/0 45.3,70.6
step
Congratulations, you now have Fen Tao as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fiona",{
keywords={"fiona","holy","priest","prayer","of","healing","group","damage"},
description="\nThis guilde will walk you through obtaining Fiona as a Garrison Follower.",
},[[
step
talk Fiona##76204
accept Fiona's Solution##33787 |goto Shadowmoon Valley D/0 53.60,57.28
accept Swamplighter Queen##33808 |goto Shadowmoon Valley D/0 53.60,57.28
stickystart "Fio1"
stickystart "Fio2"
stickystart "Fio3"
stickystart "Fio4"
step
kill Swamplighter Queen##77314
collect Swamplighter Queen's Tail##108410 |q 33808/1 |goto 51.62,55.13
step
label "Fio1"
kill Twilight Riverbeast##83455+
collect Riverbeast Heart##108394 |q 33787/1 |goto 51.41,57.58
step
label "Fio2"
kill Swamplighter Drone##82371+, Swamplighter Worker##82370+
collect 2 Swamplighter Venom##108395 |q 33787/2 |goto 51.41,57.58
step
label "Fio3"
kill Riot Blossom##82427+
collect 4 Riotvine##108396 |q 33787/3 |goto 51.41,57.58
step
label "Fio4"
click Moonlit Herb##225998
collect 3 Moonlit Herbs##108409 |q 33787/4 |goto 51.41,57.58
step
talk Fiona##76204
turnin Fiona's Solution##33787 |goto 53.60,57.28
turnin Swamplighter Queen##33808 |goto 53.60,57.28
accept Cooking With Unstable Herbs##33788 |goto 53.60,57.28
step
talk Fiona##76204
Tell her _"I'm ready, Fiona."_
Speak With Fiona |q 33788/1 |goto Shadowmoon Valley D/0 53.6,57.3
step
Complete the Elixir |q 33788/2 |goto Shadowmoon Valley D/0 53.6,57.3
|tip You will need to add the ingredients she specifies until complete.
step
clicknpc Gidwin Goldbraids##80862
Use the Elixir on Gidwin |q 33788/3 |goto 53.63,57.26
step
talk Fiona##76204
turnin Cooking With Unstable Herbs##33788 |goto 53.60,57.28
step
talk Rangari Arepheon##80727
accept Blademoon Bloom##35014 |goto 53.70,57.28
step
talk Rangari Arepheon##80781
turnin Blademoon Bloom##35014
accept Gestating Genesaur##35015 |goto 55.66,71.98
step
kill Blooming Genesaur##80662 |q 35015/1 |goto 56.06,73.11
step
talk Rangari Arepheon##80781
turnin Gestating Genesaur##35015 |goto 55.66,71.98
step
talk Fiona##76204
accept Fiona##35617 |goto 53.60,57.28
step
Congratulations, you now have Fiona as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Glirin",{
keywords={"glirin","survival","hunter","feign","death","wild","aggression"},
description="\nThis guilde will walk you through obtaining Glirin as a Garrison Follower.",
},[[
step
talk Glirin##85119
|tip You must have the Highpass Logging Camp to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept Tangleheart##35708 |goto Gorgrond/0 53.0,59.8
talk Rangari Jonaa##86043 |goto Gorgrond/0 52.8,59.9
|tip Talk to Rangari Jonaa at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Run down the small hill |goto Gorgrond 58.1,54.8 < 20 |only if walking
Continue down the path |goto 59.6,57.2 < 20 |only if walking
Make your way through the Crimson Fen |goto Gorgrond 58.4,62.7 < 20 |only if walking
Continue along the path |goto 56.1,63.4 < 20 |only if walking
Climb up the hill |goto 54.3,67.7 < 20 |only if walking
Go up the hill |goto 55.5,71.1 < 20 |only if walking
talk Glirin##85119
turnin Tangleheart##35708 |goto Gorgrond/0 55.9,71.5
accept Growing Wood##35652 |goto Gorgrond/0 55.9,71.5
accept Lost Lumberjack##35505 |goto Gorgrond/0 55.9,71.5
step
talk Frenna##82569
turnin Lost Lumberjack##35505 |goto Gorgrond/0 57.1,71.9
accept Chapter I: Plant Food##35654 |goto Gorgrond/0 57.1,71.9
accept Chapter II: The Harvest##35651 |goto 57.1,71.9
accept Chapter III: Ritual of the Charred##35650 |goto 57.1,71.9
stickystart "growthsap_HLC"
stickystart "pollenpod_HLC"
stickystart "ST5_HLC"
step
kill Ontogen the Harvester##82372 |q 35527/1 |goto Gorgrond/0 59.9,71.1
step
label "growthsap_HLC"
kill Tangled Sapling##82437, Greenbough Ancient##82360, Tangleheart Cultivator##82322
collect 100 Ancient Growth Sap##113136 |q 35652/1 |goto Gorgrond/0 60.2,67.5
step
label "pollenpod_HLC"
click Pollen Pod##235903
|tip Red plants with yellow glowing centers.
Destroy #8# Pollen Pods |q 35654/1 |goto Gorgrond/0 60.2,67.5
step
label "ST5_HLC"
kill 4 Greenbough Ancient##82360 |q 35650/1 |goto Gorgrond/0 60.2,67.5
step
talk Glirin##85119
turnin Growing Wood##35652 |goto 60.6,64.8
turnin Chapter I: Plant Food##35654 |goto 60.6,64.8
turnin Chapter II: The Harvest##35651 |goto 60.6,64.8
turnin Chapter III: Ritual of the Charred##35650 |goto 60.6,64.8
step
click Dark Iron Mole Machine##237721 |goto Gorgrond/0 60.7,64.8 < 5
Ride the Dark Iron Mole Machine |invehicle |c |q 36828
step
Arrive at Beastwatch |goto Gorgrond/0 52.9,59.8 < 50 |noway |q 36828
step
talk Glirin##85119
accept Lumber, I Hardly Knew 'Er##36828 |goto Gorgrond 53.0,59.8
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Glirin##119256 |condition itemcount (119256) > 0 or hasfollower(211) |goto Lunarfall/0 28.3,34.2
|tip It costs 5,000 Gold.
step
use Contract: Glirin##119256
Recruit Glirin |condition hasfollower(211)
step
label "end"
Congratulations, you now have Glirin as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Goldmane the Skinner",{
keywords={"goldmane","the","skinner","assassination","rogue","sprint","danger","zones","skinning"},
description="\nThis guilde will walk you through obtaining Goldmane the Skinner as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
kill Bolkar the Cruel##80080
|tip He is at the very top of this tower.
collect Goldmane's Cage Key##111863 |n
clicknpc Goldmane the Skinner##80083
talk Goldmanethe Skinner##80083
|tip He will appear after looting the key and opening the cage.
accept Feline Friends Forever##35596 |goto Nagrand D 40.4,76.2
step
Congratulations, you now have Goldmane the Skinner as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Hulda Shadowblade",{
keywords={"hulda","shadowblade","assassination","rogue","kick","powerful","spell","skinning"},
description="\nThis guilde will walk you through obtaining Hulda Shadowblade as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Lieutenant Willem##81929
|tip You must have the Brewery to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept Befriending the Locals##37327 |goto Spires of Arak/0 39.9,60.9
talk Lieutenant Willem##81929 |goto Spires of Arak/0 39.9,60.9
|tip Talk to Lieutenant Willem at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37327 |goto Spires of Arak/0 43.89,48.89
accept A Lack of Wasps##37296 |goto 43.89,48.89
step
kill 8 Widow Wasp##84865 |q 37296/1 |goto 43.58,47.01
You can find more around [44.6,49.5]
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.91,48.90
step
talk Dusk-Seer Irizzar##83463
accept Not Here, Not Now##37331 or accept 37329 |goto 43.8,48.8
step
talk Lieutenant Willem##81929
turnin Not Here, Not Now##37331 or turnin 37329 |goto 39.8,60.8
step
talk Hulda Shadowblade##83549
accept Attempted Murder##35915 |goto 39.66,60.84
step
Run behind the building |goto Spires of Arak 39.4,60.9 < 10
talk Firn Swiftbreeze##83567
Tell him _"Take me to Shadow's Vigil."_
Secure a Flight to Shadow's Vigil |q 35915/1 |goto Spires of Arak/0 39.1,61.8
step
talk Hulda Shadowblade##83609
turnin Attempted Murder##35915 |goto 52.10,23.54
accept Assassin's Mark##35926 |goto 52.10,23.54
step
clicknpc Vigilant Outcast##83633
|tip They look like dead arrakoa on the ground around this area.
collect Assassin's Mark##113577 |q 35926/1 |goto Spires of Arak 53.5,23.2
step
Run down the path |goto Spires of Arak 53.5,25.2 < 20 |only if walking
talk Hulda Shadowblade##83773
turnin Assassin's Mark##35926 |goto 53.57,27.48
accept The Power of Poison##35959 |goto 53.57,27.48
accept Extrinsic Motivation##36023 |goto 53.57,27.48
stickystart "motivation1"
stickystart "motivation2"
stickystart "motivation3"
step
use Vial of Wracking Poison##113587
|tip Use the Vial of Wracking Poison to coat your weapons with poison.
Kill enemies in the area:
|tip As you attack, you will question them to gain information.
Learn the Name and Location of G.V. |q 35959/1 |goto 54.10,28.58
step
label "motivation1"
kill 4 Shattered Hand Sightless##83749 |q 36023/1 |goto 54.10,28.58
step
label "motivation2"
kill 3 Shattered Hand Harvester##83706 |q 36023/2 |goto 54.10,28.58
step
label "motivation3"
kill 1 Shattered Hand Blood-Singer##83760 |q 36023/3 |goto 54.10,28.58
step
Follow the path up |goto Spires of Arak 54.2,28.6 < 10 |only if walking
talk Hulda Shadowblade##83773
turnin The Power of Poison##35959 |goto 53.54,27.49
turnin Extrinsic Motivation##36023 |goto 53.54,27.49
accept Gardul Venomshiv##36029 |goto 53.54,27.49
step
Follow the road |goto Spires of Arak 53.9,29.9 < 20 |only if walking
kill Gardul Venomshiv##83834 |q 36029/1 |goto 56.24,33.98
step
Run up the path |goto Spires of Arak 56.3,34.0 < 10 |only if walking
talk Hulda Shadowblade##83900
turnin Gardul Venomshiv##36029 |goto 57.13,34.50
accept We Have Him Now##36048 |goto 57.13,34.50
stickystart "poisonbarrels"
step
Run up the path |goto Spires of Arak 58.7,36.1 < 10 |only if walking
kill Gardul Venomshiv##83923
collect Venomshiv's Secret Formula##113635 |q 36048/1 |goto 58.16,33.35
step
label "poisonbarrels"
kill Shattered Hand Brewer##83940+
click Poison Barrel##233599
|tip They look like wooden barrels with a green ring around the middle of them on the ground around this area.
collect 6 Poison Barrel##113630 |q 36048/2 |goto 58.42,34.51
step
talk Hulda Shadowblade##83904
turnin We Have Him Now##36048 |goto 57.14,34.49
accept No Time to Waste##36165 |goto 57.14,34.49
step
talk Kolrigg Stoktron##84261
Select "_Administer the antidote to Kolrigg._"
Administer the Spiresalve |q 36165/1 |goto 39.67,60.84
step
talk Kolrigg Stoktron##84261
turnin No Time to Waste##36165 |goto 39.67,60.84
step
talk Hulda Shadowblade##88195
|tip It takes a moment for her to walk out.
accept Standing United##37281 |goto 39.73,60.88
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Hulda Shadowblade##119244 |condition itemcount(119244) > 0 or hasfollower(453) |goto Lunarfall/0 28.3,34.2
|tip It costs 5,000 Gold.
step
use Contract: Hulda Shadowblade##119244
Recruit Hulda Shadowblade |condition hasfollower(453)
step
label "end"
Congratulations, you now have Hulda Shadowblade as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Image of Archmage Vargoth",{
keywords={"image","of","archmage","vargoth","mage","counterspell","powerful","spell"},
description="\nThis guilde will walk you through obtaining Image of Archmage Vargoth as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
Enter Magnarok |goto Frostfire Ridge/0 67.3,33.4 < 30 |walk
click Mysterious Boots##229333
accept Mysterious Boots##34464 |goto Frostfire Ridge/0 68.0,18.9
only if not completedq(34464)
step
click Mysterious Ring##229330
accept Mysterious Ring##34463 |goto Gorgrond/0 39.7,39.9
only if not completedq(34463)
step
click A Mystical Hat##229331
accept Mysterious Hat##34465 |goto Talador/0 45.3,37.1
only if not completedq(34465)
step
click Buried Timewarped Staff##229344
accept Mysterious Staff##34466 |goto Nagrand D/0 46.4,16.0
only if not completedq(34466)
step
talk Zooti Fizzlefury##86949
turnin Mysterious Boots##34464 |goto Talador/0 85.0,31.1
turnin Mysterious Ring##34463 |goto Talador/0 85.0,31.1
turnin Mysterious Hat##34465 |goto Talador/0 85.0,31.1
turnin Mysterious Staff##34466 |goto Talador/0 85.0,31.1
step
talk Zooti Fizzlefury##86949
accept Temporal Juxtaposition##34472 |goto 85.0,31.1
step
Complete the Ritual |q 34472/1 |goto 84.54,31.68
|tip Wait for Zooti to complete the ritual.
step
talk Image of Archmage Vargoth##77853
turnin Temporal Juxtaposition##34472 |goto 84.54,31.68
accept The Staff of Archmage Vargoth##36027 |goto 84.54,31.68
step
Congratulations, you now have the Image of Archmage Vargoth as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kimzee Pinchwhistle",{
keywords={"kimzee","pinchwhistle","combat","rogue","sprint","danger","zones","engineering"},
description="\nThis guilde will walk you through obtaining Kimzee Pinchwhistle as a Garrison Follower.",
},[[
step
talk Watchman Tilnia##86589
accept Pinchwhistle Gearworks##36861 |goto Lunarfall 46.0,45.8
only if not completedq(35619)
step
#include "Garrison_DLongdrink"
Tell him _"Take me to the Pinchwhistle Gearworks."_
Travel to Pinchwhistle Gearworks |q 36861/1
only if not completedq(35619)
step
Go through the doorway |goto Spires of Arak 61.0,72.5 < 10 |walk
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##36861 |goto Spires of Arak 61.48,72.93 |only if haveq(36861)
turnin Pinchwhistle Gearworks##35619 |goto Spires of Arak 61.48,72.93 |only if haveq(35619)
accept Defungination##35077 |goto Spires of Arak 61.48,72.93
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto Spires of Arak 61.45,72.96
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto 62.56,73.90
stickystart "activateturrets"
stickystart "sporecreatures"
step
use QR58 Flame Blaster##112683
|tip Use the QR58 Flame Blaster next to Spore Pustules. They look like yellow round formations on the ground around this area.
Burn #20# Spore Pustules |q 35077/1 |goto 63.48,75.10
step
label "activateturrets"
clicknpc Spore-be-Gone Turret##81135+
|tip They look like metal objects creating sparks on the ground around this area.
Activate #6# Turrets |q 35079/1 |goto 63.00,76.69
step
label "sporecreatures"
kill Fungal Hulk##82243+, Spore Drifter##81138+
Slay #10# Spore Creatures |q 36179/1 |goto 63.22,75.28
step
Follow the path |goto Spires of Arak 62.8,74.0 < 20 |only if walking
Run up the path |goto Spires of Arak 61.8,72.5 < 20 |only if walking
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto 61.45,72.96
turnin Unwanted Pests##36179 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto 61.47,72.93
accept The Mother Lode##35080 |goto 61.47,72.93
step
Follow the road |goto Spires of Arak 60.1,73.2 < 30 |only if walking
Run up the path |goto Spires of Arak 59.1,77.5 < 20 |only if walking
Meet up with Kimzee Pinchwhistle |q 35080/1 |goto 59.13,79.18
step
talk Kimzee Pinchwhistle##81773
turnin The Mother Lode##35080 |goto 59.13,79.18
accept Getting the Crew Back Together##35082 |goto 59.13,79.18
step
talk Engineer Gazwitz##81784
accept Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
stickystart "crimsonwing"
step
clicknpc Injured Crewman##81131
|tip They look like goblins laying on the ground around this area.
Revive #6# Injured Crew |q 35082/1 |goto 60.13,81.51
step
label "crimsonwing"
kill 8 Crimsonwing Wasp##85403 |q 35081/1 |goto 60.03,82.11
step
Run up the path |goto Spires of Arak 59.9,81.1 < 20 |only if walking
talk Kimzee Pinchwhistle##81773
turnin Getting the Crew Back Together##35082 |goto 59.12,79.19
step
talk Engineer Gazwitz##81784
turnin Clearing Out Before Cleaning Up##35081 |goto 59.10,79.24
accept Follow that Hotrod!##35285 |goto 59.10,79.22
step
Run along the beach path |goto Spires of Arak 60.2,83.5 < 20 |only if walking
Follow the path up |goto Spires of Arak 58.3,91.3 < 20 |only if walking
talk Kimzee Pinchwhistle##81972
turnin Follow that Hotrod!##35285 |goto 58.49,92.33
accept The Right Parts for the Job##35090 |goto 58.49,92.33
accept Skimming Off The Top##35089 |goto 58.49,92.33
step
talk Krixel Pinchwhistle##81443
accept Field Trial##36384 |goto 58.48,92.21
stickystart "stickyicky"
stickystart "brokenshredders"
step
use Vial of Untested Serum##115475
|tip Use your Vial of Untested Serum on an Infested Lumberjack. They look like goblins around this area.
Test the Serum |q 36384/1 |goto Spires of Arak/0 57.6,88.6
step
label "brokenshredders"
use G-14 Buster Rocket##112698
|tip Use your G-14 Buster Rocket next to Broken Shredders. They look like big metal machines standing or laying on the ground around this area.
click Serviceable Gear##231811
|tip They look like metal parts that appear on the ground after you use your G-14 Buster Rocket.
collect 16 Serviceable Gear##112634 |q 35090/1 |goto 58.85,88.42
step
label "stickyicky"
kill Volatile Sludge##81524+
collect 6 Volatile Oil##112906 |q 35089/1 |goto 59.71,89.31
step
Follow the path up |goto Spires of Arak 58.3,91.3 < 20 |only if walking
talk Krixel Pinchwhistle##81443
turnin Field Trial##36384 |goto 58.49,92.20
step
talk Kimzee Pinchwhistle##81978
turnin The Right Parts for the Job##35090 |goto 58.82,92.83
turnin Skimming Off The Top##35089 |goto 58.82,92.83
accept Sporicide##35091 |goto 58.82,92.83
step
talk Krixel Pinchwhistle##81443
accept Preventing the Worst##35211 |goto 58.48,92.20
accept Curing With Force##36428 |goto 58.48,92.20
step
kill 6 Spore Shambler##82265 |q 35091/1 |goto 56.73,93.62
step
Follow the path |goto Spires of Arak 57.4,92.8 < 20 |only if walking
Run up the path |goto Spires of Arak 57.7,91.5 < 20 |only if walking
talk Kimzee Pinchwhistle##81978
turnin Sporicide##35091 |goto 58.82,92.83
stickystart "infectedpatrons"
step
Run up the path |goto Spires of Arak 57.1,90.8 < 20 |only if walking
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebomb |q 35211/1 |count 1 |goto 56.74,91.56
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebomb |q 35211/1 |count 2 |goto Spires of Arak 56.3,91.6
step
Enter the building |goto Spires of Arak 55.7,91.0 < 10 |walk
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb upstairs in this house.
Place the Firebomb |q 35211/1 |count 3 |goto Spires of Arak 55.7,91.0
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb sitting on the ground.
Place the Firebomb |q 35211/1 |count 4 |goto Spires of Arak 56.5,89.5
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebomb |q 35211/1 |count 5 |goto Spires of Arak 56.6,90.0
step
label "infectedpatrons"
kill Infected Bruiser##81184+
|tip Fight them until they get to about 35% health, then stop fighting them. Don't kill them.
use Vial of Refined Serum##115533
|tip Use your Vial of Refined Serum on Infected Bruisers.
Cure #6# Infected Goblins |q 36428/1 |goto 56.12,90.82
step
Follow the path up |goto Spires of Arak 58.3,91.3 < 20 |only if walking
talk Krixel Pinchwhistle##81443
turnin Preventing the Worst##35211 |goto Spires of Arak 58.5,92.2
turnin Curing With Force##36428 |goto Spires of Arak 58.5,92.2
accept Flame On##35298 |goto Spires of Arak 58.5,92.2
step
click Firebomb Plunger##231910
|tip It's a small metal box with a wooden handle on it.
Activate the Plunger |q 35298/1 |goto 58.51,92.22
step
clicknpc Repaired Flying Machine##81567
|tip It looks like an airplane.
Ride on Kimzee's Flying Machine |q 35298/2 |goto 58.84,92.84
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.60,72.84
accept Kimzee Pinchwhistle##36062 |goto 61.60,72.84
step
Congratulations, you now have Kimzee Pinchwhistle as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Lantresor of the Blade",{
keywords={"lantresor","of","the","blade","arms","warrior","heroic","leap","danger","zones","mining"},
description="\nThis guilde will walk you through obtaining Lantresor of the Blade as a Garrison Follower.",
},[[
step
talk Vindicator Mo'mor##80624
accept They Call Him Lantresor of the Blade##34951 |goto Nagrand D/0 63.48,61.86
step
talk Lantresor of the Blade##80161
turnin They Call Him Lantresor of the Blade##34951
accept The Blade Itself##34954 |goto 85.42,54.61
accept Not Without My Honor##34955 |goto 85.42,54.61
stickystart "Locker"
step
kill Instructor Luhk##80236
collect Lantresor's Blade##111938 |q 34954/1 |goto Nagrand D/0 87.2,53.8
step
label "Locker"
collect Blademaster's Banner##111947 |q 34955/1 |goto 85.48,54.79
|tip Loot Burning Blade Footlockers all around the area. They are usually found in buildings.
step
talk Lantresor of the Blade##80161
turnin The Blade Itself##34954 |goto 85.42,54.61
turnin Not Without My Honor##34955 |goto 85.42,54.61
accept Meet Me in the Cavern##34956 |goto 85.42,54.60
step
turnin Meet Me in the Cavern##34956 |goto Nagrand D/10 85.42,54.60
accept Challenge of the Masters##34957 |goto Nagrand D/10 44.79,19.84
step
click Burning Blade Sword##231088
|tip The sword in the center of the steel circle.
Free the Blade |q 34957/1 |goto 53.01,68.47
step
kill Packleader Dran'ruk##80326, Gorn##80324, Sesk##80325, Warlord Dharl of the Thrice-Bloodied Bla##80327
Survive the Challenge |q 34957/2 |goto 53.27,68.71
step
talk Rangari D'kaan##79576
turnin Challenge of the Masters##34957 |goto Nagrand D/0 63.5,61.9
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34747 |goto 64.24,59.55
step
Congratulations, you now have Lantresor of the Blade as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Leeroy Jenkins",{
description="\nComplete the \"Leeeeeeeeeeeeeroy...?\" achievement in Upper Blackrock Spire.",
keywords={"retribution","paladin","divine","storm","minion","swarms"},
condition_end=function() return hasfollower(178) end,
},[[
step
Enter the Upper Blackrock Spire Dungeon |goto Upper Blackrock Spire 2/1 0.00,0.00 |c |or
|tip Queue for it using the group finder or enter the dungeon solo or with a group.
|tip The dungeon difficulty must be set to Heroic.
|tip In order to recruit this follower you must complete the Leeeeeeeeeeeeeroy...? achievement in Upper Blackrock Spire.
|tip You will also need a class that can resurrect other players.
'|condition hasfollower(178) |or
step
clicknpc Leeroy Jenkins##77075
|tip Clear the entire room, including Kyrak.
|tip Cast any form of resurrection spell on Leeroy.
|tip Immediately begin clearing everything up to and including the Son of the Beast as fast as possible.
|tip Do not leave any trash mobs alive.
|tip You have 15 minutes to accomplish this and Leeroy cannot die during this time.
Click Here After Reviving Leeroy |confirm |goto Upper Blackrock Spire 2/2 38.80,39.10 |or
'|condition hasfollower(178) |or
step
map Upper Blackrock Spire 2/2
path follow strict; loop off; ants curved; dist 30
path	29.60,41.50	29.62,41.58	Upper Blackrock Spire 2/3 30.50,33.10	31.10,25.90
path	42.40,23.40	45.70,24.90	48.60,21.50	48.50,33.00	54.70,35.80
path	58.70,47.00	63.40,37.30
Kill the Son of the Beast and Wait for Leeroy |condition hasfollower(178)
|tip Clear everything up to and including the Son of the Beast as fast as possible.
|tip Do not leave any trash mobs alive.
|tip You have 15 minutes to accomplish this and Leeroy cannot die during this time.
|tip You will have to wait for Leeroy to arrive and loot his shoulders from the dark corner of the room.
|tip Depending on how fast you progress, this could take several minutes.
step
_Congratulations!_
You Recruited "Leeroy Jenkins" as a Garrison Follower.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Leorajh",{
keywords={"leorajh","restoration","shaman","chain","heal","group","damage","bodyguard"},
description="\nThis guilde will walk you through obtaining Leorajh as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
Follow this path up |goto Spires of Arak/0 54.9,68.4 < 5 |only if walking
|tip Sticking to the outside edge sometimes makes climbing the path easier.
Reach Dreadtalon Peak |goto 56.0,66.2 < 10 |only if walking
Continue up the path |goto 55.5,65.4 < 10 |only if walking
Enter the cave |goto 55.0,65.3 < 10 |walk
talk Leorajh##86887
accept Leorajh, the Enlightened##37168 |goto Spires of Arak 54.2,63.0
step
Congratulations, you now have Leorajh as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Magister Serena",{
keywords={"magister","serena","frost","mage","counterspell","powerful","spell"},
description="\nThis guilde will walk you through obtaining Magister Serena as a Garrison Follower.",
},[[
step
talk Magister Serena##80608
|tip You must have the Arcane Sanctum to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept While We're in the Neighborhood##34909 |goto Talador/0 69.94,69.46
accept Vicious Viziers##34910 |goto Talador/0 69.94,69.46
accept Orbs of Power##34911 |goto Talador/0 69.94,69.46
talk Foreman Eksos##79133 |goto Talador/0 69.9,20.8
|tip Talk to Foreman Eksos at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
stickystart "astralwards"
stickystart "gordunnibeads"
step
Go up the stairs |goto Talador 68.5,79.0 < 15 |only if walking
kill Vizier Vorgorsh##80294 |q 34910/1 |goto 68.53,82.94
|tip He's inside the stone building.
step
kill Vizier Zulmork##80292 |q 34910/2 |goto 67.1,77.0
|tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q 34910/3 |goto 66.30,80.94
|tip He's inside the stone building.
step
label "astralwards"
click Astral Ward##230960
|tip They are all around this area, usually next to Astral Protectors.
Destroy #5# Astral Wards |q 34911/1 |goto 66.53,80.22
You can find more here [Talador 69.4,79.7]
step
label "gordunnibeads"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+
collect 10 Gordunni Runebeads##112088 |q 34909/1 |goto 65.99,79.47
step
talk Magister Serena##80617
|tip If you are in Gordal Fortress, she will be next to you.
turnin While We're in the Neighborhood##34909 |goto 66.48,78.92
turnin Vicious Viziers##34910 |goto 66.63,78.87
turnin Orbs of Power##34911 |goto 66.63,78.87
accept The Final Step##34912 |goto 66.63,78.87
step
use Scroll of Mass Teleportation##112543
|tip Use the Scroll of Mass Teleportation to summon reinforcements.
kill Witch Lord Morkurk##80335 |q 34912/1 |goto 64.07,81.79
step
click Arcane Nexus##231056
collect Arcane Nexus##112196 |q 34912/2 |goto Talador 64.2,81.8
step
talk Magister Serena##80617
|tip If you are in Gordal Fortress, she will be next to you.
turnin The Final Step##34912 |goto 64.28,81.85
accept Due Cause to Celebrate##34711 |goto 64.28,81.85
Wait To Be Teleported |goto Talador 69.7,20.8 < 100 |c |q 34711
step
talk Magister Serena##80672
turnin Due Cause to Celebrate##34711 |goto 69.73,20.79
accept Joining the Ranks##34993 |goto 69.73,20.79
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Magister Serena##119242 |condition itemcount(119242) > 0 or hasfollower(154) |goto Lunarfall/0 28.3,34.2
|tip It costs 5,000 Gold.
step
use Contract: Magister Serena##119242
Recruit Magister Serena |condition hasfollower(154)
step
label "end"
Congratulations, you now have Magister Serena as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Meatball",{
keywords={"meatball","fury","warrior","recklessness","timed","battle"},
description="\nThis guilde will walk you through obtaining Meatball as a Garrison Follower.",
},[[
stickystart "Brawl"
step
When Goredome begins casting Lumbering Charge, move out of the red circle
Defeat Goredome |condition ZGV:GetReputation(1691).friendRep>=250
step
Avoid Sanoriak's _Firewall_ ability. There is always a safe opening to run through
_Interrupt Flame Buffet_ always
Sanoriak will also cast _Fireball_ and _Pyroblast_. This damage is manageable
Defeat Sanoriak |condition ZGV:GetReputation(1691).friendRep>=500
step
Smash has a _2 minute enrage_ timer
Kill the goblins that Smash carries first
When Smash casts _Shield Waller_, attack him from behind
Melee classes will need cooldowns to mitigate his damage
Smash is succeptable to crowd control abilities. Use this to your advantage
Defeat Smash Hoofstomp |condition ZGV:GetReputation(1691).friendRep>=750
step
_Kill Akama's Feral Spirit wolves_
Akama will gain stacks of _Shadow Strikes_, increasing his damage. Save cooldowns for the last half of the fight
Akama will also cast _Chain Lightning_ and _Thunderstorm_. These abilities are of little concern
Defeat Akama |condition ZGV:GetReputation(1691).friendRep>=1000
step
Dippy has a melee ability called _Peck_. If you are in melee range when the cast is finished, it will kill you
When Dippy takes damage, he is knocked back
You should prioritize _fast attacks_
Melee classes will need to maximize damage during stuns to beat the 2 minute enrage timer
Defeat Dippy |condition ZGV:GetReputation(1691).friendRep>=1250
step
Kirrawk will summon a tornado through Twisting Winds. Lead the tornado and make it hit him
_Interrupt Storm Cloud_ whenever possible
Defeat Kirrawk |condition ZGV:GetReputation(1691).friendRep>=1500
step
Kukala's only source of damage is from high physical damage melee attacks
Melee classes need to utilize defensive cooldowns to survive Kukala's physical damage
Ranged classes need to _snare and kite_ Kukala, being mindful of his _Dash_ speed increase ability
Defeat King Kukala |condition ZGV:GetReputation(1691).friendRep>=1750
step
DPS Fran and Riddoh _evenly_
Move to avoid Fran's _Throw Dynamite_ ability
Riddoh will trap you in a net while Fran places bombs around you. _Move immediately_ to avoid damage
Defeat Fran & Riddoh |condition ZGV:GetReputation(1691).friendRep>=2000
step
As the fight goes on, Blat will make copies of himself. These copies move slow and die when Blat dies
Avoid the copies of Blat and kill him before the copies overwhelm you
Defeat Blat |condition ZGV:GetReputation(1691).friendRep>=2250
step
_Avoid Fire Line_, a line of fire that spawns in front of Vian
_Avoid Fireballs_ spawned by Volatile Flames. More will appear as the fight progresses
_Do not interrupt Lava Burst_. Vian's melee attack does more damage than this ability
Defeat Vian the Voltile |condition ZGV:GetReputation(1691).friendRep>=2500
step
_Keep running_ around Ixx to avoid _Devastating Thrust_
Ixx deals high physical damage. Utilize defensive cooldowns to mitigate this damage
Defeat Ixx |condition ZGV:GetReputation(1691).friendRep>=2750
step
Mazhareen gains increased damage as her health lowers
_Save defensive cooldowns_ for the last half of the fight
Defeat Mazhareen |condition ZGV:GetReputation(1691).friendRep>=3000
step
_Kill Explosive Chickens_
Keep moving to _avoid Electric P.E.C.K._
_Ignore_ the Well Fed Chickens
Defeat Tyson Sanders |condition ZGV:GetReputation(1691).friendRep>=3250
step
Nibbleh is a VERY difficult fight
Melee will need to constantly backpedal and kite him in a circle around the room
Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
Kite Nibbleh and DPS him quickly before his stacks get to high
Defeat Nibbleh |condition ZGV:GetReputation(1691).friendRep>=3500
step
Every time Dominika takes damage, she creates a copy of herself with 1 hit point
These copies, like her, cast _Arcane Barrage_
Periodically, _kill the copies_ she spawns and resume DPS
_Interrupt her_ whenever possible
Defeat Dominika the Illusionist |condition ZGV:GetReputation(1691).friendRep>=3750
step
Meatball has a _60 second enrage_ timer
Whenever damage, Meatball _drops purple orbs_ which will increase your damage and heal you
Stacking these orbs is the only way to defeat him before the enrage timer
Spend the first _30-45 seconds_
Defeat Meatball |condition ZGV:GetReputation(1691).friendRep>=4000
step
label "Brawl"
To recruit _Meatball_, you must reach _rank 5_ in the Brawler's Guild and defeat him
step
talk Meatball##86272
accept Meatball##36702 |goto Deeprun Tram/2 62.18,25.66
step
Congratulations, you now have Meatball as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Miall",{
keywords={"miall","fury","warrior","shield","wall","massive","strike"},
description="\nThis guilde will walk you through obtaining Vindicator Miall as a Garrison Follower.",
},[[
step
talk Foreman Eksos##79133
|tip You must have the Wrynn Artillery Tower to gain this Follower. You can switch buildings but it costs 5,000 Gold.
turnin At Your Command##34558 |goto Talador 69.87,20.81
accept The Quarry Quandary##34563 |goto Talador 69.87,20.81
talk Foreman Eksos##79133 |goto Talador 69.87,20.81
|tip Talk to Foreman Eksos at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Go through the doorway |goto Talador 69.0,20.8 < 10 |walk
Find Master Smith Ared |q 34563/1 |goto 69.24,19.34
step
talk Apprentice Miall##79159
turnin The Quarry Quandary##34563 |goto 69.24,19.34
accept In Ared's Memory##35045 |goto 69.24,19.34
step
Enter the big metal building |goto Talador 69.8,20.6 < 10 |walk
Meet with Miall At the Armory |q 35045/1 |goto 70.14,20.10
step
talk Miall##79329
turnin In Ared's Memory##35045 |goto Talador 70.2,20.1
accept Out of Jovite##34571 |goto Talador 70.2,20.1
accept Iridium Recovery##34573 |goto Talador 70.2,20.1
accept Gas Guzzlers##34624 |goto Talador 70.2,20.1
stickystart "joviteAT"
stickystart "gorengasAT"
step
Enter the mine |goto 75.31,22.37 < 20 |walk
kill Iridium Geode##80072+
collect 8 Igneous Elemental Chunk##107472 |q 34573/1 |goto 75.70,21.09
step
label "joviteAT"
click Jovite Ore##230268
|tip They look like bright green ore nodes all along the cave walls.
collect 12 Jovite Ore##111906 |q 34571/1 |goto 75.70,21.09
step
label "gorengasAT"
kill Glowgullet Devourer##79190+, Glowgullet Shardshedder##80013+
use Goren Gas Extractor##111910
|tip Use the Goren Gas Extractor on their corpses.
Gather #6# Goren Gas Samples |q 34624/1 |goto 75.70,21.09
step
Enter the big metal building |goto Talador 69.8,20.6 < 10 |walk
talk Miall##79329
turnin Out of Jovite##34571 |goto Talador 70.2,20.1
turnin Iridium Recovery##34573 |goto Talador 70.2,20.1
turnin Gas Guzzlers##34624 |goto Talador 70.2,20.1
accept Going to the Gordunni##34578 |goto Talador 70.2,20.1
step
Follow the stone path |goto Talador 59.3,68.3 < 20 |only if walking
talk Miall##80628
turnin Going to the Gordunni##34578 |goto 62.56,67.83
accept Dropping Bombs##34976 |goto 62.56,67.83
step
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Base Catapult |q 34976/1|goto 63.61,68.98
step
Run up the path |goto Talador 63.9,69.8 < 10 |only if walking
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Central Catapult |q 34976/2 |goto Talador 65.5,68.8
step
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy th Summit Catapult |q 34976/3 |goto Talador 66.8,67.9
step
Run up the path |goto Talador 67.5,68.6 < 10 |only if walking
click Miall's Grappling Hook##7548
|tip It looks like a small rope coiled around a tiny wooden post on the ground.
Use the Grappling Hook |q 34976/4 |goto 69.00,69.06
step
talk Miall##80628
|tip She's on the ground, next to the stone pillar.
turnin Dropping Bombs##34976 |goto 69.63,69.82
accept Supply Recovery##34977 |goto 69.63,69.82
accept Punching Through##34979 |goto 69.63,69.82
accept Prized Repossessions##34978 |goto 69.63,69.82
stickystart "ironhorde"
stickystart "guardianmace"
step
Cross the bridge |goto Talador 69.5,73.7 < 20 |only if walking
Go up the stairs |goto Talador 68.5,79.0 < 10 |only if walking
kill Vizier Vorgorsh##80294 |q 34979/1 |goto 68.53,82.94
|tip He's inside the stone building.
step
Run up the stairs |goto Talador 67.8,79.5 < 10
kill Vizier Zulmork##80292 |q 34979/2 |goto 67.1,77.0
|tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q 34979/3 |goto 66.30,80.94
|tip He's inside the stone building.
step
label "ironhorde"
clicknpc Iron Horde Shipment##80957+
|tip They look like wooden and metal chests on the ground all around this area.
Obtain #6# Iron Horde Shipment |q 34977/1 |goto 69.13,77.64
step
label "guardianmace"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+, Gordunni Warcrier##81764+
collect 6 Shattrath Guardian Mace##112504 |q 34978/1 |goto 65.99,79.47
step
Next to you:
|tip If you are in Gordal Fortress, she will be next to you.
talk Miall##80630
turnin Supply Recovery##34977
turnin Punching Through##34979
turnin Prized Repossessions##34978
accept The Lord of the Gordunni##34980
step
Go up the stairs |goto Talador 65.5,80.1 < 10 |only if walking
use Emergency Rocket Pack##112307
|tip Use this when he is almost done casting Astral Annihilation.
kill Witch Lord Morkurk##80335 |q 34980/1 |goto 64.07,81.79
step
talk Miall##80630
turnin The Lord of the Gordunni##34980 |goto 64.51,81.77
accept The Only Way to Travel##34981 |goto 64.51,81.77
Wait For Miall to Fly You |goto Talador 69.7,20.8 < 100 |noway |c |q 34981 |only if haveq(34981)
step
talk Miall##80968
turnin The Only Way to Travel##34981 |goto 69.78,20.75
accept Armor Up##34982 |goto 69.78,20.75
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Miall##119420 |condition itemcount(119420) > 0 or hasfollower(155) |goto Lunarfall/0 28.3,34.2
|tip It costs 5,000 Gold.
step
use Contract: Miall##119420
Recruit Miall |condition hasfollower(155)
step
label "end"
Congratulations, you now have Miall as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Millhouse Manastorm",{
keywords={"millhouse","manastorm","arcane","mage","polymorph","deadly","minions"},
description="\nThis guilde will walk you through obtaining Millhouse Manastorm as a Garrison Follower.",
},[[
step
In order to attain the _For the Children!_ quest you will need to build an Inn in your Garrison
Click here to continue |confirm
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
stickystart "Manastorm"
step
#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
|tip He sometimes appears in your Lunarfall Inn.
accept For the Children!##37179
step
Press I and queue for _Upper Blackrock Spire HEROIC_ |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
only if not completedq(37179)
step
click Miniature Iron Star##237476
collect Miniature Iron Star##118645 |q 37179/1 |goto Upper Blackrock Spire 2/3 33.9,54.7
step
kill Warlord Zaela##77120 |q 37179/2 |goto Upper Blackrock Spire 2/3 13.8,47.7
|tip Warlord Zaela is the final boss of the dungeon.
step
#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
turnin For the Children!##37179
step
label "Manastorm"
You will have a limited amount of time to retrieve the Miniature Iron Star and return to Millhouse Manastorm before he despawns
If he does despawn, you will have to wait until the next time he randomly spawns in your Lunarfall Inn
Recruit Millhouse Manastorm |condition hasfollower(455)
step
Congratulations, you now have Millhouse Manastorm as a Garrison Follower! |only if completedq(37179)
You must have a Lunarfall Inn to recruit this Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Nat Pagle",{
keywords={"nat","pagle","marksmanship","hunter","freezing","trap","deadly","minions","angler","swamp"},
description="\nThis guilde will walk you through obtaining Nat Pagle as a Garrison Follower.",
},[[
step
You must have a _level 3 Fishing Shack_ in order to recruit Nat Pagle!
|tip Use the Garrison Buildings guides to accomplish this.
confirm |only if not hasbuilding(135,3)
step
talk Segumi##85708
accept Luring Nat##36870 |goto Lunarfall/0 53.6,15.1
step
Use your Fishing skill to fish in the water |cast Fishing##131474
collect Arcane Trout##118041 |q 36870/1 |goto Shadowmoon Valley D/0 36.8,26.3
step
talk Segumi##85708
turnin Luring Nat##36870 |goto Lunarfall/0 53.6,15.1
accept Finding Nat Pagle##36608 |goto Lunarfall/0 53.6,15.1
step
talk Nat Pagle##63721
turnin Finding Nat Pagle##36608 |goto Krasarang Wilds 68.4,43.4
accept The Great Angler Returns##36882 |goto Krasarang Wilds 68.4,43.4
step
talk Segumi##85708
turnin The Great Angler Returns##36882 |goto Lunarfall/0 53.6,15.1
step
talk Nat Pagle##85984
accept A True Draenor Angler##36611 |goto Lunarfall/0 53.80,13.80
step
use Nat's Hookshot##116755
Fish in the lava here |cast Fishing##131474
collect 1 Fire Ammonite Lunker##116748 |q 36611/1 |goto Frostfire Ridge/0 51.3,59.3
step
use Nat's Hookshot##116755
Fish in the water here |cast Fishing##131474
collect 1 Blackwater Whiptail Lunker##116749 |q 36611/2 |goto Talador/0 68.90,58.20
step
use Nat's Hookshot##116755
Fish in the water here |cast Fishing##131474
collect 1 Blind Lake Sturgeon Lunker##116750 |q 36611/3 |goto Shadowmoon Valley D/0 47.90,35.10
step
use Nat's Hookshot##116755
Fish in the water here |cast Fishing##131474
collect 1 Abyssal Gulper Lunker##116751 |q 36611/4 |goto Spires of Arak/0 51.30,32.80
step
use Nat's Hookshot##116755
Fish in the water here |cast Fishing##131474
collect 1 Jawless Skulker Lunker##116752 |q 36611/5 |goto Gorgrond/0 52.10,61.20
step
use Nat's Hookshot##116755
Fish in the water here |cast Fishing##131474
collect 1 Fat Sleeper Lunker##116753 |q 36611/6 |goto Nagrand D/0 62.80,61.00
step
talk Nat Pagle##85984
turnin A True Draenor Angler##36611 |goto Lunarfall/0 53.80,13.80
accept An Angler on Our Team##36616 |goto Lunarfall/0 53.80,13.80
step
Congratulations, you now have Nat Pagle as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Phylarch the Evergreen",{
keywords={"phylarch","evergreen","restoration","druid","entangling","roots","evergreen","deadly","minions","swamp"},
description="\nThis guilde will walk you through obtaining Phylarch the Evergreen as a Garrison Follower.",
},[[
step
Expand your Lumber Mill to Level 3
|tip Use the Garrison Buildings guides to accomplish this.
confirm |only if not hasbuilding(138)
step
Phylarch will appear after logging Large Timber
|tip When he appears you will have to fight him off and he will disappear. After defeating him 3 times he will join your Garrison.
map Nagrand D
path loose; loop on; ants curved; dist 30
path	42.8,51.0	50.3,48.4	57.3,47.3
path	57.0,52.9	55.5,62.4	59.6,72.5
path	62.2,72.6	63.9,70.4	60.0,55.9
path	61.6,58.1	64.7,56.9	69.3,49.9
path	71.9,43.1	69.1,35.8	57.9,36.8
path	51.3,37.5
Follow the path, logging all _Large Timber_ you come across
click Large Timber##233635
talk Phylarch the Evergreen##84892
accept Phylarch the Evergreen##36296
step
Congratulations, you now have Phylarch the Evergreen as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Pitfighter Vaandaam",{
keywords={"pitfighter","vaandaam","windwalker","monk","provoke","wild","aggression"},
description="\nThis guilde will walk you through obtaining Pitfighter Vaandaam as a Garrison Follower.",
},[[
step
talk Rangari Jonaa##81076
|tip You must have the Highpass Sparring Arena to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept A Rediscovered Legend##34704 |goto Gorgrond/0 52.8,59.9
talk Rangari Jonaa##86043 |goto Gorgrond/0 52.8,59.9
|tip Talk to Rangari Jonaa at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
talk Gladiator Akaani##79322
turnin A Rediscovered Legend##34704 |goto 42.76,62.97
accept Getting Gladiators##34699 |goto 42.76,62.97
step
talk Kash'drakor##79320
accept Slave Hunters##34698 |goto 42.78,63.08
accept Nazgrel##34700 |goto 42.78,63.08
step
talk Beatface##79331
accept Krav'ogra##34702 |goto 42.71,63.06
step
Run up the wooden ramp |goto Gorgrond 41.0,66.2 < 10 |only if walking
kill Slave Hunter Krag##79623
collect Pendant of Krag##111527 |q 34698/2 |goto 41.08,66.28
step
kill Slave Hunter Brol##79621
collect Pendant of Brol##108899 |q 34698/1 |goto 40.52,66.70
step
Run up the rocks |goto Gorgrond 39.7,68.1 < 10 |only if walking
Enter the building |goto Gorgrond 39.0,68.2 < 10 |walk
kill Slave Hunter Mol##79626
collect Pendant of Mol##111528 |q 34698/3 |goto 38.98,68.75
step
Enter the building |goto Gorgrond 39.3,66.8 < 10 |walk
click Shackle##233284
|tip It's a silver chain connected to the wall.
Free Pitfighter Vaandaam |q 34699/1 |goto 39.16,67.25
step
Leave the building |goto Gorgrond 39.3,66.8 < 10 |walk
click Shackle##233284
|tip It's a silver lock on a wooden cage.
Free Y'kish |q 34699/2 |goto 39.77,67.84
step
Enter the building |goto Gorgrond 40.4,65.1 < 10 |walk
click Shackle##233284
|tip It's a large silver ring around the prisoner's wrist.
Free Bruto |q 34699/3 |goto 40.30,64.82
step
click Challenge Gong##215697
|tip You will have to battle several enemies before Slavemaster Ok'mok appears.
kill Kigli'ak##79727, Stribit##79728, Jabberback##79726
kill Slavemaster Ok'mok##75864 |q 34702/1 |goto Gorgrond 40.4,67.6
step
Follow the dirt path |goto Gorgrond 39.1,65.8 < 20 |only if walking
Enter Kor'gall's Hovel |goto 38.55,67.38 < 20 |walk
Follow the path |goto Gorgrond 37.6,69.4 < 20 |walk
click Nazgrel's Cage##233369
|tip It's a large cage made of stone and wood.
Rescue Nazgrel |q 34700/1 |goto 36.85,70.58
step
Follow the path |goto Gorgrond 37.6,69.4 < 20 |walk
talk Bruto##77014
turnin Getting Gladiators##34699 |goto 36.87,67.90
accept The Axe of Kor'gall##34703 |goto 36.87,67.90
step
click Ogre Barricade##224709 |goto Gorgrond/0 36.8,68.1 < 5
|tip It's a wooden gate.
kill Kor'gall##77020
collect Serathil##109023 |q 34703/1 |goto 36.46,70.07
step
talk Beatface##79331
turnin Krav'ogra##34702 |goto 42.71,63.06
step
talk Kash'drakor##79320
turnin Slave Hunters##34698 |goto 42.78,63.08
turnin Nazgrel##34700 |goto 42.78,63.08
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto 42.76,62.97
accept The Sparring Arena##35137 |goto 42.76,62.97
step
talk Pitfighter Vaandaam##79337
accept The Fists of Vaandaam##35883 |goto 42.76,62.97
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Pitfighter Vaandaam##119254 |condition itemcount(119254) > 0 or hasfollower(176) |goto Lunarfall/0 28.3,34.2
|tip It costs 5,000 Gold.
step
use Contract: Pitfighter Vaandaam##119254
Recruit Pitfighter Vaandaam |condition hasfollower(176)
step
label "end"
Congratulations, you now have Pitfighter Vaandaam as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Pleasure-Bot 8000",{
keywords={"pleasure-bot","8000","fury","warrior","recklessness","timed","battle","tailoring"},
description="\nThis guilde will walk you through obtaining Pleasure-Bot 8000 as a Garrison Follower.",
},[[
step
talk Torben Zapblast##79901
accept Clear!##34761 |goto Talador 62.9,50.3
step
kill Lakebottom Zapper##79636+
|tip These are found underwater around this small island.
collect 6 Zapper Sac##111637 |q 34761/1 |goto Talador 63.6,44.8
step
talk Torben Zapblast##79901
turnin Clear!##34761 |goto Talador 62.9,50.3
step
talk Pleasure-Bot 8000##79853
accept New Owner##35239 |goto Talador 62.9,50.4
step
Congratulations, you now have Pleasure-Bot 8000 as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Professor Felblast",{
keywords={"professor","felblast","destruction","warlock","metamorphosis","timed","battle"},
description="\nThis guilde will walk you through obtaining Professor Felblast as a Garrison Follower.",
},[[
step
Reach Revered with the _Steamwheedle Preservation Society_ |condition rep('Steamwheedle Preservation Society')>= Revered
|tip This is achieved by looting chests and killing rare spawns in Nagrand. Use the Reputation guide to accomplish this.
step
talk Gazrix Gearlock##88482
buy Contract: Professor Felblast##119165 |condition itemcount(119165) > 0 or hasfollower(460) |goto Stormshield 43.2,77.6
|tip It costs 5,000 Gold.
step
use Contract: Professor Felblast##119165
Recruit Professor Felblast |condition hasfollower(460)
step
Congratulations, you now have Professor Felblast as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Qiana Moonshadow",{
keywords={"qiana","moonshadow","guardian","druid","growl","wild","aggression"},
description="\nThis guilde will walk you through obtaining Qiana Moonshadow as a Garrison Follower.",
},[[
step
#include "Garrison_Maraad"
accept Qiana Moonshadow##34646
step
talk Qiana Moonshadow##79446
Speak With Qiana Moonshadow |q 34646/1 |goto Shadowmoon Valley D/0 29.93,29.20
step
talk Qiana Moonshadow##81948
turnin Qiana Moonshadow##34646 |goto Lunarfall/0 40.52,54.00
step
Congratulations, you now have Qiana Moonshadow as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rangari Chel",{
keywords={"rangari","chel","marksmanship","hunter","multi-shot","minion","swarms"},
description="\nThis guilde will walk you through obtaining Rangari Chel as a Garrison Follower.",
},[[
step
Routing to Rangari Chel |next "Chel" |only if not completedq(34788)
Routing to End |next "FComplete" |only if completedq(34788)
stickystart "disclaimer"
step
label "Chel"
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto Shadowmoon Valley D/0 56.51,23.59
step
Follow the winding pathway |goto Shadowmoon Valley D 59.0,24.9 < 20 |only if walking
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
Go up the stairs and follow the trail |goto Shadowmoon Valley D 60.0,26.6 < 20 |only if walking
Discover the Infiltrator's Hideout |q 35552/1 |goto 61.32,25.19
step
kill Sister of Secrets##82881
click Shadow Council Tome of Curses##233229
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
Begin the Ritual |q 34789/1 |goto 66.44,26.16
Defend Hataaru's Spirit |q 34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
click Maladaar's Focusing Lens##
Cross the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20 |only if walking
Plant the Focusing Lens |q 34792/1 |goto 60.58,20.56
step
kill Exarch Othaar##80076, Socrethar##82625
Reveal the Traitor |q 34792/2 |goto 60.48,20.70
Deal with the Traitor |q 34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's to be your Follower:
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
Choose a Follower |q 34788/1 |goto 62.41,26.22
step
label "disclaimer"
This questline allows you to choose one of three followers:
Apprentice Artificer Andren
Rangari Chel
Vindicator Onaala
You cannot recruit the other followers after you have chosen one
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
step
label "FComplete"
Congratulations, you now have _Rangari Chel_ as a Garrison Follower! |only if hasfollower(185)
You have already chosen _Apprentice Artificer Andren_, you cannot recruit _Rangari Chel_ |only if hasfollower(184)
You have already chosen _Vindicator Onaala, you cannot recruit _Rangari Chel_ |only if hasfollower(186)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rangari Erdanii",{
keywords={"rangari","erdanii","subtlety","rogue","sap","deadly","minions"},
description="\nThis guilde will walk you through obtaining Rangari Erdanii as a Garrison Follower.",
},[[
step
talk Vindicator Maraad##75127
|tip You must have the Highpass Sparring Arena to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept Rage and Wisdom##35686 |goto Gorgrond/0 52.85,59.68
talk Rangari Jonaa##86043 |goto Gorgrond/0 52.8,59.9
|tip Talk to Rangari Jonaa at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
talk Rangari Rajess##81074
Tell her _"I need to meet with Rangari Erdanii"_
Ask Rangari Rajess to fly you to Rangari Erdanii |q 35686/1 |goto 52.83,59.34
step
talk Rangari Erdanii##82610
turnin Rage and Wisdom##35686 |goto 46.27,66.70
accept Seedbearers of Bad News##35664 |goto 46.27,66.70
accept A Harsh Reminder##35693 |goto 46.27,66.70
stickystart "ancientseedbearers"
step
kill Gronn Rockthrower##80689+, Gronnling Bonebreaker##80685+, Goren Gouger##80690+
Kill #8# Denziens of the Wasteland |q 35693/1 |goto 45.28,65.11
step
label "ancientseedbearers"
clicknpc Ancient Seedbearer##82392+
|tip They look like big tree ents with leafy green plants as hair laying on the ground around this area.
Burn #5# Ancient Seedbearers |q 35664/1 |goto 45.28,65.11
step
talk Rangari Erdanii##82610
|tip She's stealthed, standing on top of this stack of rocks.
turnin A Harsh Reminder##35693 |goto 44.91,63.93
turnin Seedbearers of Bad News##35664 |goto 44.91,63.93
accept We Have Company##35665 |goto 44.91,63.93
step
talk Dying Beast##81056
Select "_Release the creature from its chains._"
Investigate the Iron Horde Camp |q 35665/1 |goto 44.29,61.64
step
talk Rexxar##82832
turnin We Have Company##35665 |goto 44.29,61.64
accept Cauterizing Wounds##35730 |goto 44.29,61.64
step
click Iron Horde Bonfire##233180
|tip It looks like a fire with 3 big logs sticking out of it, in a metal base.
collect Burning Log##113398 |q 35730/1 |goto 44.38,61.34
step
clicknpc Nisha##83933
Cauterize Nisha's Wounds |q 35730/2 |goto 44.29,61.64
step
talk Rexxar##82832
turnin Cauterizing Wounds##35730 |goto 44.29,61.64
accept On the Mend##35026 |goto 44.29,61.64
accept Basilisk Butcher##35870 |goto 44.29,61.64
step
kill Rippling Steamfury##83458+, Turbulent Steamfury##81685+
collect 100 Quenching Waters##113009 |q 35026/1 |goto Gorgrond 43.4,61.5
You can find more around [Gorgrond 45.03,60.84]
step
kill Stoneshamble Basilisk##74962+
clicknpc Decaying Basilisk##83405+
|tip They look like dead basilisks on the ground around this area.
collect 9 Basilisk Meat##113504 |q 35870/1 |goto Gorgrond 43.6,60.8
step
Go up the path |goto Gorgrond 45.1,55.4 < 10 |only if walking
talk Nisha##81674
turnin On the Mend##35026 |goto 45.86,54.96
turnin Basilisk Butcher##35870 |goto 45.86,54.96
step
talk Rexxar##83569
accept Is This One of Yours?##36508 |goto 46.03,54.75
step
talk Rexxar##83569
Tell Rexxar _"This is one of my allies."_
Vouch For Rangari Erdanii |q 36508/1 |goto 46.03,54.75
step
talk Rangari Erdanii##82610
turnin Is This One of Yours?##36508 |goto 46.20,55.09
accept The Crystal Shard##36208 |goto 46.20,55.09
accept Hard Shell##36210 |goto 46.20,55.09
step
talk Rexxar##80856
accept Bad at Breaking##35037 |goto 46.03,54.75
accept Nisha's Vengeance##35934 |goto 46.03,54.75
stickystart "gromkargrunts"
step
kill Mangled Boulderbreaker##85988 |q 35037/1 |goto 48.02,54.36
step
Run up the hill |goto Gorgrond 47.8,53.0 < 20 |only if walking
Enter the camp |goto Gorgrond 48.2,51.8 < 20 |walk
kill Gronnslaver Raz##83774 |q 35037/2 |goto 47.75,51.62
step
click Weaponization Orders##233391
|tip It looks like a large book laying inside of a wagon.
accept The Gronn Strategy##35925 |goto 47.73,52.07
step
label "gromkargrunts"
kill 10 Grom'kar Grunt##75091 |q 35934/1 |goto 47.78,53.11
stickystart "gorencrystals"
step
kill Boneyard Gorger##81206+, Boneyard Tunneler##81518+
|tip Get close to the rumbling fissures on the ground to get a group of Boneyard Gorgers to spawn, if you need more mobs to kill.
collect 9 Goren Shell##112786 |q 36210/1 |goto 45.23,52.39
step
label "gorencrystals"
clicknpc Longtooth Gorger##83489+
|tip They look like dead bodies on the ground around this area.
collect 25 Goren Crystal##112911 |q 36208/1 |goto 45.23,52.39
step
Run up the path |goto Gorgrond 45.0,55.3 < 20
talk Rexxar##80856
turnin Bad at Breaking##35037 |goto 46.03,54.75
turnin Nisha's Vengeance##35934 |goto 46.03,54.75
turnin The Gronn Strategy##35925 |goto 46.03,54.75
step
talk Rangari Erdanii##82610
turnin The Crystal Shard##36208 |goto 46.20,55.09
turnin Hard Shell##36210 |goto 46.20,55.09
accept What's Under There?##36209 |goto 46.20,55.09
step
use Goren Disguise##112958
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the First Tunnel Leads |q 36209/1 |goto 46.87,55.37
step
clicknpc Bluff Rylak##86022
|tip It looks like a large two-headed winged creature laying on the ground.
Consume the Rylak |q 36209/2 |goto Gorgrond 45.8,50.4
step
use Goren Disguise##112958
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the Second Tunnel Leads |q 36209/3 |goto Gorgrond/0 45.8,50.4
See Where the Third Tunnel Leads |q 36209/4 |goto Gorgrond/0 45.8,50.4
step
use Goren Disguise##112958
clicknpc Grom'kar Messenger##84503
|tip It looks like a dead brown orc laying on the ground.
collect Grom'kar Dispatch##114963 |q 36209/5 |goto 43.16,42.29
step
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
Take the Tunnel Back to Breaker's Crown |q 36209/6 |goto 43.04,42.49
step
talk Rangari Erdanii##82610
turnin What's Under There?##36209 |goto 46.20,55.09
accept Leave Every Soldier Behind##36223 |goto 46.20,55.09
step
talk Rexxar##80856
accept Fair Warning##35128 |goto 46.03,54.75
step
talk Nisha##81674 |goto 45.88,54.97
Select _Ride Nisha to Fissure of Fury._
Fly to Fissure of Fury |goto 43.95,48.77 < 20 |noway |c
only if haveq(35128) or haveq(36223)
stickystart "ogronspinecrushers"
step
Continue following the path down |goto Gorgrond/18 39.7,41.8 < 30 |walk
talk Corporal Thukmar##81213
|tip He's at the bottom of the cave.  Follow the spiral path down.
Select "_Put the Corporal out of his misery._"
Find Corporal Thukmar |q 36223/1 |goto Gorgrond/19 45.0,85.4
step
click Thukmar's Research##233594
|tip It's a large book on the ground.
collect Thukmar's Intel##113629 |q 36223/2 |goto Gorgrond/19 45.0,85.4
step
kill Borogahn##81043 |q 35128/2 |goto  Gorgrond/19 31.3,74.9
step
label "ogronspinecrushers"
kill 8 Ogron Spinecrusher##81240 |q 35128/1 |goto Gorgrond/19 55.3,80.2
step
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
accept A Great Escape##35210 |goto Gorgrond/19 35.18,67.64
step
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
Take the Tunnel to Rexxar |q 35210/1 |goto Gorgrond/19 34.6,66.6
step
talk Rexxar##84131
turnin Leave Every Soldier Behind##36223 |goto Gorgrond 43.9,48.9
turnin Fair Warning##35128 |goto Gorgrond 43.9,48.9
turnin A Great Escape##35210 |goto Gorgrond 43.9,48.9
accept Eye in the Sky##35139 |goto Gorgrond 43.9,48.9
step
talk Nisha##83933
Select "_Place your hand on Nisha's head._"
Scout With Nisha |q 35139/1 |goto 43.86,48.86
step
talk Rexxar##84131
turnin Eye in the Sky##35139 |goto 43.94,48.83
accept Chains of Iron##35702 |goto 43.94,48.83
step
Follow the path |goto Gorgrond 48.1,45.8 < 20 |only if walking
kill Captain Brak##81254 |q 35702/1 |goto 49.22,44.81
|tip You will need to fight through waves of enemies before she appears. You will have help killing the waves, though.
step
click Heart of the Magnaron##231775
|tip It's a giant disk with a yellow core laying against the mountainside.
collect Heart of the Magnaron##112680 |q 35702/2 |goto 49.73,43.85
step
talk Vindicator Maraad##75127
turnin Chains of Iron##35702 |goto 52.86,59.70
step
talk Rangari Erdanii##85278
accept May I Be of Service?##36833 |goto Gorgrond/0 53.3,59.7
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Rangari Erdanii##119252 |condition itemcount(119252) > 0 or hasfollower(212) |goto Lunarfall/0 28.3,34.2
|tip It costs 5,000 Gold.
step
use Contract: Rangari Erdanii##119252
Recruit Rangari Erdanii |condition hasfollower(212)
step
label "end"
Congratulations, you now have Rangari Erdanii as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rangari Kaalya",{
keywords={"rangari","kaalya","survival","hunter","counter","shot","powerful","spell"},
description="\nThis guilde will walk you through obtaining Rangari Kaalya as a Garrison Follower.",
},[[
step
talk Thaelin Darkanvil##81588
|tip You must have the Highpass Logging Camp to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept A Heavy Helping Hand##35225 |goto Gorgrond/0 46.07,76.86
talk Rangari Jonaa##86043 |goto Gorgrond/0 52.8,59.9
|tip Talk to Rangari Jonaa at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Run along the stone road |goto Gorgrond 47.4,81.4 < 20 |only if walking
Go up the hill into Bastion Rise |goto 47.9,90.9 < 20 |only if walking
Enter Bastion Rise |goto 47.9,93.7 < 10 |walk
Find the Dark Iron Dwarf Survivors |q 35225/1 |goto 47.55,94.10
step
talk Hansel Heavyhands##75710
turnin A Heavy Helping Hand##35225 |goto 47.55,94.10
accept Will of the Genesaur##35234 |goto 47.55,94.10
accept Down the Goren Hole##35229 |goto 47.55,94.10
accept Just In Case##35233 |goto 47.55,94.10
stickystart "acidmouth"
stickystart "doomshot"
step
Follow the path down |goto Gorgrond/16 56.3,83.6 < 10 |only if walking
click Will of the Genesaur##231961
|tip It's a large silver box with a yellow dome on top.
collect Will of the Genesaur##11299 |q 35234/1 |goto Gorgrond/17 58.21,24.27
step
label "doomshot"
click Doomshot##232492
|tip They are bullet shaped containers on the ground around this area.
collect 5 Doomshot##112990 |q 35233/1 |goto Gorgrond/17 56.1,51.6
step
label "acidmouth"
kill 5 Acidmouth Breacher##81690 |q 35229/1 |goto Gorgrond/17 56.1,51.6
step
talk Hansel Heavyhands##75710
turnin Down the Goren Hole##35229 |goto Gorgrond/17 50.0,22.2
turnin Will of the Genesaur##35234 |goto Gorgrond/17 50.0,22.2
turnin Just In Case##35233 |goto Gorgrond/17 50.0,22.2
accept Iyu##35235 |goto 50.18,22.67
step
Go back up the tunnel |goto Gorgrond/17 68.4,78.5 < 10
kill Iyu##78819 |q 35235/1 |goto Gorgrond 47.42,92.31
step
talk Yrel##75878
turnin Iyu##35235 |goto Gorgrond 47.7,93.3
step
talk Rangari Kaalya##81772
accept Service of Rangari Kaalya##35262 |goto 47.78,93.27
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Ranger Kaalya##119298 |condition itemcount(119298) > 0 or hasfollower(159) |goto Lunarfall/0 28.3,34.2
step
use Contract: Ranger Kaalya##119298
Recruit Rangari Kaalya |condition hasfollower(159)
step
label "end"
Congratulations, you now have Rangari Kaalya as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rulkan",{
keywords={"rulkan","enhancement","shaman","hex","deadly","minions","blacksmithing"},
description="\nThis guilde will walk you through obtaining Rulkan as a Garrison Follower.",
},[[
step
talk Prophet Velen##79043
accept Chasing Shadows##33586 |goto Shadowmoon Valley D/0 40.6,55.0
step
talk Rulkan##75884
turnin Chasing Shadows##33586 |goto Shadowmoon Valley D/0 45.7,26.3
accept Ancestor's Memory##33082 |goto Shadowmoon Valley D/0 45.7,26.3
step
Enter the cave |goto Shadowmoon Valley D/0 46.3,27.2 < 10 |walk
click Broken Totem
Find the Ancestor's Totem |q 33082/1 |goto Shadowmoon Valley D/0 45.7,25.4
step
Watch the dialogue
talk Rulkan##75884
turnin Ancestor's Memory##33082 |goto Shadowmoon Valley D/0 45.8,25.6
accept Rulkan##35631 |goto Shadowmoon Valley D/0 45.8,25.6
step
Congratulations, you now have Rulkan as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Shelly Hamby",{
keywords={"shelly","hamby","subtlety","rogue","sprint","danger","zones","leatherworking"},
description="\nThis guilde will walk you through obtaining Shelly Hamby as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
#include "Garrison_KenLoggin"
accept Lost Lumberjacks##34820
step
talk Lost Packmule##79966 |tip The Packmule patrols a short area around the road.
turnin Lost Lumberjacks##34820 |goto Shadowmoon Valley D/0 39.82,30.07
accept Gloomshade Grove##33263
step
talk Phlox##74667
Speak With Phlox |q 33263/2 |goto 39.27,25.64
step
click Alliance Sword##224229
Investigate the Pond |q 33263/3 |goto 39.54,22.65
step
talk Phlox##74667
Speak With Phlox |q 33263/4 |goto 39.56,22.78
step
click Alliance Shield##223720
Investigate the Alliance Shield |q 33263/5 |goto 39.84,19.92
step
talk Phlox##74667
Speak With Phlox |q 33263/6 |goto 39.86,19.98
step
clicknpc Dead Packmule##74193
Investigate the Dead Packmule on the beach |q 33263/7 |goto 41.83,18.00
step
talk Phlox##74667
Speak With Phlox |q 33263/8 |goto 41.93,18.01
step
Investigate Gloomshade Grotto |q 33263/9 |goto Shadowmoon Valley D/0 47.0,15.1
step
kill Phlox##74244 |q 33263/10 |goto 47.1,14.8
step
talk Jarrod Hamby##73877
turnin Gloomshade Grove##33263 |goto 47.09,14.41
accept Game of Thorns##33271 |goto 47.09,14.41
step
Follow the path |goto 36.8,21.9 |only if walking
kill King Deathbloom##73888 |q 33271/1 |goto 35.7,19.8
step
talk Shelly Hamby##76748
turnin Game of Thorns##33271 |goto 36.39,19.28
accept Shelly Hamby##35625 |goto 36.39,19.28
step
Congratulations, you now have Shelly Hamby as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Soulbinder Tuulani",{
keywords={"soulbinder","tuulani","shadow","priest","prayer","of","healing","group","damage"},
description="\nThis guilde will walk you through obtaining Soulbinder Tuulani as a Garrison Follower.",
},[[
step
Build Your Talador Outpost |condition completedq(34563) or completedq(34631)
|tip Use the Leveling guides to accomplish this.
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Vindicator Icia##79618
accept Speaker for the Dead##34701 |goto Talador/0 69.65,21.61
step
talk Exarch Maladaar##75119
turnin Speaker for the Dead##34701 |goto 55.65,67.73 |only if haveq(34701)
accept Holding the Line##34407 |goto 55.66,67.74
step
talk Vindicator Kaluud##81789
accept Powering the Defenses##34458 |goto 55.64,67.77
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.14
stickystart "killinvadersAT"
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.75,65.95
step
kill O'mogg Blackheart##76876 |q 33920/1 |goto 56.49,62.84
step
click Karab'uun##229269
|tip It's a big pink crystal suspended in chains.
collect Karab'uun##108733 |q 33920/2 |goto 56.68,62.50
step
click Burning Resonator##229139
|tip They look like green glowing crystals floating above spiked altars.
Destroy #4# Burning Resonators |q 33917/1 |goto 56.29,63.28
step
label "killinvadersAT"
kill Abyssal Invader##78433+, Burning Hunter##78457+, Legion Assailant##76883+
Kill #15# Demons |q 34407/1 |goto 56.34,64.08
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.70,65.96
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.14
step
talk Exarch Maladaar##75119
turnin Holding the Line##34407 |goto 55.65,67.71
step
Enter the tomb and _follow_ the path |goto Talador/13 46.9,21.5 < 10 |walk
Go through the doorway |goto Talador/13 54.5,29.7 < 10 |walk
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##34458 |goto Talador/13 68.38,19.36
accept We Must Construct Additional Pylons##34351 |goto Talador/13 62.14,63.70
step
Go through the doorway |goto Talador/13 54.5,29.7 < 10 |walk
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto Talador/13 52.17,38.65
stickystart "arkoniteAT"
step
Investigate the Ritual |q 33530/1 |goto Talador/13 59.0,54.4
step
kill Tagar Spinebreaker##76745 |q 33530/2 |goto Talador/13 63.71,68.14
step
Run up the ramp |goto Talador/13 57.2,49.3 < 10 |only if walking
Go through the doorway |goto Talador/13 47.3,35.7 < 10 |only if walking
click Arkonite Pylon##229034
|tip It looks like a large floating slab of stone.
collect Arkonite Pylon##110271 |q 34351/2 |goto 32.02,48.82
step
label "arkoniteAT"
click Arkonite Crystal##229422
|tip They look like big purple crystals all over the ground around this area.
collect 6 Arkonite Crystal##110253 |q 34351/1 |goto Talador/13 53.8,34.6
step
Go through the doorway |goto Talador/13 48.6,25.5 < 10 |only if walking
Run up the stairs |goto Talador/13 43.0,22.2 < 10 |only if walking
talk Exarch Maladaar##75119
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.7,67.7
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.13,67.41
step
talk Exarch Maladaar##75119
accept Light's Rest##34452 |goto 55.66,67.70
step
talk Exarch Maladaar##75250
turnin Light's Rest##34452 |goto 57.23,77.03
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33958 |goto 57.19,76.94
step
talk Soulbinder Tuulani##78028
accept Antivenin##33967 |goto 57.23,76.91
step
talk Vindicator Namuun##78102
accept Vile Defilers##33969 |goto 57.55,76.70
stickystart "deathwebfangAT"
step
Enter the cave |goto Talador/0 61.1,84.0 < 20 |walk
Follow the path in the cave |goto Talador/0 62.4,83.9 < 10 |walk
kill Xanatos the Defiler##75294 |q 33958/1 |goto 65.44,86.64
stickystop "deathwebfangAT"
step
click Sha'tari##229596
|tip It looks like a pink crystal with a shield around it floating next to the eggs.
collect Sha'tari##110683 |q 33958/2 |goto 65.79,86.87
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 1 Defiling Crystal |q 33969/1 |count 1 |goto Talador 64.8,86.9
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 2 Defiling Crystals |q 33969/1 |count 2 |goto 65.3,85.4
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 3 Defiling Crystals |q 33969/1 |count 3 |goto 64.0,85.6
stickystart "deathwebfangAT"
step
Enter the hallway |goto Talador/0 63.3,84.4 < 10 |walk
Follow the path |goto Talador/0 62.3,84.0 < 10 |walk
Leave the cave |goto Talador/0 61.1,84.0 < 10 |walk
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 4 Defiling Crystals |q 33969/1 |count 4 |goto Talador 58.7,82.7
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 5 Defiling Crystals |q 33969/1 |count 5 |goto Talador 61.6,81.7
step
label "deathwebfangAT"
kill Deathweb Egg Tender##76947+, Deathweb Hatchling##75258+
collect 9 Deathweb Fang##109744 |q 33967/1 |goto 60.18,81.1
step
talk Vindicator Namuun##78102
turnin Vile Defilers##33969 |goto 57.55,76.70
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33967 |goto 57.23,76.91
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33958 |goto 57.18,76.92
step
talk Exarch Maladaar##75250
accept Scheduled Pickup##34240 |goto 57.23,77.04
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34240 |goto 50.42,87.50
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.50
step
Leave the building |goto Talador 47.8,89.5 < 10 |walk
Run up the stairs |goto Talador 47.4,90.0 < 10 |only if walking
Enter the building |goto Talador 45.3,90.4 < 10 |walk
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.50
accept The Final Piece##33976 |goto 44.85,90.50
step
kill Vorpil Ribcleaver##77051 |q 33976/1 |goto 44.45,90.89
step
click Auch'naaru##229654
|tip It looks like a big floating pink crystal with a shield around it.
collect Auch'naaru##109197 |q 33976/2 |goto 44.45,90.89
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.86,90.52
accept Changing the Tide##34326 |goto 44.86,90.52
step
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.95
accept Desperate Measures##34092 |goto 43.43,75.95
step
Enter the ogre area here |goto Talador 41.4,80.3 < 20 |only if walking
Go up the stairs |goto Talador 40.2,83.3 < 10 |only if walking
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q 34092/1 |goto Talador 39.5,83.7
step
Follow the path |goto Talador 40.1,83.3 < 10 |only if walking
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q 34092/2 |goto Talador 42.7,84.9
step
Follow the path |goto Talador 41.8,84.2 < 10 |only if walking
clicknpc Altar of Ango'rosh##77393
|tip It looks like a big torch with skulls on it, standing in a pile of rocks.
|tip Be sure to not move as the ritual channels.
Perform the Ritual |q 34092/3 |goto 41.18,82.44
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.94
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto Talador/0 42.93,76.11
step
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.22,73.61
accept Destination: Unknown##34154 |goto 31.22,73.61
step
clicknpc Demonic Gateway##77571
|tip It looks like a big green portal.
Take the Portal |q 34154/1 |goto 30.92,73.15
step
kill Mongrethod##77579 |q 34154/2
step
_Go to the North side_ of the room
clicknpc Demonic Gateway##77571
|tip It looks like a swirling portal with a demon skull above it.
Take the Portal |q 34154/3
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34154 |goto 46.32,74.08
accept Together We Are Strong##36512 |goto 46.32,74.08
step
Congratulations, you now have Soulbinder Tuulani as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Talon Guard Kurekk",{
keywords={"talon","guard","kurekk","arms","warrior","cleave","minion","swarms"},
description="\nThis guilde will walk you through obtaining Talon Guard Kurekk as a Garrison Follower.",
},[[
step
Become Exalted with the Arakkoa Outcasts |condition rep('Arakkoa Outcasts') >= Exalted |goto Spires of Arak/0 73.4,42.4
|tip This can be accomplished by completing quests in Spires of Arak and farming reputation in Lost Veil Anzu.
step
achieve 8925/9
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
accept Call of the Talon King##37177 |goto Spires of Arak/0 46.5,45.8
|tip This quest will automatically pop up. You may have to leave and reenter Spires of Arak.
step
talk Shade of Terokk##84122
turnin Call of the Talon King##37177 |goto Spires of Arak 46.6,46.6
step
achieve 9072
step
talk Talon Guard Kurekk##80758
accept Talon Guard Kurekk##37144 |goto Spires of Arak 64.1,37.0
step
Congratulations, you now have Talon Guard Kurekk as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Talonpriest Ishaal",{
keywords={"talonpriest","ishaal","shadow","priest","dispel","magic","debuff","bodyguard"},
description="\nThis guilde will walk you through obtaining Talonpriest Ishaal as a Garrison Follower.",
},[[
step
To recruit Talonpriest Ishaal, you must complete the _Between Arak and a Hard Place_ achievement
|tip This requires you to complete all of the major story questlines in Spires of Arak.
|tip Use the Loremaster or Leveling guide to accomplish this.
achieve 8925
step
talk Talonpriest Ishaal##83959
accept Talonpriest Ishaal##37141 |goto Spires of Arak 46.4,46.6
step
Congratulations, you now have Talonpriest Ishaal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Thisalee Crow",{
keywords={"thisalee","crow","feral","druid","growl","wild","aggression"},
description="\nThis guilde will walk you through obtaining Thisalee Crow as a Garrison Follower.",
},[[
step
#include "Garrison_BGrey"
accept Garrison Campaign: Awakening##36134
|tip This quest is one of the Garrison Campaigns that has a chance to appear every week. If it's not here now check back next week.
step
talk Thisalee Crow##84185
Ask her _"What's the situation?"_
Speak to Thisalee Crow |q 36134/1 |goto Gorgrond 40.93,43.0
step
kill Duurg##84153 |q 36134/2 |goto Gorgrond 37.8,44.6
step
Follow the path back up |goto Gorgrond/0 41.4,46.8 < 15 |only if walking
talk Thisalee Crow##84185
turnin Garrison Campaign: Awakening##36134 |goto Gorgrond 40.9,43.0
accept Primal Fury##36341 |goto Gorgrond 40.9,43.0
step
talk Bodrick Grey##85053
Tell him _"Reporting for battle!"_
Meet Bodrick Grey |q 36341/1 |goto Talador 69.4,9.1
step
Enter Bladefury's Command |goto Talador/0 68.3,5.6 < 15 |walk
kill Gorgorek##85042 |q 36341/2 |goto Talador 69.2,3.2
step
Continue further into Bladefury's Command |goto Talador/0 69.4,4.5 < 15 |walk
kill Azuka Bladefury##85046 |q 36341/3 |goto Talador 69.6,5.8
step
clicknpc Sanketsu##87764
|tip It's a sword stuck in the ground that is dropped after Azuka is killed.
accept Sanketsu, The Burning Blade##37191 |goto Talador/0 69.5,5.8
step
talk Thisalee Crow##84185
Ask her _"Where is the rest of the army?"_
Speak to Thisalee Crow |q 36341/4 |goto Talador 67.5,7.6
step
Watch the dialogue
Witness Grommash Hellscream's Challenge |q 36341/5 |goto Talador/0 69.5,9.1
step
#include "Garrison_LtThorn"
turnin Primal Fury##36341
turnin Sanketsu, The Burning Blade##37191
step
Congratulations, you now have Thisalee Crow as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Tormmok",{
keywords={"tormmok","arms","warrior","taunt","wild","aggression","bodyguard"},
description="\nThis guilde will walk you through obtaining Tormmok as a Garrison Follower.",
},[[
step
Kill the enemies attacking Tormok
talk Tormmok##83820
Tell him _"No one should become fertilizer for these monsters..."_
|tip Click through the dialogue options and then the quest will appear.
accept A Centurion Without a Cause##36037 |goto Gorgrond 45.0,86.9
step
Congratulations, you now have Tormmok as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Vindicator Onaala",{
keywords={"vindicator","onaala","holy","paladin","cleanse","magic","debuff"},
description="\nThis guilde will walk you through obtaining Vindicator Onaala as a Garrison Follower.",
},[[
stickystart "Ona"
step
Routing to Vindicator Onaala |next "Onaala" |only if not completedq(34788)
Routing to End |next "Completed" |only if completedq(34788)
step
label "Onaala"
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto Shadowmoon Valley D/0 56.51,23.59
step
Follow the winding pathway |goto Shadowmoon Valley D 59.0,24.9 < 20 |only if walking
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
Go up the stairs and follow the trail |goto Shadowmoon Valley D 60.0,26.6 < 20 |only if walking
Discover the Infiltrator's Hideout |q 35552/1 |goto 61.32,25.19
step
kill Sister of Secrets##82881
click Shadow Council Tome of Curses##233229
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
Begin the Ritual |q 34789/1 |goto 66.44,26.16
Defend Hataaru's Spirit |q 34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
click Maladaar's Focusing Lens##
Cross the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20 |only if walking
Plant the Focusing Lens  |q 34792/1 |goto 60.58,20.56
step
kill Exarch Othaar##80076, Socrethar##82625
Reveal the Traitor |q 34792/2 |goto 60.48,20.70
Deal with the Traitor |q 34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
label "Ona"
This questline allows you to choose one of three followers:
Apprentice Artificer Andren
Rangari Chel
Vindicator Onaala
You cannot earn the other followers after you have chosen one
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's to be your Follower:
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
Choose a Follower |q 34788/1 |goto 62.41,26.22
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
step
label "Completed"
Congratulations, you now have _Vindicator Onaala_ as a Garrison Follower! |only if hasfollower(186)
You have already recruited _Apprentice Artificer Andren_, you cannot recruit _Vindicator Onaala_ |only if hasfollower(184)
You have already recruited _Rangari Chel_, you cannot recruit _Vindicator Onaala_ |only if hasfollower(185)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Weldon Barov",{
keywords={"weldon","barov","assassination","rogue","sprint","danger","zones"},
description="\nThis guilde will walk you through obtaining Weldon Barov as a Garrison Follower.",
},[[
step
In order to recruit this Follower you must have a Lumber Mill and be able to harvest small timber with _Apprentice Logging_
|tip Use the Garrison Buildings guides to accomplish this.
Harvest the Fallen Tree |goto Talador 73.7,64.0
It can also be at these locations:
Location 1: [Talador/0 59.0,29.8]
Location 2: [Talador/0 54.3,56.2]
Location 3: [Talador/0 70.1,54.2]
_Wait_ for Weldon Barov to appear
talk Weldon Barov##85378
accept The Rise and Fall of Barov Industries: Weldon Barov##36429
step
Congratulations, you now have Weldon Barov as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ziri'ak",{
keywords={"Ziri'ak","arms","warrior","pummel","powerful","spell"},
description="\nThis guilde will walk you through obtaining Ziri'ak as a Garrison Follower.",
},[[
step
This Follower is a random drop from your _Smuggling Run!_ Garrison ability when in the Spires of Arak
|tip You must have the Smuggler's Den to use this ability. You can switch buildings but it costs 5,000 Gold.
talk Lieutenant Willem##81929 |goto Spires of Arak/0 39.9,60.8
|tip Talk to Lieutenant Willem to change your Outpost if needed.
Use your Garrison ability |cast Smuggling Run!##170097
|tip His inventory is random. You can use this ability every 10 minutes.
talk Honest Jim##82459
buy Inactive Apexis Guardian##116915 |condition itemcount(119267) > 0 or hasfollower(168)
|tip It costs 400 Gold.
_Or_
Click to Purchase this Follower from your Garrison |confirm |next "buy"
step
use Inactive Apexis Guardian##116915
Recruit Ziri'ak |condition hasfollower(168)
|next "end"
step
label "buy"
talk Deluwin Whisperfield##88633
buy Contract: Ziri'ak##119267 |condition itemcount(119267) > 0 or hasfollower(168) |goto Lunarfall 28.8,34.4
|tip It costs 5,000 Gold.
step
use Contract: Ziri'ak##119267
Recruit Ziri'ak |condition hasfollower(168)
step
label "end"
Congratulations, you now have Ziri'ak as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Campaign",{},[[
#include "Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\Onslaught at Auchindoun",{
description="\nThis guide will walk you through the Onslaught at Auchindoun Garrison Campaign questline in Tanaan Jungle, introduced in patch 6.2.",
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Exarch Yrel##90309
accept Garrison Campaign: Onslaught at Auchindoun##38421 |goto Tanaan Jungle/0 58.5,60.3
step
Follow the path |goto Talador/0 42.8,74.5 < 30 |only if walking
talk Exarch Yrel##91751
turnin Garrison Campaign: Onslaught at Auchindoun##38421 |goto Talador/0 44.3,65.4
accept Secrets of the Sargerei##38562 |goto Talador/0 44.3,65.4
accept The Sargerei Menace##38565 |goto Talador/0 44.3,65.4
step
kill Burning Hound##91707+, Sargerei Punisher##91685+, Sargerei Souldrainer##91686+
kill 12 Sargerei |q 38565/1 |goto Talador/0 46.0,63.2
step
Click the Complete Quest Box
turnin The Sargerei Menace##38565
step
Jump down into the hole |goto Talador/0 46.8,63.4 < 20 |walk
Go down the path and _jump down_ here |goto Talador/30 41.9,29.3 < 20 |walk
Enter the Breached Ossuary |q 38562/1 |goto Talador/30 44.0,29.5
step
Follow the path |goto Talador/30 47.6,28.4 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the East Fel Soul Drainer |q 38562/3 |goto Talador/30 63.5,17.4
step
Go through the doorway |goto Talador/30 47.5,28.6 < 20 |walk
Follow the path |goto Talador/30 40.0,33.5 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the West Fel Soul Drainer |q 38562/2 |goto Talador/30 24.2,44.5
step
Go through the doorway |goto Talador/30 40.1,33.5 < 20 |walk
Follow the path down |goto Talador/30 46.2,38.8 < 20 |walk
Investigate the Lower Chamber |q 38562/4 |goto Talador/30 49.7,50.3
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #1# Corrupted Soul Focus |q 38562/5 |goto Talador/30 56.0,70.7
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #2# Corrupted Soul Focus |q 38562/5 |goto Talador/30 53.8,85.1
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #3# Corrupted Soul Focus |q 38562/5 |goto Talador/30 64.8,77.2
Watch the dialogue
Defeat Gorefiend |q 38562/6
step
talk Exarch Yrel##91751
turnin Secrets of the Sargerei##38562 |goto Talador/30 56.8,66.7
step
Congratulations, you've completed the _"Onslaught at Auchindoun"_ Garrison Campaign questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\The Bane of the Bleeding Hollow",{
description="\nThis guide will walk you through the Bane of the Bleeding Hollow Garrison Campaign questline in Tanaan Jungle, introduced in patch 6.2.",
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Exarch Yrel##90309
accept Garrison Campaign: The Bane of the Bleeding Hollow##38560 |goto Tanaan Jungle/0 58.5,60.3
|tip If this quest is not available to you, find and use the guide for the quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
Follow the path |goto Tanaan Jungle/0 27.9,58.9 < 30 |only if walking
Run up the dirt path |goto Tanaan Jungle/0 21.3,59.0 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Impaler##89705+, Bleeding Hollow Cabalist##90851+
collect 8 Bleeding Hollow Hunting Map##127006 |q 38560/1 |goto Tanaan Jungle/0 22.7,53.5
step
Click the Complete Quest Box
turnin Garrison Campaign: The Bane of the Bleeding Hollow##38560
accept Finding the Killer##38270
step
Follow the path |goto Tanaan Jungle/0 23.1,50.2 < 30 |only if walking
Go down the path |goto Tanaan Jungle/0 24.0,48.6 < 30 |only if walking
Run up the dirt path |goto Tanaan Jungle/0 27.6,47.2 < 30 |only if walking
talk Ariok##91299
turnin Finding the Killer##38270 |goto Tanaan Jungle/0 27.1,44.4
accept Following the Bloody Path##38271 |goto Tanaan Jungle/0 27.1,44.4
step
Run up the path |goto Tanaan Jungle/0 27.8,44.2 < 30 |only if walking
|tip Avoid the traps on the ground.
Follow the path down |goto Tanaan Jungle/0 30.5,40.1 < 30 |only if walking
talk Ariok##91351
turnin Following the Bloody Path##38271 |goto Tanaan Jungle/0 32.6,37.5
accept The Bleeding Hollow##38272 |goto Tanaan Jungle/0 32.6,37.5
step
click Orc Skull##240547
|tip It looks like a tall wooden totem stuck vertically in the ground, with a skull at the top of it.
accept Spirits of the Bleeding Hollow##38273 |goto Tanaan Jungle/0 32.4,37.4
step
Run down the spiral ramp and _follow_ the path |goto Tanaan Jungle/0 32.1,37.2 < 20 |only if walking
Continue following the path down |goto Tanaan Jungle/0 32.3,38.6 < 20 |only if walking
Follow the path down |goto Tanaan Jungle/0 33.0,37.3 < 30 |only if walking
Keep going down |goto Tanaan Jungle/0 32.6,35.3 < 30 |only if walking
Follow the path |goto Tanaan Jungle/0 31.9,37.6 < 20 |only if walking
Continue through the tunnel |goto Tanaan Jungle/0 32.9,38.1 < 20 |only if walking
kill 6 Enraged Blood Spirit##91313 |q 38273/1 |goto Tanaan Jungle/0 33.1,36.8
Reach the Bottom of the Bleeding Hollow |q 38272/1 |goto Tanaan Jungle/0 33.1,36.8
step
Click the Complete Quest Box
turnin Spirits of the Bleeding Hollow##38273
step
talk Braknoth##91324
turnin The Bleeding Hollow##38272 |goto Tanaan Jungle/0 33.4,37.3
accept The Eye of Kilrogg##38274 |goto Tanaan Jungle/0 33.4,37.3
step
click Eye Holder##240570
|tip They look like skulls stuck in the wall around this area.
kill Enraged Blood Spirit##91313+
collect Eye of Kilrogg##122574 |q 38274/1 |goto Tanaan Jungle/0 34.3,35.7
step
Follow the path |goto Tanaan Jungle/0 33.0,36.8 < 20 |only if walking
click Ritual of the Bleeding Hollow##241611
|tip It looks like a skull on the ground.
Watch the dialogue
kill Eye of Kilrogg##91475
Complete the Eye Ritual |q 38274/2 |goto Tanaan Jungle/0 32.6,36.8
step
talk Ariok##92317
turnin The Eye of Kilrogg##38274 |goto Tanaan Jungle/0 32.8,37.5
step
Congratulations, you've completed the _"Bane of the Bleeding Hollow"_ Garrison Campaign questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\In the Shadows",{
description="\nThis guide will walk you through the In the Shadows Garrison Campaign questline in Tanaan Jungle, introduced in patch 6.2.",
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Reshad##91290
accept Garrison Campaign: In the Shadows##37687 |goto Tanaan Jungle/0 57.4,58.8
step
use Reshad's Volatile Concoction##122463
|tip Walk around camp until blue smoking balls of light appear. Use Reshad's Volatile Concoction on it when you find one.
kill 3 Council Nightblade##91230 |q 37687/1 |goto Tanaan Jungle/0 57.6,59.3
step
talk Reshad##91292
turnin Garrison Campaign: In the Shadows##37687 |goto Tanaan Jungle/0 57.4,58.8
accept Friends Above##38267 |goto Tanaan Jungle/0 57.4,58.8
step
talk Skyguard Thann##90960 |goto Tanaan Jungle/0 57.5,58.8
Tell him _"Take me to Aktar's Post."_
Meet with Reshad at Aktar's Post |q 38267/1
step
talk Reshad##91291
turnin Friends Above##38267 |goto Tanaan Jungle/0 25.8,38.9
accept Get a Clue##38213 |goto Tanaan Jungle/0 25.8,38.9
step
Follow the path |goto Tanaan Jungle/0 24.6,39.9 < 30 |only if walking
click Message to Iskar##240347
|tip It looks like a tan scroll, laying flat on a small round table.
Find Clue #1 |q 38213/1 |goto Tanaan Jungle/0 22.1,39.3
step
Run down the path |goto Tanaan Jungle/0 22.3,38.9 < 20 |only if walking
click Shrine of Terokk##240348
|tip It looks like a small bird totem laying in a small fire.
Find Clue #2 |q 38213/2 |goto Tanaan Jungle/0 20.4,35.9
step
Run down the dirt path |goto Tanaan Jungle/0 20.7,38.5 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 19.7,40.1 < 30 |only if walking
click Inscribed Ruin##240345
|tip It looks like a partly broken circular stone leaning next to the wall.
Find Clue #3 |q 38213/3 |goto Tanaan Jungle/0 18.8,39.8
step
Follow the path |goto Tanaan Jungle/0 18.2,41.1 < 30 |only if walking
Run around the corner |goto Tanaan Jungle/0 16.4,44.6 < 30 |only if walking
Find the Final Clue |q 38213/4 |goto Tanaan Jungle/0 16.1,44.3
step
click Iskar's Tome of Shadows##240317
|tip It looks like a small black book, partly torn in half, sitting on a small round table.
turnin Get a Clue##38213 |goto Tanaan Jungle/0 16.1,44.3
accept Dark Ascension##38223 |goto Tanaan Jungle/0 16.1,44.3
step
talk Reshad##89400
Tell him _"I'm ready to begin."_
Speak to Reshad |q 38223/1 |goto Tanaan Jungle/0 16.1,44.4
step
Kill the enemies that attack in waves
Protect Reshad |q 38223/2 |goto Tanaan Jungle/0 15.9,44.7
step
talk Reshad##89400
turnin Dark Ascension##38223 |goto Tanaan Jungle/0 16.1,44.3
step
Congratulations, you've completed the _"In the Shadows"_ Garrison Campaign questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\The Warlock",{
description="\nThis guide will walk you through the Warlock Garrison Campaign questline in Tanaan Jungle, introduced in patch 6.2.",
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Exarch Yrel##90309
accept Garrison Campaign: The Warlock##38561 |goto Tanaan Jungle/0 58.5,60.3
|tip If this quest is not available to you, find and use the guide for the quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
talk Oronok Torn-heart##91994
|tip He looks like an armored orc, kneeling down inside this building near the fire.
Tell him _"Speak quickly warlock."_
Speak With the Warlock |q 38561/1 |goto Tanaan Jungle/0 58.5,60.2
step
Go to the Vault of the Earth |q 38561/2 |goto Tanaan Jungle/0 47.1,70.2
step
Enter the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
Follow the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
Stop Gul'dan |q 38561/3 |goto Tanaan Jungle/0 46.7,73.1
|tip Watch the dialogue.
step
Follow the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
Leave the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
talk Oronok Torn-heart##92055
turnin Garrison Campaign: The Warlock##38561 |goto Tanaan Jungle/0 47.4,70.4
accept Breaching the Barrier##38462 |goto Tanaan Jungle/0 47.4,70.4
step
Follow the path |goto Tanaan Jungle/0 45.0,42.2 < 30 |only if walking
click The Tome of Protection##241118
|tip It looks like a big book floating above a stone pedastal, next to a pool of green liquid.
Steal the Tome of Protection |q 38462/2 |goto Tanaan Jungle/0 46.4,41.6
step
Cross the bridge |goto Tanaan Jungle/0 47.5,42.7 < 30 |only if walking
Run up the path |goto Tanaan Jungle/0 48.2,43.9 < 30 |only if walking
click The Black Candle##241117
|tip It looks like a white and gray skinny candle with a green flame, sitting on a stone table next to a pile of spikey bombs.
Steal the Black Candle |q 38462/1 |goto Tanaan Jungle/0 49.2,43.2
step
Run through the narrow passage here |goto Tanaan Jungle/0 49.4,42.7 < 20 |only if walking
Follow the path |goto Tanaan Jungle/0 50.2,42.9 < 30 |only if walking
click The Shadowblade##241119
|tip It looks like a big floating dagger with a purple glowing blade.
Steal the Shadowblade |q 38462/3 |goto Tanaan Jungle/0 50.3,41.8
step
Run up the path |goto Tanaan Jungle/0 54.5,40.7 < 30 |only if walking
Follow the path up |goto Tanaan Jungle/0 62.2,33.5 < 30 |only if walking
talk Oronok Torn-heart##92120
turnin Breaching the Barrier##38462 |goto Tanaan Jungle/0 62.6,31.1
accept The Cipher of Damnation##39394 |goto Tanaan Jungle/0 62.6,31.1
step
talk Exarch Yrel##93632
Tell her _"Begin the ritual please."_
Watch the dialogue
Speak With Your Allies and Break the Barrier |q 39394/1 |goto Tanaan Jungle/0 62.7,31.1
step
Run up the path |goto Tanaan Jungle/0 62.2,29.6 < 30 |only if walking
Enter the Corrupt Refuge |q 39394/2 |goto Tanaan Jungle/0 62.3,28.0
step
kill Cyrukh##92010 |q 39394/3 |goto Tanaan Jungle/0 62.8,27.6
|tip He looks like a big fire elemental.
step
talk Exarch Yrel##93658
turnin The Cipher of Damnation##39394 |goto Tanaan Jungle/0 62.7,27.7
step
talk Oronok Torn-heart##92338
accept Oronok's Offer##39395 |goto Tanaan Jungle/0 62.8,27.9
step
Congratulations, you've completed the _"Warlock"_ Garrison Campaign questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Inn Quest Guide",{
},[[
#include "Garrison_Inn_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Scouting Missives",{
description="\nThis guide will walk you through completing the Garrison Missive quests bought from Sergeant Crowler.",
startlevel=40,
endlevel=50,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
label "Menu"
Click the Missive daily quest you would like to complete
Missive: Assault on The Heart of Shattrath |confirm |next "M_Heart"
Missive: Assault on The Pit |confirm |next "M_Pit"
Missive: Assault on Darktide Roost |confirm |next "M_Darktide"
Missive: Assault on Lost Veil Anzu |confirm |next "M_Anzu"
Missive: Assault on Magnarok |confirm |next "M_Magnarok"
Missive: Assault on Mok'gol Watchpost |confirm |next "M_Mok"
Missive: Assault on Pillars of Fate |confirm |next "M_Pillars"
Missive: Assault on Shattrath Harbor |confirm |next "M_Shatt"
Missive: Assault on Skettis |confirm |next "M_Skettis"
Missive: Assault on Socrethar's Rise |confirm |next "M_Rise"
Missive: Assault on Stonefury Cliffs |confirm |next "M_Cliffs"
Missive: Assault on the Broken Precipice |confirm |next "M_Broken"
Missive: Assault on the Everbloom Wilds |confirm |next "M_Wilds"
Missive: Assault on the Iron Siegeworks |confirm |next "M_Iron"
step
label "M_Heart"
#include "Garrison_Crowler"
buy Scouting Missive: The Heart of Shattrath##133883
step
use Scouting Missive: The Heart of Shattrath##133883
accept Missive: Assault on the Heart of Shattrath##40944 |repeatable
step
kill Concubine of Lust##82940+, Conniving Deathblade##82981+, Draining Eye##86191+, Watchful Eye##86140+, Council Felcaller##86553+, Sargerei Fiendspeaker##83020+, Sargerei Discordant##86190+, Sargerei Ritualist##87341+,
talk Tortured Sha'tari##86869+
talk Captive Sha'tari Citizen##86599+
clicknpc Sargerei Missive##87364+
|tip They look like small tan pieces of paper pinned up around this area
Assault the Sargerei Forces in Shattrath City |q 40944/1 |goto Talador/0 41.2,42.3
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on the Heart of Shattrath##40944
|next "Menu"
step
label "M_Pit"
#include "Garrison_Crowler"
buy Scouting Missive: The Pit##133878
step
use Scouting Missive: The Pit##133878
accept Missive: Assault on the Pit##40942 |repeatable
step
kill Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Laborer##85277+, Iron Bloodburner##85128+, Iron Enforcer##85124+, Iron Cauterizer##85127+, Iron Warden##86499+, Iron Reinforcement##86297+, Hulking Brute##85136+, Gruesome Torturer##86405+
Assault the Pit |q 40942/1 |goto Gorgrond/0 46.23,24.35
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on the Pit##40942
|next "Menu"
step
label "M_Darktide"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Darktide Roost##122417
step
use Scouting Missive: Darktide Roost##122417
accept Missive: Assault on Darktide Roost##38196 |repeatable
step
kill Darktide Pilferer##78148+, Darktide Engineer##78999+, Darktide Rylakinator-3000##78190+, Darktide Guardian##78168+, Darktide Guardian##78168+, Darktide Machinist##85150+, Darktide Windstalker##85098+, Darkwing Adolescent##85357+, Darkwing Whelpling##84927+, Darkwing Matron##75280+, Iron Peon##78324+, Controlled Darkwing##78550+
click Rylak Egg##236010
Asaault the Iron Horde Forces at Darktide Roost |q 38196/1 |goto Shadowmoon Valley D 59.1,86.0
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Darktide Roost##38196
|next "Menu"
step
label "M_Anzu"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Lost Veil Anzu##122414
step
use Scouting Missive: Lost Veil Anzu##122414
accept Missive: Assault on Lost Veil Anzu##38198 |repeatable
step
label "Standard"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Amorphic Cognitor##86144+, Befuddled Relic-Seeker##86205+, Vigilant Dreadtalon##89125+, Skyreach Archaeologist##86163+
click Goblin Supplies##6477+, Amorph Annihilator##86620+, Lost Artifact##6478+, Spore-Laden Moss##174393+
Right-click on corpses after you loot them |invehicle |next "Evolved" |or
Assault the Hostile Creatures at Lost Veil Anzu |q 38198/1 |goto Spires of Arak/0 73.4,44.8 |next "Turnin" |or
|tip You will see a progress bar in your quest tracking area.
step
label "Evolved"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Amorphic Cognitor##86144+, Befuddled Relic-Seeker##86205+, Vigilant Dreadtalon##89125+, Skyreach Archaeologist##86163+
click Goblin Supplies##6477+, Amorph Annihilator##86620+, Lost Artifact##6478+, Spore-Laden Moss##174393+
_Ability 1: Spoiling Spores_
|tip This ability deals nature damage on your next swing and increases in damage with each use.
_Ability 2:Mushroom Growth_
|tip This will hurl a cluster of mushrooms at your target which explode like mines.
_Ability 3: Mushroom Bloom_
|tip This ability will detonate all of your current mushrooms over 10 seconds.
_Ability 4: Fungal Pull_
|tip This ability will Death Grip mobs to you after 2 seconds and deal nature damage to them.
Right-click on corpses after you loot them |outvehicle |next "Standard" |or
Assault the Hostile Creatures at Lost Veil Anzu |q 38198/1 |goto Spires of Arak/0 73.4,44.8 |next "Turnin" |or
|tip You will see a progress bar in your quest tracking area.
step
label "Turnin"
#include "Garrison_Valdez"
turnin Missive: Assault on Lost Veil Anzu##38198
|next "Menu"
step
label "M_Magnarok"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Magnarok##122399
step
use Scouting Missive: Magnarok##122399
accept Missive: Assault on Magnarok##38190 |repeatable
step
kill Vicious Acidmaw##76905+, Burning Slagmaw##72348+, Slagmaw Nibbler##87360+, Icejaw Rockbiter##72297+
Assault the Stone Monstrosities at Magnarok |q 38190/1 |goto Frostfire Ridge/0 69.4,29.4
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Magnarok##38190
|next "Menu"
step
label "M_Mok"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Mok'gol Watchpost##122422
step
use Scouting Missive: Mok'gol Watchpost##122422
accept Missive: Assault on Mok'gol Watchpost##38195
step
kill Mok'gol Grunt##86657+, Mok'gol Brutalizer##72571+, Mok'gol Raider##86660+, Mok'gol Pack-Leader##86658+, Mok'gol Wolfsong##86659+, Nagrand Savager##86656+
Assault the Warsong Forces at Sunspring Watchpost |q 38195/1 |goto Nagrand D/0 43,37
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Mok'gol Watchpost##38195
|next "Menu"
step
label "M_Pillars"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Pillars of Fate##122409
step
use Scouting Missive: Pillars of Fate##122409
accept Missive: Assault on Pillars of Fate##38199
step
kill Shadowmoon Warrior##85068+, Shadowmoon Defiler##85075+, Shadowmoon Peon##85204+, Shadowmoon Voidtwister##85073+, Void Alpha##85082+
Assault the Shadowmoon Orcs at the Pillars of Fate |q 38199/1 |goto Spires of Arak/0 73.4,30.8
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Pillars of Fate##38199
|next "Menu"
step
label "M_Shatt"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Shattrath Harbor##122410
step
use Scouting Missive: Shattrath Harbor##122410
accept Missive: Assault on Shattrath Harbor##38201
step
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Nefarious Consort##82990+, Shadowbourne Felcaster##84871+, Fel Cannoneer##84880+, Gorebound Insurgent##87337+, Fel Seer##84873+
Assault the Sargerei Forces at Shattrath City |q 38201/1 |goto Talador/0 44.6,37.3
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Shattrath Harbor##38201
|next "Menu"
step
label "M_Skettis"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Skettis##122407
step
use Scouting Missive: Skettis##122407
accept Missive: Assault on Skettis##38200
step
kill Skyreach Labormaster##85542+, Energized Swift Feather##84013+, Skyreach Dawnbreaker##88078+, Stalwart Warden##83988+
collect Talon Key##118701 |n
click Ball and Chain##207079
|tip They look like small metal balls on chains attachs to Arakkoa slaves around this area. You must have a Talon Key.
Free Slaves and _Boost their Morale_
|tip After you free them, kill mobs with them by your side to boost their morale. The higher their morale, the more progress you'll get toward your quest goal when you free the slaves.
Assault the Arakkoa Forces at Skettis |q 38200/1 |goto Spires of Arak/0 58.0,11.5
|tip You will see a progress bar in your quest tracking area.
Lead the slaves to [Spires of Arak/0 59.7,11.5]
|tip Talk to Outcast Darkscryer to free them.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Skettis##38200
|next "Menu"
step
label "M_Rise"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Socrethar's Rise##122415
step
use Scouting Missive: Socrethar's Rise##122415
accept Missive: Assault on Socrethar's Rise##38197
step
kill Sargerei Initiate##81541+, Sargerei Binder##81542+, Sargerei Darkblade##84945+, Sargerei Acolyte##85168+, Sargerei Worker##84888+, Nightshade Consort##84908+, Eye of Zamaya##88486+
Assault the Sargerei Forces at Socrethar's Rise |q 38197/1 |goto Shadowmoon Valley D/0 49.3,78.2
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Socrethar's Rise##38197
|next "Menu"
step
label "M_Cliffs"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Stonefury Cliffs##122401
step
use Scouting Missive: Stonefury Cliffs##122401
accept Missive: Assault on Stonefury Cliffs##38189
step
kill Bloodmaul Brute##77991+, Bloodmaul Gladiator##78782+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578+, Bloodmaul Magma Shaper##77992+
|tip You may kill Taskmasters and gather Shackle Keys to release Draenei Slaves.
Assault the Bloodmaul Forces at Stonefury Cliffs |q 38189/1 |goto Frostfire Ridge/0 47.4,17.1
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on Stonefury Cliffs##38189
|next "Menu"
step
label "M_Broken"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Broken Precipice##122423
step
use Scouting Missive: Broken Precipice##122423
accept Missive: Assault on the Broken Precipice##38193
step
kill Sledgebasher##83575+, Broken Drudge##87638+, Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Broken Drudge##83831+, Defiant Drudge##83570+, Dominating Drudge##83640+, Bloodbash Breaker##87654+, Bloodbash Ogrechucker##83848+
click Unearthed Reliquary##237453
Exploit the Conflict at the Broken Precipice |q 38193/1 |goto Nagrand D/0 38.8,14.9
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on the Broken Precipice##38193
|next "Menu"
step
label "M_Wilds"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Everbloom Wilds##122404
step
use Scouting Missive: Everbloom Wilds##122404
accept Missive: Assault on the Everbloom Wilds##38192
step
kill Twisted Guardian##88279+, Lumbering Ancient##86262+, Wild Mandragora##86260+, Brine Lasher##86267+, Botani Vine-Weaver##86261+, Everbloom Waterspeaker##88261+, Everbloom Wasp##86264+
Assault the Botani Forces in the Everbloom Wilds |q 38192/1 |goto Gorgrond/0 57.5,44.0
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on the Everbloom Wilds##38192
|next "Menu"
step
label "M_Iron"
#include "Garrison_Crowler"
buy 1 Scouting Missive: Iron Siegeworks##122406
step
use Scouting Missive: Iron Siegeworks##122406
accept Missive: Assault on the Everbloom Wilds##38191
step
kill Grom'kar Deadeye##85973+, Grom'kar Enforcer##77940+, Grom'kar Warforger##77945+, Grom'kar Pulverizer##78210+, Grom'kar Shocktrooper##77944+
Assault the Iron Horde Forces at the Iron Siegeworks |q 38191/1 |goto Frostfire Ridge/0 85.7,51.4
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_Valdez"
turnin Missive: Assault on the Everbloom Wilds##38191
|next "Menu"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Jukebox",{
description="\nThis guide will walk you through obtaining the Jukebox for your garrison",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Fix "Smallie" Biggswrench##91589
accept Bringing the Bass##38356 |goto Lunarfall/0 33.8,36.4
step
kill Lumbering Ancient##86262
|tip They look like big trees walking around this area. There are not very many of them, so you may need to search around for one.
collect Cord of Ancient Wood##122569 |q 38356/5 |goto Gorgrond/0 56.8,44.1
step
kill Iron Shredder##75815
|tip They look like metal humanoid machines sawing on huge tree stumps around this area.
collect S.P.R.K. Capacitor##122568 |q 38356/4 |goto Talador/0 64.0,29.4
step
Follow the stone road |goto Nagrand D/0 56.3,23.0 < 30 |only if walking
Go through the doorway |goto Nagrand D/0 57.0,19.1 < 30 |only if walking
Run up the stairs |goto Nagrand D/0 56.8,17.8 < 30 |only if walking
Continue up the stairs |goto Nagrand D/0 55.9,16.3 < 30 |only if walking
Follow the stairs up |goto Nagrand D/0 56.9,11.7 < 30 |only if walking
Follow the path |goto Nagrand D/0 56.6,10.4 < 30 |only if walking
click Bass Blaster##240568
|tip It looks like a metal box with a handle on top of it next to a big tree. The two ogres will attack you after you click the Bass Blaster.
collect Bass Blaster##122565 |q 38356/1 |goto Nagrand D/0 57.8,10.9
step
Follow the path |goto Spires of Arak/0 58.0,75.7 < 30 |only if walking
Run on the road |goto Spires of Arak/0 55.5,79.6 < 30 |only if walking
Continue following the road |goto Spires of Arak/0 56.9,86.7 < 30 |only if walking
Run up the path |goto Spires of Arak/0 57.2,90.7 < 30 |only if walking
Enter the building |goto Spires of Arak/0 55.7,91.0 < 20 |walk
click Laz-Tron Disc Reader##240575
|tip It looks like a small metal box with levers on it, near the bed upstairs inside this building. You will be attacked after you click it.
collect Laz-Tron Disc Reader##122566 |q 38356/2 |goto Spires of Arak/0 55.5,90.6
step
Run up the path |goto Spires of Arak/0 62.9,15.7 < 30 |only if walking
Follow the path |goto Spires of Arak/0 61.8,11.0 < 30 |only if walking
Go through the doorway |goto Spires of Arak/0 59.4,11.2 < 30 |walk
kill Stalwart Warden##83988
|tip It looks like a bronze metal golem machine sitting on the ground next to the wall.
collect Phonic Amplifier##122567 |q 38356/3 |goto Spires of Arak/0 57.7,12.4
step
talk Fix "Smallie" Biggswrench##91589
turnin Bringing the Bass##38356 |goto Lunarfall/0 33.8,36.4
step
use Stash of Dusty Music Rolls##122613
use Music Roll: Stormwind##122201
Learn Music Roll: Stormwind |achieve 10015/7
step
use Music Roll: Ironforge##122203
Learn Music Roll: Ironforge |achieve 10015/9
step
use Music Roll: Night Song##122205
Learn Music Roll: Night Song |achieve 10015/11
step
use Music Roll: Gnomeregan##122206
Learn Music Roll: Gnomeregan |achieve 10015/12
step
use Music Roll: Exodar##122208
Learn Music Roll: Exodar |achieve 10015/14
step
use Music Roll: Curse of the Worgen##122209
Learn Music Roll: Curse of the Worgen |achieve 10015/15
step
use Music Roll: Way of the Monk##122219
Learn Music Roll: Way of the Monk |achieve 10015/30
step
Congratulations, you unlocked your _Garrison Jukebox_!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Mystery Notebook Questline",{
description="\nThis guide will walk you through obtaining the Heirloom Casings",
},[[
step
talk Fix "Smallie" Biggswrench##91589
accept Mystery Notebook##38344 |goto Lunarfall/0 33.77,36.36
step
talk Krom Stoutarm##6294
turnin Mystery Notebook##38344 |goto Ironforge/0 74.3,9.6
accept Numismatics##38345 |goto Ironforge/0 74.3,9.6
stickystart "Info1"
step
collect 5 Misprinted Draenic Coin##122618 |q 38345/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info1"
This quest rewards you with an Ancient Heirloom Armor Casing which will upgrade any heirloom armor, trinket, shield, or off-hand to level 90
step
talk Krom Stoutarm##6294
turnin Numismatics##38345 |goto Ironforge/0 74.3,9.6
accept Completionism##38394 |goto Ironforge/0 74.3,9.6
stickystart "Info2"
step
collect 10 Misprinted Draenic Coin##122618 |q 38394/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info2"
This quest rewards you with a Timeworn Heirloom Armor Casing which will upgrade any heirloom armor, trinket, shield, or off-hand to level 100
step
talk Krom Stoutarm##6294
turnin Completionism##38394 |goto Ironforge/0 74.3,9.6
accept A Curious Oddity##38396 |goto Ironforge/0 74.3,9.6
stickystart "Info3"
step
collect 25 Misprinted Draenic Coin##122618 |q 38396/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info3"
This quest rewards you with an Ancient Heirloom Scabbard which will upgrade any heirloom weapon to level 90
step
talk Krom Stoutarm##6294
turnin A Curious Oddity##38396 |goto Ironforge/0 74.3,9.6
accept The Same, But Different##38402 |goto Ironforge/0 74.3,9.6
stickystart "Info4"
step
collect 50 Misprinted Draenic Coin##122618 |q 38402/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info4"
This quest rewards you with a Timeworn Heirloom Scabbard which will upgrade any heirloom weapon to level 100
step
talk Krom Stoutarm##6294
turnin The Same, But Different##38402 |goto Ironforge/0 74.3,9.6
]])
