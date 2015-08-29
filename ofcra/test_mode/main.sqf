////////// NE PAS TOUCHER EN DESSOUS

["setting test mode...", "INFO", false] call ofcra_fnc_log;

if (!isDedicated) then {
	_ofcra_mode_txt = format ["<t shadow='1' shadowColor='#00CC00'>- - - MODE TEST - - -</t>"];
	_ofcra_mode_txt = parseText _ofcra_mode_txt;
	_ofcra_mode_txt = composeText [_ofcra_mode_txt];
	[_ofcra_mode_txt,0,0,60,2] spawn BIS_fnc_dynamicText;

	{ _x allowDamage false; } forEach allUnits;
}
else {
	{ _x allowDamage false; } forEach allUnits;
};

["test mode done.", "INFO", true] call ofcra_fnc_log;
