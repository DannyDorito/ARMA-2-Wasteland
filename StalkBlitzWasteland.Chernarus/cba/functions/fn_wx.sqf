#include "script_macros_common.hpp"PARAMS_2(_fjbj,_hoxx);private["_fnsc","_ygrc"];_fnsc=puyn getVariable _fjbj;if(isNil"_fnsc")then{puyn setVariable[_fjbj,[_hoxx]];_ygrc=0}else{_ygrc=count _fnsc;PUSH(_fnsc,_hoxx)};TRACE_2("Added",_fjbj,_ygrc);_ygrc;