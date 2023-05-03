local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("GarrisonHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
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
#include "Garrison_Small_Building", action="talk Albert de Hyde##79813", building="Alchemy"
accept Your First Alchemy Work Order##37568
step
#include "auctioneer_warspear"
buy 5 Frostweed##109124 |q 37568
|tip Buy these from the Auction House if you don't have Herbalism, or don't want to farm them.
_Or_
click Frostweed##237398
|tip They look like small blue glowing plants on the ground around this area.
collect 5 Frostweed##109124 |q 37568 |goto Frostfire Ridge/0 54.1,64.1
step
#include "Garrison_Small_Building", action="talk Keyana Tone##79814", building="Alchemy"
Tell her _"I would like to place a work order."_
Click _Start Work Order_
Start the Alchemy Work Order |q 37568/1
step
#include "Garrison_Small_Building", action="click Alchemy Work Order##235892", building="Alchemy"
Collect the Alchemy Work Order |q 37568/2
step
#include "Garrison_Small_Building", action="talk Keyana Tone##79814", building="Alchemy"
turnin Your First Alchemy Work Order##37568
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
Wait for your Alchemy Lab to be built |havebuilding Alchemy,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Alchemy"
Finalize the Level 2 Alchemy Lab |havebuilding Alchemy,2,active
step
#include "Garrison_Small_Building", action="talk Keyana Tone##79814", building="Alchemy"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip If you have the Herbalism profession, farm Frostweed in Shadowmoon Valley, Frostfire Ridge, or Spires of Arak. You can also get some Frostweed from your Herb Garden Garrison building. If you don't want to farm, you can buy Frostweed from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
step
Upgrade your Garrison to level 3 |condition garrisonlvl(3)
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
#include "Garrison_Small_Building", action="talk Yukla Greenshadow##79821", building="Enchanting"
accept Your First Enchanting Work Order##37570
step
#include "auctioneer_warspear"
buy 5 Draenic Dust##109693 |q 37570
|tip Buy these from the Auction House if you don't have Enchanting, or don't want to farm them.
_Or_
Kill any mobs you want
Disenchant any green or blue items you loot
collect 5 Draenic Dust##109693 |q 37570
|tip You can only do this if you have the Enchanting skill.
step
#include "Garrison_Small_Building", action="talk Garra##79820", building="Enchanting"
Tell her _"I would like to place a work order."_
Click _Start Work Order_
Start the Enchanting Work Order |q 37570/1
step
#include "Garrison_Small_Building", action="click Enchanting Work Order##237138", building="Enchanting"
Collect the Enchanting Work Order |q 37570/2
step
#include "Garrison_Small_Building", action="talk Garra##79820", building="Enchanting"
turnin Your First Enchanting Work Order##37570
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 2##111972 |condition itemcount(111972) > 0 or hasblueprint("Enchanting",2)
step
use Garrison Blueprint: Enchanter's Study, Level 2##111972
Learn the Enchanter's Study, Level 2 Blueprint |condition hasblueprint("Enchanting",2)
step
#include "Garrison_ArchitectTable"
Click your Enchanter's Study
Click _Upgrade_
Upgrade your Enchanter's Study to Level 2 |havebuilding Enchanting,2,building
step
Wait for your Enchanter's Study to be Built |havebuilding Enchanting,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Small", building="Enchanting"
Finalize the Level 2 Enchanter's Study |havebuilding Enchanting,2,active
step
#include "Garrison_Small_Building", action="talk Garra##79820", building="Enchanting"
Tell her _"I would like to place a work order"_
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
#include "Garrison_Small_Building", action="talk Pozzlow##79826", building="Engineering"
accept Your First Engineering Work Order##37571
step
#include "auctioneer_warspear"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Mining or your Frostwall Mines Garrison building, or don't want to farm them.
_Or_
click Blackrock Deposit##243313
collect 2 Blackrock Ore##109118 |goto Frostfire Ridge/0 38.5,59.5 |q 37571
click True Iron Deposit##237358
collect 2 True Iron Ore##109119 |goto Frostfire Ridge/0 38.5,59.5 |q 37571
|tip These can be found around the cliffs in this area. They can also be mined in your Frostwall Mines, if you have one.
step
#include "Garrison_Small_Building", action="talk Garbra Fizzwonk##86696", building="Engineering"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Start the Engineering Work Order |q 37571/1
step
#include "Garrison_Small_Building", action="click Engineering Work Order##237146", building="Engineering"
Collect the Engineering Work Order |q 37571/2
step
#include "Garrison_Small_Building", action="talk Garbra Fizzwonk##86696", building="Engineering"
turnin Your First Engineering Work Order##37571
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Garbra Fizzwonk##86696", building="Engineering"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm Blackrock Ore and True Iron Ore from your Frostwall Mines Garrison building or by farming ore deposits in any Draenor zone, or buy Blackrock Ore and True Iron Ore from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
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
#include "Garrison_Small_Building", action="talk Orgek Ironhand##79867", building="Blacksmith"
accept Your First Blacksmithing Work Order##37569
step
#include "auctioneer_warspear"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Mining or your Frostwall Mines Garrison building, or don't want to farm them.
_Or_
click True Iron Deposit##237358
collect 5 True Iron Ore##109119 |goto Frostfire Ridge/0 38.5,59.5 |q 37569
|tip These can be found around the cliffs in this area. They can also be mined in your Frostwall Mines, if you have one.
step
#include "Garrison_Small_Building", action="talk Kinja##79817", building="Blacksmith"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Start the Blacksmithing Work Order |q 37569/1
step
#include "Garrison_Small_Building", action="click Blacksmithing Work Order##236641", building="Blacksmith"
Collect the Blacksmithing Work Order |q 37569/2
step
#include "Garrison_Small_Building", action="talk Kinja##79817", building="Blacksmith"
turnin Your First Blacksmithing Work Order##37569
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Kinja##79817", building="Blacksmith"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm True Iron Ore from your Frostwall Mines Garrison building or by farming ore deposits in any Draenor zone, or buy True Iron Ore from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
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
#include "Garrison_Small_Building", action="talk Dorogarr##79832", building="Jewelcrafting"
accept Your First Jewelcrafting Work Order##37573
step
#include "auctioneer_warspear"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Mining or your Frostwall Mines Garrison building, or don't want to farm them.
_Or_
click Blackrock Deposit##243313
collect 5 Blackrock Ore##109118 |goto Shadowmoon Valley D/0 30.0,30.0 |condition completedq(37573)
|tip You can also get these by mining ore nodes in your Frostwall Mines Garrison building, if you have one.
step
#include "Garrison_Small_Building", action="talk Elrondir Surrion##79830", building="Jewelcrafting"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Start the Jewelcrafting Work Order |q 37573/1
step
#include "Garrison_Small_Building", action="click Jewelcrafting Work Order##236652", building="Jewelcrafting"
Collect the Jewelcrafting Work Order |q 37573/2
step
#include "Garrison_Small_Building", action="talk Elrondir Surrion##79830", building="Jewelcrafting"
turnin Your First Jewelcrafting Work Order##37573
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Elrondir Surrion##79830", building="Jewelcrafting"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Complete 250 Work Orders |achieve 9406
|tip Either farm Blackrock Ore from your Frostwall Mines Garrison building or by farming ore deposits in any Draenor zone, or buy Blackrock Ore from the Auction House. You can also complete Work Orders with your other garrison buildings to make this go faster.
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
#include "Garrison_Small_Building", action="talk Lumba the Crusher##79857", building="SalvageYard"
accept Salvaging the Situation##37045
step
use Small Sack of Salvaged Goods##118473
Open the Sack of Salvaged Goods |q 37045/1
step
#include "Garrison_Small_Building", action="talk Lumba the Crusher##79857", building="SalvageYard"
turnin Salvaging the Situation##37045
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Urgra##79829", building="Inscription"
accept Your First Inscription Work Order##37572
step
#include "auctioneer_warspear"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Herbalism or your Herb Garden Garrison building, or don't want to farm them.
_Or_
Gather herbs in any Draenor zone
Mill the herbs |cast Milling##51005
collect 2 Cerulean Pigment##114931 |conditon completedq(37572)
|tip You can also get these by gathering herbs and milling them at your Herb Garden Garrison building, if you have one.
step
#include "Garrison_Small_Building",action="talk Y'rogg##79831", building="Inscription"
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Start the Inscription Work Order |q 37572/1
step
#include "Garrison_Small_Building",action="click Inscription Work Order##236649", building="Inscription"
Collect the Inscription Work Order |q 37572/2
step
#include "Garrison_Small_Building",action="talk Y'rogg##79831", building="Inscription"
turnin Your First Inscription Work Order##37572
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building",action="talk Y'rogg##79831", building="Inscription"
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
#include "Garrison_Small_Building", action="talk Yorn Longhoof##79862", building="Storehouse"
accept Lost in Transition##37060
step
click Crate of Surplus Material##237257
|tip They look like small wooden crates on the ground all around your garrison.
collect 5 Crate of Surplus Materials##118417 |q 37060/1 |goto Frostwall 53.1,49.1
step
#include "Garrison_Small_Building", action="talk Yorn Longhoof##79862", building="Storehouse"
turnin Lost in Transition##37060
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Warra the Weaver##79864", building="Tailoring"
accept Your First Tailoring Work Order##37575
step
#include "auctioneer_warspear"
Buy from the Auction House
|tip Buy these from the Auction House if you don't want to farm them.
_Or_
kill Wooly Clefthoof##72162+
collect 5 Sumptuous Fur##111557 |goto Frostfire Ridge 25.8,46.0 |condition completedq(37575)
step
#include "Garrison_Small_Building", action="talk Turga##79863", building="Tailoring"
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Start the Tailoring Work Order |q 37575/1
step
#include "Garrison_Small_Building", action="click Tailoring Work Order##237665", building="Tailoring"
Collect the Tailoring Work Order |q 37575/2
step
#include "Garrison_Small_Building", action="talk Turga##79863", building="Tailoring"
turnin Your First Tailoring Work Order##37575
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Turga##79863", building="Tailoring"
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
#include "Garrison_Small_Building", action="talk Murne Greenhoof##79834", building="Leatherworking"
accept Your First Leatherworking Work Order##37574
step
#include "auctioneer_warspear"
Buy from the Auction House
|tip Buy these from the Auction House if you don't have Skinning, or don't want to farm them.
_Or_
kill Wooly Clefthoof##72162+
|tip Skin your kills.
collect 5 Raw Beast Hide##110609 |goto Frostfire Ridge 25.8,46.0 |condition completedq(37574)
step
#include "Garrison_Small_Building", action="talk Yanney##79833", building="Leatherworking"
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Start the Leatherworking Work Order |q 37574/1
step
#include "Garrison_Small_Building", action="click Leatherworking Work Order##236948", building="Leatherworking"
Collect the Leatherworking Work Order |q 37574/2
step
#include "Garrison_Small_Building", action="talk Yanney##79833", building="Leatherworking"
turnin Your First Leatherworking Work Order##37574
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
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
#include "Garrison_Small_Building", action="talk Yanney##79833", building="Leatherworking"
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
#include "Garrison_Medium_Building", action="talk Farmer Lok'lub##85048", building="Barn"
accept Breaking into the Trap Game##36345
step
use Iron Trap##113991
kill Shadowmoon Stalker##82308
|tip Fight it until it's almost dead, but don't kill it, then lure the Shadowmoon Stalker into your trap.
Trap a Beast |q 36345/1 |goto Shadowmoon Valley D/0 54.1,34.1
step
#include "Garrison_Medium_Building", action="talk Farmer Lok'lub##85048", building="Barn"
Tell him _"I would like to place a work order for fur."_
Click _Start Work Order_
Place a Work Order |q 36345/2
step
#include "Garrison_Medium_Building", action="talk Farmer Lok'lub##85048", building="Barn"
turnin Breaking into the Trap Game##36345
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36166) or completedq(35797) |or
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
kill Frost Wolf##76593+, Frost Wolf Alpha##76597+
|tip Fight it until it's almost dead, but don't kill it, then lure the Shadowmoon Stalker into your trap.
collect 125 Furry Caged Beast##119813 |goto Frostfire Ridge 54.6,66.0 |condition hasblueprint("Barn",3)
step
#include "Garrison_Medium_Building", action="talk Farmer Lok'lub##85048", building="Barn"
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Frostwall Tavern",{
description="\nThis guide will walk you through creating and upgrading the Frostwall Tavern Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have Medium building plots until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Medium_ tab at the top
Drag _Frostwall Tavern_ to a _Medium Plot_
Build your Frostwall Tavern |havebuilding Inn
step
Wait for your Frostwall Tavern to be Built |havebuilding Inn,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Inn"
Finalize the Level 1 Frostwall Tavern |havebuilding Inn,1,active
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36166) or completedq(35797) |or
|tip Use the Spires of Arak Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Tavern, Level 2##116431 |condition itemcount(116431) > 0 or hasblueprint("Inn",2)
step
use Garrison Blueprint: Frostwall Tavern, Level 2##116431
Learn the Frostwall Tavern, Level 2 Blueprint |condition hasblueprint("Inn",2)
step
#include "Garrison_ArchitectTable"
Click your Frostwall Tavern
Click _Upgrade_
Upgrade your Frostwall Tavern to Level 2 |havebuilding Inn,2,building
step
Wait for your Frostwall Tavern to be Built |havebuilding Inn,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Inn"
Finalize the Level 2 Frostwall Tavern |havebuilding Inn,2,active
step
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
accept The Headhunter's Harvest##37046
step
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
Tell her _"I'm looking to recruit someone."_
Choose any _Ability_ or _Trait_ you want
|tip This is the ability or trait you want your recruited follower to have. Pick any one you want. The follower you recruit will be level 90, and you will have to level them up with garrison missions.
Choose your Follower
|tip You can choose 1 of the 3 followers the headhunter finds for you.
Recruit a Follower From the Headhunter |q 37046/1
step
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
turnin The Headhunter's Harvest##37046
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
#include "Garrison_WarmasterZog"
Tell him _"Enter the Proving Grounds"_
Enter the Proving Grounds |goto Proving Grounds/1 51.5,82.4 < 50 |noway |c |condition achieved(9573) or achieved(9579) or achieved(9585)
|tip Wait in the queue to enter.
step
click Soulwell
|tip It looks like a small green-glowing bowl on a pedastal.  It will give you a healthstone you can use during the fights.
collect 1 Healthstone##5512 |goto Proving Grounds/1 53.8,84.2 |c |condition achieved(9573) or achieved(9579) or achieved(9585)
step
talk Trial Master Rotun##61636
Start Basic _(Silver)_ Trial |tip Choose Damage, Tank, or Healer, depending on your character's specialization. You will have to defeat 5 waves of enemies.
Speak to Rotun |scenariogoal 23900 |goto Proving Grounds 50.28,82.32 |condition achieved(9573) or achieved(9579) or achieved(9585)
step
Defeat the 8 waves of enemies that attack
|tip Each wave will get progressively more difficult to kill.
Complete a Silver Trial |condition achieved(9573) or achieved(9579) or achieved(9585)
|tip Leave the Proving Grounds afterward by clicking the green eye icon on your minimap and choosing "Leave Instance Group".
step
#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
|tip He's upstairs in the Frostwall Tavern.
accept For The Children!##37179
step
label "Start_Inn_Quests"
#include "Garrison_Medium_Building", action="Accept any quests in your Frostwall Tavern", building="Inn"
|tip You will be able to accept 2 different dungeon quests each day. The quests that will be available are random. Daily quests won't count toward the goal of completing 10 Frostwall Tavern quests, only regular dungeon quests.
Click after accepting all quests |confirm |condition achieved(9703)
step
#include "Garrison_Inn_Quests"
step
Complete 10 Frostwall Tavern Quests |achieve 9703 |or
_
If you need more quests:
Click to Accept More _Frostwall Tavern Quests_ |confirm |next "Start_Inn_Quests" |or
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Tavern, Level 3##116432 |condition itemcount(116432) > 0 or hasblueprint("Inn",3)
step
use Garrison Blueprint: Frostwall Tavern, Level 3##116432
Learn the Frostwall Tavern, Level 3 Blueprint |condition hasblueprint("Inn",3)
step
#include "Garrison_ArchitectTable"
Click your Frostwall Tavern
Click _Upgrade_
Upgrade your Frostwall Tavern to Level 3 |havebuilding Inn,3,building
step
Wait for your Frostwall Tavern to be Built |havebuilding Inn,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Medium", building="Inn"
Finalize the Level 3 Frostwall Tavern |havebuilding Inn,3,active
step
Congratulations, you've finished upgrading your Frostwall Tavern!
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
#include "Garrison_Medium_Building", action="talk Raza'kul##86629", building="SparringArena"
accept Warlord of Draenor##36874
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
|tip This is necessary since you have to be level 100 to enter Ashran, which you need to do to easily complete the quest you just picked up.
step
Follow the path south |goto Warspear/0 47.0,58.3 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 42.5,24.2 < 20
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 47.9,30.1 < 30
kill Enemy Players in Ashran
collect 20 Broken Bones##118043 |q 36874 |goto Ashran/0 49.4,49.9
|tip A much faster way to get the bones, if you can, would be to have a friend with an enemy faction character, at least level 92, let you kill them repeatedly in world pvp. You can only get Broken Bones from world pvp, or in Ashran.
step
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36874
step
#include "Garrison_Medium_Building", action="clicknpc Altar of Bones##86639", building="SparringArena"
|tip It looks like a pile of while skulls and bones in your Gladiator's Sanctum building.
Click _Start Work Order_
Earn a Conqueror's Tribute |q 36874/2
step
#include "Garrison_Medium_Building", action="talk Raza'kul##86629", building="SparringArena"
turnin Warlord of Draenor##36874
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
#include "Garrison_Medium_Building", action="talk Raza'kul##86629", building="SparringArena"
accept Nemesis: Hunter - Hunted##36889
step
#include "Garrison_Medium_Building", action="click Nemesis", building="SparringArena"
|tip They are statues circling your Gladiator's Sanctum.  You will have to kill players of the race you select. We recommend you pick Human, since they are statistically the most common race of Alliance players, but you can choose whichever you like.
Select your Nemesis |q 36889/1
step
#include "Garrison_Medium_Building", action="talk Raza'kul##86629", building="SparringArena"
turnin Nemesis: Hunter - Hunted##36889
accept Nemesis: Becoming Death##36897 |or
accept Nemesis: Becoming Death##36927 |or
accept Nemesis: Becoming Death##36929 |or
accept Nemesis: Becoming Death##36931 |or
accept Nemesis: Becoming Death##36933 |or
accept Nemesis: Becoming Death##36923 |or
accept Nemesis: Becoming Death##36925 |or
|tip The quest you can accept depends on which Nemesis you selected in the previous step.
step
Follow the path south |goto Warspear/0 47.0,58.3 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 42.5,24.2 < 20
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 47.9,30.1 < 30
kill Enemy Players in Ashran
collect Human Heart##118116 |q 36897/1 |goto Ashran/0 49.4,49.9 |only if haveq(36897) or completedq(36897)
collect Worgen Heart##118121 |q 36927/1 |goto Ashran/0 49.4,49.9 |only if haveq(36927) or completedq(36927)
collect Draenei Heart##118122 |q 36929/1 |goto Ashran/0 49.4,49.9 |only if haveq(36929) or completedq(36929)
collect Night Elf Heart##118118 |q 36931/1 |goto Ashran/0 49.4,49.9 |only if haveq(36931) or completedq(36931)
collect Pandaren Heart##118120 |q 36933/1 |goto Ashran/0 49.4,49.9 |only if haveq(36933) or completedq(36933)
collect Dwarf Heart##118119 |q 36923/1 |goto Ashran/0 49.4,49.9 |only if haveq(36923) or completedq(36923)
collect Gnome Heart##118117 |q 36925/1 |goto Ashran/0 49.4,49.9 |only if haveq(36925) or completedq(36925)
|tip A much faster way to get the heart, if you can, would be to have a friend with an enemy faction character of the race you need to kill, at least level 92, let you kill them in world pvp. You can only get the heart from world pvp, or in Ashran.
step
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36897 |only if haveq(36897) or completedq(36897)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36927 |only if haveq(36927) or completedq(36927)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36929 |only if haveq(36929) or completedq(36929)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36931 |only if haveq(36931) or completedq(36931)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36933 |only if haveq(36933) or completedq(36933)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36923 |only if haveq(36923) or completedq(36923)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36925 |only if haveq(36925) or completedq(36925)
step
#include "Garrison_Medium_Building", action="talk Raza'kul##86629", building="SparringArena"
turnin Nemesis: Becoming Death##36897 |only if haveq(36897) or completedq(36897)
turnin Nemesis: Becoming Death##36927 |only if haveq(36927) or completedq(36927)
turnin Nemesis: Becoming Death##36929 |only if haveq(36929) or completedq(36929)
turnin Nemesis: Becoming Death##36931 |only if haveq(36931) or completedq(36931)
turnin Nemesis: Becoming Death##36933 |only if haveq(36933) or completedq(36933)
turnin Nemesis: Becoming Death##36923 |only if haveq(36923) or completedq(36923)
turnin Nemesis: Becoming Death##36925 |only if haveq(36925) or completedq(36925)
accept Nemesis: Manslayer##36921 |only if haveq(36897) or completedq(36897)
accept Nemesis: Worgen Hunter##36928 |only if haveq(36927) or completedq(36927)
accept Nemesis: Draenei Destroyer##36930 |only if haveq(36929) or completedq(36929)
accept Nemesis: Scourge of the Kaldorei##36932 |only if haveq(36931) or completedq(36931)
accept Nemesis: Terror of the Tushui##36934 |only if haveq(36933) or completedq(36933)
accept Nemesis: Dwarfstalker##36924 |only if haveq(36923) or completedq(36923)
accept Nemesis: Gnomebane##36926 |only if haveq(36925) or completedq(36925)
step
Follow the path south |goto Warspear/0 47.0,58.3 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 42.5,24.2 < 20
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 47.9,30.1 < 30
kill Enemy Players in Ashran
kill 500 Human Players |q 36921/1 |goto Ashran/0 49.4,49.9 |only if haveq(36897) or completedq(36897)
kill 500 Worgen Players |q 36928/1 |goto Ashran/0 49.4,49.9 |only if haveq(36927) or completedq(36927)
kill 500 Draenei Players |q 36930/1 |goto Ashran/0 49.4,49.9 |only if haveq(36929) or completedq(36929)
kill 500 Night Elf Players |q 36932/1 |goto Ashran/0 49.4,49.9 |only if haveq(36931) or completedq(36931)
kill 500 Pandaren Players |q 36934/1 |goto Ashran/0 49.4,49.9 |only if haveq(36933) or completedq(36933)
kill 500 Dwarf Players |q 36924/1 |goto Ashran/0 49.4,49.9 |only if haveq(36923) or completedq(36923)
kill 500 Gnome Players |q 36926/1 |goto Ashran/0 49.4,49.9 |only if haveq(36925) or completedq(36925)
|tip A much faster way to get the kills, if you can, would be to have a friend with an enemy faction character of the race you need to kill, at least level 92, let you kill them in world pvp. You can only get the kills from world pvp, or in Ashran.
step
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36921 |only if haveq(36897) or completedq(36897)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36928 |only if haveq(36927) or completedq(36927)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36930 |only if haveq(36929) or completedq(36929)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36932 |only if haveq(36931) or completedq(36931)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36934 |only if haveq(36933) or completedq(36933)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36924 |only if haveq(36923) or completedq(36923)
Return to your Garrison |goto Frostwall 50.3,46.9 < 300 |q 36926 |only if haveq(36925) or completedq(36925)
step
#include "Garrison_Medium_Building", action="talk Raza'kul##86629", building="SparringArena"
turnin Nemesis: Manslayer##36921 |only if haveq(36897) or completedq(36897)
turnin Nemesis: Worgen Hunter##36928 |only if haveq(36927) or completedq(36927)
turnin Nemesis: Draenei Destroyer##36930 |only if haveq(36929) or completedq(36929)
turnin Nemesis: Scourge of the Kaldorei##36932 |only if haveq(36931) or completedq(36931)
turnin Nemesis: Terror of the Tushui##36934 |only if haveq(36933) or completedq(36933)
turnin Nemesis: Dwarfstalker##36924 |only if haveq(36923) or completedq(36923)
turnin Nemesis: Gnomebane##36926 |only if haveq(36925) or completedq(36925)
step
Follow the path south |goto Warspear/0 47.0,58.3 < 30 |only if walking
Enter Ashran by going here |goto Ashran/0 42.5,24.2 < 20
|tip Accept the popup that displays to join the PvP battle.
Follow the path |goto Ashran/0 47.9,30.1 < 30
kill Enemy Players in Ashran
collect 4000 Broken Bones##118043 |achieve 9495 |goto Ashran/0 49.4,49.9
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
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
accept Easing into Lumberjacking##36137
step
click Small Timber##233604
|tip It looks like a tall thin tree with purple leaves at the top.
Harvest the Timber |q 36137/1 |goto Frostfire Ridge/0 44.5,53.6
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
turnin Easing into Lumberjacking##36137
accept Turning Timber into Profit##36138
step
click Small Timber##233604
|tip They look like tall thin trees with green or purple leaves at the top all around this area. Look for the blinking yellow dots on your minimap.
collect 10 Timber##114781 |q 36138/1 |goto Gorgrond/0 50.7,60.6
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
Tell him _"I would like to submit a work order."_
Click _Start Work Order_
Start a Work Order |q 36138/2
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
turnin Turning Timber into Profit##36138
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36166) or completedq(35797) |or
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
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
accept Sharper Blades, Bigger Timber##36142
step
click Timber##233634
|tip It looks like a large tall tree with purple leaves at the top.
collect Timber Sample##114898 |q 36142/1 |goto Frostfire Ridge/0 45.3,49.2
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
turnin Sharper Blades, Bigger Timber##36142
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
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
|tip It looks like a huge tree ent standing still with its arms raised, and Lumberjack bodies laying at its feet. You will likely see it from a good distance away.
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
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
turnin Legacy of the Ancients##36385
step
Harvest the Fallen Tree |goto Talador 73.7,64.0
|tip Alexi Barov is found pinned under a large fallen tree. The tree has multiple spawns in multiple zones.
talk Alexi Barov##85414
accept The Rise and Fall of Barov Industries: Alexi Barov##36427
Recruit Alexi Barov |condition hasfollower(195)
It can also be at these locations:
Location 1: [Talador/0 59.0,29.8]
Location 2: [Talador/0 54.3,56.2]
Location 3: [Talador/0 70.1,54.2]
step
#include "Garrison_Medium_Building", action="talk Alexi Barov##85414", building="LumberMill"
accept Reduction in Force##36449
step
kill Weldon Barov##85447
|tip He spawns with a group of helpers when you approach this any type of Timber tree around this area.
collect Head of Weldon Barov##116153 |q 36449/1 |goto Talador 58.6,48.0
step
#include "Garrison_Medium_Building", action="talk Alexi Barov##85414", building="LumberMill"
turnin Reduction in Force##36449
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
collect 750 Timber##114781 |condition itemcount(114781) >= 750 or hasbuilding("LumberMill",3)
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
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
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
accept Tree-i-cide##36182
step
Run up the rocks here |goto Shadowmoon Valley D/0 34.7,25.5 < 10 |only if walking
click Large Timber##233635
|tip It looks like a large tree up on top of a big hill.
collect Timber Sample##114899 |q 36182/1 |goto Frostfire Ridge 62.4,76.6
step
#include "Garrison_Medium_Building", action="talk Lumber Lord Oktron##84247", building="LumberMill"
turnin Tree-i-cide##36182
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
#include "Garrison_Medium_Building", action="talk Fayla Fairfeather##87120", building="TradingPost"
accept Tricks of the Trade##37062
step
use Mug of Rousing Coffee##118418
Rouse the Trader |q 37062/1 |goto Frostwall 45.3,14.4
step
#include "Garrison_Medium_Building", action="talk Fayla Fairfeather##87120", building="TradingPost"
turnin Tricks of the Trade##37062
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36166) or completedq(35797) |or
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
Earn the _Savage Friends_ Achievement |achieve 9477
|tip This achievement requires you to reach Exalted reputation with 1 Draenor faction. This can be done through questing or grinding kills for reputation.
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
collect 1 Arcane Crystal Casing##118344 |q 37014 |future
collect 1 Arcane Crystal Conduit##118345 |q 37014 |future
collect 1 Arcane Crystal Amplifier##118346 |q 37014 |future
collect 1 Arcane Crystal Focusing Lens##118347 |q 37014 |future
|tip These items drop from The Butcher, Brackenspore, and Kargath Bladefist in the Highmaul Raid. Use the Group Finder to run this raid repeatedly.
|tip You need an item level of 615 in order use the Group Finder to enter this raid, so run dungeons until you have 615 item level.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Auction Memory Socket##118197 |q 37014 |future
collect 1 Auction Connecting Valve##118331 |q 37014 |future
collect 1 Auction A.D.D.O.N.S Installer##118332 |q 37014 |future
|tip These items can drop from any Draenor dungeon bosses, as well as dungeon reward container.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Universal Language Compensator##118333 |q 37014 |future
collect 1 Universal Language Filter##118334 |q 37014 |future
collect 1 Universal Language Repository##118335 |q 37014 |future
|tip These items drop from any enemy in Ashran.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Super Cooling Regulator##118336 |q 37014 |future
collect 1 Super Cooling Tubing##118337 |q 37014 |future
collect 1 Super Cooling Coolant##118338 |q 37014 |future
collect 1 Super Cooling Pump##118339 |q 37014 |future
|tip These items have a small chance to drop from any mob in Shadowmoon Valley, Talador, and Nagrand.
|tip You can also buy these items from the Auction House, if you'd like.
step
collect 1 Cyclical Power Converter##118340 |q 37014 |future
collect 1 Cyclical Power Housing##118341 |q 37014 |future
collect 1 Cyclical Power Framing##118342 |q 37014 |future
collect 1 Cyclical Power Sequencer##118343 |q 37014 |future
|tip These items have a small chance to drop from any mob in Frostfire Ridge, Gorgrond, and Spires of Arak.
|tip You can also buy these items from the Auction House, if you'd like.
step
use Arcane Crystal Casing##118344
collect Arcane Crystal Module##118375 |q 37014 |future
step
use Auction Memory Socket##118197
collect Auction Control Module##118376 |q 37014 |future
step
use Universal Language Compensator##118333
collect Universal Language Module##118377 |q 37014 |future
step
use Super Cooling Regulator##118336
collect Super Cooling Module##118378 |q 37014 |future
step
use Cyclical Power Converter##118340
collect Cyclical Power Module##118379 |q 37014 |future
step
#include "Garrison_Medium_Building", action="talk Ancient Trading Mechanism##87206", building="TradingPost"
|tip It's a metal robot laying on the porch of your Trading Post.
accept Auctioning for Parts##37014
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
Complete the Nagrand Outpost questline |condition completedq(34899) |or
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Goblin Workshop",{
description="\nThis guide will walk you through creating and upgrading the Goblin Workshop Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have another Large building plot until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Goblin Workshop_ to a _Large Plot_
Build your Goblin Workshop |havebuilding Workshop
step
Wait for your Goblin Workshop to be Built |havebuilding Workshop,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Workshop"
Finalize the Level 1 Goblin Workshop |havebuilding Workshop,1,active
step
#include "Garrison_Large_Building", action="talk Vee##85369", building="Workshop"
|tip She's in your Goblin Workshop garrison building.
accept Unconventional Inventions##37044
step
#include "Garrison_Large_Building", action="click Sticky Grenades##234146", building="Workshop"
|tip They look like a pyramid pile of metal bombs on a table next to Vee.
Acquire a Workshop Invention |q 37044/1
step
#include "Garrison_Large_Building", action="talk Vee##85369", building="Workshop"
|tip She's in your Goblin Workshop garrison building.
turnin Unconventional Inventions##37044
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34899) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Goblin Workshop, Level 2##116200 |condition itemcount(116200) > 0 or hasblueprint("Workshop",2)
step
use Garrison Blueprint: Goblin Workshop, Level 2##116200
Learn the Goblin Workshop, Level 2 Blueprint |condition hasblueprint("Workshop",2)
step
#include "Garrison_ArchitectTable"
Click your Goblin Workshop
Click _Upgrade_
Upgrade your Goblin Workshop to Level 2 |havebuilding Workshop,2,building
step
Wait for your Goblin Workshop to be Built |havebuilding Workshop,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Workshop"
Finalize the Level 2 Goblin Workshop |havebuilding Workshop,2,active
step
label "Inventions_Start"
#include "Garrison_Large_Building", action="click Invention", building="Workshop"
|tip The Inventions will be on the wooden table next to Vee and the wall in your Goblin Workshop. All the of the items are large and obvious, except the Prototype Mekgineer's Chopper key, which is pretty small and could be overlooked or covered by other invention, if you're not careful.
|tip You need multiple charges for each invention, so the fastest way seems to be to use the charges as fast as possible, causing another of the same item to spawn again immediately in your Goblin Workshop.
|tip If the Prototype Mekgineer's Chopper key isn't respawning, try logging out and in again, then moving your Goblin Workshop building to a different plot.
|tip You get 1 new invention per day.
Click after picking up inventions |confirm |condition achieved(9527)
step
use Robo-Rooster##119158
|tip There is a 15 second cooldown.
kill Dungeoneer's Training Dummy##88314
|tip Attack the Tanking training dummy, so that it kills your Robo-Rooster quickly. This way you don't have to wait 10 minutes to summon another one.
Use the _Robo-Rooster_ #20# Times |goto Frostwall/0 72.0,42.4 |achieve 9527/1
|only if itemcount(119158) > 0
step
use Sticky Grenade Launcher##114983
|tip Use the Sticky Grenade Launcher on the Dungeoneer's Training Dummy. There is a 6 second cooldown.
Use the Sticky Grenade Launcher #50# Times |goto Frostwall/0 72.0,42.4 |achieve 9527/2
|only if itemcount(114983) > 0
step
use Pneumatic Power Gauntlet##114974 |only if itemcount(114974) > 0
|tip Use the Pneumatic Power Gauntlet on the Dungeoneer's Training Dummy. There is a 2 minute cooldown. |only if itemcount(114974) > 0
Use the Pneumatic Power Gauntlet #50# Times |goto Frostwall/0 72.0,42.4 |achieve 9527/3 |only if itemcount(114974) > 0
use Pneumatic Power Gauntlet##114975 |only if itemcount(114975) > 0
|tip Use the Pneumatic Power Gauntlet on the Dungeoneer's Training Dummy. There is a 2 minute cooldown. |only if itemcount(114975) > 0
Use the Pneumatic Power Gauntlet #50# Times |goto Frostwall/0 72.0,42.4 |achieve 9527/3 |only if itemcount(114975) > 0
step
use Prototype Mekgineer's Chopper##114924
Use the _Prototype Mekgineer's Chopper_ #50# Times |goto Frostwall/0 56.4,47.0 |achieve 9527/4
|tip Click the yellow arrow button on the action bar to leave the vehicle, so you can use the item again quickly.
|only if itemcount(114924) > 0
step
use "Skyterror" Personal Delivery System##114246
|tip You will fly around for a short time. There is a 5 second cooldown.
Use the _"Skyterror" Personal Delivery System_ #10# Times |goto Frostwall/0 56.4,47.0 |achieve 9527/5
|only if itemcount(114246) > 0
step
use GG-117 Micro-Jetpack##114244
|tip There is a 10 second cooldown.
Use the _GG-117 Micro-Jetpack_ #10# Times |goto Frostwall/0 56.4,47.0 |achieve 9527/6
|only if itemcount(114244) > 0
step
use Sentry Turret Dispenser##114744
|tip There is a 30 second cooldown.
Use the Sentry Turret Dispenser #10# Times |goto Frostwall/0 56.4,47.0 |achieve 9527/7
|only if itemcount(114744) > 0
step
use XD-57 "Bullseye" Guided Rocket Kit##114633
|tip There is a 5 second cooldown.
Use the _XD-57 "Bullseye" Guided Rocket Kit_ #5# Times |goto Frostwall/0 56.4,47.0 |achieve 9527/8
|only if itemcount(114633) > 0
step
use N.U.K.U.L.A.R. Target Painter##115530
|tip There is a 1 hour cooldown.
Use the _N.U.K.U.L.A.R. Target Painter_ #5# Times |goto Frostwall/0 56.4,47.0 |achieve 9527/9
|tip After using this, click to the next step if you want to continue using other inventions, since the cooldown for this is so long.
|only if itemcount(115530) > 0
step
Use 6 of the Engineering Works Inventions |achieve 9527 |or
|tip You have to use a certain number of charges of at least 6 Inventions, so this will take a few days at least.
_
If you need more inventions:
Click to Get More _Goblin Workshop Inventions_ |confirm |next "Inventions_Start" |or
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Goblin Workshop, Level 3##116201 |condition itemcount(116201) > 0 or hasblueprint("Workshop",3)
step
use Garrison Blueprint: Goblin Workshop, Level 3##116201
Learn the Goblin Workshop, Level 3 Blueprint |condition hasblueprint("Workshop",3)
step
#include "Garrison_ArchitectTable"
Click your Goblin Workshop
Click _Upgrade_
Upgrade your Goblin Workshop to Level 3 |havebuilding Workshop,3,building
step
Wait for your Goblin Workshop to be Built |havebuilding Workshop,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Workshop"
Finalize the Level 3 Goblin Workshop |havebuilding Workshop,3,active
step
Congratulations, you've finished upgrading your Goblin Workshop!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Spirit Lodge",{
description="\nThis guide will walk you through creating and upgrading the Spirit Lodge Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have another Large building plot until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Spirit Lodge_ to a _Large Plot_
Build your Spirit Lodge |havebuilding MageTower
step
Wait for your Spirit Lodge to be Built |havebuilding MageTower,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="MageTower"
Finalize the Level 1 Spirit Lodge |havebuilding MageTower,1,active
step
#include "Garrison_Large_Building", action="talk Gez'la##79836", building="MageTower"
|tip She's inside the tent.
accept Portable Portals##38351
step
#include "Garrison_Large_Building", action="talk Varsha##91577", building="MageTower"
|tip She's standing outside the tent, near the entrance.
Speak with Var'nath |q 38351/1
step
#include "Garrison_Large_Building", action="talk Gez'la##79836", building="MageTower"
|tip She's inside the tent.
turnin Portable Portals##38351
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34899) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Spirit Lodge, Level 2##116196 |condition itemcount(116196) > 0 or hasblueprint("MageTower",2)
step
use Garrison Blueprint: Spirit Lodge, Level 2##116196
Learn the Spirit Lodge, Level 2 Blueprint |condition hasblueprint("MageTower",2)
step
#include "Garrison_ArchitectTable"
Click your Spirit Lodge
Click _Upgrade_
Upgrade your Spirit Lodge to Level 2 |havebuilding MageTower,2,building
step
Wait for your Spirit Lodge to be Built |havebuilding MageTower,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="MageTower"
Finalize the Level 2 Spirit Lodge |havebuilding MageTower,2,active
step
#include "Garrison_Large_Building", action="talk Gez'la##79836", building="MageTower"
accept Ogre Waygates##36848
step
Follow the path |goto Gorgrond/0 44.3,70.0 < 20 |only if walking
Continue following the path |goto Gorgrond/0 42.9,65.6 < 30 |only if walking
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
collect 25 Ogre Waystone##117491 |q 36848/1 |goto Gorgrond/0 41.6,65.5
step
Choose the Location for your Ogre Waygate:
|tip Click a line below to choose that location. A portal to the location you choose will be built in your Spirit Lodge Garrison building.
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
Return to your Garrison |goto Frostwall/0 50.2,39.4 < 300 |c |noway |q 36848
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
Return to your Garrison |goto Frostwall/0 50.2,39.4 < 300 |c |noway |q 36848
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
Return to your Garrison |goto Frostwall/0 50.2,39.4 < 300 |c |noway |q 36848
|next "turnin"
step
label "spires"
Follow the dirt path |goto Spires of Arak/0 60.6,44.0 < 30 |only if walking
Run along the road |goto Spires of Arak/0 60.4,46.5 < 30 |only if walking
Follow the path |goto Spires of Arak/0 54.3,50.1 < 30	 |only if walking
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
Activate an Orgre Waygate |q 36848/2 |goto Spires of Arak/0 54.6,51.6
step
click Ogre Waygate |goto Spires of Arak/0 54.6,51.6
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Frostwall/0 50.2,39.4 < 300 |c |noway |q 36848
|next "turnin"
step
label "gorgrond"
click Deactivated Ogre Waygate
|tip It looks like a floating blue and purple orb.
Activate an Ogre Waygate |q 36848/2 |goto Gorgrond 58.0,34.4
step
click Ogre Waygate |goto Gorgrond 58.0,34.4
|tip It looks like a blue swirling portal, between 2 pillars.
Return to your Garrison |goto Frostwall/0 50.2,39.4 < 300 |c |noway |q 36848
|next "turnin"
step
label "turnin"
#include "Garrison_Large_Building", action="talk Gez'la##79836", building="MageTower"
turnin Ogre Waygates##36848
step
Follow the path |goto Gorgrond/0 44.3,70.0 < 20 |only if walking
Continue following the path |goto Gorgrond/0 42.9,65.6 < 30 |only if walking
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
collect 500 Ogre Waystone##117491 |achieve 9497 |goto Gorgrond/0 41.6,65.5
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Spirit Lodge, Level 3##116197 |condition itemcount(116197) > 0 or hasblueprint("MageTower",3)
step
use Garrison Blueprint: Spirit Lodge, Level 3##116197
Learn the Spirit Lodge, Level 3 Blueprint |condition hasblueprint("MageTower",3)
step
#include "Garrison_ArchitectTable"
Click your Spirit Lodge
Click _Upgrade_
Upgrade your Spirit Lodge to Level 3 |havebuilding MageTower,3,building
step
Wait for your Spirit Lodge to be Built |havebuilding MageTower,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="MageTower"
Finalize the Level 3 Spirit Lodge |havebuilding MageTower,3,active
step
Congratulations, you've finished upgrading your Spirit Lodge!
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
Complete the Nagrand Outpost questline |condition completedq(34899) |or
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
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Taming a Talbuk##36917
accept The Black Claw##37123
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
Talk to Sage Paluna |q 37123/1
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin The Black Claw##37123
step
#include "Garrison_Large_Building", action="click Black Claw of Sethe##237169", building="Stables"
|tip It is a small black, sparkling claw sitting on the ground in your Stables.
collect 1 Black Claw of Sethe##118469
|tip You need this with you as you train your new mounts.
only if not achieved(9705)
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
accept Capturing a Clefthoof##36912
step
clicknpc Young Icehoof##86847
use Clefthoof Lasso##118287
|tip The clefthoof will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Clefhoof |q 36912/1 |goto Frostfire Ridge 54.6,19.9
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
turnin Capturing a Clefthoof##36912
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
accept Taming a Talbuk##36917
|tip This may be bugged. If you can't accept the quest, logout and login again, and the quest should be available.
step
clicknpc Young Silverpelt##86801
use Talbuk Lasso##118284
|tip The talbuk will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Silverpelt |q 36917/1 |goto Shadowmoon Valley D/0 50.9,30.1
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
turnin Taming a Talbuk##36917
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
accept Besting a Boar##36944
|tip This may be bugged. If you can't accept the quest, logout and login again, and the quest should be available.
step
clicknpc Young Rocktusk##86850
use Boar Lasso##118288
|tip The boar will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Rocktusk |q 36944/1 |goto Gorgrond/0 43.1,37.2
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
turnin Besting a Boar##36944
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
accept Requisition a Riverbeast##36945
|tip This may be bugged. If you can't accept the quest, logout and login again, and the quest should be available.
step
clicknpc Shadow Lily##77271
|tip They look like white glowing flowers on the ground right next to the water.
Obtain the Glowstep Buff |havebuff 237528 |goto Talador/0 64.4,56.3 |q 36945
|tip This buff will allow you to walk on water for 10 minutes, and will not be cancelled when you take damage.
step
clicknpc Young Riverwallow##86848
use Riverbeast Lasso##118285
|tip The beast will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Riverwallow |q 36945/1 |goto Talador/0 64.4,56.3
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
turnin Requisition a Riverbeast##36945
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
accept Entangling an Elekk##36946
|tip This may be bugged. If you can't accept the quest, logout and login again, and the quest should be available.
step
clicknpc Young Meadowstomper##86852
use Elekk Lasso##118286
|tip The elekk will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Meadowstomper |q 36946/1 |goto Nagrand D/0 85.1,40.7
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
turnin Entangling an Elekk##36946
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
accept Wrangling a Wolf##36950
|tip This may be bugged. If you can't accept the quest, logout and login again, and the quest should be available.
step
clicknpc Young Snarler##86851
use Wolf Lasso##118283
|tip The wolf will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Snarler |q 36950/1 |goto Nagrand D/0 57.2,60.3
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
turnin Wrangling a Wolf##36950
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Talbuk Training: Great-Tusk##37093
|tip She will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Clefthoof Training: Great-Tusk##37048
|tip He will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q 37048/1 |goto Shadowmoon Valley D/0 62.9,39.1
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q 37093/1 |goto Shadowmoon Valley D/0 62.9,39.1
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Great-Tusk##37093
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Clefthoof Training: Great-Tusk##37048
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Talbuk Training: Rakkiri##37094
|tip You may not be able to pick this up until the next day.
|tip She will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Clefthoof Training: Rakkiri##37049
|tip You may not be able to pick this up until the next day.
|tip He will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q 37049/1 |goto Frostfire Ridge 72.9,69.9
|tip It's a huge bat flying in the air.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352 |goto Frostfire Ridge 72.9,69.9
kill Rakkiri##87085 |q 37094/1
|tip It's a huge bat flying in the air.
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Rakkiri##37094
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Clefthoof Training: Rakkiri##37049
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Talbuk Training: Riplash##37095
|tip She will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Riplash##37032
accept Clefthoof Training: Riplash##37050
|tip He will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
Run through here |goto Gorgrond/0 53.9,44.7 < 30 |only if walking
Follow the path around the mountain |goto Gorgrond/0 49.9,41.7 < 30 |only if walking
Continue around the mountain |goto Gorgrond/0 49.4,40.0 < 30 |only if walking
use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q 37095/1 |goto Gorgrond 50.2,38.0
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q 37032/1 |goto Gorgrond 50.2,38.0
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q 37050/1 |goto Gorgrond 50.2,38.0
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Riplash##37095
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Riplash##37032
turnin Clefthoof Training: Riplash##37050
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Gezz'ran##37071
accept Talbuk Training: Gezz'ran##37096
|tip She will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Gezz'ran##37033
accept Clefthoof Training: Gezz'ran##37051
|tip He will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
Follow the road |goto Talador/0 36.5,66.7 < 30 |only if walking
Run on the dirt path |goto Talador/0 31.0,59.7 < 30 |only if walking
use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q 37096/1 |goto Talador 31.4,54.5
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q 37071/1 |goto Talador 31.4,54.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q 37033/1 |goto Talador 31.4,54.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q 37051/1 |goto Talador 31.4,54.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Talbuk Training: Gezz'ran##37096
turnin Riverbeast Training: Gezz'ran##37071
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Gezz'ran##37033
turnin Clefthoof Training: Gezz'ran##37051
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Bulbapore##37072
accept Talbuk Training: Bulbapore##37097
|tip She will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Bulbapore##37034
accept Clefthoof Training: Bulbapore##37052
|tip He will offer other quests, but wait to do them later. This will save you a lot of travel time each day you have to do these types of quests. Only accept the quests listed in this step.
step
Follow the path |goto Spires of Arak/0 61.0,72.4 < 30 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q 37072/1 |goto Spires of Arak/0 66.7,75.7
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q 37097/1 |goto Spires of Arak/0 66.7,75.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q 37034/1 |goto Spires of Arak/0 66.7,75.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q 37052/1 |goto Spires of Arak/0 66.7,75.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Bulbapore##37072
turnin Talbuk Training: Bulbapore##37097
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Bulbapore##37034
turnin Clefthoof Training: Bulbapore##37052
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Cruel Ogres##37073
accept Talbuk Training: Cruel Ogres##37098
accept Wolf Training: Cruel Ogres##37105
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Cruel Ogres##37035
accept Clefthoof Training: Cruel Ogres##37053
accept Elekk Training: Cruel Ogres##37063
step
use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q 37073/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q 37098/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q 37105/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q 37035/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q 37053/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q 37063/1 |goto Nagrand D/0 79.1,71.7
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Cruel Ogres##37073
turnin Talbuk Training: Cruel Ogres##37098
turnin Wolf Training: Cruel Ogres##37105
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Cruel Ogres##37035
turnin Clefthoof Training: Cruel Ogres##37053
turnin Elekk Training: Cruel Ogres##37063
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Darkwing Roc##37074
accept Talbuk Training: Darkwing Roc##37099
accept Wolf Training: Darkwing Roc##37106
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Darkwing Roc##37036
accept Clefthoof Training: Darkwing Roc##37054
accept Elekk Training: Darkwing Roc##37064
step
Go up the path |goto Nagrand D/0 67.3,16.1 < 20 |only if walking
Continue following the path up |goto Nagrand D/0 66.6,15.0 < 20 |only if walking
Cross the bridge |goto 66.6,17.6 < 30 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Darkwing Roc##87088 |q 37074/1 |goto Nagrand D/0 68.5,20.5
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q 37099/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q 37106/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q 37036/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q 37054/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q 37064/1 |goto Nagrand D/0 68.5,20.5
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Darkwing Roc##37074
turnin Talbuk Training: Darkwing Roc##37099
turnin Wolf Training: Darkwing Roc##37106
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Darkwing Roc##37036
turnin Clefthoof Training: Darkwing Roc##37054
turnin Elekk Training: Darkwing Roc##37064
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Moth of Wrath##37075
accept Talbuk Training: Moth of Wrath##37100
accept Wolf Training: Moth of Wrath##37107
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Moth of Wrath##37037
accept Clefthoof Training: Moth of Wrath##37055
accept Elekk Training: Moth of Wrath##37065
step
use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q 37075/1 |goto Nagrand D 43.6,69.6
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q 37100/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q 37107/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q 37037/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q 37055/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q 37065/1 |goto Nagrand D 43.6,69.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Moth of Wrath##37075
turnin Talbuk Training: Moth of Wrath##37100
turnin Wolf Training: Moth of Wrath##37107
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Moth of Wrath##37037
turnin Clefthoof Training: Moth of Wrath##37055
turnin Elekk Training: Moth of Wrath##37065
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Thundercall##37076
accept Talbuk Training: Thundercall##37101
accept Wolf Training: Thundercall##37108
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Thundercall##37038
accept Clefthoof Training: Thundercall##37056
accept Elekk Training: Thundercall##37066
step
Proceed up the path |goto Nagrand D/0 83.5,33.1 < 30 |only if walking
Continue up |goto 85.0,34.8 < 30 |only if walking
Take the left path |goto 86.4,37.0 < 20 |only if walking
Go down the path |goto Nagrand D/0 88.6,35.0 < 20 |only if walking
Head along the side of the mountain |goto 89.0,30.3 < 20 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q 37076/1 |goto Nagrand D 90.6,23.6
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q 37101/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q 37108/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q 37038/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q 37056/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q 37066/1 |goto Nagrand D 90.6,23.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Thundercall##37076
turnin Talbuk Training: Thundercall##37101
turnin Wolf Training: Thundercall##37108
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Thundercall##37038
turnin Clefthoof Training: Thundercall##37056
turnin Elekk Training: Thundercall##37066
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Ironbore##37077
accept Talbuk Training: Ironbore##37102
accept Wolf Training: Ironbore##37109
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Ironbore##37039
accept Clefthoof Training: Ironbore##37057
accept Elekk Training: Ironbore##37067
step
use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q 37077/1 |goto Nagrand D/0 53.2,77.6
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q 37102/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q 37109/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q 37039/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q 37057/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q 37067/1 |goto Nagrand D/0 53.2,77.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Ironbore##37077
turnin Talbuk Training: Ironbore##37102
turnin Wolf Training: Ironbore##37109
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Ironbore##37039
turnin Clefthoof Training: Ironbore##37057
turnin Elekk Training: Ironbore##37067
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: Orc Hunters##37078
accept Talbuk Training: Orc Hunters##37103
accept Wolf Training: Orc Hunters##37110
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: Orc Hunters##37040
accept Clefthoof Training: Orc Hunters##37058
accept Elekk Training: Orc Hunters##37068
step
use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q 37078/1 |goto Nagrand D/0 69.6,34.6
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q 37103/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q 37110/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q 37040/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q 37058/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q 37068/1 |goto Nagrand D/0 69.6,34.6
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: Orc Hunters##37078
turnin Talbuk Training: Orc Hunters##37103
turnin Wolf Training: Orc Hunters##37110
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: Orc Hunters##37040
turnin Clefthoof Training: Orc Hunters##37058
turnin Elekk Training: Orc Hunters##37068
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Riverbeast Training: The Garn##37079
accept Talbuk Training: The Garn##37104
accept Wolf Training: The Garn##37111
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
accept Boar Training: The Garn##37041
accept Clefthoof Training: The Garn##37059
accept Elekk Training: The Garn##37069
step
Follow the road |goto Nagrand D/0 59.9,62.8 < 30 |only if walking
Cross the bridge |goto Nagrand D/0 59.9,69.1 < 20 |only if walking
Run up the path |goto Nagrand D/0 65.0,79.9 < 20 |only if walking
use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87174 |q 37079/1 |goto Nagrand D/0 63.8,80.8
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87174 |q 37104/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Snarler-In-Training Whistle##118353
kill Maimclaw##87174 |q 37111/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87174 |q 37041/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Icehoof-In-Training Whistle##118348
kill Maimclaw##87174 |q 37059/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87174 |q 37069/1 |goto Nagrand D/0 63.8,80.8
|tip Wait for him to respawn, since you just killed him.
|tip You can make a macro that includes "/cast Mend Pet". Using the whistle dismisses your pet and your mount takes damage in the fight. Using this macro will allow you to heal your mount. |only Hunter
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Riverbeast Training: The Garn##37079
turnin Talbuk Training: The Garn##37104
turnin Wolf Training: The Garn##37111
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Boar Training: The Garn##37041
turnin Clefthoof Training: The Garn##37059
turnin Elekk Training: The Garn##37069
step
Fully train all 6 mounts in your Stables:
|tip Completing this achievement unlocks the level 3 Stables Blueprint.
achieve 9526/1
achieve 9526/2
achieve 9526/3
achieve 9526/4
achieve 9526/5
achieve 9526/6
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
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
accept Teeth of a Predator##37124
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
Talk to Sage Paluna |q 37124/1
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
turnin Teeth of a Predator##37124
step
Congratulations, you've finished upgrading your Stables!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\War Mill",{
description="\nThis guide will walk you through creating and upgrading the War Mill Garrison building.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 2 |condition garrisonlvl() > 1
|tip You do not have another Large building plot until your Garrison is level 2. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _War Mill_ to a _Large Plot_
Build your War Mill |havebuilding Armory
step
Wait for your War Mill to be Built |havebuilding Armory,1,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Armory"
Finalize the Level 1 War Mill |havebuilding Armory,1,active
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Nagrand Outpost questline |condition completedq(34899) |or
|tip Use the Nagrand (Warlords of Draenor) Leveling guide to accomplish this.
step
#include "Garrison_Large_Building", action="talk Grun'lek##79815", building="Armory"
accept Scraps of Iron##37043
step
Cross the broken bridge |goto Talador/0 66.9,9.2 < 20 |only if walking
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85455+, Grom'kar Deadeye##85460+, Grom'kar Blademaster##85456+
|tip They are all around this whole area.
collect 5 Iron Horde Scraps##113681 |q 37043/1 |goto Talador/0 67.8,6.5
|tip Depending on your luck, this could take a little while, so be patient if you're not getting them at first.
step
#include "Garrison_Large_Building", action="talk Grun'lek##79815", building="Armory"
turnin Scraps of Iron##37043
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: War Mill, Level 2##116185 |condition itemcount(116185) > 0 or hasblueprint("Armory",2)
step
use Garrison Blueprint: War Mill, Level 2##116185
Learn the War Mill, Level 2 Blueprint |condition hasblueprint("Armory",2)
step
#include "Garrison_ArchitectTable"
Click your War Mill
Click _Upgrade_
Upgrade your War Mill to Level 2 |havebuilding Armory,2,building
step
Wait for your War Mill to be Built |havebuilding Armory,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Armory"
Finalize the Level 2 War Mill |havebuilding Armory,2,active
step
#include "Garrison_CommandTable"
Level 20 Garrison Followers to Level 100 |achieve 9129
|tip Send your Garrison Followers on missions to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: War Mill, Level 3##116186 |condition itemcount(116186) > 0 or hasblueprint("Armory",3)
step
use Garrison Blueprint: War Mill, Level 3##116186
Learn the War Mill, Level 3 Blueprint |condition hasblueprint("Armory",3)
step
#include "Garrison_ArchitectTable"
Click your War Mill
Click _Upgrade_
Upgrade your War Mill to Level 3 |havebuilding Armory,3,building
step
Wait for your War Mill to be Built |havebuilding Armory,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_Finalize_Large", building="Armory"
Finalize the Level 3 War Mill |havebuilding Armory,3,active
step
Congratulations, you've finished upgrading your War Mill!
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
talk Mak'jin##79892
accept Looking For Help##34758 |goto Frostwall/0 38.10,72.53
|tip You must have the Fishing skill to be able to accept this quest.
step
talk Mokugg Lagerpounder##79896
Tell him _"You look like an able fisherman..."_
Find a local fisherman and inquire for help |q 34758/1 |goto Frostfire Ridge/0 55.7,75.2
step
talk Mokugg Lagerpounder##79896
turnin Looking For Help##34758 |goto Frostfire Ridge/0 55.70,75.24
accept Icespine Stingers##36141 |goto Frostfire Ridge/0 55.70,75.24
step
Follow the hill back up |goto Frostfire Ridge/0 55.7,74.0 < 10
kill Icespine Stinger##80782+
collect 4 Icespine Stinger##114679+ |q 36141/1 |goto Frostfire Ridge/0 54.72,70.43
step
talk Mokugg Lagerpounder##79896
turnin Icespine Stingers##36141 |goto Frostfire Ridge/0 55.71,75.28
accept Proving Your Worth##36131 |goto Frostfire Ridge/0 55.71,75.28
step
use Icespine Stinger Bait##114628
Fish in the water here |cast Fishing##131474 |goto Frostfire Ridge/0 56.0,75.1
Catch #5# Zangar Eels |q 36131/1 |goto Frostfire Ridge/0 56.0,75.1
step
talk Mokugg Lagerpounder##79896
turnin Proving Your Worth##36131 |goto Frostfire Ridge/0 55.71,75.26
accept Anglin' In Our Garrison##36132 |goto Frostfire Ridge/0 55.71,75.26
step
talk Mak'jin##79892
turnin Anglin' In Our Garrison##36132 |goto Frostwall/0 38.16,72.42
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
Use your Fishing skill to fish in the water |goto Frostwall/0 38.6,79.2 |cast Fishing##131474
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
only ifnot achieved(9462)
step
Use any Fishing Lure you have
use Sea Scorpion Bait##110292
|tip You will find this bait by fishing.
Use your Fishing skill to fish in the water |cast Fishing##131474
|tip If you find a Tentacled Hat, equip it. It will increase your Fishing skill.
Catch #100# Enormous Sea Scorpions |goto Frostfire Ridge/0 55.4,75.5 |achieve 9461
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
Follow the path to the water |goto Talador/0 51.3,45.2 < 10
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
Catch #100# Enormous Fire Ammonite |goto Frostfire Ridge/0 50.4,59.5 |achieve 9455
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
talk Rak'jin##79971
accept Luring Nat##36612 |goto Frostwall/0 38.6,72.5
step
Use your Fishing skill to fish in the water |cast Fishing##131474
collect Molten Catfish##116754 |q 36612/1 |goto Frostfire Ridge/0 50.4,59.5
step
talk Rak'jin##79971
turnin Luring Nat##36612 |goto Frostwall/0 38.6,72.5
accept Finding Nat Pagle##36608 |goto Frostwall/0 38.6,72.5
step
talk Nat Pagle##63721
Tell him _"Are you Nat Pagle? I have been looking all over for you!"_
Find Nat Pagle in Krasarang Wilds |q 36608/1 |goto Krasarang Wilds/0 68.4,43.5
step
talk Nat Pagle##63721
turnin Finding Nat Pagle##36608 |goto Krasarang Wilds/0 68.4,43.5
accept The Great Angler Returns##36609 |goto Krasarang Wilds/0 68.4,43.5
step
talk Rak'jin##79971
turnin The Great Angler Returns##36609 |goto Frostwall/0 38.6,72.5
step
talk Nat Pagle##85984
accept A True Draenor Angler##36611 |goto Frostwall/0 37.9,71.7
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
use Nat's Hookshot##116755
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch a Lunker in Frostfire Ridge |q 36611/1 |goto Frostfire Ridge/0 50.4,59.5
step
talk Nat Pagle##85984
turnin A True Draenor Angler##36611 |goto Frostwall/0 37.9,71.7
accept An Angler on Our Team##36616 |goto Frostwall/0 37.9,71.7
step
Congratulations, you've finished upgrading your Fishing Shack!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Frostwall Mines",{
description="\nThis guide will walk you through creating and upgrading the Frostwall Mines Garrison building.",
condition_suggested=function() return level >= 40 and level <= 50 and garrisonlvl()>0 end,
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
Upgrade your Garrison to level 2 |condition garrisonlvl() >= 2
|tip Use the Garrison Leveling guide to accomplish this.
step
talk Gorsol##81688
accept Things Are Not Goren Our Way##35154 |goto Frostwall 62.03,73.74
stickystart "frostwall_goren"
step
Follow the path into your mine |goto Frostwall/26 75.1,48.7 < 20 |walk
kill Stonetooth##81396 |q 35154/1 |goto Frostwall/26 57.5,83.8
step
label "frostwall_goren"
kill 8 Frostwall Goren##81362 |q 35154/2 |goto Frostwall/26 60.4,48.3
step
Go up the stairs |goto Frostwall/26 65.4,43.6 < 10 |walk
talk Gorsol##81688
turnin Things Are Not Goren Our Way##35154 |goto Frostwall 62.03,73.74
step
Reach level 40 |ding 40 |or
|tip Use the Leveling guide to accomplish this.
_Or_
Complete the Talador Outpost questline |condition completedq(34971) or completedq(34712) |or
|tip Use the Talador Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Mines, Level 2##116248 |condition itemcount(116248) > 0 or hasblueprint("Mine",2)
step
use Garrison Blueprint: Frostwall Mines, Level 2##116248
Learn the Frostwall Mines, Level 2 Blueprint |condition hasblueprint("Mine",2)
step
#include "Garrison_ArchitectTable"
Click your Frostwall Mines
Click _Upgrade_
Upgrade your Frostwall Mines to Level 2 |havebuilding Mine,2,building
step
Wait for your Frostwall Mines to be Built |havebuilding Mine,2,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_FrostwallMines_Finalize"
Finalize the Level 2 Frostwall Mines |havebuilding Mine,2,active
step
click True Iron Deposit##237358
click Blackrock Desposit##232542+
Mine #500# Draenic Stones |achieve 9453 |goto Frostwall/26 57.5,83.8
|tip Click the ore nodes inside your Frostwall Mines in your garrison. Also, if you have the Mining profession, you can get Draenic Stone by mining in any Draenor zone.
_And_
Reach level 40 |ding 40
|tip Use the Leveling guide to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip You cannot buy level 3 blueprints until your Garrison is level 3. Use the Garrison Leveling guide to accomplish this.
step
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Mines, Level 3##116249 |condition itemcount(116249) > 0 or hasblueprint("Mine",3)
step
use Garrison Blueprint: Frostwall Mines, Level 3##116249
Learn the Frostwall Mines, Level 3 Blueprint |condition hasblueprint("Mine",3)
step
#include "Garrison_ArchitectTable"
Click your Frostwall Mines
Click _Upgrade_
Upgrade your Frostwall Mines to Level 3 |havebuilding Mine,3,building
step
Wait for your Frostwall Mines to be Built |havebuilding Mine,3,ready
|tip This takes 1 hour from the time you initiated the upgrade.
step
#include "Garrison_FrostwallMines_Finalize"
Finalize the Level 3 Frostwall Mines |havebuilding Mine,3,active
step
Congratulations, you've finished upgrading your Frostwall Mines!
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
talk Tarnon##81981
accept Clearing the Garden##34193 |goto Frostwall/0 43.3,83.3
step
kill 8 Frostwall Nibbler##81967+ |q 34193/1 |goto Frostwall/0 48.0,85.2
step
talk Tarnon##81981
turnin Clearing the Garden##34193 |goto Frostwall/0 43.3,83.3
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
Gather #500# Draenic Seeds |achieve 9454 |goto Frostwall/0 47.6,84.7
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
talk Varzok##63626
accept Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
step
talk Varzok##63626
Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Win a Pet Battle |q 31588/1 |goto 49.96,57.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Varzok##63626
turnin Learning the Ropes##31588 |goto 52.56,59.27
accept On The Mend##31589 |goto 52.56,59.27
step
talk Murog##47764
Tell him: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31589/1 |goto 62.1,35.3
step
talk Varzok##63626
turnin On The Mend##31589 |goto 52.56,59.27
accept Level Up!##31827 |goto 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Raise a Battle Pet to level 3 |q 31827/1 |goto 49.96,57.40
step
_Click the quest completion box that appears_
accept Varzok##32009
step
talk Varzok##63626
turnin Varzok##32009 |goto Orgrimmar 52.5,59.3
step
talk Varzok##63626
turnin Level Up!##31827 |goto Orgrimmar 52.5,59.3
accept Got one!##31590 |goto Orgrimmar 52.5,59.3
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
|tip When it reaches 35% health or lower, use your Trap ability to capture it.
Catch a Pet |q 31590/1 |goto 49.96,57.40
step
talk Varzok##63626
turnin Got one!##31590 |goto Orgrimmar 52.5,59.3
step
talk Serr'ah##79858
accept Unearthed Magic##38242 |goto Frostwall 31.54,42.14
step
click Strange Stone##240357
|tip It looks like a huge blue crystal sitting in a mining cart in front of your Frostwall Mines Garrison building.
collect Strange Stone##122458 |q 38242/1 |goto Frostwall 61.8,70.8
step
talk Serr'ah##79858
turnin Unearthed Magic##38242 |goto Frostwall 31.54,42.14
step
use Ultimate Battle-Training Stone##122457
Raise a Battle Pet to _Level 25_
|tip You can choose whichever you want.
Raise _3_ Battle Pets to _Level 25_
|tip Once you have at least one level 25 Battle Pet, talk to Kura Thunderhoof in front of your Menagerie. She offers a daily quest that awards stones to help level your other Battle Pets faster.
Click Once You've Done This |confirm |only if not completedq(36469)
step
label "Pets_Versus_Pests"
talk Serr'ah##79858
accept Pets Versus Pests##36469 |goto 31.54,42.14
step
Follow the path back |goto Frostwall/0 45.1,64.9 < 15 |walk
clicknpc Gorefu##89130
Engage in a pet battle
Defeat Gorefu |q 36469/2 |goto 36.9,75.4
step
clicknpc Carrotus Maximus##89129
Engage in a pet battle
Defeat Carrotus Maximus |q 36469/1 |goto Frostwall/0 49.9,84.3
step
clicknpc Gnawface##89131
Engage in a pet battle
Defeat Gnawface |q 36469/3 |goto Frostwall/0 62.1,27.7
step
talk Serr'ah##79858
turnin Pets Versus Pests##36469 |goto 31.54,42.14
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
click Finalize Garrison Plot##236190 |goto Frostwall/0 33.5,41.6
|tip It looks like a huge floating scroll in a column of yellow light.
Finalize the Level 2 Menagerie |havebuilding PetStable,2,active
step
Win #150# Pet Battles in Draenor |achieve 9463
|tip Accomplish this by completing the daily pet battles at your Menagerie Garrison Building each day. You can also fight pet battles in any Draenor zone to get this done faster.
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
click Finalize Garrison Plot##236190 |goto Frostwall/0 33.5,41.6
|tip It looks like a huge floating scroll in a column of yellow light.
Finalize the Level 3 Menagerie |havebuilding PetStable,3,active
step
Congratulations, you've finished upgrading your Menagerie!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Frostwall Shipyard",{
description="\nThis guide will walk you through creating and upgrading the Frostwall Shipyard Garrison building.",
condition_suggested=function() return level >= 40 and not completedq(39246) and garrisonlvl()>0 end,
},[[
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38567 |goto Frostwall/0 40.1,54.0
|tip You will automatically accept this quest.
step
talk Vol'jin##92400
turnin Garrison Campaign: War Council##38567 |goto Frostwall/0 39.1,54.8
accept We Need a Shipwright##38568 |goto Frostwall/0 39.1,54.8
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 56.0,6.7 < 100 |noway |c |q 38568
accept Clearing the Docks##38569
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Sammy Fivefingers##89937
turnin We Need a Shipwright##38568 |goto Gorgrond/0 56.1,6.7
accept Derailment##38570 |goto Gorgrond/0 56.1,6.7
stickystart "clearing_the_docks"
step
Go through the doorway |goto Gorgrond/0 56.3,8.2 < 20 |only if walking
Follow the path |goto Gorgrond/0 56.8,10.3 < 30 |only if walking
Run up the ramp |goto Gorgrond/0 56.7,11.5 < 20 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q 38570/2 |goto Gorgrond/0 56.5,11.6
step
Run up the ramp |goto Gorgrond/0 56.9,14.1 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground between 2 huge metal loops.
collect Explosive Charges##122515 |q 38570/1 |goto Gorgrond/0 56.4,15.1
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 38569/1 |goto Gorgrond/0 56.9,12.0
|tip You will see a progress bar in your quest tracking area.
step
talk Durotan##92401
turnin Derailment##38570 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38571/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38571/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38571/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38571/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q 38571/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 56.8,17.2
step
Follow the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38572/1 |goto Gorgrond/0 50.7,16.1
step
Enter the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38572/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38573 |goto Gorgrond/0 50.6,16.7
step
talk Vol'jin##92400
turnin Nothing Remains##38573 |goto Frostwall/0 39.1,54.8
accept All Hands on Deck##38574 |goto Frostwall/0 39.1,54.8
step
Follow the path |goto Frostwall/0 36.5,40.9 < 30 |only if walking
Go through the doorway |goto Frostwall/0 27.0,55.4 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38574 |goto Frostfire Ridge/0 41.5,69.9
step
talk Rolosh Wavechaser##94789
accept Let's Get To Work##39236 |goto Frostfire Ridge/0 41.6,72.3
step
talk Solog Roark##94429
turnin Let's Get To Work##39236 |goto Frostfire Ridge/0 40.7,70.3
accept Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q 39241/1
step
talk Solog Roark##94429
turnin Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
accept Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
step
talk Solog Roark##94429
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q 39242/1 |goto Frostfire Ridge/0 40.7,70.3
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport Once Construction is Complete |q 39242/2 |goto Frostfire Ridge/0 40.4,70.0
|tip It takes 1 minute to build after you begin the work order.
step
talk Solog Roark##94429
turnin Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
accept The Invasion of Tanaan##37889 |goto Frostfire Ridge/0 40.7,70.3
step
Follow the path |goto Frostfire Ridge/0 41.5,72.1 < 30 |only if walking
Meet with Khadgar |q 37889/1 |goto Frostfire Ridge/0 40.8,73.3
step
talk Draka##90481
Tell her _"Let us begin the invasion."_
Speak With Draka |q 37889/2 |goto Frostfire Ridge/0 40.7,73.3
step
talk Draka##89822
turnin The Invasion of Tanaan##37889 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##37890 |goto Tanaan Jungle/0 73.4,71.1
step
Follow the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q 37890/1 |goto Tanaan Jungle/0 68.9,64.9
step
Follow the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q 37890/2 |goto Tanaan Jungle/0 74.0,56.1
step
Follow the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Shadow Hunter Mutumba##90238
turnin Obstacle Course##37890 |goto Tanaan Jungle/0 69.5,54.2
accept In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 69.5,54.2
step
Follow the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q 37934/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q 37934/2 |goto Tanaan Jungle/0 64.3,51.6
step
Run down the path |goto Tanaan Jungle/0 63.4,51.6 < 20 |only if walking
Meet Up With Shadow Hunter Mutumba |q 37934/3 |goto Tanaan Jungle/0 62.6,50.9
step
talk Shadow Hunter Mutumba##90238
turnin In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 62.6,50.9
accept The Assault Base##37935 |goto Tanaan Jungle/0 62.6,50.9
step
Follow the path |goto Tanaan Jungle/0 61.7,51.2 < 20 |only if walking
Run up the path |goto Tanaan Jungle/0 60.3,49.9 < 20 |only if walking
Follow Mutumba |q 37935/1 |goto Tanaan Jungle/0 60.9,47.1
step
clicknpc Horde Banner##120955
|tip It looks like a yellow hanging flag with the Horde logo on it.
Plant the Flag to Build the Base |q 37935/2 |goto Tanaan Jungle/0 60.9,47.0
step
talk Gargash the Diver##90550
fpath Vol'mar |goto Tanaan Jungle/0 60.4,46.4
step
Enter the building |goto Tanaan Jungle/0 61.2,46.1 |walk
talk Draka##90481
turnin The Assault Base##37935 |goto Tanaan Jungle/0 61.5,45.8
accept Shipyard Report##39423 |goto Tanaan Jungle/0 61.5,45.8
step
Follow the path |goto Frostwall/0 36.5,40.9 < 30 |only if walking
Go through the doorway |goto Frostwall/0 27.0,55.4 < 20 |walk
talk Rolosh Wavechaser##94789
turnin Shipyard Report##39423 |goto Frostfire Ridge/0 41.6,72.3
accept Naval Commander##39243 |goto Frostfire Ridge/0 41.6,72.3
step
Follow the path up |goto Frostfire Ridge/0 42.3,71.7 < 20 |only if walking
Meet Rolosh Wavechaser at Your Fleet Command Table |q 39243/1 |goto Frostfire Ridge/0 42.1,70.9
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Click the _Yellow Anchor Icon_ on the map
Drag _"The Hungry Riverbeast"_ to the mission screen
|tip Drag your ship to the yellow pulsing ship icon in the middle of the ship mission area.
Click the _Start Mission_ button
Start a Naval Mission |q 39243/2 |goto Frostfire Ridge/0 42.1,70.9
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Click the _View Completed Missions_ button
|tip It takes 1 minute to complete the mission after you started it.
Click the _Rewards Chest_
Click the _Next_ button
Complete a Naval Mission |q 39243/3 |goto Frostfire Ridge/0 42.1,70.9
step
talk Rolosh Wavechaser##94789
turnin Naval Commander##39243 |goto Frostfire Ridge/0 42.1,71.0
accept Destroying the Competition##39401 |goto Frostfire Ridge/0 42.1,71.0
step
use Ship Blueprint: Destroyer##126900
Learn the Ship Blueprint: Destroyer |q 39401/1
step
talk Solog Roark##94429
Tell him _"Start construction on our first destroyer."_
Click _Start Work Order_
click Horde Destroyer Ship##243961
|tip It's a big metal and wooden ship sitting on the beach nearby. It takes 1 minute to build after you start the work order.
Build a Destroyer at Your Shipyard |q 39401/2 |goto Frostfire Ridge/0 40.7,70.3
step
Follow the path up |goto Frostfire Ridge/0 42.3,71.7 < 20 |only if walking
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Click the _Yellow Anchor Icon_ on the map
Drag your _Ships_ to the mission screen
|tip Drag both of your ships to the yellow pulsing ship icons in the middle of the ship mission area.
Click the _Start Mission_ button
Complete the Mission
|tip It takes 38 seconds to complete the mission after you start it. Click the Fleet Command Table again and complete the mission.
Complete the Naval Mission: A Little Combat |q 39401/3 |goto Frostfire Ridge/0 42.1,70.9
step
talk Rolosh Wavechaser##94789
turnin Destroying the Competition##39401 |goto Frostfire Ridge/0 42.1,71.0
accept If At First You Fail, Try Again!##39674 |goto Frostfire Ridge/0 42.1,71.0
step
talk Solog Roark##94429
Tell him _"I would like to build another destroyer."_
Click _Start Work Order_
click Horde Destroyer Ship##243961
|tip It's a big metal and wooden ship sitting on the beach nearby. It takes 1 minute to build after you start the work order.
Build another Destroyer Ship |q 39674/1 |goto Frostfire Ridge/0 40.7,70.3
step
Follow the path up |goto Frostfire Ridge/0 42.3,71.7 < 20 |only if walking
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Click the _Yellow Anchor Icon_ on the map
Drag your _Ships_ to the mission screen
|tip Drag both of your ships to the yellow pulsing ship icons in the middle of the ship mission area.
Click the _Start Mission_ button
Complete the Mission
|tip It takes 1 minute to complete the mission after you start it. Click the Fleet Command Table again and complete the mission.
Complete the Naval Mission: The Second Time is the Charm |q 39674/2 |goto Frostfire Ridge/0 42.1,70.9
step
talk Rolosh Wavechaser##94789
turnin If At First You Fail, Try Again!##39674 |goto Frostfire Ridge/0 42.1,71.0
accept Equipping Our Fleet##39675 |goto Frostfire Ridge/0 42.1,71.0
step
Follow the path |goto Frostfire Ridge/0 41.0,72.5 < 30 |only if walking
talk Kronk Rustspark##94801
Tell him _"I hear you're and expert on naval equipment. Have some time to help me out?"_
Find Kronk Rustspark on the Docks |q 39675/1 |goto Frostfire Ridge/0 40.0,72.2
step
click Naval Equipment Blueprint: Blast Furnace##243938
|tip It looks like a tan scroll laying open on a wooden crate.
collect Equipment Blueprint: Blast Furnace##128274 |q 39675/2 |goto Frostfire Ridge/0 38.4,72.7
step
talk Kronk Rustspark##94801
turnin Equipping Our Fleet##39675 |goto Frostfire Ridge/0 40.0,72.2
accept A True Naval Commander##39676 |goto Frostfire Ridge/0 40.0,72.2
step
use Blast Furnace##127882
Click your _Destroyer_ ship
Click the available _Equipment Slot_
|tip The equipment slot currently has the Felsmoke Launcher equipment, so choose to replace it.
Equip a Blast Furnace on a Ship |q 39676/1
step
Follow the path up |goto Frostfire Ridge/0 42.3,71.7 < 20 |only if walking
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Click the _White and Brown Icon_ on the map
Drag your _Ships_ to the mission screen
|tip Drag both of your ships to the yellow pulsing ship icons in the middle of the ship mission area.
Click the _Start Mission_ button
Complete the Naval Blockade Mission: South Sea |q 39676/2 |goto Frostfire Ridge/0 42.1,70.9
step
talk Rolosh Wavechaser##94789
turnin A True Naval Commander##39676 |goto Frostfire Ridge/0 42.1,71.0
accept I Sunk Your Battleship##39604 |goto Frostfire Ridge/0 42.1,71.0
step
Enter the building |goto Tanaan Jungle/0 61.2,46.1 < 20 |walk
Find Shadow Hunter Denjai |q 39604/1 |goto Tanaan Jungle/0 61.7,45.7
step
Earn Honored Reputation with the Vol'jin's Headhunters Faction |q 39604/2
|tip Use the Tanaan Jungle (100) Main Questline guide, the Vol'jin's Headhunters Dailies guide, and the Tanaan Jungle (6.2) Garrison Campaign guides to accomplish this.
step
talk Shadow Hunter Denjai##96014
buy Ship Blueprint: Battleship##127269 |q 39604 |goto Tanaan Jungle/0 61.7,45.7
step
use Ship Blueprint: Battleship##127269
Learn the Ship Blueprint: Battleship |q 39604/3
step
talk Shadow Hunter Denjai##96014
turnin I Sunk Your Battleship##39604 |goto Tanaan Jungle/0 61.7,45.7
step
Follow the path |goto Frostwall/0 34.9,43.4 < 30 |only if walking
Go through the doorway |goto Frostwall/0 26.6,55.7 < 30 |walk
talk Rolosh Wavechaser##94789
accept Upgrading The Fleet##39245 |goto Frostfire Ridge/0 42.1,71.0
stickystart "garrison_resources"
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Send Boats on Missions
Complete #15# Naval Missions |q 39245/1 |goto Frostfire Ridge/0 42.1,70.9
You can build more ships at [Frostfire Ridge/0 40.7,70.3]
|tip Talk to Solog Roark to build more ships, so you can complete more Naval missions faster. You can have 6 total ships in your fleet with a level 1 Shipyard.
|tip Oil can be gained from questing and killing Rares in Tanaan Jungle.
|tip Use the "Vol'jin's Headhunters Dailies" daily guide to gain Oil.
You can purchase ship upgrades at [Frostfire Ridge/0 40.0,72.2]
|tip Talk to Kronk Rustspark to buy ship upgrades for your ships. These are used to counter abilities of the enemy ships while on missions.
|tip Garrison Resources can be gained by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs.
step
label "garrison_resources"
Collect #1000# Garrison Resources |q 39245/2
|tip Do this by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs. You can also collect Garrison Resources by doing Lumber Mill work orders, if you have a Lumber Mill Garrison building.
step
talk Rolosh Wavechaser##94789
turnin Upgrading The Fleet##39245 |goto Frostfire Ridge/0 42.1,71.0
|tip You will need at least 1,000 Gold to be able to turn this quest in.
accept Naval Domination##39246 |goto Frostfire Ridge/0 42.1,71.0
stickystart "garrison_resources_2"
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Send Boats on Missions
Complete #25# Naval Treasure Missions |q 39246/1 |goto Frostfire Ridge/0 42.1,70.9
|tip These missions have a treasure chest icon on the missions map.
You can build more ships at [Frostfire Ridge/0 40.7,70.3]
|tip Talk to Solog Roark to build more ships, so you can complete more Naval missions faster. You can have 8 total ships in your fleet with a level 2 Shipyard.
|tip Oil can be gained from questing and killing Rares in Tanaan Jungle.
|tip Use the "Vol'jin's Headhunters Dailies" daily guide to gain Oil.
You can purchase ship upgrades at [Frostfire Ridge/0 40.0,72.2]
|tip Talk to Kronk Rustspark to buy ship upgrades for your ships. These are used to counter abilities of the enemy ships while on missions.
|tip Garrison Resources can be gained by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs.
step
label "garrison_resources_2"
Collect #2500# Garrison Resources |q 39246/2
|tip Do this by collecting your Garrison Cache, sending followers on missions that reward Garrison Resources, collecting treasures, or killing rare mobs. You can also collect Garrison Resources by doing Lumber Mill work orders, if you have a Lumber Mill Garrison building.
step
talk Rolosh Wavechaser##94789
turnin Naval Domination##39246 |goto Frostfire Ridge/0 42.1,71.0
|tip You will need at least 2,500 Gold to be able to turn this quest in.
step
Congratulations, you've finished upgrading your Frostwall Shipyard!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Campaign Guide",{
description="\nThis guide will walk you through the Garrison Campaign questlines.",
condition_suggested=function() return level >= 40 and garrisonlvl()>0 end,
},[[
#include "Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\Onslaught at Auchindoun",{
description="\nThis guide will walk you through the Onslaught at Auchindoun Garrison Campaign questline in Tanaan Jungle, introduced in patch 6.2.",
condition_suggested=function() return level >= 40 and not completedq(38416) and garrisonlvl()>0 end,
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Draka##90481
accept Garrison Campaign: Onslaught at Auchindoun##38415 |goto Tanaan Jungle/0 61.5,45.8
step
Follow the path |goto Talador/0 42.8,74.5 < 30 |only if walking
talk Lady Liadrin##91750
turnin Garrison Campaign: Onslaught at Auchindoun##38415 |goto Talador/0 44.2,65.2
accept Secrets of the Sargerei##38416 |goto Talador/0 44.3,65.4
accept The Sargerei Menace##38417 |goto Talador/0 44.3,65.4
step
kill Burning Hound##91707+, Sargerei Punisher##91685+, Sargerei Souldrainer##91686+
kill 12 Sargerei |q 38417/1 |goto Talador/0 46.0,63.2
step
Click the Complete Quest Box
turnin The Sargerei Menace##38417
step
Jump down into the hole |goto Talador/0 46.8,63.4 < 20 |walk
Go down the path and _jump down_ here |goto Talador/30 41.9,29.3 < 20 |walk
Enter the Breached Ossuary |q 38416/1 |goto Talador/30 44.0,29.5
step
Follow the path |goto Talador/30 47.6,28.4 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the East Fel Soul Drainer |q 38416/3 |goto Talador/30 63.5,17.4
step
Go through the doorway |goto Talador/30 47.5,28.6 < 20 |walk
Follow the path |goto Talador/30 40.0,33.5 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the West Fel Soul Drainer |q 38416/2 |goto Talador/30 24.2,44.5
step
Go through the doorway |goto Talador/30 40.1,33.5 < 20 |walk
Follow the path down |goto Talador/30 46.2,38.8 < 20 |walk
Investigate the Lower Chamber |q 38416/4 |goto Talador/30 49.7,50.3
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #1# Corrupted Soul Focus |q 38416/5 |goto Talador/30 56.0,70.7
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #2# Corrupted Soul Focus |q 38416/5 |goto Talador/30 53.8,85.1
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #3# Corrupted Soul Focus |q 38416/5 |goto Talador/30 64.8,77.2
Watch the dialogue
Defeat Gorefiend |q 38416/6
step
talk Lady Liadrin##91750
turnin Secrets of the Sargerei##38416 |goto Talador/30 53.5,68.9
step
Congratulations, you've completed the _"Onslaught at Auchindoun"_ Garrison Campaign questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\The Bane of the Bleeding Hollow",{
description="\nThis guide will walk you through the Bane of the Bleeding Hollow Garrison Campaign questline in Tanaan Jungle, introduced in patch 6.2.",
condition_suggested=function() return level >= 40 and not completedq(38274) and garrisonlvl()>0 end,
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Draka##90481
accept Garrison Campaign: The Bane of the Bleeding Hollow##38453 |goto Tanaan Jungle/0 61.5,45.8
|tip If this quest is not available to you, find and use the guide for the quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
Follow the path |goto Tanaan Jungle/0 27.9,58.9 < 30 |only if walking
Run up the dirt path |goto Tanaan Jungle/0 21.3,59.0 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Impaler##89705+, Bleeding Hollow Cabalist##90851+
collect 8 Bleeding Hollow Hunting Map##127006 |q 38453/1 |goto Tanaan Jungle/0 22.7,53.5
step
Click the Complete Quest Box
turnin Garrison Campaign: The Bane of the Bleeding Hollow##38453
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
Run down the spiral ramp and _follow_ the path |goto Tanaan Jungle/0 32.1,37.2 < 20 |walk
Continue following the path down |goto Tanaan Jungle/0 32.3,38.6 < 20 |walk
Follow the path down |goto Tanaan Jungle/0 33.0,37.3 < 30 |walk
Keep going down |goto Tanaan Jungle/0 32.6,35.3 < 30 |walk
Follow the path |goto Tanaan Jungle/0 31.9,37.6 < 20 |walk
Continue through the tunnel |goto Tanaan Jungle/0 32.9,38.1 < 20 |walk
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
condition_suggested=function() return level >= 40 and not completedq(38223) and garrisonlvl()>0 end,
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Reshad##91292
accept Garrison Campaign: In the Shadows##37688 |goto Tanaan Jungle/0 60.5,46.3
step
use Reshad's Volatile Concoction##122463
|tip Walk around camp until blue smoking balls of light appear. Use Reshad's Volatile Concoction on it when you find one.
kill 3 Council Nightblade##91230 |q 37688/1 |goto Tanaan Jungle/0 60.3,45.5
step
talk Reshad##91292
turnin Garrison Campaign: In the Shadows##37688 |goto Tanaan Jungle/0 60.5,46.3
accept Friends Above##38269 |goto Tanaan Jungle/0 60.5,46.3
step
talk Gargash the Diver##90550 |goto Tanaan Jungle/0 60.4,46.4
Tell him _"Take me to Aktar's Post."_
Meet With Reshad at Aktar's Post |q 38269/1
step
talk Reshad##91291
turnin Friends Above##38269 |goto Tanaan Jungle/0 25.8,38.9
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
condition_suggested=function() return level >= 40 and not completedq(39395) and garrisonlvl()>0 end,
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (10-60)_
confirm |only if not completedq(38578)
step
talk Draka##90481
accept Garrison Campaign: The Warlock##38458 |goto Tanaan Jungle/0 61.5,45.8
|tip If this quest is not available to you, find and use the guide for the quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
talk Oronok Torn-heart##91994
|tip He looks like an armored orc, kneeling down inside this building near the fire.
Tell him _"Speak quickly warlock."_
Speak with the Warlock |q 38458/1 |goto Tanaan Jungle/0 60.6,46.6
step
Go to the Vault of the Earth |q 38458/2 |goto Tanaan Jungle/0 47.1,70.2
step
Enter the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
Follow the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
Stop Gul'dan |q 38458/3 |goto Tanaan Jungle/0 46.7,73.1
|tip Watch the dialogue.
step
Follow the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
Leave the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
talk Oronok Torn-heart##92055
turnin Garrison Campaign: The Warlock##38458 |goto Tanaan Jungle/0 47.4,70.4
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
accept The Cipher of Damnation##38463 |goto Tanaan Jungle/0 62.6,31.1
step
talk Farseer Drek'Thar##93633
Tell him _"Begin the ritual please."_
Watch the dialogue
Speak With Your Allies and Break the Barrier |q 38463/1 |goto Tanaan Jungle/0 62.7,31.1
step
Run up the path |goto Tanaan Jungle/0 62.2,29.6 < 30 |only if walking
Enter the Corrupt Refuge |q 38463/2 |goto Tanaan Jungle/0 62.3,28.0
step
kill Cyrukh##92010
|tip He looks like a big fire elemental.
Destroy Cyrukh |q 38463/3 |goto Tanaan Jungle/0 62.8,27.6
step
talk Farseer Drek'Thar##93659
turnin The Cipher of Damnation##38463 |goto Tanaan Jungle/0 62.7,27.7
step
talk Oronok Torn-heart##92338
accept Oronok's Offer##39395 |goto Tanaan Jungle/0 62.8,27.9
step
Congratulations, you've completed the _"Warlock"_ Garrison Campaign questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Leveling Guide",{
description="\nThis guide will walk you through leveling up your Garrison to level 3.",
condition_suggested=function() return level >= 40 and level <= 50 and not completedq(36614) and garrisonlvl()>0 end,
},[[
step
Save up _2200 Garrison Resources_ as you progress through this guide
|tip You will need 200 Garrison Resources to upgrade your Garrison to Level 2.
|tip You will need 2,000 Garrison Resources to upgrade your Garrison to Level 3.
confirm |q 36614 |future
step
talk Farseer Drek'Thar##76411
accept A Song of Frost and Fire##33815 |goto Frostfire Ridge/0 40.79,67.08
step
Watch the dialogue
Get Introduced to Durotan |q 33815/1 |goto 41.82,69.65
step
talk Durotan##78272
turnin A Song of Frost and Fire##33815 |goto 41.82,69.65
accept Of Wolves and Warriors##34402 |goto 41.82,69.65
step
Follow the path up |goto 44.16,68.52 < 10 |only if walking
talk Thrall##70859
turnin Of Wolves and Warriors##34402 |goto Frostwall/0 51.21,43.23
accept For the Horde!##34364 |goto 51.21,43.23
step
clicknpc Horde Banner##120955
|tip It looks like a large wooden T-shape banner illuminated in a yellowish tone with a Horde logo in the center.
Plant the Horde Banner |q 34364/1 |goto 50.72,39.45
step
Watch the dialogue
talk Gazlowe##78466
turnin For the Horde!##34364 |goto 51.22,39.60
accept Back to Work##34375 |goto 51.22,39.60
accept A Gronnling Problem##34592 |goto 51.22,39.60
stickystart "Slay_Frostfire_Gronnling"
step
click Tree Marking##230527+
|tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #6# Trees For Peons |q 34375/1 |goto 47.19,23.43
You can find more around [60.93,57.70]
step
label "Slay_Frostfire_Gronnling"
kill 8 Frostfire Gronnling##79529 |q 34592/1 |goto 47.19,23.43
You can find more around [60.93,57.70]
step
talk Gazlowe##78466
turnin Back to Work##34375 |goto 51.22,39.60
turnin A Gronnling Problem##34592 |goto 51.22,39.60
accept The Den of Skog##34765 |goto 51.22,39.60
step
kill Skog##79903 |q 34765/1 |goto 48.75,86.00
|tip Inside the cave.
step
talk Gazlowe##78466
turnin The Den of Skog##34765 |goto 51.22,39.60
accept Establish Your Garrison##34378 |goto 51.22,39.60
step
click Master Surveyor##233664
Watch Your Garrison be Constructed |q 34378/1 |goto 35.49,52.56
step
Run east into the Garrison
talk Bron Skyhorn##79407
fpath Frostwall Garrison |goto Frostwall/0 45.8,50.9
step
#include "Garrison_Gazlowe"
turnin Establish Your Garrison##34378
accept What We Got##34824
accept What We Need##34822
step
#include "Garrison_Rokhan"
accept The Ogron Live?##34823
step
click Garrison Cache##237191
|tip It looks like a wooden crate bearing a Horde logo sitting next to a small pile of logs.
Investigate Your Garrison Cache |q 34824/2 |goto Frostwall 54.8,52.3
step
talk Senior Peon II##86775
|tip He's standing on the left side of the northern path just outside the Garrison.
|tip He will appear on your minimap as a yellow dot.
Tell him _"Gazlowe needs you."_
Speak With Senior Peon II |q 34824/3 |goto Frostwall 49.4,16.4
step
talk Skaggit##80225
|tip He's standing just outside the Garrison on the south western side.
|tip He will appear on your minimap as a yellow dot.
Tell him _"Get the peons back to work."_
Instruct Skaggit to Release the Peons |q 34824/1 |goto Frostwall 41.1,50.9
step
#include "Garrison_Gazlowe"
turnin What We Got##34824
step
Leave the Garrison and enter Frostfire Ridge |goto Frostfire Ridge/0 < 1000 |q 34822
|tip Head west.
step
kill Pack Boar##80174+
click Drudgeboat Salvage##231851
|tip They look like wooden boxes on the ground around this area.
collect 10 Drudgeboat Salvage##111907 |q 34822/1 |goto 42.67,62.17
You can find more around [42.09,64.19]
step
Enter the cave |goto 40.24,60.30 < 10 |walk
kill Groog##80167 |q 34823/1 |goto 41.9,59.0
|tip Inside the cave.
step
Return to the Garrison |goto Frostwall/0 50.0,50.0 < 1000 |q 34823
step
#include "Garrison_Rokhan"
turnin The Ogron Live?##34823
step
#include "Garrison_Gazlowe"
turnin What We Need##34822
accept Build Your Barracks##34461
step
click Garrison Blueprint: Barracks##231012
|tip It looks like a big white unrolled scroll sitting on a table.
Find Gazlowe's Missing Blueprints |q 34461/1 |goto Frostwall 59.8,50.0
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Garrison Blueprints: Barracks 1 |q 34461/2
step
#include "Garrison_ArchitectTable"
While using the table, _drag the Barracks_ to the _"Large Empty Plot"_
Build Your Barracks |q 34461/3
step
Watch the dialogue
Follow Gazlowe to the Construction Site |q 34461/4 |goto Frostwall/0 57.26,48.01
step
#include "Garrison_Finalize_Large", building="Barracks"
Finalize Your Plot |q 34461/5
step
talk Gazlowe##78466
turnin Build Your Barracks##34461 |goto Frostwall 57.4,48.4
accept We Need An Army##34861 |goto Frostwall 57.4,48.4
step
#include "Garrison_WarmasterZog"
turnin We Need An Army##34861
accept Winds of Change##34462
step
Leave the Garrison and enter Frostfire Ridge |goto Frostfire Ridge/0 < 1000 |q 34462
|tip Head east.
step
Enter the cave |goto 56.81,62.61 < 7 |walk
clicknpc Olin Umberhide##80577
|tip He is hanging upside down inside the cave.
Rescue Olin Umberhide |q 34462/1 |goto Frostfire Ridge 57.3,62.9
step
Return to the Garrison |goto Frostwall/0 50.0,50.0 < 1000 |q 34462
step
#include "Garrison_WarmasterZog"
turnin Winds of Change##34462
accept Mission Probable##34775
step
#include "Garrison_CommandTable"
Click the _Gronnlings Abound_ mission
Assign _Olin Umberhide_ to the mission and start it
Use the Command Table to Send Olin Umberhide on a Mission |q 34775/1
step
#include "Garrison_WarmasterZog"
turnin Mission Probable##34775
step
#include "Garrison_Farseer_Drek'Thar"
accept Den of Wolves##34379
step
clicknpc Frostwolf Rylak##78320 |goto Frostwall 46.9,49.8 < 5
|tip It looks like a winged creature with 2 heads.
Ride the Frostwolf Rylak to Wor'gol |q 34379/1
step
talk Pul Windcarver##76782
fpath Wor'gol |goto Frostfire Ridge/0 21.57,56.14
step
talk Durotan##70860
turnin Den of Wolves##34379 |goto 20.75,57.97
accept Rally the Frostwolves##34380 |goto 20.75,57.97
step
talk Farseer Drek'Thar##80456
|tip You may have to wait for him to run here.
accept Honor Has Its Rewards##33816 |goto 21.03,57.93
step
click Frostwolf Shamanstone##226468
Choose _Spirit of the Wolf_
|tip The quest will complete without clicking the stone, but make sure you do this, since you'll get a passive buff that increases your run speed.
Receive the Blessing From the Shamanstone |q 33816/1 |goto 17.50,56.63
step
talk Farseer Drek'Thar##76616
turnin Honor Has Its Rewards##33816 |goto 17.68,56.70
step
talk Draka##78971
Ask Draka to Sound the War Horn |q 34380/1 |goto 19.36,60.09
step
talk Durotan##76557
turnin Rally the Frostwolves##34380 |goto 20.93,57.91
accept Gormaul Tower##33784 |goto 20.93,57.91
step
Follow the path up |goto 23.25,56.34 < 10 |only if walking
Meet Durotan at Gormaul Tower |q 33784/1 |goto 21.31,44.13
step
kill Bladespire Mauler##73373+, Bladespire Boarbuster##75240+
|tip Start attacking ogres on your own, then follow Durotan to kill all the ogres around this area.
Overrun the Ruin |q 33784/3 |goto 20.41,43.72
|tip Use your Garrison "Call to Arms" ability to complete the optional objective.
step
kill Bladespire Ogron##78173+
Defeat the Counter-Attack |q 33784/4 |goto 19.39,44.52
step
kill Razortusk the Untamed##76208 |q 33784/5 |goto 18.93,45.17
step
talk Durotan##76240
turnin Gormaul Tower##33784 |goto 19.74,44.76
accept These Colors Don't Run##33526 |goto 19.74,44.76
step
Kill Bladespire enemies around this area
use Frostwolf Banner##107279
|tip Use it on their corpses.
Plant #8# Frostwolf Banners |q 33526/1 |goto 21.40,40.43
step
Follow the path |goto Frostfire Ridge/0 21.98,39.12 < 7 |only if walking
Continue following the path |goto Frostfire Ridge/1 4.59,64.13 < 10 |only if walking |notravel
Continue following the path |goto 18.42,57.64 < 10 |only if walking |notravel
Enter the building |goto 31.74,48.12 < 10 |walk
talk Durotan##75177
|tip Enter the building.
turnin These Colors Don't Run##33526 |goto 43.54,23.11
accept Deeds Left Undone##33546 |goto 43.54,23.11
step
click Barrel of Frostwolf Oil##225681+
|tip They look like wooden barrels around this area inside the building.
collect 5 Frostwolf Oil##107361 |q 33546/1 |goto 40.68,53.85
step
talk Gol'kosh the Axe##75167
|tip Inside the building.
Take the Oil to Gol'kosh |q 33546/2 |goto 56.03,43.71
step
Leave the building |goto 36.86,45.34 < 10 |walk
talk Durotan##75177
turnin Deeds Left Undone##33546 |goto 34.26,72.98
accept Great Balls of Fire!##33408 |goto 34.26,72.98
step
Ascend the Ramp |q 33408/1 |goto 48.96,86.93
|tip Avoid the lava boulders that roll down the ramp.
step
talk Thrall##75186
|tip Inside the building.
turnin Great Balls of Fire!##33408 | goto Frostfire Ridge/2 70.71,78.58
accept The Butcher of Bladespire##33410 |goto 70.71,78.58
step
kill Dorogg the Ruthless##74254 |q 33410/1 |goto 54.14,70.37
|tip He can drop an item for each crafting profession you have that will start a quest for that profession. Gathering and Secondary professions do not get a quest item.
step
talk Thrall##75186
|tip Inside the building.
turnin The Butcher of Bladespire##33410 |goto 70.71,78.58
accept To the Slaughter##33622 |goto 70.71,78.58
accept Armed and Dangerous##33344 |goto 70.71,78.58
stickystart "Slay_Bladespire_Ogres"
step
Enter the building |goto 62.54,67.92 < 10 |walk
talk Frostwolf Slave##76543+
|tip They look like brown orcs around this area inside the building.
Arm #10# Frostwolf Slaves |q 33344/1 |goto 50.74,38.29
step
label "Slay_Bladespire_Ogres"
Kill Bladespire enemies around this area
|tip Inside the building.
Slay #10# Bladespire Ogres |q 33622/1 |goto 50.74,38.29
step
talk Durotan##75177
|tip Inside the building.
turnin To the Slaughter##33622 |goto 50.34,32.66
turnin Armed and Dangerous##33344 |goto 50.34,32.66
accept Last Steps##33527 |goto 50.34,32.66
step
click Ladder##268797
|tip Inside the building.
Climb the Chain |q 33527/1 |goto 50.20,31.75
step
kill Gorr'thog##74105 |q 33527/2 |goto Frostfire Ridge/3 49.17,67.82
|tip Inside the building.
step
talk Durotan##75188
|tip Inside the building.
turnin Last Steps##33527 |goto 66.45,56.50
accept Moving In##33657 |goto 66.45,56.50
step
clicknpc Frost Wolf Howler##78894
|tip Inside the building.
Ride the Frost Wolf |q 33657/1 |goto 66.64,55.56
step
talk Durotan##70860
|tip Inside the building.
turnin Moving In##33657 |goto Frostfire Ridge/1 43.14,41.28
accept Save Wolf Home##33468 |goto 43.14,41.28
step
talk Roark the Airwolf##76781
fpath Bladespire Citadel |goto 19.93,51.78
step
Go to Wor'gol |q 33468/1 |goto Frostfire Ridge/0 21.57,56.14
step
kill Giantslayer Zhakta##74702 |q 33468/4 |goto 21.94,57.31
stickystart "Slay_Thunderlords"
step
kill Gronnstalker Korhol##74700 |q 33468/2 |goto 19.08,58.25
step
talk Wor'gol Defender##74507
accept Free Our Brothers and Sisters##33807 |goto 19.07,58.33
stickystart "Free_Villagers_and_Frostwolves"
step
kill Beastmaster Trokar##74708 |q 33468/3 |goto 19.80,61.57
step
label "Slay_Thunderlords"
Kill Thunderlord enemies around this area
Slay #15# Thunderlords |q 33468/5 |goto 19.31,59.03
step
label "Free_Villagers_and_Frostwolves"
click Wor'gol Villager##84781+, Frost Wolf##74544+
|tip They look like friendly NPC's stuck in nets around this area.
Free #6# Villagers and Frostwolves |q 33807/1 |goto 19.31,59.03
step
talk Draka##74651
turnin Save Wolf Home##33468 |goto 20.80,57.93
turnin Free Our Brothers and Sisters##33807 |goto 20.80,57.93
accept The Farseer##33469 |goto 20.80,57.93
step
Enter the cave |goto 18.22,55.95 < 10 |walk
kill Warleader Gargrak##74653 |q 33469/1 |goto 16.77,57.79
|tip Inside the cave.
step
talk Farseer Drek'Thar##74272
|tip Inside the cave.
turnin The Farseer##33469 |goto 16.79,57.84
accept Pool of Visions##33470 |goto 16.79,57.84
step
talk Farseer Drek'Thar##74272
|tip Inside the cave.
Tell him _"I am ready for the ritual, farseer."_
Witness the Ritual of Vision |q 33470/1 |goto 16.79,57.84
step
talk Farseer Drek'Thar##74272
|tip Inside the cave.
turnin Pool of Visions##33470 |goto 16.79,57.84
accept Back to Bladespire Citadel##33473 |goto 16.79,57.84
step
Leave the cave |goto 18.22,55.95 < 10 |q 33473
step
talk Pul Windcarver##76782
Tell him _"Pul, I need to quickly return to Bladespire Citadel."_
Fly Back to Bladespire Citadel |q 33473/1 |goto 21.57,56.14
step
talk Durotan##70860
|tip Inside the building.
turnin Back to Bladespire Citadel##33473 |goto Frostfire Ridge/1 43.14,41.28
accept Ga'nar's Vengeance##32783 |goto 43.14,41.28
step
Leave the building |goto Frostfire Ridge/1 35.22,45.76 < 10 |walk
Run down the path |goto 20.52,42.42 < 10 |only if walking |notravel
talk Ga'nar##70909
turnin Ga'nar's Vengeance##32783 |goto Frostfire Ridge/0 30.89,25.83
accept Let the Hunt Begin!##32791 |goto 30.89,25.83
step
talk Ga'nar##70878
Tell him _"I am ready!"_
Tell Ga'nar You Are Ready |q 32791/1 |goto 30.89,25.83
step
Watch the dialogue
Confront Grotan |q 32791/2 |goto 34.38,26.33
step
Kill the enemies that attack
Wait For Kal'gor's Reinforcements |q 32791/3 |goto 36.14,25.84
step
Kill the enemies that attack
Wait For Ligra's Reinforcements |q 32791/4 |goto 35.65,25.99
step
talk Ga'nar##74000
turnin Let the Hunt Begin!##32791 |goto 36.00,25.77
accept Leave Nothing Behind!##32792 |goto 36.00,25.77
step
talk Ligra the Unyielding##74222
accept They Rely on Numbers##32929 |goto 35.92,25.71
stickystart "Slay_Thunderlord_Orcs"
step
kill Kur'ak the Binder##71669 |q 32792/2 |goto 37.89,28.81
|tip He walks around this area.
step
click Thunderlord Ballista##220568
Destroy the Thunderlord Ballistae |q 32792/1 |goto 38.76,30.20
step
Enter the cave |goto 41.83,32.20 < 15 |walk
click Thunderlord Supplies##220578
|tip Inside the cave.
Destroy the Thunderlord Supplies |q 32792/3 |goto 42.33,34.31
step
label "Slay_Thunderlord_Orcs"
Kill enemies around this area
Slay #15# Thunderlord Orcs |q 32929/1 |goto 40.56,29.41
step
talk Kal'gor the Honorable##74223
turnin They Rely on Numbers##32929 |goto 46.40,32.04
step
talk Ga'nar##70910
turnin Leave Nothing Behind!##32792 |goto 46.40,32.15
accept Wrath of Gronn##32794 |goto 46.40,32.15
step
kill Thunderlord Beastwrangler##74160+
Release #3# Captive Gronns |q 32794/1 |goto 47.13,32.67
|tip They look like big Gronns chained to the ground around this area.
step
Run down the ramp |goto Frostfire Ridge/7 36.59,23.48 < 15 |walk
Continue down the path |goto 42.09,32.43 < 15 |walk
talk Ga'nar##70941
|tip Downstairs inside the cave.
turnin Wrath of Gronn##32794 |goto Frostfire Ridge/8 50.64,54.32
accept The Eldest##32795 |goto 50.64,54.32
step
talk Ga'nar##70941
|tip Downstairs inside the cave.
Choose _<Assist Ga'nar in battle.>_
Watch the dialogue
Confront Hatock |q 32795/1 |goto 50.64,54.32
step
kill Grulloc##70863 |q 32795/2 |goto 52.05,64.73
|tip Downstairs inside the cave.
step
kill Hatock the Gronnmaster##74006 |q 32795/3 |goto 52.05,64.73
|tip Downstairs inside the cave.
step
talk Ga'nar##70941
|tip Downstairs inside the cave.
turnin The Eldest##32795 |goto 51.74,66.08
accept To the Garrison##32796 |goto 51.74,66.08
He may be standing at [49.79,51.99]
step
Return to the Garrison |goto Frostwall/0 50.0,50.0 < 1000 |q 32796
step
#include "Garrison_Durotan"
turnin To the Garrison##32796
step
#include "Garrison_Gazlowe"
accept Bigger is Better##36567
step
#include "Garrison_ArchitectTable"
|tip Click your Great Hall and then click "Upgrade."
|tip You will need 200 Garrison Resources to upgrade your Garrison to Level 2.
|tip Gather your Garrison Supply Cache each day, collect treasures, kill rares, and send followers on missions that award Garrison Resources.
Upgrade your Garrison to Level 2 |q 36567/1
step
#include "Garrison_Gazlowe"
turnin Bigger is Better##36567
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
#include "Garrison_Gazlowe"
accept My Very Own Fortress##36614
step
Collect #2000# Garrison Resources |q 36614/1
|tip You will need 2,000 Garrison Resources and 5,000 gold to upgrade your Garrison to Level 3.
|tip Gather your Garrison Supply Cache each day, collect treasures, kill rares, and send followers on missions that award Garrison Resources.
step
#include "Garrison_ArchitectTable"
|tip Click your Great Hall and then click "Upgrade."
|tip You will need 2,000 Garrison Resources and 5,000 gold to upgrade your Garrison to Level 3.
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
step
#include "Garrison_Gazlowe"
turnin My Very Own Fortress##36614
step
Congratulations, you've upgraded your Garrison to level 3!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Quests Guide",{
description="\nThis guide will walk you through the quests found in your Garrison.",
condition_suggested=function() return level >= 40 and level <= 50 and not completedq(38427) and garrisonlvl()>0 end,
},[[
step
#include "Garrison_Rokhan"
accept We Be Needin' Supplies##34736
step
talk Shadow Hunter Rala##78208
turnin We Be Needin' Supplies##34736 |goto Frostfire Ridge/0 52.7,40.5
step
Click the _Quest Accept_ Box:
accept Wanted: Grondo's Bounty##33918 |goto Frostfire Ridge/0 53.5,44.2
step
kill Grondo##76848 |q 33918/1 |goto Frostfire Ridge/0 54.0,43.0
step
talk Ja'kana##78699
fpath Darkspear's Edge |goto Frostfire Ridge/0 51.7,41.1
step
#include "Garrison_Rokhan"
turnin Wanted: Grondo's Bounty##33918
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Cordana Felsong##79252
accept Vouchsafe Our Arrival##34209 |goto Frostwall/0 49.31,36.66
step
talk Cordana Felsong##72814
turnin Vouchsafe Our Arrival##34209 |goto Frostfire Ridge/0 31.46,16.21
accept Safe Passage##34216 |goto Frostfire Ridge/0 31.46,16.21
step
talk Cordana Felsong##72814
Tell her "_Warden, let's go make your introduction_"
|tip After talking to her, follow her as she talks.
Hear Cordana Felsong's Tale |q 34216/1 |goto Frostfire Ridge/0 31.9,11.9
step
talk Farseer Urquan##72837
turnin Safe Passage##34216 |goto Frostfire Ridge/0 31.75,11.79
accept What Must Be Done##34227 |goto Frostfire Ridge/0 31.75,11.79
step
kill Mother of Wolves##73205
Collect the Mother of Wolves' Remains |q 34227/1 |goto Frostfire Ridge/0 28.1,15.1
step
click Grave Mound##228029
|tip It's a small mound of snow with a shovel sticking out of it.
Bury the Mother of Wolves |q 34227/2 |goto Frostfire Ridge/0 30.1,8.7
step
Follow the path back to Throm'var |goto Frostfire Ridge/0 31.6,9.5 < 10 |only if walking
talk Archmage Khadgar##72874
turnin What Must Be Done##34227 |goto 31.74,11.85
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
#include "Garrison_WarmasterZog"
accept Proving Grounds##37434
step
#include "Garrison_WarmasterZog"
Click _"Enter the Proving Grounds"_
Speak With Warmaster Zog to Enter Proving Grounds |q 37434/1
step
Click _Accept_ when the queue appears
talk Trial Master Rotun##61636
Select a Bronze trial based on role (_Damage_, _Tank_, or _Healer_) |goto Proving Grounds/1 50.3,81.9
confirm |only if not completedq(37434)
step
Complete a Bronze Trial |q 37434/2 |goto Proving Grounds/1 46.0,52.1
|tip Follow the on-screen instructions and complete the Proving Grounds trial for your role.
step
Return to Your Garrison |goto Frostwall/0 41.1,53.2 < 100 |c |noway
|tip Right click on the green eye icon on your mini map and select Leave Instanace Group.
only if not completedq(37434)
step
#include "Garrison_WarmasterZog"
turnin Proving Grounds##37434
accept New Goods##38427
step
#include "Garrison_Grimjaw"
Find Sergeant Grimjaw |q 38427/1
step
Click the Complete Quest Box
turnin New Goods##38427
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Starter Guide",{
description="\nThis guide will provide a tutorial for Garrison Followers.",
},[[
step
label "start"
Choose a section to start:
_Assigning Followers to Garrison Buildings_ |confirm |next "assign"
_Follower Abilities, Traits, and the Frostwall Tavern_ |confirm |next "ability"
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
Click here to continue to _Frostwall Tavern_ info |confirm
Click here to return to the _Main Menu_ |confirm |next "start"
step
_Frostwall Tavern Info_
After reaching Level 2 with the Frostwall Tavern, you can search for specific Follower abilities or traits and then recruit that Follower
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower 'Doc' Schweitzer",{
keywords={"discipline","priest","herbalism"},
description="\nThis guide will walk you through obtaining 'Doc' Schweitzer as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit "Doc" Schweitzer |condition hasfollower(342)
step
Congratulations, you now have "Doc" Schweitzer as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Abu'gar",{
keywords={"blood","death","knight","wild","aggression"},
description="\nThis guide will walk you through obtaining Abu'gar as a Garrison Follower.",
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Aeda Brightdawn",{
keywords={"demonology","warlock","timed","battle","bodyguard"},
description="\nThis guide will walk you through obtaining Aeda Brightdawn as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Aeda Brightdawn##85768
accept Gatekeepers of Auchindoun##34776 |goto Talador 58.09,53.00
step
kill Vindicator Dalu##79970 |q 34776/1 |goto Talador 57.4,52.6
kill Soulbinder Halaari##79977 |q 34776/2 |goto Talador 57.4,52.6
step
talk Aeda Brightdawn##79978
turnin Gatekeepers of Auchindoun##34776 |goto 58.10,53.01
accept The True Path##36518 |goto Talador 58.12,52.98
step
Congratulations, you now have Aeda Brightdawn as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ahm",{
keywords={"arms","warrior","danger","zones","enchanting"},
description="\nThis guide will walk you through obtaining Ahm as a Garrison Follower.",
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
accept Solidarity In Death##36522 |goto Frostwall 50.8,15.8
step
Congratulations, you now have Ahm as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Aila Dourblade",{
keywords={"subtlety","rogue"},
description="\nThis guide will walk you through obtaining Auriel Brightsong as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Aila Dourblade |condition hasfollower(376)
step
Congratulations, you now have Aila Dourblade as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Aknor Steelbringer",{
keywords={"arms","warrior","minion","swarms"},
description="\nThis guide will walk you through obtaining Aknor Steelbringer as a Garrison Follower.",
},[[
step
In order to recruit this Follower you must defeat _Flamebender Ka'graz_ in the Blackrock Foundry raid without killing Aknor
|tip This must be done on Normal or higher difficulty! It CANNOT be done in LFR.
achieve 8929 |goto Blackrock Foundry/1 18.8,76.8
step
Congratulations, you now have Aknor Steelbringer as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Alexi Barov",{
keywords={"assassination","rogue","danger","zones"},
description="\nThis guide will walk you through obtaining Alexi Barov as a Garrison Follower.",
},[[
step
In order to recruit this Follower you must have a Lumber Mill and be able to harvest small timber with _Apprentice Logging_
|tip Use the Garrison Buildings guides to accomplish this.
Harvest the Fallen Tree |goto Talador 73.7,64.0
It can also be at these locations:
Location 1: [Talador/0 59.0,29.8]
Location 2: [Talador/0 54.3,56.2]
Location 3: [Talador/0 70.1,54.2]
_Wait_ for Alexi Barov to appear
talk Alexi Barov##85414
accept The Rise and Fall of Barov Industries: Alexi Barov##36427
step
Congratulations, you now have Alexi Barov as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Arienne Black",{
keywords={"discipline","priest"},
description="\nThis guide will walk you through obtaining Arienne Black as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Arienne Black |condition hasfollower(345)
step
Congratulations, you now have Arienne Black as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Auriel Brightsong",{
keywords={"holy","paladin"},
description="\nThis guide will walk you through obtaining Auriel Brightsong as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Auriel Brightsong |condition hasfollower(327)
step
Congratulations, you now have Auriel Brightsong as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Awarri Blazecall",{
keywords={"fire","mage"},
description="\nThis guide will walk you through obtaining Awarri Blazecall as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Awarri Blazecall |condition hasfollower(296)
step
Congratulations, you now have Awarri Blazecall as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Benjamin Gibb",{
keywords={"unholy","death","knight","minion","swarms","inscription"},
description="\nThis guide will walk you through obtaining Benjamin Gibb as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Benjamin Gibb##86597
accept Three Feet Under##36864 |goto Spires of Arak 35.8,52.2
step
Congratulations, you now have Benjamin Gibb as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Bim'ini",{
keywords={"fury","warrior"},
description="\nThis guide will walk you through obtaining Bim'ini as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Bim'ini |condition hasfollower(420)
step
Congratulations, you now have Bim'ini as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Blook",{
keywords={"fury","warrior","timed","battle","combat","experience"},
description="\nThis guide will walk you through obtaining Blook as a Garrison Follower.",
},[[
step
_Follow the steep, winding path up to Blook's Overlook_ |goto Gorgrond 42.5,91.0 < 15
talk Blook##78031
Tell him _"What?"_
kill Blook##78031
|tip Defeat Blook in combat and then talk to him again.
accept I Am Blook##34279 |goto Gorgrond 41.2,91.4
step
Congratulations, you now have Blook as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Bruto",{
keywords={"windwalker","monk","wild","aggression"},
description="\nThis guide will walk you through obtaining Bruto as a Garrison Follower.",
},[[
step
talk Limbflayer##76688
accept A Rediscovered Legend##34697 |goto Gorgrond/0 46.34,69.69
|tip You must have the Sparring Arena to gain this Follower. You can switch buildings but it costs 5,000 gold.
talk Penny Clobberbottom##85831 |goto Gorgrond/0 46.2,69.7
|tip Talk to Penny at the location above to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Head through the passage |goto Gorgrond/0 44.3,70.1 < 15 |only if walking
talk Kash'drakor##79320
turnin A Rediscovered Legend##34697 |goto 42.8,63.1
step
talk Gladiator Akaani##79322
accept Getting Gladiators##34699 |goto 42.75,62.98
step
Enter Stonemaul Arena |goto Gorgrond/0 41.9,65.3 < 20 |walk
Go into the small hut |goto Gorgrond/0 40.4,65.1 < 10 |walk
click Shackle##233284
|tip It is a silver metal shackle around Bruto's wrist.
Free Bruto |q 34699/3 |goto Gorgrond/0 40.3,64.8
step
click Shackle##233284
|tip The metal shackle is holding the cage closed.
Free Y'kish |q 34699/2 |goto Gorgrond/0 39.8,67.8
step
Enter the building |goto Gorgrond/0 39.3,66.8 < 10 |walk
click Shackle##233284
|tip It's a metal shackle locked onto the wall.
Free Pitfighter Vaandaam |q 34699/1 |goto Gorgrond/0 39.16,67.24
step
Go up the dirt path |goto Gorgrond/0 39.4,65.8 < 15 |only if walking
Follow the path back |goto Gorgrond/0 38.9,66.4 < 10 |only if walking
Enter the cave |goto Gorgrond/0 38.6,67.4 < 15 |walk
talk Bruto##77014
turnin Getting Gladiators##34699 |goto Gorgrond/0 36.8,67.8
accept The Axe of Kor'gall##34703 |goto Gorgrond/0 36.8,67.8
step
click Ogre Barricade##224709 |goto Gorgrond/0 36.8,68.1 < 8
kill Kor'gall##77020
collect Serathil##109023 |q 34703/1 |goto Gorgrond/0 36.4,69.8
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto Gorgrond/0 42.8,63.0
step
talk Bruto##77014
accept The Interest of Bruto##35882 |goto Gorgrond/0 42.8,62.9
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Bruto##119255 |condition itemcount(119255) > 0 or hasfollower(176) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Bruto##119255
Recruit Bruto |condition hasfollower(176)
step
label "end"
Congratulations, you now have Bruto as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Cacklebone",{
keywords={"restoration","shaman","group","damage"},
description="\nThis guide will walk you through obtaining Cacklebone as a Garrison Follower.",
},[[
step
Routing to Trading Post |next "tp" |only if hasbuilding(144) or hasbuilding(145)
Routing to End |next "end" |only if default
step
label "tp"
Become Revered with the Laughing Skill Orcs |condition rep('Laughing Skull Orcs')>=Revered |goto Gorgrond/0 72.8,39.6
|tip This is most easily obtained by farming mobs with Mutagen stacks in the Everbloom Wilds in Gorgrond.
|tip Twisted Guardians and Enthralled Mutants spawn mutagen pools when they die. Stand in these pools to gain stacks of Mutagen.
step
#include "Garrison_Medium_Building", action="talk Kil'rip##86698", building="TradingPost"
|tip He is found in your Trading Post.
buy Contract: Cacklebone##119166 |condition itemcount(119166) > 0 or hasfollower(458)
|tip It costs 5,000 gold.
step
use Contract: Cacklebone##119166
Recruit Cacklebone |condition hasfollower(458)
step
label "end"
Congratulations, you now have Cacklebone as a Garrison Follower! |only if hasfollower(458)
You must have at least a level 2 Trading Post to recruit this Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Cadi Grasshoof",{
keywords={"restoration","druid"},
description="\nThis guide will walk you through obtaining Cadi Grasshoof as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Cadi Grasshoof |condition hasfollower(262)
step
Congratulations, you now have Cadi Grasshoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Candice Morey",{
keywords={"frost","mage"},
description="\nThis guide will walk you through obtaining Candice Morey as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Candice Morey |condition hasfollower(300)
step
Congratulations, you now have Candice Morey as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Cheri",{
keywords={"demonology","warlock"},
description="\nThis guide will walk you through obtaining Cheri as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Cheri |condition hasfollower(403)
step
Congratulations, you now have Cheri as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Choluna",{
keywords={"feral","druid","wild","aggression"},
description="\nThis guide will walk you through obtaining Choluna as a Garrison Follower.",
},[[
step
#include "Garrison_Rokhan"
accept Garrison Campaign: Awakening##36136
|tip This quest is one of the Garrison Campaigns that has a chance to appear every week. If it's not here now check back next week.
step
talk Choluna##88530
Ask her _"What's the situation?"_
Speak to Choluna |q 36136/1 |goto Gorgrond 40.93,43.0
step
kill Duurg##84153 |q 36136/2 |goto Gorgrond 37.8,44.6
step
Follow the path back up |goto Gorgrond/0 41.4,46.8 < 15 |only if walking
talk Choluna##88530
turnin Garrison Campaign: Awakening##36136 |goto Gorgrond 40.9,43.0
accept Primal Fury##36342 |goto Gorgrond 40.9,43.0
step
talk Rokhan##85054
Tell him _"Reporting for battle!"_
Meet Rokhan |q 36342/1 |goto Talador 66.9,9.1
step
Enter Bladefury's Command |goto Talador/0 68.3,5.6 < 15 |walk
kill Gorgorek##85042 |q 36342/2 |goto Talador 69.2,3.2
step
Continue further into Bladefury's Command |goto Talador/0 69.4,4.5 < 15 |walk
kill Azuka Bladefury##85046 |q 36342/3 |goto Talador 69.6,5.8
step
clicknpc Sanketsu##87764
|tip It's a sword stuck in the ground that is dropped after Azuka is killed.
accept Sanketsu, The Burning Blade##37192 |goto Talador/0 69.5,5.8
step
talk Choluna##85334
Ask her _"Where is the rest of the army?"_
Speak to Choluna |q 36342/4 |goto Talador 67.5,7.6
step
Watch the dialogue
Witness Grommash Hellscream's Challenge |q 36342/5 |goto Talador/0 69.5,9.1
step
#include "Garrison_WarmasterZog"
turnin Primal Fury##36342
turnin Sanketsu, The Burning Blade##37192
step
Congratulations, you now have Choluna as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Clever Ashyo",{
keywords={"mistweaver","monk"},
description="\nThis guide will walk you through obtaining Clever Ashyo as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Clever Ashyo |condition hasfollower(434)
step
Congratulations, you now have Clever Ashyo as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Coggeye Aimbot",{
keywords={"marksmanship","hunter"},
description="\nThis guide will walk you through obtaining Coggeye Aimbot as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Coggeye Aimbot |condition hasfollower(280)
step
Congratulations, you now have Coggeye Aimbot as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Croman",{
keywords={"retribution","paladin","massive","strike"},
description="\nThis guide will walk you through obtaining Croman as a Garrison Follower.",
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Cyril Fogus",{
keywords={"blood","death","knight"},
description="\nThis guide will walk you through obtaining Cyril Fogus as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Cyril Fogus |condition hasfollower(229)
step
Congratulations, you now have Cyril Fogus as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dagg",{
keywords={"subtlety","rogue","deadly","minions"},
description="\nThis guide will walk you through obtaining Dagg as a Garrison Follower.",
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
accept Services of Dagg##34733 |goto Frostwall/0 48.2,17.5
step
Congratulations, you now have Dagg as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dark Ranger Velonara",{
keywords={"marksmanship","hunter","powerful","spell","skinning"},
description="\nThis guide will walk you through obtaining Dark Ranger Velonara as a Garrison Follower.",
},[[
step
talk Taskmaster Gornek##81920
|tip You must have the Hearthfire Cavern to gain this Follower. You can switch buildings but it costs 5,000 Gold.
|tip Talk to Taskmaster Gornek to change your Outpost if needed.
turnin Orders, Commander?##35277 |goto Spires of Arak/0 40.19,43.50
accept Befriending the Locals##37326 |goto 40.18,43.49
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37326 |goto Spires of Arak/0 43.90,48.92
step
talk Dusk-Seer Irizzar##83463
accept Not Here, Not Now##37328 |goto 43.8,48.8
step
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37328 |goto 40.2,43.4
step
talk Dark Ranger Velonara##83529
accept Attempted Murder##35907 |goto Spires of Arak/0 40.08,43.28
step
talk Hutou Featherwind##82612
Tell him _"Take me to Shadow's Vigil."_
Travel to Shadow's Vigil |q 35907/1 |goto Spires of Arak/0 39.52,43.36
step
talk Dark Ranger Velonara##83608
turnin Attempted Murder##35907 |goto Spires of Arak/0 52.10,23.56
accept Assassin's Mark##35924 |goto Spires of Arak/0 52.10,23.56
step
clicknpc Vigilant Outcast##83633
Find and search these corpses until you find the Assasin's Mark |q 35924/1 |goto Spires of Arak 54.0,23.1
|tip They can be found all the way down and around this area.
step
talk Dark Ranger Velonara##83772
turnin Assassin's Mark##35924 |goto Spires of Arak 53.5,27.4
accept The Power of Poison##35947 |goto Spires of Arak 53.5,27.4
accept Extrinsic Motivation##36022 |goto Spires of Arak 53.5,27.4
stickystart "shattered_harvesters"
stickystart "shattered_blood_singer"
step
use Vial of Wracking Poison##113587
Kill enemies around this area
|tip As you attack, you will question them to gain information.
Learn the Name and Location of G.V. |q 35947/1 |goto 54.10,28.58
step
kill 4 Shattered Hand Sightless##83749 |q 36022/1 |goto 54.10,28.58
step
label "shattered_harvesters"
kill 3 Shattered Hand Harvester##83706 |q 36022/2 |goto 54.10,28.58
step
label "shattered_blood_singer"
kill Shattered Hand Blood-Singer##83760 |q 36022/3 |goto 54.10,28.58
step
talk Dark Ranger Velonara##83772
turnin The Power of Poison##35947 |goto 53.54,27.49
turnin Extrinsic Motivation##36022 |goto 53.54,27.49
accept Gardul Venomshiv##36028 |goto 53.54,27.49
step
Follow the road |goto Spires of Arak 53.9,29.9 < 20 |only if walking
kill Gardul Venomshiv##83834
Defeat Gardul Venomshiv |q 36028/1 |goto 56.24,33.98
step
talk Dark Ranger Velonara##83899
turnin Gardul Venomshiv##36028 |goto 57.13,34.50
accept We Have Him Now##36047 |goto 57.13,34.50
step
label "poisonbarrels"
kill Shattered Hand Brewer##83940+
click Poison Barrel##233599
|tip They look like wooden barrels with a green ring around the middle of them on the ground around this area.
collect 6 Poison Barrel##113630 |q 36047/2 |goto 58.42,34.51
step
talk Dark Ranger Velonara##83899
turnin We Have Him Now##36047 |goto 57.14,34.49
accept No Time to Waste##36166 |goto 57.14,34.49
step
talk Lunzul##84259
Select _"Administer the antidote to Lunzul."_
Administer the Spiresalve |q 36166/1 |goto Spires of Arak/0 40.1,43.3
step
talk Lunzul##84259
turnin No Time to Waste##36166 |goto Spires of Arak/0 40.1,43.3
step
talk Dark Ranger Velonara##83529
accept Standing United##37276 |goto Spires of Arak/0 40.0,43.2
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Dark Ranger Velonara##119245 |condition itemcount(119245) > 0 or hasfollower(453) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Dark Ranger Velonara##119245
Recruit Dark Ranger Velonara |condition hasfollower(453)
step
label "end"
Congratulations, you now have Dark Ranger Velonara as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dawn Mercurus",{
keywords={"fire","mage"},
description="\nThis guide will walk you through obtaining Dawn Mercurus as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Dawn Mercurus |condition hasfollower(295)
step
Congratulations, you now have Dawn Mercurus as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dawnseeker Rukaryx",{
keywords={"balance","druid","minion","swarms"},
description="\nThis guide will walk you through obtaining Dawnseeker Rukaryx as a Garrison Follower.",
},[[
step
talk Dawn-Seeker Alkset##86382
buy Contract: Dawnseeker Rukaryx##119248 |condition itemcount(119248) > 0 or hasfollower(462) |goto Warspear 65.2,64.6
|tip It costs 5000 Gold and 5000 Apexis Crystals.
step
use Contract: Dawnseeker Rukaryx##119248
Recruit Dawnseeker Rukaryx |condition hasfollower(462)
step
Congratulations, you now have Dawnseeker Rukaryx as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Deneezo Hailstrike",{
keywords={"frost","death","knight"},
description="\nThis guide will walk you through obtaining Deneezo Hailstrike as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Deneezo Hailstrike |condition hasfollower(238)
step
Congratulations, you now have Deneezo Hailstrike as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Eula Clay",{
keywords={"protection","warrior"},
description="\nThis guide will walk you through obtaining Eula Clay as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Eula Clay |condition hasfollower(428)
step
Congratulations, you now have Eula Clay as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Faala",{
keywords={"protection","paladin"},
description="\nThis guide will walk you through obtaining Faala as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Faala |condition hasfollower(333)
step
Congratulations, you now have Faala as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fazerra",{
keywords={"enhancement","shaman"},
description="\nThis guide will walk you through obtaining Fazerra as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Fazerra |condition hasfollower(383)
step
Congratulations, you now have Fazerra as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fen Tao",{
keywords={"fen","tao","mistweaver","monk","magic","debuff","skinning","brew","aficionado"},
description="\nThis guilde will walk you through obtaining Fen Tao as a Garrison Follower.",
},[[
step
talk Fen Tao##91483
Ask him: _"Why are you here?"_
And then: _"Would you like to join our cause?"_
|tip Click the Accept button when prompted.
Recruit Fen Tao |condition hasfollower(467) |goto Warspear/0 46.9,45.2
step
Congratulations, you now have Fen Tao as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fo Sho Knucklebump",{
keywords={"brewmaster","monk"},
description="\nThis guide will walk you through obtaining Fo Sho Knucklebump as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Fo Sho Knucklebump |condition hasfollower(436)
step
Congratulations, you now have Fo Sho Knucklebump as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Glaiveweaver Xuan",{
keywords={"protection","warrior"},
description="\nThis guide will walk you through obtaining Glaiveweaver Xuan as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Glaiveweaver Xuan |condition hasfollower(429)
step
Congratulations, you now have Glaiveweaver Xuan as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Goldmane the Skinner",{
keywords={"assassination","rogue","danger","zones","skinning"},
description="\nThis guide will walk you through obtaining Goldmane the Skinner as a Garrison Follower.",
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Gravewalker Gie",{
keywords={"unholy","death","knight"},
description="\nThis guide will walk you through obtaining Gravewalker Gie as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Gravewalker Gie |condition hasfollower(239)
step
Congratulations, you now have Gravewalker Gie as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Greatmother Geyah",{
keywords={"restoration","shaman","magic","debuff"},
description="\nThis guide will walk you through obtaining Greatmother Geyah as a Garrison Follower.",
},[[
step
Routing to Geyah |next "geyah" |only if not completedq(37563)
Routing to End |next "end" |only if completedq(37563)
step
label "geyah"
In order to recruit this Follower you must choose her during the _The Frostwolves Stand Ready_ quest
|tip This quest appears at the end of the Frostfire Ridge questline.
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto Frostfire Ridge 76.2,55.0
step
label "end"
Congratulations, you now have Greatmother Geyah as a Garrison Follower! |only if hasfollower(186)
You chose Lokra instead, and cannot gain this Follower |only if hasfollower(185)
You chose Kaiel instead, and cannot gain this Follower |only if hasfollower(329)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Gronnstalker Rokash",{
keywords={"marksmanship","hunter","deadly","minions"},
description="\nThis guide will walk you through obtaining Gronnstalker Rokash as a Garrison Follower.",
},[[
step
talk Gronnstalker Rokash##79229
accept Only the Winner##32981 |goto Frostfire Ridge/0 59.4,31.8
step
Run up the big ramp |goto Frostfire Ridge/0 60.9,26.6 < 10 |only if walking
kill Sky-Singer Strag##74598
collect Sky-Singer Strag's Totem##113101 |q 32981/1 |goto Frostfire Ridge/0 62.6,27.6
step
talk Gronnstalker Rokash##79229
turnin Only the Winner##32981 |goto Frostfire Ridge/0 59.4,31.8
accept Defection of Gronnstalker Rokash##35341 |goto Frostfire Ridge/0 59.4,31.8
step
Congratulations, you now have Gronnstalker Rokash as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Hannya",{
keywords={"restribution","paladin"},
description="\nThis guide will walk you through obtaining Hannya as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Hannya |condition hasfollower(340)
step
Congratulations, you now have Hannya as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Haomi",{
keywords={"windwalker","monk","deadly","minions"},
description="\nThis guide will walk you through obtaining Haomi as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Haomi |condition hasfollower(119)
step
Congratulations, you now have Haomi as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Image of Archmage Vargoth",{
keywords={"arcane","mage","powerful","spell"},
description="\nThis guide will walk you through obtaining the Image of Archmage Vargoth as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
Enter Magnarok |goto Frostfire Ridge/0 67.3,33.4 < 30
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Iye",{
keywords={"restoration","druid"},
description="\nThis guide will walk you through obtaining Iye as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Iye |condition hasfollower(266)
step
Congratulations, you now have Iye as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ja'kala",{
keywords={"restoration","druid"},
description="\nThis guide will walk you through obtaining Ja'kala as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Ja'kala |condition hasfollower(267)
step
Congratulations, you now have Ja'kala as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ka'la",{
keywords={"subtlety","rogue","massive","strike","leatherworking"},
description="\nThis guide will walk you through obtaining Ka'la as a Garrison Follower.",
},[[
step
In order to recruit this Follower you must complete the _Gronnlings Abound_ Garrison Mission
#include "Garrison_CommandTable"
Recruit Ka'la |condition hasfollower(153)
step
Congratulations, you now have Ka'la as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kaiel",{
keywords={"protection","paladin"},
description="\nThis guide will walk you through obtaining Kaiel as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kaiel |condition hasfollower(329)
step
Congratulations, you now have Kaiel as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kal'gor the Honorable",{
keywords={"elemental","shaman","minion","swarms"},
description="\nThis guide will walk you through obtaining Kal'gor the Honorable as a Garrison Follower.",
},[[
step
Routing to Kal'gor |next "kalgor" |only if not completedq(37563)
Routing to End |next "end" |only if completedq(37563)
step
label "kalgor"
In order to recruit this Follower you must choose him during the _The Frostwolves Stand Ready_ quest
|tip This quest appears at the end of the Frostfire Ridge questline.
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto Frostfire Ridge 76.2,55.0
step
label "end"
Congratulations, you now have Kal'gor the Honorable as a Garrison Follower! |only if hasfollower(184)
You chose Greatmother Geyah instead, and cannot gain this Follower |only if hasfollower(186)
You chose Lokra instead, and cannot gain this Follower |only if hasfollower(185)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kaluaka",{
keywords={"balance","druid"},
description="\nThis guide will walk you through obtaining Kaluaka as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kaluaka |condition hasfollower(247)
step
Congratulations, you now have Kaluaka as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kana'tin",{
keywords={"windwalker","monk"},
description="\nThis guide will walk you through obtaining Kana'tin as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kana'tin |condition hasfollower(452)
step
Congratulations, you now have Kana'tin as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Karg Bloodfury",{
keywords={"arms","warrior","powerful","spell"},
description="\nThis guide will walk you through obtaining Karg Bloodfury as a Garrison Follower.",
},[[
step
Become Revered with the Frostwolf Orcs |condition rep('Frostwolf Orcs')>=Revered |goto Frostfire Ridge/0 69.8,29.8
|tip This can be achieved by completing quests in Frostfire Ridge or farming kills in Magnarok.
step
talk Beska Redtusk##86036
buy Contract: Karg Bloodfury##119161 |condition itemcount(119161) > 0 or hasfollower(459) |goto Warspear 53.6,62.0
|tip It costs 5,000 Gold.
step
use Contract: Karg Bloodfury##119161
Recruit Karg Bloodfury |condition hasfollower(459)
step
Congratulations, you now have Karg Bloodfury as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Karga Quickshot",{
keywords={"beast","master","hunter"},
description="\nThis guide will walk you through obtaining Karga Quickshot as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Karga Quickshot |condition hasfollower(273)
step
Congratulations, you now have Karga Quickshot as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Karn Steelhoof",{
keywords={"protection","warrior"},
description="\nThis guide will walk you through obtaining Karn Steelhoof as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Karn Steelhoof |condition hasfollower(430)
step
Congratulations, you now have Karn Steelhoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kaz the Shrieker",{
keywords={"elemental","shaman","deadly","minions"},
description="\nThis guide will walk you through obtaining Kaz the Shrieker as a Garrison Follower.",
},[[
step
talk Kaz the Shrieker##74606
|tip You must have the Lumbar Yard to recruit this Follower. You can switch buildings but it costs 5,000 Gold.
accept Mossy Fate##35399 |goto Gorgrond/0 46.6,71.5
accept The Voice of Iyu##35402 |goto 46.6,71.5
talk Penny Clobberbottom##85831 |goto Gorgrond/0 46.2,69.7
|tip Talk to Penny at the location above to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
clicknpc Meka the Face Chewer##82215
|tip Her body is hanging from a vine.
Find Meka the Face Chewer |q 35399/1 |goto Gorgrond/0 47.9,73.0
step
clicknpc Torg Earkeeper##82193
|tip His body is laying on the ground next to a green bush.
Find Torg Earkeeper |q 35399/3 |goto Gorgrond/0 47.3,73.4
step
clicknpc Chag the Noseless##82217
|tip His body is laying on the ground next to a pool of water.
Find Chag the Noseless |q 35399/2 |goto Gorgrond/0 48.2,73.8
step
Follow the path |goto Gorgrond/0 48.9,72.9 < 10 |only if walking
kill Voice of Iyu##81634 |q 35402/1 |goto 49.5,71.7
step
click Enriched Seeds##235129
|tip It's a wooden bowl with seeds in it next to the building that Iyu is in.
accept Super Seeds##35406 |goto Gorgrond/0 49.5,70.9
step
talk Kaz the Shrieker##74606
turnin Mossy Fate##35399 |goto Gorgrond/0 46.6,71.5
turnin The Voice of Iyu##35402 |goto 46.6,71.5
turnin Super Seeds##35406 |goto 46.6,71.5
step
talk Kaz the Shrieker##74606
accept Cutter##35430 |goto Gorgrond/0 46.6,71.5
step
Leave Beastwatch |goto Gorgrond 45.7,70.5 < 20 |walk
Run along the stone path |goto 45.4,74.6 < 20 |only if walking
Follow the path into the opening |goto Gorgrond/0 44.0,79.6 < 20 |only if walking
Go up the hill |goto 43.5,82.7 < 20 |only if walking
talk Cutter##82254
turnin Cutter##35430 |goto 43.7,84.0
accept A Green Ogron?##36482 |goto 43.7,84.0
accept We Burn the Dead##35487 |goto Gorgrond/0 43.7,84.0
stickystart "ST2_LLY"
step
kill Infested Ogron##82062 |q 36482/1 |goto Gorgrond/0 42.8,80.6
step
label "ST2_LLY"
clicknpc Mulching Body##85563
|tip They are all around the area. Check inside of the huts as well.
Burn #6# Bodies |q 35487/1 |goto Gorgrond/0 43.0,78.9
step
Next to you:
talk Cutter##82254
|tip He will be standing next to you as long as you are in Evermorn Springs.
turnin A Green Ogron?##36482 |goto Gorgrond/0 42.7,81.5
turnin We Burn the Dead##35487 |goto Gorgrond/0 42.7,81.5
accept Secrets of the Botani##35536 |goto Gorgrond/0 42.7,81.5
step
talk Kaz the Shrieker##82228
turnin Secrets of the Botani##35536 |goto 42.1,85.9
accept The Life Spring##35434 |goto Gorgrond/0 42.1,85.9
step
Follow the path through the field |goto Gorgrond/0 41.2,84.4 < 20 |only if walking
Enter the watery area |goto Gorgrond/0 39.9,82.1 < 20 |only if walking
kill Utrophis##75094
collect Waters of Utrophis##112905 |q 35434/1 |goto Gorgrond/0 40.6,81.8
step
Go down the path |goto Gorgrond/0 40.2,83.3 < 20 |only if walking
talk Kaz the Shrieker##82228
turnin The Life Spring##35434 |goto 42.1,85.9
step
talk Kaz the Shrieker##82228
accept Thieving Dwarves##36488 |goto Gorgrond/0 42.1,85.9
step
talk Cutter##85601
turnin Thieving Dwarves##36488 |goto Gorgrond/0 46.5,93.6
accept Will of the Genesaur##35509 |goto 46.48,93.57
accept Down the Goren Hole##35507 |goto 46.48,93.57
stickystart "ST4_LLY"
step
Follow the path down |goto Gorgrond/0 48.2,96.1 < 15 |walk
click Will of Genesaur##231961
|tip It's a box shape with two handles and a glowing glass dome on top.
collect Will of the Genesaur##112993 |q 35509/1 |goto Gorgrond/0 48.3,94.2
step
label "ST4_LLY"
kill 7 Acidmouth Breacher##81690 |q 35507/1 |goto Gorgrond/0 48.5,95.5
step
talk Cutter##82334
turnin Will of the Genesaur##35509 |goto Gorgrond/0 48.05,94.15
turnin Down the Goren Hole##35507 |goto Gorgrond/0 48.05,94.15
accept Iyu##35510 |goto Gorgrond/0 48.05,94.15
step
Follow the path up and out |goto Gorgrond/0 48.5,95.8 < 20 |walk
Leave the cave |goto Gorgrond/0 48.3,93.9 < 20 |walk
kill Iyu##78819 |q 35510/1 |goto Gorgrond/0 47.5,92.5
step
talk Draka##82337
turnin Iyu##35510 |goto Gorgrond/0 47.7,93.3
step
talk Kaz the Shrieker##82338
accept Kaz the Shrieker##35511 |goto Gorgrond/0 47.8,93.3
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Kaz the Shrieker##119233 |condition itemcount(119233) > 0 or hasfollower(159) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Kaz the Shrieker##119233
Recruit Kaz the Shrieker |condition hasfollower(159)
step
label "end"
Congratulations, you now have Kaz the Shrieker as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kil'weh",{
keywords={"demonology","warlock"},
description="\nThis guide will walk you through obtaining Kil'weh as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kil'weh |condition hasfollower(402)
step
Congratulations, you now have Kil'weh as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kimzee Pinchwhistle",{
keywords={"combat","rogue","danger","zones","engineering"},
description="\nThis guide will walk you through obtaining Kimzee Pinchwhistle as a Garrison Follower.",
},[[
step
talk Murla Longeye##86614
accept Pinchwhistle Gearworks##36862 |goto Frostwall 46.6,46.2
only if not completedq(35620)
step
#include "Garrison_Flightmaster"
Tell him _"Take me to the Pinchwhistle Gearworks."_
Travel to Pinchwhistle Gearworks |q 36862/1
only if not completedq(35620)
step
Go through the doorway |goto Spires of Arak 61.0,72.5 < 10 |walk
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35620 |goto Spires of Arak 61.48,72.93 |only if haveq(35620)
turnin Pinchwhistle Gearworks##36862 |goto Spires of Arak 61.48,72.93 |only if haveq(36862)
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
keywords={"arms","warrior","danger","zones","mining"},
description="\nThis guide will walk you through obtaining Lantresor of the Blade as a Garrison Follower.",
},[[
step
talk Lantresor of the Blade##80161
accept Meet Me in the Cavern##34866 |goto Nagrand D/0 85.42,54.59
step
Enter the cave  |goto Nagrand D/0 88.0,55.5 < 20 |walk
talk Lantresor of the Blade##80319
turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.9,19.8
accept Challenge of the Masters##34868 |goto Nagrand D/10 44.9,19.8
step
click Burning Blade Sword##231088
|tip The sword in the center of the steel circle.
Free the Blade |q 34868/1 |goto 53.01,68.47
step
kill Packleader Dran'ruk##80326, Sesk##80325, Gorn##80324, Warlord Dharl of the Thrice-Bloodied Bla##80327
Survive the Challenge |q 34868/2 |goto 52.53,67.97
step
click Garrison Blueprints##230946
collect Garrison Blueprints##112020 |q 34868/3 |goto 52.88,68.41
step
talk Foreman Thazz'ril##80140
turnin Challenge of the Masters##34868 |goto Nagrand D/0 82.8,44.2
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34770 |goto Nagrand D/0 82.6,46.6
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
keywords={"restoration","shaman","group","damage","bodyguard"},
description="\nThis guide will walk you through obtaining Leorajh as a Garrison Follower.",
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Lin Tenderpaw",{
keywords={"brewmaster","monk"},
description="\nThis guide will walk you through obtaining Lin Tenderpaw as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Lin Tenderpaw |condition hasfollower(437)
step
Congratulations, you now have Lin Tenderpaw as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Lokra",{
keywords={"enhancement","shaman","danger","zones"},
description="\nThis guide will walk you through obtaining Lokra as a Garrison Follower.",
},[[
step
Routing to Lokra |next "lokra" |only if not completedq(37563)
Routing to End |next "end" |only if completedq(37563)
step
label "lokra"
In order to recruit this Follower you must choose her during the _The Frostwolves Stand Ready_ quest
|tip This quest appears at the end of the Frostfire Ridge questline.
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto Frostfire Ridge 76.2,55.0
step
label "end"
Congratulations, you now have Lokra as a Garrison Follower! |only if hasfollower(185)
You chose Greatmother Geyah instead, and cannot gain this Follower |only if hasfollower(186)
You chose Kaiel instead, and cannot gain this Follower |only if hasfollower(329)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Lonan",{
keywords={"enhancement","shaman"},
description="\nThis guide will walk you through obtaining Lonan as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Lonan |condition hasfollower(388)
step
Congratulations, you now have Lonan as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Lucy Keller",{
keywords={"windwalker","monk"},
description="\nThis guide will walk you through obtaining Lucy Keller as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Lucy Keller |condition hasfollower(450)
step
Congratulations, you now have Lucy Keller as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Magister Krelas",{
keywords={"fire","mage","powerful","spell"},
description="\nThis guide will walk you through obtaining Magister Krelas as a Garrison Follower.",
},[[
step
talk Magister Krelas##80390
|tip You must have the Arcane Sanctum to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept While We're in the Neighborhood##34887 |goto Talador/0 68.2,70.2
accept Orbs of Power##34889 |goto Talador/0 68.2,70.2
talk Foreman Grobash##79176 |goto Talador/0 71.0,29.8
|tip Talk to Foreman Grobash at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
stickystart "runebeads_AS"
step
Cross the bridge |goto Talador/0 69.5,73.9 < 20
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |count 1 |goto 68.18,76.33
step
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |count 2 |goto Talador/0 69.4,79.7
step
Run up the stone steps |goto Talador/0 68.3,79.5 < 20
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |count 3 |goto 69.0,82.0
step
Go up the 2nd set of stone steps |goto Talador/0 67.7,79.4 < 20
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |count 4 |goto Talador/0 67.5,78.0
step
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |count 5 |goto Talador/0 66.0,78.1
step
label "runebeads_AS"
kill Gordunni Warcrier##81764+, Gordunni Basher##79231+, Gordunni Cleaver##79234+
collect 8 Gordunni Runebeads##112088 |q 34887/1 |goto 67.94,80.09
step
Standing next to you:
|tip If you are in Gordal Fortress, he will be next to you.
talk Magister Krelas##80389
turnin While We're in the Neighborhood##34887
turnin Orbs of Power##34889
accept The Final Step##34890
step
Go up the stone steps |goto Talador/0 65.4,80.2 < 20 |only if walking
use Scroll of Mass Teleportation##112542
|tip Use the scroll to summon reinforcements.
kill Witch Lord Morkurk##80335 |q 34890/1 |goto 64.28,81.78
step
click Arcane Nexus##231056
|tip It looks like a glowing stone floating in the center of the golden aura on the ground.
collect Arcane Nexus##112196 |q 34890/2 |goto 64.24,81.80
step
Standing next to you:
|tip If you are in Gordal Fortress, he will be next to you.
talk Magister Krelas##80389
turnin The Final Step##34890
accept Due Cause to Celebrate##34712
step
talk Magister Krelas##80553
turnin Due Cause to Celebrate##34712 |goto 71.17,29.88
accept Joining the Ranks##34949 |goto 71.17,29.88
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Magister Krelas##119243 |condition itemcount(119243) > 0 or hasfollower(154) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Magister Krelas##119243
Recruit Magister Krelas |condition hasfollower(154)
step
label "end"
Congratulations, you now have Magister Krelas as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Maska",{
keywords={"arms","warrior"},
description="\nThis guide will walk you through obtaining Maska as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Maska |condition hasfollower(418)
step
Congratulations, you now have Maska as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Matoclaw",{
keywords={"balance","druid"},
description="\nThis guide will walk you through obtaining Matoclaw as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Matoclaw |condition hasfollower(249)
step
Congratulations, you now have Matoclaw as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Mau'iti",{
keywords={"destruction","warlock"},
description="\nThis guide will walk you through obtaining Mau'iti as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Mau'iti |condition hasfollower(411)
step
Congratulations, you now have Mau'iti as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Meatball",{
keywords={"fury","warrior","timed","battle"},
description="\nThis guide will walk you through obtaining Meatball as a Garrison Follower.",
},[[
stickystart "Brawl"
step
When Goredome begins casting Lumbering Charge, move out of the red circle
Defeat Goredome |condition ZGV:GetReputation(1690).friendRep>=250 |goto Brawl'gar Arena/1 52.8,55.0
step
Avoid Sanoriak's _Firewall_ ability. There is always a safe opening to run through
_Interrupt Flame Buffet_ always
Sanoriak will also cast _Fireball_ and _Pyroblast_. This damage is manageable
Defeat Sanoriak |condition ZGV:GetReputation(1690).friendRep>=500 |goto Brawl'gar Arena/1 52.8,55.0
step
Smash has a _2 minute enrage_ timer
Kill the goblins that Smash carries first
When Smash casts _Shield Waller_, attack him from behind
Melee classes will need cooldowns to mitigate his damage
Smash is succeptable to crowd control abilities. Use this to your advantage
Defeat Smash Hoofstomp |condition ZGV:GetReputation(1690).friendRep>=750 |goto Brawl'gar Arena/1 52.8,55.0
step
_Kill Akama's Feral Spirit wolves_
Akama will gain stacks of _Shadow Strikes_, increasing his damage. Save cooldowns for the last half of the fight
Akama will also cast _Chain Lightning_ and _Thunderstorm_. These abilities are of little concern
Defeat Akama |condition ZGV:GetReputation(1690).friendRep>=1000 |goto Brawl'gar Arena/1 52.8,55.0
step
Dippy has a melee ability called _Peck_. If you are in melee range when the cast is finished, it will kill you
When Dippy takes damage, he is knocked back
You should prioritize _fast attacks_
Melee classes will need to maximize damage during stuns to beat the 2 minute enrage timer
Defeat Dippy |condition ZGV:GetReputation(1690).friendRep>=1250 |goto Brawl'gar Arena/1 52.8,55.0
step
Kirrawk will summon a tornado through Twisting Winds. Lead the tornado and make it hit him
_Interrupt Storm Cloud_ whenever possible
Defeat Kirrawk |condition ZGV:GetReputation(1690).friendRep>=1500 |goto Brawl'gar Arena/1 52.8,55.0
step
Kukala's only source of damage is from high physical damage melee attacks
Melee classes need to utilize defensive cooldowns to survive Kukala's physical damage
Ranged classes need to _snare and kite_ Kukala, being mindful of his _Dash_ speed increase ability
Defeat King Kukala |condition ZGV:GetReputation(1690).friendRep>=1750 |goto Brawl'gar Arena/1 52.8,55.0
step
DPS Fran and Riddoh _evenly_
Move to avoid Fran's _Throw Dynamite_ ability
Riddoh will trap you in a net while Fran places bombs around you. _Move immediately_ to avoid damage
Defeat Fran & Riddoh |condition ZGV:GetReputation(1690).friendRep>=2000 |goto Brawl'gar Arena/1 52.8,55.0
step
As the fight goes on, Blat will make copies of himself. These copies move slow and die when Blat dies
Avoid the copies of Blat and kill him before the copies overwhelm you
Defeat Blat |condition ZGV:GetReputation(1690).friendRep>=2250 |goto Brawl'gar Arena/1 52.8,55.0
step
_Avoid Fire Line_, a line of fire that spawns in front of Vian
_Avoid Fireballs_ spawned by Volatile Flames. More will appear as the fight progresses
_Do not interrupt Lava Burst_. Vian's melee attack does more damage than this ability
Defeat Vian the Voltile |condition ZGV:GetReputation(1690).friendRep>=2500 |goto Brawl'gar Arena/1 52.8,55.0
step
_Keep running_ around Ixx to avoid _Devastating Thrust_
Ixx deals high physical damage. Utilize defensive cooldowns to mitigate this damage
Defeat Ixx |condition ZGV:GetReputation(1690).friendRep>=2750 |goto Brawl'gar Arena/1 52.8,55.0
step
Mazhareen gains increased damage as her health lowers
_Save defensive cooldowns_ for the last half of the fight
Defeat Mazhareen |condition ZGV:GetReputation(1690).friendRep>=3000 |goto Brawl'gar Arena/1 52.8,55.0
step
_Kill Explosive Chickens_
Keep moving to _avoid Electric P.E.C.K._
_Ignore_ the Well Fed Chickens
Defeat Tyson Sanders |condition ZGV:GetReputation(1690).friendRep>=3250 |goto Brawl'gar Arena/1 52.8,55.0
step
Nibbleh is a VERY difficult fight
Melee will need to constantly backpedal and kite him in a circle around the room
Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
Kite Nibbleh and DPS him quickly before his stacks get to high
Defeat Nibbleh |condition ZGV:GetReputation(1690).friendRep>=3500 |goto Brawl'gar Arena/1 52.8,55.0
step
Every time Dominika takes damage, she creates a copy of herself with 1 hit point
These copies, like her, cast _Arcane Barrage_
Periodically, _kill the copies_ she spawns and resume DPS
_Interrupt her_ whenever possible
Defeat Dominika the Illusionist |condition ZGV:GetReputation(1690).friendRep>=3750 |goto Brawl'gar Arena/1 52.8,55.0
step
Meatball has a _60 second enrage_ timer
Whenever damaged, Meatball _drops purple orbs_ which will increase your damage and heal you
Stacking these orbs is the only way to defeat him before the enrage timer
Spend the first _30-45 seconds_
Defeat Meatball |condition ZGV:GetReputation(1690).friendRep>=4000 |goto Brawl'gar Arena/1 52.8,55.0
step
label "Brawl"
To recruit _Meatball_, you must reach _rank 5_ in the Brawler's Guild and defeat him
step
talk Meatball##86152
accept Meatball##36702 |goto Brawl'gar Arena 56.4,75.2
step
Congratulations, you now have Meatball as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Millhouse Manastorm",{
keywords={"arcane","mage","deadly","minions"},
description="\nThis guide will walk you through obtaining Millhouse Manastorm as a Garrison Follower.",
},[[
step
Routing to Tavern |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Routing to End |next "end" |only if default
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
stickystart "Manastorm"
step
#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
|tip He sometimes appears in your Frostwall Tavern.
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
If he does despawn, you will have to wait until the next time he randomly spawns in your Frostwall Tavern
Recruit Millhouse Manastorm |condition hasfollower(455)
step
label "end"
Congratulations, you now have Millhouse Manastorm as a Garrison Follower! |only if completedq(37179)
You must have a Frostwall Tavern to recruit this Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Morketh Bladehowl",{
keywords={"fury","warrior","massive","strike"},
description="\nThis guide will walk you through obtaining Morketh Bladehowl as a Garrison Follower.",
},[[
step
talk Morketh Bladehowl##79356
|tip You must have the Arsenal to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept Gas Guzzlers##34579 |goto Talador 70.90,30.45
talk Foreman Grobash##79176 |goto Talador/0 71.0,29.8
|tip Talk to Foreman Grobash at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Go through the gate |goto Talador/0 71.8,29.2 < 20 |only if walking
Cross the bridge |goto 73.2,26.7 < 20 |only if walking
Enter the mine |goto Talador/0 75.2,22.4 < 20 |walk
Follow the path |goto Talador/0 76.1,19.6 < 20 |walk
kill Glowgullet Shardshedder##80013+, Glowgullet Devourer##79190+
use Goren Gas Extractor##111910
|tip Use the Goren Gas Extractor on their corpses.
Obtain #6# Goren Gas Samples |q 34579/1 |goto Talador/0 77.6,17.7
step
talk Morketh Bladehowl##79356
turnin Gas Guzzlers##34579 |goto 70.90,30.50
accept Going to the Gordunni##34837 |goto 70.89,30.50
step
Cross the river |goto Talador/0 64.4,57.0 < 20 |only if walking
Follow the path |goto 63.4,61.8 < 20 |only if walking
Go up the stairs |goto Talador/0 62.4,65.5 < 20 |only if walking
talk Morketh Bladehowl##80229
turnin Going to the Gordunni##34837 |goto 62.15,69.22
accept Dropping Bombs##34840 |goto 62.14,69.23
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Base Catapult |q 34840/1 |goto 63.59,69.15
step
Run up the path |goto Talador 63.9,69.8 < 20
clicknpc Gordunni Boulderthrower##80428
Destroy the Central Catapult |q 34840/2 |goto Talador/0 65.5,69.0
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Summit Catapult |q 34840/3 |goto Talador/0 66.8,68.1
step
Run up the path |goto Talador 67.5,68.6 < 20 |only if walking
click Grappling Hook and Rope##241659
|tip It looks like a small rope coiled around a tiny wooden post on the ground.
Use the Grappling Hook |q 34840/4 |goto 68.69,69.76
step
talk Morketh Bladehowl##80339
turnin Dropping Bombs##34840 |goto 68.76,70.53
accept Punching Through##34855 |goto 68.76,70.53
accept Prized Repossessions##34858 |goto 68.76,70.53
accept Supply Recovery##34860 |goto 68.76,70.53
stickystart "ironhordeVA"
stickystart "guardianmaceVA"
step
Cross the bridge |goto Talador 69.5,73.7 < 20 |only if walking
Go up the stairs |goto Talador 68.5,79.0 < 10 |only if walking
kill Vizier Vorgorsh##80294 |q 34855/1 |goto 68.53,82.94
|tip He's inside the stone building.
step
Run up the stairs |goto Talador 67.8,79.5 < 10 |only if walking
kill Vizier Zulmork##80292 |q 34855/2 |goto 67.1,77.0
|tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q 34855/3 |goto 66.30,80.94
|tip He's inside the stone building.
step
label "ironhordeVA"
clicknpc Iron Horde Shipment##80957
|tip They look like wooden and metal chests on the ground all around this area.
Obtain #6# Iron Horde Shipment |q 34860/1 |goto 69.13,77.64
step
label "guardianmaceVA"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+, Gordunni Warcrier##81764+
collect 6 Shattrath Guardian Mace##112504 |q 34858/1 |goto 65.99,79.47
step
Next to you:
|tip If you are in Gordal Fortress, he will be next to you.
talk Morketh Bladehowl##80341
turnin Punching Through##34855
turnin Prized Repossessions##34858
turnin Supply Recovery##34860
accept The Lord of the Gordunni##34870
step
Go up the stairs |goto Talador 65.5,80.1 < 10 |only if walking
kill Witch Lord Morkurk##80335 |q 34870/1 |goto 64.07,81.79
use Emergency Rocket Pack##112307
|tip Use the Emergency Rocket Pack when he is almost done casting Astral Annihilation.
collect Fury of the Forge##112308 |q 34870/2 |goto 64.07,81.79
step
talk Morketh Bladehowl##80342
turnin The Lord of the Gordunni##34870 |goto 64.50,81.62
accept The Only Way to Travel##34971 |goto 64.50,81.62
step
talk Morketh Bladehowl##80342
turnin The Only Way to Travel##34971 |goto Talador 71.2,29.8
accept Armor Up##34972 |goto Talador 71.2,29.8
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Morketh Bladehowl##119418 |condition itemcount(119418) > 0 or hasfollower(155) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Morketh Bladehowl##119418
Recruit Morketh Bladehowl |condition hasfollower(155)
step
label "end"
Congratulations, you now have Morketh Bladehowl as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Motina",{
keywords={"arms","warrior"},
description="\nThis guide will walk you through obtaining Motina as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Motina |condition hasfollower(417)
step
Congratulations, you now have Motina as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Muaha Stonehide",{
keywords={"guardian","druid"},
description="\nThis guide will walk you through obtaining Muaha Stonehide as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Muaha Stonehide |condition hasfollower(257)
step
Congratulations, you now have Muaha Stonehide as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Mulverick",{
keywords={"survival","hunter","powerful","spell","alchemy"},
description="\nThis guide will walk you through obtaining Mulverick as a Garrison Follower.",
},[[
step
talk Guse##78222
|tip You need to conquer Bladespire Citadel to access this quest. |only if not completedq(33657)
|tip Use the Frostfire Ridge Leveling guide to accomplish this. |only if not completedq(33657)
accept Slavery and Strife##33119 |goto Frostfire Ridge/1 20.1,52.8
step
click Ball and Chain##207079
Free #5# Frostwolf Slaves |q 33119/1 |goto 26.8,41.3
step
Go up the hill |goto Frostfire Ridge 28.8,42.2 < 20 |only if walking
Find Mulverick |q 33119/2 |goto 30.8,41.5
step
talk Mulverick##72890
turnin Slavery and Strife##33119 |goto Frostfire Ridge 30.8,41.5
accept Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
step
Enter the tunnel |goto Frostfire Ridge 29.7,41.6 < 20 |walk
kill Sootstained Taskmaster##76706
collect Mulverick's Axe##107066  |q 33483/1 |goto Frostfire Ridge/4 58.4,56.1
step
Go down the path |goto Frostfire Ridge/4 49.1,58.0 < 20 |only if walking
Continue through the path |goto 37.2,30.3 < 20 |only if walking
kill Slavemaster Turgall##72873
collect Turgall's Key##107075  |q 33483/2 |goto Frostfire Ridge/4 49.8,34.2
step
Jump down the ledge |goto Frostfire Ridge/4 53.4,38.7 < 20 |only if walking
Follow the path out of the cave |goto Frostfire Ridge/4 66.0,75.5 < 20 |only if walking
Unlock Mulverick's Cage |q 33483/3 |goto Frostfire Ridge 30.8,41.5
step
talk Mulverick##79047
turnin Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
accept Mulverick's Offer of Service##34732 |goto Frostfire Ridge 30.8,41.5
step
Congratulations, you now have Mulverick as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Nat Pagle",{
keywords={"survival","hunter","deadly","minions","swamp","fishing","shack"},
description="\nThis guide will walk you through obtaining Nat Pagle as a Garrison Follower.",
},[[
step
You must have a _level 3 Fishing Shack_ in order to recruit Nat Pagle!
|tip Use the Garrison Buildings guides to accomplish this.
confirm |only if not hasbuilding(135,3)
step
talk Rak'jin##79971
accept Luring Nat##36612 |goto Frostwall/0 37.6,70.2
step
Fish in the lava here |cast Fishing##131474
collect 1 Molten Catfish##116754 |q 36612/1 |goto Frostfire Ridge/0 51.3,59.3
step
talk Rak'jin##79971
turnin Luring Nat##36612 |goto Frostwall/0 37.6,70.2
accept Finding Nat Pagle##36608 |goto Frostwall/0 37.6,70.2
step
talk Nat Pagle##63721
turnin Finding Nat Pagle##36608 |goto Krasarang Wilds 68.4,43.4
accept The Great Angler Returns##36609 |goto Krasarang Wilds 68.4,43.4
step
talk Rak'jin##79971
turnin The Great Angler Returns##36609 |goto Frostwall/0 37.6,70.2
step
talk Nat Pagle##85984
accept A True Draenor Angler##36611 |goto Frostwall/0 37.6,70.2
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
turnin A True Draenor Angler##36611 |goto Frostwall/0 37.6,70.2
accept An Angler on Our Team##36616 |goto Frostwall/0 37.6,70.2
step
Congratulations, you now have Nat Pagle as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Nuan Skydream",{
keywords={"windwalker","monk"},
description="\nThis guide will walk you through obtaining Nuan Skydream as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Nuan Skydream |condition hasfollower(451)
step
Congratulations, you now have Nuan Skydream as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Olin Umberhide",{
keywords={"protection","warrior","wild","aggression","jewelcrafting"},
description="\nThis guide will walk you through obtaining Olin Umberhide as a Garrison Follower.",
},[[
step
#include "Garrison_WarmasterZog"
accept Winds of Change##34462
step
Enter the cave |goto Frostfire Ridge 56.6,62.5 < 20 |walk
clicknpc Olin Umberhide##80577
Rescue Olin Umberhide |q 34462/1 |goto Frostfire Ridge 57.3,62.9
step
#include "Garrison_WarmasterZog"
turnin Winds of Change##34462
step
Congratulations, you now have Olin Umberhide as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Penny Clobberbottom",{
keywords={"survival","hunter","massive","strike"},
description="\nThis guide will walk you through obtaining Penny Clobberbottom as a Garrison Follower.",
},[[
step
talk Penny Clobberbottom##85077
|tip You must have the Lumber Yard to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept Tangleheart##35707 |goto Gorgrond 46.4,69.7
talk Penny Clobberbottom##85831 |goto Gorgrond/0 46.2,69.7
|tip Talk to Penny at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Run down the small hill |goto Gorgrond 59.3,53.6 < 20 |only if walking
Continue down the path |goto 59.6,57.2 < 20 |only if walking
Make your way through the Crimson Fen |goto Gorgrond 58.4,62.7 < 20 |only if walking
Continue along the path |goto 56.1,63.4 < 20 |only if walking
Climb up the hill |goto 54.3,67.7 < 20 |only if walking
Go up the hill |goto 55.5,71.1 < 20 |only if walking
talk Penny Clobberbottom##82574
turnin Tangleheart##35707 |goto Gorgrond/0 55.9,71.5
accept Growing Wood##35506 |goto Gorgrond/0 55.9,71.5
step
talk Thuldren##84811
accept Lost Lumberjack##35505 |goto Gorgrond/0 55.9,71.6
step
talk Frenna##82569
turnin Lost Lumberjack##35505 |goto Gorgrond/0 57.1,71.9
accept Chapter I: Plant Food##35508 |goto Gorgrond/0 57.1,71.9
accept Chapter II: The Harvest##35527 |goto 57.1,71.9
accept Chapter III: Ritual of the Charred##35524 |goto 57.1,71.9
stickystart "growthsap_LLY"
stickystart "pollenpod_LLY"
stickystart "ST5_LLY"
step
kill Ontogen the Harvester##82372 |q 35527/1 |goto Gorgrond/0 59.9,71.1
step
label "growthsap_LLY"
kill Tangled Sapling##82437, Greenbough Ancient##82360, Tangleheart Cultivator##82322
collect 100 Ancient Growth Sap##113136 |q 35506/1 |goto Gorgrond/0 60.2,67.5
step
label "pollenpod_LLY"
click Pollen Pod##232491
|tip Red plants with yellow glowing centers.
Destroy #8# Pollen Pods |q 35508/1 |goto Gorgrond/0 60.2,67.5
step
label "ST5_LLY"
kill 4 Greenbough Ancient##82360 |q 35524/1 |goto Gorgrond/0 60.2,67.5
step
talk Penny Clobberbottom##82574
turnin Growing Wood##35506 |goto 60.71,64.78
turnin Chapter I: Plant Food##35508 |goto 60.71,64.78
turnin Chapter II: The Harvest##35527 |goto 60.71,64.78
turnin Chapter III: Ritual of the Charred##35524 |goto 60.71,64.78
step
click Dark Iron Mole Machine##237721 |goto Gorgrond/0 60.7,64.8 < 5
Ride the Dark Iron Mole Machine |invehicle |c |q 36812
step
Arrive at Beastwatch |goto Gorgrond/0 46.4,69.8 < 50 |noway |q 36812
step
talk Penny Clobberbottom##85077
accept Penny For Your Thoughts##36812 |goto 46.36,69.64
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Penny Clobberbottom##119257 |condition itemcount(119257) > 0 or hasfollower(211) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Penny Clobberbottom##119257
Recruit Penny Clobberbottom |condition hasfollower(211)
step
label "end"
Congratulations, you now have Penny Clobberbottom as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Phaedra Heartbinder",{
keywords={"holy","priest"},
description="\nThis guide will walk you through obtaining Phaedra Heartbinder as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Phaedra Heartbinder |condition hasfollower(347)
step
Congratulations, you now have Phaedra Heartbinder as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Phylarch the Evergreen",{
keywords={"restoration","druid","deadly","minions","swamp","lumber","mill"},
description="\nThis guide will walk you through obtaining Phylarch the Evergreen as a Garrison Follower.",
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Pikake",{
keywords={"discipline","priest"},
description="\nThis guide will walk you through obtaining Pikake as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Pikake |condition hasfollower(344)
step
Congratulations, you now have Pikake as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Pleasure-Bot 8000",{
keywords={"fury","warrior","timed","battle","tailoring"},
description="\nThis guide will walk you through obtaining Pleasure-Bot 8000 as a Garrison Follower.",
},[[
step
talk Ziz Fizziks##79870
accept Clear!##34751 |goto Talador 64.2,47.8
step
kill Lakebottom Zapper##79636+
|tip These are found underwater around this small island.
collect 6 Zapper Sac##111637 |q 34751/1 |goto Talador 63.6,44.8
step
talk Ziz Fizziks##79870
turnin Clear!##34751 |goto Talador 64.2,47.8
step
talk Pleasure-Bot 8000##79853
accept New Owner##35238 |goto Talador 64.2,47.8
step
Congratulations, you now have Pleasure-Bot 8000 as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Professor Felblast",{
keywords={"destruction","warlock","timed","battle"},
description="\nThis guide will walk you through obtaining Professor Felblast as a Garrison Follower.",
},[[
step
Reach Revered with the _Steamwheedle Preservation Society_ |condition rep('Steamwheedle Preservation Society')>= Revered
|tip This is achieved by looting chests and killing rare spawns in Nagrand. Use the Reputation guide to accomplish this.
step
talk Mimi Wizzlebub##88493
buy Contract: Professor Felblast##119165 |condition itemcount(119165) > 0 or hasfollower(460) |goto Warspear 54.2,60.6
|tip It costs 5,000 Gold.
step
use Contract: Professor Felblast##119165
Recruit Professor Felblast |condition hasfollower(460)
step
Congratulations, you now have Professor Felblast as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rizei Stormhoof",{
keywords={"enhancement","shaman","danger","zones"},
description="\nThis guide will walk you through obtaining Rizei Stormhoof as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Rizei Stormhoof |condition hasfollower(110)
step
Congratulations, you now have Rizei Stormhoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Robin Fredericksen",{
keywords={"discipline","priest"},
description="\nThis guide will walk you through obtaining Robin Fredericksen as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Robin Fredericksen |condition hasfollower(341)
step
Congratulations, you now have Robin Fredericksen as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ruthia the Unchaste",{
keywords={"holy","priest"},
description="\nThis guide will walk you through obtaining Ruthia the Unchaste as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Ruthia the Unchaste |condition hasfollower(348)
step
Congratulations, you now have Ruthia the Unchaste as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Sahale",{
keywords={"holy","paladin"},
description="\nThis guide will walk you through obtaining Sahale as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Sahale |condition hasfollower(328)
step
Congratulations, you now have Sahale as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Seleria Dawncaller",{
keywords={"holy","paladin","group","damage"},
description="\nThis guide will walk you through obtaining Seleria Dawncaller as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Seleria Dawncaller |condition hasfollower(107)
step
Congratulations, you now have Seleria Dawncaller as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Shadow Hunter Rala",{
keywords={"marksmanship","hunter","timed","battle","herbalism"},
description="\nThis guide will walk you through obtaining Shadow Hunter Rala as a Garrison Follower.",
},[[
step
talk Shadow Hunter Mala##78209
accept Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
accept Lurkers##34344 |goto 52.6,40.4
accept Poulticide##34345 |goto 52.6,40.4
stickystart "new1"
stickystart "new2"
step
click Frostblossom+
|tip Blue plants around the area.
collect 10 Frostbloom Leaves##110227 |q 34345/1 |goto Frostfire Ridge/0 53.9,39.1
Click here to find more around this area |goto 54.7,39.4
step
label "new1"
kill Ice Fury##78214+
collect 3 Frostshard##110228 |q 34346/1 |goto Frostfire Ridge/0 57.8,38.5
step
label "new2"
kill Snow Lurker##78213+, Ice Lurker##78448+
collect 8 Dose of Lurker Venom##110226 |q 34344/1 |goto Frostfire Ridge/0 58.9,35.4
step
talk Shadow Hunter Mala##78209
turnin Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
turnin Lurkers##34344 |goto 52.6,40.4
turnin Poulticide##34345 |goto 52.6,40.4
accept The Real Prey##34348 |goto 52.6,40.4
step
Find Iceblister Den |q 34348/1 |goto Frostfire Ridge/0 54.0,29.3
step
use Vial of "Ogron Be-Gone"##110270
|tip He's an elite, so you will need to use Vial of "Ogron Be-Gone" on him to weaken him.
kill Grosh the Mighty##78230 |q 34348/2 |goto Frostfire Ridge/0 52.0,29.3
step
talk Shadow Hunter Rala##78208
turnin The Real Prey##34348 |goto Frostfire Ridge/0 52.6,40.4
accept Oath of Shadow Hunter Rala##34731 |goto 52.6,40.4
step
Congratulations, you now have Shadow Hunter Rala as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Skalliz Skullslice",{
keywords={"combat","rogue"},
description="\nThis guide will walk you through obtaining Skalliz Skullslice as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Skalliz Skullslice |condition hasfollower(370)
step
Congratulations, you now have Skalliz Skullslice as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Soulare of Andorhal",{
keywords={"protection","paladin","wild","aggression"},
description="\nThis guide will walk you through obtaining Soulare of Andorhal as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Soulare of Andorhal |condition hasfollower(172)
step
Congratulations, you now have Soulare of Andorhal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Soulbinder Tuulani",{
keywords={"shadow","priest","group","damage"},
description="\nThis guide will walk you through obtaining Soulbinder Tuulani as a Garrison Follower.",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto Talador/0 71.8,29.6
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto Talador/0 55.50,67.656
accept Holding the Line##34418 |goto Talador/0 55.50,67.65
step
talk Mehlar Dawnblade##78577
accept Powering the Defenses##35249 |goto 55.56,67.04
step
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##35249 |goto Talador/13 68.38,19.35
accept We Must Construct Additional Pylons##34351 |goto 68.38,19.35
step
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto 52.24,38.94
stickystart "ST10"
step
click Arkonite Pylon##229034
|tip It looks like a large floating slab of stone.
collect Arkonite Pylon##110271 |q 34351/2 |goto 31.83,48.35
step
Go down the stairs |goto Talador/13 54.7,42.3 < 20 |only if walking
Investigate the Ritual |q 33530/1 |goto 58.96,55.01
step
kill Tagar Spinebreaker##76745 |q 33530/2 |goto Talador/13 64.1,68.6
step
label "ST10"
click Arkonite Crystal##229422
|tip They look like big purple crystals all over the ground around this area.
collect 6 Arkonite Crystal##110253 |q 34351/1 |goto 37.82,46.57
stickystart "ST11"
stickystart "ST12"
step
kill O'mogg Blackheart##76876 |q 33920/1 |goto Talador/0 56.5,62.8
step
click Karab'uun##229269
|tip It's a big pink crystal suspended in chains.
Recover Karab'uun |q 33920/2 |goto 56.68,62.49
step
label "ST11"
click Burning Resonator##229139
|tip They look like green glowing crystals floating above spiked altars.
Destroy the Burning Resonators |q 33917/1 |goto Talador/0 55.1,62.3
step
label "ST12"
kill Legion Assailant##78455+, Abyssal Invader##78458+, Burning Hunter##78457+, Shadow Council Pyromancer##78202+
Slay #15# Demons |q 34418/1 |goto Talador/0 56.1,65.2
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.66,65.87
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.50,67.13
step
talk Lady Liadrin##75121
turnin Nightmare in the Tomb##33530 |goto 55.48,67.67
turnin Holding the Line##34418 |goto 55.48,67.67
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.11,67.40
step
talk Lady Liadrin##75121
accept Sunsworn Camp##34451 |goto 55.49,67.66
step
Follow the path |goto 59.5,68.9 < 20 |only if walking
talk Lady Liadrin##75246
turnin Sunsworn Camp##34451 |goto 61.00,72.54
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33970 |goto 60.93,72.46
step
talk Soulbinder Tuulani##78028
accept Antivenin##33971 |goto 60.90,72.53
step
talk Mehlar Dawnblade##75249
accept Vile Defilers##33972 |goto 60.52,72.39
stickystart "ST13"
stickystart "ST14"
step
Cross the bridge |goto 59.3,77.6 < 20 |only if walking
Follow the path back |goto Talador/0 60.4,82.1 < 20 |only if walking
Enter the cave |goto 61.3,84.2 < 10 |walk
kill Xanatos the Defiler##75294 |q 33970/1 |goto Talador/0 65.6,86.8
step
click Sha'tari##229596
|tip The floating pink crystal with a shield around it.
collect Sha'tari##110683 |q 33970/2 |goto 65.75,86.87
step
label "ST13"
kill Insidious Defiler##76969
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q 33972/1 |goto 64.03,85.56
step
label "ST14"
kill Deathweb Crawler##75273+, Deathweb Egg Tender##76947+
collect 9 Deathweb Fang##109744 |q 33971/1 |goto 59.37,79.02
step
Cross the bridge |goto Talador/0 59.3,77.3 < 20 |only if walking
talk Mehlar Dawnblade##75249
turnin Vile Defilers##33972 |goto 60.52,72.40
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33971 |goto 60.91,72.54
turnin Into the Hollow##33970 |goto 60.92,72.45
step
talk Lady Liadrin##75246
accept Scheduled Pickup##34242 |goto 61.00,72.54
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34242 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
Continue up the stairs |goto 47.1,90.0 < 20 |only if walking
Enter the building |goto 45.1,90.5 < 20 |walk
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.49
accept The Final Piece##33976 |goto 44.83,90.46
step
kill Vorpil Ribcleaver##77051 |q 33976/1 |goto Talador/0 44.5,90.9
step
click Auch'naaru##229654
|tip It looks like a big floating pink crystal with a shield around it.
collect Auch'naaru##109197 |q 33976/2 |goto 44.69,90.73
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.84,90.49
accept Changing the Tide##34326 |goto 44.85,90.50
step
Follow the path down |goto 44.7,87.5 < 20 |only if walking
Go up the hill |goto 42.5,80.0 < 20 |only if walking
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.93
accept Desperate Measures##34092 |goto 43.43,75.95
step
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q 34092/1 |goto 39.43,83.52
step
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q 34092/2 |goto 42.69,84.87
step
clicknpc Altar of Ango'rosh##77393
|tip Be sure to not move as the ritual channels.
Perform the Ritual |q 34092/3 |goto 41.25,82.46
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.44,75.93
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto Talador/0 42.93,76.10
step
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto Talador/0 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
Use the Demonic Gateway |q 34564/1 |goto Talador/0 30.94,73.19
step
kill Mongrethod##77579 |q 34564/2
step
_Go to the North side_ of the room
clicknpc Demonic Gateway##77571
Use the Demonic Gateway |q 34564/3
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto Talador/0 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
Congratulations, you now have Soulbinder Tuulani as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Spirit of Bony Xuk",{
keywords={"subtlety","rogue","deadly","minions"},
description="\nThis guide will walk you through obtaining Spirit of Bony Xuk as a Garrison Follower.",
},[[
step
talk Durotan##74594
|tip You must have the Sparring Arena to gain this Follower. You can switch buildings but it costs 5,000 Gold.
accept Rage and Wisdom##35880 |goto Gorgrond/0 46.1,70.2
talk Penny Clobberbottom##85831 |goto Gorgrond/0 46.2,69.7
|tip Talk to Penny at the above location to change your Outpost if needed.
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
step
Travel along the cobblestone path |goto Gorgrond/0 44.5,70.9 < 30 |only if walking
talk Bony Xuk##81202
turnin Rage and Wisdom##35880 |goto 43.55,65.03
accept A Harsh Reminder##35248 |goto 43.55,65.03
accept Seedbearers of Bad News##35035 |goto 43.55,65.03
stickystart "rocketthrower"
step
clicknpc Ancient Seedbearer##82392
|tip They look like dead trees laying on the ground around this area.
Burn #5# Ancient Seedbearers |q 35035/1 |goto Gorgrond/0 44.1,63.3
step
label "rocketthrower"
kill Gronn Rockthrower##80689+, Goren Gouger##80690+, Gronnling Bonebreaker##80685+
Slay #8# Denizens of the Wasteland |q 35248/1 |goto 43.64,63.76
step
talk Bony Xuk##81202
turnin A Harsh Reminder##35248 |goto 43.57,65.01
turnin Seedbearers of Bad News##35035 |goto 43.57,65.01
accept We Have Company##35025 |goto 43.57,65.01
step
clicknpc Dying Beast##81056
Select "_Release the creature from its chains._"
Investigate the Iron Horde Camp |q 35025/1 |goto 44.29,61.64
step
talk Rexxar##82832
turnin We Have Company##35025 |goto 44.29,61.64
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
accept Is This One of Yours?##35036 |goto 46.03,54.75
step
talk Rexxar##83569
Tell him _"This is one of my allies."_
Vouch For Bony Xuk |q 35036/1 |goto 46.03,54.75
step
talk Bony Xuk##84743
turnin Is This One of Yours?##35036 |goto 46.20,55.09
accept What the Bony Xuk?##35038 |goto 46.20,55.09
accept Xuk Me, Right?##35202 |goto 46.20,55.09
step
talk Rexxar##80856
accept Bad at Breaking##35037 |goto 46.03,54.75
accept Nisha's Vengeance##35934 |goto 46.03,54.75
stickystart "gromkargrunts"
step
kill Mangled Boulderbreaker##85988 |q 35037/1 |goto 48.02,54.36
step
Run up the hill |goto Gorgrond 47.8,53.0 < 20 |only if walking
Enter the camp up on the hill |goto Gorgrond 48.2,51.8 < 20 |walk
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
collect 9 Goren Shell##112786 |q 35202/1 |goto 45.23,52.39
step
label "gorencrystals"
clicknpc Longtooth Gorger##83489+
|tip They look like dead bodies on the ground around this area.
collect 25 Goren Crystal##112911 |q 35038/1 |goto 45.23,52.39
step
Run up the path |goto Gorgrond 45.0,55.3 < 20 |only if walking
talk Rexxar##80856
turnin Bad at Breaking##35037 |goto 46.03,54.75
turnin Nisha's Vengeance##35934 |goto 46.03,54.75
turnin The Gronn Strategy##35925 |goto 46.03,54.75
step
talk Bony Xuk##84743
turnin What the Bony Xuk?##35038 |goto 46.20,55.09
turnin Xuk Me, Right?##35202 |goto 46.20,55.09
accept Xuk It!##35041 |goto 46.20,55.09
step
use Goren Disguise##112958
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the First Tunnel Leads |q 35041/1 |goto 46.87,55.37
step
clicknpc Bluff Rylak##86022
|tip It looks like a large two-headed winged creature laying on the ground.
Consume the Rylak |q 35041/2 |goto Gorgrond 45.8,50.4
step
use Goren Disguise##112958
|tip Make sure your Goren Disguise is still active.
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the Second Tunnel Leads |q 35041/3 |goto Gorgrond/0 45.8,50.4
See Where the Third Tunnel Leads |q 35041/4 |goto Gorgrond/0 45.8,50.4
step
use Goren Disguise##112958
|tip Make sure your Goren Disguise is still active.
clicknpc Grom'kar Messenger##84503
|tip It looks like a dead brown orc laying on the ground.
collect Grom'kar Dispatch##114963 |q 35041/5 |goto 43.16,42.29
step
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
Take the Tunnel Back to Breaker's Crown |q 35041/6 |goto 43.04,42.49
step
talk Rexxar##80856
turnin Xuk It!##35041 |goto Gorgrond/0 46.0,54.7
step
talk Bony Xuk##84748
accept Zero Xuks Given##35247 |goto Gorgrond/0 43.9,48.9
step
talk Bony Xuk##84748
Tell him _"You may commune with Gro the Uncreator."_
Watch the cutscene
Speak to Bony Xuk |q 35247/1 |goto Gorgrond/0 43.9,48.9
step
talk Spirit of Bony Xuk##85980
turnin Zero Xuks Given##35247 |goto Gorgrond/0 44.1,48.8
accept accept 36832 |goto Gorgrond/0 44.1,48.8
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Spirit of Bony Xuk##119253 |condition itemcount(119253) > 0 or hasfollower(212) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Spirit of Bony Xuk##119253
Recruit Spirit of Bony Xuk |condition hasfollower(212)
step
label "end"
Congratulations, you now have Spirit of Bony Xuk as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Su-Lai Snowpetal",{
keywords={"mistweaver","monk"},
description="\nThis guide will walk you through obtaining Su-Lai Snowpetal as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Su-Lai Snowpetal |condition hasfollower(120)
step
Congratulations, you now have Su-Lai Snowpetal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Taela Shatterborne",{
keywords={"frost","mage"},
description="\nThis guide will walk you through obtaining Taela Shatterborne as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Taela Shatterborne |condition hasfollower(304)
step
Congratulations, you now have Taela Shatterborne as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Tak'moa",{
keywords={"holy","priest"},
description="\nThis guide will walk you through obtaining Tak'moa as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Tak'moa |condition hasfollower(351)
step
Congratulations, you now have Tak'moa as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Talon Guard Kurekk",{
keywords={"arms","warrior","minion","swarms"},
description="\nThis guide will walk you through obtaining Talon Guard Kurekk as a Garrison Follower.",
},[[
step
Become Exalted with the Arakkoa Outcasts |condition rep('Arakkoa Outcasts') >= Exalted |goto Spires of Arak/0 73.4,42.4
|tip This can be accomplished by completing quests in Spires of Arak and farming reputation in Lost Veil Anzu.
step
achieve 8926/9
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
keywords={"shadow","priest","magic","debuff","bodyguard"},
description="\nThis guide will walk you through obtaining Talonpriest Ishaal as a Garrison Follower.",
},[[
step
To recruit Talonpriest Ishaal, you must complete the _Between Arak and a Hard Place_ achievement
|tip This requires you to complete all of the major story questlines in Spires of Arak.
|tip Use the Loremaster or Leveling guide to accomplish this.
achieve 8926
step
talk Talonpriest Ishaal##83959
accept Talonpriest Ishaal##37141 |goto Spires of Arak 46.4,46.6
step
Congratulations, you now have Talonpriest Ishaal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Tama Skyhoof",{
keywords={"balance","druid"},
description="\nThis guide will walk you through obtaining Tama Skyhoof as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Tama Skyhoof |condition hasfollower(250)
step
Congratulations, you now have Tama Skyhoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Toega",{
keywords={"mistweaver","monk"},
description="\nThis guide will walk you through obtaining Toega as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Toega |condition hasfollower(446)
step
Congratulations, you now have Toega as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Tormmok",{
keywords={"arms","warrior","wild","aggression","bodyguard"},
description="\nThis guide will walk you through obtaining Tormmok as a Garrison Follower.",
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Torwa Rimeheart",{
keywords={"frost","death","knight"},
description="\nThis guide will walk you through obtaining Torwa Rimeheart as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Torwa Rimeheart |condition hasfollower(237)
step
Congratulations, you now have Torwa Rimeheart as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ulna Thresher",{
keywords={"holy","priest","magic","debuff"},
description="\nThis guide will walk you through obtaining Ulna Thresher as a Garrison Follower.",
},[[
step
In order to recruit this Follower you must complete the _Stonefury Rescue_ Garrison Mission
#include "Garrison_CommandTable"
Recruit Ulna Thresher |condition hasfollower(463)
_Or_
Click to Purchase this Follower with Gold |confirm |next "buy"
|next "end"
step
label "buy"
talk Nalya Battlehorn##88635
buy Contract: Ulna Thresher##114825 |condition itemcount(114825) > 0 or hasfollower(463) |goto Frostwall/0 40.4,51.1
|tip It costs 10 Gold.
step
use Contract: Ulna Thresher##114825
Recruit Ulna Thresher |condition hasfollower(463)
step
label "end"
Congratulations, you now have Ulna Thresher as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Unkala Stormgrinder",{
keywords={"elemental","shaman"},
description="\nThis guide will walk you through obtaining Unkala Stormgrinder as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Unkala Stormgrinder |condition hasfollower(382)
step
Congratulations, you now have Unkala Stormgrinder as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Utona Wolfeye",{
keywords={"restoration","shaman"},
description="\nThis guide will walk you through obtaining Utona Wolfeye as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Utona Wolfeye |condition hasfollower(393)
step
Congratulations, you now have Utona Wolfeye as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Vella A'nar",{
keywords={"fire","mage","deadly","minions"},
description="\nThis guide will walk you through obtaining Vella A'nar as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Vella A'nar |condition hasfollower(90)
step
Congratulations, you now have Vella A'nar as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Vivianne",{
keywords={"fire","mage","minion","swarms","bodyguard"},
description="\nThis guide will walk you through obtaining Vivianne as a Garrison Follower.",
},[[
step
#include "Garrison_Gazlowe"
accept Ashran Appearance##36706
step
#include "Garrison_Flightmaster"
Tell him, _"Take me to Ashran"_ |goto Warspear/0 43.9,34.5 < 20 |c
only if not completedq(36706)
step
talk Stomphoof##86315
turnin Ashran Appearance##36706 |goto Warspear/0 45.5,34.6
accept Warspear Welcome##36707 |goto Warspear/0 45.5,34.6
step
talk Lieutenant Kragil##86312
turnin Warspear Welcome##36707 |goto Warspear/0 44.38,45.21
accept Inspiring Ashran##36708 |goto 44.38,45.21
step
talk Narnin Dawnglow##86307
Speak With Narnin Dawnglow |q 36708/1 |goto Warspear/0 44.9,43.3
step
talk Zarjhin##86318
Speak With Zarjhin |q 36708/2 |goto Warspear/0 58.8,51.7
step
talk Beska Redtusk##86036
Speak With Beska Redtusk |q 36708/3 |goto Warspear/0 53.9,62.4
step
talk Lieutenant Kragil##86312
turnin Inspiring Ashran##36708 |goto Warspear/0 44.38,45.21
accept Burning Beauty##36709 |goto Warspear/0 44.38,45.21
step
talk Vivianne##81765
turnin Burning Beauty##36709 |goto Warspear/0 61.98,23.13
accept The Dark Lady's Gift##35243 |goto Warspear/0 61.98,23.13
step
Congratulations, you now have Vivianne as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Vol'motu",{
keywords={"mistweaver","monk"},
description="\nThis guide will walk you through obtaining Vol'motu as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Vol'motu |condition hasfollower(444)
step
Congratulations, you now have Vol'motu as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Walsh Atkins",{
keywords={"protection","warrior"},
description="\nThis guide will walk you through obtaining Walsh Atkins as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Walsh Atkins |condition hasfollower(425)
step
Congratulations, you now have Walsh Atkins as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Weaponsmith Na'Shra",{
keywords={"arms","warrior","timed","battle","blacksmithing"},
description="\nThis guide will walk you through obtaining Weaponsmith Na'Shra as a Garrison Follower.",
},[[
step
talk Initiate Na'Shra##74977
|tip Aid Weaponsmith Na'Shra by killing any mobs around him that attack in waves.
accept Smeltcraft##33838 |goto Frostfire Ridge/0 65.0,39.5
step
Head north through the small pass |goto Frostfire Ridge/0 64.6,38.4 < 15 |only if walking
Enter the cave |goto 65.8,37.0 < 10 |walk
click Fomic Ore Deposit##226872
collect 20 Fomic Ore##108492 |q 33838/1 |goto 66.8,37.4
step
talk Initiate Na'Shra##74977
turnin Smeltcraft##33838 |goto Frostfire Ridge/0 65.0,39.5
step
talk Weaponsmith Na'Shra##76452
accept Blood Oath of Na'Shra##34729 |goto Frostfire Ridge/0 64.7,39.8
step
Congratulations, you now have Weaponsmith Na'Shra as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Xen Barleystrike",{
keywords={"brewmaster","monk"},
description="\nThis guide will walk you through obtaining Xen Barleystrike as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Xen Barleystrike |condition hasfollower(440)
step
Congratulations, you now have Xen Barleystrike as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Yu'un Tigersbite",{
keywords={"brewmaster","monk"},
description="\nThis guide will walk you through obtaining Yu'un Tigersbite as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Yu'un Tigersbite |condition hasfollower(439)
step
Congratulations, you now have Yu'un Tigersbite as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Zen'taki",{
keywords={"feral","druid"},
description="\nThis guide will walk you through obtaining Zen'taki as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Zen'taki |condition hasfollower(254)
step
Congratulations, you now have Zen'taki as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Zen'tenbi",{
keywords={"guardian","druid"},
description="\nThis guide will walk you through obtaining Zen'tenbi as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Zen'tenbi |condition hasfollower(259)
step
Congratulations, you now have Zen'tenbi as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Zen'tiki",{
keywords={"feral","druid"},
description="\nThis guide will walk you through obtaining Zen'tiki as a Garrison Follower.",
},[[
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "Garrison_Medium_Building", action="talk Akanja##87305", building="Inn"
|tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Zen'tiki |condition hasfollower(256)
step
Congratulations, you now have Zen'tiki as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ziri'ak",{
keywords={"arms","warrior","powerful","spell"},
description="\nThis guide will walk you through obtaining Ziri'ak as a Garrison Follower.",
},[[
step
This Follower is a random drop from your _Smuggling Run!_ Garrison ability when in the Spires of Arak
|tip You must have the Trading Post to use this ability. You can switch buildings but it costs 5,000 Gold.
talk Taskmaster Gornek##81920 |goto Spires of Arak/0 40.2,43.5
|tip Talk to Taskmaster Gornek to change your Outpost if needed.
Use your Garrison ability |cast Smuggling Run!##170108
|tip Her inventory is random. You can use this ability every 10 minutes.
talk Linny "The Skinny" Leadpockets##84243
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
talk Nalya Battlehorn##88635
buy Contract: Ziri'ak##119267 |condition itemcount(119267) > 0 or hasfollower(168) |goto Frostwall/0 40.4,51.1
|tip It costs 5,000 Gold.
step
use Contract: Ziri'ak##119267
Recruit Ziri'ak |condition hasfollower(168)
step
label "end"
Congratulations, you now have Ziri'ak as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Scouting Missives",{
description="\nThis guide will walk you through completing the Garrison Missive quests bought from Sergeant Crowler.",
endlevel=100
},[[
step
ding 100
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
#include "Garrison_Grimjaw"
buy Scouting Missive: The Heart of Shattrath##133884
step
use Scouting Missive: The Heart of Shattrath##133884
accept Missive: Assault on the Heart of Shattrath##40943 |repeatable
step
kill Concubine of Lust##82940+, Conniving Deathblade##82981+, Draining Eye##86191+, Watchful Eye##86140+, Council Felcaller##86553+, Sargerei Fiendspeaker##83020+, Sargerei Discordant##86190+, Sargerei Ritualist##87341+,
talk Tortured Sha'tari##86869+
talk Captive Sha'tari Citizen##86599+
clicknpc Sargerei Missive##87364+
|tip They look like small tan pieces of paper pinned up around this area
Assault the Sargerei Forces in Shattrath City |q 40943/1 |goto Talador/0 41.2,42.3
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on the Heart of Shattrath##40943
|next "Menu"
step
label "M_Pit"
#include "Garrison_Grimjaw"
buy Scouting Missive: The Pit##133876
step
use Scouting Missive: The Pit##133876
accept Missive: Assault on the Pit##40941 |repeatable
step
kill Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Laborer##85277+, Iron Bloodburner##85128+, Iron Enforcer##85124+, Iron Cauterizer##85127+, Iron Warden##86499+, Iron Reinforcement##86297+, Hulking Brute##85136+, Gruesome Torturer##86405+
Assault the Pit |q 40941/1 |goto Gorgrond/0 46.23,24.35
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on the Pit##40941
|next "Menu"
step
label "M_Darktide"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Darktide Roost##122418
step
use Scouting Missive: Darktide Roost##122418
accept Missive: Assault on Darktide Roost##38182 |repeatable
step
kill Darktide Pilferer##78148+, Darktide Engineer##78999+, Darktide Rylakinator-3000##78190+, Darktide Guardian##78168+, Darktide Guardian##78168+, Darktide Machinist##85150+, Darktide Windstalker##85098+, Darkwing Adolescent##85357+, Darkwing Whelpling##84927+, Darkwing Matron##75280+, Iron Peon##78324+, Controlled Darkwing##78550+
click Rylak Egg##236010
Assault the Iron Horde Forces at Darktide Roost |q 38182/1 |goto Shadowmoon Valley D 59.1,86.0
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Darktide Roost##38182
|next "Menu"
step
label "M_Anzu"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Lost Veil Anzu##122413
step
use Scouting Missive: Lost Veil Anzu##122413
accept Missive: Assault on Lost Veil Anzu##38184 |repeatable
step
label "Standard"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Amorphic Cognitor##86144+, Befuddled Relic-Seeker##86205+, Vigilant Dreadtalon##89125+, Skyreach Archaeologist##86163+
click Goblin Supplies##6477+, Amorph Annihilator##86620+, Lost Artifact##6478+, Spore-Laden Moss##174393+
Right-click on corpses after you loot them |invehicle |next "Evolved" |or
Assault the Creatures at Lost Veil Anzu |q 38184/1 |goto Spires of Arak/0 73.4,44.8 |next "Turnin" |or
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
Assault the Creatures at Lost Veil Anzu |q 38184/1 |goto Spires of Arak/0 73.4,44.8 |next "Turnin" |or
|tip You will see a progress bar in your quest tracking area.
step
label "Turnin"
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Lost Veil Anzu##38184
|next "Menu"
step
label "M_Magnarok"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Magnarok##122403
step
use Scouting Missive: Magnarok##122403
accept Missive: Assault on Magnarok##38177 |repeatable
step
kill Vicious Acidmaw##76905+, Burning Slagmaw##72348+, Slagmaw Nibbler##87360+, Icejaw Rockbiter##72297+
Assault the Stone Monstrosities at Magnarok |q 38177/1 |goto Frostfire Ridge/0 69.4,29.4
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Magnarok##38177
|next "Menu"
step
label "M_Mok"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Mok'gol Watchpost##122421
step
use Scouting Missive: Mok'gol Watchpost##122421
accept Missive: Assault on Mok'gol Watchpost##38181
step
kill Mok'gol Grunt##86657+, Mok'gol Brutalizer##72571+, Mok'gol Raider##86660+, Mok'gol Pack-Leader##86658+, Mok'gol Wolfsong##86659+, Nagrand Savager##86656+
Assault the Warsong Force at Sunspring Watchpost |q 38181/1 |goto Nagrand D/0 45.5,35.9
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Mok'gol Watchpost##38181
|next "Menu"
step
label "M_Pillars"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Pillars of Fate##122411
step
use Scouting Missive: Pillars of Fate##122411
accept Missive: Assault on Pillars of Fate##38185
step
kill Shadowmoon Warrior##85068+, Shadowmoon Defiler##85075+, Shadowmoon Peon##85204+, Shadowmoon Voidtwister##85073+, Void Alpha##85082+
Assault the Shadowmoon Forces at the Pillars of Fate |q 38185/1 |goto Spires of Arak/0 73.4,30.8
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Pillars of Fate##38185
|next "Menu"
step
label "M_Shatt"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Shattrath Harbor##122412
step
use Scouting Missive: Shattrath Harbor##122412
accept Missive: Assault on Shattrath Harbor##38187
step
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Nefarious Consort##82990+, Shadowbourne Felcaster##84871+, Fel Cannoneer##84880+, Gorebound Insurgent##87337+, Fel Seer##84873+
Assault the Sargerei Forces in Shattrath City |q 38187/1 |goto Talador/0 44.6,37.3
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Shattrath Harbor##38187
|next "Menu"
step
label "M_Skettis"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Skettis##122408
step
use Scouting Missive: Skettis##122408
accept Missive: Assault on Skettis##38186
step
kill Skyreach Labormaster##85542+, Energized Swift Feather##84013+, Skyreach Dawnbreaker##88078+, Stalwart Warden##83988+
collect Talon Key##118701 |n
click Ball and Chain##207079
|tip They look like small metal balls on chains attachs to Arakkoa slaves around this area. You must have a Talon Key.
Free Slaves and _Boost their Morale_
|tip After you free them, kill mobs with them by your side to boost their morale. The higher their morale, the more progress you'll get toward your quest goal when you free the slaves.
Assault the Arakkoa Forces at Skettis |q 38186/1 |goto Spires of Arak/0 58.0,11.5
|tip You will see a progress bar in your quest tracking area.
Lead the slaves to [Spires of Arak/0 59.7,11.5]
|tip Talk to Outcast Darkscryer to free them.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Skettis##38186
|next "Menu"
step
label "M_Rise"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Socrethar's Rise##122416
step
use Scouting Missive: Socrethar's Rise##122416
accept Missive: Assault on Socrethar's Rise##38183
step
kill Sargerei Initiate##81541+, Sargerei Binder##81542+, Sargerei Darkblade##84945+, Sargerei Acolyte##85168+, Sargerei Worker##84888+, Nightshade Consort##84908+, Eye of Zamaya##88486+
Assault the Sargerei Forces at Socrethar's Rise |q 38183/1 |goto Shadowmoon Valley D/0 49.3,78.2
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Socrethar's Rise##38183
|next "Menu"
step
label "M_Cliffs"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Stonefury Cliffs##122405
step
use Scouting Missive: Stonefury Cliffs##122405
accept Missive: Assault on Stonefury Cliffs##38176
step
kill Bloodmaul Brute##77991+, Bloodmaul Gladiator##78782+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578+, Bloodmaul Magma Shaper##77992+
|tip You may kill Taskmasters and gather Shackle Keys to release Draenei Slaves.
Assault the Bloodmaul Forces at Stonefury Cliffs |q 38176/1 |goto Frostfire Ridge/0 47.4,17.1
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on Stonefury Cliffs##38176
|next "Menu"
step
label "M_Broken"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Broken Precipice##122424
step
use Scouting Missive: Broken Precipice##122424
accept Missive: Assault on the Broken Precipice##38180
step
kill Sledgebasher##83575+, Broken Drudge##87638+, Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Defiant Drudge##83570+, Dominating Drudge##83640+, Bloodbash Breaker##87654+, Bloodbash Ogrechucker##83848+
click Unearthed Reliquary##237453
Exploit the Conflict at the Broken Precipice |q 38180/1 |goto Nagrand D/0 38.8,14.9
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on the Broken Precipice##38180
|next "Menu"
step
label "M_Wilds"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Everbloom Wilds##122400
step
use Scouting Missive: Everbloom Wilds##122400
accept Missive: Assault on the Everbloom Wilds##38179
step
kill Twisted Guardian##88279+, Lumbering Ancient##86262+, Wild Mandragora##86260+, Brine Lasher##86267+, Botani Vine-Weaver##86261+, Everbloom Waterspeaker##88261+, Everbloom Wasp##86264+
Assault the Botani Forces in the Everbloom Wilds |q 38179/1 |goto Gorgrond/0 57.5,44.0
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on the Everbloom Wilds##38179
|next "Menu"
step
label "M_Iron"
#include "Garrison_Grimjaw"
buy 1 Scouting Missive: Iron Siegeworks##122402
step
use Scouting Missive: Iron Siegeworks##122402
accept Missive: Assault on the Everbloom Wilds##38178
step
kill Grom'kar Deadeye##85973+, Grom'kar Enforcer##77940+, Grom'kar Warforger##77945+, Grom'kar Pulverizer##78210+, Grom'kar Shocktrooper##77944+
Assault the Iron Horde Forces at the Iron Siegeworks |q 38178/1 |goto Frostfire Ridge/0 85.7,51.4
|tip You will see a progress bar in your quest tracking area.
step
#include "Garrison_ShadowHunterUkambe"
turnin Missive: Assault on the Everbloom Wilds##38178
|next "Menu"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Jukebox",{
description="\nThis guide will walk you through obtaining the Jukebox for your garrison",
},[[
step
Reach level 40 |ding 40
|tip Use the Leveling guides to accomplish this.
step
talk Drix Bassbolter##91072
accept Bringing the Bass##37961 |goto Frostwall/0 41.0,47.2
step
kill Lumbering Ancient##86262
|tip They look like big trees walking around this area. There are not very many of them, so you may need to search around for one.
collect Cord of Ancient Wood##122569 |q 37961/5 |goto Gorgrond/0 56.8,44.1
step
kill Iron Shredder##75815
|tip They look like metal humanoid machines sawing on huge tree stumps around this area.
collect S.P.R.K. Capacitor##122568 |q 37961/4 |goto Talador/0 64.0,29.4
step
Follow the stone road |goto Nagrand D/0 56.3,23.0 < 30 |only if walking
Go through the doorway |goto Nagrand D/0 57.0,19.1 < 30 |only if walking
Run up the stairs |goto Nagrand D/0 56.8,17.8 < 30 |only if walking
Continue up the stairs |goto Nagrand D/0 55.9,16.3 < 30 |only if walking
Follow the stairs up |goto Nagrand D/0 56.9,11.7 < 30 |only if walking
Follow the path |goto Nagrand D/0 56.6,10.4 < 30 |only if walking
click Bass Blaster##240568
|tip It looks like a metal box with a handle on top of it next to a big tree. The two ogres will attack you after you click the Bass Blaster.
|tip You can click this from flight form and possibly avoid combat. |only if raceclass("Druid") and (knowspell(34090) or knowspell(90265))
collect Bass Blaster##122565 |q 37961/1 |goto Nagrand D/0 57.8,10.9
step
Follow the path |goto Spires of Arak/0 58.0,75.7 < 30 |only if walking
Run on the road |goto Spires of Arak/0 55.5,79.6 < 30 |only if walking
Continue following the road |goto Spires of Arak/0 56.9,86.7 < 30 |only if walking
Run up the path |goto Spires of Arak/0 57.2,90.7 < 30 |only if walking
Enter the building |goto Spires of Arak/0 55.7,91.0 < 20 |walk
click Laz-Tron Disc Reader##240575
|tip It looks like a small metal box with levers on it, near the bed upstairs inside this building. You will be attacked after you click it.
collect Laz-Tron Disc Reader##122566 |q 37961/2 |goto Spires of Arak/0 55.54,90.6
step
Run up the path |goto Spires of Arak/0 62.9,15.7 < 30 |only if walking
Follow the path |goto Spires of Arak/0 61.8,11.0 < 30 |only if walking
Go through the doorway |goto Spires of Arak/0 59.4,11.2 < 30 |walk
kill Stalwart Warden##83988
|tip It looks like a bronze metal golem machine sitting on the ground next to the wall.
collect Phonic Amplifier##122567 |q 37961/3 |goto Spires of Arak/0 57.7,12.4
step
talk Drix Bassbolter##91072
turnin Bringing the Bass##37961 |goto Frostwall/0 41.0,47.2
step
use Stash of Dusty Music Rolls##122613
use Music Roll: Orgrimmar##122210
Learn Music Roll: Orgrimmar |achieve 10016/7
step
use Music Roll: Rescue the Warchief##122218
Learn Music Roll: Rescue the Warchief |achieve 10016/15
step
use Music Roll: Silvermoon##122217
Learn Music Roll: Silvermoon |achieve 10016/14
step
use Music Roll: The Zandalari##122216
Learn Music Roll: The Zandalari |achieve 10016/13
step
use Music Roll: Thunder Bluff##122213
Learn Music Roll: Thunder Bluff |achieve 10016/9
step
use Music Roll: Undercity##122212
Learn Music Roll: Undercity |achieve 10016/11
step
use Music Roll: Way of the Monk##122219
Learn Music Roll: Way of the Monk |achieve 10016/30
step
Congratulations, you unlocked your _Garrison Jukebox_!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Garrisons\\Mystery Notebook Questline",{
description="\nThis guide will walk you through obtaining the Heirloom Casings",
},[[
step
#include "Garrison_Drix"
accept Mystery Notebook##38306
step
talk Estelle Gendry##6566
turnin Mystery Notebook##38306 |goto Undercity/0 78.2,75.6
accept Numismatics##38346 |goto Undercity/0 78.2,75.6
stickystart "Info1"
step
collect 5 Misprinted Draenic Coin##122618 |q 38346/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info1"
This quest rewards you with an Ancient Heirloom Armor Casing which will upgrade any heirloom armor, trinket, shield, or off-hand to level 90
step
talk Estelle Gendry##6566
turnin Numismatics##38346 |goto Undercity/0 78.2,75.6
accept Completionism##38395 |goto Undercity/0 78.2,75.6
stickystart "Info2"
step
collect 10 Misprinted Draenic Coin##122618 |q 38395/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info2"
This quest rewards you with a Timeworn Heirloom Armor Casing which will upgrade any heirloom armor, trinket, shield, or off-hand to level 100
step
talk Estelle Gendry##6566
turnin Completionism##38395 |goto Undercity/0 78.2,75.6
accept A Curious Oddity##38397 |goto Undercity/0 78.2,75.6
stickystart "Info3"
step
collect 25 Misprinted Draenic Coin##122618 |q 38397/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info3"
This quest rewards you with an Ancient Heirloom Scabbard which will upgrade any heirloom weapon to level 90
step
talk Estelle Gendry##6566
turnin A Curious Oddity##38397 |goto Undercity/0 78.2,75.6
accept The Same, But Different##38404 |goto Undercity/0 78.2,75.6
stickystart "Info4"
step
collect 50 Misprinted Draenic Coin##122618 |q 38404/1
|tip These coins are a reward for the first Heroic dungeon completed each day.
step
label "Info4"
This quest rewards you with a Timeworn Heirloom Scabbard which will upgrade any heirloom weapon to level 100
step
talk Estelle Gendry##6566
turnin The Same, But Different##38404 |goto Undercity/0 78.2,75.6
]])
