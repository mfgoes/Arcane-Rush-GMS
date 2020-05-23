/// @desc smooth camera
// 1.create camera
camera = camera_create();
cam_owner = o_VertexTester;

follow = cam_owner;
xTo = x;
yTo = y;

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
camera_angle = 0;
rotate_dir = 0; //-1 is CounterClockwise
rotate_dir_prev = 0; 
rotateLeft = 0;
rotateRight = 0;

//initialize friction in the future somehow