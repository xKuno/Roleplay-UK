job = ESX.Player.GetJob()
interactions = {}
activeInteractions = {}

--debug only
-- RegisterCommand('doorteleport', function(playerId, args, rawCommand)
-- 	for k, v in pairs(Config.DoorList) do
		-- if v.id == tostring(args[1]) then
		-- 	SetEntityCoords(PlayerPedId(), v.textCoords.x, v.textCoords.y, v.textCoords.z)
		-- end
-- 	end
-- end)

-- RegisterCommand('getalldoorsinrange', function(playerId, args, rawCommand)
-- 	TriggerServerEvent('rpuk:debug', DoorSystemGetSize())
-- 	TriggerServerEvent('rpuk:debug', activeInteractions)
-- end)

RegisterNetEvent('rpuk_doors:updateDoor')
RegisterNetEvent('rpuk_doors:advancepick')
RegisterNetEvent('esx:playerLoaded')
RegisterNetEvent('esx:setJob')

Citizen.CreateThread(function()
	ESX.TriggerServerCallback("rpuk_doors:getAllDoors", function(doors)
		for k,v in pairs(doors) do
			interactions[v.id] = {
				text = "",
				closureDist = v.closureDist,
				displayDist = v.distance,
				pos = v.textCoords,
				doorCoords = (vector3(v.textCoords.x, v.textCoords.y, v.textCoords.z)),
				id = v.id,
				positionForDoorText = v.positionForDoorText,
				textOnDoor = v.textOnDoor,
				outsideAccessOnly = v.outsideAccessOnly,
				refresh = false,
				background = false,
				data = v
			}
		end
	end)
end)

function lockpickOption(id, requiredPoliceOnDuty)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), "rpuk_doors",
	{
		css = "interaction",
		align = "top-left",
		elements = {
			{
				label = "Lockpick",
				value = "lockpick"
			},
			{
				label = "Advanced lockpick",
				value = "advanced_lockpick"
			},
			{
				label = "Drill",
				value = "drill"
			}
		}
	}, function(data, menu)
		TriggerServerEvent("rpuk_doors:pick", id, data.current.value, requiredPoliceOnDuty)
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function loadAnimDict( dict )
	while ( not HasAnimDictLoaded( dict ) ) do
			RequestAnimDict( dict )
			Citizen.Wait( 5 )
	end
end

function resetAnim()
	local player = GetPlayerPed( -1 )
	ClearPedSecondaryTask(player)
end

function clearAnim()
	TriggerEvent("AnimSet:Set")
end

function crackingsafeanim(animType)
	local player = GetPlayerPed( -1 )
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
			loadAnimDict( "mini@safe_cracking" )
		if animType == 1 then
			if IsEntityPlayingAnim(player, "mini@safe_cracking", "dial_turn_anti_fast_1", 3) then
				--ClearPedSecondaryTask(player)
			else
				TaskPlayAnim(player, "mini@safe_cracking", "dial_turn_anti_fast_1", 8.0, -8, -1, 49, 0, 0, 0, 0)
			end
		end
			if animType == 2 then
				TaskPlayAnim( player, "mini@safe_cracking", animsIdle[math.floor(math.ceil(4))], 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			end
			if animType == 3 then
				TaskPlayAnim( player, "mini@safe_cracking", animsSucceed[math.floor(math.ceil(4))], 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
		end
	end
end

AddEventHandler('esx:playerLoaded', function(playerData)
	job = playerData.job
	while IsPedStill(PlayerPedId()) and not IsPedInAnyVehicle(PlayerPedId()) do Citizen.Wait(0) end
	for k,v in pairs(activeInteractions) do
		interactions[k].refresh = true
	end
end)

AddEventHandler('esx:setJob', function(data)
	job = data
	for k,v in pairs(activeInteractions) do
		interactions[k].refresh = true
	end
end)

function getDistance(coords1, coords2)
	if coords1.z-1.5 <= coords2.z then
		return Vdist2(coords1.x, coords1.y, coords1.z, coords2.x, coords2.y, coords2.z)
	else
		return 9999999999
	end
end

function Draw3DText(x,y,z, text, background)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())

	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	if background ~= false then
		local factor = (string.len(text)) / 370
		DrawRect(_x,_y+0.0125, 0.02+ factor, 0.05, 110, 110, 110, 75)
	end
end

function closestInteraction()
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
	local closestId = nil
	local closestDist = 9999999999999
	for k,v in pairs(interactions) do
		local dist = getDistance(coords, v.pos)
		if dist < closestDist then
			closestId = k
			closestDist = dist
		end
	end

	return closestId
end

Citizen.CreateThread(function()
	while true do
		Wait(250)
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		for k,v in pairs(interactions) do
			if activeInteractions[v.id] == nil and (#(v.doorCoords - coords) < v.closureDist) and interactions[k] ~= nil then
				activeInteractions[v.id] = true
				closeToInteraction(k, v)
			end
		end
	end
end)

function closeToInteraction(k, v)
	Citizen.CreateThread(function()
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		local door = v.data

			for key,val in pairs(v.data.doors) do
				local doorHash = k.."-"..key
				AddDoorToSystem(doorHash, val.objHash, val.objCoords.x, val.objCoords.y, val.objCoords.z, false, false, false)
				if door.doorType == "normalDoor" then
					if door.locked then
						DoorSystemSetDoorState(doorHash, 1, false, false)
						DoorSystemSetDoorState(doorHash, 4, false, false)
					else
						DoorSystemSetDoorState(doorHash, 0, false, false)
					end
				elseif door.doorType == "slidingDoor" then
					if door.locked then
						DoorSystemSetDoorState(doorHash, 1, false, false)
						DoorSystemSetAutomaticDistance(doorHash, 0.0, false, false)
					else
						DoorSystemSetDoorState(doorHash, 0, false, false)
						DoorSystemSetAutomaticDistance(doorHash, door.autoDoorRange, false, false)
					end
				end
			end
			interactions[k].text = ""
			if door.authorizedJobs == nil and door.unAuthorized == nil then
				if job.name == "staff" then
					TriggerServerEvent('rpuk_doors:toggleDoor', door.id)
					TriggerEvent('dooranim')
				elseif canRepair(door.allowedToRepairDoor) and not door.locked then
					interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.repair
				elseif door.lockpick and job.name ~= "police" and door.locked and not door.ziptied then
					interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.lockpick
				elseif door.ziptie and not door.locked and not door.ziptied and job.name ~= "police" then
					interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.ziptie
				elseif door.ziptie and door.locked and door.ziptied and job.name ~= "police" then
					interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.ziptied
				elseif door.hackable and job.name ~= "police" and door.locked then
					interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.hackable
				elseif door.breachable and job.name == "police" and door.locked then
					interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.breach
				else
					interactions[k].text = door.textIfUnAuthorized
				end
			elseif door.authorizedJobs ~= nil then
				if (isAuthorized(job, door.authorizedJobs) and not door.ziptied) or job.name == "staff" then
					interactions[k].text = door.textIfAuthorized
				else
					if canRepair(door.allowedToRepairDoor) and not door.locked then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.repair
					elseif door.lockpick and job.name ~= "police" and door.locked and not door.ziptied then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.lockpick
					elseif door.ziptie and not door.locked and not door.ziptied and job.name ~= "police" then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.ziptie
					elseif door.ziptie and door.locked and door.ziptied and job.name ~= "police" then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.ziptied
					elseif door.hackable and job.name ~= "police" and door.locked then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.hackable
					elseif door.breachable and job.name == "police" and door.locked then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.breach
					else
						interactions[k].text = door.textIfUnAuthorized
					end
				end
			else
				if isUnauthorized(job, door.unAuthorized) then
					if canRepair(door.allowedToRepairDoor) and not door.locked then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.repair
					elseif door.lockpick and job.name ~= "police" and door.locked and not door.ziptied then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.lockpick
					elseif door.ziptie and not door.locked and not v.ziptied and job.name ~= "police" then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.ziptie

					elseif door.ziptie and door.locked and door.ziptied and job.name ~= "police" then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.ziptied

					elseif door.hackable and job.name ~= "police" and door.locked then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.hackable

					elseif door.breachable and job.name == "police" and door.locked then
						interactions[k].text = door.textIfUnAuthorized .. "\n" .. Config.text.breach

					else
						interactions[k].text = door.textIfUnAuthorized
					end
				else
					interactions[k].text = door.textIfAuthorized
				end
			end

			-- The action taken when E is pressed on a door
			interactions[k].action = function()
				if door.authorizedJobs == nil and door.unAuthorized == nil then
					if job.name == "staff" then
						TriggerServerEvent('rpuk_doors:toggleDoor', door.id)
						TriggerEvent('dooranim')
					elseif canRepair(door.allowedToRepairDoor) and not door.locked then
						TriggerServerEvent("rpuk_doors:repairDoor", door.id)
					elseif door.lockpick and job.name ~= "police" and door.locked and not door.ziptied then
						lockpickOption(door.id, door.requiredPoliceOnDuty)
					elseif door.ziptie and not door.locked and not door.ziptied and job.name ~= "police" then
						TriggerServerEvent("rpuk_doors:ziptie", door.id)
					elseif door.ziptie and door.locked and door.ziptied and job.name ~= "police" then
						TriggerServerEvent("rpuk_doors:unZiptie", door.id)
					elseif door.hackable and job.name ~= "police" and door.locked then
						TriggerServerEvent('rpuk_doors:hack', door.id)
					elseif door.breachable and job.name == "police" and door.locked then
						TriggerServerEvent("rpuk_doors:breach", door.id)
					end
				elseif door.authorizedJobs ~= nil then
					if (isAuthorized(job, door.authorizedJobs) and not door.ziptied) or job.name == "staff" then
						TriggerServerEvent('rpuk_doors:toggleDoor', door.id)
						TriggerEvent('dooranim')
					else
						if canRepair(door.allowedToRepairDoor) and not door.locked then
							TriggerServerEvent("rpuk_doors:repairDoor", door.id)
						elseif door.lockpick and job.name ~= "police" and door.locked and not door.ziptied then
							lockpickOption(door.id, door.requiredPoliceOnDuty)
						elseif door.ziptie and not door.locked and not door.ziptied and job.name ~= "police" then
							TriggerServerEvent("rpuk_doors:ziptie", door.id)
						elseif door.ziptie and door.locked and door.ziptied and job.name ~= "police" then
							TriggerServerEvent("rpuk_doors:unZiptie", door.id)
						elseif door.hackable and job.name ~= "police" and door.locked then
							TriggerServerEvent('rpuk_doors:hack', door.id)
						elseif door.breachable and job.name == "police" and door.locked then
							TriggerServerEvent("rpuk_doors:breach", door.id)
						end
					end
				else
					if isUnauthorized(job, door.unAuthorized) then
						if canRepair(door.allowedToRepairDoor) and not door.locked then
							TriggerServerEvent("rpuk_doors:repairDoor", door.id)
						elseif door.lockpick and job.name ~= "police" and door.locked and not door.ziptied then
							lockpickOption(door.id, door.requiredPoliceOnDuty)
						elseif door.ziptie and not door.locked and not door.ziptied and job.name ~= "police" then
							TriggerServerEvent("rpuk_doors:ziptie", door.id)
						elseif door.ziptie and door.locked and door.ziptied and job.name ~= "police" then
							TriggerServerEvent("rpuk_doors:unZiptie", door.id)
						elseif door.hackable and job.name ~= "police" and door.locked then
							TriggerServerEvent('rpuk_doors:hack', door.id)
						elseif door.breachable and job.name == "police" and door.locked then
							TriggerServerEvent("rpuk_doors:breach", door.id)
						end
					else
						TriggerServerEvent('rpuk_doors:toggleDoor', door.id)
						TriggerEvent('dooranim')
					end
				end
			end

		while (#(v.doorCoords - coords) < v.closureDist) and not interactions[k].refresh do
			Citizen.Wait(0)
			ped = PlayerPedId()
			coords = GetEntityCoords(ped)
			if getDistance(coords, v.pos) < v.displayDist then -- Coords On Door Text
				if v.textOnDoor then -- Coors Stuck On Door position
					local doorObj = GetClosestObjectOfType(coords, 5.0, door.doors[1].objHash, false)
					local doorOffset = GetOffsetFromEntityInWorldCoords(doorObj, v.positionForDoorText.offsetX, v.positionForDoorText.offsetY, v.positionForDoorText.offsetZ)
					if v.outsideAccessOnly and GetInteriorFromEntity(ped) == 0 then
						Draw3DText(doorOffset.x, doorOffset.y, doorOffset.z, interactions[k].text, v.background)
					elseif not v.outsideAccessOnly then
						Draw3DText(doorOffset.x, doorOffset.y, doorOffset.z, interactions[k].text, v.background)
					end
				else -- Coords set by Config
					if v.outsideAccessOnly and GetInteriorFromEntity(ped) == 0 then
						Draw3DText(v.pos.x, v.pos.y, v.pos.z, interactions[k].text, v.background)
					elseif not v.outsideAccessOnly then
						Draw3DText(v.pos.x, v.pos.y, v.pos.z, interactions[k].text, v.background)
					end
				end
				if IsControlJustReleased(0, 38) and v.action ~= nil and v.id == closestInteraction() then
					interactions[k].action()
					if door.doorType == "slidingDoor" then
						TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 8, "granted", 0.3, GetEntityCoords(PlayerPedId()), ESX.GetPlayersInRangeOfMe(300))
					end
				end
			end
		end
		for key,_ in pairs(v.data.doors) do
			RemoveDoorFromSystem(k.."-"..key)
		end
		v.refresh = false
		activeInteractions[v.id] = nil
	end)
end

function isAuthorized(rank, list)
	for _,v in pairs(list) do
		if rank.name == v.name and rank.grade >= v.rank then
			if v.specUnit[1] == nil then
				return true
			end
			-- for key,val in pairs(v.specUnit) do
			-- 	return true
			-- end
			return false
		end
		if v.type == "gang" then
			if ESX.Player.GetGangData().gang_id == v.name then
				return true
			end
		elseif v.type == "civJob" then
			if ESX.Player.GetCivJob()[v.name] then
				if ESX.Player.GetCivJob()[v.name] >= v.rank then
					return true
				end
			end
		end
	end

	return false
end

function isUnauthorized(rank, list)
	for k,v in pairs(list) do
		if rank.name == v.name then
			return true
		end
	end
	return false
end

function canRepair(list)
	for k,v in pairs(list) do
		if job.name == v then
			return true
		end
	end
	return false
end



AddEventHandler('rpuk_doors:updateDoor', function(id, update, options)
	if interactions[id] then
		if options then
			for k,v in pairs(options) do
				interactions[id].data[k] = v
			end
			interactions[id].refresh = true
			Citizen.Wait(Config.LockTimer)
		end
		for k,v in pairs(update) do
			interactions[id].data[k] = v
		end
		interactions[id].refresh = true
	end
end)

