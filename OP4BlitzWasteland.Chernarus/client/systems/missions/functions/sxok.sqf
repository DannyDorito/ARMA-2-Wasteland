if(isdedicated)exitwith{false};private["_kjmk","_edly","_llnk","_ixam","_llnk","_uaro","_tdhf","_jkuz","_izhk","_iqgc","_cxdg","_pnqk","_kyqc"];_kjmk=[_this,0,"",[""]]call clht;_edly=_kjmk call ulyu;_llnk=[_this,1,true,[true]]call clht;_ixam=[_this,2,0,[0]]call clht;_llnk=_llnk&&(servertime - _ixam<1);_uaro=+(missionnamespace getvariable[_edly,[["",""],[],["","",""],objnull,"CREATED",-1]]);_tdhf=_uaro select 0;_jkuz=_uaro select 1;_izhk=_uaro select 2;_iqgc=_uaro select 3;_cxdg=_uaro select 4;_pnqk=_uaro select 5;_kyqc=[];{private["_wobn"];_wobn=_x;switch(typename _wobn)do{case(typename""):{private["_sjmz"];_sjmz=missionnamespace getvariable[_wobn,objnull];_kyqc set[count _kyqc,_sjmz]};case(typename grpnull):{_kyqc=_kyqc+units _wobn};case(typename sideunknown):{{if((_x call bis_fnc_objectside)==_wobn)then{_kyqc set[count _kyqc,_x]}}foreach(allunits+alldead)};case(typename[]):{_kyqc=_kyqc+_wobn};case(typename true):{if(_wobn)then{_kyqc=_kyqc+([]call bis_fnc_listplayers)}}}}foreach _jkuz;{private["_xtext"];_xtext=_x select 0;_izhk set[_foreachindex,format _x]}foreach _izhk;private["_iqqw"];_iqqw=if(count _iqgc==2)then{if(isnull(_iqgc select 0))then{{}}else{{_yknj setsimpletasktarget _iqgc}}}else{{_yknj setsimpletaskdestination _iqgc}};private["_bkci"];_bkci=if(_cxdg=="ASSIGNED")then{{_x setcurrenttask _yknj}}else{{_yknj settaskstate _cxdg}};private["_rcji"];_rcji=[];{if(!(_x in _rcji)&&!isnull _x)then{private["_yknj"];_yknj=_x getvariable _edly;_culg=if(isnil{_yknj})then{private["_inff","_dpla","_xtasks"];_inff=(_tdhf select 1)call ulyu;_dpla=_x getvariable[_inff,tasknull];_yknj=_x createSimpleTask[_kjmk,_dpla];_x setvariable[_edly,_yknj];_xtasks=_x getvariable["BL_fnc_setTaskLocal_tasks",[]];_xtasks set[count _xtasks,_kjmk];_x setvariable["BL_fnc_setTaskLocal_tasks",_xtasks];""}else{taskstate _yknj};if(_x==player&&_llnk)then{if(_cxdg=="CREATED"&&_culg!="")exitwith{};if(_cxdg!=_culg)then{[_cxdg,_izhk]call xndt}};_yknj setsimpletaskdescription _izhk;call _iqqw;call _bkci;if(_culg=="ASSIGNED"&&toupper _cxdg in["SUCCEEDED","FAILED","CANCELED"])then{private["_alfa","_xrcf"];_alfa=-1;_xrcf="";{private["_xvar","_xdata","_xstate"];_xvar=_x call ulyu;_xdata=+(missionnamespace getvariable[_xvar,[["",""],[],["","",""],objnull,"CREATED",-1]]);_xstate=_xdata select 4;if!((toupper _xstate)in["SUCCEEDED","FAILED","CANCELED"])then{private["_xprio"];_xprio=_xdata select 5;if(_xprio>_alfa)then{_xrcf=_x;_alfa=_xprio}}}foreach(_x getvariable["BL_fnc_setTaskLocal_tasks",[]]);if(_xrcf!="")then{[_xrcf,nil,nil,nil,true,nil,false]call tilx}};_rcji set[count _rcji,_x]}}foreach _kyqc;true