-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Settings = TSM.Init("Service.Settings") ---@class Service.Settings
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Math = TSM.Include("Util.Math")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local Sound = TSM.Include("Util.Sound")
local CSV = TSM.Include("Util.CSV")
local Wow = TSM.Include("Util.Wow")
local Reactive = TSM.Include("Util.Reactive")
local private = {
	context = {},
	proxies = {},
	views = {},
	protectedAccessAllowed = {},
	cachedConnectedRealms = nil,
	upgradeContext = nil,
	svCopyErrorTime = 0,
	db = nil,
}
local LibRealmInfo = LibStub("LibRealmInfo")
local KEY_SEP = "@"
local SCOPE_KEY_SEP = " - "
local GLOBAL_SCOPE_KEY = " "
local DEFAULT_PROFILE_NAME = "Default"
local PLAYER = Wow.GetCharacterName()
local FACTION = Wow.GetFactionName()
local REALM = Wow.GetRealmName()
local VALID_TYPES = {
	boolean = true,
	string = true,
	table = true,
	number = true,
}
---@alias ScopeType
---|'"global"'
---|'"profile"'
---|'"realm"'
---|'"factionrealm"'
---|'"char"'
---|'"sync"'
local SCOPE_TYPES = {
	global = "g",
	profile = "p",
	realm = "r",
	factionrealm = "f",
	char = "c",
	sync = "s",
}
local SCOPE_KEYS = {
	global = " ",
	profile = nil, -- set per-DB
	realm = REALM,
	factionrealm = strjoin(SCOPE_KEY_SEP, FACTION, REALM),
	char = strjoin(SCOPE_KEY_SEP, PLAYER, REALM),
	sync = strjoin(SCOPE_KEY_SEP, PLAYER, FACTION, REALM),
}
local DEFAULT_DB = {
	_version = -math.huge, -- DB version
	_currentProfile = {}, -- lookup table of the current profile name by character
	_syncAccountKey = {}, -- lookup table of the sync account key by factionrealm
	_syncOwner = {}, -- lookup table of the owner sync account key by character
	_hash = 0,
	_scopeKeys = {
		profile = {},
		realm = {},
		factionrealm = {},
		char = {},
		sync = {},
	},
	_lastModifiedVersion = {},
}
local ACCESSIBLE_FACTIONS = Environment.IsRetail() and {
	"Horde",
	"Alliance",
	"Neutral"
} or { FACTION }

-- Changelog:
-- [6] added 'global.locale' key
-- [7] changed default value of 'tsmItemTweetEnabled' to false
-- [8] added 'global.itemCacheVersion' key
-- [9] removed 'global.itemCacheVersion' key, added 'global.clientVersion' key
-- [10] first TSM4 version - combined all module settings into a single DB
-- [11] added profile.internalData.createdDefaultOperations
-- [12] added global.shoppingOptions.pctSource
-- [13] added profile.internalData.{managementGroupTreeContext,auctioningGroupTreeContext,shoppingGroupTreeContext}
-- [14] added global.userData.savedAuctioningSearches
-- [15] added global.coreOptions.bankUITab, profile.coreOptions.{bankUIBankFramePosition,bankUIGBankFramePosition}
-- [16] moved profile.coreOptions.{bankUIBankFramePosition,bankUIGBankFramePosition} to profile.internalData.{bankUIBankFramePosition,bankUIGBankFramePosition}
-- [17] added global.internalData.{mainUIFrameContext,auctionUIFrameContext,craftingUIFrameContext}
-- [18] removed global.internalData.itemStringLookup
-- [19] added sync scope (initially with internalData.{classKey,bagQuantity,bankQuantity,reagentBankQuantity,auctionQuantity,mailQuantity}), removed factionrealm.internalData.{syncMetadata,accountKey,inventory,characters} and factionrealm.coreOptions.syncAccounts, added global.debug.chatLoggingEnabled
-- [20] added global.tooltipOptions.enabled
-- [21] added global.craftingOptions.{profitPercent,questSmartCrafting,queueSort}
-- [22] added global.coreOptions.cleanGuildBank
-- [23] changed global.shoppingOptions.maxDeSearchPercent default to 100
-- [24] added global.auctioningOptions.{showAuctionDBTab,openAllBags,ahRowDisplay}
-- [25] split realm.internalData.goldLog into sync.internalData.goldLog and factionrealm.internalData.guildGoldLog
-- [26] added profile.internalData.{shoppingTabGroupContext,auctioningTabGroupContext}
-- [27] added char.internalData.craftingCooldowns
-- [28] added global.internalData.mailingUIFrameContext
-- [29] added global.internalData.vendoringUIFrameContext
-- [30] added global.internalData.bankingUIFrameContext
-- [31] changed global.internalData.bankingUIFrameContext default (isOpen = true), added profile.internalData.{bankingWarehousingGroupTreeContext,bankingAuctioningGroupTreeContext,bankingMailingGroupTreeContext}
-- [32] removed factionrealm.internalData.gathering, added factionrealm.internalData.gatheringContext.{crafter,professions}, added profile.gatheringOptions.sources
-- [33] added global.internalData.taskListUIFrameContext
-- [34] removed realm.internalData.{lastAuctionDBCompleteScan,lastAuctionDBSaveTime,auctionDBScanData}
-- [35] added factionrealm.userData.craftingCooldownIgnore
-- [36] removed factionrealm.internalData.playerProfessions and added sync.internalData.playerProfessions
-- [37] removed global.auctioningOptions.showAuctionDBTab
-- [38] removed global.mailingOptions.{defaultMailTab,autoCheck,displayMoneyCollected,deleteEmptyNPCMail,showReloadBtn,sendDelay,defaultPage}, added global.mailingOptions.recentlyMailedList
-- [39] added profile.internalData.{craftingGroupTreeContext,mailingGroupTreeContext,vendoringGroupTreeContext,importGroupTreeContext}
-- [40] removed global.accountingOptions.{timeFormat,mvSource}
-- [41] removed global.coreOptions.groupPriceSource
-- [42] removed global.vendoringOptions.defaultMerchantTab
-- [43] removed global.coreOptions.{moveDelay,bankUITab}, removed global.auctioningOptions.{openAllBags,ahRowDisplay}, removed global.craftingOptions.{profitPercent,questSmartCrafting,queueSort}, removed global.destroyingOptions.{logDays,timeFormat}, removed global.vendoringOptions.{autoSellTrash,qsHideGrouped,qsHideSoulbound,qsBatchSize,defaultPage,qsMaxMarketValue,qsDestroyValue}, removed profile.coreOptions.{cleanBags,cleanBank,cleanReagentBank,cleanGuildBank}
-- [44] changed global.internalData.{mainUIFrameContext,auctionUIFrameContext,craftingUIFrameContext,destroyingUIFrameContext,mailingUIFrameContext,vendoringUIFrameContext,bankingUIFrameContext} default (added "scale = 1")
-- [45] added char.internalData.auctionSaleHints
-- [46] added global.shoppingOptions.{buyoutConfirm,buyoutAlertSource}
-- [47] added factionrealm.internalData.expiringMail and factionrealm.internalData.expiringAuction
-- [48] added profile.internalData.exportGroupTreeContext
-- [49] added factionrealm.internalData.{mailDisenchantablesChar,mailExcessGoldChar,mailExcessGoldLimit}
-- [50] added factionrealm.internalData.{csvAuctionDBScan,auctionDBScanTime,auctionDBScanHash}
-- [51-53] resetting factionrealm.internalData.crafts
-- [54] removed global.coreOptions.{tsmItemTweetEnabled,auctionSaleEnabled,auctionBuyEnabled}
-- [55] added global.auctionUIContext.{auctioningSelectionDividedContainer,auctioningBagScrollingTable,auctioningLogScrollingTable,auctioningAuctionScrollingTable,myAuctionsScrollingTable,shoppingSelectionDividedContainer,shoppingAuctionScrollingTable,sniperScrollingTable,frame,showDefault,shoppingSearchesTabGroup}
--  added global.bankingUIContext.{frame,isOpen,tab}
--  added global.craftingUIContext.{craftsScrollingTable,matsScrollingTable,gatheringDividedContainer,gatheringScrollingTable,professionScrollingTable,frame,showDefault,professionDividedContainer}
--  added global.destroyingUIContext.itemsScrollingTable
--  added global.mailingUIContext.{mailsScrollingTable,frame,showDefault}
--  added global.mainUIContext.{ledgerDetailScrollingTable,ledgerInventoryScrollingTable,ledgerAuctionsScrollingTable,ledgerOtherScrollingTable,ledgerTransactionsScrollingTable,ledgerResaleScrollingTable,frame,dashboardDividedContainer,groupsDividedContainer,operationsDividedContainer,importExportDividedContainer}
--  added global.taskListUIContext.{frame,isOpen}
--  added global.vendoringUIContext.{buyScrollingTable,buybackScrollingTable,sellScrollingTable,frame,showDefault}
--  added profile.mainUIContext.{groupsManagementGroupTree,importGroupTree,exportGroupTree}
--  added profile.auctionUIContext.{auctioningTabGroup,auctioningGroupTree,shoppingGroupTree}
--  added profile.bankingUIContext.{warehousingGroupTree,auctioningGroupTree,mailingGroupTree}
--  added profile.craftingUIContext.groupTree
--  added profile.mailingUIContext.groupTree
--  added profile.vendoringUIContext.groupTree
--  removed profile.internalData.{auctioningTabGroupContext,auctioningGroupTreeContext,managementGroupTreeContext,shoppingGroupTreeContext,importGroupTreeContext,exportGroupTreeContext,bankingUIFrameContext,craftingUIFrameContext,auctionUIFrameContext,mailingUIFrameContext,vendoringUIFrameContext,destroyingUIFrameContext,mainUIFrameContext,taskListUIFrameContext}
-- [56] added factionrealm.internalData.isCraftFavorite
-- [57] updated global.auctionUIContext.auctioningAuctionScrollingTable
-- [58] updated global.auctionUIContext.sniperScrollingTable
-- [59] updated global.mainUIContext.{frame,dashboardDividedContainer,ledgerDetailScrollingTable,ledgerInventoryScrollingTable,ledgerAuctionsScrollingTable,ledgerOtherScrollingTable,ledgerTransactionsScrollingTable,ledgerResaleScrollingTable}
-- [60] updated global.auctionUIContext.{auctioningAuctionScrollingTable,shoppingAuctionScrollingTable,sniperScrollingTable}, global.craftingUIContext.professionScrollingTable
-- [61] updated global.auctionUIContext.sniperScrollingTable
-- [62] updated global.mainUIContext.{ledgerTransactionsScrollingTable,ledgerResaleScrollingTable}
-- [63] removed global.auctioningOptions.roundNormalPrice
-- [64] removed global.accountingOptions.smartBuyPrice
-- [65] added global.appearanceOptions.colorSet
-- [66] added global.auctionUIContext.auctioningSelectionVerticalDividedContainer
-- [67] updated global.mailingUIContext.mailsScrollingTable
-- [68] removed profile.internalData.{bankUIBankFramePosition,bankUIGBankFramePosition,shoppingTabGroupContext,bankingWarehousingGroupTreeContext,bankingAuctioningGroupTreeContext,bankingMailingGroupTreeContext,craftingGroupTreeContext,mailingGroupTreeContext,vendoringGroupTreeContext}
-- [69] updated global.mainUIContext.ledgerInventoryScrollingTable
-- [70] updated global.auctionUIContext.{auctioningAuctionScrollingTable,shoppingAuctionScrollingTable}
-- [71] moved profile.auctionUIContext.{auctioningGroupTree,shoppingGroupTree},profile.bankingUIContext.{warehousingGroupTree,auctioningGroupTree,mailingGroupTree},profile.craftingUIContext.groupTree,profile.mailingUIContext.groupTree,profile.mainUIContext.{groupsManagementGroupTree,importGroupTree,exportGroupTree} to char.*
-- [72] updated global.auctionUIContext.sniperScrollingTable
-- [73] added profile.vendoringUIContext.groupTree
-- [74] added sync.internalData.money
-- [75] updated global.appearanceOptions.colorSet
-- [76] updated global.mainUIContext.operationsSummaryScrollingTable
-- [77] added global.coreOptions.protectAuctionHouse
-- [78] added global.mainUIContext.{dashboardUnselectedCharacters,dashboardTimeRange}
-- [79] updated global.shoppingOptions.maxDeSearchLvl
-- [80] updated char.auctionUIContext.{auctioningGroupTree,shoppingGroupTree},char.bankingUIContext.{warehousingGroupTree,auctioningGroupTree,mailingGroupTree},char.craftingUIContext.groupTree,char.mailingUIContext.groupTree,char.vendoringUIContext.groupTree,char.mainUIContext.{importGroupTree,exportGroupTree}
-- [81] updated global.mailingUIContext.mailsScrollingTable
-- [82] updated global.craftingUIContext.professionScrollingTable
-- [83] added sync.internalData.goldLogLastUpdate, factionrealm.internalData.guildGoldLogLastUpdate
-- [84] added global.auctionUIContext.myAuctionsScrollingTable
-- [85] removed global.craftingOptions.ignoreCDCraftCost
-- [86] updated global.craftingUIContext.craftsScrollingTable
-- [87] added global.craftingUIContext.craftsScrollingTable
-- [88] added global.shoppingOptions.searchAutoFocus
-- [89] updated global.craftingOptions.defaultCraftPriceMethod
-- [90] added global.internalData.lastCharacter
-- [91] updated global.craftingUIContext.professionScrollingTable
-- [92] updated global.vendoringUIContext.buyScrollingTable
-- [93] moved profile.auctionUIContext.auctioningTabGroup to global.auctionUIContext.auctioningTabGroup
-- [94] added global.internalData.whatsNewVersion
-- [95] added global.appearanceOptions.showTotalMoney
-- [96] updated global.userData.{savedShoppingSearches,savedAuctioningSearches}
-- [97] added global.internalData.{optionalMatBonusIdLookup,optionalMatTextLookup}
-- [98] added global.appearanceOptions.customColorSet
-- [99] updated factionrealm.internalData.crafts, factionrealm.userData.craftingCooldownIgnore, char.internalData.craftingCooldowns
-- [100] added factionrealm.internalData.craftingQueue
-- [101] updated factionrealm.internalData.craftingQueue
-- [102] removed global.internalData.optionalMatBonusIdLookup
-- [103] updated global.auctionUIContext.auctioningAuctionScrollingTable, global.auctionUIContext.myAuctionsScrollingTable, global.auctionUIContext.shoppingAuctionScrollingTable, global.auctionUIContext.sniperScrollingTable, global.auctionUIContext.professionScrollingTable
-- [104] removed factionrealm.internalData.{csvAuctionDBScan,auctionDBScanTime,auctionDBScanHash}
-- [105] updated factionrealm.internalData.crafts, factionrealm.userData.craftingCooldownIgnore, char.internalData.craftingCooldowns
-- [106] added global.userData.ungroupedItemMode
-- [107] added global.tooltipOptions.{destroyTooltipFormat,convertTooltipFormat}, removed global.tooltipOptions.{deTooltip,millTooltip,prospectTooltip,transformTooltip,detailedDestroyTooltip}
-- [108] updated global.tooltipOptions.moduleTooltips
-- [109] updated global.craftingUIContext.professionScrollingTable
-- [110] remove factionrealm.auctioningOptions.whitelist on retail
-- [111] updated global.craftingUIContext.{professionScrollingTable,professionDividedContainer}
-- [112] updated global.craftingUIContext.professionScrollingTable
-- [113] updated global.craftingUIContext.professionDividedContainerBottom
-- [114] updated factionrealm.internalData.crafts
-- [115] removed global.internalData.optionalMatTextLookup
-- [116] updated global.internalData.destroyingHistory
-- [117] added global.storyBoardUIContext, updated global.craftingUIContext.{craftsScrollingTable,matsScrollingTable,gatheringScrollingTable}

local SETTINGS_INFO = {
	version = 117,
	minVersion = 10,
	global = {
		debug = {
			chatLoggingEnabled = { type = "boolean", default = false, lastModifiedVersion = 19 },
		},
		internalData = {
			lastCharacter = { type = "string", default = "???", lastModifiedVersion = 90 },
			vendorItems = { type = "table", default = {}, lastModifiedVersion = 10 },
			appMessageId = { type = "number", default = 0, lastModifiedVersion = 10 },
			destroyingHistory = { type = "table", default = {}, lastModifiedVersion = 116 },
			whatsNewVersion = { type = "number", default = 0, lastModifiedVersion = 94 },
		},
		appearanceOptions = {
			taskListBackgroundLock = { type = "boolean", default = false, lastModifiedVersion = 87 },
			showTotalMoney = { type = "boolean", default = false, lastModifiedVersion = 95 },
			colorSet = { type = "string", default = "midnight", lastModifiedVersion = 75 },
			customColorSet = { type = "table", default = {}, lastModifiedVersion = 98 },
		},
		auctionUIContext = {
			frame = { type = "table", default = { width = 830, height = 587, centerX = -300, centerY = 100, scale = 1, page = 1 }, lastModifiedVersion = 55 },
			showDefault = { type = "boolean", default = false, lastModifiedVersion = 55 },
			auctioningSelectionDividedContainer = { type = "table", default = { leftWidth = 272 }, lastModifiedVersion = 55 },
			auctioningSelectionVerticalDividedContainer = { type = "table", default = { leftWidth = 220 }, lastModifiedVersion = 66 },
			auctioningBagScrollingTable = { type = "table", default = { colWidth = { selected = 16, item = 246, operation = 206 }, colHidden = {} }, lastModifiedVersion = 55 },
			auctioningLogScrollingTable = { type = "table", default = { colWidth = { index = 14, item = 190, buyout = 110, operation = 108, seller = 90, info = 234 }, colHidden = {} }, lastModifiedVersion = 55 },
			auctioningAuctionScrollingTable = { type = "table", default = { colWidth = { item = 226, ilvl = 32, qty = Environment.IsRetail() and 40 or nil, posts = not Environment.IsRetail() and 40 or nil, stack = not Environment.IsRetail() and 40 or nil, timeLeft = 26, seller = Environment.IsRetail() and 136 or 88, itemBid = 115, bid = 115, itemBuyout = 115, buyout = 115, bidPct = 40, pct = 40 }, colHidden = { bid = true, buyout = true, bidPct = true } }, lastModifiedVersion = 103 },
			myAuctionsScrollingTable = { type = "table", default = { colWidth = { item = 248, stackSize = 30, timeLeft = 40, highbidder = not Environment.IsRetail() and 110 or nil, group = Environment.IsRetail() and 228 or 110, currentBid = 100, buyout = 100 }, colHidden = {} }, lastModifiedVersion = 103 },
			shoppingSelectionDividedContainer = { type = "table", default = { leftWidth = 272 }, lastModifiedVersion = 55 },
			shoppingAuctionScrollingTable = { type = "table", default = { colWidth = { item = 226, ilvl = 32, qty = Environment.IsRetail() and 40 or nil, posts = not Environment.IsRetail() and 40 or nil, stack = not Environment.IsRetail() and 40 or nil, timeLeft = 26, seller = Environment.IsRetail() and 136 or 88, itemBid = 115, bid = 115, itemBuyout = 115, buyout = 115, bidPct = 40, pct = 40 }, colHidden = { bid = true, buyout = true, bidPct = true } }, lastModifiedVersion = 103 },
			sniperScrollingTable = { type = "table", default = { colWidth = { icon = 24, item = 230, ilvl = 32, qty = Environment.IsRetail() and 40 or nil, posts = not Environment.IsRetail() and 40 or nil, stack = not Environment.IsRetail() and 40 or nil, seller = Environment.IsRetail() and 134 or 86, itemBid = 115, bid = 115, itemBuyout = 115, buyout = 115, bidPct = 40, pct = 40 }, colHidden = { bid = true, buyout = true, bidPct = true } }, lastModifiedVersion = 103 },
			shoppingSearchesTabGroup = { type = "table", default = { pathIndex = 1 }, lastModifiedVersion = 55 },
			auctioningTabGroup = { type = "table", default = { pathIndex = 1 }, lastModifiedVersion = 93 },
		},
		bankingUIContext = {
			frame = { type = "table", default = { width = 325, height = 600, centerX = 500, centerY = 0, scale = 1 }, lastModifiedVersion = 55 },
			isOpen = { type = "boolean", default = true, lastModifiedVersion = 55 },
			tab = { type = "string", default = "Warehousing", lastModifiedVersion = 55 },
		},
		craftingUIContext = {
			frame = { type = "table", default = { width = 820, height = 587, centerX = -200, centerY = 0, scale = 1, page = 1 }, lastModifiedVersion = 55 },
			showDefault = { type = "boolean", default = false, lastModifiedVersion = 55 },
			craftsScrollingTable = { type = "table", default = { colWidth = { queued = 30, craftName = 222, operation = 80, bags = 28, ah = 24, craftingCost = 100, itemValue = 100, profit = 100, profitPct = 50, saleRate = 32 }, colHidden = { profitPct = true } }, lastModifiedVersion = 117 },
			matsScrollingTable = { type = "table", default = { colWidth = { name = 246, price = 100, professions = 310, num = 100 }, colHidden = {} }, lastModifiedVersion = 117 },
			gatheringDividedContainer = { type = "table", default = { leftWidth = 284 }, lastModifiedVersion = 55 },
			gatheringScrollingTable = { type = "table", default = { colWidth = { name = 210, sources = 160, have = 50, need = 50 }, colHidden = {} }, lastModifiedVersion = 117 },
			professionScrollingTable = { type = "table", default = { colWidth = { name = 310, qty = 54, craftingCost = 100, itemValue = 100, profit = 100, profitPct = 50, saleRate = 42 }, colHidden = { craftingCost = true, itemValue = true, profitPct = true }, collapsed = {} }, lastModifiedVersion = 112 },
			professionDividedContainer = { type = "table", default = { leftWidth = 556 }, lastModifiedVersion = 111 },
			professionDividedContainerBottom = { type = "table", default = { leftWidth = Environment.IsRetail() and 348 or 390 }, lastModifiedVersion = 113 },
		},
		destroyingUIContext = {
			frame = { type = "table", default = { width = 296, height = 442, centerX = 0, centerY = 0, scale = 1 }, lastModifiedVersion = 55 },
			itemsScrollingTable = { type = "table", default = { colWidth = { item = 214, num = 30 }, colHidden = {} }, lastModifiedVersion = 55 },
		},
		storyBoardUIContext = {
			frame = { type = "table", default = { width = 800, height = 600, centerX = 0, centerY = 0, scale = 1 }, lastModifiedVersion = 117 },
		},
		mailingUIContext = {
			frame = { type = "table", default = { width = 620, height = 516, centerX = -200, centerY = 0, scale = 1, page = 1 }, lastModifiedVersion = 55 },
			showDefault = { type = "boolean", default = false, lastModifiedVersion = 55 },
			mailsScrollingTable = { type = "table", default = { colWidth = { items = 380, sender = 100, expires = 65, money = 115 }, colHidden = { sender = true } }, lastModifiedVersion = 81 },
		},
		mainUIContext = {
			frame = { type = "table", default = { width = 900, height = 700, centerX = 0, centerY = 0, scale = 1, page = 1 }, lastModifiedVersion = 59 },
			ledgerDetailScrollingTable = { type = "table", default = { colWidth = { activityType = 91, source = 60, buyerSeller = 100, qty = 45, perItem = 120, totalPrice = 120, time = 110 }, colHidden = {} }, lastModifiedVersion = 59 },
			ledgerInventoryScrollingTable = { type = "table", default = { colWidth = { item = 160, totalItems = 50, bags = 50, banks = 50, mail = 50, alts = 50, guildVault = 50, auctionHouse = 50, totalValue = 120 }, colHidden = {} }, lastModifiedVersion = 69 },
			ledgerAuctionsScrollingTable = { type = "table", default = { colWidth = { item = 305, player = 110, stackSize = 55, quantity = 72, time = 120 }, colHidden = {} }, lastModifiedVersion = 59 },
			ledgerOtherScrollingTable = { type = "table", default = { colWidth = { type = 200, character = 110, otherCharacter = 122, amount = 120, time = 110 }, colHidden = {} }, lastModifiedVersion = 59 },
			ledgerTransactionsScrollingTable = { type = "table", default = { colWidth = { item = 156, player = 95, type = 50, stack = 55, auctions = 60, perItem = 120, total = 120, time = 110 }, colHidden = { total = true } }, lastModifiedVersion = 62 },
			ledgerResaleScrollingTable = { type = "table", default = { colWidth = { item = 194, bought = 50, avgBuyPrice = 120, sold = 50, avgSellPrice = 120, avgProfit = 120, totalProfit = 120, profitPct = 80 }, colHidden = { totalProfit = true, profitPct = true } }, lastModifiedVersion = 62 },
			dashboardDividedContainer = { type = "table", default = { leftWidth = 300 }, lastModifiedVersion = 59 },
			dashboardUnselectedCharacters = { type = "table", default = {}, lastModifiedVersion = 78 },
			dashboardTimeRange = { type = "number", default = -1, lastModifiedVersion = 78 },
			groupsDividedContainer = { type = "table", default = { leftWidth = 300 }, lastModifiedVersion = 55 },
			operationsDividedContainer = { type = "table", default = { leftWidth = 306 }, lastModifiedVersion = 55 },
			importExportDividedContainer = { type = "table", default = { leftWidth = 300 }, lastModifiedVersion = 55 },
			operationsSummaryScrollingTable = { type = "table", default = { colWidth = { selected = 16, name = 248, groups = 130, items = 130 }, colHidden = {} }, lastModifiedVersion = 76 },
		},
		taskListUIContext = {
			frame = { type = "table", default = { topRightX = -220, topRightY = -10, minimized = false, isOpen = true }, lastModifiedVersion = 55 },
			isOpen = { type = "boolean", default = true, lastModifiedVersion = 55 },
		},
		vendoringUIContext = {
			frame = { type = "table", default = { width = 560, height = 500, centerX = -200, centerY = 0, scale = 1, page = 1 }, lastModifiedVersion = 55 },
			showDefault = { type = "boolean", default = false, lastModifiedVersion = 55 },
			buyScrollingTable = { type = "table", default = { colWidth = { qty = 40, item = 310, ilvl = 32, cost = 150 }, colHidden = { ilvl = true } }, lastModifiedVersion = 92 },
			buybackScrollingTable = { type = "table", default = { colWidth = { qty = 40, item = 360, cost = 100 }, colHidden = {} }, lastModifiedVersion = 55 },
			sellScrollingTable = { type = "table", default = { colWidth = { item = 300, vendorSell = 100, potential = 100 }, colHidden = {} }, lastModifiedVersion = 55 },
		},
		coreOptions = {
			globalOperations = { type = "boolean", default = false, lastModifiedVersion = 10 },
			protectAuctionHouse = { type = "boolean", default = false, lastModifiedVersion = 77 },
			chatFrame = { type = "string", default = "", lastModifiedVersion = 10 },
			auctionSaleSound = { type = "string", default = Sound.GetNoSoundKey(), lastModifiedVersion = 10 },
			minimapIcon = { type = "table", default = { hide = false, minimapPos = 220, radius = 80 }, lastModifiedVersion = 10 },
			destroyValueSource = { type = "string", default = "dbmarket", lastModifiedVersion = 10 },
			groupPriceSource = { type = "string", default = "dbmarket", lastModifiedVersion = 41 },
		},
		accountingOptions = {
			trackTrades = { type = "boolean", default = true, lastModifiedVersion = 10 },
			autoTrackTrades = { type = "boolean", default = false, lastModifiedVersion = 10 },
		},
		auctioningOptions = {
			cancelWithBid = { type = "boolean", default = false, lastModifiedVersion = 10 },
			disableInvalidMsg = { type = "boolean", default = false, lastModifiedVersion = 10 },
			matchWhitelist = { type = "boolean", default = true, lastModifiedVersion = 10 },
			scanCompleteSound = { type = "string", default = Sound.GetNoSoundKey(), lastModifiedVersion = 10 },
			confirmCompleteSound = { type = "string", default = Sound.GetNoSoundKey(), lastModifiedVersion = 10 },
		},
		craftingOptions = {
			defaultMatCostMethod = { type = "string", default = "min(dbmarket, crafting, vendorbuy, convert(dbmarket))", lastModifiedVersion = 10 },
			defaultCraftPriceMethod = { type = "string", default = "first(dbminbuyout, dbmarket)*0.95", lastModifiedVersion = 89 },
			ignoreCharacters = { type = "table", default = {}, lastModifiedVersion = 10 },
			ignoreGuilds = { type = "table", default = {}, lastModifiedVersion = 10 },
		},
		destroyingOptions = {
			autoStack = { type = "boolean", default = true, lastModifiedVersion = 10 },
			includeSoulbound = { type = "boolean", default = false, lastModifiedVersion = 10 },
			autoShow = { type = "boolean", default = true, lastModifiedVersion = 10 },
			deMaxQuality = { type = "number", default = 3, lastModifiedVersion = 10 },
			deAbovePrice = { type = "string", default = "0c", lastModifiedVersion = 10 },
		},
		mailingOptions = {
			sendItemsIndividually = { type = "boolean", default = false, lastModifiedVersion = 10 },
			inboxMessages = { type = "boolean", default = true, lastModifiedVersion = 10 },
			sendMessages = { type = "boolean", default = true, lastModifiedVersion = 10 },
			resendDelay = { type = "number", default = 1, lastModifiedVersion = 10 },
			keepMailSpace = { type = "number", default = 0, lastModifiedVersion = 10 },
			deMaxQuality = { type = "number", default = 2, lastModifiedVersion = 10 },
			openMailSound = { type = "string", default = Sound.GetNoSoundKey(), lastModifiedVersion = 10 },
			recentlyMailedList = { type = "table", default = {}, lastModifiedVersion = 38 },
		},
		shoppingOptions = {
			minDeSearchLvl = { type = "number", default = 1, lastModifiedVersion = 10 },
			maxDeSearchLvl = { type = "number", default = 500, lastModifiedVersion = 79 },
			maxDeSearchPercent = { type = "number", default = 100, lastModifiedVersion = 23 },
			pctSource = { type = "string", default = "dbmarket", lastModifiedVersion = 12 },
			buyoutConfirm = { type = "boolean", default = false, lastModifiedVersion = 46 },
			buyoutAlertSource = { type = "string", default = "min(100000g, 200% dbmarket)", lastModifiedVersion = 46 },
			searchAutoFocus = { type = "boolean", default = true, lastModifiedVersion = 88 },
		},
		sniperOptions = {
			sniperSound = { type = "string", default = Sound.GetNoSoundKey(), lastModifiedVersion = 10 },
		},
		vendoringOptions = {
			displayMoneyCollected = { type = "boolean", default = false, lastModifiedVersion = 10 },
			qsMarketValue = { type = "string", default = "dbmarket", lastModifiedVersion = 10 },
		},
		tooltipOptions = {
			enabled = { type = "boolean", default = true, lastModifiedVersion = 20 },
			embeddedTooltip = { type = "boolean", default = true, lastModifiedVersion = 10 },
			customPriceTooltips = { type = "table", default = {}, lastModifiedVersion = 10 },
			moduleTooltips = { type = "table", default = {}, lastModifiedVersion = 108 },
			vendorBuyTooltip = { type = "boolean", default = true, lastModifiedVersion = 10 },
			vendorSellTooltip = { type = "boolean", default = true, lastModifiedVersion = 10 },
			groupNameTooltip = { type = "boolean", default = true, lastModifiedVersion = 10 },
			destroyTooltipFormat = { type = "string", default = "simple", lastModifiedVersion = 107 },
			convertTooltipFormat = { type = "string", default = "simple", lastModifiedVersion = 107 },
			operationTooltips = { type = "table", default = {}, lastModifiedVersion = 10 },
			tooltipShowModifier = { type = "string", default = "none", lastModifiedVersion = 10 },
			inventoryTooltipFormat = { type = "string", default = "full", lastModifiedVersion = 10 },
			tooltipPriceFormat = { type = "string", default = "text", lastModifiedVersion = 10 },
		},
		userData = {
			operations = { type = "table", default = {}, lastModifiedVersion = 10 },
			customPriceSources = { type = "table", default = {}, lastModifiedVersion = 10 },
			destroyingIgnore = { type = "table", default = {}, lastModifiedVersion = 10 },
			savedShoppingSearches = { type = "table", default = { filters = {}, name = {}, isFavorite = {} }, lastModifiedVersion = 96 },
			vendoringIgnore = { type = "table", default = {}, lastModifiedVersion = 10 },
			savedAuctioningSearches = { type = "table", default = { filters = {}, searchTypes = {}, name = {}, isFavorite = {} }, lastModifiedVersion = 96 },
			ungroupedItemMode = { type = "string", default = "specific", lastModifiedVersion = 106 },
		},
	},
	profile = {
		internalData = {
			createdDefaultOperations = { type = "boolean", default = false, lastModifiedVersion = 11 },
		},
		userData = {
			groups = { type = "table", default = {}, lastModifiedVersion = 10 },
			items = { type = "table", default = {}, lastModifiedVersion = 10 },
			operations = { type = "table", default = {}, lastModifiedVersion = 10 },
		},
		gatheringOptions = {
			sources = { type = "table", default = { "vendor", "guildBank", "alt", "altGuildBank", "craftProfit", "auction", "craftNoProfit" }, lastModifiedVersion = 32 },
		},
	},
	factionrealm = {
		internalData = {
			characterGuilds = { type = "table", default = {}, lastModifiedVersion = 10 },
			guildVaults = { type = "table", default = {}, lastModifiedVersion = 10 },
			pendingMail = { type = "table", default = {}, lastModifiedVersion = 10 },
			expiringMail = { type = "table", default = {}, lastModifiedVersion = 47 },
			expiringAuction = { type = "table", default = {}, lastModifiedVersion = 47 },
			mailDisenchantablesChar = { type = "string", default = "", lastModifiedVersion = 49 },
			mailExcessGoldChar = { type = "string", default = "", lastModifiedVersion = 49 },
			mailExcessGoldLimit = { type = "number", default = 10000000000, lastModifiedVersion = 49 },
			crafts = { type = "table", default = {}, lastModifiedVersion = 114 },
			craftingQueue = { type = "table", default = {}, lastModifiedVersion = 101 },
			mats = { type = "table", default = {}, lastModifiedVersion = 10 },
			guildGoldLog = { type = "table", default = {}, lastModifiedVersion = 25 },
			guildGoldLogLastUpdate = { type = "table", default = {}, lastModifiedVersion = 83 },
			isCraftFavorite = { type = "table", default = {}, lastModifiedVersion = 56 },
		},
		coreOptions = {
			ignoreGuilds = { type = "table", default = {}, lastModifiedVersion = 10 },
		},
		auctioningOptions = {
			whitelist = not Environment.IsRetail() and { type = "table", default = {}, lastModifiedVersion = 10 } or nil,
		},
		gatheringContext = {
			crafter = { type = "string", default = "", lastModifiedVersion = 32 },
			professions = { type = "table", default = {}, lastModifiedVersion = 32 },
		},
		userData = {
			craftingCooldownIgnore = { type = "table", default = {}, lastModifiedVersion = 105 },
		},
	},
	realm = {
		internalData = {
			csvSales = { type = "string", default = "", lastModifiedVersion = 10 },
			csvBuys = { type = "string", default = "", lastModifiedVersion = 10 },
			csvIncome = { type = "string", default = "", lastModifiedVersion = 10 },
			csvExpense = { type = "string", default = "", lastModifiedVersion = 10 },
			csvExpired = { type = "string", default = "", lastModifiedVersion = 10 },
			csvCancelled = { type = "string", default = "", lastModifiedVersion = 10 },
			saveTimeSales = { type = "string", default = "", lastModifiedVersion = 10 },
			saveTimeBuys = { type = "string", default = "", lastModifiedVersion = 10 },
			saveTimeExpires = { type = "string", default = "", lastModifiedVersion = 10 },
			saveTimeCancels = { type = "string", default = "", lastModifiedVersion = 10 },
			accountingTrimmed = { type = "table", default = {}, lastModifiedVersion = 10 },
		},
	},
	char = {
		internalData = {
			auctionPrices = { type = "table", default = {}, lastModifiedVersion = 10 },
			auctionMessages = { type = "table", default = {}, lastModifiedVersion = 10 },
			craftingCooldowns = { type = "table", default = {}, lastModifiedVersion = 105 },
			auctionSaleHints = { type = "table", default = {}, lastModifiedVersion = 45 },
		},
		auctionUIContext = {
			auctioningGroupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
			shoppingGroupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
		},
		bankingUIContext = {
			warehousingGroupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
			auctioningGroupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
			mailingGroupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
		},
		craftingUIContext = {
			groupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
		},
		mailingUIContext = {
			groupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
		},
		vendoringUIContext = {
			groupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
		},
		mainUIContext = {
			groupsManagementGroupTree = { type = "table", default = { collapsed = {} }, lastModifiedVersion = 71 },
			importGroupTree = { type = "table", default = { collapsed = {}, selected = {} }, lastModifiedVersion = 80 },
			exportGroupTree = { type = "table", default = { collapsed = {}, unselected = {} }, lastModifiedVersion = 80 },
		},
	},
	sync = {
		-- NOTE: whenever these are changed, the sync version needs to be increased in LibTSM/Services/SyncClasses/Constants.lua
		internalData = {
			money = { type = "number", default = 0, lastModifiedVersion = 74 },
			classKey = { type = "string", default = "", lastModifiedVersion = 19 },
			bagQuantity = { type = "table", default = {}, lastModifiedVersion = 19 },
			bankQuantity = { type = "table", default = {}, lastModifiedVersion = 19 },
			reagentBankQuantity = { type = "table", default = {}, lastModifiedVersion = 19 },
			auctionQuantity = { type = "table", default = {}, lastModifiedVersion = 19 },
			mailQuantity = { type = "table", default = {}, lastModifiedVersion = 19 },
			goldLog = { type = "string", default = "", lastModifiedVersion = 25 },
			goldLogLastUpdate = { type = "number", default = 0, lastModifiedVersion = 83 },
			playerProfessions = { type = "table", default = {}, lastModifiedVersion = 36 },
		},
	},
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Settings:OnSettingsLoad(function()
	local db, upgradeObj = private.Constructor("TradeSkillMasterDB", SETTINGS_INFO)
	private.db = db
	if not upgradeObj then
		return
	end

	-- process DB upgrades
	local prevVersion = upgradeObj:GetPrevVersion()
	if prevVersion < 19 then
		-- migrate inventory data to the sync scope
		local oldInventoryData = TempTable.Acquire()
		local oldSyncMetadata = TempTable.Acquire()
		local oldAccountKey = TempTable.Acquire()
		local oldCharacters = TempTable.Acquire()
		for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, nil, "inventory") do
			oldInventoryData[upgradeObj:GetScopeKey(key)] = value
		end
		for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, nil, "syncMetadata") do
			oldSyncMetadata[upgradeObj:GetScopeKey(key)] = value
		end
		for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, nil, "accountKey") do
			oldAccountKey[upgradeObj:GetScopeKey(key)] = value
		end
		for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, nil, "characters") do
			oldCharacters[upgradeObj:GetScopeKey(key)] = value
		end
		for factionrealm, characters in pairs(oldInventoryData) do
			local syncMetadata = oldSyncMetadata[factionrealm] and oldSyncMetadata[factionrealm].TSM_CHARACTERS
			for character, inventoryData in pairs(characters) do
				if not syncMetadata or not syncMetadata[character] or syncMetadata[character].owner == oldAccountKey[factionrealm] then
					db:NewSyncCharacter(character, db:GetSyncAccountKey(factionrealm), factionrealm)
					local syncScopeKey = db:GetSyncScopeKeyByCharacter(character, factionrealm)
					local class = oldCharacters[factionrealm] and oldCharacters[factionrealm][character]
					if type(class) == "string" then
						db:Set("sync", syncScopeKey, "internalData", "classKey", class)
					end
					db:Set("sync", syncScopeKey, "internalData", "bagQuantity", inventoryData.bag)
					db:Set("sync", syncScopeKey, "internalData", "bankQuantity", inventoryData.bank)
					db:Set("sync", syncScopeKey, "internalData", "reagentBankQuantity", inventoryData.reagentBank)
					db:Set("sync", syncScopeKey, "internalData", "auctionQuantity", inventoryData.auction)
					db:Set("sync", syncScopeKey, "internalData", "mailQuantity", inventoryData.mail)
				end
			end
		end
		TempTable.Release(oldInventoryData)
		TempTable.Release(oldSyncMetadata)
		TempTable.Release(oldAccountKey)
		TempTable.Release(oldCharacters)
	end
	if prevVersion < 25 then
		-- migrate gold log info
		local NEW_CSV_COLS = { "minute", "copper" }
		local function ConvertGoldLogFormat(data)
			local decodedData = select(2, CSV.Decode(data))
			if not decodedData then
				return
			end
			for _, entry in ipairs(decodedData) do
				local minute = entry.startMinute
				local copper = entry.copper
				wipe(entry)
				entry.minute = minute
				entry.copper = copper
			end
			return CSV.Encode(NEW_CSV_COLS, decodedData)
		end
		local function ProcessGoldLogData(character, data, scopeKey)
			if type(data) ~= "string" then
				return
			end
			-- check if we know about this character and under what faction
			local syncScopeKey = nil
			for factionrealm in db:FactionrealmByRealmIterator(scopeKey) do
				local testSyncScopeKey = db:GetSyncScopeKeyByCharacter(character, factionrealm)
				if db:Get("sync", testSyncScopeKey, "internalData", "classKey") then
					syncScopeKey = testSyncScopeKey
				end
			end
			if syncScopeKey then
				db:Set("sync", syncScopeKey, "internalData", "goldLog", ConvertGoldLogFormat(data))
			else
				-- check if this is a known guild
				local found = false
				for factionrealm in db:FactionrealmByRealmIterator(scopeKey) do
					local characterGuilds = db:Get("factionrealm", factionrealm, "internalData", "characterGuilds")
					if not found and characterGuilds and Table.KeyByValue(characterGuilds, character) then
						local guildGoldLog = db:Get("factionrealm", factionrealm, "internalData", "guildGoldLog") or {}
						guildGoldLog[character] = ConvertGoldLogFormat(data)
						db:Set("factionrealm", factionrealm, "internalData", "guildGoldLog", guildGoldLog)
						found = true
					end
				end
			end
		end
		for _, key, value in upgradeObj:RemovedSettingIterator("realm", nil, nil, "goldLog") do
			local scopeKey = upgradeObj:GetScopeKey(key)
			for character, data in pairs(value) do
				ProcessGoldLogData(character, data, scopeKey)
			end
		end
	end
	if prevVersion < 36 then
		for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, nil, "playerProfessions") do
			local factionrealm = upgradeObj:GetScopeKey(key)
			for character, data in pairs(value) do
				-- check if we know about this character
				local syncScopeKey = db:GetSyncScopeKeyByCharacter(character, factionrealm)
				if db:Get("sync", syncScopeKey, "internalData", "classKey") then
					db:Set("sync", syncScopeKey, "internalData", "playerProfessions", data)
				end
			end
		end
	end
	if prevVersion < 64 then
		local hadValue = false
		for _, _, value in upgradeObj:RemovedSettingIterator("global", nil, "accountingOptions", "smartBuyPrice") do
			hadValue = hadValue or value
		end
		if hadValue then
			-- show a dialog to inform the user that this was removed
			StaticPopupDialogs["TSM_ACCOUNTING_SMART_AVG_REMOVED"] = {
				text = L["The 'use smart average for purchase price' setting has been removed from TSM and replaced with a new 'SmartAvgBuy' price source. Please update your custom prices appropriately."],
				button1 = OKAY,
				timeout = 0,
				whileDead = true,
			}
			Wow.ShowStaticPopupDialog("TSM_ACCOUNTING_SMART_AVG_REMOVED")
		end
	end
	if prevVersion < 82 then
		for _, key, value in upgradeObj:RemovedSettingIterator("global", nil, "craftingUIContext", "professionScrollingTable") do
			-- preserve the previous values
			local newTbl = db:Get("global", upgradeObj:GetScopeKey(key), "craftingUIContext", "professionScrollingTable")
			for col, width in pairs(value.colWidth) do
				newTbl.colWidth[col] = width
			end
			for col, hidden in pairs(value.colHidden) do
				newTbl.colHidden[col] = hidden
			end
			if value.collapsed then
				for col, collapsed in pairs(value.collapsed) do
					newTbl.collapsed[col] = collapsed
				end
			end
		end
	end
	if prevVersion < 89 then
		for _, key, value in upgradeObj:RemovedSettingIterator("global", nil, "craftingOptions", "defaultCraftPriceMethod") do
			-- preserve the previous value
			db:Set("global", upgradeObj:GetScopeKey(key), "craftingOptions", "defaultCraftPriceMethod", value)
		end
	end
	if prevVersion < 96 then
		for _, key, value in upgradeObj:RemovedSettingIterator("global", nil, "userData", "savedShoppingSearches") do
			-- convert how they are stored
			local newTbl = db:Get("global", upgradeObj:GetScopeKey(key), "userData", "savedShoppingSearches")
			for i, searchInfo in ipairs(value) do
				local filter = searchInfo.filter
				if searchInfo.name ~= filter then
					newTbl.name[filter] = searchInfo.name
				end
				if searchInfo.isFavorite then
					newTbl.isFavorite[filter] = true
				end
				newTbl.filters[i] = filter
			end
		end

		for _, key, value in upgradeObj:RemovedSettingIterator("global", nil, "userData", "savedAuctioningSearches") do
			-- convert how they are stored
			local newTbl = db:Get("global", upgradeObj:GetScopeKey(key), "userData", "savedAuctioningSearches")
			for i, searchInfo in ipairs(value) do
				local filter = searchInfo.filter
				if searchInfo.name ~= filter then
					newTbl.name[filter] = searchInfo.name
				end
				if searchInfo.isFavorite then
					newTbl.isFavorite[filter] = true
				end
				newTbl.filters[i] = filter
				newTbl.searchTypes[i] = searchInfo.searchType
			end
		end
	end
	if prevVersion < 105 and Environment.IsRetail() then
		for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, "userData", "craftingCooldownIgnore") do
			if prevVersion < 99 then
				local IGNORED_COOLDOWN_SEP = "\001"
				local newValue = {}
				for entry in pairs(value) do
					local characterKey, spellId = strsplit(IGNORED_COOLDOWN_SEP, entry)
					newValue[characterKey..IGNORED_COOLDOWN_SEP.."c:"..spellId] = true
				end
				value = newValue
			end
			db:Set("factionrealm", upgradeObj:GetScopeKey(key), "userData", "craftingCooldownIgnore", value)
		end
		for _, key, value in upgradeObj:RemovedSettingIterator("char", nil, "internalData", "craftingCooldowns") do
			if prevVersion < 99 then
				local newValue = {}
				for spellId, data in pairs(value) do
					newValue["c:"..spellId] = data
				end
				value = newValue
			end
			db:Set("char", upgradeObj:GetScopeKey(key), "internalData", "craftingCooldowns", value)
		end
	end
	if prevVersion < 108 then
		for _, key, value in upgradeObj:RemovedSettingIterator("global", nil, "tooltipOptions", "moduleTooltips") do
			-- update AuctionDB.{marketValue,regionMarketValue} values
			if value.AuctionDB then
				value.AuctionDB.marketValue = value.AuctionDB.marketValue and "withTrend" or "none"
				value.AuctionDB.regionMarketValue = value.AuctionDB.regionMarketValue and "noTrend" or "none"
			end
			db:Set("global", upgradeObj:GetScopeKey(key), "tooltipOptions", "moduleTooltips", value)
		end
	end
	if prevVersion < 114 then
		if Environment.IsRetail() then
			if prevVersion < 105 then
				for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, "internalData", "crafts") do
					if prevVersion < 99 then
						local newValue = {}
						for spellId, data in pairs(value) do
							newValue["c:"..spellId] = data
						end
						value = newValue
					end
					for _, craft in pairs(value) do
						if craft.mats then
							for itemString in pairs(craft.mats) do
								if strmatch(itemString, "^o:") then
									craft.mats[itemString] = 1
								end
							end
						end
					end
					db:Set("factionrealm", upgradeObj:GetScopeKey(key), "internalData", "crafts", value)
				end
			else
				for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, "internalData", "crafts") do
					for _, craft in pairs(value) do
						if craft.mats then
							for itemString in pairs(craft.mats) do
								if strmatch(itemString, "^o:") then
									craft.mats[itemString] = 1
								end
							end
						end
					end
					db:Set("factionrealm", upgradeObj:GetScopeKey(key), "internalData", "crafts", value)
				end
			end
		else
			if prevVersion >= 105 then
				for _, key, value in upgradeObj:RemovedSettingIterator("factionrealm", nil, "internalData", "crafts") do
					db:Set("factionrealm", upgradeObj:GetScopeKey(key), "internalData", "crafts", value)
				end
			end
		end
	end
	-- NOTE: When adding migrations, be careful of multiple migrations modifying the same key, as
	-- the RemovedSettingIterator value could be stale.
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

-- TODO: get rid of this
function Settings.GetDB()
	assert(private.db)
	return private.db
end

---Creates a new settings view.
---@return SettingsView
function Settings.NewView()
	assert(private.db)
	return private.CreateView(private.db)
end

function Settings.Get(scope, scopeKey, namespace, key)
	return private.db:Get(scope, scopeKey, namespace, key)
end

function Settings.Set(scope, scopeKey, namespace, key, value)
	return private.db:Set(scope, scopeKey, namespace, key, value)
end

function Settings.GetCurrentSyncAccountKey(factionrealm)
	return private.db:GetSyncAccountKey(factionrealm)
end

function Settings.GetSyncScopeKeyByCharacter(character, factionrealm)
	return private.db:GetSyncScopeKeyByCharacter(character, factionrealm)
end

function Settings.GetCharacterSyncAccountKey(character, factionrealm)
	return private.context[private.db].db._syncOwner[private.db:GetSyncScopeKeyByCharacter(character, factionrealm)]
end

function Settings.ShowSyncSVCopyError()
	if time() - private.svCopyErrorTime < 60 then
		return
	end
	private.svCopyErrorTime = time()
	Log.PrintfUser(L["It appears that you've manually copied your saved variables between accounts which will cause TSM's automatic sync'ing to not work. You'll need to undo this, and/or delete the TradeSkillMaster saved variables files on both accounts (with WoW closed) in order to fix this."])
end

function Settings.CharacterByAccountFactionrealmIterator(account, factionrealm)
	factionrealm = factionrealm or SCOPE_KEYS.factionrealm
	account = account or private.db:GetSyncAccountKey(factionrealm)
	local result = TempTable.Acquire()
	for scopeKey, ownerAccount in pairs(private.context[private.db].db._syncOwner) do
		if ownerAccount == account then
			local character = strmatch(scopeKey, "^(.+)"..String.Escape(SCOPE_KEY_SEP..factionrealm))
			if character then
				tinsert(result, character)
			end
		end
	end
	return TempTable.Iterator(result)
end

function Settings.AccessibleCharacterIterator()
	local result = TempTable.Acquire()
	for realm in private.db:GetConnectedRealmIterator("realm") do
		for _, faction in ipairs(ACCESSIBLE_FACTIONS) do
			local factionrealm = strjoin(SCOPE_KEY_SEP, faction, realm)
			for scopeKey in pairs(private.context[private.db].db._syncOwner) do
				local character = strmatch(scopeKey, "^(.+)"..String.Escape(SCOPE_KEY_SEP..factionrealm))
				if character then
					Table.InsertMultiple(result, factionrealm, character)
				end
			end
		end
	end
	return TempTable.Iterator(result, 2)
end

function Settings.CharacterByFactionrealmIterator(factionrealm)
	factionrealm = factionrealm or SCOPE_KEYS.factionrealm
	local result = TempTable.Acquire()
	for scopeKey in pairs(private.context[private.db].db._syncOwner) do
		local character = strmatch(scopeKey, "^(.+)"..String.Escape(SCOPE_KEY_SEP..factionrealm))
		if character then
			tinsert(result, character)
		end
	end
	return TempTable.Iterator(result)
end

function Settings.IsCurrentAccountOwner(character, factionrealm)
	return Settings.GetCharacterSyncAccountKey(character, factionrealm) == Settings.GetCurrentSyncAccountKey(factionrealm)
end

function Settings.ConnectedFactionrealmAltCharacterIterator()
	local result = TempTable.Acquire()
	for factionrealm in private.db:GetConnectedRealmIterator("factionrealm") do
		for scopeKey in pairs(private.context[private.db].db._syncOwner) do
			local character = strmatch(scopeKey, "^(.+)"..String.Escape(SCOPE_KEY_SEP..factionrealm))
			if character and (factionrealm ~= SCOPE_KEYS.factionrealm or character ~= PLAYER) then
				Table.InsertMultiple(result, factionrealm, character, character..SCOPE_KEY_SEP..factionrealm)
			end
		end
	end
	return TempTable.Iterator(result, 3)
end

function Settings.SyncAccountIterator()
	local result = TempTable.Acquire()
	local used = TempTable.Acquire()
	for _, syncOwner in pairs(private.context[private.db].db._syncOwner) do
		if strmatch(syncOwner, "^"..String.Escape(SCOPE_KEYS.factionrealm..SCOPE_KEY_SEP).."(%d+)$") and not used[syncOwner] and syncOwner ~= Settings.GetCurrentSyncAccountKey() then
			used[syncOwner] = true
			tinsert(result, syncOwner)
		end
	end
	TempTable.Release(used)
	return TempTable.Iterator(result)
end

function Settings.NewSyncCharacter(accountKey, character)
	local factionrealm = SCOPE_KEYS.factionrealm
	assert(strmatch(accountKey, "^"..String.Escape(factionrealm..SCOPE_KEY_SEP).."(%d+)$"), "Invalid account key")
	local scopeKey = private.db:GetSyncScopeKeyByCharacter(character, factionrealm)
	local context = private.context[private.db]
	context.db._syncOwner[scopeKey] = accountKey
	if not tContains(context.db._scopeKeys.sync, scopeKey) then
		tinsert(context.db._scopeKeys.sync, scopeKey)
	end
	private.SetScopeDefaults(context.db, context.settingsInfo, strjoin(KEY_SEP, SCOPE_TYPES.sync, String.Escape(scopeKey), ".+", ".+"))
end

function Settings.RemoveSyncAccount(accountKey)
	local settingsDB = private.context[private.db].db
	assert(accountKey ~= private.db:GetSyncAccountKey())
	local scopeKeysToRemove = TempTable.Acquire()
	for scopeKey, ownerAccountKey in pairs(settingsDB._syncOwner) do
		if ownerAccountKey == accountKey then
			tinsert(scopeKeysToRemove, scopeKey)
		end
	end
	for _, scopeKey in ipairs(scopeKeysToRemove) do
		private.db:DeleteScope("sync", scopeKey)
		settingsDB._syncOwner[scopeKey] = nil
	end
	TempTable.Release(scopeKeysToRemove)
end

function Settings.RemoveSyncCharacter(character)
	local settingsDB = private.context[private.db].db
	local scopeKey = private.db:GetSyncScopeKeyByCharacter(character)
	private.db:DeleteScope("sync", scopeKey)
	settingsDB._syncOwner[scopeKey] = nil
end

function Settings.SyncSettingIterator()
	local result = TempTable.Acquire()
	for namespace, settings in pairs(private.context[private.db].settingsInfo.sync) do
		for settingKey in pairs(settings) do
			Table.InsertMultiple(result, namespace, settingKey)
		end
	end
	return TempTable.Iterator(result, 2)
end

function Settings.FactionrealmCharacterIterator()
	return private.db:FactionrealmCharacterIterator()
end



-- ============================================================================
-- Main SettingsDB Class
-- ============================================================================

local PROTECTED_TABLE_MT = {
	__newindex = function(self, key, value)
		assert(private.protectedAccessAllowed[self], "Attempting to modify a protected table")
		rawset(self, key, value)
	end,
	__metatable = false
}

local SETTINGS_MT = {
	-- getter
	__index = function(self, key)
		if private.SettingsDBMethods[key] then
			return private.SettingsDBMethods[key]
		elseif SCOPE_TYPES[key] then
			return private.context[self].scopeProxies[key]
		else
			error("Invalid scope: "..tostring(key))
		end
	end,

	-- setter
	__newindex = function(self, key, value)
		error("You cannot set values in this table! You're probably missing a scope.")
	end,

	__metatable = false,
}

function private.Constructor(name, rawSettingsInfo)
	assert(type(name) == "string")
	assert(type(rawSettingsInfo) == "table")
	local version = rawSettingsInfo.version
	local minVersion = rawSettingsInfo.minVersion
	assert(type(version) == "number" and type(minVersion) == "number" and minVersion >= 1 and version >= minVersion)

	-- get (and create if necessary) the global table
	local db = _G[name]
	if not db then
		db = {}
		_G[name] = db
	end

	-- flatten and validate rawSettingsInfo and generate hash data
	local settingsInfo = CopyTable(rawSettingsInfo)
	local hashDataParts = TempTable.Acquire()
	local newLastModifiedVersion = TempTable.Acquire()
	for scope, scopeSettingsInfo in pairs(rawSettingsInfo) do
		if scope ~= "version" and scope ~= "minVersion" then
			assert(SCOPE_TYPES[scope], "Invalid scope: "..tostring(scope))
			for namespace, namespaceSettingsInfo in pairs(scopeSettingsInfo) do
				assert(type(namespace) == "string" and type(namespaceSettingsInfo) == "table")
				assert(not strfind(namespace, KEY_SEP))
				for key, info in pairs(namespaceSettingsInfo) do
					assert(type(key) == "string" and type(info) == "table", "Invalid type for key: "..tostring(key))
					assert(not strfind(key, KEY_SEP))
					for k, v in pairs(info) do
						if k == "type" then
							assert(VALID_TYPES[info.type], "Invalid type for key: "..key)
						elseif k == "default" then
							assert(type(v) == info.type, "Invalid default for key: "..key)
							if type(v) == "table" then
								private.CheckDefaultTable(v)
							end
						elseif k == "lastModifiedVersion" then
							assert(type(v) == "number" and v <= version, "Invalid lastModifiedVersion for key: "..key)
							newLastModifiedVersion[strjoin(KEY_SEP, SCOPE_TYPES[scope], namespace, key)] = v
						else
							error("Unexpected key in settingsInfo for key: "..key)
						end
					end
					tinsert(hashDataParts, strjoin(",", key, scope, namespace, info.type, type(info.default) == "table" and "table" or tostring(info.default)))
				end
			end
		end
	end
	sort(hashDataParts)
	local hash = Math.CalculateHash(table.concat(hashDataParts, ";"))
	TempTable.Release(hashDataParts)

	-- reset the DB if it's not valid
	local isValid = true
	if not next(db) then
		-- new DB
		isValid = false
	elseif not private.ValidateDB(db, minVersion) then
		-- corrupted DB
		assert(not Environment.IsDev(), "DB is not valid!")
		isValid = false
	elseif db._version == version and db._hash ~= hash then
		-- the hash didn't match
		assert(not Environment.IsDev(), "Invalid settings hash! Did you forget to increase the version?")
		isValid = false
	elseif db._syncOwner and db._syncOwner[SCOPE_KEYS.sync] and db._syncOwner[SCOPE_KEYS.sync] ~= db._syncAccountKey[SCOPE_KEYS.factionrealm] then
		-- we aren't the owner of this character, so wipe the DB and show a manual error
		Settings.ShowSyncSVCopyError()
		assert(not Environment.IsDev(), "Settings are corrupted due to manual copying of saved variables file")
		isValid = false
	end
	if not isValid then
		-- wipe the DB and start over
		wipe(db)
		for key, value in pairs(DEFAULT_DB) do
			db[key] = private.CopyData(value)
		end
	end
	db._hash = hash

	if not db._syncOwner then
		-- we just upgraded to the first version with the sync scope
		db._syncOwner = {}
		db._syncAccountKey = {}
		db._scopeKeys.sync = {}
	end

	-- make sure we have sync account keys for every factionrealm
	for _, factionrealm in ipairs(db._scopeKeys.factionrealm) do
		db._syncAccountKey[factionrealm] = db._syncAccountKey[factionrealm] or strjoin(SCOPE_KEY_SEP, factionrealm, random(time()))
	end
	-- create the sync account key for this factionrealm if necessary
	db._syncAccountKey[SCOPE_KEYS.factionrealm] = db._syncAccountKey[SCOPE_KEYS.factionrealm] or strjoin(SCOPE_KEY_SEP, SCOPE_KEYS.factionrealm, random(time()))
	-- set the sync owner of the current sync scope key to this account
	db._syncOwner[SCOPE_KEYS.sync] = db._syncOwner[SCOPE_KEYS.sync] or db._syncAccountKey[SCOPE_KEYS.factionrealm]

	-- setup current scope keys and set defaults for new keys
	db._currentProfile[SCOPE_KEYS.char] = db._currentProfile[SCOPE_KEYS.char] or DEFAULT_PROFILE_NAME
	local currentScopeKeys = CopyTable(SCOPE_KEYS)
	currentScopeKeys.profile = db._currentProfile[SCOPE_KEYS.char]
	for scopeType, scopeKey in pairs(currentScopeKeys) do
		if scopeType ~= "global" and not tContains(db._scopeKeys[scopeType], scopeKey) then
			tinsert(db._scopeKeys[scopeType], scopeKey)
			private.SetScopeDefaults(db, settingsInfo, strjoin(KEY_SEP, SCOPE_TYPES[scopeType], String.Escape(scopeKey), ".+", ".+"))
		end
	end

	-- set any values which are nil to their default value
	db._scopeKeys = db._scopeKeys or {
		profile = {},
		realm = {},
		factionrealm = {},
		char = {},
		sync = {},
	}
	for scopeType, scopeKeys in pairs(db._scopeKeys) do
		for _, scopeKey in ipairs(scopeKeys) do
			for namespace, namespaceInfo in pairs(settingsInfo[scopeType]) do
				for settingKey, info in pairs(namespaceInfo) do
					local key = strjoin(KEY_SEP, SCOPE_TYPES[scopeType], scopeKey, namespace, settingKey)
					if db[key] == nil then
						private.SetDBKeyValue(db, key, private.CopyData(info.default))
					end
				end
			end
		end
	end
	for namespace, namespaceInfo in pairs(settingsInfo.global) do
		for settingKey, info in pairs(namespaceInfo) do
			local key = strjoin(KEY_SEP, SCOPE_TYPES.global, GLOBAL_SCOPE_KEY, namespace, settingKey)
			if db[key] == nil then
				private.SetDBKeyValue(db, key, private.CopyData(info.default))
			end
		end
	end

	-- do any necessary upgrading or downgrading if the version changed
	db._lastModifiedVersion = db._lastModifiedVersion or {}
	local removedSettings, prevVersion = nil, nil
	if version ~= db._version then
		-- clear any settings which no longer exist, and set new/updated settings to their default values
		removedSettings = {}
		for key in pairs(db) do
			-- ignore metadata (keys starting with "_")
			if strsub(key, 1, 1) ~= "_" then
				local scopeTypeShort, namespace, settingKey = strmatch(key, "^(.+)"..KEY_SEP..".+"..KEY_SEP.."(.+)"..KEY_SEP.."(.+)$")
				local settingLastModifiedVersion = scopeTypeShort and db._lastModifiedVersion[strjoin(KEY_SEP, scopeTypeShort, namespace, settingKey)]
				local scopeType = scopeTypeShort and private.ScopeReverseLookup(scopeTypeShort)
				local info = settingKey and settingsInfo[scopeType] and settingsInfo[scopeType][namespace] and settingsInfo[scopeType][namespace][settingKey]
				if not info then
					-- this setting was removed so remove it from the db
					removedSettings[key] = db[key]
					db[key] = nil
				elseif info.lastModifiedVersion > db._version then
					-- this setting was updated, so we'll reset it to the default value
					removedSettings[key] = db[key]
				elseif not settingLastModifiedVersion and version < db._version then
					-- we don't have lastModifiedVersion info for this setting and the DB is getting downgraded, so we'll reset it to the default value
					removedSettings[key] = db[key]
				elseif (settingLastModifiedVersion or 0) > version then
					-- this setting is being downgraded, so we'll reset it to the default value
					removedSettings[key] = db[key]
				end
			end
		end
		for scope, scopeInfo in pairs(settingsInfo) do
			if scope ~= "version" and scope ~= "minVersion" then
				for namespace, namespaceInfo in pairs(scopeInfo) do
					for settingKey, info in pairs(namespaceInfo) do
						local settingLastModifiedVersion = db._lastModifiedVersion[strjoin(KEY_SEP, SCOPE_TYPES[scope], namespace, settingKey)]
						if info.lastModifiedVersion > db._version or (not settingLastModifiedVersion and version < db._version) or (settingLastModifiedVersion or 0) > version then
							-- this is either a new setting or was changed or this is a downgrade - either way set it to the default value
							private.SetScopeDefaults(db, settingsInfo, strjoin(KEY_SEP, SCOPE_TYPES[scope], ".+", namespace, settingKey))
						end
					end
				end
			end
		end
		if version > db._version then
			prevVersion = db._version
		else
			removedSettings = nil
		end
		db._version = version
	end

	-- populate the new lastModifiedVersion info
	wipe(db._lastModifiedVersion)
	for k, v in pairs(newLastModifiedVersion) do
		db._lastModifiedVersion[k] = v
	end
	TempTable.Release(newLastModifiedVersion)

	-- make the db table protected
	setmetatable(db, PROTECTED_TABLE_MT)

	-- create the new object and return it
	local new = setmetatable({}, SETTINGS_MT)
	private.context[new] = {
		db = db,
		settingsInfo = settingsInfo,
		currentScopeKeys = currentScopeKeys,
		callbacks = {},
		scopeProxies = {},
		namespaceProxies = {},
	}
	for scopeType, scopeInfo in pairs(rawSettingsInfo) do
		if scopeType ~= "version" and scopeType ~= "minVersion" then
			for namespace in pairs(scopeInfo) do
				private.context[new].namespaceProxies[scopeType..KEY_SEP..namespace] = private.CreateNamespace(new, namespace, scopeType)
			end
			private.context[new].scopeProxies[scopeType] = private.CreateScope(new, scopeType)
		end
	end
	local upgradeObj = nil
	if removedSettings then
		upgradeObj = setmetatable({}, private.SettingsDBUpgradeObjMT)
		assert(prevVersion)
		private.upgradeContext = {
			removedSettings = removedSettings,
			prevVersion = prevVersion,
		}
	end
	return new, upgradeObj
end



-- ============================================================================
-- Class for upgrade object
-- ============================================================================

private.SettingsDBUpgradeObjMT = {
	-- getter
	__index = {
		GetPrevVersion = function(self)
			return private.upgradeContext.prevVersion
		end,

		RemovedSettingIterator = function(self, filterScopeType, filterScopeKey, filterNamespace, filterSettingKey)
			assert(not filterScopeType or SCOPE_TYPES[filterScopeType])
			filterScopeType = filterScopeType and SCOPE_TYPES[filterScopeType] or ".+"
			filterScopeKey = filterScopeKey and String.Escape(filterScopeKey) or ".+"
			filterNamespace = filterNamespace and String.Escape(filterNamespace) or ".+"
			filterSettingKey = filterSettingKey and String.Escape(filterSettingKey) or ".+"
			local keyFilter = "^"..strjoin(KEY_SEP, filterScopeType, filterScopeKey, filterNamespace, filterSettingKey).."$"
			local result = TempTable.Acquire()
			for key, value in pairs(private.upgradeContext.removedSettings) do
				if strmatch(key, keyFilter) then
					tinsert(result, key)
					tinsert(result, value)
				end
			end
			return TempTable.Iterator(result, 2)
		end,

		GetKeyInfo = function(self, key)
			local scopeType, scopeKey, namespace, settingKey = nil, nil, nil, nil
			local parts = TempTable.Acquire(strsplit(KEY_SEP, key))
			if #parts == 4 then
				scopeType, scopeKey, namespace, settingKey = TempTable.UnpackAndRelease(parts)
				scopeType = private.ScopeReverseLookup(scopeType)
			else
				error("Unknown key: "..tostring(key))
			end
			return scopeType, scopeKey, namespace, settingKey
		end,

		GetScopeKey = function(self, key)
			local scopeKey = strmatch(key, "^.+@(.+)@.+@.+$")
			if not scopeKey then
				error("Unknown key: "..tostring(key))
			end
			return scopeKey
		end,
	},

	-- setter
	__newindex = function(self)
		error("You cannot set values in this table!")
	end,

	__metatable = false,
}



-- ============================================================================
-- SettingsDB Object Methods
-- ============================================================================

private.SettingsDBMethods = {
	HasKey = function(self, scope, namespace, key)
		local context = private.context[self]
		return context.settingsInfo[scope][namespace][key] ~= nil
	end,

	Get = function(self, scope, scopeKey, namespace, key)
		assert(SCOPE_TYPES[scope] and type(namespace) == "string" and type(key) == "string", "Invalid parameters!")
		local context = private.context[self]
		assert(context.settingsInfo[scope][namespace][key], "Setting does not exist!")
		scopeKey = scopeKey or context.currentScopeKeys[scope]
		return context.db[strjoin(KEY_SEP, SCOPE_TYPES[scope], scopeKey, namespace, key)]
	end,

	Set = function(self, scope, scopeKey, namespace, key, value)
		assert(SCOPE_TYPES[scope] and type(namespace) == "string" and type(key) == "string", "Invalid parameters!")
		local context = private.context[self]
		local info = context.settingsInfo[scope][namespace][key]
		assert(info, "Setting does not exist!")
		assert(value == nil or type(value) == info.type, "Value is of wrong type.")
		scopeKey = scopeKey or context.currentScopeKeys[scope]
		private.SetDBKeyValue(context.db, strjoin(KEY_SEP, SCOPE_TYPES[scope], scopeKey, namespace, key), value)
	end,

	GetDefaultReadOnly = function(self, scope, namespace, key)
		local context = private.context[self]
		return context.settingsInfo[scope][namespace][key].default
	end,

	GetDefault = function(self, scope, namespace, key)
		return private.CopyData(self:GetDefaultReadOnly(scope, namespace, key))
	end,

	RegisterCallback = function(self, event, callback)
		assert(event == "OnProfileUpdated")
		assert(type(callback) == "function")
		private.context[self].callbacks[event] = callback
	end,

	IsValidProfileName = function(self, name)
		return name ~= "" and not strfind(name, KEY_SEP)
	end,

	ProfileExists = function(self, name)
		return tContains(private.context[self].db._scopeKeys.profile, name) and true or false
	end,

	GetCurrentProfile = function(self)
		return private.context[self].currentScopeKeys.profile
	end,

	GetScopeKeys = function(self, scope)
		return CopyTable(private.context[self].db._scopeKeys[scope])
	end,

	GetProfiles = function(self)
		return self:GetScopeKeys("profile")
	end,

	ProfileIterator = function(self)
		return ipairs(private.context[self].db._scopeKeys.profile)
	end,

	SetProfile = function(self, profileName, noCallback)
		assert(type(profileName) == "string", tostring(profileName))
		assert(not strfind(profileName, KEY_SEP))
		local context = private.context[self]

		-- change the current profile for this character
		context.db._currentProfile[SCOPE_KEYS.char] = profileName
		context.currentScopeKeys.profile = context.db._currentProfile[SCOPE_KEYS.char]

		local isNew = false
		if not tContains(context.db._scopeKeys.profile, profileName) then
			tinsert(context.db._scopeKeys.profile, profileName)
			-- this is a new profile, so set all the settings to their default values
			private.SetScopeDefaults(context.db, context.settingsInfo, strjoin(KEY_SEP, SCOPE_TYPES.profile, String.Escape(profileName), ".+", ".+"))
			isNew = true
		end

		if context.callbacks.OnProfileUpdated and not noCallback then
			context.callbacks.OnProfileUpdated(isNew)
		end
	end,

	ResetProfile = function(self)
		local context = private.context[self]
		private.SetScopeDefaults(context.db, context.settingsInfo, strjoin(KEY_SEP, SCOPE_TYPES.profile, String.Escape(context.currentScopeKeys.profile), ".+", ".+"))
		if context.callbacks.OnProfileUpdated then
			context.callbacks.OnProfileUpdated(true)
		end
	end,

	CopyProfile = function(self, sourceProfileName)
		assert(type(sourceProfileName) == "string")
		assert(not strfind(sourceProfileName, KEY_SEP))
		local context = private.context[self]
		assert(sourceProfileName ~= context.currentScopeKeys.profile)

		-- copy all the settings from the source profile to the current one
		for namespace, namespaceInfo in pairs(context.settingsInfo.profile) do
			for settingKey in pairs(namespaceInfo) do
				local srcKey = strjoin(KEY_SEP, SCOPE_TYPES.profile, sourceProfileName, namespace, settingKey)
				local destKey = strjoin(KEY_SEP, SCOPE_TYPES.profile, context.currentScopeKeys.profile, namespace, settingKey)
				private.SetDBKeyValue(context.db, destKey, private.CopyData(context.db[srcKey]))
			end
		end

		if context.callbacks.OnProfileUpdated then
			context.callbacks.OnProfileUpdated(false)
		end
	end,

	DeleteScope = function(self, scopeType, scopeKey)
		assert(SCOPE_TYPES[scopeType])
		assert(type(scopeKey) == "string")
		local context = private.context[self]
		assert(scopeKey ~= context.currentScopeKeys[scopeType])

		-- remove all settings for the specified profile
		local searchPattern = strjoin(KEY_SEP, SCOPE_TYPES[scopeType], String.Escape(scopeKey), ".+", ".+")
		for key in pairs(context.db) do
			if strmatch(key, searchPattern) then
				private.SetDBKeyValue(context.db, key, nil)
			end
		end

		-- remove the scope key from the list
		Table.RemoveByValue(context.db._scopeKeys[scopeType], scopeKey)
	end,

	DeleteProfile = function(self, profileName, defaultNewProfileName)
		self:DeleteScope("profile", profileName)
		-- move other characters which were on this profile to another one
		local context = private.context[self]
		if not defaultNewProfileName then
			defaultNewProfileName = context.db._scopeKeys.profile[1]
		end
		assert(defaultNewProfileName and tContains(context.db._scopeKeys.profile, defaultNewProfileName))
		for character, currentProfileName in pairs(context.db._currentProfile) do
			if currentProfileName == profileName then
				assert(character ~= SCOPE_KEYS.char)
				context.db._currentProfile[character] = defaultNewProfileName
			end
		end
	end,

	GetConnectedRealmIterator = function(self, scope)
		assert(scope == "factionrealm" or scope == "realm")
		return private.ConnectedRealmIterator, self, scope
	end,

	GetSyncAccountKey = function(self, factionrealm)
		factionrealm = factionrealm or SCOPE_KEYS.factionrealm
		return private.context[self].db._syncAccountKey[factionrealm]
	end,

	SyncAccountIterator = function(self)
		local result = TempTable.Acquire()
		local used = TempTable.Acquire()
		for _, syncOwner in pairs(private.context[self].db._syncOwner) do
			if strmatch(syncOwner, "^"..String.Escape(SCOPE_KEYS.factionrealm..SCOPE_KEY_SEP).."(%d+)$") and not used[syncOwner] and syncOwner ~= self:GetSyncAccountKey() then
				used[syncOwner] = true
				tinsert(result, syncOwner)
			end
		end
		TempTable.Release(used)
		return TempTable.Iterator(result)
	end,

	NewSyncCharacter = function(self, character, accountKey, factionrealm)
		factionrealm = factionrealm or SCOPE_KEYS.factionrealm
		assert(strmatch(accountKey, "^"..String.Escape(factionrealm..SCOPE_KEY_SEP).."(%d+)$"), "Invalid account key")
		local scopeKey = self:GetSyncScopeKeyByCharacter(character, factionrealm)
		local context = private.context[self]
		context.db._syncOwner[scopeKey] = accountKey
		if not tContains(context.db._scopeKeys.sync, scopeKey) then
			tinsert(context.db._scopeKeys.sync, scopeKey)
		end
		private.SetScopeDefaults(context.db, context.settingsInfo, strjoin(KEY_SEP, SCOPE_TYPES.sync, String.Escape(scopeKey), ".+", ".+"))
	end,

	RemoveSyncAccount = function(self, accountKey)
		local settingsDB = private.context[self].db
		assert(accountKey ~= self:GetSyncAccountKey())
		local scopeKeysToRemove = TempTable.Acquire()
		for scopeKey, ownerAccountKey in pairs(settingsDB._syncOwner) do
			if ownerAccountKey == accountKey then
				tinsert(scopeKeysToRemove, scopeKey)
			end
		end
		for _, scopeKey in ipairs(scopeKeysToRemove) do
			self:DeleteScope("sync", scopeKey)
			settingsDB._syncOwner[scopeKey] = nil
		end
		TempTable.Release(scopeKeysToRemove)
	end,

	RemoveSyncCharacter = function(self, character, factionrealm)
		local settingsDB = private.context[self].db
		local scopeKey = self:GetSyncScopeKeyByCharacter(character, factionrealm)
		self:DeleteScope("sync", scopeKey)
		settingsDB._syncOwner[scopeKey] = nil
	end,

	FactionrealmCharacterIterator = function(self, factionrealm)
		factionrealm = factionrealm or SCOPE_KEYS.factionrealm
		local result = TempTable.Acquire()
		for scopeKey in pairs(private.context[self].db._syncOwner) do
			local character = strmatch(scopeKey, "^(.+)"..String.Escape(SCOPE_KEY_SEP..factionrealm))
			if character then
				tinsert(result, character)
			end
		end
		return TempTable.Iterator(result)
	end,

	GetSyncScopeKeyByCharacter = function(self, character, factionrealm)
		return character..SCOPE_KEY_SEP..(factionrealm or SCOPE_KEYS.factionrealm)
	end,

	FactionrealmByRealmIterator = function(self, realm)
		return private.FactionrealmByRealmIteratorHelper, realm
	end,
}



-- ============================================================================
-- Proxy Class for Scopes (TSM.db.XXXXX)
-- ============================================================================

local SCOPE_MT = {
	-- getter
	__index = function(self, namespace)
		assert(type(namespace) == "string", "Invalid namespace type!")
		local proxyInfo = private.proxies[self]
		local context = private.context[proxyInfo.settingsDB]
		assert(context.settingsInfo[proxyInfo.scope][namespace], "Namespace does not exist!")
		local namespaceProxy = context.namespaceProxies[proxyInfo.scope..KEY_SEP..namespace]
		assert(namespaceProxy)
		return namespaceProxy
	end,

	-- setter
	__newindex = function(self, key, value)
		error("You cannot set values in this table! You're probably missing a namespace.")
	end,

	__metatable = false,
}



-- ============================================================================
-- Proxy Class for Namespaces (TSM.db.<scope>.XXXXX)
-- ============================================================================

local NAMESPACE_MT = {
	-- getter
	__index = function(self, key)
		assert(type(key) == "string", "Invalid setting key type!")
		local proxyInfo = private.proxies[self]
		return proxyInfo.settingsDB:Get(proxyInfo.scope, nil, proxyInfo.namespace, key)
	end,

	-- setter
	__newindex = function(self, key, value)
		local proxyInfo = private.proxies[self]
		proxyInfo.settingsDB:Set(proxyInfo.scope, nil, proxyInfo.namespace, key, value)
	end,

	__metatable = false,
}



-- ============================================================================
-- Setting View Class (see Settings.NewView(...))
-- ============================================================================

local VIEW_METHODS = {} ---@class SettingsView

---Adds a key to the view.
---@param scopeType ScopeType The scope type
---@param namespace string The namespace
---@param key string The setting key
---@return SettingsView
function VIEW_METHODS:AddKey(scopeType, namespace, key)
	assert(scopeType and namespace and key)
	local viewInfo = private.views[self]
	assert(viewInfo and not viewInfo.scopeLookup[key] and viewInfo.settingsDB:HasKey(scopeType, namespace, key))
	viewInfo.scopeLookup[key] = scopeType
	viewInfo.namespaceLookup[key] = namespace
	return self
end

---Registers a callback for when a key changes.
---@param key string The setting key
---@param callback fun() The callback function
---@return SettingsView
function VIEW_METHODS:RegisterCallback(key, callback)
	local viewInfo = private.views[self]
	assert(callback and not viewInfo.callbacks[key] and viewInfo.scopeLookup[key])
	viewInfo.callbacks[key] = callback
	return self
end

---Gets a publisher for when a key changes.
---@param key string The setting key
---@return ReactivePublisher
function VIEW_METHODS:PublisherForKey(key)
	local viewInfo = private.views[self]
	assert(viewInfo.scopeLookup[key])
	viewInfo.stream = viewInfo.stream or Reactive.CreateStream()
	return viewInfo.stream:PublisherWithInitialValue(self)
		:IgnoreDuplicatesWithKeys(key)
		:MapWithKey(key)
		:IgnoreDuplicates()
end

---Gets the read-only default for a key.
---@param key string The setting key
---@return unknown
function VIEW_METHODS:GetDefaultReadOnly(key)
	local viewInfo = private.views[self]
	return viewInfo.settingsDB:GetDefaultReadOnly(viewInfo.scopeLookup[key], viewInfo.namespaceLookup[key], key)
end

---Returns an iterator over all accessible values for a key.
---@param key string The setting key
---@return fun():number, ...unknown
function VIEW_METHODS:AccessibleValueIterator(key)
	local viewInfo = private.views[self]
	local scopeType = viewInfo.scopeLookup[key]
	local result = TempTable.Acquire()
	for realm in viewInfo.settingsDB:GetConnectedRealmIterator("realm") do
		for _, faction in ipairs(ACCESSIBLE_FACTIONS) do
			local factionrealm = strjoin(SCOPE_KEY_SEP, faction, realm)
			if scopeType == "sync" then
				for scopeKey in pairs(private.context[viewInfo.settingsDB].db._syncOwner) do
					local character = strmatch(scopeKey, "^(.+)"..String.Escape(SCOPE_KEY_SEP..factionrealm))
					if character then
						local value = viewInfo.settingsDB:Get(viewInfo.scopeLookup[key], scopeKey, viewInfo.namespaceLookup[key], key)
						if value ~= nil then
							Table.InsertMultiple(result, value, character, factionrealm, scopeKey)
						end
					end
				end
			elseif scopeType == "factionrealm" then
				local value = viewInfo.settingsDB:Get(viewInfo.scopeLookup[key], factionrealm, viewInfo.namespaceLookup[key], key)
				if value ~= nil then
					Table.InsertMultiple(result, value, factionrealm)
				end
			else
				error("Invalid scopeType: "..tostring(scopeType))
			end
		end
	end
	if scopeType == "sync" then
		return TempTable.Iterator(result, 4)
	elseif scopeType == "factionrealm" then
		return TempTable.Iterator(result, 2)
	else
		error("Invalid scopeType: "..tostring(scopeType))
	end
end

---Get the setting value for a given scope key.
---@param key string The setting key
---@param ... string The character followed by the factionrealm for sync scope keys or just the single scope key otherwise
---@return unknown
function VIEW_METHODS:GetForScopeKey(key, ...)
	local viewInfo = private.views[self]
	local scopeType = viewInfo.scopeLookup[key]
	local scopeKey = nil
	if scopeType == "sync" then
		assert(select("#", ...) == 2)
		scopeKey = viewInfo.settingsDB:GetSyncScopeKeyByCharacter(...)
	else
		assert(select("#", ...) == 1)
		scopeKey = ...
	end
	return viewInfo.settingsDB:Get(viewInfo.scopeLookup[key], scopeKey, viewInfo.namespaceLookup[key], key)
end

local VIEW_MT = {
	__index = function(self, key)
		if VIEW_METHODS[key] then
			return VIEW_METHODS[key]
		end
		local viewInfo = private.views[self]
		return viewInfo.settingsDB:Get(viewInfo.scopeLookup[key], nil, viewInfo.namespaceLookup[key], key)
	end,
	__newindex = function(self, key, value)
		local viewInfo = private.views[self]
		viewInfo.settingsDB:Set(viewInfo.scopeLookup[key], nil, viewInfo.namespaceLookup[key], key, value)
	end,
	__metatable = false,
}



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.CheckDefaultTable(tbl)
	for k, v in pairs(tbl) do
		assert(type(k) == "string" or type(k) == "number")
		if type(v) == "table" then
			private.CheckDefaultTable(v)
		end
	end
end

function private.CreateScope(settingsDB, scope)
	assert(private.context[settingsDB])
	local new = setmetatable({}, SCOPE_MT)
	private.proxies[new] = {
		settingsDB = settingsDB,
		scope = scope,
	}
	return new
end

function private.CreateNamespace(settingsDB, namespace, scope)
	assert(private.context[settingsDB])
	local new = setmetatable({}, NAMESPACE_MT)
	private.proxies[new] = {
		settingsDB = settingsDB,
		namespace = namespace,
		scope = scope,
	}
	return new
end

function private.CreateView(settingsDB)
	assert(private.context[settingsDB])
	local view = setmetatable({}, VIEW_MT)
	private.views[view] = {
		settingsDB = settingsDB,
		scopeLookup = {},
		namespaceLookup = {},
		callbacks = {},
	}
	return view
end

function private.SetDBKeyValue(db, key, value)
	private.protectedAccessAllowed[db] = true
	db[key] = value
	private.protectedAccessAllowed[db] = nil
	local scopeType, _, namespace, settingKey = strsplit(KEY_SEP, key)
	if not settingKey then
		return
	end
	scopeType = private.ScopeReverseLookup(scopeType)
	for view, viewInfo in pairs(private.views) do
		if viewInfo.scopeLookup[settingKey] == scopeType and viewInfo.namespaceLookup[settingKey] == namespace then
			if viewInfo.callbacks[settingKey] then
				viewInfo.callbacks[settingKey]()
			end
			if viewInfo.stream then
				viewInfo.stream:Send(view)
			end
		end
	end
end

function private.CopyData(data)
	if type(data) == "table" then
		return CopyTable(data)
	elseif VALID_TYPES[type(data)] or type(data) == nil then
		return data
	end
end

function private.ScopeReverseLookup(scopeTypeShort)
	for key, value in pairs(SCOPE_TYPES) do
		if value == scopeTypeShort then
			return key
		end
	end
end

function private.ValidateDB(db, minVersion)
	-- make sure the DB we are loading from is valid
	if #db > 0 then return end
	if type(db._version) ~= "number" then return end
	if db._version < minVersion then return end
	if type(db._hash) ~= "number" then return end
	if db._lastModifiedVersion ~= nil and type(db._lastModifiedVersion) ~= "table" then return end
	if type(db._scopeKeys) ~= "table" then return end
	for scopeType, keys in pairs(db._scopeKeys) do
		if not SCOPE_TYPES[scopeType] then return end
		for i, name in pairs(keys) do
			if type(i) ~= "number" or i > #keys or i <= 0 or type(name) ~= "string" then return end
		end
	end
	if type(db._currentProfile) ~= "table" then return end
	for key, value in pairs(db._currentProfile) do
		if type(key) ~= "string" or type(value) ~= "string" then return end
	end
	return true
end

function private.SetScopeDefaults(db, settingsInfo, searchPattern)
	-- remove any existing entries for matching keys
	for key in pairs(db) do
		if strmatch(key, searchPattern) then
			private.SetDBKeyValue(db, key, nil)
		end
	end

	local scopeTypeShort = strsub(searchPattern, 1, 1)
	local scopeType = private.ScopeReverseLookup(scopeTypeShort)
	assert(scopeType, "Couldn't find scopeType: "..tostring(scopeTypeShort))
	local scopeKeys = nil
	if scopeTypeShort == SCOPE_TYPES.global then
		scopeKeys = {GLOBAL_SCOPE_KEY}
	else
		scopeKeys = db._scopeKeys[scopeType]
		assert(scopeKeys, "Couldn't find scopeKeys for type: "..tostring(scopeTypeShort))
	end

	-- set any matching keys to their default values
	if not settingsInfo[scopeType] then return end
	for namespace, namespaceInfo in pairs(settingsInfo[scopeType]) do
		for settingKey, info in pairs(namespaceInfo) do
			for _, scopeKey in ipairs(scopeKeys) do
				local key = strjoin(KEY_SEP, scopeTypeShort, scopeKey, namespace, settingKey)
				if strmatch(key, searchPattern) then
					private.SetDBKeyValue(db, key, private.CopyData(info.default))
				end
			end
		end
	end
end

function private.ConnectedRealmIterator(self, prevScopeKey)
	if not private.cachedConnectedRealms then
		local connectedRealms = {}
		if Environment.IsRetail() then
			local realmId, _, _, _, _, _, _, _, connectedRealmIds = LibRealmInfo:GetRealmInfo(REALM)
			if connectedRealmIds then
				for _, id in ipairs(connectedRealmIds) do
					if id ~= realmId then
						local _, connectedRealmName = LibRealmInfo:GetRealmInfoByID(id)
						tinsert(connectedRealms, connectedRealmName)
					end
				end
			end
		end
		private.cachedConnectedRealms = connectedRealms
	end
	local scope = nil
	if prevScopeKey == "factionrealm" or prevScopeKey == "realm" then
		-- this is the first time
		scope = prevScopeKey
		prevScopeKey = nil
	else
		scope = strmatch(prevScopeKey, String.Escape(FACTION.." - ")) and "factionrealm" or "realm"
	end
	local foundPrev = prevScopeKey == nil
	local index = 0
	while true do
		local realm = index == 0 and SCOPE_KEYS.realm or private.cachedConnectedRealms[index]
		if not realm then return end
		index = index + 1
		local scopeKey = (scope == "factionrealm") and (FACTION..SCOPE_KEY_SEP..realm) or realm
		if scopeKey == prevScopeKey then
			foundPrev = true
		elseif foundPrev and tContains(private.context[self].db._scopeKeys[scope], scopeKey) then
			return scopeKey
		end
	end
end

function private.FactionrealmByRealmIteratorHelper(realm, prevValue)
	if not prevValue then
		return strjoin(SCOPE_KEY_SEP, "Horde", realm)
	elseif strmatch(prevValue, "^Horde") then
		return strjoin(SCOPE_KEY_SEP, "Alliance", realm)
	elseif strmatch(prevValue, "^Alliance") then
		return strjoin(SCOPE_KEY_SEP, "Neutral", realm)
	end
end
