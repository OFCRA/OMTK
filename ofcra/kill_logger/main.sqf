_index = 1;
{
	_name = "bot_" + (str _index);
	_x setName _name;
	_x addEventHandler ["Killed", {diag_log format ["[OFCRA] KILL: '%1' killed by '%2'",name (_this select 0),name (_this select 1)];}];
	_index = _index + 1;
} forEach allUnits;
