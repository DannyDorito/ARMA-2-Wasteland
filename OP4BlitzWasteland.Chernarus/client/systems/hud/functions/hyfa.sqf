#include "vbvk.sqf"private["_shnk","_wgqa","_mjzy","_nmdp"];_shnk=[];_wgqa=0;{if(_x!=player&&(_x in(units group player)||((playerSide in[east,west]&&playerSide==side _x)&&(player distance _x<25000||_x isKindOf"Air"||_x isKindOf"LandVehicle"))))then{if(vehicle _x!=_x)then{if!((vehicle _x)in _shnk)then{_shnk set[count _shnk,vehicle _x]}}else{_mjzy=visiblePositionASL _x;_mjzy set[2,((_x modelToWorld(_x selectionPosition'pelvis'))select 2)];_nmdp=worldToScreen _mjzy;if(count _nmdp>0)then{_zvid=oelj;if(side _x==west&&_x in(units group player))then{_zvid=format["<img image='%1' color='#00FFFF' size='1.5'/>",qtsy]};if(srld)then{_zvid=format['%1 %2 (%3m)',_zvid,name _x,round(player distance _x)]};[_nmdp,_zvid,_wgqa]call tjtt;_wgqa=_wgqa+1}}};true}count allUnits;{_mjzy=visiblePositionASL _x;_mjzy set[2,((_x modelToWorld(_x selectionPosition"p svetlo"))select 2)];_nmdp=worldToScreen _mjzy;if(count _nmdp>0)then{_zvid=oelj;if(side _x==west&&{_x in(units group player)}count(crew _x)>0)then{_zvid=format["<img image='%1' color='#00FFFF' size='1.5'/>",qtsy]};if(srld)then{[_nmdp,format['%1 %2m',_zvid,round(player distance _x)],_wgqa]call tjtt;_wgqa=_wgqa+1;{[worldToScreen(visiblePosition _x),name _x,_wgqa]call tjtt;_wgqa=_wgqa+1;nil}count crew _x}else{[_nmdp,_zvid,_wgqa]call tjtt;_wgqa=_wgqa+1}};true}count _shnk;for"_urqu"from _wgqa to 69 do{((uiNamespace getVariable'HUD')displayCtrl(HUDplayerIconsIDC+_urqu))ctrlShow false};