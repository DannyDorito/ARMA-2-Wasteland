jlos=missionNamespace getVariable['jlos',[]];uqyd=[];rbqe=[[],[[],"EMPTY"]]call dssf;gyjy=[[],[[],"EMPTY"]]call dssf;['baseFlag','Base flag',"Radio",[],{[15,"Deploying Base Flag %1",[],{mlhb=[player,getPosATL player];publicVariableServer"mlhb";'baseFlag'call vyes}]call rpvv}]call uvsm;["<t color='#3cff00'><img image='client\systems\baseFlag\icons\repack.paa' /> Repack Base Flag</t>",{(_this select 0)isKindOf"Land_Com_tower_ep1"&&{{(_x select 3)==(_this select 0)}count jlos>0}},{[60,'Repacking Base Flag %1',[_this select 0],{'baseFlag'call vzts;zbwu=[player,_this select 0];publicVariableServer"zbwu"}]call rpvv}]call ewwn;["<t color='#ff0000'><img image='client\systems\baseFlag\icons\destroy.paa' /> Destroy Base Flag</t>",{(_this select 0)isKindOf"Land_Com_tower_ep1"&&{{(_x select 3)==(_this select 0)}count jlos>0}},{[30,'Destroying Base Flag %1',[_this select 0],{zbwu=[player,_this select 0];publicVariableServer"zbwu"}]call rpvv}]call ewwn;if(!hasInterface)exitwith{};[]spawn{waitUntil{!isNull player&&player==player};waitUntil{!(isNull(findDisplay 46))};[]call juur;(findDisplay 12 displayCtrl 51)ctrlAddEventHandler["Draw","_this call fecp"];"jlos"addPublicVariableEventHandler{[]call juur;[orgy,'flags',[gyjy]call sroo]call ykms};['updateBaseFlags',{[]call juur;[orgy,'flags',[gyjy]call sroo]call ykms}]call xzgb;['groupChange',{[]call juur;[orgy,'flags',[gyjy]call sroo]call ykms}]call xzgb;['baseFlagRadar',{_hswl=_this select 0;_bhqf=_this select 1 select 0;_fvfr=[_hswl]call cdex;_pafh=(_this select 1 select 1)call aerj;if(([[_pafh]]call cdex)=="FRIENDLY")then{(format["baseFlag%1",_bhqf])setMarkerColorLocal(_fvfr call zesz);if(player in _hswl)then{_ltzc=([rbqe,_bhqf]call rewl)select 1;if(_ltzc in["EMPTY","FRIENDLY"]&&_fvfr in["ENEMY","MIXED"])then{hint"WARNING! An enemy player has entered the area"}}};[rbqe,_bhqf,[_hswl,_fvfr]]call ykms}]call xzgb;['baseFlagBlock',{_hswl=_this select 0;_bhqf=_this select 1 select 0;_fvfr=[_hswl]call cdex;[gyjy,_bhqf,[_hswl,_fvfr]]call ykms;[orgy,'flags',[gyjy]call sroo]call ykms;['respawnDialogUpdate']call jiya}]call xzgb;[orgy,'flags',[gyjy]call sroo]call ykms};[format['<t color="#3cff00"><img image="client\systems\baseFlag\icons\redeploy.paa" /> Redeploy ($%1)</t>','redeployCost'call trss],{(_this select 0)isKindOf"Land_Com_tower_ep1"&&{([]call apdk)>=('redeployCost'call trss)}},{createDialog'BLrespawnDialog';player setPosATL(markerPos'respawn_west');100 call wpoe},5]call ewwn;