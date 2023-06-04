draw_self();
draw_set_halign(fa_left);
if (keyboard_lastkey == vk_backspace or keyboard_lastkey == vk_delete) {
	str = string_delete(str, string_length(str), 1);
}
else if (keyboard_lastkey != -1 and keyboard_lastkey != vk_shift and string_length(str) < 13) {
    str += keyboard_lastchar;
}
keyboard_lastkey = -1;
str = string_letters(str);
draw_set_color(c_black);
draw_set_font(fnt_stats);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x-200, y-12, str);
draw_rectangle(x-194+string_width(str), y-40, x-190+string_width(str), y+10, false);