// FORMAT: UNIFORM,VEST,HEADGEAR,BACKPACK

// VDV
_ofcra_redfor_clothes_vdv = [
	[" ","","",""], // COMMON
	[" ","","",""], // CDC
	[" ","","",""], // CDG
	[" ","","",""], // CDE
	[" ","","",""], // MEDIC
	[" ","","",""], // GRENADIER
	[" ","","",""], // GRENADIER ASSISTANT
	[" ","","",""], // AUTORIFLEMAN
	[" ","","",""], // AUTORIFLEMAN ASSISTANT
	[" ","","",""], // GUNNER
	[" ","","",""], // GUNNER ASSISTANT
	[" ","","",""], // ANTI-TANK
	[" ","","",""], // ANTI-TANK ASSISTANT
	[" ","","",""], // MARKSMAN
	[" ","","",""], // SNIPER
	[" ","","",""], // SPOTTER
	[" ","","",""], // EXPLOSIVE SPECIALIST
	[" ","","",""], // RIFLEMAN
	[" ","","",""], // GROUND CREW
	[" ","","",""] // AIR CREW
];

// VDV-M
_ofcra_redfor_clothes_vdvm = [
	["","","",""], // COMMON
	["","","",""], // CDC
	["","","",""], // CDG
	["","","",""], // CDE
	["","","",""], // MEDIC
	["","","",""], // GRENADIER
	["","","",""], // GRENADIER ASSISTANT
	["","","",""], // AUTORIFLEMAN
	["","","",""], // AUTORIFLEMAN ASSISTANT
	["","","",""], // GUNNER
	["","","",""], // GUNNER ASSISTANT
	["","","",""], // ANTI-TANK
	["","","",""], // ANTI-TANK ASSISTANT
	["","","",""], // MARKSMAN
	["","","",""], // SNIPER
	["","","",""], // SPOTTER
	["","","",""], // EXPLOSIVE SPECIALIST
	["","","",""], // RIFLEMAN
	["","","",""], // GROUND CREW
	["","","",""] // AIR CREW
];

// MSV
_ofcra_redfor_clothes_msv = [
	["","","",""], // COMMON
	["","","",""], // CDC
	["","","",""], // CDG
	["","","",""], // CDE
	["","","",""], // MEDIC
	["","","",""], // GRENADIER
	["","","",""], // GRENADIER ASSISTANT
	["","","",""], // AUTORIFLEMAN
	["","","",""], // AUTORIFLEMAN ASSISTANT
	["","","",""], // GUNNER
	["","","",""], // GUNNER ASSISTANT
	["","","",""], // ANTI-TANK
	["","","",""], // ANTI-TANK ASSISTANT
	["","","",""], // MARKSMAN
	["","","",""], // SNIPER
	["","","",""], // SPOTTER
	["","","",""], // EXPLOSIVE SPECIALIST
	["","","",""], // RIFLEMAN
	["","","",""], // GROUND CREW
	["","","",""] // AIR CREW
];


////////// NE PAS TOUCHER EN DESSOUS

ofcra_fnc_get_redfor_clothes = {
	private ["_param","_result"];
	_param = _this select 0;

	switch (_param) do {
		case "VDV":	{
			_result = _ofcra_redfor_clothes_vdv;
		};
		case "VDV-M":	{
			_result = _ofcra_redfor_clothes_vdvm;
		};
		case "MSV":	{
			_result = _ofcra_redfor_clothes_msv;
		};

		default {
			_log_line = "tenue REDFOR inconnue '" + _param + "'";
			systemChat _log_line;
			_log_line = '[OFCRA] ERROR: ' + _log_line;
			diag_log  _log_line;
		};
	};
	_result;
};
