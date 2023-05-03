if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "frFR" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Options
	L[" and |cFFFF0000mirrored|r"] = "et  |cFFFF0000mirrored|r"
	L["-- Do not remove this comment, it is part of this aura: "] = "-- Ne supprimez pas ce commentaire, il fait partie de cette aura :"
	L[" rotated |cFFFF0000%s|r degrees"] = "degrés de |cFFFF0000%s|r  rotation"
	L["% of Progress"] = "% de progression"
	L["%d |4aura:auras; added"] = "%d |4aura:auras; ajoutée(s)"
	L["%d |4aura:auras; deleted"] = "%d |4aura:auras; supprimée(s)"
	L["%d |4aura:auras; modified"] = "%d |4aura:auras; modifiée(s)"
	L["%i auras selected"] = "%i auras sélectionnées"
	--[[Translation missing --]]
	L["%s - %i. Trigger"] = "%s - %i. Trigger"
	--[[Translation missing --]]
	L["%s - Alpha Animation"] = "%s - Alpha Animation"
	L["%s - Color Animation"] = "%s - Couleur de l'animation"
	L["%s - Condition Custom Chat %s"] = "%s - Condition personnalisée du chat %s"
	L["%s - Condition Custom Check %s"] = "%s - Condition vérifiée du chat %s"
	L["%s - Condition Custom Code %s"] = "%s - Code de condition personnalisé %s"
	L["%s - Custom Anchor"] = "%s - Ancre personnalisée"
	--[[Translation missing --]]
	L["%s - Custom Grow"] = "%s - Custom Grow"
	L["%s - Custom Sort"] = "%s - Sort personnalisé"
	L["%s - Custom Text"] = "%s - Texte personnalisé"
	L["%s - Finish"] = "%s - Terminer"
	L["%s - Finish Action"] = "%s - Termine l'action"
	L["%s - Finish Custom Text"] = "%s - Terminer le texte personnalisé"
	L["%s - Init Action"] = "%s - Initialiser l'action"
	L["%s - Main"] = "%s - Principal"
	L["%s - Option #%i has the key %s. Please choose a different option key."] = "%s - L'option #%i est actuellement attribuée à la touche %s. Veuillez choisir une touche différente."
	L["%s - Rotate Animation"] = "%s - Rotation de l'animation"
	L["%s - Scale Animation"] = "%s - Animation de l'échelle"
	L["%s - Start"] = "%s - Commencer"
	L["%s - Start Action"] = "%s - Commencer une action"
	L["%s - Start Custom Text"] = "%s - Commencer un texte personnalisé"
	--[[Translation missing --]]
	L["%s - Translate Animation"] = "%s - Translate Animation"
	--[[Translation missing --]]
	L["%s - Trigger Logic"] = "%s - Trigger Logic"
	L["%s %s, Lines: %d, Frequency: %0.2f, Length: %d, Thickness: %d"] = "%s %s, Lignes : %d, Fréquence : %0.2f, Longueur : %d, Épaisseur : %d"
	L["%s %s, Particles: %d, Frequency: %0.2f, Scale: %0.2f"] = "%s %s, Particules : %d, Fréquence : %0.2f, Échelle : %0.2f"
	L["%s %u. Overlay Function"] = "%s %u. Fonction de superposition"
	L["%s Alpha: %d%%"] = "%s Opacité : %d%%"
	L["%s Color"] = "%s Couleur"
	L["%s Custom Variables"] = "%s Variables personnalisées"
	--[[Translation missing --]]
	L["%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"] = "%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"
	--[[Translation missing --]]
	L["%s Duration Function"] = "%s Duration Function"
	--[[Translation missing --]]
	L["%s Icon Function"] = "%s Icon Function"
	L["%s Inset: %d%%"] = "%s Insérer : %d%%"
	--[[Translation missing --]]
	L["%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"] = "%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"
	L["%s Keep Aspect Ratio"] = "%s Conserver les proportions"
	--[[Translation missing --]]
	L["%s Name Function"] = "%s Name Function"
	--[[Translation missing --]]
	L["%s Stacks Function"] = "%s Stacks Function"
	--[[Translation missing --]]
	L["%s stores around %s KB of data"] = "%s stores around %s KB of data"
	L["%s Texture"] = "%s texture"
	--[[Translation missing --]]
	L["%s Texture Function"] = "%s Texture Function"
	L["%s total auras"] = "%s auras au total"
	--[[Translation missing --]]
	L["%s Trigger Function"] = "%s Trigger Function"
	--[[Translation missing --]]
	L["%s Untrigger Function"] = "%s Untrigger Function"
	--[[Translation missing --]]
	L["%s X offset by %d"] = "%s X offset by %d"
	--[[Translation missing --]]
	L["%s Y offset by %d"] = "%s Y offset by %d"
	L["%s Zoom: %d%%"] = "%s Zoom: %d%%"
	L["%s, Border"] = "%s, Bordure"
	L["%s, Offset: %0.2f;%0.2f"] = "%s, Décaler: %0.2f;%0.2f"
	L["%s, offset: %0.2f;%0.2f"] = "%s, décaler: %0.2f;%0.2f"
	L["%s|cFFFF0000custom|r texture with |cFFFF0000%s|r blend mode%s%s"] = "%s|cFFFF0000custom|r texture avec |cFFFF0000%s|r mode fusionné%s%s"
	L["(Right click to rename)"] = "(Clic-Droit pour renommer)"
	L["|c%02x%02x%02x%02xCustom Color|r"] = "|c%02x%02x%02x%02xCouleur personnalisée|r"
	--[[Translation missing --]]
	L["|cff999999Triggers tracking multiple units will default to being active even while no affected units are found without a Unit Count or Match Count setting applied.|r"] = "|cff999999Triggers tracking multiple units will default to being active even while no affected units are found without a Unit Count or Match Count setting applied.|r"
	L["|cFFE0E000Note:|r This sets the description only on '%s'"] = "|cFFE0E000Note:|r Ceci définit la description uniquement sur '%s'"
	L["|cFFE0E000Note:|r This sets the URL on all selected auras"] = "|cFFE0E000Note:|r Ceci définit l'URL sur toutes les auras sélectionnées"
	L["|cFFE0E000Note:|r This sets the URL on this group and all its members."] = "|cFFE0E000Note:|r Ceci définit l'URL sur ce groupe et tous ses membres."
	L["|cFFFF0000Automatic|r length"] = "|cFFFF0000Automatic|r longueur"
	L["|cFFFF0000default|r texture"] = "|cFFFF0000default|r texture"
	L["|cFFFF0000desaturated|r "] = "|cFFFF0000desaturated|r"
	L["|cFFFF0000Note:|r The unit '%s' is not a trackable unit."] = "|cFFFF0000Note:|r Cette unité '%s' n'est pas une unité traçable."
	--[[Translation missing --]]
	L["|cFFFF0000Note:|r The unit '%s' requires soft target cvars to be enabled."] = "|cFFFF0000Note:|r The unit '%s' requires soft target cvars to be enabled."
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"] = "|cFFffcc00Ancrages :|r Ancré |cFFFF0000%s|r au cadre de |cFFFF0000%s|r"
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00Ancrages :|r Ancré |cFFFF0000%s|r au cadre de ... |cFFFF0000%s|r avec un décalage de |cFFFF0000%s/%s|r"
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"] = "|cFFffcc00Ancrages :|r Ancré au cadre de |cFFFF0000%s|r"
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00Ancrages :|r Ancré au cadre de ... |cFFFF0000%s|r avec un décalage de |cFFFF0000%s/%s|r"
	L["|cFFffcc00Extra Options:|r"] = "|cFFffcc00Options supplémentaires :|r"
	L["|cFFffcc00Extra:|r %s and %s %s"] = "|cFFffcc00Extra:|r %s et %s %s"
	--[[Translation missing --]]
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s"] = "|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s"
	--[[Translation missing --]]
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s%s"] = "|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s%s"
	--[[Translation missing --]]
	L["|cffffcc00Format Options|r"] = "|cffffcc00Format Options|r"
	--[[Translation missing --]]
	L[ [=[• |cff00ff00Player|r, |cff00ff00Target|r, |cff00ff00Focus|r, and |cff00ff00Pet|r correspond directly to those individual unitIDs.
• |cff00ff00Specific Unit|r lets you provide a specific valid unitID to watch.
|cffff0000Note|r: The game will not fire events for all valid unitIDs, making some untrackable by this trigger.
• |cffffff00Party|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arena|r, and |cffffff00Nameplate|r can match multiple corresponding unitIDs.
• |cffffff00Smart Group|r adjusts to your current group type, matching just the "player" when solo, "party" units (including "player") in a party or "raid" units in a raid.
• |cffffff00Multi-target|r attempts to use the Combat Log events, rather than unitID, to track affected units.
|cffff0000Note|r: Without a direct relationship to actual unitIDs, results may vary.

|cffffff00*|r Yellow Unit settings can match multiple units and will default to being active even while no affected units are found without a Unit Count or Match Count setting.]=] ] = [=[• |cff00ff00Player|r, |cff00ff00Target|r, |cff00ff00Focus|r, and |cff00ff00Pet|r correspond directly to those individual unitIDs.
• |cff00ff00Specific Unit|r lets you provide a specific valid unitID to watch.
|cffff0000Note|r: The game will not fire events for all valid unitIDs, making some untrackable by this trigger.
• |cffffff00Party|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arena|r, and |cffffff00Nameplate|r can match multiple corresponding unitIDs.
• |cffffff00Smart Group|r adjusts to your current group type, matching just the "player" when solo, "party" units (including "player") in a party or "raid" units in a raid.
• |cffffff00Multi-target|r attempts to use the Combat Log events, rather than unitID, to track affected units.
|cffff0000Note|r: Without a direct relationship to actual unitIDs, results may vary.

|cffffff00*|r Yellow Unit settings can match multiple units and will default to being active even while no affected units are found without a Unit Count or Match Count setting.]=]
	L["A 20x20 pixels icon"] = "Une icône de 20x20 pixels"
	L["A 32x32 pixels icon"] = "Une icône de 32x32 pixels"
	L["A 40x40 pixels icon"] = "Une icône de 40x40 pixels"
	L["A 48x48 pixels icon"] = "Une icône de 48x48 pixels"
	L["A 64x64 pixels icon"] = "Une icône de 64x64 pixels"
	L["A group that dynamically controls the positioning of its children"] = "Un groupe qui contrôle dynamiquement le positionnement de ses enfants"
	L[ [=[A timer will automatically be displayed according to default Interface Settings (overridden by some addons).
Enable this setting if you want this timer to be hidden, or when using a WeakAuras text to display the timer]=] ] = "Une minuterie sera automatiquement affichée selon les paramètres d'interface par défaut (remplacés par certains addons). Activez ce paramètre si vous souhaitez que le minuteur soit masqué, ou si vous utilisez plutôt un texte WeakAuras pour afficher le minuteur."
	L["A Unit ID (e.g., party1)."] = "Un ID d'unité (par exemple, groupe1)."
	L["Actions"] = "Actions"
	--[[Translation missing --]]
	L["Active Aura Filters and Info"] = "Active Aura Filters and Info"
	--[[Translation missing --]]
	L["Actual Spec"] = "Actual Spec"
	L["Add"] = "Ajouter"
	L["Add %s"] = "Ajouter %s"
	L["Add a new display"] = "Ajouter un nouvel affichage"
	L["Add Condition"] = "Ajouter une Condition"
	L["Add Entry"] = "Ajouter une entrée"
	L["Add Extra Elements"] = "Ajouter des éléments supplémentaires"
	L["Add Option"] = "Ajouter Option"
	L["Add Overlay"] = "Ajouter un Overlay"
	L["Add Property Change"] = "Ajouter un Changement de Propriété"
	L["Add Snippet"] = "Ajouter un extrait"
	L["Add Sub Option"] = "Ajouter un sous-option"
	L["Add to group %s"] = "Ajouter au groupe %s"
	L["Add to new Dynamic Group"] = "Ajouter à un nouveau groupe dynamique"
	L["Add to new Group"] = "Ajouter à un nouveau groupe"
	L["Add Trigger"] = "Ajouter un déclencheur"
	L["Additional Events"] = "Événements supplémentaires"
	L["Advanced"] = "Avancé"
	--[[Translation missing --]]
	L["Affected Unit Filters and Info"] = "Affected Unit Filters and Info"
	L["Align"] = "Aligner"
	L["Alignment"] = "Alignement"
	L["All of"] = "Tous vos"
	--[[Translation missing --]]
	L["Allow Full Rotation"] = "Allow Full Rotation"
	L["Alpha"] = "Opacité"
	L["Anchor"] = "Ancrage"
	L["Anchor Point"] = "Point d'ancrage"
	L["Anchored To"] = "Ancré à"
	L["And "] = "Et"
	L["and"] = "et"
	L["and aligned left"] = "et aligné à gauche"
	L["and aligned right"] = "et aligné à droite"
	L["and rotated left"] = "et tourné vers la gauche"
	L["and rotated right"] = "et tourné vers la droite"
	L["and Trigger %s"] = "et Déclencheur %s"
	--[[Translation missing --]]
	L["and with width |cFFFF0000%s|r and %s"] = "and with width |cFFFF0000%s|r and %s"
	L["Angle"] = "Angle"
	L["Animate"] = "Animer"
	L["Animated Expand and Collapse"] = "Expansion et réduction animés"
	L["Animates progress changes"] = "Animer les changement de progression"
	L["Animation End"] = "Fin de l'animation"
	--[[Translation missing --]]
	L["Animation Mode"] = "Animation Mode"
	L["Animation relative duration description"] = [=[La durée de l'animation par rapport à la durée du graphique, exprimée en fraction (1/2), pourcentage (50%), ou décimal (0.5).
|cFFFF0000Note :|r si un graphique n'a pas de progression (déclencheur d'événement sans durée définie, aura sans durée, etc), l'animation ne jouera pas.

|cFF4444FFPar exemple :|r
Si la durée de l'animation est définie à |cFF00CC0010%|r, et le déclencheur du graphique est une amélioration qui dure 20 secondes, l'animation de début jouera pendant 2 secondes.
Si la durée de l'animation est définie à |cFF00CC0010%|r, et le déclencheur du graphique n'a pas de durée définie, aucune d'animation de début ne jouera (mais elle jouerait si vous aviez spécifié une durée en secondes).
]=]
	L["Animation Sequence"] = "Séquence d'animation"
	L["Animation Start"] = "Démarrer l'animation"
	L["Animations"] = "Animations"
	L["Any of"] = "Un de"
	L["Apply Template"] = "Appliquer le modèle"
	L["Arcane Orb"] = "Orbe d'arcane"
	L["At a position a bit left of Left HUD position."] = "Une position à gauche de la Position ATH Gauche."
	L["At a position a bit left of Right HUD position"] = "Une position à droite de la Position ATH Droite."
	L["At the same position as Blizzard's spell alert"] = "À la même position que l'alerte de sort de Blizzard."
	--[[Translation missing --]]
	L[ [=[Aura is
Off Screen]=] ] = [=[Aura is
Off Screen]=]
	L["Aura Name"] = "Nom de l'aura"
	L["Aura Name Pattern"] = "Modèle de Nom de l'Aura"
	--[[Translation missing --]]
	L["Aura Order"] = "Aura Order"
	--[[Translation missing --]]
	L["Aura received from: %s"] = "Aura received from: %s"
	L["Aura Type"] = "Type de l'aura"
	--[[Translation missing --]]
	L["Aura: '%s'"] = "Aura: '%s'"
	L["Author Options"] = "Options de l'Auteur"
	L["Auto-Clone (Show All Matches)"] = "Clonage Automatique (Afficher tous les résultats)"
	L["Auto-cloning enabled"] = "Auto-clonage activé"
	L["Automatic"] = "Automatique"
	L["Automatic length"] = "Longueur automatique"
	--[[Translation missing --]]
	L["Available Voices are system specific"] = "Available Voices are system specific"
	L["Backdrop Color"] = "Couleur de Fond"
	L["Backdrop in Front"] = "Fond Devant"
	L["Backdrop Style"] = "Style de Fond"
	L["Background"] = "Arrière-plan"
	L["Background Color"] = "Couleur d'arrière-plan"
	--[[Translation missing --]]
	L["Background Inner"] = "Background Inner"
	L["Background Offset"] = "Décalage du Fond "
	L["Background Texture"] = "Texture d'arrière plan"
	L["Bar Alpha"] = "Opacité de la barre"
	L["Bar Color Settings"] = "Paramètres de la barre de couleur"
	--[[Translation missing --]]
	L["Bar Color/Gradient Start"] = "Bar Color/Gradient Start"
	L["Bar Texture"] = "Texture de barre"
	L["Big Icon"] = "Grande icône"
	L["Blend Mode"] = "Mode du fusion"
	--[[Translation missing --]]
	L["Blizzard Cooldown Reduction"] = "Blizzard Cooldown Reduction"
	L["Blue Rune"] = "Rune bleue"
	L["Blue Sparkle Orb"] = "Orbe pétillant bleu"
	L["Border"] = "Encadrement"
	L["Border %s"] = "Encadrement %s"
	L["Border Anchor"] = "Ancrage de l'encadrement"
	L["Border Color"] = "Couleur de l'encadrement"
	L["Border in Front"] = "Bordure Devant"
	L["Border Inset"] = "Encart Fond"
	L["Border Offset"] = "Décalage Bordure"
	L["Border Settings"] = "Paramètres de l'encadrement"
	L["Border Size"] = "Taille de l'encadrement"
	L["Border Style"] = "Style d'encadrement"
	L["Bottom"] = "Bas"
	L["Bottom Left"] = "Bas gauche"
	L["Bottom Right"] = "Bas droit"
	L["Bracket Matching"] = "Crochet Correspondant"
	L["Browse Wago, the largest collection of auras."] = "Parcourez Wago, la plus grande collection d'auras."
	L["Can be a UID (e.g., party1)."] = "Peut être un UID (par exemple, groupe1)."
	--[[Translation missing --]]
	L["Can set to 0 if Columns * Width equal File Width"] = "Can set to 0 if Columns * Width equal File Width"
	--[[Translation missing --]]
	L["Can set to 0 if Rows * Height equal File Height"] = "Can set to 0 if Rows * Height equal File Height"
	L["Cancel"] = "Annuler"
	--[[Translation missing --]]
	L["Cast by a Player Character"] = "Cast by a Player Character"
	--[[Translation missing --]]
	L["Categories to Update"] = "Categories to Update"
	L["Center"] = "Centre"
	L["Chat Message"] = "Message dans le chat"
	L["Chat with WeakAuras experts on our Discord server."] = "Discutez avec des experts de WeakAuras sur notre serveur Discord."
	L["Check On..."] = "Vérifier sur..."
	L["Check out our wiki for a large collection of examples and snippets."] = "Consultez notre wiki pour trouver une grande collection d'exemples et d'extraits."
	L["Children:"] = "Enfant :"
	L["Choose"] = "Choisir"
	L["Class"] = "Classe"
	--[[Translation missing --]]
	L["Clear Debug Logs"] = "Clear Debug Logs"
	--[[Translation missing --]]
	L["Clear Saved Data"] = "Clear Saved Data"
	L["Clip Overlays"] = "Superposition de l'attache "
	--[[Translation missing --]]
	L["Clipped by Progress"] = "Clipped by Progress"
	L["Close"] = "Fermer"
	--[[Translation missing --]]
	L["Code Editor"] = "Code Editor"
	L["Collapse"] = "Réduire"
	L["Collapse all loaded displays"] = "Réduire tous les affichages chargés"
	L["Collapse all non-loaded displays"] = "Réduire tous les affichage non-chargés"
	--[[Translation missing --]]
	L["Collapse all pending Import"] = "Collapse all pending Import"
	--[[Translation missing --]]
	L["Collapsible Group"] = "Collapsible Group"
	L["color"] = "couleur"
	L["Color"] = "Couleur"
	L["Column Height"] = "Hauteur de colonne"
	L["Column Space"] = "Espace de colonne"
	L["Columns"] = "Colonnes"
	--[[Translation missing --]]
	L["COMBAT_LOG_EVENT_UNFILTERED with no filter can trigger frame drops in raid environment."] = "COMBAT_LOG_EVENT_UNFILTERED with no filter can trigger frame drops in raid environment."
	L["Combinations"] = "Combinaisons"
	L["Combine Matches Per Unit"] = "Combiner toutes les Correspondances Par Unité"
	L["Common Text"] = "Texte commun"
	L["Compare against the number of units affected."] = "Comparer contre le nombre d'unités affectées."
	--[[Translation missing --]]
	L["Compatibility Options"] = "Compatibility Options"
	L["Compress"] = "Compresser"
	L["Condition %i"] = "Condition %i"
	L["Conditions"] = "Conditions"
	--[[Translation missing --]]
	L["Configure what options appear on this panel."] = "Configure what options appear on this panel."
	L["Constant Factor"] = "Facteur constant"
	L["Control-click to select multiple displays"] = "Ctrl-Clic pour sélectionner plusieurs affichages"
	L["Controls the positioning and configuration of multiple displays at the same time"] = "Contrôle la position et la configuration de plusieurs affichages en même temps"
	L["Convert to..."] = "Convertir en..."
	--[[Translation missing --]]
	L["Cooldown Numbers might be added by WoW. You can configure these in the game settings."] = "Cooldown Numbers might be added by WoW. You can configure these in the game settings."
	--[[Translation missing --]]
	L["Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."] = "Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."
	L["Copy"] = "Copier"
	L["Copy settings..."] = "Copier les paramètres..."
	L["Copy to all auras"] = "Copier toutes les auras"
	--[[Translation missing --]]
	L["Could not parse '%s'. Expected a table."] = "Could not parse '%s'. Expected a table."
	L["Count"] = "Compte"
	L["Counts the number of matches over all units."] = "Comptes de tout le nombre de correspondances sur toutes les unités."
	--[[Translation missing --]]
	L["Counts the number of matches per unit."] = "Counts the number of matches per unit."
	--[[Translation missing --]]
	L["Create a Copy"] = "Create a Copy"
	L["Creating buttons: "] = "Création de boutons :"
	L["Creating options: "] = "Création d'options :"
	L["Crop X"] = "Couper X"
	L["Crop Y"] = "Couper Y"
	L["Custom"] = "Personnalisé"
	L["Custom Anchor"] = "Ancrage personnalisé"
	--[[Translation missing --]]
	L["Custom Check"] = "Custom Check"
	L["Custom Code"] = "Code personnalisé"
	--[[Translation missing --]]
	L["Custom Code Viewer"] = "Custom Code Viewer"
	L["Custom Color"] = "Couleur personnalisée"
	L["Custom Configuration"] = "Configuration personnalisée"
	L["Custom Frames"] = "Cadres personnalisés"
	L["Custom Function"] = "Fonction personnalisée"
	L["Custom Grow"] = "Surbrillance personnalisée"
	L["Custom Options"] = "Options personnalisées"
	L["Custom Sort"] = "Tri personnalisé"
	L["Custom Trigger"] = "Déclencheur personnalisé"
	L["Custom trigger event tooltip"] = [=[
Choisissez quels évènements peuvent activer le déclencheur.
Plusieurs évènements peuvent être spécifiés avec des virgules ou des espaces.

|cFF4444FFPar exemple:|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED
]=]
	L["Custom trigger status tooltip"] = [=[
Choisissez quels évènements peuvent activer le déclencheur.
Comme c'est un déclencheur de type statut, les évènements spécifiés peuvent être appelés par WeakAuras sans les arguments attendus.
Plusieurs évènements peuvent être spécifiés avec des virgules ou des espaces.

|cFF4444FFPar exemple:|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED
]=]
	--[[Translation missing --]]
	L["Custom Trigger: Ignore Lua Errors on OPTIONS event"] = "Custom Trigger: Ignore Lua Errors on OPTIONS event"
	--[[Translation missing --]]
	L["Custom Trigger: Send fake events instead of STATUS event"] = "Custom Trigger: Send fake events instead of STATUS event"
	L["Custom Untrigger"] = "Désactivation personnalisée"
	L["Custom Variables"] = "Variables personnalisées"
	L["Debuff Type"] = "Type d'affaiblissement"
	--[[Translation missing --]]
	L["Debug Log"] = "Debug Log"
	--[[Translation missing --]]
	L["Debug Log:"] = "Debug Log:"
	L["Default"] = "Par défaut"
	L["Default Color"] = "Couleur par défaut"
	--[[Translation missing --]]
	L["Delay"] = "Delay"
	L["Delete"] = "Supprimer"
	L["Delete all"] = "Supprimer tout"
	L["Delete children and group"] = "Supprimer enfants et groupe"
	L["Delete Entry"] = "Supprimer l'entrée"
	L["Desaturate"] = "Dé-saturer"
	L["Description"] = "Description"
	L["Description Text"] = "Texte de Description"
	--[[Translation missing --]]
	L["Determines how many entries can be in the table."] = "Determines how many entries can be in the table."
	L["Differences"] = "Différences"
	L["Disabled"] = "Désactivé"
	--[[Translation missing --]]
	L["Disallow Entry Reordering"] = "Disallow Entry Reordering"
	L["Display"] = "Affichage"
	L["Display Name"] = "Nom de l'affichage"
	L["Display Text"] = "Texte d'affichage"
	L["Displays a text, works best in combination with other displays"] = "Affiche du texte, fonctionne mieux en combinaison avec d'autres affichages."
	L["Distribute Horizontally"] = "Distribuer horizontalement"
	L["Distribute Vertically"] = "Distribuer verticalement"
	L["Do not group this display"] = "Ne pas grouper cet affichage"
	L["Do you want to ignore all future updates for this aura"] = "Voulez-vous ignorer toutes les futures mises à jour de cette aura ?"
	L["Documentation"] = "Documentation"
	L["Done"] = "Terminé"
	L["Drag to move"] = "Glisser pour déplacer"
	L["Duplicate"] = "Doubler"
	L["Duplicate All"] = "Doubler Tout"
	L["Duration (s)"] = "Durée (s)"
	L["Duration Info"] = "Info de durée"
	L["Dynamic Duration"] = "Durée Dynamique"
	L["Dynamic Group"] = "Groupe Dynamique"
	L["Dynamic Group Settings"] = "Paramètres des groupes dynamiques"
	L["Dynamic Information"] = "Information Dynamique"
	L["Dynamic information from first active trigger"] = "Information dynamique depuis le premier déclencheur"
	L["Dynamic information from Trigger %i"] = "Information dynamique du Déclencheur %i"
	L["Dynamic text tooltip"] = [=[Il y a plusieurs codes spéciaux disponibles pour rendre ce texte dynamique :

|cFFFF0000%p|r - Progression - Le temps restant sur un compteur, ou une valeur autre
|cFFFF0000%t|r - Total - La durée maximum d'un compteur, ou le maximum d'une valeur autre
|cFFFF0000%n|r - Nom - Le nom du graphique (souvent le nom d'une aura), ou l'ID du graphique s'il n'y a pas de nom dynamique
|cFFFF0000%i|r - Icône - L'icône associée à l'affichage
|cFFFF0000%s|r - Pile - La taille de la pile d'une aura (généralement)
|cFFFF0000%c|r - Personnalisé - Vous permet de définir une fonction Lua personnalisée qui donne un texte à afficher]=]
	--[[Translation missing --]]
	L["Ease Strength"] = "Ease Strength"
	--[[Translation missing --]]
	L["Ease type"] = "Ease type"
	--[[Translation missing --]]
	L["Edge"] = "Edge"
	--[[Translation missing --]]
	L["eliding"] = "eliding"
	--[[Translation missing --]]
	L["Else If"] = "Else If"
	--[[Translation missing --]]
	L["Else If Trigger %s"] = "Else If Trigger %s"
	--[[Translation missing --]]
	L["Enable \"Edge\" part of the overlay"] = "Enable \"Edge\" part of the overlay"
	L["Enable \"swipe\" part of the overlay"] = "Activer la partie \"balayage\" de la superposition"
	--[[Translation missing --]]
	L["Enable Debug Log"] = "Enable Debug Log"
	--[[Translation missing --]]
	L["Enable Debug Logging"] = "Enable Debug Logging"
	--[[Translation missing --]]
	L["Enable Gradient"] = "Enable Gradient"
	L["Enable Swipe"] = "Activer le balayage"
	L["Enable the \"Swipe\" radial overlay"] = "Activer la superposition radiale du \"balayage\""
	L["Enabled"] = "Activé"
	L["End Angle"] = "Angle de fin"
	L["End of %s"] = "Fin de %s"
	--[[Translation missing --]]
	L["Enemy nameplate(s) found"] = "Enemy nameplate(s) found"
	--[[Translation missing --]]
	L["Enter a Spell ID. You can use the addon idTip to determine spell ids."] = "Enter a Spell ID. You can use the addon idTip to determine spell ids."
	L["Enter an Aura Name, partial Aura Name, or Spell ID. A Spell ID will match any spells with the same name."] = "Saisissez un nom d'aura, un nom d'aura partiel ou un ID de sort. L'ID d'un sort correspondra à tous les sorts portant le même nom."
	L["Enter Author Mode"] = "Entrer en Mode Auteur"
	--[[Translation missing --]]
	L["Enter in a value for the tick's placement."] = "Enter in a value for the tick's placement."
	L["Enter User Mode"] = "Entrer en Mode Utilisateur."
	L["Enter user mode."] = "Entrer en Mode Utilisateur."
	--[[Translation missing --]]
	L["Entry %i"] = "Entry %i"
	--[[Translation missing --]]
	L["Entry limit"] = "Entry limit"
	--[[Translation missing --]]
	L["Entry Name Source"] = "Entry Name Source"
	L["Event Type"] = "Type d'évènement"
	L["Event(s)"] = "Évènement(s)"
	L["Everything"] = "Tous"
	--[[Translation missing --]]
	L["Exact Item Match"] = "Exact Item Match"
	L["Exact Spell ID(s)"] = "ID(s) de sort exact(s)"
	L["Exact Spell Match"] = "Correspondance Exacte du Sort"
	L["Expand"] = "Agrandir"
	L["Expand all loaded displays"] = "Agrandir tous affichages chargés"
	L["Expand all non-loaded displays"] = "Agrandir tous affichage non-chargés"
	--[[Translation missing --]]
	L["Expand all pending Import"] = "Expand all pending Import"
	L["Expansion is disabled because this group has no children"] = "L'expansion est désactivée car ce groupe n'a pas d'enfants"
	--[[Translation missing --]]
	L["Export debug table..."] = "Export debug table..."
	--[[Translation missing --]]
	L["Export..."] = "Export..."
	--[[Translation missing --]]
	L["Exporting"] = "Exporting"
	L["External"] = "Externe"
	--[[Translation missing --]]
	L["Extra Height"] = "Extra Height"
	--[[Translation missing --]]
	L["Extra Width"] = "Extra Width"
	L["Fade"] = "Fondu"
	L["Fade In"] = "Fondu entrant"
	L["Fade Out"] = "Fondu sortant"
	--[[Translation missing --]]
	L["Fallback"] = "Fallback"
	--[[Translation missing --]]
	L["Fallback Icon"] = "Fallback Icon"
	L["False"] = "Faux"
	L["Fetch Affected/Unaffected Names"] = "chercher concerné/Noms non-concernés"
	--[[Translation missing --]]
	L["Fetch Raid Mark Information"] = "Fetch Raid Mark Information"
	--[[Translation missing --]]
	L["Fetch Role Information"] = "Fetch Role Information"
	--[[Translation missing --]]
	L["Fetch Tooltip Information"] = "Fetch Tooltip Information"
	--[[Translation missing --]]
	L["File Height"] = "File Height"
	--[[Translation missing --]]
	L["File Width"] = "File Width"
	--[[Translation missing --]]
	L["Filter based on the spell Name string."] = "Filter based on the spell Name string."
	--[[Translation missing --]]
	L["Filter by Arena Spec"] = "Filter by Arena Spec"
	L["Filter by Class"] = "Filtrer par Classe"
	L["Filter by Group Role"] = "Filtrer par rôle de groupe"
	L["Filter by Nameplate Type"] = "Filtrer par Type de Nameplate"
	--[[Translation missing --]]
	L["Filter by Npc ID"] = "Filter by Npc ID"
	L["Filter by Raid Role"] = "Filtrer par rôle de raid"
	--[[Translation missing --]]
	L["Filter by Specialization"] = "Filter by Specialization"
	--[[Translation missing --]]
	L["Filter by Unit Name"] = "Filter by Unit Name"
	--[[Translation missing --]]
	L[ [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
Can use \ to escape -.]=] ] = [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
Can use \ to escape -.]=]
	--[[Translation missing --]]
	L["Filter to only dispellable de/buffs of the given type(s)"] = "Filter to only dispellable de/buffs of the given type(s)"
	--[[Translation missing --]]
	L["Find Auras"] = "Find Auras"
	L["Finish"] = "Finir"
	L["Fire Orb"] = "Orbe de feu"
	L["Font"] = "Police"
	L["Font Size"] = "Taille de Police"
	L["Foreground"] = "Premier plan"
	L["Foreground Color"] = "Couleur premier-plan"
	L["Foreground Texture"] = "Texture premier-plan"
	L["Format"] = "Format"
	L["Format for %s"] = "Format pour %s"
	L["Found a Bug?"] = "Vous avez découvert un bug ?"
	L["Frame"] = "Cadre"
	--[[Translation missing --]]
	L["Frame Count"] = "Frame Count"
	--[[Translation missing --]]
	L["Frame Height"] = "Frame Height"
	--[[Translation missing --]]
	L["Frame Rate"] = "Frame Rate"
	--[[Translation missing --]]
	L["Frame Selector"] = "Frame Selector"
	L["Frame Strata"] = "Strate du cadre"
	--[[Translation missing --]]
	L["Frame Width"] = "Frame Width"
	L["Frequency"] = "Fréquence"
	L["Full Circle"] = "Cercle Complet"
	L["Global Conditions"] = "Conditions globales"
	--[[Translation missing --]]
	L["Glow %s"] = "Glow %s"
	L["Glow Action"] = "Action de l'éclat"
	--[[Translation missing --]]
	L["Glow Anchor"] = "Glow Anchor"
	L["Glow Color"] = "Couleur de la surbrillance"
	--[[Translation missing --]]
	L["Glow External Element"] = "Glow External Element"
	--[[Translation missing --]]
	L["Glow Frame Type"] = "Glow Frame Type"
	L["Glow Type"] = "Type de la surbrillance"
	--[[Translation missing --]]
	L["Gradient End"] = "Gradient End"
	--[[Translation missing --]]
	L["Gradient Orientation"] = "Gradient Orientation"
	L["Green Rune"] = "Rune verte"
	L["Grid direction"] = "Direction de la grille"
	L["Group"] = "Groupe"
	L["Group (verb)"] = "Groupe (verbe)"
	--[[Translation missing --]]
	L[ [=[Group and anchor each auras by frame.

- Nameplates: attach to nameplates per unit.
- Unit Frames: attach to unit frame buttons per unit.
- Custom Frames: choose which frame each region should be anchored to.]=] ] = [=[Group and anchor each auras by frame.

- Nameplates: attach to nameplates per unit.
- Unit Frames: attach to unit frame buttons per unit.
- Custom Frames: choose which frame each region should be anchored to.]=]
	L["Group aura count description"] = [=[Le nombre de membres du %s qui doivent être affectés par une ou plusieurs des auras sélectionnées pour que l'affichage soit déclenché.
Si le nombre entré est un entier (ex. 5), le nombre de membres du raid affectés sera comparé au nombre entré.
Si le nombre entré est decimal (ex. 0.5), une fraction (ex. 1/2), ou un pourcentage (ex. 50%%), alors cette fraction du %s doit être affectée.

|cFF4444FFPar exemple :|r
|cFF00CC00> 0|r se déclenchera quand n'importe quel membre du %s est affecté
|cFF00CC00= 100%%|r se déclenchera quand tous les membres du %s sont affectés
|cFF00CC00!= 2|r se déclenchera quand le nombre de membres du %s affectés est différent de 2
|cFF00CC00<= 0.8|r se déclenchera quand moins de 80%% du %s est affecté (4 des 5 membres du groupe, 8 des 10 ou 20 des 25 membres du raid )
|cFF00CC00> 1/2|r se déclenchera quand plus de la moitié du %s est affecté
|cFF00CC00>= 0|r se déclenchera toujours, quoi qu'il arrive
]=]
	--[[Translation missing --]]
	L["Group by Frame"] = "Group by Frame"
	L["Group Description"] = "Description du groupe"
	L["Group Icon"] = "Icône du groupe"
	--[[Translation missing --]]
	L["Group key"] = "Group key"
	--[[Translation missing --]]
	L["Group Options"] = "Group Options"
	--[[Translation missing --]]
	L["Group player(s) found"] = "Group player(s) found"
	L["Group Role"] = "Rôle du groupe"
	L["Group Scale"] = "Échelle du Groupe"
	L["Group Settings"] = "Paramètres du groupe"
	L["Group Type"] = "Type de groupe"
	L["Grow"] = "Grandir"
	L["Hawk"] = "Faucon"
	L["Height"] = "Hauteur"
	L["Help"] = "Aide"
	L["Hide"] = "Cacher"
	--[[Translation missing --]]
	L["Hide Background"] = "Hide Background"
	--[[Translation missing --]]
	L["Hide Glows applied by this aura"] = "Hide Glows applied by this aura"
	L["Hide on"] = "Cacher à"
	L["Hide this group's children"] = "Cacher les enfants de ce groupe"
	L["Hide Timer Text"] = "Masquer le texte du minuteur"
	L["Horizontal Align"] = "Aligner horizontalement"
	L["Horizontal Bar"] = "Barre horizontale"
	L["Hostility"] = "Hostilité"
	L["Huge Icon"] = "Énorme icône"
	L["Hybrid Position"] = "Position hybride"
	L["Hybrid Sort Mode"] = "Mode de tri hybride"
	L["Icon"] = "Icône"
	L["Icon Info"] = "Info d'icône"
	L["Icon Inset"] = "Objet inséré"
	--[[Translation missing --]]
	L["Icon Picker"] = "Icon Picker"
	L["Icon Position"] = "Position de l'icône"
	L["Icon Settings"] = "Paramètres de l'icône"
	--[[Translation missing --]]
	L["Icon Source"] = "Icon Source"
	L["If"] = "Si"
	--[[Translation missing --]]
	L["If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."] = "If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."
	--[[Translation missing --]]
	L["If checked, then this group will not merge with other group when selecting multiple auras."] = "If checked, then this group will not merge with other group when selecting multiple auras."
	--[[Translation missing --]]
	L["If checked, then this option group can be temporarily collapsed by the user."] = "If checked, then this option group can be temporarily collapsed by the user."
	--[[Translation missing --]]
	L["If checked, then this option group will start collapsed."] = "If checked, then this option group will start collapsed."
	L["If checked, then this separator will include text. Otherwise, it will be just a horizontal line."] = [=[
Si cette case est cochée, ce séparateur inclura du texte. Sinon, ce sera juste une ligne horizontale]=]
	--[[Translation missing --]]
	L["If checked, then this separator will not merge with other separators when selecting multiple auras."] = "If checked, then this separator will not merge with other separators when selecting multiple auras."
	L["If checked, then this space will span across multiple lines."] = "Si cette case est cochée, cet espace s'étendra sur plusieurs lignes."
	L["If Trigger %s"] = "Si Déclencheur %s"
	L["If unchecked, then a default color will be used (usually yellow)"] = "Si cette case n'est pas cochée, une couleur par défaut sera utilisée (généralement jaune)"
	L["If unchecked, then this space will fill the entire line it is on in User Mode."] = "Si cette case n'est pas cochée, cet espace remplira toute la ligne sur laquelle il se trouve en mode utilisateur."
	L["Ignore Dead"] = "Ignorer la mort"
	L["Ignore Disconnected"] = "Ignorer les déconnectés"
	L["Ignore out of checking range"] = "Ignorer hors de la plage de vérification"
	L["Ignore Self"] = "Ignorer soi-même"
	L["Ignore updates"] = "Ignorer les mises à jours"
	L["Ignored"] = "Ignoré"
	L["Ignored Aura Name"] = "Ignorer par nom d'aura"
	L["Ignored Exact Spell ID(s)"] = "Ignorer par ID(s) de sort exact(s)"
	L["Ignored Name(s)"] = "Ignorer par nom(s)"
	L["Ignored Spell ID"] = "Ignorer par ID de sort"
	L["Import"] = "Importer"
	--[[Translation missing --]]
	L["Import / Export"] = "Import / Export"
	L["Import a display from an encoded string"] = "Importer un graphique d'un texte encodé"
	--[[Translation missing --]]
	L["Import as Copy"] = "Import as Copy"
	--[[Translation missing --]]
	L["Import has no UID, cannot be matched to existing auras."] = "Import has no UID, cannot be matched to existing auras."
	--[[Translation missing --]]
	L["Importing"] = "Importing"
	--[[Translation missing --]]
	L["Importing %s"] = "Importing %s"
	--[[Translation missing --]]
	L["Importing a group with %s child auras."] = "Importing a group with %s child auras."
	--[[Translation missing --]]
	L["Importing a stand-alone aura."] = "Importing a stand-alone aura."
	--[[Translation missing --]]
	L["Importing...."] = "Importing...."
	L["Include Pets"] = "Inclure les familiers"
	--[[Translation missing --]]
	L["Incompatible changes to group region types detected"] = "Incompatible changes to group region types detected"
	--[[Translation missing --]]
	L["Incompatible changes to group structure detected"] = "Incompatible changes to group structure detected"
	--[[Translation missing --]]
	L["Indent Size"] = "Indent Size"
	L["Information"] = "Information"
	L["Inner"] = "Intérieur"
	--[[Translation missing --]]
	L["Invalid Item ID"] = "Invalid Item ID"
	L["Invalid Item Name/ID/Link"] = "Nom d'objet / ID / lien invalide"
	L["Invalid Spell ID"] = "ID de sort invalide"
	L["Invalid Spell Name/ID/Link"] = "Nom du sort / ID / lien invalide"
	--[[Translation missing --]]
	L["Invalid target aura"] = "Invalid target aura"
	--[[Translation missing --]]
	L["Invalid type for '%s'. Expected 'bool', 'number', 'select', 'string', 'timer' or 'elapsedTimer'."] = "Invalid type for '%s'. Expected 'bool', 'number', 'select', 'string', 'timer' or 'elapsedTimer'."
	L["Invalid type for property '%s' in '%s'. Expected '%s'"] = "Type non valide pour la propriété '%s' dans '%s'. Attendu '%s'."
	L["Inverse"] = "Inverser"
	L["Inverse Slant"] = "Inverser l'Inclinaison"
	--[[Translation missing --]]
	L["Invert the direction of progress"] = "Invert the direction of progress"
	--[[Translation missing --]]
	L["Is Boss Debuff"] = "Is Boss Debuff"
	L["Is Stealable"] = "Est subtilisable "
	--[[Translation missing --]]
	L["Is Unit"] = "Is Unit"
	--[[Translation missing --]]
	L["Join Discord"] = "Join Discord"
	L["Justify"] = "Justification"
	L["Keep Aspect Ratio"] = "Conserver les Proportions"
	L["Keep your Wago imports up to date with the Companion App."] = "Gardez vos importations Wago à jour avec l'application Companion."
	--[[Translation missing --]]
	L["Large Input"] = "Large Input"
	L["Leaf"] = "Feuille"
	L["Left"] = "Gauche"
	L["Left 2 HUD position"] = "Position ATH Gauche 2"
	L["Left HUD position"] = "Position ATH Gauche"
	L["Length"] = "Longueur"
	--[[Translation missing --]]
	L["Length of |cFFFF0000%s|r"] = "Length of |cFFFF0000%s|r"
	L["Limit"] = "Limite"
	--[[Translation missing --]]
	L["Line"] = "Line"
	--[[Translation missing --]]
	L["Lines & Particles"] = "Lines & Particles"
	--[[Translation missing --]]
	L["Linked aura: "] = "Linked aura: "
	L["Load"] = "Chargement"
	L["Loaded"] = "Chargé"
	L["Lock Positions"] = "Verrouiller les positions"
	L["Loop"] = "Boucle"
	L["Low Mana"] = "Mana bas"
	L["Magnetically Align"] = "Alignement magnétique"
	L["Main"] = "Principal"
	--[[Translation missing --]]
	L["Match Count"] = "Match Count"
	--[[Translation missing --]]
	L["Match Count per Unit"] = "Match Count per Unit"
	L["Matches the height setting of a horizontal bar or width for a vertical bar."] = "Correspond au paramètre de hauteur d'une barre horizontale ou de largeur pour une barre verticale."
	L["Max"] = "Max"
	L["Max Length"] = "Longueur max"
	--[[Translation missing --]]
	L["Media Type"] = "Media Type"
	L["Medium Icon"] = "Icône moyenne"
	L["Message"] = "Message"
	L["Message Prefix"] = "Préfixe du message"
	L["Message Suffix"] = "Suffixe du message"
	L["Message Type"] = "Type de message"
	L["Min"] = "Min (minutes?)"
	L["Mirror"] = "Miroir"
	L["Model"] = "Modèle"
	L["Model %s"] = "Modèle %s"
	--[[Translation missing --]]
	L["Model Picker"] = "Model Picker"
	L["Model Settings"] = "Paramètres du modèle"
	--[[Translation missing --]]
	L["ModelPaths could not be loaded, the addon is %s"] = "ModelPaths could not be loaded, the addon is %s"
	L["Move Above Group"] = "Déplacer au dessus du groupe"
	L["Move Below Group"] = "Déplacer en dessous du grouoe"
	L["Move Down"] = "Déplacer vers le bas"
	L["Move Entry Down"] = "Déplacer l'entrée vers le bas"
	L["Move Entry Up"] = "Déplacer l'entrée vers le haut"
	--[[Translation missing --]]
	L["Move Into Above Group"] = "Move Into Above Group"
	--[[Translation missing --]]
	L["Move Into Below Group"] = "Move Into Below Group"
	L["Move this display down in its group's order"] = "Déplacer cet affichage vers le bas dans l'ordre de son groupe"
	L["Move this display up in its group's order"] = "Déplacer cet affichage vers le haut dans l'ordre de son groupe"
	L["Move Up"] = "Déplacer vers le haut"
	L["Multiple Displays"] = "Affichages multiples"
	L["Multiselect ignored tooltip"] = "Infobulle ignorée de la sélection multiple"
	L["Multiselect multiple tooltip"] = [=[
|cFF777777Ignoré|r - |cFF777777Unique|r - |cFF00FF00Multiple|r
Plusieurs valeurs peuvent être choisies]=]
	L["Multiselect single tooltip"] = [=[
|cFF777777Ignoré|r - |cFF00FF00Unique|r - |cFF777777Multiple|r
Seule une unique valeur peut être choisie]=]
	--[[Translation missing --]]
	L["Must be a power of 2"] = "Must be a power of 2"
	L["Name Info"] = "Info du nom"
	L["Name Pattern Match"] = "Correspondance de modèle de nom"
	L["Name(s)"] = "Nom(s)"
	L["Name:"] = "Nom:"
	--[[Translation missing --]]
	L["Nameplate"] = "Nameplate"
	L["Nameplates"] = "Barres de vie"
	L["Negator"] = "Pas"
	L["New Aura"] = "Nouvelle aura"
	--[[Translation missing --]]
	L["New Template"] = "New Template"
	L["New Value"] = "Nouvelle Valeur"
	L["No Children"] = "Aucun enfant"
	--[[Translation missing --]]
	L["No Logs saved."] = "No Logs saved."
	L["None"] = "Aucun"
	L["Not a table"] = "N'est pas une table"
	L["Not all children have the same value for this option"] = "Tous les enfants n'ont pas la même valeur pour cette option"
	L["Not Loaded"] = "Non chargé"
	--[[Translation missing --]]
	L["Note: Automated Messages to SAY and YELL are blocked outside of Instances."] = "Note: Automated Messages to SAY and YELL are blocked outside of Instances."
	--[[Translation missing --]]
	L["Npc ID"] = "Npc ID"
	L["Number of Entries"] = "Nombre d'entrées"
	--[[Translation missing --]]
	L[ [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3]=] ] = [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3]=]
	--[[Translation missing --]]
	L["Offer a guided way to create auras for your character"] = "Offer a guided way to create auras for your character"
	--[[Translation missing --]]
	L["Offset by |cFFFF0000%s|r/|cFFFF0000%s|r"] = "Offset by |cFFFF0000%s|r/|cFFFF0000%s|r"
	L["Offset by 1px"] = "Décalage de 1px"
	L["Okay"] = "Okay"
	L["On Hide"] = "Au masquage"
	L["On Init"] = "À l'initialisation"
	L["On Show"] = "A l'affichage"
	--[[Translation missing --]]
	L["Only Match auras cast by a player (not an npc)"] = "Only Match auras cast by a player (not an npc)"
	--[[Translation missing --]]
	L["Only match auras cast by people other than the player or their pet"] = "Only match auras cast by people other than the player or their pet"
	--[[Translation missing --]]
	L["Only match auras cast by the player or their pet"] = "Only match auras cast by the player or their pet"
	L["Operator"] = "Opérateur"
	L["Option %i"] = "Option %i"
	L["Option key"] = "Clef de l'option"
	L["Option Type"] = "Type d'option"
	L["Options will open after combat ends."] = "Les options s'ouvriront après la fin du combat."
	L["or"] = "ou"
	L["or Trigger %s"] = "ou Déclencheur %s"
	L["Orange Rune"] = "Rune orange"
	L["Orientation"] = "Orientation"
	L["Outer"] = "Extérieur"
	L["Outline"] = "Contour"
	L["Overflow"] = "Débordement"
	L["Overlay %s Info"] = "%s Infos en Superposition"
	L["Overlays"] = "Superpositions"
	L["Own Only"] = "Le mien uniquement"
	L["Paste Action Settings"] = "Coller les paramètres d'actions"
	L["Paste Animations Settings"] = "Coller les paramètres d'animations"
	L["Paste Author Options Settings"] = "Coller les paramètres des options de l'auteur"
	L["Paste Condition Settings"] = "Coller les paramètres de conditions"
	L["Paste Custom Configuration"] = "Coller les Options personnalisées"
	L["Paste Display Settings"] = "Coller les paramètres d'affichage"
	L["Paste Group Settings"] = "Coller les paramètres du groupe"
	L["Paste Load Settings"] = "Coller les paramètres de chargement"
	L["Paste Settings"] = "Coller les paramètres"
	L["Paste text below"] = "Coller le texte ci-dessous"
	L["Paste Trigger Settings"] = "Coller les paramètres de déclencheurs"
	--[[Translation missing --]]
	L["Places a tick on the bar"] = "Places a tick on the bar"
	L["Play Sound"] = "Jouer un son"
	L["Portrait Zoom"] = "Zoom Portrait"
	L["Position Settings"] = "Paramètres de position"
	--[[Translation missing --]]
	L["Preferred Match"] = "Preferred Match"
	--[[Translation missing --]]
	L["Premade Auras"] = "Premade Auras"
	--[[Translation missing --]]
	L["Premade Snippets"] = "Premade Snippets"
	L["Preset"] = "Préréglé"
	L["Press Ctrl+C to copy"] = "Appuyer sur Ctrl+C pour copier"
	L["Press Ctrl+C to copy the URL"] = "Appuyer sur Ctrl+C pour copier l'URL"
	--[[Translation missing --]]
	L["Prevent Merging"] = "Prevent Merging"
	L["Progress Bar"] = "Barre de progression"
	L["Progress Bar Settings"] = "Paramètres de la barre de progression"
	L["Progress Texture"] = "Texture de progression"
	L["Progress Texture Settings"] = "Paramètres de la texture de progression"
	L["Purple Rune"] = "Rune violette"
	L["Put this display in a group"] = "Placer cet affichage dans un groupe"
	L["Radius"] = "Rayon"
	L["Raid Role"] = "Rôle de raid"
	--[[Translation missing --]]
	L["Range in yards"] = "Range in yards"
	--[[Translation missing --]]
	L["Ready for Install"] = "Ready for Install"
	--[[Translation missing --]]
	L["Ready for Update"] = "Ready for Update"
	L["Re-center X"] = "Recentrer X"
	L["Re-center Y"] = "Recentrer Y"
	--[[Translation missing --]]
	L["Reciprocal TRIGGER:# requests will be ignored!"] = "Reciprocal TRIGGER:# requests will be ignored!"
	L["Regions of type \"%s\" are not supported."] = "Les régions de type \"%s\" ne sont pas prises en charge."
	L["Remaining Time"] = "Temps restant"
	L["Remove"] = "Retirer"
	L["Remove this display from its group"] = "Retirer cet affichage de son groupe"
	L["Remove this property"] = "Retirer cette propriété"
	L["Rename"] = "Renommer"
	L["Repeat After"] = "Répéter Après"
	L["Repeat every"] = "Répéter tous les"
	L["Report bugs on our issue tracker."] = "Signalez les bugs sur notre système de suivi des problèmes."
	--[[Translation missing --]]
	L["Require unit from trigger"] = "Require unit from trigger"
	L["Required for Activation"] = "Requis pour l'activation"
	--[[Translation missing --]]
	L["Requires LibSpecialization, that is e.g. a up-to date WeakAuras version"] = "Requires LibSpecialization, that is e.g. a up-to date WeakAuras version"
	--[[Translation missing --]]
	L["Requires syncing the specialization via LibSpecialization."] = "Requires syncing the specialization via LibSpecialization."
	L["Reset all options to their default values."] = "Réinitialiser toutes les options à leurs valeurs par défaut."
	--[[Translation missing --]]
	L["Reset Entry"] = "Reset Entry"
	L["Reset to Defaults"] = "Réinitialiser les paramètres par défaut"
	L["Right"] = "Droite"
	L["Right 2 HUD position"] = "Position ATH Droite 2"
	L["Right HUD position"] = "Position ATH Droite"
	L["Right-click for more options"] = "Clic-Droit pour plus d'options"
	L["Rotate"] = "Tourner"
	L["Rotate In"] = "Rotation entrante"
	L["Rotate Out"] = "Rotation sortante"
	L["Rotate Text"] = "Tourner le texte"
	L["Rotation"] = "Rotation"
	L["Rotation Mode"] = "Mode de rotation"
	--[[Translation missing --]]
	L["Row Space"] = "Row Space"
	--[[Translation missing --]]
	L["Row Width"] = "Row Width"
	L["Rows"] = "Lignes"
	--[[Translation missing --]]
	L["Run on..."] = "Run on..."
	L["Same"] = "Le même"
	--[[Translation missing --]]
	L["Same texture as Foreground"] = "Same texture as Foreground"
	--[[Translation missing --]]
	L["Saved Data"] = "Saved Data"
	L["Scale"] = "Échelle"
	--[[Translation missing --]]
	L["Select Talent"] = "Select Talent"
	L["Select the auras you always want to be listed first"] = "Choisissez les auras que vous voulez toujours voir apparaître en premier dans la liste"
	--[[Translation missing --]]
	L["Selected Frame"] = "Selected Frame"
	L["Send To"] = "Envoyer vers"
	L["Separator Text"] = "Texte Séparateur"
	L["Separator text"] = "texte séparateur"
	L["Set Parent to Anchor"] = "Définir Parent à l'Ancrage"
	L["Set Thumbnail Icon"] = "Définir la miniature"
	--[[Translation missing --]]
	L["Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."] = "Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."
	L["Settings"] = "Paramètres"
	--[[Translation missing --]]
	L["Shadow Color"] = "Shadow Color"
	L["Shadow X Offset"] = "Décalage X de l'ombre"
	L["Shadow Y Offset"] = "Décalage Y de l'ombre"
	L["Shift-click to create chat link"] = "Maj-Clic pour créer un lien de discussion"
	--[[Translation missing --]]
	L["Show \"Edge\""] = "Show \"Edge\""
	L["Show \"Swipe\""] = "Afficher le \"balayage\""
	--[[Translation missing --]]
	L["Show and Clone Settings"] = "Show and Clone Settings"
	L["Show Border"] = "Afficher l'encadrement"
	--[[Translation missing --]]
	L["Show Debug Logs"] = "Show Debug Logs"
	L["Show Glow"] = "Surbrillance"
	L["Show Icon"] = "Afficher l'icône"
	--[[Translation missing --]]
	L["Show If Unit Does Not Exist"] = "Show If Unit Does Not Exist"
	--[[Translation missing --]]
	L["Show Matches for"] = "Show Matches for"
	--[[Translation missing --]]
	L["Show Matches for Units"] = "Show Matches for Units"
	--[[Translation missing --]]
	L["Show Model"] = "Show Model"
	L["Show model of unit "] = "Montrer le modèle de l'unité"
	L["Show On"] = "Afficher Sur"
	L["Show Spark"] = "Afficher l'étincelle"
	L["Show Text"] = "Afficher Texte"
	L["Show this group's children"] = "Afficher les enfants de ce groupe"
	--[[Translation missing --]]
	L["Show Tick"] = "Show Tick"
	L["Shows a 3D model from the game files"] = "Affiche un modèle 3D tiré du jeu"
	L["Shows a border"] = "Affiche un encadrement"
	L["Shows a custom texture"] = "Affiche une texture personnalisée"
	--[[Translation missing --]]
	L["Shows a glow"] = "Shows a glow"
	L["Shows a model"] = "Affiche un modèle"
	L["Shows a progress bar with name, timer, and icon"] = "Affiche une barre de progression avec nom, temps, et icône"
	L["Shows a spell icon with an optional cooldown overlay"] = "Affiche une icône de sort avec optionnellement la durée ou le temps de recharge intégré"
	--[[Translation missing --]]
	L["Shows a stop motion texture"] = "Shows a stop motion texture"
	L["Shows a texture that changes based on duration"] = "Affiche une texture qui change selon la durée"
	L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "Affiche une ligne de texte ou plus, qui peut inclure des infos dynamiques telles que progression ou piles."
	L["Simple"] = "Basique"
	L["Size"] = "Taille"
	--[[Translation missing --]]
	L["Slant Amount"] = "Slant Amount"
	--[[Translation missing --]]
	L["Slant Mode"] = "Slant Mode"
	L["Slanted"] = "Incliné"
	L["Slide"] = "Glisser"
	L["Slide In"] = "Glisser entrant"
	L["Slide Out"] = "Glisser sortant"
	--[[Translation missing --]]
	L["Slider Step Size"] = "Slider Step Size"
	L["Small Icon"] = "Petite icône"
	L["Smooth Progress"] = "Progrès Doux"
	--[[Translation missing --]]
	L["Snippets"] = "Snippets"
	--[[Translation missing --]]
	L["Soft Max"] = "Soft Max"
	--[[Translation missing --]]
	L["Soft Min"] = "Soft Min"
	L["Sort"] = "Trier"
	L["Sound"] = "Son"
	L["Sound Channel"] = "Canal sonore"
	L["Sound File Path"] = "Chemin fichier son"
	L["Sound Kit ID"] = "ID Kit Son"
	L["Source"] = "Source"
	L["Space"] = "Espacer"
	L["Space Horizontally"] = "Espacer horizontalement"
	L["Space Vertically"] = "Espacer verticalement"
	L["Spark"] = "Étincelle"
	L["Spark Settings"] = "Paramètres de l'étincelle"
	L["Spark Texture"] = "Texture de l'étincelle"
	--[[Translation missing --]]
	L["Specialization"] = "Specialization"
	L["Specific Unit"] = "Unité spécifique"
	L["Spell ID"] = "ID de sort"
	--[[Translation missing --]]
	L["Spell Selection Filters"] = "Spell Selection Filters"
	L["Stack Count"] = "Nombre de Piles"
	L["Stack Info"] = "Info de Piles"
	L["Stagger"] = "Report"
	L["Star"] = "Étoile"
	L["Start"] = "Début"
	L["Start Angle"] = "Angle de départ"
	--[[Translation missing --]]
	L["Start Collapsed"] = "Start Collapsed"
	--[[Translation missing --]]
	L["Start of %s"] = "Start of %s"
	--[[Translation missing --]]
	L["Step Size"] = "Step Size"
	--[[Translation missing --]]
	L["Stop Motion"] = "Stop Motion"
	--[[Translation missing --]]
	L["Stop Motion Settings"] = "Stop Motion Settings"
	L["Stop Sound"] = "Arrêter le son"
	--[[Translation missing --]]
	L["Sub Elements"] = "Sub Elements"
	--[[Translation missing --]]
	L["Sub Option %i"] = "Sub Option %i"
	L["Swipe Overlay Settings"] = "Paramètres de la superposition des balayages"
	--[[Translation missing --]]
	L["Templates could not be loaded, the addon is %s"] = "Templates could not be loaded, the addon is %s"
	L["Temporary Group"] = "Groupe temporaire"
	L["Text"] = "Texte"
	L["Text %s"] = "Texte %s"
	L["Text Color"] = "Couleur Texte"
	L["Text Settings"] = "Paramètres du texte"
	L["Texture"] = "Texture"
	L["Texture Info"] = "Info Texture"
	--[[Translation missing --]]
	L["Texture Picker"] = "Texture Picker"
	--[[Translation missing --]]
	L["Texture Rotation"] = "Texture Rotation"
	L["Texture Settings"] = "Paramètres de la texture"
	L["Texture Wrap"] = "Enveloppe de texture"
	--[[Translation missing --]]
	L["Texture X Offset"] = "Texture X Offset"
	--[[Translation missing --]]
	L["Texture Y Offset"] = "Texture Y Offset"
	--[[Translation missing --]]
	L["The addon ElvUI is enabled. It might add cooldown numbers to the swipe. You can configure these in the ElvUI settings"] = "The addon ElvUI is enabled. It might add cooldown numbers to the swipe. You can configure these in the ElvUI settings"
	--[[Translation missing --]]
	L["The addon OmniCC is enabled. It might add cooldown numbers to the swipe. You can configure these in the OmniCC settings"] = "The addon OmniCC is enabled. It might add cooldown numbers to the swipe. You can configure these in the OmniCC settings"
	L["The duration of the animation in seconds."] = "La durée de l'animation en secondes."
	L["The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."] = "La durée de l'animation en secondes. L'animation de fin ne commence qu'après le moment où l'affichage est normalement caché."
	L["The type of trigger"] = "Le type de déclencheur"
	L["Then "] = "Alors"
	L["Thickness"] = "Épaisseur"
	--[[Translation missing --]]
	L["This adds %raidMark as text replacements."] = "This adds %raidMark as text replacements."
	--[[Translation missing --]]
	L["This adds %role, %roleIcon as text replacements. Does nothing if the unit is not a group member."] = "This adds %role, %roleIcon as text replacements. Does nothing if the unit is not a group member."
	--[[Translation missing --]]
	L["This adds %tooltip, %tooltip1, %tooltip2, %tooltip3 as text replacements and also allows filtering based on the tooltip content/values."] = "This adds %tooltip, %tooltip1, %tooltip2, %tooltip3 as text replacements and also allows filtering based on the tooltip content/values."
	--[[Translation missing --]]
	L[ [=[This aura contains custom Lua code.
Make sure you can trust the person who sent it!]=] ] = [=[This aura contains custom Lua code.
Make sure you can trust the person who sent it!]=]
	--[[Translation missing --]]
	L[ [=[This aura was created with a different version (%s) of World of Warcraft.
It might not work correctly!]=] ] = [=[This aura was created with a different version (%s) of World of Warcraft.
It might not work correctly!]=]
	--[[Translation missing --]]
	L[ [=[This aura was created with a newer version of WeakAuras.
It might not work correctly with your version!]=] ] = [=[This aura was created with a newer version of WeakAuras.
It might not work correctly with your version!]=]
	L["This display is currently loaded"] = "Cet affichage est actuellement chargé"
	L["This display is not currently loaded"] = "Cet affichage n'est pas chargé"
	--[[Translation missing --]]
	L["This enables the collection of debug logs. Custom code can add debug information to the log through the function DebugPrint."] = "This enables the collection of debug logs. Custom code can add debug information to the log through the function DebugPrint."
	--[[Translation missing --]]
	L["This is a modified version of your aura, |cff9900FF%s.|r"] = "This is a modified version of your aura, |cff9900FF%s.|r"
	--[[Translation missing --]]
	L["This is a modified version of your group: |cff9900FF%s|r"] = "This is a modified version of your group: |cff9900FF%s|r"
	L["This region of type \"%s\" is not supported."] = "Cette région de type \"%s\" n'est pas supportée."
	L["This setting controls what widget is generated in user mode."] = "Ce paramètre contrôle le widget généré en mode utilisateur."
	L["Tick %s"] = "Coche %s"
	--[[Translation missing --]]
	L["Tick Mode"] = "Tick Mode"
	--[[Translation missing --]]
	L["Tick Placement"] = "Tick Placement"
	L["Time in"] = "Temps entrant"
	L["Tiny Icon"] = "Très petite icône"
	L["To Frame's"] = "Au cadre de"
	--[[Translation missing --]]
	L["To Group's"] = "To Group's"
	L["To Personal Ressource Display's"] = "À ... du cadre des Res. Perso"
	L["To Screen's"] = "À ... de l'écran"
	L["Toggle the visibility of all loaded displays"] = "Change la visibilité de tous les affichages chargés"
	L["Toggle the visibility of all non-loaded displays"] = "Change la visibilité de tous les affichages non-chargés"
	L["Toggle the visibility of this display"] = "Activer/Désactiver la visibilité de cet affichage"
	L["Tooltip"] = "Infobulle"
	L["Tooltip Content"] = "Contenu de l'info-bulle"
	L["Tooltip on Mouseover"] = "Infobulle à la souris"
	L["Tooltip Pattern Match"] = "Correspondance de modèle de l'info-bulle"
	L["Tooltip Text"] = "Texte de l'Info-bulle."
	L["Tooltip Value"] = "Valeur de l'info-bulle"
	L["Tooltip Value #"] = "Valeur de l'info-bulle #"
	L["Top"] = "Haut"
	L["Top HUD position"] = "Position ATH Haute"
	L["Top Left"] = "Haut gauche"
	L["Top Right"] = "Haut droite"
	--[[Translation missing --]]
	L["Total Angle"] = "Total Angle"
	--[[Translation missing --]]
	L["Total Time"] = "Total Time"
	L["Trigger"] = "Déclencheur"
	L["Trigger %d"] = "Déclencheur %d"
	L["Trigger %s"] = "Déclencheur %s"
	--[[Translation missing --]]
	L["Trigger Combination"] = "Trigger Combination"
	L["True"] = "Vrai"
	L["Type"] = "Type"
	--[[Translation missing --]]
	L["Type 'select' for '%s' requires a values member'"] = "Type 'select' for '%s' requires a values member'"
	L["Ungroup"] = "Dissocier"
	L["Unit"] = "Unité"
	--[[Translation missing --]]
	L["Unit %s is not a valid unit for RegisterUnitEvent"] = "Unit %s is not a valid unit for RegisterUnitEvent"
	L["Unit Count"] = "Nombre d'unité"
	--[[Translation missing --]]
	L["Unit Frame"] = "Unit Frame"
	L["Unit Frames"] = "Cadre d'unité"
	--[[Translation missing --]]
	L["Unknown property '%s' found in '%s'"] = "Unknown property '%s' found in '%s'"
	L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "Contrairement aux animations de début et de fin, l'animation principale bouclera tant que l'affichage est visible."
	--[[Translation missing --]]
	L["Update"] = "Update"
	L["Update Auras"] = "Mettre à jour les auras"
	L["Update Custom Text On..."] = "Mettre à jour le texte personnalisé sur..."
	L["URL"] = "URL"
	--[[Translation missing --]]
	L["Url: %s"] = "Url: %s"
	L["Use Custom Color"] = "Utiliser une couleur personnalisée"
	L["Use Display Info Id"] = "Utiliser les informations d'identifiant de l'affichage"
	L["Use SetTransform"] = "Utiliser SetTransform"
	L["Use Texture"] = "Utiliser une texture"
	L["Used in Auras:"] = "Utilisé(e) dans les Auras:"
	L["Used in auras:"] = "Utilisé dans les auras:"
	--[[Translation missing --]]
	L["Uses Texture Coordinates to rotate the texture."] = "Uses Texture Coordinates to rotate the texture."
	--[[Translation missing --]]
	L["Uses UnitIsVisible() to check if in range. This is polled every second."] = "Uses UnitIsVisible() to check if in range. This is polled every second."
	L["Value %i"] = "Valeur %i"
	L["Values are in normalized rgba format."] = "Les valeurs sont normalisées dans le format rvba"
	L["Values:"] = "Valeurs:"
	L["Version: "] = "Version: "
	--[[Translation missing --]]
	L["Version: %s"] = "Version: %s"
	L["Vertical Align"] = "Aligner verticalement"
	L["Vertical Bar"] = "Barre verticale"
	L["View"] = "Vue"
	--[[Translation missing --]]
	L["View custom code"] = "View custom code"
	--[[Translation missing --]]
	L["Voice"] = "Voice"
	--[[Translation missing --]]
	L["WeakAuras %s on WoW %s"] = "WeakAuras %s on WoW %s"
	--[[Translation missing --]]
	L["What do you want to do?"] = "What do you want to do?"
	--[[Translation missing --]]
	L["Whole Area"] = "Whole Area"
	L["Width"] = "Largeur"
	--[[Translation missing --]]
	L["wrapping"] = "wrapping"
	L["X Offset"] = "Décalage X"
	L["X Rotation"] = "Rotation X"
	L["X Scale"] = "Echelle X"
	L["X-Offset"] = "Décalage X"
	L["x-Offset"] = "x-Décalage"
	L["Y Offset"] = "Décalage Y"
	L["Y Rotation"] = "Rotation Y"
	L["Y Scale"] = "Echelle Y"
	L["Yellow Rune"] = "Rune jaune"
	L["Yes"] = "Oui"
	L["y-Offset"] = "y-Décalage"
	L["Y-Offset"] = "Décalage Y"
	--[[Translation missing --]]
	L["You already have this group/aura. Importing will create a duplicate."] = "You already have this group/aura. Importing will create a duplicate."
	L["You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"] = "Vous êtes sur le point de supprimer %d aura(s). |cFFFF0000Cela ne peut pas être annulé !|r Voulez-vous continuer ?"
	--[[Translation missing --]]
	L["You are about to delete a trigger. |cFFFF0000This cannot be undone!|r Would you like to continue?"] = "You are about to delete a trigger. |cFFFF0000This cannot be undone!|r Would you like to continue?"
	--[[Translation missing --]]
	L[ [=[You can add a comma-separated list of state values here that (when changed) WeakAuras should also run the Grow Code on.

WeakAuras will always run custom grow code if you include 'changed' in this list, or when a region is added, removed, or re-ordered.]=] ] = [=[You can add a comma-separated list of state values here that (when changed) WeakAuras should also run the Grow Code on.

WeakAuras will always run custom grow code if you include 'changed' in this list, or when a region is added, removed, or re-ordered.]=]
	--[[Translation missing --]]
	L["You can add a comma-separated list of state values here that (when changed) WeakAuras should also run the sort code on.WeakAuras will always run custom sort code if you include 'changed' in this list, or when a region is added, removed."] = "You can add a comma-separated list of state values here that (when changed) WeakAuras should also run the sort code on.WeakAuras will always run custom sort code if you include 'changed' in this list, or when a region is added, removed."
	--[[Translation missing --]]
	L["Your Saved Snippets"] = "Your Saved Snippets"
	L["Z Offset"] = "Décalage Z"
	L["Z Rotation"] = "Rotation Z"
	L["Zoom"] = "Zoom"
	L["Zoom In"] = "Zoom avant"
	L["Zoom Out"] = "Zoom arrière"

