waituntil{!isnull(finddisplay 46)};(findDisplay 46)displayAddEventHandler["KeyDown","_this select 1 call xumd;false;"];xumd={_suwp=150;_olbt=vehicle player;if(_olbt==player||_olbt isKindOf"Air"||_olbt isKindOf"Tank"||_olbt isKindOf"MMT_USMC"||_olbt isKindOf"MMT_Civ"||_olbt isKindOf"Old_moto_TK_Civ_EP1"||_olbt isKindOf"Old_bike_TK_INS_EP1"||_olbt isKindOf"Old_bike_TK_CIV_EP1")exitwith{};_dxip=_olbt getvariable"nitro";if(isEngineOn _olbt)then{switch(_this)do{case 42:{if(isEngineOn _olbt&&!isNil"_dxip")then{if((speed _olbt<_suwp)&&driver _olbt==player)then{_iymn=velocity _olbt;_ivfo=getDir _olbt;_olbt setvelocity[(_iymn select 0)+.2*(sin _ivfo),(_iymn select 1)+.2*(cos _ivfo),(_iymn select 2)-.1]}}else{_olbt setvariable["nitro",1,true]}}}}};