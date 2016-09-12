if (isServer) then {
	missionNamespace setVariable ["omtk_wu_start_time", date];
	publicVariable "omtk_wu_start_time";
};


if (hasInterface) then { 
	waitUntil { !(isNull player) };
	execVM "omtk\dynamic_startup\markers_doc.sqf";
};

sleep 1;

_handle = execVM "omtk\version.sqf";
waitUntil {isNull _handle};
["loading OMTK v" + OMTK_VERSION + "..." , "INFO", true] call omtk_log;


omtk_load_warmup = {
	if (("OMTK_MODULE_WARM_UP" call BIS_fnc_getParamValue) > 0) then {
		execVM "omtk\warm_up\main.sqf";
	} else {
		call omtk_load_post_warmup;
	};
};


omtk_load_post_warmup = {
	if (("OMTK_MODULE_TACTICAL_PARADROP" call BIS_fnc_getParamValue) > 0) then {	execVM "omtk\tactical_paradrop\main.sqf"; };
	if (("OMTK_MODULE_SCORE_BOARD"       call BIS_fnc_getParamValue) > 0) then {	execVM "omtk\score_board\main.sqf"; };
};


if (("OMTK_MODULE_DIFFICULTY_CHECK"         call BIS_fnc_getParamValue) > 0) then { execVM "omtk\difficulty_check\main.sqf"; };
if (("OMTK_MODULE_IA_SKILLS"                call BIS_fnc_getParamValue) > 0) then { execVM "omtk\ia_skills\main.sqf"; };
if (("OMTK_MODULE_KILL_LOGGER"              call BIS_fnc_getParamValue) > 0) then { execVM "omtk\kill_logger\main.sqf"; };
if (("OMTK_MODULE_VEHICLES_THERMALIMAGING"  call BIS_fnc_getParamValue) < 1) then { execVM "omtk\vehicles_thermalimaging\main.sqf"; };	
if (("OMTK_MODULE_RADIO_LOCK"               call BIS_fnc_getParamValue) > 0) then { execVM "omtk\radio_lock\main.sqf"; };
if (("OMTK_MODULE_MAP_EXPLORATION"          call BIS_fnc_getParamValue) > 0) then { execVM "omtk\map_exploration\main.sqf"; };
if (("OMTK_MODULE_RESPAWN_MODE"             call BIS_fnc_getParamValue) < 999999) then { execVM "omtk\respawn_mode\main.sqf"; };
if (("OMTK_MODULE_DYNAMIC_STARTUP" call BIS_fnc_getParamValue) > 0) then {
	execVM "omtk\dynamic_startup\main.sqf";
} else {
	call omtk_load_warmup;
};
