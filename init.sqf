waitUntil { isServer || !isNull player };
waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};

enableSaving [false, false];

null = [WEST, true] execVM "scripts\jsere_Redress.sqf";
null = [] execVM "scripts\IgiLoad\IgiLoadInit.sqf";
[] spawn {call compile preprocessFileLineNumbers "EPD\Ied_Init.sqf";};
null = [] execVM 'R3F_LOG\init.sqf';
null = [vicspawner, -1, west, "FULL"] execVM 'R3F_LOG\USER_FUNCT\init_creation_factory.sqf';


0 = [] execVM 'scripts\group_manager.sqf';
[] execVM "zlt_fieldrepair.sqf";
[] execVM "zlt_fastrope.sqf";
[] execVM "module_cleanup\init.sqf";

["Vehicle_Scrap",
{
	_subject = _this select 0;     // The object to which the action should be added
	_txt = _this select 1;         // Text entry for the action
	_neededGear = _this select 2;  // gear needed for action to be present
	_script = _this select 3;      // script to execute

	diag_log format ["B_Event received: addActionGlobal (%1; %2)", _txt, _script];

	// TODO: Only add action when needed gear-item is present in gear. (addAction condition? If clause here?)
	_subject addAction [_txt, _script];
}] call CBA_fnc_addEventHandler;

// Chair Script Init
BIS_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;
    _object switchMove _anim;
};

#include "core\modules\gridMarkers\functions\functions.sqf"
#include "core\modules\cacheScript\functions\cacheFunctions.sqf"
#include "core\modules\cacheScript\functions\cacheGetPositions.sqf"

#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif

execNow "core\init.sqf";

diag_log format["Initialisation Completed"];
