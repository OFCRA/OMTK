["dynamic_startup start", "INFO", false] call omtk_log;

_handle = nil;
{
	_handle = execVM _x;
	waitUntil {isNull _handle};
} forEach [
	"omtk\dynamic_startup\markers.sqf",
	"omtk\dynamic_startup\interactive.sqf"];
	
_mode = "OMTK_MODULE_DYNAMIC_STARTUP" call BIS_fnc_getParamValue;

switch (_mode) do {
    case 1: {
			_mode = "markers";
			[] call omtk_ds_markers_mode;
    };
    case 2: {
			_mode = "interactive";
			[] call omtk_ds_interactive_mode;
		};
};

["dynamic startup set to " + str(_mode) + ".", "INFO", false] call omtk_log;
["dynamic_startup end", "INFO", false] call omtk_log;
