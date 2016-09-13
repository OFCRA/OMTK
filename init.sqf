////// OMTK CONFIGURATION

// tactical_paradrop: définition des limitations de zones (optionnelles)
OMTK_TP_BLUEFOR_RESTRICTIONS = [
  //[x_coordinate, y_coordinate, radius_in_m],
];

OMTK_TP_REDFOR_RESTRICTIONS = [
  //[x_coordinate, y_coordinate, radius_in_m],
];

// score_board: définition du tableau des scores et des objectifs
// OMTK_SB_MISSION_DURATION_OVERRIDE = [0, 0, 0]; // [hours, minutes, seconds]

execVM "customScripts.sqf";

OMTK_SB_LISTE_OBJECTIFS = [

];

OMTK_LM_BLUEFOR_OB = [

];

OMTK_LM_REDFOR_OB = [

];

////// SPECIAL CONFIGURATION
setTerrainGrid 3.125;

OMTK_WARMUP_MENU = [
	["OMTK MENU", true],
	["Warmup: side is ready", [2], "", -5, [["expression", "[] call omtk_wu_set_ready;"]], "1", "1"]
];

OMTK_MARKERS_MENU = [
	["OMTK MENU", true],
	["Process markers", [2], "", -5, [["expression", "[] call omtk_ds_process_markers_mode;"]], "1", "1"]
];

// EXTERNAL ADDONS
RscSpectator_allowFreeCam = true;
//cutrsc ['RscSpectator','plain'];

// TASK FORCE ARROWHEAD RADIO
#include "\task_force_radio\functions\common.sqf";
tf_no_auto_long_range_radio = true;

[player, [missionNamespace, "OMTK_LOADOUT"]] call BIS_fnc_saveInventory;

//// OMTK EXECUTION
execVM "omtk\load_modules.sqf";


////// SERVER MODS
// @CBA_A3;@CUP_Terrains_Core;@ace;@Ace-server;@RHSAFRF;@RHSUSAF;@RHSGREF;@OFCRA;@task_force_radio;@RHS_Compat;
