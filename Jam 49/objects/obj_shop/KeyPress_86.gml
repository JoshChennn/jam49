switch item {
	case "BOW": //Buy bow
		if (global.bow_level == 0) && (global.player_gems >= price){
			global.bow_level = 1;
			global.player_gems -= price;
			if (!audio_is_playing(sfx_purchase)) audio_play_sound(sfx_purchase, 10, false);
			audio_play_sound(sfx_purchase, 10, false);
			var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
			float._text = "-"+string(price)+" GEMS";
		} else if (!audio_is_playing(sfx_error)) audio_play_sound(sfx_error, 10, false);
		break;
	case "EXTRA LIFE": //Extra hearts
		if (obj_player.hearts < 3) && (global.player_gems >= price){
			obj_player.hearts = clamp(obj_player.hearts+1,0,3);
			global.player_gems -= price;
			if (!audio_is_playing(sfx_purchase)) audio_play_sound(sfx_purchase, 10, false);
			audio_play_sound(sfx_purchase, 10, false);
			var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
			float._text = "-"+string(price)+" GEMS";
		} else if (!audio_is_playing(sfx_error)) audio_play_sound(sfx_error, 10, false);
		break;
	case "ARROWS":
		 if (global.player_gems >= price){
			obj_player.arrows += arrows_increase;
			global.player_gems -= price;
			if (!audio_is_playing(sfx_purchase)) audio_play_sound(sfx_purchase, 10, false);
			audio_play_sound(sfx_purchase, 10, false);
			var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
			float._text = "-"+string(price)+" GEMS";
		 } else if (!audio_is_playing(sfx_error)) audio_play_sound(sfx_error, 10, false);
		break;
	if (global.bow_level > 0) {
		item = "EXTRA LIFE";
	}
	else {
		item = choose("BOW","EXTRA LIFE","ARROWS");
	}
	instance_destroy(typer);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Ok... Don't know why you would want that. I have another strange object for you, you seem like the type.";
}