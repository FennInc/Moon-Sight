//choose up or down
if(global.points <= 500) {
var _y = choose(462, 495)
} else {
	var _y = choose(188, 274, 462, 495)
}

instance_create_layer(1088, _y, "enemies", obj_bat);

//reactivating alarm
if(global.points <= 50) {
	alarm[1] = 120 * random_range(1, 3);
} else {
	alarm[0] = 60 * random_range(1, 2);
}