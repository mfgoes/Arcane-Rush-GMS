/// @desc smooth camera
// 1.create camera
camera	= view_camera[0];

// Set up 3D camera
camDist	= -300; // Distance
camFov	= 90; // Field of view
camAsp	= camera_get_view_width(camera) / camera_get_view_height(camera); // Aspect ratio

camDistRaw = camDist; // Raw value, used as interpolation target
camDistFar = camDist; // Far distance
camDistFoc = camDist / 4; // Focused distance
camFocused = false; // Is it focused on the player?

// Rotation
camSensitivityX = 1;
camSensitivityY = 1;
xTo = 0;
yTo = 0;

camAngleXRaw = 14;
camAngleYRaw = 20;
camAngleX = camAngleXRaw;
camAngleY = camAngleYRaw;


#region //ortho view (deactivated

// 2. enable views
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0); //try setup angled views here
var pm = matrix_build_projection_ortho(480,270,1,10000);			//change this to matrix_build_projection_perspective later
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

// 3. enable views
camDist	= -10; // Distance (for POV effect later on)
view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera;


rotate_maxspeed = 2;
rotate_accelerate = 0.05;
rotate_speed = 1; //45 //0.3;
rotate_dir = 0; //-1 is CounterClockwise
rotate_dir_prev = 0; 
rotateLeft = 0;
rotateRight = 0;

//initialize friction in the future somehow

#endregion