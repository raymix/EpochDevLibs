class RscPicture;
class RscButton;
class RscProgress;
class RscCombo;
class RscListBox;
class ScrollBar;
class HScrollbar;
class VScrollbar;
class RscText;
class RscStructuredText;
class RscShortcutButton;
class RscIGUIShortcutButton;
class RscGearShortcutButton;
class IGUIBack;
class CA_Title;
class RscControlsGroup;
class RscActiveText;
class RscLineBreak;
class RscIGUIListNBox;
class Attributes;
class RscFrame;
class RscCheckbox;
class RscEdit;
class RscSlider;

//Fucking ninja cancer new to A3?
class RscActivePicture;
class RscActivePictureKeepAspect;

class dUI_ConsoleText { //structured text for console
	idc = -1; 
	type = 13;  // defined constant
	style = 0x00;           
	colorBackground[] = {0.2,0.2,0.2,0.7};
	x = 0 * safezoneW;
	y = 0 * safezoneH;
	w = 1 * safezoneW;
	h = 0.025 * safezoneH;
	size = 0.02;
	text = "";
	
	class Attributes {
		font = "LucidaConsoleB"; //https://community.bistudio.com/wiki/File:Arma3Fonts.png
		color = "#000000";
		align = "left"; //align of text. Values can be "left", "center" or "right"
		valign = "middle"; //vertical align of text. Values can be "top", "middle", "bottom".
		shadow = false;
		shadowColor = "#ff0000";
		size = "1.25";
	};
};

class dUI_rscText: RscText {
	style = 0x02;
	shadow = 2;
};

class rmx_ST2: RscStructuredText
{
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {1,1,1,1};
	shadow = 2;
	class Attributes
	{
		font = "PuristaMedium";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "center";
		valign = "middle";
		size = "1";
		shadow = 2;
	};
};