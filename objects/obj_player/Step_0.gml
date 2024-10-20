//changing sprite and stopping at game over
if (global.gameover == true) {
	sprite_index = spr_player_damage;
	exit;
}

//checking if it's on ground
if(y >= 512) {
	y = 512;
	vel_y = 0;
	image_speed = 1;
	if (keyboard_check_pressed(vk_up)) {
		vel_y -= 18
	}
} else {
	if (keyboard_check(vk_down)) {
		grav = 2.5;
	} else {
		grav = 1;
	}
	vel_y += grav;
	
	image_speed = 0;
}

//mudando o y
y += vel_y;

//going down

if (keyboard_check(vk_down)) {
	sprite_index = spr_player_down
} else {
 sprite_index = spr_willow_walk
}