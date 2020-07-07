var _x = argument1, _y = argument2, _z = argument3;


//provide 3 texture positions
vertex_position_3d(argument0,_x,_y,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,0);
vertex_position_3d(argument0,_x+16,_y,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx*2,0);
vertex_position_3d(argument0,_x+16,_y+16,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx*2,block_texely);

vertex_position_3d(argument0,_x,_y,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,0);
vertex_position_3d(argument0,_x+16,_y+16,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,block_texely);
vertex_position_3d(argument0,_x,_y+16,_z);
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,block_texely);