Citizen.CreateThread(function()
	RequestIpl('gabz_biker_milo_')
	local interiorID = GetInteriorAtCoords(994.47870000, -122.99490000, 73.11467000)

	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, 'lower_walls_default')
		SetInteriorPropColor(interiorID, 'lower_walls_default', 1)	
		EnableInteriorProp(interiorID, 'walls_02')
		SetInteriorPropColor(interiorID, 'walls_02', 1)		
		EnableInteriorProp(interiorID, 'Furnishings_02')
		SetInteriorPropColor(interiorID, 'Furnishings_02', 2)
		EnableInteriorProp(interiorID, 'decorative_02')		
		EnableInteriorProp(interiorID, 'gun_locker')
		EnableInteriorProp(interiorID, 'cash_small')
		EnableInteriorProp(interiorID, 'id_small')
		EnableInteriorProp(interiorID, 'weed_small')
		EnableInteriorProp(interiorID, 'mod_booth')
		EnableInteriorProp(interiorID, 'mural_03')		
		RefreshInterior(interiorID)
	end
end)