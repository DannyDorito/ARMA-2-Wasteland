[]spawn{_awgu={private["_sooo","_qbzy","_zjzh","_aufp"];_sooo=_this select 0;_qbzy=_this select 3;_zjzh=_this select 2;if(_sooo==_qbzy)then{_aufp=[getPosATL _sooo]call zcav;if(!isNull _aufp)then{_qbzy=driver _aufp;if(isNull _qbzy)then{_qbzy=effectiveCommander _aufp}}};if(alive _sooo&&(effectiveCommander _sooo)!=(effectiveCommander _qbzy)&&(_qbzy in(units group player)||(playerSide in[east,west]&&side player==side _qbzy)))then{_qbzy setDamage((damage _qbzy)+((_this select 2)*0.2));damage _sooo}else{_this select 2}};player addEventHandler['HandleDamage',_awgu];_aufp=vehicle player;while{true}do{waitUntil{_aufp!=vehicle player};_aufp removeEventHandler['HandleDamage',_aufp getVariable['noFFEH',-1]];_aufp=vehicle player;_aufp setVariable['noFFEH',_aufp addEventHandler['HandleDamage',_awgu]]}};