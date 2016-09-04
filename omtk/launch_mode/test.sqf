omtk_lm_test_mode = {
	if (hasInterface) then {
		_omtk_mode_txt = format ["<t shadow='1' shadowColor='#00CC00'>- - -  TEST MODE - - -</t>"];
		_omtk_mode_txt = parseText _omtk_mode_txt;
		_omtk_mode_txt = composeText [_omtk_mode_txt];
		[_omtk_mode_txt,0,0,60,2] spawn BIS_fnc_dynamicText;	
	};
	{ _x allowDamage false; } forEach allUnits;
	{ _x allowDamage false; } foreach vehicles;
};
