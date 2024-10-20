//choose up or down
var _y = choose(462, 495)

instance_create_layer(1088, _y, "enemies", obj_bat);

//reactivating alarm
alarm[1] = 120 * random_range(1, 3.5); 