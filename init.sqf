////// CONFIGURATION MISSION_TOOLKIT OFCRA

// gears_infantry: équippement automatisé des infanteries
OFCRA_GI_UNITES_CIBLES = "HUMAINS+IA";			// parmi {HUMAINS+IA|HUMAINS}
OFCRA_GI_LISTE_INFANTERIE_EXCEPTIONS = [];		// tableau de noms d'unités entre-guillemets à ne pas équiper, ex: ["nom1", "nom2"]
OFCRA_GI_TENUES_BLUEFOR = "UCP";				// parmi {UCP|OCP|SOC|MARPAT_WOOD|MARPAT_DESERT}
OFCRA_GI_TENUES_REDFOR = "VDV";					// parmi {VDV|VDV-M|MSV_DIGITAL|MSV_FLORA|M88}

// gears_vehicles: équippement automatisé des véhicules
OFCRA_GV_LISTE_VEHICULES_EXCEPTIONS = [];		// tableau de noms d'unités véhicules entre-guillemets à ne pas équiper le cargo, ex: ["nom1", "nom2"]

// score_board: définition du tableau des scores et des objectifs
OFCRA_SC_DUREE_MISSION = [2, 0, 0]; // [heures, minutes, secondes], ex: [1,30,15] pour une durée d' 1h30min15s avant l'affichage du tableau des scores
//[] call createObjective;



////// CONFIGURATION ADDONS EXTERNES

// TAW_VIEWDISTANCE
tawvd_disablenone = true;
tawvd_maxRange = 6000;

// TASK FORCE ARROWHEAD RADIO
TF_no_auto_long_range_radio = 1;



//// EXECUTION MISSION_TOOLKIT OFCRA
// si vous commentez la ligne ci-dessous, le mission_toolkit sera inactif
execVM "OFCRA\ofcra.sqf"; 