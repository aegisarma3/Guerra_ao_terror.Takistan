
if(!isServer)exitWith{};

S2 removeAction 0;

[-1,{hint "Capitão Khalla-Biduhha: O código de Acesso é KT99RTHFF."}] call CBA_fnc_globalExecute;

sleep 10;

[-1,{hint "Capitão Khalla-Biduhha: O terminal de acesso a bomba se encontra em uma construção de 3 anderes à Suldeste da Grande Torre de Alah, mas não há mais tempo para empedir a explosão vocês irão falhar..."}] call CBA_fnc_globalExecute;

sleep 25;

[-1,{hint "Local de destino do prisioneiro marcado no mapa."}] call CBA_fnc_globalExecute;

_markerstr6 = createMarker ["marker6", [4056.53,11901.6]]; markerstr6 setMarkerShape "ICON"; "marker6" setMarkerType "O_INSTALLATION"; "marker6" setMarkerColor "ColorGrey"; "marker6" setMarkertextLocal "Trazer Prisioneiro";

sleep 5;

_timeleft=522;

while {_timeleft > 0} do {

            hintsilent format ["A Bomba explodira em: %1", [((_timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring] call CBA_fnc_globalExecute;

        if (disarm) exitWith{};

    if (_timeleft < 1) exitWith{};
	if (!triggerActivated TTT) then {

  _timeleft = _timeleft -1;
};

if (_timeleft <= 0) then {
	if (!triggerActivated TTT) then {
            nuke_activated = true;
			};

//nuke_activated = true;

};


sleep 1;

};

if (disarm) exitWith{};

