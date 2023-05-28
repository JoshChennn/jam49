if (distance_to_object(obj_player) >= 180 and popup != 0) {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_tradeButton);
	instance_destroy(obj_exitButton);
}
if (popup != 0 and typer.typing == false and !instance_exists(obj_tradeButton)) {
	instance_create_layer(0,0,obj_tradeButton);
	instance_create_layer(0,0,obj_exitButton);
}