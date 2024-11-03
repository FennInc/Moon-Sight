if (global.gameover == true) {
	exit;	
}

//adding points
global.points += 0.1;
if(global.points/100 >= global.speedmodifier){
	global.speedmodifier += 1;
}

//ground speed
layer_hspeed("ground", -(7 + global.speedmodifier))

if (global.points >= 100) {
	if alarm[1] == -1 alarm[1] = 120
}