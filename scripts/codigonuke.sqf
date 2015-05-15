// codigonuke.sqf.sqf
// script by Buffalos_Tactical_Squad

if(!isServer)exitWith{};

_object = _this select 0;
player switchMove "AinvPercMstpSrasWrflDnon_Putdown_AmovPercMstpSrasWrflDnon";

sleep 1;

TNT setDamage 1;
HideObject TNT;

