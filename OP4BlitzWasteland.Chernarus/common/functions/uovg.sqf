private["_sdao","_wovn","_vmnm"];_sdao=_this select 0;_wovn=100000;_vmnm=[];{if(_sdao distance _x<_wovn)then{_vmnm=_x;_wovn=_sdao distance _x}}count entities"LocationLogicCity";(_vmnm call iybi)