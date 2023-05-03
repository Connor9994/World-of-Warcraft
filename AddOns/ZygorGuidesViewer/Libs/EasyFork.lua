-- Simplified Menu Display System
--	This is a basic system for displaying a menu from a structure table.
--
--	See UIDropDownMenu.lua for the menuList details.
--
--	Args:
--		menuList - menu table
--		menuFrame - the UI frame to populate
--		anchor - where to anchor the frame (e.g. CURSOR)
--		x - x offset
--		y - y offset
--		displayMode - border type
--		autoHideDelay - how long until the menu disappears
--
--

-- GLOBAL EasyFork,ToggleDropDownFork,UIDropDownFork_AddButton,UIDropDownFork_Initialize

local function EasyFork_Initialize( frame, level, menuList )
	ZGV.EasyForkDebug = ZGV.EasyForkDebug or {}
	for index = 1, #menuList do
		local value = menuList[index]
		value.index = index;
		tinsert(ZGV.EasyForkDebug,{"addbutton",value,level})
		UIDropDownFork_AddButton( value, level );
	end
end

function EasyFork(menuList, menuFrame, anchor, x, y, displayMode, autoHideDelay )
	if ( displayMode == "MENU" ) then
		menuFrame.displayMode = displayMode;
	end
	UIDropDownFork_Initialize(menuFrame, EasyFork_Initialize, displayMode, nil, menuList);
	ToggleDropDownFork(1, nil, menuFrame, anchor, x, y, menuList, nil, autoHideDelay);
end
