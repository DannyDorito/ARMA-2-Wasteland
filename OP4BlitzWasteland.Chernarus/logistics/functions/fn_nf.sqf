private["_hovl","_aakv","_dexa","_ytoe","_avyz","_aqhz","_lmxk","_idvi","_nxob","_zcxn"];_hovl=[_this,0,objNull,[objNull]]call clht;_aakv=[_this,1,objNull,[objNull]]call clht;_dexa=[_this,2,true,[true]]call clht;detach _aakv;_ytoe=_hovl call u_fnc_ac;_avyz=_aakv call u_fnc_ac;_aqhz=boundingBox _hovl;_lmxk=boundingCenter _hovl;_idvi=[_aakv,0]call u_fnc_bz;if(_dexa)then{_aakv attachTo[_hovl,[0,-((_ytoe select 1)/2+(_avyz select 1)/2),-((_ytoe select 2)/2 -(_avyz select 2)/2)]]}else{_nxob=_hovl modelToWorld[0,0,0];_zcxn=_aakv modelToWorld[0,0,0];_aakv attachTo[_hovl,[0,(_nxob select 1)-(_zcxn select 1),-((_ytoe select 2)/2+2)]]};if((_idvi select 0)>(_idvi select 1))then{_aakv setDir 90};_hovl setVariable['LOG_towedObject',_aakv,true];_aakv setVariable['LOG_towedTo',_hovl,true];['towedVehicle',[_hovl,_aakv]]call u_fnc_lk;_hovl