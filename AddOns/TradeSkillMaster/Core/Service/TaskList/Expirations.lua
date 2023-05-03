-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Expirations = TSM.TaskList:NewPackage("Expirations")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Table = TSM.Include("Util.Table")
local ObjectPool = TSM.Include("Util.ObjectPool")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local private = {
	mailTaskPool = ObjectPool.New("EXPIRING_MAIL_TASK", TSM.TaskList.ExpiringMailTask, 0),
	auctionTaskPool = ObjectPool.New("EXPIRED_AUCTION_TASK", TSM.TaskList.ExpiredAuctionTask, 0),
	activeTasks = {},
	expiringMailTasks = {},
	expiredAuctionTasks = {},
	updateDelayedTimer = nil,
	updateTimer = nil,
}
local PLAYER_NAME = UnitName("player")
local DAYS_LEFT_LIMIT = 1



-- ============================================================================
-- Module Functions
-- ============================================================================

function Expirations.OnEnable()
	private.updateDelayedTimer = Delay.CreateTimer("EXPIRATIONS_UPDATE_DELAYED", private.PopulateTasks)
	private.updateTimer = Delay.CreateTimer("EXPIRATIONS_UPDATE", private.PopulateTasks)
	AuctionTracking.RegisterExpiresCallback(Expirations.Update)
	MailTracking.RegisterExpiresCallback(private.UpdateDelayed)
	TSM.TaskList.RegisterTaskPool(private.ActiveTaskIterator)
	private.PopulateTasks()
end

function Expirations.Update()
	private.PopulateTasks()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateDelayed()
	private.updateDelayedTimer:RunForTime(0.5)
end

function private.ActiveTaskIterator()
	return ipairs(private.activeTasks)
end

function private.PopulateTasks()
	local minPendingCooldown = math.huge

	wipe(private.activeTasks)

	for _, task in pairs(private.expiringMailTasks) do
		task:WipeCharacters()
	end
	for _, task in pairs(private.expiredAuctionTasks) do
		task:WipeCharacters()
	end

	-- expiring mails
	for k, v in pairs(TSM.db.factionrealm.internalData.expiringMail) do
		local task = private.expiringMailTasks["ExpiringMails"]
		if not task then
			task = private.mailTaskPool:Get()
			task:Acquire(private.RemoveMailTask, L["Expirations"])
			private.expiringMailTasks["ExpiringMails"] = task
		end

		local expiration = (v - time()) / 24 / 60 / 60
		if expiration <= DAYS_LEFT_LIMIT * -1 then
			TSM.db.factionrealm.internalData.expiringMail[PLAYER_NAME] = nil
		else
			if not task:HasCharacter(k) and expiration <= DAYS_LEFT_LIMIT then
				task:AddCharacter(k, expiration)
			end
			if expiration > 0 and expiration <= DAYS_LEFT_LIMIT then
				minPendingCooldown = min(minPendingCooldown, expiration * 24 * 60 * 60)
			else
				minPendingCooldown = min(minPendingCooldown, (expiration + DAYS_LEFT_LIMIT) * 24 * 60 * 60)
			end
		end
	end

	for character, task in pairs(private.expiringMailTasks) do
		if task:HasCharacters() then
			tinsert(private.activeTasks, task)
			task:Update()
		else
			private.expiringMailTasks[character] = nil
			task:Release()
			private.mailTaskPool:Recycle(task)
		end
	end

	-- expired auctions
	for k, v in pairs(TSM.db.factionrealm.internalData.expiringAuction) do
		local task = private.expiredAuctionTasks["ExpiredAuctions"]
		if not task then
			task = private.auctionTaskPool:Get()
			task:Acquire(private.RemoveAuctionTask, L["Expirations"])
			private.expiredAuctionTasks["ExpiredAuctions"] = task
		end

		local expiration = (v - time()) / 24 / 60 / 60
		if expiration > 0 and expiration <= DAYS_LEFT_LIMIT then
			minPendingCooldown = min(minPendingCooldown, expiration * 24 * 60 * 60)
		else
			if not task:HasCharacter(k) then
				task:AddCharacter(k, expiration)
			end
		end
	end

	for character, task in pairs(private.expiredAuctionTasks) do
		if task:HasCharacters() then
			tinsert(private.activeTasks, task)
			task:Update()
		else
			private.expiredAuctionTasks[character] = nil
			task:Release()
			private.auctionTaskPool:Recycle(task)
		end
	end

	TSM.TaskList.OnTaskUpdated()

	if minPendingCooldown ~= math.huge and minPendingCooldown < DAYS_LEFT_LIMIT then
		private.updateTimer:RunForTime(minPendingCooldown)
	else
		private.updateTimer:Cancel()
	end
end

function private.RemoveMailTask(task)
	assert(Table.RemoveByValue(private.activeTasks, task) == 1)
	task:Release()
	private.mailTaskPool:Recycle(task)
	TSM.TaskList.OnTaskUpdated()
end

function private.RemoveAuctionTask(task)
	assert(Table.RemoveByValue(private.activeTasks, task) == 1)
	task:Release()
	private.auctionTaskPool:Recycle(task)
	TSM.TaskList.OnTaskUpdated()
end
