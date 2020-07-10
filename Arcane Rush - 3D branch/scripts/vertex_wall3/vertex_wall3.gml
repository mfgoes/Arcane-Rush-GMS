var _x = argument1, _y = argument2, _z = argument3, draw_size = argument4, texel_posx = argument5; 
//creates a VERTICAL wall plane in 3D (y-axis)

vertex_position_3d(argument0,_x,_y,_z); //bottom left
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,texel_posx,block_texely);

vertex_position_3d(argument0,_x,_y,-draw_size); //top left
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,texel_posx,0);

vertex_position_3d(argument0,_x,_y+draw_size,_z); //bottom right
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,texel_posx + block_texelx,block_texely);

///
vertex_position_3d(argument0,_x,_y,-draw_size); //top left
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,texel_posx,0);

vertex_position_3d(argument0,_x,_y+draw_size,-draw_size); //top right
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,texel_posx + block_texelx,0);

vertex_position_3d(argument0,_x,_y+draw_size,_z); //bottom right
vertex_colour(argument0,$ffffff,1);
vertex_texcoord(argument0,texel_posx + block_texelx,block_texely);

