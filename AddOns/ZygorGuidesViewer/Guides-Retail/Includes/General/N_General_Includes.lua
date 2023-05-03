local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterInclude("misc_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		_Exalted_ with _%rep%_ |complete rep("%rep%")>=Exalted
]])

ZygorGuidesViewer:RegisterInclude("dailies_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |complete rep("%rep%")>=Exalted
]])

ZygorGuidesViewer:RegisterInclude("main_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		#include %tabard%
		Use this _tabard_ and _complete dungeons_ with _friends_ or in the _random dungeon finder_ to get to _exalted_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |complete rep("%rep%")>=Exalted
]])

ZygorGuidesViewer:RegisterInclude("Argus_Invasion_Illidan",[[
		talk Illidan Stormrage##126408 |goto Antoran Wastes/5 29.94,59.21 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887) and knowstaxi("Light's Purchase, Antoran Wastes")
		talk Illidan Stormrage##126408 |goto Antoran Wastes/0 68.78,26.12 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887) and knowstaxi("The Veiled Den, Antoran Wastes")
		talk Illidan Stormrage##126408 |goto Eredath/3 47.31,19.56 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		talk Illidan Stormrage##126408 |goto Krokuun/1 40.03,19.27 |only if (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833)
]])

ZygorGuidesViewer:RegisterInclude("Argus_Invasion_Turalyon",[[
		talk High Exarch Turalyon##124312 |goto Antoran Wastes/5 33.53,58.22 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887)
		talk High Exarch Turalyon##124312 |goto Eredath/3 45.87,23.93 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		talk High Exarch Turalyon##124312 |goto Krokuun/1 39.05,24.81 |only if (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833)
]])

ZygorGuidesViewer:RegisterInclude("Argus_Scouting_Map",[[
		clicknpc Scouting Map##127476 |goto Antoran Wastes/6 55.20,26.46 |only if (ZGV.CurrentMapID==885 or ZGV.CurrentMapID==886 or ZGV.CurrentMapID==887)
		clicknpc Scouting Map##127476 |goto Eredath/4 68.13,57.18 |only if (ZGV.CurrentMapID==882 or ZGV.CurrentMapID==883 or ZGV.CurrentMapID==884)
		clicknpc Scouting Map##127476 |goto Krokuun/2 69.56,54.36 |only if (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833)
		|tip On the lower level.
]])