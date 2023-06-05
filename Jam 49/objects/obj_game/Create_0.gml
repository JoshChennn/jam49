randomize();

alarm[2] = 240;

global.portalHealth = 100;

//AUDIO VOLUME
global.sfxVol = 100;
global.musicVol = 60;

global.sword_level = 0;
global.bow_level = 0;
global.arrows = 0;

gems_to_gain = 0;
exp_to_gain = 0;
played_flag_notification = false;

if (!file_exists("gamedata.penguin")){
	
	global.player_exp = 0;
	global.player_gems = 0;
	global.sword_level = 0;
	global.bow_level = 0;
	
	gamedata = ds_map_create();
	ds_map_replace(gamedata, "EXP", global.player_exp);
	ds_map_replace(gamedata, "gems", global.player_gems);
	ds_map_replace(gamedata, "sword", global.sword_level);
	ds_map_replace(gamedata, "bow", global.bow_level);
	ds_map_replace(gamedata, "arrows", global.arrows);
	
	//Set username the first time
	alarm_set(1,60);
	
} else {

	gamedata = ds_map_secure_load("gamedata.penguin");
	var exp_value = ds_map_find_value(gamedata, "EXP");
	var gem_value = ds_map_find_value(gamedata, "gems");
	global.player_exp = exp_value;
	global.player_gems = gem_value;
	global.sfxVol = ds_map_find_value(gamedata, "sfx");
	global.musicVol = ds_map_find_value(gamedata, "bgm");
	global.sword_level = ds_map_find_value(gamedata, "sword");
	global.bow_level = ds_map_find_value(gamedata, "bow");
	global.arrows = ds_map_find_value(gamedata, "arrows");
	
	if (global.sfxVol == undefined) global.sfxVol = 100;
	if (global.musicVol == undefined) global.musicVol = 60;
	
	if (global.sword_level == undefined) global.sword_level = 0;
	if (global.bow_level == undefined) global.bow_level = 0;
}

global.flags = 0;