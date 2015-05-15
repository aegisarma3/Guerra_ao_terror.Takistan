
if(!isServer)exitWith{};

titlecut [" ","BLACK IN",2];
_camera = "camera" camcreate [4126.24,11791.4,15];
_camera cameraeffect ["internal", "back"];

titletext ["Somente os fortes sobreviverão!","PLAIN",5];
titletext ["Somente os fortes sobreviverão!","black out",15];

sleep 15;

endMission "END2";
_camera cameraeffect ["terminate","back"]
camdestroy _camera
exit;