state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 72;

spriteRoll = sPlayerRoll;
spriteRun = sNovaRun; //sPlayerRun;
spriteIdle = sNovaIdle; //sPlayer;
localFrame = 0;
inputDirectionPrev = 270; //required for idle animation
facing_angle = 0;
diagonalPriority = 0; //in frames
idleTime = FRAME_RATE*0.3; //0.33 seconds. 
idleType = 0;	//0 = rotate according to movement, 1 = rotate according to z-axis

//set z
z_height = 0;
global.z = 0;

//create cam
instance_create_depth(x,y,0,o_cam);

//controls
rotateLeft = keyboard_check(vk_left);
rotateRight = keyboard_check(vk_right); 