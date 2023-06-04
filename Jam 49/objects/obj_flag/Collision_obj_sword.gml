if (other.swinging){

	if (!active){
	
		active = true;
		global.flags++;
		image_index = 1;

	}

	if (!audio_is_playing(sfx_enemy_hit_sword_01)) audio_play_sound(sfx_enemy_hit_sword_01, 10, false);

}