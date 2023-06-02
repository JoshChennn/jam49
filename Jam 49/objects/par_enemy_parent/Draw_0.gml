if (sprite_index != -1) draw_self();

var dist = 48;
var hp = (hlth / max_hlth) * 100;
draw_set_alpha(floor(image_alpha));
	draw_healthbar(x - dist, y - 48 - 8, x + dist, y - 32 - 8, hp, c_dkgray, c_maroon, c_green, 0, true, true);
draw_set_alpha(1);

/*
if (object_get_name(object_index) == "obj_enemy_03"){

	draw_text(x, y -64, "State: " + string(state));

}

/*
//Enemy 3 footprints
if (object_get_name(object_index) == "obj_enemy_03"){

	foot_print_timer++;
	
	if (foot_print_timer mod 48 == 0){
	
		foot_print_orientation++;
		if (foot_print_orientation > 1) foot_print_orientation = 0;
		
		surface_set_target(global.surf);
			draw_sprite_ext(spr_enemy_03_footsteps, foot_print_orientation, x, y, 1, 1, direction, c_white, .8);
		surface_reset_target();
	
	}

}

//draw_text(x, y- 32, distance_to_object(obj_player));

/*
draw_line(x, y, x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction));

draw_circle(x, y, radius, true);

draw_set_color(c_orange);
draw_circle(x, y, radius_player, true);
draw_set_color(c_white);


