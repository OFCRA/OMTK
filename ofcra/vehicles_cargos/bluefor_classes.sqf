ofcra_vc_bluefor_classes_all = [

	["ofcra_vc_bluefor_cargo_car", ["MRAP_01_base_F"] ],

	["ofcra_vc_bluefor_cargo_truck", ["Truck_01_base_F"] ],

	["ofcra_vc_bluefor_cargo_apc", ["APC_Tracked_02_base_F","M1126_ICV_M2NEST_DG1_NOSLATDES",
"M1126_ICV_m2_nestslatDES",
"M1126_ICV_M134_DG1_SLATDES",
"M1126_ICV_M134_DG1_NOSLATDES",
"M1126_ICV_M2_DG1_SLATDES",
"M1126_ICV_M2_DG1_NOSLATDES",
"M1126_ICV_mk19_DG1_SLATDES",
"M1126_ICV_mk19_DG1_NOSLATDES",
"M1130_CV_DG1_SLATDES",
"M1130_CV_DG1_NOSLATDES",
"M1129_MC_DG1_SLATDES",
"M1129_MC_DG1_NOSLATDES",
"M1135_ATGMV_DG1_SLATDES",
"M1135_ATGMV_DG1_NOSLATDES",
"M1128_MGS_DG1_SLATDES",
"M1128_MGS_DG1_NOSLATDES",
"M1133_MEV_DG1_SLATDES",
"M1133_MEV_DG1_NOSLATDES",
"M1126_ICV_M2NEST_DG1_NOSLATWOOD",
"M1126_ICV_m2_nestslatWOOD",
"M1126_ICV_M134_DG1_SLATWOOD",
"M1126_ICV_M134_DG1_NOSLATWOOD",
"M1126_ICV_M2_DG1_SLATWOOD",
"M1126_ICV_M2_DG1_NOSLATWOOD",
"M1126_ICV_mk19_DG1_SLATWOOD",
"M1126_ICV_mk19_DG1_NOSLATWOOD",
"M1130_CV_DG1_SLATWOOD",
"M1130_CV_DG1_NOSLATWOOD",
"M1129_MC_DG1_SLATWOOD",
"M1129_MC_DG1_NOSLATWOOD",
"M1135_ATGMV_DG1_SLATWOOD",
"M1135_ATGMV_DG1_NOSLATWOOD",
"M1128_MGS_DG1_SLATWOOD",
"M1128_MGS_DG1_NOSLATWOOD",
"M1133_MEV_DG1_SLATWOOD",
"M1133_MEV_DG1_NOSLATWOOD"] ],

	["ofcra_vc_bluefor_cargo_ifv", ["APC_Tracked_03_base_F"] ],

	["ofcra_vc_bluefor_cargo_mbt", ["rhsusf_m1a1tank_base"] ],

	["ofcra_vc_bluefor_cargo_artillery", ["MBT_01_arty_base_F"] ],

	["ofcra_vc_bluefor_cargo_aaa", ["B_G_Offroad_01_armed_F"] ],

	["ofcra_vc_bluefor_cargo_heli_transp", ["Helicopter_Base_H","RHS_UH1_Base"] ],

	["ofcra_vc_bluefor_classes_heli_atak", ["Heli_Attack_01_base_F"]],
	
	["ofcra_vc_bluefor_cargo_plane_transp", ["RHS_C130J_Base"] ],
	
	["ofcra_vc_bluefor_cargo_plane_atak", ["Plane_CAS_01_base_F"] ]
];


////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_vc_bluefor_set_vehicule_cargo = {
	private ["_unit", "_class","_blueFound"];
	_unit  = _this select 0;
	_class = typeOf _unit;
	_blueFound = 0;

	{	
		_fnc_name = (_x select 0);
		{
			if (_unit isKindOf _x) then {
				[_unit] call (missionNamespace getVariable _fnc_name);
				_blueFound=1;
			};
		} forEach (_x select 1);
	} forEach ofcra_vc_bluefor_classes_all;
	
	if (_blueFound > 0) then {
		[_unit] call ofcra_vc_bluefor_cargo_common;
	};
	
	_blueFound;
};
