Config = {}

--[[
Please try to maintain catagories and format throughout

For random location generation I have kept drug runs and money wash in their individual files

https://docs.fivem.net/docs/game-references/ped-models/

As I go on, exclusive blips are size 0.9 and mass blips like Standard are 0.7
]]--

Config.Standard = {
	{name = "Casino_BarStaff",	model = "s_m_y_casino_01", x = 1110.11,   y = 208.29,  z = -50.44, h = 81.05, godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Bar Staff 1
	{name = "Casino_BarStaff",	model = "s_m_y_casino_01", x = 1113.64,   y = 208.82,  z = -50.44, h = 310.05, godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Bar Staff 2
	{name = "Casino_ClothingStaff",	model = "s_m_y_casino_01", x = 1100.39,   y = 195.65,  z = -50.44, h = 313.29, godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Clothing Staff 1
	{name = "Casino_TokenStaff",	model = "u_f_m_casinocash_01", x = 1117.41,   y = 219.46,  z = -50.44, h = 70.15, godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Token Staff 1
	{name = "Casino_FrontStaff",	model = "s_m_y_casino_01", x = 1087.97,   y = 221.16,  z = -50.20, h = 169.96, godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Token Staff 1
	{name = "Casino_Security",	model = "mp_m_securoguard_01", x = 1118.27,   y = 215.41,  z = -49.17, h = 126.60, godmode = false, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Security 1
	{name = "Casino_Security",	model = "mp_m_securoguard_01", x = 1105.10,   y = 262.83,  z = -50.84, h = 176.60, godmode = false, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Security 2
	{name = "Casino_Security",	model = "mp_m_securoguard_01", x = 927.46,   y = 50.68,  z = 81.11, h = 91.43, godmode = false, spawnDistance = 150.0, spawnedFlag = false}, -- Casino Door Security 1
	{name = "Casino_Security",	model = "mp_m_securoguard_01", x = 922.66,   y = 42.55,  z = 81.11, h = 23.36, godmode = false, spawnDistance = 150.0, spawnedFlag = false}, -- Casino Door Security 1
	{name = "Casino_Penthouse_BarStaff", model = "s_m_y_casino_01", x = 946.43,   y = 15.19,  z = 115.2, h = 56.50, godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Penthouse Bar Staff 1
	{name = "Casino_Penthouse_Hair", model = "csb_tomcasino", x = 952.0,   y = 16.4,  z = 116.4, h = -91.1, scen = "Standing", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Casino Penthouse Hair Dresser

	{name = "Hospital_Shower",	model = "a_f_m_beach_01", x = 341.03,   y = -595.95,  z = 42.33, h = 36.03, godmode = true, spawnDistance = 30.0, spawnedFlag = false}, -- Police Station 5

	{name = "TB_Jewellers", model = "s_m_m_highsec_01",  x=-623.193, y=-230.597, z=37.057, h = -220.0, godmode = true, spawnDistance = 50.0,  spawnedFlag = false}, --TBJewellers

	{name = "CityHall_Booth00", model = "u_m_m_fibarchitect",  x=-553.04, y=-188.75, z=37.22, h = 209.19, godmode = true, spawnDistance = 50.0,  spawnedFlag = false}, --CityHall Licenses
--	{name = "CityHall_Booth01", model = "s_m_m_fiboffice_02",  x=-554.662, y=-189.620, z=37.220, h = 209.19, godmode = true, spawnDistance = 50.0,  spawnedFlag = false}, --CityHall (replaced by tutorial)
	{name = "CityHall_Clerk", model = "s_m_m_fiboffice_02",  x = -556.81, y = -194.33, z = 41.70, h = 250.0, godmode = true, spawnDistance = 50.0,  spawnedFlag = false}, --City Hall upstairs justice clerk

	{name = "Grinder_1",	model = "s_m_y_sheriff_01", x = 2854.52, y = 1564.74, z = 24.73, h = 122.13, scen = "WORLD_HUMAN_CLIPBOARD", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_2",	model = "s_m_m_armoured_02", x = 2824.66, y = 1580.37, z = 24.56, h = 213.64, scen = "WORLD_HUMAN_DRINKING", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_3",	model = "s_m_m_armoured_02", x = 2821.04, y = 1581.31, z = 24.65, h = 348.52, scen = "WORLD_HUMAN_CLIPBOARD", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_4",	model = "s_m_m_armoured_02", x = 2824.87, y = 1578.89, z = 24.56, h = 331.24, scen = "WORLD_HUMAN_COP_IDLES", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_5",	model = "s_m_m_armoured_01", x = 2839.97, y = 1550.15, z = 24.73, h = 320.26, scen = "WORLD_HUMAN_CLIPBOARD", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_6",	model = "s_m_m_armoured_02", x = 2842.80, y = 1540.12, z = 29.38, h = 347.08, scen = "WORLD_HUMAN_SECURITY_SHINE_TORCH", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_7",	model = "s_m_m_armoured_01", x = 2841.50, y = 1536.08, z = 29.38, h = 159.23, scen = "WORLD_HUMAN_BINOCULARS", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_8",	model = "s_m_m_armoured_02", x = 2816.38, y = 1544.98, z = 29.51, h = 127.42, scen = "WORLD_HUMAN_BINOCULARS", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "Grinder_9",	model = "s_m_m_armoured_01", x = 2834.83, y = 1571.32, z = 29.38, h = 40.32, scen = "WORLD_HUMAN_BINOCULARS", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "impound",	model = "a_m_m_bevhills_01", x = 407.1, y = -1625.5, z = 27.3, h = -70.078, scen = "WORLD_HUMAN_CLIPBOARD", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3
	{name = "west_garrage",	model = "s_m_y_garbage", x = -625.33087158203, y = 194.52481079102, z = 68.884826660156, h = 80.078, scen = "s_m_m_fiboffice_02", godmode = false, spawnDistance = 300.0, spawnedFlag = false}, -- Prison 3

---Strip Club---

	{name = "StripClub_Security",	model = "s_m_y_doorman_01", x = 130.6,   y = -1298.2,  z = 28.25, h = -151.6, scen = "WORLD_HUMAN_GUARD_STAND", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Security 1
	{name = "StripClub_Security",	model = "u_m_m_jewelsec_01", x = 127.8,   y = -1300.9,  z = 28.25, h = -111.2, scen = "WORLD_HUMAN_CLIPBOARD", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Security 2
	{name = "StripClub_Security",	model = "s_m_y_doorman_01", x = 129.2,   y = -1289.3,  z = 28.3, h = 32.8, scen = "WORLD_HUMAN_GUARD_STAND", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Security 3
	{name = "StripClub_Security",	model = "s_m_m_bouncer_01", x = 108.8,   y = -1282.9,  z = 27.3, h = -150.0, scen = "WORLD_HUMAN_GUARD_STAND", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Security 4
	{name = "StripClub_Security",	model = "s_m_m_bouncer_01", x = 114.0,   y = -1292.0,  z = 27.3, h = 29.9, scen = "WORLD_HUMAN_GUARD_STAND", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Security 5
	{name = "StripClub_Security",	model = "s_m_y_doorman_01", x = 114.9,   y = -1297.6,  z = 28.3, h = -59.7, scen = "WORLD_HUMAN_GUARD_STAND", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Security 6
	{name = "StripClub_Workers",	model = "s_m_m_bouncer_01", x = 126.7,   y = -1298.2,  z = 28.3, h = -15.7, scen = "WORLD_HUMAN_CLIPBOARD", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Staff 1
	{name = "StripClub_Workers",	model = "s_f_y_bartender_01", x = 130.55,   y = -1283.1,  z = 28.3, h = 121.8, scen = "WORLD_HUMAN_LEANING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Staff 2
	{name = "StripClub_Workers",	model = "s_f_y_bartender_01", x = 128.8,   y = -1282.6,  z = 28.3, h = 121.8, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Staff 3

	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 109.8,   y = -1281.9,  z = 27.3, h = 178.2, scen = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 1
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 115.3,   y = -1284.7,  z = 27.3, h = -153.4, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 2
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 107.0,   y = -1284.1,  z = 27.3, h = -95.4, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 3
	{name = "StripClub_Workers",	model = "csb_stripper_02", x = 114.8,   y = -1289.3,  z = 27.3, h = -123.8, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 4
	{name = "StripClub_Workers",	model = "csb_stripper_02", x = 118.7,   y = -1287.3,  z = 27.3, h = -52.2, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 5
	{name = "StripClub_Workers",	model = "s_f_y_stripperlite", x = 105.4,   y = -1295.1,  z = 28.3, h = -88.8, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 6
	{name = "StripClub_Workers",	model = "s_f_y_stripperlite", x = 102.3,   y = -1289.4,  z = 28.3, h = -29.6, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 7
	{name = "StripClub_Workers",	model = "u_m_y_staggrm_01", x = 100.4,   y = -1287.7,  z = 27.3, h = -76.0, scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 8
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 109.4,   y = -1305.6,  z = 27.52, h = 76.6, scen = "PROP_HUMAN_SEAT_CHAIR_DRINK", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 9
	{name = "StripClub_Workers",	model = "csb_stripper_02", x = 107.6,   y = -1305.3,  z = 27.8, h = -149.7, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 10
	{name = "StripClub_Workers",	model = "csb_stripper_02", x = 108.3,   y = -1304.2,  z = 27.8, h = -179.4, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 11
	{name = "StripClub_Workers",	model = "csb_stripper_02", x = 119.4,   y = -1284.1,  z = 27.3, h = 127.0, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 12
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 121.1,   y = -1287.2,  z = 27.3, h = 171.2, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 13
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 120.7,   y = -1294.2,  z = 28.3, h = 32.5, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 14
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 124.2,   y = -1290.3,  z = 28.3, h = -99.4, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 15
	{name = "StripClub_Workers",	model = "csb_stripper_01", x = 109.3,   y = -1294.7,  z = 27.3, h = 4.8, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Dancers 16

	{name = "StripClub_Civs",	model = "mp_m_execpa_01", x = 102.7,   y = -1285.7,  z = 27.3, h = -64.8, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Civs 1
	{name = "StripClub_Civs",	model = "ig_taocheng", x = 112.8,   y = -1293.2,  z = 27.3, h = 119.3, scen = "WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Civs 3
	{name = "StripClub_Civs",	model = "ig_taostranslator", x = 111.6,   y = -1293.8,  z = 27.3, h = -59.5, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Civs 4
	{name = "StripClub_Civs",	model = "csb_reporter", x = 117.9,   y = -1290.7,  z = 27.3, h = 0.3, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Civs 5
	{name = "StripClub_Civs",	model = "ig_chengsr", x = 125.2,   y = -1283.8,  z = 28.3, h = -110.5, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Civs 6
	{name = "StripClub_Civs",	model = "u_m_m_willyfist", x = 125.6,   y = -1284.8,  z = 28.3, h = 12.0, scen = "WORLD_HUMAN_PARTYING", godmode = true, spawnDistance = 50.0, spawnedFlag = false}, -- Stripclub Civs 7

}

Config.Interations = {
	{name = "Casino_Dirty_Money_Dealer", model = "g_f_y_vagos_01",  x = 1166.033,   y = 251.592,  z = -52.041, h = 178.34, godmode = true, interactionType = "BlackMarket", textDistance = 1.5, spawnDistance = 50.0, spawnedFlag = false},
	{name = "Casino_Dirty_Money_Dealer", model = "a_m_y_epsilon_02",  x = 1133.983,   y = 283.882,  z = -52.041, h = 88.34, godmode = true, interactionType = "BlackMarket", textDistance = 1.5, spawnDistance = 50.0, spawnedFlag = false},

	--{name = "Pillbox_Hospital_Medical_Supplies", model = "s_m_m_doctor_01",  x = 308.48,   y = -595.29,  z = 42.28, h = 42.87, godmode = true, textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
	--{name = "Pillbox_Hospital_Medical_Supplies", model = "s_m_m_doctor_01",  x = 311.45,   y = -593.96,  z = 42.28, h = 334.71, godmode = true, interactionType = "shop", shopType = "NHSDesk", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
	--{name = "Pillbox_Hospital_Medical_Supplies", model = "s_f_y_scrubs_01",  x = 310.99,   y = -565.95,  z = 42.28, h = 255.49, godmode = true, interactionType = "shop", shopType = "NHSDesk", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},

	--{name = "Halloween_Vendor", model = "s_m_y_clown_01",  x = 329.31, y = -2030.74, z = 20.06, h = 137.02, godmode = true, interactionType = "HalloweenToken", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},

	{name = "LostMC_ClubhouseBar_00", model = "g_m_y_lost_02",  x = 987.57, y = -95.51, z = 73.85, h = 210.91, godmode = true, interactionType = "lostClubhouseBar", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "LostMC_ClubhouseBar_01", model = "g_m_y_lost_02",  x = 981.39, y = -131.50, z = 77.89, h = 311.15, godmode = true, interactionType = "lostClubhouseBar", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "LostMC_ClubhouseBar_02", model = "g_m_y_lost_02",  x = 1984.38, y = 3054.50, z = 46.22, h = 239.68, godmode = true, interactionType = "lostClubhouseBar", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},

	{name = "Ranger_Meat_Vendor_00", model = "csb_chef",  x = 969.08, y = -2109.67, z = 30.48, h = 68.55, godmode = true, scen = "WORLD_HUMAN_CLIPBOARD", interactionType = "butcherVendor", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "Warehouse_01", model = "s_m_m_gardener_01",  x = -1063.8377685547, y = -2079.3293457031, z = 12.29150390625, h = -30.55, godmode = true, scen = "WORLD_HUMAN_CLIPBOARD", interactionType = "resourceExport", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},

	--Tutorial Hints
	{name = "tutorial_01", model = "a_m_y_bevhills_01",  x = 320.288, y = -198.420, z = 53.2, h = 150.83, godmode = true, scen = "WORLD_HUMAN_DRINKING", interactionType = "tutorial", tutorialType = "pinkcage", textDistance = 3.0, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_02", model = "s_m_m_fiboffice_02",  x=-554.662, y=-189.620, z=37.220, h = 209.19, godmode = true, interactionType = "tutorial", tutorialType = "cityhall", textDistance = 2.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_03", model = "mp_s_m_armoured_01",  x=1752.16, y=2480.5, z=44.75, h = -50.51, godmode = true, scen = "WORLD_HUMAN_COP_IDLES", interactionType = "tutorial", tutorialType = "prison", textDistance = 3.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_04", model = "s_m_y_xmech_01",  x=369.012, y=-1607.762, z=28.292, h = 220.317, godmode = true, scen = "WORLD_HUMAN_LEANING", interactionType = "tutorial", tutorialType = "mechanic", textDistance = 3.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_05", model = "s_m_y_construct_02",  x=-595.497, y=2094.609, z=130.451, h = 50.317, godmode = true, scen = "WORLD_HUMAN_DRINKING", interactionType = "tutorial", tutorialType = "mining", textDistance = 3.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_06", model = "g_m_m_armlieut_01",  x=905.059, y=-164.901, z=73.100, h = 250.317, godmode = true, scen = "WORLD_HUMAN_DRINKING", interactionType = "tutorial", tutorialType = "taxi", textDistance = 3.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_07", model = "u_m_y_burgerdrug_01",  x=-1275.327, y=-885.884, z=10.929, h = 250.317, godmode = true, scen = "WORLD_HUMAN_SMOKING", interactionType = "tutorial", tutorialType = "fooddelivery", textDistance = 3.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_08", model = "s_m_m_ups_02",  x=1018.360, y=-2525.003, z=27.32, h = 50.317, godmode = true, scen = "WORLD_HUMAN_SMOKING", interactionType = "tutorial", tutorialType = "commercial", textDistance = 3.6, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_09", model = "s_m_m_ups_02",  x=153.391, y=-3214.535, z=5.0, h = 50.317, godmode = true, scen = "WORLD_HUMAN_CLIPBOARD", interactionType = "tutorial", tutorialType = "vehicle_delivery", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
	{name = "tutorial_10", model = "s_m_m_doctor_01",  x=306.7, y=-584.4, z=42.3, h = 160.317, godmode = true, scen = "WORLD_HUMAN_CLIPBOARD", interactionType = "tutorial", tutorialType = "hospital", textDistance = 2.0, spawnDistance = 50.0,  spawnedFlag = false},
}