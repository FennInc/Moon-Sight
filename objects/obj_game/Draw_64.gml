//drawn points
draw_text(900, 20, "points: " + string(round(global.points)));

//drawn high score
draw_set_color(c_red);
draw_text(900, 40, "HS: " + string(round(global.points_higher)));
draw_set_color(-1);