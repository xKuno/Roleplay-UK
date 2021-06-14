RegisterNetEvent('rpuk_prison:jobs')
AddEventHandler('rpuk_prison:jobs', function(type)
	TriggerEvent("mythic_progbar:client:progress", {
		name = "job",
		duration = config.jobAnims[type].time,
		label = config.jobAnims[type].label,
		useWhileDead = false,
		canCancel = true,
		controlDisables = {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			closeInv = true
		},
		animation = config.jobAnims[type].animation,
		prop = config.jobAnims[type].prop,
	}, function(status)
		if not status then
			TriggerServerEvent("rpuk_prison:resultFromJob", type)
		end
	end)
end)