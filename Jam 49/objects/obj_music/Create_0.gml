if (room == rm_mainWorld){

	if (!audio_is_playing(bgm_village)) audio_play_sound(bgm_village, 10, true);

} else if (room == rm_mirrorWorld){
	
	if (audio_is_playing(bgm_village)) audio_stop_sound(bgm_village);
	
	song_selection[0] = bgm_battle_01;
	song_selection[1] = bgm_battle_02;
	song_selection[2] = bgm_battle_03;
	song_selection[3] = bgm_battle_04;
	song_selection[4] = bgm_battle_05;

	played_songs = 1;

	bgm_index = -1;

	if (!audio_is_playing(bgm_index)){

		bgm_index = irandom(array_length(song_selection) - 1);
		audio_play_sound(bgm_index, 10, false);
		song_selection[bgm_index] = -1;

	}

}

audio_group_set_gain(grp_bgm, .7, 1);