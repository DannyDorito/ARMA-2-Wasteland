#include "script_macros_common.hpp"ddnm="Logic"createVehicleLocal[0,0];bpdt="Logic"createVehicleLocal[0,0];if(isServer||alive player)then{"raxi"addPublicVariableEventHandler{(_this select 1)call jiya};"cvad"addPublicVariableEventHandler{(_this select 1)call cehr}}else{[]spawn{waitUntil{alive player};"raxi"addPublicVariableEventHandler{(_this select 1)call jiya};"cvad"addPublicVariableEventHandler{(_this select 1)call cehr}}};