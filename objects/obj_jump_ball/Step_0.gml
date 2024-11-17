//stopping at game over
if (global.gameover == true) {
	image_speed = 0;
	exit;	
}

//making run
x -=  velh;

//destroy offscreen
if (x <= -64) {
	instance_destroy();
}