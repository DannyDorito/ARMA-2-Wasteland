#include "script_macros_common.hpp"PARAMS_2(_hyla,_uujy);DEFAULT_PARAM(2,_axro,0);private["_hneq","_yphi","_yfkc","_ayfh","_gwxz","_htvi"];if(typeName _hyla=="STRING")then{_hyla=toArray _hyla};if(typeName _uujy=="STRING")then{_uujy=toArray _uujy};_hneq=count _hyla;_yphi=count _uujy;_yfkc=-1;if((_hneq - _axro)<_yphi)exitWith{_yfkc};_ayfh=0;_gwxz=false;for"_dfgq"from _axro to(_hneq - 1)do{if(_hyla select _dfgq==_uujy select _ayfh)then{if(_yphi==1)exitWith{_yfkc=_dfgq;_gwxz=true};if(_hneq - _dfgq<_yphi)exitWith{_gwxz=true};INC(_ayfh);_htvi=false;for"_dvtv"from(_dfgq+1)to(_dfgq+_yphi - 1)do{if(_hyla select _dvtv!=_uujy select _ayfh)exitWith{_htvi=true};INC(_ayfh)};if(_htvi)then{_ayfh=0}else{_yfkc=_dfgq;_gwxz=true}};if(_gwxz)exitWith{}};_yfkc