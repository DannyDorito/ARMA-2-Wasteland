lvbk=missionNamespace getVariable['lvbk',[]];lwyw=false;if(!hasInterface)exitwith{};[]spawn{mcpm=[];vuzi=[];wfrm=missionNamespace getVariable['wfrm',[]];tkwa=[];_migg=5;waitUntil{!isNull player&&player==player};waitUntil{!(isNull(findDisplay 46))};player addEventHandler['Respawn',{{(_this select 1)removeAction _x;true}count mcpm;mcpm=[]}];_aoos={private["_jbfj","_fdin","_oqht"];_jbfj=_this select 0;_fdin=_this select 1;_oqht=_this select 2;tkwa set[_fdin,_oqht];vuzi set[_fdin,_jbfj];private["_shly","_igks"];_shly=_this select 3;_igks=_shly select 0;if(typeName _igks=="CODE")then{_igks=[_jbfj]call _igks};if((wfrm select _fdin)!=_igks)then{if(count mcpm>_fdin&&{!isNil{mcpm select _fdin}})then{player removeAction(mcpm select _foreachindex)};mcpm set[_fdin,player addAction[_igks,"client\systems\playerActions\functions\mjxx.sqf",_fdin,(_x select 4),false,true,format["cursorTarget == wvkj || tkwa select %1",_fdin]]];wfrm set[_fdin,_igks]}};while{true}do{if(vehicle player==player)then{_secs=eyePos player;_qmuw=[_secs,_migg,getDir player]call bis_fnc_relpos;_kdso=(([positionCameraToWorld[0,0,0],positionCameraToWorld[0,0,1]]call bis_fnc_vectorfromxtoy)call bis_fnc_unitvector)select 2;_qmuw set[2,_kdso*_migg+(_secs select 2)];_bxyp=lineIntersectsWith[_secs,_qmuw,objNull,player,true,true];if(count _bxyp==1&&cursorTarget in _bxyp)then{wvkj=_bxyp select(count _bxyp)-1}else{if((player distance cursorTarget)<=_migg)then{wvkj=cursorTarget}else{wvkj=objNull}};{_shly=_x;_fdin=_foreachindex;if(!isNull wvkj&&{[wvkj]call(_x select 1)})then{[wvkj,_foreachindex,false,_shly]call _aoos}else{_xsip=objNull;if((_x select 3)>=0)then{{if([_x]call(_shly select 1)&&_x distance player<=(_shly select 3))exitwith{_xsip=_x};true}count(nearestObjects[getPosATL player,["All"],_migg]);if(!isNull _xsip)then{[_xsip,_foreachindex,true,_shly]call _aoos}};if(isNull _xsip&&count mcpm>_foreachindex&&{!isNil{mcpm select _foreachindex}})then{player removeAction(mcpm select _foreachindex);mcpm set[_foreachindex,nil];wfrm set[_foreachindex,""]}};true}forEach lvbk}else{{if(count mcpm>_foreachindex&&{!isNil{mcpm select _foreachindex}})then{player removeAction(mcpm select _foreachindex);mcpm set[_foreachindex,nil];wfrm set[_foreachindex,""]}}forEach lvbk};sleep 0.3}};