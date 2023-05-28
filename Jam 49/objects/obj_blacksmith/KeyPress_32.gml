if (distance_to_object(obj_player) < 180 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_tutorialPopup);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Hello, fellow heiumon!\nIt is I, LT658, another hoomahn on this planet!\nHere eez my offer: I can upgrade your "+string(deal)+", for a very good price!\nWould you like to pay {price} to upgrade?";
}
else if popup != 0 and typer.typing == false {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_tradeButton);
	instance_destroy(obj_exitButton);
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
	instance_create_layer(0,0,"Instances",obj_tradeButton);
	instance_create_layer(0,0,"Instances",obj_exitButton);
}