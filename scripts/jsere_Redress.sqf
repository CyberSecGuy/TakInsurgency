/*////////////////////////////////////

Script by the Development Team of the Arma 3 Community, Joint Specialized Regiment (J-SERE)

Open to editing and public use!!!

BIG THANKS to Cuel and Dwringer for help in the making of this script!

See more of J-SERE at http://www.j-sere.com


*///////////////////////////////////

/*
To use the J-SERE Redress Script:

Example Init Line: null = [EAST, true, "HandGrenade", 3, "SmokeShell", 3] execVM "jsere_Redress.sqf";

1. Place: null = [] execVM "jsere_Redress.sqf"; --in the init.sqf
2. Fill in all the arrays within the script to your liking (works with mods, that's right, mods).
3. Decide on the side you want to be "redressed" and place it in the init line above.
	-WEST (null = [WEST] execVM "jsere_Redress.sqf";)
	-EAST (null = [EAST] execVM "jsere_Redress.sqf";)
	-RESISTANCE (null = [RESISTANCE] execVM "jsere_Redress.sqf";) (aka Independents, AAF)
	-CIVILIAN (null = [CIVILIAN] execVM "jsere_Redress.sqf";)
4. Choose whether or not you want "special" units, such as AT, just place them like you normally would in the editor.
		-And place true in the init line ->>(null = [WEST, true] execVM "jsere_Redress.sqf;)
		-"Specials" included are AT, AA, and Medics.
5. Define two grenade types you would like to use and their amounts, exampled above.
6. Enjoy your insurgent army, or whatever you may be redressing and rearming units for.
*/

_faction = (_this select 0);

_special = (_this select 1);

_units = []; //empty array, defined later

_ATunits = [];
_Medunits = [];
_AAunits = [];

_backpackarr = ["TFA_Kitbag_Mcam"];
//		^-- Fill this with all the classnames of backpacks you would like to have chosen.

_weaponarr = [""];
//		^-- Fill this with the weapon classnames you would like to use.

_uniformarr = ["TFA_Mcam"];
//		^-- Fill this with the uniform classnames you would like to use.

_headarr = ["TFA_ECH_Multi"];
//		^-- Fill this with the headgear classnames you would like to use.

_vestarr = ["TFA_PlateCarrierH_MCam"];
//	    ^-- Fill this with the vest classnames you would like to use.

_gogglearr = [""];
//	       ^-- Fill this with the goggle classnames you would like to use.
{

if (side _x == _faction) then { _units set [count _units, _x];};

if ((typeOf _x == "O_Soldier_AT_F") || (typeOf _x == "I_Soldier_AT_F") || (typeOf _x == "B_Soldier_AT_F")) then { _ATunits set [count _ATunits, _x];};

if ((typeOf _x == "O_medic_F") || (typeOf _x == "I_medic_F") || (typeOf _x == "B_medic_F")) then { _Medunits set [count _Medunits, _x];};

if ((typeOf _x == "O_Soldier_AA_F") || (typeOf _x == "I_Soldier_AA_F") || (typeOf _x == "B_Soldier_AA_F")) then { _AAunits set [count _AAunits, _x];};

} foreach allunits;

//The redressing process...

if (isServer) then {

	{
	_uniform = _uniformarr call BIS_fnc_selectRandom;
	_weapon = _weaponarr call BIS_fnc_selectRandom;
	_backpack = _backpackarr call BIS_fnc_selectRandom;
	_head = _headarr call BIS_fnc_selectRandom;
	_vest = _vestarr call BIS_fnc_selectRandom;
	_goggle = _gogglearr call BIS_fnc_selectRandom;
   	_muzzles = getArray(configfile >> "cfgWeapons" >> (_weapon) >> "muzzles"); 
        _unit = _x;

	_x unassignItem "NVGoggles_OPFOR";
	_x unassignItem "NVGoggles";
	_x unassignItem "NVGoggles_INDEP";
	clearItemCargo _x;
	clearWeaponCargo _x;
	clearMagazineCargo _x;
	removeallWeapons _x;
	removeAllHandgunItems _x;
	removeHeadgear _x;
	removeGoggles _x;
	removeUniform _x;
	removeBackpack _x;
	removeVest _x;

	_x forceaddUniform _uniform;
	_x addBackpack _backpack;
	_x addHeadgear _head;
	_x addVest _vest;
	_x addGoggles _goggle;
   	 { 
       		 if (_x=="this") then {
			_mags = getArray(configfile >> "cfgWeapons" >> (_weapon) >> "magazines"); 
			{ 
				_unit addMagazines [_x, 10]; 
			} forEach [_mags select 0]; 
		} 
		else { 
			_mags = getArray(configfile >> "cfgWeapons" >> (_weapon) >> _x >> "magazines"); 
			{
 				_unit addMagazines [_x, 10]; 
	           	} forEach [_mags select 0]; 
         	}; 
    	 } forEach _muzzles;  

	_x addWeapon _weapon;

	} foreach _units;
};