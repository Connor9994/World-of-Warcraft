-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local WidgetExtensions = TSM.Init("UI.WidgetExtensions")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local private = {
	extensions = nil,
	cancellables = {},
}



-- ============================================================================
-- Default Extensions
-- ============================================================================

private.extensions = {
	_base = {
		TSMSetShown = function(obj, shown)
			if shown then
				obj:Show()
			else
				obj:Hide()
			end
		end,
		TSMSetSize = function(obj, width, height)
			obj:SetWidth(width)
			obj:SetHeight(height)
		end,
		TSMSetPoints = function(obj, points)
			obj:ClearAllPoints()
			for _, point in ipairs(points) do
				obj:SetPoint(unpack(point))
			end
		end,
		TSMSetScript = function(obj, script, handler, ...)
			if type(handler) == "function" then
				ScriptWrapper.Set(obj, script, handler, ...)
			elseif handler == nil then
				ScriptWrapper.Clear(obj, script)
			end
		end,
		TSMSetOnUpdate = function(obj, handler, ...)
			obj:TSMSetScript("OnUpdate", handler, ...)
		end,
		TSMCancelAll = function(obj)
			if not private.cancellables[obj] then
				return
			end
			for _, cancellable in pairs(private.cancellables[obj]) do
				cancellable:Cancel()
			end
			wipe(private.cancellables[obj])
		end,
		_TSMSetOrUpdateCancellable = function(obj, key, publisher)
			private.cancellables[obj] = private.cancellables[obj] or {}
			if private.cancellables[obj][key] then
				private.cancellables[obj][key]:Cancel()
			end
			private.cancellables[obj][key] = publisher
			publisher:Stored()
		end
	},
	Frame = {
		_TSMSetBackdropColor = function(frame, color)
			frame:SetBackdropColor(color:GetFractionalRGBA())
		end,
		TSMSubscribeBackdropColor = function(texture, color)
			texture:_TSMSetOrUpdateCancellable("backdropColor", Theme.GetPublisher(color)
				:CallMethod(texture, "_TSMSetBackdropColor")
			)
		end,
	},
	Button = {
		TSMSetEnabled = function(button, enabled)
			if enabled then
				button:Enable()
			else
				button:Disable()
			end
		end,
		TSMSetHighlightLocked = function(button, locked)
			if locked then
				button:LockHighlight()
			else
				button:UnlockHighlight()
			end
		end,
	},
	Texture = {
		_TSMSetColorTexture = function(texture, color)
			texture:SetColorTexture(color:GetFractionalRGBA())
		end,
		TSMSubscribeColorTexture = function(texture, color)
			texture:_TSMSetOrUpdateCancellable("colorTexture", Theme.GetPublisher(color)
				:CallMethod(texture, "_TSMSetColorTexture")
			)
		end,
		_TSMSetVertexColor = function(texture, color)
			texture:SetVertexColor(color:GetFractionalRGBA())
		end,
		TSMSubscribeVertexColor = function(texture, color)
			texture:_TSMSetOrUpdateCancellable("vertexColor", Theme.GetPublisher(color)
				:CallMethod(texture, "_TSMSetVertexColor")
			)
		end,
		TSMSetTextureAndSize = function(texture, atlasKey)
			TextureAtlas.SetTextureAndSize(texture, atlasKey)
		end,
		TSMSetTextureAndCoord = function(texture, value)
			if type(value) == "string" and TextureAtlas.IsValid(value) then
				TextureAtlas.SetTexture(texture, value)
			else
				texture:SetTexture(value)
				texture:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
			end
		end,
		TSMSetSize = function(texture, widthOrAtlasKey, height)
			if type(widthOrAtlasKey) == "string" then
				assert(height == nil)
				TextureAtlas.SetSize(texture, widthOrAtlasKey)
			else
				texture:SetWidth(widthOrAtlasKey)
				texture:SetHeight(height)
			end
		end,
	},
	FontString = {
		_TSMSetTextColor = function(text, color)
			text:SetTextColor(color:GetFractionalRGBA())
		end,
		TSMSubscribeTextColor = function(text, color)
			text:_TSMSetOrUpdateCancellable("textColor", Theme.GetPublisher(color)
				:CallMethod(text, "_TSMSetTextColor")
			)
		end,
		TSMSetFont = function(text, font)
			if type(font) == "string" then
				font = Theme.GetFont(font)
			end
			text:SetFont(font:GetWowFont())
		end,
	},
	AnimationGroup = {
		TSMSetPlaying = function(ag, playing)
			if playing then
				ag:Play()
			else
				ag:Stop()
			end
		end,
	},
	EditBox = {
		TSMSetEnabled = function(editbox, enabled)
			if enabled then
				editbox:Enable()
			else
				editbox:Disable()
			end
		end,
		_TSMSetTextColor = function(editbox, color)
			editbox:SetTextColor(color:GetFractionalRGBA())
		end,
		TSMSubscribeTextColor = function(texture, color)
			texture:_TSMSetOrUpdateCancellable("textColor", Theme.GetPublisher(color)
				:CallMethod(texture, "_TSMSetTextColor")
			)
		end,
		TSMSetFont = function(editbox, font)
			if type(font) == "string" then
				font = Theme.GetFont(font)
			end
			editbox:SetFont(font:GetWowFont())
		end,
		TSMSetFocused = function(editbox, focused)
			if focused then
				editbox:SetFocus()
			else
				editbox:ClearFocus()
			end
		end,
		TSMSetAllHighlighted = function(editbox, highlighted)
			if highlighted then
				editbox:HighlightText(0, -1)
			else
				editbox:HighlightText(0, 0)
			end
		end,
	},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Adds all registered extensions to an object.
---@param obj table The widget object
function WidgetExtensions.AddToObject(obj)
	local extensions = private.extensions[obj:GetObjectType()]
	if extensions then
		for name, func in pairs(extensions) do
			assert(not obj[name])
			obj[name] = func
		end
	end
	for name, func in pairs(private.extensions._base) do
		if not obj[name] then
			obj[name] = func
		end
	end
end
