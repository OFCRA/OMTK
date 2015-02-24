{
	_x addEventHandler ["Killed", {diag_log format ["[OFCRA] LOG: %1 killed by %2",name (_this select 0),name (_this select 1)];}]
} forEach allUnits;
