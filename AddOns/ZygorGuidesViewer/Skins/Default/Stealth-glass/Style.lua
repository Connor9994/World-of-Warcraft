local name,ZGV=...

local STYLE = ZGV.Skins:GetSkin("default"):AddStyle("stealth-glass","Stealth (Glass)","stealth")
STYLE.GUIHidden = true

local SKIN=STYLE.skin
local SKINSDIR=ZGV.SKINSDIR
local SKINDIR=SKIN:GetDir()
local STYLEDIR=STYLE:GetDir()
local HTMLColor=ZGV.F.HTMLColor

------------------- Color constants
local BLACK = {0,0,0,1}
local TRANSPARENT = {0,0,0,0}
STYLE.Transparent = TRANSPARENT

local ACCENT = {HTMLColor("#fe6100ff")}
STYLE.Accent  = ACCENT 

------------------- Global config
STYLE.ButtonHighlight = {HTMLColor("#444444ff")}

STYLE.ViewerMargin = 10

STYLE.TitleButtons = STYLEDIR.."titlebuttons-thick"
STYLE.TitleLogo = STYLEDIR.."zygorlogo"
STYLE.TitleLogoSize = {100,100/4}

STYLE.TitleButtonSize = 16
STYLE.TitleButtonInset = 0
STYLE.TitleButtonStepPrevNextSize = 14
STYLE.TitleButtonInsetHighlight = 0
STYLE.TitleButtonHighlightAlpha = 0.6

STYLE.StepNumFontSize = 14
STYLE.StepNumWidth = 40
STYLE.StepFontSizeMod = 1

STYLE.IconIndent = 17

STYLE.StyleAceGUI = false

STYLE.UseOpacity = true

------------------- Templates
-- Black frame with a lightborder
STYLE.MainBackdrop={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.MainBackdropColor={ZGV.F.HTMLColor("#22222277")}
STYLE.MainBackdropBorderColor={ZGV.F.HTMLColor("#000000cc")}

-- Main viewer frame
STYLE.WindowBackdrop=STYLE.MainBackdrop
STYLE.WindowBackdropColor=STYLE.MainBackdropColor
STYLE.WindowBackdropBorderColor=STYLE.MainBackdropBorderColor

-- Dark gray without border
STYLE.SecBackdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.SecBackdropColor={ZGV.F.HTMLColor("#222222ff")}

-- Lighter gray
STYLE.TriBackdropColor={ZGV.F.HTMLColor("#333333ff")}

-- Dark border
STYLE.DarkBorder={ZGV.F.HTMLColor("#000000ff")}

STYLE.Backdrop=STYLE.MainBackdrop
STYLE.BackdropColor=STYLE.MainBackdropColor
STYLE.BackdropBorderColor=STYLE.MainBackdropBorderColor

STYLE.ActiveSectionColor={ZGV.F.HTMLColor("#ffffffff")}



------------------- Core elements
STYLE.StepBackdrop={bgFile=SKINSDIR.."white",edgeFile=nil,tile = true, edgeSize=0, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.StepBorderBackdrop={bgFile=nil,edgeFile=STYLEDIR.."border-glow", tile = true, edgeSize=4, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }} -- this is one step's background, needed when the main window controls are hidden
STYLE.StepBackdropColor=STYLE.SecBackdropColor
STYLE.StepBackdropBorderColor=STYLE.DarkBorder
STYLE.StepBackdropPersistentBorder=true

STYLE.StepSpacing = 2
STYLE.StepStickyBarSpace = 5
STYLE.StepStickyBarHeight = 1
STYLE.StepStickySeparatorColor = {ZGV.F.HTMLColor("#222222ff")}
STYLE.StepPaddingTop = 0
STYLE.StepPaddingBottom = 0
STYLE.StepPaddingWidth = 0

STYLE.StepLineBackBackdrop={bgFile = SKINSDIR.."white", tile = true, tileSize = 6}
STYLE.StepLineBackBackdropColor={0,0,0,0}
STYLE.StepLineBackBackdropBorderColor=STYLE.StepLineBackBackdropColor
STYLE.StepLineClickerBackdrop=STYLE.StepLineBackBackdrop
STYLE.StepLinePaddingWidth=3  --between line area and content
STYLE.StepLinePaddingHeight=3
STYLE.StepLineIconOffset=0
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
STYLE.ButtonBorderColor1={ZGV.F.HTMLColor("#000000cc")}
STYLE.ButtonHighlightColor1={ZGV.F.HTMLColor("#444444ff")}
STYLE.ButtonTextColor1Over={ZGV.F.HTMLColor("#ffffff77")}
STYLE.ButtonTextColor1Out={ZGV.F.HTMLColor("#ffffffff")}
STYLE.ButtonBackdrop2=STYLE.SecBackdrop
STYLE.ButtonColor2={ZGV.F.HTMLColor("#e5661aff")}
STYLE.ButtonHighlightColor2={ZGV.F.HTMLColor("#ea8548")}

-- Dropdown
STYLE.DropDownBackdrop1=STYLE.SecBackdrop
STYLE.DropDownBackdrop1Color=STYLE.TriBackdropColor
STYLE.DropDownBackdrop2=STYLE.MainBackdrop
STYLE.DropDownBackdrop2Color=STYLE.DropDownBackdrop1Color
STYLE.DropDownBackdrop2BorderColor={ZGV.F.HTMLColor("#777777ff")}
STYLE.DropDownButtonBackdrop2=STYLE.SecBackdrop
STYLE.DropDownButtonBackdrop2Color=STYLE.DropDownBackdrop2BorderColor
STYLE.DropDownPulloutBackdrop=STYLE.MainBackdrop
STYLE.DropDownPulloutColor={ZGV.F.HTMLColor("#000000e6")}
STYLE.DropDownPulloutBorderColor=STYLE.MainBackdropBorderColor
STYLE.DropDownItemBackdrop=STYLE.SecBackdrop
STYLE.DropDownItemColor={ZGV.F.HTMLColor("#666666ff")}

-- Scrollbar
STYLE.ScrollBackColor=STYLE.TriBackdropColor
STYLE.ScrollBarColor={ZGV.F.HTMLColor("#666666ff")}
STYLE.ScrollBarTexture=SKINSDIR.."white"
STYLE.ScrollBarArrowsTexture=STYLEDIR.."scroll-arrows"
STYLE.ScrollBarDecorHeight=0

-- Radio and checkboxes
STYLE.InteractionTexture = STYLEDIR.."checkradio-thick"

-- Progress bar
STYLE.ProgressBarBackdrop = {bgFile = SKINSDIR.."white", edgeFile=SKINSDIR.."white", tile = true, edgeSize=1, tileSize = 16, insets = { left = 1, right = 1, top = 1, bottom = 1 }}
STYLE.ProgressBarBackdropColor=STYLE.SecBackdropColor
STYLE.ProgressBarBackdropBorderColor=STYLE.DarkBorder
STYLE.ProgressBarTextureFile = STYLEDIR.."progressbar"
STYLE.ProgressBarTextureColor = {ZGV.F.HTMLColor("#ffffffff")}
STYLE.ProgressBarTextureFileOffset = {0,1/2,0,1/2}
STYLE.ProgressBarDecorUse = 1
STYLE.ProgressBarDecorFileOffset = {1/2,1,0,1/2}
STYLE.ProgressBarCaps = ""
STYLE.ProgressBarWidth = 0
STYLE.ProgressBarCapsColor = {0,0,0,0}
STYLE.ProgressBarOffsetX = 0
STYLE.ProgressBarOffsetY = 0

-- Progress bar legacy, still used in some places. 
STYLE.ProgressBarTexture = {1.0,1.0,1.0,1.0}
STYLE.ProgressBarTextureHeight = 5
STYLE.ProgressBarHeight = 7
STYLE.ProgressBarInset = 0
STYLE.ProgressBarColor = {0.0,0.8,0.0,1.0}
STYLE.ProgressBarColor2 = {1/255,162/255,253/255,1.0}
STYLE.ProgressBarSpaceHeight = 12


------------------- Specific objects
-- Main viewer frame, bottom part decoration
STYLE.WindowBottomBackdrop={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 32, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.WindowBottomBackdropColor=TRANSPARENT
STYLE.WindowBottomBackdropBorderColor=TRANSPARENT

-- Bar with step navigation
STYLE.SystemBarBackdropColor = {ZGV.F.HTMLColor("#222222ff")}
STYLE.SystemBarBackdropBorderColor = {ZGV.F.HTMLColor("#222222ff")}

-- Floating menus (viewer)
STYLE.FloatMenuBackdrop = STYLE.MainBackdrop
STYLE.FloatMenuBackdropColor = {ZGV.F.HTMLColor("#222222ff")}
STYLE.FloatMenuBackdropBorderColor = {ZGV.F.HTMLColor("#222222ff")}
STYLE.FloatMenuSeparatorolor = {ZGV.F.HTMLColor("#333333ff")}

-- Search fields
STYLE.SearchBackdrop={bgFile=SKINSDIR.."white",SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 1, right = 1, top = 1, bottom = 1 }}
STYLE.SearchEditBackdropColor = {1,1,1,1}
STYLE.SearchEditBorderColor = {1,1,1,1}
STYLE.SearchEditTextColor = {0,0,0,1}
STYLE.SearchEditTextColorActive = {0,0,0,1}

-- options widgeets
STYLE.AceGUIInputTexture = SKINSDIR.."white"

STYLE.AceGUIDropDownBackdrop = STYLE.SecBackdrop
STYLE.AceGUIDropDownBackdropColor = STYLE.TriBackdropColor
STYLE.AceGUIDropDownBackdropBorderColor = STYLE.TriBackdropColor

STYLE.AceGUIEditBackdrop = STYLE.SecBackdrop
STYLE.AceGUIEditBackdropMultiline = STYLE.SecBackdrop
STYLE.AceGUIEditBackdropColor = STYLE.TriBackdropColor
STYLE.AceGUIEditBackdropBorderColor = STYLE.TriBackdropColor

STYLE.AceGUIButtonTexture = {bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."search-bgr",tile = true, edgeSize=20, tileSize = 20, insets = { left = 10, right = 10, top = 10, bottom = 10 }}
STYLE.AceGUIButtonTextureColor = {ZGV.F.HTMLColor("#666666ff")}
STYLE.AceGUIButtonTextColor = {1,1,1,1}
STYLE.AceGUIButtonTextColorDisabled = {1,1,1,0.6}
STYLE.AceGUISliderBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."search-bgr",tile = true, edgeSize=8, tileSize = 8, insets = { left = 8, right = 8, top = 8, bottom = 8 }}


-- Action bar
STYLE.ActionBarBackdrop=STYLE.MainBackdrop
STYLE.ActionBarBackdropColor=STYLE.MainBackdropColor
STYLE.ActionBarBackdropBorderColor=STYLE.MainBackdropBorderColor

-- Find nearest
STYLE.FindNearestBackdrop = STYLE.MainBackdropColor
STYLE.FindNearestBackdropColor = STYLE.MainBackdrop
STYLE.FindNearestBackdropBorderColor = STYLE.MainBackdropBorderColor

-- Notification center
STYLE.NotificationBackdrop=STYLE.MainBackdrop
STYLE.NotificationBackdropColor=STYLE.SecBackdropColor
STYLE.NotificationBackdropBorderColor=STYLE.MainBackdropBorderColor
STYLE.NotificationDecorColor=STYLE.MainBackdropBorderColor
STYLE.NotificationTextColor={0.8,0.8,0.8,1}
STYLE.NotificationTextColorOver={1,1,1,1}
STYLE.NotificationBubbleColor={HTMLColor("#fe6100ff")}

STYLE.NotificationPopupShowHeader = true
STYLE.NotificationPopupHeaderBackdrop=STYLE.MainBackdrop
STYLE.NotificationPopupHeaderBackdropColor=STYLE.MainBackdropColor
STYLE.NotificationPopupHeaderBackdropBorderColor=STYLE.MainBackdropBorderColor
STYLE.NotificationPopupContentBackdrop=STYLE.MainBackdrop
STYLE.NotificationPopupContentBackdropColor=STYLE.SecBackdropColor
STYLE.NotificationPopupContentBackdropBorderColor=STYLE.SecBackdropColor

-- Guide Menu
STYLE.GuideMenuMargin = 10
STYLE.GuideMenuHeaderFooterBackground = {0,0,0,0}
STYLE.GuideMenuHeaderFooterBorder = {0,0,0,0}
STYLE.GuideMenuMenuBackground = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuSectionBorder = {0,0,0,1}
STYLE.GuideMenuSearchEdit = {ZGV.F.HTMLColor("#7d7d7dff")}
STYLE.GuideMenuContentBackground = {ZGV.F.HTMLColor("#222222ff")}
STYLE.GuideMenuDetailsBackground = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuFooterElementsOffset = 13
STYLE.GuideMenuSmallIcons = STYLEDIR.."guideicons-small"
STYLE.GuideMenuTinyMargin = 1
STYLE.GuideMenuGuideButtonDecorColor={0,0,0,0}
STYLE.GuideMenuBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuBackdropColor = STYLE.MainBackdropColor
STYLE.GuideMenuBackdropBorderColor = {0,0,0,1}
STYLE.GuideMenuMenuBackground = STYLE.MainBackdrop
STYLE.GuideMenuMenuBackgroundColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuMenuBackdropBorderColor = {0,0,0,1}
STYLE.GuideMenuDetailsBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuDetailsBackdropColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuDetailsBackdropBorderColor = {0,0,0,1}
STYLE.GuideMenuContentBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuContentBackdropColor = {ZGV.F.HTMLColor("#222222ff")}
STYLE.GuideMenuContentBackdropBorderColor = {0,0,0,1}

STYLE.GuideMenuExpandedBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuExpandedBackdropColor = {ZGV.F.HTMLColor("#2b2b2bff")}
STYLE.GuideMenuExpandedBackdropBorderColor = {ZGV.F.HTMLColor("#2b2b2bff")}

-- Gold Guide
STYLE.GoldguideBackdrop=STYLE.MainBackdrop
STYLE.GoldguideBackdropColor=STYLE.MainBackdropColor
STYLE.GoldguideBackdropBorderColor=STYLE.MainBackdropBorderColor
STYLE.GoldguideHeaderFooterColor=STYLE.GuideMenuHeaderFooterBackground

-- World Quests
STYLE.WorldQuestBackdrop=STYLE.MainBackdrop
STYLE.WorldQuestBackdropColor=STYLE.MainBackdropColor
STYLE.WorldQuestBackdropBorderColor=STYLE.MainBackdropBorderColor
STYLE.WorldQuestMargin = 10

-- Tabs
STYLE.TabsMargin = 10
STYLE.TabsHeight = 20
STYLE.TabsIconSize = 12
STYLE.TabsIcons = ZGV.DIR.."\\Skins\\guideicons-big"
STYLE.TabsBackdrop=STYLE.MainBackdrop
STYLE.TabsBackdropActive={ZGV.F.HTMLColor("#222222ff")}
STYLE.TabsBackdropInactive={0,0,0,1}
STYLE.TabsContainerBackdropActive={ZGV.F.HTMLColor("#222222ff")}
STYLE.TabsContainerBackdropInactive={0,0,0,1}
STYLE.TabsBorderColor={0,0,0,1}
STYLE.TabsSeparatorColor={ZGV.F.HTMLColor("#555555ff")}
STYLE.TabsSeparatorTexture=SKINSDIR.."white"
STYLE.TabsTextColor={1,1,1,1}
STYLE.TabsTextColorOver={ZGV.F.HTMLColor("#ffffff77")}
STYLE.TabsBusyIcon = ZGV.DIR.."\\Skins\\loading"
STYLE.TabsDecor = false
STYLE.TabsDecorWidth = 0
STYLE.TabsTopOffset = 0
STYLE.TabsFirstOffset = 0

-- Auction tools
STYLE.AuctionToolsMargin = 0
STYLE.AuctionToolsBackdrop = STYLE.MainBackdrop
STYLE.AuctionToolsBackdropColor = STYLE.MainBackdropColor
STYLE.AuctionToolsBackdropBorderColor = STYLE.MainBackdropBorderColor
STYLE.AuctionToolsPriceIcons = SKINSDIR.."goldpricestatusicons"
STYLE.AuctionToolsHeaderFooterBackground = {0,0,0,1}
STYLE.AuctionToolsHeaderFooterBorder = {0,0,0,1}

-- Bug report
STYLE.BugBackdrop=STYLE.MainBackdrop
STYLE.BugBackdropColor=STYLE.MainBackdropColor
STYLE.BugBackdropBorderColor=STYLE.MainBackdropBorderColor
STYLE.BugEditBackdrop=STYLE.SecBackdrop
STYLE.BugEditBackdropColor=STYLE.SecBackdropColor

-- Gearfinder
STYLE.GearFinderBackdrop = STYLE.MainBackdrop
STYLE.GearFinderBackdropColor = STYLE.MainBackdropColor
STYLE.GearFinderBackdropBorderColor = STYLE.MainBackdropBorderColor

-- Home Screen widgets
STYLE.WidgetsBackdrop = STYLE.MainBackdrop
STYLE.WidgetsBackdropColor = STYLE.MainBackdropColor
STYLE.WidgetsBackdropBorderColor = STYLE.MainBackdropBorderColor



------------------- Legacy / unused
-- Creature viewer
STYLE.CreatureBackdrop=STYLE.MainBackdrop
STYLE.CreatureBackdropColor=STYLE.MainBackdropColor
STYLE.CreatureBackdropBorderColor=STYLE.MainBackdropBorderColor
STYLE.CreatureViewerLabelBackground = STYLE.SecBackdropColor
STYLE.CreatureViewerLabelColor = {1.0,1.0,1.0,1.0}
STYLE.CreatureViewerGap = {-10,0}
STYLE.CVNoModelTexture = SKINSDIR.."zygor_mascot"

-- Scan frame button
STYLE.MoneyBackdrop=STYLE.MainBackdrop
STYLE.MoneyBackdropColor=STYLE.MainBackdropColor
STYLE.MoneyBackdropBorderColor=STYLE.MainBackdropBorderColor

















-- Backwards compability with stealth skin "TRANSPARENT viewer" option
STYLE.TransparencyPrimary = 1
STYLE.TransparencySecondary = 1


STYLE.TabBackdrop={bgFile = SKINSDIR.."white"}
STYLE.TabBackdropColor={0,0,0,0.0} -- the splitter is invisible
STYLE.StepnumBackdropColor={0,0,0,0.0} -- so is stepnumber




