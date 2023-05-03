local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.HomeMessage = [[
Welcome to Zygor's Dragonflight Guides

Known issues:
* We suggest using the Starlight theme as the Stealth theme currently has some display issues with the new Notification system.

Key Updates:
* Updated the Spark of Ingenuity guide to Dragonflight Campaign
* Updated World Quests
* The Silver Purpose chapter committed for Valdrakken Accord rep guide

Please contact Customer Support if you encounter any issues.
]]
GuideMenu.Home={

	{"title", text=[[Welcome to Zygor's Dragonflight Guides]]},

	{"list", text=[[Added Dragonflight guides. See **Featured section**.]],onclick=function() ZGV.GuideMenu:Open("Featured") ZGV.GuideMenu:ShowFeatured("dragonflight") end },

	{"banner", image=ZGV.IMAGESDIR.."bulletin-starup-orientation", width=512, height=256, top=0, left=0, bottom=512/512, right=256/256},

	{"section", text=[[New Feature: Startup Orientation ]]},
	{"text", text=[[In order for Zygor Guides to perform best at its best it requires additional character info that only you - the player - can access. This includes things like flight map data to improve Travel System directions, pricing and profession data for the Gold Guide suggestions, and bank vault items for the new bank items Home Screen widget. The new Startup Orientation feature, which can be accessed from the Guide Viewer hamburger menu, will walk you through collecting all of this data for the best guide experience.]]},

	{"banner", image=ZGV.IMAGESDIR.."bulletin-improved-notifications", width=512, height=256, top=0, left=0, bottom=512/512, right=256/256},
	{"section", text=[[New Feature: Improved Notifications ]]},
	{"text", text=[[The Notification System has been updated to a new passive toast message system. Now, when you recieve notifications, they will be more compact and brief, fading away if you don't take action, but still storing the record of them in the Notification Center for later review.]]},

	{"banner", image=ZGV.IMAGESDIR.."bulletin-customizable-home-screen", width=512, height=256, top=0, left=0, bottom=512/512, right=256/256},
	{"section", text=[[New Feature: Customizable Home Screen ]]},
	{"text", text=[[The Guide Menu Home Screen has been completely redesigned to now allow you to customize if to your liking using widgets - individual display frames that show important and useful info. This includes things like a level tracker to see your played time per level, a gold tracker to see how much gold you're making, several widgets for tracking various game related things like WoW Token pricing, server resets, World Quests, and more. The Home Screen can now be used as your first stop when logging in and your central hub for planning out all of your activities.]]},




}


-- faction="Alliance" {"separator"},