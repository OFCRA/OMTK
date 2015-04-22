execVM "OFCRA\ofcra.sqf";

tawvd_disablenone = true;
tawvd_maxRange = 6000;

//TF_defaultWestBackpack = "tf_rt1523g";
TF_defaultEastBackpack = "tf_mr3000_rhs";

///////////////////////////////////////////////////////////////////////////////////////////////////////
// Commande pour le déclencheur
//if (isserver) then {"CALCUL TABLEAU !" call CBA_fnc_systemChat; _handle = execVM "CompteFin.sqf";}; Rslt = [true,"fnc_MP_FinMission",nil,true] spawn BIS_fnc_MP; 
////////////////////////////////////////////////////////////////////////////////////
// DEBUT DES SCRIPTS GIMLUR
////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////
	// VARIABLES DE PARAMETRAGE DU SCRIPT
	////////////////////////////////////////////////////////////////////////////////////
	END_TIME = 7200; //En Secondes : 7200 = 2 Heures
	INTER_TIME = 30; //Intervalle de surveillance de la fin du temps en secondes (le temps de la partie sera au maximum de END_TIME+INTER_TIME-1)
	NB_CHAT = 1; //Nombre de répétition du message dans le Chat Global
	INTER_CHAT = 900; //Intervalle des annonces de temps restant en secondes 900 = 15 min
	NB_ZONE = 1; //Nombre de Zones de Captures
	RED = "RED"; //Si RED = "RESIST" alors affichage des unités résistance pour le tableau final sinon prise en compte des CSAT
	NbWestAlive = 0; 
	NbEastAlive = 0; 
	NbResistAlive = 0; 
	NbTotWestAlive = 0; 
	NbTotEastAlive = 0; 
	NbTotResistAlive = 0; 
	VivantWest = []; 
	VivantEast = []; 
	VivantResist = []; 
	NbVivant = 0; 
///////////////////////////////////////////////////////////////////////////////////////////////////////
if (isServer) then {
	[] spawn
	{
	ELAPSED_TIME  = 0;
	//START_TIME = diag_tickTime; //daytime; //diag_tickTime;
	START_TIME = daytime*3600;
	while {ELAPSED_TIME <= END_TIME} do
		{
		//ELAPSED_TIME = diag_tickTime - START_TIME;
		if (floor(daytime)<floor(START_TIME/3600)) then
		{ 
			ELAPSED_TIME = ((24+daytime)*3600)-START_TIME;
		} else {
			ELAPSED_TIME = (daytime*3600)-START_TIME;		
		};
		//ELAPSED_TIME = floor(ELAPSED_TIME);
		publicVariable "ELAPSED_TIME";
		sleep INTER_TIME; // 30 Secondes, ce qui fait une durée max de END_TIME + 29 Secondes
		};
	};
};

if!(isDedicated) then
	{
	[] spawn
	{
	while {ELAPSED_TIME <= END_TIME } do
		{
		diag_log format["ELAPSED_TIME : %1, END_TIME : %2", ELAPSED_TIME, END_TIME];
		_time = END_TIME - ELAPSED_TIME;
		_finish_time_hours = floor(_time /3600);
		_finish_time_minutes = floor(_time / 60) - (60 * _finish_time_hours);
		_finish_time_seconds = floor(_time) - (60 * _finish_time_minutes) - (3600 * _finish_time_hours);
		if(_finish_time_hours < 10) then
		{
			_finish_time_hours = format ["0%1", _finish_time_hours];
		};
		if(_finish_time_minutes < 10) then
		{
			_finish_time_minutes = format ["0%1", _finish_time_minutes];
		};
		if(_finish_time_seconds < 10) then
		{
			_finish_time_seconds = format ["0%1", _finish_time_seconds];
		};
//		if ((_finish_time_hours == "00") && (_finish_time_minutes == "00")) then
//		{
			formatted_time = format ["%1H %2M %3S", _finish_time_hours, _finish_time_minutes, _finish_time_seconds];// TEMPS RESTANT AVEC LES SECONDES
//		} else {
//			formatted_time = format ["%1H %2M", _finish_time_hours, _finish_time_minutes];
//		};
///*
		_message = format ["TEMPS RESTANT : %1", formatted_time];
		hintSilent _message;
		for [{_i=0}, {_i<NB_CHAT}, {_i=_i+1}] do
		{
			ObjChat globalChat _message;
		};
//*/
		_message = format ["TEMPS RESTANT : %1", formatted_time];
		[format["<t size='0.6' color='#ff0000'>%1</t>", _message],0,1.2,10,2] spawn bis_fnc_dynamictext;
		sleep INTER_CHAT; // Fréquence d'information de la durée restante dans le CHAT : 15 minutes soit 900 secondes
		};
	};
};
//////////////////////////////////////////////////////////////////////////////////
// FIN DES SCRIPTS GIMLUR
//////////////////////////////////////////////////////////////////////////////////
