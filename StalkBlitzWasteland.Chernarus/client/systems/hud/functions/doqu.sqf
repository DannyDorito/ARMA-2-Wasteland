#include "ckbl.sqf"private["_eaan","_zeoz","_vnws","_cpcu"];_eaan=[];_zeoz=0;{if(_x!=player&&(_x in(units group player)||((playerSide in[east,west]&&playerSide==side _x)&&(player distance _x<2000||_x isKindOf"Air"))))then{if(vehicle _x!=_x)then{if!((vehicle _x)in _eaan)then{_eaan set[count _eaan,vehicle _x]}}else{_vnws=visiblePositionASL _x;_vnws set[2,((_x modelToWorld(_x selectionPosition'pelvis'))select 2)];_cpcu=worldToScreen _vnws;if(count _cpcu>0)then{_xvvm=mgwf;if(side _x==west&&_x in(units group player))then{_xvvm=format["<img image='%1' color='#00FFFF' size='1'/>",qbfa]};if(qptp)then{_xvvm=format['%1 %2 (%3m)',_xvvm,name _x,round(player distance _x)]};[_cpcu,_xvvm,_zeoz]call mrtq;_zeoz=_zeoz+1}}};true}count allUnits;{_vnws=visiblePositionASL _x;_vnws set[2,((_x modelToWorld(_x selectionPosition"p svetlo"))select 2)];_cpcu=worldToScreen _vnws;if(count _cpcu>0)then{_xvvm=mgwf;if(side _x==west&&{_x in(units group player)}count(crew _x)>0)then{_xvvm=format["<img image='%1' color='#00FFFF' size='1'/>",qbfa]};if(qptp)then{[_cpcu,format['%1 %2m',_xvvm,round(player distance _x)],_zeoz]call mrtq;_zeoz=_zeoz+1;{[worldToScreen(visiblePosition _x),name _x,_zeoz]call mrtq;_zeoz=_zeoz+1;nil}count crew _x}else{[_cpcu,_xvvm,_zeoz]call mrtq;_zeoz=_zeoz+1}};true}count _eaan;for"_uvly"from _zeoz to 69 do{((uiNamespace getVariable'HUD')displayCtrl(HUDplayerIconsIDC+_uvly))ctrlShow false};