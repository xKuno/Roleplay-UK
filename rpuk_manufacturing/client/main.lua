isManufacturing = false
local isMenuOpen = false
local started = false

RegisterNetEvent("esx:setJob")
RegisterNetEvent("rpuk_manufacturing:manufactureItem")

function onReady()
	if started then return end
	started = true

	Citizen.CreateThread(function()
		Citizen.Wait(1000)
		for k,v in pairs(config.locations) do
			if (isInList(ESX.Player.GetJobName(), v.requiredJob)) and (not isInList(ESX.Player.GetJobName(), v.unAuthorizedJob)) then
				for key, val in pairs(v.positions) do
					if v.hasStorage then
						interactions[k .. "_" .. key] = createInteraction({
							id = k .. "_" .. key,
							pos = val,
							text = v.text .. "\nPress [R] to open storage",
							action = function()
								if not isManufacturing then
									TriggerServerEvent("rpuk_manufacturing:openManufacturing", k, k .. "_" .. key, key)
								end
							end,
							secondaryInteractionKey = "R",
							secondaryAction = function()
								TriggerServerEvent("rpuk_manufacturing:openStorage", k, key)
							end
						})
					else
						interactions[k .. "_" .. key] = createInteraction({
							id = k .. "_" .. key,
							pos = val,
							text = v.text,
							action = function()
								if not isManufacturing then
									TriggerServerEvent("rpuk_manufacturing:openManufacturing", k, k .. "_" .. key, key)
								end
							end,
						})
					end
				end
			end
		end
	end)
end

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", onReady)

AddEventHandler('onResourceStart', function(resource)
	if resource ~= GetCurrentResourceName() then return end

	onReady()
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() and isMenuOpen then
		SetNuiFocus(false)
	end
end)

RegisterNUICallback('onCloseMenu', function()
	isMenuOpen = false
	TriggerEvent("rpuk_manufacturing:toggleAnim")
	SetNuiFocus(false)
end)

AddEventHandler("esx:setJob", function(job)
	for k,_ in pairs(interactions) do
		interactions[k] = nil
	end

	for k,v in pairs(config.locations) do
		if (isInList(ESX.Player.GetJobName(), v.requiredJob)) and (not isInList(ESX.Player.GetJobName(), v.unAuthorizedJob)) then
			for key, val in pairs(v.positions) do
				if v.hasStorage then
					interactions[k .. "_" .. key] = createInteraction({
						id = k .. "_" .. key,
						pos = val,
						text = v.text .. "\nPress [R] to open storage",
						action = function()
							if not isManufacturing then
								TriggerServerEvent("rpuk_manufacturing:openManufacturing", k, k .. "_" .. key, key)
							end
						end,
						secondaryInteractionKey = "R",
						secondaryAction = function()
							TriggerServerEvent("rpuk_manufacturing:openStorage", k, key)
						end
					})
				else
					interactions[k .. "_" .. key] = createInteraction({
						id = k .. "_" .. key,
						pos = val,
						text = v.text,
						action = function()
							if not isManufacturing then
								TriggerServerEvent("rpuk_manufacturing:openManufacturing", k, k .. "_" .. key, key)
							end
						end,
					})
				end
			end
		end
	end
end)

AddEventHandler("rpuk_manufacturing:manufactureItem", function(data, name, amount, time, id, positionId)
	isManufacturing = true
	TriggerEvent("rpuk_inventory:closeInventory")

	Citizen.CreateThread(function()
		if data.interaction ~= nil then
			while activeInteractions[data.interaction] ~= nil and isManufacturing do
				Citizen.Wait(500)
			end
			if isManufacturing then
				TriggerEvent("mythic_progbar:client:cancel")
				isManufacturing = false
			end
		end
	end)

	TriggerEvent('mythic_progbar:client:progress', {
		name = "startManufacturing",
		duration = time,
		label = data.text,
		useWhileDead = false,
		canCancel = true,
		controlDisables = (data.controlDisables == nil and {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = false,
		} or data.controlDisables),
		animation = data.animation,
		prop = data.prop,
		}, function(status)
			isManufacturing = false
			if not status then
				TriggerServerEvent("rpuk_manufacturing:doneManufacturing", name, amount, data.type, id, positionId)
			end
		end
	)
end)

RegisterNetEvent('rpuk_manufacturing:openBlueprint')
AddEventHandler('rpuk_manufacturing:openBlueprint', function(item)
	TriggerEvent('rpuk_inventory:closeInventory')
	SetNuiFocus(true, true)
	isMenuOpen = true
	TriggerEvent("rpuk_manufacturing:toggleAnim", true)
	SendNUIMessage({
		action = "show",
		item = item,
	})
end)

local mapModel = "prop_blue_print"
local animDict = "amb@world_human_tourist_map@male@base"
local animName = "base"
local net = nil

RegisterNetEvent("rpuk_manufacturing:toggleAnim")
AddEventHandler("rpuk_manufacturing:toggleAnim", function(state)
	if state then
		RequestModel(GetHashKey(mapModel))
		while not HasModelLoaded(GetHashKey(mapModel)) do
			Citizen.Wait(100)
		end
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(100)
		end
		local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
		local blueprint = CreateObject(GetHashKey(mapModel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
		Citizen.Wait(200)
		local netid = ObjToNet(blueprint)
		SetNetworkIdExistsOnAllMachines(netid, true)
		NetworkSetNetworkIdDynamic(netid, true)
		SetNetworkIdCanMigrate(netid, false)
		AttachEntityToEntity(blueprint, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
		TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
		TaskPlayAnim(GetPlayerPed(PlayerId()), animDict, animName, 1.0, -1, -1, 50, 0, 0, 0, 0)
		net = netid
	else
		ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
		DetachEntity(NetToObj(net), 1, 1)
		DeleteEntity(NetToObj(net))
		net = nil
	end
end)