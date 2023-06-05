if (distance_to_object(obj_player) < 160 and popup != 0) {
	
	if (global.player_gems >= price){
	
		switch deal {
			case "SWORD":
				if (global.player_gems >= price){
					var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
					float._text = "-"+string(price)+" GEMS";
					global.player_gems -= price;
					global.sword_level += 1;
					audio_play_sound(sfx_purchase, 10, false);
				}	
			break;
			case "BOW":
				if (global.player_gems >= price){
					var float = instance_create_layer(x+150,y+100,"Instances",obj_floatText);
					float._text = "-"+string(price)+" GEMS";
					global.player_gems -= price;
					global.bow_level += 1;
					audio_play_sound(sfx_purchase, 10, false);
				} 
			break;
		}
	
		if (global.bow_level == 0) {
			deal = "SWORD";
		}
		else {
			deal = choose("SWORD","BOW");
		}
		if (deal == "SWORD") {
			price = global.sword_level*5+5+rand_difference();
		}
		else {
			price = global.bow_level*4+6+rand_difference();
		}
		instance_destroy(typer);
		typer = instance_create_layer(0,0,"Instances",obj_typewriter);
		typer._text = "Very good senor! If you would like another upgrade, here it is!";
		
	} else if (!audio_is_playing(sfx_error)) audio_play_sound(sfx_error, 10, false); 

}