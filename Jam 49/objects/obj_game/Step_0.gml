if (room != rm_intro) && (audio_is_playing(sfx_splash_screen)) audio_stop_sound(sfx_splash_screen);

if (room == rm_gameover){

	instance_deactivate_object(obj_player);
	instance_deactivate_object(obj_heart);
	instance_deactivate_object(obj_sword);
	instance_deactivate_object(obj_fade);

} else {

	instance_activate_object(obj_player);
	instance_activate_object(obj_heart);
	instance_activate_object(obj_sword);
	instance_activate_object(obj_fade);
	
	if (audio_is_playing(bgm_gameover)) audio_sound_gain(bgm_gameover, 0, 60);

}