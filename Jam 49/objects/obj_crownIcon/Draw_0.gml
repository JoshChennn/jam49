draw_self()
draw_set_font(fnt_stats);
draw_set_color($1d1d1d);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
if room = rm_mainWorld draw_text(x-50,y+10,string(global.player_exp));
else draw_text(x-50,y+10,"+ "+string(obj_game.exp_to_gain));