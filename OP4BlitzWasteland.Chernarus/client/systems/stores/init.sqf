if(!hasInterface)exitwith{};eoqi=missionNamespace getVariable['eoqi',[]];[[]call jdka,{private["_weky","_lced","_xvxm","_jqtb"];_jqtb=[_value,3,"ColorBlack",[""]]call clht;{_xvxm=[_x,2,0,[0]]call clht;if(_xvxm>0)then{_weky=format['%1%2',_key,_foreachindex];createMarkerLocal[_weky,_x select 0];_weky setMarkerShapeLocal"ELLIPSE";_weky setMarkerColorLocal"ColorBlack";_weky setMarkerSizeLocal[100,100];_weky setMarkerAlphaLocal 0.5};_lced=format['%1%2Label',_key,_foreachindex];createMarkerLocal[_lced,_x select 0];_lced setMarkerShapeLocal"ICON";_lced setMarkerTypeLocal"Dot";_lced setMarkerColorLocal _jqtb;_lced setMarkerAlphaLocal 0.5;_lced setMarkerTextLocal(_value select 0)}forEach(_value select 2)}]call kqcm;qlmh=[[],"EMPTY"]call dssf;['storeRadar',{_bmwx=_this select 0;_weky=_this select 1 select 0;_wlag=[_bmwx]call cdex;_weky setMarkerColorLocal(_wlag call zesz);if(player in _bmwx)then{_plmz=[qlmh,_weky]call rewl;if(_plmz in["EMPTY","FRIENDLY"]&&_wlag in["ENEMY","MIXED"])then{hint"WARNING! An enemy player has entered the area"}};[qlmh,_weky,_wlag]call ykms}]call xzgb;[]spawn{waitUntil{!isNull player&&player==player};waitUntil{!(isNull(findDisplay 46))};waitUntil{count eoqi>0};private["_tjqe","_teuq"];_tjqe=[]call jdka;{_teuq=[_tjqe,_x select 0]call rewl;(_x select 1)addAction[format['<t color="#ff0000"><img image="client\systems\stores\icons\store.paa" /> %1</t>',_teuq select 0],"kwmm.sqf",_teuq select 1,1.5,true,true];(_x select 1)allowDamage false;(_x select 1)enableSimulation false;true}count eoqi};