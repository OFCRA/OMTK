_OFCRA_DUREE_MISSION = [0, 0, 20]; // [heures, minutes, secondes] au format 24


////////// NE PAS TOUCHER EN DESSOUS
diag_log "[OFCRA] INFO: setting mission time-line...";
systemChat "Setting mission time-line";

_endHour = _OFCRA_DUREE_MISSION select 0;
_endMinute = _OFCRA_DUREE_MISSION select 1;
_endSecond = _OFCRA_DUREE_MISSION select 2;
_duration = 3600*_endHour + 60*_endMinute + _endSecond - 1;

_initHour = floor daytime;
_initMinute = floor ((daytime - _initHour) * 60);
_initSecond = floor (((((daytime) - (_initHour))*60) - _initMinute)*60);

_endTime = (_initHour + _endHour)*3600 + (_initMinute + _endMinute)*60 + _initSecond + _endSecond - 1;

_hour = floor (_endTime/3600);
_minute = floor ((_endTime - (3600*_hour)) / 60);
_second = _endTime - (3600*_hour) - (60*_minute);

ofcra_end_mission_time = format ["%1h%2m%3s",_hour,_minute,_second];

_tx = format ["<t shadow='1' shadowColor='#ff0000'>Fin de mission : %1</t>", ofcra_end_mission_time];
_tx = parseText _tx;
_txt = composeText [_tx];

hintSilent  _txt;

sleep _duration;

ofcra_fnc_clients_side_mission_end = {
	cutRsc ["ScoreBoard","BLACK FADED"];
};
[[],"ofcra_fnc_clients_side_mission_end",true,false,false] call BIS_fnc_MP;

diag_log "[OFCRA] INFO: mission time-line setting done.";