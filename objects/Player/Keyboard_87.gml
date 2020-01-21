if (canMove) {
	if (vspeed > -currMaxSpeed) {
		vspeed -= MOVEMENT_INC;
	}

	sprite_index = walk_top;
}