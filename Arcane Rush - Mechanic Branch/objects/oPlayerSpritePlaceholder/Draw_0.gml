/// @description draw sprite
//manual scr_draw_sprite_3d();
draw_sprite_ext(sShadowCharacter,0,x,y,1,1,-global.z,c_white,0.24);
//depth
scr_depth_3d();

///draw 2d to 3d
scr_draw_sprite_3d();

draw_text(x,y-30,round(z_angle));