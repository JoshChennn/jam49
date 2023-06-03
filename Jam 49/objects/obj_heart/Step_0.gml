if (obj_player.hearts >= _id + 1) image_index = 2;
else if (obj_player.hearts > _id) image_index = 1;
else image_index = 0;

x = obj_camera.x + (_id - 1) * 100;
y = obj_camera.y - 450;

if (alarm[0] > -1){

	image_xscale = 1 + alarm[0] * .1;
	image_yscale = 1 + alarm[0] * .1;

}