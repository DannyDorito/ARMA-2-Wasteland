private["_wtny","_iima","_xfar","_wxuk","_kvsm"];
#include "ckbl.sqf"_wtny=[_this,0,objNull,[objNull]]call jdly;_iima=[_this,1,objNull,[objNull]]call jdly;_xfar=(typeOf _wtny)call b_fnc_qe;_wxuk=false;if(count _xfar>0&&{_xfar select CONFIG_INDEX_WEIGHT>=0}&&!(_wtny getVariable["LOG_disabled",false]))then{if(!isNull _iima)then{_kvsm=(typeOf _iima)call b_fnc_qe;_wxuk=count _kvsm>0&&_kvsm select CONFIG_INDEX_TOWINGCAPACITY>=_xfar select CONFIG_INDEX_WEIGHT&&isNull(_iima getVariable['LOG_towedObject',objNull])&&isNull(_wtny getVariable['LOG_towedTo',objNull])&&!(_iima getVariable["LOG_disabled",false])}else{_wxuk=true}};if(_wxuk)then{_wxuk=['beforeTow',[_wtny,_iima]]call b_fnc_xp};_wxuk