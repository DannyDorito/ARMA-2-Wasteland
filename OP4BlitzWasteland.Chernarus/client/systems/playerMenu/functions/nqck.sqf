#include "vbvk.sqf"disableSerialization;_tzhw=[_this,0,(findDisplay playerMenuDialogIDD),[displayNull]]call clht;_ioua=_tzhw displayCtrl allPlayersIDC;_qyoq=_tzhw displayCtrl groupPlayersIDC;lbClear _ioua;lbClear _qyoq;_xxit=_tzhw displayCtrl groupLeaveIDC;_xxit ctrlShow false;_ijbk=[allUnits,[],{_x call{if((name _x)in rnif)exitwith{2};if((name _x)in wplz)exitwith{1};0}},"DESCEND"]call ohla;{if(!(_x in units group player)&&(side _x==side player||side _x==playerSide))then{_xtau=_ioua lbAdd(name _x);if((name _x)in wplz)then{_ioua lbSetPicture[_xtau,"client\systems\playerMenu\icons\inviteSent.paa"]};if((name _x)in rnif)then{_ioua lbSetPicture[_xtau,"client\systems\playerMenu\icons\inviteReceived.paa"]}}}forEach _ijbk;if(count units group player>1)then{_xxit ctrlShow true;{_qyoq lbAdd(name _x)}forEach units group player};if(rpob=="")then{[[],_tzhw]call qzic}else{if(rpob=="allPlayers")then{lbSetCurSel[allPlayersIDC,lbCurSel allPlayersIDC]}else{lbSetCurSel[groupPlayersIDC,lbCurSel groupPlayersIDC]}};