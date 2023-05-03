local name,ZGV=...

local STYLE = ZGV.Skins:GetSkin("default"):AddStyle("midnight","Midnight")

local SKIN=STYLE.skin
local SKINSDIR=ZGV.SKINSDIR
local SKINDIR=SKIN:GetDir()
local STYLEDIR=STYLE:GetDir()


local HTMLColor=ZGV.HTMLColor

local Transparent = {0,0,0,0}
STYLE.Transparent = Transparent

-- Basics
-- Black frame with a lightborder
STYLE.MainBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."border",tile = true, edgeSize=20, tileSize = 20, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
STYLE.MainBackdropColor={0,0,0,0.50}
STYLE.MainBackdropBorderColor={0,0,0,1}

-- Dark gray without border
STYLE.SecBackdrop={bgFile = SKINSDIR.."white"}
STYLE.SecBackdropColor={0,0,0,0.5}

-- Lighter gray
STYLE.TriBackdropColor={ZGV.F.HTMLColor("#333333ff")}

-- Dark border
STYLE.DarkBorder={ZGV.F.HTMLColor("#000000ff")}

STYLE.AccentColor={ZGV.F.HTMLColor("#e5661aff")}

-- Widget colors!
-- TODO These are stealth only at the moment. Need to support midnight. Maybe?
STYLE.ButtonBackdrop1=STYLE.MainBackdrop
STYLE.ButtonColor1=STYLE.TriBackdropColor
STYLE.ButtonBorderColor1={ZGV.F.HTMLColor("#808080ff")}
STYLE.ButtonHighlightColor1={ZGV.F.HTMLColor("#444444ff")}
STYLE.ButtonBackdrop2=STYLE.MainBackdrop
STYLE.ButtonColor2=STYLE.TriBackdropColor
STYLE.ButtonHighlightColor2={ZGV.F.HTMLColor("#444444ff")}

STYLE.ButtonTextColor1Over={ZGV.F.HTMLColor("#ffffff77")}
STYLE.ButtonTextColor1Out={ZGV.F.HTMLColor("#ffffffff")}

STYLE.DropDownBackdrop1=STYLE.SecBackdrop
STYLE.DropDownBackdrop1Color=STYLE.TriBackdropColor
STYLE.DropDownBackdrop2=STYLE.DropDownBackdrop1
STYLE.DropDownBackdrop2Color=STYLE.DropDownBackdrop1Color
STYLE.DropDownButtonBackdrop2=STYLE.SecBackdrop
STYLE.DropDownButtonBackdrop2Color=STYLE.DropDownBackdrop2Color

STYLE.DropDownPulloutBackdrop=STYLE.MainBackdrop
STYLE.DropDownPulloutColor={ZGV.F.HTMLColor("#000000e6")}
STYLE.DropDownPulloutBorderColor=STYLE.MainBackdropBorderColor

STYLE.DropDownItemBackdrop=STYLE.SecBackdrop
STYLE.DropDownItemColor=STYLE.TriBackdropColor

STYLE.ScrollBackColor=STYLE.TriBackdropColor
STYLE.ScrollBarColor={ZGV.F.HTMLColor("#666666ff")}

STYLE.Backdrop=STYLE.MainBackdrop
STYLE.BackdropColor=STYLE.MainBackdropColor
STYLE.BackdropBorderColor=STYLE.MainBackdropBorderColor

STYLE.GuideBackdrop={bgFile = SKINSDIR.."white", edgeFile=STYLEDIR.."roundcorners", tile = true, edgeSize=10, tileSize = 20, insets = { left = 10, right = 10, top = 10, bottom = 10 }}
STYLE.GuideBackdropColor={0,0,0,0.5}
STYLE.GuideBackdropBorderColor={0,0,0,0.5}
STYLE.GuideBackdropTopLeft={80,0}
STYLE.GuideBackdropBottomRight={-52,0}

STYLE.BugBackdrop=STYLE.SecBackdrop
STYLE.BugBackdropColor=STYLE.SecBackdropColor

STYLE.GuideButtonSize=20

STYLE.StepnumBackdrop={bgFile = SKINSDIR.."white"}
STYLE.StepnumBackdropColor={0,0,0,0.5}
STYLE.StepnumBackdropTopLeft={20,0}
STYLE.StepnumBackdropBottomRight={50,-20}

STYLE.TabBackdrop={bgFile = SKINSDIR.."white"}
STYLE.TabBackdropColor={0,0,0,0.5}

STYLE.ProgressBarBackdrop = {bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeFile=nil, tile = true, edgeSize=4, tileSize = 16, insets = { left = 6, right = 6, top = 6, bottom = 6 }}
STYLE.ProgressBarBackdropColor={0,0,0,0.8}
STYLE.ProgressBarBackdropBorderColor={0,0,0,1}
STYLE.ProgressBarTexture = {"Interface\\TargetingFrame\\UI-StatusBar"}
STYLE.ProgressBarTextureHeight = 7
STYLE.ProgressBarHeight = 18
STYLE.ProgressBarInset = 5
STYLE.ProgressBarColor = {0,1,0,1}
STYLE.ProgressBarColor2 = {0.53,0.81,0.98,1.0}

STYLE.ScrollBarButtonSize={16,16}

STYLE.SectionTitleColor={1,1,1,1}
STYLE.SectionTitleFontSize = 11

-- Customize as you wish but currently we're economizing
STYLE.CreatureBackdrop=STYLE.Backdrop
STYLE.CreatureBackdropColor=STYLE.BackdropColor
STYLE.CreatureBackdropBorderColor=STYLE.BackdropBorderColor

STYLE.MoneyBackdrop={bgFile="",edgeFile=STYLEDIR.."border", tile = true, edgeSize=14, tileSize = 128, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
STYLE.MoneyBackdropColor={1,1,1,1}
STYLE.MoneyBackdropBorderColor={0,0,0,1}

STYLE.StepBackdrop={bgFile = SKINSDIR.."white", edgeFile=STYLEDIR.."roundcorners", tile = true, edgeSize=8, tileSize = 8, insets = { left = 8, right = 8, top = 8, bottom = 8 }}
STYLE.StepBorderBackdrop={bgFile=nil,edgeFile=STYLEDIR.."border-glow", tile = true, edgeSize=8, tileSize = 8, insets = { left = 8, right = 8, top = 8, bottom = 8 }}
STYLE.StepBackdropColor={0,0,0,0.5}
STYLE.StepBackdropBorderColor={0,0,0,0.5}
STYLE.StepBackdropPersistentBorder=false -- Whether the skin allows to change step border color

STYLE.StepLineBackBackdrop={bgFile = SKINSDIR.."white", edgeFile=STYLEDIR.."roundcorners", tile = true, edgeSize=6, tileSize = 6, insets = { left = 6, right = 6, top = 6, bottom = 6 }}
STYLE.StepLineBackBackdropColor=STYLE.StepBackdropColor -- probably an overkill
STYLE.StepLineBackBackdropBorderColor=STYLE.StepBackdropBorderColor
STYLE.StepLineMarginX=3
STYLE.StepLineMarginY=3
STYLE.StepLineClickerBackdrop=STYLE.StepLineBackBackdrop

STYLE.StepLineIcons = SKINSDIR.."icons"
STYLE.TitleButtons = STYLEDIR.."titlebuttons"
STYLE.TitleLogo = SKINSDIR.."zygorlogo"
STYLE.TitleLogoSize = {110,110/4}

STYLE.StepLineIconSize = 1.4

STYLE.TitleButtonSize = 20

STYLE.StepNumFontSize = 12
STYLE.StepNumWidth = 24

--[[ CreatureViewer removal, 7.0
STYLE.CreatureViewerLabelBackground = {0,0,0,0}
STYLE.CreatureViewerLabelColor = {1,0.8,0,1}
STYLE.CreatureViewerGap = {0,0}
--]]

---------------------GLASS UPDATE -------------------------------

STYLE.NotificationBackdrop=STYLE.MainBackdrop
STYLE.NotificationBackdropColor=STYLE.MainBackdropColor
STYLE.NotificationBackdropBorderColor=STYLE.MainBackdropBorderColor

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

STYLE.GuideMenuSearchEditBackdrop = STYLE.WindowBackdrop
STYLE.GuideMenuSearchEditBackdropColor = {1,1,1,1}
STYLE.GuideMenuSearchEditBorderColor = {ZGV.F.HTMLColor("#7d7d7dff")}
STYLE.GuideMenuSearchEditTextColor = {0,0,0,0}

STYLE.AuctionToolsMargin = 10
STYLE.AuctionToolsPriceIcons = ZGV.DIR.."\\Skins\\goldpricestatusicons"
STYLE.AuctionToolsHeaderFooterBackground = {0,0,0,0}
STYLE.AuctionToolsHeaderFooterBorder = {0,0,0,0}

STYLE.TabsMargin = 10
STYLE.TabsHeight = 20
STYLE.TabsIconSize = 12
STYLE.TabsIcons = ZGV.DIR.."\\Skins\\guideicons-big"
STYLE.TabsBackdrop=STYLE.MainBackdrop
STYLE.TabsBackdropActive={ZGV.F.HTMLColor("#222222ff")}
STYLE.TabsBackdropInactive={0,0,0,1}
STYLE.TabsBorderColor={0,0,0,1}
STYLE.TabsSeparatorColor={ZGV.F.HTMLColor("#3f3f3fff")}
STYLE.TabsSeparatorTexture=SKINSDIR.."white"
STYLE.TabsTextColor={1,1,1,1}
STYLE.TabsTextColorOver={ZGV.F.HTMLColor("#ffffff77")}
STYLE.TabsBusyIcon = ZGV.DIR.."\\Skins\\loading"

STYLE.TabsDecor = false
STYLE.TabsDecorWidth = 8
STYLE.TabsButtonsBackdropColor = {0,0,0,0}

STYLE.ProgressBarBackdrop = {bgFile = SKINSDIR.."white", edgeFile=SKINSDIR.."white", tile = true, edgeSize=1, tileSize = 16, insets = { left = 1, right = 1, top = 1, bottom = 1 }}
STYLE.ProgressBarBackdropColor=STYLE.SecBackdropColor
STYLE.ProgressBarBackdropBorderColor=STYLE.DarkBorder
STYLE.ProgressBarTextureFile = STYLEDIR.."progressbar"
STYLE.ProgressBarTextureFileOffset = {0,1/2,0,1/2}
STYLE.ProgressBarDecorUse = 0
STYLE.ProgressBarDecorFileOffset = {1/2,1,0,1/2}
