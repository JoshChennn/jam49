with (obj_blacksmith) {
	if distance_to_object(obj_player) < 200 {
		switch (deal) {
			case "SWORD":
				var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
				float._text = "-"+string(find_upgrade_price("SWORD"))+" GEMS";
				global.gems -= find_upgrade_price("SWORD");
				global.sword_level += 1;
				break;
			case "BOW":
				if (global.bow_level > 0) {
					var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
					float._text = "-"+string(find_upgrade_price("BOW"))+" GEMS";
					global.gems -= global.bow_level*4 + 1;
					global.bow_level += 1;
				}
				break;
		}
		instance_destroy(typer);
		typer = instance_create_layer(0,0,"Instances",obj_typewriter);
		var level = 0;
		switch (deal) {
			case "SWORD":
				level = global.sword_level + 1;
				break;
			case "BOW":
				level = global.bow_level + 1;
				break
		}
		typer._text = "Sank you very good!\nI can upgraid yore "+deal+" again to "+string(level)+" for ze amasing price of "+string(find_upgrade_price(deal))+" gems!\nWould you like to complete this transaction?\n(Press SPACE to exit)";
		instance_destroy(other);
	}
} 