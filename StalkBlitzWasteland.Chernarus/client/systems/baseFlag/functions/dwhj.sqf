private["_exek","_vxck","_kpkr","_agfq","_wtlt","_mxjm","_fmbv","_vcvn"];_exek=[_this,0,[[],[[],"EMPTY"]]call zfdd,[[]],[4]]call jdly;_vxck=[];_mxjm={private['_type','_loc','_dir'];player setPosATL([(_this select 2),3,random 359]call bis_fnc_relpos);closeDialog 0};{_wtlt=(_x select 1)call fqef;_kpkr=([_exek,(_x select 0)]call uvzk)select 1;_agfq=[[_wtlt,player]]call mlks;if(_agfq=="FRIENDLY")then{_fmbv=[_x select 2]call slfp;_vcvn=format['Base beacon %1 of %2',[(_fmbv select 1),(_x select 2)]call ttyi,_fmbv select 0];_vxck set[count _vxck,[name _wtlt,_vcvn,_x select 2,_kpkr in["MIXED","ENEMY"],_x,_mxjm]]}}forEach dcdj;_vxck