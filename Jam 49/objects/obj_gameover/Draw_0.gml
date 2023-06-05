
draw_set_color(c_dkgray);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);

draw_sprite(spr_gameover, -1, room_width * .5, room_height * .5);

if (counter > 120){
	draw_set_alpha((sin(time) + 1.5) * .395);
	draw_set_font(fnt_stats);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(room_width * .5, room_height - 120, "(Press any key)");
	draw_set_halign(fa_left);
	draw_set_alpha(1);
}