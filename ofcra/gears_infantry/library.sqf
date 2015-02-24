////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_remove_all_gears = {
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


ofcra_fn_set_clothes = {
	private ["_unit", "_index", "_clothes"];
	_unit  = _this select 0;
	_index = _this select 1;
	_clothes = _this select 2;

	_unit forceAddUniform _clothes[_index][0];
	_unit addVest _clothes[_index][1]
	_unit addHeadgear _clothes[_index][2];
	_unit addBackpack _clothes[_index][3];
};
