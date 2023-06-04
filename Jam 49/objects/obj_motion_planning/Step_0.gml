/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreibenif (!instance_exists(obj_shield)){
if (!instance_exists(obj_shield)){
	
	var xx = obj_portal.x;
	var yy = obj_portal.y;

	mp_grid_clear_rectangle(global.grid, xx - 430, yy -430, xx + 430, yy + 430);
	instance_destroy(obj_invisible_wall);

}