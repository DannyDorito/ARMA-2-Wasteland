private["_ooso","_pvyy","_srgp","_nsve"];_ooso=[_this,0,'',['']]call jdly;_pvyy=[_this,1,[],[[]]]call jdly;_srgp=true;{if(!isNil"_x"&&{_x select 0==_ooso})then{_nsve=_pvyy call(_x select 1);if(!isNil"_nsve"&&{typeName _nsve=="BOOL"})then{_srgp=_srgp&&_nsve}}}count nfnt;_srgp