//changing sprite and stopping at game over
if (global.gameover == true) {
	sprite_index = spr_willow_hurt;
	exit;
}
jump_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
jump_hold = keyboard_check(vk_up) || keyboard_check(vk_space) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));


//checking if it's on ground
if(y >= 512) {
	y = 512;
	vel_y = 0;
	image_speed = 1;
	jump_count = 0;
}

//initializde jump
if (jump_key && jump_count < jump_max) {
	audio_play_sound(snd_jump,0,false);
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
if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) {
	audio_play_sound(snd_crouch,0,false);
}

if (down_key) {
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
if (down_key && jump_max <= 1) {
	sprite_index = spr_willow_down;
} else if(down_key && jump_max > 1) {
	sprite_index = spr_willow_super_down;
}else if jump_max <= 1 {
 sprite_index = spr_willow_walk;
} else if jump_max > 1 {
	sprite_index = spr_willow_super_walk;
}

//left and right movement
vel_x = (right_key - left_key)*speed_x;

//invisible wall collision
if(place_meeting(x + vel_x, y, obj_wall)) {
	vel_x = 0;
}
x += vel_x;
