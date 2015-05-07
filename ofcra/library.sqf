////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_log = {
	private ["_msg", "_level"];
	_msg  = _this select 0;
	_level = _this select 1;
	
	[_msg,"systemChat",true,true] call BIS_fnc_MP;
	_log_line = '[OFCRA] ' + _level + ': ' + _msg;
	diag_log  _log_line;
};

ofcra_fnc_mission_end = {
	createdialog "ScoreBoard";
	waitUntil { !dialog };
};


ofcra_scoreboard_display = {
	[] call ofcra_fn_compute_scoreboard;
	[[],"ofcra_fnc_mission_end",true,true] call BIS_fnc_MP;
};

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

