if (!coll_portal) {
	coll_portal = true;
	if (room == rm_mainWorld) {
		room = rm_mirrorWorld;
	}
	else {
		room = rm_mainWorld;
	}
}