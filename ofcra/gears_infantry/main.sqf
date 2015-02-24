_UNITES_CIBLES = "HUMAINS+IA"; // parmi {HUMAINS+IA|HUMAINS}
_LISTE_EXCEPTIONS = []; // tableau de noms d'unités à ne pas toucher, ex: ["nom1", "nom2"]

////////// NE PAS TOUCHER EN DESSOUS
_handle = execVM  "ofcra\gears_infantry\redfor.sqf";
waitUntil {isNull _handle};

_handle = execVM "ofcra\gears_infantry\bluefor.sqf";
waitUntil {isNull _handle};


diag_log "[OFCRA] INFO: setting infantry gears ...";
systemChat "Setting gears for infantry";

_targeted_units = nil;

switch(_UNITES_CIBLES) do {
		case "HUMAINS+IA":
		{
			_targeted_units = allUnits;
		};
	
		case "HUMAINS":
		{
			_targeted_units = playableUnits;
		};
	
		default
		{
			_log_line = "param _UNITES_CIBLES incorrect: '" + _UNITES_CIBLES + "'";
			systemChat _log_line;
			_log_line = '[OFCRA] ERROR: ' + _log_line;
			diag_log _log_line;
			
			_targeted_units = [];
		};
};

ofcra_fnc_clear_gear = {
	private ["_unit"];
	_unit = _this select 0;
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
};

{
	_name = str _x;
	_side = side _x;
	_class = typeOf _x;
	
	if (!(_name in _LISTE_EXCEPTIONS)) then {
	
		// Remove all gears
		[_x] call ofcra_fnc_clear_gear;

		// Add side's gears
		switch (_side) do {
			case east:
			{	
				[_x, _class] call ofcra_fnc_set_redfor_gears;
			};
			case west:
			{
				[_x, _class] call ofcra_fnc_set_bluefor_gears;
			};
			default
			{
				_log_line = "Camp inconnu pour l'unité '" + (name _x) + "'";
				systemChat _log_line;
			};
		};
	};
	
} forEach _targeted_units;

diag_log "[OFCRA] INFO: infantry gears done.";
