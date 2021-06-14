AddEventHandler('esx_addons_gcphone:call', function(callData)
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local number = callData.number

	coords = {
		x = coords.x,
		y = coords.y,
		z = coords.z
	}

	SetNuiFocus(false, false)
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP8", "", "", "", "", "", 255)
    while (UpdateOnscreenKeyboard() == 0) do
        DisableAllControlActions(0)
        Wait(0)
    end
    if (GetOnscreenKeyboardResult()) then
		TriggerServerEvent('esx_addons_gcphone:startCall', number, GetOnscreenKeyboardResult(), coords, myPhoneNumber)
    end

	TooglePhone()
end)

Citizen.CreateThread(function()
	while not ESX.IsPlayerLoaded() do Citizen.Wait(1000) end -- wait for kashacter to choose char

	ESX.TriggerServerCallback('rpuk_keys:keyTable', function(_vehicleKeys)
		SendNUIMessage({event = 'assignVehicleKeys', vehicleKeys = _vehicleKeys})
	end, 'vehicle')

	Citizen.Wait(1000)
	SendNUIMessage({event = 'setSkills', skills = ESX.Player.GetStats()})
end)

RegisterNetEvent('rpuk_keys:assignKey')
AddEventHandler('rpuk_keys:assignKey', function(keyType, handle)
	if keyType == 'vehicle' then
		SendNUIMessage({event = 'assignVehicleKey', plate = handle})
	end
end)

RegisterNUICallback('giveVehicleKey', function(data, cb)
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

	if closestPlayer == -1 or closestDistance > 3 then
		ESX.ShowNotification('There is no player close enough to you')
	else
		TriggerServerEvent('rpuk_keys:give_key', 'vehicle', GetPlayerServerId(closestPlayer), data.plate.plate)
		ESX.ShowNotification('You have given keys for a vehicle')
	end

	cb()
end)

RegisterNUICallback('removeVehicleKey', function(data, cb)
	TriggerServerEvent('rpuk_keys:removeKey', 'vehicle', data.plate)
	cb()
end)

RegisterNetEvent('rpuk_keys:removeKey')
AddEventHandler('rpuk_keys:removeKey', function(key_table, handle)
	if key_table == "vehicle" then
		SendNUIMessage({event = 'removeKey', plate = handle})
	end
end)

RegisterNetEvent('esx:setStat')
AddEventHandler('esx:setStat', function(stat, value)
	SendNUIMessage({event = 'setSkill', skill = stat, value = value})
end)