if (room == rm_mirrorWorld){
	

	if (lose > 0) {
	
		global.player_exp += floor(exp_to_gain/2);
		global.player_gems += floor(gems_to_gain/2);	
	
	} else {

		global.player_exp += exp_to_gain;
		global.player_gems += gems_to_gain;
	
	}
	
		ds_map_replace(obj_game.gamedata, "EXP", global.player_exp);
		ds_map_replace(obj_game.gamedata, "gems", global.player_gems);
		LootLockerSubmitScore("14517",string(global.player_exp));
		global.flags = 0;
		with(obj_flag) instance_destroy();
		
		lose = 0;

}