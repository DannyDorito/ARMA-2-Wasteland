#include "vbvk.sqf"private["_iqal","_nlum","_jres","_alxo"];_iqal=[_this,0,displayNull,[displayNull]]call clht;_nlum=[_this,1,0,[0]]call clht;_jres=[_this,2,0,[0]]call clht;_alxo=[_this,3,[],[[]],[7,0]]call clht;[_iqal,_nlum]call tubh;if(count _alxo==0)then{(_iqal displayCtrl(IDC(_nlum,0)))ctrlSetText"";(_iqal displayCtrl(IDC(_nlum,2)))ctrlSetText"";(_iqal displayCtrl(IDC(_nlum,3)))ctrlSetText"";(_iqal displayCtrl(IDC(_nlum,4)))ctrlSetText"";(_iqal displayCtrl(IDC(_nlum,5)))ctrlSetText"";(_iqal displayCtrl(IDC(_nlum,6)))ctrlSetText"";(_iqal displayCtrl(IDC(_nlum,7)))ctrlSetText""}else{(_iqal displayCtrl(IDC(_nlum,0)))ctrlSetText str _jres;(_iqal displayCtrl(IDC(_nlum,2)))ctrlSetText((_alxo select 0)call muey);(_iqal displayCtrl(IDC(_nlum,3)))ctrlSetTextColor([_alxo select 1]call aukq);(_iqal displayCtrl(IDC(_nlum,3)))ctrlSetText(_alxo select 2);(_iqal displayCtrl(IDC(_nlum,4)))ctrlSetText format['$%1',(_alxo select 3)];(_iqal displayCtrl(IDC(_nlum,5)))ctrlSetText str(_alxo select 4);(_iqal displayCtrl(IDC(_nlum,6)))ctrlSetText str(_alxo select 5);(_iqal displayCtrl(IDC(_nlum,7)))ctrlSetText str(_alxo select 6)};