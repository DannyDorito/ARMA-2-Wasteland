private["_ockx","_svcu","_eavy","_zmzp","_kvvv","_mvvf","_hmao","_oblr"];_mvvf=_this select 0;_hmao=_this select 1;_btsp=[_hmao,0,[0]]call clht;_ockx=[_hmao,1,[]]call clht;_svcu=[_hmao,2,"",[""]]call clht;_eavy=[_hmao,3,true,[objnull,true,0,[],sideUnknown,grpnull,""]]call clht;_zmzp=[_hmao,4,false,[false]]call clht;_kvvv=[_hmao,5,false,[false]]call clht;if!(_svcu in('allowedFunctions'call trss))exitwith{};if(typename _eavy==typename[])then{{[_mvvf,[_btsp,_ockx,_svcu,_x,_zmzp,_kvvv]]call dfqb}foreach _eavy}else{if(ismultiplayer&&_btsp==0)then{private["_yhae","_torz"];_torz=owner(missionnamespace getvariable["bis_functions_mainscope",objnull]);switch(typename _eavy)do{case(typename""):{_yhae=owner(missionnamespace getvariable[_eavy,objnull])};case(typename objnull):{_yhae=owner _eavy};case(typename true):{_yhae=[_torz,-1]select _eavy};case(typename 0):{_yhae=_eavy};case(typename grpnull);case(typename sideUnknown):{_yhae=-1}};bis_fnc_mp_packet=[1,_ockx,_svcu,_eavy,_zmzp,_kvvv];if(_yhae<0)then{publicvariable"bis_fnc_mp_packet"}else{if(_yhae!=_torz)then{_yhae publicvariableclient"bis_fnc_mp_packet"}};if(_yhae==-1||_yhae==_torz)then{["bis_fnc_mp_packet",bis_fnc_mp_packet]spawn dfqb}}else{private["_wgis"];_wgis=switch(typename _eavy)do{case(typename grpnull):{player in units _eavy};case(typename sideUnknown):{(side player)==_eavy};default{true}};if(_wgis)then{_oblr=missionnamespace getvariable _svcu;if(!isnil"_oblr")then{if(_kvvv)then{_ockx call _oblr}else{_ockx spawn _oblr};true}else{false}}}};