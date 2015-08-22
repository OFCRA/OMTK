////////// NE PAS TOUCHER EN DESSOUS

// main mandatory library
execVM "ofcra\library.sqf";

sleep 1;

if (OFCRA_TM_TEST_MODE < 1) then {	
	// Set score-board
	execVM "ofcra\score_board\main.sqf";
} else {
	// Enable test mode
	execVM "ofcra\test_mode\main.sqf";
};

// Set players Gears
execVM "ofcra\gears_infantry\main.sqf";

// Set vehicules Gears
execVM "ofcra\gears_vehicles\main.sqf";

// Set radio lock
execVM "ofcra\radio_lock\main.sqf";

// On server only
if (isServer) then {

	if (OFCRA_TM_TEST_MODE < 1) then {	
		// Check difficulty
		execVM "ofcra\difficulty_check\main.sqf";
	
		// Set IA skills
		execVM "ofcra\IA_skills\main.sqf";
	
		// Add kill logs
		execVM "ofcra\kill_logger\main.sqf";
	};
	
	// Set radio settings
	//execVM "ofcra\radio_settings\main.sqf";
};
//execVM "ofcra\radio_settings\main.sqf";