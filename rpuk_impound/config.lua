Config = {}

Config.GovList = {
	"police",
}

Config.maxAmountofHours = 48

Config.maxAmountOfPaymentForImpound = 20000

Config.priceForInsurance = 500

Config.impoundLocations = {
	["pound_police_innocence"] = vector3(408.458, -1638.790, 28.292),
}


Config.interactions = {
	impoundZone = {
		text = "Push [E] to Interact",
		whitelisted = {},
		positions = {
			{
				x = 407.320,
				y = -1625.362,
				z = 28.4,
				dist = 10.0,
				location = "LosSantos",
				preferredDropOffPoint = {
					type = "legionsquare_lower",
					label = "Legion Square Lower"
				},
				spawnCoords = {
					coords = vector3(403.162, -1628.991, 28.292),
					heading = -129.938
				}
			},
		},
	},
}



