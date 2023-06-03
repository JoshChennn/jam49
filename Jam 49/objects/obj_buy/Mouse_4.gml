if (image_blend != c_grey) {
	switch _id {
		case 0: //Buy bow
			global.bow_level = 1;
			global.player_gems -= 15;
			var float = instance_create_layer(x+100,y+75,"Instances",obj_floatText);
			float._text = "-15 GEMS";
			break;
		case 1: //Extra hearts
			obj_player.hearts = clamp(obj_player.hearts+1,0,3);
			global.player_gems -= 10;
			var float = instance_create_layer(x+100,y+75,"Instances",obj_floatText);
			float._text = "-10 GEMS";
			break;
	}
}