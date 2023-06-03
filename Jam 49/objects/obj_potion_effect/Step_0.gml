y--;
x += dir;

if (image_alpha > 0) image_alpha -= .02;
else instance_destroy();