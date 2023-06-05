draw_self();

draw_set_alpha((sin(time) + 1.5) * .395);
draw_set_font(fnt_stats);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(room_width * .5, room_height-120, "(Press any key)");
draw_set_halign(fa_left);
draw_set_alpha(1);