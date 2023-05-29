with (obj_blacksmith) {
	if distance_to_object(obj_player) < 200 {
		switch (deal) {
			case "SWORD":
				global.gems -= global.sword_level*3 + 1;
				global.sword_level += 1;
				break;
			case "BOW":
				if (global.bow_level > 0) {
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
		typer._text = "Sank you very good!\nI can upgraid yore "+deal+" again to "+string(level)+" for ze amasing price of "+string(find_price(deal))+" gems!\nWould you like to complete this transaction?\n(Press SPACE to exit)";
		instance_destroy(other);
	}
} 