local QBCore = exports['qb-core']:GetCoreObject()
local timeOut = false
--brave


QBCore.Functions.CreateCallback('qb-goldenmuseum:server:getCops', function(source, cb)
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)

RegisterNetEvent('qb-goldenmuseum:server:ThermitePtfx', function()
    TriggerClientEvent('qb-goldenmuseum:client:ThermitePtfx', -1)
end)

RegisterNetEvent('qb-goldenmuseum:server:setVitrineState', function(stateType, state, k)
    Config.Locations[k][stateType] = state
    TriggerClientEvent('qb-goldenmuseum:client:setVitrineState', -1, stateType, state, k)
end)

RegisterNetEvent('qb-goldenmuseum:server:vitrineReward', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local otherchance = math.random(1, 4)
    local odd = math.random(1, 4)

    if otherchance == odd then
        local item = math.random(1, #Config.VitrineRewards)
        local amount = math.random(Config.VitrineRewards[item]["amount"]["min"], Config.VitrineRewards[item]["amount"]["max"])
        if Player.Functions.AddItem(Config.VitrineRewards[item]["item"], amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.VitrineRewards[item]["item"]], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'You have to much in your pocket', 'error')
        end
    else
        local amount = math.random(2, 4)
        if Player.Functions.AddItem("jadeite", amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["jadeite"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'You have to much in your pocket..', 'error')
        end
    end
end)

RegisterNetEvent('qb-goldenmuseum:server:setTimeout', function()
    if not timeOut then
        timeOut = true
        TriggerEvent('qb-scoreboard:server:SetActivityBusy', "goldenmuseum", true)
        Citizen.CreateThread(function()   
            Citizen.Wait(Config.Timeout) 
            for k, v in pairs(Config.Locations) do
                Config.Locations[k]["isOpened"] = false
                TriggerClientEvent('qb-goldenmuseum:client:setVitrineState', -1, 'isOpened', false, k)
                TriggerClientEvent('qb-goldenmuseum:client:setAlertState', -1, false)
            end
            TriggerEvent('qb-scoreboard:server:SetActivityBusy', "goldenmuseum", false)
            timeOut = false
        end)
    else
        TriggerClientEvent('QBCore:Notify', source, 'The museum is still cooling down from the last robbery. Please wait.', 'error')
    end
end)
