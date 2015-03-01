
ofcra_fnc_log = {
	private ["_msg", "_level"];
	_msg  = _this select 0;
	_level = _this select 1;
	
	systemChat _msg;
	_log_line = '[OFCRA] ' + _level + ': ' + _msg;
	diag_log  _log_line;
};


