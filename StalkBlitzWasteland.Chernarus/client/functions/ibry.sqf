if(!isNil"lwyw"&&{lwyw})exitwith{hint'Please wait until the current action is finished'};lwyw=true;_this spawn{private["_grrv","_giyx","_jwiy","_wcbv","_ggrf","_jzom","_qasd","_iufp","_fibm","_rwsy"];_tdxz=["ainvpknlmstpsnonwrfldnon_ainvpknlmstpsnonwrfldnon_medic","ainvpknlmstpsnonwrfldnon_medic","ainvpknlmstpsnonwrfldnon_medic0s","amovpercmstpslowwrfldnon_amovpknlmstpslowwrfldnon","amovpercmstpsraswrfldnon_amovpknlmstpsraswrfldnon","amovppnemstpsraswrfldnon_amovpknlmstpsraswrfldnon"];_grrv=[_this,0,5,[1]]call jdly;_giyx=[_this,1,"",[""]]call jdly;_jwiy=[_this,2,[],[[]]]call jdly;_wcbv=[_this,3,{},[{}]]call jdly;_ggrf=[_this,4,{},[{}]]call jdly;_jzom=[_this,5,player,[player]]call jdly;rmrl=[]spawn{while{lwyw}do{"ainvpknlmstpslaywrfldnon_medic"call iycd;waitUntil{animationState player!="ainvpknlmstpslaywrfldnon_medic"}}};boma=(findDisplay 46)displayAddEventHandler['KeyDown',"
		if ( (_this select 1) in ((actionKeys 'MoveForward') + (actionKeys 'TurnLeft') + (actionKeys 'TurnRight') + (actionKeys 'MoveBack')) ) then {
			terminate rmrl;
		};
	"];_qasd=(_grrv/100);for"_iufp"from 1 to 100 do{[format[_giyx,(str _iufp)+'%']]call dbmz;sleep _qasd;if(scriptDone rmrl||!alive player||vehicle player!=player)exitwith{}};lwyw=false;(findDisplay 46)displayRemoveEventHandler['KeyDown',boma];if(!scriptDone rmrl&&alive player&&vehicle player==player)then{"amovpknlmstpsraswrfldnon"call iycd;[format[_giyx,'100%'],1]call dbmz;_jwiy call _wcbv}else{[]call{if(!alive player)exitwith{['',0]call dbmz};if(vehicle player!=player)exitwith{['Action interrupted',3]call dbmz;_jwiy call _ggrf;_fibm=assignedVehicleRole player;_rwsy=vehicle player;player setPosATL getPosATL player;[]call{if(_fibm select 0=="Driver")exitwith{player moveInDriver _rwsy};if(_fibm select 0=="Cargo")exitwith{player moveInCargo _rwsy};if(_fibm select 0=="Turret")exitwith{player moveInTurret[_rwsy,_fibm select 1]};if(_fibm select 0=="Commander")exitwith{player moveInCommander _rwsy}}};['Action interrupted',3]call dbmz;_jwiy call _ggrf;"amovpknlmstpsraswrfldnon"call iycd}}};