#include "functions\vbvk.sqf"disableSerialization;_jnfh=_this select 0;_apij=[]call xzhr;uiNamespace setVariable['gearDialog',_jnfh];(_jnfh displayCtrl buyGunIDC)ctrlShow false;(_jnfh displayCtrl buyAmmoIDC)ctrlShow false;(_jnfh displayCtrl gearPurchaseIDC)ctrlEnable false;psgj=[];[]call slcw;[(_jnfh displayCtrl itemsListIDC),[_apij,'pistols']call rewl]call ujhm;