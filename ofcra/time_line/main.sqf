OFCRA_DUREE_MISSION = [0, 0, 5]; // [heures, minutes, secondes] au format 24


////////// NE PAS TOUCHER EN DESSOUS
diag_log "[OFCRA] INFO: setting mission time-line...";
systemChat "Setting mission time-line";

_endHour = OFCRA_DUREE_MISSION select 0;
_endMinute = OFCRA_DUREE_MISSION select 1;
_endSecond = OFCRA_DUREE_MISSION select 2;
ofcra_mission_duration = 3600*_endHour + 60*_endMinute + _endSecond - 1;

_initHour = floor daytime;
_initMinute = floor ((daytime - _initHour) * 60);
_initSecond = floor (((((daytime) - (_initHour))*60) - _initMinute)*60);

ofcra_mission_endTime = (_initHour + _endHour)*3600 + (_initMinute + _endMinute)*60 + _initSecond + _endSecond - 1;

ofcra_mission_endTime_hour = floor (ofcra_mission_endTime/3600);
ofcra_mission_endTime_minute = floor ((ofcra_mission_endTime - (3600*ofcra_mission_endTime_hour)) / 60);
ofcra_mission_endTime_second = ofcra_mission_endTime - (3600*ofcra_mission_endTime_hour) - (60*ofcra_mission_endTime_minute);

ofcra_mission_end_time_txt = format ["%1h%2m%3s",ofcra_mission_endTime_hour,ofcra_mission_endTime_minute,ofcra_mission_endTime_second];

_txt = format ["<t shadow='1' shadowColor='#ff0000'>Fin de mission : %1</t>", ofcra_mission_end_time_txt];
_pTxt = parseText _txt;
_txt = composeText [_pTxt];

[_txt,"hintSilent",true,true] call BIS_fnc_MP;

sleep ofcra_mission_duration;

ofcra_fnc_clients_side_mission_end = {
	cutRsc ["ScoreBoard","BLACK FADED"];
};

ofcra_show = {
	[[],"ofcra_fnc_clients_side_mission_end",true,true] call BIS_fnc_MP;
};


KK_fnc_setTimeout = {
    private "_tr";
    _tr = createTrigger [
        "EmptyDetector",
        [0,0,0]
    ];
    _tr setTriggerTimeout [
        ofcra_fnc_clients_side_mission_end,
        ofcra_fnc_clients_side_mission_end,
        ofcra_fnc_clients_side_mission_end,
        false
    ];
    _tr setTriggerStatements [
        "true",
        format [
            "deleteVehicle thisTrigger; %2 call %1", 
            _this select 0,
            _this select 1
        ],
        ""
    ];
    _tr
};
_timeout = [ofcra_show, []] call KK_fnc_setTimeout;

diag_log "[OFCRA] INFO: mission time-line setting done.";