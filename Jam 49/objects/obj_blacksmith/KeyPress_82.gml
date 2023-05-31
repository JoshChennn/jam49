if (distance_to_object(obj_player) < 180 and popup != 0 and !typer.typing) {
	if (global.bow_level == 0) {
		deal = "SWORD";
	}
	else {
		deal = choose("SWORD","BOW");
	}
	global.player_exp -= 50;
	var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
	float._text = "-50 EXP";
	instance_destroy(typer);
	if (instance_exists(obj_tradeButton))instance_destroy(obj_tradeButton);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "I cee you vould like somzing else! Vell, here is vat I shall offer now:\n(Press SPACE to exit, and R to refresh deal)";
}