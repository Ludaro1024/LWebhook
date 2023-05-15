if (GetResourceState("es_extended") == "started") then
    if (exports["es_extended"] and exports["es_extended"].getSharedObject) then
        ESX = exports["es_extended"]:getSharedObject()
    else
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
    end
end


function debug(msg)
    if Config.Debug then
        if type(msg) == "table" then
            print(print(ESX.DumpTable(msg)))
        else
            print("[Ludaro|Debug] : " .. tostring(msg))
        end
    end
end



RegisterNetEvent('SaveImage')
AddEventHandler('SaveImage', function(webhook)
    debug(webhook)
    exports['screenshot-basic']:requestScreenshotUpload(webhook, "files[]", function(data)
        local image = json.decode(data)
        -- DestroyMobilePhone()
        -- CellCamActivate(false, false)
        cb(json.encode({ url = webhook }))
        end)
end)

