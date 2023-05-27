var cell_width = 64
var number_of_hcells = room_width div cell_width;
var number_of_vcells = room_height div cell_width;

grid = mp_grid_create(0, 0, number_of_hcells, number_of_vcells, cell_width, cell_width);

mp_grid_add_instances(grid, par_wall_basic, true);