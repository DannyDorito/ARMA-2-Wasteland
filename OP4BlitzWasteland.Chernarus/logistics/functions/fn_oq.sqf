zqjj=missionNamespace getVariable['zqjj',false];if(typeName zqjj=="BOOL")then{zqjj=[]spawn{waitUntil{[fasj]call u_fnc_tv;isNull fasj};zqjj=false}}else{terminate zqjj;fasj setVectorUp[0,0,1];zqjj=false};