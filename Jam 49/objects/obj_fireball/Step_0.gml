image_alpha = 1 - (tanh(path_position) * .5);

if ((path_index == -1) && (alarm[0] == -1)) || place_meeting(x, y, par_wall_basic){

	instance_destroy();
	instance_create_depth(x, y, depth, obj_explosion)

}

if (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	obj_player.hearts -= .5;
	
	obj_player.blink_mode = true;
	
	if (irandom(100) == 0) instance_create_depth(x, y, depth, obj_explosion);
	
	instance_destroy();

}

