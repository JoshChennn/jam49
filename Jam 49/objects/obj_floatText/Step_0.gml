y -= float_speed;
float_speed += .04;

if (alpha > 0) alpha -= float_speed * .01;
else instance_destroy();