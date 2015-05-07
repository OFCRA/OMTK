////////// NE PAS TOUCHER EN DESSOUS

// SET SCORES
_bluefor_score = missionNamespace getVariable "ofcra_bluefor_score";
_redfor_score  = missionNamespace getVariable "ofcra_redfor_score";
_bluefor_objectives = missionNamespace getVariable "ofcra_bluefor_objectives";
_redfor_objectives  = missionNamespace getVariable "ofcra_redfor_objectives";


_text = format["%1 pts           OBJECTIFS           %2 pts", _bluefor_score, _redfor_score];
ctrlSetText [1510, _text];
{ lbAdd [1511, _x]; } foreach (_bluefor_objectives);
{ lbAdd [1512, _x]; } foreach (_redfor_objectives);


// SET SURVIVORS
_bluefor_survivors = missionNamespace getVariable "ofcra_bluefor_survivors";
_redfor_survivors  = missionNamespace getVariable "ofcra_redfor_survivors";

_text = format["%1           SURVIVANTS           %2", count _bluefor_survivors, count _redfor_survivors];
ctrlSetText [1520, _text];

{ lbAdd [1521, _x]; } foreach (_bluefor_survivors call BIS_fnc_sortAlphabetically);
{ lbAdd [1522, _x]; } foreach (_redfor_survivors  call BIS_fnc_sortAlphabetically);

