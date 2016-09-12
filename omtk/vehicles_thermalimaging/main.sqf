if (isServer) then {
	["vehicles_thermalimaging start", "INFO", false] call omtk_log;

	{
		_x disableTIEquipment true;
	} foreach vehicles;

	["vehicles_thermalimaging end", "INFO", false] call omtk_log;
};
