////////// NE PAS TOUCHER EN DESSOUS

["setting radio frequencies...", "INFO", false] call ofcra_fnc_log;

ofcra_fn_getRandomFrequency = {
	private["_min","_max","_res"];
	_min = _this select 0;
	_max = _this select 1;	
	_res = _min + floor random (abs(_max - _min));
	["FREQ=" + (str _res), "INFO"] call ofcra_fnc_log;
	_res;
};


ofcra_generate_frequencies = {
	private["_freqList","_newFreq"];
	_freqList = _this select 0;
	
	_index = -1;
	{
		_index = _index + 1;
		if (_x == 0) then {
			_newFreq = 0;
			while {(_newFreq == 0) or (_newFreq in _freqList)} do {
	    		_newFreq = [_this select 1, _this select 2] call ofcra_fn_getRandomFrequency;
			};			
			_freqList set [_index, _newFreq];
		};
	} forEach _freqList;
	_freqList;
};

tf_same_sw_frequencies_for_side = true;
publicVariable "tf_same_sw_frequencies_for_side";
tf_same_lr_frequencies_for_side = true;
publicVariable "tf_same_lr_frequencies_for_side";

_tf_freq_west = false call TFAR_fnc_generateSwSettings;
_tf_freq_west  set [2, ([OFCRA_RD_FREQUENCES_BLUEFOR_CP, 30, 512] call ofcra_generate_frequencies)];
tf_freq_west = _tf_freq_west;
publicVariable "tf_freq_west";
//[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, tf_freq_west] call TFAR_fnc_setLrSettings;

_tf_freq_west_lr = false call TFAR_fnc_generateLrSettings;
_tf_freq_west_lr set [2, ([OFCRA_RD_FREQUENCES_BLUEFOR_LP, 30, 87] call ofcra_generate_frequencies)];
tf_freq_west_lr =_tf_freq_west_lr;
hint (str count tf_freq_west_lr);
publicVariable "tf_freq_west_lr";

tf_freq_east = false call TFAR_fnc_generateSwSettings;
tf_freq_east set [2, ([OFCRA_RD_FREQUENCES_REDFOR_CP, 30, 512] call ofcra_generate_frequencies)];
publicVariable "tf_freq_east";
	
tf_freq_east_lr = false call TFAR_fnc_generateLrSettings;
tf_freq_east_lr set [2, ([OFCRA_RD_FREQUENCES_REDFOR_LP, 30, 87] call ofcra_generate_frequencies)];
publicVariable "tf_freq_east_lr";

["radio frequencies done.", "INFO", true] call ofcra_fnc_log;
