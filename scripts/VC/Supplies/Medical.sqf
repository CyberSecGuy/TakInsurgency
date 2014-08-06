if (!isServer) exitWith {};


_crate = _this select 0;

// Clear box
clearBackpackCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;

_crate addItemCargoGlobal ["AGM_Bandage",40];
_crate addItemCargoGlobal ["AGM_Morphine",20];
_crate addItemCargoGlobal ["AGM_Epipen",20];
_crate addItemCargoGlobal ["AGM_EarBuds",20];
_crate addItemCargoGlobal ["AGM_Bloodbag",20];
_crate addItemCargoGlobal ["SmokeShellBlue", 20];
_crate addItemCargoGlobal ["SmokeShellPurple", 20];