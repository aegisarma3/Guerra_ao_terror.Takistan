Aze_Askrenf = {
private ["_npc","_target","_radiorange","_renf","_fixedtargetpos"];

	_npc = _this select 0;
	_target = _this select 1;
	_radiorange = _this select 2;
	_side = _this select 3;
	_fixedtargetpos = getpos _npc;
	_renf = false;
	
	_ArrayGrpRenf = [KRON_NPCs, [], { _npc distance _x }, "ASCEND"] call BIS_fnc_sortBy;
	{
		_alliednpc = _x;
		If (alive _alliednpc && _npc distance _alliednpc <= _radiorange && (_alliednpc getvariable "UPS_REINFORCEMENT") == "REINFORCEMENT" && _side == side _alliednpc) exitwith {{_unit = _x; _unit setvariable ["UPS_PosToRenf",[_fixedtargetpos select 0,_fixedtargetpos select 1]];_unit setvariable ["UPS_REINFORCEMENT","NOREINFORCEMENT"]; if (KRON_UPS_Debug>0 && _renf) then {player sidechat format ["%1 sent in Reinforcement",_unit];};_unit reveal [_target,1.5];} foreach units (group _x); _renf = true;};

	} count KRON_NPCs > 0;

	_renf

};
