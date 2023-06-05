draw_self();

draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (leave_possible = true) draw_set_color($b9ba05);
else draw_set_color(c_white);
if (other_col_player and room = rm_mirrorWorld) draw_text(obj_camera.x,obj_camera.y+500,"Activate all crystals to use portal ("+string(crystals_on)+"/5)")