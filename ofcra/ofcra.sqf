////////// NE PAS TOUCHER EN DESSOUS

// main mandatory library
execVM "ofcra\library.sqf";

sleep 1;

// Set players Gears
execVM "ofcra\gears_infantry\main.sqf";

// Set vehicules Gears
execVM "ofcra\gears_vehicles\main.sqf"
	
// Set score-board
execVM "ofcra\score_board\main.sqf";

// On server only
if (isServer) then {

	// Check difficulty
	execVM "ofcra\difficulty_check\main.sqf"

	// Set IA skills
	execVM "ofcra\IA_skills\main.sqf";
	
	// Add kill logs
	execVM "ofcra\kill_logger\main.sqf"
};




