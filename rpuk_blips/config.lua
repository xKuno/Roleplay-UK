Config = {}

--[[
Please try to maintain catagories and format throughout

For random location generation I have kept drug runs and money wash in their individual files

https://docs.fivem.net/docs/game-references/blips/

As I go on, exclusive blips are size 0.9 and mass blips like shops are 0.7

Blips pack is from

https://www.gta5-mods.com/misc/new-colorful-hud-weapons-radio-map-blips
]]--
Config.blipHandles = {}

Config.Blips = {
	{name = "VehImpound", text = "Vehicle Impound", color = 46, id = 446, coords = vector3(375.479, -1611.892, 30.292)},

	--[[{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(-814.308,  -183.823,  36.598)},
	{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(136.826,   -1708.373, 28.320)},
	{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(-1282.604, -1116.757, 6.020)},
	{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(1931.513,  3729.671,  31.874)},
	{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(1212.840,  -472.921,  65.238)},
	{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(-32.885,   -152.319,  56.106)},
	{name = "Barbers", text = "Hair & Beauty", color = 50, id = 71, coords = vector3(-278.077,  6228.463,  30.725)},]]

	{name = "Bank", text = "Los Santos Bank", color = 2, id = 374, coords = vector3(146.913, -1044.836, 28.376)}, -- Fleeca Bank Vespucci Boulevard
	{name = "Bank", text = "Los Santos Bank", color = 2, id = 374, coords = vector3(-103.649, 6477.946, 30.627)}, -- Blaine County North Savings Bank
	{name = "Bank", text = "Los Santos Bank", color = 2, id = 374, coords = vector3(1175.55, 2712.92, 37.09)}, -- Fleeca Bank Route 68
	{name = "Bank", text = "Los Santos Bank", color = 2, id = 374, coords = vector3(-1210.39, -336.38, 36.78)}, -- Fleeca Bank Blvd Del Perro

	--[[{name = "VehCustomize", text = "LS Customs", color = 4, id = 72, coords = vector3(-350.655,-136.55, 38.295)},
	{name = "VehCustomize", text = "LS Customs", color = 4, id = 72, coords = vector3(726.157, -1088.768, 22.169)},
	{name = "VehCustomize", text = "LS Customs", color = 4, id = 72, coords = vector3(-1150.26,-1995.642, 12.466)},
	{name = "VehCustomize", text = "LS Customs", color = 4, id = 72, coords = vector3(1174.701,2643.764, 37.048)},]]

	{name = "ParkRangers", text = "National Park Rangers", color = 0, id = 141, coords = vector3(386.989, 791.163, 187.0)},
	{name = "ParkRangers2", text = "Hunting Shack", color = 0, id = 141, coords = vector3(-774.8, 5603.7, 33.7)},

	{name = "AppleField", text = "Apple Field", color = 2, id = 605, coords = vector3(1199.872, 4356.130, 43.774), category = 10},
	{name = "OrangeField", text = "Orange Field", color = 47, id = 556, coords = vector3(810.095, 266.480, 88.066), category = 10},
	{name = "CedarField", text = "Cedar Field", color = 2, id = 80, scale = 0.6, coords = vector3(1788.67, 6545.71, 66.65), category = 10},
	{name = "LumberYard", text = "Lumber Yard", color = 2, id = 285, coords = vector3(-553.74, 5324.40, 72.60), category = 10},

	{name = "Church", text = "Church", color = 0, id = 79, scale = 0.6, coords = vector3(-1679.7, -296.1, 50.8), category = 10},

	{name = "RPUKBloodStart", text = "Blood Pickup", color = 0, id = 153, coords = vector3(296.0, -1446.0, 30.0), category = 10},
	{name = "RPUKBloodStop", text = "Blood Drop-off", color = 0, id = 153, coords = vector3(1840.0, 3673.0, 34.0), category = 10},

	{name = "OilContainers", text = "Oil Container Spillage", color = 13, id = 415, coords = vector3(-2544.271, 3879.676, 2.55), category = 10},

	{name = "RPUKDelivery", text = "Food Delivery", color = 13, id = 488, coords = vector3(1554.40, 3802.47, 33.00)},
	{name = "RPUKDelivery", text = "Food Delivery", color = 13, id = 488, coords = vector3(-1271.89, -880.60, 10.90)},

	{name = "MetalSmelting", text = "Smeltery", color = 9, id = 648, coords = vector3(1114.788,  -2004.394,  34.444), category = 10},

	{
		name = "LSGym", text = "Los Santos Gym", color = 0, id = 311,
		coords = vector3(-45.062, -1290.042,  28.182)
	},

	{
		name = "TaxiRank", text = "Downtown Cab Co.", color = 46, id = 56, coords = vector3(911.108, -177.867, 74.283),
		blipDetail = true, imgName = "taxi", jType = "~b~Driving", category = 10,
		description = "Collecting customers and driving them to their final destination. Includes distance based job payouts."
	},

	{
		name = "Casino", text = "Diamond Casino & Resort", color = 26, id = 617, coords = vector3(922.293, 48.235, 80.0),
		blipDetail = true, imgName = "casino",
		description = "At the heart and soul of The Diamond is your enjoyment, whether you’re meeting with friends for an array of activities or finding peace of mind in your personal Penthouse Spa.", description2 = "The Diamond is here to spoil you. (Blackjack, Slot Machines, Luckywheel, Exclusive Clothing & Vehicles and much more to come!)"
	},

	{
		name = "jail", text = "Bolingbroke Penitentiary", color = 4, id = 188,
		coords = vector3(1854.00, 2622.00, 45.00), blipDetail = true, imgName = "prison",
		description = "Ran by the San Andreas State Prison Authority. Bolingbroke offers a wide range of activities for inmates, and promotes adoption of a healthy and lawful lifestyle."
	},

	{
		name = "hospital_pillbox", text = 'Hospital', title = "Pillbox Hill Medical Center", color = 11, id = 61,
		coords = vector3(307.07, -594.85, 42.427), blipDetail = true, imgName = "hospital_pillbox",
		description = "The Pillbox Hill Medical Center is the main hospital serving Central Los Santos"
	},

	{
		name = "hospital_sandyshores", text = 'Hospital', title = "Sandy Shores Medical Center", color = 11, id = 61,
		scale = 0.5, coords = vector3(1839.5, 3672.6, 33.2), blipDetail = true, imgName = "hospital_sandy",
		description = "The Sandy Shores Medical Center is a smaller hospital at the center of Sandy Shores"
	},

	{
		name = "hospital_paletobay", text = 'Hospital', title = "Bay Care Center", color = 11, id = 61,
		coords = vector3(-244.0, 6327.8, 31.4), blipDetail = true, imgName = "hospital_paleto",
		description = "The Bay Care Center is a smaller hospital at the heart of the residence of pine"
	},

	{
		name = "pd_sandyshores", text = "Police Station", color = 0, id = 60, scale = 0.5, coords = vector3(1855.7, 3682.3, 33.2),
		blipDetail = true, title = "Sandy Shores Police Station",
		description = "",
		description2 = ""
	},

	{
		name = "pd_mrpd", text = "Police Station", color = 0, id = 60, coords = vector3(429.052, -982.082, 29.711),
		blipDetail = true, title = "Mission Row Police Station",
		description = "Mission Row Police Station is one of the police stations on Los Santos. Officers from here can deploy to patrol all over the island.",
		description2 = "Chief Superintendent: Shane Jones~n~Superintendent: Barry Greenhalgh~n~Superintendent: Shepherd Kingston"
	},

	{
		name = "pd_vespucci", text = "Police Station", color = 0, id = 60, coords = vector3(-1102.17, -840.18, 19.00),
		blipDetail = true, imgName = "vespucci", title = "Vespucci Police Station",
		description = "Vespucci Police Station is one of the police stations on Los Santos. Officers from here can deploy to patrol all over the island.",
		description2 = "Chief Superintendent: Shane Jones~n~Superintendent: Barry Greenhalgh~n~Superintendent: Shepherd Kingston"
	},

	{
		name = "pd_paleto", text = "Police Station", color = 0, id = 60, coords = vector3(-441.0, 6018.5, 30.5),
		blipDetail = true, title = "Paleto Bay Police Station",
		description = "",
		description2 = ""
	},

	--{name = "VehCustomize", text = "Benny's Original Motor Works", color = 83, id = 72, coords = vector3(-205.626,-1314.99, 30.247), blipDetail = true, imgName = "bennys", description = "Turning your classic junker into a high-spec, tricked-out king of the streets.")},

	{
		name = "cityHall", text = "Los Santos City Hall", color = 0, id = 181,
		coords = vector3(-552.701, -191.053, 37.220), blipDetail = true, imgName = "townhall",
		description = "The centre of all governmental affairs. Licences and permits can be granted here."
	},

	--[[
		{name = "TattooShop", text = "Los Santos Tattoos", linkName = "Tattoo Studio", color = 50, id = 75, coords = vector3(1322.6,  -1651.9,  51.2), blipDetail = true, imgName = "lossantostats", description = "Nothing says individuality like a tribal band of Chinese symbols you don't understand out of a catalogue at random.")},
		{name = "TattooShop", text = "The Pit", linkName = "Tattoo Studio", color = 50, id = 75, coords = vector3(-1153.6,  -1425.6,  4.9), blipDetail = true, imgName = "thepit", description = "Nothing says individuality like a tribal band of Chinese symbols you don't understand out of a catalogue at random.")},
		{name = "TattooShop", text = "Blazing Tattoo", linkName = "Tattoo Studio", color = 50, id = 75, coords = vector3(322.1,  180.4,  103.5), blipDetail = true, imgName = "blazingtats", description = "Nothing says individuality like a tribal band of Chinese symbols you don't understand out of a catalogue at random.")},
		{name = "TattooShop", text = "InkInc Tattoos", linkName = "Tattoo Studio", color = 50, id = 75, coords = vector3(-3170.0,  1075.0,  20.8), blipDetail = true, imgName = "inktats", description = "Nothing says individuality like a tribal band of Chinese symbols you don't understand out of a catalogue at random.")},
		{name = "TattooShop", text = "Tattoo Body Art & Piercing", linkName = "Tattoo Studio", color = 50, id = 75, coords = vector3(1864.6,  3747.7,  33.0), blipDetail = true, imgName = "tattoo", description = "Nothing says individuality like a tribal band of Chinese symbols you don't understand out of a catalogue at random.")},
		{name = "TattooShop", text = "Tattoo Body Art & Piercing", linkName = "Tattoo Studio", color = 50, id = 75, coords = vector3(-293.7,  6200.0,  31.4), blipDetail = true, imgName = "tattoo2", description = "Nothing says individuality like a tribal band of Chinese symbols you don't understand out of a catalogue at random.")},
	]]

	{
		name = "YouTool", text = "YouTool Housing & Hardware", linkName = "Housing and Hardware", color = 47, id = 566,
		coords = vector3(2755.125,  3469.180,  54.759), blipDetail = true, imgName = "youtools",
		description = "One of those stores where you find something you didn't know you needed!"
	},

	{
		name = "DeliveryHub", text = "Pegasus | Commerical Delivery Hub", linkName = "Delivery Hub", color = 13, id = 477,
		coords = vector3(1011.752,  -2525.055,  27.308), blipDetail = true, imgName = "deliveryhub", category = 10,
		description = "Apart of the Pegasus Business Empire. The delivery hub is the centeral location for all deliveries in Los Santos.~n~A great place to get a job!"
	},

	{
		name = "GolfClub", text = "Los Santos | Country Club", linkName = "LS Country Club", color = 0, id = 109,
		coords = vector3(-1345.193, 58.679, 54.246), blipDetail = true, imgName = "golfclub", owner = "The High Society",
		description = "A truly beautiful course. For a price anyone can play.~n~To truly integrate into the High Society reputation, wealth, and influence are all taken into consideration."
	},

	{
		name = "lifeinvader", text = "Lifeinvader Office", linkName = "Lifeinvader", color = 49, id = 77,
		coords = vector3(-1082.14, -247.58, 36.76), blipDetail = true, imgName = "liveinvader_outside",
		description = "The technology core for the city! Built on corruption, and government intel. Your privacy is not our number one priority."
	},
}