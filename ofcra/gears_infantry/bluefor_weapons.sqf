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

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};

	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_tablet";
};

// CDG
ofcra_fnc_bluefor_cdg = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 2, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};

	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda";
};

// CDE
ofcra_fnc_bluefor_cde = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 3, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_m4a1_m320";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addItemToVest "rhs_mag_M441_HE";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_M585_white";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M585_white";};
	_unit addItemToBackpack "rhs_mine_M19_mag";
	
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda";
};

// MEDIC
ofcra_fnc_bluefor_medic = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 4, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	_unit addItemToVest "SmokeShellGreen";

	for "_i" from 1 to 50 do {_unit addItemToBackpack "cse_bandage_basic";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_morphine";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_epinephrine";};
};

// GRENADIER
ofcra_fnc_bluefor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 5, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_m4a1_m320";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_m662_red";};

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
};

// GRENADIER_ASSISTANT
ofcra_fnc_bluefor_grenadier_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 6, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addWeapon "tf47_at4_HEDP";

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";

	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_m662_red";};
};

// AUTORIFLEMAN
ofcra_fnc_bluefor_autorifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 7, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m249_pip_elcan";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
	_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";

	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
};

// AUTORIFLEMAN ASSISTANT
ofcra_fnc_bluefor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 8, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addWeapon "tf47_at4_HEDP";

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

	_unit addWeapon "rhs_weap_m240B";
	_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
};

// GUNNER ASSISTANT
ofcra_fnc_bluefor_gunner_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 10, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addWeapon "tf47_at4_HEDP";

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
};

// ANTI-TANK
ofcra_fnc_bluefor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addWeapon "tf47_m3maaws";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "tf47_m3maaws_HEAT";};
	_unit addItemToBackpack "tf47_m3maaws_HEDP";

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
};

// ANTI-TANK ASSISTANT
ofcra_fnc_bluefor_antitank_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 12, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addWeapon "rhs_weap_M136";
	_unit addItemToBackpack "rhs_m136_mag";
	
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};


	for "_i" from 1 to 2 do {_unit addItemToBackpack "MAAWS_HEAT";};
	_unit addItemToBackpack "MAAWS_HEDP";
};

// ANTI-TANK LIGHT
ofcra_fnc_bluefor_antitank_light = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addWeapon "rhs_weap_M136";
	_unit addItemToBackpack "rhs_m136_mag";
	
	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
};

// MARKSMAN
ofcra_fnc_bluefor_marksman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 13, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "hlc_rifle_samr2";
	_unit addPrimaryWeaponItem "optic_LRPS";
	for "_i" from 1 to 8 do {_unit addItemToVest "hlc_30rnd_556x45_SPR";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30rnd_556x45_SPR";};

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// SNIPER
ofcra_fnc_bluefor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 14, _clothes] call ofcra_fn_set_clothes;
	_unit addWeapon "rhs_weap_XM2010";
	_unit addPrimaryWeaponItem "";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// SPOTTER
ofcra_fnc_bluefor_spotter = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 15, _clothes] call ofcra_fn_set_clothes;
	
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
	
	_unit addWeapon "Laserdesignator";
};

// EXPLOSIVE SPECIALIST
ofcra_fnc_bluefor_explosive_specialist = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 16, _clothes] call ofcra_fn_set_clothes;
	
	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};

	for "_i" from 1 to 3 do {this addItemToBackpack "SatchelCharge_Remote_Mag";};
};

// RIFLEMAN
ofcra_fnc_bluefor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 17, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4a1_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	_unit addItemToVest "rhs_mag_m67";
	_unit addItemToVest "SmokeShell";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_m67";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShell";};
};

// DRIVER
ofcra_fnc_bluefor_driver = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 18, _clothes] call ofcra_fn_set_clothes;
	
	_unit addWeapon "rhs_weap_m4";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addItem "cse_m_pda";
};

// GROUND CREW
ofcra_fnc_bluefor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 19, _clothes] call ofcra_fn_set_clothes;
	
	_unit addWeapon "rhs_weap_m4";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
};

// PILOT
ofcra_fnc_bluefor_pilot = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 20, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	_unit addItem "cse_m_pda";
};

// AIR CREW
ofcra_fnc_bluefor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 21, _clothes] call ofcra_fn_set_clothes;

	_unit addWeapon "rhs_weap_m4";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
};


////// Classes definitions

cdc_bluefor_classes = [
	"B_officer_F",	// NATO\Officer
	"B_G_officer_F"	// FIA\Officer
];

cdg_bluefor_classes = [
	"rhsusf_army_ocp_teamleader",	// USA (Army - Woodland)\Team Leader
	"rhsusf_army_ucp_teamleader",	// USA (Army - Desert)\Team Leader
	"B_Soldier_TL_F",				// NATO\Team Leader
	"B_G_Soldier_TL_F"				// FIA\Team Leader
];

cde_bluefor_classes = [
	"rhsusf_army_ocp_squadleader",	// USA (Army - Woodland)\Squad Leader
	"rhsusf_army_ucp_squadleader",	// USA (Army - Desert)\Squad Leader
	"B_Soldier_SL_F",				// NATO\Squad Leader
	"B_G_Soldier_SL_F"				// FIA\Squad Leader
];

medic_bluefor_classes = [
	"rhsusf_army_ocp_medic",	// USA (Army - Woodland)\Medic
 	"rhsusf_army_ucp_medic",	// USA (Army - Desert)\Medic
 	"B_medic_F", 				// NATO\Combat Life Saver
 	"B_G_medic_F"				// FIA\Combat Life Saver
];

grenadier_bluefor_classes = [
	"rhsusf_army_ocp_grenadier",	// USA (Army - Woodland)\Grenadier
	"rhsusf_army_ucp_grenadier",	// USA (Army - Desert)\Grenadier
	"B_Soldier_GL_F",				// NATO\Grenadier
	"B_G_Soldier_GL_F"				// FIA\Grenadier
];

grenadier_assistant_bluefor_classes = [
	"B_Soldier_A_F",	// NATO\Ammo Bearer
	"B_G_Soldier_A_F"	// FIA\Ammo Bearer
];

autorifleman_bluefor_classes = [
	"rhsusf_army_ocp_autorifleman",		// USA (Army - Woodland)\Automatic Rifleman (M249)
	"rhsusf_army_ucp_autorifleman",		// USA (Army - Desert)\Automatic Rifleman (M249)
	"B_soldier_AR_F",					// NATO\Autorifleman
	"B_G_Soldier_AR_F"					// FIA\Autorifleman
];

autorifleman_assistant_bluefor_classes = [
	"rhsusf_army_ocp_autoriflemana",	// USA (Army - Woodland)\Automatic Rifleman Ass. (M249)
	"rhsusf_army_ucp_autoriflemana",	// USA (Army - Desert)\Automatic Rifleman Ass. (M249)
	"B_soldier_AAR_F"					// NATO\Asst. Autorifleman
];

gunner_bluefor_classes = [
	"rhsusf_army_ocp_machinegunner",	// USA (Army - Woodland)\Machine Gunner
	"rhsusf_army_ucp_machinegunner"		// USA (Army - Desert)\Machine Gunner
];

gunner_assistant_bluefor_classes = [
	"rhsusf_army_ocp_machinegunnera",	// USA (Army - Woodland)\Machine Gunner Assistant
	"rhsusf_army_ucp_machinegunnera"	// USA (Army - Desert)\Machine Gunner Assistant
];

antitank_bluefor_classes = [
	"rhsusf_army_ocp_javelin",	// USA (Army - Woodland)\AT Specialist (Javelin)
	"rhsusf_army_ucp_javelin",	// USA (Army - Desert)\AT Specialist (Javelin)
	"B_soldier_AT_F"			// NATO\Missile Specialist (AT)
];

antitank_assistant_bluefor_classes = [
	"B_soldier_AAT_F"	// NATO\Asst. Missile Specialist (AT)
];

antitank_light_bluefor_classes = [
	"B_soldier_LAT_F",			// NATO\Rifleman (AT)
	"B_G_Soldier_LAT_F"			// FIA\Rifleman (AT)
];

marksman_bluefor_classes = [
	"rhsusf_army_ocp_marksman",	// USA (Army - Woodland)\Marksman
	"rhsusf_army_ucp_marksman",	// USA (Army - Desert)\Marksman
	"B_soldier_M_F",			// NATO\Marksman
	"B_G_Soldier_M_F"			// FIA\Marksman
	
];

sniper_bluefor_classes = [
	"rhsusf_army_ocp_sniper",	// USA (Army - Woodland)\Sniper
	"rhsusf_army_ucp_sniper",	// USA (Army - Desert)\Sniper
	"B_sniper_F"				// NATO\Sniper
];

driver_bluefor_classes = [
	"rhsusf_army_ocp_driver",			// USA (Army - Woodland)\Driver
	"rhsusf_army_ucp_driver"			// USA (Army - Desert)\Driver
];

ground_crew_bluefor_classes = [
	"rhsusf_army_ocp_crewman",			// USA (Army - Woodland)\Crew
	"rhsusf_army_ocp_combatcrewman",	// USA (Army - Woodland)\Crew (Combat)
	"rhsusf_army_ucp_crewman",			// USA (Army - Desert)\Crew
	"rhsusf_army_ucp_combatcrewman",	// USA (Army - Desert)\Crew (Combat)
	"B_crew_F"							// NATO\Crewman
];

pilot_bluefor_classes = [
	"rhsusf_army_ocp_helipilot",	// USA (Army - Woodland)\Helicopter Pilot
	"rhsusf_army_ucp_helipilot",	// USA (Army - Desert)\Helicopter Pilot
	"B_Helipilot_F",				// NATO\Helicopter Pilot
	"B_Pilot_F"						// NATO\Pilot
];

air_crew_bluefor_classes = [
	"rhsusf_army_ocp_helicrew",		// USA (Army - Woodland)\Helicopter Crew
	"rhsusf_army_ucp_helicrew",		// USA (Army - Desert)\Helicopter Crew
	"B_helicrew_F"					// NATO\Helicopter Crew
];


explosive_specialist_bluefor_classes = [
	"B_soldier_exp_F",		// NATO\Explosive Specialist
	"B_G_Soldier_exp_F"		// FIA\Explosive Specialist
];

spotter_bluefor_classes = [
	"B_spotter_F"	// NATO\Spotter
];

rifleman_bluefor_classes = [
	"rhsusf_army_ocp_rifleman",		// USA (Army - Woodland)\Rifleman
	"rhsusf_army_ocp_riflemanl",	// USA (Army - Woodland)\Rifleman (Light)
	"rhsusf_army_ocp_riflemanat",	// USA (Army - Woodland)\Rifleman (M136)
	"rhsusf_army_ocp_rifleman_m16",	// USA (Army - Woodland)\Rifleman (M16)
	"rhsusf_army_ucp_rifleman",		// USA (Army - Desert)\Rifleman
	"rhsusf_army_ucp_riflemanl",	// USA (Army - Desert)\Rifleman (Light)
	"rhsusf_army_ucp_riflemanat",	// USA (Army - Desert)\Rifleman (M136)
	"rhsusf_army_ucp_rifleman_m16",	// USA (Army - Desert)\Rifleman (M16)
	"B_Soldier_F",					// NATO\Rifleman
	"B_Soldier_lite_F",				// NATO\Rifleman (Light)
	"b_soldier_unarmed_f",			// NATO\Rifleman (Unarmed)
	"B_G_Soldier_F",				// FIA\Rifleman
	"B_G_Soldier_lite_F",			// FIA\Rifleman (Light)
	"b_g_soldier_unarmed_f"			// FIA\Rifleman (Unarmed)
];
	


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
