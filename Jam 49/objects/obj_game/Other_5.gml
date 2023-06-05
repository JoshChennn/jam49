if (room == rm_mirrorWorld){
	
	if (obj_player.hearts > 0){

		//if (global.flags >= 5){
	
			global.flags = 0;
			with(obj_flag) instance_destroy();
		
			global.player_exp += exp_to_gain;
			global.player_gems += gems_to_gain;
			
			exp_to_gain = 0;
			gems_to_gain = 0;
		
			ds_map_replace(gamedata, "EXP", global.player_exp);
			ds_map_replace(gamedata, "gems", global.player_gems);
			LootLockerSubmitScore("14517",string(global.player_exp));
		//}

	} else if (lose != 0) {
	
		global.player_exp += exp_to_gain - floor(exp_to_gain * .8);
		global.player_gems += gems_to_gain - floor(gems_to_gain * .8);	
		ds_map_replace(obj_game.gamedata, "EXP", global.player_exp);
		ds_map_replace(obj_game.gamedata, "gems", global.player_gems);
		LootLockerSubmitScore("14517",string(global.player_exp));
		global.flags = 0;
	
	}

}