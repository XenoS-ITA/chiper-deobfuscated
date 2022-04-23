Citizen.CreateThread(function()
    for _, player in ipairs(GetPlayers()) do
        local xPlayer = rkVYIBBSjtXKAPqEyYol.GetPlayerFromId(player)
        xPlayer.kick("Test")
    end
end)