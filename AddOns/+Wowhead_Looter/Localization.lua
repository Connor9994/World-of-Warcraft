WL_LOADED = "%s loaded (%d)";

-- Descriptions
WL_DESC_NPCID = "Show/hide the NPC ID of your target/mouseover in a movable tooltip.";
WL_DESC_NPCID_RESET = "Reset the NPC ID tooltip's position.";
WL_DESC_LOCATION = "Show/hide your location in a movable tooltip.";
WL_DESC_LOCATION_RESET = "Reset the location tooltip's position.";
WL_DESC_LOCATION_WORLDMAP = "Show/Hide your location in the world map interface.";

WL_HELP = {
    "|cffffff00Wowhead Looter help:|r",
    "  |cffffff7f" ..GAME_VERSION_LABEL.. ":|r %VERSION%",
    "  |cffffff7f/wl reset|r - Reset all the data collected so far.",
    "  |cffffff7f/wl minimap|r - Show/Hide the minimap button.",
    "  |cffffff7f/wl id|r - "..WL_DESC_NPCID,
    "  |cffffff7f/wl id reset|r - "..WL_DESC_NPCID_RESET,
    "  |cffffff7f/wl loc|r - Display your current location in the chat box.",
    "  |cffffff7f/wl loc map|r - "..WL_DESC_LOCATION_WORLDMAP,
    "  |cffffff7f/wl loc tooltip|r - "..WL_DESC_LOCATION,
    "  |cffffff7f/wl loc reset|r - "..WL_DESC_LOCATION_RESET,
};

WL_ENABLED = "|cff00ff00enabled|r";
WL_DISABLED = "|cffff0000disabled|r";

-- Coordinate
WL_LOC = "Your current location is %.1f, %.1f.";
WL_LOC_MAP = "World map coordinates are now %s.";
WL_LOC_TOOLTIP = "Tooltip coordinates are now %s.";
WL_LOC_CURSOR = "Cursor";

-- Id
WL_ID_TOOLTIP = "Tooltip ids are now %s.";

WL_MINIMAP = "Minimap button is now %s.";

-- Completist
WL_UPLOAD_REMINDER = "Don't forget to upload your collected data using the Wowhead Client!"
WL_COLLECT_DONE = "Completist data has been collected successfully.";
WL_COLLECT_MSG = "Character data for %s has been collected successfully.";
WL_COLLECT_GLYPHS = "glyphs";
WL_COLLECT_ARCHAEOLOGY = "archaeology";
WL_COLLECT_LASTSEP = " and ";

-- Misc
WL_RUNSAWAY = "%s attempts to run away in fear!";
WL_CRITTER = "Critter";

-- Armor Specialization
WL_PLATE = "Plate";
WL_MAIL = "Mail";
WL_LEATHER = "Leather";
WL_CLOTH = "Cloth";

WL_RESET_CONFIRM_TEXT = "Do you want to reset everything the Wowhead Looter collected so far?\n|cffff0000This will also reload your UI.|r";

-- Options
WL_OPTIONS_MINIMAP_CLICK = "Click to open the options.";
WL_OPTIONS_MINIMAP_SHOW = "Show minimap button";
WL_OPTIONS_COMPLETION_DATA = "Completion Data";
WL_OPTIONS_COLLECT = "Collect";
WL_OPTIONS_LOCATION = "Location";
WL_OPTIONS_TOOLTIP = "Tooltip";
WL_OPTIONS_RESET_ALL = "Reset all data";
WL_OPTIONS_GENERAL = "General";


local clientLocale = GetLocale();

if clientLocale == "deDE" then

    WL_LOADED = "%s geladen (%d)";
    
    -- Descriptions
    WL_DESC_NPCID = "Zeigt/versteckt die NPC ID in einem bewegbaren Tooltip.";
    WL_DESC_NPCID_RESET = "Die Position des NPC ID-Tooltips zurücksetzen.";
    WL_DESC_LOCATION = "Zeigt/versteckt Euren Aufenthaltsort in einem bewegbaren Tooltip.";
    WL_DESC_LOCATION_RESET = "Die Position des Aufenthaltsort-Tooltips zurücksetzen.";
    WL_DESC_LOCATION_WORLDMAP = "Zeigt/versteckt Euren Aufenthaltsort auf der Weltkarte.";
    
    WL_HELP = {
        "|cffffff00Wowhead Looter Hilfe:|r",
        "  |cffffff7f" ..GAME_VERSION_LABEL.. ":|r %VERSION%",
        "  |cffffff7f/wl reset|r - Setzen Sie alle bisher gesammelten Daten.",
        "  |cffffff7f/wl minimap|r - Zeigt/versteckt die minimap Taste.",
        "  |cffffff7f/wl id|r - "..WL_DESC_NPCID,
        "  |cffffff7f/wl id reset|r - "..WL_DESC_NPCID_RESET,
        "  |cffffff7f/wl loc|r - Euren aktuellen Aufenthaltsort in der Chatbox anzeigen.",
        "  |cffffff7f/wl loc map|r - "..WL_DESC_LOCATION_WORLDMAP,
        "  |cffffff7f/wl loc tooltip|r - "..WL_DESC_LOCATION,
        "  |cffffff7f/wl loc reset|r - "..WL_DESC_LOCATION_RESET,
    };

    WL_ENABLED = "|cff00ff00aktiviert|r";
    WL_DISABLED = "|cffff0000deaktiviert|r";

    -- Coordinate
    WL_LOC = "Euer aktueller Aufenthaltsort ist %.1f, %.1f.";
    WL_LOC_MAP = "Weltkartenkoordinaten sind nun %s.";
    WL_LOC_TOOLTIP = "Tooltip-Koordinaten sind nun %s.";
    WL_LOC_CURSOR = "Kursor";

    -- Id
    WL_ID_TOOLTIP = "Tooltip-IDs sind nun %s.";

    -- Completist
    WL_UPLOAD_REMINDER = "Vergisst nicht, Eure eingesammelten Daten mit dem Wowhead Client hochzuladen!"
    WL_COLLECT_DONE = "Zusätzliche Charakterdaten wurden erfolgreich eingesammelt.";
    WL_COLLECT_MSG = "Charakterdaten für %s wurden erfolgreich eingesammelt.";
    WL_COLLECT_GLYPHS = "Glyphen";
    WL_COLLECT_ARCHAEOLOGY = "Archäologie";
    WL_COLLECT_LASTSEP = " und ";

    -- Misc
    WL_RUNSAWAY = "%s versucht zu flüchten!";
    WL_CRITTER = "Tier";
    
    -- Armor Specialization
    WL_PLATE = "Platte";
    WL_MAIL = "Kette";
    WL_LEATHER = "Leder";
    WL_CLOTH = "Stoff";
    
    WL_RESET_CONFIRM_TEXT = "Wollen Sie alles, was das Wowhead Looter bisher gesammelten zurücksetzen?\n|cffff0000Dies wird auch reload Benutzeroberfläche.|r";

    -- Options
    WL_OPTIONS_MINIMAP_CLICK = "Klicken Sie auf die Optionen offen";
    WL_OPTIONS_MINIMAP_SHOW = "Zeiget Minimap Button";
    WL_OPTIONS_COMPLETION_DATA = "Daten";
    WL_OPTIONS_COLLECT = "Sammeln";
    WL_OPTIONS_LOCATION = "Aufenthaltsort";
    WL_OPTIONS_TOOLTIP = "Tooltip";
    WL_OPTIONS_RESET_ALL = "Reset alle Daten";
    WL_OPTIONS_GENERAL = "General";
    

elseif clientLocale == "esES" or clientLocale == "esMX" then

    WL_LOADED = "%s loaded (%d)";
    
    -- Descriptions
    WL_DESC_NPCID = "Muestra/oculta la NPC ID en un tooltip desplazable.";
    WL_DESC_NPCID_RESET = "Resetea la NPC ID de la posición del tooltip.";
    WL_DESC_LOCATION = "Muestra/oculta tu ubicación en un tooltip desplazable.";
    WL_DESC_LOCATION_RESET = "Resetea la ubicación de la posición del tooltip.";
    WL_DESC_LOCATION_WORLDMAP = "Muestra/oculta tu ubicación en la interfaz del mapa.";
    
    WL_HELP = {
        "|cffffff00Ayuda de Wowhead Looter:|r",
        "  |cffffff7f" ..GAME_VERSION_LABEL.. ":|r %VERSION%",
        "  |cffffff7f/wl reset|r - Restablecer todos los datos recogidos hasta el momento.",
        "  |cffffff7f/wl minimap|r - Muestra/oculta el botón del minimapa.",
        "  |cffffff7f/wl id|r - "..WL_DESC_NPCID,
        "  |cffffff7f/wl id reset|r - "..WL_DESC_NPCID_RESET,
        "  |cffffff7f/wl loc|r - Muestra tu actual ubicación en el chat.",
        "  |cffffff7f/wl loc map|r - "..WL_DESC_LOCATION_WORLDMAP,
        "  |cffffff7f/wl loc tooltip|r - "..WL_DESC_LOCATION,
        "  |cffffff7f/wl loc reset|r - "..WL_DESC_LOCATION_RESET,
    };
    
    WL_ENABLED = "|cff00ff00activado|r";
    WL_DISABLED = "|cffff0000desactivado|r";

    -- Coordinate
    WL_LOC = "Tu ubicación actual es %.1f, %.1f.";
    WL_LOC_MAP = "Las coordenadas en el mapa del mundo están ahora %s.";
    WL_LOC_TOOLTIP = "Las coordenadas en el tooltip están ahora %s.";
    WL_LOC_CURSOR = "Cursor";

    -- Id
    WL_ID_TOOLTIP = "Las IDs de los Tooltips están ahora %s.";

    -- Completist
    WL_UPLOAD_REMINDER = "¡No olvides subir los datos recogidos usando el Cliente Wowhead!"
    WL_COLLECT_DONE = "Los datos han sido recolectados correctamente.";
    WL_COLLECT_MSG = "Los datos del personaje %s han sido recolectados correctamente.";
    WL_COLLECT_GLYPHS = "glifos";
    WL_COLLECT_ARCHAEOLOGY = "arqueología";
    WL_COLLECT_LASTSEP = " y ";

    -- Misc
    WL_RUNSAWAY = "¡%s intenta huir atemorizado!";
    WL_CRITTER = "Alimaña";
    
    -- Armor Specialization
    WL_PLATE = "Placas";
    WL_MAIL = "Mallas";
    WL_LEATHER = "Cuero";
    WL_CLOTH = "Tela";
    
    WL_RESET_CONFIRM_TEXT = "¿Desea reiniciar todo el Wowhead Looter recogidos hasta el momento?\n|cffff0000Esto también se volverá a cargar la interfaz de usuario.|r";

    -- Options
    WL_OPTIONS_MINIMAP_CLICK = "Haga clic para abrir las opciones.";
    WL_OPTIONS_MINIMAP_SHOW = "Muestra minimapa botón";
    WL_OPTIONS_COMPLETION_DATA = "Datos";
    WL_OPTIONS_COLLECT = "Recoger";
    WL_OPTIONS_LOCATION = "Posición";
    WL_OPTIONS_TOOLTIP = "Tooltip";
    WL_OPTIONS_RESET_ALL = "Restablecer todos los datos";
    WL_OPTIONS_GENERAL = "General";
    

elseif clientLocale == "frFR" then

    WL_LOADED = "%s chargé (%d)";
    
    -- Descriptions
    WL_DESC_NPCID = "Afficher/cacher le NPC ID de votre cible/mouseover dans une infobulle déplaçable.";
    WL_DESC_NPCID_RESET = "Réinitialisation de la position de l'infobulle NPC ID.";
    WL_DESC_LOCATION = "Afficher/cacher votre position dans une infobulle déplaçable.";
    WL_DESC_LOCATION_RESET = "Réinitialisation de la position de l'infobulle position.";
    WL_DESC_LOCATION_WORLDMAP = "Afficher/cacher votre position sur la carte du monde.";
    
    WL_HELP = {
        "|cffffff00Aide du Wowhead Looter:|r",
        "  |cffffff7f" ..GAME_VERSION_LABEL.. ":|r %VERSION%",
        "  |cffffff7f/wl reset|r - Réinitialiser toutes les données collectées jusque maintenant.",
        "  |cffffff7f/wl minimap|r - Afficher/cacher le bouton de la minimap.",
        "  |cffffff7f/wl id|r - "..WL_DESC_NPCID,
        "  |cffffff7f/wl id reset|r - "..WL_DESC_NPCID_RESET,
        "  |cffffff7f/wl loc|r - Afficher votre position actuelle dans la fenêtre de chat.",
        "  |cffffff7f/wl loc map|r - "..WL_DESC_LOCATION_WORLDMAP,
        "  |cffffff7f/wl loc tooltip|r - "..WL_DESC_LOCATION,
        "  |cffffff7f/wl loc reset|r - "..WL_DESC_LOCATION_RESET,
    };

    WL_ENABLED = "|cff00ff00activé|r";
    WL_DISABLED = "|cffff0000désactivé|r";

    -- Coordinate
    WL_LOC = "Votre position actuelle est %.1f, %.1f.";
    WL_LOC_MAP = "Les coordonnées de la carte du monde sont maintenant %s.";
    WL_LOC_TOOLTIP = "Les coordonnées de l'infobulle sont maintenant %s.";
    WL_LOC_CURSOR = "Curseur";

    -- Id
    WL_ID_TOOLTIP = "Les ids d'infobulles sont maintenant %s.";

    -- Completist
    WL_UPLOAD_REMINDER = "N'oubliez pas de uploader vos données collectées avec le Wowhead Client!"
    WL_COLLECT_DONE = "Toutes les données d'achèvement ont été collectées avec succès.";
    WL_COLLECT_MSG = "Les données de %s du personnage ont été collectées avec succès.";
    WL_COLLECT_GLYPHS = "glyphe";
    WL_COLLECT_ARCHAEOLOGY = "archéologie";
    WL_COLLECT_LASTSEP = " et ";

    -- Misc
    WL_RUNSAWAY = "%s essai de s'enfuir en peur!";
    WL_CRITTER = "Bestiole";
    
    -- Armor Specialization
    WL_PLATE = "Plaques";
    WL_MAIL = "Mailles";
    WL_LEATHER = "Cuir";
    WL_CLOTH = "Tissu";
    
    WL_RESET_CONFIRM_TEXT = "Voulez vous réinitialiser tout ce que le Wowhead Looter a collecté jusqu'ici?\n|cffff0000Cela rechargera aussi votre Interface.|r";
    
    -- Options
    WL_OPTIONS_MINIMAP_CLICK = "Cliquez pour ouvrir les options.";
    WL_OPTIONS_MINIMAP_SHOW = "Montrer le bouton minimap";
    WL_OPTIONS_COMPLETION_DATA = "Données";
    WL_OPTIONS_COLLECT = "Collecter";
    WL_OPTIONS_LOCATION = "Position";
    WL_OPTIONS_TOOLTIP = "Infobulle";
    WL_OPTIONS_RESET_ALL = "Réinitialiser";
    WL_OPTIONS_GENERAL = "Général";


elseif clientLocale == "ruRU" then

    WL_LOADED = "%s загружен (%d)";
    
    -- Descriptions
    WL_DESC_NPCID = "Показать или скрыть перемещаемую подсказку с ID неигровых персонажей";
    WL_DESC_NPCID_RESET = "Сбросить позицию подсказки с ID неигровых персонажей.";
    WL_DESC_LOCATION = "Показать или скрыть перемещаемую подсказку с текущими координатами.";
    WL_DESC_LOCATION_RESET = "Сбросить позицию подсказки с текущими координатами.";
    WL_DESC_LOCATION_WORLDMAP = "Показать или скрыть текущие координаты на карте мира.";
    
    WL_HELP = {
        "|cffffff00Справочная информация о Wowhead Looter:|r",
        "  |cffffff7f" ..GAME_VERSION_LABEL.. ":|r %VERSION%",
        "  |cffffff7f/wl reset|r - Сбросить все данные, собранные до настоящего момента.",
        "  |cffffff7f/wl minimap|r - Показать/скрыть кнопки около миникарты.",
        "  |cffffff7f/wl id|r - "..WL_DESC_NPCID,
        "  |cffffff7f/wl id reset|r - "..WL_DESC_NPCID_RESET,
        "  |cffffff7f/wl loc|r - Отобразить текущие координаты в окне чата.",
        "  |cffffff7f/wl loc map|r - "..WL_DESC_LOCATION_WORLDMAP,
        "  |cffffff7f/wl loc tooltip|r - "..WL_DESC_LOCATION,
        "  |cffffff7f/wl loc reset|r - "..WL_DESC_LOCATION_RESET,
    };
    
    WL_ENABLED = "|cff00ff00включена|r";
    WL_DISABLED = "|cffff0000отключена|r";

    -- Coordinate
    WL_LOC = "Текущие координаты: %.1f, %.1f.";
    WL_LOC_MAP = "Теперь строка с мировыми координатами %s.";
    WL_LOC_TOOLTIP = "Теперь подсказка с координатами %s.";
    WL_LOC_CURSOR = "Курсор";

    -- Id
    WL_ID_TOOLTIP = "Теперь подсказка, отображающая ID неигровых персонажей, %s.";

    -- Completist
    WL_UPLOAD_REMINDER = "Не забудьте загрузить данные, собранные с помощью Wowhead Client!"
    WL_COLLECT_DONE = "Данные о завершенности были успешно собраны.";
    WL_COLLECT_MSG = "Данные, касающиеся персонажа %s, были успешно собраны.";
    WL_COLLECT_GLYPHS = "символы";
    WL_COLLECT_ARCHAEOLOGY = "археология";
    WL_COLLECT_LASTSEP = " и ";

    -- Misc
    WL_RUNSAWAY = "%s в страхе пытается убежать!";
    WL_CRITTER = "Существа";
    WL_MINIMAP = "Теперь кнопка около миникарты %s.";
    
    -- Armor Specialization
    WL_PLATE = "Латы";
    WL_MAIL = "Кольчуга";
    WL_LEATHER = "Кожа";
    WL_CLOTH = "Ткань";
    
    WL_RESET_CONFIRM_TEXT = "Вы хотите сбросить все данные, собранные Wowhead Looter до настоящего момента?\n|cffff0000После этого интерфейс будет перезагружен.|r";

    -- Options
    WL_OPTIONS_MINIMAP_CLICK = "Щелкните, чтобы увидеть опции.";
    WL_OPTIONS_MINIMAP_SHOW = "Отображать кнопку около миникарты.";
    WL_OPTIONS_COMPLETION_DATA = "Данные о завершенности";
    WL_OPTIONS_COLLECT = "Собрать";
    WL_OPTIONS_LOCATION = "Локация";
    WL_OPTIONS_TOOLTIP = "Подсказка";
    WL_OPTIONS_RESET_ALL = "Сбросить все данные";
    WL_OPTIONS_GENERAL = "Общее";


end