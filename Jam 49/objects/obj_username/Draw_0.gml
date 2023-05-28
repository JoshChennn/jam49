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
draw_text(x-230, y-60, str);