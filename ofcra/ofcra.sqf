if (isServer) then {

	// main lib
	execVM "ofcra\library.sqf"

	// Check difficulty
	execVM "ofcra\difficulty_check\main.sqf"

	// Set players Gears
	execVM "ofcra\gears_infantry\main.sqf";

	// Set vehicules Gears
	execVM "ofcra\gears_vehicules\main.sqf"

	// Set IA skills
	execVM "ofcra\IA_skills\main.sqf";

	// Set objectives
	
	// Set time line
	//execVM "ofcra\time_line\main.sqf";
	

	// Add kill logs
	execVM "ofcra\kill_logger\main.sqf"

};
