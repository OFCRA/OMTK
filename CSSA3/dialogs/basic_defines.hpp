////////////////
//Base Classes//
////////////////

class RscCheckBox
{
    checked = 0;
    color[] = {1,1,1,0.7};
    colorBackground[] = {0,0,0,0};
    colorBackgroundDisabled[] = {0,0,0,0};
    colorBackgroundFocused[] = {0,0,0,0};
    colorBackgroundHover[] = {0,0,0,0};
    colorBackgroundPressed[] = {0,0,0,0};
    colorDisabled[] = {1,1,1,0.2};
    colorFocused[] = {1,1,1,1};
    colorHover[] = {1,1,1,1};
    colorPressed[] = {1,1,1,1};
    h = "0.04 * safezoneH";
    idc = -1;
    soundClick[] = {"",0.1,1};
    soundEnter[] = {"",0.1,1};
    soundEscape[] = {"",0.1,1};
    soundPush[] = {"",0.1,1};
    style = 0;
    textureChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureDisabledChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureDisabledUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    textureFocusedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureFocusedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    textureHoverChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureHoverUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    texturePressedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    texturePressedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    textureUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
    tooltipColorText[] = {1,1,1,1};
    type = 77;
    w = "0.025 * safezoneW";
    x = "0.375 * safezoneW + safezoneX";
    y = "0.36 * safezoneH + safezoneY";
};

class RscText
{
    access = 0;
    colorBackground[] = {0,0,0,0};
    colorShadow[] = {0,0,0,0.5};
    colorText[] = {1,1,1,1};
    deletable = 0;
    fade = 0;
    fixedWidth = 0;
    font = "PuristaMedium";
    h = 0.037;
    idc = -1;
    linespacing = 1;
    shadow = 2;
    SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
    style = 0;
    text = "";
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
    tooltipColorText[] = {1,1,1,1};
    type = CT_STATIC;
    w = 0.3;
    x = 0;
    y = 0;
};

class RscPicture
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "puristaMedium";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
};

class RscButton
{
    access = 0;
    borderSize = 0;
    colorBackground[] = {0,0,0,0.5};
    colorBackgroundActive[] = {0,0,0,1};
    colorBackgroundDisabled[] = {0,0,0,0.5};
    colorBorder[] = {0,0,0,1};
    colorDisabled[] = {1,1,1,0.25};
    colorFocused[] = {0,0,0,1};
    colorShadow[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    deletable = 0;
    fade = 0;
    font = "PuristaMedium";
    h = 0.039216;
    offsetPressedX = 0;
    offsetPressedY = 0;
    offsetX = 0;
    offsetY = 0;
    shadow = 2;
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    style = 2;
    text = "";
    type = CT_BUTTON;
    w = 0.095589;
    x = 0;
    y = 0;
};

class RscFrame
{
    type = CT_STATIC;
    idc = -1;
    style = ST_FRAME;
    shadow = 2;
    colorBackground[] = {1,1,1,1};
    colorText[] = {1,1,1,0.9};
    font = "puristaMedium";
    sizeEx = 0.0350;
    text = "";
};

class RscControlsGroup
{
    class VScrollbar
    {
        color[] = {1,1,1,1};
        width = 0;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
        shadow = 0;
    };
    class HScrollbar
    {
        color[] = {1,1,1,1};
        height = 0;
        shadow = 0;
    };
    class ScrollBar
    {
        color[] = {1,1,1,1};
        colorActive[] = {1,1,1,0};
        colorDisabled[] = {1,1,1,0};
        shadow = 0;
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    };

    type = 15;
    idc = -1;
    x = 0;
    y = 0;
    w = 1;
    h = 1;
    shadow = 0;
    style = 16;
};

class RscIGUIListBox
{
    access = 0;
    arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
    arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
    autoScrollDelay = 5;
    autoScrollRewind = 0;
    autoScrollSpeed = -1;
    color[] = {1,1,1,1};
    colorBackground[] = {0,0,0,0};
    colorDisabled[] = {1,1,1,0.25};
    colorPictudeDisabled[] = {1,1,1,0.25};
    colorPicture[] = {1,1,1,1};
    colorPictureDisabled[] = {1,1,1,1};
    colorPictureSelected[] = {1,1,1,1};
    colorScrollbar[] = {0.95,0.95,0.95,1};
    colorSelect2[] = {0.95,0.95,0.95,1};
    colorSelect[] = {0.95,0.95,0.95,1};
    colorSelectBackground2[] = {0,0,0,1};
    colorSelectBackground[] = {0,0,0,0.4};
    colorShadow[] = {0,0,0,0.5};
    colorText[] = {1,1,1,1};
    deletable = 0;
    fade = 0;
    font = "PuristaMedium";
    h = 0.4;
    maxHistoryDelay = 1;
    period = 0;
    rowHeight = 0;
    shadow = 0;
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
    style = 16;
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
    tooltipColorText[] = {1,1,1,1};
    type = 5;
    w = 0.4;

    class ListScrollBar
    {
        color[] = {1,1,1,0.6};
        colorActive[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.3};
        shadow = 0;
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    };
};

class RscMapControl {
    moveOnEdges = 1;
    x = "SafeZoneXAbs";
    y = "SafeZoneY + 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    w = "SafeZoneWAbs";
    h = "SafeZoneH - 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    shadow = false;
    ptsPerSquareSea = 5;
    ptsPerSquareTxt = 3;
    ptsPerSquareCLn = 10;
    ptsPerSquareExp = 10;
    ptsPerSquareCost = 10;
    ptsPerSquareFor = 9;
    ptsPerSquareForEdge = 9;
    ptsPerSquareRoad = 6;
    ptsPerSquareObj = 9;
    showCountourInterval = 0;
    scaleMin = 0.001;
    scaleMax = 1.0;
    scaleDefault = 0.16;
    maxSatelliteAlpha = 0.85;
    alphaFadeStartScale = 0.35;
    alphaFadeEndScale = 0.4;
    colorBackground[] = {0.969, 0.957, 0.949, 1.0};
    colorSea[] = {0.467, 0.631, 0.851, 0.5};
    colorForest[] = {0.624, 0.78, 0.388, 0.5};
    colorForestBorder[] = {0.0, 0.0, 0.0, 0.0};
    colorRocks[] = {0.0, 0.0, 0.0, 0.3};
    colorRocksBorder[] = {0.0, 0.0, 0.0, 0.0};
    colorLevels[] = {0.286, 0.177, 0.094, 0.5};
    colorMainCountlines[] = {0.572, 0.354, 0.188, 0.5};
    colorCountlines[] = {0.572, 0.354, 0.188, 0.25};
    colorMainCountlinesWater[] = {0.491, 0.577, 0.702, 0.6};
    colorCountlinesWater[] = {0.491, 0.577, 0.702, 0.3};
    colorPowerLines[] = {0.1, 0.1, 0.1, 1.0};
    colorRailWay[] = {0.8, 0.2, 0.0, 1.0};
    colorNames[] = {0.1, 0.1, 0.1, 0.9};
    colorInactive[] = {1.0, 1.0, 1.0, 0.5};
    colorOutside[] = {0.0, 0.0, 0.0, 1.0};
    colorTracks[] = {0.84, 0.76, 0.65, 0.15};
    colorTracksFill[] = {0.84, 0.76, 0.65, 1.0};
    colorRoads[] = {0.7, 0.7, 0.7, 1.0};
    colorRoadsFill[] = {1.0, 1.0, 1.0, 1.0};
    colorMainRoads[] = {0.9, 0.5, 0.3, 1.0};
    colorMainRoadsFill[] = {1.0, 0.6, 0.4, 1.0};
    colorGrid[] = {0.1, 0.1, 0.1, 0.6};
    colorGridMap[] = {0.1, 0.1, 0.1, 0.6};
    fontLabel = "PuristaMedium";
    sizeExLabel = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    fontGrid = "TahomaB";
    sizeExGrid = 0.02;
    fontUnits = "TahomaB";
    sizeExUnits = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    fontNames = "PuristaMedium";
    sizeExNames = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8) * 2";
    fontInfo = "PuristaMedium";
    sizeExInfo = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    fontLevel = "TahomaB";
    sizeExLevel = 0.02;
    text = "#(argb,8,8,3)color(1,1,1,1)";

    class Legend {
        x = "SafeZoneX + (((safezoneW / safezoneH) min 1.2) / 40)";
        y = "SafeZoneY + safezoneH - 4.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        w = "10 * (((safezoneW / safezoneH) min 1.2) / 40)";
        h = "3.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        font = "PuristaMedium";
        sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
        colorBackground[] = {1, 1, 1, 0.5};
        color[] = {0, 0, 0, 1};
    };
    class ActiveMarker
    {
        color[] =
        {
            0.3,
            0.1,
            0.9,
            1
        };
        size = 50;
    };
    class Task {
        icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
        iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
        iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
        iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
        iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
        color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
        colorCreated[] = {1, 1, 1, 1};
        colorCanceled[] = {0.7, 0.7, 0.7, 1};
        colorDone[] = {0.7, 1, 0.3, 1};
        colorFailed[] = {1, 0.3, 0.2, 1};
        size = 27;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };

    class Waypoint {
        icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
        color[] = {0, 0, 0, 1};
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };

    class WaypointCompleted {
        icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
        color[] = {0, 0, 0, 1};
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };

    class CustomMark {
        icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        color[] = {0, 0, 0, 1};
    };

    class Command {
        icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
        size = 18;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        color[] = {1, 1, 1, 1};
    };

    class Bush {
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        color[] = {0.45, 0.64, 0.33, 0.4};
        size = 14/2;
        importance = 0.2 * 14 * 0.05 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
    };

    class Rock {
        icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
        color[] = {0.1, 0.1, 0.1, 0.8};
        size = 12;
        importance = 0.5 * 12 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
    };

    class SmallTree {
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        color[] = {0.45, 0.64, 0.33, 0.4};
        size = 12;
        importance = 0.6 * 12 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
    };

    class Tree {
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        color[] = {0.45, 0.64, 0.33, 0.4};
        size = 12;
        importance = 0.9 * 16 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
    };

    class busstop {
        icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class fuelstation {
        icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class hospital {
        icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class church {
        icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class lighthouse {
        icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class power {
        icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class powersolar {
        icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class powerwave {
        icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class powerwind {
        icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class quay {
        icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class shipwreck {
        icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class transmitter {
        icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class watertower {
        icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {1, 1, 1, 1};
    };

    class Cross {
        icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {0, 0, 0, 1};
    };

    class Chapel {
        icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1.0;
        color[] = {0, 0, 0, 1};
    };

    class Bunker {
        icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
        size = 14;
        importance = 1.5 * 14 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };

    class Fortress {
        icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
        size = 16;
        importance = 2 * 16 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };

    class Fountain {
        icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
        size = 11;
        importance = 1 * 12 * 0.05;
        coefMin = 0.25;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };

    class Ruin {
        icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
        size = 16;
        importance = 1.2 * 16 * 0.05;
        coefMin = 1;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };

    class Stack {
        icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
        size = 20;
        importance = 2 * 16 * 0.05;
        coefMin = 0.9;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };

    class Tourism {
        icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
        size = 16;
        importance = 1 * 16 * 0.05;
        coefMin = 0.7;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };

    class ViewTower {
        icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
        size = 16;
        importance = 2.5 * 16 * 0.05;
        coefMin = 0.5;
        coefMax = 4;
        color[] = {0, 0, 0, 1};
    };
};