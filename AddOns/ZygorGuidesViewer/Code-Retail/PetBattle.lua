local name,ZGV = ...

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ui = ZGV.UI

local PetBattle = {}
ZGV.PetBattle = PetBattle

PetBattle.PetJournal = {
	Icons = {},
	AvailGuides = {},
	}

local pet=PetBattle

local _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe = _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe

local C_Container = ZGV.Retrofit.C_Container

tinsert(ZGV.startups,{"PetBattle hooks",function(self)
	PetBattle:PetRegEvents()
	hooksecurefunc("ToggleCollectionsJournal",function() PetBattle.PetJournal.JournalIconSetup() end)
	-- ZGV:ScheduleTimer(function() PetBattle.PetJournal.JournalIconSetup() end, 2.0)

	if IsFrameLockActive("PETBATTLES") then
		ZGV.PetBattle:ShowInterface()
	end
end})

PetBattle.petQuality = {
	[1]="|cff6D6968Poor",
	[2]="|cffFFFFFFCommon",
	[3]="|cff00FF00Uncommon",
	[4]="|cff0000FFRare",
	[5]="|cff893BFFEpic",
	[6]="|cffF88017Legendary"
}

--Damage type and pet type.
PetBattle.petType = {
	[1]="Humanoid",
	[2]="Dragonkin",
	[3]="Flying",
	[4]="Undead",
	[5]="Critter",
	[6]="Magic",
	[7]="Elemental",
	[8]="Beast",
	[9]="Aquatic",
	[10]="Mechanical"
}
--I know these could be done without listing out the 1-10, just easier to see which number corresponds to each type.

PetBattle.AbilityModifer = {
	[0]= { strong=0, weak=0, }, -- fallback for typeless abilities
	--Human does 50% more damage to Dragonkin and 33% less to Beast
	[1]= { strong=2, weak=8, },
	[2]= { strong=6,  weak=4, },
	[3]= { strong=9, weak=2, },
	[4]= { strong=1, weak=9, },
	[5]= { strong=4, weak=1, },
	[6]= { strong=3, weak=10, },
	[7]= { strong=10, weak=5, },
	[8]= { strong=5, weak=3, },
	[9]= { strong=7, weak=6, },
	[10]= { strong=8, weak=7, },
}

PetBattle.TypeEffects = {
	--Human takes 50% more damage from Undead and 33% less damage from Critter
	[1]= { strong=4, weak=5, },
	[2]= { strong=1,  weak=3, },
	[3]= { strong=6, weak=8, },
	[4]= { strong=5, weak=2, },
	[5]= { strong=8, weak=7, },
	[6]= { strong=2, weak=9, },
	[7]= { strong=9, weak=10, },
	[8]= { strong=10, weak=1, },
	[9]= { strong=3, weak=4, },
	[10]= { strong=7, weak=6, },
}

--TODO should probably be localized
PetBattle.TypePassive = {
	[1] = "Recovers 5% life with every attack.",
	[2] = "Will deal 50% additional damage on the next round after bringing a target's health below 25%.",
	[3] = "Has 50% increased speed while above 50% health.",
	[4] = "Will return to life for one round after being killed.",
	[5] = "Breaks out of crowd control more quickly.",
	[6] = "Cannot take more than 50% of their life in 1 hit.",
	[7] = "Ignores all weather effects.",
	[8] = "Has 25% increased damage while below 50% health.",
	[9] = "The damge dealt by damage over time abilities is decreased by 25%.",
	[10] = "Comes back to life once per battle with 25% life.",
}

function PetBattle:GetAbilityText(id,maxHp,power,speed)
	FloatingPetBattleAbility_Show(id,maxHp,power,speed)
	FloatingPetBattleAbilityTooltip:Hide()
	return FloatingPetBattleAbilityTooltip.Description:GetText()
end

function PetBattle_MainFrameUpdateRound(round)
	local mainframe=PetBattle.BattleFrame.Main

	local enemyPet=C_PetBattles.GetActivePet(2)
	local allyPet=C_PetBattles.GetActivePet(1)

	if round then
		mainframe.Round.label:SetText(round+1)
	end

	local power=C_PetBattles.GetPower(2,enemyPet)
	local speed=C_PetBattles.GetSpeed(2,enemyPet)
	local maxHp=C_PetBattles.GetMaxHealth(2,enemyPet)

	mainframe.Speed.label:SetText(speed)
	mainframe.Power.label:SetText(power)

	-- Update the cooldown of enemy abilities
	local owner,petindex,ability
	C_PetBattles.GetAbilityState(owner,petindex,ability) -- TODO: what? these are all nils!
	for i=1, NUM_BATTLE_PET_ABILITIES do
		local ability=_G['ZygorPetBattleFrame_MainAbility'..i]

		local available,cdleft,_=C_PetBattles.GetAbilityState(2,enemyPet,i)
		local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(2, enemyPet, i)
		if id then
			local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

			if available then
				ability:SetText(link.." |cffff0000 is available")
			elseif not available and cdleft>0 then
				ability:SetText(link.." |cff00ff00 is on cooldown for "..cdleft.." turns")
			end
		end
	end
end

function PetBattle_EnemyFrameUpdateRound(round)
	local enemyframe=PetBattle.BattleFrame.Enemy

	if round then
		enemyframe.Round.label:SetText(round+1)
	end

	for i=1, NUM_BATTLE_PETS_IN_BATTLE do
		local name,creature=C_PetBattles.GetName(2,i)

		if name then
			local enemy=enemyframe[i]

			local health=C_PetBattles.GetHealth(2,i)

			enemy.Health.label:SetText(C_PetBattles.GetHealth(2,i))
		end
	end
end

local function GetExp(pet)
	local ally=PetBattle.BattleFrame.Ally[pet]

	local level=C_PetBattles.GetLevel(1,pet)
	local health=C_PetBattles.GetHealth(1,pet)
	local text=" "

	if level==25 then
		text="Max level already"
	elseif health==0 then
		text="|cffff0000Pet is dead"
	elseif ally.BeenActive then
		text="|cff00ff00Will get experience"
	else
		text="|cffff0000Will not get experience"
	end

	return text
end

function PetBattle_AllyFrameUpdateRound(round)
	local allyframe=PetBattle.BattleFrame.Ally

	if round then
		allyframe.Round.label:SetText(round+1)
	end

	for j=1, NUM_BATTLE_PETS_IN_BATTLE do
		local name,creature=C_PetBattles.GetName(1,j)

		local allyPet=j

		if name then
			local ally=allyframe[j]

			local health=C_PetBattles.GetHealth(1,allyPet)
			local power=C_PetBattles.GetPower(1,allyPet)
			local speed=C_PetBattles.GetSpeed(1,allyPet)
			local maxHp=C_PetBattles.GetMaxHealth(1,allyPet)
			local activePet=C_PetBattles.GetActivePet(1)

			if activePet==j then ally.BeenActive=true end

			ally.Health.label:SetText(health)
			ally.InBattle.label:SetText(GetExp(j))

			for i=1, NUM_BATTLE_PET_ABILITIES do
				local ability=_G['ZygorPetBattleFrame_Ally'..j..'Ability'..i]
				ability:SetText(" ") -- get rid of default

				local available,cdleft,_=C_PetBattles.GetAbilityState(1,allyPet,i)
				local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(1, allyPet, i)
				if id then
					local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

					if available then
						ability:SetText("|T"..icon..":0|t "..link.."|cff00ff00".." is available")
					elseif cdleft>0 then
						ability:SetText("|T"..icon..":0|t "..link.."|cffff0000".." is on cooldown for "..cdleft.." turns")
					end
				else
					--Pet doesn't have this many abilities yet
					ability:SetText(" ")
				end
			end
		end
	end
end

function PetBattle:MainFrameUpdate()
	local p=self
	local pet=self.BattleFrame.Main

	local enemyPet=C_PetBattles.GetActivePet(2)
	local allyPet=C_PetBattles.GetActivePet(1)

	local allySpeed=C_PetBattles.GetSpeed(1,allyPet)

	local petTypeNum=C_PetBattles.GetPetType(2,enemyPet)
	local power=C_PetBattles.GetPower(2,enemyPet)
	local speed=C_PetBattles.GetSpeed(2,enemyPet)
	local name,creature=C_PetBattles.GetName(2,enemyPet)
	local level=C_PetBattles.GetLevel(2,enemyPet)
	local quality=C_PetBattles.GetBreedQuality(2,enemyPet)
	local maxHp=C_PetBattles.GetMaxHealth(2,enemyPet)
	local bigIcon=C_PetBattles.GetIcon(2,enemyPet) --always their pets.


	local ptype=p.petType
	local effects=p.TypeEffects[petTypeNum]

	pet.Name.label:SetText(name)
	pet.Level.label:SetText(level)
	pet.Quality.label:SetText(p.petQuality[quality])
	pet.Power.label:SetText(power)
	pet.Speed.label:SetText(speed)
	local speedAdv=allySpeed>speed and "|cff00ff00Ally" or "|cfff00000Enemy"
	pet.SpeedAdv.label:SetText(speedAdv)
	pet.Breed.label:SetText(ptype[petTypeNum])
	pet.Modifers.label:SetText("|cffffffffTakes extra damage from "..ptype[effects.strong]..".\nTakes reduced damage from "..ptype[effects.weak]..".|r")
	pet.Passive.label:SetText(p.TypePassive[petTypeNum]) pet.Passive:SetHeight(pet.Passive.label:GetStringHeight())
	pet.Icon:SetText("|T"..bigIcon..":0|t")

	local enemyAbilities = {}

	local abilitylist=pet.Abilities
	abilitylist:SetHeight(12)--Gets reset below.

	for i=1, NUM_BATTLE_PET_ABILITIES do
		local ability=_G['ZygorPetBattleFrame_MainAbility'..i]
		local abilitylabel=_G['ZygorPetBattleFrame_MainAbility'..i..'Label']
		local abilityicon=_G['ZygorPetBattleFrame_MainAbilIcon'..i]
		local userTypeNum=C_PetBattles.GetPetType(1,allyPet)

		local available,cdleft,_=C_PetBattles.GetAbilityState(2,enemyPet,i)
		local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(2, enemyPet, i)
		if id then
			local text = PetBattle:GetAbilityText(id,maxHp,power,speed)
			local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

			if available then
				ability:SetText(link.."|cffff0000 is available")
			elseif cdleft>0 then
				ability:SetText(link.."|cff00ff00 is on cooldown for "..cdleft.." turns")
			else
				--Default at the start of a match.
				ability:SetText(link.."|cffff0000 is available")
			end

			local modifers = p.AbilityModifer[abilityPetType or 0]
			local strongcolor="|cffffffff"
			local weakcolor="|cffffffff"
			if modifers.strong==userTypeNum then strongcolor="|cffff0000" elseif modifers.weak==userTypeNum then weakcolor="|cff00ff00" end
			local effect = ""
			if abilityPetType then effect=strongcolor.."\nExtra damage to "..ptype[modifers.strong].."."..weakcolor.."\nReduced damage to "..ptype[modifers.weak]..".|r" end

			abilitylabel:SetText("|cffFFE87C"..text.."|r"..effect)

			abilityicon:SetText("|T"..icon..":0|t")

			ability:SetScript("OnHyperlinkClick",function()
				FloatingPetBattleAbilityTooltip:Hide()--Hide any old ones
				FloatingPetBattleAbility_Show(id,maxHp,power,speed)
				FloatingPetBattleAbilityTooltip.zclicked=true
				end)

			ability:SetScript("OnHyperlinkEnter",function()
				if not FloatingPetBattleAbilityTooltip:IsVisible() then FloatingPetBattleAbilityTooltip.zclicked=false end -- If not visible at then it is not clicked.
				FloatingPetBattleAbility_Show(id,maxHp,power,speed)
				end)
			ability:SetScript("OnHyperlinkLeave",function() if not FloatingPetBattleAbilityTooltip.zclicked then FloatingPetBattleAbilityTooltip:Hide() end end)

			ability:SetHeight(12) abilitylabel:SetHeight(0) -- ability is only ever 1 line. Setting the fontstring height to 0 makes it set to the correct height
			abilitylist:SetHeight(abilitylist:GetHeight()+ abilitylabel:GetStringHeight()+ability:GetHeight()+3)

			local abil={ id=id,description=text,abiltype=abilityPetType,strong=modifers.strong,weak=modifers.weak }

			tinsert(enemyAbilities,abil)

		else
			--Pet doesn't have this many abilities yet
			ability:SetText(" ")
			abilitylabel:SetText(" ")
			abilityicon:SetText(" ")

			--abilitylist:SetHeight() -- Don't set any new height here since these line are invisible.
		end
	end

	local scores = PetBattle:ComparePets(petTypeNum,enemyAbilities,level,speed)
	PetBattle:UpdateSuggestedPets(scores,"Main")

	local bottomPoint
	if pet.Suggest3 then
		bottomPoint = pet.Suggest3:GetBottom()
	elseif pet.Suggest2 then
		bottomPoint = pet.Suggest2:GetBottom()
	else
		bottomPoint = pet.Suggest1:GetBottom()
	end

	--self.BattleFrame:SetHeight(pet.Close:GetTop() - pet.bottom:GetBottom() + 5)
	self.BattleFrame:SetHeight(pet.Close:GetTop() - bottomPoint + 10)
end

function PetBattle:EnemyFrameUpdate()
	local p=self
	local pet=self.BattleFrame.Enemy
	for j=1, NUM_BATTLE_PETS_IN_BATTLE do

		local enemyPet=j

		local petTypeNum=C_PetBattles.GetPetType(2,enemyPet)
		local power=C_PetBattles.GetPower(2,enemyPet)
		local health=C_PetBattles.GetHealth(2,enemyPet)
		local speed=C_PetBattles.GetSpeed(2,enemyPet)
		local name,creature=C_PetBattles.GetName(2,enemyPet)
		local level=C_PetBattles.GetLevel(2,enemyPet)
		local quality=C_PetBattles.GetBreedQuality(2,enemyPet)
		local maxHp=C_PetBattles.GetMaxHealth(2,enemyPet)
		local bigIcon=C_PetBattles.GetIcon(2,enemyPet) --always their pets.


		local pType=p.petType[petTypeNum]

		if name then

			pet[j].Name.label:SetText(name)
			pet[j].Level.label:SetText(level)
			pet[j].Health.label:SetText(health)
			pet[j].Quality.label:SetText(p.petQuality[quality])
			pet[j].Breed.label:SetText(pType)
			pet[j].Icon:SetText("|T"..bigIcon..":0|t")

			local enemyAbilities = {}

			local abilitylist=pet[j].Abilities
			abilitylist:SetHeight(27)--2 lines + a space

			local ability=pet[j].Ability
			ability:SetText(" ") -- get rid of default

			for i=1, NUM_BATTLE_PET_ABILITIES do
				--local ability=_G['ZygorPetBattleFrame_Enemy'..j..'Ability1']

				local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(2, enemyPet, i)
				if id then
					local text = PetBattle:GetAbilityText(id,maxHp,power,speed)
					local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

					if i~=1 then ability:SetText(ability:GetText().." " ) end

					ability:SetText(ability:GetText().." |T"..icon..":0|t "..link)

					local modifers = p.AbilityModifer[abilityPetType or 0]

					ability:SetScript("OnHyperlinkClick",function(self,link)
						FloatingPetBattleAbilityTooltip:Hide()--Hide any old ones

						local abilId,maxHp,powers,speeds=link:match("(%d+):(%d+):(%d+):(%d+)")
						abilId,maxHp,powers,speeds=tonumber(abilId),tonumber(maxHp),tonumber(powers),tonumber(speeds)
						FloatingPetBattleAbility_Show(abilId,maxHp,powers,speeds)

						FloatingPetBattleAbilityTooltip.zclicked=true
						end)

					ability:SetScript("OnHyperlinkEnter",function(self,link,...)
						if not FloatingPetBattleAbilityTooltip:IsVisible() then FloatingPetBattleAbilityTooltip.zclicked=false end -- If not visible at then it is not clicked.

						local abilId,maxHp,powers,speeds=link:match("(%d+):(%d+):(%d+):(%d+)")
						abilId,maxHp,powers,speeds=tonumber(abilId),tonumber(maxHp),tonumber(powers),tonumber(speeds)
						FloatingPetBattleAbility_Show(abilId,maxHp,powers,speeds)

						end)
					ability:SetScript("OnHyperlinkLeave",function() if not FloatingPetBattleAbilityTooltip.zclicked then FloatingPetBattleAbilityTooltip:Hide() end end)

					local abil={ id=id,description=text,abiltype=abilityPetType,strong=modifers.strong,weak=modifers.weak }

					tinsert(enemyAbilities,abil)

				else
					--Pet doesn't have this many abilities yet
					ability:SetText(ability:GetText().." ")
				end
			end

			local scores = PetBattle:ComparePets(petTypeNum,enemyAbilities,level,speed)
			PetBattle:UpdateSuggestedPets(scores,"Enemy"..j)
		else
			--no pet for this slot
			pet[j].Name:SetText(" ")
			pet[j].Icon:SetText(" ")
			pet[j].Level:SetText(" ")
			pet[j].Health:SetText(" ")
			pet[j].Quality:SetText(" ")
			pet[j].Breed:SetText(" ")
			pet[j].Abilities:SetText(" ")
			pet[j].Ability:SetText(" ")
			--pet[j].Ability1:SetText(" ")
			--pet[j].Ability2:SetText(" ")
			--pet[j].Ability3:SetText(" ")
			pet[j].Suggestions:SetText(" ")
			pet[j].Suggest1:SetText(" ")

			pet[j].Name.label:SetText(" ")
			pet[j].Level.label:SetText(" ")
			pet[j].Health.label:SetText(" ")
			pet[j].Quality.label:SetText(" ")
			pet[j].Breed.label:SetText(" ")
			pet[j].Suggest1.label:SetText(" ")
		end

	end
end

function PetBattle:AllyFrameUpdate()
	local p=self
	local pet=self.BattleFrame.Ally
	for j=1, NUM_BATTLE_PETS_IN_BATTLE do

		local allyPet=j

		local petTypeNum=C_PetBattles.GetPetType(1,allyPet)
		local power=C_PetBattles.GetPower(1,allyPet)
		local health=C_PetBattles.GetHealth(1,allyPet)
		local speed=C_PetBattles.GetSpeed(1,allyPet)
		local name,creature=C_PetBattles.GetName(1,allyPet)
		local level=C_PetBattles.GetLevel(1,allyPet)
		local quality=C_PetBattles.GetBreedQuality(1,allyPet)
		local maxHp=C_PetBattles.GetMaxHealth(1,allyPet)
		local bigIcon=C_PetBattles.GetIcon(1,allyPet) --always your pets.


		local pType=p.petType[petTypeNum]

		if name then
			pet[j].Name.label:SetText(name)
			pet[j].Level.label:SetText(level)
			pet[j].Health.label:SetText(health)
			pet[j].Breed.label:SetText(pType)
			pet[j].InBattle.label:SetText("|cffff0000Will not get experience")
			pet[j].Icon:SetText("|T"..bigIcon..":0|t")

			local allyAbilities = {}

			local abilitylist=pet[j].Abilities
			abilitylist:SetHeight(15)--1 lines + a big space

			for i=1, NUM_BATTLE_PET_ABILITIES do
				local ability=_G['ZygorPetBattleFrame_Ally'..j..'Ability'..i]
				ability:SetText(" ") -- get rid of default

				local available,cdleft,_=C_PetBattles.GetAbilityState(1,allyPet,i)
				local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(1, allyPet, i)
				if id then
					local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

					if available then
						ability:SetText("|T"..icon..":0|t "..link.."|cffff0000".." is available")
					elseif cdleft>0 then
						ability:SetText("|T"..icon..":0|t "..link.."|cff00ff00".." is on cooldown for "..cdleft.." turns")
					else
						--Default at the start of a match.
						ability:SetText("|T"..icon..":0|t "..link.."|cffff0000".." is available")
					end

					ability:SetScript("OnHyperlinkClick",function()
						FloatingPetBattleAbilityTooltip:Hide()--Hide any old ones
						FloatingPetBattleAbility_Show(id,maxHp,power,speed)
						FloatingPetBattleAbilityTooltip.zclicked=true
						end)

					ability:SetScript("OnHyperlinkEnter",function()
						if not FloatingPetBattleAbilityTooltip:IsVisible() then FloatingPetBattleAbilityTooltip.zclicked=false end -- If not visible at then it is not clicked.
						FloatingPetBattleAbility_Show(id,maxHp,power,speed)
						end)
					ability:SetScript("OnHyperlinkLeave",function() if not FloatingPetBattleAbilityTooltip.zclicked then FloatingPetBattleAbilityTooltip:Hide() end end)

					ability:SetHeight(12) -- ability is only ever 1 line. Setting the fontstring height to 0 makes it set to the correct height
					abilitylist:SetHeight(abilitylist:GetHeight()+ability:GetHeight()+3)

				else
					--Pet doesn't have this many abilities yet
					ability:SetText(" ")
				end
			end
		else
			--no pet for this slot
			pet[j].Name:SetText(" ")
			pet[j].Level:SetText(" ")
			pet[j].Health:SetText(" ")
			pet[j].Icon:SetText(" ")
			pet[j].InBattle:SetText(" ")
			pet[j].Breed:SetText(" ")
			pet[j].Abilities:SetText(" ")
			pet[j].Ability1:SetText(" ")
			pet[j].Ability2:SetText(" ")
			pet[j].Ability3:SetText(" ")


			pet[j].Name.label:SetText(" ")
			pet[j].Level.label:SetText(" ")
			pet[j].Health.label:SetText(" ")
			pet[j].InBattle.label:SetText(" ")
			pet[j].Breed.label:SetText(" ")
		end

	end
end

local function IsDamageAbility(description,abilityType)
	if not abilityType then return false end
	local text=description

	if not text then return end

	--Damaging abilities all have "Number Type" in their name, so since the ability has "104 Critter" in it then it is a damaging ability.
	if text:match("%d+%s"..PetBattle.petType[abilityType]) then
		return true
	else
		return false
	end
end

--Compares the users pets against the current enemy pet and selects the best choice for that enemy
function PetBattle:ComparePets(enemytype,enemyAbilities,enemylevel,enemyspeed)
	PetBattle.PetScores={} --reset the scores everytime we switch enemys.

	--enemyAbilies={id=id,description,abiltype,strong,weak } strong and weak are which pet types the ability is good against

	for petnum=1, C_PetBattles.GetNumPets(1) do
		local allyPetType=C_PetBattles.GetPetType(1,petnum)
		local name,creature=C_PetBattles.GetName(1,petnum)
		local power=C_PetBattles.GetPower(1,petnum)
		local speed=C_PetBattles.GetSpeed(1,petnum)

		local level=C_PetBattles.GetLevel(1,petnum)

		local maxHp=C_PetBattles.GetMaxHealth(1,petnum)

		local bigIcon=C_PetBattles.GetIcon(1,petnum)


		PetBattle.PetScores[petnum]={ name=name,score=100, strongattack=-5, strongdefense=-5,speedadv=speed>enemyspeed,level=level,icon=bigIcon }
		local petscore=PetBattle.PetScores[petnum]
		--Score starts at 100 and we raise or lower it based on everything else
		--strongattack and strongdefense are 3 values -1,0,1. They should never be -5. -1 means we are weak to an ability, 1 means we are strong to all ability.

		--Factor in level
		petscore.score=petscore.score + (level-enemylevel)*10

		for k=1, #enemyAbilities do --Factor in enemy abilities.
			local ability=enemyAbilities[k]
			if IsDamageAbility(ability.description,ability.abiltype) then
				if enemyAbilities[k].strong==allyPetType then --They are supereffective!
					petscore.strongdefense=-1
				elseif enemyAbilities[k].weak==allyPetType then	--Not very effective!
					if petscore.strongdefense~=-1 and petscore.strongdefense~=0 then
						petscore.strongdefense=1
					end
				else --Ability is normal
					if petscore.strongdefense~=-1 then
						petscore.strongdefense=0
					end
				end
			end
		end

		if petscore.strongdefense==1 then petscore.score=petscore.score+10
		elseif petscore.strongdefense==-1 then petscore.score=petscore.score-20
		elseif petscore.strongdefense==0 then petscore.score=petscore.score-5 end

		for abil=1, NUM_BATTLE_PET_ABILITIES do while(1) do --How do our abilities do?
			local id, name, icon, maxCooldown, upparsedescription, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(1, petnum, abil)
			if not id then break end
			local text = PetBattle:GetAbilityText(id,maxHp,power,speed) --hp power and speed are always the same

			local modifer=PetBattle.AbilityModifer[abilityPetType]

			if IsDamageAbility(text,abilityPetType) then
				if modifer.strong==enemytype then --We are supereffective!
					petscore.strongattack=1
				elseif modifer.weak==enemytype then	--Not very effective!
					if petscore.strongattack~=1 and petscore.strongattack~=0 then
						petscore.strongattack=-1
					end
				else --Ability is normal
					if petscore.strongattack~=1 then
						petscore.strongattack=0
					end
				end
			end
		break end end
		if petscore.strongattack==1 then petscore.score=petscore.score+20
		elseif petscore.strongattack==-1 then petscore.score=petscore.score-10
		elseif petscore.strongattack==0 then petscore.score=petscore.score+5 end

	end
	return PetBattle.PetScores
end

local function SortScores(scores)
	local maxScore=0
	local scoretable={}
	local sortedScores={}
	for i=1, NUM_BATTLE_PETS_IN_BATTLE do
		if scores[i] and scores[i].score  then
			tinsert(scoretable,scores[i].score)
		end
	end
	sort(scoretable,function (a,b) return b<a end)
	for i=1,#scoretable do
		for k=1,NUM_BATTLE_PETS_IN_BATTLE do
			if scores[k] and scoretable[i]==scores[k].score then
				tinsert(sortedScores,scores[k])
				tremove(scores,k)--Prevents pets with the same score from showing up twice.
				break -- move to the next pet.
			end
		end
	end
	return sortedScores
end

function PetBattle:UpdateSuggestedPets(scores,frame)
	local scores=scores or PetBattle.PetScores
	if not scores then return end

	local sortedScores = SortScores(scores)

	--scores= {name=name,score,strongattack,strongdefense,speedadv,level}
	for i=1, NUM_BATTLE_PETS_IN_BATTLE do
		local suggestion=_G['ZygorPetBattleFrame_'..frame..'Suggest'..i]
		local suglabel=_G['ZygorPetBattleFrame_'..frame..'Suggest'..i..'Label']
		if suggestion and  sortedScores[i] and sortedScores[i].name then
			local space="              "
			local icon=sortedScores[i].icon
			local text=sortedScores[i].name
			local atext=""
			local dtext=""
			local stext=sortedScores[i].speedadv and "|T"..ZGV.DIR.."\\Skins\\SpeedIcon:0:0:0:0|t" or "|TInterface\\PetBattles\\DeadPetIcon:0:0:0:0|t"
			local ltext=sortedScores[i].level


			if sortedScores[i].strongattack==1 then
				atext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Strong-Small:0:0:0:0|t"
			elseif sortedScores[i].strongattack==0 then
				atext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Neutral:0:0:0:0|t"
			elseif sortedScores[i].strongattack==-1 then
				atext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Weak-Small:0:0:0:0|t"
			else
				--Something went wrong!
			end

			if sortedScores[i].strongdefense==1 then
				dtext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Strong-Small:0:0:0:0|t"
			elseif sortedScores[i].strongdefense==0 then
				dtext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Neutral:0:0:0:0|t"
			elseif sortedScores[i].strongdefense==-1 then
				dtext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Weak-Small:0:0:0:0|t"
			else
				--Something went wrong!
			end

			suggestion:SetText(i..". |T"..icon..":0|t |cff3090C7"..text.."|r")
			suglabel:SetText(atext..space..dtext..space..stext..space..ltext)

		elseif suggestion then
			--No pet for this slot
			suggestion:SetText(" ")
			suglabel:SetText(" ")
		end
	end
end

--Make there be Frames!
function PetBattle:MakeFontStrings(frame,name,text,point,x,y,label)
	local frame=frame

	local xPos = (x or 0)
	local yPos = -(y or 0)

	if not point then
		frame[name] = CHAIN(frame:CreateFontString(frame:GetName()..name,"ARTWORK"))
			:SetPoint("LEFT",frame,"TOPLEFT",xPos,yPos)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetParent(frame)
			:SetText("|cff4E9258"..text)
			.__END
	elseif point.GetName then
		frame[name] = CHAIN(frame:CreateFontString(frame:GetName()..name,"ARTWORK"))
			:SetPoint("TOPLEFT",point,"BOTTOMLEFT",0+xPos,-3+yPos)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetParent(frame)
			:SetText("|cff4E9258"..text)
			.__END
	else
		frame[name] = CHAIN(frame:CreateFontString(frame:GetName()..name,"ARTWORK"))
			:SetPoint("TOPLEFT",frame[point],"BOTTOMLEFT",0+xPos,-3+yPos)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetParent(frame)
			:SetText("|cff4E9258"..text)
			.__END
	end

	if label=="sug" then
		frame[name]:SetSize(125,12) -- Long names are bad!
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetPoint("TOPLEFT",frame[name],"TOPLEFT",150,0)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetText("|cff7E2217".."None")
			.__END
	elseif label=="none" then
		--nothing
	elseif not label then
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetPoint("TOPLEFT",frame[name],"TOPRIGHT",3,0)
			:SetFont(FONT,12)
			:SetWidth(340)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetIndentedWordWrap(true)
			:SetText("|cff7E2217".."None")
			.__END
	end
end

function PetBattle:MakeEditBox(frame,name,text,point,labelpoint,x,y,label)
	local xPos = (x or 0)
	local yPos = -(y or 0)

	frame[name] = CHAIN(ui:Create("HyperEditBox",frame,frame:GetName()..name))
		:SetPoint("TOPLEFT",labelpoint and frame[point].label or frame[point],"BOTTOMLEFT",0+xPos,-3+yPos)
		:SetMaxWidth(frame:GetWidth()-15)
		:SetText("|cff4E9258"..text)
	.__END

	if label=="ability" then
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetFont(FONT,12)
			:SetPoint("TOPLEFT",frame[name],"TOPLEFT",35,-12)
			:SetWidth(340)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetIndentedWordWrap(true)
			:SetText("|cff7E2217".."None")
			.__END
	elseif label=="sug" then
		frame[name]:SetSize(125,12) -- Long names are bad!
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetFont(FONT,12)
			:SetJustifyH("LEFT")
			:SetPoint("TOPLEFT",frame[name],"TOPLEFT",150,0)
			:SetText("|cff7E2217".."None")
			.__END
	elseif label=="none" then
		--Do nothing
	elseif not label then
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetFont(FONT,12)
			:SetPoint("TOPLEFT",frame[name],"TOPRIGHT",3,0)
			:SetWidth(340)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetIndentedWordWrap(true)
			:SetText("|cff7E2217".."None")
			.__END
	end
end

local function SetHeightAllFrames(y)
	PetBattle.BattleFrame:SetHeight(y)
end

local function PetBattle_ToggleFrames(button)
	for name,data in pairs(PetBattle.UsableFrames) do
		if button ~= data.Toggle then
			data:Hide()
		else
			data:Show()
			SetHeightAllFrames(data.top:GetTop()+15-data.bottom:GetBottom())
		end
	end
end

local function CreateMainFrames(self)
	self.BattleFrame = CHAIN(ui:Create("Frame",UIParent,"ZygorPetBattleFrame"))
		:SetSize(450,600)
		:SetPoint("TOPRIGHT",UIParent,"TOPRIGHT",-10,-125)
		:SetUserPlaced(true)
		:CanDrag(true)
		:Hide()
	.__END

	self.UsableFrames = {}

	--self.BattleFrame.Logo= = CHAIN(self.BattleFrame:CreateFontString(parent:GetName().."Logo","ARTWORK","GameFontNormalLeft"))
	--	:SetPoint("TOP",parent,"TOP",0,-5)
	--	:SetText("|cffffffffPet Battle Information")
	--	.__END

	self.BattleFrame.Main = CHAIN(ui:Create("Frame",self.BattleFrame,"ZygorPetBattleFrame_Main"))
		:SetAllPoints()
		:CanDrag("parent")
	.__END
	self.UsableFrames.Main = self.BattleFrame.Main

	self.BattleFrame.Enemy = CHAIN(ui:Create("Frame",self.BattleFrame,"ZygorPetBattleFrame_Enemy"))
		:SetAllPoints()
		:CanDrag("parent")
		:Hide()
	.__END
	self.UsableFrames.Enemy = self.BattleFrame.Enemy


	for i=1,3 do
		self.BattleFrame.Enemy[i] = CHAIN(CreateFrame("Frame","ZygorPetBattleFrame_Enemy"..i,self.BattleFrame.Enemy))
			:SetAllPoints()
		.__END
	end


	self.BattleFrame.Ally = CHAIN(ui:Create("Frame",self.BattleFrame,"ZygorPetBattleFrame_Ally"))
		:SetAllPoints()
		:CanDrag("parent")
		:Hide()
	.__END
	self.UsableFrames.Ally = self.BattleFrame.Ally

	for i=1,3 do
		self.BattleFrame.Ally[i] = CHAIN(CreateFrame("Frame","ZygorPetBattleFrame_Ally"..i,self.BattleFrame.Ally))
			:SetAllPoints()
		.__END
	end
end

local function CreateTabs(self)
	self.BattleFrame.Main.Toggle = CHAIN(ui:Create("Button", self.BattleFrame, "ZygorPetBattleFrame_ToggleMain"))
		:SetPoint("TOPLEFT",self.BattleFrame,"BOTTOMLEFT")
		:SetText("Current Enemy")
		:SetWidth(105)
		:SetScript("OnClick",PetBattle_ToggleFrames)
	.__END

	self.BattleFrame.Enemy.Toggle = CHAIN(ui:Create("Button", self.BattleFrame, "ZygorPetBattleFrame_ToggleEnemy"))
		:SetPoint("LEFT",self.BattleFrame.Main.Toggle,"RIGHT")
		:SetText("All Enemies")
		:SetWidth(105)
		:SetScript("OnClick",PetBattle_ToggleFrames)
	.__END

	self.BattleFrame.Ally.Toggle = CHAIN(ui:Create("Button", self.BattleFrame, "ZygorPetBattleFrame_ToggleAlly"))
		:SetPoint("LEFT",self.BattleFrame.Enemy.Toggle,"RIGHT")
		:SetText("All Friendly")
		:SetWidth(105)
		:SetScript("OnClick",PetBattle_ToggleFrames)
	.__END
end

local function CreateMainFrameText(self)
	local parent=self.BattleFrame.Main

	parent.Title = CHAIN(self.BattleFrame.Main:CreateFontString(parent:GetName().."Title","ARTWORK"))
		:SetPoint("TOP",parent,"TOP",0,-5)
		:SetFont(FONT,12)
		:SetText(L['static_caption'].."|cffffffffPet Battle Information")
	.__END

	parent.Close = CHAIN(CreateFrame("Button", parent:GetName().."Close", parent))
		:SetSize(15,15)
		:SetPoint("TOPRIGHT",parent,"TOPRIGHT",-5,-5)
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() parent:GetParent():Hide() ZGV.db.profile.petbattleframe=false end)
	.__END
	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(parent.Close)

	PetBattle:MakeFontStrings(parent,"Round","Round:",nil,175,70)

	PetBattle:MakeFontStrings(parent,"Name","Current Enemy:",nil,5,85)
	PetBattle:MakeFontStrings(parent,"Level","Level:","Name",10,0)

	PetBattle:MakeFontStrings(parent,"Icon","Enemy Icon","Name",300,15,"none")
	parent.Icon:SetTextHeight(50) parent.Icon:SetWidth(225)

	PetBattle:MakeFontStrings(parent,"Quality","Quality:","Level")
	PetBattle:MakeFontStrings(parent,"Power","Power:","Quality")
	PetBattle:MakeFontStrings(parent,"Speed","Speed:","Power")
	PetBattle:MakeFontStrings(parent,"SpeedAdv","Speed Advantage:","Speed")
	PetBattle:MakeFontStrings(parent,"Breed","Breed:","SpeedAdv")
	PetBattle:MakeFontStrings(parent,"Modifers","Damage Modifers:","Breed")
	PetBattle:MakeFontStrings(parent,"Passive","Breed Passive:","Modifers",0,12)

	PetBattle:MakeFontStrings(parent,"Abilities","Enemy Abilities","Passive",0,15,"none")

	PetBattle:MakeEditBox(parent,"Ability1","Ability 1","Abilities",false,10,0,"ability")
	parent.Ability1:ClearAllPoints() parent.Ability1:SetPoint("TOPLEFT",parent.Abilities,"TOPLEFT",10,-12)
	PetBattle:MakeEditBox(parent,"Ability2","Ability 2","Ability1",true,-35,0,"ability")
	PetBattle:MakeEditBox(parent,"Ability3","Ability 3","Ability2",true,-35,0,"ability")

	PetBattle:MakeFontStrings(parent,"AbilIcon1","Abil Icon","Ability1",5,5,"none")
	parent.AbilIcon1:SetTextHeight(25) parent.AbilIcon1:SetWidth(150)
	PetBattle:MakeFontStrings(parent,"AbilIcon2","Abil Icon","Ability2",5,5,"none")
	parent.AbilIcon2:SetTextHeight(25) parent.AbilIcon2:SetWidth(150)
	PetBattle:MakeFontStrings(parent,"AbilIcon3","Abil Icon","Ability3",5,5,"none")
	parent.AbilIcon3:SetTextHeight(25) parent.AbilIcon3:SetWidth(150)

	local suggestiontext="Pet Suggestions           Attack      Defense      Speed        Level"
	PetBattle:MakeFontStrings(parent,"Suggestions",suggestiontext,"Abilities",0,0,"none")

	PetBattle:MakeFontStrings(parent,"Suggest1","Suggest 1","Suggestions",10,0,"sug")
	PetBattle:MakeFontStrings(parent,"Suggest2","Suggest 2","Suggest1",0,0,"sug")
	PetBattle:MakeFontStrings(parent,"Suggest3","Suggest 3","Suggest2",0,0,"sug")

	parent.top=parent.Title
	parent.bottom=parent.Suggest3
end

local function MakeEnemys(parent)
	PetBattle:MakeFontStrings(parent,"Level","Level:","Name",50,0)

	PetBattle:MakeFontStrings(parent,"Icon","Enemy Icon","Name",10,15,"none")
	parent.Icon:SetTextHeight(30) parent.Icon:SetWidth(225)

	PetBattle:MakeFontStrings(parent,"Health","Health:","Level",0,0)
	PetBattle:MakeFontStrings(parent,"Quality","Quality:","Health")
	PetBattle:MakeFontStrings(parent,"Breed","Breed:","Quality")

	PetBattle:MakeFontStrings(parent,"Abilities","Enemy Abilities","Breed",-40,5,"none")

	PetBattle:MakeEditBox(parent,"Ability","Ability","Abilities",false,10,0,"none") --This point gets reset after the call. Because Abilities is a big block and need to anchor to the topleft not bottom left
	--PetBattle:MakeEditBox(parent,"Ability1","Ability 1","Abilities",false,10,0,"none")
	--PetBattle:MakeEditBox(parent,"Ability2","Ability 2","Ability1",false,0,0,"none")
	--PetBattle:MakeEditBox(parent,"Ability3","Ability 3","Ability2",false,0,0,"none")

	local suggestiontext="Pet Suggestion            Attack      Defense      Speed        Level"
	PetBattle:MakeFontStrings(parent,"Suggestions",suggestiontext,"Abilities",0,0,"none")

	PetBattle:MakeFontStrings(parent,"Suggest1","Suggest 1","Suggestions",10,0,"sug")
end

local function CreateEnemyFrameText(self)
	local parent=self.BattleFrame.Enemy

	parent.Title = CHAIN(parent:CreateFontString(parent:GetName().."Title","ARTWORK"))
		:SetPoint("TOP",parent,"TOP",0,-5)
		:SetFont(FONT,12)
		:SetText(L['static_caption'].."|cffffffffEnemy Pets")
	.__END

	parent.Close = CHAIN(CreateFrame("Button", parent:GetName().."Close", parent))
			:SetSize(15,15)
			:SetPoint("TOPRIGHT",parent,"TOPRIGHT",-5,-5)
			 :RegisterForClicks("LeftButtonUp")
			:SetScript("OnClick",function() parent:GetParent():Hide() ZGV.db.profile.petbattleframe=false end)
	.__END
	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(parent.Close)

	PetBattle:MakeFontStrings(parent,"Round","Round:",nil,175,70)

 	PetBattle:MakeFontStrings(parent[1],"Name","Enemy: ",nil,5,85)
	MakeEnemys(parent[1])
	parent[1].Ability:ClearAllPoints() parent[1].Ability:SetPoint("TOPLEFT",parent[1].Abilities,"TOPLEFT",10,-16)
	--parent[1].Ability1:ClearAllPoints() parent[1].Ability1:SetPoint("TOPLEFT",parent[1].Abilities,"TOPLEFT",10,-12)

 	PetBattle:MakeFontStrings(parent[2],"Name","Enemy: ",parent[1].Suggest1,-20,5)
	MakeEnemys(parent[2])
	parent[2].Ability:ClearAllPoints() parent[2].Ability:SetPoint("TOPLEFT",parent[2].Abilities,"TOPLEFT",10,-16)
	--parent[2].Ability1:ClearAllPoints() parent[2].Ability1:SetPoint("TOPLEFT",parent[2].Abilities,"TOPLEFT",10,-12)

 	PetBattle:MakeFontStrings(parent[3],"Name","Enemy: ",parent[2].Suggest1,-20,5)
	MakeEnemys(parent[3])
	parent[3].Ability:ClearAllPoints() parent[3].Ability:SetPoint("TOPLEFT",parent[3].Abilities,"TOPLEFT",10,-16)
	--parent[3].Ability1:ClearAllPoints() parent[3].Ability1:SetPoint("TOPLEFT",parent[3].Abilities,"TOPLEFT",10,-12)

	parent.top=parent.Title
	parent.bottom=parent[3].Suggest1
end

local function MakeAllys(parent)
	PetBattle:MakeFontStrings(parent,"Level","Level:","Name",10,0)

	PetBattle:MakeFontStrings(parent,"Icon","Enemy Icon","Name",300,-10,"none")
	parent.Icon:SetTextHeight(50) parent.Icon:SetWidth(225)

	PetBattle:MakeFontStrings(parent,"Health","Health:","Level",0,0)
	PetBattle:MakeFontStrings(parent,"Breed","Breed:","Health")
	PetBattle:MakeFontStrings(parent,"InBattle","Recieving Experience:","Breed")

	PetBattle:MakeFontStrings(parent,"Abilities","Ally Abilities","InBattle",0,5,"none")

	PetBattle:MakeEditBox(parent,"Ability1","Ability 1","Abilities",false,10,0,"none") --This point gets reset after the call. Because Abilities is a big block and need to anchor to the topleft not bottom left
	PetBattle:MakeEditBox(parent,"Ability2","Ability 2","Ability1",false,0,0,"none")
	PetBattle:MakeEditBox(parent,"Ability3","Ability 3","Ability2",false,0,0,"none")
end

local function CreateAllyFrameText(self)
	local parent=self.BattleFrame.Ally

	parent.Title = CHAIN(parent:CreateFontString(parent:GetName().."Title","ARTWORK","GameFontNormal"))
		:SetPoint("TOP",parent,"TOP",0,-5)
		:SetFont(FONT,12)
		:SetText(L['static_caption'].."|cffffffffAllied Pets")
	.__END

	parent.Close = CHAIN(CreateFrame("Button", parent:GetName().."Close", parent))
			:SetSize(15,15)
			:SetPoint("TOPRIGHT",parent,"TOPRIGHT",-5,-5)
			 :RegisterForClicks("LeftButtonUp")
			:SetScript("OnClick",function() parent:GetParent():Hide() ZGV.db.profile.petbattleframe=false end)
	.__END
	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(parent.Close)

	PetBattle:MakeFontStrings(parent,"Round","Round:",nil,175,70)

 	PetBattle:MakeFontStrings(parent[1],"Name","Ally: ",nil,5,85)
	MakeAllys(parent[1])
	parent[1].Ability1:ClearAllPoints() parent[1].Ability1:SetPoint("TOPLEFT",parent[1].Abilities,"TOPLEFT",10,-16)

 	PetBattle:MakeFontStrings(parent[2],"Name","Ally: ",parent[1].Abilities,-10,0)
	MakeAllys(parent[2])
	parent[2].Ability1:ClearAllPoints() parent[2].Ability1:SetPoint("TOPLEFT",parent[2].Abilities,"TOPLEFT",10,-16)

 	PetBattle:MakeFontStrings(parent[3],"Name","Ally: ",parent[2].Abilities,-10,0)
	MakeAllys(parent[3])
	parent[3].Ability1:ClearAllPoints() parent[3].Ability1:SetPoint("TOPLEFT",parent[3].Abilities,"TOPLEFT",10,-16)

	parent.top=parent.Title
	parent.bottom=parent[3].Ability3
end

function PetBattle:CreateFrame()
	CreateMainFrames(self)
	CreateTabs(self)
	CreateMainFrameText(self)
	CreateEnemyFrameText(self)
	CreateAllyFrameText(self)
end

--Zygor button for the pet Journal

function PetBattle.PetJournal.Icon_OnClick(self,but)
	local petbutton=self:GetParent()
	local specID = petbutton.speciesID
	if specID and PetBattle.PetJournal.AvailGuides[specID] then
		ZGV.Tabs:LoadGuideToTab(PetBattle.PetJournal.AvailGuides[specID],1,"pet")
		return
	end
	ZGV:Error("How odd. We don't seem to have a guide for %s",C_PetJournal.GetPetInfoBySpeciesID(specID))
end

function PetBattle.PetJournal.ScheduleUpdate()
	ZGV:ScheduleTimer(function() PetBattle.PetJournal.UpdateIcons() end, 0.0001)
end

function PetBattle.PetJournal.UpdateIcons()
	ZGV.SearchIconPool:ReleaseAll()

	local i, blizzbutton
	for i,blizzbutton in ipairs(PetJournal.ScrollBox.view.frames) do
		local button = ZGV.SearchIconPool:Acquire()
		button:SetParent(blizzbutton)
		button:SetPoint("TOPRIGHT",blizzbutton,"TOPRIGHT",-2,-5)
		button:SetFrameLevel(blizzbutton:GetFrameLevel()+1)
		button.tooltiptext = L['petframe_button']:format(blizzbutton.name:GetText())
		button:SetScript("OnClick", function(...) ZGV.PetBattle.PetJournal.Icon_OnClick(...) end) -- Find the pet!

		local specID = blizzbutton.speciesID

		if specID and PetBattle.PetJournal.AvailGuides[specID] and blizzbutton:IsShown() and not blizzbutton.owned then
			ZGV:Debug("&petguides Showing icon for pet %d %s",specID,blizzbutton.name:GetText())
			button:Show()
		else
			if ZGV.db.profile.debug then
				if not blizzbutton:IsShown() then
					ZGV:Debug("&petguides Not showing icon for pet button %d... hidden",i)
				elseif not specID then
					ZGV:Debug("&petguides Not showing icon for pet %s... unknown??",blizzbutton.name:GetText())
				elseif not PetBattle.PetJournal.AvailGuides[specID] then
					ZGV:Debug("&petguides Not showing icon for pet %d %s: no guide",specID,blizzbutton.name:GetText())
				elseif blizzbutton.owned then
					ZGV:Debug("&petguides Not showing icon for pet %d %s: owned",specID,blizzbutton.name:GetText())
				end
			end
			button:Hide()
		end
	end
end

function PetBattle.PetJournal.RegisterGuide(speciesId,guide)
	if not (speciesId and guide) then return end

	if PetBattle.PetJournal.AvailGuides[speciesId] then
		ZGV:Debug("&petguides Multiple guides for speciesId: %s.",speciesId)
		return
	end

	PetBattle.PetJournal.AvailGuides[speciesId]=guide

end

function PetBattle.PetJournal.JournalIconSetup()
	if PetBattle.PetJournal.loaded then return end

	ZGV.SearchIconPool = ZGV.SearchIconPool or CreateFramePool("BUTTON",nil,"ZygorSearchButton")
	hooksecurefunc(PetJournal.ScrollBox,"Update",PetBattle.PetJournal.ScheduleUpdate)

	PetBattle.PetJournal.loaded=true
end


function PetBattle:ShowInterface()
	if not PetBattle.BattleFrame then PetBattle:CreateFrame() end
	local PetFrame=PetBattle.BattleFrame

	if ZGV.Frame:IsVisible() then
		PetBattle.hideFrame=true
		ZGV:ToggleFrame()
	end

	PetBattle:MainFrameUpdate()
	PetBattle:EnemyFrameUpdate()
	PetBattle:AllyFrameUpdate()
	PetBattle.BattleFrame.Main.Round.label:SetText("1") --so that it is not set to 1 on pet swap
	PetBattle.BattleFrame.Enemy.Round.label:SetText("1")
	PetBattle.BattleFrame.Ally.Round.label:SetText("1")
	SetHeightAllFrames(PetBattle.BattleFrame.Main.top:GetTop()+15-PetBattle.BattleFrame.Main.bottom:GetBottom())
	PetFrame:Show()
end

--EVENTS

local hits_per_round = {}

local function OnEvent(self,event,...)
	--print("Event Name: "..event.." Other Data: ",...)

	if event=="PET_JOURNAL_LIST_UPDATE" and PetBattle.PetJournal.loaded then
		PetBattle.PetJournal.ScheduleUpdate()
		-- schedule it to happen almost instantly, Info is not ready if ran otherwise.
	end

	if not ZGV.db.profile.petbattleframe then return end
	if not PetBattle.BattleFrame then PetBattle:CreateFrame() end
	local PetFrame=PetBattle.BattleFrame

	if event=="PLAYER_ENTERING_WORLD" and PetFrame then
		PetFrame:Hide()
		PetBattle.OpeningDone=false
	elseif event=="PET_BATTLE_OPENING_START" then
		PetBattle:ShowInterface()
	elseif event=="PET_BATTLE_OPENING_DONE" then
		PetBattle.OpeningDone=true
	elseif event=="PET_BATTLE_FINAL_ROUND" then
		PetFrame:Hide()
		PetBattle.OpeningDone=false
	elseif event=="PET_BATTLE_CLOSE" then
		if PetBattle.hideFrame then
			PetBattle.hideFrame=false
			ZGV:ToggleFrame()
		end
		PetFrame:Hide()
		PetBattle.OpeningDone=false
		for i=1,3 do PetFrame.Ally[i].BeenActive=nil end -- Reset active status each fight.
	elseif event=="PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE" then
		PetBattle_MainFrameUpdateRound(...)
		PetBattle_EnemyFrameUpdateRound(...)
		PetBattle_AllyFrameUpdateRound(...)
		wipe(hits_per_round)
	elseif event=="PET_BATTLE_PET_CHANGED" and PetBattle.OpeningDone then
		PetBattle:EnemyFrameUpdate()
		PetBattle:AllyFrameUpdate()
		PetBattle:MainFrameUpdate()
	elseif event=="CHAT_MSG_PET_BATTLE_COMBAT_LOG" and PetBattle.OpeningDone then
		PetBattle:EnemyFrameUpdate()
		PetBattle:AllyFrameUpdate()
		PetBattle:MainFrameUpdate()
	elseif event=="PET_BATTLE_HEALTH_CHANGED" then
		local owner,pet,hp_delta = ...
		local maxhp = C_PetBattles.GetMaxHealth(owner,pet)
		hits_per_round[owner..pet] = (hits_per_round[owner..pet] or 0) + hp_delta

		--RaidNotice_AddMessage(RaidBossEmoteFrame,("%d (%d%%)"):format(hp_delta,hits_per_round[owner..pet]/maxhp*100),hp_delta>0 and ChatTypeInfo.GUILD or ChatTypeInfo.YELL,3)
	end
end

local ReviveJustCooled=true
local REVIVE_PETS=125439

function PetBattle:PetRegEvents()

	PetBattle.EventFrame=CreateFrame("Frame")

	local event=PetBattle.EventFrame

	event:RegisterEvent("PLAYER_ENTERING_WORLD")
	event:RegisterEvent("PET_BATTLE_CLOSE")
	event:RegisterEvent("PET_BATTLE_OPENING_DONE")
	event:RegisterEvent("PET_BATTLE_OPENING_START")
	event:RegisterEvent("PET_BATTLE_FINAL_ROUND")
	event:RegisterEvent("PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE")
	event:RegisterEvent("PET_BATTLE_PET_CHANGED")
	event:RegisterEvent("PET_JOURNAL_LIST_UPDATE")
	event:RegisterEvent("CHAT_MSG_PET_BATTLE_COMBAT_LOG")


	-- Sinus tinkering:

	-- Announce revive cooldown
	ZGV:ScheduleRepeatingTimer(function()
		if ZGV.db.profile.pet_notifyrevive then
			if InCombatLockdown() or PetBattleFrame:IsVisible() or not IsUsableSpell(REVIVE_PETS) then return end
			local cd = GetSpellCooldown(REVIVE_PETS)
			if cd>0 then
				ReviveJustCooled=false
				return
			end
			if cd==0 and not ReviveJustCooled then
				ReviveJustCooled=true
				RaidNotice_AddMessage(RaidBossEmoteFrame,"You can revive your pets now.",ChatTypeInfo.SYSTEM,5)
			end
		end
	end, 5)

	event:RegisterEvent("PET_BATTLE_HEALTH_CHANGED")


	--[[event:RegisterEvent("PET_BATTLE_ABILITY_CHANGED")
	event:RegisterEvent("PET_BATTLE_ACTION_SELECTED")
	event:RegisterEvent("PET_BATTLE_AURA_APPLIED")
	event:RegisterEvent("PET_BATTLE_AURA_CANCELED")
	event:RegisterEvent("PET_BATTLE_AURA_CHANGED")
	event:RegisterEvent("PET_BATTLE_CAPTURED")
	event:RegisterEvent("PET_BATTLE_HEALTH_CHANGED")
	event:RegisterEvent("PET_BATTLE_LEVEL_CHANGED")
	event:RegisterEvent("PET_BATTLE_MAX_HEALTH_CHANGED")
	event:RegisterEvent("PET_BATTLE_OVER")
	event:RegisterEvent("PET_BATTLE_PET_ROUND_RESULTS")
	event:RegisterEvent("PET_BATTLE_PVP_DUEL_REQUESTED")
	event:RegisterEvent("PET_BATTLE_PVP_DUEL_REQUEST_CANCEL")
	event:RegisterEvent("PET_BATTLE_QUEUE_PROPOSAL_ACCEPTED")
	event:RegisterEvent("PET_BATTLE_QUEUE_PROPOSAL_DECLINED")
	event:RegisterEvent("PET_BATTLE_QUEUE_PROPOSE_MATCH")
	event:RegisterEvent("PET_BATTLE_QUEUE_STATUS")
	event:RegisterEvent("PET_BATTLE_TURN_STARTED")
	event:RegisterEvent("PET_BATTLE_XP_CHANGED")--]]

	event:SetScript("OnEvent", OnEvent)
end

local petTypes = PetBattle.petType

PetBattle.RarityMod = {
	[0] = 0.5,
	[1] = 0.550000011920929,
	[2] = 0.600000023841858,
	[3] = 0.649999976158142,
	[4] = 0.699999988079071,
	[5] = 0.75,
	}

PetBattle.BreedStats = {
	[3] = {0.5, 0.5, 0.5},
	[4] = {0, 2, 0},
	[5] = {0, 0, 2},
	[6] = {2, 0, 0},
	[7] = {0.9, 0.9, 0},
	[8] = {0, 0.9, 0.9},
	[9] = {0.9, 0, 0.9},
	[10] = {0.4, 0.9, 0.4},
	[11] = {0.4, 0.4, 0.9},
	[12] = {0.9, 0.4, 0.4},
	}

PetBattle.BasePetStats = {	[2] = {10.5, 8, 9.5},
	[39] = {8.5, 7.5, 8},
	[40] = {7, 8.5, 8.5},
	[41] = {7, 8.5, 8.5},
	[42] = {6.5, 9, 8.5},
	[43] = {7, 9, 8},
	[44] = {7, 8.5, 8.5},
	[45] = {7, 8.5, 8.5},
	[46] = {7.5, 7.5, 9},
	[47] = {8, 7.5, 8.5},
	[49] = {9, 7, 8},
	[50] = {9, 8, 7},
	[51] = {8.5, 8, 7.5},
	[52] = {8, 8, 8},
	[55] = {8.5, 7, 8.5},
	[56] = {8.5, 9, 6.5},
	[57] = {8.5, 7.5, 8},
	[58] = {7, 9, 8},
	[59] = {8.5, 8, 7.5},
	[64] = {8.5, 7.5, 8},
	[65] = {8.5, 7.5, 8},
	[67] = {8, 8, 8},
	[68] = {8, 8, 8},
	[69] = {7.5, 7.5, 9},
	[70] = {8, 7.5, 8.5},
	[72] = {8, 7, 9},
	[74] = {7.5, 7.5, 9},
	[75] = {7.5, 8.5, 8},
	[77] = {8, 8, 8},
	[78] = {7.5, 8.5, 8},
	[83] = {8.5, 7.5, 8},
	[84] = {8, 8, 8},
	[85] = {8.5, 7.5, 8},
	[86] = {8.5, 7.5, 8},
	[87] = {8, 8.5, 7.5},
	[89] = {8, 8, 8},
	[90] = {7, 8.5, 8.5},
	[92] = {8, 8, 8},
	[93] = {6.5, 9, 8.5},
	[94] = {7, 7, 10},
	[95] = {8, 8, 8},
	[106] = {8.5, 7.5, 8},
	[107] = {8, 8, 8},
	[111] = {8, 8, 8},
	[114] = {8.5, 8.5, 7},
	[115] = {8, 8, 8},
	[116] = {8, 8, 8},
	[117] = {8, 8, 8},
	[118] = {8, 8, 8},
	[119] = {8, 8, 8},
	[120] = {8, 8, 8},
	[121] = {8, 8, 8},
	[122] = {8, 8.005, 8},
	[124] = {8, 8, 8},
	[125] = {8, 8, 8},
	[126] = {8, 8, 8},
	[127] = {8, 7.5, 8.5},
	[128] = {8, 8, 8},
	[130] = {8, 8, 8},
	[131] = {8, 7.5, 8.5},
	[132] = {9, 8, 7},
	[136] = {8, 8, 8},
	[137] = {8, 7, 9},
	[138] = {8.5, 7.5, 8},
	[139] = {7.5, 8.5, 8},
	[140] = {8, 8.5, 7.5},
	[141] = {7.5, 7.5, 9},
	[142] = {8, 8.5, 7.5},
	[143] = {7.5, 8.5, 8},
	[144] = {7.5, 7.5, 9},
	[145] = {8.5, 7.5, 8},
	[146] = {7.5, 8, 8.5},
	[149] = {7.5, 7, 9.5},
	[153] = {8, 8, 8},
	[155] = {8, 8, 8},
	[156] = {8, 8, 8},
	[157] = {8, 8, 8},
	[158] = {8, 8, 8},
	[159] = {8, 8, 8},
	[160] = {8, 8, 8},
	[162] = {8, 8.5, 7.5},
	[163] = {8, 8.5, 7.5},
	[164] = {8, 8.5, 7.5},
	[165] = {8.5, 7.5, 8},
	[166] = {8.5, 8.5, 7},
	[167] = {9, 7.5, 7.5},
	[168] = {8.5, 7.5, 8},
	[169] = {8, 8, 8},
	[170] = {8, 8, 8},
	[171] = {8, 8, 8},
	[172] = {7.5, 8.5, 8},
	[173] = {8, 8.5, 7.5},
	[174] = {8, 8.5, 7.5},
	[175] = {7.5, 8.5, 8},
	[179] = {8.5, 8, 7.5},
	[180] = {8.5, 8, 7.5},
	[183] = {8, 8, 8},
	[186] = {7.5, 8.5, 8},
	[187] = {8.5, 8.5, 7},
	[188] = {8.5, 8.5, 7},
	[189] = {8, 8, 8},
	[190] = {8.5, 8.5, 7},
	[191] = {8.5, 7.5, 8},
	[192] = {8, 8, 8},
	[193] = {8, 8.5, 7.5},
	[194] = {8, 8, 8},
	[195] = {7.5, 7.5, 9},
	[196] = {8.5, 8, 7.5},
	[197] = {7.5, 8, 8.5},
	[198] = {8, 8, 8},
	[199] = {8, 8, 8},
	[200] = {8, 7, 9},
	[201] = {8, 8, 8},
	[202] = {8, 8, 8},
	[203] = {8, 7, 9},
	[204] = {8, 8, 8},
	[205] = {8, 8, 8},
	[206] = {8.5, 8.5, 7},
	[207] = {8, 8, 8},
	[209] = {8, 8, 8},
	[210] = {8, 8, 8},
	[211] = {8.5, 8, 7.5},
	[212] = {8, 8, 8},
	[213] = {8, 8, 8},
	[214] = {8, 8, 8},
	[215] = {8.5, 7.5, 8},
	[216] = {8, 8, 8},
	[217] = {8, 8, 8},
	[218] = {8.5, 7.5, 8},
	[220] = {8, 8, 8},
	[224] = {7, 8.5, 8.5},
	[225] = {8, 8, 8},
	[226] = {8, 8, 8},
	[227] = {8, 8, 8},
	[228] = {8, 8, 8},
	[229] = {8, 8, 8},
	[231] = {8.5, 8, 7.5},
	[232] = {7, 8.5, 8.5},
	[233] = {7, 8.5, 8.5},
	[234] = {7, 8.5, 8.5},
	[235] = {7, 8.5, 8.5},
	[236] = {7.5, 8.5, 8},
	[237] = {7, 8.5, 8.5},
	[238] = {7, 8.5, 8.5},
	[239] = {8, 8, 8},
	[240] = {8.5, 8.5, 7},
	[241] = {8, 8, 8},
	[242] = {7.5, 8.5, 8},
	[243] = {9, 9, 6},
	[244] = {8.5, 9, 6.5},
	[245] = {8, 8, 8},
	[246] = {8, 8, 8},
	[247] = {8, 8, 8},
	[248] = {8, 8, 8},
	[249] = {8.5, 8.5, 7},
	[250] = {7.5, 9, 7.5},
	[251] = {8.5, 8.5, 7},
	[253] = {8, 8, 8},
	[254] = {8, 8, 8},
	[255] = {7.5, 9, 7.5},
	[256] = {8, 9, 7},
	[257] = {8, 8, 8},
	[258] = {8.5, 9, 6.5},
	[259] = {8.5, 7.5, 8},
	[260] = {8, 8.5, 7.5},
	[261] = {8.5, 7.5, 8},
	[262] = {8.5, 7.5, 8},
	[264] = {8.5, 8.5, 7},
	[265] = {9.5, 8, 6.5},
	[266] = {8.5, 8.5, 7},
	[267] = {8, 8, 8},
	[268] = {8.5, 9, 6.5},
	[270] = {8.5, 8.5, 7},
	[271] = {8, 7.5, 8.5},
	[272] = {9, 7.5, 7.5},
	[277] = {8.5, 7.5, 8},
	[278] = {8, 8, 8},
	[279] = {8, 8, 8},
	[280] = {8, 8, 8},
	[281] = {8, 8, 8},
	[282] = {8, 8, 8},
	[283] = {8, 8, 8},
	[285] = {8, 9, 7},
	[286] = {9, 8, 7},
	[287] = {8, 7.5, 8.5},
	[289] = {9.5, 8.5, 6},
	[291] = {9, 7.5, 7.5},
	[292] = {8, 8, 8},
	[293] = {8, 8, 8},
	[294] = {8, 8, 8},
	[296] = {8, 8, 8},
	[297] = {8, 9.5, 6.5},
	[298] = {8, 8, 8},
	[301] = {7, 8.5, 8.5},
	[302] = {8.5, 8.5, 7},
	[303] = {7, 8.5, 8.5},
	[306] = {7, 8.5, 8.5},
	[307] = {8, 8, 8},
	[308] = {8, 8, 8},
	[309] = {6.5, 9, 8.5},
	[310] = {8, 8, 8},
	[311] = {8.5, 8, 7.5},
	[316] = {8.5, 7.5, 8},
	[317] = {8.5, 8.5, 7},
	[318] = {7.5, 8.5, 8},
	[319] = {6.5, 9, 8.5},
	[320] = {8.5, 7.5, 8},
	[321] = {8, 8, 8},
	[323] = {8, 8, 8},
	[325] = {7.5, 9, 7.5},
	[328] = {8, 8, 8},
	[329] = {8, 8, 8},
	[330] = {8, 8, 8},
	[331] = {8, 8, 8},
	[332] = {8, 8, 8},
	[333] = {8, 8, 8},
	[335] = {9, 7.5, 7.5},
	[336] = {8, 8, 8},
	[337] = {8, 8, 8},
	[338] = {8.5, 7.5, 8},
	[339] = {8, 8, 8},
	[340] = {8, 8, 8},
	[341] = {8, 8, 8},
	[342] = {8, 8, 8},
	[343] = {7, 8.5, 8.5},
	[344] = {8.5, 8, 7.5},
	[345] = {8, 8.5, 7.5},
	[346] = {8, 8, 8},
	[347] = {8, 8.75, 7.25},
	[348] = {8.5, 8.5, 7},
	[374] = {8, 8, 8},
	[375] = {8, 8, 8},
	[378] = {8, 7, 9},
	[379] = {8, 7.5, 8.5},
	[380] = {8, 8, 8},
	[381] = {8, 8, 8},
	[382] = {7.75, 8.5, 7.75},
	[383] = {8, 7.5, 8.5},
	[384] = {8, 8, 8},
	[385] = {8, 7.5, 8.5},
	[386] = {8, 7.5, 8.5},
	[387] = {7.5, 8, 8.5},
	[388] = {8.5, 8, 7.5},
	[389] = {8.5, 7.5, 8},
	[390] = {8, 7.5, 8.5},
	[391] = {8, 7, 9},
	[392] = {8, 7.5, 8.5},
	[393] = {8.5, 7, 8.5},
	[394] = {8, 8, 8},
	[395] = {8.5, 8, 7.5},
	[396] = {7, 8.5, 8.5},
	[397] = {8, 8, 8},
	[398] = {8, 7.5, 8.5},
	[399] = {7.5, 8, 8.5},
	[400] = {7, 8.5, 8.5},
	[401] = {8.5, 8, 7.5},
	[402] = {8.5, 8, 7.5},
	[403] = {7.5, 8, 8.5},
	[404] = {8, 7.5, 8.5},
	[405] = {7.5, 8, 8.5},
	[406] = {8.5, 7.5, 8},
	[407] = {7, 8.5, 8.5},
	[408] = {7.5, 8, 8.5},
	[409] = {7, 8, 9},
	[410] = {8, 7.5, 8.5},
	[411] = {8, 8, 8},
	[412] = {7, 8.5, 8.5},
	[414] = {8, 8, 8},
	[415] = {7.5, 8.5, 8},
	[416] = {8, 8, 8},
	[417] = {8, 7.5, 8.5},
	[418] = {7.5, 8, 8.5},
	[419] = {8.5, 7.5, 8},
	[420] = {8.5, 7.5, 8},
	[421] = {8, 8.5, 7.5},
	[422] = {7.5, 8.5, 8},
	[423] = {8.5, 8.5, 7},
	[424] = {8.5, 7, 8.5},
	[425] = {7.5, 8, 8.5},
	[427] = {7, 8.5, 8.5},
	[428] = {7, 8.5, 8.5},
	[429] = {7.5, 8.5, 8},
	[430] = {8, 8.5, 7.5},
	[431] = {7.5, 8, 8.5},
	[432] = {8, 8, 8},
	[433] = {7.5, 8, 8.5},
	[434] = {8, 8, 8},
	[437] = {8, 8, 8},
	[438] = {7.5, 8, 8.5},
	[439] = {8.5, 8, 7.5},
	[440] = {8, 8, 8},
	[441] = {8, 7, 9},
	[442] = {9, 6.5, 8.5},
	[443] = {8, 8, 8},
	[445] = {8, 8, 8},
	[446] = {8.5, 8, 7.5},
	[447] = {8, 7.5, 8.5},
	[448] = {8, 7, 9},
	[449] = {8, 8, 8},
	[450] = {9, 8, 7},
	[452] = {8, 8, 8},
	[453] = {9, 8, 7},
	[454] = {8, 7.5, 8.5},
	[455] = {8, 8, 8},
	[456] = {8, 8.5, 7.5},
	[457] = {9, 8, 7},
	[458] = {8.5, 8.5, 7},
	[459] = {7, 8.5, 8.5},
	[460] = {7.5, 8.5, 8},
	[461] = {9, 8, 7},
	[462] = {8, 8, 8},
	[463] = {9, 9, 6},
	[464] = {8, 8, 8},
	[465] = {7, 8.5, 8.5},
	[466] = {7.5, 8, 8.5},
	[467] = {7.5, 8.5, 8},
	[468] = {7.5, 8.5, 8},
	[469] = {7, 8.5, 8.5},
	[470] = {7, 8.5, 8.5},
	[471] = {8.5, 7.5, 8},
	[472] = {8.5, 7.5, 8},
	[473] = {9, 7.5, 7.5},
	[474] = {6, 8, 10},
	[475] = {8.5, 7, 8.5},
	[476] = {7.5, 7.5, 9},
	[477] = {7.5, 7.5, 9},
	[478] = {8.5, 8, 7.5},
	[479] = {8, 6.5, 9.5},
	[480] = {8, 8.5, 7.5},
	[482] = {7.5, 8, 8.5},
	[483] = {8.5, 7.5, 8},
	[484] = {7, 8.5, 8.5},
	[485] = {9, 7.5, 7.5},
	[486] = {8, 7.5, 8.5},
	[487] = {8, 8, 8},
	[488] = {7.5, 8, 8.5},
	[489] = {8, 8.5, 7.5},
	[491] = {7, 9, 8},
	[492] = {8, 8.5, 7.5},
	[493] = {9.5, 8.5, 6},
	[494] = {8, 8, 8},
	[495] = {8.5, 7.5, 8},
	[496] = {9.5, 8.5, 6},
	[497] = {8.5, 7, 8.5},
	[498] = {8.5, 8, 7.5},
	[499] = {8, 7.5, 8.5},
	[500] = {8, 8, 8},
	[502] = {8.5, 7.5, 8},
	[503] = {7.5, 7.5, 9},
	[504] = {8, 8.5, 7.5},
	[505] = {7.5, 8, 8.5},
	[506] = {7, 8.5, 8.5},
	[507] = {7.5, 8.5, 8},
	[508] = {8, 8, 8},
	[509] = {8, 8, 8},
	[510] = {8.5, 7.5, 8},
	[511] = {7.5, 8, 8.5},
	[512] = {7.5, 8.5, 8},
	[513] = {8, 8, 8},
	[514] = {8, 8, 8},
	[515] = {8, 8, 8},
	[517] = {8, 8, 8},
	[518] = {9, 8.5, 6.5},
	[519] = {8.5, 8, 7.5},
	[521] = {7, 9, 8},
	[523] = {9, 8, 7},
	[525] = {8, 8, 8},
	[528] = {7.5, 8, 8.5},
	[529] = {8, 8, 8},
	[530] = {8, 8, 8},
	[532] = {8.5, 9, 6.5},
	[534] = {7.5, 8.5, 8},
	[535] = {8, 8, 8},
	[536] = {8.5, 8, 7.5},
	[537] = {8.5, 8, 7.5},
	[538] = {8.5, 8.5, 7},
	[539] = {8, 7.5, 8.5},
	[540] = {8, 7.5, 8.5},
	[541] = {8.5, 7, 8.5},
	[542] = {8.5, 7.5, 8},
	[543] = {7.5, 8.5, 8},
	[544] = {8.5, 8.5, 7},
	[545] = {8, 8, 8},
	[546] = {7.5, 8.5, 8},
	[547] = {8, 7, 9},
	[548] = {7.5, 8.5, 8},
	[549] = {8, 8, 8},
	[550] = {8, 7.5, 8.5},
	[552] = {7.5, 8.5, 8},
	[553] = {8, 7.5, 8.5},
	[554] = {7.5, 8.5, 8},
	[555] = {8.5, 7, 8.5},
	[556] = {7.5, 8.5, 8},
	[557] = {7.5, 8.5, 8},
	[558] = {8, 8, 8},
	[559] = {7.5, 9, 7.5},
	[560] = {8.5, 7.5, 8},
	[562] = {7.5, 8, 8.5},
	[564] = {9.5, 7.5, 7},
	[565] = {8.5, 7.5, 8},
	[566] = {7.5, 7.5, 9},
	[567] = {7.5, 8, 8.5},
	[568] = {9.5, 8.5, 6},
	[569] = {8.5, 7.5, 8},
	[570] = {8, 8, 8},
	[571] = {7.5, 8, 8.5},
	[572] = {8.5, 8, 7.5},
	[573] = {9, 7, 8},
	[626] = {7.5, 8, 8.5},
	[627] = {8.5, 8.5, 7},
	[628] = {8.5, 8, 7.5},
	[629] = {8.5, 8, 7.5},
	[630] = {8, 7, 9},
	[631] = {7.5, 8, 8.5},
	[632] = {7.5, 8, 8.5},
	[633] = {8, 8, 8},
	[634] = {7, 8.5, 8.5},
	[635] = {7.5, 8, 8.5},
	[637] = {8, 8, 8},
	[638] = {8.5, 7, 8.5},
	[639] = {8, 7.5, 8.5},
	[640] = {8, 7, 9},
	[641] = {8, 7, 9},
	[644] = {8, 7.5, 8.5},
	[645] = {8, 8, 8},
	[646] = {8, 8, 8},
	[647] = {8, 8, 8},
	[648] = {9, 7.5, 7.5},
	[649] = {9, 7.5, 7.5},
	[650] = {8.5, 8, 7.5},
	[652] = {8, 8, 8},
	[665] = {7.5, 8.5, 8},
	[666] = {8.5, 9, 6.5},
	[671] = {8, 8, 8},
	[675] = {8, 7.5, 8.5},
	[677] = {8, 8, 8},
	[678] = {8, 8, 8},
	[679] = {8, 8, 8},
	[680] = {8, 8, 8},
	[699] = {7, 8.5, 8.5},
	[702] = {8.5, 7.5, 8},
	[703] = {8, 8, 8},
	[705] = {8, 8.5, 7.5},
	[706] = {8, 8, 8},
	[707] = {8, 8, 8},
	[708] = {8, 7.5, 8.5},
	[709] = {8, 7.5, 8.5},
	[710] = {8, 8, 8},
	[711] = {8, 8, 8},
	[712] = {8, 8, 8},
	[713] = {9, 7.5, 7.5},
	[714] = {7, 8.5, 8.5},
	[715] = {8, 8, 8},
	[716] = {7, 8.5, 8.5},
	[717] = {7.5, 8.5, 8},
	[718] = {8, 8, 8},
	[722] = {7.5, 8.5, 8},
	[723] = {9, 7.5, 7.5},
	[724] = {8, 8, 8},
	[725] = {8, 8, 8},
	[726] = {7, 8.5, 8.5},
	[727] = {8, 8, 8},
	[728] = {8, 8, 8},
	[729] = {8, 7, 9},
	[730] = {8, 7, 9},
	[731] = {7, 8.5, 8.5},
	[732] = {8, 8.5, 7.5},
	[733] = {8, 8, 8},
	[737] = {6.5, 8, 9.5},
	[739] = {7, 8, 9},
	[740] = {8, 7.5, 8.5},
	[741] = {8, 8, 8},
	[742] = {8, 8, 8},
	[743] = {9.5, 8.5, 6},
	[744] = {8.5, 7, 8.5},
	[745] = {8, 8, 8},
	[746] = {8.5, 9, 6.5},
	[747] = {7.5, 8.5, 8},
	[748] = {8, 8.5, 7.5},
	[749] = {8, 8, 8},
	[750] = {8, 8, 8},
	[751] = {8, 7.5, 8.5},
	[752] = {9, 7.5, 7.5},
	[753] = {7.5, 8.5, 8},
	[754] = {8, 8, 8},
	[755] = {9, 6.5, 8.5},
	[756] = {8.5, 7, 8.5},
	[757] = {8.5, 8, 7.5},
	[758] = {7.5, 8.5, 8},
	[792] = {8, 8.5, 7.5},
	[800] = {18, 8, 8},
	[802] = {8.5, 8.5, 7},
	[817] = {8.5, 8, 7.5},
	[818] = {8, 8.5, 7.5},
	[819] = {7.5, 8.5, 8},
	[820] = {8, 8, 8},
	[821] = {8, 8, 8},
	[823] = {8, 8, 8},
	[824] = {8, 8, 8},
	[825] = {8, 8, 8},
	[826] = {8, 8, 8},
	[827] = {8, 8, 8},
	[828] = {8, 8, 8},
	[829] = {8, 8, 8},
	[830] = {8, 8, 8},
	[831] = {8, 8, 8},
	[832] = {8, 8, 8},
	[833] = {8, 8, 8},
	[834] = {8.5, 8, 7.5},
	[835] = {8, 8, 8},
	[836] = {7.5, 7, 9.5},
	[837] = {8.5, 8, 7.5},
	[838] = {8, 8, 8},
	[844] = {8, 8.5, 7.5},
	[845] = {8, 8, 8},
	[846] = {6, 8, 10},
	[847] = {8, 8, 8},
	[848] = {8, 7, 9},
	[849] = {8, 8, 8},
	[850] = {8, 8, 8},
	[851] = {7.5, 8, 8.5},
	[855] = {7.5, 8.5, 8},
	[856] = {8, 8, 8},
	[868] = {8, 8, 8},
	[872] = {8, 8, 8},
	[873] = {8, 8, 8},
	[874] = {8, 8, 8},
	[875] = {8, 8, 8},
	[876] = {8, 8, 8},
	[877] = {8, 8, 8},
	[878] = {8, 8, 8},
	[879] = {8, 8, 8},
	[880] = {8, 8, 8},
	[881] = {8, 8, 8},
	[882] = {8, 8, 8},
	[883] = {8, 8, 8},
	[884] = {8, 8, 8},
	[885] = {8, 8, 8},
	[886] = {8, 8, 8},
	[887] = {8, 8, 8},
	[888] = {8, 8, 8},
	[889] = {8, 8, 8},
	[890] = {8, 8, 8},
	[891] = {8, 8, 8},
	[892] = {8, 8, 8},
	[893] = {8, 8, 8},
	[894] = {8, 8, 8},
	[895] = {8, 8, 8},
	[896] = {8, 8, 8},
	[897] = {8, 8, 8},
	[898] = {8, 8, 8},
	[899] = {8, 8, 8},
	[900] = {8, 8, 8},
	[901] = {8, 8, 8},
	[902] = {8, 8, 8},
	[903] = {7.5, 9, 7.5},
	[904] = {8, 8, 8},
	[905] = {8, 8, 8},
	[906] = {8, 8, 8},
	[907] = {8, 8, 8},
	[908] = {8, 8, 8},
	[909] = {8, 8, 8},
	[911] = {8, 8.5, 7.5},
	[912] = {8, 8.5, 7.5},
	[913] = {8, 8.5, 7.5},
	[915] = {8, 8, 8},
	[916] = {8, 8, 8},
	[917] = {8, 8, 8},
	[921] = {8, 8, 8},
	[922] = {8, 8, 8},
	[923] = {8.5, 7.5, 8},
	[924] = {8, 8, 8},
	[925] = {8, 8, 8},
	[926] = {8, 8, 8},
	[927] = {8, 8, 8},
	[928] = {8, 8, 8},
	[929] = {8, 8, 8},
	[931] = {8, 8, 8},
	[932] = {8, 8, 8},
	[933] = {8, 8, 8},
	[934] = {8, 8, 8},
	[935] = {8, 8, 8},
	[936] = {8, 8, 8},
	[937] = {8, 8, 8},
	[938] = {8, 8, 8},
	[939] = {8, 8, 8},
	[941] = {8, 8, 8},
	[942] = {8, 8, 8},
	[943] = {8, 8, 8},
	[944] = {8, 8, 8},
	[945] = {8, 8, 8},
	[946] = {8, 8, 8},
	[947] = {8, 8, 8},
	[948] = {8, 8, 8},
	[949] = {8, 8, 8},
	[950] = {8, 8, 8},
	[951] = {8, 8, 8},
	[952] = {8, 8, 8},
	[953] = {8, 8, 8},
	[954] = {8, 8, 8},
	[955] = {8, 8, 8},
	[956] = {8, 8, 8},
	[957] = {8, 8, 8},
	[958] = {8, 8, 8},
	[959] = {8, 8, 8},
	[960] = {8, 8, 8},
	[961] = {8, 8, 8},
	[962] = {8, 8, 8},
	[963] = {8, 8, 8},
	[964] = {8, 8, 8},
	[965] = {8, 8, 8},
	[966] = {8, 8, 8},
	[967] = {8, 8, 8},
	[968] = {8, 8, 8},
	[969] = {8, 8, 8},
	[970] = {8, 8, 8},
	[971] = {8, 8, 8},
	[972] = {8, 8, 8},
	[973] = {8, 8, 8},
	[974] = {8, 8, 8},
	[975] = {8, 8, 8},
	[976] = {8, 8, 8},
	[977] = {8, 8, 8},
	[978] = {8, 8, 8},
	[979] = {8, 8, 8},
	[980] = {8, 8, 8},
	[981] = {8, 8, 8},
	[982] = {8, 8, 8},
	[983] = {8, 8, 8},
	[984] = {8, 8, 8},
	[985] = {8, 8, 8},
	[986] = {8, 8, 8},
	[987] = {8, 8, 8},
	[988] = {8, 8, 8},
	[989] = {8, 8, 8},
	[990] = {8, 8, 8},
	[991] = {8, 8, 8},
	[992] = {8, 8, 8},
	[993] = {8, 8, 8},
	[994] = {8, 8, 8},
	[995] = {8, 8, 8},
	[996] = {8, 8, 8},
	[997] = {8, 8, 8},
	[998] = {8, 8, 8},
	[999] = {8, 8, 8},
	[1000] = {8, 8, 8},
	[1001] = {8, 8, 8},
	[1002] = {8, 8, 8},
	[1003] = {8, 8, 8},
	[1004] = {8, 8, 8},
	[1005] = {8, 8, 8},
	[1006] = {8, 8, 8},
	[1007] = {8, 8, 8},
	[1008] = {8, 8, 8},
	[1009] = {8, 8, 8},
	[1010] = {8, 8, 8},
	[1011] = {8, 8, 8},
	[1012] = {8, 8, 8},
	[1013] = {9, 7.5, 7.5},
	[1039] = {7.5, 7.5, 9},
	[1040] = {8, 8, 8},
	[1042] = {6.75, 10.5, 6.75},
	[1061] = {8, 8, 8},
	[1062] = {8, 7.5, 8.5},
	[1063] = {8.5, 8.5, 7},
	[1065] = {8.5, 8.5, 7},
	[1066] = {8, 8, 8},
	[1067] = {8.5, 7.5, 8},
	[1068] = {8, 7, 9},
	[1073] = {8, 8, 8},
	[1117] = {7.5, 8.5, 8.5},
	[1124] = {8, 8, 8},
	[1125] = {8, 8, 8},
	[1126] = {8, 8, 8},
	[1127] = {7.5, 8.5, 8},
	[1128] = {8, 8, 8},
	[1129] = {11.5, 15.5, 7.5},
	[1130] = {8, 8, 8},
	[1131] = {8, 8, 8},
	[1132] = {8, 8, 8},
	[1133] = {8, 8, 8},
	[1134] = {8, 8, 8},
	[1135] = {8, 8, 8},
	[1136] = {8, 8, 8},
	[1137] = {8, 8, 8},
	[1138] = {8, 8, 8},
	[1139] = {8, 8, 8},
	[1140] = {8, 8, 8},
	[1141] = {8, 8, 8},
	[1142] = {8.5, 7.5, 8},
	[1143] = {8, 8, 8},
	[1144] = {8, 8, 8},
	[1145] = {8, 8, 8},
	[1146] = {8, 8, 8},
	[1147] = {8, 8, 8},
	[1149] = {8, 8, 8},
	[1150] = {8, 8, 8},
	[1151] = {8, 8, 8},
	[1152] = {7.5, 8.5, 8},
	[1153] = {8, 8, 8},
	[1154] = {8, 8, 8},
	[1155] = {8, 8.5, 7.5},
	[1156] = {8, 8, 8},
	[1157] = {8, 8, 8},
	[1158] = {8, 8, 8},
	[1159] = {7.5, 8.5, 8},
	[1160] = {8.5, 8, 7.5},
	[1161] = {8, 8.5, 7.5},
	[1162] = {7, 9, 8},
	[1163] = {9, 8, 7},
	[1164] = {7.5, 8, 8.5},
	[1165] = {8, 8.5, 7.5},
	[1166] = {8, 8.5, 7.5},
	[1167] = {8, 8.5, 7.5},
	[1168] = {8, 8, 8},
	[1174] = {7.5, 8.5, 8},
	[1175] = {8, 8, 8},
	[1176] = {8, 8, 8},
	[1177] = {9, 8, 7},
	[1178] = {8, 8, 8},
	[1179] = {8, 8.5, 7.5},
	[1180] = {7, 8.5, 8.5},
	[1181] = {7.5, 8, 8.5},
	[1182] = {8.5, 7.5, 8},
	[1183] = {8, 8, 8},
	[1184] = {8.25, 8, 7.75},
	[1185] = {8, 8, 8},
	[1187] = {11.625, 15.375, 7.625},
	[1188] = {11.375, 15.125, 7.75},
	[1189] = {11.875, 16, 7.25},
	[1190] = {11.125, 14.25, 7.875},
	[1191] = {12, 15.75, 7},
	[1192] = {11.625, 15, 7.375},
	[1193] = {11, 14.5, 7.5},
	[1194] = {11.25, 15.25, 7.875},
	[1195] = {11, 15, 8},
	[1196] = {8, 8, 8},
	[1197] = {8, 8, 8},
	[1198] = {8, 8, 8},
	[1200] = {8.25, 8, 7.75},
	[1201] = {7, 8.5, 8.5},
	[1202] = {8, 7.5, 8.5},
	[1204] = {8.5, 7.5, 8},
	[1205] = {8.25, 8, 7.75},
	[1206] = {7.5, 8, 8.5},
	[1207] = {7.5, 8.5, 8.5},
	[1208] = {7.5, 8, 8.5},
	[1209] = {7.5, 8, 8.5},
	[1211] = {7, 8.5, 8.5},
	[1212] = {7, 8.5, 8.5},
	[1213] = {7, 8.5, 8.5},
	[1226] = {7.5, 8.5, 8},
	[1227] = {8.5, 8, 7.5},
	[1228] = {8, 8.25, 7.75},
	[1229] = {7.75, 8, 8.25},
	[1230] = {8.25, 8.25, 7.5},
	[1231] = {8, 8, 8},
	[1232] = {7.75, 8.25, 8},
	[1233] = {8.25, 8.5, 7.25},
	[1234] = {8.25, 8, 7.75},
	[1235] = {8, 8, 8},
	[1236] = {7.5, 8.25, 8.25},
	[1237] = {8, 8.25, 7.75},
	[1238] = {8.5, 8.5, 7},
	[1243] = {8, 8, 8},
	[1244] = {8, 8, 8},
	[1245] = {8, 8, 8},
	[1247] = {11, 16, 7},
	[1248] = {8.25, 8, 7.75},
	[1255] = {8, 8, 8},
	[1256] = {8, 8, 8},
	[1257] = {8, 8, 8},
	[1258] = {8, 9, 7},
	[1259] = {9, 8, 8},
	[1266] = {8, 8.25, 7.75},
	[1267] = {11.25, 15.25, 7},
	[1268] = {9, 8.375, 6.625},
	[1269] = {8, 9.25, 6.75},
	[1271] = {8, 7.5, 8.5},
	[1276] = {8, 8, 8},
	[1277] = {8.5, 8, 7.5},
	[1278] = {8, 8.25, 7.25},
	[1279] = {8.5, 8, 7.5},
	[1280] = {8.5, 8, 7.5},
	[1281] = {8, 8.5, 8},
	[1282] = {8, 9.25, 6.75},
	[1283] = {8, 9.5, 6.5},
	[1284] = {9.25, 8, 6.75},
	[1285] = {8, 7.5, 8.5},
	[1286] = {7.875, 7.875, 8.25},
	[1287] = {8, 9, 7.25},
	[1288] = {9.5, 8, 6.5},
	[1289] = {8, 9.5, 7},
	[1290] = {8.25, 8, 7.75},
	[1291] = {9.5, 8, 6.5},
	[1292] = {8, 8, 6.75},
	[1293] = {8, 7.5, 8},
	[1295] = {8, 8.75, 7},
	[1296] = {9.25, 8, 7},
	[1297] = {8, 8, 8.25},
	[1298] = {8, 8, 8},
	[1299] = {8, 8, 8},
	[1300] = {8, 8, 8},
	[1301] = {8, 8, 8},
	[1303] = {8.25, 8.25, 7.5},
	[1304] = {7, 8.5, 8.5},
	[1305] = {8.5, 8, 7.5},
	[1311] = {11.25, 15.25, 7.375},
	[1317] = {11.25, 15.25, 6.75},
	[1319] = {11.25, 15.25, 7.35},
	[1320] = {8, 8, 8},
	[1321] = {8, 8.5, 7.5},
	[1322] = {8.5, 8.5, 7},
	[1323] = {7.5, 8.25, 8.25},
	[1324] = {8, 8, 8},
	[1325] = {8, 8, 8},
	[1326] = {8, 8, 8},
	[1328] = {8, 8, 8},
	[1329] = {8, 8, 8},
	[1330] = {7.5, 8, 8.5},
	[1331] = {8, 8, 8},
	[1332] = {8, 8, 8},
	[1333] = {7.75, 8.5, 7.75},
	[1334] = {7.5, 8, 8.5},
	[1335] = {8, 8, 8},
	[1336] = {8, 8, 8},
	[1337] = {7.5, 9, 7.5},
	[1338] = {8.5, 7.5, 8},
	[1339] = {13, 19.5, 5},
	[1343] = {8, 8, 8},
	[1344] = {8.25, 8, 7.75},
	[1345] = {8, 8, 8},
	[1346] = {8, 8, 8},
	[1348] = {8, 8, 8},
	[1349] = {7.75, 8.25, 8},
	[1350] = {8, 8, 8},
	[1351] = {8, 8, 8},
	[1352] = {48, 8, 6.5},
	[1354] = {12, 15.25, 7.35},
	[1363] = {8, 8, 8},
	[1364] = {8.3, 7.9, 7.8},
	[1365] = {8, 8, 8},
	[1384] = {8, 8.75, 7.25},
	[1385] = {8, 8, 8},
	[1386] = {8.125, 6.875, 9},
	[1387] = {8, 8.5, 7.5},
	[1394] = {8.5, 8, 7.5},
	[1395] = {8, 8, 8},
	[1396] = {8.5, 8, 7.5},
	[1400] = {6.5, 9, 8.5},
	[1401] = {7, 9, 8},
	[1402] = {8, 7.25, 8.75},
	[1403] = {8, 8, 8},
	[1409] = {23, 8, 6.25},
	[1410] = {13.32, 7.5, 7.5},
	[1411] = {8, 8, 8},
	[1412] = {8, 8, 8},
	[1416] = {8, 8, 8},
	[1420] = {9, 8, 8},
	[1423] = {7, 8.5, 8.5},
	[1424] = {8, 8, 7.5},
	[1426] = {13, 8, 5.5},
	[1427] = {7.625, 7.875, 8.5},
	[1428] = {8, 8, 8},
	[1429] = {8, 8, 8},
	[1430] = {8, 8, 8},
	[1431] = {8, 8, 8},
	[1432] = {8, 8, 8},
	[1433] = {8, 8, 8},
	[1434] = {8, 8, 8},
	[1435] = {9, 8.5, 6.5},
	[1441] = {8.5, 7.5, 8},
	[1442] = {8, 8, 8},
	[1443] = {8, 8, 7.25},
	[1444] = {8, 8, 7.5},
	[1446] = {8, 8, 8},
	[1447] = {8, 8, 8},
	[1448] = {8, 8, 8},
	[1449] = {8, 8, 8},
	[1450] = {8, 8, 8},
	[1451] = {8, 8, 8},
	[1453] = {8, 8, 8},
	[1454] = {8, 8, 8},
	[1455] = {8, 8, 8},
	[1456] = {8, 8, 8},
	[1457] = {8, 8, 8},
	[1458] = {8, 8, 8},
	[1462] = {8, 8, 8},
	[1463] = {8, 8, 8},
	[1464] = {8, 8, 8},
	[1465] = {8, 8, 8},
	[1466] = {8, 8, 8},
	[1467] = {8, 8, 8},
	[1468] = {7.625, 8.25, 8.125},
	[1469] = {7.625, 8.25, 8.125},
	[1470] = {7.625, 8.25, 8.125},
	[1471] = {8, 8, 8},
	[1472] = {7.5, 8, 8.5},
	[1473] = {8.75, 8, 7.25},
	[1474] = {8.625, 8, 7.375},
	[1475] = {8, 8, 7.5},
	[1476] = {8, 8, 7.5},
	[1477] = {8, 8, 7.5},
	[1478] = {8, 8, 8},
	[1479] = {13.625, 7.5, 9},
	[1480] = {23.5, 8, 7.375},
	[1482] = {14.25, 8, 7},
	[1483] = {6, 10, 8},
	[1484] = {8, 8, 8},
	[1485] = {8, 8, 8},
	[1486] = {23, 8, 5.5},
	[1487] = {16, 8.25, 7.25},
	[1488] = {16, 8, 7.5},
	[1489] = {15.5, 9.25, 6.75},
	[1490] = {14.25, 9.25, 8},
	[1492] = {9, 8, 7},
	[1493] = {8, 8, 8},
	[1494] = {8, 8, 8},
	[1495] = {7.75, 7.75, 8.5},
	[1496] = {8, 8, 8},
	[1497] = {7.625, 8.25, 8.125},
	[1498] = {7.5, 9, 7.5},
	[1499] = {13.5, 9, 7},
	[1500] = {13.5, 7.5, 8.5},
	[1501] = {10, 7, 7},
	[1502] = {8, 8, 7.5},
	[1503] = {8.5, 8.5, 7},
	[1504] = {7.25, 7.25, 9.25},
	[1505] = {7.25, 8.75, 8},
	[1506] = {7.25, 8.75, 8},
	[1507] = {23, 10, 6},
	[1508] = {8.5, 7.5, 8},
	[1509] = {8, 8.75, 6.75},
	[1510] = {8.5, 8.5, 7},
	[1511] = {8, 8, 8},
	[1514] = {8, 8, 8},
	[1515] = {8, 8, 8},
	[1516] = {8, 8, 8},
	[1517] = {8, 8.5, 7.5},
	[1518] = {8, 8.5, 7.5},
	[1519] = {9.5, 9.75, 9.75},
	[1521] = {8, 8, 8},
	[1523] = {8, 8, 8},
	[1524] = {8, 8, 8},
	[1530] = {8, 8, 8},
	[1531] = {8.5, 7, 8.5},
	[1532] = {7.5, 9, 7.5},
	[1533] = {8.5, 9, 6.5},
	[1536] = {8, 8, 8},
	[1537] = {8, 8, 8},
	[1538] = {8, 8, 8},
	[1539] = {8, 8, 8},
	[1540] = {8, 8, 8},
	[1541] = {8, 8, 8},
	[1542] = {8, 8, 8},
	[1543] = {9, 8, 7},
	[1544] = {8, 8, 8},
	[1545] = {8, 8, 8},
	[1546] = {8, 8, 8},
	[1547] = {8, 8, 8},
	[1548] = {9.5, 8, 6.5},
	[1549] = {7.25, 9.25, 7.5},
	[1550] = {8, 8, 8},
	[1552] = {8, 8, 8},
	[1553] = {8, 8, 8},
	[1554] = {8, 8, 8},
	[1555] = {8, 8, 8},
	[1556] = {9.25, 9.25, 5.5},
	[1557] = {8, 8, 8},
	[1558] = {8, 8, 8},
	[1559] = {8, 8, 8},
	[1560] = {8, 10.75, 8},
	[1561] = {8, 9.5, 8},
	[1562] = {8, 10, 8},
	[1563] = {8, 8, 8},
	[1564] = {8, 8, 8},
	[1565] = {8, 8, 8},
	[1566] = {8, 8, 8},
	[1567] = {7.5, 8.5, 8},
	[1568] = {8, 8, 8},
	[1569] = {9.75, 7.25, 7},
	[1570] = {7.5, 9, 7.5},
	[1571] = {8, 8, 8},
	[1572] = {8, 8, 8},
	[1573] = {8, 8, 8},
	[1574] = {7.5, 9.5, 7},
	[1575] = {7, 9, 8},
	[1576] = {6.75, 9.25, 8},
	[1577] = {8, 8, 8},
	[1578] = {7.5, 9, 7.5},
	[1579] = {7.5, 9, 7.5},
	[1581] = {7.5, 9, 7.5},
	[1582] = {7.5, 9, 7.5},
	[1583] = {7.5, 9, 7.5},
	[1586] = {8, 8, 8},
	[1587] = {8, 8, 8},
	[1588] = {8, 8, 8},
	[1589] = {8, 8, 8},
	[1590] = {8, 7.5, 8.5},
	[1591] = {8, 7.5, 8.5},
	[1592] = {8, 7.5, 8.5},
	[1593] = {8, 7.5, 8.5},
	[1594] = {8, 8, 8},
	[1595] = {8, 8, 8},
	[1596] = {7.5, 9, 7.5},
	[1597] = {7.5, 9, 7.5},
	[1598] = {9, 7.5, 7.5},
	[1599] = {9, 7.5, 7.5},
	[1600] = {7.5, 9.5, 7},
	[1601] = {6.75, 9.25, 8},
	[1602] = {6.75, 9.25, 8},
	[1603] = {7, 8, 9},
	[1604] = {8, 8, 8},
	[1605] = {8, 9.5, 6.5},
	[1607] = {8.625, 8, 7.375},
	[1608] = {8.75, 8, 7.25},
	[1609] = {7.5, 8, 8.5},
	[1610] = {8.5, 8.5, 7},
	[1615] = {7.5, 8, 8.5},
	[1622] = {8.5, 8, 7.5},
	[1623] = {8, 8, 8},
	[1624] = {8, 8, 8},
	[1625] = {8, 8, 8},
	[1626] = {8, 8, 8},
	[1627] = {8, 8, 8},
	[1628] = {8, 8, 8},
	[1629] = {8, 8, 8},
	[1631] = {8, 8, 8},
	[1632] = {8, 8, 8},
	[1633] = {8, 8, 8},
	[1634] = {8, 8, 8},
	[1635] = {8, 8, 8},
	[1636] = {8, 8, 8},
	[1637] = {8, 8, 8},
	[1639] = {8.25, 8.25, 7.5},
	[1640] = {9, 7.5, 7.5},
	[1641] = {8, 8, 8},
	[1642] = {8, 8, 8},
	[1643] = {8, 8, 8},
	[1644] = {8, 8, 8},
	[1645] = {8, 7.5, 8.5},
	[1646] = {8, 8, 8},
	[1647] = {7.5, 9.5, 7},
	[1648] = {8, 8, 8},
	[1649] = {9, 8.5, 6.5},
	[1651] = {8.5, 7.5, 8},
	[1652] = {7.625, 7.875, 8.5},
	[1653] = {7.625, 7.875, 8.5},
	[1654] = {7.625, 7.875, 8.5},
	[1655] = {8, 8, 8},
	[1656] = {8, 8, 8},
	[1660] = {7.5, 8.5, 8},
	[1661] = {7.75, 7.75, 8.5},
	[1662] = {7, 8.5, 8.5},
	[1663] = {8.5, 8, 7.5},
	[1664] = {7.5, 8.5, 8},
	[1665] = {8.75, 8, 7.25},
	[1666] = {8, 8, 8},
	[1671] = {11.75, 9.25, 8},
	[1672] = {8.5, 8.75, 6.75},
	[1673] = {10.5, 10.5, 8},
	[1674] = {8, 11.75, 9.25},
	[1675] = {9.25, 10.5, 9.25},
	[1676] = {9.25, 8, 11.75},
	[1677] = {10.5, 9.25, 9.25},
	[1678] = {9.25, 9.25, 10.5},
	[1679] = {8, 10.5, 10.5},
	[1680] = {11.75, 8, 9.25},
	[1681] = {10.5, 8, 10.5},
	[1682] = {9.665, 9.665, 9.665},
	[1683] = {8, 13, 8},
	[1684] = {9.25, 11.75, 8},
	[1685] = {8, 9.25, 11.75},
	[1686] = {13, 8, 8},
	[1687] = {7.75, 8.5, 7.75},
	[1688] = {8.25, 8.25, 7.5},
	[1690] = {7.25, 8.75, 8},
	[1691] = {8, 8, 8},
	[1692] = {8, 8, 8},
	[1693] = {8, 8, 8},
	[1699] = {8.5, 8, 7.5},
	[1700] = {7.5, 8.5, 8},
	[1701] = {8, 7.5, 8.5},
	[1705] = {8.5, 8, 7.5},
	[1706] = {8.5, 8, 7.5},
	[1708] = {8.5, 8.5, 7},
	[1709] = {8, 8.5, 7.5},
	[1710] = {7.5, 8, 8.5},
	[1711] = {8.25, 8.25, 7.5},
	[1712] = {8, 8, 8},
	[1713] = {8.5, 8, 7.5},
	[1714] = {8, 8, 8},
	[1715] = {8, 8.5, 7.5},
	[1716] = {8, 8, 8},
	[1717] = {8.5, 7.5, 8},
	[1718] = {7.5, 8, 8.5},
	[1719] = {7.5, 8.25, 8.25},
	[1720] = {8, 7.5, 8.5},
	[1721] = {8, 8.5, 7.5},
	[1722] = {8, 8.5, 7.5},
	[1723] = {8, 8.5, 7.5},
	[1725] = {8.25, 8.5, 7.25},
	[1726] = {7, 8.5, 8.5},
	[1727] = {7, 8.5, 8.5},
	[1728] = {7.5, 9, 7.5},
	[1729] = {8, 7, 9},
	[1730] = {8, 8, 8},
	[1731] = {7, 8.5, 8.5},
	[1734] = {8, 7.5, 8.5},
	[1735] = {8.5, 8.5, 7},
	[1736] = {7.5, 8, 8.5},
	[1737] = {8, 8, 8},
	[1738] = {8, 8, 8},
	[1739] = {8, 7.5, 8.5},
	[1740] = {8, 8, 8},
	[1741] = {8, 8, 8},
	[1742] = {10.5, 10.5, 6.75},
	[1743] = {7.75, 7.75, 8.5},
	[1744] = {8, 8, 8},
	[1745] = {7.5, 7.5, 9},
	[1746] = {7.5, 7.5, 9},
	[1748] = {7, 8.5, 8.5},
	[1749] = {7.5, 8, 8.5},
	[1750] = {8.5, 8.5, 7},
	[1751] = {9, 8.5, 6.5},
	[1752] = {7.5, 9, 7.5},
	[1753] = {7.75, 8.5, 7.75},
	[1754] = {7.75, 8.5, 7.75},
	[1755] = {7.75, 8.5, 7.75},
	[1756] = {8.5, 8, 7.5},
	[1757] = {8.5, 8, 7.5},
	[1758] = {8.5, 8, 7.5},
	[1759] = {8.5, 8, 7.5},
	[1760] = {8, 8.5, 7.5},
	[1761] = {8.5, 8.5, 7},
	[1762] = {8, 8.5, 7.5},
	[1763] = {8.5, 8, 7.5},
	[1764] = {7.625, 8.375, 8},
	[1765] = {7.625, 8.375, 8},
	[1766] = {7.625, 8.375, 8},
	[1770] = {9, 8.5, 6.5},
	[1771] = {7.5, 8, 8.5},
	[1772] = {8, 8, 8},
	[1773] = {7.625, 8.375, 8},
	[1774] = {7.625, 8.375, 8},
	[1775] = {7.5, 8.5, 8},
	[1776] = {9.5, 8.5, 6},
	[1777] = {8.25, 8.25, 7.5},
	[1778] = {8, 7, 9},
	[1780] = {8, 7, 9},
	[1781] = {7.5, 9, 7.5},
	[1782] = {8, 8.25, 7.75},
	[1787] = {8.25, 8, 7.75},
	[1788] = {8.5, 7.5, 8},
	[1789] = {9, 7.5, 7.5},
	[1790] = {8.5, 7.5, 8},
	[1791] = {8, 8, 8},
	[1792] = {8.25, 8.25, 7.5},
	[1793] = {8, 8, 8},
	[1794] = {8.5, 8.5, 7},
	[1795] = {8.3, 7.9, 7.8},
	[1796] = {8, 8.5, 7.5},
	[1797] = {8, 8.5, 7.5},
	[1798] = {8.5, 7.5, 8},
	[1799] = {8, 8, 8},
	[1800] = {8.5, 8, 7.5},
	[1801] = {8.5, 7.5, 8},
	[1802] = {8, 8, 8},
	[1803] = {8, 8, 8},
	[1804] = {7, 8.5, 8.5},
	[1805] = {8, 7.5, 8.5},
	[1806] = {8, 8, 8},
	[1807] = {7, 8.5, 8.5},
	[1808] = {7, 8.5, 8.5},
	[1809] = {7, 8.5, 8.5},
	[1810] = {7, 8.5, 8.5},
	[1811] = {8, 8, 8},
	[1815] = {13, 9.25, 8},
	[1816] = {8, 8, 5.5},
	[1817] = {8, 8, 5.5},
	[1818] = {8, 8, 5.5},
	[1828] = {7.75, 8.25, 8},
	[1840] = {9.5, 8.5, 6},
	[1841] = {9.5, 8.5, 6},
	[1842] = {9.5, 8.5, 6},
	[1843] = {11.75, 8, 8},
	[1846] = {8, 8, 8},
	[1847] = {7.75, 8, 8.25},
	[1848] = {8, 8, 8},
	[1849] = {10.5, 9.25, 8},
	[1850] = {10.5, 8, 8},
	[1851] = {7.5, 8.5, 8},
	[1852] = {8, 8, 8},
	[1853] = {9.75, 7.25, 7},
	[1855] = {11.125, 14.25, 7.875},
	[1857] = {8, 8, 8},
	[1858] = {7.5, 8.25, 8.25},
	[1859] = {8, 8, 8},
	[1860] = {9, 8.5, 8.5},
	[1861] = {8, 8.5, 7.5},
	[1862] = {7.5, 8, 8.5},
	[1863] = {7.625, 8.375, 8},
	[1864] = {7.625, 8.375, 8},
	[1865] = {7.625, 8.375, 8},
	[1866] = {8, 8, 8},
	[1867] = {8, 8, 8},
	[1868] = {8.5, 8, 8},
	[1869] = {8, 8.25, 7.75},
	[1870] = {8, 8, 8},
	[1871] = {8.5, 8.5, 7},
	[1872] = {8.5, 8.5, 7},
	[1873] = {8.5, 8, 8.5},
	[1874] = {8.5, 8.5, 8},
	[1875] = {8.5, 8, 8.5},
	[1877] = {8.5, 7.5, 8},
	[1878] = {8.5, 7.5, 8},
	[1879] = {8.5, 7.5, 8},
	[1880] = {25.5, 10.5, 6},
	[1881] = {15.5, 10.5, 8},
	[1882] = {18, 9.25, 7},
	[1883] = {18, 9, 8},
	[1884] = {8, 8, 8},
	[1885] = {7.5, 8, 8.5},
	[1886] = {8, 8.5, 7.5},
	[1887] = {8, 8, 8},
	[1888] = {8, 8, 8},
	[1889] = {8, 8, 8},
	[1890] = {8, 8, 8},
	[1891] = {15.5, 10.5, 8},
	[1892] = {8, 8, 8},
	[1893] = {8, 8, 8},
	[1894] = {8, 8, 8},
	[1895] = {10.5, 9.25, 8},
	[1896] = {10.5, 9.25, 8},
	[1897] = {7.5, 8.5, 8},
	[1898] = {8.5, 8.5, 7},
	[1899] = {8, 8, 8},
	[1903] = {9.5, 8.5, -1.375},
	[1904] = {8, 8, 8},
	[1905] = {8, 8, 8},
	[1906] = {8, 8, 8},
	[1907] = {8, 8.5, 7.5},
	[1911] = {8, 8, 8},
	[1912] = {9, 7.5, 7.5},
	[1913] = {8, 8, 8},
	[1914] = {8, 8, 8},
	[1915] = {8, 8, 8},
	[1917] = {8, 8.5, 7.5},
	[1918] = {8, 8, 8},
	[1919] = {8, 8, 8},
	[1920] = {8.5, 8.5, 7},
	[1921] = {8.25, 7.75, 8},
	[1922] = {7.75, 8, 8.25},
	[1926] = {8, 9, 7},
	[1927] = {8, 8.5, 7.5},
	[1928] = {8, 8.5, 7.5},
	[1929] = {8, 8, 8},
	[1930] = {8, 8, 8},
	[1931] = {7.5, 8.5, 8},
	[1932] = {7.5, 8.5, 8},
	[1933] = {8, 8, 8},
	[1934] = {8.5, 8, 7.5},
	[1935] = {7.75, 7.75, 8.5},
	[1936] = {7.75, 8.25, 8},
	[1937] = {8, 8, 8},
	[1938] = {8, 8.25, 7.75},
	[1939] = {8, 8.25, 7.75},
	[1940] = {8.25, 8, 7.75},
	[1941] = {7.5, 8, 8.5},
	[1943] = {8, 7.5, 8.5},
	[1949] = {8, 8, 8},
	[1952] = {8, 8, 8},
	[1953] = {8, 7.75, 8.25},
	[1954] = {8, 8, 8},
	[1955] = {7, 9, 8},
	[1956] = {8.5, 8, 7.5},
	[1957] = {9, 8, 7},
	[1958] = {8, 8, 8},
	[1959] = {9, 7.625, 7.375},
	[1960] = {8, 8, 8},
	[1961] = {8.75, 7.75, 7.5},
	[1962] = {8, 8, 8},
	[1963] = {8, 8, 8},
	[1964] = {8, 8, 8},
	[1965] = {8.25, 8.25, 7.5},
	[1966] = {8, 8, 8},
	[1967] = {7.75, 8.25, 8},
	[1968] = {7.625, 8, 8.375},
	[1969] = {8.25, 8.25, 7.5},
	[1971] = {8.25, 8.5, 8.25},
	[1972] = {8.25, 8.25, 8.5},
	[1973] = {8.5, 8.5, 7},
	[1974] = {8, 8, 8},
	[1975] = {8, 8, 8},
	[1976] = {8, 8, 8},
	[1977] = {8, 8, 8},
	[1978] = {8, 8, 8},
	[1979] = {8, 8, 8},
	[1981] = {8, 8, 8},
	[1982] = {8, 8, 8},
	[1983] = {8, 8, 8},
	[1984] = {7.5, 8, 8.5},
	[1987] = {8, 8, 8},
	[1988] = {8, 8, 8},
	[1989] = {8, 8, 8},
	[1990] = {10.5, 10.5, 8},
	[1991] = {9, 9, 8},
	[1992] = {9, 9, 8},
	[1993] = {9, 9, 8},
	[1994] = {10.5, 10.5, 8},
	[1995] = {9.5, 9.5, 8},
	[1996] = {11.75, 11.75, 8},
	[1997] = {7.625, 8.25, 8.125},
	[1998] = {8, 8, 8},
	[1999] = {8, 8, 8},
	[2000] = {8, 8, 8},
	[2001] = {8.5, 8.25, 7.25},
	[2002] = {9.5, 8, 6.5},
	[2003] = {8.5, 8, 7.5},
	[2004] = {8.5, 8, 7.5},
	[2008] = {7.75, 8.25, 8},
	[2009] = {8, 8, 8},
	[2010] = {8.5, 8, 7.5},
	[2011] = {7.75, 8, 8.25},
	[2012] = {8, 8, 8},
	[2013] = {8, 8, 8},
	[2014] = {8, 8, 8},
	[2015] = {8, 8, 8},
	[2016] = {8, 8, 8},
	[2017] = {8, 8.5, 7.5},
	[2018] = {8, 8, 8},
	[2022] = {8, 9.25, 6.75},
	[2023] = {8.5, 8.5, 8},
	[2024] = {9, 8, 8},
	[2025] = {8.5, 8, 8.5},
	[2026] = {9, 8, 8},
	[2027] = {9, 8, 8},
	[2028] = {9, 8, 8},
	[2031] = {10.5, 10.5, 8},
	[2032] = {10.5, 9.25, 8},
	[2033] = {10.5, 10.5, 6.75},
	[2035] = {8, 8, 8},
	[2036] = {8, 8, 8},
	[2037] = {8, 8, 8},
	[2038] = {8, 8.5, 8.5},
	[2039] = {8.5, 8, 8.5},
	[2040] = {8.5, 8, 8.5},
	[2041] = {9, 8, 7},
	[2042] = {7.75, 7.75, 8.5},
	[2046] = {8, 8, 8},
	[2047] = {8, 8.25, 7.75},
	[2048] = {8, 8, 8},
	[2049] = {9, 8, 7},
	[2050] = {8, 8, 8},
	[2051] = {7.75, 8.125, 8.125},
	[2057] = {7.5, 8, 8.5},
	[2058] = {8.5, 8, 7.5},
	[2061] = {8, 8, 8},
	[2062] = {7.5, 8, 8.5},
	[2063] = {7.5, 8, 8.5},
	[2064] = {8.25, 7.75, 8},
	[2065] = {8, 8, 8},
	[2066] = {8.75, 8.5, 8},
	[2067] = {7.5, 9, 9.5},
	[2068] = {9.5, 9.5, 6.5},
	[2071] = {8, 8, 8},
	[2072] = {8, 8, 8},
	[2076] = {8.25, 8.5, 8.5},
	[2077] = {7, 8.5, 8.5},
	[2078] = {9, 8, 7},
	[2079] = {8.25, 8.25, 7.5},
	[2080] = {7.75, 8.25, 8},
	[2081] = {8, 8, 8},
	[2082] = {7.5, 8, 8.5},
	[2083] = {8, 8.25, 7.75},
	[2084] = {7.5, 8.25, 8.25},
	[2085] = {7.5, 8.25, 8.25},
	[2086] = {8, 7.5, 8.5},
	[2087] = {8, 8, 8},
	[2088] = {7.5, 7.5, 9},
	[2089] = {8, 8, 8},
	[2090] = {7.75, 8, 8.25},
	[2091] = {8.5, 8, 7.5},
	[2092] = {8.5, 8, 7.5},
	[2093] = {8.5, 8, 7.5},
	[2095] = {11.25, 17.25, 9.75},
	[2096] = {10.75, 17.75, 9.75},
	[2097] = {11.75, 16.75, 7.75},
	[2098] = {12.5, 16, 8},
	[2099] = {12.25, 16.25, 9},
	[2100] = {11.75, 16.75, 8.25},
	[2101] = {11.5, 17, 8.5},
	[2102] = {11, 17.5, 9.5},
	[2103] = {12, 16.5, 7.5},
	[2104] = {12, 16.5, 8.25},
	[2105] = {11.25, 17.25, 7.25},
	[2106] = {12.25, 16.25, 8.75},
	[2107] = {10.5, 18, 10.5},
	[2108] = {11, 17.5, 7.25},
	[2109] = {11.5, 17, 7.75},
	[2110] = {12.5, 16, 7},
	[2111] = {13, 18, 5.5},
	[2112] = {12.75, 15.75, 6.5},
	[2113] = {7.75, 8.25, 8},
	[2114] = {8.25, 8.25, 7.5},
	[2115] = {8, 8.5, 7.5},
	[2116] = {7.5, 8, 8.5},
	[2117] = {7.5, 8.5, 8},
	[2118] = {8.5, 8, 7.5},
	[2119] = {8.5, 8, 7.5},
	[2120] = {8, 8.5, 7.5},
	[2121] = {9, 8, 7},
	[2122] = {9, 8, 7},
	[2123] = {9, 8, 7},
	[2124] = {8, 8, 8},
	[2126] = {8, 8, 8},
	[2127] = {8.5, 8, 7.5},
	[2128] = {8, 8, 8},
	[2129] = {8, 8, 8},
	[2130] = {7.625, 8.375, 8},
	[2131] = {8.25, 7.75, 8},
	[2132] = {8.25, 8, 7.75},
	[2133] = {7.5, 8, 8.5},
	[2134] = {8.5, 8, 7.5},
	[2135] = {7.5, 8.5, 8},
	[2136] = {8, 8, 8},
	[2143] = {8, 8, 8},
	[2144] = {9, 8, 7},
	[2145] = {9, 8, 7},
	[2157] = {8, 8.5, 7.5},
	[2158] = {7.625, 8.375, 8},
	[2163] = {7.75, 8, 8.25},
	[2164] = {8, 8, 8},
	[2165] = {7.5, 8, 8.5},
	[2186] = {8, 8, 8},
	[2187] = {8, 8, 8},
	[2188] = {8, 8, 8},
	[2189] = {8, 8, 8},
	[2190] = {8, 8, 8},
	[2192] = {8, 8, 8},
	[2193] = {8.25, 8, 7.75},
	[2194] = {7.875, 8.25, 7.875},
	[2195] = {8, 7.875, 8.125},
	[2196] = {8, 8, 8},
	[2197] = {8, 8, 8},
	[2198] = {8, 8, 8},
	[2199] = {8, 8, 8},
	[2200] = {18, 6.75, 6.75},
	[2201] = {8, 8, 8},
	[2202] = {8, 8, 8},
	[2203] = {15.5, 6.75, 6.75},
	[2204] = {15.5, 6.75, 6.75},
	[2205] = {15.5, 6.75, 6.75},
	[2206] = {8, 8, 8},
	[2208] = {9.25, 8, 7.75},
	[2209] = {8, 8, 8},
	[2210] = {8, 8, 8},
	[2211] = {10.5, 8, 8},
	[2212] = {10.5, 8, 8},
	[2213] = {33, 8, 8},
	[2214] = {33, 8, 8},
	[2215] = {33, 8, 8},
	[2220] = {9.25, 8, 9.25},
	[2221] = {9.25, 9.25, 5.5},
	[2222] = {9.25, 9.25, 9.25},
	[2223] = {8, 9.25, 9.25},
	[2225] = {8, 9.25, 9.25},
	[2226] = {8, 8, 10.5},
	[2227] = {10.5, 10.5, 8},
	[2228] = {10.5, 8, 10.5},
	[2229] = {10.5, 10.5, 8},
	[2230] = {5.5, 10.5, 10.5},
	[2231] = {9, 8, 9},
	[2232] = {8, 8.75, 9},
	[2233] = {9, 9.5, 7.25},
	[2330] = {9, 6.75, 9},
	[2332] = {8, 9, 9},
	[2333] = {9.5, 8, 8},
	[2334] = {8, 8, 9.5},
	[2335] = {8, 8.75, 8.75},
	[2336] = {8, 9.5, 8},
	[2337] = {18, 8, 8},
	[2338] = {8, 9.25, 9.25},
	[2339] = {8, 9.25, 9.25},
	[2340] = {8, 9.25, 9.25},
	[2341] = {9.75, 8, 9.25},
	[2343] = {8, 8.75, 9.25},
	[2344] = {8.75, 8, 9.25},
	[2345] = {8.75, 8, 9.25},
	[2346] = {8.375, 9.25, 8},
	[2347] = {8, 8.375, 9.25},
	[2349] = {58, 8, 13},
	[2350] = {8, 8, 8},
	[2352] = {8.25, 8.25, 7.5},
	[2353] = {9, 9, 8},
	[2354] = {10, 8, 8},
	[2355] = {8, 3, 10.5},
	[2356] = {18, 8, 8.375},
	[2357] = {8.375, 8.375, 8.375},
	[2358] = {8.375, 8.375, 8.375},
	[2359] = {9.25, 8, 8.375},
	[2360] = {9.25, 8.75, 8.375},
	[2361] = {8.75, 8, 8.75},
	[2363] = {8.5, 8, 9},
	[2364] = {8, 8.75, 8.375},
	[2365] = {8.375, 8.75, 8.375},
	[2366] = {10.5, 8, 8},
	[2367] = {8, 8, 8},
	[2368] = {8.5, 8, 9.25},
	[2370] = {8.375, 9.25, 8},
	[2371] = {8, 8.75, 8.75},
	[2372] = {8, 8, 8},
	[2373] = {8, 8, 8},
	[2374] = {8, 8, 8},
	[2375] = {8, 8, 8},
	[2376] = {7.5, 8.25, 8.25},
	[2377] = {8.75, 7.875, 7.375},
	[2378] = {8.75, 8, 7.25},
	[2379] = {7.625, 8.375, 8},
	[2380] = {8, 7.5, 8.5},
	[2381] = {8, 8, 8},
	[2382] = {8.25, 8.25, 7.5},
	[2383] = {8, 8, 8},
	[2384] = {7.75, 7.5, 8.75},
	[2385] = {8, 8, 8},
	[2386] = {8.75, 7.625, 7.625},
	[2387] = {7.75, 8.25, 8},
	[2388] = {7.625, 8, 8.375},
	[2389] = {8, 8, 8},
	[2390] = {8, 7.25, 8.75},
	[2392] = {7.625, 7.75, 8.625},
	[2393] = {9, 7.5, 7.5},
	[2394] = {8.75, 7.625, 7.625},
	[2395] = {7.5, 8.75, 7.75},
	[2397] = {8, 7.25, 8.75},
	[2398] = {8, 8.75, 8.75},
	[2399] = {8, 8.75, 8.75},
	[2400] = {8, 8, 8},
	[2401] = {8.25, 8, 7.75},
	[2402] = {8.75, 8, 7.25},
	[2403] = {7.625, 8.75, 7.625},
	[2404] = {8, 8, 8},
	[2405] = {8, 8.25, 7.75},
	[2406] = {8, 8, 8},
	[2407] = {7.5, 8.25, 8.25},
	[2408] = {8, 8, 8},
	[2409] = {8, 7.25, 8.75},
	[2410] = {8.25, 8.25, 8},
	[2411] = {8.25, 7.25, 8.5},
	[2412] = {8.5, 8, 7.5},
	[2413] = {7.5, 8.75, 7.75},
	[2414] = {6.5, 8.75, 8.75},
	[2415] = {8, 8, 8},
	[2416] = {9, 7.5, 7.5},
	[2417] = {7.25, 8.75, 8},
	[2418] = {8, 7.25, 8.75},
	[2419] = {8, 8, 8},
	[2420] = {7.625, 8.75, 7.625},
	[2421] = {8, 8, 8},
	[2422] = {7.5, 8.25, 8.25},
	[2423] = {8.375, 8.375, 7.25},
	[2424] = {8, 8, 8},
	[2425] = {8.75, 7.625, 7.625},
	[2426] = {8, 7.25, 8.75},
	[2427] = {8.375, 8.375, 7.25},
	[2428] = {7.875, 8.25, 7.875},
	[2429] = {9, 7.5, 7.5},
	[2430] = {7.625, 8.375, 8},
	[2431] = {8, 7.5, 8.5},
	[2432] = {7, 8.5, 8.5},
	[2433] = {8, 8, 8},
	[2434] = {8.25, 8, 7.75},
	[2435] = {7.5, 8, 8.5},
	[2436] = {9, 8, 7},
	[2437] = {8, 8, 8},
	[2438] = {8, 8.5, 7.5},
	[2439] = {7.75, 8.5, 7.75},
	[2440] = {8.25, 8.25, 7.5},
	[2441] = {8, 8, 8},
	[2442] = {8, 8, 8},
	[2443] = {8.5, 8.5, 7},
	[2444] = {8.5, 8.5, 7},
	[2445] = {8.75, 7.75, 7.5},
	[2446] = {8.165, 8.165, 7.67},
	[2447] = {8, 8, 8},
	[2448] = {7.5, 8.125, 8.375},
	[2449] = {8.375, 8.375, 7.25},
	[2450] = {8, 7.625, 8.375},
	[2451] = {8, 8, 8},
	[2452] = {8.125, 7.875, 8},
	[2453] = {8.625, 8.375, 7},
	[2454] = {8.625, 8.625, 6.75},
	[2455] = {7.75, 8.375, 7.875},
	[2456] = {8.125, 8.125, 7.75},
	[2457] = {7.75, 7.875, 8.375},
	[2458] = {8.375, 8, 7.625},
	[2459] = {8.375, 8, 7.625},
	[2460] = {7.875, 7.625, 8.5},
	[2461] = {8.125, 7.75, 8.125},
	[2462] = {7.75, 8.375, 7.875},
	[2463] = {7.5, 8.375, 8.125},
	[2464] = {7.875, 8.25, 7.875},
	[2465] = {7.875, 8.25, 7.875},
	[2466] = {7.75, 8.125, 8.125},
	[2467] = {7.875, 7.875, 8.25},
	[2468] = {8.25, 7.875, 7.875},
	[2469] = {7.75, 7.5, 8.75},
	[2471] = {8, 7.875, 8.125},
	[2472] = {8.75, 7.625, 7.625},
	[2473] = {7.875, 8, 8.125},
	[2474] = {8, 8, 8},
	[2475] = {8, 8, 8},
	[2476] = {8, 8, 8},
	[2477] = {8, 8, 8},
	[2478] = {8.375, 8, 7.625},
	[2479] = {8.375, 8, 7.625},
}

PetBattle.BreedName = {
        [3] = "B/B",
        [4] = "P/P",
        [5] = "S/S",
        [6] = "H/H",
        [7] = "H/P",
        [8] = "P/S",
        [9] = "H/S",
        [10] = "P/B",
        [11] = "S/B",
        [12] = "H/B",
	}

PetBattle.IdByName = {}
for i,v in pairs(PetBattle.BasePetStats) do
	local name = C_PetJournal.GetPetInfoBySpeciesID(i)
	if name then
		PetBattle.IdByName[name] = i
	end
end

PetBattle.SpeciesByDisplayId = {}
PetBattle.NPCIdBySpeciesId = {}
for i=1,5000 do
	local name, _, _, companionID = C_PetJournal.GetPetInfoBySpeciesID(i)
	if companionID then
		PetBattle.SpeciesByDisplayId[companionID] = i
		PetBattle.NPCIdBySpeciesId[i]=companionID
	end
end



function PetBattle:GetPetFakeIdByLink(link,generic)
	if not link then return -1,"ERROR" end

	local breedid,breedname = ZGV.PetBattle:GetPetBreedByLink(link)
	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(link,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

	local petItem_id = 1000000000
	petItem_id = petItem_id+(BattlePetId*100000)
	if not generic then
		petItem_id = petItem_id+(breedid*1000)
		petItem_id = petItem_id+(BattlePetRarity*100)
		petItem_id = petItem_id+(BattlePetLevel)
	end

	return petItem_id,"OK"
end

function PetBattle:GetBattlePetIdFromFakeId(link)
	return tonumber(tostring(link):sub(2,5))
end

function PetBattle:GetPetFallbackId(id)
	local str = tostring(id)
	return string.sub(str,1,5).."00"..string.sub(str,8)
end

function PetBattle:GetPetBreedByLink(link)
	if not link then return -1,"ERROR" end
	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(link,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	return PetBattle:GetPetBreedByStats(BattlePetId,BattlePetHP,BattlePetAtt,BattlePetSpeed,BattlePetRarity,BattlePetLevel)
end



function PetBattle:GetPetBreedBySlot(bag,slot)
	if not bag or not slot then return -1,"ERROR" end

	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(C_Container.GetContainerItemLink(bag, slot),"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	return PetBattle:GetPetBreedByStats(BattlePetId,BattlePetHP,BattlePetAtt,BattlePetSpeed,BattlePetRarity,BattlePetLevel)
end

function PetBattle:GetPetBreedByStats(BattlePetId,BattlePetHP,BattlePetAtt,BattlePetSpeed,BattlePetRarity,BattlePetLevel)
	if not BattlePetId then return -1,"UNKNOWN" end
	local BattlePetId,BattlePetHP,BattlePetAtt,BattlePetSpeed,BattlePetRarity = tonumber(BattlePetId),tonumber(BattlePetHP),tonumber(BattlePetAtt),tonumber(BattlePetSpeed),tonumber(BattlePetRarity)
	if BattlePetId*BattlePetHP*BattlePetAtt*BattlePetSpeed==0 then return -1,"ERROR" end

	local BaseStats = self.BasePetStats[BattlePetId]
	if not BaseStats then  ZGV:Debug("&petbattle PetId %s has unknown stats, can't determine breed.",tostring(BattlePetId))  return -1,"UNKNOWN"  end
	local RarityMod = PetBattle.RarityMod[BattlePetRarity]
	if not RarityMod then ZGV:Debug("&petbattle Unknown rarity %s",tostring(BattlePetRarity))  return -1,"UNKNOWN"  end

	for i,currentbreed in pairs(PetBattle.BreedStats) do
		local calc_hp		= ceil((BaseStats[1] + currentbreed[1]) * BattlePetLevel * ((RarityMod - 0.5) * 2 + 1) * 5 + 100 - 0.5)
		local calc_att	= ceil((BaseStats[2] + currentbreed[2]) * BattlePetLevel * ((RarityMod - 0.5) * 2 + 1) - 0.5)
		local calc_speed	= ceil((BaseStats[3] + currentbreed[3]) * BattlePetLevel * ((RarityMod - 0.5) * 2 + 1) - 0.5)
		if ((calc_hp==BattlePetHP) and (calc_att==BattlePetAtt) and (calc_speed==BattlePetSpeed)) then
			return i,PetBattle.BreedName[i]
		end
	end

	return -1,"UNKNOWN"
end

function PetBattle:HasPetByDisplay(petid)
	local species = ZGV.PetBattle.SpeciesByDisplayId[petid]
	if not species then return false end
	local numCollected, limit = C_PetJournal.GetNumCollectedInfo(species)
	return ((numCollected or 0) > 0)
end
