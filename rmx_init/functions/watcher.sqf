/*
	Function Name:			rmx_fnc_watcher
	Author:					Raimonds Virtoss | Raymix
	Description:			Display custom in-game code Editor with tabs saved to HDD
							Usage: Press CTRL + ENTER to enable
	
	License:				---
*/
#include <\x\Addons\rmx_init\defines.inc>
private ["_display"];

_display = displayNull;

if (str (findDisplay 7500) isEqualTo "Display #7500") then {
	"unload" call rmx_fnc_watcherActions;
};

findDisplay 7500 closeDisplay 1;
7500 cutRsc ["Default","PLAIN"];



if (!rmx_var_watcherControl) then {
	
	findDisplay 46 createDisplay "dUI_watcher";
	_display = findDisplay 7500;
	_display displayAddEventHandler ["keyDown", "_this call rmx_fnc_keyDown;"];
	rmx_var_watcherControl = true;
} else {

	if (rmx_var_watcherPinned) then {
		7500 cutRsc ["dUI_watcher2","PLAIN"];
		_display = uiNamespace getVariable "rmx_var_watcher2";
	};
	rmx_var_watcherControl = false;
};

//Exit if not pinned
if (isNull _display) exitWith {false};

setMousePosition [0.5,0.5];

rmx_var_ctrl_watcherItems = [];

for "_i" from 7501 to 7507 do {
	rmx_var_ctrl_watcherItems set [count rmx_var_ctrl_watcherItems,_display displayCtrl _i];
};

if (isNil "rmx_var_watcherPositions") then {
	rmx_var_watcherPositions = [];
	{
		rmx_var_watcherPositions pushBack (ctrlPosition _x);
	} forEach rmx_var_ctrl_watcherItems;
};

{
	 _x ctrlSetPosition (rmx_var_watcherPositions select _forEachIndex);
	 _x ctrlCommit 0;
} forEach rmx_var_ctrl_watcherItems;

if (!rmx_var_watcherPinned) then {
	(rmx_var_ctrl_watcherItems select 2) ctrlSetText "x\addons\rmx_init\data\retardedPinUp.paa";
} else {
	(rmx_var_ctrl_watcherItems select 2) ctrlSetText "x\addons\rmx_init\data\retardedPinDown.paa";
};

(rmx_var_ctrl_watcherItems select 1) ctrlSetBackgroundColor (call rmx_fnc_getColorScheme);

if (!rmx_var_watcherControl && rmx_var_watcherPinned) then {
	(rmx_var_ctrl_watcherItems select 1) ctrlSetText "";
	(rmx_var_ctrl_watcherItems select 1) ctrlSetBackgroundColor [0,0,0,0];
	(rmx_var_ctrl_watcherItems select 2) ctrlShow false;
};

{
	_idx = (rmx_var_ctrl_watcherItems select 4) lbadd _x;
} count 
[
	"Code",
	"Boolean",
	"Progress Bar",
	"missionNamespace",
	"uiNamespace",
	"profileNamespace"
];

(rmx_var_ctrl_watcherItems select 4) lbSetCurSel 0;








































true
