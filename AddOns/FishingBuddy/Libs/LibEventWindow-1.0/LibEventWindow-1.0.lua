--[[
Name: LibEventWindow-1.0
Maintainers: Sutorix <sutorix@hotmail.com>
Description: A library to handle windows that can register events cleanly.
Copyright (c) by The Software Cobbler
Licensed under a Creative Commons "Attribution Non-Commercial Share Alike" License
--]]

local MAJOR_VERSION = "LibEventWindow-1.0"
local MINOR_VERSION = 0

if not LibStub then error(MAJOR_VERSION .. " requires LibStub") end

local EventLib, oldLib = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not EventLib then
	return
end

local metatable = {
	__call = function(methods, ...)
		for _, method in next, methods do
			method(...)
		end
	end
}

local copyfuncs = {};
function EventLib:Register(event, method)
	local methods = self[event]
	if (methods) then
		self[event] = setmetatable({methods, method}, metatable)
	else
		self[event] = setmetatable({method}, metatable)
		self:RegisterEvent(event)
	end
end
tinsert(copyfuncs, "Register");

function EventLib:UnRegister(event, method)
	local methods = self[event]
	if (methods) then
		local jdx;
		for idx,f in ipairs(self[event]) do
			if ( f == method ) then
				jdx = idx;
			end
		end
		if ( jdx) then
			table.remove(self[event], jdx);
		end
	end
end
tinsert(copyfuncs, "UnRegister");

function EventLib:PreEvent(method)
	self.preevent = method
end
tinsert(copyfuncs, "PreEvent");

function EventLib:PostEvent(method)
	self.postevent = method
end
tinsert(copyfuncs, "PostEvent");

function EventLib:Embed(target)
	for _,name in pairs(copyfuncs) do
		target[name] = EventLib[name];
	end
end

function EventLib:CreateWindow()
    local frame = CreateFrame('Frame')
	frame:SetScript('OnEvent', function(self, event, ...)
		if self.preevent then
			self:preevent(event, ...)
		end
		self[event](...)
		if self.postevent then
			self:postevent(event, ...)
		end
	end)
    frame:Hide();

    EventLib:Embed(frame)

    return frame
end
