-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TextureAtlas = TSM.Init("Util.TextureAtlas") ---@class Util.TextureAtlas
local Color = TSM.Include("Util.Color")
local Theme = TSM.Include("Util.Theme")
local private = {
	files = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Adds textures from a texture pack file.
---@param key string The key for the file
---@param info table The table describing the textures within the file
function TextureAtlas.RegisterFile(key, info)
	assert(type(key) == "string" and type(info) == "table")
	assert(not private.files[key])
	private.files[key] = info
end

---Extracts registered file info.
---@param key string The key for the file
---@return table @The file info
function TextureAtlas.ExtractFileInfo(key)
	local fileInfo, coord, colorKey, flip = private.SplitTexturePath(key)
	assert(not colorKey and not flip)
	return {
		texture = fileInfo.path,
		coord = { private.GetTexCoord(fileInfo, coord) },
	}
end

---Check if a texture key is valid.
---@param key string The texture key
---@return boolean @Whether or not the key is valid
function TextureAtlas.IsValid(key)
	local fileInfo, coord = private.SplitTexturePath(key)
	return fileInfo and coord and true or false
end

---Gets the color key component of a texture key.
---@param key string The texture key
---@return ThemeColorKey @The color key
function TextureAtlas.GetColorKey(key)
	local fileInfo, _, colorKey = private.SplitTexturePath(key)
	assert(fileInfo)
	return colorKey
end

---Gets the width and height of a texture.
---@param key string The texture key
---@return number @The width
---@return number @The height
function TextureAtlas.GetSize(key)
	local fileInfo, coord = private.SplitTexturePath(key)
	assert(fileInfo and coord)
	local minX, maxX, minY, maxY = unpack(coord)
	local width = (maxX - minX) / fileInfo.scale
	local height = (maxY - minY) / fileInfo.scale
	return width, height
end

---Gets the width of a texture.
---@param key string The texture key
---@return number @The width
function TextureAtlas.GetWidth(key)
	local width = TextureAtlas.GetSize(key)
	return width
end

---Gets the height of a texture.
---@param key string The texture key
---@return number @The height
function TextureAtlas.GetHeight(key)
	local _, height = TextureAtlas.GetSize(key)
	return height
end

---Sets the visible texture of a texture widget.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetTexture(texture, key)
	local fileInfo, coord, colorKey, flip = private.SplitTexturePath(key)
	texture:SetTexture(fileInfo.path)
	texture:SetTexCoord(private.GetTexCoord(fileInfo, coord, flip))
	if colorKey then
		texture:SetVertexColor(Theme.GetColor(colorKey):GetFractionalRGBA())
	else
		texture:SetVertexColor(1, 1, 1, 1)
	end
end

---Sets the size of a texture widget to match a texture key.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetSize(texture, key)
	local width, height = TextureAtlas.GetSize(key)
	texture:SetWidth(width)
	texture:SetHeight(height)
end

---Sets the widget of a texture widget to match a texture key.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetWidth(texture, key)
	texture:SetWidth(TextureAtlas.GetWidth(key))
end

---Sets the height of a texture widget to match a texture key.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetHeight(texture, key)
	texture:SetHeight(TextureAtlas.GetHeight(key))
end

---Sets the visible texture and width of a texture widget to match a texture key.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetTextureAndWidth(texture, key)
	TextureAtlas.SetTexture(texture, key)
	TextureAtlas.SetWidth(texture, key)
end

---Sets the visible texture and height of a texture widget to match a texture key.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetTextureAndHeight(texture, key)
	TextureAtlas.SetTexture(texture, key)
	TextureAtlas.SetHeight(texture, key)
end

---Sets the visible texture and size of a texture widget to match a texture key.
---@param texture Texture The texture widget
---@param key string The texture key
function TextureAtlas.SetTextureAndSize(texture, key)
	TextureAtlas.SetTexture(texture, key)
	TextureAtlas.SetSize(texture, key)
end

---Gets a UI escape code sequence for a texture.
---@param key string The texture key
---@return string @The escape code sequence
function TextureAtlas.GetTextureLink(key)
	local width, height = TextureAtlas.GetSize(key)
	local fileInfo, coord, colorKey, flip = private.SplitTexturePath(key)
	assert(fileInfo and coord)
	local minX, maxX, minY, maxY = private.GetTexCoord(fileInfo, coord, flip, true)
	local r, g, b, a = 255, 255, 255, 255
	if colorKey then
		r, g, b, a = Theme.GetColor(colorKey):GetRGBA()
	end
	assert(a == 255)
	return "|T"..strjoin(":", fileInfo.path, width, height, 0, 0, fileInfo.width, fileInfo.height, minX, maxX, minY, maxY, r, g, b).."|t"
end

---Creates a colored texture key.
---@param key string The texture key to add the color to
---@param colorKey ThemeColorKey The theme color key
---@return string @The escape code sequence
function TextureAtlas.GetColoredKey(key, colorKey)
	local fileInfo, _, existingColor = private.SplitTexturePath(key)
	assert(fileInfo and not existingColor)
	local color = Theme.GetColor(colorKey)
	assert(color and not color:Equals(Color.GetTransparent()))
	return key.."#"..colorKey
end

---Crestes a vertically flipped texture key.
---@param key string The texture key to flip
---@return string @The flipped texture key
function TextureAtlas.GetFlippedVerticallyKey(key)
	local fileInfo, _, existingColor, existingMirror = private.SplitTexturePath(key)
	assert(fileInfo and not existingColor and not existingMirror)
	return key.."@v"
end

---Crestes a horizontally flipped texture key.
---@param key string The texture key to flip
---@return string @The flipped texture key
function TextureAtlas.GetFlippedHorizontallyKey(key)
	local fileInfo, _, existingColor, existingMirror = private.SplitTexturePath(key)
	assert(fileInfo and not existingColor and not existingMirror)
	return key.."@h"
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SplitTexturePath(key)
	local file, entry, colorKey, flip, colorKey2 = strmatch(key, "^([^%.]+)%.([^#@]+)(#?[0-9a-fA-Z_%+%-]*)@?([hv]?)(#?[0-9a-fA-Z_%+%-]*)$")
	colorKey = (colorKey ~= "" and colorKey) or (colorKey2 ~= "" and colorKey2) or nil
	flip = flip ~= "" and flip or nil
	local fileInfo = file and private.files[file]
	-- remove the leading '#' from theme color keys
	colorKey = colorKey and strsub(colorKey, 2) or nil
	return fileInfo, fileInfo and fileInfo.coord[entry], colorKey, flip
end

function private.GetTexCoord(fileInfo, coord, flip, nonNormalized)
	local minX, maxX, minY, maxY = unpack(coord)
	if flip == "h" then
		minX, maxX = maxX, minX
	elseif flip == "v" then
		minY, maxY = maxY, minY
	elseif flip then
		error("Invalid flip direction: "..tostring(flip))
	end
	if not nonNormalized then
		minX = minX / fileInfo.width
		maxX = maxX / fileInfo.width
		minY = minY / fileInfo.height
		maxY = maxY / fileInfo.height
	end
	return minX, maxX, minY, maxY
end
