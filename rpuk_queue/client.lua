Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do
		Citizen.Wait(50)
	end

	TriggerServerEvent('rpuk_queue:connected')	
end)
