#include "ckbl.sqf"disableSerialization;private["_kbri","_moux","_swic","_mjin","_ouya"];_kbri=[_this,0,[],[[]]]call jdly;_moux=[_this,1,SHOW_ALL_TEXT,[""]]call jdly;_swic=uiNamespace getVariable'storeDialog';_mjin=[];_ouya=_swic displayCtrl storeItemsIDC;lbClear _ouya;if(_moux==SHOW_ALL_TEXT)then{{_qrth=_foreachindex;{_mjin set[count _mjin,[(_x select 0),str[_qrth,_foreachindex]]]}forEach(_x select 1)}forEach _kbri}else{{if(_moux==(_x select 0))exitwith{_qrth=_foreachindex;{_mjin set[count _mjin,[(_x select 0),str[_qrth,_foreachindex]]]}forEach(_x select 1)}}forEach _kbri};private["_tuok"];{_tuok=_ouya lbAdd(_x select 0);_ouya lbSetData[_tuok,_x select 1]}forEach _mjin;_mjin