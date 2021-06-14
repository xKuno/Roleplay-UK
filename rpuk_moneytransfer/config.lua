config = {}
config.percentageForReward = 2
config.percentageForFund = 2

config.dropoffLocations = {
	dropOff = {
		whitelisted = {"gruppe6"},
		positions = {
			{
				x = 4.4722294807434,
				y = -676.19390869141,
				z = 14.7,
				items = {
					money_bag = {
						price = 1000
					}
				},
				text = "Push [E] to drop off money",
			},
			{
				x = 0.40346711874008,
				y = -657.501953125,
				z = 15.120307159424,
				items = {
					gold = {
						price = 240
					},
				},
				text = "Push [E] to drop off gold",
			},
		}
	}
}


config.pickupLocations = {
	transfer = {
		text = "Push [E] to collect",
		whitelisted = {"gruppe6"},
		dist = 4.0,
		positions = {
			{
				locationName = "Paleto Bank",
				x = -112.8,
				y = 6470.5,
				z = 30.4,
				items = {
					gold = {
						count = 40,
						max = 40
					},
					money_bag = {
						count = 75,
						max = 75
					},
				},
				restockTimer = 21600,
				defaultTimer = 21600,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Great Ocean Bank",
				x = -2962.0,
				y = 482.9,
				z = 14.5,
				items = {
					money_bag = {
						count = 50,
						max = 50
					},
				},
				restockTimer = 14400,
				defaultTimer = 14400,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Pacific Bank",
				x = 251.87509155273,
				y = 222.24612426758,
				z = 105.1,
				items = {
					gold = {
						count = 60,
						max = 60
					},
					money_bag = {
						count = 150,
						max = 150
					},
				},
				restockTimer = 43200,
				defaultTimer = 43200,
				requiredAmountOfG6 = 6,
			},
			{
				locationName = "Legion Bank",
				x = 148.2,
				y = -1040.7,
				z = 28.1,
				items = {
					money_bag = {
						count = 60,
						max = 60
					},
				},
				restockTimer = 14400,
				defaultTimer = 14400,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Route68 Bank",
				x = 1176.4,
				y = 2707.4,
				z = 36.8,
				items = {
					money_bag = {
						count = 50,
						max = 50
					},
				},
				restockTimer = 14400,
				defaultTimer = 14400,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Bean Machine",
				x = -634.61590576172,
				y = 225.32069396973,
				z = 81.025634765625,
				items = {
					money_bag = {
						count = 20,
						max = 20
					},
				},
				restockTimer = 7200,
				defaultTimer = 7200,
				requiredAmountOfG6 = 2,
			},
			{
				locationName = "Meteor St Bank",
				x = 313.8,
				y = -279.5,
				z = 52.9,
				items = {
					money_bag = {
						count = 50,
						max = 50
					},
				},
				restockTimer = 14400,
				defaultTimer = 14400,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Boulevard Del Perro Bank",
				x = -1212.4,
				y = -331.2,
				z = 36.5,
				items = {
					money_bag = {
						count = 50,
						max = 50
					},
				},
				restockTimer = 14400,
				defaultTimer = 14400,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Hawick Ave Bank",
				x = -351.3,
				y = -50.4,
				z = 47.8,
				items = {
					money_bag = {
						count = 50,
						max = 50
					},
				},
				restockTimer = 14400,
				defaultTimer = 14400,
				requiredAmountOfG6 = 4,
			},
			{
				locationName = "Adams Apple Blvd Ammunition",
				x = 3.1,
				y = -1107.7,
				z = 28.7,
				items = {
					money_bag = {
						count = 20,
						max = 20
					},
				},
				restockTimer = 7200,
				defaultTimer = 7200,
				requiredAmountOfG6 = 2,
			},

			{
				locationName = "Vespucci Boulevard Ammunition",
				x = 847.1,
				y = -1034.8,
				z = 26.8,
				items = {
					money_bag = {
						count = 20,
						max = 20
					},
				},
				restockTimer = 7200,
				defaultTimer = 7200,
				requiredAmountOfG6 = 2,
			},

			{
				locationName = "Spanish Ave Ammunition",
				x = 254.9,
				y = -46.0,
				z = 68.6,
				items = {
					money_bag = {
						count = 20,
						max = 20
					},
				},
				restockTimer = 7200,
				defaultTimer = 7200,
				requiredAmountOfG6 = 2,
			},
		},
	}
}
