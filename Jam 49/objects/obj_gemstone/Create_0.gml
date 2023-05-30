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

var amount = 255 / 60;
var val = (irandom(255) div amount) * amount;
image_blend = make_color_hsv(val, 255, 255);

my_value = 5;