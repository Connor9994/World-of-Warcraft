local name,ZGV = ...

local Log = {}
ZGV.Log = Log

Log.entries = {}
Log.size = 500
Log.loud = false

function Log:SetSize(size)
	self.size = size
	self:Trim()
end

function Log:Trim()
	local len = #self.entries
	if len>self.size then
		for i=1,len-self.size,1 do
			table.remove(self.entries,1)
		end
	end
end

local floor=math.floor
function Log:Add(frm,...)
	local s = frm:format(...)
	--local time = GetTime()
	--local ms=(time%1)*1000
	--time=time-ms  ms=floor(ms*1000)
	--local s=time%60  time=floor((time-s)/60)
	--local m=time%60  time=floor((time-s)/60)
	--local h=time
	--local timestamp = ("%d:%02d:%02d.%03d"):format(h,m,s,ms)

	local debugms = debugprofilestop()%1000

	local datestamp = ("%s.%03d.%03d"):format(date("%H:%M:%S"),(GetTime()%1)*1000,debugms)

	table.insert(self.entries, datestamp .. "> "..s)
	if #self.entries>self.size then
		table.remove(self.entries,1)
	end
	if self.loud then
		ChatFrame1:AddMessage("|cff8888ff".. datestamp ..">|r |cffccccff"..s.."|r")
	end
	if ZGV.ItemScore and ZGV.ItemScore.Logs and ZGV.ItemScore.verbose then
		tinsert(ZGV.ItemScore.Logs,"|cff8888ff".. datestamp ..">|r |cffccccff"..s.."|r")
	end
end

function Log:Print(n)
	local len = #self.entries
	if not n or n>len then n=len end
	for i=len-n+1,len,1 do
		ChatFrame1:AddMessage(self.entries[i])
	end
end

function Log:Dump(n)
	local s = ""
	local len = #self.entries
	if not n or n>len then n=len end
	for i=len-n+1,len,1 do
		s = s .. self.entries[i] .. "\n"
	end
	return s
end