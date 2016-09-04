["vehicles_configurations start", "INFO", false] call omtk_log;

_handle = nil;
{
	_handle = execVM _x;
	waitUntil {isNull _handle};
} forEach [
	"omtk\vehicles_configuration\bluefor_cargos.sqf",
	"omtk\vehicles_configuration\bluefor_categories.sqf",
	"omtk\vehicles_configuration\redfor_cargos.sqf",
	"omtk\vehicles_configuration\redfor_categories.sqf" ];

omtk_vc_clearVehicleCargo = {
	clearMagazineCargoGlobal (_this select 0);
	clearWeaponCargoGlobal (_this select 0);
	clearMagazineCargoGlobal (_this select 0);
	clearItemCargoGlobal (_this select 0);
	clearBackpackCargoGlobal (_this select 0);
};
	
omtk_vc_fillVehicleCargo = {
	private ["_unit", "_found"];
	_unit  = _this select 0;
	_side  = _this select 1;
	_found = 0;

	_vehicles = (missionNamespace getVariable "omtk_vc_" + _side + "_cargo_categories");
	
	{
		_fnc_name = _x select 0;
		{
			if (_unit isKindOf _x) then {
				[_unit] call omtk_vc_clearVehicleCargo;
				[_unit] call (missionNamespace getVariable _fnc_name);
				[_unit] call (missionNamespace getVariable ("omtk_vc_" + _side + "_cargo_common"));
				_found = 1;
			};
		} forEach (_x select 1);
	} forEach _vehicles;
	
	_found;
};

	
{
	_vehicule = _x;
	_name = str _x;
	_side = side _x;
	_found = 0;
	
	_skip = _x getVariable ["omtk_skip", 0];
	if (_skip != 1) then {
		
		if (("OMTK_MODULE_VEHICLES_CONFIGURATION_TIEQUIPMENTS_DISABLING" call BIS_fnc_getParamValue) > 0 ) then {
			_x disableTIEquipment true;
		};

		_found = [_x, "bluefor"] call omtk_vc_fillVehicleCargo;
		if (_found < 1) then  { _found = [_x, "redfor"] call omtk_vc_fillVehicleCargo; };
		if (_found < 1) then  {	
			["uknown side for vehicle '" + (typeOf _x) + "'", "ERROR", false] call omtk_log;
			if (("OMTK_MODULE_VEHICLES_CONFIGURATION_UNKNOWN_EMPTYING" call BIS_fnc_getParamValue) > 0 ) then {
				[_x] call omtk_vc_clearVehicleCargo;
			};
		};
	};
} foreach vehicles;

["vehicles_configurations end", "INFO", false] call omtk_log;
