local GUI = Auctioneer:Boot("GUI")
GUI.Components = {}

local l = {}

local lines = {
	type = "lines"
}
local linesMeta = {__index = lines}

local lineFrame = {
	type = "lineFrame",
}
local lineFrameMeta = {__index = lineFrame}

local singleLine = {
	type = "singleLine",
}
local singleLineMeta = {__index = singleLine}

local doubleLine = {
	type = "doubleLine",
}
local doubleLineMeta = {__index = doubleLine}

local moneyLine = {
	type = "moneyLine",
}
local moneyLineMeta = {__index = moneyLine}

local moneyView = {
	type = "moneyView"
}
local moneyViewMeta = {__index = moneyView}


local function newFrom(meta, obj)
	obj = obj or {}
	setmetatable(obj, meta)
	return obj
end

function GUI.Components:Lines(parent)
	return newFrom(linesMeta, {
		parent = parent,
		entries = {},
	})
end

function GUI.Components:MoneyView(parent, graphic, showCopper)
	return l:createMoneyView(parent, graphic, showCopper)
end

function GUI:Money(amount)
	amount = tonumber(amount)
	local gold = math.floor(amount / 10000)
	local silver = math.floor(amount / 100 - gold * 100)
	local copper = math.floor(amount - gold * 10000 - silver * 100)

	local copperText = ""..copper
	local silverText = ""..silver
	local goldText = ""..gold

	if (silver > 0 or gold > 0) then
		copperText = strsub("0"..copper, -2)
	end

	if (gold > 0) then
		silverText = strsub("0"..silver, -2)
	end

	while true do
		goldText, k = string.gsub(goldText, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then
			break
		end
	end

	return {
		goldText, silverText, copperText,
		amount = amount,
		gold = gold,
		silver = silver,
		copper = copper,
		goldText = goldText,
		silverText = silverText,
		copperText = copperText,
	}
end

-- Frame, FontString and Texture pool.

local framePool = {}
local fontPool = {}
local texturePool = {}

local function freeUp(obj, ...)
	for _, k in ipairs({...}) do
		if obj[k] and obj[k].Free then
			obj[k]:Free()
		end
		obj[k] = nil
	end
end

local function freeList(list)
	for k, v in ipairs(list) do
		if v and v.Free then
			v:Free()
		end
		list[k] = nil
	end
end

local function freeFrame(frame)
	frame:Hide()
	frame:ClearAllPoints()
	freeList(frame.elements)
	if not framePool then
		framePool = {}
	end
	tinsert(framePool, frame)
end

local function addElement(frame, element)
	tinsert(frame.elements, element)
end

local function getFrame(parent)
	local frame = tremove(framePool)
	if not frame then
		frame = CreateFrame("FRAME", nil, parent)
		frame.elements = {}
		frame.Free = freeFrame
		frame.Add = addElement
	end
	frame:SetParent(parent)
	frame:ClearAllPoints()
	frame:Show()
	return frame
end

local function freeTexture(texture)
	texture:Hide()
	texture:ClearAllPoints()
	tinsert(texturePool, texture)
end

local function getTexture(parent, file, r, g, b)
	file = file or ""
	r = r or 1
	g = g or 1
	b = b or 1

	local texture = tremove(texturePool)
  if not texture then
		texture = parent:CreateTexture(nil, "BACKGROUND")
		texture.Free = freeTexture
  end
	texture:SetParent(parent)
	texture:SetDrawLayer("BACKGROUND")
	texture:ClearAllPoints()
	texture:SetTexture(file)
	texture:SetVertexColor(r, g, b)
	texture:Show()
  return texture
end

local function freeFontString(fontString)
	fontString:Hide()
	fontString:ClearAllPoints()
	tinsert(fontPool, fontString)
end

local function getFontString(parent, size, align, font)
	font = font or "ARIALN"
	align = align or "LEFT"
	size = size or 12

	local fontString = tremove(fontPool)
  if not fontString then
		fontString = parent:CreateFontString(nil, "OVERLAY")
		fontString.Free = freeFontString
  end
	fontString:SetParent(parent)
	fontString:SetFont("Fonts\\"..font..".TTF", size, "OUTLINE")
	fontString:SetDrawLayer("OVERLAY")
	fontString:SetJustifyH(align)
	fontString:SetJustifyV("CENTER")
	fontString:ClearAllPoints()
	fontString:SetWordWrap(false)
	fontString:SetTextColor(0.9, 0.9, 0.9)
	fontString:SetText("")
	fontString:Show()
  return fontString
end

function lineFrame:Free()
	freeUp(self, "frame")
end
function lineFrame:Frame()
	return self.frame
end

function singleLine:Free()
	freeUp(self, "line", "label")
end
function singleLine:Frame()
	return self.line:Frame()
end
function singleLine:Set(label)
	self.label:SetText(label)
end

function doubleLine:Free()
	freeUp(self, "line", "label", "right")
end
function doubleLine:Frame()
	return self.line:Frame()
end
function doubleLine:Set(label, right)
	self.label:SetText(label)
	self.right:SetText(right)
end

function moneyLine:Free()
	freeUp(self, "line", "label", "money")
end
function moneyLine:Frame()
	return self.line:Frame()
end
function moneyLine:Set(label, amount)
	self.label:SetText(label)
	self.money:Set(amount)
end

function moneyView:Free()
	freeUp(self, "container", "gold", "silver", "copper", "goldIcon", "silverIcon", "copperIcon")
end
function moneyView:Frame()
	return self.container
end
function moneyView:Set(amount)
	local gold, silver, copper
	if amount then
		local money = Auctioneer:Money(amount)

		if money.gold > 0 then
			gold = money.goldText
			silver = money.silverText
			copper = money.copperText
		elseif money.silver > 0 then
			silver = money.silverText
			copper = money.copperText
		else
			copper = money.copperText
		end

		if not self.copper then
			copper = nil
			silver = money.silverText
		end
	end

	if gold then
		self.gold:SetText(gold)
		if self.goldIcon then
			self.goldIcon:Show()
		end
	else
		self.gold:SetText("")
		if self.goldIcon then
			self.goldIcon:Hide()
		end
	end

	if silver then
		self.silver:SetText(silver)
		if self.silverIcon then
			self.silverIcon:Show()
		end
	else
		self.silver:SetText("")
		if self.silverIcon then
			self.silverIcon:Hide()
		end
	end

	if copper then
		self.copper:SetText(copper)
		if self.copperIcon then
			self.copperIcon:Show()
		end
	elseif self.copper then
		self.copper:SetText("")
		if self.copperIcon then
			self.copperIcon:Hide()
		end
	end
end

function l:createMoneyView(parent, noGraphic, showCopper)
	local view = {}
	local graphic = not noGraphic

	local container = getFrame(parent)
	view.container = container

	local pos = 0
	if showCopper then
		if graphic then
			local copperIcon = getTexture(container, "Interface\\MoneyFrame\\UI-CopperIcon")
			copperIcon:SetPoint("TOPRIGHT", container, "TOPRIGHT", -pos, 0)
			copperIcon:SetWidth(12)
			copperIcon:SetHeight(12)
			view.copperIcon = copperIcon
			pos = pos + 12
		end

		local copper = getFontString(container, 12, "RIGHT")
		copper:SetPoint("TOPRIGHT", container, "TOPRIGHT", -pos, 0)
		copper:SetWidth(18)
		copper:SetHeight(14)
		view.copper = copper
		pos = pos + 18
	end

	if graphic then
		local silverIcon = getTexture(container, "Interface\\MoneyFrame\\UI-SilverIcon")
		silverIcon:SetPoint("TOPRIGHT", container, "TOPRIGHT", -pos, 0)
		silverIcon:SetWidth(12)
		silverIcon:SetHeight(12)
		view.silverIcon = silverIcon
		pos = pos + 12
	end

	local silver = getFontString(container, 12, "RIGHT")
	silver:SetPoint("TOPRIGHT", container, "TOPRIGHT", -pos, 0)
	silver:SetWidth(18)
	silver:SetHeight(14)
	view.silver = silver
	pos = pos + 18

	if graphic then
		local goldIcon = getTexture(container, "Interface\\MoneyFrame\\UI-GoldIcon")
		goldIcon:SetPoint("TOPRIGHT", container, "TOPRIGHT", -pos, 0)
		goldIcon:SetWidth(12)
		goldIcon:SetHeight(12)
		view.goldIcon = goldIcon
		pos = pos + 12
	end

	local gold = getFontString(container, 12, "RIGHT")
	gold:SetPoint("TOPRIGHT", container, "TOPRIGHT", -pos, 0)
	gold:SetWidth(60)
	gold:SetHeight(14)
	view.gold = gold
	pos = pos + 60

	container:SetWidth(pos)
	container:SetHeight(14)

	return newFrom(moneyViewMeta, view)
end

function lines:FontString(size, align, font)
	return getFontString(self.parent, size, align, font)
end

function lines:Texture(texture, r, g, b)
	return getTexture(self.parent, texture, r, g, b)
end

function lines:Frame()
	return getFrame(self.parent)
end

function lines:Free()
	freeList(self.entries)
end

-- A line is a frame that you can add your own stuff into.
-- Call frame:Add(element) with elements you add if you want their :Free()
-- method to be called when the frame is released back into the pool.
function lines:AddLine(size)
	local frame = self:Frame(size)
	if #self.entries == 0 then
		frame:SetPoint("TOPLEFT", self.parent, "TOPLEFT", 0, 0)
	else
		local lastLine = self.entries[#self.entries]
		frame:SetPoint("TOPLEFT", lastLine:Frame(), "BOTTOMLEFT", 0, 0)
	end
	frame:SetPoint("RIGHT", self.parent, "RIGHT", 0, 0)
	frame:SetHeight(size)

	local lineFrame = newFrom(lineFrameMeta, {
		frame = frame,
	})
	return lineFrame
end

-- A single line is a long piece of text that is optionally aligned.
function lines:AddSingleLine(size, align, font)
	size = size or 12
	local line = self:AddLine(size + 4)
	local label = getFontString(line:Frame(), size, align, font)

	label:SetAllPoints()

	local singleLine = newFrom(singleLineMeta, {
		line = line,
		label = label,
	})
	tinsert(self.entries, singleLine)
	return singleLine
end

-- A double line is a line split in half with a left and right side.
-- Provide an offset if you don't want a 50/50 middle split.
function lines:AddDoubleLine(size, font, offset)
	size = size or 12
	offset = offset or 0

	local line = self:AddLine(size + 4)
	local lineFrame = line:Frame()

	if offset > 0.0 and offset < 1.0 then
		-- offset is a percent of total width to place the split at.
		local frameWidth = lineFrame:GetWidth()
		offset = frameWidth * offset - frameWidth / 2
	end

	local label = getFontString(line:Frame(), size, "LEFT", font)
	label:SetPoint("TOPLEFT", lineFrame, "TOPLEFT")
	label:SetPoint("BOTTOMRIGHT", lineFrame, "BOTTOM", offset, 0)

	local right = getFontString(line:Frame(), size, "RIGHT", font)
	right:SetPoint("TOPLEFT", lineFrame, "TOP", offset, 0)
	right:SetPoint("BOTTOMRIGHT", lineFrame, "BOTTOMRIGHT")

	local doubleLine = newFrom(doubleLineMeta, {
		line = line,
		label = label,
		right = right,
	})
	tinsert(self.entries, doubleLine)
	GUIDoubleLine = doubleLine
	return doubleLine
end

-- A money line has a label on the left and money view on the right side.
function lines:AddMoneyLine(size, font, noGraphic, showCopper)
	size = size or 12
	offset = offset or 0

	local line = self:AddLine(size + 4)
	local lineFrame = line:Frame()

	local money = Auctioneer.GUI:MoneyView(lineFrame, noGraphic, showCopper)
	local moneyFrame = money:Frame()
	moneyFrame:SetPoint("RIGHT", lineFrame, "RIGHT")

	local label = getFontString(lineFrame, size, "LEFT", font)
	label:SetPoint("TOPLEFT", lineFrame, "TOPLEFT")
	label:SetWidth(lineFrame:GetWidth() - moneyFrame:GetWidth())
	label:SetHeight(lineFrame:GetHeight())

	local moneyLine = newFrom(moneyLineMeta, {
		line = line,
		label = label,
		money = money,
	})
	tinsert(self.entries, moneyLine)
	GUIMoneyLine = moneyLine
	return moneyLine
end
