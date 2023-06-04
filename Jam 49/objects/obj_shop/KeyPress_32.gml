if (distance_to_object(obj_player) < 160 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	popup.image_index = 2;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Shopkeeper: Hello, random person with a weapon,you! Feel free to buy whatever we've got, and PLEASE don't point that thing at me!";
	instance_create_layer(0,0,"Instances",obj_price);
	if (!audio_is_playing(sfx_scroll_open)) audio_play_sound(sfx_scroll_open, 10, false);
}
else if popup != 0 and !typer.typing {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_price);
	if (!audio_is_playing(sfx_scroll_close)) audio_play_sound(sfx_scroll_close, 10, false);
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
}