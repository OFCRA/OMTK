["tactical_paradrop start", "INFO", false] call omtk_log;


omtk_tp_add_action = {
		hint "paradrop available";
		_action = ["OMTK_PARADROP","Paradrop","omtk\tactical_paradrop\img\paradrop.paa",{call omtk_tp_paradrop_on;},{true;}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
		[omtk_tp_paradrop_off, [], ("OMTK_MODULE_TACTICAL_PARADROP_TIME_LIMIT" call BIS_fnc_getParamValue)*60] call KK_fnc_setTimeout;	
};


if (hasInterface) then {
	omtk_tp_create_vehicle = {
		(_this select 0) createVehicle position player;
	};


	omtk_tp_paradrop_on = {
		onMapsingleClick "[] call omtk_tp_jump;";
	};


	omtk_tp_paradrop_off = {
		[player, 1, ["ACE_SelfActions", "OMTK_PARADROP"]] call ace_interact_menu_fnc_removeActionFromObject;
		onMapsingleClick '';
	};


	omtk_tp_is_jump_valid = {
		_result = false;
		_restrictions = missionNamespace getVariable ["OMTK_TP_" + toUpper([side player] call omtk_get_side) + "_RESTRICTIONS", []];
		
		if (count _restrictions < 1) then {
			_result = true;
		} else {
			{
				_restriction = _x;
				_distance = [(_restriction select 0), (_restriction select 1)] distance2D (_this select 0);
				_result = _result || (_distance <= (_restriction select 2));
			} forEach _restrictions;
		};
		_result;
	};
	

	omtk_tp_jump = {
		_now = date;
		_start = missionNamespace getVariable ["omtk_wu_start_time", missionStart select [0,5]];
		_now_time = (_now select 3) * 60 + (_now select 4);
		_start_time = (_start select 3) * 60 + (_start select 4);
		
		if (_now_time < _start_time) then {
			_now_time = _now_time + 24*60;
		};
		
		if ((_now_time - _start_time) <= ("OMTK_MODULE_TACTICAL_PARADROP_TIME_LIMIT" call BIS_fnc_getParamValue)) then {
			if ([_pos] call omtk_tp_is_jump_valid) then {
				player setPos [(_pos select 0),(_pos select 1), ("OMTK_MODULE_TACTICAL_PARADROP_ALTITUDE" call BIS_fnc_getParamValue)];
				[] call omtk_tp_paradrop_off;
			} else {
				hint "Forbidden zone, try again !";
			};
		} else {
			hint "too late to jump !";
			[] call omtk_tp_paradrop_off;
		};

		true;
	};

	_delay = missionNamespace getVariable ["OMTK_TP_" + toUpper([side player] call omtk_get_side) + "_DELAY", 0];
	if (_delay == 0) then {
		_canJump = false;
		switch ("OMTK_MODULE_TACTICAL_PARADROP" call BIS_fnc_getParamValue) do {
			case 1: {
				_canJump = (side player == west);
			};
			case 2: {
				_canJump = (side player == east);
			};
			case 3:	{
				_canJump = true;
			};
		};

		if (_canJump) then {
			call omtk_tp_add_action;
		};
	};
};

if (isServer) then {

	omtk_tp_add_bluefor_action = {
		remoteExec ["omtk_tp_add_action", west, false];
	};
	
	omtk_tp_add_redfor_action = {
		remoteExec ["omtk_tp_add_action", east, false];
	};
	
	if (OMTK_TP_BLUEFOR_DELAY > 0) then { 
		[omtk_tp_add_bluefor_action, [], OMTK_TP_BLUEFOR_DELAY] call KK_fnc_setTimeout;
		["tactical_paradrop planned for BLUEFOR in " + str(OMTK_TP_BLUEFOR_DELAY), "INFO", false] call omtk_log; 
	};
	if (OMTK_TP_REDFOR_DELAY  > 0) then {
		[omtk_tp_add_redfor_action,  [], OMTK_TP_REDFOR_DELAY] call KK_fnc_setTimeout;
		["tactical_paradrop planned for REDFOR in " + str(OMTK_TP_REDFOR_DELAY), "INFO", false] call omtk_log; 
	};
};


["tactical_paradrop end", "INFO", false] call omtk_log;
