#include "functions\vbvk.sqf"private["_dwwq","_kwch"];_kwch=round sliderPosition(_this select 1);_dwwq=switch(_this select 0)do{case'foot':{bl_footviewdistance=_kwch;footViewDistanceValueIDC};case'car':{bl_carviewdistance=_kwch;carViewDistanceValueIDC};case'air':{bl_airviewdistance=_kwch;airViewDistanceValueIDC}};[]call vhob;ctrlSetText[_dwwq,format['%1m',_kwch]];