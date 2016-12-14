omtk_sb_mission_end = {
	if (hasInterface) then {
		waitUntil { (missionNamespace getVariable "omtk_sb_ready4result") == 1};
		createDialog "ScoreBoard";
	};
};


omtk_sb_start_mission_end = {
  remoteExec ["omtk_sb_mission_end"]; 
};


omtk_sb_computing_display = {
	if (hasInterface) then {
		_computing_txt = format ["<t shadow='1' shadowColor='#CC0000'>- MISSION FINISHED -<br />Scores computing in progress...</t>"];
		_computing_txt = parseText _computing_txt;
		_computing_txt = composeText [_computing_txt];
		[_computing_txt,0,0,15,0] spawn BIS_fnc_dynamicText;
	};
};


omtk_sb_compute_scoreboard = {
	remoteExec ["omtk_sb_computing_display"];
	omtk_sb_bluefor_survivors = [];
	omtk_sb_redfor_survivors = [];
	
	{
		_name = name _x; // test if name is OK TODO
		_side = side _x;
		_class = typeOf _x;
		_dmg = damage _x;

		if(_side==east) then {
			if ((damage player) < 0.975) then { [omtk_sb_redfor_survivors, _name] call BIS_fnc_arrayPush; };
		}
		else {
			if(_side==west) then { 
				if ((damage player) < 0.975) then { [omtk_sb_bluefor_survivors, _name] call BIS_fnc_arrayPush; };
			};
		};
	} forEach allPlayers;
	
	missionNamespace setVariable ["omtk_sb_bluefor_survivors", omtk_sb_bluefor_survivors];
	missionNamespace setVariable ["omtk_sb_redfor_survivors", omtk_sb_redfor_survivors];
	
	publicVariable "omtk_sb_redfor_survivors";
	publicVariable "omtk_sb_bluefor_survivors";
	
	omtk_sb_scores = missionNamespace getVariable "omtk_sb_scores";
	omtk_sb_objectives = missionNamespace getVariable "omtk_sb_objectives";
	omtk_sb_flags = missionNamespace getVariable "omtk_sb_flags";

	_index = 1;
	{
		_index = _index + 1;
		_res = [_x, _index] call omtk_sb_getObjectiveResult;
		omtk_sb_scores set [_index, _res];
		if (_res) then {
			_idx = 0;
			if ((_x select 1) == east) then { _idx = 1;};
			_val = (_x select 0) + (omtk_sb_scores select _idx);
			omtk_sb_scores set [_idx, _val];
		};
	} foreach omtk_sb_objectives;
			
	missionNamespace setVariable ["omtk_sb_objectives", omtk_sb_objectives];
	missionNamespace setVariable ["omtk_sb_scores", omtk_sb_scores];
	
	publicVariable "omtk_sb_objectives";
	publicVariable "omtk_sb_scores";
	["scores computed","[INFO]",true] call omtk_log;
	_omtk_sb_ready4result = 1;
	missionNamespace setVariable ["omtk_sb_ready4result", _omtk_sb_ready4result];
	publicVariable "omtk_sb_ready4result";
};

	
omtk_sb_getObjectiveResult = {
	private["_obj","_index","_side", "_type","_res"];
	
	_obj = _this select 0;
	_index = _this select 1;
	_side = _obj select 1;
	_type = _obj select 2;
	_res = false;
	
	switch(_type) do {
		case "SURVIVAL":	{ 
			_res = [_obj select 4, _side, 1] call omtk_isAlive;
		};
		case "DESTRUCTION":	{
			_res = [_obj select 4, _side, 0] call omtk_isAlive;
			//["objectif BLUEFOR","INFO",false] call omtk_log;
		};
		case "INSIDE":	{
			//["objectif " + (str (_obj select 3)) + " for SIDE=" + (str _side),"INFO",false] call omtk_log;
			_res = [_obj select 5, _side, 1, _obj select 4] call omtk_isInArea;
		};
		case "OUTSIDE":	{
			_res = [_obj select 5, _side, 0, _obj select 4] call omtk_isInArea;
			//["objectif BLUEFOR","INFO",false] call omtk_log;
		};
		case "ACTION":	{
			_omtk_sb_scores = missionNamespace getVariable "omtk_sb_scores";			
			_res = (_omtk_sb_scores select _index);
			//["objectif BLUEFOR","INFO",false] call omtk_log;
		};
		case "TRIGGER":	{
			//["objectif BLUEFOR","INFO",false] call omtk_log;
		};
		case "FLAG":	{
			_res = true;
			_omtk_sb_flags = missionNamespace getVariable "omtk_sb_flags";
			{
				_x = _x select 0;
				_log = "Get " + str _x + " / " + str (count _omtk_sb_flags) + " : " + str (_omtk_sb_flags select _x);
				//[ _log, "INFO",false] call omtk_log;
				if (!(_omtk_sb_flags select _x)) then { _res = false; };
			} forEach (_obj select 4);		
			//["objectif BLUEFOR","INFO",false] call omtk_log;
		};
		
		default	{
			["unkown objective type","ERROR",true] call omtk_log;
		};
	};
	
	_res;
};


omtk_side_in_area = {
	private["_blue","_red","_r"];
	_blue = 0;
	_red = 0;
	_areaName = _this select 0;
	_areaType = typeName _areaName;	
	_areaI = nil;
	
	if (_areaType == "STRING") then {
		_areaI = missionNamespace getVariable [_areaName, nil];
	} else {
		_areaI = _areaName;
		_areaName = _areaI getVariable "name";
	};
	
	if (isNil("_areaI")) then {
		["Zone '" + _areaName + "' not found !" ,"ERROR",true] call omtk_log;
	}
	else {
		{
			_r = [_areaI, (position _x)] call BIS_fnc_inTrigger;
			if (_r and alive _x) then {
				//["Unit: " +  (name _x) + " est vivant et dans la zone: " + _areaName,"OBJECTIVE",false] call omtk_log;
				_side = side _x;
				switch(_side) do {
					case West:	{ _blue = _blue + 1; };
					case East:	{ _red = _red + 1; };
					default { ["Unit: non comptabilisee pour camp inconnu: " + (str _side),"ERROR",false] call omtk_log; };
				};
			};
		} foreach allUnits;
	};
	["Zone: " +  _areaName + " BLUE=" + (str _blue) + " - RED=" + (str _red), "OBJECTIVE", false] call omtk_log;
	[_blue, _red];
};


omtk_isInArea = {
	private["_subArr","_subject","_value","_Sside","_mode","_count","_res","_type"];
		
	_subject = _this select 0 select 0;	
	_value = _this select 0 select 1;
	_Sside = _this select 1;
	_mode = _this select 2;
	_area = _this select 3;
	_res = false;
	
	switch(_subject) do {
		case "BLUEFOR":	{ 
			_eff = [_area] call omtk_side_in_area;
			_res = ((_eff select 0) >= _value);
		};
		case "REDFOR":	{ 
			_eff = [_area] call omtk_side_in_area;
			_res = ((_eff select 0) >= _value);
		};
		
		case "DIFF": { 
			_eff = [_area] call omtk_side_in_area;
			if (_Sside == West) then { _res = ((_eff select 0) - (_eff select 1)) >= _value; }
			else {_res = ((_eff select 1) - (_eff select 0)) >= _value; };
			
			if (_mode < 1) then { _res = !_res; };
		};
		
		case "LIST": {
			{
				_target = missionNamespace getVariable [_x , objNull];
				_areaObj = missionNamespace getVariable [_area , objNull];	
				_r = [_areaObj, (position _target)] call BIS_fnc_inTrigger;
				if (_mode < 1) then { _r = !_r; };
				_res = _r;
			} foreach _value;
		};
		case "MT_ID": {
			_items_found = [];
			{
				_id = _x getVariable ["mt_id", ""];
				if (_id in _value) then {
					["Found MT_ID " + (str _id),"INFO",false] call omtk_log;
					_items_found pushBack _id;
					_target = _x;
					_areaObj = missionNamespace getVariable [_area , objNull];	
					_r = [_areaObj, (position _target)] call BIS_fnc_inTrigger;
					if (_mode < 1) then { _r = !_r; };
					_res = _r;
				};
			} foreach allUnits;
			_missing = _value - _items_found;
			if (count _missing > 0) then {
				_res = false;
				["missing MT_ID","INFO",false] call omtk_log;
			};
		};
		default	{
			_res = false;
			["Sujet de l'objectif inconnu: %1", _subject] call BIS_fnc_error;		
		};		
	};
	_res;
};


omtk_isAlive = {
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
			_bEff = count omtk_sb_bluefor_survivors;
			_res = (_bEff >= _value);
			if (_mode < 1) then { _res = !_res; };
		};
		case "REDFOR":	{ 
			_count = 0;
			_rEff = count omtk_sb_redfor_survivors;
			_res = (_rEff >= _value);
			if (_mode < 1) then { _res = !_res; };
		};
		
		case "DIFF": { 
			_bEff = count omtk_sb_bluefor_survivors;
			_rEff = count omtk_sb_redfor_survivors;
			if (_side == West) then { _res = (_bEff - _rEff) >= _value; }
			else {_res = (_rEff - _bEff) >= _value; };
		};
		
		case "LIST": {
			_res = true;
			{
				_target = nil;
			
				_type = typeName _x;
				if (_type == "STRING") then   { _target = missionNamespace getVariable [_x , objNull]; };
				if (_type == "SCALAR") then {	_target = [0,0,0] nearestObject _x;	};
				
				_r = alive _target;
				if (_mode < 1) then { _r = !_r; };
				if (!_r) then {_res = false;};
				//["target =" +  (name _target) + " alive=" + (str _res),"OBJECTIVE",false] call omtk_log;
			} foreach _value;
		};
		case "OMTK_ID": {
			_res = true;
			_items_found = [];
			{
				_id = _x getVariable ["mt_id", ""];
				if (_id in _value) then {
					["Found MT_ID " + (str _id),"INFO",false] call omtk_log;
					_items_found pushBack _id;
					_target = _x;
					_r = alive _target;
					//if (_mode < 1) then { _r = !_r; };
					if (_r) then {_res = false;};
				};
			} foreach allUnits;
			_missing = _value - _items_found;
			if (count _missing > 0) then {
				if (_mode == 1) then { _res = false; };
				["missing MT_ID","INFO",false] call omtk_log;
			};
		};
		
		default	{
			_res = false;
			["Objective target is not found: %1", _subject] call BIS_fnc_error;		
		};		
	};
	_res;
};


omtk_setObjectiveResult = {
	omtk_sb_scores = missionNamespace getVariable "omtk_sb_scores";
	omtk_sb_scores set [_this select 0, _this select 1];
	//["action " + str(_this select 0) + " = " + str(_this select 1), "OBJECTIVE", false] call omtk_log;
	missionNamespace setVariable ["omtk_sb_scores", omtk_sb_scores];
	publicVariableServer "omtk_sb_scores";
};


omtk_setFlagResult = {
	_omtk_sb_flags = missionNamespace getVariable "omtk_sb_flags";
	_omtk_sb_flags set [_this select 0, _this select 1];
	//["flag " + str(_this select 0) + " = " + str(_this select 1), "OBJECTIVE", false] call omtk_log;
	missionNamespace setVariable ["omtk_sb_flags", _omtk_sb_flags];
	publicVariableServer "omtk_sb_flags";
};


omtk_closeAction = {
	private["_obj", "_id", "_caller", "_proc", "_index", "_dur", "_omtk_sb_scores","_num"];
	
	_obj = _this select 0;
	_caller = _this select 1;
	_id = _this select 2;
	
	_dur = _this select 3 select 0;
	_proc = _this select 3 select 1;
	_index = _this select 3 select 2;
	
	if (_dur > 0) then {
		createDialog "ActionProgress";
		
		_delay = 10;
		for "_i" from 0 to _delay do {
			sleep 1;
			((uiNamespace getVariable "InteractiveStartUp") displayCtrl 1999) progressSetPosition (_i / _delay);
			((uiNamespace getVariable "InteractiveStartUp") displayCtrl 1999) progressSetPosition (_i / _delay);
		};
		closeDialog 0;	
	};// TODO Display progress bar using _dur, then..
	
	["action: " + str(_id) + " is done", "OBJECTIVE", false] call omtk_log;
	
	_obj removeAction _id;
	_index = _index + 2;
	
	[_index, true] call omtk_setObjectiveResult;
	
	_bool = isNil _proc;
	if (!_bool) then { [_obj,_caller] call _proc; };
};
