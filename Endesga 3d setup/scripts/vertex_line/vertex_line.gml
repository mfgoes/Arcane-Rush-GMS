/// @function vertex_line
/// @description draws a line in 3d space.
/// @param {real} buffer	argument0
/// @param {real} x1		argument1
/// @param {real} y1		argument2
/// @param {real} z1		argument3
/// @param {real} x2		argument4
/// @param {real} y2		argument5
/// @param {real} z2		argument6
/// @param {real} colour		argument7

vertex_position_3d(argument0,argument1,argument2,argument3);
vertex_colour(argument0,argument7,1);
vertex_position_3d(argument0,argument4,argument5,argument6);
vertex_colour(argument0,argument7,1);
