/// @description ?
game_set_speed(60,gamespeed_fps);	//change to 99999 later. 
room_speed = 60;
display_reset(0,1);
gpu_set_ztestenable(1);

cam_x = 32;
cam_y = 16;
cam_z = 8;

cam_lookx = 0; //where camera looks
cam_looky = 0;
cam_lookz = 4;

mat_reset_view = matrix_get(matrix_view);
mat_reset_proj = matrix_get(matrix_projection);
mat_reset_world = matrix_get(matrix_world);

mat_view = 0;
mat_proj = 0;
mat_world = matrix_build_identity();
