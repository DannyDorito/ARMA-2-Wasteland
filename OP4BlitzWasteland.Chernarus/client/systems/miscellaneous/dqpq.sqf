rhoo=0;[]spawn{_ldfj=vehicle player;while{true}do{waitUntil{_ldfj!=vehicle player};_ldfj=vehicle player;if(!(_ldfj getVariable['missleFixAdded',false])&&_ldfj isKindOf"Air")then{_ldfj setVariable['missleFixAdded',true];if(getNumber(configFile>>"CfgVehicles">>(typeof _ldfj)>>"IncommingMisslieDetectionSystem")==0)then{_ldfj addEventHandler["IncomingMissile",{_this spawn{_cjbp=(getPosATL(_this select 2))nearestObject(_this select 1);if((_this select 0)==vehicle player)then{rhoo=rhoo+1;waitUntil{_cjbp distance(vehicle player)<100||!alive _cjbp};rhoo=rhoo - 1}}}]}}}};[]spawn{while{true}do{waitUntil{rhoo>0};waitUntil{player say2D"missile_inbound";sleep 0.001;rhoo==0}}};