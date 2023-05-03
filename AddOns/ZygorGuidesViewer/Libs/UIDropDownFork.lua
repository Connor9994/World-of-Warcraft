-- GLOBAL VIDEO_QUALITY_LABEL6
-- GLOBAL UIDROPDOWNFORK_MAXBUTTONS,UIDROPDOWNFORK_DEFAULT_TEXT_HEIGHT
-- GLOBAL OpenColorPicker,
-- GLOBAL CloseDropDownForks,CloseDropDownForks,CloseMenus,HideDropDownFork,ToggleDropDownFork
-- GLOBAL UIDropDownFork_AddButton,UIDropDownFork_AddSeparator,UIDropDownFork_CheckAddCustomFrame,UIDropDownFork_ClearAll,UIDropDownFork_CreateFrames,UIDropDownFork_CreateInfo,UIDropDownFork_DisableButton,UIDropDownFork_DisableDropDown,UIDropDownFork_EnableButton,UIDropDownFork_EnableDropDown,UIDropDownFork_GetButtonWidth,UIDropDownFork_GetCurrentDropDown,UIDropDownFork_GetMaxButtonWidth,UIDropDownFork_GetSelectedID,UIDropDownFork_GetSelectedName,UIDropDownFork_GetSelectedValue,UIDropDownFork_GetText,UIDropDownFork_GetValue,UIDropDownFork_Initialize,UIDropDownFork_InitializeHelper,UIDropDownFork_IsEnabled,UIDropDownFork_JustifyText,UIDropDownFork_OnHide,UIDropDownFork_OnUpdate,UIDropDownFork_Refresh,UIDropDownFork_RefreshAll,UIDropDownFork_RefreshDropDownSize,UIDropDownFork_RegisterCustomFrame,UIDropDownFork_SetAnchor,UIDropDownFork_SetButtonClickable,UIDropDownFork_SetButtonNotClickable,UIDropDownFork_SetButtonText,UIDropDownFork_SetButtonWidth,UIDropDownFork_SetDisplayMode,UIDropDownFork_SetIconImage,UIDropDownFork_SetInitializeFunction,UIDropDownFork_SetSelectedID,UIDropDownFork_SetSelectedName,UIDropDownFork_SetSelectedValue,UIDropDownFork_SetText,UIDropDownFork_SetWidth,UIDropDownFork_StartCounting,UIDropDownFork_StopCounting,UIDropDownForkButton_GetChecked,UIDropDownForkButton_GetName,UIDropDownForkButton_OnClick,UIDropDownForkButton_OnEnter,UIDropDownForkButton_OnLeave,UIDropDownForkButton_OpenColorPicker,UIDropDownForkButtonInvisibleButton_OnEnter,UIDropDownForkButtonInvisibleButton_OnLeave,UIDropDownForkDelegate_OnAttributeChanged

-- GLOBAL ZGV

local UIDROPDOWNFORK_MINBUTTONS = 8;
UIDROPDOWNFORK_MAXBUTTONS = 8;
local UIDROPDOWNFORK_MAXLEVELS = 2;
local UIDROPDOWNFORK_BUTTON_HEIGHT = 16;
local UIDROPDOWNFORK_BORDER_HEIGHT = 15;
-- The current open menu
local UIDROPDOWNFORK_OPEN_MENU = nil;
-- The current menu being initialized
local UIDROPDOWNFORK_INIT_MENU = nil;
-- Current level shown of the open menu
local UIDROPDOWNFORK_MENU_LEVEL = 1;
-- Current value of the open menu
local UIDROPDOWNFORK_MENU_VALUE = nil;
-- Time to wait to hide the menu
local UIDROPDOWNFORK_SHOW_TIME = 2;
-- Default dropdown text height
UIDROPDOWNFORK_DEFAULT_TEXT_HEIGHT = nil;
-- List of open menus
local OPEN_DROPDOWNFORKS = {};

local UIDropDownForkDelegate = CreateFrame("FRAME");

function UIDropDownForkDelegate_OnAttributeChanged (self, attribute, value)
	if ( attribute == "createframes" and value == true ) then
		UIDropDownFork_CreateFrames(self:GetAttribute("createframes-level"), self:GetAttribute("createframes-index"));
	elseif ( attribute == "initmenu" ) then
		UIDROPDOWNFORK_INIT_MENU = value;
	elseif ( attribute == "openmenu" ) then
		UIDROPDOWNFORK_OPEN_MENU = value;
	end
end

function UIDropDownForkDelegate_OnEvent (self, event, ...)
	if event=="GLOBAL_MOUSE_UP" then -- sanity check
		for i = 1, UIDROPDOWNFORK_MAXLEVELS, 1 do
			local dropDownList = _G["DropDownForkList"..i];
			if dropDownList:IsMouseOver() then return end
		end

		for i = 1, UIDROPDOWNFORK_MAXLEVELS, 1 do
			local dropDownList = _G["DropDownForkList"..i];
			if dropDownList.HideOnClick then dropDownList:Hide() end
		end
	end

end

UIDropDownForkDelegate:SetScript("OnAttributeChanged", UIDropDownForkDelegate_OnAttributeChanged);
UIDropDownForkDelegate:SetScript("OnEvent", UIDropDownForkDelegate_OnEvent);



-- This is called via securecall. NEEDS to be global :(
function UIDropDownFork_InitializeHelper (frame)
	-- This deals with the potentially tainted stuff!
	if ( frame ~= UIDROPDOWNFORK_OPEN_MENU ) then
		UIDROPDOWNFORK_MENU_LEVEL = 1;
	end

	-- Set the frame that's being intialized
	UIDropDownForkDelegate:SetAttribute("initmenu", frame);

	-- Hide all the buttons
	local button, dropDownList;
	for i = 1, UIDROPDOWNFORK_MAXLEVELS, 1 do
		dropDownList = _G["DropDownForkList"..i];
		if ( i >= UIDROPDOWNFORK_MENU_LEVEL or frame ~= UIDROPDOWNFORK_OPEN_MENU ) then
			dropDownList.numButtons = 0;
			dropDownList.maxWidth = 0;
			for j=1, UIDROPDOWNFORK_MAXBUTTONS, 1 do
				button = _G["DropDownForkList"..i.."Button"..j];
				button:Hide();
			end
			dropDownList:Hide();
		end
	end
	frame:SetHeight(UIDROPDOWNFORK_BUTTON_HEIGHT * 2);

	UIDropDownForkDelegate:RegisterEvent("GLOBAL_MOUSE_UP")
end

local function GetChild(frame, name, key)
	if (frame[key]) then
		return frame[key];
	else
		return _G[name..key];
	end
end

function UIDropDownFork_Initialize(frame, initFunction, displayMode, level, menuList)
	frame.menuList = menuList;

	securecall("UIDropDownFork_InitializeHelper", frame);

	-- Set the initialize function and call it.  The initFunction populates the dropdown list.
	if ( initFunction ) then
		UIDropDownFork_SetInitializeFunction(frame, initFunction);
		initFunction(frame, level, frame.menuList);
	end

	--master frame
	if(level == nil) then
		level = 1;
	end

	local dropDownList = _G["DropDownForkList"..level];
	dropDownList.dropdown = frame;
	dropDownList.shouldRefresh = true;

	UIDropDownFork_SetDisplayMode(frame, displayMode);
end

function UIDropDownFork_SetInitializeFunction(frame, initFunction)
	frame.initialize = initFunction;
end

function UIDropDownFork_SetDisplayMode(frame, displayMode)
	-- Change appearance based on the displayMode
	-- Note: this is a one time change based on previous behavior.
	if ( displayMode == "MENU" ) then
		local name = frame:GetName();
		GetChild(frame, name, "Left"):Hide();
		GetChild(frame, name, "Middle"):Hide();
		GetChild(frame, name, "Right"):Hide();
		local button = GetChild(frame, name, "Button");
		local buttonName = button:GetName();
		GetChild(button, buttonName, "NormalTexture"):SetTexture(nil);
		GetChild(button, buttonName, "DisabledTexture"):SetTexture(nil);
		GetChild(button, buttonName, "PushedTexture"):SetTexture(nil);
		GetChild(button, buttonName, "HighlightTexture"):SetTexture(nil);
		local text = GetChild(frame, name, "Text");

		button:ClearAllPoints();
		button:SetPoint("LEFT", text, "LEFT", -9, 0);
		button:SetPoint("RIGHT", text, "RIGHT", 6, 0);
		frame.displayMode = "MENU";
	end
end

function UIDropDownFork_RefreshDropDownSize(self)
	self.maxWidth = UIDropDownFork_GetMaxButtonWidth(self);
	self:SetWidth(self.maxWidth+25);

	for i=1, UIDROPDOWNFORK_MAXBUTTONS, 1 do
		local icon = _G[self:GetName().."Button"..i.."Icon"];

		if ( icon.tFitDropDownSizeX ) then
			icon:SetWidth(self.maxWidth);
		end
	end
end

-- If dropdown is visible then see if its timer has expired, if so hide the frame
function UIDropDownFork_OnUpdate(self, elapsed)
	if ( self.shouldRefresh ) then
		UIDropDownFork_RefreshDropDownSize(self);
		self.shouldRefresh = false;
	end

	--if ( not self.showTimer or not self.isCounting ) then
	--	return;
	--elseif ( self.showTimer < 0 ) then
	--	self:Hide();
	--	self.showTimer = nil;
	--	self.isCounting = nil;
	--else
	--	self.showTimer = self.showTimer - elapsed;
	--end
end

-- Start the countdown on a frame
function UIDropDownFork_StartCounting(frame)
	if ( frame.parent ) then
		UIDropDownFork_StartCounting(frame.parent);
	else
		frame.showTimer = UIDROPDOWNFORK_SHOW_TIME;
		frame.isCounting = 1;
	end
end

-- Stop the countdown on a frame
function UIDropDownFork_StopCounting(frame)
	if ( frame.parent ) then
		UIDropDownFork_StopCounting(frame.parent);
	else
		frame.isCounting = nil;
	end
end

function UIDropDownForkButtonInvisibleButton_OnEnter(self)
	UIDropDownFork_StopCounting(self:GetParent():GetParent());
	CloseDropDownForks(self:GetParent():GetParent():GetID() + 1);
	local parent = self:GetParent();
	if ( parent.tooltipTitle and parent.tooltipWhileDisabled) then
		GameTooltip:SetOwner(parent, "ANCHOR_RIGHT");
		GameTooltip_SetTitle(GameTooltip, parent.tooltipTitle);
		if parent.tooltipInstruction then
			GameTooltip_AddInstructionLine(GameTooltip, parent.tooltipInstruction);
		end
		if parent.tooltipText then
			GameTooltip_AddNormalLine(GameTooltip, parent.tooltipText, true);
		end
		if parent.tooltipWarning then
			GameTooltip_AddColoredLine(GameTooltip, parent.tooltipWarning, RED_FONT_COLOR, true);
		end
		GameTooltip:Show();
	end
end

function UIDropDownForkButtonInvisibleButton_OnLeave(self)
	UIDropDownFork_StartCounting(self:GetParent():GetParent());
	GameTooltip:Hide();
end

function UIDropDownForkButton_OnEnter(self)
	if ( self.hasArrow ) then
		local level =  self:GetParent():GetID() + 1;
		local listFrame = _G["DropDownForkList"..level];
		if ( not listFrame or not listFrame:IsShown() or select(2, listFrame:GetPoint()) ~= self ) then
			ToggleDropDownFork(self:GetParent():GetID() + 1, self.value, nil, nil, nil, nil, self.menuList, self);
		end
	else
		CloseDropDownForks(self:GetParent():GetID() + 1);
	end
	self.Highlight:Show();
	UIDropDownFork_StopCounting(self:GetParent());
	if ( self.tooltipTitle and not self.noTooltipWhileEnabled ) then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		GameTooltip_SetTitle(GameTooltip, self.tooltipTitle);
		if self.tooltipText then
			GameTooltip_AddNormalLine(GameTooltip, self.tooltipText, true);
		end
		GameTooltip:Show();
	end
				
	if ( self.mouseOverIcon ~= nil ) then
		self.Icon:SetTexture(self.mouseOverIcon);
		self.Icon:Show();
	end

	-- sinus: add onEnterFunc support
	if ( self.onEnterFunc ) then
		self:onEnterFunc(self.arg1,self.arg2)
	end
end

function UIDropDownForkButton_OnLeave(self)
	self.Highlight:Hide();
	UIDropDownFork_StartCounting(self:GetParent());
	GameTooltip:Hide();
				
	if ( self.mouseOverIcon ~= nil ) then
		if ( self.icon ~= nil ) then
			self.Icon:SetTexture(self.icon);
		else
			self.Icon:Hide();
		end
	end

	-- sinus: add onLeaveFunc support
	if ( self.onLeaveFunc ) then
		self:onLeaveFunc(self.arg1,self.arg2)
	end
end

--[[
List of button attributes
======================================================
info.text = [STRING]  --  The text of the button
info.value = [ANYTHING]  --  The value that UIDROPDOWNFORK_MENU_VALUE is set to when the button is clicked
info.func = [function()]  --  The function that is called when you click the button
info.checked = [nil, true, function]  --  Check the button if true or function returns true
info.isNotRadio = [nil, true]  --  Check the button uses radial image if false check box image if true
info.isTitle = [nil, true]  --  If it's a title the button is disabled and the font color is set to yellow
info.disabled = [nil, true]  --  Disable the button and show an invisible button that still traps the mouseover event so menu doesn't time out
info.tooltipWhileDisabled = [nil, 1] -- Show the tooltip, even when the button is disabled.
info.hasArrow = [nil, true]  --  Show the expand arrow for multilevel menus
info.hasColorSwatch = [nil, true]  --  Show color swatch or not, for color selection
info.r = [1 - 255]  --  Red color value of the color swatch
info.g = [1 - 255]  --  Green color value of the color swatch
info.b = [1 - 255]  --  Blue color value of the color swatch
info.colorCode = [STRING] -- "|cAARRGGBB" embedded hex value of the button text color. Only used when button is enabled
info.swatchFunc = [function()]  --  Function called by the color picker on color change
info.hasOpacity = [nil, 1]  --  Show the opacity slider on the colorpicker frame
info.opacity = [0.0 - 1.0]  --  Percentatge of the opacity, 1.0 is fully shown, 0 is transparent
info.opacityFunc = [function()]  --  Function called by the opacity slider when you change its value
info.cancelFunc = [function(previousValues)] -- Function called by the colorpicker when you click the cancel button (it takes the previous values as its argument)
info.notClickable = [nil, 1]  --  Disable the button and color the font white
info.notCheckable = [nil, 1]  --  Shrink the size of the buttons and don't display a check box
info.owner = [Frame]  --  Dropdown frame that "owns" the current dropdownlist
info.keepShownOnClick = [nil, 1]  --  Don't hide the dropdownlist after a button is clicked
info.tooltipTitle = [nil, STRING] -- Title of the tooltip shown on mouseover
info.tooltipText = [nil, STRING] -- Text of the tooltip shown on mouseover
info.tooltipOnButton = [nil, 1] -- Show the tooltip attached to the button instead of as a Newbie tooltip.
info.justifyH = [nil, "CENTER"] -- Justify button text
info.arg1 = [ANYTHING] -- This is the first argument used by info.func
info.arg2 = [ANYTHING] -- This is the second argument used by info.func
info.fontObject = [FONT] -- font object replacement for Normal and Highlight
info.menuList = [TABLE] -- This contains an array of info tables to be displayed as a child menu
info.noClickSound = [nil, 1]  --  Set to 1 to suppress the sound when clicking the button. The sound only plays if .func is set.
info.padding = [nil, NUMBER] -- Number of pixels to pad the text on the right side
info.leftPadding = [nil, NUMBER] -- Number of pixels to pad the button on the left side
info.minWidth = [nil, NUMBER] -- Minimum width for this line
info.maxWidth = [nil, NUMBER] -- Maximum width for this line
info.forceWidth = [nil, NUMBER] -- Static width for this line
info.customFrame = frame -- Allows this button to be a completely custom frame, should inherit from UIDropDownCustomMenuEntryTemplate and override appropriate methods.
info.icon = [TEXTURE] -- An icon for the button.
info.mouseOverIcon = [TEXTURE] -- An override icon when a button is moused over.
]]

local UIDropDownFork_ButtonInfo = {};

--Until we get around to making this betterz...
local UIDropDownFork_SecureInfo = {};

local wipe = table.wipe;

function UIDropDownFork_CreateInfo()
	-- Reuse the same table to prevent memory churn

	if ( issecure() ) then
		securecall(wipe, UIDropDownFork_SecureInfo);
		return UIDropDownFork_SecureInfo;
	else
		return wipe(UIDropDownFork_ButtonInfo);
	end
end

function UIDropDownFork_CreateFrames(level, index)

	while ( level > UIDROPDOWNFORK_MAXLEVELS ) do
		UIDROPDOWNFORK_MAXLEVELS = UIDROPDOWNFORK_MAXLEVELS + 1;
		local newList = CreateFrame("Button", "DropDownForkList"..UIDROPDOWNFORK_MAXLEVELS, nil, "UIDropDownForkListTemplate,BackdropTemplate");
		newList:SetFrameStrata("FULLSCREEN_DIALOG");
		newList:SetToplevel(true);
		newList:Hide();
		newList:SetID(UIDROPDOWNFORK_MAXLEVELS);
		newList:SetWidth(180)
		newList:SetHeight(10)
		for i=UIDROPDOWNFORK_MINBUTTONS+1, UIDROPDOWNFORK_MAXBUTTONS do
			local newButton = CreateFrame("Button", "DropDownForkList"..UIDROPDOWNFORK_MAXLEVELS.."Button"..i, newList, "UIDropDownForkButtonTemplate");
			newButton:SetID(i);
		end
	end

	while ( index > UIDROPDOWNFORK_MAXBUTTONS ) do
		UIDROPDOWNFORK_MAXBUTTONS = UIDROPDOWNFORK_MAXBUTTONS + 1;
		for i=1, UIDROPDOWNFORK_MAXLEVELS do
			local newButton = CreateFrame("Button", "DropDownForkList"..i.."Button"..UIDROPDOWNFORK_MAXBUTTONS, _G["DropDownForkList"..i], "UIDropDownForkButtonTemplate");
			newButton:SetID(UIDROPDOWNFORK_MAXBUTTONS);
		end
	end
end

UIDropDownFork_separatorInfo =	{
	hasArrow = false;
	dist = 0;
	isTitle = true;
	isUninteractable = true;
	notCheckable = true;
	iconOnly = true;
	icon = "Interface\\Common\\UI-TooltipDivider-Transparent";
	tCoordLeft = 0;
	tCoordRight = 1;
	tCoordTop = 0;
	tCoordBottom = 1;
	tSizeX = 0;
	tSizeY = 1;
	tFitDropDownSizeX = true;
	iconInfo = {
		tCoordLeft = 0,
		tCoordRight = 1,
		tCoordTop = 0,
		tCoordBottom = 1,
		tSizeX = 0,
		tSizeY = 1,
		tFitDropDownSizeX = true
	},
	height = 1,
	isSeparator = true,
	paddingtop = 5,
	paddingbottom = 5,
}

function UIDropDownFork_AddSeparator(level)
	UIDropDownFork_AddButton(UIDropDownFork_separatorInfo, level);
end

function UIDropDownFork_AddButton(info, level)
	--[[
	Might to uncomment this if there are performance issues
	if ( not UIDROPDOWNFORK_OPEN_MENU ) then
		return;
	end
	]]
	if ( not level ) then
		level = 1;
	end

	local listFrame = _G["DropDownForkList"..level];
	local index = listFrame and (listFrame.numButtons + 1) or 1;
	local width;

	UIDropDownForkDelegate:SetAttribute("createframes-level", level);
	UIDropDownForkDelegate:SetAttribute("createframes-index", index);
	UIDropDownForkDelegate:SetAttribute("createframes", true);

	listFrame = listFrame or _G["DropDownForkList"..level];
	local listFrameName = listFrame:GetName();

	-- Set the number of buttons in the listframe
	listFrame.numButtons = index;

	local button = _G[listFrameName.."Button"..index];
	local normalText = _G[button:GetName().."NormalText"];
	local icon = _G[button:GetName().."Icon"];
	-- This button is used to capture the mouse OnEnter/OnLeave events if the dropdown button is disabled, since a disabled button doesn't receive any events
	-- This is used specifically for drop down menu time outs
	local invisibleButton = _G[button:GetName().."InvisibleButton"];

	-- Default settings
	button:SetDisabledFontObject(GameFontDisableSmallLeft);
	invisibleButton:Hide();
	button:Enable();

	-- If not clickable then disable the button and set it white
	if ( info.notClickable ) then
		info.disabled = true;
		button:SetDisabledFontObject(GameFontHighlightSmallLeft);
	end

	-- Set the text color and disable it if its a title
	if ( info.isTitle ) then
		info.disabled = true;
		button:SetDisabledFontObject(GameFontNormalSmallLeft);
	end

	-- Disable the button if disabled and turn off the color code
	if ( info.disabled ) then
		button:Disable();
		invisibleButton:Show();
		info.colorCode = nil;
	end

	-- If there is a color for a disabled line, set it
	if( info.disablecolor ) then
		info.colorCode = info.disablecolor;
	end

	-- Configure button
	if ( info.text ) then
		-- look for inline color code this is only if the button is enabled
		if ( info.colorCode ) then
			button:SetText(info.colorCode..info.text.."|r");
		else
			button:SetText(info.text);
		end

		-- Set icon
		if ( info.icon or info.mouseOverIcon ) then
			icon:SetSize(16,16);
			icon:SetTexture(info.icon);
			icon:ClearAllPoints();
			icon:SetPoint("LEFT");

			if ( info.tCoordLeft ) then
				icon:SetTexCoord(info.tCoordLeft, info.tCoordRight, info.tCoordTop, info.tCoordBottom);
			else
				icon:SetTexCoord(0, 1, 0, 1);
			end
			icon:Show();
		else
			icon:Hide();
		end

		-- Check to see if there is a replacement font
		if ( info.fontObject ) then
			button:SetNormalFontObject(info.fontObject);
			button:SetHighlightFontObject(info.fontObject);
		else
			button:SetNormalFontObject(GameFontHighlightSmallLeft);
			button:SetHighlightFontObject(GameFontHighlightSmallLeft);
		end
	else
		button:SetText("");
		icon:Hide();
	end

	button.iconOnly = nil;
	button.icon = nil;
	button.iconInfo = nil;

	if (info.iconInfo) then
		icon.tFitDropDownSizeX = info.iconInfo.tFitDropDownSizeX;
	else
		icon.tFitDropDownSizeX = nil;
	end
	if (info.iconOnly and info.icon) then
		button.iconOnly = true;
		button.icon = info.icon;
		button.iconInfo = info.iconInfo;

		UIDropDownFork_SetIconImage(icon, info.icon, info.iconInfo);
		icon:ClearAllPoints();
		icon:SetPoint("LEFT");
	end

	-- Pass through attributes
	button.func = info.func;
	button.owner = info.owner;
	button.hasOpacity = info.hasOpacity;
	button.opacity = info.opacity;
	button.opacityFunc = info.opacityFunc;
	button.cancelFunc = info.cancelFunc;
	button.swatchFunc = info.swatchFunc;
	button.keepShownOnClick = info.keepShownOnClick;
	button.tooltipTitle = info.tooltipTitle;
	button.tooltipText = info.tooltipText;
	button.tooltipInstruction = info.tooltipInstruction;
	button.tooltipWarning = info.tooltipWarning;
	button.arg1 = info.arg1;
	button.arg2 = info.arg2;
	button.hasArrow = info.hasArrow;
	button.hasColorSwatch = info.hasColorSwatch;
	button.notCheckable = info.notCheckable;
	button.indented = info.indented;
	button.menuList = info.menuList;
	button.tooltipWhileDisabled = info.tooltipWhileDisabled;
	button.noTooltipWhileEnabled = info.noTooltipWhileEnabled;
	button.tooltipOnButton = info.tooltipOnButton;
	button.noClickSound = info.noClickSound;
	button.padding = info.padding;
	button.icon = info.icon;
	button.mouseOverIcon = info.mouseOverIcon;
	button.onEnterFunc = info.onEnterFunc;
	button.onLeaveFunc = info.onLeaveFunc;
	button.height = info.height
	button.isSeparator = info.isSeparator
	button.paddingtop = info.paddingtop
	button.paddingbottom = info.paddingbottom


	if ( info.value ) then
		button.value = info.value;
	elseif ( info.text ) then
		button.value = info.text;
	else
		button.value = nil;
	end

	local expandArrow = _G[listFrameName.."Button"..index.."ExpandArrow"];
	expandArrow:SetShown(info.hasArrow);
	expandArrow:SetEnabled(not info.disabled);

	local listFrameName = listFrame:GetName();

	-- Set the number of buttons in the listframe
	listFrame.numButtons = index;

	-- If not checkable move everything over to the left to fill in the gap where the check would be
	local xPos = 5;
	--local yPos = -((button:GetID() - 1) * UIDROPDOWNFORK_BUTTON_HEIGHT) - UIDROPDOWNFORK_BORDER_HEIGHT;
	local yPos = -UIDROPDOWNFORK_BORDER_HEIGHT - (info.paddingtop or 0)

	normalText:SetSpacing(info.spacing or 0)

	local current_button_id = button:GetID()
	for i=1,current_button_id-1 do
		local temp = _G[listFrameName.."Button"..i];
		local tempext = _G[listFrameName.."Button"..i.."NormalText"];

		yPos = yPos - max(temp.customFrame and temp.customFrame:GetHeight() or 0,temp:GetHeight(),tempext:GetStringHeight()) - (temp.paddingtop or 0) - (temp.paddingbottom or 0)
	end

	button:SetHeight(max(info.height or UIDROPDOWNFORK_BUTTON_HEIGHT,normalText:GetStringHeight()+5))

	local displayInfo = normalText;
	if (info.iconOnly) then
		displayInfo = icon;
	end

	displayInfo:ClearAllPoints();
	if ( info.notCheckable and not info.indented ) then
		if ( info.justifyH and info.justifyH == "CENTER" ) then
			displayInfo:SetPoint("CENTER", button, "CENTER", -7, 0);
		else

			if ( info.icon or info.mouseOverIcon ) and not info.iconOnly then -- ZGV fix, move icon to the left, and text to right of icon
				displayInfo:SetPoint("LEFT",icon,"RIGHT",5,0)
			else
				displayInfo:SetPoint("LEFT", button, "LEFT", 0, 0);
			end
		end
		xPos = xPos + 8;

	else
		xPos = xPos + 8;
		if ( info.icon or info.mouseOverIcon ) and not info.iconOnly then -- ZGV fix, move icon to the left, and text to right of icon
			displayInfo:SetPoint("LEFT", button, "LEFT", 20, 0);
		else
			displayInfo:SetPoint("LEFT", button, "LEFT", 0, 0);
		end
	end

	-- Adjust offset if displayMode is menu
	local frame = UIDROPDOWNFORK_OPEN_MENU;
	if ( frame and frame.displayMode == "MENU" ) then
		if ( not info.notCheckable or info.indented ) then
			xPos = xPos - 0;
		end
	end

	-- If no open frame then set the frame to the currently initialized frame
	frame = frame or UIDROPDOWNFORK_INIT_MENU;

	if ( info.leftPadding ) then
		xPos = xPos + info.leftPadding;
	end
	button:SetPoint("TOPLEFT", button:GetParent(), "TOPLEFT", xPos, yPos);

	-- See if button is selected by id or name
	if ( frame ) then
		if ( UIDropDownFork_GetSelectedName(frame) ) then
			if ( button:GetText() == UIDropDownFork_GetSelectedName(frame) ) then
				info.checked = 1;
			end
		elseif ( UIDropDownFork_GetSelectedID(frame) ) then
			if ( button:GetID() == UIDropDownFork_GetSelectedID(frame) ) then
				info.checked = 1;
			end
		elseif ( UIDropDownFork_GetSelectedValue(frame) ) then
			if ( button.value == UIDropDownFork_GetSelectedValue(frame) ) then
				info.checked = 1;
			end
		end
	end

	if not info.notCheckable then
		local check = _G[listFrameName.."Button"..index.."Check"];
		local uncheck = _G[listFrameName.."Button"..index.."UnCheck"];
		if ( info.disabled ) then
			check:SetDesaturated(true);
			check:SetAlpha(0.5);
			uncheck:SetDesaturated(true);
			uncheck:SetAlpha(0.5);
		else
			check:SetDesaturated(false);
			check:SetAlpha(1);
			uncheck:SetDesaturated(false);
			uncheck:SetAlpha(1);
		end
		
		if info.customCheckIconAtlas or info.customCheckIconTexture then
			check:SetTexCoord(0, 1, 0, 1);
			uncheck:SetTexCoord(0, 1, 0, 1);
			
			if info.customCheckIconAtlas then
				check:SetAtlas(info.customCheckIconAtlas);
				uncheck:SetAtlas(info.customUncheckIconAtlas or info.customCheckIconAtlas);
			else
				check:SetTexture(info.customCheckIconTexture);
				uncheck:SetTexture(info.customUncheckIconTexture or info.customCheckIconTexture);
			end
		elseif info.isNotRadio then
			check.isNotRadio = true
			uncheck.isNotRadio = true
		else
			check.isNotRadio = false
			uncheck.isNotRadio = false
		end

		-- Checked can be a function now
		local checked = info.checked;
		if ( type(checked) == "function" ) then
			checked = checked(button);
		end

		-- Show the check if checked
		if ( checked ) then
			button:LockHighlight();
			check:Show();
			uncheck:Hide();
		else
			button:UnlockHighlight();
			check:Hide();
			uncheck:Show();
		end
	else
		_G[listFrameName.."Button"..index.."Check"]:Hide();
		_G[listFrameName.."Button"..index.."UnCheck"]:Hide();
	end
	button.checked = info.checked;

	-- If has a colorswatch, show it and vertex color it
	local colorSwatch = _G[listFrameName.."Button"..index.."ColorSwatch"];
	if ( info.hasColorSwatch ) then
		_G["DropDownForkList"..level.."Button"..index.."ColorSwatch".."NormalTexture"]:SetVertexColor(info.r, info.g, info.b);
		button.r = info.r;
		button.g = info.g;
		button.b = info.b;
		colorSwatch:Show();
	else
		colorSwatch:Hide();
	end

	UIDropDownFork_CheckAddCustomFrame(listFrame, button, info);

	button:SetShown(button.customFrame == nil);

	button.minWidth = info.minWidth;
	button.maxWidth = info.maxWidth;
	button.forceWidth = info.forceWidth;

	width = UIDropDownFork_GetButtonWidth(button)
	if button.minWidth then width = max(width,button.minWidth) end
	if button.maxWidth then width = min(width,button.maxWidth) end
	if button.forceWidth then width = button.forceWidth end


	--Set maximum button width
	if ( width > listFrame.maxWidth ) then
		listFrame.maxWidth = width;
	end

	-- Set the height of the listframe
	local frameheight = UIDROPDOWNFORK_BORDER_HEIGHT * 2
	for i=1,current_button_id do
		local temp = _G[listFrameName.."Button"..i];
		frameheight = frameheight + temp:GetHeight() + (temp.paddingtop or 0) + (temp.paddingbottom or 0)
	end

	
	listFrame:SetHeight(frameheight);
end

function UIDropDownFork_CheckAddCustomFrame(self, button, info)
	local customFrame = info.customFrame;
	button.customFrame = customFrame;
	if customFrame then
		customFrame:SetOwningButton(button);
		customFrame:ClearAllPoints();
		customFrame:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0);
		customFrame:Show();

		UIDropDownFork_RegisterCustomFrame(self, customFrame);
	end
end

function UIDropDownFork_RegisterCustomFrame(self, customFrame)
	self.customFrames = self.customFrames or {}
	table.insert(self.customFrames, customFrame);
end

function UIDropDownFork_GetMaxButtonWidth(self)
	local maxWidth = 0;
	for i=1, self.numButtons do
		local button = _G[self:GetName().."Button"..i];
		local width = UIDropDownFork_GetButtonWidth(button);
		if ( width > maxWidth ) then
			maxWidth = width;
		end
	end
	return maxWidth;
end

function UIDropDownFork_GetButtonWidth(button)
	local minWidth = button.minWidth or 0;
	if button.customFrame and button.customFrame:IsShown() then
		return math.max(minWidth, button.customFrame:GetPreferredEntryWidth());
	end

	if not button:IsShown() then
		return 0;
	end

	local width;
	local buttonName = button:GetName();
	local icon = _G[buttonName.."Icon"];
	local normalText = _G[buttonName.."NormalText"];

	if ( button.iconOnly and icon ) then
		width = icon:GetWidth();
	elseif ( normalText and normalText:GetText() ) then
		local textWidth = normalText:GetWidth()
		
		if button.maxWidth and textWidth>button.maxWidth then normalText:SetWidth(button.maxWidth) end
		width = normalText:GetWidth() + 40;

		if ( button.icon ) then
			-- Add padding for the icon
			width = width + 10;
			-- and margin between icon and text
			width = width + 5;
		end
	else
		return minWidth;
	end

	-- Add padding if has and expand arrow or color swatch
	if ( button.hasArrow or button.hasColorSwatch ) then
		width = width + 10;
	end
	if ( button.notCheckable and not button.indented ) then
		width = width - 30;
	end
	if ( button.padding ) then
		width = width + button.padding;
	end

	width = width
	if button.minWidth then width = max(width,button.minWidth) end
	if button.maxWidth then width = min(width,button.maxWidth) end

	return width;
end

function UIDropDownFork_Refresh(frame, useValue, dropdownLevel)
	local button, checked, checkImage, uncheckImage, normalText, width;
	local maxWidth = 0;
	local somethingChecked = nil;
	if ( not dropdownLevel ) then
		dropdownLevel = UIDROPDOWNFORK_MENU_LEVEL;
	end

	local listFrame = _G["DropDownForkList"..dropdownLevel];
	listFrame.numButtons = listFrame.numButtons or 0;
	-- Just redraws the existing menu
	for i=1, UIDROPDOWNFORK_MAXBUTTONS do
		button = _G["DropDownForkList"..dropdownLevel.."Button"..i];
		checked = nil;

		if(i <= listFrame.numButtons) then
			-- See if checked or not
			if ( UIDropDownFork_GetSelectedName(frame) ) then
				if ( button:GetText() == UIDropDownFork_GetSelectedName(frame) ) then
					checked = 1;
				end
			elseif ( UIDropDownFork_GetSelectedID(frame) ) then
				if ( button:GetID() == UIDropDownFork_GetSelectedID(frame) ) then
					checked = 1;
				end
			elseif ( UIDropDownFork_GetSelectedValue(frame) ) then
				if ( button.value == UIDropDownFork_GetSelectedValue(frame) ) then
					checked = 1;
				end
			end
		end
		if (button.checked and type(button.checked) == "function") then
			checked = button.checked(button);
		end

		if not button.notCheckable and button:IsShown() then
			-- If checked show check image
			checkImage = _G["DropDownForkList"..dropdownLevel.."Button"..i.."Check"];
			uncheckImage = _G["DropDownForkList"..dropdownLevel.."Button"..i.."UnCheck"];
			if ( checked ) then
				somethingChecked = true;
				local icon = GetChild(frame, frame:GetName(), "Icon");
				if (button.iconOnly and icon and button.icon) then
					UIDropDownFork_SetIconImage(icon, button.icon, button.iconInfo);
				elseif ( useValue ) then
					UIDropDownFork_SetText(frame, button.value);
					icon:Hide();
				else
					UIDropDownFork_SetText(frame, button:GetText());
					icon:Hide();
				end
				button:LockHighlight();
				checkImage:Show();
				uncheckImage:Hide();
			else
				button:UnlockHighlight();
				checkImage:Hide();
				uncheckImage:Show();
			end
		end

		if ( button:IsShown() ) then
			width = UIDropDownFork_GetButtonWidth(button);
			if ( width > maxWidth ) then
				maxWidth = width;
			end
		end
	end
	if(somethingChecked == nil) then
		UIDropDownFork_SetText(frame, VIDEO_QUALITY_LABEL6);
	end
	if (not frame.noResize) then
		for i=1, UIDROPDOWNFORK_MAXBUTTONS do
			button = _G["DropDownForkList"..dropdownLevel.."Button"..i];
			button:SetWidth(maxWidth);
		end
		UIDropDownFork_RefreshDropDownSize(_G["DropDownForkList"..dropdownLevel]);
	end
end

function UIDropDownFork_RefreshAll(frame, useValue)
	for dropdownLevel = UIDROPDOWNFORK_MENU_LEVEL, 2, -1 do
		local listFrame = _G["DropDownForkList"..dropdownLevel];
		if ( listFrame:IsShown() ) then
			UIDropDownFork_Refresh(frame, nil, dropdownLevel);
		end
	end
	-- useValue is the text on the dropdown, only needs to be set once
	UIDropDownFork_Refresh(frame, useValue, 1);
end

function UIDropDownFork_SetIconImage(icon, texture, info)
	icon:SetTexture(texture);
	if ( info.tCoordLeft ) then
		icon:SetTexCoord(info.tCoordLeft, info.tCoordRight, info.tCoordTop, info.tCoordBottom);
	else
		icon:SetTexCoord(0, 1, 0, 1);
	end
	if ( info.tSizeX ) then
		icon:SetWidth(info.tSizeX);
	else
		icon:SetWidth(16);
	end
	if ( info.tSizeY ) then
		icon:SetHeight(info.tSizeY);
	else
		icon:SetHeight(16);
	end
	icon:Show();
end

function UIDropDownFork_SetSelectedName(frame, name, useValue)
	frame.selectedName = name;
	frame.selectedID = nil;
	frame.selectedValue = nil;
	UIDropDownFork_Refresh(frame, useValue);
end

function UIDropDownFork_SetSelectedValue(frame, value, useValue)
	-- useValue will set the value as the text, not the name
	frame.selectedName = nil;
	frame.selectedID = nil;
	frame.selectedValue = value;
	UIDropDownFork_Refresh(frame, useValue);
end

function UIDropDownFork_SetSelectedID(frame, id, useValue)
	frame.selectedID = id;
	frame.selectedName = nil;
	frame.selectedValue = nil;
	UIDropDownFork_Refresh(frame, useValue);
end

function UIDropDownFork_GetSelectedName(frame)
	return frame.selectedName;
end

function UIDropDownFork_GetSelectedID(frame)
	if ( frame.selectedID ) then
		return frame.selectedID;
	else
		-- If no explicit selectedID then try to send the id of a selected value or name
		local button;
		for i=1, UIDROPDOWNFORK_MAXBUTTONS do
			button = _G["DropDownForkList"..UIDROPDOWNFORK_MENU_LEVEL.."Button"..i];
			-- See if checked or not
			if ( UIDropDownFork_GetSelectedName(frame) ) then
				if ( button:GetText() == UIDropDownFork_GetSelectedName(frame) ) then
					return i;
				end
			elseif ( UIDropDownFork_GetSelectedValue(frame) ) then
				if ( button.value == UIDropDownFork_GetSelectedValue(frame) ) then
					return i;
				end
			end
		end
	end
end

function UIDropDownFork_GetSelectedValue(frame)
	return frame.selectedValue;
end

function UIDropDownForkButton_OnClick(self)
	local checked = self.checked;
	if ( type (checked) == "function" ) then
		checked = checked(self);
	end

	if ( self.keepShownOnClick ) then
		if not self.notCheckable then
			if ( checked ) then
				_G[self:GetName().."Check"]:Hide();
				_G[self:GetName().."UnCheck"]:Show();
				checked = false;
			else
				_G[self:GetName().."Check"]:Show();
				_G[self:GetName().."UnCheck"]:Hide();
				checked = true;
			end
		end
	else
		self:GetParent():Hide();
	end

	if ( type (self.checked) ~= "function" ) then
		self.checked = checked;
	end

	-- saving this here because func might use a dropdown, changing this self's attributes
	local playSound = true;
	if ( self.noClickSound ) then
		playSound = false;
	end

	local func = self.func;
	if ( func ) then
		func(self, self.arg1, self.arg2, checked);
	else
		return;
	end

	if ( playSound ) then
		PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
	end
end

function HideDropDownFork(level)
	local listFrame = _G["DropDownForkList"..level];
	listFrame:Hide();
end

function ToggleDropDownFork(level, value, dropDownFrame, anchorName, xOffset, yOffset, menuList, button, autoHideDelay)
	if ( not level ) then
		level = 1;
	end
	UIDropDownForkDelegate:SetAttribute("createframes-level", level);
	UIDropDownForkDelegate:SetAttribute("createframes-index", 0);
	UIDropDownForkDelegate:SetAttribute("createframes", true);
	UIDROPDOWNFORK_MENU_LEVEL = level;
	UIDROPDOWNFORK_MENU_VALUE = value;
	local listFrame = _G["DropDownForkList"..level];
	local listFrameName = "DropDownForkList"..level;
	local tempFrame;
	local point, relativePoint, relativeTo;
	if ( not dropDownFrame ) then
		tempFrame = button:GetParent();
	else
		tempFrame = dropDownFrame;
	end
	if ( listFrame:IsShown() and (UIDROPDOWNFORK_OPEN_MENU == tempFrame) ) then
		listFrame:Hide();
	else
		-- Set the dropdownframe scale
		local uiScale;
		local uiParentScale = UIParent:GetScale();
		if ( GetCVar("useUIScale") == "1" ) then
			uiScale = tonumber(GetCVar("uiscale"));
			if ( uiParentScale < uiScale ) then
				uiScale = uiParentScale;
			end
		else
			uiScale = uiParentScale;
		end
		listFrame:SetScale(uiScale);

		-- Hide the listframe anyways since it is redrawn OnShow()
		listFrame:Hide();

		-- Frame to anchor the dropdown menu to
		local anchorFrame;

		-- Display stuff
		-- Level specific stuff
		if ( level == 1 ) then
			UIDropDownForkDelegate:SetAttribute("openmenu", dropDownFrame);
			listFrame:ClearAllPoints();
			-- If there's no specified anchorName then use left side of the dropdown menu
			if ( not anchorName ) then
				-- See if the anchor was set manually using setanchor
				if ( dropDownFrame.xOffset ) then
					xOffset = dropDownFrame.xOffset;
				end
				if ( dropDownFrame.yOffset ) then
					yOffset = dropDownFrame.yOffset;
				end
				if ( dropDownFrame.point ) then
					point = dropDownFrame.point;
				end
				if ( dropDownFrame.relativeTo ) then
					relativeTo = dropDownFrame.relativeTo;
				else
					relativeTo = GetChild(UIDROPDOWNFORK_OPEN_MENU, UIDROPDOWNFORK_OPEN_MENU:GetName(), "Left");
				end
				if ( dropDownFrame.relativePoint ) then
					relativePoint = dropDownFrame.relativePoint;
				end
			elseif ( anchorName == "cursor" ) then
				relativeTo = nil;
				local cursorX, cursorY = GetCursorPosition();
				cursorX = cursorX/uiScale;
				cursorY =  cursorY/uiScale;

				if ( not xOffset ) then
					xOffset = 0;
				end
				if ( not yOffset ) then
					yOffset = 0;
				end
				xOffset = cursorX + xOffset;
				yOffset = cursorY + yOffset;
			else
				-- See if the anchor was set manually using setanchor
				if ( dropDownFrame.xOffset ) then
					xOffset = dropDownFrame.xOffset;
				end
				if ( dropDownFrame.yOffset ) then
					yOffset = dropDownFrame.yOffset;
				end
				if ( dropDownFrame.point ) then
					point = dropDownFrame.point;
				end
				if ( dropDownFrame.relativeTo ) then
					relativeTo = dropDownFrame.relativeTo;
				else
					relativeTo = anchorName;
				end
				if ( dropDownFrame.relativePoint ) then
					relativePoint = dropDownFrame.relativePoint;
				end
			end
			if ( not xOffset or not yOffset ) then
				xOffset = 8;
				yOffset = 22;
			end
			if ( not point ) then
				point = "TOPLEFT";
			end
			if ( not relativePoint ) then
				relativePoint = "BOTTOMLEFT";
			end
			listFrame:SetPoint(point, relativeTo, relativePoint, xOffset, yOffset);
		else
			if ( not dropDownFrame ) then
				dropDownFrame = UIDROPDOWNFORK_OPEN_MENU;
			end
			listFrame:ClearAllPoints();
			-- If this is a dropdown button, not the arrow anchor it to itself
			if ( strsub(button:GetParent():GetName(), 0,16) == "DropDownForkList" and strlen(button:GetParent():GetName()) == 17 ) then
				anchorFrame = button;
			else
				anchorFrame = button:GetParent();
			end
			point = "TOPLEFT";
			relativePoint = "TOPRIGHT";
			listFrame:SetPoint(point, anchorFrame, relativePoint, 0, 0);
		end

		-- Change list box appearance depending on display mode
		if ( dropDownFrame and dropDownFrame.displayMode == "MENU" ) then
			_G[listFrameName.."Backdrop"]:Hide();
			_G[listFrameName.."MenuBackdrop"]:Show();
		else
			_G[listFrameName.."Backdrop"]:Show();
			_G[listFrameName.."MenuBackdrop"]:Hide();
		end
		dropDownFrame.menuList = menuList;
		UIDropDownFork_Initialize(dropDownFrame, dropDownFrame.initialize, nil, level, menuList);
		-- If no items in the drop down don't show it
		if ( listFrame.numButtons == 0 ) then
			return;
		end

		-- Check to see if the dropdownlist is off the screen, if it is anchor it to the top of the dropdown button
		listFrame:Show();
		-- Hack since GetCenter() is returning coords relative to 1024x768
		local x, y = listFrame:GetCenter();
		-- Hack will fix this in next revision of dropdowns
		if ( not x or not y ) then
			listFrame:Hide();
			return;
		end

		listFrame.onHide = dropDownFrame.onHide;


		--  We just move level 1 enough to keep it on the screen. We don't necessarily change the anchors.
		if ( level == 1 ) then
			local offLeft = listFrame:GetLeft()/uiScale;
			local offRight = (GetScreenWidth() - listFrame:GetRight())/uiScale;
			local offTop = (GetScreenHeight() - listFrame:GetTop())/uiScale;
			local offBottom = listFrame:GetBottom()/uiScale;

			local xAddOffset, yAddOffset = 0, 0;
			if ( offLeft < 0 ) then
				xAddOffset = -offLeft;
			elseif ( offRight < 0 ) then
				xAddOffset = offRight;
			end

			if ( offTop < 0 ) then
				yAddOffset = offTop;
			elseif ( offBottom < 0 ) then
				yAddOffset = -offBottom;
			end

			listFrame:ClearAllPoints();
			if ( anchorName == "cursor" ) then
				listFrame:SetPoint(point, relativeTo, relativePoint, xOffset + xAddOffset, yOffset + yAddOffset);
			else
				listFrame:SetPoint(point, relativeTo, relativePoint, xOffset + xAddOffset, yOffset + yAddOffset);
			end
		else
			-- Determine whether the menu is off the screen or not
			local offscreenY, offscreenX;
			if ( (y - listFrame:GetHeight()/2) < 0 ) then
				offscreenY = 1;
			end
			if ( listFrame:GetRight() > GetScreenWidth() ) then
				offscreenX = 1;
			end
			if ( offscreenY and offscreenX ) then
				point = gsub(point, "TOP(.*)", "BOTTOM%1");
				point = gsub(point, "(.*)LEFT", "%1RIGHT");
				relativePoint = gsub(relativePoint, "TOP(.*)", "BOTTOM%1");
				relativePoint = gsub(relativePoint, "(.*)RIGHT", "%1LEFT");
				xOffset = -11;
				yOffset = -14;
			elseif ( offscreenY ) then
				point = gsub(point, "TOP(.*)", "BOTTOM%1");
				relativePoint = gsub(relativePoint, "TOP(.*)", "BOTTOM%1");
				xOffset = 0;
				yOffset = -14;
			elseif ( offscreenX ) then
				point = gsub(point, "(.*)LEFT", "%1RIGHT");
				relativePoint = gsub(relativePoint, "(.*)RIGHT", "%1LEFT");
				xOffset = -11;
				yOffset = 14;
			else
				xOffset = 0;
				yOffset = 14;
			end

			listFrame:ClearAllPoints();
			listFrame.parentLevel = tonumber(strmatch(anchorFrame:GetName(), "DropDownForkList(%d+)"));
			listFrame.parentID = anchorFrame:GetID();
			listFrame:SetPoint(point, anchorFrame, relativePoint, xOffset, yOffset);
		end

		if ( autoHideDelay and tonumber(autoHideDelay)) then
			listFrame.showTimer = autoHideDelay;
			listFrame.isCounting = 1;
		end

		ZGV:ScheduleTimer(function() listFrame.HideOnClick=true end,0)

		UIDropDownFork_ApplySkin()
	end
end

function CloseDropDownForks(level)
	if ( not level ) then
		level = 1;
	end
	for i=level, UIDROPDOWNFORK_MAXLEVELS do
		_G["DropDownForkList"..i]:Hide();
	end
end

function UIDropDownFork_OnHide(self)
	local id = self:GetID()
	if ( self.onHide ) then
		self.onHide(id+1);
		self.onHide = nil;
	end
	CloseDropDownForks(id+1);
	OPEN_DROPDOWNFORKS[id] = nil;
	if (id == 1) then
		UIDROPDOWNFORK_OPEN_MENU = nil;
	end

	if self.customFrames then
		for index, frame in ipairs(self.customFrames) do
			frame:Hide();
		end

		self.customFrames = nil;
	end


	self.HideOnClick = false
end

function UIDropDownFork_SetWidth(frame, width, padding)
	local frameName = frame:GetName();
	GetChild(frame, frameName, "Middle"):SetWidth(width);
	local defaultPadding = 25;
	if ( padding ) then
		frame:SetWidth(width + padding);
	else
		frame:SetWidth(width + defaultPadding + defaultPadding);
	end
	if ( padding ) then
		GetChild(frame, frameName, "Text"):SetWidth(width);
	else
		GetChild(frame, frameName, "Text"):SetWidth(width - defaultPadding);
	end
	frame.noResize = 1;
end

function UIDropDownFork_SetButtonWidth(frame, width)
	local frameName = frame:GetName();
	if ( width == "TEXT" ) then
		width = GetChild(frame, frameName, "Text"):GetWidth();
	end

	GetChild(frame, frameName, "Button"):SetWidth(width);
	frame.noResize = 1;
end

function UIDropDownFork_SetText(frame, text)
	local frameName = frame:GetName();
	GetChild(frame, frameName, "Text"):SetText(text);
end

function UIDropDownFork_GetText(frame)
	local frameName = frame:GetName();
	GetChild(frame, frameName, "Text"):GetText();
end

function UIDropDownFork_ClearAll(frame)
	-- Previous code refreshed the menu quite often and was a performance bottleneck
	frame.selectedID = nil;
	frame.selectedName = nil;
	frame.selectedValue = nil;
	UIDropDownFork_SetText(frame, "");

	local button, checkImage, uncheckImage;
	for i=1, UIDROPDOWNFORK_MAXBUTTONS do
		button = _G["DropDownForkList"..UIDROPDOWNFORK_MENU_LEVEL.."Button"..i];
		button:UnlockHighlight();

		checkImage = _G["DropDownForkList"..UIDROPDOWNFORK_MENU_LEVEL.."Button"..i.."Check"];
		checkImage:Hide();
		uncheckImage = _G["DropDownForkList"..UIDROPDOWNFORK_MENU_LEVEL.."Button"..i.."UnCheck"];
		uncheckImage:Hide();
	end
end

function UIDropDownFork_JustifyText(frame, justification)
	local frameName = frame:GetName();
	local text = GetChild(frame, frameName, "Text");
	text:ClearAllPoints();
	if ( justification == "LEFT" ) then
		text:SetPoint("LEFT", GetChild(frame, frameName, "Left"), "LEFT", 27, 2);
		text:SetJustifyH("LEFT");
	elseif ( justification == "RIGHT" ) then
		text:SetPoint("RIGHT", GetChild(frame, frameName, "Right"), "RIGHT", -43, 2);
		text:SetJustifyH("RIGHT");
	elseif ( justification == "CENTER" ) then
		text:SetPoint("CENTER", GetChild(frame, frameName, "Middle"), "CENTER", -5, 2);
		text:SetJustifyH("CENTER");
	end
end

function UIDropDownFork_SetAnchor(dropdown, xOffset, yOffset, point, relativeTo, relativePoint)
	dropdown.xOffset = xOffset;
	dropdown.yOffset = yOffset;
	dropdown.point = point;
	dropdown.relativeTo = relativeTo;
	dropdown.relativePoint = relativePoint;
end

function UIDropDownFork_GetCurrentDropDown()
	if ( UIDROPDOWNFORK_OPEN_MENU ) then
		return UIDROPDOWNFORK_OPEN_MENU;
	elseif ( UIDROPDOWNFORK_INIT_MENU ) then
		return UIDROPDOWNFORK_INIT_MENU;
	end
end

function UIDropDownForkButton_GetChecked(self)
	return _G[self:GetName().."Check"]:IsShown();
end

function UIDropDownForkButton_GetName(self)
	return _G[self:GetName().."NormalText"]:GetText();
end

function UIDropDownForkButton_OpenColorPicker(self, button)
	CloseMenus();
	if ( not button ) then
		button = self;
	end
	UIDROPDOWNFORK_MENU_VALUE = button.value;
	OpenColorPicker(button);
end

function UIDropDownFork_DisableButton(level, id)
	_G["DropDownForkList"..level.."Button"..id]:Disable();
end

function UIDropDownFork_EnableButton(level, id)
	_G["DropDownForkList"..level.."Button"..id]:Enable();
end

function UIDropDownFork_SetButtonText(level, id, text, colorCode)
	local button = _G["DropDownForkList"..level.."Button"..id];
	if ( colorCode) then
		button:SetText(colorCode..text.."|r");
	else
		button:SetText(text);
	end
end

function UIDropDownFork_SetButtonNotClickable(level, id)
	_G["DropDownForkList"..level.."Button"..id]:SetDisabledFontObject(GameFontHighlightSmallLeft);
end

function UIDropDownFork_SetButtonClickable(level, id)
	_G["DropDownForkList"..level.."Button"..id]:SetDisabledFontObject(GameFontDisableSmallLeft);
end

function UIDropDownFork_DisableDropDown(dropDown)
	local dropDownName = dropDown:GetName();
	local label = GetChild(dropDown, dropDownName, "Label");
	if ( label ) then
		label:SetVertexColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	end
	GetChild(dropDown, dropDownName, "Text"):SetVertexColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	GetChild(dropDown, dropDownName, "Button"):Disable();
	dropDown.isDisabled = 1;
end

function UIDropDownFork_EnableDropDown(dropDown)
	local dropDownName = dropDown:GetName();
	local label = GetChild(dropDown, dropDownName, "Label");
	if ( label ) then
		label:SetVertexColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	end
	GetChild(dropDown, dropDownName, "Text"):SetVertexColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	GetChild(dropDown, dropDownName, "Button"):Enable();
	dropDown.isDisabled = nil;
end

function UIDropDownFork_IsEnabled(dropDown)
	return not dropDown.isDisabled;
end

function UIDropDownFork_GetValue(id)
	--Only works if the dropdown has just been initialized, lame, I know =(
	local button = _G["DropDownForkList1Button"..id];
	if ( button ) then
		return _G["DropDownForkList1Button"..id].value;
	else
		return nil;
	end
end

function UIDropDownFork_ApplySkin()
	local SkinData = ZGV.UI.SkinData

	local checkbox_file = ZGV.ButtonSets.Interactions.file
	local arrow_file = ZGV.ButtonSets.TitleButtons.file
	local radio_coords_on = ZGV.ButtonSets.Interactions.RADIO_ON.texcoords
	local radio_coords_off = ZGV.ButtonSets.Interactions.RADIO.texcoords
	local checkbox_coords_on = ZGV.ButtonSets.Interactions.CHECKBOX_ON.texcoords
	local checkbox_coords_off = ZGV.ButtonSets.Interactions.CHECKBOX.texcoords
	local arrow_coords = ZGV.ButtonSets.TitleButtons.MORETABS.texcoords

	for i=1,UIDROPDOWNFORK_MAXLEVELS do
		local listFrameName = "DropDownForkList"..i
		local listBG = _G[listFrameName.."MenuBackdrop"]
		listBG:SetBackdrop(SkinData("FloatMenuBackdrop"))
		listBG:SetBackdropColor(unpack(SkinData("FloatMenuBackdropColor")))
		listBG:SetBackdropBorderColor(unpack(SkinData("FloatMenuBackdropBorderColor")))
		for b=1,UIDROPDOWNFORK_MAXBUTTONS do
			local buttonName = listFrameName.."Button"..b
			local button = _G[buttonName]

			local txt = _G[buttonName.."NormalText"]
			if txt and txt.SetFont then txt:SetFont(ZGV.Font,ZGV.db.profile.fontsize) end

			local state = _G[buttonName]:IsEnabled() and 1 or 4

			local check = _G[buttonName.."Check"];
			if check.isNotRadio then
				check:SetTexture(checkbox_file)
				check:SetTexCoord(unpack(checkbox_coords_on[state]))
			else
				check:SetTexture(checkbox_file)
				check:SetTexCoord(unpack(radio_coords_on[state]))
			end

			local uncheck = _G[buttonName.."UnCheck"];
			if uncheck.isNotRadio then
				uncheck:SetTexture(checkbox_file)
				uncheck:SetTexCoord(unpack(checkbox_coords_off[state]))
			else
				uncheck:SetTexture(checkbox_file)
				uncheck:SetTexCoord(unpack(radio_coords_off[state]))
			end

			local arrow = _G[buttonName.."ExpandArrow"];
			ZGV.ButtonSets.TitleButtons.MORETABS:AssignToButton(arrow)
			arrow:GetNormalTexture():SetVertexColor(unpack(SkinData("Accent")))

			local icon = _G[buttonName.."Icon"]
			if button.isSeparator then
				icon:SetTexture(ZGV.SKINSDIR.."white");
				icon:SetVertexColor(unpack(SkinData("FloatMenuSeparatorolor")))
			else
				icon:SetVertexColor(1,1,1,1)
			end

			local highlight = _G[buttonName.."Highlight"]
			highlight:SetTexture(ZGV.SKINSDIR.."white");
			highlight:SetVertexColor(unpack(SkinData("ButtonHighlight")))	
			highlight:ClearAllPoints()
			highlight:SetPoint("TOP",button)
			highlight:SetPoint("BOTTOM",button)
			highlight:SetPoint("LEFT",listBG,2,0)
			highlight:SetPoint("RIGHT",listBG,-2,0)
		end
	end
end

--[[
function OpenColorPicker(info)
	ColorPickerFrame.func = info.swatchFunc;
	ColorPickerFrame.hasOpacity = info.hasOpacity;
	ColorPickerFrame.opacityFunc = info.opacityFunc;
	ColorPickerFrame.opacity = info.opacity;
	ColorPickerFrame.previousValues = {r = info.r, g = info.g, b = info.b, opacity = info.opacity};
	ColorPickerFrame.cancelFunc = info.cancelFunc;
	ColorPickerFrame.extraInfo = info.extraInfo;
	-- This must come last, since it triggers a call to ColorPickerFrame.func()
	ColorPickerFrame:SetColorRGB(info.r, info.g, info.b);
	ShowUIPanel(ColorPickerFrame);
end

function ColorPicker_GetPreviousValues()
	return ColorPickerFrame.previousValues.r, ColorPickerFrame.previousValues.g, ColorPickerFrame.previousValues.b;
end
--]]