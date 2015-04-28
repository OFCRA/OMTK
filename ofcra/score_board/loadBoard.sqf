////////// NE PAS TOUCHER EN DESSOUS

_survivors_B = 0;
_survivors_R = 0;
{
	_name = str _x;
	_side = side _x;
	_class = typeOf _x;
	_listId = 0;
	
	if(_side==east) then {
		_listId = 1500;
		_survivors_R = _survivors_R + 1;
	}
	else {
		if(_side==west) then { 
			_listId = 1501;
			_survivors_B = _survivors_B + 1;
		};
	};
	
	if(_listId > 0) then {
		lbAdd [_listId, _name];
	};
	
} forEach allUnits;

_text = format["%1           SURVIVANTS           %2",_survivors_B,_survivors_R];
ctrlSetText [1520, _text];
_text = format["%1 pts           OBJECTIFS           %2 pts",0,0];
ctrlSetText [1530, _text];