////// OMTK CONFIGURATION
// tactical_paradrop: définition des limitations de zones (optionnelles)
OMTK_TP_BLUEFOR_RESTRICTIONS = [
    //[x_coordinate, y_coordinate, radius_in_m],
];

OMTK_TP_REDFOR_RESTRICTIONS = [
    //[x_coordinate, y_coordinate, radius_in_m],
];

// score_board: définition du tableau des scores et des objectifs
OMTK_SB_DUREE_MISSION = [0, 10, 0]; // [hours, minutes, seconds]

execVM "customScripts.sqf";

OMTK_SB_LISTE_OBJECTIFS = [
	[6, "BLUEFOR+REDFOR", "DANS_ZONE", "#1608010 Capture du monastere", "trg_1608010", ["DIFF", 1]],
	[4, "BLUEFOR", "DANS_ZONE", "#1608011 ramener le matériel", "trg_1608011", ["LISTE", ["obj_1608011"]] ],
  [4, "REDFOR", "DESTRUCTION", "#1608012 neutralisation du Cpt Clark", ["LISTE", ["obj_1608012"]] ],
	[2, "BLUEFOR", "DESTRUCTION", "Domination bonus", ["REDFOR",5] ],
	[2, "REDFOR", "DESTRUCTION", "Domination bonus", ["BLUEFOR",5] ]
];

OMTK_LM_BLUEFOR_OB = [
];

OMTK_LM_REDFOR_OB = [
];

////// SPECIAL CONFIGURATION
setTerrainGrid 3.125;

OMTKMENU = [
	["OMTK MENU", true],
	["Warmup: side is ready", [2], "", -5, [["expression", "[] call omtk_wu_set_ready;"]], "1", "1"]
];

// EXTERNAL ADDONS
RscSpectator_allowFreeCam = true;
//cutrsc ['RscSpectator','plain'];

// TASK FORCE ARROWHEAD RADIO
#include "\task_force_radio\functions\common.sqf";
tf_no_auto_long_range_radio = true;


//// OMTK EXECUTION
execVM "omtk\load_modules.sqf";
