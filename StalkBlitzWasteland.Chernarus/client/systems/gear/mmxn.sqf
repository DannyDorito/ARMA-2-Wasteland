#include "functions\ckbl.sqf"disableSerialization;_fmbe=(uiNamespace getVariable'gearDialog')displayCtrl itemsListIDC;_opzg=_fmbe lbText lbCurSel _fmbe;_nmdz=(_opzg call rktv)call izmu;bl_gearloadout=_nmdz;profileNamespace setVariable['bl_gearloadout',bl_gearloadout];saveProfileNamespace;zqht=+bl_gearloadout;[(uiNamespace getVariable'gearDialog')displayCtrl cartListIDC,zqht]call bzai;[]call svzl;