//get inputs

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
enter_key = keyboard_check_pressed(vk_enter);

//store number of options in menu
op_length = array_length(option[menu_level])

//move through the menu
pos += down_key - up_key;
if (pos >= op_length) {
	pos = 0;
} else if (pos < 0) {
	pos = op_length - 1;
}

//using the options

if (enter_key) {
	// something menu level to store the current menu
	var _sml = menu_level;
	
	switch(menu_level) {
		case 0: 
		//main menu
			switch(pos) {
			//start game
			case 0:
				room_goto_next();
				break;
			//go to controls
			case 1:
				menu_level = 1
			break;
			//end game
			case 2:
				game_end();
			break;
}
		break;
		
		case 1:
		//controls menu
			switch(pos) {
				//return to main menu
				case 0:
					menu_level = 0;
				break;
			}
}
	
	//setting pos back to 0
	if(_sml != menu_level) {
		pos = 0;
	}
		
	//correct option length
	op_length = array_length(option[menu_level])
}