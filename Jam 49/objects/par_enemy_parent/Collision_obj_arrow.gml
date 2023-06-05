if (noob_mode <= 0 and other.speed != 0){

	noob_mode = 20;
	hlth -= other.damage;
	alarm[0] = -1;
	alarm[1] = -1;
	path_end();
	
	path_start(pth_crazy, 8, path_action_stop, false);
	path_orientation = obj_player.dir;
	
	var location = (distance_to_object(obj_player) * .2) * -sign(x - obj_player.x);
	
	if (!audio_is_playing(sfx_enemy_hit_arrow_01)) 
	&& (!audio_is_playing(sfx_enemy_hit_arrow_02))
	&& (!audio_is_playing(sfx_enemy_hit_arrow_03)) 
		audio_play_sound_at(choose(sfx_enemy_hit_arrow_01, sfx_enemy_hit_arrow_02, sfx_enemy_hit_arrow_03), location, y, 0, 100, 300, 1, false, 10);

	instance_destroy(other);
}


if (object_get_name(object_index) == "obj_enemy_03"){

	instance_destroy();
	instance_create_depth(x, y, depth, obj_explosion);

}