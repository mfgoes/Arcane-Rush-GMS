/// @description movement
x = x + ((cam_owner.x - x)*0.05);
y = y + ((cam_owner.y - y)*0.05);

rotate_dir = (rotateLeft - rotateRight); //choose rotate direction -1 or 1
if (rotateLeft) {
	rotate_dir_prev = -1;
}
if (rotateRight) {
	rotate_dir_prev = 1;
}

if rotate_dir !=0 {	//accelerate
	global.z = global.z+(rotate_speed * rotate_dir);
	if rotate_speed < rotate_maxspeed {
		rotate_speed +=rotate_accelerate;
	}
}
else { //deccelerate
	if rotate_speed > 0 {
		rotate_speed -=rotate_accelerate*1.25;
		global.z = global.z-(rotate_speed * rotate_dir_prev);
	}
	else {
	rotate_dir_prev = 0;
	rotate_speed = 0;
	}
}