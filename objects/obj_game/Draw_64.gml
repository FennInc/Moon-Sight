//drawn points
draw_text(900, 20, "points: " + string(round(global.points)));

draw_text(900, 80, "spd: " + string(round(global.speedmodifier)));

//drawn high score
draw_set_color(c_red);
draw_text(900, 40, "HS: " + string(round(global.points_higher)));
draw_set_color(-1);

draw_text(700, 100, "reset jump: " + string(round(reset_jump)));