fx_version 'cerulean'
game 'gta5'
author 'British Studios'
description 'British Studios - British Radio Stations'

supersede_radio "RADIO_02_POP" { url = "https://icecast.thisisdax.com/HeartLondonMP3", volume = 0.5, name = "Heart FM" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://icecast.thisisdax.com/HeartDanceMP3", volume = 0.5, name = "Heart Dance" }
supersede_radio "RADIO_04_PUNK" { url = "https://radio.virginradio.co.uk/stream?ref=rf", volume = 0.5, name = "Virgin Radio" }
supersede_radio "RADIO_05_TALK_01" { url = "https://icecast.thisisdax.com/LBCLondonMP3", volume = 0.5, name = "LBC London" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://icecast.thisisdax.com/BigTop40MP3", volume = 0.5, name = "Big Top 40" }
supersede_radio "RADIO_12_REGGAE" { url = "https://stream.simulatorradio.com/320", volume = 0.5, name = "Simulator Radio" }
supersede_radio "RADIO_13_JAZZ" { url = "https://icecast.thisisdax.com/CapitalMP3", volume = 0.5, name = "Capital FM" }
supersede_radio "RADIO_07_DANCE_01" { url = "https://icecast.thisisdax.com/CapitalDanceMP3", volume = 0.5, name = "Capital Dance" }
supersede_radio "RADIO_14_DANCE_02" { url = "https://n04a-eu.rcs.revma.com/hyyz8327ptzuv?rj-ttl=5&rj-tok=AAABeKQ63i4A6BuRmhKFNfDSgA", volume = 0.5, name = "Star Radio" }
supersede_radio "RADIO_15_MOTOWN" { url = "http://icecast.thisisdax.com/RadioXLondonMP3", volume = 0.5, name = "Radio X" }
supersede_radio "RADIO_17_FUNK" { url = "	http://icecast.thisisdax.com/GoldMP3", volume = 0.5, name = "Gold Radio" }
supersede_radio "RADIO_20_THELAB" { url = "https://icecast.thisisdax.com/CapitalXTRAReloadedMP3", volume = 0.5, name = "Capital XTRA Reloaded" }
supersede_radio "RADIO_21_DLC_XM17" { url = "https://oreo.truckstopradio.co.uk/radio/8000/radio.mp3", volume = 0.5, name = "Truckstop Radio" }
supersede_radio "RADIO_22_DLC_BATTLE_MIX1_RADIO"  { url = "https://playoutonestreaming.com/proxy/essex?mp=/stream&=&&___cb=960754092070041", volume = 0.5, name = "Radio Essex" }

file "index.html"

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
