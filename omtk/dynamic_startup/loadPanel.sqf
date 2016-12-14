omtk_ds_get_OB_limit = {
	_OBs = missionNamespace getVariable ["OMTK_LM_" + toUpper([side player] call omtk_get_side) + "_OB", []];
	_limit = _OBs select 0 select 1;
	if ((_OBs select 0 select 0) == "PER_GROUP") then {
		_nb_squads = 0;
		{ if ((side leader _x) == side player) then { _nb_squads = _nb_squads + 1 }; } forEach allGroups; 
		_limit = (_OBs select 0 select 1) * (_nb_squads - 1);
	};
	_limit;
};

_results = [];
_still_found = true;
_side = [side player] call omtk_get_side;
_idx = 0;
while {_still_found} do {
	_idx = _idx + 1;
	_spawn_id = _side + "_spawn_" + str(_idx);
	_spawn = missionNamespace getVariable [_spawn_id, nil];
	if (!isNil("_spawn")) then {
		lbAdd [1500, "Spawn " + str(_idx)];
	}
	else {
		_still_found = false;
	};
};

_OBs = missionNamespace getVariable ["OMTK_LM_" + toUpper([side player] call omtk_get_side) + "_OB", []];
_obIdx = 0;	
{
	if (_obIdx > 0) then {
		_text = format[(_x select 0) + " (x%1 max)", _x select 1];
		_index = lbAdd [1501, _text];
		lbSetData [1501, _index, str(_obIdx)];
	} else {
		_limit = call omtk_ds_get_OB_limit;
		_text = format["Orders of Battle: choose your vehicles (x%1 max)", _limit];
		ctrlSetText [1801, _text];
	};
	_obIdx = _obIdx + 1;
} forEach _OBs;

_text = format["Available Vehicles (%1)", lbSize 1501];
ctrlSetText [1000, _text];


omtk_ds_select_vehicles = {
	_OBs = missionNamespace getVariable ["OMTK_LM_" + toUpper([side player] call omtk_get_side) + "_OB", []];
	_index = lbCurSel 1501;
	_total_limit = call omtk_ds_get_OB_limit;
	_class_limit = _OBs select (_index + 1) select 1;
	
	_already_selected = 0;
	for "_i" from 0 to (lbSize 1502) do {
		_data = lbData [1502, _i];
		if (_data == str(_index + 1)) then {
			_already_selected = _already_selected + 1; 
		};
	};

	if (_index > -1 && _total_limit > lbSize 1502 && _already_selected < (_OBs select (_index + 1) select 1)) then {
		_text = format[(_OBs select (_index + 1) select 0) + " (x%1 max)", (_OBs select (_index + 1) select 1)];
		_indexInsert = lbAdd [1502, _text];
		lbSetData [1502, _indexInsert, str(_index + 1)];
		lbSort ((uiNamespace getVariable "InteractiveStartUp") displayCtrl 1502);
		_text = format["Selected Vehicles (%1)", lbSize 1502];
		ctrlSetText [1001, _text];
	};
};

omtk_ds_unselect_vehicles = {
	lbDelete [1502, lbCurSel 1502];
	_text = format["Selected Vehicles (%1)", lbSize 1502];
	ctrlSetText [1001, _text];
};


omtk_ds_get_vehicles = {
	_OBs = missionNamespace getVariable ["OMTK_LM_" + toUpper([_this select 0] call omtk_get_side) + "_OB", []];
	_OBs;
};


omtk_ds_remove_unused_vehicles = {
	_side_color = [_this select 0] call omtk_get_side;
	_filter = _this select 1;
	
	_inventory_class = [];
	_inventory_quantity = [];
	for "_i" from 0 to (lbSize 1502) do {
		_data = lbData [1502, _i];
		_OBs = call omtk_ds_get_vehicles;
		_OB_index = parseNumber _data;
		
		{
			_class = _x;
			_index = _inventory_class find _class;
			if (_index < 0) then {
				_inventory_class pushBack _class;
				_inventory_quantity pushBack 1;
			} else {
				_new_qty = (_inventory_quantity select _index) + 1;
				_inventory_quantity set [_index, _new_qty];
			};
		} forEach ((_OBs select _OB_index) select 2);
	};
	
	{
		_ignored = _x getVariable ["omtk_ignore", -1];
		_spawn_id = _x getVariable ["omtk_" + _side_color + "_spawn", -1];

		if (!isNil("_x") && (_ignored < 0) && (_spawn_id > -1)) then {
			if (_filter != _spawn_id) then {
				deleteVehicle _x;
			} else {
				_class = typeOf _x;
				_index = _inventory_class find _class;
				if (_index >= 0) then {
					_quantity = _inventory_quantity select _index;
					if (_quantity > 0) then {
						_inventory_quantity set [_index, _quantity - 1];
						["Vehicle for " + _side_color + ": " + _class, "INTERACTIVE", false] remoteExec ["omtk_log"]; 
					} else {
						deleteVehicle _x;
					};
				} else {
					deleteVehicle _x;
				};
			};
		};
		
	} forEach vehicles;
};


omtk_ds_teleport = {
	_side = _this select 0;
	_spawn_id = _this select 1;
	
	["Teleport to spawn '" + _spawn_id + "'", "INTERACTIVE", false] call omtk_log;
	_spawn = missionNamespace getVariable [_spawn_id, nil];
  _units = [];
	{
		if ((side _x) == (_side)) then {
			_units pushBack _x;
		};
	} forEach allUnits;
	
	[_units, (getPos _spawn), 2] call omtk_mass_teleport;	
};


omtk_ds_get_spawn_flags = {
	_results = [];
	_still_found = true;
	_side_color = [_this select 0] call omtk_get_side;
	_idx = 0;
	while {_still_found} do {
		_idx = _idx + 1;
		_spawn_id = _side_color + "_spawn_" + str(_idx);
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

omtk_ds_remove_ace_menu = {
	_class = typeOf player;
	if (call omtk_is_using_ACEmod && _class in OMTK_DS_CHIEF_CLASSES) then {
		[player, 1, ["ACE_SelfActions", "OMTK_INTERACTIVE_MENU"]] call ace_interact_menu_fnc_removeActionFromObject;
	};
};

omtk_ds_remove_spawn_flags = {
	{	deleteVehicle _x;	} forEach ([_this select 0] call omtk_ds_get_spawn_flags);
};


omtk_ds_side_is_ready = {
	_side = side player;

	("[OMTK] Side " + str(_side) + " ready for warmup !") remoteExecCall ["systemChat"];
	_omtk_ds_ready_west = missionNamespace getVariable ["omtk_ds_ready_west", false];
	_omtk_ds_ready_east = missionNamespace getVariable ["omtk_ds_ready_east", false];
	
	switch (_side) do {
			case east: { _omtk_ds_ready_east = true; };
			case west: { _omtk_ds_ready_west = true; };
			default {
				["unknown side for omtk_ds_ready", "ERROR", true] call omtk_log;
			};
	};

	missionNamespace setVariable ["omtk_ds_ready_west", _omtk_ds_ready_west];
	missionNamespace setVariable ["omtk_ds_ready_east", _omtk_ds_ready_east];
	publicVariable "omtk_ds_ready_west";
	publicVariable "omtk_ds_ready_east";
		
	if (_omtk_ds_ready_west && _omtk_ds_ready_east) then {
			remoteExecCall ["omtk_unlock_vehicles", 2, false];
			remoteExecCall ["omtk_load_warmup", 0, true];
	};
};

omtk_ds_end_process = {
	[side player, (_this select 0)] call omtk_ds_remove_unused_vehicles;
	call omtk_ds_side_is_ready;
	remoteExec["omtk_ds_remove_ace_menu", (side player), true];
	closeDialog 0;	
};

omtk_ds_process = {
	_side_color = [side player] call omtk_get_side;
	_already_processed = missionNamespace getVariable ["omtk_ds_" + _side_color + "_interactive_process", false];
	if (!_already_processed) then {
		
		missionNamespace setVariable ["omtk_ds_" + _side_color + "_interactive_process", true];
		publicVariable "omtk_ds_" + _side_color + "_interactive_process";
		
		_side_color = [side player] call omtk_get_side;
		_selected_spawn = _side_color + "_spawn_0";
		
		_index = lbCurSel 1500;
		_nb_items = lbSize 1500;
		if (_nb_items > 0) then {
			if (_index < 0) then {
				for "_i" from 0 to (lbSize 1500) do { lbSetColor [1500, _i, [1, 0, 0, 1]] };
			} else {
				_selected_spawn = _side_color + "_spawn_" + str(_index + 1);
				[side player, _selected_spawn] call omtk_ds_teleport;
				[side player] call omtk_ds_remove_spawn_flags;
				[_index + 1] call omtk_ds_end_process;
			};
		} else {
			[0] call omtk_ds_end_process;
		};
				
	} else {
			["Interactive startup already processed", "INTERACTIVE", true] call omtk_log;
			closeDialog 0;
	};
	
};
