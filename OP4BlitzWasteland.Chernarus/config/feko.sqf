private["_tjcl","_key","_xayw"];_key=[_this,0,'',['']]call clht;_tjcl=[]call dssf;[_tjcl,'airBeaconModel','Satelit']call ykms;[_tjcl,'groundBeaconModel','SatPhone']call ykms;[_tjcl,'repairKitModel','Suitcase']call ykms;[_tjcl,'medkitModel','CZ_VestPouch_EP1']call ykms;[_tjcl,'moneyModel','EvMoney']call ykms;[_tjcl,'redeployCost',100]call ykms;[_tjcl,'lockCost',100]call ykms;[_tjcl,'unlockCost',50]call ykms;[_tjcl,'secondsPerHundred',10]call ykms;[_tjcl,'allowThermals',false]call ykms;[_tjcl,'ignoreDropTypes',[]]call ykms;[_tjcl,'haloSpawnHeight',500]call ykms;[_tjcl,'autoRemoveBeacon',false]call ykms;[_tjcl,'airBeaconBlockRadius',300]call ykms;[_tjcl,'groundBeaconBlockRadius',100]call ykms;[_tjcl,'magicBackpack',true]call ykms;[_tjcl,'safeZones',[[getMarkerPos'respawn_west',1000,true]]]call ykms;[_tjcl,'playArea',[[0,0,0],[15360,15360,0],30]]call ykms;[_tjcl,'allowedFunctions',["eaqr","pdsl","fgjv","ryru"]]call ykms;[_tjcl,"defaultLoadout",[]]call ykms;[_tjcl,'HUDServerInfo',format['
	<t font="EtelkaNarrowMediumPro" color="#80FFFFFF">
	<t size="2">%1</t><br />
	%2<br />
	%3<br />
	%4<br />
	</t>
	','Gaming Community','Server Info','Community Info #1','Community Info #2']]call ykms;[_tjcl,'RespawnServerInfo',format['
	<t color="#FFFFFF" align="right" size="0.8">
	%1<br />
	%2<br />
	%3<br />
	%4<br />
	</t>
	','Gaming Community','Server Info','Community Info #1','Community Info #2']]call ykms;[_tjcl,'buildingStore',[["Concrete",[["","Land_CncBarrier_F",100],["","Land_CncWall1_F",100],["","BlockConcrete_F",100],["","Land_RampConcrete_F",100],["","Land_RampConcreteHigh_F",100],["Concrete Block","Land_ConcreteBlock",100],["Concrete Pipe","Land_Misc_ConcPipeline_EP1",100],["Concrete Ramp: Big","Land_ConcreteRamp",100],["Concrete Ramp: Small","RampConcrete",100],["Concrete Stack","Misc_concrete_High",100],["Dragons Teeth","Hhedgehog_concreteBig",100],["Dragons Teeth: Long","Hhedgehog_concrete",100]]],["Sandbags",[["","Land_BagBunker_Small_F",100],["","Land_BagFence_Long_F",100],["","Land_BagFence_Round_F",100]]],["Storage",[["Wooden Storage Crate","Fort_Crate_wood",200],["B.F. Storage Crate","Misc_cargo_cont_tiny",2000]]],["Base Walls",[["H-Barrier: Large","Land_HBarrier_large",100],["H-Barrier: Single Cube","Land_HBarrier1",100],["Wall: Short (10 Long)","Base_WarfareBBarrier10x",100],["Wall: Short (5 Long)","Base_WarfareBBarrier5x",100],["Wall: Tall (10 Long)","Base_WarfareBBarrier10xTall",100]]],["Base Fortifications",[["Barrack","Barrack2",100],["Bunker (Camo Net)","Land_Fort_Watchtower",100],["Camp","WarfareBCamp",100],["Earthen Rampart","Land_fort_rampart",100],["Depot","WarfareBDepot",100]]],["Base Misc",[["Camo Net","Land_CamoNet_NATO",100],["Dirt hump 1","Land_Dirthump03",100],["Dirt hump 2","Land_Dirthump02",100],["Gate","ZavoraAnim",100],["Hedgehog Steel","Hedgehog",100],["Med Tent","MASH",100],["Razor Wire","Fort_RazorWire",100],["Scaffolding: 2 story","Land_Misc_Scaffolding",100],["Scaffolding: 4 story","Land_leseni4x",100],["Car Port","Land_Ind_SawMillPen",100]]],["Cargo Containers",[["Cargo Container: 2x Tall","Land_Misc_Cargo2B",100],["Cargo Container: Closed","Misc_Cargo1B_military",100],["Cargo Container: Open","Misc_Cargo1Bo_military",100]]],["Ladders & Stairs",[["Illumination Tower","Land_Ind_IlluminantTower",100],["Ladder: Short","Land_ladder_half",100],["Ladder: Tall","Land_ladder",100],["Radio Tower","Land_radar_EP1",100],["Staircase","Land_A_Castle_Stairs_A",100]]],["Sandbags",[["Sandbag nest: Big","Land_fortified_nest_big",100],["Sandbag nest: Small","Land_fortified_nest_small_EP1",100],["Sandbag wall: Corner","Land_fort_bagfence_corner",100],["Sandbag wall: Long","Land_fort_bagfence_long",100],["Sandbag wall: Short","Land_BagFenceShort",100],["Sandbag round: Large","Land_fort_bagfence_round",100],["Sandbag round: Small","Land_BagFenceRound",100]]],["Wooden Items",[["Wood Board Stack","Land_Ind_BoardsPack2",100],["Wood GuardShed","Land_GuardShed",100],["Wood Ramp","Land_WoodenRamp",100],["Wood Ramp Arc","Land_prebehlavka",100]]],["Static Weapons",[]]]]call ykms;[_tjcl,'heliStore',[["Helicopters",[["","AH6J_EP1",10000]]]]]call ykms;[_tjcl,'minMoney',250]call ykms;[_tjcl,'weatherTemplates',[["Clear",[0,1,5],[0.30,0,0,1,1]],["Overcast",[0,1,2],[0.50,0,0,2,2]],["Light Rain",[1,2,3,5],[0.60,0.3,0.05,3,3]],["Medium Rain",[2,3,4],[0.70,0.5,0.05,4,4]],["Rainstorm",[3],[0.80,0.9,0.1,5,5]],["Light Fog",[0,2,5,6],[0.4,0,[0.2,0.01,10],0,0]],["Medium Fog",[5,6,7],[0.4,0,[0.4,0.005,20],0,0]],["Dense Fog",[6],[0.5,0,[0.4,0.0025,30],0,0]]]]call ykms;[_tjcl,'weatherCycleTime',20*60]call ykms;[_tjcl,'banners',[]]call ykms;[_tjcl,'protect',[]]call ykms;[_tjcl,'resalePrices',[["hgun_ACPC2_F",25]]]call ykms;_xayw='';if(_key=='')then{_xayw=_tjcl}else{_xayw=[_tjcl,_key]call rewl};_xayw