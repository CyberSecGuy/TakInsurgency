_posi = getPosATL player select 2;
_uid = getPlayerUID player;
if (_posi < 0.5) then 

{

deleteVehicle (_this select 0);

[-1, {HQ sideChat format _this}, ["%1 has scrapped a vehicle. UID: %2",name player, _uid]] call CBA_fnc_globalExecute;

} 

else 

{

[-1, {HQ sideChat format _this}, ["%1 attempted to scrap a vehicle while embarked. UID: %2",name player, _uid]] call CBA_fnc_globalExecute;

};