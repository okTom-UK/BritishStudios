Citizen.CreateThread(function()
	while true do
		TriggerServerEvent('BS:getUserIdRP')
		Citizen.Wait(600000)
	end
end)

local user_id = nil

RegisterNetEvent('BS:giveRichPresence')
AddEventHandler('BS:giveRichPresence', function(user_id)
	if user_id ~= nil then 
		SetDiscordAppId(*************) -- Add your own Discord app ID. (https://discord.com/developers)
		SetDiscordRichPresenceAsset('Custom Text') -- Ideally you would have this as your server name.
		SetDiscordRichPresenceAssetText("Custom Text")
		SetRichPresence("[ID: "..user_id.."] | "..#GetActivePlayers().. "/64") -- Would advise only editing the total players.

		-- Customisable Content
		SetDiscordRichPresenceAction(0, "Placeholder Button1", "Link")
        SetDiscordRichPresenceAction(1, "Placeholder Button2 ", "Link")
	end
end)

-- © British Studios 2021