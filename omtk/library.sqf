omtk_log = {
	private ["_msg", "_tag", "_chat"];
	_msg  = _this select 0;
	_tag = _this select 1;
	_chat = _this select 2;
	
	if (_chat) then { systemChat ('[OMTK] ' + _msg)};
	diag_log(text ('[OMTK] ' + _tag + ': ' + _msg));
};

omtk_fnc_addItem = {
	private ["_quantity", "_unit", "_item"];
	_unit = _this select 0;
	_quantity = _this select 1;
	_item = _this select 2;
			
	for "_i" from 1 to _quantity do {
		if (_unit canAdd _item) then {
			_unit addItem _item;
		} else {
			_class = typeOf _unit;
			["enable to add item '" + _item + "' to class '" + _class + "'","ERROR",true] call omtk_log;
		};	
	};
};

KK_fnc_setTimeout = {
	private "_tr";
	_tr = createTrigger [
		"EmptyDetector",
       	[0,0,0]
   	];
   	_tr setTriggerTimeout [
        _this select 2,
       	_this select 2,
       	_this select 2,
       	false
   	];
   	_tr setTriggerStatements [
        "true",
       	format [
            "deleteVehicle thisTrigger; %2 call %1", 
           	_this select 0,
           	_this select 1
       	],
       	""
   	];
   	_tr
};


//// teleport object to new location at ground level
// [_object, _location, _distance, _direction] call omtk_teleport;
// _object: the object to move
// _location: the new location to go
// _distance: the offset from the position in meter
// _direction: angle in degree to turn around the location
//
omtk_teleport = {
  _object = _this select 0;
  _location = _this select 1;
  _distance = _this select 2;
  _direction = _this select 3;
 
  _object SetPos [(_location select 0) - _distance * sin(_direction),(_location select 1) - _distance * cos(_direction)];
};


//// teleport an array of objects to a marker position
// [_objects, _markerName] call omtk_mkd_mass_teleport;
// _objects: array of objects
// _markerName: name of marker where to teleport
//
omtk_mkd_mass_teleport = {
    
  _distance = 2;
  _angle = 0;
  _round_limit = 360;
  {
    if (_angle >= _round_limit) then {
      _distance = _distance + 2;
      _angle = 0;
    };
    [_x, _this select 1, _distance, _angle] call omtk_teleport;
    _angle = _angle + 45;
   
  } forEach (_this select 0);
};

//// teleport an array of objects to a marker position
// [_objects, position, distance] call omtk_mass_teleport;
// _objects: array of objects
// position:  position array to teleport to
// distance: distance in-between objects new locations
//
omtk_mass_teleport = {

	_distance = _this select 2;
	_angle = 0;
  _round_limit = 360;
  {
    if (_angle >= _round_limit) then {
      _distance = _distance + (_this select 2);
      _angle = 0;
    };
    [_x, _this select 1, _distance, _angle] call omtk_teleport;
    _angle = _angle + 45;
  } forEach (_this select 0);
};

omtk_rollback_to_start_time = {
	_omtk_wu_start_time = missionNamespace getVariable ["omtk_wu_start_time", missionStart select [0,5]];
	setDate (_omtk_wu_start_time);
};

omtk_get_side = {
	_side = "";
	switch(_this select 0) do {
	    	case east: { _side = "redfor"; };
   			case west: { _side = "bluefor"; };
			default    { ["unknown side '" + str(side player) + "'", "ERROR", false] call omtk_log; };
	};
	_side;
};


omtk_is_using_ACEmod = {
	isClass(configFile >> "CfgPatches" >> "ace_main");
};


omtk_unlock_vehicles = {
	{
		_locked_by_omtk = _x getVariable ["omtk_lock", 0];
		if (_locked_by_omtk > 0) then {
			_x lock 0;
		};
	} foreach vehicles;
};


omtk_lock_vehicles = {
	{
		if ( (locked _x) < 2) then {
			_x lock 2;
			_x setVariable ['omtk_lock', 1];
		};
	} foreach vehicles;
};
