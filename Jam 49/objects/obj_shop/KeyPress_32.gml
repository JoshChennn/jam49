if (distance_to_object(obj_player) < 160 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	popup.image_index = 2;
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Hello, random person\nwith a weapon,\nyou! PLEASE don't point\nthat thing at me!";
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
	switch (item) {
		case "BOW":
			new_buy_button._id = 0;
			break;
		case "EXTRA LIFE":
			new_buy_button._id = 1;
			break;
	}
}