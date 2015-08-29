// COMMUN
ofcra_fnc_bluefor_common = {
	private ["_unit"];
	_unit = _this select 0;

	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_epinephrine";
	_unit addItemToUniform "ACE_morphine";

	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "ACE_EarPlugs";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemRadio";
	_unit linkItem "tf_microdagr";
};

// CDC
ofcra_fnc_bluefor_cdc = {
	private ["_unit"];
	_unit = _this select 0;

	_unit setUnitRank "COLONEL";
	[_unit, 1] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "rhs_mag_m67";
	
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// CDG
ofcra_fnc_bluefor_cdg = {
	private ["_unit"];
	_unit = _this select 0;

	_unit setUnitRank "MAJOR";
	[_unit, 2] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";

	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "rhs_mag_m67";

	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// CDE
ofcra_fnc_bluefor_cde = {
	private ["_unit"];
	_unit = _this select 0;

	_unit setUnitRank "CAPTAIN";
	[_unit, 3] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_m4a1_m320";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_m662_red";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	
	_unit addWeapon "Binocular";
};

// MEDIC
ofcra_fnc_bluefor_medic = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 4] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	_unit addItemToVest "SmokeShellGreen";
	_unit addItemToVest "rhs_mag_m67";

	for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_bloodIV";};
};

// GRENADIER
ofcra_fnc_bluefor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 5] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_m4a1_m320";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_m662_red";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
};

// GRENADIER_ASSISTANT
ofcra_fnc_bluefor_grenadier_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 6] call ofcra_fn_set_bluefor_gears;

	_unit addItemToBackpack "rhs_m136_hedp_mag";
	_unit addWeapon "rhs_weap_M136_hedp";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";

	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m662_red";};
};

// AUTORIFLEMAN
ofcra_fnc_bluefor_autorifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 7] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
	_unit addWeapon "rhs_weap_m249_pip_elcan";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
	_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";
	_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";

	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
};

// AUTORIFLEMAN ASSISTANT
ofcra_fnc_bluefor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 8] call ofcra_fn_set_bluefor_gears;

	_unit addItemToBackpack "rhs_m136_hedp_mag";
	_unit addWeapon "rhs_weap_M136_hedp";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
	for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
};

// GUNNER
ofcra_fnc_bluefor_gunner = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 9] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
	_unit addWeapon "rhs_weap_m240B";
	_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
};

// GUNNER ASSISTANT
ofcra_fnc_bluefor_gunner_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 10] call ofcra_fn_set_bluefor_gears;

	_unit addItemToBackpack "rhs_m136_hedp_mag";
	_unit addWeapon "rhs_weap_M136_hedp";
	
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
	
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
};

// ANTI-TANK
ofcra_fnc_bluefor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	
	_unit addItemToBackpack "tf47_m3maaws_HEAT";
	_unit addWeapon "tf47_m3maaws";
	_unit addSecondaryWeaponItem "tf47_optic_m3maaws";
	_unit addItemToBackpack "tf47_m3maaws_HEDP";
	_unit addItemToBackpack "tf47_m3maaws_HEAT";
	
	_unit addItemToUniform "rhs_mag_m67";
	_unit addItemToUniform "SmokeShell";
};

// ANTI-TANK ASSISTANT
ofcra_fnc_bluefor_antitank_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 12] call ofcra_fn_set_bluefor_gears;
	
	_unit addItemToBackpack "rhs_m136_mag";
	_unit addWeapon "rhs_weap_M136";
		
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	
	for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_m67";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "SmokeShell";};

	_unit addItemToBackpack "tf47_m3maaws_HEAT";
	_unit addItemToBackpack "tf47_m3maaws_HEDP";
};

// ANTI-TANK LIGHT
ofcra_fnc_bluefor_antitank_light = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 13] call ofcra_fn_set_bluefor_gears;

	_unit addItemToBackpack "rhs_m136_mag";
	_unit addWeapon "rhs_weap_M136";
		
	for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// MARKSMAN
ofcra_fnc_bluefor_marksman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 14] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 10 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
	_unit addWeapon "rhs_weap_m14ebrri";
	_unit addPrimaryWeaponItem "optic_DMS";

	_unit addItemToVest "ACE_RangeCard";
	_unit addItemToVest "ACE_Kestrel4500";
	_unit addItemToVest "ACE_ATragMX";
	_unit addWeapon "ACE_Vector";
};

// SNIPER
ofcra_fnc_bluefor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 15] call ofcra_fn_set_bluefor_gears;
	
	for "_i" from 1 to 10 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
	_unit addWeapon "rhs_weap_XM2010";
	_unit addPrimaryWeaponItem "optic_LRPS";
	
	_unit addItemToVest "ACE_RangeCard";
	_unit addItemToVest "ACE_Kestrel4500";
	_unit addItemToVest "ACE_ATragMX";
		_unit addWeapon "ACE_Vector";
};

// SPOTTER
ofcra_fnc_bluefor_spotter = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 16] call ofcra_fn_set_bluefor_gears;
	

	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	
	_unit addItemToVest "ACE_RangeCard";
	_unit addItemToVest "ACE_Kestrel4500";
	_unit addItemToVest "ACE_ATragMX";
	_unit addWeapon "ACE_Vector";
	_unit addItemToVest "ACE_microDAGR";
};

// EXPLOSIVE SPECIALIST
ofcra_fnc_bluefor_explosive_specialist = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 17] call ofcra_fn_set_bluefor_gears;
	
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};

	for "_i" from 1 to 2 do {_unit addItemToBackpack "SatchelCharge_Remote_Mag";};
};

// RIFLEMAN
ofcra_fnc_bluefor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 18] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// DRIVER
ofcra_fnc_bluefor_driver = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR";
	[_unit, 19] call ofcra_fn_set_bluefor_gears;
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
	_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// GROUND CREW
ofcra_fnc_bluefor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 20] call ofcra_fn_set_bluefor_gears;
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
	_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";
};

// PILOT
ofcra_fnc_bluefor_pilot = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR";
	[_unit, 21] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
	
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// AIR CREW
ofcra_fnc_bluefor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 22] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
};

// Operateur de Drone
ofcra_fnc_bluefor_op_drone = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 23] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "rhs_mag_m67";
	
	_unit addWeapon "Binocular";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};

// Operateur Radio
ofcra_fnc_bluefor_op_radio = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 24] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "rhs_mag_m67";

	_unit addItemToVest "ACE_microDAGR";
};

// RIFLEMAN-RECO
ofcra_fnc_bluefor_reco = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 25] call ofcra_fn_set_bluefor_gears;

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	
	_unit addWeapon "ACE_Yardage450";
	_unit addItemToVest "ACE_MapTools";
	_unit addItemToVest "ACE_microDAGR";
};


