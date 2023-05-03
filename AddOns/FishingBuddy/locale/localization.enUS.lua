-- default to American English

FishingTranslations = {};

FishingTranslations["Inject"] = {
    DESCRIPTION = "#DESCRIPTION1# #DESCRIPTION2#",
    WINDOW_TITLE = "#NAME# v#VERSION#",
    WATCHERCLICKHELP = "#LEFTCLICKTODRAG#\n#RIGHTCLICKFORMENU#",
    BINDING_HEADER_FISHINGBUDDY_BINDINGS = "#NAME#",

    FISHCAUGHT = "%d/%d %s",

    BR = "\n",
    BRSPCS = "\n    ",
    DASH = " -- ",

    AUTHOR = "Sutorix (sutorix@hotmail.com)",
    COPYRIGHT = "(c) 2005-2022 by The Software Cobbler",

    WEEKLY = "weekly",
    HOURLY = "hourly",
    CURRENT = "current",
    RESET = "reset",
    TIMER = "timer",
    HELP = "help",
    SWITCH = "switch",
    UPDATEDB = "updatedb",
    FISHDATA = "fishdata",
    FORCE = "force",
    FISHINGMODE = "fishing",
    WATCHER = "watcher",
    WATCHER_LOCK = "lock",
    WATCHER_UNLOCK = "unlock",
};

FishingTranslations["enUS"] = {
    NAME = "Fishing Buddy",

    MACRONAME = "FishingBuddy",
    NOCREATEMACROPER = "Could not create per character macro: ", -- Could name create macro: "name of macro"
    NOCREATEMACROGLOB = "Could not create global macro: ", -- Could name create macro: "name of macro"

    -- we can (should?) translate everything below here
    DESCRIPTION1 = "Keep track of the fish you've caught",
    DESCRIPTION2 = "and manage your fishing gear.",

    -- Tab labels and tooltips
    LOCATIONS_INFO = "Shows where you've caught fish by either Area or Fish Type",
    LOCATIONS_TAB = "Locations",
    OPTIONS_INFO = "Set #NAME# options",
    OPTIONS_TAB = "Options",

    ABOUT_TAB = "About",
    WATCHER_TAB = "Watcher",

    POINT = "point",
    POINTS = "points",

    RAW = "Raw",
    FISH = "Fish",
    RANDOM = "Random",

    BOBBER_NAME = "Fishing Bobber",
    LURE_NAME = "Fishing Lure",

    OUTFITS = "Outfits",
    ELAPSED = "Elapsed",
    TOTAL = "Total",
    TOTALS = "Totals",

    SCHOOL = "School",  -- e.g. 'Oily Blackmouth School'
    FLOATING_WRECKAGE = "Floating Wreckage",
    FLOATING_DEBRIS = "Floating Debris",
    ELEM_WATER = "Elemental Water",
    OIL_SPILL = "Oil Spill",

    GOLD_COIN = "Gold coin",
    SILVER_COIN = "Silver coin",
    COPPER_COIN = "Copper coin",

    LAGER = "Captain Rumsey's Lager",

    NOREALM = "unknown realm",

    OFFSET_LABEL_TEXT = "Offset:";

    KEYS_LABEL_TEXT = "Modifiers:",
    KEYS_NONE_TEXT = "None",
    KEYS_SHIFT_TEXT = "Shift",
    KEYS_CTRL_TEXT = "Control",
    KEYS_ALT_TEXT = "Alt",
    CONFIG_EASYCASTKEYS_INFO = "If a modifier key is specified, then when it is down, cast regardless of fishing gear.",

    CONFIG_KEEPONTRUCKIN_ONOFF = "Keep Casting",
    CONFIG_KEEPONTRUCKIN_INFO = "If fishing without a pole, continue casting without the modifier key",

    CONFIG_MOUSEEVENT_ONOFF = "Casting Button",
    CONFIG_MOUSEEVENT_INFO = "Use this mouse button to cast.",

    SHOWFISHIES = "Show fish",
    SHOWFISHIES_INFO = "Display fishing history grouped by fish type.",

    SHOWLOCATIONS = "Locations",
    SHOWLOCATIONS_INFO = "Display fishing history grouped by area caught.",

    ALLZOMGPETS = "Include all pets",
    PETS = "Pets",

    -- Option names and tooltips
    CONFIG_SHOWBANNER_ONOFF       = "Show banner",
    CONFIG_SHOWBANNER_INFO        = "If enabled, show the #NAME# banner on login.",
    CONFIG_TRADESKILL_ONOFF       = "Setup Skills",
    CONFIG_TRADESKILL_INFO        = "If enabled, open the TradeSkill window to learn skill levels. Otherwise you will have to manually open the Fishing profession.",

    -- Hack for classic
    CONFIG_TOWNSFOLK_ONOFF       = "Fix TownsfolkTracker",
    CONFIG_TOWNSFOLK_INFO        = "Fix the TownsfolkTracker error on startup.",

    CONFIG_SHOWNEWFISHIES_ONOFF	 = "Show new fish",
    CONFIG_SHOWNEWFISHIES_INFO	 = "Display a message in the chat area when a new fish for the current location is caught.",
    CONFIG_FISHWATCH_ONOFF		 = "Fish watcher",
    CONFIG_FISHWATCH_INFO		 = "Display a text overlay with the fish caught in the current location.",
    CONFIG_FISHWATCHTIME_ONOFF	 = "Show elapsed time",
    CONFIG_FISHWATCHTIME_INFO	 = "Display the amount of time since you last equipped a fishing pole",
    CONFIG_FISHWATCHONLY_ONOFF	 = "Only while fishing",
    CONFIG_FISHWATCHONLY_INFO	 = "Only show the Fish Watcher when we're actually fishing",
    CONFIG_FISHWATCHSKILL_ONOFF	 = "Current skill",
    CONFIG_FISHWATCHSKILL_INFO	 = "Display the current fishing skill and mods in the fish watch area.",
    CONFIG_FISHWATCHZONE_ONOFF	 = "Current zone",
    CONFIG_FISHWATCHZONE_INFO	 = "Display the current zone in the fish watch area.",
    CONFIG_FISHWATCHPERCENT_ONOFF = "Show percentages",
    CONFIG_FISHWATCHPERCENT_INFO = "Display the percentage of each kind of fish on the watch display.",
    CONFIG_FISHWATCHPAGLE_ONOFF  = "Watch Pagle's Fish",
    CONFIG_FISHWATCHPAGLE_INFO   = "Display which Pagle quest fish you have caught today.",
    CONFIG_FISHWATCHWORLD_ONOFF  = "Watch World Quests",
    CONFIG_FISHWATCHWORLD_INFO   = "Display available world quests.",
    CONFIG_FISHWATCHCURRENT_ONOFF = "Current fish only",
    CONFIG_FISHWATCHCURRENT_INFO = "Display only the fish caught in the current session.",
    CONFIG_FISHWATCHTRASH_ONOFF   = "Hide Trash",
    CONFIG_FISHWATCHTRASH_INFO    = "Don't display trash items.",
    CONFIG_FISHWARNFISHING_ONOFF  = "Skill Check",
    CONFIG_FISHWARNFISHING_INFO   = "Warn if we go to a zone where we haven't learned fishing.",

    CONFIG_HANDLEQUESTS_ONOFF    = "Handle quests",
    CONFIG_HANDLEQUESTS_INFO     = "If enabled, handle fishing quests and reputation automatically,",
    CONFIG_LUNKERQUESTS_ONOFF    = "Turn in lunkers",
    CONFIG_LUNKERQUESTS_INFO     = "Automatically turn in lunker quests",
    CONFIG_DROWNEDMANA_ONOFF     = "Margoss reputation",
    CONFIG_DROWNEDMANA_INFO      = "If enabled, turn in Drowned Mana for reputation",

    CONFIG_EASYCAST_ONOFF	 = "Easy Cast",
    CONFIG_EASYCAST_INFO     = "Enable double-right-click casting.",
    CONFIG_EASYCAST_INFOD    = "Easy cast is disabled because Fishing Ace! is turned on.",
    CONFIG_AUTOLOOT_ONOFF	 = "Auto Loot",
    CONFIG_AUTOLOOT_INFO	 = "If enabled, automatic looting is turned on while fishing.",
    CONFIG_AUTOLOOT_INFOD    = "Automatic looting is disabled because FishWarden is turned on.",
    CONFIG_USEACTION_ONOFF	 = "Use Action",
    CONFIG_USEACTION_INFO	 = "If enabled, #NAME# will look for an action bar button to use for casting.",
    CONFIG_MOUNTEDCAST_ONOFF = "Mounted",
    CONFIG_MOUNTEDCAST_INFO  = "If enabled, allow casting while mounted.",
    CONFIG_FLYINGCAST_ONOFF = "Flying",
    CONFIG_FLYINGCAST_INFO  = "If enabled, allow casting while flying.",
    CONFIG_PARTIALGEAR_ONOFF = "Partial Outfit",
    CONFIG_PARTIALGEAR_INFO  = "If enabled, cast when wearing any fishing gear at all, even if a pole is not equipped.",

    CONFIG_FISHINGCHARM_INFO  = "If enabled, use the fishing charm while in Pandaria.",
    CONFIG_TUSKAARSPEAR_INFO  = "If enabled, do the complicated dance to use the Tuskaar Spear.",
    CONFIG_TRAWLERTOTEM_INFO  = "If enabled, use the toy.",
    CONFIG_SECRET_FISHING_GOGGLES_INFO = "If enabled, 'Fishing Without A Pole' will use 'Secret Fishing Goggles' first.",

    CONFIG_BOBBINGBERG_ONOFF  = "Use Bipsi's Berg",
    CONFIG_BOBBINGBERG_INFO   = "If enabled, use the bobbing berg.",
    CONFIG_WAVEBOARD_ONOFF    = "Use Waveboard",
    CONFIG_WAVEBOARD_INFO     = "If enabled, use the Gnarlwood Waveboard.",
    CONFIG_MAINTAINRAFT_INFO  = "If enabled, do not use the raft item, only maintain it if it is already being used.",
    CONFIG_MAINTAINRAFTBERG_ONOFF = "Maintain only",
    CONFIG_OVERWALKING_ONOFF  = "Always Raft",
    CONFIG_OVERWALKING_INFO   = "If enabled, use the raft even if we're using the artifact pole.",

    CONFIG_USERAFTS_ONOFF     = "Use rafts",
    CONFIG_USERAFTS_INFO      = "If enabled, use a fishing raft item.",
    CONFIG_USERAFTS_INFOD     = "If you have Pandaren fishing skill, open the Trade Skill window.",

    CONFIG_EASYLURES_ONOFF	 = "Easy Lures",
    CONFIG_EASYLURES_INFO	 = "If enabled, a lure will applied to your fishing pole before you start fishing, whenever you need one.",
    CONFIG_ALWAYSHAT_ONOFF	  = "Use hats",
    CONFIG_ALWAYSHAT_INFO	  = "If enabled, just use the damned hat (even if you don't need it).",
    CONFIG_ALWAYSLURE_ONOFF	  = "Always Lure",
    CONFIG_ALWAYSLURE_INFO	  = "If enabled, put a lure on every time the pole doesn't have one.",
    CONFIG_LASTRESORT_ONOFF   = "Lure of last resort",
    CONFIG_LASTRESORT_INFO    = "If enabled, add the biggest lure we have even if it doesn't get us to 100% chance of a catch.",
    CONFIG_DRAENORBAIT_ONOFF  = "Special Bait",
    CONFIG_DRAENORBAIT_INFO   = "If enabled, attempt to use the right 'special' bait for the current zone.",
    CONFIG_DRAENORBAITMAINTAIN_ONOFF  = "Maintain bait only",
    CONFIG_DRAENORBAITMAINTAIN_INFO   = "If enabled, maintain existing 'special' bait, do not apply based on location.",
    CONFIG_BIGDRAENOR_ONOFF   = "Max Fishing",
    CONFIG_BIGDRAENOR_INFO    = "If enabled, attempt to maximize skill while in Draenor and Broken Islands.",
    CONFIG_DALARANLURES_ONOFF = "Dalaran Lures",
    CONFIG_DALARANLURES_INFO  = "If enabled, apply special Dalaran coin lures when available.",
    CONFIG_CONSERVATORY_ONOFF = "Queen's Pools",
    CONFIG_CONSERVATORY_INFO  = "If enabled, turn on the 'Find Fish' buff when in the Queen's Conservatory.",
    CONFIG_SPECIALBOBBERS_ONOFF = "Bobbers",
    CONFIG_SPECIALBOBBERS_INFO  = "If enabled, apply a randomly selected custom bobber.",

    CONFIG_SHOWLOCATIONZONES_ONOFF	= "Show Zones",
    CONFIG_SHOWLOCATIONZONES_INFO = "Display both zones and subzones.",
    CONFIG_SORTBYPERCENT_ONOFF = "Sort by number caught",
    CONFIG_SORTBYPERCENT_INFO = "Order displays by the number of fish caught instead of by name.",
    CONFIG_TOOLTIPS_ONOFF	  = "Show fishing info in tooltips",
    CONFIG_TOOLTIPS_INFO	  = "If enabled, information about caught fish will be displayed in item tooltips.",
    CONFIG_ONLYMINE_ONOFF	  = "Outfit Pole Only",
    CONFIG_ONLYMINE_INFO      = "If enabled, easy cast will only check for your outfit's fishing pole (i.e. it won't search all possible poles for a match).",
    CONFIG_TURNOFFPVP_ONOFF	  = "Turn off PVP",
    CONFIG_TURNOFFPVP_INFO	  = "If enabled, PVP will be turned off when a fishing pole is equipped.",

    CONFIG_ENHANCESOUNDS_ONOFF	= "Enhance fishing sounds",
    CONFIG_ENHANCESOUNDS_INFO	= "When enabled, maximize sound volume and minimize ambient volume to make the bobber noise more noticeable while fishing.",

    CONFIG_BGSOUNDS_ONOFF	  = "Background sound",
    CONFIG_BGSOUNDS_INFO	  = "If enabled, sound will be enabled while WoW is in the background.",
    CONFIG_SPARKLIES_ONOFF	  = "Enhance Pools",
    CONFIG_SPARKLIES_INFO	  = "If enabled, the 'sparkles' on fishing pools will be more visible while fishing.",
    CONFIG_MAXSOUND_ONOFF     = "Full Volume",
    CONFIG_MAXSOUND_INFO      = "If enabled, set the sound volume to the maximum while fishing.",
    CONFIG_TURNONSOUND_ONOFF  = "Force sound",
    CONFIG_TURNONSOUND_INFO   = "If enabled, always turn on sounds while fishing.",
    CONFIG_DINGQUESTFISH_ONOFF = "Fish Ringer",
    CONFIG_DINGQUESTFISH_INFO = "If enabled, the quest added sound will play when a quest fish is caught.",

    CONFIG_FISHINGRAID_ONOFF  = "Raid Support",
    CONFIG_FISHINGRAID_INFO  = "Turn on Fishing Raid features.",
    CONFIG_FILTERRAIDLOOT_ONOFF = "Filter Loot",
    CONFIG_FILTERRAIDLOOT_INFO = "If enabled, low level loot in a fishing raid is filtered.",
    CONFIG_RAIDACTION_ONOFF	   = "Action Button",
    CONFIG_RAIDACTION_INFO     = "If enabled, show an action button when the special item is in inventory.",
    CONFIG_RAIDWATCH_ONOFF     = "Watch currency",
    CONFIG_RAIDWATCH_INFO      = "If enabled, the Fish Watcher will show the currency fish for the current raid boss.",
    CONFIG_FISHWATCHLOCATION_ONOFF  = "Location Only",
    CONFIG_FISHWATCHLOCATION_INFO   = "Only show raid bosses when on the right continent.",

    CONFIG_AUTOOPEN_ONOFF	  = "Open quest items",
    CONFIG_AUTOOPEN_INFO	  = "If enabled, use a double-click to open up fishing quest items.",

    CONFIG_FISHINGFLUFF_ONOFF = "Fishing Fun",
    CONFIG_FISHINGFLUFF_INFO  = "Enable all sorts of fun while you fish.",
    CONFIG_FINDFISH_ONOFF	  = "Find Fish",
    CONFIG_FINDFISH_INFO	  = "Turn on the 'Find Fish' ability when dressed to fish.",
    CONFIG_DRINKHEAVILY_ONOFF = "Drink Lager",
    CONFIG_DRINKHEAVILY_INFO  = "If enabled, drink #LAGER# whenever you're fishing and 'dry'.",
    CONFIG_FISHINGBUDDY_ONOFF = "Fishing Buddy",
    CONFIG_FISHINGBUDDY_INFO  = "Bring out that special buddy while you fish.",

    CONFIG_WATCHBOBBER_ONOFF  = "Watch bobber",
    CONFIG_WATCHBOBBER_INFO	  = "If enabled, #NAME# will not cast if the cursor is over the Fishing Bobber.",

    CONFIG_CONTESTS_ONOFF	  = "Fishing contest support",
    CONFIG_CONTESTS_INFO	   = "Display timers for fishing contests.",

    CONFIG_STVTIMER_ONOFF	  = "Extravaganza timer",
    CONFIG_STVTIMER_INFO	  = "If enabled, display a countdown timer for the start of the Fishing Extravaganza and a countdown of the time left.",
    CONFIG_STVPOOLSONLY_ONOFF = "Only cast in pools",
    CONFIG_STVPOOLSONLY_INFO  = "If enabled, easy cast will only be enabled if the cursor is over a fishing hole.",
    CONFIG_DERBYTIMER_ONOFF	  = "Derby timer",
    CONFIG_DERBYTIMER_INFO	  = "If enabled, display a countdown timer for the start of the Kalu'ak Fishing Derby and a countdown of the time left.",
    CONFIG_SHOWPOOLS_ONOFF	  = "Show pools",
    CONFIG_SHOWPOOLS_INFO	  = "If enabled, known pool locations will be displayed on the minimap.",

    CONFIG_OUTFITTER_TEXT	  = "Outfit skill bonus: %s#BR#Draznar's style score: %d ",

    CONFIG_CREATEMACRO_ONOFF  = "Create macro",
    CONFIG_CREATEMACRO_INFO   = "Create a macro that performs #NAME# functions.",
    CONFIG_PREVENTRECAST_ONOFF = "Prevent recast",
    CONFIG_PREVENTRECAST_INFO  = "Invoking the macro while fishing will not cast again. Lures will be reapplied if needed.",
    CONFIG_TOONMACRO_ONOFF  = "Per player",
    CONFIG_TOONMACRO_INFO   = "Create the fishing macro per player.",
    FBMACRO_HELP = "Execute the fishing macro",

    CLICKTOSWITCH_ONOFF		  = "Click to switch",
    CLICKTOSWITCH_INFO		  = "If enabled, a left click switches outfits, otherwise it brings up the Fishing Buddy window.",

    LEFTCLICKTODRAG = "Left-click to drag",
    RIGHTCLICKFORMENU = "Right-click for menu",

    MINIMAPBUTTONPLACEMENT = "Placement",
    MINIMAPBUTTONPLACEMENTTOOLTIP = "Allows you to move the #NAME# icon around the minimap.",
    MINIMAPBUTTONRADIUS = "Distance",
    MINIMAPBUTTONRADIUSTOOLTIP = "Determines how far from the minimap the #NAME# icon should be.",
    CONFIG_MINIMAPBUTTON_ONOFF = "Display minimap icon",
    CONFIG_MINIMAPBUTTON_INFO  = "Display a #NAME# icon on the minimap.",
    CONFIG_MINIMAPMOVE_ONOFF   = "Draggable",
    CONFIG_MINIMAPMOVE_INFO    = "If enabled, the minimap icon can be moved by dragging.",

    HIDEINWATCHER = "Display this fish in the watcher",
    CHECKSKILLWINDOW = "Check the Tradeskill window for Fishing (enable the 'Setup Skills' option).",
    UNLEARNEDSKILLWINDOW = "You have not learned the fishing skill for this zone.",

    -- messages
    COMPATIBLE_SWITCHER = "No compatible outfit switcher found.",
    TOOMANYFISHERMEN = "You have more than one easy cast mod installed.",
    FAILEDINIT = "Did not initialize correctly.",
    ADDFISHINFOMSG = "Adding '%s' to location %s.",
    NODATAMSG = "No fishing data available.",
    CLEANUP_NONEMSG = "No old settings remain.",
    CLEANUP_WILLMSG = "Old settings remaining for |c#RED#%s|r: %s.",
    CLEANUP_DONEMSG = "Old settings removed for |c#RED#%s|r: %s.",
    CLEANUP_NOOLDMSG = "There are no old settings for player |c#GREEN#%s|r.",
    NONEAVAILABLE_MSG = "None available",
    UPDATEDB_MSG = "Updated %d fish names.",

    MINIMUMSKILL = "Minimum skill: %d",
    NOTLINKABLE = "<Item is not linkable>",
    CAUGHTTHISMANY = "Caught:",
    CAUGHTTHISTOTAL = "Total:",
    FISHTYPES = "Fish types: %d",
    CAUGHT_IN_ZONES = "Caught in: %s",

    EXTRAVAGANZA = "Extravaganza",
    DERBY = "Derby",

    TIMETOGO = "%s starts in %d:%02d",
    TIMELEFT = "%s ends in %d:%02d",

    FATLADYSINGS = "|c#RED#%s is over|r (%d:%02d left)",

    -- Riggle Bassbait yells: We have a winner! NAME is the Master Angler!
    RIGGLE_BASSBAIT = "Riggle Bassbait yells: We have a winner! (%a+) is the Master Angler!",
    ELDER_CLEARWATER = "Elder Clearwater yells: (%a)+ has won the Kalu'ak Fishing Derby!",

    STVZONENAME = "Stranglethorn Vale",

    TOOLTIP_HINT = "Hint:",
    TOOLTIP_HINTSWITCH = "click to switch outfits",
    TOOLTIP_HINTTOGGLE = "click to show the #NAME# window.",

    -- Key binding support
    BINDING_NAME_FISHINGBUDDY_TOGGLE = "Toggle #NAME# Window",
    BINDING_NAME_FISHINGBUDDY_SWITCH = "Switch Fishing Outfit",
    BINDING_NAME_FISHINGBUDDY_GOFISHING = "Suit up and go fishing",

    BINDING_NAME_TOGGLEFISHINGBUDDY_LOC = "Toggle #NAME# Locations Pane",
    BINDING_NAME_TOGGLEFISHINGBUDDY_OPT = "Toggle #NAME# Options Pane",
    SWITCH_HELP = "|c#GREEN#/fb #SWITCH#|r#BRSPCS#swap outfits (if OutfitDisplayFrame or Outfitter is available)",
    WATCHER_HELP = "|c#GREEN#/fb #WATCHER#|r [|c#GREEN##WATCHER_LOCK#|r or |c#GREEN##WATCHER_UNLOCK#|r or |c#GREEN##RESET#|r]#BRSPCS#Unlock the watcher to move the window,#BRSPCS#lock to stop, reset to reset",
    CURRENT_HELP = "|c#GREEN#/fb #CURRENT# #RESET#|r#BRSPCS#Reset the fish caught during the current session.",
    UPDATEDB_HELP = "|c#GREEN#/fb #UPDATEDB# [#FORCE#]|r#BRSPCS#Try and find the names of all the fish we don't know already.#BRSPCS#An attempt is made to skip 'rare' fish that may disconnect you#BRSPCS#from the server -- use the '#FORCE#' option to override the check.",
    FISHINGMODE_HELP = "|c#GREEN#/fb #FISHINGMODE# [start|stop]|r#BRSPCS#Run #NAME# fishing actions.#BRSPCS#Useful in macros along with '/cast Fishing'.",
    TIMERRESET_HELP = "|c#GREEN#/fb #TIMER# #RESET#|r#BRSPCS#Reset the location of the Extravaganza timer by moving it to#BRSPCS#the middle of the screen.",
    PRE_HELP = "You can use |c#GREEN#/fishingbuddy|r or |c#GREEN#/fb|r for all commands#BR#|c#GREEN#/fb|r: by itself, toggle the Fishing Buddy window#BR#|c#GREEN#/fb #HELP#|r: display this message",
    POST_HELP = "You can bind both the window toggle and the outfit#BR#switch command to keys in the \"Key Bindings\" window.",

    FISHDATARESETHELP = "|c#GREEN#/fb #FISHDATA# #RESET#|r#BRSPCS#Reset the fish database. Must be invoked twice.",
    FISHDATARESET_MSG = "Fish location data has been reset.",
    FISHDATARESETMORE_MSG = "Run |c#GREEN#/fb #FISHDATA# #RESET#|r one more time to reset fish location data.",

    THANKS = "Thank you, everyone!",

    ROLE_TRANSLATE_ITIT = "Italian translation",
    ROLE_TRANSLATE_ZHTW = "Traditional Chinese translation",
    ROLE_TRANSLATE_ZHCN = "Simplified Chinese translation",
    ROLE_TRANSLATE_DEDE = "German translation",
    ROLE_TRANSLATE_FRFR = "French translation",
    ROLE_TRANSLATE_ESES = "Spanish translation",
    ROLE_TRANSLATE_KOKR = "Korean translation",
    ROLE_TRANSLATE_RURU = "Russian translation",
    ROLE_TRANSLATE_PTBR = "Brazilian Portuguese translation",
    ROLE_HELP_BUGS = "Bug fixes and coding help",
    ROLE_HELP_SUGGESTIONS = "Feature suggestions",
    ROLE_ADDON_AUTHORS = "AddOn Author of Note",
}
