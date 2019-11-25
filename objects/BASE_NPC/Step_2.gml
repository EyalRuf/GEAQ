// Npc is currently being bumped by the player
if (bumped) {
	// Npc is retracting
	if (retracting) {
		move_towards_point(xstart, ystart, 1);
		
		// If its really close to its original location => stop retracting
		// and reset it to its starting location
		if (point_distance(x, y, xstart, ystart) < 1) {
			speed = 0;
			x = xstart;
			y = ystart;
			retracting = false;
		}
	// If npc not yet retracting and is beyond leash range start retracting
	} else if (abs(x - xstart) > LEASH_RANGE || abs(y - ystart) > LEASH_RANGE) {
		retracting = true;
	}
	
	// If far enough away from player, reset everything inlucding bump
	player = instance_find(Player, 0);
	if(point_distance(x, y, player.x, player.y) > RESET_BUMP_RANGE) {
		speed = 0;
		x = xstart;
		y = ystart;
		retracting = false;
		bumped = false;
	}
}