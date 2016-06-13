/* #Rubela
$[
	1.063,
	["watcher",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2200,"",[0,"",[0.625,0.04,0.375,0.08],[-1,-1,-1,-1],[0.4,0.4,0.4,1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"",[0,"Drag to move",[0.625,0,0.375,0.04],[-1,-1,-1,-1],[0.2,0.2,0.2,1],[-1,-1,-1,-1],"","-1"],[]],
	[1200,"",[0,"x\addons\rmx_init\data\critical.paa",[0.97,0,0.03,0.04],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1400,"",[0,"texttt",[0.625,0.04,0.375,0.04],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2100,"",[0,"",[0.625,0.08,0.275,0.04],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[0,"Add",[0.9,0.0800001,0.1,0.04],[1,0.5,0,1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2300,"",[0,"",[0.625,0.12,0.375,0.044],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class dUI_watcher {
	idd = 7500;
	enableSimulation = 1;
	movingEnable = 1;
	onUnload = "'unload' call rmx_fnc_watcherActions;";
	class controls {
		class vw_bckgrnd: IGUIBack
		{
			idc = 7501;
			x = 0.625;
			y = 0.04;
			w = 0.375;
			h = 0.08;
			colorBackground[] = {0.2,0.2,0.2,0.4};
		};
		class vw_title: RscText
		{
			idc = 7502;
			text = "Drag to move"; //--- ToDo: Localize;
			x = 0.625;
			y = 0;
			w = 0.375;
			h = 0.04;
			colorBackground[] = {0.2,0.2,0.2,1};
			style = 0x02; //center
			moving = 1;
			onMouseButtonUp = "'savePos' call rmx_fnc_watcherActions;";
		};
		class vw_pin: RscActivePictureKeepAspect
		{
			idc = 7503;
			text = "x\addons\rmx_init\data\retardedPinUp.paa";
			x = 0.97;
			y = 0;
			w = 0.03;
			h = 0.04;
			onMouseButtonUp = "'pin' call rmx_fnc_watcherActions;";
		};
		class vw_code: RscEdit
		{
			idc = 7504;
			text = "";
			x = 0.625;
			y = 0.04;
			w = 0.375;
			h = 0.04;
		};
		class vw_combo: RscCombo
		{
			idc = 7505;
			x = 0.625;
			y = 0.08;
			w = 0.275;
			h = 0.04;
		};
		class vw_btnAdd: RscButton
		{
			idc = 7506;
			text = "Add"; //--- ToDo: Localize;
			x = 0.9;
			y = 0.0800001;
			w = 0.1;
			h = 0.04;
			colorText[] = {1,1,1,1};
			action = "'execute' call rmx_fnc_watcherActions;";
		};
		class vw_grp: RscControlsGroup
		{
			idc = 7507;
			x = 0.625;
			y = 0.12;
			w = 0.375;
			h = 0.044;
			class controls
			{
			};
		};
	};
};
