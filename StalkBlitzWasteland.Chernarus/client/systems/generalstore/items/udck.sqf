['fuelEmpty','Fuel Can (Empty)','Fuel_can',[],{hint"You cannot use an empty fuel can. Go find a fuel pump."}]call xwjs;['Refuel Fuel Can',{'fuelEmpty'in(player getVariable['uqud',[]])&&(_this select 0)isKindOf"Land_A_FuelStation_Feed"},{['fuelFull']call xpip;['fuelEmpty']call tfyi}]call hzak;