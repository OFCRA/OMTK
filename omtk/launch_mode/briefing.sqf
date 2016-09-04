omtk_lm_create_vehicle = {
    (_this select 0) createVehicle position player;
};

omtk_lm_paradrop_on = {
	["B_Parachute"] call omtk_lm_create_vehicle;
	onMapsingleClick "player setPos [(_pos select 0),(_pos select 1), 5000];";
    
  _action = ["OMTK_NO_PARACHUTE","No Paradrop","omtk\launch_mode\img\noparadrop.paa",{[] call omtk_lm_paradrop_off;},{true;}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
  [player, 1, ["ACE_SelfActions", "OMTK_PARACHUTE"]] call ace_interact_menu_fnc_removeActionFromObject;
};

omtk_lm_paradrop_off = {
	onMapsingleClick "player setpos _pos";
  
  _action = ["OMTK_PARACHUTE","Paradrop","omtk\launch_mode\img\paradrop.paa",{[] call omtk_lm_paradrop_on;},{true;}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
  [player, 1, ["ACE_SelfActions", "OMTK_NO_PARACHUTE"]] call ace_interact_menu_fnc_removeActionFromObject;
};

omtk_lm_briefing_mode = {
	if (hasInterface) then {
		_omtk_mode_txt = format ["<t shadow='1' shadowColor='#00A6DD'>- - - BRIEFING MODE - - -</t>"];
		_omtk_mode_txt = parseText _omtk_mode_txt;
		_omtk_mode_txt = composeText [_omtk_mode_txt];
		[_omtk_mode_txt,0,0,30,2] spawn BIS_fnc_dynamicText;
		
		setPlayerRespawnTime 5;
		onMapsingleClick "player setpos _pos";
    
    _action = ["OMTK_PARACHUTE","Paradrop","omtk\launch_mode\img\paradrop.paa",{[] call omtk_lm_paradrop_on;},{true;}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    
		_action = ["OMTK_AH-6","AH-6","omtk\launch_mode\img\ah-6.paa",{["B_Heli_Light_01_armed_F"] call omtk_lm_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

		_action = ["OMTK_QUAD","Quad","omtk\launch_mode\img\quad.paa",{["B_Quadbike_01_F"] call omtk_lm_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

		if (side player == west) then {
			_action = ["OMTK_UH-60","UH-60","omtk\launch_mode\img\uh-60.paa",{["RHS_UH60M_d"] call omtk_lm_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
			[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	
			_action = ["OMTK_HUMVEE","Humvee","omtk\launch_mode\img\humvee.paa",{["rhsusf_m1025_w"] call omtk_lm_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
			[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
		};

		if (side player == east) then {
			_action = ["OMTK_MI-8","Mi-8","omtk\launch_mode\img\mi-8.paa",{["RHS_Mi8mt_Cargo_vvsc"] call omtk_lm_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
			[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	
			_action = ["OMTK_UAZ","UAZ","omtk\launch_mode\img\uaz.paa",{["rhs_uaz_open_MSV_01"] call omtk_lm_create_vehicle;},{true;}] call ace_interact_menu_fnc_createAction;
			[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
		};
	};
};
