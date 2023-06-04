if (distance_to_object(obj_player) < 160 and popup == 0) {
	//Popup
	if (!audio_is_playing(sfx_scroll_open)) audio_play_sound(sfx_scroll_open, 10, false);
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	popup.image_index = 0;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Blacksmith: Hola, mi amigo!\nCome, get an upgrade at Stephano's Senior Silverwork (and other metals)! I promise these prices are definitely fair, guarunteed for sure!";
	instance_create_layer(0,0,"Instances",obj_price);
}
else if popup != 0 and typer.typing == false {
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