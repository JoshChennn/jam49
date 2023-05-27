if (distance_to_object(obj_player) < 180 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_tutorialPopup);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "A fierce fireball flies from Felix the Fireplace and singes your eyebrows\nMess with the fire, you get the fire!";
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