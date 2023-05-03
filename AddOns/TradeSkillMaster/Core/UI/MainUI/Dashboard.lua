-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Dashboard = TSM.MainUI:NewPackage("Dashboard")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Money = TSM.Include("Util.Money")
local Math = TSM.Include("Util.Math")
local Theme = TSM.Include("Util.Theme")
local Analytics = TSM.Include("Util.Analytics")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	characterGuilds = {},
	tempTimeTable = {},
	selectedTimeRange = nil,
}
local SECONDS_PER_DAY = 60 * 60 * 24
local MIN_GRAPH_STEP_SIZE = Environment.IsRetail() and (COPPER_PER_GOLD * 1000) or COPPER_PER_GOLD
local ROUNDING_VALUE = Environment.IsRetail() and COPPER_PER_GOLD or 1
local TIME_RANGE_LOOKUP = {
	["1d"] = SECONDS_PER_DAY,
	["1w"] = SECONDS_PER_DAY * 7,
	["1m"] = SECONDS_PER_DAY * 30,
	["3m"] = SECONDS_PER_DAY * 91,
	["6m"] = SECONDS_PER_DAY * 183,
	["1y"] = SECONDS_PER_DAY * 365,
	["2y"] = SECONDS_PER_DAY * 730,
	["all"] = -1,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Dashboard.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "dashboardDividedContainer")
		:AddKey("global", "mainUIContext", "dashboardUnselectedCharacters")
		:AddKey("global", "mainUIContext", "dashboardTimeRange")
	private.selectedTimeRange = private.settings.dashboardTimeRange
	TSM.MainUI.RegisterTopLevelPage(L["Dashboard"], private.GetDashboardFrame)
end


-- ============================================================================
-- Dashboard UI
-- ============================================================================

function private.GetDashboardFrame()
	UIUtils.AnalyticsRecordPathChange("main", "dashboard")

	private.selectedTimeRange = private.settings.dashboardTimeRange
	wipe(private.characterGuilds)
	local prevUnselectedCharacters = TempTable.Acquire()
	for characterGuild in pairs(private.settings.dashboardUnselectedCharacters) do
		prevUnselectedCharacters[characterGuild] = true
	end
	wipe(private.settings.dashboardUnselectedCharacters)
	for characterGuild in TSM.Accounting.GoldTracker.CharacterGuildIterator() do
		tinsert(private.characterGuilds, characterGuild)
		private.settings.dashboardUnselectedCharacters[characterGuild] = prevUnselectedCharacters[characterGuild] or nil
	end
	TempTable.Release(prevUnselectedCharacters)

	local frame = UIElements.New("DividedContainer", "dashboard")
		:SetSettingsContext(private.settings, "dashboardDividedContainer")
		:SetMinWidth(200, 407)
		:SetBackgroundColor("PRIMARY_BG")
		:SetLeftChild(UIElements.New("Frame", "news")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Text", "text")
				:SetSize("AUTO", 24)
				:SetMargin(8)
				:SetFont("BODY_BODY1_BOLD")
				:SetText(L["News & Information"])
			)
			:AddChild(UIElements.New("ScrollFrame", "content")
				:SetPadding(8, 8, 0, 0)
			)
		)
		:SetRightChild(UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG")
			:SetScript("OnUpdate", private.ContentOnUpdate)
			:AddChild(UIElements.New("Frame", "goldHeader")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:AddChild(UIElements.New("Text", "text")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["Player Gold"])
				)
				:AddChild(UIElements.New("MultiselectionDropdown", "playerDropdown")
					:SetSize(157, 22)
					:SetItems(private.characterGuilds, private.characterGuilds)
					:SetUnselectedItemKeys(private.settings.dashboardUnselectedCharacters)
					:SetSelectionText(L["No Players"], L["%d Players"], L["All Players"])
					:SetScript("OnSelectionChanged", private.DropdownOnSelectionChanged)
				)
				:AddChild(UIElements.New("Spacer"))
				:AddChild(UIElements.New("Text", "hoverTime")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY3_MEDIUM")
					:SetText("")
				)
				:AddChild(UIElements.New("Frame", "timeBtns")
					:SetLayout("HORIZONTAL")
					:AddChild(UIElements.New("Button", "1d")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["1d"])
						:SetText(L["1D"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "1w")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["1w"])
						:SetText(L["1W"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "1m")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["1m"])
						:SetText(L["1M"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "3m")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["3m"])
						:SetText(L["3M"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "6m")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["6m"])
						:SetText(L["6M"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "1y")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["1y"])
						:SetText(L["1Y"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "2y")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetContext(TIME_RANGE_LOOKUP["2y"])
						:SetText(L["2Y"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "all")
						:SetMargin(8, 0, 0, 0)
						:SetSize(20, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("TEXT")
						:SetContext(TIME_RANGE_LOOKUP["all"])
						:SetText(ALL)
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
					:AddChild(UIElements.New("Button", "resetZoom")
						:SetMargin(8, 0, 0, 0)
						:SetSize(100, 20)
						:SetFont("TABLE_TABLE1")
						:SetTextColor("TEXT")
						:SetContext(TIME_RANGE_LOOKUP["all"])
						:SetText(L["Reset Zoom"])
						:SetScript("OnClick", private.TimeBtnOnClick)
					)
				)
			)
			:AddChild(UIElements.New("Graph", "goldGraph")
				:SetMargin(0, 0, 8, 8)
				:SetAxisStepFunctions(private.GraphXStepFunc, private.GraphYStepFunc)
				:SetXRange(TSM.Accounting.GoldTracker.GetGraphTimeRange(private.settings.dashboardUnselectedCharacters))
				:SetYValueFunction(private.GetGraphYValue)
				:SetFormatFunctions(private.GraphFormatX, private.GraphFormatY)
				:SetScript("OnZoomChanged", private.GraphOnZoomChanged)
				:SetScript("OnHoverUpdate", private.GraphOnHoverUpdate)
			)
			:AddChild(UIElements.New("Frame", "summary")
				:SetLayout("HORIZONTAL")
				:SetHeight(48)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("Frame", "range")
					:SetLayout("VERTICAL")
					:SetPadding(8, 8, 2, 2)
					:AddChild(UIElements.New("Frame", "high")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetTextColor("ACTIVE_BG_ALT")
							:SetText(L["HIGH"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("Text", "value")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("RIGHT")
						)
					)
					:AddChild(UIElements.New("Frame", "low")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetTextColor("ACTIVE_BG_ALT")
							:SetText(L["LOW"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("Text", "value")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("RIGHT")
						)
					)
				)
				:AddChild(UIElements.New("VerticalLine", "line1"))
				:AddChild(UIElements.New("Frame", "daily")
					:SetLayout("VERTICAL")
					:SetPadding(8, 8, 2, 2)
					:AddChild(UIElements.New("Frame", "sales")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetTextColor("ACTIVE_BG_ALT")
							:SetText(L["DAILY SALES"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("Text", "value")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("RIGHT")
						)
					)
					:AddChild(UIElements.New("Frame", "purchases")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetTextColor("ACTIVE_BG_ALT")
							:SetText(L["DAILY PURCHASES"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("Text", "value")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("RIGHT")
						)
					)
				)
				:AddChild(UIElements.New("VerticalLine", "line2"))
				:AddChild(UIElements.New("Frame", "top")
					:SetLayout("VERTICAL")
					:SetPadding(8, 8, 2, 2)
					:AddChild(UIElements.New("Frame", "sale")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetTextColor("ACTIVE_BG_ALT")
							:SetText(L["TOP SALE"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("Text", "value")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("RIGHT")
						)
					)
					:AddChild(UIElements.New("Frame", "expense")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetTextColor("ACTIVE_BG_ALT")
							:SetText(L["TOP PURCHASE"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("Text", "value")
							:SetWidth("AUTO")
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("RIGHT")
						)
					)
				)
			)
			:AddChild(UIElements.New("Frame", "details")
				:SetLayout("VERTICAL")
				:SetMargin(0, 0, 8, 0)
				:SetPadding(8)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("Text", "salesLabel")
					:SetHeight(20)
					:SetFont("TABLE_TABLE1")
					:SetTextColor("ACTIVE_BG_ALT")
					:SetText(L["SALES"])
				)
				:AddChild(UIElements.New("Frame", "salesTotal")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "text")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Total Gold Earned"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "amount")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("Frame", "salesAvg")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Average Earned per Day"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "amount")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("Frame", "salesTop")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Top Item"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Button", "item")
						:SetWidth("AUTO")
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("HorizontalLine", "line1")
					:SetHeight(1)
					:SetMargin(-8, -8, 4, 4)
				)
				:AddChild(UIElements.New("Text", "expensesLabel")
					:SetHeight(20)
					:SetFont("TABLE_TABLE1")
					:SetTextColor("ACTIVE_BG_ALT")
					:SetText(L["EXPENSES"])
				)
				:AddChild(UIElements.New("Frame", "expensesTotal")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "text")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Total Gold Spent"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "amount")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("Frame", "expensesAvg")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Average Spent per Day"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "amount")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("Frame", "expensesTop")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Top Item"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Button", "item")
						:SetWidth("AUTO")
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("HorizontalLine", "line2")
					:SetHeight(1)
					:SetMargin(-8, -8, 4, 4)
				)
				:AddChild(UIElements.New("Text", "profitLabel")
					:SetHeight(20)
					:SetFont("TABLE_TABLE1")
					:SetTextColor("ACTIVE_BG_ALT")
					:SetText(L["PROFIT"])
				)
				:AddChild(UIElements.New("Frame", "profitTotal")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "text")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Total Profit"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "amount")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("Frame", "profitAvg")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Average Profit per Day"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "amount")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("Frame", "profitTop")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Top Item"]..":")
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Button", "item")
						:SetWidth("AUTO")
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
					)
				)
			)
		)
	frame:GetElement("content.goldHeader.timeBtns.resetZoom"):Hide()
	frame:GetElement("content.goldHeader.hoverTime"):Hide()

	local newsContent = frame:GetElement("news.content")
	local newsEntries = TSM.AppHelper.GetNews()
	if newsEntries then
		for i, info in ipairs(newsEntries) do
			newsContent:AddChild(UIElements.New("Frame", "news"..i)
				:SetLayout("VERTICAL")
				:SetPadding(0, 0, i == 1 and 6 or 12, 0)
				:AddChild(UIElements.New("Text", "date")
					:SetHeight(20)
					:SetFont("BODY_BODY3")
					:SetText(date("%b %d, %Y", info.timestamp))
				)
				:AddChild(UIElements.New("Text", "title")
					:SetHeight(20)
					:SetFont("BODY_BODY2_BOLD")
					:SetText(info.title)
				)
				:AddChild(UIElements.New("Text", "content")
					:SetHeight(80)
					:SetPadding(0, 0, 4, 0)
					:SetFont("BODY_BODY3")
					:SetText(info.content)
				)
				:AddChild(UIElements.New("Text", "readMore")
					:SetHeight(20)
					:SetPadding(0, 0, 4, 0)
					:SetFont("BODY_BODY3")
					:SetTextColor("INDICATOR")
					:SetText(L["Read More"])
				)
			)
			:AddChildNoLayout(UIElements.New("Button", "btn")
				:AddAnchor("TOPLEFT", "news"..i)
				:AddAnchor("BOTTOMRIGHT", "news"..i)
				:SetContext(info)
				:SetScript("OnClick", private.ButtonOnClick)
			)
		end
	end

	return frame
end


-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.ButtonOnClick(button)
	local info = button:GetContext()
	Analytics.Action("NEWS_READ_MORE", info.title)
	button:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(600, 450)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG")
		:SetBorderColor("ACTIVE_BG")
		:AddChild(UIElements.New("Text", "title")
			:SetHeight(44)
			:SetMargin(16, 16, 16, 8)
			:SetFont("BODY_BODY1_BOLD")
			:SetJustifyH("CENTER")
			:SetText(info.title)
		)
		:AddChild(UIElements.New("Input", "linkInput")
			:SetHeight(26)
			:SetMargin(16, 16, 0, 16)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:SetValidateFunc(private.LinkValidateFunc)
			:SetContext(info.link)
			:SetValue(info.link)
		)
		:AddChild(UIElements.New("Text", "content")
			:SetMargin(16, 16, 0, 16)
			:SetFont("BODY_BODY3")
			:SetJustifyV("TOP")
			:SetText(info.content)
		)
		:AddChild(UIElements.New("Frame", "buttons")
			:SetLayout("HORIZONTAL")
			:SetHeight(26)
			:SetMargin(16, 16, 0, 16)
			:AddChild(UIElements.New("Spacer", "spacer"))
			:AddChild(UIElements.New("ActionButton", "confirmBtn")
				:SetWidth(126)
				:SetText(CLOSE)
				:SetScript("OnClick", private.DialogCloseBtnOnClick)
			)
		)
	)
end

function private.LinkValidateFunc(input, value)
	return value == input:GetContext()
end

function private.DialogCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GraphFormatX(timestamp, suggestedStep)
	if suggestedStep > SECONDS_PER_DAY * 14 then
		return date("%b '%y", timestamp)
	elseif suggestedStep > SECONDS_PER_DAY * 2 then
		return date("%b %d", timestamp)
	elseif suggestedStep > SECONDS_PER_DAY / 6 then
		return date("%a", timestamp)
	else
		if GetCVar("timeMgrUseMilitaryTime") == "1" then
			return date("%H:%M", timestamp)
		else
			return strtrim(date("%I %p", timestamp), "0")
		end
	end
end

function private.GraphFormatY(value, suggestedStep, isTooltip)
	if isTooltip then
		return Money.ToString(value, nil, "OPT_TRIM")
	end
	if not Environment.IsRetail() and value < COPPER_PER_GOLD * 1000 then
		-- "###g"
		return floor(value / COPPER_PER_GOLD)..Money.GetGoldText()
	elseif not Environment.IsRetail() and value < COPPER_PER_GOLD * 1000 * 10 then
		-- "#.##Kg"
		return format("%.2f", value / (COPPER_PER_GOLD * 1000)).."k"..Money.GetGoldText()
	elseif value < COPPER_PER_GOLD * 1000 * 1000 then
		-- "###Kg"
		return floor(value / (COPPER_PER_GOLD * 1000)).."k"..Money.GetGoldText()
	elseif value < COPPER_PER_GOLD * 1000 * 1000 * 10 then
		-- "#.##Mg"
		return format("%.2f", value / (COPPER_PER_GOLD * 1000 * 1000)).."M"..Money.GetGoldText()
	else
		-- "###Mg"
		return floor(value / (COPPER_PER_GOLD * 1000 * 1000)).."M"..Money.GetGoldText()
	end
end

function private.GetGraphYValue(xValue)
	return TSM.Accounting.GoldTracker.GetGoldAtTime(xValue, private.settings.dashboardUnselectedCharacters)
end

function private.ContentOnUpdate(contentFrame)
	contentFrame:SetScript("OnUpdate", nil)
	private.UpdateTimeButtons(contentFrame:GetElement("goldHeader.timeBtns"))
	private.UpdateGraph(contentFrame)
end

function private.DropdownOnSelectionChanged(dropdown)
	for _, key in ipairs(private.characterGuilds) do
		private.settings.dashboardUnselectedCharacters[key] = not dropdown:ItemIsSelectedByKey(key) or nil
	end
	private.UpdateGraph(dropdown:GetParentElement():GetParentElement())
end

function private.TimeBtnOnClick(button)
	local timeRange = button:GetContext()
	assert(timeRange)
	private.selectedTimeRange = timeRange
	private.settings.dashboardTimeRange = timeRange
	private.UpdateTimeButtons(button:GetParentElement())
	private.UpdateGraph(button:GetParentElement():GetParentElement():GetParentElement())
end

function private.UpdateGraph(contentFrame)
	-- update the graph
	local minTime, maxTime = TSM.Accounting.GoldTracker.GetGraphTimeRange(private.settings.dashboardUnselectedCharacters)
	local goldGraph = contentFrame:GetElement("goldGraph")
	local zoomStart, zoomEnd = goldGraph:GetZoom()
	if private.selectedTimeRange == TIME_RANGE_LOOKUP["all"] then
		zoomStart = minTime
		zoomEnd = maxTime
	elseif private.selectedTimeRange then
		zoomStart = max(time() - private.selectedTimeRange, minTime)
		zoomEnd = time()
	end
	goldGraph:SetXRange(minTime, maxTime)
		:SetZoom(zoomStart, zoomEnd)
		:Draw()
	private.PopulateDetails(contentFrame)
end

function private.GraphOnZoomChanged(graph)
	private.selectedTimeRange = nil
	private.settings.dashboardTimeRange = -1
	private.UpdateTimeButtons(graph:GetElement("__parent.goldHeader.timeBtns"))
	private.PopulateDetails(graph:GetElement("__parent"))
end

function private.GraphOnHoverUpdate(graph, hoverTime)
	local goldHeader = graph:GetElement("__parent.goldHeader")
	if hoverTime then
		local timeStr = nil
		if GetCVar("timeMgrUseMilitaryTime") == "1" then
			timeStr = date("%H:%M %b %d, %Y", hoverTime)
		else
			timeStr = gsub(date("%I:%M %p %b %d, %Y", hoverTime), "^0", "")
		end
		goldHeader:GetElement("timeBtns"):Hide()
		goldHeader:GetElement("hoverTime")
			:SetText(timeStr)
			:Show()
	else
		goldHeader:GetElement("timeBtns"):Show()
		goldHeader:GetElement("hoverTime"):Hide()
		private.UpdateTimeButtons(goldHeader:GetElement("timeBtns"))
	end
	goldHeader:Draw()
end

function private.UpdateTimeButtons(frame)
	frame:ShowAllChildren()
	local resetButton = frame:GetElement("resetZoom")
	if private.selectedTimeRange then
		for _, button in frame:LayoutChildrenIterator() do
			if button ~= resetButton then
				button:SetTextColor(private.selectedTimeRange == button:GetContext() and "TEXT" or "ACTIVE_BG_ALT")
			end
		end
		resetButton:Hide()
	else
		for _, button in frame:LayoutChildrenIterator() do
			button:Hide()
		end
		resetButton:Show()
	end
	frame:GetParentElement():Draw()
end

function private.GraphXStepFunc(prevValue, suggestedStep)
	local year, day, month, hour, min, sec = strsplit(",", date("%Y,%d,%m,%H,%M,%S", prevValue))
	private.tempTimeTable.year = tonumber(year)
	private.tempTimeTable.day = tonumber(day)
	private.tempTimeTable.month = tonumber(month)
	private.tempTimeTable.hour = tonumber(hour)
	private.tempTimeTable.min = tonumber(min)
	private.tempTimeTable.sec = tonumber(sec)
	if suggestedStep > SECONDS_PER_DAY * 14 then
		private.tempTimeTable.month = private.tempTimeTable.month + 1
		private.tempTimeTable.day = 1
		private.tempTimeTable.hour = 0
		private.tempTimeTable.min = 0
		private.tempTimeTable.sec = 0
	elseif suggestedStep > SECONDS_PER_DAY / 6 then
		private.tempTimeTable.day = private.tempTimeTable.day + 1
		if private.tempTimeTable.hour == 23 then
			-- add an extra hour to avoid DST issues
			private.tempTimeTable.hour = 1
		else
			private.tempTimeTable.hour = 0
		end
		private.tempTimeTable.min = 0
		private.tempTimeTable.sec = 0
	else
		private.tempTimeTable.hour = private.tempTimeTable.hour + 2
		private.tempTimeTable.min = 0
		private.tempTimeTable.sec = 0
	end
	local newValue = time(private.tempTimeTable)
	assert(newValue > prevValue)
	return newValue
end

function private.GraphYStepFunc(mode, ...)
	if mode == "RANGE" then
		local yMin, yMax, maxNumSteps = ...
		-- find the smallest 10^X step size which still looks good
		local minStep = max((yMax - yMin) / maxNumSteps / 10, yMax / 200)
		local stepSize = MIN_GRAPH_STEP_SIZE
		while stepSize < minStep do
			stepSize = stepSize * 10
		end
		yMin = Math.Floor(yMin, stepSize)
		yMax = Math.Ceil(yMax + stepSize / 3, stepSize)
		if yMin == yMax then
			yMax = yMax + stepSize
		end
		return yMin, yMax
	elseif mode == "NEXT" then
		local prevValue, yMax = ...
		local stepSize = MIN_GRAPH_STEP_SIZE
		while stepSize < yMax / 1000 do
			stepSize = stepSize * 10
		end
		return Math.Floor(prevValue, stepSize) + stepSize
	else
		error("Invalid mode")
	end
end

function private.PopulateDetails(contentFrame)
	local goldGraph = contentFrame:GetElement("goldGraph")
	local unselectedCharacters = next(private.settings.dashboardUnselectedCharacters) and private.settings.dashboardUnselectedCharacters or nil
	local timeFilterStart, timeFilterEnd, numDays = nil, nil, nil
	if private.selectedTimeRange and private.selectedTimeRange ~= -1 then
		timeFilterStart = time() - private.selectedTimeRange
		timeFilterEnd = time()
		numDays = ceil(private.selectedTimeRange / SECONDS_PER_DAY)
	elseif not private.selectedTimeRange then
		timeFilterStart, timeFilterEnd = goldGraph:GetZoom()
		numDays = ceil((timeFilterEnd - timeFilterStart) / SECONDS_PER_DAY)
	else
		local timeStart, timeEnd = goldGraph:GetXRange()
		numDays = ceil((timeEnd - timeStart) / SECONDS_PER_DAY)
	end
	numDays = max(numDays, 1)

	local saleTotal, salePerDay, saleTopItem, saleTopValue, saleTotalQuantity = 0, nil, nil, 0, 0
	local buyTotal, buyPerDay, buyTopItem, buyTopValue, buyTotalQuantity = 0, nil, nil, 0, 0
	local profitTopItem = nil
	local query = TSM.Accounting.GetSummaryQuery(timeFilterStart, timeFilterEnd, unselectedCharacters)
	local saleNumDays, buyNumDays = 1, 1
	local saleItemTotals = TempTable.Acquire()
	local buyItemTotals = TempTable.Acquire()
	local saleItemNum = TempTable.Acquire()
	local buyItemNum = TempTable.Acquire()
	for _, recordType, itemString, price, quantity, timestamp in query:Iterator() do
		if recordType == "sale" then
			local daysAgo = floor((time() - timestamp) / (24 * 60 * 60))
			saleNumDays = max(saleNumDays, daysAgo)
			saleItemTotals[itemString] = (saleItemTotals[itemString] or 0) + price * quantity
			saleTopValue = max(saleTopValue, price)
			saleTotalQuantity = saleTotalQuantity + quantity
			saleItemNum[itemString] = (saleItemNum[itemString] or 0) + quantity
		elseif recordType == "buy" then
			local daysAgo = floor((time() - timestamp) / (24 * 60 * 60))
			buyNumDays = max(buyNumDays, daysAgo)
			buyItemTotals[itemString] = (buyItemTotals[itemString] or 0) + price * quantity
			buyTopValue = max(buyTopValue, price)
			buyTotalQuantity = buyTotalQuantity + quantity
			buyItemNum[itemString] = (buyItemNum[itemString] or 0) + quantity
		else
			error("Invalid recordType: "..tostring(recordType))
		end
	end
	query:Release()

	local topSaleItemTotal = 0
	for itemString, itemTotal in pairs(saleItemTotals) do
		saleTotal = saleTotal + itemTotal
		if itemTotal > topSaleItemTotal then
			saleTopItem = itemString
			topSaleItemTotal = itemTotal
		end
	end
	salePerDay = Math.Round(saleTotal / saleNumDays)

	local topBuyItemTotal = 0
	for itemString, itemTotal in pairs(buyItemTotals) do
		buyTotal = buyTotal + itemTotal
		if itemTotal > topBuyItemTotal then
			buyTopItem = itemString
			topBuyItemTotal = itemTotal
		end
	end
	buyPerDay = Math.Round(buyTotal / buyNumDays)

	local topItemProfit = 0
	for itemString in pairs(saleItemNum) do
		if buyItemNum[itemString] then
			local profit = (saleItemTotals[itemString] / saleItemNum[itemString] - buyItemTotals[itemString] / buyItemNum[itemString]) * min(saleItemNum[itemString], buyItemNum[itemString])
			if profit > topItemProfit then
				profitTopItem = itemString
				topItemProfit = profit
			end
		end
	end

	TempTable.Release(saleItemTotals)
	TempTable.Release(buyItemTotals)
	TempTable.Release(saleItemNum)
	TempTable.Release(buyItemNum)

	local profitTotal = saleTotal - buyTotal
	local profitPerDay = salePerDay - buyPerDay

	local rangeLow, rangeHigh = goldGraph:GetYRange()
	contentFrame:GetElement("summary.range.low.value")
		:SetText(Money.ToString(rangeLow, nil, "OPT_TRIM") or "-")
	contentFrame:GetElement("summary.range.high.value")
		:SetText(Money.ToString(rangeHigh, nil, "OPT_TRIM") or "-")

	contentFrame:GetElement("summary.daily.sales.value")
		:SetText(saleTotalQuantity and Math.Round(saleTotalQuantity / numDays) or "-")
	contentFrame:GetElement("summary.daily.purchases.value")
		:SetText(buyTotalQuantity and Math.Round(buyTotalQuantity / numDays) or "-")

	contentFrame:GetElement("summary.top.sale.value")
		:SetText(Money.ToString(Math.Round(saleTopValue, ROUNDING_VALUE), nil, "OPT_TRIM") or "-")
	contentFrame:GetElement("summary.top.expense.value")
		:SetText(Money.ToString(Math.Round(buyTopValue, ROUNDING_VALUE), nil, "OPT_TRIM") or "-")

	contentFrame:GetElement("details.salesTotal.amount")
		:SetText(Money.ToString(saleTotal, nil, "OPT_RETAIL_ROUND"))
	contentFrame:GetElement("details.salesAvg.amount")
		:SetText(Money.ToString(salePerDay, nil, "OPT_RETAIL_ROUND"))
	contentFrame:GetElement("details.salesTop.item")
		:SetText(UIUtils.GetDisplayItemName(saleTopItem) or "-")
		:SetTooltip(saleTopItem)

	contentFrame:GetElement("details.expensesTotal.amount")
		:SetText(Money.ToString(buyTotal, nil, "OPT_RETAIL_ROUND"))
	contentFrame:GetElement("details.expensesAvg.amount")
		:SetText(Money.ToString(buyPerDay, nil, "OPT_RETAIL_ROUND"))
	contentFrame:GetElement("details.expensesTop.item")
		:SetText(UIUtils.GetDisplayItemName(buyTopItem) or "-")
		:SetTooltip(buyTopItem)

	contentFrame:GetElement("details.profitTotal.amount")
		:SetText(Money.ToString(profitTotal, profitTotal < 0 and Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix() or nil, nil, "OPT_RETAIL_ROUND"))
	contentFrame:GetElement("details.profitAvg.amount")
		:SetText(Money.ToString(profitPerDay, profitPerDay < 0 and Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix() or nil, nil, "OPT_RETAIL_ROUND"))
	contentFrame:GetElement("details.profitTop.item")
		:SetText(UIUtils.GetDisplayItemName(profitTopItem) or "-")
		:SetTooltip(profitTopItem)

	contentFrame:Draw()
end
