if (hasInterface) then {
  ["map_exploration start", "INFO", false] call omtk_log;

  omtk_me_create_vehicle = {
    (_this select 0) createVehicle position player;
  };

  omtk_me_paradrop_on = {
    ["B_Parachute"] call omtk_me_create_vehicle;
    onMapsingleClick "player setPos [(_pos select 0),(_pos select 1), 5000];";

    _action = ["OMTK_NO_PARACHUTE","No Paradrop","omtk\map_exploration\img\noparadrop.paa",{[] call omtk_me_paradrop_off;},{true;}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    [player, 1, ["ACE_SelfActions", "OMTK_PARACHUTE"]] call ace_interact_menu_fnc_removeActionFromObject;
  };

  omtk_me_paradrop_off = {
    onMapsingleClick "player setpos _pos";
    
    _action = ["OMTK_PARACHUTE","Paradrop","omtk\map_exploration\img\paradrop.paa",{[] call omtk_me_paradrop_on;},{true;}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    [player, 1, ["ACE_SelfActions", "OMTK_NO_PARACHUTE"]] call ace_interact_menu_fnc_removeActionFromObject;
  };


  onMapsingleClick "player setpos _pos";

  _action = ["OMTK_PARACHUTE","Paradrop","omtk\map_exploration\img\paradrop.paa",{[] call omtk_me_paradrop_on;},{true;}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["OMTK_AH-6","AH-6","omtk\map_exploration\img\ah-6.paa",{["B_Heli_Light_01_armed_F"] call omtk_me_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["OMTK_QUAD","Quad","omtk\map_exploration\img\quad.paa",{["B_Quadbike_01_F"] call omtk_me_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	if (side player == west) then {
		_action = ["OMTK_UH-60","UH-60","omtk\map_exploration\img\uh-60.paa",{["RHS_UH60M_d"] call omtk_me_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	
		_action = ["OMTK_HUMVEE","Humvee","omtk\map_exploration\img\humvee.paa",{["rhsusf_m1025_w"] call omtk_me_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	};

	if (side player == east) then {
		_action = ["OMTK_MI-8","Mi-8","omtk\map_exploration\img\mi-8.paa",{["RHS_Mi8mt_Cargo_vvsc"] call omtk_me_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

		_action = ["OMTK_UAZ","UAZ","omtk\map_exploration\img\uaz.paa",{["rhs_uaz_open_MSV_01"] call omtk_me_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
	  [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	};


  ["map_exploration end", "INFO", false] call omtk_log;
};
