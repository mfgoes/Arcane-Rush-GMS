/// @description draw stats

draw_set_alpha(0.2); draw_set_color(c_white); draw_rectangle(3,3,500,200,0);
draw_set_alpha(1);

draw_set_color(c_black);
draw_text_transformed(10,30,"global z " + string(global.z),1,1,0);
draw_text_transformed(10,60,"dcos z " + string(dcos(global.z)),1,1,0);
draw_text_transformed(10,90,"dsin z " + string(dsin(global.z)),1,1,0);
//draw_sprite_ext(sArrowTest,0,x,y,1,1,global.z,c_white,1);

/*
draw_text_transformed(30,90,"rotate angle " + string(global.z),1,1,0);
draw_text_transformed(30,140,"inputDirectionPrev " + string(inputDirectionPrev),1,1,0);
draw_text_transformed(30,170,"inputMagnitude " + string(inputMagnitude),1,1,0);


draw_set_color(c_blue);
draw_text_transformed(300,30,"idleType " + string(idleType),1,1,0);
draw_set_color(c_black);
draw_text_transformed(300,60,"inputDir " + string(inputDirectionPrev/45),1,1,0);
draw_text_transformed(300,90,"facing_angle " + string(facing_angle),1,1,0);
draw_text_transformed(300,140,"image_index " + string(image_index),1,1,0);
*/