SpeedCamera = {}
SpeedCamera.debug = false

SpeedCamera.AlertSpeedToPolice = 30 -- How much above the speed limit will police be alerted if a vehicle is speeding (MPH)
SpeedCamera.SpeedToTriggerANPR = 20 -- How fast the vehicle needs to be to set off the ANPR (MPH)
SpeedCamera.SpeedLimitToFine = 5 -- How fast the vehicle needs to be to set off the ANPR (MPH)
SpeedCamera.WhitelistedVehicles = {
	"rppolice1", "rppolice2", "rppolice3", "rppolice4",
	"rppolice5", "rppolice6", "rppolice7", "rppolice8",
	"fbi2","rppolice9", "rppolice10", "rppolice11",
	"rpnhs6", "rppolice13", "rppolice14", "rppolice15",
	"rppoliceuc1", "rppoliceuc2", "rppoliceuc3", "rppolice12",
	"rppoliceuc4", "rppoliceuc5", "sheriff2",
	"rpnhs1", "rpnhs2", "rpnhs3", "rpnhs4",
	"rpnhs5", "rppolice14", "rpnhs6", "rpnhs6",
	"rpnhs7", "rppoliceuc6", "rppoliceuc7", "rppoliceuc8", "rppoliceuc9",
	"rpg62"
}

SpeedCamera.Locations = {
	--[[
	exampleID = {
		Location = CircleZone:Create(vector3(259.02, -1060.71, 29.34), 8.5, { -- This is the Detection Circle
			useZ=true,
			debugPoly=SpeedCamera.debug
		}),
		PanelLocation =BoxZone:Create(vector3(239.49, -1065.75, 29.18), 1.2, 1.4, { -- This is the polyzone for the speed camera
			heading=0,
			debugPoly=SpeedCamera.debug,
			minZ=27.58,
			maxZ=31.58
		}),
		Online = true, -- Default State When Server Starts Up
		Whitelist = {
			"rppolice1", "rppolice2", "rppolice3", "rppolice4",
			"rppolice5", "rppolice6", "rppolice7", "rppolice8",
			"fbi2","rppolice9", "rppolice10", "rppolice11",
			"rpnhs6", "rppolice13", "rppolice14", "rppolice15",
			"rppoliceuc1", "rppoliceuc2", "rppoliceuc3",
			"rppoliceuc4", "rppoliceuc5", "sheriff2",
			"rpnhs1", "rpnhs2", "rpnhs3", "rpnhs4",
			"rpnhs5", "rppolice14", "rpnhs6", "rpnhs6",
			"rpnhs7", "rpnca1", "rpnca2", "rpnca3", "rpnca4",
			"rpg62"},
		Access = {"police"}, -- List of people who can trun on/off speed camera
		SpeedLimit = 70, --MPH -- Speed Limit Zone
		ANPR = true, -- Detects if the vehicle owns has a warrant
		SpeedDetection = true, -- Will send alerts if vehicle is speeding
	},
	]]
	speedcamera_1 = {
		Location = BoxZone:Create(vector3(-2199.06, -345.06, 13.11), 28.6, 6.6, {
			heading=355,
			debugPoly=SpeedCamera.debug,
			minZ=12.11,
			maxZ=16.11
		}),
		PanelLocation = BoxZone:Create(vector3(-2182.06, -364.4, 13.02), 1.2, 1.4, {
			heading=35,
			debugPoly=SpeedCamera.debug,
			minZ=11.62,
			maxZ=15.62
		}),
		SpeedCameraPropCoords = vector3(-2181.369, -363.8071, 12.1),
		SpeedCameraPropHeading = 218.81709289551,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_2 = {
		Location = BoxZone:Create(vector3(-429.77, -839.86, 30.67), 31.8, 12.6, {
			heading=0,
			debugPoly=SpeedCamera.debug,
			minZ=29.67,
			maxZ=33.67
		}),
		PanelLocation = BoxZone:Create(vector3(-458.28, -851.05, 30.58), 1.2, 1.4, {
			heading=315,
			debugPoly=SpeedCamera.debug,
			minZ=29.18,
			maxZ=33.18
		}),
		SpeedCameraPropCoords = vector3(-457.6152, -851.6897, 29.60324),
		SpeedCameraPropHeading = 133.29818725586,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_3 = {
		Location = BoxZone:Create(vector3(6.04, -757.65, 32.56), 8.6, 29.2, {
			heading=250,
			debugPoly=SpeedCamera.debug,
			minZ=30.96,
			maxZ=34.96
		}),
		PanelLocation =BoxZone:Create(vector3(-35.39, -726.01, 32.73), 1.4, 1.2, {
			heading=320,
			debugPoly=SpeedCamera.debug,
			minZ=31.73,
			maxZ=35.73
		}),
		SpeedCameraPropCoords = vector3(-36.00919, -726.5627, 31.9),
		SpeedCameraPropHeading = 45.028366088867,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_4 = {
		Location = CircleZone:Create(vector3(472.13, -320.18, 47.61), 27.5, {
			useZ=true,
			debugPoly=SpeedCamera.debug,
		}),
		PanelLocation = BoxZone:Create(vector3(468.04, -289.62, 47.78), 1.2, 1.4, {
			heading=25,
			debugPoly=SpeedCamera.debug,
			minZ=45.78,
			maxZ=49.78
		}),
		SpeedCameraPropCoords = vector3(467.3594, -290.0758, 46.7),
		SpeedCameraPropHeading = 30.79563331604,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_5 = {
		Location = BoxZone:Create(vector3(383.28, -1566.94, 29.25), 6.6, 29.4, {
			heading=230,
			debugPoly=SpeedCamera.debug,
			minZ=28.25,
			maxZ=32.25
		}),
		PanelLocation = BoxZone:Create(vector3(411.91, -1570.27, 29.22), 1.8, 1.6, {
			heading=25,
			debugPoly=SpeedCamera.debug,
			minZ=27.62,
			maxZ=31.62
		}),
		SpeedCameraPropCoords = vector3(412.0315, -1569.355, 28.33385),
		SpeedCameraPropHeading = 264.68615722656,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_6 = {
		Location = BoxZone:Create(vector3(383.28, -1566.94, 29.25), 6.6, 29.4, {
			heading=230,
			debugPoly=SpeedCamera.debug,
			minZ=28.25,
			maxZ=32.25
		}),
		PanelLocation = BoxZone:Create(vector3(411.91, -1570.27, 29.22), 1.8, 1.6, {
			heading=25,
			debugPoly=SpeedCamera.debug,
			minZ=27.62,
			maxZ=31.62
		}),
		SpeedCameraPropCoords = vector3(-1020.959, -218.9763, 36.8),
		SpeedCameraPropHeading = 204.41651916504,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_7 = {
		Location = BoxZone:Create(vector3(237.55, -638.06, 41.95), 28.0, 6.0, {
			heading=65,
			debugPoly=SpeedCamera.debug,
			minZ=38.75,
			maxZ=43.95
		}),
		PanelLocation = BoxZone:Create(vector3(251.18, -607.97, 42.16), 1.2, 1.4, {
			heading=335,
			debugPoly=SpeedCamera.debug,
			minZ=41.16,
			maxZ=45.16
		}),
		SpeedCameraPropCoords = vector3(250.3489, -607.4991, 41.54118),
		SpeedCameraPropHeading = 331.85363769531,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_8 = {
		Location = BoxZone:Create(vector3(1178.4, -514.57, 65.1), 23.2, 33.2, {
			heading=355,
			debugPoly=SpeedCamera.debug,
			minZ=64.1,
			maxZ=68.1
		}),
		PanelLocation = BoxZone:Create(vector3(1189.96, -527.29, 64.91), 1.2, 1.4, {
			heading=35,
			debugPoly=SpeedCamera.debug,
			minZ=63.71,
			maxZ=67.71
		}),
		SpeedCameraPropCoords = vector3(1190.694, -526.7559, 63.8),
		SpeedCameraPropHeading = 217.89236450195,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_9 = {
		Location = BoxZone:Create(vector3(-653.77, -1488.84, 11.82), 8.2, 22.8, {
			heading=355,
			debugPoly=SpeedCamera.debug,
			minZ=8.82,
			maxZ=12.82
		}),
		PanelLocation = BoxZone:Create(vector3(-673.43, -1508.78, 11.89), 1.4, 1.2, {
			heading=315,
			debugPoly=SpeedCamera.debug,
			minZ=10.09,
			maxZ=14.09
		}),
		SpeedCameraPropCoords = vector3(-672.9242, -1509.418, 10.5),
		SpeedCameraPropHeading = 125.45110321045,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},

	speedcamera_10 = {
		Location = BoxZone:Create(vector3(-582.73, 259.19, 82.13), 21.8, 7.4, {
			heading=355,
			debugPoly=SpeedCamera.debug,
			minZ=80.33,
			maxZ=84.33
		}),
		PanelLocation = BoxZone:Create(vector3(-607.29, 249.45, 81.97), 1.4, 1.2, {
			heading=10,
			debugPoly=SpeedCamera.debug,
			minZ=80.37,
			maxZ=84.37
		}),
		SpeedCameraPropCoords = vector3(-607.2738, 248.5754, 80.93405),
		SpeedCameraPropHeading = 100.49656677246,
		Online = true,
		Whitelist = SpeedCamera.WhitelistedVehicles,
		Access = {"police"},
		SpeedLimit = 70, --MPH
		ANPR = true,
		SpeedDetection = true,
	},
}

