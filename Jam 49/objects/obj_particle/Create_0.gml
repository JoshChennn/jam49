image_xscale = random_range(.3,1);
image_yscale = image_xscale;
depth = -y;
direction = point_direction(x,y,obj_portal.x,obj_portal.y);
speed = 0.5+random_range(0,0.8);
//image_blend = make_color_hsv(irandom_range(113, 130), irandom_range(200, 255), irandom_range(220, 255));
image_alpha = 1;