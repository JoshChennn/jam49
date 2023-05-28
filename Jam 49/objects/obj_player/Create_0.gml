moveX = 0;
moveY = 0;
dir = 0;
spdMax = 4;
spd = 0;
acc = 0.6;
depth = -1;
swing = false;
mouse_dir = 0;
sword_dir = 0;
sword = 0;
hearts = 3;
//Create 3 hearts
for (var i = 0; i < 3; i++) {
	var a = instance_create_layer(x+(i-1)*30,y+50,"Instances",obj_heart);
	a._id = i;
}
_stretch = 0;
arrow = 0;