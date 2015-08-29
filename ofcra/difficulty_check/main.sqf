// Display warning message
if (difficulty < 3) then {
	["difficulty is not ELITE !", "WARNING", true] call ofcra_fnc_log;
	hint "WARNING: difficulty is not ELITE !";
};