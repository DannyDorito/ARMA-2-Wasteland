closeDialog 0;private["_sqmx","_llcd","_gvpv","_nqqo"];_sqmx=player;{if(!isPlayer _x)exitwith{_sqmx=_x};nil}count(getPosATL player nearEntities["Man",50]);_llcd=[getPosATL _sqmx,2,getDir _sqmx+90]call bis_fnc_relpos;_fqls=nearestObjects[_llcd,["ReammoBox"],5];{if(_x isKindOf"WeaponHolder")then{_fqls set[_foreachindex,"REMOVE"]}}forEach _fqls;_fqls=_fqls -["REMOVE"];_nqqo={private["_gvpv","_ufhr","_ylrb","_qbef"];_gvpv=_this select 0;_ufhr=_this select 1;private["_ylrb","_qbef"];_ylrb=[[],0]call dssf;_qbef=[[],0]call dssf;{if((_x select 0)=="CfgWeapons")then{[_ylrb,_x select 1,([_ylrb,_x select 1]call rewl)+1]call ykms}else{[_qbef,_x select 1,([_qbef,_x select 1]call rewl)+1]call ykms};nil}count _ufhr;[_ylrb,{_gvpv addWeaponCargoGlobal[_key,_value]}]call kqcm;[_qbef,{_gvpv addMagazineCargoGlobal[_key,_value]}]call kqcm;(_ufhr call jmin)call wpoe};if(count _fqls==0)then{["USBasicWeaponsBox",_llcd,"basePart",[+psgj,_nqqo],{clearWeaponCargoGlobal(_this select 0);clearMagazineCargoGlobal(_this select 0);player reveal(_this select 0);[_this select 0,_this select 1 select 0]call(_this select 1 select 1)}]call hjvb}else{[_fqls select 0,psgj]call _nqqo};