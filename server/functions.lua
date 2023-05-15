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


url = Config.Webhook
if Config.Debug then
RegisterCommand(Config.TestCommand, function(source, args, rawCommand)
    print(color or Config.Default.color)
TriggerEvent("Ludaro:Webhook", nil, nil, nil, nil, nil, nil, source)
end)
end
RegisterNetEvent("Ludaro:Webhook", function(color, actionn, description, footer, botname, botlogo, imagesource)
  debug(color)
  debug(actionn)
  debug(description)
  debug(footer)
  debug(botname)
  debug(imagesource)
        if Config.Image and imagesource and (GetResourceState("screenshot-basic") == "started") and (GetResourceState("discord-screenshot") == "started") then
            debug("saving image of person with the id " .. imagesource)
            local title = actionn or Config.Default.title
        local embed = {
            {
                ["color"] = color or Config.Default.color,
                ["title"] = title,
                ["description"] = description or Config.Default.description,
                ["footer"] = {
                    ["text"] = footer or Config.Default.footer,
                },
            }
        }
        PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = botname or Config.Default.botname, embeds = embed, avatar_url = botlogo or Config.Default.botlogo,}), { ['Content-Type'] = 'application/json' })
        
            exports["discord-screenshot"]:requestCustomClientScreenshotUploadToDiscord(
                imagesource,
               url,
                {
                    encoding = "png",
                    quality = 1
                },
                {
                    username = botname or Config.Default.botname,
                    avatar_url = botlogo or Config.Default.botlogo,
                    embeds = {
                    }
                },
                30000,
                function(error)
                    if error then
                        return print("^1ERROR: " .. error)
                    end
                    print("Sent screenshot successfully")
                end
            )
            
        else
            local title = actionn or Config.Default.title
        local embed = {
            {
                ["color"] = color or Config.Default.color,
                ["title"] = title,
                ["description"] = description or Config.Default.description,
                ["footer"] = {
                    ["text"] = footer or Config.Default.footer,
                },
            }
        }
        PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = botname or Config.Default.botname, embeds = embed}), { ['Content-Type'] = 'application/json' })
        end
  end)

  function createcallback(color, actionn, description, footer, botname, botlogo, imagesource)
    TriggerServerEvent("Ludaro:Webhook", color, actionn, description, footer, botname, botlogo, imagesource)
  end
  exports("Webhook", createcallback)