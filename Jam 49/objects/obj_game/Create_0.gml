randomize();

gamedata = ds_map_create();

if (!file_exists("gamedata.penguin")) exit;

ds_map_destroy(gamedata);
gamedata = ds_map_secure_load("gamedata.penguin");

//ds_map_replace(gamedata, "EXP", player_experience_points);

player_experience_points = ds_map_find_value(gamedata, "EXP");

counter = 10;
