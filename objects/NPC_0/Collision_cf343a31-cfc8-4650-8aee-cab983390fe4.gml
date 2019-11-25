if (x == xstart && y == ystart) {
	plyr = instance_find(Player, 0);
	
	xdifference = x - plyr.x;
	ydifference = y - plyr.y;
	xdestination = x + xdifference;
	ydestination = y + ydifference;
	move_towards_point(xdestination, ydestination, plyr.speed);
}