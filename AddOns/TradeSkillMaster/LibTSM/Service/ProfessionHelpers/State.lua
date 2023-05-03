-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local State = TSM.Init("Service.ProfessionHelpers.State") ---@class Service.ProfessionHelpers.State
local Environment = TSM.Include("Environment")
local Event = TSM.Include("Util.Event")
local Delay = TSM.Include("Util.Delay")
local FSM = TSM.Include("Util.FSM")
local Log = TSM.Include("Util.Log")
local private = {
	fsm = nil,
	callbacks = {},
	isClosed = true,
	craftOpen = nil,
	tradeSkillOpen = nil,
	professionName = nil,
	skillId = nil,
	readyTimer = nil,
}
local WAIT_FRAME_DELAY = 5



-- ============================================================================
-- Module Loading
-- ============================================================================

State:OnModuleLoad(function()
	private.CreateFSM()
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function State.RegisterCallback(callback)
	tinsert(private.callbacks, callback)
end

function State.IsClosed()
	return private.isClosed
end

function State.IsClassicCrafting()
	return Environment.IsVanillaClassic() and private.craftOpen
end

function State.SetClassicCraftingOpen(open)
	assert(not Environment.IsRetail())
	private.craftOpen = open
end

function State.IsDataStable()
	return not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) or (C_TradeSkillUI.IsTradeSkillReady() and not C_TradeSkillUI.IsDataSourceChanging())
end

function State.GetCurrentProfession()
	return private.professionName, private.skillId
end

function State.GetSkillLine()
	return private.GetSkillLine()
end

function State.IsNPC()
	return Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) and C_TradeSkillUI.IsNPCCrafting()
end

function State.IsLinked()
	if Environment.IsVanillaClassic() then
		return nil, nil
	elseif Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		return C_TradeSkillUI.IsTradeSkillLinked()
	else
		return IsTradeSkillLinked()
	end
end

function State.IsGuild()
	return Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) and C_TradeSkillUI.IsTradeSkillGuild()
end

function State.GetLink()
	return Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) and C_TradeSkillUI.GetTradeSkillListLink() or nil
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.CreateFSM()
	private.readyTimer = Delay.CreateTimer("PROFESSION_STATE_READY", function()
		private.readyTimer:RunForFrames(WAIT_FRAME_DELAY)
		private.fsm:ProcessEvent("EV_FRAME_DELAY")
	end)
	if not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) and not IsAddOnLoaded("Blizzard_CraftUI") then
		LoadAddOn("Blizzard_CraftUI")
	end
	Event.Register("TRADE_SKILL_SHOW", function()
		private.tradeSkillOpen = true
		private.fsm:ProcessEvent("EV_TRADE_SKILL_SHOW")
		private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGING")
		private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED")
	end)
	Event.Register("TRADE_SKILL_CLOSE", function()
		private.tradeSkillOpen = false
		if not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) and not private.craftOpen then
			private.fsm:ProcessEvent("EV_TRADE_SKILL_CLOSE")
		end
	end)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		Event.Register("GARRISON_TRADESKILL_NPC_CLOSED", function()
			private.fsm:ProcessEvent("EV_TRADE_SKILL_CLOSE")
		end)
		Event.Register("TRADE_SKILL_DATA_SOURCE_CHANGED", function()
			private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED")
		end)
		Event.Register("TRADE_SKILL_DATA_SOURCE_CHANGING", function()
			private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGING")
		end)
	else
		Event.Register("CRAFT_SHOW", function()
			private.craftOpen = true
			private.fsm:ProcessEvent("EV_TRADE_SKILL_SHOW")
			private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGING")
			private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED")
		end)
		Event.Register("CRAFT_CLOSE", function()
			private.craftOpen = false
			if not private.tradeSkillOpen then
				private.fsm:ProcessEvent("EV_TRADE_SKILL_CLOSE")
			end
		end)
		Event.Register("CRAFT_UPDATE", function()
			private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED")
		end)
	end
	private.fsm = FSM.New("PROFESSION_STATE")
		:AddState(FSM.NewState("ST_CLOSED")
			:SetOnEnter(function()
				private.isClosed = true
				private.RunCallbacks()
			end)
			:SetOnExit(function()
				private.isClosed = false
				private.RunCallbacks()
			end)
			:AddTransition("ST_WAITING_FOR_DATA")
			:AddEventTransition("EV_TRADE_SKILL_SHOW", "ST_WAITING_FOR_DATA")
		)
		:AddState(FSM.NewState("ST_WAITING_FOR_DATA")
			:AddTransition("ST_WAITING_FOR_READY")
			:AddTransition("ST_CLOSED")
			:AddEventTransition("EV_TRADE_SKILL_DATA_SOURCE_CHANGED", "ST_WAITING_FOR_READY")
			:AddEventTransition("EV_TRADE_SKILL_CLOSE", "ST_CLOSED")
		)
		:AddState(FSM.NewState("ST_WAITING_FOR_READY")
			:SetOnEnter(function()
				private.readyTimer:RunForFrames(WAIT_FRAME_DELAY)
			end)
			:SetOnExit(function()
				private.readyTimer:Cancel()
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_DATA_CHANGING")
			:AddTransition("ST_CLOSED")
			:AddEvent("EV_FRAME_DELAY", function()
				if State.IsDataStable() then
					return "ST_SHOWN"
				end
			end)
			:AddEventTransition("EV_TRADE_SKILL_DATA_SOURCE_CHANGING", "ST_DATA_CHANGING")
			:AddEventTransition("EV_TRADE_SKILL_CLOSE", "ST_CLOSED")
		)
		:AddState(FSM.NewState("ST_SHOWN")
			:SetOnEnter(function()
				local name, skillId = private.GetSkillLine()
				assert(name)
				Log.Info("Showing profession: %s (%s)", name, tostring(skillId))
				private.professionName = name
				private.skillId = skillId
				private.RunCallbacks()
			end)
			:SetOnExit(function()
				private.professionName = nil
				private.skillId = nil
				private.RunCallbacks()
			end)
			:AddTransition("ST_DATA_CHANGING")
			:AddTransition("ST_CLOSED")
			:AddEventTransition("EV_TRADE_SKILL_DATA_SOURCE_CHANGING", "ST_DATA_CHANGING")
			:AddEventTransition("EV_TRADE_SKILL_CLOSE", "ST_CLOSED")
		)
		:AddState(FSM.NewState("ST_DATA_CHANGING")
			:AddTransition("ST_WAITING_FOR_READY")
			:AddTransition("ST_CLOSED")
			:AddEventTransition("EV_TRADE_SKILL_DATA_SOURCE_CHANGED", "ST_WAITING_FOR_READY")
			:AddEventTransition("EV_TRADE_SKILL_CLOSE", "ST_CLOSED")
		)
		:Init("ST_CLOSED")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RunCallbacks()
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end

function private.GetSkillLine()
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local info = C_TradeSkillUI.GetBaseProfessionInfo()
		return info.parentProfessionName or info.professionName, info.profession
	else
		local name = State.IsClassicCrafting() and GetCraftSkillLine(1) or GetTradeSkillLine()
		return name
	end
end
