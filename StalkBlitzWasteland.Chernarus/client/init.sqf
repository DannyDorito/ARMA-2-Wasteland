execVM'addons\fpsFix\vtby.sqf';player allowDamage false;player enableSimulation false;[player]join grpNull;0 fadeRadio 0;player setVariable['side',playerSide,true];rlth=missionNamespace getVariable['rlth',-1];[]spawn{["Waiting for server to initialize",0.01]call hlrz;if(isNil"uxgb")then{[]spawn{waitUntil{!isNil"nays"};hjsn=missionNamespace getVariable['hjsn',0];while{isNil"uxgb"}do{["Waiting for server to initialize",hjsn/nays]call hlrz;sleep 0.5}}};waitUntil{!isNil"uxgb"};ubde=player;publicVariableServer"ubde";["Waiting for player data",0.1]call hlrz;sleep 10;whmj=player;publicVariableServer"whmj";waitUntil{!isNil"xwvy"};[0.5]call hlrz;if(count xwvy>0)then{if(count xwvy!=1)then{["Setting up player",0.6]call hlrz;[xwvy select 0]call mwgo;player switchMove(xwvy select 1);player setDir(xwvy select 2);player addRating 9999999999999999999999999;[{player setPosATL(xwvy select 3);player allowDamage true;player enableSimulation true;[]call rmks}]call hlrz}else{[{_this spawn{waitUntil{isNull(_this select 0)};khyw=true;createDialog'BLrespawnDialog'}}]call hlrz}}else{["No player data found",0.9]call hlrz;sleep 1;[{_this spawn{waitUntil{isNull(_this select 0)};khyw=true;createDialog'BLrespawnDialog'}}]call hlrz};execVM'addons\backpacks\ewbk.sqf'};[]spawn{iypz=player;publicVariableServer"iypz";waitUntil{!isNil"hpqj"};{_oqiu=_x;{[_oqiu,_x]call shqc;true}count(hpqj select 1 select _foreachindex)}forEach(hpqj select 0)};player setVariable['reen',('minMoney'call bdra),true];player addEventHandler["killed",{_nwng=_this select 0;_xlsc=_this select 1;if(_nwng==_xlsc)then{_rgag=[getPosATL _nwng]call vydg;if(!isNull _rgag)then{if(!isNull driver _rgag)then{_xlsc=driver _rgag}else{_xlsc=_rgag}}};['killed',[_nwng,_xlsc]]call yjhb;rwbh=[player,player,false,[]call unqp];publicVariableServer"rwbh";private["_qvjd"];_qvjd=([]call pqoo)*('tax'call bdra);player setVariable['reen',_qvjd,true];if(rlth>-1)then{[player]spawn(([call evrt,'tiers']call uvzk)select rlth)}else{private["_seug"];_seug=('minMoney'call bdra);if(_qvjd<_seug)then{player setVariable['reen',_seug,true]}}}];"svsu"addPublicVariableEventHandler{_this spawn{_zabd=_this select 1;waitUntil{isPlayer player&&alive player&&!dialog};[format['Your donation expires in %1 days',_zabd],5]call dbmz}};player addEventHandler["AnimDone",{[_this select 0,_this select 1]execVM"client\functions\iwta.sqf"}];player addEventHandler["respawn",{['respawn',_this]call yjhb;(_this select 0)setVariable['side',playerSide,true]}];