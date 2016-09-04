["setting infantry loadouts ...", "INFO", false] call omtk_log;

_handle = execVM "omtk\infantry_loadouts\generated_loadouts.sqf";
waitUntil {isNull _handle};


omtk_li_remove_all_gears = {
	private ["_unit"];
	_unit = _this select 0;

	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpackGlobal _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
};


omtk_li_set_unit_loadout = {
	private ["_unit","_exceptions","_fnc_name"];
	_x = _this select 0;

	_skip = _x getVariable ["omtk_skip", 0];
	if (_skip != 1) then {
		_side = [side _x] call omtk_get_side;
		_class = typeOf _x;
		_x setUnitRank "PRIVATE";
		[_x] call omtk_li_remove_all_gears;
		_fnc_name = "omtk_il_set_loadout_" + _side + "_" + _class;
		[_x] call (missionNamespace getVariable _fnc_name);
	};
};


if (isDedicated) then {
	_targeted_units = allUnits;
	if (("OMTK_MODULE_INFANTRY_LOADOUTS" call BIS_fnc_getParamValue) == 2) then {
		_targeted_units = playableUnits;
	};

	{
		uiSleep 0.1; // improves network stability
		if (local _x) then {
			[_x] call omtk_li_set_unit_loadout;
			_x addEventHandler ["respawn", { [_this select 0] call omtk_li_set_unit_loadout; }];
		}
	} forEach _targeted_units;

} else {
	[player] call omtk_li_set_unit_loadout;
	player addEventHandler ["respawn", { [_this select 0] call omtk_li_set_unit_loadout; }];
};


["infantry loadouts done.", "INFO", true] call omtk_log;
