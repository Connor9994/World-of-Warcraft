local name,ZGV = ...

local Config = {}
ZGV.Config = Config

function Config:Run()
	local profiles = ZGV.db.profiles

	if not ZGV.db.profile.usernamed then 
	-- we are not using zygor profile, find default or create new one

		local default_found=false
		for profilename,profile in pairs(profiles) do
			if profile.is_default then
				ZGV.db:SetProfile(profilename)
				default_found=true
				ZGV.db.char.profile_selected=true
				--[[
				for page,pdata in pairs(ZGV.optiontables) do
					if pdata.args then for field,fdata in pairs(pdata.args) do
						local newval = ZGV.db.profile[fdata]
						if newval and type(fdata.set)=="function" then
							if fdata.type=="color" then
								--field.set({k},newval.r,newval.g,newval.b,newval.a) -- TODO: rework? what's k?
							else
								--field.set({k},newval)
							end
						end
					end end
				end
				ZGV:Print("Enabled default profile: "..profilename)
				--]]
				break
			end
		end
		if not default_found then
			local profilename = GetUnitName("player") or "Default"
			ZGV.db:SetProfile(profilename)
			ZGV:Options_RegisterDefaults()
			ZGV.db.profile.usernamed = true
		end
	end

	-- clean up generic ace profiles
	local skip_fields={profile_current=true,dispprimary=true,debug_flags=true}
	for profile,profiledata in pairs(ZGV.db.profiles) do
			if not profiledata.usernamed then
			local profile_is_default=true
			for key,val in pairs(profiledata) do
				if not skip_fields[key] and ZGV.db.defaults.profile[key] and val~=ZGV.db.defaults.profile[key] then
					profile_is_default=false
					break
				end
			end
			if profile_is_default then
				ZGV.db:DeleteProfile(profile)
			end
		end
	end

	if ZGV.db.profile.ranconfig2 then ZGV.db.global.saw_tutorial=true end

	--[[
	if not ZGV.db.global.saw_tutorial then
		ZGV.Tutorial:Run()
		ZGV.db.global.saw_tutorial=true
	end
	--]]
end