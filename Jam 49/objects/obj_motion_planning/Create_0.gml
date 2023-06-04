cell_width = 16;
var number_of_hcells = room_width div cell_width;
var number_of_vcells = room_height div cell_width;

global.grid = mp_grid_create(0, 0, number_of_hcells, number_of_vcells, cell_width, cell_width);

alarm[0] = 1;