if (isServer) exitWith {};

private ["_loader","_loadouttype","_truk","_truk_type"];
_loader = _this select 0;

// MESSAGE IF PLAYER OUTSIDE VEHICLE
if (vehicle _loader == player) exitWith{hint "You must be in a vehicle!";};

_loadouttype = _this select 3;
_truk = vehicle _loader;
_truk_type = typeof _truk;


// GI
If (_loadouttype == 1) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    clearMagazineCargoGlobal _truk;
    clearWeaponCargoGlobal _truk;
    clearItemCargoGlobal _truk;
    sleep 3;
	_truk addWeaponCargoGlobal ["FHQ_M4A1_WDL", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_TAN", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_BLK", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_SNW", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_M203_WDL", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_M203_TAN", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_M203_BLK", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_M203_SNW", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_AFG_WDL", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_AFG_TAN", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_AFG_BLK", 2];
	_truk addWeaponCargoGlobal ["FHQ_M4A1_AFG_SNW", 2];
	_truk addMagazineCargoGlobal ["30rnd_556x45_STANAG", 80];
	_truk addMagazineCargoGlobal ["FHQ_30Rnd_556x45_Stanag_Tracer_Green", 20];
	_truk addMagazineCargoGlobal ["FHQ_30Rnd_556x45_Stanag_Tracer_Red", 20];
	_truk addMagazineCargoGlobal ["FHQ_30Rnd_556x45_Stanag_Tracer_Yellow", 20];
	_truk addMagazineCargoGlobal ["FHQ_30Rnd_556x45_Stanag_Tracer_IR", 20];
	_truk addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 40];
	_truk addItemCargoGlobal ["ToolKit", 1];
	_truk addItemCargoGlobal ["MiniGrenade", 10];
	_truk addItemCargoGlobal ["HandGrenade", 5];
	_truk addItemCargoGlobal ["SmokeShell", 5];
	_truk addItemCargoGlobal ["SmokeShellYellow", 2];
	_truk addItemCargoGlobal ["SmokeShellGreen", 5];
	_truk addItemCargoGlobal ["SmokeShellRed", 2];
	_truk addItemCargoGlobal ["SmokeShellPurple", 5];
	_truk addItemCargoGlobal ["SmokeShellOrange", 2];
	_truk addItemCargoGlobal ["SmokeShellBlue", 5];
	_truk addItemCargoGlobal ["optic_aco", 5];
	_truk addItemCargoGlobal ["optic_ACO_grn", 5];
	_truk addItemCargoGlobal ["optic_Holosight", 5];
	
	
   	 _truk vehicleChat format ["Loading Status: Finished Loading %1..", _truk_type];
	 hint "General Issue: Successfully Loaded.";

};

// Anti Vehicle Loadout
If (_loadouttype == 2) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    clearMagazineCargoGlobal _truk;
    clearWeaponCargoGlobal _truk;
    clearItemCargoGlobal _truk;
    sleep 3;
    _truk addWeaponCargoGlobal ["Weapon_launch_NLAW_F",2];
	_truk addWeaponCargoGlobal ["Weapon_launch_RPG32_F",2];
	_truk addWeaponCargoGlobal ["STI_M136",2];
	_truk addWeaponCargoGlobal ["STI_MAAWS",2];
	_truk addWeaponCargoGlobal ["STI_M32",2];
	_truk addWeaponCargoGlobal ["STI_M79",2];
	_truk addWeaponCargoGlobal ["STI_MK13",2];
	_truk addItemCargoGlobal ["STI_84MM_HEAT",8];
	_truk addItemCargoGlobal ["STI_84MM_HE",8];
	_truk addItemCargoGlobal ["STI_84MM_SMOKE",8];
	_truk addItemCargoGlobal ["1Rnd_HE_Grenade_shell",40];
	_truk addItemCargoGlobal ["1Rnd_Smoke_Grenade_shell",40];
	_truk addItemCargoGlobal ["STI_6Rnd_HE_Grenade_shell",10];
	_truk addItemCargoGlobal ["STI_6Rnd_Smoke_Grenade_shell",10];
	_truk addItemCargoGlobal ["AGM_Earbuds", 10];

	_truk vehicleChat format ["Loading Status: Finished Loading %1..", _truk_type];
   	 hint "Anti Vehicle: Successfully Loaded";
};

// HMG Ammo Loadout
If (_loadouttype == 3) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    clearMagazineCargoGlobal _truk;
    clearWeaponCargoGlobal _truk;
    clearItemCargoGlobal _truk;
    sleep 3;
    _truk addMagazines ["200Rnd_127x99_mag_Tracer_Red",3];
	
	_truk vehicleChat format ["Loading Status: Finished Loading %1..", _truk_type];
  	hint "HMG Belts: Successfully Loaded";
};

// Recon Loadout
If (_loadouttype == 4) then
{

    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    clearMagazineCargoGlobal _truk;
    clearWeaponCargoGlobal _truk;
    clearItemCargoGlobal _truk;
    sleep 3;

	_truk addWeaponCargoGlobal ["Trixie_M110",2];
	_truk addWeaponCargoGlobal ["Trixie_M110_NG",2];
	_truk addWeaponCargoGlobal ["Trixie_M110_NG_Black",2];
	_truk addWeaponCargoGlobal ["Trixie_M40A3",2];
	_truk addWeaponCargoGlobal ["Trixie_M40A3_NG",2];
	_truk addWeaponCargoGlobal ["Trixie_M40A3_Clean",2];
	_truk addWeaponCargoGlobal ["Trixie_M14DMR",2];
	_truk addWeaponCargoGlobal ["Trixie_M14DMR_NG",2];
	_truk addWeaponCargoGlobal ["Trixie_M14DMR_Clean",2];
	_truk addWeaponCargoGlobal ["Trixie_M14DMR_NG_Black",2];
	_truk addWeaponCargoGlobal ["Trixie_M14DMR_Clean_Black",2];
	_truk addWeaponCargoGlobal ["Trixie_M107",2];
	_truk addWeaponCargoGlobal ["Trixie_M107_Black",2];
	_truk addWeaponCargoGlobal ["Trixie_M107_Green",2];

	_truk addMagazineCargoGlobal ["Trixie_20x762_Mag",10];
	_truk addMagazineCargoGlobal ["Trixie_5x762_Mag",10];
	_truk addMagazineCargoGlobal ["Trixie_10x127_Mag",10];
	_truk addMagazineCargoGlobal ["Trixie_10x127_HE_Mag",10];
	_truk addMagazineCargoGlobal ["Trixie_10x127_HEIAP_Mag",10];

	_truk addWeaponCargoGlobal ["Laserdesignator",1];
	_truk addWeaponCargoGlobal ["Rangefinder",1];
	_truk addMagazineCargoGlobal ["Laserbatteries", 2];

	_truk addWeaponCargoGlobal ["Trixie_LSMARK4_Net",4];
	_truk addWeaponCargoGlobal ["Trixie_LSMARK4",4];
	_truk addWeaponCargoGlobal ["Trixie_SB31250",4];
	_truk addWeaponCargoGlobal ["Trixie_SB31250_Net",4];
	_truk addItemCargoGlobal ["optic_SOS", 4];
	_truk addItemCargoGlobal ["optic_LRPS", 4];
	_truk addItemCargoGlobal ["optic_DMS", 4];
	_truk addItemCargoGlobal ["R3F_NF42", 4];
	_truk addItemCargoGlobal ["Item_muzzle_snds_B", 4];

	_truk addItemCargoGlobal ["AGM_Bandage",40];
	_truk addItemCargoGlobal ["AGM_Morphine",20];
	_truk addItemCargoGlobal ["AGM_Epipen",20];
	_truk addItemCargoGlobal ["AGM_EarBuds",20];
	_truk addItemCargoGlobal ["AGM_Bloodbag",20];
	_truk addItemCargoGlobal ["SmokeShellBlue", 20];
	_truk addItemCargoGlobal ["SmokeShellPurple", 20];
	
	_truk vehicleChat format ["Loading Status: Finished Loading %1..", _truk_type];	
   	 hint "Recon Supplies: Successfully Loaded";
};

// Medical Supplies Loadout
If (_loadouttype == 5) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    clearMagazineCargoGlobal _truk;
    clearWeaponCargoGlobal _truk;
    clearItemCargoGlobal _truk;
    sleep 3;
	_truk addItemCargoGlobal ["AGM_Bandage",40];
	_truk addItemCargoGlobal ["AGM_Morphine",20];
	_truk addItemCargoGlobal ["AGM_Epipen",20];
	_truk addItemCargoGlobal ["AGM_EarBuds",20];
	_truk addItemCargoGlobal ["AGM_Bloodbag",20];
	_truk addItemCargoGlobal ["SmokeShellBlue", 20];
	_truk addItemCargoGlobal ["SmokeShellPurple", 20];

	_truk vehicleChat format ["Loading Status: Finished Loading %1..", _truk_type];
   	 hint "Medical Supplies: Successfully Loaded";
};

// EOD Loadout
If (_loadouttype == 6) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    clearMagazineCargoGlobal _truk;
    clearWeaponCargoGlobal _truk;
    clearItemCargoGlobal _truk;
    sleep 3;
	_truk addWeaponCargoGlobal ["MineDetector",2];
	_truk addItemCargoGlobal ["DemoCharge_Remote_Mag", 5];
	_truk addItemCargoGlobal ["SatchelCharge_Remote_Mag", 5];
	_truk addItemCargoGlobal ["AGM_EarBuds",20];

	_truk vehicleChat format ["Loading Status: Finished Loading %1..", _truk_type];	
   	 hint "EOD Supplies: Successfully Loaded";
};
[] spawn { 
   {_truk removeaction LOADOUT1} forEach allUnits; 
   {_truk removeaction LOADOUT2} forEach allUnits; 
   {_truk removeaction LOADOUT3} forEach allUnits; 
   {_truk removeaction LOADOUT4} forEach allUnits; 
   {_truk removeaction LOADOUT5} forEach allUnits; 
   {_truk removeaction LOADOUT6} forEach allUnits; 
}; 

