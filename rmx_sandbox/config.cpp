//Author: Raimonds Virtoss / Raymix
class CfgPatches {
	class rmx_sandbox {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"rmx_init"};
	};
};


class devFunctions {
	debugEnabled = 1; //enables console debug
	class rmx {
		class sandbox {
			file = "x\Addons\rmx_sandbox";
			class variables {recompile = 1; preInit = 1;};
			class sandbox {recompile = 1;};
		};
	};
	/*
	class A3E {
		tag = "EPOCH";
		file = "x\Addons\rmx_sandbox";
		class generic {
			file = "x\Addons\rmx_sandbox";
			class craftItem {};
		};
	};
	*/
};
