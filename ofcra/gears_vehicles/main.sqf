////////// NE PAS TOUCHER EN DESSOUS

_handle = execVM  "ofcra\gears_vehicles\bluefor.sqf";
waitUntil {isNull _handle};
_handle = execVM  "ofcra\gears_vehicles\redfor.sqf";
waitUntil {isNull _handle};


diag_log "[OFCRA] INFO: setting vehicules gears ...";
systemChat "Setting gears for vehicules";

{
	_name = str _x;
	_side = side _x;
	_class = typeOf _x;
	_found = 0;
	
	if (!(_name in OFCRA_GV_LISTE_VEHICULES_EXCEPTIONS)) then {
	
		if (isServer) then {
			clearMagazineCargoGlobal _x;
			clearWeaponCargoGlobal _x;
			clearMagazineCargoGlobal _x;
			clearItemCargoGlobal _x;
			clearBackpackCargoGlobal _x;
	
			_x disableTIEquipment true;

			_found = [_x, _class] call ofcra_fnc_set_bluefor_vehicules_gears;
			if (_found < 1) then  {
				_found = [_x, _class] call ofcra_fnc_set_redfor_vehicules_gears;
			};
			if (_found < 1) then  {
				_log = "camp inconnu pour le vehicule '" + (typeOf _x) + "'";
				[_log, "ERROR"] call ofcra_fnc_log;
			};
		};
	};
	
} foreach vehicles;

diag_log "[OFCRA] INFO: vehicules gears done.";
