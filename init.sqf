// here is the code required to spawn captured objects
if (isServer) then {call compile preprocessFile "mission\initBuildings.sqf";};

// Init TPWCAS
[] execVM "tpwcas\tpwcas_script_init.sqf";
sleep 1;
//Init UPSMON script
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";
sleep 3;

//Script de Reparo mais realista
[] execVM "zlt_fieldrepair.sqf";

//player creatediaryRecord["Diary", ["Situação","A Al-Qaeda vem conquistando território rapidamente ao sul do Takistão, em sua ultima investida os insurgentes tomaram o controle da base militar de Feruz Abad, fazendo com que as tropas da OTAN recuem ainda mais. Com receio de perder o total controle da região a ONU convocou tropas de países ainda não atuantes nesta guerra.<br/>A empresa de segurança internacional AEGIS foi contratada para recuperar a recente cidade tomada pelos insurgentes, contudo o acesso a região vem se tornando cada vez mais perigoso, diversas baterias anti-aérea estão sendo alocadas na região. As únicas rotas aéreas que ainda podem ser utilizadas são entre os extremos nordeste e o sudeste do país. Um contato (membro da resistência local) chamado Kahil esta aguardando os Buffalos nas regiões montanhosas do leste. O contato conduzirá o esquadrão até um galpão em uma pequena cidade industrial abandonada. Neste galpão estão escondido suprimentos que devem ser transportados até o posto avançado da OTAN na cidade de Shamali. O transporte destes suprimentos deverá ser realizado através de um comboio composto por 6 caminhões e 4 HMMVW para a escolta."]];

//execVM "Intro.sqf";


// NUKE RELATED STUFF
/////////////////////////////////////////////////////////////////////////////////////////
mdh_nuke_destruction_zone	= 600;	// DESTRUCTION ZONE OF NUKE IN METERS, USE 0 TO DEACTIVATE
mdh_nuke_camshake			= 1;	// CAEMRASHAKE AT NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_ash				= 1;	// ASH AFTER NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_colorcorrection	= 1;	// COLLORCORRECTION AFTER NUKEDETONATION 1=ON, 0=OFF
////////////////////////////////////////////////////////////////////////////////////////

waitUntil{!(isNil "BIS_fnc_init")};
enableSaving [false,false];
