private["_urkr","_mrnq","_rvbf","_eqqf","_iqhr"];_urkr=_this select 0;_mrnq=_this select 1;_rvbf=_this select 2;_urkr setPosATL _mrnq;_eqqf=velocity _urkr;_iqhr=1;_urkr setVelocity[(_eqqf select 0)+(sin _rvbf*_iqhr),(_eqqf select 1)+(cos _rvbf*_iqhr),(_eqqf select 2)];[_urkr,_mrnq select 2]spawn bis_fnc_halo;if(isPlayer _urkr&&hasInterface)then{["HALO jump activated. Open your parachute before you hit the ground!<br />Press E to detach chute.",5]call dbmz;[]spawn{while{((getposATL player)select 2)>1}do{hintsilent parseText format["<t align='center' color='#00aa00' font='Zeppelin33' shadow='1' shadowColor='#000000' size='2'>Alt %1m</t>",round(getPosATL player select 2)]};hint''}};