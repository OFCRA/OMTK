////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_remove_all_gears = {
	private ["_unit"];
	_unit = _this select 0;

	removeAllWeapons _unit;  // L:G
	removeAllItems _unit;  // L:G
	removeAllAssignedItems _unit; // L:G
	
	removeUniform _unit; // G:G
	removeVest _unit; // G:G
	removeBackpackGlobal _unit; // G:G
	removeHeadgear _unit;  // G:G
	removeGoggles _unit; // G:G
};

ofcra_fnc_set_unit_gears = {
	private ["_unit","_exceptions"];
	_x = _this select 0;
		
	if (local _x) then {
	
		_name = str _x;
		_side = side _x;
		_class = typeOf _x;
	
		if (!(_name in OFCRA_GI_LISTE_INFANTERIE_EXCEPTIONS)) then {
			[_x] call ofcra_fnc_remove_all_gears;
			_x setUnitRank "PRIVATE";
	
			switch (_side) do {
				case east: {
					_clothes = [OFCRA_GI_TENUES_REDFOR] call ofcra_fnc_get_redfor_clothes;
					[_x, _class, _clothes] call ofcra_fnc_set_redfor_gears;
				};
				case west: {
					_clothes = [OFCRA_GI_TENUES_BLUEFOR] call ofcra_fnc_get_bluefor_clothes;
					[_x, _class, _clothes] call ofcra_fnc_set_bluefor_gears;
				};
				default {
					_log = "camp inconnu pour l'unité '" + (name _x) + "'";
					[_log, "ERROR"] call ofcra_fnc_log;
				};
			};
		};
	};
};

ofcra_fn_set_clothes = {
	private ["_unit", "_index", "_clothes","_bg"];
	_unit  = _this select 0;
	_index = _this select 1;
	_clothes = _this select 2;

	_unit forceAddUniform ((_clothes select _index) select 0);
	_unit addVest ((_clothes select _index) select 1);
	_unit addHeadgear ((_clothes select _index) select 2);
	_bg = ((_clothes select _index) select 3);
	if (!isNil "_bg" ) then {
		_unit addBackpack _bg;
	};
};
