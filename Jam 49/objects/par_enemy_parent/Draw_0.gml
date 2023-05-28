if (sprite_index != -1) draw_self();

draw_text(x, y- 32, distance_to_object(obj_player));

/*
draw_line(x, y, x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction));

draw_circle(x, y, radius, true);

draw_set_color(c_orange);
draw_circle(x, y, radius_player, true);
draw_set_color(c_white);


