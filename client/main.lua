local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

-- \\ Enter Lab // --
RegisterNetEvent('Butter-Methlab:client:EnterLab', function()
    local ped = PlayerPedId() 
    local hasItem = QBCore.Functions.HasItem('meth_key')

    if Config.Use_Methlab_key then
        if not hasItem then
            QBCore.Functions.Notify('You Dont Have Meth Lab Key To Enter The Lab', 'error')
            return
        end
    end
    SetEntityCoords(ped, 970.07, -147.05, -46.4)
    SetEntityHeading(ped, 262.15)
end)

-- \\ Exit Lab // --
RegisterNetEvent('Butter-Methlab:client:ExitLab', function()
    local ped = PlayerPedId() 
    SetEntityCoords(ped,-1531.16, -886.56, 10.17)
    SetEntityHeading(ped, 48.14)
end)


-- \\ Mix Chemical // --
RegisterNetEvent('Butter-Methlab:client:StartMixingChemical', function ()
    exports['ps-ui']:Thermite(function(success)
        if success then
            QBCore.Functions.Progressbar('mixingchemical', 'Mixing Chemical', 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true
                }, {}, {}, {}, function()
            TriggerServerEvent('Butter-Methlab:server:itemforchemical')
        end, function()
        end)
            QBCore.Functions.Notify('You Did It', 'success')
            
        else
            QBCore.Functions.Notify('You Failed To Mix Chemicals', 'error')
            TriggerEvent('Butter-Methlab:boom')
        end
        
    end, 10, 5, 3)
end)

-- \\ Temperature Machine // --
RegisterNetEvent('Butter-Methlab:client:Temperaturemachine', function ()
    exports['ps-ui']:Thermite(function(success)
        if success then
            QBCore.Functions.Progressbar('mixingchemical', 'Increasing Temperature', 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true
                }, {}, {}, {}, function()
            QBCore.Functions.Progressbar('mixingchemical', 'Decreasing Temperature', 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true
                        }, {}, {}, {}, function()
                            QBCore.Functions.Notify('Temperature Decreased', 'error')  
                            TriggerServerEvent('Butter-Methlab:server:itemfortemperature') 
        end, function()     
        end)
            QBCore.Functions.Notify('Temperature Increased', 'success')  
        end, function()
        end)
        else
            QBCore.Functions.Notify('You Failed To Use Temperature Machine', 'error')
        end
        
    end, 10, 5, 3)
end)

-- \\ Ingredient Machine // --
RegisterNetEvent('Butter-Methlab:client:ingredient', function ()
    exports['ps-ui']:Thermite(function(success)
        if success then
            QBCore.Functions.Progressbar('mixingchemical', 'Adding Ingredient', 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true
                }, {}, {}, {}, function()
                TriggerServerEvent('Butter-Methlab:server:ingredientitem')
        end, function()
        end)
            QBCore.Functions.Notify('You Did It', 'success')
            
        else
            QBCore.Functions.Notify('You Failed To Add Ingredient', 'error')
        end
        
    end, 10, 5, 3)
end)

-- \\ Make  Meth 1 // --
RegisterNetEvent('Butter-Methlab:client:ingredient_1', function ()
    exports['ps-ui']:Circle(function(success)
        if success then
            QBCore.Functions.Progressbar('mixingchemical', 'Making Meth', 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true
                }, {}, {}, {}, function()
                TriggerServerEvent('Butter-Methlab:server:makingmeth_1')
        end, function()
        end)
            QBCore.Functions.Notify('You Did It', 'success')
            
        else
            QBCore.Functions.Notify('You Failed To Make Meth', 'error')
        end
        
    end, 2, 20) -- NumberOfCircles, MS
end)

-- \\ Make  Meth 5 // --
RegisterNetEvent('Butter-Methlab:client:ingredient_5', function ()
    exports['ps-ui']:Circle(function(success)
        if success then
            QBCore.Functions.Progressbar('mixingchemical', 'Making Meth', 15000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true
                }, {}, {}, {}, function()
                TriggerServerEvent('Butter-Methlab:server:makingmeth_5')
        end, function()
        end)
            QBCore.Functions.Notify('You Did It', 'success')
            
        else
            QBCore.Functions.Notify('You Failed To Make Meth', 'error')
        end
        
    end, 2, 20) -- NumberOfCircles, MS
end)

-- \\ Make  Meth 10 // --
RegisterNetEvent('Butter-Methlab:client:ingredient_10', function ()
    exports['ps-ui']:Circle(function(success)
        if success then
            QBCore.Functions.Progressbar('mixingchemical', 'Making Meth', 25000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true
                }, {}, {}, {}, function()
                TriggerServerEvent('Butter-Methlab:server:makingmeth_10')
        end, function()
        end)
            QBCore.Functions.Notify('You Did It', 'success')
            
        else
            QBCore.Functions.Notify('You Failed To Make Meth', 'error')
        end
        
    end, 2, 20) -- NumberOfCircles, MS
end)


RegisterNetEvent('Butter-Methlab:boom', function()
	playerPed = (PlayerPedId())
	local pos = GetEntityCoords((PlayerPedId()))
	pause = false
	Citizen.Wait(500)
	started = false
	Citizen.Wait(500)
	CurrentVehicle = GetVehiclePedIsUsing(PlayerPedId(-1))
	TriggerServerEvent('Butter-Methlab:blow', pos.x, pos.y, pos.z)
end)

RegisterNetEvent('Butter-Methlab:blowup')
AddEventHandler('Butter-Methlab:blowup', function(posx, posy, posz)
	AddExplosion(posx, posy, posz + 2, 15, 20.0, true, false, 1.0, true)
	if not HasNamedPtfxAssetLoaded("core") then
		RequestNamedPtfxAsset("core")
		while not HasNamedPtfxAssetLoaded("core") do
			Citizen.Wait(1)
		end
	end
	SetPtfxAssetNextCall("core")
	local fire = StartParticleFxLoopedAtCoord("ent_ray_heli_aprtmnt_l_fire", posx, posy, posz-0.8 , 0.0, 0.0, 0.0, 0.8, false, false, false, false)
	Citizen.Wait(6000)
	StopParticleFxLooped(fire, 0)	
end)