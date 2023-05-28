//Movement variables
key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);

//Actual movement
var hsp = key_right - key_left;
var vsp = key_down - key_up;

//If the player is pressing a key
if (hsp != 0 or vsp != 0) {
	//Speed up
	if (spd < spdMax) spd += acc;
	dir = point_direction(0,0,hsp,vsp);
}
else {
	//Slow down
	if (spd > 0) spd -= acc;
}
//Final movement
moveX = lengthdir_x(spd,dir);
moveY = lengthdir_y(spd,dir);

//Horizontal collision
if (place_meeting_obstacle(x+moveX,y)) {
	while(!place_meeting_obstacle(x+sign(moveX),y)) {
		x += sign(moveX);
	}
	moveX = 0;
}

x += moveX;

//Verticle collision
if (place_meeting_obstacle(x,y+moveY)) {
	while(!place_meeting_obstacle(x,y+sign(moveY))) {
		y += sign(moveY);
	}
	moveY = 0;
}
y += moveY;

depth = -y;

//If swinging sword
if swing {
	sword_dir += 15;
	sword.x = x+lengthdir_x(60,sword_dir);
	sword.y = y+lengthdir_y(60,sword_dir);
	sword.direction = point_direction(x,y,sword.x,sword.y);
	if (sword_dir >= swing_dir + 50) {
		instance_destroy(sword);
		swing = false;
	}
}
mouse_dir = point_direction(x,y,mouse_x,mouse_y);
if (!keyboard_check(ord("N"))) {
	stretch -= 4;
	if (stretch < 0) stretch = 0;
}