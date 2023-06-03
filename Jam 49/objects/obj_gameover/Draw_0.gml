
draw_set_color(c_dkgray);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);



draw_set_alpha(sin(val) + .2);
draw_set_halign(fa_center);
draw_set_font(fnt_trade);
draw_text(room_width * .5, room_height * .5, "GAME OVER");
draw_set_halign(fa_left);
draw_set_alpha(1);