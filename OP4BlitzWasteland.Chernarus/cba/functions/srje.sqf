#include "script_macros_common.hpp"DEFAULT_PARAM(1,_poir,nil);if(isNil"_poir")exitWith{WARNING("Locality check parameter in zfyd function is missing!")};private"_lmwg";_lmwg=if(typeName _poir==typeName[])then{_poir select 0}else{_poir};if(typeName _lmwg!="OBJECT")exitWith{WARNING("Locality check parameter is not an object!");nil};TRACE_1("",_lmwg);if(isNil"_lmwg"||isNull _lmwg)exitWith{WARNING("Locality check object is nil or null!");nil};if(!local _lmwg)exitWith{cvad=_this;publicVariable"cvad";nil};_this call cehr;nil;