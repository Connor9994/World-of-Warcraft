-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TexturePacks = TSM.UI:NewPackage("TexturePacks")
local NineSlice = TSM.Include("Util.NineSlice")
local Rectangle = TSM.Include("UI.Rectangle")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local TEXTURE_FILE_INFO = {
	uiFrames = {
		path = "Interface\\Addons\\TradeSkillMaster\\Media\\UIFrames.tga",
		scale = 1,
		width = 512,
		height = 512,
		coord = {
			["AuctionCounterTexture"] = { 65, 88, 402, 413 },
			["HighlightDot"] = { 54, 62, 476, 484 },
			["LargeRadiusBottomRight"] = { 3, 131, 3, 131 },
			["LargeRadiusBottomLeft"] = { 3, 131, 136, 264 },
			["LargeRadiusTopLeft"] = { 3, 131, 269, 397 },
			["LargeRadiusTopRight"] = { 146, 274, 3, 131 },
			["LoadingBarLeft"] = { 3, 15, 402, 426 },
			["LoadingBarMiddle"] = { 3, 15, 431, 455 },
			["LoadingBarRight"] = { 3, 15, 460, 484 },
			["PopupBottomEdge"] = { 20, 32, 429, 441 },
			["PopupBottomLeftCorner"] = { 20, 32, 446, 458 },
			["PopupBottomRightCorner"] = { 20, 32, 463, 475 },
			["PopupLeftEdge"] = { 37, 49, 429, 441 },
			["PopupRightEdge"] = { 37, 49, 446, 458 },
			["PopupTopEdge"] = { 37, 49, 463, 475 },
			["PopupTopLeftCorner"] = { 54, 66, 429, 441 },
			["PopupTopRightCorner"] = { 20, 60, 402, 424 },
			["SmallLogo"] = { 3, 79, 489, 508 }
		},
	},
	iconPack = {
		path = "Interface\\Addons\\TradeSkillMaster\\Media\\IconPack.tga",
		scale = 1,
		width = 256,
		height = 256,
		coord = {
			["12x12/Add/Circle"] = { 236, 248, 88, 100 },
			["12x12/Add/Default"] = { 92, 104, 92, 104 },
			["12x12/Attention"] = { 106, 118, 92, 104 },
			["12x12/Bid"] = { 120, 132, 92, 104 },
			["12x12/Caret/Down"] = { 134, 146, 92, 104 },
			["12x12/Caret/Right"] = { 148, 160, 92, 104 },
			["12x12/Checkmark/Circle"] = { 162, 174, 92, 104 },
			["12x12/Checkmark/Default"] = { 176, 188, 92, 104 },
			["12x12/Chevron/Down"] = { 190, 202, 92, 104 },
			["12x12/Chevron/Right"] = { 204, 216, 92, 104 },
			["12x12/Chevron/Up"] = { 218, 230, 92, 104 },
			["12x12/Circle"] = { 232, 244, 102, 114 },
			["12x12/Clock"] = { 88, 100, 116, 128 },
			["12x12/Close/Circle"] = { 88, 100, 130, 142 },
			["12x12/Close/Default"] = { 88, 100, 144, 156 },
			["12x12/Configure"] = { 88, 100, 158, 170 },
			["12x12/Delete"] = { 88, 100, 172, 184 },
			["12x12/DragHandle"] = { 88, 100, 186, 198 },
			["12x12/Duplicate"] = { 88, 100, 200, 212 },
			["12x12/Edit"] = { 88, 100, 214, 226 },
			["12x12/Expand All"] = { 88, 100, 228, 240 },
			["12x12/Export"] = { 88, 100, 242, 254 },
			["12x12/Filter"] = { 102, 114, 106, 118 },
			["12x12/Folder"] = { 116, 128, 106, 118 },
			["12x12/Grip"] = { 130, 142, 106, 118 },
			["12x12/Groups"] = { 144, 156, 106, 118 },
			["12x12/Hide"] = { 158, 170, 106, 118 },
			["12x12/Import"] = { 172, 184, 106, 118 },
			["12x12/Link"] = { 186, 198, 106, 118 },
			["12x12/Mailing"] = { 200, 212, 106, 118 },
			["12x12/More/Horizontal"] = { 214, 226, 106, 118 },
			["12x12/More/Vertical"] = { 228, 240, 116, 128 },
			["12x12/Operation"] = { 242, 254, 116, 128 },
			["12x12/PlayPause"] = { 102, 114, 120, 132 },
			["12x12/Popout"] = { 116, 128, 120, 132 },
			["12x12/Post"] = { 130, 142, 120, 132 },
			["12x12/Queue"] = { 144, 156, 120, 132 },
			["12x12/Reset"] = { 158, 170, 120, 132 },
			["12x12/Resize"] = { 172, 184, 120, 132 },
			["12x12/Running"] = { 186, 198, 120, 132 },
			["12x12/SaleRate"] = { 200, 212, 120, 132 },
			["12x12/Search"] = { 214, 226, 120, 132 },
			["12x12/Select All"] = { 228, 240, 130, 142 },
			["12x12/Shopping"] = { 242, 254, 130, 142 },
			["12x12/SkillUp"] = { 102, 114, 144, 156 },
			["12x12/Star/Filled"] = { 102, 114, 158, 170 },
			["12x12/Star/Unfilled"] = { 102, 114, 172, 184 },
			["12x12/Subtract/Circle"] = { 102, 114, 186, 198 },
			["12x12/Subtract/Default"] = { 102, 114, 200, 212 },
			["12x12/Visible"] = { 102, 114, 214, 226 },
			["12x12/WoW"] = { 102, 114, 228, 240 },
			["14x14/Add/Circle"] = { 240, 254, 56, 70 },
			["14x14/Add/Default"] = { 40, 54, 112, 126 },
			["14x14/Attention"] = { 40, 54, 128, 142 },
			["14x14/Bid"] = { 40, 54, 144, 158 },
			["14x14/Caret/Down"] = { 40, 54, 160, 174 },
			["14x14/Caret/Right"] = { 40, 54, 176, 190 },
			["14x14/Checkmark/Circle"] = { 40, 54, 192, 206 },
			["14x14/Checkmark/Default"] = { 40, 54, 208, 222 },
			["14x14/Chevron/Down"] = { 40, 54, 224, 238 },
			["14x14/Chevron/Right"] = { 40, 54, 240, 254 },
			["14x14/Chevron/Up"] = { 56, 70, 112, 126 },
			["14x14/Circle"] = { 60, 74, 72, 86 },
			["14x14/Clock"] = { 60, 74, 88, 102 },
			["14x14/Close/Circle"] = { 56, 70, 128, 142 },
			["14x14/Close/Default"] = { 56, 70, 144, 158 },
			["14x14/Configure"] = { 56, 70, 160, 174 },
			["14x14/Delete"] = { 56, 70, 176, 190 },
			["14x14/DragHandle"] = { 56, 70, 192, 206 },
			["14x14/Duplicate"] = { 56, 70, 208, 222 },
			["14x14/Edit"] = { 56, 70, 224, 238 },
			["14x14/Expand All"] = { 56, 70, 240, 254 },
			["14x14/Export"] = { 72, 86, 104, 118 },
			["14x14/Filter"] = { 76, 90, 72, 86 },
			["14x14/Folder"] = { 76, 90, 88, 102 },
			["14x14/Grip"] = { 72, 86, 120, 134 },
			["14x14/Groups"] = { 72, 86, 136, 150 },
			["14x14/Hide"] = { 72, 86, 152, 166 },
			["14x14/Import"] = { 72, 86, 168, 182 },
			["14x14/Link"] = { 72, 86, 184, 198 },
			["14x14/Mailing"] = { 72, 86, 200, 214 },
			["14x14/More/Horizontal"] = { 72, 86, 216, 230 },
			["14x14/More/Vertical"] = { 72, 86, 232, 246 },
			["14x14/Operation"] = { 92, 106, 60, 74 },
			["14x14/PlayPause"] = { 108, 122, 60, 74 },
			["14x14/Popout"] = { 124, 138, 60, 74 },
			["14x14/Post"] = { 140, 154, 60, 74 },
			["14x14/Queue"] = { 156, 170, 60, 74 },
			["14x14/Reset"] = { 172, 186, 60, 74 },
			["14x14/Resize"] = { 188, 202, 60, 74 },
			["14x14/Running"] = { 204, 218, 60, 74 },
			["14x14/SaleRate"] = { 220, 234, 60, 74 },
			["14x14/Search"] = { 236, 250, 72, 86 },
			["14x14/Select All"] = { 92, 106, 76, 90 },
			["14x14/Shopping"] = { 108, 122, 76, 90 },
			["14x14/SkillUp"] = { 124, 138, 76, 90 },
			["14x14/Star/Filled"] = { 140, 154, 76, 90 },
			["14x14/Star/Unfilled"] = { 156, 170, 76, 90 },
			["14x14/Subtract/Circle"] = { 172, 186, 76, 90 },
			["14x14/Subtract/Default"] = { 188, 202, 76, 90 },
			["14x14/Visible"] = { 204, 218, 76, 90 },
			["14x14/WoW"] = { 220, 234, 76, 90 },
			["18x18/Add/Circle"] = { 0, 18, 26, 44 },
			["18x18/Add/Default"] = { 0, 18, 46, 64 },
			["18x18/Attention"] = { 0, 18, 66, 84 },
			["18x18/Bid"] = { 0, 18, 86, 104 },
			["18x18/Caret/Down"] = { 0, 18, 106, 124 },
			["18x18/Caret/Right"] = { 0, 18, 126, 144 },
			["18x18/Checkmark/Circle"] = { 0, 18, 146, 164 },
			["18x18/Checkmark/Default"] = { 0, 18, 166, 184 },
			["18x18/Chevron/Down"] = { 0, 18, 186, 204 },
			["18x18/Chevron/Right"] = { 0, 18, 206, 224 },
			["18x18/Chevron/Up"] = { 0, 18, 226, 244 },
			["18x18/Circle"] = { 20, 38, 26, 44 },
			["18x18/Clock"] = { 26, 44, 0, 18 },
			["18x18/Close/Circle"] = { 20, 38, 46, 64 },
			["18x18/Close/Default"] = { 20, 38, 66, 84 },
			["18x18/Configure"] = { 20, 38, 86, 104 },
			["18x18/Delete"] = { 20, 38, 106, 124 },
			["18x18/DragHandle"] = { 20, 38, 126, 144 },
			["18x18/Duplicate"] = { 20, 38, 146, 164 },
			["18x18/Edit"] = { 20, 38, 166, 184 },
			["18x18/Expand All"] = { 20, 38, 186, 204 },
			["18x18/Export"] = { 20, 38, 206, 224 },
			["18x18/Filter"] = { 20, 38, 226, 244 },
			["18x18/Folder"] = { 46, 64, 0, 18 },
			["18x18/Grip"] = { 66, 84, 0, 18 },
			["18x18/Groups"] = { 86, 104, 0, 18 },
			["18x18/Hide"] = { 106, 124, 0, 18 },
			["18x18/Import"] = { 126, 144, 0, 18 },
			["18x18/Link"] = { 146, 164, 0, 18 },
			["18x18/Mailing"] = { 166, 184, 0, 18 },
			["18x18/More/Horizontal"] = { 186, 204, 0, 18 },
			["18x18/More/Vertical"] = { 206, 224, 0, 18 },
			["18x18/Operation"] = { 226, 244, 0, 18 },
			["18x18/PlayPause"] = { 40, 58, 20, 38 },
			["18x18/Popout"] = { 60, 78, 20, 38 },
			["18x18/Post"] = { 80, 98, 20, 38 },
			["18x18/Queue"] = { 100, 118, 20, 38 },
			["18x18/Reset"] = { 120, 138, 20, 38 },
			["18x18/Resize"] = { 140, 158, 20, 38 },
			["18x18/Running"] = { 160, 178, 20, 38 },
			["18x18/SaleRate"] = { 180, 198, 20, 38 },
			["18x18/Search"] = { 200, 218, 20, 38 },
			["18x18/Select All"] = { 220, 238, 20, 38 },
			["18x18/Shopping"] = { 40, 58, 40, 58 },
			["18x18/SkillUp"] = { 60, 78, 40, 58 },
			["18x18/Star/Filled"] = { 80, 98, 40, 58 },
			["18x18/Star/Unfilled"] = { 100, 118, 40, 58 },
			["18x18/Subtract/Circle"] = { 120, 138, 40, 58 },
			["18x18/Subtract/Default"] = { 140, 158, 40, 58 },
			["18x18/Visible"] = { 160, 178, 40, 58 },
			["18x18/WoW"] = { 180, 198, 40, 58 },
			["24x24/Close/Default"] = { 0, 24, 0, 24 },
			["Misc/Checkbox/Checked"] = { 200, 218, 40, 58 },
			["Misc/Checkbox/Unchecked"] = { 220, 238, 40, 58 },
			["Misc/Crafting"] = { 240, 256, 20, 36 },
			["Misc/Normal Search"] = { 240, 256, 38, 54 },
			["Misc/Radio/Checked"] = { 40, 58, 72, 90 },
			["Misc/Radio/Unchecked"] = { 40, 58, 92, 110 },
		},
	},
}
local NINE_SLICE_STYLES = {
	popup = {
		topLeft = "uiFrames.PopupTopLeftCorner",
		bottomLeft = "uiFrames.PopupBottomLeftCorner",
		topRight = "uiFrames.PopupTopRightCorner",
		bottomRight = "uiFrames.PopupBottomRightCorner",
		left = "uiFrames.PopupLeftEdge",
		right = "uiFrames.PopupRightEdge",
		top = "uiFrames.PopupTopEdge",
		bottom = "uiFrames.PopupBottomEdge",
		center = "__WHITE",
	},
}
local ROUNDED_RECTANGLE_CORNERS = {
	topLeft = "uiFrames.LargeRadiusTopLeft",
	bottomLeft = "uiFrames.LargeRadiusBottomLeft",
	topRight = "uiFrames.LargeRadiusTopRight",
	bottomRight = "uiFrames.LargeRadiusBottomRight",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function TexturePacks.OnInitialize()
	for key, info in pairs(TEXTURE_FILE_INFO) do
		TextureAtlas.RegisterFile(key, info)
	end

	for _, info in pairs(NINE_SLICE_STYLES) do
		-- extract the texture info
		for part, key in pairs(info) do
			if key == "__WHITE" then
				info[part] = {
					texture = "Interface\\Buttons\\WHITE8X8",
					coord = { 0, 1, 0, 1 },
					width = 8,
					height = 8,
				}
			else
				info[part] = TextureAtlas.ExtractFileInfo(key)
				local width, height = TextureAtlas.GetSize(key)
				info[part].width = width
				info[part].height = height
			end
		end
	end

	-- apply an offset to the topRight part of the popup style so it shows correctly
	NINE_SLICE_STYLES.popup.topRight.offset = {
		{ 0, 10 },
	}

	for key, info in pairs(NINE_SLICE_STYLES) do
		NineSlice.RegisterStyle(key, info)
	end

	-- extract the rounded rectangle corner texture info
	for part, key in pairs(ROUNDED_RECTANGLE_CORNERS) do
		ROUNDED_RECTANGLE_CORNERS[part] = TextureAtlas.ExtractFileInfo(key)
	end

	Rectangle.RegisterTextures(ROUNDED_RECTANGLE_CORNERS)
end
