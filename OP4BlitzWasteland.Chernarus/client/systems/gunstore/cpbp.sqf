#include "functions\vbvk.sqf"_nctf=call compile((_this select 0)lbData(_this select 1));_wnew=((uiNamespace getVariable'gearDialog')displayCtrl buyGunIDC);_eott=true;if((_this select 2)=='cart')then{_eott=false;_wnew ctrlSetText"Remove item from cart";_wnew buttonSetAction"[] call compile preprocessFileLineNumbers 'client\systems\gunStore\yfjh.sqf'"}else{_wnew ctrlSetText"Add gun to cart";_wnew buttonSetAction"[] call compile preprocessFileLineNumbers 'client\systems\gunStore\gxdi.sqf'"};if(_nctf select 0=='presets')exitwith{};_wnew ctrlShow true;((uiNamespace getVariable'gearDialog')displayCtrl buyAmmoIDC)ctrlShow _eott;((uiNamespace getVariable'gearDialog')displayCtrl deletePresetIDC)ctrlShow false;if((_this select 2)in['items','cart'])then{_nctf call aiws};if((_nctf select 0)=="CfgWeapons"&&(_this select 2)=='items')then{_dysz=_nctf select 1;_khmy=getArray(configFile>>"CfgWeapons">>_dysz>>"magazines");_glaj=[];{if(_x!='this')then{_khmy=_khmy+getArray(configFile>>"CfgWeapons">>_dysz>>_x>>"magazines")}}count(getArray(configFile>>"CfgWeapons">>_dysz>>"muzzles"));{if(["CfgMagazines",_x]call moge)then{_glaj set[count _glaj,["CfgMagazines",_x]]};true}count _khmy;_htwq=(uiNamespace getVariable'gearDialog')displayCtrl ammoListIDC;[_htwq,_glaj]call ujhm;_htwq lbSetCurSel 0};