bounce = 8;
bounce_height = 32;
bouncing = false;
y_origin = y;

directi = choose(-1, 1);
spd = 6;
top_height = 96;
up = true;

counter = 0;

factor = 1;

flying = true;


my_type = irandom(2);

switch(my_type){

	case 0:
		my_value = 1;
		sprite_index = spr_gemstone_01;
	break;
	
	case 1:
		my_value = 5;
		sprite_index = spr_gemstone_02;
	break;
	
	case 2:
		my_value = 10;
		sprite_index = spr_gemstone_03;
	break;

}
depth = -y-10

audio_play_sound(sfx_gemstone_spawn, 10, false, 2, 0, choose(0.917 , 1.083, 1.249, 1.415, 1.581, 1.747))