/// @description spawn patch of grass
repeat(8) {
	instance_create_depth(random_range(x-10,x+10),random_range(y-10,y+10),99,o_Grass_Strand);    
}