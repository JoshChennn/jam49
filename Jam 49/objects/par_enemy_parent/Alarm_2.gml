/// @description UPDATING SPRITES (DIRECTIONAL)

			 if (direction div 45 == 0) sprite_index = spr_enemy_01_right;
		else if (direction div 45 == 1) sprite_index = spr_enemy_01_up_right;
		else if (direction div 45 == 2) sprite_index = spr_enemy_01_up;
		else if (direction div 45 == 3) sprite_index = spr_enemy_01_up_left;
		else if (direction div 45 == 4) sprite_index = spr_enemy_01_left;
		else if (direction div 45 == 5) sprite_index = spr_enemy_01_down_left;
		else if (direction div 45 == 6) sprite_index = spr_enemy_01_down;
		else if (direction div 45 == 7) sprite_index = spr_enemy_01_down_right;

alarm[2] = 10;