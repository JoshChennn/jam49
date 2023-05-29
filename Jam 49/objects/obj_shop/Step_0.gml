if (distance_to_object(obj_player) >= 180 and popup != 0) {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
}
if popup != 0 and !typer.typing and !instance_exists(obj_buy) {
	var new_buy_button = instance_create_layer(0,0,"Instances",obj_buy);
	new_buy_button._id = 0;
	new_buy_button = instance_create_layer(0,0,"Instances",obj_buy);
	new_buy_button._id = 1;
}