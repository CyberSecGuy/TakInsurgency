[-1, {HQ sideChat format _this}, ["%1 initiated vehicle cleanup. All empty vehicles will be deleted in 60 seconds.",name player, _uid]] call CBA_fnc_globalExecute;

sleep 60;

[-1, {HQ sideChat format _this}, ["Deleting empty ground vehicles...",name player, _uid]] call CBA_fnc_globalExecute;
sleep 1;
_vehicles = nearestObjects [player, ["landvehicle"], 100000];
{
if (count crew vehicle _x == 0) then {deleteVehicle _x};
} forEach _vehicles;

sleep 3;
[-1, {HQ sideChat format _this}, ["Deleting empty air vehicles...",name player, _uid]] call CBA_fnc_globalExecute;
sleep 1;
_air = nearestObjects [player, ["air"], 100000];
{
if (count crew vehicle _x == 0) then {deleteVehicle _x};
} forEach _air;

sleep 3;

[-1, {HQ sideChat format _this}, ["Vehicle cleanup complete.",name player, _uid]] call CBA_fnc_globalExecute;