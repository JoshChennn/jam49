switch (object_get_name(object_index)) {
	case "obj_enemy_01":
		global.portalHealth -= 1;
		break;
	case "obj_enemy_02":
		global.portalHealth -= 3;
		break;
	case "obj_enemy_03":
		global.portalHealth -= 5;
		break;
}
instance_destroy();