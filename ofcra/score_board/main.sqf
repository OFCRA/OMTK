////////// NE PAS TOUCHER EN DESSOUS

diag_log "[OFCRA] INFO: setting mission time-line...";
systemChat "Setting mission time-line";

if (isServer) then {
	_endHour   = OFCRA_SC_DUREE_MISSION select 0;
	_endMinute = OFCRA_SC_DUREE_MISSION select 1;
	_endSecond = OFCRA_SC_DUREE_MISSION select 2;
	_ofcra_mission_duration = 3600*_endHour + 60*_endMinute + _endSecond;

	_initHour = floor daytime;
	_initMinute = floor ((daytime - _initHour) * 60);
	_initSecond = floor (((((daytime) - (_initHour))*60) - _initMinute)*60);

	_ofcra_mission_endTime = (_initHour + _endHour)*3600 + (_initMinute + _endMinute)*60 + _initSecond + _endSecond;
	missionNamespace setVariable ["ofcra_mission_endTime", _ofcra_mission_endTime];

	_ofcra_mission_endTime_hour = floor (_ofcra_mission_endTime/3600);
	_ofcra_mission_endTime_minute = floor ((_ofcra_mission_endTime - (3600*_ofcra_mission_endTime_hour)) / 60);
	_ofcra_mission_endTime_second = _ofcra_mission_endTime - (3600*_ofcra_mission_endTime_hour) - (60*_ofcra_mission_endTime_minute);

	_end_time_txt = format ["%1h%2m%3s",_ofcra_mission_endTime_hour,_ofcra_mission_endTime_minute,_ofcra_mission_endTime_second];
	_end_time_txt = format ["<t shadow='1' shadowColor='#CC0000'>Fin de mission : %1</t>", _end_time_txt];
	_end_time_txt = parseText _end_time_txt;
	
	_ofcra_mission_end_time_txt = composeText [_end_time_txt];
	missionNamespace setVariable ["ofcra_mission_end_time_txt",_ofcra_mission_end_time_txt];
	publicVariable "ofcra_mission_end_time_txt";
	
	KK_fnc_setTimeout = {
	    private "_tr";
	    _tr = createTrigger [
        	"EmptyDetector",
        	[0,0,0]
    	];
    	_tr setTriggerTimeout [
	        _this select 2,
        	_this select 2,
        	_this select 2,
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

	_timeout = [ofcra_scoreboard_display, [], _ofcra_mission_duration] call KK_fnc_setTimeout;
};


// Display end misison time to client
sleep 5;
_ofcra_mEnd = missionNamespace getVariable "ofcra_mission_end_time_txt";

if (!isNil "_ofcra_mEnd") then {
	[_ofcra_mEnd,0,0,10,2] spawn BIS_fnc_dynamicText;
};

diag_log "[OFCRA] INFO: mission time-line setting done.";