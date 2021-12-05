resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"
fx_version 'cerulean'
game 'gta5'
author 'British Studios'
description 'British Radio Stations edit by British Studios in collabartion with Trappy-UK'
version '1.0.0'

supersede_radio "RADIO_12_REGGAE" { url = "http://simulatorradio.stream/stream", volume = 0.1, name = "Simulator Radio" }
supersede_radio "RADIO_13_JAZZ" { url = "http://icecast.thisisdax.com/CapitalMP3", volume = 0.1, name = "Capital UK" }
supersede_radio "RADIO_02_POP" { url = "http://icecast.thisisdax.com/HeartTeessideMP3", volume = 0.1, name = "Heart FM" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "http://icecast.thisisdax.com/ClassicFMMP3", volume = 0.1, name = "Classic FM" }
supersede_radio "RADIO_06_COUNTRY" { url = "https://stream-al.planetradio.co.uk/clyde1.mp3", volume = 0.1, name = "Clyde" }
supersede_radio "RADIO_14_DANCE_02" { url = "https://n04a-eu.rcs.revma.com/hyyz8327ptzuv?rj-ttl=5&rj-tok=AAABeKQ63i4A6BuRmhKFNfDSgA", volume = 0.1, name = "Star FM" }
supersede_radio "RADIO_15_MOTOWN" { url = "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1_mf_p", volume = 0.1, name = "BBC Radio 1" }
supersede_radio "RADIO_18_90S_ROCK" { url = "http://stream.live.vc.bbcmedia.co.uk/bbc_radio_two?s=1617478323&e=1617492723&h=91df78cbf184354294a472f3649a6cfd", volume = 0.1, name = "BBC Radio 2" }
supersede_radio "RADIO_08_MEXICAN" { url = "http://tx.planetradio.co.uk/icecast.php?i=forth1.mp3", volume = 0.1, name = "Forth" }
supersede_radio "RADIO_07_DANCE_01" { url = "http://icecast.thisisdax.com/CapitalDance", volume = 0.1, name = "Capital Dance" }
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://tx.planetradio.co.uk/icecast.php?i=planetrock.mp3", volume = 0.1, name = "Planet Rock" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "http://icecast.thisisdax.com/Heart80sMP3", volume = 0.1, name = "Heart 80's" }
supersede_radio "RADIO_16_SILVERLAKE" { url = "http://edge-bauerabsolute-14-gos1.sharp-stream.com/absoluteradio.mp3", volume = 0.1, name = "Absolute Radio" }
supersede_radio "RADIO_04_PUNK" { url = "http://radio.virginradio.co.uk/stream?ref=rf", volume = 0.1, name = "Virgin Radio" }
supersede_radio "RADIO_05_TALK_01" { url = "http://icecast.thisisdax.com/LBCLondonMP3", volume = 0.1, name = "Leading Britians Converstaion" }
supersede_radio "RADIO_17_FUNK" { url = "https://stream.reachradio.co.uk/", volume = 0.1, name = "Reach Radio" }
supersede_radio "RADIO_11_TALK_02" { url = "http://stream.live.vc.bbcmedia.co.uk/bbc_radio_five_live?s=1617478203&e=1617492603&h=140ee6ea257bf1dc6a6f45eac5821d8c", volume = 0.1, name = "BBC Radio 5 Live" }
supersede_radio "RADIO_20_THELAB" { url = "http://icecast.thisisdax.com/CapitalXTRANationalMP3", volume = 0.1, name = "Capital XTRA" }
supersede_radio "RADIO_19_USER" { url = "http://stream.live.vc.bbcmedia.co.uk/bbc_1xtra?s=1617654990&e=1617669390&h=56f985a891870de2ab11d2fb8d46818f", volume = 0.1, name = "BBC Radio 1 Xtra" }


files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}

