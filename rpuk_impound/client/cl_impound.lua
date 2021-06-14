function getClosestImpound(coords)
	for k,v in ESX.Table.Sort(Config.impoundLocations, function(t, a, b)
		a = t[a]
		b = t[b]

		local distanceA = #(coords - a)
		local distanceB = #(coords - b)

		if distanceA < distanceB then
			return true
		elseif distanceB < distanceA then
			return false
		end
	end) do
		return k
	end
end

for k,v in pairs(Config.interactions) do
	for key, val in pairs(v.positions) do
		interactions["impound:"..k..":"..key] = createInteraction({
			id = "impound:"..k..":"..key,
			pos = val,
			text = v.text,
			whitelist = v.whitelisted,
			dist = val.dist,
			action = function()
				openMenu(val)
			end
		})
	end
end


function openMenu(interaction)
	local elements = {}
	table.insert(elements, {
		label = "View Personal Vehicles In Impound",
		value = "personalVehicles"
	})
	table.insert(elements, {
		label = "View Insurance",
		value = "insurance"
	})
	if isInList(ESX.Player.GetJobName(), Config.GovList) or (ESX.Player.GetJobName() == "court" and ESX.Player.GetJobGrade() >= 2) then
		table.insert(elements, {
			label = " ",
			value = nil
		})
		table.insert(elements, {
			label = "Search For Vehicle In Impound",
			value = "searchForReg"
		})
	end
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), "personalMenu",
	{
		title = '',
		css = "mechanic",
		align = "top-left",
		elements = elements
	}, function(data, menu)
		if data.current.value == "personalVehicles" then
			menu.close()
			openCivImpoundComputer(interaction)
		elseif data.current.value == "searchForReg" then
			menu.close()
			openGovImpoundComputer(interaction)
		elseif data.current.value == "insurance" then
			menu.close()
			openInsuranceComputer(interaction)
		else
			ESX.UI.Menu.CloseAll()
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)

end

function openInsuranceComputer(interaction)
	ESX.TriggerServerCallback("rpuk_impound:fetchOutStandingVehicles", function(result)
		local elements = {}
		if next(result) == nil then
			TriggerEvent('mythic_notify:client:SendAlert', { length = 4000, type = 'inform', text = "No Vehicles" })
			TriggerEvent('mythic_notify:client:SendAlert', { length = 7000, type = 'inform', text = 'Lost a vehicle and can’t see it here? Our technicians may still be recovering/repairing it, try again after a storm.' })
			return
		else
			for k,v in pairs(result) do
				table.insert(elements, {
					label = v.plate,
					value = k
				})
			end
		end
		ESX.UI.Menu.Open("default", GetCurrentResourceName(), "impound", {
		title = "",
		css = "mechanic",
		align = "top-left",
		elements = elements
		}, function(data2, menu2)
			ESX.UI.Menu.Open("default", GetCurrentResourceName(), "impound2", {
				title = '',
				css = "mechanic",
				align = "top-left",
				elements = {
					{
						label = "Price To Release Vehicle: £".. ESX.Math.GroupDigits(result[data2.current.value].price),
						value = nil
					},
					{
						label = "Pay To Release Vehicle",
						value = "retrieve"
					},
					{
						label = "Back To Plate Search",
						value = "back"
					},
				}
			}, function(data3, menu3)
				if data3.current.value == "retrieve" then
					ESX.UI.Menu.CloseAll()
					TriggerServerEvent("rpuk_impound:payForVehicleToBeReleased", result[data2.current.value], interaction)
				else
					ESX.UI.Menu.CloseAll()
				end
			end, function(data3, menu3)
				menu3.close()
			end)
		end, function(data2, menu2)
			menu2.close()
		end)
	end)
end

function openGovImpoundComputer(interaction)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'list',
	{
		title = "Enter Vehicle Reg",
	}, function(data, menu)
		menu.close()
		ESX.TriggerServerCallback("rpuk_impound:fetchImpoundedVehiclesByPlate", function(result)
			local elements = {}
			if next(result) == nil then
				TriggerEvent('mythic_notify:client:SendAlert', { length = 4000, type = 'inform', text = "Nothing matches this plate" })
				return
			else
				for k,v in pairs(result) do
					table.insert(elements, {
						label = v.formattedTime,
						value = k
					})
				end
			end

			ESX.UI.Menu.Open("default", GetCurrentResourceName(), "impound", {
			title = "",
			css = "mechanic",
			align = "top-left",
			elements = elements
			}, function(data2, menu2)
				ESX.UI.Menu.Open("default", GetCurrentResourceName(), "houseNumber2", {
					title = result[data2.current.value].plate,
					css = "",
					align = "top-left",
					elements = {
						{
							label = "Impounded By: "..result[data2.current.value].operator_name,
							value = nil
						},
						{
							label = "Reason: ".. result[data2.current.value].reason,
							value = nil
						},
						{
							label = "Price For Release Of Vehicle: £".. ESX.Math.GroupDigits(result[data2.current.value].price),
							value = nil
						},
						{
							label = "Remaining Time: ".. result[data2.current.value].remainingTime,
							value = nil
						},
						{
							label = " ",
							value = nil
						},
						{
							label = "Remove Vehicle From Impound",
							value = "remove"
						},

						{
							label = "Scrap Vehicle",
							value = "scrap"
						},
						-- {
						-- 	label = "Check Vehicle Inventory",
						-- 	value = "inventory"
						-- },
						{
							label = "Back To Plate Search",
							value = "back"
						},
					}
				}, function(data3, menu3)
					if data3.current.value == "back" then
						menu3.close()
					-- elseif data3.current.value == "inventory" then
					-- 	ESX.UI.Menu.CloseAll()
					-- 	Citizen.Wait(500)
					-- 	TriggerServerEvent("rpuk_trunk:openTrunk", result[data2.current.value].plate)
					elseif data3.current.value == "remove" then
						ESX.UI.Menu.CloseAll()
						TriggerServerEvent("rpuk_impound:sendVehicleToPreferredDropOffPoint", result[data2.current.value], interaction)
					elseif data3.current.value == "scrap" then
						if (ESX.Player.GetJobName() == "court" and ESX.Player.GetJobGrade() >= 2) then
							TriggerServerEvent("rpuk_impound:sendVehicleToBeDestroyed", result[data2.current.value], interaction)
						else
							TriggerEvent('mythic_notify:client:SendAlert', {length = 6000, type = 'error', text = 'You can not use this ability, contact a Senior Judge.' })
						end
						ESX.UI.Menu.CloseAll()
					end
				end, function(data3, menu3)
					menu3.close()
				end)
			end, function(data2, menu2)
				menu2.close()
			end)
		end, string.upper(data.value))
	end, function(data, menu)
		menu.close()
	end)
end




function openCivImpoundComputer(interaction)
	ESX.TriggerServerCallback("rpuk_impound:fetchImpoundedOwnedVehicles", function(result)
		local elements = {}
		if next(result) == nil then
			TriggerEvent('mythic_notify:client:SendAlert', { length = 4000, type = 'inform', text = "No Vehicles" })
			return
		else
			for k,v in pairs(result) do
				table.insert(elements, {
					label = v.plate,
					value = k
				})
			end
		end
		ESX.UI.Menu.Open("default", GetCurrentResourceName(), "impound", {
		title = "",
		css = "mechanic",
		align = "top-left",
		elements = elements
		}, function(data2, menu2)
			ESX.UI.Menu.Open("default", GetCurrentResourceName(), "houseNumber2", {
				title = result[data2.current.value].plate,
				css = "",
				align = "top-left",
				elements = {
					{
						label = "Impounded By: "..result[data2.current.value].operator_name,
						value = nil
					},
					{
						label = "Reason: ".. result[data2.current.value].reason,
						value = nil
					},
					{
						label = "Price To Release Vehicle: £".. ESX.Math.GroupDigits(result[data2.current.value].price),
						value = nil
					},
					{
						label = "Remaining Time: ".. result[data2.current.value].remainingTime,
						value = nil
					},
					{
						label = " ",
						value = nil
					},
					{
						label = "Release Vehicle",
						value = "release"
					},
					{
						label = "Back To Plate Search",
						value = "back"
					},
				}
			}, function(data3, menu3)
				if data3.current.value == "back" then
					menu3.close()
				elseif data3.current.value == "release" then
					if result[data2.current.value].remainingTime == "Ready For Release" then
						ESX.UI.Menu.CloseAll()
						TriggerServerEvent("rpuk_impound:payForVehicleToBeReleased", result[data2.current.value], interaction)
					else
						TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = 'inform', text = 'Vehicle is not ready to be released!' })
					end
				end
			end, function(data3, menu3)
				menu3.close()
			end)
		end, function(data2, menu2)
			menu2.close()
		end)
	end)
end


RegisterNetEvent("rpuk_impound:spawnVehicle")
AddEventHandler("rpuk_impound:spawnVehicle", function(data, vehicleInfoJson, interactionInfo)
	local vehicleData = json.decode(vehicleInfoJson)
	local spawnCoords = interactionInfo["spawnCoords"].coords
	local spawnHeading = interactionInfo["spawnCoords"].heading
	local vehicleType = "car"

	if (IsThisModelAHeli(vehicleData.model) or IsThisModelAPlane(vehicleData.model)) then
		vehicleType = "aircraft"
		TriggerServerEvent("rpuk_impound:releaseVehicleStateFromImpound", data, vehicleType)
		TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = 'inform', text = 'Vehicle will be found at LS Airport!' })
		return
	elseif IsThisModelABoat(vehicleData.model) then
		vehicleType = "boat"
		TriggerServerEvent("rpuk_impound:releaseVehicleStateFromImpound", data, vehicleType)
		TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = 'inform', text = 'Vehicle will be found at Tackle Boat Parking!' })
		return
	else
		if ESX.Game.IsSpawnPointClear(spawnCoords, 3.0) then
			ESX.Game.SpawnVehicle(vehicleData.model, spawnCoords, spawnHeading, function(vehicle)
				applyVehicleDamages(vehicleData.engineHealth, vehicleData.bodyHealth, vehicle)
				TriggerServerEvent("rpuk_trunk:loadTrunk", vehicleData.plate, GetVehicleClass(vehicle))
				TriggerServerEvent("rpuk_impound:releaseVehicleStateFromImpound", data, vehicleType)
				TriggerServerEvent("rpuk_impound:changeActivePlates", vehicleData.plate, true)
				indicatorMarker(vehicle, 8000)
			end, vehicleData, {
				giveKeys = true
			})
		else
			TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = 'inform', text = 'You need to clear the area for the vehicle to spawn!' })
		end
	end
end)

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


RegisterNetEvent("rpuk_impound:regVehicle")
AddEventHandler("rpuk_impound:regVehicle", function()
	local vehicle, distance = ESX.Game.GetClosestVehicle()
	if vehicle ~= 0 and vehicle ~= nil and distance < 5.0 then
		if ESX.Game.RequestNetworkControlOfEntity(vehicle, true) then
			local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
			if string.find(vehicleData.plate, " ") then
				if isInList(ESX.Player.GetJobName(), Config.GovList) then
					openImpoundMenu()
				else
					templateImpound(vehicle, vehicleData)
				end
			else
				TriggerEvent("mythic_progbar:client:progress", {
					name = "Impounding",
					duration = 20000,
					label = "Impounding Vehicle",
					useWhileDead = false,
					canCancel = true,
					controlDisables = {
						disableMovement = false,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
					},
					animation = {
						animDict = "amb@medic@standing@timeofdeath@base",
						anim = "base",
						flags = 49,
						task = nil,
					},
					prop = {
						model = "prop_notepad_01",
						bone = 60309,
						coords = { x = 0.0, y = 0.0, z = 0.0 },
						rotation = { x = 0.0, y = 0.0, z = 0.0 },
					}
					}, function(status)
					if not status then
						TriggerEvent('rpuk_impound:deleteVehicle', NetworkGetNetworkIdFromEntity(vehicle))
						TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = "inform", text = 'Vehicle has been impounded.' })
						TriggerServerEvent("rpuk_impound:paymentForImpound")
					elseif status then
						TriggerEvent('mythic_notify:client:SendAlert', { type = 'error', text = 'You have stopped impounding the vehicle' })
					end
				end)
			end
		end
	end
end)

function templateImpound(vehicle, vehicleData)
	TriggerEvent("mythic_progbar:client:progress", {
		name = "Impounding",
		duration = 20000,
		label = "Impounding Vehicle",
		useWhileDead = false,
		canCancel = true,
		controlDisables = {
			disableMovement = false,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		},
		animation = {
			animDict = "amb@medic@standing@timeofdeath@base",
			anim = "base",
			flags = 49,
			task = nil,
		},
		prop = {
			model = "prop_notepad_01",
			bone = 60309,
			coords = { x = 0.0, y = 0.0, z = 0.0 },
			rotation = { x = 0.0, y = 0.0, z = 0.0 },
		}
		}, function(status)
		if not status then
			TriggerServerEvent("rpuk_impound:sendVehicleToImpound", vehicleData, "Vehicle was impounded by a Gruppe Sechs", 5, 5000, "pound_police_innocence", "insurance")
			TriggerEvent('rpuk_impound:deleteVehicle', NetworkGetNetworkIdFromEntity(vehicle))
			TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = "inform", text = 'Vehicle has been impounded.' })
			TriggerServerEvent("rpuk_impound:paymentForImpound")
		elseif status then
			TriggerEvent('mythic_notify:client:SendAlert', { type = 'error', text = 'You have stopped impounding the vehicle' })
		end
	end)
end


RegisterNUICallback('impoundVehicle', function(data, cb)
	if isInList(ESX.Player.GetJobName(), Config.GovList) then
		local vehicle, distance = ESX.Game.GetClosestVehicle()
		if vehicle ~= 0 and vehicle ~= nil and distance < 5.0 then
			if ESX.Game.RequestNetworkControlOfEntity(vehicle, true) then
				if isInList(ESX.Player.GetJobName(), Config.GovList) then
					local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
					if string.find(vehicleData.plate, " ") then
						cb({result = true})
						TriggerEvent("mythic_progbar:client:progress", {
							name = "Impounding",
							duration = 20000,
							label = "Impounding Vehicle",
							useWhileDead = false,
							canCancel = true,
							controlDisables = {
								disableMovement = false,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "amb@medic@standing@timeofdeath@base",
								anim = "base",
								flags = 49,
								task = nil,
							},
							prop = {
								model = "prop_notepad_01",
								bone = 60309,
								coords = { x = 0.0, y = 0.0, z = 0.0 },
								rotation = { x = 0.0, y = 0.0, z = 0.0 },
							}
							}, function(status)
							if not status then
								if string.find(vehicleData.plate, " ") then -- If player Vehicle
									TriggerServerEvent("rpuk_impound:sendVehicleToImpound", vehicleData, data.reason, data.time, data.fee, getClosestImpound(GetEntityCoords(PlayerPedId())), "government" )
								end
								TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = "inform", text = 'Vehicle has been impounded.' })
								TriggerEvent('rpuk_impound:deleteVehicle', NetworkGetNetworkIdFromEntity(vehicle))
								TriggerServerEvent("rpuk_impound:paymentForImpound")
							elseif status then
								TriggerEvent('mythic_notify:client:SendAlert', { type = 'error', text = 'You have stopped impounding the vehicle' })
							end
						end)
					else
						cb({result = false})
					end
				else
					cb({result = false})
				end
			end
		end
	else
		cb({result = false})
	end
end)

RegisterNetEvent('rpuk_impound:deleteVehicle')
AddEventHandler ('rpuk_impound:deleteVehicle', function(netID)
	local entity = NetworkGetEntityFromNetworkId(netID)
	print("RPUK-IMPOUND: ATTEMPTING TO DELETE VEHICLE")
	if entity and DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
		SetEntityAsMissionEntity(entity)
		DeleteEntity(entity)
		print("RPUK-IMPOUND: VEHICLE SHOULD BE DELETED")
	end
end)









