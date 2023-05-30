float_speed += 0.1;
y -= float_speed;
image_alpha = (1-float_speed/4)
if (float_speed >= 4) instance_destroy();