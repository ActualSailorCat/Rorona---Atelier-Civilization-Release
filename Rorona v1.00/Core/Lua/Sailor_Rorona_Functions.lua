--=============================================
-- Rorona Ingredients by SailorCat
--=============================================
local sailorRoronaHub		= GameInfo.Districts["DISTRICT_COMMERCIAL_HUB"].Index
local sailorRoronaWheat		= GameInfo.Resources["RESOURCE_WHEAT"].Index
local sailorRoronaSugar		= GameInfo.Resources["RESOURCE_SUGAR"].Index
local sailorRoronaCitrus	= GameInfo.Resources["RESOURCE_CITRUS"].Index
local sailorRoronaMilk		= GameInfo.Resources["RESOURCE_CATTLE"].Index
local sailorIngredientCount = 0
local sailorRoronaMod		= (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100

function Sailor_Rorona_Ingredients (playerID, districtID, iX, iY)
	local bRORONALeader = false
	local pPlayerConfig = PlayerConfigurations[playerID]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	if sLeader == 'LEADER_SAILOR_RORONA' then
		bRORONALeader = true
	end

	if bRORONALeader == true then
		local sailorDistrict = GameInfo.Districts[districtID].Index
		local pPlayer = Players[playerID]
		local pPlayerTreasury = pPlayer:GetTreasury()
		local gNum = 100 * sailorRoronaMod
		if sailorDistrict == sailorRoronaHub then
			--//// Checking adjacent resources...
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
				local pAdjacentPlot = Map.GetAdjacentPlot(iX, iY, direction);
				if pAdjacentPlot then
					local iResource = pAdjacentPlot:GetResourceType()
					--//// Consuming ingredient resources...
					if iResource == sailorRoronaWheat
					or iResource == sailorRoronaSugar
					or iResource == sailorRoronaCitrus
					or iResource == sailorRoronaMilk then
						ResourceBuilder.SetResourceType(pAdjacentPlot, -1)
						pPlayerTreasury:ChangeGoldBalance(gNum)
						if pPlayer:IsHuman() then
							Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_GOLD]+{1_Num}[ICON_GOLD][ENDCOLOR]", gNum), iX, iY, 0)
						end
						sailorIngredientCount = sailorIngredientCount + 1 -- Increment pie counter.
						--//// Ready to synthesize a pie...
						if sailorIngredientCount > 3 then
							local pPlayerCities = pPlayer:GetCities()
							local pCap = pPlayerCities:GetCapitalCity()
							pCap:AttachModifierByID("SAILOR_RORONA_PIE_SHOP")
							sailorIngredientCount = 0 -- Reset pie counter.
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_GOLD][ICON_RESOURCE_SAILOR_PIES] Pie synthesized![ENDCOLOR]"), iX, iY, 0)
							end
						end
					end
				end
			end
		end
	end
end

--=============================================
-- Rorona Pie Diplomacy by SailorCat
--=============================================	
local rPlayer			= 0;		
local sailorRoronaPie	= GameInfo.Resources["RESOURCE_SAILOR_PIES"].Index

--//// Establishing Rorona as rPlayer...
for k, v in ipairs(PlayerManager.GetAliveIDs()) do
	local sLeaderType = PlayerConfigurations[v]:GetLeaderTypeName()
	if sLeaderType == 'LEADER_SAILOR_RORONA' then
		rPlayer = Players[v]
	end
end

function Sailor_Rorona_PieDiplomacy (playerID, resourceID)
	local bRORONALeader = false
	local pPlayerConfig = PlayerConfigurations[playerID]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	if sLeader == 'LEADER_SAILOR_RORONA' then
		bRORONALeader = true
	end

	if bRORONALeader == false then
		local pPlayer = Players[playerID]
		if resourceID == sailorRoronaPie then
			--//// Forcing embassy...
			if (not rPlayer:GetDiplomacy():HasEmbassyAt(pPlayer:GetID())) then
				rPlayer:GetDiplomacy():SetHasEmbassyAt(pPlayer:GetID(), true)
			end
		end
	end
end

--=============================================
-- Leader Present Detection by SeelingCat
--=============================================
local bRORONAPresent = false

for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
    if bRORONAPresent == false then
        local sLeaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        if sLeaderType == 'LEADER_SAILOR_RORONA' then
			bRORONAPresent = true
        end
    end
end
if bRORONAPresent == true then
    print ("///// Rorona detected. Loading lua functions...")
	GameEvents.OnDistrictConstructed.Add(Sailor_Rorona_Ingredients)
	Events.PlayerResourceChanged.Add(Sailor_Rorona_PieDiplomacy)
else
    print ("///// Rorona not detected.")
end