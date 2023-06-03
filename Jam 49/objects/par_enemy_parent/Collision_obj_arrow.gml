if (noob_mode <= 0 and other.speed != 0){

	noob_mode = 20;
	hlth -= other.damage;
	alarm[0] = -1;
	alarm[1] = -1;
	path_end();
	
	path_start(pth_crazy, 8, path_action_stop, false);
	path_orientation = obj_player.dir;
	
	if (!audio_is_playing(sfx_enemy_hit_arrow_01)) 
	&& (!audio_is_playing(sfx_enemy_hit_arrow_02))
	&& (!audio_is_playing(sfx_enemy_hit_arrow_03)) 
		audio_play_sound(choose(sfx_enemy_hit_arrow_01, sfx_enemy_hit_arrow_02, sfx_enemy_hit_arrow_03), 10, false);

	instance_destroy(other);
}