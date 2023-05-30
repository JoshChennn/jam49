if (global.bow_level > 0) {
	item = "LIVES";
}
else {
	item = choose("BOW","EXTRA LIFE");
}
alarm_set(0,3600);