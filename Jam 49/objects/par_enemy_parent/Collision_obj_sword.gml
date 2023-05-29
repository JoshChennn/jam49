if (noob_mode <= 0){

	noob_mode = 20;
	hlth -= other.damage;
	alarm[0] = -1;
	alarm[1] = -1;
	path_end();
	
	path_start(pth_crazy, 8, path_action_stop, false);
	path_orientation = obj_player.direction;


}