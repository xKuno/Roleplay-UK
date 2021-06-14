local callbacks = {}
local isBlurry = false


RegisterNetEvent('rpuk_weather:isBlurry')
AddEventHandler('rpuk_weather:isBlurry', function(_isBlurry) isBlurry = _isBlurry end)

function openGui()
	SetNuiFocus(true,true)
	SendNUIMessage({open = true})
	SetTimecycleModifier('hud_def_blur')
end

function CloseGui()
	if not isBlurry then SetTimecycleModifier('default') end
	SetNuiFocus(false,false)
	SendNUIMessage({close = true})
end

RegisterNUICallback('close', function(data, cb)
	CloseGui()
	cb('ok')
end)

RegisterNUICallback('complete', function(data, cb)
	callbacks(data.pin)
	CloseGui()
	cb('ok')
end)

RegisterNetEvent('keypad:openKeyPadUi')
AddEventHandler('keypad:openKeyPadUi', function(data)
	callbacks = data
	openGui()
end)