local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

RegisterNetEvent('Butter-Methlab:server:itemforchemical', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local sulfuricacid = Player.Functions.GetItemByName('sulfuricacid')
    local hydrochloricacid = Player.Functions.GetItemByName('hydrochloricacid')
    local sodium_benzoate = Player.Functions.GetItemByName('sodium_benzoate')

    if sulfuricacid ~= nil and hydrochloricacid ~= nil and sodium_benzoate ~= nil then

        if sulfuricacid.amount >= 1 and hydrochloricacid.amount >= 1 and sodium_benzoate.amount >= 1 then

            Player.Functions.RemoveItem('sulfuricacid', 1)
            Player.Functions.RemoveItem('hydrochloricacid', 1)
            Player.Functions.RemoveItem('sodium_benzoate', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sulfuricacid'], "remove")
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['hydrochloricacid'], "remove")
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sodium_benzoate'], "remove")

            Player.Functions.AddItem('liquidmix', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['liquidmix'], "add")
        end
    end
end)

RegisterNetEvent('Butter-Methlab:server:itemfortemperature', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local liquidmix = Player.Functions.GetItemByName('liquidmix')

    if liquidmix ~= nil  then

        if liquidmix.amount >= 1 then

            Player.Functions.RemoveItem('liquidmix', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['liquidmix'], "remove")

            Player.Functions.AddItem('meth_powder', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_powder'], "add")
            Player.Functions.AddItem('meth_ingredient_2', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_ingredient_2'], "add")
        end
    end
end)

RegisterNetEvent('Butter-Methlab:server:ingredientitem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local meth_powder = Player.Functions.GetItemByName('meth_powder')
    local meth_ingredient_2 = Player.Functions.GetItemByName('meth_ingredient_2')

    if meth_powder ~= nil and meth_ingredient_2 ~= nil  then

        if meth_powder.amount >= 1 and meth_ingredient_2.amount >= 1  then

            Player.Functions.RemoveItem('meth_powder', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_powder'], "remove")
            Player.Functions.RemoveItem('meth_ingredient_2', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_ingredient_2'], "remove")


            Player.Functions.AddItem('meth1', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth1'], "add")
        end
    end
end)

RegisterNetEvent('Butter-Methlab:server:makingmeth_1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local meth1 = Player.Functions.GetItemByName('meth1')
    local meth_empty_baggy = Player.Functions.GetItemByName('meth_empty_baggy')

    if meth1 ~= nil and meth_empty_baggy ~= nil  then

        if meth1.amount >= 1 and meth_empty_baggy.amount >= 1  then

            Player.Functions.RemoveItem('meth1', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth1'], "remove")
            Player.Functions.RemoveItem('meth_empty_baggy', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_empty_baggy'], "remove")


            Player.Functions.AddItem('meth', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth'], "add")
        end
    end
end)

RegisterNetEvent('Butter-Methlab:server:makingmeth_5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local meth1 = Player.Functions.GetItemByName('meth1')
    local meth_empty_baggy = Player.Functions.GetItemByName('meth_empty_baggy')

    if meth1 ~= nil and meth_empty_baggy ~= nil  then

        if meth1.amount >= 5 and meth_empty_baggy.amount >= 5  then

            Player.Functions.RemoveItem('meth1', 5)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth1'], "remove")
            Player.Functions.RemoveItem('meth_empty_baggy', 5)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_empty_baggy'], "remove")


            Player.Functions.AddItem('meth', 5)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth'], "add")
        end
    end
end)

RegisterNetEvent('Butter-Methlab:server:makingmeth_10', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local meth1 = Player.Functions.GetItemByName('meth1')
    local meth_empty_baggy = Player.Functions.GetItemByName('meth_empty_baggy')

    if meth1 ~= nil and meth_empty_baggy ~= nil  then

        if meth1.amount >= 10 and meth_empty_baggy.amount >= 10  then

            Player.Functions.RemoveItem('meth1', 10)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth1'], "remove")
            Player.Functions.RemoveItem('meth_empty_baggy', 10)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth_empty_baggy'], "remove")


            Player.Functions.AddItem('meth', 10)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['meth'], "add")
        end
    end
end)



RegisterServerEvent('Butter-Methlab:blow')
AddEventHandler('Butter-Methlab:blow', function(posx, posy, posz)
	local _source = source
	local xPlayers = QBCore.Functions.GetPlayers()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	for i=1, #xPlayers, 1 do
		TriggerClientEvent('Butter-Methlab:blowup', xPlayers[i],posx, posy, posz)
	end
end)