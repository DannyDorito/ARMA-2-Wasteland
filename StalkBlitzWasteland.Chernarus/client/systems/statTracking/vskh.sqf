#include "functions\ckbl.sqf"uiNamespace setVariable['scoreboard',_this select 0];[_this select 0,0]call zlgg;{if(_x select 1==playerSide&&_x select 2==name player)exitwith{[_this select 0,10,_foreachindex+1,_x]call eedi}}forEach([]call epuy);