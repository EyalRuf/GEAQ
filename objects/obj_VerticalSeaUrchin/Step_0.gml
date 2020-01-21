event_inherited();

if (place_meeting(x, y + vspeed, obj_BASE_WALL)) {
	vspeed *= -1;
}