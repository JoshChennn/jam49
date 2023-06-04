if (distance_to_object(obj_player) < 160 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	if (!audio_is_playing(sfx_scroll_open)) audio_play_sound(sfx_scroll_open, 10, false);
	popup.image_index = 3;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Mayor: Hmmm... you have changes, you say? Well, fine, but they better be good. My mother calls me every day, asking how things are doing, so don't mess this up!";
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