#include "functions\ckbl.sqf"private["_mcjf",'_cat','_items'];_mcjf=uiNamespace getVariable'storeDialog';_lfoc=uiNamespace getVariable'storeCfg';_iton='';_jtvc=[];_glaw=(_this select 0)lbData lbCurSel(_this select 0);_bpfc=_mcjf displayCtrl addRemoveBtnIDC;_bpfc ctrlShow true;if((_this select 1)=='items')then{_iton='items';_bpfc ctrlSetText"Add to cart"}else{_iton='cart';_bpfc ctrlSetText"Remove from cart"};uiNamespace setVariable['storeLastPane',_iton];if(_iton=='items')then{_jtvc=((_this select 0)lbData lbCurSel(_this select 0))call kchk}else{_jtvc=((_this select 0)lnbData[lnbCurSelRow(_this select 0),0])call kchk};[_iton,_jtvc,(_mcjf displayCtrl selectedItemInfoIDC)]call(_lfoc select 2);