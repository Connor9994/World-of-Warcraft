if (GAME_LOCALE or GetLocale()) ~= "esES" then
  return
end

local L = WeakAuras.L

-- WeakAuras
L[ [=[ Filter formats: 'Name', 'Name-Realm', '-Realm'. 

Supports multiple entries, separated by commas
Can use \ to escape -.]=] ] = [=[Formatos de filtro: 'Nombre', 'Nombre-Reino', '-Reino'. 

Admite varias entradas, separadas por comas
Puedes utilizar \ para escapar -.]=]
L["%s Overlay Color"] = "%s Color de superposición"
L["* Suffix"] = "* Sufijo"
L["/wa help - Show this message"] = "/wa help - Muestra este mensaje"
L["/wa minimap - Toggle the minimap icon"] = "/wa minimap - Muestra/oculta el botón del minimapa"
L["/wa pprint - Show the results from the most recent profiling"] = "/wa pprint - Muestra los resultados de los perfiles más recientes"
L["/wa pstart - Start profiling. Optionally include a duration in seconds after which profiling automatically stops. To profile the next combat/encounter, pass a \"combat\" or \"encounter\" argument."] = "/wa pstart: inicia perfilados. Opcionalmente, incluya una duración en segundos después de la cual perfilado se detiene automáticamente. Para perfilar el próximo combate/encuentro, pase un argumento de \"combate\" o \"encuentro\"."
L["/wa pstop - Finish profiling"] = "/wa pstop - Finalizar perfilado"
L["/wa repair - Repair tool"] = "/wa repair - Herramienta de reparación"
L["|cffeda55fLeft-Click|r to toggle showing the main window."] = "|cffeda55fClic derecho|r para mostrar la ventana principal."
L["|cffeda55fMiddle-Click|r to toggle the minimap icon on or off."] = "|cffeda55fClic central|r para mostrar/ocultar el icono del minimapa."
L["|cffeda55fRight-Click|r to toggle performance profiling window."] = "|cffeda55fClick-derecho|r para activar la ventana de perfiles de rendimiento."
L["|cffeda55fShift-Click|r to pause addon execution."] = "|cffeda55fMayús clic|r para pausar la ejecución del addon."
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
L["1. Profession 1. Accessory"] = "1. Profesión 1. Accesorio"
L["1. Profession 2. Accessory"] = "1. Profesión 2. Accesorio"
L["1. Professsion Tool"] = "1. Herramienta de profesión"
L["10 Man Raid"] = "Banda de 10 Jugadores"
L["10 Player Raid"] = "Banda de 10 jugadores"
L["10 Player Raid (Heroic)"] = "Banda de 10 jugadores (heroico)"
L["10 Player Raid (Normal)"] = "Banda de 10 jugadores (normal)"
L["2. Profession 1. Accessory"] = "2. Profesión 1. Accesorio"
L["2. Profession 2. Accessory"] = "2. Profesión 2. Accesorio"
L["2. Professsion Tool"] = "2. Herramienta de profesión"
L["20 Man Raid"] = "Banda de 20 jugadores"
L["20 Player Raid"] = "Banda de 20 jugadores"
L["25 Man Raid"] = "Banda de 25 Jugadores"
L["25 Player Raid"] = "Banda de 25 jugadores"
L["25 Player Raid (Heroic)"] = "Banda de 25 jugadores (heroico)"
L["25 Player Raid (Normal)"] = "Banda de 25 jugadores (normal)"
L["40 Man Raid"] = "Banda de 40 jugadores"
L["40 Player Raid"] = "Banda de 40 jugadores"
L["5 Man Dungeon"] = "Mazmorra de 5 jugadores"
L["A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."] = "Un activador de esta aura está configurado para rastrear una unidad de tipo soft target, pero no tienes configuradas las CVars para que esto funcione correctamente. Considera la posibilidad de cambiar la unidad rastreada o de configurar las CVars de soft target."
L["Abbreviate"] = "Abreviar"
L["AbbreviateLargeNumbers (Blizzard)"] = "AbreviarNúmerosGrandes (Blizzard)"
L["AbbreviateNumbers (Blizzard)"] = "AbreviarNúmeros (Blizzard)"
L["Absorb"] = "Absorción"
L["Absorb Display"] = "Mostrar absorción"
--[[Translation missing --]]
L["Absorb Heal Display"] = "Absorb Heal Display"
L["Absorbed"] = "Absorbido"
L["Action Button Glow"] = "Botón de acción resplandeciente"
L["Action Usable"] = "Acción Utilizable"
L["Actions"] = "Acciones"
L["Active"] = "Activo"
L["Add"] = "Añadir"
L["Add Missing Auras"] = "Añadir auras perdidas"
L["Additional Trigger Replacements"] = "Sustitución de activadores adicionales"
L["Advanced Caster's Target Check"] = "Comprobación avanzada del objetivo del lanzador"
L["Affected"] = "Afectado"
L["Affected Unit Count"] = "Recuento de unidades afectadas"
L["Afk"] = "Afk"
L["Aggro"] = "Amenaza"
L["Agility"] = "Agilidad"
L["Ahn'Qiraj"] = "Ahn'Qiraj"
L["Alchemy Cast Bar"] = "Barra de lanzamiento de alquimia"
L["Alert Type"] = "Tipo de alerta"
L["Algalon the Observer"] = "Algalon el Observador"
L["Alive"] = "Vivo"
L["All"] = "Todo"
--[[Translation missing --]]
L["All States table contains a non table at key: '%s'."] = "All States table contains a non table at key: '%s'."
L["All Triggers"] = "Todos los activadores"
L["Alliance"] = "Alianza"
L["Allow partial matches"] = "Permitir coincidencias parciales"
L["Alpha"] = "Transparencia"
L["Alternate Power"] = "Energía Alternativa"
L["Always"] = "Siempre"
L["Always active trigger"] = "Siempre activar activador"
L["Always include realm"] = "Incluir siempre el reino"
L["Always True"] = "Siempre verdadero"
L["Amount"] = "Cantidad"
L["Anchoring"] = "Anclaje"
--[[Translation missing --]]
L["And Talent"] = "And Talent"
L["Animations"] = "Animaciones"
L["Anticlockwise"] = "Sentido antihorario"
L["Anub'arak"] = "Anub'arak"
L["Anub'Rekhan"] = "Anub'Rekhan"
L["Any"] = "Cualquiera"
L["Any Triggers"] = "Cualquier activador"
L["AOE"] = "AOE"
L["Arcane Resistance"] = "Resistencia arcana"
L["Archavon the Stone Watcher"] = "Archavon el Vigía de Piedra"
L[ [=[Are you sure you want to run the |cffff0000EXPERIMENTAL|r repair tool?
This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=] ] = "¿Estás seguro de que quieres ejecutar la herramienta de reparación |cffff0000EXPERIMENTAL|r? Esto sobrescribirá cualquier cambio que hayas realizado desde la última actualización de la base de datos. Última actualización: %s"
L["Arena"] = "Arena"
L["Armor (%)"] = "Armadura (%)"
--[[Translation missing --]]
L["Armor against Target (%)"] = "Armor against Target (%)"
L["Armor Peneration Percent"] = "Porcentaje de penetración de armadura"
L["Armor Peneration Rating"] = "Índice de penetración de armadura"
L["Armor Rating"] = "Índice de armadura"
--[[Translation missing --]]
L["Array"] = "Array"
L["Ascending"] = "Ascendente"
L["Assembly of Iron"] = "Asamblea de Hierro"
L["Assigned Role"] = "Rol asignado"
L["Assigned Role Icon"] = "Icono del rol asignado"
--[[Translation missing --]]
L["Assist"] = "Assist"
L["At Least One Enemy"] = "Como Mínimo un Enemigo"
L["At missing Value"] = "Al faltar el valor"
L["At Percent"] = "Al porcentaje"
L["At Value"] = "Al valor"
L["Attach to End"] = "Fijar al final"
L["Attach to Start"] = "Fijar al inicio"
L["Attack Power"] = "Poder de ataque"
L["Attackable"] = "Atacable"
L["Attackable Target"] = "Objetivo atacable"
L["Aura"] = "Aura"
L["Aura '%s': %s"] = "Aura '%s': %s"
L["Aura Applied"] = "Aura Aplicada"
L["Aura Applied Dose"] = "Aura Aplicada Dosis"
L["Aura Broken"] = "Aura Rota"
L["Aura Broken Spell"] = "Aura Hechizo Roto"
L["Aura loaded"] = "Aura cargada"
L["Aura Name"] = "Nombre del Aura o ID"
L["Aura Names"] = "Nombres de aura"
L["Aura Refresh"] = "Aura Refrescada"
L["Aura Removed"] = "Aura Eliminada"
L["Aura Removed Dose"] = "Aura Eliminada Dosis"
L["Aura Stack"] = "Acumulación de Auras"
L["Aura Type"] = "Tipo de Aura"
L["Aura Version: %s"] = "Versión del aura: %s"
L["Aura(s) Found"] = "Aura(s) encontrada(s)"
L["Aura(s) Missing"] = "Aura(s) faltante(s)"
L["Aura:"] = "Aura:"
L["Auras:"] = "Auras:"
L["Auriaya"] = "Auriaya"
L["Author Options"] = "Opciones de autor"
L["Auto"] = "Auto"
--[[Translation missing --]]
L["Autocast Shine"] = "Autocast Shine"
L["Automatic"] = "Automático"
L["Automatic Length"] = "Longitud automática"
L["Automatic Rotation"] = "Rotación automática"
L["Avoidance (%)"] = "Evasión (%)"
L["Avoidance Rating"] = "Índice de evasión"
L["Ayamiss the Hunter"] = "Ayamiss el Cazador"
L["Back and Forth"] = "De Atrás a Adelante"
L["Background"] = "Fondo"
L["Background Color"] = "Color de fondo"
L["Baltharus the Warborn"] = "Baltharus el Batallante"
L["Bar Color"] = "Color de la barra"
L["Baron Geddon"] = "Barón Geddon"
L["Battle for Azeroth"] = "Battle for Azeroth"
L["Battle.net Whisper"] = "Battle.net Mensaje"
L["Battleground"] = "Campo de Batalla"
L["Battleguard Sartura"] = "Guardia de batalla Sartura"
L["BG>Raid>Party>Say"] = "BG>Banda>Grupo>Decir"
L["BG-System Alliance"] = "Campo de Batalla - Alianza"
L["BG-System Horde"] = "Campo de Batalla - Horda"
L["BG-System Neutral"] = "Campo de Batalla - Neutral"
L["Big Number"] = "Número grande"
L["BigWigs Addon"] = "Addon de BigWigs"
L["BigWigs Message"] = "Mensaje de BigWigs"
L["BigWigs Stage"] = "Fase de BigWigs"
L["BigWigs Timer"] = "Temporizador de BigWigs"
L["Black Wing Lair"] = "Guarida de Alanegra"
L["Blacksmithing Cast Bar"] = "Barra de lanzamiento de herrería"
L["Blizzard (2h | 3m | 10s | 2.4)"] = "Blizzard (2h | 3m | 10s | 2.4)"
L["Blizzard Combat Text"] = "Texto de Combate de Blizzard"
L["Blizzard Cooldown Reduction"] = "Reducción de reutilización de Blizzard"
L["Block"] = "Bloqueo"
L["Block (%)"] = "Bloquear (%)"
L["Block against Target (%)"] = "Bloqueo contra objetivo (%)"
L["Block Value"] = "Valor de bloqueo"
L["Blocked"] = "Bloqueado"
L["Blood"] = "Sangre"
L["Blood Prince Council"] = "Consejo de Príncipes de Sangre"
L["Blood Rune #1"] = "Runa sangrienta #1"
L["Blood Rune #2"] = "Runa sangrienta #2"
L["Bloodlord Mandokir"] = "Señor sangriento Mandokir"
L["Blood-Queen Lana'thel"] = "Reina de Sangre Lana'thel"
L["Border"] = "Borde"
L["Boss"] = "Jefe"
L["Boss Emote"] = "Jefe - Emoción"
L["Boss Whisper"] = "Susurro de jefe"
L["Bottom"] = "Abajo"
L["Bottom Left"] = "Abajo Izquierda"
L["Bottom Right"] = "Abajo Derecha"
L["Bottom to Top"] = "De Abajo a Arriba"
L["Bounce"] = "Rebotar"
L["Bounce with Decay"] = "Rebotar con Amortiguación"
--[[Translation missing --]]
L["Broodlord Lashlayer"] = "Broodlord Lashlayer"
L["Buff"] = "Beneficio"
L["Buff/Debuff"] = "Beneficio/Perjuicio"
L["Buffed/Debuffed"] = "Beneficio activo/Perjuicio activo"
L["Burning Crusade"] = "Burning Crusade"
L["Buru the Gorger"] = "Buru el Manducador"
--[[Translation missing --]]
L["Callback function"] = "Callback function"
L["Can be used for e.g. checking if \"boss1target\" is the same as \"player\"."] = "Se puede utilizar, por ejemplo, para comprobar si \"boss1target\" es el mismo que \"player\"."
L["Cancel"] = "Cancelar"
L[ [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = "No se puede cambiar el marco de seguridad en el bloqueo de combate. Más información: https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames"
L["Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."] = "No se puede programar el temporizador con %i, debido a un error de World of Warcraft con un alto tiempo de actividad del ordenador. (Tiempo de actividad: %i). Por favor, reinicia tu ordenador."
L["Cast"] = "Lanzar Hechizo"
L["Cast Bar"] = "Barra de lanzamiento"
L["Cast Failed"] = "Hechizo - Fallido"
L["Cast Start"] = "Hechizo - Empezar"
L["Cast Success"] = "Hechizo - Completado"
L["Cast Type"] = "Tipo de Hechizo"
L["Caster"] = "Lanzador"
L["Caster Name"] = "Nombre del lanzador"
L["Caster Realm"] = "Reino del lanzador"
L["Caster Unit"] = "Unidad del lanzador"
L["Caster's Target"] = "Objetivo del lanzador"
L["Cataclysm"] = "Cataclysm"
--[[Translation missing --]]
L["Ceil"] = "Ceil"
L["Center"] = "Centro"
L["Center, then alternating bottom and top"] = "Centro, luego alternando abajo y arriba"
L["Center, then alternating left and right"] = "Centro, luego alternando izquierda y derecha"
L["Center, then alternating right and left"] = "Centro, luego alternando derecha e izquierda"
L["Center, then alternating top and bottom"] = "Centro, luego alternando arriba y abajo"
L["Centered Horizontal"] = "Centrado Horizontal"
L["Centered Horizontal, then Centered Vertical"] = "Centrado horizontal, luego centrado vertical"
L["Centered Horizontal, then Down"] = "Centrado horizontal, luego hacia abajo"
L["Centered Horizontal, then Up"] = "Centrado horizontal, luego hacia arriba"
L["Centered Vertical"] = "Centrado Vertical"
L["Centered Vertical, then Centered Horizontal"] = "Centrado vertical, luego centrado horizontal"
L["Centered Vertical, then Left"] = "Centrado vertical, luego a la izquierda"
L["Centered Vertical, then Right"] = "Centrado vertical, luego a la derecha"
L["Changed"] = "Modificado"
L["Channel"] = "Canal"
L["Channel (Spell)"] = "Canalizar Hechizo"
L["Character Stats"] = "Estadísticas del personaje"
L["Character Type"] = "Tipo de Personaje"
L["Charge gained/lost"] = "Carga ganada/perdida"
L["Charged Combo Point (1)"] = "Punto de combo cargado (1)"
L["Charged Combo Point (2)"] = "Punto de combo cargado (2)"
L["Charged Combo Point (3)"] = "Punto de combo cargado (3)"
L["Charged Combo Point (4)"] = "Punto de combo cargado (4)"
L["Charged Combo Point 1"] = "Punto de combo cargado 1"
L["Charged Combo Point 2"] = "Punto de combo cargado 2"
L["Charged Combo Point 3"] = "Punto de combo cargado 3"
L["Charged Combo Point 4"] = "Punto de combo cargado 4"
L["Charges"] = "Cargas"
--[[Translation missing --]]
L["Charges Changed Event"] = "Charges Changed Event"
--[[Translation missing --]]
L["Charging"] = "Charging"
L["Chat Frame"] = "Pantalla de Chat"
L["Chat Message"] = "Mensaje de Chat"
L["Check if a single talent match a Rank"] = "Comprobar si un talento coincide con un rango"
L["Check nameplate's target every 0.2s"] = "Comprueba el objetivo de la placa cada 0.2s"
L["Chromaggus"] = "Chromaggus"
L["Circle"] = "Círculo"
--[[Translation missing --]]
L["Clamp"] = "Clamp"
L["Class"] = "Clase"
L["Class and Specialization"] = "Clase y especialización"
L["Classic"] = "Classic"
L["Classification"] = "Clasificación"
L["Clockwise"] = "En sentido horario"
L["Clone per Event"] = "Clonar por evento"
L["Clone per Match"] = "Clonar por encuentro"
L["Color"] = "Color"
L["Color Animation"] = "Animación de color"
L["Combat Log"] = "Registro de Combate"
L[ [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=] ] = "COMBAT_LOG_EVENT_UNFILTERED sin filtro es generalmente desaconsejado ya que es muy costoso en rendimiento. Más información: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events"
L["Condition Custom Text"] = "Texto personalizado de condición"
L["Conditions"] = "Condiciones"
L["Contains"] = "Contiene"
L["Continuously update Movement Speed"] = "Actualización continua de la velocidad de movimiento"
L["Cooldown"] = "Reutilización"
L["Cooldown bars show time before an ability is ready to be use, BigWigs prefix them with '~'"] = "Las barras de reutilización muestran el tiempo que transcurre antes de que una habilidad esté lista para ser utilizada, BigWigs las indica con el prefijo \"~\"."
L["Cooldown Progress (Item)"] = "Recarga en Progreso (Objeto)"
L["Cooldown Progress (Slot)"] = "Progreso de reutilización (ranura)"
L["Cooldown Ready Event"] = "Evento de reutilización preparado"
L["Cooldown Ready Event (Item)"] = "Evento de reutilización preparado (objeto)"
L["Cooldown Ready Event (Slot)"] = "Evento de reutilización preparado (ranura)"
L["Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."] = "Reducción de reutilización cambia la duración de los segundos en lugar de mostrar los segundos en tiempo real."
L["Cooldown/Charges/Count"] = "Reutilización/Cargas/Recuento"
L["Could not load WeakAuras Archive, the addon is %s"] = "No se pudo cargar WeakAuras Archive, el addon está %s"
L["Count"] = "Recuento"
--[[Translation missing --]]
L["Counter Clockwise"] = "Counter Clockwise"
L["Create"] = "Crear"
L["Critical"] = "Crítico"
L["Critical (%)"] = "Crítico (%)"
L["Critical Rating"] = "Índice de crítico"
L["Crowd Controlled"] = "Bajo Control"
L["Crushing"] = "Golpe Aplastador"
L["C'thun"] = "C'thun"
--[[Translation missing --]]
L["Current Essence"] = "Current Essence"
L["Current Experience"] = "Experiencia actual"
L["Current Movement Speed (%)"] = "Velocidad de movimiento actual (%)"
L["Current Stage"] = "Fase actual"
--[[Translation missing --]]
L[ [=[Current Zone Group
]=] ] = [=[Current Zone Group
]=]
L[ [=[Current Zone
]=] ] = "Zona actual"
L["Curse"] = "Maldición"
L["Custom"] = "Personalizado"
L["Custom Action"] = "Acción personalizada"
L["Custom Anchor"] = "Ancla personalizada"
--[[Translation missing --]]
L["Custom Check"] = "Custom Check"
L["Custom Color"] = "Color personalizado"
L["Custom Condition Code"] = "Código de condición personalizado"
L["Custom Configuration"] = "Configuración personalizada"
L["Custom Fade Animation"] = "Animación de fundido personalizada"
L["Custom Function"] = "Función Personalizada"
--[[Translation missing --]]
L["Custom Grow"] = "Custom Grow"
L["Custom Sort"] = "Orden personalizado"
L["Custom Text Function"] = "Función de texto personalizado"
L["Custom Trigger Combination"] = "Combinación de activadores personalizada"
L["Custom Variables"] = "Variables personalizadas"
L["Damage"] = "Daño"
L["Damage Shield"] = "Escudo Dañino"
L["Damage Shield Missed"] = "Escudo Dañino Fallido"
L["Damage Split"] = "Daño Repartido"
L["DBM Announce"] = "Anuncio de DBM"
L["DBM Stage"] = "Fase de DBM"
L["DBM Timer"] = "Temporizador de DBM"
L["Death"] = "Muerte"
L["Death Knight Rune"] = "Caballero de la Muerte - Runa"
L["Deathbringer Saurfang"] = "Libramorte Colmillosauro"
L["Debuff"] = "Perjuicio"
L["Debuff Class"] = "Clase del perjuicio"
L["Debuff Class Icon"] = "Icono de clase del perjuicio"
L["Debuff Type"] = "Tipo de perjuicio"
L["Debug Log contains more than 1000 entries"] = "El registro de depuración contiene más de 1000 entradas"
L["Debug Logging enabled"] = "Registro de depuración activado"
L["Debug Logging enabled for '%s'"] = "Registro de depuración activado para '%s'."
L["Defense"] = "Defensa"
L["Deflect"] = "Desviar"
L["Desaturate"] = "Desaturar"
L["Desaturate Background"] = "Desaturar fondo"
L["Desaturate Foreground"] = "Desaturar primer plano"
L["Descending"] = "Descendente"
L["Description"] = "Descripción"
--[[Translation missing --]]
L["Dest Raid Mark"] = "Dest Raid Mark"
--[[Translation missing --]]
L["Destination Affiliation"] = "Destination Affiliation"
--[[Translation missing --]]
L["Destination GUID"] = "Destination GUID"
L["Destination Name"] = "Nombre del Destino"
--[[Translation missing --]]
L["Destination NPC Id"] = "Destination NPC Id"
--[[Translation missing --]]
L["Destination Object Type"] = "Destination Object Type"
--[[Translation missing --]]
L["Destination Reaction"] = "Destination Reaction"
L["Destination Unit"] = "Unidad de Destino"
--[[Translation missing --]]
L["Destination unit's raid mark index"] = "Destination unit's raid mark index"
--[[Translation missing --]]
L["Destination unit's raid mark texture"] = "Destination unit's raid mark texture"
--[[Translation missing --]]
L["Difficulty"] = "Difficulty"
L["Disable Spell Known Check"] = "Desactivar comprobación de hechizo conocido"
L["Disabled Spell Known Check"] = "Desactivar comprobación de hechizo conocido"
L["Disease"] = "Enfermedad"
L["Dispel"] = "Disipar"
L["Dispel Failed"] = "Disipar Fallido"
--[[Translation missing --]]
L["Display"] = "Display"
L["Distance"] = "Distancia"
L["Do Not Disturb"] = "No molestar"
L["Dodge"] = "Esquivar"
L["Dodge (%)"] = "Esquivar (%)"
L["Dodge Rating"] = "Índice de esquiva"
L["Down"] = "Abajo"
L["Down, then Centered Horizontal"] = "Abajo, luego centrado horizontal"
L["Down, then Left"] = "Abajo, luego izquierda"
L["Down, then Right"] = "Abajo, luego derecha"
L["Dragonflight"] = "Dragonflight"
L["Dragonriding"] = "Dracoequitación"
L["Drain"] = "Drenar"
L["Dropdown Menu"] = "Menú desplegable"
--[[Translation missing --]]
L["Dumping table"] = "Dumping table"
L["Dungeon (Heroic)"] = "Mazmorra (Heroico)"
L["Dungeon (Mythic)"] = "Mazmorra (Mítico)"
L["Dungeon (Mythic+)"] = "Mazmorra (Mítico+)"
L["Dungeon (Normal)"] = "Mazmorra (Normal)"
L["Dungeon (Timewalking)"] = "Mazmorra (Paseo en el tiempo)"
L["Dungeons"] = "Mazmorras"
L["Durability Damage"] = "Daño a la Durabilidad"
L["Durability Damage All"] = "Daño a la Durabilidad Total"
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
L["Ebonroc"] = "Ebanorroca"
L["Edge"] = "Borde"
L["Edge of Madness"] = "Cabo de la Locura"
--[[Translation missing --]]
L["Elide"] = "Elide"
L["Elite"] = "Élite"
L["Emalon the Storm Watcher"] = "Emalon el Vigía de la Tormenta"
L["Emote"] = "Emocion"
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
L["Empty"] = "Ninguna"
L["Enables (incorrect) round down of seconds, which was the previous default behavior."] = "Activa el redondeo (incorrecto) a la baja de los segundos, que era el comportamiento anterior por defecto."
L["Enchant Applied"] = "Encantamiento aplicado"
L["Enchant Found"] = "Encantar encontrado"
L["Enchant Missing"] = "Falta encantamiento"
L["Enchant Name or ID"] = "Nombre o ID del encantamiento"
L["Enchant Removed"] = "Encantamiento eliminado"
L["Enchanted"] = "Encantado"
L["Enchanting Cast Bar"] = "Barra de lanzamiento de encantamiento"
L["Encounter ID(s)"] = "ID(s) del encuentro"
L["Energize"] = "Vigorizar"
L["Enrage"] = "Enfurecido"
L["Enter static or relative values with %"] = "Introduce valores estáticos o relativos con %."
L["Entering"] = "Accediendo"
L["Entering/Leaving Combat"] = "Entrar/Salir de combate"
--[[Translation missing --]]
L["Entering/Leaving Encounter"] = "Entering/Leaving Encounter"
--[[Translation missing --]]
L["Entry Order"] = "Entry Order"
L["Environment Type"] = "Tipo de Entorno"
L["Environmental"] = "Ambiental"
L["Equipment Set"] = "Conjunto de equipo"
L["Equipment Set Equipped"] = "Conjunto de equipo equipado"
L["Equipment Slot"] = "Ranura para equipo"
L["Equipped"] = "Equipado"
L["Error"] = "Error"
L[ [=[Error '%s' created a secure clone. We advise deleting the aura. For more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = "El error '%s' ha creado un clon seguro. Aconsejamos eliminar el aura. Para más información: https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames"
L["Error decoding."] = "Error al descodificar."
L["Error decompressing"] = "Error al descomprimir"
L["Error decompressing. This doesn't look like a WeakAuras import."] = "Error al descomprimir. Esto no parece una importación de WeakAuras."
L["Error deserializing"] = "Error de deserialización"
--[[Translation missing --]]
L["Error Frame"] = "Error Frame"
L["ERROR in '%s' unknown or incompatible sub element type '%s'"] = "ERROR en '%s' tipo de subelemento '%s' desconocido o incompatible"
L["Error not receiving display information from %s"] = "Error al no recibir información de pantalla de %s"
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
L["Evade"] = "Evadir"
L["Event"] = "Evento"
L["Event(s)"] = "Evento(s)"
L["Every Frame"] = "Cada Uno de los Marcos"
L["Every Frame (High CPU usage)"] = "Cada fotograma (uso elevado de CPU)"
--[[Translation missing --]]
L["Evoker Essence"] = "Evoker Essence"
L["Experience (%)"] = "Experiencia (%)"
--[[Translation missing --]]
L["Expertise Bonus"] = "Expertise Bonus"
--[[Translation missing --]]
L["Expertise Rating"] = "Expertise Rating"
--[[Translation missing --]]
L["Extend Outside"] = "Extend Outside"
L["Extra Amount"] = "Cantidad Adicional"
L["Extra Attacks"] = "Ataques Adicional"
L["Extra Spell Name"] = "Nombre del Hechizo Extra"
L["Faction"] = "Facción"
L["Faction Champions"] = "Campeones de facción"
L["Faction Name"] = "Nombre de facción "
L["Faction Reputation"] = "Reputación de facción"
L["Fade Animation"] = "Animación de fundido"
L["Fade In"] = "Aparecer"
L["Fade Out"] = "Desaparecer"
L["Fail Alert"] = "Alerta de Fallo"
L["Fallback"] = "Respuesta"
L["Fallback Icon"] = "Icono de respuesta"
L["False"] = "Falso"
L["Fankriss the Unyielding"] = "Fankriss el Implacable"
L["Festergut"] = "Panzachancro"
L["Fetch Legendary Power"] = "Obtener poder legendario"
L["Fetches the name and icon of the Legendary Power that matches this bonus id."] = "Obtiene el nombre y el icono del Poder Legendario que coincide con este id de bonificación."
L["Filter messages with format <message>"] = "Filtrar mensajes con formato <mensaje>"
L["Fire Resistance"] = "Resistencia al fuego"
L["Firemaw"] = "Faucefogo"
L["First"] = "Primero"
L["First Value of Tooltip Text"] = "Primer valor del texto del tooltip"
--[[Translation missing --]]
L["Fixed"] = "Fixed"
--[[Translation missing --]]
L["Fixed Names"] = "Fixed Names"
--[[Translation missing --]]
L["Fixed Size"] = "Fixed Size"
L["Flame Leviathan"] = "Leviatán de llamas"
L["Flamegor"] = "Flamagor"
L["Flash"] = "Destello"
L["Flex Raid"] = "Banda Flexible"
L["Flip"] = "Voltear"
--[[Translation missing --]]
L["Floor"] = "Floor"
L["Focus"] = "Foco"
L["Font"] = "Fuente"
L["Font Size"] = "Tamaño de fuente"
L["Forbidden function or table: %s"] = "Función o tabla prohibida: %s"
L["Foreground"] = "Primer plano"
L["Foreground Color"] = "Color de primer plano"
L["Form"] = "Forma"
L["Format"] = "Formato"
L["Formats |cFFFF0000%unit|r"] = "Formatos |cFFFF0000%unidad|r"
--[[Translation missing --]]
L["Formats Player's |cFFFF0000%guid|r"] = "Formats Player's |cFFFF0000%guid|r"
L["Forward"] = "Adelante"
L["Forward, Reverse Loop"] = "Adelante, bucle inverso"
--[[Translation missing --]]
L["Frame Selector"] = "Frame Selector"
L["Frequency"] = "Frecuencia"
L["Freya"] = "Freya"
L["Friendly"] = "Amistoso"
L["Friendly Fire"] = "Fuego Amigo"
--[[Translation missing --]]
L["Friendship Max Rank"] = "Friendship Max Rank"
--[[Translation missing --]]
L["Friendship Rank"] = "Friendship Rank"
L["Frost"] = "Escarcha"
--[[Translation missing --]]
L["Frost Resistance"] = "Frost Resistance"
--[[Translation missing --]]
L["Frost Rune #1"] = "Frost Rune #1"
--[[Translation missing --]]
L["Frost Rune #2"] = "Frost Rune #2"
--[[Translation missing --]]
L["Full"] = "Full"
--[[Translation missing --]]
L["Full Bar"] = "Full Bar"
--[[Translation missing --]]
L["Full/Empty"] = "Full/Empty"
--[[Translation missing --]]
L["Gahz'ranka"] = "Gahz'ranka"
L["Gained"] = "Obtenido"
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
L["Glancing"] = "de refilón"
L["Global Cooldown"] = "Recarga Global"
L["Glow"] = "Brillante"
L["Glow External Element"] = "Elemento externo del resplandor"
--[[Translation missing --]]
L["Gluth"] = "Gluth"
--[[Translation missing --]]
L["Golemagg the Incinerator"] = "Golemagg the Incinerator"
--[[Translation missing --]]
L["Gothik the Harvester"] = "Gothik the Harvester"
L["Gradient"] = "Degradado"
L["Gradient Color"] = "Color del degradado"
L["Gradient Enabled"] = "Degradado activado"
L["Gradient Orientation"] = "Orientación del degradado"
L["Gradient Pulse"] = "Degradado Pulsante"
--[[Translation missing --]]
L["Grand Widow Faerlina"] = "Grand Widow Faerlina"
L["Grid"] = "Rejilla"
L["Grobbulus"] = "Grobbulus"
L["Group"] = "Grupo"
L["Group Arrangement"] = "Disposición de grupos"
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
L["Grow"] = "Crecer"
L["GTFO Alert"] = "Alerta GTFO"
--[[Translation missing --]]
L["Guardian"] = "Guardian"
L["Guild"] = "Hermandad"
--[[Translation missing --]]
L["Gunship Battle"] = "Gunship Battle"
--[[Translation missing --]]
L["Hakkar"] = "Hakkar"
--[[Translation missing --]]
L["Halion"] = "Halion"
--[[Translation missing --]]
L["Has Target"] = "Has Target"
--[[Translation missing --]]
L["Has Vehicle UI"] = "Has Vehicle UI"
L["HasPet"] = "Mascota viva"
L["Haste (%)"] = "Celeridad (%)"
L["Haste Rating"] = "Índice de celeridad"
L["Heal"] = "Cura"
L["Heal Absorb"] = "Absorción de sanación"
L["Heal Absorbed"] = "Sanación absorbida"
L["Health"] = "Salud"
L["Health (%)"] = "Vida (%)"
L["Health Deficit"] = "Déficit de sanación"
--[[Translation missing --]]
L["Heigan the Unclean"] = "Heigan the Unclean"
L["Height"] = "Altura"
--[[Translation missing --]]
L["Heroic Party"] = "Heroic Party"
L["Hide"] = "Ocultar"
--[[Translation missing --]]
L["Hide 0 cooldowns"] = "Hide 0 cooldowns"
--[[Translation missing --]]
L["Hide Timer Text"] = "Hide Timer Text"
L["High Damage"] = "Alto Daño"
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
L["Higher Than Tank"] = "Mayor Que el Tanque"
--[[Translation missing --]]
L["Hit (%)"] = "Hit (%)"
--[[Translation missing --]]
L["Hit Rating"] = "Hit Rating"
--[[Translation missing --]]
L["Hodir"] = "Hodir"
--[[Translation missing --]]
L["Holy Resistance"] = "Holy Resistance"
L["Horde"] = "Horda"
L["Horizontal"] = "Horizontal"
L["Hostile"] = "Hostil"
L["Hostility"] = "Holstilidad"
L["Humanoid"] = "Humanoide"
L["Hybrid"] = "Híbrido"
L["Icecrown Citadel"] = "Ciudadela de la Corona de Hielo"
L["Icon"] = "Icono"
--[[Translation missing --]]
L["Icon Function"] = "Icon Function"
--[[Translation missing --]]
L["Icon Function (fallback state)"] = "Icon Function (fallback state)"
--[[Translation missing --]]
L["Id"] = "Id"
L["If you require additional assistance, please open a ticket on GitHub or visit our Discord at https://discord.gg/weakauras!"] = "Si necesitas más ayuda, abre un ticket en GitHub o visita nuestro Discord en https://discord.gg/weakauras."
L["Ignis the Furnace Master"] = "Ignis, el Maestro de la Caldera"
L["Ignore Dead"] = "Ignorar muertos"
L["Ignore Disconnected"] = "Ignorar desconectados"
L["Ignore Rune CD"] = "Ignorar Recarga de Runas"
L["Ignore Rune CDs"] = "Ignorar CDs de runa"
L["Ignore Self"] = "Ignorarse a sí mismo"
L["Immune"] = "Inmune"
L["Important"] = "Importante"
L["Importing will start after combat ends."] = "La importación comenzará una vez finalizado el combate."
L["In Combat"] = "En Combate"
L["In Encounter"] = "En encuentro"
L["In Group"] = "En grupo"
--[[Translation missing --]]
L["In Party"] = "In Party"
L["In Pet Battle"] = "En duelo de mascotas"
L["In Raid"] = "En banda"
L["In Vehicle"] = "Conduciendo"
L["Include Bank"] = "Incluye el Banco"
L["Include Charges"] = "Incluye las Cargas"
--[[Translation missing --]]
L["Include Death Runes"] = "Include Death Runes"
L["Include Pets"] = "Incluir mascotas"
L["Incoming Heal"] = "Sanación entrante"
L["Increase Precision Below"] = "Aumentar la precisión por debajo de"
L["Increases by one per stage or intermission."] = "Aumenta en uno por fase o intervalo."
L["Information"] = "Información"
L["Inherited"] = "Heredado"
L["Instakill"] = "Muerte Instantanea"
L["Install the addons BugSack and BugGrabber for detailed error logs."] = "Instala los addons BugSack y BugGrabber para obtener registros de errores detallados."
L["Instance"] = "Instancia"
L["Instance Difficulty"] = "Dificultad de la instancia"
L["Instance Size Type"] = "Tipo de tamaño de instancia"
L["Instance Type"] = "Tipo de Instancia"
L["Instructor Razuvious"] = "Instructor Razuvious"
L["Insufficient Resources"] = "Recursos insuficientes"
L["Intellect"] = "Intelecto"
L["Interrupt"] = "Interrupcion"
--[[Translation missing --]]
L["Interrupt School"] = "Interrupt School"
--[[Translation missing --]]
L["Interrupted School Text"] = "Interrupted School Text"
L["Interruptible"] = "Interrumpible"
L["Inverse"] = "Inverso"
--[[Translation missing --]]
L["Inverse Pet Behavior"] = "Inverse Pet Behavior"
L["Is Away from Keyboard"] = "No está delante del ordenador"
L["Is Death Rune"] = "Es una Runa de muerte"
L["Is Exactly"] = "Es Exactamente"
L["Is Moving"] = "se está moviendo"
L["Is Off Hand"] = "Es mano izquierda"
L["is useable"] = "es utilizable"
L["Island Expedition (Heroic)"] = "Expedición insular (Heroico)"
L["Island Expedition (Mythic)"] = "Expedición insular (Mítico)"
L["Island Expedition (Normal)"] = "Expedición insular (Normal)"
L["Island Expeditions (PvP)"] = "Expedición insular (JcJ)"
L["Item"] = "Objeto"
--[[Translation missing --]]
L["Item Bonus Id"] = "Item Bonus Id"
--[[Translation missing --]]
L["Item Bonus Id Equipped"] = "Item Bonus Id Equipped"
L["Item Count"] = "Contar los Objetos"
L["Item Equipped"] = "Objeto Equipado"
--[[Translation missing --]]
L["Item Id"] = "Item Id"
--[[Translation missing --]]
L["Item in Range"] = "Item in Range"
--[[Translation missing --]]
L["Item Name"] = "Item Name"
--[[Translation missing --]]
L["Item Set Equipped"] = "Item Set Equipped"
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
L["Keep Inside"] = "Mantener en el interior"
L["Kel'Thuzad"] = "Kel'Thuzad"
L["Kologarn"] = "Kologarn"
L["Koralon the Flame Watcher"] = "Koralon el Vigía de las Llamas"
L["Kurinnaxx"] = "Kurinnaxx"
L["Lady Deathwhisper"] = "Lady Susurramuerte"
--[[Translation missing --]]
L["Large"] = "Large"
L["Latency"] = "Latencia"
L["Leader"] = "Líder"
--[[Translation missing --]]
L["Least remaining time"] = "Least remaining time"
--[[Translation missing --]]
L["Leatherworking Cast Bar"] = "Leatherworking Cast Bar"
--[[Translation missing --]]
L["Leaving"] = "Leaving"
L["Leech"] = "Parasitar"
--[[Translation missing --]]
L["Leech (%)"] = "Leech (%)"
--[[Translation missing --]]
L["Leech Rating"] = "Leech Rating"
L["Left"] = "Izquierda"
L["Left to Right"] = "De Izquierda a Derecha"
L["Left, then Centered Vertical"] = "Izquierda, luego centrado vertical"
L["Left, then Down"] = "Izquierda, luego abajo"
L["Left, then Up"] = "Izquierda, luego arriba"
--[[Translation missing --]]
L["Legacy Looking for Raid"] = "Legacy Looking for Raid"
--[[Translation missing --]]
L["Legacy RGB Gradient"] = "Legacy RGB Gradient"
--[[Translation missing --]]
L["Legacy RGB Gradient Pulse"] = "Legacy RGB Gradient Pulse"
--[[Translation missing --]]
L["Legacy Spellname"] = "Legacy Spellname"
L["Legion"] = "Legion"
L["Length"] = "Longitud"
L["Level"] = "Nivel"
L["Limited"] = "Limitado"
L["Lines & Particles"] = "Líneas y partículas"
L["Load Conditions"] = "Condiciones de carga"
L["Loatheb"] = "Loatheb"
L["Looking for Raid"] = "Buscador de banda"
L["Loop"] = "Bucle"
L["Lord Jaraxxus"] = "Lord Jaraxxus"
L["Lord Marrowgar"] = "Lord Tuétano"
--[[Translation missing --]]
L["Lost"] = "Lost"
L["Low Damage"] = "Bajo Daño"
L["Lower Than Tank"] = "Menor Que el Tanque"
L["Lua error"] = "Error de lua"
L["Lua error in aura '%s': %s"] = "Error de lua en aura '%s': %s"
L["Lucifron"] = "Lucifron"
L["Maexxna"] = "Maexxna"
L["Magic"] = "Magia"
L["Magmadar"] = "Magmadar"
L["Main Stat"] = "Estadística principal"
L["Majordomo Executus"] = "Mayordomo Executus"
L["Malformed WeakAuras link"] = "Enlace WeakAuras malformado"
L["Malygos"] = "Malygos"
L["Manual Rotation"] = "Rotación manual"
L["Marked First"] = "Marcado en primer lugar"
L["Marked Last"] = "Marcado en último lugar"
L["Master"] = "Maestro"
L["Mastery (%)"] = "Maestría (%)"
L["Mastery Rating"] = "Índice de maestría"
--[[Translation missing --]]
L["Match Count"] = "Match Count"
--[[Translation missing --]]
L["Match Count per Unit"] = "Match Count per Unit"
L["Matches (Pattern)"] = "Corresponde (Patrón)"
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
L["Maximum"] = "Máximo"
L["Maximum Estimate"] = "Máximo estimado"
L["Media"] = "Media"
--[[Translation missing --]]
L["Medium"] = "Medium"
L["Melee"] = "Cuerpo a cuerpo"
L["Melee Haste (%)"] = "Celeridad cuerpo a cuerpo (%)"
L["Message"] = "Mensaje"
L["Message Type"] = "Tipo de Mensaje"
L["Message type:"] = "Tipo de Mensaje:"
L["Meta Data"] = "Metadatos"
L["Mimiron"] = "Mimiron"
--[[Translation missing --]]
L["Mine"] = "Mine"
L["Minimum"] = "Mínimo"
L["Minimum Estimate"] = "Mínimo estimado"
--[[Translation missing --]]
L["Minus (Small Nameplate)"] = "Minus (Small Nameplate)"
--[[Translation missing --]]
L["Mirror"] = "Mirror"
L["Miss"] = "Fallo"
L["Miss Type"] = "Tipo de Fallo"
L["Missed"] = "Fallado"
L["Missing"] = "Ausente"
L["Mists of Pandaria"] = "Mists of Pandaria"
--[[Translation missing --]]
L["Moam"] = "Moam"
--[[Translation missing --]]
L["Model"] = "Model"
--[[Translation missing --]]
L["Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"] = "Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"
L["Molten Core"] = "Núcleo de Magma"
L["Monochrome"] = "Monocromo"
L["Monochrome Outline"] = "Monocromo"
L["Monochrome Thick Outline"] = "Borde gordo monocromo"
L["Monster Emote"] = "Emote de monstruo"
--[[Translation missing --]]
L["Monster Party"] = "Monster Party"
L["Monster Say"] = "Monstruo hablando"
L["Monster Whisper"] = "Monstruo susurrando"
L["Monster Yell"] = "Grito de Monstruo"
--[[Translation missing --]]
L["Most remaining time"] = "Most remaining time"
L["Mounted"] = "Montado"
L["Mouse Cursor"] = "Cursor del ratón"
L["Movement Speed Rating"] = "Índice de velocidad de movimiento"
L["Multi-target"] = "Objetivo Múltiple"
L["Mythic Keystone"] = "Piedra angular mítica"
L["Mythic+ Affix"] = "Afijo de mítica+"
L["Name"] = "Nombre"
--[[Translation missing --]]
L["Name Function"] = "Name Function"
--[[Translation missing --]]
L["Name Function (fallback state)"] = "Name Function (fallback state)"
L["Name of Caster's Target"] = "Nombre del objetivo del lanzador"
L["Name/Realm of Caster's Target"] = "Nombre/Reino del objetivo del lanzador"
L["Nameplate"] = "Placa"
L["Nameplate Type"] = "Tipo de placa"
L["Nameplates"] = "Placas"
L["Names of affected Players"] = "Nombres de los jugadores afectados"
L["Names of unaffected Players"] = "Nombres de los jugadores no afectados"
L["Nature Resistance"] = "Resistencia a la naturaleza"
L["Naxxramas"] = "Naxxramas"
L["Nefarian"] = "Nefarian"
L["Neutral"] = "Neutral"
L["Never"] = "Nunca"
L["Next Combat"] = "Siguiente combate"
L["Next Encounter"] = "Siguiente encuentro"
--[[Translation missing --]]
L["No Extend"] = "No Extend"
L["No Instance"] = "Fuera de Instancia"
L["No Profiling information saved."] = "No hay información de perfil guardada."
L["None"] = "Nada"
L["Non-player Character"] = "Personaje No Jugador"
L["Normal"] = "Normal"
--[[Translation missing --]]
L["Normal Party"] = "Normal Party"
L["Northrend Beasts"] = "Bestias de Rasganorte"
L["Not in Group"] = "No en grupo"
L["Not in Smart Group"] = "No en grupo inteligente"
L["Not on Cooldown"] = "No en reutilización"
L["Not On Threat Table"] = "No Está En La Tabla De Amenaza"
L["Note, that cross realm transmission is possible if you are on the same group"] = "Ten en cuenta que la transmisión entre reinos es posible si estás en el mismo grupo."
L["Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."] = "Nota: debido a lo complicado que es el comportamiento del temporizador de swing y a la falta de APIs por parte de Blizzard, los resultados son imprecisos en casos extremos."
--[[Translation missing --]]
L["Note: 'Hide Alone' is not available in the new aura tracking system. A load option can be used instead."] = "Note: 'Hide Alone' is not available in the new aura tracking system. A load option can be used instead."
L["Note: The available text replacements for multi triggers match the normal triggers now."] = "Nota: las sustituciones de texto disponibles para los multiactivadores coinciden ahora con las de los activadores normales."
--[[Translation missing --]]
L["Note: This trigger relies on the WoW API, which returns incorrect information in some cases."] = "Note: This trigger relies on the WoW API, which returns incorrect information in some cases."
L["Note: This trigger type estimates the range to the hitbox of a unit. The actual range of friendly players is usually 3 yards more than the estimate. Range checking capabilities depend on your current class and known abilities as well as the type of unit being checked. Some of the ranges may also not work with certain NPCs.|n|n|cFFAAFFAAFriendly Units:|r %s|n|cFFFFAAAAHarmful Units:|r %s|n|cFFAAAAFFMiscellanous Units:|r %s"] = "Nota: este tipo de activador estima el alcance a la hitbox de una unidad. El alcance real de los jugadores aliados suele ser 3 metros más que la estimación. Las capacidades de comprobación del alcance dependen de tu clase actual y de tus habilidades conocidas, así como del tipo de unidad que se esté comprobando. Algunos de los rangos pueden no funcionar con ciertos NPCs.|n|n|cFFAAFFAAUnidades amistosas:|r %s|n|cFFFFAAAAUnidades dañinas:|r %s|n|cFFAAAAFFUnidades diversas:|r %s"
L["Noth the Plaguebringer"] = "Noth el Pesteador"
L["NPC"] = "PNJ"
L["Npc ID"] = "ID de pnj"
L["Number"] = "Número"
L["Number Affected"] = "Dependiente de números"
L["Object"] = "Objeto"
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
L["Officer"] = "Oficial"
--[[Translation missing --]]
L["Offset from progress"] = "Offset from progress"
--[[Translation missing --]]
L["Offset Timer"] = "Offset Timer"
L["Old Blizzard (2h | 3m | 10s | 2.4)"] = "Antiguo de Blizzard (2h | 3m | 10s | 2.4)"
L["On Cooldown"] = "En reutilización"
--[[Translation missing --]]
L["On Taxi"] = "On Taxi"
L["Only if on a different realm"] = "Solo si está en otro reino"
L["Only if Primary"] = "Solo si es primario"
L["Onyxia"] = "Onyxia"
L["Onyxia's Lair"] = "Guarida de Onyxia"
L["Opaque"] = "Opaco"
--[[Translation missing --]]
L["Option Group"] = "Option Group"
L["Options could not be loaded, the addon is %s"] = "No se han podido cargar las opciones, el addon es %s"
L["Options will finish loading after combat ends."] = "Las opciones terminarán de cargarse una vez finalizado el combate."
L["Options will open after the login process has completed."] = "Las opciones se abrirán una vez finalizado el proceso de inicio de sesión."
--[[Translation missing --]]
L["Or Talent"] = "Or Talent"
L["Orbit"] = "Orbitar"
L["Orientation"] = "Orientación"
L["Ossirian the Unscarred"] = "Osirio el Sinmarcas"
L["Other"] = "Otros"
L["Other Addons"] = "Otros addons"
L["Other Events"] = "Otros eventos"
--[[Translation missing --]]
L["Ouro"] = "Ouro"
L["Outline"] = "Linea exterior"
L["Overhealing"] = "Sobre Curación"
L["Overkill"] = "Muerte de Más"
L["Overlay %s"] = "Superposición %s"
--[[Translation missing --]]
L["Overlay Charged Combo Points"] = "Overlay Charged Combo Points"
--[[Translation missing --]]
L["Overlay Cost of Casts"] = "Overlay Cost of Casts"
--[[Translation missing --]]
L["Overlay Latency"] = "Overlay Latency"
L["Parry"] = "Parar"
--[[Translation missing --]]
L["Parry (%)"] = "Parry (%)"
--[[Translation missing --]]
L["Parry Rating"] = "Parry Rating"
L["Party"] = "Grupo"
L["Party Kill"] = "Muerte de Grupo"
L["Patchwerk"] = "Remendejo"
--[[Translation missing --]]
L["Path of Ascension: Courage"] = "Path of Ascension: Courage"
--[[Translation missing --]]
L["Path of Ascension: Humility"] = "Path of Ascension: Humility"
--[[Translation missing --]]
L["Path of Ascension: Loyalty"] = "Path of Ascension: Loyalty"
--[[Translation missing --]]
L["Path of Ascension: Wisdom"] = "Path of Ascension: Wisdom"
L["Paused"] = "Pausado"
L["Periodic Spell"] = "Hechizo Periódico"
--[[Translation missing --]]
L["Personal Resource Display"] = "Personal Resource Display"
L["Pet"] = "Mascota"
L["Pet Behavior"] = "Comportamiento de mascota"
--[[Translation missing --]]
L["Pet Specialization"] = "Pet Specialization"
L["Pet Spell"] = "Habilidad de mascota"
--[[Translation missing --]]
L["Pets only"] = "Pets only"
--[[Translation missing --]]
L["Phase"] = "Phase"
L["Pixel Glow"] = "Resplandor de píxel"
L["Placement"] = "Ubicación"
L["Placement Mode"] = "Modo de ubicación"
L["Play"] = "Reproducir"
L["Player"] = "Jugador"
L["Player Character"] = "Personaje Jugador"
L["Player Class"] = "Clase del Jugador"
L["Player Effective Level"] = "Nivel efectivo del jugador"
L["Player Experience"] = "Experiencia del jugador"
L["Player Faction"] = "Facción del jugador"
L["Player Level"] = "Nivel del Personaje"
L["Player Name/Realm"] = "Nombre/Reino del jugador"
L["Player Race"] = "Raza del Jugador"
--[[Translation missing --]]
L["Player Rest"] = "Player Rest"
L["Player(s) Affected"] = "Jugador(es) Afectados"
L["Player(s) Not Affected"] = "Jugador(es) no Afectados"
L["Player/Unit Info"] = "Información del jugador/unidad"
L["Players and Pets"] = "Jugadores y mascotas"
L["Poison"] = "Veneno"
L["Power"] = "Poder"
L["Power (%)"] = "Poder  (%)"
--[[Translation missing --]]
L["Power Deficit"] = "Power Deficit"
L["Power Type"] = "Tipo de Poder"
L["Precision"] = "Precisión"
L["Preset"] = "Predefinido"
L["Princess Huhuran"] = "Princesa Huhuran"
--[[Translation missing --]]
L["Print Profiling Results"] = "Print Profiling Results"
L["Professor Putricide"] = "Profesor Putricidio"
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
L["Progress"] = "Progreso"
L["Progress Total"] = "Progreso total"
--[[Translation missing --]]
L["Progress Value"] = "Progress Value"
L["Pulse"] = "Pulso"
L["PvP Flagged"] = "Marcado JcJ"
--[[Translation missing --]]
L["PvP Talent %i"] = "PvP Talent %i"
--[[Translation missing --]]
L["PvP Talent selected"] = "PvP Talent selected"
--[[Translation missing --]]
L["PvP Talent Selected"] = "PvP Talent Selected"
--[[Translation missing --]]
L["Queued Action"] = "Queued Action"
L["Radius"] = "Radio"
--[[Translation missing --]]
L["Ragnaros"] = "Ragnaros"
L["Raid"] = "Banda"
--[[Translation missing --]]
L["Raid (Heroic)"] = "Raid (Heroic)"
--[[Translation missing --]]
L["Raid (Mythic)"] = "Raid (Mythic)"
--[[Translation missing --]]
L["Raid (Normal)"] = "Raid (Normal)"
--[[Translation missing --]]
L["Raid (Timewalking)"] = "Raid (Timewalking)"
L["Raid Mark"] = "Marca de banda"
L["Raid Mark Icon"] = "Icono de marca de banda"
L["Raid Role"] = "Rol de banda"
L["Raid Warning"] = "Alerta de Banda"
L["Raids"] = "Bandas"
L["Range"] = "Rango"
L["Range Check"] = "Comprobación de distancia"
--[[Translation missing --]]
L["Ranged"] = "Ranged"
--[[Translation missing --]]
L["Rank"] = "Rank"
L["Rare"] = "Raro"
L["Rare Elite"] = "Raro élite"
L["Rated Arena"] = "Arena puntuada"
L["Rated Battleground"] = "Campo de batalla puntuado"
L["Raw Threat Percent"] = "Porcentaje de amenaza en bruto"
L["Razorgore the Untamed"] = "Sangrevaja el Indomable"
L["Razorscale"] = "Tajoescama"
L["Ready Check"] = "Comprobación de preparados"
--[[Translation missing --]]
L["Reagent Quality"] = "Reagent Quality"
--[[Translation missing --]]
L["Reagent Quality Texture"] = "Reagent Quality Texture"
L["Realm"] = "Reino"
L["Realm Name"] = "Nombre de reino"
L["Realm of Caster's Target"] = "Reino del objetivo del lanzador"
L["Receiving display information"] = "Recibiendo información de aura de %s..."
L["Reflect"] = "Reflejar"
L["Region type %s not supported"] = "No se admite el tipo de región %s"
L["Relative"] = "Relativo"
L["Relative X-Offset"] = "Desplazamiento X relativo"
L["Relative Y-Offset"] = "Desplazamiento Y relativo"
L["Remaining Duration"] = "Duración restante"
L["Remaining Time"] = "Tiempo Restante"
L["Remove Obsolete Auras"] = "Eliminar auras obsoletas"
L["Repair"] = "Reparar"
L["Repeat"] = "Repetir"
L["Report Summary"] = "Resumen del informe"
L["Requested display does not exist"] = "El aura requerida no existe"
L["Requested display not authorized"] = "El aura requerida no está autorizada"
--[[Translation missing --]]
L["Requesting display information from %s ..."] = "Requesting display information from %s ..."
L["Require Valid Target"] = "Requiere Objetivo Válido"
L["Requires syncing the specialization via LibSpecialization."] = "Requiere sincronizar la especialización mediante LibSpecialization."
--[[Translation missing --]]
L["Resilience Percent"] = "Resilience Percent"
--[[Translation missing --]]
L["Resilience Rating"] = "Resilience Rating"
L["Resist"] = "Resistir"
L["Resisted"] = "Resistido"
L["Rested"] = "Descansado"
--[[Translation missing --]]
L["Rested Experience"] = "Rested Experience"
--[[Translation missing --]]
L["Rested Experience (%)"] = "Rested Experience (%)"
L["Resting"] = "Descansado"
L["Resurrect"] = "Resucitar"
L["Right"] = "Derecha"
L["Right to Left"] = "De Derecha a Izquierda"
--[[Translation missing --]]
L["Right, then Centered Vertical"] = "Right, then Centered Vertical"
--[[Translation missing --]]
L["Right, then Down"] = "Right, then Down"
--[[Translation missing --]]
L["Right, then Up"] = "Right, then Up"
--[[Translation missing --]]
L["Role"] = "Role"
--[[Translation missing --]]
L["Rotate Animation"] = "Rotate Animation"
L["Rotate Left"] = "Rotar a la Izquierda"
L["Rotate Right"] = "Rotar a la Derecha"
--[[Translation missing --]]
L["Rotation"] = "Rotation"
--[[Translation missing --]]
L["Rotface"] = "Rotface"
--[[Translation missing --]]
L["Round"] = "Round"
--[[Translation missing --]]
L["Round Mode"] = "Round Mode"
--[[Translation missing --]]
L["Ruins of Ahn'Qiraj"] = "Ruins of Ahn'Qiraj"
--[[Translation missing --]]
L["Run Custom Code"] = "Run Custom Code"
--[[Translation missing --]]
L["Run Speed (%)"] = "Run Speed (%)"
L["Rune"] = "Runa"
--[[Translation missing --]]
L["Rune #1"] = "Rune #1"
--[[Translation missing --]]
L["Rune #2"] = "Rune #2"
--[[Translation missing --]]
L["Rune #3"] = "Rune #3"
--[[Translation missing --]]
L["Rune #4"] = "Rune #4"
--[[Translation missing --]]
L["Rune #5"] = "Rune #5"
--[[Translation missing --]]
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
L["Say"] = "Decir"
--[[Translation missing --]]
L["Scale"] = "Scale"
--[[Translation missing --]]
L["Scenario"] = "Scenario"
--[[Translation missing --]]
L["Scenario (Heroic)"] = "Scenario (Heroic)"
--[[Translation missing --]]
L["Scenario (Normal)"] = "Scenario (Normal)"
--[[Translation missing --]]
L["Screen"] = "Screen"
--[[Translation missing --]]
L["Screen/Parent Group"] = "Screen/Parent Group"
--[[Translation missing --]]
L["Second"] = "Second"
--[[Translation missing --]]
L["Second Value of Tooltip Text"] = "Second Value of Tooltip Text"
L["Seconds"] = "Segundos"
--[[Translation missing --]]
L[ [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
--[[Translation missing --]]
L["Select Frame"] = "Select Frame"
--[[Translation missing --]]
L["Separator"] = "Separator"
--[[Translation missing --]]
L["Set IDs can be found on websites such as classic.wowhead.com/item-sets"] = "Set IDs can be found on websites such as classic.wowhead.com/item-sets"
--[[Translation missing --]]
L["Set IDs can be found on websites such as wowhead.com/item-sets"] = "Set IDs can be found on websites such as wowhead.com/item-sets"
--[[Translation missing --]]
L["Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"] = "Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"
--[[Translation missing --]]
L["Set Maximum Progress"] = "Set Maximum Progress"
--[[Translation missing --]]
L["Set Minimum Progress"] = "Set Minimum Progress"
--[[Translation missing --]]
L["Shadow Resistance"] = "Shadow Resistance"
--[[Translation missing --]]
L["Shadowlands"] = "Shadowlands"
--[[Translation missing --]]
L["Shadron"] = "Shadron"
L["Shake"] = "Sacudida"
--[[Translation missing --]]
L["Shazzrah"] = "Shazzrah"
--[[Translation missing --]]
L["Shift-Click to resume addon execution."] = "Shift-Click to resume addon execution."
L["Show"] = "Mostrar"
--[[Translation missing --]]
L["Show Absorb"] = "Show Absorb"
--[[Translation missing --]]
L["Show CD of Charge"] = "Show CD of Charge"
--[[Translation missing --]]
L["Show charged duration for empowered casts"] = "Show charged duration for empowered casts"
--[[Translation missing --]]
L["Show GCD"] = "Show GCD"
--[[Translation missing --]]
L["Show Global Cooldown"] = "Show Global Cooldown"
--[[Translation missing --]]
L["Show Heal Absorb"] = "Show Heal Absorb"
--[[Translation missing --]]
L["Show Incoming Heal"] = "Show Incoming Heal"
--[[Translation missing --]]
L["Show Loss of Control"] = "Show Loss of Control"
--[[Translation missing --]]
L["Show On"] = "Show On"
--[[Translation missing --]]
L["Show Rested Overlay"] = "Show Rested Overlay"
L["Shrink"] = "Encoger"
--[[Translation missing --]]
L["Silithid Royalty"] = "Silithid Royalty"
--[[Translation missing --]]
L["Simple"] = "Simple"
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
--[[Translation missing --]]
L["Size & Position"] = "Size & Position"
--[[Translation missing --]]
L["Slide Animation"] = "Slide Animation"
L["Slide from Bottom"] = "Arrastrar Desde Abajo"
L["Slide from Left"] = "Arrastrar Desde la Izquierda"
L["Slide from Right"] = "Arrastrar Desde la Derecha"
L["Slide from Top"] = "Arrastrar Desde Arriba"
L["Slide to Bottom"] = "Arrastrar Hacia Abajo"
L["Slide to Left"] = "Arrastrar Hacia la Izquierda"
L["Slide to Right"] = "Arrastrar Hacia la Derecha"
L["Slide to Top"] = "Arrastrar Hacia Arriba"
--[[Translation missing --]]
L["Slider"] = "Slider"
--[[Translation missing --]]
L["Small"] = "Small"
--[[Translation missing --]]
L["Smart Group"] = "Smart Group"
--[[Translation missing --]]
L["Soft Enemy"] = "Soft Enemy"
--[[Translation missing --]]
L["Soft Friend"] = "Soft Friend"
--[[Translation missing --]]
L["Sound"] = "Sound"
--[[Translation missing --]]
L["Sound by Kit ID"] = "Sound by Kit ID"
--[[Translation missing --]]
L["Source"] = "Source"
--[[Translation missing --]]
L["Source Affiliation"] = "Source Affiliation"
--[[Translation missing --]]
L["Source GUID"] = "Source GUID"
L["Source Name"] = "Nombre de Origen"
--[[Translation missing --]]
L["Source NPC Id"] = "Source NPC Id"
--[[Translation missing --]]
L["Source Object Type"] = "Source Object Type"
--[[Translation missing --]]
L["Source Raid Mark"] = "Source Raid Mark"
--[[Translation missing --]]
L["Source Reaction"] = "Source Reaction"
L["Source Unit"] = "Unidad Origen"
--[[Translation missing --]]
L["Source Unit Name/Realm"] = "Source Unit Name/Realm"
--[[Translation missing --]]
L["Source unit's raid mark index"] = "Source unit's raid mark index"
--[[Translation missing --]]
L["Source unit's raid mark texture"] = "Source unit's raid mark texture"
--[[Translation missing --]]
L["Space"] = "Space"
L["Spacing"] = "Espaciado"
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
L["Specific Unit"] = "Unidad Específica"
L["Spell"] = "Hechizo"
L["Spell (Building)"] = "Hechizo (en curso)"
--[[Translation missing --]]
L["Spell Activation Overlay Glow"] = "Spell Activation Overlay Glow"
--[[Translation missing --]]
L["Spell Cast Succeeded"] = "Spell Cast Succeeded"
--[[Translation missing --]]
L["Spell Cost"] = "Spell Cost"
--[[Translation missing --]]
L["Spell Count"] = "Spell Count"
--[[Translation missing --]]
L["Spell ID"] = "Spell ID"
--[[Translation missing --]]
L["Spell Id"] = "Spell Id"
--[[Translation missing --]]
L["Spell ID:"] = "Spell ID:"
--[[Translation missing --]]
L["Spell IDs:"] = "Spell IDs:"
--[[Translation missing --]]
L["Spell in Range"] = "Spell in Range"
--[[Translation missing --]]
L["Spell Known"] = "Spell Known"
L["Spell Name"] = "Nombre del Hechizo"
--[[Translation missing --]]
L["Spell Peneration Percent"] = "Spell Peneration Percent"
--[[Translation missing --]]
L["Spell School"] = "Spell School"
--[[Translation missing --]]
L["Spell Usable"] = "Spell Usable"
L["Spin"] = "Girar"
L["Spiral"] = "Espiral"
L["Spiral In And Out"] = "Espiral de Dentro a Fuera"
--[[Translation missing --]]
L["Spirit"] = "Spirit"
--[[Translation missing --]]
L["Stack Count"] = "Stack Count"
L["Stacks"] = "Acumulaciones"
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
--[[Translation missing --]]
L["Stamina"] = "Stamina"
L["Stance/Form/Aura"] = "Impostura/Forma/Aura"
--[[Translation missing --]]
L["Standing"] = "Standing"
--[[Translation missing --]]
L["Star Shake"] = "Star Shake"
--[[Translation missing --]]
L["Start Now"] = "Start Now"
L["Status"] = "Estado"
--[[Translation missing --]]
L["Status Bar"] = "Status Bar"
L["Stolen"] = "Robado"
--[[Translation missing --]]
L["Stop"] = "Stop"
--[[Translation missing --]]
L["Strength"] = "Strength"
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
L["Summon"] = "Invocar"
--[[Translation missing --]]
L["Supports multiple entries, separated by commas"] = "Supports multiple entries, separated by commas"
--[[Translation missing --]]
L[ [=[Supports multiple entries, separated by commas
]=] ] = [=[Supports multiple entries, separated by commas
]=]
--[[Translation missing --]]
L["Supports multiple entries, separated by commas. Escape ',' with \\"] = "Supports multiple entries, separated by commas. Escape ',' with \\"
--[[Translation missing --]]
L["Supports multiple entries, separated by commas. Group Zone IDs must be prefixed with 'g', e.g. g277."] = "Supports multiple entries, separated by commas. Group Zone IDs must be prefixed with 'g', e.g. g277."
L["Swing"] = "Golpe"
L["Swing Timer"] = "Temporizador de Golpes"
--[[Translation missing --]]
L["Swipe"] = "Swipe"
--[[Translation missing --]]
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
--[[Translation missing --]]
L["Talent Selected"] = "Talent Selected"
L["Talent selected"] = "Talento seleccionado"
L["Talent Specialization"] = "Especialización de Talentos"
L["Tanking And Highest"] = "Tanqueando y el más alto"
L["Tanking But Not Highest"] = "Tanqueando pero no el mas alto"
L["Target"] = "Objetivo"
--[[Translation missing --]]
L["Targeted"] = "Targeted"
--[[Translation missing --]]
L["Tenebron"] = "Tenebron"
--[[Translation missing --]]
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
L["The trigger number is optional, and uses the trigger providing dynamic information if not specified."] = "El número del activador es opcional, y utiliza el activador que proporciona información dinámica si no se especifica."
--[[Translation missing --]]
L["There are %i updates to your auras ready to be installed!"] = "There are %i updates to your auras ready to be installed!"
L["Thick Outline"] = "Linea exterior gruesa"
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
L["Threat Situation"] = "Situación de la Amenaza"
--[[Translation missing --]]
L["Threat Value"] = "Threat Value"
--[[Translation missing --]]
L["Tick"] = "Tick"
--[[Translation missing --]]
L["Time Format"] = "Time Format"
--[[Translation missing --]]
L["Time in GCDs"] = "Time in GCDs"
L["Timed"] = "Temporizado"
--[[Translation missing --]]
L["Timer Id"] = "Timer Id"
--[[Translation missing --]]
L["Toggle"] = "Toggle"
--[[Translation missing --]]
L["Toggle List"] = "Toggle List"
--[[Translation missing --]]
L["Toggle Options Window"] = "Toggle Options Window"
--[[Translation missing --]]
L["Toggle Performance Profiling Window"] = "Toggle Performance Profiling Window"
--[[Translation missing --]]
L["Tooltip"] = "Tooltip"
--[[Translation missing --]]
L["Tooltip Value 1"] = "Tooltip Value 1"
--[[Translation missing --]]
L["Tooltip Value 2"] = "Tooltip Value 2"
--[[Translation missing --]]
L["Tooltip Value 3"] = "Tooltip Value 3"
L["Top"] = "Superior"
L["Top Left"] = "Superior Izquierda"
L["Top Right"] = "Superior Derecha"
L["Top to Bottom"] = "De Arriba a Abajo"
--[[Translation missing --]]
L["Toravon the Ice Watcher"] = "Toravon the Ice Watcher"
--[[Translation missing --]]
L["Torghast"] = "Torghast"
--[[Translation missing --]]
L["Total"] = "Total"
L["Total Duration"] = "Duración total"
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
L["Totem"] = "Tótem"
L["Totem #%i"] = "Tótem #%i"
L["Totem Name"] = "Nombre del Tótem"
--[[Translation missing --]]
L["Totem Name Pattern Match"] = "Totem Name Pattern Match"
L["Totem Number"] = "Número de tótem"
--[[Translation missing --]]
L["Track Cooldowns"] = "Track Cooldowns"
--[[Translation missing --]]
L["Tracking Charge %i"] = "Tracking Charge %i"
--[[Translation missing --]]
L["Tracking Charge CDs"] = "Tracking Charge CDs"
--[[Translation missing --]]
L["Tracking Only Cooldown"] = "Tracking Only Cooldown"
L["Transmission error"] = "Error de transmisión"
--[[Translation missing --]]
L["Trial of the Crusader"] = "Trial of the Crusader"
L["Trigger"] = "Activador"
L["Trigger %i"] = "Activador %i"
L["Trigger %s"] = "Activador %s"
L["Trigger 1"] = "Activador 1"
L["Trigger State Updater (Advanced)"] = "Actualización del estado del activador (avanzada)"
L["Trigger Update"] = "Actualización del activador"
L["Trigger:"] = "Activador:"
--[[Translation missing --]]
L["Trivial (Low Level)"] = "Trivial (Low Level)"
L["True"] = "Verdadero"
--[[Translation missing --]]
L["Trying to repair broken conditions in %s likely caused by a WeakAuras bug."] = "Trying to repair broken conditions in %s likely caused by a WeakAuras bug."
--[[Translation missing --]]
L["Twin Emperors"] = "Twin Emperors"
L["Type"] = "Tipo"
--[[Translation missing --]]
L["Ulduar"] = "Ulduar"
--[[Translation missing --]]
L["Unaffected"] = "Unaffected"
L["Undefined"] = "No Definido"
--[[Translation missing --]]
L["Unholy"] = "Unholy"
--[[Translation missing --]]
L["Unholy Rune #1"] = "Unholy Rune #1"
--[[Translation missing --]]
L["Unholy Rune #2"] = "Unholy Rune #2"
L["Unit"] = "Unidad"
L["Unit Characteristics"] = "Características de la unidad"
L["Unit Destroyed"] = "Unidad Destruida"
L["Unit Died"] = "Unit Muerta"
--[[Translation missing --]]
L["Unit Dissipates"] = "Unit Dissipates"
--[[Translation missing --]]
L["Unit Frame"] = "Unit Frame"
--[[Translation missing --]]
L["Unit Frames"] = "Unit Frames"
--[[Translation missing --]]
L["Unit is Unit"] = "Unit is Unit"
--[[Translation missing --]]
L["Unit Name"] = "Unit Name"
--[[Translation missing --]]
L["Unit Name/Realm"] = "Unit Name/Realm"
--[[Translation missing --]]
L["Units Affected"] = "Units Affected"
--[[Translation missing --]]
L["unknown location"] = "unknown location"
--[[Translation missing --]]
L["Unlimited"] = "Unlimited"
--[[Translation missing --]]
L["Untrigger %s"] = "Untrigger %s"
L["Up"] = "Arriba"
--[[Translation missing --]]
L["Up, then Centered Horizontal"] = "Up, then Centered Horizontal"
--[[Translation missing --]]
L["Up, then Left"] = "Up, then Left"
--[[Translation missing --]]
L["Up, then Right"] = "Up, then Right"
--[[Translation missing --]]
L["Update Position"] = "Update Position"
--[[Translation missing --]]
L["Usage:"] = "Usage:"
--[[Translation missing --]]
L["Use /wa minimap to show the minimap icon again."] = "Use /wa minimap to show the minimap icon again."
--[[Translation missing --]]
L["Use Custom Color"] = "Use Custom Color"
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
--[[Translation missing --]]
L["Value"] = "Value"
--[[Translation missing --]]
L["Values/Remaining Time above this value are displayed as full progress."] = "Values/Remaining Time above this value are displayed as full progress."
--[[Translation missing --]]
L["Values/Remaining Time below this value are displayed as no progress."] = "Values/Remaining Time below this value are displayed as no progress."
--[[Translation missing --]]
L["Vault of Archavon"] = "Vault of Archavon"
--[[Translation missing --]]
L["Versatility (%)"] = "Versatility (%)"
--[[Translation missing --]]
L["Versatility Rating"] = "Versatility Rating"
--[[Translation missing --]]
L["Vertical"] = "Vertical"
--[[Translation missing --]]
L["Vesperon"] = "Vesperon"
--[[Translation missing --]]
L["Viscidus"] = "Viscidus"
--[[Translation missing --]]
L["Visibility"] = "Visibility"
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
L["Weapon"] = "Arma"
--[[Translation missing --]]
L["Weapon Enchant"] = "Weapon Enchant"
--[[Translation missing --]]
L["Weapon Enchant / Fishing Lure"] = "Weapon Enchant / Fishing Lure"
L["Whisper"] = "Susurro"
--[[Translation missing --]]
L["Whole Area"] = "Whole Area"
--[[Translation missing --]]
L["Width"] = "Width"
L["Wobble"] = "Temblar"
--[[Translation missing --]]
L["World Boss"] = "World Boss"
--[[Translation missing --]]
L["Wrap"] = "Wrap"
--[[Translation missing --]]
L["Wrath of the Lich King"] = "Wrath of the Lich King"
--[[Translation missing --]]
L["Writing to the WeakAuras table is not allowed."] = "Writing to the WeakAuras table is not allowed."
--[[Translation missing --]]
L["X-Offset"] = "X-Offset"
--[[Translation missing --]]
L["XT-002 Deconstructor"] = "XT-002 Deconstructor"
L["Yell"] = "Grito"
--[[Translation missing --]]
L["Y-Offset"] = "Y-Offset"
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
--[[Translation missing --]]
L["Your threat on the mob as a percentage of the amount required to pull aggro. Will pull aggro at 100."] = "Your threat on the mob as a percentage of the amount required to pull aggro. Will pull aggro at 100."
--[[Translation missing --]]
L["Your total threat on the mob."] = "Your total threat on the mob."
--[[Translation missing --]]
L["Zone ID(s)"] = "Zone ID(s)"
--[[Translation missing --]]
L["Zone Name"] = "Zone Name"
--[[Translation missing --]]
L["Zoom"] = "Zoom"
--[[Translation missing --]]
L["Zoom Animation"] = "Zoom Animation"
--[[Translation missing --]]
L["Zul'Gurub"] = "Zul'Gurub"

