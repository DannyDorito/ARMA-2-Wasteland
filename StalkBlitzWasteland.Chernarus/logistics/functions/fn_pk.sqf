private["_jllu","_fyzl","_klbe","_dosi","_lkhu","_vccq","_znjy","_sxpb","_tiuk","_x"];_jllu=[_this,0,0,[0]]call jdly;_fyzl=[_this,1,0,[0]]call jdly;_klbe=[_this,2,0,[0]]call jdly;_dosi=[_this,3,0,[0]]call jdly;_lkhu=[_this,4,0,[0]]call jdly;_vccq=_klbe - _jllu;_znjy=_dosi - _fyzl;_sxpb=sqrt(_vccq*_vccq+_znjy*_znjy);_lkhu=_lkhu+(_znjy atan2 _vccq);_x=_jllu+_sxpb*cos _lkhu;_tiuk=_fyzl+_sxpb*sin _lkhu;[_x,_tiuk]