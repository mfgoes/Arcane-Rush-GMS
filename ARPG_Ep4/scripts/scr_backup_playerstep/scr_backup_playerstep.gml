//Get Player Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D")); 
keyUp = keyboard_check(ord("W")); 
keyDown = keyboard_check(ord("S")); 
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);
//var dp = diagonalPriority;
//OLD DIRECTION
inputDirection = round(point_direction(0,0,keyRight-keyLeft,keyDown-keyUp));
var _inD = inputDirection;
var _zangle = global.z;

//NEW DIRECTION
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//Prioritize diagonal directions for animation
if (inputMagnitude != 0) {
	if diagonalPriority = 0 {
		switch (inputDirection) {
		case 0:
		case 90:
		case 180:
		case 270:
		inputDirectionPrev = inputDirection;
		break;
	}
	}
		switch (inputDirection) {
		  case 45:
		  case 135:
		  case 225:
		  case 315:
		    diagonalPriority = 3;
			inputDirectionPrev = inputDirection;
		    break;
		}
	idleTime = 0;
}	
else {
		if diagonalPriority > 0 {
		diagonalPriority-=1;
		}	
	#region z dependent animation 
		if (_zangle <= 22.5 || _zangle > 337.5)
		{
			_inD = 0; 	
		}
		else if (_zangle > 22.5 && _zangle <= 67.5)
		{
			_inD = 45;
		}
		else if (_zangle > 67.5 && _zangle <= 112.5)
		{
			_inD = 90; 	
		}
		else if (_zangle > 112.5 && _zangle <= 157.5)
		{
			_inD = 135;	
		}
		else if (_zangle > 157.5 && _zangle <= 202.5)
		{
			_inD = 180;
		}
		else if (_zangle > 202.5 && _zangle <= 247.5)
		{
			_inD = 225;	
		}
		else if (_zangle > 247.5 && _zangle <= 292.5)
		{
			_inD = 270; 	
		}
		else if (_zangle > 292.5 && _zangle <= 337.5)
		{
			_inD = 315;	
		}
		else exit;
		inputDirection = _inD;
	
	#endregion
	
	
	
	
	
}
	


//simplified idle code:
/*if (inputMagnitude != 0)
	inputDirectionPrev = inputDirection;*/
	
script_execute(state);