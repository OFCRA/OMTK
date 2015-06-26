////////// NE PAS TOUCHER EN DESSOUS


_ofcra_fn_is_captured = {
	private["_obj","_side","_result","_area","_mode","_nb"];
	_obj = _this select 0;
	_side = _this select 1;
	_area = _obj select 4
	_mode = _obj select 5
	_nb = _obj select 6
	_result = false;

	// compute the number of side units into the right area

	switch(_mode) {
		case "NUM": { _result = (>= _nb) };
		case "DIFF": { _result = (>= _nb + ) };
		default {
			_log_line = "mode de survie inconnu: '" + _mode + "'";
			systemChat _log_line;
			_log_line = '[OFCRA] ERROR: ' + _log_line;
			diag_log  _log_line;
	};

	_result
};

_ofcra_fn_is_destroyed = {
	private["_obj","_side","_result","_target"];
	_obj = _this select 0;
	_side = _this select 1;
	_target_name = _obj select 4;
	_result = false;

	// MANAGE THE KILLED-BY WITH EVENT LISTENER
	_target = [0,0,0] nearestObject _target_name; 
	_result = (! alive _taget);
	_result;
};

_ofcra_fn_is_action_completed = {
	private["_obj","_side","_result"];
	_obj = _this select 0;
	_side = _this select 1;
	_result = false;


	_result
};

_ofcra_fn_has_survived = {
	private["_obj","_side","_result","_mode","_nb"];
	_obj = _this select 0;
	_side = _this select 1;
	_mode = _obj select 4
	_nb = _obj select 5
	_result = false;

	// compute the side alive units nb
	_cnt_friends = {alive _x && side _x == _side} count allUnits;
	_cnt_ennemies = {alive _x && side _x != _side} count allUnits;

	switch(_mode) {
		case "NUM": { _result = (_cnt_friends >= _nb) };
		case "DIFF": { _result = (_cnt_friends >= _nb + _cnt_ennemies) };
		default {
			_log_line = "mode de survie inconnu: '" + _mode + "'";
			systemChat _log_line;
			_log_line = '[OFCRA] ERROR: ' + _log_line;
			diag_log  _log_line;
		};
	}

	_result
};


_ofcra_fn_is_objective_completed = {
	private["_obj","_side","_result","_type"];
	_obj = _this select 0;
	_side = _this select 1;
	_type = _obj select 4;
	_result = false;

	switch (_type) do {
		case "CAPTURE": { _result = [_obj,_side] call _ofcra_fn_is_captured; };
		case "DESTRUCTION": { _result = [_obj,_side] call _ofcra_fn_is_destroyed; };
		case "ACTION": { _result = [_obj,_side] call _ofcra_fn_is_action_completed; };
		case "SURVIVOR": { _result = [_obj,_side] call _ofcra_fn_has_survived; };
		default {
			_log_line = "type d'objectif inconnu: '" + _type + "'";
			systemChat _log_line;
			_log_line = '[OFCRA] ERROR: ' + _log_line;
			diag_log  _log_line;
		};
	}
	_result;
};


_ofcra_fn_get_points = {
	private["_index","_pts", "_obj", "_side", "_camp"];
	_obj = _this select 0;
	_side = _this select 1;
	_camp = _this select 2;
	_index = _this select 3;

	_res = [_obj, _side] call _ofcra_fn_is_objective_completed;
	_pts = 0;
	if (_res) then { _pts = _obj select 1; };
	if (_side == west) then {
		(_score_board select _index) set [1, _pts];
	}
	else {
		(_score_board select _index) set [2, _pts];
	};
	
	_log_line = "[OFCRA] LOG: OBJ='" + (_obj select 0) + "' CAMP=" + _camp +" PTS=" + (str _pts);
	diag_log _log_line;
	_pts;
};


ofcra_fn_get_objectives_results = {
	private["_index","_pts","_bluefor_pts","_redfor_pts"];
	_bluefor_pts = 0;
	_redfor_pts = 0;
	
	_index = 2;
	{
		_score_board = _score_board + [[(_x select 0), -1, -1]];
		_side = _x select 2;
		switch(_side) {
			case "BLUEFOR": {
				_pts = [_x, west, _side, _index] call _ofcra_fn_get_points;
				_bluefor_pts = _bluefor_pts + _pts;
			};
			case "REDFOR": {
				_pts = [_x, east, _side, _index] call _ofcra_fn_get_points;
				_redfor_pts = _redfor_pts + _pts;
			};
			case "BLUEFOR_REDFOR": {
				_pts = [_x, west, _side, _index] call _ofcra_fn_get_points;
				_bluefor_pts = _bluefor_pts + _pts;
				_pts = [_x, east, _side, _index] call _ofcra_fn_get_points;
				_redfor_pts = _redfor_pts + _pts;
			 };
			default {
				_log_line = "camp de l'objectif inconnu: '" + _side + "'";
				systemChat _log_line;
				_log_line = '[OFCRA] ERROR: ' + _log_line;
				diag_log _log_line;
			};
		}

		_index = _index + 1;
	} forEach ofcra_objectives;

	_score_board[0] = _bluefor_pts;
	_score_board[1] = _redfor_pts;

	_score_board;
}


//_target = [0,0,0] nearestObject 66207;
//_target = missionNamespace getVariable "uto";
//_target = missionNamespace getVariable "pop";

//_ff = getDammage _target;
//_ff = str _ff;
//hint _ff;
