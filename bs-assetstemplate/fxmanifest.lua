fx_version 'cerulean'

game 'gta5'
author 'British Studios'
description 'British Studios - Asset Folder Template  (Merge your Resources)'

client_scripts {
	'client/*.lua',
	}
	
server_scripts {
	'server/*.lua',
	}

shared_script 'config/*.lua'

files {
	'data/**/carcols.meta',
	'data/**/carvariations.meta',
	'data/**/handling.meta',
	'data/**/vehiclelayouts.meta',
	'data/**/vehicles.meta',
	'visualsettings.dat'
}

data_file 'VEHICLE_LAYOUTS_FILE'	'data/**/vehiclelayouts.meta'
data_file 'HANDLING_FILE'			'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE'	'data/**/vehicles.meta'
data_file 'CARCOLS_FILE'			'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE'	'data/**/carvariations.meta'