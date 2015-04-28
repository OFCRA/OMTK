_clothes = nil;

// COMMUN
ofcra_fnc_bluefor_common = {
	private ["_unit"];
	_unit = _this select 0;

	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_morphine";
	_unit addItemToUniform "cse_epinephrine";

	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemRadio";
	_unit linkItem "tf_microdagr";
};

// CDC
ofcra_fnc_bluefor_cdc = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 1, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "rhs_mag_m67";
	
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_tablet";
};

// CDG
ofcra_fnc_bluefor_cdg = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 2, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";

	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "rhs_mag_m67";

	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda";
};

// CDE
ofcra_fnc_bluefor_cde = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 3, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_m4a1_m320";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m662_red";};

	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
	
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda";
};

// MEDIC
ofcra_fnc_bluefor_medic = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 4, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	_unit addItemToVest "SmokeShellGreen";
	_unit addItemToVest "rhs_mag_m67";

	for "_i" from 1 to 50 do {_unit addItemToBackpack "cse_bandage_basic";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_morphine";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_epinephrine";};
	for "_i" from 1 to 10 do {_unit addItemToBackpack "cse_saline_iv";};
};

// GRENADIER
ofcra_fnc_bluefor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 5, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_m4a1_m320";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
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
	
	[_unit, 6, _clothes] call ofcra_fn_set_clothes;

	_unit addItemToBackpack "rhs_m136_hedp_mag";
	_unit addWeapon "rhs_weap_M136_hedp";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
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
	
	[_unit, 7, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
	_unit addWeapon "rhs_weap_m249_pip_elcan";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";

	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
};

// AUTORIFLEMAN ASSISTANT
ofcra_fnc_bluefor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 8, _clothes] call ofcra_fn_set_clothes;

	_unit addItemToBackpack "rhs_m136_hedp_mag";
	_unit addWeapon "rhs_weap_M136_hedp";
	
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
};

// GUNNER
ofcra_fnc_bluefor_gunner = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 9, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
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
	
	[_unit, 10, _clothes] call ofcra_fn_set_clothes;

	_unit addItemToBackpack "rhs_m136_hedp_mag";
	_unit addWeapon "rhs_weap_M136_hedp";
	
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
	
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
	_unit addItemToVest "rhsusf_100Rnd_762x51";
};

// ANTI-TANK
ofcra_fnc_bluefor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	
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
	
	[_unit, 12, _clothes] call ofcra_fn_set_clothes;
	
	_unit addItemToBackpack "rhs_m136_mag";
	_unit addWeapon "rhs_weap_M136";
		
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
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
	
	[_unit, 13, _clothes] call ofcra_fn_set_clothes;

	_unit addItemToBackpack "rhs_m136_mag";
	_unit addWeapon "rhs_weap_M136";
		
	for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// MARKSMAN
ofcra_fnc_bluefor_marksman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 14, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 8 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
	//_unit addWeapon "hlc_rifle_samr2";
	_unit addWeapon "rhs_weap_m14ebrri";
	_unit addPrimaryWeaponItem "optic_DMS";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// SNIPER
ofcra_fnc_bluefor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 15, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 10 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
	_unit addWeapon "rhs_weap_XM2010";
	_unit addPrimaryWeaponItem "optic_LRPS";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// SPOTTER
ofcra_fnc_bluefor_spotter = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 16, _clothes] call ofcra_fn_set_clothes;
	

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	
	_unit addWeapon "lerca_1200_black";
};

// EXPLOSIVE SPECIALIST
ofcra_fnc_bluefor_explosive_specialist = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 17, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};

	for "_i" from 1 to 2 do {_unit addItemToBackpack "SatchelCharge_Remote_Mag";};
};

// RIFLEMAN
ofcra_fnc_bluefor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 18, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// DRIVER
ofcra_fnc_bluefor_driver = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 19, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
	_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda";
};

// GROUND CREW
ofcra_fnc_bluefor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 20, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
	_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";
};

// PILOT
ofcra_fnc_bluefor_pilot = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 21, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
	
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda";
};

// AIR CREW
ofcra_fnc_bluefor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 22, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addWeapon "rhs_weap_m4";
};

////// BLUEFOR classes definitions

cdc_bluefor_classes = [
	"B_officer_F",			// NATO\Men\Officer
	"B_G_officer_F"			// FIA\Men\Officer
];

cdg_bluefor_classes = [
	"B_Soldier_TL_F",		// NATO\Men\Team Leader
	"B_G_Soldier_TL_F"		// FIA\Men\Team Leader
];

cde_bluefor_classes = [
	"B_Soldier_SL_F",		// NATO\Men\Squad Leader
	"B_G_Soldier_SL_F"		// FIA\Men\Squad Leader
];

medic_bluefor_classes = [
 	"B_medic_F", 			// NATO\Men\Combat Life Saver
 	"B_G_medic_F"			// FIA\Men\Combat Life Saver
];

grenadier_bluefor_classes = [
	"B_Soldier_GL_F",		// NATO\Men\Grenadier
	"B_G_Soldier_GL_F"		// FIA\Men\Grenadier
];

grenadier_assistant_bluefor_classes = [
	"B_Soldier_A_F",		// NATO\Men\Ammo Bearer
	"B_G_Soldier_A_F"		// FIA\Men\Ammo Bearer
];

autorifleman_bluefor_classes = [
	"B_soldier_AR_F",		// NATO\Men\Autorifleman
	"B_G_Soldier_AR_F"		// FIA\Men\Autorifleman
];

autorifleman_assistant_bluefor_classes = [
	"B_soldier_AAR_F"		// NATO\Men (Support)\Asst. Autorifleman
];

gunner_bluefor_classes = [
	"B_support_GMG_F",		// NATO\Men (Support)\Gunner (GMG)
	"B_support_MG_F",		// NATO\Men (Support)\Gunner (HMG)
	"B_support_Mort_F" 		// NATO\Men (Support)\Gunner (Mk6)
];

gunner_assistant_bluefor_classes = [
	"B_support_AMG_F",		// NATO\Men (Support)\Asst. Gunner (HMG/GMG)
	"B_support_AMort_F"		// NATO\Men (Support)\Asst. Gunner (Mk6)
];

antitank_bluefor_classes = [
	"B_soldier_AT_F"		// NATO\Men\Missile Specialist (AT)
];

antitank_assistant_bluefor_classes = [
	"B_soldier_AAT_F"		// NATO\Men (Support)\Asst. Missile Specialist (AT)
];

antitank_light_bluefor_classes = [
	"B_soldier_LAT_F",		// NATO\Men\Rifleman (AT)
	"B_G_Soldier_LAT_F"		// FIA\Men\Rifleman (AT)
];

marksman_bluefor_classes = [
	"B_soldier_M_F",		// NATO\Men\Marksman
	"B_G_Soldier_M_F"		// FIA\Men\Marksman
	
];

sniper_bluefor_classes = [
	"B_sniper_F"			// NATO\Men (Sniper)\Sniper
];

spotter_bluefor_classes = [
	"B_spotter_F"			// NATO\Men (Sniper)\Spotter
];

explosive_specialist_bluefor_classes = [
	"B_soldier_exp_F",		// NATO\Men\Explosive Specialist
	"B_G_Soldier_exp_F"		// FIA\Men\Explosive Specialist
];

rifleman_bluefor_classes = [
	"B_Soldier_F",			// NATO\Men\Rifleman
	"B_Soldier_lite_F",		// NATO\Men\Rifleman (Light)
	"b_soldier_unarmed_f",	// NATO\Men\Rifleman (Unarmed)
	"B_G_Soldier_F",		// FIA\Men\Rifleman
	"B_G_Soldier_lite_F",	// FIA\Men\Rifleman (Light)
	"b_g_soldier_unarmed_f"	// FIA\Men\Rifleman (Unarmed)
];
	
driver_bluefor_classes = [
	"B_soldier_UAV_F"		// NATO\Men\UAV Operator
];

ground_crew_bluefor_classes = [
	"B_crew_F"				// NATO\Men\Crewman
];

pilot_bluefor_classes = [
	"B_Helipilot_F",		// NATO\Men\Helicopter Pilot
	"B_Pilot_F"				// NATO\Men\Pilot
];

air_crew_bluefor_classes = [
	"B_helicrew_F"			// NATO\Men\Helicopter Crew
];


////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_set_bluefor_gears = {
	private ["_unit", "_class","_found"];
	_unit  = _this select 0;
	_class = _this select 1;
	_clothes = _this select 2;
	_found = 0;
	
	if (_class in rifleman_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_rifleman; _found=1; };
	if (_class in medic_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_medic; _found=1; };
	if (_class in grenadier_bluefor_classes)				then { [_unit] call ofcra_fnc_bluefor_grenadier; _found=1; };
	if (_class in grenadier_assistant_bluefor_classes)		then { [_unit] call ofcra_fnc_bluefor_grenadier_assistant; _found=1; };
	if (_class in autorifleman_bluefor_classes)				then { [_unit] call ofcra_fnc_bluefor_autorifleman; _found=1; };
	if (_class in autorifleman_assistant_bluefor_classes)	then { [_unit] call ofcra_fnc_bluefor_autorifleman_assistant; _found=1; };
	if (_class in gunner_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_gunner; _found=1; };
	if (_class in gunner_assistant_bluefor_classes)			then { [_unit] call ofcra_fnc_bluefor_gunner_assistant; _found=1; };
	if (_class in antitank_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_antitank; _found=1; };
	if (_class in antitank_assistant_bluefor_classes)		then { [_unit] call ofcra_fnc_bluefor_antitank_assistant; _found=1; };
	if (_class in antitank_light_bluefor_classes)			then { [_unit] call ofcra_fnc_bluefor_antitank_light; _found=1; };
	if (_class in marksman_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_marksman; _found=1; };
	if (_class in sniper_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_sniper; _found=1; };
	if (_class in driver_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_driver; _found=1; };	
	if (_class in ground_crew_bluefor_classes)				then { [_unit] call ofcra_fnc_bluefor_ground_crew; _found=1; };
	if (_class in air_crew_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_air_crew; _found=1; };
	if (_class in pilot_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_pilot; _found=1; };
	if (_class in spotter_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_spotter; _found=1; };
	if (_class in explosive_specialist_bluefor_classes)		then { [_unit] call ofcra_fnc_bluefor_explosive_specialist; _found=1; };
	if (_class in cde_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_cde; _found=1; };
	if (_class in cdg_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_cdg; _found=1; };
	if (_class in cdc_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_cdc; _found=1; };
	[_unit] call ofcra_fnc_bluefor_common;
	
	if (_found<1) then  {
		_log = "classe inconnue '" + _class + "'";
		[_log, "ERROR"] call ofcra_fnc_log;
		[_unit] call ofcra_fnc_remove_all_gears;
	};
	_found;
};