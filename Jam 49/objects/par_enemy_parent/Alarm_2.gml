/// @description UPDATING SPRITES (DIRECTIONAL)

switch (object_get_name(object_index)){

	case "obj_enemy_01":

			 if (direction div 45 == 0) sprite_index = spr_enemy_01_right;
		else if (direction div 45 == 1) sprite_index = spr_enemy_01_up_right;
		else if (direction div 45 == 2) sprite_index = spr_enemy_01_up;
		else if (direction div 45 == 3) sprite_index = spr_enemy_01_up_left;
		else if (direction div 45 == 4) sprite_index = spr_enemy_01_left;
		else if (direction div 45 == 5) sprite_index = spr_enemy_01_down_left;
		else if (direction div 45 == 6) sprite_index = spr_enemy_01_down;
		else if (direction div 45 == 7) sprite_index = spr_enemy_01_down_right;

	break;
	
	case "obj_enemy_02":

			 if (direction div 45 == 0) sprite_index = spr_enemy_02_right;
		else if (direction div 45 == 1) sprite_index = spr_enemy_02_up_right;
		else if (direction div 45 == 2) sprite_index = spr_enemy_02_up;
		else if (direction div 45 == 3) sprite_index = spr_enemy_02_up_left;
		else if (direction div 45 == 4) sprite_index = spr_enemy_02_left;
		else if (direction div 45 == 5) sprite_index = spr_enemy_02_down_left;
		else if (direction div 45 == 6) sprite_index = spr_enemy_02_down;
		else if (direction div 45 == 7) sprite_index = spr_enemy_02_down_right;

	break;
	
	case "obj_enemy_03":

			 if (direction div 45 == 0) sprite_index = spr_enemy_03_right;
		else if (direction div 45 == 1) sprite_index = spr_enemy_03_up_right;
		else if (direction div 45 == 2) sprite_index = spr_enemy_03_up;
		else if (direction div 45 == 3) sprite_index = spr_enemy_03_up_left;
		else if (direction div 45 == 4) sprite_index = spr_enemy_03_left;
		else if (direction div 45 == 5) sprite_index = spr_enemy_03_down_left;
		else if (direction div 45 == 6) sprite_index = spr_enemy_03_down;
		else if (direction div 45 == 7) sprite_index = spr_enemy_03_down_right;

	break;



}

alarm[2] = 10;