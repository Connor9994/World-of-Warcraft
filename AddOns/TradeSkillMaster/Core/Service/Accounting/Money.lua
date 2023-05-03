-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Money = TSM.Accounting:NewPackage("Money")
local Database = TSM.Include("Util.Database")
local CSV = TSM.Include("Util.CSV")
local Log = TSM.Include("Util.Log")
local private = {
	db = nil,
	dataChanged = false,
}
local CSV_KEYS = { "type", "amount", "otherPlayer", "player", "time" }
local COMBINE_TIME_THRESHOLD = 300 -- group expenses within 5 minutes together
local SECONDS_PER_DAY = 24 * 60 * 60



-- ============================================================================
-- Module Functions
-- ============================================================================

function Money.OnInitialize()
	private.db = Database.NewSchema("ACCOUNTING_MONEY")
		:AddStringField("recordType")
		:AddStringField("type")
		:AddNumberField("amount")
		:AddStringField("otherPlayer")
		:AddStringField("player")
		:AddNumberField("time")
		:AddIndex("recordType")
		:Commit()
	private.db:BulkInsertStart()
	private.LoadData("expense", TSM.db.realm.internalData.csvExpense)
	private.LoadData("income", TSM.db.realm.internalData.csvIncome)
	private.db:BulkInsertEnd()
end

function Money.OnDisable()
	if not private.dataChanged then
		-- nothing changed, so just keep the previous saved values
		return
	end
	TSM.db.realm.internalData.csvExpense = private.SaveData("expense")
	TSM.db.realm.internalData.csvIncome = private.SaveData("income")
end

function Money.InsertMoneyTransferExpense(amount, destination)
	private.InsertRecord("expense", "Money Transfer", amount, destination, time())
end

function Money.InsertPostageExpense(amount, destination)
	private.InsertRecord("expense", "Postage", amount, destination, time())
end

function Money.InsertRepairBillExpense(amount)
	private.InsertRecord("expense", "Repair Bill", amount, "Merchant", time())
end

function Money.InsertMoneyTransferIncome(amount, source, timestamp)
	private.InsertRecord("income", "Money Transfer", amount, source, timestamp)
end

function Money.InsertGarrisonIncome(amount)
	private.InsertRecord("income", "Garrison", amount, "Mission", time())
end

function Money.CreateQuery()
	return private.db:NewQuery()
end

function Money.CharacterIterator(recordType)
	return private.db:NewQuery()
		:Equal("recordType", recordType)
		:Distinct("player")
		:Select("player")
		:IteratorAndRelease()
end

function Money.RemoveOldData(days)
	private.dataChanged = true
	local query = private.db:NewQuery()
		:LessThan("time", time() - days * SECONDS_PER_DAY)
	local numRecords = 0
	private.db:SetQueryUpdatesPaused(true)
	for _, row in query:Iterator() do
		private.db:DeleteRow(row)
		numRecords = numRecords + 1
	end
	query:Release()
	private.db:SetQueryUpdatesPaused(false)
	return numRecords
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadData(recordType, csvRecords)
	local decodeContext = CSV.DecodeStart(csvRecords, CSV_KEYS)
	if not decodeContext then
		Log.Err("Failed to decode %s records", recordType)
		private.dataChanged = true
		return
	end

	for type, amount, otherPlayer, player, timestamp in CSV.DecodeIterator(decodeContext) do
		amount = tonumber(amount)
		timestamp = tonumber(timestamp)
		if amount and timestamp then
			local newTimestamp = floor(timestamp)
			if newTimestamp ~= timestamp then
				-- make sure all timestamps are stored as integers
				timestamp = newTimestamp
				private.dataChanged = true
			end
			private.db:BulkInsertNewRowFast6(recordType, type, amount, otherPlayer, player, timestamp)
		else
			private.dataChanged = true
		end
	end

	if not CSV.DecodeEnd(decodeContext) then
		Log.Err("Failed to decode %s records", recordType)
		private.dataChanged = true
	end
end

function private.SaveData(recordType)
	local query = private.db:NewQuery()
		:Equal("recordType", recordType)
	local encodeContext = CSV.EncodeStart(CSV_KEYS)
	for _, row in query:Iterator() do
		CSV.EncodeAddRowData(encodeContext, row)
	end
	query:Release()
	return CSV.EncodeEnd(encodeContext)
end

function private.InsertRecord(recordType, type, amount, otherPlayer, timestamp)
	private.dataChanged = true
	assert(type and amount and amount > 0 and otherPlayer and timestamp)
	timestamp = floor(timestamp)
	local matchingRow = private.db:NewQuery()
		:Equal("recordType", recordType)
		:Equal("type", type)
		:Equal("otherPlayer", otherPlayer)
		:Equal("player", UnitName("player"))
		:GreaterThan("time", timestamp - COMBINE_TIME_THRESHOLD)
		:LessThan("time", timestamp + COMBINE_TIME_THRESHOLD)
		:GetFirstResultAndRelease()
	if matchingRow then
		matchingRow:SetField("amount", matchingRow:GetField("amount") + amount)
		matchingRow:Update()
		matchingRow:Release()
	else
		private.db:NewRow()
			:SetField("recordType", recordType)
			:SetField("type", type)
			:SetField("amount", amount)
			:SetField("otherPlayer", otherPlayer)
			:SetField("player", UnitName("player"))
			:SetField("time", timestamp)
			:Create()
	end
end
