["tactical_paradrop start", "INFO", false] call omtk_log;

omtk_tp_paradrop_on = {
	["B_Parachute"] call omtk_lm_create_vehicle;
	onMapsingleClick "[] call omtk_tp_jump;";
};

omtk_tp_paradrop_off = {
  [player, 1, ["ACE_SelfActions", "OMTK_PARADROP"]] call ace_interact_menu_fnc_removeActionFromObject;
  onMapsingleClick '';
};

omtk_tp_jump = {
  // time before mission started < OMTK_MODULE_TACTICAL_PARADROP_TIME_LIMIT
  _now = date;
  _start = missionNamespace getVariable ["omtk_wu_start_time", missionStart select [0,5]];
  _now_time = (_now select 3) * 60 + (_now select 4);
  _start_time = (_start select 3) * 60 + (_start select 4);
  
  if (_now_time < _start_time) then {
    _now_time = _now_time + 24*60;
  };
  
  if ((_now_time - _start_time) <= ("OMTK_MODULE_TACTICAL_PARADROP_TIME_LIMIT" call BIS_fnc_getParamValue)) then {
    player setPos [(_pos select 0),(_pos select 1), ("OMTK_MODULE_TACTICAL_PARADROP_ALTITUDE" call BIS_fnc_getParamValue)];
  }
	else {
		hint "too late to jump !";
	};
  
  [] call omtk_tp_paradrop_off;
  true;
};


_canJump = false;
switch ("OMTK_MODULE_TACTICAL_PARADROP" call BIS_fnc_getParamValue) do {
	case 1: {
    if ((side player) == west) then {	_canJump = true; };
  };
	case 2: {
    if ((side player) == east) then {	_canJump = true; };
  };
	case 3:	{
    _canJump = true;
  };
};

if (_canJump) then {
  _action = ["OMTK_PARADROP","Paradrop","omtk\tactical_paradrop\img\paradrop.paa",{[] call omtk_tp_paradrop_on;},{true;}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
  [omtk_tp_paradrop_off, [], ("OMTK_MODULE_TACTICAL_PARADROP_TIME_LIMIT" call BIS_fnc_getParamValue)*60] call KK_fnc_setTimeout;
};

["tactical_paradrop end", "INFO", false] call omtk_log;
