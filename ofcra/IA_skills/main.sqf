////////// NE PAS TOUCHER EN DESSOUS

["setting IA skills lower...", "INFO", false] call ofcra_fnc_log;

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

["IA skills done.", "INFO", true] call ofcra_fnc_log;
