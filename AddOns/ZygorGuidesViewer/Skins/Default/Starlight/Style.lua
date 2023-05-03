local name,ZGV=...

local STYLE = ZGV.Skins:GetSkin("default"):AddStyle("starlight","Starlight")

local SKIN=STYLE.skin
local SKINSDIR=ZGV.SKINSDIR
local SKINDIR=SKIN:GetDir()
local STYLEDIR=STYLE:GetDir()
local HTMLColor=ZGV.F.HTMLColor

------------------- Color constants
local BLACK = {0,0,0,1}
local BACKGROUND = {HTMLColor("#111111ff")} --
local FLOATINGMENUS = {HTMLColor("#ffffffff")} -- (used for floating menus)
local STEPBACK = {HTMLColor("#202020ff")} -- (our step background color, also the right side of the guide menu)
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

STYLE.TitleButtonSize = 16
STYLE.TitleButtonInset = 2
STYLE.TitleButtonStepPrevNextSize = 14
STYLE.TitleButtonInsetHighlight = -3
STYLE.TitleButtonHighlightAlpha = 0.6

STYLE.StepNumFontSize = 14
STYLE.StepNumWidth = 40
STYLE.StepFontSizeMod = 1

STYLE.TopHeight = 55.5  -- hate this! This should be calculated from titlebar+tabs+toolbar heights!

STYLE.StyleAceGUI = true

STYLE.UseOpacity = false

------------------- Templates
-- Black frame with a lightborder
STYLE.MainBackdrop={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.MainBackdropColor={ZGV.F.HTMLColor("#202020ff")}
STYLE.MainBackdropBorderColor=TRANSPARENT

-- Generic, large texture, rounded corners
STYLE.RoundedOpaqueBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque",tile = true, edgeSize=90, tileSize = 90, insets = { left = 90, right = 90, top = 90, bottom = 90 }}
STYLE.RoundedOpaqueBackdropColor={ZGV.F.HTMLColor("#111111ff")}
STYLE.RoundedOpaqueBackdropBorderColor={ZGV.F.HTMLColor("#111111FF")} --or TRANSPARENT

-- Generic, small texture, rounded corners
STYLE.SmallOpaqueBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small",tile = true, edgeSize=20, tileSize = 20, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
STYLE.SmallOpaqueBackdropColor= {ZGV.F.HTMLColor("#111111FF")}
STYLE.SmallOpaqueBackdropBorderColor={ZGV.F.HTMLColor("#111111FF")} --or TRANSPARENT

-- Buttons rounded corners
STYLE.SmallButtonBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."button-small-opaque",tile = true, edgeSize=2, tileSize = 8, insets = { left = 2, right = 2, top = 2, bottom = 2 }}
STYLE.SmallButtonBackdropColor= {ZGV.F.HTMLColor("#202020ff")}
STYLE.SmallButtonBackdropBorderColor= {ZGV.F.HTMLColor("#333333ff")}

-- Dark gray without border
STYLE.SecBackdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.SecBackdropColor={ZGV.F.HTMLColor("#202020ff")}

-- Lighter gray
STYLE.TriBackdropColor={ZGV.F.HTMLColor("#333333ff")}

-- Dark border
STYLE.DarkBorder=TRANSPARENT

STYLE.Backdrop=STYLE.MainBackdrop
STYLE.BackdropColor=STYLE.MainBackdropColor
STYLE.BackdropBorderColor=TRANSPARENT

STYLE.ActiveSectionColor={ZGV.F.HTMLColor("#ffffffff")} -- header for active section in auction tools, mail tools, gearfinder



------------------- Core elements
STYLE.StepBackdrop={bgFile=SKINSDIR.."white",edgeFile=nil,tile = true, edgeSize=0, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.StepBorderBackdrop={bgFile=nil,edgeFile=STYLEDIR.."border-glow", tile = true, edgeSize=4, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }} -- this is one step's background, needed when the main window controls are hidden
STYLE.StepBackdropColor=STEPBACK
STYLE.StepBackdropBorderColor=STEPBACK
STYLE.StepBackdropPersistentBorder=true

STYLE.StepSpacing = 2
STYLE.StepStickyBarSpace = 5
STYLE.StepStickyBarHeight = 1
STYLE.StepStickySeparatorColor = CONTROLBAR
STYLE.StepPaddingTop = 0
STYLE.StepPaddingBottom = 0
STYLE.StepPaddingWidth = 0

STYLE.StepLineBackBackdrop={bgFile = SKINSDIR.."white", tile = true, tileSize = 6}
STYLE.StepLineBackBackdropColor=TRANSPARENT
STYLE.StepLineBackBackdropBorderColor=TRANSPARENT
STYLE.StepLineClickerBackdrop=STYLE.StepLineBackBackdrop
STYLE.StepLinePaddingWidth=3  --between line area and content
STYLE.StepLinePaddingHeight=3
STYLE.StepLineIconOffset=3
STYLE.StepLineTextOffset=0
STYLE.StepLineIcons = STYLEDIR.."stepicons"
STYLE.StepLineIconSize = 1.1
STYLE.StepLineIconMarginRight = 3  --between icon and text
STYLE.StepLineSpacing = 0

STYLE.MinimapIcon = STYLEDIR.."minimap-icon"

------------------- Widgets
-- Button
STYLE.ButtonBackdrop1=STYLE.MainBackdrop
STYLE.ButtonColor1={ZGV.F.HTMLColor("#333333ff")}
STYLE.ButtonBorderColor1=TRANSPARENT
STYLE.ButtonHighlightColor1={ZGV.F.HTMLColor("#444444ff")}
STYLE.ButtonTextColor1Over={ZGV.F.HTMLColor("#ffffff77")}
STYLE.ButtonTextColor1Out={ZGV.F.HTMLColor("#ffffffff")}

STYLE.ButtonBackdrop2=STYLE.SecBackdrop
STYLE.ButtonColor2={ZGV.F.HTMLColor("#e5661aff")}
STYLE.ButtonHighlightColor2={ZGV.F.HTMLColor("#ea8548")}

STYLE.ButtonBackdrop3=STYLE.SmallButtonBackdrop
STYLE.ButtonBorderColor3=STYLE.SmallButtonBackdropBorderColor
STYLE.ButtonHighlightColor3={ZGV.F.HTMLColor("#444444ff")}
STYLE.ButtonBorderColorHighlightColor3={ZGV.F.HTMLColor("#444444ff")}

-- Dropdown
STYLE.DropDownBackdrop1=STYLE.SecBackdrop
STYLE.DropDownBackdrop1Color=BLACK
STYLE.DropDownBackdrop2=STYLE.MainBackdrop
STYLE.DropDownBackdrop2Color=STYLE.DropDownBackdrop1Color
STYLE.DropDownBackdrop2BorderColor=TRANSPARENT
STYLE.DropDownButtonBackdrop2=STYLE.SecBackdrop
STYLE.DropDownButtonBackdrop2Color=TRANSPARENT
STYLE.DropDownPulloutBackdrop=STYLE.MainBackdrop
STYLE.DropDownPulloutColor={ZGV.F.HTMLColor("#000000e6")}
STYLE.DropDownPulloutBorderColor=TRANSPARENT
STYLE.DropDownItemBackdrop=STYLE.SecBackdrop
STYLE.DropDownItemColor={ZGV.F.HTMLColor("#666666ff")}

-- Scrollbar
STYLE.ScrollBackColor = TRANSPARENT
STYLE.ScrollBarColor = SCROLLBAR
STYLE.ScrollBarTexture=STYLEDIR.."scroll-bar"
STYLE.ScrollBarArrowsTexture=STYLEDIR.."scroll-arrows"
STYLE.ScrollBarDecorHeight=16

-- Radio and checkboxes
STYLE.InteractionTexture = STYLEDIR.."checkradio-thin"

-- Progress bar
STYLE.ProgressBarBackdrop = {bgFile = SKINSDIR.."white", edgeFile=SKINSDIR.."white", tile = true, edgeSize=1, tileSize = 16, insets = { left = 1, right = 1, top = 1, bottom = 1 }}
STYLE.ProgressBarBackdropColor=PROGRESSBAR
STYLE.ProgressBarBackdropBorderColor=STYLE.DarkBorder
STYLE.ProgressBarTextureFile = SKINSDIR.."white"
STYLE.ProgressBarTextureColor = {ZGV.F.HTMLColor("#00cc01ff")}
STYLE.ProgressBarTextureFileOffset = {0,1/2,0,1/2}
STYLE.ProgressBarDecorUse = 0
STYLE.ProgressBarDecorFileOffset = TRANSPARENT
STYLE.ProgressBarCaps = STYLEDIR.."progressbarcaps"
STYLE.ProgressBarWidth = 4
STYLE.ProgressBarCapsColor = STEPBACK
STYLE.ProgressBarOffsetX = 5
STYLE.ProgressBarOffsetY = -4

-- Progress bar legacy, still used in some places. 
STYLE.ProgressBarTexture = {1.0,1.0,1.0,1.0}
STYLE.ProgressBarTextureHeight = 5
STYLE.ProgressBarHeight = 7
STYLE.ProgressBarInset = 0
STYLE.ProgressBarColor = {0.0,0.8,0.0,1.0}
STYLE.ProgressBarColor2 = {1/255,162/255,253/255,1.0}
STYLE.ProgressBarSpaceHeight = 16



------------------- Specific objects
-- Main viewer frame
STYLE.WindowBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque",tile = true, edgeSize=90, tileSize = 90, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.WindowBackdropFlipped = STYLE.WindowBackdrop
STYLE.WindowBackdropColor=TRANSPARENT --{ZGV.F.HTMLColor("#111111FF")}
STYLE.WindowBackdropBorderColor={ZGV.F.HTMLColor("#111111FF")} --or TRANSPARENT

-- Main viewer frame, bottom part decoration
STYLE.WindowBottomBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small",tile = true, edgeSize=32, tileSize = 32, insets = { left = 31, right = 31, top = 31, bottom = 31 }}
STYLE.WindowBottomBackdropColor=STEPBACK
STYLE.WindowBottomBackdropBorderColor=STEPBACK

-- Bar with step navigation
STYLE.SystemBarBackdropColor = CONTROLBAR
STYLE.SystemBarBackdropBorderColor = TRANSPARENT

-- Floating menus (viewer)
STYLE.FloatMenuBackdrop = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small-outline",tile = true, edgeSize=32, tileSize = 32, insets = { left = 31, right = 31, top = 31, bottom = 31 }}
STYLE.FloatMenuBackdropColor = BLACK
STYLE.FloatMenuBackdropBorderColor = FLOATINGMENUS
STYLE.FloatMenuSeparatorolor = {ZGV.F.HTMLColor("#666666ff")}

-- Search fields
STYLE.SearchBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."search-bgr",tile = true, edgeSize=20, tileSize = 20, insets = { left = 10, right = 10, top = 10, bottom = 10 }}
STYLE.SearchEditBackdropColor = {ZGV.F.HTMLColor("#0d0d0dff")}
STYLE.SearchEditBorderColor = {ZGV.F.HTMLColor("#0d0d0dff")}
STYLE.SearchEditTextColor = SCROLLBAR
STYLE.SearchEditTextColorActive = {1,1,1,1}

-- options widgeets
STYLE.AceGUIInputTexture = STYLEDIR.."dropdown-opaque"

STYLE.AceGUIDropDownBackdrop = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small-outline",tile = true, edgeSize=32, tileSize = 32, insets = { left = 31, right = 31, top = 31, bottom = 31 }}
STYLE.AceGUIDropDownBackdropColor = BLACK
STYLE.AceGUIDropDownBackdropBorderColor = FLOATINGMENUS

STYLE.AceGUIEditBackdrop = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small-outline",tile = true, edgeSize=16, tileSize = 16, insets = { left = 15, right = 15, top = 15, bottom = 15 }}
STYLE.AceGUIEditBackdropMultiline = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small-outline",tile = true, edgeSize=32, tileSize = 32, insets = { left = 31, right = 31, top = 31, bottom = 31 }}
STYLE.AceGUIEditBackdropColor = BLACK
STYLE.AceGUIEditBackdropBorderColor = FLOATINGMENUS

STYLE.AceGUIButtonTexture = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."search-bgr",tile = true, edgeSize=20, tileSize = 20, insets = { left = 10, right = 10, top = 10, bottom = 10 }}
STYLE.AceGUIButtonTextureColor = {ZGV.F.HTMLColor("#666666ff")}
STYLE.AceGUIButtonTextColor = {1,1,1,1}
STYLE.AceGUIButtonTextColorDisabled = {1,1,1,0.6}
STYLE.AceGUISliderBackdrop={bgFile = STYLEDIR.."ui-sliderbar-background",edgeFile = STYLEDIR.."ui-sliderbar-border",tile = true, tileSize = 8, edgeSize = 8,insets = { left = 3, right = 3, top = 6, bottom = 6 }}
STYLE.AceGUISliderThumb=STYLEDIR.."options-slider-button"

-- Action bar
STYLE.ActionBarBackdrop = STYLE.SmallOpaqueBackdrop
STYLE.ActionBarBackdropColor = STYLE.SmallOpaqueBackdropColor
STYLE.ActionBarBackdropBorderColor = STYLE.SmallOpaqueBackdropBorderColor

-- Find nearest
STYLE.FindNearestBackdrop = STYLE.SmallOpaqueBackdrop
STYLE.FindNearestBackdropColor = STYLE.SmallOpaqueBackdropColor
STYLE.FindNearestBackdropBorderColor = STYLE.SmallOpaqueBackdropBorderColor

-- Notification center
STYLE.NotificationBackdrop=STYLE.SmallOpaqueBackdrop
STYLE.NotificationBackdropColor=BLACK
STYLE.NotificationBackdropBorderColor=BLACK
STYLE.NotificationDecorColor=CONTROLBAR
STYLE.NotificationTextColor={0.8,0.8,0.8,1}
STYLE.NotificationTextColorOver={1,1,1,1}
STYLE.NotificationBubbleColor=ACCENT

STYLE.NotificationPopupShowHeader = false
STYLE.NotificationPopupHeaderBackdrop=STYLE.SmallOpaqueBackdrop
STYLE.NotificationPopupHeaderBackdropColor=BLACK
STYLE.NotificationPopupHeaderBackdropBorderColor=BLACK
STYLE.NotificationPopupContentBackdrop=STYLE.SmallOpaqueBackdrop
STYLE.NotificationPopupContentBackdropColor={ZGV.F.HTMLColor("#222222ff")}
STYLE.NotificationPopupContentBackdropBorderColor={ZGV.F.HTMLColor("#222222ff")}

-- Guide Menu
STYLE.GuideMenuMargin = 0 -- optional margin around whole thing, not used in starlight
STYLE.GuideMenuHeaderFooterBackground = TRANSPARENT
STYLE.GuideMenuHeaderFooterBorder = TRANSPARENT
STYLE.GuideMenuSectionBorder = TRANSPARENT
STYLE.GuideMenuContentBackground = {ZGV.F.HTMLColor("#202020ff")}
STYLE.GuideMenuDetailsBackground = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuFooterElementsOffset = 13
STYLE.GuideMenuSmallIcons = STYLEDIR.."guideicons-small"
STYLE.GuideMenuTinyMargin = 0	-- optional 1px margin between columns
STYLE.GuideMenuGuideButtonDecorColor=ACCENT
STYLE.GuideMenuBackdrop = STYLE.RoundedOpaqueBackdrop
STYLE.GuideMenuBackdropColor = BACKGROUND
STYLE.GuideMenuBackdropBorderColor = BACKGROUND
STYLE.GuideMenuMenuBackground = STYLE.RoundedOpaqueBackdrop
STYLE.GuideMenuMenuBackgroundColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuMenuBackdropBorderColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuDetailsBackdrop = STYLE.RoundedOpaqueBackdrop
STYLE.GuideMenuDetailsBackdropColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuDetailsBackdropBorderColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuContentBackdrop = STYLE.RoundedOpaqueBackdrop
STYLE.GuideMenuContentBackdropColor = {ZGV.F.HTMLColor("#202020ff")}
STYLE.GuideMenuContentBackdropBorderColor = {ZGV.F.HTMLColor("#202020ff")}

STYLE.GuideMenuExpandedBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuExpandedBackdropColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuExpandedBackdropBorderColor = {ZGV.F.HTMLColor("#2b2b2bff")}

STYLE.GuideMenuFeaturedDropdown = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."backdrop-opaque-small-outline",tile = true, edgeSize=32, tileSize = 32, insets = { left = 31, right = 31, top = 31, bottom = 31 }}
STYLE.GuideMenuFeaturedDropdownBackdropColor = BLACK
STYLE.GuideMenuFeaturedDropdownBackdropBorderColor = FLOATINGMENUS


-- Gold Guide
STYLE.GoldguideBackdrop=STYLE.RoundedOpaqueBackdrop
STYLE.GoldguideBackdropColor=STYLE.RoundedOpaqueBackdropColor
STYLE.GoldguideBackdropBorderColor=STYLE.RoundedOpaqueBackdropBorderColor
STYLE.GoldguideHeaderFooterColor=STYLE.GuideMenuHeaderFooterBackground

-- World Quests
STYLE.WorldQuestBackdrop=STYLE.RoundedOpaqueBackdrop
STYLE.WorldQuestBackdropColor=STYLE.RoundedOpaqueBackdropColor
STYLE.WorldQuestBackdropBorderColor=STYLE.RoundedOpaqueBackdropBorderColor
STYLE.WorldQuestMargin = 0

-- Tabs
STYLE.TabsMargin = 0
STYLE.TabsHeight = 20
STYLE.TabsIconSize = 12
STYLE.TabsIcons = SKINSDIR.."guideicons-big"
STYLE.TabsBackdrop=STYLE.MainBackdrop
STYLE.TabsBackdropActive={1,1,1,1}
STYLE.TabsBackdropInactive=TRANSPARENT
STYLE.TabsContainerBackdropActive=CONTROLBAR
STYLE.TabsContainerBackdropInactive=BACKGROUND
STYLE.TabsBorderColor=TRANSPARENT
STYLE.TabsSeparatorTexture=SKINSDIR.."white"
STYLE.TabsTextColor={1,1,1,1}
STYLE.TabsTextColorOver={ZGV.F.HTMLColor("#ffffff77")}
STYLE.TabsBusyIcon = SKINSDIR.."loading"
STYLE.TabsDecor = STYLEDIR.."viewer8-tabs"
STYLE.TabsDecorWidth = 8
STYLE.TabsTopOffset = -5
STYLE.TabsSeparatorColor = TRANSPARENT
STYLE.TabsFirstOffset = 4

-- Auction tools
STYLE.AuctionToolsMargin = 0
STYLE.AuctionToolsBackdrop = STYLE.RoundedOpaqueBackdrop
STYLE.AuctionToolsBackdropColor = STYLE.RoundedOpaqueBackdropColor
STYLE.AuctionToolsBackdropBorderColor = STYLE.RoundedOpaqueBackdropBorderColor
STYLE.AuctionToolsPriceIcons = SKINSDIR.."goldpricestatusicons"
STYLE.AuctionToolsHeaderFooterBackground = TRANSPARENT
STYLE.AuctionToolsHeaderFooterBorder = TRANSPARENT

-- Bug report
STYLE.BugBackdrop=STYLE.RoundedOpaqueBackdrop
STYLE.BugBackdropColor=STYLE.RoundedOpaqueBackdropColor
STYLE.BugBackdropBorderColor=STYLE.RoundedOpaqueBackdropBorderColor
STYLE.BugEditBackdrop=STYLE.SecBackdrop
STYLE.BugEditBackdropColor=STYLE.SecBackdropColor

-- Gearfinder
STYLE.GearFinderBackdrop = STYLE.RoundedOpaqueBackdrop
STYLE.GearFinderBackdropColor = STYLE.RoundedOpaqueBackdropColor
STYLE.GearFinderBackdropBorderColor = STYLE.RoundedOpaqueBackdropBorderColor

-- Home Screen widgets
STYLE.WidgetsBackdrop = STYLE.SmallOpaqueBackdrop
STYLE.WidgetsBackdropColor = STYLE.SmallOpaqueBackdropColor
STYLE.WidgetsBackdropBorderColor = STYLE.SmallOpaqueBackdropBorderColor

STYLE.WidgetsPopupBackdropColor = {ZGV.F.HTMLColor("#202020ff")}
STYLE.WidgetsPopupBackdropBorderColor = {ZGV.F.HTMLColor("#202020ff")}

STYLE.WidgetsTextColor = {1,1,1,1}
STYLE.WidgetsDragColor = {ZGV.F.HTMLColor("#333333FF")}

STYLE.FloatingButtons = STYLEDIR.."floatingbuttons-thin"

------------------- Legacy / unused
-- Creature viewer
STYLE.CreatureBackdrop=STYLE.MainBackdrop
STYLE.CreatureBackdropColor=STYLE.MainBackdropColor
STYLE.CreatureBackdropBorderColor=TRANSPARENT
STYLE.CreatureViewerLabelBackground = STYLE.SecBackdropColor
STYLE.CreatureViewerLabelColor = {1.0,1.0,1.0,1.0}
STYLE.CreatureViewerGap = {-10,0}
STYLE.CVNoModelTexture = SKINSDIR.."zygor_mascot"

-- Scan frame button
STYLE.MoneyBackdrop=STYLE.MainBackdrop
STYLE.MoneyBackdropColor=STYLE.MainBackdropColor
STYLE.MoneyBackdropBorderColor=TRANSPARENT














STYLE.TransparencyPrimary = 1
STYLE.TransparencySecondary = 1


-- TODO perhaps we need to specifically unset the texture on those to improve performance, but it shouldn't be much of an issue
STYLE.TabBackdrop={bgFile = SKINSDIR.."white"}
STYLE.TabBackdropColor={0,0,0,0.0} -- the splitter is invisible
STYLE.StepnumBackdropColor={0,0,0,0.0} -- so is stepnumber

