/// @description PATH CHASE PLAYER

path_delete(path);
path = path_add();

destination_x = obj_player.x;
destination_y = obj_player.y;

if (mp_grid_path(global.grid, path, x, y, destination_x, destination_y, true))
	path_start(path, movespeed, path_action_stop, true);
else alarm[3] = 1;

alarm[0] = 120;
alarm[2] = 1;