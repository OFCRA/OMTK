_clothes = nil;

// COMMUN
ofcra_fnc_redfor_common = {
	private ["_unit"];
	_unit = _this select 0;

	//[_unit, 0, _clothes] call ofcra_fn_set_clothes;

	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_morphine";
	_unit addItemToUniform "cse_epinephrine";

	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addItemToUniform "rhs_mag_rdg2_white";
	
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemRadio";
	_unit linkItem "tf_microdagr";
	
};

// CDC
ofcra_fnc_redfor_cdc = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR"; 
	[_unit, 2, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";	
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToVest "rhs_mag_rdg2_white";
		
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_tablet_o";
};

// CDG
ofcra_fnc_redfor_cdg = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR"; 	
	[_unit, 2, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToVest "rhs_mag_rdg2_white";

	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda_o";

};

// CDE
ofcra_fnc_redfor_cde = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 3, _clothes] call ofcra_fn_set_clothes;

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
	
	[_unit, 4, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};

	for "_i" from 1 to 50 do {_unit addItemToBackpack "cse_bandage_basic";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_morphine";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_epinephrine";};
	for "_i" from 1 to 10 do {_unit addItemToBackpack "cse_saline_iv";};
};

// GRENADIER
ofcra_fnc_redfor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 5, _clothes] call ofcra_fn_set_clothes;

	_unit addItemToVest "rhs_rshg2_mag";
	_unit addWeapon "rhs_weap_rshg2";
		
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_gp25"; 
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
		
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25P";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VG40OP_white";};
			
};

// GRENADIER ASSISTANT
ofcra_fnc_redfor_grenadier_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 6, _clothes] call ofcra_fn_set_clothes;
	
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
	
	[_unit, 7, _clothes] call ofcra_fn_set_clothes;
	
	_unit addItemToVest "hlc_75Rnd_762x39_m_rpk";
	_unit addWeapon "hlc_rifle_rpk";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_75Rnd_762x39_m_rpk";};
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// AUTORIFLEMAN ASSISTANT
ofcra_fnc_redfor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 8, _clothes] call ofcra_fn_set_clothes;

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
	
	[_unit, 9, _clothes] call ofcra_fn_set_clothes;
	
	_unit addItemToBackpack "rhs_100Rnd_762x54mmR";
	_unit addWeapon "rhs_weap_pkm";

	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// GUNNER ASSISTANT
ofcra_fnc_redfor_gunner_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 10, _clothes] call ofcra_fn_set_clothes;

	
	_unit addItemToVest "rhs_rshg2_mag";
	_unit addWeapon "rhs_weap_rshg2";
	
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m"; 
	for "_i" from 1 to 3 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};

	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
};

// ANTI-TANK
ofcra_fnc_redfor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_ekp1";
	
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	
	_unit addWeapon "rhs_weap_rpg7";
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
	_unit addItemToBackpack "rhs_rpg7_PG7VR_mag";	
};

// ANTI-TANK ASSISTANT
ofcra_fnc_redfor_antitank_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 12, _clothes] call ofcra_fn_set_clothes;
	
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
	
	[_unit, 13, _clothes] call ofcra_fn_set_clothes;
	
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
		
	[_unit, 14, _clothes] call ofcra_fn_set_clothes;

	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};

	_unit addWeapon "rhs_weap_svds_pso1";
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
	
	_unit addItemToVest "rhs_mag_rgd5";
	_unit addItemToUniform "rhs_mag_rgd5";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
};

// SNIPER
ofcra_fnc_redfor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 15, _clothes] call ofcra_fn_set_clothes;

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
		
	[_unit, 16, _clothes] call ofcra_fn_set_clothes;
	
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

	[_unit, 17, _clothes] call ofcra_fn_set_clothes;
	
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
	
	[_unit, 18, _clothes] call ofcra_fn_set_clothes;

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
	[_unit, 19, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_folded";
	_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";
		
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda_o";
};

// GROUND CREW
ofcra_fnc_redfor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 20, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_folded";
	_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";
	
};

// PILOT
ofcra_fnc_redfor_pilot = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit setUnitRank "MAJOR"; 
	[_unit, 21, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};	
	_unit addWeapon "rhs_weap_ak74m_folded";
	
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addItem "cse_m_pda_o";
};

// AIR CREW
ofcra_fnc_redfor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 22, _clothes] call ofcra_fn_set_clothes;
	
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
	_unit addWeapon "rhs_weap_ak74m_folded";
	
};

////// REDFOR - classes definitions

cdc_redfor_classes = [
	"O_officer_F"			// CSAT\Men\Officer
];
cdg_redfor_classes = [
	"O_Soldier_TL_F"		// CSAT\Men\Team Leader
];

cde_redfor_classes = [
	"O_Soldier_SL_F" 		// CSAT\Men\Squad Leader
];

medic_redfor_classes = [
	"O_medic_F"				// CSAT\Men\Combat Life Saver
];

grenadier_redfor_classes = [
	"O_Soldier_GL_F"		// CSAT\Men\Grenadier
];

grenadier_assistant_redfor_classes = [
	"O_Soldier_A_F"			// CSAT\Men\Ammo Bearer
];

autorifleman_redfor_classes = [
	"O_Soldier_AR_F"		// CSAT\Men\Asst. Autorifleman
];

autorifleman_assistant_redfor_classes = [
	"O_Soldier_AAR_F"		// CSAT\Men\Assit. Autorifleman
];

gunner_redfor_classes = [
	"O_support_GMG_F",		// CSAT\Men (Support)\Gunner (GMG)
	"O_support_MG_F",		// CSAT\Men (Support)\Gunner (HMG)
	"O_support_Mort_F" 		// CSAT\Men (Support)\Gunner (Mk6)
];

gunner_assistant_redfor_classes = [
	"O_support_AMG_F",		// CSAT\Men (Support)\Asst. Gunner (HMG/GMG)
	"O_support_AMort_F"		// CSAT\Men (Support)\Asst. Gunner (Mk6)
];

antitank_redfor_classes = [
	"O_Soldier_AT_F"		// CSAT\Men\Missile Specialist (AT)
];

antitank_assistant_redfor_classes = [
	"O_Soldier_AAT_F"		// CSAT\Men\Asst. Missile Specialist (AT)
];

antitank_light_redfor_classes = [
	"O_Soldier_LAT_F"		// CSAT\Men\Rifleman (AT)
];

marksman_redfor_classes = [
	"O_soldier_M_F"			// CSAT\Men\Marksman
];

sniper_redfor_classes = [
	"O_sniper_F"			// CSAT\Men\Sniper
];

spotter_redfor_classes = [
	"O_spotter_F"			// CSAT\Men\Spotter
];

explosive_specialist_redfor_classes = [
	"O_soldier_exp_F"		// CSAT\Men\Explosive Specialist
];

rifleman_redfor_classes = [
	"O_Soldier_F",			// CSAT\Men\Rifleman
	"O_Soldier_lite_F",		// CSAT\Men\Rifleman (Light)
	"o_soldier_unarmed_f"	// CSAT\Men\Rifleman (Unarmed)
];

driver_redfor_classes = [
	"O_soldier_UAV_F"		// CSAT\Men\UAV Operator
];

ground_crew_redfor_classes = [
	"O_crew_F"				// CSAT\Men\Crewman
];

pilot_redfor_classes = [
	"O_helipilot_F",		// CSAT\Men\Helicopter Pilot
	"O_Pilot_F"				// CSAT\Men\Pilot
];

air_crew_redfor_classes = [
	"O_helicrew_F"			// CSAT\Men\Helicopter Crew
];


////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_set_redfor_gears = {
	private ["_unit", "_class","_found"];
	_unit  = _this select 0;
	_class = _this select 1;
	_clothes = _this select 2;
	_found = 0;
	
	//[_class, "DEBUG"] call ofcra_fnc_log;
	
	if (_class in rifleman_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_rifleman; _found=1; };
	if (_class in medic_redfor_classes)						then { [_unit] call ofcra_fnc_redfor_medic; _found=1; };
	if (_class in grenadier_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_grenadier; _found=1; };
	if (_class in grenadier_assistant_redfor_classes)		then { [_unit] call ofcra_fnc_redfor_grenadier_assistant; _found=1; };
	if (_class in autorifleman_redfor_classes)				then { [_unit] call ofcra_fnc_redfor_autorifleman; _found=1; };
	if (_class in autorifleman_assistant_redfor_classes)	then { [_unit] call ofcra_fnc_redfor_autorifleman_assistant; _found=1; };
	if (_class in gunner_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_gunner; _found=1; };
	if (_class in gunner_assistant_redfor_classes)			then { [_unit] call ofcra_fnc_redfor_gunner_assistant; _found=1; };
	if (_class in antitank_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_antitank; _found=1; };
	if (_class in antitank_assistant_redfor_classes)		then { [_unit] call ofcra_fnc_redfor_antitank_assistant; _found=1; };
	if (_class in antitank_light_redfor_classes)			then { [_unit] call ofcra_fnc_redfor_antitank_light; _found=1; };
	if (_class in marksman_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_marksman; _found=1; };
	if (_class in sniper_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_sniper; _found=1; };
	if (_class in driver_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_driver; _found=1; };
	if (_class in ground_crew_redfor_classes)				then { [_unit] call ofcra_fnc_redfor_ground_crew; _found=1; };
	if (_class in pilot_redfor_classes)						then { [_unit] call ofcra_fnc_redfor_pilot; _found=1; };
	if (_class in air_crew_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_air_crew; _found=1; };
	if (_class in explosive_specialist_redfor_classes)		then { [_unit] call ofcra_fnc_redfor_explosive_specialist; _found=1; };
	if (_class in spotter_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_spotter; _found=1; };
	if (_class in cde_redfor_classes)						then { [_unit] call ofcra_fnc_redfor_cde; _found=1; };
	if (_class in cdg_redfor_classes)						then { [_unit] call ofcra_fnc_redfor_cdg; _found=1; };
	if (_class in cdc_redfor_classes)						then { [_unit] call ofcra_fnc_redfor_cdc; _found=1; };
	[_unit] call ofcra_fnc_redfor_common;
	
	if (_found<1) then  {
		_log = "classe inconnue '" + _class + "'";
		[_log, "ERROR"] call ofcra_fnc_log;
		[_unit] call ofcra_fnc_remove_all_gears;
	};
	_found;
};
