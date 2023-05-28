depth = -room_height+3;
image_speed = .2;

var effect = instance_create_depth(x, y, obj_player.depth + 1, obj_sword_effect);
effect.image_angle = obj_player.direction;

damage = global.sword_level * 10;