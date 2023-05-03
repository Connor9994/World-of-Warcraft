if not Auctioneer then return end

-- Create a new Auctioneer module.
local Module = Auctioneer:Module("Mailbox")
local Const = Auctioneer:Const()
Module.bootType = Const.BootType.PlayerEnteringWorld

-- This is triggered when a new auction email is seen.
Const.Trigger:Add("AuctionHouseMail")

-- Hook our methods.
function Module:Boot(hook)
	hook(Const.InboxHeaderInfo, Module.InboxHeaderInfo)

	Module:ExpireData()
end

-- These are the known localised subject lines.
local subjects = {
	Won = AUCTION_WON_MAIL_SUBJECT,
	Sold = AUCTION_SOLD_MAIL_SUBJECT,
	Outbid = AUCTION_OUTBID_MAIL_SUBJECT,
	Removed = AUCTION_REMOVED_MAIL_SUBJECT,
	Invoice = AUCTION_INVOICE_MAIL_SUBJECT,
	Expired = AUCTION_EXPIRED_MAIL_SUBJECT,
}

-- Convert the subject lines to a find string.
for k, v in pairs(subjects) do
	subjects[k] = gsub(v, "%%s", ".+")
end

function Module:InboxHeaderInfo(header)
	local sender = header.sender
	local wasReturned = header.wasReturned
	local textCreated = header.textCreated
	local canReply = header.canReply
	local itemQuantity = header.itemQuantity
	local itemLink = header.itemLink

	-- Is this mail an actual original authentic AuctionHouse mail?
	-- Make sure it's not just a look-alike, but the real deal.
	if sender == BUTTON_LAG_AUCTIONHOUSE and not wasReturned and textCreated and not canReply and itemQuantity and itemLink then
		if not AuctioneerLocal.SeenMailSigs then
			AuctioneerLocal.SeenMailSigs = {}
		end

		local subject = header.subject

		for mailType, search in pairs(subjects) do
			if strfind(subject, search) then
				-- We keep track of auction items seen mail over 5 second time-slices.
				-- If you get 2 or more of the same emails for auction items over the
				-- same 10 second (2.5 secs either side of the 5 second slice) window,
				-- we won't track the duplicates.
				local arrivalTime = (GetServerTime() - (30 - header.daysLeft) * 86400) / 5
				local arrivalPoint = floor(arrivalTime + 0.5)

				local linkType, linkOptions, itemName = LinkUtil.ExtractLink(header.itemLink)
				local itemQuantity = header.itemQuantity
				local money = header.money
				local sig

				-- Because the arrival time is calculated off server time, server lag
				-- may affect it slightly, so we check up or down depending on how we
				-- rounded to see if we already have an entry for this email or one
				-- very much like it.
				if arrivalTime >= arrivalPoint then -- We rounded down, so check up.
					sig = format("%d:%s:%d:%d:%s:%s", arrivalPoint + 1,
						mailType, money, itemQuantity, linkType, linkOptions)
				else -- We rounded up, so check down
					sig = format("%d:%s:%d:%d:%s:%s", arrivalPoint - 1,
						mailType, money, itemQuantity, linkType, linkOptions)
				end
				if AuctioneerLocal.SeenMailSigs[sig] then
					-- Seen it, eject!
					return
				end

				-- Still nothing, so set it to the current point.
				sig = format("%d:%s:%d:%d:%s:%s", arrivalPoint,
					mailType, money, itemQuantity, linkType, linkOptions)
				if AuctioneerLocal.SeenMailSigs[sig] then
					-- Seen it, eject!
					return
				end

				-- This is the payload for our AuctionHouseMail event.
				local mail = {
					mailType = mailType,
					sig = sig,
					arrivalPoint = arrivalPoint,

					icon = icon,
					itemName = itemName,
					itemLink = itemLink,
					itemQuantity = itemQuantity,
					money = money,
				}

				-- Send the observerd mail to any modules that are listening.
				Auctioneer:Trigger(Const.AuctionHouseMail, mailType, mail)
				AuctioneerLocal.SeenMailSigs[sig] = true
			end
		end
	end
end

-- Expires mail "seen" items from the seen list after 45 days to stop it from
-- just growing and growing without end.
function Module:ExpireData()
	local expirePoint = (GetServerTime() - 45 * 86400) / 5 -- 45 days ago.

	if not AuctioneerLocal.SeenMailSigs then
		return
	end

	for sig, b in pairs(AuctioneerLocal.SeenMailSigs) do
		local arrivalPoint = strsplit(":", sig, 2)
		arrivalPoint = tonumber(arrivalPoint)
		if arrivalPoint < expirePoint then
			AuctioneerLocal.SeenMailSigs[sig] = nil
		end
	end
end
