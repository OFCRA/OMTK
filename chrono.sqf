START_TIME = diag_tickTime;
publicVariable "START_TIME";
["<t size='1.3' color='#ffffff'>DEBUT DE LA PARTIE</t>",0,-0.4,10,5] spawn bis_fnc_dynamictext;
"DEBUT DE LA PARTIE" call CBA_fnc_systemChat;
