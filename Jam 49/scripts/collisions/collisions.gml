// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_meeting_obstacle(_x,_y){
	with (obj_player) {
		if (place_meeting(_x,_y,par_wall_basic)){
			return true;
		}
		else {
			return false;
		}
	}
}
function find_price(_deal) {
	switch (_deal) {
		case "SWORD":
			return global.sword_level*3 + 1;
			break;
		case "BOW":
			return global.bow_level*4 + 1;
			break;
	}
}