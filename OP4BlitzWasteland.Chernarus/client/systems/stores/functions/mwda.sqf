#include "vbvk.sqf"disableSerialization;private["_ptpp","_nllk","_wekn","_regx","_ltqb"];_ptpp=[_this,0,[],[[]]]call clht;_nllk=[_this,1,SHOW_ALL_TEXT,[""]]call clht;_wekn=uiNamespace getVariable'storeDialog';_regx=[];_ltqb=_wekn displayCtrl storeItemsIDC;lbClear _ltqb;if(_nllk==SHOW_ALL_TEXT)then{{_azzm=_foreachindex;{_regx set[count _regx,[(_x select 0),str[_azzm,_foreachindex]]]}forEach(_x select 1)}forEach _ptpp}else{{if(_nllk==(_x select 0))exitwith{_azzm=_foreachindex;{_regx set[count _regx,[(_x select 0),str[_azzm,_foreachindex]]]}forEach(_x select 1)}}forEach _ptpp};private["_pxol"];{_pxol=_ltqb lbAdd(_x select 0);_ltqb lbSetData[_pxol,_x select 1]}forEach _regx;_regx