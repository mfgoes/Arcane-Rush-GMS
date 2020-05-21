/// @description ?
//manual scr_draw_sprite_3d();
//draw_sprite_ext(sShadowCharacter,0,x,y,1,1,-global.z,c_white,0.24);
scr_depth_3d();
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,-global.z,c_white,1);
