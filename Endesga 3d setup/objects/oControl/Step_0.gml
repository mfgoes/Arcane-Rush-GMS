/// @description ?
mat_view = matrix_build_lookat(
lengthdir_x(16,current_time/30),
lengthdir_y(16,current_time/30),
cam_z,
cam_lookx,cam_looky,cam_lookz, 0,0,1);

var ratio = (display_get_gui_width()/display_get_gui_height());
mat_proj = matrix_build_projection_perspective_fov(90,ratio,.01,20000);