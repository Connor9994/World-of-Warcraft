if (GAME_LOCALE or GetLocale()) ~= "deDE" then
  return
end

local L = WeakAuras.L

-- WeakAuras
--[[Translation missing --]]
L[ [=[ Filter formats: 'Name', 'Name-Realm', '-Realm'. 

Supports multiple entries, separated by commas
Can use \ to escape -.]=] ] = [=[ Filter formats: 'Name', 'Name-Realm', '-Realm'. 

Supports multiple entries, separated by commas
Can use \ to escape -.]=]
L["%s Overlay Color"] = "%s Overlay Farbe"
--[[Translation missing --]]
L["* Suffix"] = "* Suffix"
L["/wa help - Show this message"] = "/wa help - Zeige diese Nachricht"
L["/wa minimap - Toggle the minimap icon"] = "/wa minimap - Anzeige des Minimap-Icons umschalten"
--[[Translation missing --]]
L["/wa pprint - Show the results from the most recent profiling"] = "/wa pprint - Show the results from the most recent profiling"
--[[Translation missing --]]
L["/wa pstart - Start profiling. Optionally include a duration in seconds after which profiling automatically stops. To profile the next combat/encounter, pass a \"combat\" or \"encounter\" argument."] = "/wa pstart - Start profiling. Optionally include a duration in seconds after which profiling automatically stops. To profile the next combat/encounter, pass a \"combat\" or \"encounter\" argument."
--[[Translation missing --]]
L["/wa pstop - Finish profiling"] = "/wa pstop - Finish profiling"
L["/wa repair - Repair tool"] = "/wa repair - Reparierwerkzeug"
--[[Translation missing --]]
L["|cffeda55fLeft-Click|r to toggle showing the main window."] = "|cffeda55fLeft-Click|r to toggle showing the main window."
--[[Translation missing --]]
L["|cffeda55fMiddle-Click|r to toggle the minimap icon on or off."] = "|cffeda55fMiddle-Click|r to toggle the minimap icon on or off."
--[[Translation missing --]]
L["|cffeda55fRight-Click|r to toggle performance profiling window."] = "|cffeda55fRight-Click|r to toggle performance profiling window."
--[[Translation missing --]]
L["|cffeda55fShift-Click|r to pause addon execution."] = "|cffeda55fShift-Click|r to pause addon execution."
--[[Translation missing --]]
L["|cFFFF0000Not|r Item Bonus Id Equipped"] = "|cFFFF0000Not|r Item Bonus Id Equipped"
--[[Translation missing --]]
L["|cFFFF0000Not|r Player Name/Realm"] = "|cFFFF0000Not|r Player Name/Realm"
--[[Translation missing --]]
L["|cFFFF0000Not|r Spell Known"] = "|cFFFF0000Not|r Spell Known"
--[[Translation missing --]]
L["|cFFffcc00Extra Options:|r %s"] = "|cFFffcc00Extra Options:|r %s"
--[[Translation missing --]]
L["|cFFffcc00Extra Options:|r None"] = "|cFFffcc00Extra Options:|r None"
--[[Translation missing --]]
L[ [=[• |cff00ff00Player|r, |cff00ff00Target|r, |cff00ff00Focus|r, and |cff00ff00Pet|r correspond directly to those individual unitIDs.
• |cff00ff00Specific Unit|r lets you provide a specific valid unitID to watch.
|cffff0000Note|r: The game will not fire events for all valid unitIDs, making some untrackable by this trigger.
• |cffffff00Party|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arena|r, and |cffffff00Nameplate|r can match multiple corresponding unitIDs.
• |cffffff00Smart Group|r adjusts to your current group type, matching just the "player" when solo, "party" units (including "player") in a party or "raid" units in a raid.

|cffffff00*|r Yellow Unit settings will create clones for each matching unit while this trigger is providing Dynamic Info to the Aura.]=] ] = [=[• |cff00ff00Player|r, |cff00ff00Target|r, |cff00ff00Focus|r, and |cff00ff00Pet|r correspond directly to those individual unitIDs.
• |cff00ff00Specific Unit|r lets you provide a specific valid unitID to watch.
|cffff0000Note|r: The game will not fire events for all valid unitIDs, making some untrackable by this trigger.
• |cffffff00Party|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arena|r, and |cffffff00Nameplate|r can match multiple corresponding unitIDs.
• |cffffff00Smart Group|r adjusts to your current group type, matching just the "player" when solo, "party" units (including "player") in a party or "raid" units in a raid.

|cffffff00*|r Yellow Unit settings will create clones for each matching unit while this trigger is providing Dynamic Info to the Aura.]=]
--[[Translation missing --]]
L["1. Profession 1. Accessory"] = "1. Profession 1. Accessory"
--[[Translation missing --]]
L["1. Profession 2. Accessory"] = "1. Profession 2. Accessory"
--[[Translation missing --]]
L["1. Professsion Tool"] = "1. Professsion Tool"
L["10 Man Raid"] = "10-Mann-Schlachtzug"
--[[Translation missing --]]
L["10 Player Raid"] = "10 Player Raid"
L["10 Player Raid (Heroic)"] = "10 Spieler Schlachtzug (Heroisch)"
L["10 Player Raid (Normal)"] = "10 Spieler Schlachtzug (Normal)"
--[[Translation missing --]]
L["2. Profession 1. Accessory"] = "2. Profession 1. Accessory"
--[[Translation missing --]]
L["2. Profession 2. Accessory"] = "2. Profession 2. Accessory"
--[[Translation missing --]]
L["2. Professsion Tool"] = "2. Professsion Tool"
L["20 Man Raid"] = "20-Mann-Schlachtzug"
--[[Translation missing --]]
L["20 Player Raid"] = "20 Player Raid"
L["25 Man Raid"] = "25-Mann-Schlachtzug"
--[[Translation missing --]]
L["25 Player Raid"] = "25 Player Raid"
L["25 Player Raid (Heroic)"] = "25 Spieler Schlachtzug (Heroisch)"
L["25 Player Raid (Normal)"] = "25 Spieler Schlachtzug (Normal)"
L["40 Man Raid"] = "40-Mann-Schlachtzug"
L["40 Player Raid"] = "40 Spieler Schlachtzug"
L["5 Man Dungeon"] = "5-Mann-Dungeon"
--[[Translation missing --]]
L["A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."] = "A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."
--[[Translation missing --]]
L["Abbreviate"] = "Abbreviate"
--[[Translation missing --]]
L["AbbreviateLargeNumbers (Blizzard)"] = "AbbreviateLargeNumbers (Blizzard)"
--[[Translation missing --]]
L["AbbreviateNumbers (Blizzard)"] = "AbbreviateNumbers (Blizzard)"
L["Absorb"] = "Absorbieren"
L["Absorb Display"] = "Absorbanzeige"
--[[Translation missing --]]
L["Absorb Heal Display"] = "Absorb Heal Display"
L["Absorbed"] = "Absorbiert"
--[[Translation missing --]]
L["Action Button Glow"] = "Action Button Glow"
L["Action Usable"] = "Aktion nutzbar"
L["Actions"] = "Aktionen"
L["Active"] = "Aktiv"
L["Add"] = "Hinzufügen"
L["Add Missing Auras"] = "Fehlende Auren hinzufügen"
L["Additional Trigger Replacements"] = "Zusätzlicher Auslöser Ersatz"
--[[Translation missing --]]
L["Advanced Caster's Target Check"] = "Advanced Caster's Target Check"
L["Affected"] = "Betroffen"
L["Affected Unit Count"] = "Anzahl betroffener Einheiten"
--[[Translation missing --]]
L["Afk"] = "Afk"
L["Aggro"] = "Aggro (Bedrohung)"
L["Agility"] = "Beweglichkeit"
L["Ahn'Qiraj"] = "Ahn'Qiraj"
--[[Translation missing --]]
L["Alchemy Cast Bar"] = "Alchemy Cast Bar"
L["Alert Type"] = "Warnungstyp"
--[[Translation missing --]]
L["Algalon the Observer"] = "Algalon the Observer"
L["Alive"] = "am Leben"
L["All"] = "Alle"
--[[Translation missing --]]
L["All States table contains a non table at key: '%s'."] = "All States table contains a non table at key: '%s'."
L["All Triggers"] = "Alle Auslöser (UND)"
L["Alliance"] = "Allianz"
L["Allow partial matches"] = "Teilweise Übereinstimmungen erlauben"
L["Alpha"] = "Alpha"
L["Alternate Power"] = "Alternative Energie"
L["Always"] = "Immer"
L["Always active trigger"] = "Immer aktiver Auslöser"
L["Always include realm"] = "Immer Realm einschließen"
L["Always True"] = "Immer Richtig"
L["Amount"] = "Anzahl"
--[[Translation missing --]]
L["Anchoring"] = "Anchoring"
L["And Talent"] = "Und Talent"
L["Animations"] = "Animationen"
L["Anticlockwise"] = "Im Gegenuhrzeigersinn"
--[[Translation missing --]]
L["Anub'arak"] = "Anub'arak"
--[[Translation missing --]]
L["Anub'Rekhan"] = "Anub'Rekhan"
--[[Translation missing --]]
L["Any"] = "Any"
L["Any Triggers"] = "Ein Auslöser (ODER)"
--[[Translation missing --]]
L["AOE"] = "AOE"
--[[Translation missing --]]
L["Arcane Resistance"] = "Arcane Resistance"
--[[Translation missing --]]
L["Archavon the Stone Watcher"] = "Archavon the Stone Watcher"
--[[Translation missing --]]
L[ [=[Are you sure you want to run the |cffff0000EXPERIMENTAL|r repair tool?
This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=] ] = [=[Are you sure you want to run the |cffff0000EXPERIMENTAL|r repair tool?
This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=]
L["Arena"] = "Arena"
L["Armor (%)"] = "Rüstung (%)"
--[[Translation missing --]]
L["Armor against Target (%)"] = "Armor against Target (%)"
--[[Translation missing --]]
L["Armor Peneration Percent"] = "Armor Peneration Percent"
--[[Translation missing --]]
L["Armor Peneration Rating"] = "Armor Peneration Rating"
--[[Translation missing --]]
L["Armor Rating"] = "Armor Rating"
--[[Translation missing --]]
L["Array"] = "Array"
L["Ascending"] = "Aufsteigend"
--[[Translation missing --]]
L["Assembly of Iron"] = "Assembly of Iron"
L["Assigned Role"] = "Zugewiesene Rolle"
--[[Translation missing --]]
L["Assigned Role Icon"] = "Assigned Role Icon"
--[[Translation missing --]]
L["Assist"] = "Assist"
L["At Least One Enemy"] = "Zumindest ein Feind"
L["At missing Value"] = "Bei fehlendem Wert"
L["At Percent"] = "Bei Prozent"
L["At Value"] = "Bei Wert"
L["Attach to End"] = "am Ende befestigen"
L["Attach to Start"] = "am Anfang befestigen"
L["Attack Power"] = "Angriffskraft"
L["Attackable"] = "Angreifbar"
L["Attackable Target"] = "Angreifbares Ziel"
L["Aura"] = "Aura (Buff/Debuff)"
--[[Translation missing --]]
L["Aura '%s': %s"] = "Aura '%s': %s"
L["Aura Applied"] = "Aura angewandt (AURA_APPLIED)"
L["Aura Applied Dose"] = "Aura angewandt, Stapel erhöht (AURA_APPLIED_DOSE)"
L["Aura Broken"] = "Aura gebrochen, Nahkampf (AURA_BROKEN)"
L["Aura Broken Spell"] = "Aura gebrochen, Zauber (AURA_BROKEN_SPELL)"
--[[Translation missing --]]
L["Aura loaded"] = "Aura loaded"
L["Aura Name"] = "Auraname oder -ID"
L["Aura Names"] = "Aura Namen"
L["Aura Refresh"] = "Aura erneuert (AURA_REFRESH)"
L["Aura Removed"] = "Aura entfernt (AURA_REMOVED)"
L["Aura Removed Dose"] = "Aura entfernt, Stack verringert (AURA_REMOVED_DOSE)"
L["Aura Stack"] = "Aurastapel"
L["Aura Type"] = "Auratyp"
--[[Translation missing --]]
L["Aura Version: %s"] = "Aura Version: %s"
L["Aura(s) Found"] = "Auren gefunden"
L["Aura(s) Missing"] = "Auren fehlend"
L["Aura:"] = "Aura:"
L["Auras:"] = "Auren:"
--[[Translation missing --]]
L["Auriaya"] = "Auriaya"
--[[Translation missing --]]
L["Author Options"] = "Author Options"
--[[Translation missing --]]
L["Auto"] = "Auto"
--[[Translation missing --]]
L["Autocast Shine"] = "Autocast Shine"
L["Automatic"] = "Automatisch"
--[[Translation missing --]]
L["Automatic Length"] = "Automatic Length"
L["Automatic Rotation"] = "Automatische Rotation"
L["Avoidance (%)"] = "Vermeidung (%)"
--[[Translation missing --]]
L["Avoidance Rating"] = "Avoidance Rating"
--[[Translation missing --]]
L["Ayamiss the Hunter"] = "Ayamiss the Hunter"
L["Back and Forth"] = "Vor und zurück"
L["Background"] = "Hintergrund"
L["Background Color"] = "Hintergrundfarbe"
--[[Translation missing --]]
L["Baltharus the Warborn"] = "Baltharus the Warborn"
L["Bar Color"] = "Balkenfarbe"
--[[Translation missing --]]
L["Baron Geddon"] = "Baron Geddon"
--[[Translation missing --]]
L["Battle for Azeroth"] = "Battle for Azeroth"
L["Battle.net Whisper"] = "Battle.net-Flüster"
L["Battleground"] = "Schlachtfeld"
--[[Translation missing --]]
L["Battleguard Sartura"] = "Battleguard Sartura"
--[[Translation missing --]]
L["BG>Raid>Party>Say"] = "BG>Raid>Party>Say"
L["BG-System Alliance"] = "BG-System Allianz"
L["BG-System Horde"] = "BG-System Horde"
L["BG-System Neutral"] = "BG-System Neutral"
--[[Translation missing --]]
L["Big Number"] = "Big Number"
L["BigWigs Addon"] = "BigWigs-Addon"
L["BigWigs Message"] = "BigWigs-Nachricht"
--[[Translation missing --]]
L["BigWigs Stage"] = "BigWigs Stage"
L["BigWigs Timer"] = "BigWigs-Timer"
L["Black Wing Lair"] = "Pechschwingenhort"
--[[Translation missing --]]
L["Blacksmithing Cast Bar"] = "Blacksmithing Cast Bar"
--[[Translation missing --]]
L["Blizzard (2h | 3m | 10s | 2.4)"] = "Blizzard (2h | 3m | 10s | 2.4)"
L["Blizzard Combat Text"] = "Kampflog"
--[[Translation missing --]]
L["Blizzard Cooldown Reduction"] = "Blizzard Cooldown Reduction"
L["Block"] = "Blocken"
--[[Translation missing --]]
L["Block (%)"] = "Block (%)"
--[[Translation missing --]]
L["Block against Target (%)"] = "Block against Target (%)"
--[[Translation missing --]]
L["Block Value"] = "Block Value"
L["Blocked"] = "Geblockt"
--[[Translation missing --]]
L["Blood"] = "Blood"
--[[Translation missing --]]
L["Blood Prince Council"] = "Blood Prince Council"
--[[Translation missing --]]
L["Blood Rune #1"] = "Blood Rune #1"
--[[Translation missing --]]
L["Blood Rune #2"] = "Blood Rune #2"
--[[Translation missing --]]
L["Bloodlord Mandokir"] = "Bloodlord Mandokir"
--[[Translation missing --]]
L["Blood-Queen Lana'thel"] = "Blood-Queen Lana'thel"
L["Border"] = "Rahmen"
L["Boss"] = "Boss"
L["Boss Emote"] = "Bossemote"
L["Boss Whisper"] = "Bossflüstern"
L["Bottom"] = "Unten"
L["Bottom Left"] = "Unten Links"
L["Bottom Right"] = "Unten Rechts"
L["Bottom to Top"] = "Unten -> Oben"
L["Bounce"] = "Hüpfen"
L["Bounce with Decay"] = "Abklingendes Hüpfen"
--[[Translation missing --]]
L["Broodlord Lashlayer"] = "Broodlord Lashlayer"
L["Buff"] = "Buff"
L["Buff/Debuff"] = "Stärkungs-/Schwächungszauber"
L["Buffed/Debuffed"] = "Buffed/Debuffed"
--[[Translation missing --]]
L["Burning Crusade"] = "Burning Crusade"
--[[Translation missing --]]
L["Buru the Gorger"] = "Buru the Gorger"
--[[Translation missing --]]
L["Callback function"] = "Callback function"
L["Can be used for e.g. checking if \"boss1target\" is the same as \"player\"."] = "Kann genutzt werden um z.B zu checken ob \"Ziel\" dieselbe Einheit ist wie \"Spieler\""
L["Cancel"] = "Abbrechen"
--[[Translation missing --]]
L[ [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
--[[Translation missing --]]
L["Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."] = "Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."
L["Cast"] = "Zauberwirken"
L["Cast Bar"] = "Zauberleiste"
L["Cast Failed"] = "Zauber fehlgeschlagen (CAST_FAILED)"
L["Cast Start"] = "Zauber gestartet (CAST_START)"
L["Cast Success"] = "Zauber gelungen (CAST_SUCCESS)"
L["Cast Type"] = "Zaubertyp"
L["Caster"] = "Zauberwirker"
--[[Translation missing --]]
L["Caster Name"] = "Caster Name"
--[[Translation missing --]]
L["Caster Realm"] = "Caster Realm"
--[[Translation missing --]]
L["Caster Unit"] = "Caster Unit"
--[[Translation missing --]]
L["Caster's Target"] = "Caster's Target"
--[[Translation missing --]]
L["Cataclysm"] = "Cataclysm"
--[[Translation missing --]]
L["Ceil"] = "Ceil"
L["Center"] = "Mitte"
--[[Translation missing --]]
L["Center, then alternating bottom and top"] = "Center, then alternating bottom and top"
--[[Translation missing --]]
L["Center, then alternating left and right"] = "Center, then alternating left and right"
--[[Translation missing --]]
L["Center, then alternating right and left"] = "Center, then alternating right and left"
--[[Translation missing --]]
L["Center, then alternating top and bottom"] = "Center, then alternating top and bottom"
L["Centered Horizontal"] = "Horizontal-Zentriert"
--[[Translation missing --]]
L["Centered Horizontal, then Centered Vertical"] = "Centered Horizontal, then Centered Vertical"
--[[Translation missing --]]
L["Centered Horizontal, then Down"] = "Centered Horizontal, then Down"
--[[Translation missing --]]
L["Centered Horizontal, then Up"] = "Centered Horizontal, then Up"
L["Centered Vertical"] = "Vertikal zentriert"
--[[Translation missing --]]
L["Centered Vertical, then Centered Horizontal"] = "Centered Vertical, then Centered Horizontal"
--[[Translation missing --]]
L["Centered Vertical, then Left"] = "Centered Vertical, then Left"
--[[Translation missing --]]
L["Centered Vertical, then Right"] = "Centered Vertical, then Right"
L["Changed"] = "Verändert"
L["Channel"] = "Chatkanal"
L["Channel (Spell)"] = "Kanalisieren (Zauber)"
L["Character Stats"] = "Charakterwerte"
L["Character Type"] = "Charaktertyp"
L["Charge gained/lost"] = "Aufladung erhalten/verloren"
--[[Translation missing --]]
L["Charged Combo Point (1)"] = "Charged Combo Point (1)"
--[[Translation missing --]]
L["Charged Combo Point (2)"] = "Charged Combo Point (2)"
--[[Translation missing --]]
L["Charged Combo Point (3)"] = "Charged Combo Point (3)"
--[[Translation missing --]]
L["Charged Combo Point (4)"] = "Charged Combo Point (4)"
--[[Translation missing --]]
L["Charged Combo Point 1"] = "Charged Combo Point 1"
--[[Translation missing --]]
L["Charged Combo Point 2"] = "Charged Combo Point 2"
--[[Translation missing --]]
L["Charged Combo Point 3"] = "Charged Combo Point 3"
--[[Translation missing --]]
L["Charged Combo Point 4"] = "Charged Combo Point 4"
L["Charges"] = "Aufladungen"
--[[Translation missing --]]
L["Charges Changed Event"] = "Charges Changed Event"
--[[Translation missing --]]
L["Charging"] = "Charging"
L["Chat Frame"] = "Chatfenster"
L["Chat Message"] = "Chatnachricht"
--[[Translation missing --]]
L["Check if a single talent match a Rank"] = "Check if a single talent match a Rank"
--[[Translation missing --]]
L["Check nameplate's target every 0.2s"] = "Check nameplate's target every 0.2s"
--[[Translation missing --]]
L["Chromaggus"] = "Chromaggus"
L["Circle"] = "Kreis"
--[[Translation missing --]]
L["Clamp"] = "Clamp"
L["Class"] = "Klasse"
L["Class and Specialization"] = "Klasse und Spezialisierung"
--[[Translation missing --]]
L["Classic"] = "Classic"
L["Classification"] = "Klassifizierung"
L["Clockwise"] = "Im Uhrzeigersinn"
L["Clone per Event"] = "Klonen pro Event"
L["Clone per Match"] = "Klonen pro Treffer"
L["Color"] = "Farbe"
--[[Translation missing --]]
L["Color Animation"] = "Color Animation"
L["Combat Log"] = "Kampflog"
--[[Translation missing --]]
L[ [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=] ] = [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=]
--[[Translation missing --]]
L["Condition Custom Text"] = "Condition Custom Text"
L["Conditions"] = "Bedingungen"
L["Contains"] = "Enthält"
--[[Translation missing --]]
L["Continuously update Movement Speed"] = "Continuously update Movement Speed"
L["Cooldown"] = "Abklingzeit"
--[[Translation missing --]]
L["Cooldown bars show time before an ability is ready to be use, BigWigs prefix them with '~'"] = "Cooldown bars show time before an ability is ready to be use, BigWigs prefix them with '~'"
L["Cooldown Progress (Item)"] = "Abklingzeit (Gegenstand)"
--[[Translation missing --]]
L["Cooldown Progress (Slot)"] = "Cooldown Progress (Slot)"
--[[Translation missing --]]
L["Cooldown Ready Event"] = "Cooldown Ready Event"
--[[Translation missing --]]
L["Cooldown Ready Event (Item)"] = "Cooldown Ready Event (Item)"
--[[Translation missing --]]
L["Cooldown Ready Event (Slot)"] = "Cooldown Ready Event (Slot)"
--[[Translation missing --]]
L["Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."] = "Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."
--[[Translation missing --]]
L["Cooldown/Charges/Count"] = "Cooldown/Charges/Count"
--[[Translation missing --]]
L["Could not load WeakAuras Archive, the addon is %s"] = "Could not load WeakAuras Archive, the addon is %s"
L["Count"] = "Anzahl"
L["Counter Clockwise"] = "Gegen den Uhrzeigersinn"
L["Create"] = "Erstellen"
L["Critical"] = "Kritisch"
--[[Translation missing --]]
L["Critical (%)"] = "Critical (%)"
--[[Translation missing --]]
L["Critical Rating"] = "Critical Rating"
L["Crowd Controlled"] = "Kontrollverlust"
L["Crushing"] = "Zerschmettern"
--[[Translation missing --]]
L["C'thun"] = "C'thun"
--[[Translation missing --]]
L["Current Essence"] = "Current Essence"
--[[Translation missing --]]
L["Current Experience"] = "Current Experience"
--[[Translation missing --]]
L["Current Movement Speed (%)"] = "Current Movement Speed (%)"
--[[Translation missing --]]
L["Current Stage"] = "Current Stage"
--[[Translation missing --]]
L[ [=[Current Zone Group
]=] ] = [=[Current Zone Group
]=]
L[ [=[Current Zone
]=] ] = "Aktuelle Zone"
L["Curse"] = "Fluch"
L["Custom"] = "Benutzerdefiniert"
--[[Translation missing --]]
L["Custom Action"] = "Custom Action"
--[[Translation missing --]]
L["Custom Anchor"] = "Custom Anchor"
--[[Translation missing --]]
L["Custom Check"] = "Custom Check"
--[[Translation missing --]]
L["Custom Color"] = "Custom Color"
--[[Translation missing --]]
L["Custom Condition Code"] = "Custom Condition Code"
--[[Translation missing --]]
L["Custom Configuration"] = "Custom Configuration"
--[[Translation missing --]]
L["Custom Fade Animation"] = "Custom Fade Animation"
L["Custom Function"] = "Benutzerdefiniert"
--[[Translation missing --]]
L["Custom Grow"] = "Custom Grow"
--[[Translation missing --]]
L["Custom Sort"] = "Custom Sort"
--[[Translation missing --]]
L["Custom Text Function"] = "Custom Text Function"
--[[Translation missing --]]
L["Custom Trigger Combination"] = "Custom Trigger Combination"
--[[Translation missing --]]
L["Custom Variables"] = "Custom Variables"
L["Damage"] = "Schaden (DAMAGE)"
L["Damage Shield"] = "Schadensschild (DAMAGE_SHIELD)"
L["Damage Shield Missed"] = "Schadensschild verfehlt (DAMAGE_SHIELD_MISSED)"
L["Damage Split"] = "Schadensteilung (DAMAGE_SPLIT)"
L["DBM Announce"] = "DBM Meldung"
--[[Translation missing --]]
L["DBM Stage"] = "DBM Stage"
L["DBM Timer"] = "DBM-Timer"
--[[Translation missing --]]
L["Death"] = "Death"
L["Death Knight Rune"] = "Todesritter-Rune"
--[[Translation missing --]]
L["Deathbringer Saurfang"] = "Deathbringer Saurfang"
L["Debuff"] = "Debuff"
L["Debuff Class"] = "Schwächungszauber Klasse"
L["Debuff Class Icon"] = "Schwächungszauber Klassensymbol"
L["Debuff Type"] = "Schwächungszaubertyp"
--[[Translation missing --]]
L["Debug Log contains more than 1000 entries"] = "Debug Log contains more than 1000 entries"
--[[Translation missing --]]
L["Debug Logging enabled"] = "Debug Logging enabled"
--[[Translation missing --]]
L["Debug Logging enabled for '%s'"] = "Debug Logging enabled for '%s'"
L["Defense"] = "Verteidigung"
L["Deflect"] = "Umlenken"
L["Desaturate"] = "Entsättigen"
L["Desaturate Background"] = "Hintergrund entsättigen"
L["Desaturate Foreground"] = "Vordergrund entsättigen"
L["Descending"] = "Absteigend"
L["Description"] = "Beschreibung"
L["Dest Raid Mark"] = "Zielmarkierung"
--[[Translation missing --]]
L["Destination Affiliation"] = "Destination Affiliation"
--[[Translation missing --]]
L["Destination GUID"] = "Destination GUID"
L["Destination Name"] = "Zielname"
--[[Translation missing --]]
L["Destination NPC Id"] = "Destination NPC Id"
--[[Translation missing --]]
L["Destination Object Type"] = "Destination Object Type"
--[[Translation missing --]]
L["Destination Reaction"] = "Destination Reaction"
L["Destination Unit"] = "Zieleinheit"
--[[Translation missing --]]
L["Destination unit's raid mark index"] = "Destination unit's raid mark index"
--[[Translation missing --]]
L["Destination unit's raid mark texture"] = "Destination unit's raid mark texture"
--[[Translation missing --]]
L["Difficulty"] = "Difficulty"
--[[Translation missing --]]
L["Disable Spell Known Check"] = "Disable Spell Known Check"
--[[Translation missing --]]
L["Disabled Spell Known Check"] = "Disabled Spell Known Check"
L["Disease"] = "Krankheit"
L["Dispel"] = "Bannen (DISPEL)"
L["Dispel Failed"] = "Bannen fehlgeschlagen (DISPEL_FAILED)"
L["Display"] = "Anzeige"
L["Distance"] = "Distanz"
--[[Translation missing --]]
L["Do Not Disturb"] = "Do Not Disturb"
L["Dodge"] = "Ausweichen (DODGE)"
L["Dodge (%)"] = "Ausweichen (%)"
--[[Translation missing --]]
L["Dodge Rating"] = "Dodge Rating"
L["Down"] = "Runter"
--[[Translation missing --]]
L["Down, then Centered Horizontal"] = "Down, then Centered Horizontal"
L["Down, then Left"] = "Runter, dann links"
L["Down, then Right"] = "Runter, dann rechts"
--[[Translation missing --]]
L["Dragonflight"] = "Dragonflight"
--[[Translation missing --]]
L["Dragonriding"] = "Dragonriding"
L["Drain"] = "Saugen (DRAIN)"
L["Dropdown Menu"] = "Auswahlmenü"
--[[Translation missing --]]
L["Dumping table"] = "Dumping table"
--[[Translation missing --]]
L["Dungeon (Heroic)"] = "Dungeon (Heroic)"
--[[Translation missing --]]
L["Dungeon (Mythic)"] = "Dungeon (Mythic)"
--[[Translation missing --]]
L["Dungeon (Mythic+)"] = "Dungeon (Mythic+)"
--[[Translation missing --]]
L["Dungeon (Normal)"] = "Dungeon (Normal)"
--[[Translation missing --]]
L["Dungeon (Timewalking)"] = "Dungeon (Timewalking)"
L["Dungeons"] = "Instanzen"
L["Durability Damage"] = "Haltbarkeitsschaden (DURABILITY_DAMAGE)"
L["Durability Damage All"] = "Haltbarkeitsschaden, Alle (DURABILITY_DAMAGE_ALL)"
--[[Translation missing --]]
L["Duration Function"] = "Duration Function"
--[[Translation missing --]]
L["Duration Function (fallback state)"] = "Duration Function (fallback state)"
--[[Translation missing --]]
L["Dynamic Information"] = "Dynamic Information"
--[[Translation missing --]]
L["Ease In"] = "Ease In"
--[[Translation missing --]]
L["Ease In and Out"] = "Ease In and Out"
--[[Translation missing --]]
L["Ease Out"] = "Ease Out"
--[[Translation missing --]]
L["Ebonroc"] = "Ebonroc"
L["Edge"] = "Ecke"
--[[Translation missing --]]
L["Edge of Madness"] = "Edge of Madness"
--[[Translation missing --]]
L["Elide"] = "Elide"
L["Elite"] = "Elite"
--[[Translation missing --]]
L["Emalon the Storm Watcher"] = "Emalon the Storm Watcher"
L["Emote"] = "Emote"
--[[Translation missing --]]
L["Empower Cast End"] = "Empower Cast End"
--[[Translation missing --]]
L["Empower Cast Interrupt"] = "Empower Cast Interrupt"
--[[Translation missing --]]
L["Empower Cast Start"] = "Empower Cast Start"
--[[Translation missing --]]
L["Empowered"] = "Empowered"
--[[Translation missing --]]
L["Empowered 1"] = "Empowered 1"
--[[Translation missing --]]
L["Empowered 2"] = "Empowered 2"
--[[Translation missing --]]
L["Empowered 3"] = "Empowered 3"
--[[Translation missing --]]
L["Empowered 4"] = "Empowered 4"
--[[Translation missing --]]
L["Empowered 5"] = "Empowered 5"
--[[Translation missing --]]
L["Empowered Cast Fully Charged"] = "Empowered Cast Fully Charged"
--[[Translation missing --]]
L["Empowered Fully Charged"] = "Empowered Fully Charged"
L["Empty"] = "Leer"
--[[Translation missing --]]
L["Enables (incorrect) round down of seconds, which was the previous default behavior."] = "Enables (incorrect) round down of seconds, which was the previous default behavior."
--[[Translation missing --]]
L["Enchant Applied"] = "Enchant Applied"
--[[Translation missing --]]
L["Enchant Found"] = "Enchant Found"
--[[Translation missing --]]
L["Enchant Missing"] = "Enchant Missing"
--[[Translation missing --]]
L["Enchant Name or ID"] = "Enchant Name or ID"
--[[Translation missing --]]
L["Enchant Removed"] = "Enchant Removed"
--[[Translation missing --]]
L["Enchanted"] = "Enchanted"
--[[Translation missing --]]
L["Enchanting Cast Bar"] = "Enchanting Cast Bar"
--[[Translation missing --]]
L["Encounter ID(s)"] = "Encounter ID(s)"
L["Energize"] = "Aufladen (ENERGIZE)"
L["Enrage"] = "Wut"
--[[Translation missing --]]
L["Enter static or relative values with %"] = "Enter static or relative values with %"
L["Entering"] = "Betreten"
L["Entering/Leaving Combat"] = "Kampf Betreten/Verlassen"
--[[Translation missing --]]
L["Entering/Leaving Encounter"] = "Entering/Leaving Encounter"
L["Entry Order"] = "Eintragsreihenfolge"
L["Environment Type"] = "Umgebungstyp"
L["Environmental"] = "Umgebung (ENVIRONMENTAL)"
L["Equipment Set"] = "Ausrüstungsset"
L["Equipment Set Equipped"] = "Angelegtes Ausrüstungsset"
L["Equipment Slot"] = "Ausrüstungsplatz"
L["Equipped"] = "Angelegt"
L["Error"] = "Fehler"
--[[Translation missing --]]
L[ [=[Error '%s' created a secure clone. We advise deleting the aura. For more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Error '%s' created a secure clone. We advise deleting the aura. For more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
--[[Translation missing --]]
L["Error decoding."] = "Error decoding."
--[[Translation missing --]]
L["Error decompressing"] = "Error decompressing"
--[[Translation missing --]]
L["Error decompressing. This doesn't look like a WeakAuras import."] = "Error decompressing. This doesn't look like a WeakAuras import."
--[[Translation missing --]]
L["Error deserializing"] = "Error deserializing"
L["Error Frame"] = "Fehlerfenster"
--[[Translation missing --]]
L["ERROR in '%s' unknown or incompatible sub element type '%s'"] = "ERROR in '%s' unknown or incompatible sub element type '%s'"
--[[Translation missing --]]
L["Error not receiving display information from %s"] = "Error not receiving display information from %s"
--[[Translation missing --]]
L["Essence"] = "Essence"
--[[Translation missing --]]
L["Essence #1"] = "Essence #1"
--[[Translation missing --]]
L["Essence #2"] = "Essence #2"
--[[Translation missing --]]
L["Essence #3"] = "Essence #3"
--[[Translation missing --]]
L["Essence #4"] = "Essence #4"
--[[Translation missing --]]
L["Essence #5"] = "Essence #5"
--[[Translation missing --]]
L["Essence #6"] = "Essence #6"
L["Evade"] = "Entkommen (EVADE)"
L["Event"] = "Ereignis"
L["Event(s)"] = "Ereignis(se)"
L["Every Frame"] = "Bei jedem OnUpdate"
--[[Translation missing --]]
L["Every Frame (High CPU usage)"] = "Every Frame (High CPU usage)"
--[[Translation missing --]]
L["Evoker Essence"] = "Evoker Essence"
--[[Translation missing --]]
L["Experience (%)"] = "Experience (%)"
--[[Translation missing --]]
L["Expertise Bonus"] = "Expertise Bonus"
--[[Translation missing --]]
L["Expertise Rating"] = "Expertise Rating"
--[[Translation missing --]]
L["Extend Outside"] = "Extend Outside"
L["Extra Amount"] = "Extrabetrag"
L["Extra Attacks"] = "Extraangriffe (EXTRA_ATTACKS)"
L["Extra Spell Name"] = "Extra-Zaubername"
L["Faction"] = "Fraktion"
--[[Translation missing --]]
L["Faction Champions"] = "Faction Champions"
L["Faction Name"] = "Fraktionsname"
L["Faction Reputation"] = "Fraktionsruf"
--[[Translation missing --]]
L["Fade Animation"] = "Fade Animation"
L["Fade In"] = "Einblenden"
L["Fade Out"] = "Ausblenden"
L["Fail Alert"] = "Warnung für Fehlschlag"
--[[Translation missing --]]
L["Fallback"] = "Fallback"
--[[Translation missing --]]
L["Fallback Icon"] = "Fallback Icon"
L["False"] = "Nicht Zutrifft"
--[[Translation missing --]]
L["Fankriss the Unyielding"] = "Fankriss the Unyielding"
--[[Translation missing --]]
L["Festergut"] = "Festergut"
--[[Translation missing --]]
L["Fetch Legendary Power"] = "Fetch Legendary Power"
--[[Translation missing --]]
L["Fetches the name and icon of the Legendary Power that matches this bonus id."] = "Fetches the name and icon of the Legendary Power that matches this bonus id."
--[[Translation missing --]]
L["Filter messages with format <message>"] = "Filter messages with format <message>"
L["Fire Resistance"] = "Feuerwiderstand"
--[[Translation missing --]]
L["Firemaw"] = "Firemaw"
--[[Translation missing --]]
L["First"] = "First"
--[[Translation missing --]]
L["First Value of Tooltip Text"] = "First Value of Tooltip Text"
L["Fixed"] = "Fixiert"
--[[Translation missing --]]
L["Fixed Names"] = "Fixed Names"
L["Fixed Size"] = "Feste Größe"
--[[Translation missing --]]
L["Flame Leviathan"] = "Flame Leviathan"
--[[Translation missing --]]
L["Flamegor"] = "Flamegor"
L["Flash"] = "Aufblitzen"
L["Flex Raid"] = "Flexibler Schlachtzug"
L["Flip"] = "Umdrehen"
L["Floor"] = "Flur"
L["Focus"] = "Fokus"
--[[Translation missing --]]
L["Font"] = "Font"
L["Font Size"] = "Schriftgröße"
--[[Translation missing --]]
L["Forbidden function or table: %s"] = "Forbidden function or table: %s"
L["Foreground"] = "Vordergrund"
L["Foreground Color"] = "Vordergrundfarbe"
L["Form"] = "Form"
--[[Translation missing --]]
L["Format"] = "Format"
--[[Translation missing --]]
L["Formats |cFFFF0000%unit|r"] = "Formats |cFFFF0000%unit|r"
--[[Translation missing --]]
L["Formats Player's |cFFFF0000%guid|r"] = "Formats Player's |cFFFF0000%guid|r"
L["Forward"] = "Vorwärts"
--[[Translation missing --]]
L["Forward, Reverse Loop"] = "Forward, Reverse Loop"
--[[Translation missing --]]
L["Frame Selector"] = "Frame Selector"
L["Frequency"] = "Häufigkeit"
--[[Translation missing --]]
L["Freya"] = "Freya"
L["Friendly"] = "Freundlich"
L["Friendly Fire"] = "Eigenbeschuss"
--[[Translation missing --]]
L["Friendship Max Rank"] = "Friendship Max Rank"
--[[Translation missing --]]
L["Friendship Rank"] = "Friendship Rank"
--[[Translation missing --]]
L["Frost"] = "Frost"
L["Frost Resistance"] = "Frostwiderstand"
--[[Translation missing --]]
L["Frost Rune #1"] = "Frost Rune #1"
--[[Translation missing --]]
L["Frost Rune #2"] = "Frost Rune #2"
L["Full"] = "Voll"
--[[Translation missing --]]
L["Full Bar"] = "Full Bar"
L["Full/Empty"] = "Voll/Leer"
--[[Translation missing --]]
L["Gahz'ranka"] = "Gahz'ranka"
L["Gained"] = "Erhalten "
--[[Translation missing --]]
L["Garr"] = "Garr"
--[[Translation missing --]]
L["Gehennas"] = "Gehennas"
--[[Translation missing --]]
L["General Rajaxx"] = "General Rajaxx"
--[[Translation missing --]]
L["General Vezax"] = "General Vezax"
--[[Translation missing --]]
L["General Zarithrian"] = "General Zarithrian"
L["Glancing"] = "Gestreift (GLANCING)"
L["Global Cooldown"] = "Globale Abklingzeit"
L["Glow"] = "Leuchten"
--[[Translation missing --]]
L["Glow External Element"] = "Glow External Element"
--[[Translation missing --]]
L["Gluth"] = "Gluth"
--[[Translation missing --]]
L["Golemagg the Incinerator"] = "Golemagg the Incinerator"
--[[Translation missing --]]
L["Gothik the Harvester"] = "Gothik the Harvester"
L["Gradient"] = "Gradient"
--[[Translation missing --]]
L["Gradient Color"] = "Gradient Color"
--[[Translation missing --]]
L["Gradient Enabled"] = "Gradient Enabled"
--[[Translation missing --]]
L["Gradient Orientation"] = "Gradient Orientation"
L["Gradient Pulse"] = "Gradient Pulse"
--[[Translation missing --]]
L["Grand Widow Faerlina"] = "Grand Widow Faerlina"
--[[Translation missing --]]
L["Grid"] = "Grid"
--[[Translation missing --]]
L["Grobbulus"] = "Grobbulus"
L["Group"] = "Gruppe"
L["Group Arrangement"] = "Gruppenanordnung"
--[[Translation missing --]]
L["Group Finder Eye"] = "Group Finder Eye"
--[[Translation missing --]]
L["Group Finder Eye Initial"] = "Group Finder Eye Initial"
--[[Translation missing --]]
L["Group Finder Found"] = "Group Finder Found"
--[[Translation missing --]]
L["Group Finder Found Initial"] = "Group Finder Found Initial"
--[[Translation missing --]]
L["Group Finder Mouse Over"] = "Group Finder Mouse Over"
--[[Translation missing --]]
L["Group Finder Poke"] = "Group Finder Poke"
--[[Translation missing --]]
L["Group Finder Poke End"] = "Group Finder Poke End"
--[[Translation missing --]]
L["Group Finder Poke Initial"] = "Group Finder Poke Initial"
--[[Translation missing --]]
L["Group Leader/Assist"] = "Group Leader/Assist"
--[[Translation missing --]]
L["Group Type"] = "Group Type"
L["Grow"] = "Wachsen"
L["GTFO Alert"] = "GTFO-Warnung"
L["Guardian"] = "Wächter"
L["Guild"] = "Gilde"
--[[Translation missing --]]
L["Gunship Battle"] = "Gunship Battle"
--[[Translation missing --]]
L["Hakkar"] = "Hakkar"
--[[Translation missing --]]
L["Halion"] = "Halion"
L["Has Target"] = "Hat Ziel"
L["Has Vehicle UI"] = "Hat Fahrzeug-UI"
L["HasPet"] = "mit aktivem Begleiter"
L["Haste (%)"] = "Tempo (%)"
L["Haste Rating"] = "Tempowertung"
L["Heal"] = "Heilen"
--[[Translation missing --]]
L["Heal Absorb"] = "Heal Absorb"
--[[Translation missing --]]
L["Heal Absorbed"] = "Heal Absorbed"
L["Health"] = "Lebenspunkte"
L["Health (%)"] = "Lebenspunkte (%)"
--[[Translation missing --]]
L["Health Deficit"] = "Health Deficit"
--[[Translation missing --]]
L["Heigan the Unclean"] = "Heigan the Unclean"
L["Height"] = "Höhe"
--[[Translation missing --]]
L["Heroic Party"] = "Heroic Party"
L["Hide"] = "Verbergen"
--[[Translation missing --]]
L["Hide 0 cooldowns"] = "Hide 0 cooldowns"
--[[Translation missing --]]
L["Hide Timer Text"] = "Hide Timer Text"
L["High Damage"] = "Hoher Schaden"
--[[Translation missing --]]
L["High Priest Thekal"] = "High Priest Thekal"
--[[Translation missing --]]
L["High Priest Venoxis"] = "High Priest Venoxis"
--[[Translation missing --]]
L["High Priestess Arlokk"] = "High Priestess Arlokk"
--[[Translation missing --]]
L["High Priestess Jeklik"] = "High Priestess Jeklik"
--[[Translation missing --]]
L["High Priestess Mar'li"] = "High Priestess Mar'li"
L["Higher Than Tank"] = "Höher als der Tank"
--[[Translation missing --]]
L["Hit (%)"] = "Hit (%)"
--[[Translation missing --]]
L["Hit Rating"] = "Hit Rating"
--[[Translation missing --]]
L["Hodir"] = "Hodir"
L["Holy Resistance"] = "Heiligwiderstand"
L["Horde"] = "Horde"
--[[Translation missing --]]
L["Horizontal"] = "Horizontal"
L["Hostile"] = "Feindlich"
L["Hostility"] = "Gesinnung"
L["Humanoid"] = "Humanoid"
--[[Translation missing --]]
L["Hybrid"] = "Hybrid"
--[[Translation missing --]]
L["Icecrown Citadel"] = "Icecrown Citadel"
L["Icon"] = "Symbol"
--[[Translation missing --]]
L["Icon Function"] = "Icon Function"
--[[Translation missing --]]
L["Icon Function (fallback state)"] = "Icon Function (fallback state)"
--[[Translation missing --]]
L["Id"] = "Id"
--[[Translation missing --]]
L["If you require additional assistance, please open a ticket on GitHub or visit our Discord at https://discord.gg/weakauras!"] = "If you require additional assistance, please open a ticket on GitHub or visit our Discord at https://discord.gg/weakauras!"
--[[Translation missing --]]
L["Ignis the Furnace Master"] = "Ignis the Furnace Master"
--[[Translation missing --]]
L["Ignore Dead"] = "Ignore Dead"
--[[Translation missing --]]
L["Ignore Disconnected"] = "Ignore Disconnected"
L["Ignore Rune CD"] = "Runen-CD ignorieren"
--[[Translation missing --]]
L["Ignore Rune CDs"] = "Ignore Rune CDs"
--[[Translation missing --]]
L["Ignore Self"] = "Ignore Self"
L["Immune"] = "Immun (IMMUNE)"
L["Important"] = "Wichtig"
--[[Translation missing --]]
L["Importing will start after combat ends."] = "Importing will start after combat ends."
L["In Combat"] = "im Kampf"
L["In Encounter"] = "im Bosskampf"
L["In Group"] = "In Gruppe"
--[[Translation missing --]]
L["In Party"] = "In Party"
L["In Pet Battle"] = "im Haustierkampf"
L["In Raid"] = "Im Schlachtzug"
L["In Vehicle"] = "im Fahrzeug"
L["Include Bank"] = "Bank einbeziehen"
L["Include Charges"] = "Aufladungen einbeziehen"
--[[Translation missing --]]
L["Include Death Runes"] = "Include Death Runes"
--[[Translation missing --]]
L["Include Pets"] = "Include Pets"
L["Incoming Heal"] = "Eingehende Heilung"
--[[Translation missing --]]
L["Increase Precision Below"] = "Increase Precision Below"
--[[Translation missing --]]
L["Increases by one per stage or intermission."] = "Increases by one per stage or intermission."
--[[Translation missing --]]
L["Information"] = "Information"
L["Inherited"] = "Vererbt"
L["Instakill"] = "Sofortiger Tod (INSTAKILL)"
--[[Translation missing --]]
L["Install the addons BugSack and BugGrabber for detailed error logs."] = "Install the addons BugSack and BugGrabber for detailed error logs."
L["Instance"] = "Instanz"
L["Instance Difficulty"] = "Instanzschwierigkeit"
--[[Translation missing --]]
L["Instance Size Type"] = "Instance Size Type"
L["Instance Type"] = "Instanztyp"
--[[Translation missing --]]
L["Instructor Razuvious"] = "Instructor Razuvious"
--[[Translation missing --]]
L["Insufficient Resources"] = "Insufficient Resources"
L["Intellect"] = "Intelligenz"
L["Interrupt"] = "Unterbrechen (INTERRUPT)"
--[[Translation missing --]]
L["Interrupt School"] = "Interrupt School"
--[[Translation missing --]]
L["Interrupted School Text"] = "Interrupted School Text"
L["Interruptible"] = "Unterbrechbar"
L["Inverse"] = "Invertieren"
--[[Translation missing --]]
L["Inverse Pet Behavior"] = "Inverse Pet Behavior"
--[[Translation missing --]]
L["Is Away from Keyboard"] = "Is Away from Keyboard"
--[[Translation missing --]]
L["Is Death Rune"] = "Is Death Rune"
L["Is Exactly"] = "Strikter Vergleich"
L["Is Moving"] = "am Bewegen"
L["Is Off Hand"] = "Ist Schildhand"
L["is useable"] = "benutzbar"
--[[Translation missing --]]
L["Island Expedition (Heroic)"] = "Island Expedition (Heroic)"
--[[Translation missing --]]
L["Island Expedition (Mythic)"] = "Island Expedition (Mythic)"
--[[Translation missing --]]
L["Island Expedition (Normal)"] = "Island Expedition (Normal)"
--[[Translation missing --]]
L["Island Expeditions (PvP)"] = "Island Expeditions (PvP)"
L["Item"] = "Gegenstand"
--[[Translation missing --]]
L["Item Bonus Id"] = "Item Bonus Id"
--[[Translation missing --]]
L["Item Bonus Id Equipped"] = "Item Bonus Id Equipped"
L["Item Count"] = "Gegenstandsanzahl"
L["Item Equipped"] = "Gegenstand angelegt"
--[[Translation missing --]]
L["Item Id"] = "Item Id"
--[[Translation missing --]]
L["Item in Range"] = "Item in Range"
--[[Translation missing --]]
L["Item Name"] = "Item Name"
L["Item Set Equipped"] = "Gegenstandsset angelegt"
--[[Translation missing --]]
L["Item Set Id"] = "Item Set Id"
--[[Translation missing --]]
L["Item Slot"] = "Item Slot"
--[[Translation missing --]]
L["Item Slot String"] = "Item Slot String"
--[[Translation missing --]]
L["Item Type"] = "Item Type"
--[[Translation missing --]]
L["Item Type Equipped"] = "Item Type Equipped"
--[[Translation missing --]]
L["Jewelcrafting Cast Bar"] = "Jewelcrafting Cast Bar"
--[[Translation missing --]]
L["Jin'do the Hexxer"] = "Jin'do the Hexxer"
--[[Translation missing --]]
L["Journal Stage"] = "Journal Stage"
--[[Translation missing --]]
L["Keep Inside"] = "Keep Inside"
--[[Translation missing --]]
L["Kel'Thuzad"] = "Kel'Thuzad"
--[[Translation missing --]]
L["Kologarn"] = "Kologarn"
--[[Translation missing --]]
L["Koralon the Flame Watcher"] = "Koralon the Flame Watcher"
--[[Translation missing --]]
L["Kurinnaxx"] = "Kurinnaxx"
--[[Translation missing --]]
L["Lady Deathwhisper"] = "Lady Deathwhisper"
--[[Translation missing --]]
L["Large"] = "Large"
--[[Translation missing --]]
L["Latency"] = "Latency"
--[[Translation missing --]]
L["Leader"] = "Leader"
--[[Translation missing --]]
L["Least remaining time"] = "Least remaining time"
--[[Translation missing --]]
L["Leatherworking Cast Bar"] = "Leatherworking Cast Bar"
L["Leaving"] = "Verlassen"
L["Leech"] = "Saugen (LEECH)"
L["Leech (%)"] = "Lebensraub (%)"
L["Leech Rating"] = "Lebensraubswertung"
L["Left"] = "Links"
L["Left to Right"] = "Links -> Rechts"
--[[Translation missing --]]
L["Left, then Centered Vertical"] = "Left, then Centered Vertical"
L["Left, then Down"] = "Links, dann runter"
L["Left, then Up"] = "Links, dann hoch"
--[[Translation missing --]]
L["Legacy Looking for Raid"] = "Legacy Looking for Raid"
--[[Translation missing --]]
L["Legacy RGB Gradient"] = "Legacy RGB Gradient"
--[[Translation missing --]]
L["Legacy RGB Gradient Pulse"] = "Legacy RGB Gradient Pulse"
--[[Translation missing --]]
L["Legacy Spellname"] = "Legacy Spellname"
--[[Translation missing --]]
L["Legion"] = "Legion"
L["Length"] = "Länge"
L["Level"] = "Stufe"
--[[Translation missing --]]
L["Limited"] = "Limited"
--[[Translation missing --]]
L["Lines & Particles"] = "Lines & Particles"
L["Load Conditions"] = "Ladebedingungen"
--[[Translation missing --]]
L["Loatheb"] = "Loatheb"
--[[Translation missing --]]
L["Looking for Raid"] = "Looking for Raid"
L["Loop"] = "Schleife"
--[[Translation missing --]]
L["Lord Jaraxxus"] = "Lord Jaraxxus"
--[[Translation missing --]]
L["Lord Marrowgar"] = "Lord Marrowgar"
L["Lost"] = "Verloren"
L["Low Damage"] = "Niedriger Schaden"
L["Lower Than Tank"] = "Niedriger als der Tank"
--[[Translation missing --]]
L["Lua error"] = "Lua error"
--[[Translation missing --]]
L["Lua error in aura '%s': %s"] = "Lua error in aura '%s': %s"
--[[Translation missing --]]
L["Lucifron"] = "Lucifron"
--[[Translation missing --]]
L["Maexxna"] = "Maexxna"
L["Magic"] = "Magie"
--[[Translation missing --]]
L["Magmadar"] = "Magmadar"
--[[Translation missing --]]
L["Main Stat"] = "Main Stat"
--[[Translation missing --]]
L["Majordomo Executus"] = "Majordomo Executus"
--[[Translation missing --]]
L["Malformed WeakAuras link"] = "Malformed WeakAuras link"
--[[Translation missing --]]
L["Malygos"] = "Malygos"
L["Manual Rotation"] = "Manuelle Rotation"
L["Marked First"] = "Zuerst markiert"
L["Marked Last"] = "Zuletzt markiert"
L["Master"] = "Master"
L["Mastery (%)"] = "Meisterschaft (%)"
L["Mastery Rating"] = "Meisterschaftswertung"
--[[Translation missing --]]
L["Match Count"] = "Match Count"
--[[Translation missing --]]
L["Match Count per Unit"] = "Match Count per Unit"
L["Matches (Pattern)"] = "Abgleichen (Muster)"
--[[Translation missing --]]
L[ [=[Matches stage number of encounter journal.
Intermissions are .5
E.g. 1;2;1;2;2.5;3]=] ] = [=[Matches stage number of encounter journal.
Intermissions are .5
E.g. 1;2;1;2;2.5;3]=]
--[[Translation missing --]]
L["Max Char "] = "Max Char "
--[[Translation missing --]]
L["Max Charges"] = "Max Charges"
--[[Translation missing --]]
L["Max Health"] = "Max Health"
--[[Translation missing --]]
L["Max Power"] = "Max Power"
L["Maximum"] = "Maximum"
--[[Translation missing --]]
L["Maximum Estimate"] = "Maximum Estimate"
--[[Translation missing --]]
L["Media"] = "Media"
--[[Translation missing --]]
L["Medium"] = "Medium"
--[[Translation missing --]]
L["Melee"] = "Melee"
--[[Translation missing --]]
L["Melee Haste (%)"] = "Melee Haste (%)"
L["Message"] = "Nachricht"
L["Message Type"] = "Nachrichtentyp"
L["Message type:"] = "Nachrichtentyp:"
--[[Translation missing --]]
L["Meta Data"] = "Meta Data"
--[[Translation missing --]]
L["Mimiron"] = "Mimiron"
--[[Translation missing --]]
L["Mine"] = "Mine"
L["Minimum"] = "Minimum"
--[[Translation missing --]]
L["Minimum Estimate"] = "Minimum Estimate"
--[[Translation missing --]]
L["Minus (Small Nameplate)"] = "Minus (Small Nameplate)"
L["Mirror"] = "Spiegel"
L["Miss"] = "Verfehlen"
L["Miss Type"] = "Verfehlengrund"
L["Missed"] = "Verfehlt (MISSED)"
L["Missing"] = "Fehlend"
--[[Translation missing --]]
L["Mists of Pandaria"] = "Mists of Pandaria"
--[[Translation missing --]]
L["Moam"] = "Moam"
--[[Translation missing --]]
L["Model"] = "Model"
--[[Translation missing --]]
L["Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"] = "Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"
L["Molten Core"] = "Geschmolzener Kern"
L["Monochrome"] = "Einfarbig"
L["Monochrome Outline"] = "Graustufenkontur"
L["Monochrome Thick Outline"] = "Einfarbige dicke Kontur"
L["Monster Emote"] = "Monster-Emote"
--[[Translation missing --]]
L["Monster Party"] = "Monster Party"
L["Monster Say"] = "Monster Sagen"
L["Monster Whisper"] = "Monster Flüstern"
L["Monster Yell"] = "NPC-Schrei"
--[[Translation missing --]]
L["Most remaining time"] = "Most remaining time"
L["Mounted"] = "am Reiten"
L["Mouse Cursor"] = "Mauszeiger"
--[[Translation missing --]]
L["Movement Speed Rating"] = "Movement Speed Rating"
L["Multi-target"] = "Mehrfachziel"
--[[Translation missing --]]
L["Mythic Keystone"] = "Mythic Keystone"
--[[Translation missing --]]
L["Mythic+ Affix"] = "Mythic+ Affix"
L["Name"] = "Name"
--[[Translation missing --]]
L["Name Function"] = "Name Function"
--[[Translation missing --]]
L["Name Function (fallback state)"] = "Name Function (fallback state)"
--[[Translation missing --]]
L["Name of Caster's Target"] = "Name of Caster's Target"
--[[Translation missing --]]
L["Name/Realm of Caster's Target"] = "Name/Realm of Caster's Target"
--[[Translation missing --]]
L["Nameplate"] = "Nameplate"
--[[Translation missing --]]
L["Nameplate Type"] = "Nameplate Type"
--[[Translation missing --]]
L["Nameplates"] = "Nameplates"
--[[Translation missing --]]
L["Names of affected Players"] = "Names of affected Players"
--[[Translation missing --]]
L["Names of unaffected Players"] = "Names of unaffected Players"
L["Nature Resistance"] = "Naturwiderstand"
--[[Translation missing --]]
L["Naxxramas"] = "Naxxramas"
--[[Translation missing --]]
L["Nefarian"] = "Nefarian"
L["Neutral"] = "Neutral"
L["Never"] = "Nie"
L["Next Combat"] = "Nächster Kampf"
L["Next Encounter"] = "Nächstes Gefecht"
--[[Translation missing --]]
L["No Extend"] = "No Extend"
L["No Instance"] = "Keine Instanz"
--[[Translation missing --]]
L["No Profiling information saved."] = "No Profiling information saved."
L["None"] = "Keine(r)"
L["Non-player Character"] = "Nicht-Spieler-Charakter (NPC)"
L["Normal"] = "Normal"
--[[Translation missing --]]
L["Normal Party"] = "Normal Party"
--[[Translation missing --]]
L["Northrend Beasts"] = "Northrend Beasts"
L["Not in Group"] = "In keiner Gruppe"
--[[Translation missing --]]
L["Not in Smart Group"] = "Not in Smart Group"
L["Not on Cooldown"] = "Nicht auf Abklingzeit"
L["Not On Threat Table"] = "Nicht bedroht"
--[[Translation missing --]]
L["Note, that cross realm transmission is possible if you are on the same group"] = "Note, that cross realm transmission is possible if you are on the same group"
--[[Translation missing --]]
L["Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."] = "Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."
--[[Translation missing --]]
L["Note: 'Hide Alone' is not available in the new aura tracking system. A load option can be used instead."] = "Note: 'Hide Alone' is not available in the new aura tracking system. A load option can be used instead."
--[[Translation missing --]]
L["Note: The available text replacements for multi triggers match the normal triggers now."] = "Note: The available text replacements for multi triggers match the normal triggers now."
--[[Translation missing --]]
L["Note: This trigger relies on the WoW API, which returns incorrect information in some cases."] = "Note: This trigger relies on the WoW API, which returns incorrect information in some cases."
--[[Translation missing --]]
L["Note: This trigger type estimates the range to the hitbox of a unit. The actual range of friendly players is usually 3 yards more than the estimate. Range checking capabilities depend on your current class and known abilities as well as the type of unit being checked. Some of the ranges may also not work with certain NPCs.|n|n|cFFAAFFAAFriendly Units:|r %s|n|cFFFFAAAAHarmful Units:|r %s|n|cFFAAAAFFMiscellanous Units:|r %s"] = "Note: This trigger type estimates the range to the hitbox of a unit. The actual range of friendly players is usually 3 yards more than the estimate. Range checking capabilities depend on your current class and known abilities as well as the type of unit being checked. Some of the ranges may also not work with certain NPCs.|n|n|cFFAAFFAAFriendly Units:|r %s|n|cFFFFAAAAHarmful Units:|r %s|n|cFFAAAAFFMiscellanous Units:|r %s"
--[[Translation missing --]]
L["Noth the Plaguebringer"] = "Noth the Plaguebringer"
L["NPC"] = "NSC"
L["Npc ID"] = "Nsc ID"
L["Number"] = "Nummer"
L["Number Affected"] = "Betroffene Anzahl"
L["Object"] = "Objekt"
--[[Translation missing --]]
L[ [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if BigWigs shows it on it's bar]=] ] = [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if BigWigs shows it on it's bar]=]
--[[Translation missing --]]
L[ [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if DBM shows it on it's bar]=] ] = [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if DBM shows it on it's bar]=]
L["Officer"] = "Offizier"
--[[Translation missing --]]
L["Offset from progress"] = "Offset from progress"
--[[Translation missing --]]
L["Offset Timer"] = "Offset Timer"
--[[Translation missing --]]
L["Old Blizzard (2h | 3m | 10s | 2.4)"] = "Old Blizzard (2h | 3m | 10s | 2.4)"
L["On Cooldown"] = "Auf Abklingzeit"
--[[Translation missing --]]
L["On Taxi"] = "On Taxi"
--[[Translation missing --]]
L["Only if on a different realm"] = "Only if on a different realm"
L["Only if Primary"] = "Nur falls Primär"
L["Onyxia"] = "Onyxia"
L["Onyxia's Lair"] = "Onyxias Hort"
L["Opaque"] = "Deckend"
--[[Translation missing --]]
L["Option Group"] = "Option Group"
--[[Translation missing --]]
L["Options could not be loaded, the addon is %s"] = "Options could not be loaded, the addon is %s"
--[[Translation missing --]]
L["Options will finish loading after combat ends."] = "Options will finish loading after combat ends."
--[[Translation missing --]]
L["Options will open after the login process has completed."] = "Options will open after the login process has completed."
--[[Translation missing --]]
L["Or Talent"] = "Or Talent"
L["Orbit"] = "Orbit"
L["Orientation"] = "Ausrichtung"
--[[Translation missing --]]
L["Ossirian the Unscarred"] = "Ossirian the Unscarred"
--[[Translation missing --]]
L["Other"] = "Other"
--[[Translation missing --]]
L["Other Addons"] = "Other Addons"
--[[Translation missing --]]
L["Other Events"] = "Other Events"
--[[Translation missing --]]
L["Ouro"] = "Ouro"
L["Outline"] = "Kontur"
L["Overhealing"] = "Überheilung"
L["Overkill"] = "Overkill"
--[[Translation missing --]]
L["Overlay %s"] = "Overlay %s"
--[[Translation missing --]]
L["Overlay Charged Combo Points"] = "Overlay Charged Combo Points"
--[[Translation missing --]]
L["Overlay Cost of Casts"] = "Overlay Cost of Casts"
--[[Translation missing --]]
L["Overlay Latency"] = "Overlay Latency"
L["Parry"] = "Parieren"
L["Parry (%)"] = "Parieren (%)"
L["Parry Rating"] = "Parierwertung"
L["Party"] = "Gruppe"
L["Party Kill"] = "Gruppen Tod (PARTY_KILL)"
--[[Translation missing --]]
L["Patchwerk"] = "Patchwerk"
--[[Translation missing --]]
L["Path of Ascension: Courage"] = "Path of Ascension: Courage"
--[[Translation missing --]]
L["Path of Ascension: Humility"] = "Path of Ascension: Humility"
--[[Translation missing --]]
L["Path of Ascension: Loyalty"] = "Path of Ascension: Loyalty"
--[[Translation missing --]]
L["Path of Ascension: Wisdom"] = "Path of Ascension: Wisdom"
L["Paused"] = "Pausiert"
L["Periodic Spell"] = "Periodischer Zauber (PERIODIC_SPELL)"
L["Personal Resource Display"] = "Persönliche Ressourcenanzeige"
L["Pet"] = "Begleiter"
L["Pet Behavior"] = "Begleiterverhalten"
--[[Translation missing --]]
L["Pet Specialization"] = "Pet Specialization"
L["Pet Spell"] = "Begleiterzauber"
--[[Translation missing --]]
L["Pets only"] = "Pets only"
L["Phase"] = "Phase"
--[[Translation missing --]]
L["Pixel Glow"] = "Pixel Glow"
--[[Translation missing --]]
L["Placement"] = "Placement"
--[[Translation missing --]]
L["Placement Mode"] = "Placement Mode"
L["Play"] = "Abspielen"
L["Player"] = "Spieler (Selbst)"
L["Player Character"] = "Spieler-Charakter (PC)"
L["Player Class"] = "Spielerklasse"
--[[Translation missing --]]
L["Player Effective Level"] = "Player Effective Level"
--[[Translation missing --]]
L["Player Experience"] = "Player Experience"
L["Player Faction"] = "Spielerfraktion"
L["Player Level"] = "Spielerstufe"
--[[Translation missing --]]
L["Player Name/Realm"] = "Player Name/Realm"
L["Player Race"] = "Spielervolk"
--[[Translation missing --]]
L["Player Rest"] = "Player Rest"
L["Player(s) Affected"] = "Betroffene Spieler"
L["Player(s) Not Affected"] = "Nicht betroffene Spieler"
--[[Translation missing --]]
L["Player/Unit Info"] = "Player/Unit Info"
--[[Translation missing --]]
L["Players and Pets"] = "Players and Pets"
L["Poison"] = "Gift"
L["Power"] = "Ressource"
L["Power (%)"] = "Ressource (%)"
--[[Translation missing --]]
L["Power Deficit"] = "Power Deficit"
L["Power Type"] = "Ressourcentyp"
--[[Translation missing --]]
L["Precision"] = "Precision"
L["Preset"] = "Standard"
--[[Translation missing --]]
L["Princess Huhuran"] = "Princess Huhuran"
--[[Translation missing --]]
L["Print Profiling Results"] = "Print Profiling Results"
--[[Translation missing --]]
L["Professor Putricide"] = "Professor Putricide"
--[[Translation missing --]]
L["Profiling already started."] = "Profiling already started."
--[[Translation missing --]]
L["Profiling automatically started."] = "Profiling automatically started."
--[[Translation missing --]]
L["Profiling not running."] = "Profiling not running."
--[[Translation missing --]]
L["Profiling started."] = "Profiling started."
--[[Translation missing --]]
L["Profiling started. It will end automatically in %d seconds"] = "Profiling started. It will end automatically in %d seconds"
--[[Translation missing --]]
L["Profiling still running, stop before trying to print."] = "Profiling still running, stop before trying to print."
--[[Translation missing --]]
L["Profiling stopped."] = "Profiling stopped."
--[[Translation missing --]]
L["Progress"] = "Progress"
L["Progress Total"] = "Totaler Fortschritt"
L["Progress Value"] = "Fortschrittswert"
L["Pulse"] = "Pulsieren"
L["PvP Flagged"] = "PvP aktiv"
--[[Translation missing --]]
L["PvP Talent %i"] = "PvP Talent %i"
L["PvP Talent selected"] = "Gewähltes PvP-Talent"
--[[Translation missing --]]
L["PvP Talent Selected"] = "PvP Talent Selected"
--[[Translation missing --]]
L["Queued Action"] = "Queued Action"
L["Radius"] = "Radius"
L["Ragnaros"] = "Ragnaros"
L["Raid"] = "Schlachtzug"
--[[Translation missing --]]
L["Raid (Heroic)"] = "Raid (Heroic)"
--[[Translation missing --]]
L["Raid (Mythic)"] = "Raid (Mythic)"
--[[Translation missing --]]
L["Raid (Normal)"] = "Raid (Normal)"
--[[Translation missing --]]
L["Raid (Timewalking)"] = "Raid (Timewalking)"
--[[Translation missing --]]
L["Raid Mark"] = "Raid Mark"
--[[Translation missing --]]
L["Raid Mark Icon"] = "Raid Mark Icon"
--[[Translation missing --]]
L["Raid Role"] = "Raid Role"
L["Raid Warning"] = "Schlachtzugswarnung"
L["Raids"] = "Schlachtzüge"
L["Range"] = "Reichweite"
L["Range Check"] = "Reichweitencheck"
--[[Translation missing --]]
L["Ranged"] = "Ranged"
--[[Translation missing --]]
L["Rank"] = "Rank"
--[[Translation missing --]]
L["Rare"] = "Rare"
--[[Translation missing --]]
L["Rare Elite"] = "Rare Elite"
--[[Translation missing --]]
L["Rated Arena"] = "Rated Arena"
--[[Translation missing --]]
L["Rated Battleground"] = "Rated Battleground"
--[[Translation missing --]]
L["Raw Threat Percent"] = "Raw Threat Percent"
--[[Translation missing --]]
L["Razorgore the Untamed"] = "Razorgore the Untamed"
--[[Translation missing --]]
L["Razorscale"] = "Razorscale"
L["Ready Check"] = "Bereitschaftscheck"
--[[Translation missing --]]
L["Reagent Quality"] = "Reagent Quality"
--[[Translation missing --]]
L["Reagent Quality Texture"] = "Reagent Quality Texture"
L["Realm"] = "Realm"
--[[Translation missing --]]
L["Realm Name"] = "Realm Name"
--[[Translation missing --]]
L["Realm of Caster's Target"] = "Realm of Caster's Target"
L["Receiving display information"] = "Erhalte Anzeigeinformationen von %s"
L["Reflect"] = "Reflektieren (REFLECT)"
L["Region type %s not supported"] = "Regiontyp %s wird nicht unterstützt"
L["Relative"] = "Relativ"
--[[Translation missing --]]
L["Relative X-Offset"] = "Relative X-Offset"
--[[Translation missing --]]
L["Relative Y-Offset"] = "Relative Y-Offset"
L["Remaining Duration"] = "Verbleibende Dauer"
L["Remaining Time"] = "Verbleibende Zeit"
--[[Translation missing --]]
L["Remove Obsolete Auras"] = "Remove Obsolete Auras"
L["Repair"] = "Reparieren"
L["Repeat"] = "Wiederhole"
--[[Translation missing --]]
L["Report Summary"] = "Report Summary"
L["Requested display does not exist"] = "Angeforderte Anzeige existiert nicht"
L["Requested display not authorized"] = "Angeforderte Anzeige ist nicht autorisiert"
--[[Translation missing --]]
L["Requesting display information from %s ..."] = "Requesting display information from %s ..."
L["Require Valid Target"] = "Erfordert gültiges Ziel"
--[[Translation missing --]]
L["Requires syncing the specialization via LibSpecialization."] = "Requires syncing the specialization via LibSpecialization."
--[[Translation missing --]]
L["Resilience Percent"] = "Resilience Percent"
--[[Translation missing --]]
L["Resilience Rating"] = "Resilience Rating"
L["Resist"] = "Widerstehen"
L["Resisted"] = "Widerstanden (RESISTED)"
--[[Translation missing --]]
L["Rested"] = "Rested"
--[[Translation missing --]]
L["Rested Experience"] = "Rested Experience"
--[[Translation missing --]]
L["Rested Experience (%)"] = "Rested Experience (%)"
L["Resting"] = "am Erholen"
L["Resurrect"] = "Wiederbeleben"
L["Right"] = "Rechts"
L["Right to Left"] = "Rechts -> Links"
--[[Translation missing --]]
L["Right, then Centered Vertical"] = "Right, then Centered Vertical"
L["Right, then Down"] = "Rechts, dann runter"
L["Right, then Up"] = "Rechts, dann hoch"
L["Role"] = "Rolle"
--[[Translation missing --]]
L["Rotate Animation"] = "Rotate Animation"
L["Rotate Left"] = "Nach links rotieren"
L["Rotate Right"] = "Nach rechts rotieren"
--[[Translation missing --]]
L["Rotation"] = "Rotation"
--[[Translation missing --]]
L["Rotface"] = "Rotface"
--[[Translation missing --]]
L["Round"] = "Round"
--[[Translation missing --]]
L["Round Mode"] = "Round Mode"
L["Ruins of Ahn'Qiraj"] = "Ruinen von Ahn'Qiraj"
L["Run Custom Code"] = "Code ausführen"
--[[Translation missing --]]
L["Run Speed (%)"] = "Run Speed (%)"
L["Rune"] = "Rune"
L["Rune #1"] = "Rune #1"
L["Rune #2"] = "Rune #2"
L["Rune #3"] = "Rune #3"
L["Rune #4"] = "Rune #4"
L["Rune #5"] = "Rune #5"
L["Rune #6"] = "Rune #6"
--[[Translation missing --]]
L["Rune Count"] = "Rune Count"
--[[Translation missing --]]
L["Rune Count - Blood"] = "Rune Count - Blood"
--[[Translation missing --]]
L["Rune Count - Frost"] = "Rune Count - Frost"
--[[Translation missing --]]
L["Rune Count - Unholy"] = "Rune Count - Unholy"
--[[Translation missing --]]
L["Sapphiron"] = "Sapphiron"
--[[Translation missing --]]
L["Sartharion"] = "Sartharion"
--[[Translation missing --]]
L["Saviana Ragefire"] = "Saviana Ragefire"
L["Say"] = "Sagen"
--[[Translation missing --]]
L["Scale"] = "Scale"
L["Scenario"] = "Szenario"
--[[Translation missing --]]
L["Scenario (Heroic)"] = "Scenario (Heroic)"
--[[Translation missing --]]
L["Scenario (Normal)"] = "Scenario (Normal)"
--[[Translation missing --]]
L["Screen"] = "Screen"
L["Screen/Parent Group"] = "Bildschirm/Elterngruppe"
--[[Translation missing --]]
L["Second"] = "Second"
--[[Translation missing --]]
L["Second Value of Tooltip Text"] = "Second Value of Tooltip Text"
L["Seconds"] = "Sekunden"
--[[Translation missing --]]
L[ [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
L["Select Frame"] = "Frame auswählen"
--[[Translation missing --]]
L["Separator"] = "Separator"
--[[Translation missing --]]
L["Set IDs can be found on websites such as classic.wowhead.com/item-sets"] = "Set IDs can be found on websites such as classic.wowhead.com/item-sets"
--[[Translation missing --]]
L["Set IDs can be found on websites such as wowhead.com/item-sets"] = "Set IDs can be found on websites such as wowhead.com/item-sets"
--[[Translation missing --]]
L["Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"] = "Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"
L["Set Maximum Progress"] = "Max. Fortschritt"
L["Set Minimum Progress"] = "Min. Fortschritt"
L["Shadow Resistance"] = "Schattenwiderstand"
--[[Translation missing --]]
L["Shadowlands"] = "Shadowlands"
--[[Translation missing --]]
L["Shadron"] = "Shadron"
L["Shake"] = "Beben"
--[[Translation missing --]]
L["Shazzrah"] = "Shazzrah"
--[[Translation missing --]]
L["Shift-Click to resume addon execution."] = "Shift-Click to resume addon execution."
L["Show"] = "Zeigen"
L["Show Absorb"] = "Absorb zeigen"
--[[Translation missing --]]
L["Show CD of Charge"] = "Show CD of Charge"
--[[Translation missing --]]
L["Show charged duration for empowered casts"] = "Show charged duration for empowered casts"
L["Show GCD"] = "GCD anzeigen"
L["Show Global Cooldown"] = "Globale Abklingzeit anzeigen"
--[[Translation missing --]]
L["Show Heal Absorb"] = "Show Heal Absorb"
L["Show Incoming Heal"] = "Eingehende Heilung zeigen"
--[[Translation missing --]]
L["Show Loss of Control"] = "Show Loss of Control"
--[[Translation missing --]]
L["Show On"] = "Show On"
--[[Translation missing --]]
L["Show Rested Overlay"] = "Show Rested Overlay"
L["Shrink"] = "Schrumpfen"
--[[Translation missing --]]
L["Silithid Royalty"] = "Silithid Royalty"
L["Simple"] = "Einfach"
--[[Translation missing --]]
L["Since Apply"] = "Since Apply"
--[[Translation missing --]]
L["Since Apply/Refresh"] = "Since Apply/Refresh"
--[[Translation missing --]]
L["Since Charge Gain"] = "Since Charge Gain"
--[[Translation missing --]]
L["Since Charge Lost"] = "Since Charge Lost"
--[[Translation missing --]]
L["Since Ready"] = "Since Ready"
--[[Translation missing --]]
L["Since Stack Gain"] = "Since Stack Gain"
--[[Translation missing --]]
L["Since Stack Lost"] = "Since Stack Lost"
--[[Translation missing --]]
L["Sindragosa"] = "Sindragosa"
L["Size & Position"] = "Größe & Position"
--[[Translation missing --]]
L["Slide Animation"] = "Slide Animation"
L["Slide from Bottom"] = "Von unten eingleiten"
L["Slide from Left"] = "Von links eingleiten"
L["Slide from Right"] = "Von rechts eingleiten"
L["Slide from Top"] = "Von oben eingleiten"
L["Slide to Bottom"] = "Nach unten entgleiten"
L["Slide to Left"] = "Nach links entgleiten"
L["Slide to Right"] = "Nach rechts entgleiten"
L["Slide to Top"] = "Nach oben entgleiten"
--[[Translation missing --]]
L["Slider"] = "Slider"
L["Small"] = "Klein"
--[[Translation missing --]]
L["Smart Group"] = "Smart Group"
--[[Translation missing --]]
L["Soft Enemy"] = "Soft Enemy"
--[[Translation missing --]]
L["Soft Friend"] = "Soft Friend"
L["Sound"] = "Ton"
--[[Translation missing --]]
L["Sound by Kit ID"] = "Sound by Kit ID"
--[[Translation missing --]]
L["Source"] = "Source"
--[[Translation missing --]]
L["Source Affiliation"] = "Source Affiliation"
--[[Translation missing --]]
L["Source GUID"] = "Source GUID"
L["Source Name"] = "Quellname"
--[[Translation missing --]]
L["Source NPC Id"] = "Source NPC Id"
--[[Translation missing --]]
L["Source Object Type"] = "Source Object Type"
L["Source Raid Mark"] = "Quellmarkierung"
--[[Translation missing --]]
L["Source Reaction"] = "Source Reaction"
L["Source Unit"] = "Quelleinheit"
--[[Translation missing --]]
L["Source Unit Name/Realm"] = "Source Unit Name/Realm"
--[[Translation missing --]]
L["Source unit's raid mark index"] = "Source unit's raid mark index"
--[[Translation missing --]]
L["Source unit's raid mark texture"] = "Source unit's raid mark texture"
--[[Translation missing --]]
L["Space"] = "Space"
L["Spacing"] = "Abstand"
--[[Translation missing --]]
L["Spark"] = "Spark"
--[[Translation missing --]]
L["Spec Position"] = "Spec Position"
--[[Translation missing --]]
L["Spec Role"] = "Spec Role"
--[[Translation missing --]]
L["Specialization"] = "Specialization"
--[[Translation missing --]]
L["Specific Type"] = "Specific Type"
L["Specific Unit"] = "Konkrete Einheit"
L["Spell"] = "Zauber"
L["Spell (Building)"] = "Zauber, Gebäude (SPELL_BUILDING)"
--[[Translation missing --]]
L["Spell Activation Overlay Glow"] = "Spell Activation Overlay Glow"
--[[Translation missing --]]
L["Spell Cast Succeeded"] = "Spell Cast Succeeded"
L["Spell Cost"] = "Zauberkosten"
--[[Translation missing --]]
L["Spell Count"] = "Spell Count"
L["Spell ID"] = "Zauber-ID"
L["Spell Id"] = "Zauber-ID"
L["Spell ID:"] = "Zauber ID:"
L["Spell IDs:"] = "Zauber IDs:"
--[[Translation missing --]]
L["Spell in Range"] = "Spell in Range"
L["Spell Known"] = "Zauber erlernt"
L["Spell Name"] = "Zaubername"
--[[Translation missing --]]
L["Spell Peneration Percent"] = "Spell Peneration Percent"
--[[Translation missing --]]
L["Spell School"] = "Spell School"
L["Spell Usable"] = "Zauber benutzbar"
L["Spin"] = "Drehen"
L["Spiral"] = "Winden"
L["Spiral In And Out"] = "Ein- und Auswinden"
--[[Translation missing --]]
L["Spirit"] = "Spirit"
--[[Translation missing --]]
L["Stack Count"] = "Stack Count"
L["Stacks"] = "Stapel"
--[[Translation missing --]]
L["Stacks Function"] = "Stacks Function"
--[[Translation missing --]]
L["Stacks Function (fallback state)"] = "Stacks Function (fallback state)"
--[[Translation missing --]]
L["Stage"] = "Stage"
--[[Translation missing --]]
L["Stage Counter"] = "Stage Counter"
--[[Translation missing --]]
L["Stagger (%)"] = "Stagger (%)"
--[[Translation missing --]]
L["Stagger against Target (%)"] = "Stagger against Target (%)"
--[[Translation missing --]]
L["Stagger Scale"] = "Stagger Scale"
L["Stamina"] = "Ausdauer"
L["Stance/Form/Aura"] = "Haltung/Form/Aura"
--[[Translation missing --]]
L["Standing"] = "Standing"
--[[Translation missing --]]
L["Star Shake"] = "Star Shake"
--[[Translation missing --]]
L["Start Now"] = "Start Now"
L["Status"] = "Status"
--[[Translation missing --]]
L["Status Bar"] = "Status Bar"
L["Stolen"] = "Gestohlen (STOLEN)"
L["Stop"] = "Stopp"
L["Strength"] = "Stärke"
--[[Translation missing --]]
L["String"] = "String"
--[[Translation missing --]]
L["Subtract Cast"] = "Subtract Cast"
--[[Translation missing --]]
L["Subtract Channel"] = "Subtract Channel"
--[[Translation missing --]]
L["Subtract GCD"] = "Subtract GCD"
--[[Translation missing --]]
L["Success"] = "Success"
--[[Translation missing --]]
L["Sulfuron Harbinger"] = "Sulfuron Harbinger"
L["Summon"] = "Herbeirufen (SUMMON)"
--[[Translation missing --]]
L["Supports multiple entries, separated by commas"] = "Supports multiple entries, separated by commas"
--[[Translation missing --]]
L[ [=[Supports multiple entries, separated by commas
]=] ] = [=[Supports multiple entries, separated by commas
]=]
--[[Translation missing --]]
L["Supports multiple entries, separated by commas. Escape ',' with \\"] = "Supports multiple entries, separated by commas. Escape ',' with \\"
L["Supports multiple entries, separated by commas. Group Zone IDs must be prefixed with 'g', e.g. g277."] = "Unterstützt mehrere Einträge, die durch Kommas getrennt sind. Den Gruppenzonen-IDs muss ein \"g\" vorangestellt werden, z. B. g277."
L["Swing"] = "Schwingen (SWING)"
L["Swing Timer"] = "Schlagtimer"
--[[Translation missing --]]
L["Swipe"] = "Swipe"
L["System"] = "System"
--[[Translation missing --]]
L["Tab "] = "Tab "
--[[Translation missing --]]
L["Tailoring Cast Bar"] = "Tailoring Cast Bar"
--[[Translation missing --]]
L["Talent"] = "Talent"
--[[Translation missing --]]
L["Talent |cFFFF0000Not|r Known"] = "Talent |cFFFF0000Not|r Known"
--[[Translation missing --]]
L["Talent |cFFFF0000Not|r Selected"] = "Talent |cFFFF0000Not|r Selected"
--[[Translation missing --]]
L["Talent Known"] = "Talent Known"
L["Talent Selected"] = "Talent gewählt"
L["Talent selected"] = "Gewähltes Talent"
L["Talent Specialization"] = "Talentspezialisierung"
L["Tanking And Highest"] = "Höchster und Aggro"
L["Tanking But Not Highest"] = "Aggro aber nicht höchste"
L["Target"] = "Ziel"
L["Targeted"] = "Anvisiert"
--[[Translation missing --]]
L["Tenebron"] = "Tenebron"
L["Text"] = "Text"
--[[Translation missing --]]
L["Text-to-speech"] = "Text-to-speech"
--[[Translation missing --]]
L["Texture Function"] = "Texture Function"
--[[Translation missing --]]
L["Texture Function (fallback state)"] = "Texture Function (fallback state)"
--[[Translation missing --]]
L["Texture Rotation"] = "Texture Rotation"
--[[Translation missing --]]
L["Thaddius"] = "Thaddius"
--[[Translation missing --]]
L["The aura has overwritten the global '%s', this might affect other auras."] = "The aura has overwritten the global '%s', this might affect other auras."
--[[Translation missing --]]
L["The effective level differs from the level in e.g. Time Walking dungeons."] = "The effective level differs from the level in e.g. Time Walking dungeons."
--[[Translation missing --]]
L["The Eye of Eternity"] = "The Eye of Eternity"
--[[Translation missing --]]
L["The Four Horsemen"] = "The Four Horsemen"
--[[Translation missing --]]
L["The Lich King"] = "The Lich King"
--[[Translation missing --]]
L["The Obsidian Sanctum"] = "The Obsidian Sanctum"
--[[Translation missing --]]
L["The Prophet Skeram"] = "The Prophet Skeram"
--[[Translation missing --]]
L["The Ruby Sanctum"] = "The Ruby Sanctum"
--[[Translation missing --]]
L["The trigger number is optional, and uses the trigger providing dynamic information if not specified."] = "The trigger number is optional, and uses the trigger providing dynamic information if not specified."
--[[Translation missing --]]
L["There are %i updates to your auras ready to be installed!"] = "There are %i updates to your auras ready to be installed!"
L["Thick Outline"] = "Dicke Kontur"
--[[Translation missing --]]
L["Thickness"] = "Thickness"
--[[Translation missing --]]
L["Third"] = "Third"
--[[Translation missing --]]
L["Third Value of Tooltip Text"] = "Third Value of Tooltip Text"
--[[Translation missing --]]
L["This aura calls GetData a lot, which is a slow function."] = "This aura calls GetData a lot, which is a slow function."
--[[Translation missing --]]
L["This aura has caused a Lua error."] = "This aura has caused a Lua error."
--[[Translation missing --]]
L["This aura is saving %s KB of data"] = "This aura is saving %s KB of data"
--[[Translation missing --]]
L["This aura plays a sound via a condition."] = "This aura plays a sound via a condition."
--[[Translation missing --]]
L["This aura plays a sound via an action."] = "This aura plays a sound via an action."
--[[Translation missing --]]
L["Thorim"] = "Thorim"
--[[Translation missing --]]
L["Threat Percent"] = "Threat Percent"
L["Threat Situation"] = "Bedrohungssituation"
--[[Translation missing --]]
L["Threat Value"] = "Threat Value"
--[[Translation missing --]]
L["Tick"] = "Tick"
--[[Translation missing --]]
L["Time Format"] = "Time Format"
--[[Translation missing --]]
L["Time in GCDs"] = "Time in GCDs"
L["Timed"] = "Zeitgesteuert"
--[[Translation missing --]]
L["Timer Id"] = "Timer Id"
L["Toggle"] = "Umschalten"
--[[Translation missing --]]
L["Toggle List"] = "Toggle List"
--[[Translation missing --]]
L["Toggle Options Window"] = "Toggle Options Window"
--[[Translation missing --]]
L["Toggle Performance Profiling Window"] = "Toggle Performance Profiling Window"
L["Tooltip"] = "Tooltip"
L["Tooltip Value 1"] = "Tooltip Wert 1"
L["Tooltip Value 2"] = "Tooltip Wert 2"
L["Tooltip Value 3"] = "Tooltip Wert 3"
L["Top"] = "Oben"
L["Top Left"] = "Oben Links"
L["Top Right"] = "Oben Rechts"
L["Top to Bottom"] = "Oben -> Unten"
--[[Translation missing --]]
L["Toravon the Ice Watcher"] = "Toravon the Ice Watcher"
--[[Translation missing --]]
L["Torghast"] = "Torghast"
--[[Translation missing --]]
L["Total"] = "Total"
L["Total Duration"] = "Gesamtdauer"
--[[Translation missing --]]
L["Total Essence"] = "Total Essence"
--[[Translation missing --]]
L["Total Experience"] = "Total Experience"
--[[Translation missing --]]
L["Total Match Count"] = "Total Match Count"
--[[Translation missing --]]
L["Total Stacks"] = "Total Stacks"
--[[Translation missing --]]
L["Total stacks over all matches"] = "Total stacks over all matches"
--[[Translation missing --]]
L["Total Stages"] = "Total Stages"
--[[Translation missing --]]
L["Total Unit Count"] = "Total Unit Count"
--[[Translation missing --]]
L["Total Units"] = "Total Units"
L["Totem"] = "Totem"
L["Totem #%i"] = "Totem #%i"
L["Totem Name"] = "Totemname"
--[[Translation missing --]]
L["Totem Name Pattern Match"] = "Totem Name Pattern Match"
L["Totem Number"] = "Totemnummer"
--[[Translation missing --]]
L["Track Cooldowns"] = "Track Cooldowns"
--[[Translation missing --]]
L["Tracking Charge %i"] = "Tracking Charge %i"
--[[Translation missing --]]
L["Tracking Charge CDs"] = "Tracking Charge CDs"
--[[Translation missing --]]
L["Tracking Only Cooldown"] = "Tracking Only Cooldown"
L["Transmission error"] = "Übertragungsfehler"
--[[Translation missing --]]
L["Trial of the Crusader"] = "Trial of the Crusader"
L["Trigger"] = "Auslöser"
--[[Translation missing --]]
L["Trigger %i"] = "Trigger %i"
--[[Translation missing --]]
L["Trigger %s"] = "Trigger %s"
L["Trigger 1"] = "Auslöser 1"
--[[Translation missing --]]
L["Trigger State Updater (Advanced)"] = "Trigger State Updater (Advanced)"
L["Trigger Update"] = "Auslöseraktualisierung"
L["Trigger:"] = "Auslöser:"
--[[Translation missing --]]
L["Trivial (Low Level)"] = "Trivial (Low Level)"
L["True"] = "Zutrifft"
--[[Translation missing --]]
L["Trying to repair broken conditions in %s likely caused by a WeakAuras bug."] = "Trying to repair broken conditions in %s likely caused by a WeakAuras bug."
L["Twin Emperors"] = "Zwillingsimperatoren"
L["Type"] = "Typ"
--[[Translation missing --]]
L["Ulduar"] = "Ulduar"
--[[Translation missing --]]
L["Unaffected"] = "Unaffected"
L["Undefined"] = "Undefiniert"
--[[Translation missing --]]
L["Unholy"] = "Unholy"
--[[Translation missing --]]
L["Unholy Rune #1"] = "Unholy Rune #1"
--[[Translation missing --]]
L["Unholy Rune #2"] = "Unholy Rune #2"
L["Unit"] = "Einheit"
L["Unit Characteristics"] = "Einheitencharakterisierung"
L["Unit Destroyed"] = "Einheit zerstört"
L["Unit Died"] = "Einheit gestorben"
--[[Translation missing --]]
L["Unit Dissipates"] = "Unit Dissipates"
--[[Translation missing --]]
L["Unit Frame"] = "Unit Frame"
--[[Translation missing --]]
L["Unit Frames"] = "Unit Frames"
L["Unit is Unit"] = "Vergleicht Einheit mit"
--[[Translation missing --]]
L["Unit Name"] = "Unit Name"
--[[Translation missing --]]
L["Unit Name/Realm"] = "Unit Name/Realm"
--[[Translation missing --]]
L["Units Affected"] = "Units Affected"
--[[Translation missing --]]
L["unknown location"] = "unknown location"
L["Unlimited"] = "Unbegrenzt"
--[[Translation missing --]]
L["Untrigger %s"] = "Untrigger %s"
L["Up"] = "Hoch"
--[[Translation missing --]]
L["Up, then Centered Horizontal"] = "Up, then Centered Horizontal"
L["Up, then Left"] = "Hoch, dann links"
L["Up, then Right"] = "Hoch, dann rechts"
--[[Translation missing --]]
L["Update Position"] = "Update Position"
L["Usage:"] = "Benutzung:"
--[[Translation missing --]]
L["Use /wa minimap to show the minimap icon again."] = "Use /wa minimap to show the minimap icon again."
L["Use Custom Color"] = "Benutzerdefinierte Farbe benutzen"
--[[Translation missing --]]
L["Use Legacy floor rounding"] = "Use Legacy floor rounding"
--[[Translation missing --]]
L["Use Watched Faction"] = "Use Watched Faction"
--[[Translation missing --]]
L["Using WeakAuras.clones is deprecated. Use WeakAuras.GetRegion(id, cloneId) instead."] = "Using WeakAuras.clones is deprecated. Use WeakAuras.GetRegion(id, cloneId) instead."
--[[Translation missing --]]
L["Using WeakAuras.regions is deprecated. Use WeakAuras.GetRegion(id) instead."] = "Using WeakAuras.regions is deprecated. Use WeakAuras.GetRegion(id) instead."
--[[Translation missing --]]
L["Vaelastrasz the Corrupt"] = "Vaelastrasz the Corrupt"
--[[Translation missing --]]
L["Valithria Dreamwalker"] = "Valithria Dreamwalker"
--[[Translation missing --]]
L["Val'kyr Twins"] = "Val'kyr Twins"
L["Value"] = "Wert"
--[[Translation missing --]]
L["Values/Remaining Time above this value are displayed as full progress."] = "Values/Remaining Time above this value are displayed as full progress."
--[[Translation missing --]]
L["Values/Remaining Time below this value are displayed as no progress."] = "Values/Remaining Time below this value are displayed as no progress."
--[[Translation missing --]]
L["Vault of Archavon"] = "Vault of Archavon"
L["Versatility (%)"] = "Vielseitigkeit (%)"
L["Versatility Rating"] = "Vielseitigkeitswertung"
--[[Translation missing --]]
L["Vertical"] = "Vertical"
--[[Translation missing --]]
L["Vesperon"] = "Vesperon"
--[[Translation missing --]]
L["Viscidus"] = "Viscidus"
L["Visibility"] = "Sichtbarkeit"
--[[Translation missing --]]
L["Visions of N'Zoth"] = "Visions of N'Zoth"
--[[Translation missing --]]
L["War Mode Active"] = "War Mode Active"
--[[Translation missing --]]
L["Warfront (Heroic)"] = "Warfront (Heroic)"
--[[Translation missing --]]
L["Warfront (Normal)"] = "Warfront (Normal)"
--[[Translation missing --]]
L["Warlords of Draenor"] = "Warlords of Draenor"
--[[Translation missing --]]
L["Warning"] = "Warning"
--[[Translation missing --]]
L["Warning for unknown aura:"] = "Warning for unknown aura:"
--[[Translation missing --]]
L["Warning: Anchoring to your own child '%s' in aura '%s' is imposssible."] = "Warning: Anchoring to your own child '%s' in aura '%s' is imposssible."
--[[Translation missing --]]
L["Warning: Full Scan auras checking for both name and spell id can't be converted."] = "Warning: Full Scan auras checking for both name and spell id can't be converted."
--[[Translation missing --]]
L["Warning: Name info is now available via %affected, %unaffected. Number of affected group members via %unitCount. Some options behave differently now. This is not automatically adjusted."] = "Warning: Name info is now available via %affected, %unaffected. Number of affected group members via %unitCount. Some options behave differently now. This is not automatically adjusted."
--[[Translation missing --]]
L["Warning: Tooltip values are now available via %tooltip1, %tooltip2, %tooltip3 instead of %s. This is not automatically adjusted."] = "Warning: Tooltip values are now available via %tooltip1, %tooltip2, %tooltip3 instead of %s. This is not automatically adjusted."
--[[Translation missing --]]
L["WeakAuras Built-In (63:42 | 3:07 | 10 | 2.4)"] = "WeakAuras Built-In (63:42 | 3:07 | 10 | 2.4)"
--[[Translation missing --]]
L[ [=[WeakAuras has detected that it has been downgraded.
Your saved auras may no longer work properly.
Would you like to run the |cffff0000EXPERIMENTAL|r repair tool? This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=] ] = [=[WeakAuras has detected that it has been downgraded.
Your saved auras may no longer work properly.
Would you like to run the |cffff0000EXPERIMENTAL|r repair tool? This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=]
--[[Translation missing --]]
L["WeakAuras has encountered an error during the login process. Please report this issue at https://github.com/WeakAuras/Weakauras2/issues/new."] = "WeakAuras has encountered an error during the login process. Please report this issue at https://github.com/WeakAuras/Weakauras2/issues/new."
--[[Translation missing --]]
L["WeakAuras Profiling"] = "WeakAuras Profiling"
--[[Translation missing --]]
L["WeakAuras Profiling Report"] = "WeakAuras Profiling Report"
--[[Translation missing --]]
L["WeakAuras Version: %s"] = "WeakAuras Version: %s"
L["Weapon"] = "Waffen"
L["Weapon Enchant"] = "Waffenverzauberung"
L["Weapon Enchant / Fishing Lure"] = "Waffenverzauberung / Angelrute"
L["Whisper"] = "Flüstern"
--[[Translation missing --]]
L["Whole Area"] = "Whole Area"
L["Width"] = "Breite"
L["Wobble"] = "Wackeln"
L["World Boss"] = "Weltboss"
--[[Translation missing --]]
L["Wrap"] = "Wrap"
--[[Translation missing --]]
L["Wrath of the Lich King"] = "Wrath of the Lich King"
--[[Translation missing --]]
L["Writing to the WeakAuras table is not allowed."] = "Writing to the WeakAuras table is not allowed."
L["X-Offset"] = "X-Versatz"
--[[Translation missing --]]
L["XT-002 Deconstructor"] = "XT-002 Deconstructor"
L["Yell"] = "Schreien"
L["Y-Offset"] = "Y-Versatz"
--[[Translation missing --]]
L["Yogg-Saron"] = "Yogg-Saron"
--[[Translation missing --]]
L["You have new auras ready to be installed!"] = "You have new auras ready to be installed!"
--[[Translation missing --]]
L["Your next encounter will automatically be profiled."] = "Your next encounter will automatically be profiled."
--[[Translation missing --]]
L["Your next instance of combat will automatically be profiled."] = "Your next instance of combat will automatically be profiled."
--[[Translation missing --]]
L["Your scheduled automatic profile has been cancelled."] = "Your scheduled automatic profile has been cancelled."
--[[Translation missing --]]
L["Your threat as a percentage of the tank's current threat."] = "Your threat as a percentage of the tank's current threat."
L["Your threat on the mob as a percentage of the amount required to pull aggro. Will pull aggro at 100."] = "Ihre Bedrohung für den Mob als Prozentsatz der Menge, der zum Ziehen von Aggro erforderlich ist. Wird bei 100 Aggro ziehen."
L["Your total threat on the mob."] = "Ihre gesamte Bedrohung für den Mob."
L["Zone ID(s)"] = "GebietsID(s)"
L["Zone Name"] = "Gebietsname"
L["Zoom"] = "Zoom"
--[[Translation missing --]]
L["Zoom Animation"] = "Zoom Animation"
L["Zul'Gurub"] = "Zul'Gurub"

