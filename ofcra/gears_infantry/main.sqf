_OFCRA_UNITES_CIBLES = "HUMAINS+IA";	// parmi {HUMAINS+IA|HUMAINS}
_OFCRA_LISTE_EXCEPTIONS = [];			// tableau de noms d'unités à ne pas toucher, ex: ["nom1", "nom2"]
_OFCRA_TENUES_BLUEFOR = "UCP";			// parmi {UCP|OCP}
_OFCRA_TENUES_REDFOR = "VDV";			// parmi {VDV|VDV-M|MSV}


////////// NE PAS TOUCHER EN DESSOUS

_handle = execVM  "ofcra\gears_infantry\library.sqf";
waitUntil {isNull _handle};
_handle = execVM  "ofcra\gears_infantry\redfor_weapons.sqf";
waitUntil {isNull _handle};
_handle = execVM  "ofcra\gears_infantry\redfor_clothes.sqf";
waitUntil {isNull _handle};
_handle = execVM "ofcra\gears_infantry\bluefor_weapons.sqf";
waitUntil {isNull _handle};
_handle = execVM "ofcra\gears_infantry\bluefor_clothes.sqf";
waitUntil {isNull _handle};

diag_log "[OFCRA] INFO: setting infantry gears ...";
systemChat "Setting gears for infantry";


_targeted_units = nil;
switch(_OFCRA_UNITES_CIBLES) do {
	case "HUMAINS+IA":	{ _targeted_units = allUnits; };
	case "HUMAINS":		{ _targeted_units = playableUnits; };
	default	{
		_log = "param _UNITES_CIBLES incorrect: '" + _UNITES_CIBLES + "'";
		[_log, "ERROR"] call ofcra_fnc_log;
		_targeted_units = [];
	};
};


{
	_name = str _x;
	_side = side _x;
	_class = typeOf _x;
	
	if (!(_name in _OFCRA_LISTE_EXCEPTIONS)) then {
		[_x] call ofcra_fnc_remove_all_gears;
	
		switch (_side) do {
			case east: {
				_clothes = [_OFCRA_TENUES_REDFOR] call ofcra_fnc_get_redfor_clothes;
				[_x, _class, _clothes] call ofcra_fnc_set_redfor_gears;
			};
			case west: {
				_clothes = [_OFCRA_TENUES_BLUEFOR] call ofcra_fnc_get_bluefor_clothes;
				[_x, _class, _clothes] call ofcra_fnc_set_bluefor_gears;
			};
			default {
				_log = "camp inconnu pour l'unité '" + (name _x) + "'";
				[_log, "ERROR"] call ofcra_fnc_log;
			};
		};
	};
	
} forEach _targeted_units;

diag_log "[OFCRA] INFO: infantry gears done.";
