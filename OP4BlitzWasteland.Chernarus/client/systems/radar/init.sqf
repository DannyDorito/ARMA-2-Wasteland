if(!hasInterface)exitwith{};ubom=missionNamespace getVariable['ubom',[]];rjxs=[];[]spawn{while{true}do{{private["_tgiw","_zxgm","_omll","_gmwe","_wtcz"];if(typeName _x=="ARRAY")then{_tgiw=_x select 0;_zxgm=_x select 1;if(_tgiw distance player<1000)then{_omll=[_tgiw,_zxgm]call dckn;if(count rjxs<_foreachindex||{isNil{rjxs select _foreachindex}})then{rjxs set[_foreachindex,[]]};_gmwe=count(rjxs select _foreachindex);_wtcz=count _omll;if(_gmwe!=_wtcz)then{[_x select 2,[_omll,_x select 3]]call jiya};rjxs set[_foreachindex,_omll]}}}forEach ubom;sleep 1}};