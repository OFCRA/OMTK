class ActionProgress {

	idd = 1777;
	movingenable = 0;
	enableSimulation = 1;
	enableDisplay = 1;
	duration = 9999;
	fadein=1;
	fadeout=1;
	name="Action Progress";
	onLoad = "with uiNameSpace do { ActionProgress = _this select 0};";
	class controls {


class Background: omtk_BOX
{
	idc = 2200;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.55 * safezoneH;
};
class SpawnList: omtk_RscListbox
{
	idc = 1500;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.392 * safezoneW;
	h = 0.168 * safezoneH;
};

class Progress: omtk_RscProgress 
{
	idc = 1999;
	x = 0.298906 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.4025 * safezoneW;
	h = 0.025 * safezoneH;
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
