//////////////////////////////////////////
//// Vehicle Creation
//// 19th Military Combat Unit | 19THMCU.COM
//// CREATED BY: 19TH MILITARY COMBAT UNIT
//// 5/04/2014: Developer: -SSGT-Doddsy
//////////////////////////////////////////
//// Light Vehicle Creation:
_choice = _this select 3;

switch (_choice) do
{
	// LIGHT VEHICLES
     case "ATV": {_quad = "B_Quadbike_01_F" createVehicle (getMarkerPos "carspawn");_quad setDir 132;player moveInDriver _quad;
	clearMagazinecargoglobal _quad;clearweaponcargoglobal _quad;clearitemcargoglobal _quad;
      ["Vehicle_Scrap", [_quad,"<t color=""#ff0000"">" +"Scrap ATV",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
      [-1, {HQ sideChat format _this}, ["%1 has spawned a ATV",name player]] call CBA_fnc_globalExecute; };
      
     case "OFF1": {_offroad1 = "B_G_Offroad_01_F" createVehicle (getMarkerPos "carspawn");_offroad1 setDir 132;player moveInDriver _Offroad1;
	clearMagazinecargoglobal _offroad1;clearweaponcargoglobal _offroad1;clearitemcargoglobal _offroad1;
     ["Vehicle_Scrap", [_offroad1,"<t color=""#ff0000"">" +"Scrap Transport Offroad",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a Transport Offroad",name player]] call CBA_fnc_globalExecute; };

     case "OFF2": {_offroad2 = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "carspawn");_offroad2 setDir 132;player moveInDriver _Offroad2;
	clearMagazinecargoglobal _offroad2;clearweaponcargoglobal _offroad2;clearitemcargoglobal _offroad2;
     ["Vehicle_Scrap", [_offroad2,"<t color=""#ff0000"">" +"Scrap Combat Offroad",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a Combat Offroad.",name player]] call CBA_fnc_globalExecute; };
     
     case "HUNT1": {_Hunter1 = "B_MRAP_01_F" createVehicle (getMarkerPos "carspawn");_Hunter1 setDir 132;player moveInDriver _Hunter1;
	clearMagazinecargoglobal _Hunter1;clearweaponcargoglobal _Hunter1;clearitemcargoglobal _Hunter1;
     ["Vehicle_Scrap", [_Hunter1,"<t color=""#ff0000"">" +"Scrap M-ATV Oshkosh",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a M-ATV Oshkosh",name player]] call CBA_fnc_globalExecute; };

     case "HUNT2": {_Hunter2 = "B_MRAP_01_hmg_f" createVehicle (getMarkerPos "carspawn");_Hunter2 setDir 132;player moveInDriver _Hunter2;
	clearMagazinecargoglobal _Hunter2;clearweaponcargoglobal _Hunter2;clearitemcargoglobal _Hunter2;
     ["Vehicle_Scrap", [_Hunter2,"<t color=""#ff0000"">" +"Scrap M-ATV Oshkosh RCWS",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a M-ATV Oshkosh RCWS",name player]] call CBA_fnc_globalExecute; };

     case "HUNT3": {_Hunter3 = "B_MRAP_01_gmg_F" createVehicle (getMarkerPos "carspawn");_Hunter3 setDir 132;player moveInDriver _Hunter3;
     clearMagazinecargoglobal _Hunter3;clearweaponcargoglobal _Hunter3;clearitemcargoglobal _Hunter3;
     ["Vehicle_Scrap", [_Hunter3,"<t color=""#ff0000"">" +"Scrap M-ATV Oshkosh RCWS-GMG",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a M-ATV Oshkosh RCWS-GMG",name player]] call CBA_fnc_globalExecute; };

	case "HEMTT1": {_TruckC = "B_Truck_01_covered_F" createVehicle (getMarkerPos "carspawn");_TruckC setDir 132;player moveInDriver _TruckC;
	clearMagazinecargoglobal _TruckC;clearweaponcargoglobal _TruckC;clearitemcargoglobal _TruckC;
     ["Vehicle_Scrap", [_TruckC,"<t color=""#ff0000"">" +"Scrap HEMTT Transport",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a HEMTT Transport",name player]] call CBA_fnc_globalExecute; };

	// APC AND IFV
	case "APC": {_APC = "B_APC_Tracked_01_rcws_F" createVehicle (getMarkerPos "armorspawn");_APC setDir 40;player moveInDriver _APC;
	clearMagazinecargoglobal _APC;clearweaponcargoglobal _APC;clearitemcargoglobal _APC;
     ["Vehicle_Scrap", [_APC,"<t color=""#ff0000"">" +"Scrap Namer APC",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a Namer APC",name player]] call CBA_fnc_globalExecute; };

	case "IFV": {_IFV = "B_APC_Wheeled_01_cannon_F" createVehicle (getMarkerPos "armorspawn");_IFV setDir 40;player moveInDriver _IFV;
	clearMagazinecargoglobal _IFV;clearweaponcargoglobal _IFV;clearitemcargoglobal _IFV;
     ["Vehicle_Scrap", [_IFV,"<t color=""#ff0000"">" +"Scrap Badger Denel IFV",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a Badger Denel IFV",name player]] call CBA_fnc_globalExecute; };

	case "BOBCAT": {_BOBCAT = "B_APC_Tracked_01_CRV_F" createVehicle (getMarkerPos "armorspawn");_BOBCAT setDir 40;player moveInDriver _BOBCAT;
	clearMagazinecargoglobal _BOBCAT;clearweaponcargoglobal _BOBCAT;clearitemcargoglobal _BOBCAT;
     ["Vehicle_Scrap", [_BOBCAT,"<t color=""#ff0000"">" +"Scrap Namer Engineering",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has spawned a Namer Engineering",name player]] call CBA_fnc_globalExecute; };
         
};

