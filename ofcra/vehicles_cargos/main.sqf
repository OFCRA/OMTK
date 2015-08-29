////////// NE PAS TOUCHER EN DESSOUS

["setting vehicules cargo...", "INFO", false] call ofcra_fnc_log;

_handle = execVM  "ofcra\vehicles_cargos\bluefor_cargos.sqf";
waitUntil {isNull _handle};
_handle = execVM  "ofcra\vehicles_cargos\bluefor_classes.sqf";
waitUntil {isNull _handle};
_handle = execVM  "ofcra\vehicles_cargos\redfor_cargos.sqf";
waitUntil {isNull _handle};
_handle = execVM  "ofcra\vehicles_cargos\redfor_classes.sqf";
waitUntil {isNull _handle};

{
	_vehicule = _x;
	_name = str _x;
	_side = side _x;
	_found = 0;
	
	
	{
		if (local _x) then {
			//_x action ["Eject", _vehicule];
			deleteVehicle _x;
		};
	} forEach (crew _x);
	
	
	if (!(_name in OFCRA_GV_LISTE_VEHICULES_EXCEPTIONS)) then {
		
		if (isServer) then {
			clearMagazineCargoGlobal _x;
			clearWeaponCargoGlobal _x;
			clearMagazineCargoGlobal _x;
			clearItemCargoGlobal _x;
			clearBackpackCargoGlobal _x;
	
			_x disableTIEquipment true;

			_found = [_x] call ofcra_fnc_vc_bluefor_set_vehicule_cargo;
			if (_found < 1) then  {
				_found = [_x] call ofcra_fnc_vc_redfor_set_vehicule_cargo;
			};
			if (_found < 1) then  {
				_log = "camp inconnu pour le vehicule '" + (typeOf _x) + "'";
				[_log, "ERROR", false] call ofcra_fnc_log;
			};
		};
	};
	
} foreach vehicles;

["vehicules cargos done.", "INFO", true] call ofcra_fnc_log;
