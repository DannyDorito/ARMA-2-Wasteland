#include "functions\vbvk.sqf"_yutf=(uiNamespace getVariable'gearDialog')displayCtrl cartListIDC;_mecy=_yutf lnbData[lnbCurSelRow _yutf,0];_mecy=call compile _mecy;{if([_x,_mecy]call bqxr)exitwith{psgj set[_foreachindex,"REMOVE"]};nil}forEach psgj;psgj=psgj -["REMOVE"];[]call slcw;[]call edfv;