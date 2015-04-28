ofcra_fnc_redfor_vehicules_common = {
	private ["_unit"];
	_unit = _this select 0;
		
	_unit addItemCargoGlobal ["cse_bandage_basic", 10];
	_unit addItemCargoGlobal ["cse_epinephrine", 10];
	_unit addItemCargoGlobal ["cse_morphine", 10];
};

ofcra_fnc_redfor_vehicules_car = {
	private ["_unit"];
	_unit = _this select 0;
	

};

ofcra_fnc_redfor_vehicules_truck = {
	private ["_unit"];
	_unit = _this select 0;
	

};

ofcra_fnc_redfor_vehicules_apc = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_redfor_vehicules_ifv = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_redfor_vehicules_mbt_light = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_redfor_vehicules_mbt = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_redfor_vehicules_artillery = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_fnc_redfor_vehicules_aaa = {
	private ["_unit"];
	_unit = _this select 0;

};

ofcra_car_redfor_vehicules_classes = [
	'rhs_tigr_vv','rhs_uaz_vv','rhs_uaz_open_vv','rhs_tigr_3camo_vv',
	'rhs_tigr_ffv_3camo_msv',
	'rhs_tigr_msv','RHS_UAZ_MSV_01','rhs_uaz_open_MSV_01',
	'rhs_tigr_vdv','rhs_uaz_vdv','rhs_uaz_open_vdv',
	'rhs_tigr_vmf','rhs_uaz_vmf','rhs_uaz_open_vmf'
];

ofcra_truck_redfor_vehicules_classes = [
	'RHS_BM21_VV_01','rhs_gaz66_vv','rhs_gaz66_ammo_vv','rhs_gaz66o_vv','rhs_gaz66_r142_vv','rhs_gaz66_ap2_vv','rhs_gaz66_repair_vv',
	'RHS_Ural_VV_01','RHS_Ural_Fuel_VV_01','RHS_Ural_Open_VV_01','RHS_BM21_MSV_01',
	'rhs_gaz66_msv','rhs_gaz66_ammo_msv','rhs_gaz66o_msv','rhs_gaz66_r142_msv','rhs_gaz66_ap2_msv','rhs_gaz66_repair_msv',
	'RHS_Ural_MSV_01','RHS_Ural_Fuel_MSV_01','RHS_Ural_Open_MSV_01','RHS_BM21_VDV_01',
	'rhs_gaz66_vdv','rhs_gaz66_ammo_vdv','rhs_gaz66o_vdv','rhs_gaz66_r142_vdv','rhs_gaz66_r142_vdv','rhs_gaz66_ap2_vdv','rhs_gaz66_repair_vdv','rhs_typhoon_vdv',
	'RHS_Ural_VDV_01','RHS_Ural_Fuel_VDV_01','RHS_Ural_Open_VDV_01','RHS_BM21_VMF_01',
	'rhs_gaz66_vmf','rhs_gaz66_ammo_vmf','rhs_gaz66o_vmf','rhs_gaz66_r142_vmf','rhs_gaz66_ap2_vmf','rhs_gaz66_repair_vmf',
	'RHS_Ural_VMF_01','RHS_Ural_Fuel_VMF_01','RHS_Ural_Open_VMF_01'
];

ofcra_apc_redfor_vehicules_classes = [
	'rhs_btr60_vv','rhs_btr70_vv','rhs_btr80_vv','rhs_btr80a_vv',
	'rhs_btr60_msv','rhs_btr70_msv','rhs_btr80_msv','rhs_btr80a_msv',
	'rhs_btr60_vdv','rhs_btr70_vdv','rhs_btr80_vdv','rhs_btr80a_vdv',
	'rhs_btr60_vmf','rhs_btr70_vmf','rhs_btr80_vmf','rhs_btr80a_vmf'
];

ofcra_ifv_redfor_vehicules_classes = [
	'rhs_bmp1_vv','rhs_bmp1d_vv','rhs_bmp1k_vv','rhs_bmp2_vv','rhs_bmp1p_vv','rhs_bmp2e_vv','rhs_bmp2d_vv','rhs_bmp2k_vv','rhs_brm1k_vv','rhs_prp3_vv',
	'rhs_bmp1_msv','rhs_bmp1d_msv','rhs_bmp1k_msv','rhs_bmp1p_msv','rhs_bmp2_msv','rhs_bmp2e_msv','rhs_bmp2d_msv','rhs_bmp2k_msv','rhs_brm1k_msv','rhs_prp3_msv',
	'rhs_bmd1','rhs_bmd1k','rhs_bmd1p','rhs_bmd1pk','rhs_bmd1r','rhs_bmd2','rhs_bmd2k','rhs_bmd2m',
	'rhs_bmd4_vdv','rhs_bmd4m_vdv','rhs_bmd4ma_vdv','rhs_bmp1_vdv','rhs_bmp1d_vdv','rhs_bmp1k_vdv','rhs_bmp1p_vdv','rhs_bmp2_vdv','rhs_bmp2e_vdv','rhs_bmp2d_vdv','rhs_bmp2k_vdv','rhs_brm1k_vdv','rhs_prp3_vdv',
	'rhs_bmp1_vmf','rhs_bmp1d_vmf','rhs_bmp1k_vmf','rhs_bmp1p_vmf','rhs_bmp2_vmf','rhs_bmp2e_vmf','rhs_bmp2d_vmf','rhs_bmp2k_vmf','rhs_brm1k_vmf','rhs_prp3_vmf',
	'rhs_bmp1_tv','rhs_bmp1d_tv','rhs_bmp1k_tv','rhs_bmp1p_tv','rhs_bmp2_tv','rhs_bmp2e_tv','rhs_bmp2d_tv','rhs_bmp2k_tv','rhs_brm1k_tv','rhs_prp3_tv'
];

ofcra_mbt_light_redfor_vehicules_classes = [
	'rhs_sprut_vdv'
];

ofcra_mbt_redfor_vehicules_classes = [
	'rhs_t72ba_tv','rhs_t72bb_tv','rhs_t72bc_tv','rhs_t72bd_tv',
	'rhs_t80','rhs_t80a','rhs_t80b','rhs_t80bk','rhs_t80bv','rhs_t80bvk','rhs_t80u'	
];

ofcra_artillery_redfor_vehicules_classes = [
	'rhs_2s3_tv'
];

ofcra_aaa_redfor_vehicules_classes = [
	'rhs_zsu234_aa'
];



////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_set_redfor_vehicules_gears = {
	private ["_unit", "_class","_redFound"];
	_unit  = _this select 0;
	_class = _this select 1;
	_redFound = 0;
	
	if (_class in ofcra_car_redfor_vehicules_classes)		then { [_unit] call ofcra_fnc_redfor_vehicules_car; _redFound=1; };
	if (_class in ofcra_apc_redfor_vehicules_classes)		then { [_unit] call ofcra_fnc_redfor_vehicules_apc; _redFound=1; };
	if (_class in ofcra_mbt_redfor_vehicules_classes)		then { [_unit] call ofcra_fnc_redfor_vehicules_mbt; _redFound=1; };
	if (_class in ofcra_mbt_light_redfor_vehicules_classes)	then { [_unit] call ofcra_fnc_redfor_vehicules_mbt_light; _redFound=1; };
	if (_class in ofcra_artillery_redfor_vehicules_classes)	then { [_unit] call ofcra_fnc_redfor_vehicules_artillery; _redFound=1; };
	if (_class in ofcra_ifv_redfor_vehicules_classes)		then { [_unit] call ofcra_fnc_redfor_vehicules_ifv; _redFound=1; };
	if (_class in ofcra_aaa_redfor_vehicules_classes)		then { [_unit] call ofcra_fnc_redfor_vehicules_aaa; _redFound=1; };
	if (_class in ofcra_truck_redfor_vehicules_classes)		then { [_unit] call ofcra_fnc_redfor_vehicules_truck; _redFound=1; };
	
	if (_redFound > 0) then {
		[_unit] call ofcra_fnc_redfor_vehicules_common;
	};
	
	_redFound;
};
