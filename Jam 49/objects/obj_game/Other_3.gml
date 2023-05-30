ds_map_replace(obj_game.gamedata, "EXP", global.player_exp);
ds_map_replace(obj_game.gamedata, "gems", global.player_gems);

ds_map_secure_save(gamedata, "gamedata.penguin");