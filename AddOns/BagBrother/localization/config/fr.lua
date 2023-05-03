--[[
	French Localization
--]]

local CONFIG = ...
local L = LibStub('AceLocale-3.0'):NewLocale(CONFIG, 'frFR')
if not L then return end

-- global
L.ConfirmGlobals = 'Êtes-vous sûr de vouloir désactiver les paramètres spécifiques à ce personnage ? Tous les paramètres spécifiques seront perdus.'

-- general
L.GeneralOptionsDesc = 'Configuration des options générales de %s'
L.Locked = 'Bloquer la position des fenêtres'
L.TipCount = 'Activer l\'info-bulle du compteur d\'objets'
L.CountGuild = 'Inclure les banques de guilde'
L.FlashFind = 'Activer résultat éclair'
L.EmptySlots = 'Afficher un fond sur les emplacements vides'
L.DisplayBlizzard = 'Afficher les cadres de Blizzard pour les sacs désactivés'

-- frame
L.FrameOptions = 'Options des fenêtres'
L.FrameOptionsDesc = 'Configuration des options spécifiques à une fenêtre de %s'
L.Frame = 'Fenêtre'
L.Enabled = 'Activer'
L.CharacterSpecific = 'Paramètres spécifiques au personnage'
L.ActPanel = 'Se comporter comme un panneau standard'
L.ActPanelTip = [[
Si activé, ce panneau se positionnera
automatiquement comme les panneaux standards
le font, tels que le |cffffffffGrimoire|r ou la |cffffffffRecherche de groupe|r,
et ne pourra pas être déplacé.]]

L.BagToggle = 'Fenêtre du sac'
L.Money = 'Affichage des revenus'
L.Broker = 'Activer le DataBroker'
L.Sort = 'Bouton de tri'
L.Search = 'Champ de recherche'
L.Options = 'Affichage des options'
L.ExclusiveReagent = 'Séparer la banque des composants'

L.Appearance = 'Apparence'
L.Layer = 'Couche'
L.BagBreak = 'Séparation entre les sacs'
L.ReverseBags = 'Inverser ordre des sacs'
L.ReverseSlots = 'Inverser ordre de tri'

L.Color = 'Couleur de la fenêtre'
L.BorderColor = 'Couleur de bordure'

L.Strata = 'Couche'
L.Columns = 'Colonnes'
L.Scale = 'Echelle'
L.ItemScale = 'Échelle des objets'
L.Spacing = 'Espacement'
L.Alpha = 'Opacité'

-- auto display
L.DisplayOptions = 'Affichage automatique'
L.DisplayOptionsDesc = 'Options de l\'affichage automatique'
L.DisplayInventory = 'Afficher votre inventaire'
L.CloseInventory = 'Fermer votre inventaire'

L.Banker = 'quand vous visitez la banque'
L.Auctioneer = 'quand vous visitez l\'hôtel des ventes'
L.TradePartner = 'quand vous parlez à un commerçant'
L.Crafting = 'quand vous craftez'
L.MailInfo = 'quand vous relevez votre courrier'
L.GuildBanker = 'quand vous visitez votre banque de guilde'
L.PlayerFrame = 'quand vous ouvrez la fenêtre de votre personnage'
L.Socketing = 'quand vous sertissez vos objets'
L.Merchant = 'quand vous quittez un marchand'

L.Combat = 'quand vous entrez en combat'
L.Vehicle = 'quand vous montez dans un véhicule'
L.MapFrame = 'quand vous ouvrez la carte du monde'

-- colors
L.ColorOptions = 'Options de couleur'
L.ColorOptionsDesc = 'Options de colorisation des emplacements'
L.GlowQuality = 'Surligner les objets par qualité'
L.GlowNew = 'Surligner les nouveaux objets'
L.GlowQuest = 'Surligner les objets de quête'
L.GlowUnusable = 'Surligner les objets inutiles'
L.GlowSets = 'Surligner les objets d\'ensemble'
L.ColorSlots = 'Colorier les emplacements vides par type de sac'

L.NormalColor = 'Normaux'
L.LeatherColor = 'Sac Travail du cuir'
L.InscribeColor = 'Sac Calligraphie'
L.HerbColor = 'Sac Herboristerie'
L.EnchantColor = 'Sac Enchantement'
L.EngineerColor = 'Sac Ingénierie'
L.GemColor = 'Sac de Gemmes'
L.MineColor = 'Sac de Minage'
L.TackleColor = 'Sac de Pêche'
L.RefrigeColor = 'Sac de Cuisine '
L.ReagentColor = 'Banque des composants'
L.GlowAlpha = 'Contour lumineux des objets'

-- rulesets
L.RuleOptions = 'Item Rulesets'
L.RuleOptionsDesc = 'Ces paramètres vous permettent de choisir les item rulesets à afficher et dans quel ordre.'
