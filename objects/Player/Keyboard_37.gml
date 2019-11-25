maxSpeed = MAX_DIRECTIONAL_SPEED;

if (keyboard_check(P2_LEFT_KEY)) {
	maxSpeed = COMBINED_MAX_DIRECTIONAL_SPEED;
}

if (hspeed > -maxSpeed) {
	hspeed--;
}

if (hspeed > 0) {
	hspeed = 1;
} else {
	if (sprite_index != walk_left) {
		sprite_index = walk_left;
	}
}