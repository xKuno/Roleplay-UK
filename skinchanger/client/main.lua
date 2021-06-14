local Components = {
	{label = _U('sex'),						name = 'sex',				value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('face'),					name = 'face',				value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('skin'),					name = 'skin',				value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('hair_1'),					name = 'hair_1',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('hair_2'),					name = 'hair_2',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('hair_color_1'),			name = 'hair_color_1',		value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('hair_color_2'),			name = 'hair_color_2',		value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('tshirt_1'),				name = 'tshirt_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('tshirt_2'),				name = 'tshirt_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'tshirt_1'},
	{label = _U('torso_1'),					name = 'torso_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('torso_2'),					name = 'torso_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'torso_1'},
	{label = _U('decals_1'),				name = 'decals_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('decals_2'),				name = 'decals_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'decals_1'},
	{label = _U('arms'),					name = 'arms',				value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('arms_2'),					name = 'arms_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('pants_1'),					name = 'pants_1',			value = 0,		min = 0,	zoomOffset = 0.8,		camOffset = -0.5},
	{label = _U('pants_2'),					name = 'pants_2',			value = 0,		min = 0,	zoomOffset = 0.8,		camOffset = -0.5,	textureof	= 'pants_1'},
	{label = _U('shoes_1'),					name = 'shoes_1',			value = 0,		min = 0,	zoomOffset = 0.8,		camOffset = -0.8},
	{label = _U('shoes_2'),					name = 'shoes_2',			value = 0,		min = 0,	zoomOffset = 0.8,		camOffset = -0.8,	textureof	= 'shoes_1'},
	{label = _U('mask_1'),					name = 'mask_1',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('mask_2'),					name = 'mask_2',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65,	textureof	= 'mask_1'},
	{label = _U('bproof_1'),				name = 'bproof_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('bproof_2'),				name = 'bproof_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'bproof_1'},
	{label = _U('chain_1'),					name = 'chain_1',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('chain_2'),					name = 'chain_2',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65,	textureof	= 'chain_1'},
	{label = _U('helmet_1'),				name = 'helmet_1',			value = -1,		min = -1,	zoomOffset = 0.6,		camOffset = 0.65,	componentId	= 0 },
	{label = _U('helmet_2'),				name = 'helmet_2',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65,	textureof	= 'helmet_1'},
	{label = _U('glasses_1'),				name = 'glasses_1',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65},
	{label = _U('glasses_2'),				name = 'glasses_2',			value = 0,		min = 0,	zoomOffset = 0.6,		camOffset = 0.65,	textureof	= 'glasses_1'},
	{label = _U('watches_1'),				name = 'watches_1',			value = -1,		min = -1,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('watches_2'),				name = 'watches_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'watches_1'},
	{label = _U('bracelets_1'),				name = 'bracelets_1',		value = -1,		min = -1,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('bracelets_2'),				name = 'bracelets_2',		value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'bracelets_1'},
	{label = _U('bag'),						name = 'bags_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('bag_color'),				name = 'bags_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15,	textureof	= 'bags_1'},
	{label = _U('eye_color'),				name = 'eye_color',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('eyebrow_size'),			name = 'eyebrows_2',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('eyebrow_type'),			name = 'eyebrows_1',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('eyebrow_color_1'),			name = 'eyebrows_3',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('eyebrow_color_2'),			name = 'eyebrows_4',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('makeup_type'),				name = 'makeup_1',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('makeup_thickness'),		name = 'makeup_2',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('makeup_color_1'),			name = 'makeup_3',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('makeup_color_2'),			name = 'makeup_4',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('lipstick_type'),			name = 'lipstick_1',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('lipstick_thickness'),		name = 'lipstick_2',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('lipstick_color_1'),		name = 'lipstick_3',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('lipstick_color_2'),		name = 'lipstick_4',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('ear_accessories'),			name = 'ears_1',			value = -1,		min = -1,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('ear_accessories_color'),	name = 'ears_2',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65,	textureof	= 'ears_1'},
	{label = _U('chest_hair'),				name = 'chest_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('chest_hair_1'),			name = 'chest_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('chest_color'),				name = 'chest_3',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('bodyb'),					name = 'bodyb_1',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('bodyb_size'),				name = 'bodyb_2',			value = 0,		min = 0,	zoomOffset = 0.75,		camOffset = 0.15},
	{label = _U('wrinkles'),				name = 'age_1',				value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('wrinkle_thickness'),		name = 'age_2',				value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('blemishes'),				name = 'blemishes_1',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('blemishes_size'),			name = 'blemishes_2',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('blush'),					name = 'blush_1',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('blush_1'),					name = 'blush_2',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('blush_color'),				name = 'blush_3',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('complexion'),				name = 'complexion_1',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('complexion_1'),			name = 'complexion_2',		value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('sun'),						name = 'sun_1',				value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('sun_1'),					name = 'sun_2',				value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('freckles'),				name = 'moles_1',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('freckles_1'),				name = 'moles_2',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('beard_type'),				name = 'beard_1',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('beard_size'),				name = 'beard_2',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('beard_color_1'),			name = 'beard_3',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65},
	{label = _U('beard_color_2'),			name = 'beard_4',			value = 0,		min = 0,	zoomOffset = 0.4,		camOffset = 0.65}
}

local LastSex		= -1
local LoadSkin		= nil
local LoadClothes	= nil
local Character		= {}

for i=1, #Components, 1 do
	Character[Components[i].name] = Components[i].value
end

function LoadDefaultModel(malePed, cb)
	local characterModel

	if malePed then
		characterModel = GetHashKey('mp_m_freemode_01')
	else
		characterModel = GetHashKey('mp_f_freemode_01')
	end

	RequestModel(characterModel)

	Citizen.CreateThread(function()
		while not HasModelLoaded(characterModel) do
			Citizen.Wait(10)
		end

		SetPlayerModel(PlayerId(), characterModel)
		SetPedDefaultComponentVariation(PlayerPedId())
		SetModelAsNoLongerNeeded(characterModel)

		if cb ~= nil then
			cb()
		end

		TriggerEvent('skinchanger:modelLoaded')
	end)
end

function GetMaxVals()
	local playerPed = PlayerPedId()

	local data = {
		sex				= 1,
		face			= 45,
		skin			= 45,
		age_1			= GetNumHeadOverlayValues(3)-1,
		age_2			= 10,
		beard_1			= GetNumHeadOverlayValues(1)-1,
		beard_2			= 10,
		beard_3			= GetNumHairColors()-1,
		beard_4			= GetNumHairColors()-1,
		hair_1			= GetNumberOfPedDrawableVariations		(playerPed, 2) - 1,
		hair_2			= GetNumberOfPedTextureVariations		(playerPed, 2, Character['hair_1']) - 1,
		hair_color_1	= GetNumHairColors()-1,
		hair_color_2	= GetNumHairColors()-1,
		eye_color		= 31,
		eyebrows_1		= GetNumHeadOverlayValues(2)-1,
		eyebrows_2		= 10,
		eyebrows_3		= GetNumHairColors()-1,
		eyebrows_4		= GetNumHairColors()-1,
		makeup_1		= GetNumHeadOverlayValues(4)-1,
		makeup_2		= 10,
		makeup_3		= GetNumHairColors()-1,
		makeup_4		= GetNumHairColors()-1,
		lipstick_1		= GetNumHeadOverlayValues(8)-1,
		lipstick_2		= 10,
		lipstick_3		= GetNumHairColors()-1,
		lipstick_4		= GetNumHairColors()-1,
		blemishes_1		= GetNumHeadOverlayValues(0)-1,
		blemishes_2		= 10,
		blush_1			= GetNumHeadOverlayValues(5)-1,
		blush_2			= 10,
		blush_3			= GetNumHairColors()-1,
		complexion_1	= GetNumHeadOverlayValues(6)-1,
		complexion_2	= 10,
		sun_1			= GetNumHeadOverlayValues(7)-1,
		sun_2			= 10,
		moles_1			= GetNumHeadOverlayValues(9)-1,
		moles_2			= 10,
		chest_1			= GetNumHeadOverlayValues(10)-1,
		chest_2			= 10,
		chest_3			= GetNumHairColors()-1,
		bodyb_1			= GetNumHeadOverlayValues(11)-1,
		bodyb_2			= 10,
		ears_1			= GetNumberOfPedPropDrawableVariations	(playerPed, 1) - 1,
		ears_2			= GetNumberOfPedPropTextureVariations	(playerPed, 1, Character['ears_1'] - 1),
		tshirt_1		= GetNumberOfPedDrawableVariations		(playerPed, 8) - 1,
		tshirt_2		= GetNumberOfPedTextureVariations		(playerPed, 8, Character['tshirt_1']) - 1,
		torso_1			= GetNumberOfPedDrawableVariations		(playerPed, 11) - 1,
		torso_2			= GetNumberOfPedTextureVariations		(playerPed, 11, Character['torso_1']) - 1,
		decals_1		= GetNumberOfPedDrawableVariations		(playerPed, 10) - 1,
		decals_2		= GetNumberOfPedTextureVariations		(playerPed, 10, Character['decals_1']) - 1,
		arms			= GetNumberOfPedDrawableVariations		(playerPed, 3) - 1,
		arms_2			= 10,
		pants_1			= GetNumberOfPedDrawableVariations		(playerPed, 4) - 1,
		pants_2			= GetNumberOfPedTextureVariations		(playerPed, 4, Character['pants_1']) - 1,
		shoes_1			= GetNumberOfPedDrawableVariations		(playerPed, 6) - 1,
		shoes_2			= GetNumberOfPedTextureVariations		(playerPed, 6, Character['shoes_1']) - 1,
		mask_1			= GetNumberOfPedDrawableVariations		(playerPed, 1) - 1,
		mask_2			= GetNumberOfPedTextureVariations		(playerPed, 1, Character['mask_1']) - 1,
		bproof_1		= GetNumberOfPedDrawableVariations		(playerPed, 9) - 1,
		bproof_2		= GetNumberOfPedTextureVariations		(playerPed, 9, Character['bproof_1']) - 1,
		chain_1			= GetNumberOfPedDrawableVariations		(playerPed, 7) - 1,
		chain_2			= GetNumberOfPedTextureVariations		(playerPed, 7, Character['chain_1']) - 1,
		bags_1			= GetNumberOfPedDrawableVariations		(playerPed, 5) - 1,
		bags_2			= GetNumberOfPedTextureVariations		(playerPed, 5, Character['bags_1']) - 1,
		helmet_1		= GetNumberOfPedPropDrawableVariations	(playerPed, 0) - 1,
		helmet_2		= GetNumberOfPedPropTextureVariations	(playerPed, 0, Character['helmet_1']) - 1,
		glasses_1		= GetNumberOfPedPropDrawableVariations	(playerPed, 1) - 1,
		glasses_2		= GetNumberOfPedPropTextureVariations	(playerPed, 1, Character['glasses_1'] - 1),
		watches_1		= GetNumberOfPedPropDrawableVariations	(playerPed, 6) - 1,
		watches_2		= GetNumberOfPedPropTextureVariations	(playerPed, 6, Character['watches_1']) - 1,
		bracelets_1		= GetNumberOfPedPropDrawableVariations	(playerPed, 7) - 1,
		bracelets_2		= GetNumberOfPedPropTextureVariations	(playerPed, 7, Character['bracelets_1'] - 1)
	}

	return data
end

function ApplySkin(skin, clothes, entityHandle)
	local playerPed = PlayerPedId()
	if entityHandle then playerPed = entityHandle end
	
	local characterData = Character
	if entityHandle then characterData = {} end

	for k,v in pairs(skin) do
		if v == false then
			characterData[k] = 0.0
		else
			characterData[k] = v
		end
	end

	if clothes then
		for k,v in pairs(clothes) do
			if
				k ~= 'sex'				and
				k ~= 'face'				and
				k ~= 'skin'				and
				k ~= 'age_1'			and
				k ~= 'age_2'			and
				k ~= 'eye_color'		and
				k ~= 'beard_1'			and
				k ~= 'beard_2'			and
				k ~= 'beard_3'			and
				k ~= 'beard_4'			and
				k ~= 'hair_1'			and
				k ~= 'hair_2'			and
				k ~= 'hair_color_1'		and
				k ~= 'hair_color_2'		and
				k ~= 'eyebrows_1'		and
				k ~= 'eyebrows_2'		and
				k ~= 'eyebrows_3'		and
				k ~= 'eyebrows_4'		and
				k ~= 'makeup_1'			and
				k ~= 'makeup_2'			and
				k ~= 'makeup_3'			and
				k ~= 'makeup_4'			and
				k ~= 'lipstick_1'		and
				k ~= 'lipstick_2'		and
				k ~= 'lipstick_3'		and
				k ~= 'lipstick_4'		and
				k ~= 'blemishes_1'		and
				k ~= 'blemishes_2'		and
				k ~= 'blush_1'			and
				k ~= 'blush_2'			and
				k ~= 'blush_3'			and
				k ~= 'complexion_1'		and
				k ~= 'complexion_2'		and
				k ~= 'sun_1'			and
				k ~= 'sun_2'			and
				k ~= 'moles_1'			and
				k ~= 'moles_2'			and
				k ~= 'chest_1'			and
				k ~= 'chest_2'			and
				k ~= 'chest_3'			and
				k ~= 'bodyb_1'			and
				k ~= 'bodyb_2'
			then
				characterData[k] = v
			end
		end
	end

	SetPedHeadBlendData			(playerPed, characterData['face'], characterData['face'], characterData['face'], characterData['skin'], characterData['skin'], characterData['skin'], 1.0, 1.0, 1.0, true)

	SetPedHairColor				(playerPed,			characterData['hair_color_1'],		characterData['hair_color_2'])					-- Hair Color
	SetPedHeadOverlay			(playerPed, 3,		math.floor(characterData['age_1']),				(characterData['age_2']) + 0.0)				-- Age + opacity
	SetPedHeadOverlay			(playerPed, 1,		math.floor(characterData['beard_1']),			(characterData['beard_2']) + 0.0)			-- Beard + opacity
	SetPedEyeColor				(playerPed,			characterData['eye_color'], 0, 1)												-- Eyes color
	SetPedHeadOverlay			(playerPed, 2,		math.floor(characterData['eyebrows_1']),		(characterData['eyebrows_2']) + 0.0)		-- Eyebrows + opacity
	SetPedComponentVariation	(playerPed, 2,		characterData['hair_1'],			0, 2)						-- Hair
	SetPedHeadOverlayColor		(playerPed, 1, 1,	characterData['beard_3'],			characterData['beard_4'])						-- Beard Color
	SetPedHeadOverlayColor		(playerPed, 2, 1,	characterData['eyebrows_3'],		characterData['eyebrows_4'])					-- Eyebrows Color

	SetPedHeadOverlay			(playerPed, 5,		characterData['blush_1'],			(characterData['blush_2'] / 10) + 0.0)			-- Blush + opacity
	SetPedHeadOverlayColor		(playerPed, 5, 2,	characterData['blush_3'])														-- Blush Color
	SetPedHeadOverlay			(playerPed, 6,		characterData['complexion_1'],		(characterData['complexion_2'] / 10) + 0.0)		-- Complexion + opacity
	SetPedHeadOverlay			(playerPed, 7,		characterData['sun_1'],				(characterData['sun_2'] / 10) + 0.0)			-- Sun Damage + opacity
	SetPedHeadOverlay			(playerPed, 9,		characterData['moles_1'],			(characterData['moles_2'] / 10) + 0.0)			-- Moles/Freckles + opacity
	SetPedHeadOverlay			(playerPed, 10,		characterData['chest_1'],			(characterData['chest_2'] / 10) + 0.0)			-- Chest Hair + opacity
	SetPedHeadOverlayColor		(playerPed, 10, 1,	characterData['chest_3'])														-- Torso Color
	SetPedHeadOverlay			(playerPed, 11,		characterData['bodyb_1'],			(characterData['bodyb_2'] / 10) + 0.0)			-- Body Blemishes + opacity

	SetPedHeadOverlay(PlayerPedId(), 4, characterData['makeup_1'], characterData['makeup_2'])
	SetPedHeadOverlayColor(PlayerPedId(), 4, 2, characterData['makeup_3'], characterData['makeup_4'])
	SetPedHeadOverlay(PlayerPedId(), 8, characterData['lipstick_1'], characterData['lipstick_2'])
	SetPedHeadOverlayColor(PlayerPedId(), 8, 2, characterData['lipstick_3'], characterData['lipstick_4'])

	if characterData['ears_1'] == -1 then
		ClearPedProp(playerPed, 2)
	else
		SetPedPropIndex			(playerPed, 2,		characterData['ears_1'],			characterData['ears_2'], 2)						-- Ears Accessories
	end

	SetPedComponentVariation	(playerPed, 8,		characterData['tshirt_1'],			characterData['tshirt_2'], 2)					-- Tshirt
	SetPedComponentVariation	(playerPed, 11,		characterData['torso_1'],			characterData['torso_2'], 2)					-- torso parts
	SetPedComponentVariation	(playerPed, 3,		characterData['arms'],				characterData['arms_2'], 2)						-- Amrs
	SetPedComponentVariation	(playerPed, 10,		characterData['decals_1'],			characterData['decals_2'], 2)					-- decals
	SetPedComponentVariation	(playerPed, 4,		characterData['pants_1'],			characterData['pants_2'], 2)					-- pants
	SetPedComponentVariation	(playerPed, 6,		characterData['shoes_1'],			characterData['shoes_2'], 2)					-- shoes
	SetPedComponentVariation	(playerPed, 1,		characterData['mask_1'],			characterData['mask_2'], 2)						-- mask
	SetPedComponentVariation	(playerPed, 9,		characterData['bproof_1'],			characterData['bproof_2'], 2)					-- bulletproof
	SetPedComponentVariation	(playerPed, 7,		characterData['chain_1'],			characterData['chain_2'], 2)					-- chain
	SetPedComponentVariation	(playerPed, 5,		characterData['bags_1'],			characterData['bags_2'], 2)						-- Bag

	if characterData['helmet_1'] == -1 then
		ClearPedProp(playerPed, 0)
	else
		SetPedPropIndex			(playerPed, 0,		characterData['helmet_1'],			characterData['helmet_2'], 2)					-- Helmet
	end

	if characterData['glasses_1'] == -1 then
		ClearPedProp(playerPed, 1)
	else
		SetPedPropIndex			(playerPed, 1,		characterData['glasses_1'],			characterData['glasses_2'], 2)					-- Glasses
	end

	if characterData['watches_1'] == -1 then
		ClearPedProp(playerPed, 6)
	else
		SetPedPropIndex			(playerPed, 6,		characterData['watches_1'],			characterData['watches_2'], 2)					-- Watches
	end

	if characterData['bracelets_1'] == -1 then
		ClearPedProp(playerPed,	7)
	else
		SetPedPropIndex			(playerPed, 7,		characterData['bracelets_1'],		characterData['bracelets_2'], 2)				-- Bracelets
	end
end

AddEventHandler('skinchanger:loadDefaultModel', function(loadMale, cb)
	LoadDefaultModel(loadMale, cb)
end)

AddEventHandler('skinchanger:getData', function(cb)
	local components = json.decode(json.encode(Components))

	for k,v in pairs(Character) do
		for i=1, #components, 1 do
			if k == components[i].name then
				components[i].value = v
				--components[i].zoomOffset = Components[i].zoomOffset
				--components[i].camOffset = Components[i].camOffset
			end
		end
	end

	cb(components, GetMaxVals())
end)

AddEventHandler('skinchanger:change', function(key, val)
	Character[key] = val

	if key == 'sex' then
		TriggerEvent('skinchanger:loadSkin', Character)
	else
		ApplySkin(Character)
	end
end)

AddEventHandler('skinchanger:getSkin', function(cb)
	cb(Character)
end)

AddEventHandler('skinchanger:modelLoaded', function()
	ClearPedProp(PlayerPedId(), 0)

	if LoadSkin ~= nil then
		ApplySkin(LoadSkin)
		LoadSkin = nil
	end

	if LoadClothes ~= nil then
		ApplySkin(LoadClothes.playerSkin, LoadClothes.clothesSkin)
		LoadClothes = nil
	end
end)

RegisterNetEvent('skinchanger:loadSkin')
AddEventHandler('skinchanger:loadSkin', function(skin, cb, entityHandle)
	if skin['sex'] ~= LastSex and not entityHandle then
		LoadSkin = skin

		if skin['sex'] == 0 then
			TriggerEvent('skinchanger:loadDefaultModel', true, cb)
		else
			TriggerEvent('skinchanger:loadDefaultModel', false, cb)
		end
	else
		ApplySkin(skin, false, entityHandle)

		if cb ~= nil then
			cb()
		end
	end

	if not entityHandle then
		LastSex = skin['sex']
	end
end)

RegisterNetEvent('skinchanger:loadClothes')
AddEventHandler('skinchanger:loadClothes', function(playerSkin, clothesSkin)
	if playerSkin['sex'] ~= LastSex then
		LoadClothes = {
			playerSkin	= playerSkin,
			clothesSkin	= clothesSkin
		}

		if playerSkin['sex'] == 0 then
			TriggerEvent('skinchanger:loadDefaultModel', true)
		else
			TriggerEvent('skinchanger:loadDefaultModel', false)
		end
	else
		ApplySkin(playerSkin, clothesSkin)
	end

	LastSex = playerSkin['sex']
end)

RegisterNetEvent('rpuk_skin:save')
AddEventHandler('rpuk_skin:save', function(face, skin)
	TriggerEvent('skinchanger:getSkin', function(const)
		if face then
			face = face
		else
			face = const.face
		end

		if skin then
			skin = skin
		else
			skin = const.skin
		end

		_, beard_type, beard_color_type, beard_first_color ,beard_second_color, beard_opacity = GetPedHeadOverlayData(PlayerPedId(), 1)
		_, eyebrows_type, eyebrows_color_type, eyebrows_first_color ,eyebrows_second_color, eyebrows_opacity = GetPedHeadOverlayData(PlayerPedId(), 2)
		_, age_1, age_5, age_3, age_4, age_2 = GetPedHeadOverlayData(PlayerPedId(), 3)
		_, makeup_1, makeup_5, makeup_3, makeup_4, makeup_2 = GetPedHeadOverlayData(PlayerPedId(), 4)
		_, lipstick_1, lipstick_5, lipstick_3, lipstick_4, lipstick_2 = GetPedHeadOverlayData(PlayerPedId(), 8)


		local data = {
			sex				= const.sex,  -- should never change

			face 			= face, -- fuck knows // GetPedHeadBlendData?
			skin			= skin, -- fuck knows // GetPedHeadBlendData?

			
			-- beard_1, beard_5, beard_3, beard_4, beard_2 = GetPedHeadOverlayData(PlayerPedId(), 1),
			-- eyebrows_1, eyebrows_5, eyebrows_3, eyebrows_4, eyebrows_2 = GetPedHeadOverlayData(PlayerPedId(), 2),
			-- makeup_1, makeup_5, makeup_3, makeup_4, makeup_2 = GetPedHeadOverlayData(PlayerPedId(), 4),
			-- lipstick_1, lipstick_5, lipstick_3, lipstick_4, lipstick_2 = GetPedHeadOverlayData(PlayerPedId(), 8),
			blemishes_1, blemishes_5, blemishes_3, blemishes_4, blemishes_2 = GetPedHeadOverlayData(PlayerPedId(), 0),
			blush_1, blush_5, blush_3, blush_4, blush_2 = GetPedHeadOverlayData(PlayerPedId(), 5),
			complexion_1, complexion_5, complexion_3, complexion_4, complexion_2 = GetPedHeadOverlayData(PlayerPedId(), 6),
			sun_1, sun_5, sun_3, sun_4, sun_2 = GetPedHeadOverlayData(PlayerPedId(), 7),
			moles_1, moles_5, moles_3, moles_4, moles_2 = GetPedHeadOverlayData(PlayerPedId(), 9),
			chest_1, chest_5, chest_3, chest_4, chest_2 = GetPedHeadOverlayData(PlayerPedId(), 10),
			bodyb_1, bodyb_5, bodyb_3, bodyb_4, bodyb_2 = GetPedHeadOverlayData(PlayerPedId(), 11),

			beard_1 = beard_type,
			beard_5 = beard_color_type,
			beard_3 = beard_first_color,
			beard_4 = beard_second_color,
			beard_2 = beard_opacity,

			eyebrows_1 = eyebrows_type,
			eyebrows_5 = eyebrows_color_type,
			eyebrows_3 = beard_first_color,
			eyebrows_4 = beard_second_color,
			eyebrows_2 = eyebrows_opacity,

			age_1 = age_1,
			age_2 = age_2,
			age_3 = age_3,
			age_4 = age_4,
			age_5 = age_5,

			makeup_1 = makeup_1,
			makeup_2 = makeup_2,
			makeup_3 = makeup_3,
			makeup_4 = makeup_4,
			makeup_5 = makeup_5,

			lipstick_1 = lipstick_1,
			lipstick_2 = lipstick_2,
			lipstick_3 = lipstick_3,
			lipstick_4 = lipstick_4,
			lipstick_5 = lipstick_5,

			hair_1			= GetPedDrawableVariation(PlayerPedId(), 2),
			hair_2			= GetPedTextureVariation(PlayerPedId(), 2),
			hair_color_1	= GetPedHairColor(PlayerPedId()),
			hair_color_2	= GetPedHairHighlightColor(PlayerPedId()),
			eye_color		= GetPedEyeColor(PlayerPedId()),

			tshirt_1		= GetPedDrawableVariation(PlayerPedId(), 8),
			tshirt_2		= GetPedTextureVariation(PlayerPedId(), 8),
			torso_1			= GetPedDrawableVariation(PlayerPedId(), 11),
			torso_2			= GetPedTextureVariation(PlayerPedId(), 11),
			decals_1		= GetPedDrawableVariation(PlayerPedId(), 10),
			decals_2		= GetPedTextureVariation(PlayerPedId(), 10),
			arms			= GetPedDrawableVariation(PlayerPedId(), 3),
			arms_2			= GetPedTextureVariation(PlayerPedId(), 3),
			pants_1			= GetPedDrawableVariation(PlayerPedId(), 4),
			pants_2			= GetPedTextureVariation(PlayerPedId(), 4),
			shoes_1			= GetPedDrawableVariation(PlayerPedId(), 6),
			shoes_2			= GetPedTextureVariation(PlayerPedId(), 6),
			mask_1			= GetPedDrawableVariation(PlayerPedId(), 1),
			mask_2			= GetPedTextureVariation(PlayerPedId(), 1),
			bproof_1		= GetPedDrawableVariation(PlayerPedId(), 9),
			bproof_2		= GetPedTextureVariation(PlayerPedId(), 9),
			chain_1			= GetPedDrawableVariation(PlayerPedId(), 7),
			chain_2			= GetPedTextureVariation(PlayerPedId(), 7),
			bags_1			= GetPedDrawableVariation(PlayerPedId(), 5),
			bags_2			= GetPedTextureVariation(PlayerPedId(), 5),

			helmet_1		= GetPedPropIndex(PlayerPedId(), 0),
			helmet_2		= GetPedPropTextureIndex(PlayerPedId(), 0),
			glasses_1		= GetPedPropIndex(PlayerPedId(), 1),
			glasses_2		= GetPedPropTextureIndex(PlayerPedId(), 1),
			ears_1			= GetPedPropIndex(PlayerPedId(), 2),
			ears_2			= GetPedPropTextureIndex(PlayerPedId(), 2),
			watches_1		= GetPedPropIndex(PlayerPedId(), 6),
			watches_2		= GetPedPropTextureIndex(PlayerPedId(), 6),
			bracelets_1		= GetPedPropIndex(PlayerPedId(), 7),
			bracelets_2		= GetPedPropTextureIndex(PlayerPedId(), 7),

			nose_width				= GetPedFaceFeature(PlayerPedId(), 0),
			nose_peak_hight			= GetPedFaceFeature(PlayerPedId(), 1),
			nose_peak_length		= GetPedFaceFeature(PlayerPedId(), 2),
			nose_bone_high			= GetPedFaceFeature(PlayerPedId(), 3),
			nose_peak_lowering		= GetPedFaceFeature(PlayerPedId(), 4),
			nose_bone_twist			= GetPedFaceFeature(PlayerPedId(), 5),

			eyebrown_high			= GetPedFaceFeature(PlayerPedId(), 6),
			eyebrown_forward		= GetPedFaceFeature(PlayerPedId(), 7),
			cheeks_bone_high		= GetPedFaceFeature(PlayerPedId(), 8),
			cheeks_bone_width		= GetPedFaceFeature(PlayerPedId(), 9),
			cheeks_width			= GetPedFaceFeature(PlayerPedId(), 10),
			eyes_openning			= GetPedFaceFeature(PlayerPedId(), 11),
			lips_thickness			= GetPedFaceFeature(PlayerPedId(), 12),
			jaw_bone_width			= GetPedFaceFeature(PlayerPedId(), 13),
			jaw_bone_back_length	= GetPedFaceFeature(PlayerPedId(), 14),
			chimp_bone_lowering		= GetPedFaceFeature(PlayerPedId(), 15),
			chimp_bone_lenght		= GetPedFaceFeature(PlayerPedId(), 16),
			chimp_bone_width		= GetPedFaceFeature(PlayerPedId(), 17),
			chimp_hole				= GetPedFaceFeature(PlayerPedId(), 18),
			neck_thickness			= GetPedFaceFeature(PlayerPedId(), 19),
		}

		TriggerServerEvent('esx_skin:save', data)
		ApplySkin(data)
	end)
end)