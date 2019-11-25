if (abs(x - xstart) < 5) {
	hspeed += (x - xstart) > 0 ? -1 : 1;
}

if (y == ystart) {
	vspeed = 0;
} else {
	vspeed += (y - ystart) > 0 ? -1 : 1;
}