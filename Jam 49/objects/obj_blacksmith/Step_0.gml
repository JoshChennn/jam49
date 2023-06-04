if (distance_to_object(obj_player) >= 160 and popup != 0) {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_price);
}
if (global.player_gems < price) {
	trade_possible = false;
}
else {
	trade_possible = true;
}