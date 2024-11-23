//tombstone or zombie

var _enemy = choose(obj_tombstone, obj_zombie)
instance_create_layer(1088, 512, "enemies", _enemy);
//reactivating alarm
if(global.points < 500) {
	alarm[0] = 60 * random_range(1, 3);
} else {
	alarm[0] = 30 * random_range(0.7, 1);
}