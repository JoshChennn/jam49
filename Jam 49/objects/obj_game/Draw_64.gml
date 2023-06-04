if (room == rm_mirrorWorld){
	
	draw_text(140, 64, "  : " + string(gems_to_gain))
	draw_sprite(spr_gemIcon, -1, 48, 48);

	draw_text(140, 128, "  : " + string(exp_to_gain))
	draw_sprite(spr_crownIcon, -1, 48, 112);

}






//old debug stuff
/*draw_text(mouse_x + 64, mouse_y, "Player Experience Points: " + string(global.player_exp));

draw_set_color(c_lime);
draw_set_halign(fa_center);
draw_text(room_width * .5, 32, "For testing: Press K to delete gamedata file (reset exp points)\nPress [SPACE] to add 10 EXP\nPress E to increase spawn capacity");
draw_set_color(c_white);
draw_set_halign(fa_left);