// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_meeting_obstacle(_x,_y){
	with (obj_player) {
		if (place_meeting(_x,_y,obj_wall) or place_meeting(_x,_y,obj_blacksmith) or place_meeting(_x,_y,obj_campfire) or place_meeting(_x,_y,obj_cityHall) or place_meeting(_x,_y,obj_shop) or place_meeting(_x,_y,obj_wall)) {
			return true;
		}
		else {
			return false;
		}
	}
}