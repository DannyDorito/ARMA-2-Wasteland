disableSerialization;private["_vxhf","_pfbo"];_vxhf=_this select 0;_pfbo=_this select 1;lbClear _vxhf;{_jyka=_vxhf lbAdd format["%1 [$%2]",_x call ekyd,_x call jdme];_vxhf lbSetPicture[_jyka,_x call eklm];_vxhf lbSetData[_jyka,str[_x select 0,_x select 1]];nil}count _pfbo;