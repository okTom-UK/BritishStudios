fx_version 'cerulean'
games {  'gta5' }

author 'British Studios'
description "Discord Rich Presence for vRP framework."
version "1.0.0"


-- server sided lua file of the script
server_scripts{ 
  "sv_discord.lua",
}

-- client sided lua file of the script
client_scripts{
  "cl_discord.lua"
}