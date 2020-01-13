if (canMove) {
	if (vspeed > -MAX_DIRECTIONAL_SPEED) {
		vspeed -= MOVEMENT_INC;
	}

	sprite_index = walk_top;
}