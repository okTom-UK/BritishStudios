local blips = {
     {title="Example Blip 1", colour=0, id=361, x = 262.92, y = -1260.04, z = 29.14},
     {title="Example Blip 2", colour=0, id=361, x = 617.23, y = 270.59, z = 103.09},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

--
-- Refrence: https://docs.fivem.net/docs/game-references/blips/
--
-- title = Name of the Blip that appears on the map.
--
-- colour = the Colour in which the blip is use refrence for help.
--
-- x y z = the coordinates in which the blip displays
-- 
-- Ensure you put a comma after every blip!
--