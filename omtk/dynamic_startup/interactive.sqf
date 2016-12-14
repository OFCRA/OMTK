OMTK_DS_CHOSEN_SPAWN_FOR_PLAYER = 0;
OMTK_DS_VEHICLES_MAX_NB = -1;
OMTK_DS_VEHICLES_MAX_NB_PER_GROUP = -1;
OMTK_DS_CHOSEN_VEHICLES = [];
OMTK_DS_CHIEF_CLASSES = ["B_officer_F", "O_officer_F", "B_Soldier_SL_F", "O_Soldier_SL_F"];

omtk_ds_interactive_mode = {
	
	if (isServer) then {	
		call omtk_lock_vehicles;
	};
	_side_color = [side player] call omtk_get_side;
	_already_processed = missionNamespace getVariable ["omtk_ds_" + _side_color + "_interactive_process", false];
	_class = typeOf player;
	if (hasInterface && !_already_processed && _class in OMTK_DS_CHIEF_CLASSES) then {
		if (call omtk_is_using_ACEmod) then {
			_action = ["OMTK_INTERACTIVE_MENU","Interactive Menu","omtk\dynamic_startup\img\application.paa",{createDialog "InteractiveStartUp";},{true;}] call ace_interact_menu_fnc_createAction;
			[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
		} else {
			createDialog "InteractiveStartUp";
		};
	};
};
