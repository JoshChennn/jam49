draw_self();
draw_set_font(fnt_trade);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (distance_to_object(obj_player) < 160 and popup == 0) {
	draw_text(obj_camera.x, obj_camera.y-500, "Press SPACE to trade with BLACKSMITH");
}
if (popup != 0) {
	
}
