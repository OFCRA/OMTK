_handle = execVM  "ofcra\gears_infantry\redfor.sqf";
waitUntil {isNull _handle};

_handle = execVM "ofcra\gears_infantry\bluefor.sqf";
waitUntil {isNull _handle};


diag_log "[OFCRA] INFO: setting infantry gears ...";
systemChat "Setting gears for infantry";


ofcra_fnc_get_camp = {
	private ["_side", "_result"];
	_side = _this select 0;
	switch(_side) do {
		case east:
		{
			_result = "REDFOR";
		};
	
		case west:
		{
			_result = "BLUEFOR";
		};
	
		default
    	{
	    	_result = "inconnu";
    	};
	};
	_result;
};


ofcra_fnc_clear_gear = {
	private ["_unit"];
	_unit = _this select 0;
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
};


{
	_name = name _x;
	_side = side _x;
	_class = typeOf _x;

	// Remove all gears
	[_x] call ofcra_fnc_clear_gear;

	// Add side's gears
	switch (_side) do {
		case east:
    	{  	
    	   	[_x, _class] call ofcra_fnc_set_redfor_gears;
    	};
		case west:
    	{    		
    		[_x, _class] call ofcra_fnc_set_bluefor_gears;
	    };
	    default
	    {
    		_log_line = "Camp inconnu pour l'unité '" + (name _x) + "'";
    		systemChat _log_line;
    	};
	};
	
}  forEach allUnits; //playableUnits; //allUnits;

diag_log "[OFCRA] INFO: infantry gears done.";
