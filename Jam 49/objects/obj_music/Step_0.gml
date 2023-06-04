if (room == rm_mirrorWorld){

	if (bgm_index == -1){
	
		if (played_songs < array_length(song_selection)){

			do bgm_index = irandom(array_length(song_selection) - 1);
			until (song_selection[bgm_index] != -1)
	
			current_bgm = audio_play_sound(song_selection[bgm_index], 10, false);
			song_selection[bgm_index] = -1;
			played_songs++;
	
		} else {
		
			alarm[0] = 1;
		
		}

	}

}


var sound_val = (1 / instance_number(obj_gemstone_audio_dummy)) * 3;
clamp(sound_val, .25, 1);

audio_group_set_gain(grp_gems, sound_val, 1); 


