if (distance_to_object(obj_player) >= 160 and popup != 0) {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	with (obj_buy) instance_destroy();
}
if popup != 0 and !typer.typing and !instance_exists(obj_buy) {
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
if (popup != 0 and past_item != item) {
	with (obj_buy) instance_destroy();
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
past_item = item;