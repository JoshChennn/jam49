if (!hit_player) && (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	hit_player = true;
	obj_player.hearts--;
	obj_player.blink_mode = true;

}

if (timer mod 3 == 0)image_index = irandom(image_number - 1);

if (timer < 15) timer++;
else instance_destroy();