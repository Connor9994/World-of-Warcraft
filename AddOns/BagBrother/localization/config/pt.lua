--[[
	Brasilian Portuguese Localization
--]]

local CONFIG = ...
local L = LibStub('AceLocale-3.0'):NewLocale(CONFIG, 'ptBR')
if not L then return end

-- general
L.GeneralOptionsDesc = 'Funcionalidades gerais do %s.'
L.Locked = 'Bloquear Posição das Janelas'
L.TipCount = 'Contar Stock na Descrição de Itens'
L.CountGuild = 'Incluir Bancos de Guildas'
L.FlashFind = 'Flash Find'
L.DisplayBlizzard = 'Mostrar Janelas da Blizzard para Sacos Desligados'
L.ConfirmGlobals = 'Tens a certeza que queres desligar a configuração individual desta personagem? Todas as diferenças individuais serão perdidas.'
L.CharacterSpecific = 'Configuração Individual por Personagem'

-- frame
L.FrameOptions = 'Janelas'
L.FrameOptionsDesc = 'Configuração específica das janela do %s'
L.Frame = 'Janela'
L.Enabled = 'Ativar'
L.CharacterSpecific = 'Preferências Específicas por Personagem'

L.BagToggle = 'Lista de Sacos'
L.Broker = 'DataBroker'
L.Currency = 'Moedas'
L.ExclusiveReagent = 'Banco de Reagentes Separado'
L.Money = 'Dinheiro'
L.Sort = 'Botão de Ordenação'
L.Search = 'Botão da Pesquisa'
L.Options = 'Botão da Configração'
L.LeftTabs = 'Separadores à Esquerda'
L.LeftTabsTip = [[
If enabled, the side tabs will be
displayed on the left side of the panel.]]

L.Appearance = 'Aparência'
L.Layer = 'Camada'
L.BagBreak = 'Quebras entre Sacos'
L.ReverseBags = 'Inverter Sacos'
L.ReverseSlots = 'Inverter Itens'

L.Color = 'Cor de Fundo'
L.BorderColor = 'Cor do Bordo'

L.Strata = 'Camada'
L.Columns = 'Colunas'
L.Scale = 'Escala da Janela'
L.ItemScale = 'Escala dos Itens'
L.Spacing = 'Espaçamento'
L.Alpha = 'Transparência'

-- auto display
L.DisplayOptions = 'Exibição Automática'
L.DisplayOptionsDesc = 'Estas preferências controlam quando a mochila abre ou fecha durante eventos do jogo.'
L.DisplayInventory = 'Mostrar Mochila'
L.CloseInventory = 'Fechar Mochila'

L.Auctioneer = 'Enquando Visita um Leiloeiro'
L.Banker = 'Enquando Visita o Banco'
L.Combat = 'Quando Entrar em Combate'
L.Crafting = 'Enquando Usa a Janela de Profissão'
L.GuildBanker = 'Enquando Visita o Banco da Guilda'
L.VoidStorageBanker = 'Enquando Visita o Cofre Etéreo'
L.MailInfo = 'Enquando Visita os Correios'
L.MapFrame = 'Quando Abrir Mapa Mundo'
L.Merchant = 'Enquando Visita um Vendedor'
L.PlayerFrame = 'Enquando Usa a Janela da Personagem'
L.ScrappingMachine = 'Enquanto Recicla Equipamento'
L.Socketing = 'Enquanto Engastar Equipamento'
L.TradePartner = 'Enquanto Trocar Itens'
L.Vehicle = 'Quando Entrar num Veículo'

-- colors
L.ColorOptions = 'Cores'
L.ColorOptionsDesc = 'Estas preferências permitem controlar a aparência dos espaços dos itens para melhor visiblidade.'
L.GlowQuality = 'Realçar por Qualidade'
L.GlowQuest = 'Realçar Itens de Missão'
L.GlowUnusable = 'Realçar Inutilizáveis'
L.GlowSets = 'Realçar Conjuntos'
L.GlowNew = 'Realçar Itens Novos'
L.GlowPoor = 'Realçar Baixa Qualidade'
L.GlowAlpha = 'Intensidade de Brilho'

L.EmptySlots = 'Mostrar Fundo em Espaços Vazios'
L.ColorSlots = 'Colorir Fundos por Tipo de Saco'
L.NormalColor = 'Espaços Normais'
L.LeatherColor = 'Bolsas de Couraria'
L.InscribeColor = 'Bolsas de Escrivania'
L.HerbColor = 'Bolsas de Plantas'
L.EnchantColor = 'Bolsas de Encantamento'
L.EngineerColor = 'Mochilas de Engenharia'
L.GemColor = 'Bolsas de Gemas'
L.MineColor = 'Bolsas de Mineração'
L.TackleColor = 'Caixas de Pesca'
L.FridgeColor = 'Bolsas de Cozinhar'
L.ReagentColor = 'Banco de Reagentes'
