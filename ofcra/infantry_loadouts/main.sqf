////////// NE PAS TOUCHER EN DESSOUS

["setting infantry loadouts ...", "INFO", false] call ofcra_fnc_log;

_handle = nil;
{
	_handle = execVM _x;
	waitUntil {isNull _handle};
} forEach [
	"ofcra\infantry_loadouts\bluefor_classes.sqf",
	"ofcra\infantry_loadouts\redfor_classes.sqf",
	"ofcra\infantry_loadouts\weapons\" + OFCRA_GI_ARMES_BLUEFOR + ".sqf",
	"ofcra\infantry_loadouts\gears\" + OFCRA_GI_TENUES_BLUEFOR + ".sqf",
	"ofcra\infantry_loadouts\weapons\" + OFCRA_GI_ARMES_REDFOR + ".sqf",
	"ofcra\infantry_loadouts\gears\" + OFCRA_GI_TENUES_REDFOR + ".sqf" ];


// Make unit nude
ofcra_fnc_remove_all_gears = {
	private ["_unit"];
	_unit = _this select 0;

	removeAllWeapons _unit;	// L:G
	removeAllItems _unit; // L:G
	removeAllAssignedItems _unit; // L:G
	removeUniform _unit; // G:G
	removeVest _unit; // G:G
	removeBackpackGlobal _unit; // G:G
	removeHeadgear _unit;  // G:G
	removeGoggles _unit; // G:G
};


// Set unit loadout
ofcra_fnc_set_unit_loadout = {
	private ["_unit","_exceptions"];
	_x = _this select 0;
		
	_name = str _x;
	_side = side _x;
	_class = typeOf _x;
	
	if (!(_name in OFCRA_GI_LISTE_INFANTERIE_EXCEPTIONS)) then {
		[_x] call ofcra_fnc_remove_all_gears;
		_x setUnitRank "PRIVATE";

		switch (_side) do {
			case east: { [_x, _class] call ofcra_fnc_set_redfor_loadout; };
			case west: { [_x, _class] call ofcra_fnc_set_bluefor_loadout; };
			default {
				_log = "camp inconnu pour l'unité '" + (name _x) + "'";
				[_log, "ERROR", false] call ofcra_fnc_log;
			};
		};
	};
};


ofcra_fn_set_gears = {
	private ["_unit", "_index", "_clothes","_uniform","_vest","_headgear","_backpack","_face"];
	_unit  = _this select 0;
	_index = _this select 1;
	_clothes = _this select 2;
	_uniform = ((_clothes select _index) select 0);
	_vest = ((_clothes select _index) select 1);
	_headgear = ((_clothes select _index) select 2);
	_backpack = ((_clothes select _index) select 3);
	_googles = ((_clothes select _index) select 4);
	_face = ((_clothes select _index) select 5);
		
	if (!isNil "_uniform" ) then { _unit forceAddUniform _uniform; };
	if (!isNil "_vest" ) then { _unit addVest _vest; };
	if (!isNil "_headgear" ) then { _unit addHeadgear _headgear; };
	if (!isNil "_backpack" ) then { _unit addBackpack _backpack; };
	if (!isNil "_googles" ) then { _unit addGoggles _googles; };
	if (!isNil "_face" ) then { _unit setFace _face; };
};

ofcra_fn_set_bluefor_gears = { [_this select 0, _this select 1, ofcra_bluefor_gears] call ofcra_fn_set_gears; };
ofcra_fn_set_redfor_gears =  { [_this select 0, _this select 1, ofcra_redfor_gears]  call ofcra_fn_set_gears; };


// Apply on units
_targeted_units = nil;
switch(OFCRA_GI_UNITES_CIBLES) do {
	case "HUMAINS+IA":	{ _targeted_units = allUnits; };
	case "HUMAINS":		{ _targeted_units = playableUnits; };
	default	{
		_log = "param OFCRA_UNITES_GI_CIBLES incorrect: '" + OFCRA_GI_UNITES_CIBLES + "'";
		[_log, "ERROR", false] call ofcra_fnc_log;
		_targeted_units = [];
	};
};

{
	uiSleep 0.1;
	if (local _x) then {
		_x addScore 100000;
		[_x] call ofcra_fnc_set_unit_loadout;
		_x addEventHandler ["respawn", { [_this select 0] call ofcra_fnc_set_unit_loadout; }];
	}
} forEach _targeted_units;

if (!isDedicated) then {
	player addScore 100000;
};

["infantry loadouts done.", "INFO", true] call ofcra_fnc_log;
