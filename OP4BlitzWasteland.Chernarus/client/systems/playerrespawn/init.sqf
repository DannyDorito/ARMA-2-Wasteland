#include "functions\vbvk.sqf"['airBeacon','Air Beacon','airBeaconModel'call trss,[],{_iccs=getPlayerUID player;_bkyd=true;if({(_x select 1)==_iccs}count oyjw>=2)then{if('autoRemoveBeacon'call trss)then{{if((_x select 1)==_iccs)exitwith{[_x select 2]call ngug}}count oyjw}else{hint'You may only have two beacons deployed at a time.';_bkyd=false}};if(_bkyd)then{[15,"Deploying Air Beacon %1",[],{['air',getPosATL player,getDir player]call lecq;player setPos([getPosATL player,1,getDir player]call bis_fnc_relpos);['airBeacon']call vyes}]call rpvv}}]call uvsm;['groundBeacon','Ground Beacon','groundBeaconModel'call trss,[],{_iccs=getPlayerUID player;_bkyd=true;if({(_x select 1)==_iccs}count oyjw>=2)then{if('autoRemoveBeacon'call trss)then{{if((_x select 1)==_iccs)exitwith{[_x select 2]call ngug}}count oyjw}else{hint'You may only have two beacons deployed at a time.';_bkyd=false}};if(_bkyd)then{[15,"Deploying Ground Beacon %1",[],{['ground',getPosATL player,getDir player]call lecq;['groundBeacon']call vyes}]call rpvv}}]call uvsm;if(!hasInterface)exitwith{};dkcn=[[],"EMPTY"]call dssf;lzco=[[],[[],"EMPTY"]]call dssf;xfty=[[],[objNull,0,0]]call dssf;blol=0;kwdm=[];orgy=[[],[]]call dssf;oyjw=missionNamespace getVariable['oyjw',[]];qksg=false;[]spawn{waitUntil{!isNull player&&player==player};waitUntil{!isNil"BIS_fnc_init"};waitUntil{!(isNull(findDisplay 46))};sltp=getPosATL mapcenter;["radarUpdate",{private["_tgty","_jhmf","_aywe","_qplr"];_jhmf=_this select 0;_tgty=_this select 1 select 0;_qplr=_this select 1 select 1;_aywe=[_jhmf]call cdex;[dkcn,_tgty,[_jhmf,_aywe,_qplr]]call ykms;[orgy,'towns',[dkcn]call oxzz]call ykms;['respawnDialogUpdate']call jiya}]call xzgb;["beaconUpdate",{private["_jhmf","_zysn","_aywe"];_jhmf=_this select 0;_zysn=_this select 1 select 0;_aywe=[_jhmf]call cdex;[lzco,_zysn,[_jhmf,_aywe]]call ykms;[orgy,'beacons',[lzco]call nwqn]call ykms;['respawnDialogUpdate']call jiya}]call xzgb;["airUpdate",{_koqd=_this select 0;_mcmv=_this select 1;_cpbe=_this select 2;_zqgk=_this select 3;[xfty,_koqd,[_mcmv,_cpbe,_zqgk]]call ykms;[orgy,'airVehicles',[xfty]call mrid]call ykms;['respawnDialogUpdate']call jiya}]call xzgb;['respawnDialogUpdate',{if!(isNull(findDisplay respawnDialogIDD))then{_hwew=[];{_hwew=_hwew+_x}count(orgy select 2);[_hwew]call fhyh}}]call xzgb;"oyjw"addPublicVariableEventHandler{[orgy,'beacons',[lzco]call nwqn]call ykms;['respawnDialogUpdate']call jiya};player addEventHandler["killed",{sltp=getPosATL(_this select 0)}];player addEventHandler["respawn",{qksg=true;(_this select 0)allowDamage false;(_this select 0)enableSimulation false;createDialog"BLrespawnDialog"}];['groupChange',{[dkcn,{_value set[1,[_value select 0]call cdex]}]call kqcm;[orgy,'towns',[dkcn]call oxzz]call ykms;[orgy,'airVehicles',[xfty]call mrid]call ykms;[orgy,'beacons',[lzco]call nwqn]call ykms;['respawnDialogUpdate']call jiya}]call xzgb;[orgy,'beacons',[lzco]call nwqn]call ykms;['respawnDialogUpdate']call jiya;while{true}do{{if(!((_x select 2)getVariable['mute',false]))then{(_x select 2)say3D"beacon"}}count oyjw;sleep 3}};_wggo=compile format['((_this select 0) isKindOf "%1" || (_this select 0) isKindOf "%2") && !isNil {(_this select 0) getVariable "beaconType"}','airBeaconModel'call trss,'groundBeaconModel'call trss];private["_loxf"];_loxf="
	private ['_owner', '_text'];
	_owner = objNull;
	_text = '<t color=''%1''>%2 beacon';
	
	{
		if ( (_x select 2) == (_this select 0) ) exitwith {
			_owner = [_x select 1] call aerj;
		};
	} count oyjw;
	
	if ( [[_owner]] call cdex == 'FRIENDLY' ) then {
		_text = _text + ' (Friendly)';
	}
	else {
		if ( !isNull _owner ) then {
			_text = _text + ' (Enemy)';
		};
	};

	_text + '</t>';
";[compile format[_loxf,'#3cff00','Repack'],_wggo,{[60,"Repacking Beacon %1",_this,{(format['%1Beacon',(_this select 0)getVariable'beaconType'])call vzts;[_this select 0]call ngug}]call rpvv},1]call ewwn;[compile format[_loxf,'#ff0000','Destroy'],_wggo,{[30,"Destroying Beacon %1",_this,{[_this select 0]call ngug}]call rpvv},1]call ewwn;[{if((_this select 0)getVariable['mute',false])then{"<t color='#FF0000'>Unmute</t>"}else{"<t color='#00a3e1'>Mute</t>"}},_wggo,{(_this select 0)setVariable['mute',!((_this select 0)getVariable['mute',false])]},1]call ewwn;