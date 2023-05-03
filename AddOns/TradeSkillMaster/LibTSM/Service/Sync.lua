-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Sync = TSM.Init("Service.Sync") ---@class Service.Sync
local Connection = TSM.Include("Service.SyncClasses.Connection")
local RPC = TSM.Include("Service.SyncClasses.RPC")
local Mirror = TSM.Include("Service.SyncClasses.Mirror")



-- ============================================================================
-- Module Functions
-- ============================================================================

function Sync.RegisterConnectionChangedCallback(callback)
	Connection.RegisterConnectionChangedCallback(callback)
end

---Registers an RPC.
---@param name string The name of the RPC (must be globally-unique)
---@param func function The function which implements the RPC
function Sync.RegisterRPC(name, func)
	RPC.Register(name, func)
end

---Calls an RPC.
---@param name string The name of the RPC
---@param targetPlayer string The player to send the RPC to
---@param handler fun(success: boolean, targetPlayer: string, ...: any) A callback function which handles the result
---@param ... any Arguments to pass to the RPC
---@return boolean @Whether or not the RPC was sent successfully
---@return number? @The estimated time the RPC will take to send (if successful)
function Sync.CallRPC(name, targetPlayer, handler, ...)
	return RPC.Call(name, targetPlayer, handler, ...)
end

function Sync.GetConnectionStatus(account)
	return Connection.GetStatus(account)
end

function Sync.GetConnectedCharacterByAccount(account)
	return Connection.GetConnectedCharacterByAccount(account)
end

function Sync.GetMirrorStatus(account)
	return Mirror.GetStatus(account)
end

function Sync.RegisterMirrorCallback(callback)
	Mirror.RegisterCallback(callback)
end

function Sync.EstablishConnection(character)
	return Connection.Establish(character)
end

function Sync.GetNewAccountStatus()
	return Connection.GetNewAccountStatus()
end

function Sync.RemoveAccount(account)
	Connection.Remove(account)
end
