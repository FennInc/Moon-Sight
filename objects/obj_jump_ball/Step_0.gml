//stopping at game over
if (global.gameover == true) {
	image_speed = 0;
	exit;	
}

//making run
y +=  vely;

//destroy offscreen
if (y >= 634) {
	instance_destroy();
}