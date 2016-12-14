omtk_ds_mk_trigger_index = 0;
omtk_ds_mk_objective_index = 0;


omtk_ds_mk_add_base = {
	_flag_name = "omtk_ds_mk_base_" + str (_this select 1);
	_flag_class = "";

	switch(_this select 1) do {
    	case east: { _flag_class = "rhs_Flag_Russia_F"; };	
    	case west: { _flag_class = "Flag_US_F"; };
    	case resistance: { _flag_class = "Flag_Green_F"; };
    	default { _flag_class = "Flag_White_F"; };
 	};
	_flag = _flag_class createVehicle (_this select 0);
	[_this select 1, _this select 0] call BIS_fnc_addRespawnPosition;
	missionNamespace setVariable [_flag_name, _flag];
	publicVariable _flag_name;
};


omtk_ds_mk_add_respawn = {
	[_this select 1, _this select 0] call BIS_fnc_addRespawnPosition;
};


omtk_ds_mk_add_capture_area = {
	_radius = (_this select 1) / 2;
	_points = _radius / 5;
	
	omtk_ds_mk_trigger_index = omtk_ds_mk_trigger_index + 1;
	
	_markerName = "CAP AREA" + str (omtk_ds_mk_trigger_index);
	_marker = createMarker [_markerName, (_this select 0)];
	_markerName setMarkerColor "ColorBlack";
	_markerName setMarkerSize [_radius, _radius];
	_markerName setMarkerShape "ELLIPSE";
	
	_trg = createTrigger ["EmptyDetector", (_this select 0)];
	_trg setTriggerArea [_radius, _radius, 0, false];
	_trg setVariable ["name", _markerName];
			
	_obj = [_points, "BLUEFOR+REDFOR", "INSIDE", "Capture Area" + str (omtk_ds_mk_trigger_index), _trg, ["DIFF", 1]];
	OMTK_SB_LIST_OBJECTIFS pushBack _obj;
	(_this select 2) setMarkerText "CAP " + str (omtk_ds_mk_trigger_index);
};


omtk_ds_mk_objective_notify = {
	_msg = "Objective completed !";
	hint _msg;
};


omtk_ds_mk_add_objective = {
 	omtk_ds_mk_objective_index = omtk_ds_mk_objective_index + 1;
	
	_flag_class = "";
	_side_name = "";
	_marker_color = "";
	
	switch(_this select 1) do {
    	case east: {
    		_flag_class = "rhs_Flag_Russia_F";
    		_side_name = "REDFOR";
    		_marker_color = "ColorRed";
    	};    	
    	case west: {
    		_flag_class = "Flag_US_F";
    		_side_name = "BLUEFOR";
    		_marker_color = "ColorBlue";
    	};
    	default { _flag_class = "Flag_White_F"; };
 	};
 	
	_flag = _flag_class createVehicle (_this select 0);

	_obj = [3, _side_name, "ACTION", "Flag " + str(omtk_ds_mk_objective_index), _flag, 0, {[] call omtk_ds_mk_objective_notify;}];
	OMTK_SB_LIST_OBJECTIFS pushBack _obj;
	(_this select 2) setMarkerText "Flag " + str (omtk_ds_mk_objective_index);
	(_this select 2) setMarkerColor _marker_color;
};


omtk_ds_mk_teleport_to_Base = {

	_BlueforSpawn = _this select 0;
	_RedforSpawn = _this select 1;
	_GreenforSpawn = _this select 2;
	
	_BlueUnits = [];
	_RedUnits = [];
	_GreenUnits = [];

	{
		if ((side _x) == West) then {_BlueUnits pushBack _x;};
		if ((side _x) == East) then {_RedUnits pushBack _x;};
		if ((side _x) == Resistance) then {_Greens pushBack _x;};
	} forEach allUnits;
	
	if (!isNil("_BlueforSpawn")) then { [_BlueUnits, _BlueforSpawn, 2] call omtk_mkd_mass_teleport; };
	if (!isNil("_RedforSpawn")) then { [_RedUnits, _RedforSpawn, 2] call omtk_mkd_mass_teleport; };
	if (!isNil("_GreenforSpawn")) then { [_GreenUnits, _GreenforSpawn, 2] call omtk_mkd_mass_teleport; };
};


omtk_ds_process_markers_mode = {
	missionNamespace setVariable ["omtk_ds_teleports_completed", 0];
	publicVariable "omtk_ds_teleports_completed";
	
	OMTK_SB_LIST_OBJECTIFS = [];
	publicVariable "OMTK_SB_LIST_OBJECTIFS";
	
	_spawn_locations = [nil,nil,nil];
	_idx = 0;
	{
			_mtext = markerText _x;
			_mpos = getMarkerPos _x;
			_idx = _idx + 1;
			["Marker='" + (str _x) + "' Text='" + _mtext + "'", "INFO", false] call omtk_log;
			
			switch(_mtext) do {
				case "r_spawn":    {
					["Add REDFOR base at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, east] remoteExecCall ["omtk_ds_mk_add_base", 2];
					_spawn_locations set [1, _mpos];
				};
				case "b_spawn":    {
					["Add BLUEFOR base at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, west] remoteExecCall ["omtk_ds_mk_add_base", 2];
					_spawn_locations set [0, _mpos];
				};
				case "g_spawn":    {
					["Add RESISTANCE base at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, resistance] remoteExecCall ["omtk_ds_mk_add_base", 2];
					_spawn_locations set [2, _mpos];
				};
				case "cap_20":    {
					["Add 20m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, 20, _x] remoteExecCall ["omtk_ds_mk_add_capture_area", 2];	
				};
				case "cap_50":    {
					["Add 50m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, 50, _x] remoteExecCall ["omtk_ds_mk_add_capture_area", 2];
				};
				case "cap_100":    {
					["Add 100m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, 100, _x] remoteExecCall ["omtk_ds_mk_add_capture_area", 2];
				};
				case "cap_150": 	{
					["Add 100m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, 150, _x] remoteExecCall ["omtk_ds_mk_add_capture_area", 2];
				};
				case "cap_200":    {
					["Add 200m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, 200, _x] remoteExecCall ["omtk_ds_mk_add_capture_area", 2];
				};
				case "r_obj":    {
					["Add REDFOR objective at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, east, _x] remoteExecCall ["omtk_ds_mk_add_objective", 2];
				};
				case "b_obj":    {
					["Add BLUEFOR objective at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, west, _x] remoteExecCall ["omtk_ds_mk_add_objective", 2];
				};
				case "g_obj":    {
					["Add RESISTANCE objective at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, resistance] remoteExecCall ["omtk_ds_mk_add_objective", 2];
				};
				case "b_respawn":    {
					["Add BLUEFOR start at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, west, _x] remoteExecCall ["omtk_ds_mk_add_respawn", 2];
				};
				case "r_respawn":    {
					["Add BLUEFOR start at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, east, _x] remoteExecCall ["omtk_ds_mk_add_respawn", 2];
				};
				case "g_respawn":    {
					["Add RESISTANCE start at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
					[_mpos, resistance, _x] remoteExecCall ["omtk_ds_mk_add_respawn", 2];
				};
				default    { };
			};
	} forEach allMapMarkers;
		
	_spawn_locations remoteExecCall ["omtk_ds_mk_teleport_to_Base", 2];
	remoteExecCall ["omtk_load_warmup", 0, true];
};


omtk_ds_markers_mode = {
	if (hasInterface) then {
		[player, "OMTK_MARKERS_COM_MENU", nil, nil, ""] call BIS_fnc_addCommMenuItem;	
	};

	if (isServer) then {
		[] call omtk_ds_process_markers_mode;
	};
	
};
