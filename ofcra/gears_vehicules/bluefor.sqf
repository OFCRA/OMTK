// COMMUN

ofcra_fnc_bluefor_vehicules_common = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit addWeaponCargo ["tf47_m3maaws", 2];
	_unit addWeaponCargo ["rhs_weap_m4a1_grip", 2];

	_unit addMagazineCargo ["rhs_m136_mag", 2];
	_unit addMagazineCargo ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
	_unit addMagazineCargo ["hlc_30rnd_556x45_SPR", 20];
	_unit addMagazineCargo ["rhsusf_100Rnd_556x45_soft_pouch", 10];
	_unit addMagazineCargo ["rhsusf_100Rnd_762x51", 5];
	_unit addMagazineCargo ["tf47_m3maaws_HEAT", 2];
	_unit addMagazineCargo ["tf47_m3maaws_HEDP", 2];
	_unit addMagazineCargo ["rhs_mag_M441_HE", 10];
	_unit addMagazineCargo ["rhs_mag_M433_HEDP", 10];
	_unit addMagazineCargo ["rhs_mag_M585_white", 10];
	_unit addItemCargo ["MiniGrenade", 15];
	_unit addItemCargo ["SmokeShell", 15];
	_unit addItemCargo ["SmokeShell", 15];
};

ofcra_fnc_bluefor_vehicules_car = {
	private ["_unit"];
	_unit = _this select 0;
	

};

ofcra_fnc_bluefor_vehicules_truck = {
	private ["_unit"];
	_unit = _this select 0;
	

};

ofcra_fnc_bluefor_vehicules_apc = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_bluefor_vehicules_ifv = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_bluefor_vehicules_mbt = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_bluefor_vehicules_artillery = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_bluefor_vehicules_aaa = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_car_bluefor_vehicules_classes = [
	'rhsusf_m1025_w_mk19','rhsusf_m1025_w',
	'rhsusf_m998_w_2dr_fulltop','rhsusf_m998_w_2dr_halftop','rhsusf_m998_w_2dr','rhsusf_m998_w_4dr_fulltop','rhsusf_m998_w_4dr_halftop','rhsusf_m998_w_4dr',
	'rhsusf_m1025_d_m2','rhsusf_m1025_d_Mk19',
	'rhsusf_m998_d_s_2dr','rhsusf_m998_d_s_2dr_fulltop',
	'rhsusf_m1025_d',
	'rhsusf_m998_d_2dr_fulltop','rhsusf_m998_d_2dr_halftop','rhsusf_m998_d_2dr','rhsusf_m998_d_4dr_fulltop','rhsusf_m998_d_4dr_halftop','rhsusf_m998_d_4dr',
	'rhsusf_m1025_w_s_m2','rhsusf_m1025_w_s_Mk19','rhsusf_m1025_w_s','rhsusf_m998_w_s_2dr',
	'rhsusf_m998_w_s_2dr_halftop','rhsusf_m998_w_s_2dr_fulltop','rhsusf_m998_w_s_4dr_halftop','rhsusf_m998_w_s_4dr','rhsusf_m998_w_s_4dr_fulltop',
	'rhsusf_m1025_d_s_m2','rhsusf_m1025_d_s_Mk19','rhsusf_m1025_d_s',
	'rhsusf_m998_d_s_2dr_halftop','rhsusf_m998_d_s_4dr_halftop','rhsusf_m998_d_s_4dr','rhsusf_m998_d_s_4dr_fulltop'
];

ofcra_truck_bluefor_vehicules_classes = [
		
];

ofcra_apc_bluefor_vehicules_classes = [
	'rhsusf_m113_usarmy',
	'rhsusf_m113d_usarmy'
];

ofcra_ifv_bluefor_vehicules_classes = [
	'RHS_M2A2_wd',
	'RHS_M2A2_BUSKI_WD',
	'RHS_M2A3_wd',
	'RHS_M2A3_BUSKI_wd',
	'RHS_M2A3_BUSKIII_wd',
	'RHS_M2A2',
	'RHS_M2A2_BUSKI',
	'RHS_M2A3',
	'RHS_M2A3_BUSKI',
	'RHS_M2A3_BUSKIII'
];

ofcra_mbt_bluefor_vehicules_classes = [
	'rhsusf_m1a1aimwd_usarmy',
	'rhsusf_m1a1aim_tuski_wd',
	'rhsusf_m1a2sep1wd_usarmy',
	'rhsusf_m1a2sep1tuskiwd_usarmy',
	'rhsusf_m1a1aimd_usarmy',
	'rhsusf_m1a1aim_tuski_d',
	'rhsusf_m1a2sep1d_usarmy',
	'rhsusf_m1a2sep1tuskid_usarmy',
	'rhsusf_m1a1fep_wd',
	'rhsusf_m1a1fep_d'
];

ofcra_artillery_bluefor_vehicules_classes = [
	'rhsusf_m109_usarmy',
	'rhsusf_m109d_usarmy'
];

ofcra_aaa_bluefor_vehicules_classes = [
	'RHS_M6_wd',
	'RHS_M6'
];



////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_set_bluefor_vehicules_gears = {
	private ["_unit", "_class","_found"];
	_unit  = _this select 0;
	_class = _this select 1;
	_found = 0;
	
	[_unit] call ofcra_fnc_bluefor_vehicules_common;
	if (_class in ofcra_car_bluefor_vehicules_classes)			then { [_unit] call ofcra_fnc_bluefor_vehicules_car; _found=1; };
	if (_class in ofcra_apc_bluefor_vehicules_classes)			then { [_unit] call ofcra_fnc_bluefor_vehicules_apc; _found=1; };
	if (_class in ofcra_mbt_bluefor_vehicules_classes)			then { [_unit] call ofcra_fnc_bluefor_vehicules_mbt; _found=1; };
	if (_class in ofcra_artillery_bluefor_vehicules_classes)	then { [_unit] call ofcra_fnc_bluefor_vehicules_artillery; _found=1; };
	if (_class in ofcra_ifv_bluefor_vehicules_classes)			then { [_unit] call ofcra_fnc_bluefor_vehicules_ifv; _found=1; };
	if (_class in ofcra_aaa_bluefor_vehicules_classes)			then { [_unit] call ofcra_fnc_bluefor_vehicules_aaa; _found=1; };
	if (_class in ofcra_truck_bluefor_vehicules_classes)		then { [_unit] call ofcra_fnc_bluefor_vehicules_truck; _found=1; };

	_found;
};
