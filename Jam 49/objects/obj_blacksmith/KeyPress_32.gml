if (distance_to_object(obj_player) < 160 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	popup.image_index = 0;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Blacksmith: Hola, mi \namigo! Come, get\nan upgrade at \nStephano's Senior\nSilverwork (and \nother metals)!";
}
else if popup != 0 and typer.typing == false {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_tradeButton);
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
}