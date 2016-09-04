["difficulty_check start", "INFO", false] call omtk_log;

if (difficulty < 3) then {
	["difficulty is not ELITE !", "WARNING", true] call omtk_log;
	hint "WARNING: difficulty is not ELITE !";
};

["difficulty_check end", "INFO", false] call omtk_log;
