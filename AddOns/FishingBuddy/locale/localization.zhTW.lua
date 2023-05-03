-- Translation for zhTW by Indra from Eastern.Stories an old old old TW mud. 06/20/2007
-- 在下只翻譯了FishingBuddy 的部份.
-- Outfitter 的部份留待能人接續, 個人習慣使用Itemrack
-- Translation for zhTW , WOW version 2.3.0	Fish Buddy EBA0.9.3i by Indra	 
-- Special thanks translating advice from "Whocare" on "bahamut" a gamer forum of influence in Taiwan 11/24/2007

-- Update translation for 0.9.7 beta3 05/03/2009
-- Translations added from CurseForge, machihchung and "zhTW"

FishingTranslations["zhTW"] = {
	["ABOUT_TAB"] = "關於",
	["ADDFISHINFOMSG"] = "添加 '%s' 到 %s 地區。",
	["ALLZOMGPETS"] = "包括所有的寵物",
	--[[Translation missing --]]
	--[[ ["AUTHOR"] = "Sutorix (sutorix@hotmail.com)",--]] 
	--[[Translation missing --]]
	--[[ ["BINDING_HEADER_FISHINGBUDDY_BINDINGS"] = "#NAME#",--]] 
	["BINDING_NAME_FISHINGBUDDY_GOFISHING"] = "換裝並釣魚",
	["BINDING_NAME_FISHINGBUDDY_SWITCH"] = "切換釣魚套裝",
	["BINDING_NAME_FISHINGBUDDY_TOGGLE"] = "切換 #NAME# 視窗",
	["BINDING_NAME_TOGGLEFISHINGBUDDY_LOC"] = "切換 #NAME# 區域面板",
	["BINDING_NAME_TOGGLEFISHINGBUDDY_OPT"] = "切換 #NAME# 選項面板",
	["BOBBER_NAME"] = "浮標",
	--[[Translation missing --]]
	--[[ ["BR"] = [=[
]=],--]] 
	--[[Translation missing --]]
	--[[ ["BRSPCS"] = [=[
    ]=],--]] 
	["CAUGHT_IN_ZONES"] = "捕獲在: %s",
	["CAUGHTTHISMANY"] = "捕獲:",
	["CAUGHTTHISTOTAL"] = "總計:",
	--[[Translation missing --]]
	--[[ ["CHECKSKILLWINDOW"] = "Check the Tradeskill window for Fishing (enable the 'Setup Skills' option).",--]] 
	["CLEANUP_DONEMSG"] = "已移除舊的設定 |c#RED#%s|r: %s。",
	["CLEANUP_NONEMSG"] = "無舊設定遺留。",
	["CLEANUP_NOOLDMSG"] = "沒有舊的玩家設定 |c#GREEN#%s|r.",
	["CLEANUP_WILLMSG"] = "舊設定遺留 |c#RED#%s|r: %s.",
	["CLICKTOSWITCH_INFO"] = "啟用時，左鍵點擊切換套裝，不然就開啟#NAME#視窗。",
	["CLICKTOSWITCH_ONOFF"] = "點擊切換",
	["COMPATIBLE_SWITCHER"] = "無相容套裝切換",
	["CONFIG_ALWAYSHAT_INFO"] = "啟用時，就會戴上帽子 (就算你不需要)。",
	["CONFIG_ALWAYSHAT_ONOFF"] = "使用帽子",
	["CONFIG_ALWAYSLURE_INFO"] = "啟用時，將替未上魚餌的魚竿上餌。",
	["CONFIG_ALWAYSLURE_ONOFF"] = "保持魚餌",
	["CONFIG_AUTOLOOT_INFO"] = "啟用時，釣魚時會自動拾取。",
	["CONFIG_AUTOLOOT_INFOD"] = "自動拾取關閉，因為FishWarden被開啟",
	["CONFIG_AUTOLOOT_ONOFF"] = "自動拾取",
	["CONFIG_AUTOOPEN_INFO"] = "啟用時，點兩下滑鼠會打開釣魚任務物品。",
	["CONFIG_AUTOOPEN_ONOFF"] = "打開任務物品",
	["CONFIG_BGSOUNDS_INFO"] = "啟用時，當魔獸在背景運行時啟用音效。",
	["CONFIG_BGSOUNDS_ONOFF"] = "背景音效",
	--[[Translation missing --]]
	--[[ ["CONFIG_BIGDRAENOR_INFO"] = "If enabled, attempt to maximize skill while in Draenor and Broken Islands.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_BIGDRAENOR_ONOFF"] = "Max Fishing",--]] 
	["CONFIG_BOBBINGBERG_INFO"] = "啟用時，將施放漂浮冰山。",
	--[[Translation missing --]]
	--[[ ["CONFIG_BOBBINGBERG_ONOFF"] = "Use Bipsi's Berg",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_CONSERVATORY_INFO"] = "If enabled, turn on the 'Find Fish' buff when in the Queen's Conservatory.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_CONSERVATORY_ONOFF"] = "Queen's Pools",--]] 
	["CONFIG_CONTESTS_INFO"] = "顯示釣魚比賽計時器",
	["CONFIG_CONTESTS_ONOFF"] = "支援釣魚大賽",
	["CONFIG_CREATEMACRO_INFO"] = "為#NAME#新增巨集.",
	["CONFIG_CREATEMACRO_ONOFF"] = "新增巨集",
	--[[Translation missing --]]
	--[[ ["CONFIG_DALARANLURES_INFO"] = "If enabled, apply special Dalaran coin lures when available.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_DALARANLURES_ONOFF"] = "Dalaran Lures",--]] 
	["CONFIG_DERBYTIMER_INFO"] = "啟用時，顯示卡魯耶克釣魚大賽開始的倒數計時器以及剩餘時間。",
	["CONFIG_DERBYTIMER_ONOFF"] = "卡魯耶克釣魚大賽計時器",
	["CONFIG_DINGQUESTFISH_INFO"] = "啟用時，當釣到納特‧帕格聲望用魚時會撥放音效。",
	["CONFIG_DINGQUESTFISH_ONOFF"] = "釣魚聲望提示音",
	--[[Translation missing --]]
	--[[ ["CONFIG_DRAENORBAIT_INFO"] = "If enabled, attempt to use the right 'special' bait for the current zone.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_DRAENORBAIT_ONOFF"] = "Special Bait",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_DRAENORBAITMAINTAIN_INFO"] = "If enabled, maintain existing 'special' bait, do not apply based on location.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_DRAENORBAITMAINTAIN_ONOFF"] = "Maintain bait only",--]] 
	["CONFIG_DRINKHEAVILY_INFO"] = "啟用時，每當你在釣魚並且 '口乾' 時飲用#LAGER#",
	["CONFIG_DRINKHEAVILY_ONOFF"] = "喝淡啤酒",
	--[[Translation missing --]]
	--[[ ["CONFIG_DROWNEDMANA_INFO"] = "If enabled, turn in Drowned Mana for reputation",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_DROWNEDMANA_ONOFF"] = "Margoss reputation",--]] 
	["CONFIG_EASYCAST_INFO"] = "啟用雙擊右鍵釣魚。",
	["CONFIG_EASYCAST_INFOD"] = "快速釣魚被關閉，因為 Fishing Ace被開啟。",
	["CONFIG_EASYCAST_ONOFF"] = "快速釣魚",
	["CONFIG_EASYCASTKEYS_INFO"] = "如果有指定組合按鍵，按下按鍵時無視釣魚裝備。",
	["CONFIG_EASYLURES_INFO"] = "啟用時，不論需要與否，當你開始釣魚時替你的魚竿重新上餌。",
	["CONFIG_EASYLURES_ONOFF"] = "快速魚餌",
	["CONFIG_ENHANCESOUNDS_INFO"] = "啟用時，增強釣魚音效並降低其他音效。",
	["CONFIG_ENHANCESOUNDS_ONOFF"] = "增強釣魚音效",
	--[[Translation missing --]]
	--[[ ["CONFIG_FILTERRAIDLOOT_INFO"] = "If enabled, low level loot in a fishing raid is filtered.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FILTERRAIDLOOT_ONOFF"] = "Filter Loot",--]] 
	["CONFIG_FINDFISH_INFO"] = "當穿著釣魚套裝時，開啟'尋找魚類'追蹤",
	["CONFIG_FINDFISH_ONOFF"] = "尋找魚類",
	["CONFIG_FISHINGBUDDY_INFO"] = "呼換你釣魚時的特別夥伴",
	["CONFIG_FISHINGBUDDY_ONOFF"] = "釣魚夥伴",
	["CONFIG_FISHINGCHARM_INFO"] = "啟用時，使用潘達利亞得到的釣魚護符。",
	["CONFIG_FISHINGFLUFF_INFO"] = "開啟各種釣魚時的休閒功能",
	["CONFIG_FISHINGFLUFF_ONOFF"] = "釣魚樂趣",
	["CONFIG_FISHINGRAFT_INFO"] = "啟用時，將施放釣魚竹筏。",
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHINGRAID_INFO"] = "Turn on Fishing Raid features.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHINGRAID_ONOFF"] = "Raid Support",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHWARNFISHING_INFO"] = "Warn if we go to a zone where we haven't learned fishing.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHWARNFISHING_ONOFF"] = "Skill Check",--]] 
	["CONFIG_FISHWATCH_INFO"] = "在當前釣魚區域釣到的魚上顯示一個文字",
	["CONFIG_FISHWATCH_ONOFF"] = "釣魚觀察者",
	["CONFIG_FISHWATCHCURRENT_INFO"] = "只顯示此次登入後捕獲的魚。",
	["CONFIG_FISHWATCHCURRENT_ONOFF"] = "只有目前的魚",
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHWATCHLOCATION_INFO"] = "Only show raid bosses when on the right continent.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHWATCHLOCATION_ONOFF"] = "Location Only",--]] 
	["CONFIG_FISHWATCHONLY_INFO"] = "僅在釣魚時才顯示釣魚觀察者",
	["CONFIG_FISHWATCHONLY_ONOFF"] = "僅在釣魚時",
	["CONFIG_FISHWATCHPAGLE_INFO"] = "顯示今天你已經調到的納特‧帕格聲望用魚",
	["CONFIG_FISHWATCHPAGLE_ONOFF"] = "提醒帕格聲望需要的魚",
	["CONFIG_FISHWATCHPERCENT_INFO"] = "在觀察顯示上顯示每種魚類的百分比",
	["CONFIG_FISHWATCHPERCENT_ONOFF"] = "顯示百分比",
	["CONFIG_FISHWATCHSKILL_INFO"] = "在釣魚觀察區域顯示當前釣魚技能",
	["CONFIG_FISHWATCHSKILL_ONOFF"] = "當前技能",
	["CONFIG_FISHWATCHTIME_INFO"] = "顯示你最後一次裝備魚竿的總計時間",
	["CONFIG_FISHWATCHTIME_ONOFF"] = "顯示經過的時間",
	["CONFIG_FISHWATCHTRASH_INFO"] = "不要顯示垃圾物品。",
	["CONFIG_FISHWATCHTRASH_ONOFF"] = "隱藏垃圾",
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHWATCHWORLD_INFO"] = "Display available world quests.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FISHWATCHWORLD_ONOFF"] = "Watch World Quests",--]] 
	["CONFIG_FISHWATCHZONE_INFO"] = "在觀察區域顯示當前區域",
	["CONFIG_FISHWATCHZONE_ONOFF"] = "當前區域",
	--[[Translation missing --]]
	--[[ ["CONFIG_FLYINGCAST_INFO"] = "If enabled, allow casting while flying.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_FLYINGCAST_ONOFF"] = "Flying",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_HANDLEQUESTS_INFO"] = "If enabled, handle fishing quests and reputation automatically,",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_HANDLEQUESTS_ONOFF"] = "Handle quests",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_KEEPONTRUCKIN_INFO"] = "If fishing without a pole, continue casting without the modifier key",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_KEEPONTRUCKIN_ONOFF"] = "Keep Casting",--]] 
	["CONFIG_LASTRESORT_INFO"] = "啟用時，加上最大的餌，即使這個餌無法讓上鉤率達到 100%。",
	["CONFIG_LASTRESORT_ONOFF"] = "最大的餌",
	--[[Translation missing --]]
	--[[ ["CONFIG_LUNKERQUESTS_INFO"] = "Automatically turn in lunker quests",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_LUNKERQUESTS_ONOFF"] = "Turn in lunkers",--]] 
	["CONFIG_MAINTAINBERG_INFO"] = "啟用時，將不使用漂浮冰山，僅保持已啟用的使用狀態。",
	["CONFIG_MAINTAINRAFT_INFO"] = "啟用時，將不使用竹筏道具，僅保持已啟用竹筏的使用狀態。",
	["CONFIG_MAINTAINRAFTBERG_ONOFF"] = "只維持原效果",
	["CONFIG_MAXSOUND_INFO"] = "啟用時，於釣魚時將音效音量開到最大。",
	["CONFIG_MAXSOUND_ONOFF"] = "最大音量",
	["CONFIG_MINIMAPBUTTON_INFO"] = "在小地圖顯示一個 #名稱# 的圖示",
	["CONFIG_MINIMAPBUTTON_ONOFF"] = "顯示小地圖圖示",
	["CONFIG_MINIMAPMOVE_INFO"] = "如果啟動，小地圖圖示可以拖曳移動",
	["CONFIG_MINIMAPMOVE_ONOFF"] = "可拖曳",
	["CONFIG_MOUNTEDCAST_INFO"] = "啟用時，允許在坐騎上施法。",
	["CONFIG_MOUNTEDCAST_ONOFF"] = "在坐騎上",
	["CONFIG_MOUSEEVENT_INFO"] = "點擊滑鼠按鈕拋竿",
	["CONFIG_MOUSEEVENT_ONOFF"] = "使用釣魚技能按鈕",
	["CONFIG_ONLYMINE_INFO"] = "啟用時，快速釣魚僅會檢查你裝備的魚竿。",
	["CONFIG_ONLYMINE_ONOFF"] = "僅裝備魚竿",
	["CONFIG_OUTFITTER_TEXT"] = "裝備技能獎勵: %s#BR#Draznar的風格評分: %d ",
	--[[Translation missing --]]
	--[[ ["CONFIG_OVERWALKING_INFO"] = "If enabled, use the raft even if we're using the artifact pole.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_OVERWALKING_ONOFF"] = "Always Raft",--]] 
	["CONFIG_PARTIALGEAR_INFO"] = "啟用時，即使沒有裝備魚竿，只要身上穿著任一含釣魚加成的裝備即會使用釣魚技能。",
	["CONFIG_PARTIALGEAR_ONOFF"] = "不完全著裝",
	["CONFIG_PREVENTRECAST_INFO"] = "釣魚中調用巨集將不會重複施放釣魚技能.若需要會重上魚餌.",
	["CONFIG_PREVENTRECAST_ONOFF"] = "避免重複使用釣魚技能",
	--[[Translation missing --]]
	--[[ ["CONFIG_RAIDACTION_INFO"] = "If enabled, show an action button when the special item is in inventory.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_RAIDACTION_ONOFF"] = "Action Button",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_RAIDWATCH_INFO"] = "If enabled, the Fish Watcher will show the currency fish for the current raid boss.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_RAIDWATCH_ONOFF"] = "Watch currency",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_SECRET_FISHING_GOGGES_INFO"] = "If enabled, 'Fishing Without A Poel' will use 'Secret Fishing Goggles' first.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_SECRET_FISHING_GOGGLES_INFO"] = "If enabled, 'Fishing Without A Pole' will use 'Secret Fishing Goggles' first.",--]] 
	["CONFIG_SHOWBANNER_INFO"] = "啟用時，登入遊戲時顯示#NAME#的訊息文字。",
	["CONFIG_SHOWBANNER_ONOFF"] = "顯示登入訊息",
	["CONFIG_SHOWLOCATIONZONES_INFO"] = "顯示區域和副區域。",
	["CONFIG_SHOWLOCATIONZONES_ONOFF"] = "顯示區域",
	["CONFIG_SHOWNEWFISHIES_INFO"] = "在當前地區釣到新的魚時在聊天區域發一條訊息",
	["CONFIG_SHOWNEWFISHIES_ONOFF"] = "顯示新的魚",
	["CONFIG_SHOWPOOLS_INFO"] = "啟用時，已知魚點將顯示於小地圖。",
	["CONFIG_SHOWPOOLS_ONOFF"] = "顯示魚點",
	["CONFIG_SORTBYPERCENT_INFO"] = "依照釣到的魚的數量排序顯示替代名稱排序。",
	["CONFIG_SORTBYPERCENT_ONOFF"] = "依照數量分類",
	["CONFIG_SPARKLIES_INFO"] = "啟用時，在釣魚時魚點的閃光提示將會更顯眼。",
	["CONFIG_SPARKLIES_ONOFF"] = "增強魚點顯示",
	--[[Translation missing --]]
	--[[ ["CONFIG_SPECIALBOBBERS_INFO"] = "If enabled, apply a randomly selected custom bobber.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_SPECIALBOBBERS_ONOFF"] = "Bobbers",--]] 
	["CONFIG_STVPOOLSONLY_INFO"] = "啟用時，自動拋竿只會在游標在魚群的時候啟用。",
	["CONFIG_STVPOOLSONLY_ONOFF"] = "僅在魚群自動拋竿",
	["CONFIG_STVTIMER_INFO"] = "啟用時，顯示一個釣魚大賽計時器並且倒數剩下時間。",
	["CONFIG_STVTIMER_ONOFF"] = "釣魚大賽計時器",
	["CONFIG_TOOLTIPS_INFO"] = "啟用時，漁獲訊息資訊會顯示在物品提示中。",
	["CONFIG_TOOLTIPS_ONOFF"] = "在提示裡顯示漁獲訊息",
	["CONFIG_TOONMACRO_INFO"] = "為角色建立釣魚巨集",
	["CONFIG_TOONMACRO_ONOFF"] = "每個角色",
	--[[Translation missing --]]
	--[[ ["CONFIG_TOWNSFOLK_INFO"] = "Fix the TownsfolkTracker error on startup.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_TOWNSFOLK_ONOFF"] = "Fix TownsfolkTracker",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_TRADESKILL_INFO"] = "If enabled, open the TradeSkill window to learn skill levels. Otherwise you will have to manually open the Fishing profession.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_TRADESKILL_ONOFF"] = "Setup Skills",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_TRAWLERTOTEM_INFO"] = "If enabled, use the toy.",--]] 
	["CONFIG_TURNOFFPVP_INFO"] = "啟用時，當你裝備魚竿時會停用 PvP。",
	["CONFIG_TURNOFFPVP_ONOFF"] = "停用PVP",
	["CONFIG_TURNONSOUND_INFO"] = "啟用時，釣魚時音效永遠開啟。",
	["CONFIG_TURNONSOUND_ONOFF"] = "強制音效",
	["CONFIG_TUSKAARSPEAR_INFO"] = "啟用時，盡可能的使用尖銳巨牙矛。",
	["CONFIG_USEACTION_INFO"] = "啟用時，#NAME#會搜尋快捷列上的按鈕來拋竿。",
	["CONFIG_USEACTION_ONOFF"] = "使用快捷列",
	--[[Translation missing --]]
	--[[ ["CONFIG_USERAFTS_INFO"] = "If enabled, use a fishing raft item.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_USERAFTS_INFOD"] = "If you have Pandaren fishing skill, open the Trade Skill window.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_USERAFTS_ONOFF"] = "Use rafts",--]] 
	["CONFIG_WATCHBOBBER_INFO"] = "啟用時，當滑鼠游標位於釣魚浮標上時將不會施放#NAME#。",
	["CONFIG_WATCHBOBBER_ONOFF"] = "專注釣魚",
	--[[Translation missing --]]
	--[[ ["CONFIG_WAVEBOARD_INFO"] = "If enabled, use the Gnarlwood Waveboard.",--]] 
	--[[Translation missing --]]
	--[[ ["CONFIG_WAVEBOARD_ONOFF"] = "Use Waveboard",--]] 
	["COPPER_COIN"] = "銅幣",
	--[[Translation missing --]]
	--[[ ["COPYRIGHT"] = "(c) 2005-2015 by The Software Cobbler",--]] 
	--[[Translation missing --]]
	--[[ ["CURRENT"] = "current",--]] 
	["CURRENT_HELP"] = "|c#GREEN#/fb #CURRENT# #RESET#|r#BRSPCS#重置這次釣魚期間的監視器記錄",
	--[[Translation missing --]]
	--[[ ["DASH"] = " -- ",--]] 
	["DERBY"] = "比賽",
	--[[Translation missing --]]
	--[[ ["DESCRIPTION"] = "#DESCRIPTION1# #DESCRIPTION2#",--]] 
	["DESCRIPTION1"] = "繼續追蹤你釣過的魚",
	["DESCRIPTION2"] = "和管理你的釣魚裝備",
	["ELAPSED"] = "經過",
	["ELDER_CLEARWATER"] = "清水長者大喊: (%a)+ 贏得了卡魯耶克釣魚大賽",
	["ELEM_WATER"] = "元素之水",
	["EXTRAVAGANZA"] = "釣魚大賽",
	["FAILEDINIT"] = "初始化不正常",
	["FATLADYSINGS"] = "|c#RED#%s 釣魚大賽已經過|r (剩餘時間 %d:%02d)",
	--[[Translation missing --]]
	--[[ ["FBMACRO_HELP"] = "Execute the fishing macro",--]] 
	["FISH"] = "Fish",
	--[[Translation missing --]]
	--[[ ["FISHCAUGHT"] = "%d/%d %s",--]] 
	--[[Translation missing --]]
	--[[ ["FISHDATA"] = "fishdata",--]] 
	--[[Translation missing --]]
	--[[ ["FISHDATARESET_MSG"] = "Fish location data has been reset.",--]] 
	--[[Translation missing --]]
	--[[ ["FISHDATARESETHELP"] = "|c#GREEN#/fb #FISHDATA# #RESET#|r#BRSPCS#Reset the fish database. Must be invoked twice.",--]] 
	--[[Translation missing --]]
	--[[ ["FISHDATARESETMORE_MSG"] = "Run |c#GREEN#/fb #FISHDATA# #RESET#|r one more time to reset fish location data.",--]] 
	--[[Translation missing --]]
	--[[ ["FISHING_SKILL"] = "Fishing",--]] 
	--[[Translation missing --]]
	--[[ ["FISHINGMODE"] = "fishing",--]] 
	["FISHINGMODE_HELP"] = "|c#GREEN#/fb #FISHINGMODE# [開始|停止]|r#BRSPCS#Run #NAME# 釣魚.#BRSPCS#在巨集比使用'/cast Fishing'方便.",
	["FISHTYPES"] = "魚種： %d",
	["FLOATING_DEBRIS"] = "漂浮的殘骸",
	["FLOATING_WRECKAGE"] = "漂浮的垃圾堆",
	--[[Translation missing --]]
	--[[ ["FORCE"] = "force",--]] 
	["GOLD_COIN"] = "金幣",
	--[[Translation missing --]]
	--[[ ["HELP"] = "help",--]] 
	["HIDEINWATCHER"] = "在監看中顯示此魚",
	--[[Translation missing --]]
	--[[ ["HOURLY"] = "hourly",--]] 
	["KEYS_ALT_TEXT"] = "Alt",
	["KEYS_CTRL_TEXT"] = "Control",
	["KEYS_LABEL_TEXT"] = "輔助鍵：",
	["KEYS_NONE_TEXT"] = "無",
	["KEYS_SHIFT_TEXT"] = "Shift",
	["LAGER"] = "蘭姆西船長的淡啤酒",
	["LEFTCLICKTODRAG"] = "左鍵點選拖曳",
	["LOCATIONS_INFO"] = "根據區域或是魚種顯示你曾經釣過的魚",
	["LOCATIONS_TAB"] = "位置",
	["LURE_NAME"] = "魚餌",
	["MACRONAME"] = "釣魚助手",
	["MINIMAPBUTTONPLACEMENT"] = "放置",
	["MINIMAPBUTTONPLACEMENTTOOLTIP"] = "允許你在小地圖旁移動 #NAME# 圖示",
	["MINIMAPBUTTONRADIUS"] = "距離",
	["MINIMAPBUTTONRADIUSTOOLTIP"] = "決定 #NAME#小地圖圖示距離中心的距離",
	["MINIMUMSKILL"] = "最低所需技能： %d",
	["NAME"] = "釣魚夥伴",
	["NOCREATEMACROGLOB"] = "無法新增通用的巨集",
	["NOCREATEMACROPER"] = "無法為每個角色新增巨集",
	["NODATAMSG"] = "沒有可用的漁獲資料",
	["NONEAVAILABLE_MSG"] = "沒有可用的",
	["NOREALM"] = "未知伺服器",
	["NOTLINKABLE"] = "<物品無法連結>",
	["OFFSET_LABEL_TEXT"] = "偏移：",
	["OIL_SPILL"] = "油井",
	["OPTIONS_INFO"] = "設定 #NAME# 選項",
	["OPTIONS_TAB"] = "選項",
	["OUTFITS"] = "裝備",
	["POINT"] = "點",
	["POINTS"] = "點",
	["POST_HELP"] = "你可以在\\\"選項\\\"的\\\"按鍵設定\\\"裡面設定開啟#NAME#視窗及切換釣魚裝的按鍵",
	["PRE_HELP"] = "你可以使用 |c#GREEN#/fishingbuddy|r 或 |c#GREEN#/fb|r 來執行所有命令#BR#|c#GREEN#/fb|r: 執行釣魚助手,開啟釣魚助手視窗#BR#|c#GREEN#/fb #HELP#|r: 顯示本訊息",
	["RANDOM"] = "隨機",
	["RAW"] = "Raw",
	--[[Translation missing --]]
	--[[ ["RESET"] = "reset",--]] 
	["RIGGLE_BASSBAIT"] = "^林格·巴斯貝特 .*: .*! (.*) .*!$",
	["RIGHTCLICKFORMENU"] = "右鍵點選開啟選單",
	["ROLE_ADDON_AUTHORS"] = "插件作者註明",
	["ROLE_HELP_BUGS"] = "臭蟲修正與程式碼協助",
	["ROLE_HELP_SUGGESTIONS"] = "特色功能建議",
	["ROLE_TRANSLATE_DEDE"] = "德文翻譯",
	["ROLE_TRANSLATE_ESES"] = "西班牙文翻譯",
	["ROLE_TRANSLATE_FRFR"] = "法文翻譯",
	["ROLE_TRANSLATE_ITIT"] = "義大利文翻譯",
	["ROLE_TRANSLATE_KOKR"] = "韓文翻譯",
	["ROLE_TRANSLATE_PTBR"] = "巴西葡文翻譯",
	["ROLE_TRANSLATE_RURU"] = "俄文翻譯",
	["ROLE_TRANSLATE_ZHCN"] = "簡體中文翻譯",
	["ROLE_TRANSLATE_ZHTW"] = "正體中文翻譯",
	["SCHOOL"] = "魚群",
	["SHOWFISHIES"] = "顯示魚",
	["SHOWFISHIES_INFO"] = "根據魚種顯示漁獲歷史資訊",
	["SHOWLOCATIONS"] = "位置",
	["SHOWLOCATIONS_INFO"] = "根據區域顯示漁獲歷史資訊",
	["SILVER_COIN"] = "銀幣",
	["STVZONENAME"] = "荊棘谷",
	--[[Translation missing --]]
	--[[ ["SWITCH"] = "switch",--]] 
	["SWITCH_HELP"] = "|c#GREEN#/fb #SWITCH#|r#BRSPCS#穿/脫漁具 (如果有安裝OutfitDisplayFrame 或Outfitter的話)",
	["THANKS"] = "謝謝大家!",
	["TIMELEFT"] = "%s結束於 %d:%02d",
	--[[Translation missing --]]
	--[[ ["TIMER"] = "timer",--]] 
	["TIMERRESET_HELP"] = "|c#GREEN#/fb #TIMER# #RESET#|r#BRSPCS# 重置釣魚大賽計時器，將其移至 #BRSPCS# 視窗中央",
	["TIMETOGO"] = "%s開始於 %d:%02d",
	["TOOLTIP_HINT"] = "提示：",
	["TOOLTIP_HINTSWITCH"] = "點選來變換裝備",
	["TOOLTIP_HINTTOGGLE"] = "點選來顯示 #NAME# 視窗",
	["TOOMANYFISHERMEN"] = "你安裝了不只一個自動拋竿模組",
	["TOTAL"] = "總數",
	["TOTALS"] = "總數",
	--[[Translation missing --]]
	--[[ ["UNLEARNEDSKILLWINDOW"] = "You have not learned the fishing skill for this zone.",--]] 
	--[[Translation missing --]]
	--[[ ["UPDATEDB"] = "updatedb",--]] 
	["UPDATEDB_HELP"] = "|c#GREEN#/fb #UPDATEDB# [#FORCE#]|r#BRSPCS#嘗試尋找所有我不知道的魚類名稱#BRSPCS#嘗試跳過 '稀有' 魚類可能會使你斷線#BRSPCS#-- '#FORCE#' 選項可以跳過檢測",
	["UPDATEDB_MSG"] = "更新 %d 種魚名稱",
	--[[Translation missing --]]
	--[[ ["WATCHER"] = "watcher",--]] 
	["WATCHER_HELP"] = "|c#GREEN#/fb #WATCHER#|r [|c#GREEN##WATCHER_LOCK#|r or |c#GREEN##WATCHER_UNLOCK#|r or |c#GREEN##RESET#|r]#BRSPCS#解鎖/鎖定/重置釣魚監視器的位置",
	--[[Translation missing --]]
	--[[ ["WATCHER_LOCK"] = "lock",--]] 
	["WATCHER_TAB"] = "監視器",
	--[[Translation missing --]]
	--[[ ["WATCHER_UNLOCK"] = "unlock",--]] 
	--[[Translation missing --]]
	--[[ ["WATCHERCLICKHELP"] = [=[#LEFTCLICKTODRAG#
#RIGHTCLICKFORMENU#]=],--]] 
	--[[Translation missing --]]
	--[[ ["WEEKLY"] = "weekly",--]] 
	--[[Translation missing --]]
	--[[ ["WINDOW_TITLE"] = "#NAME# v#VERSION#",--]]
}