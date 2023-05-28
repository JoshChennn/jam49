/// @description PATH COLLIDE WITH EACH OTHER
	
path_delete(path);
path = path_add();

//destination_x = x + choose(irandom_range(-96, - 128), irandom_range(96, 128));
//destination_y = y + choose(irandom_range(-96, - 128), irandom_range(96, 128));

var dist = 48;

xx = x + irandom_range(-dist, dist);
yy = y + irandom_range(-dist, dist);

if (place_empty(xx, yy, par_enemy_parent) && place_empty(xx, yy, par_wall_basic)){

	mp_grid_path(global.grid, path, x, y, xx, yy, true);
	path_start(path, movespeed * 1.5, path_action_stop, true);

} else alarm[1] = 1;

collision_timer = 15;