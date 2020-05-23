///update 3d cam depth
//facing north
if (global.z >= 315 and global.z < 360)
{
    z_axis = -y;
}
if (global.z >= 0 and global.z < 45)
{
    z_axis = -y;
}
//facing east
if (global.z >= 45 and global.z < 135)
{
    z_axis = x;
}
//facing south
if (global.z >= 135 and global.z < 225)
{
    z_axis = y;
}
//facing west
if (global.z >= 225 and global.z < 315)
{
    z_axis = -x;
}

//update depth
depth = z_axis+30;

//numbers locked in at 0-360
if (global.z < 0)
{
	global.z = 360;	
}
if (global.z > 360)
{
	global.z = 0;	
}

//global cam angle
//camera_set_view_angle(view_camera[0],global.z);