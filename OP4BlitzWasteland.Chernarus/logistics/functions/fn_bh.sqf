usvx=missionNamespace getVariable['usvx',[]];arxt=missionNamespace getVariable['arxt',[]];private["_sgfq"];_sgfq=count usvx;private["_snjt","_rinc","_yjpw","_mqst","_stsk","_zlqi","_ilwq","_dgww","_sgfq",'_obj'];_snjt=[_this,0,"",[""]]call clht;_rinc=[_this,1,{},[{}]]call clht;_yjpw=[_this,2,[],[[]]]call clht;_mqst=[_this,3,1.5,[0]]call clht;_stsk=[_this,4,true,[true]]call clht;_zlqi=[_this,5,true,[true]]call clht;_ilwq=[_this,6,"",[""]]call clht;_dgww=[_this,7,"",[""]]call clht;_sgfq=[_this,8,_sgfq,[0]]call clht;usvx set[_sgfq,[_snjt,_rinc,_yjpw,_mqst,_stsk,_zlqi,_ilwq,_dgww]];arxt set[_sgfq,player addAction[_snjt,"logistics\functions\xzce.sqf",_sgfq,_mqst,_stsk,_zlqi,_ilwq,_dgww]];if!((vehicle player)isKindOf"Man")then{private["_hpim"];_hpim=(vehicle player)getVariable['vehicleActionIds',[]];_hpim set[_sgfq,(vehicle player)addAction[_snjt,"logistics\functions\xzce.sqf",_sgfq,_mqst,_stsk,_zlqi,_ilwq,_dgww]];(vehicle player)setVariable['vehicleActionIds',_hpim]};_sgfq