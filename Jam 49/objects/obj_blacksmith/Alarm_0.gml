if (global.bow_level == 0) {
	deal = "SWORD";
}
else {
	deal = choose("SWORD","BOW");
}
alarm_set(0,3600);