if (distance_to_object(obj_player) < 180 and popup != 0) {
	
	if (global.player_exp < 5){
		audio_play_sound(sfx_error, 10, false);
		exit;
	}
	
		if (global.bow_level > 0) {
			if (obj_player.hearts == 3) {
				item = "ARROWS"
			}
			else {
				item = choose("EXTRA LIFE","ARROWS");
			}
		}
		else {
			if (obj_player.hearts == 3) {
				item = "BOW"
			}
			else {
				item = choose("BOW","EXTRA LIFE");
			}
		}
	
		if (item == "BOW") {
			price = 15 + rand_difference();
		}
		else if (item == "EXTRA LIFE") {
			price = 10 + rand_difference();
		}
		else {
			arrows_increase = 5 + rand_difference();
			price = arrows_increase*2 + rand_difference();
		}
		if (!audio_is_playing(sfx_new_offer)) audio_play_sound(sfx_new_offer, 10, false);
		global.player_exp -= 5;
		//LootLockerSubmitScore("14517",string(global.player_exp));
		var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
		float._text = "-5 EXP";
		instance_destroy(typer);
		typer = instance_create_layer(0,0,"Instances",obj_typewriter);
		typer._text = "Hold on, let me check the back... Here, I don't know what this is, maybe it will be of value to you?";

}

