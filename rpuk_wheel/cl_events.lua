--- Functions

function firstToUpper(str)
	return (str:gsub("^%l", string.upper))
end


function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

function startAnim(lib, anim)
	ESX.Streaming.RequestAnimDict(lib, function()
	TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, 8.0, -1, 48, 0.0, false, false, false) end)
end

function showIdAnim()
	local ped = PlayerPedId()
	local playerPed = PlayerPedId()
	local idBadge = nil
	loadAnimDict("paper_1_rcm_alt1-8")
	TaskPlayAnim(ped, 'paper_1_rcm_alt1-8', 'player_one_dual-8', 8.0, 1.0, -1, 49, 0, 0, 0, 0)
	if idBadge == nil then
		idBadge = CreateObject(GetHashKey('prop_fib_badge'), GetEntityCoords(playerPed), 1, 1, 1)
		AttachEntityToEntity(idBadge, playerPed, GetPedBoneIndex(playerPed, 58867), 0.0, 0.075, 0.0, 0.0, 0.0, 500.0, 1, 1, 0, 1, 0, 1)
	end
	Citizen.Wait(4000)
	ClearPedSecondaryTask(ped)
	ClearPedTasks(ped)
	DeleteEntity(idBadge)
	idBadge = nil
end

function GetCoordZ(x, y, initial)
	local groundCheckHeights = {initial+0, initial+1, initial+2, initial+3, initial+4, initial+5, initial+6, initial+7, initial+8, initial+9, initial+10}
	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)
		if foundGround then
			return z
		end
	end
	return initial
end

local tracked_entities = {
	{propModel =	"prop_roadcone01a", spawnName = "cone"},
	{propModel =	"prop_mp_barrier_01", spawnName = "cbarrier"},
	{propModel =	"prop_gazebo_02", spawnName = "gazebo"},
	{propModel =	"xm_prop_x17_bag_med_01a", spawnName = "medicBag"},
	{propModel =	"prop_air_lights_02a", spawnName = "bluelight"},
	{propModel =	"prop_air_lights_02b", spawnName = "redlight"},
	{propModel =	"prop_csi_1", spawnName = "evidence"},
	{propModel =	"prop_csi_2", spawnName = "evidence"},
	{propModel =	"prop_csi_3", spawnName = "evidence"},
	{propModel =	"prop_traffic_cones", spawnName = "cone"},
	{propModel =	"prop_worklight_01a", spawnName = "workLight"},
}
function isPropNetworkedAndTracked()
	for index,data in pairs(tracked_entities) do
		local object = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, GetHashKey(data.propModel), false)
		if DoesEntityExist(object) and NetworkGetEntityIsNetworked(object) then
			if ESX.Game.RequestNetworkControlOfEntity(object, true) then
				return true
			end
		end
	end
end

RegisterNetEvent('rpuk_playerMenu:deleteObject')
AddEventHandler('rpuk_playerMenu:deleteObject', function()
	for index,data in pairs(tracked_entities) do
		local object = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, GetHashKey(data.propModel), false)
		if DoesEntityExist(object) and NetworkGetEntityIsNetworked(object) then
			if ESX.Game.RequestNetworkControlOfEntity(object, true) then
				DeleteEntity(object)
				TriggerServerEvent('returnItem', data.spawnName)
			end
		end
	end
end)

RegisterNetEvent('rpuk_playerMenu:rappelDown')
AddEventHandler('rpuk_playerMenu:rappelDown', function()
	local ped = PlayerPedId()
	if IsPedInAnyHeli(ped) then
		TaskRappelFromHeli(ped, 1)
		TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = 'inform', text = 'Strap in boys' })
	end
end)
----------------------------------------

RegisterNetEvent('rpuk_playerMenu:helmet')
AddEventHandler('rpuk_playerMenu:helmet', function()
	local ped = PlayerPedId()
	if GetPedPropIndex(ped, 0) == 130 then
		startAnim("anim@mp_helmets@on_foot", "goggles_up")
		Citizen.Wait(600)
		if GetPedPropTextureIndex(ped, 0) == 0 then
			SetPedPropIndex(ped, 0, 129, 0, 2) -- Ear Guard up (NCA)
		elseif GetPedPropTextureIndex(ped, 0) == 1 then
			SetPedPropIndex(ped, 0, 129, 1, 2) -- Ear Guard up (SFO)
		elseif GetPedPropTextureIndex(ped, 0) == 2 then
			SetPedPropIndex(ped, 0, 129, 2, 2) -- Ear Guard up (CTSFO)
		end
	elseif GetPedPropIndex(ped, 0) == 129 then
		startAnim("anim@mp_helmets@on_foot", "goggles_down")
		Citizen.Wait(600)
		if GetPedPropTextureIndex(ped, 0) == 0 then
			SetPedPropIndex(ped, 0, 130, 0, 2) -- Ear Guard up (NCA)
		elseif GetPedPropTextureIndex(ped, 0) == 1 then
			SetPedPropIndex(ped, 0, 130, 1, 2) -- Ear Guard up (SFO)
		elseif GetPedPropTextureIndex(ped, 0) == 2 then
			SetPedPropIndex(ped, 0, 130, 2, 2) -- Ear Guard up (CTSFO)
		end
	elseif GetPedPropIndex(ped, 0) == 126 then
		startAnim("anim@mp_helmets@on_bike@dirt", "visor_down")
		Citizen.Wait(600)
		SetPedPropIndex(ped, 0, 125, 0, 2) -- G6 Helmet Down
	elseif GetPedPropIndex(ped, 0) == 125 then
		startAnim("anim@mp_helmets@on_bike@dirt", "visor_up")
		Citizen.Wait(600)
		SetPedPropIndex(ped, 0, 126, 0, 2) -- G6 Helmet Up
	end
end)

--- Clothing Menu

RegisterNetEvent('rpuk_playerMenu:hats')
AddEventHandler('rpuk_playerMenu:hats', function()
	if GetPedPropIndex(PlayerPedId(), 0) == -1 then -- not wearing any
		TriggerEvent('skinchanger:getSkin', function(oldData)
			if oldData.helmet_1 ~= -1 then
				startAnim("missfbi4", "takeoff_mask")
				SetPedPropIndex(PlayerPedId(), 0, oldData.helmet_1, oldData.helmet_2, 2)
			end
		end)
	else
		startAnim("missfbi4", "takeoff_mask")
		ClearPedProp(PlayerPedId(), 0)
	end
end)

RegisterNetEvent('rpuk_playerMenu:masks')
AddEventHandler('rpuk_playerMenu:masks', function()
	local playerPed = PlayerPedId()
	local currentMask = GetPedDrawableVariation(playerPed, 1)
	local playerModel = GetEntityModel(playerPed)
	
	TriggerEvent('skinchanger:getSkin', function(savedSkinData)
		if currentMask == 0 and savedSkinData.mask_1 > 0 then 
			startAnim("missfbi4", "takeoff_mask")
			Citizen.Wait(500)
			if playerModel == GetHashKey("mp_f_freemode_01") then
				SetPedHeadBlendData(playerPed, 45, 45, 45, savedSkinData.skin, savedSkinData.skin, 0, savedSkinData.sex * 1.0, savedSkinData.sex * 1.0, 0.0, false)
			else
				SetPedHeadBlendData(playerPed, 0, 0, 0, savedSkinData.skin, savedSkinData.skin, 0, savedSkinData.sex * 1.0, savedSkinData.sex * 1.0, 0.0, false)
			end
			SetPedComponentVariation(playerPed, 1, savedSkinData.mask_1, savedSkinData.mask_2, 2)
		elseif currentMask ~= 0 then
			startAnim("missfbi4", "takeoff_mask")
			Citizen.Wait(500)
			resetHead(playerPed, savedSkinData)
			SetPedComponentVariation(playerPed, 1, 0, 0, 2)
		end
	end)
end)

-- Copy paste from skinchanger
function resetHead(playerPed, characterData)
	SetPedHeadBlendData(playerPed, characterData['face'], characterData['face'], characterData['face'], characterData['skin'], characterData['skin'], characterData['skin'], 1.0, 1.0, 1.0, true)
	SetPedHairColor(playerPed, characterData['hair_color_1'], characterData['hair_color_2']) -- Hair Color
	SetPedHeadOverlay(playerPed, 3, math.floor(characterData['age_1']), (characterData['age_2']) + 0.0) -- Age + opacity
	SetPedHeadOverlay(playerPed, 1, math.floor(characterData['beard_1']), (characterData['beard_2']) + 0.0) -- Beard + opacity
	SetPedEyeColor(playerPed, characterData['eye_color'], 0, 1) -- Eyes color
	SetPedHeadOverlay(playerPed, 2, math.floor(characterData['eyebrows_1']), (characterData['eyebrows_2']) + 0.0) -- Eyebrows + opacity
	SetPedComponentVariation(playerPed, 2, characterData['hair_1'], 0, 2) -- Hair
	SetPedHeadOverlayColor(playerPed, 1, 1,	characterData['beard_3'], characterData['beard_4']) -- Beard Color
	SetPedHeadOverlayColor(playerPed, 2, 1,	characterData['eyebrows_3'], characterData['eyebrows_4']) -- Eyebrows Color
	SetPedHeadOverlay(playerPed, 5, characterData['blush_1'], (characterData['blush_2'] / 10) + 0.0) -- Blush + opacity
	SetPedHeadOverlayColor(playerPed, 5, 2,	characterData['blush_3']) -- Blush Color
	SetPedHeadOverlay(playerPed, 6, characterData['complexion_1'], (characterData['complexion_2'] / 10) + 0.0) -- Complexion + opacity
	SetPedHeadOverlay(playerPed, 7, characterData['sun_1'], (characterData['sun_2'] / 10) + 0.0) -- Sun Damage + opacity
	SetPedHeadOverlay(playerPed, 9, characterData['moles_1'], (characterData['moles_2'] / 10) + 0.0) -- Moles/Freckles + opacity
	SetPedHeadOverlay(playerPed, 10, characterData['chest_1'], (characterData['chest_2'] / 10) + 0.0) -- Chest Hair + opacity
	SetPedHeadOverlayColor(playerPed, 10, 1, characterData['chest_3']) -- Torso Color
	SetPedHeadOverlay(playerPed, 11, characterData['bodyb_1'], (characterData['bodyb_2'] / 10) + 0.0) -- Body Blemishes + opacity
	SetPedHeadOverlay(PlayerPedId(), 4, characterData['makeup_1'], characterData['makeup_2'])
	SetPedHeadOverlayColor(PlayerPedId(), 4, 2, characterData['makeup_3'], characterData['makeup_4'])
	SetPedHeadOverlay(PlayerPedId(), 8, characterData['lipstick_1'], characterData['lipstick_2'])
	SetPedHeadOverlayColor(PlayerPedId(), 8, 2, characterData['lipstick_3'], characterData['lipstick_4'])
end

RegisterNetEvent('rpuk_playerMenu:glasses')
AddEventHandler('rpuk_playerMenu:glasses', function()
	if GetPedPropIndex(PlayerPedId(), 1) == -1 then -- not wearing any
		TriggerEvent('skinchanger:getSkin', function(oldData)
			if oldData.glasses_1 ~= -1 then
				startAnim("clothingspecs", "try_glasses_positive_a")
				SetPedPropIndex(PlayerPedId(), 1, oldData.glasses_1, oldData.glasses_2, 2)
			end
		end)
	else
		startAnim("clothingspecs", "try_glasses_positive_a")
		ClearPedProp(PlayerPedId(), 1)
	end
end)


RegisterNetEvent('rpuk_playerMenu:bags')
AddEventHandler('rpuk_playerMenu:bags', function()
	local playerPedID = PlayerPedId()
	local playerPed = PlayerPedId()
	if GetPedDrawableVariation(playerPed, 5) == 0 then
		TriggerEvent('skinchanger:getSkin', function(oldData)
			SetPedComponentVariation(playerPed, 5, oldData.bags_1, oldData.bags_2, 2)
		end)
	else
		SetPedComponentVariation(playerPedID, 5, 0, 0, 2)
	end
end)

---- Placable Objects


RegisterNetEvent("rpuk_playerMenu:checkTargetPermit")
AddEventHandler("rpuk_playerMenu:checkTargetPermit", function()
	local closestPlayer, distance = ESX.Game.GetClosestPlayer()

	if closestPlayer ~= -1 and distance < 3.0 then
		TriggerServerEvent("rpuk_playerMenu:checkTarget", GetPlayerServerId(closestPlayer))
	else
		TriggerEvent('mythic_notify:client:SendAlert', { length = 5000, type = 'error', text = "There is no player near-by" })
	end
end)

RegisterNetEvent("rpuk_playerMenu:showPermits")
AddEventHandler("rpuk_playerMenu:showPermits", function()
	local scope = ESX.GetPlayersInRangeOfMe(5)

	TriggerServerEvent("rpuk_playerMenu:showPlayers", scope)
	if ESX.Player.GetJobName() == "police" then
		showIdAnim()
	else
		startAnim("mp_common", "givetake1_b")
	end
end)

RegisterCommand("c",function(source, args)
	if tostring(args[1]) == nil then
		return
	else
		if tostring(args[1]) ~= nil then
			local passed = tostring(args[1])

			if passed == 'hat' then
				if GetPedPropIndex(PlayerPedId(), 0) == -1 then -- not wearing any
					TriggerEvent('skinchanger:getSkin', function(oldData)
						if oldData.helmet_1 ~= -1 then
							startAnim("missfbi4", "takeoff_mask")
							SetPedPropIndex(PlayerPedId(), 0, oldData.helmet_1, oldData.helmet_2, 2)
						end
					end)
				else
					startAnim("missfbi4", "takeoff_mask")
					ClearPedProp(PlayerPedId(), 0)
				end
			elseif passed == "mask" then
				if GetPedDrawableVariation(PlayerPedId(), 1) == 0 then -- not wearing any
					TriggerEvent('skinchanger:getSkin', function(oldData)
						startAnim("missfbi4", "takeoff_mask")
						SetPedComponentVariation(PlayerPedId(), 1, oldData.mask_1, oldData.mask_2, 2)
					end)
				else
					startAnim("missfbi4", "takeoff_mask")
					SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 2)
				end
			elseif passed == "glasses" then
				if GetPedPropIndex(PlayerPedId(), 1) == -1 then -- not wearing any
					TriggerEvent('skinchanger:getSkin', function(oldData)
						if oldData.glasses_1 ~= -1 then
							startAnim("clothingspecs", "try_glasses_positive_a")
							SetPedPropIndex(PlayerPedId(), 1, oldData.glasses_1, oldData.glasses_2, 2)
						end
					end)
				else
					startAnim("clothingspecs", "try_glasses_positive_a")
					ClearPedProp(PlayerPedId(), 1)
				end
			end
		end
	end
end, false)

RegisterNetEvent('rpuk:policeType')
AddEventHandler('rpuk:policeType', function(type)
	local vehicle, distance = ESX.Game.GetClosestVehicle()
	local vehicleData = ESX.Game.GetVehicleProperties(vehicle)

	if type == "vehicleLookUp" then
		LookupVehicle()
	elseif type == "vehicle" and vehicle ~= 0 and vehicle ~= nil and distance < 5.0 then
		OpenVehicleInfosMenu(vehicleData)
	else
		TriggerEvent('mythic_notify:client:SendAlert', { type = 'error', text = 'You are not close enough' })
		return
	end
end)

function LookupVehicle()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'lookup_vehicle',
	{
		title = "Enter Registration Plate",
	}, function(data, menu)
		local length = string.len(data.value)
		if data.value == nil or length < 2 or length > 13 then
			TriggerEvent('mythic_notify:client:SendAlert', { type = 'error', text = 'Database Error' })
		else
			ESX.TriggerServerCallback('rpuk_wheel:getVehicleFromPlate', function(owner, found)
				if found then
					TriggerEvent('mythic_notify:client:SendAlert', { type = 'inform', length = 6000, text = 'Result Found - Vehicle Belongs To: '.. owner})
				else
					TriggerEvent('mythic_notify:client:SendAlert', { type = 'error', length = 6000, text = 'No Results Found' })
				end
			end, data.value)
			menu.close()
		end
	end, function(data, menu)
		menu.close()
	end)
end

function OpenVehicleInfosMenu(vehicleData)
	ESX.TriggerServerCallback('rpuk_wheel:getVehicleInfos', function(retrivedInfo)
		local elements = {{label = 'PLATE: '..retrivedInfo.plate}}

		if retrivedInfo.owner == nil then
			table.insert(elements, {label = 'Unknown Owner'})
		else
			table.insert(elements, {label = 'Vehicle is registered to: '.. retrivedInfo.owner})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
			title		= 'Vehicle Info',
			align		= 'top-left',
			elements = elements
		}, nil, function(data, menu)
			menu.close()
		end)
	end, vehicleData.plate)
end

RegisterNetEvent('rpuk:panicAlarmForJudge')
AddEventHandler('rpuk:panicAlarmForJudge', function()
	if ESX.Player.GetJobName() == "court" then
		TriggerServerEvent('rpuk_alerts:sNotification', {notiftype = "panic", officerName = true})
		TriggerEvent('mythic_notify:client:SendAlert', {length = 7500, type = 'inform', text = 'You have activated your Panic Alarm, find yourself a safe location the police will be with you soon!' })
	end
end)

-- Gas Mask
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if GetPedDrawableVariation(PlayerPedId(), 1) == 46 then
			SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, true, true, false)
		else
			SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, false, false, false)
		end

		if HasPedBeenDamagedByWeapon(PlayerPedId(), -1600701090, 0) then
			ClearEntityLastDamageEntity(PlayerPedId())
			TriggerEvent("rpuk_weather:isBlurry", true)
			SetTimecycleModifier("hud_def_blur")
			SetTimecycleModifierStrength(0.8)
		end
	end
end)
