audio_stop_all();
if (!audio_is_playing(bgm_gameover)) audio_play_sound(bgm_gameover, 10, false);
time = 0;
counter = 0;