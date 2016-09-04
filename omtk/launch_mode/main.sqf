["launch_mode start", "INFO", false] call omtk_log;

_handle = nil;
{
	_handle = execVM _x;
	waitUntil {isNull _handle};
} forEach [
	"omtk\launch_mode\briefing.sqf",
	"omtk\launch_mode\markers.sqf",
	"omtk\launch_mode\campaign.sqf",
	"omtk\launch_mode\test.sqf"];
	
	
_mode = "OMTK_LAUNCH_MODE" call BIS_fnc_getParamValue;
["launch mode set to " + str(_mode) + ".", "INFO", false] call omtk_log;
		
switch (_mode) do {
    case 1: {
    	_mode = "campaign";
    	[] call omtk_lm_campaign_mode;
    };
    case 2: {
    	_mode = "markers";
    	[] call omtk_lm_markers_mode;
    };
	case 3: {
    	_mode = "test";
    	[] call omtk_lm_test_mode;
    };   
	case 4: {
    	_mode = "briefing";
    	[] call omtk_lm_briefing_mode;
    };
};

["launch_mode end", "INFO", false] call omtk_log;
