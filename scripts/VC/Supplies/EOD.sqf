if (!isServer) exitWith {};


_crate = _this select 0;

// Clear box
clearBackpackCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;


_crate addWeaponCargoGlobal ["MineDetector",2];
_crate addItemCargoGlobal ["DemoCharge_Remote_Mag", 5];
_crate addItemCargoGlobal ["SatchelCharge_Remote_Mag", 5];
_crate addItemCargoGlobal ["AGM_EarBuds",20];
