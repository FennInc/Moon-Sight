//defining highscore
if (global.points > global.points_higher) {
	global.points_higher = global.points
}
//restarting values
global.points = 0;
global.gameover = false
game_restart()