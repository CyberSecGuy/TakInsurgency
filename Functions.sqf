//script with preInit = 1; in CfgFunctions
0 = 0 spawn {
	"BIS_fnc_switchMove" addPublicVariableEventHandler {
		BIS_fnc_switchMove = {
    		private["_object","_anim"];
    		_object = _this select 0;
    		_anim = _this select 1;
		_object switchMove _anim;
    
	};
};
