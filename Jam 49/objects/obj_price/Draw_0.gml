draw_set_font(fnt_trade);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (obj_blacksmith.popup != 0) {
	draw_text(obj_camera.x-200,obj_camera.y-100,obj_blacksmith.price);
	var lvl = obj_blacksmith.deal == "SWORD" ? global.sword_level+1 : global.bow_level+1;
	draw_text(obj_camera.x+130,obj_camera.y-100,obj_blacksmith.deal + " LVL " + string(lvl));
}
if (obj_shop.popup != 0) {
	draw_text(obj_camera.x-200,obj_camera.y-100,obj_shop.price);
	if (obj_shop.item == "ARROWS") {
		draw_text(obj_camera.x+120,obj_camera.y-100,string(obj_shop.arrows_increase)+" ARROWS");
	}
	else {
		draw_text(obj_camera.x+120,obj_camera.y-100,obj_shop.item);
	}
}