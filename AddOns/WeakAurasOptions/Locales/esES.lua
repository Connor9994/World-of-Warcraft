if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "esES" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Options
	L[" and |cFFFF0000mirrored|r"] = "y |cFFFF0000reflejado|r"
	L["-- Do not remove this comment, it is part of this aura: "] = "-- No elimines este comentario, forma parte de esta aura:"
	L[" rotated |cFFFF0000%s|r degrees"] = "rotado |cFFFF0000%s|r grados"
	L["% of Progress"] = "% de Progreso"
	L["%d |4aura:auras; added"] = "%d |4aura:auras; añadida(s)"
	L["%d |4aura:auras; deleted"] = "%d |4aura:auras; eliminada(s)"
	L["%d |4aura:auras; modified"] = "%d |4aura:auras; modificada(s)"
	L["%i auras selected"] = "%i auras seleccionadas"
	--[[Translation missing --]]
	L["%s - %i. Trigger"] = "%s - %i. Trigger"
	--[[Translation missing --]]
	L["%s - Alpha Animation"] = "%s - Alpha Animation"
	--[[Translation missing --]]
	L["%s - Color Animation"] = "%s - Color Animation"
	--[[Translation missing --]]
	L["%s - Condition Custom Chat %s"] = "%s - Condition Custom Chat %s"
	--[[Translation missing --]]
	L["%s - Condition Custom Check %s"] = "%s - Condition Custom Check %s"
	--[[Translation missing --]]
	L["%s - Condition Custom Code %s"] = "%s - Condition Custom Code %s"
	--[[Translation missing --]]
	L["%s - Custom Anchor"] = "%s - Custom Anchor"
	--[[Translation missing --]]
	L["%s - Custom Grow"] = "%s - Custom Grow"
	--[[Translation missing --]]
	L["%s - Custom Sort"] = "%s - Custom Sort"
	--[[Translation missing --]]
	L["%s - Custom Text"] = "%s - Custom Text"
	--[[Translation missing --]]
	L["%s - Finish"] = "%s - Finish"
	--[[Translation missing --]]
	L["%s - Finish Action"] = "%s - Finish Action"
	--[[Translation missing --]]
	L["%s - Finish Custom Text"] = "%s - Finish Custom Text"
	--[[Translation missing --]]
	L["%s - Init Action"] = "%s - Init Action"
	--[[Translation missing --]]
	L["%s - Main"] = "%s - Main"
	L["%s - Option #%i has the key %s. Please choose a different option key."] = "%s - La opción #%i tiene el código %s. Por favor selecciona un código diferente."
	--[[Translation missing --]]
	L["%s - Rotate Animation"] = "%s - Rotate Animation"
	--[[Translation missing --]]
	L["%s - Scale Animation"] = "%s - Scale Animation"
	--[[Translation missing --]]
	L["%s - Start"] = "%s - Start"
	--[[Translation missing --]]
	L["%s - Start Action"] = "%s - Start Action"
	--[[Translation missing --]]
	L["%s - Start Custom Text"] = "%s - Start Custom Text"
	--[[Translation missing --]]
	L["%s - Translate Animation"] = "%s - Translate Animation"
	L["%s - Trigger Logic"] = "%s - Lógica de activación"
	L["%s %s, Lines: %d, Frequency: %0.2f, Length: %d, Thickness: %d"] = "%s %s, Líneas: %d, Frecuencia: %0.2f, Longitud: %d, Espesor: %d"
	L["%s %s, Particles: %d, Frequency: %0.2f, Scale: %0.2f"] = "%s %s, Partículas: %d, Frecuencia: %0.2f, Escala: %0.2f"
	--[[Translation missing --]]
	L["%s %u. Overlay Function"] = "%s %u. Overlay Function"
	L["%s Alpha: %d%%"] = "%s Alfa: %d%%"
	L["%s Color"] = "%s Color"
	--[[Translation missing --]]
	L["%s Custom Variables"] = "%s Custom Variables"
	L["%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"] = "%s Alfa por defecto, Zoom, Inserción de iconos, Relación de aspecto"
	--[[Translation missing --]]
	L["%s Duration Function"] = "%s Duration Function"
	--[[Translation missing --]]
	L["%s Icon Function"] = "%s Icon Function"
	L["%s Inset: %d%%"] = "%s Inserción: %d%%"
	L["%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"] = "%s no es un válido SubEvent para COMBAT_LOG_EVENT_UNFILTERED"
	L["%s Keep Aspect Ratio"] = "%s Mantener relación de aspecto"
	--[[Translation missing --]]
	L["%s Name Function"] = "%s Name Function"
	--[[Translation missing --]]
	L["%s Stacks Function"] = "%s Stacks Function"
	--[[Translation missing --]]
	L["%s stores around %s KB of data"] = "%s stores around %s KB of data"
	--[[Translation missing --]]
	L["%s Texture"] = "%s Texture"
	--[[Translation missing --]]
	L["%s Texture Function"] = "%s Texture Function"
	L["%s total auras"] = "%s auras en total"
	--[[Translation missing --]]
	L["%s Trigger Function"] = "%s Trigger Function"
	--[[Translation missing --]]
	L["%s Untrigger Function"] = "%s Untrigger Function"
	--[[Translation missing --]]
	L["%s X offset by %d"] = "%s X offset by %d"
	--[[Translation missing --]]
	L["%s Y offset by %d"] = "%s Y offset by %d"
	L["%s Zoom: %d%%"] = "%s Zoom: %d%%"
	L["%s, Border"] = "%s, Borde"
	L["%s, Offset: %0.2f;%0.2f"] = "%s, Desplazamiento: %0.2f;%0.2f"
	L["%s, offset: %0.2f;%0.2f"] = "%s, desplazamiento: %0.2f;%0.2f"
	L["%s|cFFFF0000custom|r texture with |cFFFF0000%s|r blend mode%s%s"] = "%s|cFFFF0000textura personalizada|r con |cFFFF0000%s|r modo de mezcla%s%s"
	L["(Right click to rename)"] = "(Clic derecho para cambiar el nombre)"
	L["|c%02x%02x%02x%02xCustom Color|r"] = "|c%02x%02x%02x%02xColor personalizado|r"
	L["|cff999999Triggers tracking multiple units will default to being active even while no affected units are found without a Unit Count or Match Count setting applied.|r"] = "|cff999999Los activadores que rastreen varias unidades se activarán por defecto aunque no se encuentren unidades afectadas sin que se aplique un ajuste de Recuento de unidades o Recuento de coincidencias.|r"
	L["|cFFE0E000Note:|r This sets the description only on '%s'"] = "|cFFE0E000Note:|r Esto establece la descripción solo en '%s'"
	L["|cFFE0E000Note:|r This sets the URL on all selected auras"] = "|cFFE0E000Note:|r Esto establece la URL en todas las auras seleccionadas"
	L["|cFFE0E000Note:|r This sets the URL on this group and all its members."] = "|cFFE0E000Note:|r Esto establece la URL en este grupo y todos sus miembros."
	--[[Translation missing --]]
	L["|cFFFF0000Automatic|r length"] = "|cFFFF0000Automatic|r length"
	--[[Translation missing --]]
	L["|cFFFF0000default|r texture"] = "|cFFFF0000default|r texture"
	--[[Translation missing --]]
	L["|cFFFF0000desaturated|r "] = "|cFFFF0000desaturated|r "
	--[[Translation missing --]]
	L["|cFFFF0000Note:|r The unit '%s' is not a trackable unit."] = "|cFFFF0000Note:|r The unit '%s' is not a trackable unit."
	--[[Translation missing --]]
	L["|cFFFF0000Note:|r The unit '%s' requires soft target cvars to be enabled."] = "|cFFFF0000Note:|r The unit '%s' requires soft target cvars to be enabled."
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"] = "|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"] = "|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Extra Options:|r"] = "|cFFffcc00Extra Options:|r"
	--[[Translation missing --]]
	L["|cFFffcc00Extra:|r %s and %s %s"] = "|cFFffcc00Extra:|r %s and %s %s"
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
	L["A 20x20 pixels icon"] = "Un icono de 20x20 píxeles"
	L["A 32x32 pixels icon"] = "Un icono de 32x32 píxeles"
	L["A 40x40 pixels icon"] = "Un icono de 40x40 píxeles"
	L["A 48x48 pixels icon"] = "Un icono de 48x48 píxeles"
	L["A 64x64 pixels icon"] = "Un icono de 64x64 píxeles"
	L["A group that dynamically controls the positioning of its children"] = "Un grupo que controla dinámicamente la posición de sus hijos"
	L[ [=[A timer will automatically be displayed according to default Interface Settings (overridden by some addons).
Enable this setting if you want this timer to be hidden, or when using a WeakAuras text to display the timer]=] ] = [=[Un temporizador se mostrará automáticamente de acuerdo con la configuración predeterminada de la interfaz (anulada por algunos complementos).
Activa esta opción si quieres que el temporizador esté oculto, o cuando utilices un texto de WeakAuras para mostrar el temporizador.]=]
	L["A Unit ID (e.g., party1)."] = "Una ID de unidad (ej., party1)."
	L["Actions"] = "Acciones"
	L["Active Aura Filters and Info"] = "Información y filtros del aura activa"
	L["Actual Spec"] = "Especialización actual"
	L["Add"] = "Añadir"
	L["Add %s"] = "Añadir %s"
	L["Add a new display"] = "Añadir una nueva aura"
	L["Add Condition"] = "Añadir condición"
	L["Add Entry"] = "Añadir entrada"
	L["Add Extra Elements"] = "Añadir elementos extra"
	L["Add Option"] = "Añadir opción"
	L["Add Overlay"] = "Añadir capa sobrepuesta"
	L["Add Property Change"] = "Añadir cambio de propiedad"
	L["Add Snippet"] = "Añadir Snippet"
	L["Add Sub Option"] = "Añadir opción secundaria"
	L["Add to group %s"] = "añadir al grupo %s"
	L["Add to new Dynamic Group"] = "Añadir al nuevo Grupo Dinámico"
	L["Add to new Group"] = "Añadir al nuevo Grupo"
	L["Add Trigger"] = "Añadir activador"
	L["Additional Events"] = "Eventos adicionales"
	L["Advanced"] = "Avanzado"
	L["Affected Unit Filters and Info"] = "Información y filtros de las unidades afectadas"
	L["Align"] = "Alinear"
	L["Alignment"] = "Alineamiento"
	L["All of"] = "Todo"
	L["Allow Full Rotation"] = "Permitir rotación completa"
	L["Alpha"] = "Transparencia"
	L["Anchor"] = "Anclaje"
	L["Anchor Point"] = "Punto de Anclaje"
	L["Anchored To"] = "anclado a"
	L["And "] = "y"
	L["and"] = "y"
	L["and aligned left"] = "y alineado a la izquierda"
	L["and aligned right"] = "y alineado a la derecha"
	L["and rotated left"] = "y girado a la izquierda"
	L["and rotated right"] = "y girado a la derecha"
	--[[Translation missing --]]
	L["and Trigger %s"] = "and Trigger %s"
	--[[Translation missing --]]
	L["and with width |cFFFF0000%s|r and %s"] = "and with width |cFFFF0000%s|r and %s"
	L["Angle"] = "Ángulo"
	L["Animate"] = "Animar"
	L["Animated Expand and Collapse"] = "Animar Pliegue y Despliegue"
	L["Animates progress changes"] = "Anima los cambios de progreso"
	L["Animation End"] = "Fin de la animación"
	L["Animation Mode"] = "Modo de animación"
	L["Animation relative duration description"] = [=[Duración de la animación relativa a la duración del aura, expresado en fracciones (1/2), porcentaje (50%),  o decimales (0.5).
|cFFFF0000Nota:|r si el aura no tiene progreso (por ejemplo, si no tiene un activador basado en tiempo, si el aura no tiene duración, etc.), la animación no correrá.

|cFF4444FFPor Ejemplo:|r
Si la duración de la animación es |cFF00CC0010%|r, y el disparador del aura es un beneficio que dura 20 segundos, la animación de entrada se mostrará por 2 segundos.
Si la duración de la animación es |cFF00CC0010%|r, y el disparador del aura es un beneficio sin tiempo asignado, la animación de entrada se ignorará."
]=]
	L["Animation Sequence"] = "Secuencia de Animación"
	L["Animation Start"] = "Inicio de la animación"
	L["Animations"] = "Animaciones"
	L["Any of"] = "Cualquiera de"
	L["Apply Template"] = "Aplicar plantilla"
	L["Arcane Orb"] = "Orbe arcano"
	L["At a position a bit left of Left HUD position."] = "En una posición un poco a la izquierda de la posición izquierda del HUD."
	L["At a position a bit left of Right HUD position"] = "En una posición un poco a la izquierda de la posición derecha del HUD"
	L["At the same position as Blizzard's spell alert"] = "En la misma posición que la alerta de hechizo de Blizzard"
	L[ [=[Aura is
Off Screen]=] ] = "El aura está fuera de la pantalla"
	L["Aura Name"] = "Nombre del aura"
	L["Aura Name Pattern"] = "Patrón del nombre del aura"
	L["Aura Order"] = "Orden de auras"
	L["Aura received from: %s"] = "Aura recibida de: %s"
	L["Aura Type"] = "Tipo de aura"
	L["Aura: '%s'"] = "Aura: '%s'"
	L["Author Options"] = "Opciones de autor"
	L["Auto-Clone (Show All Matches)"] = "Autoclonar (mostrar todas las coincidencias)"
	L["Auto-cloning enabled"] = "Autoclonación activada"
	L["Automatic"] = "Automático"
	L["Automatic length"] = "Longitud automática"
	L["Available Voices are system specific"] = "Las voces disponibles son específicas del sistema"
	L["Backdrop Color"] = "Color de fondo"
	L["Backdrop in Front"] = "Fondo delante"
	L["Backdrop Style"] = "Estilo de fondo"
	L["Background"] = "Fondo"
	L["Background Color"] = "Color de Fondo"
	--[[Translation missing --]]
	L["Background Inner"] = "Background Inner"
	L["Background Offset"] = "Desplazamiento del Fondo"
	L["Background Texture"] = "Textura del Fondo"
	L["Bar Alpha"] = "Transparencia de la Barra"
	L["Bar Color Settings"] = "Configuración de color de barra"
	L["Bar Color/Gradient Start"] = "Color de la barra/Inicio del degradado"
	L["Bar Texture"] = "Textura de la Barra"
	L["Big Icon"] = "Icono grande"
	L["Blend Mode"] = "Modo de Mezcla"
	L["Blizzard Cooldown Reduction"] = "Reducción de reutilización de Blizzard"
	L["Blue Rune"] = "Runa sangrienta"
	--[[Translation missing --]]
	L["Blue Sparkle Orb"] = "Blue Sparkle Orb"
	L["Border"] = "Borde"
	L["Border %s"] = "Borde %s"
	L["Border Anchor"] = "Ancla del borde"
	L["Border Color"] = "Color de borde"
	L["Border in Front"] = "Borde en frente"
	L["Border Inset"] = "Borde del recuadro"
	L["Border Offset"] = "Desplazamiento de Borde"
	L["Border Settings"] = "Configuración de bordes"
	L["Border Size"] = "Tamaño del borde"
	L["Border Style"] = "Estilo de borde"
	L["Bottom"] = "Abajo"
	L["Bottom Left"] = "Abajo a la izquierda"
	L["Bottom Right"] = "Abajo a la derecha"
	--[[Translation missing --]]
	L["Bracket Matching"] = "Bracket Matching"
	L["Browse Wago, the largest collection of auras."] = "Explora Wago, la mayor colección de auras."
	L["Can be a UID (e.g., party1)."] = "Puede ser un UID (por ejemplo, party1)."
	L["Can set to 0 if Columns * Width equal File Width"] = "Puede ponerse a 0 si Columnas * Anchura es igual a Anchura de fila"
	L["Can set to 0 if Rows * Height equal File Height"] = "Puede ponerse a 0 si Filas * Altura es igual a Altura de fila"
	L["Cancel"] = "Cancelar"
	L["Cast by a Player Character"] = "Lanzado por un personaje de jugador"
	L["Categories to Update"] = "Categorías a actualizar"
	L["Center"] = "Centro"
	L["Chat Message"] = "Mensaje del chat"
	L["Chat with WeakAuras experts on our Discord server."] = "Chatea con los expertos de WeakAuras en nuestro servidor Discord."
	L["Check On..."] = "Chequear..."
	L["Check out our wiki for a large collection of examples and snippets."] = "Consulta nuestra wiki para ver una amplia colección de ejemplos y snippets."
	L["Children:"] = "Hijo:"
	L["Choose"] = "Escoger"
	L["Class"] = "Clase"
	L["Clear Debug Logs"] = "Borrar registros de depuración"
	L["Clear Saved Data"] = "Borrar datos guardados"
	--[[Translation missing --]]
	L["Clip Overlays"] = "Clip Overlays"
	--[[Translation missing --]]
	L["Clipped by Progress"] = "Clipped by Progress"
	L["Close"] = "Cerrar"
	L["Code Editor"] = "Editor de código"
	L["Collapse"] = "Contraer"
	L["Collapse all loaded displays"] = "Plegar todas las auras"
	L["Collapse all non-loaded displays"] = "Plegar todas las auras no cargadas"
	L["Collapse all pending Import"] = "Contraer todas las importaciones pendientes"
	L["Collapsible Group"] = "Grupo contraíble"
	L["color"] = "color"
	L["Color"] = "Color"
	L["Column Height"] = "Altura de columna"
	L["Column Space"] = "Espacio de columna"
	L["Columns"] = "Columnas"
	L["COMBAT_LOG_EVENT_UNFILTERED with no filter can trigger frame drops in raid environment."] = "COMBAT_LOG_EVENT_UNFILTERED sin filtro puede provocar caídas de frames en entornos de bandas."
	L["Combinations"] = "Combinaciones"
	L["Combine Matches Per Unit"] = "Combinar encuentros por unidad"
	L["Common Text"] = "Texto común"
	L["Compare against the number of units affected."] = "Comparar con el número de unidades afectadas."
	L["Compatibility Options"] = "Opciones de compatibilidad"
	L["Compress"] = "Comprimir"
	L["Condition %i"] = "Condición %i"
	L["Conditions"] = "Condiciones"
	L["Configure what options appear on this panel."] = "Configura qué opciones aparecen en este panel."
	L["Constant Factor"] = "Factor Constante"
	--[[Translation missing --]]
	L["Control-click to select multiple displays"] = "Control-click to select multiple displays"
	L["Controls the positioning and configuration of multiple displays at the same time"] = "Controla la posición y configuración de varias auras a la vez"
	L["Convert to..."] = "Convertir a..."
	L["Cooldown Numbers might be added by WoW. You can configure these in the game settings."] = "Los números de reutilización pueden ser añadidos por WoW. Puedes configurarlos en los ajustes del juego."
	L["Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."] = "Reducción de reutilización cambia la duración de los segundos en lugar de mostrar los segundos en tiempo real."
	L["Copy"] = "Copiar"
	L["Copy settings..."] = "Copiar ajustes..."
	L["Copy to all auras"] = "Copiar a todas las auras"
	L["Could not parse '%s'. Expected a table."] = "No se ha podido procesar '%s'. Se esperaba una tabla."
	L["Count"] = "Contar"
	L["Counts the number of matches over all units."] = "Cuenta el número de coincidencias en todas las unidades."
	L["Counts the number of matches per unit."] = "Cuenta el número de coincidencias por unidad."
	L["Create a Copy"] = "Crear una copia"
	L["Creating buttons: "] = "Crear pulsadores: "
	L["Creating options: "] = "Crear opciones: "
	L["Crop X"] = "Cortar X"
	L["Crop Y"] = "Cortar Y"
	L["Custom"] = "Personalizado"
	L["Custom Anchor"] = "Ancla personalizada"
	--[[Translation missing --]]
	L["Custom Check"] = "Custom Check"
	L["Custom Code"] = "Código Personalizado"
	--[[Translation missing --]]
	L["Custom Code Viewer"] = "Custom Code Viewer"
	L["Custom Color"] = "Color personalizado"
	L["Custom Configuration"] = "Configuración personalizada"
	--[[Translation missing --]]
	L["Custom Frames"] = "Custom Frames"
	L["Custom Function"] = "Función personalizada"
	--[[Translation missing --]]
	L["Custom Grow"] = "Custom Grow"
	L["Custom Options"] = "Opciones personalizadas"
	L["Custom Sort"] = "Orden personalizado"
	L["Custom Trigger"] = "Activador personalizado"
	L["Custom trigger event tooltip"] = "Información sobre eventos de activador personalizado"
	L["Custom trigger status tooltip"] = "Información sobre el estado del activador personalizado"
	L["Custom Trigger: Ignore Lua Errors on OPTIONS event"] = "Activador personalizado: ignorar errores de Lua en el evento OPTIONS"
	L["Custom Trigger: Send fake events instead of STATUS event"] = "Activador personalizado: enviar eventos falsos en lugar del evento STATUS"
	L["Custom Untrigger"] = "Activador no-personalizado"
	L["Custom Variables"] = "Variables personalizadas"
	L["Debuff Type"] = "Tipo de perjuicio"
	--[[Translation missing --]]
	L["Debug Log"] = "Debug Log"
	L["Debug Log:"] = "Registro de depuración:"
	L["Default"] = "Por defecto"
	L["Default Color"] = "Color por defecto"
	L["Delay"] = "Retardo"
	L["Delete"] = "Eliminar"
	L["Delete all"] = "Eliminar todo"
	L["Delete children and group"] = "Eliminar grupo e hijos"
	L["Delete Entry"] = "Eliminar entrada"
	L["Desaturate"] = "Desaturar"
	L["Description"] = "Descripción"
	L["Description Text"] = "Texto de descripción"
	L["Determines how many entries can be in the table."] = "Determina cuántas entradas puede haber en la tabla."
	L["Differences"] = "Diferencias"
	L["Disabled"] = "Desactivado"
	L["Disallow Entry Reordering"] = "No permitir la reordenación de entradas"
	L["Display"] = "Mostrar"
	--[[Translation missing --]]
	L["Display Name"] = "Display Name"
	L["Display Text"] = "Mostrar Texto"
	--[[Translation missing --]]
	L["Displays a text, works best in combination with other displays"] = "Displays a text, works best in combination with other displays"
	L["Distribute Horizontally"] = "Distribución Horizontal"
	L["Distribute Vertically"] = "Distribución Vertical"
	--[[Translation missing --]]
	L["Do not group this display"] = "Do not group this display"
	L["Do you want to ignore all future updates for this aura"] = "¿Quieres ignorar todas las actualizaciones futuras para esta aura?"
	L["Documentation"] = "Documentación"
	L["Done"] = "Hecho"
	L["Drag to move"] = "Arrastra para mover"
	L["Duplicate"] = "Duplicar"
	L["Duplicate All"] = "Duplicar todo"
	L["Duration (s)"] = "Duración (s)"
	L["Duration Info"] = "Información de Duración"
	L["Dynamic Duration"] = "Duración dinámica"
	L["Dynamic Group"] = "Grupo dinámico"
	L["Dynamic Group Settings"] = "Ajustes de grupo dinámico"
	--[[Translation missing --]]
	L["Dynamic Information"] = "Dynamic Information"
	L["Dynamic information from first active trigger"] = "Información dinámica del primer activador activo"
	L["Dynamic information from Trigger %i"] = "Información dinámica del activador %i"
	L["Dynamic text tooltip"] = "Descripción emergente dinámica"
	--[[Translation missing --]]
	L["Ease Strength"] = "Ease Strength"
	--[[Translation missing --]]
	L["Ease type"] = "Ease type"
	L["Edge"] = "Borde"
	--[[Translation missing --]]
	L["eliding"] = "eliding"
	L["Else If"] = "Si no"
	L["Else If Trigger %s"] = "En caso contrario si activador %s"
	L["Enable \"Edge\" part of the overlay"] = "Activar la zona \"Borde\" de la superposición"
	L["Enable \"swipe\" part of the overlay"] = "Activar la función \"barrido\" de la superposición"
	L["Enable Debug Log"] = "Activar registro de depuración"
	L["Enable Debug Logging"] = "Activar el registro de depuración"
	L["Enable Gradient"] = "Activar degradado"
	L["Enable Swipe"] = "Activar barrido"
	L["Enable the \"Swipe\" radial overlay"] = "Activar la superposición radial de \"barrido\""
	L["Enabled"] = "Activado"
	L["End Angle"] = "Ángulo final"
	L["End of %s"] = "Fin de %s"
	L["Enemy nameplate(s) found"] = "Placa(s) de enemigo(s) encontrada(s)"
	L["Enter a Spell ID. You can use the addon idTip to determine spell ids."] = "Escribe un ID de hechizo. Puedes usar el addon idTip para averiguar los IDs de los hechizos."
	L["Enter an Aura Name, partial Aura Name, or Spell ID. A Spell ID will match any spells with the same name."] = "Introduce un nombre de aura, un nombre de aura parcial o un ID de hechizo. Un ID de hechizo coincidirá con cualquier hechizo que tenga el mismo nombre."
	L["Enter Author Mode"] = "Acceder al modo autor"
	L["Enter in a value for the tick's placement."] = "Introduce un valor para la colocación de la marca."
	L["Enter User Mode"] = "Acceder al modo usuario"
	L["Enter user mode."] = "Accede al modo usuario."
	L["Entry %i"] = "Entrada %i"
	L["Entry limit"] = "Límite de entrada"
	--[[Translation missing --]]
	L["Entry Name Source"] = "Entry Name Source"
	L["Event Type"] = "Tipo de Evento"
	L["Event(s)"] = "Evento(s)"
	L["Everything"] = "Todo"
	L["Exact Item Match"] = "Coincidencia exacta de objeto"
	L["Exact Spell ID(s)"] = "ID(s) exacta(s) de hechizo(s)"
	L["Exact Spell Match"] = "Coincidencia exacta de hechizo"
	L["Expand"] = "Ampliar"
	L["Expand all loaded displays"] = "Desplegar todas las auras"
	L["Expand all non-loaded displays"] = "Desplegar todas las auras no cargadas"
	L["Expand all pending Import"] = "Ampliar todas las importaciones pendientes"
	L["Expansion is disabled because this group has no children"] = "La expansión está desactivada porque este grupo no tiene hijos"
	L["Export debug table..."] = "Exportar tabla de depuración..."
	L["Export..."] = "Exportar..."
	L["Exporting"] = "Exportando"
	L["External"] = "Externo"
	L["Extra Height"] = "Altura extra"
	L["Extra Width"] = "Anchura extra"
	L["Fade"] = "Apagar"
	L["Fade In"] = "Fundido de entrada"
	L["Fade Out"] = "Fundido de salida"
	L["Fallback"] = "Respuesta"
	L["Fallback Icon"] = "Icono de respuesta"
	L["False"] = "Falso"
	L["Fetch Affected/Unaffected Names"] = "Buscar nombres afectados/no afectados"
	L["Fetch Raid Mark Information"] = "Obtener información sobre la marca de banda"
	L["Fetch Role Information"] = "Obtener información del rol"
	L["Fetch Tooltip Information"] = "Obtener información del tooltip"
	--[[Translation missing --]]
	L["File Height"] = "File Height"
	--[[Translation missing --]]
	L["File Width"] = "File Width"
	L["Filter based on the spell Name string."] = "Filtro basado en la cadena del nombre del hechizo."
	L["Filter by Arena Spec"] = "Filtrar por especialización de arena"
	L["Filter by Class"] = "Filtrar por clase"
	L["Filter by Group Role"] = "Filtrar por rol de grupo"
	L["Filter by Nameplate Type"] = "Filtrar por tipo de placa"
	L["Filter by Npc ID"] = "Filtrar por ID de PNJ"
	L["Filter by Raid Role"] = "Filtrar por rol de banda"
	L["Filter by Specialization"] = "Filtrar por especialización"
	L["Filter by Unit Name"] = "Filtrar por nombre de unidad"
	L[ [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
Can use \ to escape -.]=] ] = "Formatos de filtro: 'Nombre', 'Nombre-Reino', '-Reino'. Admite varias entradas, separadas por comas. Puedes utilizar \\ para escapar -."
	L["Filter to only dispellable de/buffs of the given type(s)"] = "Filtrar solo los perjuicios o beneficios disipables de los tipos indicados"
	L["Find Auras"] = "Encontrar auras"
	L["Finish"] = "Finalizar"
	L["Fire Orb"] = "Orbe de fuego"
	L["Font"] = "Fuente"
	L["Font Size"] = "Tamaño de fuente"
	L["Foreground"] = "Primer plano"
	L["Foreground Color"] = "Color Frontal"
	L["Foreground Texture"] = "Textura Frontal"
	L["Format"] = "Formato"
	L["Format for %s"] = "Formato para %s"
	L["Found a Bug?"] = "¿Has encontrado un error?"
	L["Frame"] = "Macro"
	L["Frame Count"] = "Recuento de fotogramas"
	--[[Translation missing --]]
	L["Frame Height"] = "Frame Height"
	--[[Translation missing --]]
	L["Frame Rate"] = "Frame Rate"
	--[[Translation missing --]]
	L["Frame Selector"] = "Frame Selector"
	L["Frame Strata"] = "Importancia del Marco"
	--[[Translation missing --]]
	L["Frame Width"] = "Frame Width"
	L["Frequency"] = "Frecuencia"
	--[[Translation missing --]]
	L["Full Circle"] = "Full Circle"
	L["Global Conditions"] = "Condiciones globales"
	L["Glow %s"] = "Resplandor %s"
	L["Glow Action"] = "Acción de Destello"
	L["Glow Anchor"] = "Ancla de resplandor"
	L["Glow Color"] = "Color del resplandor"
	L["Glow External Element"] = "Elemento externo del resplandor"
	--[[Translation missing --]]
	L["Glow Frame Type"] = "Glow Frame Type"
	L["Glow Type"] = "Tipo de resplandor"
	L["Gradient End"] = "Fin del degradado"
	L["Gradient Orientation"] = "Orientación del degradado"
	L["Green Rune"] = "Runa verde"
	L["Grid direction"] = "Dirección de la rejilla"
	L["Group"] = "Grupo"
	L["Group (verb)"] = "Group (verbo)"
	L[ [=[Group and anchor each auras by frame.

- Nameplates: attach to nameplates per unit.
- Unit Frames: attach to unit frame buttons per unit.
- Custom Frames: choose which frame each region should be anchored to.]=] ] = "Agrupar y anclar cada aura por marco. - Placas: adjuntar a placas por unidad. - Marcos de unidad: adjuntar a botones de marco de unidad por unidad. - Marcos personalizados: elige a qué marco debe anclarse cada región."
	L["Group aura count description"] = [=[La cantidad de miembros del grupo o banda que deben estar afectados por las auras indicadas para la activación.
Si el número introducido es un entero (ej. 5), la cantidad de miembros del grupo o banda que deben estar afectados será absoluta.
Si el número introducido es una fracción (1/2), decimal (0.5) o porcentaje (50%%), se interpretará como que la cantidad de miembros del grupo o banda que deben estar afectados es una fracción del total.

|cFF4444FFPor ejemplo:|r
Con |cFF00CC00> 0|r se activará cuando cualquier miembro del grupo o banda esté afectado.
Con |cFF00CC00= 100%%|r se activará cuando todos los miembros del grupo o banda estén afectados.
Con |cFF00CC00!= 2|r se activará cuando el número de miembros del grupo o banda afectados no sea 2.
Con |cFF00CC00<= 0.8|r se activará cuando menos del 80%% del grupo o banda esté afectado (4 de 5 miembros en grupos, 8 de 10 ó 20 de 25 en bandas).
Con |cFF00CC00> 1/2|r se activará cuando más de la mitad de miembros del grupo o banda estén afectados.
Con |cFF00CC00>= 0|r se activará siempre.]=]
	L["Group by Frame"] = "Agrupar por marco"
	L["Group Description"] = "Descripción del grupo"
	--[[Translation missing --]]
	L["Group Icon"] = "Group Icon"
	--[[Translation missing --]]
	L["Group key"] = "Group key"
	--[[Translation missing --]]
	L["Group Options"] = "Group Options"
	--[[Translation missing --]]
	L["Group player(s) found"] = "Group player(s) found"
	--[[Translation missing --]]
	L["Group Role"] = "Group Role"
	--[[Translation missing --]]
	L["Group Scale"] = "Group Scale"
	--[[Translation missing --]]
	L["Group Settings"] = "Group Settings"
	--[[Translation missing --]]
	L["Group Type"] = "Group Type"
	--[[Translation missing --]]
	L["Grow"] = "Grow"
	--[[Translation missing --]]
	L["Hawk"] = "Hawk"
	L["Height"] = "Alto"
	L["Help"] = "Ayuda"
	L["Hide"] = "Ocultar"
	--[[Translation missing --]]
	L["Hide Background"] = "Hide Background"
	--[[Translation missing --]]
	L["Hide Glows applied by this aura"] = "Hide Glows applied by this aura"
	--[[Translation missing --]]
	L["Hide on"] = "Hide on"
	--[[Translation missing --]]
	L["Hide this group's children"] = "Hide this group's children"
	--[[Translation missing --]]
	L["Hide Timer Text"] = "Hide Timer Text"
	L["Horizontal Align"] = "Alineado Horizontal"
	L["Horizontal Bar"] = "Barra horizontal"
	L["Hostility"] = "Hostilidad"
	L["Huge Icon"] = "Icono enorme"
	--[[Translation missing --]]
	L["Hybrid Position"] = "Hybrid Position"
	--[[Translation missing --]]
	L["Hybrid Sort Mode"] = "Hybrid Sort Mode"
	L["Icon"] = "Icono"
	L["Icon Info"] = "Información del Icono"
	L["Icon Inset"] = "Interior del Icono"
	--[[Translation missing --]]
	L["Icon Picker"] = "Icon Picker"
	L["Icon Position"] = "Posición del icono"
	L["Icon Settings"] = "Ajustes del icono"
	L["Icon Source"] = "Fuente del icono"
	L["If"] = "Si"
	L["If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."] = "Si está marcada, el usuario verá un cuadro de edición de varias líneas. Esto es útil para introducir grandes cantidades de texto."
	L["If checked, then this group will not merge with other group when selecting multiple auras."] = "Si está marcada, este grupo no se fusionará con otro grupo al seleccionar varias auras."
	L["If checked, then this option group can be temporarily collapsed by the user."] = "Si está marcada, el usuario puede contraer temporalmente este grupo de opciones."
	--[[Translation missing --]]
	L["If checked, then this option group will start collapsed."] = "If checked, then this option group will start collapsed."
	L["If checked, then this separator will include text. Otherwise, it will be just a horizontal line."] = "Si está marcada, este separador incluirá texto. De lo contrario, será solo una línea horizontal."
	L["If checked, then this separator will not merge with other separators when selecting multiple auras."] = "Si está marcada, este separador no se fusionará con otros separadores al seleccionar varias auras."
	L["If checked, then this space will span across multiple lines."] = "Si está marcada, este espacio abarcará varias líneas."
	L["If Trigger %s"] = "Si Activador %s"
	L["If unchecked, then a default color will be used (usually yellow)"] = "Si no está marcada, se utilizará un color por defecto (normalmente amarillo)"
	L["If unchecked, then this space will fill the entire line it is on in User Mode."] = "Si no está marcada, este espacio ocupará toda la línea en la que se encuentre en Modo Usuario."
	L["Ignore Dead"] = "Ignorar muertos"
	L["Ignore Disconnected"] = "Ignorar desconectados"
	L["Ignore out of checking range"] = "Ignorar fuera de rango de comprobación"
	L["Ignore Self"] = "Ignorarse a sí mismo"
	L["Ignore updates"] = "Ignorar actualizaciones"
	L["Ignored"] = "Ignorar"
	L["Ignored Aura Name"] = "Nombre del aura ignorado"
	--[[Translation missing --]]
	L["Ignored Exact Spell ID(s)"] = "Ignored Exact Spell ID(s)"
	--[[Translation missing --]]
	L["Ignored Name(s)"] = "Ignored Name(s)"
	--[[Translation missing --]]
	L["Ignored Spell ID"] = "Ignored Spell ID"
	L["Import"] = "Importar"
	--[[Translation missing --]]
	L["Import / Export"] = "Import / Export"
	L["Import a display from an encoded string"] = "Importar un aura desde un texto cifrado"
	--[[Translation missing --]]
	L["Import as Copy"] = "Import as Copy"
	--[[Translation missing --]]
	L["Import has no UID, cannot be matched to existing auras."] = "Import has no UID, cannot be matched to existing auras."
	L["Importing"] = "Importación"
	L["Importing %s"] = "Importando %s"
	L["Importing a group with %s child auras."] = "Importando un grupo con %s auras hijas."
	L["Importing a stand-alone aura."] = "Importar un aura independiente."
	L["Importing...."] = "Importando...."
	L["Include Pets"] = "Incluir mascotas"
	--[[Translation missing --]]
	L["Incompatible changes to group region types detected"] = "Incompatible changes to group region types detected"
	--[[Translation missing --]]
	L["Incompatible changes to group structure detected"] = "Incompatible changes to group structure detected"
	L["Indent Size"] = "Tamaño de sangría"
	L["Information"] = "Información"
	L["Inner"] = "Interior"
	L["Invalid Item ID"] = "ID de objeto no válido"
	L["Invalid Item Name/ID/Link"] = "Nombre de objeto/ID/enlace no válidos"
	L["Invalid Spell ID"] = "ID de hechizo no válido"
	L["Invalid Spell Name/ID/Link"] = "Nombre de hechizo/ID/enlace no válido"
	L["Invalid target aura"] = "Aura objetivo no válida"
	L["Invalid type for '%s'. Expected 'bool', 'number', 'select', 'string', 'timer' or 'elapsedTimer'."] = "Tipo no válido para '%s'. Se esperaba 'bool', 'number', 'select', 'string', 'timer' o 'elapsedTimer'."
	L["Invalid type for property '%s' in '%s'. Expected '%s'"] = "Tipo no válido para la propiedad '%s' en '%s'. Se esperaba '%s'."
	L["Inverse"] = "Inverso"
	--[[Translation missing --]]
	L["Inverse Slant"] = "Inverse Slant"
	L["Invert the direction of progress"] = "Invertir la dirección del progreso"
	L["Is Boss Debuff"] = "Es perjuicio de jefe"
	L["Is Stealable"] = "Se puede robar"
	L["Is Unit"] = "Es unidad"
	--[[Translation missing --]]
	L["Join Discord"] = "Join Discord"
	L["Justify"] = "Justificar"
	L["Keep Aspect Ratio"] = "Mantener relación de aspecto"
	L["Keep your Wago imports up to date with the Companion App."] = "Mantén tus importaciones de Wago actualizadas con la Companion App."
	--[[Translation missing --]]
	L["Large Input"] = "Large Input"
	--[[Translation missing --]]
	L["Leaf"] = "Leaf"
	L["Left"] = "Izquierda"
	--[[Translation missing --]]
	L["Left 2 HUD position"] = "Left 2 HUD position"
	--[[Translation missing --]]
	L["Left HUD position"] = "Left HUD position"
	L["Length"] = "Longitud"
	L["Length of |cFFFF0000%s|r"] = "Longitud de |cFFFF0000%s|r"
	L["Limit"] = "Límite"
	--[[Translation missing --]]
	L["Line"] = "Line"
	L["Lines & Particles"] = "Líneas y partículas"
	L["Linked aura: "] = "Aura vinculada:"
	L["Load"] = "Cargar"
	L["Loaded"] = "Cargado"
	--[[Translation missing --]]
	L["Lock Positions"] = "Lock Positions"
	L["Loop"] = "Bucle"
	L["Low Mana"] = "Maná bajo"
	L["Magnetically Align"] = "Alineación magnética"
	L["Main"] = "Principal"
	--[[Translation missing --]]
	L["Match Count"] = "Match Count"
	--[[Translation missing --]]
	L["Match Count per Unit"] = "Match Count per Unit"
	--[[Translation missing --]]
	L["Matches the height setting of a horizontal bar or width for a vertical bar."] = "Matches the height setting of a horizontal bar or width for a vertical bar."
	L["Max"] = "Máx."
	--[[Translation missing --]]
	L["Max Length"] = "Max Length"
	--[[Translation missing --]]
	L["Media Type"] = "Media Type"
	--[[Translation missing --]]
	L["Medium Icon"] = "Medium Icon"
	L["Message"] = "Mensaje"
	L["Message Prefix"] = "Prefijo del Mensaje"
	L["Message Suffix"] = "Sufijo del Mensaje"
	L["Message Type"] = "Tipo de mensaje"
	L["Min"] = "Mín."
	L["Mirror"] = "Reflejar"
	L["Model"] = "Modelo"
	--[[Translation missing --]]
	L["Model %s"] = "Model %s"
	--[[Translation missing --]]
	L["Model Picker"] = "Model Picker"
	--[[Translation missing --]]
	L["Model Settings"] = "Model Settings"
	--[[Translation missing --]]
	L["ModelPaths could not be loaded, the addon is %s"] = "ModelPaths could not be loaded, the addon is %s"
	--[[Translation missing --]]
	L["Move Above Group"] = "Move Above Group"
	--[[Translation missing --]]
	L["Move Below Group"] = "Move Below Group"
	L["Move Down"] = "Mover abajo"
	--[[Translation missing --]]
	L["Move Entry Down"] = "Move Entry Down"
	--[[Translation missing --]]
	L["Move Entry Up"] = "Move Entry Up"
	--[[Translation missing --]]
	L["Move Into Above Group"] = "Move Into Above Group"
	--[[Translation missing --]]
	L["Move Into Below Group"] = "Move Into Below Group"
	--[[Translation missing --]]
	L["Move this display down in its group's order"] = "Move this display down in its group's order"
	--[[Translation missing --]]
	L["Move this display up in its group's order"] = "Move this display up in its group's order"
	L["Move Up"] = "Mover arriba"
	L["Multiple Displays"] = "Múltiples auras"
	L["Multiselect ignored tooltip"] = [=[
|cFFFF0000Ignorado|r - |cFF777777Único|r - |cFF777777Múltiple|r
Ésta opción no será usada al determinar cuándo se mostrará el aura]=]
	L["Multiselect multiple tooltip"] = [=[
|cFF777777Ignorado|r - |cFF777777Único|r - |cFF00FF00Múltiple|r
Cualquier combinación de valores es posible.]=]
	L["Multiselect single tooltip"] = [=[
|cFF777777Ignorado|r - |cFF00FF00Único|r - |cFF777777Múltiple|r
Sólo un valor coincidente puede ser escogido.]=]
	L["Must be a power of 2"] = "Debe ser una potencia de 2"
	L["Name Info"] = "Información del Nombre"
	--[[Translation missing --]]
	L["Name Pattern Match"] = "Name Pattern Match"
	L["Name(s)"] = "Nombre(s)"
	L["Name:"] = "Nombre:"
	L["Nameplate"] = "Placa"
	L["Nameplates"] = "Placas"
	L["Negator"] = "Negar"
	L["New Aura"] = "Nueva aura"
	--[[Translation missing --]]
	L["New Template"] = "New Template"
	L["New Value"] = "Nuevo valor"
	L["No Children"] = "Sin dependientes"
	L["No Logs saved."] = "No hay registros guardados."
	L["None"] = "Nada"
	L["Not a table"] = "No es una tabla"
	L["Not all children have the same value for this option"] = "No todos los hijos contienen la misma configuración."
	L["Not Loaded"] = "No Cargado"
	L["Note: Automated Messages to SAY and YELL are blocked outside of Instances."] = "Nota: los mensajes automáticos para DECIR y GRITAR están bloqueados fuera de las instancias."
	L["Npc ID"] = "ID de pnj"
	L["Number of Entries"] = "Número de entradas"
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
	L["Offer a guided way to create auras for your character"] = "Ofrece una forma guiada de crear auras para tu personaje"
	--[[Translation missing --]]
	L["Offset by |cFFFF0000%s|r/|cFFFF0000%s|r"] = "Offset by |cFFFF0000%s|r/|cFFFF0000%s|r"
	L["Offset by 1px"] = "Desplazamiento de 1px"
	L["Okay"] = "Aceptar"
	L["On Hide"] = "Ocultar"
	--[[Translation missing --]]
	L["On Init"] = "On Init"
	L["On Show"] = "Mostrar"
	L["Only Match auras cast by a player (not an npc)"] = "Coincidir solo con auras lanzadas por un jugador (no un pnj)"
	L["Only match auras cast by people other than the player or their pet"] = "Coincidir solo con auras lanzadas por personas que no sean el jugador o su mascota."
	L["Only match auras cast by the player or their pet"] = "Coincidir solo con auras lanzadas por el jugador o su mascota"
	L["Operator"] = "Operador"
	L["Option %i"] = "Opción %i"
	--[[Translation missing --]]
	L["Option key"] = "Option key"
	--[[Translation missing --]]
	L["Option Type"] = "Option Type"
	L["Options will open after combat ends."] = "Las opciones se abrirán una vez finalizado el combate."
	L["or"] = "o"
	L["or Trigger %s"] = "o Activador %s"
	--[[Translation missing --]]
	L["Orange Rune"] = "Orange Rune"
	L["Orientation"] = "Orientación"
	--[[Translation missing --]]
	L["Outer"] = "Outer"
	L["Outline"] = "Contorno"
	L["Overflow"] = "Desbordamiento"
	--[[Translation missing --]]
	L["Overlay %s Info"] = "Overlay %s Info"
	L["Overlays"] = "Superposiciones"
	L["Own Only"] = "Solo Mías"
	--[[Translation missing --]]
	L["Paste Action Settings"] = "Paste Action Settings"
	--[[Translation missing --]]
	L["Paste Animations Settings"] = "Paste Animations Settings"
	--[[Translation missing --]]
	L["Paste Author Options Settings"] = "Paste Author Options Settings"
	--[[Translation missing --]]
	L["Paste Condition Settings"] = "Paste Condition Settings"
	--[[Translation missing --]]
	L["Paste Custom Configuration"] = "Paste Custom Configuration"
	--[[Translation missing --]]
	L["Paste Display Settings"] = "Paste Display Settings"
	--[[Translation missing --]]
	L["Paste Group Settings"] = "Paste Group Settings"
	--[[Translation missing --]]
	L["Paste Load Settings"] = "Paste Load Settings"
	--[[Translation missing --]]
	L["Paste Settings"] = "Paste Settings"
	--[[Translation missing --]]
	L["Paste text below"] = "Paste text below"
	L["Paste Trigger Settings"] = "Pegar ajustes del activador"
	L["Places a tick on the bar"] = "Coloca una marca en la barra"
	L["Play Sound"] = "Reproducir Sonido"
	L["Portrait Zoom"] = "Zoom del retrato"
	L["Position Settings"] = "Ajustes de posición"
	--[[Translation missing --]]
	L["Preferred Match"] = "Preferred Match"
	L["Premade Auras"] = "Auras prediseñadas"
	--[[Translation missing --]]
	L["Premade Snippets"] = "Premade Snippets"
	L["Preset"] = "Preestablecido"
	L["Press Ctrl+C to copy"] = "Pulsa Ctrl+C para copiar"
	L["Press Ctrl+C to copy the URL"] = "Pulsa Ctrl+C para copiar la URL"
	--[[Translation missing --]]
	L["Prevent Merging"] = "Prevent Merging"
	L["Progress Bar"] = "Barra de progreso"
	L["Progress Bar Settings"] = "Configuración de la barra de progreso"
	L["Progress Texture"] = "Texture de Progreso"
	--[[Translation missing --]]
	L["Progress Texture Settings"] = "Progress Texture Settings"
	--[[Translation missing --]]
	L["Purple Rune"] = "Purple Rune"
	--[[Translation missing --]]
	L["Put this display in a group"] = "Put this display in a group"
	--[[Translation missing --]]
	L["Radius"] = "Radius"
	L["Raid Role"] = "Rol de banda"
	L["Range in yards"] = "Rango en yardas"
	L["Ready for Install"] = "Listo para instalar"
	L["Ready for Update"] = "Listo para actualizar"
	L["Re-center X"] = "Re-centrar X"
	L["Re-center Y"] = "Re-centrar Y"
	L["Reciprocal TRIGGER:# requests will be ignored!"] = "ACTIVADOR recíproco: # solicitudes serán ignoradas."
	L["Regions of type \"%s\" are not supported."] = "Las regiones del tipo \"%s\" no son compatibles."
	L["Remaining Time"] = "Tiempo restante"
	L["Remove"] = "Eliminar"
	--[[Translation missing --]]
	L["Remove this display from its group"] = "Remove this display from its group"
	L["Remove this property"] = "Eliminar esta propiedad"
	L["Rename"] = "Renombrar"
	L["Repeat After"] = "Repetir después"
	L["Repeat every"] = "Repetir cada"
	L["Report bugs on our issue tracker."] = "Informa de los errores en nuestro rastreador de problemas."
	L["Require unit from trigger"] = "Requiere unidad del activador"
	L["Required for Activation"] = "Necesario para la activación"
	L["Requires LibSpecialization, that is e.g. a up-to date WeakAuras version"] = "Requiere LibSpecialization, es decir, una versión actualizada de WeakAuras."
	L["Requires syncing the specialization via LibSpecialization."] = "Requiere sincronizar la especialización mediante LibSpecialization."
	L["Reset all options to their default values."] = "Restablece todas las opciones a sus valores por defecto."
	L["Reset Entry"] = "Restablecer entrada"
	L["Reset to Defaults"] = "Restablecer valores por defecto"
	--[[Translation missing --]]
	L["Right"] = "Right"
	--[[Translation missing --]]
	L["Right 2 HUD position"] = "Right 2 HUD position"
	--[[Translation missing --]]
	L["Right HUD position"] = "Right HUD position"
	L["Right-click for more options"] = "Clic derecho para más opciones"
	L["Rotate"] = "Rotación"
	L["Rotate In"] = "Rotar"
	L["Rotate Out"] = "Rotar"
	L["Rotate Text"] = "Rotar Texto"
	L["Rotation"] = "Rotación"
	--[[Translation missing --]]
	L["Rotation Mode"] = "Rotation Mode"
	--[[Translation missing --]]
	L["Row Space"] = "Row Space"
	--[[Translation missing --]]
	L["Row Width"] = "Row Width"
	--[[Translation missing --]]
	L["Rows"] = "Rows"
	--[[Translation missing --]]
	L["Run on..."] = "Run on..."
	L["Same"] = "Igual"
	--[[Translation missing --]]
	L["Same texture as Foreground"] = "Same texture as Foreground"
	--[[Translation missing --]]
	L["Saved Data"] = "Saved Data"
	--[[Translation missing --]]
	L["Scale"] = "Scale"
	--[[Translation missing --]]
	L["Select Talent"] = "Select Talent"
	L["Select the auras you always want to be listed first"] = "Selecciona las auras que quieres que siempre sean listadas primero"
	--[[Translation missing --]]
	L["Selected Frame"] = "Selected Frame"
	L["Send To"] = "Envar A"
	--[[Translation missing --]]
	L["Separator Text"] = "Separator Text"
	--[[Translation missing --]]
	L["Separator text"] = "Separator text"
	--[[Translation missing --]]
	L["Set Parent to Anchor"] = "Set Parent to Anchor"
	--[[Translation missing --]]
	L["Set Thumbnail Icon"] = "Set Thumbnail Icon"
	--[[Translation missing --]]
	L["Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."] = "Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."
	--[[Translation missing --]]
	L["Settings"] = "Settings"
	--[[Translation missing --]]
	L["Shadow Color"] = "Shadow Color"
	--[[Translation missing --]]
	L["Shadow X Offset"] = "Shadow X Offset"
	--[[Translation missing --]]
	L["Shadow Y Offset"] = "Shadow Y Offset"
	--[[Translation missing --]]
	L["Shift-click to create chat link"] = "Shift-click to create chat link"
	--[[Translation missing --]]
	L["Show \"Edge\""] = "Show \"Edge\""
	--[[Translation missing --]]
	L["Show \"Swipe\""] = "Show \"Swipe\""
	--[[Translation missing --]]
	L["Show and Clone Settings"] = "Show and Clone Settings"
	--[[Translation missing --]]
	L["Show Border"] = "Show Border"
	--[[Translation missing --]]
	L["Show Debug Logs"] = "Show Debug Logs"
	--[[Translation missing --]]
	L["Show Glow"] = "Show Glow"
	--[[Translation missing --]]
	L["Show Icon"] = "Show Icon"
	--[[Translation missing --]]
	L["Show If Unit Does Not Exist"] = "Show If Unit Does Not Exist"
	--[[Translation missing --]]
	L["Show Matches for"] = "Show Matches for"
	--[[Translation missing --]]
	L["Show Matches for Units"] = "Show Matches for Units"
	--[[Translation missing --]]
	L["Show Model"] = "Show Model"
	--[[Translation missing --]]
	L["Show model of unit "] = "Show model of unit "
	--[[Translation missing --]]
	L["Show On"] = "Show On"
	--[[Translation missing --]]
	L["Show Spark"] = "Show Spark"
	--[[Translation missing --]]
	L["Show Text"] = "Show Text"
	--[[Translation missing --]]
	L["Show this group's children"] = "Show this group's children"
	--[[Translation missing --]]
	L["Show Tick"] = "Show Tick"
	L["Shows a 3D model from the game files"] = "Muestra un modelo 3D directamente de los ficheros de WoW"
	--[[Translation missing --]]
	L["Shows a border"] = "Shows a border"
	L["Shows a custom texture"] = "Muestra una textura"
	--[[Translation missing --]]
	L["Shows a glow"] = "Shows a glow"
	--[[Translation missing --]]
	L["Shows a model"] = "Shows a model"
	L["Shows a progress bar with name, timer, and icon"] = "Barra de progreso con nombre, temporizador e icono"
	L["Shows a spell icon with an optional cooldown overlay"] = "Muestra un icono de hechizo con una superposición opcional del cooldown"
	--[[Translation missing --]]
	L["Shows a stop motion texture"] = "Shows a stop motion texture"
	L["Shows a texture that changes based on duration"] = "Muestra una textura que cambia con el tiempo"
	L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "Muestra una o varias líneas de texto, que pueden incluir información dinámica como el progreso o las acumulaciones."
	--[[Translation missing --]]
	L["Simple"] = "Simple"
	L["Size"] = "Tamaño"
	--[[Translation missing --]]
	L["Slant Amount"] = "Slant Amount"
	--[[Translation missing --]]
	L["Slant Mode"] = "Slant Mode"
	--[[Translation missing --]]
	L["Slanted"] = "Slanted"
	L["Slide"] = "Arrastrar"
	L["Slide In"] = "Arrastrar Dentro"
	L["Slide Out"] = "Arrastrar"
	--[[Translation missing --]]
	L["Slider Step Size"] = "Slider Step Size"
	--[[Translation missing --]]
	L["Small Icon"] = "Small Icon"
	--[[Translation missing --]]
	L["Smooth Progress"] = "Smooth Progress"
	--[[Translation missing --]]
	L["Snippets"] = "Snippets"
	--[[Translation missing --]]
	L["Soft Max"] = "Soft Max"
	--[[Translation missing --]]
	L["Soft Min"] = "Soft Min"
	L["Sort"] = "Ordenar"
	L["Sound"] = "Sonido"
	L["Sound Channel"] = "Canal de Sonido"
	L["Sound File Path"] = "Ruta al Fichero de Sonido"
	--[[Translation missing --]]
	L["Sound Kit ID"] = "Sound Kit ID"
	--[[Translation missing --]]
	L["Source"] = "Source"
	L["Space"] = "Espacio"
	L["Space Horizontally"] = "Espacio Horizontal"
	L["Space Vertically"] = "Espacio Vertical"
	--[[Translation missing --]]
	L["Spark"] = "Spark"
	--[[Translation missing --]]
	L["Spark Settings"] = "Spark Settings"
	--[[Translation missing --]]
	L["Spark Texture"] = "Spark Texture"
	--[[Translation missing --]]
	L["Specialization"] = "Specialization"
	--[[Translation missing --]]
	L["Specific Unit"] = "Specific Unit"
	L["Spell ID"] = "ID de Hechizo"
	--[[Translation missing --]]
	L["Spell Selection Filters"] = "Spell Selection Filters"
	L["Stack Count"] = "Contar Acumulaciones"
	L["Stack Info"] = "Información de Acumulaciones"
	L["Stagger"] = "Tambaleo"
	--[[Translation missing --]]
	L["Star"] = "Star"
	L["Start"] = "Empezar"
	--[[Translation missing --]]
	L["Start Angle"] = "Start Angle"
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
	--[[Translation missing --]]
	L["Stop Sound"] = "Stop Sound"
	--[[Translation missing --]]
	L["Sub Elements"] = "Sub Elements"
	--[[Translation missing --]]
	L["Sub Option %i"] = "Sub Option %i"
	--[[Translation missing --]]
	L["Swipe Overlay Settings"] = "Swipe Overlay Settings"
	--[[Translation missing --]]
	L["Templates could not be loaded, the addon is %s"] = "Templates could not be loaded, the addon is %s"
	L["Temporary Group"] = "Grupo Temporal"
	L["Text"] = "Texto"
	--[[Translation missing --]]
	L["Text %s"] = "Text %s"
	L["Text Color"] = "Color del Texto"
	--[[Translation missing --]]
	L["Text Settings"] = "Text Settings"
	L["Texture"] = "Textura"
	L["Texture Info"] = "Información de Textura"
	--[[Translation missing --]]
	L["Texture Picker"] = "Texture Picker"
	--[[Translation missing --]]
	L["Texture Rotation"] = "Texture Rotation"
	--[[Translation missing --]]
	L["Texture Settings"] = "Texture Settings"
	--[[Translation missing --]]
	L["Texture Wrap"] = "Texture Wrap"
	--[[Translation missing --]]
	L["Texture X Offset"] = "Texture X Offset"
	--[[Translation missing --]]
	L["Texture Y Offset"] = "Texture Y Offset"
	--[[Translation missing --]]
	L["The addon ElvUI is enabled. It might add cooldown numbers to the swipe. You can configure these in the ElvUI settings"] = "The addon ElvUI is enabled. It might add cooldown numbers to the swipe. You can configure these in the ElvUI settings"
	--[[Translation missing --]]
	L["The addon OmniCC is enabled. It might add cooldown numbers to the swipe. You can configure these in the OmniCC settings"] = "The addon OmniCC is enabled. It might add cooldown numbers to the swipe. You can configure these in the OmniCC settings"
	L["The duration of the animation in seconds."] = "Duración de la animación (en segundos)."
	--[[Translation missing --]]
	L["The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."] = "The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."
	L["The type of trigger"] = "El tipo de activador"
	--[[Translation missing --]]
	L["Then "] = "Then "
	--[[Translation missing --]]
	L["Thickness"] = "Thickness"
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
	--[[Translation missing --]]
	L["This display is currently loaded"] = "This display is currently loaded"
	--[[Translation missing --]]
	L["This display is not currently loaded"] = "This display is not currently loaded"
	--[[Translation missing --]]
	L["This enables the collection of debug logs. Custom code can add debug information to the log through the function DebugPrint."] = "This enables the collection of debug logs. Custom code can add debug information to the log through the function DebugPrint."
	--[[Translation missing --]]
	L["This is a modified version of your aura, |cff9900FF%s.|r"] = "This is a modified version of your aura, |cff9900FF%s.|r"
	--[[Translation missing --]]
	L["This is a modified version of your group: |cff9900FF%s|r"] = "This is a modified version of your group: |cff9900FF%s|r"
	--[[Translation missing --]]
	L["This region of type \"%s\" is not supported."] = "This region of type \"%s\" is not supported."
	--[[Translation missing --]]
	L["This setting controls what widget is generated in user mode."] = "This setting controls what widget is generated in user mode."
	--[[Translation missing --]]
	L["Tick %s"] = "Tick %s"
	--[[Translation missing --]]
	L["Tick Mode"] = "Tick Mode"
	--[[Translation missing --]]
	L["Tick Placement"] = "Tick Placement"
	L["Time in"] = "Contar En"
	L["Tiny Icon"] = "Icono miniatura"
	L["To Frame's"] = "Al macro"
	--[[Translation missing --]]
	L["To Group's"] = "To Group's"
	L["To Personal Ressource Display's"] = "A los recursos del aura personal"
	L["To Screen's"] = "A la pantalla"
	L["Toggle the visibility of all loaded displays"] = "Alterar la visibilidad de todas las auras cargadas"
	L["Toggle the visibility of all non-loaded displays"] = "Alterar la visibilidad de todas las auras no cargadas"
	L["Toggle the visibility of this display"] = "Alterar la visibilidad de esta aura"
	L["Tooltip"] = "Descriptión emergente"
	--[[Translation missing --]]
	L["Tooltip Content"] = "Tooltip Content"
	L["Tooltip on Mouseover"] = "Descripción emergente al pasar el ratón"
	--[[Translation missing --]]
	L["Tooltip Pattern Match"] = "Tooltip Pattern Match"
	--[[Translation missing --]]
	L["Tooltip Text"] = "Tooltip Text"
	--[[Translation missing --]]
	L["Tooltip Value"] = "Tooltip Value"
	--[[Translation missing --]]
	L["Tooltip Value #"] = "Tooltip Value #"
	--[[Translation missing --]]
	L["Top"] = "Top"
	L["Top HUD position"] = "Posición superior de la visualización (HUD)"
	--[[Translation missing --]]
	L["Top Left"] = "Top Left"
	--[[Translation missing --]]
	L["Top Right"] = "Top Right"
	--[[Translation missing --]]
	L["Total Angle"] = "Total Angle"
	--[[Translation missing --]]
	L["Total Time"] = "Total Time"
	L["Trigger"] = "Activador"
	L["Trigger %d"] = "Activador %d"
	L["Trigger %s"] = "Activador %s"
	L["Trigger Combination"] = "Combinación de activadores"
	--[[Translation missing --]]
	L["True"] = "True"
	L["Type"] = "Tipo"
	--[[Translation missing --]]
	L["Type 'select' for '%s' requires a values member'"] = "Type 'select' for '%s' requires a values member'"
	--[[Translation missing --]]
	L["Ungroup"] = "Ungroup"
	--[[Translation missing --]]
	L["Unit"] = "Unit"
	--[[Translation missing --]]
	L["Unit %s is not a valid unit for RegisterUnitEvent"] = "Unit %s is not a valid unit for RegisterUnitEvent"
	--[[Translation missing --]]
	L["Unit Count"] = "Unit Count"
	--[[Translation missing --]]
	L["Unit Frame"] = "Unit Frame"
	--[[Translation missing --]]
	L["Unit Frames"] = "Unit Frames"
	--[[Translation missing --]]
	L["Unknown property '%s' found in '%s'"] = "Unknown property '%s' found in '%s'"
	L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "Ignorar animaciones de inicio y final: la animación principal se repetirá hasta que el aura se oculte."
	--[[Translation missing --]]
	L["Update"] = "Update"
	--[[Translation missing --]]
	L["Update Auras"] = "Update Auras"
	L["Update Custom Text On..."] = "Actualizar Texto Personalizado En..."
	--[[Translation missing --]]
	L["URL"] = "URL"
	--[[Translation missing --]]
	L["Url: %s"] = "Url: %s"
	--[[Translation missing --]]
	L["Use Custom Color"] = "Use Custom Color"
	--[[Translation missing --]]
	L["Use Display Info Id"] = "Use Display Info Id"
	--[[Translation missing --]]
	L["Use SetTransform"] = "Use SetTransform"
	--[[Translation missing --]]
	L["Use Texture"] = "Use Texture"
	--[[Translation missing --]]
	L["Used in Auras:"] = "Used in Auras:"
	--[[Translation missing --]]
	L["Used in auras:"] = "Used in auras:"
	--[[Translation missing --]]
	L["Uses Texture Coordinates to rotate the texture."] = "Uses Texture Coordinates to rotate the texture."
	--[[Translation missing --]]
	L["Uses UnitIsVisible() to check if in range. This is polled every second."] = "Uses UnitIsVisible() to check if in range. This is polled every second."
	--[[Translation missing --]]
	L["Value %i"] = "Value %i"
	--[[Translation missing --]]
	L["Values are in normalized rgba format."] = "Values are in normalized rgba format."
	--[[Translation missing --]]
	L["Values:"] = "Values:"
	--[[Translation missing --]]
	L["Version: "] = "Version: "
	--[[Translation missing --]]
	L["Version: %s"] = "Version: %s"
	L["Vertical Align"] = "Alineado Vertical"
	--[[Translation missing --]]
	L["Vertical Bar"] = "Vertical Bar"
	--[[Translation missing --]]
	L["View"] = "View"
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
	L["Width"] = "Ancho"
	--[[Translation missing --]]
	L["wrapping"] = "wrapping"
	L["X Offset"] = "X Posicion"
	--[[Translation missing --]]
	L["X Rotation"] = "X Rotation"
	L["X Scale"] = "X Escala"
	--[[Translation missing --]]
	L["X-Offset"] = "X-Offset"
	--[[Translation missing --]]
	L["x-Offset"] = "x-Offset"
	L["Y Offset"] = "Y Posicion"
	--[[Translation missing --]]
	L["Y Rotation"] = "Y Rotation"
	L["Y Scale"] = "Y Escala"
	--[[Translation missing --]]
	L["Yellow Rune"] = "Yellow Rune"
	--[[Translation missing --]]
	L["Yes"] = "Yes"
	--[[Translation missing --]]
	L["y-Offset"] = "y-Offset"
	--[[Translation missing --]]
	L["Y-Offset"] = "Y-Offset"
	--[[Translation missing --]]
	L["You already have this group/aura. Importing will create a duplicate."] = "You already have this group/aura. Importing will create a duplicate."
	--[[Translation missing --]]
	L["You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"] = "You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"
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
	L["Z Offset"] = "Desplazamiento en Z"
	--[[Translation missing --]]
	L["Z Rotation"] = "Z Rotation"
	L["Zoom"] = "Ampliación"
	L["Zoom In"] = "Acercar"
	L["Zoom Out"] = "Alejar"

