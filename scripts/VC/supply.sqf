//////////////////////////////////////////
//// SUPPLIES Creation
//// 19th Military Combat Unit | 19THMCU.COM
//// CREATED BY: 19TH MILITARY COMBAT UNIT
//// 5/04/2014: Developer: -SSGT-Doddsy
//////////////////////////////////////////
//// SUPPLIES Creation:
_choice = _this select 3;

switch (_choice) do
{
	// SUPPLIES
     	case "Supply1": {_supply1 = "B_supplyCrate_F" createVehicle (getMarkerPos "Supplyspawn");
     [_supply1] exec "scripts\VC\Supplies\General.sqf";_supply1 allowdamage false;
     ["Vehicle_Scrap", [_supply1,"<t color=""#ff0000"">" +"Scrap Supply",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has created Field Supplies",name player]] call CBA_fnc_globalExecute; };
      
     	case "Supply2": {_supply2 = "B_supplyCrate_F" createVehicle (getMarkerPos "Supplyspawn");
     [_supply2] exec "scripts\VC\Supplies\Medical.sqf";_supply2 allowdamage false;
     ["Vehicle_Scrap", [_supply2,"<t color=""#ff0000"">" +"Scrap Supplies",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has created Medical Supplies",name player]] call CBA_fnc_globalExecute; };
     
     	case "Supply3": {_supply3 = "B_supplyCrate_F" createVehicle (getMarkerPos "Supplyspawn");
     [_supply3] exec "scripts\VC\Supplies\Recon.sqf";_supply3 allowdamage false;
     ["Vehicle_Scrap", [_supply3,"<t color=""#ff0000"">" +"Scrap Supplies",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has created Recon Supplies",name player]] call CBA_fnc_globalExecute; };
     
 	case "Supply4": {_supply4 = "B_supplyCrate_F" createVehicle (getMarkerPos "Supplyspawn");
 	[_supply4] exec "scripts\VC\Supplies\EOD.sqf";_supply4 allowdamage false;
     ["Vehicle_Scrap", [_supply4,"<t color=""#ff0000"">" +"Scrap Supplies",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has created EOD Supplies",name player]] call CBA_fnc_globalExecute; };    
     
     case "Supply5": {_supply5 = "B_supplyCrate_F" createVehicle (getMarkerPos "Supplyspawn");
     [_supply5] exec "scripts\VC\Supplies\AV.sqf";_supply5 allowdamage false;
     ["Vehicle_Scrap", [_supply5,"<t color=""#ff0000"">" +"Scrap Supplies",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
     [-1, {HQ sideChat format _this}, ["%1 has created Anti-Vehicle Supplies",name player]] call CBA_fnc_globalExecute; };
};