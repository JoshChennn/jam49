
draw_set_color(c_lime);
draw_rectangle(x - 300, y - 64, x + 300, y + 64, true);
draw_set_halign(fa_center);
draw_text(x, y - 96, "Spawn Capacity: " + string(enemy_max_capacity));
draw_set_color(c_white);
draw_set_halign(fa_left);