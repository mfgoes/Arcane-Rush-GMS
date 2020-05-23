/// @description cam input

//rotate camera
rotateLeft = keyboard_check(vk_left);
rotateRight = keyboard_check(vk_right); 
if rotateLeft {
	global.z +=rotate_speed;
}

if rotateRight {
	global.z -=rotate_speed;
}


#region //keyboard: ENTER	- change camera owner
	if keyboard_check_released(vk_enter) {
			/// @description change cam follow
		if follow = oPlayer_Shaun {
			follow = o_VertexTester;
		}
		else
		{
			follow = oPlayer_Shaun;
			global.z = 0;
		}
	}
	#endregion

x += (xTo - x)/12;
y += (yTo - y)/12;

if (follow != noone)
{
	xTo = follow.x;	
	yTo = follow.y;
}


// Update 3D Camera
var _zRecalculated = (global.z + 90) mod 360;

if follow = o_VertexTester {
var vm = matrix_build_lookat(x,y,-10,x,y,0, dcos(_zRecalculated),dsin(_zRecalculated),dcos(_zRecalculated)*dsin(_zRecalculated)); 
}
else
{
	var vm = matrix_build_lookat(x,y,-10,x,y,0, 0,1, 0); 
	global.z = 0;
}

camera_set_view_mat(camera,vm);


//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0); //90 degrees / straight
