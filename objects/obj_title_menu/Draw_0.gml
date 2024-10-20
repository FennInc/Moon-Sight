//getting width and height
var _new_width = 0;
for (var i = 0; i < op_length; i++) {
	var _op_width = string_width(option[menu_level, i])
	_new_width = max(_new_width, _op_width);
}

width = _new_width + block_border*2;
height = block_border*2 + string_height(option[0, 0]) + (op_length - 1) * text_space;

//center menu
x = 512 - width/2;
y= 288 - height/2;

//drawn the meny background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);;

//setting font and how our text will generate (top left)
draw_set_font(fnt_determination );
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//drawing options
for (var i = 0; i < op_length; i++) {
	var _c = c_white;
	if (pos == i) {
		_c = c_yellow
	}
	draw_text_color(x + block_border, y + block_border + text_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
}