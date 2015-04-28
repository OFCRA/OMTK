//class RscTitles {
	
class ScoreBoard {

	idd = -1;
	movingenable = 0;
	enableSimulation = 0;
	enableDisplay = 1;
	duration = 9999;
	fadein=1;
	fadeout=1;
	name="ScoreBoard";
	onLoad = "with uiNameSpace do { ScoreBoard = _this select 0};ExecVM 'ofcra\score_board\loadBoard.sqf';";
	
	class controls {
		
		class MainContainer: BOX {
			idc = 1800;
			x = 0.276563 * safezoneW + safezoneX;
			y = 0.236103 * safezoneH + safezoneY;
			w = 0.446875 * safezoneW;
			h = 0.527794 * safezoneH;
		};		
		
		

class BlueforLogo: RscPicture
{
	idc = 1200;
	text = "ofcra\score_board\img\bluefor.jpg";
	x = 0.276563 * safezoneW + safezoneX;
	y = 0.236103 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0989614 * safezoneH;
};
class RedforLogo: RscPicture
{
	idc = 1201;
	text = "ofcra\score_board\img\redfor.jpg";
	x = 0.643229 * safezoneW + safezoneX;
	y = 0.236103 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0989614 * safezoneH;
};
class Banner: RscPicture
{
	idc = 1202;
	text = "ofcra\score_board\img\banner.jpg";
	x = 0.3625 * safezoneW + safezoneX;
	y = 0.236103 * safezoneH + safezoneY;
	w = 0.275 * safezoneW;
	h = 0.0989614 * safezoneH;
};


		class Objectives: RscText {
			idc = 1530;
			x = 0 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 0.1 * safezoneH;
		};
		
		class BlueForObjectifs: RscListbox {
			idc = 1511;
			x = 0.276563 * safezoneW + safezoneX;
			y = 0.37 * safezoneH + safezoneY;
			w = 0.211979 * safezoneW;
			h = 0.09 * safezoneH;
		};
		
		class RedForObjectifs: RscListbox {
			idc = 1512;
			x = 0.511458 * safezoneW + safezoneX;
			y = 0.37 * safezoneH + safezoneY;
			w = 0.211979 * safezoneW;
			h = 0.09 * safezoneH;
		};

		class Survivors: RscText {
			idc = 1520;
			x = 0 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 0.1 * safezoneH;
			access = 0;
		};
				

		class BlueforListSurvivors: RscListbox {
			idc = 1501;
			x = 0.276563 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.211979 * safezoneW;
			h = 0.23 * safezoneH;
		};
		
		class RedForSurvivors: RscListbox {
			idc = 1500;
			x = 0.511458 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.211979 * safezoneW;
			h = 0.23 * safezoneH;
		};
		
		
		class QuitButtonMenu: RscButton {
			idc = -1;
			x = 0.477080 * safezoneW + safezoneX;
			y = 0.741906 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.0219914 * safezoneH;
			text = "QUITTER";
			action="closeDialog 0;['end1',true,2] call BIS_fnc_endMission;";
		};

	};
};
