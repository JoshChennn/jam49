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
	
	if (audio_is_playing(bgm_gameover)) audio_sound_gain(bgm_gameover, 0, 800);

}

if (room == rm_mainWorld) && (audio_is_playing(bgs_portal)) audio_stop_sound(bgs_portal);

if (room == rm_mirrorWorld) && (global.flags >= 5) && (!played_flag_notification){

	played_flag_notification = true;
	audio_play_sound(sfx_flag_notification, 10, false, 2);

}

gems_to_gain = floor(gems_to_gain);
exp_to_gain = floor(exp_to_gain);
global.player_gems = floor(global.player_gems);
global.player_exp = floor(global.player_exp);

//Portal health particles
/*if (room == rm_mirrorWorld and !keyboard_check(vk_escape)) {
	var part = instance_create_depth(obj_camera.x-250+global.portalHealth*5,obj_camera.y-540+irandom_range(165,175),depth,obj_particle);
	part.image_blend = $b9ba05;
	part.direction = 0;
	part.fade = 0.01;
}*/