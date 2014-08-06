if (!isServer) exitWith {};


_crate = _this select 0;

// Clear box
clearBackpackCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;


_crate addWeaponCargoGlobal ["STI_M136",2];
_crate addWeaponCargoGlobal ["STI_MAAWS",2];
_crate addWeaponCargoGlobal ["STI_M32",2];
_crate addWeaponCargoGlobal ["STI_M79",2];
_crate addWeaponCargoGlobal ["STI_MK13",2];
_crate addItemCargoGlobal ["STI_84MM_HEAT",8];
_crate addItemCargoGlobal ["STI_84MM_HE",8];
_crate addItemCargoGlobal ["STI_84MM_SMOKE",8];
_crate addItemCargoGlobal ["1Rnd_HE_Grenade_shell",40];
_crate addItemCargoGlobal ["1Rnd_Smoke_Grenade_shell",40];
_crate addItemCargoGlobal ["STI_6Rnd_HE_Grenade_shell",10];
_crate addItemCargoGlobal ["STI_6Rnd_Smoke_Grenade_shell",10];
_crate addItemCargoGlobal ["AGM_Earbuds", 10];