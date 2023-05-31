randomize();

if (!file_exists("gamedata.penguin")){
	
	global.player_exp = 0;
	global.player_gems = 0;
	
	gamedata = ds_map_create();
	ds_map_replace(gamedata, "EXP", global.player_exp);
	ds_map_replace(gamedata, "gems", global.player_gems);
	
	
} else {

	gamedata = ds_map_secure_load("gamedata.penguin");
	var exp_value = ds_map_find_value(gamedata, "EXP");
	var gem_value = ds_map_find_value(gamedata, "gems");
	global.player_exp = exp_value;
	global.player_gems = gem_value;

}