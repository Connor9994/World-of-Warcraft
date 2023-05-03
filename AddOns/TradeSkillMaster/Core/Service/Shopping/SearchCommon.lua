-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local SearchCommon = TSM.Shopping:NewPackage("SearchCommon")
local Delay = TSM.Include("Util.Delay")
local Threading = TSM.Include("Service.Threading")
local private = {
	findThreadId = nil,
	callback = nil,
	isRunning = false,
	pendingStartArgs = {},
	startTimer = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function SearchCommon.OnInitialize()
	-- initialize threads
	private.findThreadId = Threading.New("FIND_SEARCH", private.FindThread)
	Threading.SetCallback(private.findThreadId, private.ThreadCallback)
	private.startTimer = Delay.CreateTimer("SEARCH_COMMON_START", private.StartThread)
end

function SearchCommon.StartFindAuction(auctionScan, auction, callback, noSeller)
	wipe(private.pendingStartArgs)
	private.pendingStartArgs.auctionScan = auctionScan
	private.pendingStartArgs.auction = auction
	private.pendingStartArgs.callback = callback
	private.pendingStartArgs.noSeller = noSeller
	private.startTimer:RunForTime(0)
end

function SearchCommon.StopFindAuction(noKill)
	wipe(private.pendingStartArgs)
	private.callback = nil
	if not noKill then
		Threading.Kill(private.findThreadId)
	end
end



-- ============================================================================
-- Find Thread
-- ============================================================================


function private.FindThread(auctionScan, row, noSeller)
	return auctionScan:FindAuctionThreaded(row, noSeller)
end

function private.StartThread()
	if not private.pendingStartArgs.auctionScan then
		return
	end
	if private.isRunning then
		private.startTimer:RunForTime(0.1)
		return
	end
	private.isRunning = true
	private.callback = private.pendingStartArgs.callback
	Threading.Start(private.findThreadId, private.pendingStartArgs.auctionScan, private.pendingStartArgs.auction, private.pendingStartArgs.noSeller)
	wipe(private.pendingStartArgs)
end

function private.ThreadCallback(...)
	private.isRunning = false
	if private.callback then
		private.callback(...)
	end
end
