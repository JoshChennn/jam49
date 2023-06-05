if (distance_to_object(obj_player) < 130 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	popup.image_index = 1;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Rnakings may take a few seconds to update. Fight monsters to gain EXP (crowns) and become king!";
	if (!audio_is_playing(sfx_scroll_open)) audio_play_sound(sfx_scroll_open, 10, false);
}
else if popup != 0 and typer.typing = false {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	if (!audio_is_playing(sfx_scroll_close)) audio_play_sound(sfx_scroll_close, 10, false);
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
}