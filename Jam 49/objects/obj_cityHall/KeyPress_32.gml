if (distance_to_object(obj_player) < 160 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	popup.image_index = 3;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "More taxes?\nY/N\n.  .  .  \nJust kidding, \nI'm doing it anyway!";
}
else if popup != 0 and typer.typing = false {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
}