//tombstone or zombie

var _enemy = choose(obj_tombstone, obj_zombie)
instance_create_layer(1088, 512, "enemies", _enemy);

//reactivating alarm
alarm[0] = 60 * random_range(1, 3);