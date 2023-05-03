local name,ZGV = ...
if not (ZGV and ZGV.ItemScore) then return end

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local ItemScore = ZGV.ItemScore
local AutoEquip -- Not available at load.
local QuestItem = {}
ItemScore.QuestItem = QuestItem

-- Selecting Best Quest reward --
function QuestItem:HideQuestRewardGlow()
	if self.GlowFrame then
		self.GlowFrame:Hide()
		self.GlowFrame:ClearAllPoints()
	end
end

function QuestItem:ShowQuestRewardGlow(index,selling)
	if not index then return end
	local b = G["QuestInfoRewardsFrameQuestInfoItem"..index]

	if not self.GlowFrame then
		self.GlowFrame = CHAIN(ZGV.CreateFrameWithBG("Frame","",QuestFrameRewardPanel))
			:SetBackdrop({bgFile="",edgeFile=ZGV.DIR.."\\Skins\\glowborder", edgeSize=5})
			:SetSize(109,45)
			:SetFrameStrata("HIGH")
		.__END

			--Gold Coin to show that we picked an item because of it's sell value. Not used at the moment
			--self.GlowFrame.tex = CHAIN(self.GlowFrame:CreateTexture())
			--	:SetTexture("Interface\\MONEYFRAME\\UI-GoldIcon")
			--	:SetSize(15,15)
			--	:SetPoint("TOPRIGHT")
			--.__END
	end

	self.GlowFrame:SetPoint("LEFT",b,"LEFT",37,3)
	self.GlowFrame:Show()
		--self.GlowFrame.tex:SetShown(selling)
end

function QuestItem:IsQuestItemsReady()
	local totalrewards=GetNumQuestChoices()
	if totalrewards < 1 then return end --no items and this should never have been called.

	local index
	for index=1, totalrewards do --Loop through all items (maybe max 6) before we work with any.
		local link= GetQuestItemLink("choice",index)
		local details = link and ZGV.ItemScore:GetItemDetails(link)
		if not (link and details) then return end --Need to wait for iteminfo
	end

	return true
end

function QuestItem:GetQuestRewardIndex()
	local totalrewards = GetNumQuestChoices()
	if totalrewards < 1 then return nil,"No items to pick" end
	if totalrewards == 1 then return 1,"Only one item" end

	if not self:IsQuestItemsReady() then return -5,"Items not ready" end

	local best_upgrade_change, best_upgrade_index = 0, 0
	local best_sell_value, best_sell_index = 0, 0

	local weapons_found = false
	ItemScore.Upgrades:ResetWeaponQueue("onlytemp")

	for index=1, totalrewards do 
		local itemlink = GetQuestItemLink("choice",index)

		local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = ZGV:GetItemInfo(itemlink)

		if classID==5 and subclassID==2 then return nil,"Context token" end

		local is_upgrade, _, change = ItemScore.Upgrades:IsUpgrade(itemlink)

		if is_upgrade then 
			if change > best_upgrade_change then
				best_upgrade_change = change
				best_upgrade_index = index
			end
		end

		if sellPrice > best_sell_value then
			best_sell_value = sellPrice
			best_sell_index = index
		end

		if ItemScore.Upgrades:QueueWeapon(itemlink) then weapons_found = true end
		
	end

	if weapons_found then
		local mh, oh, th = ItemScore.Upgrades:ProcessWeaponQueue()
		if (mh or oh or th) then
			for index=1, totalrewards do 
				local itemlink = GetQuestItemLink("choice",index)
				itemlink = ItemScore.strip_link(itemlink)
				if (mh and mh.itemlink) == itemlink or (oh and oh.itemlink) == itemlink or (th and th.itemlink) == itemlink then
					best_upgrade_index = index
				end
			end
		end
	end


	if best_upgrade_index > 0 then
		return best_upgrade_index,"New upgrade found"
	elseif best_sell_index > 0 then
		return best_sell_index,"Item picked because it is worth most money"
	end

	return nil,"Error"
end

--== Suggesting Quest item for current step

local function QuestItem_StepReset(step)
	local self = QuestItem
	self.StepTimer = GetTime()

	if self.QuestItemPopup and self.QuestItemPopup:IsVisible() then
		self.QuestItemPopup:Hide() --show it again if needed.
	end
end

--[[
	Tests the current step to see if any of the goals have a quest item that is required for them.

	Looks at goals with the action equipped. Which is a guide telling the user to equip an item.
	Also looks at the goal.questid and sees if that qid is associated with an itemid in our cache.

	Returns questid,itemid if a pair is found.
--]]

function QuestItem:TestCurStepForQuestItem()
	local cur = ZGV.CurrentStep
	if not cur then return end

	local itemid, questid

	for i,goal in ipairs(cur.goals) do
		if goal.action == "equipped" then itemid = goal.targetid or goal.itemid end
		if goal.questid then questid = goal.questid end

		if itemid and questid then 
			ZGV.db.profile.questitemcache[questid]=itemid
			return questid, itemid 
		end
		if goal.action == "unequipped" and questid then 
			ZGV.db.profile.questitemcache[questid]=nil
		end
	end
	if questid then
		return questid, ZGV.db.profile.questitemcache[questid] 
	end		
end

local hard_protected = {
	[20408] = {zone=1451}, -- Twilight Cultist Cowl, while in Silithus
	[20406] = {zone=1451}, -- Twilight Cultist Mantle, while in Silithus
	[20407] = {zone=1451}, -- Twilight Cultist Robe, while in Silithus
}

local ItemCache = ItemScore.ItemCache
function QuestItem:IsProtectedQuestItem(itemlink)
	local item = ItemScore:GetItemDetails(itemlink)
	if not (item and item.itemid) then return false,false end

	local hard_data = hard_protected[item.itemid]
	if hard_data then
		if hard_data.zone then
			local x,y,map = LibRover:GetPlayerPosition()
			if map == hard_data.zone then 
				return true, item.slot
			end
		end
		if hard_data.quest then
			if C_QuestLog.IsOnQuest(hard_data.quest) then
				return true, item.slot
			end
		end
	end

	local itemid = item.itemid

	local questid, questitemid = QuestItem:TestCurStepForQuestItem()
	if not (questid and questitemid) then return false,false end

	if item.itemid == questitemid then
		return true, item.slot
	else
		return false, false
	end
end

local function CreateQuestPopup()
	local CHAIN = ZGV.ChainCall
	local F = ZGV.PopupHandler:NewPopup("ZygorQuestPopup","default","stealth")

	local function showTooltip(self,linkData) GameTooltip:SetOwner(self,"ANCHOR_BOTTOMLEFT") GameTooltip:SetHyperlink(linkData) GameTooltip:Show() end

	local function hideTooltip() GameTooltip:Hide() end

	F:SetWidth(300)

	-- TODO make it show the hyperlink when you hover over it. Make it a frame w/ texture. OnEnter itemname_new:GetScript("OnHyperlinkEnter")()?
	-- Item Icon.
	F.tex = CHAIN(F:CreateTexture()) :SetPoint("TOP",F.text,"BOTTOM",0,-3) :SetSize(35,35).__END

	-- Hyperlink of the item being equipped.
	F.itemname_new=CHAIN(CreateFrame("EditBox",nil,F))
		:SetHeight(13) :SetFont(FONT,13) :SetPoint("TOP",F.tex,"BOTTOM",0,-3)
		:SetHyperlinksEnabled(true) :Disable() :SetJustifyH("CENTER")
		:SetCursorPosition(0)
		:SetWidth(F:GetWidth()-15) -- -15 for the gap on each side
		:SetScript("OnHyperlinkEnter", showTooltip) :SetScript("OnHyperlinkLeave", hideTooltip)
	.__END

	F.text:SetFont(FONT,13)

	F.text2=CHAIN(F.text2)
		:SetPoint("TOP",F.itemname_new,"BOTTOM",0,-5)
		:SetJustifyH("CENTER")
		:SetFont(FONT,13)
		:SetSpacing(5)
	.__END

	F.OnAccept = function(self)
		QuestItem_StepReset(0) -- Reset the onupdate timer so that popup doesn't appear before we can equip the item.

		-- Values are stored in ZGV.db.profile so that they don't disappear if we reload.
		if not self.reequipping then
			ZGV.db.profile.questitemid = self.itemid
			ZGV.db.profile.questitemreplaced = self.replacing
		else
			self.reequipping = nil
			ZGV.db.profile.questitemid = nil
			ZGV.db.profile.questitemreplaced = nil
		end

		--equip it!
		EquipItemByName(self.itemid)
	end

	F.OnDecline = function(self)
		self.reequipping = nil
		ZGV.db.profile.questitemcache[self.questid] = nil
		ZGV.db.profile.questitemid = nil
		ZGV.db.profile.questitemreplaced = nil
	end

	F.OnEscape =  F.OnDecline
	F.AdjustSize = function(self) -- Need to change this because it is different for this kind of Popup
		local offsets = 10 + 10 + 5 + 10 --Logo and top + text and buttons + buttons and bottom
		self:SetHeight(offsets + self.text:GetStringHeight() + self.tex:GetHeight() + self.itemname_new:GetHeight() + self.text2:GetStringHeight() + (self.logo:IsVisible() and self.logo:GetHeight() or 5) + self.acceptbutton:GetHeight() )
	end

	F.equippingQuestItemSettings = function(self)
		local notifcationText = L['notifcenter_quest_text']
		local tooltipText = L['notifcenter_gen_popup_tooltip']
		local title = L['notifcenter_gear_title']

		local function OnOpen() -- If the guide is completed then we know all the needed trainings
			local questid,questitemid = QuestItem:TestCurStepForQuestItem()

			if not questid or self.questid~=questid or self.itemid~=questitemid then
				if ZGV.Testing.DontHidePopups then return end
				ZGV.NotificationCenter:RemoveButton(self:GetName())
			end
		end

		return notifcationText,title,tooltipText,nil,nil,nil,nil,OnOpen
	end

	F.equippingNormalItemSettings = function(self)
		local notifcationText = L['notifcenter_quest_text']
		local tooltipText = L['notifcenter_gen_popup_tooltip']
		local title = L['notifcenter_gear_title']

		local function OnOpen() -- If the guide is completed then we know all the needed trainings
			if not ZGV.db.profile.questitemreplaced or GetItemCount(ZGV.db.profile.questitemreplaced) < 1 then
				if ZGV.Testing.DontHidePopups then return end
				ZGV.NotificationCenter:RemoveButton(self:GetName())
			end
		end

		return notifcationText,title,tooltipText,nil,nil,nil,nil,OnOpen
	end

	return F
end

function QuestItem:ModifyQuestPopup(questid,itemid,popupNum,replacing)
	if not questid or not itemid then return end
	self:Debug(("Modding the Popup and showing it. Equipping %s, Replacing %s"):format((select(2,ZGV:GetItemInfo(itemid))),(select(2,ZGV:GetItemInfo(replacing))) or "empty"))

	if not self.QuestItemPopup then return end
	local F = self.QuestItemPopup
	local text1,text2 = L['itemscore_questitem1'] , ""

	F.itemid = itemid
	F.questid = questid
	F.replacing = replacing

	if popupNum==1 then
		F.returnMinimizeSettings = F.equippingQuestItemSettings
		text2 = L['itemscore_questitem2']
	elseif popupNum==2 then
		F.returnMinimizeSettings = F.equippingNormalItemSettings
		F.reequipping = true
		text2 = L['itemscore_questitem3']
	end

	F.tex:SetTexture((select(10,ZGV:GetItemInfo(itemid))))
	F.itemname_new:SetText((select(2,ZGV:GetItemInfo(itemid))))
	F.itemname_new:SetCursorPosition(0)

	F:SetText(text1,text2)

	if AutoEquip.Popup and AutoEquip.Popup:IsVisible() then
		 --Don't play nice, if it is showing something it could be the item we are trying to equip so hide it until we are done.
		AutoEquip.Popup:OnEscape() AutoEquip.Popup:Hide()
	end

	self.QuestItemPopup:Show()
end
--/run ZGV.ItemScore:FoundQuestItemForCurStep(235,19019)
function QuestItem:FoundQuestItemForCurStep(questid,quest_itemid)
	self:Debug( ("Found a quest item to equip for the current step. Quest: %d , Item : %s"):format(questid,(select(2,ZGV:GetItemInfo(quest_itemid))) or "empty"))

	local equiptype = select(9,ZGV:GetItemInfo(quest_itemid))
	local itemlink_slot1,itemlink_slot2 = ItemScore:GetItemByType(equiptype)
	
	if not itemlink_slot1 then itemlink_slot1 = 0 end

	if not self.QuestItemPopup then
		self.QuestItemPopup = CreateQuestPopup()
	end

	if not self.QuestItemPopup:IsVisible() then -- and not ZGV.db.profile.questitemid then --the slot checks should cover it, but QuestItemEquipped is udated instantly and doesn't wait for the item to be put on.
		local itemid1 = itemlink_slot1 and tonumber(itemlink_slot1:match("item:(%d+)"))
		local itemid2 = itemlink_slot2 and tonumber(itemlink_slot2:match("item:(%d+)"))
		if itemid1~=quest_itemid and itemid2~=quest_itemid then
			self:ModifyQuestPopup(questid,quest_itemid,1,itemlink_slot1)
		end
	end
end

function QuestItem:ReEquipNormalItem()
	--self:Debug("Attempting to requip a item.")
	local normItemid = ZGV.db.profile.questitemreplaced
	local questItemid = ZGV.db.profile.questitemid

	if normItemid == 0 or GetItemCount(normItemid) < 1 then --They had no item when they started so don't do anything. or they got rid of the item they were using.
		if self.QuestItemPopup then self.QuestItemPopup.reequipping = nil end
		ZGV.db.profile.questitemid = nil
		ZGV.db.profile.questitemreplaced = nil
		return
	end

	local equipslot = select(9,ZGV:GetItemInfo(questItemid))
	local itemlink_slot1,itemlink_slot2 = ItemScore:GetItemInSlot(equipslot)

	if not self.QuestItemPopup then
		self.QuestItemPopup = CreateQuestPopup()
	end
	local itemid1 = itemlink_slot1 and tonumber(itemlink_slot1:match("item:(%d+)"))
	if not self.QuestItemPopup:IsVisible() and itemid1==questItemid then
	--the slot checks should cover it, but QuestItemEquipped is udated instantly and doesn't wait for the item to be put on.
		self:ModifyQuestPopup(self.QuestItemPopup.questid or 0,normItemid,2,questItemid)
		ZGV.db.profile.questitemcache[self.QuestItemPopup.questid ] = nil
	end
	--[[
	self.QuestItemPopup.reequipping = nil
	ZGV.db.profile.questitemid = nil
	ZGV.db.profile.questitemreplaced = nil
	--]]
end

--== General

function QuestItem:Startup()
	AutoEquip = ItemScore.AutoEquip
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",QuestItem_StepReset)
end

function QuestItem:Debug(msg,...)
	ItemScore:Debug("&questitem "..msg, ... )
end

tinsert(ZGV.startups,{"Item-Quest startup",function(self)
	QuestItem:Startup()
end})