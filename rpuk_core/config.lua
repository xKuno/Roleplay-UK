Config 				  = {}
Config.CooldownPolice = 700
Config.cooldown		  = 1700

-- Add/remove weapon hashes here to be added for holster checks.
Config.Weapons = {
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_FLAREGUN",
	"WEAPON_STUNGUN",
	"WEAPON_REVOLVER",
	"WEAPON_GROVEM1911",
	"WEAPON_BALLAM1911",
	"WEAPON_VAGOSM1911",
	"WEAPON_MARAGRANDEM1911",
	"WEAPON_AZTECAM1911",
	"WEAPON_TRIADSM1911",
}
-----------------------------------

Config.ReloadTime = 2000 --ms

Config.Ammo = {
	{
		name = 'pistol_ammo',
		weapons = {
			'WEAPON_PISTOL',
			'WEAPON_PISTOL_mk2',
			'WEAPON_APPISTOL',
			'WEAPON_SNSPISTOL',
			'WEAPON_COMBATPISTOL',
			'WEAPON_HEAVYPISTOL',
			'WEAPON_MACHINEPISTOL',
			'WEAPON_MARKSMANPISTOL',
			'WEAPON_PISTOL50',
			'WEAPON_VINTAGEPISTOL',
			"WEAPON_GROVEM1911",
			"WEAPON_BALLAM1911",
			"WEAPON_VAGOSM1911",
			"WEAPON_MARAGRANDEM1911",
			"WEAPON_AZTECAM1911",
			"WEAPON_TRIADSM1911",
		},
		count = 30
	},
	{
		name = 'shotgun_ammo',
		weapons = {
			'WEAPON_ASSAULTSHOTGUN',
			'WEAPON_AUTOSHOTGUN',
			'WEAPON_BULLPUPSHOTGUN',
			'WEAPON_DBSHOTGUN',
			'WEAPON_HEAVYSHOTGUN',
			'WEAPON_PUMPSHOTGUN',
			'WEAPON_SAWNOFFSHOTGUN'
		},
		count = 12
	},
	{
		name = 'smg_ammo',
		weapons = {
			'WEAPON_ASSAULTSMG',
			'WEAPON_COMBATPDW',
			'WEAPON_MICROSMG',
			'WEAPON_MINISMG',
			'WEAPON_SMG'
		},
		count = 45
	},
	{
		name = 'rifle_ammo',
		weapons = {
			'WEAPON_ADVANCEDRIFLE',
			'WEAPON_ASSAULTRIFLE',
			'WEAPON_BULLPUPRIFLE',
			'WEAPON_CARBINERIFLE',
			'WEAPON_CARBINERIFLE_MK2',
			'WEAPON_SPECIALCARBINE',
			'WEAPON_COMPACTRIFLE'
		},
		count = 45
	},
	{
		name = 'sniper_ammo',
		weapons = {
			'WEAPON_SNIPERRIFLE',
			'WEAPON_HEAVYSNIPER',
			'WEAPON_MARKSMANRIFLE'
		},
		count = 10
	}
}

Config.clothes = {
	["weapon"] = { "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_STUNGUN" },
	["peds"] = {
	  ["mp_m_freemode_01"] = { -- Male multiplayer ped
		["components"] = {
		  [7] = { -- Component ID, "Neck" or "Teeth" category
			[1] = 3, -- Drawable ID, can specify multiple, separated by comma and or line breaks
			[8] = 5,
			[42] = 43,
			[110] = 111,
			[119] = 120,
			[4] = 2,
			[7] = 6
		  },
		  [8] = {
			[16] = 18
		  }
		}
	  },
	  ["mp_f_freemode_01"] = { -- Female multiplayer ped
		["components"] = {
		[7] = { -- Component ID, "Neck" or "Teeth" category
			[1] = 3, -- Drawable ID, can specify multiple, separated by comma and or line breaks
			[8] = 5,
			[42] = 43,
			[110] = 111,
			[119] = 120,
			[4] = 2
		  },
		  [8] = {
			[16] = 18
		  }
		}
	  },
	}
}


-- [[ Zones ]] --

Config.Zones = {
	{
		type= "marker",
		Text = "Press [~b~E~s~] to Leave ~o~Money Wash~s~.",
		Marker = vector3(1138.075, -3198.640, -40.661),
		MarkerSettings = {action = "teleport", r = 255, g = 55, b = 55, a = 100, type = 1, x = 2.5, y = 2.5, z = 0.5},
		TeleportPoint = { coords = vector3(1196.531, -3253.551, 6.100), h = 122 }
	},
	{
		type= "marker",
		Text = "Press [~b~E~s~] to Leave [~r~Returns you to Mosleys - Logged~s~]",
		Marker = vector3(-1495.587, -2985.658, -83.207),
		MarkerSettings = {action = "teleport", r = 255, g = 255, b = 255, a = 100, type = 1, x = 2.0, y = 2.0, z = 0.5},
		TeleportPoint = { coords = vector3(-21.040, -1660.687, 28.480), h = 122 }
	},
	{
		type= "marker",
		Text = "Press [~b~E~s~] to Leave [~r~Returns you to Autocare - Logged~s~]",
		Marker = vector3(-1495.573, -2990.799, -83.207),
		MarkerSettings = {action = "teleport", r = 255, g = 255, b = 255, a = 100, type = 1, x = 2.0, y = 2.0, z = 0.5},
		TeleportPoint = { coords = vector3(949.234, -961.385, 38.500), h = 122 }
	},
	{
		type= "marker",
		Text = "Press [~b~E~s~] to Leave [~r~Returns you to Benefactors - Logged~s~]",
		Marker = vector3(-1495.572, -2996.058, -83.207),
		MarkerSettings = {action = "teleport", r = 255, g = 255, b = 255, a = 100, type = 1, x = 2.0, y = 2.0, z = 0.5},
		TeleportPoint = { coords = vector3(-51.447, 73.762, 70.950), h = 122 }
	},
	{
		type= "marker",
		Text = "Press [~b~E~s~] to Leave [~r~Returns you to Beekers - Logged~s~]",
		Marker = vector3(-1495.603, -3000.709, -83.207),
		MarkerSettings = {action = "teleport", r = 255, g = 255, b = 255, a = 100, type = 1, x = 2.0, y = 2.0, z = 0.5},
		TeleportPoint = { coords = vector3(105.959, 6627.304, 30.787), h = 122 }
	},
	{
		type= "marker",
		Text = "Press [~b~E~s~] to Access ~b~Clubhouse~s~.",
		Marker = vector3(1991.149, 3059.862, 46.055),
		MarkerSettings = {job = "lost", action = "teleport", r = 150, g = 100, b = 0, a = 255, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(459.493, -1008.010, 27.253), h = 180 }
	},
	{
		type= "marker",
		Text = "Not quite sure how you got down here\nPress [~b~E~s~] to Go Back To ~b~Reality~s~.",
		Marker = vector3(2.75, 2.27, -1.25),
		MarkerSettings = {action = "teleport", r = 255, g = 0, b = 0, a = 255, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-2.762, 8.423, 69.935), h = 180 }
	},
	-- [[ Automatic - No Button Interaction ]] --
	{ -- [[ IKEA LEAVE 1 ]] --
		type= "marker",
		Marker = vector3(-1266.961, -2959.372, -49.490),
		MarkerSettings = {action = "auto_teleport", r = 255, g = 255, b = 0, a = 100, type = 1, x = 5.0, y = 5.0, z = 0.5},
		TeleportPoint = { coords = vector3(49.499, -1734.550, 28.303), h = 270 }
	},
	{ --- [[ Casino Entrance 1 ]] --
		type= "marker",
		Marker = vector3(931.5, 44.8, 80.1),
		MarkerSettings = {action = "auto_teleport", r = 0, g = 150, b = 200, a = 100, type = -1, x = 5.5, y = 2.5, z = 0.5},
		TeleportPoint = { coords = vector3(1090.537, 209.431, -50.000), h = 180 }
	},
	{ --- [[ Casino Entrance 2 ]] --
		type= "marker",
		Marker = vector3(929.2, 40.4, 80.1),
		MarkerSettings = {action = "auto_teleport", r = 0, g = 150, b = 200, a = 100, type = -1, x = 5.5, y = 2.5, z = 0.5},
		TeleportPoint = { coords = vector3(1090.537, 209.431, -50.000), h = 180 }
	},
	{ --- [[ Casino Leave 1 ]] --
		type= "marker",
		Marker = vector3(1089.688, 204.933, -50.000),
		MarkerSettings = {action = "auto_teleport", r = 0, g = 150, b = 200, a = 100, type = -1, x = 3.0, y = 3.0, z = 0.5},
		TeleportPoint = { coords = vector3(923.266, 47.645, 80.106), h = 180 }
	},
	{ --- [[ Spawn House Leave ]] --
		type= "marker",
		Marker = vector3(-24.726, -597.532, 79.033),
		MarkerSettings = {action = "auto_teleport", r = 0, g = 150, b = 200, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-51.466, -584.704, 35.800), h = 180 }
	},

	--- [[ Specific Large Pop Zones ]] --
	{ -- Casino (No Weapons, Timescale Modifier)
		type= "interior",
		interiorID = 275201,
		action = "casino"
	},
	{ -- Casino penthouse (BlackJack)
		type= "interior",
		interiorID = 274689,
		action = "penthouse"
	},
	{ -- Pillbox Hospital (No Vehicles)
		type= "marker",
		Marker = vector3(304.44161987305, -586.57824707031, 42.284076690674),
		MarkerSettings = {action = "pillbox", r = 0, g = 150, b = 200, a = 0, type = 1, x = 5.0, y = 5.0, z = 5.5},
	},

	-- Casino Chip Desk
	{
		type= "marker",
		Text = "Press [~b~E~s~] to go behind the ~b~cashier desk~s~.",
		Marker = vector3(1120.8, 214.6, -50.4),
		MarkerSettings = {job = "casino", action = "teleport", r = 0, g = 150, b = 200, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1120.7, 222.1, -50.4), h = 123.23 }
	},
	{
		type= "marker",
		Text = "Press [~b~E~s~] to exit the ~b~cashier desk~s~.",
		Marker = vector3(1120.7, 222.1, -50.4),
		MarkerSettings = {job = "casino", action = "teleport", r = 0, g = 150, b = 200, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1120.8, 214.6, -50.4), h = 123.23 }
	},
}

Config.Progression = {
	mechanic = {
		progress = 'pro_mechanic',
		hasMutex = true,
		label = 'Mechanic Progression',
		increase = 0.04,
		max = 4.0
	},
	ranger = {
		progress = 'pro_ranger',
		hasMutex = true,
		label = 'Ranger Progression',
		increase = 0.1,
		max = 4.0
	}
}

Config.vendingMachines = {
	[-742198632] = { -- Water Despenser
		objOffset = vector3(0, 0, 1.2),
		text = "[~g~E~s~] Use Water Despenser ~r~",
		itemList = {
			{item = "water", price = 100, label = "Cup Of Water"}
		}
	},
	[1099892058] = { -- Water Despenser
		objOffset = vector3(0, 0, 1.2),
		text = "[~g~E~s~] USE VENDING MACHINE ~r~",
		itemList = {
			{item = "water", price = 100, label = "Cup Of Water"}
		}
	},
	[690372739] = { -- Coffee Machine
		objOffset = vector3(0, 0, 1.2),
		text = "[~g~E~s~] USE VENDING MACHINE ~r~",
		itemList = {
			{item = "coffee", price = 120, label = "Cup Of Coffee"}
		}
	},
	[1114264700] = { -- Sprunk Green Vending Machine
		objOffset = vector3(0, 0, 0.2),
		text = "[~g~E~s~] USE VENDING MACHINE ~r~",
		itemList = {
			{item = "water", price = 100, label = "Cup Of Water"},
			{item = "redgull", price = 180, label = "Redgull"},
			{item = "lemonade", price = 250, label = "Lemon-Grenade"},
		},
	},
	[992069095] = { -- Cola Red Vending Machine
		objOffset = vector3(0, 0, 0.2),
		text = "[~g~E~s~] USE VENDING MACHINE ~r~",
		itemList = {
			{item = "water", price = 100, label = "Cup Of Water"},
			{item = "redgull", price = 180, label = "Redgull"},
			{item = "cola", price = 250, label = "Koca-Cola"},
		},
	},
	[-654402915] = { -- Vending Machine Food
		objOffset = vector3(0, 0, 0.2),
		text = "[~g~E~s~] USE VENDING MACHINE ~r~",
		itemList = {
			{item = "chocolate", price = 300, label = "Kat-Kit"},
			{item = "crisps", price = 320, label = "Bag Of Talkers"},
		},
	},
	[-1034034125] = { -- Candybox Vending Machine
		objOffset = vector3(0, 0, 0.2),
		text = "[~g~E~s~] USE VENDING MACHINE ~r~",
		itemList = {
			{item = "christmas_chocolate", price = 250, label = "Chocolate Bar"},
			{item = "christmas_candycane", price = 250, label = "Candy Cane"},
			{item = "hallow_sweet_1", price = 250, label = "Small Sweet Bag"},
			{item = "christmas_gingerbread", price = 250, label = "Ginger Bread"},
			{item = "chocolate", price = 300, label = "Kat-Kit"},
			{item = "crisps", price = 320, label = "Bag Of Talkers"},
		},
	},
	[-1581502570] = { -- Hotdog food stand
		objOffset = vector3(0, 0, 1.2),
		text = "[~g~E~s~] USE HOTDOG MACHINE ~r~",
		itemList = {
			{item = "hotdog", price = 400, label = "Hotdog"},
			{item = "cola", price = 250, label = "Koca-Cola"},
		},
	},
	[1129053052] = { -- Burger food stand
		objOffset = vector3(0, 0, 1),
		text = "[~g~E~s~] USE BURGER STAND ~r~",
		itemList = {
			{item = "burger", price = 480, label = "Burger"},
			{item = "cola", price = 250, label = "Koca-Cola"},
		},
	},
}

-----------------------------------

-- [[ Elevators ]]

Config.elevator_access_points = {
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 5.233), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 10.672), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 14.024), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 19.326), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 23.383), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 27.208), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 31.105), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 34.736), dist = 2, sizeOfText = 0.5},
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(-1098.061, -849.675, 38.609), dist = 2, sizeOfText = 0.5},
	{prompt = "Admin To Vespucci Police\nPress [~b~E~s~] To Access Elevator", pool = "police_vesp1", location = vector3(116.354, -639.512, 206.366), dist = 2, sizeOfText = 0.5}, -- admin

	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(331.965, -597.182, 43.619), dist = 2, sizeOfText = 0.5}, -- Main Floor
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(329.971, -602.658, 43.619), dist = 2, sizeOfText = 0.5}, -- Main Floor
	--{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(325.628, -603.433, 43.619), dist = 2, sizeOfText = 0.5}, -- Main Floor
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(338.274, -583.719, 74.463), dist = 2, sizeOfText = 0.5}, -- helipad
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(344.721, -584.740, 29.152), dist = 2, sizeOfText = 0.5}, -- lower 1
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(346.078, -581.011, 29.104), dist = 2, sizeOfText = 0.5}, -- lower 2
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(339.725, -586.226, 29.139), dist = 2, sizeOfText = 0.5}, -- lower 3
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(341.066, -582.537, 29.145), dist = 2, sizeOfText = 0.5}, -- lower 4
	{prompt = "Admin To Pillbox Hospital\nPress [~b~E~s~] To Access Elevator", pool = "public_pillbox1", location = vector3(117.380, -636.692, 206.366), dist = 2, sizeOfText = 0.5}, -- admin

	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_humane", location = vector3(3541.915, 3673.860, 21.092), dist = 2, sizeOfText = 0.5}, -- Upper
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_humane", location = vector3(3541.915, 3673.860, 28.228), dist = 2, sizeOfText = 0.5}, -- Lower

	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_humane", location = vector3(3541.915, 3673.860, 21.092), dist = 2, sizeOfText = 0.5}, -- Upper
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_humane", location = vector3(3541.915, 3673.860, 28.228), dist = 2, sizeOfText = 0.5}, -- Lower

	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_fibbuilding", location = vector3(106.46172332764, -638.63885498047, 31.632551193237), dist = 2, sizeOfText = 0.5}, -- groundFloor
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_fibbuilding", location = vector3(139.410, -764.427, 45.911), dist = 2, sizeOfText = 0.5}, -- Lower
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_fibbuilding", location = vector3(136.636, -763.417, 242.294), dist = 2, sizeOfText = 0.5}, -- iopc
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "public_fibbuilding", location = vector3(156.986, -756.959, 258.451), dist = 2, sizeOfText = 0.5}, -- council top

	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "rm_office", location = vector3(-1365.1018066406, -470.12191772461, 32.131816864014), dist = 2, sizeOfText = 0.5}, -- RM Office Car Park
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "rm_office", location = vector3(-1369.8299560547, -472.22940063477, 84.92463684082), dist = 2, sizeOfText = 0.5}, -- RM Office Roof
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "rm_office", location = vector3(-1394.9742431641, -481.12286376953, 72.241989135742), dist = 2, sizeOfText = 0.5}, -- RM Office

	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "g6_office", location = vector3(21.17197227478, -903.10894775391, 30.164484024048), dist = 2, sizeOfText = 0.5}, -- Gruppe6 office
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "g6_office", location = vector3(-0.75470542907715, -702.50799560547, 16.587804794312), dist = 2, sizeOfText = 0.5}, -- Gruppe6 Vault
	{prompt = "Press [~b~E~s~] To Access Elevator", pool = "g6_office", location = vector3(21.209489822388, -903.13525390625, 33.592067718506), dist = 2, sizeOfText = 0.5}, -- Gruppe6 Armoury

	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(965.4, 58.3, 112.7), dist = 4, sizeOfText = 1}, -- Casino Garden
	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(981.5, 54.0, 116.2), dist = 2, sizeOfText = 0.5}, -- Casino Penthouse
	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(983.3, 57.0, 116.3), dist = 2, sizeOfText = 0.5}, -- Casino Penthouse
	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(1084.9, 213.9, -49.1), dist = 2, sizeOfText = 0.5}, -- Casino Reception
	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(1119.4, 267.6, -45.5), dist = 2, sizeOfText = 0.5}, -- Casino Management
	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(978.4, 62.4, 120.4), dist = 2, sizeOfText = 0.5}, -- Casino Roof
	{prompt = "Press [~b~E~s~] To Access Lift", pool = "casino", location = vector3(971.5, 51.3, 120.3), dist = 2, sizeOfText = 0.5}, -- Casino Roof
}

Config.elevators = {
	["police_vesp1"] = {
		{label = "[6] Helipad | Roof", location = vector3(-1096.271, -850.282, 37.307), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[5] National Crime", location = vector3(-1096.271, -850.282, 33.361), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[4] Operations | Command", location = vector3(-1096.271, -850.282, 29.757), job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[3] Gym | Division Offices | Briefing", location = vector3(-1096.271, -850.282, 25.828), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[2] Cafe | Department Offices", location = vector3(-1096.271, -850.282, 22.039), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[1] Lobby | Interviews | Conference", location = vector3(-1096.271, -850.282, 18.001), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[-3] Armory | Locker Room | Garage 1", location = vector3(-1096.271, -850.282, 12.687), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[-2] Crime Lab | Evidence", location = vector3(-1096.271, -850.282, 9.277), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
		{label = "[-1] Detention | ID & Interrogation | Garage 2", location = vector3(-1096.271, -850.282, 3.884), vehicle = false, job = {"police", "ambulance"}, unlockable = {"police"}},
	},
	["public_pillbox1"] = {
		{label = "[3] Helipad | Roof", location = vector3(339.256, -584.066, 73.164), vehicle = false},
		{label = "[2] Main Hospital", location = vector3(329.227, -597.939, 42.284), vehicle = false},
		{label = "[1] Lower Pillbox | Garage | A&E Intake", location = vector3(345.894, -584.686, 27.797), vehicle = false},
	},
	["public_humane"] = {
		{label = "[0] Main Operations Floor", location = vector3(3540.619, 3675.610, 27.121), vehicle = false},
		{label = "[-1] Lower Maintenance Floor", location = vector3(3540.619, 3675.610, 19.992), vehicle = false},
	},
	["public_fibbuilding"] = {
		{label = "[-1] Parking Floor", location = vector3(106.46172332764, -638.63885498047, 31.632551193237), vehicle = false},
		{label = "[0] Ground Floor", location = vector3(139.03, -762.65, 45.75), vehicle = false},
		{label = "[49] IOPC", location = vector3(136.10, -761.71, 242.15), vehicle = false},
		{label = "[53] Council & Private Meetings", location = vector3(154.94, -757.77, 258.15), vehicle = false},
	},
	["rm_office"] = {
		{label = "[24] Roof", location = vector3(-1369.1324462891, -471.53942871094, 83.446937561035), vehicle = false},
		{label = "[20] Office", location = vector3(-1395.8461914062, -481.21551513672, 71.042144775391), vehicle = false},
		{label = "[-1] Car Park", location = vector3(-1364.8468017578, -472.50140380859, 30.595788955688), vehicle = false},
	},
	["g6_office"] = {
		{label = "[2] Armoury", location = vector3(21.736423492432, -902.30206298828, 32.436225891113)},
		{label = "[1] Office", location = vector3(22.087766647339, -902.40411376953, 28.981962203979)},
		{label = "[-5] Vault", location = vector3(1.1360368728638, -702.58941650391, 15.131031036377)},
	},
	["casino"] = {
		{label = "[14] Roof / Helipad", location = vector3(977.8, 61.7, 119.2), vehicle = false, job = {"casino", "lost"}, unlockable = {"casino"}},
		{label = "[10] Penthouse", location = vector3(983.0863037109375,56.16635131835937,115.16407775878906), vehicle = false, job = {"casino"}, unlockable = {"casino"}},
		{label = "[9] Roof Garden", location = vector3(964.6673583984375, 58.79635238647461, 111.55304718017578), vehicle = false, job = {"casino"}, unlockable = {"casino"}},
		{label = "[2] Casino Management Offices", location = vector3(1119.4588623046876, 266.69317626953127, -46.84099960327148), vehicle = false, job = {"casino"}, unlockable = {"casino"}},
		{label = "[1] Casino Floor", location = vector3(1085.547607421875, 214.61199951171876, -50.20043563842773), vehicle = false, job = {"casino", "lost"}, unlockable = {"casino"}},
	}
}

-----------------------------------

-- [[ Dance Floors / Clubs ]] --
Config.DANCE_FLOORS = { -- Must be at least 300 units away from eachother
	["bahamamamas"] = {venue = "Bahama Mamas", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-1378.8, -628.4, 30.5), maxDistance = 75,
		effects = {
			["firework"] = {
				active = true,
				dict = "scr_indep_fireworks",
				particleName = "scr_indep_firework_shotburst",
				particleScale = 0.3,
				loopCount = 25,
				fxWaitTimer = 500,
				locations = {
					vector3(-1378.6, -616.2, 28.9),
					vector3(-1390.1, -623.2, 28.9),
					vector3(-1388.4, -626.3, 28.9),
					vector3(-1376.6, -619.0, 28.9),
					vector3(-1376.2, -621.7, 28.9),
					vector3(-1377.5, -625.6, 28.9),
					vector3(-1382.1, -628.4, 28.9),
					vector3(-1386.2, -627.8, 28.9),
				}
			},
			["smoke"] = {
				active = true,
				dict = "core",
				particleName = "exp_grd_grenade_smoke",
				particleScale = 2.0,
				loopCount = 25,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(-1378.6, -616.2, 28.9),
					vector3(-1390.1, -623.2, 28.9),
					vector3(-1388.4, -626.3, 28.9),
					vector3(-1376.6, -619.0, 28.9),
					vector3(-1376.2, -621.7, 28.9),
					vector3(-1377.5, -625.6, 28.9),
					vector3(-1382.1, -628.4, 28.9),
					vector3(-1386.2, -627.8, 28.9),
				}
			},
			["fire"] = {
				active = true,
				dict = "core",
				particleName = "proj_molotov_flame",
				particleScale = 30.0,
				loopCount = 10,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(-1378.6, -616.2, 28.9),
					vector3(-1390.1, -623.2, 28.9),
					vector3(-1388.4, -626.3, 28.9),
					vector3(-1376.6, -619.0, 28.9),
					vector3(-1376.2, -621.7, 28.9),
					vector3(-1377.5, -625.6, 28.9),
					vector3(-1382.1, -628.4, 28.9),
					vector3(-1386.2, -627.8, 28.9),
				}
			},

		}
	},
	["tequilala"] = {venue = "Tequi-La-La", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-560.2, 281.5, 85.5), maxDistance = 20,
		effects = {
			["firework"] = {
				active = true,
				dict = "scr_indep_fireworks",
				particleName = "scr_indep_firework_shotburst",
				particleScale = 0.3,
				loopCount = 25,
				fxWaitTimer = 500,
				locations = {
					vector3(-551.6, 288.6, 82.0),
					vector3(-552.3, 279.8, 82.0),
					vector3(-556.7, 290.6, 84.6),
					vector3(-557.6, 280.4, 84.6),
				}
			},
			["smoke"] = {
				active = true,
				dict = "core",
				particleName = "exp_grd_grenade_smoke",
				particleScale = 2.0,
				loopCount = 25,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(-551.6, 288.6, 82.0),
					vector3(-552.3, 279.8, 82.0),
					vector3(-556.7, 290.6, 84.6),
					vector3(-557.6, 280.4, 84.6),
				}
			},
			["fire"] = {
				active = true,
				dict = "core",
				particleName = "proj_molotov_flame",
				particleScale = 30.0,
				loopCount = 10,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(-551.6, 288.6, 82.0),
					vector3(-552.3, 279.8, 82.0),
					vector3(-556.7, 290.6, 84.6),
					vector3(-557.6, 280.4, 84.6),
				}
			},
		}
	},
	["islandDLC"] = {venue = "Island Beach", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(4893.5, -4905.8, 3.5), maxDistance = 35,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["vanillauni"] = {venue = "Vanilla Unicorn", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(120.2, -1281.7, 29.5), maxDistance = 20,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["galaxyclub"] = {venue = "Galaxy Nightclub", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(374.8, 276.1, 92.4), maxDistance = 35,
		effects = {
			["firework"] = {
				active = true,
				dict = "scr_indep_fireworks",
				particleName = "scr_indep_firework_shotburst",
				particleScale = 0.3,
				loopCount = 25,
				fxWaitTimer = 500,
				locations = {
					vector3(374.7, 278.9, 90.2),
					vector3(373.3, 273.9, 90.2),
					vector3(363.9, 274.4, 90.2),
					vector3(371.6, 283.5, 90.2),
				}
			},
			["smoke"] = {
				active = true,
				dict = "core",
				particleName = "exp_grd_grenade_smoke",
				particleScale = 2.0,
				loopCount = 25,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(374.7, 278.9, 90.2),
					vector3(373.3, 273.9, 90.2),
					vector3(363.9, 274.4, 90.2),
					vector3(371.6, 283.5, 90.2),
				}
			},
			["fire"] = {
				active = true,
				dict = "core",
				particleName = "proj_molotov_flame",
				particleScale = 30.0,
				loopCount = 10,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(374.7, 278.9, 90.2),
					vector3(373.3, 273.9, 90.2),
					vector3(363.9, 274.4, 90.2),
					vector3(371.6, 283.5, 90.2),
				}
			},
		}
	},
	["illegalrave"] = {venue = "Illegal Rave", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(167.3, -1257.2, 11.4), maxDistance = 40,
		effects = {
			["firework"] = {
				active = true,
				dict = "scr_indep_fireworks",
				particleName = "scr_indep_firework_shotburst",
				particleScale = 0.3,
				loopCount = 25,
				fxWaitTimer = 500,
				locations = {
					vector3(169.6, -1258.0, 10.3),
					vector3(165.1, -1256.9, 10.3),
					vector3(166.5, -1268.8, 10.0),
					vector3(162.5, -1268.1, 10.0),
				}
			},
			["smoke"] = {
				active = true,
				dict = "core",
				particleName = "exp_grd_grenade_smoke",
				particleScale = 2.0,
				loopCount = 25,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(157.4, -1267.0, 10.0),
					vector3(160.2, -1253.9, 10.2),
					vector3(158.7, -1260.3, 10.3),
					vector3(172.4, -1264.6, 10.1),
					vector3(171.1, -1270.1, 10.0),
					vector3(174.0, -1256.8, 10.2),
				}
			},
			["fire"] = {
				active = true,
				dict = "core",
				particleName = "proj_molotov_flame",
				particleScale = 30.0,
				loopCount = 10,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(169.6, -1258.0, 10.3),
					vector3(165.1, -1256.9, 10.3),
					vector3(166.5, -1268.8, 10.0),
					vector3(162.5, -1268.1, 10.0),
				}
			},
		}
	},
	["lostmcjukebox"] = {venue = "Lost MC Juke Box", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(983.2, -133.1, 79.4), maxDistance = 40,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["casinodesk"] = {venue = "Casino Desk", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(1120.9, 220.2, -49.6), maxDistance = 50,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["fachurch"] = {venue = "Church Piano", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-1665.0, -288.0, 51.7), maxDistance = 50,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["mrWhitesWarehouse"] = {venue = "Mr Whites Warehouse", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-431.5, -2797.9, 7.5), maxDistance = 50,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["ballasClubhouseDukebox"] = {venue = "Ballas Clubhouse", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-28.9, -1407.7, 29.5), maxDistance = 50,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["galleryJukebox"] = {venue = "San Andreas Art Gallery", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-444.7, 48.9, 52.9), maxDistance = 5.8,
		effects = {
			["firework"] = {
				active = false,
			},
			["smoke"] = {
				active = false,
			},
			["fire"] = {
				active = false,
			},
		}
	},
	["beachParty"] = {venue = "Weazel News | Beach", audioActive = false, audioLink = nil, audioStarted = 0, audioLocation = vector3(-1794.4, -855.0, 9.3), maxDistance = 100,
		effects = {
			["firework"] = {
				active = true,
				dict = "scr_indep_fireworks",
				particleName = "scr_indep_firework_shotburst",
				particleScale = 0.3,
				loopCount = 25,
				fxWaitTimer = 500,
				locations = {
					vector3(-1797.5, -851.8, 11.0),
					vector3(-1794.6, -860.1, 11.0),
					vector3(-1795.9, -854.2, 11.0),
					vector3(-1794.9, -857.0, 11.0),
				}
			},
			["smoke"] = {
				active = true,
				dict = "core",
				particleName = "exp_grd_grenade_smoke",
				particleScale = 2.0,
				loopCount = 25,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(-1797.5, -851.8, 11.0),
					vector3(-1794.6, -860.1, 11.0),
					vector3(-1795.9, -854.2, 11.0),
					vector3(-1794.9, -857.0, 11.0),
				}
			},
			["fire"] = {
				active = true,
				dict = "core",
				particleName = "proj_molotov_flame",
				particleScale = 30.0,
				loopCount = 10,
				fxWaitTimer = 15000,
				looped = true,
				locations = {
					vector3(-1797.5, -851.8, 11.0),
					vector3(-1794.6, -860.1, 11.0),
					vector3(-1795.9, -854.2, 11.0),
					vector3(-1794.9, -857.0, 11.0),
				}
			},
		}
	},
}

-----------------------------------

-- [[ Carwash ]] --
Config.CarwashCost = 150
Config.Carwash = {
	{
		locationString = "~p~BALLAS CARWASH",
		heading = 268.74,
		startPoint = vector3(-1.239, -1392.068, 29.093),
		washPoint = vector3(19.537, -1391.834, 29.462),
		endPoint = vector3(39.666, -1391.885, 29.636),
		jokeColour = nil -- https://pastebin.com/pwHci0xK
	},
	{
		locationString = "~r~LITTLE SEOUL CARWASH",
		heading = 2.22,
		startPoint = vector3(-699.807, -944.101, 19.619),
		washPoint = vector3(-699.631, -935.941, 19.256),
		endPoint = vector3(-699.991, -928.157, 19.278),
		jokeColour = nil
	}
}

Config.Colours = {
0,147,1,11,2,3,4,5,6,7,8,9,10,27,28,29,
150,30,31,32,33,34,143,35,135,137,136,36,
38,138,99,90,88,89,91,49,50,51,52,53,54,
92,141,61,62,63,64,65,66,67,68,69,73,70,
74,96,101,95,94,97,103,104,98,100,102,99,
105,106,71,72,142,145,107,111,112}