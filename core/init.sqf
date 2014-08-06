#include <modules\modules.hpp>

#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif

#ifdef gridMarkers
if (isServer || isDedicated) then {
	null = ["null"] execVM "core\modules\gridMarkers\createMarkers.sqf";
};
#endif

#ifdef cacheScript
execNow "core\modules\cacheScript\cache.sqf";
#endif

#ifdef intelSpawn
if (isServer || isDedicated) then {
	[] execVM "core\modules\cacheScript\Functions\spawnIntel.sqf";
};
#endif