
if (keyboard_check(ord("P"))){

	surface_set_target(global.surf);
		draw_circle(mouse_x, mouse_y, 12, false);
	surface_reset_target();

}

if (surface_exists(global.surf)) draw_surface(global.surf, 0, 0);