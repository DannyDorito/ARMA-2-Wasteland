private["_grim","_whve","_lgpi","_pdst"];_grim=_this;_whve=getPosATL _grim;_lgpi=_grim getVariable["name",""];_pdst=_grim getVariable"radius";if(_lgpi=="")then{_lgpi=text((nearestLocations[_whve,["NameCityCapital","nameCity","NameVillage"],500])select 0)};[_lgpi,[_whve select 0,_whve select 1],_pdst]