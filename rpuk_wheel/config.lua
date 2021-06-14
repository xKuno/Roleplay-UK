allowedEvents = {}
local Locations = {{name="Doctor", id=0, r=40.0, x = -180.69, y = 411.34, z = 110.77}}

local listOfVehicleClassesWithoutDoors = {
	[8] = true, -- Motorcycles
	[13] = true, -- Cycles
	[14] = true, -- Boats
	[21] = true -- Trains
}

function generateListOfAllowedEvents()
	for k,v in pairs(rootMenuConfig) do
		if v.functionName then
			allowedEvents[v.functionName] = true
		end
	end

	for k,v in pairs(newSubMenus) do
		allowedEvents[v.functionName] = true
	end
end

function ReviveLocation()
	local ped = PlayerPedId()
	local pedLocation = GetEntityCoords(ped, 0)
	for _, item in pairs(Locations) do
		local distance = GetDistanceBetweenCoords(item.x, item.y, item.z,  pedLocation["x"], pedLocation["y"], pedLocation["z"], true)
		if distance <= item.r then
			return true
		end
	end
end

function isDoorVehiclePedIsInOkay(doorId)
	local vehicleHandle, distance = ESX.Game.GetClosestVehicle()

	if vehicleHandle or (vehicle and distance < 5) and DoesVehicleHaveDoor(vehicleHandle, doorId) and not listOfVehicleClassesWithoutDoors[GetVehicleClass(vehicleHandle)] then
		if IsVehicleDoorDamaged(vehicleHandle, doorId) then
			return false
		else
			return true
		end
	else
		return false
	end
end

function doesVehicleSeatExistAndIsItAvailable(seatIndex, vehicleHandle)
	if not vehicleHandle then
		vehicleHandle = GetVehiclePedIsIn(PlayerPedId(), false)
	end

	if vehicleHandle then
		local maxNumberOfPassangers = GetVehicleMaxNumberOfPassengers(vehicleHandle)

		if maxNumberOfPassangers > 0 then
			if maxNumberOfPassangers - 1 >= seatIndex and GetPedInVehicleSeat(vehicleHandle, seatIndex) == 0 then
				return true
			else
				return false
			end
		else
			return false
		end
	else
		return false
	end
end


function govVehicleList(job, vehicle)
	for k, v in pairs(VehicleList.AssignedVehicles[job]) do
		if GetHashKey(v.model) == vehicle then
			return true
		end
	end
end

function hasVehicleGotWeaponSafe(vehicle)
	for k, v in pairs(VehicleList.AssignedVehicles["police"]) do
		if GetHashKey(v.model) == vehicle then
			if v.hasWeaponSafe then
				return true
			end
		end
	end
end

function anim_state(player)
	local ped = GetPlayerPed(player)
	local anim_data = {}
	anim_data[1] = IsEntityPlayingAnim(ped, "random@mugging3", "handsup_standing_base", 3) -- Surrender Standing Up Anim
	anim_data[2] = IsEntityPlayingAnim(ped, "mp_arresting", "idle", 3) -- Restrain Anim
	anim_data[3] = IsEntityPlayingAnim(ped, "random@arrests@busted", "idle_a", 3)
	anim_data[4] = IsEntityPlayingAnim(ped, "anim@move_m@prisoner_cuffed", "idle", 3) -- Ziptie Anim
	anim_data[5] = IsEntityPlayingAnim(ped, "dead", "dead_a", 3) -- Sedate Anim
	anim_data[6] = IsEntityPlayingAnim(ped, "misslamar1dead_body", "dead_idle", 3) or IsEntityPlayingAnim(ped, "switch@trevor@under_pier", "death_loop_ped", 3) -- Dead Anim
	--anim_data[7] = IsEntityPlayingAnim(ped, "anim@gangops@morgue@table@", "ko_front", 3) -- InBed Anim
	anim_data[7] = IsEntityPlayingAnim(ped, "dead", "dead_b", 3) or IsEntityPlayingAnim(ped, "dead", "dead_c", 3) or IsEntityPlayingAnim(ped, "dead", "dead_d", 3) or IsEntityPlayingAnim(ped, "dead", "dead_f", 3) or IsEntityPlayingAnim(ped, "dead", "dead_g", 3) or IsEntityPlayingAnim(ped, "dead", "dead_h", 3) 	-- Dead Anim (in hospital)

	return anim_data
end

function isInList(val, list)
	for k,v in pairs(list) do
		if val == v then
			return true
		end
	end
	return false
end


rootMenuConfig =  {
------------------------------------------------------------------------------------------------------------------------

-- Civ Interaction

------------------------------------------------------------------------------------------------------------------------

	{
		id = "civ-interactions",
		displayName = "Interactions",
		icon = "#globe-europe",
		enableMenu = function()
			local ped = PlayerPedId()
			if not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
		subMenus = {
			--- Polyzones
			"job:signin", "job:signout", "job:LockerRoom", "job:Armory", "job:Attachments", "job:VehicleRental", "job:VehicleDelete", "job:Management", "job:ViewFund", "job:FundManagement",
			"job:evidencelab", "job:evidenceArchive", "prison:lockDownAlarm",
			"prison:collectEquipment", "prison:collectClothes", "prison:checkComputer", "prison:checkPhone", "prison:searchPoints", "prison:cleanTable", "prison:cleanDishes", "prison:checkStock",
			"metalDetector:online", "metalDetector:offline", "speedCamera:offline", "speedCamera:online", "speedCamera:cutwires",
			"civMenu:openWeaponSafe",
			-------------------------------------------------
			---Coathanger
			"civMenu:coatHanger",
			-------------------------------------------------
			--- Civ Flip
			"civ:flipvehicle",
			-------------------------------------------------
			--- Civ/Police Options
			"civMenu:carry","civMenu:cuff", "civMenu:escort", "civMenu:checkLicences", "civMenu:checkinventory","civMenu:jailPlayer",
			"civMenu:ziptie", "civMenu:pickcuffs", "civMenu:removeZiptie", "civMenu:blindfoldOn", "civMenu:blindfoldOff",
			"civMenu:trafficMan", "civMenu:checkFingerPrint", "civMenu:addFingerPrintToDB",
			"civMenu:impound", "civMenu:forceInToVehicle", "civMenu:vehicleRegisterList", "civMenu:vehiclePNC", "civMenu:grabClothes",
			"civMenu:placeSpikeStrip", "civMenu:removeSpikeStrip",
			-------------------------------------------------
			--- Medcial Options
			"medic:checkTarget", "medic:heal", "medic:medicine", "medic:reviveTarget", "medic:sendToNpcVehicle","medic:DNR", "medic:assistPatient", "medic:takeOffMedicalList",
			"medic:releaseFromBed",
			-------------------------------------------------
			--- Mechanic
			"mechanic:impound", "mechanic:flatbed", "mechanic:npcjob", "mechanic:impoundList",
			-------------------------------------------------
			--- Taxi
			"taxi:toggleJob",
			-------------------------------------------------
			--- Weazel
			"weazel:prop_camera", "weazel:prop_boom", "weazel:prop_mic"
			-------------------------------------------------


		}
	},

	{
		id = "toggleEvidence",
		displayName = "Toggle Evidence View",
		icon = "#objectHeader",
		functionName = "rpuk_factions:toggleEvidenceView",
		enableMenu = function()
			if GetSelectedPedWeapon(PlayerPedId()) == -1951375401 then
				return true
			end
		end,
	},

	{
		id = "deleteprop",
		displayName = "Remove Networked Prop",
		icon = "#objectHeader",
		functionName = "rpuk_playerMenu:deleteObject",
		enableMenu = function()
			local hasAccess = isInList(ESX.Player.GetJobName(),Config.AccessToSpawnObjectMenu)
			if hasAccess and isPropNetworkedAndTracked() then
				return true
			end
		end,
	},


	{
		id = "vehicle:car:4seat",
		displayName = "Vehicle Placement",
		icon = "#vehicle-options-vehicle",
		enableMenu = function()
			local player = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local closestPlayer, playerDist = ESX.Game.GetClosestPlayer()
			local hash = GetEntityModel(vehicle)
			local maxSeats = GetVehicleModelNumberOfSeats(hash)
			if vehicle ~= 0 and vehicle ~= nil and distance < 5.0 and IsPedOnFoot(player) then
				if maxSeats <= 4 then
					if closestPlayer ~= -1 and playerDist < 5.0 then
						if not exports.rpuk_health:deadStatus() then
							return true
						end
					end
				end
			end
		end,
		subMenus = {"police:vehicle:car:seat1", "police:vehicle:car:seat2", "police:vehicle:car:seat3", "police:vehicle:car:seat4"}
	},

	{
		id = "vehicle:car:10seat",
		displayName = "Vehicle Placement",
		icon = "#van",
		enableMenu = function()
			local player = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local hash = GetEntityModel(vehicle)
			local maxSeats = GetVehicleModelNumberOfSeats(hash)

			if vehicle ~= 0 and vehicle ~= nil and distance < 5.0 and IsPedOnFoot(player) then
				if maxSeats > 4 then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
		subMenus = {"police:vehicle:car:seat1", "police:vehicle:car:seat2", "police:vehicle:car:seat3", "police:vehicle:car:seat4", "police:vehicle:car:seat5", "police:vehicle:car:seat6", "police:vehicle:car:seat7", "police:vehicle:car:seat8", "police:vehicle:car:seat9", "police:vehicle:car:seat10"}
	},

	{
		id = "vehicle",
		displayName = "Vehicle Options",
		icon = "#veh_more",
		enableMenu = function()
			local player = PlayerPedId()
			local vehicleHandle, distance = ESX.Game.GetClosestVehicle()
			if IsPedInAnyVehicle(player, false) then vehicleHandle = IsPedInAnyVehicle(player, false) end

			if vehicleHandle ~= 0 and vehicleHandle ~= nil and distance < 4.0 then
				if not exports.rpuk_health:deadStatus() then
					if GetVehicleDoorsLockedForPlayer(vehicleHandle, player) then
						if exports.rpuk_core:checkIfYouHaveKeysForVehicle() then
							return true
						end
					else
						return true
					end
				end
			end
		end,
		subMenus = {"vehicle:engine", "vehicle:driver", "vehicle:passanger", "vehicle:rearLeftDoor", "vehicle:rearRightDoor",
			"vehicle:trunk", "vehicle:hood", "boat:anchor"}
	},

	{
		id = "vehicle-seates",
		displayName = "Vehicle Seats",
		icon = "#vehicle-seat",
		enableMenu = function()
			local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
			if not exports.rpuk_health:deadStatus() and inVehicle then
				return true
			end
		end,
		subMenus = {"vehicle:driverSeat", "vehicle:passangerSeat", "vehicle:rearLeftSeat", "vehicle:rearRightSeat",
			"vehicle:veryRearLeftSeat", "vehicle:veryRearRightSeat", "vehicle:seat5", "vehicle:seat6"}
	},

	{
		id = "anim",
		displayName = "Animations",
		icon = "#anim",
		functionName = "dp:RecieveMenu",
		enableMenu = function()
			if not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	{
		id = "idshow",
		displayName = "Show ID",
		icon = "#idcard",
		functionName = "rpuk_playerMenu:showPermits",
		enableMenu = function()
			if not exports.rpuk_health:deadStatus() then
				if (ESX.Player.GetInventory().idcard and ESX.Player.GetInventory().idcard.count > 0) then
					return true
				end
			end
		end,
	},

	{
		id = "clothing",
		displayName = "Clothing Menu",
		icon = "#shirt",
		enableMenu = function()
			if not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
		subMenus = {"clothing:helmet", "clothing:masks",  "clothing:hats",  "clothing:glasses", "clothing:gloves", "clothing:bags"}
	},

	{
		id = "police-shield",
		displayName = "Riot Gear",
		icon = "#police-action",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle =IsPedInAnyVehicle(ped, false)
			if ESX.Player.GetJobName() == "police" and not exports.rpuk_health:deadStatus() and not vehicle then
				return true
			end
		end,
		subMenus = {"police:shield", "police:shield2"}
	},

	{
		id = "police-dog",
		displayName = "Dog Actions",
		icon = "#k9",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle =IsPedInAnyVehicle(ped, false)
			if not vehicle and ESX.Player.GetJobName() == "police" and tonumber(ESX.Player.GetPoliceData().dog) >= 1 and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
		subMenus = {"police:spawnDog","police:dog_traceVehicle", "police:dog_placeInVehicle", "police:dog_sit","police:dog_down", "police:dog_heel_right","police:dog_heel_left"}
	},

	{
		id = "pnc",
		displayName = "Police National Computer",
		icon = "#pnc",
		functionName = "rpuk_mdt:openPNC",
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToPNC)
			if hasAccess and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	{
		id = "house",
		displayName = "House Options",
		icon = "#house",
		enableMenu = function()
			local inHouse = GetResourceState('rpuk_housing') == 'started' and exports.rpuk_housing:inHouse()
			local housePerm = GetResourceState('rpuk_housing') == 'started' and exports.rpuk_housing:hasAccess()

			if inHouse and housePerm == "owner" and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
		subMenus = {"house:furnish", "house:refurnish", "house:letPlayerIn", "house:Storage"}
	},

	{
		id = "house",
		displayName = "House Raid Options",
		icon = "#house",
		enableMenu = function()
			local inHouse = GetResourceState('rpuk_housing') == 'started' and exports.rpuk_housing:inHouse()
			local housePerm = GetResourceState('rpuk_housing') == 'started' and exports.rpuk_housing:hasAccess()
			if inHouse and housePerm == "raider" and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
		subMenus = {"house:Storage"}
	},

	{
		id = "oxy",
		displayName = "Remove Air Tank",
		icon = "#heart",
		functionName = "removeOxygenTank",
		enableMenu = function()
			local oxyLevel = exports.rpuk_hud:getOxygenStatus()
			if oxyLevel > 50 and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	{
		id = "panic",
		displayName = "Panic Alarm",
		icon = "#heart",
		functionName = "rpuk:panicAlarmForJudge",
		enableMenu = function()
			if (ESX.Player.GetJobName() == "court" and ESX.Player.GetJobGrade() >= 2) then
				if (ESX.Player.GetInventory().phone and ESX.Player.GetInventory().phone.count > 0) then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	{
		id = "Rappel",
		displayName = "Rappel Down",
		icon = "#downArrow",
		functionName = "rpuk_playerMenu:rappelDown",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle = GetVehiclePedIsIn(ped, false)
			local vehicleCheck = (IsVehicleModel(vehicle, `annihilator2`))
			local seatCheck = (GetPedInVehicleSeat(vehicle, 2) == ped or GetPedInVehicleSeat(vehicle, 1) == ped)
			if vehicleCheck and seatCheck and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

}
newSubMenus = {

	--- Civ Interactions

	['civMenu:cuff'] = {
		title = "Cuff/Un-Cuff",
		icon = "#cuffs-cuff",
		functionName = "rpuk_restrain:restrainMethod",
		functionParameters = "handcuff",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToRestrain)
			local data = anim_state(closestPlayer)
			if hasAccess and onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if not data[4] or not data[2] then
						return true
					end
				end
			end
		end,
	},

	['civMenu:checkinventory'] = {
		title = "Search Person",
		icon = "#police-action-frisk",
		functionName = "rpuk_inventory:searchPlayer",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToSearchPlayer)
			local data = anim_state(closestPlayer)
			if hasAccess and onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if data[1] or data[2] or data[4] then
						return true
					end
				end
			end
		end,
	},

	['civMenu:ziptie'] = {
		title = "Ziptie",
		icon = "#cuffs-cuff",
		functionName = "rpuk_restrain:restrainMethod",
		functionParameters ="ziptied",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if not data[4] and (data[1] or data[3]) then
						return true
					end
				end
			end
		end,
	},


	['civMenu:removeZiptie'] = {
		title = "Cut Ziptie Off",
		icon = "#cuffs-uncuff",
		functionName = "rpuk_restrain:removeZiptie",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if data[4] then
						return true
					end
				end
			end
		end,
	},

	['civMenu:escort'] = {
		title = "Escort",
		icon = "#general-escort",
		functionName = "rpuk_restrain:dragFromMenu",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToDrag)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local closestPlayerPed = GetPlayerPed(closestPlayer)
			local data = anim_state(closestPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if hasAccess then
						if (data[5] or data[2] or data[6] or data[4] or IsPedRagdoll(closestPlayerPed)) then
							return true
						end
					else
						if data[4] then
							return true
						end
					end
				end
			end
		end,
	},

	['civMenu:pickcuffs'] = {
		title = "Pick Cuffs",
		icon = "#cuffs-uncuff",
		functionName = "rpuk_restrain:pickLock",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if data[2] then
						return true
					end
				end
			end
		end,
	},

	['civMenu:jailPlayer'] = {
		title = "Jail Suspect",
		icon = "#gang",
		functionName = "rpuk_jail:jailWheel",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToJailPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if data[2] then
						if hasAccess then
							return true
						end
					end
				end
			end
		end,
	},

	['civMenu:blindfoldOn'] = {
		title = "Place Blindfold On Target",
		icon = "#masks",
		functionName = "rpuk_blindfold:putBlindFoldOn",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if data[2] or data[4] then
						return true
					end
				end
			end
		end,
	},

	['civMenu:blindfoldOff'] = {
		title = "Remove Blindfold Off Target",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_blindfold:putBlindFoldOff",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 and (data[2] or data[4]) then
					return true
				end
			end
		end,
	},

	['civMenu:addFingerPrintToDB'] = {
		title = "Add Finger Print",
		icon = "#police-action-dna-swab",
		functionName = "rpuk_factions:addFingerPrintToSystem",
		enableMenu = function()
			local hasAccess = (ESX.Player.GetJobName() == "police")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			if not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if hasAccess then
						if exports.PolyZone:inPolyZone("MissionRowCheckInService") then
							if tonumber(ESX.Player.GetPoliceData().special) >= 1 then
								return true
							end
						end
					end
				end
			end
		end,
	},

	['civMenu:checkFingerPrint'] = {
		title = "Check Targets Finger Print",
		icon = "#police-action-gsr",
		functionName = "rpuk_factions:checkFingerPrintSystem",
		enableMenu = function()
			local hasAccess = (ESX.Player.GetJobName() == "police")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			if not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 5.0 then
					if hasAccess then
						if exports.PolyZone:inPolyZone("MissionRowCheckInService") then
							if tonumber(ESX.Player.GetPoliceData().special) >= 1 then
								return true
							end
						end
					end
				end
			end
		end,
	},

	['civMenu:openWeaponSafe'] = {
		title = "Open Vehicle Safe",
		icon = "#safe",
		functionName = "rpuk_inventory:openGunSafeKeyCode",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local onFoot = IsPedOnFoot(ped)
			local dead = exports.rpuk_health:deadStatus()
			if not dead then
				if onFoot then
					if (vehicle ~= 0 and vehicle ~= nil and distance < 5.0) then
						if hasVehicleGotWeaponSafe(GetEntityModel(vehicle)) then
							if GetVehicleDoorAngleRatio(vehicle, 5) > 0.0 then
								return true
							end
						end
					end
				else
					if hasVehicleGotWeaponSafe(GetEntityModel(vehicle)) then
						local isInCorrectSeat = (GetPedInVehicleSeat(vehicle, 1) == ped or GetPedInVehicleSeat(vehicle, 2) == ped)
						if isInCorrectSeat then
							return true
						end
					end
				end
			end
		end,
	},

	['civMenu:impound'] = {
		title = "Impound Vehicle",
		icon = "#impound",
		functionName = "rpuk_impound:regVehicle",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local onFoot = IsPedOnFoot(ped)
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToVehicleOptions)
			if onFoot and vehicle ~= 0 and vehicle ~= nil and distance < 5.0 and not exports.rpuk_health:deadStatus() then
				if hasAccess then
					return true
				end
			end
		end,
	},

	['civMenu:trafficMan'] = {
		title = "Traffic Control",
		icon = "#trafficLight",
		functionName = "rpuk_factions:openTrafficManager",
		enableMenu = function()
			local ped = PlayerPedId()
			local onFoot = IsPedOnFoot(ped)
			local jobName = ESX.Player.GetJobName()
			local jobGrade = ESX.Player.GetJobGrade()
			local policeData = ESX.Player.GetPoliceData()
			local hasAccess = (jobName == "police" and (tonumber(policeData.driving) >= 2)) or (jobName == "ambulance" and jobGrade >= 1)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if hasAccess then
					return true
				end
			end
		end,
	},

	['civMenu:vehiclePNC'] = {
		title = "Quick REG Check",
		icon = "#search",
		functionName = "rpuk_mdt:openPNCVehicle",
		enableMenu = function()
			local ped = PlayerPedId()
			local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToUseQuickVehicleSearch)
			if inVehicle and not exports.rpuk_health:deadStatus() then
				if hasAccess then
					return true
				end
			end
		end,
	},

	['civMenu:vehicleRegisterList'] = {
		title = "Register Impound",
		icon = "#list",
		functionName = "rpuk_mechanic:vehicleImpoundRegister",
		enableMenu = function()
			local ped = PlayerPedId()
			local inVehicle = IsPedInAnyVehicle(ped, false)
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToAddVehiclesToImpoundList)
			if hasAccess then
				if inVehicle or (vehicle ~= 0 and vehicle ~= nil and distance < 5.0) and not exports.rpuk_health:deadStatus() then
					return true
				end
			end
		end,
	},

	['civMenu:checkLicences'] = {
		title = "Check Target Licences",
		icon = "#judge-licenses-search-licenses",
		functionName = "rpuk_playerMenu:checkTargetPermit",
		enableMenu = function()
			local ped = PlayerPedId()

			local onFoot = IsPedOnFoot(ped)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToCheckLicences)
			if onFoot and not exports.rpuk_health:deadStatus() then
				if closestPlayer ~= -1 and distance < 3.0 then
					if hasAccess then
						return true
					end
				end
			end
		end,
	},


	['civMenu:carry'] = {
		title = "Carry Player",
		icon = "#carry",
		functionName = "rpuk_core:carry",
		enableMenu = function()
			if IsPedOnFoot(PlayerPedId()) and not exports.rpuk_health:deadStatus() then
				local closestPlayer, distance = ESX.Game.GetClosestPlayer()
				local data = anim_state(closestPlayer)
				if closestPlayer ~= -1 and distance < 2.0 then
					if (not data[2] and not data[4]) then
						return true
					end
				end
			end
		end,
	},

	['civMenu:grabClothes'] = {
		title = "Grab Clothes",
		icon = "#clothingSafe",
		functionName = "rpuk:carClothesMenu",
		enableMenu = function()
			local player = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local jobName = ESX.Player.GetJobName()
			local entityModel = GetEntityModel(vehicle)
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToGetClothesFromTrunk)
			if hasAccess and vehicle ~= 0 and vehicle ~= nil and distance < 5.0 and IsPedOnFoot(player) then
				if govVehicleList(jobName, entityModel) then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	['civMenu:placeSpikeStrip'] = {
		title = "Deploy Stinger",
		icon = "#object",
		functionName = "rpuk_factions:placeDownSpikeStrip",
		enableMenu = function()
			local player = PlayerPedId()
			local jobName = ESX.Player.GetJobName()
			local hasAccess = (jobName == "police")
			if hasAccess and IsPedOnFoot(player) then
				if exports.rpuk_factions:isPedInSpikeStripZone() == nil then
					if not exports.rpuk_health:deadStatus() then
						if ESX.Player.GetInventory().stinger and ESX.Player.GetInventory().stinger.count > 0 then
							return true
						end
					end
				end
			end
		end,
	},

	['civMenu:removeSpikeStrip'] = {
		title = "Remove Stinger",
		icon = "#object",
		functionName = "rpuk_factions:pickUpSpikeStrip",
		enableMenu = function()
			local player = PlayerPedId()
			local jobName = ESX.Player.GetJobName()
			local hasAccess = (jobName == "police")
			if hasAccess and IsPedOnFoot(player) then
				if exports.rpuk_factions:isPedInSpikeStripZone()  then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	['civMenu:forceInToVehicle'] = {
		title = "Forcefully Enter Vehicle",
		icon = "#key",
		functionName = "rpuk:unlockVehicle",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local hasAccess = isInList(ESX.Player.GetJobName(), Config.AccessToVehicleOptions)
			local onFoot = IsPedOnFoot(ped)
			if hasAccess then
				if GetVehicleDoorsLockedForPlayer(vehicle, ped) then
					if onFoot and vehicle ~= 0 and vehicle ~= nil and distance < 5 and not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	['taxi:toggleJob'] = {
		title = "Toggle NPC Job",
		icon = "#car",
		functionName = "esx_taxijob:toggleNPCJob",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local vehicle = IsPedInAnyVehicle(playerPed, false)
			local hasAccess = (ESX.Player.GetJobName() == "taxi")

			if vehicle and not exports.rpuk_health:deadStatus() then
				if hasAccess then
					return true
				end
			end
		end,
	},

	['mechanic:impound'] = {
		title = "Impound Vehicle",
		icon = "#impound",
		functionName = "rpuk:mimpound",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local hasAccess = (ESX.Player.GetJobName() == "mechanic")
			if exports.PolyZone:inPolyZone("Impound") then
				if (vehicle ~= 0 and vehicle ~= nil and distance < 5.0) and not exports.rpuk_health:deadStatus() then
					if hasAccess then
						return true
					end
				end
			end
		end,
	},

	['mechanic:impoundList'] = {
		title = "Vehicle Impound List",
		icon = "#vehicle-list",
		functionName = "rpuk_mechanic:vehicleList",
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "mechanic")
			if not exports.rpuk_health:deadStatus() then
				if hasAccess then
					return true
				end
			end
		end,
	},

	['mechanic:flatbed'] = {
		title = "Attach/Detach Vehicle",
		icon = "#general-put-in-veh",
		functionName = "rpuk:mflatbed",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local hasAccess = (ESX.Player.GetJobName() == "mechanic")
			if (vehicle ~= 0 and vehicle ~= nil and distance < 5.0) and not exports.rpuk_health:deadStatus() then
				if hasAccess then
					return true
				end
			end
		end,
	},

	['mechanic:npcjob'] = {
		title = "Start NPC Job",
		icon = "#walking",
		functionName = "rpuk:mtriggernpc",
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "mechanic")
			if hasAccess and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	['medic:releaseFromBed'] = {
		title = "Release From Bed",
		icon = "#walking",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "releaseFromBed" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			print("medic:releaseFromBed data: "..tostring(data))
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if exports.PolyZone:inPolyZone("Pillbox") or exports.PolyZone:inPolyZone("Sandy") or exports.PolyZone:inPolyZone("Paleto") or exports.PolyZone:inPolyZone("Prison") then
						if not exports.rpuk_health:deadStatus() then
							if data[7] then
								return true
							end
						end
					end
				end
			end
		end,
	},

	['medic:sendToNpcVehicle'] = {
		title = "Send to closest Hospital",
		icon = "#walking",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "npcCallOut" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if not exports.rpuk_health:deadStatus() then
						if data[6] then
							return true
						end
					end
				end
			end
		end,
	},


	['medic:takeOffMedicalList'] = {
		title = "Remove Patient From Waiting List",
		icon = "#medic-heal",
		functionName = "rpuk_health:takeOffMedicalList",
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	['medic:heal'] = {
		title = "Bandage Patient",
		icon = "#medic-heal",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "bandage" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	['civMenu:coatHanger'] = {
		title = "Revive Friend",
		icon = "#medic-revive",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "revive" },
		enableMenu = function()
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if closestPlayer ~= -1 and distance < 5.0 and ReviveLocation() and not exports.rpuk_health:deadStatus() then
				if ESX.Player.GetInventory().defib and ESX.Player.GetInventory().defib.count > 0 then
					if data[6] then
						return true
					end
				end
			end
		end,
	},


	['medic:reviveTarget'] = {
		title = "Roadside CPR",
		icon = "#medic-revive",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "revive" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance" or ESX.Player.GetJobName() == "police" or ESX.Player.GetJobName() == "nca")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			local closestPlayerPed = GetPlayerPed(closestPlayer)
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if (data[6] or IsPedRagdoll(closestPlayerPed)) then
						if not exports.rpuk_health:deadStatus() then
							return true
						end
					end
				end
			end
		end,
	},
	['medic:medicine'] = {
		title = "Medicate Patient",
		icon = "#medic-revive",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "medicine" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},
	-- ['medic:Sedate'] = {
	-- 	title = "Sedate Patient",
	-- 	icon = "#medic-revive",
	-- 	functionName = "rpuk_factions:performTreatment",
	-- 	functionParameters = { "sedate" },
	-- 	enableMenu = function()
	-- 		local ped = PlayerPedId()
	-- 		local hasAccess = (ESX.Player.GetJobName() == "ambulance")
	-- 		local closestPlayer, distance = ESX.Game.GetClosestPlayer()
	-- 		if closestPlayer ~= -1 and distance < 2.0 then
	-- 			if hasAccess then
	-- 				if not exports.rpuk_health:deadStatus() then
	-- 					return true
	-- 				end
	-- 			end
	-- 		end
	-- 	end,
	-- },
	['medic:DNR'] = {
		title = "DNR Patient",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "respawn" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = (ESX.Player.GetJobName() == "ambulance")
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if data[6] then
						if not exports.rpuk_health:deadStatus() then
							return true
						end
					end
				end
			end
		end,
	},

	['medic:assistPatient'] = {
		title = "Revive Patient",
		icon = "#medic-revive",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "reviveTreatment" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = ESX.Player.GetJobName() == "ambulance"
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			local closestPlayerPed = GetPlayerPed(closestPlayer)
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if (data[6] or IsPedRagdoll(closestPlayerPed)) then
						if not exports.rpuk_health:deadStatus() then
							return true
						end
					end
				end
			end
		end,
	},

	['medic:checkTarget'] = {
		title = "Check Over Patient",
		icon = "#heart",
		functionName = "rpuk_factions:performTreatment",
		functionParameters = { "issues" },
		enableMenu = function()
			local ped = PlayerPedId()
			local hasAccess = ESX.Player.GetJobName() == "ambulance"
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			local data = anim_state(closestPlayer)
			if closestPlayer ~= -1 and distance < 2.0 then
				if hasAccess then
					if not exports.rpuk_health:deadStatus() then
						return true
					end
				end
			end
		end,
	},

	--- Job Interactions

	['job:signin'] = {
		title = "Clock In",
		icon = "#signin",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "ClockIn",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("ClockIn")
			if inPolyZone then
				return true
			end
		end
	},

	['job:signout'] = {
		title = "Clock Out",
		icon = "#signout",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "ClockOut",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("ClockOut")
			if inPolyZone then
				return true
			end
		end
	},

	['job:LockerRoom'] = {
		title = "Locker Room",
		icon = "#shirt",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "LockerRoom",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("LockerRoom")
			if inPolyZone then
				return true
			end
		end
	},

	['job:Armory'] = {
		title = "Armory",
		icon = "#police-action",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "Armory",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("Armory")
			if inPolyZone then
				return true
			end
		end
	},

	['job:Attachments'] = {
		title = "Attachments",
		icon = "#police-action",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "Attachments",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("Attachments")
			if inPolyZone then
				return true
			end
		end
	},

	['job:VehicleRental'] = {
		title = "Retrieve Vehicle",
		icon = "#garage",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "VehicleRental",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("VehicleRental")
			local onFoot = IsPedOnFoot(playerPed)
			if inPolyZone and onFoot then
				if ESX.Game.IsSpawnPointClear(coord, 3.0) then
					return true
				end
			end
		end
	},

	['job:VehicleDelete'] = {
		title = "Park Vehicle",
		icon = "#parking",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "VehicleDelete",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("VehicleDelete")
			local vehicle = IsPedInAnyVehicle(playerPed, false)
			if inPolyZone and vehicle then
				return true
			end
		end
	},

	['job:Management'] = {
		title = "Management Computer",
		icon = "#computer",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "Management",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("Management")
			if inPolyZone then
				return true
			end
		end
	},

	['job:ViewFund'] = {
		title = "View Fund",
		icon = "#pound",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "ViewFund",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("ViewFund")
			if inPolyZone then
				return true
			end
		end
	},

	['job:FundManagement'] = {
		title = "Fund Management Computer",
		icon = "#computer",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "FundManagement",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("FundManagement")
			if inPolyZone then
				return true
			end
		end
	},

	['job:evidencelab'] = {
		title = "Use Evidence Lab",
		icon = "#computer",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "EvidenceLab",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("EvidenceLab")
			if inPolyZone then
				return true
			end
		end
	},

	['job:evidenceArchive'] = {
		title = "Use Evidence Archive",
		icon = "#computer",
		functionName = "rpuk_factions:closeToInteraction",
		functionParameters = "EvidenceArchive",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkPolyZone("EvidenceArchive")
			if inPolyZone then
				return true
			end
		end
	},
	---Prison Interactions

	['prison:collectEquipment'] = {
		title = "Collect Equipment",
		icon = "#box",
		functionName = "rpuk_prison:collectionCheck",
		functionParameters = "store",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local collection = exports.PolyZone:inPolyZone("collection")
			if collection then
				return true
			end
		end
	},

	['prison:collectClothes'] = {
		title = "Collect Clothes",
		icon = "#shirt",
		functionName = "rpuk_prison:collectionCheck",
		functionParameters = "clothes",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local clothes = exports.PolyZone:inPolyZone("clothes")
			if clothes then
				return true
			end
		end
	},

	['prison:checkComputer'] = {
		title = "Check Computer",
		icon = "#computer",
		functionName = "rpuk_prison:openComputer",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local computer = (exports.PolyZone:inPolyZone("computer") or exports.PolyZone:inPolyZone("computer2"))
			if computer then
				return true
			end
		end
	},

	['prison:lockDownAlarm'] = {
		title = "Toggle Lockdown",
		icon = "#computer",
		functionName = "rpuk_prison:toggleLockdown",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local Keypad = exports.PolyZone:inPolyZone("Keypad")
			if Keypad then
				if (ESX.Player.GetJobName() == "police" or ESX.Player.GetJobName() == "gruppe6") then
					return true
				end
			end
		end
	},

	['prison:checkPhone'] = {
		title = "Phone HM Prison Services",
		icon = "#phone",
		functionName = "rpuk_prison:checkPhone",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local nearPhoneBooth = (exports.PolyZone:inPolyZone("phoneBooth") or exports.PolyZone:inPolyZone("phoneBooth2"))
			if nearPhoneBooth then
				return true
			end
		end
	},

	['prison:searchPoints'] = {
		title = "Search Points",
		icon = "#wash",
		functionName = "rpuk_prison:jobs",
		functionParameters = "search",
		enableMenu = function()
			local nearSearchPoint = (exports.PolyZone:inPolyZone("searchPoint") or exports.PolyZone:inPolyZone("searchPoint2") or exports.PolyZone:inPolyZone("searchPoint3"))
			if nearSearchPoint then
				return true
			end
		end
	},

	['prison:cleanTable'] = {
		title = "Clean Tables",
		icon = "#wash",
		functionName = "rpuk_prison:jobs",
		functionParameters = "clean",
		enableMenu = function()
			local nearTable = (exports.PolyZone:inPolyZone("cleaningPoints") or exports.PolyZone:inPolyZone("cleaningPoints2") or exports.PolyZone:inPolyZone("cleaningPoints3") or
			 exports.PolyZone:inPolyZone("cleaningPoints4") or exports.PolyZone:inPolyZone("cleaningPoints5") or exports.PolyZone:inPolyZone("cleaningPoints6") or exports.PolyZone:inPolyZone("cleaningPoints7"))
			if nearTable then
				return true
			end
		end
	},

	['prison:cleanDishes'] = {
		title = "Clean Dishes",
		icon = "#soap",
		functionName = "rpuk_prison:jobs",
		functionParameters = "sink",
		enableMenu = function()
			local nearSink = exports.PolyZone:inPolyZone("sink")
			if nearSink then
				return true
			end
		end
	},

	['prison:checkStock'] = {
		title = "Check Stock",
		icon = "#stock",
		functionName = "rpuk_prison:jobs",
		functionParameters = "stock",
		enableMenu = function()
			local nearStock = exports.PolyZone:inPolyZone("stock")
			if nearStock then
				return true
			end
		end
	},

	['metalDetector:offline'] = {
		title = "Turn Off Detector",
		icon = "#signout",
		functionName = "rpuk_courts:changeStatus",
		functionParameters = false,
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local auth = exports.rpuk_factions:checkZoneDetectorPerms()
			local inPolyZone = exports.rpuk_factions:checkZoneDetectorStatus()
			if auth then
				if inPolyZone then
					return true
				end
			end
		end
	},

	['metalDetector:online'] = {
		title = "Turn On Detector",
		icon = "#signin",
		functionName = "rpuk_courts:changeStatus",
		functionParameters = true,
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local auth = exports.rpuk_factions:checkZoneDetectorPerms()
			local inPolyZone = exports.rpuk_factions:checkZoneDetectorStatus()
			if auth then
				if inPolyZone == false then
					return true
				end
			end
		end
	},

	['speedCamera:cutwires'] = {
		title = "Cut Wires",
		icon = "#signout",
		functionName = "rpuk_factions:changeStatus",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkIfCanCutPower()
			local auth = exports.rpuk_factions:checkZoneCameraPerms()
			if inPolyZone and not auth then
				return true
			end
		end
	},

	['speedCamera:offline'] = {
		title = "Turn Off Speed Camera",
		icon = "#signout",
		functionName = "rpuk_factions:changeStatus",
		functionParameters = false,
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkZoneCameraStatus()
			local auth = exports.rpuk_factions:checkZoneCameraPerms()
			if inPolyZone and auth then
				return true
			end
		end
	},

	['speedCamera:online'] = {
		title = "Turn On Speed Camera",
		icon = "#signin",
		functionName = "rpuk_factions:changeStatus",
		functionParameters = true,
		enableMenu = function()
			local playerPed = PlayerPedId()
			local coord = GetEntityCoords(playerPed)
			local inPolyZone = exports.rpuk_factions:checkZoneCameraStatus()
			local auth = exports.rpuk_factions:checkZoneCameraPerms()
			if inPolyZone == false and auth then
				return true
			end
		end
	},


--------------------------

--Vehicle


	['vehicle:engine'] = {
		title = "Turn Off/On Engine",
		icon = "#car",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "engine" },
		enableMenu = function()
			local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
			if inVehicle then
				return true
			end
		end
	},

	['vehicle:lights'] = {
		title = "Turn Off/On Lights",
		icon = "#car",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "lights" },
		enableMenu = function()
			local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
			if inVehicle then
				return true
			end
		end
	},

	['vehicle:driver'] = {
		title = "Open/Close Driver Door",
		icon = "#vehicle-driver",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "driver" },
		enableMenu = function () return isDoorVehiclePedIsInOkay(0) end
	},

	['vehicle:passanger'] = {
		title = "Open/Close Passanger Door",
		icon = "#vehicle-pas",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "passanger" },
		enableMenu = function () return isDoorVehiclePedIsInOkay(1) end
	},

	['vehicle:rearLeftDoor'] = {
		title = "Open/Close Rear Left-Door",
		icon = "#vehicle-rear-left",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "rearLeftDoor" },
	},

	['vehicle:rearRightDoor'] = {
		title = "Open/Close Rear Right-Door",
		icon = "#vehicle-rear-right",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "rearRightDoor" },
	},

	['vehicle:hood'] = {
		title = "Open/Close Hood",
		icon = "#vehicle-hood",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "hood" },
		enableMenu = function () return isDoorVehiclePedIsInOkay(4) end
	},

	['vehicle:trunk'] = {
		title = "Open/Close Boot",
		icon = "#vehicle-boot",
		functionName = "rpuk_wheel:setVehicleThing",
		functionParameters = { "trunk" },
		enableMenu = function () return isDoorVehiclePedIsInOkay(5) end
	},

	['boat:anchor'] = {
		title = "Toggle Boat Anchor",
		icon = "#anchor",
		functionName = "rpuk_core:toggleBoatAnchor",
		enableMenu = function()
			local playerPed = PlayerPedId()
			local vehicleHandle = GetVehiclePedIsIn(playerPed, false)

			if DoesEntityExist(vehicleHandle) then
				local entityModel, driverPed = GetEntityModel(vehicleHandle), GetPedInVehicleSeat(vehicleHandle, -1)

				if IsThisModelABoat(entityModel) and playerPed == driverPed then
					return IsThisModelABoat(entityModel)
				end
			end

			return false
		end
	},

	['vehicle:driverSeat'] = {
		title = "Switch to Driver Seat",
		icon = "#vehicle-driver",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = -1,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(-1, false) end
	},

	['vehicle:passangerSeat'] = {
		title = "Switch to Passanger Seat",
		icon = "#vehicle-pas",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 0,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(0, false) end
	},

	['vehicle:rearLeftSeat'] = {
		title = "Switch to Rear Left Seat",
		icon = "#vehicle-rear-left",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 1,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(1, false) end
	},

	['vehicle:rearRightSeat'] = {
		title = "Switch to Rear Right Seat",
		icon = "#vehicle-rear-right",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 2,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(2, false) end
	},

	['vehicle:veryRearLeftSeat'] = {
		title = "Switch to Very Rear Left Seat",
		icon = "#vehicle-rear-left",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 3,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(3, false) end
	},

	['vehicle:veryRearRightSeat'] = {
		title = "Switch to Very Rear Right Seat",
		icon = "#vehicle-rear-left",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 4,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(4, false) end
	},

	['vehicle:seat5'] = {
		title = "Switch to Seat 5",
		icon = "#vehicle-rear-left",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 5,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(5, false) end
	},

	['vehicle:seat6'] = {
		title = "Switch to Seat 6",
		icon = "#vehicle-rear-left",
		functionName = "rpuk_wheel:setVehicleSeat",
		functionParameters = 6,
		enableMenu = function () return doesVehicleSeatExistAndIsItAvailable(6, false) end
	},

	['police:shield'] = {
		title = "Riot Shield",
		icon = "#shield",
		functionName = "rpuk_shield:shield",
		functionParameters =  "prop_riot_shield"
	},

	['police:shield2'] = {
		title = "Ballistic Shield",
		icon = "#shield",
		functionName = "rpuk_shield:shield",
		functionParameters =  "prop_ballistic_shield"
	},

	['police:warrants'] = {
		title = "Check Property Warrants",
		icon = "#police-vehicle-plate",
		functionName = "rpuk_court:openWarrantSearch",
	},

-- Dogs

	['police:spawnDog'] = {
		title = "Spawn Dog",
		icon = "#k9-vehicle",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "spawn" },
		enableMenu = function()
			local dogPoint = (exports.PolyZone:inPolyZone("DogZoneV") or exports.PolyZone:inPolyZone("DogZoneMRPD"))
			if dogPoint then
				return true
			end
		end
	},
	['police:dog_heel_left'] = {
		title = "Heel Left",
		icon = "#k9-left",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "heelLeft" }
	},
	['police:dog_heel_right'] = {
		title = "Heel Right",
		icon = "#k9-right",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "heelRight" }
	},
	['police:dog_traceVehicle'] = {
		title = "Trace Driver",
		icon = "#k9-vehicle",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "tracedriver" }
	},

	['police:dog_placeInVehicle'] = {
		title = "Place/Remove Dog from Vehicle",
		icon = "#k9-sniff",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "vehicle" }
	},

	['police:dog_sit'] = {
		title = "Tell dog to sit",
		icon = "#k9-sit",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "sit" }
	},

	['police:dog_down'] = {
		title = "Tell dog to lay",
		icon = "#k9-lay",
		functionName = "rpuk_Police:dogs",
		functionParameters =  { "down" }
	},

	--- Clothing
	['clothing:masks'] = {
		title = "On/Off Masks",
		icon = "#masks",
		functionName = "rpuk_playerMenu:masks"
	},

	['clothing:hats'] = {
		title = "On/Off Hats",
		icon = "#hats",
		functionName = "rpuk_playerMenu:hats"
	},

	['clothing:glasses'] = {
		title = "On/Off Glasses",
		icon = "#glasses",
		functionName = "rpuk_playerMenu:glasses"
	},

	['clothing:gloves'] = {
		title = "On/Off Gloves",
		icon = "#gloves",
		functionName = "rpuk:gloves",
		enableMenu = function()
			if (ESX.Player.GetJobName() == "ambulance" or ESX.Player.GetJobName() == "police" or ESX.Player.GetJobName() == "gruppe6") then
				return true
			end
		end,
	},

	-- ['clothing:lanyard'] = {
	-- 	title = "On/Off Lanyard",
	-- 	icon = "#police-vehicle-plate",
	-- 	functionName = "rpuk:lanyard",
	-- 	enableMenu = function()
	-- 		if ESX.Player.GetJobName() == "nca" then
	-- 			return true
	-- 		end
	-- 	end,
	-- },

	['clothing:helmet'] = {
		title = "Toggle Helmet",
		icon = "#hats",
		functionName = "rpuk_playerMenu:helmet",
		enableMenu = function()
			local ped = PlayerPedId()
			if (GetPedPropIndex(ped, 0) == 130 or GetPedPropIndex(ped, 0) == 129 or GetPedPropIndex(ped, 0) == 126 or GetPedPropIndex(ped, 0) == 125) then
				return true
			end
		end,
	},

	['clothing:bags'] = {
		title = "On/Off Bags",
		icon = "#bag",
		functionName = "rpuk_playerMenu:bags"
	},

	--- Objects

	['objects:placeSpike'] = {
		title = "Place Spike Strip",
		icon = "#object",
		functionName = "police:spikestrips"
	},

	['civ:flipvehicle'] = {
		title = "Flip Vehicle",
		icon = "#general-flip-vehicle",
		functionName = "rpuk_vehicleControl:resetVehicle",
		enableMenu = function()
			local ped = PlayerPedId()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			local hash = GetEntityModel(vehicle)
			local roll = GetEntityRoll(vehicle)
			if vehicle ~= 0 and vehicle ~= nil and distance < 5.0 and IsPedOnFoot(ped) then
				if IsThisModelABike(hash) or (roll > 75.0 or roll < -75.0) then
					return true
				end
			end
		end,
	},

-------------------------------------------------------

	-- Weazel News

	['weazel:prop_camera'] = {
		title = "Prop: Camera",
		icon = "#weazel-camera",
		functionName = "rpuk_weazel:prop",
		functionParameters = { "camera" },
		enableMenu = function()
			if ESX.Player.GetJobName() == "weazel" and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	['weazel:prop_boom'] = {
		title = "Prop: Boom Mic",
		icon = "#weazel-boom",
		functionName = "rpuk_weazel:prop",
		functionParameters = { "boom" },
		enableMenu = function()
			if ESX.Player.GetJobName() == "weazel" and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	['weazel:prop_mic'] = {
		title = "Prop: Hand Mic",
		icon = "#weazel-mic",
		functionName = "rpuk_weazel:prop",
		functionParameters = { "mic" },
		enableMenu = function()
			if ESX.Player.GetJobName() == "weazel" and not exports.rpuk_health:deadStatus() then
				return true
			end
		end,
	},

	-------------------------------------------------------

	-- Vehicle Placement

	['police:vehicle:car:seat1'] = {
		title = "Driver Seat",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = {-1},
		enableMenu = function()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			if distance < 5.0 then
				local ped = PlayerPedId()
				local pedCoords = GetEntityCoords(ped)
				local coords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_dside_f'))
				if #(pedCoords - coords) < 2.3 then
					return true
				end
			end
		end,
	},

	['police:vehicle:car:seat2'] = {
		title = "Passenger Seat",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 0 },
		enableMenu = function()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			if distance < 5.0 then
				local ped = PlayerPedId()
				local pedCoords = GetEntityCoords(ped)
				local coords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_pside_f'))
				if #(pedCoords - coords) < 2.3 then
					return true
				end
			end
		end,
	},

	['police:vehicle:car:seat3'] = {
		title = "Left Rear Seat",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 1 },
		enableMenu = function()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			if distance < 5.0 then
				local ped = PlayerPedId()
				local pedCoords = GetEntityCoords(ped)
				local coords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_dside_r'))
				if #(pedCoords - coords) < 2.3 then
					return true
				end
			end
		end,
	},

	['police:vehicle:car:seat4'] = {
		title = "Right Rear Seat",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 2 },
		enableMenu = function()
			local vehicle, distance = ESX.Game.GetClosestVehicle()
			if distance < 5.0 then
				if GetEntityModel(vehicle) == `ambulance` then
					if distance < 3.0 then
						return true
					end
				else
					local ped = PlayerPedId()
					local pedCoords = GetEntityCoords(ped)
					local coords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'door_pside_r'))
					if #(pedCoords - coords) < 2.3 then
						return true
					end
				end
			end
		end,
	},

	['police:vehicle:car:seat5'] = {
		title = "Seat 5",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 3 }
	},

	['police:vehicle:car:seat6'] = {
		title = "Seat 6",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 4 }
	},

	['police:vehicle:car:seat7'] = {
		title = "Seat 7",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 5 }
	},

	['police:vehicle:car:seat8'] = {
		title = "Seat 8",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 6 }
	},

	['police:vehicle:car:seat9'] = {
		title = "Seat 9",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 7 }
	},

	['police:vehicle:car:seat10'] = {
		title = "Seat 10",
		icon = "#judge-licenses-permit-remove",
		functionName = "rpuk_restrain:vehiclePlacement",
		functionParameters = { 8 }
	},

	-- ['police:vehicle:car:6seat'] = {
	--     title = "Remove Mechanic Licence",
	--     icon = "#judge-licenses-permit-remove",
	--     functionName = "rpuk_playerMenu:removePermit",
	--     functionParameters = { "mechanic" }
	-- },
	-- ['police:vehicle:car:4seat'] = {
	--     title = "Remove Mechanic Licence",
	--     icon = "#judge-licenses-permit-remove",
	--     functionName = "rpuk_playerMenu:removePermit",
	--     functionParameters = { "mechanic" }
	-- },

	-- ['police:vehiclePlacement1'] = {
	--     title = "Remove Mechanic Licence",
	--     icon = "#judge-licenses-permit-remove",
	--     functionName = "rpuk_playerMenu:removePermit",
	--     functionParameters = { "mechanic" }
	-- },

---- Housing

	['house:furnish'] = {
		title = "Furnish Property",
		icon = "#carry",
		functionName = "rpuk_housing:homeOptions",
		functionParameters = {"furnish"}
	},

	['house:refurnish'] = {
		title = "Refurnish Property",
		icon = "#paint",
		functionName = "rpuk_housing:homeOptions",
		functionParameters = { "refunish" }
	},

	['house:letPlayerIn'] = {
		title = "Check Intercom",
		icon = "#doorOpen",
		functionName = "rpuk_housing:homeOptions",
		functionParameters = { "intercom" }
	},

	['house:Storage'] = {
		title = "Storage",
		icon = "#box",
		functionName = "rpuk_housing:homeOptions",
		functionParameters = { "storage" }
	},













}

generateListOfAllowedEvents()
