['repairkit','Repair Kit','repairKitModel'call bdra,[],{private["_zxjz","_nrgv"];_zxjz=nearestObjects[getPosATL player,["LandVehicle","Air"],10];if(count _zxjz==0)then{hint'Unable to find vehicle to repair!'}else{_nrgv=_zxjz select 0;if(cursorTarget in _zxjz)then{_nrgv=cursorTarget};[5,"Repairing Vehicle %1",[_nrgv],{(_this select 0)setDamage 0;['repairkit']call tfyi}]call byng}}]call xwjs;