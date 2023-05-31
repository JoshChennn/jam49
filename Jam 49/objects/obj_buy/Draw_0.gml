draw_self();
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (_id == 0) {
	draw_sprite(spr_buyBow,0,x,y-250);
	draw_text(x+100,y-25,"Price: 15 GEMS");
}
else {
	draw_sprite(spr_buyLives,0,x,y-250);
	draw_text(x+100,y-25,"Price: 10 GEMS");
}