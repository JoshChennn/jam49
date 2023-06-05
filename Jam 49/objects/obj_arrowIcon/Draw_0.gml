draw_self();
draw_set_font(fnt_stats);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
if (obj_player.arrows == 0) {
	draw_set_color(c_red);
}
else {
	draw_set_color($1d1d1d);
}
draw_text(x-50,y+10,string(obj_player.arrows));