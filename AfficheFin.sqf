///////////////////////////////////////////////////////////////////////////////////////////////////////
sleep 10;
diag_log "-AFFICHE FIN---------------------------------------";
diag_log format["WEST : %1| EST : %2| RESIST ; %3", NbTotWestAlive, NbTotEastAlive, NbTotResistAlive];
_NewLine = "";
_message = parseText "<t size='1.30' align='center' font='PuristaMedium' color='#ffa500'>--- FIN DE LA PARTIE ---< /t><br /><t color='#dddddd'><img size='5'  image='ofcra.jpg'/><br />< /t>";
if (RED == "RESIST") then
{
	_NewLine = parseText format["<t align='center' size='1' color='#0000ff'>BLUEFOR : %1< /t><t color='#00aa00'> - < /t><t color='#aa0000'>REDFOR : %2< /t><br />", NbTotWestAlive, NbTotResistAlive];
} else {
	_NewLine = parseText format["<t align='center' size='1' color='#0000ff'>BLUEFOR : %1< /t><t color='#00aa00'> - < /t><t color='#aa0000'>REDFOR : %2< /t><br />", NbTotWestAlive, NbTotEastAlive];
};
_message = composeText [_message, _NewLine];
for [{_i=1}, {_i<=NB_ZONE}, {_i=_i+1}] do
{
		_bzone = compile (format ["b%1count", _i]);
		_rzone = compile (format ["r%1count", _i]);
		_NewLine = parseText format["<t align='left' size='1' color='#00aa00'>ZONE 0%3 :< /t><br /><t size='1' color='#0000ff'>BLUEFOR : %1< /t><t size='1' align='right' color='#aa0000'>REDFOR : %2< /t><br />",  (call _bzone), (call _rzone), _i];
		_message = composeText [_message, _NewLine];
/*
	switch (_i) do
	{
		case 1:
		{
			_NewLine = parseText format["<t align='left' size='1' color='#00aa00'>ZONE 0%3 :< /t><br /><t size='1' color='#0000ff'>BLUEFOR : %1< /t><t size='1' align='right' color='#aa0000'>REDFOR : %2< /t><br />",  b1count, r1count, _i];
			_message = composeText [_message, _NewLine];
		};
		case 2:
		{
			_NewLine = parseText format["<t align='left' size='1' color='#00aa00'>ZONE 0%3 :< /t><br /><t size='1' color='#0000ff'>BLUEFOR : %1< /t><t size='1' align='right' color='#aa0000'>REDFOR : %2< /t><br />",  b2count, r2count, _i];
			_message = composeText [_message, _NewLine];
		};
		case 3:
		{
			_NewLine = parseText format["<t align='left' size='1' color='#00aa00'>ZONE 0%3 :< /t><br /><t size='1' color='#0000ff'>BLUEFOR : %1< /t><t size='1' align='right' color='#aa0000'>REDFOR : %2< /t><br />",  b3count, r3count, _i];
			_message = composeText [_message, _NewLine];
		};
	};
*/
};
_NewLine =  parseText "<t align='center' size='1' color='#00aa00'>JOUEURS VIVANTS RESTANTS :< /t><br />";
_message = composetext [_message, _NewLine];
if (RED == "RESIST") then
{
	for [{_i=1}, {_i<=NbVivant}, {_i=_i+1}] do
	{
		_NewLine = parseText format["<t align='left' size='1' color='#0000ff'>%1< /t><t  align='right' color='#aa0000'>%2< /t><br />", (VivantWest select (_i-1)), (VivantResist select (_i-1))];
		_message = composeText [_message, _NewLine];
	};
} else {
	for [{_i=1}, {_i<=NbVivant}, {_i=_i+1}] do
	{
		_NewLine = parseText format["<t align='left' size='1' color='#0000ff'>%1< /t><t  align='right' color='#aa0000'>%2< /t><br />", (VivantWest select (_i-1)), (VivantEast select (_i-1))];
		_message = composeText [_message, _NewLine];
	};
};
rslt = [_message,"FIN DE LA PARTIE",true,false] spawn BIS_fnc_guiMessage;
diag_log "------------------ FIN AFFICHAGE TABLEAU DE FIN -------------------------------";
///////////////////////////////////////////////////////////////////////////////////////////////////////
