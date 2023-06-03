if (distance_to_object(obj_player) < 180 and popup != 0) {
	if (global.bow_level > 0) {
		item = "EXTRA LIFE";
	}
	else {
		item = choose("BOW","EXTRA LIFE");
	}
	global.player_exp -= 5;
	var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
	float._text = "-5 EXP";
}