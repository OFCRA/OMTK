// DEFAUT BLUEFOR:
ofcra_fnc_bluefor_camp = {
	private ["_unit"];
	_unit = _this select 0;
		
	_unit addVest "rhsusf_iotv_ocp_rifleman";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
};

// CDC
ofcra_fnc_bluefor_cdc = {
	private ["_unit"];
	_unit = _this select 0;

};

// CDG
ofcra_fnc_bluefor_cdg = {
	private ["_unit"];
	_unit = _this select 0;

};

// CDE
ofcra_fnc_bluefor_cde = {
	private ["_unit"];
	_unit = _this select 0;

};

// MEDIC
ofcra_fnc_bluefor_medic = {
	private ["_unit"];
	_unit = _this select 0;
		
	_unit addVest "rhsusf_iotv_ocp_rifleman";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
};

// GRENADIER
ofcra_fnc_bluefor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
};

// GRENADIER_ASSISTANT
ofcra_fnc_bluefor_grenadier_assistant = {
	private ["_unit"];
	_unit = _this select 0;
	
};

// AUTORIFLEMAN
ofcra_fnc_bluefor_autorifleman = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// AUTORIFLEMAN ASSISTANT
ofcra_fnc_bluefor_autorifleman_assistant = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// ANTI-TANK
ofcra_fnc_bluefor_antitank = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// ANTI-TANK ASSISTANT
ofcra_fnc_bluefor_antitank_assistant = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// MARKSMAN
ofcra_fnc_bluefor_marksman = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// SNIPER
ofcra_fnc_bluefor_sniper = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// GROUND CREW
ofcra_fnc_bluefor_ground_crew = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// AIR CREW
ofcra_fnc_bluefor_air_crew = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// EXPLOSIVE SPECIALIST
ofcra_fnc_bluefor_explosive_specialist = {
	private ["_unit"];
	_unit = _this select 0;
		
};

// RIFLEMAN
ofcra_fnc_bluefor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
		
};




////// Classes definitions

cdc_bluefor_classes = [
	"B_officer_F",	// NATO\Officer
	"B_G_officer_F" // FIA\Officer
];

cdg_bluefor_classes = [
	"rhsusf_army_ocp_teamleader", // USA (Army - Woodland)\Team Leader
	"rhsusf_army_ucp_teamleader", // USA (Army - Desert)\Team Leader
	"B_Soldier_TL_F",			  // NATO\Team Leader
	"B_G_Soldier_TL_F"			  // FIA\Team Leader
];

cde_bluefor_classes = [
	"rhsusf_army_ocp_squadleader", // USA (Army - Woodland)\Squad Leader
	"rhsusf_army_ucp_squadleader", // USA (Army - Desert)\Squad Leader
	"B_Soldier_SL_F",			   // NATO\Squad Leader
	"B_G_Soldier_SL_F"			   // FIA\Squad Leader
];

medic_bluefor_classes = [
	"rhsusf_army_ocp_medic", // USA (Army - Woodland)\Medic
 	"rhsusf_army_ucp_medic", // USA (Army - Desert)\Medic
 	"B_medic_F", 			 // NATO\Combat Life Saver
 	"B_G_medic_F"   		 // FIA\Combat Life Saver
];

grenadier_bluefor_classes = [
	"rhsusf_army_ocp_grenadier", // USA (Army - Woodland)\Grenadier
	"rhsusf_army_ucp_grenadier", // USA (Army - Desert)\Grenadier
	"B_Soldier_GL_F",			 // NATO\Grenadier
	"B_G_Soldier_GL_F"			 // FIA\Grenadier
];

grenadier_assistant_bluefor_classes = [
	"B_Soldier_A_F",  // NATO\Ammo Bearer
	"B_G_Soldier_A_F" // FIA\Ammo Bearer
];

autorifleman_bluefor_classes = [
	"rhsusf_army_ocp_autorifleman",  // USA (Army - Woodland)\Automatic Rifleman (M249)
	"rhsusf_army_ocp_machinegunner", // USA (Army - Woodland)\Machine Gunner
	"rhsusf_army_ucp_autorifleman",	 // USA (Army - Desert)\Automatic Rifleman (M249)
	"rhsusf_army_ucp_machinegunner", // USA (Army - Desert)\Machine Gunner
	"B_soldier_AR_F",				 // NATO\Autorifleman
	"B_G_Soldier_AR_F"				 // FIA\Autorifleman
];

autorifleman_assistant_bluefor_classes = [
	"rhsusf_army_ocp_autoriflemana",  // USA (Army - Woodland)\Automatic Rifleman Ass. (M249)
	"rhsusf_army_ocp_machinegunnera", // USA (Army - Woodland)\Machine Gunner Assistant
	"rhsusf_army_ucp_autoriflemana",  // USA (Army - Desert)\Automatic Rifleman Ass. (M249)
	"rhsusf_army_ucp_machinegunnera", // USA (Army - Desert)\Machine Gunner Assistant
	"B_soldier_AAR_F"				  // NATO\Asst. Autorifleman
];

antitank_bluefor_classes = [
	"rhsusf_army_ocp_javelin", // USA (Army - Woodland)\AT Specialist (Javelin)
	"rhsusf_army_ucp_javelin", // USA (Army - Desert)\AT Specialist (Javelin)
	"B_soldier_AT_F",		   // NATO\Missile Specialist (AT)
	"B_soldier_LAT_F",	 	   // NATO\Rifleman (AT)
	"B_G_Soldier_LAT_F"		   // FIA\Rifleman (AT)
];

antitank_assistant_bluefor_classes = [
	"B_soldier_AAT_F"	// NATO\Asst. Missile Specialist (AT)
];

marksman_bluefor_classes = [
	"rhsusf_army_ocp_marksman",	// USA (Army - Woodland)\Marksman
	"rhsusf_army_ucp_marksman", // USA (Army - Desert)\Marksman
	"B_soldier_M_F",			// NATO\Marksman
	"B_G_Soldier_M_F"			// FIA\Marksman
	
];

sniper_bluefor_classes = [
	"rhsusf_army_ocp_sniper", // USA (Army - Woodland)\Sniper
	"rhsusf_army_ucp_sniper", // USA (Army - Desert)\Sniper
	"B_sniper_F"			  // NATO\Sniper
];

ground_crew_bluefor_classes = [
	"rhsusf_army_ocp_crewman", 		 // USA (Army - Woodland)\Crew
	"rhsusf_army_ocp_combatcrewman", // USA (Army - Woodland)\Crew (Combat)
	"rhsusf_army_ocp_driver",		 // USA (Army - Woodland)\Driver
	"rhsusf_army_ucp_crewman",		 // USA (Army - Desert)\Crew
	"rhsusf_army_ucp_combatcrewman", // USA (Army - Desert)\Crew (Combat)
	"rhsusf_army_ucp_driver",		 // USA (Army - Desert)\Driver
	"B_crew_F"						 // NATO\Crewman
];

air_crew_bluefor_classes = [
	"rhsusf_army_ocp_helicrew",  // USA (Army - Woodland)\Helicopter Crew
	"rhsusf_army_ocp_helipilot", // USA (Army - Woodland)\Helicopter Pilot
	"rhsusf_army_ucp_helicrew",	 // USA (Army - Desert)\Helicopter Crew
	"rhsusf_army_ucp_helipilot", // USA (Army - Desert)\Helicopter Pilot
	"B_helicrew_F",				 // NATO\Helicopter Crew
	"B_Helipilot_F",			 // NATO\Helicopter Pilot
	"B_Pilot_F"					 // NATO\Pilot
];

explosive_specialist_bluefor_classes = [
	"B_soldier_exp_F",	// NATO\Explosive Specialist
	"B_G_Soldier_exp_F"	// FIA\Explosive Specialist
];

rifleman_bluefor_classes = [
	"rhsusf_army_ocp_rifleman", 	// USA (Army - Woodland)\Rifleman
	"rhsusf_army_ocp_riflemanl",	// USA (Army - Woodland)\Rifleman (Light)
	"rhsusf_army_ocp_riflemanat",	// USA (Army - Woodland)\Rifleman (M136)
	"rhsusf_army_ocp_rifleman_m16", // USA (Army - Woodland)\Rifleman (M16)
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
	private ["_unit", "_class"];
	_unit  = _this select 0;
	_class = _this select 1;
	
	[_unit] call ofcra_fnc_redfor_camp;
	if (_class in rifleman_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_rifleman; return; };
	if (_class in medic_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_medic; return; };
	if (_class in grenadier_bluefor_classes)				then { [_unit] call ofcra_fnc_bluefor_grenadier; return; };
	if (_class in grenadier_assistant_bluefor_classes)		then { [_unit] call ofcra_fnc_bluefor_grenadier_assistant; return; };
	if (_class in autorifleman_bluefor_classes)				then { [_unit] call ofcra_fnc_bluefor_autorifleman; return; };
	if (_class in autorifleman_assistant_bluefor_classes)	then { [_unit] call ofcra_fnc_bluefor_autorifleman_assistant; return; };
	if (_class in antitank_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_antitank; return; };
	if (_class in antitank_assistant_bluefor_classes)		then { [_unit] call ofcra_fnc_bluefor_antitank_assistant; return; };
	if (_class in marksman_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_marksman; return; };
	if (_class in sniper_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_sniper; return; };
	if (_class in ground_crew_bluefor_classes)				then { [_unit] call ofcra_fnc_bluefor_ground_crew; return; };
	if (_class in air_crew_bluefor_classes)					then { [_unit] call ofcra_fnc_bluefor_air_crew; return; };
	if (_class in explosive_specialist_bluefor_classes)		then { [_unit] call ofcra_fnc_bluefor_explosive_specialist; return; };
	if (_class in cde_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_cde; return; };
	if (_class in cdg_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_cdg; return; };
	if (_class in cdc_bluefor_classes)						then { [_unit] call ofcra_fnc_bluefor_cdc; return; };
	
	_log_line = "Classe inconnue '" + _class + "', gears BLUEFOR par default";
  	systemChat _log_line;
};