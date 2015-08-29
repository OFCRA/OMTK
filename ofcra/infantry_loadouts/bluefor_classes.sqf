////////// NE PAS TOUCHER EN DESSOUS


cdc_bluefor_classes = [
	"B_officer_F",			// NATO\Men\Officer
	"B_G_officer_F"			// FIA\Men\Officer
];

cdg_bluefor_classes = [
	"B_Soldier_SL_F",		// NATO\Men\Team Leader
	"B_G_Soldier_SL_F"		// FIA\Men\Team Leader
];

cde_bluefor_classes = [
	"B_Soldier_TL_F",		// NATO\Men\Squad Leader
	"B_G_Soldier_TL_F"		// FIA\Men\Squad Leader
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
	"B_diver_TL_F"		// NATO\Men (Diver)\Diver Team leader
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

op_drone_bluefor_classes = [
	"B_soldier_UAV_F"			// NATO\Men\UAV Operator
];

op_radio_bluefor_classes = [
	"B_recon_JTAC_F"			// NATO\Men (Recon)\Recon JTAC
];

reco_bluefor_classes = [
	"B_recon_F"			// NATO\Men (Recon)\Recon Scout
];

ofcra_fnc_set_bluefor_loadout = {
	private ["_unit", "_class","_found"];
	_unit  = _this select 0;
	_class = _this select 1;
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
	if (_class in op_drone_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_op_drone; _found=1; };
	if (_class in op_radio_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_op_radio; _found=1; };
	if (_class in reco_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_reco; _found=1; };
	
	[_unit] call ofcra_fnc_bluefor_common;
	
	if (_found<1) then  {
		_log = "classe inconnue '" + _class + "'";
		[_log, "ERROR"] call ofcra_fnc_log;
		[_unit] call ofcra_fnc_remove_all_gears;
	};
	_found;
};