image_angle = direction;

if (!hit_player) && (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	hit_player = true;
	obj_player.hearts -= damage;
	obj_player.blink_mode = true;

}