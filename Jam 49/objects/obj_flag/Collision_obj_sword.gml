if (other.swinging){

	if (!active){
	
		active = true;
		global.flags++;

	}

	audio_play_sound(sfx_enemy_hit_sword_01, 10, false);

}