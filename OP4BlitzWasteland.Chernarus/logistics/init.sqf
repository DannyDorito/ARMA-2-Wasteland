call compile preprocessFileLineNumbers"logistics\mwmy.sqf";fasj=objNull;rzel=-1;jbno=objNull;nyea=objNull;ukad=objNull;kahu=missionNamespace getVariable['kahu',[]];if(!hasInterface)exitwith{};[]spawn{waitUntil{!isNull player&&player==player};waitUntil{!isNil"BIS_fnc_init"};waitUntil{!(isNull(findDisplay 46))};jkkk=("maxDistanceFromPlayer"call u_fnc_db)select 1;mtzh=("minDistanceFromPlayer"call u_fnc_db)select 1;vgsz=("maxOffsetHeight"call u_fnc_db)select 1;qrmq=("minOffsetHeight"call u_fnc_db)select 1;vsnn=("maxCenterFromPlayer"call u_fnc_db)select 1;pcqb=("minCenterFromPlayer"call u_fnc_db)select 1;[]call u_fnc_tb;"ukad"addPublicVariableEventHandler{private["_xhow","_afwm"];_xhow=[_this select 1,0,objNull,[objNull]]call clht;_afwm=[_this select 1,1,[0,0,0],[[]],[3]]call clht;_xhow setVelocity _afwm};player call u_fnc_so;player addEventHandler['respawn',{[]call u_fnc_tb;_izty=+usvx;usvx=[];arxt=[];{_x call u_fnc_bh;nil}count _izty}];player addEventHandler['killed',{if(!isNull fasj)then{[]call u_fnc_ot}}];[]spawn{moux=0;waitUntil{if(!isNull fasj)then{_xvje=(getPosASL player)select 2;_gilp=abs((round _xvje)- _xvje);if(_gilp!=moux)then{moux=_gilp;[]call u_fnc_yq}};false}};[]spawn{_xhow=vehicle player;while{true}do{waitUntil{_xhow!=vehicle player};{_xhow removeAction _x}count(_xhow getVariable['vehicleActionIds',[]]);_xhow=vehicle player;if!(_xhow isKindOf"Man")then{_xhow=vehicle player;_xbtx=[];{_xbtx set[_foreachindex,_xhow addAction[_x select 0,"logistics\functions\xzce.sqf",_foreachindex,_x select 3,_x select 4,_x select 5,_x select 6,_x select 7]]}forEach usvx;_xhow setVariable['vehicleActionIds',_xbtx]};waitUntil{_xhow!=vehicle player}}};_nkvi=[];while{true}do{_lyth=cursorTarget;_nkvi=[];zqfl=(vehicle player)!=player&&driver vehicle player==player;_xhow=vehicle player;if(_xhow==player)then{if([_lyth,player]call u_fnc_hn<5&&{_lyth in(5 call u_fnc_cv)})then{if(_lyth call u_fnc_my)then{wmhw=_lyth;_nkvi set[count _nkvi,"wmhw"]};if(((typeOf _lyth)call u_fnc_np)>0&&!(_lyth getVariable['LOG_disabled',false]))then{enun=_lyth;_nkvi set[count _nkvi,"enun"];_xugi=getText(configFile>>"CfgVehicles">>typeOf _lyth>>"displayName");['show_contents',format["<t color='#c7c500'><img image='logistics\icons\unload.paa' /> Show %1 Contents</t>",_xugi]]call u_fnc_cu;if(!isNull fasj||!isNull tquk)then{_cixh=fasj;if(isNull _cixh)then{_cixh=tquk};_trxc=getText(configFile>>"CfgVehicles">>typeOf _cixh>>"displayName");_ssny=format['Load %1 into %2',_trxc,_xugi];if!([_lyth,_cixh]call u_fnc_xa)then{_ssny=format["<t color='#FF0000'><img image='logistics\icons\load.paa' /> %1</t>",_ssny]}else{_ssny=format["<t color='#c7c500'><img image='logistics\icons\load.paa' /> %1</t>",_ssny]};['load_object',_ssny]call u_fnc_cu}}}}else{_fkde=(_xhow getVariable['LOG_towedObject',objNull]);if(zqfl)then{if(isNull _fkde)then{_lmqj=(typeOf _xhow)call u_fnc_db;if(count _lmqj>0&&!(_xhow getVariable['LOG_disabled',false]))then{_ssny="";if(_xhow isKindOf"Air")then{_swbh=_xhow modelToWorld[0,0,0];_jofc=[_swbh select 0,_swbh select 1,(_swbh select 2)-10];_onrp=(lineIntersectsWith[ATLtoASL _swbh,ATLtoASL _jofc,objNull,objNull,true])-[_xhow]- allUnits;if(count _onrp>0)then{_onrp=_onrp select(count _onrp -1)}else{_onrp=objNull;_tvjn=+_swbh;_tvjn set[2,(_tvjn select 2)-(([_xhow]call u_fnc_ac)select 2)/2];{if!(isPlayer _x||_x==_xhow)then{if(_x call u_fnc_jf)exitwith{_onrp=_x}};nil}count(nearestObjects[_tvjn,["All"],5])};if(_onrp call u_fnc_jf)then{afqh=_onrp;_nkvi set[count _nkvi,"afqh"];_ssny=format['Lift %1',getText(configFile>>"CfgVehicles">>typeOf afqh>>"displayName")]}}else{if(_xhow isKindOf"LandVehicle")then{_fxnq=_xhow call u_fnc_ac;_swbh=getPosATL _xhow;_swbh set[2,1];_quoz=[_swbh,2+((_fxnq select 1)/2),(getDir vehicle player)-180]call bis_fnc_relpos;_quwq=(lineIntersectsWith[ATLtoASL _swbh,ATLtoASL _quoz,objNull,objNull,true])-[_xhow]- allUnits;if(count _quwq>0)then{_quwq=_quwq select(count _quwq -1)}else{_quwq=objNull};if(_quwq call u_fnc_jf)then{afqh=_quwq;_nkvi set[count _nkvi,"afqh"];_ssny=format["Tow %1",getText(configFile>>"CfgVehicles">>typeOf afqh>>"displayName")]}}};if(_ssny!="")then{if([afqh,_xhow]call u_fnc_jf&&isNull(afqh getVariable['LOG_towedObject',objNull])&&isNull(_xhow getVariable['LOG_towedTo',objNull]))then{['tow',format["<t color='#c7c500'><img image='logistics\icons\towlift.paa' /> %1</t>",_ssny]]call u_fnc_cu}else{['tow',format["<t color='#FF0000'><img image='logistics\icons\towlift.paa' /> %1</t>",_ssny]]call u_fnc_cu}}}}else{if(!isNull(_xhow getVariable['LOG_towedTo',objNull]))then{[_xhow getVariable['LOG_towedTo',objNull],_xhow]call u_fnc_rx};if(!isNull _fkde)then{['release',format["<t color='#d45500'><img image='logistics\icons\towlift.paa' /> Release %1</t>",getText(configFile>>"CfgVehicles">>typeOf _fkde>>"displayName")]]call u_fnc_cu}}}};if!("wmhw"in _nkvi)then{wmhw=objNull};if!("ucvs"in _nkvi)then{ucvs=objNull};if!("afqh"in _nkvi)then{afqh=objNull};if!("enun"in _nkvi)then{enun=objNull};sleep 0.1}};