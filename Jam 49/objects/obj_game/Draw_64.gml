if (room == rm_mirrorWorld and !keyboard_check(vk_escape)) {
	draw_sprite_part(spr_portalHealth,1,5,5,5+global.portalHealth*5,30,708,140);
	draw_sprite(spr_portalHealth,0,960,160);
}


//old debug stuff
/*draw_text(mouse_x + 64, mouse_y, "Player Experience Points: " + string(global.player_exp));

draw_set_color(c_lime);
draw_set_halign(fa_center);
draw_text(room_width * .5, 32, "For testing: Press K to delete gamedata file (reset exp points)\nPress [SPACE] to add 10 EXP\nPress E to increase spawn capacity");
draw_set_color(c_white);
draw_set_halign(fa_left);