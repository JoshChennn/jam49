
song_selection[0] = bgm_battle_01;
song_selection[1] = bgm_battle_02;
song_selection[2] = bgm_battle_03;
song_selection[3] = bgm_battle_04;
song_selection[4] = bgm_battle_05;

played_songs = 1;
bgm_index = -1;

if (room == rm_mirrorWorld){

	if (audio_is_playing(bgm_village)) audio_stop_sound(bgm_village);

	if (bgm_index == -1){

		bgm_index = irandom(array_length(song_selection) - 1);
		current_bgm = audio_play_sound(song_selection[bgm_index], 10, false);
		song_selection[bgm_index] = -1;

	}

} else {
	
	audio_stop_sound(current_bgm);
	if (!audio_is_playing(bgm_village)) audio_play_sound(bgm_village, 10, true);
	
}

audio_group_set_gain(grp_bgm, .2, 1);
audio_group_set_gain(grp_gems, .75, 1);
