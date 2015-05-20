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
	[[],"ofcra_fn_compute_scoreboard",true,true] call BIS_fnc_MP;
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
			_res = [_obj select 5, _side, 1, _obj select 4] call ofcra_isInArea;
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "HORS_ZONE":	{
			_res = [_obj select 5, _side, 0, _obj select 4] call ofcra_isInArea;
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "ACTION":	{
			_ofcra_sc_scores = missionNamespace getVariable "ofcra_sc_scores";			
			_res = (_ofcra_sc_scores select _index) ;
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		case "ACTION_DISPUTEE":	{
			//["objectif BLUEFOR","INFO"] call ofcra_fnc_log;
		};
		
		default	{
			["type d'objectif inconnu","ERROR"] call ofcra_fnc_log;
		};
	};
	
	_res;
};


ofcra_isInArea = {
	private["_subArr","_subject","_value","_side","_mode","_count","_res","_type"];
		
	_subject = _this select 0 select 0;	
	_value = _this select 0 select 1;
	_side = _this select 1;
	_mode = _this select 2;
	_area = _this select 3;
	_res = false;
	
	switch(_subject) do {
		case "BLUEFOR":	{ 
			_count = 0;
			_bEff = count ofcra_bluefor_survivors;
			_res = (_bEff >= _value);
		};
		case "REDFOR":	{ 
			_count = 0;
			_rEff = count ofcra_redfor_survivors;
			_res = (_rEff >= _value);
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
		};
		case "REDFOR":	{ 
			_count = 0;
			_rEff = count ofcra_redfor_survivors;
			_res = (_rEff >= _value);
		};
		
		case "DIFF": { 
			_bEff = count ofcra_bluefor_survivors;
			_rEff = count ofcra_redfor_survivors;
			if (_side == West) then { _res = (_bEff - _rEff) >= _value; }
			else {_res = (_rEff - _bEff) >= _value; };
		};
		
		case "ID_OBJET": { 
			_res = true;
			{
				_target = [0,0,0] nearestObject _x;	
				_r = alive _target;
				if (_mode < 1) then { _r = !_r; };
				if (!_r) then {_res = false;};
			} foreach _value;
		};
		
		case "UNITE": {
			_res = true;
			{
				_target = missionNamespace getVariable [_x , objNull];
				_r = alive _target;
				if (_mode < 1) then { _r = !_r; };
				if (!_r) then {_res = false;};
			} foreach _value;
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



ofcra_fn_closeAction = {
	private["_obj", "_id", "_proc", "_index", "_dur", "_ofcra_sc_scores","_num"];
	
	_obj = _this select 0;
	_id = _this select 2;
	
	_dur = _this select 3 select 0;
	_proc = _this select 3 select 1;
	_index = _this select 3 select 2;
	
	// TODO Display progress bar using _dur, then..
		
	_obj removeAction _id;
	_index = _index + 2;
	
	ofcra_sc_scores = missionNamespace getVariable "ofcra_sc_scores";
	ofcra_sc_scores set [_index, true];
	missionNamespace setVariable ["ofcra_sc_scores", ofcra_sc_scores];
	publicVariableServer "ofcra_sc_scores";
	
	_bool = isNil _proc;
	if (!_bool) then { [] call _proc; };
};