var towers_up = 0;
with obj_tower {
	if (!broken) {
		with (other) towers_up++;
	}
}
image_alpha = towers_up/6;