draw_self();

if (global.flags < 5){
    draw_set_alpha(1);
} else draw_set_alpha(.4);

draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if (other_col_player and room = rm_mirrorWorld) draw_text(obj_camera.x,obj_camera.y+500,"Activate all crystals to use portal ("+string(global.flags)+"/5)");
draw_set_alpha(1);