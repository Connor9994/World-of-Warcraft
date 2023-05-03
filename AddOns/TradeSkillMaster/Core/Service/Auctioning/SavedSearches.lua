-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local SavedSearches = TSM.Auctioning:NewPackage("SavedSearches")
local L = TSM.Include("Locale").GetTable()
local Log = TSM.Include("Util.Log")
local String = TSM.Include("Util.String")
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local Theme = TSM.Include("Util.Theme")
local Settings = TSM.Include("Service.Settings")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	db = nil,
}
local FILTER_SEP = "\001"
local MAX_RECENT_SEARCHES = 500



-- ============================================================================
-- Module Functions
-- ============================================================================

function SavedSearches.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "userData", "savedAuctioningSearches")

	-- remove duplicates
	local seen = TempTable.Acquire()
	for i = #private.settings.savedAuctioningSearches.filters, 1, -1 do
		local filter = private.settings.savedAuctioningSearches.filters[i]
		if seen[filter] then
			tremove(private.settings.savedAuctioningSearches.filters, i)
			tremove(private.settings.savedAuctioningSearches.searchTypes, i)
			private.settings.savedAuctioningSearches.name[filter] = nil
			private.settings.savedAuctioningSearches.isFavorite[filter] = nil
		else
			seen[filter] = true
		end
	end
	TempTable.Release(seen)

	-- remove old recent searches
	local remainingRecentSearches = MAX_RECENT_SEARCHES
	local numRemoved = 0
	for i = #private.settings.savedAuctioningSearches.filters, 1, -1 do
		local filter = private.settings.savedAuctioningSearches.filters
		if not private.settings.savedAuctioningSearches.isFavorite[filter] then
			if remainingRecentSearches > 0 then
				remainingRecentSearches = remainingRecentSearches - 1
			else
				tremove(private.settings.savedAuctioningSearches.filters, i)
				tremove(private.settings.savedAuctioningSearches.searchTypes, i)
				private.settings.savedAuctioningSearches.name[filter] = nil
				private.settings.savedAuctioningSearches.isFavorite[filter] = nil
				numRemoved = numRemoved + 1
			end
		end
	end
	if numRemoved > 0 then
		Log.Info("Removed %d old recent searches", numRemoved)
	end

	private.db = Database.NewSchema("AUCTIONING_SAVED_SEARCHES")
		:AddUniqueNumberField("index")
		:AddBooleanField("isFavorite")
		:AddStringField("searchType")
		:AddStringField("filter")
		:AddStringField("name")
		:AddIndex("index")
		:Commit()
	private.RebuildDB()
end

function SavedSearches.CreateRecentSearchesQuery()
	return private.db:NewQuery()
		:OrderBy("index", false)
end

function SavedSearches.CreateFavoriteSearchesQuery()
	return private.db:NewQuery()
		:Equal("isFavorite", true)
		:OrderBy("name", true)
end

function SavedSearches.SetSearchIsFavorite(dbRow, isFavorite)
	local filter = dbRow:GetField("filter")
	private.settings.savedAuctioningSearches.isFavorite[filter] = isFavorite or nil
	dbRow:SetField("isFavorite", isFavorite)
		:Update()
end

function SavedSearches.RenameSearch(dbRow, newName)
	local filter = dbRow:GetField("filter")
	private.settings.savedAuctioningSearches.name[filter] = newName
	dbRow:SetField("name", newName)
		:Update()
end

function SavedSearches.DeleteSearch(dbRow)
	local index, filter = dbRow:GetFields("index", "filter")
	tremove(private.settings.savedAuctioningSearches.filters, index)
	tremove(private.settings.savedAuctioningSearches.searchTypes, index)
	private.settings.savedAuctioningSearches.name[filter] = nil
	private.settings.savedAuctioningSearches.isFavorite[filter] = nil
	private.RebuildDB()
end

function SavedSearches.RecordSearch(searchList, searchType)
	assert(searchType == "postItems" or searchType == "postGroups" or searchType == "cancelGroups")
	local filter = table.concat(searchList, FILTER_SEP)
	for i, existingFilter in ipairs(private.settings.savedAuctioningSearches.filters) do
		local existingSearchType = private.settings.savedAuctioningSearches.searchTypes[i]
		if filter == existingFilter and searchType == existingSearchType then
			-- move this to the end of the list and rebuild the DB
			-- insert the existing filter so we don't need to update the isFavorite and name tables
			tremove(private.settings.savedAuctioningSearches.filters, i)
			tinsert(private.settings.savedAuctioningSearches.filters, existingFilter)
			tremove(private.settings.savedAuctioningSearches.searchTypes, i)
			tinsert(private.settings.savedAuctioningSearches.searchTypes, existingSearchType)
			private.RebuildDB()
			return
		end
	end

	-- didn't find an existing entry, so add a new one
	tinsert(private.settings.savedAuctioningSearches.filters, filter)
	tinsert(private.settings.savedAuctioningSearches.searchTypes, searchType)
	assert(#private.settings.savedAuctioningSearches.filters == #private.settings.savedAuctioningSearches.searchTypes)
	private.db:NewRow()
		:SetField("index", #private.settings.savedAuctioningSearches.filters)
		:SetField("isFavorite", false)
		:SetField("searchType", searchType)
		:SetField("filter", filter)
		:SetField("name", private.GetSearchName(filter, searchType))
		:Create()
end

function SavedSearches.FiltersToTable(dbRow, tbl)
	String.SafeSplit(dbRow:GetField("filter"), FILTER_SEP, tbl)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RebuildDB()
	assert(#private.settings.savedAuctioningSearches.filters == #private.settings.savedAuctioningSearches.searchTypes)
	private.db:TruncateAndBulkInsertStart()
	for index, filter in ipairs(private.settings.savedAuctioningSearches.filters) do
		local searchType = private.settings.savedAuctioningSearches.searchTypes[index]
		assert(searchType == "postItems" or searchType == "postGroups" or searchType == "cancelGroups")
		local name = private.settings.savedAuctioningSearches.name[filter] or private.GetSearchName(filter, searchType)
		local isFavorite = private.settings.savedAuctioningSearches.isFavorite[filter] and true or false
		private.db:BulkInsertNewRow(index, isFavorite, searchType, filter, name)
	end
	private.db:BulkInsertEnd()
end

function private.GetSearchName(filter, searchType)
	local filters = TempTable.Acquire()
	local searchTypeStr, numFiltersStr = nil, nil
	if filter == "" or strsub(filter, 1, 1) == FILTER_SEP then
		tinsert(filters, L["Base Group"])
	end
	if searchType == "postGroups" or searchType == "cancelGroups" then
		for groupPath in gmatch(filter, "[^"..FILTER_SEP.."]+") do
			local groupName = TSM.Groups.Path.GetName(groupPath)
			local level = select('#', strsplit(TSM.CONST.GROUP_SEP, groupPath))
			tinsert(filters, Theme.GetGroupColor(level):ColorText(groupName))
		end
		searchTypeStr = searchType == "postGroups" and L["Post Scan"] or L["Cancel Scan"]
		numFiltersStr = #filters == 1 and L["1 Group"] or format(L["%d Groups"], #filters)
	elseif searchType == "postItems" then
		local numItems = 0
		for itemString in gmatch(filter, "[^"..FILTER_SEP.."]+") do
			numItems = numItems + 1
			local coloredName = UIUtils.GetDisplayItemName(itemString)
			if coloredName then
				tinsert(filters, coloredName)
			end
		end
		searchTypeStr = L["Post Scan"]
		numFiltersStr = numItems == 1 and L["1 Item"] or format(L["%d Items"], numItems)
	else
		error("Unknown searchType: "..tostring(searchType))
	end
	local groupList = nil
	if #filters > 10 then
		groupList = table.concat(filters, ", ", 1, 10)..",..."
		TempTable.Release(filters)
	else
		groupList = strjoin(", ", TempTable.UnpackAndRelease(filters))
	end
	return format("%s (%s): %s", searchTypeStr, numFiltersStr, groupList)
end
