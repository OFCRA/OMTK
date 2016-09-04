// SET SCORES
omtk_sb_scores = missionNamespace getVariable "omtk_sb_scores";
omtk_sb_objectives = missionNamespace getVariable "omtk_sb_objectives";


_text = format["%1 pts          OBJECTIVES           %2 pts", omtk_sb_scores select 0, omtk_sb_scores select 1];
ctrlSetText [1510, _text];

_index = 1;
{ 
	if ((_x select 0) != 0) then {
		_index = _index + 1;
		_res = 0;
		if (omtk_sb_scores select _index) then {
			_res = _x select 0;
		};
		_line = format ["%1  (%3/%2 pts)", _x select 3, _x select 0, _res];
		_sideIdx = 1511;
		if (_x select 1 == east) then { _sideIdx = 1512; };
		lbAdd [_sideIdx, _line];
	};
} foreach omtk_sb_objectives;


// SET SURVIVORS
_bluefor_survivors = missionNamespace getVariable "omtk_sb_bluefor_survivors";
_redfor_survivors  = missionNamespace getVariable "omtk_sb_redfor_survivors";

_text = format["%1            SURVIVORS           %2", count _bluefor_survivors, count _redfor_survivors];
ctrlSetText [1520, _text];

{ lbAdd [1521, _x]; } foreach (_bluefor_survivors call BIS_fnc_sortAlphabetically);
{ lbAdd [1522, _x]; } foreach (_redfor_survivors  call BIS_fnc_sortAlphabetically);
