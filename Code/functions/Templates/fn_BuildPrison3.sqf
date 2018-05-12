// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"
// Tin Shed, tin gate off center, tin walls, flag, speakers, burning barrels x 2 and sandbags

private["_center","_rotation","_obj","_pos"];
_center = param[0];
_rotation = param[1];

[_center,25] call a3e_fnc_cleanupTerrain;

_fnc_rotatePos = {
private ["_centerPos", "_pos", "_dir"];
private ["_px", "_py", "_mpx", "_mpy", "_ma", "_rpx", "_rpy"];
_centerPos = _this select 0;
_pos = _this select 1;
_dir = _this select 2;
    _px = _pos select 0;
    _py = _pos select 1;
    _mpx = _centerPos select 0;
    _mpy = _centerPos select 1;
    _ma = _dir;
    _rpx = ( (_px - _mpx) * cos(_ma) ) + ( (_py - _mpy) * sin(_ma) ) + _mpx;
    _rpy = (-(_px - _mpx) * sin(_ma) ) + ( (_py - _mpy) * cos(_ma) ) + _mpy;
[_rpx, _rpy, (_pos select 2)];
};

_pos = [_center,_center vectorAdd [-1.49219,1.73438,0],_rotation] call _fnc_rotatePos;
_obj = "Land_TinWall_01_m_gate_v1_closed_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;
_obj allowDamage false;

A3E_PrisonGateObject = _obj;

_pos = [_center,_center vectorAdd [0.0830078,3.98438,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.707107,-0.707107,0],[0,-0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-3.7832,-0.046875,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.707107,-0.707107,0],[0,-0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1.08496,1.14844,-0.180135],_rotation] call _fnc_rotatePos;
_obj = "Land_Metal_Shed_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;
_obj allowDamage false;

_pos = [_center,_center vectorAdd [1,0,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1,0,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [0,1,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [0,-1,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [1.63184,5.52539,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.707107,-0.707107,0],[0,-0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [2.96387,5.19141,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.701474,0.712695,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [1.9209,7.00195,0],_rotation] call _fnc_rotatePos;
_obj = "MetalBarrel_burning_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.00220456,0.999998,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [4.33887,3.79297,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.701474,0.712695,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [5.70605,2.40234,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.701474,0.712695,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [6.80078,2.24219,0.173401],_rotation] call _fnc_rotatePos;
_obj = "Land_Loudspeakers_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.718849,0.695166,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

A3E_PrisonLoudspeakerObject = _obj;
publicvariable "A3E_PrisonLoudspeakerObject";

_pos = [_center,_center vectorAdd [5.03711,0.808594,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [1.90137,-2.31055,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-5.30078,-1.60547,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.707107,-0.707107,0],[0,-0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-5.33008,-2.66992,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.698328,-0.715778,0],[-0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-6.90527,-2.63086,0],_rotation] call _fnc_rotatePos;
_obj = "FlagPole_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.673639,-0.739061,0],[-0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [0.40332,-3.78906,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-3.95605,-4.04102,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.698328,-0.715778,0],[-0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-2.57715,-5.4043,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.698328,-0.715778,0],[-0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1.0957,-5.26367,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1.67676,-6.93164,0],_rotation] call _fnc_rotatePos;
_obj = "MetalBarrel_burning_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.00220456,0.999998,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [3.42969,-0.777344,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [random 2.0 - 1, random 2.0 -1,0],_rotation] call _fnc_rotatePos;
private _backpack = "B_AssaultPack_khk" createvehicle _pos;
_backpack setdir ((getdir _backpack) + _rotation);
_backpack setPosATL _pos;

_backpack;