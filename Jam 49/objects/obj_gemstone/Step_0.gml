

if (!flying){
	
	x += spd * directi * factor;
	if (factor > 0) factor -= .008;

	if (!bouncing){

		if (y < y_origin) y += (tanh((y_origin - y) * 8) + .1) * 2.5;
		else {
			bouncing = true;
			y = y_origin;
		}
	
	} else {

		if (bounce > 0){
	
			if (y > y_origin - bounce_height) y -= (tanh((y_origin - y) * 8) + .1) * 2.5;
			else {
		
				bounce--;
				if (bounce_height > 0) bounce_height -= 4;
				else bounce_height = 0;
			
				bouncing = false;
		
			}
		
	
	
		}

	}

} else {

	x += directi * spd;
	counter += .01;
	
	if (up){
		
		if (y > y_origin - top_height) y -= tanh(counter * 50) * 16;
		else up = false;
		
	} else {
	
		if (y < y_origin) y += (-logn(100, counter) + 1) * 8;
		else {
			flying = false;
		}
	
	}
	
}

if (place_meeting(x + spd * directi, y, par_wall_basic))
	spd = 0;
	
if (bounce > 0) && (y == y_origin) audio_play_sound(sfx_gemstone_drop, 10, false);	
	