if (canMove) {
	if (hspeed > -currMaxSpeed) {
		hspeed -= MOVEMENT_INC;
	}

	sprite_index = walk_left;
}