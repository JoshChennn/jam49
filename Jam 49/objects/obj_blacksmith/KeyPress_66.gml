if (global.player_exp >= 10){
	if (distance_to_object(obj_player) < 160 and popup != 0) {
		if (global.bow_level == 0) {
			deal = "SWORD";
		}
		else {
			deal = choose("SWORD","BOW");
		}
		if (deal == "SWORD") {
			price = global.sword_level*2+5+rand_difference();
		}
		else {
			price = global.bow_level*3+4+rand_difference();
		}
		if (!audio_is_playing(sfx_new_offer)) audio_play_sound(sfx_new_offer, 10, false);
		global.player_exp -= 10;
		var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
		float._text = "-10 EXP";
		instance_destroy(typer);
		typer = instance_create_layer(0,0,"Instances",obj_typewriter);
		typer._text = "Storekeeper: No? Ok, no problemo! Stephano very patient! Here is what I will offer now:";
	}
} else if (!audio_is_playing(sfx_error)) audio_play_sound(sfx_error, 10, false);