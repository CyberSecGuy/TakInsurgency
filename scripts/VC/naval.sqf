//////////////////////////////////////////
//// Vehicle Creation
//// 19th Military Combat Unit | 19THMCU.COM
//// CREATED BY: 19TH MILITARY COMBAT UNIT
//// 5/04/2014: Developer: Col Locknlol
//////////////////////////////////////////
//// Naval Creation:
_choice = _this select 3;

switch (_choice) do
{
	// VEHICLES
     case "assault_boat": {_boat1 = "B_Boat_Transport_01_F" createVehicle (getMarkerPos "navalspawn");_boat1 setDir 170;player moveInDriver _boat1;
      ["Vehicle_Scrap", [_boat1,"<t color=""#ff0000"">" +"Scrap Assault Boat",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
    [-1, {HQ sideChat format _this}, ["%1 has spawned an Assault Boat",name player]] call CBA_fnc_globalExecute; };

     case "life_boat": {_boat2 = "B_Lifeboat" createVehicle (getMarkerPos "navalspawn");_boat2 setDir 170;player moveInDriver _boat2;
      ["Vehicle_Scrap", [_boat2,"<t color=""#ff0000"">" +"Scrap Life Boat",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
    [-1, {HQ sideChat format _this}, ["%1 has spawned an Life Boat",name player]] call CBA_fnc_globalExecute; };

     case "speedboat_minigun": {_boat3 = "B_Boat_Armed_01_minigun_F" createVehicle (getMarkerPos "navalspawn");_boat3 setDir 170;player moveInDriver _boat3;
      ["Vehicle_Scrap", [_boat3,"<t color=""#ff0000"">" +"Scrap Speedboat Minigun",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
    [-1, {HQ sideChat format _this}, ["%1 has spawned a Speedboat Minigun",name player]] call CBA_fnc_globalExecute; };
      
     case "sdv_sub": {_boat4 = "B_SDV_01_F" createVehicle (getMarkerPos "navalspawn");_boat4 setDir 170;player moveInDriver _boat4;
      ["Vehicle_Scrap", [_boat4,"<t color=""#ff0000"">" +"Scrap SDV Sub",nil,"scripts\callout.sqf"]] call CBA_fnc_globalEvent;
    [-1, {HQ sideChat format _this}, ["%1 has spawned a SDV Sub",name player]] call CBA_fnc_globalExecute; };


};