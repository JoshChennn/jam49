draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (distance_to_object(obj_player) < 170 and popup == 0 and !instance_exists(obj_scroll)) {
	draw_text(960, 540+480, "Press SPACE to trade with blacksmith");
}