//Update Sprite
var _totalFrames = sprite_get_number(sprite_index) / 4;	//divide file into 4 sections
image_index = localFrame + (CARDINAL_DIR * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE; //sprite speed

//If animation would loop on next game step
if (localFrame >= _totalFrames)
{
	animationEnd = true;	
	localFrame -= _totalFrames;
}else animationEnd = false;


