private["_lddm","_nvcs","_digp","_efts","_ohfy"];
#include "vbvk.sqf"_lddm=[_this,0,objNull,[objNull]]call clht;_nvcs=[_this,1,objNull,[objNull]]call clht;_digp=(typeOf _lddm)call u_fnc_db;_efts=false;if(count _digp>0&&{_digp select CONFIG_INDEX_WEIGHT>=0}&&!(_lddm getVariable["LOG_disabled",false]))then{if(!isNull _nvcs)then{_ohfy=(typeOf _nvcs)call u_fnc_db;_efts=count _ohfy>0&&_ohfy select CONFIG_INDEX_TOWINGCAPACITY>=_digp select CONFIG_INDEX_WEIGHT&&isNull(_nvcs getVariable['LOG_towedObject',objNull])&&isNull(_lddm getVariable['LOG_towedTo',objNull])&&!(_nvcs getVariable["LOG_disabled",false])}else{_efts=true}};if(_efts)then{_efts=['beforeTow',[_lddm,_nvcs]]call u_fnc_lk};_efts