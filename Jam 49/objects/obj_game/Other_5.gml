if (room == rm_mirrorWorld){

	if (global.flags >= 5){
	
		global.flags = 0;
		with(obj_flag) instance_destroy();
		
		global.player_exp += exp_to_gain;
		global.player_gems += gems_to_gain;
		
		ds_map_replace(gamedata, "EXP", global.player_exp);
		ds_map_replace(gamedata, "gems", global.player_gems);
	
	}

}