#include "vbvk.sqf"private["_hkwx","_ecjk","_dkzj","_kxfl"];_hkwx=[_this,0,objNull,[objNull]]call clht;_kxfl=typeOf _hkwx;_ecjk=_kxfl call u_fnc_db;_dkzj=count _ecjk>0&&{_ecjk select CONFIG_INDEX_SIZE>=0}&&(parseNumber netId _hkwx)>1&&!(_hkwx getVariable["LOG_disabled",false]);if(_dkzj)then{_dkzj=['beforeMove',[_hkwx]]call u_fnc_lk};_dkzj