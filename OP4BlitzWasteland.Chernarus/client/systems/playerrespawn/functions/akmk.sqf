#include "vbvk.sqf"private["_ppgs","_ahro","_wfsa"];_ppgs=[_this,0,[]call dssf,[[]],[4]]call clht;_wfsa=[];_ahro={private["_xnwa"];_xnwa=[_this]call keav;player setPos(_xnwa select 1);closeDialog respawnDialogIDD};[_ppgs,{_qyab=[];{_qyab set[count _qyab,name _x]}count((_value select 0)call gnae);if(count _qyab>0)then{_hjhm=[_key,_value select 2 select 0,_value select 2 select 1];_wfsa set[count _wfsa,[_key,[_qyab,', ']call pvam,_value select 2 select 0,(_value select 1)!="FRIENDLY",_hjhm,_ahro]]}}]call kqcm;_wfsa