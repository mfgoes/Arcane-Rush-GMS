var _x = argument1, _y = argument2, _z = argument3, draw_size = argument4;
//creates a plane in 3D (rectangle)

//provide 3 texture positions
vertex_position_3d(argument0,_x,_y,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,0);
vertex_position_3d(argument0,_x+argument4,_y,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,0);
vertex_position_3d(argument0,_x+argument4,_y+argument4,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,block_texely);

vertex_position_3d(argument0,_x,_y,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,0);
vertex_position_3d(argument0,_x+argument4,_y+argument4,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,block_texely);
vertex_position_3d(argument0,_x,_y+argument4,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,block_texely);