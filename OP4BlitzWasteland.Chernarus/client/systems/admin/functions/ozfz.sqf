#include "vbvk.sqf"_sqap=[_this,0,true,[true]]call clht;if(_sqap)then{bladmin_hud=[]spawn{12 cutRsc["AdminHUDRsc","PLAIN"];_ywnw='airBeaconModel'call trss;_rnkw='groundBeaconModel'call trss;waitUntil{_ehoz=0;if(srld)then{_ihwm=getPosATL player;if(!isNil"bis_fnc_camera_cam")then{_ihwm=getPosATL bis_fnc_camera_cam}else{if(!isNil"cxjr")then{_ihwm=getPosATL wxjh}};{_zldn=visiblePositionASL _x;_zldn set[2,((_x modelToWorld(_x selectionPosition'pelvis'))select 2)];_jxsa=worldToScreen _zldn;if(count _jxsa>0)then{_qvfz=format['<t color="%1">%2 (%3m)</t>',(side _x)call{if(_this==west)exitwith{"#0000FF"};if(_this==east)exitwith{"#FF0000"};if(_this==resistance)exitwith{"#00FF00"}},name _x,round(_ihwm distance _x)];[_jxsa,_qvfz,_ehoz]call rfab;_ehoz=_ehoz+1};true}count([_ihwm,1000]call dckn);{_zldn=visiblePositionASL _x;_jxsa=worldToScreen _zldn;if(count _jxsa>0)then{_delp=_x getVariable'objectOwner';_dcex=_delp call aerj;_ajie=side _dcex;if(!isNull _dcex)then{_dcex=name _dcex};_qvfz=format['<t color="%1">%2''s beacon (%3m)</t>',_ajie call{if(_this==west)exitwith{"#0000FF"};if(_this==east)exitwith{"#FF0000"};if(_this==resistance)exitwith{"#00FF00"}},_dcex,round(_ihwm distance _x)];[_jxsa,_qvfz,_ehoz]call rfab;_ehoz=_ehoz+1};true}count(_ihwm nearEntities[[_ywnw,_rnkw],1000])};for"_vvvs"from _ehoz to 69 do{((uiNamespace getVariable'AdminHUD')displayCtrl(adminHUDplayerIconsIDC+_vvvs))ctrlShow false};false}}}else{terminate bladmin_hud;12 cutText["","PLAIN"]};