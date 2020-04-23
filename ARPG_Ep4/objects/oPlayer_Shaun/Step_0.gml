//Get Player Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D")); 
keyUp = keyboard_check(ord("W")); 
keyDown = keyboard_check(ord("S")); 
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

//OLD DIRECTION
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);

//NEW DIRECTION

//
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);



script_execute(state);

///set 3d depth
scr_depth_3d();
