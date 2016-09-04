["ia_skills start", "INFO", false] call omtk_log;

if (isServer) then {
	{
		_x setskill ["aimingAccuracy",0.1];
		_x setskill ["aimingShake",0.1];
		_x setskill ["aimingSpeed",0.1];
		_x setskill ["endurance",0.2];
		_x setskill ["spotDistance",0.3];
		_x setskill ["spotTime",0.4]; 
		_x setskill ["courage",0.4];
		_x setskill ["reloadSpeed",0.4];
		_x setskill ["commanding",0.2];
		_x setskill ["general",0.2];
	} forEach allUnits;
};

if (hasInterface) then {
	player addRating 1000000;
};

["ia_skills end.", "INFO", false] call omtk_log;
