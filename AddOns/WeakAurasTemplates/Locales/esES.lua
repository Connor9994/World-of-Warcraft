if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "esES" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["Abilities"] = "Habilidades"
	L["Add Triggers"] = "Añadir activadores"
	L["Always Active"] = "Siempre activo"
	L["Always Show"] = "Mostrar siempre"
	L["Always show the aura, highlight it if debuffed."] = "Mostrar siempre el aura, resaltarla si hay perjuicios."
	L["Always show the aura, turns grey if on cooldown."] = "Siempre muestra el aura, se vuelve gris si está en tiempo de reutilización."
	L["Always show the aura, turns grey if the debuff not active."] = "Mostrar siempre el aura, se vuelve gris si el perjuicio no está activo."
	L["Always shows highlights if enchant missing."] = "Siempre se muestra resplandeciente si no hay encantamiento."
	L["Always shows the aura, grey if buff not active."] = "Muestra siempre el aura, se vuelve gris si el beneficio no está activo."
	L["Always shows the aura, highlight it if buffed."] = "Muestra siempre el aura, la resalta si el beneficio está activo."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Muestra siempre el aura, la resalta si está activa, se vuelve azul si no hay suficientes recursos."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Siempre muestra el aura, resalta mientras el proc está activo, azul con recursos insuficientes."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Muestra siempre el aura, resaltada mientras el proc está activo, azul cuando no se puede usar."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Muestra siempre el aura, resalta mientras el proc está activo, se vuelve rojo cuando está fuera de alcance, azul en caso de recursos insuficientes."
	L["Always shows the aura, turns blue on insufficient resources."] = "Siempre muestra el aura, se vuelve azul con recursos insuficientes."
	L["Always shows the aura, turns blue when not usable."] = "Siempre muestra el aura, se vuelve azul cuando no se puede utilizar."
	L["Always shows the aura, turns grey if on cooldown."] = "Siempre muestra el aura, se vuelve gris si está en cooldown."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Muestra siempre el aura, se vuelve gris si la habilidad no es utilizable y roja cuando está fuera de alcance."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Muestra siempre el aura, se vuelve gris si la habilidad no es utilizable."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Siempre muestra el aura, se vuelve roja cuando está fuera de alcance, azul en caso de recursos insuficientes."
	L["Always shows the aura, turns red when out of range."] = "Siempre muestra el aura, se vuelve roja cuando está fuera de alcance."
	L["Always shows the aura."] = "Siempre muestra el aura."
	L["Back"] = "Volver"
	--[[Translation missing --]]
	L["Basic Show On Cooldown"] = "Basic Show On Cooldown"
	--[[Translation missing --]]
	L["Basic Show On Ready"] = "Basic Show On Ready"
	L["Bloodlust/Heroism"] = "Ansia de sangre/Heroísmo"
	L["buff"] = "beneficio"
	L["Buffs"] = "Beneficios"
	L["Cancel"] = "Cancelar"
	L["Cast"] = "Castear"
	L["Charge and Buff Tracking"] = "Seguimiento de cargas y beneficios"
	L["Charge and Debuff Tracking"] = "Seguimiento de cargas y perjuicios"
	L["Charge and Duration Tracking"] = "Seguimiento de cargas y duración"
	L["Charge Tracking"] = "Seguimiento de cargas"
	L["cooldown"] = "cooldown"
	L["Cooldown Tracking"] = "Seguimiento de cooldown"
	L["Cooldowns"] = "Cooldowns"
	L["Create Auras"] = "Crear auras"
	L["debuff"] = "perjuicio"
	L["Debuffs"] = "Perjuicios"
	L["General"] = "General"
	L["Health"] = "Salud"
	L["Highlight while action is queued."] = "Resaltar mientras la acción está en cola."
	L["Highlight while active, red when out of range."] = "Resaltar mientras está activa, rojo cuando está fuera de alcance."
	L["Highlight while active."] = "Resaltar mientras está activa."
	L["Highlight while buffed, red when out of range."] = "Resaltar cuando hay beneficio activo, rojo cuando esté fuera de rango."
	L["Highlight while buffed."] = "Resaltar cuando hay beneficio activo."
	L["Highlight while debuffed, red when out of range."] = "Resaltar cuando hay perjuicio activo, rojo cuando esté fuera de rango."
	L["Highlight while debuffed."] = "Resaltar cuando hay perjuicio activo."
	L["Highlight while spell is active."] = "Resaltar mientras el hechizo está activo."
	L["Hold CTRL to create multiple auras at once"] = "Mantén pulsado CTRL para crear varias auras a la vez"
	L["Keeps existing triggers intact"] = "Mantiene intactos los activadores existentes"
	--[[Translation missing --]]
	L["Max 3"] = "Max 3"
	--[[Translation missing --]]
	L["Max 4"] = "Max 4"
	L["Next"] = "Siguiente"
	L["Only show the aura if the target has the debuff."] = "Mostrar el aura solo si el objetivo tiene el perjuicio activo."
	L["Only show the aura when the item is on cooldown."] = "Mostrar el aura solo cuando el objeto está en reutilización."
	L["Only shows if the weapon is enchanted."] = "Mostrar solo si el arma está encantada."
	L["Only shows if the weapon is not enchanted."] = "Mostrar solo si el arma no está encantada."
	L["Only shows the aura if the target has the buff."] = "Muestra el aura solo si el objetivo tiene el beneficio activo."
	L["Only shows the aura when the ability is on cooldown."] = "Mostrar el aura solo cuando la habilidad está en reutilización."
	L["Only shows the aura when the ability is ready to use."] = "Mostrar el aura solo cuando la habilidad está lista para usar."
	--[[Translation missing --]]
	L["Other cooldown"] = "Other cooldown"
	L["Pet alive"] = "Mascota viva"
	L["Pet Behavior"] = "Comportamiento de mascota"
	--[[Translation missing --]]
	L["PvP Talents"] = "PvP Talents"
	L["Replace all existing triggers"] = "Sustituir todos los activadores existentes"
	L["Replace Triggers"] = "Sustituir activadores"
	L["Resources"] = "Recursos"
	--[[Translation missing --]]
	L["Resources and Shapeshift Form"] = "Resources and Shapeshift Form"
	--[[Translation missing --]]
	L["Rogue cooldown"] = "Rogue cooldown"
	--[[Translation missing --]]
	L["Runes"] = "Runes"
	--[[Translation missing --]]
	L["Shapeshift Form"] = "Shapeshift Form"
	--[[Translation missing --]]
	L["Show Always, Glow on Missing"] = "Show Always, Glow on Missing"
	--[[Translation missing --]]
	L["Show Charges and Check Usable"] = "Show Charges and Check Usable"
	--[[Translation missing --]]
	L["Show Charges with Proc Tracking"] = "Show Charges with Proc Tracking"
	--[[Translation missing --]]
	L["Show Charges with Range Tracking"] = "Show Charges with Range Tracking"
	--[[Translation missing --]]
	L["Show Charges with Usable Check"] = "Show Charges with Usable Check"
	--[[Translation missing --]]
	L["Show Cooldown and Action Queued"] = "Show Cooldown and Action Queued"
	L["Show Cooldown and Buff"] = "Mostrar tiempo de reutilización y beneficio"
	L["Show Cooldown and Buff and Check for Target"] = "Mostrar Tiempo de reutilización, Beneficio y Comprobar objetivo"
	L["Show Cooldown and Buff and Check Usable"] = "Mostrar Tiempo de reutilización, Beneficio y Comprobar utilizable"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target"] = "Show Cooldown and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Show Cooldown and Check for Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable"] = "Show Cooldown and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable & Target"] = "Show Cooldown and Check Usable & Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Show Cooldown and Check Usable, Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Show Cooldown and Check Usable, Target & Proc Tracking"
	L["Show Cooldown and Debuff"] = "Mostrar Tiempo de reutilización y Perjuicio"
	L["Show Cooldown and Debuff and Check for Target"] = "Mostrar Tiempo de reutilización, Perjuicio y Comprobar objetivo"
	--[[Translation missing --]]
	L["Show Cooldown and Duration"] = "Show Cooldown and Duration"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check for Target"] = "Show Cooldown and Duration and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check Usable"] = "Show Cooldown and Duration and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Proc Tracking"] = "Show Cooldown and Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Totem Information"] = "Show Cooldown and Totem Information"
	--[[Translation missing --]]
	L["Show if Enchant Missing"] = "Show if Enchant Missing"
	--[[Translation missing --]]
	L["Show on Ready"] = "Show on Ready"
	L["Show Only if Buffed"] = "Mostrar solo si hay Beneficio activo"
	L["Show Only if Debuffed"] = "Mostrar solo si hay Perjuicio activo"
	--[[Translation missing --]]
	L["Show Only if Enchanted"] = "Show Only if Enchanted"
	--[[Translation missing --]]
	L["Show Only if on Cooldown"] = "Show Only if on Cooldown"
	--[[Translation missing --]]
	L["Show Totem and Charge Information"] = "Show Totem and Charge Information"
	--[[Translation missing --]]
	L["Stance"] = "Stance"
	--[[Translation missing --]]
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el beneficio, resaltar cuando el beneficio está activo, azul si no hay recursos suficientes."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el perjuicio, resaltar cuando el perjuicio está activo, azul si no hay recursos suficientes."
	--[[Translation missing --]]
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Unknown Item"] = "Unknown Item"
	--[[Translation missing --]]
	L["Unknown Spell"] = "Unknown Spell"
	--[[Translation missing --]]
	L["Warrior cooldown"] = "Warrior cooldown"

