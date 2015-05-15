// here is the code required to spawn captured objects
if (isServer) then {call compile preprocessFile "mission\initBuildings.sqf";};

// Init TPWCAS
[] execVM "tpwcas\tpwcas_script_init.sqf";
sleep 1;
//Init UPSMON script
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";
sleep 3;

//comando para igualar codigo dos radios NATO e AFF
tf_west_radio_code = "_independent";

//Script de Reparo mais realista
[] execVM "zlt_fieldrepair.sqf";



// NUKE RELATED STUFF
/////////////////////////////////////////////////////////////////////////////////////////
mdh_nuke_destruction_zone	= 600;	// DESTRUCTION ZONE OF NUKE IN METERS, USE 0 TO DEACTIVATE
mdh_nuke_camshake			= 1;	// CAEMRASHAKE AT NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_ash				= 1;	// ASH AFTER NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_colorcorrection	= 1;	// COLLORCORRECTION AFTER NUKEDETONATION 1=ON, 0=OFF
////////////////////////////////////////////////////////////////////////////////////////

waitUntil{!(isNil "BIS_fnc_init")};
enableSaving [false,false];
