titleCut ["", "BLACK faded", 0];  sleep 6;  titleCut ["", "BLACK IN", 1];
if (hasInterface) then {
    private ["_cam","_camx","_camy","_camz","_object"];
    waituntil {!(isnull player)};


    playMusic "BigJack";

     _object = player;
    _camx = getposATL player select 0;
    _camy = getposATL player select 1;
    _camz = getposATL player select 2;

    _cam = "camera" CamCreate [_camx +400 ,_camy - 400,_camz+100];

    _cam CamSetTarget player;
    _cam CameraEffect ["Internal","Back"];
    _cam CamCommit 0;

    _cam camsetpos [_camx -15 ,_camy + 15,_camz+0];
    _cam CamCommit 15;

    ["<t size='4.5' ><img image=""signs\cia.paa"" /><br/><t font = 'puristaLight' t size='1.0' color='#FFFFFF'>Apresenta</t>",0,0.2,5,1,0.0] spawn bis_fnc_dynamictext;

    sleep 5;

    ["<t size='1.0' color='#7A0A0A'>Guerra ao Terror<t font = 'puristaLight' <t size='0.5' color='#FFFFFF'>v2.0<t font = 'puristaLight' t size='1.0' color='#FFFFFF'> Desenvolvida por <br/><t font = 'puristaLight t size='0.6' color='#FFFFFF'>Collumbus [AEGIS]</t>",0,0.2,3,1,0.0] spawn bis_fnc_dynamictext;

    sleep 10;

    _cam CameraEffect ["Terminate","Back"];
    CamDestroy _cam;
     waitUntil{!(isNil "BIS_fnc_init")};

     [str ("AEGIS"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Shamali")] call BIS_fnc_infoText;

    sleep 5;

    //  playMusic "";

};