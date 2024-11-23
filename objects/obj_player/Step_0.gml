//changing sprite and stopping at game over
if (global.gameover == true) {
	sprite_index = spr_willow_hurt;
	exit;
}
jump_key = keyboard_check_pressed(vk_up);
jump_hold = keyboard_check(vk_up);

//checking if it's on ground
if(y >= 512) {
	y = 512;
	vel_y = 0;
	image_speed = 1;
	jump_count = 0;
}

//initializde jump
if (jump_key && jump_count < jump_max) {
	jump_count++;
	jump_timer = jump_frames;
}
	if(!jump_hold){
		jump_timer = 0;
	}
	
if(jump_timer > 0) {
	vel_y = jump_spd;
	jump_timer --;
}



//going down
if (keyboard_check(vk_down)) {
	jump_frames = 7;
	grav = 2.5;
} else {
	jump_frames = 15;
	grav = 1;
}
	
vel_y += grav;
//mudando o y
y += vel_y;

//going down sprite
if (keyboard_check(vk_down) && jump_max <= 1) {
	sprite_index = spr_willow_down;
} else if(keyboard_check(vk_down)&& jump_max > 1) {
	sprite_index = spr_willow_super_down;
}else if jump_max <= 1 {
 sprite_index = spr_willow_walk;
} else if jump_max > 1 {
	sprite_index = spr_willow_super_walk;
}

//left and right movement
vel_x = (keyboard_check(vk_right) - keyboard_check(vk_left))*speed_x;

//invisible wall collision
if(place_meeting(x + vel_x, y, obj_wall)) {
	vel_x = 0;
}
x += vel_x;
