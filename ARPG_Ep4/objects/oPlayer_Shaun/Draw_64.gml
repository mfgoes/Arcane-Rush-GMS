/// @description draw stats
draw_set_alpha(0.5); draw_set_color(c_white); draw_rectangle(20,20,1200,260,0);
draw_set_alpha(1);

draw_set_color(c_black);
draw_text_transformed(30,30,"inputDirection " + string(inputDirection),2,2,0);
draw_text_transformed(30,60,"rotate_speed " + string(o_cam.rotate_speed),2,2,0);
draw_text_transformed(30,90,"rotate angle " + string(global.z),2,2,0);
draw_text_transformed(30,140,"inputDirectionPrev " + string(inputDirectionPrev),2,2,0);
draw_text_transformed(30,170,"inputMagnitude " + string(inputMagnitude),2,2,0);


draw_set_color(c_blue);
draw_text_transformed(700,30,"idleType " + string(idleType),2,2,0);
draw_set_color(c_black);
draw_text_transformed(700,60,"inputDir " + string(inputDirectionPrev/45),2,2,0);
draw_text_transformed(700,90,"facing_angle " + string(facing_angle),2,2,0);
draw_text_transformed(700,140,"image_index " + string(image_index),2,2,0);
