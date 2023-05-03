local Register = Auctioneer:Boot("Register")

-- Hook in to get told when the AH is loaded.
local frame = Register._:Frame()
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("AUCTION_HOUSE_SHOW")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", Register._.Internal.OnEvent)

Auctioneer:Booted()
