if(!hasInterface)exitwith{};[]spawn{waitUntil{isPlayer player&&player==player};waitUntil{!isNil"bis_fnc_init"};{_oidr=_x select 0;_jynv=objNull;waitUntil{_jynv=_oidr nearestObject"EmptyDetector";!isNull _jynv};_jynv setTriggerArea[5,5,0,false];_jynv setTriggerStatements["(vehicle player) in thislist && 'AllVehicles' countType thislist > 0 && vehicle player call bis_fnc_absspeed < 10 && (vehicle player) != player","[(vehicle player)] execVM 'client\systems\repairPads\ntsi.sqf'",""];_jynv setTriggerActivation["ANY","PRESENT",true];nil}count(([call ifdi,'repairPad']call uvzk)select 2)};