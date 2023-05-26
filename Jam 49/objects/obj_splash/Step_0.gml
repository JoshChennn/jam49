if (forth) {

	if (image_alpha < 1) image_alpha += tan(image_alpha * .5) * .1;
	else forth = false;

} else {

	if (image_alpha > 0) image_alpha -= .01;
	else {
	
		instance_destroy();
		room_goto_next();
	
	}

}

if (keyboard_check_pressed(vk_space)){

	//if (audio_is_playing(sfx_splash_screen)) audio_stop_sound(sfx_splash_screen);
	room_goto_next();

}