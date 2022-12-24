const customRadios = [];
let isPlaying = false;
let index = -1;
let volume = GetProfileSetting(306) / 10;
let previousVolume = volume;

SetRadioStationDisabled("RADIO_34_DLC_HEI4_KULT", true);
SetRadioStationDisabled("RADIO_35_DLC_HEI4_MLR", true);
SetRadioStationDisabled("RADIO_11_TALK_02", true);
SetRadioStationDisabled("RADIO_35_DLC_HEI4_MLR", true);
SetRadioStationDisabled("RADIO_16_SILVERLAKE", true);
SetRadioStationDisabled("RADIO_34_DLC_HEI4_KULT", true);
SetRadioStationDisabled("RADIO_18_90S_ROCK", true);
SetRadioStationDisabled("RADIO_23_DLC_XM19_RADIO", true);
SetRadioStationDisabled("RADIO_01_CLASS_ROCK", true);
SetRadioStationDisabled("RADIO_06_COUNTRY", true);
SetRadioStationDisabled("RADIO_08_MEXICAN", true);
SetRadioStationDisabled("RADIO_37_MOTOMAMI", true);
SetRadioStationDisabled("RADIO_36_AUDIOPLAYER", true);

for (let i = 0, length = GetNumResourceMetadata("bs-radio", "supersede_radio"); i < length; i++) {
    const radio = GetResourceMetadata("bs-radio", "supersede_radio", i);

    if (!availableRadios.includes(radio)) {
        console.error(`bs-radio: ${radio} is an invalid radio.`);
        continue;
    }

    try {
        const data = JSON.parse(GetResourceMetadata("bs-radio", "supersede_radio_extra", i));
        if (data !== null) {
            customRadios.push({
                "isPlaying": false,
                "name": radio,
                "data": data
            });
            if (data.name) {
                AddTextEntry(radio, data.name);
            }
        } else {
            console.error(`bs-radio: Missing data for ${radio}.`);
        }
    } catch (e) {
        console.error(e);
    }
}

RegisterNuiCallbackType("bs-radio:ready");
on("__cfx_nui:bs-radio:ready", (data, cb) => {
    SendNuiMessage(JSON.stringify({ "type": "create", "radios": customRadios, "volume": volume }));
    previousVolume = -1;
});

const PlayCustomRadio = (radio) => {
    isPlaying = true;
    index = customRadios.indexOf(radio);
    ToggleCustomRadioBehavior();
    SendNuiMessage(JSON.stringify({ "type": "play", "radio": radio.name }));
};

const StopCustomRadios = () => {
    isPlaying = false;
    ToggleCustomRadioBehavior();
    SendNuiMessage(JSON.stringify({ "type": "stop" }));
};

const ToggleCustomRadioBehavior = () => {
    SetFrontendRadioActive(!isPlaying);

    if (isPlaying) {
        StartAudioScene("DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE");
    } else {
        StopAudioScene("DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE");
    }
};

setTick(() => {
    if (IsPlayerVehicleRadioEnabled()) {
        let playerRadioStationName = GetPlayerRadioStationName();

        let customRadio = customRadios.find((radio) => {
            return radio.name === playerRadioStationName;
        });

        if (!isPlaying && customRadio) {
            PlayCustomRadio(customRadio);
        } else if (isPlaying && customRadio && customRadios.indexOf(customRadio) !== index) {
            StopCustomRadios();
            PlayCustomRadio(customRadio);
        } else if (isPlaying && !customRadio) {
            StopCustomRadios();
        }
    } else if (isPlaying) {
        StopCustomRadios();
    }

    volume = GetProfileSetting(306) / 10;
    if (previousVolume !== volume) {
        SendNuiMessage(JSON.stringify({ "type": "volume", "volume": volume }));
        previousVolume = volume;
    }
});
