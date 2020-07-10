var _x = argument1, _y = argument2, _z = argument3, draw_size = argument4;
//creates a VERTICAL wall plane in 3D (y-axis)

vertex_position_3d(argument0,_x,_y,_z); //bottom left
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,block_texely);

vertex_position_3d(argument0,_x,_y,-argument4); //top left
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,0);

vertex_position_3d(argument0,_x,_y+argument4,_z); //bottom right
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,block_texely);

///
vertex_position_3d(argument0,_x,_y,-argument4); //top left
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,0,0);

vertex_position_3d(argument0,_x,_y+argument4,-argument4); //top right
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,0);

vertex_position_3d(argument0,_x,_y+argument4,_z); //bottom right
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,block_texelx,block_texely);

