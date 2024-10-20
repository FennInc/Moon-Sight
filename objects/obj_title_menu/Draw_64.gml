//draw text controls
if(menu_level == 1) {
	var _text_y = 20;
	var _c = c_white;
	for (var i = 0; i < array_length(controls_string); i++) {
		if(i == 3) {
			_c = c_red;
		}
		draw_text_color(512 - string_width(controls_string[i])/2, _text_y + text_space*i, controls_string[i], _c, _c, _c, _c, 1);
		
}
}