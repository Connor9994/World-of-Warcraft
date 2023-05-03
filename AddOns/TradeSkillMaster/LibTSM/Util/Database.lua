-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Database = TSM.Init("Util.Database") ---@class Util.Database
local Constants = TSM.Include("Util.DatabaseClasses.Constants")
local Schema = TSM.Include("Util.DatabaseClasses.Schema")
local Table = TSM.Include("Util.DatabaseClasses.DBTable")
local private = {
	dbByNameLookup = {},
	infoNameDB = nil,
	infoFieldDB = nil,
	attrsTemp = {},
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Database:OnModuleLoad(function()
	-- create our info database tables - don't use :Commit() to create these since that'll insert into these tables
	private.infoNameDB = Database.NewSchema("DEBUG_INFO_NAME")
		:AddUniqueStringField("name")
		:AddIndex("name")
		:Commit()
	private.infoFieldDB = Database.NewSchema("DEBUG_INFO_FIELD")
		:AddStringField("dbName")
		:AddStringField("field")
		:AddStringField("type")
		:AddStringField("attributes")
		:AddNumberField("order")
		:AddIndex("dbName")
		:Commit()

	Table.SetCreateCallback(private.OnTableCreate)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets a new DB schema object.
---@param name string The name of the schema
---@return DatabaseSchema @The schema object
function Database.NewSchema(name)
	return Schema.Get(name)
end

---Used to reference another field when making a DB query.
---@param otherFieldName string The name of the other field
---@return userdata @A special token to indicate we are referencing another field
---@return string @The name of the other field
function Database.OtherFieldQueryParam(otherFieldName)
	return Constants.OTHER_FIELD_QUERY_PARAM, otherFieldName
end

---Used to reference a bound parameter when making a DB query.
---@return userdata @A special token to indicate we are referencing a bound parameter
function Database.BoundQueryParam()
	return Constants.BOUND_QUERY_PARAM
end



-- ============================================================================
-- Debug Functions
-- ============================================================================

---Debug function which iterates over all DB schema names.
---@return fun(): number, string @The iterator with fields: `index`, `name`
function Database.InfoNameIterator()
	return private.infoNameDB:NewQuery()
		:Select("name")
		:OrderBy("name", true)
		:IteratorAndRelease()
end

---Debug function which creates an info query for a DB.
---@param dbName string The name of the DB table
---@return DatabaseQuery @A query of the info DB
function Database.CreateInfoFieldQuery(dbName)
	return private.infoFieldDB:NewQuery()
		:Equal("dbName", dbName)
end

---Debug function which gets the number of rows in a DB table.
---@param dbName string The name of the DB table
---@return number @The number of rows
function Database.GetNumRows(dbName)
	return private.dbByNameLookup[dbName]:GetNumRows()
end

---Debug function which gets the number of active queries for a DB table.
---@param dbName string The name of the DB table
---@return number @The number of active rows
function Database.GetNumActiveQueries(dbName)
	return #private.dbByNameLookup[dbName]._queries
end

---Debug function which creates a query for a specified DB table by name.
---@param dbName string The name of the DB table
---@return DatabaseQuery @The new query
function Database.CreateDBQuery(dbName)
	return private.dbByNameLookup[dbName]:NewQuery()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OnTableCreate(tbl, schema)
	local name = schema:_GetName()
	assert(not private.dbByNameLookup[name], "A database with this name already exists")
	private.dbByNameLookup[name] = tbl

	private.infoNameDB:NewRow()
		:SetField("name", name)
		:Create()

	for index, fieldName, fieldType, isIndex, isUnique, isTrigram, smartMap, smartMapInput in schema:_FieldIterator() do
		assert(#private.attrsTemp == 0)
		if isIndex then
			tinsert(private.attrsTemp, "index")
		end
		if isUnique then
			tinsert(private.attrsTemp, "unique")
		end
		if isTrigram then
			tinsert(private.attrsTemp, "trigram")
		end
		if smartMap then
			tinsert(private.attrsTemp, "SmartMap("..smartMapInput..")")
		end
		private.infoFieldDB:NewRow()
			:SetField("dbName", name)
			:SetField("field", fieldName)
			:SetField("type", fieldType)
			:SetField("attributes", table.concat(private.attrsTemp, ","))
			:SetField("order", index)
			:Create()
		wipe(private.attrsTemp)
	end
end
