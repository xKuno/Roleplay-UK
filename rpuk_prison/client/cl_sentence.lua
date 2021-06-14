local signmodel = GetHashKey("prop_police_id_board")
local textmodel = GetHashKey("prop_police_id_text")
local SignProp1 = {}
local SignProp2 = {}
local signRunning = false
local playingAnim = false


function blockInput()
	Citizen.CreateThread(function()
		while playingAnim do
			Citizen.Wait(0)
			DisableControlAction(2, 24, true)
			DisableControlAction(2, 25, true)
			DisableControlAction(2, 257, true)
			DisableControlAction(0, 73, true)
			DisableControlAction(2, 263, true)
			DisableControlAction(0, 30, true)
			DisableControlAction(0, 31, true)
			DisableControlAction(0, 36, true)
			DisableControlAction(0, 21, true)
	
		end
	end)
end

function CreateSign(name, time)
	local ped = PlayerPedId()
	SignProp1 = CreateObject(signmodel, 1, 1, 1, false, true, false)
	SignProp2 = CreateObject(textmodel, 1, 1, 1, false, true, false)
	AttachEntityToEntity(SignProp1, ped, GetPedBoneIndex(ped, 58868), 0.12, 0.24, 0.0, 5.0, 0.0, 70.0, true, true, false, false, 2, true);
	AttachEntityToEntity(SignProp2, ped, GetPedBoneIndex(ped, 58868), 0.12, 0.24, 0.0, 5.0, 0.0, 70.0, true, true, false, false, 2, true);

	signRunning = true
	
	local scaleform = LoadScaleform("mugshot_board_01")
	local text = CreateNamedRenderTargetForModel("ID_TEXT", textmodel)

	while not HasScaleformMovieLoaded(scaleform) do
		Citizen.Wait(0)
	end

	Citizen.CreateThread(function()
		while HasScaleformMovieLoaded(scaleform) and signRunning and text do
			Citizen.Wait(0)
	
			SetTextRenderId(text) -- set render target
			SetScriptGfxDrawOrder(4)
			SetScriptGfxDrawBehindPausemenu(true)
			SetScriptGfxDrawBehindPausemenu(false)
			SetScriptGfxDrawBehindPausemenu(true)
			DrawScaleformMovie(scaleform, 0.40, 0.35, 0.80, 0.75, 255, 255, 255, 255, 0)
			SetScriptGfxDrawBehindPausemenu(false)
			SetTextRenderId(GetDefaultScriptRendertargetRenderId())
	
			PushScaleformMovieFunction(scaleform, "SET_BOARD")
			PushScaleformMovieFunctionParameterString(time.." Months")
			PushScaleformMovieFunctionParameterString(capEachFirst(name))
			PushScaleformMovieFunctionParameterString("LOS SANTOS POLICE SERVICE")
			PushScaleformMovieFunctionParameterString(0)
			PushScaleformMovieFunctionParameterString(0)
			PushScaleformMovieFunctionParameterString("")
			PushScaleformMovieFunctionParameterString(0)
			PopScaleformMovieFunctionVoid()
		end

		ReleaseNamedRendertarget("ID_TEXT")
		SetScaleformMovieAsNoLongerNeeded(scaleform)
	end)
end

function StopSign()
	DeleteObject(SignProp1)
	DeleteObject(SignProp2)
	signRunning = false
end

RegisterNetEvent("rpuk_prison:sendToPrison")
AddEventHandler("rpuk_prison:sendToPrison", function(sentenceId, sentenceTime)
	local PlayerPed = PlayerPedId()
	local modelHash = -1320879687

	TriggerEvent("rpuk_restrain:unrestrain")
	TriggerEvent("rpuk_hud:toggleHud", false)
	TriggerEvent("rpuk_voice:removeRadioAbility")

	DoScreenFadeOut(400)
	Citizen.Wait(800)
	playingAnim = true
	blockInput()
	SetEntityCoords(PlayerPed, config.postions.prisonerPictureLocation.x, config.postions.prisonerPictureLocation.y, config.postions.prisonerPictureLocation.z - 1)
	SetEntityHeading(PlayerPed, config.postions.prisonerPictureLocation.h)
	TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.sex == 0 then
			TriggerEvent('skinchanger:loadClothes', skin, config.clothes.male)
		else
			TriggerEvent('skinchanger:loadClothes', skin, config.clothes.female)
		end
	end)
	Citizen.Wait(1200)
	LoadModel(modelHash)
	local PolicePed = CreatePed(5, modelHash, config.postions.aiSpawnLocation.x, config.postions.aiSpawnLocation.y, config.postions.aiSpawnLocation.z, config.postions.aiSpawnLocation.h, false)
	TaskStartScenarioInPlace(PolicePed, "WORLD_HUMAN_PAPARAZZI", 0, false)
	spawnCamera()
	CreateSign(ESX.Player.GetName(), sentenceTime)
	Citizen.Wait(900)
	DoScreenFadeIn(600)

	LoadAnim("mp_character_creation@customise@male_a")
	TriggerEvent("InteractSound_CL:PlayOnOne", "OK_NEXT", 0.8)
	Wait (1000)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "intro", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait(3000)
	TriggerEvent("InteractSound_CL:PlayOnOne", "StandStill", 0.8)
	Wait (6000)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "loop", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	PlaySoundFrontend(0, "Camera_Shoot", "Phone_Soundset_Franklin", 1)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "clothes_a", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	TriggerEvent("InteractSound_CL:PlayOnOne", "LookLeft", 0.8)
	Wait (500)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "profile_l_intro", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "profile_l_loop", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	PlaySoundFrontend(0, "Camera_Shoot", "Phone_Soundset_Franklin", 1)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "profile_l_outro", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait(800)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "loop", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	TriggerEvent("InteractSound_CL:PlayOnOne", "LookRight", 0.8)
	Wait (500)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "profile_r_intro", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "profile_r_loop", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait(800)
	PlaySoundFrontend(0, "Camera_Shoot", "Phone_Soundset_Franklin", 1)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "profile_r_outro", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait(800)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "loop", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (800)
	TriggerEvent("InteractSound_CL:PlayOnOne", "HoldSignStraight", 0.8)
	TaskPlayAnim(PlayerPed, "mp_character_creation@customise@male_a", "clothes_b", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
	Wait (3500)
	PlaySoundFrontend(0, "Camera_Shoot", "Phone_Soundset_Franklin", 1)
	TriggerEvent("InteractSound_CL:PlayOnOne", "WereDone147", 0.8)
	Wait (4000)
	playingAnim = false
	DoScreenFadeOut(500)
	Citizen.Wait(800)
	SetEntityCoords(PlayerPed, config.postions.cell.x, config.postions.cell.y, config.postions.cell.z)
	SetEntityHeading(PlayerPed, config.postions.cell.h)
	DeleteEntity(PolicePed)
	SetModelAsNoLongerNeeded(modelHash)
	Citizen.Wait(1000)
	DoScreenFadeIn(600)
	TriggerEvent("InteractSound_CL:PlayOnOne", "cell", 0.5)
	RenderScriptCams(false,  false,  0,  true,  true)
	FreezeEntityPosition(PlayerPed, false)
	DestroyCam(config.postions.cameraPostion.cameraId)
	StopSign()
	TriggerEvent("rpuk_hud:toggleHud", true)
	Citizen.Wait(5000)
	prisonRadius()
	TriggerEvent('mythic_notify:client:SendAlert', {length = 120000, type = 'inform', text = 'Welcome to HMP Bolingbroke! <br> <br> This is no place for fun, this a chance for you to understand that what you did was wrong and reflect on how your actions may have affected others. <br> <br> However, while you are here, you have the ability to work hard and keep the Prison tidy through tasks such as checking the stock, cleaning tables and washing the dishes (You can do this via Caps Wheel). <br> <br> While working for the prison if... and only if... your behaviour has been good, we may look at reducing your sentence. <br> <br> While here you can use the wall phones on the lower floor to check your remaining sentence while holding caps lock. <br> <br> Los Santos Prison Service' })
	TriggerServerEvent("rpuk_core:SavePlayerEssentials")
	TriggerEvent("rpuk:setPrisonState", true)
end)

RegisterNetEvent("rpuk_jail:jailWheel")
AddEventHandler("rpuk_jail:jailWheel", function()
	openPrisonUI()
end)

-- TriggerEvent('chat:addSuggestion', '/jail', 'Jail a player.', {{ name="sessionID", help="SessionID of player"}, { name="time", help="Jail time between 0 - 1000"}, { name="reason", help="Reason why you are sending the player to jail."}})
-- RegisterCommand('jail', function(source, args, raw)
-- 	local target = tonumber(args[1])
-- 	local time = tonumber(args[2])
-- 	local reason = ""

-- 	for i=3,#args,1 do
-- 		reason = reason.." "..args[i]
-- 	end

-- 	if target ~= nil then
-- 		if time ~= nil then
-- 			if time < 1000 and time > 0 then
-- 				TriggerServerEvent("rpuk_prison:jailPlayer", target, time, reason)
-- 			else
-- 				TriggerEvent('mythic_notify:client:SendAlert', { length = 6000, type = 'error', text = "You can not send someone to jail for "..time.."."})
-- 			end
-- 		else
-- 			TriggerEvent('mythic_notify:client:SendAlert', { length = 6000, type = 'error', text = "Please enter the suspect's special ID" })
-- 		end
-- 	else
-- 		TriggerEvent('mythic_notify:client:SendAlert', { length = 6000, type = 'error', text = 'Please enter a amount of time!' })
-- 	end
-- end)


local isMenuOpen = false

function openPrisonUI()
	if isInList(ESX.Player.GetJobName(), config.abilityToUseJailing) then
		Citizen.Wait(500)
		SendNUIMessage({name = 'openSentenceMenu'})
		SetNuiFocus(true, true)
		isMenuOpen = true
	end
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() and isMenuOpen then
		SetNuiFocus(false)
	end
end)

RegisterNUICallback('completeMenu', function(data, cb)
	SetNuiFocus(false)
	isMenuOpen = false
	TriggerEvent('mythic_notify:client:SendAlert', { length = 6000, type = 'inform', text = "Your request has been sent through!"})
end)

RegisterNUICallback('onMenuClose', function(data, cb)
	SetNuiFocus(false)
	isMenuOpen = false
end)

RegisterNetEvent('rpuk_bug:closeNUI')
AddEventHandler('rpuk_bug:closeNUI', function()
	if isMenuOpen then
		SetNuiFocus(false)
		isMenuOpen = false
	end
end)

RegisterNUICallback('jailPlayer', function(data, cb)
	if isInList(ESX.Player.GetJobName(), config.abilityToUseJailing) then
		TriggerServerEvent("rpuk_prison:jailPlayer", tonumber(data.session), tonumber(data.time), data.reason)
		cb({result = true})
	else
		cb({result = false})
	end
end)
