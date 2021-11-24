RegisterServerEvent('BS:getUserIdRP')
AddEventHandler('BS:getUserIdRP', function()
    local source = source
    local user_id = vRP.getUserId(source)
    TriggerClientEvent('BS:giveRichPresence', source, user_id)
end)

-- © British Studios 2021