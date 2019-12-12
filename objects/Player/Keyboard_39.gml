if (canMove) {
	if (hspeed < MAX_DIRECTIONAL_SPEED) {
		hspeed++;
	}

	sprite_index = walk_right;
}