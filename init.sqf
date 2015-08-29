////// CONFIGURATION MISSION_TOOLKIT OFCRA

// infantry_loadouts: �quipement automatis� des infanteries
OFCRA_GI_UNITES_CIBLES = "HUMAINS+IA";		// parmi {HUMAINS+IA|HUMAINS}
OFCRA_GI_LISTE_INFANTERIE_EXCEPTIONS = [];	// tableau de noms d'unit�s entre-guillemets � ne pas �quiper, ex: ["nom1", "nom2"]

OFCRA_GI_ARMES_BLUEFOR = "us_army";
OFCRA_GI_TENUES_BLUEFOR = "us_ocp";

OFCRA_GI_ARMES_REDFOR = "ru_army";
OFCRA_GI_TENUES_REDFOR = "ru_emr_spetnaz";

// gears_vehicles: �quipement automatis� des v�hicules
OFCRA_GV_LISTE_VEHICULES_EXCEPTIONS = [];		// tableau de noms d'unit�s v�hicules entre-guillemets � ne pas �quiper le cargo, ex: ["nom1", "nom2"]

// score_board: d�finition du tableau des scores et des objectifs
OFCRA_SC_DUREE_MISSION = [2, 0, 0]; // [heures, minutes, secondes], ex: [1,30,15] pour une dur�e d' 1h30min15s avant l'affichage du tableau des scores


execVM "ofcra\score_board\customActions.sqf";

OFCRA_SC_LISTE_OBJECTIFS = [

];

////// CONFIGURATION ADDONS EXTERNES

// CSSA3 SPECTATOR
[] execVM "ofcra\3rd-parties\CSSA3\CSSA3_init.sqf";

// TASK FORCE ARROWHEAD RADIO
#include "\task_force_radio\functions\common.sqf";
tf_no_auto_long_range_radio = true;

// radio_settings: configuration des fr�quences des radios
// 0 indique une g�n�ration al�atoire, sinon indique la valeur de fr�quence souhait�e
OFCRA_RD_FREQUENCES_BLUEFOR_LP = [0, 0, 0, 0, 0, 0, 0, 0, 0]; 
OFCRA_RD_FREQUENCES_BLUEFOR_CP = [0, 0, 0, 0, 0, 0, 0, 0];
OFCRA_RD_FREQUENCES_REDFOR_LP = [0, 0, 0, 0, 0, 0, 0, 0, 0];
OFCRA_RD_FREQUENCES_REDFOR_CP = [0, 0, 0, 0, 0, 0, 0, 0];


//// EXECUTION MISSION_TOOLKIT OFCRA
// si vous commentez la ligne ci-dessous, le mission_toolkit sera inactif
execVM "OFCRA\ofcra.sqf"; 
