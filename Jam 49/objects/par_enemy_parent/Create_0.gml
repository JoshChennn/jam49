sound_played = false;
last_x = x;
last_y = y;

if (object_get_name(object_index) == "obj_enemy_01"){
		 
	movespeed = 1.5 + floor(global.sword_level * .05);
	hlth = 15 + floor(global.sword_level * .8);
	max_hlth = hlth;
	damage = .5 + floor(global.sword_level * .15);
	
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
	hlth = 30 + floor(global.sword_level * 1.2);
	max_hlth = hlth;
	damage = .5;
	
	sprite_left = spr_enemy_02_left;
	sprite_right = spr_enemy_02_right;
	sprite_up = spr_enemy_02_up;
	sprite_down = spr_enemy_02_down;
	sprite_up_left = spr_enemy_02_up_left;
	sprite_up_right = spr_enemy_02_up_right;
	sprite_down_left = spr_enemy_02_down_left;
	sprite_down_right = spr_enemy_02_down_right;
	
	image_xscale = .75;
	image_yscale = .75;
		
} else if (object_get_name(object_index) == "obj_enemy_03"){
	
	movespeed = .5;
	hlth = 50;
	max_hlth = hlth;
	damage = .5;
	
	foot_print_timer = 0;
	foot_print_orientation = 0;
	invisible_counter = 0;
	invisible_state = 0;
	invisible_time = 0;
	state_switch = 0;
	
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
state = 0;
pre_attack_timer = 0;
blink = 0;

noob_mode = 0;

path = path_add();

destination_x = obj_player.x;
destination_y = obj_player.y;

potential_direction = point_direction(x, y, destination_x, destination_y);

alarm[0] = 1;
alarm[1] = -1;
alarm[2] = 1;

collision_timer = 0;
