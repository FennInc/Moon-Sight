reset_jump = 900
var _x = random_range(47, 339)

instance_create_layer(_x, -8, "collectables", obj_jump_ball);
audio_play_sound(snd_jumpball,0,false);
 alarm[2] = 300 * random_range(1, 3);