_jgbq=[_this,0,vehicle player,[objNull]]call jdly;if(_jgbq==player)then{{if!(_x isKindOf"Man")exitwith{_jgbq=_x}}count(nearestObjects[getPosATL player,["AllVehicles"],10])};if(_jgbq!=player&&!isNull _jgbq)then{if((_jgbq call bis_fnc_absspeed)<5)then{if(local _jgbq)then{[_jgbq,true]call knwz;_jgbq allowDamage false;_jgbq setVectorUp[0,0,1];_jgbq setVelocity[0,0,5];_jgbq spawn{_fefi=diag_tickTime;waitUntil{([velocity _this,[0,0,0]]call pqnb)||diag_tickTime - _fefi>5};_this allowDamage true}}else{[[_jgbq],"qguc",_jgbq]call acwq};closeDialog 0}else{hint"You can't flip a moving vehicle"}};