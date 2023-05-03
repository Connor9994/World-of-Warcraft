local name,ZGV = ...

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ScrollChild = {}
local ui = ZGV.UI
ui:RegisterWidget("ScrollChild",ScrollChild)

local SkinData = ui.SkinData

--[[
	Class for a zygor themed scroll bar


	Sample Use:
		local scroll = CHAIN(ui:Create("ScrollBar",parent,name))

		.__END


	Known Issues:

--]]

function ScrollChild:New(parent,name,childtype)
	local scroll = CHAIN(ui:Create("ScrollBar",parent,name and name.."_Scroll" or nil))
		:MaxValueAtOnce(parent:GetHeight())

		:SetScript("OnVerticalScroll",function(me,offset)
			me:TotalValue(me.child:GetHeight())
			me:MaxValueAtOnce(me:GetHeight())
			me:SetValue(me:GetVerticalScroll())

			me.child:SetWidth(me:GetWidth()-5)
		end)
		:SetScript("OnMousewheel",function(me,delta)
			local sc = me:GetVerticalScroll() - 20 * delta
			sc=max(0,min(sc, max(0,me.child:GetHeight()-me:GetHeight())))
			me:SetVerticalScroll(sc)
		end)
		:SetScript("OnShow",function(me)
			-- Arghhh needs to be called when shown so that it creates the scroll bar properly... dis ugly
			ZGV:ScheduleTimer(function()
				me:GetScript("OnVerticalScroll")(me)
			end,.2)
		end)
		:SetVerticalScroll(0)
	.__END

	local child

	if childtype and type(childtype)~="string" then
		child = childtype
	elseif childtype == "editbox" then
		child = CHAIN(ZGV.CreateFrameWithBG("EditBox", name, scroll))
			:SetMultiLine(true)
			:SetMaxLetters(999999)
			:EnableMouse(true)
			:SetAutoFocus(false)
			:SetFont(FONT,11,"")
			:SetCursorPosition(0)

			:SetScript("OnShow",function(me) me:SetCursorPosition(0) end)
			:SetScript("OnEscapePressed", function(me) parent:Hide() end)
			-- Mostly blizzard stuff to make edit boxes scroll properly while typing. UIPanelTemplates.lua
			:SetScript("OnUpdate", function(me,elapsed)
				if not me.cursorOffset then me.cursorOffset = 0 end
				ScrollingEdit_OnUpdate(me, elapsed, me:GetParent());
			end)
			:SetScript("OnCursorChanged", function(me, x, y, w, h)
				if self.MyCursorOffset ~= y then
					self.MyCursorOffset = y		-- w/o this scroll box jumps around sometimes.
					ScrollingEdit_OnCursorChanged(me, x, y, w, h)
				end
			end)
			:SetScript("OnTextChanged", function(me,user)
				if user then
					ScrollingEdit_OnTextChanged(me, me:GetParent());
				end
			end)
		.__END
		ScrollingEdit_SetCursorOffsets(child, 0, 0);
		scroll.frameBut = CHAIN(CreateFrame("Button",name and name.."_FrameBut" or nil,scroll))
			:SetAllPoints()
			:RegisterForClicks("LeftButtonUp")
			:SetScript("OnClick", function(me,but)
				me:GetParent().child:SetFocus(true)
			end)
		.__END

	else
		child = ZGV.CreateFrameWithBG("Frame",name)
	end

	scroll:SetScrollChild(child)

	if type(childtype)=="string" then
		CHAIN(child)
			:SetPoint("TOPLEFT")
			:SetPoint("TOPRIGHT")
	end

	child.scroll = scroll
	scroll.child = child

	for f,fun in pairs(self) do
		child[f]=fun
	end

	return scroll
end