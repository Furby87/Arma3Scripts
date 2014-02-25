myvar23 = nil;
closeDialog 0;
player setVariable ["lastPosition", myvar23];
player setVariable ["lastTimes", myvar23];
if !("ItemMap" in items player) then {player addweapon "ItemMap";};
if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};


if (vehicle player isKindOf "air") then
{	
	openMap [true, false];
	onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call wierdo";

	wierdo={

	_posAir = [_this select 0, _this select 1, (getPosASL player select 2)+100];
	
	_aim = (vehicle player);
	if ((_aim isKindOf "AllVehicles") || (_aim isKindOf "Man")) then
	{
		_aim setPosASL _posAir;
	};
	
	onMapSingleClick "";
	openMap [false, false];
	};
}
else
{
	openMap [true, false];
	onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call abcdefGEH";

	abcdefGEH={

	_pos = [_this select 0, _this select 1, _this select 2];

	_aim = (vehicle player);
	if ((_aim isKindOf "AllVehicles") || (_aim isKindOf "Man")) then
	{
		_aim setPosASL _pos;
	};
	
	onMapSingleClick "";
	openMap [false, false];
	};
};
