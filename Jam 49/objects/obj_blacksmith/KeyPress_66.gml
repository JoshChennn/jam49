if (distance_to_object(obj_player) < 160 and popup != 0) {
	
	if (global.player_exp < 5){
		audio_play_sound(sfx_error, 10, false);
		exit;
	}
	
	
	if (global.bow_level == 0) {
		deal = "SWORD";
	}
	else {
		deal = choose("SWORD","BOW");
	}
	if (deal == "SWORD") {
		price = global.sword_level*5+5+rand_difference();
	}
	else {
		price = global.bow_level*4+6+rand_difference();
	}
	if (!audio_is_playing(sfx_new_offer)) audio_play_sound(sfx_new_offer, 10, false);
	global.player_exp -= 5;
	//LootLockerSubmitScore("14517",string(global.player_exp));
	var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
	float._text = "-5 EXP";
	instance_destroy(typer);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Storekeeper: No? Ok, no problemo! Stephano very patient! Here is what I will offer now:";
	exit;
}
 