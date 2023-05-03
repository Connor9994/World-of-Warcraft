-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local Math = TSM.Include("Util.Math")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local UIElements = TSM.Include("UI.UIElements")
local private = {}
local PLOT_X_LABEL_WIDTH = 48
local PLOT_X_LABEL_HEIGHT = 16
local PLOT_X_LABEL_MARGIN = 6
local PLOT_Y_LABEL_WIDTH = 48
local PLOT_Y_LABEL_HEIGHT = 16
local PLOT_Y_LABEL_MARGIN = 4
local PLOT_HIGHLIGHT_TEXT_WIDTH = 80
local PLOT_HIGHLIGHT_TEXT_HEIGHT = 16
local PLOT_X_EXTRA_HIT_RECT = 4
local PLOT_Y_MARGIN = 4
local LINE_THICKNESS = 1
local LINE_THICKNESS_RATIO = 16
local PLOT_MIN_X_LINE_SPACING = PLOT_X_LABEL_WIDTH * 1.5 + 8
local PLOT_MIN_Y_LINE_SPACING = PLOT_Y_LABEL_HEIGHT * 1.5 + 8
local HOVER_LINE_THICKNESS = 1
local MAX_FILL_ALPHA = 0.5
local SELECTION_ALPHA = 0.2
local MAX_PLOT_POINTS = 300


-- ============================================================================
-- Element Definition
-- ============================================================================

local Graph = UIElements.Define("Graph", "Element") ---@class Graph: Element
Graph:_ExtendStateSchema()
	:AddBooleanField("mouseOver", false)
	:AddOptionalNumberField("selectionStartX", nil)
	:AddBooleanField("hovered", false)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Graph:__init()
	local frame = UIElements.CreateFrame(self, "Frame", nil, nil, BackdropTemplateMixin and "BackdropTemplate" or nil)

	self.__super:__init(frame)

	frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8" })

	frame.plot = UIElements.CreateFrame(self, "Frame", nil, frame)
	frame.plot:SetPoint("BOTTOMLEFT", PLOT_Y_LABEL_WIDTH, PLOT_X_LABEL_HEIGHT)
	frame.plot:SetPoint("TOPRIGHT", -PLOT_X_EXTRA_HIT_RECT, -PLOT_HIGHLIGHT_TEXT_HEIGHT - PLOT_Y_MARGIN)
	frame.plot:SetHitRectInsets(-PLOT_X_EXTRA_HIT_RECT, -PLOT_X_EXTRA_HIT_RECT, 0, 0)
	frame.plot:EnableMouse(true)
	frame.plot:TSMSetScript("OnEnter", self:__closure("_HandlePlotEnter"))
	frame.plot:TSMSetScript("OnLeave", self:__closure("_HandlePlotLeave"))
	frame.plot:TSMSetScript("OnMouseDown", self:__closure("_HandlePlotMouseDown"))
	frame.plot:TSMSetScript("OnMouseUp", self:__closure("_HandlePlotMouseUp"))

	frame.plot.dot = UIElements.CreateTexture(self, frame.plot, "ARTWORK", 3)
	TextureAtlas.SetTextureAndSize(frame.plot.dot, "uiFrames.HighlightDot")

	frame.plot.hoverLine = UIElements.CreateTexture(self, frame.plot, "ARTWORK", 2)
	frame.plot.hoverLine:SetWidth(HOVER_LINE_THICKNESS)
	frame.plot.hoverLine:Hide()

	frame.plot.hoverText = UIElements.CreateFontString(self, frame.plot)
	frame.plot.hoverText:SetSize(PLOT_HIGHLIGHT_TEXT_WIDTH, PLOT_HIGHLIGHT_TEXT_HEIGHT)
	frame.plot.hoverText:Hide()

	frame.plot.selectionBox = UIElements.CreateTexture(self, frame.plot, "ARTWORK", 2)
	frame.plot.selectionBox:Hide()

	self._slices = {}
	self._xAxisLines = {}
	self._yAxisLines = {}
	self._xValuesFiltered = {}
	self._yLookup = {}
	self._xAxisValues = {}
	self._yAxisValues = {}
	self._yValueFunc = nil
	self._xFormatFunc = nil
	self._yFormatFunc = nil
	self._xStepFunc = nil
	self._yStepFunc = nil
	self._xMin = nil
	self._xMax = nil
	self._yMin = nil
	self._yMax = nil
	self._zoomStart = nil
	self._zoomEnd = nil
	self._onZoomChanged = nil
	self._onHoverUpdate = nil
end

function Graph:Acquire()
	self.__super:Acquire()
	local frame = self:_GetBaseFrame()

	-- Set the background colors and fonts
	frame:TSMSubscribeBackdropColor("PRIMARY_BG")
	frame.plot.hoverText:TSMSetFont("TABLE_TABLE1")
	frame.plot.hoverText:TSMSubscribeTextColor("INDICATOR_ALT")

	-- Setup subscriptions on previously-created lines
	for _, line in ipairs(self._xAxisLines) do
		line:TSMSubscribeVertexColor("ACTIVE_BG")
		line.text:TSMSubscribeTextColor("TEXT")
	end
	for _, line in ipairs(self._yAxisLines) do
		line:TSMSubscribeVertexColor("ACTIVE_BG")
		line.text:TSMSubscribeTextColor("TEXT")
	end

	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("mouseOver", "selectionStartX")
		:MapWithFunction(private.StateToHovered)
		:AssignToTableKey(self._state, "hovered")
end

function Graph:Release()
	local frame = self:_GetBaseFrame()
	frame:TSMCancelAll()

	-- Cancel subscriptions on lines
	for _, line in ipairs(self._xAxisLines) do
		line:TSMCancelAll()
		line.text:TSMCancelAll()
	end
	for _, line in ipairs(self._yAxisLines) do
		line:TSMCancelAll()
		line.text:TSMCancelAll()
	end

	wipe(self._xValuesFiltered)
	wipe(self._yLookup)
	wipe(self._xAxisValues)
	wipe(self._yAxisValues)
	self._yValueFunc = nil
	self._xFormatFunc = nil
	self._yFormatFunc = nil
	self._xStepFunc = nil
	self._yStepFunc = nil
	self._xMin = nil
	self._xMax = nil
	self._yMin = nil
	self._yMax = nil
	self._zoomStart = nil
	self._zoomEnd = nil
	self._onZoomChanged = nil
	self._onHoverUpdate = nil
	self.__super:Release()
end

---Sets the step size of the axes.
---@param x fun(prev: number, suggestedStep: number): number A function which gets the next x-axis step value
---@param y fun(prev: number, suggestedStep: number): number A function which gets the next y-axis step value
---@return Graph
function Graph:SetAxisStepFunctions(x, y)
	self._xStepFunc = x
	self._yStepFunc = y
	return self
end

---Sets the visible X-axis range.
---@param xMin number The minimum x value
---@param xMax number The maximum x value
---@param stepInterval number The step interval
---@return Graph
function Graph:SetXRange(xMin, xMax, stepInterval)
	assert(xMin <= xMax)
	self._xMin = xMin
	self._xMax = xMax
	self._xStepInterval = stepInterval
	self._zoomStart = xMin
	self._zoomEnd = xMax
	return self
end

---Sets the current zoom window.
---@param zoomStart number The start x value
---@param zoomEnd number The end x value
---@return Graph
function Graph:SetZoom(zoomStart, zoomEnd)
	self._zoomStart = zoomStart
	self._zoomEnd = zoomEnd
	return self
end

---Gets the current zoom window.
---@return number zoomStart
---@return number zoomEnd
function Graph:GetZoom()
	return self._zoomStart, self._zoomEnd
end

---Gets the current X range.
---@return number xMin
---@return number xMax
function Graph:GetXRange()
	local yMin, yMax = nil, nil
	for _, x in ipairs(self._xValuesFiltered) do
		local y = self._yValueFunc(x)
		yMin = min(yMin or math.huge, y)
		yMax = max(yMax or -math.huge, y)
	end
	return self._xMin, self._xMax
end

---Gets the current Y range.
---@return number yMin
---@return number yMax
function Graph:GetYRange()
	local yMin, yMax = nil, nil
	for _, x in ipairs(self._xValuesFiltered) do
		local y = self._yValueFunc(x)
		yMin = min(yMin or math.huge, y)
		yMax = max(yMax or -math.huge, y)
	end
	return yMin, yMax
end

---Set the function used to get the y value for a given x value.
---@param func fun(x: number): number
---@return Graph
function Graph:SetYValueFunction(func)
	self._yValueFunc = func
	return self
end

---Sets functions for formatting values.
---@param xFormatFunc fun(x: number): string A function which formats an x value
---@param yFormatFunc fun(y: number): string A function which formats a y value
---@return Graph
function Graph:SetFormatFunctions(xFormatFunc, yFormatFunc)
	self._xFormatFunc = xFormatFunc
	self._yFormatFunc = yFormatFunc
	return self
end

---Registers a script handler.
---@param script "OnZoomChanged"|"OnHoverUpdate" The script to register for
---@param handler function The script handler which will be called with the graph object followed by any
---arguments to the script
---@return Graph
function Graph:SetScript(script, handler)
	if script == "OnZoomChanged" then
		self._onZoomChanged = handler
	elseif script == "OnHoverUpdate" then
		self._onHoverUpdate = handler
	else
		error("Unknown Graph script: "..tostring(script))
	end
	return self
end

function Graph:Draw()
	self.__super:Draw()
	local plot = self:_GetBaseFrame().plot
	local plotWidth = plot:GetWidth()
	local plotHeight = plot:GetHeight()

	-- Compute all of our data
	if not self:_ComputeData(plotWidth, plotHeight) then
		return
	end

	-- Create Y axis lines as needed and hide any extra
	while #self._yAxisLines < #self._yAxisValues do
		tinsert(self._yAxisLines, self:_CreateAxisLine("Y"))
	end
	for i = #self._yAxisValues + 1, #self._yAxisLines do
		local line = self._yAxisLines[i]
		line:Hide()
		line.text:Hide()
	end

	-- Draw the y axis lines and labels
	for i, value in ipairs(self._yAxisValues) do
		local offset = Math.Scale(value, self._yMin, self._yMax, 0, plotHeight)
		local line = self._yAxisLines[i]
		line:Show()
		line.text:Show()
		self:_DrawYAxisLine(line, offset, value, plotWidth, plotHeight)
	end

	-- Create X axis lines as needed and hide any extra
	while #self._xAxisLines < #self._xAxisValues do
		tinsert(self._xAxisLines, self:_CreateAxisLine("X"))
	end
	for i = #self._xAxisValues + 1, #self._xAxisLines do
		local line = self._xAxisLines[i]
		line:Hide()
		line.text:Hide()
	end

	-- Draw the x axis lines and labels
	local xSuggestedStep = Math.Scale(PLOT_MIN_X_LINE_SPACING, 0, plotWidth, 0, self._zoomEnd - self._zoomStart)
	for i, value in ipairs(self._xAxisValues) do
		local offset = Math.Scale(value, self._zoomStart, self._zoomEnd, 0, plotWidth)
		local line = self._xAxisLines[i]
		line:Show()
		line.text:Show()
		self:_DrawXAxisLine(line, offset, value, plotWidth, plotHeight, xSuggestedStep)
	end

	-- Create slices as needed and hide any extra slices
	local numVisibleSlices = #self._xValuesFiltered - 1
	while #self._slices < numVisibleSlices do
		tinsert(self._slices, self:_CreateSlice())
	end
	for i = numVisibleSlices + 1, #self._slices do
		local slice = self._slices[i]
		slice:Hide()
		slice.fillTop:Hide()
		slice.fillBar:Hide()
	end

	-- Draw all the slices
	local color = nil
	if self._state.hovered then
		color = "INDICATOR_ALT"
	elseif self._yLookup[self._xValuesFiltered[1]] <= self._yLookup[self._xValuesFiltered[#self._xValuesFiltered]] then
		color = "FEEDBACK_GREEN"
	else
		color = "FEEDBACK_RED"
	end
	local xPrev, yPrev = nil, nil
	for i, x in ipairs(self._xValuesFiltered) do
		local y = self._yLookup[x]
		local xCoord = Math.Scale(x, self._zoomStart, self._zoomEnd, 0, plotWidth)
		local yCoord = Math.Scale(y, self._yMin, self._yMax, 0, plotHeight)
		if i > 1 then
			local slice = self._slices[i - 1]
			slice:Show()
			slice.fillTop:Show()
			slice.fillBar:Show()
			self:_LayoutSlice(slice, xPrev, yPrev, xCoord, yCoord, LINE_THICKNESS)
			self:_SetSliceColor(slice, color, yPrev, yCoord, plotHeight)
		end
		xPrev = xCoord
		yPrev = yCoord
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Graph:_ComputeData(plotWidth, plotHeight)
	wipe(self._xValuesFiltered)
	wipe(self._yLookup)
	wipe(self._xAxisValues)
	wipe(self._yAxisValues)
	self._yMin = math.huge
	self._yMax = -math.huge
	local minStep = Math.Ceil((self._zoomEnd - self._zoomStart) / min(plotWidth / 3, MAX_PLOT_POINTS), self._xStepInterval)
	local x = self._zoomStart
	while x <= self._zoomEnd do
		local prevX = self._xValuesFiltered[#self._xValuesFiltered]
		if not prevX or x == self._zoomEnd or (x - prevX > minStep and self._zoomEnd - x > minStep) then
			-- this is either the first / last point or a middle point which is sufficiently far from the previous and last points
			tinsert(self._xValuesFiltered, x)
			local y = self._yValueFunc(x)
			self._yMin = min(self._yMin, y)
			self._yMax = max(self._yMax, y)
			self._yLookup[x] = y
		end
		if x == self._zoomEnd then
			break
		end
		x = min(x + minStep, self._zoomEnd)
	end

	-- Calculate the min and max y values which should be shown
	self._yMin, self._yMax = self._yStepFunc("RANGE", self._yMin, self._yMax, floor(plotHeight / PLOT_MIN_Y_LINE_SPACING))
	if Math.IsNan(self._yMax) then
		-- This happens when we're resizing the application frame
		return false
	end

	-- Calculate the Y axis values
	local prevYAxisOffset = -math.huge
	local yAxisValue = self._yMin
	while yAxisValue <= self._yMax do
		local yAxisOffset = Math.Scale(yAxisValue, self._yMin, self._yMax, 0, plotHeight)
		if not prevYAxisOffset or (yAxisOffset - prevYAxisOffset) >= PLOT_MIN_Y_LINE_SPACING then
			tinsert(self._yAxisValues, yAxisValue)
			prevYAxisOffset = yAxisOffset
		end
		yAxisValue = self._yStepFunc("NEXT", yAxisValue, self._yMax)
	end

	-- Calculate the X axis values
	local xSuggestedStep = Math.Scale(PLOT_MIN_X_LINE_SPACING, 0, plotWidth, 0, self._zoomEnd - self._zoomStart)
	local prevXAxisOffset = -math.huge
	local xAxisValue = self._xStepFunc(self._zoomStart, xSuggestedStep)
	while xAxisValue <= self._zoomEnd do
		local xAxisOffset = Math.Scale(xAxisValue, self._zoomStart, self._zoomEnd, 0, plotWidth)
		if not prevXAxisOffset or (xAxisOffset - prevXAxisOffset) > PLOT_MIN_X_LINE_SPACING then
			tinsert(self._xAxisValues, xAxisValue)
			prevXAxisOffset = xAxisOffset
		end
		xAxisValue = self._xStepFunc(xAxisValue, xSuggestedStep)
	end

	return true
end

function Graph:_CreateAxisLine(axis)
	local plot = self:_GetBaseFrame().plot
	local line = UIElements.CreateTexture(self, plot, "BACKGROUND")
	line:SetTexture("Interface\\AddOns\\TradeSkillMaster\\Media\\line.tga")
	line:TSMSubscribeVertexColor("ACTIVE_BG")
	line.text = UIElements.CreateFontString(self, plot)
	line.text:TSMSubscribeTextColor("TEXT")
	if axis == "X" then
		-- Trim the texture a bit on the ends since it's not completely filled to the edges which is noticeable on long lines
		line:SetTexCoord(0.9, 1, 0.1, 1, 0.9, 0, 0.1, 0)
		line.text:SetSize(PLOT_X_LABEL_WIDTH, PLOT_X_LABEL_HEIGHT)
		line.text:TSMSetFont("BODY_BODY3_MEDIUM")
		line.text:SetJustifyV("TOP")
	elseif axis == "Y" then
		-- Trim the texture a bit on the ends since it's not completely filled to the edges which is noticeable on long lines
		line:SetTexCoord(0.1, 1, 0.1, 0, 0.9, 1, 0.9, 0)
		line.text:SetSize(PLOT_Y_LABEL_WIDTH, PLOT_Y_LABEL_HEIGHT)
		line.text:TSMSetFont("TABLE_TABLE1")
		line.text:SetJustifyH("RIGHT")
	else
		error("Invalid axis: "..tostring(axis))
	end
	return line
end

function Graph:_DrawYAxisLine(line, offset, value, plotWidth, plotHeight, suggestedStep)
	local plot = self:_GetBaseFrame().plot
	local textureHeight = LINE_THICKNESS * LINE_THICKNESS_RATIO
	line:SetPoint("BOTTOMLEFT", 0 - LINE_THICKNESS / 2, offset - textureHeight / 2)
	line:SetPoint("TOPRIGHT", plot, "BOTTOMLEFT", plotWidth + LINE_THICKNESS / 2, offset + textureHeight / 2)
	local textOffset = 0
	if PLOT_Y_LABEL_HEIGHT / 2 > offset then
		line.text:SetJustifyV("BOTTOM")
		textOffset = max(PLOT_Y_LABEL_HEIGHT / 2 - offset, 0)
	elseif offset + PLOT_Y_LABEL_HEIGHT / 2 > plotHeight then
		line.text:SetJustifyV("TOP")
		textOffset = plotHeight - offset - PLOT_Y_LABEL_HEIGHT / 2
	else
		line.text:SetJustifyV("MIDDLE")
	end
	line.text:SetPoint("RIGHT", line, "LEFT", -PLOT_Y_LABEL_MARGIN, textOffset)
	line.text:SetText(self._yFormatFunc(value, suggestedStep))
end

function Graph:_DrawXAxisLine(line, offset, value, plotWidth, plotHeight, suggestedStep)
	local plot = self:_GetBaseFrame().plot
	local thickness = LINE_THICKNESS
	local textureHeight = thickness * LINE_THICKNESS_RATIO
	line:SetPoint("BOTTOMLEFT", offset - textureHeight / 2, thickness / 2)
	line:SetPoint("TOPRIGHT", plot, "BOTTOMLEFT", offset + textureHeight / 2, plotHeight + thickness / 2)
	local textOffset = 0
	if PLOT_X_LABEL_WIDTH / 2 > offset then
		line.text:SetJustifyH("LEFT")
		textOffset = max(PLOT_X_LABEL_WIDTH / 2 - offset, 0)
	elseif offset + PLOT_X_LABEL_WIDTH / 2 > plotWidth then
		line.text:SetJustifyH("RIGHT")
		textOffset = plotWidth - offset - PLOT_X_LABEL_WIDTH / 2
	else
		line.text:SetJustifyH("CENTER")
	end
	line.text:SetPoint("TOP", line, "BOTTOM", textOffset, -PLOT_X_LABEL_MARGIN)
	line.text:SetText(self._xFormatFunc(value, suggestedStep))
end

function Graph:_CreateSlice()
	local plot = self:_GetBaseFrame().plot
	local slice = UIElements.CreateTexture(self, plot, "ARTWORK")
	slice:SetTexture("Interface\\AddOns\\TradeSkillMaster\\Media\\line.tga")
	slice.fillTop = UIElements.CreateTexture(self, plot, "ARTWORK", -1)
	slice.fillTop:SetTexture("Interface\\AddOns\\TradeSkillMaster\\Media\\triangle")
	slice.fillBar = UIElements.CreateTexture(self, plot, "ARTWORK", -1)
	slice.fillBar:SetTexture("Interface\\Buttons\\WHITE8X8")
	return slice
end

function Graph:_LayoutSlice(slice, xFrom, yFrom, xTo, yTo, thickness)
	assert(xFrom <= xTo)
	local plot = self:_GetBaseFrame().plot
	local textureHeight = thickness * LINE_THICKNESS_RATIO
	local xDiff = xTo - xFrom
	local yDiff = yTo - yFrom

	-- Set line tex coord
	slice:SetTexCoord(private.CalculateTexCoords(xDiff, yDiff, textureHeight))

	-- Flip the triangle based on whether the line is going up or down
	if yFrom < yTo then
		slice.fillTop:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
	else
		slice.fillTop:SetTexCoord(1, 0, 1, 1, 0, 0, 0, 1)
	end

	-- Set fill anchors
	local minY = min(yFrom, yTo)
	local maxY = max(yFrom, yTo)
	slice.fillTop:SetPoint("BOTTOMLEFT", xFrom, minY)
	slice.fillTop:SetPoint("TOPRIGHT", plot, "BOTTOMLEFT", xTo, maxY)
	slice.fillBar:SetPoint("BOTTOMLEFT", xFrom, 0)
	slice.fillBar:SetPoint("TOPRIGHT", plot, "BOTTOMLEFT", xTo, minY)

	-- Set line anchors
	local length = sqrt(xDiff * xDiff + yDiff * yDiff)
	local invAspectRatio = textureHeight / length
	local xCenter = (xFrom + xTo) / 2
	local yCenter = (yFrom + yTo) / 2
	local halfWidth = (xDiff + invAspectRatio * abs(yDiff) + thickness) / 2
	local halfHeight = (abs(yDiff) + invAspectRatio * xDiff + thickness) / 2
	slice:SetPoint("BOTTOMLEFT", xCenter - halfWidth, yCenter - halfHeight)
	slice:SetPoint("TOPRIGHT", plot, "BOTTOMLEFT", xCenter + halfWidth, yCenter + halfHeight)
end

function Graph:_SetSliceColor(slice, color, y1, y2, plotHeight)
	local r, g, b, a = Theme.GetColor(color):GetFractionalRGBA()
	slice:SetVertexColor(r, g, b, a)
	local barMaxAlpha = Math.Scale(min(y1, y2), 0, plotHeight, 0, MAX_FILL_ALPHA * a)
	local topMaxAlpha = Math.Scale(max(y1, y2), 0, plotHeight, 0, MAX_FILL_ALPHA * a)
	if Environment.HasFeature(Environment.FEATURES.TEXTURE_SET_GRADIENT) then
		-- TODO: Create the ColorMixin objects from our color object
		slice.fillTop:SetGradient("VERTICAL", CreateColor(r, g, b, barMaxAlpha), CreateColor(r, g, b, topMaxAlpha))
		slice.fillBar:SetGradient("VERTICAL", CreateColor(r, g, b, 0), CreateColor(r, g, b, barMaxAlpha))
	else
		slice.fillTop:SetGradientAlpha("VERTICAL", r, g, b, barMaxAlpha, r, g, b, topMaxAlpha)
		slice.fillBar:SetGradientAlpha("VERTICAL", r, g, b, 0, r, g, b, barMaxAlpha)
	end
end

function Graph:_GetCursorClosestPoint()
	local plot = self:_GetBaseFrame().plot
	local xPos = GetCursorPosition() / plot:GetEffectiveScale()
	local fromMin = plot:GetLeft()
	local fromMax = plot:GetRight()
	-- Convert the cursor position to be relative to the plotted x values
	xPos = Math.Scale(Math.Bound(xPos, fromMin, fromMax), fromMin, fromMax, self._zoomStart, self._zoomEnd)
	-- Find the closest point to the cursor (based on the x distance)
	local closestX, closestY = nil, nil
	for _, x in ipairs(self._xValuesFiltered) do
		local y = self._yLookup[x]
		local xDist = abs(x - xPos)
		if not closestX or xDist < abs(closestX - xPos) then
			closestX = x
			closestY = y
		end
	end
	assert(closestY)
	return closestX, closestY
end

function Graph:_XValueToPlotCoord(xValue)
	local plot = self:_GetBaseFrame().plot
	return Math.Scale(xValue, self._zoomStart, self._zoomEnd, 0, plot:GetWidth())
end

function Graph.__private:_HandlePlotEnter()
	self._state.mouseOver = true
	self:Draw()
	local plot = self:_GetBaseFrame().plot
	plot:TSMSetScript("OnUpdate", self:__closure("_HandlePlotUpdate"))
end

function Graph.__private:_HandlePlotLeave()
	self._state.mouseOver = false
end

function Graph.__private:_HandlePlotMouseDown(_, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	assert(self._state.mouseOver)
	self._state.selectionStartX = self:_GetCursorClosestPoint()
end

function Graph.__private:_HandlePlotMouseUp(_, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	local currentX = self:_GetCursorClosestPoint()
	local startX = min(self._state.selectionStartX, currentX)
	local endX = max(self._state.selectionStartX, currentX)
	self._state.selectionStartX = nil
	local plot = self:_GetBaseFrame().plot
	plot.selectionBox:Hide()

	if startX ~= endX and (startX ~= self._zoomStart or endX ~= self._zoomEnd) then
		self._zoomStart = startX
		self._zoomEnd = endX
		self:Draw()
		if self._onZoomChanged then
			self:_onZoomChanged()
		end
	end
end

function Graph.__private:_HandlePlotUpdate()
	local plot = self:_GetBaseFrame().plot
	local closestX, closestY = self:_GetCursorClosestPoint()
	local xCoord = self:_XValueToPlotCoord(closestX)
	local yCoord = Math.Scale(closestY, self._yMin, self._yMax, 0, plot:GetHeight())

	if self._state.mouseOver then
		plot.dot:Show()
		plot.dot:ClearAllPoints()
		plot.dot:SetPoint("CENTER", plot, "BOTTOMLEFT", xCoord, yCoord)

		plot.hoverLine:Show()
		plot.hoverLine:SetColorTexture(Theme.GetColor("INDICATOR_ALT"):GetFractionalRGBA())
		plot.hoverLine:ClearAllPoints()
		plot.hoverLine:SetPoint("TOP", plot, "TOPLEFT", xCoord, 0)
		plot.hoverLine:SetPoint("BOTTOM", plot, "BOTTOMLEFT", xCoord, 0)

		plot.hoverText:Show()
		plot.hoverText:SetWidth(1000)
		plot.hoverText:SetText(self._yFormatFunc(closestY, nil, true))
		local textWidth = plot.hoverText:GetStringWidth()
		plot.hoverText:SetWidth(textWidth)
		plot.hoverText:ClearAllPoints()
		if xCoord - textWidth / 2 < 0 then
			plot.hoverText:SetPoint("BOTTOMLEFT", plot, "TOPLEFT", 0, PLOT_Y_MARGIN)
		elseif textWidth / 2 + xCoord > plot:GetWidth() then
			plot.hoverText:SetPoint("BOTTOMRIGHT", plot, "TOPRIGHT", 0, PLOT_Y_MARGIN)
		else
			plot.hoverText:SetPoint("BOTTOM", plot, "TOPLEFT", xCoord, PLOT_Y_MARGIN)
		end
	else
		plot.dot:Hide()
		plot.hoverLine:Hide()
		plot.hoverText:Hide()
	end

	if self._state.selectionStartX then
		local startXCoord = self:_XValueToPlotCoord(self._state.selectionStartX)
		local selectionMinX = min(startXCoord, xCoord)
		local selectionMaxX = max(startXCoord, xCoord)
		plot.selectionBox:Show()
		local r, g, b, a = Theme.GetColor("INDICATOR_ALT"):GetFractionalRGBA()
		assert(a == 1)
		plot.selectionBox:SetColorTexture(r, g, b, SELECTION_ALPHA)
		plot.selectionBox:ClearAllPoints()
		plot.selectionBox:SetPoint("TOPLEFT", plot, selectionMinX, 0)
		plot.selectionBox:SetPoint("BOTTOMRIGHT", plot, "BOTTOMLEFT", selectionMaxX, 0)
	else
		plot.selectionBox:Hide()
	end

	local isHovered = self._state.hovered
	if not isHovered then
		self:Draw()
		plot:TSMSetScript("OnUpdate", nil)
	end
	if self._onHoverUpdate then
		self:_onHoverUpdate(isHovered and closestX or nil)
	end
end

-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.StateToHovered(state)
	return (state.mouseOver or state.selectionStartX) and true or false
end

function private.CalculateTexCoords(xDiff, yDiff, textureHeight)
	local length = sqrt(xDiff * xDiff + yDiff * yDiff)
	local sinValue = -yDiff / length
	local cosValue = xDiff / length
	local sinCosValue = sinValue * cosValue
	local aspectRatio = length / textureHeight
	local invAspectRatio = textureHeight / length
	local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = nil, nil, nil, nil, nil, nil, nil, nil
	if yDiff >= 0 then
		LLx = invAspectRatio * sinCosValue
		LLy = sinValue * sinValue
		LRy = aspectRatio * sinCosValue
		LRx = 1 - LLy
		ULx = LLy
		ULy = 1 - LRy
		URx = 1 - LLx
		URy = LRx
	else
		LLx = sinValue * sinValue
		LLy = -aspectRatio * sinCosValue
		LRx = 1 + invAspectRatio * sinCosValue
		LRy = LLx
		ULx = 1 - LRx
		ULy = 1 - LLx
		URy = 1 - LLy
		URx = ULy
	end
	return ULx, ULy, LLx, LLy, URx, URy, LRx, LRy
end
