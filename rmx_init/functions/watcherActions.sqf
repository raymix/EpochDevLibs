/*
	Function Name:			rmx_fnc_watcherActions
	Author:					Raimonds Virtoss | Raymix
	Description:			Display custom in-game code Editor with tabs saved to HDD
							Usage: NONE, required for main FNC
	
	License:				---
*/

_switch = param [0, 100];

switch (_switch) do {
	case "unload":
	{
		rmx_var_watcherPositions = [];
		{
			rmx_var_watcherPositions pushBack (ctrlPosition _x);
		} forEach rmx_var_ctrl_watcherItems;
	};	
	case "pin":
	{
		if (rmx_var_watcherPinned) then {
			(rmx_var_ctrl_watcherItems select 2) ctrlSetText "x\addons\rmx_init\data\retardedPinUp.paa";
			rmx_var_watcherPinned = false;
		} else {
			(rmx_var_ctrl_watcherItems select 2) ctrlSetText "x\addons\rmx_init\data\retardedPinDown.paa";
			rmx_var_watcherPinned = true;
		};
	};
	case "execute":
	{
		private ["_sel"];
		_sel = lbCurSel (rmx_var_ctrl_watcherItems select 4);
		_editbox = ctrlText (rmx_var_ctrl_watcherItems select 3);
		
		if (_editbox isEqualTo "") exitWith {["Edit field cannot be blank!","Error"] spawn bis_fnc_guiMessage;};
		
		switch (_sel) do {
			case 0:
			{
				
			};
			case 1:
			{
				
			};
			case 2:
			{
				
			};
			case 3:
			{
				if  !(_editbox in (allvariables missionnamespace)) exitWith {[format ["Variable [%1] not found in Mission namespace!",_editbox],"Error"] spawn bis_fnc_guiMessage;};
			};
			case 4:
			{
				if  !(_editbox in (allvariables uiNamespace)) exitWith {[format ["Variable [%1] not found in UI namespace!",_editbox],"Error"] spawn bis_fnc_guiMessage;};
			};
			case 5:
			{
				if  !(_editbox in (allvariables profileNamespace)) exitWith {[format ["Variable [%1] not found in Profile namespace!",_editbox],"Error"] spawn bis_fnc_guiMessage;};
			};

		};
	};
};

true
