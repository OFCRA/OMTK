////////// NE PAS TOUCHER EN DESSOUS

diag_log "[OFCRA] INFO: enabling kill logs ...";
systemChat "Setting kill logs";

_index = 1;
{
	_name = "bot_" + (str _index);
	_x setName _name;
	_x addEventHandler ["MPkilled", {diag_log format ["[OFCRA] KILL: '%1' killed by '%2'",name (_this select 0),name (_this select 1)];}];
	_x addMPEventHandler ["MPhit", {diag_log format ["[OFCRA] HIT: '%1' hit +'%4' to '%3'  by '%2'",name (_this select 0),name (_this select 1),damage (_this select 0),(_this select 2)];}];
	_index = _index + 1;
} forEach allUnits;

diag_log "[OFCRA] INFO: kill logs done.";