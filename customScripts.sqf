doNothing = {
	// ne fait rien
};

doPrint = {
	hint "Informations transmises";
};


if (hasInterface) then {
	validateCellphone = {
		_container = _this select 0;
		_item = _this select 1;
		if ( (_container == "caisse") && (_item == "ACE_Cellphone") ) then {
			[1, true] call omtk_setFlagResult;
		};
		
	};

	if (side player == West) then {
		player addEventHandler ["Put", {[str (_this select 1), _this select 2] call validateCellphone;}]; 
	};
};
