if (obj_portal.leave_possible) image_blend = $b9ba05;

if grow image_xscale += 0.001;
else image_xscale -= 0.001;
if image_xscale > 1 grow = false;
else if image_xscale < 0.9 grow = true;
image_yscale = image_xscale;