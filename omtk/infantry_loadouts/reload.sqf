hint "Reloading loadouts...";
{
	[_x] remoteExec["omtk_li_set_unit_loadout",_x];
} forEach units group player;
