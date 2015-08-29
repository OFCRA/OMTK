////// REDFOR - classes definitions

cdc_redfor_classes = [
	"O_officer_F"			// CSAT\Men\Officer
];
cdg_redfor_classes = [
	"O_Soldier_SL_F"		// CSAT\Men\SquadLeader
];

cde_redfor_classes = [
	"O_Soldier_TL_F" 		// CSAT\Men\Team Leader
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
	"O_diver_TL_F"		// CSAT\Men (Diver)\Diver Team Leader
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

op_drone_redfor_classes = [
	"O_soldier_UAV_F"			// CSAT\Men\UAV Operator
];

op_radio_redfor_classes = [
	"O_recon_JTAC_F"			// CSAT\Men (Recon)\Recon JTAC
];

reco_redfor_classes = [
	"O_recon_F"			// CSAT\Men (Recon)\Recon Scout
];

////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_set_redfor_loadout = {
	private ["_unit", "_class","_found"];
	_unit  = _this select 0;
	_class = _this select 1;
	_found = 0;
	
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
	if (_class in op_drone_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_op_drone; _found=1; };
	if (_class in op_radio_redfor_classes)					then { [_unit] call ofcra_fnc_redfor_op_radio; _found=1; };
	if (_class in reco_redfor_classes)						then { [_unit] call ofcra_fnc_redfor_reco; _found=1; };
	
	[_unit] call ofcra_fnc_redfor_common;
	
	if (_found<1) then  {
		_log = "classe inconnue '" + _class + "'";
		[_log, "ERROR"] call ofcra_fnc_log;
		[_unit] call ofcra_fnc_remove_all_gears;
	};
	_found;
};
