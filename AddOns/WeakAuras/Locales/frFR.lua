if (GAME_LOCALE or GetLocale()) ~= "frFR" then
  return
end

local L = WeakAuras.L

-- WeakAuras
L[ [=[ Filter formats: 'Name', 'Name-Realm', '-Realm'. 

Supports multiple entries, separated by commas
Can use \ to escape -.]=] ] = "Filtres supportés : 'Pseudo', 'Pseudo-Serveur', '-Serveur'. Supporte les entrées multiples, séparées par des virgules; utiliser \\ pour \"échapper\" à -."
L["%s Overlay Color"] = "%s couleur de la superposition"
L["* Suffix"] = "* Suffixe"
L["/wa help - Show this message"] = "/wa help - Affiche ce message"
L["/wa minimap - Toggle the minimap icon"] = "/wa minimap - Afficher l'icône sur la mini-carte"
L["/wa pprint - Show the results from the most recent profiling"] = "/wa pprint - Affiche les résultats du profilage le plus récent"
L["/wa pstart - Start profiling. Optionally include a duration in seconds after which profiling automatically stops. To profile the next combat/encounter, pass a \"combat\" or \"encounter\" argument."] = "/wa pstart - Démarre le profilage. Vous pouvez inclure une durée en secondes après laquelle le profilage s'arrête automatiquement. Pour établir le profil du prochain combat / contretemps, passez un argument \"combat\" ou \"rencontre\"."
L["/wa pstop - Finish profiling"] = "/wa pstop - Arrêter le profilage"
L["/wa repair - Repair tool"] = "/wa repair - Utilitaire de réparation"
L["|cffeda55fLeft-Click|r to toggle showing the main window."] = "|cffeda55fClic-Gauche|r pour déclencher l'affichage de la fenêtre principale."
L["|cffeda55fMiddle-Click|r to toggle the minimap icon on or off."] = "|cffeda55fClic-Milieu|r pour activer ou désactiver l'icône de la mini-carte."
L["|cffeda55fRight-Click|r to toggle performance profiling window."] = "|cffeda55fClic-Droit|r pour basculer la fenêtre de profilage des performances."
L["|cffeda55fShift-Click|r to pause addon execution."] = "|cffeda55fMaj-Clic|r Pour suspendre l'exécution de l'addon."
L["|cFFFF0000Not|r Item Bonus Id Equipped"] = "ID du bonus de l'objet |cFFFF0000non|r équipé"
L["|cFFFF0000Not|r Player Name/Realm"] = "|cFFFF0000Not|r Nom du joueur / serveur"
--[[Translation missing --]]
L["|cFFFF0000Not|r Spell Known"] = "|cFFFF0000Not|r Spell Known"
L["|cFFffcc00Extra Options:|r %s"] = "|cFFffcc00Options supplémentaires :|r %s"
L["|cFFffcc00Extra Options:|r None"] = "|cFFffcc00Options supplémentaires :|r Aucun"
L[ [=[• |cff00ff00Player|r, |cff00ff00Target|r, |cff00ff00Focus|r, and |cff00ff00Pet|r correspond directly to those individual unitIDs.
• |cff00ff00Specific Unit|r lets you provide a specific valid unitID to watch.
|cffff0000Note|r: The game will not fire events for all valid unitIDs, making some untrackable by this trigger.
• |cffffff00Party|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arena|r, and |cffffff00Nameplate|r can match multiple corresponding unitIDs.
• |cffffff00Smart Group|r adjusts to your current group type, matching just the "player" when solo, "party" units (including "player") in a party or "raid" units in a raid.

|cffffff00*|r Yellow Unit settings will create clones for each matching unit while this trigger is providing Dynamic Info to the Aura.]=] ] = [=[• |cff00ff00Joueur|r, |cff00ff00Cible|r, |cff00ff00Focalisation|r, and |cff00ff00Animal de compagnie|r 
correspondent directement à ces identifiants d'unités individuelles. • |cff00ff00Unité spécifique|r vous permet de fournir un identifiant d'unité spécifique valide à surveiller. |cffff0000Note|r : Le jeu ne déclenchera pas d'événements pour tous les identifiants d'unités valides, ce qui rendra certains d'entre eux non traçables par ce déclencheur. • |cffffff00Groupe|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arène|r, et |cffffff00Nameplate|r peut correspondre à plusieurs identifiant d'unité. • Le |cffffff00groupe intelligent|r s'adapte à votre type de groupe actuel, en ne faisant correspondre que le "joueur" en solo, les unités du "groupe" (y compris le "joueur") dans un groupe ou les unités du "raid" dans un raid. |cffffff00*|r Les paramètres de l'unité jaune créeront des clones pour chaque unité correspondante pendant que ce déclencheur fournit des informations dynamiques à l'Aura.]=]
--[[Translation missing --]]
L["1. Profession 1. Accessory"] = "1. Profession 1. Accessory"
--[[Translation missing --]]
L["1. Profession 2. Accessory"] = "1. Profession 2. Accessory"
--[[Translation missing --]]
L["1. Professsion Tool"] = "1. Professsion Tool"
L["10 Man Raid"] = "Raid 10 Joueurs"
L["10 Player Raid"] = "Raid à 10 joueurs"
L["10 Player Raid (Heroic)"] = "Raid 10 Joueurs (Héroïque)"
L["10 Player Raid (Normal)"] = "Raid 10 Joueurs (Normal)"
--[[Translation missing --]]
L["2. Profession 1. Accessory"] = "2. Profession 1. Accessory"
--[[Translation missing --]]
L["2. Profession 2. Accessory"] = "2. Profession 2. Accessory"
--[[Translation missing --]]
L["2. Professsion Tool"] = "2. Professsion Tool"
L["20 Man Raid"] = "Raid 20 Joueurs"
L["20 Player Raid"] = "Raid à 20 joueurs"
L["25 Man Raid"] = "Raid 25 Joueurs"
L["25 Player Raid"] = "Raid à 25 joueurs"
L["25 Player Raid (Heroic)"] = "Raid 25 Joueurs (Héroïque)"
L["25 Player Raid (Normal)"] = "Raid 25 Joueurs (Normal)"
L["40 Man Raid"] = "Raid 40 Personnes"
L["40 Player Raid"] = "Raid 40 Joueurs"
L["5 Man Dungeon"] = "Donjon 5 joueurs"
--[[Translation missing --]]
L["A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."] = "A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."
L["Abbreviate"] = "Abréger"
--[[Translation missing --]]
L["AbbreviateLargeNumbers (Blizzard)"] = "AbbreviateLargeNumbers (Blizzard)"
--[[Translation missing --]]
L["AbbreviateNumbers (Blizzard)"] = "AbbreviateNumbers (Blizzard)"
L["Absorb"] = "Absorbe"
L["Absorb Display"] = "Affichage de l'Absorption"
--[[Translation missing --]]
L["Absorb Heal Display"] = "Absorb Heal Display"
L["Absorbed"] = "Absorbé"
L["Action Button Glow"] = "Bouton d'action surbrillant"
L["Action Usable"] = "Action utilisable"
L["Actions"] = "Actions"
L["Active"] = [=[Actif
]=]
L["Add"] = "Ajouter"
L["Add Missing Auras"] = "Ajouter les auras manquantes"
L["Additional Trigger Replacements"] = "Remplacements de Déclencheurs additionnels"
--[[Translation missing --]]
L["Advanced Caster's Target Check"] = "Advanced Caster's Target Check"
L["Affected"] = "Affecté"
L["Affected Unit Count"] = "Nombre d'unités Affectées"
--[[Translation missing --]]
L["Afk"] = "Afk"
L["Aggro"] = "Aggro"
L["Agility"] = "Agilité"
L["Ahn'Qiraj"] = "Ahn'Qiraj"
--[[Translation missing --]]
L["Alchemy Cast Bar"] = "Alchemy Cast Bar"
L["Alert Type"] = "Type d'alerte"
--[[Translation missing --]]
L["Algalon the Observer"] = "Algalon the Observer"
L["Alive"] = "En vie"
L["All"] = "Tous"
--[[Translation missing --]]
L["All States table contains a non table at key: '%s'."] = "All States table contains a non table at key: '%s'."
L["All Triggers"] = "Tous les déclencheurs"
L["Alliance"] = "Alliance"
L["Allow partial matches"] = "Permettre les correspondances partielles"
L["Alpha"] = "Opacité"
L["Alternate Power"] = "Puissance alternative"
L["Always"] = "Toujours"
L["Always active trigger"] = "Déclencheur toujours actif"
L["Always include realm"] = "Toujours inclure le royaume"
L["Always True"] = "Toujours Vrai"
L["Amount"] = "Quantité"
--[[Translation missing --]]
L["Anchoring"] = "Anchoring"
--[[Translation missing --]]
L["And Talent"] = "And Talent"
L["Animations"] = "Animations"
L["Anticlockwise"] = "Sens anti-horaire"
--[[Translation missing --]]
L["Anub'arak"] = "Anub'arak"
L["Anub'Rekhan"] = "Anub'Rekhan"
L["Any"] = "N'importe lequel"
L["Any Triggers"] = "Au moins un déclencheur"
L["AOE"] = "AOE"
L["Arcane Resistance"] = "Résistance aux arcanes"
--[[Translation missing --]]
L["Archavon the Stone Watcher"] = "Archavon the Stone Watcher"
L[ [=[Are you sure you want to run the |cffff0000EXPERIMENTAL|r repair tool?
This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=] ] = "Êtes-vous sûr de vouloir exécuter l'outil de réparation |cffff0000expérimental|r ? Cela écrasera toutes les modifications que vous avez apportées depuis la dernière mise à niveau de la base de données. Dernière mise à jour : %s"
L["Arena"] = "Arène"
L["Armor (%)"] = "Armure (%)"
L["Armor against Target (%)"] = "Armure contre Cible (%)"
--[[Translation missing --]]
L["Armor Peneration Percent"] = "Armor Peneration Percent"
--[[Translation missing --]]
L["Armor Peneration Rating"] = "Armor Peneration Rating"
L["Armor Rating"] = "Categorie d'armure"
L["Array"] = "Tableau"
L["Ascending"] = "Croissant"
--[[Translation missing --]]
L["Assembly of Iron"] = "Assembly of Iron"
L["Assigned Role"] = "Rôle assigné"
L["Assigned Role Icon"] = "Icône de rôle assigné"
--[[Translation missing --]]
L["Assist"] = "Assist"
L["At Least One Enemy"] = "Au moins un ennemi"
--[[Translation missing --]]
L["At missing Value"] = "At missing Value"
--[[Translation missing --]]
L["At Percent"] = "At Percent"
--[[Translation missing --]]
L["At Value"] = "At Value"
L["Attach to End"] = "Attacher à la Fin"
L["Attach to Start"] = "Attacher au Début"
L["Attack Power"] = "Pouvoir d'Attaque"
L["Attackable"] = "Attaquable"
L["Attackable Target"] = "Cible attackable"
L["Aura"] = "Aura"
L["Aura '%s': %s"] = "Aura '%s' : %s"
L["Aura Applied"] = "Aura appliquée"
L["Aura Applied Dose"] = "Dose de l'aura appliquée"
L["Aura Broken"] = "Aura Cassée"
L["Aura Broken Spell"] = "Sort de l'Aura Cassée"
--[[Translation missing --]]
L["Aura loaded"] = "Aura loaded"
L["Aura Name"] = "Nom de l'aura"
L["Aura Names"] = "Nom des auras"
L["Aura Refresh"] = "Aura rafraichie"
L["Aura Removed"] = "Aura Supprimé"
L["Aura Removed Dose"] = "Aura Supprimé Dose"
L["Aura Stack"] = "Pile d'aura"
L["Aura Type"] = "Type Aura"
--[[Translation missing --]]
L["Aura Version: %s"] = "Aura Version: %s"
L["Aura(s) Found"] = "Aura(s) Trouvée(s)"
L["Aura(s) Missing"] = "Aura(s) Manquante"
L["Aura:"] = "Aura:"
L["Auras:"] = "Auras:"
--[[Translation missing --]]
L["Auriaya"] = "Auriaya"
L["Author Options"] = "Options de l'Auteur"
L["Auto"] = "auto"
--[[Translation missing --]]
L["Autocast Shine"] = "Autocast Shine"
L["Automatic"] = "Automatique"
L["Automatic Length"] = "Longueur automatique"
L["Automatic Rotation"] = "Rotation automatique"
L["Avoidance (%)"] = "Evitement (%)"
L["Avoidance Rating"] = "Pourcentage Evitement "
L["Ayamiss the Hunter"] = "Ayamiss le Chasseur"
L["Back and Forth"] = "D'avant en arrière"
L["Background"] = "Arrière-plan"
L["Background Color"] = "Couleur d'arrière-plan"
--[[Translation missing --]]
L["Baltharus the Warborn"] = "Baltharus the Warborn"
L["Bar Color"] = "Couleur de barre"
L["Baron Geddon"] = "Baron Geddon"
--[[Translation missing --]]
L["Battle for Azeroth"] = "Battle for Azeroth"
L["Battle.net Whisper"] = "Message Battle.net"
L["Battleground"] = [=[Champ De Bataille 
]=]
--[[Translation missing --]]
L["Battleguard Sartura"] = "Battleguard Sartura"
L["BG>Raid>Party>Say"] = "BG>Raid>Groupe>Dire"
L["BG-System Alliance"] = "Système-BG Alliance"
L["BG-System Horde"] = "Système-BG Horde"
L["BG-System Neutral"] = "Système-BG Neutre"
L["Big Number"] = "Grand nombre"
L["BigWigs Addon"] = "Addon BigWigs"
L["BigWigs Message"] = "Message BigWigs"
--[[Translation missing --]]
L["BigWigs Stage"] = "BigWigs Stage"
L["BigWigs Timer"] = "Temps BigWigs"
--[[Translation missing --]]
L["Black Wing Lair"] = "Black Wing Lair"
--[[Translation missing --]]
L["Blacksmithing Cast Bar"] = "Blacksmithing Cast Bar"
L["Blizzard (2h | 3m | 10s | 2.4)"] = "Blizzard (2h | 3m | 10s | 2.4)"
L["Blizzard Combat Text"] = "Texte de Combat Blizzard"
--[[Translation missing --]]
L["Blizzard Cooldown Reduction"] = "Blizzard Cooldown Reduction"
L["Block"] = "Bloc"
L["Block (%)"] = "Blocage"
L["Block against Target (%)"] = "Blocage contre la cible"
L["Block Value"] = "Valeur du bloc"
L["Blocked"] = "Bloqué"
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
L["Border"] = "Encadrement"
L["Boss"] = "Boss"
L["Boss Emote"] = "Emote de boss"
L["Boss Whisper"] = "Chuchotement de Boss"
L["Bottom"] = "Bas"
L["Bottom Left"] = "Bas Gauche"
L["Bottom Right"] = "Bas Droite"
L["Bottom to Top"] = "De Bas en Haut"
L["Bounce"] = "Rebond"
L["Bounce with Decay"] = "Rebond décroissant"
--[[Translation missing --]]
L["Broodlord Lashlayer"] = "Broodlord Lashlayer"
L["Buff"] = "Amélioration"
L["Buff/Debuff"] = "Amélioration / affaiblissement"
L["Buffed/Debuffed"] = "Amélioré/Affaiblit"
--[[Translation missing --]]
L["Burning Crusade"] = "Burning Crusade"
L["Buru the Gorger"] = "Buru Grandgosier"
--[[Translation missing --]]
L["Callback function"] = "Callback function"
L["Can be used for e.g. checking if \"boss1target\" is the same as \"player\"."] = "Peut être utilisé pour par exemple vérifier si l'unité \"boss1target\" est la même que \"player\"."
L["Cancel"] = "Annuler"
--[[Translation missing --]]
L[ [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
--[[Translation missing --]]
L["Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."] = "Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."
L["Cast"] = "Incantation"
L["Cast Bar"] = "Barre d'incantation"
L["Cast Failed"] = "Incantation ratée"
L["Cast Start"] = "Incantation débutée"
L["Cast Success"] = "Incantation réussie"
L["Cast Type"] = "Type d'incantation"
L["Caster"] = "Lanceur de sort"
L["Caster Name"] = "Nom du Lanceur de sort "
L["Caster Realm"] = "Royaume du Lanceur de sort"
L["Caster Unit"] = "Unité lanceur de sort"
L["Caster's Target"] = "Cible du Lanceur de sort"
--[[Translation missing --]]
L["Cataclysm"] = "Cataclysm"
L["Ceil"] = "Cellule"
L["Center"] = "Centre"
--[[Translation missing --]]
L["Center, then alternating bottom and top"] = "Center, then alternating bottom and top"
--[[Translation missing --]]
L["Center, then alternating left and right"] = "Center, then alternating left and right"
--[[Translation missing --]]
L["Center, then alternating right and left"] = "Center, then alternating right and left"
--[[Translation missing --]]
L["Center, then alternating top and bottom"] = "Center, then alternating top and bottom"
L["Centered Horizontal"] = "Centré horizontalement"
--[[Translation missing --]]
L["Centered Horizontal, then Centered Vertical"] = "Centered Horizontal, then Centered Vertical"
--[[Translation missing --]]
L["Centered Horizontal, then Down"] = "Centered Horizontal, then Down"
--[[Translation missing --]]
L["Centered Horizontal, then Up"] = "Centered Horizontal, then Up"
L["Centered Vertical"] = "Centré verticalement"
--[[Translation missing --]]
L["Centered Vertical, then Centered Horizontal"] = "Centered Vertical, then Centered Horizontal"
--[[Translation missing --]]
L["Centered Vertical, then Left"] = "Centered Vertical, then Left"
--[[Translation missing --]]
L["Centered Vertical, then Right"] = "Centered Vertical, then Right"
L["Changed"] = "Modifié"
L["Channel"] = "Canal"
L["Channel (Spell)"] = "Canalisation"
L["Character Stats"] = "Stats Personnage"
L["Character Type"] = "Type de Personnage"
L["Charge gained/lost"] = "Charge gagné/perdu"
L["Charged Combo Point (1)"] = "Point de combo chargé (1)"
L["Charged Combo Point (2)"] = "Point de combo chargé (2)"
L["Charged Combo Point (3)"] = "Point de combo chargé (3)"
L["Charged Combo Point (4)"] = "Point de combo chargé (4)"
L["Charged Combo Point 1"] = "Point de combo chargé 1"
L["Charged Combo Point 2"] = "Point de combo chargé 2"
L["Charged Combo Point 3"] = "Point de combo chargé 3"
L["Charged Combo Point 4"] = "Point de combo chargé 4"
L["Charges"] = "Charges"
--[[Translation missing --]]
L["Charges Changed Event"] = "Charges Changed Event"
--[[Translation missing --]]
L["Charging"] = "Charging"
L["Chat Frame"] = "Fenêtre de discussion"
L["Chat Message"] = "Message écrit"
--[[Translation missing --]]
L["Check if a single talent match a Rank"] = "Check if a single talent match a Rank"
--[[Translation missing --]]
L["Check nameplate's target every 0.2s"] = "Check nameplate's target every 0.2s"
L["Chromaggus"] = "Chromaggus"
L["Circle"] = "Cercle"
L["Clamp"] = "Attache"
L["Class"] = "Classe"
L["Class and Specialization"] = "Classe et spécialisation"
--[[Translation missing --]]
L["Classic"] = "Classic"
L["Classification"] = "Classification"
L["Clockwise"] = "Sens horaire"
L["Clone per Event"] = "Clone pour chaque Évènement"
L["Clone per Match"] = "Clone pour chaque Correspondance"
L["Color"] = "Couleur"
--[[Translation missing --]]
L["Color Animation"] = "Color Animation"
L["Combat Log"] = "Journal de combat"
--[[Translation missing --]]
L[ [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=] ] = [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=]
--[[Translation missing --]]
L["Condition Custom Text"] = "Condition Custom Text"
L["Conditions"] = "Conditions"
L["Contains"] = "Contient"
--[[Translation missing --]]
L["Continuously update Movement Speed"] = "Continuously update Movement Speed"
L["Cooldown"] = "Temps de recharge"
--[[Translation missing --]]
L["Cooldown bars show time before an ability is ready to be use, BigWigs prefix them with '~'"] = "Cooldown bars show time before an ability is ready to be use, BigWigs prefix them with '~'"
L["Cooldown Progress (Item)"] = "Progression du temps de recharge (Objet)"
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
L["Count"] = "Nombre"
L["Counter Clockwise"] = "Sens Antihoraire"
L["Create"] = "Créer"
L["Critical"] = "Critique"
L["Critical (%)"] = "Critique (%)"
L["Critical Rating"] = "Évaluation Critique"
L["Crowd Controlled"] = "Contrôlé"
L["Crushing"] = "Ecrasant"
L["C'thun"] = "C'thun"
--[[Translation missing --]]
L["Current Essence"] = "Current Essence"
--[[Translation missing --]]
L["Current Experience"] = "Current Experience"
--[[Translation missing --]]
L["Current Movement Speed (%)"] = "Current Movement Speed (%)"
--[[Translation missing --]]
L["Current Stage"] = "Current Stage"
L[ [=[Current Zone Group
]=] ] = "Zone actuelle du groupe"
L[ [=[Current Zone
]=] ] = "Zone actuelle"
L["Curse"] = "Malédiction"
L["Custom"] = "Personnalisé"
--[[Translation missing --]]
L["Custom Action"] = "Custom Action"
--[[Translation missing --]]
L["Custom Anchor"] = "Custom Anchor"
--[[Translation missing --]]
L["Custom Check"] = "Custom Check"
L["Custom Color"] = "Couleur personnalisée"
--[[Translation missing --]]
L["Custom Condition Code"] = "Custom Condition Code"
L["Custom Configuration"] = "Configuration personnalisée"
--[[Translation missing --]]
L["Custom Fade Animation"] = "Custom Fade Animation"
L["Custom Function"] = "Fonction personnalisée"
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
L["Damage"] = "Dégâts"
L["Damage Shield"] = "Bouclier de dégâts"
L["Damage Shield Missed"] = "Bouclier de dégâts raté"
L["Damage Split"] = "Répartition des dégâts"
L["DBM Announce"] = "Annonce DBM"
--[[Translation missing --]]
L["DBM Stage"] = "DBM Stage"
L["DBM Timer"] = "Temps DBM"
--[[Translation missing --]]
L["Death"] = "Death"
L["Death Knight Rune"] = "Rune de Chevalier de la Mort"
--[[Translation missing --]]
L["Deathbringer Saurfang"] = "Deathbringer Saurfang"
L["Debuff"] = "Affaiblissement"
--[[Translation missing --]]
L["Debuff Class"] = "Debuff Class"
--[[Translation missing --]]
L["Debuff Class Icon"] = "Debuff Class Icon"
L["Debuff Type"] = "Type d’affaiblissement"
--[[Translation missing --]]
L["Debug Log contains more than 1000 entries"] = "Debug Log contains more than 1000 entries"
--[[Translation missing --]]
L["Debug Logging enabled"] = "Debug Logging enabled"
--[[Translation missing --]]
L["Debug Logging enabled for '%s'"] = "Debug Logging enabled for '%s'"
L["Defense"] = "Défense"
L["Deflect"] = "Déviation"
L["Desaturate"] = "Désaturer"
L["Desaturate Background"] = "Désaturer l'Arrière-plan"
L["Desaturate Foreground"] = "Désaturer le Premier-plan"
L["Descending"] = "Décroissant"
L["Description"] = "Description"
L["Dest Raid Mark"] = "Marqueur de raid"
--[[Translation missing --]]
L["Destination Affiliation"] = "Destination Affiliation"
--[[Translation missing --]]
L["Destination GUID"] = "Destination GUID"
L["Destination Name"] = "Nom de destination"
--[[Translation missing --]]
L["Destination NPC Id"] = "Destination NPC Id"
--[[Translation missing --]]
L["Destination Object Type"] = "Destination Object Type"
--[[Translation missing --]]
L["Destination Reaction"] = "Destination Reaction"
L["Destination Unit"] = "Unité de destination"
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
L["Disease"] = "Maladie"
L["Dispel"] = "Dissipation"
L["Dispel Failed"] = "Dissipation échouée"
L["Display"] = "Affichage"
L["Distance"] = "Distance"
--[[Translation missing --]]
L["Do Not Disturb"] = "Do Not Disturb"
L["Dodge"] = "Esquive"
L["Dodge (%)"] = "Esquive (%)"
L["Dodge Rating"] = "Pourcentage Esquive"
L["Down"] = "Bas"
--[[Translation missing --]]
L["Down, then Centered Horizontal"] = "Down, then Centered Horizontal"
L["Down, then Left"] = "Bas puis Gauche"
L["Down, then Right"] = "Bas puis Droite"
--[[Translation missing --]]
L["Dragonflight"] = "Dragonflight"
--[[Translation missing --]]
L["Dragonriding"] = "Dragonriding"
L["Drain"] = "Drain"
L["Dropdown Menu"] = "Menu Déroulant"
--[[Translation missing --]]
L["Dumping table"] = "Dumping table"
L["Dungeon (Heroic)"] = "Donjon (Héroïque)"
L["Dungeon (Mythic)"] = "Donjon (Mythique)"
--[[Translation missing --]]
L["Dungeon (Mythic+)"] = "Dungeon (Mythic+)"
L["Dungeon (Normal)"] = "Donjon (Normal)"
L["Dungeon (Timewalking)"] = "Donjon (Marcheurs du temps)"
L["Dungeons"] = "Donjons"
L["Durability Damage"] = "Perte de durabilité"
L["Durability Damage All"] = "Perte de durabilité sur tout"
--[[Translation missing --]]
L["Duration Function"] = "Duration Function"
--[[Translation missing --]]
L["Duration Function (fallback state)"] = "Duration Function (fallback state)"
L["Dynamic Information"] = "Information Dynamique"
--[[Translation missing --]]
L["Ease In"] = "Ease In"
L["Ease In and Out"] = "Faciliter l'entrée et la sortie"
--[[Translation missing --]]
L["Ease Out"] = "Ease Out"
L["Ebonroc"] = "Rochébène"
L["Edge"] = "Marge"
--[[Translation missing --]]
L["Edge of Madness"] = "Edge of Madness"
L["Elide"] = "Elider"
--[[Translation missing --]]
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
L["Empty"] = "Vide"
--[[Translation missing --]]
L["Enables (incorrect) round down of seconds, which was the previous default behavior."] = "Enables (incorrect) round down of seconds, which was the previous default behavior."
L["Enchant Applied"] = "Enchantement appliqué"
L["Enchant Found"] = "Enchantement présent"
L["Enchant Missing"] = "Enchantement manquant"
L["Enchant Name or ID"] = "Nom ou ID de l'Enchantement"
L["Enchant Removed"] = "Enchantement retiré"
L["Enchanted"] = "Enchanté"
--[[Translation missing --]]
L["Enchanting Cast Bar"] = "Enchanting Cast Bar"
L["Encounter ID(s)"] = "ID de la Rencontre"
L["Energize"] = "Gain d'énergie"
L["Enrage"] = "Enrager"
--[[Translation missing --]]
L["Enter static or relative values with %"] = "Enter static or relative values with %"
L["Entering"] = "Entrer"
L["Entering/Leaving Combat"] = "Entrer/Sortir de Combat"
--[[Translation missing --]]
L["Entering/Leaving Encounter"] = "Entering/Leaving Encounter"
--[[Translation missing --]]
L["Entry Order"] = "Entry Order"
L["Environment Type"] = "Type d'environnement"
L["Environmental"] = "Environnement"
L["Equipment Set"] = "Ensemble d'Equipement"
L["Equipment Set Equipped"] = "Ensemble d'Equipement Équipé"
L["Equipment Slot"] = "Emplacement d'équipement"
L["Equipped"] = "Équipé "
L["Error"] = "Erreur"
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
L["Error Frame"] = "Fenêtre d'erreur"
--[[Translation missing --]]
L["ERROR in '%s' unknown or incompatible sub element type '%s'"] = "ERROR in '%s' unknown or incompatible sub element type '%s'"
L["Error not receiving display information from %s"] = "Erreur de non-réception d'informations d'affichage de %s"
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
L["Evade"] = "Evite"
L["Event"] = "Evènement"
L["Event(s)"] = "Evènement(s)"
L["Every Frame"] = "Chaque image"
L["Every Frame (High CPU usage)"] = "Chaque image (utilisation importante du CPU)"
--[[Translation missing --]]
L["Evoker Essence"] = "Evoker Essence"
L["Experience (%)"] = "Expérience (%)"
--[[Translation missing --]]
L["Expertise Bonus"] = "Expertise Bonus"
--[[Translation missing --]]
L["Expertise Rating"] = "Expertise Rating"
L["Extend Outside"] = "Étendre à l'extérieur"
L["Extra Amount"] = "Quantité extra"
L["Extra Attacks"] = "Attaque extra"
L["Extra Spell Name"] = "Nom de Sort supplémentaire"
L["Faction"] = "Faction"
--[[Translation missing --]]
L["Faction Champions"] = "Faction Champions"
L["Faction Name"] = "Nom de la Faction"
L["Faction Reputation"] = "Réputation envers la Faction"
--[[Translation missing --]]
L["Fade Animation"] = "Fade Animation"
L["Fade In"] = "Fondu entrant"
L["Fade Out"] = "Fondu sortant"
L["Fail Alert"] = "Alerte d'échec"
--[[Translation missing --]]
L["Fallback"] = "Fallback"
--[[Translation missing --]]
L["Fallback Icon"] = "Fallback Icon"
L["False"] = "Faux"
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
L["Fire Resistance"] = "Résistance au feu"
L["Firemaw"] = "Gueule-de-feu"
L["First"] = "Premier"
L["First Value of Tooltip Text"] = "Première Valeur du Texte de l'Info-bulle"
L["Fixed"] = "Fixé"
--[[Translation missing --]]
L["Fixed Names"] = "Fixed Names"
--[[Translation missing --]]
L["Fixed Size"] = "Fixed Size"
--[[Translation missing --]]
L["Flame Leviathan"] = "Flame Leviathan"
--[[Translation missing --]]
L["Flamegor"] = "Flamegor"
L["Flash"] = "Flash"
L["Flex Raid"] = "Raid Dynamique"
L["Flip"] = "Retourner"
L["Floor"] = "Plancher"
L["Focus"] = "Focalisation"
--[[Translation missing --]]
L["Font"] = "Font"
L["Font Size"] = "Taille de Police"
--[[Translation missing --]]
L["Forbidden function or table: %s"] = "Forbidden function or table: %s"
L["Foreground"] = "Premier plan"
L["Foreground Color"] = "Couleur de Premier Plan"
L["Form"] = "Forme"
L["Format"] = "Format"
--[[Translation missing --]]
L["Formats |cFFFF0000%unit|r"] = "Formats |cFFFF0000%unit|r"
--[[Translation missing --]]
L["Formats Player's |cFFFF0000%guid|r"] = "Formats Player's |cFFFF0000%guid|r"
--[[Translation missing --]]
L["Forward"] = "Forward"
--[[Translation missing --]]
L["Forward, Reverse Loop"] = "Forward, Reverse Loop"
--[[Translation missing --]]
L["Frame Selector"] = "Frame Selector"
L["Frequency"] = "Fréquence"
--[[Translation missing --]]
L["Freya"] = "Freya"
L["Friendly"] = "Amical"
L["Friendly Fire"] = "Tir ami"
--[[Translation missing --]]
L["Friendship Max Rank"] = "Friendship Max Rank"
--[[Translation missing --]]
L["Friendship Rank"] = "Friendship Rank"
--[[Translation missing --]]
L["Frost"] = "Frost"
L["Frost Resistance"] = "Résistance au givre"
--[[Translation missing --]]
L["Frost Rune #1"] = "Frost Rune #1"
--[[Translation missing --]]
L["Frost Rune #2"] = "Frost Rune #2"
L["Full"] = "Plein"
--[[Translation missing --]]
L["Full Bar"] = "Full Bar"
L["Full/Empty"] = "Plein/Vide"
--[[Translation missing --]]
L["Gahz'ranka"] = "Gahz'ranka"
L["Gained"] = "Gagné"
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
L["Glancing"] = "Erafle"
L["Global Cooldown"] = "Temps de recharge global"
L["Glow"] = "Surbrillance"
--[[Translation missing --]]
L["Glow External Element"] = "Glow External Element"
--[[Translation missing --]]
L["Gluth"] = "Gluth"
--[[Translation missing --]]
L["Golemagg the Incinerator"] = "Golemagg the Incinerator"
--[[Translation missing --]]
L["Gothik the Harvester"] = "Gothik the Harvester"
L["Gradient"] = "Dégradé"
--[[Translation missing --]]
L["Gradient Color"] = "Gradient Color"
--[[Translation missing --]]
L["Gradient Enabled"] = "Gradient Enabled"
--[[Translation missing --]]
L["Gradient Orientation"] = "Gradient Orientation"
L["Gradient Pulse"] = "Pulsation dégradée"
--[[Translation missing --]]
L["Grand Widow Faerlina"] = "Grand Widow Faerlina"
L["Grid"] = "Grille"
--[[Translation missing --]]
L["Grobbulus"] = "Grobbulus"
L["Group"] = "Groupe"
L["Group Arrangement"] = "Arrangement du Groupe"
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
L["Grow"] = "Grandir"
L["GTFO Alert"] = "Alerte GTFO"
--[[Translation missing --]]
L["Guardian"] = "Guardian"
L["Guild"] = "Guilde"
--[[Translation missing --]]
L["Gunship Battle"] = "Gunship Battle"
--[[Translation missing --]]
L["Hakkar"] = "Hakkar"
--[[Translation missing --]]
L["Halion"] = "Halion"
L["Has Target"] = "A une Cible"
L["Has Vehicle UI"] = "A l'UI véhicule"
L["HasPet"] = "Avoir un familier (vivant)"
L["Haste (%)"] = "Hâte (%)"
L["Haste Rating"] = "Score de hâte"
L["Heal"] = "Soin"
--[[Translation missing --]]
L["Heal Absorb"] = "Heal Absorb"
--[[Translation missing --]]
L["Heal Absorbed"] = "Heal Absorbed"
L["Health"] = "Vie"
L["Health (%)"] = "Vie (%)"
--[[Translation missing --]]
L["Health Deficit"] = "Health Deficit"
--[[Translation missing --]]
L["Heigan the Unclean"] = "Heigan the Unclean"
L["Height"] = "Hauteur"
--[[Translation missing --]]
L["Heroic Party"] = "Heroic Party"
L["Hide"] = "Cacher"
--[[Translation missing --]]
L["Hide 0 cooldowns"] = "Hide 0 cooldowns"
--[[Translation missing --]]
L["Hide Timer Text"] = "Hide Timer Text"
L["High Damage"] = "Dégâts élevés"
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
L["Higher Than Tank"] = "Plus haut que le tank"
--[[Translation missing --]]
L["Hit (%)"] = "Hit (%)"
--[[Translation missing --]]
L["Hit Rating"] = "Hit Rating"
--[[Translation missing --]]
L["Hodir"] = "Hodir"
L["Holy Resistance"] = "Résistance au sacré"
L["Horde"] = "Horde"
--[[Translation missing --]]
L["Horizontal"] = "Horizontal"
L["Hostile"] = "Hostile"
L["Hostility"] = "Hostilité"
L["Humanoid"] = "Humanoïde"
L["Hybrid"] = "Hybride"
--[[Translation missing --]]
L["Icecrown Citadel"] = "Icecrown Citadel"
L["Icon"] = "Icône"
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
L["Ignore Dead"] = "Ignorer la mort"
L["Ignore Disconnected"] = "Ignorer les déconnectés"
L["Ignore Rune CD"] = "Ignorer le rechargement des runes"
L["Ignore Rune CDs"] = "Ignorer les rechargements des runes"
L["Ignore Self"] = "Ignorer soi-même"
L["Immune"] = "Immunité"
L["Important"] = "Important"
--[[Translation missing --]]
L["Importing will start after combat ends."] = "Importing will start after combat ends."
L["In Combat"] = "En combat"
L["In Encounter"] = "En rencontre"
L["In Group"] = "En groupe"
L["In Party"] = "En groupe"
L["In Pet Battle"] = "En combat de mascottes"
L["In Raid"] = "En raid"
L["In Vehicle"] = "Dans un véhicule"
L["Include Bank"] = "Inclure Banque"
L["Include Charges"] = "Inclure charges"
--[[Translation missing --]]
L["Include Death Runes"] = "Include Death Runes"
L["Include Pets"] = "Inclure les familiers"
L["Incoming Heal"] = "Soins en Cours"
--[[Translation missing --]]
L["Increase Precision Below"] = "Increase Precision Below"
--[[Translation missing --]]
L["Increases by one per stage or intermission."] = "Increases by one per stage or intermission."
L["Information"] = "Information"
L["Inherited"] = "Hérité"
L["Instakill"] = "Mort instant."
--[[Translation missing --]]
L["Install the addons BugSack and BugGrabber for detailed error logs."] = "Install the addons BugSack and BugGrabber for detailed error logs."
L["Instance"] = "Instance"
L["Instance Difficulty"] = "Difficulté de l'Instance"
L["Instance Size Type"] = "Taille de l'instance"
L["Instance Type"] = "Type d'instance"
--[[Translation missing --]]
L["Instructor Razuvious"] = "Instructor Razuvious"
L["Insufficient Resources"] = "Ressources insuffisantes"
L["Intellect"] = "Intelligence"
L["Interrupt"] = "Interruption"
--[[Translation missing --]]
L["Interrupt School"] = "Interrupt School"
--[[Translation missing --]]
L["Interrupted School Text"] = "Interrupted School Text"
L["Interruptible"] = "Interruptible"
L["Inverse"] = "Inverse"
L["Inverse Pet Behavior"] = "Inverser le Comportement du Familier"
--[[Translation missing --]]
L["Is Away from Keyboard"] = "Is Away from Keyboard"
--[[Translation missing --]]
L["Is Death Rune"] = "Is Death Rune"
L["Is Exactly"] = "Est exactement"
L["Is Moving"] = "Est en mouvement"
L["Is Off Hand"] = "Est une Main gauche"
L["is useable"] = "est utilisable"
--[[Translation missing --]]
L["Island Expedition (Heroic)"] = "Island Expedition (Heroic)"
--[[Translation missing --]]
L["Island Expedition (Mythic)"] = "Island Expedition (Mythic)"
--[[Translation missing --]]
L["Island Expedition (Normal)"] = "Island Expedition (Normal)"
--[[Translation missing --]]
L["Island Expeditions (PvP)"] = "Island Expeditions (PvP)"
L["Item"] = "Objet"
L["Item Bonus Id"] = "ID du bonus de l'objet"
L["Item Bonus Id Equipped"] = "ID du bonus de l'objet équipé"
L["Item Count"] = "Nombre d'objets"
L["Item Equipped"] = "Objet équipé"
--[[Translation missing --]]
L["Item Id"] = "Item Id"
L["Item in Range"] = "Objet à porté"
--[[Translation missing --]]
L["Item Name"] = "Item Name"
L["Item Set Equipped"] = "Ensemble d'objets équipé"
L["Item Set Id"] = "ID de l'Ensemble d'Equipement"
--[[Translation missing --]]
L["Item Slot"] = "Item Slot"
--[[Translation missing --]]
L["Item Slot String"] = "Item Slot String"
L["Item Type"] = "Type d'objet"
L["Item Type Equipped"] = "Type d'objet équipé"
--[[Translation missing --]]
L["Jewelcrafting Cast Bar"] = "Jewelcrafting Cast Bar"
--[[Translation missing --]]
L["Jin'do the Hexxer"] = "Jin'do the Hexxer"
--[[Translation missing --]]
L["Journal Stage"] = "Journal Stage"
L["Keep Inside"] = "Garder à l'Intérieur"
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
L["Large"] = "Large"
--[[Translation missing --]]
L["Latency"] = "Latency"
--[[Translation missing --]]
L["Leader"] = "Leader"
L["Least remaining time"] = "Moins de temps restant"
--[[Translation missing --]]
L["Leatherworking Cast Bar"] = "Leatherworking Cast Bar"
L["Leaving"] = "Quitter"
L["Leech"] = "Drain"
L["Leech (%)"] = "Ponction (%)"
L["Leech Rating"] = "Score de ponction"
L["Left"] = "Gauche"
L["Left to Right"] = "De Gauche à Droite"
--[[Translation missing --]]
L["Left, then Centered Vertical"] = "Left, then Centered Vertical"
L["Left, then Down"] = "Gauche, puis bas"
L["Left, then Up"] = "Gauche, puis haut"
--[[Translation missing --]]
L["Legacy Looking for Raid"] = "Legacy Looking for Raid"
L["Legacy RGB Gradient"] = "Dégradé RVB Hérité"
L["Legacy RGB Gradient Pulse"] = "Impulsion de Dégradé RVB héritée"
--[[Translation missing --]]
L["Legacy Spellname"] = "Legacy Spellname"
--[[Translation missing --]]
L["Legion"] = "Legion"
L["Length"] = "Longueur"
L["Level"] = "Niveau"
L["Limited"] = "Limité"
--[[Translation missing --]]
L["Lines & Particles"] = "Lines & Particles"
L["Load Conditions"] = "Conditions de Chargement"
--[[Translation missing --]]
L["Loatheb"] = "Loatheb"
--[[Translation missing --]]
L["Looking for Raid"] = "Looking for Raid"
L["Loop"] = "Boucle"
--[[Translation missing --]]
L["Lord Jaraxxus"] = "Lord Jaraxxus"
--[[Translation missing --]]
L["Lord Marrowgar"] = "Lord Marrowgar"
L["Lost"] = "Perdu"
L["Low Damage"] = "Dégâts faibles"
L["Lower Than Tank"] = "Plus bas que le tank"
--[[Translation missing --]]
L["Lua error"] = "Lua error"
--[[Translation missing --]]
L["Lua error in aura '%s': %s"] = "Lua error in aura '%s': %s"
--[[Translation missing --]]
L["Lucifron"] = "Lucifron"
--[[Translation missing --]]
L["Maexxna"] = "Maexxna"
L["Magic"] = "Magique"
--[[Translation missing --]]
L["Magmadar"] = "Magmadar"
L["Main Stat"] = "Caractéristique principale"
--[[Translation missing --]]
L["Majordomo Executus"] = "Majordomo Executus"
L["Malformed WeakAuras link"] = "Lien WeakAuras mal formé"
--[[Translation missing --]]
L["Malygos"] = "Malygos"
L["Manual Rotation"] = "Rotation manuelle"
L["Marked First"] = "Marqué en premier"
L["Marked Last"] = "Marqué en dernier"
L["Master"] = "Maître"
L["Mastery (%)"] = "Maitrise (%)"
L["Mastery Rating"] = "Score de maîtrise"
L["Match Count"] = "taux de rencontre"
--[[Translation missing --]]
L["Match Count per Unit"] = "Match Count per Unit"
L["Matches (Pattern)"] = "Correspond (format)"
--[[Translation missing --]]
L[ [=[Matches stage number of encounter journal.
Intermissions are .5
E.g. 1;2;1;2;2.5;3]=] ] = [=[Matches stage number of encounter journal.
Intermissions are .5
E.g. 1;2;1;2;2.5;3]=]
--[[Translation missing --]]
L["Max Char "] = "Max Char "
L["Max Charges"] = "Charges Max"
--[[Translation missing --]]
L["Max Health"] = "Max Health"
--[[Translation missing --]]
L["Max Power"] = "Max Power"
L["Maximum"] = "Maximum"
L["Maximum Estimate"] = "Estimation Maximale"
--[[Translation missing --]]
L["Media"] = "Media"
L["Medium"] = "Moyen"
--[[Translation missing --]]
L["Melee"] = "Melee"
--[[Translation missing --]]
L["Melee Haste (%)"] = "Melee Haste (%)"
L["Message"] = "Message"
L["Message Type"] = "Type de message"
L["Message type:"] = "Type de message :"
L["Meta Data"] = "Métadonnées"
--[[Translation missing --]]
L["Mimiron"] = "Mimiron"
--[[Translation missing --]]
L["Mine"] = "Mine"
L["Minimum"] = "Minimal"
L["Minimum Estimate"] = "Estimation minimale"
--[[Translation missing --]]
L["Minus (Small Nameplate)"] = "Minus (Small Nameplate)"
L["Mirror"] = "Miroir"
L["Miss"] = "Raté"
L["Miss Type"] = "Type de raté"
L["Missed"] = "Raté"
L["Missing"] = "Manquant"
--[[Translation missing --]]
L["Mists of Pandaria"] = "Mists of Pandaria"
L["Moam"] = "Moam"
L["Model"] = "Modèle"
--[[Translation missing --]]
L["Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"] = "Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"
--[[Translation missing --]]
L["Molten Core"] = "Molten Core"
L["Monochrome"] = "Monochrome"
L["Monochrome Outline"] = "Contour monochrome"
L["Monochrome Thick Outline"] = "Contour épais monochrome"
L["Monster Emote"] = "Emote de Monstre"
L["Monster Party"] = "Groupe de Monstre"
L["Monster Say"] = "Dire de Monstre"
L["Monster Whisper"] = "Chuchotement de Monstre"
L["Monster Yell"] = "Cri de monstre"
L["Most remaining time"] = "Plus de temps restant"
L["Mounted"] = "En monture"
L["Mouse Cursor"] = "Curseur de Souris"
L["Movement Speed Rating"] = [=[Score de vitesse
]=]
L["Multi-target"] = "Multi-cibles"
L["Mythic Keystone"] = "Clé mythique"
L["Mythic+ Affix"] = "Affixe de Mythique +"
L["Name"] = "Nom"
--[[Translation missing --]]
L["Name Function"] = "Name Function"
--[[Translation missing --]]
L["Name Function (fallback state)"] = "Name Function (fallback state)"
L["Name of Caster's Target"] = "Nom de la cible du lanceur"
L["Name/Realm of Caster's Target"] = "Nom/Royaume de la Cible du Lanceur de sort"
L["Nameplate"] = "Barre de vie"
--[[Translation missing --]]
L["Nameplate Type"] = "Nameplate Type"
L["Nameplates"] = "Barres de vie"
L["Names of affected Players"] = "Noms des joueurs affectés"
L["Names of unaffected Players"] = "Noms des joueurs non affectés"
L["Nature Resistance"] = "Résistance à la nature"
L["Naxxramas"] = "Naxxramas"
L["Nefarian"] = "Nefarian"
L["Neutral"] = "Neutre"
L["Never"] = "Jamais"
L["Next Combat"] = "Prochain combat"
--[[Translation missing --]]
L["Next Encounter"] = "Next Encounter"
--[[Translation missing --]]
L["No Extend"] = "No Extend"
L["No Instance"] = "Aucune instance"
L["No Profiling information saved."] = "Aucune information de profilage enregistrée."
L["None"] = "Aucun"
L["Non-player Character"] = "Personnage non-joueur"
L["Normal"] = "Normal"
--[[Translation missing --]]
L["Normal Party"] = "Normal Party"
--[[Translation missing --]]
L["Northrend Beasts"] = "Northrend Beasts"
L["Not in Group"] = "N'est pas en groupe"
L["Not in Smart Group"] = "N'est pas dans un petit groupe"
L["Not on Cooldown"] = "Pas en recharge"
L["Not On Threat Table"] = "Pas sur la table de menace"
L["Note, that cross realm transmission is possible if you are on the same group"] = "Notez que la transmission inter-domaines est possible que si vous êtes dans le même groupe"
--[[Translation missing --]]
L["Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."] = "Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."
L["Note: 'Hide Alone' is not available in the new aura tracking system. A load option can be used instead."] = "Remarque: \"Cacher Seul\" n'est pas disponible dans le nouveau système de suivi d'aura. Une option de chargement peut être utilisée à la place."
L["Note: The available text replacements for multi triggers match the normal triggers now."] = "Remarque: Les remplacements de texte disponibles pour les déclencheurs multiples correspondent maintenant aux déclencheurs normaux."
--[[Translation missing --]]
L["Note: This trigger relies on the WoW API, which returns incorrect information in some cases."] = "Note: This trigger relies on the WoW API, which returns incorrect information in some cases."
L["Note: This trigger type estimates the range to the hitbox of a unit. The actual range of friendly players is usually 3 yards more than the estimate. Range checking capabilities depend on your current class and known abilities as well as the type of unit being checked. Some of the ranges may also not work with certain NPCs.|n|n|cFFAAFFAAFriendly Units:|r %s|n|cFFFFAAAAHarmful Units:|r %s|n|cFFAAAAFFMiscellanous Units:|r %s"] = "Remarque : Ce type de déclencheur estime la portée du masque de collision (hitbox) d'une unité. La portée réelle des joueurs amis est généralement supérieure de 3 mètres à l'estimation. Les capacités de vérification de la portée dépendent de votre classe actuelle et de vos capacités connues, ainsi que du type d'unité à vérifier. Certaines des portées peuvent également ne pas fonctionner avec certains PNJ.|n|n|cFFAAFFAAUnités amies :|r %s|n|cFFFFAAAAUnités nuisibles :|r %s|n|cFFAAAAFFUnités diverses :|r %s"
L["Noth the Plaguebringer"] = "Noth le Porte-peste"
L["NPC"] = "PNJ"
L["Npc ID"] = "ID PNJ"
L["Number"] = "Nombre"
L["Number Affected"] = "Nombre affecté"
L["Object"] = "Objet"
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
L["Officer"] = "Officier"
--[[Translation missing --]]
L["Offset from progress"] = "Offset from progress"
L["Offset Timer"] = "Décalage de la durée"
--[[Translation missing --]]
L["Old Blizzard (2h | 3m | 10s | 2.4)"] = "Old Blizzard (2h | 3m | 10s | 2.4)"
L["On Cooldown"] = "En recharge"
--[[Translation missing --]]
L["On Taxi"] = "On Taxi"
--[[Translation missing --]]
L["Only if on a different realm"] = "Only if on a different realm"
L["Only if Primary"] = "Seulement si primaire"
L["Onyxia"] = "Onyxia"
L["Onyxia's Lair"] = "Repaire d'Onyxia"
L["Opaque"] = "Opaque"
L["Option Group"] = "Groupe d'options"
--[[Translation missing --]]
L["Options could not be loaded, the addon is %s"] = "Options could not be loaded, the addon is %s"
L["Options will finish loading after combat ends."] = "Les options finiront de se charger après la fin du combat."
L["Options will open after the login process has completed."] = "Les options s'ouvriront après la fin du chargement."
--[[Translation missing --]]
L["Or Talent"] = "Or Talent"
L["Orbit"] = "Orbite"
L["Orientation"] = "Orientation"
L["Ossirian the Unscarred"] = "Ossirian l'Intouché"
L["Other"] = "Autre"
L["Other Addons"] = "Autre Addons"
L["Other Events"] = "Autre Événements"
L["Ouro"] = "Ouro"
L["Outline"] = "Contour"
L["Overhealing"] = "Soin en excès"
L["Overkill"] = "Dégâts en excès"
L["Overlay %s"] = "Superposer %s"
L["Overlay Charged Combo Points"] = "Superposer les Points de combo chargés"
L["Overlay Cost of Casts"] = "Superposer le coût des incantations"
L["Overlay Latency"] = "Superposer la Latence"
L["Parry"] = "Parade"
L["Parry (%)"] = "Parade (%)"
L["Parry Rating"] = "Score de parade"
L["Party"] = "Groupe"
L["Party Kill"] = "Tué par le groupe"
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
L["Paused"] = "En pause"
L["Periodic Spell"] = "Sort périodique"
L["Personal Resource Display"] = "Cadre des ressources personnelles"
L["Pet"] = "Familier "
L["Pet Behavior"] = "Comportement du familier"
L["Pet Specialization"] = "Spécialisation du familier"
L["Pet Spell"] = "Sort du familier"
L["Pets only"] = "Familiers seulement"
L["Phase"] = "Phase"
L["Pixel Glow"] = "Pixel surbrillant"
L["Placement"] = "Placement"
--[[Translation missing --]]
L["Placement Mode"] = "Placement Mode"
L["Play"] = "Jouer"
L["Player"] = "Joueur"
L["Player Character"] = "Personnage Joueur"
L["Player Class"] = "Classe du joueur"
L["Player Effective Level"] = "Niveau effectif du joueur"
--[[Translation missing --]]
L["Player Experience"] = "Player Experience"
L["Player Faction"] = "Faction joueur"
L["Player Level"] = "Niveau du joueur"
L["Player Name/Realm"] = "Nom du joueur / serveur"
L["Player Race"] = "Race du joueur"
--[[Translation missing --]]
L["Player Rest"] = "Player Rest"
L["Player(s) Affected"] = "Joueur(s) affecté(s)"
L["Player(s) Not Affected"] = "Joueur(s) non affecté(s)"
--[[Translation missing --]]
L["Player/Unit Info"] = "Player/Unit Info"
L["Players and Pets"] = "Joueurs et familiers"
L["Poison"] = "Poison"
L["Power"] = "Puissance"
L["Power (%)"] = "Puissance (%)"
--[[Translation missing --]]
L["Power Deficit"] = "Power Deficit"
L["Power Type"] = "Type de puissance"
L["Precision"] = "Précision"
L["Preset"] = "Préréglé"
--[[Translation missing --]]
L["Princess Huhuran"] = "Princess Huhuran"
--[[Translation missing --]]
L["Print Profiling Results"] = "Print Profiling Results"
--[[Translation missing --]]
L["Professor Putricide"] = "Professor Putricide"
L["Profiling already started."] = "Le profilage a déjà commencé."
--[[Translation missing --]]
L["Profiling automatically started."] = "Profiling automatically started."
L["Profiling not running."] = "Le profilage ne fonctionne pas."
L["Profiling started."] = "Le profilage a commencé."
--[[Translation missing --]]
L["Profiling started. It will end automatically in %d seconds"] = "Profiling started. It will end automatically in %d seconds"
L["Profiling still running, stop before trying to print."] = "Le profilage est toujours en cours, arrêtez avant d'essayer d'imprimer."
L["Profiling stopped."] = "Le profilage s'est arrêté."
L["Progress"] = "Progrès"
L["Progress Total"] = "Progrès Total"
L["Progress Value"] = "Valeur de progression"
L["Pulse"] = "Pulsation"
L["PvP Flagged"] = "JcJ activé"
L["PvP Talent %i"] = "Talent JcJ %i"
L["PvP Talent selected"] = "Talent JcJ sélectionné"
--[[Translation missing --]]
L["PvP Talent Selected"] = "PvP Talent Selected"
--[[Translation missing --]]
L["Queued Action"] = "Queued Action"
L["Radius"] = "Rayon"
--[[Translation missing --]]
L["Ragnaros"] = "Ragnaros"
L["Raid"] = "Raid "
L["Raid (Heroic)"] = "Raid (Héroïque)"
L["Raid (Mythic)"] = "Raid (Mythique)"
L["Raid (Normal)"] = "Raid (Normal)"
L["Raid (Timewalking)"] = "Raid (Marcheurs du temps)"
L["Raid Mark"] = "Marque de raid"
L["Raid Mark Icon"] = "Icône pour la marque de raid"
L["Raid Role"] = "Rôle de raid"
L["Raid Warning"] = "Avertissement de raid"
L["Raids"] = "Raids RdR"
L["Range"] = "Portée"
L["Range Check"] = "Vérification de la portée"
--[[Translation missing --]]
L["Ranged"] = "Ranged"
--[[Translation missing --]]
L["Rank"] = "Rank"
L["Rare"] = "Rare"
--[[Translation missing --]]
L["Rare Elite"] = "Rare Elite"
L["Rated Arena"] = "Arène Coté"
L["Rated Battleground"] = "Champ de bataille Coté"
--[[Translation missing --]]
L["Raw Threat Percent"] = "Raw Threat Percent"
--[[Translation missing --]]
L["Razorgore the Untamed"] = "Razorgore the Untamed"
--[[Translation missing --]]
L["Razorscale"] = "Razorscale"
L["Ready Check"] = "Appel de Raid"
--[[Translation missing --]]
L["Reagent Quality"] = "Reagent Quality"
--[[Translation missing --]]
L["Reagent Quality Texture"] = "Reagent Quality Texture"
L["Realm"] = "Royaume"
L["Realm Name"] = "Nom du Royaume"
L["Realm of Caster's Target"] = "Royaume de la Cible du Lanceur de sort"
L["Receiving display information"] = "Réception d'information de graphique de %s..."
L["Reflect"] = "Renvoi"
L["Region type %s not supported"] = "Région de type %s non supporté"
L["Relative"] = "Relatif"
--[[Translation missing --]]
L["Relative X-Offset"] = "Relative X-Offset"
--[[Translation missing --]]
L["Relative Y-Offset"] = "Relative Y-Offset"
L["Remaining Duration"] = "Durée Restante"
L["Remaining Time"] = "Temps restant"
L["Remove Obsolete Auras"] = "Retirer les auras obsolètes"
L["Repair"] = "Réparer"
L["Repeat"] = "Répéter"
--[[Translation missing --]]
L["Report Summary"] = "Report Summary"
L["Requested display does not exist"] = "L'affichage demandé n'existe pas"
L["Requested display not authorized"] = "L'affichage demandé n'est pas autorisé"
L["Requesting display information from %s ..."] = "Demande des informations de l'affichage depuis %s ..."
L["Require Valid Target"] = "Exige une cible valide"
--[[Translation missing --]]
L["Requires syncing the specialization via LibSpecialization."] = "Requires syncing the specialization via LibSpecialization."
--[[Translation missing --]]
L["Resilience Percent"] = "Resilience Percent"
--[[Translation missing --]]
L["Resilience Rating"] = "Resilience Rating"
L["Resist"] = "Résiste"
L["Resisted"] = "Résisté"
L["Rested"] = "Reposé"
--[[Translation missing --]]
L["Rested Experience"] = "Rested Experience"
--[[Translation missing --]]
L["Rested Experience (%)"] = "Rested Experience (%)"
L["Resting"] = "Repos"
L["Resurrect"] = "Résurrection"
L["Right"] = "Droite"
L["Right to Left"] = "Droite à Gauche"
--[[Translation missing --]]
L["Right, then Centered Vertical"] = "Right, then Centered Vertical"
L["Right, then Down"] = "Droite, puis bas"
L["Right, then Up"] = "Droite, puis haut"
L["Role"] = "Rôle"
--[[Translation missing --]]
L["Rotate Animation"] = "Rotate Animation"
L["Rotate Left"] = "Rotation gauche"
L["Rotate Right"] = "Rotation droite"
L["Rotation"] = "Rotation"
--[[Translation missing --]]
L["Rotface"] = "Rotface"
L["Round"] = "Ronde"
--[[Translation missing --]]
L["Round Mode"] = "Round Mode"
--[[Translation missing --]]
L["Ruins of Ahn'Qiraj"] = "Ruins of Ahn'Qiraj"
L["Run Custom Code"] = "Exécuter le code personnalisé"
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
L["Say"] = "Dire"
L["Scale"] = "Échelle"
L["Scenario"] = "Scénario"
--[[Translation missing --]]
L["Scenario (Heroic)"] = "Scenario (Heroic)"
--[[Translation missing --]]
L["Scenario (Normal)"] = "Scenario (Normal)"
--[[Translation missing --]]
L["Screen"] = "Screen"
L["Screen/Parent Group"] = "Écran/Groupe parent"
L["Second"] = "Deuxième"
L["Second Value of Tooltip Text"] = "Deuxième valeur du texte de l'info-bulle"
L["Seconds"] = "Secondes"
--[[Translation missing --]]
L[ [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
L["Select Frame"] = "Sélectionner le cadre"
L["Separator"] = "Séparateur"
--[[Translation missing --]]
L["Set IDs can be found on websites such as classic.wowhead.com/item-sets"] = "Set IDs can be found on websites such as classic.wowhead.com/item-sets"
--[[Translation missing --]]
L["Set IDs can be found on websites such as wowhead.com/item-sets"] = "Set IDs can be found on websites such as wowhead.com/item-sets"
--[[Translation missing --]]
L["Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"] = "Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"
L["Set Maximum Progress"] = "Progression maximale"
L["Set Minimum Progress"] = "Progression minimum"
L["Shadow Resistance"] = "Résistance à l'ombre"
--[[Translation missing --]]
L["Shadowlands"] = "Shadowlands"
--[[Translation missing --]]
L["Shadron"] = "Shadron"
L["Shake"] = "Secouer"
--[[Translation missing --]]
L["Shazzrah"] = "Shazzrah"
L["Shift-Click to resume addon execution."] = "Maj-Clic pour reprendre l'exécution de l'addon."
L["Show"] = "Montrer"
L["Show Absorb"] = "Montrer l’Absorption"
L["Show CD of Charge"] = "Afficher le Temps de Recharge de la charge"
--[[Translation missing --]]
L["Show charged duration for empowered casts"] = "Show charged duration for empowered casts"
L["Show GCD"] = "Afficher GCD"
L["Show Global Cooldown"] = "Afficher le Temps de Recharge Global"
--[[Translation missing --]]
L["Show Heal Absorb"] = "Show Heal Absorb"
L["Show Incoming Heal"] = "Afficher les Soins en Cours"
--[[Translation missing --]]
L["Show Loss of Control"] = "Show Loss of Control"
L["Show On"] = "Afficher Sur"
L["Show Rested Overlay"] = "Superposer l'XP en reposé"
L["Shrink"] = "Rétrécir"
--[[Translation missing --]]
L["Silithid Royalty"] = "Silithid Royalty"
L["Simple"] = "Basique"
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
L["Size & Position"] = "Taille & Position"
--[[Translation missing --]]
L["Slide Animation"] = "Slide Animation"
L["Slide from Bottom"] = "Glisser d'en bas"
L["Slide from Left"] = "Glisser de la gauche"
L["Slide from Right"] = "Glisser de la droite"
L["Slide from Top"] = "Glisser d'en haut"
L["Slide to Bottom"] = "Glisser en bas"
L["Slide to Left"] = "Glisser à gauche"
L["Slide to Right"] = "Glisser à droite"
L["Slide to Top"] = "Glisser en haut"
--[[Translation missing --]]
L["Slider"] = "Slider"
L["Small"] = "Petit"
--[[Translation missing --]]
L["Smart Group"] = "Smart Group"
--[[Translation missing --]]
L["Soft Enemy"] = "Soft Enemy"
--[[Translation missing --]]
L["Soft Friend"] = "Soft Friend"
L["Sound"] = "Son"
L["Sound by Kit ID"] = "Son par Kit ID"
L["Source"] = "Source"
--[[Translation missing --]]
L["Source Affiliation"] = "Source Affiliation"
--[[Translation missing --]]
L["Source GUID"] = "Source GUID"
L["Source Name"] = "Nom de source"
--[[Translation missing --]]
L["Source NPC Id"] = "Source NPC Id"
--[[Translation missing --]]
L["Source Object Type"] = "Source Object Type"
--[[Translation missing --]]
L["Source Raid Mark"] = "Source Raid Mark"
--[[Translation missing --]]
L["Source Reaction"] = "Source Reaction"
L["Source Unit"] = "Unité source"
--[[Translation missing --]]
L["Source Unit Name/Realm"] = "Source Unit Name/Realm"
--[[Translation missing --]]
L["Source unit's raid mark index"] = "Source unit's raid mark index"
--[[Translation missing --]]
L["Source unit's raid mark texture"] = "Source unit's raid mark texture"
L["Space"] = "Ecart"
L["Spacing"] = "Ecartement"
L["Spark"] = "Étincelle"
--[[Translation missing --]]
L["Spec Position"] = "Spec Position"
--[[Translation missing --]]
L["Spec Role"] = "Spec Role"
--[[Translation missing --]]
L["Specialization"] = "Specialization"
L["Specific Type"] = "Type spécifique"
L["Specific Unit"] = "Unité spécifique"
L["Spell"] = "Sort"
L["Spell (Building)"] = "Sort (croissant)"
L["Spell Activation Overlay Glow"] = "Surbrillance pendant que le sort est actif"
--[[Translation missing --]]
L["Spell Cast Succeeded"] = "Spell Cast Succeeded"
L["Spell Cost"] = "Coût des sorts"
--[[Translation missing --]]
L["Spell Count"] = "Spell Count"
L["Spell ID"] = "ID de Sort"
L["Spell Id"] = "ID de Sort"
L["Spell ID:"] = "ID de sort:"
L["Spell IDs:"] = "IDs de sort"
L["Spell in Range"] = "Sort à portée"
L["Spell Known"] = "Sort connu"
L["Spell Name"] = "Nom du sort"
--[[Translation missing --]]
L["Spell Peneration Percent"] = "Spell Peneration Percent"
--[[Translation missing --]]
L["Spell School"] = "Spell School"
L["Spell Usable"] = "Sort Utilisable"
L["Spin"] = "Tourne"
L["Spiral"] = "Spirale"
L["Spiral In And Out"] = "Spirale entrante et sortante"
--[[Translation missing --]]
L["Spirit"] = "Spirit"
L["Stack Count"] = "Nombre de Piles"
L["Stacks"] = "Piles"
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
L["Stagger Scale"] = "espacer"
L["Stamina"] = "Endurance"
L["Stance/Form/Aura"] = "Posture/Forme/Aura"
--[[Translation missing --]]
L["Standing"] = "Standing"
--[[Translation missing --]]
L["Star Shake"] = "Star Shake"
--[[Translation missing --]]
L["Start Now"] = "Start Now"
L["Status"] = "Statut"
--[[Translation missing --]]
L["Status Bar"] = "Status Bar"
L["Stolen"] = "Volé"
L["Stop"] = "Arrêter"
L["Strength"] = "Force"
L["String"] = "Séquence"
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
L["Summon"] = "Invocation"
L["Supports multiple entries, separated by commas"] = "Prend en charge plusieurs entrées, séparées par des virgules"
L[ [=[Supports multiple entries, separated by commas
]=] ] = "Prend en charge plusieurs entrées, séparées par des virgules"
--[[Translation missing --]]
L["Supports multiple entries, separated by commas. Escape ',' with \\"] = "Supports multiple entries, separated by commas. Escape ',' with \\"
L["Supports multiple entries, separated by commas. Group Zone IDs must be prefixed with 'g', e.g. g277."] = "Supporte les entrées multiples, séparées par des virgules. Les ID des zones de groupe doivent être précédés du préfixe \"g\", par exemple g277."
L["Swing"] = "Coup"
L["Swing Timer"] = "Vitesse d'attaque"
L["Swipe"] = "Balayage"
L["System"] = "Système"
L["Tab "] = "Onglet"
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
L["Talent Selected"] = "Talent sélectionné"
L["Talent selected"] = "Talent sélectionné"
L["Talent Specialization"] = "Spécialisation"
L["Tanking And Highest"] = "Tank et le plus haut"
L["Tanking But Not Highest"] = "Tank mais pas le plus haut"
L["Target"] = "Cible"
L["Targeted"] = "Ciblé"
--[[Translation missing --]]
L["Tenebron"] = "Tenebron"
L["Text"] = "Texte"
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
L["The effective level differs from the level in e.g. Time Walking dungeons."] = "Le niveau effectif diffère du niveau dans les donjons des Marcheurs du temps, par exemple."
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
L["The trigger number is optional, and uses the trigger providing dynamic information if not specified."] = "Le numéro du déclencheur est facultatif, et utilise le déclencheur fournissant des informations dynamiques s'il n'est pas spécifié."
L["There are %i updates to your auras ready to be installed!"] = [=[
Il y a %i mises à jour de vos auras prêtes à être installées!]=]
L["Thick Outline"] = "Contour épais"
L["Thickness"] = "Épaisseur"
L["Third"] = "Troisième"
L["Third Value of Tooltip Text"] = "Troisième valeur du texte de l'info-bulle"
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
L["Threat Situation"] = "Situation de Menace"
--[[Translation missing --]]
L["Threat Value"] = "Threat Value"
L["Tick"] = "Coche"
--[[Translation missing --]]
L["Time Format"] = "Time Format"
--[[Translation missing --]]
L["Time in GCDs"] = "Time in GCDs"
L["Timed"] = "Temporisé"
--[[Translation missing --]]
L["Timer Id"] = "Timer Id"
L["Toggle"] = "Basculer"
L["Toggle List"] = "Basculer la liste"
L["Toggle Options Window"] = "Activer/Désactiver la Fenêtre d'Options"
--[[Translation missing --]]
L["Toggle Performance Profiling Window"] = "Toggle Performance Profiling Window"
L["Tooltip"] = "Info-bulle"
L["Tooltip Value 1"] = "Valeur de l'info-bulle 1"
L["Tooltip Value 2"] = "Valeur de l'info-bulle 2"
L["Tooltip Value 3"] = "Valeur de l'info-bulle 3"
L["Top"] = "Haut"
L["Top Left"] = "Haut Gauche"
L["Top Right"] = "Haut Droite"
L["Top to Bottom"] = "Haut en Bas"
--[[Translation missing --]]
L["Toravon the Ice Watcher"] = "Toravon the Ice Watcher"
--[[Translation missing --]]
L["Torghast"] = "Torghast"
L["Total"] = "Total"
L["Total Duration"] = "Duration Totale"
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
L["Total Units"] = "Unités Total"
L["Totem"] = "Totem"
L["Totem #%i"] = "Totem #%i"
L["Totem Name"] = "Nom Totem"
--[[Translation missing --]]
L["Totem Name Pattern Match"] = "Totem Name Pattern Match"
L["Totem Number"] = "Numéro du Totem"
L["Track Cooldowns"] = "Suivre les temps de recharge "
L["Tracking Charge %i"] = "Suivi de charge %i"
L["Tracking Charge CDs"] = "Suivi des CD de charge"
L["Tracking Only Cooldown"] = "Suivi du temps de recharge"
L["Transmission error"] = "Erreur de transmission"
--[[Translation missing --]]
L["Trial of the Crusader"] = "Trial of the Crusader"
L["Trigger"] = "Déclencheur"
--[[Translation missing --]]
L["Trigger %i"] = "Trigger %i"
--[[Translation missing --]]
L["Trigger %s"] = "Trigger %s"
L["Trigger 1"] = "Déclencheur 1"
L["Trigger State Updater (Advanced)"] = [=[
Mise à jour de l'état du déclencheur (Avancé)]=]
L["Trigger Update"] = "Mise-à-jour du déclencheur"
L["Trigger:"] = "Déclencheur :"
--[[Translation missing --]]
L["Trivial (Low Level)"] = "Trivial (Low Level)"
L["True"] = "Vrai"
--[[Translation missing --]]
L["Trying to repair broken conditions in %s likely caused by a WeakAuras bug."] = "Trying to repair broken conditions in %s likely caused by a WeakAuras bug."
--[[Translation missing --]]
L["Twin Emperors"] = "Twin Emperors"
L["Type"] = "Type"
--[[Translation missing --]]
L["Ulduar"] = "Ulduar"
L["Unaffected"] = "Non-affecté"
L["Undefined"] = "Non-défini"
--[[Translation missing --]]
L["Unholy"] = "Unholy"
--[[Translation missing --]]
L["Unholy Rune #1"] = "Unholy Rune #1"
--[[Translation missing --]]
L["Unholy Rune #2"] = "Unholy Rune #2"
L["Unit"] = "Unité"
L["Unit Characteristics"] = "Caractéristique d'unité"
L["Unit Destroyed"] = "Unité détruite"
L["Unit Died"] = "Unité morte"
--[[Translation missing --]]
L["Unit Dissipates"] = "Unit Dissipates"
--[[Translation missing --]]
L["Unit Frame"] = "Unit Frame"
L["Unit Frames"] = "Cadre d'unité"
L["Unit is Unit"] = "L'unité est l'unité"
L["Unit Name"] = "Nom de l'Unité"
--[[Translation missing --]]
L["Unit Name/Realm"] = "Unit Name/Realm"
L["Units Affected"] = "Unités Concernés"
--[[Translation missing --]]
L["unknown location"] = "unknown location"
L["Unlimited"] = "Illimité"
--[[Translation missing --]]
L["Untrigger %s"] = "Untrigger %s"
L["Up"] = "Haut"
--[[Translation missing --]]
L["Up, then Centered Horizontal"] = "Up, then Centered Horizontal"
L["Up, then Left"] = "Haut, puis gauche"
L["Up, then Right"] = "Haut, puis droite"
--[[Translation missing --]]
L["Update Position"] = "Update Position"
L["Usage:"] = "Utilisation:"
L["Use /wa minimap to show the minimap icon again."] = "Utiliser /wa minimap pour afficher à nouveau l'icône de la mini-carte."
L["Use Custom Color"] = "Utiliser couleur personnalisée"
--[[Translation missing --]]
L["Use Legacy floor rounding"] = "Use Legacy floor rounding"
--[[Translation missing --]]
L["Use Watched Faction"] = "Use Watched Faction"
--[[Translation missing --]]
L["Using WeakAuras.clones is deprecated. Use WeakAuras.GetRegion(id, cloneId) instead."] = "Using WeakAuras.clones is deprecated. Use WeakAuras.GetRegion(id, cloneId) instead."
--[[Translation missing --]]
L["Using WeakAuras.regions is deprecated. Use WeakAuras.GetRegion(id) instead."] = "Using WeakAuras.regions is deprecated. Use WeakAuras.GetRegion(id) instead."
L["Vaelastrasz the Corrupt"] = "Vaelastrasz le Corrompu"
--[[Translation missing --]]
L["Valithria Dreamwalker"] = "Valithria Dreamwalker"
--[[Translation missing --]]
L["Val'kyr Twins"] = "Val'kyr Twins"
L["Value"] = "Valeur"
L["Values/Remaining Time above this value are displayed as full progress."] = "Les valeurs/temps restant au-dessus de cette valeur sont affichés en tant que progrès complets."
L["Values/Remaining Time below this value are displayed as no progress."] = "Les valeurs/temps restant en-dessous de cette valeur sont affichés en tant que sans progrès."
--[[Translation missing --]]
L["Vault of Archavon"] = "Vault of Archavon"
L["Versatility (%)"] = "Polyvalence (%)"
L["Versatility Rating"] = "Score de Polyvalence"
--[[Translation missing --]]
L["Vertical"] = "Vertical"
--[[Translation missing --]]
L["Vesperon"] = "Vesperon"
L["Viscidus"] = "Viscidus"
L["Visibility"] = "Visibilité"
L["Visions of N'Zoth"] = "Visions de N'Zoth"
L["War Mode Active"] = "Mode de Guerre Actif"
L["Warfront (Heroic)"] = "Front de guerre (Héroïque)"
L["Warfront (Normal)"] = "Front de guerre (Normal)"
--[[Translation missing --]]
L["Warlords of Draenor"] = "Warlords of Draenor"
L["Warning"] = "Attention"
--[[Translation missing --]]
L["Warning for unknown aura:"] = "Warning for unknown aura:"
--[[Translation missing --]]
L["Warning: Anchoring to your own child '%s' in aura '%s' is imposssible."] = "Warning: Anchoring to your own child '%s' in aura '%s' is imposssible."
L["Warning: Full Scan auras checking for both name and spell id can't be converted."] = "Avertissement : Les auras à balayage complet vérifiant à la fois le nom et l'identifiant du sort ne peuvent pas être converties."
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
L["Weapon"] = "Arme"
L["Weapon Enchant"] = "Enchantement d'arme"
--[[Translation missing --]]
L["Weapon Enchant / Fishing Lure"] = "Weapon Enchant / Fishing Lure"
L["Whisper"] = "Chuchoter"
--[[Translation missing --]]
L["Whole Area"] = "Whole Area"
L["Width"] = "Largeur"
L["Wobble"] = "Osciller"
L["World Boss"] = "Boss de Monde"
L["Wrap"] = "Emballage, absorbe"
--[[Translation missing --]]
L["Wrath of the Lich King"] = "Wrath of the Lich King"
--[[Translation missing --]]
L["Writing to the WeakAuras table is not allowed."] = "Writing to the WeakAuras table is not allowed."
L["X-Offset"] = "Décalage X"
--[[Translation missing --]]
L["XT-002 Deconstructor"] = "XT-002 Deconstructor"
L["Yell"] = "Crier"
L["Y-Offset"] = "Décalage Y"
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
L["Your threat on the mob as a percentage of the amount required to pull aggro. Will pull aggro at 100."] = "Votre menace sur le monstre en pourcentage du montant requis pour attirer l'aggro. Monte l'aggro à 100."
L["Your total threat on the mob."] = "Votre menace totale sur le monstre."
L["Zone ID(s)"] = "ID de la zone"
L["Zone Name"] = "Nom de la zone"
L["Zoom"] = "Zoom"
--[[Translation missing --]]
L["Zoom Animation"] = "Zoom Animation"
L["Zul'Gurub"] = "Zul'Gurub"

