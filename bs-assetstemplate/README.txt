This is British Studios Asset folder template - 
if you are trying to merge your server files 
so you can lower your resource count this is how!

1) bs-assetstemplate\client
Here is where you can put your Client Sided Files.

Make sure you call it cl_nameofresource.lua and NOT client.lua. 

Essentially you want to change the "nameofresource" to whatever
the script does for example cl_weapondamage which would 
essentially change your default weapon damage.

2) bs-assetstemplate\server
Here is where you can put your Server Sided Files.

Make sure you call it sv_nameofresource.lua and NOT server.lua.

Essentially you want to change the "nameofresource" to whatever
the script does for example sv_weapondamage which would 
essentially change your default weapon damage.

3) bs-assetstemplate\config
Here is where you can put your Config Files.

Make sure you call it cfg_nameofresource.lua and not config.lua.

Essentially you want to change the "nameofresource" to whatever
the script does for example cfg_weapondamage which would 
essentially change your default weapon damage.

4) bs-assetstemplate\stream
Here you will find multiple sub folders which are the following..

cars, default, eup, guns, icons, maps, props, shells, ui

These are all where you will put only files that need to be streamed!

If you add something with a "_manifest.ymf" then you have to change it too..
"_manifest_nameofmap.ymf" and you cannot use the same name for any map!

You would change "nameofmap" to the name of the map.

If you put a new map in create a new folder in the folder for example maps\nameofmap.

5) bs-assetstemplate\data

This is your car data folder, you can put car data here if you want to include all your
cars to your assets folder. When putting a data folder make sure to call it the car spawn code
for example ``bs-bmwm4`` then put the data inside the folder. We have made the fxmanifest register
every data file inside here anyway.

Any issues please feel free to open a ticket within the British Studios Discord. :)

-- © British Studios 2021
