ofcra_vc_redfor_classes_all = [

	["ofcra_vc_redfor_cargo_car", ["Offroad_01_base_F","MRAP_02_base_F"] ],

	["ofcra_vc_redfor_cargo_truck", [] ], //"Truck_F"

	["ofcra_vc_redfor_cargo_apc", ["Wheeled_APC_F"] ],

	["ofcra_vc_redfor_cargo_ifv", ["rhs_bmd_base","rhs_bmp1tank_base","rhs_bmp3tank_base"] ],

	["ofcra_vc_redfor_cargo_mbt", ["rhs_tank_base"] ],
	
	["ofcra_vc_redfor_cargo_artillery",  [] ],
	
	["ofcra_vc_redfor_cargo_aaa",  ["rhs_zsutank_base","rhs_a3t72tank_base","rhs_a3spruttank_base"] ],
	
	["ofcra_vc_redfor_cargo_heli_transp", ["Helicopter_Base_H"] ],

	["ofcra_vc_redfor_cargo_heli_atak", ["Heli_Attack_02_base_F"] ],
	
	["ofcra_vc_redfor_cargo_plane_transp", [] ],
	
	["ofcra_vc_redfor_cargo_plane_atak", ["Plane_Base_F"] ],
	
	["ofcra_vc_redfor_cargo_boat",  ["B_Boat_Transport_01_F"] ]
];


////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_vc_redfor_set_vehicule_cargo = {
	private ["_unit", "_class","_redFound"];
	_unit  = _this select 0;
	_class = typeOf _unit;
	_redFound = 0;

	{	
		_fnc_name = _x select 0;
		{
			if (_unit isKindOf _x) then {
				[_unit] call (missionNamespace getVariable _fnc_name);
				_redFound=1;
			};
		} forEach (_x select 1);
	} forEach ofcra_vc_redfor_classes_all;
	
	if (_redFound > 0) then {
		[_unit] call ofcra_vc_redfor_cargo_common;
	};
	
	_redFound;
};
