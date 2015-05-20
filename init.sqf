////// CONFIGURATION MISSION_TOOLKIT OFCRA

// gears_infantry: �quipement automatis� des infanteries
OFCRA_GI_UNITES_CIBLES = "HUMAINS+IA";			// parmi {HUMAINS+IA|HUMAINS}
OFCRA_GI_LISTE_INFANTERIE_EXCEPTIONS = [];		// tableau de noms d'unit�s entre-guillemets � ne pas �quiper, ex: ["nom1", "nom2"]
OFCRA_GI_TENUES_BLUEFOR = "UCP";			// parmi {UCP|OCP|SOC|MARPAT_WOOD|MARPAT_DESERT}
OFCRA_GI_TENUES_REDFOR = "VDV";				// parmi {VDV|VDV-M|MSV_DIGITAL|MSV_FLORA|M88}

// gears_vehicles: �quipement automatis� des v�hicules
OFCRA_GV_LISTE_VEHICULES_EXCEPTIONS = [];		// tableau de noms d'unit�s v�hicules entre-guillemets � ne pas �quiper le cargo, ex: ["nom1", "nom2"]

// score_board: d�finition du tableau des scores et des objectifs
OFCRA_SC_DUREE_MISSION = [2, 0, 0]; // [heures, minutes, secondes], ex: [1,30,15] pour une dur�e d' 1h30min15s avant l'affichage du tableau des scores

OFCRA_SC_LISTE_OBJECTIFS = [
	[4, "BLUEFOR", "ACTION", "Prendre le dossier", "target", 0, {[] call doNothing;} ],
	[2, "BLUEFOR", "SURVIE", "2 unites survivantes", ["BLUEFOR", 2]],
	[1, "BLUEFOR+REDFOR", "SURVIE", "Davantage de survivants", ["DIFF", 1]],
	[1, "BLUEFOR+REDFOR", "SURVIE", ">5 survivants de +", ["DIFF", 5]],
	[4, "BLUEFOR+REDFOR", "DESTRUCTION", "Tour d'aeroport detruite", ["LISTE",[66207]]],
	[2, "BLUEFOR", "DESTRUCTION", "2 Civils abattus", ["LISTE",["gerard","gerard_1"]]],
	[2, "REDFOR", "DESTRUCTION", "Civil abattu", ["LISTE",["gerard_2", 66207]]],
	[2, "REDFOR", "DANS_ZONE", "Dans la zone !", "tgtmrk", ["LISTE",["gege","tuto"]]]
];


////// CONFIGURATION ADDONS EXTERNES

// TAW_VIEWDISTANCE
tawvd_disablenone = true;
tawvd_maxRange = 6000;

// TASK FORCE ARROWHEAD RADIO
TF_no_auto_long_range_radio = 1;



//// EXECUTION MISSION_TOOLKIT OFCRA
// si vous commentez la ligne ci-dessous, le mission_toolkit sera inactif
execVM "OFCRA\ofcra.sqf"; 
