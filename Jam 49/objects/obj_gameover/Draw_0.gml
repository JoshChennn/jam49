
draw_set_color(c_dkgray);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);

draw_sprite(spr_gameover, -1, room_width * .5, room_height * .5);
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_color($1d1d1d);
if (obj_game.lose == 1) {
	draw_text(room_width/2,540,"You were killed by monsters.\nYou'll still get to keep half of your rewards.");
}
else if (obj_game.lose == 2) {
	draw_text(room_width/2,540,"The monsters destroyed the portal.\nYou'll still get to keep half of your rewards.");
}

draw_text(room_width/2-80,715,floor(obj_game.gems_to_gain/2));
draw_text(room_width/2-80,775,floor(obj_game.exp_to_gain/2));

if (counter > 120){
	draw_set_alpha((sin(time) + 1.5) * .395);
	draw_set_font(fnt_stats);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(room_width * .5, room_height - 120, "(Press any key)");
	draw_set_halign(fa_left);
	draw_set_alpha(1);
}