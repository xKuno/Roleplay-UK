Config = {}

Config.ExcludeAccountsList = {["bank"] = true}
Config.Debug = false

Config.VehicleLimit ={
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

Config.ammo = {
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
	WEAPON_PETROLCAN = "petrol"
}

Config.maskList = {
	{"MASK_BEAR", 21, 0},
	{"MASK_BULL", 23, 0},
	{"MASK_COOKIE", 33, 0},
	{"MASK_EAGLE", 24, 1},
	{"MASK_HAWK", 24, 0},
	{"MASK_JAFFA", 18, 0},
	{"MASK_OWL", 19, 0},
	{"MASK_PENGUIN", 31, 0},
	{"MASK_PIG", 1, 0},
	{"MASK_PURGEPIG", 1, 1},
	{"MASK_WOLF", 26, 0},
}

Config.food = { -- item, hunger, thirst
	{"orange", 20, 20},
	{"apple", 20, 20},
	{"water", 0, 60},
	{"redgull", 0, 30},
	{"bread", 30, 0},
	{"smoothie", 40, 80},
	{"burger", 60, 0},
	{"taco", 50, 0},
	{"breakfast", 70, 50},
	{"hallow_sweet_1", 60, 10},
	{"pumpkin_pie", 60, 10},
	{"christmas_candycane", 70, 0},
	{"christmas_chocolate", 70, 0},
	{"christmas_gingerbread", 70, 0},
	{"lemonade", 0, 40},
	{"cola", 0, 40},
	{"chocolate", 30, 0},
	{"crisps", 40, 0},
	{"hotdog", 55, 0},
	{"coffee", 0, 45},
	{"food_pizza", 50, 20},
}

Config.alcohol = {
	"wine",
	"beer",
	"vodka",
	"tequila",
	"whisky",
	"vladickas",
	"oldFashioned",
	"appletini",
	"tequilaSunrise",
	"spikedMichelada",
}

Config.drugs = {
	"marijuana",
	"meth",
	"cocaine",
	"paracetamol",
	"asprin",
	"comp_drug_morphine",
	"comp_drug_asprin",
	"comp_drug_paracetamol",
}

Config.Deployables = {
	{"cone", "prop_traffic_cones","Collection of Cones"},
	{"cbarrier", "prop_mp_barrier_01","Concrete Barrier"},
	{"gazebo", "prop_gazebo_02","Gazebo Down"},
	{"evidence", "randomCSICard","Evidence Card"},
	{"medicBag", "xm_prop_x17_bag_med_01a","Medic Bag"},
	{"bluelight", "prop_air_lights_02a","Blue Light"},
	{"redlight", "prop_air_lights_02b","Red Light"},
	{"workLight", "prop_worklight_01a","Scene Light"},
}