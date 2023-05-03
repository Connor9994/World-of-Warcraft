local name,ZGV = ...

ZGV.TooltipScanner = {}
local TS = ZGV.TooltipScanner

if C_TooltipInfo then
	function TS:GetTooltip(itemlink)
		local data = C_TooltipInfo.GetHyperlink(itemlink)
		local results = {}
		if data then
			for line,linedata in ipairs(data.lines) do
				for _,info in ipairs(linedata.args) do
					if info.stringVal then
						table.insert(results,info.stringVal)
					end
				end
			end
		end
		return results
	end

	function TS:GetQuestLogItem(type,index,quest)
		local data = C_TooltipInfo.GetQuestLogItem(type,index,quest)
		if data then
			for _,info in ipairs(data.args) do
				if info.field=="hyperlink" then
					return info.stringVal
				end
			end
		end
	end

else
	local Gratuity = LibStub("LibGratuity-3.0")
	function TS:GetTooltip(itemlink)
		Gratuity:SetHyperlink(itemlink)
		local results = {}
		if Gratuity:NumLines()==0 then return results end

		for num=1,Gratuity:NumLines() do
			local line=Gratuity:GetLine(num)

			if not line then return results,0 end
			if line==RETRIEVING_ITEM_INFO then return results end

			line = line:gsub("|c........",""):gsub("|r","") -- strip color codes, if any

			table.insert(results,line)
		end
		return results
	end

	function TS:GetQuestLogItem(type,index,quest)
		Gratuity:SetQuestLogItem(type,index,quest)
		return select(2,Gratuity.vars.tooltip:GetItem())
	end


end