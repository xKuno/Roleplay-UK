Config = {}
Config.DebugMode = false

Config.robberyCooldown = 1800 * 1000 -- seconds
Config.robberyTimer = 240
Config.orderPayout = 10000

Config.Loaded = false
Config.Shops = {
	--[[

	-- Warehouse Example
	[id] = { -- Always the db row id
		shopType = nil, -- shop type filled to the client by the database
		coords = vector3(x, y, z), -- coordinates of the order accepting area for a warehouse
		management = vector3(x, y, z), -- coordinates of the management computer
		trailerModel = "tr4", -- model of the spawned trailer
		trailerLivery = 1, -- if an int (not nil) then the trailer model will take this livery
		trailerSpawns = { -- coordinates of the spawnpoints for the trailer
			vector4(x, y, z, heading),
			vector4(x, y, z, heading),
		}
	}

	-- Vehicle Shop Example
	[id] = { -- Always the db row id
		shopType = nil, -- shop type filled to the client by the database
		coords = vector3(X, Y, Z), -- coordinates of the vehicle viewpoint interaction // Press E to view stock
		management = vector3(x, y, z), -- coordinates of the management computer
		viewVehicle = vector4(X, Y, Z, H), -- coordinates of the spawnpoint for viewing vehicles in stock
		deliveryPoint = vector3(X, Y, Z), -- coordinates of the delivery of stock
	},

	-- Standard Shop Example
	[id] = { -- Always the db row id
		shopType = nil, -- shop type filled to the client by the database
		coords = vector3(x, y, z), -- coordinates of the end user purchasing of items
		management = vector3(x, y, z), -- coordinates of the management computer
		deliveryPoint = vector3(x, y, z), -- coordinates of the delivery of stock
		safeLocation = vector3(x, y, z), -- coordinates of the safe robbery location 		#REMOVED FOR CLUBS AND RESTUARANTS
	},

	]]

	[0] = { -- Server Vehicle Warehouse // DON'T TOUCH PLEASE
		name = "Import Warehouse",
		shopType = "warehouse",
		coords = vector3(153.8, -3211.8, 6.2),
		trailerModel = "tr4",
		trailerLivery = nil,
		trailerSpawns = {
			vector4(167.268, -3216.999, 8.197, 270.0),
			vector4(165.785, -3221.789, 7.688, 270.0),
			vector4(165.991, -3224.817, 8.788, 270.0),
			vector4(167.957, -3230.662, 8.664, 270.0),
			vector4(165.795, -3234.360, 7.453, 270.0),
			vector4(166.913, -3188.610, 5.903, 270.0),
			vector4(170.697, -3183.007, 7.552, 270.0),
			vector4(165.634, -3178.285, 8.049, 270.0),
		}
	},

	[1] = { -- Mr White (Warehouse)
		shopType = nil,
		coords = vector3(-435.9, -2796.3, 7.2),
		warehouseCoords = vector3(-427.6, -2789.1, 6.5),
		management = vector3(-429.2, -2787.7, 6.8),
		trailerModel = "trailers2",
		trailerLivery = 0,
		trailerSpawns = {
			vector4(-461.241, -2806.801, 6.8, 44.25),
			vector4(-466.211, -2808.655, 6.8, 44.25),
			vector4(-460.294, -2801.146, 6.8, 44.25),
			vector4(-454.041, -2797.919, 6.8, 44.25),
			vector4(-450.454, -2791.969, 6.8, 44.25),
		}
	},

	[2] = { -- Mosleys
		shopType = nil,
		coords = vector3(-38.0, -1672.5, 29.5),
		management = vector3(-15.4, -1660.2, 32.8),
		viewVehicle = vector4(-20.2, -1647.8, 28.5,87.8),
		deliveryPoint = vector3(-27.5, -1680.6, 28.4),
		buySpawn = vector4(-2.6, -1669.1, 28.5,-132.5),
	},

	[3] = { -- AutoCare
		shopType = nil,
		coords = vector3(947.9, -969.6, 39.6),
		management = vector3(951.9, -968.4, 39.3),
		viewVehicle = vector4(915.6, -961.5, 38.5,-115.6),
		deliveryPoint = vector3(874.9, -924.9, 25.3),
		buySpawn = vector4(919.3, -981.2, 38.5,-68.5),
	},

	[4] = { -- Beekers
		shopType = nil,
		coords = vector3(115.1, 6633.2, 32.2),
		management = vector3(114.7, 6629.8, 31.7),
		viewVehicle = vector4(181.5, 6603.0, 36.8,143.3),
		deliveryPoint = vector3(100.8, 6635.7, 30.4),
		buySpawn = vector4(102.9, 6636.2, 30.4,134.1),
	},

	[5] = { -- Benefactor
		shopType = nil,
		coords = vector3(-54.8, 68.3, 71.9),
		management = vector3(-53.6, 74.6, 71.7),
		viewVehicle = vector4(-63.3, 69.4, 70.8,112.9),
		deliveryPoint = vector3(-92.3, 88.4, 70.8),
		buySpawn = vector4(-76.1, 94.8, 72.0,66.3),
	},

	[6] = { -- Luxury Autos
		shopType = nil,
		coords = vector3(-786.0, -229.1, 37.1),
		management = vector3(-789.1, -217.4, 36.9),
		viewVehicle = vector4(-783.4, -223.5, 36.3,137.6),
		deliveryPoint = vector3(-760.4, -231.8, 36.3),
		buySpawn = vector4(-771.9, -232.4, 36.1,-153.6),
	},

	[7] = { -- Del Perro PDM
		shopType = nil,
		coords = vector3(-1258.3, -368.4, 36.8),
		management = vector3(-1256.9, -369.1, 36.8),
		viewVehicle = vector4(-1261.7, -361.3, 35.9,76.4),
		deliveryPoint = vector3(-1240.0, -334.0, 36.2),
		buySpawn = vector4(-1236.8, -340.0, 36.3,27.8),
	},

	[8] = { -- Hardwick PDM
		shopType = nil,
		coords = vector3(206.8, -178.1, 54.5),
		management = vector3(226.9, -180.5, 54.4),
		viewVehicle = vector4(219.3, -187.2, 53.6,-84.2),
		deliveryPoint = vector3(216.7, -168.0, 55.4),
		buySpawn = vector4(230.1, -170.5, 55.9,-111.6),
	},

	[9] = { -- Power St PDM
		shopType = nil,
		coords = vector3(-55.3, -1096.8, 26.3),
		management = vector3(-30.8, -1106.2, 26.2),
		viewVehicle = vector4(-47.4, -1096.9, 25.4,-115.4),
		deliveryPoint = vector3(-29.8, -1081.4, 26.6),
		buySpawn = vector4(-9.4, -1082.0, 25.7,134.3),
	},

	[10] = { -- Custom Motorcycles / LostMC
		shopType = nil,
		coords = vector3(24.6, 6466.6, 31.6),
		management = vector3(37.5, 6464.5, 31.9),
		viewVehicle = vector4(27.9, 6449.7, 30.4,4.2),
		deliveryPoint = vector3(59.0, 6469.1, 30.4),
		buySpawn = vector4(46.8, 6459.3, 30.4,-171.0),
	},

	[11] = { -- AutoShop Motorcycles
		shopType = nil,
		coords = vector3(968.5, -1848.1, 31.3),
		management = vector3(969.4, -1832.6, 31.3),
		viewVehicle = vector4(966.9, -1842.3, 30.3,-90.5),
		deliveryPoint = vector3(984.0, -1829.4, 30.2),
		buySpawn = vector4(985.4, -1829.9, 30.1,-6.1),
	},

	[12] = { -- Tackle Marine
		shopType = nil,
		coords = vector3(-806.1, -1351.9, 5.3),
		management = vector3(-803.4, -1369.7, 5.0),
		viewVehicle = vector4(-820.578, -1424.443, 0.710,173.86),
		deliveryPoint = vector3(-798.4, -1330.3, 4.0),
		buySpawn = vector4(-820.578, -1424.443, 0.710,173.86),
	},

	--===============
	--   24/7 Stores
	--===============

	[13] = { -- Downtown Noble Stores
		shopType = nil,
		coords = vector3(378.5, -827.7, 29.2),
		management = vector3(374.6, -826.9, 29.2),
		deliveryPoint = vector3(365.4, -822.4, 28.3),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(379.2, -827.0, 29.4),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[14] = { -- 247_greatocean_northeast
		shopType = nil,
		coords = vector3(1728.1, 6414.4, 35.1),
		management = vector3(1736.2, 6420.7, 34.9),
		deliveryPoint = vector3(1726.9, 6402.8, 33.4),
		safeLocation = vector3(1734.9, 6421.1, 34.5),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1729.3, 6417.1, 35.2),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[15] = { -- 247_route13 (near furniture)
		shopType = nil,
		coords = vector3(2678.9, 3279.6, 55.3),
		management = vector3(2673.0, 3287.9, 55.1),
		deliveryPoint = vector3(2659.4, 3257.4, 54.2),
		safeLocation = vector3(2672.5, 3286.8, 54.7),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(2676.2, 3281.0, 55.4),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[16] = { -- 247_development -- dev location
		shopType = nil,
		coords = vector3(-1298.7, -3012.4, -48.7),
		management = vector3(-1298.7, -3012.4, -48.7),
		deliveryPoint = vector3(-1298.7, -3012.4, -48.7),
		safeLocation = vector3(-1298.7, -3012.4, -48.7),
	},

	[17] = { -- 247_route68_farwest
		shopType = nil,
		coords = vector3(-2540.2, 2313.8, 33.4),
		management = vector3(-2543.7, 2305.1, 33.2),
		deliveryPoint = vector3(-2529.7, 2343.1, 32.1),
		safeLocation = vector3(-2542.4, 2305.2, 32.9),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-2539.6, 2311.5, 33.6),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[18] = { -- 247_route68_sandy_west (harmony)
		shopType = nil,
		coords = vector3(548.3, 2671.8, 42.2),
		management = vector3(545.2, 2662.2, 42.0),
		deliveryPoint = vector3(553.1, 2680.1, 41.2),
		safeLocation = vector3(546.5, 2662.5, 41.6),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(548.9, 2669.0, 42.3),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[19] = { -- 247_paleto_gas
		shopType = nil,
		coords = vector3(160.8, 6640.8, 31.6),
		management = vector3(170.0, 6644.3, 31.4),
		deliveryPoint = vector3(177.1, 6624.7, 30.7),
		safeLocation = vector3(169.0, 6645.1, 31.1),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(162.4, 6643.0, 31.8),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[20] = { -- 247_sandy_east
		shopType = nil,
		coords = vector3(1961.0, 3739.7, 32.4),
		management = vector3(1960.2, 3749.9, 32.2),
		deliveryPoint = vector3(1978.7, 3759.8, 31.2),
		safeLocation = vector3(1959.1, 3749.2, 31.8),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1959.3, 3742.3, 32.5),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[21] = { -- 247_innocence (opposite car wash)
		shopType = nil,
		coords = vector3(25.1, -1348.0, 29.5),
		management = vector3(29.4, -1338.8, 29.3),
		deliveryPoint = vector3(28.0, -1306.1, 28.1),
		safeLocation = vector3(28.2, -1338.9, 28.9),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(24.9, -1345.0, 29.7),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[22] = { -- 247_downtownvinewood (near VW bowl)
		shopType = nil,
		coords = vector3(373.0, 325.6, 103.6),
		management = vector3(379.5, 333.5, 103.4),
		deliveryPoint = vector3(368.6, 340.4, 102.2),
		safeLocation = vector3(378.2, 333.7, 103.0),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(373.6, 328.6, 103.7),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[23] = { -- 247_route15_east (east coast freeway)
		shopType = nil,
		coords = vector3(2557.9, 381.5, 108.6),
		management = vector3(2548.9, 386.2, 108.5),
		deliveryPoint = vector3(2553.6, 420.4, 107.5),
		safeLocation = vector3(2548.9, 384.8, 108.1),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(2554.9, 381.3, 108.8),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[24] = { -- 247_greatocean_west_upper (west coast, closest to paleto)
		shopType = nil,
		coords = vector3(-3038.6, 585.4, 7.9),
		management = vector3(-3048.7, 586.7, 7.7),
		deliveryPoint = vector3(-3049.6, 601.7, 6.3),
		safeLocation = vector3(-3048.1, 585.5, 7.3),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-3041.4, 584.2, 8.1),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	--===============
	--   Liquor Stores
	--===============

	[25] = { -- liq_delperro (prosperity st NW city)
		shopType = nil,
		coords = vector3(-1486.2, -379.4, 40.1),
		management = vector3(-1479.7, -375.4, 39.7),
		deliveryPoint = vector3(-1463.2, -388.7, 37.5),
		safeLocation = vector3(-1478.7, -375.7, 39.1),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-1486.6, -378.4, 40.3),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[26] = { -- liq_sandy_west
		shopType = nil,
		coords = vector3(1391.9, 3605.3, 34.9),
		management = vector3(1396.4, 3613.9, 34.8),
		deliveryPoint = vector3(1379.7, 3600.1, 33.9),
		safeLocation = vector3(1394.6, 3614.2, 35.3),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1393.0, 3606.1, 35.2),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}	
	},

	[27] = { -- liq_route68_sandy_east (grand senora)
		shopType = nil,
		coords = vector3(1166.9, 2710.0, 38.1),
		management = vector3(1168.6, 2717.3, 37.7),
		deliveryPoint = vector3(1166.7, 2727.0, 37.0),
		safeLocation = vector3(1169.6, 2717.8, 37.2),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1165.9, 2710.3, 38.3),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[28] = { -- liq_elrancho
		shopType = nil,
		coords = vector3(1134.9, -981.3, 46.4),
		management = vector3(1127.4, -980.7, 46.0),
		deliveryPoint = vector3(1110.1, -984.3, 44.2),
		safeLocation = vector3(1126.8, -979.8, 45.6),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1134.7, -982.4, 46.6),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[29] = { -- liq_vespucci (near PD)
		shopType = nil,
		coords = vector3(-1223.3, -908.2, 12.3),
		management = vector3(-1220.7, -915.2, 11.8),
		deliveryPoint = vector3(-1219.1, -894.4, 11.6),
		safeLocation = vector3(-1221.1, -916.2, 11.3),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-1222.3, -907.9, 12.5),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[30] = { -- liq_route11_south (north rockwood)
		shopType = nil,
		coords = vector3(-1820.8, 793.7, 138.1),
		management = vector3(-1828.7, 797.5, 138.0),
		deliveryPoint = vector3(-1819.4, 803.8, 137.6),
		safeLocation = vector3(-1829.4, 798.5, 137.6),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-1819.1, 792.5, 138.2),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[31] = { -- liq_greatocean_west_lower (west coast, closest city)
		shopType = nil,
		coords = vector3(-2967.3, 389.9, 15.0),
		management = vector3(-2960.1, 387.8, 14.6),
		deliveryPoint = vector3(-2962.6, 401.1, 14.1),
		safeLocation = vector3(-2959.6, 386.8, 14.0),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-2966.9, 390.8, 15.2),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	--===============
	--   Gas Station Shops
	--===============

	[32] = { -- gas_grove
		shopType = nil,
		coords = vector3(-47.5, -1757.5, 29.4),
		management = vector3(-44.6, -1749.1, 29.2),
		deliveryPoint = vector3(-40.7, -1743.7, 28.1),
		safeLocation = vector3(-43.7, -1748.2, 28.9),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-48.3, -1759.2, 29.6),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[33] = { -- gas_mirrorpark
		shopType = nil,
		coords = vector3(1163.8, -322.8, 69.2),
		management = vector3(1159.2, -315.4, 69.0),
		deliveryPoint = vector3(1164.6, -329.6, 68.0),
		safeLocation = vector3(1159.2, -314.1, 68.7),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1164.6, -324.8, 69.4),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[34] = { -- gas_littleseoul
		shopType = nil,
		coords = vector3(-707.0, -913.4, 19.2),
		management = vector3(-710.2, -905.4, 19.0),
		deliveryPoint = vector3(-701.1, -921.5, 18.0),
		safeLocation = vector3(-710.0, -904.2, 18.7),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-706.6, -915.6, 19.4),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[35] = { -- gas_rockfordhills
		shopType = nil,
		coords = vector3(-1422.2, -269.7, 46.3),
		management = vector3(-1418.2, -262.1, 46.1),
		deliveryPoint = vector3(-1417.4, -249.5, 45.4),
		safeLocation = vector3(-1417.3, -261.3, 45.7),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-1423.6, -271.5, 46.4),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[36] = { -- gas_sandybank (grand senora)
		shopType = nil,
		coords = vector3(1203.8, 2648.5, 37.7),
		management = vector3(1201.7, 2644.8, 37.6),
		deliveryPoint = vector3(1206.0, 2641.5, 36.8),
		safeLocation = vector3(1200.6, 2643.5, 37.7),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1202.8, 2646.8, 37.9),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[37] = { -- gas_flywheels
		shopType = nil,
		coords = vector3(1769.3, 3322.4, 41.4),
		management = vector3(1770.7, 3323.7, 41.5),
		deliveryPoint = vector3(1757.0, 3319.4, 40.2),
		safeLocation = vector3(1765.5, 3321.7, 41.2),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(1770.7, 3323.6, 41.6),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	[38] = { -- gas_xerostrawbAv
		shopType = nil,
		coords = vector3(292.8, -1271.7, 29.5),
		management = vector3(300.9, -1268.7, 29.3),
		deliveryPoint = vector3(332.4, -1272.6, 30.8),
		safeLocation = vector3(302.3, -1268.7, 29.0),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(290.8, -1272.2, 29.7),
				payouts = {
					account_cash = {minValue = 1000, maxValue = 5000},
				}
			},
		}
	},

	--===============
	--   Pharmacy
	--===============

	[39] = { -- pha_hardwick
		shopType = nil,
		coords = vector3(93.2, -230.4, 54.7),
		management = vector3(91.5, -230.4, 54.7),
		deliveryPoint = vector3(95.1, -219.1, 53.5),
		safeLocation = vector3(95.0, -233.0, 54.4),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(98.219, -229.102, 55.040),
				payouts = {
					comp_drug_fentanyl_dropper = {minValue = 10, maxValue = 30},
					comp_drug_acetic = {minValue = 10, maxValue = 30},
					comp_drug_pseudo = {minValue = 10, maxValue = 30},
					comp_drug_ergotamine = {minValue = 10, maxValue = 30},
				}
			},
			[2] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(97.809, -230.537, 55.023),
				payouts = {
					comp_drug_chloroform = {minValue = 10, maxValue = 30},
					comp_drug_iodine_bottle = {minValue = 10, maxValue = 30},
					comp_drug_diacetylmorphine = {minValue = 10, maxValue = 30},
					comp_drug_paracetamol = {minValue = 10, maxValue = 30},
					comp_drug_asprin = {minValue = 10, maxValue = 30},
				}
			},
			[3] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(92.033, -227.914, 55.064),
				payouts = {
					comp_drug_fentanyl_dropper = {minValue = 10, maxValue = 30},
					comp_drug_acetic = {minValue = 10, maxValue = 30},
					comp_drug_pseudo = {minValue = 10, maxValue = 30},
					comp_drug_ergotamine = {minValue = 10, maxValue = 30},
				}
			},			
		}
	},

	[40] = { -- pha_paleto
		shopType = nil,
		coords = vector3(-176.8, 6384.1, 31.3),
		management = vector3(-178.0, 6383.6, 31.6),
		deliveryPoint = vector3(-167.1, 6378.5, 30.3),
		safeLocation = vector3(-180.2, 6385.9, 31.5),
		cashRegisters = {
			[1] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-170.452, 6387.684, 31.929),
				payouts = {
					comp_drug_fentanyl_dropper = {minValue = 10, maxValue = 30},
					comp_drug_acetic = {minValue = 10, maxValue = 30},
					comp_drug_pseudo = {minValue = 10, maxValue = 30},
					comp_drug_ergotamine = {minValue = 10, maxValue = 30},
				}
			},
			[2] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-173.618, 6387.161, 31.632),
				payouts = {
					comp_drug_chloroform = {minValue = 10, maxValue = 30},
					comp_drug_iodine_bottle = {minValue = 10, maxValue = 30},
					comp_drug_diacetylmorphine = {minValue = 10, maxValue = 30},
					comp_drug_paracetamol = {minValue = 10, maxValue = 30},
					comp_drug_asprin = {minValue = 10, maxValue = 30},
				}
			},
			[3] = {
				active = true,
				beingOpened = false,
				timeTillOpen = Config.robberyTimer,
				isOpen = false,
				coords = vector3(-175.843, 6381.454, 31.960),
				payouts = {
					comp_drug_fentanyl_dropper = {minValue = 10, maxValue = 30},
					comp_drug_acetic = {minValue = 10, maxValue = 30},
					comp_drug_pseudo = {minValue = 10, maxValue = 30},
					comp_drug_ergotamine = {minValue = 10, maxValue = 30},
				}
			},
		}
	},

	--===============
	--   Restuarants
	--===============

	[41] = { -- Kraken Cocktails MRPD
		shopType = nil,
		coords = vector3(379.6, -1080.0, 29.6),
		management = vector3(375.3, -1082.0, 29.6),
		deliveryPoint = vector3(410.1, -1068.9, 28.4),
	},

	[42] = { -- Wilco's Comedy Club
		shopType = nil,
		coords = vector3(-435.0, 273.2, 83.6),
		management = vector3(-432.5, 276.6, 83.6),
		deliveryPoint = vector3(-423.1, 294.0, 82.2),
	},

	[43] = { -- Lost MC Tavern
		shopType = nil,
		coords = vector3(1228.5, -419.4, 67.7),
		management = vector3(1234.2, -421.6, 71.6),
		deliveryPoint = vector3(1225.0, -434.3, 66.6),
	},

	[44] = { -- Bean Machine
		shopType = nil,
		coords = vector3(-634.3, 235.2, 82.1),
		management = vector3(-635.9, 227.1, 82.4),
		deliveryPoint = vector3(-627.6, 206.9, 73.1),
	},

	[45] = { -- Legion Restuarant
		shopType = nil,
		coords = vector3(125.3, -1033.8, 29.4),
		management = vector3(142.2, -1062.2, 22.8),
		deliveryPoint = vector3(124.4, -1046.8, 28.2),
	},

	[46] = { -- TinyBigTaco
		shopType = nil,
		coords = vector3(10.5, -1605.7, 29.5),
		management = vector3(8.2, -1607.3, 29.6),
		deliveryPoint = vector3(21.9, -1606.7, 28.3),
	},

	[47] = { -- BurgerShot
		shopType = nil,
		coords = vector3(-1194.7, -892.9, 14.0),
		management = vector3(-1193.5, -898.0, 14.6),
		deliveryPoint = vector3(-1175.6, -885.5, 12.9),
	},

	[48] = { -- Pops Diner
		shopType = nil,
		coords = vector3(1589.9, 6455.3, 26.3),
		management = vector3(1587.1, 6459.5, 26.2),
		deliveryPoint = vector3(1591.5, 6443.4, 24.2),
	},

	[49] = { -- Bayview Lodge
		shopType = nil,
		coords = vector3(-688.5, 5798.8, 17.5),
		management = vector3(-688.4, 5795.8, 17.5),
		deliveryPoint = vector3(-684.3, 5785.3, 16.3),
	},

	[50] = { -- Downtown Pizza
		shopType = nil,
		coords = vector3(290.4, -976.8, 29.5),
		management = vector3(288.6, -989.9, 29.3),
		deliveryPoint = vector3(296.8, -998.2, 28.2),
	},

	--===============
	--   Clubs
	--===============

	[51] = { -- Vanilla Unicorn
		shopType = nil,
		coords = vector3(128.9, -1285.8, 29.6),
		management = vector3(96.0, -1293.0, 29.1),
		deliveryPoint = vector3(104.2, -1278.0, 28.0),
	},

	[52] = { -- Bahamamas West
		shopType = nil,
		coords = vector3(-1391.5, -606.1, 30.3),
		management = vector3(-1365.6, -623.1, 30.1),
		deliveryPoint = vector3(-1399.3, -639.5, 27.7),
	},

	[53] = { -- Galaxy
		shopType = nil,
		coords = vector3(351.9, 285.4, 91.2),
		management = vector3(389.0, 273.2, 94.8),
		deliveryPoint = vector3(336.7, 265.5, 102.8),
	},

	[54] = { -- Tequi-la-la
		shopType = nil,
		coords = vector3(-560.8, 286.7, 82.3),
		management = vector3(-564.5, 278.8, 83.1),
		deliveryPoint = vector3(-553.9, 300.8, 82.2),
	},

	[55] = { -- Marabunta shop // fudge lane
		shopType = nil, 
		coords = vector3(1334.1, -1651.2, 52.3),
		management = vector3(1336.7, -1647.5, 44.1),
		deliveryPoint = vector3(1311.3, -1658.0, 50.2),
	},

	[56] = { -- Bait Tackle Fishing
		shopType = nil, 
		coords = vector3(-1599.2, 5200.8, 4.4),
		management = vector3(-1602.8, 5200.9, 4.4),
		deliveryPoint = vector3(-1582.2, 5163.3, 18.6),
	},

	[57] = { -- Vinewood Pawnshop
		shopType = nil,
		coords = vector3(-1459.0, -402.7, 36.0),
		management = vector3(-1461.9, -404.1, 35.7),
		deliveryPoint = vector3(-1466.0, -391.6, 37.5),
	},

	[58] = { -- Strawberry Pawnshop
		shopType = nil,
		coords = vector3(173.8, -1317.7, 29.5),
		management = vector3(165.7, -1317.8, 29.1),
		deliveryPoint = vector3(163.1, -1324.0, 28.1),
	},

	[59] = { -- Server Item Warehouse // DON'T TOUCH PLEASE // MUST ALWAYS BE LAST
		shopType = "warehouse",
		coords = vector3(-429.6, -2790.4, 6.0),
		warehouseCoords = vector3(-428.7, -2790.2, 6.5),
		management = vector3(-429.6, -2790.4, 6.0),
		trailerModel = "trailers",
		trailerSpawns = {
			vector4(-461.241, -2806.801, 6.8, 44.25),
			vector4(-466.211, -2808.655, 6.8, 44.25),
			vector4(-460.294, -2801.146, 6.8, 44.25),
			vector4(-454.041, -2797.919, 6.8, 44.25),
			vector4(-450.454, -2791.969, 6.8, 44.25),
		}
	},
	
	[60] = { -- Trucking & Hauling
		shopType = nil,
		coords = vector3(2341.3, 3127.6, 48.1),
		management = vector3(2340.7, 3126.9, 48.1),
		viewVehicle = vector4(2353.855, 3132.648, 49.362, 259.29),
		deliveryPoint = vector3(2353.855, 3132.648, 49.362),
		buySpawn = vector4(2353.855, 3132.648, 49.362, 259.29),
	},

	[61] = { -- Last Train Diner
		shopType = nil,
		coords = vector3(-381.4, 265.4, 86.5),
		management = vector3(-382.8, 261.9, 86.3),
		deliveryPoint = vector3(-391.4, 265.7, 83.6),
	},
}

Config.ServerShops = { -- Used for unique stuff, like job payouts and casino, not attached to DB
	[1] = { -- Casino cashier
		active = true,
		label = "Press [~b~E~s~] To Speak to\n~b~Diamond Casino ~s~Cashier",
		toggleJob = "casino", -- The job able to toggle this shop on and off
		toggleRank = 1, -- The min rank able to toggle this shop on and off
		accessJob = nil, -- Job required to access the shop
		accessRank = nil, -- Job required to access the shop
		location = vector3(1116.4, 220.0, -49.3),
		interactDistance = 1.5,
		purchaseData = {
			--["casino_blackjack_chip"] = {buyPrice = 1, itemType = "item_standard"}, -- Valid example
			--["casino_blackjack_chip"] = {sellPrice = 1, itemType = "item_standard"}, -- Valid example
			--["casino_blackjack_chip"] = {sellPrice = 1, buyPrice = 1, itemType = "item_standard"}, -- Valid example
			["casino_blackjack_chip"] = {sellPrice = 1, buyPrice = 1, itemType = "item_standard"},
		},
	},
	[2] = { -- Fishing payouts
		active = true,
		label = "Press [~b~E~s~] To Sell\n~g~Fishing ~s~Products",
		location = vector3(-1598.7, 5202.3, 4.4),
		interactDistance = 1.5,
		purchaseData = {
			-- Old Fishing Items, don't sell or allow use on these
			["fish"] = {sellPrice = 100, itemType = "item_standard"},
			["shark"] = {sellPrice = 300, itemType = "item_standard"},
			["turtle"] = {sellPrice = 250, itemType = "item_standard"},
			["turtlebait"] = {sellPrice = 100, itemType = "item_standard"},
			["fishbait"] = {sellPrice = 100, itemType = "item_standard"},

			-- New Fishing Items
			["fishing_cod"] = {sellPrice = 185, itemType = "item_standard"},
			["fishing_mackerel"] = {sellPrice = 175, itemType = "item_standard"},
			["fishing_carp"] = {sellPrice = 195, itemType = "item_standard"},
			["fishing_roach"] = {sellPrice = 205, itemType = "item_standard"},
			["fishing_salmon"] = {sellPrice = 250, itemType = "item_standard"},
			["fishing_seabass"] = {sellPrice = 265, itemType = "item_standard"},
			["fishing_trout"] = {sellPrice = 275, itemType = "item_standard"},
			["fishing_stingrays"] = {sellPrice = 750, itemType = "item_standard"},
			["fishing_shark"] = {sellPrice = 7500, itemType = "item_standard"},
			["fishing_turtle"] = {sellPrice = 750, itemType = "item_standard"},
			["fishing_crabs"] = {sellPrice = 375, itemType = "item_standard"},
		},
	},
	[3] = { -- Hunting payouts
		active = true,
		label = "Press [~b~E~s~] To Sell\n~g~Hunting ~s~Products",
		location = vector3(-774.8, 5603.7, 33.7),
		interactDistance = 1.5,
		purchaseData = {
			["meat"] = {sellPrice = 250, itemType = "item_standard"},
			["photo"] = {sellPrice = 550, itemType = "item_standard"},
			["fur"] = {sellPrice = 1000, itemType = "item_standard"},
		},
	},
	[4] = { -- Beach party
		active = true,
		label = "Press [~b~E~s~] To Purchase\n~g~Food",
		location = vector3(-1787.8, -863.3, 7.6),
		interactDistance = 1.5,
		purchaseData = {
			["hotdog"] = {buyPrice = 100, itemType = "item_standard"},
			["lemonade"] = {buyPrice = 100, itemType = "item_standard"},
		},
	},
}

Config.BlipData = {
	["shop"] = {sprite = 52, colour = 2},
	["vehicle"] = {sprite = 326, colour = 0},
	["warehouse"] = {sprite = 524, colour = 0},
	
	["svrWarehouse"] = {sprite = 524, colour = 0},
	-- Sub-Categories
	["motorcycle"] = {sprite = 226, colour = 0},
	["boat"] = {sprite = 410, colour = 0},
	["pharmacy"] = {sprite = 51, colour = 1},
	["catering"] = {sprite = 436, colour = 47},
	["club"] = {sprite = 93, colour = 0},
	["fishing"] = {sprite = 78, colour = 0},
	["pawnshop"] = {sprite = 52, colour = 3},
}

Config.ScaleformButtons = {
	["shop_browse"] = {
		{button = {194}, text = "Leave"},
		{button = {190, 189}, text = "Browse Vehicles"},
		{button = {191}, text = "Place Order"},
		{button = {192}, text = "Test Drive"},
	}
}

Config.availableUpgrades = {
	["webhook"] = {label = "Discord Webhook", cost = 50000, content = "Allows you to setup a discord webhook for sales information! Helping you manage your business every hour of the day! See https://wiki.roleplay.co.uk/GTA:Shop_Management"},
	["cardpayment"] = {label = "Card Payments", cost = 100000, content = "Allowing your customers to pay with their card! No cash required!"},
}

Config.catStrings = {
	["mining_component"] = "Mining Components",
	["firearms"] = "Firearms",
	["firearm_component"] = "Firearm Components",
	["convenience_product"] = "General Convenience Products",
	["catering_basic"] = "Catering Products (Basic)",
	["catering_advanced"] = "Catering Products (Meals)",
	["catering_alcohol"] = "Catering Products (Alcohol)",
	["medical_product"] = "Medical Products",
	["seasonal_product"] = "Seasonal Products",
	["drug_component"] = "Drug Components",
	["fishing_product"] = "Fishing Product",

	["vehicles_boat"] = "Watercraft",
	["vehicles_commercial"] = "Commercial",
	["vehicles_compacts"] = "Compacts",
	["vehicles_coupes"] = "Coupes",
	["vehicles_cycles"] = "Cycles",
	["vehicles_helicopters"] = "Helicopters",
	["vehicles_industrial"] = "Industrial",
	["vehicles_military"] = "Military",
	["vehicles_muscle"] = "Muscles",
	["vehicles_offroad"] = "Offroad",
	["vehicles_openwheel"] = "Openwheel",
	["vehicles_planes"] = "Planes",
	["vehicles_suvs"] = "SUVs",
	["vehicles_sedan"] = "Sedans",
	["vehicles_service"] = "Service",
	["vehicles_sports"] = "Sports",
	["vehicles_sportsclassic"] = "Sports Classics",
	["vehicles_super"] = "Super",
	["vehicles_trailer"] = "Trailers",
	["vehicles_trains"] = "Trains",
	["vehicles_utility"] = "Utility",
	["vehicles_vans"] = "Vans",

	["vehicles_motorcycles"] = "Generic Motorcycles",
	["vehicles_motorcycles_lost"] = "LostMC Motorcycles",
	["vehicles_motorcycles_other"] = "Other Motorcycles",
}

Config.vehInventorySize = {
	[0]=100, -- Compacts
	[1]=100, -- Sedans
	[2]=150, -- SUV
	[3]=100, -- COUPE
	[4]=100, -- MUSCLE
	[5]=100, -- SPORTS CLASIC
	[6]=100, -- SPORTS
	[7]=100, -- SUPER
	[8]=50, -- BIKES
	[9]=150, -- OFFROAD
	[10]=110, -- INDUSTRIAL
	[11]=110, -- UTILITY
	[12]=250, -- VANS
	[13]=0, -- CYCLES
	[14]=100, -- BOATS
	[15]=100, -- HELIS
	[16]=100, -- PLANES
	[17]=100, -- SERVICE
	[18]=100, -- EMERGENCY
	[19]=0, -- MILITARY
	[20]=500, -- COMMERCIAL
	[21]=0, -- TRAINS
}

Config.testTrack = {
	spawnpoint = vector4(12786.30, 14615.39, 20.95, 177.13),
}