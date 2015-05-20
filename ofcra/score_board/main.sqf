////////// NE PAS TOUCHER EN DESSOUS

diag_log "[OFCRA] INFO: setting mission time-line...";
systemChat "Setting mission time-line";

if (isServer) then {
	_endHour   = OFCRA_SC_DUREE_MISSION select 0;
	_endMinute = OFCRA_SC_DUREE_MISSION select 1;
	_endSecond = OFCRA_SC_DUREE_MISSION select 2;
	_ofcra_mission_duration = 3600*_endHour + 60*_endMinute + _endSecond - 1;

	_initHour = floor daytime;
	_initMinute = floor ((daytime - _initHour) * 60);
	_initSecond = floor (((((daytime) - (_initHour))*60) - _initMinute)*60);

	_ofcra_mission_endTime = (_initHour + _endHour)*3600 + (_initMinute + _endMinute)*60 + _initSecond + _endSecond;
	missionNamespace setVariable ["ofcra_mission_endTime", _ofcra_mission_endTime];

	_ofcra_mission_endTime_hour = floor (_ofcra_mission_endTime/3600);
	_ofcra_mission_endTime_minute = floor ((_ofcra_mission_endTime - (3600*_ofcra_mission_endTime_hour)) / 60);
	_ofcra_mission_endTime_second = _ofcra_mission_endTime - (3600*_ofcra_mission_endTime_hour) - (60*_ofcra_mission_endTime_minute);

	_txtFormat = "%1h%2m";
	if (_ofcra_mission_endTime_minute < 10) then {_txtFormat = "%1h0%2m"; };
	_end_time_txt = format [_txtFormat,_ofcra_mission_endTime_hour,_ofcra_mission_endTime_minute];
	_end_time_txt = format ["<t shadow='1' shadowColor='#CC0000'>Fin de mission : %1</t>", _end_time_txt];
	_end_time_txt = parseText _end_time_txt;
	
	_ofcra_mission_end_time_txt = composeText [_end_time_txt];
	missionNamespace setVariable ["ofcra_mission_end_time_txt",_ofcra_mission_end_time_txt];
	publicVariable "ofcra_mission_end_time_txt";
	
	_timeout = [ofcra_scoreboard_display, [], _ofcra_mission_duration] call KK_fnc_setTimeout;


	// OBJ
	_ofcra_sc_objectives = [];
	_ofcra_sc_scores = [0,0];

	{
		_side = _x select 1;
		
		switch(_side) do {
			case "BLUEFOR":	{
				_x set [1, West];
				[_ofcra_sc_objectives, _x] call BIS_fnc_arrayPush;
				[_ofcra_sc_scores, false]  call BIS_fnc_arrayPush;
			};
			case "REDFOR":	{
				_x set [1, East];
				[_ofcra_sc_objectives, _x] call BIS_fnc_arrayPush;
				[_ofcra_sc_scores, false]  call BIS_fnc_arrayPush;
			};
			case "BLUEFOR+REDFOR":	{
				_x set [1, West];
				[_ofcra_sc_objectives, _x] call BIS_fnc_arrayPush;
				[_ofcra_sc_scores, false]  call BIS_fnc_arrayPush;
				_x2 = + _x;
				_x2 set [1, East];
				[_ofcra_sc_objectives, _x2] call BIS_fnc_arrayPush;
				[_ofcra_sc_scores, false]  call BIS_fnc_arrayPush;
			};
			default	{
				["camp inconnu pour la creation de l'objectif","ERROR"] call ofcra_fnc_log;
			};
		};
		
	} foreach OFCRA_SC_LISTE_OBJECTIFS;
	
	missionNamespace setVariable ["ofcra_sc_objectives", _ofcra_sc_objectives];
	missionNamespace setVariable ["ofcra_sc_scores", _ofcra_sc_scores];
	
	publicVariable "ofcra_sc_scores";
	publicVariable "ofcra_sc_objectives";
};


sleep 3

execVM "ofcra\score_board\customActions.sqf";
_ofcra_sc_objectives = missionNamespace getVariable "ofcra_sc_objectives";

_index = -1;
{
	_index = _index + 1;
	_side = _x select 1;
	_type = _x select 2;
	
	if (side player == _side) then {
		switch(_type) do {
			case "ACTION":	{
				_tgt = _x select 4;
				_tgt = missionNamespace getVariable [_tgt, objNull];
				_txt = "<t color='#0000FF'>" + (_x select 3) + "</t>";
				_dur = _x select 5;
				_ext = _x select 6;
						
				_action = _tgt addAction[_txt, { call ofcra_fn_closeAction;}, [_dur, _ext, _index]];
			};
	
			case "ACTION_DISPUTEE":	{
				
			};
		};
	};
} foreach _ofcra_sc_objectives;


// Display end mission time to client
sleep 2;
_ofcra_mEnd = missionNamespace getVariable "ofcra_mission_end_time_txt";

if (!isNil "_ofcra_mEnd") then {
	[_ofcra_mEnd,0,0,10,2] spawn BIS_fnc_dynamicText;
};

noesckey = (findDisplay 1666) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"]; 

diag_log "[OFCRA] INFO: mission time-line setting done.";
