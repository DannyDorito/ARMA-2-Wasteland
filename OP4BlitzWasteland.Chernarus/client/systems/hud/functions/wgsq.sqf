disableSerialization;
#include "vbvk.sqf"private["_usfs",'_obj',"_tqfv","_mdiv"];_usfs=_this select 0;_eubj=_this select 1;_tqfv=_this select 2;_mdiv=((uiNamespace getVariable'HUD')displayCtrl(HUDplayerIconsIDC+_tqfv));_mdiv ctrlSetStructuredText parseText _eubj;_mdiv ctrlSetPosition[_usfs select 0,_usfs select 1,safezoneW*0.5,safezoneH*0.5];_mdiv ctrlShow true;_mdiv ctrlCommit 0;nil