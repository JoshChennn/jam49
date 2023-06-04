ds_map_replace(gamedata, "EXP", global.player_exp);
ds_map_replace(gamedata, "gems", global.player_gems);
ds_map_replace(gamedata, "bgm", global.musicVol);
ds_map_replace(gamedata, "sfx", global.sfxVol);

ds_map_secure_save(gamedata, "gamedata.penguin");

audio_group_unload(grp_bgm);
audio_group_unload(grp_gems);
audio_group_unload(grp_combat);
audio_group_unload(grp_various);
audio_group_unload(grp_bgs);