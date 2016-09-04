if (isServer) then {
	missionNamespace setVariable ["omtk_wu_start_time", date];
	publicVariable "omtk_wu_start_time";
};

sleep 1;

_handle = execVM "omtk\version.sqf";
waitUntil {isNull _handle};

["loading OMTK v" + OMTK_VERSION + "..." , "INFO", true] call omtk_log;

if (isServer) then {
	if (("OMTK_MODULE_IA_SKILLS"        call BIS_fnc_getParamValue) > 0) then { execVM "omtk\ia_skills\main.sqf"; };
	if (("OMTK_MODULE_KILL_LOGGER"      call BIS_fnc_getParamValue) > 0) then { execVM "omtk\kill_logger\main.sqf"; };
	if (("OMTK_MODULE_VEHICLES_CONFIGURATION"  call BIS_fnc_getParamValue) > 0) then { execVM "omtk\vehicles_configuration\main.sqf"; };	
	if (("OMTK_MODULE_DIFFICULTY_CHECK" call BIS_fnc_getParamValue) > 0  && ("OMTK_LAUNCH_MODE" call BIS_fnc_getParamValue) < 2) then { execVM "omtk\difficulty_check\main.sqf"; };
};

if (hasInterface) then {
	if (("OMTK_MODULE_RADIO_LOCK"        call BIS_fnc_getParamValue) > 0) then { execVM "omtk\radio_lock\main.sqf"; };
};

if (("OMTK_MODULE_INFANTRY_LOADOUTS" call BIS_fnc_getParamValue) > 0) then { execVM "omtk\infantry_loadouts\main.sqf"; };

execVM "omtk\launch_mode\main.sqf";

if (("OMTK_LAUNCH_MODE" call BIS_fnc_getParamValue) < 1) then {
	if (("OMTK_MODULE_WARM_UP" call BIS_fnc_getParamValue) > 0) then {
		execVM "omtk\warm_up\main.sqf";
	} else {
		if (("OMTK_MODULE_TACTICAL_PARADROP" call BIS_fnc_getParamValue) > 0) then {	execVM "omtk\tactical_paradrop\main.sqf"; };
		if (("OMTK_MODULE_SCORE_BOARD" call BIS_fnc_getParamValue) > 0) then {	execVM "omtk\score_board\main.sqf"; };
	};
};
