-- Translations for the text are at the bottom of this file.

config = {}

config.sellPercentage = 0.65
config.addHouseBlips = false
config.addBoughtHouses = false
config.enableGarage = true
config.use3dText = true
config.visitHouse = true


config.canRaid = {
	"police",
}

config.medics = {
	"ambulance"
}

config.ammoTypes = {
	pistol = {
		label = "Pistol ammo",
		weaponHash = "WEAPON_PISTOL",
		max = 250,
		count = 0
	},
	shotgun = {
		label = "Shotgun ammo",
		weaponHash = "WEAPON_PUMPSHOTGUN",
		max = 250,
		count = 0
	},
	smg = {
		label = "SMG ammo",
		weaponHash = "WEAPON_SMG",
		max = 250,
		count = 0
	},
	assaultRifle = {
		label = "Assault rifle ammo",
		weaponHash = "WEAPON_ASSAULTRIFLE",
		max = 250,
		count = 0
	},
	lmg = {
		label = "LMG ammo",
		weaponHash = "WEAPON_MG",
		max = 250,
		count = 0
	},
	sniper = {
		label = "Sniper ammo",
		weaponHash = "WEAPON_SNIPERRIFLE",
		max = 250,
		count = 0
	},
	petrol = {
		label = "Petrol",
		weaponHash = "WEAPON_PETROLCAN",
		max = 250,
		count = 0
	},
	beanBag = {
		label = "Bean Bag",
		weaponHash = "WEAPON_GRENADELAUNCHER",
		max = 18,
		count = 0
	},
	vodka = {
		label = "Vodka",
		weaponHash = "WEAPON_MOLOTOV",
		max = 1,
		count = 0
	},
	musket = {
		label = "Musket Ball",
		weaponHash = "WEAPON_MUSKET",
		max = 20,
		count = 0
	},
}

config.ammo = {
	WEAPON_ASSAULTRIFLE = "assaultRifle",
	WEAPON_APPISTOL = "pistol",
	WEAPON_DBSHOTGUN = "shotgun",
	WEAPON_MARKSMANPISTOL = "pistol",
	WEAPON_DOUBLEACTION = "pistol",
	WEAPON_HEAVYSNIPER = "sniper",
	WEAPON_BULLPUPSHOTGUN = "shotgun",
	WEAPON_COMBATPISTOL = "pistol",
	WEAPON_GROVEM1911 = "pistol",
	WEAPON_BALLAM1911 = "pistol",
	WEAPON_VAGOSM1911 = "pistol",
	WEAPON_MARAGRANDEM1911 = "pistol",
	WEAPON_AZTECAM1911 = "pistol",
	WEAPON_TRIADSM1911 = "pistol",
	WEAPON_PUMPSHOTGUN_MK2 = "shotgun",
	WEAPON_CARBINERIFLE_MK2 = "assaultRifle",
	WEAPON_PUMPSHOTGUN = "shotgun",
	WEAPON_HEAVYPISTOL = "pistol",
	WEAPON_PISTOL = "pistol",
	WEAPON_SPECIALCARBINE_MK2 = "assaultRifle",
	WEAPON_REVOLVER = "pistol",
	WEAPON_NAVYREVOLVER = "pistol",
	WEAPON_PISTOL_MK2 = "pistol",
	WEAPON_HEAVYSHOTGUN = "shotgun",
	WEAPON_SPECIALCARBINE = "assaultRifle",
	WEAPON_ASSAULTSMG = "smg",
	WEAPON_SMG = "smg",
	WEAPON_MICROSMG = "smg",
	WEAPON_CERAMICPISTOL = "pistol",
	WEAPON_MARKSMANRIFLE_MK2 = "sniper",
	WEAPON_SNIPERRIFLE = "sniper",
	WEAPON_VINTAGEPISTOL = "pistol",
	WEAPON_SMG_MK2 = "smg",
	WEAPON_MG = "lmg",
	WEAPON_MARKSMANRIFLE = "sniper",
	WEAPON_COMBATMG_MK2 = "lmg",
	WEAPON_COMBATMG = "lmg",
	WEAPON_SNSPISTOL_MK2 = "pistol",
	WEAPON_HEAVYSNIPER_MK2 = "sniper",
	WEAPON_GUSENBERG = "lmg",
	WEAPON_SNSPISTOL = "pistol",
	WEAPON_COMPACTRIFLE = "assaultRifle",
	WEAPON_ASSAULTSHOTGUN = "shotgun",
	WEAPON_AUTOSHOTGUN = "shotgun",
	WEAPON_MINISMG = "smg",
	WEAPON_COMBATPDW = "smg",
	WEAPON_ASSAULTRIFLE_MK2 = "assaultRifle",
	WEAPON_PISTOL50 = "pistol",
	WEAPON_ADVANCEDRIFLE = "assaultRifle",
	WEAPON_MACHINEPISTOL = "smg",
	WEAPON_CARBINERIFLE = "assaultRifle",
	WEAPON_MUSKET = "musket",
	WEAPON_BULLPUPRIFLE = "assaultRifle",
	WEAPON_BULLPUPRIFLE_MK2 = "assaultRifle",
	WEAPON_SAWNOFFSHOTGUN = "shotgun",
	WEAPON_REVOLVER_MK2 = "pistol",
	WEAPON_PETROLCAN = "petrol",
}

config.access = {
	owner = {
		furnish = true,
		storage = true,
		manufacture = true,
		letIn = true,
		wardrobe = true
	},
	raider = {
		furnish = false,
		storage = true,
		manufacture = false,
		letIn = false,
		wardrobe = false
	},
	visit = {
		furnish = false,
		storage = true,
		manufacture = true,
		letIn = false,
		wardrobe = false
	},
	checking = {
		furnish = false,
		storage = false,
		manufacture = false,
		letIn = false,
		wardrobe = false
	},
	medic = {
		furnish = false,
		storage = false,
		manufacture = false,
		letIn = false,
		wardrobe = false
	}
}

config.ikeaBlip = {
	enabled = false,

	sprite = 357,
	colour = 0,
	scale = 0.75
}

config.props = {
	['trevor'] = {
		obj = `shell_trevor`, -- wallpaper bathroom
		maxStorage = 5000,
		maxVehicles = 3,
		furnituring = {
			{
				vectors = {
					vector2(10.2, 5.2),
					vector2(10.2, -5.17),
					vector2(-10.5, -5.17),
					vector2(-10.5, 5.2),
				},
				minZ = -100.0,
				maxZ = -95.0
			}
		}
	},
	['nice'] = {
		obj = `shell_v16mid`, -- red and green
		maxStorage = 5000,
		maxVehicles = 4,
		furnituring = {
			{
				vectors = {
					vector2(4.5, -16),
					vector2(4.5, -11.5),
					vector2(7, -11.5),
					vector2(7, -6),
					vector2(4.5, -6),
					vector2(4.5, -2.7),
					vector2(9, -2.7),
					vector2(9, 7.5),
					vector2(-9.1, 7.5),
					vector2(-9.1, -6.6),
					vector2(-1, -6.6),
					vector2(-1, -16),
				},
				minZ = -100.846565246582,
				maxZ = -95.809851074219
			}
		}
	},
	['lester'] = {
		obj = `shell_lester`, -- manky
		maxStorage = 5000,
		maxVehicles = 2,
		furnituring = {
			{
				vectors = {
					vector2(1.2, -7.5),
					vector2(1.2, -4.2),
					vector2(6.1, -4.2),
					vector2(6.1, 7.4),
					vector2(-5.3, 7.4),
					vector2(-5.3, 2.7),
					vector2(-2.7, 2.7),
					vector2(-2.7, 1.7),
					vector2(-3.3, 1.7),
					vector2(-3.3, -2),
					vector2(-4.3, -2),
					vector2(-4.3, -7.5),
				},
				minZ = -100.846565246582,
				maxZ = -95.809851074219
			}
		}
	},
	['mansion'] = {
		obj = `shell_apartment1`,
		maxStorage = 5000,
		maxVehicles = 5,
		furnituring = {
			{
				vectors = {
					vector2(7.5, -16.0),
					vector2(7.5, 6.0),
					vector2(5.3, 6.0),
					vector2(5.3, 10.3),
					vector2(-5.0, 10.3),
					vector2(-5, -16.0),
				},
				minZ = -97.10,
				maxZ = -88.0
			},
			{
				vectors = {
					vector2(-7.5, 18.8),
					vector2(4.0, 18.8),
					vector2(4.0, 10.3),
					vector2(5.3, 10.3),
					vector2(5.5, 4.0),
					vector2(-7.5, 4.0),
				},
				minZ = -100.905647277832,
				maxZ = -95.10,
			},
		}
	},
	['mansion2'] = {
		obj = `shell_apartment2`,
		maxStorage = 5000,
		maxVehicles = 5,
		furnituring = {
			{
				vectors = {
					vector2(7.5, -16.0),
					vector2(7.5, 6.0),
					vector2(5.3, 6.0),
					vector2(5.3, 10.3),
					vector2(-5.0, 10.3),
					vector2(-5, -16.0),
				},
				minZ = -97.10,
				maxZ = -88.0
			},
			{
				vectors = {
					vector2(-7.5, 18.8),
					vector2(4.0, 18.8),
					vector2(4.0, 10.3),
					vector2(5.3, 10.3),
					vector2(5.5, 4.0),
					vector2(-7.5, 4.0),
				},
				minZ = -100.905647277832,
				maxZ = -95.10,
			},
		}
	},
	['mansion3'] = {
		obj = `shell_apartment3`, -- large appartments
		maxStorage = 5000,
		maxVehicles = 5,
		furnituring = {
			{
				vectors = {
					vector2(12, 7.5),
					vector2(1.8, 8),
					vector2(-4.6, 5),
					vector2(-9, 5.8),
					vector2(-11, -1),
					vector2(-19.7, -6.8),
					vector2(-13.7, -15.8),
					vector2(-6.7, -11),
					vector2(15.5, -10),
					vector2(15.5, -1),
					vector2(20, -1),
					vector2(20, 6),
					vector2(12, 6),
				},
				minZ = -95.270156860352,
				maxZ = -88.673141479492
			},
			{
				vectors = {
					vector2(20, -1),
					vector2(20, 6),
					vector2(3, 6),
					vector2(-5.5, 8),
					vector2(-7.7, 9.2),
					vector2(-11.2, 9.2),
					vector2(-11.2, 15),
					vector2(-20, 15),
					vector2(-20, -2.1),
					vector2(-11.2, -2.1),
					vector2(-11.2, 2.5),
					vector2(-6.8, 1),
					vector2(0, 0.2),
					vector2(0, -1),
					vector2(-5.5, -1),
					vector2(-5.5, -9.4),
					vector2(11.3, -9.4),
					vector2(11.3, -2),
				},
				minZ = -99.281211853027,
				maxZ = -93.270156860352
			}
		}
	},
	['trailer'] = {
		obj = `shell_trailer`,
		maxStorage = 5000,
		maxVehicles = 2,
		furnituring = {
			{
				vectors = {
					vector2(7.4, 3.5),
					vector2(7.4, -3.6),
					vector2(-7.5, -3.6),
					vector2(-7.5, 3.5),
				},
				minZ = -100.095718383789,
				maxZ = -94.028768920898
			}
		}
	},
	['kinda_nice'] = {
		obj = `shell_v16low`, -- small appartments
		maxStorage = 5000,
		maxVehicles = 2,
		furnituring = {
			{
				vectors = {
					vector2(6.5, 7.9),
					vector2(-6.6, 7.9),
					vector2(-6.6, 0.3),
					vector2(-5, 0.3),
					vector2(-5, -1.7),
					vector2(1.5, -1.7),
					vector2(1.5, -4),
					vector2(6.5, -4),
				},
				minZ = -98.985740661621,
				maxZ = -94.0
			}
		}
	},
}

config.furniture = {
	categories = {
		{'table', 'Tables'},
		{'chair', 'Chairs'},
		{'decorations', 'Decorations'},
		{'electronics', 'Electronics'},
		{'Plants', 'Plants'},
		{'sofa', 'Sofas'},
		{'bed', 'Beds'},
		{'FoodandDrinks','Food & drinks'},
		{'lights', 'Lights'},
		{'kitchen', 'Kitchen'},
		{'Storage', 'Storage'},
		{'Bins', 'Bins'},
		{'bathroom', 'Bathroom'},
		{'accessory', 'Misc'},
		{'wardrobe', 'Wardrobe'}
	},

	['chair'] = {
		{'Table chair', 'prop_table_02_chr', 50},
		{'Armchair', 'prop_cs_folding_chair_01', 150},
		{'Rock chair', 'prop_rock_chair_01', 150},
		{'Wheel chair', 'prop_wheelchair_01', 150},
		{'Office chair', 'p_clb_officechair_s', 125},
		{'Office chair 2', 'prop_off_chair_04_s', 150},
		{'Office chair 3', 'prop_cs_office_chair', 150},
		{'Office chair 4', 'prop_off_chair_04', 150},
		{'Office chair 5', 'prop_off_chair_03', 150},
		{'Office chair 6', 'prop_off_chair_01', 150},
		{'Office chair 7', 'prop_off_chair_05', 150},
		{'Office chair 8', 'v_club_officechair', 150},
		{'Office chair 9', 'v_corp_offchair', 150},
		{'Torture Chair', 'prop_torture_ch_01', 150},
		{'Diner chair', 'p_dinechair_01_s', 150},
		{'Diner chair', 'p_dinechair_01_s', 150},
		{'Sol chair', 'p_soloffchair_s', 150},
		{'Sol chair 2', 'p_soloffchair_s', 150},
		{'Yacht chair', 'prop_sol_chair', 150},
		{'Chair 2', 'prop_chair_02', 150},
		{'Chair 3', 'prop_chair_01b', 150},
		{'Chair 4', 'prop_chair_04a', 150},
		{'Chair 5', 'prop_chair_04b', 150},
		{'Chair 6', 'prop_chair_06', 150},
		{'Chair 7', 'prop_chair_07', 150},
		{'Chair 8', 'prop_chair_09', 150},
		{'Chair 9', 'prop_chateau_chair_01', 150},
		{'Chair 10', 'prop_clown_chair', 150},
		{'Chair 11', 'prop_direct_chair_01', 150},
		{'Chair 12', 'prop_cs_office_chair', 150},
		{'Chair 13', 'prop_gc_chair02', 150},
		{'Chair 14', 'prop_ld_farm_chair01', 150},
		{'Chair 15', 'v_ilev_chair02_ped', 150},
		{'Chair 16', 'v_corp_cd_chair', 150},
		{'Chair 17', 'v_corp_bk_chair3', 150},
		{'Chair 18', 'prop_skid_chair_03', 150},
		{'Chair 19', 'prop_table_01_chr_a', 150},
		{'Chair 20', 'prop_table_01_chr_b', 150},
		{'Chair 21', 'prop_table_02_chr', 150},
		{'Chair 22', 'prop_table_03_chr', 150},
		{'Chair 23', 'prop_table_03b_chr', 150},
		{'Chair 24', 'prop_table_04_chr', 150},
		{'Chair 25', 'prop_table_05_chr', 150},
	},
	['decorations'] = {
		{'Bottle', 'apa_mp_h_acc_bottle_01', 100},
		{'Candles', 'apa_mp_h_acc_candles_01', 100},
		{'Mirror', 'p_int_jewel_mirror', 100},
		{'Plate', 'apa_mp_h_acc_dec_plate_01', 100},
		{'Vase', 'apa_mp_h_acc_vase_01', 100},
		{'Vase', 'v_res_desktidy', 100},
		{'Flowers', 'apa_mp_h_acc_vase_flowers_01', 100},
		{'Ashtray', 'ex_prop_ashtray_luxe_02', 100},
		{'Newspaper', 'p_cs_newspaper_s', 100},
		{'Pamphlet', 'p_cs_pamphlet_01_s', 100},
		{'Bong', 'prop_bong_01', 100},
		{'Rasberry', 'prop_mr_rasberryclean', 100},
		{'Guitar', 'prop_acc_guitar_01', 100},
		{'Board', 'p_planning_board_04', 100},
		{'Clock 1', 'prop_hotel_clock_01', 100},
		{'Clock 2', 'prop_big_clock_01', 100},
		{'Clock 3', 'prop_egg_clock_01', 100},
		{'Painting', 'v_ilev_ra_doorsafe', 100},
		{'Dart', 'prop_dart_bd_cab_01', 100},
		{'Dart 2', 'prop_dart_bd_01', 100},
		{'Exercise bike', 'prop_exercisebike', 300},
		{'Lazy Jeans', 'p_laz_j02_s', 300}
	},
	['table'] = {
		{'TV Table', 'prop_tv_cabinet_03', 500},
		{'Farm table', 'prop_ld_farm_table02', 300},
		{'Farm table 2', 'prop_ld_farm_table01', 300},
		{'Coffee table', 'prop_fbi3_coffee_table', 300},
		{'Coffee table 2', 'prop_t_coffe_table', 300},
		{'Coffee table 2', 'prop_t_coffe_table_02', 300},
		{'Tri table', 'prop_tri_table_01', 300},
		{'Protest table', 'prop_protest_table_01', 300},
		{'Desk 1', 'v_res_son_desk', 300},
		{'Desk 2', 'v_res_mddesk', 300},
		{'Coffee Table', 'v_res_fh_coftableb', 150},
		{'Coffee Table 2', 'v_res_fh_coftablea', 150},
		{'Table 2', 'hei_prop_yah_table_01', 150},
		{'Table 3', 'hei_prop_yah_table_02', 150},
		{'Table 4', 'hei_prop_yah_table_03', 150},
		{'Table 5', 'prop_ld_farm_table01', 150},
		{'Table 6', 'prop_ld_farm_table02', 150},
		{'Table 7', 'prop_chateau_table_01', 150},
		{'Table 8', 'prop_fbi3_coffee_table', 150},
		{'Table 9', 'prop_patio_lounger1_table', 150},
		{'Table 10', 'prop_picnictable_01', 150},
		{'Table 11', 'prop_proxy_chateau_table', 150},
		{'Table 12', 'prop_rub_table_01', 150},
		{'Table 13', 'prop_rub_table_02', 150},
		{'Table 14', 'prop_table_01', 150},
		{'Table 15', 'prop_table_02', 150},
		{'Table 16', 'prop_table_03', 150},
		{'Table 17', 'prop_table_03b', 150},
		{'Table 18', 'prop_table_04', 150},
		{'Table 19', 'prop_table_05', 150},
		{'Table 20', 'prop_table_06', 150},
		{'Table 21', 'prop_table_07', 150},
		{'Table 22', 'prop_table_08', 150},
		{'Table 23', 'prop_table_08_chr', 150},
		{'Table 24', 'prop_ven_market_table1', 150},
		{'Table 25', 'v_ilev_liconftable_sml', 150},
		{'Table 26', 'prop_table_tennis', 150},
		{'Table 27', 'prop_pooltable_02', 150},
		{'Table 28', 'prop_astro_table_02', 150},
		{'Table 29', 'prop_astro_table_01', 150}
	},
	['electronics'] = {
		{'Flat tv', 'prop_tv_flat_02', 750},
		{'Fat tv', 'prop_tv_06', 350},
		{'Small fat tv', 'prop_tv_02', 250},
		{'Radio', 'prop_portable_hifi_01', 100},
		{'New computer', 'prop_dyn_pc_02', 500},
		{'Old computer', 'prop_pc_01a', 100},
		{'Monitor', 'prop_monitor_01c', 75},
		{'Monitor 2', 'prop_ld_monitor_01', 75},
		{'Monitor 3', 'prop_monitor_03b', 25},
		{'Phone', 'p_amb_phone_01', 75},
		{'Old phone', 'prop_v_m_phone_o1s', 75},
		{'Office Phone', 'prop_office_phone_tnt', 75},
		{'CS Phone', 'prop_cs_phone_01', 75},
		{'Tablet 1', 'prop_cs_tablet_02', 75},
		-- {'Tablet 2', 'prop_cs_tablet_01', 75},
		{'Table mic', 'prop_table_mic_01', 75},
		{'Radio', 'prop_portable_hifi_01', 75},
		{'Laptop', 'p_amb_lap_top_02', 75},
		{'Laptop 2', 'p_cs_laptop_02', 75},
		{'Laptop Closed', 'p_cs_laptop_02_w', 75},
		{'Keypad', 'prop_ld_keypad_01b', 75},
		{'Keypad 2', 'prop_ld_keypad_01', 75},
		{'PC', 'prop_dyn_pc', 75},
		{'PC 2', 'prop_dyn_pc_02', 75},
		{'PC 3', 'prop_pc_01a', 75},
		{'PC 4', 'hei_prop_heist_pc_01', 75},
		{'PC 5', 'prop_pc_02a', 75},
		{'Mouse', 'prop_cs_mouse_01', 75},
		{'Mouse 2', 'prop_mouse_01a', 75},
		{'Mousemat', 'v_res_mousemat', 75},
		{'Keyboard', 'hei_prop_hei_cs_keyboard', 75},
		{'Keyboard 2', 'prop_cs_keyboard_01', 75},
		{'Keyboard 3', 'prop_keyboard_01a', 75},
		{'Bedside clock', 'v_res_fh_bedsideclock', 75}
	},
	['bed'] = {
		{'Bed', 'v_res_msonbed_s', 450},
		{'Bed 2', 'p_lestersbed_s', 150},
		{'Bed 3', 'p_mbbed_s', 150},
		{'Bed 4', 'p_v_res_tt_bed_s', 150},
		{'Bed 5', 'v_res_msonbed_s', 150},
		{'Bed 6', 'v_res_mbbed', 150},
		{'Bed 7', 'v_res_d_bed', 150},
		{'Bed 8', 'v_res_tre_bed1', 150},
		{'Bed 9', 'v_res_tre_bed2', 150},
		{'Bed 10', 'v_res_tt_bed', 150}
	},
	['sofa'] = {
		{'Sofa Cushion', 'v_ilev_m_sofacushion', 150},
		--{'Sofa', 'p_sofa_s', 300},
		{'Leather sofa', 'p_v_med_p_sofa_s', 300},
		{'Used sofa', 'v_tre_sofa_mess_c_s', 150},
		{'Fabric sofa', 'p_res_sofa_l_s', 225},
		{'Couch', 'miss_rub_couch_01', 225},
		{'Sofa', 'prop_t_sofa_02', 300},
		{'Sofa 2', 'prop_t_sofa', 300},
		{'Sofa 3', 'p_lev_sofa_s', 150},
		{'Sofa 4', 'p_res_sofa_l_s', 150},
		{'Sofa 5', 'p_v_med_p_sofa_s', 150},
		{'Sofa 6', 'p_yacht_sofa_01_s', 150},
		{'Sofa 7', 'v_ilev_m_sofa', 150},
		{'Sofa 8', 'v_res_tre_sofa_s', 150},
		{'Sofa 9', 'prop_rub_couch02', 150},
		{'Sofa 10', 'v_res_m_h_sofa_sml', 150},
		{'Sofa 11', 'v_res_mp_stripchair', 150},
		{'Sofa 12', 'v_res_d_armchair', 150},
		{'Sofa 13', 'v_tre_sofa_mess_a_s', 150},
		{'Sofa 14', 'v_tre_sofa_mess_b_s', 150},
		{'Sofa 15', 'v_tre_sofa_mess_c_s', 150},
		{'Sofa 16', 'prop_ld_farm_chair01', 150},
		{'Sofa 17', 'prop_ld_farm_couch01', 150},
		{'Sofa 18', 'prop_ld_farm_couch02', 150}
	},
	['Plants'] = {
		{'Plant 1', 'p_int_jewel_plant_02', 100},
		{'Plant 2', 'p_int_jewel_plant_01', 100},
		{'Plant 3', 'prop_fbibombplant', 100},
		{'Plant 4', 'prop_fib_plant_01', 100},
		{'Plant 5', 'prop_fib_plant_02', 100},
		{'Plant 6', 'prop_ld_dstplanter_01', 100},
		{'Plant 7', 'prop_ld_planter2b', 100},
		{'Plant 8', 'prop_plant_int_01a', 100},
		{'Plant 9', 'prop_plant_int_01b', 100},
		{'Plant 10', 'prop_plant_int_02a', 100},
		{'Plant 11', 'prop_plant_int_02b', 100},
		{'Plant 12', 'prop_plant_int_03a', 100},
		{'Plant 13', 'prop_plant_int_03c', 100},
		{'Plant 14', 'prop_plant_int_03b', 100},
		{'Plant 15', 'prop_plant_int_04b', 100},
		{'Plant 16', 'prop_plant_int_04a', 100},
		{'Plant 17', 'prop_plant_int_04c', 100},
		{'Plant 13', 'prop_plant_palm_01a', 100},
		{'Plant 14', 'prop_plant_palm_01c', 100},
		{'Plant 15', 'prop_pot_plant_01b', 100},
		{'Plant 16', 'prop_pot_plant_01a', 100},
		{'Plant 17', 'prop_pot_plant_01c', 100},
		{'Plant 18', 'prop_pot_plant_01d', 100},
		{'Plant 19', 'prop_pot_plant_03c', 100},
		{'Plant 20', 'prop_pot_plant_05a', 100}
	},
--[[
	['CashGoldJewels'] = {
		{'Cash Case', 'prop_cash_case_02', 50},
		{'Cash Crate', 'prop_cash_crate_01', 50},
		{'Cash Crat 2', 'hei_prop_cash_crate_half_full', 50},
		{'Cash Note', 'prop_anim_cash_note_b', 50},
		{'Cash Pile', 'prop_anim_cash_pile_01', 50},
		{'Cash trolley', 'prop_cash_trolly', 50},
		{'Cash trolley', 'prop_poly_bag_money', 50},
		{'Gold trolley full', 'prop_gold_trolly_full', 50},
		{'Gold trolley', 'prop_gold_trolly', 50},
		{'Gold bar', 'prop_gold_bar', 50},
		{'Large Gold', 'prop_large_gold', 50},
		{'Large Gold 2', 'p_large_gold_s', 50},
		{'Gold Chest', 'prop_ld_gold_chest', 50},
		{'Peyote Gold', 'prop_peyote_gold_01', 50},
		{'Jewel 1', 'prop_jewel_03b', 50},
		{'Jewel 2', 'prop_jewel_04b', 50},
		{'Jewel 3', 'prop_jewel_02b', 50},
		{'Jewel 4', 'prop_jewel_pickup_new_01', 50},
		{'Jewel 5', 'prop_jewel_04b', 50},
		{'Jewel 6', 'prop_cs_beer_box', 50}
	},
	['Drugs'] = {
		{'Drug ', 'prop_weed_pallet', 500},
		{'Drug 2', 'hei_prop_hei_drug_pack_01b', 100},
		{'Drug 3', 'hei_prop_hei_drug_pack_01a', 100},
		{'Drug 4', 'hei_prop_hei_drug_pack_02', 100},
		{'Drug 5', 'hei_prop_heist_drug_tub_01', 100},
		{'Drug 6', 'ng_proc_drug01a002', 100},
		{'Drug 7', 'prop_drug_bottle', 100},
		{'Drug 8', 'hei_prop_hei_drug_case', 100},
		{'Drug 9', 'prop_drug_burner', 100},
		{'Drug 10', 'prop_drug_erlenmeyer', 100},
		{'Drug 11', 'prop_drug_package', 100},
		{'Drug 12', 'prop_drug_package_02', 100},
		{'Drug 13', 'prop_mp_drug_package', 100},
		{'Drug 14', 'prop_mp_drug_pack_blue', 100},
		{'Drug 15', 'prop_mp_drug_pack_red', 100},
		{'Drug 16', 'prop_coke_block_01', 100},
		{'Drug 17', 'prop_coke_block_half_a', 100},
		{'Drug 18', 'p_meth_bag_01_s', 500},
		{'Drug 19', 'prop_meth_bag_01', 100},
		{'Drug 20', 'prop_meth_setup_01', 100}
	},
--]]
	['FoodandDrinks'] = {
		{'Peanut bowl', 'prop_peanut_bowl_01', 50},
		{'Bowl', 'prop_cs_bowl_01', 50},
		{'BS Cup', 'prop_cs_bs_cup', 50},
		{'Coffee', 'p_ing_coffeecup_02', 50},
		{'Fruit Stand 1', 'prop_fruit_stand_03', 50},
		{'Fruit Stand 2', 'prop_fruit_stand_02', 50},
		{'Fruit Stand 3', 'prop_fruit_stand_01', 50},
		{'Fruit Stand 4', 'prop_fruit_stand_03', 50},
		{'Fruit Stand 5', 'prop_fruit_stand_03', 50},
		{'Beer box', 'prop_cs_beer_box', 50},
		{'Beer 2', 'beerrow_world', 50},
		{'Beer 3', 'prop_amb_beer_bottle', 50},
		{'Beer 4', 'prop_beer_blr', 50},
		{'Beer 5', 'prop_beer_logger', 50},
		{'Food', 'ng_proc_food_bag01a', 50},
		{'Food 2', 'prop_food_bs_burg1', 50},
		{'Food 3', 'prop_food_bs_burg3', 50},
		{'Food 4', 'prop_food_bs_chips', 50},
		{'Food 5', 'prop_food_bs_burger2', 50},
		{'Food 6', 'prop_food_bs_coffee', 50},
		{'Food 7', 'prop_food_cups1', 50},
		{'Food 8', 'prop_food_cb_cups01', 50},
		{'Food 9', 'prop_food_cb_cups02', 50},
		{'Food 10', 'prop_food_bs_cups02', 50}
	},
	['lights'] = {
		{'Light ', 'prop_cd_lamp', 150},
		{'Light 2', 'v_res_desklamp', 150},
		{'Light 3', 'v_corp_cd_desklamp', 150},
		{'Light 4', 'v_res_d_lampa', 150},
		{'Light 5', 'v_res_fh_floorlamp', 150},
		{'Light 6', 'v_res_fa_lamp1on', 150},
		{'Light 7', 'v_res_j_tablelamp1', 150},
		{'Light 8', 'v_res_j_tablelamp2', 150},
		{'Light 9', 'v_res_mplanttongue', 150},
		{'Light 10', 'v_res_m_lampstand', 150},
		{'Light 11', 'v_res_m_lampstand2', 150},
		{'Light 12', 'v_res_mtblelampmod', 150},
		{'Light 13', 'v_res_m_lamptbl', 150},
		{'Light 14', 'v_res_tre_lightfan', 150},
		{'Light 15', 'v_res_tre_talllamp', 150},
		{'Light 16', 'v_ret_fh_walllighton', 150},
		{'Light 17', 'v_ret_gc_lamp', 150},
		{'Light 18', 'v_res_m_lamptbl', 150},
		{'Light 19', 'hei_prop_hei_bnk_lamp_02', 150},
		{'Light 20', 'prop_ld_cont_light_01', 150},
		{'Light 21', 'hei_prop_hei_bnk_lamp_01', 150},
		{'Light 22', 'prop_chall_lamp_02', 150},
		{'Light 23', 'v_ilev_fh_lampa_on', 150},
		{'Light 24', 'prop_construcionlamp_01', 150},
		{'Light 25', 'hei_prop_bank_ornatelamp', 150},
		{'Light 26', 'prop_kino_light_03', 150},
		{'Light 27', 'prop_oldlight_01c', 150},
		{'Light 28', 'prop_recycle_light', 150},
		{'Light 29', 'prop_studio_light_01', 150},
		{'Light 30', 'prop_studio_light_02', 150},
		{'Light 25', 'hei_prop_bank_ornatelamp', 150},
		{'Light 26', 'prop_wall_light_02a', 150},
		{'Light 27', 'prop_wall_light_03a', 150},
		{'Light 28', 'prop_wall_light_04a', 150},
		{'Light 29', 'prop_wall_light_05a', 150},
		{'Light 30', 'prop_wall_light_05c', 150}

	  },

	  ['kitchen'] = {
		{'Coffee machine', 'apa_mp_h_acc_coffeemachine_01', 150},
		{'Scales', 'bkr_prop_coke_scale_01', 150},
		{'Bin', 'hei_heist_kit_bin_01', 150},
		{'Sideboard', 'hei_heist_str_sideboardl_03', 150},
		{'Trolley', 'hei_prop_hei_cash_trolly_03', 150},
		{'Bag', 'hei_prop_hei_paper_bag', 150},
		{'Counter', 'p_new_j_counter_02', 150},
		{'Fruit 1', 'apa_mp_h_acc_fruitbowl_01', 150},
		{'Fruit 2', 'apa_mp_h_acc_fruitbowl_02', 150},
		{'Fruit 3', 'prop_bar_fruit', 150},
		{'Fruit 4', 'prop_bar_lemons', 150},
		{'Fruit 5', 'prop_bar_measrjug', 150},
		{'Sink', 'prop_bar_sink_01', 150},
		{'Cleaver', 'prop_cleaver', 150},
		{'Kitchen stool', 'v_ilev_fh_kitchenstool', 150},
		{'Fridge 1', 'prop_trailr_fridge', 150},
		{'Fridge 2', 'prop_fridge_01', 150},
		{'Fridge 3', 'prop_fridge_03', 150},
		{'Vend 1', 'prop_vend_fridge01', 150},
		{'Vend 2', 'prop_vend_snak_01', 150},
		{'Vend 3', 'prop_vend_coffe_01', 150},
		{'Vend 4', 'prop_vend_soda_01', 150},
		{'Vend 5', 'prop_vend_soda_02', 150},
		{'Vend 6', 'prop_vend_water_01', 150},
		{'Vend 7', 'prop_watercooler', 150}
	},
	['bathroom'] = {
		{'Towel', 'prop_shower_towel', 150},
		{'Towel 2', 'p_shower_towel_s', 150},
		{'Towel 3', 'v_res_mbtowel', 150},
		{'Towel 4', 'v_res_mbtowelfld', 150},
		{'Shower rack', 'prop_shower_rack_01', 150},
		{'Bath', 'v_res_mbath', 150},
		{'Bathtub', 'apa_mp_h_bathtub_01', 150},
		{'Counter', 'p_new_j_counter_02', 150},
		{'Lotion1', 'prop_beach_lotion_01', 150},
		{'Lotion2', 'prop_beach_lotion_02', 150},
		{'Lotion3', 'prop_beach_lotion_03', 150},
		{'Clippers', 'prop_clippers_01', 150},
		{'Toilet 1', 'prop_toilet_01', 150},
		{'Toilet 2', 'prop_ld_toilet_01', 150},
		{'Soap', 'prop_soap_disp_01', 150},
		{'Sink 1', 'prop_sink_02', 150},
		--{'Sink 2', 'prop_sink_03', 150},
		{'Sink 3', 'prop_sink_04', 150},
		{'Sink 4', 'prop_sink_05', 150},
		{'Sink 5', 'prop_sink_06', 150},
		{'Sink 6', 'v_res_mbsink', 150},
		{'Handdry', 'prop_handdry_01', 150},
		{'Handdry 2', 'prop_handdry_02', 150}
	},
	['Bins'] = {
		{'Bin 1', 'prop_cs_bin_02', 100},
		{'Bin 2', 'prop_cs_bin_03', 100},
		{'Bin 3', 'prop_fbibombbin', 100},
		{'Bin 4', 'prop_rub_binbag_sd_01', 100},
		{'Bin 5', 'prop_rub_binbag_sd_01', 100},
		{'Bin 6', 'prop_bin_04a', 150},
		{'Bin 7', 'prop_bin_07a', 150},
		{'Bin 8', 'prop_bin_06a', 150},
		{'Bin 9', 'prop_bin_10b', 150},
		{'Bin 10', 'prop_bin_11b', 150},
		{'Bin 11', 'prop_bin_11a', 150},
		{'Large bin', 'prop_bin_13a', 150},
		{'Bin bag', 'prop_rub_binbag_sd_01', 100}
	},
	['Storage'] = {
		{'Locker', 'p_cs_locker_01_s', 300},
		{'Locker 2', 'p_cs_locker_02', 300},
		{'Locker 3', 'p_cs_locker_01', 300},
		{'Lester Crate', 'prop_cs_lester_crate', 150},
		{'Champ Box', 'prop_champ_box_01', 225},
		{'Crate 1', 'prop_lev_crate_01', 225},
		{'Side Unit', 'v_res_fh_sidebrdlngb', 225},
		{'Side Unit 2', 'v_res_fh_sidebrddine', 225},
		{'Side unit', 'v_res_d_sideunit', 225},
		{'Bed table', 'v_res_mbbedtable', 225},
		{'TV stand', 'v_res_j_tvstand', 225},
		{'Dresser', 'v_res_mbdresser', 225},
		{'Bottoman', 'v_res_mbottoman', 225},
		{'Console', 'v_res_mconsolemod', 225},
		{'Cupboard', 'v_res_mcupboard', 225},
		{'Chest', 'v_res_mdchest', 225},
		{'Cabinet 3', 'v_res_msoncabinet', 225},
		{'Cabinet 4', 'prop_cabinet_02b', 225},
		{'Cabinet 5', 'prop_cabinet_01b', 225},
		{'Armoire', 'v_res_m_armoire', 225},
		{'Sidetable', 'v_res_m_sidetable', 225},
		{'Bedsidetable', 'v_res_tre_bedsidetable', 225},
		{'Bookshelf', 'v_res_tre_smallbookshelf', 225},
		{'Storage box', 'v_res_tre_storagebox', 225},
		{'Storage unit', 'v_res_tre_storageunit', 225},
		{'Sidetable', 'v_res_m_sidetable', 225},
		{'Woodtable', 'v_res_tre_wdunitscuz', 225},
		{'Devin Box', 'prop_devin_box_closed', 225},
		{'Crate 3', 'prop_mil_crate_01', 225},
		{'Crate 4', 'prop_mil_crate_02', 225},
		{'Safe 1', 'prop_ld_int_safe_01', 225},
		{'Safe 2', 'p_v_43_safe_s', 225},
		{'Safe 3', 'prop_ld_int_safe_01', 225},
		{'Woodtable', 'prop_mil_crate_02', 225},
		{'Dressing table', 'v_res_d_dressingtable', 225},
		{'Cabinet', 'prop_fbibombfile', 225},
		{'Cabinet 2', 'v_res_cabinet', 225},
		{'Weapon Box', 'p_secret_weapon_02', 225},
		{'Gun Case', 'prop_gun_case_02', 225},
		{'Coffin', 'prop_coffin_02b', 225}
	},
	['accessory'] = {
		{'Watch', 'p_watch_02_s', 75},
		{'Watch 2', 'p_watch_01_s', 75},
		{'Cigar pack', 'p_cigar_pack_02_s', 75},
		{'Cigar pack 2', 'p_fag_packet_01_s', 75},
		{'Wallet', 'prop_ld_wallet_01_s', 75},
		{'Handbag', 'prop_ld_handbag_s', 75},
		{'Bag', 'prop_m_pack_int_01', 75},
		{'Bag 2', 'prop_cs_heist_bag_02', 75},
		{'Nigel Bag', 'prop_nigel_bag_pickup', 75},
		{'Suitcase', 'prop_ld_suitcase_01', 75},
		{'Tool Bench', 'prop_tool_bench02', 1000}
	},
	['wardrobe'] = {
		{'Wooden Wardrobe', 'v_res_tre_wardrobe', 500},
	},

	['painting'] = {
		{'Painting 1', 'v_ilev_ra_doorsafe', 1200},
		{'Painting 2', 'ch_prop_vault_painting_01a', 1200},
		{'Painting 3', 'ch_prop_vault_painting_01b', 1200},
		{'Painting 4', 'ch_prop_vault_painting_01c', 1200},
		{'Painting 5', 'ch_prop_vault_painting_01d', 1200},
		{'Painting 6', 'ch_prop_vault_painting_01e', 1200},
		{'Painting 7', 'ch_prop_vault_painting_01f', 1200},
		{'Painting 8', 'ch_prop_vault_painting_01g', 1200},
		{'Painting 9', 'ch_prop_vault_painting_01h', 1200},
		{'Painting 10', 'ch_prop_vault_painting_01i', 1200},
		{'Painting 11', 'ch_prop_vault_painting_01j', 1200},
		{'Painting 12', 'h4_prop_h4_painting_01a', 1200},
		{'Painting 13', 'h4_prop_h4_painting_01b', 1200},
		{'Painting 14', 'h4_prop_h4_painting_01c', 1200},
		{'Painting 15', 'h4_prop_h4_painting_01g', 1200},
		{'Painting 16', 'h4_prop_h4_painting_01h', 1200},
	},

	['statues'] = {
		{'Statue 1', 'vw_prop_casino_art_statue_01a', 1200},
		{'Statue 2', 'vw_prop_casino_art_statue_02a', 1200},
		{'Statue 3', 'vw_prop_casino_art_statue_04a', 1200},
		{'Statue 4', 'ex_prop_exec_award_diamond', 1000},
		{'XMAS Statue', 'ch_prop_ch_diamond_xmastree', 1000},
		{'Gold Statue', 'vw_prop_vw_pogo_gold_01a', 1000},
		{'Gold Plated CD 1', 'hei_heist_acc_artgolddisc_01', 800},
		{'Gold Plated CD 2', 'hei_heist_acc_artgolddisc_02', 800},
		{'Gold Plated CD 3', 'hei_heist_acc_artgolddisc_03', 800},
		{'Gold Plated CD 4', 'hei_heist_acc_artgolddisc_04', 800},
		{'Gold Coin', 'h4_prop_h4_gold_coin_01a', 400},
	},

	['CashGoldJewels'] = {
		{'Peyote Gold', 'prop_peyote_gold_01', 800},
		{'Jewel 1', 'prop_jewel_03b', 800},
		{'Jewel 2', 'prop_jewel_04b', 800},
		{'Jewel 3', 'prop_jewel_02b', 800},
		{'Jewel 4', 'prop_jewel_pickup_new_01', 800},
		{'Jewel 5', 'prop_jewel_04b', 800},
		{'Jewel 6', 'prop_cs_beer_box', 800},
		{'Jewel 7', 'prop_jewel_02a', 800},
	},
}

config.gallery = {
	categories = {
		{'statues', 'Statues'},
		{'CashGoldJewels', 'Jewelry'},
		{'painting', 'Painting'},
	},

	['painting'] = {
		{'Painting 1', 'v_ilev_ra_doorsafe', 1200},
		{'Painting 2', 'ch_prop_vault_painting_01a', 1200},
		{'Painting 3', 'ch_prop_vault_painting_01b', 1200},
		{'Painting 4', 'ch_prop_vault_painting_01c', 1200},
		{'Painting 5', 'ch_prop_vault_painting_01d', 1200},
		{'Painting 6', 'ch_prop_vault_painting_01e', 1200},
		{'Painting 7', 'ch_prop_vault_painting_01f', 1200},
		{'Painting 8', 'ch_prop_vault_painting_01g', 1200},
		{'Painting 9', 'ch_prop_vault_painting_01h', 1200},
		{'Painting 10', 'ch_prop_vault_painting_01i', 1200},
		{'Painting 11', 'ch_prop_vault_painting_01j', 1200},
		{'Painting 12', 'h4_prop_h4_painting_01a', 1200},
		{'Painting 13', 'h4_prop_h4_painting_01b', 1200},
		{'Painting 14', 'h4_prop_h4_painting_01c', 1200},
		{'Painting 15', 'h4_prop_h4_painting_01g', 1200},
		{'Painting 16', 'h4_prop_h4_painting_01h', 1200},
	},

	['statues'] = {
		{'Statue 1', 'vw_prop_casino_art_statue_01a', 1200},
		{'Statue 2', 'vw_prop_casino_art_statue_02a', 1200},
		{'Statue 3', 'vw_prop_casino_art_statue_04a', 1200},
		{'Statue 4', 'ex_prop_exec_award_diamond', 1000},
		{'XMAS Statue', 'ch_prop_ch_diamond_xmastree', 1000},
		{'Gold Statue', 'vw_prop_vw_pogo_gold_01a', 1000},
		{'Gold Plated CD 1', 'hei_heist_acc_artgolddisc_01', 800},
		{'Gold Plated CD 2', 'hei_heist_acc_artgolddisc_02', 800},
		{'Gold Plated CD 3', 'hei_heist_acc_artgolddisc_03', 800},
		{'Gold Plated CD 4', 'hei_heist_acc_artgolddisc_04', 800},
		{'Gold Coin', 'h4_prop_h4_gold_coin_01a', 400},
	},

	['CashGoldJewels'] = {
		{'Peyote Gold', 'prop_peyote_gold_01', 800},
		{'Jewel 1', 'prop_jewel_03b', 800},
		{'Jewel 2', 'prop_jewel_04b', 800},
		{'Jewel 3', 'prop_jewel_02b', 800},
		{'Jewel 4', 'prop_jewel_pickup_new_01', 800},
		{'Jewel 5', 'prop_jewel_04b', 800},
		{'Jewel 6', 'prop_cs_beer_box', 800},
		{'Jewel 7', 'prop_jewel_02a', 800},
	},

}


config.furnituring = {
	ikea = vector3(2727.193, 3488.755, 54.671),
	gallery = vector3(-420.1, 28.8, 45.4),
	teleport = vector3(2710.193, 3488.755, 40.671),
}

config.offsets = {
	['trevor'] = {['door'] = vector3(0.17, -3.51, 1.20), ['storage'] = vector3(0.7475586, 1.476196, -1.398027), ['spawn_furniture'] = vector3(1.046143, 0.06665039, 1.5)},
	['lester'] = {['door'] = vector3(-1.58, -5.84, 0.36), ['storage'] = vector3(-0.19, 2.23, -1.36), ['spawn_furniture'] = vector3(3.002892, 0.9969482, 0.0)},
	['mansion'] = {['door'] = vector3(-2.0, 8.60, 8.0), ['storage'] = vector3(1.17, 17.20, -2.41), ['spawn_furniture'] = vector3(-2.0, 8.60, 8.0)},
	['mansion2'] = {['door'] = vector3(-2.0, 8.60, 7.7), ['storage'] = vector3(1.17, 17.20, -2.41), ['spawn_furniture'] = vector3(-2.0, 8.60, 8.0)},
	['mansion3'] = {['door'] = vector3(12.0, 4.5, 7.2), ['storage'] = vector3(1.17, 17.20, -2.41), ['spawn_furniture'] = vector3(10.0, 3.5, 7.3)},
	['trailer'] = {['door'] = vector3(-1.35, -1.80, 1.0), ['storage'] = vector3(-5.04, -1.28, -1.469), ['spawn_furniture'] = vector3(1.285862, 0.1700745, 2.0)},
	['kinda_nice'] = {['door'] = vector3(4.645, -6.389, 1.14418), ['storage'] = vector3(-2.944827, 0.5492249, -0.6442719), ['spawn_furniture'] = vector3(-0.4546165, 2.853912, 2.0)},
	['nice'] = {['door'] = vector3(1.287569, -13.87549, 0.4), ['storage'] = vector3(-4.280577, -4.621674, -1.476418), ['spawn_furniture'] = vector3(-3.95883, 1.823792, 0.3)}
}

config.houses = {
	[1] = {prop = 'trevor', price = 180000, door = vector3(-1112.2, -1578.4, 7.7), garage = vector4(-1123.9, -1597.6, 3.4, 32.0)},
	[2] = {prop = 'trevor', price = 180000, door = vector3(-1114.3, -1579.5, 7.7), garage = vector4(-1123.9, -1597.6, 3.4, 32.0)},
	[3] = {prop = 'trevor', price = 180000, door = vector3(-1115.0, -1577.6, 3.6), garage = vector4(-1123.9, -1597.6, 3.4, 32.0)},
	[4] = {prop = 'trevor', price = 350000, door = vector3(373.9, 427.9, 144.7), garage = vector4(391.2, 430.2, 142.7, 347.1)},
	[5] = {prop = 'trailer', price = 95000, door = vector3(1777.2, 3737.9, 33.7), garage = vector4(1774.6, 3753.3, 32.8, 118.1)},
	[6] = {prop = 'trailer', price = 95000, door = vector3(1748.7, 3783.7, 33.9), garage = vector4(1758.0, 3773.0, 33.8, 119.8)},
	[7] = {prop = 'trailer', price = 95000, door = vector3(1639.7, 3731.6, 34.1), garage = vector4(1648.3, 3733.5, 34.3, 41.8)},
	[8] = {prop = 'trailer', price = 95000, door = vector3(1642.6, 3727.4, 34.1), garage = vector4(1645.2, 3735.9, 34.4, 40.9)},
	[9] = {prop = 'trailer', price = 95000, door = vector3(1774.8, 3742.9, 33.7), garage = vector4(1776.4, 3725.2, 34.2, 114.0)},
	[10] = {prop = 'trailer', price = 95000, door = vector3(1746.2, 3788.5, 33.8), garage = vector4(1756.4, 3771.6, 33.8, 114.5)},
	[11] = {prop = 'trailer', price = 95000, door = vector3(1639.7, 3731.6, 34.1), garage = vector4(1648.1, 3734.2, 34.3, 201.7)},
	[12] = {prop = 'trailer', price = 95000, door = vector3(1632.6, 3719.5, 34.0), garage = vector4(1647.3, 3734.7, 34.3, 203.4)},
	[13] = {prop = 'trailer', price = 95000, door = vector3(1691.5, 3866.1, 34.0), garage = vector4(1707.9, 3872.1, 34.8, 32.3)},
	[14] = {prop = 'trailer', price = 95000, door = vector3(1700.3, 3867.1, 33.9), garage = vector4(1708.9, 3871.8, 34.8, 35.2)},
	[15] = {prop = 'trailer', price = 95000, door = vector3(1733.6, 3895.5, 34.6), garage = vector4(1732.8, 3906.8, 34.8, 30.7)},
	[16] = {prop = 'trailer', price = 95000, door = vector3(1786.6, 3913.0, 34.0), garage = vector4(1774.1, 3926.2, 34.5, 15.2)},
	[17] = {prop = 'nice', price = 180000, door = vector3(1803.4, 3913.9, 36.1), garage = vector4(1801.6, 3932.5, 33.8, 6.0)},
	[18] = {prop = 'nice', price = 180000, door = vector3(1809.1, 3907.7, 32.8), garage = vector4(1811.3, 3886.8, 33.9, 262.2)},
	[19] = {prop = 'trailer', price = 95000, door = vector3(1838.6, 3907.4, 32.4), garage = vector4(1845.6, 3902.7, 33.2, 101.3)},
	[20] = {prop = 'trailer', price = 95000, door = vector3(1841.9, 3928.6, 32.8), garage = vector4(1834.6, 3925.0, 33.1, 279.1)},
	[21] = {prop = 'nice', price = 180000, door = vector3(1880.3, 3920.6, 32.3), garage = vector4(1868.6, 3925.5, 33.0, 193.8)},
	[22] = {prop = 'trailer', price = 95000, door = vector3(1895.4, 3873.8, 31.8), garage = vector4(1900.3, 3873.8, 32.4, 115.2)},
	[23] = {prop = 'trailer', price = 95000, door = vector3(1888.5, 3892.9, 32.2), garage = vector4(1877.5, 3893.0, 33.0, 13.7)},
	[24] = {prop = 'nice', price = 180000, door = vector3(1943.7, 3804.4, 31.1), garage = vector4(1953.2, 3808.5, 32.4, 202.3)},

	[25] = {prop = 'nice', price = 180000, door = vector3(-374.5, 6191.0, 30.8), garage = vector4(-383.9, 6189.2, 31.5, 221.5)},
	[26] = {prop = 'nice', price = 180000, door = vector3(-356.9, 6207.5, 30.9), garage = vector4(-370.3, 6201.9, 31.5, 221.1)},
	[27] = {prop = 'nice', price = 180000, door = vector3(-347.5, 6225.4, 30.9), garage = vector4(-356.3, 6223.6, 31.5, 222.0)},
	[28] = {prop = 'nice', price = 180000, door = vector3(-360.1, 6260.7, 31.0), garage = vector4(-358.6, 6255.1, 31.5, 315.8)},
	[29] = {prop = 'nice', price = 180000, door = vector3(-407.2, 6314.2, 28.0), garage = vector4(-392.8, 6318.3, 28.8, 175.0)},
	[30] = {prop = 'trevor', price = 350000, door = vector3(-359.7, 6334.6, 28.9), garage = vector4(-353.5, 6334.1, 29.8, 210.1)},
	[31] = {prop = 'nice', price = 180000, door = vector3(-332.5, 6302.3, 32.1), garage = vector4(-314.6, 6312.6, 32.3, 44.1)},
	[32] = {prop = 'nice', price = 180000, door = vector3(-302.2, 6326.9, 31.9), garage = vector4(-294.1, 6338.9, 32.3, 41.3)},
	[33] = {prop = 'nice', price = 180000, door = vector3(-280.5, 6350.7, 31.6), garage = vector4(-267.0, 6355.0, 32.5, 33.2)},
	[34] = {prop = 'nice', price = 180000, door = vector3(-247.7, 6370.1, 30.9), garage = vector4(-253.5, 6358.5, 31.5, 37.0)},
	[35] = {prop = 'nice', price = 180000, door = vector3(-227.1, 6377.4, 30.8), garage = vector4(-220.1, 6383.2, 31.6, 40.7)},
	[36] = {prop = 'nice', price = 180000, door = vector3(-272.5, 6400.9, 30.5), garage = vector4(-266.4, 6408.4, 31.0, 206.8)},
	[37] = {prop = 'nice', price = 180000, door = vector3(-246.1, 6413.9, 30.5), garage = vector4(-250.2, 6408.9, 31.2, 209.1)},
	[38] = {prop = 'nice', price = 180000, door = vector3(-213.8, 6396.3, 32.1), garage = vector4(-204.6, 6405.2, 31.9, 41.9)},
	[39] = {prop = 'nice', price = 180000, door = vector3(-188.9, 6409.5, 31.3), garage = vector4(-186.9, 6417.9, 31.9, 41.3)},
	[40] = {prop = 'nice', price = 180000, door = vector3(-215.0, 6444.3, 30.4), garage = vector4(-206.8, 6456.8, 31.2, 241.6)},
	[41] = {prop = 'nice', price = 180000, door = vector3(-15.3, 6557.6, 32.3), garage = vector4(-8.0, 6560.6, 32.0, 223.2)},
	[42] = {prop = 'nice', price = 180000, door = vector3(4.5, 6568.1, 32.1), garage = vector4(13.2, 6584.8, 32.5, 221.9)},
	[43] = {prop = 'nice', price = 180000, door = vector3(30.9, 6596.6, 31.9), garage = vector4(33.5, 6607.5, 32.5, 220.2)},
	[44] = {prop = 'nice', price = 180000, door = vector3(-9.4, 6654.2, 30.4), garage = vector4(-17.0, 6646.4, 31.1, 210.2)},
	[45] = {prop = 'nice', price = 180000, door = vector3(-41.7, 6637.4, 30.1), garage = vector4(-54.4, 6624.5, 29.9, 214.6)},
	[46] = {prop = 'nice', price = 180000, door = vector3(-34.1, -1846.9, 25.2), garage = vector4(-30.9, -1855.0, 25.7, 316.2)},
	[47] = {prop = 'nice', price = 180000, door = vector3(-20.6, -1858.6, 24.5), garage = vector4(-22.7, -1852.1, 25.1, 318.4)},
	[48] = {prop = 'nice', price = 180000, door = vector3(21.1, -1844.7, 23.7), garage = vector4(10.1, -1845.6, 24.3, 177.8)},
	[49] = {prop = 'nice', price = 180000, door = vector3(-5.2, -1871.8, 23.2), garage = vector4(1.6, -1876.1, 23.7, 316.2)},
	[50] = {prop = 'nice', price = 180000, door = vector3(4.9, -1884.3, 22.7), garage = vector4(15.1, -1883.8, 23.2, 319.8)},
	[51] = {prop = 'nice', price = 180000, door = vector3(46.0, -1864.3, 22.3), garage = vector4(40.5, -1854.6, 22.8, 130.4)},
	[52] = {prop = 'nice', price = 180000, door = vector3(23.1, -1896.7, 22.1), garage = vector4(14.7, -1883.8, 23.2, 313.5)},
	[53] = {prop = 'nice', price = 180000, door = vector3(54.6, -1873.2, 21.9), garage = vector4(59.1, -1881.8, 22.3, 45.2)},

	[54] = {prop = 'nice', price = 180000, door = vector3(39.0, -1911.6, 21.0), garage = vector4(43.3, -1919.6, 21.7, 321.0)},
	[55] = {prop = 'nice', price = 180000, door = vector3(56.5, -1922.6, 21.0), garage = vector4(68.0, -1915.8, 21.4, 44.3)},
	[56] = {prop = 'nice', price = 180000, door = vector3(100.9, -1912.5, 20.5), garage = vector4(90.5, -1916.3, 20.8, 141.3)},
	[57] = {prop = 'nice', price = 180000, door = vector3(72.1, -1938.9, 20.4), garage = vector4(82.1, -1931.4, 20.7, 0.8)},
	[58] = {prop = 'nice', price = 180000, door = vector3(76.6, -1948.4, 20.2), garage = vector4(86.4, -1939.5, 20.7, 346.2)},
	[59] = {prop = 'nice', price = 180000, door = vector3(85.7, -1959.4, 20.2), garage = vector4(85.5, -1952.2, 20.9, 317.7)},
	[60] = {prop = 'nice', price = 180000, door = vector3(114.5, -1961.1, 20.4), garage = vector4(117.1, -1949.7, 20.8, 53.3)},
	[61] = {prop = 'nice', price = 180000, door = vector3(126.5, -1929.9, 20.4), garage = vector4(118.1, -1934.9, 20.8, 67.1)},
	[62] = {prop = 'nice', price = 180000, door = vector3(104.1, -1885.3, 23.4), garage = vector4(104.4, -1881.0, 24.0, 320.1)},
	[63] = {prop = 'nice', price = 180000, door = vector3(130.8, -1853.3, 24.3), garage = vector4(126.7, -1857.1, 24.8, 152.6)},
	[64] = {prop = 'nice', price = 180000, door = vector3(150.0, -1864.9, 23.6), garage = vector4(138.6, -1869.0, 24.2, 147.3)},
	[65] = {prop = 'nice', price = 180000, door = vector3(127.8, -1897.2, 22.7), garage = vector4(137.2, -1883.1, 23.5, 241.3)},
	[66] = {prop = 'nice', price = 180000, door = vector3(148.7, -1904.1, 22.5), garage = vector4(137.2, -1894.3, 23.4, 333.9)},

	[67] = {prop = 'nice', price = 180000, door = vector3(171.3, -1871.4, 23.5), garage = vector4(164.7, -1863.2, 24.1, 154.2)},
	[68] = {prop = 'nice', price = 180000, door = vector3(192.5, -1883.5, 24.2), garage = vector4(187.0, -1876.9, 24.6, 154.0)},
	[69] = {prop = 'nice', price = 180000, door = vector3(179.1, -1924.3, 20.4), garage = vector4(168.6, -1927.8, 21.0, 229.4)},
	[70] = {prop = 'nice', price = 180000, door = vector3(165.5, -1945.0, 19.3), garage = vector4(165.6, -1957.0, 19.2, 170.5)},
	[71] = {prop = 'nice', price = 180000, door = vector3(148.9, -1960.5, 18.5), garage = vector4(150.7, -1965.1, 19.0, 233.2)},
	[72] = {prop = 'nice', price = 180000, door = vector3(143.9, -1969.0, 17.9), garage = vector4(152.9, -1979.1, 18.2, 142.4)},
	[73] = {prop = 'nice', price = 180000, door = vector3(236.6, -2046.0, 17.4), garage = vector4(248.9, -2045.2, 17.9, 227.7)},
	[74] = {prop = 'nice', price = 180000, door = vector3(256.7, -2023.4, 18.4), garage = vector4(260.6, -2023.5, 18.8, 229.1)},
	[75] = {prop = 'nice', price = 180000, door = vector3(279.6, -1993.7, 19.9), garage = vector4(285.4, -1990.6, 20.5, 227.5)},
	[76] = {prop = 'nice', price = 180000, door = vector3(291.4, -1980.3, 20.6), garage = vector4(283.5, -1983.5, 21.2, 227.5)},
	[77] = {prop = 'nice', price = 180000, door = vector3(295.9, -1972.0, 21.8), garage = vector4(298.7, -1977.8, 22.3, 228.6)},
	[78] = {prop = 'nice', price = 180000, door = vector3(312.1, -1956.3, 23.7), garage = vector4(312.3, -1968.2, 23.5, 288.4)},
	[79] = {prop = 'nice', price = 180000, door = vector3(324.4, -1937.9, 24.1), garage = vector4(315.0, -1942.2, 24.6, 227.8)},
	[80] = {prop = 'nice', price = 180000, door = vector3(319.9, -1854.2, 26.6), garage = vector4(311.8, -1858.1, 27.2, 320.9)},
	[81] = {prop = 'nice', price = 180000, door = vector3(329.3, -1845.7, 26.8), garage = vector4(335.9, -1836.6, 27.3, 42.3)},
	[82] = {prop = 'nice', price = 180000, door = vector3(339.1, -1829.3, 27.4), garage = vector4(343.8, -1826.0, 27.2, 46.7)},
	[83] = {prop = 'nice', price = 180000, door = vector3(348.8, -1820.5, 27.9), garage = vector4(347.5, -1809.1, 28.5, 43.1)},
	[84] = {prop = 'nice', price = 180000, door = vector3(440.3, -1830.0, 27.4), garage = vector4(432.2, -1832.0, 28.0, 221.0)},
	[85] = {prop = 'nice', price = 180000, door = vector3(427.4, -1841.8, 27.5), garage = vector4(433.9, -1840.6, 28.0, 220.8)},
	[86] = {prop = 'nice', price = 180000, door = vector3(412.6, -1856.1, 26.4), garage = vector4(408.1, -1862.8, 26.8, 222.8)},
	[87] = {prop = 'nice', price = 180000, door = vector3(399.6, -1864.6, 25.8), garage = vector4(409.7, -1876.7, 26.1, 133.5)},
	[88] = {prop = 'nice', price = 180000, door = vector3(385.1, -1881.5, 25.1), garage = vector4(386.6, -1893.2, 25.1, 225.3)},
	[89] = {prop = 'nice', price = 180000, door = vector3(495.4, -1823.5, 27.9), garage = vector4(483.2, -1822.9, 27.9, 51.8)},
	[90] = {prop = 'nice', price = 180000, door = vector3(512.5, -1790.4, 28.0), garage = vector4(502.3, -1798.4, 28.5, 49.5)},
	[91] = {prop = 'nice', price = 180000, door = vector3(472.2, -1775.3, 28.1), garage = vector4(477.5, -1778.2, 28.7, 268.3)},
	[92] = {prop = 'nice', price = 180000, door = vector3(479.4, -1735.7, 28.2), garage = vector4(473.6, -1743.6, 28.9, 252.5)},
	[93] = {prop = 'nice', price = 180000, door = vector3(489.7, -1714.0, 28.7), garage = vector4(484.1, -1719.9, 29.4, 251.3)},
	[94] = {prop = 'nice', price = 180000, door = vector3(500.4, -1697.0, 28.8), garage = vector4(500.1, -1704.1, 29.3, 238.9)},
	[95] = {prop = 'nice', price = 180000, door = vector3(405.3, -1751.1, 28.8), garage = vector4(400.2, -1754.1, 29.3, 47.6)},
	[96] = {prop = 'nice', price = 180000, door = vector3(419.1, -1735.9, 28.7), garage = vector4(423.6, -1728.5, 29.2, 49.1)},
	[97] = {prop = 'nice', price = 180000, door = vector3(431.1, -1725.8, 28.7), garage = vector4(419.0, -1715.1, 29.1, 319.1)},
	[98] = {prop = 'nice', price = 180000, door = vector3(443.4, -1707.2, 28.8), garage = vector4(440.8, -1695.5, 29.3, 99.3)},
	[99] = {prop = 'nice', price = 180000, door = vector3(332.9, -1741.0, 28.8), garage = vector4(324.4, -1746.8, 29.3, 229.7)},
	[100] = {prop = 'nice', price = 180000, door = vector3(320.9, -1760.2, 28.7), garage = vector4(322.6, -1772.5, 28.7, 229.0)},
	[101] = {prop = 'nice', price = 180000, door = vector3(304.5, -1775.4, 28.2), garage = vector4(322.3, -1771.6, 28.7, 230.1)},
	[102] = {prop = 'nice', price = 180000, door = vector3(300.0, -1784.3, 27.5), garage = vector4(293.1, -1787.8, 28.0, 226.7)},
	[103] = {prop = 'nice', price = 180000, door = vector3(288.7, -1792.5, 27.2), garage = vector4(288.3, -1801.8, 27.2, 233.0)},
	[104] = {prop = 'nice', price = 180000, door = vector3(198.2, -1725.6, 28.7), garage = vector4(210.9, -1731.0, 29.0, 205.3)},
	[105] = {prop = 'nice', price = 180000, door = vector3(216.6, -1717.3, 28.7), garage = vector4(209.7, -1719.0, 29.3, 211.1)},
	[106] = {prop = 'nice', price = 180000, door = vector3(249.6, -1730.6, 28.7), garage = vector4(236.3, -1734.9, 29.0, 50.9)},
	[107] = {prop = 'nice', price = 180000, door = vector3(223.1, -1703.0, 28.7), garage = vector4(224.9, -1708.4, 29.3, 213.0)},
	[108] = {prop = 'nice', price = 180000, door = vector3(257.3, -1723.2, 28.7), garage = vector4(262.5, -1717.2, 29.3, 47.5)},
	[109] = {prop = 'nice', price = 180000, door = vector3(269.3, -1712.9, 28.7), garage = vector4(269.0, -1703.5, 29.3, 47.2)},
	[110] = {prop = 'nice', price = 180000, door = vector3(252.8, -1670.6, 28.7), garage = vector4(247.3, -1676.2, 29.3, 229.2)},
	[111] = {prop = 'nice', price = 180000, door = vector3(240.8, -1687.9, 28.7), garage = vector4(242.5, -1699.2, 29.1, 235.5)},
	[112] = {prop = 'trevor', price = 350000, door = vector3(1060.6, -378.4, 67.3), garage = vector4(1056.3, -386.6, 67.9, 221.8)},
	[113] = {prop = 'trevor', price = 350000, door = vector3(1029.1, -408.6, 65.2), garage = vector4(1022.0, -418.0, 65.9, 215.6)},
	[114] = {prop = 'nice', price = 400000, door = vector3(1044.3, -449.1, 65.3), garage = vector4(1028.5, -439.8, 65.0, 309.5)},
	[115] = {prop = 'trevor', price = 350000, door = vector3(1010.5, -423.3, 64.4), garage = vector4(1021.6, -430.1, 65.0, 211.5)},
	[116] = {prop = 'trevor', price = 350000, door = vector3(1014.4, -469.0, 63.6), garage = vector4(1020.8, -462.4, 63.9, 34.9)},
	[117] = {prop = 'trevor', price = 350000, door = vector3(987.9, -433.6, 62.9), garage = vector4(989.4, -436.9, 63.7, 303.5)},
	[118] = {prop = 'trevor', price = 350000, door = vector3(967.1, -451.6, 61.8), garage = vector4(973.4, -450.3, 61.4, 180.2)},
	[119] = {prop = 'trevor', price = 350000, door = vector3(970.2, -502.2, 61.2), garage = vector4(962.1, -504.1, 61.7, 15.5)},
	[120] = {prop = 'nice', price = 400000, door = vector3(944.0, -463.3, 60.4), garage = vector4(940.7, -466.0, 61.3, 209.1)},
	[121] = {prop = 'trevor', price = 350000, door = vector3(924.2, -526.4, 60.0), garage = vector4(916.6, -524.0, 58.9, 22.4)},
	[122] = {prop = 'trevor', price = 350000, door = vector3(921.9, -478.2, 60.1), garage = vector4(932.0, -477.8, 60.7, 203.0)},
	[123] = {prop = 'nice', price = 400000, door = vector3(906.5, -490.1, 58.5), garage = vector4(913.0, -487.0, 59.0, 203.0)},
	[124] = {prop = 'nice', price = 180000, door = vector3(878.6, -498.1, 57.1), garage = vector4(873.0, -505.6, 57.5, 231.4)},
	[125] = {prop = 'trevor', price = 350000, door = vector3(862.5, -509.8, 56.4), garage = vector4(856.9, -520.1, 57.3, 226.2)},
	[126] = {prop = 'trevor', price = 350000, door = vector3(850.8, -532.6, 57.0), garage = vector4(846.9, -542.0, 57.3, 265.4)},
	[127] = {prop = 'trevor', price = 350000, door = vector3(893.2, -540.6, 57.6), garage = vector4(890.0, -552.2, 58.1, 114.2)},
	[128] = {prop = 'nice', price = 400000, door = vector3(844.1, -563.2, 56.9), garage = vector4(844.8, -567.4, 57.7, 277.0)},
	[129] = {prop = 'trevor', price = 350000, door = vector3(861.8, -583.2, 57.2), garage = vector4(871.2, -591.1, 58.1, 312.2)},
	[130] = {prop = 'trevor', price = 350000, door = vector3(886.9, -608.1, 57.5), garage = vector4(872.9, -599.6, 58.2, 315.9)},
	[131] = {prop = 'nice', price = 400000, door = vector3(903.3, -615.7, 57.5), garage = vector4(914.8, -628.8, 58.0, 314.5)},
	[132] = {prop = 'trevor', price = 350000, door = vector3(929.0, -639.7, 57.3), garage = vector4(917.0, -640.3, 57.9, 316.1)},
	[133] = {prop = 'trevor', price = 350000, door = vector3(943.5, -653.4, 57.5), garage = vector4(948.7, -655.2, 58.0, 305.5)},
	[134] = {prop = 'nice', price = 400000, door = vector3(960.4, -669.7, 57.5), garage = vector4(944.2, -670.3, 58.0, 297.4)},
	[135] = {prop = 'trevor', price = 350000, door = vector3(970.9, -701.4, 57.5), garage = vector4(971.8, -686.5, 57.8, 306.4)},
	[136] = {prop = 'trevor', price = 350000, door = vector3(979.3, -716.3, 57.3), garage = vector4(979.6, -710.6, 57.7, 309.6)},
	[137] = {prop = 'nice', price = 180000, door = vector3(997.1, -729.3, 56.9), garage = vector4(1005.9, -732.4, 57.5, 307.3)},
	[138] = {prop = 'trevor', price = 350000, door = vector3(1090.0, -484.2, 64.7), garage = vector4(1086.3, -494.7, 64.6, 62.7)},
	[139] = {prop = 'trevor', price = 350000, door = vector3(1098.6, -464.7, 66.4), garage = vector4(1092.5, -472.1, 66.5, 73.8)},
	[140] = {prop = 'trevor', price = 350000, door = vector3(1099.4, -438.3, 66.8), garage = vector4(1100.0, -429.4, 67.4, 75.2)},
	[141] = {prop = 'trevor', price = 350000, door = vector3(1100.8, -411.4, 66.6), garage = vector4(1096.1, -418.4, 67.2, 86.2)},
	[142] = {prop = 'trevor', price = 350000, door = vector3(1046.2, -497.9, 63.1), garage = vector4(1048.2, -487.4, 63.9, 258.7)},
	[143] = {prop = 'trevor', price = 350000, door = vector3(1051.8, -470.5, 62.9), garage = vector4(1053.3, -482.5, 62.9, 253.3)},
	[144] = {prop = 'trevor', price = 350000, door = vector3(1056.2, -448.9, 65.3), garage = vector4(1071.3, -446.9, 65.7, 220.5)},
	[145] = {prop = 'trevor', price = 350000, door = vector3(964.1, -596.0, 59.0), garage = vector4(957.1, -602.9, 58.4, 27.0)},
	[146] = {prop = 'nice', price = 180000, door = vector3(976.4, -579.2, 58.7), garage = vector4(985.2, -577.5, 59.3, 62.9)},
	[147] = {prop = 'trevor', price = 350000, door = vector3(1009.9, -572.4, 59.6), garage = vector4(1006.6, -562.5, 60.2, 257.5)},
	[148] = {prop = 'trevor', price = 350000, door = vector3(1229.3, -725.5, 59.8), garage = vector4(1225.1, -725.5, 60.6, 157.8)},
	[149] = {prop = 'nice', price = 180000, door = vector3(1222.6, -697.1, 59.9), garage = vector4(1224.5, -704.1, 60.7, 96.1)},
	[150] = {prop = 'trevor', price = 350000, door = vector3(1221.4, -669.0, 62.5), garage = vector4(1217.1, -664.9, 62.9, 103.3)},
	[151] = {prop = 'trevor', price = 350000, door = vector3(1206.8, -620.3, 65.5), garage = vector4(1202.9, -612.4, 65.9, 95.4)},
	[152] = {prop = 'trevor', price = 350000, door = vector3(1200.9, -575.8, 68.2), garage = vector4(1186.4, -570.6, 64.3, 148.1)},
	[153] = {prop = 'trevor', price = 350000, door = vector3(1241.9, -566.2, 68.7), garage = vector4(1243.0, -578.7, 69.4, 270.2)},
	[154] = {prop = 'trevor', price = 350000, door = vector3(1240.5, -601.6, 68.8), garage = vector4(1237.6, -585.7, 69.3, 267.5)},
	[155] = {prop = 'trevor', price = 350000, door = vector3(1251.3, -621.7, 68.5), garage = vector4(1256.5, -623.9, 69.4, 295.8)},
	[156] = {prop = 'trevor', price = 350000, door = vector3(1265.6, -648.4, 67.0), garage = vector4(1274.5, -657.5, 67.7, 290.9)},
	[157] = {prop = 'trevor', price = 350000, door = vector3(1271.0, -683.5, 65.1), garage = vector4(1271.9, -672.6, 65.8, 274.5)},
	[158] = {prop = 'trevor', price = 350000, door = vector3(1265.2, -703.1, 63.6), garage = vector4(1263.0, -715.5, 64.5, 238.8)},
	[159] = {prop = 'nice', price = 180000, door = vector3(1251.3, -515.7, 68.4), garage = vector4(1246.5, -522.1, 69.0, 260.0)},
	[160] = {prop = 'trevor', price = 350000, door = vector3(1251.6, -494.2, 69.0), garage = vector4(1256.1, -491.4, 69.4, 253.5)},
	[161] = {prop = 'trevor', price = 350000, door = vector3(1260.6, -479.6, 69.2), garage = vector4(1277.7, -478.8, 68.9, 158.5)},
	[162] = {prop = 'trevor', price = 350000, door = vector3(1266.3, -457.9, 69.6), garage = vector4(1270.1, -450.9, 69.7, 223.9)},
	[163] = {prop = 'trevor', price = 350000, door = vector3(1263.2, -429.4, 68.9), garage = vector4(1258.8, -420.0, 69.4, 301.4)},
	[164] = {prop = 'nice', price = 400000, door = vector3(1301.0, -574.0, 70.8), garage = vector4(1295.4, -567.3, 71.2, 343.2)},
	[165] = {prop = 'nice', price = 400000, door = vector3(1302.9, -527.9, 70.5), garage = vector4(1308.3, -534.5, 71.3, 158.4)},
	[166] = {prop = 'nice', price = 400000, door = vector3(1323.5, -582.9, 72.3), garage = vector4(1312.7, -589.1, 72.9, 337.9)},
	[167] = {prop = 'nice', price = 400000, door = vector3(1348.3, -547.1, 72.9), garage = vector4(1359.1, -540.1, 73.8, 155.7)},
	[168] = {prop = 'nice', price = 400000, door = vector3(1341.8, -597.5, 73.8), garage = vector4(1347.4, -606.2, 74.4, 331.9)},
	[169] = {prop = 'nice', price = 400000, door = vector3(1367.3, -605.9, 73.8), garage = vector4(1360.1, -616.4, 74.3, 357.4)},
	[170] = {prop = 'nice', price = 400000, door = vector3(1385.8, -593.1, 73.5), garage = vector4(1390.2, -605.3, 74.3, 52.3)},
	[171] = {prop = 'nice', price = 400000, door = vector3(1388.7, -569.7, 73.5), garage = vector4(1401.5, -572.1, 74.3, 108.1)},
	[172] = {prop = 'nice', price = 400000, door = vector3(1372.8, -555.7, 73.7), garage = vector4(1365.2, -548.9, 74.3, 156.0)},
	[173] = {prop = 'nice', price = 400000, door = vector3(1328.2, -536.0, 71.5), garage = vector4(1320.2, -529.1, 72.1, 160.7)},
	[174] = {prop = 'kinda_nice', price = 125000, door = vector3(1203.5, -1671.0, 41.8), garage = vector4(1214.1, -1684.0, 38.5, 103.0)},
	[175] = {prop = 'kinda_nice', price = 125000, door = vector3(1220.3, -1659.0, 47.7), garage = vector4(1237.2, -1674.8, 42.2, 118.4)},
	[176] = {prop = 'kinda_nice', price = 125000, door = vector3(1252.8, -1638.6, 52.2), garage = vector4(1265.6, -1658.0, 47.2, 122.8)},
	[177] = {prop = 'kinda_nice', price = 125000, door = vector3(1276.4, -1628.9, 53.8), garage = vector4(1281.5, -1648.1, 49.7, 123.3)},
	[178] = {prop = 'nice', price = 180000, door = vector3(1297.4, -1618.0, 53.6), garage = vector4(1305.4, -1630.8, 52.1, 122.2)},
	[179] = {prop = 'kinda_nice', price = 125000, door = vector3(1337.0, -1579.1, 53.5), garage = vector4(1352.4, -1575.1, 54.0, 217.2)},
	[180] = {prop = 'nice', price = 180000, door = vector3(1379.0, -1514.6, 58.4), garage = vector4(1372.8, -1522.0, 57.1, 198.2)},
	[181] = {prop = 'trailer', price = 95000, door = vector3(1404.6, -1496.3, 59.0), garage = vector4(1406.1, -1506.4, 59.2, 204.2)},
	[182] = {prop = 'trailer', price = 95000, door = vector3(1411.4, -1490.8, 59.7), garage = vector4(1422.6, -1504.2, 60.9, 131.1)},
	[183] = {prop = 'nice', price = 180000, door = vector3(1390.9, -1508.1, 57.5), garage = vector4(1401.4, -1514.1, 58.2, 193.7)},
	[184] = {prop = 'nice', price = 180000, door = vector3(1381.9, -1544.8, 56.2), garage = vector4(1396.3, -1533.6, 57.6, 45.0)},
	[185] = {prop = 'kinda_nice', price = 125000, door = vector3(1338.3, -1524.5, 53.7), garage = vector4(1335.9, -1528.7, 53.6, 177.0)},
	[186] = {prop = 'kinda_nice', price = 125000, door = vector3(1315.9, -1526.4, 50.9), garage = vector4(1325.7, -1539.8, 51.0, 102.9)},
	[187] = {prop = 'kinda_nice', price = 125000, door = vector3(1327.5, -1552.9, 53.1), garage = vector4(1323.4, -1550.3, 51.0, 130.4)},
	[188] = {prop = 'nice', price = 180000, door = vector3(1286.6, -1604.2, 53.9), garage = vector4(1270.3, -1606.6, 53.8, 29.4)},
	[189] = {prop = 'kinda_nice', price = 125000, door = vector3(1230.7, -1590.9, 52.8), garage = vector4(1227.0, -1604.0, 51.8, 212.7)},
	[190] = {prop = 'nice', price = 180000, door = vector3(1261.3, -1616.6, 53.8), garage = vector4(1252.2, -1618.8, 53.5, 31.0)},
	[191] = {prop = 'kinda_nice', price = 125000, door = vector3(1245.1, -1626.6, 52.3), garage = vector4(1235.7, -1629.0, 51.8, 31.8)},
	[192] = {prop = 'kinda_nice', price = 125000, door = vector3(1210.7, -1607.1, 49.6), garage = vector4(1223.9, -1614.2, 50.0, 146.1)},
	[193] = {prop = 'kinda_nice', price = 125000, door = vector3(1214.3, -1644.0, 47.7), garage = vector4(1212.0, -1632.9, 46.9, 118.5)},
	[194] = {prop = 'kinda_nice', price = 125000, door = vector3(1193.2, -1622.4, 44.3), garage = vector4(1201.2, -1629.1, 45.4, 122.9)},
	[195] = {prop = 'nice', price = 180000, door = vector3(1193.3, -1656.1, 42.1), garage = vector4(1190.6, -1645.9, 41.7, 132.2)},
	[196] = {prop = 'kinda_nice', price = 125000, door = vector3(1258.9, -1761.5, 48.7), garage = vector4(1257.4, -1747.4, 48.5, 115.9)},
	[197] = {prop = 'kinda_nice', price = 125000, door = vector3(1250.8, -1734.8, 51.1), garage = vector4(1257.6, -1742.1, 49.0, 117.0)},
	[198] = {prop = 'nice', price = 180000, door = vector3(1295.0, -1739.8, 53.3), garage = vector4(1306.1, -1748.8, 53.9, 24.1)},
	[199] = {prop = 'kinda_nice', price = 125000, door = vector3(1289.5, -1711.0, 54.5), garage = vector4(1302.8, -1707.8, 55.1, 202.6)},
	[200] = {prop = 'nice', price = 180000, door = vector3(1314.8, -1732.9, 53.8), garage = vector4(1315.5, -1720.5, 54.5, 109.1)},
	[201] = {prop = 'nice', price = 180000, door = vector3(1316.9, -1698.9, 57.3), garage = vector4(1330.5, -1708.0, 56.2, 104.4)},
	[202] = {prop = 'kinda_nice', price = 125000, door = vector3(1355.1, -1690.5, 59.5), garage = vector4(1361.5, -1689.6, 60.7, 177.4)},
	[203] = {prop = 'nice', price = 180000, door = vector3(1365.3, -1721.4, 64.7), garage = vector4(1368.9, -1705.8, 62.6, 107.0)},
	[204] = {prop = 'nice', price = 450000, door = vector3(346.4, 440.6, 146.8), garage = vector4(352.7, 436.8, 147.1, 294.0)},
	[205] = {prop = 'nice', price = 450000, door = vector3(331.4, 465.7, 150.3), garage = vector4(327.4, 483.2, 151.2, 240.3)},
	[206] = {prop = 'mansion', price = 750000, door = vector3(316.1, 501.5, 152.2), garage = vector4(318.2, 494.7, 152.8, 281.7)},
	[207] = {prop = 'mansion', price = 750000, door = vector3(325.3, 537.4, 152.9), garage = vector4(314.6, 568.1, 154.4, 258.3)},
	[208] = {prop = 'nice', price = 450000, door = vector3(223.6, 514.0, 139.8), garage = vector4(215.0, 521.6, 140.8, 309.4)},
	[209] = {prop = 'nice', price = 450000, door = vector3(119.2, 494.3, 146.4), garage = vector4(113.4, 497.8, 147.1, 189.5)},
	[210] = {prop = 'nice', price = 450000, door = vector3(80.1, 485.9, 147.3), garage = vector4(89.2, 487.8, 147.8, 204.7)},
	[211] = {prop = 'nice', price = 450000, door = vector3(57.9, 450.1, 146.1), garage = vector4(64.3, 457.7, 146.8, 52.7)},
	[212] = {prop = 'nice', price = 450000, door = vector3(43.0, 468.7, 147.1), garage = vector4(56.4, 468.5, 146.8, 207.7)},
	[213] = {prop = 'mansion', price = 750000, door = vector3(-7.6, 468.4, 144.9), garage = vector4(1.6, 468.4, 145.8, 36.4)},
	[214] = {prop = 'nice', price = 450000, door = vector3(-66.5, 490.8, 143.7), garage = vector4(-74.4, 495.1, 144.5, 356.3)},
	[215] = {prop = 'mansion', price = 750000, door = vector3(-109.9, 502.6, 142.4), garage = vector4(-122.4, 508.7, 143.1, 37.2)},
	[216] = {prop = 'nice', price = 450000, door = vector3(-174.7, 502.6, 136.5), garage = vector4(-188.2, 502.2, 134.5, 60.5)},
	[217] = {prop = 'mansion', price = 750000, door = vector3(-151.6, 910.4, 234.9), garage = vector4(-138.1, 902.6, 224.7, -147.6)},
	[218] = {prop = 'nice', price = 450000, door = vector3(84.9, 562.0, 181.8), garage = vector4(52.4, 563.9, 180.3, 53.2)},
	[219] = {prop = 'nice', price = 180000, door = vector3(119.1, 564.6, 183.0), garage = vector4(131.6, 568.4, 183.3, 354.9)},
	[220] = {prop = 'nice', price = 450000, door = vector3(215.6, 620.2, 186.7), garage = vector4(211.0, 609.6, 186.9, 129.9)},
	[221] = {prop = 'nice', price = 450000, door = vector3(232.0, 672.4, 189.0), garage = vector4(226.0, 681.6, 189.5, 134.8)},
	[222] = {prop = 'nice', price = 450000, door = vector3(-230.5, 488.5, 127.8), garage = vector4(-244.9, 493.8, 125.9, 52.7)},
	[223] = {prop = 'nice', price = 450000, door = vector3(-311.9, 474.8, 110.9), garage = vector4(-318.0, 480.8, 112.7, 129.5)},
	[224] = {prop = 'nice', price = 450000, door = vector3(-166.7, 424.7, 110.9), garage = vector4(-182.2, 422.1, 110.7, 74.5)},
	[225] = {prop = 'mansion', price = 750000, door = vector3(-297.9, 380.3, 111.1), garage = vector4(-305.3, 379.5, 110.3, 19.8)},
	[226] = {prop = 'nice', price = 180000, door = vector3(-328.3, 369.9, 109.1), garage = vector4(-348.8, 368.1, 110.0, 24.7)},
	[227] = {prop = 'nice', price = 450000, door = vector3(-371.8, 344.1, 109.0), garage = vector4(-363.4, 355.2, 109.5, 338.3)},
	[228] = {prop = 'nice', price = 450000, door = vector3(-409.4, 341.7, 108.0), garage = vector4(-404.5, 337.1, 108.7, 358.8)},
	[229] = {prop = 'nice', price = 450000, door = vector3(-349.2, 514.6, 119.7), garage = vector4(-360.0, 515.1, 119.7, 135.8)},
	[230] = {prop = 'nice', price = 450000, door = vector3(-386.7, 504.6, 119.5), garage = vector4(-399.5, 517.3, 120.2, 354.0)},
	[231] = {prop = 'nice', price = 450000, door = vector3(-406.5, 567.5, 123.7), garage = vector4(-408.0, 559.9, 124.4, 155.0)},
	[232] = {prop = 'mansion', price = 750000, door = vector3(-459.1, 537.5, 120.5), garage = vector4(-470.0, 540.9, 121.2, 7.5)},
	[233] = {prop = 'nice', price = 450000, door = vector3(-500.6, 552.2, 119.7), garage = vector4(-481.7, 547.9, 120.0, 1.8)},
	[234] = {prop = 'nice', price = 450000, door = vector3(-520.3, 594.2, 119.9), garage = vector4(-514.5, 576.5, 120.6, 291.3)},
	[235] = {prop = 'nice', price = 450000, door = vector3(-475.1, 585.8, 127.7), garage = vector4(-479.3, 598.8, 127.5, 92.1)},
	[236] = {prop = 'nice', price = 450000, door = vector3(-559.4, 664.4, 144.5), garage = vector4(-554.7, 665.0, 145.0, 341.6)},
	[237] = {prop = 'mansion', price = 750000, door = vector3(-605.9, 672.9, 150.6), garage = vector4(-615.6, 677.4, 149.8, 326.2)},
	[238] = {prop = 'nice', price = 450000, door = vector3(-579.7, 733.1, 183.3), garage = vector4(-577.8, 742.0, 183.8, 104.1)},
	[239] = {prop = 'nice', price = 450000, door = vector3(-655.1, 803.5, 198.0), garage = vector4(-661.3, 807.3, 199.3, 3.3)},
	[240] = {prop = 'nice', price = 180000, door = vector3(-746.9, 808.4, 214.1), garage = vector4(-747.4, 818.1, 213.3, 239.3)},
	[241] = {prop = 'nice', price = 180000, door = vector3(-597.1, 851.8, 210.5), garage = vector4(-608.8, 865.9, 213.4, 331.2)},
	[242] = {prop = 'nice', price = 450000, door = vector3(-494.4, 795.8, 183.4), garage = vector4(-483.7, 799.1, 181.0, 303.0)},
	[243] = {prop = 'mansion', price = 750000, door = vector3(-495.5, 739.0, 162.1), garage = vector4(-494.9, 744.1, 162.8, 249.2)},
	[244] = {prop = 'nice', price = 450000, door = vector3(-533.0, 709.1, 152.1), garage = vector4(-521.0, 711.4, 152.3, 167.2)},
	[245] = {prop = 'nice', price = 450000, door = vector3(-686.2, 596.1, 142.7), garage = vector4(-683.3, 604.2, 143.7, 21.7)},
	[246] = {prop = 'nice', price = 450000, door = vector3(-732.8, 594.1, 141.2), garage = vector4(-742.7, 602.5, 141.9, 357.0)},
	[247] = {prop = 'nice', price = 450000, door = vector3(-752.8, 621.0, 141.6), garage = vector4(-753.2, 627.9, 142.5, 333.6)},
	[248] = {prop = 'mansion', price = 750000, door = vector3(-699.1, 706.8, 157.0), garage = vector4(-695.9, 705.0, 157.4, 349.0)},
	[249] = {prop = 'nice', price = 450000, door = vector3(-476.9, 648.3, 143.4), garage = vector4(-463.8, 643.9, 144.2, 53.7)},
	[250] = {prop = 'mansion', price = 750000, door = vector3(-400.1, 665.4, 162.9), garage = vector4(-393.2, 670.7, 163.3, 18.3)},
	[251] = {prop = 'nice', price = 450000, door = vector3(-353.3, 667.9, 168.1), garage = vector4(-345.4, 662.6, 169.6, 176.5)},
	[252] = {prop = 'nice', price = 450000, door = vector3(-299.8, 635.1, 174.7), garage = vector4(-304.2, 631.8, 175.5, 123.7)},
	[253] = {prop = 'nice', price = 450000, door = vector3(-293.5, 601.4, 180.6), garage = vector4(-273.2, 602.7, 181.9, 348.3)},
	[254] = {prop = 'nice', price = 450000, door = vector3(-232.6, 588.8, 189.6), garage = vector4(-223.4, 594.5, 190.5, 308.7)},
	[255] = {prop = 'nice', price = 450000, door = vector3(-189.1, 617.6, 198.7), garage = vector4(-196.9, 615.9, 197.3, 173.0)},
	[256] = {prop = 'nice', price = 450000, door = vector3(-185.3, 591.8, 196.9), garage = vector4(-178.5, 586.1, 197.6, 0.2)},
	[257] = {prop = 'mansion', price = 750000, door = vector3(-126.8, 588.7, 203.6), garage = vector4(-143.5, 596.5, 203.9, 48.0)},
	[258] = {prop = 'nice', price = 450000, door = vector3(-527.1, 517.6, 112.0), garage = vector4(-525.3, 528.2, 112.1, 50.5)},
	[259] = {prop = 'nice', price = 450000, door = vector3(-580.7, 492.4, 108.0), garage = vector4(-575.3, 497.4, 106.4, 20.9)},
	[260] = {prop = 'mansion', price = 750000, door = vector3(-640.8, 519.7, 108.7), garage = vector4(-629.9, 519.7, 109.7, 186.0)},
	[261] = {prop = 'mansion', price = 750000, door = vector3(-667.3, 472.0, 113.2), garage = vector4(-659.7, 490.5, 109.8, 305.5)},
	[262] = {prop = 'nice', price = 450000, door = vector3(-678.9, 511.7, 112.6), garage = vector4(-659.7, 490.5, 109.8, 305.5)},
	[263] = {prop = 'mansion', price = 750000, door = vector3(-718.1, 449.3, 106.0), garage = vector4(-736.4, 447.1, 106.7, 332.3)},
	[264] = {prop = 'nice', price = 450000, door = vector3(-762.3, 431.5, 99.2), garage = vector4(-755.9, 439.8, 99.8, 35.1)},
	[265] = {prop = 'nice', price = 450000, door = vector3(-784.2, 459.1, 99.2), garage = vector4(-767.1, 466.3, 100.3, 223.8)},
	[266] = {prop = 'nice', price = 450000, door = vector3(-824.7, 422.1, 91.2), garage = vector4(-806.8, 424.9, 91.6, 343.7)},
	[267] = {prop = 'nice', price = 450000, door = vector3(-843.2, 466.7, 86.6), garage = vector4(-845.0, 460.8, 87.8, 127.0)},
	[268] = {prop = 'nice', price = 450000, door = vector3(-849.0, 508.9, 89.9), garage = vector4(-852.0, 514.2, 90.6, 84.4)},
	[269] = {prop = 'nice', price = 450000, door = vector3(-883.9, 518.0, 91.5), garage = vector4(-872.9, 499.2, 90.5, 285.2)},
	[270] = {prop = 'mansion', price = 750000, door = vector3(-905.2, 587.4, 100.0), garage = vector4(-914.1, 586.0, 100.7, 151.7)},
	[271] = {prop = 'nice', price = 450000, door = vector3(-924.7, 561.8, 99.0), garage = vector4(-932.9, 570.6, 99.8, 285.7)},
	[272] = {prop = 'nice', price = 450000, door = vector3(-947.9, 568.2, 100.5), garage = vector4(-953.5, 579.2, 100.9, 289.4)},
	[273] = {prop = 'nice', price = 450000, door = vector3(-974.4, 582.1, 102.0), garage = vector4(-986.3, 587.5, 102.3, 286.3)},
	[274] = {prop = 'nice', price = 450000, door = vector3(-1022.7, 587.4, 102.3), garage = vector4(-1038.0, 591.1, 103.2, 320.6)},
	[275] = {prop = 'nice', price = 450000, door = vector3(-1107.3, 594.0, 103.5), garage = vector4(-1094.6, 598.6, 103.1, 208.0)},
	[276] = {prop = 'nice', price = 450000, door = vector3(-1125.4, 548.7, 101.6), garage = vector4(-1135.8, 551.4, 101.8, 311.4)},
	[277] = {prop = 'nice', price = 450000, door = vector3(-1146.4, 545.9, 101.0), garage = vector4(-1160.1, 547.1, 100.7, 306.0)},
	[278] = {prop = 'nice', price = 450000, door = vector3(-1193.1, 563.8, 99.4), garage = vector4(-1208.6, 557.6, 99.4, 176.4)},
	[279] = {prop = 'nice', price = 450000, door = vector3(-971.0, 456.1, 78.9), garage = vector4(-967.2, 449.8, 79.8, 201.7)},
	[280] = {prop = 'mansion', price = 750000, door = vector3(-967.3, 510.3, 81.1), garage = vector4(-979.0, 516.8, 80.5, 148.0)},
	[281] = {prop = 'nice', price = 450000, door = vector3(-987.4, 487.7, 81.3), garage = vector4(-993.7, 489.8, 82.3, 358.7)},
	[282] = {prop = 'nice', price = 450000, door = vector3(-1052.0, 432.4, 76.1), garage = vector4(-1066.7, 436.8, 73.2, 103.2)},
	[283] = {prop = 'nice', price = 450000, door = vector3(-1094.2, 427.4, 74.9), garage = vector4(-1095.2, 438.9, 75.3, 263.7)},
	[284] = {prop = 'nice', price = 450000, door = vector3(-1122.8, 485.7, 81.2), garage = vector4(-1113.9, 492.2, 82.2, 179.2)},
	[285] = {prop = 'nice', price = 450000, door = vector3(-1175.0, 440.3, 85.9), garage = vector4(-1178.6, 456.8, 86.7, 72.8)},
	[286] = {prop = 'nice', price = 450000, door = vector3(-1215.7, 458.5, 90.9), garage = vector4(-1230.4, 461.6, 91.8, 21.6)},
	[287] = {prop = 'nice', price = 180000, door = vector3(-1294.4, 454.9, 96.5), garage = vector4(-1298.4, 456.3, 97.5, 289.1)},
	[288] = {prop = 'nice', price = 450000, door = vector3(-1308.2, 449.3, 100.0), garage = vector4(-1324.2, 449.4, 99.8, 354.8)},
	[289] = {prop = 'nice', price = 450000, door = vector3(-1413.6, 462.3, 108.3), garage = vector4(-1419.6, 467.1, 109.4, 315.2)},
	[290] = {prop = 'nice', price = 450000, door = vector3(-1404.9, 561.2, 124.5), garage = vector4(-1412.2, 559.5, 123.6, -0.3)},
	[291] = {prop = 'nice', price = 450000, door = vector3(-1346.7, 560.9, 129.6), garage = vector4(-1359.3, 553.1, 129.9, 51.9)},
	[292] = {prop = 'nice', price = 180000, door = vector3(-1366.8, 611.2, 133.0), garage = vector4(-1363.0, 604.3, 133.9, 275.6)},
	[293] = {prop = 'nice', price = 450000, door = vector3(-1337.8, 606.1, 133.4), garage = vector4(-1346.1, 610.8, 133.8, 111.2)},
	[294] = {prop = 'nice', price = 450000, door = vector3(-1291.7, 650.1, 140.6), garage = vector4(-1286.7, 650.4, 140.0, 200.2)},
	[295] = {prop = 'nice', price = 450000, door = vector3(-1248.6, 643.0, 141.7), garage = vector4(-1235.2, 654.1, 142.5, 85.3)},
	[296] = {prop = 'nice', price = 450000, door = vector3(-1241.3, 674.1, 141.9), garage = vector4(-1248.1, 663.9, 142.6, 243.2)},
	[297] = {prop = 'nice', price = 450000, door = vector3(-1219.1, 665.7, 143.6), garage = vector4(-1223.6, 662.9, 143.8, 85.3)},
	[298] = {prop = 'nice', price = 450000, door = vector3(-1197.7, 693.7, 146.4), garage = vector4(-1223.6, 662.9, 143.9, 86.1)},
	[299] = {prop = 'nice', price = 180000, door = vector3(-1165.7, 727.1, 154.7), garage = vector4(-1159.1, 740.2, 155.5, 48.8)},
	[300] = {prop = 'nice', price = 450000, door = vector3(-1130.0, 784.2, 162.9), garage = vector4(-1122.2, 790.1, 163.3, 218.7)},
	[301] = {prop = 'nice', price = 450000, door = vector3(-1100.4, 797.4, 166.3), garage = vector4(-1109.0, 795.3, 165.3, 185.0)},
	[302] = {prop = 'nice', price = 450000, door = vector3(-1056.2, 761.8, 166.4), garage = vector4(-1053.1, 771.2, 167.6, 272.6)},
	[303] = {prop = 'nice', price = 450000, door = vector3(-999.1, 816.5, 172.1), garage = vector4(-995.6, 809.1, 172.5, 184.6)},
	[304] = {prop = 'nice', price = 450000, door = vector3(-962.7, 813.9, 176.6), garage = vector4(-955.9, 800.4, 177.9, 167.2)},
	[305] = {prop = 'nice', price = 180000, door = vector3(-912.4, 777.6, 186.1), garage = vector4(-904.5, 782.2, 186.2, 8.5)},
	[306] = {prop = 'nice', price = 450000, door = vector3(-867.4, 785.3, 191.0), garage = vector4(-851.5, 793.2, 191.9, 358.8)},
	[307] = {prop = 'nice', price = 450000, door = vector3(-824.1, 806.1, 201.8), garage = vector4(-812.2, 808.6, 202.1, 19.4)},
	[308] = {prop = 'nice', price = 450000, door = vector3(-1065.3, 727.4, 164.5), garage = vector4(-1057.3, 734.1, 165.4, 324.4)},
	[309] = {prop = 'nice', price = 180000, door = vector3(-1019.9, 719.1, 163.0), garage = vector4(-1006.5, 710.9, 163.0, 169.0)},
	[310] = {prop = 'nice', price = 450000, door = vector3(-931.4, 691.4, 152.5), garage = vector4(-950.5, 694.1, 153.6, 18.0)},
	[311] = {prop = 'nice', price = 450000, door = vector3(-908.9, 693.9, 150.5), garage = vector4(-915.3, 695.9, 151.5, 332.3)},
	[312] = {prop = 'nice', price = 450000, door = vector3(-885.5, 699.3, 150.3), garage = vector4(-879.7, 704.6, 149.7, 265.4)},
	[313] = {prop = 'nice', price = 180000, door = vector3(-853.6, 696.4, 147.8), garage = vector4(-863.5, 698.3, 149.0, 336.1)},
	[314] = {prop = 'nice', price = 450000, door = vector3(-819.4, 696.5, 147.2), garage = vector4(-810.4, 705.6, 147.1, 0.3)},
	[315] = {prop = 'nice', price = 450000, door = vector3(-765.4, 650.6, 144.7), garage = vector4(-766.7, 665.5, 144.8, 290.3)},
	[316] = {prop = 'nice', price = 180000, door = vector3(118.2, -1920.9, 20.3), garage = vector4(110.0, -1929.9, 20.6, 71.7)},
	[317] = {prop = 'mansion', price = 750000, door = vector3(-658.6, 886.6, 228.2), garage = vector4(-670.8, 910.4, 230.3, 277.1)},
	[318] = {prop = 'mansion2', price = 750000, door = vector3(-1167.1, 569.0, 101.1), garage = vector4(-1154.9, 566.8, 101.8, 175.3)},
	[319] = {prop = 'mansion2', price = 750000, door = vector3(-1089.7, 548.7, 102.7), garage = vector4(-1108.2, 552.7, 102.6, 41.7)},
	[320] = {prop = 'mansion3', price = 900000, door = vector3(-958.1, 607.3, 105.0), garage = vector4(-941.7, 593.4, 101.0, 159.6)},
	[321] = {prop = 'mansion3', price = 900000, door = vector3(-907.8, 544.7, 99.1), garage = vector4(-909.3, 555.1, 96.5, 310.6)},
	[322] = {prop = 'mansion3', price = 900000, door = vector3(-869.1, 551.8, 96.2), garage = vector4(-872.2, 542.4, 91.5, 177.7)},
	[323] = {prop = 'nice', price = 200000, door = vector3(-64.8, -1449.8, 31.5), garage = vector4(-67.6, -1460.9, 32.0, 247.1)},

	-- BALLAS

	[325] = {prop = 'trevor', price = 120000, door = vector3(-45.4, -1445.3, 31.4), garage = vector4(-52.6, -1455.8, 31.1, -87.0)},
	[326] = {prop = 'trevor', price = 120000, door = vector3(-32.1, -1446.3, 30.9), garage = vector4(-38.3, -1449.4, 30.5, 1.6)},

	[327] = {prop = 'kinda_nice', price = 70000, door = vector3(-122.7, -1459.6, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[328] = {prop = 'kinda_nice', price = 70000, door = vector3(-127.8, -1456.8, 36.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[329] = {prop = 'kinda_nice', price = 70000, door = vector3(-132.6, -1462.6, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[330] = {prop = 'kinda_nice', price = 70000, door = vector3(-126.1, -1474.0, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[331] = {prop = 'kinda_nice', price = 70000, door = vector3(-120.4, -1478.7, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[332] = {prop = 'kinda_nice', price = 70000, door = vector3(-120.4, -1478.7, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[333] = {prop = 'kinda_nice', price = 70000, door = vector3(-112.3, -1479.6, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[334] = {prop = 'kinda_nice', price = 70000, door = vector3(-113.3, -1467.5, 36.0), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[335] = {prop = 'kinda_nice', price = 70000, door = vector3(-113.3, -1467.6, 32.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[336] = {prop = 'kinda_nice', price = 70000, door = vector3(-107.4, -1473.5, 32.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[337] = {prop = 'kinda_nice', price = 70000, door = vector3(-112.4, -1479.5, 32.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[338] = {prop = 'kinda_nice', price = 70000, door = vector3(-120.3, -1478.6, 32.9), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[339] = {prop = 'kinda_nice', price = 70000, door = vector3(-126.0, -1473.9, 32.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[340] = {prop = 'kinda_nice', price = 70000, door = vector3(-132.5, -1462.6, 32.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[341] = {prop = 'kinda_nice', price = 70000, door = vector3(-126.6, -1456.5, 33.6), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},
	[342] = {prop = 'kinda_nice', price = 70000, door = vector3(-122.7, -1459.7, 32.8), garage = vector4(-150.0, -1463.3, 32.3, 136.8)},

	--VAGOS

	[343] = {prop = 'kinda_nice', price = 70000, door = vector3(313.2, -2040.8, 19.9), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[344] = {prop = 'kinda_nice', price = 70000, door = vector3(316.9, -2043.9, 19.9), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[345] = {prop = 'kinda_nice', price = 70000, door = vector3(324.2, -2050.0, 19.9), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[346] = {prop = 'kinda_nice', price = 70000, door = vector3(325.6, -2051.2, 19.9), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[347] = {prop = 'kinda_nice', price = 70000, door = vector3(332.9, -2057.4, 20.0), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[348] = {prop = 'kinda_nice', price = 70000, door = vector3(334.3, -2058.5, 20.0), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[349] = {prop = 'kinda_nice', price = 70000, door = vector3(341.6, -2064.7, 20.0), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[350] = {prop = 'kinda_nice', price = 70000, door = vector3(345.3, -2067.7, 20.0), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[351] = {prop = 'kinda_nice', price = 70000, door = vector3(357.0, -2074.9, 20.8), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[352] = {prop = 'kinda_nice', price = 70000, door = vector3(358.1, -2073.6, 20.8), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[353] = {prop = 'kinda_nice', price = 70000, door = vector3(365.4, -2064.9, 20.8), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[354] = {prop = 'kinda_nice', price = 70000, door = vector3(371.6, -2057.5, 20.8), garage = vector4(288.1, -2019.4, 18.5, 144.6)},
	[355] = {prop = 'kinda_nice', price = 70000, door = vector3(372.8, -2056.2, 20.8), garage = vector4(288.1, -2019.4, 18.5, 144.6)},

	--TRIADS

	[356] = {prop = 'kinda_nice', price = 70000, door = vector3(-729.6, -882.3, 21.7), garage = vector4(-742.5, -879.9, 20.5, 179.4)},
	[357] = {prop = 'kinda_nice', price = 70000, door = vector3(-725.2, -904.4, 19.5), garage = vector4(-742.5, -879.9, 20.5, 179.4)},
	[358] = {prop = 'kinda_nice', price = 70000, door = vector3(-719.4, -897.9, 19.8), garage = vector4(-742.5, -879.9, 20.5, 179.4)},
	[359] = {prop = 'trevor', price = 120000, door = vector3(-2.1, -1441.8, 30.0), garage = vector4(3.2, -1452.4, 29.5, -99.7)},
	[360] = {prop = 'nice', price = 160000, door = vector3(16.9, -1443.4, 30.0), garage = vector4(6.9, -1453.0, 29.5, -99.9)},
	[361] = {prop = 'kinda_nice', price = 70000, door = vector3(-37.7, -1473.9, 30.6), garage = vector4(-50.5, -1477.2, 31.0, -171.9)},

	--AZTECAS

	[362] = {prop = 'trailer', price = 50000, door = vector3(1430.9, 3671.2, 33.9), garage = vector4(1440.9, 3677.2, 32.8, 21.4)},
	[363] = {prop = 'trailer', price = 50000, door = vector3(1425.8, 3669.4, 33.9), garage = vector4(1440.9, 3677.2, 32.8, 21.4)},
	[364] = {prop = 'kinda_nice', price = 85000, door = vector3(1435.1, 3657.1, 33.5), garage = vector4(1438.7, 3663.7, 33.2, -71.0)},
	[365] = {prop = 'trailer', price = 50000, door = vector3(1436.3, 3638.8, 33.9), garage = vector4(1449.7, 3642.6, 33.5, -162.4)},
	[366] = {prop = 'trailer', price = 50000, door = vector3(1433.9, 3628.8, 34.8), garage = vector4(1438.5, 3619.0, 33.9, -159.8)},
	[367] = {prop = 'trailer', price = 50000, door = vector3(1407.3, 3656.1, 33.4), garage = vector4(1399.7, 3666.6, 33.1, 19.9)},
	[368] = {prop = 'trailer', price = 50000, door = vector3(1390.3, 3661.2, 33.9), garage = vector4(1387.0, 3672.2, 32.6, 15.2)},
	[369] = {prop = 'trailer', price = 50000, door = vector3(1385.3, 3659.2, 33.9), garage = vector4(1387.0, 3672.2, 32.6, 15.2)},
	[370] = {prop = 'trailer', price = 50000, door = vector3(1501.7, 3695.1, 34.2), garage = vector4(1491.4, 3703.7, 33.5, 25.7)},
	[371] = {prop = 'trailer', price = 50000, door = vector3(1540.7, 3720.7, 33.9), garage = vector4(1547.3, 3725.2, 33.5, -56.7)},
	[372] = {prop = 'trailer', price = 50000, door = vector3(1532.9, 3722.0, 33.8), garage = vector4(1547.3, 3725.2, 33.5, -56.7)},

	-- Southside Apartments

	[373] = {prop = 'kinda_nice', price = 70000, door = vector3(-64.9, -1512.6, 32.6), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[374] = {prop = 'kinda_nice', price = 70000, door = vector3(-72.0, -1508.0, 32.6), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[375] = {prop = 'kinda_nice', price = 70000, door = vector3(-77.9, -1515.0, 33.4), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[376] = {prop = 'kinda_nice', price = 70000, door = vector3(-69.5, -1526.9, 33.4), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[377] = {prop = 'kinda_nice', price = 70000, door = vector3(-62.5, -1532.8, 33.4), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[378] = {prop = 'kinda_nice', price = 70000, door = vector3(-59.0, -1530.9, 33.3), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[379] = {prop = 'kinda_nice', price = 70000, door = vector3(-53.0, -1523.8, 32.6), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[380] = {prop = 'kinda_nice', price = 70000, door = vector3(-59.8, -1517.0, 32.6), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[381] = {prop = 'kinda_nice', price = 70000, door = vector3(-77.9, -1515.0, 36.5), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[382] = {prop = 'kinda_nice', price = 70000, door = vector3(-72.0, -1507.9, 35.7), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[383] = {prop = 'kinda_nice', price = 70000, door = vector3(-64.9, -1512.7, 35.7), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[384] = {prop = 'kinda_nice', price = 70000, door = vector3(-59.9, -1516.9, 35.7), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[385] = {prop = 'kinda_nice', price = 70000, door = vector3(-53.0, -1523.9, 35.7), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[386] = {prop = 'kinda_nice', price = 70000, door = vector3(-58.9, -1530.9, 36.5), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[387] = {prop = 'kinda_nice', price = 70000, door = vector3(-62.5, -1532.8, 36.5), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},
	[388] = {prop = 'kinda_nice', price = 70000, door = vector3(-69.5, -1526.9, 36.5), garage = vector4(-70.5, -1490.8, 31.1, 48.0)},

	[389] = {prop = 'kinda_nice', price = 70000, door = vector3(-36.1, -1536.9, 30.5), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[390] = {prop = 'kinda_nice', price = 70000, door = vector3(-44.7, -1547.1, 30.5), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[391] = {prop = 'kinda_nice', price = 70000, door = vector3(-36.0, -1555.4, 29.7), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[392] = {prop = 'kinda_nice', price = 70000, door = vector3(-24.6, -1557.0, 29.7), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[393] = {prop = 'kinda_nice', price = 70000, door = vector3(-19.4, -1550.9, 29.7), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[394] = {prop = 'kinda_nice', price = 70000, door = vector3(-26.4, -1544.0, 29.8), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[395] = {prop = 'kinda_nice', price = 70000, door = vector3(-13.8, -1544.2, 32.0), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[396] = {prop = 'kinda_nice', price = 70000, door = vector3(-19.4, -1551.0, 32.8), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[397] = {prop = 'kinda_nice', price = 70000, door = vector3(-26.5, -1544.0, 32.8), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[398] = {prop = 'kinda_nice', price = 70000, door = vector3(-36.2, -1536.8, 33.6), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[399] = {prop = 'kinda_nice', price = 70000, door = vector3(-33.3, -1567.4, 32.0), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[400] = {prop = 'kinda_nice', price = 70000, door = vector3(-28.0, -1561.1, 32.8), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[401] = {prop = 'kinda_nice', price = 70000, door = vector3(-44.8, -1547.0, 33.6), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},
	[402] = {prop = 'kinda_nice', price = 70000, door = vector3(-35.9, -1555.4, 32.8), garage = vector4(-14.1, -1536.8, 28.6, -130.3)},

	[403] = {prop = 'kinda_nice', price = 70000, door = vector3(-184.7, -1539.3, 33.5), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[404] = {prop = 'kinda_nice', price = 70000, door = vector3(-196.5, -1555.5, 34.2), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[405] = {prop = 'kinda_nice', price = 70000, door = vector3(-192.4, -1560.1, 34.2), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[406] = {prop = 'kinda_nice', price = 70000, door = vector3(-187.0, -1563.5, 35.0), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[407] = {prop = 'kinda_nice', price = 70000, door = vector3(-179.3, -1554.4, 34.4), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[408] = {prop = 'kinda_nice', price = 70000, door = vector3(-173.5, -1547.4, 34.3), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[409] = {prop = 'kinda_nice', price = 70000, door = vector3(-167.2, -1534.2, 37.5), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[410] = {prop = 'kinda_nice', price = 70000, door = vector3(-173.4, -1547.4, 37.5), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[411] = {prop = 'kinda_nice', price = 70000, door = vector3(-179.3, -1554.4, 37.4), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[412] = {prop = 'kinda_nice', price = 70000, door = vector3(-186.9, -1563.5, 38.2), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[413] = {prop = 'kinda_nice', price = 70000, door = vector3(-188.4, -1563.4, 38.2), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[414] = {prop = 'kinda_nice', price = 70000, door = vector3(-192.3, -1560.1, 37.4), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[415] = {prop = 'kinda_nice', price = 70000, door = vector3(-196.5, -1555.4, 37.5), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[416] = {prop = 'kinda_nice', price = 70000, door = vector3(-184.7, -1539.3, 36.7), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[417] = {prop = 'kinda_nice', price = 70000, door = vector3(-180.4, -1534.2, 36.6), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[418] = {prop = 'kinda_nice', price = 70000, door = vector3(-174.3, -1528.4, 36.7), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[419] = {prop = 'kinda_nice', price = 70000, door = vector3(-180.4, -1534.2, 33.5), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[420] = {prop = 'kinda_nice', price = 70000, door = vector3(-174.3, -1528.3, 33.5), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[421] = {prop = 'kinda_nice', price = 70000, door = vector3(-167.2, -1534.3, 34.2), garage = vector4(-183.9, -1513.2, 32.2, -37.5)},
	[422] = {prop = 'kinda_nice', price = 70000, door = vector3(-118.6, -1586.3, 33.2), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},

	[423] = {prop = 'kinda_nice', price = 70000, door = vector3(-113.9, -1579.3, 33.3), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[424] = {prop = 'kinda_nice', price = 70000, door = vector3(-119.8, -1574.3, 33.3), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[425] = {prop = 'kinda_nice', price = 70000, door = vector3(-134.6, -1580.2, 33.4), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[426] = {prop = 'kinda_nice', price = 70000, door = vector3(-140.5, -1587.2, 33.4), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[427] = {prop = 'kinda_nice', price = 70000, door = vector3(-134.6, -1580.2, 36.6), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[428] = {prop = 'kinda_nice', price = 70000, door = vector3(-140.4, -1587.2, 36.5), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[429] = {prop = 'kinda_nice', price = 70000, door = vector3(-148.0, -1596.2, 37.3), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[430] = {prop = 'kinda_nice', price = 70000, door = vector3(-147.5, -1597.3, 37.3), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[431] = {prop = 'kinda_nice', price = 70000, door = vector3(-140.5, -1599.9, 37.3), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[432] = {prop = 'kinda_nice', price = 70000, door = vector3(-119.8, -1574.2, 36.5), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[433] = {prop = 'kinda_nice', price = 70000, door = vector3(-113.9, -1579.2, 36.5), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[434] = {prop = 'kinda_nice', price = 70000, door = vector3(-118.5, -1586.3, 36.5), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[435] = {prop = 'kinda_nice', price = 70000, door = vector3(-122.8, -1591.4, 36.5), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},
	[436] = {prop = 'kinda_nice', price = 70000, door = vector3(-122.9, -1591.3, 33.2), garage = vector4(-97.7, -1585.9, 30.4, -40.4)},

	[437] = {prop = 'kinda_nice', price = 70000, door = vector3(-98.1, -1612.1, 31.3), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[438] = {prop = 'kinda_nice', price = 70000, door = vector3(-109.9, -1628.4, 32.2), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[439] = {prop = 'kinda_nice', price = 70000, door = vector3(-105.8, -1632.9, 32.1), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[440] = {prop = 'kinda_nice', price = 70000, door = vector3(-96.9, -1639.4, 31.3), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[441] = {prop = 'kinda_nice', price = 70000, door = vector3(-89.2, -1630.2, 30.7), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[442] = {prop = 'kinda_nice', price = 70000, door = vector3(-83.3, -1623.2, 30.7), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[443] = {prop = 'kinda_nice', price = 70000, door = vector3(-80.1, -1607.6, 30.7), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[444] = {prop = 'kinda_nice', price = 70000, door = vector3(-87.7, -1601.2, 31.4), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[445] = {prop = 'kinda_nice', price = 70000, door = vector3(-93.8, -1607.0, 31.4), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[446] = {prop = 'kinda_nice', price = 70000, door = vector3(-105.7, -1632.9, 35.3), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[447] = {prop = 'kinda_nice', price = 70000, door = vector3(-98.3, -1639.2, 34.6), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[448] = {prop = 'kinda_nice', price = 70000, door = vector3(-96.8, -1639.3, 34.6), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[449] = {prop = 'kinda_nice', price = 70000, door = vector3(-89.2, -1630.2, 33.8), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[450] = {prop = 'kinda_nice', price = 70000, door = vector3(-83.4, -1623.2, 33.8), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[451] = {prop = 'kinda_nice', price = 70000, door = vector3(-80.0, -1607.6, 33.9), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[452] = {prop = 'kinda_nice', price = 70000, door = vector3(-87.7, -1601.2, 34.6), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[453] = {prop = 'kinda_nice', price = 70000, door = vector3(-93.8, -1607.0, 34.6), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[454] = {prop = 'kinda_nice', price = 70000, door = vector3(-98.1, -1612.1, 34.7), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[455] = {prop = 'kinda_nice', price = 70000, door = vector3(-113.9, -1579.2, 36.5), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[456] = {prop = 'kinda_nice', price = 70000, door = vector3(-109.9, -1628.3, 35.4), garage = vector4(-110.8, -1601.9, 30.7, -44.3)},
	[457] = {prop = 'kinda_nice', price = 70000, door = vector3(-151.5, -1622.3, 32.6), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},

	[458] = {prop = 'kinda_nice', price = 70000, door = vector3(-144.8, -1618.8, 35.0), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[459] = {prop = 'kinda_nice', price = 70000, door = vector3(-146.4, -1614.5, 35.0), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[460] = {prop = 'kinda_nice', price = 70000, door = vector3(-152.7, -1623.7, 35.8), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[461] = {prop = 'kinda_nice', price = 70000, door = vector3(-150.1, -1625.8, 35.9), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[462] = {prop = 'kinda_nice', price = 70000, door = vector3(-150.1, -1625.8, 32.7), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[463] = {prop = 'kinda_nice', price = 70000, door = vector3(-159.9, -1636.0, 33.2), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[464] = {prop = 'kinda_nice', price = 70000, door = vector3(-161.3, -1639.0, 33.2), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[465] = {prop = 'kinda_nice', price = 70000, door = vector3(-153.4, -1640.9, 35.9), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[466] = {prop = 'kinda_nice', price = 70000, door = vector3(-159.8, -1636.0, 36.4), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},
	[467] = {prop = 'kinda_nice', price = 70000, door = vector3(-161.8, -1638.7, 36.4), garage = vector4(-140.0, -1636.0, 31.4, 144.5)},

	[468] = {prop = 'kinda_nice', price = 70000, door = vector3(-123.8, -1671.5, 31.6), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[469] = {prop = 'kinda_nice', price = 70000, door = vector3(-131.8, -1665.8, 31.7), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[470] = {prop = 'kinda_nice', price = 70000, door = vector3(-138.9, -1658.8, 32.3), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[471] = {prop = 'kinda_nice', price = 70000, door = vector3(-129.2, -1647.1, 32.3), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[472] = {prop = 'kinda_nice', price = 70000, door = vector3(-121.0, -1653.0, 31.6), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[473] = {prop = 'kinda_nice', price = 70000, door = vector3(-114.1, -1659.9, 31.6), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[474] = {prop = 'kinda_nice', price = 70000, door = vector3(-107.2, -1651.6, 33.9), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[475] = {prop = 'kinda_nice', price = 70000, door = vector3(-114.1, -1659.9, 34.7), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[476] = {prop = 'kinda_nice', price = 70000, door = vector3(-121.0, -1653.0, 34.7), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[477] = {prop = 'kinda_nice', price = 70000, door = vector3(-129.2, -1647.2, 35.5), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[478] = {prop = 'kinda_nice', price = 70000, door = vector3(-130.8, -1679.7, 33.9), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[479] = {prop = 'kinda_nice', price = 70000, door = vector3(-123.8, -1671.5, 34.7), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[480] = {prop = 'kinda_nice', price = 70000, door = vector3(-131.8, -1665.8, 34.7), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},
	[481] = {prop = 'kinda_nice', price = 70000, door = vector3(-138.9, -1658.8, 35.5), garage = vector4(-102.3, -1680.3, 28.2, 141.2)},

	[482] = {prop = 'kinda_nice', price = 70000, door = vector3(-147.9, -1687.3, 32.2), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[483] = {prop = 'kinda_nice', price = 70000, door = vector3(-146.8, -1688.2, 32.2), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[484] = {prop = 'kinda_nice', price = 70000, door = vector3(-141.4, -1693.8, 32.2), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[485] = {prop = 'kinda_nice', price = 70000, door = vector3(-141.5, -1692.6, 32.2), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[486] = {prop = 'kinda_nice', price = 70000, door = vector3(-158.1, -1679.7, 32.8), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[487] = {prop = 'kinda_nice', price = 70000, door = vector3(-147.9, -1687.3, 35.2), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[488] = {prop = 'kinda_nice', price = 70000, door = vector3(-146.7, -1688.2, 35.3), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[489] = {prop = 'kinda_nice', price = 70000, door = vector3(-141.5, -1692.6, 35.3), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[490] = {prop = 'kinda_nice', price = 70000, door = vector3(-141.4, -1693.8, 35.2), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[491] = {prop = 'kinda_nice', price = 70000, door = vector3(-158.8, -1679.1, 36.0), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},
	[492] = {prop = 'kinda_nice', price = 70000, door = vector3(-157.7, -1679.0, 36.1), garage = vector4(-144.6, -1703.8, 29.7, 143.5)},

	[493] = {prop = 'kinda_nice', price = 70000, door = vector3(-208.4, -1600.6, 34.1), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[494] = {prop = 'kinda_nice', price = 70000, door = vector3(-209.7, -1607.2, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[495] = {prop = 'kinda_nice', price = 70000, door = vector3(-211.8, -1617.6, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[496] = {prop = 'kinda_nice', price = 70000, door = vector3(-212.8, -1618.4, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[497] = {prop = 'kinda_nice', price = 70000, door = vector3(-223.4, -1617.6, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[498] = {prop = 'kinda_nice', price = 70000, door = vector3(-223.4, -1601.2, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[499] = {prop = 'kinda_nice', price = 70000, door = vector3(-223.4, -1585.9, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[500] = {prop = 'kinda_nice', price = 70000, door = vector3(-219.6, -1579.7, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[501] = {prop = 'kinda_nice', price = 70000, door = vector3(-215.5, -1576.0, 34.0), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[502] = {prop = 'kinda_nice', price = 70000, door = vector3(-215.5, -1576.0, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[503] = {prop = 'kinda_nice', price = 70000, door = vector3(-219.6, -1579.8, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[504] = {prop = 'kinda_nice', price = 70000, door = vector3(-223.4, -1585.9, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[505] = {prop = 'kinda_nice', price = 70000, door = vector3(-223.4, -1601.1, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[506] = {prop = 'kinda_nice', price = 70000, door = vector3(-223.4, -1617.6, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[507] = {prop = 'kinda_nice', price = 70000, door = vector3(-212.8, -1618.4, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[508] = {prop = 'kinda_nice', price = 70000, door = vector3(-211.8, -1617.6, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[509] = {prop = 'kinda_nice', price = 70000, door = vector3(-209.7, -1607.1, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[510] = {prop = 'kinda_nice', price = 70000, door = vector3(-208.4, -1600.6, 37.1), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},
	[511] = {prop = 'kinda_nice', price = 70000, door = vector3(-205.4, -1585.6, 37.2), garage = vector4(-205.0, -1635.2, 32.6, 91.2)},

	[512] = {prop = 'kinda_nice', price = 70000, door = vector3(-211.9, -1668.0, 33.5), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[513] = {prop = 'kinda_nice', price = 70000, door = vector3(-211.9, -1660.6, 33.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[514] = {prop = 'kinda_nice', price = 70000, door = vector3(-216.5, -1648.2, 33.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[515] = {prop = 'kinda_nice', price = 70000, door = vector3(-225.3, -1648.9, 34.3), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[516] = {prop = 'kinda_nice', price = 70000, door = vector3(-225.2, -1666.3, 33.5), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[517] = {prop = 'kinda_nice', price = 70000, door = vector3(-224.3, -1674.8, 33.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[518] = {prop = 'kinda_nice', price = 70000, door = vector3(-216.6, -1674.8, 33.5), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[519] = {prop = 'kinda_nice', price = 70000, door = vector3(-212.0, -1668.0, 36.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[520] = {prop = 'kinda_nice', price = 70000, door = vector3(-212.0, -1660.6, 36.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[521] = {prop = 'kinda_nice', price = 70000, door = vector3(-216.5, -1648.2, 36.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[522] = {prop = 'kinda_nice', price = 70000, door = vector3(-224.1, -1648.2, 37.4), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[523] = {prop = 'kinda_nice', price = 70000, door = vector3(-225.2, -1654.0, 36.7), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[524] = {prop = 'kinda_nice', price = 70000, door = vector3(-216.5, -1674.8, 36.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[525] = {prop = 'kinda_nice', price = 70000, door = vector3(-224.3, -1674.8, 36.7), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},
	[526] = {prop = 'kinda_nice', price = 70000, door = vector3(-225.2, -1666.3, 36.6), garage = vector4(-195.0, -1693.6, 32.3, -52.4)},

	---Imagineation Court---

	[527] = {prop = 'kinda_nice', price = 70000, door = vector3(-987.4, -1199.3, 5.2), garage = vector4(-974.4, -1197.9, 3.3, -59.7)}, --Checked
	[528] = {prop = 'kinda_nice', price = 70000, door = vector3(-1035.2, -1227.2, 5.4), garage = vector4(-1036.6, -1236.4, 4.9, -147.4)}, --Checked
	[529] = {prop = 'kinda_nice', price = 70000, door = vector3(-1002.7, -1218.4, 4.9), garage = vector4(-1004.1, -1225.4, 4.7, -148.0)}, --No visible parking --Checked
	[530] = {prop = 'kinda_nice', price = 70000, door = vector3(-1011.1, -1223.6, 5.2), garage = vector4(-1004.1, -1225.4, 4.7, -148.0)}, --No visible parking --Checked
	[531] = {prop = 'kinda_nice', price = 70000, door = vector3(-1005.9, -1154.7, 1.6), garage = vector4(-993.2, -1150.4, 1.1, -155.2)}, --No visible parking --Checked
	[532] = {prop = 'kinda_nice', price = 70000, door = vector3(-1024.6, -1140.4, 1.9), garage = vector4(-1023.2, -1131.3, 1.2, -61.1)}, --Checked
	[533] = {prop = 'mansion', price = 750000, door = vector3(-1034.5, -1147.4, 1.3), garage = vector4(-1036.0, -1138.6, 1.0, -60.3)}, --No visible parking --Checked
	[534] = {prop = 'kinda_nice', price = 70000, door = vector3(-1045.4, -1159.9, 1.4), garage = vector4(-1048.3, -1145.1, 1.1, -64.2)}, --No visible parking --Checked
	[535] = {prop = 'nice', price = 160000, door = vector3(-1063.8, -1160.8, 2.1), garage = vector4(-1060.3, -1152.2, 1.1, -60.1)}, --Checked
	[536] = {prop = 'kinda_nice', price = 70000, door = vector3(-1067.4, -1163.5, 1.9), garage = vector4(-1073.3, -1160.2, 1.1, -60.8)}, --Checked {coords=vector3(-1073.3, -1160.2, 1.1),heading=-60.8},
	[537] = {prop = 'kinda_nice', price = 70000, door = vector3(-1064.4, -1187.0, 1.6), garage = vector4(-1073.3, -1160.2, 1.1, -60.8)}, --No visible parking --Checked
	[538] = {prop = 'kinda_nice', price = 70000, door = vector3(-1032.3, -1172.3, 1.4), garage = vector4(-1048.3, -1145.1, 1.1, -64.2)}, --No visible parking --Checked
	[539] = {prop = 'mansion', price = 750000, door = vector3(-1031.9, -1109.9, 1.6), garage = vector4(-1023.9, -1130.5, 1.2, -64.2)}, --Checked
	[540] = {prop = 'mansion', price = 750000, door = vector3(-1040.3, -1135.4, 1.5), garage = vector4(-1042.8, -1141.9, 1.1, -59.8)}, --Checked
	[541] = {prop = 'nice', price = 160000, door = vector3(-1064.0, -1134.1, 1.3), garage = vector4(-1061.9, -1152.8, 1.1, -60.3)}, --No visible parking --Checked
	[542] = {prop = 'mansion', price = 750000, door = vector3(-1074.7, -1152.4, 1.3), garage = vector4(-1076.9, -1162.1, 1.1, -59.6)}, --Checked
	[543] = {prop = 'kinda_nice', price = 70000, door = vector3(-986.0, -1121.1, 3.6), garage = vector4(-988.9, -1110.8, 1.1, 118.6)}, --Checked
	[544] = {prop = 'kinda_nice', price = 70000, door = vector3(-975.8, -1139.5, 1.4), garage = vector4(-988.9, -1110.8, 1.1, 118.6)}, --No visible parking --Checked
	[545] = {prop = 'mansion', price = 750000, door = vector3(-978.4, -1108.7, 1.3), garage = vector4(-975.5, -1102.5, 1.1, 118.6)}, --Checked
	[546] = {prop = 'kinda_nice', price = 70000, door = vector3(-959.3, -1109.8, 1.2), garage = vector4(-964.7, -1096.4, 1.1, 118.6)}, --No visible parking --Checked
	[547] = {prop = 'nice', price = 160000, door = vector3(-948.5, -1107.1, 1.2), garage = vector4(-952.6, -1089.2, 1.1, 120.4)}, --No visible parking --Checked
	[548] = {prop = 'mansion', price = 750000, door = vector3(-938.2, -1088.1, 1.3), garage = vector4(-936.6, -1079.1, 1.1, 118.6)}, --Checked
	[549] = {prop = 'kinda_nice', price = 70000, door = vector3(-946.0, -1122.4, 1.2), garage = vector4(-964.9, -1096.2, 1.1, 118.6)}, --No visible parking --Checked
	[550] = {prop = 'kinda_nice', price = 70000, door = vector3(-943.7, -1075.5, 1.8), garage = vector4(-936.3, -1077.2, 1.1, 118.6)}, --Checked
	[551] = {prop = 'kinda_nice', price = 70000, door = vector3(-947.2, -1051.1, 1.4), garage = vector4(-936.3, -1077.2, 1.1, 118.6)}, --No visible parking --Checked
	[553] = {prop = 'nice', price = 160000, door = vector3(-952.2, -1077.1, 1.9), garage = vector4(-952.2, -1086.9, 1.1, 120.4)}, --Blocked In --No visible parking --Checked
	[554] = {prop = 'kinda_nice', price = 70000, door = vector3(-983.0, -1067.2, 1.6), garage = vector4(-965.6, -1096.6, 1.1, 117.9)}, --Blocked In --No visible parking --Checked
	[555] = {prop = 'mansion', price = 750000, door = vector3(-978.0, -1092.3, 3.2), garage = vector4(-976.3, -1103.1, 1.1, 118.8)}, --Checked
	[556] = {prop = 'mansion', price = 750000, door = vector3(-991.8, -1103.3, 1.2), garage = vector4(-990.8, -1111.3, 1.1, 118.8)}, --No visible parking --Checked
	[557] = {prop = 'nice', price = 160000, door = vector3(-1041.9, -1026.2, 2.0), garage = vector4(-1041.1, -1018.1, 1.1, 119.0)}, --No visible parking --Checked
	[558] = {prop = 'kinda_nice', price = 70000, door = vector3(-1021.8, -1022.9, 1.2), garage = vector4(-1028.2, -1010.5, 1.1, 119.0)}, --No visible parking --Checked
	[559] = {prop = 'kinda_nice', price = 70000, door = vector3(-1008.4, -1035.7, 1.2), garage = vector4(-1028.2, -1010.5, 1.1, 119.0)}, --No visible parking --Checked
	[560] = {prop = 'kinda_nice', price = 70000, door = vector3(-1008.8, -1015.6, 1.2), garage = vector4(-1015.8, -1002.7, 1.0, 120.7)}, --No visible parking --Checked
	[561] = {prop = 'kinda_nice', price = 70000, door = vector3(-1000.9, -1030.1, 1.2), garage = vector4(-1015.8, -1002.7, 1.0, 120.7)}, --No visible parking --Checked
	[562] = {prop = 'nice', price = 160000, door = vector3(-997.5, -1011.8, 1.2), garage = vector4(-999.8, -993.8, 1.2, 118.2)}, --No visible parking --Checked
	[563] = {prop = 'kinda_nice', price = 70000, door = vector3(-979.0, -990.4, 3.6), garage = vector4(-986.4, -984.8, 1.0, 121.0)}, --Checked
	[564] = {prop = 'kinda_nice', price = 70000, door = vector3(-968.3, -1008.4, 1.4), garage = vector4(-986.4, -984.8, 1.0, 121.0)}, --Checked
	[565] = {prop = 'mansion', price = 750000, door = vector3(-990.6, -975.9, 3.2), garage = vector4(-989.7, -986.5, 1.1, 116.8)}, --Checked
	[566] = {prop = 'kinda_nice', price = 70000, door = vector3(-1003.9, -977.2, 1.2), garage = vector4(-999.8, -993.3, 1.2, 119.0)}, --Checked
	[567] = {prop = 'kinda_nice', price = 70000, door = vector3(-1018.9, -964.5, 1.5), garage = vector4(-999.8, -993.3, 1.2, 119.0)}, --Checked
	[568] = {prop = 'kinda_nice', price = 70000, door = vector3(-1012.9, -982.5, 1.2), garage = vector4(-1009.0, -998.2, 1.2, 120.4)}, --Checked
	[569] = {prop = 'kinda_nice', price = 70000, door = vector3(-1027.9, -969.7, 1.5), garage = vector4(-1009.0, -998.2, 1.2, 120.4)}, --Blocked In  --Checked
	[570] = {prop = 'mansion', price = 750000, door = vector3(-1023.2, -997.8, 1.2), garage = vector4(-1023.4, -1006.3, 1.1, 119.0)}, --No visible parking --Checked
	[571] = {prop = 'kinda_nice', price = 70000, door = vector3(-1056.2, -1000.3, 1.2), garage = vector4(-1037.7, -1014.2, 1.1, 119.6)}, --No visible parking --Checked
	[572] = {prop = 'kinda_nice', price = 70000, door = vector3(-1055.4, -997.8, 5.4), garage = vector4(-1037.7, -1014.2, 1.1, 119.6)}, --No visible parking --Checked
	[573] = {prop = 'kinda_nice', price = 70000, door = vector3(-1054.2, -999.8, 5.4), garage = vector4(-1037.7, -1014.2, 1.1, 119.6)}, --No visible parking --Checked
	[574] = {prop = 'kinda_nice', price = 70000, door = vector3(-1076.2, -1027.4, 3.5), garage = vector4(-1073.7, -1037.1, 1.1, -59.9)}, --Checked
	[575] = {prop = 'kinda_nice', price = 70000, door = vector3(-1086.3, -1009.1, 1.4), garage = vector4(-1073.7, -1037.1, 1.1, -59.9)}, --Checked
	[576] = {prop = 'kinda_nice', price = 70000, door = vector3(-1088.6, -1027.6, 1.2), garage = vector4(-1083.6, -1042.3, 1.0, -61.5)}, --Checked
	[577] = {prop = 'kinda_nice', price = 70000, door = vector3(-1103.6, -1014.7, 1.6), garage = vector4(-1083.6, -1042.3, 1.0, -61.5)}, --Checked
	[578] = {prop = 'kinda_nice', price = 70000, door = vector3(-1097.5, -1032.8, 1.2), garage = vector4(-1092.0, -1047.0, 1.1, -59.9)}, --Checked
	[579] = {prop = 'kinda_nice', price = 70000, door = vector3(-1112.7, -1019.9, 1.4), garage = vector4(-1092.0, -1047.0, 1.1, -59.9)}, --Checked
	[580] = {prop = 'kinda_nice', price = 70000, door = vector3(-1109.2, -1041.1, 1.2), garage = vector4(-1102.3, -1053.0, 1.1, -62.6)}, --No visible parking --Checked
	[581] = {prop = 'kinda_nice', price = 70000, door = vector3(-1122.6, -1028.2, 1.2), garage = vector4(-1102.3, -1053.0, 1.1, -62.6)}, --No visible parking --Checked
	[582] = {prop = 'kinda_nice', price = 70000, door = vector3(-1121.9, -1046.0, 1.2), garage = vector4(-1113.7, -1059.7, 1.1, -60.9)}, --No visible parking --Checked
	[583] = {prop = 'kinda_nice', price = 70000, door = vector3(-1129.9, -1031.5, 1.2), garage = vector4(-1113.7, -1059.7, 1.1, -60.9)}, --No visible parking --Checked
	[584] = {prop = 'nice', price = 160000, door = vector3(-1133.9, -1050.7, 1.2), garage = vector4(-1128.7, -1068.1, 1.0, -62.5)}, --Blocked In --No visible parking --Checked
	[585] = {prop = 'mansion', price = 750000, door = vector3(-1127.6, -1080.8, 3.2), garage = vector4(-1128.5, -1068.4, 1.0, -62.3)}, --Checked
	[586] = {prop = 'mansion', price = 750000, door = vector3(-1114.1, -1069.3, 1.2), garage = vector4(-1114.8, -1061.1, 1.1, -60.7)}, --No visible parking --Checked
	[587] = {prop = 'nice', price = 160000, door = vector3(-1104.3, -1060.4, 2.0), garage = vector4(-1101.7, -1053.0, 1.1, -61.4)}, --Checked
	[588] = {prop = 'kinda_nice', price = 70000, door = vector3(-1063.5, -1055.4, 1.2), garage = vector4(-1080.8, -1042.3, 1.1, -59.9)}, --No visible parking --Checked
	[589] = {prop = 'kinda_nice', price = 70000, door = vector3(-1064.5, -1057.9, 5.4), garage = vector4(-1080.8, -1042.3, 1.1, -59.9)}, --No visible parking --Checked
	[590] = {prop = 'kinda_nice', price = 70000, door = vector3(-1065.9, -1055.1, 5.4), garage = vector4(-1080.8, -1042.3, 1.1, -59.9)}, --No visible parking --Checked
	[591] = {prop = 'nice', price = 160000, door = vector3(-1084.1, -952.0, 1.4), garage = vector4(-1096.1, -957.7, 1.3, 30.9)}, --Blocked In --No visible parking --Checked
	[592] = {prop = 'mansion', price = 750000, door = vector3(-1090.4, -926.7, 2.1), garage = vector4(-1099.2, -944.2, 1.5, 118.6)}, --Checked
	[593] = {prop = 'mansion3', price = 1000000, door = vector3(-1074.8, -939.0, 1.4), garage = vector4(-1083.4, -917.0, 2.5, 30.0)}, --Checked
	[594] = {prop = 'mansion2', price = 750000, door = vector3(-1054.4, -932.5, 2.4), garage = vector4(-1070.6, -903.4, 3.1, -61.9)}, --Blocked In --No visible parking --Checked
	[595] = {prop = 'mansion2', price = 750000, door = vector3(-1043.3, -923.4, 2.2), garage = vector4(-1056.8, -900.8, 3.5, 31.3)}, --Checked
	[596] = {prop = 'mansion', price = 750000, door = vector3(-1031.4, -903.3, 2.7), garage = vector4(-1035.9, -898.0, 3.5, 28.9)}, --No visible parking --Checked
	[597] = {prop = 'mansion2', price = 750000, door = vector3(-1022.0, -897.0, 4.4), garage = vector4(-1028.2, -884.1, 5.2, 25.0)}, --No visible parking --Checked
	[598] = {prop = 'mansion2', price = 750000, door = vector3(-1009.4, -888.6, 3.2), garage = vector4(-982.9, -902.3, 1.2, -61.1)}, --Checked
	[699] = {prop = 'mansion2', price = 750000, door = vector3(-987.5, -891.5, 1.2), garage = vector4(-982.9, -902.3, 1.2, -61.1)},  --Checked
	[600] = {prop = 'mansion', price = 750000, door = vector3(-968.8, -884.3, 1.2), garage = vector4(-966.8, -892.4, 1.2, -61.1)}, --Checked
	[601] = {prop = 'kinda_nice', price = 70000, door = vector3(-951.2, -906.5, 1.8), garage = vector4(-946.8, -899.7, 1.2, -60.7)}, --Checked
	[602] = {prop = 'kinda_nice', price = 70000, door = vector3(-975.7, -909.9, 1.4), garage = vector4(-946.8, -899.7, 1.2, -60.7)}, --No visible parking --Checked
	[603] = {prop = 'nice', price = 160000, door = vector3(-948.6, -910.2, 2.0), garage = vector4(-938.9, -911.8, 1.2, -149.4)}, --Checked
	[604] = {prop = 'kinda_nice', price = 70000, door = vector3(-947.5, -928.6, 1.2), garage = vector4(-932.7, -922.8, 1.3, -151.8)}, --No visible parking --Checked
	[605] = {prop = 'kinda_nice', price = 70000, door = vector3(-960.5, -941.9, 1.2), garage = vector4(-932.7, -922.8, 1.3, -151.8)}, --No visible parking --Checked
	[606] = {prop = 'mansion', price = 750000, door = vector3(-935.0, -939.3, 1.2), garage = vector4(-925.0, -935.1, 1.3, -149.4)}, --No visible parking --Checked
	[607] = {prop = 'kinda_nice', price = 70000, door = vector3(-928.0, -949.2, 1.8), garage = vector4(-919.8, -948.2, 1.2, -60.0)}, --Checked
	[608] = {prop = 'kinda_nice', price = 70000, door = vector3(-942.6, -968.2, 1.4), garage = vector4(-919.8, -948.2, 1.2, -60.0)}, --Checked
	[610] = {prop = 'mansion3', price = 1000000, door = vector3(-909.2, -976.0, 1.2), garage = vector4(-906.8, -967.2, 1.2, -150.0)}, --Checked
	[611] = {prop = 'mansion3', price = 1000000, door = vector3(-901.2, -982.2, 1.3), garage = vector4(-895.8, -985.5, 1.2, -150.0)}, --Checked
	[612] = {prop = 'nice', price = 160000, door = vector3(-902.9, -1005.7, 1.2), garage = vector4(-886.0, -1003.1, 1.3, -150.0)}, --No visible parking --Checked
	[613] = {prop = 'nice', price = 160000, door = vector3(-884.5, -1072.9, 1.5), garage = vector4(-867.6, -1068.8, 1.2, 29.6)}, --No visible parking --Checked
	[614] = {prop = 'kinda_nice', price = 70000, door = vector3(-868.8, -1105.2, 1.5), garage = vector4(-856.8, -1090.0, 1.2, 28.7)}, --No visible parking --Checked
	[615] = {prop = 'kinda_nice', price = 70000, door = vector3(-869.2, -1103.2, 5.5), garage = vector4(-856.8, -1090.0, 1.2, 28.7)}, --No visible parking --Checked
	[616] = {prop = 'kinda_nice', price = 70000, door = vector3(-1161.5, -974.0, 1.2), garage = vector4(-1168.9, -960.7, 2.2, -60.4)}, --No visible parking --Checked
	[617] = {prop = 'kinda_nice', price = 70000, door = vector3(-1151.2, -990.1, 1.2), garage = vector4(-1168.9, -960.7, 2.2, -60.4)}, --No visible parking --Checked
	[618] = {prop = 'mansion3', price = 1000000, door = vector3(-1169.1, -987.9, 1.3), garage = vector4(-1185.6, -969.8, 3.6, -61.5)}, --No visible parking --Checked
	[619] = {prop = 'trevor', price = 120000, door = vector3(-1204.4, -1022.5, 4.9), garage = vector4(-1207.8, -1036.5, 1.2, -148.2)}, --No visible parking --Checked
	[620] = {prop = 'kinda_nice', price = 70000, door = vector3(-1200.2, -1032.1, 1.2), garage = vector4(-1207.8, -1036.5, 1.2, -148.2)}, --No visible parking --Checked
	[621] = {prop = 'kinda_nice', price = 70000, door = vector3(-1198.9, -1024.4, 1.2), garage = vector4(-1207.8, -1036.5, 1.2, -148.2)}, --No visible parking --Checked
	[622] = {prop = 'kinda_nice', price = 70000, door = vector3(-1188.3, -1041.2, 1.3), garage = vector4(-1201.7, -1051.9, 1.1, -156.7)}, --No visible parking --Checked
	[623] = {prop = 'kinda_nice', price = 70000, door = vector3(-1195.7, -1036.6, 1.3), garage = vector4(-1201.7, -1051.9, 1.1, -156.7)}, --No visible parking --Checked
	[624] = {prop = 'kinda_nice', price = 70000, door = vector3(-1182.6, -1064.7, 1.2), garage = vector4(-1193.8, -1074.6, 1.1, -159.3)}, --No visible parking --Checked (Close fit)
	[625] = {prop = 'kinda_nice', price = 70000, door = vector3(-1181.2, -1056.7, 1.2), garage = vector4(-1193.8, -1074.6, 1.1, -159.3)}, --No visible parking --Checked (Close fit)
	[626] = {prop = 'trevor', price = 120000, door = vector3(-1177.8, -1073.1, 4.9), garage = vector4(-1189.3, -1086.4, 1.2, -149.2)}, --No visible parking --Checked (Close fit)
	[627] = {prop = 'kinda_nice', price = 70000, door = vector3(-1161.6, -1100.2, 1.2), garage = vector4(-1171.5, -1118.0, 1.5, 27.5)}, --No visible parking --Checked
	[628] = {prop = 'kinda_nice', price = 70000, door = vector3(-1159.2, -1101.2, 5.5), garage = vector4(-1171.5, -1118.0, 1.5, 27.5)}, --No visible parking --Checked
	[629] = {prop = 'kinda_nice', price = 70000, door = vector3(-1161.1, -1102.2, 5.5), garage = vector4(-1171.5, -1118.0, 1.5, 27.5)}, --No visible parking --Checked
	[630] = {prop = 'kinda_nice', price = 70000, door = vector3(-1143.3, -1121.8, 1.6), garage = vector4(-1163.8, -1131.8, 1.5, -147.9)}, --No visible parking --Checked
	[631] = {prop = 'kinda_nice', price = 70000, door = vector3(-1150.6, -1117.1, 1.3), garage = vector4(-1163.8, -1131.8, 1.5, -147.9)}, --No visible parking --Checked
	[632] = {prop = 'trevor', price = 120000, door = vector3(-1146.3, -1127.5, 5.5), garage = vector4(-1158.9, -1139.9, 1.5, -150.8)}, --No visible parking --Checked
	[633] = {prop = 'kinda_nice', price = 70000, door = vector3(-1142.4, -1144.5, 1.8), garage = vector4(-1152.7, -1150.6, 1.7, -154.2)}, --No visible parking --Checked (Close fit)
	[634] = {prop = 'kinda_nice', price = 70000, door = vector3(-1132.6, -1138.3, 1.8), garage = vector4(-1152.7, -1150.6, 1.7, -154.2)}, --No visible parking --Checked (Close fit)
	[635] = {prop = 'kinda_nice', price = 70000, door = vector3(-1135.9, -1153.0, 1.8), garage = vector4(-1143.7, -1168.1, 1.6, -161.6)}, --No visible parking --Checked
	[636] = {prop = 'kinda_nice', price = 70000, door = vector3(-1129.5, -1143.3, 1.8), garage = vector4(-1143.7, -1168.1, 1.6, -161.6)}, --No visible parking --Checked
	[637] = {prop = 'trevor', price = 120000, door = vector3(-1128.8, -1163.0, 5.5), garage = vector4(-1143.8, -1167.7, 1.6, -160.0)}, --No visible parking --Checked
	[638] = {prop = 'kinda_nice', price = 70000, door = vector3(-1125.7, -1172.1, 1.4), garage = vector4(-1139.8, -1178.7, 1.4, -152.5)}, --No visible parking --Checked
	[639] = {prop = 'kinda_nice', price = 70000, door = vector3(-1124.2, -1164.2, 1.4), garage = vector4(-1139.8, -1178.7, 1.4, -152.5)}, --No visible parking --Checked
	[640] = {prop = 'kinda_nice', price = 70000, door = vector3(-1114.2, -1193.9, 1.4), garage = vector4(-1126.1, -1213.1, 1.5, 28.9)}, --No visible parking --Checked
	[641] = {prop = 'kinda_nice', price = 70000, door = vector3(-1111.0, -1194.3, 5.7), garage = vector4(-1126.1, -1213.1, 1.5, 28.9)}, --No visible parking --Checked
	[642] = {prop = 'kinda_nice', price = 70000, door = vector3(-1113.8, -1195.9, 5.7), garage = vector4(-1126.1, -1213.1, 1.5, 28.9)}, --No visible parking --Checked
	[643] = {prop = 'kinda_nice', price = 70000, door = vector3(-1100.1, -1210.8, 1.8), garage = vector4(-1121.0, -1224.1, 1.4, 30.0)}, --No visible parking --Checked
	[644] = {prop = 'kinda_nice', price = 70000, door = vector3(-1107.1, -1222.5, 1.6), garage = vector4(-1121.0, -1224.1, 1.4, 30.0)}, --No visible parking --Checked
	[645] = {prop = 'kinda_nice', price = 70000, door = vector3(-1103.9, -1222.7, 1.7), garage = vector4(-1115.8, -1232.4, 1.4, 30.0)}, --No visible parking --Checked
	[646] = {prop = 'kinda_nice', price = 70000, door = vector3(-1095.8, -1218.9, 1.7), garage = vector4(-1115.8, -1232.4, 1.4, 30.0)}, --No visible parking --Checked
	[647] = {prop = 'kinda_nice', price = 70000, door = vector3(-1100.1, -1232.2, 2.2), garage = vector4(-1110.5, -1240.5, 1.3, 29.3)}, --Checked
	[648] = {prop = 'kinda_nice', price = 70000, door = vector3(-1088.4, -1230.4, 1.9), garage = vector4(-1110.5, -1240.5, 1.3, 29.3)}, --Checked
	[649] = {prop = 'mansion2', price = 750000, door = vector3(-842.6, -25.1, 40.6), garage = vector4(-834.0, -36.9, 37.8, -44.8)},

	[650] = {prop = 'trailer', price = 50000, door = vector3(404.5, 2585.1, 42.5), garage = vector4(385.5, 2599.2, 42.5, 11.5)},
	[651] = {prop = 'trailer', price = 50000, door = vector3(382.9, 2576.4, 43.5), garage = vector4(378.9, 2597.1, 42.5, 11.5)},
	[652] = {prop = 'trailer', price = 50000, door = vector3(367.1, 2571.5, 43.5), garage = vector4(361.0, 2593.8, 42.5, 23.4)},
	[653] = {prop = 'trailer', price = 50000, door = vector3(348.8, 2566.2, 42.6), garage = vector4(339.2, 2583.8, 42.7, 27.9)},
	[654] = {prop = 'trailer', price = 50000, door = vector3(101.0, 3652.5, 39.4), garage = vector4(85.5, 3638.7, 38.7, 178.7)},
	[655] = {prop = 'trailer', price = 50000, door = vector3(97.8, 3681.9, 38.7), garage = vector4(100.0, 3700.0, 38.9, 145.0)},
	[656] = {prop = 'trailer', price = 50000, door = vector3(105.8, 3728.6, 39.5), garage = vector4(108.6, 3720.6, 38.6, 105.0)},
	[656] = {prop = 'trailer', price = 50000, door = vector3(78.0, 3732.5, 39.3), garage = vector4(89.2, 3731.3, 38.7, 115.9)},
	[657] = {prop = 'trailer', price = 50000, door = vector3(84.8, 3718.0, 39.3), garage = vector4(94.3, 3709.0, 38.6, 149.1)},
	[658] = {prop = 'trailer', price = 50000, door = vector3(76.1, 3757.4, 38.8), garage = vector4(82.0, 3745.6, 38.5, 162.1)},
	[659] = {prop = 'trailer', price = 50000, door = vector3(52.1, 3742.2, 39.3), garage = vector4(51.0, 3736.5, 38.6, 110.3)},
	[660] = {prop = 'trailer', price = 50000, door = vector3(31.1, 3736.1, 39.6), garage = vector4(29.6, 3728.7, 38.5, 141.7)},
	[661] = {prop = 'trailer', price = 50000, door = vector3(9.9, 3697.9, 38.6), garage = vector4(19.9, 3706.8, 38.9, 81.9)},
	[662] = {prop = 'trailer', price = 50000, door = vector3(15.3, 3689.1, 39.2), garage = vector4(24.6, 3684.4, 38.6, 66.2)},
	[663] = {prop = 'trailer', price = 50000, door = vector3(41.4, 3705.1, 39.7), garage = vector4(35.2, 3713.4, 38.6, 67.7)},
	[664] = {prop = 'trailer', price = 50000, door = vector3(68.3, 3693.1, 39.6), garage = vector4(77.0, 3680.5, 38.7, 171.0)},

	[665] = {prop = 'trevor', price = 120000, door = vector3(442.1, -1569.8, 31.9), garage = vector4(420.8, -1558.5, 28.2, 141.3)},
	[666] = {prop = 'trevor', price = 120000, door = vector3(436.0, -1564.6, 31.9), garage = vector4(421.2, -1559.6, 28.2, 139.9)},
	[667] = {prop = 'trevor', price = 120000, door = vector3(430.0, -1559.5, 31.8), garage = vector4(421.2, -1558.8, 28.2, 139.4)},
	[668] = {prop = 'trevor', price = 120000, door = vector3(466.9, -1590.4, 31.8), garage = vector4(472.8, -1579.7, 28.1, 132.4)},
	[669] = {prop = 'trevor', price = 120000, door = vector3(460.8, -1585.3, 31.8), garage = vector4(473.5, -1579.7, 28.1, 132.4)},
	[670] = {prop = 'trevor', price = 120000, door = vector3(454.7, -1580.3, 31.9), garage = vector4(474.4, -1576.4, 28.1, 132.7)},
	[671] = {prop = 'trevor', price = 120000, door = vector3(460.5, -1573.2, 31.9), garage = vector4(474.9, -1576.0, 28.1, 132.4)},
	[672] = {prop = 'trevor', price = 120000, door = vector3(465.5, -1567.1, 31.9), garage = vector4(476.8, -1573.1, 28.1, 133.0)},
	[673] = {prop = 'trevor', price = 120000, door = vector3(470.5, -1561.2, 31.9), garage = vector4(476.6, -1574.1, 28.1, 132.4)},

	[674] = {prop = 'kinda_nice', price = 70000, door = vector3(970.9, -199.6, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[675] = {prop = 'kinda_nice', price = 70000, door = vector3(967.1, -205.0, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[676] = {prop = 'kinda_nice', price = 70000, door = vector3(952.0, -210.6, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[677] = {prop = 'kinda_nice', price = 70000, door = vector3(948.7, -208.9, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[678] = {prop = 'kinda_nice', price = 70000, door = vector3(947.5, -205.7, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[679] = {prop = 'kinda_nice', price = 70000, door = vector3(950.2, -201.1, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[680] = {prop = 'kinda_nice', price = 70000, door = vector3(952.9, -196.4, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[681] = {prop = 'kinda_nice', price = 70000, door = vector3(961.4, -193.9, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[682] = {prop = 'kinda_nice', price = 70000, door = vector3(971.0, -199.6, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[683] = {prop = 'kinda_nice', price = 70000, door = vector3(967.6, -205.2, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[684] = {prop = 'kinda_nice', price = 70000, door = vector3(964.7, -209.8, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[685] = {prop = 'kinda_nice', price = 70000, door = vector3(961.9, -214.4, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[686] = {prop = 'kinda_nice', price = 70000, door = vector3(957.5, -214.5, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[687] = {prop = 'kinda_nice', price = 70000, door = vector3(951.5, -211.0, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[688] = {prop = 'kinda_nice', price = 70000, door = vector3(948.7, -209.1, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[689] = {prop = 'kinda_nice', price = 70000, door = vector3(947.4, -205.7, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[690] = {prop = 'kinda_nice', price = 70000, door = vector3(950.1, -201.1, 75.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[691] = {prop = 'kinda_nice', price = 70000, door = vector3(962.6, -208.7, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[692] = {prop = 'kinda_nice', price = 70000, door = vector3(971.1, -199.6, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[693] = {prop = 'kinda_nice', price = 70000, door = vector3(967.7, -205.3, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[694] = {prop = 'kinda_nice', price = 70000, door = vector3(964.7, -209.9, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[695] = {prop = 'kinda_nice', price = 70000, door = vector3(962.0, -214.4, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[696] = {prop = 'kinda_nice', price = 70000, door = vector3(957.5, -214.4, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[697] = {prop = 'kinda_nice', price = 70000, door = vector3(951.7, -210.9, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[698] = {prop = 'kinda_nice', price = 70000, door = vector3(948.8, -209.1, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[699] = {prop = 'kinda_nice', price = 70000, door = vector3(947.3, -205.3, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[700] = {prop = 'kinda_nice', price = 70000, door = vector3(950.3, -201.1, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[701] = {prop = 'kinda_nice', price = 70000, door = vector3(960.2, -212.8, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[702] = {prop = 'kinda_nice', price = 70000, door = vector3(956.3, -211.1, 72.2), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[703] = {prop = 'kinda_nice', price = 70000, door = vector3(952.9, -196.4, 78.3), garage = vector4(965.2, -196.0, 72.2, 32.4)},

	[704] = {prop = 'nice', price = 160000, door = vector3(213.3, -154.7, 58.2), garage = vector4(221.7, -167.9, 55.5, 113.0)},
	[705] = {prop = 'nice', price = 160000, door = vector3(216.2, -147.2, 58.2), garage = vector4(221.7, -167.9, 55.5, 113.0)},
	[706] = {prop = 'nice', price = 160000, door = vector3(239.9, -122.1, 69.1), garage = vector4(251.5, -85.4, 69.0, 20.1)},
	[707] = {prop = 'nice', price = 160000, door = vector3(234.4, -108.1, 73.4), garage = vector4(251.5, -85.4, 69.0, 20.1)},
	[708] = {prop = 'nice', price = 160000, door = vector3(234.4, -108.1, 77.4), garage = vector4(251.5, -85.4, 69.0, 20.1)},
	[709] = {prop = 'nice', price = 160000, door = vector3(204.0, -98.6, 68.4), garage = vector4(221.3, -76.0, 68.4, 21.1)},
	[710] = {prop = 'nice', price = 160000, door = vector3(204.0, -98.6, 72.3), garage = vector4(221.3, -76.0, 68.4, 21.1)},
	[711] = {prop = 'nice', price = 160000, door = vector3(211.4, -101.2, 72.3), garage = vector4(221.3, -76.0, 68.4, 21.1)},
	[712] = {prop = 'nice', price = 160000, door = vector3(201.9, -148.8, 60.7), garage = vector4(185.5, -152.3, 55.7, 68.2)},
	[713] = {prop = 'nice', price = 160000, door = vector3(201.9, -148.8, 64.5), garage = vector4(185.5, -152.3, 55.7, 68.2)},
	[714] = {prop = 'nice', price = 160000, door = vector3(204.6, -141.3, 64.5), garage = vector4(185.5, -152.3, 55.7, 68.2)},
	[715] = {prop = 'nice', price = 160000, door = vector3(156.2, -116.9, 61.6), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[716] = {prop = 'nice', price = 160000, door = vector3(147.6, -103.3, 61.7), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[717] = {prop = 'nice', price = 160000, door = vector3(144.2, -113.4, 61.7), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[718] = {prop = 'nice', price = 160000, door = vector3(176.3, -82.4, 71.8), garage = vector4(175.6, -67.4, 67.5, 17.4)},
	[719] = {prop = 'nice', price = 160000, door = vector3(176.3, -82.4, 75.8), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[720] = {prop = 'nice', price = 160000, door = vector3(161.4, -79.2, 67.7), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[721] = {prop = 'nice', price = 160000, door = vector3(159.9, -83.0, 67.7), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[722] = {prop = 'nice', price = 160000, door = vector3(151.6, -72.9, 66.7), garage = vector4(166.9, -114.3, 61.2, 110.6)},
	[723] = {prop = 'nice', price = 160000, door = vector3(151.6, -72.9, 66.7), garage = vector4(128.2, -57.8, 57.8, 67.3)},
	[724] = {prop = 'nice', price = 160000, door = vector3(151.6, -72.9, 74.9), garage = vector4(128.2, -57.8, 57.8, 67.3)},
	[725] = {prop = 'nice', price = 160000, door = vector3(151.6, -72.9, 70.9), garage = vector4(128.2, -57.8, 57.8, 67.3)},
	[726] = {prop = 'nice', price = 160000, door = vector3(144.2, -82.6, 63.5), garage = vector4(120.6, -80.5, 63.4, 68.0)},
	[727] = {prop = 'nice', price = 160000, door = vector3(144.2, -82.6, 67.5), garage = vector4(120.6, -80.5, 63.4, 68.0)},
	[728] = {prop = 'nice', price = 160000, door = vector3(141.3, -90.1, 67.5), garage = vector4(120.6, -80.5, 63.4, 68.0)},
	[729] = {prop = 'nice', price = 160000, door = vector3(141.3, -90.1, 71.5), garage = vector4(120.6, -80.5, 63.4, 68.0)},
	[730] = {prop = 'nice', price = 160000, door = vector3(144.2, -82.6, 71.5), garage = vector4(120.6, -80.5, 63.4, 68.0)},
	[731] = {prop = 'nice', price = 160000, door = vector3(67.4, -103.6, 57.6), garage = vector4(77.1, -102.8, 57.4, 107.9)},
	[732] = {prop = 'nice', price = 160000, door = vector3(59.4, -98.7, 57.6), garage = vector4(77.1, -102.8, 57.4, 107.9)},
	[733] = {prop = 'nice', price = 160000, door = vector3(62.0, -91.1, 57.6), garage = vector4(77.1, -102.8, 57.4, 107.9)},
	[734] = {prop = 'nice', price = 160000, door = vector3(76.1, -86.6, 62.0), garage = vector4(87.1, -82.0, 61.2, 112.0)},
	[735] = {prop = 'nice', price = 160000, door = vector3(65.2, -80.6, 61.9), garage = vector4(87.1, -82.0, 61.2, 112.0)},
	[736] = {prop = 'nice', price = 160000, door = vector3(65.2, -80.6, 65.7), garage = vector4(87.1, -82.0, 61.2, 112.0)},
	[737] = {prop = 'nice', price = 160000, door = vector3(67.7, -73.6, 65.7), garage = vector4(87.1, -82.0, 61.2, 112.0)},
	[738] = {prop = 'nice', price = 160000, door = vector3(79.4, -58.2, 67.1), garage = vector4(88.1, -32.9, 67.0, 19.5)},
	[739] = {prop = 'kinda_nice', price = 70000, door = vector3(75.8, -62.4, 67.1), garage = vector4(88.1, -32.9, 67.0, 19.5)},
	[740] = {prop = 'kinda_nice', price = 70000, door = vector3(75.8, -62.4, 71.1), garage = vector4(88.1, -32.9, 67.0, 19.5)},
	[741] = {prop = 'kinda_nice', price = 70000, door = vector3(75.8, -62.4, 75.9), garage = vector4(88.1, -32.9, 67.0, 19.5)},
	[742] = {prop = 'nice', price = 160000, door = vector3(79.4, -58.2, 71.1), garage = vector4(88.1, -32.9, 67.0, 19.5)},
	[743] = {prop = 'nice', price = 160000, door = vector3(79.4, -58.2, 75.1), garage = vector4(88.1, -32.9, 67.0, 19.5)},
	[744] = {prop = 'trevor', price = 350000, door = vector3(952.9, -252.5, 67.0), garage = vector4(947.2, -252.4, 66.6, 147.3)},
	[745] = {prop = 'nice', price = 160000, door = vector3(69.4, -56.6, 68.2), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[746] = {prop = 'nice', price = 160000, door = vector3(61.9, -53.9, 72.0), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[747] = {prop = 'nice', price = 160000, door = vector3(69.4, -56.6, 72.0), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[748] = {prop = 'nice', price = 160000, door = vector3(69.4, -56.6, 76.0), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[749] = {prop = 'nice', price = 160000, door = vector3(61.9, -53.9, 76.0), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[750] = {prop = 'nice', price = 160000, door = vector3(45.3, -30.1, 68.4), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[751] = {prop = 'nice', price = 160000, door = vector3(47.3, -29.1, 72.7), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[752] = {prop = 'nice', price = 160000, door = vector3(46.9, -31.2, 72.7), garage = vector4(48.1, -52.2, 68.0, 70.4)},
	[753] = {prop = 'kinda_nice', price = 70000, door = vector3(43.7, -37.4, 72.7), garage = vector4(965.2, -196.0, 72.2, 32.4)},
	[754] = {prop = 'nice', price = 160000, door = vector3(51.1, -74.0, 62.9), garage = vector4(31.5, -64.8, 62.2, 67.3)},
	[755] = {prop = 'nice', price = 160000, door = vector3(51.1, -74.0, 66.6), garage = vector4(31.5, -64.8, 62.2, 67.3)},
	[756] = {prop = 'nice', price = 160000, door = vector3(53.8, -66.6, 66.7), garage = vector4(31.5, -64.8, 62.2, 67.3)},
	[757] = {prop = 'nice', price = 160000, door = vector3(38.6, -71.7, 62.9), garage = vector4(31.5, -64.8, 62.2, 67.3)},
	[758] = {prop = 'nice', price = 160000, door = vector3(47.6, -84.3, 61.0), garage = vector4(27.8, -79.1, 60.1, 69.1)},
	[759] = {prop = 'nice', price = 160000, door = vector3(44.9, -91.7, 64.8), garage = vector4(27.8, -79.1, 60.1, 69.1)},
	[760] = {prop = 'nice', price = 160000, door = vector3(47.6, -84.2, 64.8), garage = vector4(27.8, -79.1, 60.1, 69.1)},
	[761] = {prop = 'nice', price = 160000, door = vector3(47.6, -84.2, 68.8), garage = vector4(27.8, -79.1, 60.1, 69.1)},
	[762] = {prop = 'nice', price = 160000, door = vector3(44.9, -91.8, 68.8), garage = vector4(27.8, -79.1, 60.1, 69.1)},

	[763] = {prop = 'mansion3', price = 2000000, door = vector3(-2587.7, 1910.9, 166.5), garage = vector4(-2579.9, 1929.6, 166.4, -110.2)},
	[764] = {prop = 'mansion', price = 1000000, door = vector3(-2797.8, 1431.7, 99.9), garage = vector4(-2772.6, 1434.4, 100.0, -47.7)},
	[765] = {prop = 'trevor', price = 500000, door = vector3(-3190.9, 1297.7, 18.1), garage = vector4(-3172.7, 1297.1, 13.5, 119.8)},
	[766] = {prop = 'trevor', price = 500000, door = vector3(-3198.4, 1274.6, 11.7), garage = vector4(-3178.7, 1275.9, 11.6, 107.0)},
	[767] = {prop = 'trevor', price = 500000, door = vector3(-3200.1, 1232.2, 9.2), garage = vector4(-3186.3, 1225.7, 9.1, 173.7)},
	[768] = {prop = 'trevor', price = 500000, door = vector3(-3193.7, 1208.6, 8.4), garage = vector4(-3189.0, 1199.5, 8.4, 170.8)},
	[769] = {prop = 'trevor', price = 500000, door = vector3(-3205.9, 1185.6, 8.7), garage = vector4(-3191.0, 1182.8, 8.4, 9.0)},
	[770] = {prop = 'nice', price = 350000, door = vector3(-3200.5, 1165.5, 8.7), garage = vector4(-3194.2, 1160.3, 8.5, 110.9)},
	[771] = {prop = 'nice', price = 350000, door = vector3(-3212.7, 1154.7, 11.2), garage = vector4(-3197.3, 1152.2, 8.6, 161.9)},
	[772] = {prop = 'nice', price = 350000, door = vector3(-3220.0, 1138.5, 8.9), garage = vector4(-3204.0, 1136.4, 8.9, 151.1)},
	[773] = {prop = 'nice', price = 350000, door = vector3(-3215.2, 1148.5, 8.9), garage = vector4(-3204.0, 1136.4, 8.9, 151.1)},
	[774] = {prop = 'nice', price = 350000, door = vector3(-3229.0, 1101.3, 9.6), garage = vector4(-3220.1, 1103.4, 9.5, 151.1)},
	[775] = {prop = 'nice', price = 350000, door = vector3(-3228.8, 1092.4, 9.6), garage = vector4(-3226.7, 1083.4, 9.7, 163.9)},
	[776] = {prop = 'nice', price = 350000, door = vector3(-3233.2, 1068.2, 10.1), garage = vector4(-3229.0, 1070.3, 10.0, 169.8)},
	[777] = {prop = 'trevor', price = 500000, door = vector3(-3254.7, 1063.6, 10.2), garage = vector4(-3232.3, 1052.0, 10.3, 171.4)},
	[778] = {prop = 'trevor', price = 500000, door = vector3(-3251.4, 1027.3, 10.8), garage = vector4(-3234.6, 1032.6, 10.7, 99.3)},
	[779] = {prop = 'nice', price = 350000, door = vector3(-3238.3, 952.5, 12.2), garage = vector4(-3233.6, 949.4, 12.3, 170.8)},
	[780] = {prop = 'nice', price = 350000, door = vector3(-3243.3, 932.2, 16.2), garage = vector4(-3228.5, 939.0, 12.6, 68.8)},
	[781] = {prop = 'nice', price = 350000, door = vector3(-3229.1, 927.3, 13.0), garage = vector4(-3215.9, 939.4, 12.6, 19.0)},
	[782] = {prop = 'nice', price = 350000, door = vector3(-3225.0, 911.0, 13.0), garage = vector4(-3213.9, 913.7, 13.0, 126.0)},
	[783] = {prop = 'nice', price = 350000, door = vector3(-3109.0, 751.9, 23.7), garage = vector4(-3098.6, 742.8, 20.1, 140.4)},
	[784] = {prop = 'trevor', price = 500000, door = vector3(-3107.7, 718.8, 19.7), garage = vector4(-3102.5, 718.5, 19.6, 168.7)},
	[785] = {prop = 'nice', price = 350000, door = vector3(-3078.1, 658.7, 10.6), garage = vector4(-3069.7, 662.0, 10.0, 55.9)},
	[786] = {prop = 'nice', price = 350000, door = vector3(-3030.1, 568.6, 6.8), garage = vector4(-3027.3, 571.0, 6.6, 173.7)},
	[787] = {prop = 'nice', price = 350000, door = vector3(-3037.3, 559.1, 6.5), garage = vector4(-3027.8, 556.4, 6.5, 84.4)},
	[788] = {prop = 'nice', price = 350000, door = vector3(-3044.5, 544.5, 9.0), garage = vector4(-3028.6, 549.1, 6.5, 88.1)},
	[789] = {prop = 'trevor', price = 500000, door = vector3(-3043.1, 524.1, 6.4), garage = vector4(-3028.4, 521.9, 6.3, 176.2)},
	[790] = {prop = 'trevor', price = 500000, door = vector3(-3039.7, 492.9, 5.8), garage = vector4(-3031.3, 495.3, 5.8, 166.3)},
	[791] = {prop = 'nice', price = 350000, door = vector3(-3053.2, 486.4, 6.1), garage = vector4(-3037.4, 475.3, 5.7, 109.8)},
	[792] = {prop = 'nice', price = 350000, door = vector3(-3071.2, 442.8, 5.4), garage = vector4(-3051.3, 441.7, 5.3, 117.8)},
	[793] = {prop = 'trevor', price = 500000, door = vector3(-3088.9, 392.3, 10.5), garage = vector4(-3070.2, 394.3, 6.2, 105.4)},
	[794] = {prop = 'nice', price = 350000, door = vector3(-3091.7, 379.3, 6.1), garage = vector4(-3079.6, 367.7, 6.1, 160.3)},
	[795] = {prop = 'trevor', price = 500000, door = vector3(-3093.7, 349.2, 6.5), garage = vector4(-3086.1, 339.8, 6.4, 106.9)},
	[796] = {prop = 'trevor', price = 500000, door = vector3(-3110.7, 335.0, 6.5), garage = vector4(-3090.8, 321.8, 6.5, 162.7)},
	[797] = {prop = 'nice', price = 350000, door = vector3(-3111.9, 315.0, 7.4), garage = vector4(-3093.6, 307.3, 7.1, 104.6)},
	[798] = {prop = 'nice', price = 350000, door = vector3(-3115.9, 293.9, 8.0), garage = vector4(-3100.1, 281.0, 8.3, 99.6)},
	[799] = {prop = 'nice', price = 350000, door = vector3(-3131.9, 246.6, 11.5), garage = vector4(-3100.7, 249.3, 11.1, 157.2)},
	[800] = {prop = 'nice', price = 350000, door = vector3(-3089.5, 221.0, 13.2), garage = vector4(-3081.1, 224.6, 13.0, 35.4)},
	[801] = {prop = 'mansion', price = 750000, door = vector3(-2972.2, 599.1, 23.2), garage = vector4(-2983.0, 612.1, 19.1, 101.7)},
	[802] = {prop = 'mansion3', price = 625000, door = vector3(-2972.4, 642.6, 25.0), garage = vector4(-2986.7, 653.8, 22.8, 103.4)},
	[803] = {prop = 'mansion3', price = 625000, door = vector3(-2994.5, 682.6, 24.0), garage = vector4(-3004.2, 686.7, 22.5, 109.9)},
	[804] = {prop = 'mansion3', price = 625000, door = vector3(-2992.9, 707.6, 27.6), garage = vector4(-3000.1, 702.6, 26.5, 111.1)},
	[805] = {prop = 'mansion3', price = 625000, door = vector3(-3017.1, 746.7, 26.8), garage = vector4(-3023.2, 738.9, 25.7, 94.3)},

	[806] = {prop = 'trevor', price = 525000, door = vector3(-1977.6, -509.4, 10.9), garage = vector4(-1965.3, -501.6, 10.8, 13.0)},
	[807] = {prop = 'trevor', price = 525000, door = vector3(-1969.6, -516.6, 10.8), garage = vector4(-1958.4, -507.1, 10.8, 132.0)},
	[809] = {prop = 'trevor', price = 525000, door = vector3(-1964.1, -520.8, 11.2), garage = vector4(-1952.6, -513.3, 10.9, 40.0)},
	[810] = {prop = 'trevor', price = 525000, door = vector3(-1948.2, -531.4, 11.1), garage = vector4(-1942.7, -520.0, 10.9, 131.6)},
	[811] = {prop = 'trevor', price = 525000, door = vector3(-1947.2, -543.8, 11.0), garage = vector4(-1937.0, -527.4, 10.9, 40.2)},
	[812] = {prop = 'trevor', price = 525000, door = vector3(-1945.5, -544.9, 11.0), garage = vector4(-1930.7, -532.5, 10.9, 40.3)},
	[813] = {prop = 'trevor', price = 525000, door = vector3(-1928.1, -551.3, 10.8), garage = vector4(-1920.0, -538.5, 10.8, 129.6)},
	[814] = {prop = 'nice', price = 350000, door = vector3(-1918.8, -542.8, 10.8), garage = vector4(-1912.9, -544.2, 10.8, 130.4)},
	[815] = {prop = 'trevor', price = 525000, door = vector3(-1919.9, -569.7, 13.7), garage = vector4(-1905.1, -551.0, 10.8, 128.1)},
	[816] = {prop = 'trevor', price = 525000, door = vector3(-1913.4, -574.1, 10.4), garage = vector4(-1897.8, -558.2, 10.7, 40.8)},
	[817] = {prop = 'trevor', price = 525000, door = vector3(-1901.5, -585.8, 10.9), garage = vector4(-1886.5, -568.2, 10.7, 39.9)},
	[818] = {prop = 'trevor', price = 525000, door = vector3(-1883.5, -579.1, 10.9), garage = vector4(-1877.5, -575.6, 10.6, 40.2)},
	[819] = {prop = 'trevor', price = 525000, door = vector3(-1875.0, -592.9, 11.0), garage = vector4(-1869.7, -581.2, 10.6, 39.8)},
	[820] = {prop = 'trevor', price = 525000, door = vector3(-1872.8, -603.4, 10.9), garage = vector4(-1862.9, -587.4, 10.6, 38.4)},
	[821] = {prop = 'trevor', price = 525000, door = vector3(-1838.9, -629.3, 10.3), garage = vector4(-1831.0, -612.5, 10.3, 40.5)},
	[822] = {prop = 'trevor', price = 525000, door = vector3(-1836.2, -631.9, 10.0), garage = vector4(-1824.0, -621.9, 10.1, 43.6)},
	[823] = {prop = 'nice', price = 350000, door = vector3(-1833.8, -642.0, 10.6), garage = vector4(-1815.2, -625.5, 10.0, 132.6)},
	[824] = {prop = 'trevor', price = 525000, door = vector3(-1820.1, -649.7, 10.0), garage = vector4(-1810.1, -634.1, 10.0, 41.2)},
	[825] = {prop = 'trevor', price = 525000, door = vector3(-1814.3, -656.5, 10.0), garage = vector4(-1804.1, -639.7, 10.0, 44.4)},
	[826] = {prop = 'trevor', price = 525000, door = vector3(-1813.6, -663.8, 10.0), garage = vector4(-1795.1, -644.4, 9.9, 135.0)},
	[826] = {prop = 'trevor', price = 525000, door = vector3(-1793.3, -663.7, 9.6), garage = vector4(-1783.7, -656.9, 9.4, 46.1)},
	[827] = {prop = 'trevor', price = 525000, door = vector3(-1787.9, -671.9, 9.7), garage = vector4(-1776.0, -664.6, 9.4, 47.0)},
	[828] = {prop = 'trevor', price = 525000, door = vector3(-1771.1, -677.6, 9.4), garage = vector4(-1764.6, -675.6, 9.2, 43.2)},
	[829] = {prop = 'trevor', price = 525000, door = vector3(-1776.9, -701.4, 9.5), garage = vector4(-1757.6, -684.2, 9.1, 44.2)},
	[830] = {prop = 'trevor', price = 525000, door = vector3(-1754.2, -701.0, 9.3), garage = vector4(-1750.7, -691.3, 9.1, 44.3)},
	[831] = {prop = 'trevor', price = 525000, door = vector3(-1754.1, -709.0, 9.4), garage = vector4(-1750.7, -691.3, 9.1, 44.3)},
	[832] = {prop = 'trevor', price = 525000, door = vector3(-1753.0, -723.9, 9.4), garage = vector4(-1741.2, -699.4, 9.1, 42.3)},

	[833] = {prop = 'nice', price = 175000, door = vector3(-1706.7, -453.3, 41.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[834] = {prop = 'nice', price = 175000, door = vector3(-1698.1, -460.3, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[835] = {prop = 'nice', price = 175000, door = vector3(-1693.0, -464.5, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[836] = {prop = 'nice', price = 175000, door = vector3(-1699.8, -474.9, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[837] = {prop = 'nice', price = 175000, door = vector3(-1704.4, -480.5, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[838] = {prop = 'nice', price = 175000, door = vector3(-1709.9, -481.1, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[839] = {prop = 'nice', price = 175000, door = vector3(-1713.0, -477.2, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[840] = {prop = 'nice', price = 175000, door = vector3(-1713.8, -470.4, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[841] = {prop = 'nice', price = 175000, door = vector3(-1714.5, -463.7, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[842] = {prop = 'kinda_nice', price = 100000, door = vector3(-1710.7, -451.0, 44.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[843] = {prop = 'kinda_nice', price = 100000, door = vector3(-1706.7, -453.2, 44.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[844] = {prop = 'kinda_nice', price = 100000, door = vector3(-1698.0, -460.3, 43.3), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[845] = {prop = 'kinda_nice', price = 100000, door = vector3(-1692.9, -464.4, 43.3), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[846] = {prop = 'kinda_nice', price = 100000, door = vector3(-1687.6, -468.8, 43.3), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[847] = {prop = 'kinda_nice', price = 100000, door = vector3(-1699.8, -475.0, 43.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[848] = {prop = 'kinda_nice', price = 100000, door = vector3(-1704.3, -480.6, 43.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[849] = {prop = 'kinda_nice', price = 100000, door = vector3(-1709.9, -481.2, 43.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[850] = {prop = 'kinda_nice', price = 100000, door = vector3(-1713.0, -477.3, 43.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[851] = {prop = 'kinda_nice', price = 100000, door = vector3(-1713.0, -470.4, 43.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[852] = {prop = 'kinda_nice', price = 100000, door = vector3(-1714.4, -463.6, 43.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[853] = {prop = 'kinda_nice', price = 100000, door = vector3(-1710.8, -450.9, 47.7), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[854] = {prop = 'kinda_nice', price = 100000, door = vector3(-1706.7, -453.2, 47.7), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[855] = {prop = 'kinda_nice', price = 100000, door = vector3(-1698.1, -460.2, 46.7), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[856] = {prop = 'kinda_nice', price = 100000, door = vector3(-1692.8, -464.5, 46.7), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[857] = {prop = 'kinda_nice', price = 100000, door = vector3(-1687.6, -468.8, 46.7), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[858] = {prop = 'nice', price = 175000, door = vector3(-1711.8, -492.7, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},
	[859] = {prop = 'nice', price = 175000, door = vector3(-1710.6, -493.6, 40.6), garage = vector4(-1714.9, -501.9, 37.1, 137.2)},

	[860] = {prop = 'nice', price = 170000, door = vector3(-6.6, -74.5, 60.9), garage = vector4(-3.3, -69.1, 60.2, 109.2)},
	[861] = {prop = 'nice', price = 170000, door = vector3(-17.9, -68.9, 60.8), garage = vector4(-3.3, -69.1, 60.2, 109.2)},
	[862] = {prop = 'nice', price = 170000, door = vector3(-15.7, -61.1, 60.8), garage = vector4(-3.3, -69.1, 60.2, 109.2)},
	[863] = {prop = 'nice', price = 170000, door = vector3(5.8, -9.5, 69.3), garage = vector4(14.2, -1.5, 69.5, 41.4)},
	[864] = {prop = 'nice', price = 170000, door = vector3(17.6, -14.0, 69.3), garage = vector4(14.2, -1.5, 69.5, 41.4)},
	[865] = {prop = 'nice', price = 170000, door = vector3(-13.9, -11.2, 70.4), garage = vector4(-38.1, -3.3, 70.3, 75.0)},
	[866] = {prop = 'kinda_nice', price = 100000, door = vector3(-9.6, -14.9, 70.4), garage = vector4(-38.1, -3.3, 70.3, 75.0)},
	[867] = {prop = 'kinda_nice', price = 100000, door = vector3(-9.6, -14.7, 74.4), garage = vector4(-38.1, -3.3, 70.3, 75.0)},
	[868] = {prop = 'nice', price = 170000, door = vector3(-13.9, -11.2, 74.4), garage = vector4(-38.1, -3.3, 70.3, 75.0)},
	[869] = {prop = 'nice', price = 170000, door = vector3(-13.9, -11.2, 78.4), garage = vector4(-38.1, -3.3, 70.3, 75.0)},
	[870] = {prop = 'kinda_nice', price = 100000, door = vector3(-9.6, -14.7, 78.4), garage = vector4(-38.1, -3.3, 70.3, 75.0)},
	[871] = {prop = 'nice', price = 170000, door = vector3(-22.4, -21.5, 68.0), garage = vector4(-39.4, -22.1, 67.9, 67.4)},
	[872] = {prop = 'nice', price = 170000, door = vector3(-21.8, -24.6, 72.3), garage = vector4(-39.4, -22.1, 67.9, 67.4)},
	[873] = {prop = 'nice', price = 170000, door = vector3(-23.7, -23.8, 72.3), garage = vector4(-39.4, -22.1, 67.9, 67.4)},
	[874] = {prop = 'nice', price = 170000, door = vector3(-40.6, -58.8, 63.0), garage = vector4(-44.0, -49.4, 62.2, 68.5)},
	[875] = {prop = 'nice', price = 170000, door = vector3(-28.2, -60.6, 62.9), garage = vector4(-44.0, -49.4, 62.2, 68.5)},
	[876] = {prop = 'nice', price = 170000, door = vector3(-25.7, -52.9, 66.6), garage = vector4(-44.0, -49.4, 62.2, 68.5)},
	[877] = {prop = 'nice', price = 170000, door = vector3(-28.0, -60.5, 66.6), garage = vector4(-44.0, -49.4, 62.2, 68.5)},
	[878] = {prop = 'nice', price = 170000, door = vector3(-102.5, -31.8, 65.4), garage = vector4(-131.4, -27.4, 57.1, 22.8)},
	[879] = {prop = 'nice', price = 170000, door = vector3(-102.5, -31.9, 69.5), garage = vector4(-131.4, -27.4, 57.1, 22.8)},
	[880] = {prop = 'kinda_nice', price = 100000, door = vector3(-116.2, -37.7, 61.2), garage = vector4(-131.4, -27.4, 57.1, 22.8)},
	[881] = {prop = 'nice', price = 170000, door = vector3(-102.6, -12.0, 65.5), garage = vector4(-78.8, -23.3, 65.2, -127.4)},
	[882] = {prop = 'kinda_nice', price = 100000, door = vector3(-107.1, -8.3, 65.5), garage = vector4(-78.8, -23.3, 65.2, -127.4)},
	[883] = {prop = 'kinda_nice', price = 100000, door = vector3(-107.1, -8.3, 69.5), garage = vector4(-78.8, -23.3, 65.2, -127.4)},
	[884] = {prop = 'nice', price = 170000, door = vector3(-102.6, -12.0, 69.5), garage = vector4(-78.8, -23.3, 65.2, -127.4)},
	[885] = {prop = 'kinda_nice', price = 100000, door = vector3(-106.9, -8.4, 73.5), garage = vector4(-78.8, -23.3, 65.2, -127.4)},
	[886] = {prop = 'nice', price = 170000, door = vector3(-103.0, -11.9, 73.5), garage = vector4(-78.8, -23.3, 65.2, -127.4)},
	[887] = {prop = 'nice', price = 170000, door = vector3(-102.1, 2.0, 69.6), garage = vector4(-72.4, -5.2, 68.8, -104.0)},
	[888] = {prop = 'nice', price = 170000, door = vector3(-99.5, 9.6, 73.4), garage = vector4(-72.4, -5.2, 68.8, -104.0)},
	[889] = {prop = 'nice', price = 170000, door = vector3(-102.3, 2.0, 73.4), garage = vector4(-72.4, -5.2, 68.8, -104.0)},
	[890] = {prop = 'nice', price = 170000, door = vector3(-99.5, 9.7, 77.4), garage = vector4(-72.4, -5.2, 68.8, -104.0)},
	[891] = {prop = 'nice', price = 170000, door = vector3(-102.2, 2.1, 77.4), garage = vector4(-72.4, -5.2, 68.8, -104.0)},
	[892] = {prop = 'nice', price = 170000, door = vector3(-161.6, -4.1, 61.5), garage = vector4(-139.7, -19.7, 57.0, -27.1)},
	[893] = {prop = 'nice', price = 170000, door = vector3(-161.3, -4.1, 65.5), garage = vector4(-139.7, -19.7, 57.0, -27.1)},
	[894] = {prop = 'kinda_nice', price = 100000, door = vector3(-175.4, -10.0, 57.2), garage = vector4(-139.7, -19.7, 57.0, -27.1)},
	[895] = {prop = 'kinda_nice', price = 100000, door = vector3(-191.5, -2.2, 51.4), garage = vector4(-221.4, -6.1, 51.5, 70.9)},
	[896] = {prop = 'nice', price = 170000, door = vector3(-205.5, -7.8, 55.6), garage = vector4(-222.2, 6.7, 51.5, 69.8)},
	[897] = {prop = 'nice', price = 170000, door = vector3(-205.7, -7.8, 59.6), garage = vector4(-222.6, 6.7, 51.5, 69.8)},

	[898] = {prop = 'nice', price = 170000, door = vector3(-264.1, 98.8, 63.3), garage = vector4(-269.6, 113.8, 67.7, 0.6)},
	[899] = {prop = 'nice', price = 170000, door = vector3(-264.2, 92.1, 63.3), garage = vector4(-269.6, 113.8, 67.7, 0.6)},
	[900] = {prop = 'nice', price = 170000, door = vector3(-264.2, 98.9, 72.6), garage = vector4(-269.6, 113.8, 67.7, 0.6)},
	[901] = {prop = 'nice', price = 170000, door = vector3(-264.2, 91.9, 72.6), garage = vector4(-269.6, 113.8, 67.7, 0.6)},
	[902] = {prop = 'nice', price = 170000, door = vector3(-264.2, 98.9, 76.6), garage = vector4(-269.6, 113.8, 67.7, 0.6)},
	[903] = {prop = 'nice', price = 170000, door = vector3(-264.2, 92.0, 76.6), garage = vector4(-269.6, 113.8, 67.7, 0.6)},
	[904] = {prop = 'nice', price = 170000, door = vector3(-302.8, 85.2, 67.6), garage = vector4(-301.5, 112.2, 66.9, 1.0)},
	[905] = {prop = 'kinda_nice', price = 100000, door = vector3(-304.6, 80.1, 67.6), garage = vector4(-301.5, 112.2, 66.9, 1.0)},
	[906] = {prop = 'kinda_nice', price = 100000, door = vector3(-304.6, 80.0, 71.7), garage = vector4(-301.5, 112.2, 66.9, 1.0)},
	[907] = {prop = 'nice', price = 170000, door = vector3(-302.6, 85.3, 71.7), garage = vector4(-301.5, 112.2, 66.9, 1.0)},
	[908] = {prop = 'kinda_nice', price = 100000, door = vector3(-302.6, 85.3, 71.7), garage = vector4(-304.6, 80.0, 75.7, 1.0)},
	[909] = {prop = 'nice', price = 170000, door = vector3(-302.7, 85.2, 75.7), garage = vector4(-304.6, 80.0, 75.7, 1.0)},
	[910] = {prop = 'nice', price = 170000, door = vector3(-313.8, 84.4, 66.8), garage = vector4(-319.7, 112.9, 66.4, 0.5)},
	[911] = {prop = 'nice', price = 170000, door = vector3(-321.8, 84.3, 70.7), garage = vector4(-319.7, 112.9, 66.4, 0.5)},
	[912] = {prop = 'nice', price = 170000, door = vector3(-313.7, 84.4, 70.7), garage = vector4(-319.7, 112.9, 66.4, 0.5)},
	[913] = {prop = 'nice', price = 170000, door = vector3(-321.7, 84.4, 74.8), garage = vector4(-319.7, 112.9, 66.4, 0.5)},
	[914] = {prop = 'nice', price = 170000, door = vector3(-313.8, 84.5, 74.8), garage = vector4(-319.7, 112.9, 66.4, 0.5)},
	[915] = {prop = 'nice', price = 170000, door = vector3(-356.5, 94.8, 65.2), garage = vector4(-367.0, 113.6, 65.1, 0.4)},
	[916] = {prop = 'kinda_nice', price = 100000, door = vector3(-357.7, 102.4, 69.5), garage = vector4(-367.0, 113.6, 65.1, 0.4)},
	[917] = {prop = 'nice', price = 170000, door = vector3(-358.5, 95.4, 69.5), garage = vector4(-367.0, 113.6, 65.1, 0.4)},
	[918] = {prop = 'nice', price = 170000, door = vector3(-358.5, 91.3, 69.5), garage = vector4(-367.0, 113.6, 65.1, 0.4)},
	[919] = {prop = 'kinda_nice', price = 100000, door = vector3(-412.1, 152.8, 64.5), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[920] = {prop = 'kinda_nice', price = 100000, door = vector3(-410.9, 159.7, 64.5), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[921] = {prop = 'kinda_nice', price = 100000, door = vector3(-410.9, 159.7, 68.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[922] = {prop = 'kinda_nice', price = 100000, door = vector3(-412.1, 152.8, 68.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[923] = {prop = 'kinda_nice', price = 100000, door = vector3(-410.9, 159.7, 72.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[924] = {prop = 'kinda_nice', price = 100000, door = vector3(-412.1, 152.8, 72.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[925] = {prop = 'kinda_nice', price = 100000, door = vector3(-410.9, 159.7, 76.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[926] = {prop = 'kinda_nice', price = 100000, door = vector3(-412.1, 152.8, 76.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[927] = {prop = 'kinda_nice', price = 100000, door = vector3(-410.9, 159.7, 80.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[928] = {prop = 'kinda_nice', price = 100000, door = vector3(-412.1, 152.8, 80.7), garage = vector4(-419.5, 140.0, 64.1, 177.3)},
	[929] = {prop = 'kinda_nice', price = 100000, door = vector3(-383.7, 152.8, 64.5), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[930] = {prop = 'kinda_nice', price = 100000, door = vector3(-384.8, 159.5, 64.5), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[931] = {prop = 'kinda_nice', price = 100000, door = vector3(-384.8, 159.5, 68.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[932] = {prop = 'kinda_nice', price = 100000, door = vector3(-383.7, 152.8, 68.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[933] = {prop = 'kinda_nice', price = 100000, door = vector3(-384.8, 159.5, 72.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[934] = {prop = 'kinda_nice', price = 100000, door = vector3(-383.7, 152.8, 72.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[935] = {prop = 'kinda_nice', price = 100000, door = vector3(-384.8, 159.5, 76.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[936] = {prop = 'kinda_nice', price = 100000, door = vector3(-383.7, 152.8, 76.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[937] = {prop = 'kinda_nice', price = 100000, door = vector3(-384.8, 159.5, 80.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},
	[938] = {prop = 'kinda_nice', price = 100000, door = vector3(-383.7, 152.8, 80.7), garage = vector4(-379.7, 140.7, 64.8, 170.5)},

	[939] = {prop = 'trevor', price = 45000, door = vector3(-552.0, -912.6, 23.3), garage = vector4(-555.1, -925.1, 22.9, -89.7)},   -- Teddy Wrinkle trailer weazel News

}

config.houseSpawns = {
	{['taken'] = false, ['coords'] = vector3(1020.0, 2000.0, -100.0)}, -- spawn #1
	{['taken'] = false, ['coords'] = vector3(1080.0, 2000.0, -100.0)}, -- spawn #2
	{['taken'] = false, ['coords'] = vector3(1140.0, 2000.0, -100.0)}, -- spawn #3
	{['taken'] = false, ['coords'] = vector3(1200.0, 2000.0, -100.0)}, -- spawn #4
	{['taken'] = false, ['coords'] = vector3(1260.0, 2000.0, -100.0)}, -- spawn #5
	{['taken'] = false, ['coords'] = vector3(1320.0, 2000.0, -100.0)}, -- spawn #6
	{['taken'] = false, ['coords'] = vector3(1380.0, 2000.0, -100.0)}, -- spawn #7
	{['taken'] = false, ['coords'] = vector3(1440.0, 2000.0, -100.0)}, -- spawn #8
	{['taken'] = false, ['coords'] = vector3(1500.0, 2000.0, -100.0)}, -- spawn #9
	{['taken'] = false, ['coords'] = vector3(1560.0, 2000.0, -100.0)}, -- spawn #10
	{['taken'] = false, ['coords'] = vector3(1620.0, 2000.0, -100.0)}, -- spawn #11
	{['taken'] = false, ['coords'] = vector3(1680.0, 2000.0, -100.0)}, -- spawn #12
	{['taken'] = false, ['coords'] = vector3(1740.0, 2000.0, -100.0)}, -- spawn #13
	{['taken'] = false, ['coords'] = vector3(1800.0, 2000.0, -100.0)}, -- spawn #14
	{['taken'] = false, ['coords'] = vector3(1860.0, 2000.0, -100.0)}, -- spawn #15
	{['taken'] = false, ['coords'] = vector3(1920.0, 2000.0, -100.0)}, -- spawn #16
	{['taken'] = false, ['coords'] = vector3(1980.0, 2000.0, -100.0)}, -- spawn #17
	{['taken'] = false, ['coords'] = vector3(2040.0, 2000.0, -100.0)}, -- spawn #18
	{['taken'] = false, ['coords'] = vector3(2100.0, 2000.0, -100.0)}, -- spawn #19
	{['taken'] = false, ['coords'] = vector3(2160.0, 2000.0, -100.0)}, -- spawn #20
	{['taken'] = false, ['coords'] = vector3(2220.0, 2000.0, -100.0)}, -- spawn #21
	{['taken'] = false, ['coords'] = vector3(2280.0, 2000.0, -100.0)}, -- spawn #22
	{['taken'] = false, ['coords'] = vector3(2340.0, 2000.0, -100.0)}, -- spawn #23
	{['taken'] = false, ['coords'] = vector3(2400.0, 2000.0, -100.0)}, -- spawn #24
	{['taken'] = false, ['coords'] = vector3(2460.0, 2000.0, -100.0)}, -- spawn #25
	{['taken'] = false, ['coords'] = vector3(2520.0, 2000.0, -100.0)}, -- spawn #26
	{['taken'] = false, ['coords'] = vector3(2580.0, 2000.0, -100.0)}, -- spawn #27
	{['taken'] = false, ['coords'] = vector3(2640.0, 2000.0, -100.0)}, -- spawn #28
	{['taken'] = false, ['coords'] = vector3(2700.0, 2000.0, -100.0)}, -- spawn #29
	{['taken'] = false, ['coords'] = vector3(2760.0, 2000.0, -100.0)}, -- spawn #30
	{['taken'] = false, ['coords'] = vector3(2820.0, 2000.0, -100.0)}, -- spawn #31
	{['taken'] = false, ['coords'] = vector3(2880.0, 2000.0, -100.0)}, -- spawn #32
	{['taken'] = false, ['coords'] = vector3(2940.0, 2000.0, -100.0)}, -- spawn #33

	{['taken'] = false, ['coords'] = vector3(1020.0, 2100.0, -100.0)}, -- spawn #34
	{['taken'] = false, ['coords'] = vector3(1080.0, 2100.0, -100.0)}, -- spawn #35
	{['taken'] = false, ['coords'] = vector3(1140.0, 2100.0, -100.0)}, -- spawn #36
	{['taken'] = false, ['coords'] = vector3(1200.0, 2100.0, -100.0)}, -- spawn #37
	{['taken'] = false, ['coords'] = vector3(1260.0, 2100.0, -100.0)}, -- spawn #38
	{['taken'] = false, ['coords'] = vector3(1320.0, 2100.0, -100.0)}, -- spawn #39
	{['taken'] = false, ['coords'] = vector3(1380.0, 2100.0, -100.0)}, -- spawn #40
	{['taken'] = false, ['coords'] = vector3(1440.0, 2100.0, -100.0)}, -- spawn #41
	{['taken'] = false, ['coords'] = vector3(1500.0, 2100.0, -100.0)}, -- spawn #42
	{['taken'] = false, ['coords'] = vector3(1560.0, 2100.0, -100.0)}, -- spawn #43
	{['taken'] = false, ['coords'] = vector3(1620.0, 2100.0, -100.0)}, -- spawn #44
	{['taken'] = false, ['coords'] = vector3(1680.0, 2100.0, -100.0)}, -- spawn #45
	{['taken'] = false, ['coords'] = vector3(1740.0, 2100.0, -100.0)}, -- spawn #46
	{['taken'] = false, ['coords'] = vector3(1800.0, 2100.0, -100.0)}, -- spawn #47
	{['taken'] = false, ['coords'] = vector3(1860.0, 2100.0, -100.0)}, -- spawn #48
	{['taken'] = false, ['coords'] = vector3(1920.0, 2100.0, -100.0)}, -- spawn #49
	{['taken'] = false, ['coords'] = vector3(1980.0, 2100.0, -100.0)}, -- spawn #50
	{['taken'] = false, ['coords'] = vector3(2040.0, 2100.0, -100.0)}, -- spawn #51
	{['taken'] = false, ['coords'] = vector3(2100.0, 2100.0, -100.0)}, -- spawn #52
	{['taken'] = false, ['coords'] = vector3(2160.0, 2100.0, -100.0)}, -- spawn #53
	{['taken'] = false, ['coords'] = vector3(2220.0, 2100.0, -100.0)}, -- spawn #54
	{['taken'] = false, ['coords'] = vector3(2280.0, 2100.0, -100.0)}, -- spawn #55
	{['taken'] = false, ['coords'] = vector3(2340.0, 2100.0, -100.0)}, -- spawn #56
	{['taken'] = false, ['coords'] = vector3(2400.0, 2100.0, -100.0)}, -- spawn #57
	{['taken'] = false, ['coords'] = vector3(2460.0, 2100.0, -100.0)}, -- spawn #58
	{['taken'] = false, ['coords'] = vector3(2520.0, 2100.0, -100.0)}, -- spawn #59
	{['taken'] = false, ['coords'] = vector3(2580.0, 2100.0, -100.0)}, -- spawn #60
	{['taken'] = false, ['coords'] = vector3(2640.0, 2100.0, -100.0)}, -- spawn #61
	{['taken'] = false, ['coords'] = vector3(2700.0, 2100.0, -100.0)}, -- spawn #62
	{['taken'] = false, ['coords'] = vector3(2760.0, 2100.0, -100.0)}, -- spawn #63
	{['taken'] = false, ['coords'] = vector3(2820.0, 2100.0, -100.0)}, -- spawn #64
	{['taken'] = false, ['coords'] = vector3(2880.0, 2100.0, -100.0)}, -- spawn #65
	{['taken'] = false, ['coords'] = vector3(2940.0, 2100.0, -100.0)}, -- spawn #66

	{['taken'] = false, ['coords'] = vector3(1020.0, 2200.0, -100.0)}, -- spawn #65
	{['taken'] = false, ['coords'] = vector3(1080.0, 2200.0, -100.0)}, -- spawn #66
	{['taken'] = false, ['coords'] = vector3(1140.0, 2200.0, -100.0)}, -- spawn #67
	{['taken'] = false, ['coords'] = vector3(1200.0, 2200.0, -100.0)}, -- spawn #68
	{['taken'] = false, ['coords'] = vector3(1260.0, 2200.0, -100.0)}, -- spawn #69
	{['taken'] = false, ['coords'] = vector3(1320.0, 2200.0, -100.0)}, -- spawn #70
	{['taken'] = false, ['coords'] = vector3(1380.0, 2200.0, -100.0)}, -- spawn #71
	{['taken'] = false, ['coords'] = vector3(1440.0, 2200.0, -100.0)}, -- spawn #72
	{['taken'] = false, ['coords'] = vector3(1500.0, 2200.0, -100.0)}, -- spawn #73
	{['taken'] = false, ['coords'] = vector3(1560.0, 2200.0, -100.0)}, -- spawn #74
	{['taken'] = false, ['coords'] = vector3(1620.0, 2200.0, -100.0)}, -- spawn #75
	{['taken'] = false, ['coords'] = vector3(1680.0, 2200.0, -100.0)}, -- spawn #76
	{['taken'] = false, ['coords'] = vector3(1740.0, 2200.0, -100.0)}, -- spawn #77
	{['taken'] = false, ['coords'] = vector3(1800.0, 2200.0, -100.0)}, -- spawn #78
	{['taken'] = false, ['coords'] = vector3(1860.0, 2200.0, -100.0)}, -- spawn #79
	{['taken'] = false, ['coords'] = vector3(1920.0, 2200.0, -100.0)}, -- spawn #80
	{['taken'] = false, ['coords'] = vector3(1980.0, 2200.0, -100.0)}, -- spawn #81
	{['taken'] = false, ['coords'] = vector3(2040.0, 2200.0, -100.0)}, -- spawn #82
	{['taken'] = false, ['coords'] = vector3(2100.0, 2200.0, -100.0)}, -- spawn #83
	{['taken'] = false, ['coords'] = vector3(2160.0, 2200.0, -100.0)}, -- spawn #84
	{['taken'] = false, ['coords'] = vector3(2220.0, 2200.0, -100.0)}, -- spawn #85
	{['taken'] = false, ['coords'] = vector3(2280.0, 2200.0, -100.0)}, -- spawn #86
	{['taken'] = false, ['coords'] = vector3(2340.0, 2200.0, -100.0)}, -- spawn #87
	{['taken'] = false, ['coords'] = vector3(2400.0, 2200.0, -100.0)}, -- spawn #88
	{['taken'] = false, ['coords'] = vector3(2460.0, 2200.0, -100.0)}, -- spawn #89
	{['taken'] = false, ['coords'] = vector3(2520.0, 2200.0, -100.0)}, -- spawn #90
	{['taken'] = false, ['coords'] = vector3(2580.0, 2200.0, -100.0)}, -- spawn #91
	{['taken'] = false, ['coords'] = vector3(2640.0, 2200.0, -100.0)}, -- spawn #92
	{['taken'] = false, ['coords'] = vector3(2700.0, 2200.0, -100.0)}, -- spawn #93
	{['taken'] = false, ['coords'] = vector3(2760.0, 2200.0, -100.0)}, -- spawn #94
	{['taken'] = false, ['coords'] = vector3(2820.0, 2200.0, -100.0)}, -- spawn #95
	{['taken'] = false, ['coords'] = vector3(2880.0, 2200.0, -100.0)}, -- spawn #96
	{['taken'] = false, ['coords'] = vector3(2940.0, 2200.0, -100.0)}, -- spawn #97
}

strings = {
	pressE = 'Press ~INPUT_CONTEXT~ to ',
	furnitureCategories = 'Categories',
	manageHouse = 'manage your house',
	buyHouse = 'buy house £',
	knockHouse = 'knock on the door',
	yourHouse = 'Your house',
	buyableHouse = 'Buyable house',
	playerHouse = 'Player house',
	storage = 'access your storage',
	wardrobe = 'access your wardrobe',
	toolBench = 'access your tool bench',
	sellHouse = 'Sell for £%s',
	enterHouse = 'Enter house',
	sellConfirm = 'Sell for £%s?',
	yes = 'Yes',
	no = 'No',
	soldHouse = 'You sold your house for £%s',
	mustSell = 'You can only own one house. Sell your house to buy this one.',
	buyHouseConfirm = 'Buy house #%s for £%s?',
	manageDoor = 'manage door',
	accept = 'Accept someone to enter',
	exit = 'Leave the house',
	nooneHome = 'Noone seems to be home!',
	someoneKnocked = 'Someone knocked. Go to the door to let them in!',
	letIn = 'Let someone in',
	acceptPlayer = 'Let %s in?',
	waitingOwner = 'Waiting for the house owner to let you in.',
	ikea = 'YouTool',
	buyFurniture = 'enter YouTool',
	buyingFurniture = '~INPUT_FRONTEND_LEFT~ ~INPUT_FRONTEND_RIGHT~ browse\n~INPUT_CELLPHONE_DOWN~ ~INPUT_CELLPHONE_UP~ change category (%s)\n~INPUT_FRONTEND_RDOWN~ buy %s for ~g~£%s~s~\n~INPUT_MOVE_UP_ONLY~ ~INPUT_MOVE_DOWN_ONLY~ ~INPUT_VEH_CINEMATIC_UP_ONLY~ ~INPUT_VEH_CINEMATIC_DOWN_ONLY~ adjust camera\n~INPUT_MOVE_LEFT_ONLY~ ~INPUT_MOVE_RIGHT_ONLY~ rotate\n\n~INPUT_FRONTEND_RRIGHT~ exit',
	confirmPurchase = 'Buy %s for £%s?',
	nomoney = "You don't have enough money.",
	boughtFurniture = 'Bought 1x %s for £%s',
	furnish = 'Furnish your house',
	storeGarage = 'Press ~INPUT_CONTEXT~ to store the vehicle',
	reFurnish = 'Remove placed furniture',
	remove = 'Remove %s (#%s)',
	amount = 'How many?',
	playerInventory = 'Your inventory',
	houseInventory = 'Inventory',
	invalidAmount = 'Invalid amount. Please put a number.',
	store = 'Store',
	withdraw = 'Withdraw',
	storageTitle = 'Storage',
	youStored = 'You stored %sx %s',
	youWithdrew = 'You withdrew %sx %s',
	notEnough = 'You don\'t have that many!',
	inventoryFull = 'Your inventory is full!',
	notEnoughHouse = 'There\'s not that many in the storage!',
	weapons = 'Weapons',
	items = 'Items',
	noWeapon = 'You don\'t have that weapon on you!',
	bullets = 'bullets',
	rotation = 'rotation',
	guests = 'Your guests need to leave the house before you may do this.',
	garage = 'Enter garage',
	noSpawn = 'Couldn\'t find a spawnpoint for your house.',
	hostLeft = 'The house owner left the server, you were kicked out of their house.',
	noMoney = 'You don\'t have enough money!',
	visit = 'Visit the house',
	raidHouse = 'Break down door',
	weaponFull = 'Your Weapon Storage Is Full',
	furnishing = '~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_RIGHT~ ~INPUT_CELLPHONE_DOWN~ ~INPUT_CELLPHONE_UP~ move\n~INPUT_VEH_CINEMATIC_UP_ONLY~ ~INPUT_VEH_CINEMATIC_DOWN_ONLY~ height\n~INPUT_ATTACK~ ~INPUT_AIM~ rotate\n~INPUT_DETONATE~ place on ground\n~INPUT_FRONTEND_ENDSCREEN_ACCEPT~ place\n~INPUT_CELLPHONE_CANCEL~ cancel'
}

config.GrowingInteracts = {
	["prop_bucket_01a"] = {
		stage = "Plant Stage (~r~0/4~s~)",
		label = "Plant Pot",
		buttons = {
			{button = {182}, text = "Water Plant"},
			{button = {185}, text = "Add Soil"},
			{button = {168}, text = "Leave Plant"},
			{button = {38}, text = "Add Seed"},
			{button = {172, 173}, text = "Change Seed"},
		}
	},
	--bkr_prop_weed_01_small_01a
	["bkr_prop_weed_01_small_01c"] = {
		stage = "Plant Stage (~o~1/4~s~)",
		label = "Tiny Plant",
		buttons = {
			{button = {38}, text = "Water Plant"},
			{button = {168}, text = "Leave Plant"},
		}
	},
	["bkr_prop_weed_01_small_01b"] = {
		stage = "Plant Stage (~y~2/4~s~)",
		label = "Small Plant",
		buttons = {
			{button = {38}, text = "Water Plant"},
			{button = {168}, text = "Leave Plant"},
		}
	},
	["bkr_prop_weed_med_01a"] = { -- bkr_prop_weed_med_01b
		stage = "Plant Stage (~y~3/4~s~)",
		label = "Medium Plant",
		buttons = {
			{button = {38}, text = "Water Plant"},
			{button = {168}, text = "Leave Plant"},
		}
	},
	["bkr_prop_weed_lrg_01a"] = { -- bkr_prop_weed_lrg_01b
		stage = "Plant Stage (~g~4/4~s~)",
		label = "Large Plant",
		buttons = {
			{button = {38}, text = "Cut Plant"},
			{button = {168}, text = "Leave Plant"},
		}
	},
}