////////// NE PAS TOUCHER EN DESSOUS

// main mandatory library
execVM "ofcra\library.sqf";

sleep 1;

if (("OFCRA_TEST_MODE" call BIS_fnc_getParamValue) < 1) then {
	if (("OFCRA_MODULE_SCORE_BOARD" call BIS_fnc_getParamValue) > 0) then {	execVM "ofcra\score_board\main.sqf"; };
} else {
	execVM "ofcra\test_mode\main.sqf";
};

if (("OFCRA_MODULE_INFANTRY_LOADOUTS" call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\infantry_loadouts\main.sqf"; };
if (("OFCRA_MODULE_VEHICLES_CARGOS"   call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\vehicles_cargos\main.sqf"; };
if (("OFCRA_MODULE_RADIO_LOCK"        call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\radio_lock\main.sqf"; };
//if (("OFCRA_MODULE_WARM_UP"         call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\warm_up\main.sqf"; };		

if (isServer) then {

	if (("OFCRA_TEST_MODE" call BIS_fnc_getParamValue) < 1) then {
		if (("OFCRA_MODULE_DIFFICULTY_CHECK" call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\difficulty_check\main.sqf"; };
		if (("OFCRA_MODULE_IA_SKILLS"        call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\IA_skills\main.sqf"; };
		if (("OFCRA_MODULE_KILL_LOGGER"      call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\kill_logger\main.sqf"; };
	};
	
	//if (("OFCRA_MODULE_RADIO_SETTINGS" call BIS_fnc_getParamValue) > 0) then { execVM "ofcra\radio_settings\main.sqf"; };
};
