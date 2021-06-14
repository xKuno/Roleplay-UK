Citizen.CreateThread(function()
	Citizen.Wait(5000) -- possible "Area" missing fix
	AddTextEntry("BLIP_PROPCAT", "<C>Job Related</C>") -- Category 10
	AddTextEntry("BLIP_APARTCAT", "<C>Dealerships/Shops</C>") -- Category 11

	for k,v in ipairs(Config.Blips) do
		Citizen.Wait(1)
		generateBlip("old", v)
	end
end)

function generateBlip(cat, v)
	local blip = AddBlipForCoord(v.coords)

	if not Config.blipHandles[cat] then Config.blipHandles[cat] = {} end
	table.insert(Config.blipHandles[cat], blip)
	
	SetBlipSprite(blip, v.id)

	SetBlipScale(blip, v.scale or 0.5)
	SetBlipColour (blip, v.color)
	SetBlipAsShortRange(blip, true)

	if v.radius then
		local Radiusblip = AddBlipForRadius(v.coords, v.radius.radiusSize)
		SetBlipHighDetail(Radiusblip, true)
		SetBlipColour(Radiusblip, v.radius.radiusColour)
		SetBlipAlpha (Radiusblip, 128)
	end

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(v.linkName or v.text)
	EndTextCommandSetBlipName(blip)

	if v.category then SetBlipCategory(blip, v.category) end
	if v.blipDetail then
		if not HasStreamedTextureDictLoaded("blip_textures") then
			RequestStreamedTextureDict("blip_textures")
			while not HasStreamedTextureDictLoaded("blip_textures") do Citizen.Wait(100) end
		end

		local streetName = GetStreetNameFromHashKey(GetStreetNameAtCoord(v.coords.x, v.coords.y, v.coords.z))

		SetBlipInfoTitle(blip, v.title or v.text, false)

		if v.imgName then SetBlipInfoImage(blip, "blip_textures", v.imgName) end

		AddBlipInfoHeader(blip, "Area", streetName)

		if v.jType then AddBlipInfoText(blip, "Job Type", v.jType) end
		if v.owner then AddBlipInfoText(blip, "Owned By", v.owner) end

		AddBlipInfoHeader(blip, "")
		AddBlipInfoText(blip, v.description)

		if v.description2 then AddBlipInfoText(blip, v.description2) end
	end
	Citizen.Wait(1)
end

RegisterNetEvent('rpuk_blips:addBlips')
AddEventHandler('rpuk_blips:addBlips', function(data)
	for k,v in pairs(data) do
		for k2, v2 in pairs(v) do
			generateBlip(k2, v2)
		end
	end	
end)