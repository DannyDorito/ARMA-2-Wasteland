#include "functions\vbvk.sqf"private["_nvjt",'_cat','_items'];_nvjt=uiNamespace getVariable'storeDialog';_dmpz=uiNamespace getVariable'storeCfg';_totu='';_aslh=[];_qage=(_this select 0)lbData lbCurSel(_this select 0);_vlji=_nvjt displayCtrl addRemoveBtnIDC;_vlji ctrlShow true;if((_this select 1)=='items')then{_totu='items';_vlji ctrlSetText"Add to cart"}else{_totu='cart';_vlji ctrlSetText"Remove from cart"};uiNamespace setVariable['storeLastPane',_totu];if(_totu=='items')then{_aslh=((_this select 0)lbData lbCurSel(_this select 0))call ikki}else{_aslh=((_this select 0)lnbData[lnbCurSelRow(_this select 0),0])call ikki};[_totu,_aslh,(_nvjt displayCtrl selectedItemInfoIDC)]call(_dmpz select 2);