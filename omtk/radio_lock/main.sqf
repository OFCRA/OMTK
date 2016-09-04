["radio_lock start", "INFO", false] call omtk_log;

omtk_rl_disable_radio_pickup_EH = {
	_unitName = name (_this select 0);
	_side = side (_this select 0);
	_item =  _this select 1;
				
	_forbiddenItemRadios = [];
	_forbiddenBackPackRadios = [];
		
	if (_side == east) then {
		_forbiddenItemRadios = ["tf_anprc152", "tf_rf7800str"];
		_forbiddenBackPackRadios = ["tf_rt1523g", "tf_rt1523g_big", "tf_rt1523g_black", "tf_rt1523g_fabric", "tf_rt1523g_green", "tf_rt1523g_rhs", "tf_rt1523g_sage"];
	};
		
	if (_side == west) then {
		_forbiddenItemRadios = ["tf_fadak", "tf_pnr1000a"];
		_forbiddenBackPackRadios = ["tf_mr3000", "tf_mr3000_multicam", "tf_mr3000_rhs"];
	};
		
	if (_item in _forbiddenItemRadios) then {
		[("'" + _unitName + "' has stolen SR ennemy radio '" + _item + "'"), "CHEAT",true] call omtk_log;
		player removeItem _item;
	};
			
	if (_item in _forbiddenBackPackRadios) then {
		[("'" + _unitName + "' has stolen LR ennemy radio '" + _item + "'"), "CHEAT",true] call omtk_log;
		player action ["PutBag"];
	};		
};		
	
player addEventHandler ["Take",{[_this select 0,_this select 2] call omtk_rl_disable_radio_pickup_EH;}];


["radio_lock end", "INFO", false] call omtk_log;
