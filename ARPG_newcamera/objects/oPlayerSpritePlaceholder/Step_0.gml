/// @desc animate

//spaghetti code. Improve this later. 
z_angle = global.z;

//rotate idle sprite
if (z_angle <= 22.5 || z_angle > 337.5)
{
	image_index = 0; 	
}
else if (z_angle > 22.5 && z_angle <= 67.5)
{
	image_index = 1; 	
}
else if (z_angle > 67.5 && z_angle <= 112.5)
{
	image_index = 2; 	
}
else if (z_angle > 112.5 && z_angle <= 157.5)
{
	image_index = 3; 	
}
else if (z_angle > 157.5 && z_angle <= 202.5)
{
	image_index = 4; 	
}
else if (z_angle > 202.5 && z_angle <= 247.5)
{
	image_index = 5; 	
}
else if (z_angle > 247.5 && z_angle <= 292.5)
{
	image_index = 6; 	
}
else if (z_angle > 292.5 && z_angle <= 337.5)
{
	image_index = 7; 	
}
else exit;



