local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

---------------------------
----- Tabard Includes -----
---------------------------

ZygorGuidesViewer:RegisterInclude("WATabard",[[
		talk Cielstrasza##32533 |only if rep("The Wyrmrest Accord")<Exalted
		buy 1 Tabard of the Wyrmrest Accord##43156 |goto Dragonblight 59.8,53.0 |only if rep("The Wyrmrest Accord")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("RamkahenTabard",[[
		talk Blacksmith Abasi##48617 |only if rep("Ramkahen")<Exalted
		buy 1 Tabard of Ramkahen##65904 |goto Uldum 54.1,33.3 |only if rep("Ramkahen")<Exalted
]])