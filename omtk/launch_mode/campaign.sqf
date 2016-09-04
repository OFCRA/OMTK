OMTK_LM_CHOSEN_SPAWN_FOR_PLAYER = 0;

omtk_lm_teleport = {
	_side = [_this select 1] call omtk_get_side;
	_spawn_id = _side + "_spawn_" + str(_this select 0);
	OMTK_LM_CHOSEN_SPAWN_FOR_PLAYER = (_this select 0);
	
	["Teleport to spawn '" + _spawn_id + "'", "CAMPAIGN", false] call omtk_log;
	_spawn = missionNamespace getVariable [_spawn_id, nil];
   	_units = [];
	{
		if ((side _x) == (side player)) then {
			_units pushBack _x;
		};
	} forEach allUnits;
	
	{
		_spawn_number = _x getVariable ["omtk_" + _side + "_spawn", 0];
		if (_spawn_number > 0) then {
			if (_spawn_number == (_this select 0)) then {
				_x lock 0;
			} else {
				_x lock 3;
			};
		};
	} foreach vehicles;
	
	[_units, (getPos _spawn), 2] call omtk_mass_teleport;	
};

omtk_lm_get_vehicles = {
	_OBs = nil;
	switch (side player) do {
		case west: { _OBs = OMTK_LM_BLUEFOR_OB; };
		case east: { _OBs = OMTK_LM_REDFOR_OB; };
	};
	_OBs;
};

omtk_lm_remove_spawn_flags = {
	{	deleteVehicle _x;	} forEach (call omtk_lm_get_spawn_flags);
	{
			_flag = missionNamespace getVariable [_x, nil];
			if (!isNil("_flag")) then {
				deleteVehicle _flag;
			};
	} forEach ['bluefor_spawn_0', 'redfor_spawn_0'];
};

omtk_lm_remove_static_vehicles = {
	_side = [side player] call omtk_get_side;
	{	
		_flags_number = [] call omtk_lm_get_spawn_flags;
		for "_i" from 1 to (count _flags_number) do {
			if (_i != OMTK_LM_CHOSEN_SPAWN_FOR_PLAYER) then {
				_spawn_id = _side + "_spawn_" + str(_i);
				_is_on_another_spawn = _x getVariable [_spawn_id, 0];
				if (_is_on_another_spawn > 0) then {
					if (!isNil("_x")) then {
						deleteVehicle _x;
					};
				};
			};
		};
	} foreach vehicles;
};

omtk_lm_continue_startup = {		
	if (("OMTK_MODULE_WARM_UP" call BIS_fnc_getParamValue) > 0) then {
		execVM "omtk\warm_up\main.sqf";
	} else {
		{
			_locked_by_omtk = _x getVariable ["omtk_lock", 0];
			if (_locked_by_omtk > 0) then {
				_x lock 0;
			};
		} foreach vehicles;
		if (("OMTK_MODULE_SCORE_BOARD" call BIS_fnc_getParamValue) > 0) then {	execVM "omtk\score_board\main.sqf"; };
	};
};

omtk_lm_side_is_ready = {
	_side = side player;

	("[OMTK] Side " + str(_side) + " ready for warmup !") remoteExecCall ["systemChat"];
	_omtk_lm_ready_west = missionNamespace getVariable ["omtk_lm_ready_west", false];
	_omtk_lm_ready_east = missionNamespace getVariable ["omtk_lm_ready_east", false];
	
	switch (_side) do {
			case east: { _omtk_lm_ready_east = true; };
			case west: { _omtk_lm_ready_west = true; };
			default {
				["unknown side for omtk_lm_ready", "ERROR", true] call omtk_log;
			};
	};

	missionNamespace setVariable ["omtk_lm_ready_west", _omtk_lm_ready_west];
	missionNamespace setVariable ["omtk_lm_ready_east", _omtk_lm_ready_east];
	publicVariable "omtk_lm_ready_west";
	publicVariable "omtk_lm_ready_east";
	
	call omtk_lm_remove_spawn_flags;
	call omtk_lm_remove_static_vehicles;
	
	if (_omtk_lm_ready_west && _omtk_lm_ready_east) then {
			[] remoteExec ["omtk_lm_continue_startup", 0, true];
	};
};


omtk_lm_add_OBs = {
	_index = _this select 0;
	_spawn_id = _this select 1;
	["loading OB num " + str(_index) + " on spawn " + str(_spawn_id), "INFO", false] call omtk_log;
	_side = [side player] call omtk_get_side;
	_spawn_name = _side + "_spawn_" + str(_spawn_id);
	_trigger_name = _side + "_vehicles_" + str (_spawn_id);
	_trigger = missionNamespace getVariable [_trigger_name, nil];
	_trigger_pos = getPos _trigger;
	_OBs = [] call omtk_lm_get_vehicles;
	_OBs = _OBs select _index;
	_idx = 0;
	_distance = 15;
	_angle = 0;
	_round_limit = 360;
	
	{
		if (_idx > 0) then {
			_quantity = _x select 0;
			_clazz = _x select 1;
			["loading " + str (_quantity) + "x " + str (_clazz) + " at " + _trigger_name, "INFO", false] call omtk_log;
			for "_i" from 1 to _quantity do {
				if (_angle >= _round_limit) then {
					_distance = _distance + 20;
					_angle = 0;
				};
				_pos =  [(_trigger_pos select 0) - _distance * sin(_angle),(_trigger_pos select 1) - _distance * cos(_angle)];
				_vehicle = _clazz createVehicle (_pos);
				_vehicle setVariable [_spawn_name, 1];
				_vehicle lock 2;
				_vehicle setVariable ["omtk_lock", 1];
				_angle = _angle + 90;
			};
		};
		_idx = _idx + 1;
	} forEach _OBs;
};

omtk_lm_get_spawn_flags = {
	_results = [];
	_still_found = true;
	_side = [(side player)] call omtk_get_side;
	_idx = 0;
	while {_still_found} do {
		_idx = _idx + 1;
		_spawn_id = _side + "_spawn_" + str(_idx);
		_spawn = missionNamespace getVariable [_spawn_id, nil];
		if (!isNil("_spawn")) then {
			_results pushBack _spawn;
		}
		else {
			_still_found = false;
		};
	};
	_results;
};

omtk_lm_campaign_mode = {
	
	if (isServer) then {	
		{
			if ( (locked _x) < 2) then {
				_x lock 2;
				_x setVariable ['omtk_lock', 1];
			};
	 	} foreach vehicles;
	};

	_class = typeOf player;
	if (hasInterface && _class in ["B_officer_F", "O_officer_F", "B_Soldier_SL_F"]) then {
		_side = [(side player)] call omtk_get_side;
		_base_spawn = missionNamespace getVariable [_side + "_spawn_0", nil];
		if (!isNil("_base_spawn")) then {
			_flags = call omtk_lm_get_spawn_flags;
			_OBs = [] call omtk_lm_get_vehicles;
			_idx = 0;
			{
				_spawn = _x;
				_idx = _idx + 1;
				_spawn_name = _spawn getVariable ["omtk_spawn", str(_idx)];
				["Add spawn '" + _spawn_name + "'", "CAMPAIGN", false] call omtk_log;
					
				_base_spawn addAction["<t color='#0000FF'>Spawn in " + _spawn_name + "</t>", {[(_this select 3 select 0), (_this select 3 select 1)] remoteExec ["omtk_lm_teleport", 2, false];}, [_idx, (side player)] ];	 
				_spawn addAction["<t color='#0000FF'>return to Base</t>", {[(_this select 3 select 0), (_this select 3 select 1)] remoteExec ["omtk_lm_teleport", 2, false];}, [0, (side player)] ];
				_spawn addAction["<t color='#0000FF'>side is ready</t>", {call omtk_lm_side_is_ready;}];
			
				_obIdx = 0;
				{ 
					_spawn addAction["<t color='#0000FF'>Load " + (_x select 0) + "</t>", { [(_this select 3 select 0),(_this select 3 select 1)] call omtk_lm_add_OBs;}, [_obIdx, _idx]];
					_obIdx = _obIdx + 1;
					} forEach _OBs;
					} forEach _flags;
		} else {
			["Base spawn is not found", "CAMPAIGN", false] call omtk_log;
		};
	};
	
};
