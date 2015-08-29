////////// NE PAS TOUCHER EN DESSOUS

["enabling kill log...", "INFO", false] call ofcra_fnc_log;

diag_log "[OFCRA] INFO: enabling kill logs ...";

_index = 1;
{
	_name = "bot_" + (str _index);
	_x setName _name;
	_x addEventHandler ["MPkilled", {diag_log format ["[OFCRA] KILL: '%1' touche par '%2'",name (_this select 0),name (_this select 1)];}];
	_x addMPEventHandler ["MPhit", {diag_log format ["[OFCRA] HIT: '%1' touche de +'%4' jusqua '%3' par '%2'",name (_this select 0),name (_this select 1),damage (_this select 0),(_this select 2)];}];
	_index = _index + 1;
} forEach allUnits;

["kill logs done.", "INFO", true] call ofcra_fnc_log;
