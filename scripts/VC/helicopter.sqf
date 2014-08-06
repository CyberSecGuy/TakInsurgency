//////////////////////////////////////////
//// Vehicle Creation
//// 19th Military Combat Unit | 19THMCU.COM
//// CREATED BY: 19TH MILITARY COMBAT UNIT
//// 5/04/2014: Developer: -MSGT-Doddsy
//////////////////////////////////////////
//// Helicopter Creation:
_choice = _this select 3;

switch (_choice) do
{
	// VEHICLES
     case "little": {_heli1 = "B_Heli_Light_01_F" createVehicle (getMarkerPos "helispawn_transport");_heli1 setDir -50;player moveInDriver _heli1;
      ["Vehicle_Scrap", [_heli1,"<t color=""#ff0000"">" +"Scrap MH-9 Littlebird",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
    [-1, {HQ sideChat format _this}, ["%1 has spawned a MH-9 Littlebird",name player]] call CBA_fnc_globalExecute; };
      
     case "lynx": {_heli2 = "I_Heli_light_03_unarmed_F" createVehicle (getMarkerPos "helispawn_transport");_Heli2 setDir -50;player moveInDriver _heli2;
     ["Vehicle_Scrap", [_heli2,"<t color=""#ff0000"">" +"Scrap AW159 Wildcat",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;_heli2 setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.2)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a AW159 Wildcat",name player]] call CBA_fnc_globalExecute; };

     case "little2": {_heli3 = "B_Heli_Light_01_armed_F" createVehicle (getMarkerPos "helispawn_CAS");_heli3 setDir -50;player moveInDriver _heli3;
      ["Vehicle_Scrap", [_heli3,"<t color=""#ff0000"">" +"Scrap AH-9 Littlebird",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
      [-1, {HQ sideChat format _this}, ["%1 has spawned a AH-9 Littlebird",name player]] call CBA_fnc_globalExecute; };
      
     case "lynx2": {_heli4 = "I_Heli_light_03_F" createVehicle (getMarkerPos "helispawn_CAS");_Heli4 setDir -50;player moveInDriver _heli4;
     ["Vehicle_Scrap", [_heli4,"<t color=""#ff0000"">" +"Scrap AW159 Wildcat",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     _heli4 setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.2)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a AW159 Wildcat CAS",name player]] call CBA_fnc_globalExecute; };
      
     case "Blackfoot": {_heli5 = "B_Heli_Attack_01_F" createVehicle (getMarkerPos "helispawn_CAS");_heli5 setDir -50;player moveInDriver _heli5;
     ["Vehicle_Scrap", [_heli5,"<t color=""#ff0000"">" +"Scrap AH-99 Blackfoot",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     _heli5 setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.2)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a AH-99 Blackfoot CAS",name player]] call CBA_fnc_globalExecute; };

	case "Merlin": {_helih = "I_Heli_Transport_02_F" createVehicle (getMarkerPos "helispawn_Utility");_Helih setDir -50;player moveInDriver _helih;
     ["Vehicle_Scrap", [_helih,"<t color=""#ff0000"">" +"Scrap AW101 Merlin",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;_helih setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.2)"];
     _helih setObjectTextureGlobal[1,"#(argb,8,8,3)color(0.518,0.519,0.519,0.2)"];_helih setObjectTextureGlobal[2,"#(argb,8,8,3)color(0.518,0.519,0.519,0.2)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a AW101 Merlin",name player]] call CBA_fnc_globalExecute; };

    case "c130cargo": {_c130c = "C130J_Cargo" createVehicle (getMarkerPos "fixedspawn");_c130c setDir 240;player moveInDriver _c130c;
     ["Vehicle_Scrap", [_c130c,"<t color=""#ff0000"">" +"Scrap C130",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;_c130c setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.4)"];
     _c130c setObjectTextureGlobal[1,"#(argb,8,8,3)color(0.518,0.519,0.519,0.3)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a C130 Cargo",name player]] call CBA_fnc_globalExecute; };

    case "c130transport": {_c130t = "C130J" createVehicle (getMarkerPos "fixedspawn");_c130t setDir 240;player moveInDriver _c130t;
     ["Vehicle_Scrap", [_c130t,"<t color=""#ff0000"">" +"Scrap c130",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;_c130t setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.4)"];
     _c130t setObjectTextureGlobal[1,"#(argb,8,8,3)color(0.518,0.519,0.519,0.3)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a C130 Transport",name player]] call CBA_fnc_globalExecute; };

	case "BuzzardAA": {_buzzaa = "I_Plane_Fighter_03_AA_F" createVehicle (getMarkerPos "fixedspawn");_buzzaa setDir 240;player moveInDriver _buzzaa;
     ["Vehicle_Scrap", [_buzzaa,"<t color=""#ff0000"">" +"Scrap L-39ZA",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;_buzzaa setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.4)"];
     _buzzaa setObjectTextureGlobal[1,"#(argb,8,8,3)color(0.518,0.519,0.519,0.3)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a L-39ZA CAP",name player]] call CBA_fnc_globalExecute; };

	case "BuzzardAT": {_buzzat = "I_Plane_Fighter_03_cAS_F" createVehicle (getMarkerPos "fixedspawn");_buzzat setDir 240;player moveInDriver _buzzat;
     ["Vehicle_Scrap", [_buzzat,"<t color=""#ff0000"">" +"Scrap L-39ZA",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;_buzzat setObjectTextureGlobal[0,"#(argb,8,8,3)color(0.518,0.519,0.519,0.4)"];
     _buzzat setObjectTextureGlobal[1,"#(argb,8,8,3)color(0.518,0.519,0.519,0.3)"];
     [-1, {HQ sideChat format _this}, ["%1 has spawned a L-39ZA CAS",name player]] call CBA_fnc_globalExecute; };

};