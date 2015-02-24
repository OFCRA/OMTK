_clothes = nil;

// COMMUN
_ofcra_fnc_redfor_common = {
	private ["_unit"];
	_unit = _this select 0;

	[_unit, 0, _clothes] call ofcra_fn_set_clothes;
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_morphine";
	_unit addItemToUniform "cse_epinephrine";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemRadio";
	_unit linkItem "tf_microdagr";
	
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
};

// CDC
_ofcra_fnc_redfor_cdc = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit] call _ofcra_fnc_redfor_cdg;  // Same as CDG
};

// CDG
_ofcra_fnc_redfor_cdg = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 2, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "Binocular";
	_unit linkItem "ItemGPS";
	_unit addWeapon "rhs_weap_ak74m_gp25";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
};

// CDE
_ofcra_fnc_redfor_cde = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 3, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "rhs_weap_ak74m_gp25";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
};

// MEDIC
_ofcra_fnc_redfor_medic = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 4, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
	for "_i" from 1 to 50 do {_unit addItemToBackpack "cse_bandage_basic";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_morphine";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "cse_epinephrine";};
	_unit addWeapon "rhs_weap_ak74m";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};

};

// GRENADIER
_ofcra_fnc_redfor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 5, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "rhs_weap_ak74m_gp25";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25P";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VG40OP_white";};
	_unit addWeapon "rhs_weap_rshg2";
};

// GRENADIER ASSISTANT
_ofcra_fnc_redfor_grenadier_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 6, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "rhs_weap_ak74m"; 
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25P";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VG40OP_white";};
	_unit addWeapon "rhs_weap_rshg2";	
};

// AUTORIFLEMAN
_ofcra_fnc_redfor_autorifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 7, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addItemToVest "rhs_100Rnd_762x54mmR";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	_unit addWeapon "rhs_weap_pkp";
};

// AUTORIFLEMAN ASSISTANT
_ofcra_fnc_redfor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 8, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	this addWeapon "rhs_weap_ak74m";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
};

// GUNNER
_ofcra_fnc_redfor_gunner = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 9, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addItemToVest "rhs_100Rnd_762x54mmR";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	_unit addWeapon "rhs_weap_pkp";
};

// GUNNER ASSISTANT
_ofcra_fnc_redfor_gunner_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 10, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	this addWeapon "rhs_weap_ak74m";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
};

// ANTI-TANK
_ofcra_fnc_redfor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 11, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
		
};

// ANTI-TANK ASSISTANT
_ofcra_fnc_redfor_antitank_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 12, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "rhs_weap_rshg2";
};

// MARKSMAN
_ofcra_fnc_redfor_marksman = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 13, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "rhs_weap_svds_pso1";
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";};
	
};

// SNIPER
_ofcra_fnc_redfor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit] call _ofcra_fnc_redfor_marksman; // same as marksman
};

// GROUND CREW
_ofcra_fnc_redfor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 18, _clothes] call ofcra_fn_set_clothes;
	// TODO
};

// AIR CREW
_ofcra_fnc_redfor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 19, _clothes] call ofcra_fn_set_clothes;	
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rdg2_white";};
	this addWeapon "rhs_weap_ak74m";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
};

// EXPLOSIVE SPECIALIST
_ofcra_fnc_redfor_explosive_specialist = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 16, _clothes] call ofcra_fn_set_clothes;
};

// SPOTTER
_ofcra_fnc_redfor_explosive_spotter = {
	private ["_unit"];
	_unit = _this select 0;
		
	[_unit, 15, _clothes] call ofcra_fn_set_clothes;
};

// RIFLEMAN:
_ofcra_fnc_redfor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	[_unit, 17, _clothes] call ofcra_fn_set_clothes;
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	_unit addWeapon "rhs_weap_ak74m";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
};



////// Classes definitions

cdc_redfor_classes = [
	"rhs_msv_officer",			// Russia (MSV)\Officer
	"rhs_msv_officer_armored",	// Russia (MSV)\Officer (Armored)
	"rhs_vdv_officer",			// Russia (VDV)\Officer
	"rhs_vdv_officer_armored",	// Russia (VDV)\Officer (Armored)
	"O_officer_F"				// CSAT\Officer
];


cdg_redfor_classes = [
	"rhs_msv_sergeant",	// Russia (MSV)\Sergeant
	"rhs_vdv_sergeant",	// Russia (VDV)\Sergeant
	"O_Soldier_TL_F"	// CSAT\Team Leader
];

cde_redfor_classes = [
	"rhs_msv_junior_sergeant",	// Russia (MSV)\Junior Sergeant
	"rhs_vdv_junior_sergeant",	// Russia (VDV)\Junior Sergeant
	"O_Soldier_SL_F" 			// CSAT\Squad Leader
];

medic_redfor_classes = [
	"rhs_msv_medic",	// Russia (MSV)\Medic
	"rhs_vdv_medic",	// Russia (VDV)\Medic
	"O_medic_F"			// CSAT\Combat Life Saver
];

grenadier_redfor_classes = [
	"rhs_msv_grenadier",	// Russia (MSV)\Grenadier
	"rhs_msv_at",			// Russia (MSV)\Grenadier (RPG-7V2)
	"rhs_vdv_grenadier",	// Russia (VDV)\Grenadier
	"rhs_vdv_at",			// Russia (VDV)\Grenadier (RPG-7V2)
	"O_Soldier_GL_F"		// CSAT\Grenadier
];

grenadier_assistant_redfor_classes = [
	"rhs_msv_strelok_rpg_assist",	// Russia (MSV)\Grenadier Assistant
	"rhs_vdv_strelok_rpg_assist",	// Russia (VDV)\Grenadier Assistant
	"O_Soldier_A_F"					// CSAT\Ammo Bearer
];

autorifleman_redfor_classes = [
	"O_Soldier_AR_F"			// CSAT\Asst. Autorifleman
];

autorifleman_assistant_redfor_classes = [
	"O_Soldier_AAR_F"					// CSAT\Assit. Autorifleman
];

gunner_redfor_classes = [
	"rhs_msv_machinegunner",	// Russia (MSV)\Machine Gunner
	"rhs_vdv_machinegunner"		// Russia (VDV)\Machine Gunner
];

gunner_assistant_redfor_classes = [
	"rhs_msv_machinegunner_assistant",	// Russia (MSV)\Machine Gunner Assistant
	"rhs_vdv_machinegunner_assistant"	// Russia (VDV)\Machine Gunner Assistant
];


antitank_redfor_classes = [
	"rhs_msv_LAT",		// Russia (MSV)\Rifleman (RPG-26)
	"rhs_msv_RShG2",	// Russia (MSV)\Rifleman (RShG-2)
	"rhs_vdv_LAT",		// Russia (VDV)\Rifleman (RPG-26)
	"rhs_vdv_RShG2",	// Russia (VDV)\Rifleman (RShG-2)
	"O_Soldier_AT_F"	// CSAT\Missile Specialist (AT)
];

antitank_assistant_redfor_classes = [
	"O_Soldier_AAT_F"	// CSAT\Asst. Missile Specialist (AT)
];

marksman_redfor_classes = [
	"rhs_msv_marksman",	// Russia (MSV)\Marksman
	"rhs_vdv_marksman",	// Russia (VDV)\Marksman
	"O_soldier_M_F"		// CSAT\Marksman
];

sniper_redfor_classes = [
	"O_sniper_F"	// CSAT\Sniper
];

ground_crew_redfor_classes = [
	"rhs_msv_crew",				// Russia (MSV)\Crew
	"rhs_msv_armoredcrew",		// Russia (MSV)\Crew (Armored)
	"rhs_msv_combatcrew",		// Russia (MSV)\Crew (Combat)
	"rhs_msv_crew_commander",	// Russia (MSV)\Crew Commander
	"rhs_msv_driver",			// Russia (MSV)\Driver
	"rhs_msv_driver_armored",	// Russia (MSV)\Driver (Armored)
	"rhs_vdv_crew",				// Russia (VDV)\Crew 
	"rhs_vdv_armoredcrew",		// Russia (VDV)\Crew (Armored)
	"rhs_vdv_combatcrew",		// Russia (VDV)\Crew (Combat)
	"rhs_vdv_crew_commander",	// Russia (VDV)\Crew Commander
	"rhs_vdv_driver",			// Russia (VDV)\Driver
	"rhs_vdv_driver_armored",	// Russia (VDV)\Driver (Armored)
	"O_crew_F"					// CSAT\Crewman
];

air_crew_redfor_classes = [
	"rhs_pilot",				// Russia (VVS - Grey)\Pilot
	"rhs_pilot_combat_heli",	// Russia (VVS - Grey)\Pilot (Combat Helicopter)
	"rhs_pilot_transport_heli",	// Russia (VVS - Grey)\Pilot (Transport)
	"O_helicrew_F",				// CSAT\Helicopter Crew
	"O_helipilot_F",			// CSAT\Helicopter Pilot
	"O_Pilot_F"					// CSAT\Pilot
];

explosive_specialist_redfor_classes = [
	"O_soldier_exp_F"	// CSAT\Explosive Specialist
];

spotter_redfor_classes = [
	"O_spotter_F"	// CSAT\Spotter
];

rifleman_redfor_classes = [
	"rhs_msv_rifleman",		// Russia (MSV)\Rifleman
	"rhs_vdv_rifleman",		// Russia (VDV)\Rifleman
	"O_Soldier_F",			// CSAT\Rifleman
	"O_Soldier_lite_F",		// CSAT\Rifleman (Light)
	"o_soldier_unarmed_f"	// CSAT\Rifleman (Unarmed)
];


////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_set_redfor_gears = {
	private ["_unit", "_class","_found"];
	_unit  = _this select 0;
	_class = _this select 1;
	_clothes = _this select 2;
	_found = 0;
	
	[_unit] call _ofcra_fnc_redfor_common;
	if (_class in rifleman_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_rifleman; _found=1; };
	if (_class in medic_redfor_classes)						then { [_unit] call _ofcra_fnc_redfor_medic; _found=1; };
	if (_class in grenadier_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_grenadier; _found=1; };
	if (_class in grenadier_assistant_redfor_classes)		then { [_unit] call _ofcra_fnc_redfor_grenadier_assistant; _found=1; };
	if (_class in autorifleman_redfor_classes)				then { [_unit] call _ofcra_fnc_redfor_autorifleman; _found=1; };
	if (_class in autorifleman_assistant_redfor_classes)	then { [_unit] call _ofcra_fnc_redfor_autorifleman_assistant; _found=1; };
	if (_class in gunner_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_gunner; _found=1; };
	if (_class in gunner_assistant_redfor_classes)			then { [_unit] call _ofcra_fnc_redfor_gunner_assistant; _found=1; };
	if (_class in antitank_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_antitank; _found=1; };
	if (_class in antitank_assistant_redfor_classes)		then { [_unit] call _ofcra_fnc_redfor_antitank_assistant; _found=1; };
	if (_class in marksman_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_marksman; _found=1; };
	if (_class in sniper_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_sniper; _found=1; };
	if (_class in ground_crew_redfor_classes)				then { [_unit] call _ofcra_fnc_redfor_ground_crew; _found=1; };
	if (_class in air_crew_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_air_crew; _found=1; };
	if (_class in explosive_specialist_redfor_classes)		then { [_unit] call _ofcra_fnc_redfor_explosive_specialist; _found=1; };
	if (_class in spotter_redfor_classes)					then { [_unit] call _ofcra_fnc_redfor_spotter; _found=1; };
	if (_class in cde_redfor_classes)						then { [_unit] call _ofcra_fnc_redfor_cde; _found=1; };
	if (_class in cdg_redfor_classes)						then { [_unit] call _ofcra_fnc_redfor_cdg; _found=1; };
	if (_class in cdc_redfor_classes)						then { [_unit] call _ofcra_fnc_redfor_cdc; _found=1; };

	if (_found<1) then  {
		_log_line = "classe inconnue '" + _class + "'";
		systemChat _log_line;
		_log_line = '[OFCRA] ERROR: ' + _log_line;
		diag_log  _log_line;
		[_unit] call ofcra_fnc_remove_all_gears;
	};
	_found;
};
