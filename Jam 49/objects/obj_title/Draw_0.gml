draw_self();

draw_set_alpha((sin(time) + 1.5) * .395);
draw_set_font(fnt_trade);
draw_set_halign(fa_center);
draw_text(room_width * .5, room_height * .75, "(press any key)");
draw_set_halign(fa_left);
draw_set_alpha(1);