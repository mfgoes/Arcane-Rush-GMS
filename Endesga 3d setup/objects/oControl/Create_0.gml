
game_set_speed(99999,gamespeed_fps);
room_speed = 99999;
display_reset(0,1);
gpu_set_ztestenable(1);

cam_x = 32;
cam_y = 16;
cam_z = 8;

cam_lookx = 0;
cam_looky = 0;
cam_lookz = 4;

mat_reset_view = matrix_get(matrix_view);
mat_reset_proj = matrix_get(matrix_projection);
mat_reset_world = matrix_get(matrix_world);

mat_view = 0;
mat_proj = 0;
mat_world = matrix_build_identity();





vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_colour();
MODEL_FORMAT = vertex_format_end();

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_colour();
vertex_format_add_texcoord();
MODEL_FORMAT_UV = vertex_format_end();

model_axis = vertex_create_buffer();
vertex_begin(model_axis,MODEL_FORMAT);
vertex_line(model_axis,16,0,0,-16,0,0,$0000ff);
vertex_line(model_axis,0,16,0,0,-16,0,$00ff00);
vertex_line(model_axis,0,0,16,0,0,-16,$ff0000);
vertex_end(model_axis);
vertex_freeze(model_axis);
//

block_size = 16;
block_texelx = 1/(sprite_get_width(sBlock)/block_size);
block_texely = 1/(sprite_get_height(sBlock)/block_size);

model_block = vertex_create_buffer();
vertex_begin(model_block,MODEL_FORMAT_UV);
vertex_plane(model_block,-8,-8,0);
vertex_end(model_block);
vertex_freeze(model_block);








