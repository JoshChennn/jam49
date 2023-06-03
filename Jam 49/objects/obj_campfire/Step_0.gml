if (distance_to_object(obj_player) >= 130 and popup != 0) {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
}