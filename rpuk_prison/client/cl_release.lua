runEscapeCheck = false
function prisonRadius()
	runEscapeCheck = true

	Citizen.CreateThread(function()
		while runEscapeCheck do
			local plyPed = PlayerPedId()
			local coord = GetEntityCoords(plyPed)
			local insidePrison = prisonDrain:isPointInside(coord)
			if not insidePrison then
				TriggerServerEvent("rpuk_prison:unJailPlayer", GetPlayerServerId(PlayerId(-1)), "escape", true)
				runEscapeCheck = false
				break
			end
			Wait(100)
		end
	end)
end

RegisterNetEvent("rpuk_prison:alertPolice")
AddEventHandler("rpuk_prison:alertPolice", function(targetName)
	TriggerServerEvent('rpuk_alerts:sNotification', {notiftype = "prisonerescape", extraNotes = targetName})
	TriggerEvent("rpuk:setPrisonState", false)
	TriggerServerEvent("rpuk_core:SavePlayerEssentials")
end)

RegisterNetEvent("rpuk_prison:spawnedBack")
AddEventHandler("rpuk_prison:spawnedBack", function()
	prisonRadius()
	TriggerEvent("rpuk:setPrisonState", true)
	TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.sex == 0 then
			TriggerEvent('skinchanger:loadClothes', skin, config.clothes.male)
		else
			TriggerEvent('skinchanger:loadClothes', skin, config.clothes.female)
		end
	end)
	TriggerEvent('mythic_notify:client:SendAlert', {length = 15000, type = 'inform', text = 'Welcome back! <br> Let me remind you that at any point you can check your remaining sentence from using the wheel menu (Interactions) near phone booths. Remember you can use the wheel menu (Interactions) to clean tables etc to cut time of your sentence!' })
end)

RegisterNetEvent("rpuk_prison:releasedPrisoner")
AddEventHandler("rpuk_prison:releasedPrisoner", function()
	local PlayerPed = PlayerPedId()
	DoScreenFadeOut(1000)
	Citizen.Wait(1200)
	runEscapeCheck = false
	SetEntityCoords(PlayerPed, config.postions.releasePoint.x, config.postions.releasePoint.y, config.postions.releasePoint.z)
	SetEntityHeading(PlayerPed, config.postions.releasePoint.h)
	DoScreenFadeIn(800)
	indicatorMarker()
	TriggerServerEvent("rpuk_core:SavePlayerEssentials")
	TriggerEvent("rpuk:setPrisonState", false)
	TriggerEvent('mythic_notify:client:SendAlert', {length = 16000, type = 'inform', text = 'Welcome back to the free world! <br> You have been given one more chance, do not fuck up. <br> Do not forget to collect your clothes from the desk on your right from the wheel menu (Interactions) and if you have any belongings please goto the front desk and use the wheel menu (Interactions)!' })
end)

function indicatorMarker()
	local coords = vector3(1840.4, 2578.8, 42.9 + 4.0)
	local timer = 15000
	while timer > 0 do
		Citizen.Wait(0)
		timer = timer - 10
		DrawMarker(0, coords, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 0.5, 116, 123,240, 100, true, true, 2, false, false, false, false)
	end
end