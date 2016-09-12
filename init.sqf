////// OMTK CONFIGURATION

// tactical_paradrop: définition des limitations de zones (optionnelles)
OMTK_TP_BLUEFOR_RESTRICTIONS = [
    //[x_coordinate, y_coordinate, radius_in_m],
];

OMTK_TP_REDFOR_RESTRICTIONS = [
  [8196.29,3885.686, 1000],
  [2742.884,1421.777, 1000],
  [4025.527,1312.188, 1000]
];

// score_board: définition du tableau des scores et des objectifs
OMTK_SB_MISSION_DURATION_OVERRIDE = [0, 2, 0]; // [hours, minutes, seconds]

execVM "customScripts.sqf";

OMTK_SB_LISTE_OBJECTIFS = [
	[5, "BLUEFOR+REDFOR", "DANS_ZONE", "#1608020 Capture du labo Fisher", "trg_1608020", ["DIFF", 1]],
	[3, "BLUEFOR", "FLAG", "#1608021 depose de la charge", [1]],
  [3, "REDFOR", "ACTION", "#1608022 contacter TAVNIKOV", "obj_1608022", 0, {[] call doGetInfo;}],
	[2, "BLUEFOR", "DESTRUCTION", "Domination bonus", ["REDFOR",5] ],
	[2, "REDFOR", "DESTRUCTION", "Domination bonus", ["BLUEFOR",5] ]
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


//// OMTK EXECUTION
execVM "omtk\load_modules.sqf";


////// SERVER MODS
// @CBA_A3;@CUP_Terrains_Core;@ace;@Ace-server;@RHSAFRF;@RHSUSAF;@RHSGREF;@OFCRA;@task_force_radio;@RHS_Compat;
