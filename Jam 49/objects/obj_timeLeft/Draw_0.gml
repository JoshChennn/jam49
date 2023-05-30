draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(obj_camera.x+text_x,obj_camera.y+text_y,"T-minus "+string(floor(obj_shop.alarm[0]/60))+"s until next deal.");