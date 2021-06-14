isMenuOpen = false


AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() and isMenuOpen then
		SetNuiFocus(false, false)
	end
end)

function actionType(type)
	if type == "civMenu" then
		openCivMenu()
	elseif type == "funds" then
		checkFunds()
	elseif type == "frankTheNpc" then
		openIframeMenu()
	elseif type == "licences" then
		TriggerEvent("rpuk_court:openLicencePurchase")
	end
end

function capEachFirst(str)
	str = string.lower(str)
	str = string.gsub(" "..str, "%W%l", string.upper):sub(2)
	return str
end

function formatMoney(amount)
	local formatted = amount
	while true do
		Citizen.Wait(0)
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then
		  break
		end
	end
	return formatted
end


function openIframeMenu()
	ESX.UI.Menu.CloseAll()
	local elements = {}
	table.insert(elements, {
		label = "Submit A Judge Application",
		value = "judge"
	})
	table.insert(elements, {
		label = "Submit A Solictor Application",
		value = "solictors"
	})
	table.insert(elements, {
		label = " ",
		value = nil
	})
	table.insert(elements, {
		label = "Submit A Court Case",
		value = "case"
	})
	table.insert(elements, {
		label = "Court Roles and Responsibilities",
		value = "responsibilities"
	})
	table.insert(elements, {
		label = "Court Hearing Procedures",
		value = "hearingProcedures"
	})
	table.insert(elements, {
		label = "House Raid Warrant Procedure",
		value = "warrantProcedure"
	})
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), "personalMenu",
	{
		css = "interaction",
		align = "top-left",
		elements = elements
	}, function(data, menu)
		if data.current.value == "judge" then
			TriggerEvent("rpuk:iframe", true, "https://docs.google.com/forms/d/e/1FAIpQLSdofXzAB2kFaTZPNoUJ3ZI5TRRsy2QB-O4YIju8ymr9fBAd9Q/viewform")
			menu.close()
		elseif data.current.value == "solictors" then
			TriggerEvent("rpuk:iframe", true, "https://docs.google.com/forms/d/1yNFrIm7cFgrURTd-UjkZnTrU3WFhkIWuryHumoaXAPA/viewform")
			menu.close()
		elseif data.current.value == "case" then
			TriggerEvent("rpuk:iframe", true, "https://docs.google.com/forms/d/e/1FAIpQLSejX2S_qLNnFSn0j5eV9Ct0VYQ40qLdMdAsU0xd-3jFZrVi6g/viewform")
			menu.close()
		elseif data.current.value == "responsibilities" then
			TriggerEvent("rpuk:iframe", true, "https://docs.google.com/document/d/1phFVWP4mSewZKR8Vs9RKtKJiAPujOwsSAa67C28vNpA/?rm=minimal")
			menu.close()
		elseif data.current.value == "hearingProcedures" then
			TriggerEvent("rpuk:iframe", true, "https://docs.google.com/document/d/1uVuDeV7WKWtzCP11x-k6tCUqmpSWOIM1--bNDAlyOJA/?rm=minimal")
			menu.close()
		elseif data.current.value == "warrantProcedure" then
			TriggerEvent("rpuk:iframe", true, "https://docs.google.com/document/d/1l_LI2wmU4sLC3ZnMzgcEHhivfcEk0vHfA6Jj8lHJmq0/?rm=minimal")
			menu.close()
		else
			ESX.UI.Menu.CloseAll()
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openCivMenu()
	ESX.UI.Menu.CloseAll()
	local elements = {}
	table.insert(elements, {
		label = "View Personal Tickets",
		value = "ticketCheck"
	})
	table.insert(elements, {
		label = "View Law Directory",
		value = "solictors"
	})
	table.insert(elements, {
		label = " ",
		value = nil
	})
	if ESX.Player.GetJobName() == "police" then
		table.insert(elements, {
			label = "View Police Computer",
			value = "police"
		})
	end
	if ESX.Player.GetJobName() == "court" and ESX.Player.GetJobGrade() > 1 then
		table.insert(elements, {
			label = "View Court Computer",
			value = "court"
		})
	end
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), "personalMenu",
	{
		css = "interaction",
		align = "top-left",
		elements = elements
	}, function(data, menu)
		if data.current.value == "ticketCheck" then
			ticketMenu()
			menu.close()
		elseif data.current.value == "police" then
			openPoliceMenu()
			menu.close()
		elseif data.current.value == "court" then
			openJudgeMenu()
			menu.close()
		elseif data.current.value == "solictors" then
			openSolictors()
			menu.close()
		else
			ESX.UI.Menu.CloseAll()
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openSolictors()
	ESX.TriggerServerCallback("rpuk_court:fetchSolictors", function(result)
		ESX.UI.Menu.CloseAll()
		local elements = {}
		for k,v in pairs(result) do
			if v.status == "Online" then
				if v.jobName == "Solicitor" then
					table.insert(elements, 1, {
						label = "Status: <span style='color:green;'>"..v.status.."</span> | Name: ".. v.firstname .." ".. v.lastname.. " | Role: <span style='color:Violet;'>".. v.jobName.."</span> | Number: ".. v.phone_number,
						value = k,
						phoneNumber = v.phone_number
					})
				else
					table.insert(elements, 1, {
						label = "Status: <span style='color:green;'>"..v.status.."</span> | Name: ".. v.firstname .." ".. v.lastname.. " | Role: <span style='color:yellow;'>".. v.jobName.."</span> | Number: ".. v.phone_number,
						value = k,
						phoneNumber = v.phone_number
					})
				end
			else
				if v.jobName == "Solicitor" then
					table.insert(elements, {
						label = "Status: <span style='color:red;'>"..v.status.."</span> | Name: ".. v.firstname .." ".. v.lastname.. " | Role: <span style='color:Violet;'>".. v.jobName.."</span> | Number: ".. v.phone_number,
						value = k,
						phoneNumber = v.phone_number
					})
				else
					table.insert(elements, {
						label = "Status: <span style='color:red;'>"..v.status.."</span> | Name: ".. v.firstname .." ".. v.lastname.. " | Role: <span style='color:yellow;'>".. v.jobName.."</span> | Number: ".. v.phone_number,
						value = k,
						phoneNumber = v.phone_number
					})
				end
			end
		end
		ESX.UI.Menu.Open("default", GetCurrentResourceName(), "onlineStatus", {
		title = "Law Directory",
		css = "interaction",
		align = "top-left",
		elements = elements
		}, function(data, menu)
			TriggerEvent('mythic_notify:client:SendAlert', {length = 5000, type = 'inform', text = 'Phone number is copied to your pastebin!' })
			TriggerEvent('demmycam:remoteCopy', result[data.current.value].phone_number)
			menu.close()
			TriggerEvent("gcphone:autoCallNumber", result[data.current.value].phone_number)
		end, function(data, menu)
			menu.close()
		end)
	end)
end

function openPoliceMenu()
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), "PoliceMenu",
	{
		title = "",
		css = "interaction",
		align = "top-left",
		elements = {
			{
				label = "Submit Search Warrant Request",
				value = "submitWarrantReport"
			},

			{
				label = "  ",
				value = "  "
			},

			{
				label = "Licence Ban Submission",
				value = "licenceBan"
			},

			{
				label = "Ticket Database",
				value = "ticketSearch"
			},

			{
				label = "Warrant Database",
				value = "warrantDatabase"
			},

			{
				label = "Compensations Database",
				value = "searchcomp"
			},

			{
				label = "  ",
				value = "  "
			},

			{
				label = "Back",
				value = "back"
			}
		}
	}, function(data, menu)
		if data.current.value == "ticketSearch" then
			if ESX.Player.GetJobName() == "police" then
				suspectTicketSearch()
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
			menu.close()
		elseif data.current.value == "submitWarrantReport" then
			menu.close()
			if (ESX.Player.GetJobName() == "police" and ESX.Player.GetJobGrade() >= 3) then
				openUI("warrants")
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
		elseif data.current.value == "warrantDatabase" then
			if ESX.Player.GetJobName() == "police" then
				searchForWarrants()
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
			menu.close()
		elseif data.current.value == "searchcomp" then
			if (ESX.Player.GetJobName() == "police" and ESX.Player.GetJobGrade() >= 6) then
				searchForCompToReview()
				menu.close()
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
		elseif data.current.value == "licenceBan" then
			if (ESX.Player.GetJobName() == "police" and ESX.Player.GetJobGrade() >= 1) then
				openUI("licenceSubmissionBan")
				menu.close()
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
		else
			menu.close()
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openJudgeMenu()
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), "JudgeMenu",
	{
		css = "interaction",
		align = "top-left",
		elements = {
			{
				label = "Ticket Database Search",
				value = "ticketSearch"
			},
			{
				label = "Warrant Reports",
				value = "reviewWarrantReport"
			},
			{
				label = "Compensation Database",
				value = "compensationDatabase"
			},
			{
				label = "Submit Compensation Request",
				value = "compensation"
			},
			{
				label = "Search House Number",
				value = "searchHouseAddress"
			},
			{
				label = "  ",
				value = nil
			},
			{
				label = "Back",
				value = "back"
			}
		}
	}, function(data, menu)
		if data.current.value == "ticketSearch" then
			if ESX.Player.GetJobName() == "court" then
				suspectTicketSearch()
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
			menu.close()
		elseif data.current.value == "reviewWarrantReport" then
			if ESX.Player.GetJobName() == "court" then
				searchForWarrantsToReview()
			else
				TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "No Permission"})
			end
			menu.close()
		elseif data.current.value == "nameChange" then
			nameChangeMenu()
			menu.close()
		elseif data.current.value == "compensation" then
			addCompensation()
			menu.close()
		elseif data.current.value == "compensationDatabase" then
			searchForCompToView()
			menu.close()
		elseif data.current.value == "searchHouseAddress" then
			menu.close()
			openUI("houseIDSearch")
		else
			ESX.UI.Menu.CloseAll()
		end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end


-- System for Name Change [Gets Overwritten by esx.savePlayer]
-- function nameChangeMenu()
-- 	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'list',
-- 	{
-- 		title = "Enter Player CharID",
-- 	}, function(data, menu)
-- 		if tonumber(data.value) == nil and data.value == nil then
-- 			TriggerEvent('mythic_notify:client:SendAlert', {type = "inform", text = "Invalid"})
-- 			menu.close()
-- 		else
-- 			menu.close()
-- 			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'list',
-- 			{
-- 				title = "Enter First Name",
-- 			}, function(data2, menu2)
-- 				menu2.close()
-- 				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'list',
-- 				{
-- 					title = "Enter Last Name",
-- 				}, function(data3, menu3)
-- 					menu3.close()
-- 					TriggerServerEvent("rpuk_court:submitNameChange", data.value, capEachFirst(data2.value), capEachFirst(data3.value))
-- 					TriggerEvent('mythic_notify:client:SendAlert', { length = 6000, type = 'inform', text = "You have sent your warrant request!"})
-- 				end, function(data3, menu3)
-- 					menu3.close()
-- 				end)
-- 			end, function(data2, menu2)
-- 				menu2.close()
-- 			end)
-- 		end
-- 	end, function(data, menu)
-- 		menu.close()
-- 	end)
-- end



