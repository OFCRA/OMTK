///////////////////////////////////////////////////////////////////////////////////////////////////////
//hint "SCRIPT CompteFin ";
if (isServer) then 
{
	//NbWestAlive = 0;
	//NbEastAlive = 0;
	//NbResistAlive = 0;
	//NbTotWestAlive = 0;
	//NbTotEastAlive = 0;
	//NbTotResistAlive = 0;
	//VivantWest = [];
	//VivantEast = [];
	//VivantResist = [];
	//NbVivant = 0;
	diag_log "- FIN DE PARTIE ************************************************";
	diag_log "CPT FIN - SURVIVANTS :";
	{
		if ((alive _x) && (isplayer _x)) then
		{
			//diag_log format["JOUEUR : %1|%2", (name _x), (getPlayerUID _x)];
			if (side _x == west) then
			{
				diag_log format["BLUEFOR : %1|%2", (name _x), (getPlayerUID _x)];
				NbWestAlive = NbWestAlive + 1;
				VivantWest set [(count VivantWest), (name _x)];
			};
			if (side _x == east)  then
			{
				diag_log format["REDFOR  : %1|%2", (name _x), (getPlayerUID _x)];
				NbEastAlive = NbEastAlive + 1;
				VivantEast set [(count VivantEast), (name _x)];
			};
			if (side _x == resistance) then
			{
				diag_log format["RESIST : %1|%2", (name _x), (getPlayerUID _x)];
				NbResistAlive = NbResistAlive + 1;
				VivantResist set [(count VivantResist), (name _x)];
			};
		};
	} foreach allunits;
	diag_log "CPT FIN *****************************************************************";
	{
		if (alive _x) then
		{
			diag_log format["JOUEUR ou IA : %1|%2", (name _x), (getPlayerUID _x)];
			if (side _x == west) then
			{
				NbTotWestAlive = NbTotWestAlive + 1;
			};
			if (side _x == east) then
			{
				NbTotEastAlive = NbTotEastAlive + 1;
			};
			if (side _x == resistance) then
			{
				NbTotResistAlive = NbTotResistAlive + 1;
			};
		};
	} foreach allunits;
	if (RED == "RESIST") then
	{
		if (NbWestAlive > NbResistAlive) then
		{
			NbVivant = NbWestAlive;
			for [{_i=NbResistAlive}, {_i<=(NbWestAlive-1)}, {_i=_i+1}] do
			{
				VivantResist set [(_i), ("-")];
			};
		} else {
			NbVivant = NbResistAlive;
			for [{_i=NbWestAlive}, {_i<=(NbResistAlive-1)}, {_i=_i+1}] do
			{
				VivantWest set [(_i), ("-")];
			};
		};
	} else {
		if (NbWestAlive > NbEastAlive) then
		{
			NbVivant = NbWestAlive;
			for [{_i=NbEastAlive}, {_i<=(NbWestAlive-1)}, {_i=_i+1}] do
			{
				VivantEast set [(_i), ("-")];
			};
		} else {
			NbVivant = NbEastAlive;
			for [{_i=NbWestAlive}, {_i<=(NbEastAlive-1)}, {_i=_i+1}] do
			{
				VivantWest set [(_i), ("-")];
			};
		};
	};
	_NbEst = {alive _x && side _x == opfor} count allUnits;
	_NbWest = {alive _x && side _x == blufor} count allUnits;
	_NbResist = {alive _x && side _x == resistance} count allUnits;
	_NbTot = {alive _x} count allUnits;
	diag_log "-COMPTE FIN---------------------------------------";
	diag_log format ["Heure : %1 - Heure du Jour : %2", time, daytime];
	diag_log format ["Nombre de joueurs EST   : %1 - %2", _NbEst, NbTotEastAlive];
	diag_log format ["Nombre de joueurs OUEST : %1 - %2", _NbWest, NbTotWestAlive];
	diag_log format ["Nombre de joueurs RESIST: %1 - %2", _NbResist, NbTotResistAlive];
	diag_log format ["Nombre de joueurs TOTAL : %1", _NbTot];
	diag_log "--------------------------------------------------";
	diag_log "FIN DE PARTIE PAR ZONE :";
/*
	diag_log format["ZONE 1 BLUEFOR %1-REDFOR %2 / Couleur : %3", b1count, r1count, (getMarkerColor "1Zone")];
	diag_log format["ZONE 2 BLUEFOR %1-REDFOR %2 / Couleur : %3", b2count, r2count, (getMarkerColor "2Zone")];
	diag_log format["ZONE 3 BLUEFOR %1-REDFOR %2 / Couleur : %3", b3count, r3count, (getMarkerColor "3Zone")];
	diag_log "TEST BOUCLE ZONES :";
*/
	for [{_i=1}, {_i<=NB_ZONE}, {_i=_i+1}] do
	{
		//_MarkerZone = compile (format ["getMarkerColor '%1Zone'", _i]);
		_MarkerZone = format ["%1Zone", _i];
		_bzone = compile (format ["b%1count", _i]);
		_rzone = compile (format ["r%1count", _i]);
		diag_log format["ZONE %1 BLUEFOR %2-REDFOR %3 | Couleur de la Zone : %4", _i, (call _bzone), (call _rzone), (getMarkerColor _MarkerZone)];
	};
	diag_log "- FIN DE RAPPORT COMPTE FIN *********************************";
	diag_log format ["********************************* FIN DE PARTIE - Heure : %1 - %2***************************************", daytime, ELAPSED_TIME];
	//rslt = 	[ "-COMPTE FIN----------FIN DE PARTIE--------------------------", "cba_network", [ false, true, false] ] call CBA_fnc_debug;
	publicVariable "NbWestAlive";
	publicVariable "NbEastAlive";
	publicVariable "NbResistAlive";
	publicVariable "NbTotWestAlive";
	publicVariable "NbTotEastAlive";
	publicVariable "NbTotResistAlive";
	publicVariable "VivantWest";
	publicVariable "VivantEast";
	publicVariable "VivantResist";
	publicVariable "NbVivant";
//	execVM "AfficheFin.sqf";
};
