

if(!isServer)exitWith{};

_timeleft2=1200000;

while {_timeleft2 > 0} do {

            //hintsilent format ["Reforço em: %1", [((_timeleft2)/1000)+.01,"HH:MM"] call bis_fnc_timetostring] call CBA_fnc_globalExecute;

        if (disarm) exitWith{};

    if (_timeleft2 < 1) exitWith{};
	if (!triggerActivated TTT2) then {

  _timeleft2 = _timeleft2 -1;
};

if (_timeleft2 <= 0) then {
	if (!triggerActivated TTT2) then {
            LLT setDamage 1;
			};



};
};



