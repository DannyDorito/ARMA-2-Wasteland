private["_aakr","_qjob","_potu"];_aakr=[_this,0,objNull,[objNull]]call clht;_qjob=[_this,1,[],[[]]]call clht;_potu=[_this,2,{},[{}]]call clht;fgzl=[player,_aakr];publicVariableServer"fgzl";[_qjob,_potu]spawn{igkm=nil;waitUntil{!isNil"igkm"};[igkm,_this select 0]call(_this select 1)};