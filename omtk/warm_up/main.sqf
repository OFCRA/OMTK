OMTK_WU_CHIEF_CLASSES = ["B_officer_F", "B_Soldier_SL_F", "O_officer_F", "O_Soldier_SL_F"]; // CAN BE CUSTOMIZED

["warm_up start", "INFO", false] call omtk_log;

omtk_wu_time = ("OMTK_MODULE_WARM_UP" call BIS_fnc_getParamValue);
omtk_wu_radius = ("OMTK_MODULE_WARM_UP_DISTANCE" call BIS_fnc_getParamValue);
omtk_wu_restrict_area_trigger = nil;
omtk_wu_com_menu_item_id = 0;


omtk_wu_start_warmup = {
	player allowDamage false;
	omtk_wu_restrict_area_trigger = createTrigger ["EmptyDetector", omtk_wu_spawn_location, false];
	omtk_wu_restrict_area_trigger setTriggerArea [omtk_wu_radius, omtk_wu_radius, 0, false];
	omtk_wu_restrict_area_trigger setTriggerActivation [format["%1", side player], "NOT PRESENT", true];
	_trg_out_action = "['Leaving spawn location', 'INFO'] call omtk_log;hint 'GO BACK TO YOUR POSITION !';
	[omtk_wu_move_player_at_spawn_if_required, [], 10] call KK_fnc_setTimeout;";
	omtk_wu_restrict_area_trigger setTriggerStatements ["player in thisList", "", _trg_out_action];

	_omtk_mission_warmup_minute = floor(omtk_wu_time/60);
	_omtk_mission_warmup_second = (omtk_wu_time - (60*_omtk_mission_warmup_minute));
	_omtk_mission_warmup_txt = "";
	if (_omtk_mission_warmup_minute > 0) then {
		_omtk_mission_warmup_txt = str(_omtk_mission_warmup_minute) + " min.";
	};
	if (_omtk_mission_warmup_second > 0) then {
		_omtk_mission_warmup_txt = _omtk_mission_warmup_txt + " " + str(_omtk_mission_warmup_second) + " sec.";
	};
	
	_omtk_notification_txt = format ["<t shadow='1' shadowColor='#00A6DD'>- - - WARMUP: " + _omtk_mission_warmup_txt + " - - -</t>"];
	_omtk_notification_txt = parseText _omtk_notification_txt;
	_omtk_notification_txt = composeText [_omtk_notification_txt];
	[_omtk_notification_txt,0,0,25,2] spawn BIS_fnc_dynamicText;
};


omtk_wu_move_player_at_spawn_if_required = {
	_distance = (position player) distance omtk_wu_spawn_location;
	if (_distance > omtk_wu_radius) then {
		["teleport player '" + name player + "' back to his initial position", 'CHEAT', true] call omtk_log;
		player setPos omtk_wu_spawn_location;
	};
};


omtk_wu_end_warmup = {
	if (hasInterface) then {
		player allowDamage true;
		deleteVehicle omtk_wu_restrict_area_trigger;
		if ((typeOf player) in OMTK_WU_CHIEF_CLASSES) then {
			[player, omtk_wu_com_menu_item_id] call BIS_fnc_removeCommMenuItem;
			if (call omtk_is_using_ACEmod) then {
				[player, 1, ["ACE_SelfActions", "OMTK_END_WARMUP"]] call ace_interact_menu_fnc_removeActionFromObject;
			};
		};
	};
	if (isServer) then {
		missionNamespace setVariable ["omtk_wu_is_completed", true];
		publicVariable "omtk_wu_is_completed";
		call omtk_unlock_vehicles;
	};
	
	// Continue to load modules...
	call omtk_load_post_warmup;
};


omtk_wu_end_warmup_remote = {
	[] remoteExec ["omtk_wu_end_warmup", 0, true];
};


omtk_wu_display_notification = {
	_by = _this select 0;
	_minute = floor(_by/60);
	_second = _by - (_minute*60);
	_res = "";
	if (_minute > 0) then {_res = _res + (str _minute) + " min. "; };
	if (_second > 0) then {_res = _res + (str _second) + " sec."; };
	if (_by == 0) then { _res = "GO GO GO !!!"; };
	("START: " + _res) remoteExecCall ["hint"];
};

omtk_wu_fn_launch_game = {
	
	if (isServer) then {
		("[OMTK] warmup interrupted !") remoteExecCall ["systemChat"];
		_omtk_wu_notification_triggers = missionNamespace getVariable "omtk_wu_triggers";
		{
			deleteVehicle _x;
		} forEach _omtk_wu_notification_triggers;
		[omtk_wu_end_warmup_remote, [], 30] call KK_fnc_setTimeout;
		[30] call omtk_wu_display_notification;
		[omtk_wu_display_notification, [10], 20] call KK_fnc_setTimeout;
		[omtk_wu_display_notification, [0], 30] call KK_fnc_setTimeout;
		["Start in 30 sec.", "WARMUP", true] call omtk_log;
	};
};

omtk_wu_set_ready = {
	_side = side player;

	("[OMTK] Side " + str(_side) + " is READY !") remoteExecCall ["systemChat"];
	_omtk_wu_ready_west = missionNamespace getVariable ["omtk_wu_ready_west", false];
	_omtk_wu_ready_east = missionNamespace getVariable ["omtk_wu_ready_east", false];
	
	switch (_side) do {
			case east: { _omtk_wu_ready_east = true; };
			case west: { _omtk_wu_ready_west = true; };
			default {
				["unknown side for omtk_wu_ready", "ERROR", true] call omtk_log;
			};
	};

	if (_omtk_wu_ready_west && _omtk_wu_ready_east) then { 
			[] remoteExec ["omtk_wu_fn_launch_game", 2];
	} else {
		missionNamespace setVariable ["omtk_wu_ready_west", _omtk_wu_ready_west];
		missionNamespace setVariable ["omtk_wu_ready_east", _omtk_wu_ready_east];
		publicVariable "omtk_wu_ready_west";
		publicVariable "omtk_wu_ready_east";
	};
};


if (isServer) then {
	_omtk_wu_notification_triggers = [];
	{
		if (_x < omtk_wu_time) then {
			_trg = [omtk_wu_display_notification, [_x], (omtk_wu_time - _x)] call KK_fnc_setTimeout;
			[_omtk_wu_notification_triggers, _trg] call BIS_fnc_arrayPush;
		};
	} forEach [0, 10, 30, 60, 120, 180, 300, 600, 900, 1200, 1800, 2700];
	_trg = [omtk_wu_end_warmup_remote, [], omtk_wu_time] call KK_fnc_setTimeout;
	[_omtk_wu_notification_triggers, _trg] call BIS_fnc_arrayPush;
	missionNamespace setVariable ["omtk_wu_triggers", _omtk_wu_notification_triggers];
	publicVariableServer "omtk_wu_triggers";
	call omtk_lock_vehicles;
};

if (hasInterface) then {
	_omtk_wu_is_completed = missionNamespace getVariable ["omtk_wu_is_completed", false];
	if (!_omtk_wu_is_completed) then {
		omtk_wu_spawn_location = getPos player;
		[] call omtk_wu_start_warmup;

		_class = typeOf player;
		if (_class in OMTK_WU_CHIEF_CLASSES) then {
			omtk_wu_com_menu_item_id = [player, "OMTK_END_WARMUP_COM_MENU", nil, nil, ""] call BIS_fnc_addCommMenuItem;
			if (call omtk_is_using_ACEmod) then {
				_action = ["OMTK_END_WARMUP","End Warm-up","omtk\warm_up\img\warm_up-end.paa",{[] call omtk_wu_set_ready;},{true;}] call ace_interact_menu_fnc_createAction;
				[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
			};
		};
	};
};

["warm_up end", "INFO", false] call omtk_log;
