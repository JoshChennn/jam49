if (distance_to_object(obj_player) < 160 and popup != 0) {
	if (global.bow_level == 0) {
		deal = "SWORD";
	}
	else {
		deal = choose("SWORD","BOW");
	}
	if (deal == "SWORD") {
		price = global.sword_level*2+5+rand_difference();
	}
	else {
		price = global.bow_level*3+4+rand_difference();
	}
	global.player_exp -= 10;
	var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
	float._text = "-10 EXP";
	instance_destroy(typer);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Storekeeper: No? Ok, no problemo! Stephano very patient! Here is what I will offer now:";
}