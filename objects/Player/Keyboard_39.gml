if (canMove) {
	if (hspeed < MAX_DIRECTIONAL_SPEED) {
		hspeed += MOVEMENT_INC;
	}

	sprite_index = walk_right;
}