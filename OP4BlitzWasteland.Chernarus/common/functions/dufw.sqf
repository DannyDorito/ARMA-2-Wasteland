private["_fgtl","_xwhl"];_fgtl=[_this,0,objNull,[objNull]]call clht;_xwhl=[_this,1,true,[true]]call clht;if(isServer||local _fgtl)then{_fgtl enableSimulation _xwhl;if(count crew _fgtl==0)then{[_fgtl,_xwhl]spawn{_fgtl=_this select 0;_xwhl=_this select 1;sleep 10;waitUntil{[(velocity _fgtl),[0,0,0]]call bqxr||count crew _fgtl>0};if(count crew _fgtl==0)then{_fgtl enableSimulation!_xwhl}}};if(!isServer)then{[[_fgtl,_xwhl],"xgca",false]call nfhm}}else{[[_fgtl,_xwhl],"xgca",_fgtl]call nfhm;[[_fgtl,_xwhl],"xgca",false]call nfhm};