#include "script_macros_common.hpp"PARAMS_2(_bqqv,_qndq);private"_yhmf";_yhmf=lxdz getVariable _bqqv;if(isNil"_yhmf")then{WARNING("Event type not registered: "+(str _bqqv))}else{if(count _yhmf>_qndq)then{if(isNil{_yhmf select _qndq})then{WARNING("Handler for event "+(str _bqqv)+" index "+(str _qndq)+" already removed.")}else{_yhmf set[_qndq,nil];TRACE_2("Removed",_bqqv,_qndq)}}else{WARNING("Handler for event "+(str _bqqv)+" index "+(str _qndq)+" never set.")}};nil;