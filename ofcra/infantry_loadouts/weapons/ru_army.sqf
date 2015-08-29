// COMMUN
ofcra_fnc_redfor_common = {
	private ["_unit"];
	_unit = _this select 0;

	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_morphine";
	_unit addItemToUniform "ACE_epinephrine";

	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addItemToUniform "rhs_mag_rdg2_white";
	_unit addItemToUniform "ACE_EarPlugs";
	
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemRadio";
	_unit linkItem "tf_microdagr";
	
};

// CDC
ofcra_fnc_redfor_cdc = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "COLONEL"; 
	[_unit, 1] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";	
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToVest "rhs_mag_rdg2_white";
		
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// CDG
ofcra_fnc_redfor_cdg = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR";
	[_unit, 2] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToVest "rhs_mag_rdg2_white";

	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// CDE
ofcra_fnc_redfor_cde = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "CAPTAIN";
	[_unit, 3] call ofcra_fn_set_redfor_gears;

	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_gp25";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
	
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VOG25P";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VG40OP_white";};

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	
	_unit addWeapon "Binocular";
};

// MEDIC
ofcra_fnc_redfor_medic = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 4] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};

	for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_bloodIV";};
};

// GRENADIER
ofcra_fnc_redfor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 5] call ofcra_fn_set_redfor_gears;

	_unit addItemToVest "rhs_rshg2_mag";
	_unit addWeapon "rhs_weap_rshg2";
		
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_gp25"; 
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VOG25P";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VG40OP_white";};
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// GRENADIER ASSISTANT
ofcra_fnc_redfor_grenadier_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 6] call ofcra_fn_set_redfor_gears;
	
	_unit addItemToVest "rhs_rshg2_mag";
	_unit addWeapon "rhs_weap_rshg2";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m"; 
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
		
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25P";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VG40OP_white";};

};

// AUTORIFLEMAN
ofcra_fnc_redfor_autorifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 7] call ofcra_fn_set_redfor_gears;
	
	_unit addItemToVest "hlc_75Rnd_762x39_m_rpk";
	_unit addWeapon "hlc_rifle_rpk";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_75Rnd_762x39_m_rpk";};
	for "_i" from 1 to 3 do {_unit addItemToVest "hlc_75Rnd_762x39_m_rpk";};
		
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// AUTORIFLEMAN ASSISTANT
ofcra_fnc_redfor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 8] call ofcra_fn_set_redfor_gears;

	_unit addItemToVest "rhs_rshg2_mag";
	_unit addWeapon "rhs_weap_rshg2";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m"; 
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};

	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
};

// GUNNER
ofcra_fnc_redfor_gunner = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 9] call ofcra_fn_set_redfor_gears;
	
	_unit addItemToBackpack "rhs_100Rnd_762x54mmR";
	_unit addWeapon "rhs_weap_pkp";

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	_unit addItemToVest "rhs_100Rnd_762x54mmR";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// GUNNER ASSISTANT
ofcra_fnc_redfor_gunner_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 10] call ofcra_fn_set_redfor_gears;

	
	_unit addItemToVest "rhs_rshg2_mag";
	_unit addWeapon "rhs_weap_rshg2";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m"; 
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};

	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
};

// ANTI-TANK
ofcra_fnc_redfor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11] call ofcra_fn_set_redfor_gears;

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	
	_unit addWeapon "rhs_weap_rpg7";
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
	_unit addItemToBackpack "rhs_rpg7_PG7VR_mag";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// ANTI-TANK ASSISTANT
ofcra_fnc_redfor_antitank_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 12] call ofcra_fn_set_redfor_gears;
	
	_unit addItemToBackpack "rhs_rpg26_mag";
	_unit addWeapon "rhs_weap_rpg26";
		
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
	
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
};

// ANTI-TANK LIGHT
ofcra_fnc_redfor_antitank_light = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 13] call ofcra_fn_set_redfor_gears;
	
	_unit addItemToBackpack "rhs_rpg26_mag";
	_unit addWeapon "rhs_weap_rpg26";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
};

// MARKSMAN
ofcra_fnc_redfor_marksman = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 14] call ofcra_fn_set_redfor_gears;

	for "_i" from 1 to 12 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};

	_unit addWeapon "rhs_weap_svds_pso1";
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToUniform "rhs_mag_rgd5";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addItemToVest "ACE_RangeCard";
	_unit addItemToVest "ACE_Kestrel4500";
	_unit addItemToVest "ACE_ATragMX";
	_unit addWeapon "lerca_1200_black";
};

// SNIPER
ofcra_fnc_redfor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 15] call ofcra_fn_set_redfor_gears;

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
	
	_unit addWeapon "rhs_weap_svds_pso1";
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToUniform "rhs_mag_rgd5";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// SPOTTER
ofcra_fnc_redfor_spotter = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 16] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
	
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	_unit addWeapon "lerca_1200_black";
};


// EXPLOSIVE SPECIALIST
ofcra_fnc_redfor_explosive_specialist = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 17] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	
	for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SatchelCharge_Remote_Mag";};
	
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// RIFLEMAN:
ofcra_fnc_redfor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 18] call ofcra_fn_set_redfor_gears;

	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
	
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
};

// DRIVER
ofcra_fnc_redfor_driver = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR";
	[_unit, 19] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_folded";
	_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";
		
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// GROUND CREW
ofcra_fnc_redfor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 20] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_folded";
	_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";
	
};

// PILOT
ofcra_fnc_redfor_pilot = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR";
	[_unit, 21] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};	
	_unit addWeapon "rhs_weap_ak74m_folded";
	
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// AIR CREW
ofcra_fnc_redfor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 22] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_folded";
	
};

// Operateur de drone
ofcra_fnc_redfor_op_drone = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR"; 
	[_unit, 23] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";	
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToVest "rhs_mag_rdg2_white";
		
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// Operateur radio
ofcra_fnc_redfor_op_radio = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR"; 
	[_unit, 24] call ofcra_fn_set_redfor_gears;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";	
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToVest "rhs_mag_rdg2_white";
		
	_unit addItemToVest "ACE_microDAGR";
};

// RIFLEMAN-RECO:
ofcra_fnc_redfor_reco = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 25] call ofcra_fn_set_redfor_gears;

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	
	_unit addWeapon "ACE_Yardage450";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

