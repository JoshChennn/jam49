switch item {
	case "BOW": //Buy bow
		if (global.bow_level == 0) {
			global.bow_level = 1;
			global.player_gems -= 15;
			var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
			float._text = "-15 GEMS";
		}
		break;
	case "EXTRA LIFE": //Extra hearts
		if (obj_player.hearts < 3) {
			obj_player.hearts = clamp(obj_player.hearts+1,0,3);
			global.player_gems -= 10;
			var float = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_floatText);
			float._text = "-10 GEMS";
		}
		break;
	if (global.bow_level > 0) {
		item = "EXTRA LIFE";
	}
	else {
		item = choose("BOW","EXTRA LIFE");
	}
	instance_destroy(typer);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Ok... Don't know why you would want that. I have another strange object for you, you seem like the type.";
}