draw_self();
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (obj_blacksmith.deal == "SWORD") {
	draw_sprite(spr_buySword,0,x,y-250);
	draw_text(x+100,y-25,"Price: "+string(find_upgrade_price("SWORD"))+" GEMS");
}
else if (obj_blacksmith.deal == "BOW"){
	draw_sprite(spr_buyBow,0,x,y-250);
	draw_text(x+100,y-25,"Price: "+string(find_upgrade_price("BOW"))+" GEMS");
}