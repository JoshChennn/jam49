if (distance_to_object(obj_player) < 160 and popup != 0) {
	switch deal {
		case "SWORD":
			var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
			float._text = "-"+string(price)+" GEMS";
			global.player_gems -= price;
			global.sword_level += 1;
			audio_play_sound(sfx_purchase, 10, false);
			break;
		case "BOW":
			var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
			float._text = "-"+string(price)+" GEMS";
			global.player_gems -= price;
			global.bow_level += 1;
			audio_play_sound(sfx_purchase, 10, false);
			break;
	}
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
	instance_destroy(typer);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Very good senor! If you would like another upgrade, here it is!";
}