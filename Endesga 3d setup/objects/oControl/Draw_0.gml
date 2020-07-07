
draw_clear_alpha(0,0);
draw_set_colour($ffffff);
draw_set_alpha(1);

matrix_set(matrix_view,mat_view);
matrix_set(matrix_projection,mat_proj);
matrix_set(matrix_world,mat_world);

vertex_submit(model_axis,pr_linelist,-1);

//gpu_set_tex_repeat(1);
vertex_submit(model_block,pr_trianglelist,sprite_get_texture(sBlock,0));
//gpu_set_tex_repeat(0);






