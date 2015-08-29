////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_log = {
	private ["_msg", "_tag", "_chat"];
	_msg  = _this select 0;
	_tag = _this select 1;
	_chat = _this select 2;
	
	if (_chat) then { systemChat ('[MT] ' + _msg)};
	diag_log  ('[OFCRA] ' + _tag + ': ' + _msg);
};

ofcra_fnc_mission_end = {
	createDialog "ScoreBoard";
};


ofcra_computing_display = {
	_computing_txt = format ["<t shadow='1' shadowColor='#CC0000'>- FIN DE MISSION -<br />calcul des scores en cours...</t>"];
	_computing_txt = parseText _computing_txt;
	_computing_txt = composeText [_computing_txt];
	[_computing_txt,0,0,8,2] spawn BIS_fnc_dynamicText;
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


ofcra_fn_compute_scoreboard = {
	
	ofcra_bluefor_survivors = [];
	ofcra_redfor_survivors = [];
	
	{
		_name = name _x; // test if name is OK TODO
		_side = side _x;
		_class = typeOf _x;
		_dmg = damage _x;

		if(_side==east) then {
			if (alive _x) then { [ofcra_redfor_survivors, _name] call BIS_fnc_arrayPush; };
		}
		else {
			if(_side==west) then { 
				if (alive _x) then { [ofcra_bluefor_survivors, _name] call BIS_fnc_arrayPush; };
			};
		};
	} forEach allUnits;
	
	missionNamespace setVariable ["ofcra_bluefor_survivors", ofcra_bluefor_survivors];
	missionNamespace setVariable ["ofcra_redfor_survivors", ofcra_redfor_survivors];
	
	publicVariable "ofcra_redfor_survivors";
	publicVariable "ofcra_bluefor_survivors";
	
	ofcra_sc_scores = missionNamespace getVariable "ofcra_sc_scores";
	ofcra_sc_objectives = missionNamespace getVariable "ofcra_sc_objectives";
	ofcra_sc_flags = missionNamespace getVariable "ofcra_sc_flags";

	_index = 1;
	{
		_index = _index + 1;
		_res = [_x, _index] call ofcra_fnc_getObjectiveResult;
		ofcra_sc_scores set [_index, _res];
		if (_res) then {
			_idx = 0;
			if ((_x select 1) == east) then { _idx = 1;};
			_val = (_x select 0) + (ofcra_sc_scores select _idx);
			ofcra_sc_scores set [_idx, _val];
		};
	} foreach ofcra_sc_objectives;
			
	missionNamespace setVariable ["ofcra_sc_objectives", ofcra_sc_objectives];
	missionNamespace setVariable ["ofcra_sc_scores", ofcra_sc_scores];
	
	publicVariable "ofcra_sc_objectives";
	publicVariable "ofcra_sc_scores";
};

	
ofcra_fnc_getObjectiveResult = {
	private["_obj","_index","_side", "_type","_res"];
	
	_obj = _this select 0;
	_index = _this select 1;
	_side = _obj select 1;
	_type = _obj select 2;
	_res = false;
	
	switch(_type) do {
		case "SURVIE":	{ 
			_res = [_obj select 4, _side, 1] call ofcra_isAlive;
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "DESTRUCTION":	{
			_res = [_obj select 4, _side, 0] call ofcra_isAlive;
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "DANS_ZONE":	{
			//["objectif " + (str (_obj select 3)) + " for SIDE=" + (str _side),"INFO"] call ofcra_fnc_log;
			_res = [_obj select 5, _side, 1, _obj select 4] call ofcra_isInArea;
			
		};
		case "HORS_ZONE":	{
			_res = [_obj select 5, _side, 0, _obj select 4] call ofcra_isInArea;
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "ACTION":	{
			_ofcra_sc_scores = missionNamespace getVariable "ofcra_sc_scores";			
			_res = (_ofcra_sc_scores select _index);
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "ACTION_DISPUTEE":	{
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "FLAG":	{
			_res = true;
			_ofcra_sc_flags = missionNamespace getVariable "ofcra_sc_flags";
			{
				_log = "Get " + str _x + " / " + str (count _ofcra_sc_flags) + " : " + str (_ofcra_sc_flags select _x);
				//[ _log, "INFO"] call ofcra_fnc_log;
				if (!(_ofcra_sc_flags select _x)) then { _res = false; };
			} forEach (_obj select 4);		
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		
		default	{
			["type d'objectif inconnu","ERROR"] call ofcra_fnc_log;
		};
	};
	
	_res;
};

ofcra_side_in_area = {
	private["_blue","_red","_r"];
	_blue = 0;
	_red = 0;
	{
		_r = [(_this select 0), (position _x)] call BIS_fnc_inTrigger;
		if (_r and alive _x) then {
			_side = side _x;		
			switch((side _x)) do {
				case West:	{ _blue = _blue + 1; };
				case East:	{ _red = _red + 1; };
			};
		};
	} foreach allUnits;
	["Zone: " +  (_this select 0) + " BLUE=" + (str _blue) + " - RED=" + (str _red),"OBJECTIVE"] call ofcra_fnc_log;
	[_blue, _red];
};


ofcra_isInArea = {
	private["_subArr","_subject","_value","_Sside","_mode","_count","_res","_type"];
		
	_subject = _this select 0 select 0;	
	_value = _this select 0 select 1;
	_Sside = _this select 1;
	_mode = _this select 2;
	_area = _this select 3;
	_res = false;
	
	switch(_subject) do {
		case "BLUEFOR":	{ 
			//_eff = [_area] call ofcra_side_in_area;
			//_res = (((_eff select 0) - (_eff select 1)) >= _value);
		};
		case "REDFOR":	{ 
			//_eff = [_area] call ofcra_side_in_area;
			//_res = (((_eff select 1) - (_eff select 0)) >= _value);
		};
		
		case "DIFF": { 
			_eff = [_area] call ofcra_side_in_area;
			if (_Sside == West) then { _res = ((_eff select 0) - (_eff select 1)) >= _value; }
			else {_res = ((_eff select 1) - (_eff select 0)) >= _value; };
			
			if (_mode < 1) then { _res = !_res; };
		};
		
		case "LISTE": {
			_res = true;
			{
				_target = missionNamespace getVariable [_x , objNull];	
				_position = position _target;
				_r = [_area, _position] call BIS_fnc_inTrigger;
				if (_mode < 1) then { _r = !_r; };
				if (!_r) then {_res = false;};
			} foreach _value;
		};
		default	{
			_res = false;
			["Sujet de l'objectif inconnu: %1", _subject] call BIS_fnc_error;		
		};		
	};
	_res;
};


ofcra_isAlive = {
	private["_subArr","_subject","_value","_side","_mode","_count","_res","_type"];
	
	_subArr = _this select 0;
	_subject = _subArr select 0;	
	_value = _subArr select 1;
	_side = _this select 1;
	_mode = _this select 2;
	_res = false;
	
	switch(_subject) do {
		case "BLUEFOR":	{ 
			_count = 0;
			_bEff = count ofcra_bluefor_survivors;
			_res = (_bEff >= _value);
			if (_mode < 1) then { _res = !_res; };
		};
		case "REDFOR":	{ 
			_count = 0;
			_rEff = count ofcra_redfor_survivors;
			_res = (_rEff >= _value);
			if (_mode < 1) then { _res = !_res; };
		};
		
		case "DIFF": { 
			_bEff = count ofcra_bluefor_survivors;
			_rEff = count ofcra_redfor_survivors;
			if (_side == West) then { _res = (_bEff - _rEff) >= _value; }
			else {_res = (_rEff - _bEff) >= _value; };
		};
		
		case "LISTE": {
			_res = true;
			{
				_target = nil;
			
				_type = typeName _x;
				if (_type == "STRING") then   { _target = missionNamespace getVariable [_x , objNull]; };
				if (_type == "SCALAR") then {	_target = [0,0,0] nearestObject _x;	};
				
				_r = alive _target;
				if (_mode < 1) then { _r = !_r; };
				if (!_r) then {_res = false;};
			} foreach _value;
		};
		
		default	{
			_res = false;
			["Sujet de l'objectif inconnu: %1", _subject] call BIS_fnc_error;		
		};		
	};
	_res;
};


ofcra_fn_setObjectiveResult = {
	ofcra_sc_scores = missionNamespace getVariable "ofcra_sc_scores";
	ofcra_sc_scores set [_this select 0, _this select 1];
	["action " + str(_this select 0) + " = " + str(_this select 1), "OBJECTIVE", false] call ofcra_fnc_log;
	missionNamespace setVariable ["ofcra_sc_scores", ofcra_sc_scores];
	publicVariableServer "ofcra_sc_scores";
};

ofcra_fn_setFlagResult = {
	_ofcra_sc_flags = missionNamespace getVariable "ofcra_sc_flags";
	_ofcra_sc_flags set [_this select 0, _this select 1];
	["flag " + str(_this select 0) + " = " + str(_this select 1), "OBJECTIVE", false] call ofcra_fnc_log;
	missionNamespace setVariable ["ofcra_sc_flags", _ofcra_sc_flags];
	publicVariableServer "ofcra_sc_flags";
};


ofcra_fn_closeAction = {
	private["_obj", "_id", "_caller", "_proc", "_index", "_dur", "_ofcra_sc_scores","_num"];
	
	_obj = _this select 0;
	_caller = _this select 1;
	_id = _this select 2;
	
	_dur = _this select 3 select 0;
	_proc = _this select 3 select 1;
	_index = _this select 3 select 2;
	
	// TODO Display progress bar using _dur, then..
	
	_obj removeAction _id;
	_index = _index + 2;
	
	[_index, true] call ofcra_fn_setObjectiveResult;
	
	_bool = isNil _proc;
	if (!_bool) then { [_obj,_caller] call _proc; };
};

