#include "ckbl.sqf"private["_aand","_zloz","_mnsc","_dkoj","_myrf",'_textCtrl'];_aand=[_this,0,"",[""]]call jdly;_zloz=[_this,1,{},[{}]]call jdly;_mnsc=[_this,2,[0,0,0,0],[[]]]call jdly;_dkoj=(uiNamespace getVariable'adminPanel')displayCtrl buttonOneIDC;_dkoj ctrlShow true;_dkoj ctrlSetText _aand;_dkoj ctrlRemoveAllEventHandlers'MouseButtonClick';_dkoj ctrlAddEventHandler['MouseButtonClick','_this call '+str _zloz];_myrf=(missionConfigFile>>"adminPanel">>"controls">>"paneThree");if(_mnsc select 0==0)then{_mnsc set[0,getNumber(_myrf>>"x")+safezoneW*0.01]};if(_mnsc select 1==0)then{if(ctrlVisible adminInfoTextIDC)then{_mnsc set[1,getNumber(_myrf>>"y")+(safezoneH*0.1)+(safezoneH*0.02)]}else{_mnsc set[1,getNumber(_myrf>>"y")+safezoneH*0.01]}};if(_mnsc select 2==0)then{_mnsc set[2,getNumber(_myrf>>"w")- safezoneW*0.02]};if(_mnsc select 3==0)then{_mnsc set[3,safezoneH*0.055]};_dkoj ctrlSetPosition _mnsc;_dkoj ctrlCommit 0;_dkoj