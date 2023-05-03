local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Mounts\\Get to the Choppa!",{
achieveid={2097},
patch='30002',
description="\nTo earn this achievement, you will have to craft or purchase a Mekgineer's Chopper. "..
"Crafting this mount requires the Northrend Engineering profession. You may also purchase it from "..
"the Auction House.",
},[[
step
Click Here to Craft with Northrend Engineering |next "Craft_Chopper" |confirm |only if skill("Engineering") >= 1 |achieve 2097 |future
|tip You will need a skill of 70.
Click Here to Purchase from the Auction House |confirm |only if skill("Engineering") >= 1 |achieve 2097 |future
Proceeding without Northrend Engineering |only if skill("Engineering") == 0
step
talk Auctioneer Fitch##8719
buy 1 Mekgineer's Chopper##44413 |complete itemcount(44413) >= 1 |goto Stormwind City/0 61.17,70.79 |achieve 2097 |future
|next "Learn_Chopper"
step
label "Craft_Chopper"
collect 12 Titansteel Bar##37663 |achieve 2097 |future
|tip Farm them with Mining or purchase them from the Auction House.
|tip Each bar requires three Titanium Bars and one each of Eternal Earth, Fire, and Shadow.
step
collect 40 Handful of Cobalt Bolts##39681 |achieve 2097 |future
|tip Craft them with Northrend Engineering or purchase them from the Auction House.
step
collect 2 Arctic Fur##44128 |achieve 2097 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
talk Big Keech##61650
buy 1 Salvaged Iron Golem Parts##44499 |goto Vale of Eternal Blossoms/0 70.91,40.49 |achieve 2097 |future
buy 8 Goblin-Machined Piston##44501 |goto 70.91,40.49 |achieve 2097 |future
|tip It costs 11,000 gold total.
step
buy 1 Elementium-Plated Exhaust Pipe##44500 |goto 70.91,40.49 |achieve 2097 |future
|tip It costs 1,500 gold.
|tip It can also be salvaged with Engineering from Flame Leviathan and XT-002 Deconstructor in Ulduar.
step
Open Your Northrend Engineering Crafting Panel:
_<Create 1 Mekgineer's Chopper>_
collect 1 Mekgineer's Chopper##44413 |achieve 2097 |future
step
label "Learn_Chopper"
use the Mekgineer's Chopper##44413
|learnmount Mekgineer's Chopper##60867
step
|achieve 2097
step
Congratulations!
You Earned the "Get to the Choppa!" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Collections\\Represent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Collections\\Ten Tabards")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Collections\\Twenty-Five Tabards")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Pardon Denied")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\To the Ground!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\A Void Dance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Abuse the Ooze")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Amber Void")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Better Off Dred")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Brann Spankin' New")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Chaos Theory")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Consumption Junction")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\The Culling of Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Defenseless")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Dehydration")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Emerald Void")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Experienced Drake Rider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Glory of the Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Good Grief")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Gotta Go!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Hadronox Denied")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Intense Cold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\The Incredible Hulk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\King's Bane")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Less-rabi")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lightning Struck")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lockdown!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lodi Dodi We Loves the Skadi")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Make It Count")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\My Girl Loves to Skadi All the Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Oh Novos!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\On The Rocks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Respect Your Elders")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Ruby Void")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Share the Love")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Shatter Resistant")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Snakes. Why'd It Have To Be Snakes?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Split Personality")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Timely Death")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Volazj's Quick Demise")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Volunteer Work")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Watch Him Die")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\What the Eck?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Zombiefest!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\All You Can Eat (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\All You Can Eat (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Been Waiting a Long Time for This (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Been Waiting a Long Time for This (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Boned (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Boned (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Champion of the Frozen Wastes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Crazy Cat Lady")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Crimson Hall (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Crimson Hall (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Dances with Oozes(10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Dances with Oozes(25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Dedicated Few (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Dedicated Few (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Deforestation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Denyin' the Scion (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Denyin' the Scion (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Descent into Madness")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Disarmed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Don't Stand in the Lightning")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Drive Me Crazy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Dwarfageddon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Earth, Wind & Fire (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Earth, Wind & Fire (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Fall of Naxxramas (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Fall of Naxxramas (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Firefighter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Flu Shot Shortage (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Flu Shot Shortage (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frostwing Halls (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frostwing Halls (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frozen Throne (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frozen Throne (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Full House (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Full House (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Getting Back to Nature")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Getting Cold in Here")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Gonna Go When the Volcano Blows (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Gonna Go When the Volcano Blows (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\He's Not Getting Any Older")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heartbreaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Crimson Hall (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Crimson Hall (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Plagueworks (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Plagueworks (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: Storming the Citadel (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: Storming the Citadel (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Hot Pocket")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Hundred Club (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Hundred Club (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Runemaster Molgeim")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Steelbreaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Stormcaller Brundir")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Could Say That This Cache Was Rare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Have the Coolest Friends")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Love the Smell of Saronite in the Morning")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I'll Take You All On")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I'm on a Boat (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I'm on a Boat (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I've Gone and Made a Mess (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I've Gone and Made a Mess (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\If Looks Could Kill")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\In His House He Waits Dreaming")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Iron Dwarf, Medium Rare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Just Can't Get Enough (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Just Can't Get Enough (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Keepers of Ulduar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Kel'Thuzad's Defeat (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Kel'Thuzad's Defeat (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Kiss and Make Up")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock, Knock, Knock on Wood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock on Wood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Less Is More (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Less Is More (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Light of Dawn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lose Your Illusion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lumberjacked")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Make Quick Werk of Him (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Make Quick Werk of Him (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Many Whelps! Handle It! (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Many Whelps! Handle It! (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Military Quarter (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Military Quarter (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Momma Said Knock You Out (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Momma Said Knock You Out (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\More Dots! (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\More Dots! (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Must Deconstruct Faster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nausea, Heartburn, Indigestion... (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nausea, Heartburn, Indigestion... (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Neck-Deep in Vile (10 Player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Neck-Deep in Vile (25 Player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nerf Engineering")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nerf Gravity Bombs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nerf Scrapbots")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nine Lives")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Not-So-Friendly Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Not One, But Two Jormungars (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Not One, But Two Jormungars (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Observed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Once Bitten, Twice Shy (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Once Bitten, Twice Shy (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\One Light in the Darkness")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Orb Whisperer (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Orb Whisperer (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbit-uary")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbital Bombardment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Plague Quarter (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Plague Quarter (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Plagueworks (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Portal Jockey (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Portal Jockey (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Resilience Will Fix It (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Rubble and Roll")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Saftey Dance(10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Safety Dance(25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Salt and Pepper (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Salt and Pepper (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Sapphiron's Demise (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Sapphiron's Demise (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Set Up Us the Bomb")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shadowdodger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shattered")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\She Deep Breaths More (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\She Deep Breaths More (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shocking! (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shocking! (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shutout")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Siege of Ulduar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Siffed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Spellweaver's Downfall (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Spellweaver's Downfall (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Spore Loser(10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Spore Loser (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Staying Buffed All Winter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Stokin' the Furnace")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Storming the Citadel (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Subtraction (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Subtraction (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Supermassive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Take Out Those Turrets")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\They're Coming Out of the Walls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Car Garage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Lights in the Darkness")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Sixty Pain Spike (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Sixty Pain Spike (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Traitor King (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Traitor King (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Twilight Assist (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Twilight Assist (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Twilight Zone (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Twilight Zone (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Unbroken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Upper Back Pain (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Upper Back Pain (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Who Needs Bloodlust?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\With Open Arms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\You Don't Have an Eternity (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\You Don't Have an Eternity (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Acrocalypse Now")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Arrested Development")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ascendant Descending")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Bear-ly Made It")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Bullet Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Crushing Bones and Cracking Skulls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Don't Need to Break Eggs to Make an Omelet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Eclipse")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Extra Credit Bonus Stage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Faster Than the Speed of Light")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Glory of the Cataclysm Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Gurubashi Headhunter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Headed South")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Here, Kitty Kitty...")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Blackrock Caverns")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Deadmines")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Grim Batol")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Halls of Origination")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Lost City of the Tol'vir")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Shadowfang Keep")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: The Stonecore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: The Vortex Pinnacle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Throne of the Tides")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Hex Mix")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\I Hate That Song")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\I'm on a Diet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\It's Frost Damage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\It's Not Easy Being Green")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Kill It With Fire!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Lazy Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Moon Guard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\No Static at All")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ohganot So Fast!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Old Faithful")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Prince of Tides")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Prototype Prodigy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Rat Pack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ready for Raiding")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ring Out!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Rotten to the Core")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Severed Ties")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Spirit Twister")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Straw That Broke the Camel's Back")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Sun of a....")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\That's Not Canon!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Too Hot to Handle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Tunnel Vision")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Umbrage for Umbriss")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Vigorous VanCleef Vindicator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Aberrant Behavior")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\The Abyss Will Gaze Back Into You")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Achieve-a-tron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Bucket List")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Chromatic Champion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Death From Above")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Deck Defender")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Defender of a Shattered World")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Do a Barrel Roll!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Don't Stand So Close To Me")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Double Dragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Elementary")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Fall of Deathwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Four Play")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Full of Sound and Fury")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Al'Akir")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Alysrazor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ascendant Council")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Atramedes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Baleroc")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Beth'tilac")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Chimaeron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Cho'gall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Conclave of Wind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Fandral Staghelm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Hagara the Stormbinder")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Halfus Wyrmbreaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Keeping it in the Family")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Lord Rhyolith")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Madness of Deathwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Magmaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Majordomo Fandral Staghelm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Maloriak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Morchok")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Nefarian")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Omnotron Defense System")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ragnaros")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Shannox")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Sinestra")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Spine of Deathwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ultraxion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Valiona and Theralion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Warlord Zon'ozz")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Warmaster Blackhorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Yor'sahj the Unsleeping")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Holding Hands")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Maybe He'll Get Dizzy...")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Minutes to Midnight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Not an Ambi-Turner")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\The Only Escape")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Only the Penitent...")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Parasite Evening")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Ping Pong Champion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Ragnar-O's")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Share the Pain")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Siege of Wyrmrest Temple")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Silence is Golden")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Stay Chill")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Taste the Rainbow!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Throne of the Four Winds")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Cataclysm Dungeon Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Classic Raids\\Classic Raider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Glory of the Cataclysm Raider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Glory of the Dragon Soul Raider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Glory of the Firelands Raider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Icecrown Raider (10 Player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Icecrown Raider (25 Player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Raider (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Raider (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Ulduar Raider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Looking For Many")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Looking For More")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Looking For Multitudes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Northrend Dungeon Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Northrend Dungeonmaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Outland Dungeons\\Outland Dungeon Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Outland Dungeons\\Outland Dungeonmaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Outland Raids\\Outland Raider")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Eastern Kingdoms and Cataclysm Explorer",{
condition_end=function() return achieved(42) end,
achieveid={42},
patch='30002',
description="\nEarn the following Eastern Kingdoms exploration achievements:\n\nExplore Elwynn Forest\nExplore "..
"Badlands\nExplore Burning Steppes\nExplore Duskwood\nExplore Loch Modan\nExplore Tirisfal Glades\n"..
"Explore Searing Gorge\nExplore Ghostlands\nExplore the Cape of Stranglethorn\nExplore The Hinterlands\n"..
"Explore Wetlands\nExplore Western Plaguelands\nExplore Isle of Quel'Danas\nExplore Arathi Highlands\n"..
"Explore Blasted Lands\nExplore Dun Morogh\nExplore Hillsbrad Foothills\nExplore Redridge Mountains\n"..
"Explore Eversong Woods\nExplore Silverpine Forest\nExplore Northern Stranglethorn\nExplore Swamp of Sorrows\n"..
"Explore Westfall\nExplore Deadwind Pass\nExplore Eastern Plaguelands",
},[[
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore the Cape of Stranglethorn" 1-10
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Northern Stranglethorn" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Westfall" 1-13
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Duskwood" 1-13
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Deadwind Pass" 1-3
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Blasted Lands" 1-14
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Swamp of Sorrows" 1-12
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Redridge Mountains" 1-13
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Elwynn Forest" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir" 1-57
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm" 1-12
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Burning Steppes" 1-10
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Badlands" 1-10
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Searing Gorge" 1-8
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Dun Morogh" 1-15
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Loch Modan" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands" 1-28
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Wetlands" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Arathi Highlands" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Hillsbrad Foothills" 1-26
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Silverpine Forest" 1-15
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Tirisfal Glades" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Western Plaguelands" 1-14
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore The Hinterlands" 1-14
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eastern Plaguelands" 1-23
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Ghostlands" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eversong Woods" 1-25
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Isle of Quel'Danas" 1-1
step
_Congratulations!_
You Earned the "Explore Eastern Kingdoms" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Arathi Highlands",{
condition_end=function() return achieved(761) end,
achieveid={761},
patch='30003',
description="\nExplore Arathi Highlands, revealing the following covered areas of the world map:\n\nBoulder'gor\n"..
"Circle of West Binding\nStromgarde Keep\nCircle of Inner Binding\nBoulderfist Hall\nCircle of Outer Binding\n"..
"Go'Shek Farm\nCircle of East Binding\nNorthfold Manor\nGalen's Fall\nFaldir's Cove\nThandol Span\n"..
"Refuge Pointe\nWitherbark Village\nDabyrie's Farmstead\nHammerfall",
},[[
step
Discover Thandol Span |achieve 761/8 |goto Arathi Highlands 41.3,91.0
step
Discover Boulderfist Hall |achieve 761/9 |goto Arathi Highlands 49.1,78.9
step
Discover Witherbark Village |achieve 761/12 |goto Arathi Highlands 61.6,70.3
step
Discover Go'Shek Farm |achieve 761/13 |goto Arathi Highlands 56.4,57.6
step
Discover Hammerfall |achieve 761/16 |goto Arathi Highlands 69.3,37.2
step
Discover Circle of East Binding |achieve 761/15 |goto Arathi Highlands 59.3,32.8
step
Discover Dabyrie's Farmstead |achieve 761/14 |goto Arathi Highlands 49.9,41.3
step
Discover Circle of Outer Binding |achieve 761/11 |goto Arathi Highlands 47.3,51.4
step
Discover Refuge Pointe |achieve 761/10 |goto Arathi Highlands 39.8,46.4
step
Discover Circle of Inner Binding |achieve 761/7 |goto Arathi Highlands 30.1,59.3
step
Discover Faldir's Cove |achieve 761/6 |goto Arathi Highlands 23.8,81.8
step
Discover Stromgarde Keep |achieve 761/5 |goto Arathi Highlands 16.5,64.1
step
Discover Boulder'gor |achieve 761/3 |goto Arathi Highlands 27.5,44.2
step
Discover Northfold Manor |achieve 761/2 |goto Arathi Highlands 27.0,27.1
step
Discover Circle of West Binding |achieve 761/1 |goto Arathi Highlands 18.97,30.99
step
Discover Galen's Fall |achieve 761/4 |goto Arathi Highlands 13.0,36.4
step
|achieve 761
step
_Congratulations!_
You Earned the "Explore Arathi Highlands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Badlands",{
condition_end=function() return achieved(765) end,
achieveid={765},
patch='30003',
description="\nExplore Badlands, revealing the following covered areas of the world map:\n\nLethlor Ravine\n"..
"Uldaman\nScar of the Worldbreaker\nAngor Fortress\nBloodwatcher Point\nAgmond's End\n"..
"Camp Cagg\nThe Dustbowl\nCamp Kosh\nNew Kargath",
},[[
step
Discover Lethlor Ravine |achieve 765/1 |goto Badlands 68.0,48.2
step
Discover Camp Kosh |achieve 765/8 |goto Badlands 60.1,20.7
step
Discover Uldaman |achieve 765/3 |goto Badlands 38.3,11.6
step
Discover Angor Fortress |achieve 765/7 |goto Badlands 41.1,26.5
step
Discover The Dustbowl |achieve 765/6 |goto Badlands 27.4,38.0
step
Discover New Kargath |achieve 765/10 |goto Badlands 17.7,41.7
step
Discover Camp Cagg |achieve 765/4 |goto Badlands 17.2,63.0
step
Discover Scar of the Worldbreaker |achieve 765/5 |goto Badlands 31.7,54.6
step
Discover Agmond's End |achieve 765/2 |goto Badlands 46.5,57.4
step
Discover Bloodwatcher Point |achieve 765/9 |goto Badlands 52.3,51.2
step
|achieve 765
step
_Congratulations!_
You Earned the "Explore Badlands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Blasted Lands",{
condition_end=function() return achieved(766) end,
achieveid={766},
patch='30003',
description="\nExplore Blasted Lands, revealing the following covered areas of the world map:\n\nDreadmaul Hold\n"..
"Nethergarde Keep\nThe Dark Portal\nDreadmaul Post\nRise of the Defiler\nSunveil Excursion\nThe Red "..
"Reaches\nNethergarde Supply Camps\nSerpent's Coil\nAltar of Storms\nThe Tainted Scar\nShattershore\n"..
"Surwich\nThe Tainted Forest",
},[[
step
Discover Dreadmaul Hold |achieve 766/1 |goto Blasted Lands 39.5,12.9
step
Discover Rise of the Defiler |achieve 766/9 |goto Blasted Lands 45.1,26.7
step
Discover the Altar of Storms |achieve 766/6 |goto Blasted Lands 39,32
step
Discover Dreadmaul Post |achieve 766/7 |goto Blasted Lands 47.1,40.1
step
Discover The Tainted Scar |achieve 766/8 |goto Blasted Lands 32.3,45.7
step
Discover The Tainted Forest |achieve 766/14 |goto Blasted Lands 34.2,72.3
step
Discover Surwich |achieve 766/12 |goto Blasted Lands 44.5,86.1
step
Discover Sunveil Excursion |achieve 766/11 |goto Blasted Lands 50.7,70.9
step
Discover The Red Reaches |achieve 766/13 |goto Blasted Lands 65.8,78.0
step
Discover The Dark Portal |achieve 766/5 |goto Blasted Lands 54.4,52.9
step
Discover Shattershore |achieve 766/10 |goto Blasted Lands 69.1,33.5
step
Discover Serpent's Coil |achieve 766/4 |goto Blasted Lands 60.3,28.4
step
Discover Nethergarde Keep |achieve 766/3 |goto Blasted Lands 64.3,15.8
step
Discover Nethergarde Supply Camps |achieve 766/2 |goto 52.61,18.63
step
|achieve 766
step
_Congratulations!_
You Earned the "Explore Blasted Lands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Burning Steppes",{
condition_end=function() return achieved(775) end,
achieveid={775},
patch='30002',
description="\nExplore Burning Steppes, revealing the following covered areas of the world map:\n\nDreadmaul Rock\n"..
"Terror Wing Path\nRuins of Thaurissan\nBlackrock Stronghold\nAltar of Storms\nMorgan's Vigil\n"..
"Blackrock Pass\nBlack Tooth Hovel\nThe Whelping Downs\nBlackrock Mountain",
},[[
step
Discover Blackrock Pass |achieve 775/4 |goto Burning Steppes 66.7,77.5
step
Discover Morgan's Vigil |achieve 775/2 |goto Burning Steppes 73.5,68.0
step
Discover Terror Wing Path |achieve 775/3 |goto Burning Steppes 73.9,53.4
step
Discover Dreadmaul Rock |achieve 775/1 |goto Burning Steppes 69.7,40.5
step
Discover Ruins of Thaurissan |achieve 775/5 |goto Burning Steppes 56.6,37.4
step
Discover Black Tooth Hovel |achieve 775/6 |goto Burning Steppes 36.1,53.5
step
Discover The Whelping Downs |achieve 775/8 |goto Burning Steppes 24.3,57.7
step
Discover Blackrock Stronghold |achieve 775/7 |goto Burning Steppes 32.3,36.5
step
Discover Blackrock Mountain |achieve 775/10 |goto Burning Steppes 20.7,29.2
step
Discover Altar of Storms |achieve 775/9 |goto Burning Steppes 9.4,27.5
step
|achieve 775
step
_Congratulations!_
You Earned the "Explore Burning Steppes" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore the Cape of Stranglethorn",{
condition_end=function() return achieved(4995) end,
achieveid={4995},
patch='40003',
description="\nExplore the Cape of Stranglethorn, revealing the following covered areas of the world map:\n\nBooty Bay\n"..
"Gurubashi Arena\nJaquero Isle\nNek'mani Wellspring\nRuins of Jubuwal\nCrystalvein Mine\nHardwrench Hideaway"..
"\nMistvale Valley\nRuins of Aboraz\nThe Wild Shore",
},[[
step
Discover Booty Bay |achieve 4995/1 |goto The Cape of Stranglethorn 39.7,71.0
step
Discover The Wild Shore |achieve 4995/10 |goto The Cape of Stranglethorn 43.5,81.4
step
Discover Jaquero Isle |achieve 4995/5 |goto The Cape of Stranglethorn 60.8,81.6
step
Discover Mistvale Valley |achieve 4995/6 |goto The Cape of Stranglethorn 50.5,58.1
step
Discover Nek'mani Wellspring |achieve 4995/7 |goto The Cape of Stranglethorn 43.0,49.1
step
Discover Hardwrench Hideaway |achieve 4995/4 |goto The Cape of Stranglethorn 34.1,32.4
step
Discover Gurubashi Arena |achieve 4995/3 |goto The Cape of Stranglethorn 46.3,22.5
step
Discover Ruins of Jubuwal |achieve 4995/9 |goto The Cape of Stranglethorn 54.4,30.3
step
Discover Ruins of Aboraz |achieve 4995/8 |goto The Cape of Stranglethorn 62.2,43.7
step
Discover Crystalvein Mine |achieve 4995/2 |goto The Cape of Stranglethorn 62.4,28.1
step
|achieve 4995
step
_Congratulations!_
You Earned the "Explore the Cape of Stranglethorn" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Deadwind Pass",{
condition_end=function() return achieved(777) end,
achieveid={777},
patch='30002',
description="\nExplore Deadwind Pass, revealing the following covered areas of the world map:\n\nKarazhan\n"..
"Deadman's Crossing\nThe Vice",
},[[
step
Discover Deadman's Crossing |achieve 777/1 |goto Deadwind Pass 45.1,35.8
step
Discover Karazhan |achieve 777/3 |goto Deadwind Pass 42.6,68.8
step
Discover The Vice |achieve 777/2 |goto Deadwind Pass 58.6,64.7
step
|achieve 777
step
_Congratulations!_
You Earned the "Explore Deadwind Pass" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Dun Morogh",{
condition_end=function() return achieved(627) end,
achieveid={627},
patch='30002',
description="\nExplore Dun Morogh, revealing the following covered areas of the world map:\n\nColdridge Pass\n"..
"Frostmane Front\nIronforge Airfield\nKharanos\nAmberstill Ranch\nGol'Bolar Quarry\nFrostmane Hold\n"..
"Gates of Ironforge\nColdridge Valley\nNew Tinkertown\nShimmer Ridge\nThe Tundrid Hills\nIceflow Lake"..
"\nHelm's Bed Lake\nNorth Gate Outpost",
},[[
step
Discover Helm's Bed Lake |achieve 627/10 |goto Dun Morogh 84.1,51.8
step
Discover Gol'Bolar Quarry |achieve 627/11 |goto Dun Morogh 76.5,57.2
step
Discover Amberstill Ranch |achieve 627/9 |goto Dun Morogh 71.5,46.2
step
Discover The Tundrid Hills |achieve 627/8 |goto Dun Morogh 67.2,53.9
step
Discover Frostmane Front |achieve 627/3 |goto Dun Morogh 58.6,57.7
step
Discover Kharanos |achieve 627/7 |goto Dun Morogh 53.6,50.5
step
Discover Coldridge Pass |achieve 627/1 |goto Dun Morogh 43.9,64.5
step
Discover Coldridge Valley |achieve 627/2 |goto Dun Morogh 34.6,75.6
step
Discover Frostmane Hold |achieve 627/13 |goto Dun Morogh 31.5,51.9
step
Discover New Tinkertown |achieve 627/4 |goto Dun Morogh 33.8,37.5
step
Discover Iceflow Lake |achieve 627/14 |goto Dun Morogh 41.4,40.2
step
Discover Shimmer Ridge |achieve 627/6 |goto Dun Morogh 48.3,37.9
step
Discover Gates of Ironforge |achieve 627/15 |goto Dun Morogh 59.6,33.8
step
Discover Ironforge Airfield |achieve 627/5 |goto Dun Morogh 78.0,24.2
step
Discover North Gate Outpost |achieve 627/12 |goto Dun Morogh 90.3,37.6
step
|achieve 627
step
_Congratulations!_
You Earned the "Explore Dun Morogh" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Duskwood",{
condition_end=function() return achieved(778) end,
achieveid={778},
patch='30002',
description="\nExplore Duskwood, revealing the following covered areas of the world map:\n\nThe Hushed Bank\n"..
"Raven Hill\nVul'Gol Ogre Mound\nThe Yorgen Farmstead\nThe Rotting Orchard\nDarkshire\nThe "..
"Darkened Bank\nAddle's Stead\nRaven Hill Cemetery\nTwilight Grove\nBrightwood Grove\nTranquil "..
"Gardens Cemetery\nManor Mistmantle",
},[[
step
Discover The Hushed Bank |achieve 778/1 |goto Duskwood 10.1,44.3
step
Discover Raven Hill Cemetery |achieve 778/4 |goto Duskwood 19.6,41.3
step
Discover Raven Hill |achieve 778/3 |goto Duskwood 19.8,55.2
step
Discover Addle's Stead |achieve 778/2 |goto Duskwood 21.4,69.9
step
Discover Vul'Gol Ogre Mound |achieve 778/5 |goto Duskwood 35.8,72.7
step
Discover The Yorgen Farmstead |achieve 778/7 |goto Duskwood 51.0,74.0
step
Discover The Rotting Orchard |achieve 778/9 |goto Duskwood 63.8,71.9
step
Discover Twilight Grove |achieve 778/6 |goto Duskwood 46.8,38.6
step
Discover The Darkened Bank |achieve 778/13 |goto Duskwood 54.6,21.2
step
Discover Brightwood Grove |achieve 778/8 |goto Duskwood 64.7,37.7
step
Discover Manor Mistmantle |achieve 778/12 |goto Duskwood 77.1,35.9
step
Discover Darkshire |achieve 778/11 |goto Duskwood 74.5,46.2
step
Discover Tranquil Gardens Cemetery |achieve 778/10 |goto Duskwood 79.7,66.1
step
|achieve 778
step
_Congratulations!_
You Earned the "Explore Duskwood" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eastern Plaguelands",{
condition_end=function() return achieved(771) end,
achieveid={771},
patch='30100',
description="\nExplore Eastern Plaguelands, revealing the following covered areas of the world map:\n\nThondroril River\n"..
"The Undercroft\nThe Fungal Vale\nPestilent Scar\nLake Mereldar\nLight's Hope Chapel\nThe Noxious Glade\n"..
"Blackwood Lake\nZul'Mashar\nQuel'Lithien Lodge\nPlaguewood\nRuins of the Scarlet Enclave\nThe Marris Stead\n"..
"Crown Guard Tower\nDarrowshire\nCorin's Crossing\nTyr's Hand\nThe Infectis Scar\nEastwall Tower\nNorthdale\n"..
"Northpass Tower\nTerrordale\nStratholme",
},[[
step
Discover Darrowshire |achieve 771/6 |goto Eastern Plaguelands 35.1,84.2
step
Discover The Undercroft |achieve 771/3 |goto Eastern Plaguelands 24.0,78.8
step
Discover The Marris Stead |achieve 771/2 |goto Eastern Plaguelands 22.6,66.0
step
Discover Thondroril River |achieve 771/1 |goto Eastern Plaguelands 08.63,66.20
step
Discover Terrordale |achieve 771/20 |goto Eastern Plaguelands 12.5,26.3
step
Discover Statholme |achieve 771/22 |goto Eastern Plaguelands 26.8,9.8
step
Discover Plaguewood |achieve 771/21 |goto Eastern Plaguelands 33.6,24.4
step
Discover The Fungal Vale |achieve 771/5 |goto Eastern Plaguelands 36.1,44.8
step
Discover Crown Guard Tower |achieve 771/4 |goto Eastern Plaguelands 35.7,68.5
step
Discover Lake Mereldar |achieve 771/9 |goto Eastern Plaguelands 57.4,74.1
step
Discover Corin's Crossing |achieve 771/8 |goto Eastern Plaguelands 55.6,62.9
step
Discover The Infectis Scar |achieve 771/12 |goto Eastern Plaguelands 48.90,62.25
step
Discover Blackwood Lake |achieve 771/15 |goto Eastern Plaguelands 46.3,43.5
step
Discover Quel'Lithien Lodge |achieve 771/19 |goto Eastern Plaguelands 48.1,13.1
step
Discover Northpass Tower |achieve 771/18 |goto Eastern Plaguelands 50.5,20.5
step
Discover Eastwall Tower |achieve 771/14 |goto Eastern Plaguelands 62.4,41.7
step
Discover Pestilent Scar |achieve 771/7 |goto Eastern Plaguelands 68.7,56.5
step
Discover Tyr's Hand |achieve 771/10 |goto Eastern Plaguelands 75.6,75.2
step
Discover Ruins of the Scarlet Enclave |achieve 771/23 |goto Eastern Plaguelands 87.1,78.5
step
Discover Light's Hope Chapel |achieve 771/11 |goto Eastern Plaguelands 76.8,53.9
step
Discover The Noxious Glade |achieve 771/13 |goto Eastern Plaguelands 78.1,35.8
step
Discover Northdale |achieve 771/16 |goto Eastern Plaguelands 66.1,25.0
step
Discover Zul'Mashar |achieve 771/17 |goto Eastern Plaguelands 66.4,10.3
step
|achieve 771
step
_Congratulations!_
You Earned the "Explore Eastern Plaguelands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Elwynn Forest",{
condition_end=function() return achieved(776) end,
achieveid={776},
patch='30002',
description="\nExplore Elwynn Forest, revealing the following covered areas of the world map:\n\nNorthshire Valley\n"..
"Goldshire\nJerod's Landing\nBrackwell Pumpkin Patch\nRidgepoint Tower\nStone Cairn Lake\nWestbrook Garrison\n"..
"Fargodeep Mine\nTower of Azora\nEastvale Logging Camp\nCrystal Lake",
},[[
step
Discover Eastvale Logging Camp |achieve 776/8 |goto Elwynn Forest 83.5,66.9
step
Discover Ridgepoint Tower |achieve 776/9 |goto Elwynn Forest 84.8,79.4
step
Discover Brackwell Pumpkin Patch |achieve 776/7 |goto Elwynn Forest 69.4,79.4
step
Discover Tower of Azora |achieve 776/6 |goto Elwynn Forest 64.6,69.3
step
Discover Crystal Lake |achieve 776/10 |goto Elwynn Forest 52.9,66.2
step
Discover Jerod's Landing |achieve 776/5 |goto Elwynn Forest 48.5,85.8
step
Discover Fargodeep Mine |achieve 776/4 |goto Elwynn Forest 39.5,80.3
step
Discover Westbrook Garrison |achieve 776/2 |goto Elwynn Forest 24.5,73.3
step
Discover Goldshire |achieve 776/3 |goto Elwynn Forest 42.1,64.7
step
Discover Northshire Valley |achieve 776/1 |goto Elwynn Forest 50.4,42.5
step
Discover Stone Cairn Lake |achieve 776/11 |goto Elwynn Forest 74.0,51.5
step
|achieve 776
step
_Congratulations!_
You Earned the "Explore Elwynn Forest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eversong Woods",{
condition_end=function() return achieved(859) end,
achieveid={859},
patch='30002',
description="\nExplore Eversong Woods, revealing the following covered areas of the world map:\n\nSunstrider Isle\n"..
"West Sanctum\nNorth Sanctum\nFarstrider Retreat\nDuskwither Grounds\nThe Living Wood\nThe Scorched Grove"..
"\nAzurebreeze Coast\nGoldenbough Pass\nRunestone Falithas\nSaltheril's Haven\nThuron's Livery\nZeb'Watha\n"..
"Ruins of Silvermoon\nSunsail Anchorage\nEast Sanctum\nStillwhisper Pond\nFairbreeze Village\nTor'Watha\n"..
"Silvermoon City\nElrendar Falls\nLake Elrendar\nRunestone Shan'dor\nGolden Strand\nTranquil Shore",
},[[
step
Discover The Scorched Grove |achieve 859/13 |goto Eversong Woods 36.2,86.0
step
Discover Runestone Falithas |achieve 859/19 |goto Eversong Woods 44.1,85.8
step
Discover Rusestone Shan'dor |achieve 859/20 |goto Eversong Woods 55.8,84.2
step
Discover Zeb'Watha |achieve 859/25 |goto Eversong Woods 62.2,79.3
step
Discover Lake Elrendar |achieve 859/18 |goto Eversong Woods 65.9,78.6
step
Discover Tor'Watha |achieve 859/12 |goto Eversong Woods 72.0,79.3
step
Discover Elreandar Falls |achieve 859/16 |goto Eversong Woods 64.6,73.1
step
Discover Farstrider Rereat |achieve 859/7 |goto Eversong Woods 61.2,63.7
step
Discover Stillwhisper Pond |achieve 859/8 |goto Eversong Woods 55.7,56.4
step
Discover Thuron's Livery |achieve 859/23 |goto Eversong Woods 60.6,54.2
step
Discover Duskwither Grounds |achieve 859/9 |goto Eversong Woods 69.27,46.54
step
Discover Azurebreeze Coast |achieve 859/15 |goto Eversong Woods 71.6,45.3
step
Discover Silvermoon City |achieve 859/14 |goto Eversong Woods 52.4,39.4
step
Discover Sunstrider Isle |achieve 859/1 |goto Eversong Woods 31.3,16.0
step
Discover Ruins of Silvermoon |achieve 859/2 |goto Eversong Woods 42.9,39.3
step
Discover North Sanctum |achieve 859/5 |goto Eversong Woods 42.7,50.4
step
Discover West Sanctum |achieve 859/3 |goto Eversong Woods 35.3,57.6
step
Discover Tranquil Shore |achieve 859/24 |goto Eversong Woods 28.5,57.8
step
Discover Sunsail Anchorage |achieve 859/4 |goto Eversong Woods 29.4,69.3
step
Discover Golden Strand |achieve 859/22 |goto Eversong Woods 23.5,74.8
step
Discover Goldenbough Pass |achieve 859/17 |goto Eversong Woods 33.4,77.6
step
Discover Saltheril's Haven |achieve 859/21 |goto Eversong Woods 38.3,73.5
step
Discover Fairbreeze Village |achieve 859/10 |goto Eversong Woods 43.9,73.7
step
Discover East Sanctum |achieve 859/6 |goto Eversong Woods 52.3,73.1
step
Discover The Living Wood |achieve 859/11 |goto Eversong Woods 54.2,71.9
step
|achieve 859
step
_Congratulations!_
You Earned the "Explore Eversong Woods" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Ghostlands",{
condition_end=function() return achieved(858) end,
achieveid={858},
patch='30002',
description="\nExplore Ghostlands, revealing the following covered areas of the world map:\n\nTranquillien\n"..
"Goldenmist Village\nSanctum of the Moon\nDawnstar Spire\nHowling Ziggurat\nZeb'Nowa\nWindrunner Spire"..
"\nElrendar Crossing\nSuncrown Village\nWindrunner Village\nSanctum of the Sun\nFarstrider Enclave\n"..
"Deatholme\nAmani Pass\nBleeding Ziggurat\nThalassian Pass",
},[[
step
Discover Thalassian Pass |achieve 858/16 |goto Ghostlands 48.2,84.3
step
Discover Deatholme |achieve 858/10 |goto Ghostlands 33.1,79.9
step
Discover Windrunner Spire |achieve 858/13 |goto Ghostlands 12.4,57.0
step
Discover Windrunner Village |achieve 858/4 |goto Ghostlands 17.9,41.4
step
Discover Goldenmist Village |achieve 858/3 |goto Ghostlands 25.0,15.0
step
Discover Sanctum of the Moon |achieve 858/5 |goto Ghostlands 33.4,32.2
step
Discover Bleeding Ziggurat |achieve 858/14 |goto Ghostlands 34.3,47.6
step
Discover Howling Ziggurat |achieve 858/9 |goto Ghostlands 40.4,49.8
step
Discover Tranquillien |achieve 858/1 |goto Ghostlands 47.12,32.8
step
Discover Sanctum of the Sun |achieve 858/6 |goto Ghostlands 54.7,49.7
step
Discover Zeb'Nowa |achieve 858/11 |goto Ghostlands 66.6,58.9
step
Discover Amani Pass |achieve 858/12 |goto Ghostlands 77.3,64.4
step
Discover Farstrider Enclave |achieve 858/8 |goto Ghostlands 77.2,32.1
step
Discover Dawnstar Spire |achieve 858/7 |goto Ghostlands 78.6,18.7
step
Discover Suncrown Village |achieve 858/2 |goto Ghostlands 60.46,11.7
step
Discover Elrendar Crossing |achieve 858/15 |goto Ghostlands 48.39,11.51
step
|achieve 858
step
_Congratulations!_
You Earned the "Explore Ghostlands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Hillsbrad Foothills",{
condition_end=function() return achieved(772) end,
achieveid={772},
patch='30008',
description="\nExplore Hillsbrad Foothills, revealing the following covered areas of the world map:\n\nAzurelode Mine\n"..
"Corrahn's Dagger\nChillwind Point\nDandred's Fold\nDun Garok\nGallows' Corner\nGrowless Cave\nNethander Stead"..
"\nRuins of Alterac\nSlaughter Hollow\nSouthpoint Gate\nTarren Mill\nThe Sludge Fields\nBrazie Farmstead\n"..
"Crushridge Hold\nDalaran Crater\nDarrow Hill\nDurnholde Keep\nGavin's Naze\nMisty Shore\nPurgation Isle\n"..
"Ruins of Southshore\nSofera's Naze\nStrahnbrad\nThe Headland\nThe Uplands",
},[[
step
Discover Durnholde Keep |achieve 772/10 |goto Hillsbrad Foothills 68.3,60.0
step
Discover Chillwind Point |achieve 772/5 |goto Hillsbrad Foothills 68.1,32.9
step
Discover Sofera's Naze |achieve 772/20 |goto Hillsbrad Foothills 55.6,38.5
step
Discover Strahnbrad |achieve 772/22 |goto Hillsbrad Foothills 58.3,23.4
step
Discover Crushridge Hold |achieve 772/4 |goto Hillsbrad Foothills 50.16,24.37
step
Discover Slaughter Hollow |achieve 772/19 |goto Hillsbrad Foothills 49.43,18.88
step
Discover The Uplands |achieve 772/26 |goto Hillsbrad Foothills 52.4,12.6
step
Discover Dandred's Fold |achieve 772/7 |goto Hillsbrad Foothills 44.9,9.1
step
Discover Ruins of Alterac |achieve 772/17 |goto Hillsbrad Foothills 45.3,29.0
step
Discover Growless Cave |achieve 772/13 |goto Hillsbrad Foothills 43.2,38.5
step
Discover Gallows' Corner |achieve 772/11 |goto Hillsbrad Foothills 49.88,32.59
step
Discover Tarren Mill |achieve 772/23 |goto Hillsbrad Foothills 56.7,46.9
step
Discover Corrahn's Dagger |achieve 772/3 |goto Hillsbrad Foothills 49.6,46.7
step
Discover Nethander Stead |achieve 772/15 |goto Hillsbrad Foothills 57.51,74.96
step
Discover Dun Garok |achieve 772/9 |goto Hillsbrad Foothills 62.83,84.80
step
Discover Ruins of Southshore |achieve 772/18 |goto Hillsbrad Foothills 48.97,71.89
step
Discover Darrow Hill |achieve 772/8 |goto Hillsbrad Foothills 46.3,54.1
step
Discover The Headland |achieve 772/24 |goto Hillsbrad Foothills 44.2,48.6
step
Discover Gavin's Naze |achieve 772/12 |goto Hillsbrad Foothills 40.0,47.6
step
Discover Misty Shore |achieve 772/14 |goto Hillsbrad Foothills 35.06,26.14
step
Discover Brazie Farmstead |achieve 772/2 |goto Hillsbrad Foothills 33.8,46.5
step
Discover Dalaran Crater |achieve 772/6 |goto Hillsbrad Foothills 30.4,36.2
step
Discover Southpoint Gate |achieve 772/21 |goto Hillsbrad Foothills 29.5,63.6
step
Discover The Sludge Fields |achieve 772/25 |goto Hillsbrad Foothills 36.56,58.04
step
Discover Azurelode Mine |achieve 772/1 |goto Hillsbrad Foothills 34.0,73.8
step
Discover Purgation Isle |achieve 772/16 |goto Hillsbrad Foothills 27.0,85.6
step
|achieve 772
step
_Congratulations!_
You Earned the "Explore Hillsbrad Foothills" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore The Hinterlands",{
condition_end=function() return achieved(773) end,
achieveid={773},
patch='30002',
description="\nExplore The Hinterlands, revealing the following covered areas of the world map:\n\nAerie Peak\n"..
"Zun'watha\nShadra'Alor\nAgol'watha\nThe Altar of Zul\nSkulk Rock\nJintha'Alor\nPlaguemist Ravine\n"..
"Quel'Danil Lodge\nValorwind Lake\nThe Creeping Ruin\nSeradane\nShaol'watha\nThe Overlook Cliffs",
},[[
step
Discover Aerie Peak |achieve 773/1 |goto The Hinterlands 13.9,45.0
step
Discover Plaguemist Ravine |achieve 773/2 |goto The Hinterlands 23.1,33.5
step
Discover Zun'watha |achieve 773/3 |goto The Hinterlands 23.46,58.21
step
Discover Quel'Danil Lodge |achieve 773/4 |goto The Hinterlands 33.3,45.6
step
Discover Shadra'Alor |achieve 773/5 |goto The Hinterlands 34.6,72.0
step
Discover Valorwind Lake |achieve 773/6 |goto The Hinterlands 40.5,59.3
step
Discover The Altar of Zul |achieve 773/9 |goto The Hinterlands 48.4,66.9
step
Discover The Creeping Ruin |achieve 773/8 |goto The Hinterlands 49.0,52.1
step
Discover Agol'watha |achieve 773/7 |goto The Hinterlands 46.59,39.68
step
Discover Jintha'Alor |achieve 773/13 |goto The Hinterlands 63.1,74.7
step
Discover The Overlook Cliffs |achieve 773/14 |goto The Hinterlands 72.7,66.1
step
Discover Shaol'watha |achieve 773/12 |goto The Hinterlands 73.2,54.2
step
Discover Skulk Rock |achieve 773/11 |goto The Hinterlands 57.6,42.6
step
Discover Seradane |achieve 773/10 |goto The Hinterlands 62.7,24.1
step
|achieve 773
step
_Congratulations!_
You Earned the "Explore The Hinterlands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Isle of Quel'Danas",{
condition_end=function() return achieved(868) end,
achieveid={868},
patch='30003',
description="\nExplore Isle of Quel'Danas, revealing the covered areas of the world map.",
},[[
step
Explore Isle of Quel'Danas |achieve 868 |goto Isle of Quel'Danas 47.4,30.6
step
_Congratulations!_
You Earned the "Explore Isle of Quel'Danas" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Loch Modan",{
condition_end=function() return achieved(779) end,
achieveid={779},
patch='30002',
description="\nExplore Loch Modan, revealing the following covered areas of the world map:\n\nThe Loch\n"..
"Mo'grosh Stronghold\nNorth Gate Pass\nIronband's Excavation Site\nThelsamar\nValley of Kings\n"..
"Stonewrought Dam\nSilver Stream Mine\nThe Farstrider Lodge\nGrizzlepaw Ridge\nStonesplinter Valley",
},[[
step
Discover Valley of Kings |achieve 779/11 |goto Loch Modan 20.3,78.5
step
Discover Stonesplinter Valley |achieve 779/10 |goto Loch Modan 32.5,78.3
step
Discover Grizzlepaw Ridge |achieve 779/8 |goto Loch Modan 38.0,60.7
step
Discover Thelsamar |achieve 779/9 |goto Loch Modan 35.2,47.6
step
Discover Ironband's Excavation Site |achieve 779/7 |goto Loch Modan 69.4,65.3
step
Discover The Farstrider Lodge |achieve 779/6 |goto Loch Modan 82.3,65.0
step
Discover Mo'grosh Stronghold |achieve 779/3 |goto Loch Modan 71.0,23.8
step
Discover The Loch |achieve 779/1 |goto Loch Modan 48.40,17.55
step
Discover Stonewrought Dam |achieve 779/2 |goto Loch Modan 48.0,11.4
step
Discover Silver Stream Mine |achieve 779/4 |goto Loch Modan 34.8,21.5
step
Discover North Gate Pass |achieve 779/5 |goto Loch Modan 20.2,17.1
step
|achieve 779
step
_Congratulations!_
You Earned the "Explore Loch Modan" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Northern Stranglethorn",{
condition_end=function() return achieved(781) end,
achieveid={781},
patch='30003',
description="\nExplore Northern Stranglethorn, revealing the following covered areas of the world map:\n\nZuuldaia Ruins\n"..
"Grom'gol Base Camp\nBambala\nRebel Camp\nKal'ai Ruins\nMosh'Ogg Ogre Mound\nBal'lal Ruins\nBalia'mah Ruins\n"..
"Ruins of Zul'Kunda\nFort Livingston\nNesingwary's Expedition\nKurzen's Compound\nMizjah Ruins\nThe Vile Reef\n"..
"Lake Nazferiti\nZul'Gurub",
},[[
step
Discover Lake Nazferiti |achieve 781/12 |goto Northern Stranglethorn 51.48,34.05
step
Discover Fort Livingston |achieve 781/4 |goto Northern Stranglethorn 53.2,66.0
step
Discover Balia'mah Ruins |achieve 781/2 |goto Northern Stranglethorn 59.0,55.2
step
Discover Mosh'Ogg Ogre Mound |achieve 781/11 |goto Northern Stranglethorn 66.9,50.9
step
Discover Bambala |achieve 781/3 |goto Northern Stranglethorn 64.7,39.7
step
Discover Zul'Gurub |achieve 781/16 |goto Northern Stranglethorn 83.9,32.5
step
Discover Kurzen's Compound |achieve 781/8 |goto Northern Stranglethorn 60.2,19.9
step
Discover Rebel Camp |achieve 781/7 |goto Northern Stranglethorn 46.7,9.5
step
Discover Nesingwary's Expedition |achieve 781/6 |goto Northern Stranglethorn 44.1,19.8
step
Discover Kal'ai Ruins |achieve 781/9 |goto Northern Stranglethorn 42.2,38.4
step
Discover Mizjah Ruins |achieve 781/10 |goto Northern Stranglethorn 46.1,52.9
step
Discover Grom'gol Base Camp |achieve 781/1 |goto Northern Stranglethorn 37.8,48.4
step
Discover The Vile Reef |achieve 781/14 |goto Northern Stranglethorn 33.0,42.5
step
Discover Bal'lal Ruins |achieve 781/13 |goto Northern Stranglethorn 34.3,36.2
step
Discover Zuuldaia Ruins |achieve 781/5 |goto Northern Stranglethorn 19.2,25.6
step
Discover Ruins of Zul'Kunda |achieve 781/15 |goto Northern Stranglethorn 26.4,20.2
step
|achieve 781
step
_Congratulations!_
You Earned the "Explore Northern Stranglethorn" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Redridge Mountains",{
condition_end=function() return achieved(780) end,
achieveid={780},
patch='30002',
description="\nExplore Redridge Mountains, revealing the following covered areas of the world map:\n\nLakeshire\n"..
"Three Corners\nRedridge Canyons\nStonewatch Falls\nRender's Camp\nGalardell Valley\nCamp Everstill\n"..
"Lake Everstill\nLakeridge Highway\nAlther's Mill\nRender's Valley\nStonewatch Keep\nShalewind Canyon",
},[[
step
Discover Lakeridge Highway |achieve 780/4 |goto Redridge Mountains 38.2,68.5
step
Discover Lake Everstill |achieve 780/2 |goto Redridge Mountains 41.9,52.6
step
Discover Camp Everstill |achieve 780/13 |goto Redridge Mountains 53.4,54.7
step
Discover Stonewatch Keep |achieve 780/10 |goto Redridge Mountains 60.9,52.5
step
Discover Render's Valley |achieve 780/8 |goto Redridge Mountains 64.7,71.3
step
Discover Shalewind Canyon |achieve 780/12 |goto Redridge Mountains 81.0,62.4
step
Discover Stonewatch Falls |achieve 780/7 |goto Redridge Mountains 71.25,54.57
step
Discover Galardell Valley |achieve 780/11 |goto Redridge Mountains 70.28,34.66
step
Discover Alther's Mill |achieve 780/6 |goto Redridge Mountains 47.2,39.2
step
Discover Render's Camp |achieve 780/9 |goto Redridge Mountains 35.1,12.8
step
Discover Redridge Canyons |achieve 780/5 |goto Redridge Mountains 30.2,26.1
step
Discover Lakeshire |achieve 780/1 |goto Redridge Mountains 25.5,43.4
step
Discover Three Corners |achieve 780/3 |goto Redridge Mountains 19.7,59.1
step
|achieve 780
step
_Congratulations!_
You Earned the "Explore Redridge Mountains" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Searing Gorge",{
condition_end=function() return achieved(774) end,
achieveid={774},
patch='30002',
description="\nExplore Searing Gorge, revealing the following covered areas of the world map:\n\nFirewatch Ridge\n"..
"Blackchar Cave\nGrimesilt Dig Site\nThorium Point\nThe Cauldron\nThe Sea of Cinders\nDustfire Valley"..
"\nBlackrock Mountain",
},[[
step
Discover Blackrock Mountain |achieve 774/8 |goto Searing Gorge 39.9,82.9
step
Discover The Sea of Cinders |achieve 774/4 |goto Searing Gorge 48,70
step
Discover Blackchar Cave |achieve 774/3 |goto Searing Gorge 21.2,80.1
step
Discover Firewatch Ridge |achieve 774/1 |goto Searing Gorge 23.8,31.8
step
Discover Thorium Point |achieve 774/7 |goto Searing Gorge 37.7,29.9
step
Discover The Cauldron |achieve 774/2 |goto Searing Gorge 52.7,49.6
step
Discover Dustfire Valley |achieve 774/6 |goto Searing Gorge 71.8,26.8
step
Discover Grimesilt Dig Site |achieve 774/5 |goto Searing Gorge 62,62.3
step
|achieve 774
step
_Congratulations!_
You Earned the "Explore Searing Gorge" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Silverpine Forest",{
condition_end=function() return achieved(769) end,
achieveid={769},
patch='30002',
description="\nExplore Silverpine Forest, revealing the following covered areas of the world map:\n\nThe Battlefront\n"..
"The Forsaken Front\nNorth Tide's Beachhead\nValgan's Field\nDeep Elem Mine\nForsaken High Command\n"..
"Ambermill\nForsaken Rear Guard\nThe Decrepit Fields\nThe Skittering Dark\nFenris Isle\nThe Sepulcher\n"..
"Olsen's Farthing\nShadowfang Keep\nNorth Tide's Run",
},[[
step
Discover The Battlefront |achieve 769/1 |goto Silverpine Forest 46.1,79.5
step
Discover Shadowfang Keep |achieve 769/12 |goto Silverpine Forest 42.2,63.2
step
Discover The Forsaken Front |achieve 769/3 |goto Silverpine Forest 50.9,66.6
step
Discover Ambermill |achieve 769/11 |goto Silverpine Forest 61.2,62.4
step
Discover Olsen's Farthing |achieve 769/10 |goto Silverpine Forest 46.1,51.0
step
Discover The Sepulcher |achieve 769/8 |goto Silverpine Forest 45.0,40.0
step
Discover North Tide's Beachead |achieve 769/5 |goto Silverpine Forest 37.3,28.0
step
Discover The Skittering Dark |achieve 769/4 |goto Silverpine Forest 34.8,12.4
step
Discover Forsaken Rear Guard |achieve 769/15 |goto Silverpine Forest 44.9,18.8
step
Discover North Tide's Run |achieve 769/14 |goto Silverpine Forest 37.90,44.70
step
Discover Valgan's Field |achieve 769/7 |goto Silverpine Forest 53.2,25.6
step
Discover The Decrepit Fields |achieve 769/2 |goto Silverpine Forest 56.5,34.7
step
Discover Deep Elem Mine |achieve 769/9 |goto Silverpine Forest 59.3,45.4
step
Discover Fenris Isle |achieve 769/6 |goto Silverpine Forest 69.1,26.8
step
Discover Forsaken High Command |achieve 769/13 |goto Silverpine Forest 62.0,8.7
step
|achieve 769
step
_Congratulations!_
You Earned the "Explore Silverpine Forest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Swamp of Sorrows",{
condition_end=function() return achieved(782) end,
achieveid={782},
patch='30002',
description="\nExplore Swamp of Sorrows, revealing the following covered areas of the world map:\n\nMisty Valley\n"..
"Splinterspear Junction\nStonard\nStagalbog\nBogpaddle\nPurespring Cavern\nThe Harborage\nSorrowmurk\n"..
"The Shifting Mire\nPool of Tears\nMisty Reed Strand\nMarshtide Watch",
},[[
step
Discover Stagalbog |achieve 782/7 |goto Swamp of Sorrows 67.8,74.9
step
Discover Sorrowmurk |achieve 782/8 |goto Swamp of Sorrows 84.2,38.9
step
Discover Misty Reed Strand |achieve 782/10 |goto Swamp of Sorrows 77.3,13.7
step
Discover Bogpaddle |achieve 782/9 |goto Swamp of Sorrows 72.3,12.8
step
Discover Marshtide Watch |achieve 782/12 |goto Swamp of Sorrows 68.4,35.8
step
Discover Pool of Tears |achieve 782/6 |goto Swamp of Sorrows 62.6,50.0
step
Discover The Shifting Mire |achieve 782/4 |goto Swamp of Sorrows 48.8,42.1
step
Discover Stonard |achieve 782/5 |goto Swamp of Sorrows 47.1,54.2
step
Discover Purespring Cavern |achieve 782/11 |goto Swamp of Sorrows 18.6,68.1
step
Discover Splinterspear Junction |achieve 782/3 |goto Swamp of Sorrows 22.3,49.4
step
Discover Misty Valley |achieve 782/1 |goto Swamp of Sorrows 14.7,35.8
step
Discover The Harborage |achieve 782/2 |goto Swamp of Sorrows 28.8,32.1
step
|achieve 782
step
_Congratulations!_
You Earned the "Explore Swamp of Sorrows" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Tirisfal Glades",{
condition_end=function() return achieved(768) end,
achieveid={768},
patch='30002',
description="\nExplore Tirisfal Glades, revealing the following covered areas of the world map:\n\nDeathknell\n"..
"Agamand Mills\nCold Hearth Manor\nGarren's Haunt\nBalnir Farmstead\nScarlet Watch Post\nThe Bulwark\n"..
"Ruins of Lordaeron\nSolliden Farmstead\nNightmare Vale\nBrill\nBrightwater Lake\nCrusader Outpost\n"..
"Venomweb Vale\nScarlet Monastery Entrance\nCalston Estate",
},[[
step
Discover Deathknell |achieve 768/1 |goto Tirisfal Glades 32.2,63.8
step
Discover Nightmare Vale |achieve 768/4 |goto Tirisfal Glades 45.1,65.4
step
Discover Cold Hearth Manor |achieve 768/5 |goto Tirisfal Glades 53.8,58.7
step
Discover Calston Estate |achieve 768/16 |goto Tirisfal Glades 46.2,51.4
step
Discover Solliden Farmstead |achieve 768/2 |goto Tirisfal Glades 38.4,48.9
step
Discover Agamand Mills |achieve 768/3 |goto Tirisfal Glades 45.6,32.9
step
Discover Garren's Haunt |achieve 768/7 |goto Tirisfal Glades 56.9,35.6
step
Discover Brill |achieve 768/6 |goto Tirisfal Glades 59.7,50.9
step
Discover Brightwater Lake |achieve 768/8 |goto Tirisfal Glades 68.3,45.0
step
Discover Scarlet Watch Post |achieve 768/11 |goto Tirisfal Glades 78.4,26.9
step
Discover Scarlet Monastery Entrance |achieve 768/14 |goto Tirisfal Glades 85.08,31.34
step
Discover Venomweb Vale |achieve 768/12 |goto Tirisfal Glades 87.00,47.2
step
Discover Crusader Outpost |achieve 768/10 |goto Tirisfal Glades 79.1,54.7
step
Discover Balnir Farmstead |achieve 768/9 |goto Tirisfal Glades 73.7,60.0
step
Discover Ruins of Lordaeron |achieve 768/13 |goto Tirisfal Glades 61.87,67.55
step
Discover The Bulwark |achieve 768/15 |goto Tirisfal Glades 84.9,69.4
step
|achieve 768
step
_Congratulations!_
You Earned the "Explore Tirisfal Glades" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Western Plaguelands",{
condition_end=function() return achieved(770) end,
achieveid={770},
patch='30002',
description="\nExplore Western Plaguelands, revealing the following covered areas of the world map:\n\nDarrowmere Lake\n"..
"Sorrow Hill\nThe Bulwark\nDalson's Farm\nNorthridge Lumber Camp\nRedpine Dell\nThe Weeping Cave\nCaer Darrow"..
"\nAndorhal\nFelstone Field\nThe Writhing Haunt\nHearthglen\nGahrron's Withering\nThondroril River",
},[[
step
Discover The Bulwark |achieve 770/5 |goto Western Plaguelands 27.0,57.7
step
Discover Felstone Field |achieve 770/6 |goto Western Plaguelands 36.5,54.6
step
Discover Dalson's Farm |achieve 770/7 |goto Western Plaguelands 45.1,51.2
step
Discover Redpine Dell |achieve 770/11 |goto Western Plaguelands 46.0,45.5
step
Discover Northridge Lumber Camp |achieve 770/9 |goto Western Plaguelands 47.2,33.4
step
Discover Hearthglen |achieve 770/10 |goto Western Plaguelands 44.9,17.0
step
Discover The Weeping Cave |achieve 770/13 |goto Western Plaguelands 64.4,40.1
step
Discover Thondroril River |achieve 770/14 |goto Western Plaguelands 69.6,50.7
step
Discover Gahrron's Withering |achieve 770/12 |goto Western Plaguelands 63.9,58.2
step
Discover The Writhing Haunt |achieve 770/8 |goto Western Plaguelands 54.9,66.2
step
Discover Andorhal |achieve 770/4 |goto Western Plaguelands 47.63,67.18
step
Discover Sorrow Hill |achieve 770/3 |goto Western Plaguelands 54.6,85.5
step
Discover Darrowmere Lake |achieve 770/1 |goto Western Plaguelands 60.03,74.66
step
Discover Caer Darrow |achieve 770/2 |goto Western Plaguelands 68.3,81.1
step
|achieve 770
step
_Congratulations!_
You Earned the "Explore Western Plaguelands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Westfall",{
condition_end=function() return achieved(802) end,
achieveid={802},
patch='30002',
description="\nExplore Westfall, revealing the following covered areas of the world map:\n\nSentinel Hill\n"..
"Furlbrow's Pumpkin Farm\nJangolode Mine\nThe Dead Acre\nAlexston Farmstead\nThe Dust Plains\n"..
"The Dagger Hills\nSaldean's Farm\nThe Jansen Stead\nThe Molsen Farm\nDemont's Place\nMoonbrook\n"..
"The Raging Chasm",
},[[
step
Discover The Dagger Hills |achieve 802/11 |goto Westfall 44.9,82.0
step
Discover Demont's Place |achieve 802/10 |goto Westfall 33.9,73.6
step
Discover Moonbrook |achieve 802/8 |goto Westfall 42.4,65.5
step
Discover Alexston Farmstead |achieve 802/9 |goto Westfall 38.2,52.3
step
Discover The Raging Chasm |achieve 802/12 |goto Westfall 39.2,43.2
step
Discover the Molsen Farm |achieve 802/6 |goto Westfall 45.3,34.9
step
Discover Jangolode Mine |achieve 802/5 |goto Westfall 44.9,23.9
step
Discover Furlbrow's Pumpkin Farm |achieve 802/3 |goto Westfall 51.0,21.4
step
Discover The Jansen Stead |achieve 802/4 |goto Westfall 57.7,15.8
step
Discover Saldean's Farm |achieve 802/2 |goto Westfall 54.4,32.3
step
Discover Sentinel Hill |achieve 802/1 |goto Westfall 55.9,49.3
step
Discover The Dead Acre |achieve 802/7 |goto Westfall 61.5,59.2
step
Discover The Dust Plains |achieve 802/13 |goto Westfall 64,72
step
|achieve 802
step
_Congratulations!_
You Earned the "Explore Westfall" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Wetlands",{
condition_end=function() return achieved(841) end,
achieveid={841},
patch='30001',
description="\nExplore Wetlands, revealing the following covered areas of the world map:\n\nMenethil Harbor\n"..
"Bluegill Marsh\nSundown Marsh\nIronbeard's Tomb\nAngerfang Encampment\nGreenwarden's Grove\n"..
"Direforge Hill\nSlabchisel's Survey\nBlack Channel Marsh\nWhelgar's Excavation Site\nSaltspray Glen\n"..
"Dun Modr\nThelgen Rock\nMosshide Fen\nDun Algaz\nRaptor Ridge",
},[[
step
Discover Raptor Ridge |achieve 841/16 |goto Wetlands 67.9,34.9
step
Discover Direforge Hill |achieve 841/13 |goto Wetlands 60.87,25.46
step
Discover Greenwarden's Grove |achieve 841/11 |goto Wetlands 57.9,40.6
step
Discover Mosshide Fen |achieve 841/12 |goto Wetlands 61.9,56.6
step
Discover Slabchisel's Survey |achieve 841/15 |goto Wetlands 58.4,71.0
step
Discover Dun Algaz |achieve 841/14 |goto Wetlands 50.0,76.4
step
Discover Thelgen Rock |achieve 841/10 |goto Wetlands 52.2,61.4
step
Discover Angerfang Encampment |achieve 841/9 |goto Wetlands 48.5,48.0
step
Discover Whelgar's Excavation Site |achieve 841/4 |goto Wetlands 35.8,48.9
step
Discover Menethil Harbor |achieve 841/1 |goto Wetlands 10.2,58.2
step
Discover Black Channel Marsh |achieve 841/2 |goto Wetlands 19.3,46.9
step
Discover Bluegill Marsh |achieve 841/3 |goto Wetlands 18.9,36.0
step
Discover Sundown Marsh |achieve 841/5 |goto Wetlands 24.5,24.3
step
Discover Saltspray Glen |achieve 841/6 |goto Wetlands 32.5,17.6
step
Discover Ironbeard's Tomb |achieve 841/7 |goto Wetlands 43.6,25.9
step
Discover Dun Modr |achieve 841/8 |goto Wetlands 46.9,16.5
step
|achieve 841
step
_Congratulations!_
You Earned the "Explore Wetlands" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Ashenvale",{
condition_end=function() return achieved(845) end,
achieveid={845},
patch='30003',
description="\nExplore Ashenvale, revealing the following covered areas of the world map:\n\nLake Falathim\n"..
"The Zoram Strand\nSilverwind Refuge\nThistlefur Village\nAstranaar\nThe Howling Vale\nSatyrnaar\n"..
"Fallen Sky Lake\nWarsong Lumber Camp\nOrendil's Retreat\nThunder Peak\nThe Shrine of Aessina\n"..
"Maestra's Post\nThe Ruins of Stardust\nRaynewood Retreat\nSplintertree Post\nBough Shadow\nFelfire Hill",
},[[
step
Discover Silverwind Refuge |achieve 845/3 |goto Ashenvale 50.15,67.08
step
Discover Fallen Sky Lake |achieve 845/13 |goto Ashenvale 66,82
step
Discover The Ruins of Stardust |achieve 845/10 |goto Ashenvale 32.6,65.6
step
Discover Astranaar |achieve 845/9 |goto Ashenvale 35.9,50.2
step
Discover The Shrine of Aessina |achieve 845/8 |goto Ashenvale 21.4,55.3
step
Discover Lake Falathim |achieve 845/5 |goto Ashenvale 20.2,41.1
step
Discover Maestra's Post |achieve 845/6 |goto Ashenvale 27.5,37.7
step
Discover The Zoram Strand |achieve 845/1 |goto Ashenvale 14,23
step
Discover Orendil's Retreat |achieve 845/2 |goto Ashenvale 26.0,19.7
step
Discover Thistlefur Village |achieve 845/7 |goto Ashenvale 37.0,32.9
step
Discover Thunder Peak |achieve 845/4 |goto Ashenvale 48.9,46.4
step
Discover The Howling Vale |achieve 845/11 |goto Ashenvale 53.2,32.6
step
Discover Raynewood Retreat |achieve 845/12 |goto Ashenvale 59.7,50.0
step
Discover Splintertree Post |achieve 845/14 |goto Ashenvale 68.2,47.9
step
Discover Satyrnaar |achieve 845/15 |goto Ashenvale 80.4,49.7
step
Discover Felfire Hill |achieve 845/18 |goto Ashenvale 83.1,65.3
step
Discover Warsong Lumber Camp |achieve 845/17 |goto Ashenvale 87.4,58.6
step
Discover Bough Shadow |achieve 845/16 |goto Ashenvale 93.4,39.2
step
|achieve 845
step
_Congratulations!_
You Earned the "Explore Ashenvale" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Azshara",{
condition_end=function() return achieved(852) end,
achieveid={852},
patch='30003',
description="\nExplore Azshara, revealing the following covered areas of the world map:\n\nBear's Head\n"..
"Gallywix Pleasure Palace\nBilgewater Harbor\nTower of Eldara\nDarnassian Base Camp\nOrgrimmar "..
"Rear Gate\nSouthridge Beach\nLake Mennar\nStorm Cliffs\nThe Shattered Strand\nBitter Reaches\n"..
"Ruins of Arkkoran\nThe Secret Lab\nBlackmaw Hold\nRuins of Eldarath\nRavencrest Monument\n"..
"The Ruined Reaches",
},[[
step
Discover Darnassian Base Camp |achieve 852/7 |goto Azshara 52.25,26.95
step
Discover Bitter Reaches |achieve 852/4 |goto Azshara 73.69,20.98
step
Discover Tower of Eldara |achieve 852/5 |goto Azshara 80.90,32.34
step
Discover Ruins of Arkkoran |achieve 852/6 |goto Azshara 69.89,34.83
step
Discover Bilgewater Harbor |achieve 852/3 |goto Azshara 58.29,51.00
step
Discover Southridge Beach |achieve 852/13 |goto Azshara 68.41,75.62
step
Discover Ravencrest Monument |achieve 852/14 |goto Azshara 64.65,79.31
step
Discover Storm Cliffs |achieve 852/17 |goto Azshara 56.99,76.50
step
Discover The Secret Lab |achieve 852/8 |goto Azshara 46.54,76.25
step
Discover The Ruined Reaches |achieve 852/16 |goto Azshara 39.83,84.67
step
Discover Lake Mennar |achieve 852/15 |goto Azshara 35.72,73.99
step
Discover Orgrimmar Rear Gate |achieve 852/11 |goto Azshara 26.75,77.96
step
Discover Gallywix Pleasure Palace |achieve 852/1 |goto Azshara 21.04,57.1
step
Discover The Shattered Strand |achieve 852/2 |goto Azshara 39.21,55.46
step
Discover Ruins of Eldarath |achieve 852/12 |goto Azshara 31.95,50.02
step
Discover Bear's Head |achieve 852/9 |goto Azshara 25.47,38.00
step
Discover Blackmaw Hold |achieve 852/10 |goto Azshara 33.06,32.76
step
|achieve 852
step
_Congratulations!_
You Earned the "Explore Azshara" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Azuremyst Isle",{
condition_end=function() return achieved(860) end,
achieveid={860},
patch='30003',
description="\nExplore Azuremyst Isle, revealing the following covered areas of the world map:\n\nAmmen Vale\n"..
"Azure Watch\nEmberglade\nGeezle's Camp\nOdesyus' Landing\nPod Wreckage\nSilvermyst Isle\nThe Exodar\n"..
"Wrathscale Point\nAmmen Ford\nBristlelimb Village\nFairbridge Strand\nMoongraze Woods\nPod Cluster\n"..
"Silting Shore\nStillpine Hold\nValaar's Berth",
},[[
step
Discover Valaar's Berth |achieve 860/16 |goto Azuremyst Isle 23.7,54.0
step
Discover Bristlelimb Village |achieve 860/4 |goto Azuremyst Isle 26.5,65.1
step
Discover Silvermyst Isle |achieve 860/13 |goto Azuremyst Isle 12.7,78.6
step
Discover Wrathscale Point |achieve 860/17 |goto Azuremyst Isle 32.0,79.3
step
Discover Pod Cluster |achieve 860/10 |goto Azuremyst Isle 37.0,58.4
step
Discover Azure Watch |achieve 860/3 |goto Azuremyst Isle 49.3,50.7
step
Discover Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle 46.6,72.4
step
Discover Pod Wreckage |achieve 860/11 |goto Azuremyst Isle 52.7,61.3
step
Discover Geezle's Camp |achieve 860/7 |goto Azuremyst Isle 58.3,67.0
step
Discover Ammen Ford |achieve 860/2 |goto Azuremyst Isle 61.3,53.6
step
Discover Ammen Vale |achieve 860/1 |goto Azuremyst Isle 77.6,43.7
step
Discover Moongraze Woods |achieve 860/8 |goto Azuremyst Isle 52.7,41.8
step
Discover The Exodar |achieve 860/15 |goto Azuremyst Isle 29.2,35.1
step
Discover Silting Shore |achieve 860/12 |goto Azuremyst Isle 35.3,12.4
step
Discover Stillpine Hold |achieve 860/14 |goto Azuremyst Isle 46.0,20.0
step
Discover Emberglade |achieve 860/5 |goto Azuremyst Isle 58.8,17.6
step
Discover Fairbridge Strand |achieve 860/6 |goto Azuremyst Isle 47.7,6.6
step
|achieve 860
step
_Congratulations!_
You Earned the "Explore Azuremyst Isle" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Bloodmyst Isle",{
condition_end=function() return achieved(861) end,
achieveid={861},
patch='30002',
description="\nExplore Bloodmyst Isle, revealing the following covered areas of the world map:\n\nAmberweb Pass\n"..
"Blacksilt Shore\nBloodcurse Isle\nBristlelimb Enclave\nMiddenvale\nNazzivian\nRuins of Loreth'Aran\n"..
"Tel'athion's Camp\nThe Bloodwash\nThe Cryo-Core\nThe Hidden Reef\nThe Vector Coil\nVeridian Point\n"..
"Wrathscale Lair\nAxxarien\nBladewood\nBlood Watch\nKessel's Crossing\nMystwood\nRagefeather Ridge\n"..
"Talon Stand\nThe Bloodcursed Reef\nThe Crimson Reach\nThe Foul Pool\nThe Lost Fold\nThe Warp Piston\n"..
"Vindicator's Rest\nWyrmscar Island",
},[[
step
Discover Kessel's Crossing |achieve 861/8 |goto Bloodmyst Isle 61.9,90.0
step
Discover The Lost Fold |achieve 861/22 |goto Bloodmyst Isle 57.4,81.0
step
Discover Bristlelimb Enclave |achieve 861/7 |goto Bloodmyst Isle 67.0,78.2
step
Discover Wrathscale Lair |achieve 861/27 |goto Bloodmyst Isle 69.0,66.6
step
Discover Bloodcurse Isle |achieve 861/5 |goto Bloodmyst Isle 85.4,52.8
step
Discover Wyrmscar Island |achieve 861/28 |goto Bloodmyst Isle 72.0,29.6
step
Discover Talon Stand |achieve 861/14 |goto Bloodmyst Isle 73.4,20.9
step
Discover The Bloodcursed Reef |achieve 861/16 |goto Bloodmyst Isle 81.0,20.1
step
Discover Veridian Point |achieve 861/25 |goto Bloodmyst Isle 74.4,7.5
step
Discover The Crimson Reach |achieve 861/18 |goto Bloodmyst Isle 62.6,25.4
step
Discover The Warp Piston |achieve 861/24 |goto Bloodmyst Isle 54.2,17.1
step
Discover Ragefeather Ridge |achieve 861/12 |goto Bloodmyst Isle 56.1,34.9
step
Discover Ruins of Loreth'Aran |achieve 861/13 |goto Bloodmyst Isle 61.6,45.2
step
Discover Blood Watch |achieve 861/6 |goto Bloodmyst Isle 54.6,55.4
step
Discover Middenvale |achieve 861/9 |goto Bloodmyst Isle 51.7,76.6
step
Discover Mystwood |achieve 861/10 |goto Bloodmyst Isle 43.9,84.7
step
Discover Blacksilt Shore |achieve 861/3 |goto Bloodmyst Isle 33.2,90.3
step
Discover Nazzivian |achieve 861/11 |goto Bloodmyst Isle 37.9,75.7
step
Discover The Cryo-Core |achieve 861/19 |goto Bloodmyst Isle 38.5,59.5
step
Discover Bladewood |achieve 861/4 |goto Bloodmyst Isle 45.9,45.1
step
Discover Axxarien |achieve 861/2 |goto Bloodmyst Isle 40.8,33.0
step
Discover The Bloodwash |achieve 861/17 |goto Bloodmyst Isle 38.7,21.9
step
Discover The Hidden Reef |achieve 861/21 |goto Bloodmyst Isle 32.7,19.8
step
Discover The Foul Pool |achieve 861/20 |goto Bloodmyst Isle 29.2,36.8
step
Discover Vindicator's Rest |achieve 861/26 |goto Bloodmyst Isle 30.2,46.2
step
Discover Tel'athion's Camp |achieve 861/15 |goto Bloodmyst Isle 24.4,41.2
step
Discover Amberweb Pass |achieve 861/1 |goto Bloodmyst Isle 18.8,30.9
step
Discover The Vector Coil |achieve 861/23 |goto Bloodmyst Isle 18.0,53.4
step
|achieve 861
step
_Congratulations!_
You Earned the "Explore Bloodmyst Isle" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Darkshore",{
condition_end=function() return achieved(844) end,
achieveid={844},
patch='30003',
description="\nExplore Darkshore, revealing the following covered areas of the world map:\n\nLor'danel\n"..
"Ruins of Auberdine\nShatterspear War Camp\nWithering Thicket\nThe Eye of the Vortex\nNazj'vel\n"..
"The Master's Glaive\nShatterspear Vale\nWildbend River\nRuins of Mathystra\nAmeth'Aran",
},[[
step
Discover The Master's Glaive |achieve 844/11 |goto Darkshore 40.3,86.2
step
Discover Nazj'vel |achieve 844/10 |goto Darkshore 32.0,84.0
step
Discover Wildbend River |achieve 844/4 |goto Darkshore 42.5,69.5
step
Discover Ameth'Aran |achieve 844/8 |goto Darkshore 43.7,60.5
step
Discover Withering Thicket |achieve 844/5 |goto Darkshore 43.96,39.82
step
Discover The Eye of the Vortex |achieve 844/7 |goto Darkshore 42.9,54.9
step
Discover Ruins of Auberdine |achieve 844/1 |goto Darkshore 37.9,44.1
step
Discover Lor'danel |achieve 844/9 |goto Darkshore 51.2,19.2
step
Discover Ruins of Mathystra |achieve 844/6 |goto Darkshore 63.9,21.9
step
Discover Shatterspear Vale |achieve 844/2 |goto Darkshore 72.5,17.3
step
Discover Shatterspear War Camp |achieve 844/3 |goto Darkshore 65.9,7.0
step
|achieve 844
step
_Congratulations!_
You Earned the "Explore Darkshore" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Desolace",{
condition_end=function() return achieved(848) end,
achieveid={848},
patch='30003',
description="\nExplore Desolace, revealing the following covered areas of the world map:\n\nTethris Aran\n"..
"Nijel's Point\nThunder Axe Fortress\nMagram Territory\nValley of Spears\nShadowprey Village\n"..
"Mannoroc Coven\nShadowbreak Ravine\nThargad's Camp\nSargeron\nCenarion Wildlands\nRanazjar Isle\n"..
"Kodo Graveyard\nGelkis Village\nShok'Thokar\nSlitherblade Shore",
},[[
step
Discover Gelkis Village |achieve 848/12 |goto Desolace 36.1,88.6
step
Discover Mannoroc Coven |achieve 848/13 |goto Desolace 51.3,78.5
step
Discover Thargad's Camp |achieve 848/2 |goto Desolace 36.5,69.9
step
Discover Shadowprey Village |achieve 848/11 |goto Desolace 24.2,70.9
step
Discover Valley of Spears |achieve 848/9 |goto Desolace 35.34,57.2
step
Discover Slitherblade Shore |achieve 848/16 |goto Desolace 29.9,29.4
step
Discover Ranazjar Isle |achieve 848/8 |goto Desolace 28.7,9.01
step
Discover Tethris Aran |achieve 848/1 |goto Desolace 51.5,10.0
step
Discover Thunder Axe Fortress |achieve 848/5 |goto Desolace 54.5,25.2
step
Discover Nijel's Point |achieve 848/3 |goto Desolace 66.7,8.7
step
Discover Sargeron |achieve 848/4 |goto Desolace 78.2,21.6
step
Discover Magram Territory |achieve 848/7 |goto Desolace 74.7,45.6
step
Discover Cenarion Wildlands |achieve 848/6 |goto Desolace 56.1,47.3
step
Discover Kodo Graveyard |achieve 848/10 |goto Desolace 50.7,59.0
step
Discover Shok'Thokar |achieve 848/14 |goto Desolace 70.6,74.8
step
Discover Shadowbreak Ravine |achieve 848/15 |goto Desolace 80.3,79.3
step
|achieve 848
step
_Congratulations!_
You Earned the "Explore Desolace" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Dustwallow Marsh",{
condition_end=function() return achieved(850) end,
achieveid={850},
patch='30003',
description="\nExplore Dustwallow Marsh, revealing the following covered areas of the world map:\n\nTheramore Isle\n"..
"Direhorn Post\nShady Rest Inn\nBrackenwall Village\nAlcaz Island\nBlackhoof Village\nDreadmurk Shore\n"..
"Mudsprocket\nWyrmbog",
},[[
step
Discover Shady Rest Inn |achieve 850/5 |goto Dustwallow Marsh 29.7,49.0
step
Discover Brackenwall Village |achieve 850/7 |goto Dustwallow Marsh 36.3,30.4
step
Discover Blackhoof Village |achieve 850/2 |goto Dustwallow Marsh 41.4,12.4
step
Discover Alcaz Island |achieve 850/9 |goto Dustwallow Marsh 76.0,17.5
step
Discover Dreadmurk Shore |achieve 850/6 |goto Dustwallow Marsh 61.5,30.2
step
Discover Theramore Isle |achieve 850/1 |goto Dustwallow Marsh 67.1,49.8
step
Discover Direhorn Post |achieve 850/3 |goto Dustwallow Marsh 46.6,46.1
step
Discover Mudsprocket |achieve 850/4 |goto Dustwallow Marsh 41.4,75.1
step
Discover Wyrmbog |achieve 850/8 |goto Dustwallow Marsh 43.4,75.5
step
|achieve 850
step
_Congratulations!_
You Earned the "Explore Dustwallow Marsh" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Durotar",{
condition_end=function() return achieved(728) end,
achieveid={728},
patch='30003',
description="\nExplore Durotar, revealing the following covered areas of the world map:\n\nValley of Trials\n"..
"Southfury Watershed\nEcho Isles\nRazor Hill\nThunder Ridge\nSkull Rock\nNorthwatch Foothold\n"..
"Sen'jin Village\nTiragarde Keep\nRazormane Grounds\nDrygulch Ravine\nOrgrimmar",
},[[
step
Discover Orgrimmar |achieve 728/12 |goto Orgrimmar 45.4,8.5
step
Discover Skull Rock |achieve 728/11 |goto Durotar 54.0,9.0
step
Discover Drygulch Ravine |achieve 728/10 |goto Durotar 52.4,24.2
step
Discover Razor Hill |achieve 728/7 |goto Durotar 53.5,43.4
step
Discover Tiragarde Keep |achieve 728/6 |goto Durotar 58.1,60.2
step
Discover Echo Isles |achieve 728/5 |goto Durotar 66.6,82.9
step
Discover Sen'jin Village |achieve 728/4 |goto Durotar 56.1,75.8
step
Discover Northwatch Foothold |achieve 728/2 |goto Durotar 48.5,79.1
step
Discover Valley of Trials |achieve 728/1 |goto Durotar 44.5,62.2
step
Discover Razormane Grounds |achieve 728/8 |goto Durotar 44.6,50.6
step
Discover Southfury Watershed |achieve 728/3 |goto Durotar 40.5,40.0
step
Discover Thunder Ridge |achieve 728/9 |goto Durotar 40.3,24.7
step
|achieve 728
step
_Congratulations!_
You Earned the "Explore Durotar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Felwood",{
condition_end=function() return achieved(853) end,
achieveid={853},
patch='30003',
description="\nExplore Felwood, revealing the following covered areas of the world map:\n\nFelpaw Village\n"..
"Irontree Woods\nShatter Scar Vale\nJaedenar\nJadefire Glen\nDeadwood Village\nTalonbranch Glade\n"..
"Jadefire Run\nBloodvenom Falls\nRuins of Constellas\nEmerald Sanctuary\nMorlos'Aran",
},[[
step
Discover Felpaw Village |achieve 853/1 |goto Felwood 61.2,11.5
step
Discover Talonbranch Glade |achieve 853/2 |goto Felwood 62.6,26.7
step
Discover Irontree Woods |achieve 853/3 |goto Felwood 50.3,26.0
step
Discover Jadefire Run |achieve 853/4 |goto Felwood 43.6,18.6
step
Discover Shatter Scar Vale |achieve 853/5 |goto Felwood 43.1,41.9
step
Discover Bloodvenom Falls |achieve 853/6 |goto Felwood 41,47
step
Discover Emerald Sanctuary |achieve 853/10 |goto Felwood 52.2,78.2
step
Discover Morlos'Aran |achieve 853/12 |goto Felwood 56.6,86.8
step
Discover Deadwood Village |achieve 853/11 |goto Felwood 48.0,89.2
step
Discover Jadefire Glen |achieve 853/9 |goto Felwood 41.8,85.4
step
Discover Ruins of Constellas |achieve 853/8 |goto Felwood 38.0,72.3
step
Discover Jaedenar |achieve 853/7 |goto Felwood 37.0,59.1
step
|achieve 853
step
_Congratulations!_
You Earned the "Explore Felwood" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Feralas",{
condition_end=function() return achieved(849) end,
achieveid={849},
patch='30003',
description="\nExplore Feralas, revealing the following covered areas of the world map:\n\nLower Wilds\n"..
"The Twin Colossals\nDire Maul\nRuins of Isildien\nCamp Mojache\nGordunni Outpost\nFeral Scar Vale"..
"\nFeathermoon Stronghold\nRuins of Feathermoon\nThe Forgotten Coast\nThe Writhing Deep\nGrimtotem "..
"Compound\nDarkmist Ruins",
},[[
step
Discover The Writhing Deep |achieve 849/8 |goto Feralas 75.9,62.4
step
Discover Lower Wilds |achieve 849/1 |goto Feralas 83.0,40.9
step
Discover Camp Mojache |achieve 849/9 |goto Feralas 76.5,44.4
step
Discover Gordunni Outpost |achieve 849/11 |goto Feralas 75.6,29.8
step
Discover Grimtotem Compound |achieve 849/10 |goto Feralas 68.7,40.3
step
Discover Dire Maul |achieve 849/5 |goto Feralas 60.4,35.6
step
Discover Darkmist Ruins |achieve 849/12 |goto Feralas 67.7,58.5
step
Discover Ruins of Isildien |achieve 849/7 |goto Feralas 58.6,73.0
step
Discover Feral Scar Vale |achieve 849/6 |goto Feralas 55.4,56.2
step
Discover The Forgotten Coast |achieve 849/4 |goto Feralas 49.7,49.2
step
Discover Feathermoon Stronghold |achieve 849/13 |goto Feralas 45.8,49.6
step
Discover Ruins of Feathermoon |achieve 849/2 |goto Feralas 28.5,49.1
step
Discover The Twin Colossals |achieve 849/3 |goto Feralas 46.3,17.9
step
|achieve 849
step
_Congratulations!_
You Earned the "Explore Feralas" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Moonglade",{
condition_end=function() return achieved(855) end,
achieveid={855},
patch='30001',
description="\nExplore Moonglade, revealing the following covered areas of the world map:\n\nNighthaven\n"..
"Lake Elune'ara\nShrine of Remulos\nStormrage Barrow Dens",
},[[
step
Discover Stormrage Barrow Dens |achieve 855/4 |goto Moonglade 67.8,53.8
step
Discover Lake Elune'ara |achieve 855/1 |goto Moonglade 52.5,55.4
step
Discover Nighthaven |achieve 855/2 |goto Moonglade 48.2,37.9
step
Discover Shrine of Remulos |achieve 855/3 |goto Moonglade 36.3,38.8
step
|achieve 855
step
_Congratulations!_
You Earned the "Explore Moonglade" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Mulgore",{
condition_end=function() return achieved(736) end,
achieveid={736},
patch='30003',
description="\nExplore Mulgore, revealing the following covered areas of the world map:\n\nRed Cloud Mesa\n"..
"Bloodhoof Village\nThe Rolling Plains\nRavaged Caravan\nThunderhorn Water Well\nRed Rocks\n"..
"Wildmane Water Well\nPalemane Rock\nWinterhoof Water Well\nThe Venture Co. Mine\nWindfury Ridge\n"..
"The Golden Plains\nBael'dun Digsite",
},[[
step
Discover Bael'dun Digsite |achieve 736/10 |goto Mulgore 32.3,50.6
step
Discover Palemane Rock |achieve 736/2 |goto Mulgore 35.5,61.3
step
Discover Red Cloud Mesa |achieve 736/1 |goto Mulgore 53.8,85.8
step
Discover Winterhoof Water Well |achieve 736/4 |goto Mulgore 53.7,66.7
step
Discover Bloodhoof Village |achieve 736/3 |goto Mulgore 47.8,58.4
step
Discover The Rolling Plains |achieve 736/5 |goto Mulgore 61.1,60.5
step
Discover The Venture Co. Mine |achieve 736/6 |goto Mulgore 62.7,42.6
step
Discover Ravaged Caravan |achieve 736/7 |goto Mulgore 54.2,47.9
step
Discover Thunderhorn Water Well |achieve 736/9 |goto Mulgore 44.9,43.5
step
Discover Red Rocks |achieve 736/11 |goto Mulgore 59.82,19.9
step
Discover The Golden Plains |achieve 736/8 |goto Mulgore 54.2,20.9
step
Discover Windfury Ridge |achieve 736/12 |goto Mulgore 51.14,09.25
step
Discover Wildmane Water Well |achieve 736/13 |goto Mulgore 43.1,14.2
step
|achieve 736
step
_Congratulations!_
You Earned the "Explore Mulgore" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Northern Barrens",{
condition_end=function() return achieved(750) end,
achieveid={750},
patch='30008',
description="\nExplore Northern Barrens, revealing the following covered areas of the world map:\n\nRatchet\n"..
"Boulder Lode Mine\nThe Mor'shan Rampart\nDreadmist Peak\nThe Forgotten Pools\nFar Watch Post\n"..
"The Crossroads\nLushwater Oasis\nThe Sludge Fen\nThe Dry Hills\nGrol'dom Farm\nThorn Hill\n"..
"The Stagnant Oasis\nThe Merchant Coast",
},[[
step
Discover Boulder Lode Mine |achieve 750/1 |goto Northern Barrens 67.2,12.1
step
Discover The Sludge Fen |achieve 750/4 |goto Northern Barrens 55.7,18.5
step
Discover The Mor'shan Rampart |achieve 750/3 |goto Northern Barrens 39.6,14.1
step
Discover The Dry Hills |achieve 750/6 |goto Northern Barrens 25.5,31.7
step
Discover The Forgotten Pools |achieve 750/7 |goto Northern Barrens 36.8,45.9
step
Discover Dreadmist Peak |achieve 750/5 |goto Northern Barrens 43.1,35.4
step
Discover Grol'dom Farm |achieve 750/8 |goto Northern Barrens 54.9,41.1
step
Discover Far Watch Post |achieve 750/9 |goto Northern Barrens 67.0,41.3
step
Discover Thorn Hill |achieve 750/10 |goto Northern Barrens 58.8,50.0
step
Discover The Crossroads |achieve 750/11 |goto Northern Barrens 50.2,57.3
step
Discover Lushwater Oasis |achieve 750/2 |goto Northern Barrens 40.3,73.9
step
Discover The Stagnant Oasis |achieve 750/12 |goto Northern Barrens 55.7,78.6
step
Discover Ratchet |achieve 750/13 |goto Northern Barrens 67.9,72.4
step
Discover The Merchant Coast |achieve 750/14 |goto Northern Barrens 70.3,84.1
step
|achieve 750
step
_Congratulations!_
You Earned the "Explore Northern Barrens" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Silithus",{
condition_end=function() return achieved(856) end,
achieveid={856},
patch='30008',
description="\nExplore Silithus, revealing the following covered areas of the world map:\n\nHive'Regal\n"..
"The Crystal Vale\nCenarion Hold\nSouthwind Village\nHive'Ashi\nHive'Zora\nThe Scarab Wall\n"..
"Valor's Rest",
},[[
step
Discover Hive'Regal |achieve 856/5 |goto Silithus 60.0,71.7
step
Discover The Scarab Wall |achieve 856/6 |goto Silithus 32.0,78.9
step
Discover Hive'Zora |achieve 856/4 |goto Silithus 31.4,53.8
step
Discover The Crystal Vale |achieve 856/1 |goto Silithus 30.9,16.0
step
Discover Hive'Ashi |achieve 856/7 |goto Silithus 49.4,22.4
step
Discover Cenarion Hold |achieve 856/3 |goto Silithus 54.4,34.2
step
Discover Southwind Village |achieve 856/2 |goto Silithus 65.3,47.4
step
Discover Valor's Rest |achieve 856/8 |goto Silithus 81.3,17.8
step
|achieve 856
step
_Congratulations!_
You Earned the "Explore Silithus" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Southern Barrens",{
condition_end=function() return achieved(4996) end,
achieveid={4996},
patch='40003',
description="\nExplore Southern Barrens, revealing the following covered areas of the world map:\n\nBael Modan\n"..
"Forward Command\nHonor's Stand\nNorthwatch Hold\nRuins of Taurajo\nVendetta Point\nFrazzlecraz Motherlode\n"..
"Battlescar\nHunter's Hill\nRazorfen Kraul\nThe Overgrowth",
},[[
step
Discover Northwatch Hold |achieve 4996/7 |goto Southern Barrens 68.8,49.1
step
Discover Forward Command |achieve 4996/3 |goto Southern Barrens 52.2,48.6
step
Discover The Overgrowth |achieve 4996/10 |goto Southern Barrens 47.8,33.68
step
Discover Hunter's Hill |achieve 4996/6 |goto Southern Barrens 39.3,22.3
step
Discover Honor's Stand |achieve 4996/5 |goto Southern Barrens 36.5,11.1
step
Discover Vendetta Point |achieve 4996/11 |goto Southern Barrens 42.4,44.0
step
Discover Ruins of Taurajo |achieve 4996/9 |goto Southern Barrens 44.9,54.3
step
Discover Battlescar |achieve 4996/2 |goto Southern Barrens 46.17,68.15
step
Discover Frazzlecraz Motherlode |achieve 4996/4 |goto Southern Barrens 41.0,78.2
step
Discover Razorfen Kraul |achieve 4996/8 |goto Southern Barrens 38.51,88.95
step
Discover Bael Modan |achieve 4996/1 |goto Southern Barrens 50.7,84.00
step
|achieve 4996
step
_Congratulations!_
You Earned the "Explore Southern Barrens" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Stonetalon Mountains",{
condition_end=function() return achieved(847) end,
achieveid={847},
patch='30003',
description="\nExplore Stonetalon Mountains, revealing the following covered areas of the world map:\n\nBattlescar Valley\n"..
"Ruins of Eldre'thar\nUnearthed Grounds\nWindshear Hold\nMalaka'jin\nBoulderslide Ravine\nWindshear Crag\n"..
"The Charred Vale\nStonetalon Peak\nKrom'gar Fortress\nThal'darah Overlook\nWebwinder Hollow\nCliffwalker Post\n"..
"Webwinder Path\nGreatwood Vale\nSun Rock Retreat\nMirkfallon Lake",
},[[
step
Discover Malaka'jin |achieve 847/9 |goto Stonetalon Mountains 72.6,92.4
step
Discover Unearthed Grounds |achieve 847/5 |goto Stonetalon Mountains 76.7,75.8
step
Discover Greatwood Vale |achieve 847/12 |goto Stonetalon Mountains 69.6,85.1
step
Discover Boulderslide Ravine |achieve 847/11 |goto Stonetalon Mountains 63.4,88.7
step
Discover Webwinder Path |achieve 847/10 |goto Stonetalon Mountains 59.6,78.9
step
Discover Webwinder Hollow |achieve 847/6 |goto Stonetalon Mountains 57.2,72.7
step
Discover Ruins of Eldre'thar |achieve 847/3 |goto Stonetalon Mountains 48.8,76.3
step
Discover Sun Rock Retreat |achieve 847/14 |goto Stonetalon Mountains 49.3,63.4
step
Discover The Charred Vale |achieve 847/15 |goto Stonetalon Mountains 31.6,71.5
step
Discover Battlescar Valley |achieve 847/1 |goto Stonetalon Mountains 37.0,54.3
step
Discover Thal'darah Overlook |achieve 847/4 |goto Stonetalon Mountains 35.8,31.5
step
Discover Stonetalon Peak |achieve 847/17 |goto Stonetalon Mountains 40.9,19.9
step
Discover Cliffwalker Post |achieve 847/8 |goto Stonetalon Mountains 45.1,30.2
step
Discover Mirkfallon Lake |achieve 847/16 |goto Stonetalon Mountains 51.6,47.3
step
Discover Windshear Hold |achieve 847/7 |goto Stonetalon Mountains 59.1,57.7
step
Discover Krom'gar Fortress |achieve 847/2 |goto Stonetalon Mountains 66.9,66.2
step
Discover Windshear Crag |achieve 847/13 |goto Stonetalon Mountains 66.9,49.3
step
|achieve 847
step
_Congratulations!_
You Earned the "Explore Stonetalon Mountains" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Tanaris",{
condition_end=function() return achieved(851) end,
achieveid={851},
patch='30003',
description="\nExplore Tanaris, revealing the following covered areas of the world map:\n\nAbyssal Sands\n"..
"Gadgetzan\nValley of the Watchers\nThe Noxious Lair\nSouthbreak Shore\nEastmoon Ruins\nZul'Farrak\n"..
"Southmoon Ruins\nSandsorrow Watch\nLost Rigger Cove\nBroken Pillar\nDunemaul Compound\nThe Gaping Chasm"..
"\nLand's End Beach\nThistleshrub Valley\nCaverns of Time",
},[[
step
Discover Zul'Farrak |achieve 851/15 |goto Tanaris 37.3,14.3
step
Discover Sandsorrow Watch |achieve 851/2 |goto Tanaris 40.9,27.3
step
Discover Gadgetzan  |achieve 851/1 |goto Tanaris 50,28
step
Discover Broken Pillar |achieve 851/6 |goto Tanaris 52.3,45.4
step
Discover Abyssal Sands |achieve 851/5 |goto Tanaris 55.1,40.9
step
Discover Caverns of Time |achieve 851/16 |goto Tanaris 64.2,50.0
step
Discover Lost Rigger Cove |achieve 851/4 |goto Tanaris 71.6,49.4
step
Discover Southbreak Shore |achieve 851/9 |goto Tanaris 63.0,59.2
step
Discover The Gaping Chasm |achieve 851/10 |goto Tanaris 53.7,67.6
step
Discover Land's End Beach |achieve 851/12 |goto Tanaris 53.6,91.7
step
Discover Valley of the Watchers |achieve 851/3 |goto Tanaris 37.8,77.7
step
Discover Southmoon Ruins |achieve 851/13 |goto Tanaris 40.8,70.6
step
Discover Eastmoon Ruins |achieve 851/11 |goto Tanaris 47.2,64.9
step
Discover Thistleshrub Valley |achieve 851/14 |goto Tanaris 30.4,66.4
step
Discover Dunemaul Compound |achieve 851/8 |goto Tanaris 41.0,55.5
step
Discover The Noxious Lair |achieve 851/7 |goto Tanaris 34.3,45.3
step
|achieve 851
step
_Congratulations!_
You Earned the "Explore Tanaris" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Teldrassil",{
condition_end=function() return achieved(842) end,
achieveid={842},
patch='30003',
description="\nExplore Teldrassil, revealing the following covered areas of the world map:\n\nShadowglen\n"..
"Dolanaar\nGnarlpine Hold\nPools of Arlithrien\nThe Oracle Glade\nDarnassus\nThe Cleft\n"..
"Ban'ethil Hollow\nLake Al'Ameth\nStarbreeze Village\nWellspring Lake\nRut'theran Village",
},[[
step
Discover Lake Al'Ameth |achieve 842/6 |goto Teldrassil 55.0,61.0
step
Discover Dolanaar |achieve 842/3 |goto Teldrassil 55.6,51.2
step
Discover Starbreeze Village |achieve 842/8 |goto Teldrassil 64.7,49.1
step
Discover Rut'theran Village |achieve 842/12 |goto Teldrassil 55.0,91.0
step
Discover Shadowglen |achieve 842/1 |goto Teldrassil 58.4,33.0
step
Discover The Cleft |achieve 842/2 |goto Teldrassil 50.7,38.0
step
Discover Ban'ethil Hollow |achieve 842/4 |goto Teldrassil 46.16,50.68
step
Discover Wellspring Lake |achieve 842/10 |goto Teldrassil 44.4,34.4
step
Discover The Oracle Glade |achieve 842/9 |goto Teldrassil 40.0,26.7
step
Discover Darnassus |achieve 842/11 |goto Teldrassil 30.4,50.1
step
Discover Pools of Arlithrien |achieve 842/7 |goto Teldrassil 41.9,56.9
step
Discover Gnarlpine Hold |achieve 842/5 |goto Teldrassil 44.8,67.4
step
|achieve 842
step
_Congratulations!_
You Earned the "Explore Teldrassil" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Thousand Needles",{
condition_end=function() return achieved(846) end,
achieveid={846},
patch='30003',
description="\nExplore Thousand Needles, revealing the following covered areas of the world map:\n\nThe Great Lift\n"..
"Sunken Dig Site\nThe Twilight Withering\nWestreach Summit\nFreewind Post\nThe Shimmering Deep\nHighperch\n"..
"Razorfen Downs\nSouthsea Holdfast\nTwilight Bulwark\nDarkcloud Pinnacle\nSplithoof Heights",
},[[
step
Discover Razorfen Downs |achieve 846/2 |goto Thousand Needles 51.7,30.0
step
Discover The Great Lift |achieve 846/1 |goto Thousand Needles 32.1,18.3
step
Discover Darkcloud Pinnacle |achieve 846/8 |goto Thousand Needles 33.6,38.6
step
Discover Westreach Summit |achieve 846/7 |goto Thousand Needles 13.4,10.3
step
Discover Highperch |achieve 846/12 |goto Thousand Needles 13.1,37.5
step
Discover Twilight Bulwark |achieve 846/6 |goto Thousand Needles 31.1,58.8
step
Discover Freewind Post |achieve 846/9 |goto Thousand Needles 47.0,50.7
step
Discover The Twilight Withering |achieve 846/5 |goto Thousand Needles 54.9,63.2
step
Discover Sunken Dig Site |achieve 846/3 |goto Thousand Needles 67.1,85.7
step
Discover The Shimmering Deep |achieve 846/11 |goto Thousand Needles 70.44,61.19
step
Discover Splithoof Heights |achieve 846/10 |goto Thousand Needles 88.4,47.8
step
Discover Southsea Holdfast |achieve 846/4 |goto Thousand Needles 92.4,78.8
step
|achieve 846
step
_Congratulations!_
You Earned the "Explore Thousand Needles" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Un'Goro Crater",{
condition_end=function() return achieved(854) end,
achieveid={854},
patch='30003',
description="\nExplore Un'Goro Crater, revealing the following covered areas of the world map:\n\nMossy Pile\n"..
"Fire Plume Ridge\nMarshal's Stand\nThe Roiling Gardens\nGolakka Hot Springs\nThe Slithering Scar\n"..
"Ironstone Plateau\nFungal Rock\nThe Screaming Reaches\nTerror Run\nThe Marshlands\nLakkari Tar Pits",
},[[
step
Discover Ironstone Plateau |achieve 854/11 |goto Un'Goro Crater 77.1,39.2
step
Discover The Roiling Gardens |achieve 854/5 |goto Un'Goro Crater 39.2,34.3
step
Discover Fungal Rock |achieve 854/2 |goto Un'Goro Crater 65.7,14.3
step
Discover Lakkari Tar Pits |achieve 854/12 |goto Un'Goro Crater 51.4,25.6
step
Discover Mossy Pile |achieve 854/4 |goto Un'Goro Crater 42.2,41.7
step
Discover The Screaming Reaches |achieve 854/6 |goto Un'Goro Crater 29.0,35.8
step
Discover Golakka Hot Springs |achieve 854/7 |goto Un'Goro Crater 34.4,54.0
step
Discover Terror Run |achieve 854/8 |goto Un'Goro Crater 33.2,70.7
step
Discover Fire Plume Ridge |achieve 854/1 |goto Un'Goro Crater 54.5,48.0
step
Discover Marshal's Stand |achieve 854/3 |goto Un'Goro Crater 54.0,60.9
step
Discover The Marshlands |achieve 854/10 |goto Un'Goro Crater 67.9,54.8
step
Discover The Slithering Scar |achieve 854/9 |goto Un'Goro Crater 51.1,77.5
step
|achieve 854
step
_Congratulations!_
You Earned the "Explore Un'Goro Crater" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Winterspring",{
condition_end=function() return achieved(857) end,
achieveid={857},
patch='30003',
description="\nExplore Winterspring, revealing the following covered areas of the world map:\n\nLake Kel'Theril\n"..
"Frostfire Hot Springs\nMazthoril\nOwl Wing Thicket\nWinterfall Village\nFrostsaber Rock\nEverlook\n"..
"Timbermaw Post\nStarfall Village\nIce Thistle Hills\nThe Hidden Grove\nFrostwhisper Gorge",
},[[
step
Discover Frostwhisper Gorge |achieve 857/12 |goto Winterspring 59.8,85.5
step
Discover Owl Wing Thicket |achieve 857/7 |goto Winterspring 64.5,77.2
step
Discover Ice Thistle Hills |achieve 857/8 |goto Winterspring 67.8,64.4
step
Discover Winterfall Village |achieve 857/9 |goto Winterspring 68.1,48.5
step
Discover Everlook |achieve 857/6 |goto Winterspring 59.9,48.9
step
Discover The Hidden Grove |achieve 857/10 |goto Winterspring 62.7,24.7
step
Discover Frostsaber Rock |achieve 857/11 |goto Winterspring 45.3,15.4
step
Discover Starfall Village |achieve 857/4 |goto Winterspring 47.7,39.1
step
Discover Lake Kel'Theril |achieve 857/3 |goto Winterspring 51.1,55.1
step
Discover Mazthoril |achieve 857/5 |goto Winterspring 54.8,62.9
step
Discover Timbermaw Post |achieve 857/2 |goto Winterspring 36.4,56.7
step
Discover Frostfire Hot Springs |achieve 857/1 |goto Winterspring 31.9,49.3
step
|achieve 857
step
_Congratulations!_
You Earned the "Explore Winterspring" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Kalimdor and Cataclysm Explorer",{
condition_end=function() return achieved(43) end,
achieveid={43},
patch='30003',
description="\nEarn the following Kalimdor exploration achievements:\n\nExplore Durotar\nExplore Teldrassil\n"..
"Explore Northern Barrens\nExplore Southern Barrens\nExplore Bloodmyst Isle\nExplore Thousand Needles\n"..
"Explore Desolace\nExplore Feralas\nExplore Azshara\nExplore Un'Goro Crater\nExplore Silithus\nExplore "..
"Mulgore\nExplore Azuremyst Isle\nExplore Winterspring\nExplore Darkshore\nExplore Stonetalon Mountains\n"..
"Explore Ashenvale\nExplore Dustwallow Marsh\nExplore Tanaris\nExplore Felwood\nExplore Moonglade",
},[[
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Durotar" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Northern Barrens" 1-14
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Southern Barrens" 1-11
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Dustwallow Marsh" 1-9
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Thousand Needles" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Tanaris" 1-16
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum" 1-22
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Un'Goro Crater" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Silithus" 1-8
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Feralas" 1-13
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Desolace" 1-16
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Mulgore" 1-13
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Stonetalon Mountains" 1-17
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Ashenvale" 1-18
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal" 1-11
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Winterspring" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Azshara" 1-17
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Moonglade" 1-4
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Felwood" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Darkshore" 1-11
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Teldrassil" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Azuremyst Isle" 1-17
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Bloodmyst Isle" 1-28
step
_Congratulations!_
You Earned the "Explore Kalimdor" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Exploration\\Outland\\Bloody Rare/Medium Rare")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Blade's Edge Mountains",{
condition_end=function() return achieved(865) end,
achieveid={865},
patch='30003',
description="\nExplore Blade's Edge Mountains, revealing the following covered areas of the world map:\n\nBash'ir Landing\n"..
"Bladespire Hold\nBloodmaul Outpost\nCircle of Blood\nForge Camp: Anger\nForge Camp: Wrath\n"..
"Gruul's Lair\nMok'Nathal Village\nRazor Ridge\nSkald\nCrystal Spine\nVeil Lashh\nVekhaar Stand\n"..
"Bladed Gulch\nBloodmaul Camp\nBroken Wilds\nDeath's Door\nForge Camp: Terror\nGrishnath\nJagged "..
"Ridge\nRaven's Wood\nRuuan Weald\nSylvanaar\nThunderlord Stronghold\nVeil Ruuan\nVortex Summit",
},[[
step
Discover Forge Camp: Terror |achieve 865/10 |goto Blade's Edge Mountains 29.1,81.0
step
Discover Vortex Summit |achieve 865/26 |goto Blade's Edge Mountains 30.5,59.5
step
Discover Forge Camp: Wrath |achieve 865/11 |goto Blade's Edge Mountains 33.5,41.1
step
Discover Raven's Wood |achieve 865/16 |goto Blade's Edge Mountains 31.9,27.5
step
Discover Grishnath |achieve 865/12 |goto Blade's Edge Mountains 39.6,19.9
step
Discover Bash'ir Landing |achieve 865/1 |goto Blade's Edge Mountains 51.7,16.7
step
Discover Crystal Spine |achieve 865/21 |goto Blade's Edge Mountains 68.0,10.8
step
Discover Broken Wilds |achieve 865/6 |goto Blade's Edge Mountains 77.9,25.9
step
Discover Skald |achieve 865/19 |goto Blade's Edge Mountains 72.0,22.9
step
Discover Gruul's Lair |achieve 865/13 |goto Blade's Edge Mountains 67.7,23.5
step
Discover Bloodmaul Camp |achieve 865/4 |goto Blade's Edge Mountains 55.6,26.2
step
Discover Bladespire Hold |achieve 865/3 |goto Blade's Edge Mountains 40.7,53.0
step
Discover Sylvanaar |achieve 865/20 |goto Blade's Edge Mountains 37.0,65.4
step
Discover Veil Lashh |achieve 865/23 |goto Blade's Edge Mountains 36.4,78.7
step
Discover Bloodmaul Outpost |achieve 865/5 |goto Blade's Edge Mountains 46.3,77.2
step
Discover Jagged Ridge |achieve 865/14 |goto Blade's Edge Mountains 48.0,64.9
step
Discover Razor Ridge |achieve 865/17 |goto Blade's Edge Mountains 56.0,69.0
step
Discover Death's Door |achieve 865/8 |goto Blade's Edge Mountains 64.2,61.0
step
Discover Thunderlord Stronghold |achieve 865/22 |goto Blade's Edge Mountains 53.1,54.7
step
Discover Circle of Blood |achieve 865/7 |goto Blade's Edge Mountains 53.6,43.9
step
Discover Ruuan Weald |achieve 865/18 |goto Blade's Edge Mountains 61.2,36.5
step
Discover Veil Ruuan |achieve 865/24 |goto Blade's Edge Mountains 65.1,31.6
step
Discover Bladed Gulch |achieve 865/2 |goto Blade's Edge Mountains 65.9,36.8
step
Discover Forge Camp: Anger |achieve 865/9 |goto Blade's Edge Mountains 74.7,41.8
step
Discover Mok'Nathal Village |achieve 865/15 |goto Blade's Edge Mountains 73.9,62.6
step
Discover Vekhaar Stand |achieve 865/25 |goto Blade's Edge Mountains 77.1,75.2
step
|achieve 865
step
_Congratulations!_
You Earned the "Explore Blade's Edge Mountains" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Hellfire Peninsula",{
condition_end=function() return achieved(862) end,
achieveid={862},
patch='30003',
description="\nExplore Hellfire Peninsula, revealing the following covered areas of the world map:\n\nThe Stair of Destiny\n"..
"Falcon Watch\nHonor Hold\nPools of Aggonar\nTemple of Telhamat\nThrallmar\nFallen Sky Ridge\n"..
"Zeth'Gor\nThe Warp Fields\nExpedition Armory\nHellfire Citadel\nMag'har Post\nRuins of Sha'naar\n"..
"The Legion Front\nThrone of Kil'jaeden\nDen of Haal'esh\nVoid Ridge\nForge Camp: Mageddon",
},[[
step
Discover The Stair of Destiny |achieve 862/1 |goto Hellfire Peninsula 87.7,50.3
step
Discover Throne of Kil'jaeden |achieve 862/12 |goto Hellfire Peninsula 62.0,17.8
step
Discover Forge Camp: Mageddon |achieve 862/18 |goto Hellfire Peninsula 58.9,31.2
step
Discover Thrallmar |achieve 862/11 |goto Hellfire Peninsula 55.4,38.7
step
Discover The Legion Front |achieve 862/10 |goto Hellfire Peninsula 71.91,50.92
step
Discover Void Ridge |achieve 862/16 |goto Hellfire Peninsula 79.1,72.9
step
Discover Zeth'Gor |achieve 862/13 |goto Hellfire Peninsula 70.1,73.6
step
Discover Expedition Armory |achieve 862/2 |goto Hellfire Peninsula 54.3,84.3
step
Discover The Warp Fields |achieve 862/17 |goto Hellfire Peninsula 45.3,82.5
step
Discover Honor Hold |achieve 862/5 |goto Hellfire Peninsula 54.8,64.5
step
Discover Hellfire Citadel |achieve 862/4 |goto Hellfire Peninsula 47.2,52.9
step
Discover Pools of Aggonar |achieve 862/7 |goto Hellfire Peninsula 41.2,32.6
step
Discover Mag'har Post |achieve 862/6 |goto Hellfire Peninsula 31.3,26.9
step
Discover Temple of Telhamat |achieve 862/9 |goto Hellfire Peninsula 23.5,40.0
step
Discover Falcon Watch |achieve 862/3 |goto Hellfire Peninsula 26.9,62.3
step
Discover Den of Haal'esh |achieve 862/14 |goto Hellfire Peninsula 27.5,77.0
step
Discover Fallen Sky Ridge |achieve 862/15 |goto Hellfire Peninsula 14.3,41.0
step
Discover Ruins of Sha'naar |achieve 862/8 |goto Hellfire Peninsula 13.3,59.4
step
|achieve 862
step
_Congratulations!_
You Earned the "Explore Hellfire Peninsula" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Nagrand",{
condition_end=function() return achieved(866) end,
achieveid={866},
patch='30003',
description="\nExplore Nagrand, revealing the following covered areas of the world map:\n\nForge Camp: Fear\n"..
"Halaa\nLaughing Skull Ruins\nSunspring Post\nThe Ring of Trials\nWarmaul Hill\nClan Watch\n"..
"Southwind Cleft\nWindyreed Pass\nZangar Ridge\nGaradar\nKil'sorrow Fortress\nSpirit Fields\n"..
"Telaar\nThrone of the Elements\nBurning Blade Ruins\nForge Camp: Hate\nThe Twilight Ridge\n"..
"Windyreed Village",
},[[
step
Discover Windyreed Village |achieve 866/18 |goto Nagrand 74.3,52.9
step
Discover Burning Blade Ruins |achieve 866/12 |goto Nagrand 75.1,66.8
step
Discover Kil'sorrow Fortress |achieve 866/4 |goto Nagrand 68.9,79.9
step
Discover Clan Watch |achieve 866/13 |goto Nagrand 62.5,64.3
step
Discover The Ring of Trials |achieve 866/9 |goto Nagrand 65.8,54.0
step
Discover Southwind Cleft |achieve 866/15 |goto Nagrand 49.8,55.9
step
Discover Telaar |achieve 866/8 |goto Nagrand 52.8,69.1
step
Discover Spirit Fields |achieve 866/6 |goto Nagrand 42.0,71.8
step
Discover Halaa |achieve 866/3 |goto Nagrand 42.5,44.0
step
Discover Sunspring Post |achieve 866/7 |goto Nagrand 33.5,44.7
step
Discover Forge Camp: Fear |achieve 866/1 |goto Nagrand 20.6,51.3
step
Discover The Twilight Ridge |achieve 866/16 |goto Nagrand 10.8,39.2
step
Discover Forge Camp: Hate |achieve 866/14 |goto Nagrand 25.9,37.1
step
Discover Warmaul Hill |achieve 866/11 |goto Nagrand 29.7,24.6
step
Discover Zangar Ridge |achieve 866/19 |goto Nagrand 33.9,18.4
step
Discover Laughing Skull Ruins |achieve 866/5 |goto Nagrand 46.9,18.9
step
Discover Garadar |achieve 866/2 |goto Nagrand 56.1,36.4
step
Discover Throne of the Elements |achieve 866/10 |goto Nagrand 60.8,21.1
step
Discover Windyreed Pass |achieve 866/17 |goto Nagrand 72.4,36.3
step
|achieve 866
step
_Congratulations!_
You Earned the "Explore Nagrand" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Netherstorm",{
condition_end=function() return achieved(843) end,
achieveid={843},
patch='30003',
description="\nExplore Netherstorm, revealing the following covered areas of the world map:\n\nArea 52\n"..
"Manaforge Coruu\nManaforge Ara\nRuins of Farahlon\nThe Heap\nCelestial Ridge\nNetherstone\n"..
"Sunfury Hold\nGyro-Plank Bridge\nEthereum Staging Grounds\nForge Base: Oblivion\nManaforge B'naar"..
"Manaforge Duro\nManaforge Ultris\nTempest Keep\nArklon Ruins\nKirin'Var Village\nRuins of Enkaat\n"..
"The Stormspire\nEco-Dome Farfield\nSocrethar's Seat\nEco-Dome Midrealm",
},[[
step
Discover Manaforge B'naar |achieve 843/2 |goto Netherstorm 23.5,72.9
step
Discover The Heap |achieve 843/9 |goto Netherstorm 28.4,77.5
step
Discover Area 52 |achieve 843/1 |goto Netherstorm 33.5,66.0
step
Discover Arklon Ruins |achieve 843/10 |goto Netherstorm 39.7,73.5
step
Discover Manaforge Coruu |achieve 843/3 |goto Netherstorm 48.8,84.5
step
Discover Kirin'Var Village |achieve 843/12 |goto Netherstorm 57.1,88.5
step
Discover Sunfury Hold |achieve 843/15 |goto Netherstorm 56.0,77.8
step
Discover Manaforge Duro |achieve 843/4 |goto Netherstorm 59.6,68.2
step
Discover Tempest Keep |achieve 843/8 |goto Netherstorm 75.8,62.5
step
Discover Celestial Ridge |achieve 843/11 |goto Netherstorm 72.5,38.7
step
Discover Manaforge Ultris |achieve 843/6 |goto Netherstorm 61.7,38.2
step
Discover Ethereum Staging Grounds |achieve 843/19 |goto Netherstorm 55.1,43.5
step
Discover Ruins of Farahlon |achieve 843/7 |goto Netherstorm 54.4,21.3
step
Discover Netherstone |achieve 843/13 |goto Netherstorm 49.5,17.0
step
Discover Eco-Dome Farfield |achieve 843/18 |goto Netherstorm 46.1,9.6
step
Discover Socrethar's Seat |achieve 843/20 |goto Netherstorm 29.9,16.0
step
Discover Forge Base: Oblivion |achieve 843/21 |goto Netherstorm 37.5,26.4
step
Discover The Stormspire |achieve 843/16 |goto Netherstorm 45.1,35.8
step
Discover Eco-Dome Midrealm |achieve 843/22 |goto Netherstorm 45.3,53.7
step
Discover Ruins of Enkaat |achieve 843/14 |goto Netherstorm 32.9,54.9
step
Discover Gyro-Plank Bridge |achieve 843/17 |goto Netherstorm 23.2,55.9
step
Discover Manaforge Ara |achieve 843/5 |goto Netherstorm 26.8,39.3
step
|achieve 843
step
_Congratulations!_
You Earned the "Explore Netherstorm" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Shadowmoon Valley",{
condition_end=function() return achieved(864) end,
achieveid={864},
patch='30003',
description="\nExplore Shadowmoon Valley, revealing the following covered areas of the world map:\n\nCoilskar Point\n"..
"Legion Hold\nShadowmoon Village\nThe Deathforge\nWarden's Cage\nAltar of Sha'tar\nNetherwing Fields\n"..
"Eclipse Point\nNetherwing Ledge\nThe Black Temple\nThe Hand of Gul'dan\nWildhammer Stronghold\nIllidari Point",
},[[
step
Discover Legion Hold |achieve 864/3 |goto Shadowmoon Valley 24.1,39.2
step
Discover Illidari Point |achieve 864/12 |goto Shadowmoon Valley 29.8,52.3
step
Discover Wildhammer Stronghold |achieve 864/10  |goto Shadowmoon Valley 35.5,60.2
step
Discover Eclipse Point |achieve 864/2 |goto Shadowmoon Valley 44.9,66.8
step
Discover Netherwing Ledge |achieve 864/4 |goto Shadowmoon Valley 70.8,85.7
step
Discover Netherwing Fields |achieve 864/13 |goto Shadowmoon Valley 64.2,58.5
step
Discover Warden's Cage |achieve 864/9 |goto Shadowmoon Valley 57.3,50.1
step
Discover The Hand of Gul'dan |achieve 864/8 |goto Shadowmoon Valley 49.8,41.2
step
Discover The Deathforge |achieve 864/7 |goto Shadowmoon Valley 39.6,39.6
step
Discover Shadowmoon Village |achieve 864/5 |goto Shadowmoon Valley 29.4,26.1
step
Discover Coilskar Point |achieve 864/1 |goto Shadowmoon Valley 45.3,26.3
step
Discover Altar of Sha'tar |achieve 864/11 |goto Shadowmoon Valley 61.5,26.1
step
Discover The Black Temple |achieve 864/6 |goto Shadowmoon Valley 77.6,40.6
step
|achieve 864
step
_Congratulations!_
You Earned the "Explore Shadowmoon Valley" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Terokkar Forest",{
condition_end=function() return achieved(867) end,
achieveid={867},
patch='30003',
description="\nExplore Terokkar Forest, revealing the following covered areas of the world map:\n\nBleeding Hollow Ruins\n"..
"Cenarion Thicket\nGrangol'var Village\nTuurem\nRaastok Glade\nRazorthorn Shelf\nAuchenai Grounds\nSkettis\n"..
"Refugee Caravan\nShadow Tomb\nVeil Rhaze\nAllerian Stronghold\nFirewing Point\nStonebreaker Hold\nCarrion "..
"Hill\nShattrath City\nThe Barrier Hills\nBonechewer Ruins\nRing of Observance\nDerelict Caravan\nWrithing Mound",
},[[
step
Discover Razorthorn Shelf |achieve 867/11 |goto Terokkar Forest 55.0,20.0
step
Discover Tuurem |achieve 867/7 |goto Terokkar Forest 53.0,29.1
step
Discover Cenarion Thicket |achieve 867/3 |goto Terokkar Forest 43.8,20.2
step
Discover Shattrath City |achieve 867/8 |goto Terokkar Forest 29.1,23.3
step
Discover The Barrier Hills |achieve 867/10 |goto Terokkar Forest 22.4,10.5
step
Discover Bleeding Hollow Ruins |achieve 867/1 |goto Terokkar Forest 17.8,65.4
step
Discover Veil Rhaze |achieve 867/19 |goto Terokkar Forest 24.4,59.9
step
Discover Shadow Tomb |achieve 867/17 |goto Terokkar Forest 31.3,52.5
step
Discover Refugee Caravan |achieve 867/15 |goto Terokkar Forest 37.5,49.6
step
Discover Carrion Hill |achieve 867/14 |goto Terokkar Forest 42.9,51.0
step
Discover Grangol'var Village |achieve 867/5 |goto Terokkar Forest 39.5,39.4
step
Discover Stonebreaker Hold |achieve 867/6 |goto Terokkar Forest 46.6,43.0
step
Discover Raastok Glade |achieve 867/9 |goto Terokkar Forest 60.6,40.2
step
Discover Firewing Point |achieve 867/4 |goto Terokkar Forest 71.7,34.7
step
Discover Bonechewer Ruins |achieve 867/12 |goto Terokkar Forest 66.5,52.3
step
Discover Allerian Stronghold |achieve 867/2 |goto Terokkar Forest 57.1,56.6
step
Discover Writhing Mound |achieve 867/20 |goto Terokkar Forest 49.1,66.0
step
Discover Ring of Observance |achieve 867/16 |goto Terokkar Forest 39.5,65.5
step
Discover Auchenai Grounds |achieve 867/13 |goto Terokkar Forest 33.0,71.8
step
Discover Derelict Caravan |achieve 867/18 |goto Terokkar Forest 43.9,76.1
step
Discover Skettis |achieve 867/21 |goto Terokkar Forest 58.9,76.4
step
|achieve 867
step
_Congratulations!_
You Earned the "Explore Terokkar Forest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Zangarmarsh",{
condition_end=function() return achieved(863) end,
achieveid={863},
patch='30003',
description="\nExplore Zangarmarsh, revealing the following covered areas of the world map:\n\nCenarion Refuge\n"..
"Feralfen Village\nMarshlight Lake\nTelredor\nThe Lagoon\nUmbrafen Village\nAngo'rosh Stronghold\n"..
"Orebor Harborage\nZabra'jin\nAngo'rosh Grounds\nHewn Bog\nQuagg Ridge\nTwin Spire Ruins\nSporeggar\n"..
"The Dead Mire\nBloodscale Grounds\nThe Spawning Glen\nDarkcrest Shore",
},[[
step
Discover Darkcrest Shore |achieve 863/18 |goto Zangarmarsh 70.6,79.9
step
Discover Umbrafen Village |achieve 863/11 |goto Zangarmarsh 83.5,82.0
step
Discover Cenarion Refuge |achieve 863/1 |goto Zangarmarsh 81.1,63.4
step
Discover The Dead Mire |achieve 863/8 |goto Zangarmarsh 82.5,37.5
step
Discover Teredor |achieve 863/7 |goto Zangarmarsh 68.5,49.2
step
Discover Bloodscale Grounds |achieve 863/14 |goto Zangarmarsh 62.7,41.2
step
Discover The Lagoon |achieve 863/9 |goto Zangarmarsh 58.6,61.8
step
Discover Twin Spire Ruins |achieve 863/10 |goto Zangarmarsh 47.8,51.7
step
Discover Feralfen Village |achieve 863/3 |goto Zangarmarsh 44.9,66.3
step
Discover Zabra'jin |achieve 863/17 |goto Zangarmarsh 31.8,52.3
step
Discover Quagg Ridge |achieve 863/6 |goto Zangarmarsh 29.0,60.7
step
Discover The Spawning Glen |achieve 863/16 |goto Zangarmarsh 14.5,61.9
step
Discover Sporeggar |achieve 863/12 |goto Zangarmarsh 17.8,49.6
step
Discover Marshlight Lake |achieve 863/5 |goto Zangarmarsh 21.7,39.6
step
Discover Ango'rosh Grounds |achieve 863/2 |goto Zangarmarsh 18.0,23.1
step
Discover Ango'rosh Stronghold |achieve 863/13 |goto Zangarmarsh 18.6,8.0
step
Discover Hewn Bog |achieve 863/4 |goto Zangarmarsh 33.6,35.3
step
Discover Orebor Harborage |achieve 863/15 |goto Zangarmarsh 44.9,25.2
step
|achieve 863
step
_Congratulations!_
You Earned the "Explore Zangarmarsh" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Outland Explorer",{
condition_end=function() return achieved(44) end,
achieveid={44},
patch='30001',
description="\nEarn the following Outland exploration achievements:\n\nExplore Hellfire Peninsula\nExplore Terokkar Forest\n"..
"Explore Blade's Edge Mountains\nExplore Shadowmoon Valley\nExplore Zangarmarsh\nExplore Netherstorm\n"..
"Explore Nagrand",
},[[
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Hellfire Peninsula" 1-18
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Terokkar Forest" 1-21
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Shadowmoon Valley" 1-13
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Nagrand" 1-19
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Zangarmarsh" 1-18
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Blade's Edge Mountains" 1-26
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Netherstorm" 1-22
step
_Congratulations!_
You Earned the "Outland Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Exploration\\Northrend\\Frostbitten/Northern Exposure")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Borean Tundra",{
condition_end=function() return achieved(1264) end,
achieveid={1264},
patch='30008',
description="\nExplore Borean Tundra, revealing the following covered areas of the world map:\n\nRiplash Strand\n"..
"Temple City of En'kilah\nGarrosh's Landing\nColdarra\nAmber Ledge\nThe Dens of the Dying\nKaskala\n"..
"Steeljaw's Caravan\nValiance Keep\nBor'gorok Outpost\nThe Geyser Fields\nWarsong Hold\nDeath's Stand",
},[[
step
Discover Valiance Keep |achieve 1264/11 |goto Borean Tundra 57.7,69.3
step
Discover Warsong Hold |achieve 1264/10 |goto Borean Tundra 43.4,53.2
step
Discover Riplash Stand |achieve 1264/3 |goto Borean Tundra 47.4,81.1
step
Discover Garrosh's Landing |achieve 1264/5 |goto Borean Tundra 27.9,51.6
step
Discover Coldarra |achieve 1264/7 |goto Borean Tundra 25.8,38.4
step
Discover Amber Ledge |achieve 1264/9 |goto Borean Tundra 46.1,34.8
step
Discover Steeljaw's Carvan |achieve 1264/2 |goto Borean Tundra 50.2,24.3
step
Discover Bor'gorok Outpost |achieve 1264/8 |goto Borean Tundra 50.2,10.3
step
Discover The Geyser Fields |achieve 1264/12 |goto Borean Tundra 66.3,28.5
step
Discover Kaskala |achieve 1264/4 |goto Borean Tundra 66.2,51.1
step
Discover Death's Stand |achieve 1264/6 |goto Borean Tundra 82.4,46.4
step
Discover Temple City of En'kilah |achieve 1264/1 |goto Borean Tundra 87.6,25.1
step
Discover The Dens of the Dying |achieve 1264/13 |goto Borean Tundra 76.4,16.4
step
|achieve 1264
step
_Congratulations!_
You Earned the "Explore Borean Tundra" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Crystalsong Forest",{
condition_end=function() return achieved(1457) end,
achieveid={1457},
patch='30008',
description="\nExplore Crystalsong Forest, revealing the following covered areas of the world map:\n\nViolet Stand\n"..
"Windrunner's Overlook\nSunreaver's Command\nThe Azure Front\nThe Decrepit Flow\nThe Unbound Thicket\n"..
"Forlorn Woods\nThe Great Tree",
},[[
step
Discover The Azure Front |achieve 1457/1 |goto Crystalsong Forest 26.4,61.4
step
Discover Violet Stand |achieve 1457/7 |goto Crystalsong Forest 14.5,44.1
step
Discover The Great Tree |achieve 1457/6 |goto Crystalsong Forest 13.1,33.9
step
Discover The Decrepit Flow |achieve 1457/2 |goto Crystalsong Forest 16.0,15.4
step
Discover Forlorn Woods |achieve 1457/4 |goto Crystalsong Forest 43.0,42.5
step
Discover The Unbound Thicket |achieve 1457/8 |goto Crystalsong Forest 64.7,60.4
step
Discover Windrunner's Overlook |achieve 1457/5 |goto Crystalsong Forest 75.2,83.0
step
Discover Sunreaver's Command |achieve 1457/3 |goto Crystalsong Forest 76.9,46.3
step
|achieve 1457
step
_Congratulations!_
You Earned the "Explore Crystalsong Forest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Dragonblight",{
condition_end=function() return achieved(1265) end,
achieveid={1265},
patch='30008',
description="\nExplore Dragonblight, revealing the following covered areas of the world map:\n\nGalakrond's Rest\n"..
"Obsidian Dragonshrine\nNaxxramas\nIcemist Village\nColdwind Heights\nWestwind Refugee Camp\nLake Indu'le\n"..
"Agmar's Hammer\nThe Forgotten Shore\nScarlet Point\nAngrathar the Wrath Gate\nEmerald Dragonshrine\n"..
"New Hearthglen\nLight's Trust\nWyrmrest Temple\nThe Crystal Vice\nVenomspite",
},[[
step
Discover Angrathar the Wrath Gate |achieve 1265/10 |goto Dragonblight 36.0,15.0
step
Discover Obsidian Dragonshrine |achieve 1265/3 |goto Dragonblight 38.4,31.9
step
Discover Icemist Village |achieve 1265/7 |goto Dragonblight 25.1,43.2
step
Discover Westwind Refugee Camp |achieve 1265/13 |goto Dragonblight 13.8,46.2
step
Discover Agmar's Hammer |achieve 1265/11 |goto Dragonblight 36.9,47.8
step
Discover Lake Indu'le |achieve 1265/2 |goto Dragonblight 39.7,67.0
step
Discover Galakrond's Rest |achieve 1265/1 |goto Dragonblight 54.9,32.7
step
Discover Wyrmrest Temple |achieve 1265/12 |goto Dragonblight 59.7,49.8
step
Discover Emerald Dragonshrine |achieve 1265/8 |goto Dragonblight 63.5,72.7
step
Discover New Hearthglen |achieve 1265/4 |goto Dragonblight 71.0,75.2
step
Discover Venomspite |achieve 1265/14 |goto Dragonblight 77.1,60.0
step
Discover The Forgotten Shore |achieve 1265/15 |goto Dragonblight 82.5,70.7
step
Discover Naxxramas |achieve 1265/5 |goto Dragonblight 88.9,44.0
step
Discover Light's Trust |achieve 1265/6 |goto Dragonblight 83.6,25.6
step
Discover Scarlet Point |achieve 1265/17 |goto Dragonblight 72.7,25.6
step
Discover The Crystal Vice |achieve 1265/16 |goto Dragonblight 61.8,19.5
step
Discover Coldwind Heights |achieve 1265/9 |goto Dragonblight 50.0,17.5
step
|achieve 1265
step
_Congratulations!_
You Earned the "Explore Dragonblight" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Grizzly Hills",{
condition_end=function() return achieved(1266) end,
achieveid={1266},
patch='30008',
description="\nExplore Grizzly Hills, revealing the following covered areas of the world map:\n\nDrakil'jin Ruins\n"..
"Conquest Hold\nBlue Sky Logging Grounds\nWestfall Brigade Encampment\nGranite Springs\nVoldrune\n"..
"Rage Fang Shrine\nVenture Bay\nAmberpine Lodge\nCamp Oneqwah\nDrak'Tharon Keep\nDun Argol\n"..
"Grizzlemaw\nThor Modan",
},[[
step
Discover Drak'Tharon Keep |achieve 1266/2 |goto Grizzly Hills 17.5,23.6
step
Discover Granite Springs |achieve 1266/5 |goto Grizzly Hills 15.8,49.6
step
Discover Conquest Hold |achieve 1266/1 |goto Grizzly Hills 21.3,65.3
step
Discover Venture Bay |achieve 1266/9 |goto Grizzly Hills 14.5,84.4
step
Discover Voldrune |achieve 1266/10 |goto Grizzly Hills 29.0,76.5
step
Discover Amberpine Lodge |achieve 1266/11 |goto Grizzly Hills 31.4,57.9
step
Discover Blue Sky Logging Grounds |achieve 1266/12 |goto Grizzly Hills 36.0,37.9
step
Discover Grizzlemaw |achieve 1266/6 |goto Grizzly Hills 48.2,42.2
step
Discover Westfall Brigade Encampment |achieve 1266/14 |goto Grizzly Hills 56.8,28.4
step
Discover Thor Modan |achieve 1266/8 |goto Grizzly Hills 68.1,14.8
step
Discover Drakil'jin Ruins |achieve 1266/3 |goto Grizzly Hills 71.8,27.9
step
Discover Camp Oneqwah |achieve 1266/13 |goto Grizzly Hills 64.9,45.6
step
Discover Dun Argol |achieve 1266/4 |goto Grizzly Hills 77.9,59.3
step
Discover Rage Fang Shrine |achieve 1266/7 |goto Grizzly Hills 50.3,57.2
step
|achieve 1266
step
_Congratulations!_
You Earned the "Explore Grizzly Hills" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Howling Fjord",{
condition_end=function() return achieved(1263) end,
achieveid={1263},
patch='30008',
description="\nExplore Howling Fjord, revealing the following covered areas of the world map:\n\nCamp Winterhoof\n"..
"Kamagua\nVengeance Landing\nScalawag Point\nGjalerbron\nGiant's Run\nIvald's Ruin\nNew Agamand\n"..
"The Twisted Glade\nWestguard Keep\nBaleheim\nCauldros Isle\nBaelgun's Excavation Site\nSkorn\n"..
"Apothecary Camp\nSteel Gate\nNifflevar\nEmber Clutch\nFort Wildervar\nUtgarde Keep\nHalgrind\n",
},[[
step
Discover Gjalerbron |achieve 1263/9 |goto Howling Fjord 36.6,9.5
step
Discover Camp Winterhoof |achieve 1263/3 |goto Howling Fjord 47.8,12.1
step
Discover The Twisted Glade |achieve 1263/17 |goto Howling Fjord 54.2,16.8
step
Discover Fort Wildervar |achieve 1263/12 |goto Howling Fjord 60.7,12.8
step
Discover Giant's Run |achieve 1263/11 |goto Howling Fjord 68.6,26.5
step
Discover Vengeance Landing |achieve 1263/5 |goto Howling Fjord 78.1,27.3
step
Discover Ivald's Ruin |achieve 1263/13 |goto Howling Fjord 78.2,46.2
step
Discover Baelgun's Excavation Site |achieve 1263/20 |goto Howling Fjord 72.5,71.3
step
Discover Nifflevar |achieve 1263/8 |goto Howling Fjord 67.9,52.8
step
Discover Baleheim |achieve 1263/21 |goto Howling Fjord 66.6,39.1
step
Discover Cauldros Isle |achieve 1263/2 |goto Howling Fjord 57.6,35.9
step
Discover Utgarde Keep |achieve 1263/18 |goto Howling Fjord 58.3,45.9
step
Discover Halgrind |achieve 1263/14 |goto Howling Fjord 50.1,54.1
step
Discover New Agamand |achieve 1263/15 |goto Howling Fjord 52.9,69.0
step
Discover Scalawag Point |achieve 1263/7 |goto Howling Fjord 34.3,75.5
step
Discover Kamagua |achieve 1263/1 |goto Howling Fjord 24.9,57.7
step
Discover Ember Clutch |achieve 1263/10 |goto Howling Fjord 40.0,50.6
step
Discover Skorn |achieve 1263/16 |goto Howling Fjord 45.1,33.1
step
Discover Westguard Keep |achieve 1263/19 |goto Howling Fjord 30.3,41.4
step
Discover Steel Gate |achieve 1263/6 |goto Howling Fjord 31.3,25.9
step
Discover Apothecary Camp |achieve 1263/4 |goto Howling Fjord 27.0,24.1
step
|achieve 1263
step
_Congratulations!_
You Earned the "Explore Howling Fjord" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Icecrown",{
condition_end=function() return achieved(1270) end,
achieveid={1270},
patch='30008',
description="\nExplore Icecrown, revealing the following covered areas of the world map:\n\nThe Bombardment\n"..
"Onslaught Harbor\nAldur'thar: The Desolation Gate\nThe Fleshwerks\nCorp'rethar: The Horror Gate\n"..
"Sindragosa's Fall\nValley of Echoes\nThe Conflagration\nJotunheim\nThe Shadow Vault\nScourgeholme\n"..
"Icecrown Citadel\nThe Broken Front\nYmirheim\nValhalas",
},[[
step
Discover Onslaught Harbor |achieve 1270/3 |goto Icecrown 8.9,42.9
step
Discover Jotunheim |achieve 1270/13 |goto Icecrown 27.1,39.0
step
Discover Valhalas |achieve 1270/8 |goto Icecrown 36.5,24.1
step
Discover The Shadow Vault |achieve 1270/15 |goto Icecrown 44.4,22.6
step
Discover Aldur'thar: The Desolation Gate |achieve 1270/6 |goto Icecrown 52.8,30.6
step
Discover The Bombardment |achieve 1270/1 |goto Icecrown 63.7,44.0
step
Discover Sindragosa's Fall |achieve 1270/7 |goto Icecrown 74.0,37.7
step
Discover Scourgeholme |achieve 1270/14 |goto Icecrown 78.4,60.2
step
Discover Valley of Echoes |achieve 1270/9 |goto Icecrown 83.8,73.4
step
Discover The Broken Front |achieve 1270/4 |goto Icecrown 69.2,64.4
step
Discover Ymirheim |achieve 1270/10 |goto Icecrown 54.9,56.2
step
Discover The Conflagration |achieve 1270/11 |goto Icecrown 43.6,56.5
step
Discover The Fleshwerks |achieve 1270/5 |goto Icecrown 33.1,66.4
step
Discover Corp'rethar: The Horror Gate |achieve 1270/12 |goto Icecrown 48.4,70.6
step
Discover Icecrown Citadel |achieve 1270/2 |goto Icecrown 54.2,85.8
step
|achieve 1270
step
_Congratulations!_
You Earned the "Explore Icecrown" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Sholazar Basin",{
condition_end=function() return achieved(1268) end,
achieveid={1268},
patch='30002',
description="\nExplore Sholazar Basin, revealing the following covered areas of the world map:\n\nThe Mosslight Pillar\n"..
"Makers' Perch\nRainspeaker Canopy\nThe Avalanche\nKartak's Hold\nThe Savage Thicket\nMakers' Overlook\n"..
"The Suntouched Pillar\nThe Lifeblood Pillar\nThe Glimmering Pillar\nThe Stormwright's Shelf",
},[[
step
Discover Makers' Overlook |achieve 1268/4 |goto Sholazar Basin 81.0,55.4
step
Discover The Lifeblood Pillar |achieve 1268/8 |goto Sholazar Basin 65.9,60.1
step
Discover Rainspeaker Canopy |achieve 1268/7 |goto Sholazar Basin 53.7,52.5
step
Discover River's Heart |achieve 1268/1 |goto Sholazar Basin 48.0,63.2
step
Discover The Mosslight Pillar |achieve 1268/3 |goto Sholazar Basin 36.0,75.3
step
Discover Kartak's Hold |achieve 1268/11 |goto Sholazar Basin 24.3,81.7
step
Discover The Suntouched Pillar |achieve 1268/6 |goto Sholazar Basin 33.3,52.3
step
Discover Makers' Perch |achieve 1268/5 |goto Sholazar Basin 29.7,40.1
step
Discover The Stormwright's Shelf |achieve 1268/12 |goto Sholazar Basin 24.5,33.5
step
Discover The Savage Thicket |achieve 1268/2 |goto Sholazar Basin 46.8,26.1
step
Discover The Glimmering Pillar |achieve 1268/10 |goto Sholazar Basin 50.0,36.0
step
Discover The Avalanche |achieve 1268/9 |goto Sholazar Basin 74.5,34.6
step
|achieve 1268
step
_Congratulations!_
You Earned the "Explore Sholazar Basin" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Storm Peaks",{
condition_end=function() return achieved(1269) end,
achieveid={1269},
patch='30008',
description="\nExplore Storm Peaks, revealing the following covered areas of the world map:\n\nDun Niffelem\n"..
"Brunnhildar Village\nValkyrion\nSparksocket Minefield\nTemple of Life\nThunderfall\nUlduar\n"..
"Snowdrift Plains\nFrosthold\nNarvir's Cradle\nBor's Breath\nTerrace of the Makers\nNidavelir\n"..
"Engine of the Makers\nTemple of Storms\nGarm's Bane",
},[[
step
Discover Sparksocket Minefield |achieve 1269/7 |goto The Storm Peaks 35.1,84.0
step
Discover Bor's Breath |achieve 1269/4 |goto The Storm Peaks 35.3,68.7
step
Discover Temple of Storms |achieve 1269/12 |goto The Storm Peaks 35.9,58.0
step
Discover Frosthold |achieve 1269/15 |goto The Storm Peaks 29.4,73.8
step
Discover Valkyrion |achieve 1269/5 |goto The Storm Peaks 24.0,60.5
step
Discover Nidavelir |achieve 1269/16 |goto The Storm Peaks 23.9,50.1
step
Discover Snowdrift Plains |achieve 1269/13 |goto The Storm Peaks 27.3,41.9
step
Discover Narvir's Cradle |achieve 1269/2 |goto The Storm Peaks 32.2,39.6
step
Discover Ulduar |achieve 1269/10 |goto The Storm Peaks 41.3,17.4
step
Discover Terrace of the Makers |achieve 1269/6 |goto The Storm Peaks 50.3,44.7
step
Discover Temple of Life |achieve 1269/9 |goto The Storm Peaks 64.8,44.8
step
Discover Thunderfall |achieve 1269/11 |goto The Storm Peaks 72.9,48.5
step
Discover Dun Niffelem |achieve 1269/3 |goto The Storm Peaks 64.4,59.1
step
Discover Engine of the Makers |achieve 1269/8 |goto The Storm Peaks 40.9,57.2
step
Discover Brunnhildar Village |achieve 1269/1 |goto The Storm Peaks 47.8,68.2
step
Discover Garm's Bane |achieve 1269/14 |goto The Storm Peaks 47.1,81.6
step
|achieve 1269
step
_Congratulations!_
You Earned the "Explore Storm Peaks" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Zul'Drak",{
condition_end=function() return achieved(1267) end,
achieveid={1267},
patch='30008',
description="\nExplore Zul'Drak, revealing the following covered areas of the world map:\n\nAltar of Rhunok\n"..
"Ampitheater of Anguish\nGundrak\nAltar of Mam'toth\nDrak'Sotra Fields\nAltar of Quetz'lun\nZeramas\n"..
"Altar of Har'koa\nAltar of Sseratus\nLight's Breach\nVoltarus\nZim'Torga\nKolramas\nThrym's End",
},[[
step
Discover Thrym's End |achieve 1267/12 |goto Zul'Drak 17.0,57.3
step
Discover Voltarus |achieve 1267/11 |goto Zul'Drak 28.2,45.1
step
Discover Altar of Sseratus |achieve 1267/4 |goto Zul'Drak 40.5,38.8
step
Discover Altar of Rhunok |achieve 1267/5 |goto Zul'Drak 53.3,36.5
step
Discover Gundrak |achieve 1267/1 |goto Zul'Drak 83.7,16.7
step
Discover Altar of Mam'toth |achieve 1267/7 |goto Zul'Drak 73.2,45.6
step
Discover Altar of Quetz'lun |achieve 1267/6 |goto Zul'Drak 76.9,59.3
step
Discover Zim'Torga |achieve 1267/9 |goto Zul'Drak 59.3,57.8
step
Discover Altar of Har'koa |achieve 1267/8 |goto Zul'Drak 64.4,68.9
step
Discover Kolrama |achieve 1267/14 |goto Zul'Drak 62.0,77.6
step
Discover Ampitheater of Anguish |achieve 1267/3 |goto Zul'Drak 48.2,56.4
step
Discover Drak'Sorta Fields |achieve 1267/2 |goto Zul'Drak 41.7,76.8
step
Discover Light's Breach |achieve 1267/13 |goto Zul'Drak 32.0,76.4
step
Discover Zeramas |achieve 1267/10 |goto Zul'Drak 21.1,75.2
step
|achieve 1267
step
_Congratulations!_
You Earned the "Explore Zul'Drak" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Northrend Explorer",{
condition_end=function() return achieved(45) end,
achieveid={45},
patch='30002',
description="\nEarn the following Northrend exploration achievements:\n\nExplore Borean Tundra\nExplore Dragonblight\n"..
"Explore Zul'Drak\nExplore Crystalsong Forest\nExplore Icecrown\nExplore Howling Fjord\nExplore Grizzly Hills\n"..
"Explore Sholazar Basin\nExplore Storm Peaks",
},[[
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Borean Tundra" 1-13
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Sholazar Basin" 1-12
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Icecrown" 1-15
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Dragonblight" 1-17
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Crystalsong Forest" 1-8
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Storm Peaks" 1-16
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Zul'Drak" 1-14
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Grizzly Hills" 1-14
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Howling Fjord" 1-21
step
_Congratulations!_
You Earned the "Northrend Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Cataclysm Explorer",{
condition_end=function() return achieved(4868) end,
achieveid={4868},
patch='40003',
description="\nEarn the following Cataclysm exploration achievements:\n\nExplore Twilight Highlands\nExplore Deepholm\n"..
"Explore Hyjal\nExplore Vashj'ir\nExplore Uldum",
},[[
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir" 1-57
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm" 1-12
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum" 1-22
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands" 1-28
step
_Congratulations!_
You Earned the "Cataclysm Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm",{
condition_end=function() return achieved(4864) end,
achieveid={4864},
patch='40003',
description="\nExplore Deepholm, revealing the following covered areas of the world map:\n\nNeedlerock Slag\n"..
"Deathwing's Fall\nStorm's Fury Wreckage\nThe Pale Roost\nThe Quaking Fields\nStonehearth\n"..
"Needlerock Chasm\nMasters' Gate\nTemple of Earth\nTherazane's Throne\nTwilight Overlook\n"..
"Crimson Expanse",
},[[
step
Explore the Temple of Earth |achieve 4864/6 |goto Deepholm/0 48.94,53.28
step
Explore the Storm's Fury Wreckage |achieve 4864/5 |goto 56.79,73.02
step
Explore the Twilight Overlook |achieve 4864/10 |goto 68.36,77.99
step
Explore Deathwing's Fall |achieve 4864/1 |goto 68.03,67.74
step
Explore the Crimson Expanse |achieve 4864/12 |goto 71.64,51.65
step
Explore Therazane's Throne |achieve 4864/8 |goto 57.73,16.98
step
Explore The Pale Roost |achieve 4864/7 |goto 49.21,17.02
step
Explore the Needlerock Chasm |achieve 4864/2 |goto 33.61,28.51
step
Explore the Needlerock Slag |achieve 4864/3 |goto 23.57,46.53
step
Explore Stonehearth |achieve 4864/4 |goto 27.28,69.88
step
Explore The Quaking Fields |achieve 4864/9 |goto 31.57,77.30
step
Explore the Masters' Gate |achieve 4864/11 |goto 40.12,71.58
step
|achieve 4864
step
_Congratulations!_
You Earned the "Explore Deepholm" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal",{
condition_end=function() return achieved(4863) end,
achieveid={4863},
patch='40003',
description="\nExplore Hyjal, revealing the following covered areas of the world map:\n\nRim of the World\n"..
"Ashen Lake\nGates of Sothann\nSethria's Roost\nThe Flamewake\nThe Throne of Flame\nNordrassil\n"..
"The Circle of Cinders\nDarkwhisper Gorge\nShrine of Goldrinn\nThe Scorched Plain",
},[[
step
Explore Nordrassil |achieve 4863/6 |goto Mount Hyjal/0 62,25
step
Explore the Circle of Cinders |achieve 4863/2 |goto 51.40,24.97
step
Explore the Shrine of Goldrin |achieve 4863/8 |goto 27.58,29.19
step
Explore the Rim of the World |achieve 4863/1 |goto 22.19,36.89
step
Explore the Ashen Lake |achieve 4863/3 |goto 19.50,43.90
step
Explore The Flamewake |achieve 4863/9 |goto 26.03,54.56
step
Explore Sethria's Roost |achieve 4863/7 |goto 33.30,74.05
step
Explore The Scorched Plain |achieve 4863/10 |goto 46.64,58.90
step
Explore The Throne of Flame  |achieve 4863/11 |goto 50.26,71.98
step
Explore the Gates of Sothann |achieve 4863/5 |goto 67,75
step
Explore the Darkwhisper Gorge |achieve 4863/4 |goto 76,65
step
|achieve 4863
step
_Congratulations!_
You Earned the "Explore Hyjal" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands",{
condition_end=function() return achieved(4866) end,
achieveid={4866},
patch='40003',
description="\nExplore Twilight Highlands, revealing the following covered areas of the world map:\n\nFirebeard's Patrol\n"..
"Bloodgulch\nCrushblow\nDragonmaw Port\nGorshak War Camp\nHumboldt Conflagration\nThe Twilight Breach\n"..
"Highbank\nObsidian Forest\nSlithering Cove\nThe Gullet\nTwilight Shore\nVictor's Point\nKirthaven\n"..
"The Maw of Madness\nCrucible of Carnage\nDragonmaw Pass\nDunwald Ruins\nGlopgut's Hollow\nThundermar\n"..
"Highland Forest\nGrim Batol\nRuins of Drakgor\nThe Black Breach\nThe Krazzworks\nVermillion Redoubt\n"..
"Wyrms' Bend",
},[[
step
Explore Highbank |achieve 4866/11 |goto Twilight Highlands/0 77.04,74.73
step
Explore the Twilight Shore |achieve 4866/23 |goto 71.03,70.98
step
Explore the Obsidian Forest |achieve 4866/15 |goto 57.06,81.13
step
Explore the Crushblow |achieve 4866/3 |goto 47.19,76.06
step
Explore the Dunwald Ruins |achieve 4866/6 |goto 45.80,69.23
step
Explore Grim Batol |achieve 4866/10 |goto 23.86,56.16
step
Explore Wyrms' Bend |achieve 4866/26 |goto 28.67,45.98
step
Explore the Dragonmaw Pass |achieve 4866/4 |goto 25.32,36.59
step
Explore the Vermillion Redoubt |achieve 4866/24 |goto 33.96,32.86
step
Explore Glopgut's Hollow |achieve 4866/8 |goto 35.99,35.06
step
Explore The Gullet |achieve 4866/19 |goto 37.28,39.71
step
Explore The Twighlight Breach |achieve 4866/21 |goto 41.56,50.59
step
Explore Victor's Point |achieve 4866/25 |goto 44.39,57.83
step
Explore the Crucible of Carnage |achieve 4866/2 |goto 52.38,56.08
step
Explore the Highland Forest |achieve 4866/12 |goto 62.12,60.66
step
Explore Firebeard's Patrol |achieve 4866/7 |goto 60.94,55.84
step
Explore the Gorshak War Camp |achieve 4866/9 |goto 60.40,47.26
step
Explore the Bloodgulch |achieve 4866/1 |goto 55.71,40.84
step
Explore Thundermar |achieve 4866/22 |goto 46.91,28.19
step
Explore Humboldt Conflagration |achieve 4866/13 |goto 39.38,21.75
step
Explore the Ruins of Drakgor |achieve 4866/16 |goto 44.19,13.81
step
Explore The Maw of Madness |achieve 4866/27 |goto 51.06,10.84
step
Explore Kirthaven |achieve 4866/14 |goto 57.36,19.01
step
Explore the Krazzworks |achieve 4866/20 |goto 73.60,21.23
step
Explore The Black Breach |achieve 4866/18 |goto 60.26,30.98
step
Explore the Slithering Cove |achieve 4866/17 |goto 71.73,48.14
step
Explore Dragonmaw Port |achieve 4866/5 |goto 75,57
step
|achieve 4866
step
_Congratulations!_
You Earned the "Explore Twilight Highlands" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum",{
condition_end=function() return achieved(4865) end,
achieveid={4865},
patch='40003',
description="\nExplore Uldum, revealing the following covered areas of the world map:\n\nSchnottz's Landing\n"..
"Akhenet Fields\nKhartut's Tomb\nMar'at\nNeferset City\nObelisk of the Stars\nRuins of Ahmtul\n"..
"Orsis\nTemple of Uldum\nThe Gate of Unending Cycles\nThe Trail of Devastation\nObelisk of the Sun\n"..
"Cradle of the Ancients\nLost City of the Tol'vir\nObelisk of the Moon\nNahom\nTombs of the Precursors\n"..
"Ramkahen\nRuins of Ammon\nTahret Grounds\nThe Cursed Landing\nVir'naal Dam",
},[[
step
Explore Ramkahen |achieve 4865/12 |goto Uldum/0 54.91,34.24
step
Explore the Tahret Grounds |achieve 4865/16 |goto 59.89,37.83
step
Explore the Obelisk of the Stars |achieve 4865/9 |goto 62.94,32.54
step
Explore Khartut's Tomb |achieve 4865/3 |goto 64.10,21.83
step
Explore The Gate of Unending Cycles |achieve 4865/19 |goto 67.88,22.49
step
Explore Nahom |achieve 4865/6 |goto 67.01,41.29
step
Explore the Tombs of the Precursors |achieve 4865/20 |goto 71.85,44.77
step
Explore The Cursed Landing |achieve 4865/18 |goto 83.93,53.02
step
Explore The Trail of Devastation |achieve 4865/21 |goto 79.78,56.31
step
Explore the Lost City of the Tol'vir |achieve 4865/4 |goto 63.77,70.60
step
Explore Neferset City |achieve 4865/7 |goto 50.85,77.24
step
Explore the Cradle of the Ancients |achieve 4865/2 |goto 46.61,73.90
step
Explore the Ruins of Ammon |achieve 4865/14 |goto 36.64,66.13
step
Explore Schnottz's Landing |achieve 4865/15 |goto 24.48,61.18
step
Explore the Obelisk of the Sun |achieve 4865/10 |goto 41.88,56.64
step
Explore Akhenet Fields |achieve 4865/1 |goto 53.95,52.09
step
Explore the Vir'naal Dam |achieve 4865/22 |goto 53.49,42.15
step
Explore Mar'at |achieve 4865/5 |goto 49.53,39.46
step
Explore Orsis |achieve 4865/11 |goto 43.89,37.25
step
Explore the Temple of Uldum |achieve 4865/17 |goto 34.47,30.31
step
Explore the Obelisk of the Moon |achieve 4865/8 |goto 39.67,21.81
step
Explore the Ruins of Ahmtul |achieve 4865/13 |goto 45.02,15.04
step
|achieve 4865
step
_Congratulations!_
You Earned the "Explore Uldum" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir",{
condition_end=function() return achieved(4825) end,
achieveid={4825},
patch='40003',
description="\nExplore Vashj'ir, revealing the following covered areas of the world map:\n\nUnderlight Canyon\n"..
"Abandoned Reef\nKorthun's End\nSeabrush\nGlimmerdeep Gorge\nGurboggle's Ledge\nDeepfin Ridge\n"..
"Seafarer's Tomb\nThe Skeletal Reef\nNespirah\nRuins of Vashj'ir\nSilver Tide Hollow\nL'ghorek\n"..
"Abyssal Breach\nThe Scalding Chasm\nGnaws' Boneyard\nRuins of Thelserai Temple\nBeth'mora Ridge\n"..
"The Clutch\nLegion's Fate\nShimmering Grotto",
},[[
step
click Hero's Call Board##250720
accept Hero's Call Vashj'ir##27724 |goto Stormwind City/0 62.90,71.55
step
talk Naraat the Earthspeaker##45226
accept Eye of the Storm##28826 |goto 74.54,19.02
step
clicknpc Waters of Farseeing##50088
Peer Into the Waters of Farseeing |q 28826/1 |goto 74.38,19.53
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto 74.54,19.02
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto 27.37,24.15
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
home The Briny Cutter |goto 45.24,23.35 |q 25357 |future
stickystart "Collect_Saltwater_Starfish"
step
Swim through the doorway |goto 44.82,23.34 < 7 |walk
Leave the ship |goto 44.73,24.07 < 7 |walk
click Conch Shell##202560
collect Conch Shell##52504 |q 24432/2 |goto 45.14,26.80
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish on the ground around this area.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto 44.29,27.17
step
Enter the ship |goto 44.91,24.16 < 7 |walk
Swim through the doorway |goto 44.84,23.44 < 7 |walk
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto 45.24,23.35
accept Pay It Forward##25281 |goto 45.24,23.35
step
Swim through the doorway |goto 44.82,23.34 < 7 |walk
Leave the ship |goto 44.73,24.07 < 7 |walk
Use the Enchanted Conch |use Enchanted Conch##52710
|tip Use it on Drowning Soldiers around this area.
|tip They float above the floor.
Rescue #6# Drowning Soldiers |q 25281/1 |goto 45.59,28.17
step
Enter the ship |goto 44.91,24.16 < 7 |walk
Swim through the doorway |goto 44.84,23.44 < 7 |walk
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Pay It Forward##25281 |goto 45.24,23.35
accept Rest For the Weary##25405 |goto 45.24,23.35
step
talk Captain Taylor##39887
|tip Inside the ship.
turnin Rest For the Weary##25405 |goto 44.72,22.56
accept Buy Us Some Time##25357 |goto 44.72,22.56
accept Traveling on Our Stomachs##25546 |goto 44.72,22.56
stickystart "Kill_Zinjatar_Raiders"
step
Swim through the doorway |goto 44.82,23.34 < 7 |walk
Leave the ship |goto 44.73,24.07 < 7 |walk
kill Splitclaw Skitterer##40685+
collect 10 Succulent Crab Meat##54845 |q 25546/1 |goto 45.20,27.05
step
label "Kill_Zinjatar_Raiders"
kill 8 Zin'jatar Raider##39313 |q 25357/1 |goto 45.20,27.05
|tip They swim higher up.
step
Enter the ship |goto 44.91,24.16 < 7 |walk
Swim through the doorway |goto 44.84,23.44 < 7 |walk
talk Captain Taylor##39887
|tip Inside the ship.
turnin Buy Us Some Time##25357 |goto 44.72,22.56
turnin Traveling on Our Stomachs##25546 |goto 44.72,22.56
accept To Arms!##25545 |goto 44.72,22.56
accept Stormwind Elite Aquatic and Land Forces##25564 |goto 44.72,22.56
stickystart "Collect_Stormwind_Helms"
stickystart "Collect_Stormwind_Spears"
stickystart "Collect_Stormwind_Shields"
stickystart "Collect_Stormwind_SEAL_Equipment"
step
Swim through the doorway |goto 44.82,23.34 < 7 |walk
Leave the ship |goto 44.73,24.07 < 7 |walk
kill Slitherfin Eel##40855
accept Once More, With Eeling##27729 |goto 49.06,24.36
|tip You will automatically accept this quest after killing a Slitherfin Eel.
stickystart "Slay_Disgusting_Eels_Justifiably"
step
kill Gilblin Scavenger##40811+
click Stormwind Breastplates##203016+
|tip They look like small silver chest armors on the ground around this area.
collect 5 Stormwind Breastplate##54843 |q 25545/1 |goto 49.06,24.36
step
label "Collect_Stormwind_Helms"
kill Gilblin Scavenger##40811+
click Stormwind Helm##203015+
|tip They look like small silver helmets on the ground around this area.
collect 5 Stormwind Helm##117406 |q 25545/2 |goto 49.06,24.36
step
label "Collect_Stormwind_Spears"
kill Gilblin Scavenger##40811+
click Stormwind Spear##203014+
|tip They look like spears sticking out of the ground around this area.
collect 5 Stormwind Spear##54958 |q 25545/3 |goto 49.06,24.36
step
label "Collect_Stormwind_Shields"
kill Gilblin Scavenger##40811+
collect 5 Stormwind Shield##117413 |q 25545/4 |goto 49.06,24.36
step
label "Collect_Stormwind_SEAL_Equipment"
click Stormwind S.E.A.L. Equipment+
|tip They look like metal chests on the ground around this area.
collect 6 Stormwind S.E.A.L. Equipment##54957 |q 25564/1 |goto 49.06,24.36
step
label "Slay_Disgusting_Eels_Justifiably"
kill Slitherfin Eel##40855+
Slay #8# Disgusting Eels Justifiably |q 27729/1 |goto 49.06,24.36
step
Click the Complete Quest Box:
turnin Once More, With Eeling##27729
step
Enter the ship |goto 45.62,23.77 < 7 |walk
Swim through the doorway |goto 44.84,23.44 < 7 |walk
talk Captain Taylor##39887
|tip Inside the ship.
turnin To Arms!##25545 |goto 44.72,22.56
turnin Stormwind Elite Aquatic and Land Forces##25564 |goto 44.72,22.56
accept On Our Own Terms##25547 |goto 44.72,22.56
step
Watch the dialogue
talk Captain Taylor##40690
|tip Inside the ship.
turnin On Our Own Terms##25547 |goto 45.05,23.58
accept All or Nothing##25558 |goto 45.05,23.58
step
Swim through the doorway |goto 44.82,23.34 < 7 |walk
Leave the ship |goto 44.73,24.07 < 7 |walk
Kill the enemies that attack
|tip You will eventually get taken hostage.
Watch the dialogue
Complete the Defense of the Briny Gutter |q 25558/1 |goto 44.4,24.6
step
talk Erunak Stonespeaker##40105
turnin All or Nothing##25558 |goto 46.33,46.92
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto 46.03,46.87
step
Use Moanah's Baitstick |use Moanah's Baitstick##54462
|tip Use it on a Speckled Sea Turtle around this area.
|tip A shark will come and eat the turtle shortly after you start riding it.
Mount the Sea Turtle |q 25477/1 |goto 55.31,50.87
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto 46.03,46.87
accept The Abyssal Ride##25371 |goto 46.03,46.87
step
click Braided Rope##202766
Tie Off the Seahorse Lure |q 25371/1 |goto 45.39,46.62
step
clicknpc Abyssal Seahorse##39629
|tip It appears nearby.
Ride the Abyssal Seahorse |invehicle |goto 45.39,46.62 |q 25371
step
Subdue the Abyssal Seahorse |q 25371/2
|tip Use the abilities on your action bar when the on screen instructions tell you to.
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto 46.03,46.87
step
Explore Legion's Fate |achieve 4825/14 |goto Kelp'thar Forest/0 42.19,34.46
step
Explore Seafarer's Tomb |achieve 4825/13 |goto 51.04,28.03
step
Explore Gurboggle's Ledge |achieve 4825/11 |goto 52.05,51.03
step
Explore the Skeletal Reef |achieve 4825/15 |goto 58.02,48.05
step
Explore Gnaws' Boneyard |achieve 4825/10 |goto 59.96,58.01
step
Explore The Clutch |achieve 4825/12 |goto 57.97,77.71
step
Explore the Shimmering Grotto |achieve 4825/20 |goto Shimmering Expanse/0 55.75,22.23
step
Explore the Silver Tide Hollow |achieve 4825/21 |goto 51.68,34.90
step
Explore the Glimmeringdeep Gorge |achieve 4825/9 |goto 48.27,46.62
step
Explore Nespirah |achieve 4825/17 |goto 51.06,48.26
step
Explore the Ruins of Thelserai Temple |achieve 4825/18 |goto 65.84,44.67
step
Explore Beth'more Ridge |achieve 4825/16 |goto 50.5,76.4
step
Explore the Ruins of Vashj'ir |achieve 4825/19 |goto 41.55,63.99
step
Explore the Abyssal Breach |achieve 4825/2 |goto Abyssal Depths/0 75.03,39.38
step
Explore the Seabrush |achieve 4825/7 |goto 58.78,33.55
step
Explore The Scalding Chasm |achieve 4825/8 |goto 52.48,28.87
step
Explore the Deepfin Ridge |achieve 4825/4 |goto 42.72,25.95
step
Explore the Underlight Canyon |achieve 4825/3 |goto 43.09,49.83
step
Explore L'Ghorek |achieve 4825/6 |goto 40.33,51.57
|tip You will likely be dismounted and have to swim back out a bit before being able to mount again.
step
Explore the Abandoned Reef |achieve 4825/1 |goto 38.61,68.30
step
Explore Korthun's End |achieve 4825/5 |goto 48.80,68.15
step
|achieve 4825
step
_Congratulations!_
You Earned the "Explore Vashj'ir" Achievement
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Exploration\\Cataclysm\\From Hell's Heart I Stab At Thee")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Exploration\\Cataclysm\\Stood in the Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Exploration\\Cataclysm\\Surveying the Damage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Breaking The Sound Barrier")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Cataclysmically Delicious")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Cataclysmically Epic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Cataclysmically Superior")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Drown Your Sorrows")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Dual Talent Specialization")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Epic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Fast and Furious")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Friend or Fowl?",{
achieveid={1254},
patch='30001',
description="\nThis guide will walk you through slaying 15 turkeys in 3 minutes in Howling Fjord.",
},[[
step
kill Fjord Turkey##24746+
|tip Kill them as fast as you can, then hurry to kill another one each time.
Slay #15# Turkeys in 3 Minutes |achieve 1254 |goto Howling Fjord/0 66.31,71.14
step
_Congratulations!_
You Earned the "Friend or Fowl?" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Giddy Up!")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Going Down?",{
achieveid={964},
patch='30001',
description="\nThis guide will walk you through falling 65 yards without dying.",
},[[
step
|achieve 964 |goto Shattrath City/0 50.13,62.05 |only if not (Mage or Paladin or DemonHunter)
|achieve 964 |only if (Mage or Paladin or DemonHunter)
|tip Wait for the elevator to reach the top, then leap off the left or right side. |only if not (Mage or Paladin or DemonHunter)
|tip You must hit the ramp to the left or the right of the bridge. |only if not (Mage or Paladin or DemonHunter)
|tip Hitting the bridge leading to the Terrace of Light won't be enough. |only if not (Mage or Paladin or DemonHunter)
|tip Mount up and fly high into the air, then dismount and use "Divine Shield" or "Hand of Protection" before you hit the ground. |only if Paladin
|tip Mount up and fly high into the air, then dismount and use "Ice Block" before you hit the ground. |only if Mage
|tip Mount up and fly high into the air, then dismount and use "Glide" before you hit the ground. |only if DemonHunter
step
_Congratulations_
You Earned the "Going Down?" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Greedy")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Higher Learning",{
achieveid={1956},
patch='30002',
description="\nThis guide will walk you through reading the volumes of 'The Schools of Arcane Magic' found in Dalaran.",
},[[
step
Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times) so this achievement may take you a while to get
|tip The book you want won't always be there. Fake trash books spawn to make the achievement even harder to get, but keep at it. Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
This is an achievement that you may want to dedicate a lot of time to if you want it
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide
Good luck!
confirm |only if not achieved(1956)
step
label "RestartHigherLearning"
click The Schools of Arcane Magic - Illusion##192865
|tip It looks like a brown book laying on a wooden crate.
Read The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran 64.4,52.4
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Introduction##192708
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
Read The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto Dalaran 56.6,45.6
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Abjuration##192709
|tip It looks like a brown book laying on ground next to a small table inside this building.
Read The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto Dalaran 52.3,54.8
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Enchantment##192713
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
Read The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto Dalaran 43.6,46.7
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Transmutation##192867
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.
Read The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto Dalaran 46.8,40.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Necromancy##192866
|tip It looks like a blue book laying on a bookshelf upstairs in this building.
Read The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto Dalaran 46.8,39.1
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Conjuration##192710
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
Read The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto Dalaran 30.8,46.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Divination##192711
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
Read The Schools of Arcane Magic - Divination |achieve 1956/4 |goto Dalaran 26.5,52.1
_Click here_ if this book isn't available |confirm
step
Looks like you still need more education! _Click here_ to start the guide over |confirm |next "RestartHigherLearning" |only if not achieved(1956)
Congratulations, you have earned the Higher Learning achievement! |only if achieved(1956)
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Into The Wild Blue Yonder")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\It's Happy Hour Somewhere",{
achieveid={1833},
patch='30002',
description="\nThis guide will walk you through drinking 25 different types of beverages.",
},[[
step
talk Innkeeper Allison##6740
|tip Inside the building.
buy 1 Refreshing Spring Water##159 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Ice Cold Milk##1179 |goto 60.39,75.27 |achieve 1833
buy 1 Melon Juice##1205 |goto 60.39,75.27 |achieve 1833
buy 1 Sweet Nectar##1708 |goto 60.39,75.27 |achieve 1833
buy 1 Moonberry Juice##1645 |goto 60.39,75.27 |achieve 1833
buy 1 Morning Glory Dew##8766 |goto 60.39,75.27 |achieve 1833
buy 1 Filtered Draenic Water##28399 |goto 60.39,75.27 |achieve 1833
buy 1 Fresh Water##58274 |goto 60.39,75.27 |achieve 1833
buy 1 Pugnent Seal Whey##33444 |goto 60.39,75.27 |achieve 1833
buy 1 Honeymint Tea##33445 |goto 60.39,75.27 |achieve 1833
buy 1 Sparkling Oasis Water##58256 |goto 60.39,75.27 |achieve 1833
buy 1 Highland Spring Water##58257 |goto 60.39,75.27 |achieve 1833
step
use the Refreshing Spring Water##159
Drink the Refreshing Spring Water |havebuff 132794 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132794 |achieve 1833
step
use the Ice Cold Milk##1179
Drink the Ice Cold Milk |havebuff 132794 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132794 |achieve 1833
step
use the Melon Juice##1205
Drink the Melon Juice |havebuff 132794 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132794 |achieve 1833
step
use the Sweet Nectar##1708
Drink the Sweet Nectar |havebuff 132794 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132794 |achieve 1833
step
use the Moonberry Juice##1645
Drink the Moonberry Juice |havebuff 132794 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132794 |achieve 1833
step
use the Morning Glory Dew##8766
Drink the Morning Glory Dew |havebuff 132794 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132794 |achieve 1833
step
use the Filtered Draenic Water##28399
Drink the Filtered Draenic Water |havebuff 132805 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132805 |achieve 1833
step
use the Pugnent Seal Whey##33444
Drink the Pugnent Seal Whey |havebuff 132805 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132805 |achieve 1833
step
use the Fresh Water##58274
Drink the Fresh Water |havebuff 132805 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132805 |achieve 1833
step
use the Honeymint Tea##33445
Drink the Honeymint Tea |havebuff 132805 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132805 |achieve 1833
step
use the Sparkling Oasis Water##58256
Drink the Sparkling Oasis Water |havebuff 132805 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132805 |achieve 1833
step
use the Highland Spring Water##58257
Drink the Highland Spring Water |havebuff 132805 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff 132805 |achieve 1833
step
talk Daisy##40832
|tip Downstairs inside the barge.
buy 1 Bottle of Pinot Noir##2723 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Glass of Eversong Wine##44570 |goto 76.46,74.80 |achieve 1833
buy 1 Honey Mead##40035 |goto 76.46,74.80 |achieve 1833
buy 1 Flask of Port##2593 |goto 76.46,74.80 |achieve 1833
buy 1 Bottle of Silvermoon Port##44571 |goto 76.46,74.80 |achieve 1833
buy 1 Skin of Dwarven Stout##2596 |goto 76.46,74.80 |achieve 1833
buy 1 Flask of Bitter Cactus Cider##44575 |goto 76.46,74.80 |achieve 1833
buy 1 Snowplum Brandy##40036 |goto 76.46,74.80 |achieve 1833
buy 1 Flagon of Mead##2594 |goto 76.46,74.80 |achieve 1833
buy 1 Cup of Frog Venom Brew##44573 |goto 76.46,74.80 |achieve 1833
buy 1 Caraway Burnwine##40042 |goto 76.46,74.80 |achieve 1833
buy 1 Jug of Bourbon##2595 |goto 76.46,74.80 |achieve 1833
buy 1 Skin of Mulgore Firewater##44574 |goto 76.46,74.80 |achieve 1833
step
use the Bottle of Dalaran Noir##2723
Drink the Bottle of Dalaran Noir |complete itemcount(2723) == 0 |achieve 1833
step
use the Glass of Eversong Wine##44570
Drink the Glass of Eversong Wine |complete itemcount(44570) == 0 |achieve 1833
step
use the Honey Mead##40035
Drink the Honey Mead |complete itemcount(40035) == 0 |achieve 1833
step
use the Flask of Stormwind Tawny##2593
Drink the Flask of Stormwind Tawny |complete itemcount(2593) == 0 |achieve 1833
step
use the Bottle of Silvermoon Port##44571
Drink the Bottle of Silvermooon Port |complete itemcount(44571) == 0 |achieve 1833
step
use the Skin of Dwarven Stout##2596
Drink the Skin of Dwarven Stout |complete itemcount(2596) == 0 |achieve 1833
step
use the Flask of Bitter Cactus Cider##44575
Drink the Flask of Bitter Cactus Cider |complete itemcount(44575) == 0 |achieve 1833
step
use the Snowplum Brandy##40036
Drink the Snowplum Brandy |complete itemcount(40036) == 0 |achieve 1833
step
use the Flagon of Mead##2594
Drink the Flagon of Mead |complete itemcount(2594) == 0 |achieve 1833
step
use the Cup of Frog Venom Brew##44573
Drink the Cup of Frog Venom Brew |complete itemcount(44573) == 0 |achieve 1833
step
use the Caraway Burnwine##40042
Drink the Caraway Burnwine |complete itemcount(40042) == 0 |achieve 1833
step
use the Jug of Badlands Bourbon##2595
Drink the Jug of Badlands Bourbon |complete itemcount(2595) == 0 |achieve 1833
step
use the Skin of Mulgore Firewater##44574
Drink the Skin of Mulgore Firewater |complete itemcount(44574) == 0 |achieve 1833
step
_Congratulations!_
You Earned the "It's Happy Hour Somewhere" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\It's Over Nine Thousand!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Needy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\The Right Stuff")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Safe Deposit")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Shave and a Haircut",{
achieveid={545},
patch='30001',
description="\nThis guide will walk you through visiting a Barber Shop and get your hair cut.",
},[[
step
click Barbershop Chair
|tip Inside the building.
|tip Change your hair style or hair color then click "Okay."
|tip This will cost a small amount of money.
|achieve 545 |goto Stormwind City/0 61.66,65.07
step
_Congratulations!_
You Earned the "Shave and a Haircut" Achievement.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\Superior")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Tastes Like Chicken",{
achieveid={1832},
patch='30002',
description="\nThis guide will walk you through sampling 50 different kinds of Azeroth's delectable dishes.",
},[[
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
buy 1 Tough Jerky##117 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Haunch of Meat##2287 |goto 18.18,51.44 |achieve 1832
buy 1 Mutton Chop##3770 |goto 18.18,51.44 |achieve 1832
buy 1 Wild Hog Shank##3771 |goto 18.18,51.44 |achieve 1832
buy 1 Cured Ham Steak##4599 |goto 18.18,51.44 |achieve 1832
buy 1 Roasted Quail##8952 |goto 18.18,51.44 |achieve 1832
buy 1 Smoked Talbuk Venison##27854 |goto 18.18,51.44 |achieve 1832
buy 1 Salted Venison##33454 |goto 18.18,51.44 |achieve 1832
buy 1 Mead Basted Caribou##35953 |goto 18.18,51.44 |achieve 1832
buy 1 Roasted Beef##58268 |goto 18.18,51.44 |achieve 1832
buy 1 Massive Turkey Leg##58269 |goto 18.18,51.44 |achieve 1832
step
talk Myra Tyrngaarde##5109
|tip She patrols the Auction House area.
buy 1 Tough Hunk of Bread##4540 |goto 28.05,69.77 |achieve 1832
buy 1 Freshly Baked Bread##4541 |goto 28.05,69.77 |achieve 1832
buy 1 Moist Cornbread##4542 |goto 28.05,69.77 |achieve 1832
buy 1 Mulgore Spice Bread##4544 |goto 28.05,69.77 |achieve 1832
buy 1 Soft Banana Bread##4601 |goto 28.05,69.77 |achieve 1832
buy 1 Homemade Cherry Pie##8950 |goto 28.05,69.77 |achieve 1832
buy 1 Mag'har Grainbread##27855 |goto 28.05,69.77 |achieve 1832
buy 1 Crusty Flatbread##33449 |goto 28.05,69.77 |achieve 1832
buy 1 Sweet Potato Bread##35950 |goto 28.05,69.77 |achieve 1832
buy 1 Pine Nut Bread##58260 |goto 28.05,69.77 |achieve 1832
buy 1 Buttery Wheat Roll##58261 |goto 28.05,69.77 |achieve 1832
step
use the Tough Jerky##117
Eat the Tough Jerky |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Tough Hunk of Bread##4540
Eat the Tough Hunk of Bread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Haunch of Meat##2287
Eat the Haunch of Meat |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Freshly Baked Bread##4541
Eat the Freshly Baked Bread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Mutton Chop##3770
Eat the Mutton Chop |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Moist Cornbread##4542
Eat the Moist Cornbread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Wild Hog Shank##3771
Eat the Wild Hog Shank |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Mulgore Spice Bread##4544
Eat the Mulgore Spice Bread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Cured Ham Steak##4599
Eat the Cured Ham Steak |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Soft Banana Bread##4601
Eat the Soft Banana Bread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Roasted Quail##8952
Eat the Roasted Quail |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Homemade Cherry Pie##8950
Eat the Homemade Cherry Pie |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Smoked Talbuk Venison##27854
Eat the Smoked Talbuk Venison |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Mag'har Grainbread##27855
Eat the Mag'har Grainbread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Salted Venison##33454
Eat the Salted Venison |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Crusty Flatbread##33449
Eat the Crusty Flatbread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Mead Basted Caribou##35953
Eat the Mead Basted Cariboy |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Sweet Potato Bread##35950
Eat the Sweet Potato Bread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Roasted Beef##58268
Eat the Roasted Beef |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Pine Nut Bread##58260
Eat the Pine Nut Bread |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Massive Turkey Leg##58269
Eat the Massive Turkey |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Buttery Wheat Roll##58261
Eat the Buttery Wheat Roll |havebuff 134062 |achieve 1832
step
talk Thaegra Tillstone##44235
|tip Inside the building.
buy 1 Forest Mushroom Cap##4604 |goto Stormwind City/0 64.93,31.94 |achieve 1832
buy 1 Red-Speckeled Mushroom##4605 |goto 64.93,31.94 |achieve 1832
buy 1 Spongy Morel##4606 |goto 64.93,31.94 |achieve 1832
buy 1 Delicious Cave Mold##4607 |goto 64.93,31.94 |achieve 1832
buy 1 Raw Black Truffle##4608 |goto 64.93,31.94 |achieve 1832
buy 1 Dried King Bolete##8948 |goto 64.93,31.94 |achieve 1832
step
use the Forest Mushroom Cap##4604
Eat the Forest Mushroom |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Red-Speckeled Mushroom##4605
Eat the Red-Speckeled Mushroom |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Spongy Morel##4606
Eat the Spongy Morel |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Delicious Cave Mold##4607
Eat the Delicious Cave Mold |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Raw Black Truffle##4608
Eat the Raw Black Truffle |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Dried King Bolete##8948
Eat the Dried King Bolete |havebuff 134062 |achieve 1832
step
talk Talaelar##4221
buy 1 Slitherskin Mackerel##787 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Longjaw Mud Snapper##4592 |goto 48.81,61.50 |achieve 1832
buy 1 Bristle Whisker Catfish##4593 |goto 48.81,61.50 |achieve 1832
buy 1 Rockscale Cod##4594 |goto 48.81,61.50 |achieve 1832
buy 1 Striped Yellowtail##21552 |goto 48.81,61.50 |achieve 1832
buy 1 Spinefin Halibut##8957 |goto 48.81,61.50 |achieve 1832
buy 1 Sunspring Carp##27858 |goto 48.81,61.50 |achieve 1832
buy 1 Fillet of Icefin##33451 |goto 48.81,61.50 |achieve 1832
buy 1 Poached Emperor Salmon##35951 |goto 48.81,61.50 |achieve 1832
buy 1 Sliced Raw Billfish##58262 |goto 48.81,61.50 |achieve 1832
buy 1 Grilled Shark##58263 |goto 48.81,61.50 |achieve 1832
step
talk Innkeeper Saelienne##6735
buy 1 Shiny Red Apple##4536 |goto 62.52,32.80 |achieve 1832
buy 1 Tel'Abim Banana##4537 |goto 62.52,32.80 |achieve 1832
buy 1 Snapvine Watermelon##4538 |goto 62.52,32.80 |achieve 1832
buy 1 Goldenbark Apple##4539 |goto 62.52,32.80 |achieve 1832
buy 1 Moon Harvest Pumpkin##4602 |goto 62.52,32.80 |achieve 1832
buy 1 Deep Fried Plantains##8953 |goto 62.52,32.80 |achieve 1832
buy 1 Skethyl Berries##27856 |goto 62.52,32.80 |achieve 1832
buy 1 Tundra Berries##35949 |goto 62.52,32.80 |achieve 1832
buy 1 Savory Snowplum##35948 |goto 62.52,32.80 |achieve 1832
buy 1 Sour Green Apple##58264 |goto 62.52,32.80 |achieve 1832
buy 1 Highland Pomegranate##58265 |goto 62.52,32.80 |achieve 1832
step
use the Slitherskin Mackerel##787
Eat the Slitherskin Mackerel |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Shiny Red Apple##4536
Eat the Shiny Red Apple |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Longjaw Mud Snapper##4592
Eat the Longjaw Mud Snapper |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Tel'Abim Banana##4537
Eat the Tel'Abim Banana |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Bristle Whisker Catfish##4593
Eat the Bristle Whisker Catfish |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Snapvine Watermelon##4538
Eat the Snapvine Watermelon |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Rockscale Cod##4594
Eat the Rockscale Cod |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Goldenbark Apple##4539
Eat the Goldenbark Apple |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Striped Yellowtail##21552
Eat the Striped Yellowtail |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Moon Harvest Pumpkin##4602
Eat the Moon Harvest Pumpkin |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Spinefin Halibut##8957
Eat the Spinefin Hailibut |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Deep Fried Plantains##8953
Eat the Deep Fried Plantains |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Sunspring Carp##27858
Eat the Sunspring Carp |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Skethyl Berries##27856
Eat the Skethyl Berries |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Fillet of Icefin##33451
Eat the Fillet of Icefin |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Tundra Berries##35949
Eat the Tundra Berries |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Poached Emperor Salmon##35951
Eat the Poached Emperor |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Savory Snowplum##35948
Eat the Savory Snowplum |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Sliced Raw Billfish##58262
Eat the Sliced Raw Billfish |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Sour Green Apple##58264
Eat the Sour Green Apple |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Grilled Shark##58263
Eat the Grilled Shark |havebuff 134062 |achieve 1832
step
Move Slightly to Stop Eating |nobuff 134062
step
use the Highland Pomegranate##58265
Eat the Highland Pomegranate |havebuff 134062 |achieve 1832
step
|achieve 1832
step
_Congratulations!_
You Earned the "Tastes Like Chicken" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\To All The Squirrels (Loved, Shared, Cared)/Pest Control",{
condition_end=function() return achieved(5548) end,
achieveid={1206,2557,2556,5548},
patch='40003',
description="\nThis guide will walk you through showing the critters of Azeroth how much you /love them and slaying the pests.",
},[[
step
label "start"
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City 60.4,75.3
only if not achieved(5548)
step
clicknpc Rockchewer Whelk##48848
Use the Love emote on a Rockchewer Whelk |script DoEmote("LOVE")
Love a Rockchewer Whelk |achieve 5548/9 |goto Shimmering Expanse 41.3,53.9
step
clicknpc Sea Cucumber##48802
Use the Love emote on a Sea Cucumber |script DoEmote("LOVE")
Love a Sea Cucumber |achieve 5548/11 |goto Shimmering Expanse 41.3,53.9
step
kill Rat##4075 |achieve 2556/18 |goto The Cape of Stranglethorn 40.0,67.7
step
kill Roach##4076 |achieve 2556/9 |goto The Cape of Stranglethorn 42.2,69.5
step
clicknpc Wharf Rat##47667
Use the Love emote on a Wharf Rat |script DoEmote("LOVE")
Love a Wharf Rat |achieve 5548/12 |goto The Cape of Stranglethorn 42.7,72.8
step
clicknpc Parrot##9600
Use the Love emote on a Parrot |script DoEmote("LOVE")
Love a Parrot |achieve 1206/11 |goto Northern Stranglethorn 50.5,66.4
step
kill Scorpion##61326 |achieve 2556/14 |goto Blasted Lands 42.5,21.9
step
kill Fire Beetle##9699 |achieve 2556/16 |goto Blasted Lands 44.4,32.9
step
clicknpc Huge Toad##61368
Use the Love emote on a Huge Toad |script DoEmote("LOVE")
Love a Huge Toad |achieve 2557/7 |goto Swamp of Sorrows 39.7,51.0
step
clicknpc Skunk##17467
Use the Love emote on a Skunk |script DoEmote("LOVE")
|tip It looks like a small skunk that walks around this area.
Love a Skunk |achieve 1206/16 |goto Duskwood 12.3,65.8
step
clicknpc Rabbit##61080
Use the Love emote on a Rabbit |script DoEmote("LOVE")
Love a Rabbit |achieve 1206/12 |goto Elwynn Forest 36.3,85.8
step
clicknpc Deer##883
Use the Love emote on a Deer |script DoEmote("LOVE")
|tip Be sure not to get it mixed up with the fawn also in the area.
Love a Deer |achieve 1206/5 |goto Elwynn Forest 24.9,83.0
step
clicknpc Fawn##890
Use the Love emote on a Fawn |script DoEmote("LOVE")
Love a Fawn |achieve 1206/7 |goto Elwynn Forest 24.9,83.0
step
clicknpc Cow##2442
Use the Love emote on a Cow |script DoEmote("LOVE")
Love a Cow |achieve 1206/4 |goto Elwynn Forest 32.3,77.2
step
clicknpc Chicken##620
Use the Love emote on a Chicken |script DoEmote("LOVE")
Love a Chicken |achieve 1206/3 |goto Elwynn Forest 36.5,60.1
step
clicknpc Cat##6368
Use the Love emote on a Cat |script DoEmote("LOVE")
Love a Cat |achieve 1206/2 |goto Elwynn Forest 44.5,53.8
step
kill Gold Beetle##32258 |achieve 2556/17 |goto Badlands 50.4,43.9
step
clicknpc Lava Crab##9700
Use the Love emote on a Lava Crab |script DoEmote("LOVE")
Love a Lava Crab |achieve 2557/8 |goto Searing Gorge 31.1,43.7
step
clicknpc Sheep##1933
Use the Love emote on a Sheep |script DoEmote("LOVE")
Love a Sheep |achieve 1206/14 |goto Loch Modan 20.9,71.9
step
clicknpc Ram##2098
Use the Love emote on a Ram |script DoEmote("LOVE")
Love a Ram |achieve 1206/13 |goto Loch Modan 25.1,37.8
step
clicknpc Squirrel##1412
Use the Love emote on a Squirrel |script DoEmote("LOVE")
Love a Squirrel |achieve 1206/17 |goto Loch Modan 29.0,66.3
step
kill Squirrel##1412 |achieve 2556/4 |goto Loch Modan 29.0,66.3
step
label "travel_twilight"
clicknpc Yellow-Bellied Marmot##48683
Use the Love emote on a Yellow-Bellied Marmot |script DoEmote("LOVE")
Love a Yellow-Bellied Marmot |achieve 5548/13 |goto Twilight Highlands 29.3,33.1
step
clicknpc Highlands Turkey##48706
Use the Love emote on a Highlands Turkey |script DoEmote("LOVE")
Love a Highlands Turkey |achieve 5548/4 |goto Twilight Highlands 29.3,33.1
step
clicknpc Shore Crab##60761
Use the Love emote on a Shore Crab |script DoEmote("LOVE")
Love a Shore Crab |achieve 1206/15 |goto Twilight Highlands 71.2,41.2
step
kill Maggot##16030 |achieve 2556/13 |goto The Hinterlands 31.9,57.9
step
kill Larva##16068 |achieve 2556/1 |goto Ghostlands 45.3,31.1
step
clicknpc Ewe##19665
Use the Love emote on a Ewe |script DoEmote("LOVE")
Love an Ewe |achieve 1206/6 |goto Shattrath City 58.8,23.3
step
clicknpc Borean Marmot##31685
Use the Love emote on a Borean Marmot |script DoEmote("LOVE")
Love a Borean Marmot |achieve 2557/2 |goto Borean Tundra 36.0,55.9
step
clicknpc Tundra Penguin##28440
Use the Love emote on a Tundra Penguin |script DoEmote("LOVE")
Love a Tundra Penguin |achieve 2557/12 |goto Borean Tundra 24.5,61.8
step
clicknpc Steam Frog##25679
Use the Love emote on a Steam Frog |script DoEmote("LOVE")
Love a Steam Frog |achieve 1206/18 |goto Borean Tundra 61.0,51.8
step
clicknpc Borean Frog##25677
Use the Love emote on a Borean Frog |script DoEmote("LOVE")
Love a Borean Frog |achieve 1206/1 |goto Borean Tundra 72.7,41.0
step
clicknpc Sholazar Tickbird##28093
Use the Love emote on a Sholazar Tickbird |script DoEmote("LOVE")
Love a Sholazar Tickbird |achieve 2557/11 |goto Sholazar Basin 27.1,60.5
step
clicknpc Glacier Penguin##32498
Use the Love emote on a Glacier Penguin |script DoEmote("LOVE")
Love a Glacier Penguin |achieve 2557/5 |goto Icecrown 60.9,18.8
step
kill Underbelly Rat##32428 |achieve 2556/5 |goto Dalaran/2 41.0,50.4
step
kill Zul'Drak Rat##28202 |achieve 2556/8 |goto Zul'Drak 42.4,63.1
step
clicknpc Arctic Hare##29328
Use the Love emote on an Arctic Hare |script DoEmote("LOVE")
Love an Artic Hare |achieve 2557/1 |goto Zul'Drak 71.8,69.8
step
clicknpc Grizzly Squirrel##31889
Use the Love emote on a Grizzly Squirrel |script DoEmote("LOVE")
Love a Grizzly Squirrel |achieve 2557/6 |goto Grizzly Hills 66.7,13.1
step
clicknpc Mountain Skunk##31890
Use the Love emote on a Mountain Skunk |script DoEmote("LOVE")
Love a Mountain Skunk |achieve 2557/9 |goto Grizzly Hills 68.6,11.8
step
kill Fjord Rat##24174 |achieve 2556/15 |goto Howling Fjord 45.0,30.3
step
clicknpc Fjord Penguin##28407
Use the Love emote on a Fjord Penguin |script DoEmote("LOVE")
Love a Fjord Penguin |achieve 2557/3 |goto Howling Fjord 20.8,61.8
step
clicknpc Scalawag Frog##26503
Use the Love emote on a Scalawag Frog |script DoEmote("LOVE")
Love a Scalawag Frog |achieve 2557/10 |goto Howling Fjord 35.6,81.8
step
Follow the path to the bottom of the catacombs
kill Devouring Maggot##24270 |achieve 2556/6 |goto Howling Fjord 57.1,56.8
step
clicknpc Fjord Turkey##24746
Use the Love emote on a Fjord Turkey |script DoEmote("LOVE")
Love a Fjord Turkey |achieve 2557/4 |goto Howling Fjord 66.4,71.1
step
clicknpc Sassy Cat##47682
Use the Love emote on a Sassy Cat |script DoEmote("LOVE")
Love a Sassy Cat |achieve 5548/10 |goto Tol Barad Peninsula 61.2,35.5
step
clicknpc Baradin Fox Kit##48630
Use the Love emote on a Baradin Fox Kit |script DoEmote("LOVE")
Love a Baradin Fox Kit |achieve 5548/2 |goto Tol Barad 44.5,25.8
step
clicknpc Toad##1420
Use the Love emote on a Toad |script DoEmote("LOVE")
Love a Toad |achieve 1206/20 |goto Darnassus 42.4,46.9
step
clicknpc Alpine Chipmunk##49779
Use the Love emote on an Alpine Chipmunk |script DoEmote("LOVE")
Love an Alpine Chipmunk |achieve 5548/1 |goto Winterspring 51.5,47.9
step
kill Crystal Spider##32261 |achieve 2556/11 |goto Winterspring 48.8,54.8
step
clicknpc Grotto Vole##50419
Use the Love emote on a Grotto Vole |script DoEmote("LOVE")
Love a Grotto Vole |achieve 5548/3 |tip Inside of the cave |goto Mount Hyjal 54.5,17.1
step
clicknpc Rock Viper##50481
Use the Love emote on a Rock Viper |script DoEmote("LOVE")
Love a Rock Viper |achieve 5548/8 |goto Mount Hyjal 38.4,56.6
step
clicknpc Gazelle##4166
Use the Love emote on a Gazelle |script DoEmote("LOVE")
Love a Gazelle |achieve 1206/9 |goto Northern Barrens 51.8,56.4
step
clicknpc Small Frog##13321
Use the Love emote on a Small Frog |script DoEmote("LOVE")
Love a Small Frog |achieve 1206/8 |goto Northern Barrens 37.9,46.1
step
clicknpc Prairie Dog##2620
Use the Love emote on a Prairie Dog |script DoEmote("LOVE")
Love a Prairie Dog |achieve 1206/21 |goto Northern Barrens 66.0,42.1
step
kill Water Snake##4953 |achieve 2556/2 |goto Durotar 36.4,40.8
step
clicknpc Hare##5951
Use the Love emote on a Hare |script DoEmote("LOVE")
Love a Hare |achieve 1206/10 |goto Durotar 50.5,30.2
step
kill Adder##3300 |achieve 2556/12 |goto Durotar 45.6,16.0
step
clicknpc Swine##10685
Use the Love emote on a Swine |script DoEmote("LOVE")
Love a Swine |achieve 1206/19 |goto Durotar 43.7,30.1
step
kill Spider##14881 |achieve 2556/3 |goto Dustwallow Marsh 35.0,24.0
step
kill Mouse##6271 |achieve 2556/7 |goto Dustwallow Marsh 46.2,56.9
step
kill Snake##2914 |achieve 2556/10  |goto Dustwallow Marsh 50.0,57.6
step
clicknpc Rattlesnake##48686
Use the Love emote on a Rattlesnake |script DoEmote("LOVE")
Love a Rattlesnake |achieve 5548/7 |goto Tanaris 46.9,26.9
step
clicknpc Mac Frog##50491
Use the Love emote on a Mac Frog |script DoEmote("LOVE")
Love a Mac Frog |achieve 5548/5 |goto Uldum 56.6,35.1
step
clicknpc Oasis Moth##50496
Use the Love emote on an Oasis Moth |script DoEmote("LOVE")
Love an Oasis Moth |achieve 5548/6 |goto Uldum 55.0,36.1
step
Congratulations, you have earned the To All The Squirrels I've Loved Before achievement! |only if achieved(1206)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(1206)
Congratulations, you have earned the To All The Squirrels Who Shared My Life achievement! |only if achieved(2557)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(2557)
Congratulations, you have earned the To All the Squirrels Who Cared for Me achievement! |only if achieved(5548)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(5548)
Congratulations, you have earned the Pest Control achievement! |only if achieved(2556)
You've missed some pests! _Click here_ to start over |confirm |next "start" |only if not achieved(2556)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Well Read",{
achieveid={1244},
patch='30001',
description="\nThis guide will walk you through reading the scattered books of Azeroth.",
},[[
step
click The World Tree and the Emerald Dream##268087 |achieve 1244/42 |goto Stormwind City 85.4,23.3
|tip It's on the table.
step
click The War of the Ancients##268086 |achieve 1244/38 |goto Stormwind City 85.3,23.2
|tip It's on the table.
step
click Aegwynn and the Dragon Hunt##268044 |achieve 1244/1 |goto Stormwind City 85.8,23.7
|tip On the pillar base next to the candles.
step
click The New Horde##268079 |achieve 1244/32 |goto Stormwind City 86.1,25.5
|tip On the pillar base.
step
click The Guardians of Tirisfal##268074 |achieve 1244/27 |goto Stormwind City 85.0,26.1
|tip On the table.
step
click Aftermath of the Second War##268045 |achieve 1244/2 |goto Stormwind City 85.2,26.1
|tip On the table.
step
click The Alliance of Lordaeron##268066 |achieve 1244/21 |goto Stormwind City 85.2,26.1
|tip On the table.
step
click The Kaldorei and the Well of Eternity##268076 |achieve 1244/29 |goto Stormwind City 84.7,25.9
|tip On the pillar base next to the candles.
step
click Beyond the Dark Portal##268048 |achieve 1244/5 |goto Stormwind City 84.6,24.3
|tip On the chair.
step
click Civil War in the Plaguelands##175761 |achieve 1244/7 |goto Stormwind City 85.0,23.4
|tip On the pillar base next to the candles.
step
click War of the Spider##175753 |achieve 1244/40 |goto Stormwind City 86.7,35.8
|tip On the command table.
step
click The Battle of Grim Batol##268067 |achieve 1244/22 |goto Stormwind City 86.5,36.0
|tip On the command table.
step
click The Dark Portal and the Fall of Stormwind##268072 |achieve 1244/25 |goto Stormwind City 87.1,35.9
|tip On the command table.
step
click Archimonde's Return and the Flight to Kalimdor##268047 |achieve 1244/4 |goto Stormwind City 51.8,74.5
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Mount Hyjal and Illidan's Gift##268057 |achieve 1244/15 |goto Stormwind City 51.8,74.6
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Rise of the Blood Elves##268059 |achieve 1244/17 |goto Elwynn Forest 64.6,69.5
|tip On top of the bookshelf on the top floor of the tower.
step
click Lethargy of the Orcs##175751 |achieve 1244/14 |goto Elwynn Forest 85.3,69.7
|tip Upstairs on the table.
step
click The Birth of the Lich King##267991 |achieve 1244/24 |goto Duskwood 72.1,46.6
|tip In the town hall on a table next to Role Dreuger.
step
click Kil'jaeden and the Shadow Pact##268055 |achieve 1244/13 |goto Duskwood 74.2,45.3
|tip In the inn on the bookshelf on the second floor.
step
click The Founding of Quel'Thalas##268073 |achieve 1244/26 |goto Duskwood 73.7,45.1
|tip In the next room over on the table.
step
click The Last Guardian##268077 |achieve 1244/30 |goto Loch Modan 37.2,47.0
|tip Downstairs inside the home on the nightstand next to the bed.
step
click The Old Gods and the Ordering of Azeroth##268080 |achieve 1244/33 |goto Ironforge 76.5,10.6
|tip On the center table.
step
click Charge of the Dragonflights##268049 |achieve 1244/6 |goto Ironforge 76.5,10.6
|tip On the center table.
step
click Ironforge - the Awakening of the Dwarves##268053 |achieve 1244/11 |goto Ironforge 75.1,9.1
|tip On the table.
step
click War of the Three Hammers##175739 |achieve 1244/41 |goto Ironforge 75.1,9.2
|tip On the table.
step
click Arathor and the Troll Wars##268046 |achieve 1244/3 |goto Ironforge 77.0,9.5
|tip On the table.
step
click Rise of the Horde##268060 |achieve 1244/18 |goto Ironforge 76.8,12.3
|tip On the table.
step
click The Invasion of Draenor##175747 |achieve 1244/28 |goto Scholomance/2 56.1,41.2
|tip This book is found after fighting Lilian Voss on the floor in the corner.
step
Make your way into The Scarlet Bastion |goto Stratholme/1 31.9,34.8 < 10 |walk
click The Seven Kingdoms##268083 |achieve 1244/36 |goto Stratholme/1 30.1,41.3
|tip On the table next to Commander Malor.
step
click Kel'Thuzad and the Forming of the Scourge##268054 |achieve 1244/12 |goto Stratholme/1 25.1,70.3
|tip On the table between the bookshelves.
step
click The Lich King Triumphant##268078 |achieve 1244/31 |goto Stratholme/1 25.5,70.5
|tip On the table between the bookshelves.
step
click Icecrown and the Frozen Throne##268043 |achieve 1244/10 |goto Stratholme/1 25.8,71.5
|tip On the table between the bookshelves.
step
click Sunwell - The Fall of Quel'Thalas##268065 |achieve 1244/20 |goto The Cape of Stranglethorn 41.0,74.4
|tip Inside the inn on the corner table right up the stairs.
step
click The Twin Empires##268084 |achieve 1244/37 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Empires' Fall##268051 |achieve 1244/8 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Wrath of Soulflayer##175856 |achieve 1244/42 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click The Scourge of Lordaeron##268081 |achieve 1244/34 |goto The Cape of Stranglethorn 41.9,73.5
|tip All the way downstairs on a bookshelf under the stairs in the same room as the auctioneer.
step
click The Sentinels and the Long Vigil##175732 |achieve 1244/35 |goto The Cape of Stranglethorn 42.1,73.6
|tip All the way upstairs on the nightstand next to the bed.
step
click Sargeras and the Betrayal##268061 |achieve 1244/19 |goto Northern Barrens 67.0,74.9
|tip In the Ratchet Inn on the nightstand between two beds.
step
click Exile of the High Elves##268052 |achieve 1244/9 |goto Northern Barrens 67.1,73.4
|tip In the Ratchet Blacksmith second floor on a barrel sitting on the balcony.
step
click Old Hatreds - The Colonization of Kalimdor##268058 |achieve 1244/16 |goto Tanaris 51.0,30.2
|tip In Gadgetzan laying on the sand next to a set of baskets.
step
click The Betrayer Ascendant##268068 |achieve 1244/23 |goto Darnassus 62.0,74.6
|tip On the counter against the south west wall.
step
_Congratulations!_
You Earned the "Well Read" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\You'll Feel Right as Rain",{
achieveid={5779},
patch='40100',
description="\nThis guide will walk you through feeling 1000% better by eating Chocolate Cookies.",
},[[
step
_Click here_ to buy them from the Auction House |confirm |next "buy"
_Click here_ to make them yourself  |confirm |next "cook"
step
label "buy"
talk Auctioneer Fitch##8719
buy 91 Chocolate Cookie##62680 |n |goto Stormwind City 61.0,70.7
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779 |next "end"
step
label "cook"
Use the Stormwind City Cooking Dailies guide to
earn 6 Epicurean's Award##81 |tip Three for the recipe and the rest for the cocoa beans you'll need.
step
talk Bario Matalli##49701
buy Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Stormwind City 50.4,71.8
step
talk Bario Matalli##49701
buy 2 Imported Supplies##68689 |n |tip If you need more buy another until you have 91 beans.
collect 91 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Stormwind City 50.4,71.8
step
talk Erika Tate##5483
buy 91 Simple Flour##30817 |complete itemcount(30817) >= 91 |goto Stormwind City 77.6,53.1
step
Make a Cooking Fire |cast Cooking Fire##818
create 91 Chocolate Cookie##88013,Cooking,91 total |n
collect 91 Chocolate Cookie##62680
step
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779
step
label "end"
Congratulations, you have earned the You'll Feel Right as Rain achievement!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Artisan Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Expert Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Grand Master Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Illustrious Grand Master Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Journeyman Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Master Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Preparing for Disaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Stocking Up")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Ultimate Triage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Professions\\Zen Master Medic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Crazy Cat Lady (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Crazy Cat Lady (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Disarmed (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Disarmed (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Firefighter (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Firefighter (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Glory of the Ulduar Raider (10 Player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Glory of the Ulduar Raider (25 Player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Heartbreaker (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Heartbreaker (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\I Choose You, Steelbreaker (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\I Choose You, Steelbreaker (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\I Could Say That This Cache Was Rare (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\I Could Say That This Cache Was Rare (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\I Love the Smell of Saronite in the Morning (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\I Love the Smell of Saronite in the Morning (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Iron Dwarf, Medium Rare (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Iron Dwarf, Medium Rare (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Knock, Knock, Knock on Wood (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Knock, Knock, Knock on Wood (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Lose Your Illusion (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Lose Your Illusion (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\One Light in the Darkness (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\One Light in the Darkness (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Orbit-uary (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Orbit-uary (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Stokin' the Furnace (10 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Legacy\\Raids\\Stokin' the Furnace (25 player)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Eastern Kingdoms Safari")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Family Reunion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\High Quality")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Kalimdor Safari")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Northrend Safari")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Outland Safari")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\That's a Lot of Pet Food")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\General\\Taming Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\100 Cooking Awards")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\A Bunch of Lunch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\The Cake Is Not A Lie")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Captain Rumsey's Lager")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\The Cataclysmic Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Cooking With Style")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Critter Gitter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Dinner Impossible")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Hail to the Chef")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Iron Chef")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Darnassus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Ironforge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Stormwind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\The Northrend Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Our Daily Bread")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\The Outland Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Second That Emotion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\25 Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\50 Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\100 Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\250 Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\500 Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\1000 Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Accomplished Angler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Artisan Fisherman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Chasing Marcia")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Coin Master")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Expert Fisherman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Fish Don't Leave Footprints")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Darnassus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Ironforge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Stormwind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Fishing Diplomat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Northrend Fisherman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\I Smell A Giant Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Cataclysmic Fisherman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Journeyman Fisherman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Limnologist/The Oceanographer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Lurker Above")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Master Angler of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Outland Fisherman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Mr. Pinchy's Magical Crawdad Box")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Northrend Angler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Old Crafty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Old Ironjaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Old Man Barlowned")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\One That Didn't Get Away")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Outland Angler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Old Gnome and the Sea")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Scavenger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\Turtles All the Way Down")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Professional Zen Master")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Working For a Living")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Arathi Highlands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Badlands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Blasted Lands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Burning Steppes Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Cape of Stranglethorn Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Duskwood Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Eastern Plaguelands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Full Caravan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Hinterlands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Loch Modan Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Loremaster of Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Northern Stranglethorn Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Ready, Set, Goat!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Redridge Mountains Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Searing Gorge Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Swamp of Sorrows Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Western Plaguelands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Westfall Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Eastern Kingdoms\\Wetlands Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Ashenvale Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Bloodmyst Isle Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Darkshore Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Desolace Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Dustwallow Marsh Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\E'ko Madness")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Felwood Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Feralas Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Ghosts in the Dark")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Glutton for Fiery Punishment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Glutton for Icy Punishment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Glutton for Shadowy Punishment")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Loremaster of Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Silithus Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Southern Barrens Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Stonetalon Mountains Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Tanaris Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Thousand Needles Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Un'Goro Crater Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Kalimdor\\Winterspring Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Blade's Edge Bomberman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Bombs Away")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\To Hellfire and Back")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\To Hellfire and Back")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Into the Nether")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Loremaster of Outland")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Mysteries of the Marsh")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Nagrand Slam")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\On the Blade's Edge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Shadow of the Betrayer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Outland\\Terror of Terokkar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Argent Aspiration")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Argent Valor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\D.E.H.T.A's Little P.I.T.A.")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\The Empire of Zul'Drak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Fo' Grizzle My Shizzle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Guru of Drakuru")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Honorary Frenzyheart")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\I've Toured the Fjord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Icecrown: The Final Goal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Into the Basin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\It's Just a Flesh Wound")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Lance a Lot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Loremaster of Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Might of Dragonblight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Mine Sweeper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Nothing Boring About Borean")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Rapid Defense")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Savior of the Oracles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\The Summit of Storm Peaks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Northrend\\Veteran of the Wrathgate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\The 'Unbeatable?' Pterodactyl: BEATEN.")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\20,000 Leagues Under the Sea")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\And the Meek Shall Inherit Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Beware of the 'Unbeatable?' Pterodactyl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Bounce")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Coming Down the Mountain")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Consumed by Nightmare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Death From Above")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Deep into Deepholm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Fading into Twilight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\The Fiery Lords of Sethria's Roost")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Fireside Chat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Flawless Victory")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Fungal Frenzy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Fungalophobia")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Gang War")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\The Glop Family Line")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Have... Have We Met?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Help the Bombardier! I'm the Bombardier!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Infernal Ambassadors")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\King of the Mountain")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\King of the Spider-Hill")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Legacy of Leyara")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Loremaster of Cataclysm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Ludicrous Speed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Master of the Molten Flow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\My Very Own Broodmother")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Ready for Raiding II")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Rock Lover")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Round Three, Fight!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Sinking into Vashj'ir")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Unearthing Uldum")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Veteran of the Molten Core")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Cataclysm\\Wildhammer Tour of Duty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\5 Dungeon Quests Complete")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\20 Dungeon Quests Completed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\3000 Quests Completed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\A Simple Re-Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Of Blood and Anguish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Daily Quests Completed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\The First Rule of Ring of Blood is You Don't Talk About Ring of Blood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Hemet Nesingwary: The Collected Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Justly Rewarded")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Champion of Darnassus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Champion of the Exodar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Champion of Gnomeregan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Champion of Ironforge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Champion of Stormwind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Argent Champion of the Alliance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of the Alliance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Darnassus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of the Exodar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Gnomeregan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Ironforge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Stormwind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Darkmoon Faire\\That's Whack!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Darkmoon Faire\\Triumphant Turtle Tossing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Battle Pets\\Battle Pet Tamers: Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\To All The Squirrels Through Time and Space")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\To All the Squirrels I Love Despite Their Scars")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\To All the Squirrels I Set Sail to See")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\General\\To All the Squirrels I've Loved and Lost")
