if (point_distance(x,y,obj_portal.x+50,obj_portal.y+100) < 400) {
	image_alpha -= fade;
}
if (image_alpha <= 0) instance_destroy();