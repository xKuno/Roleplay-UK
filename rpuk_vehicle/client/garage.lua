local inMenu, count_mechanic = false, 0

RegisterNetEvent('rpuk_jobs:count')
AddEventHandler('rpuk_jobs:count', function(xcount_pol, xcount_nhs, xcount_lost, xcount_mechanic)
	count_pol, count_nhs, count_lost, count_mechanic = xcount_pol, xcount_nhs, xcount_lost, xcount_mechanic
end)

Citizen.CreateThread(function()
	local blipsTable = {}
	blipsTable["parking"] = {} -- This is the sub category you can toggle on the GPS
	for k, v in pairs(ds.garages) do		
		if not v.job and not v.gang then
			table.insert(blipsTable["parking"], {text = "Public Parking", color = 84, id = 558, coords = v.access.location, scale = 0.4})
		end
	end
	TriggerEvent('rpuk_blips:addBlips', blipsTable)	
end)

local countdown = {}
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local canSleep = true
		local coords = GetEntityCoords(PlayerPedId())
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

		for index,data in pairs(ds.garages) do
			if (data.job == nil or data.job == ESX.Player.GetJobName()) and (data.gang == nil or (data.gang and ESX.Player.GetGangId() == data.gang)) then
				if vehicle and DoesEntityExist(vehicle) then
					for i=1, #data.savepoints do
						local distance = #(coords - data.savepoints[i].location)

						if distance < 7 then
							canSleep = false
							DrawMarker(data.savepoints[i].type, data.savepoints[i].location, data.savepoints[i].direction, 0, 0.0, 0.0, data.savepoints[i].size, 255, 255, 255, 50, false, false, 2, false, false, false, false)

							if distance < data.savepoints[i].size.y and data.savepoints[i].used == false then
								local textpos = vector3(data.savepoints[i].location.x, data.savepoints[i].location.y, data.savepoints[i].location.z + 2.0)
								local textformat = data.name .. "\nPress [~r~E~s~] To Park Vehicle Here"
								ESX.Game.Utils.DrawText3D(textpos, textformat, 1.0, 6)

								if IsControlJustReleased(0, 38) and countdown[vehicle] == nil and data.savepoints[i].used == false then
									storeVehicle(index, i, vehicle)
								end
							end
						end
					end
				else -- on foot
					local distance = #(coords - data.access.location)

					if distance < 10 then
						canSleep = false
						DrawMarker(data.access.type, data.access.location, data.access.direction, 0.0, 0.0, 0.0, data.access.size, 255, 255, 255, 100, false, false, 2, false, false, false, false)

						if distance < data.access.size.x then
							local textpos = vector3(data.access.location.x, data.access.location.y, data.access.location.z + 2.0)
							local textformat = data.name .. "\nPress [~r~E~s~] To Retrieve A Vehicle"
							ESX.Game.Utils.DrawText3D(textpos, textformat, 1.0, 6)

							if IsControlJustReleased(0, 38) and not inMenu then
								retrieveVehicle(index, data.vehicleType)
							end
						end
					end
				end
			end
		end


		if canSleep then
			Citizen.Wait(500)
		end
	end
end)

function storeVehicle(index, i, vehicle)
	if #GetActivePlayers() > 45 and ds.garages[index].timer > 15 then
		countdown[vehicle] = 15
	else
		countdown[vehicle] = ds.garages[index].timer
	end

	local textCoords = vector3(ds.garages[index].savepoints[i].location.x, ds.garages[index].savepoints[i].location.y, ds.garages[index].savepoints[i].location.z + 2.0)
	ds.garages[index].savepoints[i].used = true

	Citizen.CreateThread(function()
		while countdown[vehicle] > 0 do
			Citizen.Wait(1000)
			if countdown[vehicle] > 0 then
				countdown[vehicle] = countdown[vehicle] - 1
			end
		end
	end)

	while countdown[vehicle] > 0 do
		Citizen.Wait(0)
		local text = ('%s~n~Time Until Stored: %s'):format(ds.garages[index].name, countdown[vehicle])
		ESX.Game.Utils.DrawText3D(textCoords, text, 1.0, 6)
	end

	if #(GetEntityCoords(vehicle) - textCoords) < 10 then
		local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
		TriggerServerEvent('rpuk_garages:storevehicle', index, vehicleData)
		ESX.Game.DeleteVehicle(vehicle)
	else
		ESX.ShowAdvancedNotification('Garage & Car Parking', "Vehicle Storage Failed", "Vehicle was too far away from the parking space to store the vehicle.", 'CHAR_CARSITE', 0)
	end
	ds.garages[index].savepoints[i].used = false
	countdown[vehicle] = nil
end

function retrieveVehicle(index, vehicleType)
	inMenu = true
	local header, state
	local eventCall = 'rpuk_garage:retrievegarage'

	if string.find(index, "gang_") then
		eventCall = 'rpuk_garage:retrieveGangGarage'
	else
		state = 1
		header = ds.garages[index].header
	end

	ESX.TriggerServerCallback(eventCall, function(vehicles)
		local elements = {}
		local vehiclesInMap = getAllVehiclePlates()

		for k,v in ipairs(vehicles) do
			local vehicleProps = json.decode(v.vehicle)

			if IsModelInCdimage(vehicleProps.model) then
				local vehicleLabel = GetLabelText(GetDisplayNameFromVehicleModel(vehicleProps.model))
				if vehicleLabel == 'NULL' then vehicleLabel = GetDisplayNameFromVehicleModel(vehicleProps.model) end
				table.insert(elements, {
					label = ('%s <span style="color:cyan;">[%s]</span>'):format(vehicleLabel, v.plate),
					value = vehicleProps
				})
			else
				table.insert(elements, {
					label = '<span style="color:red;">Found Invalid Vehicle</span>',
					model = vehicleProps.model,
					plate = v.plate,
					error = true
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fnc_retrieveVehicle', {
			title = '',
			css = header,
			align = 'top-left',
			elements = elements
		}, function(data, menu)
			if data.current.error then
				local msg = ('<span style="font-weight: bold;">Invalid vehicle found!</span><br>This vehicle is missing from ' ..
				'the server files. Please make a bug report about it at our forum if none exist.<br><br>' ..
				'<span style="font-weight: bold;">Vehicle Model:</span> %s<br><span style="font-weight: bold;">' ..
				'Vehicle Plate:</span> %s'):format(data.current.model, data.current.plate)

				ESX.ShowNotification(msg, 20000, 'error', 'longnotif')
			elseif data.current.value then
				spawnVehicle(index, data.current.value)
			end
		end, function(data, menu)
			menu.close()
			inMenu = false
		end)
	end, state, index, vehicleType)
end

function getAllVehiclePlates()
	local vehicles = {}

	for entity in EnumerateVehicles() do
		local vehiclePlate = ESX.Math.Trim(GetVehicleNumberPlateText(entity))
		vehicles[vehiclePlate] = true
	end

	return vehicles
end

-- Function to decide where to return a claimed vehicle to
function getReturnLocation(vehicle, job)
	local fLocation = 'legionsquare_upper' -- Default location

	if IsThisModelAHeli(vehicle.model) or IsThisModelAPlane(vehicle.model) then -- First check for helicopters / planes
		if job == 'police' then -- Police Heli
			fLocation = 'vespucci_police_helipad'
		elseif job == 'ambulance' then -- Air Rescue Heli
			fLocation = 'pillbox_nhs_helipad'
		else -- other helis or planes
			fLocation = "ls_airport"
		end
	elseif IsThisModelABoat(vehicle.model) then
		fLocation = "boat_tackle_st"
	else -- Ground Vehicles
		if job == 'police' then
			fLocation = 'vespucci_police'
		elseif job == 'ambulance' then
			fLocation = 'pillbox_nhs'
		elseif job == 'nca' then
			fLocation = 'vespucci_nca'
		elseif job == 'gruppe6' then
			fLocation = 'g6_hq'
		end
	end

	return fLocation
end

function spawnVehicle(index, vehicleData)
	local found = false
	for i=1, #ds.garages[index].spawnpoints, 1 do
		local spawnCoords = vector3(ds.garages[index].spawnpoints[i].x, ds.garages[index].spawnpoints[i].y, ds.garages[index].spawnpoints[i].z)
		local spawnHeading = ds.garages[index].spawnpoints[i].w
		if ESX.Game.IsSpawnPointClear(spawnCoords, 3.0) then
			found = true
			ESX.Game.SpawnVehicle(vehicleData.model, spawnCoords, spawnHeading, function(vehicle)
				TriggerServerEvent("rpuk_impound:changeActivePlates", vehicleData.plate, true)
				applyVehicleDamages(vehicleData.engineHealth, vehicleData.bodyHealth, vehicle)
				TriggerServerEvent('rpuk_garages:vehiclestate', vehicleData.plate, index, 0)
				indicatorMarker(vehicle, 15000)
			end, vehicleData,{
				giveKeys = true, locked = true
			})
			ESX.UI.Menu.CloseAll()
			inMenu = false
			break
		end
	end
	if found then
		ESX.ShowAdvancedNotification('Garage & Car Parking', "Retrieved Vehicle", "", 'CHAR_CARSITE', 0)
	else
		ESX.ShowAdvancedNotification('Garage & Car Parking', "No Parking Spaces Available", "", 'CHAR_CARSITE', 0)
	end
end

function indicatorMarker(entity, time)
	local vCoords = GetEntityCoords(entity)
	local height = math.ceil(GetEntityHeightAboveGround(entity)) * 2.0
	local coords = vector3(vCoords.x, vCoords.y, vCoords.z + height)
	local timer = time
	while timer > 0 do
		Citizen.Wait(0)
		timer = timer - 10
		DrawMarker(0, coords, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 0.5, 116, 123,240, 100, true, true, 2, false, false, false, false)
	end
end

function applyVehicleDamages(engineHealth, bodyHealth, vehicle)
	if ESX.Game.RequestNetworkControlOfEntity(vehicle, true) then
		local smashWindows = false
		local damageOutside = false
		local damageOutside2 = false
		local engine = engineHealth + 0.0
		local body = bodyHealth + 0.0
		if engine < 200.0 then
			engine = 200.0
		end

		if body < 150.0 then
			body = 150.0
		end
		if body < 950.0 then
			smashWindows = true
		end

		if body < 920.0 then
			damageOutside = true
		end

		if body < 920.0 then
			damageOutside2 = true
		end

		Citizen.Wait(100)

		SetVehicleEngineHealth(vehicle, engine)
		if smashWindows then
			SmashVehicleWindow(vehicle, 0)
			SmashVehicleWindow(vehicle, 1)
			SmashVehicleWindow(vehicle, 2)
			SmashVehicleWindow(vehicle, 3)
			SmashVehicleWindow(vehicle, 4)
		end
		if damageOutside then
			SetVehicleDoorBroken(vehicle, 1, true)
			SetVehicleDoorBroken(vehicle, 6, true)
			SetVehicleDoorBroken(vehicle, 4, true)
		end
		if damageOutside2 then
			SetVehicleTyreBurst(vehicle, 1, false, 990.0)
			SetVehicleTyreBurst(vehicle, 2, false, 990.0)
			SetVehicleTyreBurst(vehicle, 3, false, 990.0)
			SetVehicleTyreBurst(vehicle, 4, false, 990.0)
		end
		if body < 1000 then
			SetVehicleBodyHealth(vehicle, 985.0)
		end
	end
end