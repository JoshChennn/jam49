if (object_get_name(object_index) == "obj_enemy_01"){
		 
	movespeed = 1.5;
	
	sprite_left = spr_enemy_01_left;
	sprite_right = spr_enemy_01_right;
	sprite_up = spr_enemy_01_up;
	sprite_down = spr_enemy_01_down;
	sprite_up_left = spr_enemy_01_up_left;
	sprite_up_right = spr_enemy_01_up_right;
	sprite_down_left = spr_enemy_01_down_left;
	sprite_down_right = spr_enemy_01_down_right;
		 
} else if (object_get_name(object_index) == "obj_enemy_02"){ 
	
	movespeed = .85;
	
	sprite_left = spr_enemy_02_left;
	sprite_right = spr_enemy_02_right;
	sprite_up = spr_enemy_02_up;
	sprite_down = spr_enemy_02_down;
	sprite_up_left = spr_enemy_02_up_left;
	sprite_up_right = spr_enemy_02_up_right;
	sprite_down_left = spr_enemy_02_down_left;
	sprite_down_right = spr_enemy_02_down_right;
		
} else if (object_get_name(object_index) == "obj_enemy_03"){
	
	movespeed = .5;
	
	sprite_left = spr_enemy_03_left;
	sprite_right = spr_enemy_03_right;
	sprite_up = spr_enemy_03_up;
	sprite_down = spr_enemy_03_down;
	sprite_up_left = spr_enemy_03_up_left;
	sprite_up_right = spr_enemy_03_up_right;
	sprite_down_left = spr_enemy_03_down_left;
	sprite_down_right = spr_enemy_03_down_right;
	
}

cell_width = obj_motion_planning.cell_width;
radius = 36;
radius_player = radius * 2.5;

path = path_add();

destination_x = obj_player.x;
destination_y = obj_player.y;

potential_direction = point_direction(x, y, destination_x, destination_y);

alarm[0] = 1;
alarm[1] = -1;
alarm[2] = 1;

collision_timer = 0;
