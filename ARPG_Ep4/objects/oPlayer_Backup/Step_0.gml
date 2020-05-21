//Get Player Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D")); 
keyUp = keyboard_check(ord("W")); 
keyDown = keyboard_check(ord("S")); 
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);


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
	

script_execute(state);