local name,ZGV=...

local STYLE = ZGV.Skins:GetSkin("default"):AddStyle("starlight-glass","Starlight (Glass)", "starlight")
STYLE.GUIHidden = true

local SKIN=STYLE.skin
local SKINSDIR=ZGV.SKINSDIR
local SKINDIR=SKIN:GetDir()
local STYLEDIR=STYLE:GetDir()
local HTMLColor=ZGV.F.HTMLColor

------------------- Color constants
local BLACK = {HTMLColor("#000000ff")}
local BACKGROUND = {HTMLColor("#111111ff")} --
local FLOATINGMENUS = {HTMLColor("#000000ff")} -- (used for floating menus)
local STEPBACK = {HTMLColor("#222222ff")} -- (our step background color, also the right side of the guide menu)
local CONTROLBAR = {HTMLColor("#3b3b3bff")} -- (the new tab/control bar color)
local PROGRESSBAR = {HTMLColor("#454545ff")} -- (progress bar background)
local SCROLLBAR = {HTMLColor("#666666ff")} -- (scroll bars)
local TRANSPARENT = {0,0,0,0}
STYLE.Transparent = TRANSPARENT

local ACCENT = {HTMLColor("#fe6100ff")}
STYLE.Accent  = ACCENT 

------------------- Global config
STYLE.ButtonHighlight = {HTMLColor("#444444ff")}

STYLE.ViewerMargin = 0

STYLE.TitleButtons = STYLEDIR.."titlebuttons-thin"
STYLE.TitleLogo = STYLEDIR.."zygorlogo"
STYLE.TitleLogoSize = {100,100/4}

STYLE.UseOpacity = true

------------------- Templates
-- Black frame with a lightborder
STYLE.MainBackdrop={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.MainBackdropColor={ZGV.F.HTMLColor("#22222277")}
STYLE.MainBackdropBorderColor=TRANSPARENT

-- Generic, large texture, rounded corners, smoky transparency
STYLE.FullGlassBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-glass-all",tile = true, edgeSize=90, tileSize = 90, insets = { left = 90, right = 90, top = 90, bottom = 90 }}
STYLE.FullGlassBackdropColor={ZGV.F.HTMLColor("#111111BC")}
STYLE.FullGlassBackdropBorderColor={ZGV.F.HTMLColor("#111111FF")} --or TRANSPARENT

-- Generic, large texture, rounded corners
STYLE.RoundedOpaqueBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque",tile = true, edgeSize=90, tileSize = 90, insets = { left = 90, right = 90, top = 90, bottom = 90 }}
STYLE.RoundedOpaqueBackdropColor=TRANSPARENT
STYLE.RoundedOpaqueBackdropBorderColor=TRANSPARENT

-- Generic, small texture, rounded corners, smoky transparency
STYLE.SmallGlassBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-glass-small",tile = true, edgeSize=20, tileSize = 20, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
STYLE.SmallGlassBackdropColor= {ZGV.F.HTMLColor("#111111BC")}
STYLE.SmallGlassBackdropBorderColor={ZGV.F.HTMLColor("#111111FF")} --or TRANSPARENT

-- Generic, small texture, rounded corners
STYLE.SmallOpaqueBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small",tile = true, edgeSize=20, tileSize = 20, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
STYLE.SmallOpaqueBackdropColor= {ZGV.F.HTMLColor("#111111FF")}
STYLE.SmallOpaqueBackdropBorderColor={ZGV.F.HTMLColor("#111111FF")} --or TRANSPARENT

-- Dark gray without border
STYLE.SecBackdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.SecBackdropColor={ZGV.F.HTMLColor("#222222ff")}

-- Lighter gray
STYLE.TriBackdropColor={ZGV.F.HTMLColor("#333333ff")}

-- Dark border
STYLE.DarkBorder=TRANSPARENT

STYLE.Backdrop=STYLE.MainBackdrop
STYLE.BackdropColor=STYLE.MainBackdropColor
STYLE.BackdropBorderColor=TRANSPARENT

------------------- Core elements

------------------- Specific objects
-- Main viewer frame
STYLE.WindowBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-glass",tile = true, edgeSize=90, tileSize = 90, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.WindowBackdropFlipped={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-glass-upsidedown",tile = true, edgeSize=90, tileSize = 90, insets = { left = 0, right = 0, top = 0, bottom = 0 }}

	

-- Action bar
STYLE.ActionBarBackdrop = STYLE.SmallGlassBackdrop
STYLE.ActionBarBackdropColor = STYLE.SmallGlassBackdropColor
STYLE.ActionBarBackdropBorderColor = STYLE.SmallGlassBackdropBorderColor

-- Find nearest
STYLE.FindNearestBackdrop = STYLE.SmallGlassBackdrop
STYLE.FindNearestBackdropColor = STYLE.SmallGlassBackdropColor
STYLE.FindNearestBackdropBorderColor = STYLE.SmallGlassBackdropBorderColor

-- Notification center

STYLE.NotificationPopupShowHeader = false
STYLE.NotificationPopupHeaderBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-glass-small",tile = true, edgeSize=10, tileSize = 10, insets = { left = 10, right = 10, top = 10, bottom = 10 }}
STYLE.NotificationPopupHeaderBackdropColor=STYLE.SmallGlassBackdropColor
STYLE.NotificationPopupHeaderBackdropBorderColor=STYLE.SmallGlassBackdropBorderColor

-- Guide Menu

STYLE.GuideMenuContentBackground = {ZGV.F.HTMLColor("#222222ff")}

STYLE.GuideMenuBackdrop = STYLE.FullGlassBackdrop

STYLE.GuideMenuContentBackdropColor = {ZGV.F.HTMLColor("#222222ff")}
STYLE.GuideMenuContentBackdropBorderColor = {ZGV.F.HTMLColor("#222222ff")}

-- Gold Guide
STYLE.GoldguideBackdrop=STYLE.FullGlassBackdrop
STYLE.GoldguideBackdropColor=STYLE.FullGlassBackdropColor
STYLE.GoldguideBackdropBorderColor=STYLE.FullGlassBackdropBorderColor

-- World Quests
STYLE.WorldQuestBackdrop=STYLE.FullGlassBackdrop
STYLE.WorldQuestBackdropColor=STYLE.FullGlassBackdropColor
STYLE.WorldQuestBackdropBorderColor=STYLE.FullGlassBackdropBorderColor

-- Auction tools
STYLE.AuctionToolsBackdrop = STYLE.FullGlassBackdrop
STYLE.AuctionToolsBackdropColor = STYLE.FullGlassBackdropColor
STYLE.AuctionToolsBackdropBorderColor = STYLE.FullGlassBackdropBorderColor

-- Gearfinder
STYLE.GearFinderBackdrop = STYLE.FullGlassBackdrop
STYLE.GearFinderBackdropColor = STYLE.FullGlassBackdropColor
STYLE.GearFinderBackdropBorderColor = STYLE.FullGlassBackdropBorderColor

-- Home Screen widgets
STYLE.WidgetsBackdrop = STYLE.SmallGlassBackdrop
STYLE.WidgetsBackdropColor = STYLE.SmallGlassBackdropColor
STYLE.WidgetsBackdropBorderColor = STYLE.SmallGlassBackdropBorderColor
