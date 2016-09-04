omtk_lm_mk_trigger_index = 0;
omtk_lm_mk_objective_index = 0;
omtk_lm_mk_server_completed = false;

omtk_lm_mk_add_base = {
	_flag_name = "omtk_lm_mk_base_" + str (_this select 1);
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


omtk_lm_mk_add_respawn = {
	[_this select 1, _this select 0] call BIS_fnc_addRespawnPosition;
};


omtk_lm_mk_add_capture_area = {
	_radius = (_this select 1) / 2;
	_points = _radius / 5;
	
	omtk_lm_mk_trigger_index = omtk_lm_mk_trigger_index + 1;
	
	_markerName = "CAP AREA" + str (omtk_lm_mk_trigger_index);
	_marker = createMarker [_markerName, (_this select 0)];
	_markerName setMarkerColor "ColorBlack";
	_markerName setMarkerSize [_radius, _radius];
	_markerName setMarkerShape "ELLIPSE";
	
	_trg = createTrigger ["EmptyDetector", (_this select 0)];
	_trg setTriggerArea [_radius, _radius, 0, false];
	_trg setVariable ["name", _markerName];
			
	_obj = [_points, "BLUEFOR+REDFOR", "DANS_ZONE", "Capture Area" + str (omtk_lm_mk_trigger_index), _trg, ["DIFF", 1]];
	OMTK_SC_LISTE_OBJECTIFS pushBack _obj;
	(_this select 2) setMarkerText "CAP " + str (omtk_lm_mk_trigger_index);
};

omtk_lm_mk_objective_notify = {
	_msg = "Victory !";
	hint _msg;
};

omtk_lm_mk_add_objective = {
 	omtk_lm_mk_objective_index = omtk_lm_mk_objective_index + 1;
	//_flag_name = "omtk_lm_mk_obj_" + str (_this select 1) + "_" + str(omtk_lm_mk_objective_index);
	
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

	_obj = [3, _side_name, "ACTION", "Flag " + str(omtk_lm_mk_objective_index), _flag, 0, {[] call omtk_lm_mk_objective_notify;}];
	OMTK_SC_LISTE_OBJECTIFS pushBack _obj;
	(_this select 2) setMarkerText "Flag " + str (omtk_lm_mk_objective_index);
	(_this select 2) setMarkerColor _marker_color;
};


omtk_lm_mk_teleport_to_Base = {
	_BlueUnits = [];
	_RedUnits = [];
	_GreenUnits = [];
	
	["teleporting to base...3", "INFO", false] call omtk_log;
	
	{
		if ((side _x) == West) then {_BlueUnits pushBack _x;};
   		if ((side _x) == East) then {_RedUnits pushBack _x;};
	   	if ((side _x) == Resistance) then {_Greens pushBack _x;};
	} forEach allUnits;
	
	{
		_mtext = markerText _x;
    	_mpos = getMarkerPos _x;
		switch(_mtext) do {
	    	case "baseR": { [_RedUnits, _mpos, 2] call omtk_mkd_mass_teleport; };
   			case "baseB": { [_BlueUnits, _mpos, 2] call omtk_mkd_mass_teleport; };
   			case "baseG": { [_GreenUnits, _mpos, 2] call omtk_mkd_mass_teleport; };
			default {};
		};
	} forEach allMapMarkers;
};


omtk_lm_mk_continue_startup = {		
	if (("OMTK_MODULE_WARM_UP" call BIS_fnc_getParamValue) > 0) then {
		execVM "omtk\warm_up\main.sqf";
	} else {
		if (("OMTK_MODULE_SCORE_BOARD" call BIS_fnc_getParamValue) > 0) then {	execVM "omtk\score_board\main.sqf"; };
	};
};


omtk_lm_markers_mode = {
	
	OMTK_SC_LISTE_OBJECTIFS = [];
	
	if (isServer) then {	
		_idx = 0;
		{
	    	_mtext = markerText _x;
    		_mpos = getMarkerPos _x;
    		_idx = _idx + 1;
    	
	    	switch(_mtext) do {
		    	case "baseR":    {
    				[_mpos, east] call omtk_lm_mk_add_base;
    				["Add REDFOR base at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
	    		};
   				case "baseB":    {
	   				[_mpos, west] call omtk_lm_mk_add_base;
   					["Add BLUEFOR base at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
	   			};
	   			case "cap_20":    {
    				[_mpos, 20, _x] call omtk_lm_mk_add_capture_area;    				
	    			["Add 50m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
    			case "cap_50":    {
    				[_mpos, 50, _x] call omtk_lm_mk_add_capture_area;
	    			["Add 50m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
	    		case "cap_100":    {
	    			[_mpos, 100, _x] call omtk_lm_mk_add_capture_area;
		    		["Add 100m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
    			case "cap_150":    {
	    			[_mpos, 150, _x] call omtk_lm_mk_add_capture_area;
		    		["Add 100m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
    			case "cap_200":    {
    				[_mpos, 200, _x] call omtk_lm_mk_add_capture_area;
		    		["Add 200m CAPTURE zone at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
    			case "objR":    {
	    			[_mpos, east, _x] call omtk_lm_mk_add_objective;
	    			["Add REDFOR objective at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
    			case "objB":    {
	    			[_mpos, west, _x] call omtk_lm_mk_add_objective;
    				["Add BLUEFOR objective at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
	    		};
    			case "objG":    {
	    			[_mpos, resistance] call omtk_lm_mk_add_objective;
    				["Add RESISTANCE objective at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
	    		};
	    		case "respawnB":    {
		    		[_mpos, west, _x] call omtk_lm_mk_add_respawn;
    				["Add BLUEFOR start at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
	    		case "respawnR":    {
		    		[_mpos, east, _x] call omtk_lm_mk_add_respawn;
    				["Add BLUEFOR start at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
	    		case "respawnG":    {
		    		[_mpos, resistance, _x] call omtk_lm_mk_add_respawn;
    				["Add RESISTANCE start at pos='" + (str (_mpos select 0)) + " - " + (str (_mpos select 1)) + "'", "INFO", false] call omtk_log;
    			};
	    		default    { };
 			};
		} forEach allMapMarkers;
		
		call omtk_lm_mk_teleport_to_Base;
		
		omtk_lm_mk_server_completed = true;
		publicVariable "omtk_lm_mk_server_completed";
		
		sleep 2;
		[] remoteExec ["omtk_lm_mk_continue_startup", 0, true];
	};


	if (hasInterface) then {
	
		waitUntil {omtk_lm_mk_server_completed};
		
		_omtk_lm_mk_position = getPos player;
		{
			_mtext = markerText _x;
	    	_mpos = getMarkerPos _x;
			switch(_mtext) do {
	    		case "baseR": { if (side player == east) then { _omtk_lm_mk_position = _mpos; }; };
   				case "baseB": { if (side player == west) then { _omtk_lm_mk_position = _mpos; }; };
				default {};
			};
		} forEach allMapMarkers;
	
 		//[player, _omtk_lm_mk_position, floor random 20, floor random 360] call omtk_teleport;    WHY SHOULD I TELEPORT THE PLAYER TOO ?

	   	_base = missionNamespace getVariable ["omtk_lm_mk_base_" + str (side player), nil];  	
	   	if (! isNil "_base") then {
			_base addAction ["Refresh loadout", {[player] call omtk_set_unit_loadout;}]; 
		};
	
		_all_flags = [];
		_flags = missionNamespace getVariable ["omtk_lm_mk_obj_" + str (side player), nil];
	 	if (! isNil "_flags") then {
 			_all_flags = _all_flags + _flags;
 		};
	 	
	 	_flags2 = missionNamespace getVariable ["omtk_lm_mk_obj_" + str "common", nil];
	 	if (! isNil "_flags2") then {
 			_all_flags = _all_flags + _flags2;
 		};
	 	
 		{
			_x addAction["<t color='#0000FF'>Victory !!!</t>", {call omtk_lm_mk_display_victory; call omtk_lm_mk_teleport_to_Base;}, []];
	 	} forEach _all_flags;
	};

};
