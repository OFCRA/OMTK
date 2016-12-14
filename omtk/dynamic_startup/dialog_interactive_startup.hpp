class InteractiveStartUp {

	idd = 1777;
	movingenable = 0;
	enableSimulation = 0;
	enableDisplay = 1;
	duration = 9999;
	fadein=1;
	fadeout=1;
	name="Interactive Start-up";
	onLoad = "with uiNameSpace do { InteractiveStartUp = _this select 0};ExecVM 'omtk\dynamic_startup\loadPanel.sqf';";
	class controls {


class Background: omtk_BOX
{
	idc = 2200;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.55 * safezoneH;
};
class Banner: omtk_RscPicture
{
	idc = 1200;
	text = "omtk\dynamic_startup\img\banner.jpg";
	x = 0.298906 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.4025 * safezoneW;
	h = 0.055 * safezoneH;
};
class SpawnFrame: omtk_RscFrame
{
	idc = 1800;
	text = "Spawn Location: choose your spawn"; 
	x = 0.298906 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.4025 * safezoneW;
	h = 0.2 * safezoneH;
};
class SpawnList: omtk_RscListbox
{
	idc = 1500;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.392 * safezoneW;
	h = 0.168 * safezoneH;
};
class OrdersOfBattleFrame: omtk_RscFrame
{
	idc = 1801;
	text = "Orders of Battle: choose your vehicles"; 
	x = 0.298906 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.4025 * safezoneW;
	h = 0.235 * safezoneH;
};
class AvailableVehiclesText: omtk_RscText
{
	idc = 1000;
	text = "Available Vehicles"; 
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.522 * safezoneH + safezoneY;
	w = 0.16 * safezoneW;
	h = 0.02 * safezoneH;
};
class AvailableVehiclesList: omtk_RscListbox
{
	idc = 1501;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.544 * safezoneH + safezoneY;
	w = 0.16 * safezoneW;
	h = 0.18 * safezoneH;
};
class SelectedVehiclesText: omtk_RscText
{
	idc = 1001;
	text = "Selected Vehicles"; 
	x = 0.536094 * safezoneW + safezoneX;
	y = 0.522 * safezoneH + safezoneY;
	w = 0.16 * safezoneW;
	h = 0.02 * safezoneH;
};
class SelectedVehiclesList: omtk_RscListbox
{
	idc = 1502;
	x = 0.536094 * safezoneW + safezoneX;
	y = 0.544 * safezoneH + safezoneY;
	w = 0.16 * safezoneW;
	h = 0.18 * safezoneH;
};
class AddButton: omtk_RscButton
{
	idc = 1600;
	text = ">>"; 
	x = 0.479375 * safezoneW + safezoneX;
	y = 0.588 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.025 * safezoneH;
	tooltip = "Add vehicles"; 
	action="call omtk_ds_select_vehicles";
};
class RemoveButton: omtk_RscButton
{
	idc = 1601;
	text = "<<"; 
	x = 0.479375 * safezoneW + safezoneX;
	y = 0.654 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.025 * safezoneH;
	tooltip = "Remove vehicles";
	action = "call omtk_ds_unselect_vehicles";
};
class ExecuteButton: omtk_RscButton
{
	idc = 1602;
	text = "Execute"; 
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.742 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.025 * safezoneH;
	action="call omtk_ds_process;";
};
class CancelButton: omtk_RscButton
{
	idc = 1603;
	text = "Cancel"; 
	x = 0.54125 * safezoneW + safezoneX;
	y = 0.742 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.025 * safezoneH;
	action="closeDialog 0;";
};

	};
};
