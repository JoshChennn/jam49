if (distance_to_object(obj_player) < 180 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_tutorialPopup);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Haha, we only sell POTATO PEELS!\nAHAHAHAHAAAAAAAAAAAAA\n*inhale*\nAAAAAHAHAHAHAHAHA\n   . . .   \nAlso, we have an aisle for hero stuff, come check it out if you wanna.";
	
}
else if popup != 0 and !typer.typing {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	with(obj_buy) instance_destroy();
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
	var new_buy_button = instance_create_layer(0,0,"Instances",obj_buy);
	new_buy_button._id = 0;
	new_buy_button = instance_create_layer(0,0,"Instances",obj_buy);
	new_buy_button._id = 1;
}