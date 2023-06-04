if typing {
	if count < string_length(_text) { //Counting
		time++;
		if time >= spd {
			count++;
			time = 0;
			if (!audio_is_playing(sfx_typewriter)) audio_play_sound(sfx_typewriter, 10, false, 1, 0, random_range(.96, 1.1));
		}
	}
	else { //Reached the end of the text
		count = string_length(_text);
		typing = false;
	}
}

//Drawing
draw_set_font(fnt_type);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(x,y,string_copy(_text,1,count),45,350);
