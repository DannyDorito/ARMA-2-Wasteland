#include "script_macros_common.hpp"PARAMS_2(_qfug,_hzyz);private"_zlqn";_zlqn=bpdt getVariable _qfug;if(isNil"_zlqn")then{WARNING("Event type not registered: "+(str _qfug))}else{if(count _zlqn>_hzyz)then{if(isNil{_zlqn select _hzyz})then{WARNING("Handler for event "+(str _qfug)+" index "+(str _hzyz)+" already removed.")}else{_zlqn set[_hzyz,nil];TRACE_2("Removed",_qfug,_hzyz)}}else{WARNING("Handler for event "+(str _qfug)+" index "+(str _hzyz)+" never set.")}};nil;