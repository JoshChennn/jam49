ds_map_replace(gamedata, "EXP", global.player_exp);
ds_map_replace(gamedata, "gems", global.player_gems);
ds_map_replace(gamedata, "bgm", global.musicVol);
ds_map_replace(gamedata, "sfx", global.sfxVol);
ds_map_replace(gamedata, "sword", global.sword_level);
ds_map_replace(gamedata, "bow", global.bow_level);

ds_map_secure_save(gamedata, "gamedata.penguin");

alarm[2] = 240;