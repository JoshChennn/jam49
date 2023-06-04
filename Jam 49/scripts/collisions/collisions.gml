// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_meeting_obstacle(_x,_y){
	with (obj_player) {
		if (place_meeting(_x,_y,par_wall_basic)) || (y + moveY < -64) || (y + moveY > room_height - 64) || (x + moveX < 0) || (x + moveX > room_width){
			return true;
		}
		else {
			return false;
		}
	}
}
function rand_difference() {
	var rand = irandom(10);
	if rand == 0 {
		return -3;
	}
	else if rand == 1 {
		return -2;
	}
	else if rand == 2 or rand == 3 {
		return -1;
	}
	else if rand == 4 or rand == 5 or rand == 6 {
		return 0;
	}
	else if rand == 7 or rand == 8 {
		return 1;
	}
	else if rand == 9 {
		return 2;
	}
	else {
		return 3;
	}
}