	 if (object_get_name(object_index) == "obj_enemy_01") movespeed = 1.5;
else if (object_get_name(object_index) == "obj_enemy_02") movespeed = .85;
else if (object_get_name(object_index) == "obj_enemy_03") movespeed = .5;

cell_width = obj_motion_planning.cell_width;
radius = 36;

path = path_add();

destination_x = obj_player.x;
destination_y = obj_player.y;

potential_direction = point_direction(x, y, destination_x, destination_y);

alarm[0] = 1;

collision_timer = 0;
