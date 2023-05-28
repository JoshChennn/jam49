delay++;

if (delay >= 3){
	decrement -= .35;
	if (image_index < image_number - 1) image_index += .8;
}

var val = (power(euler, decrement) - power(euler, -decrement)) / (power(euler, decrement) + power(euler, -decrement));

if (image_alpha > 0) image_alpha = val * .2;
else instance_destroy();

x = obj_player.x + lengthdir_x(48, obj_player.direction);
y = obj_player.y + lengthdir_y(48, obj_player.direction);;
image_angle = obj_player.direction;

if (!instance_exists(obj_sword)){

	self_destruct_timer++;
	if (self_destruct_timer >= 5) instance_destroy();


}