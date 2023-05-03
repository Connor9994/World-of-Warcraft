-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Tooltip = TSM:NewPackage("Tooltip")
local ItemString = TSM.Include("Util.ItemString")
local ObjectPool = TSM.Include("Util.ObjectPool")
local ItemTooltip = TSM.Include("Service.ItemTooltip")
local Settings = TSM.Include("Service.Settings")
local LibTSMClass = TSM.Include("LibTSMClass")
local TooltipInfo = LibTSMClass.DefineClass("TooltipInfo")
local TooltipEntry = LibTSMClass.DefineClass("TooltipEntry")
local private = {
	entryObjPool = ObjectPool.New("TOOLTIP_ENTRY", TooltipEntry),
	settings = nil,
	registeredInfo = {},
	settingsBuilder = nil,
}
local ITER_INDEX_PART_MULTIPLE = 1000



-- ============================================================================
-- Module Functions
-- ============================================================================

function Tooltip.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "tooltipOptions", "moduleTooltips")
		:AddKey("global", "tooltipOptions", "customPriceTooltips")
		:AddKey("global", "tooltipOptions", "vendorBuyTooltip")
		:AddKey("global", "tooltipOptions", "vendorSellTooltip")
		:AddKey("global", "tooltipOptions", "groupNameTooltip")
		:AddKey("global", "tooltipOptions", "destroyTooltipFormat")
		:AddKey("global", "tooltipOptions", "convertTooltipFormat")
		:AddKey("global", "tooltipOptions", "operationTooltips")
		:AddKey("global", "tooltipOptions", "inventoryTooltipFormat")
	ItemTooltip.SetWrapperPopulateFunction(private.PopulateTooltip)
	private.settingsBuilder = ItemTooltip.CreateBuilder()
end

function Tooltip.CreateInfo()
	return TooltipInfo()
end

function Tooltip.Register(info)
	info:_CheckDefaults()
	tinsert(private.registeredInfo, info)
end

function Tooltip.SettingsLineIterator()
	assert(not private.settingsBuilder:_Prepare(ItemString.GetPlaceholder(), 1))
	return private.SettingsLineIteratorHelper, nil, 0
end



-- ============================================================================
-- TooltipInfo Class
-- ============================================================================

function TooltipInfo.__init(self)
	self._headingLeft = nil
	self._headingRight = nil
	self._settingsModule = nil
	self._entries = {}
end

function TooltipInfo.SetHeadings(self, left, right)
	self._headingLeft = left
	self._headingRight = right
	return self
end

function TooltipInfo.SetSettingsModule(self, settingsModule)
	self._settingsModule = settingsModule
	return self
end

function TooltipInfo.AddSettingEntry(self, key, defaultValue, populateFunc, populateArg)
	if defaultValue == nil then
		defaultValue = private.settings:GetDefaultReadOnly(key)
	end
	assert(type(defaultValue) == "boolean")
	local entry = private.entryObjPool:Get()
	entry:_Acquire(self, key, true, false, defaultValue, populateFunc, populateArg)
	tinsert(self._entries, entry)
	return self
end

function TooltipInfo.AddSettingValueEntry(self, key, setValue, clearValue, populateFunc, populateArg)
	local entry = private.entryObjPool:Get()
	entry:_Acquire(self, key, setValue, clearValue, nil, populateFunc, populateArg)
	tinsert(self._entries, entry)
	return self
end

function TooltipInfo.DeleteSettingsByKeyMatch(self, matchStr)
	for i = #self._entries, 1, -1 do
		local entry = self._entries[i]
		if entry:KeyMatches(matchStr) then
			tremove(self._entries, i)
			entry:_Release()
			private.entryObjPool:Recycle(entry)
		end
	end
end

function TooltipInfo._CheckDefaults(self)
	if self._settingsModule and not private.settings.moduleTooltips[self._settingsModule] then
		-- populate all the default values
		private.settings.moduleTooltips[self._settingsModule] = {}
		for _, entry in ipairs(self._entries) do
			entry:_ResetSetting()
		end
	end
end

function TooltipInfo._GetSettingsTable(self)
	if self._settingsModule then
		return private.settings.moduleTooltips[self._settingsModule]
	else
		return private.settings
	end
end

function TooltipInfo._Populate(self, tooltip, itemString)
	local headingRightText = self._headingRight and self._headingRight(tooltip, itemString) or nil
	tooltip:StartSection(self._headingLeft, headingRightText)
	for _, entry in ipairs(self._entries) do
		if entry:IsEnabled() then
			entry:_Populate(tooltip, itemString)
		end
	end
	tooltip:EndSection()
end

function TooltipInfo._GetEntry(self, index)
	return self._entries[index]
end



-- ============================================================================
-- TooltipEntry Class
-- ============================================================================

function TooltipEntry.__init(self)
	self._info = nil
	self._settingKey = nil
	self._settingSetValue = nil
	self._settingClearValue = nil
	self._settingDefaultValue = nil
	self._populateFunc = nil
	self._populateArg = nil
end

function TooltipEntry._Acquire(self, info, key, setValue, clearValue, defaultValue, populateFunc, populateArg)
	assert(setValue == nil or setValue, "'setValue' must be truthy")
	assert(info and key and populateFunc)
	assert(clearValue ~= nil or defaultValue ~= nil)
	self._info = info
	self._settingKey = key
	self._settingSetValue = setValue or true
	self._settingClearValue = clearValue or false
	self._settingDefaultValue = defaultValue
	self._populateFunc = populateFunc
	self._populateArg = populateArg
end

function TooltipEntry._Release(self)
	self._info = nil
	self._settingKey = nil
	self._settingSetValue = nil
	self._settingClearValue = nil
	self._settingDefaultValue = nil
	self._populateFunc = nil
	self._populateArg = nil
end

function TooltipEntry.GetSettingInfo(self)
	local tbl = self._info:_GetSettingsTable()
	local key, key2, extra = strsplit(".", self._settingKey)
	assert(key and not extra)
	if key2 then
		tbl = tbl[key]
		key = key2
	end
	assert(type(tbl) == "table")
	return tbl, key
end

function TooltipEntry.IsEnabled(self)
	local settingTbl, settingKey = self:GetSettingInfo()
	local settingValue = settingTbl[settingKey]
	if settingValue == nil then
		assert(self._settingDefaultValue ~= nil)
		settingTbl[settingKey] = self._settingDefaultValue
		settingValue = settingTbl[settingKey]
	end
	return settingValue == self._settingSetValue
end

function TooltipEntry.KeyMatches(self, matchStr)
	return strmatch(self._settingKey, matchStr) and true or false
end

function TooltipEntry._ResetSetting(self, value)
	local tbl = self._info:_GetSettingsTable()
	if self._settingDefaultValue ~= nil then
		tbl[self._settingKey] = self._settingDefaultValue
	elseif self._settingClearValue ~= nil then
		tbl[self._settingKey] = self._settingClearValue
	else
		error("Invalid setting info")
	end
end

function TooltipEntry._Populate(self, tooltip, itemString)
	self._populateFunc(tooltip, itemString, self._populateArg)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.PopulateTooltip(tooltip, itemString)
	for _, info in ipairs(private.registeredInfo) do
		info:_Populate(tooltip, itemString)
	end
end

function private.SettingsLineIteratorHelper(_, index)
	local infoIndex = floor(index / (ITER_INDEX_PART_MULTIPLE ^ 2))
	local entryIndex = floor(index / ITER_INDEX_PART_MULTIPLE) % ITER_INDEX_PART_MULTIPLE
	local lineIndex = index % ITER_INDEX_PART_MULTIPLE
	local info, entry = nil, nil
	while lineIndex >= private.settingsBuilder:GetNumLines() do
		-- move to the next entry
		info = private.registeredInfo[infoIndex]
		entryIndex = entryIndex + 1
		entry = info and info:_GetEntry(entryIndex)
		if entry then
			private.settingsBuilder:SetDisabled(not entry:IsEnabled())
			entry:_Populate(private.settingsBuilder, ItemString.GetPlaceholder())
			private.settingsBuilder:SetDisabled(false)
		else
			-- move to the next info
			if infoIndex > 0 then
				private.settingsBuilder:EndSection()
			end
			infoIndex = infoIndex + 1
			info = private.registeredInfo[infoIndex]
			if info then
				private.settingsBuilder:StartSection(info._headingLeft)
				entryIndex = 0
			else
				return
			end
		end
	end
	lineIndex = lineIndex + 1
	index = infoIndex * ITER_INDEX_PART_MULTIPLE ^ 2 + entryIndex * ITER_INDEX_PART_MULTIPLE + lineIndex
	local leftText, rightText, lineColor = private.settingsBuilder:GetLine(lineIndex)
	assert(infoIndex < ITER_INDEX_PART_MULTIPLE and entryIndex < ITER_INDEX_PART_MULTIPLE and lineIndex < ITER_INDEX_PART_MULTIPLE)
	return index, leftText, rightText, lineColor
end
