maxSpeed = MAX_DIRECTIONAL_SPEED;

if (keyboard_check(P1_DOWN_KEY)) {
	maxSpeed = COMBINED_MAX_DIRECTIONAL_SPEED;
}

if (vspeed < maxSpeed) {
	vspeed++;
}

if (vspeed < 0) {
	vspeed = -1;
} else {
	if (sprite_index != walk_bottom) {
		sprite_index = walk_bottom;
	}
}