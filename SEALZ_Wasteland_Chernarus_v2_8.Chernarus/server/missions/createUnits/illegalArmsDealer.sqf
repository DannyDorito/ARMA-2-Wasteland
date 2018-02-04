//	@file Version: 1.0
//	@file Name: Drug Lords
//	@file Author: =SEALZ= BillyBong
//	@file Created: 05/04/2013 21:58
//	@file Args:

if(!X_Server) exitWith {};

private ["_smallGrpS","_pos","_leader","_man2","_tank"];

_smallGrpS = _this select 0;
_pos = _this select 1;
_tank = _this select 2;

//Arms Dealer
_leader = _smallGrpS createunit ["GUE_Soldier_CO", [(_pos select 0) + 30, _pos select 1, 0], [], 0.5, "Form"];
_leader setskill 1;
_leader addEventHandler["killed", {[_this select 0, _this select 1, "armsDealer"] execVM "scripts\AIKilled.sqf"}];
[_leader] join _smallGrpS;

//assisstant
_man2 = _smallGrpS createunit ["GUE_Soldier_2", [(_pos select 0) - 30, _pos select 1, 0], [], 0.5, "Form"];
_man2 setskill 1;
_man2 addEventHandler["killed", {[_this select 0, _this select 1, "armsDealer"] execVM "scripts\AIKilled.sqf"}];
[_man2] join _smallGrpS;

_leader = leader _smallGrpS;
_marker = createMarker ["POSMarker", position _leader];

_leader action ["getInDriver", _tank];
_man2 action ["getInGunner", _tank];

sleep 1;
_leader setVehicleInit "nul=[_leader,'Arms Dealer (TWS Assault)($10k)'] execVM 'scripts\ArmsDealerTracker.sqf';";
sleep 1;
_man2 setVehicleInit "nul=[_man2,'Arms Dealer'] execVM 'scripts\ArmsDealerTracker.sqf';";
sleep 1;
_leader setVehicleInit "nul=[_leader,'POSMarker','delete:',3] execVM 'scripts\upsmon.sqf'";

//_leader setVehicleInit "nul = [_leader, 10, 'POSMarker', 'POSMarker', 2000, 'AWARE', 100, 'LIMITED', 'FILE',0,75] execVM 'scripts\USPS.sqf';";



processInitCommands;