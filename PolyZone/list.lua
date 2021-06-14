function inPolyZone(polyName)
	local ped = PlayerPedId()
	local pedCoords = GetEntityCoords(ped)

	for k,v in pairs(PolyZones) do
		if k == polyName then
			if v:isPointInside(pedCoords) then
				return true
			end
		end
	end
end

PolyZones = {
	Impound = CircleZone:Create(vector3(387.22, -1628.83, 29.29), 48.5, {
		useZ=true,
		--debugPoly=true
	}),

	MissionRowCheckInService = BoxZone:Create(vector3(473.86, -1009.96, 26.27), 11.2, 5.0, {
		heading=0,
		--debugPoly=true,
		minZ=23.87,
		maxZ=27.87
	}),

	Pillbox = CircleZone:Create(vector3(318.41, -582.14, 28.88), 88.5, {
		useZ=true,
		-- debugPoly=true
	}),

	Sandy = CircleZone:Create(vector3(1837.63, 3685.86, 33.86), 32.5, {
		useZ=true,
		--debugPoly=true
	}),

	Paleto = CircleZone:Create(vector3(-252.93, 6321.13, 32.43), 40.0, {
		useZ=true,
		--debugPoly=true
	}),

	Keypad = BoxZone:Create(vector3(1755.4, 2497.05, 45.74), 1.0, 1.0, {
		heading=300,
		--debugPoly=true,
		minZ=42.94,
		maxZ=46.94
	}),

	Prison = CircleZone:Create(vector3(1691.07, 2604.95, 45.56), 240.0, {
		name="Prison",
		useZ=false,
		debugPoly=false
	}),

	cleaningPoints = BoxZone:Create(vector3(1787.34, 2550.4, 45.67), 10.4, 3.6, {
		heading=0,
		--debugPoly=true,
		minZ=42.87,
		maxZ=46.87
	}),

	cleaningPoints2 = BoxZone:Create(vector3(1781.3, 2550.79, 45.67), 10.4, 3.6, {
		heading=0,
		--debugPoly=true,
		minZ=42.87,
		maxZ=46.87
	}),

	cleaningPoints3 = BoxZone:Create(vector3(1632.84, 2548.99, 45.56), 5, 11.0, {
		heading=45
	}),

	cleaningPoints4 = BoxZone:Create(vector3(1763.57, 2486.9, 45.74), 3.8, 14.6, {
		heading=30,
		--debugPoly=true,
		minZ=40.54,
		maxZ=47.94
	}),

	cleaningPoints5 = BoxZone:Create(vector3(1738.84, 2513.6, 45.57), 9.6, 8.8, {
		heading=322,
		--debugPoly=true,
		minZ=42.97,
		maxZ=46.97
	}),

	cleaningPoints6 = BoxZone:Create(vector3(1764.26, 2551.63, 45.57), 9.8, 3, {
		heading=25,
		--debugPoly=true,
		minZ=42.37,
		maxZ=46.37
	}),

	cleaningPoints7 = BoxZone:Create(vector3(1769.04, 2561.59, 45.57), 9.6, 3, {
		heading=0,
		--debugPoly=true,
		minZ=42.17,
		maxZ=46.17
	}),

	sink = CircleZone:Create(vector3(1778.65, 2564.36, 45.67), 1.5, {
		useZ=true,
		--debugPoly=true
	}),

	stock = CircleZone:Create(vector3(1786.98, 2564.57, 45.67), 2.0, {
		useZ=true,
		--debugPoly=true
	}),

	searchPoint = BoxZone:Create(vector3(1778.13, 2545.94, 45.67), 1.4, 1.6, {
		heading=0,
		--debugPoly=true,
		minZ=42.47,
		maxZ=46.47
	}),

	searchPoint2 = CircleZone:Create(vector3(1773.52, 2538.81, 45.57), 2.0, {
		useZ=true,
		--debugPoly=true
	}),

	searchPoint3 = CircleZone:Create(vector3(1775.0, 2550.57, 45.57), 1.0, {
		useZ=true,
		--debugPoly=true
	}),

	phoneBooth = BoxZone:Create(vector3(1730.36, 2520.97, 45.56), 1.4, 3.8, {
		heading=28,
		--debugPoly=true,
		minZ=42.56,
		maxZ=46.56
	}),

	phoneBooth2 = BoxZone:Create(vector3(1828.11, 2585.0, 46.01), 10.8, 2.0, {
		heading=0,
		--debugPoly=true,
		minZ=43.81,
		maxZ=47.81
	}),

	computer = BoxZone:Create(vector3(1839.4, 2574.31, 46.01), 2.0, 2.8, {
		heading=0,
		--debugPoly=true,
		minZ=43.01,
		maxZ=47.01
	}),

	computer2 = BoxZone:Create(vector3(1769.5, 2573.78, 45.73), 1.6, 2, {
		heading=0,
		--debugPoly=true,
		minZ=42.73,
		maxZ=46.73
	}),

	clothes = CircleZone:Create(vector3(1840.41, 2578.27, 46.01), 2.5, {
		useZ=true,
		--debugPoly=true
	}),

	collection = CircleZone:Create(vector3(1840.41, 2578.27, 46.01), 2.5, {
		useZ=true,
		--debugPoly=true
	}),

	DogZoneV = PolyZone:Create({
		vector2(-1052.4744873047, -834.19958496094),
		vector2(-1043.6459960938, -826.77435302734),
		vector2(-1039.0267333984, -831.61383056641),
		vector2(-1045.8342285156, -838.95098876953)
	}, {
		--minZ = 10.841857910156,
		--maxZ = 10.886842727661
	}),

	DogZoneMRPD = BoxZone:Create(vector3(463.31, -1017.05, 28.1), 8.8, 6.0, {
		heading=0,
		--debugPoly=true,
		minZ=25.9,
		maxZ=29.9
	})

}