private["_ugom","_nsnr","_rpqj","_qwui","_fiuv","_ginx","_mlhi","_nbtd"];_ugom=[_this,0,[[],[[],"EMPTY"]]call dssf,[[]],[4]]call clht;_nsnr=[];_ginx={private['_type','_loc','_dir'];player setPosATL([(_this select 2),3,random 359]call bis_fnc_relpos);closeDialog 0};{_fiuv=(_x select 1)call aerj;_rpqj=([_ugom,(_x select 0)]call rewl)select 1;_qwui=[[_fiuv,player]]call cdex;if(_qwui=="FRIENDLY")then{_mlhi=[_x select 2]call kiuw;_nbtd=format['Base beacon %1 of %2',[(_mlhi select 1),(_x select 2)]call knhx,_mlhi select 0];_nsnr set[count _nsnr,[name _fiuv,_nbtd,_x select 2,_rpqj in["MIXED","ENEMY"],_x,_ginx]]}}forEach jlos;_nsnr