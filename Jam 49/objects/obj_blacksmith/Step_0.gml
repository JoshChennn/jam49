if (distance_to_object(obj_player) >= 160 and popup != 0) {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_tradeButton);
}
if popup != 0 and !typer.typing and !instance_exists(obj_tradeButton) {
	instance_create_layer(0,0,"Instances",obj_tradeButton);
}