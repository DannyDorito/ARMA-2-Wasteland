private["_nagf","_ghao"];_nagf=[_this,0,objNull,[objNull]]call jdly;_ghao=[_this,1,true,[true]]call jdly;if(isServer||local _nagf)then{_nagf enableSimulation _ghao;if(count crew _nagf==0)then{[_nagf,_ghao]spawn{_nagf=_this select 0;_ghao=_this select 1;sleep 10;waitUntil{[(velocity _nagf),[0,0,0]]call pqnb||count crew _nagf>0};if(count crew _nagf==0)then{_nagf enableSimulation!_ghao}}};if(!isServer)then{[[_nagf,_ghao],"knwz",false]call acwq}}else{[[_nagf,_ghao],"knwz",_nagf]call acwq;[[_nagf,_ghao],"knwz",false]call acwq};