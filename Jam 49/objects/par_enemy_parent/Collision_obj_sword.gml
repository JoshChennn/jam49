if (noob_mode <= 0) && (other.swinging) && (!sound_played) {

	noob_mode = 20;
	
	if (obj_player.hsp_dash != 0) || (obj_player.vsp_dash != 0){ 
	
		hlth -= other.damage * 1.5;
	
		if (!audio_is_playing(sfx_enemy_hit_heavy)){
			audio_play_sound(sfx_enemy_hit_heavy, 10, false);
			sound_played = true;
		}

	} else {
	
		hlth -= other.damage;
	
		if (!audio_is_playing(sfx_enemy_hit_sword_01)) && (!audio_is_playing(sfx_enemy_hit_sword_02)) && (!audio_is_playing(sfx_enemy_hit_sword_03)){
			audio_play_sound(choose(sfx_enemy_hit_sword_01, sfx_enemy_hit_sword_02, sfx_enemy_hit_sword_03), 10, false);
			sound_played = true;
		}
	
	}
	
	
	alarm[0] = -1;
	alarm[1] = -1;
	path_end();
	
	path_start(pth_crazy, 8, path_action_stop, false);
	path_orientation = obj_player.dir;
	


}