local MAXIMUM_EXTENT_Y = 8000
local MINIMUM_EXTENT_Y = -6000
local MAXIMUM_EXTENT_X = 5500
local MINIMUM_EXTENT_X = -5500

-- Number of grids on each axis
local GRID_X = 31
local GRID_Y = 31

-- Magic Offset
local GRID_OFFSET = 33

-- Main Routing Bucket Grid
local BUCKET_GRID = 32

-- Total number of grids.
local GRID_TOTAL = GRID_X * GRID_Y

-- Total map size
local WIDTH_X = MAXIMUM_EXTENT_X - MINIMUM_EXTENT_X
local HEIGHT_Y = MAXIMUM_EXTENT_Y - MINIMUM_EXTENT_Y

-- Size of each grid
local GRID_UNIT_X = WIDTH_X / GRID_X
local GRID_UNIT_Y = HEIGHT_Y / GRID_Y

-- Maximum distance for hearing voip (checks for highest voice mode)
local MAX_VOIP_RANGE = 1
for _,v in pairs(Cfg.voiceModes) do
	local range = v[1]
	if range > MAX_VOIP_RANGE then
		MAX_VOIP_RANGE = range
	end
end

local Cfg = Cfg
local currentGrid = 0
local currentNeighbours = {-1, -1, -1}
local volume = 1.0
local intialized = false
local voiceTarget = 1

-- -- DEBUG DRAW GRID CORNERS
-- for x=0, GRID_X - 1 do
-- 	for y=0, GRID_Y -1 do
-- 		local blip  = AddBlipForCoord(MINIMUM_EXTENT_X + x * GRID_UNIT_X, MINIMUM_EXTENT_Y  + y * GRID_UNIT_Y, 0)
-- 		SetBlipScale(blip, 0.75)
-- 		SetBlipSprite(blip, 8)
-- 		SetBlipColour(blip, 1)
-- 	end
-- end

--Radio mix
local radioEffectId = CreateAudioSubmix('Radio')
SetAudioSubmixEffectRadioFx(radioEffectId, 0)
SetAudioSubmixEffectParamInt(radioEffectId, 0, GetHashKey('default'), 1)
AddAudioSubmixOutput(radioEffectId, 0)

--Phone mix
--[[local phoneEffectId = CreateAudioSubmix('Phone')
SetAudioSubmixEffectRadioFx(phoneEffectId, 0)
SetAudioSubmixEffectParamFloat(phoneEffectId, 0, `freq_hi`, 1.0)
AddAudioSubmixOutput(phoneEffectId, 0)]]--

playerServerId = GetPlayerServerId(PlayerId())
voiceData = {
	mode = 2,
	radio = 0,
	call = 0,
	routingBucket = 0
}
radioData = {}
callData = {}

function checkIfGridInBounds(grid)
	if grid > GRID_OFFSET and grid <= GRID_TOTAL then
		return grid
	else
		return -1
	end
end

local function getGridAndNearestNeighbours()
	local plyPos = GetEntityCoords(PlayerPedId(), false)

	-- Other routing buckets but main are in 32
	if voiceData.routingBucket ~= 0 then
		return BUCKET_GRID, {-1, -1, -1}
	end

	local y = plyPos.y - MINIMUM_EXTENT_Y
	local x = plyPos.x - MINIMUM_EXTENT_X

	local row = math.floor(y / GRID_UNIT_Y)
	local col = math.floor(x / GRID_UNIT_X)
	local gridX = x % GRID_UNIT_X
	local gridY = y % GRID_UNIT_Y

	local gridId = GRID_OFFSET + (row * GRID_X) + col

	-- Calculate neighbouring grids
	local nearestNeighbours = {-1, -1, -1}

	-- Get All neighbours
	-- for x1=-1, 1 do
	-- 	for y1=-1, 1 do
	-- 		if x1 ~= 0 or y1 ~= 0 then -- if not gridId
	-- 			local neighbour = gridId + x1 * GRID_X + y1
	-- 			if neighbour > GRID_OFFSET and neighbour <= GRID_TOTAL then
	-- 				table.insert(neighbours, neighbour)
	-- 			end
	-- 		end
	-- 	end
	-- end

	-- People in the middle of nowhere in the sea get this grid
	if row < 0 or row > GRID_X or col < 0 or col > GRID_Y then
		return GRID_OFFSET, nearestNeighbours
	end

	local nearBorderX = gridX < MAX_VOIP_RANGE or gridX > (GRID_UNIT_X - MAX_VOIP_RANGE)
	local nearBorderY = gridY < MAX_VOIP_RANGE or gridY > (GRID_UNIT_Y - MAX_VOIP_RANGE)
	if nearBorderX or nearBorderY then
		if gridX < (GRID_UNIT_X / 2) then
			if gridY < (GRID_UNIT_Y / 2) then -- Bottom-Left quadrant of current grid
				nearestNeighbours = {
					checkIfGridInBounds(gridId - 1 * GRID_X),
					checkIfGridInBounds(gridId - 1 * GRID_X - 1),
					checkIfGridInBounds(gridId - 1),
				}
			else -- Top-Left quadrant of current grid
				nearestNeighbours = {
					checkIfGridInBounds(gridId - 1 * GRID_X),
					checkIfGridInBounds(gridId - 1 * GRID_X + 1),
					checkIfGridInBounds(gridId + 1),
				}
			end
		else
			if gridY < (GRID_UNIT_Y / 2) then -- Bottom-Right quadrant of current grid
				nearestNeighbours = {
					checkIfGridInBounds(gridId + 1 * GRID_X),
					checkIfGridInBounds(gridId + 1 * GRID_X - 1),
					checkIfGridInBounds(gridId - 1),
				}
			else -- Top-Right quadrant of current grid
				nearestNeighbours = {
					checkIfGridInBounds(gridId + 1 * GRID_X),
					checkIfGridInBounds(gridId + 1 * GRID_X + 1),
					checkIfGridInBounds(gridId + 1),
				}
			end
		end
	end

	return gridId, nearestNeighbours
end

local function updateZone(force)
	local newGrid, neighbours = getGridAndNearestNeighbours()
	local neighboursChanged = neighbours[1] ~= currentNeighbours[1] or neighbours[2] ~= currentNeighbours[2]
		or neighbours[3] ~= currentNeighbours[3]

	if force or newGrid ~= currentGrid or neighboursChanged then
		currentGrid = newGrid
		currentNeighbours = neighbours

		MumbleClearVoiceTargetChannels(voiceTarget)
		NetworkSetVoiceChannel(currentGrid)
		MumbleAddVoiceTargetChannel(voiceTarget, currentGrid)
		-- print('Setting current grid to ' .. currentGrid)
		-- add neighbouring grids to voice targets
		for _,neighbour in pairs(neighbours) do
			if neighbour > 33 then
				MumbleAddVoiceTargetChannel(voiceTarget, neighbour)
				-- print('Adding whispertarget for neighbouring grid ' .. neighbour)
			end
		end
	end
end

RegisterNetEvent('rpuk_voice:updateRoutingBucket')
AddEventHandler('rpuk_voice:updateRoutingBucket', function(routingBucket)
	voiceData.routingBucket = routingBucket
end)

function round(value, numDecimalPlaces)
	return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", value))
end

RegisterKeyMapping('radio_voldown', 'Radio Volume -', 'keyboard', '')
RegisterCommand('radio_voldown', function()
	if volume < 0.1 then
		volume = 0.0
	else
		volume = round(volume - 0.1, 1)
	end

	SendNUIMessage({radioVolume = volume})
end)

RegisterKeyMapping('radio_volup', 'Radio Volume +', 'keyboard', '')
RegisterCommand('radio_volup', function()
	if volume > 0.9 then
		volume = 1.0
	else
		volume = round(volume + 0.1, 1)
	end

	SendNUIMessage({radioVolume = volume})
end)

function toggleVoice(tgtId, enabled, effectType)
	if enabled and effectType then
		if effectType == 'radio' then
			MumbleSetSubmixForServerId(tgtId, radioEffectId)
		elseif effectType == 'phone' then
			--MumbleSetSubmixForServerId(tgtId, phoneEffectId)
		end
	elseif not enabled then
		MumbleSetSubmixForServerId(tgtId, -1)
	end
	MumbleSetVolumeOverrideByServerId(tgtId, enabled and volume or -1.0)
end

function playerTargets(...)
	local targets = {...}

	MumbleClearVoiceTargetPlayers(voiceTarget)

	for i = 1, #targets do
		for id, _ in pairs(targets[i]) do
			MumbleAddVoiceTargetPlayerByServerId(voiceTarget, id)
		end
	end
end

function playMicClicks(clickType)
	if Cfg.micClicks then
		SendNUIMessage({
			sound = (clickType and "audio_on" or "audio_off"),
			volume = (clickType and (volume) or 0.05)
		})
	end
end

local playerMuted = false

RegisterCommand('cycleproximity', function()
	if not playerMuted then
		local voiceMode = voiceData.mode
		local newMode = voiceMode + 1

		voiceMode = (newMode <= #Cfg.voiceModes and newMode) or 1
		MumbleSetAudioInputDistance(Cfg.voiceModes[voiceMode][1] + 0.0)
		voiceData.mode = voiceMode
		-- make sure we update the UI to the latest voice mode
		SendNUIMessage({
			voiceMode = voiceMode - 1
		})
		TriggerEvent('rpuk_voice:setTalkingMode', voiceMode)
	end
end)

RegisterKeyMapping('cycleproximity', 'Cycle Proximity', 'keyboard', 'g')

RegisterNetEvent('rpuk_voice:mutePlayer')
AddEventHandler('rpuk_voice:mutePlayer', function()
	playerMuted = not playerMuted
	if playerMuted then
		MumbleSetAudioInputDistance(0.1)
	else
		MumbleSetAudioInputDistance(Cfg.voiceModes[voiceData.mode][1])
	end
end)

function setVoiceProperty(type, value)
	if type == "radioEnabled" then
		Cfg.radioEnabled = value
		SendNUIMessage({
			radioEnabled = value
		})
	elseif type == "micClicks" then
		Cfg.micClicks = value
	end
end
exports('setVoiceProperty', setVoiceProperty)

-- DEFAULT PMA VOICE
-- local function getGridZone()
-- 	local plyPos = GetEntityCoords(PlayerPedId(), false)
-- 	return 31 + (voiceData.routingBucket * 5) + math.ceil((plyPos.x + plyPos.y) / (128 * 2))
-- end

-- DEFAULT PMA VOICE
-- local function updateZone(force)
-- 	local newGrid = getGridZone()

-- 	if newGrid ~= currentGrid or force then
-- 		currentGrid = newGrid
-- 		MumbleClearVoiceTargetChannels(voiceTarget)
-- 		NetworkSetVoiceChannel(currentGrid)
-- 		-- add nearby grids to voice targets
-- 		for nearbyGrids = currentGrid - 3, currentGrid + 3 do
-- 			MumbleAddVoiceTargetChannel(voiceTarget, nearbyGrids)
-- 		end
-- 	end
-- end

Citizen.CreateThread(function()
	while not intialized do Wait(100) end

	while true do
		Wait(150)

		while not MumbleIsConnected() do
			currentGrid = -1 -- reset the grid to something out of bounds so it will resync their zone on disconnect.
			Wait(100)
		end

		updateZone()

		SendNUIMessage({
			usingRadio = Cfg.radioPressed,
			talking = NetworkIsPlayerTalking(PlayerId()) == 1
		})

		handleZoneOverride()
	end
end)

function handleZoneOverride()
	if voiceData.mode ~= 1 then
		local playerPed = PlayerPedId()
		local interiorId = GetInteriorFromEntity(playerPed)
		local enforceWhisper = false

		if interiorId == 519169 and IsValidInterior(interiorId) then -- Vesp
			local roomHash = GetRoomKeyFromEntity(playerPed)
			local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
			if roomId == 8 then
				enforceWhisper = true
			end
		elseif interiorId == 512001 and IsValidInterior(interiorId) then -- MRPD
			local roomHash = GetRoomKeyFromEntity(playerPed)
			local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
			if (roomId == 21 or roomId == 20 or roomId == 23 or roomId == 9 or roomId == 8 or roomId == 24 or roomId == 13 or roomId == 14) then
				enforceWhisper = true
			end
		elseif interiorId == 121602 and IsValidInterior(interiorId) then -- Pillbox
			local roomHash = GetRoomKeyFromEntity(playerPed)
			local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
			if (roomId == 1 or roomId == 2 or roomId == 8 or roomId == 12 or roomId == 11 or roomId == 7 or roomId == 14 or roomId == 24 or roomId == 3) then	
				enforceWhisper = true
			end
		elseif interiorId == 211970 and IsValidInterior(interiorId) then -- Prison (Reception)
			local roomHash = GetRoomKeyFromEntity(playerPed)
			local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
			if (roomId == 3 or roomId == 6 or roomId == 5 or roomId == 4) then
				enforceWhisper = true
			end
		elseif interiorId == 210946 and IsValidInterior(interiorId) then -- Prison (Hospital)
			local roomHash = GetRoomKeyFromEntity(playerPed)
			local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
			if (roomId == 5 or roomId == 4 or roomId == 2 or roomId == 3 or roomId == 1) then
				enforceWhisper = true
			end
		elseif interiorId == 166401 and IsValidInterior(interiorId) then -- OldMan
			local roomHash = GetRoomKeyFromEntity(playerPed)
			local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
			if (roomId == 1 or roomId == 8 or roomId == 11) then
				enforceWhisper = true
			end
		end

		if enforceWhisper then
			MumbleSetAudioInputDistance(Cfg.voiceModes[1][1])
			voiceData.mode = 1
			SendNUIMessage({voiceMode = 0})
			TriggerEvent('rpuk_voice:setTalkingMode', 1)
		end
	end
end

AddEventHandler('onClientResourceStart', function(resource)
	if resource ~= GetCurrentResourceName() then return end

	while not NetworkIsSessionStarted() do
		Wait(10)
	end

	TriggerServerEvent('rpuk_voice:registerVoiceInfo')

	-- this sets how far the player can hear.
	MumbleSetAudioOutputDistance(Cfg.voiceModes[#Cfg.voiceModes][1] + 0.0)

	local address = GetConvar('voice_externalAddress', '')
	local port = GetConvar('voice_externalPort', '')
	if address and port and address ~= '' and port ~= '' then
		MumbleSetServerAddress(address, tonumber(port))
	end

	while not MumbleIsConnected() do
		Wait(250)
	end

	MumbleSetVoiceTarget(0)
	MumbleClearVoiceTarget(voiceTarget)
	MumbleSetVoiceTarget(voiceTarget)
	MumbleSetAudioInputDistance(Cfg.voiceModes[voiceData.mode][1] + 0.0)

	updateZone()
	intialized = true

	-- not waiting right here (in testing) let to some cases of the UI
	-- just not working at all.
	Wait(1000)
	SendNUIMessage({
		voiceModes = json.encode(Cfg.voiceModes),
		voiceMode = voiceData.mode - 1,
		playerId = playerServerId,
		radioChannelOverrides = json.encode(Cfg.radioChannelOverrides)
	})
end)