if (!isServer) exitWith {};


_crate = _this select 0;

// Clear box
clearBackpackCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;

_crate addWeaponCargoGlobal ["Trixie_M110",2];
_crate addWeaponCargoGlobal ["Trixie_M110_NG",2];
_crate addWeaponCargoGlobal ["Trixie_M110_NG_Black",2];
_crate addWeaponCargoGlobal ["Trixie_M40A3",2];
_crate addWeaponCargoGlobal ["Trixie_M40A3_NG",2];
_crate addWeaponCargoGlobal ["Trixie_M40A3_Clean",2];
_crate addWeaponCargoGlobal ["Trixie_M14DMR",2];
_crate addWeaponCargoGlobal ["Trixie_M14DMR_NG",2];
_crate addWeaponCargoGlobal ["Trixie_M14DMR_Clean",2];
_crate addWeaponCargoGlobal ["Trixie_M14DMR_NG_Black",2];
_crate addWeaponCargoGlobal ["Trixie_M14DMR_Clean_Black",2];
_crate addWeaponCargoGlobal ["Trixie_M107",2];
_crate addWeaponCargoGlobal ["Trixie_M107_Black",2];
_crate addWeaponCargoGlobal ["Trixie_M107_Green",2];


_crate addMagazineCargoGlobal ["Trixie_20x762_Mag",10];
_crate addMagazineCargoGlobal ["Trixie_5x762_Mag",10];
_crate addMagazineCargoGlobal ["Trixie_10x127_Mag",10];
_crate addMagazineCargoGlobal ["Trixie_10x127_HE_Mag",10];
_crate addMagazineCargoGlobal ["Trixie_10x127_HEIAP_Mag",10];

_crate addWeaponCargoGlobal ["Laserdesignator",1];
_crate addWeaponCargoGlobal ["Rangefinder",1];
_crate addMagazineCargoGlobal ["Laserbatteries", 2];

_crate addWeaponCargoGlobal ["Trixie_LSMARK4_Net",4];
_crate addWeaponCargoGlobal ["Trixie_LSMARK4",4];
_crate addWeaponCargoGlobal ["Trixie_SB31250",4];
_crate addWeaponCargoGlobal ["Trixie_SB31250_Net",4];
_crate addItemCargoGlobal ["optic_SOS", 4];
_crate addItemCargoGlobal ["optic_LRPS", 4];
_crate addItemCargoGlobal ["optic_DMS", 4];
_crate addItemCargoGlobal ["R3F_NF42", 4];
_crate addItemCargoGlobal ["Item_muzzle_snds_B", 4];

_crate addItemCargoGlobal ["AGM_Bandage",40];
_crate addItemCargoGlobal ["AGM_Morphine",20];
_crate addItemCargoGlobal ["AGM_Epipen",20];
_crate addItemCargoGlobal ["AGM_EarBuds",20];
_crate addItemCargoGlobal ["AGM_Bloodbag",20];
_crate addItemCargoGlobal ["SmokeShellBlue", 20];
_crate addItemCargoGlobal ["SmokeShellPurple", 20];