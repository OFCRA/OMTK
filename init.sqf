////// CONFIGURATION MISSION_TOOLKIT OFCRA

// test_mode: retire la fin de mission, rends les slots immortels
OFCRA_TM_TEST_MODE = 0;	// parmi {0|1}, doit être sur 1 uniquement pour le deploiement

// gears_infantry: équipement automatisé des infanteries
OFCRA_GI_UNITES_CIBLES = "HUMAINS+IA";		// parmi {HUMAINS+IA|HUMAINS}
OFCRA_GI_LISTE_INFANTERIE_EXCEPTIONS = [];	// tableau de noms d'unités entre-guillemets à ne pas équiper, ex: ["nom1", "nom2"]
OFCRA_GI_TENUES_BLUEFOR = "UCP";			// parmi {UCP|OCP|SOC|MARPAT_WOOD|MARPAT_DESERT}
OFCRA_GI_TENUES_REDFOR = "VDV";				// parmi {VDV|VDV-M|MSV_DIGITAL|MSV_FLORA|M88}

// gears_vehicles: équipement automatisé des véhicules
OFCRA_GV_LISTE_VEHICULES_EXCEPTIONS = [];		// tableau de noms d'unités véhicules entre-guillemets à ne pas équiper le cargo, ex: ["nom1", "nom2"]

// score_board: définition du tableau des scores et des objectifs
OFCRA_SC_DUREE_MISSION = [2, 0, 0]; // [heures, minutes, secondes], ex: [1,30,15] pour une durée d' 1h30min15s avant l'affichage du tableau des scores


execVM "ofcra\score_board\customActions.sqf";

OFCRA_SC_LISTE_OBJECTIFS = [

];

////// CONFIGURATION ADDONS EXTERNES

// CSSA3 SPECTATOR
[] execVM "CSSA3\CSSA3_init.sqf";

// TASK FORCE ARROWHEAD RADIO
#include "\task_force_radio\functions\common.sqf";
tf_no_auto_long_range_radio = true;

// radio_settings: configuration des fréquences des radios
// 0 indique une génération aléatoire, sinon indique la valeur de fréquence souhaitée
OFCRA_RD_FREQUENCES_BLUEFOR_LP = [0, 0, 0, 0, 0, 0, 0, 0, 0]; 
OFCRA_RD_FREQUENCES_BLUEFOR_CP = [0, 0, 0, 0, 0, 0, 0, 0];
OFCRA_RD_FREQUENCES_REDFOR_LP = [0, 0, 0, 0, 0, 0, 0, 0, 0];
OFCRA_RD_FREQUENCES_REDFOR_CP = [0, 0, 0, 0, 0, 0, 0, 0];


//// EXECUTION MISSION_TOOLKIT OFCRA
// si vous commentez la ligne ci-dessous, le mission_toolkit sera inactif
execVM "OFCRA\ofcra.sqf"; 
