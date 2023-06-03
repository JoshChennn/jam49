with (obj_blacksmith) {
	if distance_to_object(obj_player) < 200 {
		switch (deal) {
			case "SWORD":
				var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
				float._text = "-"+string(find_upgrade_price("SWORD"))+" GEMS";
				global.player_gems -= find_upgrade_price("SWORD");
				global.sword_level += 1;
				break;
			case "BOW":
				var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
				float._text = "-"+string(find_upgrade_price("BOW"))+" GEMS";
				global.player_gems -= find_upgrade_price("BOW");
				global.bow_level += 1;
				break;
		}
		instance_destroy(typer);
		typer = instance_create_layer(0,0,"Instances",obj_typewriter);
		typer._text = "Sank you very good! If you would like anozer upgrade, here is it:\n(Press SPACE to exit, and R to refresh deal)";
		instance_destroy(other);
	}
} 