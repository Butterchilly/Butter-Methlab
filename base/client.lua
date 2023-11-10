local Framework = {}
if Config.Framework == "qb" then
    local QBCore = exports['qb-core']:GetCoreObject()
end

function Framework:Notify(text, type)
    if Config.Notify == 'qb' then
        QBCore.Functions.Notify(text,type)
    elseif Config.Notify == 'ox' then
        lib.notify({description = text, type = type })
    end
end

return Framework