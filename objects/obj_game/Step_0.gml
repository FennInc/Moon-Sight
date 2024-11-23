if (global.gameover == true) {
	audio_stop_sound(snd_jumpball);
	exit;	
}


//adding points
global.points += 0.1;
if(global.points/50 >= global.speedmodifier){
	global.speedmodifier += 0.5;
}

//ground speed
layer_hspeed("ground", -(7 + global.speedmodifier))

if (global.points >= 100) {
	if alarm[1] == -1 alarm[1] = 120
}

if (global.points >= 200 && obj_player.jump_max <= 1) {
	if alarm[2] == -1 alarm[2] = 300
} else if(obj_player.jump_max > 1) {
	alarm[2] = -1
	reset_jump --
}

if (reset_jump <= 0) {
	audio_play_sound(snd_unpowerup,0,false);
	obj_player.jump_max = 1;
	reset_jump = 1;
}