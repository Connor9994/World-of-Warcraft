local servers = {
	[WOW_PROJECT_CLASSIC or 2]="Classic Vanilla",
	[WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5]="Classic TBC",
	[WOW_PROJECT_MAINLINE or 1]="Retail",
}
local server = servers[WOW_PROJECT_ID] or "unknown"
local addonName,ZygorGuidesViewer = ...
local displayname = select(2,GetAddOnInfo(addonName)):gsub("ffff0000","fffe6100")

StaticPopupDialogs["ZYGOR_WRONGFLAVOR"] = {
	text = "You are attempting to load "..displayname.."|r on "..server.." server. Please verify that your paths in client are set correctly.",
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
}
StaticPopup_Show("ZYGOR_WRONGFLAVOR")