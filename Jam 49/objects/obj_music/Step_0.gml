if (!audio_is_playing(bgm_index)){
	
	if (played_songs < array_length(song_selection)){

		do bgm_index = irandom(array_length(song_selection) - 1);
		until (song_selection[bgm_index] != -1)
	
		audio_play_sound(bgm_index, 10, false);
		
		song_selection[bgm_index] = -1;
		played_songs++;
	
	} else {
		
		alarm[0] = 1;
		
	}

}