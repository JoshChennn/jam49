if (noob_mode <= 0 and other.swinging){

	noob_mode = 20;
	hlth -= other.damage;
	alarm[0] = -1;
	alarm[1] = -1;
	path_end();
	
	path_start(pth_crazy, 8, path_action_stop, false);
	path_orientation = obj_player.dir;
	
	if (!audio_is_playing(sfx_enemy_hit_sword_01)) 
	&& (!audio_is_playing(sfx_enemy_hit_sword_02))
	&& (!audio_is_playing(sfx_enemy_hit_sword_03)) 
		audio_play_sound(choose(sfx_enemy_hit_sword_01, sfx_enemy_hit_sword_02, sfx_enemy_hit_sword_03), 10, false);


}