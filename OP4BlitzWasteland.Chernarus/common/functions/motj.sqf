private["_exva","_xear","_vehicles","_animals","_ubsg","_botn"];_exva=_this select 0;_ubsg=_this select 1;_xear=_exva nearEntities[["CAManBase","Air","LandVehicle"],_ubsg];_botn=[];{{if(isPlayer _x)then{_botn set[count _botn,_x]}}count crew _x;nil}count _xear;_botn