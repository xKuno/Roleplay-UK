Config = {
-- Change the language of the menu here!.
-- Note fr and de are google translated, if you would like to help out with translation / just fix it for your server check below and change translations yourself
-- try en, fr, de or sv.
	MenuLanguage = 'en',
-- Set this to true to enable some extra prints
	DebugDisplay = false,
-- Set this to false if you have something else on Z, and then just use /e c to cancel emotes.
	EnableXtoCancel = true,
-- Set this to true if you want to disarm the player when they play an emote.
	DisarmPlayer= false,
-- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
	AllowedInCars = true,
-- You can disable the (F3) menu here / change the keybind.
	MenuKeybindEnabled = false,
	MenuKeybind = 170, -- Get the button number here https://docs.fivem.net/game-references/controls/
-- You can disable the Favorite emote keybinding here.
	FavKeybindEnabled = true,
-- You can change the header image for the f3 menu here
-- Use a 512 x 128 image!
-- NOte this might cause an issue of the image getting stuck on peoples screens
	CustomMenuEnabled = false,
	MenuImage = "https://i.imgur.com/pN7MzpM.png",
-- You can change the menu position here
	MenuPosition = "left", -- (left, right)
-- You can disable the Ragdoll keybinding here.
	RagdollEnabled = false,
	RagdollKeybind = 303, -- Get the button number here https://docs.fivem.net/game-references/controls/
-- You can disable the Facial Expressions menu here.
	ExpressionsEnabled = true,
-- You can disable the Walking Styles menu here.
	WalkingStylesEnabled = true,
-- You can disable the Shared Emotes here.
	SharedEmotesEnabled = true,
}

Config.KeybindKeys = {
	['num4'] = 108,
	['num5'] = 110,
	['num6'] = 109,
	['num7'] = 117,
	['num8'] = 111,
	['num9'] = 118
}

Config.Languages = {
  ['en'] = {
		['emotes'] = 'Emotes',
		['danceemotes'] = "🕺 Dance Emotes",
		['propemotes'] = "📦 Prop Emotes",
		['favoriteemotes'] = "🌟 Favorite",
		['favoriteinfo'] = "Select an emote here to set it as your favorite.",
		['rfavorite'] = "Reset favorite",
		['prop2info'] = "❓ Prop Emotes can be located at the end",
		['set'] = "Set (",
		['setboundemote'] = ") to be your bound emote?",
		['newsetemote'] = " is now your bound emote, please use your keybinding which you set on your GTA 5 settings.",
		['cancelemote'] = "Cancel Emote",
		['cancelemoteinfo'] = "~r~X~w~ Cancels the currently playing emote",
		['walkingstyles'] = "Walking Styles",
		['resetdef'] = "Reset to default",
		['normalreset'] = "Normal (Reset)",
		['moods'] = "Moods",
		['infoupdate'] = "Information",
		['infoupdateav'] = "Information (Update available)",
		['infoupdateavtext'] = "An update is available, get the latest version from ~y~https://github.com/andristum/dpemotes~w~",
		['suggestions'] = "Suggestions?",
		['suggestionsinfo'] = "'dullpear_dev' on FiveM forums for any feature/emote suggestions! ✉️",
		['notvaliddance'] = "is not a valid dance.",
		['notvalidemote'] = "is not a valid emote.",
		['nocancel'] = "No emote to cancel.",
		['maleonly'] = "This emote is male only, sorry!",
		['emotemenucmd'] = "Do /emotemenu for a menu.",
		['shareemotes'] = "👫 Shared Emotes",
		['shareemotesinfo'] = "Invite a nearby person to emote",
		['sharedanceemotes'] = "🕺 Shared Dances",
		['notvalidsharedemote'] = "is not a valid shared emote.",
		['sentrequestto'] = "Sent request to ~y~",
		['nobodyclose'] = "Nobody ~r~close~w~ enough.",
		['doyouwanna'] = "~y~Y~w~ to accept, ~r~L~w~ to refuse (~g~",
		['refuseemote'] = "Emote refused.",
		['makenearby'] = "makes the nearby player play",
		['camera'] = "Press ~y~G~w~ to use camera flash.",
		['makeitrain'] = "Press ~y~G~w~ to make it rain.",
		['pee'] = "Hold ~y~G~w~ to pee.",
		['spraychamp'] = "Hold ~y~G~w~ to spray champagne",
		['bound'] = "Bound ",
		['to'] = "to",
		['currentlyboundemotes'] = " Currently bound emotes:",
		['notvalidkey'] = "is not a valid key.",
		['keybinds'] = "🔢 Keybinds",
		['keybindsinfo'] = "Use"
  }
}

--rideStyle Anim Types:
--chopper
--dirt
--police
--police_chimera
--quad
--scooter
--sports
--car

Config.rideStyle = {
	{model = `akuma`, type = "sports"},
	{model = `avarus`, type = "police"},
	{model = `blazer`, type = "cquad"},
	{model = `blazer2`, type = "sports"},
	{model = `blazer3`, type = "sports"},
	{model = `blazer4`, type = "quad"},
	{model = `blazer5`, type = "quad"},
	{model = `bagger`, type = "dirt"},
	{model = `bati`, type = "sports"},
	{model = `bati2`, type = "sports"},
	{model = `bf400`, type = "dirt"},
	{model = `chimera`, type = "police_chimera"},
	{model = `carbonrs`, type = "sports"},
	{model = `cliffhanger`, type = "dirt"},
	{model = `daemon`, type = "chopper"},
	{model = `daemon2`, type = "chopper"},
	{model = `diablous`, type = "police"},
	{model = `diablous2`, type = "sports"},
	{model = `double`, type = "sports"},
	{model = `defiler`, type = "sports"},
	{model = `enduro`, type = "dirt"},
	{model = `esskey`, type = "dirt"},
	{model = `gargoyle`, type = "dirt"},
	{model = `faggio`, type = "scooter"},
	{model = `faggio2`, type = "scooter"},
	{model = `faggio3`, type = "scooter"},
	{model = `fcr`, type = "sports"},
	{model = `fcr2`, type = "sports"},
	{model = `hexer`, type = "police"},
	{model = `hakuchou`, type = "sports"},
	{model = `hakuchou2`, type = "sports"},
	{model = `innovation`, type = "police"},
	{model = `lectro`, type = "sports"},
	{model = `manchez`, type = "dirt"},
	{model = `nemesis`, type = "sports"},
	{model = `nightblade`, type = "police"},
	{model = `oppressor`, type = "sports"},
	{model = `akuma`, type = "sports"},
	{model = `pcj`, type = "sports"},
	{model = `policeb`, type = "sports"},
	{model = `akuma`, type = "police"},
	{model = `ruffian`, type = "sports"},
	{model = `ratbike`, type = "police"},
	{model = `sanchez`, type = "dirt"},
	{model = `sanchez2`, type = "dirt"},
	{model = `sanctus`, type = "police"},
	{model = `shotaro`, type = "sports"},
	{model = `sovereign`, type = "police"},
	{model = `thrust`, type = "police"},
	{model = `vader`, type = "sports"},
	{model = `vortex`, type = "sports"},
	{model = `vindicator`, type = "police"},
	{model = `wolfsbane`, type = "police"},
	{model = `zombiea`, type = "chopper"},
	{model = `zombieb`, type = "chopper"},
	{model = `rrocket`, type = "police_chimera"},
	{model = `deathbike`, type = "police"},
	{model = `deathbike2`, type = "police"},
	{model = `deathbike3`, type = "police"},
	{model = `manchez2`, type = "dirt"},
	{model = `bmbobber`, type = "scooter"},
	{model = `fatboy`, type = "scooter"},
	{model = `g_xlcr`, type = "sports"},
	{model = `goldwing`, type = "dirt"},
	{model = `hfblrb`, type = "dirt"},
	{model = `hknuckle`, type = "chopper"},
	{model = `hspring`, type = "police"},
	{model = `hvrod`, type = "police"},
	{model = `na25`, type = "scooter"},
	{model = `nh2r`, type = "sports"},
}