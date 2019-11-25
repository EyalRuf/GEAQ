maxSpeed = MAX_DIRECTIONAL_SPEED;

if (keyboard_check(P1_UP_KEY)) {
	maxSpeed = COMBINED_MAX_DIRECTIONAL_SPEED;
}

if (vspeed > -maxSpeed) {
	vspeed--;
}

if (vspeed > 0) {
	vspeed = 1;
} else {
	if (sprite_index != walk_top) {
		sprite_index = walk_top;
	}
}