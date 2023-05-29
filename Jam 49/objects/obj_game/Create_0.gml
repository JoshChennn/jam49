randomize();

if (!file_exists("gamedata.penguin")){
	
	global.player_exp = 0;
	
	gamedata = ds_map_create();
	ds_map_replace(gamedata, "EXP", global.player_exp);
	
	
} else {

	gamedata = ds_map_secure_load("gamedata.penguin");
	var exp_value = ds_map_find_value(gamedata, "EXP");
	global.player_exp = exp_value;

}


