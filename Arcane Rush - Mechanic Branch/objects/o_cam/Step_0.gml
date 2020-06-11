/// @description cam input
// Restart
if (keyboard_check_pressed(ord("R"))) room_restart();


#region //ISO Camera code  (deactivated)
	
	rotateLeft = keyboard_check(vk_left);
	rotateRight = keyboard_check(vk_right); 

	rotate_dir = (rotateLeft - rotateRight); //choose rotate direction -1 or 1
	if (rotateLeft) {
		rotate_dir_prev = -1;
	}
	if (rotateRight) {
		rotate_dir_prev = 1;
	}
	if rotate_dir !=0 {	//accelerate
		if rotate_speed < rotate_maxspeed {
			rotate_speed +=rotate_accelerate;
		}
		global.z = global.z+(rotate_speed * rotate_dir);
	}
	else { //deccelerate
		if rotate_speed > 0 {
			rotate_speed -=rotate_accelerate*1.2; 
			global.z = global.z-(rotate_speed * rotate_dir_prev);
		}
		else {
		rotate_dir_prev = 0;
		rotate_speed = 0;
		}
	}
	
	//keyboard: ENTER	- change camera owner
	if keyboard_check_released(vk_enter) {
			/// @description change cam follow
		if follow = oPlayer_Shaun {
			follow = o_VertexTester;
		}
		else
		{
			follow = oPlayer_Shaun;
			global.z = 0;
		}
	}
	x += (xTo - x)/12;
	y += (yTo - y)/12;

	if (follow != noone)
	{
		xTo = follow.x;	
		yTo = follow.y;
	}


#endregion



#region //Perspective view
/*
var _wheel = mouse_wheel_down() - mouse_wheel_up();
camFov += _wheel;


// Rotate
if (keyboard_check_pressed(vk_up)) {
	var _deltaX = device_mouse_x_to_gui(0) - mouse_x_prev;
	var _deltaY = device_mouse_y_to_gui(0) - mouse_y_prev;
	
	camAngleXRaw = clamp(camAngleX - _deltaX * camSensitivityX, 0+5, 180-5);
	camAngleYRaw = clamp(camAngleY + _deltaY * camSensitivityY, -90+5, 90-5);
	
	show_debug_message(camAngleX);
}

camAngleX += angle_difference(camAngleXRaw, camAngleX) * 0.2;
camAngleY += angle_difference(camAngleYRaw, camAngleY) * 0.2;

mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);

// Focus camera on player
camDist = lerp(camDist, camDistRaw, 0.1);

if (keyboard_check_pressed(vk_space)) {
	// Unfocus
	if (camFocused) {
		camDistRaw = camDistFar;
		camFocused = false;
	}
	// Focus
	else {
		camDistRaw = camDistFoc;
		camFocused = true;
	}
}


*/
#endregion

