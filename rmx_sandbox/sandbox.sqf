#include <\x\Addons\rmx_init\defines.inc>

'rmx_fnc_epoch' call rmx_fnc_recompile;

_a = "H";
_b = "Hi";
_c = "Hello World";
_d = "Lorem ipsum dolor sit amet, diceret imperdiet consectetuer";
_e = "Lorem ipsum dolor sit amet, diceret imperdiet consectetuer te sed, et qui civibus incorrupte, vis ei eirmod cetero. Vim sint evertitur ea, eum ea euismod commune singulis. Eos essent torquatos elaboraret ea, at per simul adversarium. Vis te homero intellegam. Usu ne tantas quaeque, wisi consectetuer has eu.";
_f = "xiiiiiiIiiiiiiiiiiiiiiiiiiiiiiiiix";
_g = "xWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWx";
_h = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
_i = "abcdefghijklmnopqrstuvwxyz";

_str = "";
_arr = ["A","a","W","w","i","I","l","L","1","0","5","G","g","M","m"," ",","];
for "_y" from 0 to 50 do {
	_str = _str + (_arr select (floor (random 17)));
};
uiSleep 0.1;
[_e, 4] call rmx_fnc_epoch;
[_d, 2] call rmx_fnc_epoch;
[_h, 3] call rmx_fnc_epoch;

["<t color='#ff0000'>Red text</t>", 3] call rmx_fnc_epoch;
["<t color='#99ffffff'>Transparent white text</t>", 3] call rmx_fnc_epoch;
["<t colorLink='#0000ff'><a href='http://www.arma3.com/'>Blue link</a></t>", 3] call rmx_fnc_epoch;




/*
sleep 1;
disableSerialization;
createDialog "rmx_rscContainer";
_dsp = findDisplay 99440;
_c = _dsp displayCtrl 99441;

_c ctrlSetModelScale 0.2;
_c ctrlSetModelDirAndUp [[0,1,0],[0,0,1]];
*/
//launch again to refresh memory
/*
rmx_test = false;
uiSleep 1;
rmx_test = true;
_IDC = 28901;
_getIDC = {_IDC = _IDC + 1; _IDC};

rmx_var_testControls = [];

_stuff = nearestOBjects [player, ["K03"],100];

{
	_ctrl = (findDisplay 46) ctrlCreate ["RscPicture",call _getIDC];
	_ctrl ctrlSetText "\x\addons\a3_epoch_code\Data\owner.paa";
	_ctrl ctrlSetPosition [0,0,0.1,0.1];
	_ctrl ctrlCommit 0;
	rmx_var_testControls set [_forEachIndex, [_x, _ctrl]];
}forEach _stuff;

while {rmx_test} do {
	{
		(_x select 1) ctrlSetPosition (worldToScreen getPos(_x select 0));
		(_x select 1) ctrlCommit 0;
	}forEach rmx_var_testControls;
	//uiSleep 0.5;
};

{
	ctrlDelete (_x select 1);
}forEach rmx_var_testControls;

rmx_var_testControls = [];

*/
//for "_i" from 0 to 200 do {_veh = "K03" createVehicle position player};

/*
{
	if ((str _x find "barrelwater_f.p3d") != -1) exitWith {player setPosATL(getPosATL _x)};
} forEach nearestObjects [position player,[],3000];

*/

/******** POST PROCESSING
[] spawn {
	_priority = 10;
	_fullBlur = [1];
	_noBlur = [0];
	_animSpeed = 2;
	
	_handle = ["dynamicBlur",_priority] call epoch_postProcessCreate; //create effect
	[_handle, _animSpeed, _fullBlur] call epoch_postprocessAdjust; //adds blur for 2 sec till max
	uiSleep _animSpeed;
	[_handle, _animSpeed, _noBlur] call epoch_postprocessAdjust; //removes blurr for 2 sec till min
	uiSleep _animSpeed;
	_handle call epoch_postprocessDestroy; //remove effect
};
**************************/

//("<img image='x\addons\rmx_init\data\critical.paa'/>") critical;

/******** 3D ctrl
disableSerialization;
_display = (findDisplay 46) createDisplay "rmx_rscObject";
_display displaySetEventHandler ["unload","rmx_var_3dCtrlSpin = false;"];
_ctrl = _display displayCtrl 77771;
_ctrl2 = _display ctrlCreate ["rmx_rscPicture",77772];
_ctrl2 ctrlSetText "#(rgb,8,8,3)color(1,1,1,0.1)";
_ctrl2 ctrlSetPosition [0,0,1,1];
_ctrl2 ctrlCommit 0;
_ctrl2 ctrlEnable true;
_ctrl2 ctrlSetEventHandler ["MouseMoving", "[_this,(findDisplay 77770) displayCtrl 77771] call Epoch_3DctrlYaw;"];
_ctrl2 ctrlSetEventHandler ["MouseEnter", "rmx_var_3dCtrlSpin = false;"];
_ctrl2 ctrlSetEventHandler ["MouseExit", "[(findDisplay 77770) displayCtrl 77771] call Epoch_3DctrlSpin;"];

_model1 = "\x\addons\a3_epoch_assets_1\models\chainsaw.p3d";
_model2 = "\x\addons\a3_epoch_vehicles\jetski.p3d";
_model3 = "\x\addons\a3_epoch_assets_3\cfgVehicles\Characters\female_ghillie.p3d";

_ctrl ctrlSetModel _model3;
_ctrl ctrlSetPosition [0.5, 1, 0.5];
_ctrl ctrlSetModelScale 0.5;
**************************/