if (distance_to_object(obj_player) < 180 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_scroll);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Hello, random person with a weapon, you!\nI am storeowner Steve Snecklestone, and PLEASE don't\npoint that thing at me!\nTake a look at what we've got:\n(Press SPACE to exit, and R to refresh the shop)";
	var time_left = instance_create_layer(0,0,"Instances",obj_timeLeft);
	time_left.text_x = 350;
	time_left.text_y = -300;
	time_left._parent = self;
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