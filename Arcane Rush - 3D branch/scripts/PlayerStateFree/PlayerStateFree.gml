//Movement
//hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
//vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

//Temp code

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection-global.z);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection-global.z);
PlayerCollision();

//Update Sprite Index

var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

//Update Image Index

if sprite_index = spriteRun {
PlayerAnimateSprite();			//this is separated for now because it has 4 directions instead of 8.
}

if sprite_index = spriteIdle {
PlayerAnimateIdle();
}

//Change State
if (keyActivate)
{
	state = PlayerStateRoll;
	moveDistanceRemaining = distanceRoll
}