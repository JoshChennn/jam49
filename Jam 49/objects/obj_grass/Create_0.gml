image_index = irandom(image_number - 1);
depth = -y;

if (room == rm_mirrorWorld) {
	sprite_index = spr_rock;
	image_index = choose(0,1);
}