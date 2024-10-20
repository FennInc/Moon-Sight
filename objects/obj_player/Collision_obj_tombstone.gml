
if (global.gameover == false) {
	global.gameover = true
	layer_set_visible("moon", false)
	instance_create_layer(512, 228, "restart", obj_restart)
	
	//stop everything
	layer_hspeed("ground", 0)
	layer_hspeed("background", 0)
}