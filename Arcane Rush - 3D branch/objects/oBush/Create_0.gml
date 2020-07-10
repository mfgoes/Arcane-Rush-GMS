/// @description ?



/*vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_colour();
MODEL_FORMAT = vertex_format_end();*/

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_colour();
vertex_format_add_texcoord();
MODEL_FORMAT_UV = vertex_format_end();

//determine tile size
block_size = 16;
block_texelx = 1/(sprite_get_width(spr_grass)/block_size);
block_texely = 1/(sprite_get_height(spr_grass)/block_size);
texel_num = 2; //draw the 3rd texel
texel_posx = texel_num/(sprite_get_height(spr_grass)/block_size);


model_block = vertex_create_buffer();
vertex_begin(model_block,MODEL_FORMAT_UV);
vertex_wall3(model_block,x-8,y-8,0,block_size*5,texel_posx);
vertex_end(model_block);
vertex_freeze(model_block);



