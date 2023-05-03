-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local DBViewer = TSM.UI:NewPackage("DBViewer")
local Database = TSM.Include("Util.Database")
local Log = TSM.Include("Util.Log")
local UIElements = TSM.Include("UI.UIElements")
local private = {
	frame = nil,
	frameContext = {},
	dividedContainerContext = {},
	selectedDBName = nil,
	structureScrollingTableContext = {},
	browseScrollingTableContext = {},
	defaultBrowseScrollingTableContext = { colWidth = {}, colHidden = {} },
}
local DEFAULT_FRAME_CONTEXT = {
	width = 900,
	height = 600,
	centerX = 100,
	centerY = 0,
	scale = 1,
}
local MIN_FRAME_SIZE = {
	width = 900,
	height = 600
}
local DEFAULT_DIVIDED_CONTAINER_CONTEXT = {
	leftWidth = 200,
}
local DEFAULT_STRUCTURE_SCROLLING_TABLE_CONTEXT = {
	colWidth = {
		order = 24,
		field = 346,
		type = 60,
		attributes = 200,
	},
	colHidden = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function DBViewer.OnDisable()
	-- hide the frame
	if private.frame then
		DBViewer.Toggle()
	end
end

function DBViewer.Toggle()
	if not private.frame then
		private.frame = private.CreateMainFrame()
		private.frame:Draw()
		private.frame:Show()
	else
		private.frame:Hide()
		assert(not private.frame)
	end
end



-- ============================================================================
-- UI Functions
-- ============================================================================

function private.CreateMainFrame()
	private.selectedDBName = nil
	return UIElements.New("ApplicationFrame", "base")
		:SetParent(UIParent)
		:SetMinResize(MIN_FRAME_SIZE.width, MIN_FRAME_SIZE.height)
		:SetContextTable(private.frameContext, DEFAULT_FRAME_CONTEXT)
		:SetStrata("HIGH")
		:SetTitle("TSM DB Viewer")
		:SetScript("OnHide", private.FrameOnHide)
		:SetContentFrame(UIElements.New("DividedContainer", "container")
			:SetContextTable(private.dividedContainerContext, DEFAULT_DIVIDED_CONTAINER_CONTEXT)
			:SetBackgroundColor("PRIMARY_BG")
			:SetMinWidth(100, 100)
			:SetLeftChild(UIElements.New("ScrollFrame", "left")
				:AddChildrenWithFunction(private.AddTableRows)
			)
			:SetRightChild(UIElements.New("Frame", "right")
				:SetLayout("VERTICAL")
			)
		)
end

function private.AddTableRows(frame)
	for _, name in Database.InfoNameIterator() do
		frame:AddChild(UIElements.New("Button", "nav_"..name)
			:SetHeight(20)
			:SetPadding(8, 0, 0, 0)
			:SetFont("BODY_BODY3")
			:SetJustifyH("LEFT")
			:SetBackground("PRIMARY_BG", true)
			:SetText(name)
			:SetScript("OnClick", private.NavButtonOnClick)
		)
	end
end

function private.CreateTableContent()
	local contentFrame = private.frame:GetElement("container.right")
	contentFrame:ReleaseAllChildren()
	contentFrame:AddChild(UIElements.New("TabGroup", "tabs")
		:SetMargin(0, 0, 4, 0)
		:SetNavCallback(private.ContentNavCallback)
		:AddPath("Structure", true)
		:AddPath("Browse")
	)
	contentFrame:Draw()
end

function private.ContentNavCallback(_, path)
	if path == "Structure" then
		return private.CreateStructureFrame()
	elseif path == "Browse" then
		return private.CreateBrowseFrame()
	else
		error("Invalid path: "..tostring(path))
	end
end

function private.CreateStructureFrame()
	local query = Database.CreateInfoFieldQuery(private.selectedDBName)
		:OrderBy("order", true)
	return UIElements.New("Frame", "structure")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "info")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(4)
			:AddChild(UIElements.New("Text", "numRows")
				:SetFont("BODY_BODY2")
				:SetText("Total Rows: "..Database.GetNumRows(private.selectedDBName))
			)
			:AddChild(UIElements.New("Text", "numRows")
				:SetFont("BODY_BODY2")
				:SetText("Active Queries: "..Database.GetNumActiveQueries(private.selectedDBName))
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "table")
			:SetContextTable(private.structureScrollingTableContext, DEFAULT_STRUCTURE_SCROLLING_TABLE_CONTEXT)
			:GetScrollingTableInfo()
				:NewColumn("order")
					:SetTitle("#")
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("order")
					:SetSortInfo("order")
					:Commit()
				:NewColumn("field")
					:SetTitle("Field")
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("field")
					:SetSortInfo("field")
					:Commit()
				:NewColumn("type")
					:SetTitle("Type")
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("type")
					:SetSortInfo("type")
					:Commit()
				:NewColumn("attributes")
					:SetTitle("Attributes")
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("attributes")
					:SetSortInfo("attributes")
					:Commit()
				:Commit()
			:SetQuery(query)
			:SetAutoReleaseQuery(true)
			:SetSelectionDisabled(true)
		)
end

function private.CreateBrowseFrame()
	local query = Database.CreateDBQuery(private.selectedDBName)
	local fieldQuery = Database.CreateInfoFieldQuery(private.selectedDBName)
		:Select("field")
		:OrderBy("order", true)
	wipe(private.defaultBrowseScrollingTableContext.colWidth)
	for _, field in fieldQuery:Iterator() do
		private.defaultBrowseScrollingTableContext.colWidth[field] = 100
	end
	wipe(private.browseScrollingTableContext)

	local frame = UIElements.New("Frame", "browse")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Input", "queryInput")
			:SetHeight(26)
			:SetMargin(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:SetValue("query")
			:SetScript("OnEnterPressed", private.QueryInputOnEnterPressed)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "table")
			:SetContextTable(private.browseScrollingTableContext, private.defaultBrowseScrollingTableContext)
			:SetContext(query)
			:SetQuery(query)
			:SetAutoReleaseQuery(true)
			:SetSelectionDisabled(true)
		)

	local stInfo = frame:GetElement("table"):GetScrollingTableInfo()
	for _, field in fieldQuery:Iterator() do
		local function TextFunc(row)
			return strjoin(",", tostringall(row:GetField(field)))
		end
		local function TooltipFunc(row)
			local value = TextFunc(row)
			if not strmatch(value, ",") and (strmatch(value, "item:") or strmatch(value, "battlepet:") or strmatch(value, "[ip]:")) then
				-- this is an item string or item link
				return value
			else
				return "Value: "..value
			end
		end
		stInfo:NewColumn(field)
			:SetTitle(field)
			:SetFont("ITEM_BODY3")
			:SetJustifyH("LEFT")
			:SetTextInfo(nil, TextFunc)
			:SetTooltipInfo(nil, TooltipFunc)
			:Commit()
	end
	fieldQuery:Release()
	stInfo:Commit()

	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnHide(frame)
	assert(frame == private.frame)
	private.frame:Release()
	private.frame = nil
end

function private.NavButtonOnClick(button)
	local navFrame = button:GetParentElement()
	private.selectedDBName = button:GetText()
	for _, name in Database.InfoNameIterator() do
		navFrame:GetElement("nav_"..name)
			:SetTextColor(name == private.selectedDBName and "INDICATOR" or "TEXT")
			:Draw()
	end
	private.CreateTableContent()
end

function private.QueryInputOnEnterPressed(input)
	local func, errStr = loadstring(input:GetValue())
	if not func then
		Log.PrintfUser("Failed to compile code: "..errStr)
		return
	end
	local tableElement = input:GetElement("__parent.table")
	local query = tableElement:GetContext()
	query:Reset()
	setfenv(func, { query = query })
	local ok, funcErrStr = pcall(func)
	if not ok then
		Log.PrintfUser("Failed to execute code: "..funcErrStr)
		return
	end
	tableElement:UpdateData(true)
end
