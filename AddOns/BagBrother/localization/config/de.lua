--[[
	German Localization
		Credits/Blame: Phanx
--]]

local CONFIG = ...
local L = LibStub('AceLocale-3.0'):NewLocale(CONFIG, 'deDE')
if not L then return end

-- general
L.GeneralOptionsDesc = 'Allgemeine Einstellungen für %s anpassen'
L.Locked = 'Fensterpositionen sperren'
L.TipCount = 'Ermögliche tooltip item count'
L.FlashFind = 'Ermögliche Blitzsuche'
L.EmptySlots = 'Zeige einen Hintergrund für leere Gegenstandslots'
L.DisplayBlizzard = 'Blizzard Fenster für die deaktivierten Taschen anzeigen'

-- frame
L.FrameOptions = 'Fenstereinstellungen'
L.FrameOptionsDesc = 'Einstellungen für ein bestimmtes %s Fenster anpassen'
L.Frame = 'Fenster'
L.Enabled = 'Aktiviert'
L.CharacterSpecific = 'Charakterspezifische Einstellungen'
L.ExclusiveReagent = 'Getrenntes Materiallager'

L.BagToggle = 'Taschenschaltflächen'
L.Money = 'Gold'
L.Broker = 'Databroker'
L.Sort = 'Sortierschaltfläche'
L.Search = 'Suchsschaltfläche'
L.Options = 'Optionenschaltfläche'

L.Appearance = 'Erscheinung'
L.Layer = 'Ebene'
L.BagBreak = 'Trennen der Taschen aktivieren'
L.ReverseBags = 'Taschen umkehren'
L.ReverseSlots = 'Slots umkehren'

L.Color = 'Farbe des Fensters'
L.BorderColor = 'Farbe des Fensterrands'

L.Strata = 'Ebene'
L.Columns = 'Spalten'
L.Scale = 'Skalierung'
L.ItemScale = 'Gegenstandsskalierung'
L.Spacing = 'Abstand'
L.Alpha = 'Transparenz'

-- auto display
L.DisplayOptions = 'Automatische Anzeige'
L.DisplayOptionsDesc = 'Einstellungen für das automatische öffnen der Fenster'
L.DisplayInventory = 'Inventar anzeigen...'
L.CloseInventory = 'Inventar schließen...'

L.Banker = 'beim Öffnen der Bank'
L.Auctioneer = 'beim Öffnen des Auktionshauses'
L.TradePartner = 'beim Handel von Gegenständen'
L.Crafting = 'beim Herstellen'
L.MailInfo = 'beim Abholen der Post'
L.GuildBanker = 'beim Öffnen der Gildenbank'
L.PlayerFrame = 'beim Öffnen des Spielerfensters'
L.Socketing = 'beim Gesockeln eines Gegenstands'
L.Combat = 'beim Kampfbeginn'
L.Vehicle = 'beim Eintritt in ein Fahrzeugs'
L.Merchant = 'beim Verlassen des Handlers'

-- colors
L.ColorOptions = 'Farbeinstellungen'
L.ColorOptionsDesc = 'Einstellungen für das Einfärben der Gegenstandslots'
L.GlowQuality = 'Gegenstände nach der Seltenheit hervorheben'
L.GlowNew = 'Neue Gegenstände hervorheben'
L.GlowQuest = 'Questgegenstände hervorheben'
L.GlowUnusable = 'Unbrauchbare Gegenstände hervorheben'
L.GlowSets = 'Ausrüstungsset-Gegenstände hervorheben'
L.ColorSlots = 'Leere Gegenstandslots nach der Taschen-Art einfärben'

L.NormalColor = 'Universaltasche'
L.LeatherColor = 'Lederertasche'
L.InscribeColor = 'Schreibertasche'
L.HerbColor = 'Kräutertasche'
L.EnchantColor = 'Verzauberertasche'
L.EngineerColor = 'Ingnieurstasche'
L.GemColor = 'Edelsteintasche'
L.MineColor = 'Bergbautasche'
L.TackleColor = 'Anglertasche'
L.RefrigeColor = 'Küchentasche'
L.ReagentColor = 'Materiallager'
L.GlowAlpha = 'Helligkeit der Gegenstandshervorhebung'
