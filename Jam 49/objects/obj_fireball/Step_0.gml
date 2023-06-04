//image_alpha = 1 - (tanh(path_position) * .5);

if  ((!deflect) && (path_index == -1) && (alarm[0] == -1)) || place_meeting(x, y, par_wall_basic){

	instance_destroy();
	instance_create_depth(x, y, depth, obj_explosion)

}

if (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	instance_create_depth(x, y, depth, obj_explosion);
	if (!audio_is_playing(sfx_player_hit_fire)) audio_play_sound(sfx_player_hit_fire, 10, false);
	instance_destroy();

}

if (place_meeting(x, y, obj_sword)) && (obj_sword.swinging){

	deflect = true;
	path_end();
	direction = obj_player.dir;
	speed = 12;
	if (!audio_is_playing(sfx_deflect_fire_ball)) audio_play_sound(sfx_deflect_fire_ball, 10, false);

}

image_angle = direction;