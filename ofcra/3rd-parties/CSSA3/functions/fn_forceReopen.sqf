/*
	Author: Cyrokrypto

	Description:
	- Checks if the escape menu is open, if not it re-starts the spectator script.

	Parameter(s):
	None

	Returns:
	NOTHING
*/

diag_log text "[CSSA3 Notice]: Force re-open loop initiated. (fn_forceReopen)";

//Repeat until forced to exit.
while {true} do {

	if (!isNil "CSSA3_forceClose") exitWith {CSSA3_forceClose = nil};

	sleep 5;

	//If spectator display doesnt't exist and main menu isn't open and custom dialog isn't open.
	if ((isNull findDisplay 49)&&(isNull findDisplay 7810)&&(!dialog)&&(!alive player)) exitWith {
		["killed"] spawn CSSA3_fnc_createSpectateDialog;
		diag_log text "[CSSA3 Notice]: Spectator forced to re-open. (fn_forceReopen)";
	};
};