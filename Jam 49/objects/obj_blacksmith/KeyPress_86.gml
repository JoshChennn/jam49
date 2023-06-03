if (distance_to_object(obj_player) < 160 and popup != 0) {
	switch deal {
		case "SWORD":
			var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
			float._text = "-"+string(find_upgrade_price("SWORD"))+" GEMS";
			global.gems -= find_upgrade_price("SWORD");
			global.sword_level += 1;
			break;
		case "BOW":
			var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
			float._text = "-"+string(find_upgrade_price("BOW"))+" GEMS";
			global.gems -= global.bow_level*4 + 1;
			global.bow_level += 1;
			break;
	}
	instance_destroy(typer);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Danke! Now, if you would like\nanother upgrade, here it is!";
	instance_destroy(other);
}