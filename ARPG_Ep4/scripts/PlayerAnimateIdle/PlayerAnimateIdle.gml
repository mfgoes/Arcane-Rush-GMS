//Update Animation

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
z_angle = global.z;

//player based direction

#region //facing angle
	//rotate idle sprite
	if (z_angle <= 22.5 || z_angle > 337.5)
	{
		facing_angle = 0; 	
	}
	else if (z_angle > 22.5 && z_angle <= 67.5)
	{
		facing_angle = 1; 	
	}
	else if (z_angle > 67.5 && z_angle <= 112.5)
	{
		facing_angle = 2; 	
	}
	else if (z_angle > 112.5 && z_angle <= 157.5)
	{
		facing_angle = 3; 	
	}
	else if (z_angle > 157.5 && z_angle <= 202.5)
	{
		facing_angle = 4; 	
	}
	else if (z_angle > 202.5 && z_angle <= 247.5)
	{
		facing_angle = 5; 	
	}
	else if (z_angle > 247.5 && z_angle <= 292.5)
	{
		facing_angle = 6; 	
	}
	else if (z_angle > 292.5 && z_angle <= 337.5)
	{
		facing_angle = 7; 	
	}
	else exit;
#endregion

//USE MODULO TO COUNT AFTER RESETTING. 

//Calculate final direction
//var _totalFrames = sprite_get_number(sprite_index) / 8;	//divide file into 8 sections. Include breathing later on.
var _inputDir = inputDirectionPrev/45;

if idleType = 1 {
	image_index = ((facing_angle + _inputDir) mod 8) ;	
}
else
image_index = _inputDir;

//image_index = ((facing_angle + _inputDir) mod 8) ; //* _totalFrames;

//localFrame += sprite_get_speed(sprite_index) / FRAME_RATE; //sprite speed

//image_index = facing_angle + (inputDirectionPrev/45) * _totalFrames;


//If animation would loop on next game step
/*
if (localFrame >= _totalFrames)
{
	animationEnd = true;	
	localFrame -= _totalFrames;
}else animationEnd = false;
*/