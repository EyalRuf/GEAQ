/// switchlight_door (openedDoorId)
/// @param openedDoorId - doorId to open with this lever

var openedDoorId = argument0;
var exists = false;

with (obj_light_base) {
	if (switchId == openedDoorId) {
		instance_destroy(id);
		exists = true;
	}
}

if (!exists) {
	with (obj_BASE_LEVER_DOOR) {
		if (openedDoorId == doorId) {
			instance_create_layer(x, y, "Vision", light_obj);
		}
	}
}