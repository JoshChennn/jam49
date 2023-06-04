var towers_up = 0;
with obj_tower {
	if (!broken) {
		with (other) towers_up++;
	}
}
image_alpha = towers_up/6;

if grow image_xscale += 0.001;
else image_xscale -= 0.001;
if image_xscale > 1 grow = false;
else if image_xscale < 0.9 grow = true;
image_yscale = image_xscale;