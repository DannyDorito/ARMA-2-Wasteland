#include "functions\ckbl.sqf"disableSerialization;uiNamespace setVariable['adminPanel',_this select 0];_gzmb=_this select 0;_gzmb call mpqd;_msmd=_gzmb displayCtrl paneOneIDC;{if((_x select 2))then{_bdil=_msmd lbAdd(_x select 0);_msmd lbSetData[_bdil,(_x select 1)]};nil}count bladmin_actions;{_bdil=_msmd lbAdd(name _x);_msmd lbSetData[_bdil,getPlayerUID _x];true}count playableUnits;