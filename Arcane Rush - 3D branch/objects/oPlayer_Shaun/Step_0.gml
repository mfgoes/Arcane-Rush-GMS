//Get Player Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D")); 
keyUp = keyboard_check(ord("W")); 
keyDown = keyboard_check(ord("S")); 
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);
rotateLeft = keyboard_check(vk_left);
rotateRight = keyboard_check(vk_right); 

//var dp = diagonalPriority;
//OLD DIRECTION
inputDirection = round(point_direction(0,0,keyRight-keyLeft,keyDown-keyUp));

//NEW DIRECTION
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);


if (inputMagnitude != 0) {
			switch (inputDirection) {
			case 0:
			case 90:
			case 180:
			case 270:
			
			case 45:
			case 135:
			case 225:
			case 315:
			inputDirectionPrev = inputDirection;
			idleType = 0;
			break;
		}
	}

if !(rotateLeft + rotateRight = 0) && o_cam.rotate_speed = 0 {		//idle sprite based on angle + z-axis;
	idleType = 1;
}

//Prioritize diagonal directions for animation
#region /// old idle code
	/*if (inputMagnitude != 0) {
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
	}	*/

#endregion


//simplified idle code:
/*if (inputMagnitude != 0)
	inputDirectionPrev = inputDirection;*/
	
script_execute(state);