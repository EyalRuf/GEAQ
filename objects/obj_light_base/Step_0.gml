var exists = false;
var lightId = switchId;
with (obj_BASE_LEVER_DOOR) {
	if (doorId == lightId) {
		exists = true;
	}
}

if (!exists) {
	instance_destroy(id);
}